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
(10, 1, '2016-12-03 19:38:55', '2016-12-03 19:38:55', '<img class="alignnone size-full wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="120" height="120" />\r\n\r\n<strong>VEDANT INDUSTIRES | COOLING TOWER &amp; FRP FANS</strong>\r\n\r\n<strong>Off. - 1-B/9-B, Industrial AreaÂ No. 1, A.B. Road Dewas 455001 (M.P.)</strong>\r\n\r\n<strong>Res. - 204 MishrilalÂ Nagar A.B. Road Dewas 455001 Â (M.P.)</strong>\r\n\r\n<hr />\r\n<p style="text-align: left;"><strong>Vedantcooling@gmail.com</strong></p>\r\n<strong>M.S. Chouhan 98272-56141</strong>\r\n\r\n<strong><span style="line-height: 1.5;">V.S. </span>Chouhan<span style="line-height: 1.5;"> Â </span>99773-56141</strong>\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id="97" title="Contact form 1"]\r\n\r\n<strong><code>[ank_google_map]</code></strong>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2016-12-15 12:49:16', '2016-12-15 12:49:16', '', 0, 'http://vedantindustries.in/?page_id=10', 0, 'page', '', 0),
(11, 1, '2016-12-03 19:38:55', '2016-12-03 19:38:55', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-03 19:38:55', '2016-12-03 19:38:55', '', 10, 'http://vedantindustries.in/2016/12/03/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-12-03 19:39:24', '2016-12-03 19:39:24', '[contact-form-7 id="99" title="Enquiry Form"]', 'Enquiry', '', 'publish', 'closed', 'closed', '', 'enquiry', '', '', '2016-12-13 11:58:38', '2016-12-13 11:58:38', '', 0, 'http://vedantindustries.in/?page_id=12', 0, 'page', '', 0),
(13, 1, '2016-12-03 19:39:24', '2016-12-03 19:39:24', '<hr />\r\n\r\n&nbsp;', 'Enquiry', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-03 19:39:24', '2016-12-03 19:39:24', '', 12, 'http://vedantindustries.in/2016/12/03/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-12-03 19:39:55', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-03 19:39:55', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=14', 1, 'nav_menu_item', '', 0),
(16, 1, '2016-12-03 19:39:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-03 19:39:55', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2016-12-03 19:39:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-03 19:39:55', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2016-12-03 19:39:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-03 19:39:55', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2016-12-03 19:39:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-03 19:39:55', '0000-00-00 00:00:00', '', 0, 'http://vedantindustries.in/?p=19', 1, 'nav_menu_item', '', 0),
(22, 1, '2016-12-04 15:09:24', '2016-12-04 15:09:24', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-12-11 15:15:15', '2016-12-11 15:15:15', '', 0, 'http://vedantindustries.in/?p=22', 1, 'nav_menu_item', '', 0),
(57, 1, '2016-12-11 14:19:34', '2016-12-11 14:19:34', '<img class="alignnone size-full wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="120" height="120" />\r\n\r\n<strong>VEDANT INDUSTIRES | COOLING TOWER &amp; FRP FANS</strong>\r\n\r\n<strong>Off. - 1-B/9-B, Industrial AreaÂ No. 1, A.B. Road Dewas 455001 (M.P.)</strong>\r\n\r\n<strong>Res. - 204 MishrilalÂ Nagar A.B. Road Dewas 455001 Â (M.P.)</strong>\r\n\r\n<hr />\r\n<p style="text-align: left;"><strong>Vedantcooling@gmail.com</strong></p>\r\n<strong>M.S. Chouhan 98272-56141</strong>\r\n\r\n<strong><span style="line-height: 1.5;">V.S. </span>Chouhan<span style="line-height: 1.5;"> Â </span>99773-56141</strong>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-11 14:19:34', '2016-12-11 14:19:34', '', 10, 'http://vedantindustries.in/2016/12/11/10-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2016-12-11 14:19:17', '2016-12-11 14:19:17', '<img class="alignnone size-full wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="120" height="120" />\r\n\r\nVEDANT INDUSTIRES | COOLING TOWER &amp; FRP FANS\r\n\r\n<strong>Off.</strong> - 1-B/9-B, <strong>Industrial Area</strong>Â No. 1, A.B. Road Dewas 455001 (M.P.)\r\n\r\nRes. - 204 <strong>MishrilalÂ Nagar</strong> A.B. <strong>Road Dewas 455001 Â (M.P.)</strong>\r\n\r\n<hr />\r\n<p style="text-align: left;"><strong>Vedantcooling@gmail.com</strong></p>\r\nM.S. <strong>Chouhan</strong> 98272-56141\r\n\r\n<span style="line-height: 1.5;">V.S. </span><strong style="line-height: 1.5;">Chouhan</strong><span style="line-height: 1.5;"> Â </span><strong style="line-height: 1.5;">99773-56141</strong>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-11 14:19:17', '2016-12-11 14:19:17', '', 10, 'http://vedantindustries.in/2016/12/11/10-revision-v1/', 0, 'revision', '', 0),
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
(49, 1, '2016-12-11 14:17:13', '2016-12-11 14:17:13', '<img class="alignnone size-full wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="120" height="120" />\n\nVEDANT INDUSTIRES | COOLING TOWER &amp; FRP FANS\n\n<strong>Off.</strong> - 1-B/9-B, <strong>Industrial Area</strong>Â No. 1, A.B. Road Dewas 455001 (M.P.)\n\nRes. - 204 <strong>MishrilalÂ Nagar</strong> A.B. <strong>Road Dewas 455001 Â (M.P.)</strong>\n\n<hr />\n<p style="text-align: left;"><strong>Vedantcooling@gmail.com</strong></p>\nM.S. <strong>Chouhan</strong> 98272-56141\n\n<span style="line-height: 1.5;">V.S. </span><strong style="line-height: 1.5;">Chouhan</strong><span style="line-height: 1.5;"> Â </span><strong style="line-height: 1.5;">99773-56141</strong>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2016-12-11 14:17:13', '2016-12-11 14:17:13', '', 10, 'http://vedantindustries.in/2016/12/07/10-autosave-v1/', 0, 'revision', '', 0),
(50, 1, '2016-12-07 11:46:32', '2016-12-07 11:46:32', '<strong>Off.</strong> - <strong></strong>1-<strong></strong>B<strong></strong>/9-B, <strong>Industrial Area</strong>Â No. 1, A.B. Road Dewas 455001 (M.P.)\r\n\r\nRes. - 204 <strong>MishrilalÂ Nagar</strong> A.<strong></strong>B. <strong>Road Dew</strong>\r\n\r\n<hr />\r\n<p style="text-align: left;"><strong>as</strong> 455001 Â (M.P.)</p>\r\n<strong>Vedantcooling@gmail.com</strong>\r\n\r\nM.S. <strong>Chouhan</strong> 98272-56141\r\n\r\n<span style="line-height: 1.5;">V.S. </span><strong style="line-height: 1.5;">Chouhan</strong><span style="line-height: 1.5;"> Â </span><strong style="line-height: 1.5;">99773-56141</strong>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-07 11:46:32', '2016-12-07 11:46:32', '', 10, 'http://vedantindustries.in/2016/12/07/10-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2016-12-11 14:05:07', '2016-12-11 14:05:07', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div class="comp-titl ps2 clr15_sh bo1 m11_sh ">\r\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\r\n</div>\r\n</article></section><img class="wp-image-52 alignleft" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\r\n<p style="text-align: left;"><strong>Incorporated in the year 2003, we, Vedant Industries are among the experienced Manufacturers, Suppliers, Traders and Service providers of an impeccable range of Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service and Insulation Work. We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.</strong></p>\r\n\r\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">\r\n\r\n<strong>Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Backed with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.</strong>\r\n<p style="text-align: left;"><strong>Under the expert leadership of our mentor, Mr. M.S. Chouhan,Â we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</strong></p>\r\n\r\n</div>\r\n</article></section>\r\n<div class=" w6_sh m1 ds m4_mn">\r\n<div class="m2_mn bg4 p1_mn">\r\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2"><strong>FACTSHEET</strong></h2>\r\n<table width="100%" align="CENTER">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=" z2_f c1_f bo1_w_f">\r\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="ps2" valign="TOP">\r\n<div class="j_f col_f he_f f4_f c13_f b_f p60_f bo1_w_f"><strong><span class="fnt36_mn">B</span>asic Information</strong></div>\r\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Year of Establishment</strong></td>\r\n<td width="100%"><strong>2003</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Legal Status of Firm</strong></td>\r\n<td width="100%"><strong>Sole Proprietorship (Individual)</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Nature of Business</strong></td>\r\n<td width="100%"><strong>Manufacturer</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Number of Employees</strong></td>\r\n<td width="100%"><strong>11 to 25 People</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Turnover</strong></td>\r\n<td width="100%"><strong>Rs. 50 Lakh - 1 Crore</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2016-12-12 17:56:33', '2016-12-12 17:56:33', '', 0, 'http://vedantindustries.in/?page_id=51', 0, 'page', '', 0),
(52, 1, '2016-12-11 14:03:57', '2016-12-11 14:03:57', '', '15424415_1262629150465728_846798782_n', '', 'inherit', 'open', 'closed', '', '15424415_1262629150465728_846798782_n', '', '', '2016-12-11 14:03:57', '2016-12-11 14:03:57', '', 51, 'http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2016-12-11 14:05:07', '2016-12-11 14:05:07', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div class="comp-titl ps2 clr15_sh  bo1  m11_sh ">\r\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone  wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\r\n</div>\r\n</article></section><img class="wp-image-52 aligncenter" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\r\n\r\nIncorporated in the year <b>2003,</b> we,<b> Vedant Industries</b> are among the experienced <b>Manufacturers, Suppliers, Traders </b>and<b> Service providers</b> of an impeccable range of <b>Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service </b>and<b> Insulation Work.</b> We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.\r\n\r\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">\r\nBacked with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.\r\n\r\nUnder the expert leadership of our mentor, <b>Mr. M.S. Chouhan,Â </b>we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</div>\r\n</article></section>\r\n<div class=" w6_sh m1 ds m4_mn">\r\n<div class="m2_mn bg4 p1_mn">\r\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2">FACTSHEET</h2>\r\n<table width="100%" align="CENTER">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=" z2_f c1_f bo1_w_f">\r\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="ps2" valign="TOP">\r\n<div class="j_f col_f he_f f4_f c13_f  b_f p60_f bo1_w_f"><span class="fnt36_mn">B</span>asic Information</div>\r\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Year of Establishment</td>\r\n<td width="100%">2003</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Legal Status of Firm</td>\r\n<td width="100%">Sole Proprietorship (Individual)</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Nature of Business</td>\r\n<td width="100%">Manufacturer</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Number of Employees</td>\r\n<td width="100%">11 to 25 People</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Turnover</td>\r\n<td width="100%">Rs. 50 Lakh - 1 Crore</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-12-11 14:05:07', '2016-12-11 14:05:07', '', 51, 'http://vedantindustries.in/2016/12/11/51-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-12-11 14:07:28', '2016-12-11 14:07:28', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\n<div class="comp-titl ps2 clr15_sh bo1 m11_sh ">\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\n</div>\n</article></section><img class="wp-image-52 aligncenter" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\n<p style="text-align: left;">Incorporated in the year <b>2003,</b> we,<b> Vedant Industries</b> are among the experienced <b>Manufacturers, Suppliers, Traders </b>and<b> Service providers</b> of an impeccable range of <b>Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service </b>and<b> Insulation Work.</b> We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.</p>\n\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">Backed with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.\n<p style="text-align: left;">Under the expert leadership of our mentor, <b>Mr. M.S. Chouhan,Â </b>we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</p>\n\n</div>\n</article></section>\n<div class=" w6_sh m1 ds m4_mn">\n<div class="m2_mn bg4 p1_mn">\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2">FACTSHEET</h2>\n<table width="100%" align="CENTER">\n<tbody>\n<tr>\n<td>\n<div class=" z2_f c1_f bo1_w_f">\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\n<tbody>\n<tr>\n<td class="ps2" valign="TOP">\n<div class="j_f col_f he_f f4_f c13_f b_f p60_f bo1_w_f"><span class="fnt36_mn">B</span>asic Information</div>\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\n<tbody>\n<tr>\n<td class="bg8_f b_f" width="35%">Year of Establishment</td>\n<td width="100%">2003</td>\n</tr>\n<tr>\n<td class="bg8_f b_f" width="35%">Legal Status of Firm</td>\n<td width="100%">Sole Proprietorship (Individual)</td>\n</tr>\n<tr>\n<td class="bg8_f b_f" width="35%">Nature of Business</td>\n<td width="100%">Manufacturer</td>\n</tr>\n<tr>\n<td class="bg8_f b_f" width="35%">Number of Employees</td>\n<td width="100%">11 to 25 People</td>\n</tr>\n<tr>\n<td class="bg8_f b_f" width="35%">Turnover</td>\n<td width="100%">Rs. 50 Lakh - 1 Crore</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</div></td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '51-autosave-v1', '', '', '2016-12-11 14:07:28', '2016-12-11 14:07:28', '', 51, 'http://vedantindustries.in/2016/12/11/51-autosave-v1/', 0, 'revision', '', 0),
(55, 1, '2016-12-11 14:07:54', '2016-12-11 14:07:54', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div class="comp-titl ps2 clr15_sh bo1 m11_sh ">\r\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\r\n</div>\r\n</article></section><img class="wp-image-52 alignleft" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\r\n<p style="text-align: left;">Incorporated in the year <b>2003,</b> we,<b> Vedant Industries</b> are among the experienced <b>Manufacturers, Suppliers, Traders </b>and<b> Service providers</b> of an impeccable range of <b>Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service </b>and<b> Insulation Work.</b> We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.</p>\r\n\r\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">Backed with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.\r\n<p style="text-align: left;">Under the expert leadership of our mentor, <b>Mr. M.S. Chouhan,Â </b>we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</p>\r\n\r\n</div>\r\n</article></section>\r\n<div class=" w6_sh m1 ds m4_mn">\r\n<div class="m2_mn bg4 p1_mn">\r\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2">FACTSHEET</h2>\r\n<table width="100%" align="CENTER">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=" z2_f c1_f bo1_w_f">\r\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="ps2" valign="TOP">\r\n<div class="j_f col_f he_f f4_f c13_f b_f p60_f bo1_w_f"><span class="fnt36_mn">B</span>asic Information</div>\r\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Year of Establishment</td>\r\n<td width="100%">2003</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Legal Status of Firm</td>\r\n<td width="100%">Sole Proprietorship (Individual)</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Nature of Business</td>\r\n<td width="100%">Manufacturer</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Number of Employees</td>\r\n<td width="100%">11 to 25 People</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Turnover</td>\r\n<td width="100%">Rs. 50 Lakh - 1 Crore</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-12-11 14:07:54', '2016-12-11 14:07:54', '', 51, 'http://vedantindustries.in/2016/12/11/51-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2016-12-11 14:37:25', '2016-12-11 14:37:25', 'Vedant Industries Offering you a complete choice of products which include Cooling Tower such as Natural Draft Cooling Tower, Wooden Cooling Tower, RCC Cooling Tower and FRP Cooling Tower.', 'Cooling Tower', '', 'publish', 'closed', 'closed', '', 'cooling-tower', '', '', '2016-12-12 18:15:46', '2016-12-12 18:15:46', '', 0, 'http://vedantindustries.in/?post_type=product_category&#038;p=59', 0, 'product_category', '', 0),
(60, 1, '2016-12-11 14:37:11', '2016-12-11 14:37:11', '', 'frp-cooling-tower-250x250', '', 'inherit', 'open', 'closed', '', 'frp-cooling-tower-250x250-2', '', '', '2016-12-11 14:37:11', '2016-12-11 14:37:11', '', 59, 'http://vedantindustries.in/wp-content/uploads/2016/12/frp-cooling-tower-250x250-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2016-12-11 14:45:00', '2016-12-11 14:45:00', 'We are manufacturer &amp; Supplier of a wide range of products which include FRP Product such as FRP Fan, Designer FRP Door, FRP Door, FRP Lining, FRP Molded Tank, FRP Sunlight Sheet and many more items.', 'FRP Product', '', 'publish', 'closed', 'closed', '', 'frp-product', '', '', '2016-12-12 18:16:55', '2016-12-12 18:16:55', '', 0, 'http://vedantindustries.in/?post_type=product_category&#038;p=61', 0, 'product_category', '', 0),
(62, 1, '2016-12-11 14:44:39', '2016-12-11 14:44:39', '', 'frp-sunlight-sheet-500x500', '', 'inherit', 'open', 'closed', '', 'frp-sunlight-sheet-500x500', '', '', '2016-12-11 14:44:39', '2016-12-11 14:44:39', '', 61, 'http://vedantindustries.in/wp-content/uploads/2016/12/frp-sunlight-sheet-500x500.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2016-12-11 14:47:25', '2016-12-11 14:47:25', 'Vedant Industries Creating a niche of Cooling Tower Spare Part such as Counter Flow Nozzle, Coupling and Bush, Cooling Tower Part, Fan Cylinder, Gear Box, Coupling Bush and many more items at its best, with utmost quality.', 'Spare Part', '', 'publish', 'closed', 'closed', '', 'cooling-tower-spare-part', '', '', '2016-12-12 18:20:45', '2016-12-12 18:20:45', '', 0, 'http://vedantindustries.in/?post_type=product_category&#038;p=63', 0, 'product_category', '', 0),
(64, 1, '2016-12-11 14:47:00', '2016-12-11 14:47:00', '', 'air-spainer', '', 'inherit', 'open', 'closed', '', 'air-spainer', '', '', '2016-12-11 14:47:00', '2016-12-11 14:47:00', '', 63, 'http://vedantindustries.in/wp-content/uploads/2016/12/air-spainer.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2016-12-11 15:08:29', '2016-12-11 15:08:29', '', 'Category', '', 'publish', 'closed', 'closed', '', 'acf_category', '', '', '2016-12-11 15:08:42', '2016-12-11 15:08:42', '', 0, 'http://vedantindustries.in/?post_type=acf&#038;p=65', 0, 'acf', '', 0),
(68, 1, '2016-12-11 15:11:15', '2016-12-11 15:11:15', '', 'honey-combs-pvc-fills-250x250', '', 'inherit', 'open', 'closed', '', 'honey-combs-pvc-fills-250x250', '', '', '2016-12-11 15:11:15', '2016-12-11 15:11:15', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/honey-combs-pvc-fills-250x250.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2016-12-11 15:12:31', '2016-12-11 15:12:31', '', 'gear-boxes-a-500x500', '', 'inherit', 'open', 'closed', '', 'gear-boxes-a-500x500', '', '', '2016-12-11 15:12:31', '2016-12-11 15:12:31', '', 0, 'http://vedantindustries.in/wp-content/uploads/2016/12/gear-boxes-a-500x500.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2016-12-11 15:13:27', '2016-12-11 15:13:27', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div class="comp-titl ps2 clr15_sh bo1 m11_sh ">\r\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\r\n</div>\r\n</article></section><img class="wp-image-52 alignleft" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\r\n<p style="text-align: left;">Incorporated in the year <b>2003,</b> we,<b> Vedant Industries</b> are among the experienced <b>Manufacturers, Suppliers, Traders </b>and<b> Service providers</b> of an impeccable range of <b>Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service </b>and<b> Insulation Work.</b> We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.</p>\r\n\r\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">\r\n\r\nBacked with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.\r\n<p style="text-align: left;">Under the expert leadership of our mentor, <b>Mr. M.S. Chouhan,Â </b>we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</p>\r\n\r\n</div>\r\n</article></section>\r\n<div class=" w6_sh m1 ds m4_mn">\r\n<div class="m2_mn bg4 p1_mn">\r\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2">FACTSHEET</h2>\r\n<table width="100%" align="CENTER">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=" z2_f c1_f bo1_w_f">\r\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="ps2" valign="TOP">\r\n<div class="j_f col_f he_f f4_f c13_f b_f p60_f bo1_w_f"><span class="fnt36_mn">B</span>asic Information</div>\r\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Year of Establishment</td>\r\n<td width="100%">2003</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Legal Status of Firm</td>\r\n<td width="100%">Sole Proprietorship (Individual)</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Nature of Business</td>\r\n<td width="100%">Manufacturer</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Number of Employees</td>\r\n<td width="100%">11 to 25 People</td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%">Turnover</td>\r\n<td width="100%">Rs. 50 Lakh - 1 Crore</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-12-11 15:13:27', '2016-12-11 15:13:27', '', 51, 'http://vedantindustries.in/2016/12/11/51-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2016-12-11 15:15:15', '2016-12-11 15:15:15', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2016-12-11 15:15:15', '2016-12-11 15:15:15', '', 0, 'http://vedantindustries.in/?p=72', 2, 'nav_menu_item', '', 0),
(73, 1, '2016-12-11 15:19:56', '2016-12-11 15:19:56', '', 'All Products', '', 'publish', 'closed', 'closed', '', 'all-products', '', '', '2016-12-11 15:19:56', '2016-12-11 15:19:56', '', 0, 'http://vedantindustries.in/?page_id=73', 0, 'page', '', 0),
(74, 1, '2016-12-11 15:19:56', '2016-12-11 15:19:56', '', 'All Products', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2016-12-11 15:19:56', '2016-12-11 15:19:56', '', 73, 'http://vedantindustries.in/2016/12/11/73-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2016-12-12 17:52:42', '2016-12-12 17:52:42', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div class="comp-titl ps2 clr15_sh bo1 m11_sh ">\r\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\r\n</div>\r\n</article></section><img class="wp-image-52 alignleft" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\r\n<p style="text-align: left;"><strong>Incorporated in the year 2003, we, Vedant Industries are among the experienced Manufacturers, Suppliers, Traders and Service providers of an impeccable range of Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service and Insulation Work. We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.</strong></p>\r\n\r\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">\r\n\r\n<strong>Backed with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.</strong>\r\n<p style="text-align: left;"><strong>Under the expert leadership of our mentor, Mr. M.S. Chouhan,Â we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</strong></p>\r\n\r\n</div>\r\n</article></section>\r\n<div class=" w6_sh m1 ds m4_mn">\r\n<div class="m2_mn bg4 p1_mn">\r\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2"><strong>FACTSHEET</strong></h2>\r\n<table width="100%" align="CENTER">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=" z2_f c1_f bo1_w_f">\r\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="ps2" valign="TOP">\r\n<div class="j_f col_f he_f f4_f c13_f b_f p60_f bo1_w_f"><strong><span class="fnt36_mn">B</span>asic Information</strong></div>\r\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Year of Establishment</strong></td>\r\n<td width="100%"><strong>2003</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Legal Status of Firm</strong></td>\r\n<td width="100%"><strong>Sole Proprietorship (Individual)</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Nature of Business</strong></td>\r\n<td width="100%"><strong>Manufacturer</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Number of Employees</strong></td>\r\n<td width="100%"><strong>11 to 25 People</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Turnover</strong></td>\r\n<td width="100%"><strong>Rs. 50 Lakh - 1 Crore</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-12-12 17:52:42', '2016-12-12 17:52:42', '', 51, 'http://vedantindustries.in/2016/12/12/51-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `vi_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(77, 1, '2016-12-12 17:56:33', '2016-12-12 17:56:33', '<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div class="comp-titl ps2 clr15_sh bo1 m11_sh ">\r\n<h1 class="txt1 bo1 fnt38_mn" style="text-align: center;"><img class="alignnone wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="57" height="57" />Vedant Industries | Cooling Tower &amp; FRP FANS</h1>\r\n</div>\r\n</article></section><img class="wp-image-52 alignleft" src="http://vedantindustries.in/wp-content/uploads/2016/12/15424415_1262629150465728_846798782_n.jpg" alt="15424415_1262629150465728_846798782_n" width="218" height="214" />\r\n<p style="text-align: left;"><strong>Incorporated in the year 2003, we, Vedant Industries are among the experienced Manufacturers, Suppliers, Traders and Service providers of an impeccable range of Cooling Tower, Cooling Tower Spare Part, Acrylic Sheet, FRP Product, Epoxy Painting Service, Sandblasting Service and Insulation Work. We accurately manufacture these products in accordance with quality guidelines set by the industry. Our trained professionals fabricate these products by using supreme quality raw materials with the help of sophisticated technology. Provided products are widely acknowledged for precise dimensions, power efficient, robustness, simple installation, longer working life, easy maintenance, optimum functionality and excellent performance. Furthermore, we make available these products in different technical specifications, which efficiently cater the precise requirements of varied industrial sectors.</strong></p>\r\n\r\n<section class="w13_mn m1 ds2"><article class="m1_mn bo1">\r\n<div id="category_desc" class="fnt24_mn ta lnh_mn prd1_mn readmore_visible">\r\n\r\n<strong>Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Â  Backed with an upgraded and advanced infrastructure facility, we have been able to develop our whole product range proficiently in bulk. Our infrastructure is categorized into different units such as procuring, designing, manufacturing, quality testing, warehousing &amp; packaging and many more. We have recruited a squad of experienced and dexterous professionals, who control the complete business procedure in an organized manner. They hold enormous experience in their precise domains and make a dedicated effort in close harmonization with each other to accomplish set managerial targets. In addition to this, we ensure to bring forth for our customers optimum quality products. Accurately performed under the supervision of our quality controllers, the quality checks conducted on the offered products to ensure the delivery of flawless and perfect range to our valuable clients. In order to manufacture these products, we procure quality approved raw material from the trusted and official vendors of the industry. Post procurement, the raw material is passed through stringent quality testing process, before being sent to the production unit.</strong>\r\n<p style="text-align: left;"><strong>Under the expert leadership of our mentor, Mr. M.S. Chouhan,Â we have managed to achieve a reputable position in the industry. It is his domain knowledge and years of understanding that have enabled us to attain organizational objectives.</strong></p>\r\n\r\n</div>\r\n</article></section>\r\n<div class=" w6_sh m1 ds m4_mn">\r\n<div class="m2_mn bg4 p1_mn">\r\n<h2 class="comp-titl ps2 fnt36_mn clr15_sh txt1 bo1 m5_mn p2_mn txt2"><strong>FACTSHEET</strong></h2>\r\n<table width="100%" align="CENTER">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=" z2_f c1_f bo1_w_f">\r\n<table class="fac-tab1_f" border="0" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="ps2" valign="TOP">\r\n<div class="j_f col_f he_f f4_f c13_f b_f p60_f bo1_w_f"><strong><span class="fnt36_mn">B</span>asic Information</strong></div>\r\n<table class="b27_f " style="height: 160px;" border="0" width="633" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Year of Establishment</strong></td>\r\n<td width="100%"><strong>2003</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Legal Status of Firm</strong></td>\r\n<td width="100%"><strong>Sole Proprietorship (Individual)</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Nature of Business</strong></td>\r\n<td width="100%"><strong>Manufacturer</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Number of Employees</strong></td>\r\n<td width="100%"><strong>11 to 25 People</strong></td>\r\n</tr>\r\n<tr>\r\n<td class="bg8_f b_f" width="35%"><strong>Turnover</strong></td>\r\n<td width="100%"><strong>Rs. 50 Lakh - 1 Crore</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'About us', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-12-12 17:56:33', '2016-12-12 17:56:33', '', 51, 'http://vedantindustries.in/2016/12/12/51-revision-v1/', 0, 'revision', '', 0),
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
(98, 1, '2016-12-13 11:26:40', '2016-12-13 11:26:40', '<img class="alignnone size-full wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="120" height="120" />\r\n\r\n<strong>VEDANT INDUSTIRES | COOLING TOWER &amp; FRP FANS</strong>\r\n\r\n<strong>Off. - 1-B/9-B, Industrial AreaÂ No. 1, A.B. Road Dewas 455001 (M.P.)</strong>\r\n\r\n<strong>Res. - 204 MishrilalÂ Nagar A.B. Road Dewas 455001 Â (M.P.)</strong>\r\n\r\n<hr />\r\n<p style="text-align: left;"><strong>Vedantcooling@gmail.com</strong></p>\r\n<strong>M.S. Chouhan 98272-56141</strong>\r\n\r\n<strong><span style="line-height: 1.5;">V.S. </span>Chouhan<span style="line-height: 1.5;"> Â </span>99773-56141</strong>\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id="97" title="Contact form 1"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-13 11:26:40', '2016-12-13 11:26:40', '', 10, 'http://vedantindustries.in/2016/12/13/10-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2016-12-13 11:57:45', '2016-12-13 11:57:45', '<label>[text* text-38 id:mobileno placeholder "Enter your mobile no."]</label>\r\n\r\n<label>[textarea* textarea-431 id:service_name placeholder "Enter Product / Service Name"]</label>\r\n\r\n[submit id:enquiry_sub "Submit Enquiry"]\nEnquiry Details\npsharma.developer@gmail.com\nFrom: [text-38]\r\nSubject: Enquiry Details\r\n\r\nMessage Body:\r\n[textarea-431]\r\n\r\n--\r\nThis e-mail was sent from an enquiry form on Vedant Industries (http://vedantindustries.in)\npsharma.developer@gmail.com\nReply-To: psharma.developer@gmail.com\n\n\n\n\nVedant Industries "[your-subject]"\nVedant Industries <wordpress@vedantindustries.in>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Vedant Industries (http://vedantindustries.in)\n[your-email]\nReply-To: psharma.developer@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Enquiry Form', '', 'publish', 'closed', 'closed', '', 'enquiry-form', '', '', '2016-12-13 11:57:45', '2016-12-13 11:57:45', '', 0, 'http://vedantindustries.in/?post_type=wpcf7_contact_form&p=99', 0, 'wpcf7_contact_form', '', 0),
(100, 1, '2016-12-13 11:58:23', '2016-12-13 11:58:23', '[contact-form-7 id="99" title="Enquiry Form"]', 'Enquiry', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2016-12-13 11:58:23', '2016-12-13 11:58:23', '', 12, 'http://vedantindustries.in/2016/12/13/12-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2016-12-14 05:33:59', '2016-12-14 05:33:59', '', 'Product & Services', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-12-14 05:33:59', '2016-12-14 05:33:59', '', 8, 'http://vedantindustries.in/2016/12/14/8-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2016-12-14 05:33:30', '2016-12-14 05:33:30', '<strong>[display-posts]</strong>', 'Product & Services', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-12-14 05:33:30', '2016-12-14 05:33:30', '', 8, 'http://vedantindustries.in/2016/12/14/8-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2016-12-14 05:30:30', '2016-12-14 05:30:30', '<strong>[display-posts category="product_category" posts_per_page="-1" order="ASC" orderby="title"]</strong>', 'Product & Services', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-12-14 05:30:30', '2016-12-14 05:30:30', '', 8, 'http://vedantindustries.in/2016/12/14/8-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2016-12-14 05:33:07', '2016-12-14 05:33:07', '<strong>[display-posts type="product_category" posts_per_page="-1" order="ASC" orderby="title"]</strong>', 'Product & Services', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-12-14 05:33:07', '2016-12-14 05:33:07', '', 8, 'http://vedantindustries.in/2016/12/14/8-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2016-12-15 12:49:16', '2016-12-15 12:49:16', '<img class="alignnone size-full wp-image-41" src="http://vedantindustries.in/wp-content/uploads/2016/12/vedant-industries-logo-120x120.jpg" alt="vedant-industries-logo-120x120" width="120" height="120" />\r\n\r\n<strong>VEDANT INDUSTIRES | COOLING TOWER &amp; FRP FANS</strong>\r\n\r\n<strong>Off. - 1-B/9-B, Industrial AreaÂ No. 1, A.B. Road Dewas 455001 (M.P.)</strong>\r\n\r\n<strong>Res. - 204 MishrilalÂ Nagar A.B. Road Dewas 455001 Â (M.P.)</strong>\r\n\r\n<hr />\r\n<p style="text-align: left;"><strong>Vedantcooling@gmail.com</strong></p>\r\n<strong>M.S. Chouhan 98272-56141</strong>\r\n\r\n<strong><span style="line-height: 1.5;">V.S. </span>Chouhan<span style="line-height: 1.5;"> Â </span>99773-56141</strong>\r\n\r\n&nbsp;\r\n\r\n[contact-form-7 id="97" title="Contact form 1"]\r\n\r\n<strong><code>[ank_google_map]</code></strong>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2016-12-15 12:49:16', '2016-12-15 12:49:16', '', 10, 'http://vedantindustries.in/2016/12/15/10-revision-v1/', 0, 'revision', '', 0);

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
('\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ùå', 'IN', 1, 17227),
('\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 'IN', 2, 17243),
('\0\0\0\0\0\0\0\0\0\0ÿÿ\\?[T', 'LV', 1, 17247);

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
('\0\0\0\0\0\0\0\0\0\0ÿÿBùBD', '‹üÀ•>b0«oQ1Œö', 'verified', 1490840838, 'crawl-66-249-66-68.googlebot.com'),
('\0\0\0\0\0\0\0\0\0\0ÿÿBùB~', '‹üÀ•>b0«oQ1Œö', 'verified', 1490840841, 'crawl-66-249-66-126.googlebot.com');

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
('‚\0¸ó¼²+OW+', 'index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶%0;àõs¦¹Dm\\¾:['),
('˜ÍÉ[²/9} `:wÙP', 'license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r4È±vÅ%¦üéÎıøá'),
('a§?£ª_×Ë¢¾Ğ6j¨ìX', 'readme.html', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'şŒõ²R˜.Ù¥€3'),
('3Y–#Íî6r\nıYpì$ª³', 'wordfence-waf.php', 0, '*d\n»¶ö''G¹µ­Óü#†', '*d\n»¶ö''G¹µ­Óü#†'),
('çÃÕKÿg›Ğå‡o#ç0', 'wp-activate.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{£‹<,ŸhHûÚÿ”°¡‚´'),
('-‡º)7¦5y°8cÚâWvØ', 'wp-admin/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Åf—ôgì±¾×:'),
('XÿæHå¥¥(»:ÈZí©', 'wp-admin/admin-ajax.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤„TÉæF¥XI¦lû'),
('!1bİ…9 ª*ãÀÿ\\áÆ', 'wp-admin/admin-footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7­é^Ä{ñæ¡(ën™X'),
('ÈKUõg0MU¿/šöÊ‡', 'wp-admin/admin-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯Fêû$ãs:ˆ9ƒm%aF'),
('@èm¾·ëÅOÅİW', 'wp-admin/admin-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't‚9±÷RX¹#Ó’'),
('í]š§@ƒ\n—«>ÄºîYn', 'wp-admin/admin-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>Ì[s´à+¤£íî,h'),
('”ˆ¦,H(bæ_F”O', 'wp-admin/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E|*úhO(ÿ—l­á…'),
('	XÎt\\4vNI5‚ØjËÂ', 'wp-admin/async-upload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2ÆƒDB¿×|<‹ÉSH¿'),
('"ÓÄ6\r+K{×\Z!a', 'wp-admin/comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×ø-oâÌ¦°lómx¥Ü'),
('kMÏü–œ¦šîÌ™Ysp', 'wp-admin/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»Ébá:ü7‰°ÑŠ<lñ÷'),
('¤*O-¡LÏ„ªÂâ\r[Ûu', 'wp-admin/css/about-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿh$7áŒÅ²{H­àc'),
('U¬nÉ“b4lZ,I', 'wp-admin/css/about-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÊÔ88MhÑs)ü}Äço'),
('ÉA7¨''áC#wŠSûs', 'wp-admin/css/about.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Š\\”¡f K‹˜;à;Æ'),
('üJ’§ó!2 ¨Ü\0­€Áü', 'wp-admin/css/about.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ã!)óŠa\nşµÚ¸LÂ´.L'),
('”mÇn9ÆF±6·', 'wp-admin/css/admin-menu-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Mö¯''Lœ„ğ	•Ä°k†h'),
('T´]\\gø¯ö4ÅºuP²;', 'wp-admin/css/admin-menu-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x4÷Vß{Í›aXÊ¾şşµ'),
('Á"êZ0\0Ø¿e…Ô¦pß', 'wp-admin/css/admin-menu.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^I\Z…ƒ›à$HŠPŞ•³'),
('ÿE58¾ùyªäÔWsÖOºÕ', 'wp-admin/css/admin-menu.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Vó''.¾ƒñ=]?†¨*wô'),
('ïÀûP†‰a`Xuî¥¡', 'wp-admin/css/color-picker-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'øuÿ­USÖb¾ê—æ>ÂK¿'),
('ÒrˆWê®3¨™ãá¥¾V', 'wp-admin/css/color-picker-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i–º”ô³Ovfs®‡JBÕ'),
('FóÂï?æ‰C;$ŒéH\r\r', 'wp-admin/css/color-picker.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶\r”ù‚m@.fÂéJ¨'),
('˜¯Ü¡9îu_\\\nÃ9Á''', 'wp-admin/css/color-picker.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œJÜÑş\ZèŸô/K|'),
('¸J|6}ËPß,\rÙ›', 'wp-admin/css/colors/_admin.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½ ”éÜ2	è9Gnº\0ÿX8'),
('ueö,"\n	îh¸g.', 'wp-admin/css/colors/_mixins.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ZR³õ«¦ª„_-·¬Ÿ'),
('©¢=CÑ Ôæ*TXô¹´4', 'wp-admin/css/colors/_variables.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':µ	k\Z	rØL…²„Z'),
('58çdá`S61K>Û®†v', 'wp-admin/css/colors/blue/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ö”‰Òc"Ğ;(Jkq¦_š'),
('D©8hFŞ›BViRî¨', 'wp-admin/css/colors/blue/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×n?™?–#&æ¢3m·]?Ö'),
('çàFüZY¿ÑC8À3E', 'wp-admin/css/colors/blue/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹)ˆØ $¯‰h˜“å'),
('tm6Û—Àqºÿ.£=j', 'wp-admin/css/colors/blue/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ƒR(ô7·l´3oÒÛA©„'),
('Lñ>t™õšNÿˆ†‹İ', 'wp-admin/css/colors/blue/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÙĞ5I×”„g,)Z­YM³'),
('Œ½´†juGCtOÆşØâ', 'wp-admin/css/colors/coffee/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tÚ¶¶&Gî¬V-ŸŞÔ–'),
('²‹q?%Íõrpşø0÷7ïq', 'wp-admin/css/colors/coffee/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'øgızÜÍÍ÷dsS¦ì*'),
('Ï´ 3P`#8^İÖZ', 'wp-admin/css/colors/coffee/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+Ø<C®ÖZŒ]''8c›'),
('íùëeC˜¾„ğDi!×ç', 'wp-admin/css/colors/coffee/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥…Ôë23-²?y#¼MŠ'),
('xIHŞ.”9”YÃàBO', 'wp-admin/css/colors/coffee/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9~8 ²z#C0É^%aÎ'),
('jmE¤ÑAXİuw›>Ü†', 'wp-admin/css/colors/ectoplasm/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	=ÌáXŒ;ŒÄ´Ã—D'),
('DÕ¹ïÚø»åØ$Oaª£éô', 'wp-admin/css/colors/ectoplasm/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Zè¤šôĞi¤÷2Ø[ã'),
('šªô¢ìH\0Û™À®h™CÁú', 'wp-admin/css/colors/ectoplasm/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²2•:ÑgBN™—ÈÿS0®'),
('[ŒÃ#Ü§\Z>]¿<¦', 'wp-admin/css/colors/ectoplasm/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<b º[;Ô‰Ô(Ì’f$'),
('ÌMÏTq&[?ıù>ì¹Šå\n', 'wp-admin/css/colors/ectoplasm/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”qÑ9+Ø"©Ñ+‘•'),
('ßq‚ùœŠ%Å±“ m+', 'wp-admin/css/colors/light/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ö´»Æ3¡›æÏo{'),
('-fâÈ4]Û#"u¸³l', 'wp-admin/css/colors/light/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñ,c!ÂZrÑóie2'),
('vğ{#¿¹lš“b\0}ÓãB', 'wp-admin/css/colors/light/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°¢äÈäü µ#Ì¶'),
('ü9(FŒRj2¹n6]Š', 'wp-admin/css/colors/light/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L)Ÿ¤$\\¡–PÎÂ'),
('ˆŞKS+¡e×A†@“Š', 'wp-admin/css/colors/light/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H›ÖGå³#ïˆÖ<å^o'),
('ú˜”çÙL?@§š.~O¯', 'wp-admin/css/colors/midnight/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•''‘Mîc¨œ÷$sû#¿?'),
('«ô÷á—Ø3…-ƒ«4°', 'wp-admin/css/colors/midnight/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì±h¬ˆt8mg"…‰ß'),
(';Şb­fÈ–0ÿ–¦­x', 'wp-admin/css/colors/midnight/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WP‹ÀcVO\0‡¨'),
('Ûã_\r¬JLè#®@BÌÖ', 'wp-admin/css/colors/midnight/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ìgáh\ZãÏÆÌÑ°¡('),
('Ú†wú=Å¢ÄOú&¹FÊ', 'wp-admin/css/colors/midnight/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&ÜªğÄ|DW¸¼!Eô†4'),
('Ÿ<„ (ÈêÀ‰*A]Oí ', 'wp-admin/css/colors/ocean/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r†ç|Uª€†UA¥ş½õ'),
('±§©Ù{^†WÈíèóC±', 'wp-admin/css/colors/ocean/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æÆÌ¿3$˜s$í(¦•Ş'),
('ÌÃŠ5ffÍ;,G!''öó''-', 'wp-admin/css/colors/ocean/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':Q£•H=wu|#fQA{'),
('*Tñu\r¢íÓÖ ~ªm', 'wp-admin/css/colors/ocean/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'mïcÎ„Í^Gì#i—¬v'),
('-²êÑáÇ¸†%w=õâ', 'wp-admin/css/colors/ocean/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z|[ıŸ¯lÇ|Ù±f%h'),
('j×»ı‚óq.»*;§á2', 'wp-admin/css/colors/sunrise/colors-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÑîFÉ\\îXe.á §k'),
('2jÿL,ÃÙŞW\rº®W$›é', 'wp-admin/css/colors/sunrise/colors-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Âq€R~dö_ÜÆƒ6Š÷'),
('œ…‰Šşy85õÜÃ¦bÖ', 'wp-admin/css/colors/sunrise/colors.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6Ú1ÕË¢áÖ²ÃÉI'),
('Ï-Ó+eÆáÔmñu"¶Ãx', 'wp-admin/css/colors/sunrise/colors.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'áYb¹×XÊ,Y‘cÿ`ÆÕ('),
('ÿµS©CRCşül¸Å', 'wp-admin/css/colors/sunrise/colors.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V’‡\ZŠzî	hİù’=ì'),
('³ÌW2İØDñG‡7‡V', 'wp-admin/css/common-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†Ìõk¿txï²¿é;Ü<'),
('Ÿ…X’‚˜HöovË', 'wp-admin/css/common-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WÑÒ1ØMájø!œ»'),
('ü‰p·Š9½6Ã¨åRæ', 'wp-admin/css/common.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±™+mã`‚¸“ªa#ò—-'),
('\rƒvNõÌ[BáÓ&êØSL', 'wp-admin/css/common.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x<Œ‚%³ü1êç~å\n'),
('óÿV¬“k9Û´îs¿»€Ö¿', 'wp-admin/css/customize-controls-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œ¢ù{—ó>(w)H­\Z'),
('Í©ÿá‡p÷jÖ›`’Èw', 'wp-admin/css/customize-controls-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Íõô»ŸcĞÁîşe•å'),
('Œ?š\n5ü´Hã?âàÁÀàè', 'wp-admin/css/customize-controls.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1ŒIñMŸ’ö+´VAË?µ'),
('ú.Õ¶»ÕñZg{Ú=ñšÌ', 'wp-admin/css/customize-controls.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†2é¯Ñ°™‹C-HÌ'),
('OáûÆÕŞy ®ık	b±', 'wp-admin/css/customize-nav-menus-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿3şFĞ6. ŠœÿœBŠ'),
('HA„¸şf¾,Áõä$F-î', 'wp-admin/css/customize-nav-menus-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\nÊ_ÉW×Ö[}É–}øÒÁ'),
('A­lA~i^˜‚›éuÓÃ˜', 'wp-admin/css/customize-nav-menus.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';\ZT°ïOî½W|&;{V'),
('èŒ\0…]¨pİÒŞ‘ê–	\rG', 'wp-admin/css/customize-nav-menus.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P9*•J•FsU¾DÂ'),
('NñãşHVû®Õõ}¶4G', 'wp-admin/css/customize-widgets-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}Ò§(^`{á¬1SO¨Æñ'),
('º¼4T¸(â\\9''Œä3±)', 'wp-admin/css/customize-widgets-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼`5ëÌ(c™®€Æ93V/ª'),
('ğö´øü•ø6$[£ª®OÀ', 'wp-admin/css/customize-widgets.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Iğ­c©\rlójï_pSa­'),
('—ñb¦ü’Áÿ£º|e~ë', 'wp-admin/css/customize-widgets.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸«øS;ÓQæó++.IÈ'),
('5ê?‰y˜Ä<Ù2Ì', 'wp-admin/css/dashboard-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÓÃüÉøÕ]@ö¿V€à¶'),
('µMŸésá;'',¼ŞÚ-E', 'wp-admin/css/dashboard-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…ÕK³C£b\n\ZòÔ)üT6'),
('²ş£²KqMÃä{ƒ±»', 'wp-admin/css/dashboard.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íä\nJ,¾è¹<÷åRE¨'),
('æ+‚ù«.âøÇeF«È', 'wp-admin/css/dashboard.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ş˜şÏ0=İQ"ŠÆóĞ'),
('8©@)ı±6yg[yåsQR', 'wp-admin/css/deprecated-media-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·„Iå+ZOtˆEÊv'),
('˜pt_ Y‡ÁŒÊ7LãKt', 'wp-admin/css/deprecated-media-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬[À+q5\\­Ê–V'),
('¼ğ›ÂX"¯-{ãÊ$48sx', 'wp-admin/css/deprecated-media.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"Wõ*’×q•Çê–Y4^À'),
('4aäş[Iº}çØÜHÿm)', 'wp-admin/css/deprecated-media.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±Ì€0ëš€o/£¤®ìÚÈ|'),
(']§Ÿ‹âù"}[’YÜRÚ', 'wp-admin/css/edit-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oHïjE9>ııûèøíj%'),
('“BİH*mz—ÍN83üî', 'wp-admin/css/edit-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§+Ó/=!ÃüÚ8Zóè¿õã'),
('\rœ:‰:‰ìõHHù:d', 'wp-admin/css/edit.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	í±³>bß;‰ä.àû’„'),
('ó‡ç,·oÙ!Âz¾j"ó', 'wp-admin/css/edit.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6¾ºIİ×epNh¶d«c'),
('6;I(ÖH²mÉ%¬Ãfº', 'wp-admin/css/farbtastic-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰ÿ»qà@!!µEkÂ'),
('‚OÍXëÁg]<f@˜', 'wp-admin/css/farbtastic-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\ZˆL	czG¯0~l0WİÂ'),
('«Â«¬ä—-j=´u¶N\\q''', 'wp-admin/css/farbtastic.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùã8)¸úí}{¾øCûh2U'),
('KnÒ‹D&sRôWU(‹', 'wp-admin/css/farbtastic.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0™iÁ)½3\\Û¸Š/¢;'),
('OlqCcÛĞïÖÊãÏÌĞÍ', 'wp-admin/css/forms-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_Uö4Jö«DƒŞ@ü¯mF'),
('»Ê{ü]\\Öµ­	ôèdó»Ú', 'wp-admin/css/forms-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~äÄ¥‚$	Ñ2CT''Ó:'),
('õ¥Ûı(ëÅø%#€9yn', 'wp-admin/css/forms.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'púd=q7º¯ét­œ Ei'),
('Å‚j¨Dß‹¿.¥Ë–D¥‰', 'wp-admin/css/forms.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì±üùı;éa¢—¹]¿å'),
('µø§„¡ÉkMÔÕ?ÊuX', 'wp-admin/css/ie-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãyŸ\0}v±(5Ğåï/R'),
('vs%Âz¡ï´úø¾FÓ', 'wp-admin/css/ie-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')b$ë9nğµm¡œóŒ'),
('Eø&¯ÑVN®³‘"N', 'wp-admin/css/ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨kÉ<½Û\Z+Dû0¤of¨­'),
('Ñ§›_ƒ4a!¢F¤ñ', 'wp-admin/css/ie.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':Ñµ6ÒF˜A7!’­'),
('Íwÿ9=Ÿ_"h%’×v', 'wp-admin/css/install-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œŸ(c(8n¥±ùŞšÂ‰È'),
('i²-ÿĞX±8V[~Eû', 'wp-admin/css/install-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—äÕÆ:KÓ¤ğs»¥Ü«Œ¦'),
('<‰9şuşj³®ÿ„!Á$', 'wp-admin/css/install.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µªÈBƒªqƒÃ\n%R~İ1R'),
('ƒâèÊ†×én¥Dã®–Ë(', 'wp-admin/css/install.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éXçM	9\n¼=Ç¸	LŞê'),
('¡Ğ''-ôpÚ-Ïûñf¢', 'wp-admin/css/l10n-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i°R{å³ª,Dş_ÁÃJú'),
('vÃ¢,\\­+Q¹åÕÛñÖ§', 'wp-admin/css/l10n-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9^»°™Üy2=F¿™É'),
('ÉÒ°†“2D´iÜe½', 'wp-admin/css/l10n.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µÄ¸øP)û|„ğqŸr²€­'),
('åHÆÌ4….\\ã:‰ç#àî', 'wp-admin/css/l10n.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'UÖµ}€ Ùİã0Œm2n'),
('¢y%…ËÆÇº~¹ne"V', 'wp-admin/css/list-tables-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tk#Í•Zqõ{ƒ»Bê¨'),
('şFÏ%­³CÂÔ0»£¡,', 'wp-admin/css/list-tables-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p:j …1@t%dÁ—x=ut'),
('|jª•x7Ç(Q}0À''ğ', 'wp-admin/css/list-tables.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'BÑqIÈ¿İ{ë«S	\ZT\n'),
('êkLN\0ôç»x6@', 'wp-admin/css/list-tables.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y >sŞ+şŠ©\n­Ÿı`s'),
('A{&Ï Š¢V>ì²Îs', 'wp-admin/css/login-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”üK;Po®•æ\\ì€`­'),
('h@ZÉ%Rë•Fß;ti\\m', 'wp-admin/css/login-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''0é3Ç¡£B¢¨‹Y		"'),
('¶º¤|jX–ù©ß|êfb', 'wp-admin/css/login.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éŠ¡ñÑOÔı+€ÔV”‹bb'),
('`™&­¸é”¥~K3/d', 'wp-admin/css/login.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y†¡h8¬ƒÒ}WT?'),
('rùÎ\n—Ûb°•#ğ©é', 'wp-admin/css/media-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õû¼€[Tò¤Úœ…+¹À'),
('Ázİ¿ä¯&Xâ™6¤˜Ìs', 'wp-admin/css/media-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ş	òÉg]	şOH¶§æ¡'),
('˜£ıT¹D‰ÀFÒK1Ç', 'wp-admin/css/media.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Hº¼˜ğô9§i(mjpıH'),
('%ĞPb.Îÿº8ºGdÎtÍ', 'wp-admin/css/media.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1»v}Æ`ˆ<¾OJ”'),
('\Zïy‚„8R#O¬yÎÆ', 'wp-admin/css/nav-menus-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c¯dº‰÷häHº¸~àË”Ú'),
('Dƒ¬ š2û”K|&å', 'wp-admin/css/nav-menus-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˜[3Ã¤F‘Àå›;@İ]ö'),
('¹®ƒqhÌn›Jıj¯', 'wp-admin/css/nav-menus.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_Æ«”^(ÃìÒsYüoà'),
('½ZÀWtÇp¥NŒh', 'wp-admin/css/nav-menus.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ò6ùS×2ÿê‡O#"F¤'''),
('Ã.ÖBâ|xÓ³â‰×E±', 'wp-admin/css/press-this-editor-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FM¨H˜vÍ7Ş\rydÁä'),
('&…«¼XÉB`]"?×°²\Z', 'wp-admin/css/press-this-editor-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=¤éyı†àû¦Í£8Ï|'),
('À"j¨Ç§`’ÕÀ¿ç1¸', 'wp-admin/css/press-this-editor.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°AF7!©ãÓmKMÃxf'),
('|1éâQAÎäÏè·ÉEá`1', 'wp-admin/css/press-this-editor.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',ó4L·7ìb%2YjÂ¸_'),
('ùHûMz»@õAé†é', 'wp-admin/css/press-this-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Şé.9İ|Tˆ~šÿ’Šâ'),
('¨ «(T5!ñá€hÂu', 'wp-admin/css/press-this-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÔÄ_ÿf”^ógøŸ\0#'),
('ÜF|\nµMN,8‡İªª''é', 'wp-admin/css/press-this.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g\r³yõ¿­àb^ìF™¼'),
('.Z{=U¼uß©AJ«‡*', 'wp-admin/css/press-this.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®™Fç§ Œ2ñ& '),
('ûPhÜÈ³·¤rVâ', 'wp-admin/css/revisions-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ò»‘¥áu/Ù‹’B2E¸†'),
('@êtÜR>GœHhÄí×¡', 'wp-admin/css/revisions-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ç‰ÓàíÑMq†O×'),
('¢ a"KwTÕbc1S', 'wp-admin/css/revisions.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#ˆz¹BŞa{§®Ú6'),
('\nıGÆ™nåğ\Z@1+U]£', 'wp-admin/css/revisions.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}µ0NÂwÄk¼½{Ÿ£P'),
('÷­0rãˆH"áYK]T·', 'wp-admin/css/site-icon-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú bÉ¹VbPPÉ9'),
('‰‘ŞQã£WsñA7d\n', 'wp-admin/css/site-icon-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Rb\0{ÑõğíqÓ\n'),
('''=!Za„ÍaâÛæjUÑQ', 'wp-admin/css/site-icon.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ó|•U-ÇÍ¥âÊ<Nö¬ '),
('›šn&¢âğn¼!å´¬î', 'wp-admin/css/site-icon.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f¥3b„ÛmÉ‡Gdú…H¤q'),
('¦±–ëg„~Òw\ZĞhh', 'wp-admin/css/themes-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸Eâ€D‡¢Å¤¶I8¦Ä1á'),
('µœ5Atß‚–m0iz®', 'wp-admin/css/themes-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FÇîùpDX„2L_sœ¦:'),
('ÊR±­ÙÑˆé°Ş¿¾0', 'wp-admin/css/themes.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Á«·Á-NT¢\\RNØ'),
('±šÄfSu¹BìÍ¥?^yO', 'wp-admin/css/themes.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hëÆÜ6FkY£`UŸ'),
('‡¢¨3v´U€\Z3˜PÅ^O ', 'wp-admin/css/widgets-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R""‚2Ÿ+¨}õV¹ÚQ'),
('s²E¸ÎqÈp°BíÚÖ', 'wp-admin/css/widgets-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'VÜÈ8Šgî¥£BÜ\0Igä'),
('”!HUN&ï"‹¨ÓŒz÷ô', 'wp-admin/css/widgets.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S¿ ¸ì^ĞsH¹ÿ>y¯U'),
('Eœ}¾~î¥MÊÅ-Û]ˆa', 'wp-admin/css/widgets.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'şëºë)°‘õÙÍkìÌ'),
('°Ö—]NR¼ïS{qv?…', 'wp-admin/css/wp-admin-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tùÜõ«Œ’öfoõ,i˜sÈ'),
('µ†»$(­g‹(Á®ÔPÚç/', 'wp-admin/css/wp-admin-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'İš®¢*ØÁ7"G–Åª´'),
('dè4jà2UÂV·$öP', 'wp-admin/css/wp-admin.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿ä½5\0«ÇÉ!û*['),
('×Çj0–©ŞwşE}Â®RŸ', 'wp-admin/css/wp-admin.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢âöv&ío›ì¥0l\Z«º'),
('¹Œ?ƒ0|Ãöà5uÆ¡ƒ¾', 'wp-admin/custom-background.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#‰Y7—§è`¾¯Ü\Z N'),
('uáqg\Z\0‡8‰hÔ­û\0ğ', 'wp-admin/custom-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éÁC\n˜ãaüF×æğ'),
('ª;?2èáˆSıã§\0ûšp', 'wp-admin/customize.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S$Ï£¯u¦ ,’Í=4DÉ'),
('îp?E^¢@·''ŒãPEÅ', 'wp-admin/edit-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÍøŒ:E>Äİ¸PR)ªTñ'),
('æ\ròb\\ñ™‰ÄÉ²\ZÄë', 'wp-admin/edit-form-advanced.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’åñEĞ¥³gá¤kc€@'),
('G–7\Zæ²I&:íx', 'wp-admin/edit-form-comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1­²ºe¤¢æ1ä"²X€'),
('\n“µ‘b-ÓVø:ˆƒ|mµÿ', 'wp-admin/edit-link-form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i[´<5é…ğ.¤'),
('%ºÒàë8^œV<ÑtË', 'wp-admin/edit-tag-form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ëdİäG:$Ú8­Ye'),
('¾Šh¢İß)UG@Èx–Ìv	', 'wp-admin/edit-tags.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚ë9àbÏCÏ\\_=ş|¼ô'),
('Y…LaØ€µhĞ(', 'wp-admin/edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U74IÌ# Åxñõµ+œé'),
('ÂÀ1Œ’Á|¸}š”âdQ', 'wp-admin/export.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŸïÂß¯¬ÏFDÚ\0KÅÛş'),
('O§ƒµà&Ârè“•ê ', 'wp-admin/freedoms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹ÃµsÏºÜ6qHüD9«×#'),
('æÎWûêÃ"úÚêSk:Í', 'wp-admin/images/align-center-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾²-ór‡5*J7¡If'),
('&*ƒÊÄdÄ†Ö¸	ÖH5', 'wp-admin/images/align-center.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	Ù\Zİ¶µ4yæŒdY1Ùe'),
('öV9´ÔK±áÄgoX±¹7Ó', 'wp-admin/images/align-left-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i…8±O¹ƒšìĞ^—Æc'),
('éªÊm¬Mt¨†ÛW³B', 'wp-admin/images/align-left.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\ıy0Ïúd÷Zòo.hÔ'),
('Ô].õooğÈ¦M-n	‡', 'wp-admin/images/align-none-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'øXC™)[×°›-º4½'),
('MW€	å¦¾:Éä˜ÙŠ', 'wp-admin/images/align-none.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ñ­eqd2 ¡Úu‘¥Âñ\r'),
('vâG‚.Âg·AõÆ#õré', 'wp-admin/images/align-right-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hƒl½>rº]£lWÆÀx'),
('ÃÍtnRŸØ”Àá¯ÎÆ%^', 'wp-admin/images/align-right.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'BØóâ‡Oe#Ól@:P+"v'),
('™[‚Ÿ®QH"pS1Èªëc', 'wp-admin/images/arrows-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '— Qğ†}Îñydb#6„'),
('ÓE#lğÂLşæ_&Üª³Âï', 'wp-admin/images/arrows.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Úv’$ğ>ˆÑßÙ>¿Y'),
('¡DSæâá3.Ä¯y}ó;', 'wp-admin/images/browser-rtl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D"‘ÙÓ Aä\Z®ş¿¿%Ì'),
('˜›¯ĞÂÙêHË06²', 'wp-admin/images/browser.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Á²ùÂµK\\„b•$şF'),
('G€9qóñë=Ê¥[3?aè', 'wp-admin/images/bubble_bg-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R=[ùïØÊ;’çcßÅ'),
('QuoPXØØ\0«¸SÚ', 'wp-admin/images/bubble_bg.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=,³÷º¦(Éå\Z2cVç 8'),
('ÒÕLt593–u^˜ëä)ÙÔ', 'wp-admin/images/comment-grey-bubble-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'TYÓÅ2¶s,\rõmƒ¿'),
('¢ØÀeßbWüA0Ïd', 'wp-admin/images/comment-grey-bubble.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y*''´‰°©tÀ¶²F'),
('ÏI¢Ø\\j¶¬ÑxÌÍËg', 'wp-admin/images/date-button-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')R“,$kù‚„)6C¨»c'),
('ıÍa„í''@Tç‘“‰õÖÊ', 'wp-admin/images/date-button.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—.ªÚI•V•Äö'),
('j%M»ÉòÑp)Z‰Ä', 'wp-admin/images/generic.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ø•ÿ''Š[#98!Ğ'),
('È\Z{gİü?Ñ3gÚ¢\Z½', 'wp-admin/images/icons32-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µ%¤*ùúüøÌgš´ú»'),
('ŸÎ–&¿¢NÂ,õ¥ïŒ6P', 'wp-admin/images/icons32-vs-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡*04ÿG4F—	&Zƒi}"'),
('‡«L UÿÕÀ¹f¯àuâ<', 'wp-admin/images/icons32-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',ÖP*çÓñ{>v¥±Uf'),
('Â1¨ŒWV(2Ÿ˜6²„³”', 'wp-admin/images/icons32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÑÛ¬[çm9…çJ¡4Ì\Zê'),
('LÖÄüı8àï€õ\\¨İ¼+', 'wp-admin/images/imgedit-icons-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',ãî''ƒ£6U¦½ıÃÌát'),
('{õ‡?ìÑÕü\r’Ú\n''', 'wp-admin/images/imgedit-icons.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KÕ\\2ŸÙØ}©G‰i;O'),
('¢4gŒeÊØé>©óÓß', 'wp-admin/images/list-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hÕ»ISÂ2ıÓi‚gš'),
('­âZ\nuÕoK° ¯¶T;e', 'wp-admin/images/list.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>–½*âÀÓ³ÑSñÃ'),
(')úMæÈ^ğ¶Ã»ozğ©', 'wp-admin/images/loading.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-[’¶tÈP¿ğì¯dì'),
('»\0²×%3[$x\0èâ.°(', 'wp-admin/images/marker.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3Ü*O2/Ô3I2œıè'),
('@Ş;5‹XõñV¨”OÆZ', 'wp-admin/images/mask.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'üö“g~¨"æÒJ÷²ä©™'),
('@÷sZö”^™¥Óèqv', 'wp-admin/images/media-button-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#ÛWIå…\\¸Ğ?ÈÉ'),
('1ÜEfQ¤v#)ó\nÙ0EkQ', 'wp-admin/images/media-button-image.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~¢ÉÁWÃÛ@±ÎbÕrÕ³'),
('a\\c,I"5TÍ±#Ì‹ş', 'wp-admin/images/media-button-music.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ïõ]ó2\\Z®/äÙŞ•'),
('NQ"*hzªrÃw|\Zø', 'wp-admin/images/media-button-other.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹Æ´kÇ|Üæ,Oã"œ'),
('şışœ)z]!?»±aÀ', 'wp-admin/images/media-button-video.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«ªÃßØ¿råxñ4QêçĞ'),
('a)TMWá¸Ooˆ¸Q”|Ü', 'wp-admin/images/media-button.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²¶Ãã6@pè’z^yeóÎ'),
('"’ŸNß¬jj)…Ÿ\0Œ•N', 'wp-admin/images/menu-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jGÿõşâù{¿>¯^;$‚Ó'),
('* aØF²Ìğ4Ÿ°uÛvU', 'wp-admin/images/menu-vs-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J¨ZY<÷iÇY®„bø'),
('t]•ÙŸuÃÕuÛüåjû', 'wp-admin/images/menu-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q™€òLğ,_¥;1/ïE¬'),
('@ºXD\nÃ\nRN†tëÍÓ', 'wp-admin/images/menu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á\r9#‹dóY`	Œÿ'),
('ëF ó8Ç+²)ĞØrİPè', 'wp-admin/images/no.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Èk¿dÉ$ùŸÜŸV7ğÀ‹'),
('µåµ+DFÜ¿TZ[H7', 'wp-admin/images/post-formats-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦S¦l“ôH\\©¬¯¯üæ'),
('ã\0¼•×•oxi3%\r+]kg', 'wp-admin/images/post-formats.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÜKÿáÑ\0“äÙ%3¨Öº'),
('n]ûj7<3ISsQß', 'wp-admin/images/post-formats32-vs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·t.E¶­ê5G¥N\Zóşv'),
('ÎÅ“şúúÏ”ò=Ÿº#6', 'wp-admin/images/post-formats32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WY~O’ø{ğ+_L‰kE;'),
('ò¶?{o_±°µ''»nÖ', 'wp-admin/images/resize-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õáe?‰&h.éÅ\nº™'),
('¬3!9ä=è6İ¡', 'wp-admin/images/resize-rtl-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷Éç@ş’T0:ªÜ}'),
('ˆIİ{‹?»†rô]¯ 7', 'wp-admin/images/resize-rtl.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Û’cÉZYÔ6ÚÅ'),
('~?¡J¼IÖb*×ºêeèC', 'wp-admin/images/resize.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?ºDß$ô\rŞXvÈÀ®Äa'),
('\nf†‰Y¡·4&üLğ¦', 'wp-admin/images/se.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÖÈ”BÃ`½Ú.}''7:'),
('X—:8+Ë“2>V]¬Ë8à', 'wp-admin/images/sort-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nQ&Ê] ²0Ç-š‰ƒî'),
('İ[6»5€„+È	án9ä', 'wp-admin/images/sort.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.ŠËî™¿¼¶ÔlHj™]'),
('‡J¼&_#¹ñ3SÔq ­', 'wp-admin/images/spinner-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\q¼´9)hdxR©Éß]l'),
('èfõi¿`¸=@TµçoÙ', 'wp-admin/images/spinner.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°£İã1c~''ªdvÔvHq'),
('PŞ1$¶‰ó\\*åC', 'wp-admin/images/stars-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õêA”§œ#æS²Me.^'),
('éFÎj!Yé{.J=,µ®', 'wp-admin/images/stars.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[¬à™><õk²{Òì(‘'),
('Vrm‘KE§p¼j×ä6—', 'wp-admin/images/w-logo-blue.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ı[N°W¢ğ_pàw®0'),
('Jf¸3?ö“‡_rÛC‘', 'wp-admin/images/w-logo-white.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n¦ÌîJvÛ¢~»y¬\\…'),
('Æ+’ ÍgÔ¾Âq6¥^\0è', 'wp-admin/images/wheel.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E0½ q0m»Æ\ZY%V¹X '),
('‹%„ä\\ùÂMA‚íÒïÿ', 'wp-admin/images/wordpress-logo-white.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½ÙqPûCª†-SPDæ÷'),
('tZQ¥Yz0…ú½ßè·«', 'wp-admin/images/wordpress-logo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Æ°ùy¹æoÃ8ôË8S¥`Š'),
('òc"ml ÿÇ>o', 'wp-admin/images/wordpress-logo.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óNö%“d÷ïÏgÍİÉp'),
('€ÓÚºèu¶¿M—É÷[\r', 'wp-admin/images/wpspin_light-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}ï3ªÙYÍ(Iİò¤m'),
('"w%â_ƒ„K\\ áuË', 'wp-admin/images/wpspin_light.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'İNmÒh§äÁÅ;\Z@’İ'),
('ü»<læa¬€,›bX,³²', 'wp-admin/images/xit-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°rœT½Ä`Ÿ¯?JĞ/Ç'),
('§mÌœız4èLä¯úK', 'wp-admin/images/xit.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å)£Xû¹`1¬ÜğH×Ê'),
('ØM&3\rÜÁ3CMaQ{', 'wp-admin/images/yes.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ä+ø¢7Ü‰—\rqZèQk'),
('”ÉT²¢V¨íôª“\\˜—', 'wp-admin/import.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óîñZšbš…=r~'),
('Ä³Jõ\n`|Æ5,HTõ»', 'wp-admin/includes/admin-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿é»\rm|·Ï>{‚Ÿ¥r'),
('D’Éñ¾Õ)baëkÚÅ{ËË', 'wp-admin/includes/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\{ŒzÍiPÃÆ\ZqÀ'),
('Òª*ãÔHšª¨\n;t²û', 'wp-admin/includes/ajax-actions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùùrN–Ş;¿ '),
('¶°ÎHº*¶á*.ÚS', 'wp-admin/includes/bookmark.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^Yİä\rÅ\\.Îèï÷'),
('"Øw²¾h²ˆ­Æ', 'wp-admin/includes/class-automatic-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óÑäÈW&°òLİ6Äù'),
('nãĞº™Óvınj=Í®', 'wp-admin/includes/class-bulk-plugin-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£Ş_Éqp{•[W$&6Q'),
(' ''ÓÒª_U;0˜/<Â', 'wp-admin/includes/class-bulk-theme-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±ALc.»¶Gº@¤mÁ\Z'),
('W7¤”{(„¦;:P¥š?', 'wp-admin/includes/class-bulk-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*oc|ˆ\n¼=¸³?W¿]YG'),
('ÂjÕçUÃUé‘X\ZĞè/J/', 'wp-admin/includes/class-core-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2#›#+ûK´»ÙøTÚ'),
('×M\0÷ÂÚc°šíø¡¢_dØ', 'wp-admin/includes/class-file-upload-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õ9¶ıl‡Üqj|wØ'),
('©:8ÏIaö¹Ã¸lÕm', 'wp-admin/includes/class-ftp-pure.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'BäbE½àE€>‡ÛR'),
('¥afh=F¯ÕŞTÒ:ş“6¶', 'wp-admin/includes/class-ftp-sockets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l¨9èU+E£îõXª+–'),
('ñøå“rp.u…3zx€', 'wp-admin/includes/class-ftp.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É¾Ñ&_úãsd™rjz.'),
('º­:æÀX©¼@\0{*ÅÖ¯¦', 'wp-admin/includes/class-language-pack-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãé/$o«‘t¨±·3•'),
('gĞ¶~)²~¥sºÊ“ûI', 'wp-admin/includes/class-language-pack-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(ÿÛ<HÑÇ¼Ê^¼‹å'),
('ç"ÕÆ¡üŸ7vs+ö', 'wp-admin/includes/class-pclzip.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'YÇĞ˜–Ï…–‰ÜôWYp„'),
('W&ËÖ´ ª)+ôÚ±¥öå', 'wp-admin/includes/class-plugin-installer-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ø×S7Û”Ò GÂŒÁ’Ö'),
('®h/Í”j—Cê¶\0æn', 'wp-admin/includes/class-plugin-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']ù”''ãÅMØeÒ''Qå'),
('v–)F¼Û~q„‡œ?b', 'wp-admin/includes/class-plugin-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÖÈú°cù…pŠŠ'' $'),
('¿™s¼óƒIqF›Š£µ', 'wp-admin/includes/class-theme-installer-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'IdëİçÊaQvÍæó‰S'),
('H`°\\ñ æœr²§·YêC', 'wp-admin/includes/class-theme-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óöÍ|püãˆ^`L\\€'),
('›3âôaD•w·P¶œŠÆq', 'wp-admin/includes/class-theme-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ôDÍã	¼''á8{¿w_sa'),
('{y"¶ÒµµĞİ©¶{­', 'wp-admin/includes/class-walker-category-checklist.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÅJ_ú“e´qó„¨_5'),
('ŠøQs|âc·LØœVH³)', 'wp-admin/includes/class-walker-nav-menu-checklist.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼«Õõ“´ğËÄn¿'),
('Ø±¥-¤_}Z‘hûì\n±\Z', 'wp-admin/includes/class-walker-nav-menu-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†!‡í½Ü›SãP˜,³'),
('Áœ!çàyÏF¼¿]ÉÆÃ', 'wp-admin/includes/class-wp-ajax-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©Eô2wçåXÑzš×'),
('í§¤ZÅ\ZaYH\0 ›5î~ ', 'wp-admin/includes/class-wp-automatic-updater.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	o=§/B¥#‚*o÷²¦'),
('‹öÂYe¸.ğ0s–‚', 'wp-admin/includes/class-wp-comments-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òä2Zøc|\ZPF\r`ì['),
('à%çf\\+,…æÍ\0\\Y', 'wp-admin/includes/class-wp-filesystem-base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1©\n…?@ém‡=İÔÉ'),
('ÊhFM<@`%q-ãæ', 'wp-admin/includes/class-wp-filesystem-direct.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Tx(ô>êàŒ\0ÛÿéŒı'),
('6Ì ,õø_‹ìqòêùu…', 'wp-admin/includes/class-wp-filesystem-ftpext.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿³4â~A''sÜÛ.Úß§'),
('œÕ‹€PQ‹E|E}7+', 'wp-admin/includes/class-wp-filesystem-ftpsockets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•/F‡ÂÀHîŒ\0!k'),
('Íø‰»j(gù€~jU#·Ö', 'wp-admin/includes/class-wp-filesystem-ssh2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'âÛ``Ès¼Ì ÊD\Zí˜É'),
('v]¿z‹ğÔåšÃ3»tB', 'wp-admin/includes/class-wp-importer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',wõÍä	_êÊÉ×/JS;'),
('‚ìœı®v¿A\nGrÏ3C9`', 'wp-admin/includes/class-wp-internal-pointers.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ã¾I‡Nt˜#S#AÖÎ'),
('_î‘(íC˜ŒÂM6˜9É', 'wp-admin/includes/class-wp-links-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n„xÒ²ıÌßkê¸6_y'),
('¼üUdŸ¥M…’ÙS$€l', 'wp-admin/includes/class-wp-list-table-compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Å˜"â”³4•JO¯C‘•('),
('O	‡ÒS ı•Ç#ÅÿYiòv', 'wp-admin/includes/class-wp-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ü±›©V\\b''‰kdQzt\Z'),
('³Vb(ktˆW"í6(;Æ´ ', 'wp-admin/includes/class-wp-media-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'C87äk—_üú„Œ˜ø8å'),
('®ëş§ªêâsp›Ğäeü', 'wp-admin/includes/class-wp-ms-sites-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èP‘Vî,*•ñ³j'),
('äw¢ÍÓÖV¥Ğë¼!Ü', 'wp-admin/includes/class-wp-ms-themes-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q†{¤\n“Êé~4''ùÂ‘¤'),
('ü«i)33Ü¥ÑÇsÚ*', 'wp-admin/includes/class-wp-ms-users-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\˜°eĞ~neÍ¡yµ\n)'),
('e.PÈ´NB‡Sx[Û&Á¼', 'wp-admin/includes/class-wp-plugin-install-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\nOù¾yŸ¥''íŸO°œs'),
('¸”§œ[®:°—„…q', 'wp-admin/includes/class-wp-plugins-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*x`ñòWóZ{YCjI¢À'),
('c§4L]ôË®·Mc', 'wp-admin/includes/class-wp-post-comments-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\4øZîãêÂeN]%åD'),
('×GÈ©õï¿6”¤³È\0Y', 'wp-admin/includes/class-wp-posts-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^_äµúQı)\Zí“5Ec'),
('àå<§ï±p\Zo@Sşq¨á', 'wp-admin/includes/class-wp-press-this.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' mq…F`X­|tÕÃ@šœ'),
('TMò¢ÆüÊİlòşÕôºß', 'wp-admin/includes/class-wp-screen.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i¯0b2şO$Ñ?Úó'),
('''Mşøwˆñ‘·ƒãÇ\rKj', 'wp-admin/includes/class-wp-site-icon.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õèƒó®œ‡X"Şq!Œ|Ì'),
('L#Ö¬/Û°*Ìø3òÒì\r', 'wp-admin/includes/class-wp-terms-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'OJ»_;Nõ±8+Ê'),
('¬"Ú•K[@‰GÇûáá9‘', 'wp-admin/includes/class-wp-theme-install-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'aR\\z’Áyü4>¢«Â,,'),
('"IFnº§­¸@÷aÂ}’9', 'wp-admin/includes/class-wp-themes-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o¢¬|Mìi*m‘í#/å8'),
('ß=@\\ğJpQóm\\†À6', 'wp-admin/includes/class-wp-upgrader-skin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''‡6\rOŒV^“ÎWô¦'),
('z¬öÕïJXÔw{!\rF«Àº', 'wp-admin/includes/class-wp-upgrader-skins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ë?À¨HZáËŒ¹ëvU'),
('XÂ×ßG°¦“ö•åz„X', 'wp-admin/includes/class-wp-upgrader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"¢ì+cy:½›™“'),
('İò®–x8[!>ñX', 'wp-admin/includes/class-wp-users-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹LfîwŞ¥1%ú~'),
('|Ú&;Œr¢Ls5ùŠ', 'wp-admin/includes/comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ğ—îŒñ¨Oú>™•£ù\rX'),
('3k­¨oW‘5	k[mq', 'wp-admin/includes/continents-cities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D‹q.OB¾°6™\n§f†'),
('¹¹Î<ÿ	Ïf%ÕnŸO³', 'wp-admin/includes/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}Tj\Z*ÉÈªŸÖŒÊK"'),
('\\šÑ‚’?$€Í„8À’¡æ', 'wp-admin/includes/dashboard.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f­Œ!O|†½Ï{˜/5'),
('ò?²âE_Ï)ŠxÚ…$', 'wp-admin/includes/deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÕÛ0ræ>U"}ùÌX'),
('Ÿôx[Çe„ò¶¾>M', 'wp-admin/includes/edit-tag-messages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'í‡*®¼yıæÈdí­÷|'),
('…¹>ÁAäBÇ7åSz!ˆe', 'wp-admin/includes/export.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uƒ{ˆ<–\\‚/d”]'),
('QT«ñò*f×P„å¥.¿', 'wp-admin/includes/file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?Y±$?LRFÊş³èÜb'),
('“«7‹ÖE#¾wÅ§j¯²²', 'wp-admin/includes/image-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '„hòdê¯ÛË"¨Fº=œ'),
('\0Ç|9è×u…eäñá–@ƒµ', 'wp-admin/includes/image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}O³FNÓ=‚ï]¹w"|v'),
('ØA¯h)Iˆ\Z]GrŞöƒE', 'wp-admin/includes/import.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤¦Ÿ¾2•à±„J$g'),
('şcµÔwk(”‘ø43Ã', 'wp-admin/includes/list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N|(Ì¨£F%!×…²óo'),
('úRœŞ=úİ*ÉdòÕn', 'wp-admin/includes/media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}''yí(N‡İg:°\ZFò'),
('\n™qoãqZVyXœ¿9', 'wp-admin/includes/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡l2‡‘qlÎm+“?L“v'),
('HÃ½ÍñiíZ¾U,H»L', 'wp-admin/includes/meta-boxes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/§StrÓö?\rõŒi‚wÇÕ'),
('†1äˆeUüMVı¸^š™', 'wp-admin/includes/misc.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'SÎ£§]/?Ë!Âp»\Z'),
('¯jĞ<M½Dd±—şî4m³', 'wp-admin/includes/ms-admin-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q7À9Íá‡l;€'),
('‰7*ûø"{ìóƒ\nK<', 'wp-admin/includes/ms-deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'º †Íom‰ßšoÂµ«‚M'),
('f éœ°fØŸ|hû¹U’L', 'wp-admin/includes/ms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©M¬ú(Ú[ŒóÚ½¶Âô‘'),
('(¿€—Ñ™—ÉÚ\0H<_', 'wp-admin/includes/nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<&ß¯nçZé,uÈ4ùB¹Ÿ'),
('V×€ãÄ''hı—Äˆ+:ŸÀ', 'wp-admin/includes/network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì!&Vˆé•öãi×ø÷'),
('w®ô`MËá>Ç{Ôƒ´', 'wp-admin/includes/noop.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÕKĞ˜édòÔ°­¦‹Á/´­'),
(';pR9²¶+óqpÕ®', 'wp-admin/includes/options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N1;¯ä:]ä*ZÙà`'),
('R—§|Rx/ãbzn9\0*ÑJ', 'wp-admin/includes/plugin-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ıËıHÃD\08òPÊÊ*Ğ±ñ'),
('q"coëŞ£>«2Rhé]', 'wp-admin/includes/plugin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Îí6ñ–9c¼u''bü'),
('ÃÕÅ5ÛV"ó°$$î_ı', 'wp-admin/includes/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†üÈ(È\0@)Å¿=F°'),
('x–^mİ]Ì²š/õÅL4vU', 'wp-admin/includes/revision.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']€Ákº—)¼ÇµüÏqX‘'),
('Ç«É=Åèm‘/àÁœ^', 'wp-admin/includes/schema.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆ™Ñ4Å97$~Ûu2	'),
('( ïv|Tâ€” Â¥Ô', 'wp-admin/includes/screen.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z\0#ˆl;€!ú'),
('Z¬ÊèÄ %/»Z¿z9ıì', 'wp-admin/includes/taxonomy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6/1·?F,íÈªÿ×0Û['),
('2@Üjåj\0¡kÓ²”¡Ó˜', 'wp-admin/includes/template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÜÉ#<åà¥sF±>†t'),
('“~˜âLÉÎ*Ä,Ä<:¥', 'wp-admin/includes/theme-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õ¤cğ=é£íõ0•-Ëµî'),
('é]÷W/>ï}<8è VFã', 'wp-admin/includes/theme.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'â5?àÚ/ÖFuzöòúÉ™'),
('8R6ÚDH°Šq£-{:`', 'wp-admin/includes/translation-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	ÀZqmN„_ûğ8!û¶î'),
('®ÌäUy/ÿ*%şåı;', 'wp-admin/includes/update-core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rBadV´³ëÈW“Rª'),
('ª]Ú.Ç1\rPXL©', 'wp-admin/includes/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ìÛ/<Qã’îÒ+™2£•'),
('íñ²ƒ=ÃúcäÙ‡œæı', 'wp-admin/includes/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%ˆÙ·øÛñeãu½¿Ú(¸ş'),
('Q¡ ·Ô(;Ø |~R8¿b', 'wp-admin/includes/user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K©ÎÖU«>ÛA-koˆ9'),
('´ğIÇåØû.$U0]''ˆS_', 'wp-admin/includes/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰ËOÙ„{S½0²ĞõÖ''8'),
('’ÑºŸ"ÌP5ìÓ^U\Zi', 'wp-admin/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\rßˆf!¯”KCÉm4Z'),
('B†¡j„)ßĞq¼DŠS', 'wp-admin/install-helper.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dV²`ªìé³1&Û\Zl'),
('–6¶|;¾;8ÅQ¹4™k…ö', 'wp-admin/install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª‚# ÍP\Z&)r2ï˜É'),
('z;j2WDº6²Œ[¡V', 'wp-admin/js/accordion.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ï?ã=Lá/å%NZñ\\ç\n'),
('é^.—jT}ù<ŞŒI¾™', 'wp-admin/js/accordion.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"kÁIüz-VäS\r;h^X'),
('ÿ´Tƒ–¾ŠÃ‡=w›±', 'wp-admin/js/bookmarklet.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•Éï5·jò¬êùÖÅ•C'),
('~79­hÂg$+Ñ=” İ\\0', 'wp-admin/js/bookmarklet.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©Ù[®¶mHsÛä$·YpÃ'),
('œ5ô‡¬ƒÜ\r¿ËkÔÄ', 'wp-admin/js/color-picker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÇöujêÃòÏ}''jöˆ&'),
('çÏHâ¶ÇÍlö±{!D#¯!', 'wp-admin/js/color-picker.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.:*\nÂ™\r<…>aĞ°'),
('Cğ/ù;)ŸªÙ‘î°o', 'wp-admin/js/comment.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÙãÛ\0ÜÆïMLÿE]ËœU'),
('Qı©ƒÏÛÁlêg´-Äó', 'wp-admin/js/comment.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6í\rwÄ¡®‚ÛÓÙ'),
('wıúÚòáÊ:}V¹¼P', 'wp-admin/js/common.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0äDš¥Dád#í|-\ZT#'),
('òÂÌ_fÂ $ÁO<o', 'wp-admin/js/common.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­ÂâTmëHÑVOS’e\r*'),
('dãì­1íìµ“-…;O˜ö', 'wp-admin/js/custom-background.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ôÎÿ`æ0F$TC¼Uî{«©'),
('} yTìZİH„cDJ', 'wp-admin/js/custom-background.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5.ïP3Ö‰‚ê†~?'),
('ÛŞC\n—äU¾„ü', 'wp-admin/js/custom-header.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2³\0X‡¤Ë`oìÀœuf»'),
('¥ünvp¬e„íÆĞîÊ}è', 'wp-admin/js/customize-controls.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V.Šg¦''‰¬àâ\Z±.ı'),
('¿ÿdA#…öÍ*ç‚Å¹o7', 'wp-admin/js/customize-controls.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿtdx=¸îÀ£b—‘D…u'),
(':DéJ$í¥h»†Ç…\rÙ', 'wp-admin/js/customize-nav-menus.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '›oÓ\n-ØŒMàäe_6,³'),
('HGh''ßÁxúR‡¼~\n', 'wp-admin/js/customize-nav-menus.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'goUœ$ÜÈiièkãÏrÀ'),
('­)["J¹H”î|çjkŠû$', 'wp-admin/js/customize-widgets.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÚÓèæRUÚ¡Qï'),
('fMx’íª¹®	é+9•U§', 'wp-admin/js/customize-widgets.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á¹¨¸’Ç…Öç\Z€B'),
('âäÄ¸:ß,p´1¿ÛHr', 'wp-admin/js/dashboard.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æ®áZçËÃœAàÊ¢é>ö5'),
('äßæ¨ŞzpKC²{\\>‚ó', 'wp-admin/js/dashboard.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\rÁ3âíjá‡¥Š3Q€'),
('`%­Ö½áj®±''‡ÒPù´', 'wp-admin/js/edit-comments.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ê¼ÀÅç×¤7¶ú´šh'),
('FĞ''£B¤/í4{JÍ{w', 'wp-admin/js/edit-comments.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢ ²v"[³ºÊÈÂË7v´'),
('åRËä5?’- S£^H—ı', 'wp-admin/js/editor-expand.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÇØâOL ·ÊòßˆÙµJ'),
('IñV/’ğµ6¤sãÃø', 'wp-admin/js/editor-expand.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E\0J&×;sv\ZÜÇï\\y'),
('8=ÀIå¯ôa÷%œƒkÒ~¯', 'wp-admin/js/editor.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}ª$^`''‰©Eßˆ'),
('æâ££ôMåO×ºîïƒU®', 'wp-admin/js/editor.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨×ú èo`°avÇ!0¼M'),
(';RŞyh›ëŸĞRxK\r', 'wp-admin/js/farbtastic.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§:óT 2Aq]†˜şê4’'),
('˜Ä/GÎÓ¶[­ÇœîÙC', 'wp-admin/js/gallery.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xÏ©e¿9eÁŠúmåµ«¶'),
('Û æIÙ_X²Óš¼¨?', 'wp-admin/js/gallery.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N{%é¼3tÏ9Ze&Q¢w'),
('G_bc©.,]&Åè', 'wp-admin/js/image-edit.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£Ë&Ë¢1Õ‹8É}ø'),
('µã-Z¼³€:E¾:', 'wp-admin/js/image-edit.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S(m\0>>êÌ&’ovÀ×ß'),
('›%n©ÍTß’	^ÇgXÎ°', 'wp-admin/js/inline-edit-post.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹ ²Y‘Ú1‡×f3D»å'),
('£1ào%¨ÀqÅAµ€', 'wp-admin/js/inline-edit-post.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vË»`†VXR<ª†ğ\\º'),
('Ê(†q‚4Pè}ı5Ozük', 'wp-admin/js/inline-edit-tax.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ìXÄR8F¼áşá‡#d'),
('ù¢¸pöl4[²ş°e›Ûû', 'wp-admin/js/inline-edit-tax.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'İé}äÂ™_Ä4²\0ğİa['),
('ólF‘®¾Ücë’•ÒLÁ€ø', 'wp-admin/js/iris.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E`dıËüùõÈ™n¬KÉ'),
('iÀ\\´¯›=Xïh$', 'wp-admin/js/language-chooser.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	âPÇV0×tJ»J'),
('¡»«Z€\Zxcy•dó''', 'wp-admin/js/language-chooser.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h"8Jq	t­ÑäF…'),
('í°QR"æÃ@3ªövàS', 'wp-admin/js/link.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†uÜĞ5Ï³tö{ü¿zŒ'),
('Ú|À#éÔ°#{•ÄşŸá', 'wp-admin/js/link.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùÿF”“0“;ŞÂÁ3²%-'),
('nZ/1T:{&^„/n¿ı†', 'wp-admin/js/media-gallery.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ğ€H‡M#N5«®eÜq\n'),
(':ŒŠå%H`!¬ûá\rè€Z', 'wp-admin/js/media-gallery.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2–Ñú Ò’°»¡ñºn'),
('ĞØ^º\\¶XèPvS¬\\÷{', 'wp-admin/js/media-upload.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”´dé´ìkTT†¯y_$m'),
('el÷5s˜˜EïÃºQâ', 'wp-admin/js/media-upload.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ó NÖ=âu&MÏT0Ã	Ü'),
('r‰(nÕ¨ójç—ßb"', 'wp-admin/js/media.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'İMv-€[,^¤XQ\\Åâ'),
('×”y„7mE5ƒ…O_Á', 'wp-admin/js/media.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '›æ:Û¯ZZÏÛıÕUÜw}'),
('©Ü ÍçIt13&', 'wp-admin/js/nav-menu.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õ®x´|P–±\nş°áéQå'),
('İf…ãyü¬Ä§—*!', 'wp-admin/js/nav-menu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\rñøU	ƒî¶óOôkı{'),
('ëå"\rJ\04°¹''i´', 'wp-admin/js/password-strength-meter.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(GWnÄR“«–Ü\00—N&)'),
('¨¬ÌÈ€ç~_qÚI¶ÄS¡', 'wp-admin/js/password-strength-meter.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Zªt¢Jï˜+‚I‡ÁÑæÑ'),
('t6·îO¬\raŒÈ†ëf', 'wp-admin/js/plugin-install.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶Ï+ cS°ãƒãkKÑš0'),
('!ôÿ·íY0-z1àdm>‡', 'wp-admin/js/plugin-install.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F¬‡REâJ\rä‰¶ËL/'),
('V…ï‚™ëŒ$ØïŒŠx', 'wp-admin/js/post.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AÙš\nÊÜö«Ú‹˜"-™'),
('M?,5Ø*îóÉúÜK*Åf', 'wp-admin/js/post.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íå÷èC¾·èÏ–e!q'),
('P''ƒ(µôë?+‹z´“$¡', 'wp-admin/js/postbox.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãßÃ·ïÈÆë‚ßTãFS'),
('O¬¬ú³R¯r¾©£èD•?—', 'wp-admin/js/postbox.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'İş''ôï®s{€­–íŠ	i'),
('@bâHfóQá"$„S', 'wp-admin/js/press-this.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òHó\nŠ}x-N8–,c)'),
('Õ(âÕí¾ÓÙ@—', 'wp-admin/js/press-this.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Îì]GXŠ	††úÉ'),
('½²¼\\†“9ºÑ•F wí', 'wp-admin/js/revisions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N¸$·]>Mb½È\nm*y£w'),
('økæŞº”e<FêÚ4', 'wp-admin/js/revisions.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'šM„4Ÿáôß ìHÈ.û'),
('KúÚWÿ&\0\0Kµ\06‚Gô', 'wp-admin/js/set-post-thumbnail.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+QSWmî@û~ÙåƒQ'),
('TËgslFí¢æÊàõLy', 'wp-admin/js/set-post-thumbnail.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹ÅÊú8¦Õ¯!1z['),
('ñZ/¥¼û{LtåÕ®F$€', 'wp-admin/js/svg-painter.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡Üûé/§|Ä©ˆœ‚zü'),
('ËU<İ?Y,õÏ§Ø»(', 'wp-admin/js/svg-painter.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§šÊV\Z[‡¶*q&¨ä½'),
('G¨|$pÖ +(ª', 'wp-admin/js/tags-box.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"@–¶K3L¹?wâFã_õ'),
('§œŸJ1€«MßF°†<ş', 'wp-admin/js/tags-box.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±¦#9\ZnEâ7È„–<=†Å'),
('}\\¤5æ\r’ğ$Ôl’Wª ÷', 'wp-admin/js/tags-suggest.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹ç@OG#†ÒfğÁ°4'),
('km§|÷‡Kma0í"*ˆk', 'wp-admin/js/tags-suggest.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P#öo©€ANQwé¦²šÿ&'),
('{tÈE~ªÌPÛA´1ø ', 'wp-admin/js/tags.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'LÆBfñ³Z†Æ<Á²Ä/s'),
('¢fkj’ÂN‰Uei4=%Ã', 'wp-admin/js/tags.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'NÂ®f6\n íÇ"têqˆ0š'),
('ó#\\ú·â¨/‡vXR', 'wp-admin/js/theme.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ìûUİ×²÷4å_cjû'),
('G6Uæ2\01Rü¸“¢ÏJ', 'wp-admin/js/theme.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dÏæÒ‘l›)&D¥_yà8'),
('+9…£Œ[BUûE–e', 'wp-admin/js/updates.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H\n–ƒ¨~³ Ó=_`0êÖö'),
('([d‰˜ùº±¡×ïBQµ‹', 'wp-admin/js/updates.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>™P{ŒF6/™ÜÍÏ–<'),
('Öğ„Ë''>á[½Î‡÷', 'wp-admin/js/user-profile.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Åù^œí=Ñ7ìZŞZ'),
('ö¨£’ÂşH©S!;ø ó–', 'wp-admin/js/user-profile.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ä¦dîÉş—/úOX©“*k¡'),
('RÂ¥ø²®ÍÊLeıq	ğ&Ô', 'wp-admin/js/user-suggest.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3)ú‹()İ°4}\n“'),
('ÕXéğ¯—$„a²ÔBÈÒ^', 'wp-admin/js/user-suggest.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'à‰T\\×üŞ\\|×\rã§9á'),
('RQ÷b7f§È |~Û“†(', 'wp-admin/js/widgets.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÛèäâÒ‹4“1pçeœ>'),
('®SxÃß4®@oÁwïN', 'wp-admin/js/widgets.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÇQ¬½@Ïâ_\nU ‰“&'),
('P73oè©	§ë\0æ=áŠÒ', 'wp-admin/js/word-count.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'wŸ‡—¡¶Ïü¬Í/i'),
('–âCg¿¸ñ‹}|ÇE÷ı', 'wp-admin/js/word-count.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™P_ÉÒJ''ä“–AE–¤'),
(')è¹f><z0-AUi', 'wp-admin/js/wp-fullscreen-stub.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–…(Ë2Tqë\0ØWŠ†%å'),
('Ò"Œ¸på"-Cšı¥•w', 'wp-admin/js/wp-fullscreen-stub.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p\n”é“L{Aúg±ÜJ5'),
('væüáâ4İ|>í<´ÿÀ¨', 'wp-admin/js/xfn.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'âÖîË×t¯+±¡nÁ(k'),
('é »ÀyN< €9€o\Z<', 'wp-admin/js/xfn.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f²''Ê(ô.°J9\r^'),
('|ş»YŒ>à€Ğ	ùÆ†Ä', 'wp-admin/link-add.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' îª·Æó!q°!T	Ê¢ü'),
('…B%v6ÍI"Jb½Ç4Ó¡T', 'wp-admin/link-manager.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚xVÛÛ¯˜$âğ39—P'),
('ö€~¡‘äâ»âr„C›', 'wp-admin/link-parse-opml.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'XCjZöó5+õ–«Š?Ib'),
(':{Ãâì{7Ê9°‰Ÿğ', 'wp-admin/link.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nAsıC¢ 5	Èé„Ò+'),
('6‚]jàvÙW¹k\r3-ç', 'wp-admin/load-scripts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úCTïrš[¤Û‰C–'''),
('W})Ó–7£Œêeç}5æ9,', 'wp-admin/load-styles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+”ªr¦âƒï~Ä´Q{¤'),
('´ÒK´ççOÈ–9×3|<', 'wp-admin/maint/repair.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á€£»¸–áÍÌó7™[ş/'),
('J{£Ö¹Zi^Ã¹x•I', 'wp-admin/media-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ƒo’ÆV‚ª·h	Ù¨\n½'),
('†³¬ºÃê‚âë}•Í', 'wp-admin/media-upload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',"r	k,-\Z‰^\Z²3ò');
INSERT INTO `vi_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('¹ÃuLç,îŸ&Ç‘‹\r1', 'wp-admin/media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÎòäÉwÉÈiÆ5Â‘Ñ'),
('ğ$ŸÄ«¥Iˆ^ı“3·”Ñ', 'wp-admin/menu-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ea<ÃF/ö«£Ñç.6˜'),
('¨¯ß\\àD ü>üF,µ‡ç', 'wp-admin/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µrpé73:‰¿ÉÙ§Ä}¡'),
('W{°g- Xòéû''=n8', 'wp-admin/moderation.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'TB¢“€YR â"4ğo©'),
('vwÙÑ@ˆHÊÉz–F¦', 'wp-admin/ms-admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'š´—@ßÍ¯E…b6ä'),
('&eeî\n3KèÔãvZ¦•', 'wp-admin/ms-delete-site.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æª =eô| ×Ò¢QHÇO'),
('E¸Vàó÷,Õ%¦×,SM=', 'wp-admin/ms-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ô/öÄ¦Ã½”º:E‚'),
('"(}GÅÅrç	0—V(', 'wp-admin/ms-options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢''\0Ê}Ìş:Ôã†¯©'),
('¯-1ğ8ü;§Tö/Xâ©]', 'wp-admin/ms-sites.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']b$ëôİĞñqœô¸h'),
('´=b¤6šŞhs€ªæt', 'wp-admin/ms-themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R¹K•Ê$¼IZ1Æi%Ø'),
('\\ÜÜ…•Œ9‡ƒ·ÈÌ÷', 'wp-admin/ms-upgrade-network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|´’&"îSm–¾8h¾m'),
('±kÊULŸíÇ¡¹$Á˜ú', 'wp-admin/ms-users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H#Èf{#Êƒ³ù	6Gå¢'),
('\rxİ^´§¿\Z ƒ½<;', 'wp-admin/my-sites.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6Œ	/DH€š‰ãbƒ-C'),
('¸·áClo¦¶±–¯éÒ', 'wp-admin/nav-menus.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=àËUeº14j­´'),
('«o¢ù ´l>¼âx~I° Â', 'wp-admin/network/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6ıfq¥I<ÈÅ@V!Ùmê|'),
('·›œZQ4ÇØ\\(‚Ü‡', 'wp-admin/network/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Hñş3pù×°''e[g…æ”'),
('+Äãøt¨%R?ÒÛõø Ì', 'wp-admin/network/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡¾T%>r¬Ùlæ1q''å¥À'),
('''Ú\0;¾¿?Ã+VÒªÎ', 'wp-admin/network/edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”²¢JÉˆ2Fü?"‰0'),
('ÏuFóâ‘^Gú¥E+ˆ¶c', 'wp-admin/network/freedoms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á¯9éB9©DD\n²’S“®`'),
('\0C_\nìÂjD¨é@k', 'wp-admin/network/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/ÖöDW‹Qy	4‡X”'),
(']¥‚P·¿îTkvtŠº8A', 'wp-admin/network/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µVßà¹HìsÀé3ğ-'),
('™˜[ixTºqÔÃ~Wv¡e', 'wp-admin/network/plugin-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eŒöKwÔ5UZâ¥»±Sj'),
('ªÚpº$^†ôµdZ', 'wp-admin/network/plugin-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*ln,Æe/Êš^Ò'),
('¶˜ÀãÆ"SÎ­`t@', 'wp-admin/network/plugins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ä÷Íü­ÜF“şÌ9»UÖŠ'),
('Æ=Å}CğãîiğÜHT', 'wp-admin/network/profile.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'htÚÂ†oØ`Ù3v¹'),
('íé\Za˜]]ãA‰ê''h¤€', 'wp-admin/network/settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ë‡º0äGúÍÔV	ÇñZİ'),
('/»s»µC4Œ˜àÖÀ€', 'wp-admin/network/setup.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Îtä=$ÙÃlÕyé2î”±R'),
('+³§G*#ô±íô¦”ıf´', 'wp-admin/network/site-info.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Âíçx+»fo•¢{|Ï“Å'),
('yêäG•\\`˜áù¢MR”', 'wp-admin/network/site-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'êÎ5m§}KTİB™ëÉsH'),
('‹óycâ0O°g)Ï­Mf¸', 'wp-admin/network/site-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ø&P©Ş ;é8xP»•'),
(' qò¬h¢ö¾Bcø92’î', 'wp-admin/network/site-themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì‰•ĞÌä^~¥/üû|±›'),
('áq@/»¹ê¦‘Ù-MË', 'wp-admin/network/site-users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”_çƒ‹‡>5#›Î(vù'),
('n“ÆíÄ@’§AùF´', 'wp-admin/network/sites.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A¸¯¾Â3Yé±€ßÖ{@'),
('{N¤ˆÈ2íQ®uÔŞ=	œ', 'wp-admin/network/theme-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^)¿”ÎÅ­w·âÑqB'),
('h|hEˆˆf:Æ±2š‚~', 'wp-admin/network/theme-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b—äÆpŠB&³#¶©ì'),
('Ùë¼!}ñ=ö`*„gZ=', 'wp-admin/network/themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W]V@29:Œr?'),
('7|oOU›’ùz\0Ef»œä', 'wp-admin/network/update-core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•·Ô~×I''0YŒ'),
('‚ı\\Ï(åÙwBêÄIã', 'wp-admin/network/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ü¦ÒóûÙòGTwüñ¬'),
('r”®h’Åv†ÏLk/…ö', 'wp-admin/network/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õ#>éÅ\n­çÄã«›Oå$'),
('\00öñ#Š9ıœ¬Z4Îj$', 'wp-admin/network/user-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶­?aO\Z§ı''·•	'),
('øÂ6K1ış›(îöİ}/AX', 'wp-admin/network/user-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ßzÜ·™ECyÛVØÕ;'),
('	éñÏÛ09÷-b±…Í©W', 'wp-admin/network/users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'EŠbí X\\ªœE .Æ1'),
('ÍdİêãlP‘Oê’ùI„', 'wp-admin/network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm_AÖ¹}!B\n¦¯=3X'),
('­JTV0D·îoTAï¼»@¡', 'wp-admin/options-discussion.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=ME†Í×ˆLFüËPåÛ'),
('oí“[¬Ğn3u‚ÈÊ¹ŸP5', 'wp-admin/options-general.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–# wƒ“¤+·edšl'),
('\rÑª1s1=¬¡`(˜y', 'wp-admin/options-head.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'šan}ÔhÑÂI›`q\r¥'),
('¶¦â\\äÆ.1°Û-œ¾:', 'wp-admin/options-media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H³q|«ÛÌŞYlO\\L`'),
('ü)§£™Št\rî,½JÚ¼', 'wp-admin/options-permalink.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³™ãñoû­—}ìg­ön°'),
('Ò²E5|ÒÑµ‰C‚dé—¼', 'wp-admin/options-reading.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$°ÛÅjYÔ‡6SßıUÏ'),
('âL¶>ÙŸ‰#{6p}YãÎ', 'wp-admin/options-writing.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'mU¡•¶Ì´(|oÈñl '),
('dÕ(ÄÈ%JéùŞ@õG†', 'wp-admin/options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']2æZà¨À× lÒü…'),
('aÉcµCH\r…‘=l@Ä¸', 'wp-admin/plugin-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«7cn´ì¤$i'),
('ÊxjPÕö¼¨Ù!cÈx', 'wp-admin/plugin-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'çĞ\\f«Nç(Hé(Ù\Z†4'),
('Oû\\©¢µP5ÑÓÿ{¾R®', 'wp-admin/plugins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾É"VµÚe›gØ©²”k<'),
('”k‹¥—zß£óÔì×boÓR', 'wp-admin/post-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Éd‚W„QYö0EşYƒ»'),
('ëİvAÀds½ƒ—µ®Kµ]', 'wp-admin/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#Â6dĞÄu¡,`òd¹&'),
('Q·`ºöä8şM¸8', 'wp-admin/press-this.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'YçS$\nÆ1>Ö…³OPú'),
('h4¬‹ò#3Ç`-İˆ¨"¢', 'wp-admin/profile.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘„å?–ºŞ>zçÍ©íßz&'),
('\\Ó\0õ£>¦+¢³ÁFbĞí', 'wp-admin/revision.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|ru©H38ÑÄhÜ³'),
('§cã†Ì´ˆ$\n''@›\ròè', 'wp-admin/setup-config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'wÆıöõH‹ù\0ˆ‰Şø1'),
('Î|Ïf÷€îèÉ,2­T	', 'wp-admin/term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8ÃŠÉ¡ÍGNR-ƒë\0'),
('&É`×OËQ5‘QÕ43¿', 'wp-admin/theme-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'di} ÿŸvÀAıp§·'),
('\nô\r£Bƒä®pÌ­', 'wp-admin/theme-install.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ò<Gn‡¥)Š~&î»&Í²'),
('º©Âã^[X’æi³	í', 'wp-admin/themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú÷!_Í{²Zk¿œŸRÓ'),
('ñ7sş\\]Ô}ˆAAùwe1·', 'wp-admin/tools.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9Ñ°q\Z¹!Æ;Gã'),
('Ì!éLTá3•ŸiÙêxÅ', 'wp-admin/update-core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×FAã	úÑ}Ôò6‰~pë'),
('!o\r¿ÍAˆv7àÜe', 'wp-admin/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'iYQñDûƒ<Aß@­Ş\Z™'),
('^@Õ²{''«©_èâ›92', 'wp-admin/upgrade-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h\rä6å‡WdŠ€¹Ë»'),
('éáæj7r[¼,”ÌüZÖè', 'wp-admin/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²ïİ\0:êÍIêƒ%ü’0\0Ã'),
('&t!0^g‡ÛbJˆc,>3', 'wp-admin/upload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M÷öGc ¾‰(;yÛg;'),
('^9(-(Å²Åy ‰÷Ê0q*', 'wp-admin/user/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™ì\0Ú‘KNı ˜£äN¾-'),
('1s¸)6ªÓ¶™•¯C§…Î—', 'wp-admin/user/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p-R ÇVEoéüŒÀŒÅ$'),
('É¥ƒÛĞ~\r\ZK4(#ãÅ', 'wp-admin/user/credits.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ù ´ûâÂÇ€[K}åZ'),
('¥R;lzOé8m<3”Nie', 'wp-admin/user/freedoms.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦Ë¹â©ÓŞ³H™t’íi.'),
('[ê æ|KòoÊÛŒb7ğ', 'wp-admin/user/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Èı˜÷ıÕ-x½­÷Nb‰ú'),
('õæØõ£y ø\0º"¬îQ', 'wp-admin/user/menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥)ãÓÂ»†g¹ÌEÏpî'),
('öÓã­`×&X<ÄaQŸVh\\', 'wp-admin/user/profile.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹ú©•€\0yİ¤±&-'),
('ô=üğq¯\rljA+', 'wp-admin/user/user-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*zu£c°øm	J‘ïeê'),
('ÒJh|±”0çƒ`Zp˜E', 'wp-admin/user-edit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©›¡„Å¾ëcò»Ñìq'),
(' *@ADÒ“ˆ=pu°˜ÓE', 'wp-admin/user-new.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®iû%,¦aWcH2çb¹'),
('PŠÅiz¡tîaé}Ôa', 'wp-admin/users.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ï²rı[¸@q£0f³<Hª'),
('™TêhËÔìzPŸùré', 'wp-admin/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N\\à®Ù£íõĞ±YkÌ'),
('I•Ä:BsŞ#×çÿŞ@×', 'wp-blog-header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'í­taMm?¢%,=tÿzÇ'),
('Sˆÿ÷ÜpØ>ÙİWr½YE', 'wp-comments-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'åL®p·%,2ÁùÀÈÁ§Ñ¤'),
('~Å¥Ïs\0Ì1yì$‘L}h', 'wp-config-sample.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÑI†ü?Ie¦ V§ş¹'),
('vK;@ÑsºaU1;©	^©', 'wp-config.php', 0, '1”^´ä!æŠ5¿Yóı', '1”^´ä!æŠ5¿Yóı'),
('ú-^gÿˆÌº@\0/÷“†', 'wp-content/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gD,Vë§=\\ÆbP'),
('»ò_û/™ßB²ãQ]k', 'wp-content/plugins/advanced-custom-fields/acf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï7ää¸0·kì9må©'),
('ılI°õŠÓo†²ïy­cå', 'wp-content/plugins/advanced-custom-fields/core/actions/export.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'À®|”¾Íÿãµ˜“'),
('rï¢^Ò”ŸÓ@'':ícUF', 'wp-content/plugins/advanced-custom-fields/core/api.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2Ô^ıõÿZ¯JaÅVC¬'),
('MÅ.qÌe?XÓ§qLÄ', 'wp-content/plugins/advanced-custom-fields/core/controllers/addons.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nY¥4!ßt’TßÂãŞ\r@¢'),
('Ê:bé’ çºÊvÖòoì', 'wp-content/plugins/advanced-custom-fields/core/controllers/everything_fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'UŠMáH\rnà¦ğÊ'),
('ƒÂº9³æ0@Í¬\n®ı‰', 'wp-content/plugins/advanced-custom-fields/core/controllers/export.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ıúÒCY²÷Œ<=¿Šr|'),
('å+Õ­D†m–ô.äí', 'wp-content/plugins/advanced-custom-fields/core/controllers/field_group.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_*Û1)îv‰{\nØğs'),
('„ ÙÑB)·QH&©•¨w2', 'wp-content/plugins/advanced-custom-fields/core/controllers/field_groups.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '›§±mv>™\råÖ)CşÀ'),
('V!ÃÊ€ŠÇ7³ß”Ÿ£Ï', 'wp-content/plugins/advanced-custom-fields/core/controllers/input.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«ÉI–Ö÷áuv.É'),
('ØË~¹Lxz[ó''!>]Ë|', 'wp-content/plugins/advanced-custom-fields/core/controllers/location.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘YÎù‚›®÷ÍŠ\\+š'),
('òD¬O}–vLCQAEÁÖ', 'wp-content/plugins/advanced-custom-fields/core/controllers/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{õ¨\nğn¶lÍ=•õ*ÇÙ'),
('šcF-…òÄõt_ø{ØÄ', 'wp-content/plugins/advanced-custom-fields/core/controllers/revisions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h¹ö€ÖÕĞÂ"0&?ì{'),
('îæøZ_a•µ~Ê4“„^Óö', 'wp-content/plugins/advanced-custom-fields/core/controllers/third_party.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ps-§''È§©–pIm^ï'),
('¸RÁ(GóMB§ÀôbĞ', 'wp-content/plugins/advanced-custom-fields/core/controllers/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼Ë)tI«°/èˆK/ö'),
('ws@f4ö8U%*¿qK', 'wp-content/plugins/advanced-custom-fields/core/fields/_base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÅdŒVi 9R	Ã+ù\0æ'),
('şœ#ièù\nÍÄ)¬bˆ%Šg', 'wp-content/plugins/advanced-custom-fields/core/fields/_functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9''ZÑï»†]…^h®k­s’'),
('•)}d\r›SD\n€F¹ZÛcÆ', 'wp-content/plugins/advanced-custom-fields/core/fields/checkbox.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sû £äğøÕØnaqğ(×'),
('''ƒ çöïPä©İT>6q', 'wp-content/plugins/advanced-custom-fields/core/fields/color_picker.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Mš3@L5éæ+¾0–X'),
('n7¬±_.NéŠÙ-¾qä', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/date_picker.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'iªR”ääšÉSÅHú'),
('bNT\n{ÒÙóş¦P0', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_flat_0_aaaaaa_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*DûÛs`Æ"¼öÜï‡Ø'),
('gP[5<=@gÊvWGª¸', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_flat_55_5bc6f5_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M¾‰qx}Šo…Œ#Ø'),
('ù%!@ª´Ú/]çfŸ€ÿ', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_flat_75_ffffff_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†’æïİø‚¬¿ñDÃ§ßß'),
('"=”]VÔÏM³ó¯ºËYÈ', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_glass_65_ffffff_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å¨ó.(ı\\''¿í3È¨¹µ'),
('˜y”õí³ZóÍ/\0\\', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_glass_75_dadada_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Á,eÚÓëúdÈ£•š$i'),
('½¥Ùß¿ÿjÏ˜TQŠ¼õÔ', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_glass_75_e6e6e6_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ô%CVÂ¨É£ƒ ^òÄŞ"Ä'),
('çe,4_–÷W¾@ïû¾·', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_glass_95_fef1ec_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z;âØÿø2MY®Ãß{\nƒ'),
('êCKÌª$‡C”¡r#·i', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-bg_highlight-soft_0_444444_1x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0¡õ¸ê*äYósşRéï'),
('ãı^OeL½v„åãµyx', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_222222_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ëæ¶*@¿œ¬cy¡Gu%'),
('EäÈÊŒ#W<áZï˜h/Ç', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_2e83ff_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+™¥ä<9WĞ0''Ój%è»'),
('c#ûß±¥e®}İlß,…', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_454545_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ĞÂéJÖ‰Ş‡>óŸÔ>n'),
('·o\n;X^ŒWãå‘E~F ', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_888888_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œF×Ê´>"¡K­&ÒÔ€m€'),
('Qp”ñ“®Õ7ÆJÉÌ6Oë', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/images/ui-icons_cd0a0a_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>E*,f2”˜ç\0\Z×|'),
('WíœÒ˜|\Z\n+$lô¦', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/jquery.ui.datepicker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'bã32\\)«À¢ÆgÄ»ø'),
('¦AŸâ\\''ìn5‰·‡', 'wp-content/plugins/advanced-custom-fields/core/fields/date_picker/style.date_picker.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/Ë~ïÎtûU\ZåJw½¥'),
('/ÂĞµ%$%‘‚¨Êè™/', 'wp-content/plugins/advanced-custom-fields/core/fields/dummy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0™3ÿSô÷™ßÍ)´I­'),
('Íõìr^:Ü¤\rZ™(ºp', 'wp-content/plugins/advanced-custom-fields/core/fields/email.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æ³i¹ÄÒ^å15(\0ı'),
('lu$%¸„)ÅduqÁ', 'wp-content/plugins/advanced-custom-fields/core/fields/file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óáxEÖÒ]K:™‚º.'),
('ÊD½\Z!G¨µº™Ù¶', 'wp-content/plugins/advanced-custom-fields/core/fields/google-map.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€:ü|Pº¬2Àïq¹–Q¼'),
('Zpºàç²›İ¡VÊÓ%] ', 'wp-content/plugins/advanced-custom-fields/core/fields/image.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥ğ±ºe/41çÌÒ¯Jo'),
(';÷\\w˜¨›{@íş˜', 'wp-content/plugins/advanced-custom-fields/core/fields/message.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ß¢å!\ZˆŸx*–ğ^†D'),
('Aß«€æâÜtò$o1r”', 'wp-content/plugins/advanced-custom-fields/core/fields/number.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ä4Ø(àre)¼µPDQ·'),
('dJ”%g^lÚ´\\‹+xˆ', 'wp-content/plugins/advanced-custom-fields/core/fields/page_link.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z·¸?··İ9{3Gd.ú-Ä'),
('%ÍÇ¾8ós«”ı,æ2', 'wp-content/plugins/advanced-custom-fields/core/fields/password.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eKhb•ç@+§¡¥½%&­'),
('zº/¬FŸ#ô!¸§“V¶', 'wp-content/plugins/advanced-custom-fields/core/fields/post_object.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶¨«´šwŒ®ŠÚê…Î*'),
('2ÂOÅ½Ö›õ4Pë—âã', 'wp-content/plugins/advanced-custom-fields/core/fields/radio.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°œÅî\0O3]{ÓHµ~'),
('&¯î‹ß3Æ²*Ğº`Õm', 'wp-content/plugins/advanced-custom-fields/core/fields/relationship.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-Në^TâôÖ~LÔ¥vÃ\rk'),
('t•Ñ¦ â#„5‰¬ák', 'wp-content/plugins/advanced-custom-fields/core/fields/select.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥‹)^Eæ0>‹ÂZ°×øí|'),
('˜åFóøfèæIÿ›†P9-b', 'wp-content/plugins/advanced-custom-fields/core/fields/tab.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÊĞÈ\rE]C…šºĞç'),
('NY@õ×h¿SYú^Í', 'wp-content/plugins/advanced-custom-fields/core/fields/taxonomy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢WU7:ë’¶ÎAˆN'),
('c%Ú!Xlvn8	üJ½	ìÜ', 'wp-content/plugins/advanced-custom-fields/core/fields/text.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡2Á­¯¾„,0!‚QÍpru'),
('í,°U´á \0eß\n=”Ëó2', 'wp-content/plugins/advanced-custom-fields/core/fields/textarea.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú ½“W«Q$ypüĞcâ,'),
('ÎŒ«¦oÃ«MY[O^©ş', 'wp-content/plugins/advanced-custom-fields/core/fields/true_false.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$nı‚|Dz''‰Ï$ßí'),
('ÉI²–f:w[ñó  ƒÁ', 'wp-content/plugins/advanced-custom-fields/core/fields/user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íMCø™J8ëé»ZVÔ'),
('”WÁ£ôdà5@@Âëc–', 'wp-content/plugins/advanced-custom-fields/core/fields/wysiwyg.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rf$Tº,ÿOéS²î"ı2'),
('…ïI÷ûXT}B»/šÍå', 'wp-content/plugins/advanced-custom-fields/core/views/meta_box_fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dW)_›àg²é]¿1H_;'),
('3Uşó-ñúei{À© Ò', 'wp-content/plugins/advanced-custom-fields/core/views/meta_box_location.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2ÙÈGåIª³W±~°qà@'),
('Ã»‘HO{Ÿ°¡ÖA““Š¾', 'wp-content/plugins/advanced-custom-fields/core/views/meta_box_options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á{[km¹2i\0ÌKz¹m'),
('–^F%ØŒ±vğ_¥HÚeU', 'wp-content/plugins/advanced-custom-fields/css/acf.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Tæ9V]qxÇX)SE|Ø'),
('Š‘¾I4 šß!ù8Ø’', 'wp-content/plugins/advanced-custom-fields/css/field-group.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×vÀ¶«Qú2õÖØç4:å^'),
('Gªêâ‰	°ÄAÚÜVÆ', 'wp-content/plugins/advanced-custom-fields/css/global.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"ÿ©`àµ–ˆC+Y	('),
('›Ÿ±uÃ3†Ci¸à¥,~[', 'wp-content/plugins/advanced-custom-fields/css/input.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²Óq»a©pSTKsì'),
('Åâ´ÃqØ&AhGí¡', 'wp-content/plugins/advanced-custom-fields/images/add-ons/cf7-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F-°e«cö5¯†[-'''),
('µ®ü€µHÙ¸Kd{Ù', 'wp-content/plugins/advanced-custom-fields/images/add-ons/date-time-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ğ˜ÅwågÏ–-Fã>¤'),
('ˆL¬«ğÓÀÜ	)AöÀ»G', 'wp-content/plugins/advanced-custom-fields/images/add-ons/flexible-content-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '„åjJô‰ôqA{<	ÒĞ'),
('ú$‡ôë‚§\n²RDìZ­D', 'wp-content/plugins/advanced-custom-fields/images/add-ons/gallery-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z©öLâ;á˜èb®Ì•t'),
('S`4Î¡¢z*PÁUÆ/8', 'wp-content/plugins/advanced-custom-fields/images/add-ons/google-maps-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?xqc™K‹Qÿµÿ}©\r'),
('£\n.''“HĞ|œâÇöª', 'wp-content/plugins/advanced-custom-fields/images/add-ons/gravity-forms-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|_b)­û(>µÿ{>2“Î'),
('GØYKV*\Z Ê£¼×ö', 'wp-content/plugins/advanced-custom-fields/images/add-ons/options-page-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2–uuG9ÑS·*+÷Bˆ'),
('•ÜøØÜ1A¥Ş¢yœˆ', 'wp-content/plugins/advanced-custom-fields/images/add-ons/repeater-field-thumb.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/¶Æ\\i–áKˆNıZ'),
('_/£A¼éÊqqt|¦ŞcŸ_', 'wp-content/plugins/advanced-custom-fields/images/arrows.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Úv’$ğ>ˆÑßÙ>¿Y'),
(' ;×µ¾gáÆ’;d¤H`í', 'wp-content/plugins/advanced-custom-fields/images/arrows@2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '— Qğ†}Îñydb#6„'),
(';½uô>8 @1Îq~œA±', 'wp-content/plugins/advanced-custom-fields/images/sprite.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0JNµØ»cSÍzyW9'),
('|=ÈÂ?õO™…Ø_P®s', 'wp-content/plugins/advanced-custom-fields/images/sprite@2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«7:Ì1å "W^U»ç²¼‘'),
('ñJC=bÉ´1\0\\Ve±', 'wp-content/plugins/advanced-custom-fields/images/wpspin_light.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gô\n0¿¡7CåÄèkúFz'),
('}†t²Zb_òÇôœãP', 'wp-content/plugins/advanced-custom-fields/images/wpspin_light@2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ER½†fz£À‚µŠ'),
('ãŸ\0‰X9>‘2©ûUmm', 'wp-content/plugins/advanced-custom-fields/js/field-group.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯`*OD¹\0ˆ‰¸s6çì·'),
('nÌ÷Œ\nÖÈq\Zÿô“Á6Ê', 'wp-content/plugins/advanced-custom-fields/js/field-group.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–#qÁDáC	¿İX¯"8'),
('ıë0mÃlbÀCîw.¼í', 'wp-content/plugins/advanced-custom-fields/js/input/_listener.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÔŒÙ\0²é€	˜ìøB~'),
('h˜ÄX»ÅJ5ã”¦xË.w', 'wp-content/plugins/advanced-custom-fields/js/input/_listener.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÔŒÙ\0²é€	˜ìøB~'),
('bÍ”;J?Èój\Z‹³x®', 'wp-content/plugins/advanced-custom-fields/js/input/acf.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ë;èm‡Çç8moºá½o[—'),
('{æO; ¤İıŠš''È¶', 'wp-content/plugins/advanced-custom-fields/js/input/ajax.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùµ¯ç/—é—‚õ$[PŞ'),
('.±9Ä‹É¨Ü—ºÑœ&ü|t', 'wp-content/plugins/advanced-custom-fields/js/input/color-picker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'pì®“M½0-ıBŠ†HbÌ'),
('²«÷+å™\r\nšÂlgç', 'wp-content/plugins/advanced-custom-fields/js/input/date-picker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W¯µ¶°f\nÕ04×f¡'),
('R\\D‹Ä:1túê£z!B', 'wp-content/plugins/advanced-custom-fields/js/input/file.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'TCİzqìõ”‘VãÚ«r\Z'),
('ÀÊ¥]ul„¸`İ½g#Ù', 'wp-content/plugins/advanced-custom-fields/js/input/google-map.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}[\Z$Á$#¾ª¥Ç>»;/'),
('|Óï}O„®˜p¤X4Ş', 'wp-content/plugins/advanced-custom-fields/js/input/image.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']Wâ¯xm5R%s›\0JúY'),
('X\0²™¦˜÷tøõ¼ck', 'wp-content/plugins/advanced-custom-fields/js/input/radio.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9j‹Nùeûí‹¼²T{\0'),
('®¢-Œ-ä¶ê§ó', 'wp-content/plugins/advanced-custom-fields/js/input/relationship.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}PÇšŸœëıŞò£j'),
('[ÓöûsˆÔpşøÆRîû­', 'wp-content/plugins/advanced-custom-fields/js/input/tab.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r1\n}©øãe7õ`ÅAÉnÈ'),
('h™3f±µ™VÕ„÷L', 'wp-content/plugins/advanced-custom-fields/js/input/validation.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r÷Ï±SÁ²R¢qz\\a/¿)'),
(',BÌïÍ¤¿CÛˆÕ³ÂĞç', 'wp-content/plugins/advanced-custom-fields/js/input/wysiwyg.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'QœzH}¨n953r!{'),
('\\3pÖIo—ß­§Æƒ}\0O"', 'wp-content/plugins/advanced-custom-fields/js/input.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ô>Æb7—‚B_îÌ_Q¬ä¯'),
('½ æ`Q„ù5È¼»œT\\B', 'wp-content/plugins/advanced-custom-fields/js/input.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Á–İ™b¹W)\Z5'),
('^ïtxÊÿ\\hÚÆ‡¡:Á»', 'wp-content/plugins/advanced-custom-fields/js/tinymce.code.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~àÉ«¶P[ósÉ?äÍ'),
('õrïß=KçìÜ&®h†}a', 'wp-content/plugins/advanced-custom-fields/lang/acf-bg_BG.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q·Qª\\KNNñ&,cõR>'),
('µn×Fš3z©ı«šiA6@Ø', 'wp-content/plugins/advanced-custom-fields/lang/acf-bg_BG.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!yì ÈKé	ÀäÖ='),
('İ#ÎßÌÎI#I¼HÈW³', 'wp-content/plugins/advanced-custom-fields/lang/acf-cs_CZ.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«YWx¤ wÈbÜbÖ'),
(',K±''oş‡n‘yh.y^Œ', 'wp-content/plugins/advanced-custom-fields/lang/acf-cs_CZ.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k*¬é+3v1x\n ³'),
('ˆ-Ÿ^òÚ"\0Êo}‹Ñæõ', 'wp-content/plugins/advanced-custom-fields/lang/acf-cy_GB.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WĞ´c•øujàØ'),
('³y8+•ËÆÓ®Ò­±G', 'wp-content/plugins/advanced-custom-fields/lang/acf-cy_GB.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ú»µa‘´}DáÚ¶¬×xş'),
('ñõ“ïÈÍ£wnÔœ', 'wp-content/plugins/advanced-custom-fields/lang/acf-de_DE.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Sğd£”}ŒÅª$á'),
('¹äÚw^3jºiâõ', 'wp-content/plugins/advanced-custom-fields/lang/acf-de_DE.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÉÑÊƒ÷ ÏVÕQ¸Å#E'),
('ÆëÍ@)Ş%¡åÓ;¦Æ', 'wp-content/plugins/advanced-custom-fields/lang/acf-es_ES.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ªcJÓR—³b•Î½8U'),
('‚Ë$œFlx¹ ür’vÏP', 'wp-content/plugins/advanced-custom-fields/lang/acf-es_ES.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ñ…ûG²èÏë«kÓ‘ş'),
('×1]sR1â=:Ö©÷à', 'wp-content/plugins/advanced-custom-fields/lang/acf-fa_IR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±®GğòDìï÷\r;â¯§'),
(')*EsOg%D2…Nó;', 'wp-content/plugins/advanced-custom-fields/lang/acf-fa_IR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µÖ	°ı~_SŠuêBÓçõØ'),
('~Y%­ù!³Ë™´­ îB­', 'wp-content/plugins/advanced-custom-fields/lang/acf-fi_FI.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»òè~ÖÂ&ÇŸŠPÆòcS'),
('Ëçß·‰´¿#¿oïäšµì3', 'wp-content/plugins/advanced-custom-fields/lang/acf-fi_FI.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èŒPÓ”é‡ C_èÔ£'),
(':èŸıë&ÏöPå$Î™¢ –', 'wp-content/plugins/advanced-custom-fields/lang/acf-fr_FR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'YüûgëÁ‡\ZSDşÒÕ,'),
('—ìşkm×ÖÇb¢Gm1ÿ', 'wp-content/plugins/advanced-custom-fields/lang/acf-fr_FR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ãü¤],Ñ%xSxŸĞîq'),
('?â¨õÑ8Œkeaû!Ax', 'wp-content/plugins/advanced-custom-fields/lang/acf-he_IL.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Šş÷Jc4Gu\\Qö¼º['),
('…I \0''%şÅı?xû`óË', 'wp-content/plugins/advanced-custom-fields/lang/acf-he_IL.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2p™"áÂGÈ_IFÌ™ÕÚ'),
('Whå¦EÁîï\rbƒèxÑá', 'wp-content/plugins/advanced-custom-fields/lang/acf-id_ID.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·¼­½;‡:Ú$d†ŸD¼‹E'),
('WÈîf„§ßáKf•vlå=n', 'wp-content/plugins/advanced-custom-fields/lang/acf-id_ID.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/½Á\nd©T¶Óí*„£'),
('°\Z§@ic×‹#\Z\Z]!ı(Ê', 'wp-content/plugins/advanced-custom-fields/lang/acf-it_IT.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óç $áÁ-÷¨8{\r'),
('ÜIIÜW^ós{,sè"\0', 'wp-content/plugins/advanced-custom-fields/lang/acf-it_IT.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=A!­‚S¹ËkÌ{V\nYk~'),
('Fv`Ç\0	¥ø­4\Z73', 'wp-content/plugins/advanced-custom-fields/lang/acf-ja.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eW*v]#›~!öÃ&´è'),
('%ŞÖÕR	œ®3•Zdï ', 'wp-content/plugins/advanced-custom-fields/lang/acf-ja.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èvCw¡Öœ0Êÿ''q`'),
('Q¼a—–ë1 ¤éRúôz', 'wp-content/plugins/advanced-custom-fields/lang/acf-nl_NL.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Üóî\\ºÍyıè='),
('Û&ı(¥™E²ÁZÇÑ', 'wp-content/plugins/advanced-custom-fields/lang/acf-nl_NL.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '„:W-MğÎ¨<Îƒÿ'),
('#7v–V£üæ—¢KÍPQ¢', 'wp-content/plugins/advanced-custom-fields/lang/acf-pl_PL.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÅJ)6ı+İüš«ÈŒéû'),
('c®"U¿ÿ‰JtUì', 'wp-content/plugins/advanced-custom-fields/lang/acf-pl_PL.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷Å\0\\-Òç3!ı£¯Z„Ø^'),
('ƒòÕáÑ¾÷=lò°ñ5*', 'wp-content/plugins/advanced-custom-fields/lang/acf-pt_BR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~:¹ø©i¤ÓéauÏB­'),
('ôåœ€=®Ø|®çÕ˜¢e©', 'wp-content/plugins/advanced-custom-fields/lang/acf-pt_BR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ç®UÅ÷Ç27¾œrş•'),
('¤wZğ\Z1D…æğÈyŠIµ', 'wp-content/plugins/advanced-custom-fields/lang/acf-pt_PT.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³}ù·ûµ$SüjB"Ì'),
('¸nĞO®ja>íXÆk|õ', 'wp-content/plugins/advanced-custom-fields/lang/acf-pt_PT.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©¿|øÆæ4\\ò¦ª¥æñ'),
('xä<\rH^ò‰¾µê‹ôÅ', 'wp-content/plugins/advanced-custom-fields/lang/acf-ru_RU.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×7TºÚzãÂÕödMêb'),
('Ì˜×\\ÅlŞã@"¯eÖU', 'wp-content/plugins/advanced-custom-fields/lang/acf-ru_RU.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ìô_ôàl×ì%TwùÚ'),
('µB_L^väşæÅ', 'wp-content/plugins/advanced-custom-fields/lang/acf-sk_SK.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hfÄĞ.€:sdL”Q«'),
('êı›‹Öç“FØë™[Ã', 'wp-content/plugins/advanced-custom-fields/lang/acf-sk_SK.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ôc‡ n6ÆUF¡hÁÜ"ºÇ'),
('qÒªZ<P;#ÿ³€Ä<¬', 'wp-content/plugins/advanced-custom-fields/lang/acf-sr_RS.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0KxÚ&ÅñÛd=.ıù®'),
('’Š§•Ù óZı`¾A˜N', 'wp-content/plugins/advanced-custom-fields/lang/acf-sr_RS.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ê]ç+7KÎ#*ãşõ'),
('¾”€]Í¨bíÇ"ı\\k', 'wp-content/plugins/advanced-custom-fields/lang/acf-sv_SE.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–—˜Û®''nı÷‚=eî'),
('Êd.üåTóâ³hß‰ªIJV', 'wp-content/plugins/advanced-custom-fields/lang/acf-sv_SE.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'VœÈ‹î"åê 	–6m'),
('gó£Kèï%Ñ“~@ëÕ', 'wp-content/plugins/advanced-custom-fields/lang/acf-tr_TR.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ªubªì¥c?\0ˆê'),
('Â];]sn\rÜújú~vƒ', 'wp-content/plugins/advanced-custom-fields/lang/acf-tr_TR.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!ãa7Ov›ÚJGBÑ$ '),
('¶\nZ›ïû’ºÈâñ', 'wp-content/plugins/advanced-custom-fields/lang/acf-uk.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'şg,ÇP‹éMŠMKí÷!ß'),
('á™pÓ§Ãnûy?ÂÍ', 'wp-content/plugins/advanced-custom-fields/lang/acf-uk.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥tÁáø1‚|K²Y]ú'),
('ë1¹Ué…q5w±*¶', 'wp-content/plugins/advanced-custom-fields/lang/acf-zh_CN.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€.#KRvÌy´±ŞD÷ò'),
('@ù İ&ƒ…5C	±7ô', 'wp-content/plugins/advanced-custom-fields/lang/acf-zh_CN.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸3œ‰b(¯ÎqKÇ…^™e'),
('ÎéAOÂ\Z%*hb‚ª:Æ', 'wp-content/plugins/advanced-custom-fields/lang/acf.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ã‡ú¼ÿˆã3@ä{O®èM'),
('ÓO`Ñ]i@vÈ¶¿.HĞ', 'wp-content/plugins/advanced-custom-fields/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÇM n]ç p''¡?¥ÕÀG'),
('ˆ	¢¢üû£º¹g', 'wp-content/plugins/advanced-custom-fields/screenshot-1.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éx ZH†Àß¤ıKÒN'),
('û«»X£ä–‡?¸İ«…>c', 'wp-content/plugins/advanced-custom-fields/screenshot-2.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡x4Ã÷´Å:*Ş:Š=('),
('|Õ¹+=ùñèOÃ}Ù\Z¯', 'wp-content/plugins/advanced-custom-fields/screenshot-3.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°\\ÂìSßÊ0&Ák…¼v'),
('·‡*]N¢5?ã«Zö', 'wp-content/plugins/advanced-custom-fields/screenshot-4.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª@å‡jÃaŸ(1'),
('ˆğw”Ái.¹w¾(M;0D', 'wp-content/plugins/akismet/.htaccess', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿9¾‚|•­äœ2-ş#ñœ'),
('ôœˆŒÇIÌ*Ÿ:oÍ', 'wp-content/plugins/akismet/LICENSE.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²4îMiõüäHj€ı¯JBc'),
('Læ¿\r¡†È¦:Õènòh''', 'wp-content/plugins/akismet/_inc/akismet.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FçQR÷gfƒa¬P‰ç'),
('Ì½ó ş˜ŸX™$oB¹', 'wp-content/plugins/akismet/_inc/akismet.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2rµz‰XÇ*\ZœbËêö'),
('<B¹¢Ê±íA51Ó±', 'wp-content/plugins/akismet/_inc/form.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''×4Îl*úÏ&‚çi'),
('''Póä™T]Ù	ÿ6ÿ~‚', 'wp-content/plugins/akismet/_inc/img/logo-full-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡.vöÔ7\0¢‘Ä]ƒš'),
(')ÌƒÕ2±kÕh¯Ÿò! ', 'wp-content/plugins/akismet/akismet.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R$^féZ\n·îÄµ¬\\'),
('ò–İÕjKé&·…íÖY', 'wp-content/plugins/akismet/class.akismet-admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ytvFÆï9ÍÀÓ'),
('‹±fé¤§xMªP]~B—Ô', 'wp-content/plugins/akismet/class.akismet-cli.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+ZÈyJÅ;‘M*[G½'),
('„ló¿g<Ğë¹É=Æl‰', 'wp-content/plugins/akismet/class.akismet-widget.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿Ù± ÊzºPÙ¼á¼ïS'),
('pùÀö—b¥~ƒoBkÌZ', 'wp-content/plugins/akismet/class.akismet.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èLŒQ¬¦°D\ZYDGN[Š'),
('Aı°‰$hÜõÕ`Qøa', 'wp-content/plugins/akismet/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ïh•¯ PëZçÀºİ¢`Ef'),
('’o«/Êdğ4x`¤œ', 'wp-content/plugins/akismet/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†Vt^’¿©9Ä\r$d‡ïÅ'),
('Óâ³>Zbµo&ÂÔ', 'wp-content/plugins/akismet/views/config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n1P­¡íìÃT–‰j)³'),
('¹bœE‡‘3Óg''cZ (š÷', 'wp-content/plugins/akismet/views/get.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Nı^?,Ú“¼f·/‡‘­'),
('­ÑÑWdú;C\r¾ÄÜO®', 'wp-content/plugins/akismet/views/notice.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M#p%iØ¸hòÌ¯'),
('¡Ş;ã;/JÃKmRÿ—0', 'wp-content/plugins/akismet/views/start.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*Éä\0E<qÔ!y4æ/Ó°E'),
('s¦ìÓ£Jö³Å~’çk', 'wp-content/plugins/akismet/views/stats.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡­ÍAŸF‰–šhâĞ`'),
('dF=úˆÏjˆ²Hcÿ ‚–', 'wp-content/plugins/akismet/wrapper.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'üÕlRKvÂâG\n.í4&ô'),
('i3*ì”‰Ûv«iWàL‚Ğ', 'wp-content/plugins/ank-google-map/LICENSE.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æÊá>¯|¸kqøÎ>ÚQ'),
('Òˆ97;86ÜHEâE¦·8', 'wp-content/plugins/ank-google-map/ank-google-map.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'í/JækP®ë%£{´n}'),
('«tWËµ½Óõvz¥æjÔƒ', 'wp-content/plugins/ank-google-map/assets/frontend.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±áÖP9Ÿel¬¶³'),
('+H`5bedÛôŒS¸j', 'wp-content/plugins/ank-google-map/assets/frontend.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'à‚€Y¼¸›çÒJ÷ì,'),
('ÜTé¥Â[²ï—Úàãq‘', 'wp-content/plugins/ank-google-map/assets/option-page.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ms	«(ù:JÚë]‡‚'),
('KÕjşÓ ¯–PlÌ›ï£Se', 'wp-content/plugins/ank-google-map/assets/option-page.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h£rN¤RÅô\rN„§6?D'),
('Ñl­5¬¥/[©;¾Òø', 'wp-content/plugins/ank-google-map/assets/option-page.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ø„HRYxa¶î2CÆN™²'),
('XDÏlë®ÒœÔÃ€X"qµ', 'wp-content/plugins/ank-google-map/assets/option-page.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\ZUşèÉ4‹#ûÛJıı\Z'),
('öUZ½a”	s‘Û›€7  ', 'wp-content/plugins/ank-google-map/inc/class-admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˜²…£@TaÙ_r§\07ç'),
('¹;Éqoï~U¡/´Ç''	j', 'wp-content/plugins/ank-google-map/inc/class-frontend.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ğÿ~›3–•íÔœp¬aÍˆ'),
('L$Òİ‰)ğûşÌ|åú{uë', 'wp-content/plugins/ank-google-map/inc/class-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A?ìä*Tˆ_åÚ½Š…]'),
('@yeö:t{ê/_íÖ', 'wp-content/plugins/ank-google-map/inc/class-util.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@Gô¶,hL\\ö0 †'),
('œ©t×óİıß˜‡Zû±', 'wp-content/plugins/ank-google-map/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gD,Vë§=\\ÆbP'),
('2±C®ÖÒÌ~×ÿÍ$p', 'wp-content/plugins/ank-google-map/languages/ank-google-map.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+9à›éë’BÁ†‹$ç[1'),
('?ùUr*ËÛŞoĞÊ:·Ç¡', 'wp-content/plugins/ank-google-map/languages/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gD,Vë§=\\ÆbP'),
('šùàáªC³ZëFtÖÔ', 'wp-content/plugins/ank-google-map/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'áÄ%+«ÍºÈ¦Ïşû§É'),
('^]à6À›º¾1ƒéë­‹', 'wp-content/plugins/ank-google-map/styles.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^°É"ú‡¶Àş­Ì2c'),
('I)%ì±Šçš¡ç 7SçÎì', 'wp-content/plugins/ank-google-map/uninstall.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'UçvŠ^RHe:å_Á!'),
('*áÑ£37ˆÆpœP\\è‡j', 'wp-content/plugins/ank-google-map/views/.htaccess', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oÒ‰…œ‡±T‰ç3¡Ä"—'),
('B8—Ã&R3Š>?š_ş', 'wp-content/plugins/ank-google-map/views/settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óP¨Ó6¨L‹hì<©1&'),
('+"ÚÿÚs‹¢‚“', 'wp-content/plugins/contact-form-7/admin/admin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÊPáÅ%[:ùˆ¡•qìG'),
('«ÔNP½²£<U’ˆ÷†Ø', 'wp-content/plugins/contact-form-7/admin/css/styles-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R¼Q®WÖnáæ~G'),
('ÄÉ\r§RĞ¨Û<×´U;"', 'wp-content/plugins/contact-form-7/admin/css/styles.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'âÏ_ìõµÕ@£vkX{q'),
('F’Ù_=^«üäa‡E®¦}', 'wp-content/plugins/contact-form-7/admin/edit-contact-form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oú©¼ ãQ‘ïãùÃJ*'),
('H	ÚÁQş—·$Ô?9åı', 'wp-content/plugins/contact-form-7/admin/includes/admin-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eE¶Ø`°ù[‰³Sà{ˆ'),
('¾;!Ó™AÔOã“ş«×Z—', 'wp-content/plugins/contact-form-7/admin/includes/class-contact-forms-list-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'w|U6àl·{í_ÈòÏ'),
('Êô9Àİï„3p—ç^’1É', 'wp-content/plugins/contact-form-7/admin/includes/editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm™›zxz’ØÇXşoïê'),
('İw´sûÁìºY¯e×s{©', 'wp-content/plugins/contact-form-7/admin/includes/help-tabs.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N€¬ñJJğG.oÎEÿ'),
('++­êu¼±ÛVŞ67Sc¯', 'wp-content/plugins/contact-form-7/admin/includes/tag-generator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W*ª÷spG»Oÿ÷}Áp2'),
('©W¯[îÆlF*Q‰M', 'wp-content/plugins/contact-form-7/admin/includes/welcome-panel.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r¶0»â*1ë0µ\0ø'),
('>AŞXêÉa¶s(~', 'wp-content/plugins/contact-form-7/admin/js/scripts.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',F‰æÉ#CÊ\Z®|(£@'),
('âlÛÉƒa‰ndşv"Î×Q', 'wp-content/plugins/contact-form-7/admin/js/tag-generator.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Şªàùë›(.ıŞ–Ô€'),
(',Aã}2+/éx­úëãÑ', 'wp-content/plugins/contact-form-7/images/ajax-loader.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯–+7wšD:w«ƒk;z“õ'),
('Wkú„mÿ¯`¡^ScV×G', 'wp-content/plugins/contact-form-7/includes/capabilities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd„òÂ›œSÑà›<µŸ'),
('7‡‘A›`ü|''Ë2`5ı=', 'wp-content/plugins/contact-form-7/includes/config-validator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ê¹(¦Àc;Nœi!R"³'),
('œRŸ0ü·›t¾‰ê]“Ø', 'wp-content/plugins/contact-form-7/includes/contact-form-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ªxÅÇ\0ÉíÊÇ·2j&¡'),
('¥¬Œ˜"@OˆwQ_Ü¨2M', 'wp-content/plugins/contact-form-7/includes/contact-form.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÀC?H½;j1±TH¡'),
('a.IıcÈtRŒÛs.¢', 'wp-content/plugins/contact-form-7/includes/controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿Gšá$h(A@g‚~4«k'),
('/Ãs€—¢êNF¤>ğ¸¢6Ú', 'wp-content/plugins/contact-form-7/includes/css/styles-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢PéP­Â;]Wö’×ºph'),
('Š\r·b!E€çjÚµX', 'wp-content/plugins/contact-form-7/includes/css/styles.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•s\r "kâ¬R÷2tRú\r'),
('043p£Ú2ïP>âÒ¤ñ>', 'wp-content/plugins/contact-form-7/includes/form-tag.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f¢ƒtUqé¯³p:H<Ì'),
('²=‚Ö5^Là§ğ\n-[', 'wp-content/plugins/contact-form-7/includes/form-tags-manager.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³UŞ#*ÓXU30Na'),
('pIû‚:S€ºˆ•v†u', 'wp-content/plugins/contact-form-7/includes/formatting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'û5ß~ş‰W‡Kø&'),
('sÊè×–şš:‡û×hØS', 'wp-content/plugins/contact-form-7/includes/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7ÏH6ßJq‡ñÖv8O€¤¿'),
('ö:Ó±`Jœıi¦L„¤ñ', 'wp-content/plugins/contact-form-7/includes/integration.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'UğTj¶Zä¼V=!QJ‚'),
('õ\ZÖ<rÊÃt<ä_^À’', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/animated-overlay.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+‘/|S\0Œ¢ºÍ¤%ç'),
('—1òéµ¿ç¸YÆl—TKe', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_flat_0_aaaaaa_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»#ã\r–,GÀıë×‰·Û'),
('ÔUu#dÀæà€Âx]E', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_flat_75_ffffff_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÃÏ_¹W*ÎM@âæ¬æ'),
('X¸[â‹˜HÀnú×Ì–	$', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_55_fbf9ee_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o¶Ñ!j‹Å•VÛ®Hî{'),
('/‹DÚc¸‡lõÓŞÜ', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_65_ffffff_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$Å½Pê®uv“µüıŸ$c'),
('0ûÁï&ƒóMºõUe2j', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_75_dadada_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(ˆ$¡2•·…H8ßÀT^'),
('şWzY!­a˜ÊvwQ^Ş±', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_75_e6e6e6_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+7\rü/v€\Z®Ì™*¨’á'),
('E·d­•…œíZEÁZºw', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_glass_95_fef1ec_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Jáª¾A±¥’ÂIP_\Z"ĞH'),
('LìÏ–\0÷y"PíÍ', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-bg_highlight-soft_75_cccccc_1x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òÏ`\0Ä\0†§KÂ¿Ra'),
('E<V6;´N¢K©_³lSk', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_222222_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª«Œì]¹qU?C•½±ó'),
('^DVåáÕ!o$+', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_2e83ff_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e©y%I*'),
('\n«õ5âù=¼IK”&{ïP', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_454545_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ü¢»«#Â¼’!¯A¦Ia'),
('Fô8*"Ú¹şpEm–&-æj', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_888888_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nøM1ÚWÇòh³\0y³'),
('+GIº]$n–¨o‘R°', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images/ui-icons_cd0a0a_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P+ïî¢ö:½±*®…‘<'),
('ÄL9Ô”LêMUÂ)ªMÙ', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/jquery-ui.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñrµ`°só¼Bş¡`»ÿ–¢'),
('s¡Î2K\nš°lÆFªu/G', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/jquery-ui.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`ğ@^İ•ç^Æ »Ãm…'),
('¤²EnZbÍ´]wó	', 'wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/jquery.ui.theme.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',#„dî]î¤2­¡“ñSx'),
(':lÃËlªÄİû´G†„)', 'wp-content/plugins/contact-form-7/includes/js/jquery.form.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢Fp¾²êçïy¦Õ¬#‡K'),
('âŞ÷Î/ôQ&—îá\Z§–¶o', 'wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ôHÅ“ÂBÑ4és:„Ç¤Òl'),
('9âÛHˆM%jš&Ïu', 'wp-content/plugins/contact-form-7/includes/js/scripts.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚\ni‡{•]ìš¸í¶“'),
('šì)K×W&''E ¶F%”', 'wp-content/plugins/contact-form-7/includes/l10n.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W\rA®y:|¹å·…©¯\0Ç½'),
('¤•§…‡ÀXoí€í~ª_k', 'wp-content/plugins/contact-form-7/includes/mail.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V*9hRTÅîÜ C¡ô8	Æ'),
('í4î:¹ÒÍj;F?µõ.', 'wp-content/plugins/contact-form-7/includes/pipe.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'EN(Úª»,h@Û­Bƒ·ó2'),
('¼¹Du÷„KBÔLk£—', 'wp-content/plugins/contact-form-7/includes/shortcodes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ú¶İ¥,«—RŸªWı’\r'),
('¥?‰cKl}§ög5á´°Ì', 'wp-content/plugins/contact-form-7/includes/submission.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''tô/HÆTñÖógaš'),
('Ñ\0p«ïWG±\r}^\r¶Í„L', 'wp-content/plugins/contact-form-7/includes/upgrade.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>)×o=,&òøá³|?p”'),
(' ³Ì®ä.øgú†ówå', 'wp-content/plugins/contact-form-7/includes/validation.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ã‚QLí~å‰ÛÌzE5%õ'),
('Á÷ëNâ“OÆÒTğ)EH', 'wp-content/plugins/contact-form-7/languages/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'YT&\Z˜o^GÔ¨£Èô}'),
('İ‹¼rn}§z¹äw''é', 'wp-content/plugins/contact-form-7/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`ß}v>^¦¹¼LˆŞ:'),
('€aÄÈnFh #Ûˆõñ¼', 'wp-content/plugins/contact-form-7/modules/acceptance.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y’„chş´¢5Ô«Âô'),
('ìÆ¿­ù•æoîF×h”ã', 'wp-content/plugins/contact-form-7/modules/akismet.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Á‚Êñì)ûn‚ı‹ß¨o'),
('\rvk½P-Èt¸Gš¥¦Hm', 'wp-content/plugins/contact-form-7/modules/checkbox.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A…¹ğ]9?Õ,2ï…:'),
('(Ğ,\0[æ7İÌè¹34', 'wp-content/plugins/contact-form-7/modules/count.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6Sıed§ŠËï¬*SRF['),
('\0ß@uœ¥œ2¶îXç¶', 'wp-content/plugins/contact-form-7/modules/date.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'mù§›Şˆ¼ıÁ*æ,"²‚'),
('YIEùâTt2LÕè]', 'wp-content/plugins/contact-form-7/modules/file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'È¿;ó+_4±ß©/>å­8'),
('xó>ÓæE\\°•Q;š\\', 'wp-content/plugins/contact-form-7/modules/flamingo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oÁ#+ô ûlßI° ‹õ '),
('!õBØ\Zl!ŒZ0–æ', 'wp-content/plugins/contact-form-7/modules/hidden.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V(ğ2zşUö{T^ş¼ô^É'),
('µ=—fd¸\\Ó‚vºâˆúâ', 'wp-content/plugins/contact-form-7/modules/listo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«.ÒPùÎ`ä	³›<1ûùê'),
('k	»§Ú<í™(GÚwôÛ‚', 'wp-content/plugins/contact-form-7/modules/number.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6cgï€zÓe\\ú‡^œ'),
('ÃE…Šeä"^¸úzTî‰Ç', 'wp-content/plugins/contact-form-7/modules/quiz.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÚŒBAÕibŠ×…'),
('#ƒÉ´¥ª.\nïI|+òÉ¼è', 'wp-content/plugins/contact-form-7/modules/really-simple-captcha.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0/I‚ç0©væ‰¿Ä9ä'),
('Î]F¦¦à„}¬w€ÈŠ}', 'wp-content/plugins/contact-form-7/modules/recaptcha.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6~ˆ!•íoFRW‘z·œª'),
('\\\nñ;:ÆIÑ"ï@ïOhÉ', 'wp-content/plugins/contact-form-7/modules/response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}‘ì)ï,®¼ïoÉ'),
('İº$;kÙÂJ•	a€l1£', 'wp-content/plugins/contact-form-7/modules/select.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™wÎT«ÑèÁÁ…#Y'),
('J?ø«4­Y‹•h‰e!>O', 'wp-content/plugins/contact-form-7/modules/submit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ĞÇ[Ên¢“Qñ½¾¸mö'),
('bÇN=¿°¨,ÀÆSíà', 'wp-content/plugins/contact-form-7/modules/text.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­!Ø—xI·=½Óp%&-ı'),
('ır°"·-¥\0 E˜w‰¢X', 'wp-content/plugins/contact-form-7/modules/textarea.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’~u`v†–L™ôphŒ'),
('¤¡ƒ6o8Š†¥NoL;', 'wp-content/plugins/contact-form-7/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#(àø®k:YÚïĞø(3”'),
(' %ß&à¿Å}p\\?Û', 'wp-content/plugins/contact-form-7/settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Sˆ‚|Òÿ]ç²2³Ûú'),
('\râ¯Â¶2O“Ş2‡ú&¦@', 'wp-content/plugins/contact-form-7/uninstall.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èZò¾f‚-¦çoPŸÑÄM'),
('kN˜ë(l«Zf„E"LmÉ', 'wp-content/plugins/contact-form-7/wp-contact-form-7.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±¸ö%„''&Ml‚NĞ·¢'),
(';›hÇ´M•ûƒ\\–ö·:Ú', 'wp-content/plugins/custom-post-type-ui/changelog.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!lû´Á–¦¶Ìÿ(¾ï˜¡D'),
(',A''Í¯¿\\\0‡Æb\\¯ó', 'wp-content/plugins/custom-post-type-ui/classes/class.cptui_admin_ui.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%÷Øš¥0j!mêÚR*ÖĞ'),
('\0(¼$ÌÇÍ9à<µOvİW', 'wp-content/plugins/custom-post-type-ui/classes/class.cptui_debug_info.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ıÜÈ|Ğ¬{ê²ˆÆ!ˆ\n‘'),
('¸ş:"hé†±êDÜlš/', 'wp-content/plugins/custom-post-type-ui/css/cptui.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÔyÃ\nÑyêqÛÓw¤î]J'),
('ª•‹¿"H†éŒ]-±Ç', 'wp-content/plugins/custom-post-type-ui/css/cptui.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ğõ¦•Ë .ùé"œt9š'),
('³\\²®¯­TÁŞ¯×', 'wp-content/plugins/custom-post-type-ui/css/cptui.scss', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'wÅ¼²¶xôúá,”ÁãÆ‰'),
('ïY‚-|ñåºÚBÌfÅJ÷', 'wp-content/plugins/custom-post-type-ui/custom-post-type-ui.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸C\\>Ùit¬''¥¾¹—ü'),
('±g¹&äÍ“•ö€8y–}A', 'wp-content/plugins/custom-post-type-ui/images/cptui-icon-128x128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯‰u‡é&€”Ëô´høåÖÉ'),
('V=¤„…ËÀAş³üTƒ®Ö', 'wp-content/plugins/custom-post-type-ui/images/cptui-icon-173x173.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ÀvRàèu´ËøQÂb'),
('''>e1u›EN&-	à±%Š', 'wp-content/plugins/custom-post-type-ui/images/cptui-icon-256x256.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ã`@‘•Nàêe¦Íd«Ÿ'),
('~ág:(ÖkL¹:)pn*', 'wp-content/plugins/custom-post-type-ui/images/wds_ads/apppresser.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òåZÕ3«v€Ûüw|B='),
('Rb0¹šÇÈ}G®.ê¹·q', 'wp-content/plugins/custom-post-type-ui/images/wds_ads/cptuix-ad-3.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ğ3vßA)”®ñsA"Í×~');
INSERT INTO `vi_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('ø-Nß‚¸oÂ=´}ÿİÈ', 'wp-content/plugins/custom-post-type-ui/images/wds_ads/maintainn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'şØî^µ8­Ü„Ë°dNùu'),
('x,DƒUŒôØñoûm*ˆ•', 'wp-content/plugins/custom-post-type-ui/inc/about.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Œ„Q®¤¢ï,´'),
('†¨#0¥xíß¤pK5', 'wp-content/plugins/custom-post-type-ui/inc/listings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H1×¬ÒU;Ã[èZcrDm'),
('ÇÒòÄ4pHX!çığÃo', 'wp-content/plugins/custom-post-type-ui/inc/post-types.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'îÄš ápdÉf`…¿Oµ '),
('ŞÚà!ìUI''T_{´ãiB', 'wp-content/plugins/custom-post-type-ui/inc/support.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™yÑòÂ×ÓY¼ªÔ/Ç$'),
('	Ÿ^çÑ’ªÈùnßÔ³Jç', 'wp-content/plugins/custom-post-type-ui/inc/taxonomies.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Wå’¹8ˆ‚º¼Év@'),
('[ÿ20avë(Ÿe‡Ç;', 'wp-content/plugins/custom-post-type-ui/inc/tools.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xÀ“he° »NæjzC'),
('…q4Ùõeİ"\n;c*', 'wp-content/plugins/custom-post-type-ui/inc/utility.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oÒ‘¾²æR’PÍÌ'),
('1Uçsbuj¬7ª	xËævt', 'wp-content/plugins/custom-post-type-ui/js/cptui.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/‘æÇ,øJ„Ä³Ş«¨Fù'),
('wXÎÔ52ûÂ§2*	+', 'wp-content/plugins/custom-post-type-ui/js/cptui.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·O|4‹‚ÀHÁšpMøn÷'),
('e…gÃã|¥{è‡Â§gß', 'wp-content/plugins/custom-post-type-ui/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r&$Sæ¨†YyÊ¾''ë8u'),
('pú¢uüw¨œS‰É´0¿', 'wp-content/plugins/hello.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R§ğóbAo“št!_~½'),
('ÔèòÿåÍ0*îWÇÔ', 'wp-content/plugins/index.php', 0, 'gD,Vë§=\\ÆbP', 'gD,Vë§=\\ÆbP'),
('Ş<Æßå86Ko…ŒX', 'wp-content/plugins/wordfence/css/activity-report-widget.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S—šö\nxówAú©'),
('ı!@A‚;1)SJ—Èb·Ì', 'wp-content/plugins/wordfence/css/colorbox.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jR èÁSşü7½‹¾•M‡'),
('üÕÅ·N	\0ùÛf\ZT²Š', 'wp-content/plugins/wordfence/css/diff.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ä"¨‰“ôÕy1…÷4ZÆ'),
('aå|\n‚ü|@X\n¶œfM\r§', 'wp-content/plugins/wordfence/css/dt_table.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢[¡fşæ\Z™ª}ÁI+o'),
('»œ5Z´‘ÿüÌo—Ò®<', 'wp-content/plugins/wordfence/css/fullLog.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+·İòòW‰jwË„}šä'),
('à!ı×0Ç°tTµ(— §‹', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_0_aaaaaa_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f\\KùK‘G’Ğ»SAÀ'),
('LW]êä=ŒàôÅ\0;ğ:', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_100_1997c7_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jè\ZKÈš-"ÉÖa{*0'),
('•?à>\0%lD[T‰“', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_100_222_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿^×F•"ÖI~ó\0‹GÍ²'),
('“¶Q³c$2Û6.¾i…­', 'wp-content/plugins/wordfence/css/images/ui-bg_flat_75_ffffff_40x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ');7/EÊûwâ¯Açßg'),
('ênmq\0³½Í@pF‚d*', 'wp-content/plugins/wordfence/css/images/ui-bg_glass_95_fef1ec_1x400.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'À0ìÈà(5Ö&3lhê)W'),
('P£â©£-Æ…‹ÅÀúiƒ', 'wp-content/plugins/wordfence/css/images/ui-bg_highlight-soft_75_a5a5a5_1x100.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…ım8O@“üd8§<QÅ¾'),
('Å–ä/PIƒ£¯«c­D=Y', 'wp-content/plugins/wordfence/css/images/ui-icons_222222_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':<Thô„ğzÄ£ Ùâ*ËŒ'),
('Eõ0fÛ¿oÀiã\rç"‡’&', 'wp-content/plugins/wordfence/css/images/ui-icons_cd0a0a_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ıÅŒé»o•8Å%§î'),
('ŒM$!©‚ğ\\Íz´ôÚ', 'wp-content/plugins/wordfence/css/images/ui-icons_fbe569_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˜ĞÂuİ3À<½•É…Òj'),
('üìM¯J¢ğdB.€™î£*', 'wp-content/plugins/wordfence/css/images/ui-icons_fff_256x240.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Aa+JD$ø2Ÿ‚J”Ú'),
('j«æo¤+ˆ±sÛ7Û8', 'wp-content/plugins/wordfence/css/iptraf.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+	Îæë<¼dq…7^³'),
('?°$ O™ŒÍ;Ñ>Õ¥å', 'wp-content/plugins/wordfence/css/jquery-ui-timepicker-addon.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')eíôfÕ#¡`P~7Än'),
('WNä	b%Õ9pY&Ø‘íí', 'wp-content/plugins/wordfence/css/jquery-ui.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N3(Â- M‰²å¡\ràÙ'),
('²h{n¼V"ó¹á0—‰Ï', 'wp-content/plugins/wordfence/css/jquery-ui.structure.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Şí\\@¯1D«é?ÏÒ™'),
('rtŸi˜. ¿:vŞV&Ó', 'wp-content/plugins/wordfence/css/jquery-ui.theme.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’Åò{_®ØÎå¯#ÆÔS'),
('oĞåaÈæw5hŞ@+w\r¼', 'wp-content/plugins/wordfence/css/main.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú`º\rT·År—xà¾Ç'),
('ºüæ†sáYXÍš¬ã—', 'wp-content/plugins/wordfence/css/phpinfo.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£<`Ì,7‘ÜJu\0Ÿ'),
('J÷	4ÎÖ/«ÜÊ|¨ı	Ò', 'wp-content/plugins/wordfence/css/select2.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚Xª«N|7Z¾ò(Cï'),
('Î‰Å¾€°h	ë¸ë—', 'wp-content/plugins/wordfence/css/wf-adminbar.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œÓh±×Ã¶Êå?ØWm'),
('ñ9Ÿ`ç¿­ƒ!bº†ş!', 'wp-content/plugins/wordfence/css/wordfenceBox.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^—à+‘C„’­.f‚ê¦Á'),
('æ§˜ºî7İ^ô»b³"³', 'wp-content/plugins/wordfence/images/back_disabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hÙÂÔgØúïiîã†>'),
('ëÈÄ×®FîêpŞs¥Ø4£', 'wp-content/plugins/wordfence/images/back_enabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡¡ñø]È÷£”ÒHÃ'),
('^yG=ÚœFg;3‘Ã¡©', 'wp-content/plugins/wordfence/images/button-grad-grey.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•ÄRCì¿ÊTyÕı?Ş'),
('N7—Aä´\0ÂnnV¾Ö‘í', 'wp-content/plugins/wordfence/images/checkbox.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"³ÈG\rû6|ôˆ˜€'''),
('â$8«.Vpäj½BÁ@ô', 'wp-content/plugins/wordfence/images/flags/.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4.‚M:ß<ûK0ÜŸÎ®'),
('\r–«:©§”ù×UË£', 'wp-content/plugins/wordfence/images/flags/a1.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4.‚M:ß<ûK0ÜŸÎ®'),
('\nÆ¥uoàÚefaœón', 'wp-content/plugins/wordfence/images/flags/a2.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4.‚M:ß<ûK0ÜŸÎ®'),
('''}H™ šWîâÔœ\n{', 'wp-content/plugins/wordfence/images/flags/ad.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+¬\Z tVŒù[EØœK“'),
('TÚ.ñ€áÊd£Á8ãy°', 'wp-content/plugins/wordfence/images/flags/ae.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®Ü7Æ4%ø©¿³Eê''M}l'),
('—ø»˜;ŒcS‚Ô#nv•', 'wp-content/plugins/wordfence/images/flags/af.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿ5º{dQí Ãœ³Åç'),
('bİğ`¿×Ò¤¹®-17@', 'wp-content/plugins/wordfence/images/flags/ag.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©·\\$,™ £°ù'),
('ŞÌèş³·“¤ÀÌ/ÇÏ', 'wp-content/plugins/wordfence/images/flags/ai.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7•§Ö–¢*¤¬´ì†¼¼'),
('åP¢vÄdºI®Á4õu', 'wp-content/plugins/wordfence/images/flags/al.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ğè:\reİ´OoğjºDO'),
('Ï~„pEÙ*«T°E4èû', 'wp-content/plugins/wordfence/images/flags/am.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$/ş•ìcC\\&£ª§P%'),
(';ä-#nâ9İ|Š?=çÈ', 'wp-content/plugins/wordfence/images/flags/an.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{Ú‡Ì0sw1¦Z±Ì'),
('Áşÿyn6KzÚ9œáGè', 'wp-content/plugins/wordfence/images/flags/ao.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A¨ª÷m$ØÙ§wh'),
('Áêş¸NC‚ÈW›“†»‡¯', 'wp-content/plugins/wordfence/images/flags/ap.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^˜¼d¡\rÙª˜_P—'),
('uëõŸ¬\rÃèa"¶‚\râW', 'wp-content/plugins/wordfence/images/flags/aq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uÊÕw ™†ªÆé‡šd'),
('õ»á¯°Ó¦0ncm‘', 'wp-content/plugins/wordfence/images/flags/ar.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ĞlË¼ß´îUcph\ZK¶'),
('ƒ:èİPb§å4ü³ì	çu', 'wp-content/plugins/wordfence/images/flags/as.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ç_—WÀú^5F^¸õÕÈ'),
('QB˜ x‹ MB«æaö', 'wp-content/plugins/wordfence/images/flags/at.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eşÎö"ÿ‹‹ö—O;'),
('Q2''-Oİ9ÅÄçù¶4', 'wp-content/plugins/wordfence/images/flags/au.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r¼…Â”±¶/¥CsêY–í'),
('MSœ’Ùkì¥˜Ù\nöŒ', 'wp-content/plugins/wordfence/images/flags/aw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ë3u³òyœ˜Öjuàø3'),
('GúºŸÖü“T!®€†Aà­Ö', 'wp-content/plugins/wordfence/images/flags/ax.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FuèwbÌ…€Ç(w\r°¾'),
('.€¸B9¸ß9&–µiâ', 'wp-content/plugins/wordfence/images/flags/az.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ïş?Ü"7^¡î`}]–İ@'),
('‘SÛmòğ$\\xH4Û', 'wp-content/plugins/wordfence/images/flags/ba.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æTÌDX,àJ¨y«…$ÔÈ'),
('ëpÉÄ¢ç „A^s%', 'wp-content/plugins/wordfence/images/flags/bb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–,4ıu‡\nñß¯?Äg'),
('¼ƒH‡E¿1&Y·œ', 'wp-content/plugins/wordfence/images/flags/bd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸(ÚU!¶Á³ÏÂ¸â™!s'),
('\0¤‹ùIÜJ—¸-$Œ€', 'wp-content/plugins/wordfence/images/flags/be.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'aòÍÙ£\Z%˜¶½âÁz'),
('{¼Ñ_9Î­»é³eş', 'wp-content/plugins/wordfence/images/flags/bf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'cYñ8ãiÒñ•3¸â¬Ô'),
('õ)ú©¹ó\Z¸cq&#À,O', 'wp-content/plugins/wordfence/images/flags/bg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '},z÷ˆÈdğ»@¨@Ö^'),
('EŒ58 B“C)Jùsªú', 'wp-content/plugins/wordfence/images/flags/bh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œ@Tıà&„õŠÿ³VÆ'),
('ñûƒ>Xï@P°›d~R', 'wp-content/plugins/wordfence/images/flags/bi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ú´Bp·©+ñş–ğÄ'),
('b32ğN?RŠÒVúMC—R''', 'wp-content/plugins/wordfence/images/flags/bj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N,X\nlùY—%›ü_ôØ'),
('Á3y èúu‰E¬¦1wÄ', 'wp-content/plugins/wordfence/images/flags/bm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Òã|¨Ûë¥¼	Ò9«eX'),
('œ ‡¨£ª¥-âA÷&W', 'wp-content/plugins/wordfence/images/flags/bn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '“‰zğDÌÂ(­+J'),
('gMÔBMÔ}ÓŞ­!ßëÚ', 'wp-content/plugins/wordfence/images/flags/bo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&×7_ğ |>§)ûŞï'),
('U­÷}5&`J[ u:', 'wp-content/plugins/wordfence/images/flags/br.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm·H%”Wü¼Q“‚[âëë'),
('²Æ„H™Àè¾3Hâ²×!‘', 'wp-content/plugins/wordfence/images/flags/bs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'XÎsYI¢åØÚ}ÓT'),
('ÀêøÉŞÿº¢Œ«Q,În', 'wp-content/plugins/wordfence/images/flags/bt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥KiKçu<ò_Õº’v%'),
('fÉ¦İ+¿ŠÌWKZ"¹', 'wp-content/plugins/wordfence/images/flags/bv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ôÒ’TŸÇ¯WóF”«5ö~'),
('gñƒ“Ëºæ†3ÆC,', 'wp-content/plugins/wordfence/images/flags/bw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÑÿEÊ.ºÆgÒ;æã˜z'),
('k·à±Q‘Ÿí˜íc d', 'wp-content/plugins/wordfence/images/flags/by.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_£6\rÅÿŞAû‚¯vŠüÊ'),
('eG£=¥Uù\\úÂl¾', 'wp-content/plugins/wordfence/images/flags/bz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8“ß e^z…ñ§e«Í'),
(',æÜ—«„’<9¹Tj`', 'wp-content/plugins/wordfence/images/flags/ca.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"ç…J+/<úâõâ6('),
('Y÷—«*¢Mİ$ÄÈ½', 'wp-content/plugins/wordfence/images/flags/cc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÏêòTÃ’²›;ñ+RÜ@'),
('•/àÈ¯È©sc"¹¹‚Ò§', 'wp-content/plugins/wordfence/images/flags/cd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WÉÔj°mû­k”ì“'),
('t­p§»şŞÄo"İ|:U%', 'wp-content/plugins/wordfence/images/flags/cf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*tü½)¥é’MØ‹F)'),
('`X[r»°ëíšŸE', 'wp-content/plugins/wordfence/images/flags/cg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®UXB''#¸TØw¬¼{'),
('©æ^°·,ûû^æˆ‰8ÉÆ', 'wp-content/plugins/wordfence/images/flags/ch.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7_\ZeíçM¼Ñ\rÙ'),
('e>öY9Ä¢œ¦S‘&', 'wp-content/plugins/wordfence/images/flags/ci.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Øhå¹zPÍÛF+dÔy&à'),
('Ü‰]”júe½*:…¥òŠp', 'wp-content/plugins/wordfence/images/flags/ck.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'é¸sóÎ¬³ïôiÔ›ş€'),
('/t;/bñÊ¤4!Ì"&', 'wp-content/plugins/wordfence/images/flags/cl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hş´1ÕÜ®í­8»–'),
('Q;İõğê¼¡Ê¿æËª', 'wp-content/plugins/wordfence/images/flags/cm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ThŸúßWÿF—CİJŠ¼'),
('Zà%n•a?á\Z–/·', 'wp-content/plugins/wordfence/images/flags/cn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãF[ˆ˜«MZíìNÁ8'),
('S³dÁ:¶ÿjr-I”ÛÆÓF', 'wp-content/plugins/wordfence/images/flags/co.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñ7"‡÷}¹ºË€®´Ğ'),
('Q	1Ş•úb PSW¹¶—r', 'wp-content/plugins/wordfence/images/flags/cr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£"q’Ùêì»”ü‘mè.'),
(' —Bê¸şı”Â¾æœCJB', 'wp-content/plugins/wordfence/images/flags/cs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´ã\ZœmÜ@\nnÍ#·—'),
('œÅ\nKnEH[„_íˆtÙ\Z¥', 'wp-content/plugins/wordfence/images/flags/cu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŒÑº7²øéÎ½-T\n¨Ä¤'),
('[h…i&.æéªE\r5S”ë', 'wp-content/plugins/wordfence/images/flags/cv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5`€	÷xJ´ëB€WÓ'),
('‡ºqàÃ>%£ï<HİB%G', 'wp-content/plugins/wordfence/images/flags/cw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P¹%:éê—''_z´Üfh'),
('×Éo÷(¸ÿQÓ<Ú(ôô', 'wp-content/plugins/wordfence/images/flags/cx.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ƒ:Œñî	B¾€2ÆÓÓ'),
('6À±ôáj4‹1]o½ôØ', 'wp-content/plugins/wordfence/images/flags/cy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'È•2ÁcsryĞ8<Ê%\Z,R'),
('vñÑäâÃ°šM£vÃ:i–', 'wp-content/plugins/wordfence/images/flags/cz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'İ\0¨yó S(18´Å#'),
('ÄzkˆnñQm„ğ|Ç¸tkÊ', 'wp-content/plugins/wordfence/images/flags/de.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n‘Š¯ñ¼áNbœğŸ”Kí'),
('çòŸ¯†{tŒ‘vOz×³', 'wp-content/plugins/wordfence/images/flags/dj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gá-6¹~Ôğ·$İ‘ï'),
('´sF"tOß“‹®;_‡*.', 'wp-content/plugins/wordfence/images/flags/dk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ZößDn~WMÕ¿MÚ'),
('&Äg½ÂHi†›“(¤', 'wp-content/plugins/wordfence/images/flags/dm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_\r&Œ.S%¡™V[\Z5YR'),
('tøªÁ•âw*‡>ª', 'wp-content/plugins/wordfence/images/flags/do.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾V×:EØGaXğ—öz'),
('jßèkQÁÀÄàåí«0''', 'wp-content/plugins/wordfence/images/flags/dz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ş“hîª9ª×XÈÈıÔ'),
('6¤ÔKïVÔÎÙuëN\0¨5', 'wp-content/plugins/wordfence/images/flags/ec.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÎA$ÍŠz»€ˆ÷ƒ÷ª	'),
('ÈqğùÏY¿ÚÁ×Hœ"¨Õ', 'wp-content/plugins/wordfence/images/flags/ee.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ZšVFY3£\ZXLŠÈÜ(úı'),
('AmK:`ìÌçG¦', 'wp-content/plugins/wordfence/images/flags/eg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”t±{ğ-/9ÉME-¨·Ã"'),
('IŸåƒBÂ×¹7å1T,å', 'wp-content/plugins/wordfence/images/flags/eh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';Õì[e¾†Ìï¤AuK'),
('À^[ç¢º’X„#ù', 'wp-content/plugins/wordfence/images/flags/england.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å5Éã[ÑÔW,Ç''oÅÍ'),
('Ş½sæ£ã¢@1i:\Zã', 'wp-content/plugins/wordfence/images/flags/er.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–àAQ‘¢Ú	uñV®¦o½'),
('61ôJüKgO 8 ', 'wp-content/plugins/wordfence/images/flags/es.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f)„£.>''ÔµİR‰	w'),
('Ç¸±ÒK*ÜÅuÒƒÌAv', 'wp-content/plugins/wordfence/images/flags/et.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T\rPùË\0ˆ%á'),
('>ßA\r´D\0éŠxÖ7à', 'wp-content/plugins/wordfence/images/flags/eu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ä­2#Ï«óhk ¯ª’s”'),
('Mü:OGˆædy½Ñ ö;', 'wp-content/plugins/wordfence/images/flags/fam.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'PÁ	a7\Zç<êh#òú'),
('À¦ÄìŠ¤>­ùj1^', 'wp-content/plugins/wordfence/images/flags/fi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´(ıóKí q¯®i+šö'),
('æÍ¾%©X¦[ærşŞ\\fò', 'wp-content/plugins/wordfence/images/flags/fj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$”n´ €=}<^(]\0â'),
('\\Ÿ‹I:ŞÃÚ²EX¨†—WO', 'wp-content/plugins/wordfence/images/flags/fk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T¢°Ià–]’íQı\n1'),
('opUfü›Åš1€†TeRä', 'wp-content/plugins/wordfence/images/flags/fm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tm˜''¤˜Jò°Ït•İ?'),
('Öhƒ`_Jß#İS›ˆ_,R', 'wp-content/plugins/wordfence/images/flags/fo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'şıå×óe³œ¼^KïIV‘“'),
('YÖ…4œò:+Xª[Z\Z ', 'wp-content/plugins/wordfence/images/flags/fr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡%›ÿ²}È2ïK¸à°óó'),
(':"»Ì%^ì@ë¿jğ<', 'wp-content/plugins/wordfence/images/flags/ga.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'à˜ÃÜEŸòød\ZÌ‹•õ'),
('{Âµæ´ÂŠ6\n×!³Äµ', 'wp-content/plugins/wordfence/images/flags/gb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ûÓêô?îÙçIg*\Z›'),
('t;ø‚Qõ…<—eãÛr', 'wp-content/plugins/wordfence/images/flags/gd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­?B¶ ~Ìš¨WVÚr.9ì'),
('bu/~ó½µIÖ„9î»', 'wp-content/plugins/wordfence/images/flags/ge.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹hÀ”!4 ‰:¾ÿR'),
('voFXcœÂ%şÄmù/¿è', 'wp-content/plugins/wordfence/images/flags/gf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$’ü-à[S‰ê¬D]´¶'),
('%²SË|ìOÁî@su', 'wp-content/plugins/wordfence/images/flags/gg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*½*™ÒOtƒ3Ì‡h˜ú'),
(',ÅäìİÜM9[IvÂ-‰Q', 'wp-content/plugins/wordfence/images/flags/gh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'â7ÄKÔzxn™ÕêÔåFn'),
('ŒéœÃÃ5¬º™.;l¼', 'wp-content/plugins/wordfence/images/flags/gi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '›\rVe¾»ÑâOK*a\\'),
('&©iNó$Jñ…oFúr-„', 'wp-content/plugins/wordfence/images/flags/gl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷(kt5Ì*\r’iélèü'),
('\\&Ä¨æfo…–İˆgÆW˜', 'wp-content/plugins/wordfence/images/flags/gm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ş×1¶{ÿˆÍY0]ÂŞ'),
('›îş1(\\ÑI™ğ‘œoh', 'wp-content/plugins/wordfence/images/flags/gn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{ü’Èıñ>ÙzIÔ	ƒ…ˆù'),
('a£#ÁçnÛ2fl\\Î	•', 'wp-content/plugins/wordfence/images/flags/gp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥êÂ©Õ¨½m» •g'),
('ävŠ‹OÔŸÏ†í:Dpg', 'wp-content/plugins/wordfence/images/flags/gq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ıØŸ À.³é«Ô¾˜j)q"'),
('-ï»êP¯ÈÉU\r[Eë', 'wp-content/plugins/wordfence/images/flags/gr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l¿›\r C§üô½éu¤-{'),
('ú^©¿½øEj²FÏŞ…0', 'wp-content/plugins/wordfence/images/flags/gs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b ²¡Ép²H‚¿ésCÿ}'),
('ÌïPÆˆvûı»¸Œ$è', 'wp-content/plugins/wordfence/images/flags/gt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''ÂØvéqÁè¬#Ö\0@—'),
('FY¹Ÿ¿»§$\\8“’^X', 'wp-content/plugins/wordfence/images/flags/gu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<èûXÃ£y÷€ÃÌ†²@Ğ'),
('Û9Ãæ^+«tˆëÔkóöË', 'wp-content/plugins/wordfence/images/flags/gw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9ÚMj+„çı+ONßzp'),
('şùn±ñ8·Ã›íšƒ­', 'wp-content/plugins/wordfence/images/flags/gy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿ„œ*°*÷"Gô|‚u'),
('êæèhDÃUX\rôõğ|•¥ı', 'wp-content/plugins/wordfence/images/flags/hk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÏrY‹FÏfŒÒÌ†U7Â'),
('sùš¿Æß¡k×Ğ±²Ê', 'wp-content/plugins/wordfence/images/flags/hn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1á©E•ÊÏP»‰ë+v'),
('‰kıï¿HÊëÙìğ| Š', 'wp-content/plugins/wordfence/images/flags/hr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—íİğ3òÉæœû•Âƒ7š'),
('%èJ•„Ã''šL©à—Ù¸', 'wp-content/plugins/wordfence/images/flags/ht.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!–!ã¿wÛÄÕ²HıÖT?Å'),
('L ñ\rò+q¼|¼h˜•|', 'wp-content/plugins/wordfence/images/flags/hu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&Œ";d>]pG¯¯@·!d'),
('3\nÁV>›ÔO9ÇªŸ	™ N', 'wp-content/plugins/wordfence/images/flags/id.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Üt”3İÆÔúºmÿ'),
('±İŒİ)Æ«ïÌ%ÓZäûé', 'wp-content/plugins/wordfence/images/flags/ie.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•çO&Ì-qŒ9–fFÇx°'),
('=5ĞÁ@NŠ£%¿mº™d', 'wp-content/plugins/wordfence/images/flags/il.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'áªUPîÛO\nFz†ÊÂÉ'),
(':õ6ÀM$ÛÎ¢]“pm¶Ü', 'wp-content/plugins/wordfence/images/flags/im.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'º:K,}°’¿´ã0Rös'),
('İ˜`b1tXÂ÷\ZZ´ K/', 'wp-content/plugins/wordfence/images/flags/in.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢àsü»¾²Y®„'),
('À³µQÕ~ÓjJÑÂ€D', 'wp-content/plugins/wordfence/images/flags/io.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿrûÒÈÒ²W«WœrÉ'),
('RÀp5åÉô¢ŒñSi', 'wp-content/plugins/wordfence/images/flags/iq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õ¸!\nµ–ØÁs»7¾'),
('/k\n¨å•—İË8³šª“+', 'wp-content/plugins/wordfence/images/flags/ir.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Àk‚noT''îÈÚÉ{K['),
('ÌqÛ©õ†Õ	‹ÎÁ‹§e', 'wp-content/plugins/wordfence/images/flags/is.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`ò¬)™¾ÒÇ·h§ŸE'),
('XÛ2,ÒIìEÖd£{<', 'wp-content/plugins/wordfence/images/flags/it.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ëşÃ!´Ú%X¸bÌ£'),
('Aö<á°?ï×cŞQË', 'wp-content/plugins/wordfence/images/flags/je.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rÍ;¶“¯­O0]•4­´ßj'),
('’ñ7=Û$µ¾Êéÿ=hë', 'wp-content/plugins/wordfence/images/flags/jm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·nËrmÏ“6şÈfÌk¦"'),
('\\vvÚ¡wx^¹´4C1', 'wp-content/plugins/wordfence/images/flags/jo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ó‚Ù1ÿ²ñ¦±ÙÜóWø'),
('R)Ô¡¨`PgÙ´·Ş®^„', 'wp-content/plugins/wordfence/images/flags/jp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ş^4>B±´“ÑD‰òYÂ‚é'),
('pñZV_	Â]€¡l{¿', 'wp-content/plugins/wordfence/images/flags/ke.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oE5¤JUI´ÆWò>İsZÓ'),
('ˆoÖ<®û»I}œ\n{`s', 'wp-content/plugins/wordfence/images/flags/kg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ò¸¥¬\r¥Í§5ÇèóÓ'),
('=¬²îìÑGÙ—“\0öC', 'wp-content/plugins/wordfence/images/flags/kh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'C&}r@s¬šHL¥ÁOöâ'),
(']€â´g> ºÓ¡÷­', 'wp-content/plugins/wordfence/images/flags/ki.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æ³áÃ[ƒ#0+µ´AÒg¿'),
('-İÎ.‹z°e‰Š´—8á', 'wp-content/plugins/wordfence/images/flags/km.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'âvæ2ûáj\Z»I@	N\\Æ'),
('S¥T+)Îœ<òCåe¶2\r', 'wp-content/plugins/wordfence/images/flags/kn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Hpä¤(Œ©"ÜIíà[Ä'),
('ûŠi÷Y:\0$°¯z¾÷]', 'wp-content/plugins/wordfence/images/flags/kp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÀÛ8[÷š³!ˆzå˜LEt'),
(' &ŒK‡,hÈ_ÌR€ğ', 'wp-content/plugins/wordfence/images/flags/kr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'reâ`¨‘Ì1¹j?;ƒf'),
('Œ’W3|¼îåxõÓ•rÖœ', 'wp-content/plugins/wordfence/images/flags/kw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³òï×LİºaÛft‘5Õ'),
('·üÕğèb¡³hÖ¸{-w(', 'wp-content/plugins/wordfence/images/flags/ky.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ëŠ¤>Ä@ã|g¹H˜3òí'),
('\noÇså{–8oYë?', 'wp-content/plugins/wordfence/images/flags/kz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ºñö±şzß€ô9\r¡©Â'),
('¥˜ªtI@ú´è‹,æë([', 'wp-content/plugins/wordfence/images/flags/la.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z…rÎÑãB\0/>~i'),
('¾Ó¨ì:ß:øÇèêFA©', 'wp-content/plugins/wordfence/images/flags/lb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯¤ÎHƒ(W8Î¤×JW'),
('aıö?ñ´X@¾€Œ¾—', 'wp-content/plugins/wordfence/images/flags/lc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£ÕfF·ênîm¤Uë%\\'),
(' ¥`ªr’²Îó–¹A', 'wp-content/plugins/wordfence/images/flags/li.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ë~Á[k"Ó4Ûê{‘Ò;'),
('Nu.†˜N3ÿ´XT‹Àòù', 'wp-content/plugins/wordfence/images/flags/lk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·úFqO›Â¾›.·aA'),
('ïÎYf ùn„“¾Ø±yé', 'wp-content/plugins/wordfence/images/flags/lr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J:”‰xŸ^bö;ï#‚uc'),
('$Z<0aeN¿—œT­¨Ä', 'wp-content/plugins/wordfence/images/flags/ls.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tx¡•ñE·&Ê®m’\rnÒ'),
('¿mª}§†Ã¾‘ÿ+s]', 'wp-content/plugins/wordfence/images/flags/lt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5“.%Vşå‚zlïÃ'),
('9ù÷Aê¯‹rm\rX', 'wp-content/plugins/wordfence/images/flags/lu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Û5œÚ¡ynµÃ7õxá'),
('‰^L9ÑZY†Äÿ„3Àq', 'wp-content/plugins/wordfence/images/flags/lv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–CmôÓà³|“.„_'),
('hM®ôªxù•åhª¤''', 'wp-content/plugins/wordfence/images/flags/ly.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Î§CÌ²Û¨b#~<Qñ¦'),
('?Òz¾O{9Š&ì~=vî¹', 'wp-content/plugins/wordfence/images/flags/ma.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+”~É¢ÍƒPxU›'),
('nIŸA	ŞR6Ùñ	ˆ}\Z‹\n', 'wp-content/plugins/wordfence/images/flags/mc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(Í	F­Vì–yÇ±.Èm'),
('œ/Ğ?™[xL’"ñ½N', 'wp-content/plugins/wordfence/images/flags/md.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(¢Òok=h½ğìÜÏa­ö'),
('<´^ç^Úi6Ôµ5«„', 'wp-content/plugins/wordfence/images/flags/me.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Zs»°L5‡¸ÇäU’ØÊ¢'),
('ÉÑèMÁŒù["\\Û:PØ', 'wp-content/plugins/wordfence/images/flags/mg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µ£±Äš|ÜÔdôà>½'),
('xxPyÜªŸ‹1—Á¯Ş', 'wp-content/plugins/wordfence/images/flags/mh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿ‡KQå‘:CÀYM'),
(' ­>e‚‘œH…Ùb\0', 'wp-content/plugins/wordfence/images/flags/mk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Áçƒ¿¡šô0\nÂ-¤oµ¥'),
('%J!Ó¦[É,Ã}VšÇ•', 'wp-content/plugins/wordfence/images/flags/ml.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V°1²€~e¶áÄx»Éå'),
('æÒ]™ØZs¤@~OQ', 'wp-content/plugins/wordfence/images/flags/mm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uÊk0I«ZAfŞão'),
('ß¥ä“¿~;«ıQ2Dåã', 'wp-content/plugins/wordfence/images/flags/mn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÉC'']j¬Ïì±ı…n`'),
('ˆ¦™Ğf¡<‡u@ÍÜ­îìÁ', 'wp-content/plugins/wordfence/images/flags/mo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f‡ Oÿ};Ã«1¶À'),
('b•Ëí³Â®rùÁ>', 'wp-content/plugins/wordfence/images/flags/mp.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å†’;ıA&nÁ¹œï„='),
('*_ôóçLfV}ùxfN', 'wp-content/plugins/wordfence/images/flags/mq.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?ìËH\n¤ „\rp;IE¦'),
('@$"óŒ\ršf(7¨“U&', 'wp-content/plugins/wordfence/images/flags/mr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Êû%“{¡‰çm³\\¾x'),
('k­¸F¬¨3ÓĞlÀt', 'wp-content/plugins/wordfence/images/flags/ms.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '“åïîŞ›y¢ÃÇ¨xWõ'),
('½Í&àÍL!³àÜ}Vm `', 'wp-content/plugins/wordfence/images/flags/mt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RdZP|¾i„QÚŞ‰{Ğ'),
('Ö®…Êxbü=à4Š@ë t%', 'wp-content/plugins/wordfence/images/flags/mu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'PÙh''Êú‹ÉğA(lê'),
('‘	˜ğ[00Ÿ79xv', 'wp-content/plugins/wordfence/images/flags/mv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘{ñÁ)¯jüJ{lÈz'),
('(wZêBŸN¿àÚ¸]NSS5', 'wp-content/plugins/wordfence/images/flags/mw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å;¥R¢ÚÁö1ß´QJv'),
('Zv8~ı€`­Ö¬çüö_', 'wp-content/plugins/wordfence/images/flags/mx.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\?Óş¡a®ˆÒ«ÕK/Ò‹'),
('šaSóé•\ZM[h²}·#Hæ', 'wp-content/plugins/wordfence/images/flags/my.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Öì_Zºçfÿş˜ ·'),
('²JgV#ë“OY³', 'wp-content/plugins/wordfence/images/flags/mz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"ë4È­Ş„­£Ô7'),
('q¡‘\0.Ş·\Z`˜«ëÑ-', 'wp-content/plugins/wordfence/images/flags/na.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'À÷1ğ=øXÏu™—4ã'),
('¨ÌSQTé¤ê#k’Ní°w', 'wp-content/plugins/wordfence/images/flags/nc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–nÊşİO”©x¾ÅmÄ|'),
('–óº,#N2m§\\Übj', 'wp-content/plugins/wordfence/images/flags/ne.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ì­…BInŸŞC• sÛ~'),
('zDZû¿èØ‰ƒ±JpñÕû’', 'wp-content/plugins/wordfence/images/flags/nf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥“äêóó5E‘Š‘›ÿ5h'),
('HuQ¨Õ{yµÎ	W$ Ò', 'wp-content/plugins/wordfence/images/flags/ng.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'áA3[Æ EN½"Ñ€YŒ'),
('d4ÍĞå.ûmŸ4×¢´V)', 'wp-content/plugins/wordfence/images/flags/ni.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰2ı÷Ô™,ï•çfTá'),
('fĞ­í¤Jò6ç-u¿]œ', 'wp-content/plugins/wordfence/images/flags/nl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'š®øº‰áKÉñçl\r¦'),
('v‚¢%Q*ÓßÄ[Gw', 'wp-content/plugins/wordfence/images/flags/no.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ôÒ’TŸÇ¯WóF”«5ö~'),
('×MC¶SÚ’%,<µ''L¾‘Å', 'wp-content/plugins/wordfence/images/flags/np.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œ.Ä]×çH“ò2î÷{À'),
('i8LOå°êsL<ºà•', 'wp-content/plugins/wordfence/images/flags/nr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7Éî\Z¿ïøÔ¶|µ'),
('''Ï)q¡„®Z¼zŞs1<L‚', 'wp-content/plugins/wordfence/images/flags/nu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '›Ò(ÚmàÃŸ,öGï™¼'),
('­–''y€x\ZüÁuæÉ@Ú\\', 'wp-content/plugins/wordfence/images/flags/nz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '“H/ ¦^"Šâòq\\t€&'),
(' ­´ò<Ê8P\0\\=\0+', 'wp-content/plugins/wordfence/images/flags/om.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°Z©,;Y¬ĞôO]&'),
('L[LóªÑAÕ®$8Â);', 'wp-content/plugins/wordfence/images/flags/pa.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*®\nırgì@¸Ÿ<™nÎ'),
('ÙŞ(MãRÂ;oÍïŞTPE©', 'wp-content/plugins/wordfence/images/flags/pe.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶”<<î$,şE+<Ñ('),
('ã3\Z~sã¸†¨1¼8)/', 'wp-content/plugins/wordfence/images/flags/pf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É9}Å=T{±îf˜Œ¨\\é'),
('‡ôÊ±''AK"d;‚÷óƒ3', 'wp-content/plugins/wordfence/images/flags/pg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÙÉ‚àì%X;{EÒ³]¢'),
('ü_€&ö³O~9îşRªG÷', 'wp-content/plugins/wordfence/images/flags/ph.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ù„@Ü¥Î){v»Âšáç'),
('`Ú®/ZEò\0º]éÜ‹3œP', 'wp-content/plugins/wordfence/images/flags/pk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p,–ºØğ¦áÜk¯Û'),
('ƒâ¥"—mûéŸŸøo¤Â', 'wp-content/plugins/wordfence/images/flags/pl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–†s£¡¨’í’‘-à'),
('>…Ä%­èp¨mÄŞ', 'wp-content/plugins/wordfence/images/flags/pm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ç§,\nK¦ÿ®‚ºFøN'),
(':Z¿W…Ö_İ*‘if³‹–â', 'wp-content/plugins/wordfence/images/flags/pn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sš;Î;´N»é³nä©˜'),
('½éiàŠCX§ÒI¡\n3', 'wp-content/plugins/wordfence/images/flags/pr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éIÑdM›û€NªîhJê#'),
('õ3ªÖç™—î@…‰<¿', 'wp-content/plugins/wordfence/images/flags/ps.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ábHVÖ¨‹zàšk1Îj'),
('vİe‰_a´Ì´Š‰Á1', 'wp-content/plugins/wordfence/images/flags/pt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÙÔ¢õ±’T:§ìüˆx'),
('ÙìÂ¹S2–İ%ş=er>', 'wp-content/plugins/wordfence/images/flags/pw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V…âù0î±\0L­‹'),
('!“g¢Û‡ÒCÎ;F\ZTï', 'wp-content/plugins/wordfence/images/flags/py.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E¼Ú\næÚEä)\ZøäøM'),
('’åTiàƒ¯q™Tl¢ }¡', 'wp-content/plugins/wordfence/images/flags/qa.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ç—¾E·2‡ÆÍ|ñn'),
('OŞ:ğ23F`  à•,(2', 'wp-content/plugins/wordfence/images/flags/re.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…ph,ê’,Ši€-\r½'),
('öÕÔ $¤Ö½*:Ü¥òĞï', 'wp-content/plugins/wordfence/images/flags/ro.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÖÚš5ËVZÍ´_»İ‹'),
('?ÊçmfŞØ\\Ï-Ûh8T', 'wp-content/plugins/wordfence/images/flags/rs.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶ænPÜeô\Z«éS<¦_®'),
('F„ˆ§ª¬sT­&ı''ï·Ò|', 'wp-content/plugins/wordfence/images/flags/ru.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q?pé¦2Ë^ç™%çk\Z#²'),
('¯ºxÊˆp>“kµO z', 'wp-content/plugins/wordfence/images/flags/rw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ğÅ/T´½®_níQE*Pk'),
(' dç¯#aòÉ8åÆ-', 'wp-content/plugins/wordfence/images/flags/sa.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W÷‹ö\\LbUìCh5âûV'),
('zlGçÙéœ>?î~±m', 'wp-content/plugins/wordfence/images/flags/sb.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'äl<Ê)óššJœ¦ÕÉëğ+'),
('Ë²J0¤\\÷ó‹Vÿ4‘ô', 'wp-content/plugins/wordfence/images/flags/sc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï@l+­^Ö+Ú9U‡ËñÇ'),
('?…bˆUÛ,Iü˜‹„µÂÖ', 'wp-content/plugins/wordfence/images/flags/scotland.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÜµY5úûbG°Œ‘&'),
('½Ğ/jÃ×SAùºCJFŠ¾', 'wp-content/plugins/wordfence/images/flags/sd.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '8Ú¶Æ-£¥‘¢,×p©'),
('¸©v\Zê)•¨)`o£Ò', 'wp-content/plugins/wordfence/images/flags/se.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼]öeFÚBè³/$Irüi'),
('ŒÑáâ	–^dó7[xC', 'wp-content/plugins/wordfence/images/flags/sg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@Ó³‡jXùfÆš iÑ'),
('tëâÃO $Ò¥«h£\r\Z', 'wp-content/plugins/wordfence/images/flags/sh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>GÃ	{nùÕ¤§Ä['),
('& 6ûº³¬ººÓ¾Òÿ1ıS', 'wp-content/plugins/wordfence/images/flags/si.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\rÏ•5`}Òä‹…Ô%{'),
('W¡¯uû®RPbIHí', 'wp-content/plugins/wordfence/images/flags/sk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùx3İiï2f–ùV.V]G'),
('7©Ú+ì8ödöc¯„@$', 'wp-content/plugins/wordfence/images/flags/sl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.—êB`uÔ,&$èô³1'),
('æ½‚mˆFË=”åH°{O,', 'wp-content/plugins/wordfence/images/flags/sm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@7fß§84ÎÖøö«¨,e'),
('nZ„&œúÉYwL„½‹V<', 'wp-content/plugins/wordfence/images/flags/sn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì»¯æôuŠ™I¿Ú©t'),
('³ëªÄe:¢Ì³Û „â®', 'wp-content/plugins/wordfence/images/flags/so.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Wc@ö‘y;ã°W&±ØK’H'),
('&¯YMR¡éz0­vAo2', 'wp-content/plugins/wordfence/images/flags/sprite-des-128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÜL µm„ôîFíæQ×ËrÌ'),
('Nûš-#ØZ3k8‹µT', 'wp-content/plugins/wordfence/images/flags/sprite-des-16.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3J¸—E»E4ßÏM`kfÈ'),
('H¨Ïİ&=µ¾·ª€b', 'wp-content/plugins/wordfence/images/flags/sprite-des-256.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U5š!B<Rİ2½×|B'),
('õZbÕîWÀ‰e`›¡', 'wp-content/plugins/wordfence/images/flags/sprite-des-32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#5PaêŸf½''ŞíÊØ'),
('áŸµá‡@~G5©úÆ2¶', 'wp-content/plugins/wordfence/images/flags/sprite-des-64.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+\n4Fâ’6½.\\j	$‡R'),
('‘fÕè‰U†Ú¬Q7Ølá', 'wp-content/plugins/wordfence/images/flags/sprite-des.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9VÁÎ™T3©Èãu«q"‹'),
('ÕPÛÍ)‹ş3t;•­Ş¯', 'wp-content/plugins/wordfence/images/flags/sprite-des2.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'öÇM—d¡TWÔcp,ô'),
('ªwûÜì×}Ù%¢euV', 'wp-content/plugins/wordfence/images/flags/sprite2.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '} ¬o§€Ä˜_›·2àë'),
('Ì¹9BFèáh†¤tñ,<F»', 'wp-content/plugins/wordfence/images/flags/sprite2.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»ÌÑé£ê¤µëm3;'),
('çoàÑä2-b…t\rïádº', 'wp-content/plugins/wordfence/images/flags/sr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AĞa»p¶ÄL<zu¼¤ÅÛ'),
('\\?+V‘Qaò@…îÔl', 'wp-content/plugins/wordfence/images/flags/st.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ĞRKŒ Ü«{‡İÏ< '),
('Èn¿É94co»öšÄk', 'wp-content/plugins/wordfence/images/flags/sv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'çv8mækšDÇa\0ëS6'),
('Í,?hgŒc÷hÙùË¡X@', 'wp-content/plugins/wordfence/images/flags/sy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<6ÜF_.à6EÏ=TÖNÏ'),
('5öİµ›Còåıüt4A', 'wp-content/plugins/wordfence/images/flags/sz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ': ğ9§Y/X9õõä'),
('V¼¶›6¨9ÑsCª!Š?‰', 'wp-content/plugins/wordfence/images/flags/tc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G/İåê	­¦¹ÈÑÖQJ'),
(']§‡—uF¾aÛÕÒü>', 'wp-content/plugins/wordfence/images/flags/td.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™9ïl0#æ8;·ö6’ ·'),
(']A6p¼ç}ÜÆ0ƒÖv3L', 'wp-content/plugins/wordfence/images/flags/tf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯)–v=^¡ë4“sÊ‰<³'),
('@ò`¥u¨«™f÷¿¼''§', 'wp-content/plugins/wordfence/images/flags/tg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ä‚vÚt£o¸óÕ^ÔÇh±'),
('¨îD«›½NCÆ|\\Kd¥7', 'wp-content/plugins/wordfence/images/flags/th.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆ-ñ(äo½‘)ÌÄÆo—'),
('ì?ô¡~"ñSŒ™%‘É°', 'wp-content/plugins/wordfence/images/flags/tj.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W÷n°ñµXãd,DjnÈ'),
('ÃÌ\0ÂÍmU®ÏÕ#¨ªøÿ', 'wp-content/plugins/wordfence/images/flags/tk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'X°~´ŸÜk¬diÄ\\'),
('qôñºU6JˆÎ£œU‹I>', 'wp-content/plugins/wordfence/images/flags/tl.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Bì\\ÑX[;O\0w9´¯ –4'),
('h†W£(gŞ_æ,rê€Gk', 'wp-content/plugins/wordfence/images/flags/tm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯}kİÔ¶Ï¯ğ1»tÊ6'),
('IgùbmŞ,asŸYp)A9', 'wp-content/plugins/wordfence/images/flags/tn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óŠ3eez³ÒÁŠ¨ş'),
('¢rİÖy)®v|ÇÖr', 'wp-content/plugins/wordfence/images/flags/to.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿj''Kàœ¿^¤eöİj«J'),
('³\Z5”V«úy“Æ¤ºÜı', 'wp-content/plugins/wordfence/images/flags/tr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤¨ü_ëJsŞ^“R­'),
('ÍîS-5Å-†‹ËÜp‘a¡u', 'wp-content/plugins/wordfence/images/flags/tt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´Å\r3î—ítk9V™k'),
('!À¶áÆóA®;HÿÖWğñ', 'wp-content/plugins/wordfence/images/flags/tv.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ıªÂàõeKgĞœlí'),
('"\nñk"cjîiùV€¤(–', 'wp-content/plugins/wordfence/images/flags/tw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l‰€7}šaEYÈ3³ºQâT'),
('<*ÍÙ)Í1Yg¬ĞÍò', 'wp-content/plugins/wordfence/images/flags/tz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–]‹#Dçè¥ft½>>'),
(']şí˜dT ŒÑ''JÈ', 'wp-content/plugins/wordfence/images/flags/ua.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ì@šsß‘J„›”Ä'),
('.8{''“OØ2àiøxCQ¥', 'wp-content/plugins/wordfence/images/flags/ug.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r+YkSI˜¢ä-@^7nè'),
(':CcÂ*«àå-«|a4˜', 'wp-content/plugins/wordfence/images/flags/uk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(1Ål†ò†ÇÏÈfBÁ'),
('¥¾ìyc²%:ŞËúÈoá', 'wp-content/plugins/wordfence/images/flags/um.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=GØ\0	-ïk§[ÄÖÔ‡'),
('˜}Éò3³(Ã7fœ\rÀÈKd', 'wp-content/plugins/wordfence/images/flags/us.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õÅBbçñ·ğ/ª''x'),
('\\/æàW"-ı‰ªÎ¤1qŞ', 'wp-content/plugins/wordfence/images/flags/uy.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rC¼¥àÓ³ÖALô§)'),
('f''"YèãîË±ÎVöê˜', 'wp-content/plugins/wordfence/images/flags/uz.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^zlvYôíi6)6|c4;'),
('üİ—!ş¹zˆ¬†ƒ§Š4', 'wp-content/plugins/wordfence/images/flags/va.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ğr)Ópô Ø‚á\Zt3\0'),
('gìx8²ªPM‹ãúâÇo¨', 'wp-content/plugins/wordfence/images/flags/vc.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jF"ò{åËÅŞ|0Ñœ'),
('ù‘È‡Ê±1w¯B_/', 'wp-content/plugins/wordfence/images/flags/ve.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µŸUtøv9Hu\Z*a\\P'),
('é£âSp±ì*ÇìÍaŒ³Ñ', 'wp-content/plugins/wordfence/images/flags/vg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~U}\0¯$ºÕ¨“’\0ºu~'),
('`šmäö[é´¡Æ¿jù¬', 'wp-content/plugins/wordfence/images/flags/vi.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(ÕÛ~)NÒSÏ¢Ô¡œë'),
('İÜÛ¾–ú´S)…9‹', 'wp-content/plugins/wordfence/images/flags/vn.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÓP¢¨á³—vwÜ¶ÿ¦PTo'),
(' £SŞ ÒÓè—hnUdÑx', 'wp-content/plugins/wordfence/images/flags/vu.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡ èu%k{“mÍ¢(u'),
('ÎµöÁı`«³tv£Sœ', 'wp-content/plugins/wordfence/images/flags/wales.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Š‰ëÁ™,ã¥CÕo{×ğv'),
('‹÷D‡‹#Ia4*xM,', 'wp-content/plugins/wordfence/images/flags/wf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/cé¶¬š  k=‰O•'),
('`O(ºG7¬«€`	ŸM@', 'wp-content/plugins/wordfence/images/flags/ws.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L\0N‹àŞ=H‚OùsT'),
('~¾¬ÊäOUËê½ÍÊÎĞÂ', 'wp-content/plugins/wordfence/images/flags/xk.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']ìG×lÄİ}$ó5»IÓÄ'),
(',¦7µm=i0`¤Ñ@*\\', 'wp-content/plugins/wordfence/images/flags/ye.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4\0š7øCK{DY)'),
('İ97X<Ô¹/‰j\\€Ş', 'wp-content/plugins/wordfence/images/flags/yt.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'öÊ‰…÷rT‡‘æ\0h‰å²'),
('[këXtÚÇ9Nt‡¿', 'wp-content/plugins/wordfence/images/flags/za.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÊpCh™"ÚŸ.âÛ3³'),
('yó5Š1\\´m>çó¨Gÿ', 'wp-content/plugins/wordfence/images/flags/zm.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ïÖn|ÇÏ·{>cæÍ-R½'),
('!ñx¨sº‰C	pğh^:&ü', 'wp-content/plugins/wordfence/images/flags/zw.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'š	MšQ½‘Ô>qQ\rè'),
('.¦EÇ[JõÏlxßã', 'wp-content/plugins/wordfence/images/forward_disabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'M_ÚÖZ?ÚN)ºÒŠê:Ü5'),
('˜\0hî”Kf•\0ğø', 'wp-content/plugins/wordfence/images/forward_enabled.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U\0/3e4e™Ï×ƒŞö'),
('û÷Şçª’·u£¡\rZJW+', 'wp-content/plugins/wordfence/images/help.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$NÇü;''ı‡MÏÏùò Y'),
('Ù˜İ"P´Ü÷Æ,ƒ©Ø', 'wp-content/plugins/wordfence/images/icons/ajax24.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K:û„²·õmğ™—£P½'),
('''‹ü» ˜oÈÍSŠ', 'wp-content/plugins/wordfence/images/icons/ajax3.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'mwßß´tê“''\n¤ñís'),
('¡êyî&a’A 7Â]Dm', 'wp-content/plugins/wordfence/images/icons/ajaxRed16.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´Ïà%º»©B\ng 2…‰;'),
('»ÒÉ4ş™õ‰ù=¸', 'wp-content/plugins/wordfence/images/icons/ajaxScan.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘Ê–´Ñ´­÷~fúúiÁ'),
('j&ºV1™¬®6“4ª¯ëâ', 'wp-content/plugins/wordfence/images/icons/ajaxWhite32x32.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾íér‰Á9 #Ó{…'),
('(x*J û…,…LÃ›nç<K', 'wp-content/plugins/wordfence/images/icons/arrow_refresh.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k•w„`ö`ª|ô}$G€§'),
('6[fÀ9¸?†“ _Ç', 'wp-content/plugins/wordfence/images/icons/bullet_yellow.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J&ûŞÓÉŒŠıìîÔ”Q<'),
(']¥¤Ê*…¤…ÿJ–', 'wp-content/plugins/wordfence/images/icons/email_go.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ºªjÌÙEü´H)«.½í'),
(' ¸‹‡`%ú’{ÍüÒ+›ó', 'wp-content/plugins/wordfence/images/icons/error128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É:Ş%7÷!Á´.Ñ'),
('z¢5·*\ZADZCk¬áj®’', 'wp-content/plugins/wordfence/images/icons/magnifier.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨§uO®{:qcVãî'''),
('¯Î¡~×ß“ş:ıèàÂøeo', 'wp-content/plugins/wordfence/images/icons/tick128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'åÄŸ‹øc·h4"èİ«'),
('ÿ;`º$rçŸËÑ$³¦=', 'wp-content/plugins/wordfence/images/icons/warning128.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'pÏGÀI×t*ö“ÆÊNp='),
('ªXàá@ÁÔ%½1C„Ái', 'wp-content/plugins/wordfence/images/lightbox-controls.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm]¼a’¬•\\$É'),
('ƒ¨?ç¬Úz6¤—ÛaDz', 'wp-content/plugins/wordfence/images/loading.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K:û„²·õmğ™—£P½'),
('ıKjòâªhº‘èù', 'wp-content/plugins/wordfence/images/loading_background.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬ô''é2û”p\nK‹X´ì'),
('ï¾˜QŒ¹©÷´)B\në,', 'wp-content/plugins/wordfence/images/loading_large.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚Y¼®{Ob‰UW~¼YË™'),
('sâ™¼{DRÌ[¥kÙ1ûI', 'wp-content/plugins/wordfence/images/logo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚ü“š''9%(wdô²hÉş'),
('êV,”ïU3¦Úêº', 'wp-content/plugins/wordfence/images/rr_premium.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÚÅ"›3 ,¿2Ò¤'),
('#9\rPuLk0¦®kUØ', 'wp-content/plugins/wordfence/images/rr_sitecleaning.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')\r\0™”ĞÿÆÒ)¯5ßÙ'),
('èò‡òQËoµH*¹‚À(ï', 'wp-content/plugins/wordfence/images/sort_asc.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',¸»I§Å+Æ¾ êú=€ü'),
('ÉlX”wÁóBõ*X§Wñ', 'wp-content/plugins/wordfence/images/sort_asc_disabled.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'OÉ§ÅşÍ*ÒXÿ²Û9e'),
('?Yvq_ê—ÿ³Û®XO', 'wp-content/plugins/wordfence/images/sort_both.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Åá%ÙB¬QxÁSV.D'),
('7Àc÷.$P!×"Œò¹š†', 'wp-content/plugins/wordfence/images/sort_desc.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©<„®ÕjÿŒ_³ËŠR2'),
('xy—!àøôqÁ)ö.Ë‰"', 'wp-content/plugins/wordfence/images/sort_desc_disabled.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Îm„†•ÍŸÊärÑÖ 9'),
(':mwvK\rÿ”‘‚Z‰Œ~', 'wp-content/plugins/wordfence/images/wordfence-logo-16x16.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Yé~F,¢N8zĞÔ¨úO2'),
('FàèOÛ£ ÿÔÿçëg', 'wp-content/plugins/wordfence/images/wordfence-logo-32x32.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿Ì@Û¯IëØíßuUĞ'),
('jÚ¿´tØÁ1u©¬†}£§¾', 'wp-content/plugins/wordfence/images/wordfence-logo-64x64.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v^¼IêN/©Èg@ö\\u'),
('E„»(ızRA1;eNÇqD3', 'wp-content/plugins/wordfence/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2ÁèeØÂÂª­ë\\ÆÁog'),
('‘†ŞğV/Ö¾›İ¤_œ=æ', 'wp-content/plugins/wordfence/js/Chart.bundle.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ºñó5]”ŠdîÀ ûd€fİ'),
('7<L¾U3„9­TUµ3Æs', 'wp-content/plugins/wordfence/js/admin.ajaxWatcher.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™4B;0²ÜfË=SiÃ6'),
('é"ğ¢Ó[Q	ØÃÂğ', 'wp-content/plugins/wordfence/js/admin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nÍ#RÇÔ¢óé™fz|n'),
('¢İÁóòµ ,{HöìÄ¬q', 'wp-content/plugins/wordfence/js/admin.liveTraffic.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FÎåûuAƒ\rXˆ³—ã¹­'),
('[Q"ABb.QĞÈÌç„:', 'wp-content/plugins/wordfence/js/jquery-ui-timepicker-addon.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ø\\í#şkz›œª—¼ìI]'),
('wËAÉ/	¢ÿş»Ä‰\\q', 'wp-content/plugins/wordfence/js/jquery.colorbox-min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4?JÇƒ³Gı`’\nÖNÊxl'),
('™áEN0Ï¡•Ü6', 'wp-content/plugins/wordfence/js/jquery.dataTables.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'aGÌîzïÀÆëØ×³ù'),
('h~Ğè”x€­`hûš~?', 'wp-content/plugins/wordfence/js/jquery.qrcode.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ğ±×Ô¹°´—Xp`me<'),
('a\ZÈcŸ³ür•2äô¬', 'wp-content/plugins/wordfence/js/jquery.tmpl.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€\\}Ã"£†‹7Ú·’•DZ'),
('±ú³•Ë„˜vïØ+¹nGÓ', 'wp-content/plugins/wordfence/js/jquery.tools.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñ:-·áEÕ x¡$à¸B'),
('He0|òñÔóF0$Ø•ı', 'wp-content/plugins/wordfence/js/knockout-3.3.0.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢Ö_ñÁƒB8lc^é„Ò'),
('ù©€XiU1`²]‚“ë“', 'wp-content/plugins/wordfence/js/perf.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'uQ÷"ÊwF÷ÜáR@p'),
('}ó0·¢5°ŸşM¦ZŸîŠ', 'wp-content/plugins/wordfence/js/select2.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' bGŞ.işÊTRòU°'),
('‡Úy’ø/ëödzƒQg”µ', 'wp-content/plugins/wordfence/js/tourTip.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ï‡ôáÜg>ì1šÚá:}'),
('«ö|‚Oætx|ÏêŒ¤¥ËØ', 'wp-content/plugins/wordfence/js/wfdashboard.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©£Ô½¬PŸ¬°Í`ß{i¹'),
('G#Y@ë[rzƒiÚå1å', 'wp-content/plugins/wordfence/js/wfpopover.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';ã&m­AÄhlMPZX'),
('Rµú1?™ûˆYÓVDt»', 'wp-content/plugins/wordfence/lib/.htaccess', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·I z~Òi¶,Lÿè'),
('Ÿ¸''úFEŸA–vQMv', 'wp-content/plugins/wordfence/lib/Diff/Renderer/Abstract.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>\r°Ã5]xVIÖ''Œiµ'),
('yŠ­1‰â-è†/fI× ', 'wp-content/plugins/wordfence/lib/Diff/Renderer/Html/Array.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†Â±ˆâİt‹T2¦y%p¼'),
('ë-nê$.ÿ#g%Ä}İ÷', 'wp-content/plugins/wordfence/lib/Diff/Renderer/Html/SideBySide.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p´ş€uQø„¬: Ì*'),
('`»c0¯Ù\\ùâë•3æ', 'wp-content/plugins/wordfence/lib/Diff/SequenceMatcher.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰OÒ"%Ã©¾O²DZŞj'),
('Û–JBw…C˜¡|Môv', 'wp-content/plugins/wordfence/lib/Diff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R|Ğ$¹Èìç©V;Pà“âÙ'),
('Ó&)-Ã¢«\ZÎ™•p', 'wp-content/plugins/wordfence/lib/GeoIP.dat', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\Şñí®¡Ühâ`®İ6'),
('•gïRT6KXÆÒï“Ñ\ZÃ', 'wp-content/plugins/wordfence/lib/GeoIPv6.dat', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹uïdó|x¬@Í"]'),
('ÖÏJØûï!¬[W6İ§éı', 'wp-content/plugins/wordfence/lib/IPTraf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N·İ„­Óë\n‡étÒ¸'),
('K¾ä÷ßºá†b¤', 'wp-content/plugins/wordfence/lib/compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãú?HÄYø…/2™¦?T'),
('€©òSPÓ;^Æ­zßI', 'wp-content/plugins/wordfence/lib/conntest.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘j˜Ï"‚è¦¬¼êr\r'),
('ƒ÷f NÊdš©´Lúş', 'wp-content/plugins/wordfence/lib/cronview.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ïWjÛš»æ¢şÖÁÙ…O'),
('\Zµ;5õ(OòOÖR«', 'wp-content/plugins/wordfence/lib/dashboard/widget_content_countries.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ğ5L,{×„ˆ“:)º'),
('²ùzvo:ø·ÜB%šºğõ', 'wp-content/plugins/wordfence/lib/dashboard/widget_content_ips.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[%O”Åè)ş;ì-•Ç0¹'),
('\rÒ—èr×¾ˆ Á¹Î\nœ\Z', 'wp-content/plugins/wordfence/lib/dashboard/widget_content_logins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ú*v—Åœ†eÂÅèFvø'),
('ºß$á„o“¬1ÖT³2]l', 'wp-content/plugins/wordfence/lib/dashboard/widget_countries.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$ù‡ÍÌYÚ@Çd ¹Å¼'),
('Wsåç{NÎhP—ršã¼±', 'wp-content/plugins/wordfence/lib/dashboard/widget_ips.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï¶»:úpøş²^Ş™–&'),
('eØŸ÷v¤‹ãç¬ª‹Ej', 'wp-content/plugins/wordfence/lib/dashboard/widget_localattacks.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%8ÖlÕÎÕ¾ôığw…İ'),
('ŸúƒLâÔ.\nŞw;[', 'wp-content/plugins/wordfence/lib/dashboard/widget_logins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ş!Á$Ê7=¿‡ ¿öºkŠ'),
('òu;ÈŒ0åq”wªœ=àß', 'wp-content/plugins/wordfence/lib/dashboard/widget_networkattacks.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì‡Uø¨ÜóP‚J´%x´ë');
INSERT INTO `vi_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('k6„ş *âÜßHœ	ŒuÙ¡', 'wp-content/plugins/wordfence/lib/dashboard/widget_notifications.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ğf¾?KÙçCµŞÖ©²'),
('õï´â·\\^¼s,èz(', 'wp-content/plugins/wordfence/lib/dashboard/widget_tdf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùYµ††I"=‚ÊÑ{É(c'),
('¿¼­Ç·®•¬µúµ\n‚H¹', 'wp-content/plugins/wordfence/lib/dashboard.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lx>æÌêzKKëb§['),
('ûÌÃö6Ri*5ğÁÄÃ¦', 'wp-content/plugins/wordfence/lib/dbview.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦À®(D˜eƒd«:¡]'),
('Í)ÄÅäò\0Ÿe‡_Ô5=«', 'wp-content/plugins/wordfence/lib/diffResult.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'IYÁ…Y8†\\@·6d''r#'),
('#\nÁô/†ÛPZ~h„Îø', 'wp-content/plugins/wordfence/lib/email_genericAlert.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F²B¬!@´±fá-AîÜÙ'),
('›» ÆíFe±	57[é', 'wp-content/plugins/wordfence/lib/email_newIssues.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éÚ<j™¦ãÏô§Ê™ºµ'''),
('Ìä¥t+Œ»‰N-¨Ì’°ˆ', 'wp-content/plugins/wordfence/lib/email_passwdChanged.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õIwKı·mKa{Ä¯â;¨'),
('''»â?·hÏ	}úY\0IG', 'wp-content/plugins/wordfence/lib/email_pleaseChangePasswd.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'è*œGs£WcÈâ3'),
('×ä^Ëu©­âË}G»Ô', 'wp-content/plugins/wordfence/lib/email_unlockRequest.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶ ÚEÛ28.63Rºí¸'),
('$äÎ-#q`Ğl$W„Û‰', 'wp-content/plugins/wordfence/lib/live_activity.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':úk*$<Cš‘~İ©U–'),
('RLS’f,ı@•ˆL=ì.', 'wp-content/plugins/wordfence/lib/menu_activity.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')½0«şpëÒö¿ñN÷'),
('FaßãÑ#<÷°&$ÒØ;', 'wp-content/plugins/wordfence/lib/menu_blocking.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R~‹rÊä¶°Â]^C½•è'),
('<Ié#ñhÏ29°ä›À÷ä', 'wp-content/plugins/wordfence/lib/menu_blocking_advancedBlocking.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RäfêU¦³ğªw3ôJ§Ì'),
('ªDl•Ö¹˜rS²œ?', 'wp-content/plugins/wordfence/lib/menu_blocking_blockedIPs.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'é”&)ÈC.2]!»Yä+'),
(';}yh”Õh4áãÛ«\Z', 'wp-content/plugins/wordfence/lib/menu_blocking_countryBlocking.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nŞ|ì·cÈ–yí]¶ùAu'),
('òdíToÈf‹öÒ·ÜbS', 'wp-content/plugins/wordfence/lib/menu_dashboard.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?f@mÏ¥9ä\\è:R\rº'),
('®W«‡µPæ—ƒ^qğy€', 'wp-content/plugins/wordfence/lib/menu_firewall.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ıxèUh|´úyHª$Ûr'),
('#óÀ¾SD¬cY‡İçëPQ¥', 'wp-content/plugins/wordfence/lib/menu_firewall_bruteForce.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÔÿÌğC”k<"KGY'),
('ÕÒ}¡¢F!¤¼+\r·', 'wp-content/plugins/wordfence/lib/menu_firewall_rateLimiting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`Ïô''Ò+"•H…>Mñ'),
('6cÀb†£kk·Öi3¹@úH', 'wp-content/plugins/wordfence/lib/menu_firewall_waf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v×Ğ€Bfs™  ;'),
('ºWMíŠË{h©øÚÀ(', 'wp-content/plugins/wordfence/lib/menu_options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ïì¼Ë`/°nœ>Ğ¸k)'),
('³6cIû	@Ûoîóä', 'wp-content/plugins/wordfence/lib/menu_scan.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œz_ŒÚïü.H÷£DüaÌ'),
('|ÌÎù^RÌŸÇ\0‰)Ãj@:', 'wp-content/plugins/wordfence/lib/menu_scan_options.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xTŒ,üZ£¤n@í“‘'),
('n#5§Ÿ;Òê•Íë-}ô-', 'wp-content/plugins/wordfence/lib/menu_scan_scan.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^¶iûeUEf†ÕŠ5Ê'),
('¢‡5®®õß¡FZº³', 'wp-content/plugins/wordfence/lib/menu_scan_schedule.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'A‰©À„ £ÚÑ§$R'),
('o÷jù‹É»yæ©V', 'wp-content/plugins/wordfence/lib/menu_tools.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™š£%%"$ç%¢/|ÜU€'),
('!§##sw:\rH*²$qô', 'wp-content/plugins/wordfence/lib/menu_tools_diagnostic.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ó<aÍpUµmîy;C…'),
('¸CíQ´ËŞ+ü(,`şlg\r', 'wp-content/plugins/wordfence/lib/menu_tools_passwd.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#<’tXÚ½±<À1DÖ'''),
('@ØL½Öß¯7»Ù­kÙ‚E', 'wp-content/plugins/wordfence/lib/menu_tools_twoFactor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~dÚ{puÅ~™¶¬lÛÎ'),
('CúØs\\§\nò–àÚsÕ''m', 'wp-content/plugins/wordfence/lib/menu_tools_whois.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'DP•]Ëä‰§W°k+÷'),
('#õô>ä«í‘Ò†ÃKl', 'wp-content/plugins/wordfence/lib/pageTitle.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Í]“ˆŞË¸3n`SÀ['),
('~Ó¤ÃwìJÌ¼„¿¡.ù', 'wp-content/plugins/wordfence/lib/schedWeekEntry.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'DÔ1¿D1ŸŸÅæ¹ä .V'),
('£ÜF¦²™˜{ì´ıA', 'wp-content/plugins/wordfence/lib/sysinfo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ZiïT´T2kUú}åŠÙ¤'),
('ÿ‡·ÖM~ë^xù¼;‡ğ', 'wp-content/plugins/wordfence/lib/unknownFiles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AÑ{ÑÉîUÀêĞz¤[ŠØ'),
('LR7Q¼äToG|Ä{', 'wp-content/plugins/wordfence/lib/viewFullActivityLog.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/ˆ{g©/C»)û‚ó'),
('ÁÙµ\nh¶ÍJxµdvÏÔƒ]', 'wp-content/plugins/wordfence/lib/wf503.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨ü(7µèàÔæH¡½ê'),
('¾á2]hqu:ŞT6EÑU¶', 'wp-content/plugins/wordfence/lib/wfAPI.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm¡”ª5³¬EİÉï»'),
('#ç–­Û­ªv"ş—M¼', 'wp-content/plugins/wordfence/lib/wfAction.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@â’Ó_Ïí­…òµÉ>js'),
('É†8¨ÂÖÀpÅ»ÑµVı', 'wp-content/plugins/wordfence/lib/wfActivityReport.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÀAŸ}VÕb_—Sœæ‰H×•'),
('ŞŞ‹³­”1FóøëÛa“', 'wp-content/plugins/wordfence/lib/wfArray.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úÚe¦my¸†VôM¼\Z¬º'),
('ê-=Q°CwàtnLà¡#', 'wp-content/plugins/wordfence/lib/wfBrowscap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€äQ?SXl†µ4¶Zõ>'),
('«ĞèX’°ØJ üp', 'wp-content/plugins/wordfence/lib/wfBrowscapCache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!ĞŸ‘t·4`à£KKTp³'),
('äê¿1ş]ÃM|®KÔFZ', 'wp-content/plugins/wordfence/lib/wfBulkCountries.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}ÚÃìMìŠ±¢³ò_#9'),
('¸œÒ‘-èÌôŠ\rŠ{,ï', 'wp-content/plugins/wordfence/lib/wfCache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(1b¨Ì"3:ù!á¬`ktô'),
('Z4<n?e˜ñ²', 'wp-content/plugins/wordfence/lib/wfConfig.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n/em4Ö{á'),
('²ıB¹6[s–M÷', 'wp-content/plugins/wordfence/lib/wfCountryMap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']hF“3ÇĞ¬kİ;´u'),
('8Ã›ZE‘Q$}UPöT£à', 'wp-content/plugins/wordfence/lib/wfCrawl.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'L…ãäU/å¸m`A\Z'),
('Øx¼øÎ²Ğ¦¬à¨A	Š<ê', 'wp-content/plugins/wordfence/lib/wfCrypt.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œ©ÁW´ík|¸Ó)şÁ’4+'),
('ÙJàïš^\Z7ü•uG–k+', 'wp-content/plugins/wordfence/lib/wfDB.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'šc''‰w8‹Y™ıXx;'),
('iŠíÇkmCxşÊ·Ëòù', 'wp-content/plugins/wordfence/lib/wfDashboard.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3K3¼49pÒF8ä—Å<Ä'),
('l9é¹=¯ühÇ,>ÙÃç&', 'wp-content/plugins/wordfence/lib/wfDiagnostic.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n1‚j±¼h(·Hkˆs"'),
('õF¤ë\ZÁ“ç®Cüì1®P', 'wp-content/plugins/wordfence/lib/wfDict.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*î6Attëæ#Ã'),
('ºíÌA0fıf`Â KÇ}', 'wp-content/plugins/wordfence/lib/wfDirectoryIterator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì¼˜~d[µ!L•¸A¾/½9'),
('=9)œ‘­)Â\\Õ–', 'wp-content/plugins/wordfence/lib/wfGeoIP.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±§#/5¤äX%@ŒA[ºQ§'),
('q¾†5@£*=õ&´æ\\Xá', 'wp-content/plugins/wordfence/lib/wfHelperBin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';ï×!·ÈËÉ4QÕŞX#'),
('PÆMî\ZÖIÌ¸İ­Y`r', 'wp-content/plugins/wordfence/lib/wfHelperString.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡OVˆFaDVŞ4˜4Üª'),
('iákìñ­½CñíT,ì', 'wp-content/plugins/wordfence/lib/wfIPWhitelist.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i‰¥ôa|³Â0ô\nâ5àa'),
('Ójs¤w2ùìp®ıqS', 'wp-content/plugins/wordfence/lib/wfIssues.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼‘«‘	\\$¢À‚æ8¦Ø'),
('óŠØ ]Ôf•ˆğPô¢†ƒ', 'wp-content/plugins/wordfence/lib/wfLockedOut.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'è©"ù‹yxer"Âä”'),
('òÚwÎ+"+ú$ã¬^¸', 'wp-content/plugins/wordfence/lib/wfLog.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`y‹C&/"Ö¢Wq'),
('¨\\Çıhû RŸXÕ<ºC®', 'wp-content/plugins/wordfence/lib/wfMD5BloomFilter.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Gş,–²Î°ÓÀàÚ÷'),
('ŒtÇ±%˜û£‘µÚF', 'wp-content/plugins/wordfence/lib/wfNotification.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%4ö[FSç%¯àf¤QR•'),
('mÉqPoD0â*ÍØL', 'wp-content/plugins/wordfence/lib/wfRESTAPI.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FE‚¹W³"*Ÿ7ÜGJ'),
('^k¿ÖªDv6—R', 'wp-content/plugins/wordfence/lib/wfRate.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|\\XƒE±Ÿà\n´Wî\0'),
('ïŞŒt+é\\õ+ÆXa†ZU', 'wp-content/plugins/wordfence/lib/wfScan.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ûs~K›¸^!hw¬ñ¹\n_'),
('ïï6X‡Ôª4ñã[_‡=t', 'wp-content/plugins/wordfence/lib/wfScanEngine.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^W\\a1KõğvÖø~ñ'),
('bÊ¥ñHzfW˜ …­gw›', 'wp-content/plugins/wordfence/lib/wfSchema.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²VŒG¼³‚ik Î‹Nå'),
('ÕõK2;æ<D¦®‡ƒkub', 'wp-content/plugins/wordfence/lib/wfStyle.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õ¢3S<¾)º-ÒóüLÈÍ+'),
('šêŠh‹L¼²JHÿX#0', 'wp-content/plugins/wordfence/lib/wfUnlockMsg.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h\r>Á[»æ?Rgû©íTe'),
('‰ªeÄ\\«Ô1átÆ‹Ü<	„', 'wp-content/plugins/wordfence/lib/wfUpdateCheck.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤ ò4ôÆlcÒò«VC'),
('¨Q49ãóLzÓJµ', 'wp-content/plugins/wordfence/lib/wfUtils.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f_®¢ä-·Áuşµ‘²ş	K'),
('åeÅÂúôüın·…ŸAÛ', 'wp-content/plugins/wordfence/lib/wfView.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'â‡²*¸!üPÓ''|ú%\ZØ'),
('ªËÙv{C«ÀºÎÒ§€4I', 'wp-content/plugins/wordfence/lib/wfViewResult.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	qNÁìºK80ÁO«·'),
('Çİ¡=½½Nx¼‡KÔ`*', 'wp-content/plugins/wordfence/lib/wordfenceClass.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'aàEY7¡÷±ï¼\Z2\\™›'),
('ÁkHmå1Óó`0Ñ¹¯–_', 'wp-content/plugins/wordfence/lib/wordfenceConstants.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Š"@·Loà®Û#Æá=-¦'),
('ÕXùâÏà-Ÿ4¤Jü_ƒ3', 'wp-content/plugins/wordfence/lib/wordfenceHash.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n7Ü©ä4''i—9UœÌH¾'),
('z˜|*6S\\5·ã¯3', 'wp-content/plugins/wordfence/lib/wordfenceScanner.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õü(,XP]¹ş•ÚC'),
('h»<²]“”ìOpNCÆ´æ', 'wp-content/plugins/wordfence/lib/wordfenceURLHoover.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'BÁëKú H†gI!ö^à¤‰'),
('¿vé—FI—Ë2h´Ïø¤nÁ', 'wp-content/plugins/wordfence/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/.¼lÊ£Çv‰°4ŞX;'),
('ï;Lát‰×¬C°ƒ”É£', 'wp-content/plugins/wordfence/tmp/.htaccess', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·I z~Òi¶,Lÿè'),
('=S–6Èa°ŸXo°,”2', 'wp-content/plugins/wordfence/vendor/autoload.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'fê\\oÅâ	Êèjk_'),
('_£k4é÷·!*}ˆ‚İ„ ', 'wp-content/plugins/wordfence/vendor/composer/ClassLoader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>B¿‹ÃÅaXãÜÒwa;'),
('¢0áÁ&¥Y©îÕ ÕÁ¡', 'wp-content/plugins/wordfence/vendor/composer/LICENSE', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'JJË­9FN=öÆÜO'),
('"0ÂrN1M•áä# áÀ', 'wp-content/plugins/wordfence/vendor/composer/autoload_classmap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†EÓ¤ã­‡çÏMˆ¤gª´'),
('t‰®‘Äô!æ\Z‡%\n', 'wp-content/plugins/wordfence/vendor/composer/autoload_namespaces.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5á,}vÄ¨3¼õGÀâ)©'),
('sìÃË±ŒY*u¿©áO„', 'wp-content/plugins/wordfence/vendor/composer/autoload_psr4.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'İ:\0ğÑ>²—íØÇ}LQ\0'),
('~ÅÓ¸bcöİ\Z$@$©ò*', 'wp-content/plugins/wordfence/vendor/composer/autoload_real.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùc»@éqôãûxy=`„ù'),
('Ğ¬]mÙ²§	â–­ì', 'wp-content/plugins/wordfence/vendor/composer/installed.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'O»ófIü—8¥x¾E\Z'),
('{PzËÒ¹ùşa§eÒÓ§Ò9', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/bootstrap-sample.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K!š¿à³šR‚lúq`'),
('~i°IÒ;İ­]œA»ÈS', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/cacert.pem', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x-ÍèõÕ;ˆß<B¹'),
('„ÖnvûŸZùYVßûÉş', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/init.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘³ˆ~''råõ''Tâ_'),
('BJ’„O¢ä¯ü†zD±', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/config.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'öZTÖ·Û?*=á‰v%'),
('ì¶Pdºµ“ı’íc3', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/http.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kYs\Z€•ë†ì¹±u’'),
('ù^Q6l„ÏJ! 	âÍ¦', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/json.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÓJéaD5Húrúªñ½'),
('ß¹VÌ=¿£»"à#n§	¹', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/lexer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Iõğ	=Ä~ÌôiÍø'),
('à–ÊrªÖMÓÜ´-\nSƒ„', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éğ\rcmmÄæjøíik›'),
('ŠÈàı×X/÷Û\0şƒ	', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/parser/sqli.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2Hs£=Fûá­\nnH'),
('nóÊó09j®v8õ"', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/request.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸¶(~Öü0{Éò7Ãˆ7×'),
('Ò­ó_VlKøg°!p†1', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/rules.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§Ê*îPË)×ú›Èµæï'),
('!ñOŠ4ÖbCRR›fO²', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/storage/file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1¦ÉBä„WiN*—'),
('cş†[b]ËÀşİ½‡JF', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/storage.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q:6¾±\\¹‹È…ó[záé'),
('ØĞ¡qDÖš?ÓiX', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/utils.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '® –/8KÈØğW<tø¼'),
('å''Ò`FÌ”Ì~ÙÄ–“œ', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/view.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}›‘J–gÛ!fy”áLú'),
('…¶»½î¢è†<ïxÍBŒ', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/lib/waf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úD»<6˜D¡šÎ%y›Ê'),
('ù—8K°ç ?O]Ê¹Y', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/rules.key', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'º§\ZlY^[F\rÈ2xÊ»'),
('AØ»#¨²¹"óàÅj­', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403-roadblock.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Zooñ>ïæ ÅUwÙñ(™ä'),
('Q§Û÷6K4öÊ¨€ÒğH', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/403.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾áë±ŸR„|¬$ùÚd'),
('rI\0yg×E!€£û2\0C', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/503-lockout.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q\0V÷ç0NÀ~ˆc¶Ï'),
('j¯Ò)nƒQ8Ş®á¬DŒ', 'wp-content/plugins/wordfence/vendor/wordfence/wf-waf/src/views/503.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•NÁIÖàfÀş¥İéäÉ'),
('¨\r#ŠDíje™÷˜]w·”', 'wp-content/plugins/wordfence/views/marketing/rightrail.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Úíá²\Z¶ì„]†“İ[,'),
('T?„?:q×®PÃóah''««', 'wp-content/plugins/wordfence/views/reports/activity-report-email-inline.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨¿&Nu.oìk2Š\Z1¾\0'),
('Hƒ“ÊcåÁ¤I²J%µH', 'wp-content/plugins/wordfence/views/reports/activity-report-email.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùŞ–˜p›È•…Î#y·'),
('N¡d#R­‡+«Ár\0s[', 'wp-content/plugins/wordfence/views/reports/activity-report.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G¥Tj¥$M#¹Ô¢%¾È'),
('Ö‹Ë8“[½À¦‰˜0½ÊŠ', 'wp-content/plugins/wordfence/views/waf/debug.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚ÿÊ‘âbc‰&üÜYĞzÁ'),
('¡ØHéaŒ+õ§­­Ì°I±', 'wp-content/plugins/wordfence/waf/bootstrap.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É¢«R5)\n.J±e(ıš\nå'),
('İ6>l”ƒŠ\rÑ²Y', 'wp-content/plugins/wordfence/waf/wfWAFGeoIP.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'I‡ÕZâG×4pÍÃ''`'),
('\0ĞDø`ø8R¦ÇÉ²%†', 'wp-content/plugins/wordfence/waf/wfWAFIPBlocksController.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'x+®‰!àñ¾¿ÿ)Ôë¬'),
('%û¢Ã›7Òáå¨³Ì', 'wp-content/plugins/wordfence/waf/wfWAFUserIPRange.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ïf9–E3Ê\Z¨±rêÏ1<'),
('E#ÍÕç-v37Ù6ëÅ¤', 'wp-content/plugins/wordfence/wordfence.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'h}Gãqk›º¥šÕ=Ól'),
('¤‰\0É„I|ÆS?ÄöÄh', 'wp-content/themes/advertica-lite/404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KSŠjõŞõH,¼»-'),
('Ã‡Å M–Ê˜‡ü£)Y', 'wp-content/themes/advertica-lite/SketchBoard/functions/admin-init.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$ÆÃéç>Ši¹Š\0ıû†'),
('Ö°ç«Îí¹û¬L:', 'wp-content/themes/advertica-lite/SketchBoard/functions/sketch-breadcrumb.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³µc­A¤!×xœKÙV'),
('îàŸ\Z¡%Øtb¿\Z»(2$', 'wp-content/themes/advertica-lite/SketchBoard/functions/sketch-enqueue.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡ bïÛ°:/¸áN!~å,'),
('›„ØÍşXmâ¸‡_;', 'wp-content/themes/advertica-lite/SketchBoard/functions/sketch-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Œ/–í±À=z”ÃïøÓf'),
('“Cg€Ä¢îTÁ„™ì¸ë', 'wp-content/themes/advertica-lite/archive.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd«½ØÚ‰¨$6‘*åÃ'),
('h†»ÁË>/—Ë—"İØm“', 'wp-content/themes/advertica-lite/author.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÎÑxä$2};{v;æz¼L'),
('¨6ê¡ÆC“hR²''VËha”', 'wp-content/themes/advertica-lite/category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'É¶6ÏFöÿÕV&§ƒ*ÑôÃ'),
('†–ÅFJj¦ÖH·Hüş', 'wp-content/themes/advertica-lite/changelog.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tá5SåDj§\n¬Ú¢‚'),
('€£”]Ô\n©ZŠ\Z}ëB™', 'wp-content/themes/advertica-lite/comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0­oÂ[Œ*áP¦à‹$'),
('rİI3›¡°6=2ô80dN\r', 'wp-content/themes/advertica-lite/content-none.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­€ÂncYÛ¯1C³'),
('hk"«‹$‚ù^ƒ¯©İš¦Y', 'wp-content/themes/advertica-lite/content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S''—ä»?ax’ôN½­'),
('.TriËsÌQ÷§ú§‹', 'wp-content/themes/advertica-lite/css/bootstrap-responsive.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×lñø9IÍ6Êïám ’Jš'),
('FÍ§\\û	?}‚¥xìpÄl', 'wp-content/themes/advertica-lite/css/font-awesome-ie7.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<õè²¯˜€Ú&%À0)'),
('Ù3X\rşñ/÷Œ…~ã—:G', 'wp-content/themes/advertica-lite/css/font-awesome.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶Rã·YŒê÷‘‚òşrêd'),
('E''<{•àO@åI˜Ô', 'wp-content/themes/advertica-lite/css/font-awesome.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@ƒõÓvë„šEŒÇµ; €'),
('v½©)ÜŒë¨şĞ™åÿ', 'wp-content/themes/advertica-lite/css/ie-style.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©g5\náHV!¶ÖsÅ'),
('œ¹‰y6¶¹:Q5‹ÛÄgÂ', 'wp-content/themes/advertica-lite/css/skt-animation.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lYœ{¡+±ªD‡T"'''),
('_	³ú@…äf_²QùûµQ', 'wp-content/themes/advertica-lite/css/superfish.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­§pd{ƒî%XrúWÓ¼'),
('ßÔ•ÖîçKBá†Ñ>', 'wp-content/themes/advertica-lite/custom-products.php', 0, '³¸8€Á¼eËXúÁuH»', '³¸8€Á¼eËXúÁuH»'),
('O€;¡ {¨v­sx…Óù', 'wp-content/themes/advertica-lite/fonts/FontAwesome.otf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']Äã)¢/¡î’%W„>'),
('ÙğRÜhæJü·šËiÏœ”', 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%£$«îØ!°±zŠ'),
('b™¹Mã*‹û}ª¡{8', 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×Æ9OhMf¡¼f…]>Ø'),
('[†Ş™ÁÚ=KOX¹oÇ', 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ã]%æšœ5ptHg«'),
('¢[ïê	>.»’O èò', 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Èİñåå¿6‚¼{ëó9AH'),
('ìùàÚ÷»O8E™VÁ‹', 'wp-content/themes/advertica-lite/fonts/fontawesome-webfont.woff2', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æÏ|nÇÂÖöp®v&Ë'),
('*:{<<ŠfˆÚ&œ¶?c', 'wp-content/themes/advertica-lite/footer.php', 0, 'äY²§ØŸ#w‚f€°9›÷', 'äY²§ØŸ#w‚f€°9›÷'),
('HŞ$å(|Rê¥LTŞãÿ^š', 'wp-content/themes/advertica-lite/front-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r‚Ö÷ÙŒ8Y€à—¥Ã'),
('\nªÖzÁ-8ıcFQ´$Ô', 'wp-content/themes/advertica-lite/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ş\rV‰¶tğœø¸Nğ'),
('»4¹,.ß\nÆïÄôF', 'wp-content/themes/advertica-lite/header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3Lûw.AĞÇ•}ĞN\r$è˜'),
('ÉÛ²:o¼ÃíòÂ—	à×@ä', 'wp-content/themes/advertica-lite/home.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/šX7Z…Å-2½­Êfş'),
('ñP£~gË¬OaïŞ§¤ğ', 'wp-content/themes/advertica-lite/images/Advertica-Hexagonal-Mask.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Î•¦‰ºKû¯™1\\”³¨µ'),
('Ò¸¡“`î\Z©CÎaRûD2J', 'wp-content/themes/advertica-lite/images/Advertica.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©±«¨x—–Â?^…6\n'),
('¤òQ 38¿qÿš8ùp', 'wp-content/themes/advertica-lite/images/Analytical.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹ãı›¾øÒ9y7Àå¬¶'),
('‡Ñıû`g´ d­Tcµ', 'wp-content/themes/advertica-lite/images/Avis.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-bë‘nk³Á<J\ZmÎ»S'),
('¿ÿC-œR<XMX>~{n', 'wp-content/themes/advertica-lite/images/Biznez.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N"D?ëÕ¥Ìfv	ø	p'),
('9ü×(¨¨ó¶	ÓŒ´&& ê', 'wp-content/themes/advertica-lite/images/Bizstudio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'n\nZm±0%XB<ÛxŠ'),
('ŞÆè#suĞÕ t±~ß', 'wp-content/themes/advertica-lite/images/Connexions.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Íh+*¬›]áp¬²qºì¶'),
('\rózØš³ôÀ	¥a\\Mq', 'wp-content/themes/advertica-lite/images/Convac.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D½%øĞL÷ûkşv­'),
('ÑÊ"4uÚl	1¨­''FÄ', 'wp-content/themes/advertica-lite/images/Eptima.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f	Ô|âÊ‘ìÜWÊƒg'),
('ïXÃj(²ÂëZ×Õ¹O', 'wp-content/themes/advertica-lite/images/Foodeez.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''g[Yîv&áGVæ	ÇØÍw'),
('œÛ‚ĞW‘÷÷Z4h¯j', 'wp-content/themes/advertica-lite/images/Fullscreen.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ğáø<_ê©q¹ĞxÓ'),
('54êœ…iµ°	 Ùvù­„', 'wp-content/themes/advertica-lite/images/Incart.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$šÈèìàÛ¼ª×«T àø'),
('%ëZMhã\Z¬Ù®I¹8''', 'wp-content/themes/advertica-lite/images/Insta-Appointment.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ù^\0´í„¸7^ÜrqNP4'),
('‰ñ.¿ÿì¼‚äÄ‚‘s²', 'wp-content/themes/advertica-lite/images/Invert.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g‹ù±cG¬58Á8Ox&'),
('EŸg¦¸ºÔÑ!e gÉ.', 'wp-content/themes/advertica-lite/images/Irex.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚•@Ÿ»f®*KÕ{áZ'),
('\0Âq*ş#Q“<‹]ğ', 'wp-content/themes/advertica-lite/images/LeadSurf.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ğ@ìV®2â¤Üÿ_J€HL'),
('745}zCô^{”Ø”i<Ø', 'wp-content/themes/advertica-lite/images/Parallax_Section_Image.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'à›9ı<Xİ;Œ•â¿;o&'),
('öÏµe*¹¦‡»5[Ü''', 'wp-content/themes/advertica-lite/images/Rational.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯Lè¬½µ¸ê_e&ËBe'),
('}Iälğ!¶\0$ıe‹ô', 'wp-content/themes/advertica-lite/images/Sketchmini.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oïÑì¢—İ£[`ª%{ë'),
('i3*«V:Ô a¹ê¨Z', 'wp-content/themes/advertica-lite/images/Timeliner.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RsHSİ?PÄq™²'),
('°çÌØò.ZEåô/-Rå', 'wp-content/themes/advertica-lite/images/advertica-header.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´®à60e(?ÇAàÊo'),
(']´ıÍÕˆ2²ˆúÔàš', 'wp-content/themes/advertica-lite/images/advertica-logo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"ËS´îˆßYn*ĞT]H'),
('Â-ÛùàÂÓÄ<|zXéÎÇ', 'wp-content/themes/advertica-lite/images/advertica-options-bg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z½2cÆ˜’!ª¿²lO'),
('‡?ì–[ÜŠ8¼z•ÛşAº', 'wp-content/themes/advertica-lite/images/advertica_favicon.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÒÁà¾„-rçÄ\Zfø„y'),
('Ê€âÙ	N"‚ñôÕŞy¨', 'wp-content/themes/advertica-lite/images/ch-arr.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤œõ¦µíİLq ÌôL˜¹'),
('©Ìá+†.³H©”jj', 'wp-content/themes/advertica-lite/images/client-logo1.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0}O¢	!·#ş× UÓê'),
('—”ëÿ÷ÉÛº¬ã[:væ', 'wp-content/themes/advertica-lite/images/client-logo2.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÉM²7£¾ş‚G/+wÀ'),
('¦ø22øÇ‡\\Û«öÂ`Ğ', 'wp-content/themes/advertica-lite/images/client-logo3.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ó“VWŸ-ò,á÷ÈİraŞ'),
('Â"$8Uêš¾fÏ®HdB', 'wp-content/themes/advertica-lite/images/client-logo4.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯JTE¬ÁË(G§''ıàıºÍ'),
('HB¼¨<UkÏG6İ©', 'wp-content/themes/advertica-lite/images/client-logo5.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ã3Ğë"`%Âfk`Q½‘–'),
('¦¹uÄ*~vÃaìl!!bşU', 'wp-content/themes/advertica-lite/images/comment-box-btm.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯Ú¡¢ßË&5C¬á´ı°'),
('=ÛdÊóÏl>I¤$$Lâ×', 'wp-content/themes/advertica-lite/images/comment-box-mid.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ë¨Z/¼/Çæn âC«g'),
('«“E÷ç”\0çj2W\Z–M', 'wp-content/themes/advertica-lite/images/comment-box-top.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿ‘9SÖhİV²e¨O£Ã*'),
('´†§rÎ¤ùp©”½}÷Ò×', 'wp-content/themes/advertica-lite/images/corner-arrow.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4^-4È¿#˜¿«øÔ|†1'),
('ú›+nûü9„Ô§boÒ=èÇ', 'wp-content/themes/advertica-lite/images/loader.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'K:û„²·õmğ™—£P½'),
('Æ^„QO8ªlAxcĞ†9½Û', 'wp-content/themes/advertica-lite/images/menuulbg.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼¹ál›~£!–­mÃ'),
('"m\\LÁù¡ÎfR6âÕo', 'wp-content/themes/advertica-lite/images/page-title-bg.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'À2õ<ø†eÿl}4Àü•§'),
('ÆjĞÙÎÌê&yãs¤È', 'wp-content/themes/advertica-lite/images/sketch-logo.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'y¸æFÄÍ×orÛÚr‡ã'),
('©“¢ö#ü’¤Äo6o¢Û–', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/css/welcome.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨â”o"AUÉ‡Oxn}'),
('íÜûXæFu)v7•i)(', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/css/welcome_customizer.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'âH›Ä|.Š}¡®7U6kV'),
('M©t³ûrØPK@™“¬ë', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/ajax-loader.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j®j~À‚Õ:“îM‡Ù$'),
('ë	Ğv?Ñ&éƒTË¡Ÿbõ', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/onepirate.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'à~#›¼‘úqyéãš'),
('¤qä¤ÕR$œF°ê9’è', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/responsiveboat.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ê]Ch’ù0îÈ¤q9<'),
('º¾cí›¦thàúòŞ[p', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/zblackbeard.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ØÄwªJåô(bFèªîV'),
('edà\nõ9¡(Æñîg@?', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/zerius.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u\ZZÄ ¯ôÂê_Ÿ\\Í^'),
('+Ñ¿Úıì‚úÇÑÕ9VŸˆ', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/img/zifer-child.jpg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xzø«‰—Ôk›2%jµcc'),
('eõ¹À°±İŸ8¤¾…D=é', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/js/welcome.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'äÁ¡£îj¾³t.œF)Z'),
('ÑY<Ãa»wØis', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/js/welcome_customizer.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'š‘_T{"QœºzQ¤ıë'),
('ØÈúŠ±EŸÃM×Be˜èC', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/changelog.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' fÄ5+©Z‡öÅRª.¬'),
('›¾vXÄ ñËaAøŒR', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/child-themes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&{ƒhŞóPş%ê}0«ÿ'),
('µ™''%\\œ}\\¬ ™Y', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/free_pro.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤/÷,ù˜ÈûR*ı	h'),
('@1à9UÅäbõ¤‚Á', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/getting-started.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9VÑ\Z#ı=°ä8gÑ¼'),
('b‹²§ùÈ›tU(Ezã{''', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/sections/github.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†lÈ™g€\r\n¶ŠÌ¼üÄÿ'),
('N”8ì@¹êŸÇ–‹ª>', 'wp-content/themes/advertica-lite/includes/admin/welcome-screen/welcome-screen.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'N«?GÖ&k+…øÎË&&,'),
('ôµØ½¿Îü+^àK£*oì', 'wp-content/themes/advertica-lite/includes/advertica-custom-css.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '“/\0İõğ$ÄŒjHÌò'),
('v\rz“¦1bZ=r,íœ', 'wp-content/themes/advertica-lite/includes/class-plugin-activation.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':,kôŞ¦y<ş£Ã¬µÂ'),
('y¸>2-¾ß¸üj°:¾a', 'wp-content/themes/advertica-lite/includes/customizer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	»3^¬Ë\ZŞç«õ„£Kÿ'),
('V¬ú9malšº‹\r Ób', 'wp-content/themes/advertica-lite/includes/front-client-logo-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'cú''2ŸÙ+-U¢{4c\0”'),
('‡‰z¥ÊØQqLIÎ¹ò}e', 'wp-content/themes/advertica-lite/includes/front-featured-boxes-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ËpKĞä8zÕôÏ\0|ş'),
('\r}b™}ö@İ[jk54JÌ', 'wp-content/themes/advertica-lite/includes/front-header-image-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Zí–…™ªˆ£Ø(¿‡(&'),
('ç#ü%8’¸ãVÓYÄl', 'wp-content/themes/advertica-lite/includes/front-parallax-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'DU•¯´î¼”²a×7?'),
('Î¤¶F±gtn''±nˆqh†¶', 'wp-content/themes/advertica-lite/includes/skt-required-plugins.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1±ëğ:«ŸbO-FWU\n'),
('|ŒÜ»ë»0«ïp', 'wp-content/themes/advertica-lite/index.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/šX7Z…Å-2½­Êfş'),
('ˆÁÌ[E8¦Ö-Hº"Êµ', 'wp-content/themes/advertica-lite/js/advertica-lite-customizer.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ú°"§æ:o¤¯ÏR´ï'),
(')úöÇÙlş¦åÁ,ÚE', 'wp-content/themes/advertica-lite/js/cbpAnimatedHeader.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÂÆÜ>\r4¼Õ×7ã"é¯­Ô'),
('Áè#=oÈ¸LDõ#ı[4H', 'wp-content/themes/advertica-lite/js/custom.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'È\0Ó[ÒHh$¸Ğ©¬%N'),
('r¼=Ï¶(àI¶ÎÆ*O©’', 'wp-content/themes/advertica-lite/js/jquery.easing.1.3.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÛıcW’Í''éQ~… `§'),
('T9´¢¯6:¯Í¸eAø†E', 'wp-content/themes/advertica-lite/js/superfish.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	µ/©ı¡pÖÔ»ö-\\'),
('…„G¿ØÓ1‰Ûv‡j', 'wp-content/themes/advertica-lite/js/waypoints.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tßE¶Ò½ˆ,Ãõ*ŒüWÍ'),
('\r£Ó†RjêŞ·r', 'wp-content/themes/advertica-lite/languages/en_US.mo', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$§’*j§éDijÊö»”'),
('ï¾gJ-îZ¤1†0™X5', 'wp-content/themes/advertica-lite/languages/en_US.po', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"O´ø¬XÌã7ÚN”\\°'),
('æ³R>Ã^¸dR5ãIX®', 'wp-content/themes/advertica-lite/languages/en_US.pot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ã9a`dWÛ\ZRQÓéŒÏ'),
('56eÍ7’ÁïÃœB¬e2v', 'wp-content/themes/advertica-lite/page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§Øì™ú¤®Û7MY\Z'),
('Tè¶Ç´T¬©j.3¹Y„', 'wp-content/themes/advertica-lite/product-services.php', 0, '1ÇKmAa¯„ÂxİOuë', '1ÇKmAa¯„ÂxİOuë'),
('¦ªw©wf$Ašş\r«…l', 'wp-content/themes/advertica-lite/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èì^G\rOç[X?»ì\\w'),
('¢ª«cõµ«l^–Jœv', 'wp-content/themes/advertica-lite/screenshot.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j±]»»Ğ@lMÇë8“1'),
('r­ßŸkÛuüfÎ0½ì', 'wp-content/themes/advertica-lite/search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ú°‚á&rGáØ[Àş®àÍ'),
('?Q™·#L;!İö6&&+ÉÃ', 'wp-content/themes/advertica-lite/searchform.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3á‡¹E0@ŸnÌcû¾'),
('ï¸xs\\€>6pÂÛ Oq²a', 'wp-content/themes/advertica-lite/sidebar-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/o#ãr\r°*•JU6§Ü‰º'),
('ì¾CËçcWg‰üa³¬\\Ëˆ', 'wp-content/themes/advertica-lite/sidebar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«,×uª¿¾kcß²ñ´ó'),
('ÖØ;Pê~å7pi:\rf', 'wp-content/themes/advertica-lite/single.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÄÆTe0Ê1¢GÆÖÓ-+'),
('ñ‹¤ÌˆÙğ¾Ù^—ç‘', 'wp-content/themes/advertica-lite/style.css', 0, '¶%ÜUDâµ™†×~»!', '¶%ÜUDâµ™†×~»!'),
(':ƒ%\nÅîŒXÊìî§OY Ã', 'wp-content/themes/advertica-lite/tag.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3eöÂ¯Ô;,ÖÛ½xS¢'),
('y\r7 °¹‡¡¨\n±@m¬', 'wp-content/themes/advertica-lite/template-front-page.php', 0, 'Ò—@ĞïÌ1Ï?\nBA.q', 'Ò—@ĞïÌ1Ï?\nBA.q'),
('öío†ä£öÊG~ÎØÏ7\0', 'wp-content/themes/advertica-lite/template-fullwidth.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r7$‹rã­…¹GJUË\në'),
('šƒ¬JÌ}F·ßE\0Ş9³', 'wp-content/themes/index.php', 0, 'gD,Vë§=\\ÆbP', 'gD,Vë§=\\ÆbP'),
('&Éßë	PğshcusS', 'wp-content/wflogs/attack-data.php', 0, '#Ø­\n¾îÅyIb½\rÛ\r', '#Ø­\n¾îÅyIb½\rÛ\r'),
('ÓU÷€nĞ/|r@Úªò×Á', 'wp-content/wflogs/config.php', 0, 'ëªÄŠ&¤Ë’•­€óú', 'ëªÄŠ&¤Ë’•­€óú'),
('ÌAÂoÚ!ÌVáêÅ³`v', 'wp-content/wflogs/ips.php', 0, '¥‰ùÍ€÷8ÛşÕE½ŞÍ4', '¥‰ùÍ€÷8ÛşÕE½ŞÍ4'),
('‡!¿ŞEª©S7x–ƒÈæ', 'wp-content/wflogs/rules.php', 0, '3}³¿[¼­SFfœœí', '3}³¿[¼­SFfœœí'),
('ãaİOj''÷Å»D*ÖV4', 'wp-cron.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ò‚Bõvme%¹Ióv26Ó'),
('„ƒùvü´ŠÏŒéŒY9Ó', 'wp-includes/ID3/getid3.lib.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Å-çdr"şK$âêu_™¸'),
('dõå:w¤îĞOÍĞ†', 'wp-includes/ID3/getid3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—¼ÖVßzúe=IuïÚ\\'),
('9ÕÒ¢Õì9ñëd\rëŠY', 'wp-includes/ID3/license.commercial.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n;g–üJ€g­²ÆÙxA'),
('}ïÈæŠ\\Lü¯`Š§äi)', 'wp-includes/ID3/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5ÙŠ­ø÷ÌhQ3fQ÷¦k˜'),
('D.÷îˆö:•\0¾¥SÔR8', 'wp-includes/ID3/module.audio-video.asf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(k™ÁQ·ºÏÕ|$á4Ï'),
('x	G!Nä·$¥.šdTbï', 'wp-includes/ID3/module.audio-video.flv.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kƒHi¶,Wş©Q±FÜãÓ'),
('ÖoÒ¨*Kîêo˜7{ƒ <', 'wp-includes/ID3/module.audio-video.matroska.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'cš¥®‰K9j\0ûSü€içJ'),
('TŒŠ³vm?,³aŞéãT4ê', 'wp-includes/ID3/module.audio-video.quicktime.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''-ınL9 a\ZÙ!ænë'),
('ØÀ\ZvŒI:wmä²''~K-', 'wp-includes/ID3/module.audio-video.riff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'î‚TfbpGOÙ-â'),
('”±¦®LØâ6	ØÀè×³', 'wp-includes/ID3/module.audio.ac3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èE\0ûL;"OÒù§‹¦d'''),
('Ç³\\ªİ_L-Y€ÅŒ%$', 'wp-includes/ID3/module.audio.dts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óêV`ÉL7.¶ôl] '),
('@ø‘+âTÎ„''··¥Ù¤', 'wp-includes/ID3/module.audio.flac.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Pê|ˆısqÓí;Ã'),
('¾ƒ—ñNéÄõş@½(º3—', 'wp-includes/ID3/module.audio.mp3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ë‡%{/ô¬U‘Ô"mü†'),
(':®|LûH6(Îßcµg‚Ö', 'wp-includes/ID3/module.audio.ogg.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{Ü:©_ìîÔöÔ³}<—'),
('Î_)-ª]íËŒkO	Ã÷Ã', 'wp-includes/ID3/module.tag.apetag.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4lŒ—ÊìºU’©Rú9I'),
('ÁùÁ2zsñú4xÎEB', 'wp-includes/ID3/module.tag.id3v1.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+6‹éáQĞ¬g4'),
(',†áÔ@µšhjäqrŞ’ÿ', 'wp-includes/ID3/module.tag.id3v2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òc£…ŠÔFyÙO*î­N'),
('‰? 8”÷˜ÑÉZÏĞNÁ', 'wp-includes/ID3/module.tag.lyrics3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Uùû3€º“İ"9²2í'),
('(~6vqVì0ô{†"', 'wp-includes/ID3/readme.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '“–ßáÆœ“±VLN[«'),
('i¢™;Ùõ&™¾oâ®?', 'wp-includes/IXR/class-IXR-base64.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'î*6ÖÕ¯D¶Tæe™»'),
('®û	ıÓ­gÈ±!n‘P‡', 'wp-includes/IXR/class-IXR-client.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'QÄ£KÎAÏ²]Úu…YQ'),
('¶Ádx¹ÍÖeBÀİ™ÏŸ5', 'wp-includes/IXR/class-IXR-clientmulticall.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯3@¸ëÃS¥\n_¬é'),
('ZéÎ=Ó§Årc"²”y®', 'wp-includes/IXR/class-IXR-date.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŠÊ=ÿ''=c.Ø§†¡ig'),
('^H\0õB|ÛØ4Û@zÁ÷', 'wp-includes/IXR/class-IXR-error.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g6"¬•íu\\''3¼²­œbŠ'),
('$óÏ«/ñş¥­!¯²Cæ', 'wp-includes/IXR/class-IXR-introspectionserver.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2Ua¾wä<øIw‘p†O7-'),
('ÿ—~%B—\0ƒz˜îõ?o', 'wp-includes/IXR/class-IXR-message.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'w*¶{Ì°h%D«mrô,'),
('Šwì\ZŞdÏ¢óü\ruD"', 'wp-includes/IXR/class-IXR-request.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%p.<SÇ¡ê™Ôz1Ï¢'),
('—ÿµalòVš?fı\ZÑ‘Œ', 'wp-includes/IXR/class-IXR-server.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘ów¯\\xT˜>ŸÊ:§ÿ'),
('3ï£ng\0¤¿\\\0	ñW', 'wp-includes/IXR/class-IXR-value.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’fû>¨5lÍøj\0fè'),
('¿¸÷ò\\èM¼MøF/±I', 'wp-includes/Requests/Auth/Basic.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'gıØxÌ„ß	4UÖ	k!C'),
('J¢>×æï£Åø"Íä/', 'wp-includes/Requests/Auth.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1—ÒRÙW²¬Ã”O[üÖJ'),
('i1üE~N¬IâAÍ”àÆ', 'wp-includes/Requests/Cookie/Jar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'é0_±õ&p µ"4Ù\\•'),
('Sç^ù7jK5I6Kæ2!', 'wp-includes/Requests/Cookie.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÑC¯é›Å(2+’y`¤Ó'),
('µÁOÂ­\n	„UÉí —Rb', 'wp-includes/Requests/Exception/HTTP/304.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ó;F4ÎAÛIïİí÷T«'),
(' <@¾s”†î\rÃÅF¨Œ/', 'wp-includes/Requests/Exception/HTTP/305.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Xø÷\0Këæ/`¡,û«&'),
('8PÖ§ê\Z¼HGE}8Ú', 'wp-includes/Requests/Exception/HTTP/306.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Wsz¡uNPÛjÜÉòXu'),
('HñıYfUHèu„pd', 'wp-includes/Requests/Exception/HTTP/400.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Qån‡Œ»VJ¸RÉxû5üĞ'),
('/²ş}ã¦¿Lú;?Êw\\', 'wp-includes/Requests/Exception/HTTP/401.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';*¸¹Ëı‡º¢?Ád™@'),
('*\\TÒ)%]óªyiD+', 'wp-includes/Requests/Exception/HTTP/402.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`øYÕQPÚ\nz•šÉóGÖ'),
('œŸlÛÀ3.	XN‚', 'wp-includes/Requests/Exception/HTTP/403.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼Ñ`è÷\rÇoû¿k3·ş1ß'),
(';#¿	n©åÜ%"õù', 'wp-includes/Requests/Exception/HTTP/404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÔÌcƒY\0…ysø’<M'),
('Y›´¶ŠbÚ§,Åı÷J', 'wp-includes/Requests/Exception/HTTP/405.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'İ8Ñ‚Şm!²Ò¬³­ù'),
('ŒòFj]pÛ ÒíÜAc\rp', 'wp-includes/Requests/Exception/HTTP/406.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KÈËlïhŒrÜ9"\0¬'),
('”×èÿNt»Kô£Uò…ï', 'wp-includes/Requests/Exception/HTTP/407.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÂÈéõØv‹½äÖj&æÆµ'),
('º¿‡\0n:T‹q}K ø@', 'wp-includes/Requests/Exception/HTTP/408.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@>1d„IXÅO˜ìÈ·v‰'),
('Xš¤¾v–\ZÆ’¯Š"ë$', 'wp-includes/Requests/Exception/HTTP/409.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™ZÄiæ~*=›ëş©¶'),
('…ı›T×ì–‘µ:t[¦ß', 'wp-includes/Requests/Exception/HTTP/410.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q¾O47ßºİ¥/8X!„á›'),
(')ø”|ü{4æ+]ÂX(', 'wp-includes/Requests/Exception/HTTP/411.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''¥R¡äMö.ÊZ`G–'),
('†)ÀÒâYh¨.ò;¼èÅ¡', 'wp-includes/Requests/Exception/HTTP/412.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%¸„IÜ·¡¨=Ù7Š¥VÇ'),
('	˜.¦Ù5uaÎWkJø˜', 'wp-includes/Requests/Exception/HTTP/413.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'é–<Á]ÉY·ÙÿXL¿Ø'),
('[ÅYÁĞ44óOr¶•l0Í', 'wp-includes/Requests/Exception/HTTP/414.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼¦]Uâ@ö¥)Øæ¡#h'),
('Œß}¥^72Â‚„ˆ·®', 'wp-includes/Requests/Exception/HTTP/415.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'XÌ°TbêÌ®£JUÃ'),
('g”Kë;ûqF»VI}şQí', 'wp-includes/Requests/Exception/HTTP/416.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ù1‚N9ã–ÉªÆa€Dxø'),
('P&_#Ï''ÜzTâ†s', 'wp-includes/Requests/Exception/HTTP/417.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'BpjhO^Àc\\G #'),
('ÅD€¬CèèÔÃF}±Ë', 'wp-includes/Requests/Exception/HTTP/418.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'J!ºâ˜ñÉşÚ[“ş4Šó'),
('Ş]PªJQÆ€6oÖ¢÷•;', 'wp-includes/Requests/Exception/HTTP/428.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'š—»i÷Bäå}§^®t*'),
('¿O/´Ã¬î`|g¨_\0', 'wp-includes/Requests/Exception/HTTP/429.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Sğİ%|F.Ã Zd…³Ì'),
('ŒÊš¼{€(ú‹Ğ\\iŸ7.', 'wp-includes/Requests/Exception/HTTP/431.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'àãs|b$ÊÕÑ“<‰Ù'),
('¨\r²f æhÏ8°!', 'wp-includes/Requests/Exception/HTTP/500.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'À¯©Ækmƒ\n	HòMÿÚ'),
('Ùl;aoò´˜â¹~ûGÖá', 'wp-includes/Requests/Exception/HTTP/501.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eÚ¸04ò-?èõ×‘¨5'),
('çâbm€%²‡ŠÛÚ­Ö«', 'wp-includes/Requests/Exception/HTTP/502.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|È:l€ÏzùÕ!{ûGÿi'),
('nÅ¢¨)á®cˆ›Şq^"', 'wp-includes/Requests/Exception/HTTP/503.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9÷RaÃŸCô`\0ÔUT´'),
('Oy™}MaÍˆ_Öú“I', 'wp-includes/Requests/Exception/HTTP/504.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×mŒÌªDb“ Š*¥'),
(' Ì\r$	QŠ^C(ØÀíäõ', 'wp-includes/Requests/Exception/HTTP/505.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']A	3æ[/CdÁ¬Ş'),
('ÕuG#ü)¹|Ã^´¬¸6', 'wp-includes/Requests/Exception/HTTP/511.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'unšN<KwøĞ›¹‘Ñ@'),
('‡Ÿ‰û¦¯>2\\o†)¬·×', 'wp-includes/Requests/Exception/HTTP/Unknown.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Údlá«¶2¯AûÏ\nW¬'),
('ÊÄüƒWå>ÄÒŸ¢ÏïşÈ[', 'wp-includes/Requests/Exception/HTTP.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èÕüh³ÆúäRlrÚå'),
('ˆ¯Iy-‚\n·Å„‘', 'wp-includes/Requests/Exception/Transport/cURL.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…6TÍg*\Z›:	¯x7ßá'),
('ïrI‚åíê–É€5 ÁF', 'wp-includes/Requests/Exception/Transport.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«»løÚzèê J«^Ñ'),
('TšÄ˜5VH«¬üP{Öô', 'wp-includes/Requests/Exception.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡›¬ú\0…«3é\ZÌRI'),
('àùÔ.Q}3ÒÙT‰', 'wp-includes/Requests/Hooker.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Å@%©a[Ñ/4¥á'),
('X–êM¾·šÃxÚ³üJğ¹ö', 'wp-includes/Requests/Hooks.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ', ¥ ¹¨—gx¡iÎëÙ'),
('¥Ô í\\¹ŞÂ…”Tn€‘]', 'wp-includes/Requests/IDNAEncoder.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×}­¢2ğ›àĞP´Ø±'),
('éTáB3º›GöŞ{', 'wp-includes/Requests/IPv6.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥ßKˆNŠèñ¬knT±'),
('ªˆ}z²šî¤#¸€™‚\Z', 'wp-includes/Requests/IRI.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '52]ƒœ{ò}µù	`X'),
('w´''œPe¾úFÃ+õV\0', 'wp-includes/Requests/Proxy/HTTP.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿĞæ/2Û½½¦¼¤×ğ)'),
('#y÷Ÿñt(‘$NTüt¥', 'wp-includes/Requests/Proxy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µ@k7µ\0×Ót¸\\*‡™G'),
('G Xeô·xïÅw0\\Éo8', 'wp-includes/Requests/Response/Headers.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z×Ã‚Ò¶A-§ô>c©`'),
('ÎYµf/÷pw™ÍŒ§', 'wp-includes/Requests/Response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Îp†»·®Ræ«·Äı''G'),
('U† $A=©HeØ|îzÈ–(', 'wp-includes/Requests/SSL.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&Pgë''A6¬(¾07TO'),
('c42j›§ÎxåcìÄd', 'wp-includes/Requests/Session.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7øÊİ†ü¿Î–µ¼ö}l'),
('`Ø@‡¯ğü×ÚYEî!', 'wp-includes/Requests/Transport/cURL.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ä€Ú87a`CZàÑ'),
('f¿¸ÙÌBœDêFr\r\r', 'wp-includes/Requests/Transport/fsockopen.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!îJO`­\ZüHñH?·?'),
('•Ò.ÉIOI¢P²³%)', 'wp-includes/Requests/Transport.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œ™;Îkí‹¯K\\VlÆ'),
('~A‹H„gç™éş¦KT€é', 'wp-includes/Requests/Utility/CaseInsensitiveDictionary.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'µğ:ÈÇR³KroÕH2z'),
('ĞÖ/¨?Ÿà–ÚÛUñ‡ê', 'wp-includes/Requests/Utility/FilteredIterator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ù¢ÙaÖx·%AªyÓ'),
('œı—k’5SHåĞçĞ«', 'wp-includes/SimplePie/Author.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4€qí_ğA‹%–Nw£1'),
('Uğ\\p{Jş˜OÃQË&', 'wp-includes/SimplePie/Cache/Base.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”Cí¡‰»Ù2]œ]#|j'),
(',ŠhÉƒs?4B[Ë^Õ', 'wp-includes/SimplePie/Cache/DB.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y¿OU£õ’.Üb¼ûö'),
('éÖçÙöV,E@†X‚šy', 'wp-includes/SimplePie/Cache/File.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£=»@ìÂœÆB[	SÑ'),
('ù‡†óI™:4PúUÒÙÀ', 'wp-includes/SimplePie/Cache/Memcache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'öJU²¡…1SQ«„?¶'),
('<)8T*.SuSÒÄºŸ', 'wp-includes/SimplePie/Cache/MySQL.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'è‘ÎßBÊC™\ZHÕxV‡'),
('YÖ»Uª€ÕÏ}Ãr/', 'wp-includes/SimplePie/Cache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'yü¢:ƒoMh÷vL§4'),
('­Ìİ"Ü’³÷ÓÃnzD', 'wp-includes/SimplePie/Caption.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½º¼ÜÊBjM­ög[ÄÄëé'),
('µ±ã·q†KÑUÔjí¤', 'wp-includes/SimplePie/Category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'º~ÈÌ?Ôò.\nÜ¯d»*'),
('µl&ö*‡©õñßõÈ&', 'wp-includes/SimplePie/Content/Type/Sniffer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|rÃói…UbÙlwìáÇÛ3'),
('•ÒanµöV=Ty Xä', 'wp-includes/SimplePie/Copyright.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½¿h¹T©Õ	UÌ€·Ëj'),
('ØoÅÇ£	×£áŸf0¿Y', 'wp-includes/SimplePie/Core.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤®©#¸òÜ÷âÔı\ZÒ'),
('Í½3Âè=£¡OÁGÄ|~§', 'wp-includes/SimplePie/Credit.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…ä¡MçŒ‹*>\nê|'),
('¸š…P¿Of;ö™Í/ó×', 'wp-includes/SimplePie/Decode/HTML/Entities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E—^/Ï\rB†‘¥Z#”%/a'),
('2ğì^(ÁúÊ­à-^x½¯', 'wp-includes/SimplePie/Enclosure.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.†BënÎKûs]'),
('·\nfv 8¦÷á1·“™-I', 'wp-includes/SimplePie/Exception.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	Kıv&œŸÌ<\\ÚĞS5'),
('ƒ¶4rèˆ%ŞãÓÉj¸—', 'wp-includes/SimplePie/File.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®º­kU‡6ê\n¯+ë)%·'),
('ìPØ·úŒæ‚‡ÌºÆ´$@Ø', 'wp-includes/SimplePie/HTTP/Parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W%ÇĞû4ß6¥6	'),
('oZ0†š÷ùÑØÔ<cÍ0', 'wp-includes/SimplePie/IRI.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nÿ Óæ†’Ï;a{‡_6õ'),
('fÎä ÙıÂe«ªR¹)Ú', 'wp-includes/SimplePie/Item.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Eâ!úCzì\0c<Ü§'),
('ÂTB›¤O>ßv2íî}Ea', 'wp-includes/SimplePie/Locator.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€s¤ÆÚ³;‡uvf^õêµ'),
('FFvŒ‘V;vğ8/\rµ', 'wp-includes/SimplePie/Misc.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÎÍæyÆ-ÕØÒ^Î\ZK‰'),
('ŠMj÷AÕM™ñOŞ"If', 'wp-includes/SimplePie/Net/IPv6.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥Fy!j½Ù€•”Ÿ¶´'),
('‚BÒóÙ‡Èv<Svç¨³', 'wp-includes/SimplePie/Parse/Date.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'î‚Òç\rÈ¯Æ¹eÒ¹Ïô^'),
('³tfF	Ör{™Ü‡ _I²x', 'wp-includes/SimplePie/Parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R».äbçä§~ıÇëõ+Ì'),
('dâºhÄ§{q4‡2÷K"ß', 'wp-includes/SimplePie/Rating.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '=p¤m	ÇKãØ¯atû'),
('}Á7 Ş˜æDHDÚPl', 'wp-includes/SimplePie/Registry.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'È¢æÀµİ1v9d\0ğÙ¸'),
('\0`Y±Ï­rG¦¦”„', 'wp-includes/SimplePie/Restriction.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*qhdsˆ;Õy'),
('[±€à1¶YAdkö,', 'wp-includes/SimplePie/Sanitize.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'BØ¸ÀÏFµØ¥à®H¸u'),
('¤Ê0l±İjÆ0+%ò', 'wp-includes/SimplePie/Source.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ƒ»ãàğS{³*Œ–ÿ'),
('Şé''g!:–H™î),¾', 'wp-includes/SimplePie/XML/Declaration/Parser.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±Úp(Ã…»BÉös#b'),
('ZÒŒ£[¼ø\nvâËâ	F', 'wp-includes/SimplePie/gzdecode.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Å8â¼†a—Ûal„4Ô'),
('Oşhu²G¯ıá²&\0ïLÿ', 'wp-includes/Text/Diff/Engine/native.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å­''*‚¾ãÃß*èx'),
('Ç‚-i)ö.ø\\Îèæz„^a', 'wp-includes/Text/Diff/Engine/shell.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u«AÜ‘Í~Jª^t¥ùæîº'),
('÷ @ï;€ú*ÏÁ|¨°', 'wp-includes/Text/Diff/Engine/string.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':±“=üM©Ã\0¬ïi)'),
('e½^#|Û¢TĞ©’ˆz', 'wp-includes/Text/Diff/Engine/xdiff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ö¹ÈbŠt­X8šGX'),
('&¬‘•Rw?~„j­hJ¤D', 'wp-includes/Text/Diff/Renderer/inline.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆ\nån5±P´²ÇéÙB''è'),
('3âÉfQ3àhğ5[À£W¹<', 'wp-includes/Text/Diff/Renderer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ü‡ ßC0µY7OÜ@ÙGS'),
(']B#Í2èzÚìúbUœÉ/', 'wp-includes/Text/Diff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lpÕšn›Ñ7q“ã*'),
('-kdÏ¯‘ªXßw\\7ŸÀ¯', 'wp-includes/admin-bar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P×¶Jk×5PèE)ÁŒ/Ñ'),
('Guµ^¨/1ÆÔÕSñ7', 'wp-includes/atomlib.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ƒÏp{AxWZ»Íöm^d­*'),
('&‡Sì§¿o¸$æ÷0øn', 'wp-includes/author-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z7?<vÒ“i)ËğÄz„‚'),
('Ğ>›sËl›WD7õM°', 'wp-includes/bookmark-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´g[lgP	‹ Œ55"ê'),
('†Ÿ\0¦>#ŠÑ›á­z(', 'wp-includes/bookmark.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i–!5Jl$(ĞÂTÍ'),
('Ç…ú9 Ù9: ÷¤\Zş', 'wp-includes/cache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘=]ğ®‚¿q¸\r®:!×Æ'),
('Ü2Gı?¦_æü\\èÆú-B', 'wp-includes/canonical.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$$Z3\n·†"Ïk©ÎµZ'),
('ëãYCàŞoƒoRÔäº”', 'wp-includes/capabilities.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9â€;6á’ıå‘Ìuê°'),
('‰j®ÃIîÔÓ<êŸŸ³†iU', 'wp-includes/category-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ş­{ƒ,wë»”Œ§"sbí-');
INSERT INTO `vi_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('Dï²Ö5\n''å\\¥Ã~W“‰', 'wp-includes/category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eôEm´˜ÇxO^1Èj'),
('mD’ÆTms‘·òA©}', 'wp-includes/certificates/ca-bundle.crt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'İ{Ş½üA¸£6ã×Xi,'),
('èJ‰Ùåy”0mì`ä¨/', 'wp-includes/class-IXR.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2¬v¾¢0p"…+/zbÆ+'),
(':<·$Í0,w"&e({', 'wp-includes/class-feed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ì)$k¦¿3\\ ¢³÷2E¶'),
('!›”È@|˜4«°n­ô', 'wp-includes/class-http.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±Å87²5¿q	*¾â!'),
('Ø&ãZhÍ$›Ã‰o‚', 'wp-includes/class-json.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€ŠB{ vCÔŞ¯MıÏAm'),
('£í‘Eââí•ÀQ?èŞ	(Ä', 'wp-includes/class-oembed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<Zê\0äÊÁ X™e'),
('	QW¯ïŒˆ~-Ê\0dÅ', 'wp-includes/class-phpass.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z!ËêTËŞßí·ÌB'),
('ì8·Ú§™ºs}ï÷Õ¶àNi', 'wp-includes/class-phpmailer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>ÿÔ¶Êß™O#ÙZŞ'),
('"µòÉàÉu>1Ğ7şŸ', 'wp-includes/class-pop3.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KTQÈ©:O!§@T¾–y'),
('öŞ*Ê7\rçæ?á¶ı', 'wp-includes/class-requests.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9e¬¡/¶ìuaz´Ô"<'),
('¸è«\\ ¯”IÑ»Á»è,', 'wp-includes/class-simplepie.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\r¾ó”©''ğh¬İX}H•'),
('¿àÎš,ÌQ˜a»gl·Ä\Z¯', 'wp-includes/class-smtp.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Æ+"Z<KtëÈ«:˜Ò•'),
('e®ä__ó%÷è®xˆÀÛ', 'wp-includes/class-snoopy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's°\\ŞÅ…ŸöíÏ¼Ò.½	`'),
('„)Å©¶ê…2[¤	Ó4¨_a', 'wp-includes/class-walker-category-dropdown.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	‘ß¶æÿyv„İ%`,­Ém'),
('•c­ÛnxÀÔº|È', 'wp-includes/class-walker-category.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9\\3şeD{:r ‡ö=J'),
('KıK+ì†À2¤	aeZ“e', 'wp-includes/class-walker-comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•/(cAQ\\ˆ÷êS'),
('¯ÜÏæå(è§¨:pRß/', 'wp-includes/class-walker-nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'îNåq[;‹ëéd˜:'),
('Jó\rÓ·G>û‚„õ', 'wp-includes/class-walker-page-dropdown.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G¼|Fà™yú‚)Wº´ô'),
('5S{ïTÆ–®Îe½/Ë', 'wp-includes/class-walker-page.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³íKlšù²øN`âwßTh'),
('Ö¶Ëå9Øføpo3t', 'wp-includes/class-wp-admin-bar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9ÉßÔ†¸ñØĞ”hÏW¸œ'),
('Ö»E\n»<¥B„[ì,', 'wp-includes/class-wp-ajax-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!Zk‰Og‡¤÷}ş'),
('¿·\n…Ó›IQED	æüê‰', 'wp-includes/class-wp-comment-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢õxÎ0Z‚ŒGt'),
('TÑrñÂå~ÏW]ï', 'wp-includes/class-wp-comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',gÅÕF×Ä;œ`BgšŒ²'),
('ÈPÃ é3ÄïÑ€\n”Í', 'wp-includes/class-wp-customize-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'e‚é¾š\Z)]<‚ğáŸOÌ°'),
('h\ZOhløç_øÍLm/å·', 'wp-includes/class-wp-customize-manager.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Êª%6rËèÏ +V¬V'),
('`şU®2‘šmdW', 'wp-includes/class-wp-customize-nav-menus.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'LõCH”T2ÿ\rÄ•zæ½'),
('\r˜Ò§xOzäâ†÷z‚¾h', 'wp-includes/class-wp-customize-panel.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ñ1[Ù,¶S¨-.BŞä'),
('ìÀ-xÇ(ÅE¶oI„=İ', 'wp-includes/class-wp-customize-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ço¨HOÁ Ÿ9-9c '),
('f…u3\n¸M\\Á}6*0í', 'wp-includes/class-wp-customize-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']ç!Xş¢-k±9"ÍÙÃù'),
('ç”Jú¡Ñ‘e÷\rXd”Ô$İ', 'wp-includes/class-wp-customize-widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H¡1È¤$^¦š¯p£'),
('j´gsÍ66Î$€¤8*¨EÙ', 'wp-includes/class-wp-dependency.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	–\\¦¸‚MHF¶?Ft›'),
('ù„É±%›¹a{Z¼j	%¿', 'wp-includes/class-wp-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬°	¸økê\Z¡£úİ#'),
('5`à]\\Í­i\0¥ßí\ZJT', 'wp-includes/class-wp-embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\úë)cäb’à''nä¬'),
('ºÍk{šä&òó»x\n¶ø', 'wp-includes/class-wp-error.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1ËTå(0›ØçW˜Š8'),
('O =(:ËÄ<á	Ş1F¿', 'wp-includes/class-wp-feed-cache-transient.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª÷-3óÍÇ«¡½•©°"'),
('ÖŒ·ñqæÃ³ıX°[ÈÒÇ', 'wp-includes/class-wp-feed-cache.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­b“îV\ZÕB=äxı=«'),
('#D®Å„ƒı÷Ÿ5%»Ä', 'wp-includes/class-wp-hook.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úûŒãÁI˜ëàÀŒš.18'),
('²ü&B°5VëAUU,“ì', 'wp-includes/class-wp-http-cookie.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Şñ‡¿eî.©súÊˆíFØ'),
('äÑç#ÿiJå®H·?ö@¸', 'wp-includes/class-wp-http-curl.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'äQ­ÀGÁ#J‰RÃ™Aê'),
('•èMO,ÌãsæÒÔ\rçâ', 'wp-includes/class-wp-http-encoding.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kÖk—æbê7åhÚ^#<À'),
('ÃåuÿXÛİ¼#‚-ÆÂøª', 'wp-includes/class-wp-http-ixr-client.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÁÕÆ?oaZØ;lş–½ì'),
('g±fö1ûÛ¶òyä;´_', 'wp-includes/class-wp-http-proxy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'À=‰šºçM\Z{£8)v»'),
('á@†‹M]"° …iNJ', 'wp-includes/class-wp-http-requests-hooks.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'oÚŸù¤ØD\nF-Œ'),
('‡B yÖw†+³àÖ|t«Ë', 'wp-includes/class-wp-http-requests-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'sê{,iÓ{9¥Ê¯ÄzÏ&‚'),
('©ÊÚ·tìg—Z·gEò', 'wp-includes/class-wp-http-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ë_Owö	\nìB=<E'),
('ß°S‚³ˆ±h[üÛ³Ì', 'wp-includes/class-wp-http-streams.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Úº_^löeí1–a³×•è'),
('>©ÆX¹\rıbõßÚŸ®$W', 'wp-includes/class-wp-image-editor-gd.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '“± ¡Î«úŞ¨6@«P'),
('á©^ºûbR–åSIá!Ó?', 'wp-includes/class-wp-image-editor-imagick.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·ü¨Æˆ6ä0søyMlºr¤'),
('ú³¬»T\nšˆô­e.(¼±', 'wp-includes/class-wp-image-editor.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Îí&ôMYz,s=Ö£¤o'),
('ı`SkåÅ7Ttàv¹ X½', 'wp-includes/class-wp-list-util.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾\Z9ÁõEà±–›ä™œ[ '),
('LzùĞïZÑüø#<', 'wp-includes/class-wp-locale-switcher.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ì ,–=0HÁÃZ°Á‚'),
('1l<œ t~LŸUwó', 'wp-includes/class-wp-locale.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Øk«hÔ×xqÿ?Ü;ŠeB'),
('ö"ÅqUy„„£9ì%Q¦', 'wp-includes/class-wp-matchesmapregex.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'YCÕ¤ò<bíé9fÔiFe'),
('Gu¹¢ØèşÒÒÒÊ­ò', 'wp-includes/class-wp-meta-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '„éÎ6¬!—Ú­î}Äp'),
('\ZúÃ\Z:\\®RfùPÛ~3', 'wp-includes/class-wp-metadata-lazyloader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·Ëù‘F¡,›1÷Ìï¥'),
('×wŒh] Ã¡Ë&“wM³Ä', 'wp-includes/class-wp-network-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|ÜxH“Ú?é#‹8sR™zî'),
('8ÜtÆî»\Zw„Nxa°ä©', 'wp-includes/class-wp-network.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ì>ÑÒâÄ¹Äï¨GhÂÚu'),
('PÃÿ@¡„É;b<\n¸cá', 'wp-includes/class-wp-oembed-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9>Àí@O8CÂòmvãE'),
('~V©ÜXa]‹7p“|R', 'wp-includes/class-wp-post-type.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '<ƒÇxtÊ‹¦Ço_ùC¹ÕÄ'),
('~‘¡ReOX‡f2”ñ`€', 'wp-includes/class-wp-post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''svwæÄ÷¶ã¿Á2dí5?'),
('Ù-h\n\r`–éÃ½Û•C/s', 'wp-includes/class-wp-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Æı¬ÂSº<jîÂlx\n÷\ZØ'),
('ëM\Z¥Õü—H³?Í²Z', 'wp-includes/class-wp-rewrite.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p¯Vò€íbó3;GlB@:'),
('\nŠÌófÉÓ…;{»tõ‡', 'wp-includes/class-wp-role.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^miÑ*ë‡OöNt²y'),
('•Ç€3å‹<¬²&³ªYÄ†', 'wp-includes/class-wp-roles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Qá™±J;…ÂÛè^T¾u'),
('Ñx(›Å¥Üº„.’õÆÕ‡', 'wp-includes/class-wp-session-tokens.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f„BÈµƒ3ó©@x;ÏˆÀ'),
('«˜¸÷Ş¸qãic¼=’', 'wp-includes/class-wp-simplepie-file.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Çêh}v˜ÀOÆ‹ò7kŠ_'),
('<.¦Ø4v·äc™"`¦t', 'wp-includes/class-wp-simplepie-sanitize-kses.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'cU^Z€¶”]aLÄ™I¨'),
('ÎÂWÚè÷=¶Ô˜Hdûz', 'wp-includes/class-wp-site-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't€^×P&F”Ğ_Gçãí'),
('‡b~5Ãaùš I@)*ñ', 'wp-includes/class-wp-site.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ûõ§m-ÜÚ\0DR¿$Úo'),
('í\\áSƒÕ‡–€8¸–;2', 'wp-includes/class-wp-tax-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÚBà­áWÅeà#(7£9'),
('Á~Q”ÔÅ´FpìÛÍ', 'wp-includes/class-wp-taxonomy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿ/ù©ş&}ñı.¤‚0…-'),
('íˆÒãI0“±B,óhÊ›p', 'wp-includes/class-wp-term-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i ¡Ír¦](\\´=¨<e'),
('İ–¼''Ö"|3â_™t|©ö', 'wp-includes/class-wp-term.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[§­Ğ|ßÍîÖs–­X'),
('øèÇ¢½BÕ´(Ö\\½0J', 'wp-includes/class-wp-text-diff-renderer-inline.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™D†©’Uµ±ÙU¿v?Ç'),
('JÎ%.¬ó~œÂ—qál¼', 'wp-includes/class-wp-text-diff-renderer-table.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5÷Ğ3™''§pdy«Y\n¹'),
('¨#×?€™ïGc	Â¯l1e', 'wp-includes/class-wp-theme.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$''†+eÙA…éÑÆê'),
('ñïª¯¾zy´ÕÈ>_+”t', 'wp-includes/class-wp-user-meta-session-tokens.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ªù–ä×†ÈŸ¬?­ŞI'),
('¡9ÔlÂ×Ÿ? ríèqÀ', 'wp-includes/class-wp-user-query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¨¬òÈÛ›¥Öë‘+|KA'),
('Rñˆ\\µ&ˆ†T	À|`', 'wp-includes/class-wp-user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª\\ı¨vƒcÂŠâ·²7uÂ'),
('\0õª]Àağv•”¾CY', 'wp-includes/class-wp-walker.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':WsÇhoŒŞ7á-¾Ìa'),
('¿{‰1ğú"¸¦^ëÒÈ.', 'wp-includes/class-wp-widget-factory.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ò¦u»{MüÒ¤ƒ3[Ù‰Ş'),
('çDj×å8]fĞ”_Ú', 'wp-includes/class-wp-widget.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«vZ9¯dOA×ÇpØÈ5ü'),
('jä±‹¹¿áğ%ˆİÃ]€', 'wp-includes/class-wp-xmlrpc-server.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³³ØäLÀş9Ì€J¬©_'),
('$¹Á¼CÁ®Àó/¼9¹¸', 'wp-includes/class-wp.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\ZOú3\Z›‹g„!|ŸSƒÜ'),
('y´íİEaÌó:[\0', 'wp-includes/class.wp-dependencies.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'XWvŞÚŸÏ¡»Ú“Jzû»'),
('¥Ùëñ§;~Ó·R·>£', 'wp-includes/class.wp-scripts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'šãö4Ñï²ùX(I¼|[—'),
('9Ïˆ[Ÿ1d{Äôî@', 'wp-includes/class.wp-styles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚UŞ:0\nñRÇ„ha¿6'),
('=°Šk˜[4œ“¢ ¼=Î', 'wp-includes/comment-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãéğr¥tFîŠ>´Îµ˜mb'),
('‘S–Æ÷ŠKK2iÉˆ', 'wp-includes/comment.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª_½G¢KkèNÔ‚Üõc'),
('Ñ_\\c9mLŠvéè£1‰Ñü', 'wp-includes/compat.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Øˆ^$p¹_ká£E‹'),
('õ-"DíÊÊ¹D²5aĞ/', 'wp-includes/cron.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†H¦L1ÓâÖrB$wbV'),
('šÄşÚ=Ö¬H–@-i˜ï', 'wp-includes/css/admin-bar-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'PÜ·bdzI.Giê	GµH'),
('Ó{Ú­d3TúXy½‘ñĞ7;', 'wp-includes/css/admin-bar-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ßŸê×WÍ¤oSó·›UşG'),
('ÔÈ†pŸşÑ]4ÌĞLñÄq¦', 'wp-includes/css/admin-bar.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢ÀZëğj‹<Èˆ‡ù'),
('şI"íp¢ĞtÊQ¹É[Z6x', 'wp-includes/css/admin-bar.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z\räñÄ%*ë´"ğÁ'),
('t8ŒÀĞïp¯Ì‹Õz{jDp', 'wp-includes/css/buttons-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÊÆ\r]1ã|0puÆ*ó'),
('¶î¤Ul1ÀÈ•Dübmgñ¯', 'wp-includes/css/buttons-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' =!¼Â<0‘Fâ-¹#2'),
('ô‚;ê¢^ğ©¸´8c„', 'wp-includes/css/buttons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '^K/B<sèlÈpTj8C£'),
('ğĞ·&§LÛ½Â¨ãVNŠ', 'wp-includes/css/buttons.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úQfc±¹eJôæ€ÌÄ+'),
('F­\\ºC?ÌZÖúöÖı', 'wp-includes/css/customize-preview-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'QIR¸m¾ñ›b°@çd„ù'),
('ìı¥Æ¯Ãæ0~\rjA4u', 'wp-includes/css/customize-preview-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÌË‘§›Ñ¡±KÚ×iÓ°Oò'),
('şgVÜàÖHIwÓ!µ’À', 'wp-includes/css/customize-preview.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥ RÈ†›Ÿ0$°i±ª'),
('æ¿y§lš€só§U>Â<òá', 'wp-includes/css/customize-preview.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i¿È?=FñÚ…ˆáÉX'),
('ÔÊpÿıS•š`ß]T]DÈ', 'wp-includes/css/dashicons.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ë×ƒğ«™¼ôGu°ø§ê'),
('±Lƒ’…yEõ{¦øf“', 'wp-includes/css/dashicons.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï<&ş % ò!8ÿã\rS'),
('òpo‚´X0%÷¢ÇíÏë', 'wp-includes/css/editor-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'f’¸:.s~iò„{Lœó'),
('ê¥²«2jEbgØˆW²xÛ', 'wp-includes/css/editor-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿãæº~¸Iø?™ÔÁW©5'),
('LsĞ‡Å›\n²c}>ÿK—‡', 'wp-includes/css/editor.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'é{CŸcˆØ¤Ì!‚0%'),
('_Ö|œ¯T¢M^î½õÄJ', 'wp-includes/css/editor.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õ°?\\¡67›lV^¿¥Up'),
(' àôcÌ«)IŒ\np,Í‘«ƒ', 'wp-includes/css/jquery-ui-dialog-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '“Ÿö£bŸº€ã.|Ri'),
('~F£Ìã«>dyìĞj‹', 'wp-includes/css/jquery-ui-dialog-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ş.„R™Ç8ô°)¤òI'),
('iô¢PÃ™û–ld\0ú‘', 'wp-includes/css/jquery-ui-dialog.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' 4{¦GjÆ¶FÑEiypè'),
('@Vó$õKÆçò<Ş1*à¬À', 'wp-includes/css/jquery-ui-dialog.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÚáˆEÏÃÂÅÆŞ’@*Õ'),
('\05gÀËÏê«”c‹0‰"D', 'wp-includes/css/media-views-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[MÆIõÒ!€g¨Ã~|«'),
('_õ´ïıá8}Ìßœ?å', 'wp-includes/css/media-views-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G1CFp“"ƒMöa0EX'),
('ë²ÔSÚ°p—GMÇ¯¨lí', 'wp-includes/css/media-views.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%İpT3ÂÚÄÜ°\Z»ã'),
('4%·IHÄO‘‹Ê°ÒL', 'wp-includes/css/media-views.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*\Z³†)Öñx Ò\0çíªÑ'),
('Ç¤>z±Ô„Ÿ!J]>', 'wp-includes/css/wp-auth-check-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ìîú–œ¿ô¼¬ú:9ÿH!L'),
('ÈY$''«»¾šo‘ãì', 'wp-includes/css/wp-auth-check-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[¾L.ËTRÊ@†ƒçŸ»'),
('…,CUUîèœú9i-', 'wp-includes/css/wp-auth-check.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '…u,¨È™®ã)~‡GŸÕ”'),
('Y 68ÔH;%,¹_c\n€', 'wp-includes/css/wp-auth-check.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÑùOš“ø;}ÄÙ$ğHBÒ”'),
('‚w€·5»ÿïÁ¡)ºû', 'wp-includes/css/wp-embed-template-ie.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'î·)6ó	ØĞ¼q ªÊß'),
('ynmÀ;˜/ĞUsK	»¿', 'wp-includes/css/wp-embed-template-ie.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Zì<¬wVé´¼¿\nÓœwr'),
('’/»É˜ü]ô^¤W\\ƒq', 'wp-includes/css/wp-embed-template.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÀR€L×Éjşéh›½2'),
('z¨¯Q<’˜''š€U~ÔR\\', 'wp-includes/css/wp-embed-template.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'C3†ŞJd¹ÊmtáGV½¯ö'),
('\\[æíi%Í°<ú˜e“>©', 'wp-includes/css/wp-pointer-rtl.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹°¾ùLQONÿŸÆ8@'),
('jQûõ—e÷Šø;âe', 'wp-includes/css/wp-pointer-rtl.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'EnòVeò·l…¶WëÛ'),
('sÿC4M¾*µ¾*B«)µ', 'wp-includes/css/wp-pointer.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚î®Lh((È€ùûÃê'),
('-œçŸè—‚ ‡Y{]nsƒ', 'wp-includes/css/wp-pointer.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~Ÿ×‚`.­\rİ‘ì¾`°x'),
('®xˆWº‰2eöuvÔL', 'wp-includes/customize/class-wp-customize-background-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'pÏ‡úÑt|Î3'),
('šVŸ^æ‚3±çm6‡._P', 'wp-includes/customize/class-wp-customize-background-image-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')Ù@‡t”şj23´ãW'),
('õ·D°µª6íSÿ/ÈcQ‚?', 'wp-includes/customize/class-wp-customize-background-position-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n]“3<L(É°¨pèªHÿ'),
('MYŒñGˆ°\\tXû„’/', 'wp-includes/customize/class-wp-customize-color-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~÷\0\09ı&•c—‚u“'),
('ş''TúŸåôÌ­éY²Ç™', 'wp-includes/customize/class-wp-customize-cropped-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[W''"ñfìöIŞ™©Ÿt'),
('ó½³Nò³Ëô„ü«óÏsÂù', 'wp-includes/customize/class-wp-customize-custom-css-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Fú­•ìû\0ZÌê¦–e'),
('¤üY¤\0)\r/jñ©)ôAr', 'wp-includes/customize/class-wp-customize-filter-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÈÂ`Vvı>A³¢ â$±÷'),
('Zxˆÿ1¡2KÓZ¤,¸ì', 'wp-includes/customize/class-wp-customize-header-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+ã-±ÅşhÕıÔĞ³×¹Ğù'),
('¨°ÌœÀ''K…zfŒå', 'wp-includes/customize/class-wp-customize-header-image-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3§¦Ïpü¬GÉs’0¤'),
('á™>Â“êÆÌ\nô5´ëäZ', 'wp-includes/customize/class-wp-customize-image-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ui´h-ÉÀ „öîKó'),
('*úOÄ‘Ìâê·åi', 'wp-includes/customize/class-wp-customize-media-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rÙtj+Iq8î†6áğ'),
('ŸhSÑÀ:°öÓ`', 'wp-includes/customize/class-wp-customize-nav-menu-auto-add-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\n³·öZm¬dÕ5®990'),
('ø3Æ¹Ü•jçbišÎ¥î¶', 'wp-includes/customize/class-wp-customize-nav-menu-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÄÅ‘ÆÎ¿ğl›<Ñ6ÂH'),
('C²ØšÖT¼Rª!vF{', 'wp-includes/customize/class-wp-customize-nav-menu-item-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ûnÕdÊPWYÿ]Ğ\ZÓ2'),
('ı­{ 	\n|p£Ù¤', 'wp-includes/customize/class-wp-customize-nav-menu-item-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§KiGm­Pjƒw¢d\Z?Š'),
('bâ÷+Æ´İŸó´3ï†', 'wp-includes/customize/class-wp-customize-nav-menu-location-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!“zç¦ÔNHo;%±©ë?'),
('íºG® “Ø~ªĞÿô`ø', 'wp-includes/customize/class-wp-customize-nav-menu-name-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{è`Ù–Ó_“7T¨”È¥3'),
('¥-ƒèBññ|tS^¼', 'wp-includes/customize/class-wp-customize-nav-menu-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€\\Ã“Bp\rhqÇ''Tdo·@'),
('Ík0Bßâa÷î¬`Ë', 'wp-includes/customize/class-wp-customize-nav-menu-setting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xş¿h¡?Ïé×¥?Q&'),
('xàó‘mü€¥\0Ş~¶Â', 'wp-includes/customize/class-wp-customize-nav-menus-panel.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼šuì:Q&“‚„ŸÂ’S„'),
('ï@}&£J~ÏÂ¾&óè\0', 'wp-includes/customize/class-wp-customize-new-menu-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[‹Æ!‚õ¶A[¬\rZL´Í'),
('2¯åãº¨a|F–l3]ö', 'wp-includes/customize/class-wp-customize-new-menu-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'èÔüdB;•Ç®\nJ‡íˆm'),
('ıÃŞäYÆîğëqï„', 'wp-includes/customize/class-wp-customize-partial.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%‡w¢Y¹$º‘\náëu'),
('y×\n–,\nCç|[i', 'wp-includes/customize/class-wp-customize-selective-refresh.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹¯Ã;Wl‚È}¿*\rÒ'),
('T6K?†”´sÓ ‚7(ù', 'wp-includes/customize/class-wp-customize-sidebar-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '!T+caÎ²F¯¸¤±ìÄÒë'),
(' û,eO¢šËz‚Ã‘•', 'wp-includes/customize/class-wp-customize-site-icon-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ß…4ÖgAÿÔ]¹ÎGÀ<á'),
('ö?Ç„£ù€ë:\nŞÖX', 'wp-includes/customize/class-wp-customize-theme-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’%üŸt©²_É²ÂòÀ'),
('ùXQûád9r×Ú¼–Û', 'wp-includes/customize/class-wp-customize-themes-section.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.ï¨¦œÿÈÕî1"AV'),
('ã eÆ\\ÛkîcçßXf', 'wp-includes/customize/class-wp-customize-upload-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Jë§ØÃF÷yÅ¾©r@“{'),
('[5ùš×YÙNh¦«ŠKˆMè', 'wp-includes/customize/class-wp-widget-area-customize-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÙAÿÒËáô÷ßC)ÿ'),
('\nT•¦/\\9$Y¤U\nÛÊÍŒ', 'wp-includes/customize/class-wp-widget-form-customize-control.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆĞÔë¢ĞìÄ\r\0}ˆ©'),
('™\0£ùµè Ò.}¥fwA', 'wp-includes/date.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' H…ìÉŞÜ3=s\Zrâ'),
('}ıÖË{RÒ¢Ôà¢"', 'wp-includes/default-constants.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Kÿ•ohâ›±=7_ÚğS'),
('úèRŠ,A§Àı\ZñGJ''-', 'wp-includes/default-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'EIsu]ù˜"6Ààˆµú'),
('VL6İ7G^l%D5z3Èè', 'wp-includes/default-widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©OiT¸0ü*\0Úhú)g»'),
('p•ğ´.Ğ°”ó[ÃD¡', 'wp-includes/deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'êL°*fD‰IWM±¹e'),
(')İÛø]ïİÕZ$ÙP%', 'wp-includes/embed-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆ>½ïEVJ{;6ÿ!*'),
('æ9eºòĞkköRÊo—†şS', 'wp-includes/embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«ÂæpÍOö£‘¡Õä»«'),
('"¡¾b9®‹eÑ|®_Ë', 'wp-includes/feed-atom-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.úõsëÀ¤öùPu“Ü'),
('šª™‘2@ïkä¬w>K”2', 'wp-includes/feed-atom.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÚÁ\0â,}5³}ÀC~üã'),
('ÜÈ¼‘ØŸÜ''\r`ùôÊÎ', 'wp-includes/feed-rdf.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|—ddş˜ša6¾®İ''Şš'),
('ü])éé	¹ƒó{—?R}', 'wp-includes/feed-rss.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'MÇ3×?ÙëÈ gÁ.B\r'),
('´µß²;ø›0ÿ‚ÙË', 'wp-includes/feed-rss2-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Áûw«RÀÕêÓ/Å‚MÙ'),
('_*Äâ½Lÿ0â>\r', 'wp-includes/feed-rss2.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¤	gTËœ0|èmq¬ç'),
('{ïRC¼Ú\Z.*"¢Q', 'wp-includes/feed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‹•üù…ñ¨)Ëj™YÌ€'),
('–\Z5oÖİ#R''/¤¬l', 'wp-includes/fonts/dashicons.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0äÇÆ!_§ú¡Éy¶H'),
('Î¢ƒSËªÄ\n´–BáV"', 'wp-includes/fonts/dashicons.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xihÍ7‹w#ØŸ¥šµ'),
('ãìó<kUJv%ò1‚‡', 'wp-includes/fonts/dashicons.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'êÎFºşF›¢ñıÅƒâ'),
('•Ìf0ÙËÍ­¡Ú~·)', 'wp-includes/fonts/dashicons.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\ZÔ_rY+Ê‚;ì'),
('çÅ‰û	iàö¿/Ğ­', 'wp-includes/formatting.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kwõßkMåÂ5Ì³"¯oaş'),
('\ZëãèÁ¡•)qtsCI9', 'wp-includes/functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·„E€\r(ôq\\^4µ{U'),
('çb`K¬''×Šì»œçâK', 'wp-includes/functions.wp-scripts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úØ‡X=‰|}Ü³%…U'),
('h dÑ’ê»…2öÃ_Àr', 'wp-includes/functions.wp-styles.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æeâJ’8âZ€WÛ2û˜'),
('ë0ŠRğJ³{yíË£÷ï', 'wp-includes/general-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’ªZ‘{\Z0¼11''òŠ#È'),
('¹/&¼Öûá2®Ñ¡\rgDs', 'wp-includes/http.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W`¤ú©AW\Z•aÊ,atæ'),
('.IhUœâ3¿+B\Z„¼', 'wp-includes/images/admin-bar-sprite-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ëQ¬ë›Æ8şôo€Ê'),
('§UÌ›	''CÔ»ñºÏÚ«\Z', 'wp-includes/images/admin-bar-sprite.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'SÏ¤—:€WÊÅÓş^'),
('ré_è/™ÍHG=Í%—<º', 'wp-includes/images/arrow-pointer-blue-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%mârŞŒ]4¸9cÏ'),
('@€Ì˜9Š#¯LÃy(ĞÚ', 'wp-includes/images/arrow-pointer-blue.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'wŸübãÎ‡*L«²Ã[»ù'),
('æGÄÅ5Ø@æèÙÚ07•Ç', 'wp-includes/images/blank.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H»+ªô51	÷Âf]–ª9'),
('Í>ÿMÒ8¸ Ùµ­Ñ|', 'wp-includes/images/crystal/archive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–SÊúğœÌI0Anë'),
('ôJ''#‰‚rN„0a\rÈ', 'wp-includes/images/crystal/audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™nVñ:ÉÏ‰óGØÔ-#k'),
('w£¤ïLıê£0œïğ]r.', 'wp-includes/images/crystal/code.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`ï1²Ïúï°õ1®9'),
('”ô¨–!Ş¬©Äß³ÂÁ«p', 'wp-includes/images/crystal/default.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Aò>)*/¾Ü!ì®-ò›º'),
('Dm·\n»½z—H‚ÃS”ïï', 'wp-includes/images/crystal/document.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰''^cšsÀùÄD‹ù3T\\'),
('j—£Éÿ5F+¸¯ío', 'wp-includes/images/crystal/interactive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯RÏm`òíº`™9§æ'),
('ÌÇŠ·EÁv–c,îØµyS^', 'wp-includes/images/crystal/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ğ]µLcãiG›fQ“\rÏç'),
('^åƒÃ¯ğˆ¯+…y|Ğ', 'wp-includes/images/crystal/spreadsheet.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5†9øĞ¢1€TËÇn¤ê'),
('¼¬ğàÄÍï"¦RÑÅœ', 'wp-includes/images/crystal/text.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ì Ñ²ªü#¾dÿ%ã[µ'),
('UÃåà$i"uÂÊ&Ëô¸9', 'wp-includes/images/crystal/video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”Ûıl¥‰Ú¤¸;õ='),
('*®ä-3öu¬EÂ[ÕO#', 'wp-includes/images/down_arrow-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' s¸¡î›$‚6(Ú@¨a'),
('\nœßO‚_˜«;]/^™ç', 'wp-includes/images/down_arrow.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eÜÈ]:uÿWvûãß"·â'),
('Ò³åúìÇŸö	KsÍ×Ğ', 'wp-includes/images/icon-pointer-flag-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©åá¦2ñ³¹bäÄ&ÕZÌr'),
('ÖZ×ö	r!ŞfÕÑ¾	Ş', 'wp-includes/images/icon-pointer-flag.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°Ó,‡ò­‹ÂE^¿j`'''),
('Yˆ,eêAõ¼wÀ`áÄ', 'wp-includes/images/media/archive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9Òîßòhû\0ÚÓÃ¬‘u'),
(':ùnÌ£RMëti#šõ=', 'wp-includes/images/media/audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†taCAñ¾Åş².·çZßÀ'),
('À±3"ü(zÙa€4î8Œ', 'wp-includes/images/media/code.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-o–­UÊ“îÕU©U_'),
('(?ËÜ×>¹ôS©Næšœ&', 'wp-includes/images/media/default.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-¶©æÍIÒB–hÎ@àŞçb'),
('/<Ø§^É¼f}–"×øû$¸', 'wp-includes/images/media/document.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vå4™8öÎ‘y“6Şd£'),
('ÖrYŸS¯xwDYËšJ™[', 'wp-includes/images/media/interactive.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'R×¬Ë‚®ñÂÃ´Å‰hÜH'),
('œ«HVÕ¥½dà³pÕVp', 'wp-includes/images/media/spreadsheet.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ñÀ 4äñÖ\0TüŞÌ‡?²'),
('9í‰æs´3ÙSZ,pé8g', 'wp-includes/images/media/text.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'z¹‡sæä0÷ÈŸQ€K'),
('\n%f[!aE«rÒtg€i', 'wp-includes/images/media/video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'àéñuêh›İÛq ÷'),
('ÙkïÛ/y³©ı›&‰ŸG', 'wp-includes/images/rss-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÇYa[ QÁæõ—ırj'),
('ÛÈrš¼ÁµØ=ÔÔ’é', 'wp-includes/images/rss.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥°[¿(ò”°.ı”*NZ¸'),
('{ñ\rŞ-äÜ} ^éÆ', 'wp-includes/images/smilies/frownie.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Q›óĞ„°Äôƒí'),
('Ğ¢’í¹‚|áÑäØ@', 'wp-includes/images/smilies/icon_arrow.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿Êµ	€»ä•ÛêÔÒ('),
('ïã¯©è	''¯æ¶Ş¨‹÷V', 'wp-includes/images/smilies/icon_biggrin.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÇYpRş+Û0}kÑN{Œk'),
('°$åÍ“™bHn®€,\0-', 'wp-includes/images/smilies/icon_confused.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ï¤sYFPZ6¹ã,š‘'),
('X,çEõCj$_ƒ¬8I§‚0', 'wp-includes/images/smilies/icon_cool.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–F~µ®ß¢.¡Àú>t8'),
('Ä”Ô¼üİÕpPˆZ	H´', 'wp-includes/images/smilies/icon_cry.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E>z?‹»ApğmWlAĞ`'),
('!_Ÿè¼µp3p™n×ÓL', 'wp-includes/images/smilies/icon_eek.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦Æ_¦ÿsöÄjN€¦_z '),
('ÂObc®³" ÎÇÛ|J(', 'wp-includes/images/smilies/icon_evil.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'c¿ÓÔ÷VM<ó"!.'),
('šJ‹B¾GT²;,l£ÀT', 'wp-includes/images/smilies/icon_exclaim.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\ãqEŒ\Z!HY__=¯{_È'),
('È"u@³T¬…S›ñ5ò', 'wp-includes/images/smilies/icon_idea.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½³"m%h¸ÁíøôS±èræ'),
(' Án€$›‡qˆï^qf´§', 'wp-includes/images/smilies/icon_lol.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÔğMÆZ8|©¸Àò,¨ÀìŒ'),
('(¢û×”ïWåh@=a', 'wp-includes/images/smilies/icon_mad.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '×¾¶ie\Zcş{Ó0'),
('\ZıUEäs(î±÷#Eöp', 'wp-includes/images/smilies/icon_mrgreen.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ıéäJŠ®‰½Rw’´wšÊ'),
('ÿÄêkµËiîĞ.¼¥¸\\¥“', 'wp-includes/images/smilies/icon_neutral.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Š•Ûú©˜	°‡®´Zí'),
('š¥7¸M3Âšã$ËôŒ', 'wp-includes/images/smilies/icon_question.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ò''u²ã&EqA÷ˆÃmN'),
('¦’¯ü:[&bú[®hY©¸', 'wp-includes/images/smilies/icon_razz.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ËåË­â´ì=…¾JÉ@šİ'),
('$’„õ³0S\r˜rş®©', 'wp-includes/images/smilies/icon_redface.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'm‹‚AùƒR!4a'),
('‰¼B]nÈ„¨8Ú7g˜ó', 'wp-includes/images/smilies/icon_rolleyes.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯È»Æ_ËÒ¸*>,\Z´\Z!j'),
('¨HŠ£õÁœPwàğ%8–À', 'wp-includes/images/smilies/icon_sad.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z''=³ÃOjû?íuA|¥ç¶'),
('€÷êÿeØæ97ãaJS', 'wp-includes/images/smilies/icon_smile.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²˜G)Ã¶ÍÀu¸‹\\\nM'),
(';ñWctÔÓç*+÷¬BrÊ', 'wp-includes/images/smilies/icon_surprised.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')™rµÍÑñài\rÙ^@8½‡'),
('‡\\:âÃÚˆÕê)g,\\', 'wp-includes/images/smilies/icon_twisted.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'b«Õ©.²8\Z|`ãQöLF'),
('œ8ƒ©…¦¬ãP5aÄ¨	', 'wp-includes/images/smilies/icon_wink.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ğ\ZO‡ZÀüè¦g9Ø4º'),
('g|y_“o4"‰©X†Nšù', 'wp-includes/images/smilies/mrgreen.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '-5Áà^±”‘ÓJİjÚ'),
('˜{…éYÂ\\ÀzéŒ¿°}c', 'wp-includes/images/smilies/rolleyes.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ¾¾ğO…2ßOfİ£i'),
('ÜéÕ»Zml•î4ôË®U', 'wp-includes/images/smilies/simple-smile.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'éK²Ï{Â…±f²w—h'),
('}`ÆÒg"PÉ2®ÂV½‡', 'wp-includes/images/spinner-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\q¼´9)hdxR©Éß]l'),
(':ïXqİ¯J\\¦5Pò¶4', 'wp-includes/images/spinner.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°£İã1c~''ªdvÔvHq'),
('}Ä‰=•t©­ò‘»¤¹', 'wp-includes/images/toggle-arrow-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'FÊáÊ\\øƒôÉCDrï'),
('”Üµ[Ò²m%‰6òS8:D', 'wp-includes/images/toggle-arrow.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÜßÎ‡—aıæ;ëdÎÏ*ò'),
('/é¹ ìÄïÎ°1Êiw‡§', 'wp-includes/images/uploader-icons-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­Áç°&-€äO¢‡Ã•Ë~'),
('_Öà4ä3“ÍË=“', 'wp-includes/images/uploader-icons.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´“\\MÏÿÀùm–€'),
('x9@^6œÅß‘¬óŸo·è', 'wp-includes/images/w-logo-blue.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ı[N°W¢ğ_pàw®0'),
('•h—‰§‘FuQeñª î', 'wp-includes/images/wlw/wp-comments.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'LÂ6]PŞŞÃì.s¨¡Ô'),
('öıåÀPq-³tó¹@lÊ', 'wp-includes/images/wlw/wp-icon.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1	Êš‰7w3K™*'),
('§èáú°6‘bg·>_ª', 'wp-includes/images/wlw/wp-watermark.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';š‡uMmÜ­D|‰w“ÅD'),
('³~£š¹­U÷"Ğ&Ğ', 'wp-includes/images/wpicons-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ãçn×VÄo©$š”Of~7'),
('g”$G\\¾ë±;©rÄÄÏ1X', 'wp-includes/images/wpicons.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'dSüøuq‘V_®Üãaô'),
('®\rEöÈUÏœøÍ„ŞÙ', 'wp-includes/images/wpspin-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}ï3ªÙYÍ(Iİò¤m'),
('R–x®4Mp@°9u\nÖŠ p', 'wp-includes/images/wpspin.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'İNmÒh§äÁÅ;\Z@’İ'),
('ŞNÄ\\ü|ó`*·,)@4', 'wp-includes/images/xit-2x.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°rœT½Ä`Ÿ¯?JĞ/Ç'),
('úıÊ\n\\ÔûÉ¶.5úš', 'wp-includes/images/xit.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å)£Xû¹`1¬ÜğH×Ê'),
('|/Ú’ë\0[*4“ÿxüã', 'wp-includes/js/admin-bar.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ùz™§öAæ“’ZGÃ=ä'),
('MĞ \0šAŸª»9QŞ+ Í', 'wp-includes/js/admin-bar.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²ç3ğÁã\nÈ—MÌi«Ø'),
('R3ğ¸Usë3ÃÈ}TêœÛÁ', 'wp-includes/js/autosave.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lúÄ"F LŸ7ğ åğGNä'),
('wuèšl|åõp˜ÊQ', 'wp-includes/js/autosave.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Â6k}ç}	fÍŞ%'),
('PEÛ«½7r|oI±6ÿğ>', 'wp-includes/js/backbone.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’cİ¾Rø^{á3¬&ˆœ'),
('Ûß\np¡ñÓGnu:¢¸Ó', 'wp-includes/js/colorpicker.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ğÊV gô„²¶ùŸ-¯'),
('0¤ç€ÅE\00Œ‚XÏH', 'wp-includes/js/colorpicker.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á† Ä\ZYòûb|$æ@q-'),
('pUyüa	êb¯àva„;¡8', 'wp-includes/js/comment-reply.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'êÇN¤Ø®ÊèïTÔ&\0'),
('1ùÎXŠ/²t60^Ò€!Ü7', 'wp-includes/js/comment-reply.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V¼''&Ø) {ú€/•z¬‘'),
('bYÆ,¥°Ï¥YªrÛÑ;¾', 'wp-includes/js/crop/cropper.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ky5ôni*M(í™'),
('\rÃ%ÛáãÏ%¼ySı`ğ', 'wp-includes/js/crop/cropper.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—²–ÙH.sÅo¿ö¨â'),
('¦(¼|nä•Á´sARFä+', 'wp-includes/js/crop/marqueeHoriz.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŒÌ®œºı¸;æäÔLo\n'),
('Z±\0ƒœYˆ³’³ Ã¦fg', 'wp-includes/js/crop/marqueeVert.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®šÌñ\0¤¹“9­ÿRÔÜÇ'),
('¶r\\Ùj”´¨òáA$', 'wp-includes/js/customize-base.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Œ­éE´¨7bøÊí‡ª'),
('V\nÕÉU`½_š5ú˜­8', 'wp-includes/js/customize-base.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦[Ü©µ;â\n@şĞ'),
('“V}»P”œ±m•/¯|I*Ù', 'wp-includes/js/customize-loader.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '75‰\\ä¼a°3°\rÚÜ"Ş'),
('bà”û¿”ÒŒ &é?¬{', 'wp-includes/js/customize-loader.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿºÃòº˜¾€D@x¿G'),
('²ÿş­xÄĞ™Ò)DC‡Ì<', 'wp-includes/js/customize-models.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':y›t}ÉŸDÄc\n2à@'),
('\n£ÜNNM¼ÔÛ‘4;úpĞ4', 'wp-includes/js/customize-models.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'çêhÉı¹J¤Õhİ'),
('î\Z½‡å{:\ZªŠå4f', 'wp-includes/js/customize-preview-nav-menus.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' s™¤LğfÅƒLä?'),
('™F~…‘Ÿyµc7v-', 'wp-includes/js/customize-preview-nav-menus.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RiRç¨z3›''o]ÏÉlQv'),
('9º\r5''XùıÆ>?’', 'wp-includes/js/customize-preview-widgets.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'C`“íì2Ÿ§lîŞ³¬'),
('ïÿ€É9‡ÊrÀMÔ§Äè', 'wp-includes/js/customize-preview-widgets.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[@­ç*NjİNÂzX…šK'),
('ê4Ê×çº2‘)A.;4Ñ', 'wp-includes/js/customize-preview.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' l\0\n=YÄq¯XhOCá'),
('>qlî+ªmÈ\05Ä¦"†^', 'wp-includes/js/customize-preview.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹ö&CÂ½ Ÿı(ÆeÑl}?'),
('¢ıñçUNEAÈgït', 'wp-includes/js/customize-selective-refresh.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚ë©;z›¥jÏŞÒÓÎeå'),
('0jïVÆ½Éf:Š5†ç`•\\', 'wp-includes/js/customize-selective-refresh.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿ™p·æÇÔšWè#'),
('QY—ê1ğTl’¹Vr<', 'wp-includes/js/customize-views.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z¾§¶Ù¢Uo¸ËüÓøÑÀÿ'),
('ïY^~5~‘¨pŸG-ŠŒŠ', 'wp-includes/js/customize-views.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Åğ«·>h®¼›ò%¡à‚N'),
('Úı!§(t”ò‰<Ô¹', 'wp-includes/js/heartbeat.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G@\rT¹j,8$S\0¥¾Z'),
('‹n97I.OúÒŞ¿ğ°', 'wp-includes/js/heartbeat.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lÄÑã[tíµ%°n7ˆàò'),
('‘yßg‹ízaU"ƒ	XKG', 'wp-includes/js/hoverIntent.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ê³Y‹CŠc˜On×›'),
('S.FÈ«A¾j®ÿä( :', 'wp-includes/js/hoverIntent.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÊP\nŞ…L1A¯Wbã\0'),
('^ïù^\\QóÃ=(w²î†', 'wp-includes/js/imagesloaded.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ĞÂÀ×ãvRæfWÈÈÖ7dB'),
('“—¬%bQñ£“bM<Öx', 'wp-includes/js/imgareaselect/border-anim-h.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ZÃÄ,ÈntZ^6¶{Lp¡4'),
('‹ºFè"÷èvhâ¡$Lb', 'wp-includes/js/imgareaselect/border-anim-v.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' Éz!™<ñ7êÙı¾ËÄ*¨'),
('<FéëïPzÌ22£‡~', 'wp-includes/js/imgareaselect/imgareaselect.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}(ÊÙ()³Ö3 ‡µóµ•¯'),
('Ø8/B±$8ˆÏ`mœ', 'wp-includes/js/imgareaselect/jquery.imgareaselect.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'züB’RSûƒõ:Y†'),
('Õö¼úÍ¤6é\0/ı“kúÀô', 'wp-includes/js/imgareaselect/jquery.imgareaselect.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%ô.eîÔBy—Ur@%'),
('SX+7Êû1?ÅõÏî-', 'wp-includes/js/jcrop/Jcrop.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Z‹ı7e½¯¼òÍQ°%K'),
('üg"š}_¿7¸½¦ÜJ5', 'wp-includes/js/jcrop/jquery.Jcrop.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'VÌ¢Ü/K‘x¿¬¬’'),
('T‡.o@Î¨2ÿwõvŸX¹', 'wp-includes/js/jcrop/jquery.Jcrop.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '/a«˜LruÇ4ÿ\ZÁ'),
('v¡–Ş£ãûRï', 'wp-includes/js/jquery/jquery-migrate.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lW·bXŸê[5yÊ^l6›'),
('ºaÉ@o›ÿ''¿Ékbíşù', 'wp-includes/js/jquery/jquery-migrate.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'q!™NìS ûæXdc¿–QÂ'),
('ÄàÊ™\0}ôßç” K›ö.ÿ', 'wp-includes/js/jquery/jquery.color.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿ-¸ÛñEÎGóîó>vJ'),
('vúÒ¸);D°~J"àq', 'wp-includes/js/jquery/jquery.form.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å¯Øä.Â,“+ŒÙ\nq'),
('&=\Z½+tí’"¢/k''\n', 'wp-includes/js/jquery/jquery.form.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÛÃ€„sŞğÎEşVMÇ-Ë'),
('œşP\ZÅ/é¢¯l%¡', 'wp-includes/js/jquery/jquery.hotkeys.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'â”ƒ¨Ê& İ‹\rFÆ°¦é'),
('ÅÍ-†p“lEÆóØk†/ö', 'wp-includes/js/jquery/jquery.hotkeys.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ãS!}EU«\\b³g¾h‰='),
('g#é,vM‘ÿ‹—ß:õä', 'wp-includes/js/jquery/jquery.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†ğ?çv@ŞèÄÌ’N'),
('c,½…°[xŞ«ô3¥\nù@', 'wp-includes/js/jquery/jquery.masonry.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Í³@`–ÿ€&n|}A‘†'),
('{Ÿ)×4e4p:±fW‡', 'wp-includes/js/jquery/jquery.query.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ';ÌXzòÇ°ÆûÉÀwC'),
('(ˆÔg%\0ÏÃ4İÛl>œ', 'wp-includes/js/jquery/jquery.schedule.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&³—TªkÇfØ¤Ä½'),
('qhÿ665—y|ò=ï?S	', 'wp-includes/js/jquery/jquery.serialize-object.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ñ\\)¡Ÿú‹›Jèl<ú"'),
('ü0<PsÉñ×H—ÑÁ22', 'wp-includes/js/jquery/jquery.table-hotkeys.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§êÖ”#tıgP±g€¥'),
('ò± ­ü²BÉRÔz‡‡Y', 'wp-includes/js/jquery/jquery.table-hotkeys.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'åogo·¿“~i¦I	ú'),
('mY·Á“š}É½ë…?', 'wp-includes/js/jquery/jquery.ui.touch-punch.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'LÈmÄQ4Öƒãˆ]±'),
('Æ¬+\Z–¼ÊIód^i <\0', 'wp-includes/js/jquery/suggest.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':$tV‘EÕÊ¿Äû‰‚'),
('‚3¤–Æ‡eÇ(Ãº9ù', 'wp-includes/js/jquery/suggest.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's\\+A)œ”ãn.;«‰'),
('6Ù¨	Îÿ:{”^Dá‰', 'wp-includes/js/jquery/ui/accordion.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '3L/ûoüo.¡ óÂ'),
('gşEdÉã1¢ÒD}ÂÂü‘Š', 'wp-includes/js/jquery/ui/autocomplete.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ğÿ>ºbXesÃ¥Ìıæ'),
('Üå]/~ÿøÕq¡¥XÅE', 'wp-includes/js/jquery/ui/button.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ',éĞóQæ¥´¶¼¿©'),
('è%y>}HÃoÚæú(6', 'wp-includes/js/jquery/ui/core.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'œäáWD„‡ÔïàÊSejq'),
('@k/ Á¡ŒæI‰?T,', 'wp-includes/js/jquery/ui/datepicker.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï¶=ÁŞSşôÔıÁßÜÖ'),
('F«ÒeÀûÖ}í(·å¿', 'wp-includes/js/jquery/ui/dialog.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>Í•ªÇxQONi—^Ù\Zb'),
('pôô7uÌLÍ_{2Ã›–', 'wp-includes/js/jquery/ui/draggable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D<''w‰ºöœI\0Õœ6í'),
('ïzúÀœØö×ò|”zûxv', 'wp-includes/js/jquery/ui/droppable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ş¿R$Ä(‡Ñ¦ãÙSØ'),
('&cµYDØ#èP{+¢', 'wp-includes/js/jquery/ui/effect-blind.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '­ÛàŸ<OØmA¬_;OL'),
('ÿ¨a5[4ü5¼MepC', 'wp-includes/js/jquery/ui/effect-bounce.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KÄÉy$¾¤¿{×´oôöL'),
('œåU‰±ó$ì\\*İ1^œSı', 'wp-includes/js/jquery/ui/effect-clip.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ç“”Wè«#•GZas'),
('ìD\rh}¼è¯¶‚!\n', 'wp-includes/js/jquery/ui/effect-drop.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'WşV‡ÊÇ¥²YˆF2è'),
('ÏŠ=÷ÆX®¬÷bBz'' Œ', 'wp-includes/js/jquery/ui/effect-explode.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Àßb\\ÊAŒı€:QJ=Ñæ'),
('´ÇAóG,‡Ã<Œ¸¸', 'wp-includes/js/jquery/ui/effect-fade.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŸoÖOO_õ‰;{r¢5$m'),
('·P\0''Ø0l§Ÿ¯vÈ#J<', 'wp-includes/js/jquery/ui/effect-fold.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6^Á³§î‚ù<šıDEl'),
('{çMŒ“i»i2n•Ã6Ü', 'wp-includes/js/jquery/ui/effect-highlight.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '•èëæ*ß´Ã¸Nµ¾ø!'),
('¦ü­ó8`9ù×?Bb“Ğ‘', 'wp-includes/js/jquery/ui/effect-puff.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'şImlc¼G…@„È³ü Ö'),
('˜‹µï†8(\Z¹jèZ]}', 'wp-includes/js/jquery/ui/effect-pulsate.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿ƒo S@Z*„‡Êp!Å'),
('4;VÏô''Œ/¶òæ¨fº', 'wp-includes/js/jquery/ui/effect-scale.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õ}0e,)Ãàã°+m·T'),
('“¢şNVÔ±³æˆzÃZ', 'wp-includes/js/jquery/ui/effect-shake.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&ºü¼íÂ3H£qË€1'),
('¨‘~¸w`²5;Fã®®', 'wp-includes/js/jquery/ui/effect-size.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°=ınëÌÕêšë2“ØZ%'),
('YÔäÖí]¦®ÅI†•¨', 'wp-includes/js/jquery/ui/effect-slide.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú#G_°MVÚ˜Êyµ'),
('Œ­l«.H|S„³Ö{°†', 'wp-includes/js/jquery/ui/effect-transfer.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å°Ş¨\0w}Ò‡ˆµnù'),
('Ïİ™ªP(™ƒÉO''E‘ùe', 'wp-includes/js/jquery/ui/effect.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?qaÏZ,^m4áÀo'),
('7ÀcîÂ¢)ÜæSóebµ', 'wp-includes/js/jquery/ui/menu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÉÿõD•ştc»]8”'),
('¡²¨æ€Ë:xÙı=á}ˆ', 'wp-includes/js/jquery/ui/mouse.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚ƒZ‰`İ×0 8¿¤\\9 '),
('nef¾³°A@´ÿ¹R‡?¤ı', 'wp-includes/js/jquery/ui/position.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'JíìX~ƒC:ê¤/b'),
('=féuñ¥A><Th–ÉÏ@', 'wp-includes/js/jquery/ui/progressbar.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹MqÚTÙ´A?úL}y"iÅ'),
('ÿ´-¹†i>bsŒ›1é', 'wp-includes/js/jquery/ui/resizable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥\02|I,ğÿ|†¼Ÿ'),
('ØvõıãÆ\rêû´&X‰', 'wp-includes/js/jquery/ui/selectable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¶2­Ñ‘ì®’æ§¶¹r¦@'),
('S0ôÖ¾â×K/17uüì”', 'wp-includes/js/jquery/ui/selectmenu.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ë}´Ëª29Zhxi"6ğ'),
('\\Üàã”·ğAV*ç±¿', 'wp-includes/js/jquery/ui/slider.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '”ïâÎZkCdóL½ /K'),
('mˆº-\Zm1½¥Èû£wÇï', 'wp-includes/js/jquery/ui/sortable.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(–éÁ~š¼Ùk¸kã'),
('mEš¯ñö¾º\\ç)ŞØoÔ', 'wp-includes/js/jquery/ui/spinner.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ':Ï2Úa+óR!À“”…e‘Ü'),
('¯ğ‹(5ìaH­yo,Xş', 'wp-includes/js/jquery/ui/tabs.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'S0È4%«gÎc÷ABzÛ'),
('-Š_º×+ÍÔYn¨ÙS', 'wp-includes/js/jquery/ui/tooltip.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'D?hi\r„îä,óq40'),
('Ê!&øiÆ)^şW­²ôRœ', 'wp-includes/js/jquery/ui/widget.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Œ÷ók½y¼d¶?zx7ş'),
('*ç\Z07Ñ¥1OÓÓÙ8', 'wp-includes/js/json2.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's¡×{N‚|EO«0©'),
('ı´ö×øõ)İ(¤Ğ<Ùİ', 'wp-includes/js/json2.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5Ø™¨†?Dù»æ†ÌX<'),
('ªªõÙ†˜|† ²½', 'wp-includes/js/masonry.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'T ¶Ql$[PNr@¨1,'),
('réör‡(J¯g÷(¨y­t', 'wp-includes/js/mce-view.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'HuJîÉİMy(æ5¡'),
('î‰•fÙ%ußPûÊñ„', 'wp-includes/js/mce-view.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&¦KXWñú˜xV¬9°¢h'),
('¬{ß0l(Æ²u9,wSØu', 'wp-includes/js/media-audiovideo.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'òVP<ªkÂ;DÈ.?F¶²;'),
('µGV\\z²…#°ÿƒ!;¢Ä', 'wp-includes/js/media-audiovideo.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ğ“\rSŸµÑÓt›D'),
('õuôNâƒ.A_Ù_Ï', 'wp-includes/js/media-editor.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Li¡Y›Ö†Š1ÍC·ø™–M'),
('	,¹©/Õ•‹!ç›gyşd', 'wp-includes/js/media-editor.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'yÏQºâY;zÂ{sxCdm'),
('R¯\\SC¯|juÓ9µ¿A', 'wp-includes/js/media-grid.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '„k¿.:ÌläÖŞ·rÇ³'),
('ôY´ªR‰Yi/µ·l@HXÓ', 'wp-includes/js/media-grid.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'vşh†Te4‘ìŠhÎ²ÚL'),
(')Ÿ_æö’J¯‡×™Ô', 'wp-includes/js/media-models.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½s•úÀöñ[Õ#”'),
('‚F‰ åGJÎÖBìˆs7µ', 'wp-includes/js/media-models.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'îÙ;­Y-B‡¾°ë¶„—'),
('È‰V?	İŞ]Æ)A', 'wp-includes/js/media-views.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'o­	\\o)Q1„Jûû™VÓ'),
('–Á¼™E˜?ÆŒĞ®á¾ ', 'wp-includes/js/media-views.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å¾‘ø,½¥pX-\0ÎCÀT'),
('Šñì6’dõ¢xÇDÉÑ', 'wp-includes/js/mediaelement/background.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'p<eKõc \\c8¡r~\0l'),
('\Z±e\rÖóäj!^²¸	ã÷', 'wp-includes/js/mediaelement/bigplay.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'qd6û=ğÒk7İbÙRgj'),
('7µØO+²»¾—ŠÇ‹''n', 'wp-includes/js/mediaelement/bigplay.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tl:÷¡E ’9£n^öş '),
('Áê5•ì[,	jÄ(êÆª¶', 'wp-includes/js/mediaelement/controls.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$ "½Ó¬ı†ÿü?ÆÈ¤'),
('GqÜ@¯üİÓgmå±ª', 'wp-includes/js/mediaelement/controls.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '@õoZsm¤ïş·ÎÛŠRğ'),
('{Ãê™aétÑ\n">ªÇS', 'wp-includes/js/mediaelement/flashmediaelement.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '.ş«ş D2ğì³;¡'),
('ö+—Í¿›#FtşEÇ7', 'wp-includes/js/mediaelement/froogaloop.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '*‡BÀ¬Ûì#¾D§Ôé£É'),
('ä¡NÙ`õõrHn0£©Í', 'wp-includes/js/mediaelement/jumpforward.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'á¬ŒºÌ.ıñ¬&wŞH¢S'),
('éœ'' ­Æ#sˆşß¾U|', 'wp-includes/js/mediaelement/loading.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'v³&ôÔB"oî!e•¾õ'),
('§y´İÚ!¡\0pZèˆ[A', 'wp-includes/js/mediaelement/mediaelement-and-player.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰pæær¡ÓÈØïGû}_'),
('	?±Ïä†æÛ™q™uM', 'wp-includes/js/mediaelement/mediaelementplayer.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡ã>„¨`Ã::ˆQ“¦Ù7'),
(';ˆ&œnb±ËiŞÙ·©', 'wp-includes/js/mediaelement/silverlightmediaelement.xap', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ĞäOÖìëÊFómsK0ª,'),
('A”ZÊå“–Ì…Lƒ›(', 'wp-includes/js/mediaelement/skipback.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÍmÈ0ëE³¥©k¼“oõHF'),
('­š•SÇhŞëáSĞ%Tzø', 'wp-includes/js/mediaelement/wp-mediaelement.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0øë7Ô‡:ÿ3U›á«:] '),
('ûDÏáê]æŸ|ß¼ª$™', 'wp-includes/js/mediaelement/wp-mediaelement.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ˆœ™ğJ9W=Kå³FÆ''/'),
('³èMŸé~\nÏT|·', 'wp-includes/js/mediaelement/wp-mediaelement.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tÊOg‘¯ER{äµ1•'),
('şêÆöÕNº·9¥{®;', 'wp-includes/js/mediaelement/wp-mediaelement.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zDÓQ9ö(q¥9Qfy¡'),
('6ÛÚß¨X/€¿HL', 'wp-includes/js/mediaelement/wp-playlist.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ª÷tôõøÄjã8‚C'),
('Ë¤Ô’{%kò¥#¶fÛ', 'wp-includes/js/mediaelement/wp-playlist.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '&EcéN-±kÔëÅ’Ş'),
('Jş‰E[¥7UÒÓ\Zï~', 'wp-includes/js/plupload/handlers.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'äÖN	”fê£_PˆH!'),
('Ü;(Xp`Ò™Öì‘pİ·', 'wp-includes/js/plupload/handlers.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '>¤\n·Â{uÒ=¢/	}f'),
('ÌVÚ®™œÆêM¯éjÓ', 'wp-includes/js/plupload/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u&\n©TIŸzº«ªˆ+¾'),
('ÃC¶3!0Qòo•J¿e `', 'wp-includes/js/plupload/plupload.flash.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7\rvEROGûÒ˜‰tÓ×l'),
('"ÂáûÂ†²c„¬Ì9Ğ&', 'wp-includes/js/plupload/plupload.full.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'JC´›$Vm''Á.''“Ø'),
(' âp(?Qníˆ¬ÕaÛZ', 'wp-includes/js/plupload/plupload.silverlight.xap', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'tq\0Á…Ï3öX‰0¥”b÷'),
('5C‚)\nWu¾ê½/FÒcK', 'wp-includes/js/plupload/wp-plupload.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '+oÅN8Õ/:7&àœ'),
('ÿLÙóêóe5x?e=æˆ&', 'wp-includes/js/plupload/wp-plupload.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '|t øfÅßÑÜšEGFQöï'),
('ì?ØÔŞı·h›±ÒÎ;', 'wp-includes/js/quicktags.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'HM×õ\Zô¿/ª@p['),
('ßŒò‘(ƒ©©‰ÕÛ2áè', 'wp-includes/js/quicktags.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j6\\/ÍRVjéı=¹¢Œg='),
('ËåGä¯€oe·ÿïoœ', 'wp-includes/js/shortcode.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'üŒµ€àíÅÍ¡¥Pt}\ræÉ'),
('gõä]bR%ˆ ZÛEº', 'wp-includes/js/shortcode.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³BÕj°šß­m•¤q|$'),
('µO—r#½ÔıTºG‡¿!', 'wp-includes/js/swfobject.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ÿıº,ÿI}p„e~2˜qõ'),
('ò°–üMÂÙ¦MÆ/`¼', 'wp-includes/js/swfupload/handlers.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²ĞOÛ…¼óß²˜}Ê'),
('Å`#ãØG–b¯CĞåÖŠÎ', 'wp-includes/js/swfupload/handlers.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–Y,k?­XàN¼0Gï;'),
('š\Z-®”x7Ãù(AÄ4ù»ç', 'wp-includes/js/swfupload/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ëà[°`È^ˆ-Ào÷QWz'),
('ïD=JÇ…/	6Şƒa…', 'wp-includes/js/swfupload/plugins/swfupload.cookies.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥~À\rÚˆİk\\ 7Ì´ÕÏ'),
('ç©lÚXNEMÊCgVsA:', 'wp-includes/js/swfupload/plugins/swfupload.queue.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™SR/½J»ö5©-vÍ'),
(',BÚcÅİÖÔ›Zù4Y', 'wp-includes/js/swfupload/plugins/swfupload.speed.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AZ7‡„k¶Â×E`,*ûs¬'),
('¹ù$Ë<@ã™Å˜aô«Õc"', 'wp-includes/js/swfupload/plugins/swfupload.swfobject.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ìµq§V7ÛT\\ªòís');
INSERT INTO `vi_wfFileMods` (`filenameMD5`, `filename`, `knownFile`, `oldMD5`, `newMD5`) VALUES
('ŠÁ$¡ÖxM1>è²_8P\0', 'wp-includes/js/swfupload/swfupload.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lÓp¿ÔØlD¬_Ùéq¬'),
('*t$ªß‹vÃÑnåİsñ', 'wp-includes/js/swfupload/swfupload.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '½Z%ò5‰e,¤rÔáHO'),
('Âı	1ªõĞã€…S:(', 'wp-includes/js/thickbox/loadingAnimation.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Î"h\rÒcÍôÿÂö&º'),
('éÔŞât“ş˜ZÑO''ƒ \n', 'wp-includes/js/thickbox/macFFBgHack.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’È°gï†­×W’,/u´'),
('’v{LöJlÅ€YzÕ`°(', 'wp-includes/js/thickbox/thickbox.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€Z¡P£‘äN2Eò^¨;ßË'),
('AE¶ûô[€`Œ·•', 'wp-includes/js/thickbox/thickbox.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÕÒH¨sTX{B$ÂÙ­6Ç'),
('9:ù—d¯o\n‘ğp`Ry¨¢', 'wp-includes/js/tinymce/langs/wp-langs-en.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'øfŸtS±uc¦.k»7a7'),
('—	v¾O.„|ß¤Òµ‚', 'wp-includes/js/tinymce/license.txt', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ']át"Ù3§[œt›|'),
('œ\n$zßX£`Î1Bw', 'wp-includes/js/tinymce/plugins/charmap/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ù•®®ø|#Ëã¤y¼\0'),
('k‚ˆ¸$6O³Ò-N…x ', 'wp-includes/js/tinymce/plugins/charmap/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼ZŒÂ»?åVs¶MÙÔ'),
('Aa÷@J§÷óñÂ×Å·', 'wp-includes/js/tinymce/plugins/colorpicker/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"SŒIõ$Ø0DRj¼*'),
(',<“ª ß?C]á0AŒ', 'wp-includes/js/tinymce/plugins/colorpicker/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»(oT´ûÎRÒïaÇ'),
('HCƒìÜ!ó«ª"(ˆ', 'wp-includes/js/tinymce/plugins/compat3x/css/dialog.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å11hû+ezKÒõàk“\Z"'),
('go¬sœVã£;íÇÿ…\n$', 'wp-includes/js/tinymce/plugins/compat3x/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RÌ‘54mÌÉ%®U†Š'),
('0]qK''ûf˜xÁ»Ïã¨', 'wp-includes/js/tinymce/plugins/compat3x/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'W˜ãÒû€©›‹×Ïr®'),
('Ë!¢#ò°ÕI|‚ÛFé', 'wp-includes/js/tinymce/plugins/directionality/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_!8[EVaYP@ÑA'),
('&¼‹]0Wñì\n)ÿ=’¿', 'wp-includes/js/tinymce/plugins/directionality/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`ŞW%<©:oJÿü9Ò'),
('‡òP“wª©0âhÿ9', 'wp-includes/js/tinymce/plugins/fullscreen/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '®˜;šz\nÔ<­^õ­…Á«'),
('sŞÅU''÷ìÀe@¡d‹', 'wp-includes/js/tinymce/plugins/fullscreen/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'º\ZÔ¼CâªCf¥Y›HÅ'),
('áñ\\9Ã£>œŸ„Iz4“c', 'wp-includes/js/tinymce/plugins/hr/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'BŒŸ´z{ƒú@¡X†Ğ±\Z'),
(' ¾v†’\\Qœ¥À-¼Ê', 'wp-includes/js/tinymce/plugins/hr/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\\#%ZÒÑ³÷,3¶Iñ8š'),
('Ï€tGÈ©ÈÀ‹¤D', 'wp-includes/js/tinymce/plugins/image/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'E„¯›¨Ä9`NA™v§·'),
('»	æããEm[¥¬³ÇØlÅ<', 'wp-includes/js/tinymce/plugins/image/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U[M’Ô0—çš #'),
('!ÕR•á›pûnLÑwâm7', 'wp-includes/js/tinymce/plugins/lists/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ë°>•¸J¦š(Ú%"'),
('İJ0Ïõ§Éj YgÚh£', 'wp-includes/js/tinymce/plugins/lists/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÅdgDíç¶hû1Ei³zQ'),
(' ¥d]\0FÖmÅ²p²D', 'wp-includes/js/tinymce/plugins/media/moxieplayer.swf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'NYÓNû- ¹ 3Yj…ä±ï'),
('`ö¦”; "­-¹ÿÈ+~;', 'wp-includes/js/tinymce/plugins/media/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '	fÚHt›n£x,2™™'),
('Æ…‹‡|_Ëi/y¡Ò	', 'wp-includes/js/tinymce/plugins/media/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '±[íô6–H"ÔÂ%ãkÛ'),
('ü˜•ŒµÆªq¥æ‚³‹Ğ', 'wp-includes/js/tinymce/plugins/paste/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'jeóEÉ.;,Rã#§9 ?'),
('Ù,(¡i7:^Ì^ç‰#', 'wp-includes/js/tinymce/plugins/paste/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'i¦Y''Fm«ƒO]HÂŒŒ#»'),
('xë‚‚Ÿ@}YÇŒiË+', 'wp-includes/js/tinymce/plugins/tabfocus/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j]xL*ÂÎ_dà–Œ5I/'),
('“ğ«vî­ùÃ|ß-ğÉ', 'wp-includes/js/tinymce/plugins/tabfocus/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ñ—Í“²‚’>5ÄC¸–'),
('?]ıPû.£˜1ÿ´ƒÌ2b', 'wp-includes/js/tinymce/plugins/textcolor/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Rr©•Ägwód"¾±'),
('Í“ßYá36¾élç€Y«°', 'wp-includes/js/tinymce/plugins/textcolor/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hÉ›œêÏ‘´ãÃ´qº4œò'),
('ıGş²!#hÔ9	„ò&', 'wp-includes/js/tinymce/plugins/wordpress/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ûv&•ıZv›j`E²¼'),
('uŞÇs¶›y6''v,ªŞ=', 'wp-includes/js/tinymce/plugins/wordpress/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' Â¬mÆTd$V`m®êä'),
('. Ó\0_oEÿ]Aµ_Ô0PJ', 'wp-includes/js/tinymce/plugins/wpautoresize/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'd¼\0XcŒO°@pÛÏ%£'),
('úâ}‡Ûá³PÃ›™P\\©\Z', 'wp-includes/js/tinymce/plugins/wpautoresize/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '†è}Ë³QĞgÑ¥D…è£W'),
('	P=N>Œ¨b"j:~[Q{á', 'wp-includes/js/tinymce/plugins/wpdialogs/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷®Ë[ß¢‡9î ¤˜ÑZ'),
('3ÛÕé''º°ÁRKšBfı', 'wp-includes/js/tinymce/plugins/wpdialogs/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'êû±G‰ã7˜(ttâ@¸'),
('<ïÎuê¿–\ZÜœµÇYÔ^', 'wp-includes/js/tinymce/plugins/wpeditimage/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'G8¸&\Zè±§¾VÂX'),
('Ë6 <¥ÊCêï®¿¹V:(r', 'wp-includes/js/tinymce/plugins/wpeditimage/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ê¢…fV wœ¿=0şû'),
('j›^‰ã£Ûhñ8•®çŸ', 'wp-includes/js/tinymce/plugins/wpembed/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ï8*õR/© »?’%Şï'),
('ÎŠÃYƒ(eŠ¤_bÅWj_°', 'wp-includes/js/tinymce/plugins/wpembed/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~Ä[Ëé’ÇL	Zu»-,ğÿ'),
('òÒ%¯\0úÊz”fÀNÈpS', 'wp-includes/js/tinymce/plugins/wpemoji/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷za1ÁPe=ß¡zVŠbĞ'),
('¿@êÉ,Ğn\\–€+k·', 'wp-includes/js/tinymce/plugins/wpemoji/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÆÌ,ä„,óD”²UAÇî'),
('u¿Ü3!pA³f…)R¯MÛ', 'wp-includes/js/tinymce/plugins/wpgallery/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H4PDæ¾¹ÒûDM\\I'),
('ëOÓ¿ú;¤=\\J¼zy', 'wp-includes/js/tinymce/plugins/wpgallery/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'û7`ùOšty²ù‹OÎ'),
('k˜‘²Ğb…ÉgSˆ', 'wp-includes/js/tinymce/plugins/wplink/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '[ÖÙÜß¦C	¤ôtãÁÈ}'),
('L÷…)ÑÙa$­D-ïÓ®ªJ', 'wp-includes/js/tinymce/plugins/wplink/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'šeÆö—÷°¹°.ƒì'),
('"EtÉyˆsŸÃíŞ\Z|g', 'wp-includes/js/tinymce/plugins/wptextpattern/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»ã	»J)U¬sÀ°¬Œ'),
('3+zÀÿ.†±‚6Q~]y[', 'wp-includes/js/tinymce/plugins/wptextpattern/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '©.Eié$Pwoà»mÚá±'),
('ãáqÕ82½úvÂ&#M', 'wp-includes/js/tinymce/plugins/wpview/plugin.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '''6#%k£¢-wéO§§'),
('Wl…Øy:Ï\0Vn`„d\0–', 'wp-includes/js/tinymce/plugins/wpview/plugin.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6ËË²ö%»rmüÍ?[GòS'),
('áZ±®(>(ª1bŞ«”Zê', 'wp-includes/js/tinymce/skins/lightgray/content.inline.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '–QÁ8§´Ì©\0´}3'),
('Ş”ä¥ê7™&‡òÈ€', 'wp-includes/js/tinymce/skins/lightgray/content.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡ {C!''İÀÃƒ¬ûqZx'),
('¾’([3?ÓH/‡[°e]', 'wp-includes/js/tinymce/skins/lightgray/fonts/readme.md', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zd€ó‹+èÓÜE@ì1İ'),
('û³>Ù/á¡‡_ó³éÃÀ', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Òl([q×ô°ÉD#ï™'),
('| š„å,^Õjö€$n', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'üñ«º×Õ¾\\¬Ÿû6\n+'),
(':²Xæ2ìMÓşÖ~ûÈ', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¢¡÷2Ì4vLhNÕ!Æó2|'),
('`ÎşÇS”`NI‹^Gï', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '(€i@ÆGÏgëô®0åp'),
('ût÷0Ãgñ»a†/Åı', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce-small.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '~ˆğ-Êò÷Œ´Üx''·	'),
('vÚ´¡åÇÖV¹½ØKµúP', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.eot', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '$zû3ß`cÑú.'),
('`^àX¸ş_dØ¾–#³\r', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.json', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‰ş"×ĞÖuÁ¢BáˆX'),
('Q ²ÁÌÔï2Š7uí L', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.svg', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íèöğFh%øCãy'),
('Pã…ñ0¹a‹¼RÓz= ', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.ttf', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '²PÃ¹¼4ıSÍˆ0pãßı'),
('¸\Zä¡¯lîÎŞù3ÈŠÂ', 'wp-includes/js/tinymce/skins/lightgray/fonts/tinymce.woff', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'k7T±ÍVn@˜úèø'),
('õ¥†ÂØŞ>+ÜL[îm', 'wp-includes/js/tinymce/skins/lightgray/img/anchor.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«Óa5q€ÜÈ‘_4ø@'),
('L<#³ó†\ZÒá¼ÓÜ}', 'wp-includes/js/tinymce/skins/lightgray/img/loader.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '9K¯ÃÌMû:äŒTf•9'),
('oPğûc™‡ìo©.är', 'wp-includes/js/tinymce/skins/lightgray/img/object.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'órdP×E}u\n/M”AÇî '),
('˜X¸ÔÍìg5ûôŸ¼(=c', 'wp-includes/js/tinymce/skins/lightgray/img/trans.gif', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¿7I Ş1F¦Guôj^'),
('¿<{‘Á»‡,-Ì![M€ú', 'wp-includes/js/tinymce/skins/lightgray/skin.ie7.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\Z¶Š•òP“#¹†§÷\n'),
('Ùş>Ï~ä!ğªgÅq‹˜', 'wp-includes/js/tinymce/skins/lightgray/skin.min.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6]ÅV¹p«ş(@èlßB'),
('Äˆ^Aõš+l†®¬oød‰Ò', 'wp-includes/js/tinymce/skins/wordpress/images/audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '7~!æßà\0÷ÆÔı"w'),
('FHŒ¼30m:½¸s›¶', 'wp-includes/js/tinymce/skins/wordpress/images/dashicon-edit.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xRŞ	¬YµXÔÛİ¤äŞæ'),
('ì¡çcÚÆ.DÂr¿ |öî', 'wp-includes/js/tinymce/skins/wordpress/images/dashicon-no.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'RĞÀäZÊ?f.Ç8õâ	'),
('È„”ÎÓxy¨åõ‹Ö', 'wp-includes/js/tinymce/skins/wordpress/images/embedded.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'õª pİN¢Öy~Ãn"'),
('FÁô¬Ãƒ\\ŸOç¡fgî', 'wp-includes/js/tinymce/skins/wordpress/images/gallery-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Êî1ìíõv•ŠR'),
('²_fôç²;wĞaËÙÚ±', 'wp-includes/js/tinymce/skins/wordpress/images/gallery.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡_±ŸŒPwù´PUÛ4'),
('F–HÈlëe“É#İ', 'wp-includes/js/tinymce/skins/wordpress/images/more-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'l,×‰rÏ%¸^x¥%'),
('N3İj@pu5“«¶¿^›†', 'wp-includes/js/tinymce/skins/wordpress/images/more.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ü·¼Ô\n¼\nm\0;üË«æz'),
('úŠ­~…‹a%¡ë!»P', 'wp-includes/js/tinymce/skins/wordpress/images/pagebreak-2x.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '{Î6¿#UQ:÷‘|>#ëÖ'),
('½½“#­ùÛ	>û7', 'wp-includes/js/tinymce/skins/wordpress/images/pagebreak.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'äIãÚmÅ…üLWyİ“H'),
('”˜@†»{÷J¤á«5ä·´X', 'wp-includes/js/tinymce/skins/wordpress/images/playlist-audio.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'U,û:)¬ Ø‹"ÅQqY'),
('7«%Wy~×¹P?«xòç', 'wp-includes/js/tinymce/skins/wordpress/images/playlist-video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥lzV6`wmZBsÏÖ'),
('Ş3^ëËPMŸY˜æíHˆDØ', 'wp-includes/js/tinymce/skins/wordpress/images/video.png', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ĞÂ¶÷ B©=\rz»ƒ3jÁ'),
('Ûªòê÷	.æÕ¸ß\\¾ò¯', 'wp-includes/js/tinymce/skins/wordpress/wp-content.css', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'xS+_í©Ê1ÜA"j'),
('€‘ah¤#Ôí8ícñœÂƒ', 'wp-includes/js/tinymce/themes/inlite/theme.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ûiŠ6\rZ=xW9qüUl'),
('Æ	™·#A©\n#b#ü =', 'wp-includes/js/tinymce/themes/inlite/theme.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ìˆó6™“—ÓƒµúCB”¢X'),
('r+zk;» 4¯æWI', 'wp-includes/js/tinymce/themes/modern/theme.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Õ¦¬(»H§Ù\Z‰º›WÀ'),
('n#©t=•''…’ÁŞõb]{ñ', 'wp-includes/js/tinymce/themes/modern/theme.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ã·ÎÂŒ­\\ª_ËÌ*Îºç'),
('‚(tTlDÎ¬7&‡³MP.À', 'wp-includes/js/tinymce/tiny_mce_popup.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ûæ ‚B+uØË˜4	ì–m'),
('	Ö9„ƒfŞˆUœfòşæœ', 'wp-includes/js/tinymce/tinymce.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '»R\n\Záp§–uòõø'),
('Gm¹™:†MÄ¾VÀ‘LĞ‰', 'wp-includes/js/tinymce/utils/editable_selects.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ëd*\nºz†f§±G"0ü³t'),
('*ÑşLím&&2ıÕ\nb', 'wp-includes/js/tinymce/utils/form_utils.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùÆT8?ZP©§{-ı®'),
('ì¸ƒúvÈÛ6àš;˜~', 'wp-includes/js/tinymce/utils/mctabs.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹µ\rÛà|uJkekÚÚ5\0'),
('4AIn09ˆ†7c`', 'wp-includes/js/tinymce/utils/validate.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ä+Q`½¾ı“×k0RWô'),
('ü''ñú™ƒæ³×}µ0', 'wp-includes/js/tinymce/wp-tinymce.js.gz', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '›7î¤r¾R¬ë›Â’'),
('ÏÂÈ­ÁHÔ¹òÜfëká', 'wp-includes/js/tinymce/wp-tinymce.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Šb\n¸Ç0pr±Ó’Hv'),
('pÛÔ2N<:Z¥7»r‚', 'wp-includes/js/tw-sack.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹‰¥½„öëËÁ9>Àæé‘'),
('‹º°Åh+¹«BÌÆòĞ', 'wp-includes/js/tw-sack.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¼D‡NˆkŠP\nÔ~h‰'),
('Ïé‹­¡‚{^ªMU*ô_', 'wp-includes/js/twemoji.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾/k€Ğ0xW¨=¹òM-'),
('Må;CåÌÏÕÕ8Yyï²', 'wp-includes/js/twemoji.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'F~õKÿ…\ZNëÉƒ}R'),
('²uæØ<eçx›®@ÖˆÂˆ>', 'wp-includes/js/underscore.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'j:CJ`ÌtCAé}é{Æ'),
('<æhjØ	4½»˜4aĞ2ö', 'wp-includes/js/utils.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ê\r¢í©Ç¼C`ñÔÁ‹<'),
('ü&UX\rèL4{šâÑÔ', 'wp-includes/js/utils.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'öãÕrŞAú2C3UE+±'),
('Ü0æ½å5Ì·mkäí', 'wp-includes/js/wp-a11y.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' \Zr''7‚€g€x\Z²'),
('Ñ/¸‡0€Ş\n*7¸f(›¶', 'wp-includes/js/wp-a11y.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úİtlİÚ¯¹—Œº²ääX'),
('](Rª&!âÆ1;™3˜ê', 'wp-includes/js/wp-ajax-response.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÄÒë«)§nZNï\n#Ãë'),
('uŒ)8FG9¡C°(¶š', 'wp-includes/js/wp-ajax-response.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ót—Ø¬œÉ¬ÉvËÿ0Ì'),
('!|(ßyËW˜*1Oo2Cu', 'wp-includes/js/wp-api.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'LÊ\0æÔ\n¾{T?×jZ'),
('ÓŸîñÇmy¬+\nfé:', 'wp-includes/js/wp-api.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'kèÇ“]‹ÑNµ!ûaj^'),
('“ˆ.™v8-rJÅ•íqQ', 'wp-includes/js/wp-auth-check.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™P\rÕJÜvv\ZyŠ—%×e'),
('tUÒ/Ds¤IÚ¤Üstã', 'wp-includes/js/wp-auth-check.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™Éz}jÙáº»×o)ìªÖ'),
('ô­jå8úœÈÄÃ\Z¬±ó', 'wp-includes/js/wp-backbone.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿ©ºO¹[çÕëJ-v'),
('0<’ÎÅÈÿlÚ¿şöJ­â', 'wp-includes/js/wp-backbone.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¹xÓÂ\n%Ê6ÁhŒ)Œ‚9'),
('Ô’×ã¾AŸ•×Ùùr«^', 'wp-includes/js/wp-custom-header.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nbUS]Ã°‡‰øî!'),
('Z˜_"Œê~´JÏÀÉää', 'wp-includes/js/wp-custom-header.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€+î_`ƒà$Y³³)´'),
('±‹=·-XÔn{]·pf', 'wp-includes/js/wp-embed-template.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÖÃûŸey(êÂÍœ~ïi%'),
('½Z øOg\nW‹W’2', 'wp-includes/js/wp-embed-template.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'À]gŠ—§,JD¿T\0''Š'),
('€ÖsSkÜi«<4''cì-6', 'wp-includes/js/wp-embed.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸ÙJfHÇ§–%{²i•™'),
('æJ~_o¸f™k³¨öóºÏ', 'wp-includes/js/wp-embed.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Zù|Äy¹õ×ïÚÌì1¼'),
('ætr³ÎµF_î ÃÇ×', 'wp-includes/js/wp-emoji-loader.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4y|´>mRb”’f'),
(';üíÙâ*1\Zn½Ã4Ó', 'wp-includes/js/wp-emoji-loader.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'óì!LÀÏ]‰Ÿ)ã[F'),
('Êİ	b¢·–8Î[¿¶¥y', 'wp-includes/js/wp-emoji-release.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ëb„·\r :CF‚D¾~¯£b'),
('\0Œşæ;fóúQî=*Ç•Ã', 'wp-includes/js/wp-emoji.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'İÄšĞä±FÌ÷=—o˜»'),
('[’>•x‚;òwn/tH', 'wp-includes/js/wp-emoji.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\ZÍĞÍR6•½’ÌA‹xÉ'),
('¿™¸=V;¢‹ííÂN.K', 'wp-includes/js/wp-list-revisions.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'GQ\ru`Ò*—LŒìn$¼½'),
('E4í×fu\r#R:k!jgh', 'wp-includes/js/wp-list-revisions.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÒRô1Ô\0¶–â\\©şÉ¡>'),
('Ÿbv¾ÉE’ì´HÕÇãÎ„', 'wp-includes/js/wp-lists.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '£­OÖ¢¹òù93Ñ'),
('–9µeİEø€bİ¾l´3¢', 'wp-includes/js/wp-lists.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}ñ‹BËÕËªPgÀoWª‡k'),
('¿#²AuI.Fªù/ö Ç', 'wp-includes/js/wp-pointer.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '5Ë‹8½.ªr:Ä›¥óğ'),
('ê¯Ç‡¾ÆÛ4Ë“T`¡k', 'wp-includes/js/wp-pointer.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '6˜|dMpX\0—ä€fÉ‚'),
('¤??n¿ëæåıå_2g·j', 'wp-includes/js/wp-util.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‘Ã"uÈ¬ıO™e¤'),
('H+€E~™}§1QÛğ½®Ù', 'wp-includes/js/wp-util.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ƒŠ©9µƒ-ÔáÊØ±†,'),
('õA4eøêÇ{¹^š†ÒZ', 'wp-includes/js/wpdialog.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'rè9_ÔM@9\0œS–ˆ¦º'),
('ß—ÏQµ¦uâ!Ù¶x•[', 'wp-includes/js/wpdialog.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ò-Ÿ¥»\0ºg\r¨FÄ¡¾'),
('š°wtòH©ëá-s“\0Ân', 'wp-includes/js/wplink.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ùU„cÎÀPd¯hÃP_ÉŠ'),
('ßàÒÁ"‰»–¾Íc)jÛ"', 'wp-includes/js/wplink.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y´´oşcqªéüÅ~0'),
('ı©Õ''æ€BâŠ­7SÂ', 'wp-includes/js/zxcvbn-async.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '—§–¨²\0“V]u#3'),
('L(Êı¢nø9[2ÀC6åš', 'wp-includes/js/zxcvbn-async.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1–é¶p9	á9Î~šı'),
('Jò¾¬´ÊOhÓıĞsDØ¾', 'wp-includes/js/zxcvbn.min.js', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¡LÕ;ĞÕucÁ©¶<®ø'),
(' àÑ–İqİäSGKy(ş', 'wp-includes/kses.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¥´r0Ng‘¦‰‰‹5<§İÉ'),
('Éèë:m¡°[İ¢¯:#', 'wp-includes/l10n.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'hdÌÊ}\ZØõD,v¤÷='),
('ËïvíE,¿-Oä{Ïº–', 'wp-includes/link-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Y*ºg\rÜ%´éœf“ÛÃI'),
('_jõğ‡_±¨/ÔÌÖyÓ±', 'wp-includes/load.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÇóÕ=…K,I¸Ñ¿å¡²İù'),
('D6mËer{pKèO’', 'wp-includes/locale.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '_¬?>nYâºxFàâ‡ñ®'),
('aÆÅƒÉû(màEBılÉ', 'wp-includes/media-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4cy[M\0d6àW\\íêaFl'),
('){ôjW-_€Q=?íGlÒ¢', 'wp-includes/media.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '„Ó)Tk›''b–îAX#'),
('ÛKûQğ}U&;&˜ïØQ', 'wp-includes/meta.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'VÚ‡ƒ÷£ÚËÄ°LMw†}£'),
('Óg¹›I†!Ù­ÑÇÖ_Æ', 'wp-includes/ms-blogs.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'eb!5LpËœ=bÂîr('),
('mAçğY·àÊÀ®Rb|ŞS', 'wp-includes/ms-default-constants.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´âÔA¾ÓıY$oM÷iw'),
('¤.İB¾ÀxK‘YŒ', 'wp-includes/ms-default-filters.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Åfµr.óLÛç\\°è’€Ài'),
('¨[ÂnÅG{Ãù''¾¢q:›', 'wp-includes/ms-deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Üğ¤VwhÇO/P8ëîIg¼'),
('ë­·\rç!z}MLKE', 'wp-includes/ms-files.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nQ’éã¿¾¾ÜÆ-±ù '),
('¼v%Ÿ”ŒS´[¿Ìª£Ñ¾', 'wp-includes/ms-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´o.b~ÑºÍ¥¾¹=xHö'),
('Ã_´—§jSXà2ÎQQ=', 'wp-includes/ms-load.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'nÎé—Ü4dt9Éxb|®O='),
('j&†Â^ûÌøŒb³ôŒ˜', 'wp-includes/ms-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '?Á}Ošx&nAÌbaâèˆ'),
('Åª{A¸êmmùß*K', 'wp-includes/nav-menu-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}vƒ:Ê¤Ó‹ä\r8'),
('¡[öHn[PÖ.~½ğßFU|', 'wp-includes/nav-menu.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\0kŞ¾>Ô€ş8ŸGx'),
('¶MR²ælÄBœF¥u', 'wp-includes/option.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯¼¹ñ—¤£¬¾ÎBs(êf'),
('N|şÂ‡JĞ²ªzn×ösw', 'wp-includes/pluggable-deprecated.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'äc±‡dù©\0Ìş~·5jÃ'),
('h0X-Èiÿ»Õá^ÌG`8', 'wp-includes/pluggable.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ‚7?4êï+/Õ…xiw'),
('äö\00‡ùqŸÄŠNy)”Ô', 'wp-includes/plugin.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'zõÛF©x¬‘?„‚NÄ¢'),
('Ì ‡ì¡CªY–ñ', 'wp-includes/pomo/entry.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'íğË½Àú`¸1La'),
('48²VtÔºš+^Xô', 'wp-includes/pomo/mo.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\ZéyLéÊ„U.^z3/e'),
('ªæ[KºîæbÄÚ28·', 'wp-includes/pomo/po.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '\nØ;ü#VáV›—|oÆ'),
('š1W;cŸ¶š¸°NñÀ"ïu', 'wp-includes/pomo/streams.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¾¬s¡|Ä-<iñ–p€'),
('§Ó’?ÚŸ£E¿Î¶$PF', 'wp-includes/pomo/translations.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÑóTù8Âå6\Z•BıµR'),
('”a±tUÚq¶^!ä0Æ£l', 'wp-includes/post-formats.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‚JâRñÖ“L*Q)>Ïİ'),
('MüÁI‚MÔïüÀrDõ-', 'wp-includes/post-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Æ›wºê‰oÓ¬MÊ£êd''¥'),
('ÃáiY–†…\0\nR)–„', 'wp-includes/post-thumbnail-template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Í\r/Ï"ÒØ¦àŠÃuŸı;¼'),
('«ˆ°0jˆlµSÓıKò', 'wp-includes/post.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'O=¡R«ªÆÁEf¢Ğym'),
(' éA$Û¤fCNö™37', 'wp-includes/query.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '1†¥šõÀ“ğLİ:º\\ß'),
('öKF\nOòiñ},íö‘wÇ', 'wp-includes/random_compat/byte_safe_strings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'üuÁŒ•Ùt©ı±±öoyi'),
('‡ÂÙoÔw¬ÛåĞ×696I', 'wp-includes/random_compat/cast_to_int.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ú_vtZÂÖ;”fñ0Ó\\±'),
('¨‘¢v9…bÔ$‘L', 'wp-includes/random_compat/error_polyfill.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÂYTå~\Zã''"úl„\nUeŒ'),
('öjØæ²Z·;\nlĞ“¼', 'wp-includes/random_compat/random.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '‡…•éñG|Œ1[_s1š'),
('t¨€û‘.¨Ã••81½', 'wp-includes/random_compat/random_bytes_com_dotnet.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'er½ãLVËÄstráŞ'),
('?2yT!s|À¨t°æˆ÷u}', 'wp-includes/random_compat/random_bytes_dev_urandom.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'P<!Ë=°-ífàøaDh¼'),
('š”óß[‰ôD?_…[Ÿ', 'wp-includes/random_compat/random_bytes_libsodium.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Œˆ¤øfÔúÛ}÷«>'),
('ğ¡N ¶¢ûiiÚ­ù', 'wp-includes/random_compat/random_bytes_libsodium_legacy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ô~Fšœ-Şå&Ê6,‡á…Q'),
('¹Ô%I…‰ç}ŒPözW­É', 'wp-includes/random_compat/random_bytes_mcrypt.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%lôé1/sÅ€l‹)wÒi'),
('ü^Öºãñ“S^±cÓüÊ', 'wp-includes/random_compat/random_bytes_openssl.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '³iVKÿÇm‚D•''“cº'),
('ÙÖ3›ÏIê98\\ÙÖ›Ì[t', 'wp-includes/random_compat/random_int.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'æÚø]m\riVi+Ô3í8'),
('E-jàÊ1jì£Ê\rÏE“', 'wp-includes/registration-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'KiÊLÙ¸S‡²H=Y•'),
('5\\h>óÎw	—‡NË', 'wp-includes/registration.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ôó˜3fê\\?ÔdK®'),
('ùÑÿšôßĞ3ø>#¼.û', 'wp-includes/rest-api/class-wp-rest-request.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'O¼`“ŸpL™ØÃÛŞ'),
('‡V+@ÿ0ñüp¸Éhi', 'wp-includes/rest-api/class-wp-rest-response.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ymÚclj$¼ë»sï,˜'),
(':ë­²cà‡×RPe(', 'wp-includes/rest-api/class-wp-rest-server.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 's£A7U~ù_ğŸÎ™‰Ô'),
('aæaiçGö¬ˆ}ïŞ\Z ¹', 'wp-includes/rest-api/endpoints/class-wp-rest-attachments-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'H¥IsÏ¢9Eà[)·Ü:'),
('k\0\ZÁšá{ İ›6ñ', 'wp-includes/rest-api/endpoints/class-wp-rest-comments-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´ëñ!Õô+óÆh)0É'),
('‰.¤”xÖöQ}ét\npó', 'wp-includes/rest-api/endpoints/class-wp-rest-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'å7¢PôUjJ:sæÇä	'),
('Ë}Ua&glÃäi¸)ºëÂ!', 'wp-includes/rest-api/endpoints/class-wp-rest-post-statuses-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '}H¼J8óÏ)wGç{š%'),
('q”sß„´ÆàÃ¹åÖ', 'wp-includes/rest-api/endpoints/class-wp-rest-post-types-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ç+ˆ]F(õ(ŒĞdøAšB'),
('3z''‚Oï“á§vşJ&ÿó ', 'wp-includes/rest-api/endpoints/class-wp-rest-posts-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '°›”A$\0µÕ±É“[L'),
('ßL#¦¹àâa³‰W ñ', 'wp-includes/rest-api/endpoints/class-wp-rest-revisions-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'QªúzÖ•Ş,NÎ·Iw¯'),
('CcèˆiF›×hè.n7”', 'wp-includes/rest-api/endpoints/class-wp-rest-settings-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§İ"¤3ph4î’h©Œ•'),
('q¨ˆã_"ñ1ÉF', 'wp-includes/rest-api/endpoints/class-wp-rest-taxonomies-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ñ	±^§Ú±à˜Õ§kM0'),
('Á\Z,zóÕ§Ò”U’', 'wp-includes/rest-api/endpoints/class-wp-rest-terms-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '’t¾YoŞğŒÅ&\\v'),
('ßÈ¦0á $¢7O>é¿à', 'wp-includes/rest-api/endpoints/class-wp-rest-users-controller.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ûĞ?Æ±¥ë¶m´Öös'),
('ĞôÒÏÍ,Ùáñfë×', 'wp-includes/rest-api/fields/class-wp-rest-comment-meta-fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'AJ=ju?ª™My¤xŞ“~J'),
('Íªu¹owsFC¹G[cƒï«', 'wp-includes/rest-api/fields/class-wp-rest-meta-fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ' ¨³^³''"\0[ØÍ—Áó'),
('ë\njİea!è\ZWdq', 'wp-includes/rest-api/fields/class-wp-rest-post-meta-fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '´ŒÈøîRcv]¼D‘_X'),
('àãWĞMF`3ÌÜ$÷æ', 'wp-includes/rest-api/fields/class-wp-rest-term-meta-fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷ÏX¥ìè‰Ár-çğ’6Oh'),
('I6.:\n(ÍÀùi\0BøÏ', 'wp-includes/rest-api/fields/class-wp-rest-user-meta-fields.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ı€d\n£‰cÍUKãXJ¯'),
('°Ãš2â±ûdÍ=', 'wp-includes/rest-api.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'úò²Ë´\0WÂ¶…¹¶ö\\'),
('_°\0ßÅd •MP~ÛëD', 'wp-includes/revision.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¦J¬WXVÍã/ïuOºò'),
(')¾Oz=œu©‡î£ÄË·', 'wp-includes/rewrite.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÛIïÊÕ’Ğ+XIò7²'),
('şà¢¿w›ñ''¢6)', 'wp-includes/rss-functions.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÿ®1ı-8Ç`ËK¯X'),
('‚§¬ãíA¼ÎòŒ1\Z…;¤', 'wp-includes/rss.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Âm†ç[ï\0úlJÅáÊ;'),
('9—} B^¿²?	ë"ë', 'wp-includes/script-loader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Èp¬¥ùûlsqˆëƒa'),
('Ehû¡°Ëıí¹ìĞ@aq»Œ', 'wp-includes/session.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÙEaÎ ÅÁ:`›œŞZv5Ô'),
('Vne!Êz0u1?¬¿', 'wp-includes/shortcodes.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ş/Yf¢4şĞEáeè'),
('ïÑX=U¡pfp¾€ÁZ', 'wp-includes/taxonomy.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '#ğdKsÖµÄ“·Gß»® #'),
('„:+[õ¹g¾¦CZİØó’', 'wp-includes/template-loader.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '§EOEğty½ÏUõ›'),
('ˆ:=%ÆÌâ¾ù MÔÛµ', 'wp-includes/template.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Áxäo« [Õh!Êx	p5h'),
('>hĞ©ìXX*ÿv1•©¹', 'wp-includes/theme-compat/comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '"ºŸbä¿=Q\n~Cæ}K'),
('"8A\n=ò®á‡¼fp5', 'wp-includes/theme-compat/embed-404.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '«%\0¯îiŸ´çhqíô'),
('fÖˆó½ù¦¼VíÔ¹)ä9', 'wp-includes/theme-compat/embed-content.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'V¶Œ8ƒß‰Ü;.¯¢'),
('ı+q^e·•éãguÏF6\n', 'wp-includes/theme-compat/embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'r¶L‰¿Eòva3÷£İ6I'),
('Ím¥L0N"ÈT~ìbÜ', 'wp-includes/theme-compat/footer-embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '„õZÜ«„ò.“+–j'),
('şQÖ¿6“Èyqä¢88', 'wp-includes/theme-compat/footer.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Œ_øsÜ0˜¥älË¿œ7~'),
('&ÎvA¹öQÍôc‰Úqw8,', 'wp-includes/theme-compat/header-embed.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'g–+¢Èx‚&wfÒXÜÀ'),
('LäåbPŞ-I×­1f€', 'wp-includes/theme-compat/header.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '0L@»¡İ%‡\nÎÿïÂP$'),
('ã0—;ê-,ÓAŞEyæ', 'wp-includes/theme-compat/sidebar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '€‡ós­†ÿH´Dlš,\n'),
('“XèV×˜O|8}š€‚', 'wp-includes/theme.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '4ÙÁ”ÂÉ"„:a´'),
('öÊí†+¢šÇqÉpW£Ã', 'wp-includes/update.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '·®‘QR>È¯y9¡'),
('k½úBËãb=y†Ú', 'wp-includes/user.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'u0ëˆnÛJÄˆñ-X/ä'),
('g+yr‰äĞq„€ö€D©´/', 'wp-includes/vars.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ÍÑ“ü¢Õº×éìJ‚Ï€'),
('5Z¬ÌäàSÎ¼ãvÙ`6—9', 'wp-includes/version.php', 0, '}è\Zm%ŞÛmSÑÙp6ŠC', '}è\Zm%ŞÛmSÑÙp6ŠC'),
('Y,Qpêgmu#—eŸ±¼~', 'wp-includes/widgets/class-wp-nav-menu-widget.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¯¿­MÆ9 äJDA'),
('ñ±TYÛPpEñw†“', 'wp-includes/widgets/class-wp-widget-archives.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¬ıÏÑ W%ì1EâAÒ'),
('I0Åó¹Sş$2£TĞüB*', 'wp-includes/widgets/class-wp-widget-calendar.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ö1şÍ„¨EW&oö:İ'),
('RãH\r0ü!„d‘?c&', 'wp-includes/widgets/class-wp-widget-categories.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Êı_ä›øsâ¬&ÂÑ-&'),
('&é¥±†˜ñòW‘³Ø€Ó|¡', 'wp-includes/widgets/class-wp-widget-links.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '˜_\\oŠ@ösÛ2õîìS'),
('«nÖ¢¡ù\r’V5‘‹,Ù', 'wp-includes/widgets/class-wp-widget-meta.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '÷Šé4Æñ’\ZæŞ„¤EtÃU'),
('K¯cŠ#2s’/(…"', 'wp-includes/widgets/class-wp-widget-pages.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '`ßWƒ I€éK°''¦2'),
('¤Ì6†èó~eª{Ğ".w', 'wp-includes/widgets/class-wp-widget-recent-comments.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ïáb`ÙU#XW³¦z'),
('l/\nÑÔ€°WÁÍ±-cÏ', 'wp-includes/widgets/class-wp-widget-recent-posts.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ıbÇñ/O‡76>mã<'),
('y7¯ĞMAä@ š…', 'wp-includes/widgets/class-wp-widget-rss.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '™\\çYŞ­ã+PØ`I'''),
('F\rºxÓw~Û\rÜ±´ç\n¦', 'wp-includes/widgets/class-wp-widget-search.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'àV¦ë~£Ğfåãçû’2'),
('¢-‰[ipùœ\\^˜ØóÁ]', 'wp-includes/widgets/class-wp-widget-tag-cloud.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'HöF“¾lùˆ}á´ãllh'),
('\0É ‰Ÿk~‚£U5T', 'wp-includes/widgets/class-wp-widget-text.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ífbbnÓŞÀ}›±€Ü•n'),
('SÛÊ&ëaz8öJØ¶9§', 'wp-includes/widgets.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', ')Û\nÚr:æ#Hï"yÛâ'),
('ø@¨ÒêsB0<€{l¶3ŸÑ', 'wp-includes/wlwmanifest.xml', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ßÔ¶óƒê¢iğ^ˆ–'),
('LÂŠe¡t"pc(	’eÇ', 'wp-includes/wp-db.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '“İéƒ×À.F5l§cµƒ'),
('(ï^¦3N½š©“‘¢3', 'wp-includes/wp-diff.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '¸Ò¢òóIC¶„·à%\r4,.'),
('šÿ™^''½qˆÂî0…ê', 'wp-links-opml.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'UõîÚOd''"ÒIÁF…Áb'),
('$»Àªj¶X])D:', 'wp-load.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'ŸD®8NEG#1„’¯O'),
('İº\r\0FJÈä–BáŞeç', 'wp-login.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ùó\r55Ÿñ¸†[-–Fò/'),
('´ƒ3 T.^Æ™<Ş÷ø', 'wp-mail.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lM«v— D¢*–Íxph'),
(';1Ñ‹#ÁY_N„¥t÷', 'wp-settings.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 't{ÌiØ9Æ™Ã#o‹3'),
('Œ,4#¢…(ç#', 'wp-signup.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'Ijf)ò¯Ùè''JµÊñ'),
('oã®š-×;?X:ûpÒ¡', 'wp-trackback.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '%<¶66[ı™¯sF"†C'),
('4Ú‚œÙL$¼,K[œuÌâ„', 'xmlrpc.php', 1, '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 'lSâÿb€ÅÏÄ£Æ2Ç…');

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
(1, 0.000000, 1488286427.859853, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(2, 0.000000, 1488286494.959498, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨–m', 0, 200, 0, 1, 0, 'http://vedantindustries.in/wp-login.php?action=logout&_wpnonce=373138a3c5', 'http://vedantindustries.in/wp-admin/admin.php?page=WordfenceWAF&wafAction=configureAutoPrepend&wafVerify=dae881d6d1&currentAutoPrepend', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', 'logout', NULL, NULL),
(3, 0.000000, 1488286496.737478, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨–m', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?loggedout=true', 'http://vedantindustries.in/wp-admin/admin.php?page=WordfenceWAF&wafAction=configureAutoPrepend&wafVerify=dae881d6d1&currentAutoPrepend', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(4, 0.000000, 1488294561.156154, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@Ù', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(5, 0.000000, 1488321436.761458, '\0\0\0\0\0\0\0\0\0\0ÿÿØÚŞ\r', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://pizza-tycoon.com/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', '', NULL, NULL),
(6, 0.000000, 1488330051.278813, '\0\0\0\0\0\0\0\0\0\0ÿÿBùK>', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(7, 0.000000, 1488354596.019005, '\0\0\0\0\0\0\0\0\0\0ÿÿz¸', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/55.0.2883.87 Chrome/55.0.2883.87 Safari/537.36', '', NULL, NULL),
(8, 0.000000, 1488354612.864761, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(9, 0.000000, 1488367347.601878, '\0\0\0\0\0\0\0\0\0\0ÿÿBùK', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(10, 0.000000, 1488402118.316302, '\0\0\0\0\0\0\0\0\0\0ÿÿBùK', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(11, 0.000000, 1488439563.207299, '\0\0\0\0\0\0\0\0\0\0ÿÿ/÷x', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(12, 0.000000, 1488439583.575073, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(13, 0.000000, 1488441013.046339, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ùå', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2F&reauth=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(14, 0.000000, 1488441025.650016, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ùå', 1, 503, 0, 0, 0, 'http://vedantindustries.in/wp-login.php', 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2F&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', NULL),
(15, 0.000000, 1488441194.433072, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(16, 0.000000, 1488441220.835658, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 1, 0, 'http://vedantindustries.in/wp-login.php', 'http://vedantindustries.in/wp-login.php', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', 'loginOK', NULL, NULL),
(17, 0.000000, 1488441284.031909, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 1, 0, 'http://vedantindustries.in/wp-login.php?action=logout&_wpnonce=045ae01bf6', 'http://vedantindustries.in/wp-admin/options-permalink.php', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', 'logout', NULL, NULL),
(18, 0.000000, 1488441285.247594, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?loggedout=true', 'http://vedantindustries.in/wp-admin/options-permalink.php', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(19, 0.000000, 1488441336.335198, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ùå', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(20, 0.000000, 1488441450.347832, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(21, 0.000000, 1488441579.538670, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(22, 0.000000, 1488441590.907086, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(23, 0.000000, 1488441599.932634, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=90', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(24, 0.000000, 1488441849.444422, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://vedantindustries.in/enquiry/?cat_id=90', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(25, 0.000000, 1488441854.542544, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(26, 0.000000, 1488441859.008491, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/about-us/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(27, 0.000000, 1488441862.852672, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(28, 0.000000, 1488441867.051119, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', '', NULL, NULL),
(29, 0.000000, 1488441897.049812, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ùå', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(30, 0.000000, 1488441906.844216, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ùå', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(31, 0.000000, 1488441914.840315, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ùå', 1, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(32, 0.000000, 1488441919.054482, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ùå', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/about-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(33, 0.000000, 1488441923.535888, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ùå', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(34, 0.000000, 1488441927.726637, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ùå', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/enquiry/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(35, 0.000000, 1488441934.023267, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ùå', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(36, 0.000000, 1488458875.463307, '\0\0\0\0\0\0\0\0\0\0ÿÿBùK', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(37, 0.000000, 1488458878.952888, '\0\0\0\0\0\0\0\0\0\0ÿÿBùK>', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=90', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(38, 0.000000, 1488465783.960346, '\0\0\0\0\0\0\0\0\0\0ÿÿBùK>', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=79', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(39, 0.000000, 1488468375.885770, '\0\0\0\0\0\0\0\0\0\0ÿÿBùK', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=80', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(40, 0.000000, 1488472696.159288, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@á', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=92', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(41, 0.000000, 1488476152.066679, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@á', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=84', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(42, 0.000000, 1488481969.439046, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@İ', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=96', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(43, 0.000000, 1488485290.669894, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@Ù', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=87', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(44, 0.000000, 1488485866.384513, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@İ', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(45, 0.000000, 1488487783.077862, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@Ù', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=89', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(46, 0.000000, 1488491107.446611, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@Ù', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=88', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(47, 0.000000, 1488494645.458000, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(48, 0.000000, 1488494646.492464, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(49, 0.000000, 1488494754.876761, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L!', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(50, 0.000000, 1488496921.793534, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@Ù', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=81', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(51, 0.000000, 1488496940.153816, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(52, 0.000000, 1488499691.097098, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@Ù', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=144', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(53, 0.000000, 1488504132.064185, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@İ', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=136', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(54, 0.000000, 1488509107.060070, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@Ù', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=142', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(55, 0.000000, 1488509122.291246, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(56, 0.000000, 1488514091.284781, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@á', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=108', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(57, 0.000000, 1488518522.252030, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@İ', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=140', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(58, 0.000000, 1488528814.200187, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@İ', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=138', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(59, 0.000000, 1488546854.982888, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@Ù', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(60, 0.000000, 1488598848.385101, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(61, 0.000000, 1488598867.582716, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(62, 0.000000, 1488600846.422933, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L	', 0, 200, 0, 0, 0, 'http://vedantindustries.in/a', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(63, 0.000000, 1488600847.819242, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(64, 0.000000, 1488604405.714417, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@š', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(65, 0.000000, 1488604881.708611, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@¢', 0, 200, 1, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(66, 0.000000, 1488610358.893376, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(67, 0.000000, 1488641960.499484, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@š', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(68, 0.000000, 1488641964.120313, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@š', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(69, 0.000000, 1488647662.539748, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@š', 0, 200, 1, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(70, 0.000000, 1488650872.329267, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@¢', 0, 200, 1, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(71, 0.000000, 1488657287.590062, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@¢', 0, 200, 1, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(72, 0.000000, 1488657301.158592, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(73, 0.000000, 1488676998.479441, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@š', 0, 200, 1, 0, 0, 'http://vedantindustries.in/contact-us/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(74, 0.000000, 1488718312.666198, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@', 0, 200, 1, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(75, 0.000000, 1488718330.464213, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(76, 0.000000, 1488725618.053833, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@š', 0, 200, 1, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(77, 0.000000, 1488732939.356113, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@á', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(78, 0.000000, 1488732941.070553, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@á', 0, 200, 1, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(79, 0.000000, 1488798023.466082, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@Ù', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(80, 0.000000, 1488798052.026423, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(81, 0.000000, 1488846360.784486, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(82, 0.000000, 1488860795.376488, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@Ù', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(83, 0.000000, 1488860798.108558, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@Ù', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(84, 0.000000, 1488937721.271058, '\0\0\0\0\0\0\0\0\0\0ÿÿ´LŠ', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(85, 0.000000, 1488937721.270243, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(86, 0.000000, 1488937750.981902, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(87, 0.000000, 1488937759.878043, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'http://vedantindustries.in/?_wfsf=detectProxy', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.82 Safari/537.1', 'scan:detectproxy', NULL, NULL),
(88, 0.000000, 1488937884.495866, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L!', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(89, 0.000000, 1488956569.417194, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L¢', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(90, 0.000000, 1488964380.885374, '\0\0\0\0\0\0\0\0\0\0ÿÿBùA÷', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(91, 0.000000, 1488964385.687276, '\0\0\0\0\0\0\0\0\0\0ÿÿBùAô', 0, 200, 1, 0, 0, 'http://vedantindustries.in/enquiry/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(92, 0.000000, 1488968706.096876, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(93, 0.000000, 1489057248.857803, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@á', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(94, 0.000000, 1489057254.251530, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@İ', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(95, 0.000000, 1489057273.370823, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(96, 0.000000, 1489079318.569922, '\0\0\0\0\0\0\0\0\0\0ÿÿ­ürv', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', '', '', NULL, NULL),
(97, 0.000000, 1489105760.453470, '\0\0\0\0\0\0\0\0\0\0ÿÿ®ŠPÛ', 0, 200, 0, 0, 0, 'http://mail.vedantindustries.in/', '', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', '', NULL, NULL),
(98, 0.000000, 1489119998.958478, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@Ù', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(99, 0.000000, 1489132211.868652, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(100, 0.000000, 1489132224.575289, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(101, 0.000000, 1489210707.231033, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨á!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(102, 0.000000, 1489210724.743217, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(103, 0.000000, 1489210741.143303, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨á!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(104, 0.000000, 1489210752.927179, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨á!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(105, 0.000000, 1489210758.630450, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨á!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/enquiry/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(106, 0.000000, 1489210763.452727, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨á!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(107, 0.000000, 1489210770.459241, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨á!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(108, 0.000000, 1489210774.844737, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨á!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(109, 0.000000, 1489210780.423380, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨á!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(110, 0.000000, 1489210783.249824, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨á!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(111, 0.000000, 1489210790.346726, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨á!', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(112, 0.000000, 1489213810.554634, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L ', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(113, 0.000000, 1489219043.750967, '\0\0\0\0\0\0\0\0\0\0ÿÿÏ.\ræ', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', '', NULL, NULL),
(114, 0.000000, 1489219046.367014, '\0\0\0\0\0\0\0\0\0\0ÿÿ(M§z', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', '', NULL, NULL),
(115, 0.000000, 1489229560.690608, '\0\0\0\0\0\0\0\0\0\0ÿÿ(M§z', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', '', NULL, NULL),
(116, 0.000000, 1489237185.091127, '\0\0\0\0\0\0\0\0\0\0ÿÿ6ÓØS', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'python-requests/2.3.0 CPython/3.4.0 Linux/4.4.35-33.55.amzn1.x86_64', '', NULL, NULL),
(117, 0.000000, 1489237186.679789, '\0\0\0\0\0\0\0\0\0\0ÿÿ6ÓØS', 0, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', '', 'python-requests/2.3.0 CPython/3.4.0 Linux/4.4.35-33.55.amzn1.x86_64', '', NULL, NULL),
(118, 0.000000, 1489300181.564176, '\0\0\0\0\0\0\0\0\0\0ÿÿ­üZø', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(119, 0.000000, 1489300184.176326, '\0\0\0\0\0\0\0\0\0\0ÿÿ­üZô', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(120, 0.000000, 1489300198.624829, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(121, 0.000000, 1489316459.131766, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(122, 0.000000, 1489316462.182829, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@š', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(123, 0.000000, 1489365396.684569, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/comments/feed/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(124, 0.000000, 1489365417.809211, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(125, 0.000000, 1489392637.264664, '\0\0\0\0\0\0\0\0\0\0ÿÿ@ö¥¾', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3.5.30729) SurveyBot/2.3 (DomainTools)', '', NULL, NULL),
(126, 0.000000, 1489392640.376830, '\0\0\0\0\0\0\0\0\0\0ÿÿ@ö¥¾', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', 'http://whois.domaintools.com/vedantindustries.in', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3.5.30729) SurveyBot/2.3 (DomainTools)', '', NULL, NULL),
(127, 0.000000, 1489392641.290013, '\0\0\0\0\0\0\0\0\0\0ÿÿ@ö¥¾', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://whois.domaintools.com/vedantindustries.in', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3.5.30729) SurveyBot/2.3 (DomainTools)', '', NULL, NULL),
(128, 0.000000, 1489405579.531753, '\0\0\0\0\0\0\0\0\0\0ÿÿ´LŠ', 0, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(129, 0.000000, 1489439628.494849, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7.ñ', 0, 200, 0, 0, 0, 'https://www.vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(130, 0.000000, 1489439650.448775, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(131, 0.000000, 1489440921.236286, '\0\0\0\0\0\0\0\0\0\0ÿÿhƒ?L', 0, 200, 0, 0, 0, 'https://mail.vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(132, 0.000000, 1489442422.167527, '\0\0\0\0\0\0\0\0\0\0ÿÿŸË«', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(133, 0.000000, 1489442492.038652, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(134, 0.000000, 1489463112.730492, '\0\0\0\0\0\0\0\0\0\0ÿÿ´Lœ', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=80', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(135, 0.000000, 1489489420.178930, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(136, 0.000000, 1489489425.472008, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(137, 0.000000, 1489489427.157297, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(138, 0.000000, 1489489429.444937, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(139, 0.000000, 1489489431.153376, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(140, 0.000000, 1489489432.644631, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(141, 0.000000, 1489489434.142965, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(142, 0.000000, 1489489435.641950, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(143, 0.000000, 1489489437.159501, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(144, 0.000000, 1489489438.758188, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(145, 0.000000, 1489489439.375904, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(146, 0.000000, 1489489440.952313, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(147, 0.000000, 1489489443.135846, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=90', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(148, 0.000000, 1489489444.946472, '\0\0\0\0\0\0\0\0\0\0ÿÿE:²;', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=89', '', 'Mozilla/5.0 (compatible; ips-agent)', '', NULL, NULL),
(149, 0.000000, 1489491490.030383, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', 'https://www.google.co.in', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(150, 0.000000, 1489491506.528192, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/enquiry/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(151, 0.000000, 1489491972.752740, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(152, 0.000000, 1489491989.472593, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(153, 0.000000, 1489492000.963745, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/about-us/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(154, 0.000000, 1489492071.147624, '\0\0\0\0\0\0\0\0\0\0ÿÿ=&ü', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(155, 0.000000, 1489492090.944352, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(156, 0.000000, 1489492091.746785, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(157, 0.000000, 1489492176.168936, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(158, 0.000000, 1489492196.149523, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(159, 0.000000, 1489492197.541660, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(160, 0.000000, 1489492222.754641, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(161, 0.000000, 1489492227.166962, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(162, 0.000000, 1489492257.173154, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(163, 0.000000, 1489492294.447825, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(164, 0.000000, 1489492297.247662, '\0\0\0\0\0\0\0\0\0\0ÿÿ{üº', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:42.0) Gecko/20100101 Firefox/42.0', '', NULL, NULL),
(165, 0.000000, 1489492377.853416, '\0\0\0\0\0\0\0\0\0\0ÿÿ®ŠGÆ', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(166, 0.000000, 1489493356.848696, '\0\0\0\0\0\0\0\0\0\0ÿÿ®Š_m', 0, 200, 0, 0, 0, 'https://www.vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(167, 0.000000, 1489497101.027151, '\0\0\0\0\0\0\0\0\0\0ÿÿ®ŠTC', 0, 200, 0, 0, 0, 'https://mail.vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(168, 0.000000, 1489528457.198988, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(169, 0.000000, 1489548210.115171, '\0\0\0\0\0\0\0\0\0\0ÿÿ­üJp', 0, 404, 0, 0, 0, 'http://vedantindustries.in/wp-content/uploads/2016/11/15060414_1121488617933870_2075129114_o-1.jpg', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(170, 0.000000, 1489548223.226320, '\0\0\0\0\0\0\0\0\0\0ÿÿBÜ’', 0, 404, 0, 0, 0, 'http://vedantindustries.in/wp-content/uploads/2016/11/15060414_1121488617933870_2075129114_o-1.jpg', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(171, 0.000000, 1489587916.496397, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L	', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=80', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(172, 0.000000, 1489587931.662060, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(173, 0.000000, 1489587940.847055, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'http://vedantindustries.in/?_wfsf=detectProxy', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.82 Safari/537.1', 'scan:detectproxy', NULL, NULL),
(174, 0.000000, 1489595906.664436, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L—', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(175, 0.000000, 1489670866.057611, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L™', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=86', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(176, 0.000000, 1489670879.418831, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(177, 0.000000, 1489688047.026270, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(178, 0.000000, 1489688050.521750, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(179, 0.000000, 1489700454.504281, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L¡', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=83', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(180, 0.000000, 1489709967.415120, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@6', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(181, 0.000000, 1489709979.911802, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(182, 0.000000, 1489723641.608140, '\0\0\0\0\0\0\0\0\0\0ÿÿ­üJb', 0, 404, 0, 0, 0, 'http://vedantindustries.in/wp-content/uploads/2016/11/15060414_1121488617933870_2075129114_o-1.jpg', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(183, 0.000000, 1489723894.119093, '\0\0\0\0\0\0\0\0\0\0ÿÿBÜ’', 0, 404, 0, 0, 0, 'http://vedantindustries.in/wp-content/uploads/2016/11/15060414_1121488617933870_2075129114_o-1.jpg', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(184, 0.000000, 1489746853.675058, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L™', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(185, 0.000000, 1489769477.798005, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@:', 0, 200, 1, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(186, 0.000000, 1489784204.887019, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L—', 0, 200, 0, 0, 0, 'http://vedantindustries.in/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fvedantindustries.in%2Fcontact-us%2F', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(187, 0.000000, 1489784218.836459, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(188, 0.000000, 1489799389.060098, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L\n', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(189, 0.000000, 1489799409.456544, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(190, 0.000000, 1489825178.708589, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(191, 0.000000, 1489825182.062324, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(192, 0.000000, 1489825204.557429, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(193, 0.000000, 1489825208.418168, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/about-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(194, 0.000000, 1489825214.946435, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(195, 0.000000, 1489825221.541236, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(196, 0.000000, 1489825223.738278, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(197, 0.000000, 1489825230.927436, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(198, 0.000000, 1489825232.637771, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(199, 0.000000, 1489825234.351487, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/about-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(200, 0.000000, 1489825239.641361, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(201, 0.000000, 1489825242.121513, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', 'http://vedantindustries.in/contact-us/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(202, 0.000000, 1489825244.058627, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/enquiry/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL);
INSERT INTO `vi_wfHits` (`id`, `attackLogTime`, `ctime`, `IP`, `jsRun`, `statusCode`, `isGoogle`, `userID`, `newVisit`, `URL`, `referer`, `UA`, `action`, `actionDescription`, `actionData`) VALUES
(203, 0.000000, 1489825245.836048, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(204, 0.000000, 1489825247.857755, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(205, 0.000000, 1489825255.458384, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(206, 0.000000, 1489825260.257565, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(207, 0.000000, 1489825263.464118, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(208, 0.000000, 1489825272.846255, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=79', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(209, 0.000000, 1489825276.628004, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/enquiry/?cat_id=79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(210, 0.000000, 1489825280.660331, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(211, 0.000000, 1489825362.350820, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(212, 0.000000, 1489825387.317147, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 503, 0, 0, 0, 'http://vedantindustries.in/wp-login.php', 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', NULL),
(213, 0.000000, 1489825387.718328, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 1, 503, 0, 0, 0, 'http://vedantindustries.in/wp-login.php', 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', NULL),
(214, 1489825474.455630, 1489825474.430000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(215, 1489825474.065295, 1489825474.040000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L3Byb2R1Y3Qtc2VydmljZXMv"}'),
(216, 1489825471.965323, 1489825471.940000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(217, 1489825470.510128, 1489825470.490000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/enquiry/?cat_id=79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(218, 1489825466.407502, 1489825466.380000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(219, 1489825466.020106, 1489825466.000000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"Lw=="}'),
(220, 1489825463.527675, 1489825463.510000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(221, 1489825463.119280, 1489825463.100000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"Lw=="}'),
(222, 1489825459.554326, 1489825459.530000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(223, 1489825459.145884, 1489825459.120000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/', 'http://vedantindustries.in/enquiry/?cat_id=79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"Lw=="}'),
(224, 1489825457.247121, 1489825457.220000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(225, 1489825456.850821, 1489825456.830000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/', 'http://vedantindustries.in/enquiry/?cat_id=79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"Lw=="}'),
(226, 1489825446.340204, 1489825446.320000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(227, 1489825445.940652, 1489825445.920000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/', 'http://vedantindustries.in/enquiry/?cat_id=79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"Lw=="}'),
(228, 1489825444.309779, 1489825444.280000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/enquiry/?cat_id=79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(229, 1489825436.050098, 1489825436.000000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(230, 1489825435.618631, 1489825435.590000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L3Byb2R1Y3Qtc2VydmljZXMv"}'),
(231, 1489825409.929918, 1489825409.900000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/wp-login.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(232, 1489825409.536786, 1489825409.510000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/wp-login.php', 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L3dwLWxvZ2luLnBocA=="}'),
(233, 1489825401.430746, 1489825401.400000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(234, 1489825397.396920, 1489825397.370000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/wp-login.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(235, 1489825397.008949, 1489825396.990000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/wp-login.php', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L3dwLWxvZ2luLnBocA=="}'),
(236, 1489825390.326460, 1489825390.300000, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨èi', 0, 403, 0, 0, 1, 'http://vedantindustries.in/favicon.ico', 'http://vedantindustries.in/wp-login.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'blocked:wordfence', 'Blocked by login security setting.', '{"learningMode":0,"failedRules":"","paramKey":"","paramValue":"","path":"L2Zhdmljb24uaWNv"}'),
(237, 0.000000, 1489828401.340337, '\0\0\0\0\0\0\0\0\0\0ÿÿK•İª', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows; U; MSIE 7.0; Windows NT 6.0; en-US)', '', NULL, NULL),
(238, 0.000000, 1489828516.254940, '\0\0\0\0\0\0\0\0\0\0ÿÿ/÷', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(239, 0.000000, 1489828596.153665, '\0\0\0\0\0\0\0\0\0\0ÿÿ/÷', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(240, 0.000000, 1489829078.035230, '\0\0\0\0\0\0\0\0\0\0ÿÿ/÷', 1, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(241, 0.000000, 1489906644.676666, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(242, 0.000000, 1489906647.302562, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(243, 0.000000, 1489906664.479106, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(244, 0.000000, 1489906686.107333, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(245, 0.000000, 1489906693.698006, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(246, 0.000000, 1489906725.396855, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(247, 0.000000, 1489906756.008894, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(248, 0.000000, 1489906764.896555, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', 'http://vedantindustries.in/product-services/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(249, 0.000000, 1489906815.779385, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(250, 0.000000, 1489907175.401363, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(251, 0.000000, 1489909206.277793, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(252, 0.000000, 1489909220.691986, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2F&reauth=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(253, 0.000000, 1489909250.618786, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 1, 404, 0, 0, 0, 'http://vedantindustries.in/wp-login', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(254, 0.000000, 1489909260.600028, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2F&reauth=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(255, 0.000000, 1489909289.398083, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨Ó\0', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2F&reauth=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(256, 0.000000, 1489916361.831498, '\0\0\0\0\0\0\0\0\0\0ÿÿ­üZö', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(257, 0.000000, 1489916365.188607, '\0\0\0\0\0\0\0\0\0\0ÿÿ­üZç', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', NULL, NULL),
(258, 0.000000, 1489949790.622373, '\0\0\0\0\0\0\0\0\0\0ÿÿBùK', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(259, 0.000000, 1489949793.468083, '\0\0\0\0\0\0\0\0\0\0ÿÿBùEÙ', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(260, 0.000000, 1489949806.378747, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(261, 0.000000, 1489978670.384199, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L”', 0, 200, 0, 0, 0, 'http://vedantindustries.in/feed/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(262, 0.000000, 1489990881.372768, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L	', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(263, 0.000000, 1490043042.879216, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(264, 0.000000, 1490043068.437204, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(265, 0.000000, 1490047036.019741, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L˜', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(266, 0.000000, 1490057721.199297, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(267, 0.000000, 1490079236.675093, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨İ', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(268, 0.000000, 1490079245.419287, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨İ', 1, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(269, 0.000000, 1490079625.944308, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨İ', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(270, 0.000000, 1490079647.301006, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨İ', 1, 200, 0, 1, 0, 'http://vedantindustries.in/wp-login.php', 'http://vedantindustries.in/wp-login.php?redirect_to=http%3A%2F%2Fvedantindustries.in%2Fwp-admin%2Fedit.php%3Fpost_type%3Dproducts&reauth=1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'loginOK', NULL, NULL),
(271, 0.000000, 1490095595.018892, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨İ', 1, 200, 0, 1, 0, 'http://vedantindustries.in/wp-login.php?action=logout&_wpnonce=e6b8377d38', 'http://vedantindustries.in/wp-admin/profile.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'logout', NULL, NULL),
(272, 0.000000, 1490095595.813957, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨İ', 1, 200, 0, 0, 0, 'http://vedantindustries.in/wp-login.php?loggedout=true', 'http://vedantindustries.in/wp-admin/profile.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', NULL, NULL),
(273, 0.000000, 1490144116.989082, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L”', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(274, 0.000000, 1490144116.988466, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L†', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(275, 0.000000, 1490144129.919471, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(276, 0.000000, 1490149121.700461, '\0\0\0\0\0\0\0\0\0\0ÿÿ\\?[T', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:50.0) Gecko/20100101 Firefox/50.0', '', NULL, NULL),
(277, 0.000000, 1490149122.915063, '\0\0\0\0\0\0\0\0\0\0ÿÿ\\?[T', 0, 200, 0, 0, 0, 'http://vedantindustries.in/?author=1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:50.0) Gecko/20100101 Firefox/50.0', '', NULL, NULL),
(278, 0.000000, 1490149123.729455, '\0\0\0\0\0\0\0\0\0\0ÿÿ\\?[T', 0, 200, 0, 0, 0, 'http://vedantindustries.in/wp-json/wp/v2/users/', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:50.0) Gecko/20100101 Firefox/50.0', '', NULL, NULL),
(279, 0.000000, 1490149125.432535, '\0\0\0\0\0\0\0\0\0\0ÿÿ\\?[T', 0, 503, 0, 0, 0, 'http://vedantindustries.in/xmlrpc.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:50.0) Gecko/20100101 Firefox/50.0', 'blocked:wfsn', 'Blocked by Wordfence Security Network', NULL),
(280, 0.000000, 1490150424.035899, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@š', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(281, 0.000000, 1490150425.020224, '\0\0\0\0\0\0\0\0\0\0ÿÿBù@¢', 0, 200, 1, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(282, 0.000000, 1490230552.392831, '\0\0\0\0\0\0\0\0\0\0ÿÿŠÅ{Ñ', 0, 200, 0, 0, 0, 'https://mail.vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(283, 0.000000, 1490230582.043634, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(284, 0.000000, 1490230591.562636, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/?_wfsf=detectProxy', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.82 Safari/537.1', 'scan:detectproxy', NULL, NULL),
(285, 0.000000, 1490231692.060573, '\0\0\0\0\0\0\0\0\0\0ÿÿhì8', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(286, 0.000000, 1490232918.558929, '\0\0\0\0\0\0\0\0\0\0ÿÿ®ŠDt', 0, 200, 0, 0, 0, 'https://www.vedantindustries.in/', '', 'Netcraft SSL Server Survey - contact info@netcraft.com', '', NULL, NULL),
(287, 0.000000, 1490292376.683188, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(288, 0.000000, 1490292380.779770, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(289, 0.000000, 1490292381.596368, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(290, 0.000000, 1490292384.310646, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(291, 0.000000, 1490292385.495223, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(292, 0.000000, 1490292393.787506, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(293, 0.000000, 1490292394.789006, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(294, 0.000000, 1490292395.110431, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(295, 0.000000, 1490292395.791177, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(296, 0.000000, 1490292396.578950, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=90', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(297, 0.000000, 1490292405.395562, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=89', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(298, 0.000000, 1490292413.985384, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=88', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(299, 0.000000, 1490292422.770601, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=87', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(300, 0.000000, 1490292431.888845, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=85', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(301, 0.000000, 1490292440.913628, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=84', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(302, 0.000000, 1490292449.474044, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=96', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(303, 0.000000, 1490292457.779944, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=95', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(304, 0.000000, 1490292466.017962, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=92', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(305, 0.000000, 1490292474.410914, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=91', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(306, 0.000000, 1490292482.697616, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=86', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(307, 0.000000, 1490292490.976116, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=83', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(308, 0.000000, 1490292499.493752, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=81', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(309, 0.000000, 1490292507.712222, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=80', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(310, 0.000000, 1490292516.489822, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=79', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', NULL, NULL),
(311, 0.000000, 1490292524.819656, '\0\0\0\0\0\0\0\0\0\0ÿÿÀcB–', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36', '', NULL, NULL),
(312, 0.000000, 1490326208.629846, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L\Z', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(313, 0.000000, 1490346647.455777, '\0\0\0\0\0\0\0\0\0\0ÿÿM÷µ¥', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://pizza-imperia.com/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', '', NULL, NULL),
(314, 0.000000, 1490346668.715091, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(315, 0.000000, 1490398066.031202, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(316, 0.000000, 1490398069.163222, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(317, 0.000000, 1490398070.732963, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://www.vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(318, 0.000000, 1490398073.149006, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(319, 0.000000, 1490398077.654263, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(320, 0.000000, 1490398082.927505, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/contact-us/', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(321, 0.000000, 1490398087.540735, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/product-services/', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(322, 0.000000, 1490398092.160821, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=63', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(323, 0.000000, 1490398097.949399, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=85', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(324, 0.000000, 1490398102.542319, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=84', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(325, 0.000000, 1490398107.248616, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=90', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(326, 0.000000, 1490398112.761444, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=87', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(327, 0.000000, 1490398117.460896, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=89', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(328, 0.000000, 1490398122.250304, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=88', 'http://vedantindustries.in/all-products/?cat_id=63', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(329, 0.000000, 1490398127.321488, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(330, 0.000000, 1490398131.859768, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=96', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(331, 0.000000, 1490398137.464490, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=92', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(332, 0.000000, 1490398142.354506, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=91', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(333, 0.000000, 1490398146.962550, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=95', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(334, 0.000000, 1490398152.625841, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=59', 'http://vedantindustries.in/', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(335, 0.000000, 1490398157.249906, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=86', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(336, 0.000000, 1490398162.942323, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=81', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(337, 0.000000, 1490398167.559949, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=79', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(338, 0.000000, 1490398172.065500, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=83', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(339, 0.000000, 1490398177.641645, '\0\0\0\0\0\0\0\0\0\0ÿÿ-7¶8', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=80', 'http://vedantindustries.in/all-products/?cat_id=59', 'Mozilla/5.0 (compatible; spbot/5.0.3; +http://OpenLinkProfiler.org/bot )', '', NULL, NULL),
(340, 0.000000, 1490431137.150699, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(341, 0.000000, 1490436841.536467, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/comments/feed/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(342, 0.000000, 1490445675.855600, '\0\0\0\0\0\0\0\0\0\0ÿÿ´LŒ', 0, 200, 0, 0, 0, 'http://vedantindustries.in/xmlrpc.php?rsd', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(343, 0.000000, 1490508421.291447, '\0\0\0\0\0\0\0\0\0\0ÿÿ{Éw', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0', '', NULL, NULL),
(344, 0.000000, 1490508429.869851, '\0\0\0\0\0\0\0\0\0\0ÿÿ{Éw', 1, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0', '', NULL, NULL),
(345, 0.000000, 1490508448.762818, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(346, 0.000000, 1490508563.148375, '\0\0\0\0\0\0\0\0\0\0ÿÿ{Éw', 1, 200, 0, 0, 0, 'http://vedantindustries.in/all-products/?cat_id=61', 'http://vedantindustries.in/', 'Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0', '', NULL, NULL),
(347, 0.000000, 1490508614.659354, '\0\0\0\0\0\0\0\0\0\0ÿÿ{Éw', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0', '', NULL, NULL),
(348, 0.000000, 1490509011.367429, '\0\0\0\0\0\0\0\0\0\0ÿÿ{Éw', 1, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=96', 'http://vedantindustries.in/all-products/?cat_id=61', 'Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0', '', NULL, NULL),
(349, 0.000000, 1490511428.464306, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fvedantindustries.in%2Fenquiry%2F&format=xml', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(350, 0.000000, 1490537811.979622, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L\n', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=96', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(351, 0.000000, 1490628920.714425, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L‹', 0, 200, 0, 0, 0, 'http://vedantindustries.in/a', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(352, 0.000000, 1490628924.508667, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L\n', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(353, 0.000000, 1490628925.688881, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2', '', NULL, NULL),
(354, 0.000000, 1490628941.104860, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(355, 0.000000, 1490641681.239231, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L!', 0, 200, 0, 0, 0, 'http://vedantindustries.in/a', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(356, 0.000000, 1490641693.786405, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L!', 0, 200, 0, 0, 0, 'http://vedantindustries.in/about-us/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(357, 0.000000, 1490642070.901401, '\0\0\0\0\0\0\0\0\0\0ÿÿĞ+áU', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; SiteExplorer/1.1b; +http://siteexplorer.info/Backlink-Checker-Spider/)', '', NULL, NULL),
(358, 0.000000, 1490642072.301501, '\0\0\0\0\0\0\0\0\0\0ÿÿĞ+áU', 0, 200, 0, 0, 0, 'http://www.vedantindustries.in/', '', 'Mozilla/5.0 (compatible; SiteExplorer/1.1b; +http://siteexplorer.info/Backlink-Checker-Spider/)', '', NULL, NULL),
(359, 0.000000, 1490642074.131454, '\0\0\0\0\0\0\0\0\0\0ÿÿĞ+áU', 0, 200, 0, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; SiteExplorer/1.1b; +http://siteexplorer.info/Backlink-Checker-Spider/)', '', NULL, NULL),
(360, 0.000000, 1490642075.988488, '\0\0\0\0\0\0\0\0\0\0ÿÿĞ+áU', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; SiteExplorer/1.1b; +http://siteexplorer.info/Backlink-Checker-Spider/)', '', NULL, NULL),
(361, 0.000000, 1490670254.186027, '\0\0\0\0\0\0\0\0\0\0ÿÿ?óüD', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(362, 0.000000, 1490670270.126263, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(363, 0.000000, 1490695551.562721, '\0\0\0\0\0\0\0\0\0\0ÿÿA§‚', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://hvd-store.com/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36', '', NULL, NULL),
(364, 0.000000, 1490697257.711761, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L‡', 0, 200, 0, 0, 0, 'http://vedantindustries.in/?p=12', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(365, 0.000000, 1490697258.707521, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L£', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(366, 0.000000, 1490704721.016818, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/enquiry/?cat_id=95', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(367, 0.000000, 1490710513.649161, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨r', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', 'http://webkidunia.com/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', '', NULL, NULL),
(368, 0.000000, 1490710528.703193, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(369, 0.000000, 1490740710.221143, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(370, 0.000000, 1490740726.816981, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(371, 0.000000, 1490809036.986902, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 0, 200, 0, 0, 0, 'http://vedantindustries.in/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fvedantindustries.in%2Fenquiry%2F', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(372, 0.000000, 1490809051.173557, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL),
(373, 0.000000, 1490840838.221162, '\0\0\0\0\0\0\0\0\0\0ÿÿBùBD', 0, 200, 1, 0, 0, 'http://vedantindustries.in/robots.txt', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(374, 0.000000, 1490840840.993376, '\0\0\0\0\0\0\0\0\0\0ÿÿBùB~', 0, 200, 1, 0, 0, 'http://vedantindustries.in/', '', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', NULL, NULL),
(375, 0.000000, 1490853709.335855, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L£', 0, 200, 0, 0, 0, 'http://vedantindustries.in/feed/', '', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)', '', NULL, NULL),
(376, 0.000000, 1490853726.050227, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'https://vedantindustries.in/', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36', '', NULL, NULL);
INSERT INTO `vi_wfHits` (`id`, `attackLogTime`, `ctime`, `IP`, `jsRun`, `statusCode`, `isGoogle`, `userID`, `newVisit`, `URL`, `referer`, `UA`, `action`, `actionDescription`, `actionData`) VALUES
(377, 0.000000, 1490853731.792336, '\0\0\0\0\0\0\0\0\0\0ÿÿE.$', 0, 200, 0, 0, 0, 'http://vedantindustries.in/?_wfsf=detectProxy', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_4) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.82 Safari/537.1', 'scan:detectproxy', NULL, NULL);

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
(24845078, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 1),
(24845175, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨r', 1),
(24844954, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L£', 1),
(24844925, '\0\0\0\0\0\0\0\0\0\0ÿÿA§‚', 1),
(24844504, '\0\0\0\0\0\0\0\0\0\0ÿÿ?óüD', 1),
(24847561, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L£', 1),
(24844034, '\0\0\0\0\0\0\0\0\0\0ÿÿĞ+áU', 3),
(24844028, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L!', 1),
(24845678, '\0\0\0\0\0\0\0\0\0\0ÿÿ´L', 1);

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
(1, 2, 1488286495.156651, 0, 'logout', 'VedIN', 1, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨–m', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(2, 16, 1488441221.131835, 0, 'loginOK', 'VedIN', 1, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(3, 17, 1488441284.118584, 0, 'logout', 'VedIN', 1, '\0\0\0\0\0\0\0\0\0\0ÿÿ«1ê', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(4, 270, 1490079647.428904, 0, 'loginOK', 'VedIN', 1, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨İ', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(5, 271, 1490095595.121443, 0, 'logout', 'VedIN', 1, '\0\0\0\0\0\0\0\0\0\0ÿÿz¨İ', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36');

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
('network-GC', 1, 'digest201701', 1000, 1488846365, '<div style="padding:1rem 0px;">\n		<p style="font-weight:bold;font-size:0.8rem;color:#11967A;margin-top: 0;">Recent Blog Highlights</p>\n		<div style="display:flex;flex-direction:row;max-width:100%;overflow-x:auto;flex-basis:auto;">\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/xmlrpc-wp-login-brute-force/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">XMLRPC or WP-Login: Which do Brute Force Attackers Prefer</a>\n				<div style="font-size:0.9rem;color:#2d2d2d;">A close look at brute force attack targets yielded some surprising results.</div>\n			</div>\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/wordpress-security-plugin/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">Do you Need a WordPress Security Plugin?</a>\n\n				<div style="font-size:0.9rem;color:#2d2d2d;">This easy to follow post makes the clear case for running both a malware scanner and firewall on your WordPress site.</div>\n			</div>\n\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/wordpress-botnet-monetization/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">Analysis: Methods and Monetization of a Botnet Attacking WordPress</a>\n\n				<div style="font-size:0.9rem;color:#2d2d2d;">\n				A deep dive on the methods and profit motive of an active Botnet.\n				</div>\n			</div>\n\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/chrome-56-ssl-https-wordpress/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">Imminent: Non-HTTPS Sites Labeled â€œNot Secureâ€ by Chrome</a>\n\n				<div style="font-size:0.9rem;color:#2d2d2d;">\n				An overview of changes to Google Chrome that will impact non-https site owners.\n				</div>\n			</div>\n\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/gmail-phishing-data-uri/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">Wide Impact: Highly Effective Gmail Phishing Technique Being Exploited</a>\n\n				<div style="font-size:0.9rem;color:#2d2d2d;">\n				We profile a new phishing technique that is fooling even experienced technical users.\n				</div>\n			</div>\n\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/how-wordpress-firewall-works/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">How the Wordfence Firewall Works</a>\n\n				<div style="font-size:0.9rem;color:#2d2d2d;">\n				We explain how the Wordfence firewall protects your website from attacks.\n				</div>\n			</div>\n\n			<div style="margin: 0 0.5rem 1rem;padding: 1rem;border:1px solid #e9eff3;width:200px;flex-shrink:0;display:flex;flex-direction:column;margin-bottom:0.5rem;">\n				<a href="https://www.wordfence.com/blog/2017/01/december-2016-wordpress-attack-activity-report/?utm_source=plugin&amp;utm_campaign=bd020117&amp;utm_medium=pluginalert" style="display:block;font-weight:bold;text-decoration:none;color:#00709e;margin-bottom:1rem;">The December 2016 WordPress Attack Activity Report</a>\n\n				<div style="font-size:0.9rem;color:#2d2d2d;">\n				Stats and insights from Wordfence Network from December.\n				</div>\n                </div>\n		</div>\n	</div><script type="application/javascript">jQuery(''.wf-dashboard-item-list-title'').css(''min-width'', 0);</script>', '[]'),
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
('\0\0\0\0\0\0\0\0\0\0ÿÿBùBD', 'crawl-66-249-66-68.googlebot.com', 1490840838),
('\0\0\0\0\0\0\0\0\0\0ÿÿBùB~', 'crawl-66-249-66-126.googlebot.com', 1490840841);

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
