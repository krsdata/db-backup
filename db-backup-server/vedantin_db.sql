-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2017 at 07:21 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vedantin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `vi_commentmeta`
--

CREATE TABLE IF NOT EXISTS `vi_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vi_comments`
--

CREATE TABLE IF NOT EXISTS `vi_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `vi_links`
--

CREATE TABLE IF NOT EXISTS `vi_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vi_options`
--

CREATE TABLE IF NOT EXISTS `vi_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=844 ;

--
-- Dumping data for table `vi_options`
--

INSERT INTO `vi_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://vedantindustries.in', 'yes'),
(2, 'home', 'http://vedantindustries.in', 'yes'),
(3, 'blogname', 'Vedant Industries', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'psharma.developer@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:121:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:44:"product_category/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"product_category/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"product_category/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"product_category/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"product_category/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"product_category/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"product_category/([^/]+)/embed/?$";s:49:"index.php?product_category=$matches[1]&embed=true";s:37:"product_category/([^/]+)/trackback/?$";s:43:"index.php?product_category=$matches[1]&tb=1";s:45:"product_category/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?product_category=$matches[1]&paged=$matches[2]";s:52:"product_category/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?product_category=$matches[1]&cpage=$matches[2]";s:41:"product_category/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?product_category=$matches[1]&page=$matches[2]";s:33:"product_category/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"product_category/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"product_category/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"product_category/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"product_category/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"product_category/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"products/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"products/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"products/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"products/([^/]+)/embed/?$";s:41:"index.php?products=$matches[1]&embed=true";s:29:"products/([^/]+)/trackback/?$";s:35:"index.php?products=$matches[1]&tb=1";s:37:"products/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?products=$matches[1]&paged=$matches[2]";s:44:"products/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?products=$matches[1]&cpage=$matches[2]";s:33:"products/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?products=$matches[1]&page=$matches[2]";s:25:"products/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"products/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"products/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:33:"ank-google-map/ank-google-map.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:4;s:23:"wordfence/wordfence.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:77:"/home/vedantindustries/public_html/wp-content/themes/advertica-lite/style.css";i:2;s:0:"";}', 'no'),
(40, 'template', 'advertica-lite', 'yes'),
(41, 'stylesheet', 'advertica-lite', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'vi_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:12:"page-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:6:"meta-2";i:4;s:10:"archives-2";i:5;s:12:"categories-2";}s:12:"blog-sidebar";a:0:{}s:14:"footer-sidebar";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:14:{i:1490856589;a:1:{s:21:"wordfence_hourly_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1490857525;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1490878189;a:1:{s:20:"wordfence_daily_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490900743;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490902617;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490923848;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1491010805;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1491096982;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1491181600;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1491235200;a:1:{s:31:"wordfence_email_activity_report";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1491269022;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1491355197;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1491440898;a:1:{s:30:"wordfence_start_scheduled_scan";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}s:7:"version";i:2;}', 'yes'),
(117, '_transient_twentysixteen_categories', '1', 'yes'),
(318, 'wpgmza_temp_api', 'AIzaSyChPphumyabdfggISDNBuGOlGVBgEvZnGE', 'yes'),
(319, 'wpgmza_xml_location', '{uploads_dir}/wp-google-maps/', 'yes'),
(320, 'wpgmza_xml_url', '{uploads_url}/wp-google-maps/', 'yes'),
(321, 'wpgmza_db_version', '6.3.19', 'yes'),
(322, 'wpgmaps_current_version', '6.3.19', 'yes'),
(323, 'widget_wpgmza_map_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(324, 'WPGMZA_OTHER_SETTINGS', 'a:1:{s:27:"wpgmza_settings_marker_pull";s:1:"0";}', 'yes'),
(842, '_site_transient_timeout_theme_roots', '1490855533', 'no'),
(843, '_site_transient_theme_roots', 'a:1:{s:14:"advertica-lite";s:7:"/themes";}', 'no'),
(840, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1490853790;s:7:"checked";a:7:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.11";s:19:"akismet/akismet.php";s:3:"3.3";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"4.6.1";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.5.2";s:33:"ank-google-map/ank-google-map.php";s:5:"2.4.0";s:9:"hello.php";s:3:"1.6";s:23:"wordfence/wordfence.php";s:5:"6.3.2";}s:8:"response";a:4:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":8:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.7";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.7.zip";s:6:"tested";s:5:"4.7.3";s:13:"compatibility";O:8:"stdClass":0:{}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":8:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.5.3";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.3.zip";s:6:"tested";s:5:"4.7.3";s:13:"compatibility";O:8:"stdClass":0:{}}s:33:"ank-google-map/ank-google-map.php";O:8:"stdClass":8:{s:2:"id";s:28:"w.org/plugins/ank-google-map";s:4:"slug";s:14:"ank-google-map";s:6:"plugin";s:33:"ank-google-map/ank-google-map.php";s:11:"new_version";s:5:"2.5.0";s:3:"url";s:45:"https://wordpress.org/plugins/ank-google-map/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/ank-google-map.2.5.0.zip";s:6:"tested";s:5:"4.7.2";s:13:"compatibility";O:8:"stdClass":0:{}}s:23:"wordfence/wordfence.php";O:8:"stdClass":8:{s:2:"id";s:23:"w.org/plugins/wordfence";s:4:"slug";s:9:"wordfence";s:6:"plugin";s:23:"wordfence/wordfence.php";s:11:"new_version";s:5:"6.3.5";s:3:"url";s:40:"https://wordpress.org/plugins/wordfence/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/wordfence.6.3.5.zip";s:6:"tested";s:5:"4.7.3";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.3.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'no'),
(139, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1480792177;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(376, '_site_transient_browser_6c132afab69b7f8137b79512f270f2e3', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"51.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(140, 'current_theme', 'Advertica Lite', 'yes'),
(141, 'theme_mods_advertica-lite', 'a:17:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"Header";i:2;}s:12:"header_image";s:96:"http://vedantindustries.in/wp-content/uploads/2016/12/15060414_1121488617933870_2075129114_o.jpg";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:40;s:3:"url";s:96:"http://vedantindustries.in/wp-content/uploads/2016/12/15060414_1121488617933870_2075129114_o.jpg";s:13:"thumbnail_url";s:96:"http://vedantindustries.in/wp-content/uploads/2016/12/15060414_1121488617933870_2075129114_o.jpg";s:6:"height";i:500;s:5:"width";i:1600;}s:10:"brand1_img";s:0:"";s:9:"copyright";s:29:"Proudly Powered by Webkidunia";s:23:"advertica_lite_logo_img";s:84:"http://vedantindustries.in/wp-content/uploads/2016/12/received_1121559264593472.jpeg";s:10:"brand2_img";s:0:"";s:10:"brand4_img";s:0:"";s:10:"brand5_img";s:0:"";s:16:"header_textcolor";s:5:"blank";s:16:"background_color";s:6:"ffffff";s:16:"background_image";s:0:"";s:17:"background_repeat";s:8:"repeat-x";s:21:"first_feature_heading";s:19:"Client Satisfaction";s:21:"first_feature_content";s:149:"Since Establishment, we have been following customer- oriented approach that has assisted us in offering the supreme quality product to the patron.  ";s:18:"custom_css_post_id";i:-1;}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(150, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(388, 'wordfence_version', '6.3.2', 'yes'),
(392, '_transient_timeout_plugin_slugs', '1488372598', 'no'),
(390, 'wordfenceActivated', '1', 'yes'),
(391, 'wf_plugin_act_error', '', 'yes'),
(393, '_transient_plugin_slugs', 'a:7:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:4;s:33:"ank-google-map/ank-google-map.php";i:5;s:9:"hello.php";i:6;s:23:"wordfence/wordfence.php";}', 'no'),
(421, 'wordfence_syncAttackDataAttempts', '0', 'no'),
(422, 'wordfence_syncingAttackData', '0', 'no'),
(423, 'wordfence_lastSyncAttackData', '1489828402', 'no'),
(382, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.3-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.7.3-partial-2.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.7.2";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.3-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.7.3-partial-2.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.3-rollback-2.zip";}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.7.2";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1490853790;s:15:"version_checked";s:5:"4.7.2";s:12:"translations";a:0:{}}', 'no'),
(325, 'WPGMZA_FIRST_TIME', '6.3.19', 'yes'),
(326, 'wpgmza_stats', 'a:2:{s:15:"list_maps_basic";a:3:{s:5:"views";i:1;s:13:"last_accessed";s:19:"2016-12-13 12:04:29";s:14:"first_accessed";s:19:"2016-12-13 12:04:29";}s:9:"dashboard";a:3:{s:5:"views";i:1;s:13:"last_accessed";s:19:"2016-12-13 12:04:35";s:14:"first_accessed";s:19:"2016-12-13 12:04:35";}}', 'yes'),
(243, 'recently_activated', 'a:0:{}', 'yes'),
(244, 'acf_version', '4.4.11', 'yes'),
(247, 'cptui_post_types', 'a:2:{s:16:"product_category";a:28:{s:4:"name";s:16:"product_category";s:5:"label";s:10:"Categories";s:14:"singular_label";s:8:"Category";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:21:{s:9:"menu_name";s:10:"Categories";s:9:"all_items";s:14:"All Categories";s:12:"add_new_item";s:16:"Add New Category";s:9:"edit_item";s:13:"Edit Category";s:8:"new_item";s:12:"New Category";s:9:"view_item";s:13:"View Category";s:12:"search_items";s:15:"Search Category";s:7:"add_new";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:15:"custom_supports";s:0:"";}s:8:"products";a:28:{s:4:"name";s:8:"products";s:5:"label";s:8:"Products";s:14:"singular_label";s:7:"Product";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:21:{s:9:"menu_name";s:8:"Products";s:9:"all_items";s:12:"All Products";s:12:"add_new_item";s:15:"Add New Product";s:9:"edit_item";s:12:"Edit Product";s:8:"new_item";s:11:"New Product";s:9:"view_item";s:12:"View Product";s:12:"search_items";s:14:"Search Product";s:9:"not_found";s:16:"No Product Found";s:18:"not_found_in_trash";s:25:"No Product found in Trash";s:7:"add_new";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(285, 'category_children', 'a:0:{}', 'yes'),
(380, 'db_upgraded', '', 'yes'),
(329, 'widget_hugeit_maps_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(330, 'hugeit_maps_version', '2.2.1', 'yes'),
(331, 'hugeit_maps_api_key', 'AIzaSyBNO-j13uABs9Io_Opzjbl6IVyU8-Mc2IE', 'yes'),
(313, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.6.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1481628314;s:7:"version";s:3:"4.6";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(360, 'ank_google_map', 'a:27:{s:10:"plugin_ver";s:5:"2.4.0";s:9:"div_width";s:3:"100";s:14:"div_width_unit";i:2;s:10:"div_height";s:3:"300";s:16:"div_border_color";s:0:"";s:7:"map_Lat";s:7:"22.9623";s:7:"map_Lng";s:7:"76.0508";s:8:"map_zoom";i:15;s:13:"map_control_2";s:1:"0";s:13:"map_control_3";s:1:"0";s:13:"map_control_4";s:1:"1";s:13:"map_control_5";s:1:"1";s:13:"map_lang_code";s:0:"";s:8:"map_type";i:1;s:9:"marker_on";s:1:"1";s:12:"marker_title";s:11:"We are here";s:11:"marker_anim";i:1;s:12:"marker_color";i:1;s:11:"marker_file";s:0:"";s:7:"info_on";s:1:"1";s:9:"info_text";s:23:"<b>Your Destination</b>";s:10:"info_state";s:1:"0";s:19:"disable_mouse_wheel";s:1:"0";s:19:"disable_drag_mobile";s:1:"1";s:7:"api_key";s:39:"AIzaSyBNO-j13uABs9Io_Opzjbl6IVyU8-Mc2IE";s:9:"map_style";i:0;s:16:"gesture_handling";s:4:"auto";}', 'yes'),
(375, '_site_transient_timeout_browser_6c132afab69b7f8137b79512f270f2e3', '1488890896', 'no'),
(839, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1490840848;s:7:"checked";a:1:{s:14:"advertica-lite";s:6:"1.0.10";}s:8:"response";a:1:{s:14:"advertica-lite";a:4:{s:5:"theme";s:14:"advertica-lite";s:11:"new_version";s:6:"1.0.11";s:3:"url";s:44:"https://wordpress.org/themes/advertica-lite/";s:7:"package";s:63:"https://downloads.wordpress.org/theme/advertica-lite.1.0.11.zip";}}s:12:"translations";a:0:{}}', 'no'),
(383, 'can_compress_scripts', '1', 'no'),
(384, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1488296964', 'no'),
(385, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6201";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3805";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3803";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3335";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2902";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2627";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"2280";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2254";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2174";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2152";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2113";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2077";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"2018";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1973";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1809";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1702";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1678";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1501";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1415";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1326";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1310";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1181";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1157";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1108";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1046";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1037";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:4:"1005";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:4:"1001";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"994";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"980";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"945";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"921";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"892";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"882";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"881";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"847";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"804";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"804";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"797";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"788";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"782";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"780";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"779";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"767";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"765";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"760";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"750";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"744";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"740";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"734";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"718";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"664";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"662";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"660";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"656";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"642";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"642";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"637";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"629";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"624";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"609";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"608";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"601";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"599";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"596";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"589";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"577";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"567";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"566";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"562";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"555";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"555";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"548";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"546";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"543";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"530";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"524";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"517";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"496";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"492";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"475";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"473";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"473";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"467";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"464";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"459";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"452";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"448";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"446";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"445";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"438";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"437";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"436";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"436";}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";s:3:"436";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"431";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"430";}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";s:3:"427";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"426";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"423";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `vi_postmeta`
--

CREATE TABLE IF NOT EXISTS `vi_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=407 ;

--
-- Dumping data for table `vi_postmeta`
--

INSERT INTO `vi_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 4, '_edit_last', '1'),
(4, 4, '_wp_page_template', 'default'),
(5, 4, '_edit_lock', '1480793707:1'),
(265, 61, '_thumbnail_id', '47'),
(9, 8, '_edit_last', '1'),
(10, 8, '_wp_page_template', 'product-services.php'),
(11, 8, '_edit_lock', '1481805273:1'),
(12, 10, '_edit_last', '1'),
(13, 10, '_wp_page_template', 'template-fullwidth.php'),
(14, 10, '_edit_lock', '1481806158:1'),
(15, 12, '_edit_last', '1'),
(16, 12, '_edit_lock', '1481630319:1'),
(17, 12, '_wp_page_template', 'template-fullwidth.php'),
(18, 14, '_menu_item_type', 'custom'),
(19, 14, '_menu_item_menu_item_parent', '0'),
(20, 14, '_menu_item_object_id', '14'),
(21, 14, '_menu_item_object', 'custom'),
(22, 14, '_menu_item_target', ''),
(23, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(24, 14, '_menu_item_xfn', ''),
(25, 14, '_menu_item_url', 'http://vedantindustries.in/'),
(26, 14, '_menu_item_orphaned', '1480793995'),
(257, 59, '_thumbnail_id', '60'),
(36, 16, '_menu_item_type', 'post_type'),
(37, 16, '_menu_item_menu_item_parent', '0'),
(38, 16, '_menu_item_object_id', '10'),
(39, 16, '_menu_item_object', 'page'),
(40, 16, '_menu_item_target', ''),
(41, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 16, '_menu_item_xfn', ''),
(43, 16, '_menu_item_url', ''),
(44, 16, '_menu_item_orphaned', '1480793995'),
(45, 17, '_menu_item_type', 'post_type'),
(46, 17, '_menu_item_menu_item_parent', '0'),
(47, 17, '_menu_item_object_id', '12'),
(48, 17, '_menu_item_object', 'page'),
(49, 17, '_menu_item_target', ''),
(50, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 17, '_menu_item_xfn', ''),
(52, 17, '_menu_item_url', ''),
(53, 17, '_menu_item_orphaned', '1480793995'),
(54, 18, '_menu_item_type', 'post_type'),
(55, 18, '_menu_item_menu_item_parent', '0'),
(56, 18, '_menu_item_object_id', '4'),
(57, 18, '_menu_item_object', 'page'),
(58, 18, '_menu_item_target', ''),
(59, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 18, '_menu_item_xfn', ''),
(61, 18, '_menu_item_url', ''),
(62, 18, '_menu_item_orphaned', '1480793995'),
(63, 19, '_menu_item_type', 'post_type'),
(64, 19, '_menu_item_menu_item_parent', '0'),
(65, 19, '_menu_item_object_id', '8'),
(66, 19, '_menu_item_object', 'page'),
(67, 19, '_menu_item_target', ''),
(68, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 19, '_menu_item_xfn', ''),
(70, 19, '_menu_item_url', ''),
(71, 19, '_menu_item_orphaned', '1480793995'),
(81, 22, '_menu_item_type', 'custom'),
(82, 22, '_menu_item_menu_item_parent', '0'),
(83, 22, '_menu_item_object_id', '22'),
(84, 22, '_menu_item_object', 'custom'),
(85, 22, '_menu_item_target', ''),
(86, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 22, '_menu_item_xfn', ''),
(88, 22, '_menu_item_url', 'http://vedantindustries.in/'),
(264, 62, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:38:"2016/12/frp-sunlight-sheet-500x500.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(263, 62, '_wp_attached_file', '2016/12/frp-sunlight-sheet-500x500.jpg'),
(262, 61, '_edit_lock', '1481566566:1'),
(261, 61, '_edit_last', '1'),
(99, 24, '_menu_item_type', 'post_type'),
(100, 24, '_menu_item_menu_item_parent', '0'),
(101, 24, '_menu_item_object_id', '10'),
(102, 24, '_menu_item_object', 'page'),
(103, 24, '_menu_item_target', ''),
(104, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 24, '_menu_item_xfn', ''),
(106, 24, '_menu_item_url', ''),
(108, 25, '_menu_item_type', 'post_type'),
(109, 25, '_menu_item_menu_item_parent', '0'),
(110, 25, '_menu_item_object_id', '12'),
(111, 25, '_menu_item_object', 'page'),
(112, 25, '_menu_item_target', ''),
(113, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 25, '_menu_item_xfn', ''),
(115, 25, '_menu_item_url', ''),
(145, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1007;s:6:"height";i:420;s:4:"file";s:38:"2016/12/received_1121615067921225.jpeg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"received_1121615067921225-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"received_1121615067921225-300x125.jpeg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"received_1121615067921225-768x320.jpeg";s:5:"width";i:768;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:38:"received_1121615067921225-600x220.jpeg";s:5:"width";i:600;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:22:"advertica_standard_img";a:4:{s:4:"file";s:38:"received_1121615067921225-770x365.jpeg";s:5:"width";i:770;s:6:"height";i:365;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:15:"@~ Bismillah ~@";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(177, 35, '_menu_item_menu_item_parent', '0'),
(176, 35, '_menu_item_type', 'post_type'),
(175, 34, '_menu_item_orphaned', '1480878223'),
(174, 34, '_menu_item_url', ''),
(173, 34, '_menu_item_xfn', ''),
(126, 27, '_menu_item_type', 'post_type'),
(127, 27, '_menu_item_menu_item_parent', '0'),
(128, 27, '_menu_item_object_id', '8'),
(129, 27, '_menu_item_object', 'page'),
(130, 27, '_menu_item_target', ''),
(131, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(132, 27, '_menu_item_xfn', ''),
(133, 27, '_menu_item_url', ''),
(172, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(171, 34, '_menu_item_target', ''),
(170, 34, '_menu_item_object', 'page'),
(169, 34, '_menu_item_object_id', '12'),
(168, 34, '_menu_item_menu_item_parent', '0'),
(167, 34, '_menu_item_type', 'post_type'),
(144, 29, '_wp_attached_file', '2016/12/received_1121615067921225.jpeg'),
(146, 29, '_wp_attachment_custom_header_last_used_advertica-lite', '1480878538'),
(147, 29, '_wp_attachment_is_custom_header', 'advertica-lite'),
(148, 30, '_wp_attached_file', '2016/12/received_1121559264593472.jpeg'),
(149, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:55;s:4:"file";s:38:"2016/12/received_1121559264593472.jpeg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"received_1121559264593472-150x55.jpeg";s:5:"width";i:150;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:15:"@~ Bismillah ~@";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(158, 33, '_menu_item_type', 'post_type'),
(159, 33, '_menu_item_menu_item_parent', '0'),
(160, 33, '_menu_item_object_id', '4'),
(161, 33, '_menu_item_object', 'page'),
(162, 33, '_menu_item_target', ''),
(163, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(164, 33, '_menu_item_xfn', ''),
(165, 33, '_menu_item_url', ''),
(166, 33, '_menu_item_orphaned', '1480867780'),
(178, 35, '_menu_item_object_id', '10'),
(179, 35, '_menu_item_object', 'page'),
(180, 35, '_menu_item_target', ''),
(181, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(182, 35, '_menu_item_xfn', ''),
(183, 35, '_menu_item_url', ''),
(184, 35, '_menu_item_orphaned', '1480878223'),
(185, 36, '_menu_item_type', 'post_type'),
(186, 36, '_menu_item_menu_item_parent', '0'),
(187, 36, '_menu_item_object_id', '8'),
(188, 36, '_menu_item_object', 'page'),
(189, 36, '_menu_item_target', ''),
(190, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(191, 36, '_menu_item_xfn', ''),
(192, 36, '_menu_item_url', ''),
(193, 36, '_menu_item_orphaned', '1480878223'),
(203, 38, '_menu_item_type', 'post_type'),
(204, 38, '_menu_item_menu_item_parent', '0'),
(205, 38, '_menu_item_object_id', '4'),
(206, 38, '_menu_item_object', 'page'),
(207, 38, '_menu_item_target', ''),
(208, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(209, 38, '_menu_item_xfn', ''),
(210, 38, '_menu_item_url', ''),
(211, 38, '_menu_item_orphaned', '1480878223'),
(214, 40, '_wp_attached_file', '2016/12/15060414_1121488617933870_2075129114_o.jpg'),
(215, 40, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:1600;s:6:"height";i:500;s:4:"file";s:50:"2016/12/15060414_1121488617933870_2075129114_o.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:15:"@~ Bismillah ~@";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(216, 40, '_wp_attachment_custom_header_last_used_advertica-lite', '1481026476'),
(217, 40, '_wp_attachment_is_custom_header', 'advertica-lite'),
(218, 41, '_wp_attached_file', '2016/12/vedant-industries-logo-120x120.jpg'),
(219, 41, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:120;s:6:"height";i:120;s:4:"file";s:42:"2016/12/vedant-industries-logo-120x120.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(220, 42, '_wp_attached_file', '2016/12/frp-cooling-tower-250x250.jpg'),
(221, 42, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:37:"2016/12/frp-cooling-tower-250x250.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(222, 43, '_wp_attached_file', '2016/12/frp-doors-500x500.jpg'),
(223, 43, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:29:"2016/12/frp-doors-500x500.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(224, 44, '_wp_attached_file', '2016/12/unnamed-file.jpg'),
(225, 44, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:500;s:6:"height";i:302;s:4:"file";s:24:"2016/12/unnamed-file.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(226, 45, '_wp_attached_file', '2016/12/timber-cooling-tower.jpg'),
(227, 45, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:500;s:6:"height";i:361;s:4:"file";s:32:"2016/12/timber-cooling-tower.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(228, 46, '_wp_attached_file', '2016/12/frp-doors-500x500-1.jpg'),
(229, 46, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:31:"2016/12/frp-doors-500x500-1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(230, 47, '_wp_attached_file', '2016/12/FRP-Fans.jpg'),
(231, 47, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:271;s:6:"height";i:186;s:4:"file";s:20:"2016/12/FRP-Fans.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(232, 48, '_wp_attached_file', '2016/12/frp-natural-draft-cooling-t-250x250.jpg'),
(233, 48, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:47:"2016/12/frp-natural-draft-cooling-t-250x250.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(256, 60, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:39:"2016/12/frp-cooling-tower-250x250-1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(253, 59, '_edit_last', '1'),
(254, 59, '_edit_lock', '1481566409:1'),
(255, 60, '_wp_attached_file', '2016/12/frp-cooling-tower-250x250-1.jpg'),
(246, 51, '_edit_last', '1'),
(247, 51, '_edit_lock', '1481565321:1'),
(248, 52, '_wp_attached_file', '2016/12/15424415_1262629150465728_846798782_n.jpg'),
(249, 52, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:720;s:6:"height";i:706;s:4:"file";s:49:"2016/12/15424415_1262629150465728_846798782_n.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(250, 51, '_wp_page_template', 'template-fullwidth.php'),
(266, 63, '_edit_last', '1'),
(267, 63, '_edit_lock', '1490095443:1'),
(268, 64, '_wp_attached_file', '2016/12/air-spainer.jpg'),
(269, 64, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:23:"2016/12/air-spainer.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(270, 63, '_thumbnail_id', '64'),
(271, 65, '_edit_last', '1'),
(272, 65, 'field_584d6cc7a5414', 'a:12:{s:3:"key";s:19:"field_584d6cc7a5414";s:5:"label";s:8:"Category";s:4:"name";s:8:"category";s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:9:"post_type";a:1:{i:0;s:16:"product_category";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(278, 65, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"products";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(274, 65, 'position', 'normal'),
(275, 65, 'layout', 'no_box'),
(276, 65, 'hide_on_screen', ''),
(277, 65, '_edit_lock', '1481803867:1'),
(286, 68, '_wp_attached_file', '2016/12/honey-combs-pvc-fills-250x250.jpg'),
(287, 68, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:250;s:6:"height";i:250;s:4:"file";s:41:"2016/12/honey-combs-pvc-fills-250x250.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(291, 70, '_wp_attached_file', '2016/12/gear-boxes-a-500x500.jpg'),
(292, 70, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:500;s:6:"height";i:494;s:4:"file";s:32:"2016/12/gear-boxes-a-500x500.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(298, 72, '_menu_item_type', 'post_type'),
(299, 72, '_menu_item_menu_item_parent', '0'),
(300, 72, '_menu_item_object_id', '51'),
(301, 72, '_menu_item_object', 'page'),
(302, 72, '_menu_item_target', ''),
(303, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(304, 72, '_menu_item_xfn', ''),
(305, 72, '_menu_item_url', ''),
(307, 73, '_edit_last', '1'),
(308, 73, '_edit_lock', '1481803273:1'),
(309, 73, '_wp_page_template', 'custom-products.php'),
(319, 79, '_edit_last', '1'),
(320, 79, '_edit_lock', '1481566002:1'),
(321, 79, '_thumbnail_id', '45'),
(322, 79, 'category', '59'),
(323, 79, '_category', 'field_584d6cc7a5414'),
(324, 80, '_edit_last', '1'),
(325, 80, '_edit_lock', '1481566040:1'),
(326, 80, '_thumbnail_id', '44'),
(327, 80, 'category', '59'),
(328, 80, '_category', 'field_584d6cc7a5414'),
(329, 81, '_edit_last', '1'),
(330, 81, '_edit_lock', '1481566191:1'),
(331, 81, '_thumbnail_id', '60'),
(332, 81, 'category', '59'),
(333, 81, '_category', 'field_584d6cc7a5414'),
(334, 83, '_edit_last', '1'),
(335, 83, '_edit_lock', '1481567520:1'),
(336, 83, '_thumbnail_id', '41'),
(337, 83, 'category', '59'),
(338, 83, '_category', 'field_584d6cc7a5414'),
(339, 84, '_edit_last', '1'),
(340, 84, '_edit_lock', '1481567943:1'),
(341, 84, '_thumbnail_id', '41'),
(342, 84, 'category', '63'),
(343, 84, '_category', 'field_584d6cc7a5414'),
(344, 85, '_edit_last', '1'),
(345, 85, '_edit_lock', '1481568116:1'),
(346, 85, '_thumbnail_id', '41'),
(347, 85, 'category', '63'),
(348, 85, '_category', 'field_584d6cc7a5414'),
(349, 86, '_edit_last', '1'),
(350, 86, '_edit_lock', '1481567612:1'),
(351, 86, '_thumbnail_id', '41'),
(352, 86, 'category', '59'),
(353, 86, '_category', 'field_584d6cc7a5414'),
(354, 87, '_edit_last', '1'),
(355, 87, '_edit_lock', '1481568483:1'),
(356, 87, '_thumbnail_id', '41'),
(357, 87, 'category', '63'),
(358, 87, '_category', 'field_584d6cc7a5414'),
(359, 88, '_edit_last', '1'),
(360, 88, '_edit_lock', '1481567716:1'),
(361, 88, '_thumbnail_id', '41'),
(362, 88, 'category', '63'),
(363, 88, '_category', 'field_584d6cc7a5414'),
(364, 89, '_edit_last', '1'),
(365, 89, '_edit_lock', '1481567852:1'),
(366, 89, '_thumbnail_id', '41'),
(367, 89, 'category', '63'),
(368, 89, '_category', 'field_584d6cc7a5414'),
(369, 90, '_edit_last', '1'),
(370, 90, '_edit_lock', '1481567902:1'),
(371, 90, '_thumbnail_id', '41'),
(372, 90, 'category', '63'),
(373, 90, '_category', 'field_584d6cc7a5414'),
(374, 91, '_edit_last', '1'),
(375, 91, '_edit_lock', '1481568590:1'),
(376, 91, '_thumbnail_id', '41'),
(377, 91, 'category', '61'),
(378, 91, '_category', 'field_584d6cc7a5414'),
(379, 92, '_edit_last', '1'),
(380, 92, '_edit_lock', '1481568779:1'),
(381, 92, '_thumbnail_id', '41'),
(382, 92, 'category', '61'),
(383, 92, '_category', 'field_584d6cc7a5414'),
(384, 95, '_edit_last', '1'),
(385, 95, '_edit_lock', '1481568881:1'),
(386, 95, 'category', '61'),
(387, 95, '_category', 'field_584d6cc7a5414'),
(388, 96, '_edit_last', '1'),
(389, 96, '_edit_lock', '1481569860:1'),
(390, 96, '_thumbnail_id', '41'),
(391, 96, 'category', '61'),
(392, 96, '_category', 'field_584d6cc7a5414'),
(393, 45, '_wp_attachment_is_custom_background', 'advertica-lite'),
(394, 97, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(395, 97, '_mail', 'a:8:{s:7:"subject";s:34:"Vedant Industries "[your-subject]"";s:6:"sender";s:43:"[your-name] <wordpress@vedantindustries.in>";s:4:"body";s:181:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Vedant Industries (http://vedantindustries.in)";s:9:"recipient";s:27:"psharma.developer@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(396, 97, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:34:"Vedant Industries "[your-subject]"";s:6:"sender";s:49:"Vedant Industries <wordpress@vedantindustries.in>";s:4:"body";s:123:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Vedant Industries (http://vedantindustries.in)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:37:"Reply-To: psharma.developer@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(397, 97, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(398, 97, '_additional_settings', NULL),
(399, 97, '_locale', 'en_US'),
(400, 99, '_form', '<label>[text* text-38 id:mobileno placeholder "Enter your mobile no."]</label>\n\n<label>[textarea* textarea-431 id:service_name placeholder "Enter Product / Service Name"]</label>\n\n[submit id:enquiry_sub "Submit Enquiry"]'),
(401, 99, '_mail', 'a:8:{s:7:"subject";s:15:"Enquiry Details";s:6:"sender";s:27:"psharma.developer@gmail.com";s:4:"body";s:166:"From: [text-38]\nSubject: Enquiry Details\n\nMessage Body:\n[textarea-431]\n\n--\nThis e-mail was sent from an enquiry form on Vedant Industries (http://vedantindustries.in)";s:9:"recipient";s:27:"psharma.developer@gmail.com";s:18:"additional_headers";s:37:"Reply-To: psharma.developer@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(402, 99, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:34:"Vedant Industries "[your-subject]"";s:6:"sender";s:49:"Vedant Industries <wordpress@vedantindustries.in>";s:4:"body";s:123:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Vedant Industries (http://vedantindustries.in)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:37:"Reply-To: psharma.developer@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(403, 99, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(404, 99, '_additional_settings', ''),
(405, 99, '_locale', 'en_US'),
(406, 99, '_config_errors', 'a:1:{s:11:"mail.sender";a:1:{i:0;a:2:{s:4:"code";i:103;s:4:"args";a:3:{s:7:"message";s:0:"";s:6:"params";a:0:{}s:4:"link";s:88:"http://contactform7.com/configuration-errors/#mail.sender:error_email_not_in_site_domain";}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `vi_posts`
--

CREATE TABLE IF NOT EXISTS `vi_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=107 ;

--
-- Dumping data for table `vi_posts`
--

INSERT INTO `vi_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2016-12-03 19:37:24', '2016-12-03 19:37:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-12-03 19:37:24', '2016-12-03 19:37:24', '', 0, 'http://vedantindustries.in/?page_id=4', 0, 'page', '', 0),
(5, 1, '2016-12-03 19:37:24', '2016-12-03 19:37:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-12-03 19:37:24', '2016-12-03 19:37:24', '', 4, 'http://vedantindustries.in/2016/12/03/4-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-12-03 19:38:30', '2016-12-03 19:38:30', '', 'Product & Services', '', 'publish', 'closed', 'closed', '', 'product-services', '', '', '2016-12-15 12:35:51', '2016-12-15 12:35:51', '', 0, 'http://vedantindustries.in/?page_id=8', 0, 'page', '', 0),
(9, 1, '2016-12-03 19:38:30', '2016-12-03 19:38:30', '', 'Product & Services', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-12-03 19:38:30', '2016-12-03 19:38:30', '', 8, 'http://vedantindustries.in/2016/12/03/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-12-03 19:38:55', '2016-12-03 19:38:55', '<img class="alignnone size-full wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="120" height="120" />\r\n\r\n<strong>VEDANT INDUSTIRES | COOLING TOWER &amp; FRP FANS</strong>\r\n\r\n<strong>Off. - 1-B/9-B, Industrial Area No. 1, A.B. Road Dewas 455001 (M.P.)</strong>\r\n\r\n<strong>Res. - 204 Mishrilal Nagar A.B. Road Dewas 455001  (M.P.)</strong>\r\n\r\n<hr />\r\n<p style="text-align: left;"><strong>Vedantcooling@gmail.com</strong></p>\r\n<strong>M.S. Chouhan 98272-56141</strong>\r\n\r\n<strong><span style="line-height: 1.5;">V.S. </span>Chouhan<span style="line-height: 1.5;">  </span>99773-56141</strong>\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id="97" title="Contact form 1"]\r\n\r\n<strong><code>[ank_google_map]</code></strong>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2016-12-15 12:49:16', '2016-12-15 12:49:16', '', 0, 'http://vedantindustries.in/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-12-03 19:38:55', '2016-12-03 19:38:55', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-03 19:38:55', '2016-12-03 19:38:55', '', 10, 'http://vedantindustries.in/2016/12/03/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-12-03 19:39:24', '2016-12-03 19:39:24', '[contact-form-7 id="99" title="Enquiry Form"]', 'Enquiry', '', 'publish', 'closed', 'closed', '', 'enquiry', '', '', '2016-12-13 11:58:38', '2016-12-13 11:58:38', '', 0, 'http://vedantindustries.in/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-12-03 19:39:24', '2016-12-03 19:39:24', '<hr />\r\n\r\n&nbsp;', 'Enquiry', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-03 19:39:24', '2016-12-03 19:39:24', '', 12, 'http://vedantindustries.in/2016/12/03/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-12-03 19:39:55', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-03 19:39:55', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=14', 1, 'nav_menu_item', '', 0),
(16, 1, '2016-12-03 19:39:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-03 19:39:55', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2016-12-03 19:39:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-03 19:39:55', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2016-12-03 19:39:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-03 19:39:55', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2016-12-03 19:39:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-03 19:39:55', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=19', 1, 'nav_menu_item', '', 0),
(22, 1, '2016-12-04 15:09:24', '2016-12-04 15:09:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-12-11 15:15:15', '2016-12-11 15:15:15', '', 0, 'http://vedantindustries.in/?p=22', 1, 'nav_menu_item', '', 0),
(57, 1, '2016-12-11 14:19:34', '2016-12-11 14:19:34', '<img class="alignnone size-full wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="120" height="120" />\r\n\r\n<strong>VEDANT INDUSTIRES | COOLING TOWER &amp; FRP FANS</strong>\r\n\r\n<strong>Off. - 1-B/9-B, Industrial Area No. 1, A.B. Road Dewas 455001 (M.P.)</strong>\r\n\r\n<strong>Res. - 204 Mishrilal Nagar A.B. Road Dewas 455001  (M.P.)</strong>\r\n\r\n<hr />\r\n<p style="text-align: left;"><strong>Vedantcooling@gmail.com</strong></p>\r\n<strong>M.S. Chouhan 98272-56141</strong>\r\n\r\n<strong><span style="line-height: 1.5;">V.S. </span>Chouhan<span style="line-height: 1.5;">  </span>99773-56141</strong>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-11 14:19:34', '2016-12-11 14:19:34', '', 10, 'http://vedantindustries.in/2016/12/11/10-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2016-12-11 14:19:17', '2016-12-11 14:19:17', '<img class="alignnone size-full wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="120" height="120" />\r\n\r\nVEDANT INDUSTIRES | COOLING TOWER &amp; FRP FANS\r\n\r\n<strong>Off.</strong> - 1-B/9-B, <strong>Industrial Area</strong> No. 1, A.B. Road Dewas 455001 (M.P.)\r\n\r\nRes. - 204 <strong>Mishrilal Nagar</strong> A.B. <strong>Road Dewas 455001  (M.P.)</strong>\r\n\r\n<hr />\r\n<p style="text-align: left;"><strong>Vedantcooling@gmail.com</strong></p>\r\nM.S. <strong>Chouhan</strong> 98272-56141\r\n\r\n<span style="line-height: 1.5;">V.S. </span><strong style="line-height: 1.5;">Chouhan</strong><span style="line-height: 1.5;">  </span><strong style="line-height: 1.5;">99773-56141</strong>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-11 14:19:17', '2016-12-11 14:19:17', '', 10, 'http://vedantindustries.in/2016/12/11/10-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-12-04 15:09:25', '2016-12-04 15:09:25', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2016-12-11 15:15:15', '2016-12-11 15:15:15', '', 0, 'http://vedantindustries.in/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2016-12-04 15:09:25', '2016-12-04 15:09:25', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-12-11 15:15:15', '2016-12-11 15:15:15', '', 0, 'http://vedantindustries.in/?p=25', 5, 'nav_menu_item', '', 0),
(27, 1, '2016-12-04 15:09:25', '2016-12-04 15:09:25', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-12-11 15:15:15', '2016-12-11 15:15:15', '', 0, 'http://vedantindustries.in/?p=27', 3, 'nav_menu_item', '', 0),
(35, 1, '2016-12-04 19:03:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-04 19:03:43', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=35', 1, 'nav_menu_item', '', 0),
(34, 1, '2016-12-04 19:03:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-04 19:03:43', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=34', 1, 'nav_menu_item', '', 0),
(29, 1, '2016-12-04 15:14:56', '2016-12-04 15:14:56', '', 'received_1121615067921225', '', 'inherit', 'open', 'closed', '', 'received_1121615067921225', '', '', '2016-12-04 15:14:56', '2016-12-04 15:14:56', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/received_1121615067921225.jpeg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2016-12-04 15:19:17', '2016-12-04 15:19:17', '', 'received_1121559264593472', '', 'inherit', 'open', 'closed', '', 'received_1121559264593472', '', '', '2016-12-04 15:19:17', '2016-12-04 15:19:17', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/received_1121559264593472.jpeg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2016-12-04 16:09:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-04 16:09:40', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=33', 1, 'nav_menu_item', '', 0),
(36, 1, '2016-12-04 19:03:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-04 19:03:43', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=36', 1, 'nav_menu_item', '', 0),
(38, 1, '2016-12-04 19:03:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-04 19:03:43', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=38', 1, 'nav_menu_item', '', 0),
(40, 1, '2016-12-06 12:13:41', '2016-12-06 12:13:41', '', '15060414_1121488617933870_2075129114_o', '', 'inherit', 'open', 'closed', '', '15060414_1121488617933870_2075129114_o', '', '', '2016-12-06 12:13:41', '2016-12-06 12:13:41', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/15060414_1121488617933870_2075129114_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2016-12-06 12:18:00', '2016-12-06 12:18:00', '', 'vedant-industries-logo-120x120', '', 'inherit', 'open', 'closed', '', 'vedant-industries-logo-120x120', '', '', '2016-12-11 13:57:30', '2016-12-11 13:57:30', '', 51, 'http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2016-12-06 12:18:22', '2016-12-06 12:18:22', '', 'frp-cooling-tower-250x250', '', 'inherit', 'open', 'closed', '', 'frp-cooling-tower-250x250', '', '', '2016-12-06 12:18:22', '2016-12-06 12:18:22', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/frp-cooling-tower-250x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2016-12-06 12:18:33', '2016-12-06 12:18:33', '', 'frp-doors-500x500', '', 'inherit', 'open', 'closed', '', 'frp-doors-500x500', '', '', '2016-12-06 12:18:33', '2016-12-06 12:18:33', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/frp-doors-500x500.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2016-12-06 12:18:41', '2016-12-06 12:18:41', '', '', '', 'inherit', 'open', 'closed', '', '44', '', '', '2016-12-06 12:18:41', '2016-12-06 12:18:41', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/unnamed-file.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2016-12-06 12:18:53', '2016-12-06 12:18:53', '', 'timber-cooling-tower', '', 'inherit', 'open', 'closed', '', 'timber-cooling-tower', '', '', '2016-12-06 12:18:53', '2016-12-06 12:18:53', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/timber-cooling-tower.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2016-12-06 12:19:05', '2016-12-06 12:19:05', '', 'frp-doors-500x500', '', 'inherit', 'open', 'closed', '', 'frp-doors-500x500-2', '', '', '2016-12-06 12:19:05', '2016-12-06 12:19:05', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/frp-doors-500x500-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2016-12-06 12:19:31', '2016-12-06 12:19:31', '', 'frp-fans', '', 'inherit', 'open', 'closed', '', 'frp-fans', '', '', '2016-12-06 12:19:31', '2016-12-06 12:19:31', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/FRP-Fans.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2016-12-06 12:19:38', '2016-12-06 12:19:38', '', 'frp-natural-draft-cooling-t-250x250', '', 'inherit', 'open', 'closed', '', 'frp-natural-draft-cooling-t-250x250', '', '', '2016-12-06 12:19:38', '2016-12-06 12:19:38', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/frp-natural-draft-cooling-t-250x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2016-12-11 14:17:13', '2016-12-11 14:17:13', '<img class="alignnone size-full wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="120" height="120" />\n\nVEDANT INDUSTIRES | COOLING TOWER &amp; FRP FANS\n\n<strong>Off.</strong> - 1-B/9-B, <strong>Industrial Area</strong> No. 1, A.B. Road Dewas 455001 (M.P.)\n\nRes. - 204 <strong>Mishrilal Nagar</strong> A.B. <strong>Road Dewas 455001  (M.P.)</strong>\n\n<hr />\n<p style="text-align: left;"><strong>Vedantcooling@gmail.com</strong></p>\nM.S. <strong>Chouhan</strong> 98272-56141\n\n<span style="line-height: 1.5;">V.S. </span><strong style="line-height: 1.5;">Chouhan</strong><span style="line-height: 1.5;">  </span><strong style="line-height: 1.5;">99773-56141</strong>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2016-12-11 14:17:13', '2016-12-11 14:17:13', '', 10, 'http://vedantindustries.in/2016/12/07/10-autosave-v1/', 0, 'revision', '', 0),
(50, 1, '2016-12-07 11:46:32', '2016-12-07 11:46:32', '<strong>Off.</strong> - <strong></strong>1-<strong></strong>B<strong></strong>/9-B, <strong>Industrial Area</strong> No. 1, A.B. Road Dewas 455001 (M.P.)\r\n\r\nRes. - 204 <strong>Mishrilal Nagar</strong> A.<strong></strong>B. <strong>Road Dew</strong>\r\n\r\n<hr />\r\n<p style="text-align: left;"><strong>as</strong> 455001  (M.P.)</p>\r\n<strong>Vedantcooling@gmail.com</strong>\r\n\r\nM.S. <strong>Chouhan</strong> 98272-56141\r\n\r\n<span style="line-height: 1.5;">V.S. </span><strong style="line-height: 1.5;">Chouhan</strong><span style="line-height: 1.5;">  </span><strong style="line-height: 1.5;">99773-56141</strong>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-07 11:46:32', '2016-12-07 11:46:32', '', 10, 'http://vedantindustries.in/2016/12/07/10-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2016-12-11 14:05:07', '2016-12-11 14:05:07', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div class="comp-titl ps2 clr15_sh bo1 m11_sh ">\r\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\r\n</div>\r\n</article></section><img class="wp-image-52 alignleft" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\r\n<p style="text-align: left;"><strong>Incorporated in the year 2003, we, Vedant Industries are among the experienced Manufacturers, Suppliers, Traders and Service providers of an impeccable range of Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service and Insulation Work. We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.</strong></p>\r\n\r\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">\r\n\r\n<strong>                                                      Backed with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.</strong>\r\n<p style="text-align: left;"><strong>Under the expert leadership of our mentor, Mr. M.S. Chouhan, we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</strong></p>\r\n\r\n</div>\r\n</article></section>\r\n<div class=" w6_sh m1 ds m4_mn">\r\n<div class="m2_mn bg4 p1_mn">\r\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2"><strong>FACTSHEET</strong></h2>\r\n<table width="100%" align="CENTER">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=" z2_f c1_f bo1_w_f">\r\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="ps2" valign="TOP">\r\n<div class="j_f col_f he_f f4_f c13_f b_f p60_f bo1_w_f"><strong><span class="fnt36_mn">B</span>asic Information</strong></div>\r\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Year of Establishment</strong></td>\r\n<td width="100%"><strong>2003</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Legal Status of Firm</strong></td>\r\n<td width="100%"><strong>Sole Proprietorship (Individual)</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Nature of Business</strong></td>\r\n<td width="100%"><strong>Manufacturer</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Number of Employees</strong></td>\r\n<td width="100%"><strong>11 to 25 People</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Turnover</strong></td>\r\n<td width="100%"><strong>Rs. 50 Lakh - 1 Crore</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-12-12 17:56:33', '2016-12-12 17:56:33', '', 0, 'http://vedantindustries.in/?page_id=51', 0, 'page', '', 0),
(52, 1, '2016-12-11 14:03:57', '2016-12-11 14:03:57', '', '15424415_1262629150465728_846798782_n', '', 'inherit', 'open', 'closed', '', '15424415_1262629150465728_846798782_n', '', '', '2016-12-11 14:03:57', '2016-12-11 14:03:57', '', 51, 'http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2016-12-11 14:05:07', '2016-12-11 14:05:07', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div class="comp-titl ps2 clr15_sh  bo1  m11_sh ">\r\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone  wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\r\n</div>\r\n</article></section><img class="wp-image-52 aligncenter" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\r\n\r\nIncorporated in the year <b>2003,</b> we,<b> Vedant Industries</b> are among the experienced <b>Manufacturers, Suppliers, Traders </b>and<b> Service providers</b> of an impeccable range of <b>Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service </b>and<b> Insulation Work.</b> We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.\r\n\r\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">\r\nBacked with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.\r\n\r\nUnder the expert leadership of our mentor, <b>Mr. M.S. Chouhan, </b>we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</div>\r\n</article></section>\r\n<div class=" w6_sh m1 ds m4_mn">\r\n<div class="m2_mn bg4 p1_mn">\r\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2">FACTSHEET</h2>\r\n<table width="100%" align="CENTER">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=" z2_f c1_f bo1_w_f">\r\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="ps2" valign="TOP">\r\n<div class="j_f col_f he_f f4_f c13_f  b_f p60_f bo1_w_f"><span class="fnt36_mn">B</span>asic Information</div>\r\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Year of Establishment</td>\r\n<td width="100%">2003</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Legal Status of Firm</td>\r\n<td width="100%">Sole Proprietorship (Individual)</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Nature of Business</td>\r\n<td width="100%">Manufacturer</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Number of Employees</td>\r\n<td width="100%">11 to 25 People</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Turnover</td>\r\n<td width="100%">Rs. 50 Lakh - 1 Crore</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-12-11 14:05:07', '2016-12-11 14:05:07', '', 51, 'http://vedantindustries.in/2016/12/11/51-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-12-11 14:07:28', '2016-12-11 14:07:28', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\n<div class="comp-titl ps2 clr15_sh bo1 m11_sh ">\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\n</div>\n</article></section><img class="wp-image-52 aligncenter" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\n<p style="text-align: left;">Incorporated in the year <b>2003,</b> we,<b> Vedant Industries</b> are among the experienced <b>Manufacturers, Suppliers, Traders </b>and<b> Service providers</b> of an impeccable range of <b>Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service </b>and<b> Insulation Work.</b> We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.</p>\n\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">Backed with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.\n<p style="text-align: left;">Under the expert leadership of our mentor, <b>Mr. M.S. Chouhan, </b>we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</p>\n\n</div>\n</article></section>\n<div class=" w6_sh m1 ds m4_mn">\n<div class="m2_mn bg4 p1_mn">\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2">FACTSHEET</h2>\n<table width="100%" align="CENTER">\n<tbody>\n<tr>\n<td>\n<div class=" z2_f c1_f bo1_w_f">\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\n<tbody>\n<tr>\n<td class="ps2" valign="TOP">\n<div class="j_f col_f he_f f4_f c13_f b_f p60_f bo1_w_f"><span class="fnt36_mn">B</span>asic Information</div>\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\n<tbody>\n<tr>\n<td class="bg8_f b_f" width="35%">Year of Establishment</td>\n<td width="100%">2003</td>\n</tr>\n<tr>\n<td class="bg8_f b_f" width="35%">Legal Status of Firm</td>\n<td width="100%">Sole Proprietorship (Individual)</td>\n</tr>\n<tr>\n<td class="bg8_f b_f" width="35%">Nature of Business</td>\n<td width="100%">Manufacturer</td>\n</tr>\n<tr>\n<td class="bg8_f b_f" width="35%">Number of Employees</td>\n<td width="100%">11 to 25 People</td>\n</tr>\n<tr>\n<td class="bg8_f b_f" width="35%">Turnover</td>\n<td width="100%">Rs. 50 Lakh - 1 Crore</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</div></td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '51-autosave-v1', '', '', '2016-12-11 14:07:28', '2016-12-11 14:07:28', '', 51, 'http://vedantindustries.in/2016/12/11/51-autosave-v1/', 0, 'revision', '', 0),
(55, 1, '2016-12-11 14:07:54', '2016-12-11 14:07:54', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div class="comp-titl ps2 clr15_sh bo1 m11_sh ">\r\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\r\n</div>\r\n</article></section><img class="wp-image-52 alignleft" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\r\n<p style="text-align: left;">Incorporated in the year <b>2003,</b> we,<b> Vedant Industries</b> are among the experienced <b>Manufacturers, Suppliers, Traders </b>and<b> Service providers</b> of an impeccable range of <b>Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service </b>and<b> Insulation Work.</b> We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.</p>\r\n\r\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">Backed with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.\r\n<p style="text-align: left;">Under the expert leadership of our mentor, <b>Mr. M.S. Chouhan, </b>we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</p>\r\n\r\n</div>\r\n</article></section>\r\n<div class=" w6_sh m1 ds m4_mn">\r\n<div class="m2_mn bg4 p1_mn">\r\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2">FACTSHEET</h2>\r\n<table width="100%" align="CENTER">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=" z2_f c1_f bo1_w_f">\r\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="ps2" valign="TOP">\r\n<div class="j_f col_f he_f f4_f c13_f b_f p60_f bo1_w_f"><span class="fnt36_mn">B</span>asic Information</div>\r\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Year of Establishment</td>\r\n<td width="100%">2003</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Legal Status of Firm</td>\r\n<td width="100%">Sole Proprietorship (Individual)</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Nature of Business</td>\r\n<td width="100%">Manufacturer</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Number of Employees</td>\r\n<td width="100%">11 to 25 People</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Turnover</td>\r\n<td width="100%">Rs. 50 Lakh - 1 Crore</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-12-11 14:07:54', '2016-12-11 14:07:54', '', 51, 'http://vedantindustries.in/2016/12/11/51-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2016-12-11 14:37:25', '2016-12-11 14:37:25', 'Vedant Industries Offering you a complete choice of products which include Cooling Tower such as Natural Draft Cooling Tower, Wooden Cooling Tower, RCC Cooling Tower and FRP Cooling Tower.', 'Cooling Tower', '', 'publish', 'closed', 'closed', '', 'cooling-tower', '', '', '2016-12-12 18:15:46', '2016-12-12 18:15:46', '', 0, 'http://vedantindustries.in/?post_type=product_category&#038;p=59', 0, 'product_category', '', 0),
(60, 1, '2016-12-11 14:37:11', '2016-12-11 14:37:11', '', 'frp-cooling-tower-250x250', '', 'inherit', 'open', 'closed', '', 'frp-cooling-tower-250x250-2', '', '', '2016-12-11 14:37:11', '2016-12-11 14:37:11', '', 59, 'http://vedantindustries.in/wp-content/uploads/2016/12/frp-cooling-tower-250x250-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2016-12-11 14:45:00', '2016-12-11 14:45:00', 'We are manufacturer &amp; Supplier of a wide range of products which include FRP Product such as FRP Fan, Designer FRP Door, FRP Door, FRP Lining, FRP Molded Tank, FRP Sunlight Sheet and many more items.', 'FRP Product', '', 'publish', 'closed', 'closed', '', 'frp-product', '', '', '2016-12-12 18:16:55', '2016-12-12 18:16:55', '', 0, 'http://vedantindustries.in/?post_type=product_category&#038;p=61', 0, 'product_category', '', 0),
(62, 1, '2016-12-11 14:44:39', '2016-12-11 14:44:39', '', 'frp-sunlight-sheet-500x500', '', 'inherit', 'open', 'closed', '', 'frp-sunlight-sheet-500x500', '', '', '2016-12-11 14:44:39', '2016-12-11 14:44:39', '', 61, 'http://vedantindustries.in/wp-content/uploads/2016/12/frp-sunlight-sheet-500x500.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2016-12-11 14:47:25', '2016-12-11 14:47:25', 'Vedant Industries Creating a niche of Cooling Tower Spare Part such as Counter Flow Nozzle, Coupling and Bush, Cooling Tower Part, Fan Cylinder, Gear Box, Coupling Bush and many more items at its best, with utmost quality.', 'Spare Part', '', 'publish', 'closed', 'closed', '', 'cooling-tower-spare-part', '', '', '2016-12-12 18:20:45', '2016-12-12 18:20:45', '', 0, 'http://vedantindustries.in/?post_type=product_category&#038;p=63', 0, 'product_category', '', 0),
(64, 1, '2016-12-11 14:47:00', '2016-12-11 14:47:00', '', 'air-spainer', '', 'inherit', 'open', 'closed', '', 'air-spainer', '', '', '2016-12-11 14:47:00', '2016-12-11 14:47:00', '', 63, 'http://vedantindustries.in/wp-content/uploads/2016/12/air-spainer.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2016-12-11 15:08:29', '2016-12-11 15:08:29', '', 'Category', '', 'publish', 'closed', 'closed', '', 'acf_category', '', '', '2016-12-11 15:08:42', '2016-12-11 15:08:42', '', 0, 'http://vedantindustries.in/?post_type=acf&#038;p=65', 0, 'acf', '', 0),
(68, 1, '2016-12-11 15:11:15', '2016-12-11 15:11:15', '', 'honey-combs-pvc-fills-250x250', '', 'inherit', 'open', 'closed', '', 'honey-combs-pvc-fills-250x250', '', '', '2016-12-11 15:11:15', '2016-12-11 15:11:15', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/honey-combs-pvc-fills-250x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2016-12-11 15:12:31', '2016-12-11 15:12:31', '', 'gear-boxes-a-500x500', '', 'inherit', 'open', 'closed', '', 'gear-boxes-a-500x500', '', '', '2016-12-11 15:12:31', '2016-12-11 15:12:31', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/gear-boxes-a-500x500.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2016-12-11 15:13:27', '2016-12-11 15:13:27', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div class="comp-titl ps2 clr15_sh bo1 m11_sh ">\r\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\r\n</div>\r\n</article></section><img class="wp-image-52 alignleft" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\r\n<p style="text-align: left;">Incorporated in the year <b>2003,</b> we,<b> Vedant Industries</b> are among the experienced <b>Manufacturers, Suppliers, Traders </b>and<b> Service providers</b> of an impeccable range of <b>Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service </b>and<b> Insulation Work.</b> We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.</p>\r\n\r\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">\r\n\r\nBacked with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.\r\n<p style="text-align: left;">Under the expert leadership of our mentor, <b>Mr. M.S. Chouhan, </b>we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</p>\r\n\r\n</div>\r\n</article></section>\r\n<div class=" w6_sh m1 ds m4_mn">\r\n<div class="m2_mn bg4 p1_mn">\r\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2">FACTSHEET</h2>\r\n<table width="100%" align="CENTER">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=" z2_f c1_f bo1_w_f">\r\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="ps2" valign="TOP">\r\n<div class="j_f col_f he_f f4_f c13_f b_f p60_f bo1_w_f"><span class="fnt36_mn">B</span>asic Information</div>\r\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Year of Establishment</td>\r\n<td width="100%">2003</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Legal Status of Firm</td>\r\n<td width="100%">Sole Proprietorship (Individual)</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Nature of Business</td>\r\n<td width="100%">Manufacturer</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Number of Employees</td>\r\n<td width="100%">11 to 25 People</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Turnover</td>\r\n<td width="100%">Rs. 50 Lakh - 1 Crore</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-12-11 15:13:27', '2016-12-11 15:13:27', '', 51, 'http://vedantindustries.in/2016/12/11/51-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2016-12-11 15:15:15', '2016-12-11 15:15:15', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2016-12-11 15:15:15', '2016-12-11 15:15:15', '', 0, 'http://vedantindustries.in/?p=72', 2, 'nav_menu_item', '', 0),
(73, 1, '2016-12-11 15:19:56', '2016-12-11 15:19:56', '', 'All Products', '', 'publish', 'closed', 'closed', '', 'all-products', '', '', '2016-12-11 15:19:56', '2016-12-11 15:19:56', '', 0, 'http://vedantindustries.in/?page_id=73', 0, 'page', '', 0),
(74, 1, '2016-12-11 15:19:56', '2016-12-11 15:19:56', '', 'All Products', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2016-12-11 15:19:56', '2016-12-11 15:19:56', '', 73, 'http://vedantindustries.in/2016/12/11/73-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2016-12-12 17:52:42', '2016-12-12 17:52:42', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div class="comp-titl ps2 clr15_sh bo1 m11_sh ">\r\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\r\n</div>\r\n</article></section><img class="wp-image-52 alignleft" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\r\n<p style="text-align: left;"><strong>Incorporated in the year 2003, we, Vedant Industries are among the experienced Manufacturers, Suppliers, Traders and Service providers of an impeccable range of Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service and Insulation Work. We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.</strong></p>\r\n\r\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">\r\n\r\n<strong>Backed with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.</strong>\r\n<p style="text-align: left;"><strong>Under the expert leadership of our mentor, Mr. M.S. Chouhan, we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</strong></p>\r\n\r\n</div>\r\n</article></section>\r\n<div class=" w6_sh m1 ds m4_mn">\r\n<div class="m2_mn bg4 p1_mn">\r\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2"><strong>FACTSHEET</strong></h2>\r\n<table width="100%" align="CENTER">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=" z2_f c1_f bo1_w_f">\r\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="ps2" valign="TOP">\r\n<div class="j_f col_f he_f f4_f c13_f b_f p60_f bo1_w_f"><strong><span class="fnt36_mn">B</span>asic Information</strong></div>\r\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Year of Establishment</strong></td>\r\n<td width="100%"><strong>2003</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Legal Status of Firm</strong></td>\r\n<td width="100%"><strong>Sole Proprietorship (Individual)</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Nature of Business</strong></td>\r\n<td width="100%"><strong>Manufacturer</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Number of Employees</strong></td>\r\n<td width="100%"><strong>11 to 25 People</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Turnover</strong></td>\r\n<td width="100%"><strong>Rs. 50 Lakh - 1 Crore</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-12-12 17:52:42', '2016-12-12 17:52:42', '', 51, 'http://vedantindustries.in/2016/12/12/51-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `vi_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(77, 1, '2016-12-12 17:56:33', '2016-12-12 17:56:33', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div class="comp-titl ps2 clr15_sh bo1 m11_sh ">\r\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\r\n</div>\r\n</article></section><img class="wp-image-52 alignleft" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\r\n<p style="text-align: left;"><strong>Incorporated in the year 2003, we, Vedant Industries are among the experienced Manufacturers, Suppliers, Traders and Service providers of an impeccable range of Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service and Insulation Work. We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.</strong></p>\r\n\r\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">\r\n\r\n<strong>                                                      Backed with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.</strong>\r\n<p style="text-align: left;"><strong>Under the expert leadership of our mentor, Mr. M.S. Chouhan, we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</strong></p>\r\n\r\n</div>\r\n</article></section>\r\n<div class=" w6_sh m1 ds m4_mn">\r\n<div class="m2_mn bg4 p1_mn">\r\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2"><strong>FACTSHEET</strong></h2>\r\n<table width="100%" align="CENTER">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=" z2_f c1_f bo1_w_f">\r\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="ps2" valign="TOP">\r\n<div class="j_f col_f he_f f4_f c13_f b_f p60_f bo1_w_f"><strong><span class="fnt36_mn">B</span>asic Information</strong></div>\r\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Year of Establishment</strong></td>\r\n<td width="100%"><strong>2003</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Legal Status of Firm</strong></td>\r\n<td width="100%"><strong>Sole Proprietorship (Individual)</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Nature of Business</strong></td>\r\n<td width="100%"><strong>Manufacturer</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Number of Employees</strong></td>\r\n<td width="100%"><strong>11 to 25 People</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Turnover</strong></td>\r\n<td width="100%"><strong>Rs. 50 Lakh - 1 Crore</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-12-12 17:56:33', '2016-12-12 17:56:33', '', 51, 'http://vedantindustries.in/2016/12/12/51-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2016-12-12 18:08:59', '2016-12-12 18:08:59', '', 'TIMBER CROSS FLOW', '', 'publish', 'closed', 'closed', '', 'timber-cross-flow', '', '', '2016-12-12 18:08:59', '2016-12-12 18:08:59', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=79', 0, 'products', '', 0),
(80, 1, '2016-12-12 18:09:37', '2016-12-12 18:09:37', '', 'RCC COOLING TOWER', '', 'publish', 'closed', 'closed', '', 'rcc-cooling-tower', '', '', '2016-12-12 18:09:37', '2016-12-12 18:09:37', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=80', 0, 'products', '', 0),
(81, 1, '2016-12-12 18:10:31', '2016-12-12 18:10:31', '', 'FRP COOLING TOWER', '', 'publish', 'closed', 'closed', '', 'frp-cooling-tower', '', '', '2016-12-12 18:10:31', '2016-12-12 18:10:31', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=81', 0, 'products', '', 0),
(82, 1, '2017-03-21 07:12:41', '2017-03-21 07:12:41', '<ul>\n 	<li><strong>Wooden Single &amp; Double Flow Induced Draft Cross Flow with Direct System</strong></li>\n 	<li><strong>Wooden Single &amp; Double Flow Induced Draft Cross Flow with Reduction Gear Box Drive .</strong></li>\n</ul>', 'WOODEN COOLING TOWERS', '', 'inherit', 'closed', 'closed', '', '63-autosave-v1', '', '', '2017-03-21 07:12:41', '2017-03-21 07:12:41', '', 63, 'http://vedantindustries.in/2016/12/12/63-autosave-v1/', 0, 'revision', '', 0),
(83, 1, '2016-12-12 18:32:00', '2016-12-12 18:32:00', '', 'GEAR BOX', '', 'publish', 'closed', 'closed', '', 'gear-box', '', '', '2016-12-12 18:32:00', '2016-12-12 18:32:00', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=83', 0, 'products', '', 0),
(84, 1, '2016-12-12 18:32:48', '2016-12-12 18:32:48', '', 'FILLS', '', 'publish', 'closed', 'closed', '', 'fills', '', '', '2016-12-12 18:41:17', '2016-12-12 18:41:17', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=84', 0, 'products', '', 0),
(85, 1, '2016-12-12 18:35:05', '2016-12-12 18:35:05', '', 'NOZZELS', '', 'publish', 'closed', 'closed', '', 'nozzels', '', '', '2016-12-12 18:41:46', '2016-12-12 18:41:46', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=85', 0, 'products', '', 0),
(86, 1, '2016-12-12 18:35:49', '2016-12-12 18:35:49', '', 'DRIFT ELIMINATOR', '', 'publish', 'closed', 'closed', '', 'drift-eliminator', '', '', '2016-12-12 18:35:49', '2016-12-12 18:35:49', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=86', 0, 'products', '', 0),
(87, 1, '2016-12-12 18:36:29', '2016-12-12 18:36:29', '', 'FAN CYLINDER', '', 'publish', 'closed', 'closed', '', 'fan-cylinder', '', '', '2016-12-12 18:36:29', '2016-12-12 18:36:29', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=87', 0, 'products', '', 0),
(88, 1, '2016-12-12 18:37:20', '2016-12-12 18:37:20', '', 'DRIVE SHAFT', '', 'publish', 'closed', 'closed', '', 'drive-shaft', '', '', '2016-12-12 18:37:20', '2016-12-12 18:37:20', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=88', 0, 'products', '', 0),
(89, 1, '2016-12-12 18:39:35', '2016-12-12 18:39:35', '', 'FANS', '', 'publish', 'closed', 'closed', '', 'fans', '', '', '2016-12-12 18:39:35', '2016-12-12 18:39:35', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=89', 0, 'products', '', 0),
(90, 1, '2016-12-12 18:40:25', '2016-12-12 18:40:25', '', 'FILLS WOODEN', '', 'publish', 'closed', 'closed', '', 'fills-wooden', '', '', '2016-12-12 18:40:26', '2016-12-12 18:40:26', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=90', 0, 'products', '', 0),
(91, 1, '2016-12-12 18:51:46', '2016-12-12 18:51:46', '', 'FRP LINING WORK', '', 'publish', 'closed', 'closed', '', 'frp-lining-work', '', '', '2016-12-12 18:51:46', '2016-12-12 18:51:46', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=91', 0, 'products', '', 0),
(92, 1, '2016-12-12 18:52:59', '2016-12-12 18:52:59', '', 'FRP DOOR', '', 'publish', 'closed', 'closed', '', 'frp-door', '', '', '2016-12-12 18:52:59', '2016-12-12 18:52:59', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=92', 0, 'products', '', 0),
(95, 1, '2016-12-12 18:55:31', '2016-12-12 18:55:31', '', 'FRP TANK', '', 'publish', 'closed', 'closed', '', 'frp-tank', '', '', '2016-12-12 18:55:31', '2016-12-12 18:55:31', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=95', 0, 'products', '', 0),
(96, 1, '2016-12-12 18:58:13', '2016-12-12 18:58:13', '', 'FRP COOLER', '', 'publish', 'closed', 'closed', '', 'frp-cooler', '', '', '2016-12-12 18:58:13', '2016-12-12 18:58:13', '', 0, 'http://vedantindustries.in/?post_type=products&#038;p=96', 0, 'products', '', 0),
(97, 1, '2016-12-13 11:25:14', '2016-12-13 11:25:14', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nVedant Industries "[your-subject]"\n[your-name] <wordpress@vedantindustries.in>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Vedant Industries (http://vedantindustries.in)\npsharma.developer@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nVedant Industries "[your-subject]"\nVedant Industries <wordpress@vedantindustries.in>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Vedant Industries (http://vedantindustries.in)\n[your-email]\nReply-To: psharma.developer@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-12-13 11:25:14', '2016-12-13 11:25:14', '', 0, 'http://vedantindustries.in/?post_type=wpcf7_contact_form&p=97', 0, 'wpcf7_contact_form', '', 0),
(98, 1, '2016-12-13 11:26:40', '2016-12-13 11:26:40', '<img class="alignnone size-full wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="120" height="120" />\r\n\r\n<strong>VEDANT INDUSTIRES | COOLING TOWER &amp; FRP FANS</strong>\r\n\r\n<strong>Off. - 1-B/9-B, Industrial Area No. 1, A.B. Road Dewas 455001 (M.P.)</strong>\r\n\r\n<strong>Res. - 204 Mishrilal Nagar A.B. Road Dewas 455001  (M.P.)</strong>\r\n\r\n<hr />\r\n<p style="text-align: left;"><strong>Vedantcooling@gmail.com</strong></p>\r\n<strong>M.S. Chouhan 98272-56141</strong>\r\n\r\n<strong><span style="line-height: 1.5;">V.S. </span>Chouhan<span style="line-height: 1.5;">  </span>99773-56141</strong>\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id="97" title="Contact form 1"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-13 11:26:40', '2016-12-13 11:26:40', '', 10, 'http://vedantindustries.in/2016/12/13/10-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2016-12-13 11:57:45', '2016-12-13 11:57:45', '<label>[text* text-38 id:mobileno placeholder "Enter your mobile no."]</label>\r\n\r\n<label>[textarea* textarea-431 id:service_name placeholder "Enter Product / Service Name"]</label>\r\n\r\n[submit id:enquiry_sub "Submit Enquiry"]\nEnquiry Details\npsharma.developer@gmail.com\nFrom: [text-38]\r\nSubject: Enquiry Details\r\n\r\nMessage Body:\r\n[textarea-431]\r\n\r\n--\r\nThis e-mail was sent from an enquiry form on Vedant Industries (http://vedantindustries.in)\npsharma.developer@gmail.com\nReply-To: psharma.developer@gmail.com\n\n\n\n\nVedant Industries "[your-subject]"\nVedant Industries <wordpress@vedantindustries.in>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Vedant Industries (http://vedantindustries.in)\n[your-email]\nReply-To: psharma.developer@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Enquiry Form', '', 'publish', 'closed', 'closed', '', 'enquiry-form', '', '', '2016-12-13 11:57:45', '2016-12-13 11:57:45', '', 0, 'http://vedantindustries.in/?post_type=wpcf7_contact_form&p=99', 0, 'wpcf7_contact_form', '', 0),
(100, 1, '2016-12-13 11:58:23', '2016-12-13 11:58:23', '[contact-form-7 id="99" title="Enquiry Form"]', 'Enquiry', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-13 11:58:23', '2016-12-13 11:58:23', '', 12, 'http://vedantindustries.in/2016/12/13/12-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2016-12-14 05:33:59', '2016-12-14 05:33:59', '', 'Product & Services', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-12-14 05:33:59', '2016-12-14 05:33:59', '', 8, 'http://vedantindustries.in/2016/12/14/8-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2016-12-14 05:33:30', '2016-12-14 05:33:30', '<strong>[display-posts]</strong>', 'Product & Services', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-12-14 05:33:30', '2016-12-14 05:33:30', '', 8, 'http://vedantindustries.in/2016/12/14/8-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2016-12-14 05:30:30', '2016-12-14 05:30:30', '<strong>[display-posts category="product_category" posts_per_page="-1" order="ASC" orderby="title"]</strong>', 'Product & Services', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-12-14 05:30:30', '2016-12-14 05:30:30', '', 8, 'http://vedantindustries.in/2016/12/14/8-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2016-12-14 05:33:07', '2016-12-14 05:33:07', '<strong>[display-posts type="product_category" posts_per_page="-1" order="ASC" orderby="title"]</strong>', 'Product & Services', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-12-14 05:33:07', '2016-12-14 05:33:07', '', 8, 'http://vedantindustries.in/2016/12/14/8-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2016-12-15 12:49:16', '2016-12-15 12:49:16', '<img class="alignnone size-full wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="120" height="120" />\r\n\r\n<strong>VEDANT INDUSTIRES | COOLING TOWER &amp; FRP FANS</strong>\r\n\r\n<strong>Off. - 1-B/9-B, Industrial Area No. 1, A.B. Road Dewas 455001 (M.P.)</strong>\r\n\r\n<strong>Res. - 204 Mishrilal Nagar A.B. Road Dewas 455001  (M.P.)</strong>\r\n\r\n<hr />\r\n<p style="text-align: left;"><strong>Vedantcooling@gmail.com</strong></p>\r\n<strong>M.S. Chouhan 98272-56141</strong>\r\n\r\n<strong><span style="line-height: 1.5;">V.S. </span>Chouhan<span style="line-height: 1.5;">  </span>99773-56141</strong>\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id="97" title="Contact form 1"]\r\n\r\n<strong><code>[ank_google_map]</code></strong>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-15 12:49:16', '2016-12-15 12:49:16', '', 10, 'http://vedantindustries.in/2016/12/15/10-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vi_termmeta`
--

CREATE TABLE IF NOT EXISTS `vi_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vi_terms`
--

CREATE TABLE IF NOT EXISTS `vi_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vi_terms`
--

INSERT INTO `vi_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vi_term_relationships`
--

CREATE TABLE IF NOT EXISTS `vi_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `vi_term_relationships`
--

INSERT INTO `vi_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(22, 2, 0),
(72, 2, 0),
(27, 2, 0),
(24, 2, 0),
(25, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vi_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `vi_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vi_term_taxonomy`
--

INSERT INTO `vi_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vi_usermeta`
--

CREATE TABLE IF NOT EXISTS `vi_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `vi_usermeta`
--

INSERT INTO `vi_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'vi_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'vi_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '0'),
(15, 1, 'vi_dashboard_quick_press_last_post_id', '106'),
(16, 1, 'tgmpa_dismissed_notice_advertica-lite', '1'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'vi_user-settings', 'libraryContent=browse&mfold=o&editor=tinymce'),
(23, 1, 'vi_user-settings-time', '1490095582'),
(29, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:"dashboard_right_now";i:1;s:18:"dashboard_activity";i:2;s:21:"dashboard_quick_press";i:3;s:17:"dashboard_primary";}'),
(30, 1, 'metaboxhidden_dashboard', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `vi_users`
--

CREATE TABLE IF NOT EXISTS `vi_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vi_users`
--

INSERT INTO `vi_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'VedIN', '$P$Bn94YP8sm5Fr/mkrYvRKnQoFgxlDBt.', 'vedant', 'psharma.developer@gmail.com', '', '2016-12-03 19:05:25', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfBadLeechers`
--

CREATE TABLE IF NOT EXISTS `vi_wfBadLeechers` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfBlockedIPLog`
--

CREATE TABLE IF NOT EXISTS `vi_wfBlockedIPLog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) unsigned NOT NULL DEFAULT '0',
  `unixday` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`,`unixday`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vi_wfBlockedIPLog`
--

INSERT INTO `vi_wfBlockedIPLog` (`IP`, `countryCode`, `blockCount`, `unixday`) VALUES
('\0\0\0\0\0\0\0\0\0\0��z���', 'IN', 1, 17227),
('\0\0\0\0\0\0\0\0\0\0��z��i', 'IN', 2, 17243),
('\0\0\0\0\0\0\0\0\0\0��\\?[T', 'LV', 1, 17247);

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfBlocks`
--

CREATE TABLE IF NOT EXISTS `vi_wfBlocks` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT '0',
  `blockedHits` int(10) unsigned DEFAULT '0',
  `wfsn` tinyint(3) unsigned DEFAULT '0',
  `permanent` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`IP`),
  KEY `k1` (`wfsn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfBlocksAdv`
--

CREATE TABLE IF NOT EXISTS `vi_wfBlocksAdv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blockType` char(2) NOT NULL,
  `blockString` varchar(255) NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `reason` varchar(255) NOT NULL,
  `totalBlocked` int(10) unsigned DEFAULT '0',
  `lastBlocked` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfConfig`
--

CREATE TABLE IF NOT EXISTS `vi_wfConfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vi_wfConfig`
--

INSERT INTO `vi_wfConfig` (`name`, `val`, `autoload`) VALUES
('alertOn_critical', 0x31, 'yes'),
('alertOn_update', 0x30, 'yes'),
('alertOn_warnings', 0x31, 'yes'),
('alertOn_throttle', 0x30, 'yes'),
('alertOn_block', 0x31, 'yes'),
('alertOn_loginLockout', 0x31, 'yes'),
('alertOn_lostPasswdForm', 0x31, 'yes'),
('alertOn_adminLogin', 0x31, 'yes'),
('alertOn_firstAdminLoginOnly', 0x30, 'yes'),
('alertOn_nonAdminLogin', 0x30, 'yes'),
('alertOn_firstNonAdminLoginOnly', 0x30, 'yes'),
('alertOn_wordfenceDeactivated', 0x31, 'yes'),
('liveTrafficEnabled', 0x31, 'yes'),
('advancedCommentScanning', 0x30, 'yes'),
('checkSpamIP', 0x30, 'yes'),
('spamvertizeCheck', 0x30, 'yes'),
('liveTraf_ignorePublishers', 0x31, 'yes'),
('scheduledScansEnabled', 0x31, 'yes'),
('lowResourceScansEnabled', 0x30, 'yes'),
('scansEnabled_public', 0x30, 'yes'),
('scansEnabled_heartbleed', 0x31, 'yes'),
('scansEnabled_checkHowGetIPs', 0x31, 'yes'),
('scansEnabled_core', 0x31, 'yes'),
('scansEnabled_themes', 0x30, 'yes'),
('scansEnabled_plugins', 0x30, 'yes'),
('scansEnabled_coreUnknown', 0x31, 'yes'),
('scansEnabled_malware', 0x31, 'yes'),
('scansEnabled_fileContents', 0x31, 'yes'),
('scansEnabled_checkReadableConfig', 0x31, 'yes'),
('scansEnabled_suspectedFiles', 0x31, 'yes'),
('scansEnabled_posts', 0x31, 'yes'),
('scansEnabled_comments', 0x31, 'yes'),
('scansEnabled_passwds', 0x31, 'yes'),
('scansEnabled_diskSpace', 0x31, 'yes'),
('scansEnabled_options', 0x31, 'yes'),
('scansEnabled_wpscan_fullPathDisclosure', 0x31, 'yes'),
('scansEnabled_wpscan_directoryListingEnabled', 0x31, 'yes'),
('scansEnabled_dns', 0x31, 'yes'),
('scansEnabled_scanImages', 0x30, 'yes'),
('scansEnabled_highSense', 0x30, 'yes'),
('scansEnabled_oldVersions', 0x31, 'yes'),
('scansEnabled_suspiciousAdminUsers', 0x31, 'yes'),
('firewallEnabled', 0x31, 'yes'),
('blockFakeBots', 0x30, 'yes'),
('autoBlockScanners', 0x31, 'yes'),
('loginSecurityEnabled', 0x31, 'yes'),
('loginSec_lockInvalidUsers', 0x30, 'yes'),
('loginSec_maskLoginErrors', 0x31, 'yes'),
('loginSec_blockAdminReg', 0x31, 'yes'),
('loginSec_disableAuthorScan', 0x31, 'yes'),
('loginSec_disableOEmbedAuthor', 0x30, 'yes'),
('other_hideWPVersion', 0x30, 'yes'),
('other_noAnonMemberComments', 0x31, 'yes'),
('other_blockBadPOST', 0x30, 'yes'),
('other_scanComments', 0x31, 'yes'),
('other_pwStrengthOnUpdate', 0x31, 'yes'),
('other_WFNet', 0x31, 'yes'),
('other_scanOutside', 0x30, 'yes'),
('deleteTablesOnDeact', 0x30, 'yes'),
('autoUpdate', 0x30, 'yes'),
('disableCookies', 0x30, 'yes'),
('startScansRemotely', 0x30, 'yes'),
('disableConfigCaching', 0x30, 'yes'),
('addCacheComment', 0x30, 'yes'),
('disableCodeExecutionUploads', 0x30, 'yes'),
('allowHTTPSCaching', 0x30, 'yes'),
('debugOn', 0x30, 'yes'),
('email_summary_enabled', 0x31, 'yes'),
('email_summary_dashboard_widget_enabled', 0x31, 'yes'),
('ssl_verify', 0x31, 'yes'),
('ajaxWatcherDisabled_front', 0x30, 'yes'),
('ajaxWatcherDisabled_admin', 0x30, 'yes'),
('wafAlertOnAttacks', 0x31, 'yes'),
('disableWAFIPBlocking', 0x30, 'yes'),
('cbl_cookieVal', 0x35386235373165636233663537, 'yes'),
('showAdminBarMenu', 0x31, 'yes'),
('scan_include_extra', '', 'yes'),
('alertEmails', 0x70736861726d612e646576656c6f70657240676d61696c2e636f6d, 'yes'),
('liveTraf_ignoreUsers', '', 'yes'),
('liveTraf_ignoreIPs', '', 'yes'),
('liveTraf_ignoreUA', '', 'yes'),
('apiKey', 0x63306330363365376135623763633761623333343631376138623066646138636239663861646262323061313737356436663163303465393665653137323863306466653666363636633730646133653639366334383936663536323538623838356663313264356638343362376135306437636363393565656436643137656238383333373239306562353563346363623632653761393339643437373137, 'yes'),
('maxMem', 0x323536, 'yes'),
('scan_exclude', '', 'yes'),
('scan_maxIssues', 0x31303030, 'yes'),
('scan_maxDuration', '', 'yes'),
('whitelisted', '', 'yes'),
('bannedURLs', '', 'yes'),
('maxExecutionTime', '', 'yes'),
('howGetIPs', '', 'yes'),
('actUpdateInterval', '', 'yes'),
('alert_maxHourly', 0x30, 'yes'),
('loginSec_userBlacklist', 0x61646d696e, 'yes'),
('liveTraf_maxRows', 0x32303030, 'yes'),
('neverBlockBG', 0x6e65766572426c6f636b5665726966696564, 'yes'),
('loginSec_countFailMins', 0x35, 'yes'),
('loginSec_lockoutMins', 0x3134343030, 'yes'),
('loginSec_strongPasswds', 0x70756273, 'yes'),
('loginSec_maxFailures', 0x35, 'yes'),
('loginSec_maxForgotPasswd', 0x35, 'yes'),
('maxGlobalRequests', 0x44495341424c4544, 'yes'),
('maxGlobalRequests_action', 0x7468726f74746c65, 'yes'),
('maxRequestsCrawlers', 0x44495341424c4544, 'yes'),
('maxRequestsCrawlers_action', 0x7468726f74746c65, 'yes'),
('maxRequestsHumans', 0x44495341424c4544, 'yes'),
('maxRequestsHumans_action', 0x7468726f74746c65, 'yes'),
('max404Crawlers', 0x44495341424c4544, 'yes'),
('max404Crawlers_action', 0x7468726f74746c65, 'yes'),
('max404Humans', 0x44495341424c4544, 'yes'),
('max404Humans_action', 0x7468726f74746c65, 'yes'),
('maxScanHits', 0x44495341424c4544, 'yes'),
('maxScanHits_action', 0x7468726f74746c65, 'yes'),
('blockedTime', 0x333030, 'yes'),
('email_summary_interval', 0x7765656b6c79, 'yes'),
('email_summary_excluded_directories', 0x77702d636f6e74656e742f63616368652c77702d636f6e74656e742f706c7567696e732f776f726466656e63652f746d70, 'yes'),
('allowed404s', 0x2f66617669636f6e2e69636f0a2f6170706c652d746f7563682d69636f6e2a2e706e670a2f2a4032782e706e670a2f62726f77736572636f6e6669672e786d6c, 'yes'),
('wafAlertWhitelist', '', 'yes'),
('wafAlertInterval', 0x363030, 'yes'),
('wafAlertThreshold', 0x313030, 'yes'),
('encKey', 0x31653731346433383632666530663132, 'yes'),
('cbl_restOfSiteBlocked', 0x31, 'yes'),
('hasKeyConflict', '', 'yes'),
('allowed404s6116Migration', 0x31, 'yes'),
('cacheType', 0x64697361626c6564, 'yes'),
('detectProxyNextCheck', 0x31343931343538353331, 'no'),
('detectProxyNonce', '', 'no'),
('detectProxyRecommendation', 0x52454d4f54455f41444452, 'no'),
('wp_home_url', 0x687474703a2f2f766564616e74696e64757374726965732e696e, 'yes'),
('welcomeClosed', 0x31, 'yes'),
('wf_summaryItems', 0x613a31343a7b733a31303a22746f74616c5573657273223b693a313b733a31303a22746f74616c5061676573223b733a313a2236223b733a31303a22746f74616c506f737473223b733a313a2230223b733a31333a22746f74616c436f6d6d656e7473223b733a313a2230223b733a31353a22746f74616c43617465676f72696573223b733a313a2231223b733a31313a22746f74616c5461626c6573223b693a33353b733a393a22746f74616c526f7773223b693a363631313b733a31323a22746f74616c506c7567696e73223b693a363b733a31303a226c617374557064617465223b693a313439303835333739323b733a31313a22746f74616c5468656d6573223b693a313b733a393a22746f74616c44617461223b733a383a2233352e3733204d42223b733a31303a22746f74616c46696c6573223b693a323230333b733a393a22746f74616c44697273223b693a3230353b733a383a227363616e54696d65223b643a313439303835333739322e313038343434393239313232393234383034363837353b7d, 'yes'),
('configWritingTest', 0x6638353766333930633134323161326233303930353933346237393962326132, 'no'),
('configWritingTest_ser', 0x613a313a7b693a303b733a33323a226638353766333930633134323161326233303930353933346237393962326132223b7d, 'no'),
('tourClosed', 0x31, 'yes'),
('totalScansRun', 0x3338, 'yes'),
('wfKillRequested', 0x30, 'no'),
('currentCronKey', '', 'yes'),
('wf_scanRunning', '', 'yes'),
('wfPeakMemory', 0x3630343635353132, 'yes'),
('lowResourceScanWaitStep', '', 'yes'),
('wfStatusStartMsgs', 0x613a31383a7b693a303b733a303a22223b693a313b733a303a22223b693a323b733a303a22223b693a333b733a303a22223b693a343b733a303a22223b693a353b733a303a22223b693a363b733a303a22223b693a373b733a303a22223b693a383b733a303a22223b693a393b733a303a22223b693a31303b733a303a22223b693a31313b733a303a22223b693a31323b733a303a22223b693a31333b733a303a22223b693a31343b733a303a22223b693a31353b733a303a22223b693a31363b733a303a22223b693a31373b733a303a22223b7d, 'yes'),
('wfsd_engine', '', 'no'),
('scanFileProcessing', '', 'yes'),
('signatureUpdateTime', 0x31343838323235323835, 'yes'),
('wf_dnsCNAME', '', 'yes'),
('wf_dnsA', 0x766564616e74696e64757374726965732e696e20706f696e747320746f203130342e33372e3138392e3636, 'yes'),
('wf_dnsMX', 0x766564616e74696e64757374726965732e696e, 'yes'),
('wf_dnsLogged', 0x31, 'yes'),
('vulnerabilities_theme', 0x613a313a7b693a303b613a343a7b733a343a22736c7567223b733a31343a226164766572746963612d6c697465223b733a393a22746f56657273696f6e223b733a363a22312e302e3131223b733a31313a2266726f6d56657273696f6e223b733a363a22312e302e3130223b733a31303a2276756c6e657261626c65223b623a303b7d7d, 'yes'),
('lastScanCompleted', 0x6f6b, 'yes'),
('adminUserList', 0x613a313a7b693a313b693a313b7d, 'yes'),
('lastScanFailureType', '', 'yes'),
('emailedIssuesList', 0x613a383a7b693a303b613a323a7b733a373a2269676e6f726543223b733a33323a226234346166313336663263336231393433636261386133323236303438323233223b733a373a2269676e6f726550223b733a33323a226234346166313336663263336231393433636261386133323236303438323233223b7d693a313b613a323a7b733a373a2269676e6f726543223b733a33323a223635346539383637623033326664613830666331333834613933613434303166223b733a373a2269676e6f726550223b733a33323a223635346539383637623033326664613830666331333834613933613434303166223b7d693a323b613a323a7b733a373a2269676e6f726543223b733a33323a223063383734663136313939376338343565323036643733366263346165663339223b733a373a2269676e6f726550223b733a33323a223063383734663136313939376338343565323036643733366263346165663339223b7d693a333b613a323a7b733a373a2269676e6f726543223b733a33323a223061653130393334353265613436363234633962376535323763373839666137223b733a373a2269676e6f726550223b733a33323a223061653130393334353265613436363234633962376535323763373839666137223b7d693a343b613a323a7b733a373a2269676e6f726543223b733a33323a223039346436326630653433316635363136633137616534376164643234663734223b733a373a2269676e6f726550223b733a33323a223039346436326630653433316635363136633137616534376164643234663734223b7d693a353b613a323a7b733a373a2269676e6f726543223b733a33323a223635666362303164383833373261363762666331346235363230383133373738223b733a373a2269676e6f726550223b733a33323a223635666362303164383833373261363762666331346235363230383133373738223b7d693a363b613a323a7b733a373a2269676e6f726543223b733a33323a223461336663663761356366373036333361643234623035333162343033363934223b733a373a2269676e6f726550223b733a33323a223461336663663761356366373036333361643234623035333162343033363934223b7d693a373b613a323a7b733a373a2269676e6f726543223b733a33323a223332376139393734373630616335313034393263363466373537396161373362223b733a373a2269676e6f726550223b733a33323a223332376139393734373630616335313034393263363466373537396161373362223b7d7d, 'yes'),
('lastNotificationID', 0x3632, 'no'),
('totalLoginHits', 0x3137, 'yes'),
('lastScheduledScanStart', 0x31343930383533373131, 'yes'),
('dashboardData', 0x613a343a7b733a393a2267656e657261746564223b693a313439303830383831323b733a333a22746466223b613a323a7b733a393a22636f6d6d756e697479223b693a323830333b733a373a227072656d69756d223b693a333139343b7d733a31303a2261747461636b64617461223b613a333a7b733a333a22323468223b613a32343a7b693a303b613a323a7b733a313a2274223b693a313439303732303430303b733a313a2263223b693a313733303330333b7d693a313b613a323a7b733a313a2274223b693a313439303732343030303b733a313a2263223b693a313735323335393b7d693a323b613a323a7b733a313a2274223b693a313439303732373630303b733a313a2263223b693a313539393632333b7d693a333b613a323a7b733a313a2274223b693a313439303733313230303b733a313a2263223b693a313532393232343b7d693a343b613a323a7b733a313a2274223b693a313439303733343830303b733a313a2263223b693a313432373031383b7d693a353b613a323a7b733a313a2274223b693a313439303733383430303b733a313a2263223b693a313433333835303b7d693a363b613a323a7b733a313a2274223b693a313439303734323030303b733a313a2263223b693a313238313931333b7d693a373b613a323a7b733a313a2274223b693a313439303734353630303b733a313a2263223b693a313233303032303b7d693a383b613a323a7b733a313a2274223b693a313439303734393230303b733a313a2263223b693a313138373836343b7d693a393b613a323a7b733a313a2274223b693a313439303735323830303b733a313a2263223b693a313230303139343b7d693a31303b613a323a7b733a313a2274223b693a313439303735363430303b733a313a2263223b693a313038333735343b7d693a31313b613a323a7b733a313a2274223b693a313439303736303030303b733a313a2263223b693a313233373235353b7d693a31323b613a323a7b733a313a2274223b693a313439303736333630303b733a313a2263223b693a313334383439313b7d693a31333b613a323a7b733a313a2274223b693a313439303736373230303b733a313a2263223b693a313430343936323b7d693a31343b613a323a7b733a313a2274223b693a313439303737303830303b733a313a2263223b693a313436373032353b7d693a31353b613a323a7b733a313a2274223b693a313439303737343430303b733a313a2263223b693a313539353834323b7d693a31363b613a323a7b733a313a2274223b693a313439303737383030303b733a313a2263223b693a313531333530373b7d693a31373b613a323a7b733a313a2274223b693a313439303738313630303b733a313a2263223b693a313630373939323b7d693a31383b613a323a7b733a313a2274223b693a313439303738353230303b733a313a2263223b693a313338353730383b7d693a31393b613a323a7b733a313a2274223b693a313439303738383830303b733a313a2263223b693a313531333131393b7d693a32303b613a323a7b733a313a2274223b693a313439303739323430303b733a313a2263223b693a313634323033353b7d693a32313b613a323a7b733a313a2274223b693a313439303739363030303b733a313a2263223b693a313535323432323b7d693a32323b613a323a7b733a313a2274223b693a313439303739393630303b733a313a2263223b693a313438313234353b7d693a32333b613a323a7b733a313a2274223b693a313439303830333230303b733a313a2263223b693a313531363037363b7d7d733a323a223764223b613a373a7b693a303b613a323a7b733a313a2274223b693a313439303134303830303b733a313a2263223b693a32363733363333353b7d693a313b613a323a7b733a313a2274223b693a313439303232373230303b733a313a2263223b693a33353437353139383b7d693a323b613a323a7b733a313a2274223b693a313439303331333630303b733a313a2263223b693a33363331373037363b7d693a333b613a323a7b733a313a2274223b693a313439303430303030303b733a313a2263223b693a32393634363830323b7d693a343b613a323a7b733a313a2274223b693a313439303438363430303b733a313a2263223b693a33313237323939323b7d693a353b613a323a7b733a313a2274223b693a313439303537323830303b733a313a2263223b693a33343734343231323b7d693a363b613a323a7b733a313a2274223b693a313439303635393230303b733a313a2263223b693a33383935333735333b7d7d733a333a22333064223b613a33303a7b693a303b613a323a7b733a313a2274223b693a313438383135333630303b733a313a2263223b693a34383733393535313b7d693a313b613a323a7b733a313a2274223b693a313438383234303030303b733a313a2263223b693a34343331383039363b7d693a323b613a323a7b733a313a2274223b693a313438383332363430303b733a313a2263223b693a34303435373032323b7d693a333b613a323a7b733a313a2274223b693a313438383431323830303b733a313a2263223b693a34333333323936303b7d693a343b613a323a7b733a313a2274223b693a313438383439393230303b733a313a2263223b693a34303631333538353b7d693a353b613a323a7b733a313a2274223b693a313438383538353630303b733a313a2263223b693a33363838303635393b7d693a363b613a323a7b733a313a2274223b693a313438383637323030303b733a313a2263223b693a33333636333439383b7d693a373b613a323a7b733a313a2274223b693a313438383735383430303b733a313a2263223b693a33353535333034383b7d693a383b613a323a7b733a313a2274223b693a313438383834343830303b733a313a2263223b693a33353733333834313b7d693a393b613a323a7b733a313a2274223b693a313438383933313230303b733a313a2263223b693a32393533343335323b7d693a31303b613a323a7b733a313a2274223b693a313438393031373630303b733a313a2263223b693a33393733323633303b7d693a31313b613a323a7b733a313a2274223b693a313438393130343030303b733a313a2263223b693a34313238313731333b7d693a31323b613a323a7b733a313a2274223b693a313438393139303430303b733a313a2263223b693a34323233363931313b7d693a31333b613a323a7b733a313a2274223b693a313438393237363830303b733a313a2263223b693a34313439313533383b7d693a31343b613a323a7b733a313a2274223b693a313438393336333230303b733a313a2263223b693a34373933393633323b7d693a31353b613a323a7b733a313a2274223b693a313438393434393630303b733a313a2263223b693a34363736333137303b7d693a31363b613a323a7b733a313a2274223b693a313438393533363030303b733a313a2263223b693a34393938323533383b7d693a31373b613a323a7b733a313a2274223b693a313438393632323430303b733a313a2263223b693a34353734323837323b7d693a31383b613a323a7b733a313a2274223b693a313438393730383830303b733a313a2263223b693a34393233393837323b7d693a31393b613a323a7b733a313a2274223b693a313438393739353230303b733a313a2263223b693a33353533343735313b7d693a32303b613a323a7b733a313a2274223b693a313438393838313630303b733a313a2263223b693a33343339303734333b7d693a32313b613a323a7b733a313a2274223b693a313438393936383030303b733a313a2263223b693a33333336343533343b7d693a32323b613a323a7b733a313a2274223b693a313439303035343430303b733a313a2263223b693a32383631383930353b7d693a32333b613a323a7b733a313a2274223b693a313439303134303830303b733a313a2263223b693a32363733363333353b7d693a32343b613a323a7b733a313a2274223b693a313439303232373230303b733a313a2263223b693a33353437353139383b7d693a32353b613a323a7b733a313a2274223b693a313439303331333630303b733a313a2263223b693a33363331373037363b7d693a32363b613a323a7b733a313a2274223b693a313439303430303030303b733a313a2263223b693a32393634363830323b7d693a32373b613a323a7b733a313a2274223b693a313439303438363430303b733a313a2263223b693a33313237323939323b7d693a32383b613a323a7b733a313a2274223b693a313439303537323830303b733a313a2263223b693a33343734343231323b7d693a32393b613a323a7b733a313a2274223b693a313439303635393230303b733a313a2263223b693a33383935333735333b7d7d7d733a393a22636f756e7472696573223b613a313a7b733a323a223764223b613a31303a7b693a303b613a323a7b733a323a226364223b733a323a225255223b733a323a226374223b693a33353036313834303b7d693a313b613a323a7b733a323a226364223b733a323a225553223b733a323a226374223b693a33313937373738363b7d693a323b613a323a7b733a323a226364223b733a323a225541223b733a323a226374223b693a32333337373535333b7d693a333b613a323a7b733a323a226364223b733a323a22494e223b733a323a226374223b693a31323739393939343b7d693a343b613a323a7b733a323a226364223b733a323a225452223b733a323a226374223b693a31313931333435313b7d693a353b613a323a7b733a323a226364223b733a323a224652223b733a323a226374223b693a393235303831353b7d693a363b613a323a7b733a323a226364223b733a323a224252223b733a323a226374223b693a363834323538373b7d693a373b613a323a7b733a323a226364223b733a323a22434e223b733a323a226374223b693a353531363831383b7d693a383b613a323a7b733a323a226364223b733a323a225048223b733a323a226374223b693a343638353834303b7d693a393b613a323a7b733a323a226364223b733a323a224742223b733a323a226374223b693a343434323034393b7d7d7d7d, 'yes'),
('vulnRegex', 0x2f283f3a776f726466656e63655f746573745f76756c6e5f6d617463687c5c2f74696d7468756d625c2e7068707c5c2f7468756d625c2e7068707c5c2f7468756d62735c2e7068707c5c2f7468756d626e61696c5c2e7068707c5c2f7468756d626e61696c735c2e7068707c5c2f7468756d6e61696c735c2e7068707c5c2f63726f707065725c2e7068707c5c2f70696373697a655c2e7068707c5c2f726573697a65725c2e7068707c636f6e6e6563746f72735c2f75706c6f6164746573745c2e68746d6c7c636f6e6e6563746f72735c2f746573745c2e68746d6c7c6d696e676c65666f72756d616374696f6e7c75706c6f61646966795c2e7068707c616c6c7765626d656e75732d776f726470726573732d6d656e752d706c7567696e7c77702d6379636c652d706c61796c6973747c636f756e742d7065722d6461797c77702d6175746f796f75747562657c7061792d776974682d74776565747c636f6d6d656e742d726174696e675c2f636b2d70726f636573736b61726d615c2e706870292f69, 'yes'),
('totalIPsBlocked', 0x33, 'yes'),
('total503s', 0x33, 'yes'),
('totalLogins', 0x32, 'yes'),
('lastAdminLogin', 0x613a363a7b733a363a22757365724944223b693a313b733a383a22757365726e616d65223b733a353a22566564494e223b733a393a2266697273744e616d65223b733a303a22223b733a383a226c6173744e616d65223b733a303a22223b733a343a2274696d65223b733a32373a225475652032317374204d6172636820402030373a30303a3437414d223b733a323a224950223b733a31343a223132322e3136382e3232312e3231223b7d, 'yes'),
('totalAlertsSent', 0x32, 'yes'),
('lastEmailHash', 0x313439303037393634383a3338303632346333343330363635323634393430373735643137316565316361, 'yes'),
('vulnerabilities_plugin', 0x613a343a7b693a303b613a343a7b733a343a22736c7567223b733a31343a22636f6e746163742d666f726d2d37223b733a393a22746f56657273696f6e223b733a333a22342e37223b733a31313a2266726f6d56657273696f6e223b733a353a22342e362e31223b733a31303a2276756c6e657261626c65223b623a303b7d693a313b613a343a7b733a343a22736c7567223b733a31393a22637573746f6d2d706f73742d747970652d7569223b733a393a22746f56657273696f6e223b733a353a22312e352e33223b733a31313a2266726f6d56657273696f6e223b733a353a22312e352e32223b733a31303a2276756c6e657261626c65223b623a303b7d693a323b613a343a7b733a343a22736c7567223b733a31343a22616e6b2d676f6f676c652d6d6170223b733a393a22746f56657273696f6e223b733a353a22322e352e30223b733a31313a2266726f6d56657273696f6e223b733a353a22322e342e30223b733a31303a2276756c6e657261626c65223b623a303b7d693a333b613a343a7b733a343a22736c7567223b733a393a22776f726466656e6365223b733a393a22746f56657273696f6e223b733a353a22362e332e35223b733a31313a2266726f6d56657273696f6e223b733a353a22362e332e32223b733a31303a2276756c6e657261626c65223b623a303b7d7d, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfCrawlers`
--

CREATE TABLE IF NOT EXISTS `vi_wfCrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  `PTR` varchar(255) DEFAULT '',
  PRIMARY KEY (`IP`,`patternSig`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vi_wfCrawlers`
--

INSERT INTO `vi_wfCrawlers` (`IP`, `patternSig`, `status`, `lastUpdate`, `PTR`) VALUES
('\0\0\0\0\0\0\0\0\0\0��B�BD', '�����>�b0�oQ1��', 'verified', 1490840838, 'crawl-66-249-66-68.googlebot.com'),
('\0\0\0\0\0\0\0\0\0\0��B�B~', '�����>�b0�oQ1��', 'verified', 1490840841, 'crawl-66-249-66-126.googlebot.com');

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfFileMods`
--

CREATE TABLE IF NOT EXISTS `vi_wfFileMods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `knownFile` tinyint(3) unsigned NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  PRIMARY KEY (`filenameMD5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vi_wfFileMods`
--

INSERT INTO `vi_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('��\0���+OW+�', 'index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�%0;��s��Dm\\�:['),
('���[�/�9}�`:w�P', 'license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r4ȱv�%�������'),
('a�?��_�ˢ��6j��X', 'readme.html', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����R�.����3'),
('3Y�#��6r\n�Yp�$��', 'wordfence-waf.php', 0, '*d\n���''G������#�', '*d\n���''G������#�'),
('���K�g���o#�0', 'wp-activate.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{��<,�hH��������'),
('-��)7�5y�8c��Wv�', 'wp-admin/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ł�f��g����:'),
('X��H奥(�:�Z�', 'wp-admin/admin-ajax.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��T��F�XI�l�'),
('!1b݅9��*���\\��', 'wp-admin/admin-footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7��^�{��(�n�X'),
('�KU�g0MU�/��ʇ', 'wp-admin/admin-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�F��$�s:�9�m%aF'),
('@�m����O��W', 'wp-admin/admin-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't��9��RX�#ӏ�'),
('�]��@�\n��>ĺ�Yn', 'wp-admin/admin-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>�[s��+����,h'),
('���,H(b�_F�O', 'wp-admin/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E|*�hO(��l���'),
('	X�t\\4vNI5��j��', 'wp-admin/async-upload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2�ƃDB��|<��SH�'),
('"��6\r+K{�\Z!a', 'wp-admin/comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '׏�-o�̦�l�mx���'),
('kM�������̙Ysp', 'wp-admin/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���b�:�7��ъ<l��'),
('�*O-�Lτ���\r[�u', 'wp-admin/css/about-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�h�$7�Ų{H��c'),
('U�nɓb4lZ,I', 'wp-admin/css/about-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��88Mh�s)�}��o'),
('�A7�''�C#�w�S�s�', 'wp-admin/css/about.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\��f K��;�;�'),
('�J���!2���\0����', 'wp-admin/css/about.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�!)�a\n��ڸL´.L'),
('�m��n9�F�6�', 'wp-admin/css/admin-menu-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M���''L���	�İk�h'),
('T�]\\g���4źuP�;', 'wp-admin/css/admin-menu-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x4�V�{͛aXʾ���'),
('��"�Z0\0ؿe�Ԧp�', 'wp-admin/css/admin-menu.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^I\Z����$H�Pޕ�'),
('�E58��y���Ws�O��', 'wp-admin/css/admin-menu.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V�''.���=]?��*w�'),
('���P��a`Xu', 'wp-admin/css/color-picker-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�u��US�b���>�K�'),
('�r�W�3���᥾V', 'wp-admin/css/color-picker-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i�����Ovfs���JB�'),
('F���?�C;$��H\r\r', 'wp-admin/css/color-picker.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\r���m@.f��J�'),
('��ܡ9�u_\\\n�9�''', 'wp-admin/css/color-picker.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�J���\Z��/K|'),
('�J|6}�P�,\rٛ', 'wp-admin/css/colors/_admin.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� ���2	�9Gn�\0�X8'),
('ue�,"\n	�h�g.', 'wp-admin/css/colors/_mixins.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ZR������_-���'),
('��=CѠ��*TX���4', 'wp-admin/css/colors/_variables.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':�	k\Z	r�L���Z'),
('58�d�`S61K>ۮ�v', 'wp-admin/css/colors/blue/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '֔��c"�;(Jkq�_�'),
('D�8hFޛBViR�', 'wp-admin/css/colors/blue/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�n?�?�#&�3m�]?�'),
('��F�ZY��C8��3E', 'wp-admin/css/colors/blue/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�)�ؠ$��h���'),
('tm6ۗ�q���.��=j', 'wp-admin/css/colors/blue/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�R(�7�l�3o��A��'),
('L�>t���N�����', 'wp-admin/css/colors/blue/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��5Iה�g,)Z�YM�'),
('�����juGCtO����', 'wp-admin/css/colors/coffee/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tڶ�&G�V-��Ԗ'),
('��q?%��rp��0�7�q', 'wp-admin/css/colors/coffee/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�g�z����ds�S��*'),
('ϴ 3P`#8^��Z', 'wp-admin/css/colors/coffee/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+�<C��Z�]''8c�'),
('���eC����Di!��', 'wp-admin/css/colors/coffee/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����23-��?y#�M�'),
('xIH�.�9�Y��BO', 'wp-admin/css/colors/coffee/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9~8 �z#C0�^%a�'),
('jmE��AX�uw�>܆', 'wp-admin/css/colors/ectoplasm/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	=��X�;�Ĵ��D'),
('Dչ������$Oa����', 'wp-admin/css/colors/ectoplasm/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z萤���i��2�[�'),
('�����H\0ۙ��h�C��', 'wp-admin/css/colors/ectoplasm/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�2�:�gBN����S0�'),
('[��#ܧ\Z>]��<�', 'wp-admin/css/colors/ectoplasm/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<b��[;ԉ�(̒f$'),
('�M�Tq&[?��>칊�\n', 'wp-admin/css/colors/ectoplasm/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�q�9+�"��+��'),
('�q����%ű� m+', 'wp-admin/css/colors/light/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����3����o{'),
('-�f��4]�#"u��l', 'wp-admin/css/colors/light/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�,c!Zr��ie2'),
('v�{#��l��b\0}��B', 'wp-admin/css/colors/light/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������ �#��'),
('�9(F�Rj2�n6]��', 'wp-admin/css/colors/light/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L)��$\\��P��'),
('��KS+�e׎A�@��', 'wp-admin/css/colors/light/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H��G�#��<�^o'),
('�����L?@��.~O�', 'wp-admin/css/colors/midnight/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''�M�c���$s�#�?'),
('���ᗏ�3�-��4�', 'wp-admin/css/colors/midnight/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�h��t8mg"���'),
(';�b�fȖ0����x', 'wp-admin/css/colors/midnight/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WP��cVO\0����'),
('��_\r�JL�#�@B��', 'wp-admin/css/colors/midnight/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�g��h\Z����Ѱ�('),
('��w�=Ţ�O�&�F�', 'wp-admin/css/colors/midnight/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&܍���|DW��!E�4'),
('�<��(����*A]�O�', 'wp-admin/css/colors/ocean/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r���|U����UA����'),
('����{^��W����C�', 'wp-admin/css/colors/ocean/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��̿�3$�s$�(���'),
('�Ê5ff�;,G!''��''-', 'wp-admin/css/colors/ocean/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':Q��H=wu|�#fQA{'),
('�*T�u\r�����~�m', 'wp-admin/css/colors/ocean/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm�c���^G�#i��v'),
('-����Ǹ�%w=��', 'wp-admin/css/colors/ocean/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z|[���l�|ٱf%h'),
('j׻���q.�*;��2', 'wp-admin/css/colors/sunrise/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��F�\\�Xe.� �k'),
('2j�L,���W\r��W$��', 'wp-admin/css/colors/sunrise/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�q�R~�d�_�ƃ6��'),
('�����y85���æb�', 'wp-admin/css/colors/sunrise/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6�1��ˢ�ֲ��I'),
('�-�+�e���m�u"��x', 'wp-admin/css/colors/sunrise/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Yb��X�,Y�c�`��('),
('��S�CRC��l��', 'wp-admin/css/colors/sunrise/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V��\Z�z�	h���=�'),
('��W2��D��G�7�V', 'wp-admin/css/common-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���k�tx����;�<'),
('���X����H�o�v�', 'wp-admin/css/common-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W��1�M��j�!��'),
('��p��9�6è�R�', 'wp-admin/css/common.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��+m�`����a#�-'),
('\r�vN��[B��&��SL', 'wp-admin/css/common.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x<��%��1��~�\n'),
('��V��k9۴�s���ֿ', 'wp-admin/css/customize-controls-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���{��>(w)H�\Z'),
('����p�j֛`��w', 'wp-admin/css/customize-controls-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����c����e��'),
('�?�\n5��H�?������', 'wp-admin/css/customize-controls.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1�I�M���+�VA�?��'),
('�.ն���Zg{�=��', 'wp-admin/css/customize-controls.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�2鍯Ѱ��C-H�'),
('O�����y ��k	b�', 'wp-admin/css/customize-nav-menus-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�3�FЎ6.�����B�'),
('HA���f�,���$F-�', 'wp-admin/css/customize-nav-menus-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n�_�W��[}��}���'),
('A�lA~i^����u�Ø', 'wp-admin/css/customize-nav-menus.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';\ZT��O�W|&�;{V'),
('�\0�]�p��ޑ�	\rG', 'wp-admin/css/customize-nav-menus.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P9*�J�FsU�D�'),
('N���HV����}�4G', 'wp-admin/css/customize-widgets-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}ҧ�(^`{�1SO���'),
('��4T�(�\\9''��3�)', 'wp-admin/css/customize-widgets-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�`5��(c����93V/�'),
('�������6$[���O�', 'wp-admin/css/customize-widgets.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I�c�\rl�j�_pSa�'),
('��b�������|e~�', 'wp-admin/css/customize-widgets.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���S;���Q��++.I�'),
('5�?��y��<�2�', 'wp-admin/css/dashboard-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������]@��V��'),
('�M��s�;'',���-E', 'wp-admin/css/dashboard-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��K�C�b\n\Z��)�T6'),
('����KqM���{���', 'wp-admin/css/dashboard.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\nJ,��<��RE�'),
('�+���.���eF��', 'wp-admin/css/dashboard.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����0=�Q"����'),
('8�@)��6yg[y�sQR', 'wp-admin/css/deprecated-media-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��I�+Z�Ot�E�v'),
('�pt_ Y����7L�Kt', 'wp-admin/css/deprecated-media-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[�+q5\\�ʖV'),
('���X"�-{��$48sx', 'wp-admin/css/deprecated-media.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"W�*�ׁq���Y4^�'),
('4a��[I�}���H�m)', 'wp-admin/css/deprecated-media.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�̀0뚀o/������|'),
(']�����"}[�Y�R�', 'wp-admin/css/edit-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oH�jE9>������j%'),
('�B�H*mz��N83��', 'wp-admin/css/edit-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�+�/=!���8Z����'),
('\r��:�:���HH�:d', 'wp-admin/css/edit.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	�>b�;��.����'),
('��,�o�!�z�j"�', 'wp-admin/css/edit.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6��I��epNh�d�c'),
('6;I(�H�m�%��f�', 'wp-admin/css/farbtastic-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����q�@!!�Ek�'),
('�O�X��g]<f@�', 'wp-admin/css/farbtastic-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z�L	czG�0~l0W��'),
('�«��-j=�u�N\\q''', 'wp-admin/css/farbtastic.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��8)���}{��C�h2U'),
('K�nҋD&sR�WU(�', 'wp-admin/css/farbtastic.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0�i��)�3\\۸�/�;'),
('OlqCcێ���������', 'wp-admin/css/forms-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_U�4J��D��@��mF'),
('��{�]\\ֵ�	��d��', 'wp-admin/css/forms-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~�ĥ�$	�2CT''�:'),
('����(���%�#�9yn', 'wp-admin/css/forms.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p�d=q7���t���Ei'),
('łj�Dߋ�.�˖D��', 'wp-admin/css/forms.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����;�a���]��'),
('�������kM��?�uX', 'wp-admin/css/ie-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�y�\0}v�(5���/R'),
('vs�%�z�����F�', 'wp-admin/css/ie-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')b�$�9n�m����'),
('E�&��VN���"N', 'wp-admin/css/ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�k�<��\Z+D�0�of��'),
('ѧ�_�4a!�F��', 'wp-admin/css/ie.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':��6�F��A7!��'),
('�w�9=�_"h%��v', 'wp-admin/css/install-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��(c(8n���ޚ�'),
('i�-��X�8V[~E�', 'wp-admin/css/install-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����:KӤ�s��ܫ��'),
('<��9�u�j����!�$', 'wp-admin/css/install.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���B��q��\n%R~�1R'),
('���ʆ��n�D㮖�(', 'wp-admin/css/install.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�X�M	9\n�=Ǹ	L��'),
('��''-�p�-���f�', 'wp-admin/css/l10n-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i�R{峪,D�_��J�'),
('vâ,\\�+Q�����֧', 'wp-admin/css/l10n-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9^����y2=�F���'),
('�����2D�i�e�', 'wp-admin/css/l10n.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ĸ�P)�|��q�r���'),
('�H��4�.\\�:��#��', 'wp-admin/css/l10n.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Uֵ}� ف��0�m2n'),
('�y%���Ǻ~�ne"V', 'wp-admin/css/list-tables-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tk#͕Zq�{��B�'),
('�F�%��C��0����,', 'wp-admin/css/list-tables-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p:j �1@t%d��x=ut'),
('|j��x7�(Q}�0�''�', 'wp-admin/css/list-tables.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B�qIȿ�{�S	\ZT\n'),
('�kLN\0��x6@', 'wp-admin/css/list-tables.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y�>s�+���\n���`s'),
('A{&� ��V>��Νs', 'wp-admin/css/login-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��K;Po���\\�`�'),
('h@Z�%�R�F�;ti\\m', 'wp-admin/css/login-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''0�3ǡ�B���Y		"'),
('���|�jX����|�fb', 'wp-admin/css/login.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '銡��O��+��V��bb'),
('`�&��锥~K3/d', 'wp-admin/css/login.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y��h8����}WT?'),
('r��\n��b��#��', 'wp-admin/css/media-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����[T�ڜ�+��'),
('�zݿ�&X❙6���s', 'wp-admin/css/media-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�	��g]	�OH���'),
('����T��D��F�K1�', 'wp-admin/css/media.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H�����9�i(mjp�H'),
('%�Pb.���8�Gd�t�', 'wp-admin/css/media.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1��v}�`�<�O�J�'),
('\Z�y��8R#O�y��', 'wp-admin/css/nav-menus-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c�d���h�H��~�˔�'),
('D�� �2��K|&�', 'wp-admin/css/nav-menus-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[3äF���;@�]�'),
('���qh�n�J�j�', 'wp-admin/css/nav-menus.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_ƫ�^(���sY�o�'),
('�Z��Wt�p�N�h', 'wp-admin/css/nav-menus.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�6�S�2�ꁇO#"F�'''),
('�.�B�|xӳ��E�', 'wp-admin/css/press-this-editor-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FM�H�v�7�\ryd��'),
('&���X�B`]"?װ�\Z', 'wp-admin/css/press-this-editor-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=��y�����ͣ8�|'),
('�"j�ǧ`�����1�', 'wp-admin/css/press-this-editor.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�AF7!���mKM�xf'),
('|1��QA�����E�`1', 'wp-admin/css/press-this-editor.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',�4L�7�b%2Yj��_'),
('��H�Mz�@�A��', 'wp-admin/css/press-this-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��.9�|T�~�����'),
('� �(T5!��h�u', 'wp-admin/css/press-this-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_�f�^�g��\0#'),
('�F|\n�MN,8�ݪ�''�', 'wp-admin/css/press-this.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g\r�y����b^�F��'),
('.Z{=U�uߩAJ��*', 'wp-admin/css/press-this.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��F秠�2�& '),
('�Ph�����rV�', 'wp-admin/css/revisions-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'һ���u/ً�B2E��'),
('@�t�R>G�Hh��ס', 'wp-admin/css/revisions-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ǝ�����Mq��O�'),
('� a"KwT�bc1S', 'wp-admin/css/revisions.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#�z�B�a{���6'),
('\n�Gƙn��\Z@1+U]�', 'wp-admin/css/revisions.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}�0N�w�k��{���P'),
('��0r�H"�YK]T�', 'wp-admin/css/site-icon-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� b�ɹVbPP�9'),
('���Q��Ws�A7d\n', 'wp-admin/css/site-icon-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R��b\0{����q�\n'),
('''=!Za��a���jU�Q', 'wp-admin/css/site-icon.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�|�U-�ͥ��<N�� '),
('��n&���n�!崬�', 'wp-admin/css/site-icon.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f�3b��mɇGd��H�q'),
('����g�~�w\Z�hh', 'wp-admin/css/themes-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�E�D��Ť�I8��1�'),
('��5��At߂�m0i�z�', 'wp-admin/css/themes-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F���pDX�2L_s��:'),
('�R���ш�޿�0', 'wp-admin/css/themes.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����-NT�\\RN�'),
('���fSu�B�ͥ?^yO', 'wp-admin/css/themes.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h���6FkY�`U�'),
('���3v�U�\Z3�P�^O ', 'wp-admin/css/widgets-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R""�2�+�}��V��Q'),
('s�E�Ξq�p�B���', 'wp-admin/css/widgets-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V��8�gB�\0Ig�'),
('�!HUN&�"����z��', 'wp-admin/css/widgets.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S����^�sH��>y�U'),
('E�}�~��M��-�]�a', 'wp-admin/css/widgets.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����)�����k��'),
('��֗]NR���S{qv?�', 'wp-admin/css/wp-admin-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't�������fo�,i�s�'),
('���$(�g�(���P��/', 'wp-admin/css/wp-admin-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ݚ��*��7"G�Ū�'),
('d�4�j�2U�V��$�P', 'wp-admin/css/wp-admin.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�佐5\0���!��*['),
('��j0���w�E}®R�', 'wp-admin/css/wp-admin.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���v&�o��0l\Z��'),
('��?�0|���5uơ��', 'wp-admin/custom-background.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#�Y7���`���\Z�N'),
('u�qg\Z\0�8�hԭ�\0�', 'wp-admin/custom-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��C\n��a�F���'),
('�;?2��S��\0��p', 'wp-admin/customize.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S$ϣ��u� ,��=4D�'),
('��p?E^�@�''��PE�', 'wp-admin/edit-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���:E>�ݸPR)�T�'),
('�\r�b\\��ɍ�\Z��', 'wp-admin/edit-form-advanced.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���EХ�g��kc�@'),
('G�7\Z��I&:�x', 'wp-admin/edit-form-comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1���e���1�"�X�'),
('\n���b-�V�:��|m��', 'wp-admin/edit-link-form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�i�[�<5��.�'),
('%����8^�V<�t�', 'wp-admin/edit-tag-form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�d��G:$�8�Ye�'),
('��h���)UG@�x��v	', 'wp-admin/edit-tags.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��9�b�C�\\�_=�|��'),
('Y�La���h�(', 'wp-admin/edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U74I�# �x���+��'),
('��1���|�}���dQ', 'wp-admin/export.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���߯��FD�\0K���'),
('O����&�r�蓏�� ', 'wp-admin/freedoms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�õsϺ�6qH�D9��#'),
('��W���"���Sk:�', 'wp-admin/images/align-center-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���-�r�5*J7�If'),
('&*���dĆָ�	�H5', 'wp-admin/images/align-center.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	�\Zݶ�4y�dY1�e�'),
('�V9��K���goX��7�', 'wp-admin/images/align-left-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i�8�O�����^��c'),
('��m�Mt���W�B', 'wp-admin/images/align-left.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\�y0��d�Z�o.h��'),
('�].�oo�ȦM-n	�', 'wp-admin/images/align-none-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�XC�)[���-�4�'),
('MW�	���:��ي', 'wp-admin/images/align-none.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�eqd2���u����\r'),
('v�G�.�g�A��#�r�', 'wp-admin/images/align-right-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h�l�>r�]�lW��x'),
('��tnR�ؔ����%^�', 'wp-admin/images/align-right.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B���Oe#�l@:P+"v'),
('�[���QH"pS1Ȫ�c', 'wp-admin/images/arrows-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� Q��}��ydb#6�'),
('�E#l��L��_&ܪ���', 'wp-admin/images/arrows.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�v�$�>����>�Y'),
('�DS���3.įy}�;', 'wp-admin/images/browser-rtl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D"��ӠA�\Z����%̝'),
('������H�06�', 'wp-admin/images/browser.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����K\\�b�$�F'),
('G�9q���=ʥ[3?a�', 'wp-admin/images/bubble_bg-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R=[����;��c��'),
('QuoPX��\0��Sڞ', 'wp-admin/images/bubble_bg.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=,����(��\Z2cV� 8'),
('��Lt593�u^���)��', 'wp-admin/images/comment-grey-bubble-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�TY�ŝ2�s,\r�m��'),
('���e�bW�A0�d', 'wp-admin/images/comment-grey-bubble.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Y�*''����t���F'),
('�I��\\j���x���g', 'wp-admin/images/date-button-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')R�,$k���)6C��c'),
('��a��''@T瑓����', 'wp-admin/images/date-button.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���.��I��V�ď�'),
('�j%M�ɍ��p)Z��', 'wp-admin/images/generic.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����''�[#98!�'),
('�\Z{g��?�3gڢ\Z�', 'wp-admin/images/icons32-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�%�*�����g����'),
('���&��N�,���6P', 'wp-admin/images/icons32-vs-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�*04�G4F�	&Z�i}"'),
('��L �U����f��u�<', 'wp-admin/images/icons32-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',�P*���{>v��Uf'),
('�1��WV(2��6����', 'wp-admin/images/icons32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�۬[�m9��J�4�\Z�'),
('L����8���\\�ݼ+', 'wp-admin/images/imgedit-icons-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',��''��6U�������t'),
('{���?����\r��\n''', 'wp-admin/images/imgedit-icons.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K�\\2���}�G�i;O'),
('�4g��e���>���ߝ', 'wp-admin/images/list-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hջIS�2��i�g�'),
('��Z\nu�oK� ��T;e', 'wp-admin/images/list.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>��*��ӳ�S��'),
(')�M��^�ûoz�', 'wp-admin/images/loading.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-[��t�P���d�'),
('�\0��%3[$x\0��.��(', 'wp-admin/images/marker.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3�*O2/�3I2���'),
('@�;5�X��V��O�Z', 'wp-admin/images/mask.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���g~�"��J��䩎�'),
('@�s�Z��^����q�v', 'wp-admin/images/media-button-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#�WI��\\��?��'),
('1�EfQ�v#)�\n�0EkQ', 'wp-admin/images/media-button-image.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~���WÎ�@��b�rճ'),
('a\\c,I"5T��#̋�', 'wp-admin/images/media-button-music.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��]�2\\Z�/��ޕ'),
('NQ�"*hz�r�w|\Z�', 'wp-admin/images/media-button-other.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ƴk�|��,O�"�'),
('�����)z]!?��a�', 'wp-admin/images/media-button-video.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������r�x�4Q���'),
('a)�TMW�Oo��Q�|�', 'wp-admin/images/media-button.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����6@p�z^ye��'),
('"��N߬jj)��\0��N', 'wp-admin/images/menu-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jG�����{�>�^;$��'),
('* a�F���4��u�vU', 'wp-admin/images/menu-vs-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J�ZY<�i�Y��b�'),
('t]�ٟu��u���j�', 'wp-admin/images/menu-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q���L�,_�;1/�E�'),
('@�XD\n�\nRN��t���', 'wp-admin/images/menu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\r�9#�d�Y`	���'),
('�F �8�+�)��r�P�', 'wp-admin/images/no.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�k�d�$��ܟV7���'),
('��+D�FܿTZ[H7', 'wp-admin/images/post-formats-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��S�l��H\\�������'),
('�\0��וoxi3%\r+]kg', 'wp-admin/images/post-formats.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�K���\0���%3���'),
('n]�j7<3ISsQ�', 'wp-admin/images/post-formats32-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�t.E���5G�N\Z��v'),
('�œ���ϔ�=��#6', 'wp-admin/images/post-formats32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WY~�O��{�+_L�kE;'),
('�?{o_���''�n�', 'wp-admin/images/resize-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��e?�&h.��\n��'),
('�3!9�=�6�ݡ', 'wp-admin/images/resize-rtl-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ɞ�@��T0:��}'),
('�I�{�?��r�]��7', 'wp-admin/images/resize-rtl.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ےc�ZY�6��'),
('~?�J�I�b*׺�e�C', 'wp-admin/images/resize.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?�D�$�\r�Xv����a'),
('\nf���Y��4&�L�', 'wp-admin/images/se.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ȔB�`��.}''7:'),
('X�:8+˓2>V]��8�', 'wp-admin/images/sort-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nQ&�] �0�-����'),
('�[6�5��+�	�n9�', 'wp-admin/images/sort.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.�ˍ���lHj�]'),
('�J�&_#��3S�q���', 'wp-admin/images/spinner-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\q��9)hdxR���]l'),
('�f�i�`�=@T��o�', 'wp-admin/images/spinner.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����1c~''�dv�vHq'),
('P�1$���\\*�C', 'wp-admin/images/stars-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��A���#�S�Me.^'),
('�F�j!Y�{.J=,��', 'wp-admin/images/stars.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[����><�k�{��(�'),
('Vrm�KE�p�j��6�', 'wp-admin/images/w-logo-blue.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[N�W��_p�w�0'),
('Jf�3?���_r�C�', 'wp-admin/images/w-logo-white.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n���Jvۢ~�y�\\�'),
('�+���g���q6�^\0�', 'wp-admin/images/wheel.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E0� q0m��\ZY%V�X�'),
('�%��\\��MA�����', 'wp-admin/images/wordpress-logo-white.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��qP�C��-SPD��'),
('tZQ��Yz0����跫', 'wp-admin/images/wordpress-logo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ư�y��o�8��8S�`�'),
('�c"ml� �Ǟ>o', 'wp-admin/images/wordpress-logo.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�N�%�d���g���p'),
('��ں�u���M���[\r', 'wp-admin/images/wpspin_light-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}�3��Y�(�I��m'),
('"w%�_��K\\��u�', 'wp-admin/images/wpspin_light.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Nm�h����;\Z@��'),
('��<l�a��,�bX,��', 'wp-admin/images/xit-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��r�T��`��?J�/�'),
('��m���z4�L��K', 'wp-admin/images/xit.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�)�X��`1���H��'),
('�M&�3\r��3CMaQ{', 'wp-admin/images/yes.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�+��7܉�\rqZ�Qk'),
('��T��V�����\\��', 'wp-admin/import.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���Z�b��=r�~'),
('ĳJ�\n`|�5,HT��', 'wp-admin/includes/admin-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\r�m|��>{���r'),
('D����)ba�k��{��', 'wp-admin/includes/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\{�z�iP����\Zq�'),
('Ҫ*���H���\n;t��', 'wp-admin/includes/ajax-actions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���rN��;� '),
('��ΝH�*��*.ځS', 'wp-admin/includes/bookmark.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^Y��\r�\\.����'),
('"�w��h����', 'wp-admin/includes/class-automatic-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ў��W&��L�6��'),
('n�к���v�nj=ͮ', 'wp-admin/includes/class-bulk-plugin-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_�qp{��[W$&6Q'),
(' ''���_U;0�/<�', 'wp-admin/includes/class-bulk-theme-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ALc.��G�@�m�\Z'),
('W7��{(��;:P���?', 'wp-admin/includes/class-bulk-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*oc|�\n�=��?W�]YG'),
('�j��U�U�X\Z��/J/', 'wp-admin/includes/class-core-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2#��#+�K����Tڞ'),
('�M\0���c������_d�', 'wp-admin/includes/class-file-upload-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��9��l��qj|w�'),
('�:8�Ia��øl�m', 'wp-admin/includes/class-ftp-pure.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B�bE��E�>��R'),
('�afh=F���T�:��6�', 'wp-admin/includes/class-ftp-sockets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l�9�U+E���X�+�'),
('���rp.u�3zx�', 'wp-admin/includes/class-ftp.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ɾ�&_���sd�rjz.'),
('��:��X��@\0{*�֯�', 'wp-admin/includes/class-language-pack-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��/$o��t���3�'),
('g��~)�~�s�ʞ��I', 'wp-admin/includes/class-language-pack-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(���<H�Ǽ�^���'),
('�"�ơ���7vs+�', 'wp-admin/includes/class-pclzip.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y�И�υ����WYp�'),
('W&�ִ �)+�ڱ���', 'wp-admin/includes/class-plugin-installer-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��S7۔� G���'),
('�h/͔��j�C�\0�n', 'wp-admin/includes/class-plugin-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']���''��M�e�''Q�'),
('v�)F��~q���?b', 'wp-admin/includes/class-plugin-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����c��p��''��$'),
('��s��I�qF�����', 'wp-admin/includes/class-theme-installer-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Id����aQv����S'),
('H`�\\� �r���Y�C', 'wp-admin/includes/class-theme-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���|p���^`L\\�'),
('�3��aD�w�P����q', 'wp-admin/includes/class-theme-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�D��	�''�8{�w_sa'),
('{y"�ҵ��ݩ�{���', 'wp-admin/includes/class-walker-category-checklist.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�J_��e�q�_5'),
('��Qs|�c�L؜VH�)', 'wp-admin/includes/class-walker-nav-menu-checklist.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���������n�'),
('ر�-�_}Z�h��\n�\Z', 'wp-admin/includes/class-walker-nav-menu-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�!��ܛ�S�P�,�'),
('��!��y��F��]���', 'wp-admin/includes/class-wp-ajax-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�E�2w��X�z�����'),
('�Z�\ZaYH\0 �5�~ ', 'wp-admin/includes/class-wp-automatic-updater.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�	o=�/B�#�*o���'),
('���Ye�.�0s��', 'wp-admin/includes/class-wp-comments-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��2Z�c|\ZPF\r`�['),
('�%�f\\+,���\0\\Y', 'wp-admin/includes/class-wp-filesystem-base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1�\n�?@�m�=���'),
('�hFM<@`%q-��', 'wp-admin/includes/class-wp-filesystem-direct.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Tx(�>���\0����'),
('6̠,��_���q���u�', 'wp-admin/includes/class-wp-filesystem-ftpext.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��4�~A''s��.�ߧ'),
('����PQ�E|E}7+', 'wp-admin/includes/class-wp-filesystem-ftpsockets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/F���H�\0!�k'),
('����j(g��~jU#��', 'wp-admin/includes/class-wp-filesystem-ssh2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��``�s�� �D\Z��'),
('v]�z������3�tB', 'wp-admin/includes/class-wp-importer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',w���	_����/JS;'),
('����v�A\nGr�3C9`', 'wp-admin/includes/class-wp-internal-pointers.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�I��Nt�#S�#A��'),
('_�(�C���M6�9�', 'wp-admin/includes/class-wp-links-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n�xҲ����k긝6_y'),
('��Ud��M���S$�l', 'wp-admin/includes/class-wp-list-table-compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ř"┳4�JO�C��('),
('O	��S����#��Yi�v', 'wp-admin/includes/class-wp-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����V\\b''�kdQzt\Z'),
('�Vb(kt�W"�6(;ƴ�', 'wp-admin/includes/class-wp-media-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'C87�k�_������8�'),
('�������sp���e�', 'wp-admin/includes/class-wp-ms-sites-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P�V�,*��j'),
('�w����V���!�', 'wp-admin/includes/class-wp-ms-themes-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q�{�\n���~4''��'),
('��i)33ܥ��s�*', 'wp-admin/includes/class-wp-ms-users-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\��e�~ne͡y�\n)'),
('e.PȴNB�Sx[�&��', 'wp-admin/includes/class-wp-plugin-install-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\nO��y��''�O��s'),
('�����[��:�����q', 'wp-admin/includes/class-wp-plugins-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*x`��W�Z{YCjI��'),
('c�4L]�˞��Mc', 'wp-admin/includes/class-wp-post-comments-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\4�Z����eN]%�D'),
('�Gȩ��6����\0Y', 'wp-admin/includes/class-wp-posts-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^_��Q�)\Z�5Ec'),
('���<��p\Zo@S�q��', 'wp-admin/includes/class-wp-press-this.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' mq�F`X�|t��@��'),
('TM�����l������', 'wp-admin/includes/class-wp-screen.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i�0b2�O$��?��'),
('''M��w�񑍷���\rKj', 'wp-admin/includes/class-wp-site-icon.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������X"�q!�|�'),
('L#��/۰*��3���\r', 'wp-admin/includes/class-wp-terms-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'OJ��_;N��8+�'),
('�"ڕK[@�G����9�', 'wp-admin/includes/class-wp-theme-install-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'aR\\z��y�4>���,,'),
('"IFn����@�a�}�9', 'wp-admin/includes/class-wp-themes-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o��|M�i*m��#/�8'),
('�=@\\�JpQ�m\\��6', 'wp-admin/includes/class-wp-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''�6\rO�V^���W��'),
('z����JX�w{!\rF���', 'wp-admin/includes/class-wp-upgrader-skins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�?��HZ�����vU'),
('X���G������z�X', 'wp-admin/includes/class-wp-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"��+cy�:����'),
('����x8[!>�X', 'wp-admin/includes/class-wp-users-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Lf�wޥ1%��~'),
('|�&;�r�Ls5��', 'wp-admin/includes/comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'З���O�>����\rX'),
('3k��oW�5	k[mq', 'wp-admin/includes/continents-cities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D�q.OB��6�\n�f�'),
('���<�	�f%�n�O�', 'wp-admin/includes/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}Tj\Z*�Ȑ��֌�K"'),
('\\�т�?$�̈́8����', 'wp-admin/includes/dashboard.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f��!O|���{�/5'),
('�?��E_�)�xڅ$��', 'wp-admin/includes/deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��0r�>U"}��X'),
('��x[�e��>M�', 'wp-admin/includes/edit-tag-messages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�*��y���d��|�'),
('��>�A�B�7�Sz!�e', 'wp-admin/includes/export.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u�{�<�\\�/d��]'),
('QT���*�f�P��.�', 'wp-admin/includes/file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?Y�$?LRFʎ����b'),
('��7��E#�wŧj���', 'wp-admin/includes/image-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�h�d��˝"�F�=�'),
('\0�|9��u�e���@��', 'wp-admin/includes/image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}O�FN�=��]�w"|v'),
('�A�h)I�\Z]Gr���E', 'wp-admin/includes/import.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����2����J$g'),
('�c��wk�(���4�3�', 'wp-admin/includes/list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N|(̨�F%!����o'),
('�R��=��*�d��n�', 'wp-admin/includes/media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}''y�(N��g:�\ZF�'),
('�\n�qo�qZVyX��9', 'wp-admin/includes/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�l2��ql�m+�?L�v'),
('Hý��i�Z�U,H�L', 'wp-admin/includes/meta-boxes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/�Str��?\r��i�w��'),
('�1�eU��MV��^��', 'wp-admin/includes/misc.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'SΣ�]/?�!�p�\Z'),
('�j�<M�Dd����4m�', 'wp-admin/includes/ms-admin-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q7�9��l;�'),
('�7*���"{��\n�K<', 'wp-admin/includes/ms-deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� ��om�ߚoµ��M'),
('f�霰f؟|h��U�L', 'wp-admin/includes/ms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�M��(�[��ڽ����'),
('(���љ����\0H<_', 'wp-admin/includes/nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<&߯n�Z�,u�4�B��'),
('V׀��''h��Ĉ+:��', 'wp-admin/includes/network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�!&V����i����'),
('w��`M��>�{���', 'wp-admin/includes/noop.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�KИ�d�԰����/��'),
(';pR9��+�qpծ', 'wp-admin/includes/options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N1;��:]�*Z��`'),
('R��|Rx/�bzn9\0*�J', 'wp-admin/includes/plugin-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���H�D\08�P��*б�'),
('q"�co���>�2Rh�]', 'wp-admin/includes/plugin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��6�9c�u''b�'),
('���5�V"�$$�_��', 'wp-admin/includes/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���(ȝ\0@)ſ=F�'),
('x�^m�]̲�/��L4vU', 'wp-admin/includes/revision.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']��k��)��ǵ��qX�'),
('ǫ�=��m�/���^', 'wp-admin/includes/schema.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���4�97$~�u2	'),
('(���v|T�— ¥�', 'wp-admin/includes/screen.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�z\0�#�l�;�!�'),
('Z����� %/�Z�z9��', 'wp-admin/includes/taxonomy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6/1�?F,�Ȫ��0�['),
('2@�j�j\0�kӲ��Ә', 'wp-admin/includes/template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���#<��sF�>�t'),
('�~��L��*�,�<:�', 'wp-admin/includes/theme-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��c�=���0�-���'),
('�]�W/>�}<8� VF�', 'wp-admin/includes/theme.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�5?��/�Fuz���ə'),
('8�R6�DH��q�-{�:`', 'wp-admin/includes/translation-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	�ZqmN�_��8!���'),
('���Uy/�*%���;', 'wp-admin/includes/update-core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rBadV����W�R��'),
('�]�.�1\rPXL�', 'wp-admin/includes/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��/<Q���+�2��'),
('����=��c�ه���', 'wp-admin/includes/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%�ٷ���e�u���(��'),
('Q� ��(;ؠ|~R8�b', 'wp-admin/includes/user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K���U�>�A-ko�9'),
('��I����.$U0]''�S_', 'wp-admin/includes/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Oل{S�0����''8'),
('��Ѻ�"�P5��^U�\Zi', 'wp-admin/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r߈f!��KC�m4Z'),
('B��j�)��q�D�S', 'wp-admin/install-helper.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dV�`����1&�\Zl'),
('�6�|;�;8�Q�4�k��', 'wp-admin/install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���#��P\Z&)r2��'),
('z;j2WD�6��[�V', 'wp-admin/js/accordion.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�?�=L�/�%NZ�\\�\n'),
('�^.�jT}�<��I��', 'wp-admin/js/accordion.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"k�I�z-V�S\r;h^X'),
('���T����Ç=w���', 'wp-admin/js/bookmarklet.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���5�j����ŕ��C'),
('~79�h�g$+�=���\\0', 'wp-admin/js/bookmarklet.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��[��mHs��$�Yp�'),
('�5����\r��k��', 'wp-admin/js/color-picker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��uj����}''j��&'),
('��H���l��{!D#�!', 'wp-admin/js/color-picker.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.:*\n\r<�>a��'),
('C�/�;)��ّ�o', 'wp-admin/js/comment.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���\0���ML�E]˜U'),
('Q������l��g�-��', 'wp-admin/js/comment.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�6�\rwġ�������'),
('w������:}V��P', 'wp-admin/js/common.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0�D��D�d�#�|-\ZT#'),
('���_f $�O<o', 'wp-admin/js/common.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���Tm�H�VOS�e\r*'),
('d��1�쵓-�;O��', 'wp-admin/js/custom-background.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���`�0F$TC�U�{��'),
('�} �yT��Z�H�cDJ', 'wp-admin/js/custom-background.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5.�P3֎���~?'),
('���C\n���U���', 'wp-admin/js/custom-header.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2�\0X���`o���uf�'),
('���nvp�e������}�', 'wp-admin/js/customize-controls.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V.��g�''����\Z�.�'),
('��dA#���*�Źo7', 'wp-admin/js/customize-controls.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�tdx=����b��D�u'),
(':D�J�$�h��ǅ\r�', 'wp-admin/js/customize-nav-menus.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�oӐ\n-،M��e_6,�'),
('HGh''��x�R���~\n', 'wp-admin/js/customize-nav-menus.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'goU�$��ii�k��r�'),
('�)["J�H��|�jk��$', 'wp-admin/js/customize-widgets.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����RU��Q��'),
('fMx���	�+9�U�', 'wp-admin/js/customize-widgets.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ṩ������\Z��B'),
('��ĸ:�,p�1��Hr', 'wp-admin/js/dashboard.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Z��ÜA�ʢ�>�5'),
('����zpKC�{\\>��', 'wp-admin/js/dashboard.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r�3��j���3Q�'),
('`%�ֽ�j��''��P��', 'wp-admin/js/edit-comments.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����פ7����h'),
('F�''�B�/�4{J�{w', 'wp-admin/js/edit-comments.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���v"[������7v�'),
('�R��5?�- S�^H��', 'wp-admin/js/editor-expand.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���OL ����߈ٵJ'),
('I�V/��6�s���', 'wp-admin/js/editor-expand.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E\0J&�;sv\Z���\\y'),
('8=�I��a�%��k�~�', 'wp-admin/js/editor.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}��$^`''��E߈'),
('�⣣�M�O����U�', 'wp-admin/js/editor.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��� �o`�av�!0�M'),
(';R�yh���RxK�\r', 'wp-admin/js/farbtastic.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:�T�2Aq]����4�'),
('��/GΞӶ[�ǜ��C', 'wp-admin/js/gallery.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xϩe�9e���m嵫�'),
('� �I�_X�����?', 'wp-admin/js/gallery.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N{%�3t�9Ze&Q�w'),
('G_bc�.,]&���', 'wp-admin/js/image-edit.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��&��1Ջ8�}�'),
('��-Z���:E�:', 'wp-admin/js/image-edit.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S(m\0>>��&�ov���'),
('�%n��Tߒ	^�gXΰ', 'wp-admin/js/inline-edit-post.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� �Y��1��f�3D��'),
('�1�o%��q�A��', 'wp-admin/js/inline-edit-post.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v˻`�VXR<���\\�'),
('�(�q�4P�}�5Oz�k', 'wp-admin/js/inline-edit-tax.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�X�R8F����#d�'),
('����p�l4[���e���', 'wp-admin/js/inline-edit-tax.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��}�_�4�\0��a['),
('�lF����c뒕�L���', 'wp-admin/js/iris.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E`d�����șn�K�'),
('i�\\����=X�h$', 'wp-admin/js/language-chooser.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	�P�V0��tJ�J'),
('����Z�\Zxcy�d��''', 'wp-admin/js/language-chooser.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h"8Jq	t���F��'),
('�QR"��@3��v�S', 'wp-admin/js/link.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�u��5ϳt�{��z�'),
('�|�#�԰#�{�����', 'wp-admin/js/link.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��F��0�;���3�%-'),
('nZ/1T:{&^�/n���', 'wp-admin/js/media-gallery.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ѐ�H�M#N5��e�q\n'),
(':���%H`!���\r�Z', 'wp-admin/js/media-gallery.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2��� Ғ�����n'),
('��^�\\�X�PvS�\\�{', 'wp-admin/js/media-upload.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��d��kTT��y_$m'),
('�el�5�s��E�úQ�', 'wp-admin/js/media-upload.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� N�=�u&M�T0�	�'),
('r�(n՞���j��b"', 'wp-admin/js/media.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Mv-�[,^�XQ\\��'),
('מ�y�7mE5���O_�', 'wp-admin/js/media.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��:ۯZZ����U�w}'),
('�� ��It13&', 'wp-admin/js/nav-menu.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���x�|P��\n����Q�'),
('�f��y���ħ�*!', 'wp-admin/js/nav-menu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r��U	���O�k��{'),
('��"\rJ\04��''i�', 'wp-admin/js/password-strength-meter.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(GWn�R����\00�N&)'),
('���Ȁ�~_q�I��S�', 'wp-admin/js/password-strength-meter.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z�t�J�+�I�����'),
('t6��O�\ra��Ȇ�f', 'wp-admin/js/plugin-install.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��+�cS���kKњ0'),
('!����Y0-z1�dm>�', 'wp-admin/js/plugin-install.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F��RE�J\r䉶�L/'),
('V�����댏$�x', 'wp-admin/js/post.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Aٚ\n����ڋ�"-�'),
('M?,5�*�����K*�f', 'wp-admin/js/post.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����C����ϖe!q'),
('P''�(���?+�z��$�', 'wp-admin/js/postbox.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��÷�����T�FS'),
('O����R�r����D�?�', 'wp-admin/js/postbox.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��''��s{����	i'),
('@b�Hf�Q�"$��S', 'wp-admin/js/press-this.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�H�\n�}x-N8�,�c)'),
('Ր(�����@��', 'wp-admin/js/press-this.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��]GX�	�����'),
('���\\��9�ѕ�F�w�', 'wp-admin/js/revisions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N�$�]>Mb��\nm*y�w'),
('�k����e<F��4', 'wp-admin/js/revisions.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�M�4���ߠ�H�.�'),
('K��W�&\0\0K�\06�G�', 'wp-admin/js/set-post-thumbnail.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+QSWm�@�~��Q'),
('T�gslF��ʞ��Ly', 'wp-admin/js/set-post-thumbnail.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����8�կ!�1z['),
('�Z/���{Lt�ծF$�', 'wp-admin/js/svg-painter.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����/�|ĩ���z�'),
('�U<�?Y,����ػ(', 'wp-admin/js/svg-painter.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���V\Z[��*q&��'),
('�G�|$p֠+(�', 'wp-admin/js/tags-box.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"@��K3L�?w�F�_�'),
('���J1��M�F��<�', 'wp-admin/js/tags-box.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��#9\ZnE�7Ȅ�<=��'),
('}\\�5�\r��$�l�W���', 'wp-admin/js/tags-suggest.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��@OG#���f���4�'),
('km�|��Kma0�"*�k', 'wp-admin/js/tags-suggest.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P#�o��ANQw馲��&'),
('{t�E~��P�A�1��', 'wp-admin/js/tags.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L�Bf�Z��<���/s'),
('�fkj��N�Uei4=%�', 'wp-admin/js/tags.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N®f6\n���"t�q�0�'),
('�#\\���/�vXR', 'wp-admin/js/theme.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��U�ײ�4�_cj�'),
('G6U�2\01R������J', 'wp-admin/js/theme.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd��ґl�)&D�_y�8'),
('+9���[BU�E�e', 'wp-admin/js/updates.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H\n���~� �=_`0���'),
('([d��������BQ��', 'wp-admin/js/updates.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>�P�{�F6/���ϖ<'),
('�����''>�[��·�', 'wp-admin/js/user-profile.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��^���=�7�Z�Z'),
('������H�S!;� �', 'wp-admin/js/user-profile.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ħd����/�OX��*k�'),
('R¥�����Le�q	�&�', 'wp-admin/js/user-suggest.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3)��()ݰ4}\n�'),
('�X��$�a��B��^', 'wp-admin/js/user-suggest.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��T\\���\\|�\r�9�'),
('RQ�b7f�� |~ۓ�(', 'wp-admin/js/widgets.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����ҋ4�1p�e�>'),
('�Sx��4�@o�w�N', 'wp-admin/js/widgets.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Q���@��_\nU ��&'),
('P73o�	��\0�=��', 'wp-admin/js/word-count.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'w���������/i'),
('��Cg����}|�E��', 'wp-admin/js/word-count.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P_��J''䓖AE��'),
(')�f><z0-AUi�', 'wp-admin/js/wp-fullscreen-stub.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��(�2Tq�\0�W��%�'),
('��"��p�"-C����w', 'wp-admin/js/wp-fullscreen-stub.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p\n��L{A��g���J5'),
('v����4�|>�<����', 'wp-admin/js/xfn.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����t�+��n�(k'),
('頻�yN<���9�o\Z<', 'wp-admin/js/xfn.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f�''�(�.�J9\r^'),
('|��Y�>���	�Ɔ�', 'wp-admin/link-add.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������!q�!T	ʢ�'),
('�B%v6�I"Jb��4ӡT', 'wp-admin/link-manager.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�xV�ۯ�$��39�P'),
('��~������r�C��', 'wp-admin/link-parse-opml.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'XCjZ��5+����?Ib'),
(':{���{7�9����', 'wp-admin/link.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nAs�C��5	���+'),
('6�]j�v�W�k\r3-�', 'wp-admin/load-scripts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�CT�r�[�ۉC�'''),
('W})Ӗ7���e�}5�9,', 'wp-admin/load-styles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+��r���~��Q{��'),
('��K���OȖ9�3|<�', 'wp-admin/maint/repair.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ဣ�������7�[�/'),
('J{�ֹZi^ùx�I', 'wp-admin/media-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�o��V���h	٨\n�'),
('���������}��', 'wp-admin/media-upload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',"r	k,-\Z�^\Z�3�');
INSERT INTO `vi_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('�ÏuL�,�&Ǒ�\r1', 'wp-admin/media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����w��i�5�'),
('�$�ī�I�^��3���', 'wp-admin/menu-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ea<�F/������.6�'),
('���\\�D �>�F,���', 'wp-admin/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�rp�73:���٧�}�'),
('W{�g- X���''=n8', 'wp-admin/moderation.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'TB���YR��"4�o�'),
('vw��@�H��z�F�', 'wp-admin/ms-admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���@�ͯE�b6�'),
('&ee�\n3K���vZ��', 'wp-admin/ms-delete-site.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� =e�|��ҢQH�O'),
('E�V���,�%��,SM=', 'wp-admin/ms-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/�Ħý��:E�'),
('"(}G��r�	0��V(', 'wp-admin/ms-options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''�\0�}��:��ㆯ�'),
('�-1�8�;�T�/X�]', 'wp-admin/ms-sites.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']b$�����q����h'),
('��=b�6��hs���t', 'wp-admin/ms-themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R�K��$�IZ1�i%�'),
('\\�����9������', 'wp-admin/ms-upgrade-network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|��&"�S�m��8h�m'),
('�k�UL��ǡ�$���', 'wp-admin/ms-users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H#�f{#ʃ��	6G�'),
('\rxݍ�^���\Z���<;', 'wp-admin/my-sites.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6�	/DH����b�-C'),
('���Clo�������', 'wp-admin/nav-menus.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=��Ue�14j���'),
('�o����l>��x~I� �', 'wp-admin/network/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6�fq�I<��@V!�m�|'),
('���ZQ4��\\(�܇', 'wp-admin/network/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H��3p���''e[g��'),
('+���t�%R?������', 'wp-admin/network/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��T%>r��l�1q''��'),
('''ڞ\0;��?�+VҪ�', 'wp-admin/network/edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���JɈ2F�?"��0'),
('�uF��^G��E+��c', 'wp-admin/network/freedoms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�9�B9�DD\n��S��`'),
('\0C_\n��jD��@k', 'wp-admin/network/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/��DW�Qy	4�X�'),
(']��P���Tkvt��8A', 'wp-admin/network/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��V���H�s��3�-'),
('��[ixT�q��~Wv�e', 'wp-admin/network/plugin-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e��Kw�5UZ����Sj'),
('��p�$^���d�Z', 'wp-admin/network/plugin-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*l�n,ƍe/ʚ^�'),
('�����"Sέ`t@', 'wp-admin/network/plugins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������F���9�U֊'),
('�=�}C���i��HT', 'wp-admin/network/profile.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ht�o�`�3v�'),
('��\Za�]]�A��''h���', 'wp-admin/network/settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˇ�0�G���V	��Z�'),
('/�s��C4��������', 'wp-admin/network/setup.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�t�=$��l�y�2R'),
('+��G*#�������f�', 'wp-admin/network/site-info.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���x+�fo��{|ϓ�'),
('y���G�\\`����MR�', 'wp-admin/network/site-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��5m�}KT�B���sH'),
('��yc�0O�g)ρ�Mf�', 'wp-admin/network/site-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�&P�� ;�8xP���'),
('�q�h���Bc�92��', 'wp-admin/network/site-themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�쉕���^~�/��|��'),
('�q�@/��ꦑٞ-M�', 'wp-admin/network/site-users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_����>5#��(v�'),
('n����@��A��F�', 'wp-admin/network/sites.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A����3Y�����{@'),
('{N���2�Q�u��=	�', 'wp-admin/network/theme-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^)���ŭw���qB'),
('h|hE��f:Ʊ2��~', 'wp-admin/network/theme-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b���p�B&�#���'),
('��!}�=�`*�gZ=', 'wp-admin/network/themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�W]V@29:�r?'),
('7|oOU���z\0Ef���', 'wp-admin/network/update-core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���~�I''�0Y�'),
('��\\�(��wB��I�', 'wp-admin/network/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�������GTw��'),
('r��h��v��Lk/��', 'wp-admin/network/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�#>��\n���㫛O�$'),
('\00��#�9���Z4�j$', 'wp-admin/network/user-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��?aO\Z��''��	'),
('��6K1���(���}/AX', 'wp-admin/network/user-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�zܷ�E�Cy�V��;'),
('	����09��-b��ͩW', 'wp-admin/network/users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E�b�X\\��E .�1'),
('�d���lP�O��I�', 'wp-admin/network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm_Aֹ}!B\n��=3X'),
('�JTV0D��oTA［@�', 'wp-admin/options-discussion.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�=ME��ׁ�LF��P��'),
('o�[��n3u��ʹ�P5', 'wp-admin/options-general.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��#�w���+�ed�l'),
('\rѪ1s1=��`(�y', 'wp-admin/options-head.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�an}�h��I��`q\r�'),
('���\\��.1��-��:', 'wp-admin/options-media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H�q|����YlO\\L`'),
('�)����t\r�,�Jڼ', 'wp-admin/options-permalink.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����o����}�g��n�'),
('ҲE5|�ѵ�C�d闼', 'wp-admin/options-reading.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$���jYԇ6S��U�'),
('�L�>�ٟ�#{6p}Y��', 'wp-admin/options-writing.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm�U�����(|o��l '),
('d�(��%J���@�G�', 'wp-admin/options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']2�Z����� l���'),
('a�c�CH\r��=l@ĸ', 'wp-admin/plugin-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��7cn����$i'),
('�xjP�����!c�x', 'wp-admin/plugin-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\\f�N�(H�(�\Z�4'),
('O��\\���P5���{�R�', 'wp-admin/plugins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��"V��e�gة��k<'),
('�k���zߣ����bo�R', 'wp-admin/post-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�d�W��QY�0E�Y��'),
('��vA�ds�����K�]', 'wp-admin/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#�6d��u�,`�d�&'),
('Q�`���8�M�8', 'wp-admin/press-this.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y�S$\n�1>օ�O�P�'),
('h4���#3�`�-݈�"�', 'wp-admin/profile.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���?���>z�ͩ��z&'),
('\\�\0��>�+���Fb��', 'wp-admin/revision.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|ru�H38��hܳ'),
('�c�̎��$\n''@�\r��', 'wp-admin/setup-config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'w����H��\0��ގ�1'),
('�|��f�����,2�T	', 'wp-admin/term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8Êɡ�GNR�-��\0'),
('&�`�O�Q5�Q�43�', 'wp-admin/theme-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'di}���v�A�p���'),
('\n�\r�B��p̭', 'wp-admin/theme-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<Gn��)�~&�&Ͳ'),
('����^[X��i�	�', 'wp-admin/themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��!_�{�Zk���R��'),
('�7s�\\]�}�AA�we1�', 'wp-admin/tools.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�9Ѱq\Z�!�;G�'),
('�!�LT�3��i��x�', 'wp-admin/update-core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�FA�	��}��6�~p�'),
('!o�\r��A��v7��e', 'wp-admin/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'iYQ�D��<A�@��\Z�'),
('^@ղ{''��_���92', 'wp-admin/upgrade-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h\r�6��Wd���˻'),
('���j7r[�,���Z��', 'wp-admin/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���\0:��I�%��0\0�'),
('&t!0^g��bJ�c,>3', 'wp-admin/upload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M��Gc���(;y�g;'),
('^9(-(Ų�y ���0q*', 'wp-admin/user/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\0ڍ�KN� ���N�-'),
('1s�)6�Ӷ���C��Η', 'wp-admin/user/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p-R �VEo������$'),
('�����~\r\ZK4(#��', 'wp-admin/user/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� ����ǀ[K}�Z'),
('�R;lzO�8m<3�Nie', 'wp-admin/user/freedoms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�˹��޳H�t��i.'),
('[ꠏ�|K�o�یb7�', 'wp-admin/user/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������-x���Nb��'),
('�����y��\0�"��Q', 'wp-admin/user/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�)��»�g��E�p�'),
('���`�&X<�aQ�Vh\\', 'wp-admin/user/profile.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������\0yݤ�&-'),
('�=��q�\rljA+', 'wp-admin/user/user-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*zu�c���m	J��e�'),
('�Jh|��0�`Zp�E', 'wp-admin/user-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����ž�c���q'),
(' *@ADғ�=pu���E', 'wp-admin/user-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�i�%,�aWcH2�b�'),
('P��iz�t�a�}�a', 'wp-admin/users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�r�[�@q�0f�<H�'),
('�T�h���zP��r�', 'wp-admin/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N\\஝٣��бYk�'),
('I��:Bs�#����@�', 'wp-blog-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�taMm?�%,=t�z�'),
('S����p�>��Wr�YE', 'wp-comments-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�L�p�%,2������Ѥ'),
('~ť�s\0�1y�$�L}h', 'wp-config-sample.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�I��?Ie� V���'),
('vK;@�s�aU1;�	^�', 'wp-config.php', 0, '1�^��!�5�Y��', '1�^��!�5�Y��'),
('�-^g��̺@\0/���', 'wp-content/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gD,V�=\\�bP'),
('��_�/��B��Q]k', 'wp-content/plugins/advanced-custom-fields/acf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�7��0�k�9m�'),
('�lI�����o���y�c�', 'wp-content/plugins/advanced-custom-fields/core/actions/export.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��|����㵘�'),
('r^Ҕ��@'':�cUF', 'wp-content/plugins/advanced-custom-fields/core/api.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2�^���Z�Ja�VC��'),
('M�.q�e?XӧqL�', 'wp-content/plugins/advanced-custom-fields/core/controllers/addons.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nY�4!�t�T����\r@�'),
('�:b� ��v��o�', 'wp-content/plugins/advanced-custom-fields/core/controllers/everything_fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U�M�H\rn��ʍ'),
('�º9��0@ͬ\n���', 'wp-content/plugins/advanced-custom-fields/core/controllers/export.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���CY���<=��r|'),
('�+խD�m��.��', 'wp-content/plugins/advanced-custom-fields/core/controllers/field_group.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_*�1)�v�{\n��s'),
('� ��B)�QH&���w2', 'wp-content/plugins/advanced-custom-fields/core/controllers/field_groups.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����mv>�\r��)C��'),
('V!�ʀ��7�ߔ���', 'wp-content/plugins/advanced-custom-fields/core/controllers/input.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��I�����uv�.��'),
('��~�Lxz[��''!>]�|', 'wp-content/plugins/advanced-custom-fields/core/controllers/location.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Y�������͊\\+�'),
('�D�O}�vLCQAE��', 'wp-content/plugins/advanced-custom-fields/core/controllers/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{��\n�n�l�=��*��'),
('��cF-����t_�{��', 'wp-content/plugins/advanced-custom-fields/core/controllers/revisions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h�������"0&?�{'),
('���Z_a��~�4��^��', 'wp-content/plugins/advanced-custom-fields/core/controllers/third_party.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ps-�''ȧ��pIm^�'),
('�R��(G�MB���b�', 'wp-content/plugins/advanced-custom-fields/core/controllers/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��)tI��/�K/�'),
('w�s@�f4�8U%*�qK', 'wp-content/plugins/advanced-custom-fields/core/fields/_base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�d�Vi�9R	�+��\0�'),
('��#i��\n��)�b�%�g', 'wp-content/plugins/advanced-custom-fields/core/fields/_functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9''Z�ﻆ]�^h�k�s�'),
('�)}d\r�SD\n�F�Z�c�', 'wp-content/plugins/advanced-custom-fields/core/fields/checkbox.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's�� ������naq�(�'),
('''�����P��T>6q', 'wp-content/plugins/advanced-custom-fields/core/fields/color_picker.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M�3@L5��+�0�X'),
('n7��_.N��-�q�', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/date_picker.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i�R����S�H�'),
('bNT\n{�����P�0', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_flat_0_aaaaaa_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*D��s`�"������'),
('gP[5<=@g�vWG��', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_flat_55_5bc6f5_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M��qx�}�o��#�'),
('�%!@����/]�f���', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_flat_75_ffffff_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����������DÎ���'),
('"=��]V��M���Y�', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_glass_65_ffffff_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��.(�\\''��3Ȩ��'),
('�y����Z��/\0\\', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_glass_75_dadada_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�,e����dȣ��$i'),
('���߿�jϘTQ����', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_glass_75_e6e6e6_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�%CV¨ɣ� ^���"�'),
('�e,4_���W�@����', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_glass_95_fef1ec_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z;����2MY���{\n�'),
('�CK̪$�C��r#�i', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_highlight-soft_0_444444_1x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0����*�Y�s�R��'),
('��^OeL�v����yx', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_222222_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�涐*@����cy�Gu%'),
('E��ʌ#W<�Z�h/�', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_2e83ff_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+���<9W�0''�j%�'),
('c#�߱�e�}ݞl�,�', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_454545_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����J։އ>��>n'),
('�o\n;X^�W��E~F ', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_888888_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�F�ʴ>"�K�&�Ԁm�'),
('Qp�����7�J��6O�', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_cd0a0a_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>E*,f2����\0\Z�|'),
('W휎Ҙ|\Z\n+$�l�', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/jquery.ui.datepicker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b�32\\)����gĻ�'),
('�A��\\''��n5���', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/style.date_picker.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/�~��t�U\Z�Jw��'),
('/�е%$%�����/', 'wp-content/plugins/advanced-custom-fields/core/fields/dummy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0�3�S�����)�I�'),
('���r^:ܤ\rZ�(�p', 'wp-content/plugins/advanced-custom-fields/core/fields/email.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�i���^�15(\0��'),
('lu$%��)�duq��', 'wp-content/plugins/advanced-custom-fields/core/fields/file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���xE��]K:���.'),
('�D�\Z!G����ٶ', 'wp-content/plugins/advanced-custom-fields/core/fields/google-map.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:�|P��2��q��Q�'),
('Zp��粛ݡV��%]�', 'wp-content/plugins/advanced-custom-fields/core/fields/image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��e/41��үJo'),
(';�\\w���{@���', 'wp-content/plugins/advanced-custom-fields/core/fields/message.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ߢ�!\Z��x*��^�D'),
('A߫����t�$o1r�', 'wp-content/plugins/advanced-custom-fields/core/fields/number.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�4�(�re)��PDQ�'),
('dJ�%g^lڴ\\�+x�', 'wp-content/plugins/advanced-custom-fields/core/fields/page_link.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z��?���9{3Gd.�-�'),
('%�Ǿ8�s���,��2', 'wp-content/plugins/advanced-custom-fields/core/fields/password.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eKhb��@+����%&�'),
('z�/�F�#�!���V�', 'wp-content/plugins/advanced-custom-fields/core/fields/post_object.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����w�������*'),
('2�OŽ֛�4P����', 'wp-content/plugins/advanced-custom-fields/core/fields/radio.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����\0O3]{�H�~'),
('&���3Ʋ*к`�m', 'wp-content/plugins/advanced-custom-fields/core/fields/relationship.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-N�^T���~Lԥv�\rk'),
('t��� �#�5���k', 'wp-content/plugins/advanced-custom-fields/core/fields/select.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��)^E�0>��Z����|'),
('��F��f��I���P9-b', 'wp-content/plugins/advanced-custom-fields/core/fields/tab.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���\rE]C�����'),
('NY@��h�SY�^�', 'wp-content/plugins/advanced-custom-fields/core/fields/taxonomy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�WU7:뒶�A�N'),
('c%�!Xlvn8	�J�	��', 'wp-content/plugins/advanced-custom-fields/core/fields/text.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�2�����,0!�Q�pru'),
('�,�U��\0e�\n=���2', 'wp-content/plugins/advanced-custom-fields/core/fields/textarea.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� ��W�Q$yp��c�,'),
('����oëMY[O^��', 'wp-content/plugins/advanced-custom-fields/core/fields/true_false.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$n��|Dz''��$��'),
('�I��f:w[�� ���', 'wp-content/plugins/advanced-custom-fields/core/fields/user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�MC��J8��ZV�'),
('�W���d�5@@��c�', 'wp-content/plugins/advanced-custom-fields/core/fields/wysiwyg.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rf$T�,��O�S��"�2'),
('��I��XT}B�/���', 'wp-content/plugins/advanced-custom-fields/core/views/meta_box_fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dW�)_��g��]�1H_;'),
('3U��-��ei{����', 'wp-content/plugins/advanced-custom-fields/core/views/meta_box_location.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2��G�I��W�~�q�@'),
('û�HO{����A����', 'wp-content/plugins/advanced-custom-fields/core/views/meta_box_options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�{[km�2i�\0�Kz�m'),
('�^F%،�v�_�H�eU', 'wp-content/plugins/advanced-custom-fields/css/acf.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T�9V]qx�X)�SE|�'),
('���I4���!�8ؒ', 'wp-content/plugins/advanced-custom-fields/css/field-group.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�v���Q�2����4:�^'),
('G���	���A��V�', 'wp-content/plugins/advanced-custom-fields/css/global.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"��`ൖ�C+Y	('),
('���u�3�Ci��,~[', 'wp-content/plugins/advanced-custom-fields/css/input.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��q�a�pSTKs�'),
('���q�&AhG��', 'wp-content/plugins/advanced-custom-fields/images/add-ons/cf7-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F-�e�c�5��[-'''),
('������HٸK�d{��', 'wp-content/plugins/advanced-custom-fields/images/add-ons/date-time-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'И�w�gϖ-F�>�'),
('�L������	)A���G', 'wp-content/plugins/advanced-custom-fields/images/add-ons/flexible-content-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��jJ��qA{<	���'),
('�$��낧\n�RD�Z�D', 'wp-content/plugins/advanced-custom-fields/images/add-ons/gallery-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z��L�;��b�̕t'),
('S`4Ρ��z*P�U�/8', 'wp-content/plugins/advanced-custom-fields/images/add-ons/google-maps-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?xqc�K�Q���}�\r'),
('�\n.''�H�|�����', 'wp-content/plugins/advanced-custom-fields/images/add-ons/gravity-forms-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|_b)��(>��{>2��'),
('G�YKV*\Z ʣ���', 'wp-content/plugins/advanced-custom-fields/images/add-ons/options-page-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2�uuG9�S�*+��B�'),
('�����1A�ޢy��', 'wp-content/plugins/advanced-custom-fields/images/add-ons/repeater-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/��\\i��K�N�Z'),
('_/�A���qqt|��c�_', 'wp-content/plugins/advanced-custom-fields/images/arrows.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�v�$�>����>�Y'),
('�;׵�g�ƒ;d�H`�', 'wp-content/plugins/advanced-custom-fields/images/arrows@2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� Q��}��ydb#6�'),
(';�u�>8 @1�q�~�A�', 'wp-content/plugins/advanced-custom-fields/images/sprite.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0JN�ػcS�zyW�9'),
('|=��?��O���_P�s', 'wp-content/plugins/advanced-custom-fields/images/sprite@2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�7:�1� "W^U�粼�'),
('�JC=bɴ1\0\\Ve�', 'wp-content/plugins/advanced-custom-fields/images/wpspin_light.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g�\n0��7C���k�Fz�'),
('}�t�Zb_������P', 'wp-content/plugins/advanced-custom-fields/images/wpspin_light@2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ER��fz�����'),
('��\0�X9>�2��Umm', 'wp-content/plugins/advanced-custom-fields/js/field-group.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�`*OD�\0����s6��'),
('n���\n��q\Z����6�', 'wp-content/plugins/advanced-custom-fields/js/field-group.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�#q�D�C	��X�"8�'),
('��0m�lb�C�w.��', 'wp-content/plugins/advanced-custom-fields/js/input/_listener.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ُ\0��	���B~'),
('h��X��J5㔦x�.w', 'wp-content/plugins/advanced-custom-fields/js/input/_listener.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ُ\0��	���B~'),
('b͔;J?���j\Z��x�', 'wp-content/plugins/advanced-custom-fields/js/input/acf.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�;�m���8mo��o[�'),
('{�O;������''ȶ', 'wp-content/plugins/advanced-custom-fields/js/input/ajax.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����/�闂�$[P�'),
('.�9ċɨܗ�ќ&�|t', 'wp-content/plugins/advanced-custom-fields/js/input/color-picker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p쮓M�0-�B��Hb�'),
('���+�\r\n��l�g�', 'wp-content/plugins/advanced-custom-fields/js/input/date-picker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W�����f�\n�04�f�'),
('R\\D��:1t��z!B', 'wp-content/plugins/advanced-custom-fields/js/input/file.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'TC�zq����V�ګr\Z'),
('�ʥ]ul��`��g#�', 'wp-content/plugins/advanced-custom-fields/js/input/google-map.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}[\Z$�$#�����>�;/'),
('|��}O���p�X4�', 'wp-content/plugins/advanced-custom-fields/js/input/image.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']W�xm5R%s�\0J�Y'),
('X\0������t���ck', 'wp-content/plugins/advanced-custom-fields/js/input/radio.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9�j�N�e�����T{\0'),
('���-��-����', 'wp-content/plugins/advanced-custom-fields/js/input/relationship.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}PǏ�������j'),
('[���s���p���R���', 'wp-content/plugins/advanced-custom-fields/js/input/tab.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r1\n}���e7�`�A�n�'),
('�h�3f���VՐ��L', 'wp-content/plugins/advanced-custom-fields/js/input/validation.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r�ϱS��R�qz\\a/�)'),
(',B��ͤ�Cۈճ���', 'wp-content/plugins/advanced-custom-fields/js/input/wysiwyg.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q�zH}�n953r!{'),
('\\3p�Io�߭�ƃ}\0O"', 'wp-content/plugins/advanced-custom-fields/js/input.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�>�b7��B_��_Q��'),
('� �`Q��5ȼ��T\\B', 'wp-content/plugins/advanced-custom-fields/js/input.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ݙb��W)\Z5�'),
('^�tx��\\h�Ƈ�:��', 'wp-content/plugins/advanced-custom-fields/js/tinymce.code.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~�ɫ�P�[�s�?���'),
('�r��=K���&�h�}a', 'wp-content/plugins/advanced-custom-fields/lang/acf-bg_BG.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q�Q�\\KNN�&,c�R>'),
('�n�F�3z����iA6@�', 'wp-content/plugins/advanced-custom-fields/lang/acf-bg_BG.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!y� �K�	���='),
('�#����I#I�H�W�', 'wp-content/plugins/advanced-custom-fields/lang/acf-cs_CZ.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�YWx� w�b�b�'),
(',K�''o��n�yh.y^�', 'wp-content/plugins/advanced-custom-fields/lang/acf-cs_CZ.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k*��+3v1x\n��'),
('�-�^��"\0�o}����', 'wp-content/plugins/advanced-custom-fields/lang/acf-cy_GB.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W��c��uj�ؐ'),
('�y8+���Ӯҭ�G', 'wp-content/plugins/advanced-custom-fields/lang/acf-cy_GB.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ڻ�a��}D�ڶ��x�'),
('�����ͣwnԜ', 'wp-content/plugins/advanced-custom-fields/lang/acf-de_DE.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S�d��}���$�'),
('���w^3j�i���', 'wp-content/plugins/advanced-custom-fields/lang/acf-de_DE.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�������V�Q��#E'),
('���@)�%���;��', 'wp-content/plugins/advanced-custom-fields/lang/acf-es_ES.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�cJ�R���b�ν8U'),
('��$�Flx���r�v�P', 'wp-content/plugins/advanced-custom-fields/lang/acf-es_ES.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��G����kӑ�'),
('�1]sR1�=:�֩��', 'wp-content/plugins/advanced-custom-fields/lang/acf-fa_IR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��G��D���\r;⯧'),
(')*EsOg%D2�N�;', 'wp-content/plugins/advanced-custom-fields/lang/acf-fa_IR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��	��~_S�u�B����'),
('~Y%��!�˙����B�', 'wp-content/plugins/advanced-custom-fields/lang/acf-fi_FI.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���~��&ǟ�P��cS'),
('��߷���#�o�䚵�3', 'wp-content/plugins/advanced-custom-fields/lang/acf-fi_FI.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�PӔ鍇�C_���'),
(':���&��P�$Ι� �', 'wp-content/plugins/advanced-custom-fields/lang/acf-fr_FR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y��g���\ZSD����,'),
('���km���b�Gm1�', 'wp-content/plugins/advanced-custom-fields/lang/acf-fr_FR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���],ў%xSx���q'),
('�?���8�kea�!Ax', 'wp-content/plugins/advanced-custom-fields/lang/acf-he_IL.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���Jc4Gu�\\Q����['),
('�I�\0''%���?�x�`��', 'wp-content/plugins/advanced-custom-fields/lang/acf-he_IL.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2p�"��G�_IF̙��'),
('Wh�E���\rb��x��', 'wp-content/plugins/advanced-custom-fields/lang/acf-id_ID.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����;�:�$d��D��E'),
('W��f����Kf�vl�=n', 'wp-content/plugins/advanced-custom-fields/lang/acf-id_ID.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/��\nd�T���*���'),
('�\Z�@ic׋#\Z\Z]!�(�', 'wp-content/plugins/advanced-custom-fields/lang/acf-it_IT.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�� $��-��8{\r�'),
('�II�W^�s{,s�"\0', 'wp-content/plugins/advanced-custom-fields/lang/acf-it_IT.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=A!��S��k�{V\nYk~'),
('�Fv`�\0	���4\Z73', 'wp-content/plugins/advanced-custom-fields/lang/acf-ja.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eW*v]#�~!��&��'),
('%���R	��3�Zd� ', 'wp-content/plugins/advanced-custom-fields/lang/acf-ja.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�vCw�֜0��''q`'),
('Q�a���1���R��z', 'wp-content/plugins/advanced-custom-fields/lang/acf-nl_NL.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����\\��y��='),
('�&�(��E��Z��', 'wp-content/plugins/advanced-custom-fields/lang/acf-nl_NL.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:W-M�Ψ<΃�'),
('#7v�V��既K�PQ�', 'wp-content/plugins/advanced-custom-fields/lang/acf-pl_PL.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�J)6�+����Ȍ��'),
('c�"U���JtU�', 'wp-content/plugins/advanced-custom-fields/lang/acf-pl_PL.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\0\\-��3!���Z��^'),
('����Ѿ�=l��5*', 'wp-content/plugins/advanced-custom-fields/lang/acf-pt_BR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~:���i���au�B��'),
('�圀=��|��՘�e�', 'wp-content/plugins/advanced-custom-fields/lang/acf-pt_BR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ǮU���27��r��'),
('�wZ�\Z1D����y�I�', 'wp-content/plugins/advanced-custom-fields/lang/acf-pt_PT.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�}����$S��jB"�'),
('�n�O�ja>�X�k|�', 'wp-content/plugins/advanced-custom-fields/lang/acf-pt_PT.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��|���4\\򦐪���'),
('x�<\rH^򉾵���', 'wp-content/plugins/advanced-custom-fields/lang/acf-ru_RU.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�7T��z����dM��b'),
('̘�\\�l��@"�e�U', 'wp-content/plugins/advanced-custom-fields/lang/acf-ru_RU.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_��l��%Tw��'),
('�B_L^v����', 'wp-content/plugins/advanced-custom-fields/lang/acf-sk_SK.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hf���.�:sdL�Q�'),
('������F��[�', 'wp-content/plugins/advanced-custom-fields/lang/acf-sk_SK.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�c� n6�UF�h��"��'),
('qҪZ<P�;#����<�', 'wp-content/plugins/advanced-custom-fields/lang/acf-sr_RS.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0Kx�&���d=.���'),
('����٠�Z�`�A�N', 'wp-content/plugins/advanced-custom-fields/lang/acf-sr_RS.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]�+7K�#�*���'),
('���]��b��"�\\k', 'wp-content/plugins/advanced-custom-fields/lang/acf-sv_SE.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���ۮ''n���=e�'),
('�d.��T��h߉�IJV', 'wp-content/plugins/advanced-custom-fields/lang/acf-sv_SE.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V�����"�� 	�6m'),
('g�K��%ѓ~@���', 'wp-content/plugins/advanced-custom-fields/lang/acf-tr_TR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ub��c?\0��'),
('�];]sn�\r��j�~v�', 'wp-content/plugins/advanced-custom-fields/lang/acf-tr_TR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!�a�7Ov��JGB�$�'),
('�\nZ��������', 'wp-content/plugins/advanced-custom-fields/lang/acf-uk.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�g,�P��M�MK��!�'),
('�pӧ�n�y?��', 'wp-content/plugins/advanced-custom-fields/lang/acf-uk.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�t���1�|K�Y]�'),
('�1�U�q5w�*�', 'wp-content/plugins/advanced-custom-fields/lang/acf-zh_CN.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�.#KRv�y���D��'),
('@���&��5C	�7�', 'wp-content/plugins/advanced-custom-fields/lang/acf-zh_CN.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�3��b(��qKǅ^�e'),
('��AO�\Z�%*hb��:�', 'wp-content/plugins/advanced-custom-fields/lang/acf.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ç�����3@�{O��M'),
('�O`�]i@vȶ�.H�', 'wp-content/plugins/advanced-custom-fields/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�M n]� p''�?���G'),
('��	���������g', 'wp-content/plugins/advanced-custom-fields/screenshot-1.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�x ZH��ߤ�KҝN'),
('���X�䖇?�ݫ�>c', 'wp-content/plugins/advanced-custom-fields/screenshot-2.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�x4����:*�:�=('),
('|չ+=���O�}�\Z�', 'wp-content/plugins/advanced-custom-fields/screenshot-3.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\��Sߍ�0&�k��v'),
('��*]N�5?㐫Z�', 'wp-content/plugins/advanced-custom-fields/screenshot-4.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�@��j�a��(1'),
('��w��i.�w�(M;0D', 'wp-content/plugins/akismet/.htaccess', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�9��|���2-�#�'),
('������I�*�:o�', 'wp-content/plugins/akismet/LICENSE.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�4�Mi���Hj���JBc'),
('L�\r��Ȧ:��n�h''', 'wp-content/plugins/akismet/_inc/akismet.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�F�QR�gf�a�P��'),
('̽� ���X�$oB�', 'wp-content/plugins/akismet/_inc/akismet.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2r�z�X�*\Z�b���'),
('<B��ʱ�A51ӱ', 'wp-content/plugins/akismet/_inc/form.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''�4�l*��&��i'),
('�''P��T]�	�6�~�', 'wp-content/plugins/akismet/_inc/img/logo-full-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�.v��7\0���]��'),
(')̃�2�k�h���! ', 'wp-content/plugins/akismet/akismet.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R$^f�Z\n��ĵ�\\'),
('���jK�&����Y', 'wp-content/plugins/akismet/class.akismet-admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ytvFƍ�9����'),
('��f餧xM�P]~B��', 'wp-content/plugins/akismet/class.akismet-cli.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+Z�yJŎ;�M*[G�'),
('�l�g<���=�l�', 'wp-content/plugins/akismet/class.akismet-widget.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ٱ��z�Pټ��S'),
('p����b�~�oBk�Z', 'wp-content/plugins/akismet/class.akismet.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�L�Q���D\ZYDGN[�'),
('A���$h��՝`Q�a', 'wp-content/plugins/akismet/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�h�� P�Z���ݢ`Ef'),
('�o�/�d��4x`��', 'wp-content/plugins/akismet/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Vt^���9�\r$d���'),
('��>Zb�o&����', 'wp-content/plugins/akismet/views/config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�n1P�����T��j)�'),
('�b�E��3�g''cZ (��', 'wp-content/plugins/akismet/views/get.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N�^?,ړ�f�/���'),
('���Wd�;C\r���O�', 'wp-content/plugins/akismet/views/notice.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M#p%iظh�̝�'),
('��;�;/J�KmR��0�', 'wp-content/plugins/akismet/views/start.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*��\0E<q�!y4�/ӰE'),
('s��ӣJ���~��k', 'wp-content/plugins/akismet/views/stats.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���A�F���h��`'),
('dF=���j��Hc�����', 'wp-content/plugins/akismet/wrapper.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��lRKv��G\n.�4&�'),
('i3*씉�v�iW�L��', 'wp-content/plugins/ank-google-map/LICENSE.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���>�|�kq��>�Q'),
('҈97;86�HE�E��8', 'wp-content/plugins/ank-google-map/ank-google-map.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/J�kP��%�{�n}'),
('�tW˵���vz��j��', 'wp-content/plugins/ank-google-map/assets/frontend.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����P9�el���'),
('+H`5b�ed���S�j', 'wp-content/plugins/ank-google-map/assets/frontend.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����Y�����J��,'),
('�T���[�����q�', 'wp-content/plugins/ank-google-map/assets/option-page.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ms	�(��:J��]��'),
('K�j�� ��Pl̛�Se', 'wp-content/plugins/ank-google-map/assets/option-page.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h��rN�R��\rN��6?D'),
('�l�5��/[�;���', 'wp-content/plugins/ank-google-map/assets/option-page.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '؄HRYxa��2C�N��'),
('XD�l�Ҝ�ÀX�"q�', 'wp-content/plugins/ank-google-map/assets/option-page.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\ZU���4�#��J��\Z'),
('�UZ�a�	s�ۛ�7� ', 'wp-content/plugins/ank-google-map/inc/class-admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����@Ta�_r�\07�'),
('�;�qo�~U�/��''	j', 'wp-content/plugins/ank-google-map/inc/class-frontend.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��~�3���Ԝp�a͈'),
('L$�݉)����|��{u�', 'wp-content/plugins/ank-google-map/inc/class-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A?��*T�_�ڽ��]'),
('@ye�:t{�/_��', 'wp-content/plugins/ank-google-map/inc/class-util.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@G��,hL\\�0���'),
('��t����ߘ�Z��', 'wp-content/plugins/ank-google-map/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gD,V�=\\�bP'),
('�2�C����~���$p', 'wp-content/plugins/ank-google-map/languages/ank-google-map.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+9����B���$�[1'),
('?�Ur*���o��:�ǡ', 'wp-content/plugins/ank-google-map/languages/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gD,V�=\\�bP'),
('����C�Z�Ft��', 'wp-content/plugins/ank-google-map/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��%�+�ͺȦ�����'),
('^]�6����1��뭋', 'wp-content/plugins/ank-google-map/styles.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^��"��������2c'),
('I)%챊皡�7S���', 'wp-content/plugins/ank-google-map/uninstall.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U��v�^RHe:�_�!'),
('*�ѣ37��p�P\\�j', 'wp-content/plugins/ank-google-map/views/.htaccess', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o҉����T��3��"�'),
('B8��&R3�>?�_�', 'wp-content/plugins/ank-google-map/views/settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P��6�L�h�<�1&'),
('+"���s����', 'wp-content/plugins/contact-form-7/admin/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P��%[:����q�G'),
('��NP���<U�����', 'wp-content/plugins/contact-form-7/admin/css/styles-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R�Q�W�n���~G�'),
('��\r�RШ�<״U;"', 'wp-content/plugins/contact-form-7/admin/css/styles.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_����@�vkX{q'),
('F��_=^���a��E��}', 'wp-content/plugins/contact-form-7/admin/edit-contact-form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o�����Q�����J*'),
('H�	ڍ�Q���$�?9��', 'wp-content/plugins/contact-form-7/admin/includes/admin-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eE��`���[��S�{�'),
('�;!әA�O����Z�', 'wp-content/plugins/contact-form-7/admin/includes/class-contact-forms-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'w|U6�l�{�_���'),
('��9���3p��^�1��', 'wp-content/plugins/contact-form-7/admin/includes/editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm��zxz���X�o��'),
('�w�s���Y�e�s{�', 'wp-content/plugins/contact-form-7/admin/includes/help-tabs.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N���JJ�G.o�E�'),
('++��u���V�67Sc�', 'wp-content/plugins/contact-form-7/admin/includes/tag-generator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W*��spG�O��}�p2'),
('�W�[��lF*Q��M', 'wp-content/plugins/contact-form-7/admin/includes/welcome-panel.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r�0��*1�0�\0�'),
('>A�X��a�s�(~', 'wp-content/plugins/contact-form-7/admin/js/scripts.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',F���#C�\Z�|(�@'),
('�l�Ƀa�nd�v"��Q', 'wp-content/plugins/contact-form-7/admin/js/tag-generator.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ު���(.���Ԁ'),
(',A�}2+/�x����ў', 'wp-content/plugins/contact-form-7/images/ajax-loader.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��+7w�D:w��k;z��'),
('Wk��m��`�^ScV�G', 'wp-content/plugins/contact-form-7/includes/capabilities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd�����S���<��'),
('7��A�`�|''�2`5�=', 'wp-content/plugins/contact-form-7/includes/config-validator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ʹ(��c;N�i!R"�'),
('�R�0���t���]��', 'wp-content/plugins/contact-form-7/includes/contact-form-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�x��\0���Ƿ2j&�'),
('����"@O�wQ_ܨ2M', 'wp-content/plugins/contact-form-7/includes/contact-form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�C?H�;j1�TH�'),
('a.I��c�tR��s.�', 'wp-content/plugins/contact-form-7/includes/controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�G��$h(A@g�~4�k'),
('/�s����NF�>�6�', 'wp-content/plugins/contact-form-7/includes/css/styles-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P�P��;]W��׺p�h'),
('�\r�b!E��jڵX', 'wp-content/plugins/contact-form-7/includes/css/styles.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��s\r�"k�R�2tR�\r'),
('043p��2�P>�Ҥ�>', 'wp-content/plugins/contact-form-7/includes/form-tag.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f��tUq���p:H<�'),
('�=��5^L��\n-[', 'wp-content/plugins/contact-form-7/includes/form-tags-manager.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�U��#*�XU30Na'),
('pI���:S����v��u', 'wp-content/plugins/contact-form-7/includes/formatting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�5��~��W�K�&'),
('s��ז��:����h�S', 'wp-content/plugins/contact-form-7/includes/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7�H6�Jq���v8O���'),
('�:ӱ�`J��i�L���', 'wp-content/plugins/contact-form-7/includes/integration.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U�Tj�Z�V=!QJ�'),
('�\Z֍<r��t<�_^���', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/animated-overlay.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+�/|S\0����ͤ�%�'),
('�1�鵿�Y�l�TKe', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_flat_0_aaaaaa_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�#�\r�,G���׉��'),
('�Uu#d�����x]E', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_flat_75_ffffff_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_�W*�M@���'),
('X�[⋘H�n��̖	$', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_55_fbf9ee_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o��!j�ŕVۮH�{'),
('/�D�c��l��ޏ�', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_65_ffffff_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$ŽP�uv�����$c'),
('0���&���M��Ue2j', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_75_dadada_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(�$�2���H8��T^'),
('�WzY!�a��vwQ^ޱ', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_75_e6e6e6_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+7\r�/v�\Z�̙*���'),
('E�d�����ZE�Z�w', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_95_fef1ec_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J᪾A����IP_\Z"�H'),
('L��ϖ\0�y"P��', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_highlight-soft_75_cccccc_1x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��`\0�\0���K¿Ra'),
('E<V6;�N��K�_�lSk', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_222222_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����]��qU?C����'),
('^D�V����!o�$+', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_2e83ff_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e�y�%I�*'),
('\n��5��=�IK�&{�P', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_454545_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����#¼�!�A�Ia'),
('F�8*"ڹ�pEm�&-�j', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_888888_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n�M1��W���h�\0y�'),
('+GI�]$n��o�R�', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_cd0a0a_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P+���:��*���<'),
('�L9ԔL�MU�)�M��', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/jquery-ui.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�r�`�s�B��`����'),
('s��2K\n��l�F��u/G', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/jquery-ui.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`�@^ݕ�^Ơ��m�'),
('��EnZbʹ]w�	', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/jquery.ui.theme.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',#�d�]�2����Sx'),
(':l��l�����G��)', 'wp-content/plugins/contact-form-7/includes/js/jquery.form.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Fp�����y�լ#�K'),
('����/�Q&���\Z���o', 'wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Hœ�B�4�s:�Ǥ�l'),
('9��H�M%j�&�u', 'wp-content/plugins/contact-form-7/includes/js/scripts.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\ni��{�]울��'),
('��)K�W&''E��F%�', 'wp-content/plugins/contact-form-7/includes/l10n.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W\rA�y:|�巅��\0ǽ'),
('������Xo��~�_k', 'wp-content/plugins/contact-form-7/includes/mail.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V*9hRT��ܠC��8	�'),
('�4�:���j;F?��.', 'wp-content/plugins/contact-form-7/includes/pipe.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'EN(ڪ�,h@ۭB���2'),
('��Du��K�B�Lk��', 'wp-content/plugins/contact-form-7/includes/shortcodes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ڶݥ,��R��W��\r'),
('�?�cKl}��g5ᴐ��', 'wp-content/plugins/contact-form-7/includes/submission.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''�t�/H�T���ga�'),
('�\0p��WG�\r}^\r�̈́L', 'wp-content/plugins/contact-form-7/includes/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>)�o=,&���|?p�'),
(' ����.�g���w�', 'wp-content/plugins/contact-form-7/includes/validation.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�QL�~���zE5%�'),
('���N�O��T�)EH', 'wp-content/plugins/contact-form-7/languages/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'YT&\Z�o^GԨ���}'),
('݋�rn}�z��w''�', 'wp-content/plugins/contact-form-7/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`�}v>^���L��:'),
('�a��nFh #ۈ���', 'wp-content/plugins/contact-form-7/modules/acceptance.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y��ch���5����'),
('�ƿ�����o�F�h��', 'wp-content/plugins/contact-form-7/modules/akismet.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����)�n���ߨo'),
('\rvk�P-�t��G���Hm', 'wp-content/plugins/contact-form-7/modules/checkbox.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A����]9?�,2��:'),
('(�,\0[�7����34', 'wp-content/plugins/contact-form-7/modules/count.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6S�ed����*SRF['),
('\0�@u���2��X�', 'wp-content/plugins/contact-form-7/modules/date.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm���ވ���*�,"��'),
('YIE��Tt2L��]', 'wp-content/plugins/contact-form-7/modules/file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ȿ;�+_4�ߩ/>�8'),
('x�>���E\\��Q;�\\', 'wp-content/plugins/contact-form-7/modules/flamingo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o�#+� �l�I� ���'),
('!�B��\Zl!�Z0��', 'wp-content/plugins/contact-form-7/modules/hidden.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V(�2z�U�{T^���^�'),
('�=�fd�\\ӂv����', 'wp-content/plugins/contact-form-7/modules/listo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�.�P��`�	��<1���'),
('k	���<�(G�w���', 'wp-content/plugins/contact-form-7/modules/number.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6cg�z�e\\��^�'),
('�E��e�"^��zT��', 'wp-content/plugins/contact-form-7/modules/quiz.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ڌBA�ib�ׅ'),
('#�ɴ��.\n�I|+�ɼ�', 'wp-content/plugins/contact-form-7/modules/really-simple-captcha.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0/I��0�v承�9�'),
('�]F����}�w���}', 'wp-content/plugins/contact-form-7/modules/recaptcha.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6~�!��oFRW�z���'),
('\\\n�;:�I�"�@�Oh�', 'wp-content/plugins/contact-form-7/modules/response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}��)�,���o��'),
('ݺ$;k��J�	�a�l1�', 'wp-content/plugins/contact-form-7/modules/select.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�w�T������#Y'),
('J?��4�Y��h�e!>O', 'wp-content/plugins/contact-form-7/modules/submit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��[�n��Q񽾸m��'),
('b�N=���,��S��', 'wp-content/plugins/contact-form-7/modules/text.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�!ؗxI�=��p%&-�'),
('�r�"�-�\0�E�w��X', 'wp-content/plugins/contact-form-7/modules/textarea.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~u`v��L��ph��'),
('���6o8���NoL;', 'wp-content/plugins/contact-form-7/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#(���k:Y����(3�'),
('�%�&��}p\\?ہ', 'wp-content/plugins/contact-form-7/settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S��|��]��2���'),
('\r�¶2O��2���&�@', 'wp-content/plugins/contact-form-7/uninstall.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Z�f��-��oP���M'),
('kN��(l�Zf��E"Lm�', 'wp-content/plugins/contact-form-7/wp-contact-form-7.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���%�''&Ml�Nз�'),
(';�hǴM����\\���:�', 'wp-content/plugins/custom-post-type-ui/changelog.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!l��������(�D'),
(',A''ͯ�\\\0��b\\���', 'wp-content/plugins/custom-post-type-ui/classes/class.cptui_admin_ui.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%�ؚ�0j!m��R*��'),
('\0(�$���9�<�Ov�W', 'wp-content/plugins/custom-post-type-ui/classes/class.cptui_debug_info.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���|Ь{겎��!�\n�'),
('��:"h醱�D�l�/', 'wp-content/plugins/custom-post-type-ui/css/cptui.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��y�\n�y�q��w��]J'),
('����"H�鍌]-��', 'wp-content/plugins/custom-post-type-ui/css/cptui.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����� .���"�t9�'),
('�\\����T���ޯ�', 'wp-content/plugins/custom-post-type-ui/css/cptui.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'wż��x���,���Ɖ'),
('�Y�-|���B�f�J�', 'wp-content/plugins/custom-post-type-ui/custom-post-type-ui.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�C\\>�it�''�����'),
('�g�&�͓���8y�}A', 'wp-content/plugins/custom-post-type-ui/images/cptui-icon-128x128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��u��&�����h����'),
('V=�����A���T���', 'wp-content/plugins/custom-post-type-ui/images/cptui-icon-173x173.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' �vR��u���Q�b�'),
('''>e1u�EN&-	�%�', 'wp-content/plugins/custom-post-type-ui/images/cptui-icon-256x256.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�`@��N��e��d��'),
('�~�g:(�kL�:)pn*', 'wp-content/plugins/custom-post-type-ui/images/wds_ads/apppresser.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Z�3�v���w|B='),
('Rb0����}G�.깷q', 'wp-content/plugins/custom-post-type-ui/images/wds_ads/cptuix-ad-3.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�3v�A)���sA"��~');
INSERT INTO `vi_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('�-N߂�o�=�}���', 'wp-content/plugins/custom-post-type-ui/images/wds_ads/maintainn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���^�8�܄˰dN�u'),
('x,D�U����o�m*��', 'wp-content/plugins/custom-post-type-ui/inc/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Q�����,�'),
('��#0�x�ߤpK5', 'wp-content/plugins/custom-post-type-ui/inc/listings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H1׬�U;�[�ZcrDm'),
('����4pHX!����o', 'wp-content/plugins/custom-post-type-ui/inc/post-types.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ě��pd�f`��O� '),
('���!�UI''T_{��iB', 'wp-content/plugins/custom-post-type-ui/inc/support.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�y�����Y���/�$'),
('	�^�ђ���n���J�', 'wp-content/plugins/custom-post-type-ui/inc/taxonomies.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W咹8������v@'),
('[�20av�(�e��;', 'wp-content/plugins/custom-post-type-ui/inc/tools.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x��he� �N�jzC'),
('�q4��e�"\n;c*', 'wp-content/plugins/custom-post-type-ui/inc/utility.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oґ���R�P��'),
('1U�sbuj�7�	x��vt', 'wp-content/plugins/custom-post-type-ui/js/cptui.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/���,�J�ĳޫ�F�'),
('wX��52��§2*	+', 'wp-content/plugins/custom-post-type-ui/js/cptui.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�O|4���H��pM�n�'),
('e�g��|�{�§g�', 'wp-content/plugins/custom-post-type-ui/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r&$S樆Yyʾ''�8u'),
('p��u�w��S�ɴ0�', 'wp-content/plugins/hello.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R���bAo��t!_~�'),
('������0*�W��', 'wp-content/plugins/index.php', 0, 'gD,V�=\\�bP', 'gD,V�=\\�bP'),
('�<���86Ko��X', 'wp-content/plugins/wordfence/css/activity-report-widget.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S���\nx�wA���'),
('�!@A�;1)SJ��b��', 'wp-content/plugins/wordfence/css/colorbox.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jR ��S���7����M�'),
('��ŷN	\0��f\ZT��', 'wp-content/plugins/wordfence/css/diff.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�"�����y1���4Z�'),
('a�|\n��|@X\n��fM\r�', 'wp-content/plugins/wordfence/css/dt_table.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[�f��\Z��}�I+o'),
('��5Z�����o��Ү<', 'wp-content/plugins/wordfence/css/fullLog.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+����W�jw˄}��'),
('�!��0��tT�(� ��', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_0_aaaaaa_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f�\\K�K�G�лSA�'),
('LW]��=����\0;�:', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_100_1997c7_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j�\ZKȚ�-"��a{*0'),
('�?�>\0%lD[T��', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_100_222_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�^�F�"�I~�\0�GͲ'),
('��Q�c$2�6.�i��', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_75_ffffff_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ');7/E��w�A��g'),
('�nmq\0���@pF�d*', 'wp-content/plugins/wordfence/css/images/ui-bg_glass_95_fef1ec_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��0���(5�&3lh�)W'),
('P�⩣-ƅ����i�', 'wp-content/plugins/wordfence/css/images/ui-bg_highlight-soft_75_a5a5a5_1x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��m8O@��d8�<Qž'),
('Ŗ�/PI����c�D=Y', 'wp-content/plugins/wordfence/css/images/ui-icons_222222_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':<Th��zģ ��*ˌ'),
('E�0fۿo�i�\r�"��&', 'wp-content/plugins/wordfence/css/images/ui-icons_cd0a0a_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ō��o�8�%��'),
('�M$!���\\�z���', 'wp-content/plugins/wordfence/css/images/ui-icons_fbe569_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���u�3�<�����j'),
('��M�J��dB.���*', 'wp-content/plugins/wordfence/css/images/ui-icons_fff_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Aa+JD$�2��J��'),
('j��o�+��s�7�8', 'wp-content/plugins/wordfence/css/iptraf.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+	���<�dq�7^�'),
('?�$ O���;�>ե�', 'wp-content/plugins/wordfence/css/jquery-ui-timepicker-addon.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')e��f�#�`P�~7�n'),
('WN�	b%�9pY&����', 'wp-content/plugins/wordfence/css/jquery-ui.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N3(�-�M���\r��'),
('�h{n�V"��0���', 'wp-content/plugins/wordfence/css/jquery-ui.structure.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\\@�1D��?���'),
('rt�i�. �:v��V&�', 'wp-content/plugins/wordfence/css/jquery-ui.theme.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���{_����#��S'),
('o��a��w5h�@+w\r�', 'wp-content/plugins/wordfence/css/main.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�`�\rT��r�x�Ǟ'),
('���s�YX���㞗', 'wp-content/plugins/wordfence/css/phpinfo.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<`�,7��Ju\0�'),
('J�	4��/���|��	�', 'wp-content/plugins/wordfence/css/select2.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�X��N|7�Z��(C�'),
('Ήž��h	���', 'wp-content/plugins/wordfence/css/wf-adminbar.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���h��ö��?�Wm'),
('�9�`翭�!b���!', 'wp-content/plugins/wordfence/css/wordfenceBox.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^��+�C���.f���'),
('様��7�^��b�"�', 'wp-content/plugins/wordfence/images/back_disabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h���g���i���>'),
('���׮F��p�s��4�', 'wp-content/plugins/wordfence/images/back_enabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����]�����H��'),
('^yG=ڜFg;3�á�', 'wp-content/plugins/wordfence/images/button-grad-grey.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��RC���Ty��?�'),
('N7�A�\0�nnV�֑�', 'wp-content/plugins/wordfence/images/checkbox.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"��G\r�6|􈘀'''),
('�$8��.Vp�j�B�@�', 'wp-content/plugins/wordfence/images/flags/.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4.��M:�<�K0ܟή'),
('\r��:�����Uˣ', 'wp-content/plugins/wordfence/images/flags/a1.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4.��M:�<�K0ܟή'),
('\nƥuo��efa��n', 'wp-content/plugins/wordfence/images/flags/a2.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4.��M:�<�K0ܟή'),
('�''}H� �W��Ԝ\n{', 'wp-content/plugins/wordfence/images/flags/ad.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+�\Z tV��[E؜K��'),
('T�.���d��8�y�', 'wp-content/plugins/wordfence/images/flags/ae.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��7�4%����E�''M}l'),
('����;�cS��#nv�', 'wp-content/plugins/wordfence/images/flags/af.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�5�{dQ��Ü���'),
('b��`��Ҥ��-17@', 'wp-content/plugins/wordfence/images/flags/ag.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\\$�,� ���'),
('����������/��', 'wp-content/plugins/wordfence/images/flags/ai.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7��֖�*���솼�'),
('�P�v�d��I��4�u', 'wp-content/plugins/wordfence/images/flags/al.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��:\reݴOo�j�DO'),
('�~��pE��*�T�E4��', 'wp-content/plugins/wordfence/images/flags/am.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$/����cC\\&���P%'),
(';�-#n�9�|�?=��', 'wp-content/plugins/wordfence/images/flags/an.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{ڇ��0sw�1�Z��'),
('���y�n6Kz�9��G�', 'wp-content/plugins/wordfence/images/flags/ao.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A���m$�٧wh'),
('����NC��W������', 'wp-content/plugins/wordfence/images/flags/ap.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^��d�\r�ٍ��_P�'),
('u����\r��a"��\r�W', 'wp-content/plugins/wordfence/images/flags/aq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u����w ����釚d'),
('��ᯰӦ0ncm��', 'wp-content/plugins/wordfence/images/flags/ar.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�l˼���Ucph\ZK�'),
('�:��Pb��4���	�u', 'wp-content/plugins/wordfence/images/flags/as.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_�W��^5F^����'),
('�QB� x���MB��a�', 'wp-content/plugins/wordfence/images/flags/at.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e����"�����O;'),
('Q2''-O�9�����4', 'wp-content/plugins/wordfence/images/flags/au.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r����/�Cs��Y��'),
('MS���k쥘�\n��', 'wp-content/plugins/wordfence/images/flags/aw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�3u��y���ju��3'),
('G������T!���A��', 'wp-content/plugins/wordfence/images/flags/ax.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Fu�w�b̅��(w\r��'),
('.��B9��9&��i�', 'wp-content/plugins/wordfence/images/flags/az.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��?�"7^��`}]��@'),
('�S�m��$\\xH4�', 'wp-content/plugins/wordfence/images/flags/ba.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�T�DX,�J�y��$��'),
('�p�������A^s%', 'wp-content/plugins/wordfence/images/flags/bb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�,4�u�\n��߯?�g'),
('��H��E�1&Y���', 'wp-content/plugins/wordfence/images/flags/bd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�(�U!����¸�!s'),
('\0���I�J��-$��', 'wp-content/plugins/wordfence/images/flags/be.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a��٣\Z%������z'),
('{��_9έ��e�', 'wp-content/plugins/wordfence/images/flags/bf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'cY�8�i��3���'),
('�)����\Z�cq&#�,O', 'wp-content/plugins/wordfence/images/flags/bg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '},z���d�@�@�^'),
('�E�58��B�C)J�s��', 'wp-content/plugins/wordfence/images/flags/bh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�@T��&�����V�'),
('����>X�@P��d~R', 'wp-content/plugins/wordfence/images/flags/bi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ڴBp��+�����Ğ'),
('b32�N?R��V�MC�R''', 'wp-content/plugins/wordfence/images/flags/bj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N,X\nl�Y�%��_��'),
('�3y���u�E��1wĎ', 'wp-content/plugins/wordfence/images/flags/bm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��|�����	�9�eX'),
('� �������-�A�&W', 'wp-content/plugins/wordfence/images/flags/bn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���z���D��(�+J'),
('gM�BM�}�ޭ!���', 'wp-content/plugins/wordfence/images/flags/bo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&�7_� |>�)���'),
('U��}5&`J[�u:', 'wp-content/plugins/wordfence/images/flags/br.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm�H%�W��Q��[���'),
('�ƄH���3H�׏!�', 'wp-content/plugins/wordfence/images/flags/bs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'X�sYI����}�T'),
('����ޞ�����Q,�n', 'wp-content/plugins/wordfence/images/flags/bt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�KiK�u<�_պ�v%'),
('f����+���WKZ"�', 'wp-content/plugins/wordfence/images/flags/bv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ҒT�ǯW�F��5�~'),
('g�˺�3�C,', 'wp-content/plugins/wordfence/images/flags/bw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��E�.��g�;��z'),
('k��Q����c��d', 'wp-content/plugins/wordfence/images/flags/by.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_�6\r���A����v���'),
('eG�=�U�\\�l�', 'wp-content/plugins/wordfence/images/flags/bz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8�ߠe^z��e���'),
(',�܎����<9�T�j`', 'wp-content/plugins/wordfence/images/flags/ca.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"�J+/<����6('),
('Y���*�M�$���', 'wp-content/plugins/wordfence/images/flags/cc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���TÒ��;�+R�@'),
('�/�ȯȩsc"���ҧ', 'wp-content/plugins/wordfence/images/flags/cd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W��j�m��k��'),
('t�p�����o"�|:U%', 'wp-content/plugins/wordfence/images/flags/cf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*t��)��M؋F)'),
('`X[r���횎�E', 'wp-content/plugins/wordfence/images/flags/cg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�UXB''#�T�w��{'),
('��^��,��^戉8��', 'wp-content/plugins/wordfence/images/flags/ch.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7_\Ze��M����\r�'),
('e>�Y9����S�&', 'wp-content/plugins/wordfence/images/flags/ci.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�h�zP��F+d�y&�'),
('܉]�j�e�*:���p', 'wp-content/plugins/wordfence/images/flags/ck.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�s�ά���iԛ��'),
('/t�;/b����4!�"&', 'wp-content/plugins/wordfence/images/flags/cl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h��1�ܮ�8���'),
('Q;���꼡ʿ���', 'wp-content/plugins/wordfence/images/flags/cm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Th���W�F�C�J��'),
('Z�%n�a?�\Z�/�', 'wp-content/plugins/wordfence/images/flags/cn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�F[���MZ��N�8'),
('S�d�:��jr-I����F', 'wp-content/plugins/wordfence/images/flags/co.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�7"��}��ˀ���'),
('Q	1ޕ�b PSW���r', 'wp-content/plugins/wordfence/images/flags/cr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�"q���컔��m�.'),
('��B�����¾�CJB', 'wp-content/plugins/wordfence/images/flags/cs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\Z�m�@\nn�#��'),
('��\nKnEH[�_�t�\Z�', 'wp-content/plugins/wordfence/images/flags/cu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ѻ7���ν-T\n�Ĥ'),
('[h�i&.��E\r5S��', 'wp-content/plugins/wordfence/images/flags/cv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5`�	�xJ��B�W�'),
('��q��>%��<H�B%G', 'wp-content/plugins/wordfence/images/flags/cw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P�%:��''_z��fh'),
('��o�(��Q��<ڐ(��', 'wp-content/plugins/wordfence/images/flags/cx.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:���	B��2���'),
('6����j4�1]o���', 'wp-content/plugins/wordfence/images/flags/cy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ȕ2�csry�8<�%\Z,R'),
('v����ð�M�v�:i�', 'wp-content/plugins/wordfence/images/flags/cz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\0�y��S(18��#'),
('�zk�n�Qm��|Ǹtk�', 'wp-content/plugins/wordfence/images/flags/de.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n�����Nb��K�'),
('�����{t��vOz׳', 'wp-content/plugins/wordfence/images/flags/dj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g�-6�~��$ݑ��'),
('�sF"tOߓ��;_�*.', 'wp-content/plugins/wordfence/images/flags/dk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z���Dn~WMտM�'),
('&�g��Hi���(��', 'wp-content/plugins/wordfence/images/flags/dm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_\r&�.S%��V[\Z5YR'),
('t�����w*�>�', 'wp-content/plugins/wordfence/images/flags/do.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�V�:E�GaX��z'),
('j��kQ�������0''', 'wp-content/plugins/wordfence/images/flags/dz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���h9��X����'),
('6��K�V���u�N\0�5', 'wp-content/plugins/wordfence/images/flags/ec.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�A$͊z���������	'),
('�q���Y����H�"��', 'wp-content/plugins/wordfence/images/flags/ee.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z�VFY3�\ZXL���(��'),
('�AmK:`���G�', 'wp-content/plugins/wordfence/images/flags/eg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�t�{�-/9�ME-���"'),
('I��B�׹7�1T,�', 'wp-content/plugins/wordfence/images/flags/eh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';��[e����AuK'),
('�^[確�X�#�', 'wp-content/plugins/wordfence/images/flags/england.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�5��[��W,��''o��'),
('޽s��㝢@1i:\Z�', 'wp-content/plugins/wordfence/images/flags/er.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��AQ���	u�V��o�'),
('�61��J�K�gO 8 ', 'wp-content/plugins/wordfence/images/flags/es.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f)��.>''Ե�R��	w'),
('Ǹ��K*��u҃�Av', 'wp-content/plugins/wordfence/images/flags/et.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T\rP�����\0�%�'),
('>�A\r�D\0�x�7�', 'wp-content/plugins/wordfence/images/flags/eu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��2#ϫ�hk����s�'),
('M�:OG��dy�� �;', 'wp-content/plugins/wordfence/images/flags/fam.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P�	a7\Z�<��h#��'),
('���스>���j1^', 'wp-content/plugins/wordfence/images/flags/fi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�(��K��q��i+��'),
('�;%�X�[�r��\\f�', 'wp-content/plugins/wordfence/images/flags/fj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$�n� �=}<^(]\0�'),
('\\��I:��ڲEX���WO', 'wp-content/plugins/wordfence/images/flags/fk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T��I��]��Q�\n1'),
('opUf����1��TeR�', 'wp-content/plugins/wordfence/images/flags/fm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tm�''��J��t��?'),
('�h�`_J�#�S��_,R', 'wp-content/plugins/wordfence/images/flags/fo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����e���^K�IV��'),
('Yօ4��:+X�[Z\Z��', 'wp-content/plugins/wordfence/images/flags/fr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�%���}�2�K����'),
(':"��̏%^�@�j�<', 'wp-content/plugins/wordfence/images/flags/ga.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����E���d\Z����'),
('{µ�6\n�!�ĵ', 'wp-content/plugins/wordfence/images/flags/gb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����?���Ig*\Z�'),
('t;���Q��<�e��r', 'wp-content/plugins/wordfence/images/flags/gd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�?B��~̚�WV�r.9�'),
('bu/~���Iք9', 'wp-content/plugins/wordfence/images/flags/ge.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�h��!4��:��R'),
('voFXc��%��m�/��', 'wp-content/plugins/wordfence/images/flags/gf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$��-�[S��D]��'),
('%�S�|�O��@s�u', 'wp-content/plugins/wordfence/images/flags/gg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*�*��Ot�3̇h��'),
(',�����M9[Iv�-�Q', 'wp-content/plugins/wordfence/images/flags/gh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�7�K�zxn�����Fn'),
('����5���.;l�', 'wp-content/plugins/wordfence/images/flags/gi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\rVe����OK*a\\'),
('&�iN�$J�oF�r-�', 'wp-content/plugins/wordfence/images/flags/gl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�(kt5�*\r�i�l��'),
('\\&Ĩ�fo��݈g�W�', 'wp-content/plugins/wordfence/images/flags/gm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��1�{���Y0]��'),
('���1(\\�I��oh', 'wp-content/plugins/wordfence/images/flags/gn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{�����>�zI�	����'),
('a�#��n�2fl\\�	�', 'wp-content/plugins/wordfence/images/flags/gp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��©ը�m� �g'),
('�v��Oԟφ�:Dpg', 'wp-content/plugins/wordfence/images/flags/gq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�؟��.��Ծ�j)q"'),
('-��P���U\r[E�', 'wp-content/plugins/wordfence/images/flags/gr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l���\r�C�����u�-{'),
('�^����Ej�Fρ�ޅ0', 'wp-content/plugins/wordfence/images/flags/gs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b ���p�H���sC�}'),
('��Pƈv�����$�', 'wp-content/plugins/wordfence/images/flags/gt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''��v�q��#�\0@�'),
('FY�����$\\8���^X', 'wp-content/plugins/wordfence/images/flags/gu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<��Xãy���̆�@�'),
('�9��^+�t���k���', 'wp-content/plugins/wordfence/images/flags/gw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9�Mj+���+ON�zp'),
('��n��8���횃�', 'wp-content/plugins/wordfence/images/flags/gy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���*�*�"G�|�u'),
('���hD�UX\r���|���', 'wp-content/plugins/wordfence/images/flags/hk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�rY�F�f��̆�U7�'),
('s�����ߡk�б��', 'wp-content/plugins/wordfence/images/flags/hn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1�E���P����+v'),
('�k��H�����|��', 'wp-content/plugins/wordfence/images/flags/hr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����3�����7�'),
('%�J���''�L���ٸ', 'wp-content/plugins/wordfence/images/flags/ht.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!�!�w��ղH��T?�'),
('L �\r�+q�|�h��|', 'wp-content/plugins/wordfence/images/flags/hu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&�";d>]�pG��@�!d'),
('3\n�V>��O9Ǫ�	� N', 'wp-content/plugins/wordfence/images/flags/id.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�t�3�����m�'),
('�݌�)ƫ��%�Z���', 'wp-content/plugins/wordfence/images/flags/ie.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��O&�-q�9�fF�x�'),
('=5���@N��%�m��d', 'wp-content/plugins/wordfence/images/flags/il.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�UP��O\nFz����'),
(':�6�M$��΢]�pm��', 'wp-content/plugins/wordfence/images/flags/im.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:�K,}�����0R�s'),
('ݘ`b1tX��\ZZ� K/', 'wp-content/plugins/wordfence/images/flags/in.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����s�����Y��'),
('���Q�~�jJ�D', 'wp-content/plugins/wordfence/images/flags/io.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�r���ҲW��W��r�'),
('R�p5�������Si', 'wp-content/plugins/wordfence/images/flags/iq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����!\n����s�7��'),
('/k\n�啗�ˁ8����+', 'wp-content/plugins/wordfence/images/flags/ir.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�k�n�oT''����{K['),
('�q۩���	������e', 'wp-content/plugins/wordfence/images/flags/is.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`�)���Ƿh��E'),
('X�2,�I�E�d�{<', 'wp-content/plugins/wordfence/images/flags/it.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���!��%X�b�̣'),
('A�<��?�׎c�Q�', 'wp-content/plugins/wordfence/images/flags/je.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r�;����O0]�4���j'),
('��7=��$�����=h�', 'wp-content/plugins/wordfence/images/flags/jm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�n�rmϓ6��f�k�"'),
('\\vvڡwx^��4C�1', 'wp-content/plugins/wordfence/images/flags/jo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ӎ��1������W�'),
('�R)ԡ�`Pgٴ�ޮ^�', 'wp-content/plugins/wordfence/images/flags/jp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�^4>B����D��Y�'),
('p�ZV_	�]��l{�', 'wp-content/plugins/wordfence/images/flags/ke.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oE5�JUI��W�>�sZ�'),
('��o�<���I}�\n{`s', 'wp-content/plugins/wordfence/images/flags/kg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '򸥬\r�ͧ5����'),
('=�����Gٗ�\0�C�', 'wp-content/plugins/wordfence/images/flags/kh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'C&}r@s��HL��O��'),
(']��g> �ӡ��', 'wp-content/plugins/wordfence/images/flags/ki.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���[�#0+��A�g�'),
('-��.�z�e����8�', 'wp-content/plugins/wordfence/images/flags/km.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�v�2��j\Z�I@	N\\�'),
('S�T+)Μ<�C�e�2\r', 'wp-content/plugins/wordfence/images/flags/kn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Hp�(��"�I��[�'),
('��i�Y:\0$��z��]', 'wp-content/plugins/wordfence/images/flags/kp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��8�[���!�z�LEt'),
('�&�K�,h�_�R��', 'wp-content/plugins/wordfence/images/flags/kr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 're�`���1�j?;�f'),
('���W3|���x�ӕr֜', 'wp-content/plugins/wordfence/images/flags/kw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����Lݺa�ft�5�'),
('�����b��hָ{-w(', 'wp-content/plugins/wordfence/images/flags/ky.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '늤�>�@�|g�H�3��'),
('\no�s�{�8oY�?', 'wp-content/plugins/wordfence/images/flags/kz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������z߀�9\r���'),
('���tI@����,��([', 'wp-content/plugins/wordfence/images/flags/la.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z�rΐ��B\0/>~i'),
('�Ө�:�:�Ǟ��FA�', 'wp-content/plugins/wordfence/images/flags/lb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���H�(W8���JW'),
('a��?�X@�����', 'wp-content/plugins/wordfence/images/flags/lc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��fF��n�m�U�%\\'),
('��`�r������A', 'wp-content/plugins/wordfence/images/flags/li.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~�[k"�4��{��;'),
('Nu.��N3��XT����', 'wp-content/plugins/wordfence/images/flags/lk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Fq�O���.�aA'),
('��Yf �n���رy�', 'wp-content/plugins/wordfence/images/flags/lr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J:��x�^b�;�#�uc'),
('$Z<0aeN���T���', 'wp-content/plugins/wordfence/images/flags/ls.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tx���E�&ʮm�\rn�'),
('�m�}������+s]', 'wp-content/plugins/wordfence/images/flags/lt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5�.%V��zl��'),
('9���A���rm�\rX', 'wp-content/plugins/wordfence/images/flags/lu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�5�ڡyn���7�x�'),
('�^L9��ZY����3�q', 'wp-content/plugins/wordfence/images/flags/lv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Cm���|�.�_'),
('hM���x����h��''', 'wp-content/plugins/wordfence/images/flags/ly.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��C̲ۨb#~<Q�'),
('?�z�O{9�&�~=v�', 'wp-content/plugins/wordfence/images/flags/ma.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+�~ɢ̓PxU��'),
('nI�A	�R6��	�}\Z�\n', 'wp-content/plugins/wordfence/images/flags/mc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(�	F�V�yǱ.�m'),
('�/�?���[xL�"�N', 'wp-content/plugins/wordfence/images/flags/md.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(��ok=h�����a��'),
('<�^�^�i6Ե�5��', 'wp-content/plugins/wordfence/images/flags/me.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Zs��L5����U��ʢ'),
('���M���["\\�:P�', 'wp-content/plugins/wordfence/images/flags/mg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����Ě|��d��>�'),
('xxPyܪ��1����', 'wp-content/plugins/wordfence/images/flags/mh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��KQ�:C�YM'),
(' �>e���H��b\0', 'wp-content/plugins/wordfence/images/flags/mk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������0\n�-�o��'),
('%J!Ӧ[�,�}V�Ǖ', 'wp-content/plugins/wordfence/images/flags/ml.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V��1��~e���x���'),
('��]��Zs�@~�OQ', 'wp-content/plugins/wordfence/images/flags/mm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u�k0I�ZAf�ށ�o'),
('ߥ䓿~;��Q2D��', 'wp-content/plugins/wordfence/images/flags/mn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�C�'']j�����n`'),
('����f�<�u@�ܭ���', 'wp-content/plugins/wordfence/images/flags/mo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f���O�};ë1��'),
('�b�����r���>', 'wp-content/plugins/wordfence/images/flags/mp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '冒;�A&n�����='),
('*_���LfV}��xfN', 'wp-content/plugins/wordfence/images/flags/mq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?��H\n� �\rp;IE�'),
('@$"�\r�f(7��U&', 'wp-content/plugins/wordfence/images/flags/mr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��%�{����m�\\�x'),
('k��F��3��l�t', 'wp-content/plugins/wordfence/images/flags/ms.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����ޛy��ǨxW��'),
('��&��L!���}Vm `', 'wp-content/plugins/wordfence/images/flags/mt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�RdZP|�i�Q�މ{�'),
('֮��xb�=�4�@� t%', 'wp-content/plugins/wordfence/images/flags/mu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P�h''�����A(l�'),
('�	��[00�79xv', 'wp-content/plugins/wordfence/images/flags/mv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�{���)�j�J{l�z'),
('(wZ�B�N��ڸ]NSS5', 'wp-content/plugins/wordfence/images/flags/mw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�;�R����1ߴQJv'),
('Zv8~��`�֬���_', 'wp-content/plugins/wordfence/images/flags/mx.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\?���a��ҫ�K/ҋ'),
('�aS��\ZM[h�}�#H�', 'wp-content/plugins/wordfence/images/flags/my.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_Z��f��� �'),
('�JgV#���OY�', 'wp-content/plugins/wordfence/images/flags/mz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"�4ȭ��������7'),
('q��\0.޷\Z`����-', 'wp-content/plugins/wordfence/images/flags/na.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��1�=�X�u��4�'),
('��SQT��#k�N�w', 'wp-content/plugins/wordfence/images/flags/nc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�n���O���x��m�|'),
('���,#N2m�\\�bj', 'wp-content/plugins/wordfence/images/flags/ne.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '̭�BIn��C� s�~'),
('zDZ���؉��Jp����', 'wp-content/plugins/wordfence/images/flags/nf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������5E�����5h'),
('HuQ��{y��	W$� �', 'wp-content/plugins/wordfence/images/flags/ng.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�A3[���EN�"рY�'),
('d4���.�m�4ע�V)', 'wp-content/plugins/wordfence/images/flags/ni.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�2��ԏ�,���fT�'),
('fЭ�J�6�-u�]�', 'wp-content/plugins/wordfence/images/flags/nl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������Kɞ��l\r�'),
('v���%Q*���[Gw', 'wp-content/plugins/wordfence/images/flags/no.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ҒT�ǯW�F��5�~'),
('�MC�Sڒ%,<�''L���', 'wp-content/plugins/wordfence/images/flags/np.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�.�]��H��2��{�'),
('i8�LO尞��sL<���', 'wp-content/plugins/wordfence/images/flags/nr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7��\Z���Զ|�'),
('''�)q���Z�z�s1<L�', 'wp-content/plugins/wordfence/images/flags/nu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��(�m�ß,�G'),
('��''y�x\Z��u��@�\\', 'wp-content/plugins/wordfence/images/flags/nz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�H/ �^"���q\\t�&'),
('����<ʍ8P\0\\=\0+', 'wp-content/plugins/wordfence/images/flags/om.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Z�,;Y���O]&'),
('L[L��A��$8�);', 'wp-content/plugins/wordfence/images/flags/pa.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*�\n�rg�@��<�n�'),
('��(M�R�;o���TPE�', 'wp-content/plugins/wordfence/images/flags/pe.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��<�<�$,�E+<�('),
('�3\Z~s㸆�1�8)/', 'wp-content/plugins/wordfence/images/flags/pf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�9}�=T{��f���\\�'),
('���ʱ''AK"d;���3', 'wp-content/plugins/wordfence/images/flags/pg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ɂ��%X;{�Eҳ]�'),
('�_�&��O~9��R�G�', 'wp-content/plugins/wordfence/images/flags/ph.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ل@ܥ�){v�����'),
('`ڮ/ZE�\0�]�܋3�P', 'wp-content/plugins/wordfence/images/flags/pk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p,������k��'),
('��"�m�韟�o��', 'wp-content/plugins/wordfence/images/flags/pl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���s����풑-�'),
('>��%��p�m��', 'wp-content/plugins/wordfence/images/flags/pm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�,\nK������F�N'),
(':Z�W��_�*�if����', 'wp-content/plugins/wordfence/images/flags/pn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's�;�;�N���n䩘'),
('��i��CX��I�\n3', 'wp-content/plugins/wordfence/images/flags/pr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�I�dM���N��hJ�#'),
('�3��癗�@��<�', 'wp-content/plugins/wordfence/images/flags/ps.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�bHV���z��k1�j'),
('v�e�_a�̴����1', 'wp-content/plugins/wordfence/images/flags/pt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������T:����x'),
('��¹S2��%�=er>', 'wp-content/plugins/wordfence/images/flags/pw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V���0\0L���'),
('!�g�ۇ�C�;F\Z�T�', 'wp-content/plugins/wordfence/images/flags/py.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E��\n��E�)\Z���M'),
('��Ti���q�T�l��}�', 'wp-content/plugins/wordfence/images/flags/qa.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��E�2��́|�n'),
('O�:�23F`����,(2', 'wp-content/plugins/wordfence/images/flags/re.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ph,��,�i�-\r�'),
('��Ԡ$��ֽ*:ܥ���', 'wp-content/plugins/wordfence/images/flags/ro.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���5�VZʹ_�݋'),
('?��mf��\\�-�h�8T', 'wp-content/plugins/wordfence/images/flags/rs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��nP�e�\Z��S<�_�'),
('F�����sT�&�''��|', 'wp-content/plugins/wordfence/images/flags/ru.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q?p�2�^�%�k\Z#�'),
('��xʈp>�k�O�z', 'wp-content/plugins/wordfence/images/flags/rw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ł/T���_n�QE*Pk'),
('�d��#a��8��-', 'wp-content/plugins/wordfence/images/flags/sa.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W���\\LbU�Ch5��V�'),
('zl�G���>?�~�m', 'wp-content/plugins/wordfence/images/flags/sb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�l<�)�J������+'),
('˲J0�\\��V�4��', 'wp-content/plugins/wordfence/images/flags/sc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�@l+�^�+�9U����'),
('?�b�U�,I�������', 'wp-content/plugins/wordfence/images/flags/scotland.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Y5��bG���&'),
('��/j���SA��CJF��', 'wp-content/plugins/wordfence/images/flags/sd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8ڶ�-����,�p�'),
('��v\Z�)��)`o��', 'wp-content/plugins/wordfence/images/flags/se.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]�eF�B�/�$Ir�i'),
('����	�^d�7[xC', 'wp-content/plugins/wordfence/images/flags/sg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�@ӳ�jX��fƚ i�'),
('t���O�$ҥ�h�\r\Z', 'wp-content/plugins/wordfence/images/flags/sh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>G�	{n�դ��['),
('& 6������Ӿ��1�S', 'wp-content/plugins/wordfence/images/flags/si.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\rϕ�5`}�䋅�%�{'),
('W��u��RPbIH�', 'wp-content/plugins/wordfence/images/flags/sk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�x3�i�2f��V.V]G'),
('7��+�8�d�c��@$', 'wp-content/plugins/wordfence/images/flags/sl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.��B`u�,&$���1'),
('潂m�F�=��H�{O,', 'wp-content/plugins/wordfence/images/flags/sm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@7fߧ84������,e'),
('nZ�&���YwL���V<', 'wp-content/plugins/wordfence/images/flags/sn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '컯��u��I�ڍ�t'),
('���e:�̳� ��', 'wp-content/plugins/wordfence/images/flags/so.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Wc@��y;�W&��K�H'),
('&�YMR��z0�vAo2', 'wp-content/plugins/wordfence/images/flags/sprite-des-128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�L��m���F��Q��r�'),
('N��-#�Z3k8��T�', 'wp-content/plugins/wordfence/images/flags/sprite-des-16.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3J��E�E4��M�`kf�'),
('H���&=�����b', 'wp-content/plugins/wordfence/images/flags/sprite-des-256.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U5�!B<R�2��|B'),
('�Zb��W��e`����', 'wp-content/plugins/wordfence/images/flags/sprite-des-32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#5Pa���f�''����'),
('៵�@~G5���2�', 'wp-content/plugins/wordfence/images/flags/sprite-des-64.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+\n4F�6�.\\j	$�R'),
('�f��U�ڬQ7�l�', 'wp-content/plugins/wordfence/images/flags/sprite-des.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9V�ΙT3���u�q"�'),
('�P��)��3t;��ޯ', 'wp-content/plugins/wordfence/images/flags/sprite-des2.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��M�d�TW�cp,��'),
('��w����}�%�euV�', 'wp-content/plugins/wordfence/images/flags/sprite2.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '} �o��Ę_��2���'),
('̹9BF��h��t�,<F�', 'wp-content/plugins/wordfence/images/flags/sprite2.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��������m3;'),
('�o���2-b�t\r��d�', 'wp-content/plugins/wordfence/images/flags/sr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A�a�p��L<zu����'),
('\\?+V�Qa�@����l', 'wp-content/plugins/wordfence/images/flags/st.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�RK�����{���< '),
('�n��94co����k', 'wp-content/plugins/wordfence/images/flags/sv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�v8m�k�D�a\0�S6'),
('�,?hg�c�h��ˡX@', 'wp-content/plugins/wordfence/images/flags/sy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<6�F_.�6E�=T�N�'),
('5�ݵ�C����t4A', 'wp-content/plugins/wordfence/images/flags/sz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':��9�Y/�X9���'),
('V����6�9�sC�!�?�', 'wp-content/plugins/wordfence/images/flags/tc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G/���	������QJ'),
(']���uF��a����>', 'wp-content/plugins/wordfence/images/flags/td.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�9�l0#�8;��6���'),
(']A6p��}��0��v3L', 'wp-content/plugins/wordfence/images/flags/tf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�)�v=^���4�sʉ<�'),
('@��`�u���f���''�', 'wp-content/plugins/wordfence/images/flags/tg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�v�t�o���^��h�'),
('��D���NC�|\\Kd�7', 'wp-content/plugins/wordfence/images/flags/th.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�-�(�o��)���o�'),
('�?��~"�S��%�ɞ�', 'wp-content/plugins/wordfence/images/flags/tj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W�n��X�d,Djn�'),
('��\0��mU���#����', 'wp-content/plugins/wordfence/images/flags/tk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'X�~���k�di�\\'),
('q��U6J�Σ�U�I>', 'wp-content/plugins/wordfence/images/flags/tl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B�\\�X[;O\0w9�� �4'),
('h�W�(g�_�,r�Gk', 'wp-content/plugins/wordfence/images/flags/tm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�}k�Զϯ�1�t�6'),
('Ig�bm�,as�Yp)A9', 'wp-content/plugins/wordfence/images/flags/tn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��3eez�������'),
('�r��y)�v|��r', 'wp-content/plugins/wordfence/images/flags/to.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�j''K���^�e��j�J'),
('�\Z5�V��y�Ǝ����', 'wp-content/plugins/wordfence/images/flags/tr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���_�Js�^��R�'),
('��S-5�-����p�a�u', 'wp-content/plugins/wordfence/images/flags/tt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\r3���tk9V�k'),
('!�����A�;H��W��', 'wp-content/plugins/wordfence/images/flags/tv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����eKgМl�'),
('"\n�k�"cj�i�V��(�', 'wp-content/plugins/wordfence/images/flags/tw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l��7}�aEY�3��Q�T'),
('<*���)�1Yg����', 'wp-content/plugins/wordfence/images/flags/tz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]��#D���ft�>>'),
(']�혏dT���''J�', 'wp-content/plugins/wordfence/images/flags/ua.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�@�s���J�����'),
('.8{''�O�2�i�xCQ�', 'wp-content/plugins/wordfence/images/flags/ug.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r+YkSI���-@^7n�'),
(':Cc*���-�|a4��', 'wp-content/plugins/wordfence/images/flags/uk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(1�l������fB��'),
('���yc�%:����o�', 'wp-content/plugins/wordfence/images/flags/um.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=G�\0	-�k�[��ԇ'),
('�}��3�(�7f�\r��Kd', 'wp-content/plugins/wordfence/images/flags/us.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ŁBb����/�''x'),
('\\/��W"-���Τ1q�', 'wp-content/plugins/wordfence/images/flags/uy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rC����ӳ�AL��)'),
('f''"Y���˱�V��', 'wp-content/plugins/wordfence/images/flags/uz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^zlvY��i6�)6|c4;'),
('���!��z������4', 'wp-content/plugins/wordfence/images/flags/va.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�r)�p��؂�\Zt3\0'),
('g�x8��PM�����o�', 'wp-content/plugins/wordfence/images/flags/vc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jF"�{����|0��'),
('�����ʱ1w��B_/', 'wp-content/plugins/wordfence/images/flags/ve.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Ut�v9Hu\Z*a\\P�'),
('��Sp��*ǁ��a���', 'wp-content/plugins/wordfence/images/flags/vg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~U}\0�$�ը��\0�u~'),
('`�m��[鴡ƿj��', 'wp-content/plugins/wordfence/images/flags/vi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(��~)N�SϢԡ��'),
('��۾���S)�9�', 'wp-content/plugins/wordfence/images/flags/vn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P��᳗vwܶ��PTo'),
(' �S� ���hnUd�x', 'wp-content/plugins/wordfence/images/flags/vu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� �u%k{�m͢(u'),
('ε���`��t�v�S�', 'wp-content/plugins/wordfence/images/flags/wales.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����,�C�o{��v'),
('��D���#I�a4*xM,', 'wp-content/plugins/wordfence/images/flags/wf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/c���  k=�O�'),
('`O(�G7���`	�M@', 'wp-content/plugins/wordfence/images/flags/ws.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L\0N���=H��O�sT'),
('~����OU�������', 'wp-content/plugins/wordfence/images/flags/xk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']�G�l��}$�5�I���'),
(',�7�m=i0`��@*\\', 'wp-content/plugins/wordfence/images/flags/ye.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4\0�7�CK�{DY)'),
('ݏ97X<Թ�/�j\\��', 'wp-content/plugins/wordfence/images/flags/yt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ʉ��rT���\0h��'),
('[�k�Xt��9Nt��', 'wp-content/plugins/wordfence/images/flags/za.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�pCh�"ڟ.��3�'),
('y�5�1\\�m>��G�', 'wp-content/plugins/wordfence/images/flags/zm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��n|�Ϸ{>c��-R�'),
('!�x�s��C	p�h^:&�', 'wp-content/plugins/wordfence/images/flags/zw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�	M�Q���>qQ\r�'),
('.�E�[J��l�x��', 'wp-content/plugins/wordfence/images/forward_disabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M_��Z?�N)�Ҋ�:�5'),
('�\0h�Kf��\0��', 'wp-content/plugins/wordfence/images/forward_enabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U\0/3e4e������'),
('���窒�u��\rZJW+', 'wp-content/plugins/wordfence/images/help.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$N��;''��M���� Y'),
('٘�"P�ܞ��,���', 'wp-content/plugins/wordfence/images/icons/ajax24.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K:�����m𙗣P�'),
('''���� �o���S��', 'wp-content/plugins/wordfence/images/icons/ajax3.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'mw�ߴtꍓ''\n���s'),
('��y�&a�A�7�]Dm', 'wp-content/plugins/wordfence/images/icons/ajaxRed16.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���%���B\ng�2��;'),
('���4�����=��', 'wp-content/plugins/wordfence/images/icons/ajaxScan.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ʖ�Ѵ��~f���i�'),
('j&�V1���6�4����', 'wp-content/plugins/wordfence/images/icons/ajaxWhite32x32.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���r��9 �#��{�'),
('(x*J���,�LÛn�<K', 'wp-content/plugins/wordfence/images/icons/arrow_refresh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k�w�`�`�|�}$G��'),
('6[f�9�?�� _�', 'wp-content/plugins/wordfence/images/icons/bullet_yellow.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J&���Ɍ����ԔQ<'),
(']���*������J�', 'wp-content/plugins/wordfence/images/icons/email_go.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��j��E��H)�.��'),
('����`%��{���+��', 'wp-content/plugins/wordfence/images/icons/error128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:�%7�!��.�'),
('z�5�*\ZADZCk��j��', 'wp-content/plugins/wordfence/images/icons/magnifier.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���uO�{:qcV��'''),
('�Ρ~�ߓ�:�����eo', 'wp-content/plugins/wordfence/images/icons/tick128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ğ��c�h4"���'),
('�;`�$r���$���=', 'wp-content/plugins/wordfence/images/icons/warning128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p�G�I�t*����Np='),
('�X��@��%�1C��i', 'wp-content/plugins/wordfence/images/lightbox-controls.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�m]�a���\\$��'),
('��?���z6���aDz', 'wp-content/plugins/wordfence/images/loading.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K:�����m𙗣P�'),
('�Kj��h����', 'wp-content/plugins/wordfence/images/loading_background.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��''�2��p\nK�X��'),
('ﾘQ�����)B\n�,', 'wp-content/plugins/wordfence/images/loading_large.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Y��{Ob�UW~�Y˙'),
('s♼{DR�[�k�1�I', 'wp-content/plugins/wordfence/images/logo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����''9%(wd��h��'),
('�V,��U3����', 'wp-content/plugins/wordfence/images/rr_premium.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��"�3 ,�2��'),
('#9\rPuLk0��kU�', 'wp-content/plugins/wordfence/images/rr_sitecleaning.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')\r\0������)��5��'),
('���Q�o�H*���(�', 'wp-content/plugins/wordfence/images/sort_asc.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',��I��+ƾ���=��'),
('�lX�w��B�*X�W�', 'wp-content/plugins/wordfence/images/sort_asc_disabled.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Oɧ���*�X���9e'),
('?Yv�q_����ۮXO', 'wp-content/plugins/wordfence/images/sort_both.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��%�B�Qx�SV.D'),
('7�c�.$P!�"�򹚆', 'wp-content/plugins/wordfence/images/sort_desc.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<���j��_�ˊR�2'),
('xy�!���q�)�.ˉ"', 'wp-content/plugins/wordfence/images/sort_desc_disabled.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�m����͟��r�� 9'),
(':mwvK\r�����Z��~', 'wp-content/plugins/wordfence/images/wordfence-logo-16x16.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y�~F,�N8z����O2'),
('F��Oۣ������g�', 'wp-content/plugins/wordfence/images/wordfence-logo-32x32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��@ۯI����uU�'),
('jڿ�t��1u���}���', 'wp-content/plugins/wordfence/images/wordfence-logo-64x64.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v^�I�N/��g@��\\u'),
('E��(�zRA1;eN�qD3', 'wp-content/plugins/wordfence/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2��e��ª��\\��og'),
('����V/־���_�=�', 'wp-content/plugins/wordfence/js/Chart.bundle.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���5]��d����d�f�'),
('7<L�U3�9�TU�3Əs', 'wp-content/plugins/wordfence/js/admin.ajaxWatcher.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�4B;0��f�=Si�6'),
('�"��[Q	����', 'wp-content/plugins/wordfence/js/admin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n�#R�Ԣ�陁fz|n'),
('�������,{H��Ĭq', 'wp-content/plugins/wordfence/js/admin.liveTraffic.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F���uA�\rX���㹭'),
('[Q"ABb.Q����:�', 'wp-content/plugins/wordfence/js/jquery-ui-timepicker-addon.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\�#�kz������I]'),
('w�A�/	����ĉ\\q', 'wp-content/plugins/wordfence/js/jquery.colorbox-min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4?Jǃ�G�`�\n�N�xl'),
('��EN0����6', 'wp-content/plugins/wordfence/js/jquery.dataTables.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'aG��z�����׳�'),
('h�~��x��`h��~?', 'wp-content/plugins/wordfence/js/jquery.qrcode.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Թ���Xp`me<'),
('a\Z�c����r�2���', 'wp-content/plugins/wordfence/js/jquery.tmpl.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\}�"���7ڷ��DZ'),
('����˄�v��+�nG�', 'wp-content/plugins/wordfence/js/jquery.tools.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:-��Eՠx�$�B'),
('He0|�����F0$ؕ�', 'wp-content/plugins/wordfence/js/knockout-3.3.0.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_���B8lc^��'),
('���XiU1`��]���', 'wp-content/plugins/wordfence/js/perf.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uQ�"�wF���R@p'),
('}�0��5���M�Z��', 'wp-content/plugins/wordfence/js/select2.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' bG�.i��TR�U�'),
('��y��/��dz�Qg��', 'wp-content/plugins/wordfence/js/tourTip.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����g>읐1���:}'),
('��|�O�tx|�ꌤ���', 'wp-content/plugins/wordfence/js/wfdashboard.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Խ�P����`�{i�'),
('G#Y@�[r�z�i��1�', 'wp-content/plugins/wordfence/js/wfpopover.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';�&m�A�hlMPZX'),
('R���1?���Y�VDt�', 'wp-content/plugins/wordfence/lib/.htaccess', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�I�z~�i�,L���'),
('��''��FE�A�vQMv', 'wp-content/plugins/wordfence/lib/Diff/Renderer/Abstract.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>\r��5]xVI�''�i�'),
('y���1��-�/fIנ', 'wp-content/plugins/wordfence/lib/Diff/Renderer/Html/Array.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�±���t�T2�y%p�'),
('�-n�$.�#g%�}��', 'wp-content/plugins/wordfence/lib/Diff/Renderer/Html/SideBySide.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p���uQ���: �*'),
('`�c0���\\���3�', 'wp-content/plugins/wordfence/lib/Diff/SequenceMatcher.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�O�"%é�O�DZ�j'),
('ۖJ�Bw�C��|M�v', 'wp-content/plugins/wordfence/lib/Diff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R|�$����V;P����'),
('�&)-â�\Z�Ι�p', 'wp-content/plugins/wordfence/lib/GeoIP.dat', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\ޞ�����h�`��6'),
('�g�RT6KX����\Z�', 'wp-content/plugins/wordfence/lib/GeoIPv6.dat', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�u�d�|x�@�"]'),
('��J���!�[W6ݧ��', 'wp-content/plugins/wordfence/lib/IPTraf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N�݄���\n��tҍ�'),
('K����ߺ�b�', 'wp-content/plugins/wordfence/lib/compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��?H�Y��/2��?T'),
('���SP�;^ƭz��I', 'wp-content/plugins/wordfence/lib/conntest.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�j��"�����r\r'),
('��f�N�d�����L��', 'wp-content/plugins/wordfence/lib/cronview.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Wjۚ�����مO'),
('\Z�;5�(��O�O�R�', 'wp-content/plugins/wordfence/lib/dashboard/widget_content_countries.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�5L,{ׄ��:)�'),
('��zvo:���B%����', 'wp-content/plugins/wordfence/lib/dashboard/widget_content_ips.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[%O���)�;�-��0�'),
('\rҗ�r׾� ���\n�\Z', 'wp-content/plugins/wordfence/lib/dashboard/widget_content_logins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�*v�Ŝ�e���Fv�'),
('��$�o��1�T�2]l', 'wp-content/plugins/wordfence/lib/dashboard/widget_countries.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$����Y�@ǁd��ż'),
('Ws��{N�hP�r�㼱', 'wp-content/plugins/wordfence/lib/dashboard/widget_ips.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '϶�:�p���^ޙ�&'),
('e؟�v���笪�Ej', 'wp-content/plugins/wordfence/lib/dashboard/widget_localattacks.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%8�l��վ����w��'),
('���L��.�\n�w;[', 'wp-content/plugins/wordfence/lib/dashboard/widget_logins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�!�$�7=�� ���k�'),
('�u;Ȍ0�q�w��=��', 'wp-content/plugins/wordfence/lib/dashboard/widget_networkattacks.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�U����P�J�%x��');
INSERT INTO `vi_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('k6���*���H�	�u١', 'wp-content/plugins/wordfence/lib/dashboard/widget_notifications.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��f�?K��C��֩��'),
('���\\^�s,�z(', 'wp-content/plugins/wordfence/lib/dashboard/widget_tdf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Y���I"=���{�(c'),
('���Ƿ�������\n�H�', 'wp-content/plugins/wordfence/lib/dashboard.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l�x>���zKK�b�['),
('����6Ri*5����æ', 'wp-content/plugins/wordfence/lib/dbview.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���(D�e��d�:�]'),
('�)����\0�e�_�5=�', 'wp-content/plugins/wordfence/lib/diffResult.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'IY��Y8�\\@�6d''r#'),
('#\n��/��PZ~h���', 'wp-content/plugins/wordfence/lib/email_genericAlert.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F�B�!@��f�-A���'),
('�����Fe�	57[�', 'wp-content/plugins/wordfence/lib/email_newIssues.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��<j������ʙ��'''),
('��t+���N-�̒��', 'wp-content/plugins/wordfence/lib/email_passwdChanged.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�IwK��mKa{į�;�'),
('''��?�h�	}�Y\0IG', 'wp-content/plugins/wordfence/lib/email_pleaseChangePasswd.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�*�Gs�WcȐ�3'),
('��^�u����}�G��', 'wp-content/plugins/wordfence/lib/email_unlockRequest.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� �E�28.63R��'),
('$��-#q`�l�$W�ۉ', 'wp-content/plugins/wordfence/lib/live_activity.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':�k*$<C��~ݩU�'),
('�RLS�f,�@��L=�.', 'wp-content/plugins/wordfence/lib/menu_activity.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')�0��p�Ҏ���N�'),
('Fa���#<��&$��;', 'wp-content/plugins/wordfence/lib/menu_blocking.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R~�r�䶰�]^C���'),
('<I�#�h��29�����', 'wp-content/plugins/wordfence/lib/menu_blocking_advancedBlocking.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R�f�U���w3�J��'),
('�Dl�ֹ�rS��?', 'wp-content/plugins/wordfence/lib/menu_blocking_blockedIPs.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��&�)�C.2]!�Y�+'),
(';}yh���h4��۫\Z', 'wp-content/plugins/wordfence/lib/menu_blocking_countryBlocking.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n�|�c��y�]��Au'),
('�d�To�f��ҷ�bS', 'wp-content/plugins/wordfence/lib/menu_dashboard.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?f@mϥ9�\\�:R\r�'),
('�W���P旃^q�y�', 'wp-content/plugins/wordfence/lib/menu_firewall.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�x�Uh|��yH�$�r'),
('#���SD�cY����PQ�', 'wp-content/plugins/wordfence/lib/menu_firewall_bruteForce.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����C�k<"KGY'),
('��}��F!��+\r��', 'wp-content/plugins/wordfence/lib/menu_firewall_rateLimiting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`��''�+"��H�>M�'),
('6c�b��kk��i3�@�H', 'wp-content/plugins/wordfence/lib/menu_firewall_waf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v�ЀBfs����;'),
('�WM��{h����(��', 'wp-content/plugins/wordfence/lib/menu_options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���`/�n�>иk)'),
('�6cI�	@۞o����', 'wp-content/plugins/wordfence/lib/menu_scan.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�z_����.H��D�a�'),
('|���^R̟�\0�)�j@:', 'wp-content/plugins/wordfence/lib/menu_scan_options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xT�,�Z��n@���'),
('n#5��;�����-}�-', 'wp-content/plugins/wordfence/lib/menu_scan_scan.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^�i�eU�Ef�Պ5�'),
('��5����ߡFZ��', 'wp-content/plugins/wordfence/lib/menu_scan_schedule.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�A�������ѧ$��R'),
('�o�j����y��V', 'wp-content/plugins/wordfence/lib/menu_tools.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���%%"$�%�/|�U�'),
('!�##sw:\rH*�$q�', 'wp-content/plugins/wordfence/lib/menu_tools_diagnostic.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<�a�pU�m�y;�C�'),
('�C�Q���+�(,`�lg\r', 'wp-content/plugins/wordfence/lib/menu_tools_passwd.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#<�tXڽ�<�1D�'''),
('@�L��߯7�٭kقE', 'wp-content/plugins/wordfence/lib/menu_tools_twoFactor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~d�{pu�~���l��'),
('C��s\\�\n���s��''m', 'wp-content/plugins/wordfence/lib/menu_tools_whois.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��DP�]�䉧W�k+�'),
('�#��>��҆�Kl', 'wp-content/plugins/wordfence/lib/pageTitle.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]���˸�3n`S�['),
('~Ӥ�w�J̼���.�', 'wp-content/plugins/wordfence/lib/schedWeekEntry.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D�1�D1����� .V'),
('��F�����{���A', 'wp-content/plugins/wordfence/lib/sysinfo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Zi�T�T2kU�}�٤'),
('����M~�^x��;��', 'wp-content/plugins/wordfence/lib/unknownFiles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A�{���U���z�[��'),
('LR7Q��ToG|�{', 'wp-content/plugins/wordfence/lib/viewFullActivityLog.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/�{g�/C�)�����'),
('�ٵ\nh��Jx�dv�ԃ]', 'wp-content/plugins/wordfence/lib/wf503.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��(7������H���'),
('��2]hqu:�T6E�U�', 'wp-content/plugins/wordfence/lib/wfAPI.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm����5��E���'),
('#疭ۭ�v"��M�', 'wp-content/plugins/wordfence/lib/wfAction.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@��_����>js'),
('Ɇ8����pŻѵV�', 'wp-content/plugins/wordfence/lib/wfActivityReport.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�A�}V�b_�S��Hו'),
('�ދ���1F����a�', 'wp-content/plugins/wordfence/lib/wfArray.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��e�my��V�M�\Z��'),
('�-=Q�Cw�tnL�#', 'wp-content/plugins/wordfence/lib/wfBrowscap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Q?SXl��4�Z�>'),
('���X����J��p', 'wp-content/plugins/wordfence/lib/wfBrowscapCache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!П�t�4`�KK�Tp�'),
('���1�]�M|�K�FZ', 'wp-content/plugins/wordfence/lib/wfBulkCountries.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}���M슱���_#9'),
('���ґ-���\r�{,�', 'wp-content/plugins/wordfence/lib/wfCache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(1b��"3:�!�`kt�'),
('Z4<n?e�����', 'wp-content/plugins/wordfence/lib/wfConfig.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n�/em4�{�'),
('���B�6[s��M�', 'wp-content/plugins/wordfence/lib/wfCountryMap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']hF�3���k�;�u'),
('8ÛZE�Q$}UP�T��', 'wp-content/plugins/wordfence/lib/wfCrawl.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�L���U/�m`A\Z'),
('�x��βЦ��A	�<�', 'wp-content/plugins/wordfence/lib/wfCrypt.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���W��k|��)���4+'),
('�J��^\Z7��uG�k+', 'wp-content/plugins/wordfence/lib/wfDB.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�c''�w8�Y��Xx;'),
('i����kmCx�ʷ���', 'wp-content/plugins/wordfence/lib/wfDashboard.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3K3�49p�F8��<�'),
('l9��=��h�,>���&', 'wp-content/plugins/wordfence/lib/wfDiagnostic.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n1�j��h(�Hk�s"'),
('�F��\Z����C��1�P', 'wp-content/plugins/wordfence/lib/wfDict.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*��6Att��#�'),
('���A0f��f`� Kǁ}', 'wp-content/plugins/wordfence/lib/wfDirectoryIterator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '켘~d[�!L��A�/�9'),
('=9)���)�\\��', 'wp-content/plugins/wordfence/lib/wfGeoIP.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��#/5��X%@�A[�Q�'),
('q��5@�*=�&��\\X�', 'wp-content/plugins/wordfence/lib/wfHelperBin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';��!�ȍ��4Q��X#'),
('P�M�\Z�I̸�ݭY`r', 'wp-content/plugins/wordfence/lib/wfHelperString.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�OV�FaD�V�4�4ܪ'),
('i�k���C��T,�', 'wp-content/plugins/wordfence/lib/wfIPWhitelist.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i���a|��0�\n�5�a'),
('�js��w2��p��qS', 'wp-content/plugins/wordfence/lib/wfIssues.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����	\\$����8��'),
('�ؠ]�f���P����', 'wp-content/plugins/wordfence/lib/wfLockedOut.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�"��yx�er"�'),
('��w�+"+�$��^�', 'wp-content/plugins/wordfence/lib/wfLog.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`y�C&/"����Wq'),
('�\\��h� R�X�<�C�', 'wp-content/plugins/wordfence/lib/wfMD5BloomFilter.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G�,��ΰ���ڏ�'),
('�tǱ%������F', 'wp-content/plugins/wordfence/lib/wfNotification.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%4�[FS�%��f�QR�'),
('m�qPoD0�*��L', 'wp-content/plugins/wordfence/lib/wfRESTAPI.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FE��W�"*�7�GJ'),
('^k�֪Dv6�R�', 'wp-content/plugins/wordfence/lib/wfRate.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�|\\X�E����\n�W�\0'),
('�ތt+�\\�+�Xa�ZU', 'wp-content/plugins/wordfence/lib/wfScan.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�s�~K��^!hw��\n_'),
('��6X�Ԫ4��[_��=t', 'wp-content/plugins/wordfence/lib/wfScanEngine.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^W\\a1K��v��~�'),
('b���HzfW����gw�', 'wp-content/plugins/wordfence/lib/wfSchema.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�V�G���ik�΋N�'),
('��K2;�<D����kub', 'wp-content/plugins/wordfence/lib/wfStyle.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'բ3S<�)�-���L��+'),
('��h�L���JH�X#0', 'wp-content/plugins/wordfence/lib/wfUnlockMsg.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h\r>�[��?Rg���Te'),
('��e�\\��1�tƋ�<	�', 'wp-content/plugins/wordfence/lib/wfUpdateCheck.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���4��lc��V�C'),
('�Q49��Lz�J�', 'wp-content/plugins/wordfence/lib/wfUtils.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f_���-��u�����	K'),
('�eŐ�����n���A�', 'wp-content/plugins/wordfence/lib/wfView.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '⇲*�!�P�''|�%\Z�'),
('���v{C����ҧ��4I', 'wp-content/plugins/wordfence/lib/wfViewResult.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	qN��K80�O��'),
('�ݡ=��Nx��K�`*', 'wp-content/plugins/wordfence/lib/wordfenceClass.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'a�EY7����\Z2\\��'),
('�kHm�1��`0ѹ��_', 'wp-content/plugins/wordfence/lib/wordfenceConstants.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�"@�Lo��#��=-�'),
('��X����-�4�J�_�3', 'wp-content/plugins/wordfence/lib/wordfenceHash.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n7ܩ�4''i�9U��H�'),
('z�|*6�S\\5��3', 'wp-content/plugins/wordfence/lib/wordfenceScanner.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��(,XP]����C'),
('h�<�]���OpNCƴ�', 'wp-content/plugins/wordfence/lib/wordfenceURLHoover.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B��K��H�gI!�^उ'),
('�v�FI��2h����n�', 'wp-content/plugins/wordfence/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/.�lʣ�v��4�X;'),
('�;L�t�׬C����ɣ', 'wp-content/plugins/wordfence/tmp/.htaccess', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�I�z~�i�,L���'),
('=S�6�a��Xo�,�2', 'wp-content/plugins/wordfence/vendor/autoload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f�\\o��	��jk_'),
('_�k4���!*}��݄ ', 'wp-content/plugins/wordfence/vendor/composer/ClassLoader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>B����aX���wa;'),
('�0��&�Y�������', 'wp-content/plugins/wordfence/vendor/composer/LICENSE', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'JJ˭9FN=���O'),
('"0�rN1M���#����', 'wp-content/plugins/wordfence/vendor/composer/autoload_classmap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�EӤ㭇��M��g��'),
('t������!�\Z�%\n', 'wp-content/plugins/wordfence/vendor/composer/autoload_namespaces.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5�,}vĨ3��G��)�'),
('s��˱�Y*u���O�', 'wp-content/plugins/wordfence/vendor/composer/autoload_psr4.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�:\0��>������}LQ\0'),
('~�Ӹbc��\Z$�@$��*', 'wp-content/plugins/wordfence/vendor/composer/autoload_real.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�c�@�q���xy=`��'),
('��]mٲ�	▭�', 'wp-content/plugins/wordfence/vendor/composer/installed.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'O��fI��8�x�E\Z'),
('{Pz�ҹ��a�e�ӧ�9', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/bootstrap-sample.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K!��೚R�l�q`'),
('~i�I�;ݭ]�A��S', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/cacert.pem', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x-����;����<B�'),
('��nv��Z�YV����', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/init.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���~''r��''T��_�'),
('BJ��O������z�D�', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Z�Tַ�?*=቎v%'),
('���Pd������c�3', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/http.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kYs\Z���칱u�'),
('�^Q6l��J!�	�ͦ', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/json.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�J�aD5H�r����'),
('߹V�=���"�#n�	�', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/lexer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I��	=�~��i��'),
('���r��M�ܴ-\nS��', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\rcmm��j��ik�'),
('�����X/��\0��	', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/sqli.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2Hs�=F�᭝\nnH'),
('n���0�9j�v8�"', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/request.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���(~��0{��7È7�'),
('ҭ�_VlK�g�!p�1', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/rules.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��*�P�)���ȵ��'),
('!�O�4�bCRR�fO�', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/storage/file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1���B���WiN*�'),
('c��[b]���ݽ�JF', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/storage.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q:6��\\��ȅ�[z��'),
('�СqD֚?�i�X', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/utils.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���/8K���W<t���'),
('�''�`F̔�~�Ė��', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/view.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}��J�g�!fy��L�'),
('�������<�x�B�', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/waf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�D�<6�D���%y��'),
('��8K�� ?O]ʹY', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/rules.key', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\ZlY^[F\r�2xʻ'),
('Aػ#���"���j�', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403-roadblock.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Zoo�>���Uw��(��'),
('Q���6K4������H', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��뱝�R�|�$��d'),
('rI\0yg�E!���2\0C', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/503-lockout.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q\0V��0N�~�c��'),
('j���)n�Q8ޮ�D�', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/503.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�N�I��f��������'),
('�\r#�D�je���]w��', 'wp-content/plugins/wordfence/views/marketing/rightrail.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���\Z��]���[,'),
('T?�?:q׮P��ah''��', 'wp-content/plugins/wordfence/views/reports/activity-report-email-inline.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��&Nu.o�k2�\Z1�\0'),
('H���c���I�J%�H', 'wp-content/plugins/wordfence/views/reports/activity-report-email.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ޖ�p�ȕ��#y�'),
('N�d#R��+��r\0s[', 'wp-content/plugins/wordfence/views/reports/activity-report.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G�Tj�$M#�Ԣ%��'),
('֋�8�[�����0�ʊ', 'wp-content/plugins/wordfence/views/waf/debug.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��ʑ�bc�&��Y�z�'),
('��H�a�+����̰I�', 'wp-content/plugins/wordfence/waf/bootstrap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ɢ�R5)\n.J�e(��\n�'),
('�6>l���\rѲY', 'wp-content/plugins/wordfence/waf/wfWAFGeoIP.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I��Z�G�4p��''`'),
('\0�D�`�8R��ɲ%��', 'wp-content/plugins/wordfence/waf/wfWAFIPBlocksController.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x+��!���)��'),
('%����7��娳�', 'wp-content/plugins/wordfence/waf/wfWAFUserIPRange.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�f9�E3�\Z��r��1<'),
('E#���-v37�6�Ť', 'wp-content/plugins/wordfence/wordfence.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h}G�qk�����=�l'),
('��\0ɄI|�S?���h', 'wp-content/themes/advertica-lite/404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KS��j���H,��-'),
('ÇŠM�ʘ���)Y', 'wp-content/themes/advertica-lite/SketchBoard/functions/admin-init.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$����>�i��\0���'),
('��竐����L:', 'wp-content/themes/advertica-lite/SketchBoard/functions/sketch-breadcrumb.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���c�A�!ׁx�K�V'),
('���\Z�%�tb�\Z�(2$', 'wp-content/themes/advertica-lite/SketchBoard/functions/sketch-enqueue.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��b���:/��N!~�,'),
('�����Xm⸇_;', 'wp-content/themes/advertica-lite/SketchBoard/functions/sketch-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/���=z�����f'),
('�Cg�Ģ�T�����', 'wp-content/themes/advertica-lite/archive.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd���ډ�$6�*��'),
('h����>/�˗"��m�', 'wp-content/themes/advertica-lite/author.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��x�$2};{v;�z�L'),
('�6��C�hR�''V�ha�', 'wp-content/themes/advertica-lite/category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ɶ6�F���V&��*���'),
('���F�Jj�֎H�H���', 'wp-content/themes/advertica-lite/changelog.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't�5S�Dj�\n�ڢ��'),
('���]�\n�Z�\Z}�B�', 'wp-content/themes/advertica-lite/comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0�o�[�*�P���$'),
('r�I3���6=2�80dN\r', 'wp-content/themes/advertica-lite/content-none.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���ncY�ۯ�1C�'),
('hk"��$��^���ݚ�Y', 'wp-content/themes/advertica-lite/content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S''���?ax��N��'),
('.Tri�s�Q������', 'wp-content/themes/advertica-lite/css/bootstrap-responsive.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�l��9I�6���m �J�'),
('Fͧ\\�	?}��x�p�l', 'wp-content/themes/advertica-lite/css/font-awesome-ie7.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<������&%�0)'),
('�3X\r��/���~�:G', 'wp-content/themes/advertica-lite/css/font-awesome.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�R�Y�������r�d'),
('�E''<{��O��@�I��', 'wp-content/themes/advertica-lite/css/font-awesome.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@���v넚E�ǐ�;��'),
('v��)����Й��', 'wp-content/themes/advertica-lite/css/ie-style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�g5\n�HV!���s�'),
('���y�6��:Q5���g�', 'wp-content/themes/advertica-lite/css/skt-animation.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lY�{�+��D�T"'''),
('_	��@��f_�Q���Q', 'wp-content/themes/advertica-lite/css/superfish.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��pd{��%Xr�WӼ'),
('�ԕ���KB��>', 'wp-content/themes/advertica-lite/custom-products.php', 0, '��8���e�X��uH�', '��8���e�X��uH�'),
('O�;� {�v�sx���', 'wp-content/themes/advertica-lite/fonts/FontAwesome.otf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']���)�/��%W�>'),
('��R�h�J����iϜ�', 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%�$����!��z��'),
('b��M�*���}���{8', 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��9OhMf��f�]>�'),
('[�ޙ��=KOX�o�', 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]%����5ptHg�'),
('�[��	>.��O���', 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����6��{��9AH'),
('���ځ��O8E�V��', 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.woff2', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��|n����p��v&�'),
('�*:{<<�f��&��?c', 'wp-content/themes/advertica-lite/footer.php', 0, '�Y��؟#w�f��9��', '�Y��؟#w�f��9��'),
('H�$�(|R�LT���^�', 'wp-content/themes/advertica-lite/front-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r���ٌ8Y�����'),
('\n��z�-8�c�FQ�$�', 'wp-content/themes/advertica-lite/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\rV���t����N��'),
('�4�,.�\n�����F', 'wp-content/themes/advertica-lite/header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3L�w.A�Ǖ}�N\r$�'),
('�۲:o����	��@�', 'wp-content/themes/advertica-lite/home.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/�X7Z��-2���f�'),
('�P�~gˬOa�����', 'wp-content/themes/advertica-lite/images/Advertica-Hexagonal-Mask.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ε���K���1\\����'),
('Ҹ��`�\Z�C�aR�D2J', 'wp-content/themes/advertica-lite/images/Advertica.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����x���?^��6\n'),
('��Q 38�q��8�p', 'wp-content/themes/advertica-lite/images/Analytical.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�������9y7�嬶'),
('������`g� d�Tc�', 'wp-content/themes/advertica-lite/images/Avis.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-b�nk��<J\ZmλS'),
('��C-�R<�XMX>~{n', 'wp-content/themes/advertica-lite/images/Biznez.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N"D?�ե��fv	�	p'),
('9��(���	ӌ�&& �', 'wp-content/themes/advertica-lite/images/Bizstudio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n\nZm�0%XB<�x�'),
('���#�su�ՠt�~ߍ', 'wp-content/themes/advertica-lite/images/Connexions.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�h+*��]�p��q��'),
('\r�zؚ����	�a\\Mq', 'wp-content/themes/advertica-lite/images/Convac.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�D�%��L��k�v�'),
('��"4u�l	1���''F�', 'wp-content/themes/advertica-lite/images/Eptima.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f	�|�ʑ��Wʃg'),
('�XÁj(���Z���O', 'wp-content/themes/advertica-lite/images/Foodeez.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''g[Y�v&�GV�	���w'),
('�ۂ�W���Z4h�j', 'wp-content/themes/advertica-lite/images/Fullscreen.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���<_��q��x�'),
('54꜅i��	��v���', 'wp-content/themes/advertica-lite/images/Incart.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$�����ۼ�׫T���'),
('%�ZMh�\Z�ٮI�8''', 'wp-content/themes/advertica-lite/images/Insta-Appointment.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�^\0�털7^�rqNP4'),
('��.��켂�Ă�s�', 'wp-content/themes/advertica-lite/images/Invert.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g���cG�58�8Ox&'),
('E�g�����!e�g�.', 'wp-content/themes/advertica-lite/images/Irex.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��@��f�*K�{�Z'),
('\0��q*�#Q�<�]�', 'wp-content/themes/advertica-lite/images/LeadSurf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�@�V�2���_J�HL'),
('745}zC�^{�ؔi<�', 'wp-content/themes/advertica-lite/images/Parallax_Section_Image.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��9�<X�;��⎿;o&'),
('���e*����5[�''', 'wp-content/themes/advertica-lite/images/Rational.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�L謽���_e&�Be'),
('}I�l�!�\0$�e��', 'wp-content/themes/advertica-lite/images/Sketchmini.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o��좗ݣ[`�%{�'),
('i3�*�V:� a���Z', 'wp-content/themes/advertica-lite/images/Timeliner.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RsHS�?P�q���'),
('�����.ZE��/-R�', 'wp-content/themes/advertica-lite/images/advertica-header.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����60e�(?�A��o'),
(']���Ո2������', 'wp-content/themes/advertica-lite/images/advertica-logo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"�S���Yn*�T]H'),
('�-������<|zX���', 'wp-content/themes/advertica-lite/images/advertica-options-bg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z�2cƘ�!���lO'),
('�?�[܊8�z���A�', 'wp-content/themes/advertica-lite/images/advertica_favicon.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��྄-r��\Zf��y'),
('ʀ��	N"������y�', 'wp-content/themes/advertica-lite/images/ch-arr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�������Lq���L��'),
('���+�.�H��jj', 'wp-content/themes/advertica-lite/images/client-logo1.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\0}O�	!�#�� U��'),
('����������[:v�', 'wp-content/themes/advertica-lite/images/client-logo2.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�M�7����G/+w�'),
('��22�Ǉ\\۫��`�', 'wp-content/themes/advertica-lite/images/client-logo3.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ӓVW�-�,����ra�'),
('�"$8UꚾfϮHdB', 'wp-content/themes/advertica-lite/images/client-logo4.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�JTE���(G�''�����'),
('HB��<Uk�G6��', 'wp-content/themes/advertica-lite/images/client-logo5.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�3��"`%�fk`Q���'),
('��u�*~v�a�l!!b�U', 'wp-content/themes/advertica-lite/images/comment-box-btm.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ڡ���&5C����'),
('=�d���l>I�$$L��', 'wp-content/themes/advertica-lite/images/comment-box-mid.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Z/�/��n��C�g'),
('��E��\0�j2W\Z�M', 'wp-content/themes/advertica-lite/images/comment-box-top.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��9S�h�V�e�O��*'),
('���rΤ�p���}���', 'wp-content/themes/advertica-lite/images/corner-arrow.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4^-4ȿ#�����|�1'),
('��+n��9�ԧbo�=��', 'wp-content/themes/advertica-lite/images/loader.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K:�����m𙗣P�'),
('�^�QO8�lAxcІ9��', 'wp-content/themes/advertica-lite/images/menuulbg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���l�~�!��m�'),
('"m\\L����fR6��o', 'wp-content/themes/advertica-lite/images/page-title-bg.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�2�<��e�l}4�����'),
('�j�����&y�s��', 'wp-content/themes/advertica-lite/images/sketch-logo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y��F���or��r��'),
('����#����o6o�ۖ', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/css/welcome.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�┎o"AUɇOxn}'),
('���X�Fu)v7�i)(', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/css/welcome_customizer.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�H��|.�}��7U6kV'),
('M�t��r�PK@����', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/ajax-loader.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j�j~��Ս:��M��$'),
('�	�v?�&�Tˡ�b�', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/onepirate.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��~#�����qy��'),
('�q��R$�F��9��', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/responsiveboat.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]Ch��0�Ȥq9<'),
('��c훦th����[p', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/zblackbeard.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��w�J��(bF���V'),
('ed�\n�9�(���g@?', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/zerius.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u\ZZ� ����_�\\�^'),
('+ѿ�������9V��', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/zifer-child.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xz�����k�2%j�cc'),
('e�����ݟ8���D=�', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/js/welcome.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����j��t.�F)Z'),
('�Y<��a�w�is', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/js/welcome_customizer.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_T{"Q��zQ���'),
('�����E��M�Be��C', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/changelog.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' f�5+�Z���R�.�'),
('��vX� ��a�A���R', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/child-themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&{�h��P�%�}�0��'),
('��''%\\�}\\� ��Y', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/free_pro.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/�,����R*�	h'),
('@1�9U��b����', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/getting-started.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9V�\Z�#�=��8gѼ'),
('b����țtU(Ez�{''', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/github.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�lșg�\r\n��̼����'),
('N�8�@���ǖ���>', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/welcome-screen.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N�?G�&k+�����&&,'),
('��ؽ���+^�K��*o�', 'wp-content/themes/advertica-lite/includes/advertica-custom-css.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/\0���$ČjH��'),
('v\rz��1bZ=�r,�', 'wp-content/themes/advertica-lite/includes/class-plugin-activation.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':,k�ަy<��ì���'),
('y�>2-�߸�j�:�a', 'wp-content/themes/advertica-lite/includes/customizer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	�3^��\Z�����K�'),
('V��9m�al���\r ��b', 'wp-content/themes/advertica-lite/includes/front-client-logo-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c�''2��+-U�{4c\0�'),
('��z���QqLIι�}e', 'wp-content/themes/advertica-lite/includes/front-featured-boxes-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�pK��8z���\0|�'),
('\r�}b�}�@�[jk54J�', 'wp-content/themes/advertica-lite/includes/front-header-image-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z햅�����(��(&'),
('�#�%8���V�Y��l', 'wp-content/themes/advertica-lite/includes/front-parallax-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'DU����a�7?'),
('Τ�F�gtn''�n�qh��', 'wp-content/themes/advertica-lite/includes/skt-required-plugins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1���:��bO-FWU\n'),
('|�ܻ��0��p', 'wp-content/themes/advertica-lite/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/�X7Z��-2���f�'),
('���[E8��-H�"ʵ', 'wp-content/themes/advertica-lite/js/advertica-lite-customizer.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��"��:o��ρR��'),
(')����l����,�E', 'wp-content/themes/advertica-lite/js/cbpAnimatedHeader.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���>\r4���7�"鯭�'),
('��#=oȸLD�#�[4H', 'wp-content/themes/advertica-lite/js/custom.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\0�[�H�h$�Щ�%N'),
('r�=϶(�I���*O��', 'wp-content/themes/advertica-lite/js/jquery.easing.1.3.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��cW��''�Q~��`�'),
('T9���6:�͸eA��E', 'wp-content/themes/advertica-lite/js/superfish.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	�/���p����-\\'),
('���G���1��v�j', 'wp-content/themes/advertica-lite/js/waypoints.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't�E�ҽ�,��*��W�'),
('\r�ӆRj�����r', 'wp-content/themes/advertica-lite/languages/en_US.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$��*j��Dij����'),
('�gJ-�Z�1�0�X5', 'wp-content/themes/advertica-lite/languages/en_US.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"O���X��7�N�\\�'),
('�R>�^�dR5�IX�', 'wp-content/themes/advertica-lite/languages/en_US.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�9a`dW�\Z�RQ���'),
('56e�7���ÜB�e2v', 'wp-content/themes/advertica-lite/page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���쁙����7MY\Z'),
('T�ǴT��j.3�Y�', 'wp-content/themes/advertica-lite/product-services.php', 0, '1�KmAa���x�Ou��', '1�KmAa���x�Ou��'),
('��w�wf$A��\r��l', 'wp-content/themes/advertica-lite/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��^G\rO�[X?��\\w'),
('���c���l^�J�v', 'wp-content/themes/advertica-lite/screenshot.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j�]���@lM��8�1'),
('r�ߟk�u�f�0���', 'wp-content/themes/advertica-lite/search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ڰ��&rG��[�����'),
('?Q��#L;!��6&&+��', 'wp-content/themes/advertica-lite/searchform.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3ᇹE0@�n�c��'),
('�xs\\�>6p�� Oq�a', 'wp-content/themes/advertica-lite/sidebar-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/o#�r\r�*�JU6�܉�'),
('�C��cWg��a��\\ˈ', 'wp-content/themes/advertica-lite/sidebar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�,�u���kc߲��'),
('��;�P�~�7pi:\rf', 'wp-content/themes/advertica-lite/single.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Te0�1�G���-�+'),
('������^����', 'wp-content/themes/advertica-lite/style.css', 0, '�%�UDⵎ���~�!', '�%�UDⵎ���~�!'),
(':�%\n��X���OY �', 'wp-content/themes/advertica-lite/tag.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3e�¯�;�,�۽xS�'),
('y\r7������\n�@m�', 'wp-content/themes/advertica-lite/template-front-page.php', 0, 'җ@���1�?\nB�A.q', 'җ@���1�?\nB�A.q'),
('��o����G~���7\0', 'wp-content/themes/advertica-lite/template-fullwidth.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r7$�r㭅�GJU�\n�'),
('����J�}F��E\0�9�', 'wp-content/themes/index.php', 0, 'gD,V�=\\�bP', 'gD,V�=\\�bP'),
('&���	P�shcusS', 'wp-content/wflogs/attack-data.php', 0, '#ح\n���y�Ib�\r�\r', '#ح\n���y�Ib�\r�\r'),
('�U��n�/|r@ڪ���', 'wp-content/wflogs/config.php', 0, '�Ċ&�˒������', '�Ċ&�˒������'),
('�A�o�!�V��ų`v', 'wp-content/wflogs/ips.php', 0, '���̀�8���E���4', '���̀�8���E���4'),
('��!��E��S7�x����', 'wp-content/wflogs/rules.php', 0, '3}��[��SFf���', '3}��[��SFf���'),
('�a�Oj''�ŻD*ցV4', 'wp-cron.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�B�vme%�I�v�26�'),
('����v���ό�Y9�', 'wp-includes/ID3/getid3.lib.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�-�dr"�K$��u_��'),
('d��:w���O�І', 'wp-includes/ID3/getid3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���V�z�e=Iu��\\'),
('9ՍҢ��9��d\r�Y', 'wp-includes/ID3/license.commercial.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n;g��J�g����xA�'),
('}�Ȑ�\\L��`���i)', 'wp-includes/ID3/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5ي����hQ3fQ��k�'),
('D.���:�\0��S�R8', 'wp-includes/ID3/module.audio-video.asf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(k��Q����|$�4�'),
('x	G!N�$�.�d�Tb�', 'wp-includes/ID3/module.audio-video.flv.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k�Hi�,W��Q�F���'),
('�oҨ*K��o�7{� <', 'wp-includes/ID3/module.audio-video.matroska.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c����K9j\0�S��i�J'),
('T���vm?,�a���T4�', 'wp-includes/ID3/module.audio-video.quicktime.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''-�nL9 a\Z�!�n�'),
('��\Zv�I:wm�''~K-', 'wp-includes/ID3/module.audio-video.riff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�TfbpGO�-�'),
('����L��6	���׳', 'wp-includes/ID3/module.audio.ac3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�E\0�L;"O�����d'''),
('ǳ\\��_L-Y�Ō%$', 'wp-includes/ID3/module.audio.dts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��V`�L7.��l] '),
('@��+�T΄''����٤', 'wp-includes/ID3/module.audio.flac.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P�|��sq��;�'),
('����N����@�(�3�', 'wp-includes/ID3/module.audio.mp3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�%{/��U��"m��'),
(':�|L�H6(��c�g��', 'wp-includes/ID3/module.audio.ogg.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{܁:�_����Գ}<�'),
('�_)-�]�ˌkO	���', 'wp-includes/ID3/module.tag.apetag.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4l����U��R�9I'),
('���2zs��4x�EB', 'wp-includes/ID3/module.tag.id3v1.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+6���Q��g4'),
(',���@��hj�qrޒ�', 'wp-includes/ID3/module.tag.id3v2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�c����Fy�O*�N'),
('�?�8������Z��N�', 'wp-includes/ID3/module.tag.lyrics3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U��3����"9��2�'),
('(~6vqV�0�{�"', 'wp-includes/ID3/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����Ɯ���VLN[�'),
('i��;��&��o�?', 'wp-includes/IXR/class-IXR-base64.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�*6���D�T�e��'),
('��	�ӭgȱ!n�P�', 'wp-includes/IXR/class-IXR-client.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'QģK�Aϲ]ڎu�YQ'),
('��dx���eB�ݙϟ5', 'wp-includes/IXR/class-IXR-clientmulticall.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��3@���S�\n_��'),
('Z��=ӧ�rc"��y�', 'wp-includes/IXR/class-IXR-date.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��=�''=c.ا��ig'),
('^H\0�B|��4�@z��', 'wp-includes/IXR/class-IXR-error.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g6"���u\\''3����b�'),
('$�ϫ/����!��C�', 'wp-includes/IXR/class-IXR-introspectionserver.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2Ua�w�<�Iw�p�O7-'),
('��~%B�\0�z���?o', 'wp-includes/IXR/class-IXR-message.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'w*�{̰h%D�mr�,'),
('�w�\Z�d�Ϣ��\ruD"', 'wp-includes/IXR/class-IXR-request.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%p.<�Sǡ��z1Ϣ'),
('���al�V�?�f�\Zё�', 'wp-includes/IXR/class-IXR-server.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��w�\\xT�>��:��'),
('3��ng\0��\\\0	�W', 'wp-includes/IXR/class-IXR-value.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��f�>�5l��j\0f�'),
('����\\�M�M�F/�I', 'wp-includes/Requests/Auth/Basic.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g��x̄�	4U�	k!C'),
('J�>�����"��/', 'wp-includes/Requests/Auth.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1��R��W��ÔO[��J'),
('i1��E~N�I�A͔��', 'wp-includes/Requests/Cookie/Jar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�0_��&p��"4�\\�'),
('S�^�7jK5I6K�2!', 'wp-includes/Requests/Cookie.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ѝC���(�2+�y`��'),
('��O­\n	�U��Rb', 'wp-includes/Requests/Exception/HTTP/304.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�;F4�A�I����T�'),
(' <@�s����\r��F��/', 'wp-includes/Requests/Exception/HTTP/305.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'X��\0�K��/`�,��&'),
('8P֧�\Z�HGE}8�', 'wp-includes/Requests/Exception/HTTP/306.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Wsz�uNP�j���Xu'),
('H��Y�fUH�u�pd', 'wp-includes/Requests/Exception/HTTP/400.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q�n���VJ�R�x�5��'),
('/��}㦿L�;?�w\\', 'wp-includes/Requests/Exception/HTTP/401.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';*�������?�d��@'),
('*\\Tҝ)%]�yiD+', 'wp-includes/Requests/Exception/HTTP/402.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`�Y�QP�\nz����G�'),
('��l��3.	XN�', 'wp-includes/Requests/Exception/HTTP/403.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��`��\r�o��k3��1�'),
(';#�	n����%"���', 'wp-includes/Requests/Exception/HTTP/404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��c�Y\0�ys��<M'),
('Y����bڧ,���J', 'wp-includes/Requests/Exception/HTTP/405.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�8т�m!�Ҭ����'),
('��Fj]p� ���Ac\rp', 'wp-includes/Requests/Exception/HTTP/406.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K��l�h�r��9�"\0�'),
('����Nt�K��U��', 'wp-includes/Requests/Exception/HTTP/407.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����v����j&�Ƶ'),
('���\0n:T�q}K �@', 'wp-includes/Requests/Exception/HTTP/408.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@>1d�IX�O��ȷv�'),
('X���v�\Zƒ��"�$', 'wp-includes/Requests/Exception/HTTP/409.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Z�i�~*=������'),
('���T�양�:t[��', 'wp-includes/Requests/Exception/HTTP/410.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q�O47ߺݥ/8X!��'),
(')���|�{4�+]�X(', 'wp-includes/Requests/Exception/HTTP/411.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''�R��M�.�Z`G�'),
('�)����Yh�.�;��š', 'wp-includes/Requests/Exception/HTTP/412.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%��Iܷ��=�7��V�'),
('	�.��5ua�WkJ��', 'wp-includes/Requests/Exception/HTTP/413.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<�]ɐY���XL��'),
('[�Y��44�Or��l0�', 'wp-includes/Requests/Exception/HTTP/414.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��]U�@���)��#h'),
('��}�^72������', 'wp-includes/Requests/Exception/HTTP/415.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'X��Tb�̮�JU�'),
('�g�K�;�qF�VI}�Q�', 'wp-includes/Requests/Exception/HTTP/416.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�1�N9�ɪ�a�Dx�'),
('P&_#�''�zT���s', 'wp-includes/Requests/Exception/HTTP/417.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Bpj�hO^�c\\G #'),
('�D���C����F}��', 'wp-includes/Requests/Exception/HTTP/418.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J!������[��4��'),
('�]P�JQƀ6o֢��;', 'wp-includes/Requests/Exception/HTTP/428.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���i�B��}�^�t*'),
('�O/�ì�`|g�_\0', 'wp-includes/Requests/Exception/HTTP/429.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S��%|F.àZd����'),
('�ʚ�{�(���\\i�7.', 'wp-includes/Requests/Exception/HTTP/431.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��s|b$��ѓ<��'),
('�\r�f����h�8�!', 'wp-includes/Requests/Exception/HTTP/500.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����km�\n	H�M��'),
('�l;ao��~�G��', 'wp-includes/Requests/Exception/HTTP/501.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eڸ04�-?��ב�5'),
('��bm�%����ڭ֫', 'wp-includes/Requests/Exception/HTTP/502.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|�:l��z��!{�G�i'),
('nŢ�)�c���q^"', 'wp-includes/Requests/Exception/HTTP/503.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9�RaßC�`\0�UT�'),
('Oy�}Ma���_���I', 'wp-includes/Requests/Exception/HTTP/504.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�m�̪Db� ��*�'),
(' �\r$	Q�^C(������', 'wp-includes/Requests/Exception/HTTP/505.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]A	3�[/Cd���'),
('�uG#�)�|�^���6', 'wp-includes/Requests/Exception/HTTP/511.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'un�N<Kw�Л����@'),
('������>2\\o�)���', 'wp-includes/Requests/Exception/HTTP/Unknown.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�dl᫁�2�A��\nW�'),
('����W�>�ҟ�����[', 'wp-includes/Requests/Exception/HTTP.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���h����Rlr��'),
('���Iy-�\n�ń��', 'wp-includes/Requests/Exception/Transport/cURL.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�6T�g*\Z�:	�x7��'),
('�rI����ɀ5 �F�', 'wp-includes/Requests/Exception/Transport.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��l��z�� J�^�'),
('T�Ę5VH���P{��', 'wp-includes/Requests/Exception.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����\0��3�\Z�RI'),
('���.Q}3��T�', 'wp-includes/Requests/Hooker.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�@%�a[ў/4��'),
('X��M����xڳ�J��', 'wp-includes/Requests/Hooks.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',�� ���gx�i���'),
('�� �\\����Tn��]', 'wp-includes/Requests/IDNAEncoder.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�}��2����P�ر'),
('�T�B3��G��{', 'wp-includes/Requests/IPv6.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��K�N���knT�'),
('��}z��#����\Z', 'wp-includes/Requests/IRI.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '52]��{�}��	`X'),
('w�''�Pe��F�+��V\0', 'wp-includes/Requests/Proxy/HTTP.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���/2��������)'),
('#y���t(�$NT��t�', 'wp-includes/Requests/Proxy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�@k7�\0��t�\\*��G'),
('G Xe��x��w0\\�o8', 'wp-includes/Requests/Response/Headers.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z�ÂҶ�A-��>c�`'),
('�Y��f/�pw����', 'wp-includes/Requests/Response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�p����R櫷��''G'),
('U� $A=�He�|�zȖ(', 'wp-includes/Requests/SSL.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&Pg�''A6�(�07TO'),
('c42j���x�c��d', 'wp-includes/Requests/Session.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7��݆��Ζ���}l�'),
('�`�@������YE�!', 'wp-includes/Requests/Transport/cURL.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��87a`CZ��'),
('f����B�D�Fr\r\r�', 'wp-includes/Requests/Transport/fsockopen.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!�JO`�\Z�H�H?�?'),
('��.�IOI�P��%�)', 'wp-includes/Requests/Transport.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��;�k���K\\Vl�'),
('~A�H�g����KT��', 'wp-includes/Requests/Utility/CaseInsensitiveDictionary.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��:��R�K�ro�H2z'),
('��/��?�����U��', 'wp-includes/Requests/Utility/FilteredIterator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���a��x�%A��y�'),
('���k�5S�H���Ы', 'wp-includes/SimplePie/Author.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4�q�_�A�%�Nw�1'),
('U�\\p{J��O�Q�&', 'wp-includes/SimplePie/Cache/Base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�C���2]�]#|j'),
(',�hɃs?4B[�^՝', 'wp-includes/SimplePie/Cache/DB.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y�OU���.�b���'),
('�����V,E@�X���y', 'wp-includes/SimplePie/Cache/File.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�=�@��B[	S�'),
('����I�:4P�U���', 'wp-includes/SimplePie/Cache/Memcache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��JU���1SQ��?�'),
('<)8T*.�SuS�ĺ�', 'wp-includes/SimplePie/Cache/MySQL.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���B�C�\ZH�xV�'),
('Y֝��U����}�r/', 'wp-includes/SimplePie/Cache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y���:�oMh�vL�4'),
('���"ܒ����nzD', 'wp-includes/SimplePie/Caption.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����BjM��g[����'),
('���q�K�U�j�', 'wp-includes/SimplePie/Category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~��?��.\nܯd�*'),
('�l&�*�������&', 'wp-includes/SimplePie/Content/Type/Sniffer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|r��i�Ub�lw����3'),
('���an���V=Ty X�', 'wp-includes/SimplePie/Copyright.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��h�T��	Ù���j'),
('�o�ǣ�	ף�f0�Y', 'wp-includes/SimplePie/Core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���#��������\Z�'),
('ͽ3��=��O�G�|~�', 'wp-includes/SimplePie/Credit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��M猋*>\n�|'),
('���P�Of;���/��', 'wp-includes/SimplePie/Decode/HTML/Entities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E�^/�\rB���Z#�%/a'),
('2��^(��ʭ�-^x��', 'wp-includes/SimplePie/Enclosure.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.�B�n΍K�s]'),
('�\nfv�8���1���-I', 'wp-includes/SimplePie/Exception.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	K�v&���<\\ڏ�S5'),
('��4r�%����j���', 'wp-includes/SimplePie/File.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���kU�6�\n�+�)%�'),
('�Pط��悇̺ƴ$@�', 'wp-includes/SimplePie/HTTP/Parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W%���4�6���6	'),
('oZ0�������<c�0', 'wp-includes/SimplePie/IRI.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n� �憒�;a{�_6�'),
('f�����e��R�)�', 'wp-includes/SimplePie/Item.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E�!�Cz�\0�c<ܧ'),
('�TB��O>�v2��}Ea', 'wp-includes/SimplePie/Locator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�s����;�uvf^��'),
('FF�v��V;v�8/�\r��', 'wp-includes/SimplePie/Misc.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���y�-���^�\ZK�'),
('�Mj�A�M��O�"If', 'wp-includes/SimplePie/Net/IPv6.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Fy!j�ـ�����'),
('�B��ه�v<Sv稳', 'wp-includes/SimplePie/Parse/Date.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���\rȯƹeҹ��^'),
('�tfF	�r{�܇�_I�x', 'wp-includes/SimplePie/Parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R�.�b���~����+�'),
('d�hħ{q4�2�K"�', 'wp-includes/SimplePie/Rating.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=p�m	�K�دat�'),
('}�7 ޘ�DHD�Pl', 'wp-includes/SimplePie/Registry.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ȣ����1v9�d\0�ٸ'),
('\0`Y�ϭrG����', 'wp-includes/SimplePie/Restriction.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*qhd�s�;�y'),
('[���1�YAdk�,', 'wp-includes/SimplePie/Sanitize.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Bظ��F�إ�H��u'),
('��0l��j�0+%�', 'wp-includes/SimplePie/Source.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������S{�*���'),
('��''g!�:�H��),�', 'wp-includes/SimplePie/XML/Declaration/Parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���p(Å��B��s#b'),
('ZҌ�[��\nv���	F', 'wp-includes/SimplePie/gzdecode.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�8��a��al�4�'),
('O�hu�G���&\0�L�', 'wp-includes/Text/Diff/Engine/native.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''*�����*�x'),
('ǂ-i)�.�\\���z�^a', 'wp-includes/Text/Diff/Engine/shell.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u�Aܑ�~J�^t����'),
('� @�;��*��|��', 'wp-includes/Text/Diff/Engine/string.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':��=�M��\0��i)'),
('e�^#|ۍ�TЩ��z', 'wp-includes/Text/Diff/Engine/xdiff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ֹ�b�t�X8�GX'),
('&���Rw?~�j�hJ�D', 'wp-includes/Text/Diff/Renderer/inline.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\n�n5�P�����B''�'),
('3��fQ3�h�5[��W�<', 'wp-includes/Text/Diff/Renderer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�� �C0�Y7O�@�GS'),
(']B#�2�z���bU��/', 'wp-includes/Text/Diff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lp՞��n��7q��*'),
('-kdϯ���X�w\\7���', 'wp-includes/admin-bar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P׶Jk�5P�E)���/�'),
('Gu�^�/1��ՁS�7', 'wp-includes/atomlib.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��p{AxWZ���m^d�*'),
('�&�S짿o�$��0�n', 'wp-includes/author-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z7�?<vғi)���z��'),
('�>�s�l�WD7�M�', 'wp-includes/bookmark-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�g[lgP	���55"�'),
('��\0�>#����z(', 'wp-includes/bookmark.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i�!5Jl$(��T�'),
('ǅ�9��9:���\Z�', 'wp-includes/cache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�=]𮂿q�\r�:!��'),
('�2G�?�_��\\���-B', 'wp-includes/canonical.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$$Z3\n��"�k�εZ�'),
('��YC��o�oR�亞�', 'wp-includes/capabilities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9�;6����u�'),
('�j��I���<꟟��iU', 'wp-includes/category-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ޭ{�,w뻔��"sb�-');
INSERT INTO `vi_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('D��5\n''�\\��~W��', 'wp-includes/category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e�Em���xO^1��j'),
('mD��T�ms���A�}', 'wp-includes/certificates/ca-bundle.crt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�{޽�A��6��Xi,'),
('�J���y��0m�`�/', 'wp-includes/class-IXR.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2�v��0p"�+/zb�+'),
(':<�$��0,w"&e({', 'wp-includes/class-feed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�)$k��3\\ ���2E�'),
('!���@|�4��n���', 'wp-includes/class-http.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��87�5�q	*��!'),
('�&�Zh�$�Éo�', 'wp-includes/class-json.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��B{�vC�ޯM��A�m'),
('��E����Q?��	(�', 'wp-includes/class-oembed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<Z��\0����X��e'),
('	QW���~-�\0d�', 'wp-includes/class-phpass.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z!��T�����B'),
('�8�ڧ��s}��ն�Ni', 'wp-includes/class-phpmailer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>��Զ�ߙO#��Z�'),
('"�����u>1�7���', 'wp-includes/class-pop3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KTQȩ:O!�@T��y'),
('��*�7\r��?��', 'wp-includes/class-requests.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9e��/��uaz��"<'),
('��\\ ��Iѻ���,', 'wp-includes/class-simplepie.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r��''�h���X}H�'),
('��Κ,�Q�a�gl��\Z�', 'wp-includes/class-smtp.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�+"Z<Kt�ȫ:�ҕ'),
('e��__�%��x���', 'wp-includes/class-snoopy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's�\\�Ņ���ϼ�.�	`'),
('�)ũ��2[�	�4�_a', 'wp-includes/class-walker-category-dropdown.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	�߶��yv��%`,��m'),
('�c��nx�Ժ|�', 'wp-includes/class-walker-category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9\\3�eD{:r���=J'),
('K�K+��2�	aeZ�e', 'wp-includes/class-walker-comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/(c�AQ\\����S'),
('�����(觨:pR�/', 'wp-includes/class-walker-nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�N�q[;���d�:'),
('J�\rӷG>�����', 'wp-includes/class-walker-page-dropdown.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G�|F��y��)W���'),
('5S{�TƁ���e�/�', 'wp-includes/class-walker-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Kl����N`�w�Th'),
('ֶ��9؞f�po3t', 'wp-includes/class-wp-admin-bar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9��Ԇ���Дh�W��'),
('ֻE\n�<�B�[�,', 'wp-includes/class-wp-ajax-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!Z�k��Og���}�'),
('��\n�ӛIQED	���', 'wp-includes/class-wp-comment-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��x�0�Z��Gt'),
('T�r���~�W]�', 'wp-includes/class-wp-comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',g��F��;�`Bg���'),
('ȍP�� �3����\n��', 'wp-includes/class-wp-customize-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e�龚\Z)]<���O̰'),
('h\ZOhl��_��Lm/�', 'wp-includes/class-wp-customize-manager.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ʪ%6r��Ϡ+V�V'),
('`��U�2���mdW', 'wp-includes/class-wp-customize-nav-menus.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L�CH�T2�\r��z�'),
('\r�ҧxOz���z���h', 'wp-includes/class-wp-customize-panel.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�1[��,�S�-�.B��'),
('��-x�(�E�oI�=�', 'wp-includes/class-wp-customize-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�o�HO� �9-9c��'),
('f�u3\n�M\\�}6*0�', 'wp-includes/class-wp-customize-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']�!X��-k�9"��Ð�'),
('�J��ёe�\rXd��$�', 'wp-includes/class-wp-customize-widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H�1Ȥ$^���p�'),
('j�gs�66�$��8*�E�', 'wp-includes/class-wp-dependency.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	�\\���MHF�?Ft��'),
('��ɱ%��a{Z�j	%�', 'wp-includes/class-wp-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��	��k�\Z����#'),
('5`�]\\ͭi\0���\ZJ�T', 'wp-includes/class-wp-embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\��)c�b��''n�'),
('��k{��&��x\n��', 'wp-includes/class-wp-error.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1�T�(0���W��8'),
('O =(�:��<�	�1F�', 'wp-includes/class-wp-feed-cache-transient.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��-3��ǫ�����"'),
('֌��q�ó�X�[���', 'wp-includes/class-wp-feed-cache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�b��V\Z�B=�x�=�'),
('#D�ń�����5%��', 'wp-includes/class-wp-hook.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����I������.18'),
('��&B�5V�AUU,��', 'wp-includes/class-wp-http-cookie.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��e��.�s�ʈ�F�'),
('���#�iJ�H�?�@�', 'wp-includes/class-wp-http-curl.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Q��G�#J�RÙA�'),
('��MO,���s���\r��', 'wp-includes/class-wp-http-encoding.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k�k��b�7�h�^#<�'),
('��u�X�ݼ#�-����', 'wp-includes/class-wp-http-ixr-client.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���?oaZ�;l����'),
('g�f�1�۶�y�;�_', 'wp-includes/class-wp-http-proxy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�=����M\Z{�8)v�'),
('�@��M]"���iNJ', 'wp-includes/class-wp-http-requests-hooks.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oڟ���D\nF-�'),
('�B y�w�+���|t��', 'wp-includes/class-wp-http-requests-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's�{,i�{9�ʯ�z�&�'),
('��ڷt�g�Z�gE�', 'wp-includes/class-wp-http-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_Ow�	\n�B=<E'),
('߰S����h[�۳�', 'wp-includes/class-wp-http-streams.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ں_^l�e�1�a�ו�'),
('>��X�\r�b��ڟ�$W', 'wp-includes/class-wp-image-editor-gd.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����Ϋ�ި6@�P'),
('��^��bR��SI�!�?', 'wp-includes/class-wp-image-editor-imagick.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���ƈ6�0s�yMl�r�'),
('����T\n����e.(��', 'wp-includes/class-wp-image-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��&�MYz�,s=֣�o'),
('�`Sk��7Tt�v��X�', 'wp-includes/class-wp-list-util.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\Z9��Eౖ�䙜[�'),
('Lz����Z���#�<', 'wp-includes/class-wp-locale-switcher.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�,�=0H��Z���'),
('�1l<� t~L�Uw�', 'wp-includes/class-wp-locale.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�k�h��xq�?�;�eB'),
('�"�qUy���9�%Q�', 'wp-includes/class-wp-matchesmapregex.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'YCդ�<b��9fԎiFe'),
('Gu��������ʭ�', 'wp-includes/class-wp-meta-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���6�!�ڭ�}�p'),
('\Z��\Z:\\��Rf�P�~3', 'wp-includes/class-wp-metadata-lazyloader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����F��,�1��'),
('�w�h]�á�&�wM��', 'wp-includes/class-wp-network-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|�xH��?�#�8sR�z�'),
('8ܞt��\Zw�Nxa��', 'wp-includes/class-wp-network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�>�������Gh��u'),
('P��@���;b<\n�c�', 'wp-includes/class-wp-oembed-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9>���@O8C��mv�E'),
('~V��Xa]�7p�|R', 'wp-includes/class-wp-post-type.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<��xtʋ��o_�C���'),
('~��ReOX�f2��`�', 'wp-includes/class-wp-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''svw������2d�5?'),
('�-h\n\r`��ýەC/s', 'wp-includes/class-wp-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����S�<j��lx\n�\Z�'),
('�M\Z����H�?ͲZ', 'wp-includes/class-wp-rewrite.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p�V��b�3;GlB@:'),
('\n���f�Ӆ;{�t��', 'wp-includes/class-wp-role.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^mi�*�O�Nt�y'),
('�ǀ3�<��&��YĆ', 'wp-includes/class-wp-roles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q���J;����^T�u'),
('�x(�ťܺ�.���Շ', 'wp-includes/class-wp-session-tokens.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f�Bȵ�3�@x;ψ�'),
('����ސ�q�ic�=�', 'wp-includes/class-wp-simplepie-file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��h}v��OƋ�7k�_'),
('<.��4�v��c�"`�t', 'wp-includes/class-wp-simplepie-sanitize-kses.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'cU^Z���]aLęI�'),
('���W����=�ԘHd�z', 'wp-includes/class-wp-site-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't�^�P&F��_G����'),
('�b~5�a���I@)*�', 'wp-includes/class-wp-site.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���m-��\0DR�$�o'),
('�\\�S�Շ��8��;2', 'wp-includes/class-wp-tax-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�B��W�e�#(7�9'),
('�~Q�ԁŴFp���', 'wp-includes/class-wp-taxonomy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/���&}��.��0�-'),
('���I0��B,�hʛp', 'wp-includes/class-wp-term-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i ��r�](\\�=�<e'),
('ݖ�''�"|3�_�t|��', 'wp-includes/class-wp-term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[���|����s��X'),
('��Ǣ�Bմ(�\\�0J', 'wp-includes/class-wp-text-diff-renderer-inline.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�D���U���U�v?�'),
('J�%.��~�q�l�', 'wp-includes/class-wp-text-diff-renderer-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5��3�''�pdy�Y�\n�'),
('�#�?���Gc	¯l1e', 'wp-includes/class-wp-theme.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$''�+e�A�����'),
('�絛�zy���>_+�t', 'wp-includes/class-wp-user-meta-session-tokens.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����׆���?��I'),
('�9��l�ן? r��q�', 'wp-includes/class-wp-user-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���Ȟۛ���+|KA'),
('R�\\�&��T	�|`', 'wp-includes/class-wp-user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\��v�c��7u�'),
('\0��]�a�v���CY', 'wp-includes/class-wp-walker.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':Ws��ho��7�-��a'),
('�{�1��"��^���.', 'wp-includes/class-wp-widget-factory.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�u�{M�Ҥ�3[ى�'),
('�Djמ�8]fД_�', 'wp-includes/class-wp-widget.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�vZ9�dOA��p��5�'),
('j�䱋����%���]�', 'wp-includes/class-wp-xmlrpc-server.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����L��9̀J��_'),
('$���C����/�9��', 'wp-includes/class-wp.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\ZO�3\Z��g��!|�S��'),
('y���E�a��:�[\0', 'wp-includes/class.wp-dependencies.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'XWv�ڟϡ�ړJz��'),
('�����;~ӷR�>��', 'wp-includes/class.wp-scripts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���4���X(I�|[�'),
('9ψ[�1d{���@', 'wp-includes/class.wp-styles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�U�:0\n�RǄha�6'),
('=��k�[4��� ��=�', 'wp-includes/comment-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���r�tF�>�ε�mb'),
('�S����KK2iɈ', 'wp-includes/comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_�G�Kk�N����c'),
('�_\\c9mL�v��1���', 'wp-includes/compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '؈^$p�_k�E�'),
('�-"D��ʹD�5a�/', 'wp-includes/cron.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�H�L1���rB$wb�V'),
('����=֬H�@-i��', 'wp-includes/css/admin-bar-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'PܷbdzI.Gi�	G�H'),
('�{ڭd3T�Xy����7;', 'wp-includes/css/admin-bar-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ߟ��WͤoS�U�G'),
('�Ȇp���]4��L��q�', 'wp-includes/css/admin-bar.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Z��j�<Ȉ��'),
('�I"�p��t�Q��[Z6x', 'wp-includes/css/admin-bar.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z\r���%*�"��'),
('t8����p�̋�z{jDp', 'wp-includes/css/buttons-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\r]1�|0p�u�*�'),
('��Ul1�ȕD�bmg�', 'wp-includes/css/buttons-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' =!��<0�F�-�#2'),
('���;�^𩸴8c�', 'wp-includes/css/buttons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^K/B<s�l�pTj8C�'),
('�з&�L۽¨��VN�', 'wp-includes/css/buttons.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Qfc��eJ����+'),
('F�\\�C?�Z�����', 'wp-includes/css/customize-preview-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'QIR�m��b�@�d��'),
('���Ư��0~\rjA4u', 'wp-includes/css/customize-preview-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ˑ��ѡ�K��iӰO�'),
('�gV���HIw��!���', 'wp-includes/css/customize-preview.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��RȆ��0$�i��'),
('�y�l��s�U>�<��', 'wp-includes/css/customize-preview.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i�Ȏ?=F�ځ����X'),
('��p��S��`�]T]D�', 'wp-includes/css/dashicons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�׃𫙼�Gu����'),
('�L���yE�{��f�', 'wp-includes/css/dashicons.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�<�&� %��!8��\rS'),
('�po���X0%������', 'wp-includes/css/editor-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f��:.s~i�{L��'),
('ꍥ��2jEbg؈W�x�', 'wp-includes/css/editor-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���~�I�?���W�5'),
('LsЇś\n�c}>�K��', 'wp-includes/css/editor.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�{C��c��ؤ�!�0%'),
('_�|��T�M^���J', 'wp-includes/css/editor.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'հ?\\�67�lV^��Up'),
(' ��c̫)I�\np,͑��', 'wp-includes/css/jquery-ui-dialog-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����b����.|Ri'),
('~F��㫎>dy��j�', 'wp-includes/css/jquery-ui-dialog-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�.�R��8��)��I'),
('i��PÙ��ld\0��', 'wp-includes/css/jquery-ui-dialog.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�4{�GjƶF�Eiyp�'),
('@V�$�K���<�1*��', 'wp-includes/css/jquery-ui-dialog.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��E�����ޒ@*�'),
('\05g���꫔c�0�"D', 'wp-includes/css/media-views-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[M�I��!�g��~|�'),
('_�����8}���?�', 'wp-includes/css/media-views-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G1CFp�"��M�a0�EX'),
('��Sڰp��GMǯ�l�', 'wp-includes/css/media-views.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%�pT3���ܐ�\Z��'),
('4%�IH�O��ʰ�L', 'wp-includes/css/media-views.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*\Z��)��x��\0���'),
('Ǥ>z�Ԅ��!J]>', 'wp-includes/css/wp-auth-check-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����������:9�H!L'),
('�Y$''����o���', 'wp-includes/css/wp-auth-check-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[�L.�TR�@��矻'),
('��,CUU����9i-', 'wp-includes/css/wp-auth-check.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�u,�ș��)~�G���'),
('Y�68�H;%,�_c\n�', 'wp-includes/css/wp-auth-check.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��O���;}��$�HBҔ'),
('�w��5�����)���', 'wp-includes/css/wp-embed-template-ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�)6��	؞мq ���'),
('ynm�;�/�UsK	��', 'wp-includes/css/wp-embed-template-ie.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z�<�wV���\nӜwr'),
('�/�ɘ�]�^�W\\�q', 'wp-includes/css/wp-embed-template.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�R�L��j��h��2'),
('z��Q<��''��U~�R\\', 'wp-includes/css/wp-embed-template.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'C3��Jd��mt�GV���'),
('\\[��i%Ͱ<��e�>�', 'wp-includes/css/wp-pointer-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����LQON���8@'),
('jQ���e���;�e', 'wp-includes/css/wp-pointer-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'En�Ve�l��W��'),
('s�C4M�*��*B�)�', 'wp-includes/css/wp-pointer.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Lh(�(Ȁ�����'),
('-��藂��Y{]ns�', 'wp-includes/css/wp-pointer.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~�ׂ`.�\rݑ�`�x'),
('�x�W���2e�uv�L', 'wp-includes/customize/class-wp-customize-background-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'pχ����t|�3'),
('�V�^�3��m6�._P', 'wp-includes/customize/class-wp-customize-background-image-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')�@�t��j23��W'),
('��D���6�S�/�cQ�?', 'wp-includes/customize/class-wp-customize-background-position-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n]�3<L(ɰ�p�H�'),
('MY��G��\\tX����/', 'wp-includes/customize/class-wp-customize-color-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~�\0\09�&�c��u��'),
('�''T����́��Y�Ǚ', 'wp-includes/customize/class-wp-customize-cropped-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[W''"�f��Iޙ��t'),
('�N�������s��', 'wp-includes/customize/class-wp-customize-custom-css-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F�����\0Z�ꦖe'),
('��Y�\0)\r/j�)�Ar', 'wp-includes/customize/class-wp-customize-filter-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��`Vv�>A�� �$��'),
('Zx��1�2K�Z�,��', 'wp-includes/customize/class-wp-customize-header-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+�-���h���г׹��'),
('�����''K�z�f��', 'wp-includes/customize/class-wp-customize-header-image-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3���p��G�s�0�'),
('�>���\n�5����Z', 'wp-includes/customize/class-wp-customize-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ui�h-�� ���K�'),
('*�O�������i', 'wp-includes/customize/class-wp-customize-media-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r�t�j+Iq8�6��'),
('�hS����:���`', 'wp-includes/customize/class-wp-customize-nav-menu-auto-add-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n����Zm�d�5�9�90'),
('�3ƹܕj�bi�Υ�', 'wp-includes/customize/class-wp-customize-nav-menu-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ŏ��ο�l�<�6�H'),
('C�ؚ�T�R�!vF{', 'wp-includes/customize/class-wp-customize-nav-menu-item-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�n�d�PWY�]�\Z�2'),
('��{�	\n|p�٤', 'wp-includes/customize/class-wp-customize-nav-menu-item-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�KiGm�Pj�w�d\Z?�'),
('b��+ƴݟ�3�', 'wp-includes/customize/class-wp-customize-nav-menu-location-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!�z��NHo;%���?'),
('�G� ��~����`�', 'wp-includes/customize/class-wp-customize-nav-menu-name-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{�`ٖ�_�7T��ȥ3'),
('�-��B��|tS^�', 'wp-includes/customize/class-wp-customize-nav-menu-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\ÓBp\rhq�''Tdo�@'),
('�k0B��a��`�', 'wp-includes/customize/class-wp-customize-nav-menu-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x��h�?��ץ?Q&�'),
('x��m���\0�~���', 'wp-includes/customize/class-wp-customize-nav-menus-panel.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��u�:Q&����S�'),
('�@}&�J~�¾&��\0', 'wp-includes/customize/class-wp-customize-new-menu-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[��!���A[�\rZL��'),
('2��㺨a|F�l3]�', 'wp-includes/customize/class-wp-customize-new-menu-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���dB;�Ǯ\nJ��m'),
('�����Y����q�', 'wp-includes/customize/class-wp-customize-partial.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%�w�Y��$��\n��u'),
('y��\n�,\nC�|[i', 'wp-includes/customize/class-wp-customize-selective-refresh.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����;Wl��}�*\r�'),
('T6K?���s� �7(�', 'wp-includes/customize/class-wp-customize-sidebar-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!T+caβF��������'),
(' �,eO���z��Ñ�', 'wp-includes/customize/class-wp-customize-site-icon-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '߅4�gA��]��G�<�'),
('�?Ǆ����:\n��X', 'wp-includes/customize/class-wp-customize-theme-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�%���t��_�����'),
('��XQ���d9r�ڼ��', 'wp-includes/customize/class-wp-customize-themes-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.��������1"AV'),
('�e�\\�k�c��Xf', 'wp-includes/customize/class-wp-customize-upload-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J���F�yž�r@�{'),
('[5���Y�Nh���K�M�', 'wp-includes/customize/class-wp-widget-area-customize-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�A��������C)�'),
('\nT��/\\9$Y�U\n��͌', 'wp-includes/customize/class-wp-widget-form-customize-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�������\r\0}��'),
('�\0�����.}�fwA', 'wp-includes/date.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' H�����3=s\Zr�'),
('}���{RҢ����"', 'wp-includes/default-constants.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K��oh⛱=7_��S'),
('��R�,�A���\Z�GJ''-', 'wp-includes/default-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'EIsu]��"6�����'),
('VL6�7G^l%D5z3��', 'wp-includes/default-widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�OiT�0�*\0�h�)g�'),
('p��.а��[ÍD�', 'wp-includes/deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�L�*f�D�IWM��e'),
(')���]���Z$�P%', 'wp-includes/embed-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�>��EVJ{;6�!*'),
('�9e���kk�R�o���S', 'wp-includes/embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���p�O�����仫'),
('"����b9��e�|�_�', 'wp-includes/feed-atom-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.���s�����Pu��'),
('����2@�k�w>K�2', 'wp-includes/feed-atom.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\0�,}5�}�C~��'),
('�ȼ�؟�''\r`����', 'wp-includes/feed-rdf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|�dd���a6���''ޚ'),
('�])��	���{�?R}', 'wp-includes/feed-rss.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M�3�?����g�.B\r'),
('��߲;��0����', 'wp-includes/feed-rss2-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��w�R�����/łM�'),
('_*�⽞L�0�>\r', 'wp-includes/feed-rss2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�	gT��0|�mq��'),
('{�RC��\Z�.*"�Q', 'wp-includes/feed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������)�j�Ỳ'),
('��\Z5o��#R''/��l', 'wp-includes/fonts/dashicons.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0���!_����y�H'),
('΢�S˪�\n��B�V"', 'wp-includes/fonts/dashicons.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xih�7�w#؟���'),
('���<kUJv%��1��', 'wp-includes/fonts/dashicons.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���F��F����Ń�'),
('��f0��ͭ��~�)', 'wp-includes/fonts/dashicons.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z�_rY+ʂ;�'),
('�ŉ�	i����/Э', 'wp-includes/formatting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kw��kM��5̳"�oa�'),
('\Z������)qtsCI9', 'wp-includes/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��E�\r(��q\\^4�{U'),
('�b`K�''��컜���K', 'wp-includes/functions.wp-scripts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�؇X=�|}���%�U'),
('h d��껅2��_�r', 'wp-includes/functions.wp-styles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�e�J�8�Z�W�2��'),
('�0���R�J�{y�ˣ��', 'wp-includes/general-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Z�{\Z0�11''�#�'),
('�/&�����2�ѡ\rgDs', 'wp-includes/http.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W`���AW\Z�a�,at�'),
('.IhU���3��+B\Z��', 'wp-includes/images/admin-bar-sprite-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Q����8��o��'),
('��Ư	''CԻ��ګ\Z', 'wp-includes/images/admin-bar-sprite.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S���:�W����^'),
('r�_�/��HG=�%�<�', 'wp-includes/images/arrow-pointer-blue-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%m�rތ]4�9c�'),
('@��̘9�#�L�y(��', 'wp-includes/images/arrow-pointer-blue.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'w��b�·*L���[��'),
('�G��5�@����07��', 'wp-includes/images/blank.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H�+��51	��f]��9'),
('�>�M�8� ٵ��|', 'wp-includes/images/crystal/archive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�S������I0An�'),
('�J''#��rN�0a\r�', 'wp-includes/images/crystal/audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�nV�:�ω�G��-#k'),
('w���L��0���]r.', 'wp-includes/images/crystal/code.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`�1������1�9'),
('����!ެ��߳���p', 'wp-includes/images/crystal/default.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A�>)*/��!�-�'),
('Dm�\n��z�H��S���', 'wp-includes/images/crystal/document.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''^c�s���D��3T\\'),
('j�����5F+���o', 'wp-includes/images/crystal/interactive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�R�m`��`�9��'),
('�Ǌ�E�v�c,�صyS^', 'wp-includes/images/crystal/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]�Lc�iG�fQ�\r��'),
('^�Ð����+�y|�', 'wp-includes/images/crystal/spreadsheet.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5�9�Т1�T��n��'),
('�������"�R�Ŝ', 'wp-includes/images/crystal/text.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�� Ѳ��#�d�%�[�'),
('U���$i"u��&���9', 'wp-includes/images/crystal/video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����l��ڤ�;�='),
('*��-3�u��E�[�O#', 'wp-includes/images/down_arrow-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�s���$�6(�@�a'),
('\n��O�_��;]/^��', 'wp-includes/images/down_arrow.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e��]:u�Wv���"��'),
('Ҟ����ǟ�	Ks���', 'wp-includes/images/icon-pointer-flag-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���2�b��&�Z�r'),
('�Z��	r!ޏf���	�', 'wp-includes/images/icon-pointer-flag.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��,���E^�j`'''),
('Y�,�e�A��w�`���', 'wp-includes/images/media/archive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9����h�\0��ì�u'),
(':�n̣RM�ti#��=', 'wp-includes/images/media/audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�taCA����.��Z��'),
('��3"�(z�a�4�8�', 'wp-includes/images/media/code.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-o��Uʓ��U�U_'),
('(?���>��S�N揚�&', 'wp-includes/images/media/default.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-����I�B�h�@���b'),
('/<ا^ɼf}�"���$�', 'wp-includes/images/media/document.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v�4�8�Αy�6�d�'),
('�rY�S�xwDY˚J�[', 'wp-includes/images/media/interactive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R׬˂���ôŉh�H'),
('��HVե�d��p�Vp', 'wp-includes/images/media/spreadsheet.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���4���\0T��̇?�'),
('9��s�3�SZ,p�8g', 'wp-includes/images/media/text.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z��s��0�ȝ�Q�K'),
('�\n%f[!aE�r�tg�i', 'wp-includes/images/media/video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����u�h����q��'),
('�k��/y�����&��G', 'wp-includes/images/rss-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ya[�Q�����rj�'),
('��r�����؁=�Ԓ�', 'wp-includes/images/rss.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��[�(�.��*NZ�'),
('{�\r�-��}�^��', 'wp-includes/images/smilies/frownie.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q���������'),
('Т�펹�|����@', 'wp-includes/images/smilies/icon_arrow.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ʵ	�������('),
('�㯩�	''��ި��V', 'wp-includes/images/smilies/icon_biggrin.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�YpR�+�0}k�N{�k'),
('�$�͓�bHn��,\0-', 'wp-includes/images/smilies/icon_confused.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�sYFPZ6��,��'),
('X,�E�Cj$_��8I��0', 'wp-includes/images/smilies/icon_cool.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�F~��ߢ.���>t8'),
('ĔԼ���pP�Z	H��', 'wp-includes/images/smilies/icon_cry.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E>z?��Ap�mWlA�`'),
('!_��輵p3p�n��L', 'wp-includes/images/smilies/icon_eek.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_��s���jN��_z�'),
('�Obc��" ���|J(', 'wp-includes/images/smilies/icon_evil.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c����VM<�"!�.'),
('�J��B�GT�;,l��T', 'wp-includes/images/smilies/icon_exclaim.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\�qE�\Z!HY__=�{_�'),
('�"u@��T��S��5�', 'wp-includes/images/smilies/icon_idea.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��"m%h�����S��r�'),
('� �n�$��q��^qf��', 'wp-includes/images/smilies/icon_lol.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��M�Z8|����,���'),
('�(���ה�W�h@=a', 'wp-includes/images/smilies/icon_mad.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '׾�ie\Zc�{��0'),
('\Z�UE�s(���#E�p', 'wp-includes/images/smilies/icon_mrgreen.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���J����Rw��w��'),
('���k��i��.���\\��', 'wp-includes/images/smilies/icon_neutral.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������	����Z�'),
('���7�M3�$��', 'wp-includes/images/smilies/icon_question.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�''u��&E�qA���mN�'),
('�����:[&b�[�hY��', 'wp-includes/images/smilies/icon_razz.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��˭��=��J�@��'),
('$����0S\r�r���', 'wp-includes/images/smilies/icon_redface.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm��A��R!4a'),
('��B]nȄ�8�7g��', 'wp-includes/images/smilies/icon_rolleyes.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ȼ�_�Ҹ*>,\Z�\Z!j'),
('�H�����Pw��%8��', 'wp-includes/images/smilies/icon_sad.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z''=��Oj�?�uA|��'),
('����e��97�aJS', 'wp-includes/images/smilies/icon_smile.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��G)ö��u��\\\nM'),
(';�Wct���*+��Br�', 'wp-includes/images/smilies/icon_surprised.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')�r�����i\r�^@8��'),
('��\\:��ڈ��)g,\\', 'wp-includes/images/smilies/icon_twisted.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b���.�8\Z|`�Q�LF'),
('�8�������P5aĨ�	', 'wp-includes/images/smilies/icon_wink.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\ZO�Z���g9�4�'),
('g|y_�o4"��X�N���', 'wp-includes/images/smilies/mrgreen.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-5��^����J�j���'),
('�{��Y�\\�z錿�}c', 'wp-includes/images/smilies/rolleyes.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ���O�2�Ofݣi�'),
('��ջZml��4�ˮU', 'wp-includes/images/smilies/simple-smile.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�K��{��f�w�h'),
('}`��g"P�2��V��', 'wp-includes/images/spinner-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\q��9)hdxR���]l'),
(':�Xqݝ�J\\�5P�4', 'wp-includes/images/spinner.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����1c~''�dv�vHq'),
('}ĉ=�t�����', 'wp-includes/images/toggle-arrow-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F���\\����CDr�'),
('�ܵ[Ҳm%�6�S8:D', 'wp-includes/images/toggle-arrow.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��·�a��;�d��*�'),
('/鹠���ΰ1�iw��', 'wp-includes/images/uploader-icons-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���&-��O��Õ�~'),
('_���4�3���=��', 'wp-includes/images/uploader-icons.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\\M�����m��'),
('x9@^6��ߑ��o��', 'wp-includes/images/w-logo-blue.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[N�W��_p�w�0'),
('�h�����FuQe� �', 'wp-includes/images/wlw/wp-comments.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L�6]P����.s���'),
('����Pq-�t�@l�', 'wp-includes/images/wlw/wp-icon.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1	�ʚ�7w3K��*'),
('�����6��b�g�>_�', 'wp-includes/images/wlw/wp-watermark.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';��uMmܭD|�w���D'),
('�~����U�"�&��', 'wp-includes/images/wpicons-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��n�V�o�$��Of~7'),
('g�$G\\��;�r���1X', 'wp-includes/images/wpicons.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dS��uq��V_���a�'),
('�\rE��U���̈́��', 'wp-includes/images/wpspin-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}�3��Y�(�I��m'),
('R�x�4Mp@�9u\n֊ p', 'wp-includes/images/wpspin.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Nm�h����;\Z@��'),
('�N�\\�|�`*�,)@4', 'wp-includes/images/xit-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��r�T��`��?J�/�'),
('���\n\\��ɶ.5���', 'wp-includes/images/xit.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�)�X��`1���H��'),
('|/ڒ�\0[*4��x��', 'wp-includes/js/admin-bar.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�z���A擒�ZG�=�'),
('MР\0�A���9Q�+��', 'wp-includes/js/admin-bar.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��3���\nȗM�i��'),
('R3�Us�3��}T���', 'wp-includes/js/autosave.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l��"F�L�7���GN�'),
('wu�l|��p��Q', 'wp-includes/js/autosave.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�6k}�}	f���%'),
('PE۫�7r|oI�6��>', 'wp-includes/js/backbone.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�cݾR�^{�3�&���'),
('��\np���Gnu:���', 'wp-includes/js/colorpicker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��V g�����-�'),
('0���E\00���X�H', 'wp-includes/js/colorpicker.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� ��\ZY��b|$�@q-'),
('pUy�a	�b��va�;�8', 'wp-includes/js/comment-reply.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��N�خ���T�&\0'),
('1��X�/�t60^Ҁ!�7', 'wp-includes/js/comment-reply.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V�''&�) {��/�z��'),
('bY�,��ϥY�r۝�;�', 'wp-includes/js/crop/cropper.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ky5�ni*M(��'),
('\r�%����%�yS�`�', 'wp-includes/js/crop/cropper.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����H.s�o����'),
('�(�|n���sARF�+', 'wp-includes/js/crop/marqueeHoriz.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�̮����;���Lo\n'),
('Z�\0��Y���� æfg', 'wp-includes/js/crop/marqueeVert.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����\0���9��R���'),
('�r�\\�j�����A$�', 'wp-includes/js/customize-base.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���E���7b��퇪'),
('V\n��U`�_�5���8', 'wp-includes/js/customize-base.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[ܩ�;�\n@��'),
('�V}�P���m�/�|I*�', 'wp-includes/js/customize-loader.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '75�\\�a�3�\r��"�'),
('b�����Ҍ &�?�{', 'wp-includes/js/customize-loader.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���򺘾�D@x�G�'),
('����x�Й�)DC��<', 'wp-includes/js/customize-models.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':y�t}ɟD�c\n2�@'),
('\n��NNM��ۑ4;�p�4', 'wp-includes/js/customize-models.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��h���J��h�'),
('�\Z���{:\Z���4f', 'wp-includes/js/customize-preview-nav-menus.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' s��L��fŃL�?'),
('��F~���y�c7v-', 'wp-includes/js/customize-preview-nav-menus.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RiR�z3�''o]��lQv'),
('9�\r5''X���>?�', 'wp-includes/js/customize-preview-widgets.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'C`���2���l�޳�'),
('����9��r�Mԧ��', 'wp-includes/js/customize-preview-widgets.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[@��*Nj�N�zX��K'),
('�4���2�)A.;4�', 'wp-includes/js/customize-preview.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' l\0\n=Y��q�XhOC�'),
('>ql�+�m�\05Ħ"�^', 'wp-includes/js/customize-preview.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��&C½ ��(�e�l}?'),
('����UNEA�g�t', 'wp-includes/js/customize-selective-refresh.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��;z��j�����e�'),
('0j�Vƽ�f:�5��`�\\', 'wp-includes/js/customize-selective-refresh.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��p�����W�#'),
('QY��1�Tl��Vr<', 'wp-includes/js/customize-views.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z���٢Uo��������'),
('�Y^~5~��p�G-���', 'wp-includes/js/customize-views.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��>h����%���N'),
('��!�(t��<Թ', 'wp-includes/js/heartbeat.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G@\rT�j,8$S\0��Z'),
('�n97�I.O�ҝ޿�', 'wp-includes/js/heartbeat.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l���[t�%�n7���'),
('�y�g��zaU"�	XKG', 'wp-includes/js/hoverIntent.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ʳY�C��c�On�כ'),
('S.FȫA�j���(�:', 'wp-includes/js/hoverIntent.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P\nޅL1A�Wb��\0'),
('^��^\\Q��=(w��', 'wp-includes/js/imagesloaded.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����vR�fW���7dB'),
('���%bQ�bM<�x', 'wp-includes/js/imgareaselect/border-anim-h.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z��,�ntZ^6�{Lp�4'),
('��F�"��vh�$Lb��', 'wp-includes/js/imgareaselect/border-anim-v.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' �z!�<�7������*�'),
('<F���Pz�22��~', 'wp-includes/js/imgareaselect/imgareaselect.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}(��()��3���󵕯'),
('�8/B��$8���`m�', 'wp-includes/js/imgareaselect/jquery.imgareaselect.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z�B�RS���:Y�'),
('����ͤ6�\0/��k���', 'wp-includes/js/imgareaselect/jquery.imgareaselect.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%�.�e��By�Ur@%'),
('SX+7��1?����-', 'wp-includes/js/jcrop/Jcrop.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z��7e�����Q�%K'),
('�g�"�}_�7����J5', 'wp-includes/js/jcrop/jquery.Jcrop.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V̞��/K�x����'),
('T�.o@Ψ2�w�v��X�', 'wp-includes/js/jcrop/jquery.Jcrop.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/a��Lru�4�\Z�'),
('v��ޣ��R�', 'wp-includes/js/jquery/jquery-migrate.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lW�bX��[5y�^l6�'),
('�a�@o��''��kb���', 'wp-includes/js/jquery/jquery-migrate.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q!�N�S ��Xdc��Q�'),
('��ʙ\0}��甠K��.�', 'wp-includes/js/jquery/jquery.color.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�-���E�G����>vJ'),
('v�Ҹ);�D��~J"��q', 'wp-includes/js/jquery/jquery.form.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���.�,�+��\nq'),
('&=\Z�+t�"�/k''\n', 'wp-includes/js/jquery/jquery.form.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�À�s���E�VM�-�'),
('��P\Z��/���l%�', 'wp-includes/js/jquery/jquery.hotkeys.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '┃��&�݋\rFư��'),
('��-�p�lE���k�/�', 'wp-includes/js/jquery/jquery.hotkeys.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�S!}EU�\\b�g�h��='),
('g#�,vM������:��', 'wp-includes/js/jquery/jquery.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��?�v@���̒N'),
('c,���[xޫ�3�\n�@', 'wp-includes/js/jquery/jquery.masonry.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��@`���&n|�}A��'),
('{�)�4e4p:�fW�', 'wp-includes/js/jquery/jquery.query.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';�Xz�ǰ����wC'),
('(��g%\0��4��l>��', 'wp-includes/js/jquery/jquery.schedule.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&��T�k�f؞���'),
('qh�665�y|�=�?S	', 'wp-includes/js/jquery/jquery.serialize-object.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\)������J�l<�"'),
('�0<Ps��מH���22', 'wp-includes/js/jquery/jquery.table-hotkeys.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��֔#t�gP�g��'),
('򱠭��B�R�z��Y', 'wp-includes/js/jquery/jquery.table-hotkeys.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�o�go����~i�I	�'),
('mY����}ɽ��?', 'wp-includes/js/jquery/jquery.ui.touch-punch.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L�m�Q4փ��]�'),
('Ƭ+\Z���I�d^i <\0', 'wp-includes/js/jquery/suggest.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':$tV�E�ʿ����'),
('�3��Ƈe�(ú9�', 'wp-includes/js/jquery/suggest.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's\\+A)���n.;��'),
('6٨	��:{�^D�', 'wp-includes/js/jquery/ui/accordion.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3L/�o�o.� ��'),
('g�Ed��1��D}�����', 'wp-includes/js/jquery/ui/autocomplete.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��>�bXeså̐���'),
('��]/~���q��XŎE', 'wp-includes/js/jquery/ui/button.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',�Ѝ�Q楎�����'),
('�%y�>}H�o���(6', 'wp-includes/js/jquery/ui/core.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���WD������S�ejq'),
('@k/�����I�?T,', 'wp-includes/js/jquery/ui/datepicker.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '϶=���S���������'),
('F��e���}�(��', 'wp-includes/js/jquery/ui/dialog.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>͕���xQONi�^�\Zb'),
('p��7u�L�_{2Û�', 'wp-includes/js/jquery/ui/draggable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D<''w����I\0՜6�'),
('�z�������|�z�xv', 'wp-includes/js/jquery/ui/droppable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '޿R$�(�Ѧ���S�'),
('&c�YD�#�P{+��', 'wp-includes/js/jquery/ui/effect-blind.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����<O�mA�_;OL'),
('��a5[4�5�Me�pC', 'wp-includes/js/jquery/ui/effect-bounce.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K��y$���{״o��L'),
('��U���$�\\*�1^�S�', 'wp-includes/js/jquery/ui/effect-clip.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ǔ�W�#�GZas'),
('�D\rh}�����!\n', 'wp-includes/js/jquery/ui/effect-drop.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W�V��ǥ�Y��F2��'),
('ϊ=��X���bBz'' �', 'wp-includes/js/jquery/ui/effect-explode.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��b\\�A���:QJ=��'),
('����A�G,��<���', 'wp-includes/js/jquery/ui/effect-fade.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�o�OO_��;{r�5$m'),
('�P\0''�0l���v�#J<', 'wp-includes/js/jquery/ui/effect-fold.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�6^�����<��DEl'),
('{�M��i�i2n��6�', 'wp-includes/js/jquery/ui/effect-highlight.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����*��øN���!'),
('����8`9��?Bb�Б', 'wp-includes/js/jquery/ui/effect-puff.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Iml�c�G�@�ȳ� �'),
('����8(\Z�j�Z]}', 'wp-includes/js/jquery/ui/effect-pulsate.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��o S@Z*���p!�'),
('4;V��''�/����f�', 'wp-includes/js/jquery/ui/effect-scale.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�}0e,)����+m�T'),
('���NVԱ��z�Z', 'wp-includes/js/jquery/ui/effect-shake.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&�����3H�qˀ1'),
('��~�w`�5;F㮮', 'wp-includes/js/jquery/ui/effect-size.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�=�n�����2��Z%'),
('Y����]���ŞI���', 'wp-includes/js/jquery/ui/effect-slide.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�#G_��MVژ�y�'),
('��l�.H|S���{��', 'wp-includes/js/jquery/ui/effect-transfer.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ި\0w}����n�'),
('�ݙ�P(���O''E��e', 'wp-includes/js/jquery/ui/effect.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?qa��Z,^m4��o�'),
('7�c�¢)��S�eb�', 'wp-includes/js/jquery/ui/menu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���D��tc�]8�'),
('�����:x��=�}�', 'wp-includes/js/jquery/ui/mouse.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Z�`��0 8���\\9�'),
('nef���A@���R�?��', 'wp-includes/js/jquery/ui/position.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J��X�~�C:�/b'),
('=f�u�A><Th���@', 'wp-includes/js/jquery/ui/progressbar.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Mq�TٴA?�L}y"i�'),
('��-��i>bs��1�', 'wp-includes/js/jquery/ui/resizable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\02|I,��|���'),
('�v����\r���&X��', 'wp-includes/js/jquery/ui/selectable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�2�ё쮒槶�r�@'),
('S0�־��K/17u���', 'wp-includes/js/jquery/ui/selectmenu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�}�˪2�9Zhxi"6�'),
('\\�����AV*籿', 'wp-includes/js/jquery/ui/slider.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����ZkCd�L��/�K'),
('m��-\Zm1�����w��', 'wp-includes/js/jquery/ui/sortable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(���~���k�k�'),
('mE������\\�)��o�', 'wp-includes/js/jquery/ui/spinner.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':�2�a+�R!����e��'),
('����(5�aH�yo,X�', 'wp-includes/js/jquery/ui/tabs.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S0�4%��g�c�ABz�'),
('-�_��+��Yn��S', 'wp-includes/js/jquery/ui/tooltip.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D?hi\r���,��q40'),
('�!&�i�)^�W���R�', 'wp-includes/js/jquery/ui/widget.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���k�y�d�?zx7�'),
('*�\Z07ѥ1O���َ8', 'wp-includes/js/json2.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's��{N�|EO�0�'),
('������)�(��<��', 'wp-includes/js/json2.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5ؙ��?D����X<'),
('������|� ��', 'wp-includes/js/masonry.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T �Ql$[PNr@�1,'),
('r��r�(J�g�(�y�t', 'wp-includes/js/mce-view.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Hu�J���My(�5�'),
('���f�%u�P���', 'wp-includes/js/mce-view.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&�KXW���xV�9��h'),
('��{�0l(Ʋu9,wS�u', 'wp-includes/js/media-audiovideo.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�VP<�k�;D�.?F��;'),
('�GV\\z��#���!;��', 'wp-includes/js/media-audiovideo.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\rS����t�D'),
('�u�N���.A_�_�', 'wp-includes/js/media-editor.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Li�Y�ֆ�1�C����M'),
('	,��/Օ�!�gy�d', 'wp-includes/js/media-editor.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y�Q��Y;z�{sx�Cdm'),
('R�\\SC�|ju�9��A', 'wp-includes/js/media-grid.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�k�.:�l��޷r��'),
('�Y��R�Yi/��l@HX�', 'wp-includes/js/media-grid.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v�h�Te4��hβ�L'),
(')��_���J�����', 'wp-includes/js/media-models.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��s�����[�#�'),
('�F� �GJ��B��s7�', 'wp-includes/js/media-models.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ف;�Y-B���분�'),
('�ȉV?	��]�)A', 'wp-includes/js/media-views.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o�	\\o)Q1�J���V�'),
('����E�?��Юᾠ', 'wp-includes/js/media-views.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����,��pX-\0�C�T'),
('���6�d��x�D��', 'wp-includes/js/mediaelement/background.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p<e�K�c�\\c8�r~\0l'),
('\Z�e\r���j!^��	��', 'wp-includes/js/mediaelement/bigplay.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'qd6�=�Ҟk7�b�Rgj'),
('7��O+�����ǋ''n', 'wp-includes/js/mediaelement/bigplay.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tl:��E��9�n^���'),
('��5��[,	j�(�ƪ�', 'wp-includes/js/mediaelement/controls.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$�"�Ӭ����?�Ȥ'),
('Gq�@����gm屪', 'wp-includes/js/mediaelement/controls.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@�oZsm������ۊR�'),
('{��a�t�\n">��S', 'wp-includes/js/mediaelement/flashmediaelement.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.����D2��;�'),
('��+�Ϳ�#Ft�EǍ7', 'wp-includes/js/mediaelement/froogaloop.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*�B����#�D����'),
('��N�`��rHn0���', 'wp-includes/js/mediaelement/jumpforward.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ᬌ��.��&w�H�S'),
('�'' ��#s��߾U|', 'wp-includes/js/mediaelement/loading.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v�&��B"o�!e���'),
('�y���!�\0pZ�[A', 'wp-includes/js/mediaelement/mediaelement-and-player.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�p��r�����G�}_'),
('	?������q�uM', 'wp-includes/js/mediaelement/mediaelementplayer.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��>��`�::�Q���7'),
(';�&�nb��i�ٷ�', 'wp-includes/js/mediaelement/silverlightmediaelement.xap', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��O����F�msK0�,'),
('A�Z�哖̅L��(', 'wp-includes/js/mediaelement/skipback.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�m�0�E���k��o�HF'),
('����S�h���S�%Tz�', 'wp-includes/js/mediaelement/wp-mediaelement.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0��7ԇ:�3U��:]�'),
('�D����]�|߼�$�', 'wp-includes/js/mediaelement/wp-mediaelement.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����J9W=K�F�''/'),
('��M��~\n�T|�', 'wp-includes/js/mediaelement/wp-mediaelement.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't�Og��ER{�1��'),
('�����N��9�{�;', 'wp-includes/js/mediaelement/wp-mediaelement.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�zD�Q9�(q�9Qfy�'),
('6����X/��HL', 'wp-includes/js/mediaelement/wp-playlist.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��t�����j�8�C'),
('ˤԐ�{%k�#�f�', 'wp-includes/js/mediaelement/wp-playlist.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&Ec�N-�k��Œ�'),
('J��E[�7U��\Z�~', 'wp-includes/js/plupload/handlers.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��N	�f�_P�H!'),
('��;(Xp`ҙ��pݷ', 'wp-includes/js/plupload/handlers.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>�\n��{u�=�/	}f'),
('�V�ڮ����M��jӁ', 'wp-includes/js/plupload/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u&\n�TI�z����+�'),
('�C�3�!0Q�o�J�e `', 'wp-includes/js/plupload/plupload.flash.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7\rv�EROG�Ҙ�t��l'),
('"����c���9�&', 'wp-includes/js/plupload/plupload.full.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'JC��$Vm''�.''��'),
(' �p(?Qn����a��Z', 'wp-includes/js/plupload/plupload.silverlight.xap', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tq\0���3�X�0��b�'),
('5C�)\nWu�꽝/F�cK', 'wp-includes/js/plupload/wp-plupload.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+o�N8�/:7&��'),
('�L����e5x?e=�&', 'wp-includes/js/plupload/wp-plupload.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|t��f���ܚEGFQ��'),
('�?�����h�����;', 'wp-includes/js/quicktags.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H�M��\Z��/�@p['),
('ߌ��(������2���', 'wp-includes/js/quicktags.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j6\\/�RVj��=���g='),
('ˍ�G䯀oe���o�', 'wp-includes/js/shortcode.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�������͡�Pt}\r��'),
('g��]bR%� Z��E�', 'wp-includes/js/shortcode.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�B�j���߭m��q|$'),
('�O�r#���T�G��!', 'wp-includes/js/swfobject.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���,�I}p�e~2�q�'),
('��M�٦M�/`�', 'wp-includes/js/swfupload/handlers.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Oۅ��߲�}�'),
('�`#��G�b�C��֊�', 'wp-includes/js/swfupload/handlers.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Y,k?�X�N�0G�;'),
('�\Z-��x7��(A�4���', 'wp-includes/js/swfupload/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��[�`�^�-�o�QWz'),
('�D=Jǅ/	6ރa�', 'wp-includes/js/swfupload/plugins/swfupload.cookies.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~�\rڈ�k\\ 7̴��'),
('�l�XNEM�CgVsA:', 'wp-includes/js/swfupload/plugins/swfupload.queue.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�SR/�J��5�-v͏'),
(',B�c���ԛZ�4Y', 'wp-includes/js/swfupload/plugins/swfupload.speed.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AZ7��k���E`,*�s�'),
('��$�<@�Řa���c"', 'wp-includes/js/swfupload/plugins/swfupload.swfobject.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '̵q�V7�T\\���s');
INSERT INTO `vi_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('��$��xM1>�_8P\0', 'wp-includes/js/swfupload/swfupload.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l�p���lD�_��q�'),
('*t$�ߋv��n��s�', 'wp-includes/js/swfupload/swfupload.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Z%�5�e,�r��HO'),
('��	1��А々�S:(', 'wp-includes/js/thickbox/loadingAnimation.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�"h\r�c�����&�'),
('����t���Z�O''� \n', 'wp-includes/js/thickbox/macFFBgHack.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ȱg�W�,/u�'),
('�v{L�Jlō�Yz�`�(', 'wp-includes/js/thickbox/thickbox.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Z�P���N2E�^�;��'),
('AE���[�`����', 'wp-includes/js/thickbox/thickbox.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��H�sTX{B$�٭6�'),
('9:��d�o\n��p`Ry��', 'wp-includes/js/tinymce/langs/wp-langs-en.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�f�tS�uc�.k�7a7'),
('�	v�O.�|ߤҵ�', 'wp-includes/js/tinymce/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']�t"ٞ3��[�t�|'),
('�\n$z�X�`�1Bw', 'wp-includes/js/tinymce/plugins/charmap/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ٕ���|#��y�\0'),
('k���$6O��-N�x�', 'wp-includes/js/tinymce/plugins/charmap/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Z���?�Vs�M��'),
('Aa�@J������Ł�', 'wp-includes/js/tinymce/plugins/colorpicker/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"S�I�$�0DRj�*'),
(',<�� �?C]�0A�', 'wp-includes/js/tinymce/plugins/colorpicker/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��(oT���R��a�'),
('HC���!���"(�', 'wp-includes/js/tinymce/plugins/compat3x/css/dialog.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�11h�+ezK���k�\Z"'),
('go�s�V�;����\n$', 'wp-includes/js/tinymce/plugins/compat3x/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R̑54m��%��U��'),
('0]�qK''�f�x����', 'wp-includes/js/tinymce/plugins/compat3x/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W����������r��'),
('�!��#��I|���F�', 'wp-includes/js/tinymce/plugins/directionality/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_!8[EV�aYP@�A'),
('&��]0W��\n)�=��', 'wp-includes/js/tinymce/plugins/directionality/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`�W%<�:oJ��9�'),
('���P�w���0�h�9', 'wp-includes/js/tinymce/plugins/fullscreen/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��;�z�\n�<�^�����'),
('s�ŏU''���e@�d�', 'wp-includes/js/tinymce/plugins/fullscreen/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\ZԼC�Cf�Y�H�'),
('��\\9ã>���Iz4�c', 'wp-includes/js/tinymce/plugins/hr/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'B���z{��@�X�б\Z'),
('���v��\\Q���-��', 'wp-includes/js/tinymce/plugins/hr/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\#%Z����,3�I�8�'),
('π�tGȩ�����D', 'wp-includes/js/tinymce/plugins/image/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E�����9`NA��v��'),
('�	���Em[�����l�<', 'wp-includes/js/tinymce/plugins/image/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U[M���0����#'),
('!�R���p�nL�w�m7', 'wp-includes/js/tinymce/plugins/lists/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�>��J��(�%"'),
('�J0����j�Yg�h�', 'wp-includes/js/tinymce/plugins/lists/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�dgD���h�1Ei�zQ'),
('��d]\0F�mŲp�D', 'wp-includes/js/tinymce/plugins/media/moxieplayer.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'NY�N�-���3Yj���'),
('`���;�"�-���+~;', 'wp-includes/js/tinymce/plugins/media/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	f�Ht�n��x,2��'),
('ƅ����|_�i/y��	', 'wp-includes/js/tinymce/plugins/media/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�[��6�H"��%�k�'),
('�����ƪq�悳��', 'wp-includes/js/tinymce/plugins/paste/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'je�E�.;,R�#�9�?'),
('�,(�i7:^�^�#', 'wp-includes/js/tinymce/plugins/paste/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i�Y''Fm��O]H�#�'),
('x덂��@}Y��i�+', 'wp-includes/js/tinymce/plugins/tabfocus/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j]xL*��_d���5I/'),
('��v���|�-��', 'wp-includes/js/tinymce/plugins/tabfocus/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�͓���>5��C���'),
('?]�P�.��1����2b', 'wp-includes/js/tinymce/plugins/textcolor/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Rr���gw�d"���'),
('͓�Y�36��l�Y��', 'wp-includes/js/tinymce/plugins/textcolor/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hɛ��ϑ��ôq�4��'),
('�G���!#h�9	��&', 'wp-includes/js/tinymce/plugins/wordpress/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�v&��Z�v�j`E��'),
('u��s��y6''v,��=', 'wp-includes/js/tinymce/plugins/wordpress/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ¬m�Td$V`m���'),
('. �\0_oE�]A�_�0PJ', 'wp-includes/js/tinymce/plugins/wpautoresize/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd�\0Xc�O�@p��%�'),
('��}���PÛ�P\\�\Z', 'wp-includes/js/tinymce/plugins/wpautoresize/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��}˳Q�gѥD��W'),
('	P=N>��b"j:~[Q{�', 'wp-includes/js/tinymce/plugins/wpdialogs/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���[ߢ�9��Z�'),
('3���''���RK�Bf�', 'wp-includes/js/tinymce/plugins/wpdialogs/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���G���7�(tt�@�'),
('<��u꿖\Zܜ��Y�^', 'wp-includes/js/tinymce/plugins/wpeditimage/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G8�&\Z���V�X'),
('�6�<��C�﮿�V:(r', 'wp-includes/js/tinymce/plugins/wpeditimage/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��fV w��=0��'),
('j�^���۝h�8���', 'wp-includes/js/tinymce/plugins/wpembed/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�8*�R/���?�%��'),
('Ί�Y�(e��_b�Wj_�', 'wp-includes/js/tinymce/plugins/wpembed/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~�[���L	Zu�-,��'),
('��%�\0��z�f�N�pS', 'wp-includes/js/tinymce/plugins/wpemoji/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�za1�Pe=ߡzV�b�'),
('�@��,�n\\���+k�', 'wp-includes/js/tinymce/plugins/wpemoji/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��,�,�D��UA���'),
('u��3!pA�f�)R�M�', 'wp-includes/js/tinymce/plugins/wpgallery/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�H4PD�����DM\\I'),
('�Oӿ�;�=\\J�zy', 'wp-includes/js/tinymce/plugins/wpgallery/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�7`��O�ty���O�'),
('k����b��gS�', 'wp-includes/js/tinymce/plugins/wplink/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[���ߦC	��t���}'),
('L��)��a$�D-�Ӯ�J', 'wp-includes/js/tinymce/plugins/wplink/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�e��������.��'),
('"Et�y�s����\Z|g', 'wp-includes/js/tinymce/plugins/wptextpattern/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��	�J)U�s�����'),
('3+z��.���6Q~]y[', 'wp-includes/js/tinymce/plugins/wptextpattern/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�.Ei�$Pwo�m��'),
('��q�82��v�&#M', 'wp-includes/js/tinymce/plugins/wpview/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''6#%k���-w�O��'),
('Wl��y:�\0Vn`�d\0�', 'wp-includes/js/tinymce/plugins/wpview/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6�˲�%�rm��?[G�S'),
('�Z���(>(�1bޫ�Z�', 'wp-includes/js/tinymce/skins/lightgray/content.inline.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Q�8��̩\0�}�3'),
('����7�&��Ȁ', 'wp-includes/js/tinymce/skins/lightgray/content.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '� {C!''��Ã��qZx'),
('��(�[3?�H/�[�e]', 'wp-includes/js/tinymce/skins/lightgray/fonts/readme.md', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zd��+���E@�1�'),
('��>�/ᡇ_�����', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�l([qא���D#��'),
('|����,^�j���$n', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����վ\\���6\n+'),
(':�X��2�M���~��', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���2�4vLhN�!��2|'),
('`���S�`NI�^G�', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(�i@�G�g���0�p'),
('��t�0�g�a�/���', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~��-�������x''�	'),
('vڴ����V���K��P', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$z�3�`c���.'),
('`^�X��_dؾ�#�\r', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���"ם��u��B�X'),
('�Q����ԁ�2�7u�L', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����Fh%�C��y'),
('P��0��a��R�z= ', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Pù�4�S͈0p���'),
('�\Z���l����3Ȋ�', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k7T���Vn@����'),
('������>+ܞL[�m', 'wp-includes/js/tinymce/skins/lightgray/img/anchor.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��a5q��ȑ_4�@'),
('L<#���\Z����}', 'wp-includes/js/tinymce/skins/lightgray/img/loader.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9K���M�:�Tf�9'),
('oP��c����o�.�r', 'wp-includes/js/tinymce/skins/lightgray/img/object.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�rdP�E}u\n/M�A�� '),
('�X����g5����(�=c', 'wp-includes/js/tinymce/skins/lightgray/img/trans.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��7I �1F�Gu�j^'),
('�<{����,-�![M��', 'wp-includes/js/tinymce/skins/lightgray/skin.ie7.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z����P�#����\n'),
('��>�~�!�g�q��', 'wp-includes/js/tinymce/skins/lightgray/skin.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6]�V�p��(@�l�B'),
('Ĉ^A��+l���o�d��', 'wp-includes/js/tinymce/skins/wordpress/images/audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7~!���\0�����"w'),
('FH���30m�:��s��', 'wp-includes/js/tinymce/skins/wordpress/images/dashicon-edit.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xR�	�Y�X���ݤ���'),
('��c��.D�r� |��', 'wp-includes/js/tinymce/skins/wordpress/images/dashicon-no.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R����Z�?f.��8��	'),
('Ȅ���xy�����', 'wp-includes/js/tinymce/skins/wordpress/images/embedded.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����p�N��y~�n"'),
('F���Ã\\�O�fg�', 'wp-includes/js/tinymce/skins/wordpress/images/gallery-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��1����v��R'),
('�_f��;w�a��ځ�', 'wp-includes/js/tinymce/skins/wordpress/images/gallery.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_���Pw��PU�4'),
('F�Hȝl�e��#�', 'wp-includes/js/tinymce/skins/wordpress/images/more-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l,��r�%�^x�%'),
('N�3�j@pu5����^��', 'wp-includes/js/tinymce/skins/wordpress/images/more.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����\n�\nm\0;�˫�z'),
('���~��a%��!�P', 'wp-includes/js/tinymce/skins/wordpress/images/pagebreak-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{�6�#UQ:��|>#��'),
('���#����	>�7', 'wp-includes/js/tinymce/skins/wordpress/images/pagebreak.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�I��m���LWyݓH'),
('��@��{�J��5䷴X', 'wp-includes/js/tinymce/skins/wordpress/images/playlist-audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U,�:)��؋"�QqY'),
('7�%Wy~׹P?�x��', 'wp-includes/js/tinymce/skins/wordpress/images/playlist-video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�lzV6`wmZBs���'),
('�3^��PM�Y���H�D�', 'wp-includes/js/tinymce/skins/wordpress/images/video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�¶��B�=\rz��3j�'),
('۪���	.�ո�\\���', 'wp-includes/js/tinymce/skins/wordpress/wp-content.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xS+_��1�A"j'),
('��ah�#��8�c���', 'wp-includes/js/tinymce/themes/inlite/theme.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�i�6\rZ=xW9q�Ul'),
('�	��#A�\n#b#��=', 'wp-includes/js/tinymce/themes/inlite/theme.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '̈�6���Ӄ��CB��X'),
('r+zk;� 4��WI', 'wp-includes/js/tinymce/themes/modern/theme.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���(�H��\Z���W�'),
('n#�t=�''�����b]{�', 'wp-includes/js/tinymce/themes/modern/theme.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���\\�_��*κ�'),
('�(tTlDά7&��MP.�', 'wp-includes/js/tinymce/tiny_mce_popup.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�� �B+u؞˘4	�m'),
('	�9��fވU�f����', 'wp-includes/js/tinymce/tinymce.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�R\n\Z�p��u���'),
('Gm��:�MľV��LЉ', 'wp-includes/js/tinymce/utils/editable_selects.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�d*\n�z�f��G"0��t'),
('*���L�m&&2��\nb', 'wp-includes/js/tinymce/utils/form_utils.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��T8?ZP��{�-��'),
('츃�v��6��;�~�', 'wp-includes/js/tinymce/utils/mctabs.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\r��|uJkek��5\0'),
('4AI�n09��7c`', 'wp-includes/js/tinymce/utils/validate.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�+Q`�����k0RW�'),
('�''������}����0', 'wp-includes/js/tinymce/wp-tinymce.js.gz', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�7�r�R�됛�'),
('�����HԹ��f�k�', 'wp-includes/js/tinymce/wp-tinymce.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�b\n��0pr���Hv'),
('p۞�2N<:Z�7�r�', 'wp-includes/js/tw-sack.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���������9>���'),
('����h+��B����', 'wp-includes/js/tw-sack.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�D�N�k�P\n�~h�'),
('�鋭��{^�MU*�_', 'wp-includes/js/twemoji.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/k��0xW�=��M-'),
('M�;C�����8Yyﲏ', 'wp-includes/js/twemoji.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F~�K��\ZN�Ƀ}R'),
('�u��<e�x��@ֈ>', 'wp-includes/js/underscore.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j:CJ`�tCA�}�{�'),
('<�hj�	�4���4a�2�', 'wp-includes/js/utils.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\r��ǼC`����<'),
('�&UX\r�L4{����', 'wp-includes/js/utils.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���r�A�2C3UE+�'),
('�0��5��mk��', 'wp-includes/js/wp-a11y.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' \Zr''7��g��x\Z�'),
('�/��0��\n*7�f(��', 'wp-includes/js/wp-a11y.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��tl�گ�������X'),
('](R�&!��1;�3��', 'wp-includes/js/wp-ajax-response.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���)�nZN�\n#��'),
('u�)8FG9�C�(���', 'wp-includes/js/wp-ajax-response.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�t�ج����v��0�'),
('!|(�y�W�*1Oo2Cu', 'wp-includes/js/wp-api.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L�\0��\n�{T?�jZ'),
('ӟ���my�+\nf�:', 'wp-includes/js/wp-api.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k�Ǔ]��N�!�aj^'),
('��.��v8-rJŕ�qQ', 'wp-includes/js/wp-auth-check.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�P\r�J�vv�\Zy��%�e'),
('tU�/Ds�Iڤ�st�', 'wp-includes/js/wp-auth-check.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��z}j����o)��'),
('��j�8���ď�\Z���', 'wp-includes/js/wp-backbone.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���O�[���J-v'),
('0<�����lڿ��J��', 'wp-includes/js/wp-backbone.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�x��\n%�6�h�)��9'),
('Ԓ��A�����r��^', 'wp-includes/js/wp-custom-header.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nbUS]ð�����!'),
('Z�_"��~�J������', 'wp-includes/js/wp-custom-header.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�+�_`��$Y��)�'),
('��=��-Xԍn{]�pf', 'wp-includes/js/wp-embed-template.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����ey(��͜~�i%'),
('��Z ��Og\nW�W�2', 'wp-includes/js/wp-embed-template.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�]g����,JD�T\0''�'),
('��sSk�i�<4''c�-6', 'wp-includes/js/wp-embed.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��JfHǧ�%{�i��'),
('�J~_o�f�k�����', 'wp-includes/js/wp-embed.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z�|�y�������1�'),
('�tr�εF_� ���', 'wp-includes/js/wp-emoji-loader.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4y|��>mRb��f'),
(';����*1\Zn��4�', 'wp-includes/js/wp-emoji-loader.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��!�L��]��)�[F'),
('��	b���8�[����y', 'wp-includes/js/wp-emoji-release.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�b��\r�:CF�D�~��b'),
('\0���;f��Q�=*Ǖ�', 'wp-includes/js/wp-emoji.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ě��F̏�=�o��'),
('[�>�x�;�wn/t�H', 'wp-includes/js/wp-emoji.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z���R6����A�x�'),
('���=V;�����N.K', 'wp-includes/js/wp-list-revisions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'GQ\ru`�*�L��n$��'),
('E4��fu\r#R:k!jgh', 'wp-includes/js/wp-list-revisions.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�R�1�\0���\\��ɡ>'),
('�bv��E��H���΄', 'wp-includes/js/wp-lists.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��O�����93�'),
('�9�e�E��bݾl�3�', 'wp-includes/js/wp-lists.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}�B��˪Pg�oW��k'),
('�#�AuI.F��/���', 'wp-includes/js/wp-pointer.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5ˋ8�.�r:ě���'),
('�Ǉ���4˓T`�k', 'wp-includes/js/wp-pointer.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6��|dMpX\0��fɐ�'),
('�??n������_2g��j', 'wp-includes/js/wp-util.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��"u���O�e�'),
('H+�E~�}�1Q���', 'wp-includes/js/wp-util.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���9��-���ر�,'),
('�A4e���{�^����Z', 'wp-includes/js/wpdialog.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r�9_�M@9\0�S�����'),
('ߗ�Q��u�!ٶx�[', 'wp-includes/js/wpdialog.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�-���\0�g\r�Fġ�'),
('��wt�H���-s�\0�n', 'wp-includes/js/wplink.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�U�c��Pd�h�P_Ɋ'),
('����"�����c)j�"', 'wp-includes/js/wplink.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y��o�cq����~0'),
('���''�B���7S�', 'wp-includes/js/zxcvbn-async.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '������\0�V]u#3'),
('L(���n�9[2�C6�', 'wp-includes/js/zxcvbn-async.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1��p9	�9�~��'),
('J򾁬��Oh���sDؾ', 'wp-includes/js/zxcvbn.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�L�;��uc���<��'),
('��і�q��SGKy(�', 'wp-includes/kses.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��r0Ng�����5<���'),
('���:m��[ݢ�:#', 'wp-includes/l10n.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hd��}\Z��D,v��='),
('��v�E,�-O�{���', 'wp-includes/link-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y*�g\r�%��f���I'),
('_j���_��/���yӱ', 'wp-includes/load.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���=�K,I�ѿ塲��'),
('D6m�e�r{pK�O�', 'wp-includes/locale.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_�?>nY�xF���'),
('a�����(m�EB�l�', 'wp-includes/media-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4cy[M\0d6�W\\��aFl'),
('){�jW-_�Q=?�GlҢ', 'wp-includes/media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��)Tk�''b�AX#'),
('�K�Q�}U&;&���Q', 'wp-includes/meta.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Vڇ�����İLMw�}�'),
('�g��I�!٭���_�', 'wp-includes/ms-blogs.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�eb!5Lp˜=b��r('),
('mA��Y�����Rb|�S�', 'wp-includes/ms-default-constants.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���A���Y$o��M�iw'),
('�.݁B��xK�Y�', 'wp-includes/ms-default-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�f�r.�L��\\�蒀�i'),
('�[�n�G{��''��q:�', 'wp-includes/ms-deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Vwh�O/P8��Ig�'),
('뭷\r�!z}ML�K�E', 'wp-includes/ms-files.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nQ��㿾���-���'),
('�v%���S�[�̪�Ѿ', 'wp-includes/ms-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�o.b~��ͥ��=xH�'),
('�_���jSX�2�QQ=', 'wp-includes/ms-load.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n���4dt9�xb|�O='),
('j&��^����b����', 'wp-includes/ms-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?�}O�x&nA�ba���'),
('��{A��mm��*�K', 'wp-includes/nav-menu-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}v�:ʤӋ�\r8'),
('�[�Hn[P�.~���FU|', 'wp-includes/nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0k��>Ԁ�8�Gx'),
('�MR��l�B�F�u', 'wp-includes/option.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���񗤣���Bs(�f'),
('N|�Jв�zn��sw', 'wp-includes/pluggable-deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�c��d��\0��~�5j�'),
('h0X-�i����^�G`8', 'wp-includes/pluggable.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��7?4��+/Յxiw'),
('��\00��q�ĊNy)��', 'wp-includes/plugin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z��F�x��?���NĢ'),
('� ��C�Y���', 'wp-includes/pomo/entry.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '흁�����`�1L�a'),
('48�Vt���+^X�', 'wp-includes/pomo/mo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z�yL�ʄU.^z3/�e'),
('��[K���b���28�', 'wp-includes/pomo/po.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n�;�#V�V��|o�'),
('�1W;c�����N��"�u', 'wp-includes/pomo/streams.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��s�|�-�<i�p�'),
('���?ڟ�E���$PF', 'wp-includes/pomo/translations.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��T�8��6\Z�B��R'),
('�a�tU�q�^!�0ƣl�', 'wp-includes/post-formats.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�J�R�֓L*Q)>��'),
('M���I�M����rD��-', 'wp-includes/post-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ƛw��oӬMʣ�d''�'),
('��iY����\0\nR)��', 'wp-includes/post-thumbnail-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\r/�"�ئ���u��;�'),
('���0j�l�S��K�', 'wp-includes/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'O=�R����Ef��ym'),
('� �A$ۤfC�N��37', 'wp-includes/query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1�������Lݎ:�\\��'),
('�KF\nO�i�},���w�', 'wp-includes/random_compat/byte_safe_strings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�u����t�����oyi'),
('���o�w���Ў�696I', 'wp-includes/random_compat/cast_to_int.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_vtZ��;�f�0�\\�'),
('���v9�b�$�L', 'wp-includes/random_compat/error_polyfill.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�YT�~\Z�''"�l�\nUe�'),
('�j��Z�;\nlГ�', 'wp-includes/random_compat/random.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����G|�1[_s1�'),
('t�����.�Õ�81�', 'wp-includes/random_compat/random_bytes_com_dotnet.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'er��LV��str��'),
('?2yT!s|��t���u}', 'wp-includes/random_compat/random_bytes_dev_urandom.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P<!�=�-�f��aDh�'),
('�����[���D?_�[�', 'wp-includes/random_compat/random_bytes_libsodium.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����f���}��>'),
('�N ���iiڭ�', 'wp-includes/random_compat/random_bytes_libsodium_legacy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�~F��-��&�6,��Q'),
('��%I���}�P�zW��', 'wp-includes/random_compat/random_bytes_mcrypt.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%l��1/sŀl�)w�i'),
('�^ֺ��S^�c���', 'wp-includes/random_compat/random_bytes_openssl.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�iVK��m�D�''�c��'),
('��3��I�98\\�֛�[t', 'wp-includes/random_compat/random_int.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����]m\riVi+Ԑ3�8'),
('�E-j��1j��\r�E�', 'wp-includes/registration-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ki�LٸS��H=Y�'),
('5\\h>��w	���N�', 'wp-includes/registration.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��3f�\\?�dK�'),
('������Ѝ3�>#�.�', 'wp-includes/rest-api/class-wp-rest-request.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'O�`��pL�����'),
('�V+@�0���p�ɏhi', 'wp-includes/rest-api/class-wp-rest-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ym�clj$��s�,�'),
(':뭲c���RPe(', 'wp-includes/rest-api/class-wp-rest-server.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's�A7U~�_�Ι��'),
('a�ai�G����}��\Z �', 'wp-includes/rest-api/endpoints/class-wp-rest-attachments-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H�IsϢ9E�[�)��:'),
('k\0\Z���{ ݛ6�', 'wp-includes/rest-api/endpoints/class-wp-rest-comments-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���!��+��h)0�'),
('�.��x��Q}�t\np�', 'wp-includes/rest-api/endpoints/class-wp-rest-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�7�P�UjJ:s���	'),
('�}Ua&gl��i�)���!', 'wp-includes/rest-api/endpoints/class-wp-rest-post-statuses-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}H�J8��)wG�{�%'),
('q�s���ƞ�ù��', 'wp-includes/rest-api/endpoints/class-wp-rest-post-types-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�+�]F(�(��d�A�B'),
('3z''�O��v�J&�� ', 'wp-includes/rest-api/endpoints/class-wp-rest-posts-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���A$\0����ɓ[L'),
('�L#�����a���W �', 'wp-includes/rest-api/endpoints/class-wp-rest-revisions-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q��z֕�,NηIw�'),
('Cc�iF��h�.n7�', 'wp-includes/rest-api/endpoints/class-wp-rest-settings-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��"�3ph4�h����'),
('q���_"�1�F', 'wp-includes/rest-api/endpoints/class-wp-rest-taxonomies-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�	�^�ڱ����kM0'),
('��\Z,z���Ґ�U�', 'wp-includes/rest-api/endpoints/class-wp-rest-terms-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���t�Yo����&\\v'),
('�Ȧ0� $�7O>���', 'wp-includes/rest-api/endpoints/class-wp-rest-users-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��?Ɓ���m����s'),
('�����,���f��', 'wp-includes/rest-api/fields/class-wp-rest-comment-meta-fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AJ=ju?��My�xޓ~J'),
('ͪu�owsFC�G[c��', 'wp-includes/rest-api/fields/class-wp-rest-meta-fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '����^�''"\0[�͗��'),
('�\njݍea!�\ZWd�q', 'wp-includes/rest-api/fields/class-wp-rest-post-meta-fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����Rcv]�D�_X'),
('��W�MF`3��$��', 'wp-includes/rest-api/fields/class-wp-rest-term-meta-fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��X����r-��6Oh'),
('I6.:\n(���i\0B��', 'wp-includes/rest-api/fields/class-wp-rest-user-meta-fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��d\n��c�UK�XJ�'),
('�Ú2��d�=', 'wp-includes/rest-api.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���˴\0W¶�����\\'),
('_�\0��d �MP~��D', 'wp-includes/revision.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�J�WXV��/�uO���'),
(')�Oz=�u����˷', 'wp-includes/rewrite.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�I��Ւ�+XI�7�'),
('���w��''�6)', 'wp-includes/rss-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��1�-8�`�K�X'),
('�����A���1\Z�;�', 'wp-includes/rss.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�m��[�\0�lJ���;'),
('9�} B^��?	�"�', 'wp-includes/script-loader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�p����lsq��a'),
('Eh��������@aq��', 'wp-includes/session.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�EaΠ��:`���Zv5�'),
('Vne!�z0u1?��', 'wp-includes/shortcodes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�/Yf�4��E�e�'),
('��X=U�pfp���Z', 'wp-includes/taxonomy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#�dKsֵē�G߻� #'),
('�:+[��g��CZ���', 'wp-includes/template-loader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�EOE�ty��U��'),
('�:=�%�����M�۵', 'wp-includes/template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�x�o��[�h!�x	p5h'),
('>hЩ�XX*�v1���', 'wp-includes/theme-compat/comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"��b�=Q\n~C�}K'),
('"8A\n=��ᇼfp5', 'wp-includes/theme-compat/embed-404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��%\0��i���hq��'),
('fֈ�����V�Թ)�9', 'wp-includes/theme-compat/embed-content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�V��8�߉܁;.���'),
('�+q^e����gu�F6\n', 'wp-includes/theme-compat/embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r�L��E�va3���6I'),
('�m��L0N"�T~�b�', 'wp-includes/theme-compat/footer-embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��Z����.�+�j'),
('�Qֿ6��yq�88', 'wp-includes/theme-compat/footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_�s�0���l˿��7~'),
('&�vA��Q��c��qw8,', 'wp-includes/theme-compat/header-embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g�+��x��&�wf�X��'),
('L��bP�-I׭1f�', 'wp-includes/theme-compat/header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0L@���%�\n����P$'),
('�0�;�-,�A�Ey�', 'wp-includes/theme-compat/sidebar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���s���H�Dl�,\n'),
('�X�VטO|8}���', 'wp-includes/theme.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4�����"�:a��'),
('���+���q�pW��', 'wp-includes/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���QR>ȯy9��'),
('k��B˞�b=y��', 'wp-includes/user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u0�n�JĈ�-X/�'),
('g+yr���q����D��/', 'wp-includes/vars.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�ѓ���պ���J�π'),
('5Z����Sμ�v�`6�9', 'wp-includes/version.php', 0, '}�\Zm%��mS��p6�C', '}�\Zm%��mS��p6�C'),
('Y,Qp�gmu#�e���~', 'wp-includes/widgets/class-wp-nav-menu-widget.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���M�9 �JDA'),
('�TY�PpE�w��', 'wp-includes/widgets/class-wp-widget-archives.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����W%�1E�A�'),
('I0��S�$2�T��B*', 'wp-includes/widgets/class-wp-widget-calendar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�1��̈́�EW&o�:�'),
('R�H\r0��!�d�?c&', 'wp-includes/widgets/class-wp-widget-categories.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��_��s�&��-&'),
('&饱����W��؀�|�', 'wp-includes/widgets/class-wp-widget-links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�_\\o�@�s�2���S'),
('�n֢��\r�V5��,�', 'wp-includes/widgets/class-wp-widget-meta.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '���4��\Z�ބ�Et�U'),
('K�c��#2s�/(�"�', 'wp-includes/widgets/class-wp-widget-pages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�`�W��I��K�''�2'),
('��6����~e�{�".w', 'wp-includes/widgets/class-wp-widget-recent-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��b�`�U#XW��z'),
('l/\n�Ԁ�W�ͱ-c�', 'wp-includes/widgets/class-wp-widget-recent-posts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�b��/O�76>m�<'),
('��y7��MA�@���', 'wp-includes/widgets/class-wp-widget-rss.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�\\�Yޭ�+P�`I�'''),
('F\r�x�w~�\rܱ��\n�', 'wp-includes/widgets/class-wp-widget-search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�V��~��f�����2�'),
('�-�[ip��\\^����]', 'wp-includes/widgets/class-wp-widget-tag-cloud.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H�F��l��}��llh'),
('�\0� ��k~��U5T', 'wp-includes/widgets/class-wp-widget-text.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��fbbn���}���ܕn'),
('S��&�az8�Jض9�', 'wp-includes/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')ۏ\n�r:�#H�"y��'),
('�@���sB0<�{l�3��', 'wp-includes/wlwmanifest.xml', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ԑ����i�^��'),
('L��e�t"pc(	�e�', 'wp-includes/wp-db.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�����.F5l�c��'),
('(�^�3N������3', 'wp-includes/wp-diff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�Ң��IC����%\r4,.'),
('���^��''�q���0��', 'wp-links-opml.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U���Od''"�I�F��b'),
('�$�����j�X�])D:', 'wp-load.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�D��8NEG#1���O'),
('��\r\0FJ��B��e�', 'wp-login.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '��\r55��[-�F�/'),
('��3�T.^�ƙ<���', 'wp-mail.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '�l�M�v��D�*��xph'),
(';1ы#�Y_N��t�', 'wp-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't{�i�9ƙ�#o�3'),
('�,�4#��(�#', 'wp-signup.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ijf)���''J���'),
('o㮚-�;?X:��pҡ', 'wp-trackback.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%<�66[���sF"�C'),
('4ڂ��L$�,K[�u��', 'xmlrpc.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lS��b������2ǅ');

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfHits`
--

CREATE TABLE IF NOT EXISTS `vi_wfHits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attackLogTime` double(17,6) unsigned NOT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT '0',
  `statusCode` int(11) NOT NULL DEFAULT '200',
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `newVisit` tinyint(3) unsigned NOT NULL,
  `URL` text,
  `referer` text,
  `UA` text,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text,
  `actionData` text,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`IP`,`ctime`),
  KEY `attackLogTime` (`attackLogTime`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=378 ;

--
-- Dumping data for table `vi_wfHits`
--

INSERT INTO `vi_wfHits` (`id`, `attackLogTime`, `ctime`, `IP`, `jsRun`, `statusCode`, `isGoogle`, `userID`, `newVisit`, `URL`, `referer`, `UA`, `action`, `actionDescription`, `actionData`) VALUES
(1, 0.000000, 1488286427.859853, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(2, 0.000000, 1488286494.959498, '\0\0\0\0\0\0\0\0\0\0��z��m', 0, 200, 0, 1, 0, 'http://vedantindustries.in/wp-login.php?action=logout&_wpnonce=373138a3c5', 'http://vedantindustries.in/wp-admin/admin.php?page=WordfenceWAF&wafAction=configureAutoPrepend&wafVerify=dae881d6d1&currentAutoPrepend', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', 'logout', NULL, NULL),
(3, 0.000000, 1488286496.737478, '\0\0\0\0\0\0\0\0\0\0��z��m', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?loggedout=true', 'http://vedantindustries.in/wp-admin/admin.php?page=WordfenceWAF&wafAction=configureAutoPrepend&wafVerify=dae881d6d1&currentAutoPrepend', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(4, 0.000000, 1488294561.156154, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(5, 0.000000, 1488321436.761458, '\0\0\0\0\0\0\0\0\0\0�����\r', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://pizza-tycoon.com/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', '', NULL, NULL),
(6, 0.000000, 1488330051.278813, '\0\0\0\0\0\0\0\0\0\0��B�K>', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(7, 0.000000, 1488354596.019005, '\0\0\0\0\0\0\0\0\0\0��z��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/55.0.2883.87 Chrome/55.0.2883.87 Safari/537.36', '', NULL, NULL),
(8, 0.000000, 1488354612.864761, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(9, 0.000000, 1488367347.601878, '\0\0\0\0\0\0\0\0\0\0��B�K', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(10, 0.000000, 1488402118.316302, '\0\0\0\0\0\0\0\0\0\0��B�K', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(11, 0.000000, 1488439563.207299, '\0\0\0\0\0\0\0\0\0\0��/�x', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(12, 0.000000, 1488439583.575073, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(13, 0.000000, 1488441013.046339, '\0\0\0\0\0\0\0\0\0\0��z���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2F&reauth=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(14, 0.000000, 1488441025.650016, '\0\0\0\0\0\0\0\0\0\0��z���', 1, 503, 0, 0, 0, 'http://vedantindustries.in/wp-login.php', 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2F&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', NULL),
(15, 0.000000, 1488441194.433072, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(16, 0.000000, 1488441220.835658, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 1, 0, 'http://vedantindustries.in/wp-login.php', 'http://vedantindustries.in/wp-login.php', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', 'loginOK', NULL, NULL),
(17, 0.000000, 1488441284.031909, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 1, 0, 'http://vedantindustries.in/wp-login.php?action=logout&_wpnonce=045ae01bf6', 'http://vedantindustries.in/wp-admin/options-permalink.php', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', 'logout', NULL, NULL),
(18, 0.000000, 1488441285.247594, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?loggedout=true', 'http://vedantindustries.in/wp-admin/options-permalink.php', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(19, 0.000000, 1488441336.335198, '\0\0\0\0\0\0\0\0\0\0��z���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(20, 0.000000, 1488441450.347832, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(21, 0.000000, 1488441579.538670, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(22, 0.000000, 1488441590.907086, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(23, 0.000000, 1488441599.932634, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=90', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(24, 0.000000, 1488441849.444422, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://vedantindustries.in/enquiry/?cat_id=90', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(25, 0.000000, 1488441854.542544, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(26, 0.000000, 1488441859.008491, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/about-us/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(27, 0.000000, 1488441862.852672, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(28, 0.000000, 1488441867.051119, '\0\0\0\0\0\0\0\0\0\0���1��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(29, 0.000000, 1488441897.049812, '\0\0\0\0\0\0\0\0\0\0��z���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(30, 0.000000, 1488441906.844216, '\0\0\0\0\0\0\0\0\0\0��z���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(31, 0.000000, 1488441914.840315, '\0\0\0\0\0\0\0\0\0\0��z���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(32, 0.000000, 1488441919.054482, '\0\0\0\0\0\0\0\0\0\0��z���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/about-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(33, 0.000000, 1488441923.535888, '\0\0\0\0\0\0\0\0\0\0��z���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(34, 0.000000, 1488441927.726637, '\0\0\0\0\0\0\0\0\0\0��z���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/enquiry/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(35, 0.000000, 1488441934.023267, '\0\0\0\0\0\0\0\0\0\0��z���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(36, 0.000000, 1488458875.463307, '\0\0\0\0\0\0\0\0\0\0��B�K', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(37, 0.000000, 1488458878.952888, '\0\0\0\0\0\0\0\0\0\0��B�K>', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=90', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(38, 0.000000, 1488465783.960346, '\0\0\0\0\0\0\0\0\0\0��B�K>', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=79', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(39, 0.000000, 1488468375.885770, '\0\0\0\0\0\0\0\0\0\0��B�K', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=80', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(40, 0.000000, 1488472696.159288, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=92', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(41, 0.000000, 1488476152.066679, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=84', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(42, 0.000000, 1488481969.439046, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=96', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(43, 0.000000, 1488485290.669894, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=87', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(44, 0.000000, 1488485866.384513, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(45, 0.000000, 1488487783.077862, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=89', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(46, 0.000000, 1488491107.446611, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=88', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(47, 0.000000, 1488494645.458000, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(48, 0.000000, 1488494646.492464, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(49, 0.000000, 1488494754.876761, '\0\0\0\0\0\0\0\0\0\0���L!', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(50, 0.000000, 1488496921.793534, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=81', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(51, 0.000000, 1488496940.153816, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(52, 0.000000, 1488499691.097098, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=144', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(53, 0.000000, 1488504132.064185, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=136', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(54, 0.000000, 1488509107.060070, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=142', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(55, 0.000000, 1488509122.291246, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(56, 0.000000, 1488514091.284781, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=108', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(57, 0.000000, 1488518522.252030, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=140', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(58, 0.000000, 1488528814.200187, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=138', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(59, 0.000000, 1488546854.982888, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(60, 0.000000, 1488598848.385101, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(61, 0.000000, 1488598867.582716, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(62, 0.000000, 1488600846.422933, '\0\0\0\0\0\0\0\0\0\0���L	', 0, 200, 0, 0, 0, 'http://vedantindustries.in/a', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(63, 0.000000, 1488600847.819242, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(64, 0.000000, 1488604405.714417, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(65, 0.000000, 1488604881.708611, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(66, 0.000000, 1488610358.893376, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(67, 0.000000, 1488641960.499484, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(68, 0.000000, 1488641964.120313, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(69, 0.000000, 1488647662.539748, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(70, 0.000000, 1488650872.329267, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(71, 0.000000, 1488657287.590062, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(72, 0.000000, 1488657301.158592, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(73, 0.000000, 1488676998.479441, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/contact-us/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(74, 0.000000, 1488718312.666198, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(75, 0.000000, 1488718330.464213, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(76, 0.000000, 1488725618.053833, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(77, 0.000000, 1488732939.356113, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(78, 0.000000, 1488732941.070553, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(79, 0.000000, 1488798023.466082, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(80, 0.000000, 1488798052.026423, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(81, 0.000000, 1488846360.784486, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(82, 0.000000, 1488860795.376488, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(83, 0.000000, 1488860798.108558, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(84, 0.000000, 1488937721.271058, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(85, 0.000000, 1488937721.270243, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(86, 0.000000, 1488937750.981902, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(87, 0.000000, 1488937759.878043, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'http://vedantindustries.in/?_wfsf=detectProxy', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.82 Safari/537.1', 'scan:detectproxy', NULL, NULL),
(88, 0.000000, 1488937884.495866, '\0\0\0\0\0\0\0\0\0\0���L!', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(89, 0.000000, 1488956569.417194, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(90, 0.000000, 1488964380.885374, '\0\0\0\0\0\0\0\0\0\0��B�A�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(91, 0.000000, 1488964385.687276, '\0\0\0\0\0\0\0\0\0\0��B�A�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(92, 0.000000, 1488968706.096876, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(93, 0.000000, 1489057248.857803, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(94, 0.000000, 1489057254.251530, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(95, 0.000000, 1489057273.370823, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(96, 0.000000, 1489079318.569922, '\0\0\0\0\0\0\0\0\0\0����rv', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', '', '', NULL, NULL),
(97, 0.000000, 1489105760.453470, '\0\0\0\0\0\0\0\0\0\0����P�', 0, 200, 0, 0, 0, 'http://mail.vedantindustries.in/', '', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '', NULL, NULL),
(98, 0.000000, 1489119998.958478, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(99, 0.000000, 1489132211.868652, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(100, 0.000000, 1489132224.575289, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(101, 0.000000, 1489210707.231033, '\0\0\0\0\0\0\0\0\0\0��z��!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(102, 0.000000, 1489210724.743217, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(103, 0.000000, 1489210741.143303, '\0\0\0\0\0\0\0\0\0\0��z��!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(104, 0.000000, 1489210752.927179, '\0\0\0\0\0\0\0\0\0\0��z��!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(105, 0.000000, 1489210758.630450, '\0\0\0\0\0\0\0\0\0\0��z��!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/enquiry/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(106, 0.000000, 1489210763.452727, '\0\0\0\0\0\0\0\0\0\0��z��!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(107, 0.000000, 1489210770.459241, '\0\0\0\0\0\0\0\0\0\0��z��!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(108, 0.000000, 1489210774.844737, '\0\0\0\0\0\0\0\0\0\0��z��!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(109, 0.000000, 1489210780.423380, '\0\0\0\0\0\0\0\0\0\0��z��!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(110, 0.000000, 1489210783.249824, '\0\0\0\0\0\0\0\0\0\0��z��!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(111, 0.000000, 1489210790.346726, '\0\0\0\0\0\0\0\0\0\0��z��!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(112, 0.000000, 1489213810.554634, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(113, 0.000000, 1489219043.750967, '\0\0\0\0\0\0\0\0\0\0���.\r�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', '', NULL, NULL),
(114, 0.000000, 1489219046.367014, '\0\0\0\0\0\0\0\0\0\0��(M�z', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', '', NULL, NULL),
(115, 0.000000, 1489229560.690608, '\0\0\0\0\0\0\0\0\0\0��(M�z', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', '', NULL, NULL),
(116, 0.000000, 1489237185.091127, '\0\0\0\0\0\0\0\0\0\0��6��S', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'python-requests/2.3.0 CPython/3.4.0 Linux/4.4.35-33.55.amzn1.x86_64', '', NULL, NULL),
(117, 0.000000, 1489237186.679789, '\0\0\0\0\0\0\0\0\0\0��6��S', 0, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', '', 'python-requests/2.3.0 CPython/3.4.0 Linux/4.4.35-33.55.amzn1.x86_64', '', NULL, NULL),
(118, 0.000000, 1489300181.564176, '\0\0\0\0\0\0\0\0\0\0����Z�', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(119, 0.000000, 1489300184.176326, '\0\0\0\0\0\0\0\0\0\0����Z�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(120, 0.000000, 1489300198.624829, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(121, 0.000000, 1489316459.131766, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(122, 0.000000, 1489316462.182829, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(123, 0.000000, 1489365396.684569, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/comments/feed/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(124, 0.000000, 1489365417.809211, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(125, 0.000000, 1489392637.264664, '\0\0\0\0\0\0\0\0\0\0��@���', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3.5.30729) SurveyBot/2.3 (DomainTools)', '', NULL, NULL),
(126, 0.000000, 1489392640.376830, '\0\0\0\0\0\0\0\0\0\0��@���', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', 'http://whois.domaintools.com/vedantindustries.in', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3.5.30729) SurveyBot/2.3 (DomainTools)', '', NULL, NULL),
(127, 0.000000, 1489392641.290013, '\0\0\0\0\0\0\0\0\0\0��@���', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://whois.domaintools.com/vedantindustries.in', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3.5.30729) SurveyBot/2.3 (DomainTools)', '', NULL, NULL),
(128, 0.000000, 1489405579.531753, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(129, 0.000000, 1489439628.494849, '\0\0\0\0\0\0\0\0\0\0��-7.�', 0, 200, 0, 0, 0, 'https://www.vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(130, 0.000000, 1489439650.448775, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(131, 0.000000, 1489440921.236286, '\0\0\0\0\0\0\0\0\0\0��h�?L', 0, 200, 0, 0, 0, 'https://mail.vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(132, 0.000000, 1489442422.167527, '\0\0\0\0\0\0\0\0\0\0���˫', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(133, 0.000000, 1489442492.038652, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(134, 0.000000, 1489463112.730492, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=80', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(135, 0.000000, 1489489420.178930, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(136, 0.000000, 1489489425.472008, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(137, 0.000000, 1489489427.157297, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(138, 0.000000, 1489489429.444937, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(139, 0.000000, 1489489431.153376, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(140, 0.000000, 1489489432.644631, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(141, 0.000000, 1489489434.142965, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(142, 0.000000, 1489489435.641950, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(143, 0.000000, 1489489437.159501, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(144, 0.000000, 1489489438.758188, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(145, 0.000000, 1489489439.375904, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(146, 0.000000, 1489489440.952313, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(147, 0.000000, 1489489443.135846, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=90', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(148, 0.000000, 1489489444.946472, '\0\0\0\0\0\0\0\0\0\0��E:�;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=89', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(149, 0.000000, 1489491490.030383, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', 'https://www.google.co.in', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(150, 0.000000, 1489491506.528192, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/enquiry/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(151, 0.000000, 1489491972.752740, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(152, 0.000000, 1489491989.472593, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(153, 0.000000, 1489492000.963745, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/about-us/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(154, 0.000000, 1489492071.147624, '\0\0\0\0\0\0\0\0\0\0��=&�', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(155, 0.000000, 1489492090.944352, '\0\0\0\0\0\0\0\0\0\0��{���', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(156, 0.000000, 1489492091.746785, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(157, 0.000000, 1489492176.168936, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(158, 0.000000, 1489492196.149523, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(159, 0.000000, 1489492197.541660, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(160, 0.000000, 1489492222.754641, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(161, 0.000000, 1489492227.166962, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(162, 0.000000, 1489492257.173154, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(163, 0.000000, 1489492294.447825, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(164, 0.000000, 1489492297.247662, '\0\0\0\0\0\0\0\0\0\0��{���', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(165, 0.000000, 1489492377.853416, '\0\0\0\0\0\0\0\0\0\0����G�', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(166, 0.000000, 1489493356.848696, '\0\0\0\0\0\0\0\0\0\0����_m', 0, 200, 0, 0, 0, 'https://www.vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(167, 0.000000, 1489497101.027151, '\0\0\0\0\0\0\0\0\0\0����TC', 0, 200, 0, 0, 0, 'https://mail.vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(168, 0.000000, 1489528457.198988, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(169, 0.000000, 1489548210.115171, '\0\0\0\0\0\0\0\0\0\0����Jp', 0, 404, 0, 0, 0, 'http://vedantindustries.in/wp-content/uploads/2016/11/15060414_1121488617933870_2075129114_o-1.jpg', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(170, 0.000000, 1489548223.226320, '\0\0\0\0\0\0\0\0\0\0��Bܒ', 0, 404, 0, 0, 0, 'http://vedantindustries.in/wp-content/uploads/2016/11/15060414_1121488617933870_2075129114_o-1.jpg', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(171, 0.000000, 1489587916.496397, '\0\0\0\0\0\0\0\0\0\0���L	', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=80', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(172, 0.000000, 1489587931.662060, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(173, 0.000000, 1489587940.847055, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'http://vedantindustries.in/?_wfsf=detectProxy', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.82 Safari/537.1', 'scan:detectproxy', NULL, NULL),
(174, 0.000000, 1489595906.664436, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(175, 0.000000, 1489670866.057611, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=86', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(176, 0.000000, 1489670879.418831, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(177, 0.000000, 1489688047.026270, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(178, 0.000000, 1489688050.521750, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(179, 0.000000, 1489700454.504281, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=83', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(180, 0.000000, 1489709967.415120, '\0\0\0\0\0\0\0\0\0\0��B�@6', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(181, 0.000000, 1489709979.911802, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(182, 0.000000, 1489723641.608140, '\0\0\0\0\0\0\0\0\0\0����Jb', 0, 404, 0, 0, 0, 'http://vedantindustries.in/wp-content/uploads/2016/11/15060414_1121488617933870_2075129114_o-1.jpg', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(183, 0.000000, 1489723894.119093, '\0\0\0\0\0\0\0\0\0\0��Bܒ', 0, 404, 0, 0, 0, 'http://vedantindustries.in/wp-content/uploads/2016/11/15060414_1121488617933870_2075129114_o-1.jpg', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(184, 0.000000, 1489746853.675058, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(185, 0.000000, 1489769477.798005, '\0\0\0\0\0\0\0\0\0\0��B�@:', 0, 200, 1, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(186, 0.000000, 1489784204.887019, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fvedantindustries.in%2Fcontact-us%2F', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(187, 0.000000, 1489784218.836459, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(188, 0.000000, 1489799389.060098, '\0\0\0\0\0\0\0\0\0\0���L\n', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(189, 0.000000, 1489799409.456544, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(190, 0.000000, 1489825178.708589, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(191, 0.000000, 1489825182.062324, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(192, 0.000000, 1489825204.557429, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(193, 0.000000, 1489825208.418168, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/about-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(194, 0.000000, 1489825214.946435, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(195, 0.000000, 1489825221.541236, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(196, 0.000000, 1489825223.738278, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(197, 0.000000, 1489825230.927436, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(198, 0.000000, 1489825232.637771, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(199, 0.000000, 1489825234.351487, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/about-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(200, 0.000000, 1489825239.641361, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(201, 0.000000, 1489825242.121513, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(202, 0.000000, 1489825244.058627, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/enquiry/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL);
INSERT INTO `vi_wfHits` (`id`, `attackLogTime`, `ctime`, `IP`, `jsRun`, `statusCode`, `isGoogle`, `userID`, `newVisit`, `URL`, `referer`, `UA`, `action`, `actionDescription`, `actionData`) VALUES
(203, 0.000000, 1489825245.836048, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(204, 0.000000, 1489825247.857755, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(205, 0.000000, 1489825255.458384, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(206, 0.000000, 1489825260.257565, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(207, 0.000000, 1489825263.464118, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(208, 0.000000, 1489825272.846255, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=79', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(209, 0.000000, 1489825276.628004, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/enquiry/?cat_id=79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(210, 0.000000, 1489825280.660331, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(211, 0.000000, 1489825362.350820, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(212, 0.000000, 1489825387.317147, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 503, 0, 0, 0, 'http://vedantindustries.in/wp-login.php', 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', NULL),
(213, 0.000000, 1489825387.718328, '\0\0\0\0\0\0\0\0\0\0��z��i', 1, 503, 0, 0, 0, 'http://vedantindustries.in/wp-login.php', 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', NULL),
(214, 1489825474.455630, 1489825474.430000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(215, 1489825474.065295, 1489825474.040000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L3Byb2R1Y3Qtc2VydmljZXMv"}'),
(216, 1489825471.965323, 1489825471.940000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(217, 1489825470.510128, 1489825470.490000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/enquiry/?cat_id=79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(218, 1489825466.407502, 1489825466.380000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(219, 1489825466.020106, 1489825466.000000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"Lw=="}'),
(220, 1489825463.527675, 1489825463.510000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(221, 1489825463.119280, 1489825463.100000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"Lw=="}'),
(222, 1489825459.554326, 1489825459.530000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(223, 1489825459.145884, 1489825459.120000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/', 'http://vedantindustries.in/enquiry/?cat_id=79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"Lw=="}'),
(224, 1489825457.247121, 1489825457.220000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(225, 1489825456.850821, 1489825456.830000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/', 'http://vedantindustries.in/enquiry/?cat_id=79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"Lw=="}'),
(226, 1489825446.340204, 1489825446.320000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(227, 1489825445.940652, 1489825445.920000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/', 'http://vedantindustries.in/enquiry/?cat_id=79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"Lw=="}'),
(228, 1489825444.309779, 1489825444.280000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/enquiry/?cat_id=79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(229, 1489825436.050098, 1489825436.000000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(230, 1489825435.618631, 1489825435.590000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L3Byb2R1Y3Qtc2VydmljZXMv"}'),
(231, 1489825409.929918, 1489825409.900000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/wp-login.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(232, 1489825409.536786, 1489825409.510000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/wp-login.php', 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L3dwLWxvZ2luLnBocA=="}'),
(233, 1489825401.430746, 1489825401.400000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(234, 1489825397.396920, 1489825397.370000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/wp-login.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(235, 1489825397.008949, 1489825396.990000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/wp-login.php', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L3dwLWxvZ2luLnBocA=="}'),
(236, 1489825390.326460, 1489825390.300000, '\0\0\0\0\0\0\0\0\0\0��z��i', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/wp-login.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(237, 0.000000, 1489828401.340337, '\0\0\0\0\0\0\0\0\0\0��K�ݪ', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows; U; MSIE 7.0; Windows NT 6.0; en-US)', '', NULL, NULL),
(238, 0.000000, 1489828516.254940, '\0\0\0\0\0\0\0\0\0\0��/�', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(239, 0.000000, 1489828596.153665, '\0\0\0\0\0\0\0\0\0\0��/�', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(240, 0.000000, 1489829078.035230, '\0\0\0\0\0\0\0\0\0\0��/�', 1, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(241, 0.000000, 1489906644.676666, '\0\0\0\0\0\0\0\0\0\0��z��\0', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(242, 0.000000, 1489906647.302562, '\0\0\0\0\0\0\0\0\0\0��z��\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(243, 0.000000, 1489906664.479106, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(244, 0.000000, 1489906686.107333, '\0\0\0\0\0\0\0\0\0\0��z��\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(245, 0.000000, 1489906693.698006, '\0\0\0\0\0\0\0\0\0\0��z��\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(246, 0.000000, 1489906725.396855, '\0\0\0\0\0\0\0\0\0\0��z��\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(247, 0.000000, 1489906756.008894, '\0\0\0\0\0\0\0\0\0\0��z��\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(248, 0.000000, 1489906764.896555, '\0\0\0\0\0\0\0\0\0\0��z��\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(249, 0.000000, 1489906815.779385, '\0\0\0\0\0\0\0\0\0\0��z��\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(250, 0.000000, 1489907175.401363, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(251, 0.000000, 1489909206.277793, '\0\0\0\0\0\0\0\0\0\0��z��\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(252, 0.000000, 1489909220.691986, '\0\0\0\0\0\0\0\0\0\0��z��\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2F&reauth=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(253, 0.000000, 1489909250.618786, '\0\0\0\0\0\0\0\0\0\0��z��\0', 1, 404, 0, 0, 0, 'http://vedantindustries.in/wp-login', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(254, 0.000000, 1489909260.600028, '\0\0\0\0\0\0\0\0\0\0��z��\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2F&reauth=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(255, 0.000000, 1489909289.398083, '\0\0\0\0\0\0\0\0\0\0��z��\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2F&reauth=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(256, 0.000000, 1489916361.831498, '\0\0\0\0\0\0\0\0\0\0����Z�', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(257, 0.000000, 1489916365.188607, '\0\0\0\0\0\0\0\0\0\0����Z�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(258, 0.000000, 1489949790.622373, '\0\0\0\0\0\0\0\0\0\0��B�K', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(259, 0.000000, 1489949793.468083, '\0\0\0\0\0\0\0\0\0\0��B�E�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(260, 0.000000, 1489949806.378747, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(261, 0.000000, 1489978670.384199, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/feed/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(262, 0.000000, 1489990881.372768, '\0\0\0\0\0\0\0\0\0\0���L	', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(263, 0.000000, 1490043042.879216, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(264, 0.000000, 1490043068.437204, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(265, 0.000000, 1490047036.019741, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(266, 0.000000, 1490057721.199297, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(267, 0.000000, 1490079236.675093, '\0\0\0\0\0\0\0\0\0\0��z��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(268, 0.000000, 1490079245.419287, '\0\0\0\0\0\0\0\0\0\0��z��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(269, 0.000000, 1490079625.944308, '\0\0\0\0\0\0\0\0\0\0��z��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(270, 0.000000, 1490079647.301006, '\0\0\0\0\0\0\0\0\0\0��z��', 1, 200, 0, 1, 0, 'http://vedantindustries.in/wp-login.php', 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'loginOK', NULL, NULL),
(271, 0.000000, 1490095595.018892, '\0\0\0\0\0\0\0\0\0\0��z��', 1, 200, 0, 1, 0, 'http://vedantindustries.in/wp-login.php?action=logout&_wpnonce=e6b8377d38', 'http://vedantindustries.in/wp-admin/profile.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'logout', NULL, NULL),
(272, 0.000000, 1490095595.813957, '\0\0\0\0\0\0\0\0\0\0��z��', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?loggedout=true', 'http://vedantindustries.in/wp-admin/profile.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(273, 0.000000, 1490144116.989082, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(274, 0.000000, 1490144116.988466, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(275, 0.000000, 1490144129.919471, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(276, 0.000000, 1490149121.700461, '\0\0\0\0\0\0\0\0\0\0��\\?[T', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:50.0) Gecko/20100101 Firefox/50.0', '', NULL, NULL),
(277, 0.000000, 1490149122.915063, '\0\0\0\0\0\0\0\0\0\0��\\?[T', 0, 200, 0, 0, 0, 'http://vedantindustries.in/?author=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:50.0) Gecko/20100101 Firefox/50.0', '', NULL, NULL),
(278, 0.000000, 1490149123.729455, '\0\0\0\0\0\0\0\0\0\0��\\?[T', 0, 200, 0, 0, 0, 'http://vedantindustries.in/wp-json/wp/v2/users/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:50.0) Gecko/20100101 Firefox/50.0', '', NULL, NULL),
(279, 0.000000, 1490149125.432535, '\0\0\0\0\0\0\0\0\0\0��\\?[T', 0, 503, 0, 0, 0, 'http://vedantindustries.in/xmlrpc.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:50.0) Gecko/20100101 Firefox/50.0', 'blocked:wfsn', 'Blocked by Wordfence Security Network', NULL),
(280, 0.000000, 1490150424.035899, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(281, 0.000000, 1490150425.020224, '\0\0\0\0\0\0\0\0\0\0��B�@�', 0, 200, 1, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(282, 0.000000, 1490230552.392831, '\0\0\0\0\0\0\0\0\0\0����{�', 0, 200, 0, 0, 0, 'https://mail.vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(283, 0.000000, 1490230582.043634, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(284, 0.000000, 1490230591.562636, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/?_wfsf=detectProxy', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.82 Safari/537.1', 'scan:detectproxy', NULL, NULL),
(285, 0.000000, 1490231692.060573, '\0\0\0\0\0\0\0\0\0\0��h�8', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(286, 0.000000, 1490232918.558929, '\0\0\0\0\0\0\0\0\0\0����Dt', 0, 200, 0, 0, 0, 'https://www.vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(287, 0.000000, 1490292376.683188, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(288, 0.000000, 1490292380.779770, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(289, 0.000000, 1490292381.596368, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(290, 0.000000, 1490292384.310646, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(291, 0.000000, 1490292385.495223, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(292, 0.000000, 1490292393.787506, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(293, 0.000000, 1490292394.789006, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(294, 0.000000, 1490292395.110431, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(295, 0.000000, 1490292395.791177, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(296, 0.000000, 1490292396.578950, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=90', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(297, 0.000000, 1490292405.395562, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=89', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(298, 0.000000, 1490292413.985384, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=88', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(299, 0.000000, 1490292422.770601, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=87', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(300, 0.000000, 1490292431.888845, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=85', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(301, 0.000000, 1490292440.913628, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=84', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(302, 0.000000, 1490292449.474044, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=96', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(303, 0.000000, 1490292457.779944, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=95', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(304, 0.000000, 1490292466.017962, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=92', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(305, 0.000000, 1490292474.410914, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=91', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(306, 0.000000, 1490292482.697616, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=86', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(307, 0.000000, 1490292490.976116, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=83', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(308, 0.000000, 1490292499.493752, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=81', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(309, 0.000000, 1490292507.712222, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=80', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(310, 0.000000, 1490292516.489822, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=79', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(311, 0.000000, 1490292524.819656, '\0\0\0\0\0\0\0\0\0\0���cB�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36', '', NULL, NULL),
(312, 0.000000, 1490326208.629846, '\0\0\0\0\0\0\0\0\0\0���L\Z', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(313, 0.000000, 1490346647.455777, '\0\0\0\0\0\0\0\0\0\0��M���', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://pizza-imperia.com/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', '', NULL, NULL),
(314, 0.000000, 1490346668.715091, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(315, 0.000000, 1490398066.031202, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(316, 0.000000, 1490398069.163222, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(317, 0.000000, 1490398070.732963, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://www.vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(318, 0.000000, 1490398073.149006, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(319, 0.000000, 1490398077.654263, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(320, 0.000000, 1490398082.927505, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(321, 0.000000, 1490398087.540735, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(322, 0.000000, 1490398092.160821, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(323, 0.000000, 1490398097.949399, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=85', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(324, 0.000000, 1490398102.542319, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=84', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(325, 0.000000, 1490398107.248616, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=90', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(326, 0.000000, 1490398112.761444, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=87', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(327, 0.000000, 1490398117.460896, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=89', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(328, 0.000000, 1490398122.250304, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=88', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(329, 0.000000, 1490398127.321488, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(330, 0.000000, 1490398131.859768, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=96', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(331, 0.000000, 1490398137.464490, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=92', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(332, 0.000000, 1490398142.354506, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=91', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(333, 0.000000, 1490398146.962550, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=95', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(334, 0.000000, 1490398152.625841, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(335, 0.000000, 1490398157.249906, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=86', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(336, 0.000000, 1490398162.942323, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=81', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(337, 0.000000, 1490398167.559949, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=79', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(338, 0.000000, 1490398172.065500, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=83', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(339, 0.000000, 1490398177.641645, '\0\0\0\0\0\0\0\0\0\0��-7�8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=80', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(340, 0.000000, 1490431137.150699, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(341, 0.000000, 1490436841.536467, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/comments/feed/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(342, 0.000000, 1490445675.855600, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/xmlrpc.php?rsd', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(343, 0.000000, 1490508421.291447, '\0\0\0\0\0\0\0\0\0\0��{�w', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0', '', NULL, NULL),
(344, 0.000000, 1490508429.869851, '\0\0\0\0\0\0\0\0\0\0��{�w', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0', '', NULL, NULL),
(345, 0.000000, 1490508448.762818, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(346, 0.000000, 1490508563.148375, '\0\0\0\0\0\0\0\0\0\0��{�w', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0', '', NULL, NULL),
(347, 0.000000, 1490508614.659354, '\0\0\0\0\0\0\0\0\0\0��{�w', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0', '', NULL, NULL),
(348, 0.000000, 1490509011.367429, '\0\0\0\0\0\0\0\0\0\0��{�w', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=96', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0', '', NULL, NULL),
(349, 0.000000, 1490511428.464306, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fvedantindustries.in%2Fenquiry%2F&format=xml', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(350, 0.000000, 1490537811.979622, '\0\0\0\0\0\0\0\0\0\0���L\n', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=96', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(351, 0.000000, 1490628920.714425, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/a', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(352, 0.000000, 1490628924.508667, '\0\0\0\0\0\0\0\0\0\0���L\n', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(353, 0.000000, 1490628925.688881, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(354, 0.000000, 1490628941.104860, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(355, 0.000000, 1490641681.239231, '\0\0\0\0\0\0\0\0\0\0���L!', 0, 200, 0, 0, 0, 'http://vedantindustries.in/a', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(356, 0.000000, 1490641693.786405, '\0\0\0\0\0\0\0\0\0\0���L!', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(357, 0.000000, 1490642070.901401, '\0\0\0\0\0\0\0\0\0\0���+�U', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; SiteExplorer/1.1b; +http://siteexplorer.info/Backlink-Checker-Spider/)', '', NULL, NULL),
(358, 0.000000, 1490642072.301501, '\0\0\0\0\0\0\0\0\0\0���+�U', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'Mozilla/5.0 (compatible; SiteExplorer/1.1b; +http://siteexplorer.info/Backlink-Checker-Spider/)', '', NULL, NULL),
(359, 0.000000, 1490642074.131454, '\0\0\0\0\0\0\0\0\0\0���+�U', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; SiteExplorer/1.1b; +http://siteexplorer.info/Backlink-Checker-Spider/)', '', NULL, NULL),
(360, 0.000000, 1490642075.988488, '\0\0\0\0\0\0\0\0\0\0���+�U', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; SiteExplorer/1.1b; +http://siteexplorer.info/Backlink-Checker-Spider/)', '', NULL, NULL),
(361, 0.000000, 1490670254.186027, '\0\0\0\0\0\0\0\0\0\0��?��D', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(362, 0.000000, 1490670270.126263, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(363, 0.000000, 1490695551.562721, '\0\0\0\0\0\0\0\0\0\0��A��', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://hvd-store.com/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', '', NULL, NULL),
(364, 0.000000, 1490697257.711761, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/?p=12', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(365, 0.000000, 1490697258.707521, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(366, 0.000000, 1490704721.016818, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=95', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(367, 0.000000, 1490710513.649161, '\0\0\0\0\0\0\0\0\0\0��z�r', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://webkidunia.com/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', '', NULL, NULL),
(368, 0.000000, 1490710528.703193, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(369, 0.000000, 1490740710.221143, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(370, 0.000000, 1490740726.816981, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(371, 0.000000, 1490809036.986902, '\0\0\0\0\0\0\0\0\0\0���L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fvedantindustries.in%2Fenquiry%2F', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(372, 0.000000, 1490809051.173557, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(373, 0.000000, 1490840838.221162, '\0\0\0\0\0\0\0\0\0\0��B�BD', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(374, 0.000000, 1490840840.993376, '\0\0\0\0\0\0\0\0\0\0��B�B~', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(375, 0.000000, 1490853709.335855, '\0\0\0\0\0\0\0\0\0\0���L�', 0, 200, 0, 0, 0, 'http://vedantindustries.in/feed/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(376, 0.000000, 1490853726.050227, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL);
INSERT INTO `vi_wfHits` (`id`, `attackLogTime`, `ctime`, `IP`, `jsRun`, `statusCode`, `isGoogle`, `userID`, `newVisit`, `URL`, `referer`, `UA`, `action`, `actionDescription`, `actionData`) VALUES
(377, 0.000000, 1490853731.792336, '\0\0\0\0\0\0\0\0\0\0��E.$', 0, 200, 0, 0, 0, 'http://vedantindustries.in/?_wfsf=detectProxy', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.82 Safari/537.1', 'scan:detectproxy', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfHoover`
--

CREATE TABLE IF NOT EXISTS `vi_wfHoover` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text,
  `host` text,
  `path` text,
  `hostKey` binary(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `k2` (`hostKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfIssues`
--

CREATE TABLE IF NOT EXISTS `vi_wfIssues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

--
-- Dumping data for table `vi_wfIssues`
--

INSERT INTO `vi_wfIssues` (`id`, `time`, `status`, `type`, `severity`, `ignoreP`, `ignoreC`, `shortMsg`, `longMsg`, `data`) VALUES
(1, 1488286453, 'ignoreC', 'wfThemeUpgrade', 2, 'b44af136f2c3b1943cba8a3226048223', 'b44af136f2c3b1943cba8a3226048223', 'The Theme "Advertica Lite" needs an upgrade (1.0.10 -> 1.0.11).', 'You need to upgrade "Advertica Lite" to the newest version to ensure you have any security fixes the developer has released.', 'a:7:{s:10:"newVersion";s:6:"1.0.11";s:7:"package";s:63:"https://downloads.wordpress.org/theme/advertica-lite.1.0.11.zip";s:3:"URL";s:44:"https://wordpress.org/themes/advertica-lite/";s:4:"Name";s:14:"Advertica Lite";s:4:"name";s:14:"Advertica Lite";s:7:"version";s:6:"1.0.10";s:20:"vulnerabilityPatched";b:0;}'),
(118, 1490853791, 'new', 'wfPluginUpgrade', 2, '0c874f161997c845e206d736bc4aef39', '0c874f161997c845e206d736bc4aef39', 'The Plugin "Google Map" needs an upgrade (2.4.0 -> 2.5.0).', 'You need to upgrade "Google Map" to the newest version to ensure you have any security fixes the developer has released.', 'a:16:{s:4:"Name";s:10:"Google Map";s:9:"PluginURI";s:41:"https://github.com/ankurk91/wp-google-map";s:7:"Version";s:5:"2.4.0";s:11:"Description";s:169:"Simple, light weight and non-bloated Google Map Plugin. Short code : <code>[ank_google_map]</code> <cite>By <a href="https://ankurk91.github.io/">Ankur Kumar</a>.</cite>";s:6:"Author";s:53:"<a href="https://ankurk91.github.io/">Ankur Kumar</a>";s:9:"AuthorURI";s:27:"https://ankurk91.github.io/";s:10:"TextDomain";s:14:"ank-google-map";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:66:"<a href="https://github.com/ankurk91/wp-google-map">Google Map</a>";s:10:"AuthorName";s:11:"Ankur Kumar";s:10:"pluginFile";s:87:"/home/vedantindustries/public_html/wp-content/plugins/ank-google-map/ank-google-map.php";s:10:"newVersion";s:5:"2.5.0";s:4:"slug";s:14:"ank-google-map";s:5:"wpURL";s:44:"https://wordpress.org/plugins/ank-google-map";s:20:"vulnerabilityPatched";b:0;}'),
(115, 1490853791, 'new', 'wfUpgrade', 1, '0ae1093452ea46624c9b7e527c789fa7', '0ae1093452ea46624c9b7e527c789fa7', 'Your WordPress version is out of date', 'WordPress version 4.7.3 is now available. Please upgrade immediately to get the latest security updates from WordPress.', 'a:2:{s:14:"currentVersion";s:5:"4.7.2";s:10:"newVersion";s:5:"4.7.3";}'),
(116, 1490853791, 'new', 'wfPluginUpgrade', 2, '654e9867b032fda80fc1384a93a4401f', '654e9867b032fda80fc1384a93a4401f', 'The Plugin "Contact Form 7" needs an upgrade (4.6.1 -> 4.7).', 'You need to upgrade "Contact Form 7" to the newest version to ensure you have any security fixes the developer has released.', 'a:16:{s:4:"Name";s:14:"Contact Form 7";s:9:"PluginURI";s:24:"http://contactform7.com/";s:7:"Version";s:5:"4.6.1";s:11:"Description";s:133:"Just another contact form plugin. Simple but flexible. <cite>By <a href="http://ideasilo.wordpress.com/">Takayuki Miyoshi</a>.</cite>";s:6:"Author";s:61:"<a href="http://ideasilo.wordpress.com/">Takayuki Miyoshi</a>";s:9:"AuthorURI";s:30:"http://ideasilo.wordpress.com/";s:10:"TextDomain";s:14:"contact-form-7";s:10:"DomainPath";s:11:"/languages/";s:7:"Network";b:0;s:5:"Title";s:53:"<a href="http://contactform7.com/">Contact Form 7</a>";s:10:"AuthorName";s:16:"Takayuki Miyoshi";s:10:"pluginFile";s:90:"/home/vedantindustries/public_html/wp-content/plugins/contact-form-7/wp-contact-form-7.php";s:10:"newVersion";s:3:"4.7";s:4:"slug";s:14:"contact-form-7";s:5:"wpURL";s:44:"https://wordpress.org/plugins/contact-form-7";s:20:"vulnerabilityPatched";b:0;}'),
(117, 1490853791, 'new', 'wfPluginUpgrade', 2, '327a9974760ac510492c64f7579aa73b', '327a9974760ac510492c64f7579aa73b', 'The Plugin "Custom Post Type UI" needs an upgrade (1.5.2 -> 1.5.3).', 'You need to upgrade "Custom Post Type UI" to the newest version to ensure you have any security fixes the developer has released.', 'a:16:{s:4:"Name";s:19:"Custom Post Type UI";s:9:"PluginURI";s:53:"https://github.com/WebDevStudios/custom-post-type-ui/";s:7:"Version";s:5:"1.5.2";s:11:"Description";s:149:"Admin panel for creating custom post types and custom taxonomies in WordPress <cite>By <a href="https://webdevstudios.com/">WebDevStudios</a>.</cite>";s:6:"Author";s:54:"<a href="https://webdevstudios.com/">WebDevStudios</a>";s:9:"AuthorURI";s:26:"https://webdevstudios.com/";s:10:"TextDomain";s:19:"custom-post-type-ui";s:10:"DomainPath";s:10:"/languages";s:7:"Network";b:0;s:5:"Title";s:87:"<a href="https://github.com/WebDevStudios/custom-post-type-ui/">Custom Post Type UI</a>";s:10:"AuthorName";s:13:"WebDevStudios";s:10:"pluginFile";s:97:"/home/vedantindustries/public_html/wp-content/plugins/custom-post-type-ui/custom-post-type-ui.php";s:10:"newVersion";s:5:"1.5.3";s:4:"slug";s:19:"custom-post-type-ui";s:5:"wpURL";s:49:"https://wordpress.org/plugins/custom-post-type-ui";s:20:"vulnerabilityPatched";b:0;}'),
(119, 1490853791, 'new', 'wfPluginUpgrade', 2, '4a3fcf7a5cf70633ad24b0531b403694', '4a3fcf7a5cf70633ad24b0531b403694', 'The Plugin "Wordfence Security" needs an upgrade (6.3.2 -> 6.3.5).', 'You need to upgrade "Wordfence Security" to the newest version to ensure you have any security fixes the developer has released.', 'a:16:{s:4:"Name";s:18:"Wordfence Security";s:9:"PluginURI";s:25:"http://www.wordfence.com/";s:7:"Version";s:5:"6.3.2";s:11:"Description";s:131:"Wordfence Security &#8211; Anti-virus, Firewall and Malware Scan <cite>By <a href="http://www.wordfence.com/">Wordfence</a>.</cite>";s:6:"Author";s:49:"<a href="http://www.wordfence.com/">Wordfence</a>";s:9:"AuthorURI";s:25:"http://www.wordfence.com/";s:10:"TextDomain";s:9:"wordfence";s:10:"DomainPath";s:0:"";s:7:"Network";b:1;s:5:"Title";s:58:"<a href="http://www.wordfence.com/">Wordfence Security</a>";s:10:"AuthorName";s:9:"Wordfence";s:10:"pluginFile";s:77:"/home/vedantindustries/public_html/wp-content/plugins/wordfence/wordfence.php";s:10:"newVersion";s:5:"6.3.5";s:4:"slug";s:9:"wordfence";s:5:"wpURL";s:39:"https://wordpress.org/plugins/wordfence";s:20:"vulnerabilityPatched";b:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfKnownFileList`
--

CREATE TABLE IF NOT EXISTS `vi_wfKnownFileList` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2204 ;

--
-- Dumping data for table `vi_wfKnownFileList`
--

INSERT INTO `vi_wfKnownFileList` (`id`, `path`) VALUES
(1, 'index.php'),
(2, 'license.txt'),
(3, 'readme.html'),
(4, 'wordfence-waf.php'),
(5, 'wp-activate.php'),
(6, 'wp-admin/about.php'),
(7, 'wp-admin/admin-ajax.php'),
(8, 'wp-admin/admin-footer.php'),
(9, 'wp-admin/admin-functions.php'),
(10, 'wp-admin/admin-header.php'),
(11, 'wp-admin/admin-post.php'),
(12, 'wp-admin/admin.php'),
(13, 'wp-admin/async-upload.php'),
(14, 'wp-admin/comment.php'),
(15, 'wp-admin/credits.php'),
(16, 'wp-admin/css/about-rtl.css'),
(17, 'wp-admin/css/about-rtl.min.css'),
(18, 'wp-admin/css/about.css'),
(19, 'wp-admin/css/about.min.css'),
(20, 'wp-admin/css/admin-menu-rtl.css'),
(21, 'wp-admin/css/admin-menu-rtl.min.css'),
(22, 'wp-admin/css/admin-menu.css'),
(23, 'wp-admin/css/admin-menu.min.css'),
(24, 'wp-admin/css/color-picker-rtl.css'),
(25, 'wp-admin/css/color-picker-rtl.min.css'),
(26, 'wp-admin/css/color-picker.css'),
(27, 'wp-admin/css/color-picker.min.css'),
(28, 'wp-admin/css/colors/_admin.scss'),
(29, 'wp-admin/css/colors/_mixins.scss'),
(30, 'wp-admin/css/colors/_variables.scss'),
(31, 'wp-admin/css/colors/blue/colors-rtl.css'),
(32, 'wp-admin/css/colors/blue/colors-rtl.min.css'),
(33, 'wp-admin/css/colors/blue/colors.css'),
(34, 'wp-admin/css/colors/blue/colors.min.css'),
(35, 'wp-admin/css/colors/blue/colors.scss'),
(36, 'wp-admin/css/colors/coffee/colors-rtl.css'),
(37, 'wp-admin/css/colors/coffee/colors-rtl.min.css'),
(38, 'wp-admin/css/colors/coffee/colors.css'),
(39, 'wp-admin/css/colors/coffee/colors.min.css'),
(40, 'wp-admin/css/colors/coffee/colors.scss'),
(41, 'wp-admin/css/colors/ectoplasm/colors-rtl.css'),
(42, 'wp-admin/css/colors/ectoplasm/colors-rtl.min.css'),
(43, 'wp-admin/css/colors/ectoplasm/colors.css'),
(44, 'wp-admin/css/colors/ectoplasm/colors.min.css'),
(45, 'wp-admin/css/colors/ectoplasm/colors.scss'),
(46, 'wp-admin/css/colors/light/colors-rtl.css'),
(47, 'wp-admin/css/colors/light/colors-rtl.min.css'),
(48, 'wp-admin/css/colors/light/colors.css'),
(49, 'wp-admin/css/colors/light/colors.min.css'),
(50, 'wp-admin/css/colors/light/colors.scss'),
(51, 'wp-admin/css/colors/midnight/colors-rtl.css'),
(52, 'wp-admin/css/colors/midnight/colors-rtl.min.css'),
(53, 'wp-admin/css/colors/midnight/colors.css'),
(54, 'wp-admin/css/colors/midnight/colors.min.css'),
(55, 'wp-admin/css/colors/midnight/colors.scss'),
(56, 'wp-admin/css/colors/ocean/colors-rtl.css'),
(57, 'wp-admin/css/colors/ocean/colors-rtl.min.css'),
(58, 'wp-admin/css/colors/ocean/colors.css'),
(59, 'wp-admin/css/colors/ocean/colors.min.css'),
(60, 'wp-admin/css/colors/ocean/colors.scss'),
(61, 'wp-admin/css/colors/sunrise/colors-rtl.css'),
(62, 'wp-admin/css/colors/sunrise/colors-rtl.min.css'),
(63, 'wp-admin/css/colors/sunrise/colors.css'),
(64, 'wp-admin/css/colors/sunrise/colors.min.css'),
(65, 'wp-admin/css/colors/sunrise/colors.scss'),
(66, 'wp-admin/css/common-rtl.css'),
(67, 'wp-admin/css/common-rtl.min.css'),
(68, 'wp-admin/css/common.css'),
(69, 'wp-admin/css/common.min.css'),
(70, 'wp-admin/css/customize-controls-rtl.css'),
(71, 'wp-admin/css/customize-controls-rtl.min.css'),
(72, 'wp-admin/css/customize-controls.css'),
(73, 'wp-admin/css/customize-controls.min.css'),
(74, 'wp-admin/css/customize-nav-menus-rtl.css'),
(75, 'wp-admin/css/customize-nav-menus-rtl.min.css'),
(76, 'wp-admin/css/customize-nav-menus.css'),
(77, 'wp-admin/css/customize-nav-menus.min.css'),
(78, 'wp-admin/css/customize-widgets-rtl.css'),
(79, 'wp-admin/css/customize-widgets-rtl.min.css'),
(80, 'wp-admin/css/customize-widgets.css'),
(81, 'wp-admin/css/customize-widgets.min.css'),
(82, 'wp-admin/css/dashboard-rtl.css'),
(83, 'wp-admin/css/dashboard-rtl.min.css'),
(84, 'wp-admin/css/dashboard.css'),
(85, 'wp-admin/css/dashboard.min.css'),
(86, 'wp-admin/css/deprecated-media-rtl.css'),
(87, 'wp-admin/css/deprecated-media-rtl.min.css'),
(88, 'wp-admin/css/deprecated-media.css'),
(89, 'wp-admin/css/deprecated-media.min.css'),
(90, 'wp-admin/css/edit-rtl.css'),
(91, 'wp-admin/css/edit-rtl.min.css'),
(92, 'wp-admin/css/edit.css'),
(93, 'wp-admin/css/edit.min.css'),
(94, 'wp-admin/css/farbtastic-rtl.css'),
(95, 'wp-admin/css/farbtastic-rtl.min.css'),
(96, 'wp-admin/css/farbtastic.css'),
(97, 'wp-admin/css/farbtastic.min.css'),
(98, 'wp-admin/css/forms-rtl.css'),
(99, 'wp-admin/css/forms-rtl.min.css'),
(100, 'wp-admin/css/forms.css'),
(101, 'wp-admin/css/forms.min.css'),
(102, 'wp-admin/css/ie-rtl.css'),
(103, 'wp-admin/css/ie-rtl.min.css'),
(104, 'wp-admin/css/ie.css'),
(105, 'wp-admin/css/ie.min.css'),
(106, 'wp-admin/css/install-rtl.css'),
(107, 'wp-admin/css/install-rtl.min.css'),
(108, 'wp-admin/css/install.css'),
(109, 'wp-admin/css/install.min.css'),
(110, 'wp-admin/css/l10n-rtl.css'),
(111, 'wp-admin/css/l10n-rtl.min.css'),
(112, 'wp-admin/css/l10n.css'),
(113, 'wp-admin/css/l10n.min.css'),
(114, 'wp-admin/css/list-tables-rtl.css'),
(115, 'wp-admin/css/list-tables-rtl.min.css'),
(116, 'wp-admin/css/list-tables.css'),
(117, 'wp-admin/css/list-tables.min.css'),
(118, 'wp-admin/css/login-rtl.css'),
(119, 'wp-admin/css/login-rtl.min.css'),
(120, 'wp-admin/css/login.css'),
(121, 'wp-admin/css/login.min.css'),
(122, 'wp-admin/css/media-rtl.css'),
(123, 'wp-admin/css/media-rtl.min.css'),
(124, 'wp-admin/css/media.css'),
(125, 'wp-admin/css/media.min.css'),
(126, 'wp-admin/css/nav-menus-rtl.css'),
(127, 'wp-admin/css/nav-menus-rtl.min.css'),
(128, 'wp-admin/css/nav-menus.css'),
(129, 'wp-admin/css/nav-menus.min.css'),
(130, 'wp-admin/css/press-this-editor-rtl.css'),
(131, 'wp-admin/css/press-this-editor-rtl.min.css'),
(132, 'wp-admin/css/press-this-editor.css'),
(133, 'wp-admin/css/press-this-editor.min.css'),
(134, 'wp-admin/css/press-this-rtl.css'),
(135, 'wp-admin/css/press-this-rtl.min.css'),
(136, 'wp-admin/css/press-this.css'),
(137, 'wp-admin/css/press-this.min.css'),
(138, 'wp-admin/css/revisions-rtl.css'),
(139, 'wp-admin/css/revisions-rtl.min.css'),
(140, 'wp-admin/css/revisions.css'),
(141, 'wp-admin/css/revisions.min.css'),
(142, 'wp-admin/css/site-icon-rtl.css'),
(143, 'wp-admin/css/site-icon-rtl.min.css'),
(144, 'wp-admin/css/site-icon.css'),
(145, 'wp-admin/css/site-icon.min.css'),
(146, 'wp-admin/css/themes-rtl.css'),
(147, 'wp-admin/css/themes-rtl.min.css'),
(148, 'wp-admin/css/themes.css'),
(149, 'wp-admin/css/themes.min.css'),
(150, 'wp-admin/css/widgets-rtl.css'),
(151, 'wp-admin/css/widgets-rtl.min.css'),
(152, 'wp-admin/css/widgets.css'),
(153, 'wp-admin/css/widgets.min.css'),
(154, 'wp-admin/css/wp-admin-rtl.css'),
(155, 'wp-admin/css/wp-admin-rtl.min.css'),
(156, 'wp-admin/css/wp-admin.css'),
(157, 'wp-admin/css/wp-admin.min.css'),
(158, 'wp-admin/custom-background.php'),
(159, 'wp-admin/custom-header.php'),
(160, 'wp-admin/customize.php'),
(161, 'wp-admin/edit-comments.php'),
(162, 'wp-admin/edit-form-advanced.php'),
(163, 'wp-admin/edit-form-comment.php'),
(164, 'wp-admin/edit-link-form.php'),
(165, 'wp-admin/edit-tag-form.php'),
(166, 'wp-admin/edit-tags.php'),
(167, 'wp-admin/edit.php'),
(168, 'wp-admin/export.php'),
(169, 'wp-admin/freedoms.php'),
(170, 'wp-admin/images/align-center-2x.png'),
(171, 'wp-admin/images/align-center.png'),
(172, 'wp-admin/images/align-left-2x.png'),
(173, 'wp-admin/images/align-left.png'),
(174, 'wp-admin/images/align-none-2x.png'),
(175, 'wp-admin/images/align-none.png'),
(176, 'wp-admin/images/align-right-2x.png'),
(177, 'wp-admin/images/align-right.png'),
(178, 'wp-admin/images/arrows-2x.png'),
(179, 'wp-admin/images/arrows.png'),
(180, 'wp-admin/images/browser-rtl.png'),
(181, 'wp-admin/images/browser.png'),
(182, 'wp-admin/images/bubble_bg-2x.gif'),
(183, 'wp-admin/images/bubble_bg.gif'),
(184, 'wp-admin/images/comment-grey-bubble-2x.png'),
(185, 'wp-admin/images/comment-grey-bubble.png'),
(186, 'wp-admin/images/date-button-2x.gif'),
(187, 'wp-admin/images/date-button.gif'),
(188, 'wp-admin/images/generic.png'),
(189, 'wp-admin/images/icons32-2x.png'),
(190, 'wp-admin/images/icons32-vs-2x.png'),
(191, 'wp-admin/images/icons32-vs.png'),
(192, 'wp-admin/images/icons32.png'),
(193, 'wp-admin/images/imgedit-icons-2x.png'),
(194, 'wp-admin/images/imgedit-icons.png'),
(195, 'wp-admin/images/list-2x.png'),
(196, 'wp-admin/images/list.png'),
(197, 'wp-admin/images/loading.gif'),
(198, 'wp-admin/images/marker.png'),
(199, 'wp-admin/images/mask.png'),
(200, 'wp-admin/images/media-button-2x.png'),
(201, 'wp-admin/images/media-button-image.gif'),
(202, 'wp-admin/images/media-button-music.gif'),
(203, 'wp-admin/images/media-button-other.gif'),
(204, 'wp-admin/images/media-button-video.gif'),
(205, 'wp-admin/images/media-button.png'),
(206, 'wp-admin/images/menu-2x.png'),
(207, 'wp-admin/images/menu-vs-2x.png'),
(208, 'wp-admin/images/menu-vs.png'),
(209, 'wp-admin/images/menu.png'),
(210, 'wp-admin/images/no.png'),
(211, 'wp-admin/images/post-formats-vs.png'),
(212, 'wp-admin/images/post-formats.png'),
(213, 'wp-admin/images/post-formats32-vs.png'),
(214, 'wp-admin/images/post-formats32.png'),
(215, 'wp-admin/images/resize-2x.gif'),
(216, 'wp-admin/images/resize-rtl-2x.gif'),
(217, 'wp-admin/images/resize-rtl.gif'),
(218, 'wp-admin/images/resize.gif'),
(219, 'wp-admin/images/se.png'),
(220, 'wp-admin/images/sort-2x.gif'),
(221, 'wp-admin/images/sort.gif'),
(222, 'wp-admin/images/spinner-2x.gif'),
(223, 'wp-admin/images/spinner.gif'),
(224, 'wp-admin/images/stars-2x.png'),
(225, 'wp-admin/images/stars.png'),
(226, 'wp-admin/images/w-logo-blue.png'),
(227, 'wp-admin/images/w-logo-white.png'),
(228, 'wp-admin/images/wheel.png'),
(229, 'wp-admin/images/wordpress-logo-white.svg'),
(230, 'wp-admin/images/wordpress-logo.png'),
(231, 'wp-admin/images/wordpress-logo.svg'),
(232, 'wp-admin/images/wpspin_light-2x.gif'),
(233, 'wp-admin/images/wpspin_light.gif'),
(234, 'wp-admin/images/xit-2x.gif'),
(235, 'wp-admin/images/xit.gif'),
(236, 'wp-admin/images/yes.png'),
(237, 'wp-admin/import.php'),
(238, 'wp-admin/includes/admin-filters.php'),
(239, 'wp-admin/includes/admin.php'),
(240, 'wp-admin/includes/ajax-actions.php'),
(241, 'wp-admin/includes/bookmark.php'),
(242, 'wp-admin/includes/class-automatic-upgrader-skin.php'),
(243, 'wp-admin/includes/class-bulk-plugin-upgrader-skin.php'),
(244, 'wp-admin/includes/class-bulk-theme-upgrader-skin.php'),
(245, 'wp-admin/includes/class-bulk-upgrader-skin.php'),
(246, 'wp-admin/includes/class-core-upgrader.php'),
(247, 'wp-admin/includes/class-file-upload-upgrader.php'),
(248, 'wp-admin/includes/class-ftp-pure.php'),
(249, 'wp-admin/includes/class-ftp-sockets.php'),
(250, 'wp-admin/includes/class-ftp.php'),
(251, 'wp-admin/includes/class-language-pack-upgrader-skin.php'),
(252, 'wp-admin/includes/class-language-pack-upgrader.php'),
(253, 'wp-admin/includes/class-pclzip.php'),
(254, 'wp-admin/includes/class-plugin-installer-skin.php'),
(255, 'wp-admin/includes/class-plugin-upgrader-skin.php'),
(256, 'wp-admin/includes/class-plugin-upgrader.php'),
(257, 'wp-admin/includes/class-theme-installer-skin.php'),
(258, 'wp-admin/includes/class-theme-upgrader-skin.php'),
(259, 'wp-admin/includes/class-theme-upgrader.php'),
(260, 'wp-admin/includes/class-walker-category-checklist.php'),
(261, 'wp-admin/includes/class-walker-nav-menu-checklist.php'),
(262, 'wp-admin/includes/class-walker-nav-menu-edit.php'),
(263, 'wp-admin/includes/class-wp-ajax-upgrader-skin.php'),
(264, 'wp-admin/includes/class-wp-automatic-updater.php'),
(265, 'wp-admin/includes/class-wp-comments-list-table.php'),
(266, 'wp-admin/includes/class-wp-filesystem-base.php'),
(267, 'wp-admin/includes/class-wp-filesystem-direct.php'),
(268, 'wp-admin/includes/class-wp-filesystem-ftpext.php'),
(269, 'wp-admin/includes/class-wp-filesystem-ftpsockets.php'),
(270, 'wp-admin/includes/class-wp-filesystem-ssh2.php'),
(271, 'wp-admin/includes/class-wp-importer.php'),
(272, 'wp-admin/includes/class-wp-internal-pointers.php'),
(273, 'wp-admin/includes/class-wp-links-list-table.php'),
(274, 'wp-admin/includes/class-wp-list-table-compat.php'),
(275, 'wp-admin/includes/class-wp-list-table.php'),
(276, 'wp-admin/includes/class-wp-media-list-table.php'),
(277, 'wp-admin/includes/class-wp-ms-sites-list-table.php'),
(278, 'wp-admin/includes/class-wp-ms-themes-list-table.php'),
(279, 'wp-admin/includes/class-wp-ms-users-list-table.php'),
(280, 'wp-admin/includes/class-wp-plugin-install-list-table.php'),
(281, 'wp-admin/includes/class-wp-plugins-list-table.php'),
(282, 'wp-admin/includes/class-wp-post-comments-list-table.php'),
(283, 'wp-admin/includes/class-wp-posts-list-table.php'),
(284, 'wp-admin/includes/class-wp-press-this.php'),
(285, 'wp-admin/includes/class-wp-screen.php'),
(286, 'wp-admin/includes/class-wp-site-icon.php'),
(287, 'wp-admin/includes/class-wp-terms-list-table.php'),
(288, 'wp-admin/includes/class-wp-theme-install-list-table.php'),
(289, 'wp-admin/includes/class-wp-themes-list-table.php'),
(290, 'wp-admin/includes/class-wp-upgrader-skin.php'),
(291, 'wp-admin/includes/class-wp-upgrader-skins.php'),
(292, 'wp-admin/includes/class-wp-upgrader.php'),
(293, 'wp-admin/includes/class-wp-users-list-table.php'),
(294, 'wp-admin/includes/comment.php'),
(295, 'wp-admin/includes/continents-cities.php'),
(296, 'wp-admin/includes/credits.php'),
(297, 'wp-admin/includes/dashboard.php'),
(298, 'wp-admin/includes/deprecated.php'),
(299, 'wp-admin/includes/edit-tag-messages.php'),
(300, 'wp-admin/includes/export.php'),
(301, 'wp-admin/includes/file.php'),
(302, 'wp-admin/includes/image-edit.php'),
(303, 'wp-admin/includes/image.php'),
(304, 'wp-admin/includes/import.php'),
(305, 'wp-admin/includes/list-table.php'),
(306, 'wp-admin/includes/media.php'),
(307, 'wp-admin/includes/menu.php'),
(308, 'wp-admin/includes/meta-boxes.php'),
(309, 'wp-admin/includes/misc.php'),
(310, 'wp-admin/includes/ms-admin-filters.php'),
(311, 'wp-admin/includes/ms-deprecated.php'),
(312, 'wp-admin/includes/ms.php'),
(313, 'wp-admin/includes/nav-menu.php'),
(314, 'wp-admin/includes/network.php'),
(315, 'wp-admin/includes/noop.php'),
(316, 'wp-admin/includes/options.php'),
(317, 'wp-admin/includes/plugin-install.php'),
(318, 'wp-admin/includes/plugin.php'),
(319, 'wp-admin/includes/post.php'),
(320, 'wp-admin/includes/revision.php'),
(321, 'wp-admin/includes/schema.php'),
(322, 'wp-admin/includes/screen.php'),
(323, 'wp-admin/includes/taxonomy.php'),
(324, 'wp-admin/includes/template.php'),
(325, 'wp-admin/includes/theme-install.php'),
(326, 'wp-admin/includes/theme.php'),
(327, 'wp-admin/includes/translation-install.php'),
(328, 'wp-admin/includes/update-core.php'),
(329, 'wp-admin/includes/update.php'),
(330, 'wp-admin/includes/upgrade.php'),
(331, 'wp-admin/includes/user.php'),
(332, 'wp-admin/includes/widgets.php'),
(333, 'wp-admin/index.php'),
(334, 'wp-admin/install-helper.php'),
(335, 'wp-admin/install.php'),
(336, 'wp-admin/js/accordion.js'),
(337, 'wp-admin/js/accordion.min.js'),
(338, 'wp-admin/js/bookmarklet.js'),
(339, 'wp-admin/js/bookmarklet.min.js'),
(340, 'wp-admin/js/color-picker.js'),
(341, 'wp-admin/js/color-picker.min.js'),
(342, 'wp-admin/js/comment.js'),
(343, 'wp-admin/js/comment.min.js'),
(344, 'wp-admin/js/common.js'),
(345, 'wp-admin/js/common.min.js'),
(346, 'wp-admin/js/custom-background.js'),
(347, 'wp-admin/js/custom-background.min.js'),
(348, 'wp-admin/js/custom-header.js'),
(349, 'wp-admin/js/customize-controls.js'),
(350, 'wp-admin/js/customize-controls.min.js'),
(351, 'wp-admin/js/customize-nav-menus.js'),
(352, 'wp-admin/js/customize-nav-menus.min.js'),
(353, 'wp-admin/js/customize-widgets.js'),
(354, 'wp-admin/js/customize-widgets.min.js'),
(355, 'wp-admin/js/dashboard.js'),
(356, 'wp-admin/js/dashboard.min.js'),
(357, 'wp-admin/js/edit-comments.js'),
(358, 'wp-admin/js/edit-comments.min.js'),
(359, 'wp-admin/js/editor-expand.js'),
(360, 'wp-admin/js/editor-expand.min.js'),
(361, 'wp-admin/js/editor.js'),
(362, 'wp-admin/js/editor.min.js'),
(363, 'wp-admin/js/farbtastic.js'),
(364, 'wp-admin/js/gallery.js'),
(365, 'wp-admin/js/gallery.min.js'),
(366, 'wp-admin/js/image-edit.js'),
(367, 'wp-admin/js/image-edit.min.js'),
(368, 'wp-admin/js/inline-edit-post.js'),
(369, 'wp-admin/js/inline-edit-post.min.js'),
(370, 'wp-admin/js/inline-edit-tax.js'),
(371, 'wp-admin/js/inline-edit-tax.min.js'),
(372, 'wp-admin/js/iris.min.js'),
(373, 'wp-admin/js/language-chooser.js'),
(374, 'wp-admin/js/language-chooser.min.js'),
(375, 'wp-admin/js/link.js'),
(376, 'wp-admin/js/link.min.js'),
(377, 'wp-admin/js/media-gallery.js'),
(378, 'wp-admin/js/media-gallery.min.js'),
(379, 'wp-admin/js/media-upload.js'),
(380, 'wp-admin/js/media-upload.min.js'),
(381, 'wp-admin/js/media.js'),
(382, 'wp-admin/js/media.min.js'),
(383, 'wp-admin/js/nav-menu.js'),
(384, 'wp-admin/js/nav-menu.min.js'),
(385, 'wp-admin/js/password-strength-meter.js'),
(386, 'wp-admin/js/password-strength-meter.min.js'),
(387, 'wp-admin/js/plugin-install.js'),
(388, 'wp-admin/js/plugin-install.min.js'),
(389, 'wp-admin/js/post.js'),
(390, 'wp-admin/js/post.min.js'),
(391, 'wp-admin/js/postbox.js'),
(392, 'wp-admin/js/postbox.min.js'),
(393, 'wp-admin/js/press-this.js'),
(394, 'wp-admin/js/press-this.min.js'),
(395, 'wp-admin/js/revisions.js'),
(396, 'wp-admin/js/revisions.min.js'),
(397, 'wp-admin/js/set-post-thumbnail.js'),
(398, 'wp-admin/js/set-post-thumbnail.min.js'),
(399, 'wp-admin/js/svg-painter.js'),
(400, 'wp-admin/js/svg-painter.min.js'),
(401, 'wp-admin/js/tags-box.js'),
(402, 'wp-admin/js/tags-box.min.js'),
(403, 'wp-admin/js/tags-suggest.js'),
(404, 'wp-admin/js/tags-suggest.min.js'),
(405, 'wp-admin/js/tags.js'),
(406, 'wp-admin/js/tags.min.js'),
(407, 'wp-admin/js/theme.js'),
(408, 'wp-admin/js/theme.min.js'),
(409, 'wp-admin/js/updates.js'),
(410, 'wp-admin/js/updates.min.js'),
(411, 'wp-admin/js/user-profile.js'),
(412, 'wp-admin/js/user-profile.min.js'),
(413, 'wp-admin/js/user-suggest.js'),
(414, 'wp-admin/js/user-suggest.min.js'),
(415, 'wp-admin/js/widgets.js'),
(416, 'wp-admin/js/widgets.min.js'),
(417, 'wp-admin/js/word-count.js'),
(418, 'wp-admin/js/word-count.min.js'),
(419, 'wp-admin/js/wp-fullscreen-stub.js'),
(420, 'wp-admin/js/wp-fullscreen-stub.min.js'),
(421, 'wp-admin/js/xfn.js'),
(422, 'wp-admin/js/xfn.min.js'),
(423, 'wp-admin/link-add.php'),
(424, 'wp-admin/link-manager.php'),
(425, 'wp-admin/link-parse-opml.php'),
(426, 'wp-admin/link.php'),
(427, 'wp-admin/load-scripts.php'),
(428, 'wp-admin/load-styles.php'),
(429, 'wp-admin/maint/repair.php'),
(430, 'wp-admin/media-new.php'),
(431, 'wp-admin/media-upload.php'),
(432, 'wp-admin/media.php'),
(433, 'wp-admin/menu-header.php'),
(434, 'wp-admin/menu.php'),
(435, 'wp-admin/moderation.php'),
(436, 'wp-admin/ms-admin.php'),
(437, 'wp-admin/ms-delete-site.php'),
(438, 'wp-admin/ms-edit.php'),
(439, 'wp-admin/ms-options.php'),
(440, 'wp-admin/ms-sites.php'),
(441, 'wp-admin/ms-themes.php'),
(442, 'wp-admin/ms-upgrade-network.php'),
(443, 'wp-admin/ms-users.php'),
(444, 'wp-admin/my-sites.php'),
(445, 'wp-admin/nav-menus.php'),
(446, 'wp-admin/network/about.php'),
(447, 'wp-admin/network/admin.php'),
(448, 'wp-admin/network/credits.php'),
(449, 'wp-admin/network/edit.php'),
(450, 'wp-admin/network/freedoms.php'),
(451, 'wp-admin/network/index.php'),
(452, 'wp-admin/network/menu.php'),
(453, 'wp-admin/network/plugin-editor.php'),
(454, 'wp-admin/network/plugin-install.php'),
(455, 'wp-admin/network/plugins.php'),
(456, 'wp-admin/network/profile.php'),
(457, 'wp-admin/network/settings.php'),
(458, 'wp-admin/network/setup.php'),
(459, 'wp-admin/network/site-info.php'),
(460, 'wp-admin/network/site-new.php'),
(461, 'wp-admin/network/site-settings.php'),
(462, 'wp-admin/network/site-themes.php'),
(463, 'wp-admin/network/site-users.php'),
(464, 'wp-admin/network/sites.php'),
(465, 'wp-admin/network/theme-editor.php'),
(466, 'wp-admin/network/theme-install.php'),
(467, 'wp-admin/network/themes.php'),
(468, 'wp-admin/network/update-core.php'),
(469, 'wp-admin/network/update.php'),
(470, 'wp-admin/network/upgrade.php'),
(471, 'wp-admin/network/user-edit.php'),
(472, 'wp-admin/network/user-new.php'),
(473, 'wp-admin/network/users.php'),
(474, 'wp-admin/network.php'),
(475, 'wp-admin/options-discussion.php'),
(476, 'wp-admin/options-general.php'),
(477, 'wp-admin/options-head.php'),
(478, 'wp-admin/options-media.php'),
(479, 'wp-admin/options-permalink.php'),
(480, 'wp-admin/options-reading.php'),
(481, 'wp-admin/options-writing.php'),
(482, 'wp-admin/options.php'),
(483, 'wp-admin/plugin-editor.php'),
(484, 'wp-admin/plugin-install.php'),
(485, 'wp-admin/plugins.php'),
(486, 'wp-admin/post-new.php'),
(487, 'wp-admin/post.php'),
(488, 'wp-admin/press-this.php'),
(489, 'wp-admin/profile.php'),
(490, 'wp-admin/revision.php'),
(491, 'wp-admin/setup-config.php'),
(492, 'wp-admin/term.php'),
(493, 'wp-admin/theme-editor.php'),
(494, 'wp-admin/theme-install.php'),
(495, 'wp-admin/themes.php'),
(496, 'wp-admin/tools.php'),
(497, 'wp-admin/update-core.php'),
(498, 'wp-admin/update.php'),
(499, 'wp-admin/upgrade-functions.php'),
(500, 'wp-admin/upgrade.php'),
(501, 'wp-admin/upload.php'),
(502, 'wp-admin/user/about.php'),
(503, 'wp-admin/user/admin.php'),
(504, 'wp-admin/user/credits.php'),
(505, 'wp-admin/user/freedoms.php'),
(506, 'wp-admin/user/index.php'),
(507, 'wp-admin/user/menu.php'),
(508, 'wp-admin/user/profile.php'),
(509, 'wp-admin/user/user-edit.php'),
(510, 'wp-admin/user-edit.php'),
(511, 'wp-admin/user-new.php'),
(512, 'wp-admin/users.php'),
(513, 'wp-admin/widgets.php'),
(514, 'wp-blog-header.php'),
(515, 'wp-comments-post.php'),
(516, 'wp-config-sample.php'),
(517, 'wp-config.php'),
(518, 'wp-content/index.php'),
(519, 'wp-content/plugins/advanced-custom-fields/acf.php'),
(520, 'wp-content/plugins/advanced-custom-fields/core/actions/export.php'),
(521, 'wp-content/plugins/advanced-custom-fields/core/api.php'),
(522, 'wp-content/plugins/advanced-custom-fields/core/controllers/addons.php'),
(523, 'wp-content/plugins/advanced-custom-fields/core/controllers/everything_fields.php'),
(524, 'wp-content/plugins/advanced-custom-fields/core/controllers/export.php'),
(525, 'wp-content/plugins/advanced-custom-fields/core/controllers/field_group.php'),
(526, 'wp-content/plugins/advanced-custom-fields/core/controllers/field_groups.php'),
(527, 'wp-content/plugins/advanced-custom-fields/core/controllers/input.php'),
(528, 'wp-content/plugins/advanced-custom-fields/core/controllers/location.php'),
(529, 'wp-content/plugins/advanced-custom-fields/core/controllers/post.php'),
(530, 'wp-content/plugins/advanced-custom-fields/core/controllers/revisions.php'),
(531, 'wp-content/plugins/advanced-custom-fields/core/controllers/third_party.php'),
(532, 'wp-content/plugins/advanced-custom-fields/core/controllers/upgrade.php'),
(533, 'wp-content/plugins/advanced-custom-fields/core/fields/_base.php'),
(534, 'wp-content/plugins/advanced-custom-fields/core/fields/_functions.php'),
(535, 'wp-content/plugins/advanced-custom-fields/core/fields/checkbox.php'),
(536, 'wp-content/plugins/advanced-custom-fields/core/fields/color_picker.php'),
(537, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/date_picker.php'),
(538, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_flat_0_aaaaaa_40x100.png'),
(539, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_flat_55_5bc6f5_40x100.png'),
(540, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_flat_75_ffffff_40x100.png'),
(541, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_glass_65_ffffff_1x400.png'),
(542, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_glass_75_dadada_1x400.png'),
(543, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_glass_75_e6e6e6_1x400.png'),
(544, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_glass_95_fef1ec_1x400.png'),
(545, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_highlight-soft_0_444444_1x100.png'),
(546, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_222222_256x240.png'),
(547, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_2e83ff_256x240.png'),
(548, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_454545_256x240.png'),
(549, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_888888_256x240.png'),
(550, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_cd0a0a_256x240.png'),
(551, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/jquery.ui.datepicker.js'),
(552, 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/style.date_picker.css'),
(553, 'wp-content/plugins/advanced-custom-fields/core/fields/dummy.php'),
(554, 'wp-content/plugins/advanced-custom-fields/core/fields/email.php'),
(555, 'wp-content/plugins/advanced-custom-fields/core/fields/file.php'),
(556, 'wp-content/plugins/advanced-custom-fields/core/fields/google-map.php'),
(557, 'wp-content/plugins/advanced-custom-fields/core/fields/image.php'),
(558, 'wp-content/plugins/advanced-custom-fields/core/fields/message.php'),
(559, 'wp-content/plugins/advanced-custom-fields/core/fields/number.php'),
(560, 'wp-content/plugins/advanced-custom-fields/core/fields/page_link.php'),
(561, 'wp-content/plugins/advanced-custom-fields/core/fields/password.php'),
(562, 'wp-content/plugins/advanced-custom-fields/core/fields/post_object.php'),
(563, 'wp-content/plugins/advanced-custom-fields/core/fields/radio.php'),
(564, 'wp-content/plugins/advanced-custom-fields/core/fields/relationship.php'),
(565, 'wp-content/plugins/advanced-custom-fields/core/fields/select.php'),
(566, 'wp-content/plugins/advanced-custom-fields/core/fields/tab.php'),
(567, 'wp-content/plugins/advanced-custom-fields/core/fields/taxonomy.php'),
(568, 'wp-content/plugins/advanced-custom-fields/core/fields/text.php'),
(569, 'wp-content/plugins/advanced-custom-fields/core/fields/textarea.php'),
(570, 'wp-content/plugins/advanced-custom-fields/core/fields/true_false.php'),
(571, 'wp-content/plugins/advanced-custom-fields/core/fields/user.php'),
(572, 'wp-content/plugins/advanced-custom-fields/core/fields/wysiwyg.php'),
(573, 'wp-content/plugins/advanced-custom-fields/core/views/meta_box_fields.php'),
(574, 'wp-content/plugins/advanced-custom-fields/core/views/meta_box_location.php'),
(575, 'wp-content/plugins/advanced-custom-fields/core/views/meta_box_options.php'),
(576, 'wp-content/plugins/advanced-custom-fields/css/acf.css'),
(577, 'wp-content/plugins/advanced-custom-fields/css/field-group.css'),
(578, 'wp-content/plugins/advanced-custom-fields/css/global.css'),
(579, 'wp-content/plugins/advanced-custom-fields/css/input.css'),
(580, 'wp-content/plugins/advanced-custom-fields/images/add-ons/cf7-field-thumb.jpg'),
(581, 'wp-content/plugins/advanced-custom-fields/images/add-ons/date-time-field-thumb.jpg'),
(582, 'wp-content/plugins/advanced-custom-fields/images/add-ons/flexible-content-field-thumb.jpg'),
(583, 'wp-content/plugins/advanced-custom-fields/images/add-ons/gallery-field-thumb.jpg'),
(584, 'wp-content/plugins/advanced-custom-fields/images/add-ons/google-maps-field-thumb.jpg'),
(585, 'wp-content/plugins/advanced-custom-fields/images/add-ons/gravity-forms-field-thumb.jpg'),
(586, 'wp-content/plugins/advanced-custom-fields/images/add-ons/options-page-thumb.jpg'),
(587, 'wp-content/plugins/advanced-custom-fields/images/add-ons/repeater-field-thumb.jpg'),
(588, 'wp-content/plugins/advanced-custom-fields/images/arrows.png'),
(589, 'wp-content/plugins/advanced-custom-fields/images/arrows@2x.png'),
(590, 'wp-content/plugins/advanced-custom-fields/images/sprite.png'),
(591, 'wp-content/plugins/advanced-custom-fields/images/sprite@2x.png'),
(592, 'wp-content/plugins/advanced-custom-fields/images/wpspin_light.gif'),
(593, 'wp-content/plugins/advanced-custom-fields/images/wpspin_light@2x.gif'),
(594, 'wp-content/plugins/advanced-custom-fields/js/field-group.js'),
(595, 'wp-content/plugins/advanced-custom-fields/js/field-group.min.js'),
(596, 'wp-content/plugins/advanced-custom-fields/js/input/_listener.js'),
(597, 'wp-content/plugins/advanced-custom-fields/js/input/_listener.min.js'),
(598, 'wp-content/plugins/advanced-custom-fields/js/input/acf.js'),
(599, 'wp-content/plugins/advanced-custom-fields/js/input/ajax.js'),
(600, 'wp-content/plugins/advanced-custom-fields/js/input/color-picker.js'),
(601, 'wp-content/plugins/advanced-custom-fields/js/input/date-picker.js'),
(602, 'wp-content/plugins/advanced-custom-fields/js/input/file.js'),
(603, 'wp-content/plugins/advanced-custom-fields/js/input/google-map.js'),
(604, 'wp-content/plugins/advanced-custom-fields/js/input/image.js'),
(605, 'wp-content/plugins/advanced-custom-fields/js/input/radio.js'),
(606, 'wp-content/plugins/advanced-custom-fields/js/input/relationship.js'),
(607, 'wp-content/plugins/advanced-custom-fields/js/input/tab.js'),
(608, 'wp-content/plugins/advanced-custom-fields/js/input/validation.js'),
(609, 'wp-content/plugins/advanced-custom-fields/js/input/wysiwyg.js'),
(610, 'wp-content/plugins/advanced-custom-fields/js/input.js'),
(611, 'wp-content/plugins/advanced-custom-fields/js/input.min.js'),
(612, 'wp-content/plugins/advanced-custom-fields/js/tinymce.code.min.js'),
(613, 'wp-content/plugins/advanced-custom-fields/lang/acf-bg_BG.mo'),
(614, 'wp-content/plugins/advanced-custom-fields/lang/acf-bg_BG.po'),
(615, 'wp-content/plugins/advanced-custom-fields/lang/acf-cs_CZ.mo'),
(616, 'wp-content/plugins/advanced-custom-fields/lang/acf-cs_CZ.po'),
(617, 'wp-content/plugins/advanced-custom-fields/lang/acf-cy_GB.mo'),
(618, 'wp-content/plugins/advanced-custom-fields/lang/acf-cy_GB.po'),
(619, 'wp-content/plugins/advanced-custom-fields/lang/acf-de_DE.mo'),
(620, 'wp-content/plugins/advanced-custom-fields/lang/acf-de_DE.po'),
(621, 'wp-content/plugins/advanced-custom-fields/lang/acf-es_ES.mo'),
(622, 'wp-content/plugins/advanced-custom-fields/lang/acf-es_ES.po'),
(623, 'wp-content/plugins/advanced-custom-fields/lang/acf-fa_IR.mo'),
(624, 'wp-content/plugins/advanced-custom-fields/lang/acf-fa_IR.po'),
(625, 'wp-content/plugins/advanced-custom-fields/lang/acf-fi_FI.mo'),
(626, 'wp-content/plugins/advanced-custom-fields/lang/acf-fi_FI.po'),
(627, 'wp-content/plugins/advanced-custom-fields/lang/acf-fr_FR.mo'),
(628, 'wp-content/plugins/advanced-custom-fields/lang/acf-fr_FR.po'),
(629, 'wp-content/plugins/advanced-custom-fields/lang/acf-he_IL.mo'),
(630, 'wp-content/plugins/advanced-custom-fields/lang/acf-he_IL.po'),
(631, 'wp-content/plugins/advanced-custom-fields/lang/acf-id_ID.mo'),
(632, 'wp-content/plugins/advanced-custom-fields/lang/acf-id_ID.po'),
(633, 'wp-content/plugins/advanced-custom-fields/lang/acf-it_IT.mo'),
(634, 'wp-content/plugins/advanced-custom-fields/lang/acf-it_IT.po'),
(635, 'wp-content/plugins/advanced-custom-fields/lang/acf-ja.mo'),
(636, 'wp-content/plugins/advanced-custom-fields/lang/acf-ja.po'),
(637, 'wp-content/plugins/advanced-custom-fields/lang/acf-nl_NL.mo'),
(638, 'wp-content/plugins/advanced-custom-fields/lang/acf-nl_NL.po'),
(639, 'wp-content/plugins/advanced-custom-fields/lang/acf-pl_PL.mo'),
(640, 'wp-content/plugins/advanced-custom-fields/lang/acf-pl_PL.po'),
(641, 'wp-content/plugins/advanced-custom-fields/lang/acf-pt_BR.mo'),
(642, 'wp-content/plugins/advanced-custom-fields/lang/acf-pt_BR.po'),
(643, 'wp-content/plugins/advanced-custom-fields/lang/acf-pt_PT.mo'),
(644, 'wp-content/plugins/advanced-custom-fields/lang/acf-pt_PT.po'),
(645, 'wp-content/plugins/advanced-custom-fields/lang/acf-ru_RU.mo'),
(646, 'wp-content/plugins/advanced-custom-fields/lang/acf-ru_RU.po'),
(647, 'wp-content/plugins/advanced-custom-fields/lang/acf-sk_SK.mo'),
(648, 'wp-content/plugins/advanced-custom-fields/lang/acf-sk_SK.po'),
(649, 'wp-content/plugins/advanced-custom-fields/lang/acf-sr_RS.mo'),
(650, 'wp-content/plugins/advanced-custom-fields/lang/acf-sr_RS.po'),
(651, 'wp-content/plugins/advanced-custom-fields/lang/acf-sv_SE.mo'),
(652, 'wp-content/plugins/advanced-custom-fields/lang/acf-sv_SE.po'),
(653, 'wp-content/plugins/advanced-custom-fields/lang/acf-tr_TR.mo'),
(654, 'wp-content/plugins/advanced-custom-fields/lang/acf-tr_TR.po'),
(655, 'wp-content/plugins/advanced-custom-fields/lang/acf-uk.mo'),
(656, 'wp-content/plugins/advanced-custom-fields/lang/acf-uk.po'),
(657, 'wp-content/plugins/advanced-custom-fields/lang/acf-zh_CN.mo'),
(658, 'wp-content/plugins/advanced-custom-fields/lang/acf-zh_CN.po'),
(659, 'wp-content/plugins/advanced-custom-fields/lang/acf.pot'),
(660, 'wp-content/plugins/advanced-custom-fields/readme.txt'),
(661, 'wp-content/plugins/advanced-custom-fields/screenshot-1.png'),
(662, 'wp-content/plugins/advanced-custom-fields/screenshot-2.png'),
(663, 'wp-content/plugins/advanced-custom-fields/screenshot-3.png'),
(664, 'wp-content/plugins/advanced-custom-fields/screenshot-4.png'),
(665, 'wp-content/plugins/akismet/.htaccess'),
(666, 'wp-content/plugins/akismet/LICENSE.txt'),
(667, 'wp-content/plugins/akismet/_inc/akismet.css'),
(668, 'wp-content/plugins/akismet/_inc/akismet.js'),
(669, 'wp-content/plugins/akismet/_inc/form.js'),
(670, 'wp-content/plugins/akismet/_inc/img/logo-full-2x.png'),
(671, 'wp-content/plugins/akismet/akismet.php'),
(672, 'wp-content/plugins/akismet/class.akismet-admin.php'),
(673, 'wp-content/plugins/akismet/class.akismet-cli.php'),
(674, 'wp-content/plugins/akismet/class.akismet-widget.php'),
(675, 'wp-content/plugins/akismet/class.akismet.php'),
(676, 'wp-content/plugins/akismet/index.php'),
(677, 'wp-content/plugins/akismet/readme.txt'),
(678, 'wp-content/plugins/akismet/views/config.php'),
(679, 'wp-content/plugins/akismet/views/get.php'),
(680, 'wp-content/plugins/akismet/views/notice.php'),
(681, 'wp-content/plugins/akismet/views/start.php'),
(682, 'wp-content/plugins/akismet/views/stats.php'),
(683, 'wp-content/plugins/akismet/wrapper.php'),
(684, 'wp-content/plugins/ank-google-map/LICENSE.txt'),
(685, 'wp-content/plugins/ank-google-map/ank-google-map.php'),
(686, 'wp-content/plugins/ank-google-map/assets/frontend.js'),
(687, 'wp-content/plugins/ank-google-map/assets/frontend.min.js'),
(688, 'wp-content/plugins/ank-google-map/assets/option-page.css'),
(689, 'wp-content/plugins/ank-google-map/assets/option-page.js'),
(690, 'wp-content/plugins/ank-google-map/assets/option-page.min.css'),
(691, 'wp-content/plugins/ank-google-map/assets/option-page.min.js'),
(692, 'wp-content/plugins/ank-google-map/inc/class-admin.php'),
(693, 'wp-content/plugins/ank-google-map/inc/class-frontend.php'),
(694, 'wp-content/plugins/ank-google-map/inc/class-settings.php'),
(695, 'wp-content/plugins/ank-google-map/inc/class-util.php'),
(696, 'wp-content/plugins/ank-google-map/index.php'),
(697, 'wp-content/plugins/ank-google-map/languages/ank-google-map.pot'),
(698, 'wp-content/plugins/ank-google-map/languages/index.php'),
(699, 'wp-content/plugins/ank-google-map/readme.txt'),
(700, 'wp-content/plugins/ank-google-map/styles.json'),
(701, 'wp-content/plugins/ank-google-map/uninstall.php'),
(702, 'wp-content/plugins/ank-google-map/views/.htaccess'),
(703, 'wp-content/plugins/ank-google-map/views/settings.php'),
(704, 'wp-content/plugins/contact-form-7/admin/admin.php'),
(705, 'wp-content/plugins/contact-form-7/admin/css/styles-rtl.css'),
(706, 'wp-content/plugins/contact-form-7/admin/css/styles.css'),
(707, 'wp-content/plugins/contact-form-7/admin/edit-contact-form.php'),
(708, 'wp-content/plugins/contact-form-7/admin/includes/admin-functions.php'),
(709, 'wp-content/plugins/contact-form-7/admin/includes/class-contact-forms-list-table.php'),
(710, 'wp-content/plugins/contact-form-7/admin/includes/editor.php'),
(711, 'wp-content/plugins/contact-form-7/admin/includes/help-tabs.php'),
(712, 'wp-content/plugins/contact-form-7/admin/includes/tag-generator.php'),
(713, 'wp-content/plugins/contact-form-7/admin/includes/welcome-panel.php'),
(714, 'wp-content/plugins/contact-form-7/admin/js/scripts.js'),
(715, 'wp-content/plugins/contact-form-7/admin/js/tag-generator.js'),
(716, 'wp-content/plugins/contact-form-7/images/ajax-loader.gif'),
(717, 'wp-content/plugins/contact-form-7/includes/capabilities.php'),
(718, 'wp-content/plugins/contact-form-7/includes/config-validator.php'),
(719, 'wp-content/plugins/contact-form-7/includes/contact-form-template.php'),
(720, 'wp-content/plugins/contact-form-7/includes/contact-form.php'),
(721, 'wp-content/plugins/contact-form-7/includes/controller.php'),
(722, 'wp-content/plugins/contact-form-7/includes/css/styles-rtl.css'),
(723, 'wp-content/plugins/contact-form-7/includes/css/styles.css'),
(724, 'wp-content/plugins/contact-form-7/includes/form-tag.php'),
(725, 'wp-content/plugins/contact-form-7/includes/form-tags-manager.php'),
(726, 'wp-content/plugins/contact-form-7/includes/formatting.php'),
(727, 'wp-content/plugins/contact-form-7/includes/functions.php'),
(728, 'wp-content/plugins/contact-form-7/includes/integration.php'),
(729, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/animated-overlay.gif'),
(730, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_flat_0_aaaaaa_40x100.png'),
(731, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_flat_75_ffffff_40x100.png'),
(732, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_55_fbf9ee_1x400.png'),
(733, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_65_ffffff_1x400.png'),
(734, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_75_dadada_1x400.png'),
(735, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_75_e6e6e6_1x400.png'),
(736, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_95_fef1ec_1x400.png'),
(737, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_highlight-soft_75_cccccc_1x100.png'),
(738, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_222222_256x240.png'),
(739, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_2e83ff_256x240.png'),
(740, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_454545_256x240.png'),
(741, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_888888_256x240.png'),
(742, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_cd0a0a_256x240.png'),
(743, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/jquery-ui.css'),
(744, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/jquery-ui.min.css'),
(745, 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/jquery.ui.theme.css'),
(746, 'wp-content/plugins/contact-form-7/includes/js/jquery.form.js'),
(747, 'wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js'),
(748, 'wp-content/plugins/contact-form-7/includes/js/scripts.js'),
(749, 'wp-content/plugins/contact-form-7/includes/l10n.php'),
(750, 'wp-content/plugins/contact-form-7/includes/mail.php'),
(751, 'wp-content/plugins/contact-form-7/includes/pipe.php'),
(752, 'wp-content/plugins/contact-form-7/includes/shortcodes.php'),
(753, 'wp-content/plugins/contact-form-7/includes/submission.php'),
(754, 'wp-content/plugins/contact-form-7/includes/upgrade.php'),
(755, 'wp-content/plugins/contact-form-7/includes/validation.php'),
(756, 'wp-content/plugins/contact-form-7/languages/readme.txt'),
(757, 'wp-content/plugins/contact-form-7/license.txt'),
(758, 'wp-content/plugins/contact-form-7/modules/acceptance.php'),
(759, 'wp-content/plugins/contact-form-7/modules/akismet.php'),
(760, 'wp-content/plugins/contact-form-7/modules/checkbox.php'),
(761, 'wp-content/plugins/contact-form-7/modules/count.php'),
(762, 'wp-content/plugins/contact-form-7/modules/date.php'),
(763, 'wp-content/plugins/contact-form-7/modules/file.php'),
(764, 'wp-content/plugins/contact-form-7/modules/flamingo.php'),
(765, 'wp-content/plugins/contact-form-7/modules/hidden.php'),
(766, 'wp-content/plugins/contact-form-7/modules/listo.php'),
(767, 'wp-content/plugins/contact-form-7/modules/number.php'),
(768, 'wp-content/plugins/contact-form-7/modules/quiz.php'),
(769, 'wp-content/plugins/contact-form-7/modules/really-simple-captcha.php'),
(770, 'wp-content/plugins/contact-form-7/modules/recaptcha.php'),
(771, 'wp-content/plugins/contact-form-7/modules/response.php'),
(772, 'wp-content/plugins/contact-form-7/modules/select.php'),
(773, 'wp-content/plugins/contact-form-7/modules/submit.php'),
(774, 'wp-content/plugins/contact-form-7/modules/text.php'),
(775, 'wp-content/plugins/contact-form-7/modules/textarea.php'),
(776, 'wp-content/plugins/contact-form-7/readme.txt'),
(777, 'wp-content/plugins/contact-form-7/settings.php'),
(778, 'wp-content/plugins/contact-form-7/uninstall.php'),
(779, 'wp-content/plugins/contact-form-7/wp-contact-form-7.php'),
(780, 'wp-content/plugins/custom-post-type-ui/changelog.txt'),
(781, 'wp-content/plugins/custom-post-type-ui/classes/class.cptui_admin_ui.php'),
(782, 'wp-content/plugins/custom-post-type-ui/classes/class.cptui_debug_info.php'),
(783, 'wp-content/plugins/custom-post-type-ui/css/cptui.css'),
(784, 'wp-content/plugins/custom-post-type-ui/css/cptui.min.css'),
(785, 'wp-content/plugins/custom-post-type-ui/css/cptui.scss'),
(786, 'wp-content/plugins/custom-post-type-ui/custom-post-type-ui.php'),
(787, 'wp-content/plugins/custom-post-type-ui/images/cptui-icon-128x128.png'),
(788, 'wp-content/plugins/custom-post-type-ui/images/cptui-icon-173x173.png'),
(789, 'wp-content/plugins/custom-post-type-ui/images/cptui-icon-256x256.png'),
(790, 'wp-content/plugins/custom-post-type-ui/images/wds_ads/apppresser.png'),
(791, 'wp-content/plugins/custom-post-type-ui/images/wds_ads/cptuix-ad-3.png'),
(792, 'wp-content/plugins/custom-post-type-ui/images/wds_ads/maintainn.png'),
(793, 'wp-content/plugins/custom-post-type-ui/inc/about.php'),
(794, 'wp-content/plugins/custom-post-type-ui/inc/listings.php'),
(795, 'wp-content/plugins/custom-post-type-ui/inc/post-types.php'),
(796, 'wp-content/plugins/custom-post-type-ui/inc/support.php'),
(797, 'wp-content/plugins/custom-post-type-ui/inc/taxonomies.php'),
(798, 'wp-content/plugins/custom-post-type-ui/inc/tools.php'),
(799, 'wp-content/plugins/custom-post-type-ui/inc/utility.php'),
(800, 'wp-content/plugins/custom-post-type-ui/js/cptui.js'),
(801, 'wp-content/plugins/custom-post-type-ui/js/cptui.min.js'),
(802, 'wp-content/plugins/custom-post-type-ui/readme.txt'),
(803, 'wp-content/plugins/hello.php'),
(804, 'wp-content/plugins/index.php'),
(805, 'wp-content/plugins/wordfence/css/activity-report-widget.css'),
(806, 'wp-content/plugins/wordfence/css/colorbox.css'),
(807, 'wp-content/plugins/wordfence/css/diff.css'),
(808, 'wp-content/plugins/wordfence/css/dt_table.css'),
(809, 'wp-content/plugins/wordfence/css/fullLog.css'),
(810, 'wp-content/plugins/wordfence/css/images/ui-bg_flat_0_aaaaaa_40x100.png'),
(811, 'wp-content/plugins/wordfence/css/images/ui-bg_flat_100_1997c7_40x100.png'),
(812, 'wp-content/plugins/wordfence/css/images/ui-bg_flat_100_222_40x100.png'),
(813, 'wp-content/plugins/wordfence/css/images/ui-bg_flat_75_ffffff_40x100.png'),
(814, 'wp-content/plugins/wordfence/css/images/ui-bg_glass_95_fef1ec_1x400.png'),
(815, 'wp-content/plugins/wordfence/css/images/ui-bg_highlight-soft_75_a5a5a5_1x100.png'),
(816, 'wp-content/plugins/wordfence/css/images/ui-icons_222222_256x240.png'),
(817, 'wp-content/plugins/wordfence/css/images/ui-icons_cd0a0a_256x240.png'),
(818, 'wp-content/plugins/wordfence/css/images/ui-icons_fbe569_256x240.png'),
(819, 'wp-content/plugins/wordfence/css/images/ui-icons_fff_256x240.png'),
(820, 'wp-content/plugins/wordfence/css/iptraf.css'),
(821, 'wp-content/plugins/wordfence/css/jquery-ui-timepicker-addon.css'),
(822, 'wp-content/plugins/wordfence/css/jquery-ui.min.css'),
(823, 'wp-content/plugins/wordfence/css/jquery-ui.structure.min.css'),
(824, 'wp-content/plugins/wordfence/css/jquery-ui.theme.min.css'),
(825, 'wp-content/plugins/wordfence/css/main.css'),
(826, 'wp-content/plugins/wordfence/css/phpinfo.css'),
(827, 'wp-content/plugins/wordfence/css/select2.min.css'),
(828, 'wp-content/plugins/wordfence/css/wf-adminbar.css'),
(829, 'wp-content/plugins/wordfence/css/wordfenceBox.css'),
(830, 'wp-content/plugins/wordfence/images/back_disabled.jpg'),
(831, 'wp-content/plugins/wordfence/images/back_enabled.jpg'),
(832, 'wp-content/plugins/wordfence/images/button-grad-grey.png'),
(833, 'wp-content/plugins/wordfence/images/checkbox.png'),
(834, 'wp-content/plugins/wordfence/images/flags/.png'),
(835, 'wp-content/plugins/wordfence/images/flags/a1.png'),
(836, 'wp-content/plugins/wordfence/images/flags/a2.png'),
(837, 'wp-content/plugins/wordfence/images/flags/ad.png'),
(838, 'wp-content/plugins/wordfence/images/flags/ae.png'),
(839, 'wp-content/plugins/wordfence/images/flags/af.png'),
(840, 'wp-content/plugins/wordfence/images/flags/ag.png'),
(841, 'wp-content/plugins/wordfence/images/flags/ai.png'),
(842, 'wp-content/plugins/wordfence/images/flags/al.png'),
(843, 'wp-content/plugins/wordfence/images/flags/am.png'),
(844, 'wp-content/plugins/wordfence/images/flags/an.png'),
(845, 'wp-content/plugins/wordfence/images/flags/ao.png'),
(846, 'wp-content/plugins/wordfence/images/flags/ap.png'),
(847, 'wp-content/plugins/wordfence/images/flags/aq.png'),
(848, 'wp-content/plugins/wordfence/images/flags/ar.png'),
(849, 'wp-content/plugins/wordfence/images/flags/as.png'),
(850, 'wp-content/plugins/wordfence/images/flags/at.png'),
(851, 'wp-content/plugins/wordfence/images/flags/au.png'),
(852, 'wp-content/plugins/wordfence/images/flags/aw.png'),
(853, 'wp-content/plugins/wordfence/images/flags/ax.png'),
(854, 'wp-content/plugins/wordfence/images/flags/az.png'),
(855, 'wp-content/plugins/wordfence/images/flags/ba.png'),
(856, 'wp-content/plugins/wordfence/images/flags/bb.png'),
(857, 'wp-content/plugins/wordfence/images/flags/bd.png'),
(858, 'wp-content/plugins/wordfence/images/flags/be.png'),
(859, 'wp-content/plugins/wordfence/images/flags/bf.png'),
(860, 'wp-content/plugins/wordfence/images/flags/bg.png'),
(861, 'wp-content/plugins/wordfence/images/flags/bh.png'),
(862, 'wp-content/plugins/wordfence/images/flags/bi.png'),
(863, 'wp-content/plugins/wordfence/images/flags/bj.png'),
(864, 'wp-content/plugins/wordfence/images/flags/bm.png'),
(865, 'wp-content/plugins/wordfence/images/flags/bn.png'),
(866, 'wp-content/plugins/wordfence/images/flags/bo.png'),
(867, 'wp-content/plugins/wordfence/images/flags/br.png'),
(868, 'wp-content/plugins/wordfence/images/flags/bs.png'),
(869, 'wp-content/plugins/wordfence/images/flags/bt.png'),
(870, 'wp-content/plugins/wordfence/images/flags/bv.png'),
(871, 'wp-content/plugins/wordfence/images/flags/bw.png'),
(872, 'wp-content/plugins/wordfence/images/flags/by.png'),
(873, 'wp-content/plugins/wordfence/images/flags/bz.png'),
(874, 'wp-content/plugins/wordfence/images/flags/ca.png'),
(875, 'wp-content/plugins/wordfence/images/flags/cc.png'),
(876, 'wp-content/plugins/wordfence/images/flags/cd.png'),
(877, 'wp-content/plugins/wordfence/images/flags/cf.png'),
(878, 'wp-content/plugins/wordfence/images/flags/cg.png'),
(879, 'wp-content/plugins/wordfence/images/flags/ch.png'),
(880, 'wp-content/plugins/wordfence/images/flags/ci.png'),
(881, 'wp-content/plugins/wordfence/images/flags/ck.png'),
(882, 'wp-content/plugins/wordfence/images/flags/cl.png'),
(883, 'wp-content/plugins/wordfence/images/flags/cm.png'),
(884, 'wp-content/plugins/wordfence/images/flags/cn.png'),
(885, 'wp-content/plugins/wordfence/images/flags/co.png'),
(886, 'wp-content/plugins/wordfence/images/flags/cr.png'),
(887, 'wp-content/plugins/wordfence/images/flags/cs.png'),
(888, 'wp-content/plugins/wordfence/images/flags/cu.png'),
(889, 'wp-content/plugins/wordfence/images/flags/cv.png'),
(890, 'wp-content/plugins/wordfence/images/flags/cw.png'),
(891, 'wp-content/plugins/wordfence/images/flags/cx.png'),
(892, 'wp-content/plugins/wordfence/images/flags/cy.png'),
(893, 'wp-content/plugins/wordfence/images/flags/cz.png'),
(894, 'wp-content/plugins/wordfence/images/flags/de.png'),
(895, 'wp-content/plugins/wordfence/images/flags/dj.png'),
(896, 'wp-content/plugins/wordfence/images/flags/dk.png'),
(897, 'wp-content/plugins/wordfence/images/flags/dm.png'),
(898, 'wp-content/plugins/wordfence/images/flags/do.png'),
(899, 'wp-content/plugins/wordfence/images/flags/dz.png'),
(900, 'wp-content/plugins/wordfence/images/flags/ec.png'),
(901, 'wp-content/plugins/wordfence/images/flags/ee.png'),
(902, 'wp-content/plugins/wordfence/images/flags/eg.png'),
(903, 'wp-content/plugins/wordfence/images/flags/eh.png'),
(904, 'wp-content/plugins/wordfence/images/flags/england.png'),
(905, 'wp-content/plugins/wordfence/images/flags/er.png'),
(906, 'wp-content/plugins/wordfence/images/flags/es.png'),
(907, 'wp-content/plugins/wordfence/images/flags/et.png'),
(908, 'wp-content/plugins/wordfence/images/flags/eu.png'),
(909, 'wp-content/plugins/wordfence/images/flags/fam.png'),
(910, 'wp-content/plugins/wordfence/images/flags/fi.png'),
(911, 'wp-content/plugins/wordfence/images/flags/fj.png'),
(912, 'wp-content/plugins/wordfence/images/flags/fk.png'),
(913, 'wp-content/plugins/wordfence/images/flags/fm.png'),
(914, 'wp-content/plugins/wordfence/images/flags/fo.png'),
(915, 'wp-content/plugins/wordfence/images/flags/fr.png'),
(916, 'wp-content/plugins/wordfence/images/flags/ga.png'),
(917, 'wp-content/plugins/wordfence/images/flags/gb.png'),
(918, 'wp-content/plugins/wordfence/images/flags/gd.png'),
(919, 'wp-content/plugins/wordfence/images/flags/ge.png'),
(920, 'wp-content/plugins/wordfence/images/flags/gf.png'),
(921, 'wp-content/plugins/wordfence/images/flags/gg.png'),
(922, 'wp-content/plugins/wordfence/images/flags/gh.png'),
(923, 'wp-content/plugins/wordfence/images/flags/gi.png'),
(924, 'wp-content/plugins/wordfence/images/flags/gl.png'),
(925, 'wp-content/plugins/wordfence/images/flags/gm.png'),
(926, 'wp-content/plugins/wordfence/images/flags/gn.png'),
(927, 'wp-content/plugins/wordfence/images/flags/gp.png'),
(928, 'wp-content/plugins/wordfence/images/flags/gq.png'),
(929, 'wp-content/plugins/wordfence/images/flags/gr.png'),
(930, 'wp-content/plugins/wordfence/images/flags/gs.png'),
(931, 'wp-content/plugins/wordfence/images/flags/gt.png'),
(932, 'wp-content/plugins/wordfence/images/flags/gu.png'),
(933, 'wp-content/plugins/wordfence/images/flags/gw.png'),
(934, 'wp-content/plugins/wordfence/images/flags/gy.png'),
(935, 'wp-content/plugins/wordfence/images/flags/hk.png'),
(936, 'wp-content/plugins/wordfence/images/flags/hn.png'),
(937, 'wp-content/plugins/wordfence/images/flags/hr.png'),
(938, 'wp-content/plugins/wordfence/images/flags/ht.png'),
(939, 'wp-content/plugins/wordfence/images/flags/hu.png'),
(940, 'wp-content/plugins/wordfence/images/flags/id.png'),
(941, 'wp-content/plugins/wordfence/images/flags/ie.png'),
(942, 'wp-content/plugins/wordfence/images/flags/il.png'),
(943, 'wp-content/plugins/wordfence/images/flags/im.png'),
(944, 'wp-content/plugins/wordfence/images/flags/in.png'),
(945, 'wp-content/plugins/wordfence/images/flags/io.png'),
(946, 'wp-content/plugins/wordfence/images/flags/iq.png'),
(947, 'wp-content/plugins/wordfence/images/flags/ir.png'),
(948, 'wp-content/plugins/wordfence/images/flags/is.png'),
(949, 'wp-content/plugins/wordfence/images/flags/it.png'),
(950, 'wp-content/plugins/wordfence/images/flags/je.png'),
(951, 'wp-content/plugins/wordfence/images/flags/jm.png'),
(952, 'wp-content/plugins/wordfence/images/flags/jo.png');
INSERT INTO `vi_wfKnownFileList` (`id`, `path`) VALUES
(953, 'wp-content/plugins/wordfence/images/flags/jp.png'),
(954, 'wp-content/plugins/wordfence/images/flags/ke.png'),
(955, 'wp-content/plugins/wordfence/images/flags/kg.png'),
(956, 'wp-content/plugins/wordfence/images/flags/kh.png'),
(957, 'wp-content/plugins/wordfence/images/flags/ki.png'),
(958, 'wp-content/plugins/wordfence/images/flags/km.png'),
(959, 'wp-content/plugins/wordfence/images/flags/kn.png'),
(960, 'wp-content/plugins/wordfence/images/flags/kp.png'),
(961, 'wp-content/plugins/wordfence/images/flags/kr.png'),
(962, 'wp-content/plugins/wordfence/images/flags/kw.png'),
(963, 'wp-content/plugins/wordfence/images/flags/ky.png'),
(964, 'wp-content/plugins/wordfence/images/flags/kz.png'),
(965, 'wp-content/plugins/wordfence/images/flags/la.png'),
(966, 'wp-content/plugins/wordfence/images/flags/lb.png'),
(967, 'wp-content/plugins/wordfence/images/flags/lc.png'),
(968, 'wp-content/plugins/wordfence/images/flags/li.png'),
(969, 'wp-content/plugins/wordfence/images/flags/lk.png'),
(970, 'wp-content/plugins/wordfence/images/flags/lr.png'),
(971, 'wp-content/plugins/wordfence/images/flags/ls.png'),
(972, 'wp-content/plugins/wordfence/images/flags/lt.png'),
(973, 'wp-content/plugins/wordfence/images/flags/lu.png'),
(974, 'wp-content/plugins/wordfence/images/flags/lv.png'),
(975, 'wp-content/plugins/wordfence/images/flags/ly.png'),
(976, 'wp-content/plugins/wordfence/images/flags/ma.png'),
(977, 'wp-content/plugins/wordfence/images/flags/mc.png'),
(978, 'wp-content/plugins/wordfence/images/flags/md.png'),
(979, 'wp-content/plugins/wordfence/images/flags/me.png'),
(980, 'wp-content/plugins/wordfence/images/flags/mg.png'),
(981, 'wp-content/plugins/wordfence/images/flags/mh.png'),
(982, 'wp-content/plugins/wordfence/images/flags/mk.png'),
(983, 'wp-content/plugins/wordfence/images/flags/ml.png'),
(984, 'wp-content/plugins/wordfence/images/flags/mm.png'),
(985, 'wp-content/plugins/wordfence/images/flags/mn.png'),
(986, 'wp-content/plugins/wordfence/images/flags/mo.png'),
(987, 'wp-content/plugins/wordfence/images/flags/mp.png'),
(988, 'wp-content/plugins/wordfence/images/flags/mq.png'),
(989, 'wp-content/plugins/wordfence/images/flags/mr.png'),
(990, 'wp-content/plugins/wordfence/images/flags/ms.png'),
(991, 'wp-content/plugins/wordfence/images/flags/mt.png'),
(992, 'wp-content/plugins/wordfence/images/flags/mu.png'),
(993, 'wp-content/plugins/wordfence/images/flags/mv.png'),
(994, 'wp-content/plugins/wordfence/images/flags/mw.png'),
(995, 'wp-content/plugins/wordfence/images/flags/mx.png'),
(996, 'wp-content/plugins/wordfence/images/flags/my.png'),
(997, 'wp-content/plugins/wordfence/images/flags/mz.png'),
(998, 'wp-content/plugins/wordfence/images/flags/na.png'),
(999, 'wp-content/plugins/wordfence/images/flags/nc.png'),
(1000, 'wp-content/plugins/wordfence/images/flags/ne.png'),
(1001, 'wp-content/plugins/wordfence/images/flags/nf.png'),
(1002, 'wp-content/plugins/wordfence/images/flags/ng.png'),
(1003, 'wp-content/plugins/wordfence/images/flags/ni.png'),
(1004, 'wp-content/plugins/wordfence/images/flags/nl.png'),
(1005, 'wp-content/plugins/wordfence/images/flags/no.png'),
(1006, 'wp-content/plugins/wordfence/images/flags/np.png'),
(1007, 'wp-content/plugins/wordfence/images/flags/nr.png'),
(1008, 'wp-content/plugins/wordfence/images/flags/nu.png'),
(1009, 'wp-content/plugins/wordfence/images/flags/nz.png'),
(1010, 'wp-content/plugins/wordfence/images/flags/om.png'),
(1011, 'wp-content/plugins/wordfence/images/flags/pa.png'),
(1012, 'wp-content/plugins/wordfence/images/flags/pe.png'),
(1013, 'wp-content/plugins/wordfence/images/flags/pf.png'),
(1014, 'wp-content/plugins/wordfence/images/flags/pg.png'),
(1015, 'wp-content/plugins/wordfence/images/flags/ph.png'),
(1016, 'wp-content/plugins/wordfence/images/flags/pk.png'),
(1017, 'wp-content/plugins/wordfence/images/flags/pl.png'),
(1018, 'wp-content/plugins/wordfence/images/flags/pm.png'),
(1019, 'wp-content/plugins/wordfence/images/flags/pn.png'),
(1020, 'wp-content/plugins/wordfence/images/flags/pr.png'),
(1021, 'wp-content/plugins/wordfence/images/flags/ps.png'),
(1022, 'wp-content/plugins/wordfence/images/flags/pt.png'),
(1023, 'wp-content/plugins/wordfence/images/flags/pw.png'),
(1024, 'wp-content/plugins/wordfence/images/flags/py.png'),
(1025, 'wp-content/plugins/wordfence/images/flags/qa.png'),
(1026, 'wp-content/plugins/wordfence/images/flags/re.png'),
(1027, 'wp-content/plugins/wordfence/images/flags/ro.png'),
(1028, 'wp-content/plugins/wordfence/images/flags/rs.png'),
(1029, 'wp-content/plugins/wordfence/images/flags/ru.png'),
(1030, 'wp-content/plugins/wordfence/images/flags/rw.png'),
(1031, 'wp-content/plugins/wordfence/images/flags/sa.png'),
(1032, 'wp-content/plugins/wordfence/images/flags/sb.png'),
(1033, 'wp-content/plugins/wordfence/images/flags/sc.png'),
(1034, 'wp-content/plugins/wordfence/images/flags/scotland.png'),
(1035, 'wp-content/plugins/wordfence/images/flags/sd.png'),
(1036, 'wp-content/plugins/wordfence/images/flags/se.png'),
(1037, 'wp-content/plugins/wordfence/images/flags/sg.png'),
(1038, 'wp-content/plugins/wordfence/images/flags/sh.png'),
(1039, 'wp-content/plugins/wordfence/images/flags/si.png'),
(1040, 'wp-content/plugins/wordfence/images/flags/sk.png'),
(1041, 'wp-content/plugins/wordfence/images/flags/sl.png'),
(1042, 'wp-content/plugins/wordfence/images/flags/sm.png'),
(1043, 'wp-content/plugins/wordfence/images/flags/sn.png'),
(1044, 'wp-content/plugins/wordfence/images/flags/so.png'),
(1045, 'wp-content/plugins/wordfence/images/flags/sprite-des-128.png'),
(1046, 'wp-content/plugins/wordfence/images/flags/sprite-des-16.png'),
(1047, 'wp-content/plugins/wordfence/images/flags/sprite-des-256.png'),
(1048, 'wp-content/plugins/wordfence/images/flags/sprite-des-32.png'),
(1049, 'wp-content/plugins/wordfence/images/flags/sprite-des-64.png'),
(1050, 'wp-content/plugins/wordfence/images/flags/sprite-des.png'),
(1051, 'wp-content/plugins/wordfence/images/flags/sprite-des2.png'),
(1052, 'wp-content/plugins/wordfence/images/flags/sprite2.css'),
(1053, 'wp-content/plugins/wordfence/images/flags/sprite2.png'),
(1054, 'wp-content/plugins/wordfence/images/flags/sr.png'),
(1055, 'wp-content/plugins/wordfence/images/flags/st.png'),
(1056, 'wp-content/plugins/wordfence/images/flags/sv.png'),
(1057, 'wp-content/plugins/wordfence/images/flags/sy.png'),
(1058, 'wp-content/plugins/wordfence/images/flags/sz.png'),
(1059, 'wp-content/plugins/wordfence/images/flags/tc.png'),
(1060, 'wp-content/plugins/wordfence/images/flags/td.png'),
(1061, 'wp-content/plugins/wordfence/images/flags/tf.png'),
(1062, 'wp-content/plugins/wordfence/images/flags/tg.png'),
(1063, 'wp-content/plugins/wordfence/images/flags/th.png'),
(1064, 'wp-content/plugins/wordfence/images/flags/tj.png'),
(1065, 'wp-content/plugins/wordfence/images/flags/tk.png'),
(1066, 'wp-content/plugins/wordfence/images/flags/tl.png'),
(1067, 'wp-content/plugins/wordfence/images/flags/tm.png'),
(1068, 'wp-content/plugins/wordfence/images/flags/tn.png'),
(1069, 'wp-content/plugins/wordfence/images/flags/to.png'),
(1070, 'wp-content/plugins/wordfence/images/flags/tr.png'),
(1071, 'wp-content/plugins/wordfence/images/flags/tt.png'),
(1072, 'wp-content/plugins/wordfence/images/flags/tv.png'),
(1073, 'wp-content/plugins/wordfence/images/flags/tw.png'),
(1074, 'wp-content/plugins/wordfence/images/flags/tz.png'),
(1075, 'wp-content/plugins/wordfence/images/flags/ua.png'),
(1076, 'wp-content/plugins/wordfence/images/flags/ug.png'),
(1077, 'wp-content/plugins/wordfence/images/flags/uk.png'),
(1078, 'wp-content/plugins/wordfence/images/flags/um.png'),
(1079, 'wp-content/plugins/wordfence/images/flags/us.png'),
(1080, 'wp-content/plugins/wordfence/images/flags/uy.png'),
(1081, 'wp-content/plugins/wordfence/images/flags/uz.png'),
(1082, 'wp-content/plugins/wordfence/images/flags/va.png'),
(1083, 'wp-content/plugins/wordfence/images/flags/vc.png'),
(1084, 'wp-content/plugins/wordfence/images/flags/ve.png'),
(1085, 'wp-content/plugins/wordfence/images/flags/vg.png'),
(1086, 'wp-content/plugins/wordfence/images/flags/vi.png'),
(1087, 'wp-content/plugins/wordfence/images/flags/vn.png'),
(1088, 'wp-content/plugins/wordfence/images/flags/vu.png'),
(1089, 'wp-content/plugins/wordfence/images/flags/wales.png'),
(1090, 'wp-content/plugins/wordfence/images/flags/wf.png'),
(1091, 'wp-content/plugins/wordfence/images/flags/ws.png'),
(1092, 'wp-content/plugins/wordfence/images/flags/xk.png'),
(1093, 'wp-content/plugins/wordfence/images/flags/ye.png'),
(1094, 'wp-content/plugins/wordfence/images/flags/yt.png'),
(1095, 'wp-content/plugins/wordfence/images/flags/za.png'),
(1096, 'wp-content/plugins/wordfence/images/flags/zm.png'),
(1097, 'wp-content/plugins/wordfence/images/flags/zw.png'),
(1098, 'wp-content/plugins/wordfence/images/forward_disabled.jpg'),
(1099, 'wp-content/plugins/wordfence/images/forward_enabled.jpg'),
(1100, 'wp-content/plugins/wordfence/images/help.png'),
(1101, 'wp-content/plugins/wordfence/images/icons/ajax24.gif'),
(1102, 'wp-content/plugins/wordfence/images/icons/ajax3.gif'),
(1103, 'wp-content/plugins/wordfence/images/icons/ajaxRed16.gif'),
(1104, 'wp-content/plugins/wordfence/images/icons/ajaxScan.gif'),
(1105, 'wp-content/plugins/wordfence/images/icons/ajaxWhite32x32.gif'),
(1106, 'wp-content/plugins/wordfence/images/icons/arrow_refresh.png'),
(1107, 'wp-content/plugins/wordfence/images/icons/bullet_yellow.png'),
(1108, 'wp-content/plugins/wordfence/images/icons/email_go.png'),
(1109, 'wp-content/plugins/wordfence/images/icons/error128.png'),
(1110, 'wp-content/plugins/wordfence/images/icons/magnifier.png'),
(1111, 'wp-content/plugins/wordfence/images/icons/tick128.png'),
(1112, 'wp-content/plugins/wordfence/images/icons/warning128.png'),
(1113, 'wp-content/plugins/wordfence/images/lightbox-controls.png'),
(1114, 'wp-content/plugins/wordfence/images/loading.gif'),
(1115, 'wp-content/plugins/wordfence/images/loading_background.png'),
(1116, 'wp-content/plugins/wordfence/images/loading_large.gif'),
(1117, 'wp-content/plugins/wordfence/images/logo.png'),
(1118, 'wp-content/plugins/wordfence/images/rr_premium.png'),
(1119, 'wp-content/plugins/wordfence/images/rr_sitecleaning.jpg'),
(1120, 'wp-content/plugins/wordfence/images/sort_asc.gif'),
(1121, 'wp-content/plugins/wordfence/images/sort_asc_disabled.gif'),
(1122, 'wp-content/plugins/wordfence/images/sort_both.gif'),
(1123, 'wp-content/plugins/wordfence/images/sort_desc.gif'),
(1124, 'wp-content/plugins/wordfence/images/sort_desc_disabled.gif'),
(1125, 'wp-content/plugins/wordfence/images/wordfence-logo-16x16.png'),
(1126, 'wp-content/plugins/wordfence/images/wordfence-logo-32x32.png'),
(1127, 'wp-content/plugins/wordfence/images/wordfence-logo-64x64.png'),
(1128, 'wp-content/plugins/wordfence/index.php'),
(1129, 'wp-content/plugins/wordfence/js/Chart.bundle.min.js'),
(1130, 'wp-content/plugins/wordfence/js/admin.ajaxWatcher.js'),
(1131, 'wp-content/plugins/wordfence/js/admin.js'),
(1132, 'wp-content/plugins/wordfence/js/admin.liveTraffic.js'),
(1133, 'wp-content/plugins/wordfence/js/jquery-ui-timepicker-addon.js'),
(1134, 'wp-content/plugins/wordfence/js/jquery.colorbox-min.js'),
(1135, 'wp-content/plugins/wordfence/js/jquery.dataTables.min.js'),
(1136, 'wp-content/plugins/wordfence/js/jquery.qrcode.min.js'),
(1137, 'wp-content/plugins/wordfence/js/jquery.tmpl.min.js'),
(1138, 'wp-content/plugins/wordfence/js/jquery.tools.min.js'),
(1139, 'wp-content/plugins/wordfence/js/knockout-3.3.0.js'),
(1140, 'wp-content/plugins/wordfence/js/perf.js'),
(1141, 'wp-content/plugins/wordfence/js/select2.min.js'),
(1142, 'wp-content/plugins/wordfence/js/tourTip.js'),
(1143, 'wp-content/plugins/wordfence/js/wfdashboard.js'),
(1144, 'wp-content/plugins/wordfence/js/wfpopover.js'),
(1145, 'wp-content/plugins/wordfence/lib/.htaccess'),
(1146, 'wp-content/plugins/wordfence/lib/Diff/Renderer/Abstract.php'),
(1147, 'wp-content/plugins/wordfence/lib/Diff/Renderer/Html/Array.php'),
(1148, 'wp-content/plugins/wordfence/lib/Diff/Renderer/Html/SideBySide.php'),
(1149, 'wp-content/plugins/wordfence/lib/Diff/SequenceMatcher.php'),
(1150, 'wp-content/plugins/wordfence/lib/Diff.php'),
(1151, 'wp-content/plugins/wordfence/lib/GeoIP.dat'),
(1152, 'wp-content/plugins/wordfence/lib/GeoIPv6.dat'),
(1153, 'wp-content/plugins/wordfence/lib/IPTraf.php'),
(1154, 'wp-content/plugins/wordfence/lib/compat.php'),
(1155, 'wp-content/plugins/wordfence/lib/conntest.php'),
(1156, 'wp-content/plugins/wordfence/lib/cronview.php'),
(1157, 'wp-content/plugins/wordfence/lib/dashboard/widget_content_countries.php'),
(1158, 'wp-content/plugins/wordfence/lib/dashboard/widget_content_ips.php'),
(1159, 'wp-content/plugins/wordfence/lib/dashboard/widget_content_logins.php'),
(1160, 'wp-content/plugins/wordfence/lib/dashboard/widget_countries.php'),
(1161, 'wp-content/plugins/wordfence/lib/dashboard/widget_ips.php'),
(1162, 'wp-content/plugins/wordfence/lib/dashboard/widget_localattacks.php'),
(1163, 'wp-content/plugins/wordfence/lib/dashboard/widget_logins.php'),
(1164, 'wp-content/plugins/wordfence/lib/dashboard/widget_networkattacks.php'),
(1165, 'wp-content/plugins/wordfence/lib/dashboard/widget_notifications.php'),
(1166, 'wp-content/plugins/wordfence/lib/dashboard/widget_tdf.php'),
(1167, 'wp-content/plugins/wordfence/lib/dashboard.php'),
(1168, 'wp-content/plugins/wordfence/lib/dbview.php'),
(1169, 'wp-content/plugins/wordfence/lib/diffResult.php'),
(1170, 'wp-content/plugins/wordfence/lib/email_genericAlert.php'),
(1171, 'wp-content/plugins/wordfence/lib/email_newIssues.php'),
(1172, 'wp-content/plugins/wordfence/lib/email_passwdChanged.php'),
(1173, 'wp-content/plugins/wordfence/lib/email_pleaseChangePasswd.php'),
(1174, 'wp-content/plugins/wordfence/lib/email_unlockRequest.php'),
(1175, 'wp-content/plugins/wordfence/lib/live_activity.php'),
(1176, 'wp-content/plugins/wordfence/lib/menu_activity.php'),
(1177, 'wp-content/plugins/wordfence/lib/menu_blocking.php'),
(1178, 'wp-content/plugins/wordfence/lib/menu_blocking_advancedBlocking.php'),
(1179, 'wp-content/plugins/wordfence/lib/menu_blocking_blockedIPs.php'),
(1180, 'wp-content/plugins/wordfence/lib/menu_blocking_countryBlocking.php'),
(1181, 'wp-content/plugins/wordfence/lib/menu_dashboard.php'),
(1182, 'wp-content/plugins/wordfence/lib/menu_firewall.php'),
(1183, 'wp-content/plugins/wordfence/lib/menu_firewall_bruteForce.php'),
(1184, 'wp-content/plugins/wordfence/lib/menu_firewall_rateLimiting.php'),
(1185, 'wp-content/plugins/wordfence/lib/menu_firewall_waf.php'),
(1186, 'wp-content/plugins/wordfence/lib/menu_options.php'),
(1187, 'wp-content/plugins/wordfence/lib/menu_scan.php'),
(1188, 'wp-content/plugins/wordfence/lib/menu_scan_options.php'),
(1189, 'wp-content/plugins/wordfence/lib/menu_scan_scan.php'),
(1190, 'wp-content/plugins/wordfence/lib/menu_scan_schedule.php'),
(1191, 'wp-content/plugins/wordfence/lib/menu_tools.php'),
(1192, 'wp-content/plugins/wordfence/lib/menu_tools_diagnostic.php'),
(1193, 'wp-content/plugins/wordfence/lib/menu_tools_passwd.php'),
(1194, 'wp-content/plugins/wordfence/lib/menu_tools_twoFactor.php'),
(1195, 'wp-content/plugins/wordfence/lib/menu_tools_whois.php'),
(1196, 'wp-content/plugins/wordfence/lib/pageTitle.php'),
(1197, 'wp-content/plugins/wordfence/lib/schedWeekEntry.php'),
(1198, 'wp-content/plugins/wordfence/lib/sysinfo.php'),
(1199, 'wp-content/plugins/wordfence/lib/unknownFiles.php'),
(1200, 'wp-content/plugins/wordfence/lib/viewFullActivityLog.php'),
(1201, 'wp-content/plugins/wordfence/lib/wf503.php'),
(1202, 'wp-content/plugins/wordfence/lib/wfAPI.php'),
(1203, 'wp-content/plugins/wordfence/lib/wfAction.php'),
(1204, 'wp-content/plugins/wordfence/lib/wfActivityReport.php'),
(1205, 'wp-content/plugins/wordfence/lib/wfArray.php'),
(1206, 'wp-content/plugins/wordfence/lib/wfBrowscap.php'),
(1207, 'wp-content/plugins/wordfence/lib/wfBrowscapCache.php'),
(1208, 'wp-content/plugins/wordfence/lib/wfBulkCountries.php'),
(1209, 'wp-content/plugins/wordfence/lib/wfCache.php'),
(1210, 'wp-content/plugins/wordfence/lib/wfConfig.php'),
(1211, 'wp-content/plugins/wordfence/lib/wfCountryMap.php'),
(1212, 'wp-content/plugins/wordfence/lib/wfCrawl.php'),
(1213, 'wp-content/plugins/wordfence/lib/wfCrypt.php'),
(1214, 'wp-content/plugins/wordfence/lib/wfDB.php'),
(1215, 'wp-content/plugins/wordfence/lib/wfDashboard.php'),
(1216, 'wp-content/plugins/wordfence/lib/wfDiagnostic.php'),
(1217, 'wp-content/plugins/wordfence/lib/wfDict.php'),
(1218, 'wp-content/plugins/wordfence/lib/wfDirectoryIterator.php'),
(1219, 'wp-content/plugins/wordfence/lib/wfGeoIP.php'),
(1220, 'wp-content/plugins/wordfence/lib/wfHelperBin.php'),
(1221, 'wp-content/plugins/wordfence/lib/wfHelperString.php'),
(1222, 'wp-content/plugins/wordfence/lib/wfIPWhitelist.php'),
(1223, 'wp-content/plugins/wordfence/lib/wfIssues.php'),
(1224, 'wp-content/plugins/wordfence/lib/wfLockedOut.php'),
(1225, 'wp-content/plugins/wordfence/lib/wfLog.php'),
(1226, 'wp-content/plugins/wordfence/lib/wfMD5BloomFilter.php'),
(1227, 'wp-content/plugins/wordfence/lib/wfNotification.php'),
(1228, 'wp-content/plugins/wordfence/lib/wfRESTAPI.php'),
(1229, 'wp-content/plugins/wordfence/lib/wfRate.php'),
(1230, 'wp-content/plugins/wordfence/lib/wfScan.php'),
(1231, 'wp-content/plugins/wordfence/lib/wfScanEngine.php'),
(1232, 'wp-content/plugins/wordfence/lib/wfSchema.php'),
(1233, 'wp-content/plugins/wordfence/lib/wfStyle.php'),
(1234, 'wp-content/plugins/wordfence/lib/wfUnlockMsg.php'),
(1235, 'wp-content/plugins/wordfence/lib/wfUpdateCheck.php'),
(1236, 'wp-content/plugins/wordfence/lib/wfUtils.php'),
(1237, 'wp-content/plugins/wordfence/lib/wfView.php'),
(1238, 'wp-content/plugins/wordfence/lib/wfViewResult.php'),
(1239, 'wp-content/plugins/wordfence/lib/wordfenceClass.php'),
(1240, 'wp-content/plugins/wordfence/lib/wordfenceConstants.php'),
(1241, 'wp-content/plugins/wordfence/lib/wordfenceHash.php'),
(1242, 'wp-content/plugins/wordfence/lib/wordfenceScanner.php'),
(1243, 'wp-content/plugins/wordfence/lib/wordfenceURLHoover.php'),
(1244, 'wp-content/plugins/wordfence/readme.txt'),
(1245, 'wp-content/plugins/wordfence/tmp/.htaccess'),
(1246, 'wp-content/plugins/wordfence/vendor/autoload.php'),
(1247, 'wp-content/plugins/wordfence/vendor/composer/ClassLoader.php'),
(1248, 'wp-content/plugins/wordfence/vendor/composer/LICENSE'),
(1249, 'wp-content/plugins/wordfence/vendor/composer/autoload_classmap.php'),
(1250, 'wp-content/plugins/wordfence/vendor/composer/autoload_namespaces.php'),
(1251, 'wp-content/plugins/wordfence/vendor/composer/autoload_psr4.php'),
(1252, 'wp-content/plugins/wordfence/vendor/composer/autoload_real.php'),
(1253, 'wp-content/plugins/wordfence/vendor/composer/installed.json'),
(1254, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/bootstrap-sample.php'),
(1255, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/cacert.pem'),
(1256, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/init.php'),
(1257, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/config.php'),
(1258, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/http.php'),
(1259, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/json.php'),
(1260, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/lexer.php'),
(1261, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/parser.php'),
(1262, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/sqli.php'),
(1263, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/request.php'),
(1264, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/rules.php'),
(1265, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/storage/file.php'),
(1266, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/storage.php'),
(1267, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/utils.php'),
(1268, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/view.php'),
(1269, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/waf.php'),
(1270, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/rules.key'),
(1271, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403-roadblock.php'),
(1272, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403.php'),
(1273, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/503-lockout.php'),
(1274, 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/503.php'),
(1275, 'wp-content/plugins/wordfence/views/marketing/rightrail.php'),
(1276, 'wp-content/plugins/wordfence/views/reports/activity-report-email-inline.php'),
(1277, 'wp-content/plugins/wordfence/views/reports/activity-report-email.php'),
(1278, 'wp-content/plugins/wordfence/views/reports/activity-report.php'),
(1279, 'wp-content/plugins/wordfence/views/waf/debug.php'),
(1280, 'wp-content/plugins/wordfence/waf/bootstrap.php'),
(1281, 'wp-content/plugins/wordfence/waf/wfWAFGeoIP.php'),
(1282, 'wp-content/plugins/wordfence/waf/wfWAFIPBlocksController.php'),
(1283, 'wp-content/plugins/wordfence/waf/wfWAFUserIPRange.php'),
(1284, 'wp-content/plugins/wordfence/wordfence.php'),
(1285, 'wp-content/themes/advertica-lite/404.php'),
(1286, 'wp-content/themes/advertica-lite/SketchBoard/functions/admin-init.php'),
(1287, 'wp-content/themes/advertica-lite/SketchBoard/functions/sketch-breadcrumb.php'),
(1288, 'wp-content/themes/advertica-lite/SketchBoard/functions/sketch-enqueue.php'),
(1289, 'wp-content/themes/advertica-lite/SketchBoard/functions/sketch-functions.php'),
(1290, 'wp-content/themes/advertica-lite/archive.php'),
(1291, 'wp-content/themes/advertica-lite/author.php'),
(1292, 'wp-content/themes/advertica-lite/category.php'),
(1293, 'wp-content/themes/advertica-lite/changelog.txt'),
(1294, 'wp-content/themes/advertica-lite/comments.php'),
(1295, 'wp-content/themes/advertica-lite/content-none.php'),
(1296, 'wp-content/themes/advertica-lite/content.php'),
(1297, 'wp-content/themes/advertica-lite/css/bootstrap-responsive.css'),
(1298, 'wp-content/themes/advertica-lite/css/font-awesome-ie7.css'),
(1299, 'wp-content/themes/advertica-lite/css/font-awesome.css'),
(1300, 'wp-content/themes/advertica-lite/css/font-awesome.min.css'),
(1301, 'wp-content/themes/advertica-lite/css/ie-style.css'),
(1302, 'wp-content/themes/advertica-lite/css/skt-animation.css'),
(1303, 'wp-content/themes/advertica-lite/css/superfish.css'),
(1304, 'wp-content/themes/advertica-lite/custom-products.php'),
(1305, 'wp-content/themes/advertica-lite/fonts/FontAwesome.otf'),
(1306, 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.eot'),
(1307, 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.svg'),
(1308, 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.ttf'),
(1309, 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.woff'),
(1310, 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.woff2'),
(1311, 'wp-content/themes/advertica-lite/footer.php'),
(1312, 'wp-content/themes/advertica-lite/front-page.php'),
(1313, 'wp-content/themes/advertica-lite/functions.php'),
(1314, 'wp-content/themes/advertica-lite/header.php'),
(1315, 'wp-content/themes/advertica-lite/home.php'),
(1316, 'wp-content/themes/advertica-lite/images/Advertica-Hexagonal-Mask.png'),
(1317, 'wp-content/themes/advertica-lite/images/Advertica.png'),
(1318, 'wp-content/themes/advertica-lite/images/Analytical.png'),
(1319, 'wp-content/themes/advertica-lite/images/Avis.png'),
(1320, 'wp-content/themes/advertica-lite/images/Biznez.png'),
(1321, 'wp-content/themes/advertica-lite/images/Bizstudio.png'),
(1322, 'wp-content/themes/advertica-lite/images/Connexions.png'),
(1323, 'wp-content/themes/advertica-lite/images/Convac.png'),
(1324, 'wp-content/themes/advertica-lite/images/Eptima.png'),
(1325, 'wp-content/themes/advertica-lite/images/Foodeez.png'),
(1326, 'wp-content/themes/advertica-lite/images/Fullscreen.png'),
(1327, 'wp-content/themes/advertica-lite/images/Incart.png'),
(1328, 'wp-content/themes/advertica-lite/images/Insta-Appointment.png'),
(1329, 'wp-content/themes/advertica-lite/images/Invert.png'),
(1330, 'wp-content/themes/advertica-lite/images/Irex.png'),
(1331, 'wp-content/themes/advertica-lite/images/LeadSurf.png'),
(1332, 'wp-content/themes/advertica-lite/images/Parallax_Section_Image.jpg'),
(1333, 'wp-content/themes/advertica-lite/images/Rational.png'),
(1334, 'wp-content/themes/advertica-lite/images/Sketchmini.png'),
(1335, 'wp-content/themes/advertica-lite/images/Timeliner.png'),
(1336, 'wp-content/themes/advertica-lite/images/advertica-header.jpg'),
(1337, 'wp-content/themes/advertica-lite/images/advertica-logo.png'),
(1338, 'wp-content/themes/advertica-lite/images/advertica-options-bg.png'),
(1339, 'wp-content/themes/advertica-lite/images/advertica_favicon.png'),
(1340, 'wp-content/themes/advertica-lite/images/ch-arr.png'),
(1341, 'wp-content/themes/advertica-lite/images/client-logo1.png'),
(1342, 'wp-content/themes/advertica-lite/images/client-logo2.png'),
(1343, 'wp-content/themes/advertica-lite/images/client-logo3.png'),
(1344, 'wp-content/themes/advertica-lite/images/client-logo4.png'),
(1345, 'wp-content/themes/advertica-lite/images/client-logo5.png'),
(1346, 'wp-content/themes/advertica-lite/images/comment-box-btm.jpg'),
(1347, 'wp-content/themes/advertica-lite/images/comment-box-mid.jpg'),
(1348, 'wp-content/themes/advertica-lite/images/comment-box-top.jpg'),
(1349, 'wp-content/themes/advertica-lite/images/corner-arrow.png'),
(1350, 'wp-content/themes/advertica-lite/images/loader.gif'),
(1351, 'wp-content/themes/advertica-lite/images/menuulbg.png'),
(1352, 'wp-content/themes/advertica-lite/images/page-title-bg.jpg'),
(1353, 'wp-content/themes/advertica-lite/images/sketch-logo.png'),
(1354, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/css/welcome.css'),
(1355, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/css/welcome_customizer.css'),
(1356, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/ajax-loader.gif'),
(1357, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/onepirate.jpg'),
(1358, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/responsiveboat.png'),
(1359, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/zblackbeard.jpg'),
(1360, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/zerius.jpg'),
(1361, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/zifer-child.jpg'),
(1362, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/js/welcome.js'),
(1363, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/js/welcome_customizer.js'),
(1364, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/changelog.php'),
(1365, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/child-themes.php'),
(1366, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/free_pro.php'),
(1367, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/getting-started.php'),
(1368, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/github.php'),
(1369, 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/welcome-screen.php'),
(1370, 'wp-content/themes/advertica-lite/includes/advertica-custom-css.php'),
(1371, 'wp-content/themes/advertica-lite/includes/class-plugin-activation.php'),
(1372, 'wp-content/themes/advertica-lite/includes/customizer.php'),
(1373, 'wp-content/themes/advertica-lite/includes/front-client-logo-section.php'),
(1374, 'wp-content/themes/advertica-lite/includes/front-featured-boxes-section.php'),
(1375, 'wp-content/themes/advertica-lite/includes/front-header-image-section.php'),
(1376, 'wp-content/themes/advertica-lite/includes/front-parallax-section.php'),
(1377, 'wp-content/themes/advertica-lite/includes/skt-required-plugins.php'),
(1378, 'wp-content/themes/advertica-lite/index.php'),
(1379, 'wp-content/themes/advertica-lite/js/advertica-lite-customizer.js'),
(1380, 'wp-content/themes/advertica-lite/js/cbpAnimatedHeader.js'),
(1381, 'wp-content/themes/advertica-lite/js/custom.js'),
(1382, 'wp-content/themes/advertica-lite/js/jquery.easing.1.3.js'),
(1383, 'wp-content/themes/advertica-lite/js/superfish.js'),
(1384, 'wp-content/themes/advertica-lite/js/waypoints.min.js'),
(1385, 'wp-content/themes/advertica-lite/languages/en_US.mo'),
(1386, 'wp-content/themes/advertica-lite/languages/en_US.po'),
(1387, 'wp-content/themes/advertica-lite/languages/en_US.pot'),
(1388, 'wp-content/themes/advertica-lite/page.php'),
(1389, 'wp-content/themes/advertica-lite/product-services.php'),
(1390, 'wp-content/themes/advertica-lite/readme.txt'),
(1391, 'wp-content/themes/advertica-lite/screenshot.png'),
(1392, 'wp-content/themes/advertica-lite/search.php'),
(1393, 'wp-content/themes/advertica-lite/searchform.php'),
(1394, 'wp-content/themes/advertica-lite/sidebar-page.php'),
(1395, 'wp-content/themes/advertica-lite/sidebar.php'),
(1396, 'wp-content/themes/advertica-lite/single.php'),
(1397, 'wp-content/themes/advertica-lite/style.css'),
(1398, 'wp-content/themes/advertica-lite/tag.php'),
(1399, 'wp-content/themes/advertica-lite/template-front-page.php'),
(1400, 'wp-content/themes/advertica-lite/template-fullwidth.php'),
(1401, 'wp-content/themes/index.php'),
(1402, 'wp-content/wflogs/attack-data.php'),
(1403, 'wp-content/wflogs/config.php'),
(1404, 'wp-content/wflogs/ips.php'),
(1405, 'wp-content/wflogs/rules.php'),
(1406, 'wp-cron.php'),
(1407, 'wp-includes/ID3/getid3.lib.php'),
(1408, 'wp-includes/ID3/getid3.php'),
(1409, 'wp-includes/ID3/license.commercial.txt'),
(1410, 'wp-includes/ID3/license.txt'),
(1411, 'wp-includes/ID3/module.audio-video.asf.php'),
(1412, 'wp-includes/ID3/module.audio-video.flv.php'),
(1413, 'wp-includes/ID3/module.audio-video.matroska.php'),
(1414, 'wp-includes/ID3/module.audio-video.quicktime.php'),
(1415, 'wp-includes/ID3/module.audio-video.riff.php'),
(1416, 'wp-includes/ID3/module.audio.ac3.php'),
(1417, 'wp-includes/ID3/module.audio.dts.php'),
(1418, 'wp-includes/ID3/module.audio.flac.php'),
(1419, 'wp-includes/ID3/module.audio.mp3.php'),
(1420, 'wp-includes/ID3/module.audio.ogg.php'),
(1421, 'wp-includes/ID3/module.tag.apetag.php'),
(1422, 'wp-includes/ID3/module.tag.id3v1.php'),
(1423, 'wp-includes/ID3/module.tag.id3v2.php'),
(1424, 'wp-includes/ID3/module.tag.lyrics3.php'),
(1425, 'wp-includes/ID3/readme.txt'),
(1426, 'wp-includes/IXR/class-IXR-base64.php'),
(1427, 'wp-includes/IXR/class-IXR-client.php'),
(1428, 'wp-includes/IXR/class-IXR-clientmulticall.php'),
(1429, 'wp-includes/IXR/class-IXR-date.php'),
(1430, 'wp-includes/IXR/class-IXR-error.php'),
(1431, 'wp-includes/IXR/class-IXR-introspectionserver.php'),
(1432, 'wp-includes/IXR/class-IXR-message.php'),
(1433, 'wp-includes/IXR/class-IXR-request.php'),
(1434, 'wp-includes/IXR/class-IXR-server.php'),
(1435, 'wp-includes/IXR/class-IXR-value.php'),
(1436, 'wp-includes/Requests/Auth/Basic.php'),
(1437, 'wp-includes/Requests/Auth.php'),
(1438, 'wp-includes/Requests/Cookie/Jar.php'),
(1439, 'wp-includes/Requests/Cookie.php'),
(1440, 'wp-includes/Requests/Exception/HTTP/304.php'),
(1441, 'wp-includes/Requests/Exception/HTTP/305.php'),
(1442, 'wp-includes/Requests/Exception/HTTP/306.php'),
(1443, 'wp-includes/Requests/Exception/HTTP/400.php'),
(1444, 'wp-includes/Requests/Exception/HTTP/401.php'),
(1445, 'wp-includes/Requests/Exception/HTTP/402.php'),
(1446, 'wp-includes/Requests/Exception/HTTP/403.php'),
(1447, 'wp-includes/Requests/Exception/HTTP/404.php'),
(1448, 'wp-includes/Requests/Exception/HTTP/405.php'),
(1449, 'wp-includes/Requests/Exception/HTTP/406.php'),
(1450, 'wp-includes/Requests/Exception/HTTP/407.php'),
(1451, 'wp-includes/Requests/Exception/HTTP/408.php'),
(1452, 'wp-includes/Requests/Exception/HTTP/409.php'),
(1453, 'wp-includes/Requests/Exception/HTTP/410.php'),
(1454, 'wp-includes/Requests/Exception/HTTP/411.php'),
(1455, 'wp-includes/Requests/Exception/HTTP/412.php'),
(1456, 'wp-includes/Requests/Exception/HTTP/413.php'),
(1457, 'wp-includes/Requests/Exception/HTTP/414.php'),
(1458, 'wp-includes/Requests/Exception/HTTP/415.php'),
(1459, 'wp-includes/Requests/Exception/HTTP/416.php'),
(1460, 'wp-includes/Requests/Exception/HTTP/417.php'),
(1461, 'wp-includes/Requests/Exception/HTTP/418.php'),
(1462, 'wp-includes/Requests/Exception/HTTP/428.php'),
(1463, 'wp-includes/Requests/Exception/HTTP/429.php'),
(1464, 'wp-includes/Requests/Exception/HTTP/431.php'),
(1465, 'wp-includes/Requests/Exception/HTTP/500.php'),
(1466, 'wp-includes/Requests/Exception/HTTP/501.php'),
(1467, 'wp-includes/Requests/Exception/HTTP/502.php'),
(1468, 'wp-includes/Requests/Exception/HTTP/503.php'),
(1469, 'wp-includes/Requests/Exception/HTTP/504.php'),
(1470, 'wp-includes/Requests/Exception/HTTP/505.php'),
(1471, 'wp-includes/Requests/Exception/HTTP/511.php'),
(1472, 'wp-includes/Requests/Exception/HTTP/Unknown.php'),
(1473, 'wp-includes/Requests/Exception/HTTP.php'),
(1474, 'wp-includes/Requests/Exception/Transport/cURL.php'),
(1475, 'wp-includes/Requests/Exception/Transport.php'),
(1476, 'wp-includes/Requests/Exception.php'),
(1477, 'wp-includes/Requests/Hooker.php'),
(1478, 'wp-includes/Requests/Hooks.php'),
(1479, 'wp-includes/Requests/IDNAEncoder.php'),
(1480, 'wp-includes/Requests/IPv6.php'),
(1481, 'wp-includes/Requests/IRI.php'),
(1482, 'wp-includes/Requests/Proxy/HTTP.php'),
(1483, 'wp-includes/Requests/Proxy.php'),
(1484, 'wp-includes/Requests/Response/Headers.php'),
(1485, 'wp-includes/Requests/Response.php'),
(1486, 'wp-includes/Requests/SSL.php'),
(1487, 'wp-includes/Requests/Session.php'),
(1488, 'wp-includes/Requests/Transport/cURL.php'),
(1489, 'wp-includes/Requests/Transport/fsockopen.php'),
(1490, 'wp-includes/Requests/Transport.php'),
(1491, 'wp-includes/Requests/Utility/CaseInsensitiveDictionary.php'),
(1492, 'wp-includes/Requests/Utility/FilteredIterator.php'),
(1493, 'wp-includes/SimplePie/Author.php'),
(1494, 'wp-includes/SimplePie/Cache/Base.php'),
(1495, 'wp-includes/SimplePie/Cache/DB.php'),
(1496, 'wp-includes/SimplePie/Cache/File.php'),
(1497, 'wp-includes/SimplePie/Cache/Memcache.php'),
(1498, 'wp-includes/SimplePie/Cache/MySQL.php'),
(1499, 'wp-includes/SimplePie/Cache.php'),
(1500, 'wp-includes/SimplePie/Caption.php'),
(1501, 'wp-includes/SimplePie/Category.php'),
(1502, 'wp-includes/SimplePie/Content/Type/Sniffer.php'),
(1503, 'wp-includes/SimplePie/Copyright.php'),
(1504, 'wp-includes/SimplePie/Core.php'),
(1505, 'wp-includes/SimplePie/Credit.php'),
(1506, 'wp-includes/SimplePie/Decode/HTML/Entities.php'),
(1507, 'wp-includes/SimplePie/Enclosure.php'),
(1508, 'wp-includes/SimplePie/Exception.php'),
(1509, 'wp-includes/SimplePie/File.php'),
(1510, 'wp-includes/SimplePie/HTTP/Parser.php'),
(1511, 'wp-includes/SimplePie/IRI.php'),
(1512, 'wp-includes/SimplePie/Item.php'),
(1513, 'wp-includes/SimplePie/Locator.php'),
(1514, 'wp-includes/SimplePie/Misc.php'),
(1515, 'wp-includes/SimplePie/Net/IPv6.php'),
(1516, 'wp-includes/SimplePie/Parse/Date.php'),
(1517, 'wp-includes/SimplePie/Parser.php'),
(1518, 'wp-includes/SimplePie/Rating.php'),
(1519, 'wp-includes/SimplePie/Registry.php'),
(1520, 'wp-includes/SimplePie/Restriction.php'),
(1521, 'wp-includes/SimplePie/Sanitize.php'),
(1522, 'wp-includes/SimplePie/Source.php'),
(1523, 'wp-includes/SimplePie/XML/Declaration/Parser.php'),
(1524, 'wp-includes/SimplePie/gzdecode.php'),
(1525, 'wp-includes/Text/Diff/Engine/native.php'),
(1526, 'wp-includes/Text/Diff/Engine/shell.php'),
(1527, 'wp-includes/Text/Diff/Engine/string.php'),
(1528, 'wp-includes/Text/Diff/Engine/xdiff.php'),
(1529, 'wp-includes/Text/Diff/Renderer/inline.php'),
(1530, 'wp-includes/Text/Diff/Renderer.php'),
(1531, 'wp-includes/Text/Diff.php'),
(1532, 'wp-includes/admin-bar.php'),
(1533, 'wp-includes/atomlib.php'),
(1534, 'wp-includes/author-template.php'),
(1535, 'wp-includes/bookmark-template.php'),
(1536, 'wp-includes/bookmark.php'),
(1537, 'wp-includes/cache.php'),
(1538, 'wp-includes/canonical.php'),
(1539, 'wp-includes/capabilities.php'),
(1540, 'wp-includes/category-template.php'),
(1541, 'wp-includes/category.php'),
(1542, 'wp-includes/certificates/ca-bundle.crt'),
(1543, 'wp-includes/class-IXR.php'),
(1544, 'wp-includes/class-feed.php'),
(1545, 'wp-includes/class-http.php'),
(1546, 'wp-includes/class-json.php'),
(1547, 'wp-includes/class-oembed.php'),
(1548, 'wp-includes/class-phpass.php'),
(1549, 'wp-includes/class-phpmailer.php'),
(1550, 'wp-includes/class-pop3.php'),
(1551, 'wp-includes/class-requests.php'),
(1552, 'wp-includes/class-simplepie.php'),
(1553, 'wp-includes/class-smtp.php'),
(1554, 'wp-includes/class-snoopy.php'),
(1555, 'wp-includes/class-walker-category-dropdown.php'),
(1556, 'wp-includes/class-walker-category.php'),
(1557, 'wp-includes/class-walker-comment.php'),
(1558, 'wp-includes/class-walker-nav-menu.php'),
(1559, 'wp-includes/class-walker-page-dropdown.php'),
(1560, 'wp-includes/class-walker-page.php'),
(1561, 'wp-includes/class-wp-admin-bar.php'),
(1562, 'wp-includes/class-wp-ajax-response.php'),
(1563, 'wp-includes/class-wp-comment-query.php'),
(1564, 'wp-includes/class-wp-comment.php'),
(1565, 'wp-includes/class-wp-customize-control.php'),
(1566, 'wp-includes/class-wp-customize-manager.php'),
(1567, 'wp-includes/class-wp-customize-nav-menus.php'),
(1568, 'wp-includes/class-wp-customize-panel.php'),
(1569, 'wp-includes/class-wp-customize-section.php'),
(1570, 'wp-includes/class-wp-customize-setting.php'),
(1571, 'wp-includes/class-wp-customize-widgets.php'),
(1572, 'wp-includes/class-wp-dependency.php'),
(1573, 'wp-includes/class-wp-editor.php'),
(1574, 'wp-includes/class-wp-embed.php'),
(1575, 'wp-includes/class-wp-error.php'),
(1576, 'wp-includes/class-wp-feed-cache-transient.php'),
(1577, 'wp-includes/class-wp-feed-cache.php'),
(1578, 'wp-includes/class-wp-hook.php'),
(1579, 'wp-includes/class-wp-http-cookie.php'),
(1580, 'wp-includes/class-wp-http-curl.php'),
(1581, 'wp-includes/class-wp-http-encoding.php'),
(1582, 'wp-includes/class-wp-http-ixr-client.php'),
(1583, 'wp-includes/class-wp-http-proxy.php'),
(1584, 'wp-includes/class-wp-http-requests-hooks.php'),
(1585, 'wp-includes/class-wp-http-requests-response.php'),
(1586, 'wp-includes/class-wp-http-response.php'),
(1587, 'wp-includes/class-wp-http-streams.php'),
(1588, 'wp-includes/class-wp-image-editor-gd.php'),
(1589, 'wp-includes/class-wp-image-editor-imagick.php'),
(1590, 'wp-includes/class-wp-image-editor.php'),
(1591, 'wp-includes/class-wp-list-util.php'),
(1592, 'wp-includes/class-wp-locale-switcher.php'),
(1593, 'wp-includes/class-wp-locale.php'),
(1594, 'wp-includes/class-wp-matchesmapregex.php'),
(1595, 'wp-includes/class-wp-meta-query.php'),
(1596, 'wp-includes/class-wp-metadata-lazyloader.php'),
(1597, 'wp-includes/class-wp-network-query.php'),
(1598, 'wp-includes/class-wp-network.php'),
(1599, 'wp-includes/class-wp-oembed-controller.php'),
(1600, 'wp-includes/class-wp-post-type.php'),
(1601, 'wp-includes/class-wp-post.php'),
(1602, 'wp-includes/class-wp-query.php'),
(1603, 'wp-includes/class-wp-rewrite.php'),
(1604, 'wp-includes/class-wp-role.php'),
(1605, 'wp-includes/class-wp-roles.php'),
(1606, 'wp-includes/class-wp-session-tokens.php'),
(1607, 'wp-includes/class-wp-simplepie-file.php'),
(1608, 'wp-includes/class-wp-simplepie-sanitize-kses.php'),
(1609, 'wp-includes/class-wp-site-query.php'),
(1610, 'wp-includes/class-wp-site.php'),
(1611, 'wp-includes/class-wp-tax-query.php'),
(1612, 'wp-includes/class-wp-taxonomy.php'),
(1613, 'wp-includes/class-wp-term-query.php'),
(1614, 'wp-includes/class-wp-term.php'),
(1615, 'wp-includes/class-wp-text-diff-renderer-inline.php'),
(1616, 'wp-includes/class-wp-text-diff-renderer-table.php'),
(1617, 'wp-includes/class-wp-theme.php'),
(1618, 'wp-includes/class-wp-user-meta-session-tokens.php'),
(1619, 'wp-includes/class-wp-user-query.php'),
(1620, 'wp-includes/class-wp-user.php'),
(1621, 'wp-includes/class-wp-walker.php'),
(1622, 'wp-includes/class-wp-widget-factory.php'),
(1623, 'wp-includes/class-wp-widget.php'),
(1624, 'wp-includes/class-wp-xmlrpc-server.php'),
(1625, 'wp-includes/class-wp.php'),
(1626, 'wp-includes/class.wp-dependencies.php'),
(1627, 'wp-includes/class.wp-scripts.php'),
(1628, 'wp-includes/class.wp-styles.php'),
(1629, 'wp-includes/comment-template.php'),
(1630, 'wp-includes/comment.php'),
(1631, 'wp-includes/compat.php'),
(1632, 'wp-includes/cron.php'),
(1633, 'wp-includes/css/admin-bar-rtl.css'),
(1634, 'wp-includes/css/admin-bar-rtl.min.css'),
(1635, 'wp-includes/css/admin-bar.css'),
(1636, 'wp-includes/css/admin-bar.min.css'),
(1637, 'wp-includes/css/buttons-rtl.css'),
(1638, 'wp-includes/css/buttons-rtl.min.css'),
(1639, 'wp-includes/css/buttons.css'),
(1640, 'wp-includes/css/buttons.min.css'),
(1641, 'wp-includes/css/customize-preview-rtl.css'),
(1642, 'wp-includes/css/customize-preview-rtl.min.css'),
(1643, 'wp-includes/css/customize-preview.css'),
(1644, 'wp-includes/css/customize-preview.min.css'),
(1645, 'wp-includes/css/dashicons.css'),
(1646, 'wp-includes/css/dashicons.min.css'),
(1647, 'wp-includes/css/editor-rtl.css'),
(1648, 'wp-includes/css/editor-rtl.min.css'),
(1649, 'wp-includes/css/editor.css'),
(1650, 'wp-includes/css/editor.min.css'),
(1651, 'wp-includes/css/jquery-ui-dialog-rtl.css'),
(1652, 'wp-includes/css/jquery-ui-dialog-rtl.min.css'),
(1653, 'wp-includes/css/jquery-ui-dialog.css'),
(1654, 'wp-includes/css/jquery-ui-dialog.min.css'),
(1655, 'wp-includes/css/media-views-rtl.css'),
(1656, 'wp-includes/css/media-views-rtl.min.css'),
(1657, 'wp-includes/css/media-views.css'),
(1658, 'wp-includes/css/media-views.min.css'),
(1659, 'wp-includes/css/wp-auth-check-rtl.css'),
(1660, 'wp-includes/css/wp-auth-check-rtl.min.css'),
(1661, 'wp-includes/css/wp-auth-check.css'),
(1662, 'wp-includes/css/wp-auth-check.min.css'),
(1663, 'wp-includes/css/wp-embed-template-ie.css'),
(1664, 'wp-includes/css/wp-embed-template-ie.min.css'),
(1665, 'wp-includes/css/wp-embed-template.css'),
(1666, 'wp-includes/css/wp-embed-template.min.css'),
(1667, 'wp-includes/css/wp-pointer-rtl.css'),
(1668, 'wp-includes/css/wp-pointer-rtl.min.css'),
(1669, 'wp-includes/css/wp-pointer.css'),
(1670, 'wp-includes/css/wp-pointer.min.css'),
(1671, 'wp-includes/customize/class-wp-customize-background-image-control.php'),
(1672, 'wp-includes/customize/class-wp-customize-background-image-setting.php'),
(1673, 'wp-includes/customize/class-wp-customize-background-position-control.php'),
(1674, 'wp-includes/customize/class-wp-customize-color-control.php'),
(1675, 'wp-includes/customize/class-wp-customize-cropped-image-control.php'),
(1676, 'wp-includes/customize/class-wp-customize-custom-css-setting.php'),
(1677, 'wp-includes/customize/class-wp-customize-filter-setting.php'),
(1678, 'wp-includes/customize/class-wp-customize-header-image-control.php'),
(1679, 'wp-includes/customize/class-wp-customize-header-image-setting.php'),
(1680, 'wp-includes/customize/class-wp-customize-image-control.php'),
(1681, 'wp-includes/customize/class-wp-customize-media-control.php'),
(1682, 'wp-includes/customize/class-wp-customize-nav-menu-auto-add-control.php'),
(1683, 'wp-includes/customize/class-wp-customize-nav-menu-control.php'),
(1684, 'wp-includes/customize/class-wp-customize-nav-menu-item-control.php'),
(1685, 'wp-includes/customize/class-wp-customize-nav-menu-item-setting.php'),
(1686, 'wp-includes/customize/class-wp-customize-nav-menu-location-control.php'),
(1687, 'wp-includes/customize/class-wp-customize-nav-menu-name-control.php'),
(1688, 'wp-includes/customize/class-wp-customize-nav-menu-section.php'),
(1689, 'wp-includes/customize/class-wp-customize-nav-menu-setting.php'),
(1690, 'wp-includes/customize/class-wp-customize-nav-menus-panel.php'),
(1691, 'wp-includes/customize/class-wp-customize-new-menu-control.php'),
(1692, 'wp-includes/customize/class-wp-customize-new-menu-section.php'),
(1693, 'wp-includes/customize/class-wp-customize-partial.php'),
(1694, 'wp-includes/customize/class-wp-customize-selective-refresh.php'),
(1695, 'wp-includes/customize/class-wp-customize-sidebar-section.php'),
(1696, 'wp-includes/customize/class-wp-customize-site-icon-control.php'),
(1697, 'wp-includes/customize/class-wp-customize-theme-control.php'),
(1698, 'wp-includes/customize/class-wp-customize-themes-section.php'),
(1699, 'wp-includes/customize/class-wp-customize-upload-control.php'),
(1700, 'wp-includes/customize/class-wp-widget-area-customize-control.php'),
(1701, 'wp-includes/customize/class-wp-widget-form-customize-control.php'),
(1702, 'wp-includes/date.php'),
(1703, 'wp-includes/default-constants.php'),
(1704, 'wp-includes/default-filters.php'),
(1705, 'wp-includes/default-widgets.php'),
(1706, 'wp-includes/deprecated.php'),
(1707, 'wp-includes/embed-template.php'),
(1708, 'wp-includes/embed.php'),
(1709, 'wp-includes/feed-atom-comments.php'),
(1710, 'wp-includes/feed-atom.php'),
(1711, 'wp-includes/feed-rdf.php'),
(1712, 'wp-includes/feed-rss.php'),
(1713, 'wp-includes/feed-rss2-comments.php'),
(1714, 'wp-includes/feed-rss2.php'),
(1715, 'wp-includes/feed.php'),
(1716, 'wp-includes/fonts/dashicons.eot'),
(1717, 'wp-includes/fonts/dashicons.svg'),
(1718, 'wp-includes/fonts/dashicons.ttf'),
(1719, 'wp-includes/fonts/dashicons.woff'),
(1720, 'wp-includes/formatting.php'),
(1721, 'wp-includes/functions.php'),
(1722, 'wp-includes/functions.wp-scripts.php'),
(1723, 'wp-includes/functions.wp-styles.php'),
(1724, 'wp-includes/general-template.php'),
(1725, 'wp-includes/http.php'),
(1726, 'wp-includes/images/admin-bar-sprite-2x.png'),
(1727, 'wp-includes/images/admin-bar-sprite.png'),
(1728, 'wp-includes/images/arrow-pointer-blue-2x.png'),
(1729, 'wp-includes/images/arrow-pointer-blue.png'),
(1730, 'wp-includes/images/blank.gif'),
(1731, 'wp-includes/images/crystal/archive.png'),
(1732, 'wp-includes/images/crystal/audio.png'),
(1733, 'wp-includes/images/crystal/code.png'),
(1734, 'wp-includes/images/crystal/default.png'),
(1735, 'wp-includes/images/crystal/document.png'),
(1736, 'wp-includes/images/crystal/interactive.png'),
(1737, 'wp-includes/images/crystal/license.txt'),
(1738, 'wp-includes/images/crystal/spreadsheet.png'),
(1739, 'wp-includes/images/crystal/text.png'),
(1740, 'wp-includes/images/crystal/video.png'),
(1741, 'wp-includes/images/down_arrow-2x.gif'),
(1742, 'wp-includes/images/down_arrow.gif'),
(1743, 'wp-includes/images/icon-pointer-flag-2x.png'),
(1744, 'wp-includes/images/icon-pointer-flag.png'),
(1745, 'wp-includes/images/media/archive.png'),
(1746, 'wp-includes/images/media/audio.png'),
(1747, 'wp-includes/images/media/code.png'),
(1748, 'wp-includes/images/media/default.png'),
(1749, 'wp-includes/images/media/document.png'),
(1750, 'wp-includes/images/media/interactive.png'),
(1751, 'wp-includes/images/media/spreadsheet.png'),
(1752, 'wp-includes/images/media/text.png'),
(1753, 'wp-includes/images/media/video.png'),
(1754, 'wp-includes/images/rss-2x.png'),
(1755, 'wp-includes/images/rss.png'),
(1756, 'wp-includes/images/smilies/frownie.png'),
(1757, 'wp-includes/images/smilies/icon_arrow.gif'),
(1758, 'wp-includes/images/smilies/icon_biggrin.gif'),
(1759, 'wp-includes/images/smilies/icon_confused.gif'),
(1760, 'wp-includes/images/smilies/icon_cool.gif'),
(1761, 'wp-includes/images/smilies/icon_cry.gif'),
(1762, 'wp-includes/images/smilies/icon_eek.gif'),
(1763, 'wp-includes/images/smilies/icon_evil.gif'),
(1764, 'wp-includes/images/smilies/icon_exclaim.gif'),
(1765, 'wp-includes/images/smilies/icon_idea.gif'),
(1766, 'wp-includes/images/smilies/icon_lol.gif'),
(1767, 'wp-includes/images/smilies/icon_mad.gif'),
(1768, 'wp-includes/images/smilies/icon_mrgreen.gif'),
(1769, 'wp-includes/images/smilies/icon_neutral.gif'),
(1770, 'wp-includes/images/smilies/icon_question.gif'),
(1771, 'wp-includes/images/smilies/icon_razz.gif'),
(1772, 'wp-includes/images/smilies/icon_redface.gif'),
(1773, 'wp-includes/images/smilies/icon_rolleyes.gif'),
(1774, 'wp-includes/images/smilies/icon_sad.gif'),
(1775, 'wp-includes/images/smilies/icon_smile.gif'),
(1776, 'wp-includes/images/smilies/icon_surprised.gif'),
(1777, 'wp-includes/images/smilies/icon_twisted.gif'),
(1778, 'wp-includes/images/smilies/icon_wink.gif'),
(1779, 'wp-includes/images/smilies/mrgreen.png'),
(1780, 'wp-includes/images/smilies/rolleyes.png'),
(1781, 'wp-includes/images/smilies/simple-smile.png'),
(1782, 'wp-includes/images/spinner-2x.gif'),
(1783, 'wp-includes/images/spinner.gif'),
(1784, 'wp-includes/images/toggle-arrow-2x.png'),
(1785, 'wp-includes/images/toggle-arrow.png'),
(1786, 'wp-includes/images/uploader-icons-2x.png'),
(1787, 'wp-includes/images/uploader-icons.png'),
(1788, 'wp-includes/images/w-logo-blue.png'),
(1789, 'wp-includes/images/wlw/wp-comments.png'),
(1790, 'wp-includes/images/wlw/wp-icon.png'),
(1791, 'wp-includes/images/wlw/wp-watermark.png'),
(1792, 'wp-includes/images/wpicons-2x.png'),
(1793, 'wp-includes/images/wpicons.png'),
(1794, 'wp-includes/images/wpspin-2x.gif'),
(1795, 'wp-includes/images/wpspin.gif'),
(1796, 'wp-includes/images/xit-2x.gif'),
(1797, 'wp-includes/images/xit.gif'),
(1798, 'wp-includes/js/admin-bar.js'),
(1799, 'wp-includes/js/admin-bar.min.js'),
(1800, 'wp-includes/js/autosave.js'),
(1801, 'wp-includes/js/autosave.min.js'),
(1802, 'wp-includes/js/backbone.min.js'),
(1803, 'wp-includes/js/colorpicker.js'),
(1804, 'wp-includes/js/colorpicker.min.js'),
(1805, 'wp-includes/js/comment-reply.js'),
(1806, 'wp-includes/js/comment-reply.min.js'),
(1807, 'wp-includes/js/crop/cropper.css'),
(1808, 'wp-includes/js/crop/cropper.js'),
(1809, 'wp-includes/js/crop/marqueeHoriz.gif'),
(1810, 'wp-includes/js/crop/marqueeVert.gif'),
(1811, 'wp-includes/js/customize-base.js'),
(1812, 'wp-includes/js/customize-base.min.js'),
(1813, 'wp-includes/js/customize-loader.js'),
(1814, 'wp-includes/js/customize-loader.min.js'),
(1815, 'wp-includes/js/customize-models.js'),
(1816, 'wp-includes/js/customize-models.min.js'),
(1817, 'wp-includes/js/customize-preview-nav-menus.js'),
(1818, 'wp-includes/js/customize-preview-nav-menus.min.js'),
(1819, 'wp-includes/js/customize-preview-widgets.js'),
(1820, 'wp-includes/js/customize-preview-widgets.min.js'),
(1821, 'wp-includes/js/customize-preview.js'),
(1822, 'wp-includes/js/customize-preview.min.js'),
(1823, 'wp-includes/js/customize-selective-refresh.js'),
(1824, 'wp-includes/js/customize-selective-refresh.min.js'),
(1825, 'wp-includes/js/customize-views.js'),
(1826, 'wp-includes/js/customize-views.min.js'),
(1827, 'wp-includes/js/heartbeat.js'),
(1828, 'wp-includes/js/heartbeat.min.js'),
(1829, 'wp-includes/js/hoverIntent.js'),
(1830, 'wp-includes/js/hoverIntent.min.js'),
(1831, 'wp-includes/js/imagesloaded.min.js'),
(1832, 'wp-includes/js/imgareaselect/border-anim-h.gif'),
(1833, 'wp-includes/js/imgareaselect/border-anim-v.gif'),
(1834, 'wp-includes/js/imgareaselect/imgareaselect.css'),
(1835, 'wp-includes/js/imgareaselect/jquery.imgareaselect.js'),
(1836, 'wp-includes/js/imgareaselect/jquery.imgareaselect.min.js'),
(1837, 'wp-includes/js/jcrop/Jcrop.gif'),
(1838, 'wp-includes/js/jcrop/jquery.Jcrop.min.css'),
(1839, 'wp-includes/js/jcrop/jquery.Jcrop.min.js'),
(1840, 'wp-includes/js/jquery/jquery-migrate.js'),
(1841, 'wp-includes/js/jquery/jquery-migrate.min.js'),
(1842, 'wp-includes/js/jquery/jquery.color.min.js'),
(1843, 'wp-includes/js/jquery/jquery.form.js'),
(1844, 'wp-includes/js/jquery/jquery.form.min.js'),
(1845, 'wp-includes/js/jquery/jquery.hotkeys.js'),
(1846, 'wp-includes/js/jquery/jquery.hotkeys.min.js'),
(1847, 'wp-includes/js/jquery/jquery.js'),
(1848, 'wp-includes/js/jquery/jquery.masonry.min.js'),
(1849, 'wp-includes/js/jquery/jquery.query.js'),
(1850, 'wp-includes/js/jquery/jquery.schedule.js');
INSERT INTO `vi_wfKnownFileList` (`id`, `path`) VALUES
(1851, 'wp-includes/js/jquery/jquery.serialize-object.js'),
(1852, 'wp-includes/js/jquery/jquery.table-hotkeys.js'),
(1853, 'wp-includes/js/jquery/jquery.table-hotkeys.min.js'),
(1854, 'wp-includes/js/jquery/jquery.ui.touch-punch.js'),
(1855, 'wp-includes/js/jquery/suggest.js'),
(1856, 'wp-includes/js/jquery/suggest.min.js'),
(1857, 'wp-includes/js/jquery/ui/accordion.min.js'),
(1858, 'wp-includes/js/jquery/ui/autocomplete.min.js'),
(1859, 'wp-includes/js/jquery/ui/button.min.js'),
(1860, 'wp-includes/js/jquery/ui/core.min.js'),
(1861, 'wp-includes/js/jquery/ui/datepicker.min.js'),
(1862, 'wp-includes/js/jquery/ui/dialog.min.js'),
(1863, 'wp-includes/js/jquery/ui/draggable.min.js'),
(1864, 'wp-includes/js/jquery/ui/droppable.min.js'),
(1865, 'wp-includes/js/jquery/ui/effect-blind.min.js'),
(1866, 'wp-includes/js/jquery/ui/effect-bounce.min.js'),
(1867, 'wp-includes/js/jquery/ui/effect-clip.min.js'),
(1868, 'wp-includes/js/jquery/ui/effect-drop.min.js'),
(1869, 'wp-includes/js/jquery/ui/effect-explode.min.js'),
(1870, 'wp-includes/js/jquery/ui/effect-fade.min.js'),
(1871, 'wp-includes/js/jquery/ui/effect-fold.min.js'),
(1872, 'wp-includes/js/jquery/ui/effect-highlight.min.js'),
(1873, 'wp-includes/js/jquery/ui/effect-puff.min.js'),
(1874, 'wp-includes/js/jquery/ui/effect-pulsate.min.js'),
(1875, 'wp-includes/js/jquery/ui/effect-scale.min.js'),
(1876, 'wp-includes/js/jquery/ui/effect-shake.min.js'),
(1877, 'wp-includes/js/jquery/ui/effect-size.min.js'),
(1878, 'wp-includes/js/jquery/ui/effect-slide.min.js'),
(1879, 'wp-includes/js/jquery/ui/effect-transfer.min.js'),
(1880, 'wp-includes/js/jquery/ui/effect.min.js'),
(1881, 'wp-includes/js/jquery/ui/menu.min.js'),
(1882, 'wp-includes/js/jquery/ui/mouse.min.js'),
(1883, 'wp-includes/js/jquery/ui/position.min.js'),
(1884, 'wp-includes/js/jquery/ui/progressbar.min.js'),
(1885, 'wp-includes/js/jquery/ui/resizable.min.js'),
(1886, 'wp-includes/js/jquery/ui/selectable.min.js'),
(1887, 'wp-includes/js/jquery/ui/selectmenu.min.js'),
(1888, 'wp-includes/js/jquery/ui/slider.min.js'),
(1889, 'wp-includes/js/jquery/ui/sortable.min.js'),
(1890, 'wp-includes/js/jquery/ui/spinner.min.js'),
(1891, 'wp-includes/js/jquery/ui/tabs.min.js'),
(1892, 'wp-includes/js/jquery/ui/tooltip.min.js'),
(1893, 'wp-includes/js/jquery/ui/widget.min.js'),
(1894, 'wp-includes/js/json2.js'),
(1895, 'wp-includes/js/json2.min.js'),
(1896, 'wp-includes/js/masonry.min.js'),
(1897, 'wp-includes/js/mce-view.js'),
(1898, 'wp-includes/js/mce-view.min.js'),
(1899, 'wp-includes/js/media-audiovideo.js'),
(1900, 'wp-includes/js/media-audiovideo.min.js'),
(1901, 'wp-includes/js/media-editor.js'),
(1902, 'wp-includes/js/media-editor.min.js'),
(1903, 'wp-includes/js/media-grid.js'),
(1904, 'wp-includes/js/media-grid.min.js'),
(1905, 'wp-includes/js/media-models.js'),
(1906, 'wp-includes/js/media-models.min.js'),
(1907, 'wp-includes/js/media-views.js'),
(1908, 'wp-includes/js/media-views.min.js'),
(1909, 'wp-includes/js/mediaelement/background.png'),
(1910, 'wp-includes/js/mediaelement/bigplay.png'),
(1911, 'wp-includes/js/mediaelement/bigplay.svg'),
(1912, 'wp-includes/js/mediaelement/controls.png'),
(1913, 'wp-includes/js/mediaelement/controls.svg'),
(1914, 'wp-includes/js/mediaelement/flashmediaelement.swf'),
(1915, 'wp-includes/js/mediaelement/froogaloop.min.js'),
(1916, 'wp-includes/js/mediaelement/jumpforward.png'),
(1917, 'wp-includes/js/mediaelement/loading.gif'),
(1918, 'wp-includes/js/mediaelement/mediaelement-and-player.min.js'),
(1919, 'wp-includes/js/mediaelement/mediaelementplayer.min.css'),
(1920, 'wp-includes/js/mediaelement/silverlightmediaelement.xap'),
(1921, 'wp-includes/js/mediaelement/skipback.png'),
(1922, 'wp-includes/js/mediaelement/wp-mediaelement.css'),
(1923, 'wp-includes/js/mediaelement/wp-mediaelement.js'),
(1924, 'wp-includes/js/mediaelement/wp-mediaelement.min.css'),
(1925, 'wp-includes/js/mediaelement/wp-mediaelement.min.js'),
(1926, 'wp-includes/js/mediaelement/wp-playlist.js'),
(1927, 'wp-includes/js/mediaelement/wp-playlist.min.js'),
(1928, 'wp-includes/js/plupload/handlers.js'),
(1929, 'wp-includes/js/plupload/handlers.min.js'),
(1930, 'wp-includes/js/plupload/license.txt'),
(1931, 'wp-includes/js/plupload/plupload.flash.swf'),
(1932, 'wp-includes/js/plupload/plupload.full.min.js'),
(1933, 'wp-includes/js/plupload/plupload.silverlight.xap'),
(1934, 'wp-includes/js/plupload/wp-plupload.js'),
(1935, 'wp-includes/js/plupload/wp-plupload.min.js'),
(1936, 'wp-includes/js/quicktags.js'),
(1937, 'wp-includes/js/quicktags.min.js'),
(1938, 'wp-includes/js/shortcode.js'),
(1939, 'wp-includes/js/shortcode.min.js'),
(1940, 'wp-includes/js/swfobject.js'),
(1941, 'wp-includes/js/swfupload/handlers.js'),
(1942, 'wp-includes/js/swfupload/handlers.min.js'),
(1943, 'wp-includes/js/swfupload/license.txt'),
(1944, 'wp-includes/js/swfupload/plugins/swfupload.cookies.js'),
(1945, 'wp-includes/js/swfupload/plugins/swfupload.queue.js'),
(1946, 'wp-includes/js/swfupload/plugins/swfupload.speed.js'),
(1947, 'wp-includes/js/swfupload/plugins/swfupload.swfobject.js'),
(1948, 'wp-includes/js/swfupload/swfupload.js'),
(1949, 'wp-includes/js/swfupload/swfupload.swf'),
(1950, 'wp-includes/js/thickbox/loadingAnimation.gif'),
(1951, 'wp-includes/js/thickbox/macFFBgHack.png'),
(1952, 'wp-includes/js/thickbox/thickbox.css'),
(1953, 'wp-includes/js/thickbox/thickbox.js'),
(1954, 'wp-includes/js/tinymce/langs/wp-langs-en.js'),
(1955, 'wp-includes/js/tinymce/license.txt'),
(1956, 'wp-includes/js/tinymce/plugins/charmap/plugin.js'),
(1957, 'wp-includes/js/tinymce/plugins/charmap/plugin.min.js'),
(1958, 'wp-includes/js/tinymce/plugins/colorpicker/plugin.js'),
(1959, 'wp-includes/js/tinymce/plugins/colorpicker/plugin.min.js'),
(1960, 'wp-includes/js/tinymce/plugins/compat3x/css/dialog.css'),
(1961, 'wp-includes/js/tinymce/plugins/compat3x/plugin.js'),
(1962, 'wp-includes/js/tinymce/plugins/compat3x/plugin.min.js'),
(1963, 'wp-includes/js/tinymce/plugins/directionality/plugin.js'),
(1964, 'wp-includes/js/tinymce/plugins/directionality/plugin.min.js'),
(1965, 'wp-includes/js/tinymce/plugins/fullscreen/plugin.js'),
(1966, 'wp-includes/js/tinymce/plugins/fullscreen/plugin.min.js'),
(1967, 'wp-includes/js/tinymce/plugins/hr/plugin.js'),
(1968, 'wp-includes/js/tinymce/plugins/hr/plugin.min.js'),
(1969, 'wp-includes/js/tinymce/plugins/image/plugin.js'),
(1970, 'wp-includes/js/tinymce/plugins/image/plugin.min.js'),
(1971, 'wp-includes/js/tinymce/plugins/lists/plugin.js'),
(1972, 'wp-includes/js/tinymce/plugins/lists/plugin.min.js'),
(1973, 'wp-includes/js/tinymce/plugins/media/moxieplayer.swf'),
(1974, 'wp-includes/js/tinymce/plugins/media/plugin.js'),
(1975, 'wp-includes/js/tinymce/plugins/media/plugin.min.js'),
(1976, 'wp-includes/js/tinymce/plugins/paste/plugin.js'),
(1977, 'wp-includes/js/tinymce/plugins/paste/plugin.min.js'),
(1978, 'wp-includes/js/tinymce/plugins/tabfocus/plugin.js'),
(1979, 'wp-includes/js/tinymce/plugins/tabfocus/plugin.min.js'),
(1980, 'wp-includes/js/tinymce/plugins/textcolor/plugin.js'),
(1981, 'wp-includes/js/tinymce/plugins/textcolor/plugin.min.js'),
(1982, 'wp-includes/js/tinymce/plugins/wordpress/plugin.js'),
(1983, 'wp-includes/js/tinymce/plugins/wordpress/plugin.min.js'),
(1984, 'wp-includes/js/tinymce/plugins/wpautoresize/plugin.js'),
(1985, 'wp-includes/js/tinymce/plugins/wpautoresize/plugin.min.js'),
(1986, 'wp-includes/js/tinymce/plugins/wpdialogs/plugin.js'),
(1987, 'wp-includes/js/tinymce/plugins/wpdialogs/plugin.min.js'),
(1988, 'wp-includes/js/tinymce/plugins/wpeditimage/plugin.js'),
(1989, 'wp-includes/js/tinymce/plugins/wpeditimage/plugin.min.js'),
(1990, 'wp-includes/js/tinymce/plugins/wpembed/plugin.js'),
(1991, 'wp-includes/js/tinymce/plugins/wpembed/plugin.min.js'),
(1992, 'wp-includes/js/tinymce/plugins/wpemoji/plugin.js'),
(1993, 'wp-includes/js/tinymce/plugins/wpemoji/plugin.min.js'),
(1994, 'wp-includes/js/tinymce/plugins/wpgallery/plugin.js'),
(1995, 'wp-includes/js/tinymce/plugins/wpgallery/plugin.min.js'),
(1996, 'wp-includes/js/tinymce/plugins/wplink/plugin.js'),
(1997, 'wp-includes/js/tinymce/plugins/wplink/plugin.min.js'),
(1998, 'wp-includes/js/tinymce/plugins/wptextpattern/plugin.js'),
(1999, 'wp-includes/js/tinymce/plugins/wptextpattern/plugin.min.js'),
(2000, 'wp-includes/js/tinymce/plugins/wpview/plugin.js'),
(2001, 'wp-includes/js/tinymce/plugins/wpview/plugin.min.js'),
(2002, 'wp-includes/js/tinymce/skins/lightgray/content.inline.min.css'),
(2003, 'wp-includes/js/tinymce/skins/lightgray/content.min.css'),
(2004, 'wp-includes/js/tinymce/skins/lightgray/fonts/readme.md'),
(2005, 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.eot'),
(2006, 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.json'),
(2007, 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.svg'),
(2008, 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.ttf'),
(2009, 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.woff'),
(2010, 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.eot'),
(2011, 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.json'),
(2012, 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.svg'),
(2013, 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.ttf'),
(2014, 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.woff'),
(2015, 'wp-includes/js/tinymce/skins/lightgray/img/anchor.gif'),
(2016, 'wp-includes/js/tinymce/skins/lightgray/img/loader.gif'),
(2017, 'wp-includes/js/tinymce/skins/lightgray/img/object.gif'),
(2018, 'wp-includes/js/tinymce/skins/lightgray/img/trans.gif'),
(2019, 'wp-includes/js/tinymce/skins/lightgray/skin.ie7.min.css'),
(2020, 'wp-includes/js/tinymce/skins/lightgray/skin.min.css'),
(2021, 'wp-includes/js/tinymce/skins/wordpress/images/audio.png'),
(2022, 'wp-includes/js/tinymce/skins/wordpress/images/dashicon-edit.png'),
(2023, 'wp-includes/js/tinymce/skins/wordpress/images/dashicon-no.png'),
(2024, 'wp-includes/js/tinymce/skins/wordpress/images/embedded.png'),
(2025, 'wp-includes/js/tinymce/skins/wordpress/images/gallery-2x.png'),
(2026, 'wp-includes/js/tinymce/skins/wordpress/images/gallery.png'),
(2027, 'wp-includes/js/tinymce/skins/wordpress/images/more-2x.png'),
(2028, 'wp-includes/js/tinymce/skins/wordpress/images/more.png'),
(2029, 'wp-includes/js/tinymce/skins/wordpress/images/pagebreak-2x.png'),
(2030, 'wp-includes/js/tinymce/skins/wordpress/images/pagebreak.png'),
(2031, 'wp-includes/js/tinymce/skins/wordpress/images/playlist-audio.png'),
(2032, 'wp-includes/js/tinymce/skins/wordpress/images/playlist-video.png'),
(2033, 'wp-includes/js/tinymce/skins/wordpress/images/video.png'),
(2034, 'wp-includes/js/tinymce/skins/wordpress/wp-content.css'),
(2035, 'wp-includes/js/tinymce/themes/inlite/theme.js'),
(2036, 'wp-includes/js/tinymce/themes/inlite/theme.min.js'),
(2037, 'wp-includes/js/tinymce/themes/modern/theme.js'),
(2038, 'wp-includes/js/tinymce/themes/modern/theme.min.js'),
(2039, 'wp-includes/js/tinymce/tiny_mce_popup.js'),
(2040, 'wp-includes/js/tinymce/tinymce.min.js'),
(2041, 'wp-includes/js/tinymce/utils/editable_selects.js'),
(2042, 'wp-includes/js/tinymce/utils/form_utils.js'),
(2043, 'wp-includes/js/tinymce/utils/mctabs.js'),
(2044, 'wp-includes/js/tinymce/utils/validate.js'),
(2045, 'wp-includes/js/tinymce/wp-tinymce.js.gz'),
(2046, 'wp-includes/js/tinymce/wp-tinymce.php'),
(2047, 'wp-includes/js/tw-sack.js'),
(2048, 'wp-includes/js/tw-sack.min.js'),
(2049, 'wp-includes/js/twemoji.js'),
(2050, 'wp-includes/js/twemoji.min.js'),
(2051, 'wp-includes/js/underscore.min.js'),
(2052, 'wp-includes/js/utils.js'),
(2053, 'wp-includes/js/utils.min.js'),
(2054, 'wp-includes/js/wp-a11y.js'),
(2055, 'wp-includes/js/wp-a11y.min.js'),
(2056, 'wp-includes/js/wp-ajax-response.js'),
(2057, 'wp-includes/js/wp-ajax-response.min.js'),
(2058, 'wp-includes/js/wp-api.js'),
(2059, 'wp-includes/js/wp-api.min.js'),
(2060, 'wp-includes/js/wp-auth-check.js'),
(2061, 'wp-includes/js/wp-auth-check.min.js'),
(2062, 'wp-includes/js/wp-backbone.js'),
(2063, 'wp-includes/js/wp-backbone.min.js'),
(2064, 'wp-includes/js/wp-custom-header.js'),
(2065, 'wp-includes/js/wp-custom-header.min.js'),
(2066, 'wp-includes/js/wp-embed-template.js'),
(2067, 'wp-includes/js/wp-embed-template.min.js'),
(2068, 'wp-includes/js/wp-embed.js'),
(2069, 'wp-includes/js/wp-embed.min.js'),
(2070, 'wp-includes/js/wp-emoji-loader.js'),
(2071, 'wp-includes/js/wp-emoji-loader.min.js'),
(2072, 'wp-includes/js/wp-emoji-release.min.js'),
(2073, 'wp-includes/js/wp-emoji.js'),
(2074, 'wp-includes/js/wp-emoji.min.js'),
(2075, 'wp-includes/js/wp-list-revisions.js'),
(2076, 'wp-includes/js/wp-list-revisions.min.js'),
(2077, 'wp-includes/js/wp-lists.js'),
(2078, 'wp-includes/js/wp-lists.min.js'),
(2079, 'wp-includes/js/wp-pointer.js'),
(2080, 'wp-includes/js/wp-pointer.min.js'),
(2081, 'wp-includes/js/wp-util.js'),
(2082, 'wp-includes/js/wp-util.min.js'),
(2083, 'wp-includes/js/wpdialog.js'),
(2084, 'wp-includes/js/wpdialog.min.js'),
(2085, 'wp-includes/js/wplink.js'),
(2086, 'wp-includes/js/wplink.min.js'),
(2087, 'wp-includes/js/zxcvbn-async.js'),
(2088, 'wp-includes/js/zxcvbn-async.min.js'),
(2089, 'wp-includes/js/zxcvbn.min.js'),
(2090, 'wp-includes/kses.php'),
(2091, 'wp-includes/l10n.php'),
(2092, 'wp-includes/link-template.php'),
(2093, 'wp-includes/load.php'),
(2094, 'wp-includes/locale.php'),
(2095, 'wp-includes/media-template.php'),
(2096, 'wp-includes/media.php'),
(2097, 'wp-includes/meta.php'),
(2098, 'wp-includes/ms-blogs.php'),
(2099, 'wp-includes/ms-default-constants.php'),
(2100, 'wp-includes/ms-default-filters.php'),
(2101, 'wp-includes/ms-deprecated.php'),
(2102, 'wp-includes/ms-files.php'),
(2103, 'wp-includes/ms-functions.php'),
(2104, 'wp-includes/ms-load.php'),
(2105, 'wp-includes/ms-settings.php'),
(2106, 'wp-includes/nav-menu-template.php'),
(2107, 'wp-includes/nav-menu.php'),
(2108, 'wp-includes/option.php'),
(2109, 'wp-includes/pluggable-deprecated.php'),
(2110, 'wp-includes/pluggable.php'),
(2111, 'wp-includes/plugin.php'),
(2112, 'wp-includes/pomo/entry.php'),
(2113, 'wp-includes/pomo/mo.php'),
(2114, 'wp-includes/pomo/po.php'),
(2115, 'wp-includes/pomo/streams.php'),
(2116, 'wp-includes/pomo/translations.php'),
(2117, 'wp-includes/post-formats.php'),
(2118, 'wp-includes/post-template.php'),
(2119, 'wp-includes/post-thumbnail-template.php'),
(2120, 'wp-includes/post.php'),
(2121, 'wp-includes/query.php'),
(2122, 'wp-includes/random_compat/byte_safe_strings.php'),
(2123, 'wp-includes/random_compat/cast_to_int.php'),
(2124, 'wp-includes/random_compat/error_polyfill.php'),
(2125, 'wp-includes/random_compat/random.php'),
(2126, 'wp-includes/random_compat/random_bytes_com_dotnet.php'),
(2127, 'wp-includes/random_compat/random_bytes_dev_urandom.php'),
(2128, 'wp-includes/random_compat/random_bytes_libsodium.php'),
(2129, 'wp-includes/random_compat/random_bytes_libsodium_legacy.php'),
(2130, 'wp-includes/random_compat/random_bytes_mcrypt.php'),
(2131, 'wp-includes/random_compat/random_bytes_openssl.php'),
(2132, 'wp-includes/random_compat/random_int.php'),
(2133, 'wp-includes/registration-functions.php'),
(2134, 'wp-includes/registration.php'),
(2135, 'wp-includes/rest-api/class-wp-rest-request.php'),
(2136, 'wp-includes/rest-api/class-wp-rest-response.php'),
(2137, 'wp-includes/rest-api/class-wp-rest-server.php'),
(2138, 'wp-includes/rest-api/endpoints/class-wp-rest-attachments-controller.php'),
(2139, 'wp-includes/rest-api/endpoints/class-wp-rest-comments-controller.php'),
(2140, 'wp-includes/rest-api/endpoints/class-wp-rest-controller.php'),
(2141, 'wp-includes/rest-api/endpoints/class-wp-rest-post-statuses-controller.php'),
(2142, 'wp-includes/rest-api/endpoints/class-wp-rest-post-types-controller.php'),
(2143, 'wp-includes/rest-api/endpoints/class-wp-rest-posts-controller.php'),
(2144, 'wp-includes/rest-api/endpoints/class-wp-rest-revisions-controller.php'),
(2145, 'wp-includes/rest-api/endpoints/class-wp-rest-settings-controller.php'),
(2146, 'wp-includes/rest-api/endpoints/class-wp-rest-taxonomies-controller.php'),
(2147, 'wp-includes/rest-api/endpoints/class-wp-rest-terms-controller.php'),
(2148, 'wp-includes/rest-api/endpoints/class-wp-rest-users-controller.php'),
(2149, 'wp-includes/rest-api/fields/class-wp-rest-comment-meta-fields.php'),
(2150, 'wp-includes/rest-api/fields/class-wp-rest-meta-fields.php'),
(2151, 'wp-includes/rest-api/fields/class-wp-rest-post-meta-fields.php'),
(2152, 'wp-includes/rest-api/fields/class-wp-rest-term-meta-fields.php'),
(2153, 'wp-includes/rest-api/fields/class-wp-rest-user-meta-fields.php'),
(2154, 'wp-includes/rest-api.php'),
(2155, 'wp-includes/revision.php'),
(2156, 'wp-includes/rewrite.php'),
(2157, 'wp-includes/rss-functions.php'),
(2158, 'wp-includes/rss.php'),
(2159, 'wp-includes/script-loader.php'),
(2160, 'wp-includes/session.php'),
(2161, 'wp-includes/shortcodes.php'),
(2162, 'wp-includes/taxonomy.php'),
(2163, 'wp-includes/template-loader.php'),
(2164, 'wp-includes/template.php'),
(2165, 'wp-includes/theme-compat/comments.php'),
(2166, 'wp-includes/theme-compat/embed-404.php'),
(2167, 'wp-includes/theme-compat/embed-content.php'),
(2168, 'wp-includes/theme-compat/embed.php'),
(2169, 'wp-includes/theme-compat/footer-embed.php'),
(2170, 'wp-includes/theme-compat/footer.php'),
(2171, 'wp-includes/theme-compat/header-embed.php'),
(2172, 'wp-includes/theme-compat/header.php'),
(2173, 'wp-includes/theme-compat/sidebar.php'),
(2174, 'wp-includes/theme.php'),
(2175, 'wp-includes/update.php'),
(2176, 'wp-includes/user.php'),
(2177, 'wp-includes/vars.php'),
(2178, 'wp-includes/version.php'),
(2179, 'wp-includes/widgets/class-wp-nav-menu-widget.php'),
(2180, 'wp-includes/widgets/class-wp-widget-archives.php'),
(2181, 'wp-includes/widgets/class-wp-widget-calendar.php'),
(2182, 'wp-includes/widgets/class-wp-widget-categories.php'),
(2183, 'wp-includes/widgets/class-wp-widget-links.php'),
(2184, 'wp-includes/widgets/class-wp-widget-meta.php'),
(2185, 'wp-includes/widgets/class-wp-widget-pages.php'),
(2186, 'wp-includes/widgets/class-wp-widget-recent-comments.php'),
(2187, 'wp-includes/widgets/class-wp-widget-recent-posts.php'),
(2188, 'wp-includes/widgets/class-wp-widget-rss.php'),
(2189, 'wp-includes/widgets/class-wp-widget-search.php'),
(2190, 'wp-includes/widgets/class-wp-widget-tag-cloud.php'),
(2191, 'wp-includes/widgets/class-wp-widget-text.php'),
(2192, 'wp-includes/widgets.php'),
(2193, 'wp-includes/wlwmanifest.xml'),
(2194, 'wp-includes/wp-db.php'),
(2195, 'wp-includes/wp-diff.php'),
(2196, 'wp-links-opml.php'),
(2197, 'wp-load.php'),
(2198, 'wp-login.php'),
(2199, 'wp-mail.php'),
(2200, 'wp-settings.php'),
(2201, 'wp-signup.php'),
(2202, 'wp-trackback.php'),
(2203, 'xmlrpc.php');

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfLeechers`
--

CREATE TABLE IF NOT EXISTS `vi_wfLeechers` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vi_wfLeechers`
--

INSERT INTO `vi_wfLeechers` (`eMin`, `IP`, `hits`) VALUES
(24845078, '\0\0\0\0\0\0\0\0\0\0���L', 1),
(24845175, '\0\0\0\0\0\0\0\0\0\0��z�r', 1),
(24844954, '\0\0\0\0\0\0\0\0\0\0���L�', 1),
(24844925, '\0\0\0\0\0\0\0\0\0\0��A��', 1),
(24844504, '\0\0\0\0\0\0\0\0\0\0��?��D', 1),
(24847561, '\0\0\0\0\0\0\0\0\0\0���L�', 1),
(24844034, '\0\0\0\0\0\0\0\0\0\0���+�U', 3),
(24844028, '\0\0\0\0\0\0\0\0\0\0���L!', 1),
(24845678, '\0\0\0\0\0\0\0\0\0\0���L', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfLockedOut`
--

CREATE TABLE IF NOT EXISTS `vi_wfLockedOut` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT '0',
  `blockedHits` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`IP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfLocs`
--

CREATE TABLE IF NOT EXISTS `vi_wfLocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) unsigned NOT NULL,
  `failed` tinyint(3) unsigned NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT '0.0000000',
  `lon` float(10,7) DEFAULT '0.0000000',
  PRIMARY KEY (`IP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfLogins`
--

CREATE TABLE IF NOT EXISTS `vi_wfLogins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `fail` tinyint(3) unsigned NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text,
  PRIMARY KEY (`id`),
  KEY `k1` (`IP`,`fail`),
  KEY `hitID` (`hitID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vi_wfLogins`
--

INSERT INTO `vi_wfLogins` (`id`, `hitID`, `ctime`, `fail`, `action`, `username`, `userID`, `IP`, `UA`) VALUES
(1, 2, 1488286495.156651, 0, 'logout', 'VedIN', 1, '\0\0\0\0\0\0\0\0\0\0��z��m', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(2, 16, 1488441221.131835, 0, 'loginOK', 'VedIN', 1, '\0\0\0\0\0\0\0\0\0\0���1��', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(3, 17, 1488441284.118584, 0, 'logout', 'VedIN', 1, '\0\0\0\0\0\0\0\0\0\0���1��', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(4, 270, 1490079647.428904, 0, 'loginOK', 'VedIN', 1, '\0\0\0\0\0\0\0\0\0\0��z��', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(5, 271, 1490095595.121443, 0, 'logout', 'VedIN', 1, '\0\0\0\0\0\0\0\0\0\0��z��', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfNet404s`
--

CREATE TABLE IF NOT EXISTS `vi_wfNet404s` (
  `sig` binary(16) NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `URI` varchar(1000) NOT NULL,
  PRIMARY KEY (`sig`),
  KEY `k1` (`ctime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfNotifications`
--

CREATE TABLE IF NOT EXISTS `vi_wfNotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '1000',
  `ctime` int(10) unsigned NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vi_wfNotifications`
--

INSERT INTO `vi_wfNotifications` (`id`, `new`, `category`, `priority`, `ctime`, `html`, `links`) VALUES
('site-AEAAAAA', 0, 'wfplugin_scan', 500, 1488286454, '<a href="http://vedantindustries.in/wp-admin/admin.php?page=WordfenceScan">1 issue found in most recent scan</a>', '[]'),
('network-GB', 1, 'release630', 400, 1488846365, '<div style="padding:1rem 0px;"><b>Announcing Wordfence 6.3.0 - Exciting Improvements</b><br>\nThis morning we are officially releasing Wordfence 6.3.0. If you have Wordfence auto-update enabled, your site may have already been updated automatically. This is a very exciting release for us with a host of improvements. The user interface has changed and we have added a new ''Dashboard'' menu option. You''ll also notice the Wordfence menu structure has changed. <br><br>\n\nWe have tried to keep everything familiar, but easier to find and access. You can find the help documentation for the new dashboard <a href="https://docs.wordfence.com/en/Wordfence_Dashboard">here</a>.<br><br>\n\n<a href="https://www.wordfence.com/blog/2017/01/wordfence-6-3-0/">You can find the full announcement and details of the changes on our blog....</a></div>', '[]'),
('network-GC', 1, 'digest201701', 1000, 1488846365, '<div style="padding:1rem 0px;">\n		<p style="font-weight:bold;font-size:0.8rem;color:#11967A;margin-top: 0;">Recent Blog Highlights</p>\n		<div style="display:flex;flex-direction:row;max-width:100%;overflow-x:auto;flex-basis:auto;">\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/xmlrpc-wp-login-brute-force/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">XMLRPC or WP-Login: Which do Brute Force Attackers Prefer</a>\n				<div style="font-size:0.9rem;color:#2d2d2d;">A close look at brute force attack targets yielded some surprising results.</div>\n			</div>\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/wordpress-security-plugin/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">Do you Need a WordPress Security Plugin?</a>\n\n				<div style="font-size:0.9rem;color:#2d2d2d;">This easy to follow post makes the clear case for running both a malware scanner and firewall on your WordPress site.</div>\n			</div>\n\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/wordpress-botnet-monetization/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">Analysis: Methods and Monetization of a Botnet Attacking WordPress</a>\n\n				<div style="font-size:0.9rem;color:#2d2d2d;">\n				A deep dive on the methods and profit motive of an active Botnet.\n				</div>\n			</div>\n\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/chrome-56-ssl-https-wordpress/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">Imminent: Non-HTTPS Sites Labeled “Not Secure” by Chrome</a>\n\n				<div style="font-size:0.9rem;color:#2d2d2d;">\n				An overview of changes to Google Chrome that will impact non-https site owners.\n				</div>\n			</div>\n\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/gmail-phishing-data-uri/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">Wide Impact: Highly Effective Gmail Phishing Technique Being Exploited</a>\n\n				<div style="font-size:0.9rem;color:#2d2d2d;">\n				We profile a new phishing technique that is fooling even experienced technical users.\n				</div>\n			</div>\n\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/how-wordpress-firewall-works/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">How the Wordfence Firewall Works</a>\n\n				<div style="font-size:0.9rem;color:#2d2d2d;">\n				We explain how the Wordfence firewall protects your website from attacks.\n				</div>\n			</div>\n\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/december-2016-wordpress-attack-activity-report/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">The December 2016 WordPress Attack Activity Report</a>\n\n				<div style="font-size:0.9rem;color:#2d2d2d;">\n				Stats and insights from Wordfence Network from December.\n				</div>\n                </div>\n		</div>\n	</div><script type="application/javascript">jQuery(''.wf-dashboard-item-list-title'').css(''min-width'', 0);</script>', '[]'),
('site-AIAAAAA', 1, 'wfplugin_updates', 1000, 1490809060, '<a href="http://vedantindustries.in/wp-admin/update-core.php">Updates are available for WordPress (v4.7.3), 3 plugins, and 1 theme</a>', '[]'),
('site-AUAAAAA', 1, 'wfplugin_scan', 500, 1490853792, '<a href="http://vedantindustries.in/wp-admin/admin.php?page=WordfenceScan">5 issues found in most recent scan</a>', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfReverseCache`
--

CREATE TABLE IF NOT EXISTS `vi_wfReverseCache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vi_wfReverseCache`
--

INSERT INTO `vi_wfReverseCache` (`IP`, `host`, `lastUpdate`) VALUES
('\0\0\0\0\0\0\0\0\0\0��B�BD', 'crawl-66-249-66-68.googlebot.com', 1490840838),
('\0\0\0\0\0\0\0\0\0\0��B�B~', 'crawl-66-249-66-126.googlebot.com', 1490840841);

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfScanners`
--

CREATE TABLE IF NOT EXISTS `vi_wfScanners` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hits` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfSNIPCache`
--

CREATE TABLE IF NOT EXISTS `vi_wfSNIPCache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `expiration` (`expiration`),
  KEY `IP` (`IP`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfStatus`
--

CREATE TABLE IF NOT EXISTS `vi_wfStatus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ctime` double(17,6) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3680 ;

--
-- Dumping data for table `vi_wfStatus`
--

INSERT INTO `vi_wfStatus` (`id`, `ctime`, `level`, `type`, `msg`) VALUES
(3200, 1490670277.318630, 2, 'info', 'Found 1 themes'),
(3558, 1490809107.191227, 10, 'info', 'SUM_ENDOK:Scanning posts for URLs in Google''s Safe Browsing List'),
(3556, 1490809107.190314, 2, 'info', 'Done host key check.'),
(3557, 1490809107.190585, 2, 'info', 'Done examining URLs'),
(3555, 1490809106.826906, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(3554, 1490809106.826688, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(3553, 1490809106.822598, 10, 'info', 'SUM_START:Scanning posts for URLs in Google''s Safe Browsing List'),
(3552, 1490809106.820853, 10, 'info', 'SUM_ENDOK:Scanning for publicly accessible quarantined files'),
(3550, 1490809106.818744, 10, 'info', 'SUM_ENDOK:Scanning files for URLs in Google''s Safe Browsing List'),
(3551, 1490809106.820716, 10, 'info', 'SUM_START:Scanning for publicly accessible quarantined files'),
(3175, 1490628997.257184, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 10.3340GB'),
(3176, 1490628997.257299, 2, 'info', 'The disk has 10582.00 MB space available'),
(3574, 1490809108.928635, 10, 'info', 'SUM_ENDBAD:Scanning for old themes, plugins and core files'),
(3573, 1490809107.702470, 10, 'info', 'SUM_START:Scanning for old themes, plugins and core files'),
(3572, 1490809107.700696, 10, 'info', 'SUM_ENDOK:Scanning to check available disk space'),
(3571, 1490809107.700585, 2, 'info', 'The disk has 10276.67 MB space available'),
(3182, 1490628998.845865, 1, 'info', '-------------------'),
(3183, 1490628998.846025, 1, 'info', 'Scan Complete. Scanned 2203 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6544 records in 1 minute 8 seconds.'),
(3570, 1490809107.700473, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 10.0358GB'),
(3569, 1490809107.700316, 10, 'info', 'SUM_START:Scanning to check available disk space'),
(3185, 1490628999.211976, 2, 'info', 'Wordfence used 22.51MB of memory for scan. Server peak memory usage was: 58.07MB'),
(3186, 1490670257.618484, 1, 'info', 'Scheduled Wordfence scan starting at Tuesday 28th of March 2017 03:04:17 AM'),
(2099, 1489784225.498335, 2, 'info', 'Found 1 themes'),
(2423, 1489949841.857932, 2, 'info', 'Analyzed 1400 files containing 19.04 MB of data so far'),
(3567, 1490809107.697609, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(3568, 1490809107.698299, 10, 'info', 'SUM_ENDOK:Scanning DNS for unauthorized changes'),
(3566, 1490809107.607472, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(3565, 1490809107.352709, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(2097, 1489784225.496608, 2, 'info', 'Found 6 plugins'),
(2098, 1489784225.497519, 2, 'info', 'Getting theme list from WordPress'),
(2096, 1489784225.494084, 2, 'info', 'Getting plugin list from WordPress'),
(2095, 1489784224.668579, 1, 'info', 'Contacting Wordfence to initiate scan'),
(3211, 1490670280.806149, 2, 'info', '1000 files indexed'),
(3210, 1490670280.616888, 2, 'info', '500 files indexed'),
(3212, 1490670281.006857, 2, 'info', '1500 files indexed'),
(3213, 1490670281.217841, 2, 'info', '2000 files indexed'),
(3214, 1490670281.305193, 2, 'info', '2203 files indexed'),
(3215, 1490670282.165417, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(3216, 1490670283.000802, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(3217, 1490670283.989577, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(2428, 1489949846.130446, 2, 'info', 'Analyzed 1900 files containing 26.11 MB of data so far'),
(2429, 1489949846.725027, 2, 'info', 'Analyzed 2000 files containing 27.62 MB of data so far'),
(3220, 1490670285.827127, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(3219, 1490670285.126432, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(3218, 1490670284.586232, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(2430, 1489949847.481165, 2, 'info', 'Analyzed 2100 files containing 30.32 MB of data so far'),
(2431, 1489949847.590525, 2, 'info', 'Analyzed 2137 files containing 30.83 MB of data.'),
(3327, 1490710553.682429, 2, 'info', 'Analyzed 1400 files containing 22.8 MB of data so far'),
(2424, 1489949842.469253, 2, 'info', 'Analyzed 1500 files containing 20.79 MB of data so far'),
(3221, 1490670286.275705, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(3222, 1490670286.620550, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(3223, 1490670287.238403, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(3326, 1490710553.267432, 2, 'info', 'Analyzed 1300 files containing 17.36 MB of data so far'),
(2085, 1489784206.884055, 1, 'info', 'Scheduled Wordfence scan starting at Friday 17th of March 2017 08:56:46 PM'),
(3331, 1490710561.214856, 2, 'info', 'Analyzed 1800 files containing 29.23 MB of data so far'),
(2729, 1490230617.967961, 2, 'info', 'Analyzed 2100 files containing 30 MB of data so far'),
(2728, 1490230616.779533, 2, 'info', 'Analyzed 2000 files containing 27.3 MB of data so far'),
(2730, 1490230618.427851, 2, 'info', 'Analyzed 2137 files containing 30.5 MB of data.'),
(3330, 1490710560.202945, 2, 'info', 'Analyzed 1700 files containing 28.16 MB of data so far'),
(3224, 1490670287.936240, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(2371, 1489906703.733869, 2, 'info', 'The disk has 12664.71 MB space available'),
(3333, 1490710568.551371, 2, 'info', 'Analyzed 2000 files containing 31.76 MB of data so far'),
(3332, 1490710567.781592, 2, 'info', 'Analyzed 1900 files containing 30.18 MB of data so far'),
(3226, 1490670289.167413, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(3225, 1490670288.331992, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(3679, 1490853793.008421, 2, 'info', 'Wordfence used 23.99MB of memory for scan. Server peak memory usage was: 59.16MB'),
(3295, 1490710534.302376, 1, 'info', 'Contacting Wordfence to initiate scan'),
(3069, 1490508480.548654, 2, 'info', 'Starting password strength check on 1 users.'),
(2370, 1489906703.733751, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 12.3679GB'),
(3296, 1490710535.330298, 2, 'info', 'Getting plugin list from WordPress'),
(3297, 1490710535.332840, 2, 'info', 'Found 6 plugins'),
(2367, 1489906703.731057, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(3229, 1490670291.131905, 2, 'info', 'Analyzed 1500 files containing 24.5 MB of data so far'),
(3227, 1490670289.600351, 2, 'info', 'Analyzed 1300 files containing 17.36 MB of data so far'),
(3228, 1490670290.745090, 2, 'info', 'Analyzed 1400 files containing 22.8 MB of data so far'),
(3678, 1490853792.009462, 10, 'info', 'SUM_FINAL:Scan complete. You have 5 new issues to fix. See below.'),
(2366, 1489906703.697848, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(2425, 1489949843.440939, 2, 'info', 'Analyzed 1600 files containing 22.7 MB of data so far'),
(3230, 1490670291.709469, 2, 'info', 'Analyzed 1600 files containing 26.55 MB of data so far'),
(3231, 1490670292.261747, 2, 'info', 'Analyzed 1700 files containing 28.16 MB of data so far'),
(3677, 1490853792.009340, 1, 'info', 'Scan Complete. Scanned 2203 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6611 records in 1 minute 17 seconds.'),
(2365, 1489906703.590191, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(3676, 1490853792.009181, 1, 'info', '-------------------'),
(3675, 1490853791.987041, 10, 'info', 'SUM_ENDOK:Scanning for admin users not created through WordPress'),
(2426, 1489949844.482340, 2, 'info', 'Analyzed 1700 files containing 23.82 MB of data so far'),
(3563, 1490809107.350451, 10, 'info', 'SUM_ENDOK:Scanning for weak passwords'),
(3564, 1490809107.352503, 10, 'info', 'SUM_START:Scanning DNS for unauthorized changes'),
(3562, 1490809107.346012, 2, 'info', 'Starting password strength check on 1 users.'),
(3561, 1490809107.345745, 10, 'info', 'SUM_START:Scanning for weak passwords'),
(3560, 1490809107.343362, 10, 'info', 'SUM_ENDOK:Scanning comments for URLs in Google''s Safe Browsing List'),
(3559, 1490809107.193247, 10, 'info', 'SUM_START:Scanning comments for URLs in Google''s Safe Browsing List'),
(3196, 1490670275.811331, 1, 'info', 'Contacting Wordfence to initiate scan'),
(3197, 1490670276.872862, 2, 'info', 'Getting plugin list from WordPress'),
(3198, 1490670277.315308, 2, 'info', 'Found 6 plugins'),
(3199, 1490670277.316497, 2, 'info', 'Getting theme list from WordPress'),
(2427, 1489949845.267752, 2, 'info', 'Analyzed 1800 files containing 24.61 MB of data so far'),
(3232, 1490670293.110308, 2, 'info', 'Analyzed 1800 files containing 29.23 MB of data so far'),
(3298, 1490710535.333729, 2, 'info', 'Getting theme list from WordPress'),
(3233, 1490670293.953172, 2, 'info', 'Analyzed 1900 files containing 30.18 MB of data so far'),
(3234, 1490670294.680422, 2, 'info', 'Analyzed 2000 files containing 31.76 MB of data so far'),
(3299, 1490710535.334648, 2, 'info', 'Found 1 themes'),
(2590, 1490144135.530971, 1, 'info', 'Contacting Wordfence to initiate scan'),
(2591, 1490144136.309172, 2, 'info', 'Getting plugin list from WordPress'),
(2362, 1489906703.584260, 2, 'info', 'Starting password strength check on 1 users.'),
(2594, 1490144136.313785, 2, 'info', 'Found 1 themes'),
(2592, 1490144136.311940, 2, 'info', 'Found 6 plugins'),
(2593, 1490144136.312898, 2, 'info', 'Getting theme list from WordPress'),
(3465, 1490740780.656893, 10, 'info', 'SUM_START:Scanning DNS for unauthorized changes'),
(3466, 1490740780.734048, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(2180, 1489784256.461271, 1, 'info', '-------------------'),
(2181, 1489784256.461408, 1, 'info', 'Scan Complete. Scanned 2137 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6161 records in 47 seconds.'),
(3235, 1490670295.052786, 2, 'info', 'Analyzed 2100 files containing 34.21 MB of data so far'),
(3061, 1490508480.154085, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(3062, 1490508480.165724, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(3063, 1490508480.529958, 2, 'info', 'Done host key check.'),
(3064, 1490508480.530232, 2, 'info', 'Done examining URLs'),
(3300, 1490710535.957258, 10, 'info', 'SUM_START:Fetching core, theme and plugin file signatures from Wordfence'),
(3467, 1490740780.836126, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(2529, 1490043107.906323, 2, 'info', 'Analyzed 2000 files containing 27.62 MB of data so far'),
(3236, 1490670296.891392, 2, 'info', 'Analyzed 2200 files containing 36.1 MB of data so far'),
(3237, 1490670296.917566, 2, 'info', 'Analyzed 2203 files containing 36.14 MB of data.'),
(3548, 1490809106.815448, 2, 'info', 'Done file contents scan'),
(3549, 1490809106.817810, 10, 'info', 'SUM_ENDOK:Scanning file contents for infections and vulnerabilities'),
(2183, 1489784256.919826, 2, 'info', 'Wordfence used 20.41MB of memory for scan. Server peak memory usage was: 55.98MB'),
(3301, 1490710536.740456, 10, 'info', 'SUM_ENDSUCCESS:Fetching core, theme and plugin file signatures from Wordfence'),
(2184, 1489799391.429409, 1, 'info', 'Scheduled Wordfence scan starting at Saturday 18th of March 2017 01:09:51 AM'),
(2356, 1489906703.470915, 2, 'info', 'Done host key check.'),
(2357, 1489906703.471219, 2, 'info', 'Done examining URLs'),
(2355, 1489906703.099319, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(3674, 1490853791.986017, 10, 'info', 'SUM_START:Scanning for admin users not created through WordPress'),
(3673, 1490853791.961256, 10, 'info', 'SUM_ENDBAD:Scanning for old themes, plugins and core files'),
(3672, 1490853790.311364, 10, 'info', 'SUM_START:Scanning for old themes, plugins and core files'),
(2354, 1489906703.099063, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(3302, 1490710536.742537, 10, 'info', 'SUM_START:Fetching list of known malware files from Wordfence'),
(3303, 1490710537.406067, 10, 'info', 'SUM_ENDSUCCESS:Fetching list of known malware files from Wordfence'),
(3304, 1490710537.407854, 10, 'info', 'SUM_START:Comparing core WordPress files against originals in repository'),
(3305, 1490710537.407990, 10, 'info', 'SUM_DISABLED:Skipping theme scan'),
(3055, 1490508480.135291, 2, 'info', 'Done file contents scan'),
(3054, 1490508480.106801, 2, 'info', 'Done host key check.'),
(2348, 1489906703.043543, 2, 'info', 'Done file contents scan'),
(3547, 1490809106.813857, 2, 'info', 'Done host key check.'),
(3546, 1490809106.458253, 2, 'info', 'Checking 8 host keys against Wordfence scanning servers.'),
(3545, 1490809106.457985, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(3544, 1490809106.457839, 2, 'info', 'Scanned contents of 14 additional files at 2.62 per second'),
(3543, 1490809106.448966, 2, 'info', 'Scanned contents of 13 additional files at 2.44 per second'),
(3539, 1490809100.262404, 10, 'info', 'SUM_START:Scanning file contents for infections and vulnerabilities'),
(3540, 1490809100.263514, 10, 'info', 'SUM_START:Scanning files for URLs in Google''s Safe Browsing List'),
(3541, 1490809101.121915, 2, 'info', 'Starting scan of file contents'),
(3542, 1490809105.255438, 2, 'info', 'Scanned contents of 11 additional files at 2.66 per second'),
(3245, 1490670297.926726, 2, 'info', 'Starting scan of file contents'),
(3246, 1490670303.413940, 2, 'info', 'Scanned contents of 11 additional files at 2.01 per second'),
(3247, 1490670304.502797, 2, 'info', 'Scanned contents of 13 additional files at 1.98 per second'),
(3248, 1490670304.520694, 2, 'info', 'Scanned contents of 14 additional files at 2.13 per second'),
(3249, 1490670304.520969, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(3250, 1490670304.521442, 2, 'info', 'Checking 8 host keys against Wordfence scanning servers.'),
(3251, 1490670304.898441, 2, 'info', 'Done host key check.'),
(3252, 1490670304.900770, 2, 'info', 'Done file contents scan'),
(3528, 1490809097.200104, 2, 'info', 'Analyzed 1800 files containing 29.23 MB of data so far'),
(3529, 1490809098.785887, 2, 'info', 'Analyzed 1900 files containing 30.18 MB of data so far'),
(3530, 1490809099.373343, 2, 'info', 'Analyzed 2000 files containing 31.76 MB of data so far'),
(3531, 1490809099.888937, 2, 'info', 'Analyzed 2100 files containing 34.21 MB of data so far'),
(3532, 1490809100.161581, 2, 'info', 'Analyzed 2200 files containing 36.1 MB of data so far'),
(3533, 1490809100.243607, 2, 'info', 'Analyzed 2203 files containing 36.14 MB of data.'),
(3534, 1490809100.243796, 10, 'info', 'SUM_ENDOK:Comparing core WordPress files against originals in repository'),
(3535, 1490809100.245043, 10, 'info', 'SUM_ENDOK:Scanning for unknown files in wp-admin and wp-includes'),
(3536, 1490809100.246265, 10, 'info', 'SUM_ENDOK:Scanning for known malware files'),
(3537, 1490809100.258860, 10, 'info', 'SUM_START:Check for publicly accessible configuration files, backup files and logs'),
(3538, 1490809100.259827, 10, 'info', 'SUM_ENDOK:Check for publicly accessible configuration files, backup files and logs'),
(2294, 1489906673.413531, 2, 'info', 'Found 6 plugins'),
(2295, 1489906673.414410, 2, 'info', 'Getting theme list from WordPress'),
(2296, 1489906673.415240, 2, 'info', 'Found 1 themes'),
(2623, 1490144157.554696, 2, 'info', 'Analyzed 1500 files containing 20.79 MB of data so far'),
(2622, 1490144156.949716, 2, 'info', 'Analyzed 1400 files containing 19.04 MB of data so far'),
(2621, 1490144154.061904, 2, 'info', 'Analyzed 1300 files containing 17.23 MB of data so far'),
(2620, 1490144153.592834, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(2619, 1490144152.870747, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(2618, 1490144152.000364, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(3527, 1490809096.752314, 2, 'info', 'Analyzed 1700 files containing 28.16 MB of data so far'),
(3526, 1490809095.058378, 2, 'info', 'Analyzed 1600 files containing 26.55 MB of data so far'),
(3525, 1490809091.221738, 2, 'info', 'Analyzed 1500 files containing 24.5 MB of data so far'),
(3524, 1490809083.974381, 2, 'info', 'Analyzed 1400 files containing 22.8 MB of data so far'),
(3523, 1490809080.779723, 2, 'info', 'Analyzed 1300 files containing 17.36 MB of data so far'),
(3258, 1490670306.516445, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(3259, 1490670306.516711, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(2617, 1490144150.802608, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(2616, 1490144150.212347, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(3633, 1490853777.884677, 10, 'info', 'SUM_ENDOK:Comparing core WordPress files against originals in repository'),
(3632, 1490853777.884522, 2, 'info', 'Analyzed 2203 files containing 35.73 MB of data.'),
(3634, 1490853777.885589, 10, 'info', 'SUM_ENDOK:Scanning for unknown files in wp-admin and wp-includes'),
(2615, 1490144148.574016, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(2306, 1489906675.279834, 2, 'info', '500 files indexed'),
(3260, 1490670306.876483, 2, 'info', 'Done host key check.'),
(3261, 1490670306.876865, 2, 'info', 'Done examining URLs'),
(3522, 1490809080.508308, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(3521, 1490809079.846587, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(3520, 1490809079.017595, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(2307, 1489906675.495141, 2, 'info', '1000 files indexed'),
(2308, 1489906676.017632, 2, 'info', '1500 files indexed'),
(2309, 1489906676.469560, 2, 'info', '2000 files indexed'),
(2310, 1489906676.495552, 2, 'info', '2137 files indexed'),
(2311, 1489906677.624762, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(2312, 1489906677.943242, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(2313, 1489906678.305173, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(3671, 1490853790.202186, 10, 'info', 'SUM_ENDOK:Scanning to check available disk space'),
(3670, 1490853790.202064, 2, 'info', 'The disk has 10104.54 MB space available'),
(3669, 1490853790.201945, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 9.8677GB'),
(3668, 1490853790.201776, 10, 'info', 'SUM_START:Scanning to check available disk space'),
(3667, 1490853790.199799, 10, 'info', 'SUM_ENDOK:Scanning DNS for unauthorized changes'),
(3666, 1490853790.199186, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(3665, 1490853790.166832, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(3664, 1490853790.063449, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(3663, 1490853790.063244, 10, 'info', 'SUM_START:Scanning DNS for unauthorized changes'),
(3662, 1490853790.061329, 10, 'info', 'SUM_ENDOK:Scanning for weak passwords'),
(3661, 1490853790.055378, 2, 'info', 'Starting password strength check on 1 users.'),
(3660, 1490853790.055068, 10, 'info', 'SUM_START:Scanning for weak passwords'),
(3518, 1490809078.330598, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(3519, 1490809078.753809, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(3517, 1490809077.998629, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(3266, 1490670311.219613, 2, 'info', 'Starting password strength check on 1 users.'),
(2314, 1489906678.787592, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(2315, 1489906679.244097, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(3516, 1490809073.544316, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(3269, 1490670311.230586, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(3659, 1490853790.052359, 10, 'info', 'SUM_ENDOK:Scanning comments for URLs in Google''s Safe Browsing List'),
(3658, 1490853787.517714, 10, 'info', 'SUM_START:Scanning comments for URLs in Google''s Safe Browsing List'),
(3657, 1490853787.515766, 10, 'info', 'SUM_ENDOK:Scanning posts for URLs in Google''s Safe Browsing List'),
(3655, 1490853787.514850, 2, 'info', 'Done host key check.'),
(3656, 1490853787.515129, 2, 'info', 'Done examining URLs'),
(3654, 1490853787.155431, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(3653, 1490853787.155087, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(3652, 1490853785.072189, 10, 'info', 'SUM_START:Scanning posts for URLs in Google''s Safe Browsing List'),
(3651, 1490853785.070280, 10, 'info', 'SUM_ENDOK:Scanning for publicly accessible quarantined files'),
(3650, 1490853785.070123, 10, 'info', 'SUM_START:Scanning for publicly accessible quarantined files'),
(2347, 1489906703.041367, 2, 'info', 'Done host key check.'),
(2346, 1489906702.674659, 2, 'info', 'Checking 28 host keys against Wordfence scanning servers.'),
(2345, 1489906702.674298, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(2344, 1489906702.674102, 2, 'info', 'Scanned contents of 59 additional files at 8.32 per second'),
(3270, 1490670311.372843, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(3271, 1490670311.430156, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(3515, 1490809072.667038, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(2316, 1489906679.628293, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(2317, 1489906680.302532, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(2318, 1489906680.491527, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(2319, 1489906680.829802, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(3635, 1490853777.886400, 10, 'info', 'SUM_ENDOK:Scanning for known malware files'),
(3636, 1490853777.895027, 10, 'info', 'SUM_START:Check for publicly accessible configuration files, backup files and logs'),
(3637, 1490853777.895643, 10, 'info', 'SUM_ENDOK:Check for publicly accessible configuration files, backup files and logs'),
(2320, 1489906681.237170, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(3638, 1490853777.897517, 10, 'info', 'SUM_START:Scanning file contents for infections and vulnerabilities'),
(3639, 1490853777.898325, 10, 'info', 'SUM_START:Scanning files for URLs in Google''s Safe Browsing List'),
(2321, 1489906681.574156, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(2322, 1489906687.266000, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(2323, 1489906687.532501, 2, 'info', 'Analyzed 1300 files containing 17.23 MB of data so far'),
(2324, 1489906690.002146, 2, 'info', 'Analyzed 1400 files containing 19.04 MB of data so far'),
(2325, 1489906690.992221, 2, 'info', 'Analyzed 1500 files containing 20.79 MB of data so far'),
(2326, 1489906691.334621, 2, 'info', 'Analyzed 1600 files containing 22.7 MB of data so far'),
(3640, 1490853780.448030, 2, 'info', 'Starting scan of file contents'),
(2327, 1489906691.821498, 2, 'info', 'Analyzed 1700 files containing 23.82 MB of data so far'),
(2328, 1489906692.589459, 2, 'info', 'Analyzed 1800 files containing 24.61 MB of data so far'),
(3641, 1490853782.530698, 2, 'info', 'Scanned contents of 13 additional files at 6.24 per second'),
(2343, 1489906701.785602, 2, 'info', 'Scanned contents of 56 additional files at 9.03 per second'),
(3514, 1490809071.093322, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(3274, 1490670311.433095, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 10.2583GB'),
(2342, 1489906697.674448, 2, 'info', 'Scanned contents of 30 additional files at 14.35 per second'),
(2341, 1489906696.628245, 2, 'info', 'Scanned contents of 29 additional files at 27.77 per second'),
(3053, 1490508479.534276, 2, 'info', 'Checking 8 host keys against Wordfence scanning servers.'),
(2340, 1489906695.583387, 2, 'info', 'Starting scan of file contents'),
(3649, 1490853785.067846, 10, 'info', 'SUM_ENDOK:Scanning files for URLs in Google''s Safe Browsing List'),
(3648, 1490853785.065974, 10, 'info', 'SUM_ENDOK:Scanning file contents for infections and vulnerabilities'),
(3646, 1490853785.059962, 2, 'info', 'Done host key check.'),
(3647, 1490853785.062252, 2, 'info', 'Done file contents scan'),
(3645, 1490853784.602781, 2, 'info', 'Checking 8 host keys against Wordfence scanning servers.'),
(3644, 1490853784.602531, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(3643, 1490853784.602388, 2, 'info', 'Scanned contents of 14 additional files at 3.37 per second'),
(3642, 1490853784.601037, 2, 'info', 'Scanned contents of 14 additional files at 3.37 per second'),
(3051, 1490508479.533849, 2, 'info', 'Scanned contents of 14 additional files at 2.53 per second'),
(3052, 1490508479.534017, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(3050, 1490508478.851879, 2, 'info', 'Scanned contents of 11 additional files at 2.26 per second'),
(2604, 1490144139.961217, 2, 'info', '500 files indexed'),
(2605, 1490144140.219429, 2, 'info', '1000 files indexed'),
(2606, 1490144140.994046, 2, 'info', '1500 files indexed'),
(2607, 1490144141.950311, 2, 'info', '2000 files indexed'),
(2608, 1490144141.971964, 2, 'info', '2137 files indexed'),
(2609, 1490144142.837463, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(3275, 1490670311.433206, 2, 'info', 'The disk has 10504.47 MB space available'),
(3513, 1490809068.344677, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(3512, 1490809066.849984, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(3511, 1490809065.796669, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(3506, 1490809061.644906, 2, 'info', '500 files indexed'),
(3507, 1490809061.938544, 2, 'info', '1000 files indexed'),
(3508, 1490809062.231561, 2, 'info', '1500 files indexed'),
(3509, 1490809062.560395, 2, 'info', '2000 files indexed'),
(3510, 1490809062.602449, 2, 'info', '2203 files indexed'),
(3505, 1490809059.294624, 10, 'info', 'SUM_START:Scanning for unknown files in wp-admin and wp-includes'),
(2329, 1489906693.956967, 2, 'info', 'Analyzed 1900 files containing 26.11 MB of data so far'),
(3170, 1490628997.125751, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(2610, 1490144143.266172, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(3576, 1490809108.931429, 10, 'info', 'SUM_ENDOK:Scanning for admin users not created through WordPress'),
(3405, 1490740735.688658, 10, 'info', 'SUM_DISABLED:Skipping plugin scan'),
(3404, 1490740735.688404, 10, 'info', 'SUM_DISABLED:Skipping theme scan'),
(3403, 1490740735.571255, 10, 'info', 'SUM_START:Comparing core WordPress files against originals in repository'),
(3503, 1490809059.292908, 10, 'info', 'SUM_DISABLED:Skipping plugin scan'),
(3504, 1490809059.293766, 10, 'info', 'SUM_START:Scanning for known malware files'),
(2330, 1489906694.381242, 2, 'info', 'Analyzed 2000 files containing 27.62 MB of data so far'),
(3502, 1490809059.292755, 10, 'info', 'SUM_DISABLED:Skipping theme scan'),
(3501, 1490809059.292582, 10, 'info', 'SUM_START:Comparing core WordPress files against originals in repository'),
(3281, 1490670316.922919, 1, 'info', '-------------------'),
(3282, 1490670316.923099, 1, 'info', 'Scan Complete. Scanned 2203 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6654 records in 56 seconds.'),
(3406, 1490740735.689696, 10, 'info', 'SUM_START:Scanning for known malware files'),
(3407, 1490740735.690514, 10, 'info', 'SUM_START:Scanning for unknown files in wp-admin and wp-includes'),
(3408, 1490740737.561199, 2, 'info', '500 files indexed'),
(3409, 1490740738.077014, 2, 'info', '1000 files indexed'),
(3410, 1490740738.471626, 2, 'info', '1500 files indexed'),
(3411, 1490740739.066278, 2, 'info', '2000 files indexed'),
(3412, 1490740739.146672, 2, 'info', '2203 files indexed'),
(3413, 1490740740.084224, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(3414, 1490740740.885829, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(2331, 1489906694.672134, 2, 'info', 'Analyzed 2100 files containing 30.32 MB of data so far'),
(3415, 1490740741.307747, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(3500, 1490809059.290521, 10, 'info', 'SUM_ENDSUCCESS:Fetching list of known malware files from Wordfence'),
(3284, 1490670317.429747, 2, 'info', 'Wordfence used 23.98MB of memory for scan. Server peak memory usage was: 59.55MB'),
(3285, 1490710514.845318, 1, 'info', 'Scheduled Wordfence scan starting at Tuesday 28th of March 2017 02:15:14 PM'),
(2847, 1490292442.572564, 2, 'info', 'Checking 28 host keys against Wordfence scanning servers.'),
(2848, 1490292442.906279, 2, 'info', 'Done host key check.'),
(2849, 1490292442.907997, 2, 'info', 'Done file contents scan'),
(3608, 1490853738.419503, 2, 'info', '2000 files indexed'),
(2332, 1489906694.752514, 2, 'info', 'Analyzed 2137 files containing 30.83 MB of data.'),
(2611, 1490144144.703386, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(2612, 1490144145.705322, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(2613, 1490144146.653093, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(2614, 1490144147.138493, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(2915, 1490346690.974834, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(2914, 1490346689.944170, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(2913, 1490346686.429516, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(2912, 1490346685.739733, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(3124, 1490628960.037912, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(3125, 1490628961.844359, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(3126, 1490628968.269229, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(3127, 1490628968.565434, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(3128, 1490628972.861653, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(3129, 1490628973.307253, 2, 'info', 'Analyzed 1300 files containing 17.36 MB of data so far'),
(3130, 1490628974.804604, 2, 'info', 'Analyzed 1400 files containing 22.8 MB of data so far'),
(3131, 1490628976.729125, 2, 'info', 'Analyzed 1500 files containing 24.5 MB of data so far'),
(2780, 1490292382.974389, 1, 'info', 'Scheduled Wordfence scan starting at Thursday 23rd of March 2017 06:06:22 PM'),
(2779, 1490230632.370458, 2, 'info', 'Wordfence used 20.87MB of memory for scan. Server peak memory usage was: 56.12MB'),
(3102, 1490628949.423849, 2, 'info', 'Found 1 themes'),
(3101, 1490628949.405034, 2, 'info', 'Getting theme list from WordPress'),
(3417, 1490740745.778507, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(3416, 1490740742.752511, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(2422, 1489949840.919321, 2, 'info', 'Analyzed 1300 files containing 17.23 MB of data so far'),
(3167, 1490628997.113201, 2, 'info', 'Starting password strength check on 1 users.'),
(3577, 1490809108.937230, 1, 'info', '-------------------'),
(3132, 1490628979.456617, 2, 'info', 'Analyzed 1600 files containing 26.55 MB of data so far'),
(2777, 1490230632.026874, 1, 'info', 'Scan Complete. Scanned 2137 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6365 records in 1 minute.'),
(2776, 1490230632.026709, 1, 'info', '-------------------'),
(3133, 1490628981.500276, 2, 'info', 'Analyzed 1700 files containing 28.16 MB of data so far'),
(3134, 1490628982.240614, 2, 'info', 'Analyzed 1800 files containing 29.23 MB of data so far'),
(3578, 1490809108.937372, 1, 'info', 'Scan Complete. Scanned 2203 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6501 records in 1 minute 7 seconds.'),
(2421, 1489949840.600296, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(2420, 1489949839.808483, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(3100, 1490628949.403487, 2, 'info', 'Found 6 plugins'),
(3609, 1490853738.519498, 2, 'info', '2203 files indexed'),
(3610, 1490853740.465136, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(3098, 1490628948.531367, 1, 'info', 'Contacting Wordfence to initiate scan'),
(3099, 1490628949.398798, 2, 'info', 'Getting plugin list from WordPress'),
(3611, 1490853741.569531, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(3612, 1490853743.022368, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(2855, 1490292442.920118, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(2856, 1490292442.920378, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(3294, 1490710534.300455, 10, 'info', 'SUM_ENDOK:Checking for the most secure way to get IPs'),
(3072, 1490508480.558061, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(2857, 1490292443.271372, 2, 'info', 'Done host key check.'),
(2858, 1490292443.271748, 2, 'info', 'Done examining URLs'),
(3073, 1490508480.634559, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(3074, 1490508480.666155, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(3617, 1490853751.399218, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(3613, 1490853745.294574, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(3614, 1490853746.437466, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(3615, 1490853747.244192, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(3616, 1490853750.847734, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(3293, 1490710534.299568, 10, 'info', 'SUM_START:Checking for the most secure way to get IPs'),
(2863, 1490292443.556290, 2, 'info', 'Starting password strength check on 1 users.'),
(3077, 1490508480.668882, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 10.5539GB'),
(3292, 1490710534.297550, 10, 'info', 'SUM_ENDOK:Scanning your site for the HeartBleed vulnerability'),
(2580, 1490144118.589183, 1, 'info', 'Scheduled Wordfence scan starting at Wednesday 22nd of March 2017 12:55:18 AM'),
(3618, 1490853753.279318, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(2866, 1490292443.562277, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(2867, 1490292443.724463, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(2868, 1490292443.779137, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(3619, 1490853755.146186, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(2871, 1490292443.783467, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 10.6679GB'),
(2872, 1490292443.783651, 2, 'info', 'The disk has 10923.93 MB space available'),
(2579, 1490043124.970252, 2, 'info', 'Wordfence used 22.07MB of memory for scan. Server peak memory usage was: 57.64MB'),
(3078, 1490508480.669007, 2, 'info', 'The disk has 10807.18 MB space available'),
(3393, 1490740732.551643, 10, 'info', 'SUM_ENDOK:Checking for the most secure way to get IPs'),
(3088, 1490628928.577232, 1, 'info', 'Scheduled Wordfence scan starting at Monday 27th of March 2017 03:35:28 PM'),
(3396, 1490740733.486338, 2, 'info', 'Found 6 plugins'),
(3397, 1490740733.512889, 2, 'info', 'Getting theme list from WordPress'),
(3395, 1490740733.483661, 2, 'info', 'Getting plugin list from WordPress'),
(3394, 1490740732.642083, 1, 'info', 'Contacting Wordfence to initiate scan'),
(2415, 1489949836.605818, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(2419, 1489949839.350285, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(2418, 1489949838.993437, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(2416, 1489949837.444156, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(2417, 1489949837.645579, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(2577, 1490043124.569866, 1, 'info', 'Scan Complete. Scanned 2137 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6340 records in 1 minute 7 seconds.'),
(2576, 1490043124.569688, 1, 'info', '-------------------'),
(3625, 1490853766.735230, 2, 'info', 'Analyzed 1600 files containing 26.14 MB of data so far'),
(3624, 1490853763.490415, 2, 'info', 'Analyzed 1500 files containing 24.09 MB of data so far'),
(3623, 1490853761.525140, 2, 'info', 'Analyzed 1400 files containing 22.8 MB of data so far'),
(3621, 1490853757.725616, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(3622, 1490853759.513304, 2, 'info', 'Analyzed 1300 files containing 17.36 MB of data so far'),
(2570, 1490043122.884627, 2, 'info', 'The disk has 12331.68 MB space available'),
(2569, 1490043122.884502, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 12.0427GB'),
(3123, 1490628959.630773, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(3122, 1490628958.299933, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(2566, 1490043122.881722, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(2565, 1490043122.822474, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(2564, 1490043122.683116, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(3121, 1490628957.771346, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(2561, 1490043122.675776, 2, 'info', 'Starting password strength check on 1 users.'),
(2790, 1490292400.776823, 1, 'info', 'Contacting Wordfence to initiate scan'),
(2791, 1490292401.492559, 2, 'info', 'Getting plugin list from WordPress'),
(2414, 1489949836.098799, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(2413, 1489949834.278930, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(2109, 1489784231.263194, 2, 'info', '500 files indexed'),
(2110, 1489784231.826017, 2, 'info', '1000 files indexed'),
(2111, 1489784232.120002, 2, 'info', '1500 files indexed'),
(3087, 1490508482.255834, 2, 'info', 'Wordfence used 20.72MB of memory for scan. Server peak memory usage was: 56.29MB'),
(3620, 1490853756.459935, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(3308, 1490710537.409730, 10, 'info', 'SUM_START:Scanning for unknown files in wp-admin and wp-includes'),
(2281, 1489799446.359454, 2, 'info', 'Wordfence used 22.07MB of memory for scan. Server peak memory usage was: 57.64MB'),
(2279, 1489799445.925492, 1, 'info', 'Scan Complete. Scanned 2137 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6262 records in 51 seconds.'),
(3309, 1490710539.769909, 2, 'info', '500 files indexed'),
(2278, 1489799445.925320, 1, 'info', '-------------------'),
(3310, 1490710541.396148, 2, 'info', '1000 files indexed'),
(2878, 1490292445.303081, 1, 'info', '-------------------'),
(3085, 1490508481.877739, 1, 'info', 'Scan Complete. Scanned 2203 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6517 records in 42 seconds.'),
(2881, 1490292446.272282, 2, 'info', 'Wordfence used 23.53MB of memory for scan. Server peak memory usage was: 59.10MB'),
(2879, 1490292445.303266, 1, 'info', 'Scan Complete. Scanned 2137 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6362 records in 1 minute.'),
(3392, 1490740732.550424, 10, 'info', 'SUM_START:Checking for the most secure way to get IPs'),
(3311, 1490710542.376044, 2, 'info', '1500 files indexed'),
(3312, 1490710543.227715, 2, 'info', '2000 files indexed'),
(3039, 1490508473.118840, 2, 'info', 'Analyzed 2200 files containing 36.1 MB of data so far'),
(3040, 1490508473.198705, 2, 'info', 'Analyzed 2203 files containing 36.14 MB of data.'),
(3315, 1490710545.626199, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(3314, 1490710544.513550, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(3313, 1490710543.350954, 2, 'info', '2203 files indexed'),
(2638, 1490144164.092695, 2, 'info', 'Starting scan of file contents'),
(3084, 1490508481.877491, 1, 'info', '-------------------'),
(2640, 1490144167.517159, 2, 'info', 'Scanned contents of 30 additional files at 8.76 per second'),
(2639, 1490144165.669931, 2, 'info', 'Scanned contents of 13 additional files at 8.25 per second'),
(3579, 1490809108.937496, 10, 'info', 'SUM_FINAL:Scan complete. You have 4 new issues to fix. See below.'),
(2272, 1489799444.620436, 2, 'info', 'The disk has 11690.12 MB space available'),
(2271, 1489799444.620282, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 11.4161GB'),
(3580, 1490809109.282464, 2, 'info', 'Wordfence used 24.38MB of memory for scan. Server peak memory usage was: 59.95MB'),
(3161, 1490628997.091204, 2, 'info', 'Done host key check.'),
(3162, 1490628997.091545, 2, 'info', 'Done examining URLs'),
(3160, 1490628996.744795, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(3159, 1490628996.744565, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(2641, 1490144171.600927, 2, 'info', 'Scanned contents of 56 additional files at 7.46 per second'),
(2268, 1489799444.617147, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(2267, 1489799444.573145, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(2882, 1490346657.015552, 1, 'info', 'Scheduled Wordfence scan starting at Friday 24th of March 2017 09:10:57 AM'),
(3391, 1490740732.547438, 10, 'info', 'SUM_ENDOK:Scanning your site for the HeartBleed vulnerability'),
(3581, 1490853711.860149, 1, 'info', 'Scheduled Wordfence scan starting at Thursday 30th of March 2017 06:01:51 AM'),
(3390, 1490740725.210305, 10, 'info', 'SUM_START:Scanning your site for the HeartBleed vulnerability'),
(3582, 1490853715.654463, 10, 'info', 'SUM_PREP:Preparing a new scan.'),
(3583, 1490853715.797253, 10, 'info', 'SUM_PAIDONLY:Remote scan of public facing site only available to paid members'),
(2266, 1489799444.429043, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(2642, 1490144173.516895, 2, 'info', 'Scanned contents of 59 additional files at 6.26 per second'),
(2643, 1490144173.518305, 2, 'info', 'Scanned contents of 59 additional files at 6.26 per second'),
(3584, 1490853717.798144, 10, 'info', 'SUM_PAIDONLY:Check if your site is being Spamvertized is for paid members only'),
(3585, 1490853719.799063, 10, 'info', 'SUM_PAIDONLY:Checking if your IP is generating spam is for paid members only'),
(3153, 1490628996.611467, 2, 'info', 'Done file contents scan'),
(3152, 1490628996.580077, 2, 'info', 'Done host key check.'),
(3389, 1490740723.194074, 10, 'info', 'SUM_PAIDONLY:Checking if your site is on the Google Safe Browsing list is for paid members only'),
(3388, 1490740721.192611, 10, 'info', 'SUM_PAIDONLY:Checking if your IP is generating spam is for paid members only'),
(3151, 1490628996.224249, 2, 'info', 'Checking 8 host keys against Wordfence scanning servers.'),
(3150, 1490628996.223942, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(2263, 1489799444.416444, 2, 'info', 'Starting password strength check on 1 users.'),
(2644, 1490144173.518456, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(2645, 1490144173.518931, 2, 'info', 'Checking 28 host keys against Wordfence scanning servers.'),
(2481, 1490043055.921074, 1, 'info', 'Scheduled Wordfence scan starting at Monday 20th of March 2017 08:50:55 PM'),
(3599, 1490853735.523043, 10, 'info', 'SUM_ENDSUCCESS:Fetching list of known malware files from Wordfence'),
(2258, 1489799444.400196, 2, 'info', 'Done examining URLs'),
(2257, 1489799444.399757, 2, 'info', 'Done host key check.'),
(2256, 1489799444.041928, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(2255, 1489799444.041685, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(2830, 1490292427.073195, 2, 'info', 'Analyzed 2137 files containing 30.83 MB of data.'),
(2829, 1490292426.811123, 2, 'info', 'Analyzed 2100 files containing 30.32 MB of data so far'),
(2828, 1490292425.575123, 2, 'info', 'Analyzed 2000 files containing 27.62 MB of data so far'),
(2827, 1490292420.455769, 2, 'info', 'Analyzed 1900 files containing 26.11 MB of data so far'),
(2826, 1490292419.781022, 2, 'info', 'Analyzed 1800 files containing 24.61 MB of data so far'),
(2249, 1489799443.909887, 2, 'info', 'Done file contents scan'),
(2248, 1489799443.906138, 2, 'info', 'Done host key check.'),
(2247, 1489799443.549070, 2, 'info', 'Checking 28 host keys against Wordfence scanning servers.'),
(2246, 1489799443.548728, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(2245, 1489799443.548567, 2, 'info', 'Scanned contents of 59 additional files at 8.46 per second'),
(3387, 1490740719.191551, 10, 'info', 'SUM_PAIDONLY:Check if your site is being Spamvertized is for paid members only'),
(3386, 1490740717.182259, 10, 'info', 'SUM_PAIDONLY:Remote scan of public facing site only available to paid members'),
(3385, 1490740717.013086, 10, 'info', 'SUM_PREP:Preparing a new scan.'),
(3149, 1490628996.223747, 2, 'info', 'Scanned contents of 14 additional files at 2.07 per second'),
(3148, 1490628995.387114, 2, 'info', 'Scanned contents of 11 additional files at 1.86 per second'),
(3384, 1490740712.411784, 1, 'info', 'Scheduled Wordfence scan starting at Tuesday 28th of March 2017 10:38:32 PM'),
(2112, 1489784232.272621, 2, 'info', '2000 files indexed'),
(2113, 1489784232.335018, 2, 'info', '2137 files indexed'),
(2114, 1489784233.015191, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(2115, 1489784233.338589, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(2116, 1489784233.769836, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(2117, 1489784234.685721, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(2244, 1489799442.743714, 2, 'info', 'Scanned contents of 56 additional files at 9.08 per second'),
(3418, 1490740750.985936, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(3419, 1490740751.941206, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(2118, 1489784235.631836, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(3420, 1490740754.042315, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(2119, 1489784236.252816, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(2120, 1489784237.233731, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(2243, 1489799438.627843, 2, 'info', 'Scanned contents of 30 additional files at 14.62 per second'),
(3383, 1490710578.963830, 2, 'info', 'Wordfence used 24.34MB of memory for scan. Server peak memory usage was: 59.91MB'),
(2892, 1490346676.918541, 1, 'info', 'Contacting Wordfence to initiate scan'),
(2893, 1490346677.654798, 2, 'info', 'Getting plugin list from WordPress'),
(2894, 1490346677.657377, 2, 'info', 'Found 6 plugins'),
(2895, 1490346677.658275, 2, 'info', 'Getting theme list from WordPress'),
(2242, 1489799436.575102, 2, 'info', 'Starting scan of file contents'),
(2123, 1489784238.879762, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(2121, 1489784237.423254, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(2122, 1489784237.829598, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(2825, 1490292419.077508, 2, 'info', 'Analyzed 1700 files containing 23.82 MB of data so far'),
(2124, 1489784239.468002, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(2125, 1489784240.016550, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(2126, 1489784240.336184, 2, 'info', 'Analyzed 1300 files containing 17.23 MB of data so far'),
(2127, 1489784240.873225, 2, 'info', 'Analyzed 1400 files containing 19.04 MB of data so far'),
(3147, 1490628989.474380, 2, 'info', 'Starting scan of file contents'),
(3586, 1490853721.800087, 10, 'info', 'SUM_PAIDONLY:Checking if your site is on the Google Safe Browsing list is for paid members only'),
(2896, 1490346677.659098, 2, 'info', 'Found 1 themes'),
(2824, 1490292418.649501, 2, 'info', 'Analyzed 1600 files containing 22.7 MB of data so far'),
(2822, 1490292417.313430, 2, 'info', 'Analyzed 1400 files containing 19.04 MB of data so far'),
(2823, 1490292418.172555, 2, 'info', 'Analyzed 1500 files containing 20.79 MB of data so far'),
(2491, 1490043076.002436, 1, 'info', 'Contacting Wordfence to initiate scan'),
(2492, 1490043077.137185, 2, 'info', 'Getting plugin list from WordPress'),
(3382, 1490710578.613481, 10, 'info', 'SUM_FINAL:Scan complete. You have 4 new issues to fix. See below.'),
(3381, 1490710578.613317, 1, 'info', 'Scan Complete. Scanned 2203 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6512 records in 59 seconds.'),
(3380, 1490710578.613132, 1, 'info', '-------------------'),
(3379, 1490710578.591519, 10, 'info', 'SUM_ENDOK:Scanning for admin users not created through WordPress'),
(3378, 1490710578.590558, 10, 'info', 'SUM_START:Scanning for admin users not created through WordPress'),
(3377, 1490710578.588642, 10, 'info', 'SUM_ENDBAD:Scanning for old themes, plugins and core files'),
(3587, 1490853723.801650, 10, 'info', 'SUM_START:Scanning your site for the HeartBleed vulnerability'),
(2821, 1490292416.911175, 2, 'info', 'Analyzed 1300 files containing 17.23 MB of data so far'),
(2493, 1490043077.139766, 2, 'info', 'Found 6 plugins'),
(2494, 1490043077.140654, 2, 'info', 'Getting theme list from WordPress'),
(2495, 1490043077.141496, 2, 'info', 'Found 1 themes'),
(3588, 1490853730.745690, 10, 'info', 'SUM_ENDOK:Scanning your site for the HeartBleed vulnerability'),
(3589, 1490853730.839952, 10, 'info', 'SUM_START:Checking for the most secure way to get IPs'),
(3590, 1490853732.947941, 10, 'info', 'SUM_ENDOK:Checking for the most secure way to get IPs'),
(3591, 1490853732.949195, 1, 'info', 'Contacting Wordfence to initiate scan'),
(3592, 1490853733.718390, 2, 'info', 'Getting plugin list from WordPress'),
(3593, 1490853733.802795, 2, 'info', 'Found 6 plugins'),
(3594, 1490853733.804014, 2, 'info', 'Getting theme list from WordPress'),
(3595, 1490853733.806239, 2, 'info', 'Found 1 themes'),
(2128, 1489784241.315804, 2, 'info', 'Analyzed 1500 files containing 20.79 MB of data so far'),
(2820, 1490292416.564457, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far');
INSERT INTO `vi_wfStatus` (`id`, `ctime`, `level`, `type`, `msg`) VALUES
(2792, 1490292401.496232, 2, 'info', 'Found 6 plugins'),
(2793, 1490292401.497325, 2, 'info', 'Getting theme list from WordPress'),
(2794, 1490292401.498210, 2, 'info', 'Found 1 themes'),
(3120, 1490628957.066944, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(2556, 1490043121.907118, 2, 'info', 'Done examining URLs'),
(2555, 1490043121.906761, 2, 'info', 'Done host key check.'),
(2554, 1490043121.550840, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(2553, 1490043121.550603, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(3600, 1490853735.524793, 10, 'info', 'SUM_START:Comparing core WordPress files against originals in repository'),
(2480, 1489949860.806559, 2, 'info', 'Wordfence used 20.81MB of memory for scan. Server peak memory usage was: 56.38MB'),
(2478, 1489949860.337470, 1, 'info', 'Scan Complete. Scanned 2137 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6326 records in 1 minute 4 seconds.'),
(2477, 1489949860.337320, 1, 'info', '-------------------'),
(3601, 1490853735.524979, 10, 'info', 'SUM_DISABLED:Skipping theme scan'),
(3602, 1490853735.525092, 10, 'info', 'SUM_DISABLED:Skipping plugin scan'),
(3603, 1490853735.525832, 10, 'info', 'SUM_START:Scanning for known malware files'),
(3604, 1490853735.526597, 10, 'info', 'SUM_START:Scanning for unknown files in wp-admin and wp-includes'),
(3605, 1490853736.055945, 2, 'info', '500 files indexed'),
(3606, 1490853736.833616, 2, 'info', '1000 files indexed'),
(3607, 1490853737.503808, 2, 'info', '1500 files indexed'),
(2838, 1490292429.593228, 2, 'info', 'Starting scan of file contents'),
(2129, 1489784241.694236, 2, 'info', 'Analyzed 1600 files containing 22.7 MB of data so far'),
(3376, 1490710577.389785, 10, 'info', 'SUM_START:Scanning for old themes, plugins and core files'),
(3375, 1490710577.386972, 10, 'info', 'SUM_ENDOK:Scanning to check available disk space'),
(2906, 1490346679.481484, 2, 'info', '500 files indexed'),
(2907, 1490346680.128182, 2, 'info', '1000 files indexed'),
(2908, 1490346680.745688, 2, 'info', '1500 files indexed'),
(2909, 1490346681.191809, 2, 'info', '2000 files indexed'),
(2910, 1490346681.335760, 2, 'info', '2203 files indexed'),
(2911, 1490346684.719803, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(2471, 1489949859.104805, 2, 'info', 'The disk has 12624.27 MB space available'),
(2470, 1489949859.104687, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 12.3284GB'),
(2839, 1490292430.600836, 2, 'info', 'Scanned contents of 17 additional files at 16.90 per second'),
(2840, 1490292431.619518, 2, 'info', 'Scanned contents of 25 additional files at 12.35 per second'),
(2467, 1489949859.102066, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(2466, 1489949859.060747, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(2465, 1489949858.877206, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(2841, 1490292434.699767, 2, 'info', 'Scanned contents of 30 additional files at 5.88 per second'),
(2462, 1489949858.871266, 2, 'info', 'Starting password strength check on 1 users.'),
(2842, 1490292435.801366, 2, 'info', 'Scanned contents of 43 additional files at 6.93 per second'),
(2843, 1490292440.088178, 2, 'info', 'Scanned contents of 56 additional files at 5.34 per second'),
(2844, 1490292441.893729, 2, 'info', 'Scanned contents of 57 additional files at 4.63 per second'),
(2845, 1490292442.571893, 2, 'info', 'Scanned contents of 59 additional files at 4.55 per second'),
(3334, 1490710569.005424, 2, 'info', 'Analyzed 2100 files containing 34.21 MB of data so far'),
(2846, 1490292442.572093, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(2680, 1490230570.528165, 1, 'info', 'Scheduled Wordfence scan starting at Thursday 23rd of March 2017 12:56:10 AM'),
(3016, 1490508459.656136, 2, 'info', '2000 files indexed'),
(3014, 1490508458.876635, 2, 'info', '1000 files indexed'),
(3015, 1490508459.388208, 2, 'info', '1500 files indexed'),
(3316, 1490710546.140053, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(3013, 1490508458.584953, 2, 'info', '500 files indexed'),
(3319, 1490710549.019046, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(3317, 1490710546.769096, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(3318, 1490710548.091428, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(2457, 1489949858.840397, 2, 'info', 'Done examining URLs'),
(2456, 1489949858.840101, 2, 'info', 'Done host key check.'),
(3335, 1490710569.217668, 2, 'info', 'Analyzed 2200 files containing 36.1 MB of data so far'),
(2455, 1489949858.455112, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(3336, 1490710569.232145, 2, 'info', 'Analyzed 2203 files containing 36.14 MB of data.'),
(2989, 1490508437.625027, 1, 'info', 'Scheduled Wordfence scan starting at Sunday 26th of March 2017 06:07:17 AM'),
(2738, 1490230619.252165, 2, 'info', 'Starting scan of file contents'),
(2715, 1490230603.951683, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(2716, 1490230604.316296, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(2739, 1490230620.263713, 2, 'info', 'Scanned contents of 27 additional files at 26.71 per second'),
(2717, 1490230604.772591, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(2718, 1490230605.147691, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(2719, 1490230605.384182, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(2720, 1490230605.859526, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(2721, 1490230606.100483, 2, 'info', 'Analyzed 1300 files containing 17.23 MB of data so far'),
(2130, 1489784242.003581, 2, 'info', 'Analyzed 1700 files containing 23.82 MB of data so far'),
(2131, 1489784242.658082, 2, 'info', 'Analyzed 1800 files containing 24.61 MB of data so far'),
(2132, 1489784243.530638, 2, 'info', 'Analyzed 1900 files containing 26.11 MB of data so far'),
(2133, 1489784244.251551, 2, 'info', 'Analyzed 2000 files containing 27.62 MB of data so far'),
(2722, 1490230606.499599, 2, 'info', 'Analyzed 1400 files containing 18.72 MB of data so far'),
(2723, 1490230607.283863, 2, 'info', 'Analyzed 1500 files containing 20.47 MB of data so far'),
(2724, 1490230607.659956, 2, 'info', 'Analyzed 1600 files containing 22.38 MB of data so far'),
(2134, 1489784244.550387, 2, 'info', 'Analyzed 2100 files containing 30.32 MB of data so far'),
(3421, 1490740754.523749, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(2740, 1490230621.535456, 2, 'info', 'Scanned contents of 30 additional files at 13.14 per second'),
(2741, 1490230622.650995, 2, 'info', 'Scanned contents of 46 additional files at 13.54 per second'),
(2742, 1490230624.139129, 2, 'info', 'Scanned contents of 56 additional files at 11.46 per second'),
(2725, 1490230610.048499, 2, 'info', 'Analyzed 1700 files containing 23.5 MB of data so far'),
(2381, 1489949792.197840, 1, 'info', 'Scheduled Wordfence scan starting at Sunday 19th of March 2017 06:56:32 PM'),
(2726, 1490230611.851101, 2, 'info', 'Analyzed 1800 files containing 24.29 MB of data so far'),
(2380, 1489906706.762129, 2, 'info', 'Wordfence used 20.83MB of memory for scan. Server peak memory usage was: 56.40MB'),
(2378, 1489906706.276508, 1, 'info', 'Scan Complete. Scanned 2137 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6272 records in 52 seconds.'),
(2377, 1489906706.276335, 1, 'info', '-------------------'),
(2727, 1490230614.684102, 2, 'info', 'Analyzed 1900 files containing 25.79 MB of data so far'),
(2454, 1489949858.454833, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(3320, 1490710549.617496, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(3321, 1490710549.906661, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(3322, 1490710550.279568, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(2690, 1490230592.628211, 1, 'info', 'Contacting Wordfence to initiate scan'),
(2691, 1490230593.215870, 2, 'info', 'Getting plugin list from WordPress'),
(2692, 1490230593.218479, 2, 'info', 'Found 6 plugins'),
(2693, 1490230593.219808, 2, 'info', 'Getting theme list from WordPress'),
(2448, 1489949858.359894, 2, 'info', 'Done file contents scan'),
(2447, 1489949858.358041, 2, 'info', 'Done host key check.'),
(2446, 1489949857.870856, 2, 'info', 'Checking 28 host keys against Wordfence scanning servers.'),
(2445, 1489949857.870493, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(2444, 1489949857.870311, 2, 'info', 'Scanned contents of 59 additional files at 6.26 per second'),
(2234, 1489799435.758356, 2, 'info', 'Analyzed 2137 files containing 30.83 MB of data.'),
(2233, 1489799435.619214, 2, 'info', 'Analyzed 2100 files containing 30.32 MB of data so far'),
(2232, 1489799434.596449, 2, 'info', 'Analyzed 2000 files containing 27.62 MB of data so far'),
(2231, 1489799433.370872, 2, 'info', 'Analyzed 1900 files containing 26.11 MB of data so far'),
(2443, 1489949857.176736, 2, 'info', 'Scanned contents of 56 additional files at 6.41 per second'),
(2442, 1489949853.692122, 2, 'info', 'Scanned contents of 54 additional files at 10.29 per second'),
(3119, 1490628956.004969, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(3118, 1490628955.664779, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(3116, 1490628953.421839, 2, 'info', '2203 files indexed'),
(3117, 1490628955.179545, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(3115, 1490628953.206273, 2, 'info', '2000 files indexed'),
(2230, 1489799431.224494, 2, 'info', 'Analyzed 1800 files containing 24.61 MB of data so far'),
(2229, 1489799430.545666, 2, 'info', 'Analyzed 1700 files containing 23.82 MB of data so far'),
(3113, 1490628952.094538, 2, 'info', '1000 files indexed'),
(3114, 1490628952.454011, 2, 'info', '1500 files indexed'),
(2547, 1490043121.431186, 2, 'info', 'Done file contents scan'),
(2546, 1490043121.367438, 2, 'info', 'Done host key check.'),
(2743, 1490230624.843771, 2, 'info', 'Scanned contents of 59 additional files at 10.55 per second'),
(3468, 1490740780.866921, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(3469, 1490740780.895467, 10, 'info', 'SUM_ENDOK:Scanning DNS for unauthorized changes'),
(2545, 1490043121.008343, 2, 'info', 'Checking 28 host keys against Wordfence scanning servers.'),
(2544, 1490043121.008019, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(3470, 1490740780.897563, 10, 'info', 'SUM_START:Scanning to check available disk space'),
(2528, 1490043105.378560, 2, 'info', 'Analyzed 1900 files containing 26.11 MB of data so far'),
(2526, 1490043102.488889, 2, 'info', 'Analyzed 1700 files containing 23.82 MB of data so far'),
(2527, 1490043103.516233, 2, 'info', 'Analyzed 1800 files containing 24.61 MB of data so far'),
(2522, 1490043096.893334, 2, 'info', 'Analyzed 1300 files containing 17.23 MB of data so far'),
(2525, 1490043100.918657, 2, 'info', 'Analyzed 1600 files containing 22.7 MB of data so far'),
(2524, 1490043099.077865, 2, 'info', 'Analyzed 1500 files containing 20.79 MB of data so far'),
(2523, 1490043097.849312, 2, 'info', 'Analyzed 1400 files containing 19.04 MB of data so far'),
(2542, 1490043120.338006, 2, 'info', 'Scanned contents of 56 additional files at 8.84 per second'),
(2543, 1490043121.007849, 2, 'info', 'Scanned contents of 59 additional files at 8.43 per second'),
(2519, 1490043091.473604, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(2520, 1490043091.932503, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(2521, 1490043096.441233, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(3471, 1490740780.897729, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 10.1288GB'),
(3472, 1490740780.897845, 2, 'info', 'The disk has 10371.94 MB space available'),
(3473, 1490740780.897962, 10, 'info', 'SUM_ENDOK:Scanning to check available disk space'),
(3474, 1490740780.899740, 10, 'info', 'SUM_START:Scanning for old themes, plugins and core files'),
(3475, 1490740782.151215, 10, 'info', 'SUM_ENDBAD:Scanning for old themes, plugins and core files'),
(3476, 1490740782.153130, 10, 'info', 'SUM_START:Scanning for admin users not created through WordPress'),
(3477, 1490740782.154113, 10, 'info', 'SUM_ENDOK:Scanning for admin users not created through WordPress'),
(3478, 1490740782.159200, 1, 'info', '-------------------'),
(2517, 1490043090.302520, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(2518, 1490043091.123501, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(2541, 1490043116.324792, 2, 'info', 'Scanned contents of 30 additional files at 12.94 per second'),
(2516, 1490043089.108503, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(2515, 1490043086.957927, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(2514, 1490043086.030490, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(2513, 1490043084.944349, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(2194, 1489799409.566675, 1, 'info', 'Contacting Wordfence to initiate scan'),
(2195, 1489799412.192638, 2, 'info', 'Getting plugin list from WordPress'),
(2196, 1489799413.317687, 2, 'info', 'Found 6 plugins'),
(2197, 1489799413.318758, 2, 'info', 'Getting theme list from WordPress'),
(2198, 1489799413.320911, 2, 'info', 'Found 1 themes'),
(2505, 1490043078.722811, 2, 'info', '500 files indexed'),
(2506, 1490043078.897842, 2, 'info', '1000 files indexed'),
(2507, 1490043079.204491, 2, 'info', '1500 files indexed'),
(2508, 1490043079.329402, 2, 'info', '2000 files indexed'),
(2509, 1490043079.398840, 2, 'info', '2137 files indexed'),
(2510, 1490043080.598292, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(2511, 1490043081.296922, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(2512, 1490043082.868954, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(2540, 1490043115.014224, 2, 'info', 'Scanned contents of 27 additional files at 26.79 per second'),
(3112, 1490628951.249866, 2, 'info', '500 files indexed'),
(2539, 1490043114.005549, 2, 'info', 'Starting scan of file contents'),
(3598, 1490853734.847989, 10, 'info', 'SUM_START:Fetching list of known malware files from Wordfence'),
(2804, 1490292406.110463, 2, 'info', '500 files indexed'),
(2805, 1490292406.728628, 2, 'info', '1000 files indexed'),
(2806, 1490292407.077656, 2, 'info', '1500 files indexed'),
(2807, 1490292407.280664, 2, 'info', '2000 files indexed'),
(2808, 1490292407.300129, 2, 'info', '2137 files indexed'),
(3135, 1490628985.716514, 2, 'info', 'Analyzed 1900 files containing 30.18 MB of data so far'),
(2770, 1490230630.465998, 2, 'info', 'The disk has 11039.13 MB space available'),
(2769, 1490230630.465875, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 10.7804GB'),
(3136, 1490628987.443996, 2, 'info', 'Analyzed 2000 files containing 31.76 MB of data so far'),
(3137, 1490628988.135601, 2, 'info', 'Analyzed 2100 files containing 34.21 MB of data so far'),
(2766, 1490230629.194627, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(2765, 1490230629.139039, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(2764, 1490230628.983450, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(3138, 1490628988.692131, 2, 'info', 'Analyzed 2200 files containing 36.1 MB of data so far'),
(2812, 1490292410.200423, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(3479, 1490740782.159356, 1, 'info', 'Scan Complete. Scanned 2203 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6613 records in 1 minute 5 seconds.'),
(3480, 1490740782.159481, 10, 'info', 'SUM_FINAL:Scan complete. You have 4 new issues to fix. See below.'),
(3481, 1490740782.543686, 2, 'info', 'Wordfence used 24.03MB of memory for scan. Server peak memory usage was: 59.60MB'),
(3482, 1490809038.797410, 1, 'info', 'Scheduled Wordfence scan starting at Wednesday 29th of March 2017 05:37:18 PM'),
(3483, 1490809041.272281, 10, 'info', 'SUM_PREP:Preparing a new scan.'),
(3139, 1490628988.706886, 2, 'info', 'Analyzed 2203 files containing 36.14 MB of data.'),
(2761, 1490230628.975756, 2, 'info', 'Starting password strength check on 1 users.'),
(3596, 1490853733.921631, 10, 'info', 'SUM_START:Fetching core, theme and plugin file signatures from Wordfence'),
(3597, 1490853734.845507, 10, 'info', 'SUM_ENDSUCCESS:Fetching core, theme and plugin file signatures from Wordfence'),
(2980, 1490436842.141071, 1, 'info', 'Scheduled Wordfence scan starting at Saturday 25th of March 2017 10:14:02 AM'),
(3352, 1490710576.781256, 10, 'info', 'SUM_ENDOK:Scanning file contents for infections and vulnerabilities'),
(3346, 1490710575.541160, 2, 'info', 'Scanned contents of 12 additional files at 2.23 per second'),
(3347, 1490710576.415048, 2, 'info', 'Scanned contents of 14 additional files at 2.24 per second'),
(3348, 1490710576.415209, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(3349, 1490710576.415451, 2, 'info', 'Checking 8 host keys against Wordfence scanning servers.'),
(3350, 1490710576.777680, 2, 'info', 'Done host key check.'),
(3351, 1490710576.779073, 2, 'info', 'Done file contents scan'),
(3017, 1490508459.738301, 2, 'info', '2203 files indexed'),
(2679, 1490144176.472672, 2, 'info', 'Wordfence used 23.55MB of memory for scan. Server peak memory usage was: 59.12MB'),
(3018, 1490508460.571369, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(3484, 1490809041.307068, 10, 'info', 'SUM_PAIDONLY:Remote scan of public facing site only available to paid members'),
(3485, 1490809043.308414, 10, 'info', 'SUM_PAIDONLY:Check if your site is being Spamvertized is for paid members only'),
(3486, 1490809045.309643, 10, 'info', 'SUM_PAIDONLY:Checking if your IP is generating spam is for paid members only'),
(3487, 1490809047.310676, 10, 'info', 'SUM_PAIDONLY:Checking if your site is on the Google Safe Browsing list is for paid members only'),
(2677, 1490144176.128615, 1, 'info', 'Scan Complete. Scanned 2137 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6337 records in 56 seconds.'),
(2676, 1490144176.128362, 1, 'info', '-------------------'),
(3488, 1490809049.312403, 10, 'info', 'SUM_START:Scanning your site for the HeartBleed vulnerability'),
(3019, 1490508461.097525, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(3020, 1490508461.701336, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(3489, 1490809056.879265, 10, 'info', 'SUM_ENDOK:Scanning your site for the HeartBleed vulnerability'),
(3490, 1490809056.881505, 10, 'info', 'SUM_START:Checking for the most secure way to get IPs'),
(3491, 1490809056.882562, 10, 'info', 'SUM_ENDOK:Checking for the most secure way to get IPs'),
(3492, 1490809056.884211, 1, 'info', 'Contacting Wordfence to initiate scan'),
(3021, 1490508462.116995, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(3022, 1490508463.007249, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(3493, 1490809057.519696, 2, 'info', 'Getting plugin list from WordPress'),
(3023, 1490508463.646757, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(3024, 1490508464.006913, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(3494, 1490809057.522218, 2, 'info', 'Found 6 plugins'),
(3495, 1490809057.523138, 2, 'info', 'Getting theme list from WordPress'),
(3496, 1490809057.523959, 2, 'info', 'Found 1 themes'),
(3497, 1490809057.791924, 10, 'info', 'SUM_START:Fetching core, theme and plugin file signatures from Wordfence'),
(2813, 1490292412.210953, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(2814, 1490292412.908053, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(2815, 1490292413.479268, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(2816, 1490292414.070518, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(2817, 1490292414.760934, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(2670, 1490144174.910902, 2, 'info', 'The disk has 11924.50 MB space available'),
(2669, 1490144174.910779, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 11.6450GB'),
(2818, 1490292415.144269, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(2819, 1490292415.681732, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(2208, 1489799416.745548, 2, 'info', '500 files indexed'),
(2209, 1489799416.967014, 2, 'info', '1000 files indexed'),
(2210, 1489799417.775163, 2, 'info', '1500 files indexed'),
(2211, 1489799417.978021, 2, 'info', '2000 files indexed'),
(3498, 1490809058.520047, 10, 'info', 'SUM_ENDSUCCESS:Fetching core, theme and plugin file signatures from Wordfence'),
(3499, 1490809058.593586, 10, 'info', 'SUM_START:Fetching list of known malware files from Wordfence'),
(3025, 1490508464.213068, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(3026, 1490508464.727594, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(2666, 1490144174.907806, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(2665, 1490144174.597230, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(2664, 1490144174.482789, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(3027, 1490508465.172258, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(2661, 1490144174.476432, 2, 'info', 'Starting password strength check on 1 users.'),
(3028, 1490508466.070878, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(3029, 1490508466.715080, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(3030, 1490508467.011738, 2, 'info', 'Analyzed 1300 files containing 17.36 MB of data so far'),
(3031, 1490508469.221616, 2, 'info', 'Analyzed 1400 files containing 22.8 MB of data so far'),
(3032, 1490508469.829416, 2, 'info', 'Analyzed 1500 files containing 24.5 MB of data so far'),
(2656, 1490144174.298978, 2, 'info', 'Done examining URLs'),
(2655, 1490144174.298693, 2, 'info', 'Done host key check.'),
(2654, 1490144173.935336, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(2653, 1490144173.935081, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(3033, 1490508470.441992, 2, 'info', 'Analyzed 1600 files containing 26.55 MB of data so far'),
(3034, 1490508470.992414, 2, 'info', 'Analyzed 1700 files containing 28.16 MB of data so far'),
(3035, 1490508471.607806, 2, 'info', 'Analyzed 1800 files containing 29.23 MB of data so far'),
(3036, 1490508472.025617, 2, 'info', 'Analyzed 1900 files containing 30.18 MB of data so far'),
(3037, 1490508472.369702, 2, 'info', 'Analyzed 2000 files containing 31.76 MB of data so far'),
(2218, 1489799421.883463, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(2212, 1489799418.018558, 2, 'info', '2137 files indexed'),
(2213, 1489799419.272059, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(2214, 1489799419.633398, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(2215, 1489799420.045339, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(2216, 1489799420.643709, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(2217, 1489799421.430051, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(3038, 1490508472.867187, 2, 'info', 'Analyzed 2100 files containing 34.21 MB of data so far'),
(2647, 1490144173.888004, 2, 'info', 'Done file contents scan'),
(2646, 1490144173.883720, 2, 'info', 'Done host key check.'),
(2756, 1490230627.396887, 2, 'info', 'Done examining URLs'),
(2755, 1490230627.332097, 2, 'info', 'Done host key check.'),
(2754, 1490230626.964089, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(2753, 1490230626.963849, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(2219, 1489799424.137191, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(2220, 1489799424.354016, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(2221, 1489799424.744159, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(2222, 1489799425.812740, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(3344, 1490710570.154963, 2, 'info', 'Starting scan of file contents'),
(3345, 1490710573.825099, 2, 'info', 'Scanned contents of 11 additional files at 3.00 per second'),
(3341, 1490710569.243945, 10, 'info', 'SUM_ENDOK:Check for publicly accessible configuration files, backup files and logs'),
(3342, 1490710569.245777, 10, 'info', 'SUM_START:Scanning file contents for infections and vulnerabilities'),
(3343, 1490710569.246617, 10, 'info', 'SUM_START:Scanning files for URLs in Google''s Safe Browsing List'),
(2223, 1489799426.620478, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(3340, 1490710569.243325, 10, 'info', 'SUM_START:Check for publicly accessible configuration files, backup files and logs'),
(3337, 1490710569.232316, 10, 'info', 'SUM_ENDOK:Comparing core WordPress files against originals in repository'),
(3338, 1490710569.233466, 10, 'info', 'SUM_ENDOK:Scanning for unknown files in wp-admin and wp-includes'),
(3339, 1490710569.234273, 10, 'info', 'SUM_ENDOK:Scanning for known malware files'),
(2987, 1490436875.971016, 2, 'error', 'Scan terminated with error: There was an error connecting to the the Wordfence scanning servers: cURL error 28: Connection timed out after 10001 milliseconds'),
(2747, 1490230626.951840, 2, 'info', 'Done file contents scan'),
(2224, 1489799427.863792, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(2225, 1489799428.317673, 2, 'info', 'Analyzed 1300 files containing 17.23 MB of data so far'),
(2226, 1489799429.005538, 2, 'info', 'Analyzed 1400 files containing 19.04 MB of data so far'),
(2227, 1489799429.540577, 2, 'info', 'Analyzed 1500 files containing 20.79 MB of data so far'),
(2228, 1489799429.816013, 2, 'info', 'Analyzed 1600 files containing 22.7 MB of data so far'),
(2745, 1490230624.844338, 2, 'info', 'Checking 28 host keys against Wordfence scanning servers.'),
(2746, 1490230625.190481, 2, 'info', 'Done host key check.'),
(2744, 1490230624.843928, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(3575, 1490809108.930451, 10, 'info', 'SUM_START:Scanning for admin users not created through WordPress'),
(3398, 1490740733.514217, 2, 'info', 'Found 1 themes'),
(3399, 1490740734.200952, 10, 'info', 'SUM_START:Fetching core, theme and plugin file signatures from Wordfence'),
(3400, 1490740734.919120, 10, 'info', 'SUM_ENDSUCCESS:Fetching core, theme and plugin file signatures from Wordfence'),
(3401, 1490740734.921913, 10, 'info', 'SUM_START:Fetching list of known malware files from Wordfence'),
(3402, 1490740735.569237, 10, 'info', 'SUM_ENDSUCCESS:Fetching list of known malware files from Wordfence'),
(3172, 1490628997.238978, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(3171, 1490628997.205120, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(3464, 1490740780.655039, 10, 'info', 'SUM_ENDOK:Scanning for weak passwords'),
(2530, 1490043112.775324, 2, 'info', 'Analyzed 2100 files containing 30.32 MB of data so far'),
(2531, 1490043113.027938, 2, 'info', 'Analyzed 2137 files containing 30.83 MB of data.'),
(3463, 1490740780.651256, 2, 'info', 'Starting password strength check on 1 users.'),
(2809, 1490292408.288168, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(2811, 1490292409.270973, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(2810, 1490292408.856567, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(2174, 1489784255.254256, 2, 'info', 'The disk has 11759.15 MB space available'),
(3462, 1490740780.651030, 10, 'info', 'SUM_START:Scanning for weak passwords'),
(3461, 1490740780.649062, 10, 'info', 'SUM_ENDOK:Scanning comments for URLs in Google''s Safe Browsing List'),
(2173, 1489784255.254133, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 11.4835GB'),
(3460, 1490740780.633411, 10, 'info', 'SUM_START:Scanning comments for URLs in Google''s Safe Browsing List'),
(3459, 1490740780.631050, 10, 'info', 'SUM_ENDOK:Scanning posts for URLs in Google''s Safe Browsing List'),
(2714, 1490230603.521926, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(2713, 1490230602.560850, 2, 'info', 'Analyzed 500 files containing 6.27 MB of data so far'),
(2170, 1489784255.251451, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(2168, 1489784255.030756, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(2169, 1489784255.182026, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(2391, 1489949813.343119, 1, 'info', 'Contacting Wordfence to initiate scan'),
(2165, 1489784255.024170, 2, 'info', 'Starting password strength check on 1 users.'),
(2392, 1489949814.323558, 2, 'info', 'Getting plugin list from WordPress'),
(3458, 1490740780.585625, 2, 'info', 'Done examining URLs'),
(3457, 1490740780.585237, 2, 'info', 'Done host key check.'),
(2393, 1489949814.327240, 2, 'info', 'Found 6 plugins'),
(2394, 1489949814.328262, 2, 'info', 'Getting theme list from WordPress'),
(2395, 1489949814.329117, 2, 'info', 'Found 1 themes'),
(2712, 1490230601.137039, 2, 'info', 'Analyzed 400 files containing 5.56 MB of data so far'),
(2160, 1489784255.010170, 2, 'info', 'Done examining URLs'),
(2711, 1490230600.413324, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(2159, 1489784255.009891, 2, 'info', 'Done host key check.'),
(2158, 1489784254.379282, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(2157, 1489784254.379023, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(3456, 1490740780.252488, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(3455, 1490740780.252229, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(3454, 1490740780.244403, 10, 'info', 'SUM_START:Scanning posts for URLs in Google''s Safe Browsing List'),
(3453, 1490740780.242267, 10, 'info', 'SUM_ENDOK:Scanning for publicly accessible quarantined files'),
(3452, 1490740780.242129, 10, 'info', 'SUM_START:Scanning for publicly accessible quarantined files'),
(3451, 1490740780.240266, 10, 'info', 'SUM_ENDOK:Scanning files for URLs in Google''s Safe Browsing List'),
(3450, 1490740780.239272, 10, 'info', 'SUM_ENDOK:Scanning file contents for infections and vulnerabilities'),
(3449, 1490740780.236804, 2, 'info', 'Done file contents scan'),
(3448, 1490740780.234932, 2, 'info', 'Done host key check.'),
(3447, 1490740779.830178, 2, 'info', 'Checking 8 host keys against Wordfence scanning servers.'),
(3446, 1490740779.829864, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(3445, 1490740779.829644, 2, 'info', 'Scanned contents of 14 additional files at 2.96 per second'),
(3444, 1490740779.032892, 2, 'info', 'Scanned contents of 11 additional files at 2.80 per second'),
(3443, 1490740775.102259, 2, 'info', 'Starting scan of file contents'),
(3442, 1490740774.432627, 10, 'info', 'SUM_START:Scanning files for URLs in Google''s Safe Browsing List'),
(3441, 1490740774.431781, 10, 'info', 'SUM_START:Scanning file contents for infections and vulnerabilities'),
(3440, 1490740774.429791, 10, 'info', 'SUM_ENDOK:Check for publicly accessible configuration files, backup files and logs'),
(3439, 1490740774.429117, 10, 'info', 'SUM_START:Check for publicly accessible configuration files, backup files and logs'),
(2710, 1490230599.259251, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(2708, 1490230596.827545, 2, 'info', '2137 files indexed'),
(2709, 1490230597.832384, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(2706, 1490230596.506670, 2, 'info', '1500 files indexed'),
(2707, 1490230596.806965, 2, 'info', '2000 files indexed'),
(2705, 1490230596.211451, 2, 'info', '1000 files indexed'),
(2150, 1489784254.222281, 2, 'info', 'Done host key check.'),
(2151, 1489784254.223747, 2, 'info', 'Done file contents scan'),
(2149, 1489784253.647655, 2, 'info', 'Checking 28 host keys against Wordfence scanning servers.'),
(3438, 1490740774.406177, 10, 'info', 'SUM_ENDOK:Scanning for known malware files'),
(3437, 1490740774.405027, 10, 'info', 'SUM_ENDOK:Scanning for unknown files in wp-admin and wp-includes'),
(3436, 1490740774.403751, 10, 'info', 'SUM_ENDOK:Comparing core WordPress files against originals in repository'),
(3435, 1490740774.403542, 2, 'info', 'Analyzed 2203 files containing 36.14 MB of data.'),
(3434, 1490740774.389042, 2, 'info', 'Analyzed 2200 files containing 36.1 MB of data so far'),
(3433, 1490740773.521296, 2, 'info', 'Analyzed 2100 files containing 34.21 MB of data so far'),
(3432, 1490740772.223327, 2, 'info', 'Analyzed 2000 files containing 31.76 MB of data so far'),
(3431, 1490740770.463018, 2, 'info', 'Analyzed 1900 files containing 30.18 MB of data so far'),
(2148, 1489784253.647260, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(2147, 1489784253.647059, 2, 'info', 'Scanned contents of 59 additional files at 7.26 per second'),
(2146, 1489784252.929279, 2, 'info', 'Scanned contents of 56 additional files at 7.56 per second'),
(2145, 1489784248.757428, 2, 'info', 'Scanned contents of 30 additional files at 9.27 per second'),
(2144, 1489784247.160651, 2, 'info', 'Scanned contents of 19 additional files at 11.59 per second'),
(3430, 1490740768.161939, 2, 'info', 'Analyzed 1800 files containing 29.23 MB of data so far'),
(3429, 1490740767.479646, 2, 'info', 'Analyzed 1700 files containing 28.16 MB of data so far'),
(2143, 1489784245.520406, 2, 'info', 'Starting scan of file contents'),
(2704, 1490230595.779787, 2, 'info', '500 files indexed'),
(3328, 1490710556.156526, 2, 'info', 'Analyzed 1500 files containing 24.5 MB of data so far'),
(3329, 1490710558.552932, 2, 'info', 'Analyzed 1600 files containing 26.55 MB of data so far'),
(2405, 1489949816.453075, 2, 'info', '500 files indexed'),
(2406, 1489949817.418569, 2, 'info', '1000 files indexed'),
(3428, 1490740765.805255, 2, 'info', 'Analyzed 1600 files containing 26.55 MB of data so far'),
(3427, 1490740764.001983, 2, 'info', 'Analyzed 1500 files containing 24.5 MB of data so far'),
(2407, 1489949818.020808, 2, 'info', '1500 files indexed'),
(2408, 1489949818.773213, 2, 'info', '2000 files indexed'),
(2409, 1489949818.792717, 2, 'info', '2137 files indexed'),
(3426, 1490740762.713909, 2, 'info', 'Analyzed 1400 files containing 22.8 MB of data so far'),
(3425, 1490740759.531722, 2, 'info', 'Analyzed 1300 files containing 17.36 MB of data so far'),
(2410, 1489949820.575932, 2, 'info', 'Analyzed 100 files containing 1.31 MB of data so far'),
(2411, 1489949821.712082, 2, 'info', 'Analyzed 200 files containing 2.43 MB of data so far'),
(2412, 1489949823.621686, 2, 'info', 'Analyzed 300 files containing 3.65 MB of data so far'),
(2135, 1489784244.683849, 2, 'info', 'Analyzed 2137 files containing 30.83 MB of data.'),
(3423, 1490740756.076918, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(3424, 1490740758.275203, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(3422, 1490740754.954254, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(3631, 1490853777.782220, 2, 'info', 'Analyzed 2200 files containing 35.69 MB of data so far'),
(3630, 1490853777.121478, 2, 'info', 'Analyzed 2100 files containing 33.8 MB of data so far'),
(3629, 1490853774.909205, 2, 'info', 'Analyzed 2000 files containing 31.35 MB of data so far'),
(3628, 1490853774.102861, 2, 'info', 'Analyzed 1900 files containing 29.77 MB of data so far'),
(3627, 1490853769.649893, 2, 'info', 'Analyzed 1800 files containing 28.82 MB of data so far'),
(3626, 1490853768.308671, 2, 'info', 'Analyzed 1700 files containing 27.75 MB of data so far'),
(2033, 1489710017.647566, 2, 'info', 'Analyzed 1900 files containing 26.1 MB of data so far'),
(2034, 1489710018.377944, 2, 'info', 'Analyzed 2000 files containing 27.61 MB of data so far'),
(2035, 1489710018.767866, 2, 'info', 'Analyzed 2100 files containing 30.31 MB of data so far'),
(2036, 1489710019.023929, 2, 'info', 'Analyzed 2137 files containing 30.81 MB of data.'),
(2293, 1489906673.410966, 2, 'info', 'Getting plugin list from WordPress'),
(2624, 1490144158.129939, 2, 'info', 'Analyzed 1600 files containing 22.7 MB of data so far'),
(2292, 1489906672.011607, 1, 'info', 'Contacting Wordfence to initiate scan'),
(2625, 1490144158.556074, 2, 'info', 'Analyzed 1700 files containing 23.82 MB of data so far'),
(2626, 1490144159.176712, 2, 'info', 'Analyzed 1800 files containing 24.61 MB of data so far'),
(2627, 1490144159.990708, 2, 'info', 'Analyzed 1900 files containing 26.11 MB of data so far'),
(2628, 1490144160.883049, 2, 'info', 'Analyzed 2000 files containing 27.62 MB of data so far'),
(2044, 1489710019.814739, 2, 'info', 'Starting scan of file contents'),
(2045, 1489710021.230577, 2, 'info', 'Scanned contents of 7 additional files at 4.95 per second'),
(2046, 1489710023.935376, 2, 'info', 'Scanned contents of 30 additional files at 7.28 per second'),
(2047, 1489710028.007825, 2, 'info', 'Scanned contents of 56 additional files at 6.84 per second'),
(2048, 1489710028.730899, 2, 'info', 'Scanned contents of 59 additional files at 6.62 per second'),
(2049, 1489710028.731143, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(2050, 1489710028.731527, 2, 'info', 'Checking 28 host keys against Wordfence scanning servers.'),
(2051, 1489710029.223767, 2, 'info', 'Done host key check.'),
(2052, 1489710029.225715, 2, 'info', 'Done file contents scan'),
(3307, 1490710537.408863, 10, 'info', 'SUM_START:Scanning for known malware files'),
(2629, 1490144162.159114, 2, 'info', 'Analyzed 2100 files containing 30.32 MB of data so far'),
(2630, 1490144163.246390, 2, 'info', 'Analyzed 2137 files containing 30.83 MB of data.'),
(3049, 1490508475.369841, 2, 'info', 'Scanned contents of 2 additional files at 1.45 per second'),
(3306, 1490710537.408102, 10, 'info', 'SUM_DISABLED:Skipping plugin scan'),
(3048, 1490508473.975811, 2, 'info', 'Starting scan of file contents'),
(2058, 1489710029.272091, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(2059, 1489710029.272358, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(2060, 1489710029.639767, 2, 'info', 'Done host key check.'),
(2061, 1489710029.640061, 2, 'info', 'Done examining URLs'),
(2282, 1489906653.562024, 1, 'info', 'Scheduled Wordfence scan starting at Sunday 19th of March 2017 06:57:33 AM'),
(2441, 1489949852.691812, 2, 'info', 'Scanned contents of 30 additional files at 7.06 per second'),
(2440, 1489949850.860275, 2, 'info', 'Scanned contents of 21 additional files at 8.69 per second'),
(2066, 1489710029.689065, 2, 'info', 'Starting password strength check on 1 users.'),
(2439, 1489949848.443080, 2, 'info', 'Starting scan of file contents'),
(2069, 1489710029.695591, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(2070, 1489710029.855504, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(2071, 1489710029.904843, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(2694, 1490230593.220789, 2, 'info', 'Found 1 themes'),
(3323, 1490710550.584359, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(2074, 1489710029.907580, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 11.5360GB'),
(2075, 1489710029.907690, 2, 'info', 'The disk has 11812.84 MB space available'),
(3324, 1490710552.016528, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(3325, 1490710552.683448, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(3003, 1490508455.165983, 2, 'info', 'Found 1 themes'),
(3001, 1490508455.147319, 2, 'info', 'Found 6 plugins'),
(3002, 1490508455.148747, 2, 'info', 'Getting theme list from WordPress'),
(3000, 1490508455.057502, 2, 'info', 'Getting plugin list from WordPress'),
(2081, 1489710031.517096, 1, 'info', '-------------------'),
(2082, 1489710031.517261, 1, 'info', 'Scan Complete. Scanned 2137 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6355 records in 1 minute 2 seconds.'),
(2999, 1490508454.429132, 1, 'info', 'Contacting Wordfence to initiate scan'),
(2084, 1489710032.010586, 2, 'info', 'Wordfence used 20.88MB of memory for scan. Server peak memory usage was: 56.44MB'),
(2916, 1490346692.151981, 2, 'info', 'Analyzed 600 files containing 7.12 MB of data so far'),
(2917, 1490346694.391852, 2, 'info', 'Analyzed 700 files containing 9.75 MB of data so far'),
(2918, 1490346695.897787, 2, 'info', 'Analyzed 800 files containing 10.69 MB of data so far'),
(2919, 1490346698.112177, 2, 'info', 'Analyzed 900 files containing 10.93 MB of data so far'),
(2920, 1490346699.046420, 2, 'info', 'Analyzed 1000 files containing 10.97 MB of data so far'),
(2921, 1490346700.382421, 2, 'info', 'Analyzed 1100 files containing 11.35 MB of data so far'),
(2922, 1490346701.750572, 2, 'info', 'Analyzed 1200 files containing 15.44 MB of data so far'),
(2923, 1490346702.425901, 2, 'info', 'Analyzed 1300 files containing 17.36 MB of data so far'),
(2924, 1490346704.184364, 2, 'info', 'Analyzed 1400 files containing 22.8 MB of data so far'),
(2925, 1490346705.164796, 2, 'info', 'Analyzed 1500 files containing 24.5 MB of data so far'),
(2926, 1490346705.863149, 2, 'info', 'Analyzed 1600 files containing 26.55 MB of data so far'),
(2927, 1490346706.343893, 2, 'info', 'Analyzed 1700 files containing 28.16 MB of data so far'),
(2928, 1490346707.934809, 2, 'info', 'Analyzed 1800 files containing 29.23 MB of data so far'),
(2929, 1490346711.010858, 2, 'info', 'Analyzed 1900 files containing 30.18 MB of data so far'),
(2930, 1490346713.038076, 2, 'info', 'Analyzed 2000 files containing 31.76 MB of data so far'),
(2931, 1490346714.760531, 2, 'info', 'Analyzed 2100 files containing 34.21 MB of data so far'),
(2932, 1490346715.321750, 2, 'info', 'Analyzed 2200 files containing 36.1 MB of data so far'),
(2933, 1490346715.333707, 2, 'info', 'Analyzed 2203 files containing 36.14 MB of data.'),
(3374, 1490710577.386787, 2, 'info', 'The disk has 10405.48 MB space available'),
(3373, 1490710577.386603, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 10.1616GB'),
(3372, 1490710577.386349, 10, 'info', 'SUM_START:Scanning to check available disk space'),
(3371, 1490710577.383225, 10, 'info', 'SUM_ENDOK:Scanning DNS for unauthorized changes'),
(3370, 1490710577.382274, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(3369, 1490710577.341748, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(2941, 1490346716.086573, 2, 'info', 'Starting scan of file contents'),
(2942, 1490346719.510041, 2, 'info', 'Scanned contents of 11 additional files at 3.21 per second'),
(2943, 1490346720.211152, 2, 'info', 'Scanned contents of 14 additional files at 3.39 per second'),
(2944, 1490346720.211325, 2, 'info', 'Asking Wordfence to check URL''s against malware list.'),
(2945, 1490346720.211560, 2, 'info', 'Checking 8 host keys against Wordfence scanning servers.'),
(2946, 1490346720.566101, 2, 'info', 'Done host key check.'),
(2947, 1490346720.567565, 2, 'info', 'Done file contents scan'),
(3368, 1490710577.253789, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(3367, 1490710577.253522, 10, 'info', 'SUM_START:Scanning DNS for unauthorized changes'),
(3366, 1490710577.250489, 10, 'info', 'SUM_ENDOK:Scanning for weak passwords'),
(3365, 1490710577.242995, 2, 'info', 'Starting password strength check on 1 users.'),
(3364, 1490710577.242611, 10, 'info', 'SUM_START:Scanning for weak passwords'),
(2953, 1490346720.891825, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(2954, 1490346720.892073, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(2955, 1490346721.248327, 2, 'info', 'Done host key check.'),
(2956, 1490346721.322006, 2, 'info', 'Done examining URLs'),
(3363, 1490710577.239270, 10, 'info', 'SUM_ENDOK:Scanning comments for URLs in Google''s Safe Browsing List'),
(3362, 1490710577.191941, 10, 'info', 'SUM_START:Scanning comments for URLs in Google''s Safe Browsing List'),
(3361, 1490710577.189883, 10, 'info', 'SUM_ENDOK:Scanning posts for URLs in Google''s Safe Browsing List'),
(3360, 1490710577.189258, 2, 'info', 'Done examining URLs'),
(2961, 1490346721.522533, 2, 'info', 'Starting password strength check on 1 users.'),
(3359, 1490710577.188979, 2, 'info', 'Done host key check.'),
(2964, 1490346721.528806, 2, 'info', 'Starting DNS scan for vedantindustries.in'),
(2965, 1490346721.666108, 2, 'info', 'Scanning DNS A record for vedantindustries.in'),
(2966, 1490346721.706092, 2, 'info', 'Scanning DNS MX record for vedantindustries.in'),
(3358, 1490710576.790832, 2, 'info', 'Checking 1 host keys against Wordfence scanning servers.'),
(2969, 1490346721.708618, 2, 'info', 'Total disk space: 48.8112GB -- Free disk space: 11.0009GB'),
(2970, 1490346721.708725, 2, 'info', 'The disk has 11264.91 MB space available'),
(3357, 1490710576.790569, 2, 'info', 'Examining URLs found in posts we scanned for dangerous websites'),
(3356, 1490710576.786178, 10, 'info', 'SUM_START:Scanning posts for URLs in Google''s Safe Browsing List'),
(3355, 1490710576.784395, 10, 'info', 'SUM_ENDOK:Scanning for publicly accessible quarantined files'),
(3354, 1490710576.784255, 10, 'info', 'SUM_START:Scanning for publicly accessible quarantined files'),
(2976, 1490346723.359126, 1, 'info', '-------------------'),
(2977, 1490346723.359290, 1, 'info', 'Scan Complete. Scanned 2203 files, 6 plugins, 1 themes, 6 pages, 0 comments and 6608 records in 1 minute 5 seconds.'),
(3353, 1490710576.782368, 10, 'info', 'SUM_ENDOK:Scanning files for URLs in Google''s Safe Browsing List'),
(2979, 1490346723.758247, 2, 'info', 'Wordfence used 22.51MB of memory for scan. Server peak memory usage was: 58.08MB'),
(3286, 1490710519.419333, 10, 'info', 'SUM_PREP:Preparing a new scan.'),
(3287, 1490710519.540528, 10, 'info', 'SUM_PAIDONLY:Remote scan of public facing site only available to paid members'),
(3288, 1490710521.541426, 10, 'info', 'SUM_PAIDONLY:Check if your site is being Spamvertized is for paid members only'),
(3289, 1490710523.542319, 10, 'info', 'SUM_PAIDONLY:Checking if your IP is generating spam is for paid members only'),
(3290, 1490710525.543437, 10, 'info', 'SUM_PAIDONLY:Checking if your site is on the Google Safe Browsing list is for paid members only'),
(3291, 1490710527.545500, 10, 'info', 'SUM_START:Scanning your site for the HeartBleed vulnerability');

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfThrottleLog`
--

CREATE TABLE IF NOT EXISTS `vi_wfThrottleLog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `startTime` int(10) unsigned NOT NULL,
  `endTime` int(10) unsigned NOT NULL,
  `timesThrottled` int(10) unsigned NOT NULL,
  `lastReason` varchar(255) NOT NULL,
  PRIMARY KEY (`IP`),
  KEY `k2` (`endTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vi_wfVulnScanners`
--

CREATE TABLE IF NOT EXISTS `vi_wfVulnScanners` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) unsigned NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
