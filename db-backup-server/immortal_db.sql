-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2017 at 07:26 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `immortal_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `file_name`, `date`, `status`) VALUES
(8, 'tat1-1431265173.jpg', '2015-05-10 13:39:34', 1),
(9, 'tat2-1431265206.jpg', '2015-05-10 13:40:06', 1),
(10, 'tat8-1431265206.jpg', '2015-05-10 13:40:06', 1),
(11, 'tat7-1431265206.jpg', '2015-05-10 13:40:07', 1),
(12, '1656037_739253176094322_1849279321_n-copy-1431773686.jpg', '2015-05-16 10:54:46', 1),
(13, '1910147_842257199127252_5903211700827493343_n-1431773750.jpg', '2015-05-16 10:55:50', 1),
(14, '10347419_830678553618450_4056624694474707196_n-1431773763.jpg', '2015-05-16 10:56:03', 1),
(15, '1honorable-society_tattoo-1431773773.jpg', '2015-05-16 10:56:13', 1),
(16, '10492473_828274573858848_8578175752287356988_n-1431773923.jpg', '2015-05-16 10:58:43', 1),
(17, '1610886_968262586526712_1675853596836284148_n-1431773990.jpg', '2015-05-16 10:59:50', 1),
(18, '10982181_968262636526707_9215198022745751190_n-1431774023.jpg', '2015-05-16 11:00:23', 1),
(19, '10929583_968262523193385_7386082498094273065_n-1431774073.jpg', '2015-05-16 11:01:13', 1),
(20, '10994162_968263426526628_8624898622546795259_n-1431774074.jpg', '2015-05-16 11:01:14', 1),
(21, '11006432_968262479860056_8098829489025769308_n-1431774074.jpg', '2015-05-16 11:01:14', 1),
(22, '10411054_968263626526608_9100639460914079199_n-1431774098.jpg', '2015-05-16 11:01:38', 1),
(23, '10550846_968263516526619_2281819864142209670_n-1431774137.jpg', '2015-05-16 11:02:17', 1),
(24, '10998872_968263423193295_1752937580221033405_n-1431774164.jpg', '2015-05-16 11:02:44', 1),
(26, '11022585_968264306526540_4784726741069216931_n-1431774203.jpg', '2015-05-16 11:03:23', 1),
(27, '1010145_968263753193262_2621880562494761986_n-1431774253.jpg', '2015-05-16 11:04:13', 1),
(28, '11021059_968263256526645_6803251612920945700_n-1431774267.jpg', '2015-05-16 11:04:27', 1),
(29, '1528487_968262986526672_1679393643223225296_n-1431774300.jpg', '2015-05-16 11:05:00', 1),
(30, '10917268_968262446526726_7642072317000591779_n-1431774364.jpg', '2015-05-16 11:06:04', 1),
(31, '11223750_1008650909154546_292313725889249496_n-1431774434.jpg', '2015-05-16 11:07:14', 1),
(33, '104-1461654831.jpg', '2016-04-26 07:13:51', 1),
(34, '113-1461654836.jpg', '2016-04-26 07:13:56', 1),
(35, '110-1461654840.jpg', '2016-04-26 07:14:00', 1),
(36, '038-1461654908.jpg', '2016-04-26 07:15:08', 1),
(37, '098-1461654933.jpg', '2016-04-26 07:15:33', 1),
(38, '088-1461654951.jpg', '2016-04-26 07:15:51', 1),
(39, '097-1461654963.jpg', '2016-04-26 07:16:03', 1),
(40, '079-1461654993.jpg', '2016-04-26 07:16:33', 1),
(41, '073-1461655012.jpg', '2016-04-26 07:16:52', 1),
(42, '081-1461655020.jpg', '2016-04-26 07:17:00', 1),
(43, '042-1461655026.jpg', '2016-04-26 07:17:15', 1),
(44, '039-1461655035.jpg', '2016-04-26 07:17:15', 1),
(45, '082-1461655074.jpg', '2016-04-26 07:17:54', 1),
(46, '068-1461655103.jpg', '2016-04-26 07:18:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `keyword`
--

CREATE TABLE IF NOT EXISTS `keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `keyword`
--

INSERT INTO `keyword` (`id`, `keyword`, `status`, `date`) VALUES
(5, 'Immortal, Immortal tattoo indore, Immortal tooindore, ictsa, Immortal tattoos Studio &amp; Academy, tattoos, first tattoo in india, first tattoo artist in MP, best tattoo in indore, tattoo indore, tattoo, indore tattoo, tattoo artist in indore, tattoo artist, Immortal, tattoo indore,tattoo academy, Immortal tattoo academy indore, Immortal creative tattoo academy indore, best tattoo artist in indore, best tattoo parlour in indore, best tattoo studio in indore, Best Training center in indore, Training center in indore, high quality tattoo', 1, '2015-05-10 13:35:24'),
(6, 'Immortal', 1, '2015-05-10 14:01:37'),
(7, 'best tattoo artist in indore, best tattoo parlour in indore, best tattoo studio in indore, body tattoo in indore, laser tattoo removal in indore, permanent tattoo cost in indore, permanent tattoo in indore\r\npermanent tattoo price in indore, permanent tattoo shops in indore, price of tattoo in indore, snapdeal for tattoo in indore, tattoo artist in indore, tattoo at indore, tattoo center in indore, tattoo charges in indore, tattoo course in indore, tattoo deals indore, tattoo designs in indore, tattoo in indore, tattoo indore snapdeal, tattoo maker in indore, tattoo making in indore, tattoo offers in indore, tattoo parlors in indore, tattoo parlour indore, tattoo price in indore,tattoo rates in indore, tattoo removal clinic in indore,tattoo removal cost in indore, tattoo removal indore, tattoo shop indore, tattoo studio indore, tattoo training in indore, temporary tattoo in indore\r\n', 1, '2015-05-13 08:34:10'),
(8, ',tattoopermanent tattoo in INDORE,tattoo in INDORE,temporary tattoo in INDORE,tattoo studio in INDORE,tattoo artist in INDORE,tattooist in INDORE,best tattoo artist in INDORE,female tattoo artist in indore,permanent tattoo artist in indore,best tattoo artist in indore,best tattoo studio in indore,permanent tattoo artist in INDORE,celtic tattoo ,arm tattoo,butterfly tattoo,star tattoo,tribal tattoo,lion tattoo,shiva tattoo,tiger tattoo,sun tattoo,om tattoo,trishul tattoo  shop in indore', 1, '2015-05-13 08:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE IF NOT EXISTS `subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `comments` text NOT NULL,
  `interest_in` text NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `name`, `email`, `phone`, `comments`, `interest_in`, `address`, `created_at`) VALUES
(4, 'sas', 'asa', 'asa', 'asas', 'sas', '', '2015-05-03 22:24:21'),
(5, 'Dina Karan', 'immortalcreativetattoo@gmail.com', '9179997492', 'i wnt to get tattoo', 'Want Tattoo', '', '2015-06-23 08:31:02'),
(6, 'Kalpana Kumari', '0000000000@000.COM', '0000000000000', '00000000000', 'Want Tattoo,Tattoo course,Learn Tattoo,Just love Tattoo', '', '2015-06-24 08:28:13'),
(7, 'praveen karpe', 'praveen@purplefocus.com', '9977893626', 'Cheers :)', 'Want Tattoo', '', '2015-06-24 15:05:40'),
(8, 'baishakhi', 'baishakhisarkar92@gmail.com', '8358053341', '', 'Want Tattoo', '', '2015-06-26 05:51:28'),
(9, 'Prateek jain', 'prateek.lushing.jain@gmail.com', '9669762982', 'I want a tattoo on my right hand.\n" Te Amo S "\nHow much is the cost of that tattoo...', 'Want Tattoo', '', '2015-07-12 13:46:38'),
(10, 'piyush verma', 'piyushverma365@gmail.com', '9424056518', '', 'Want Tattoo', '', '2015-07-20 14:47:20'),
(11, 'Deval', 'Devaltrack1@gmail.com', '8357017000', 'I want tattoo combining two letters D and V', 'Want Tattoo', '', '2015-08-04 07:21:49'),
(12, 'Divyansh bhati', 'Divyanshbhati24@gmail.com', '9589545856', '', 'Want Tattoo', '', '2015-09-06 12:46:07'),
(13, 'mayank sharma', 'monu_cool_star@yahoo.com', '9039571273', 'like om & lord shiva tattoo', 'Want Tattoo', '', '2015-09-07 11:01:21'),
(14, 'danish issac', 'danishissac10and8@gmail.com', '8962572577', 'tattoo making is an art for me', 'Tattoo course,Learn Tattoo', '', '2015-09-09 15:47:36'),
(15, 'SOURAB', 'Saurab_biswaa@yahoo.com', '9614115219', 'like ur ta2z', 'Just love Tattoo', '', '2015-09-17 07:11:55'),
(16, 'Utsav Birthare', 'utsav.birth@gmail.com', '9993457915', 'I want to have a semi colon tattoo on my left side of neck. I have heard that it is very painfull to have tattoo on neck. I just want to know that can i have it.', 'Want Tattoo', '', '2015-10-15 15:08:42'),
(17, 'ankit', 'ankit.mahajan809@Gmail.com', '9981812498', 'Nice tattoo bro', 'Want Tattoo', '', '2015-10-18 19:42:55'),
(18, 'Pankaj', 'psinghkharayat@gmail.com', '07503903054', 'i am interested learn Tattoo', 'Tattoo course,Learn Tattoo', '', '2015-10-21 08:01:42'),
(19, 'kishor jiwane', 'kj9125@gmail.com', '7387678323', '', 'Want Tattoo', '', '2015-10-21 11:53:41'),
(20, 'daivik pandya', 'daivikpandya90@gmail.com', '9638163227', 'Muje om namo bhagvate vasudevay tatoo likhvana he koi design ho to pic dikhao', 'Want Tattoo', '', '2015-10-21 14:00:20'),
(21, 'danesh', 'danesh.mobedji14@gmail.com', '9893044569', 'Ultimate work', 'Want Tattoo,Just love Tattoo', '', '2015-10-22 04:03:20'),
(22, 'Abhishek pavecha', 'caabhishek44@gmail.com', '9589588801', '', 'Want Tattoo', '', '2015-10-23 07:52:15'),
(23, 'krunal', 'gkrunal555@yahoo.in', '09737166606', 'Change my tattoo pls solve & ok in hand', 'Want Tattoo', '', '2015-10-28 14:05:24'),
(24, 'Garry', 'gurmailsingh47@yahoo.com', '9646988254', 'Tattoo lover', 'Want Tattoo', '', '2015-11-06 11:19:32'),
(25, 'Vikas', 'vikas.agarwal2710@gmail.com', '7509944589', 'na', 'Just love Tattoo', '', '2015-11-18 16:21:44'),
(26, 'Prince oad', 'www.princeoad@gmail.com', '9680087765', '', 'Want Tattoo,Tattoo course,Learn Tattoo', '', '2015-11-26 19:09:44'),
(27, 'Mahendra Chouhan', 'mahakal07@gmail.com', '7879689997', '', 'Tattoo course,Learn Tattoo', '', '2015-11-29 09:49:41'),
(28, 'CHANDAN PATIDAR', 'patidarchandan@yahoo.in', '7415815693', '', 'Want Tattoo', '', '2015-11-29 12:34:24'),
(29, 'Deepu', 'Deepulove2014@gmail.com', '8989096560', 'I  want tatoo', 'Want Tattoo', '', '2016-04-29 06:23:29'),
(30, 'Arun Kumar Jain', 'arun.here29@yahoo.co.in', '9644910010', 'Want a tattoo for myself', 'Want Tattoo', '', '2016-05-04 09:05:13'),
(31, 'Santosh', 'malviyas.rajking1995@gmail.com', '8435220755', 'I love tattooo', 'Want Tattoo', '', '2016-05-09 15:34:04'),
(32, 'Nikhil rathore', 'nikhilr577@gmail.com', '8718065931', 'Like', 'Want Tattoo,Just love Tattoo', '', '2016-05-11 10:59:50'),
(33, 'Priya', 'priyaonker@gmail.com', '8269571717', 'I like to doing paintings thats the reason i want to  learn tattoo', 'Tattoo course', '', '2016-05-15 19:06:47'),
(34, 'Mohit', 'mahajanmohit84@gmail.com', '9479471654', 'i want a tattoo , a mantra tattoo', 'Want Tattoo', '', '2016-05-24 09:22:52'),
(35, 'Priya', 'priya_panchal07@yahoo.com', '9723495125', '', 'Want Tattoo', '', '2016-05-26 19:21:23'),
(36, 'vibhashu choudhary', 'vibss1996@gmail.com', '7828677779', '', 'Want Tattoo', '', '2016-05-31 04:37:35'),
(37, 'shubham choudhary', 'shubhamchoudhary310594@gmaul.com', '9770007512', '', 'Want Tattoo', '', '2016-05-31 04:39:41'),
(38, 'kishan saraf', 'kishan.saraf1998@gmail.com', '8435550441', '', 'Want Tattoo', '', '2016-06-06 02:17:33'),
(39, 'prajwal choure', 'prajwalchoure@gmail.com', '8349101235', 'I want tattoo at sholder', 'Want Tattoo', '', '2016-06-07 14:04:35'),
(40, 'menka', 'menkadalal@gmail.com', '8889912131', 'wanna know about rates', 'Want Tattoo', '', '2016-06-16 11:22:06'),
(41, 'jay solanki', 'solankijay01@gmail.com', '8889579116', 'i want tatoo in my hand like priyanka chopras tatoo', 'Want Tattoo', '', '2016-06-20 07:29:26'),
(42, 'Shivansh sharma', 'dilipsharma730@gmail.com', '9617388141', 'Best tatto', 'Want Tattoo', '', '2016-06-26 07:28:43'),
(43, 'Chandni', 'Chandnitahalvani@gmail.com', '7692859008', 'Awesome tattoos', 'Want Tattoo,Tattoo course,Learn Tattoo,Just love Tattoo', '', '2016-06-28 13:29:17'),
(44, 'Ishan Dubey', 'ishaan.dubey12345@gmail.com', '7509818332', '', 'Tattoo course', '', '2016-06-30 18:13:23'),
(45, 'Navish Yadav', 'navishyadav07@gmail.com', '9770429380', 'me and my friend wanna have tattoo of lord shiva', 'Want Tattoo', '', '2016-07-01 09:43:43'),
(46, 'Anurag rathod', 'Anuragrathod0818@gmail.com', '8305555846', '', 'Want Tattoo', '', '2016-07-03 13:02:50'),
(47, 'Amey Pangaonkar', 'ameypangaonkar@gmail.com', '7755991160', 'Need Shiva tattoo on my left arm', 'Want Tattoo', '', '2016-07-06 08:23:28'),
(48, 'Amit surma', 'amitsurma16@gmail.com', '7748083112', '', 'Want Tattoo', '', '2016-07-10 14:12:59'),
(49, 'VEER JOSHI', 'Virjoshi.143@gmail.com', '9111110289', '', 'Want Tattoo', '', '2016-07-16 03:50:45'),
(50, 'Suvinava Basak', 'ultimate.basak@gmail.com', '7044066739', '', 'Want Tattoo', '', '2016-07-16 20:20:07'),
(51, 'Yash parolkar', 'Yashparolkar246@gmail.com', '7415741724', '', 'Want Tattoo,Just love Tattoo', '', '2016-07-22 08:52:34'),
(52, 'raj yadav', 'yraj8189@gmail.com', '8962489149', 'I want to do a tatto corce', 'Want Tattoo,Tattoo course,Learn Tattoo,Just love Tattoo', '', '2016-07-28 03:13:09'),
(53, 'Sourabh Roy', 'roy605@gmail.com', '8177021262', '', 'Want Tattoo', '', '2016-07-29 13:58:42'),
(54, 'hrisabh suryawanshi', 'hrisabh78sury69@gmail.com', '8989277556', '', 'Want Tattoo', '', '2016-07-31 13:58:51'),
(55, 'TARUN NAYYAR', 'tarunnayyar6667@gmail.com', '8602126667', '', 'Want Tattoo', '', '2016-08-01 16:18:03'),
(56, 'Tushaar', 'tushaar.spark@gmail.com', '7057770080', 'I wish to know the details of cources in tatoo creation.', 'Tattoo course,Learn Tattoo', '', '2016-08-07 14:21:34'),
(57, 'jai sharma', 'jitu.js99.js77@gmail.com', '9826932601', 'Ilove learn tattoo', 'Tattoo course', '', '2016-08-08 11:58:57'),
(58, 'chahat mehar', 'chahatmehar23@gmail.com', '9479851022', '', 'Want Tattoo,Learn Tattoo', '', '2016-08-09 03:47:00'),
(59, 'Vicky', 'Vickys.sharma25005@gmail.com', '7354799376', '', 'Tattoo course', '', '2016-08-11 19:39:02'),
(60, 'Samir', 'samir_tamuly@optum.com', '9654541439', 'Looking for shiva tattoo as covering of another tattoo in my arms', 'Want Tattoo', '', '2016-08-13 12:44:37'),
(61, 'Simranjeet', 'Do77er@gmail.com', '9997002295', '', 'Want Tattoo', '', '2016-08-15 11:21:17'),
(62, 'ronak', 'ronakjn02@gmail.com', '9772719719', '', 'Want Tattoo,Tattoo course,Learn Tattoo,Just love Tattoo', '', '2016-08-28 12:56:22'),
(63, 'Neeraj Parmar', '90.neerajparmar@gmail.com', '9713954878', '', 'Want Tattoo', '', '2016-09-02 09:37:45'),
(64, 'Snehil Tiwari', 'snehil143osho@gmail.com', '8989838373', 'I want shivji tattoo on my right hand but budget is low can you tell me minimum how much I have to pay', 'Want Tattoo', '', '2016-09-11 07:12:45'),
(65, 'atul', 'atuljadon21@gmail.com', '9977112508', '', 'Want Tattoo', '', '2016-09-12 16:23:58'),
(66, 'swspnesh', 'swapnesh.trivedi@yahoo.com', '9826777007', '', 'Want Tattoo', '', '2016-09-17 17:53:17'),
(67, 'akash rajwanshi', 'rajwanshiakash8@gmail.com', '7694973989', '', 'Learn Tattoo', '', '2016-09-20 19:11:15'),
(68, 'akash rajwanshi', 'rajwanshiakash8@gmail.com', '7694973989', '', 'Learn Tattoo', '', '2016-09-20 19:11:34'),
(69, 'Bhavi Kashyap', 'Kashyapbhavi@gmail.com', '9981904689', '', 'Want Tattoo', '', '2016-09-26 05:09:14'),
(70, 'ALI ASGAR', 'aliture53@yahoo.com', '9630147447', 'I Come\nAs soon as', 'Want Tattoo', '', '2016-09-29 14:02:40'),
(71, 'Mohit Jain', 'mohit.mady@gmail.com', '9977777599', 'I want a sun sign tattoo on back neck.', 'Want Tattoo', '', '2016-10-02 04:53:57'),
(72, 'Harsh', 'Harsh7ronaldo@gmail.com', '9039844220', '', 'Want Tattoo', '', '2016-10-02 17:04:11'),
(73, 'tarun vyas', 'tarunvyas11@gmail.com', '9165244529', '', 'Want Tattoo', '', '2016-10-03 11:02:00'),
(74, 'Divya', 'divyarastogi52@gmail.com', '918600522869', '', 'Want Tattoo', '', '2016-10-04 06:19:25'),
(75, 'lokesh', 'lokeshyadavs7886@gmail.com', '9907978825', '', 'Want Tattoo', '', '2016-10-05 16:29:44'),
(76, 'vineet', 'vineet-verma@live.com', '9878248311', '', 'Want Tattoo', '', '2016-10-09 17:43:15'),
(77, 'Mahendra sitpara', 'sitpara.mahendra@gmail.com', '9301822489', '', 'Tattoo course', '', '2016-10-12 14:23:51'),
(78, 'Pranav', 'Pranavkhanna1@gmail.com', '9993076821', '', 'Want Tattoo', '', '2016-10-28 05:58:11'),
(79, 'Liane', 'lianehughes@hotmail.com', '07955658355', '', 'Want Tattoo,Tattoo course,Learn Tattoo,Just love Tattoo', '', '2016-11-22 02:27:51'),
(80, 'Liane', 'lianehughes@hotmail.com', '07955658355', 'I love all tattoos', 'Just love Tattoo', '', '2016-11-22 02:35:16'),
(81, 'pravin pawar', 'pawar.pravin855@gmail.com', '7477277986', 'shivagi Maharaj', 'Want Tattoo', '', '2016-11-28 14:13:01'),
(82, 'Krishnakant gosar', 'Krishnakantgosar3131@gmail.com', '9302186921', '', 'Want Tattoo', '', '2016-12-08 19:53:31'),
(83, 'girish chandak', 'chandakgopali3333@gmail.com', '7604875847', '', 'Want Tattoo', '', '2016-12-17 03:32:44'),
(84, 'dharmendra', 'rk573001@gmail.com', '9074222989', 'You are the best \nYour work is tooo', 'Tattoo course', '', '2016-12-17 04:02:19'),
(85, 'Ritu', 'ranimore37@gmail.com', '7694831910', 'tattoo of guitar', 'Want Tattoo', '', '2016-12-17 17:32:09'),
(86, 'Nilesh', 'nileshsharma003@gmail.com', '9425072003', '', 'Want Tattoo', '', '2016-12-18 03:16:50'),
(87, 'pimtu', 'pintuvishwakarma1143@gmail.com', '8103861138', 'cours in', 'Tattoo course', '', '2016-12-21 08:36:49'),
(88, 'Ashutosh', 'ashutoshagnihotril111@gmail.com', '8349040402', 'I want my first tattoo. Want it to be special.', 'Want Tattoo', '', '2016-12-25 05:35:08'),
(89, 'Utkarsh Singh', 'utkarsh23in@gmail.com', '9827754575', 'what about your charges per square inch.', 'Want Tattoo', '', '2017-01-06 05:05:16'),
(90, 'Siddharth Banodha', 'banodhas@gmail.com', '9039760683', 'I m looking Tattoo academy for my friend...', 'Learn Tattoo,Just love Tattoo', '', '2017-01-07 08:23:18'),
(91, 'lagnesh chouhan', 'Lagneshcivil@gmail.com', '8962156766', 'You are doing nice work', 'Just love Tattoo', '', '2017-01-11 12:27:18'),
(92, 'arjun patidar', 'arjunpatidar.aa@gmail.com', '9993754777', 'na', 'Want Tattoo,Just love Tattoo', '', '2017-01-12 20:09:11'),
(93, 'Chinmay Bhatt', 'chinmaybhatt76@ymail.com', '9575555518', '', 'Want Tattoo', '', '2017-01-16 18:38:46'),
(94, 'mayank', 'godiyal28@gmail.com', '8982291995', '', 'Want Tattoo', '', '2017-01-17 03:37:57'),
(95, 'vishal', 'vishalchouhan7@yahoo.com', '8770636591', '', 'Tattoo course', '', '2017-01-18 12:17:13'),
(96, 'Honey', 'saikripaplywood34@gmail.com', '9826422007', '', 'Want Tattoo', '', '2017-01-19 05:56:08'),
(97, 'Arun Gujjar', 'arungurjar78615@gmail.com', '8827282036', 'Which price at tattoo cource', 'Want Tattoo,Tattoo course', '', '2017-01-24 14:36:56'),
(98, 'Naveen mathur', 'Naveen887898@gmail.com', '8770053505', '', 'Want Tattoo', '', '2017-01-26 17:58:33'),
(99, 'LOKESH', 'lokeshmurera@yahoo.in', '9993014902', 'Tattooing is a Hanuman face', 'Want Tattoo', '', '2017-01-27 11:45:04'),
(100, 'Premchand Rawat', 'adamcopland1@gmail.com', '9702506693', 'Your art is really excellent, awesome and amazing. I want to get the tatoo done on my left hand... ARIES ZODIAC SIGN. What will be the charge. Please let me know.', 'Want Tattoo', '', '2017-01-28 01:07:31'),
(101, 'Shimon chouhan', 'Shimonchouhan789@gmail.com', '9009412558', '', 'Tattoo course,Learn Tattoo', '', '2017-01-28 09:12:03'),
(102, 'Raj yadav', 'Yraj8189@gmail.com', '8962489149', 'I love tattooing', 'Want Tattoo,Tattoo course', '', '2017-02-01 10:08:19'),
(103, 'Anshul Bohare', 'Anshulbohare@hotmail.com', '9893211192', '', 'Want Tattoo', '', '2017-02-03 15:24:33'),
(104, 'Amit vyas', 'Vamitvyasltfinance@gmail.com', '9893578346', 'Mujhe sikhna he\nOr certificate bhi chahie kya charges he???', 'Tattoo course', '', '2017-02-15 16:33:02'),
(105, 'Kush', 'kushnaman.shukla123@gmail.com', '9599551922', '', 'Want Tattoo', '', '2017-02-15 21:22:43'),
(106, 'Siddharth', 'YadavSiddharth@gmail.com', '9893055510', '', 'Want Tattoo', '', '2017-02-18 09:36:35'),
(107, 'Abhijeet', 'Abhijeet.raut9602@gmail.com', '9752414764', '', 'Want Tattoo', '', '2017-02-22 06:30:21'),
(108, 'dev', 'd.v4567@gmail.com', '9977222219', 'tatto', 'Want Tattoo', '', '2017-02-23 11:46:25'),
(109, 'Sanket Chaudhary', 'sanket.chaudh88@gmail.com', '7875839135', '', 'Want Tattoo', '', '2017-03-01 09:33:24'),
(110, 'shweta jain', 'patni.shweta@gmail.com', '+601126624818', 'wish to put tattoo for aound 50 people coming to my house for party', 'Want Tattoo', '', '2017-03-03 06:24:40'),
(111, 'amit', 'amitsarang02@gmail.com', '8269825815', '', 'Tattoo course,Learn Tattoo', '', '2017-03-09 08:15:10'),
(112, 'kunal shah', 'kkunalshah50@gmail.com', '9009862611', 'I really love the work do. I also got a tattoo from you but now i want to be a tattoo artist. So i need a correct guidence.', '', '', '2017-03-22 12:35:19'),
(113, 'shubham', 'shubhamdaya9@gmail.com', '9111895080', '', 'Tattoo course', '', '2017-03-24 06:23:02'),
(114, 'arpit jain', 'kabeer68@gmail.com', '7566352946', '', 'Want Tattoo', '', '2017-03-26 22:28:28'),
(115, 'swapnil izardar', 'swapnilizardar0@gmail.com', '9630146510', 'Neeta tatto on hand', 'Want Tattoo', '', '2017-03-29 17:02:19');

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
(12, 'helper', 'kroy', '123456', 'kroy@gmail.com', 1, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `enail` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
