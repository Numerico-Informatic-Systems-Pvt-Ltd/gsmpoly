-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 01, 2015 at 03:36 AM
-- Server version: 5.5.42-37.1-log
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gsmpoly1_gsmptic`
--
CREATE DATABASE `gsmpoly1_gsmptic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gsmpoly1_gsmptic`;

-- --------------------------------------------------------

--
-- Table structure for table `academicqualifications`
--

DROP TABLE IF EXISTS `academicqualifications`;
CREATE TABLE IF NOT EXISTS `academicqualifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement_id` int(11) NOT NULL,
  `exam_passed` varchar(100) NOT NULL,
  `year_of_passing` int(10) NOT NULL,
  `board` varchar(100) NOT NULL,
  `average_marks` float NOT NULL,
  `subject_taken` varchar(255) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=554 ;

--
-- Dumping data for table `academicqualifications`
--

INSERT INTO `academicqualifications` (`id`, `placement_id`, `exam_passed`, `year_of_passing`, `board`, `average_marks`, `subject_taken`, `remarks`) VALUES
(540, 1, 'M.P', 2008, 'W.B.B.S.E', 60, 'Eng,Beng,Science,Math,Hist,Geo', '1St Div'),
(542, 2, 'M.P', 2009, 'W.B.B.S.E', 69, 'Eng,Beng,Science,Math,Hist,Geo', '1st Div'),
(543, 3, 'DIPLOMA IN ELECTRICAL', 2013, 'WEST BENGAL STATE COUNCIL OF TECHNICAL EDUCATION', 81.5, 'MACHINE, MEASUREMENT, POWER SYSTEM', '10'),
(544, 3, 'DIPLOMA IN ELECTRICAL', 2013, 'WEST BENGAL STATE COUNCIL OF TECHNICAL EDUCATION', 81.5, 'MACHINE, MEASUREMENT, POWER SYSTEM', '0'),
(545, 5, 'H.S', 2011, 'W.B.C.H.S.E', 51.2, 'Electrical Engineer', '82.2%'),
(546, 7, 'MP', 2009, 'WBBSE', 51, 'BENG ENG HIST GEO L SC PHY SC MATH', 'NO'),
(547, 8, '10', 2013, 'WBBSE', 80, 'SCIENCE', '562'),
(548, 9, '2013', 2015, 'wbcshe', 61.86, 'electrical', '43705'),
(549, 10, 'Yes', 10, 'Mejia', 61.71, 'Mathematrics', '432'),
(550, 11, 'h.s', 2014, 'wbchse', 64, 'physics', 'yes'),
(551, 13, '10th Board ', 2015, 'CBSE', 7, 'ENG,MATH,SCI,HINDI,S.S.T', 'QUALIFY'),
(552, 17, '2012', 2012, 'j.a.c', 340, 'math,science,english,socail science,hindi,sanskrit', '340'),
(553, 18, 'Matric', 2015, 'JAC RANCHI', 50, 'Physics', 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

DROP TABLE IF EXISTS `advertisements`;
CREATE TABLE IF NOT EXISTS `advertisements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `advertiser_id` int(11) NOT NULL,
  `title` char(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` char(100) DEFAULT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `user_id`, `advertiser_id`, `title`, `description`, `image`, `from_date`, `to_date`) VALUES
(1, 1, 1, 'test', 'test', '', '2014-06-17', '2014-06-17'),
(2, 1, 1, 'sas', 'Belo Horizonte (Brazil), June 16 (IANS/EFE) Belgium will look to solidify their dark horse tag when they meet Algeria in the opening game in Group H Tuesday here at the Estadio Mineirao. Algeria are the only Arab team in the World Cup for the second conse', '', '2014-06-17', '2014-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `advertisers`
--

DROP TABLE IF EXISTS `advertisers`;
CREATE TABLE IF NOT EXISTS `advertisers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `logo` char(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `advertisers`
--

INSERT INTO `advertisers` (`id`, `name`, `logo`, `description`) VALUES
(1, 'Test1', 'test1-1402750080.jpg', 'This is advertiser');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `event` varchar(255) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `schedule` varchar(255) DEFAULT NULL COMMENT 'Date & time',
  `slug` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `user_id`, `name`, `event`, `venue`, `schedule`, `slug`, `image`, `created`, `modified`, `active`) VALUES
(20, NULL, 'Sports', 'Sports of Gobindapur Sephali Memorial Polytechnic', 'Gobindapur', '15-12-2014', 'gsmpoly', 'sports-1423066149.jpg', '2014-11-21 00:10:05', '2015-05-21 02:50:16', 1),
(21, NULL, 'Cultural Fest', 'Fest', 'Gobindapur', '15-12-2014', 'cultural-fest', 'cultural-fest-1423066407.jpg', '2014-11-22 05:49:47', '2015-02-04 11:34:37', 1),
(22, NULL, 'Vishwakarma Puja', 'Vishwakarma Puja at College', 'Gobindapur', '15-12-2014', 'vishwakarma-puja', 'vishwakarma-puja-1423066434.jpg', '2015-02-04 10:58:35', '2015-02-04 11:34:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE IF NOT EXISTS `blog_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `blog_id` int(11) NOT NULL,
  `name` char(100) DEFAULT NULL,
  `email` char(100) NOT NULL,
  `url` char(100) DEFAULT NULL,
  `comment` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `user_id`, `blog_id`, `name`, `email`, `url`, `comment`, `active`, `created`, `modified`) VALUES
(7, 1, 5, 'John', 'john123@mail.com', 'nisbusiness.com/client', 'blog ', 0, '2013-05-16 04:58:20', '2013-05-16 04:58:20'),
(8, 4, 5, 'John123', 'mm@mail.com', 'gmail.com', 'blog post for testing', 0, '2013-05-16 05:15:40', '2013-05-16 05:15:40'),
(9, 4, 5, 'aradita', 'ara@gmail.com', 'mydomain.com', 'blog posting', 0, '2013-05-16 05:22:10', '2013-05-16 05:22:10'),
(10, NULL, 5, 'John123', 'john123@mail.com', 'gmail.com', 'nice blog', 0, '2013-05-16 08:40:30', '2013-05-16 08:40:30'),
(12, NULL, 5, 'John123', 'john123@mail.com', 'gmail.com', 'nice blog', 0, '2013-05-16 08:45:06', '2013-05-16 08:45:06'),
(13, NULL, 5, 'rex', 'rr@123.com', 'yahoo.com', 'posting of blog', 0, '2013-05-16 08:48:31', '2013-05-16 08:48:31'),
(14, NULL, 5, 'ria', 'rr@121.com', 'gmail.com/ria', 'my 2nd blog', 0, '2013-05-16 08:49:37', '2013-05-16 08:49:37'),
(15, NULL, 5, 'tina', 'tina@gmail.com', 'nisbusiness.com/webclient', 'my first blog', 0, '2013-05-18 08:47:12', '2013-05-18 08:47:12'),
(16, NULL, 5, 'amit', 'amit@mail.com', 'gmail.com', 'blog by amit', 0, '2013-05-18 09:03:01', '2013-05-18 09:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `blogcomments`
--

DROP TABLE IF EXISTS `blogcomments`;
CREATE TABLE IF NOT EXISTS `blogcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `blog_id` int(11) NOT NULL,
  `name` char(100) DEFAULT NULL,
  `email` char(100) NOT NULL,
  `url` char(100) DEFAULT NULL,
  `comment` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `blogcomments`
--

INSERT INTO `blogcomments` (`id`, `user_id`, `blog_id`, `name`, `email`, `url`, `comment`, `active`, `created`, `modified`) VALUES
(2, 0, 3, 'santanu ghosh', 'ghoshsantanu230@gmail.com', '', 'thank you.', 0, '2014-08-29 01:02:24', '2014-08-29 01:02:24'),
(3, 1, 1, 'sadsa', 'sadsad@dggg.gggg', 'sadsad', '<p>sadsadsad</p>', 1, '2014-11-20 02:01:12', '2014-11-20 02:01:12'),
(4, 1, 2, 'Shibu', 'sadsad@dggg.gggg', 'gfdgdfg', '<p>saddsad</p>', 1, '2014-11-20 07:02:52', '2014-11-20 07:03:16'),
(5, NULL, 2, 'Test', 'shibu20sxc@gmail.com', 'http://www.nis.com', 'This is test Comment', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, NULL, 4, 'Shibu', 'shibu20sxc@gmail.com', 'http://www.nis.com', 'This is Test Comment', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, NULL, 4, 'Biplob Naskar', 'biplabapril@gmail.com', 'http://www.nis.com', 'This is Test Comment from Biplob........................', 1, '2014-11-22 01:04:49', '2014-11-22 01:04:49'),
(8, 1, 4, 'NIS Client', 'admin@nisclient.com', 'http://www.nis.com', '<p>This is comment from Nis.....................</p>', 1, '2014-11-22 01:29:15', '2014-11-22 01:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` char(50) NOT NULL,
  `body` text NOT NULL,
  `image` char(100) NOT NULL,
  `hits` int(11) DEFAULT '0',
  `tags` varchar(255) DEFAULT NULL,
  `blog_comment_count` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `posted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `slug`, `body`, `image`, `hits`, `tags`, `blog_comment_count`, `active`, `created`, `modified`, `posted`) VALUES
(1, 1, 'online examination', 'RRB & RBI', '<p>6th,7th &amp; 13th for RRB Officer 23rd,24th,25th,26th &amp; 28th for RBI organized by TCS</p>', 'rrb-rbi-1416641524.jpg', 17, 'ffffff', 2, 1, '2014-08-28 23:58:15', '2014-11-22 02:32:04', '2014-08-28 23:54:00'),
(2, 1, '1st Internal Assessment, 2014', 'ALL YEAR & ALL DEPT', '<p>It is hereby informed (1st , 2nd &amp; 3rd Year Students) that their 1st Internal Assessment will be commenced from 23rd to 27th Sept. 2014. Routine will be published on 13th Sept.-2014</p>', 'all-year-all-dept-1416641548.jpg', 4, 'ggg', 12, 1, '2014-08-29 00:12:11', '2014-11-22 02:32:28', '2014-08-29 00:05:00'),
(3, 1, 'Foot Ball Tournament', 'with the Faculty and Students', '<p>It is hereby informed to the Students &amp; Faculty Members that our College is going to Arrange a Foot Ball Tournament for the Faculty Members and the Students on 5th Sept.2014 after Lunch. So, all are informed to enrolled their names to Sudipta Sarkar ( H.O.D of Mechanical Dept.) within 4th Sept.-2014.</p>', 'with-the-faculty-and-students-1416641565.png', 2, 'www.facebook.com/gobindapursephalimemorialpolytechnnic?ref=hl', 4, 1, '2014-08-29 00:21:22', '2014-11-22 02:32:45', '2014-08-29 00:13:00'),
(4, 1, 'Test Blog', 'testblog', '<p>Images too can generate tons of traffic from image-based search engines, for example, Google Images. If you really want to attract more of this traffic then the foremost thing that you have to do is to learn about certain techniques with the help of which you can optimize your images in order to gain good SEO rank. So...</p>', 'testblog-1416641578.png', 12, 'ffffff', 20, 1, '2014-11-21 01:42:23', '2014-11-22 02:32:59', '2014-11-21 01:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_backup_old`
--

DROP TABLE IF EXISTS `blogs_backup_old`;
CREATE TABLE IF NOT EXISTS `blogs_backup_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` char(50) NOT NULL,
  `body` text NOT NULL,
  `hits` int(11) DEFAULT '0',
  `tags` varchar(255) DEFAULT NULL,
  `blog_comment_count` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `posted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `blogs_backup_old`
--

INSERT INTO `blogs_backup_old` (`id`, `user_id`, `title`, `slug`, `body`, `hits`, `tags`, `blog_comment_count`, `active`, `created`, `modified`, `posted`) VALUES
(5, 1, 'blog1', 'blog1', '<p>blog for testing</p>', 0, '', 0, 1, '2013-05-16 04:07:02', '2013-05-16 04:07:02', '2013-05-16 04:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_categories`
--

DROP TABLE IF EXISTS `blogs_categories`;
CREATE TABLE IF NOT EXISTS `blogs_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blogscategories`
--

DROP TABLE IF EXISTS `blogscategories`;
CREATE TABLE IF NOT EXISTS `blogscategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `sub_menu_title` char(50) DEFAULT NULL,
  `layout_id` int(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `user_id`, `menu_id`, `sub_menu_title`, `layout_id`, `title`, `summary`, `body`, `slug`, `draft`, `visible`, `created`, `modified`) VALUES
(62, 1, 1, 'PRESIDENT MESSAGE', 1, 'PRESIDENT MESSAGE', 'PRESIDENT MESSAGE', '<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><img src="../../app/webroot/images/test/fff.jpg" alt="" width="159" height="191" /></span></p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">It is the matter of great pleasure that Gobindapur Sephali Samaj Seba Samity, a duly registered society with the Registrar of Societies, Govt. of West Bengal successfully introduced &ldquo;Gobindapur Sephali Memorial Polytechnic&rdquo; Last year intending to promote and expand technical and professional education among the communities. Though I am from medical background and being a medical professional, I felt that the development of the society depends on the Industrial, Agricultural and Educational policies of the Nation. In all these three sectors, Govt. has embarked liberalization, privatization and globalization. The massive industrialization is taking place in the country. The State Govt.&rsquo;s policy of liberalization is attracting entrepreneurs in setting up industries in public-private sectors and private sectors. Due to technical up-gradation, the demand for technically qualified people is increasing day by day. In this point of view our main objective is to promote specialized technical education in the field of Engineering. I believe that a technical qualification may change one&rsquo;s lifestyle and bring a progress for next generation also. Our target is to produce qualified and competent professionals, responsive to the changing need of the society. I sincerely expect co-operation from students, guardians, staff and well wishers to make our mission successful.</span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Dr. Dilip Choudhury</span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">President</span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Gobindapur Sephali Memorial Polytechnic</span></p>', 'president-message', 0, 0, '2014-10-12 18:57:16', '2014-11-12 01:36:18'),
(63, 1, 1, 'PRINCIPAL MESSAGE', 1, 'PRINCIPAL MESSAGE', 'PRINCIPAL MESSAGE', '<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><img src="../../app/webroot/images/ppp.jpg" alt="" width="280" height="191" /></span></p>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Taking the charge of Principal, I put my best effort to orient myself in line with the Vision and Mission of &lsquo;Gobindapur Sephali Samaj Seba Samity &rsquo; and its Endeavour &lsquo;Gobindapur Sephali Memorial Polytechnic &rsquo;. I am very much proud to be associated with this concern as there is a positive environment for technical education along with moral and administrative support.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">GSMP has been duly approved by All India Council of Technical Education and affiliated to West Bengal State Council of Technical Education. It has been introduced as a technical Institution of repute in West Bengal within a very short time. WBSCTE has enlisted it as a centre for conducting Jexpo Examination. The students of the 1st Batch (2010-2011) secured more than 80% marks (avg.) in the 1st Semester Examination which brings happiness to us. There is very good co-operation among the faculty members, technical supporting and administrative staff that helps me to do the best for my beloved Institute. Hope, we will be able to provide all types of students&ndash;friendly arrangements within the campus.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">I welcome the aspirants, guardians who are interested in technical education and expect heartiest co-operation from all concerned.</span></p>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">I wish the Endeavour every success in the broader sense of technical education. </span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">SRI S. N. Bag</span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Principal</span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Gobindapur Sephali Memorial Polytechnic</span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">&nbsp;</span></p>\r\n<p style="text-align: justify;">&nbsp;</p>', 'principal-message', 0, 0, '2014-10-13 02:04:40', '2014-11-12 01:36:28'),
(64, 1, 2, 'CIVIL ENGINEERING', 1, 'CIVIL ENGINEERING', 'CIVIL ENGINEERING', '<p style="text-align: justify;"><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Civil and environmental engineers are the engineers who help society to function. In this broad historical context, civil engineers plan, design, construct, maintain, and improve structures, facilities, and other infrastructure, including transportation and energy systems, with the goal of wise and efficient use of resources. In similar historical context, environmental engineers work on methods to protect human health and the environment, including the provision of safe and adequate water supplies, understanding contaminant behavior in engineered and natural systems and minimizing humankind&rsquo;s impact on the planet&rsquo;s systems and cycles on which all life depends. Today, at the beginning of the 21st Century, it is evident that the practice of civil and environmental engineering has changed in many ways during the past several decades. Nonetheless, our social contract has not changed. We still create, manage, maintain, and renew Society&rsquo;s infrastructure in ways that provide an appropriate quality of life for all, but that also protect, nurture or renew our fragile environment and natural resources. However, a significant change in the past several decades is that our social contract now must address a common goal of engineering for a sustainable future. The biggest opportunity we face in addressing this challenge is to more fully merge the disciplines of Civil Engineering and Environmental Engineering with the objective of making all of us &lsquo;Sustainable Civil Engineers.&rsquo;</span></p>\r\n<p><br /><br /></p>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';"><strong>Area of Focus:-</strong></span></p>\r\n<ul>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Waste Water Engineering.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Hydraulics and Its Structure.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Planning &amp; Design.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Auto Cad.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Surveying.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Concrete Technology.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Embedded System.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Construction Estimation.</span></p>\r\n</li>\r\n</ul>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';"><strong><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';"><strong>List Of</strong></span> <span style="font-family: arial black,avant garde; font-size: 12pt;">Faculties</span>: -</strong></span></p>\r\n<table style="height: 299px;" width="904" cellspacing="0" cellpadding="7"><colgroup><col width="293" /> <col width="127" /> <col width="134" /> <col width="134" /> </colgroup>\r\n<tbody>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="293">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm; text-align: left;"><strong><span style="font-family: arial black,avant garde; font-size: 12pt;">Name Of Faculties</span></strong></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm; text-align: left;" width="134">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm; margin-bottom: 0cm; line-height: 100%;" align="center"><strong>&nbsp; <span style="font-family: Times New Roman,serif;"><span style="font-size: large;">Qualification</span></span></strong></p>\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><strong>&nbsp;</strong></p>\r\n</td>\r\n</tr>\r\n<tr style="text-align: left;" valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="293">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Dipankar Karmakar <strong>(H.O.D)</strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="134">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">B.Tech</span></p>\r\n</td>\r\n</tr>\r\n<tr style="text-align: left;" valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="293">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Syed Raish Ahamed <strong>(B.Co-ordinator)</strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="134">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">B.Tech</span></p>\r\n</td>\r\n</tr>\r\n<tr style="text-align: left;" valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="293">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Sk Md Samim Ahamed</span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="134">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">B.Tech</span></p>\r\n</td>\r\n</tr>\r\n<tr style="text-align: left;" valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="293">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Pappu Sen</span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="134">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">B.Tech</span></p>\r\n</td>\r\n</tr>\r\n<tr style="text-align: left;" valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="293">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><strong><span style="font-size: 12pt;">Soumendra nath Mitra</span></strong></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="134">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">B.Tech</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top-width: 1px; border-style: solid none solid solid; border-top-color: #000000; border-bottom-width: 1px; border-bottom-color: #000000; border-left-width: 1px; border-left-color: #000000; padding: 0cm 0cm 0cm 0.19cm; text-align: left;" width="293">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><strong><span style="font-size: 12pt;">Suman Das</span></strong></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="134">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm; text-align: left;"><span style="font-family: arial black,avant garde; font-size: 12pt;">B.Tech</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'civil-engineering', 1, 1, '2014-10-13 05:00:34', '2015-02-06 01:21:01'),
(65, 1, 2, 'MECHANICAL ENGINEERING', 1, 'MECHANICAL ENGINEERING', 'MECHANICAL ENGINEERING', '<p style="text-align: justify;"><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Mechanical engineering plays a dominant role in enhancing safety, economic vitality, enjoyment and overall quality of life throughout the world. Mechanical engineers are concerned with the principles of force, energy and motion. The men and women who work as mechanical engineers are professionals with expert knowledge of the design and manufacture of mechanical systems and thermal devices and processes. Some examples of products and processes developed by mechanical engineers include engines and control systems for automobiles and aircraft, electric power generation plants, lifesaving medical devices and consumer products ranging from air conditioners to personal computers and athletic equipment. They also design the machines that mass-produce these products. Virtually every aspect of life is touched by mechanical engineering. If something moves or uses energy, a mechanical engineer was probably involved in its design or production.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';"><strong>Area of Focus:-</strong></span></p>\r\n<ul>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Mechanics.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Mechanics of Solids.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Fluids Mechanics.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Machine Dynamics.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Machine Designing.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">CAD/CAM.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Heat Transfer.</span></p>\r\n</li>\r\n<li>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Material Science.</span></p>\r\n</li>\r\n</ul>\r\n<p>&nbsp; <span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';"><strong>List Of Faculties:-</strong></span></p>\r\n<p>&nbsp;</p>\r\n<table style="height: 468px;" width="903" cellspacing="0" cellpadding="7"><colgroup><col width="97" /> <col width="248" /> <col width="106" /> <col width="112" /> <col width="112" /> </colgroup>\r\n<tbody>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;"><strong>Department</strong></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;" align="center"><span style="font-family: arial black,avant garde; font-size: 12pt;"><strong>Name Of Faculties</strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;" align="center"><span style="font-family: arial black,avant garde; font-size: 12pt;"><strong>Qualification</strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Mechanical</span></strong></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Sudipta Sarkar </span><span style="font-family: Times New Roman,serif;">(H.O.D)</span></strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">M.Tech,B.Tech</span></strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Mechanical</span></strong></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Uma Sankar Pande&nbsp;</span></strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">B.Tech</span></strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Mechanical</span></strong></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Dipanjan Bose<span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">(B.Co-ordinator)</span></strong></span></span></strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Diploma, B.Tech</span></strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Mechanical</span></strong></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Partha Pratim Ghosh</span></strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Diploma,B.Tech,M.Tech</span></strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Mechanical</span></strong></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Rahul Bhandari</span></strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">B.Tech,M.Tech.</span></strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Mechanical</span></strong></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong>Amalendu Mandal</strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Diploma</span></strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Work Shop</span></strong></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Ratul Krishna Bhattacharya</span></strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">I.T.I</span></strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Work Shop</span></strong></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Hiranmay Biswas</span></strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">I.T.C</span></strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Work Shop</span></strong></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Soumen Das</span></strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-size: 12pt;"><strong><span style="font-family: Times New Roman,serif;">Diploma</span></strong></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'mechanical-engineering', 1, 1, '2014-10-13 05:05:13', '2015-06-04 02:33:02'),
(66, 1, 2, 'ELECTRICAL ENGINEERING', 1, 'ELECTRICAL ENGINEERING', 'ELECTRICAL ENGINEERING', '<p align="justify">&nbsp;<span style="font-family: arial black,avant garde; font-size: 12pt;">The subjects is introduced in Higher Secondary level. In this subject students are taught how to maintain and repair electrical appliances and electrical machine how to connect electrical circuits and repairing minor or major faults in the circuits and motor rewinding both theoretically and practically. So by learning this subjects students are able to earn of their own by practicing such learning. </span></p>\r\n<p align="justify"><span style="font-family: arial black,avant garde; font-size: 12pt;">We know ,the universe consists of five big natural energy sources like water,land ,air,fire &amp; space. The sixth important energy developed by human is called &ldquo;Electricity&rdquo;. In this modern world , for our day to day life the electricity plays a vital role. Simply to say, even man lives without food but not lives without electricity . Because in our life , the electrical goods play an important role.Hence the students must know about this source and how it is applied. </span></p>\r\n<p align="justify"><span style="font-family: arial black,avant garde; font-size: 12pt;">Electricity is one type of energy . All matter whether solid , liquid or, gaseous consists of minute particles known as Atoms. According to modern research electric current means flow of electron. So we need to know about the Atom. </span></p>\r\n<p align="justify"><span style="font-family: arial black,avant garde; font-size: 12pt;">Electrical Engineering deals with problems associated with large scale electrical system like transmission and motor control. </span></p>\r\n<p style="margin-bottom: 0.35cm; line-height: 115%;"><span style="font-family: arial black,avant garde; font-size: 12pt;"><strong>Area of Focus</strong>:-</span></p>\r\n<p align="justify"><span style="font-family: arial black,avant garde; font-size: 12pt;">&nbsp;</span></p>\r\n<ul>\r\n<li>\r\n<p style="margin-bottom: 0.35cm; line-height: 150%;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Power System.</span></p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0.35cm; line-height: 150%;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Electrical Measurement &amp; Measuring Instruments.</span></p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0.35cm; line-height: 150%;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Microprocessors.</span></p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0.35cm; line-height: 150%;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Switch Gear and its Protection</span></p>\r\n</li>\r\n<li>\r\n<p style="margin-bottom: 0.35cm; line-height: 150%;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Transmission &amp; Distribution System.</span></p>\r\n</li>\r\n</ul>\r\n<p align="justify">&nbsp;</p>\r\n<p style="margin-bottom: 0.35cm; line-height: 150%;"><span style="font-family: arial black,avant garde; font-size: 14pt;"><strong>List Of Faculties :</strong></span></p>\r\n<table style="height: 346px;" width="783" cellspacing="0" cellpadding="7"><colgroup><col width="97" /> <col width="248" /> <col width="106" /> <col width="112" /> <col width="112" /> </colgroup>\r\n<tbody>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><strong><span style="font-family: arial black,avant garde; font-size: 12pt;">Department</span></strong></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><strong><span style="font-family: arial black,avant garde; font-size: 12pt;">&nbsp;&nbsp; Name Of Faculties</span></strong></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><strong><span style="font-family: arial black,avant garde; font-size: 12pt;">Qualification</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Electrical</span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Somnath Das <strong>(H.O.D)</strong></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">B.Tech</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Electrical</span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Anushree Banerjee</span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">B.Tech</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Electrical</span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Sk Nasim</span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">B.Tech</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Electrical</span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Arindam Sinha</span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">B.Tech</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Electrical </span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Bhaskar Roy</span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">B.Tech</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Electrical</span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Sayantan Chatterjee</span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">B.Tech</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Electrical</span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Tarun Kumar Pal</span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: arial black,avant garde; font-size: 12pt;">Diploma</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p align="justify"><span style="font-family: ''Times New Roman'', serif;">&nbsp;</span></p>', 'electrical-engineering', 0, 1, '2014-10-13 05:25:51', '2014-11-12 06:35:45'),
(67, 1, 2, 'ELECTRONICS AND TELECOMMUNICATION ENGINEERING', 1, 'ELECTRONICS AND TELECOMMUNICATION ENGINEERING', 'ELECTRONICS AND TELECOMMUNICATION ENGINEERING', '<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Today&rsquo;s IT revolution is the development of Electronics Engineering. Development of complex Electronic devices, circuits and equipments for implementing fast and efficient telecommunication system are based on the advancement of micro-electronics, satellite and optical fiber-technology, analogue and digital communication techniques. The basic principles and performances of electronic devices and circuits are introduced in the course. Design and analysis of different analogue and digital circuits are considered in detail.</span></p>\r\n<p style="text-align: justify;"><br /><br /></p>\r\n<p style="text-align: justify;"><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';"><strong>Area of Focus:-</strong></span></p>\r\n<ul>\r\n<li style="text-align: justify;">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Basic Electronics.</span></p>\r\n</li>\r\n<li style="text-align: justify;">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Analog Electronics.</span></p>\r\n</li>\r\n<li style="text-align: justify;">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Digital Electronics.</span></p>\r\n</li>\r\n<li style="text-align: justify;">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Consumer Electronics.</span></p>\r\n</li>\r\n<li style="text-align: justify;">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Communication Engineering.</span></p>\r\n</li>\r\n<li style="text-align: justify;">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Industrial Electronics.</span></p>\r\n</li>\r\n<li>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Microprocessor.</span></p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong><span style="font-family: ''arial black'',''avant garde''; font-size: 12pt;">List Of Faculties :</span></strong></p>\r\n<p>&nbsp;</p>\r\n<table style="height: 216px;" width="900" cellspacing="0" cellpadding="7"><colgroup><col width="97" /> <col width="248" /> <col width="106" /> <col width="112" /> <col width="112" /> </colgroup>\r\n<tbody>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;" align="center"><strong><span style="font-family: arial black,avant garde; font-size: 12pt;">Department</span></strong></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;" align="center"><strong><span style="font-family: arial black,avant garde; font-size: 12pt;">Name Of Faculties</span></strong></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;" align="center"><strong><span style="font-family: arial black,avant garde; font-size: 12pt;">Qualification</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Electronics</span></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Sudipta Dey </span></span><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;"><strong>(T.P.O + H.O.D)</strong></span></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">B.Tech, M.Tech</span></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Electronics</span></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Ramaprosad Chatterjee</span></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">B.Tech, M.Tech</span></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Electronics</span></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Sujyoti Chattaraj</span></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">B.Tech</span></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Electronics</span></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Priyam Chatterjee</span></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">B.Tech</span></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'Electronics-engineering', 1, 1, '2014-10-13 05:27:40', '2015-02-04 08:06:37');
INSERT INTO `contents` (`id`, `user_id`, `menu_id`, `sub_menu_title`, `layout_id`, `title`, `summary`, `body`, `slug`, `draft`, `visible`, `created`, `modified`) VALUES
(68, 1, 2, 'COMPUTER SCIENCE AND TECHNOLOGY', 1, 'COMPUTER SCIENCE AND TECHNOLOGY', 'COMPUTER SCIENCE AND TECHNOLOGY', '<p style="text-align: justify;"><span style="color: #231f20; font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Computer Technology is the study of the hardware and software that are the foundations of modern computer systems. Computers are now a fundamental part of everyday lives, controlling everything from toasters to nuclear power stations. The need to build and deploy effective computing infrastructure is now crucial to business and other organizations. Operating systems are computer programs that control computers &ndash; allowing us to store information and run application software. They must support new hardware with multiple processors, ever faster and larger memories and a myriad of accessories and add-ons. You&rsquo;ll go beyond Microsoft Windows to learn about alternative operating systems, how operating systems work, and how to set up secure systems. Modern computer systems depend on the networks that interconnect them. Once built on telephone lines, these networks now run on optical fibers and carry millions of voice and video conversations. The demand for people who have the skills to build new and better networks is ever expanding; today&rsquo;s applications require more speed, mobility, reliability and capacity than yesterday&rsquo;s, and tomorrow&rsquo;s networks will even more. You&rsquo;ll gain those skills &ndash; learning from networks lecturers who have signify cant industry experience themselves, and who can show you cutting-edge research and development in this field.</span></p>\r\n<p style="text-align: justify;"><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';"><strong>Area of Focus:-</strong></span></p>\r\n<ul>\r\n<li style="text-align: justify;">\r\n<p><span style="color: #231f20; font-size: 12pt; font-family: ''arial black'', ''avant garde'';">C Programming.</span></p>\r\n</li>\r\n<li style="text-align: justify;">\r\n<p><span style="color: #231f20; font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Data base Management System (DBMS).</span></p>\r\n</li>\r\n<li style="text-align: justify;">\r\n<p><span style="color: #231f20; font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Operating System.</span></p>\r\n</li>\r\n<li>\r\n<p style="text-align: justify;"><span style="color: #231f20; font-size: 12pt; font-family: ''arial black'', ''avant garde'';">Computer Graphics.</span></p>\r\n</li>\r\n</ul>\r\n<p><strong><span style="color: #231f20; font-size: 12pt; font-family: ''arial black'',''avant garde'';">List Of Faculties :</span></strong></p>\r\n<p>&nbsp;</p>\r\n<table style="height: 259px;" width="902" cellspacing="0" cellpadding="7"><colgroup><col width="97" /> <col width="248" /> <col width="106" /> <col width="112" /> <col width="112" /> </colgroup>\r\n<tbody>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;" align="center"><strong><span style="font-family: arial black,avant garde; font-size: 12pt;">Department</span></strong></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;" align="center"><strong><span style="font-family: arial black,avant garde; font-size: 12pt;">Name Of Faculties</span></strong></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><strong><span style="font-family: arial black,avant garde; font-size: 12pt;">Qualification</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">C.S.T</span></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Dipankar Deb </span></span><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;"><strong>(H.O.D)</strong></span></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">B.Tech</span></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">C.S.T</span></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Adwitiya Chatterjee </span></span><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;"><strong>(B.Co-ordinator)</strong></span></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Diploma, B.Tech</span></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">C.S.T</span></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Snehasis Nanda</span></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">B.Tech</span></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">C.S.T</span></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Sk Nazim Heakmat</span></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">B.Tech</span></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="97">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">C.S.T</span></span></p>\r\n</td>\r\n<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: none; padding: 0cm 0cm 0cm 0.19cm;" width="248">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">Sankar Prasad Sau</span></span></p>\r\n</td>\r\n<td style="border: 1px solid #000000; padding: 0cm 0.19cm;" width="112">\r\n<p class="western" lang="en-US" style="margin-right: -0.19cm;"><span style="font-family: Times New Roman,serif;"><span style="font-size: medium;">B.Tech, M.Tech</span></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'computer-science', 0, 1, '2014-10-13 05:33:49', '2014-11-12 06:41:21'),
(69, 1, 4, 'FEES STRUCTURE', 1, 'FEES STRUCTURE', 'FEES STRUCTURE', '<table width="100%">\r\n<tbody>\r\n<tr>\r\n<td><span style="font-size: 12pt;"><strong><span style="font-family: arial black,avant garde;">Admission Fees (At the time of Admission).Common For JEXPO &amp; Management Quota</span></strong></span></td>\r\n</tr>\r\n<tr>\r\n<td>Form &amp; Prospectus</td>\r\n<td>Rs. 2000.00</td>\r\n</tr>\r\n<tr>\r\n<td>Admission Fees</td>\r\n<td>Rs. 6000.00</td>\r\n</tr>\r\n<tr>\r\n<td>Caution Deposit (Refundable after course completion)</td>\r\n<td>Rs. 500.00</td>\r\n</tr>\r\n<tr>\r\n<td>Students Welfare Fund</td>\r\n<td>Rs. 3000.00</td>\r\n</tr>\r\n<tr>\r\n<td>Emergency service charges</td>\r\n<td>Rs. 2500.00</td>\r\n</tr>\r\n<tr>\r\n<td>Co-Curricular/Games Activities</td>\r\n<td>Rs. 3000.00</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;<strong>TOTAL</strong></td>\r\n<td><strong>Rs. 17000.00</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style="height: 36px;" width="753">\r\n<tbody>\r\n<tr>\r\n<td><strong><span style="font-family: arial black,avant garde; font-size: 10pt;"><span style="font-size: 12pt;">Semester Fees for JEXPO Quota Students only&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> <br /></span></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Tuition Fees (@Rs. 1500/-per Month)</td>\r\n<td>Rs. 9000.00</td>\r\n</tr>\r\n<tr>\r\n<td>Development Fees(@Rs. 500/-per Month)</td>\r\n<td>Rs. 3000.00</td>\r\n</tr>\r\n<tr>\r\n<td>PDS</td>\r\n<td>Rs. 3000.00</td>\r\n</tr>\r\n<tr>\r\n<td>Misc.</td>\r\n<td>Rs. 3000.00</td>\r\n</tr>\r\n<tr>\r\n<td><strong>TOTAL</strong></td>\r\n<td><strong>Rs. 18000.00</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width="100%">\r\n<tbody>\r\n<tr>\r\n<td><strong><span style="font-family: arial black,avant garde; font-size: 12pt;">Semester Fees for Management onlyQuota Students only &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /></span></strong></td>\r\n</tr>\r\n<tr>\r\n<td>Tuition Fees (@Rs. 2500/-per Month)</td>\r\n<td>Rs. 15000.00</td>\r\n</tr>\r\n<tr>\r\n<td>Development Fees(@Rs. 500/-per Month)</td>\r\n<td>Rs. 3000.00</td>\r\n</tr>\r\n<tr>\r\n<td>PDS</td>\r\n<td>Rs. 3000.00</td>\r\n</tr>\r\n<tr>\r\n<td>Misc.</td>\r\n<td>Rs. 3000.00</td>\r\n</tr>\r\n<tr>\r\n<td><strong>TOTAL</strong></td>\r\n<td><strong>Rs. 24000.00</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width="100%">\r\n<tbody>\r\n<tr>\r\n<td><span style="font-family: arial black,avant garde; font-size: 12pt;"><strong>HOSTEL-FEES &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /></strong></span></td>\r\n</tr>\r\n<tr>\r\n<td>Admission Fees</td>\r\n<td>Rs. 2500.00</td>\r\n</tr>\r\n<tr>\r\n<td>Caution Deposit</td>\r\n<td>Rs. 1000.00</td>\r\n</tr>\r\n<tr>\r\n<td>Utensil Cost</td>\r\n<td>Rs. 500.00</td>\r\n</tr>\r\n<tr>\r\n<td>Establishment Charge</td>\r\n<td>Rs. 1000.00</td>\r\n</tr>\r\n<tr>\r\n<td><strong>TOTAL</strong></td>\r\n<td><strong>Rs. 5000.00</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width="100%">\r\n<tbody>\r\n<tr>\r\n<td><span style="font-family: arial black,avant garde; font-size: 12pt;"><strong>MONTHLY CHARGES FOR HOSTEL &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /></strong></span></td>\r\n</tr>\r\n<tr>\r\n<td>Seat Rent</td>\r\n<td>Rs. 800.00</td>\r\n</tr>\r\n<tr>\r\n<td>Generator</td>\r\n<td>Rs. 100.00</td>\r\n</tr>\r\n<tr>\r\n<td>Meal Charges</td>\r\n<td>Rs. 2000.00</td>\r\n</tr>\r\n<tr>\r\n<td>Maintenance</td>\r\n<td>Rs. 100.00</td>\r\n</tr>\r\n<tr>\r\n<td><strong>TOTAL</strong></td>\r\n<td><strong>Rs. 3000.00</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p style="text-align: left;"><span style="font-family: arial black,avant garde; font-size: 10pt;"><strong>Note: Transportation Charges, Registration and Examination Fees&nbsp;</strong><strong>&nbsp;(as per WBSCTE norms), Dress, industrial Tour and Training etc. are <em>Compulsory </em>for all students and shall be paid by the students in time.</strong></span></p>', 'fees-structure', 1, 1, '2014-10-13 06:11:08', '2015-02-05 07:38:09'),
(70, 1, 4, 'IMPORTANT INFORMATION FOR ADMISSION', 1, 'IMPORTANT INFORMATION FOR ADMISSION', 'IMPORTANT INFORMATION FOR ADMISSION', '<div><span style="font-family: arial black,avant garde; font-size: 10pt;"><strong>JEXPO :</strong></span> </div>\r\n<div class="listingblock" align="left">\r\n<div class="clear"><strong>Intake Capacity :</strong>&nbsp;50% of intake capacity of each indivisual discipline .<br /><strong>Eligibility :</strong>&nbsp;Passed in Secondary Level Exam and Qualified in JEXPO Exam organized by WEBSCTE.<br /><strong>Time :</strong>&nbsp;After counseling organized by WBSCTE. </div>\r\n<br />\r\n<div><span style="font-family: arial black,avant garde; font-size: 10pt;"><strong>DIRECT ADMISSION :</strong></span></div>\r\n<br />\r\n<div class="listingblock" align="left">\r\n<div class="leftpad"><strong>Intake Capacity :</strong>&nbsp;50% of intake capacity of each indivisual discipline .<br /><strong>Eligibility :</strong>&nbsp;Passed in Secondary Level Exam and Qualified in JEXPO Exam organized by WEBSCTE.<br /><strong>Age Limit :</strong>&nbsp;No Age Limit.</div>\r\n<br />\r\n<div><span style="font-family: arial black,avant garde; font-size: 10pt;"><strong>LATERAL ENTRY :</strong></span></div>\r\n<br />\r\n<div class="listingblock" align="left">\r\n<div class="leftpad"><strong>Intake Capacity :</strong>&nbsp;20% of intake capacity.<br /><strong>Eligibility :</strong>&nbsp;10+2 vocationalcourse trainees can take admission through&nbsp;<strong>VOCLET</strong>&nbsp;exam. after counseling directly in the 2nd year of Diploma Engineering.<br /><strong>Time :</strong>&nbsp;After counseling organized by WBSCTE.</div>\r\n<div class="clear">&nbsp;</div>\r\n<span style="font-family: arial black,avant garde; font-size: 10pt;"><strong>DOCUMENTS TO BE PRODUCED AT THE TIME OF ADMISSION&nbsp;</strong></span></div>\r\n<div class="listingblock" align="left"><br />\r\n<div class="listingblock" align="left">\r\n<div class="leftpad"><strong>1.</strong>&nbsp;Madhymik or Equivalent Exam. Admit Card (2 Cpoies Attested Xerox)<br /><strong>2.</strong>&nbsp;Madhymik or Equivalent Exam. Marksheet (2 Cpoies Attested Xerox)<br /><strong>3.</strong>&nbsp;Madhymik or Equivalent Exam. Certificate (2 Cpoies Attested Xerox)<br /><strong>4.</strong>&nbsp;Madhymik or Equivalent School Leaving Certificate (2 Cpoies Attested Xerox)<br /><strong>5.</strong>&nbsp;Higher Secondary (10+2) or Equivalent Exam. Marksheet (2 Cpoies Attested Xerox)<br /><strong>6.</strong>&nbsp;JEXPO Rank Card (2 Cpoies Attested Xerox)<br /><strong>7.</strong>&nbsp;JEXPO Admit Card (2 Cpoies Attested Xerox)<br /><strong>8.</strong>&nbsp;WBSCTE Allotment Letter (2 Cpoies Attested Xerox)<br /><strong>9.</strong>&nbsp;Recent Colour Photo\r\n<ul>\r\n<li>Passport Size (5 Copies)</li>\r\n<li>Stamp Size (3 Copies)</li>\r\n<li>ID Size (3 Copies)</li>\r\n</ul>\r\n<strong>10.</strong>&nbsp;Medical Certificate (2 Cpoies Attested Xerox)<br /><strong>11.</strong>&nbsp;Migration Certificate (2 Cpoies Attested Xerox)[Except West Bengal Board]</div>\r\n<span style="font-family: arial black,avant garde; font-size: 10pt;"><strong><span style="text-decoration: underline;">Terms &amp; Conditions</span></strong></span>\r\n<div>\r\n<ul>\r\n<li>Payment of fees must be made within specified period before start of each semester.</li>\r\n<li>Admission fees / Programme fees is neither refundable nor transferable under any circumstances.</li>\r\n<li>Students will have to pay semester fees even in case of discontinuation of the course.</li>\r\n<li>The institute reserves the right to amend these rules and regulations.\r\n<p style="text-align: center;"><span style="text-decoration: underline; font-family: arial black,avant garde; font-size: 10pt;"><strong>Code of Conduct for the Students and rules to be followed</strong></span></p>\r\n<ul>\r\n<li>Students should be aware of their responsibility to this institute, to the teacher, to the staff members and to the fellow students with the view to upheld the academic environment.</li>\r\n<li>Regular attendance is essential with minimum 75% attendance.</li>\r\n<li>Class assignments and Unit tests must be completed.</li>\r\n<li>Students must wear uniform in the campus as per the colour code and dress code of the institute.</li>\r\n<li>Healthy, friendly and brotherly atmosphere to be maintained.</li>\r\n<li>Fair practices need to be observed in the class rooms, laboratories, workshops and examination centres.</li>\r\n<li>Falsification of documents or the supply of false information will attract disciplinary action.</li>\r\n<li>Authority will expel any student or students if found to be responsible for ragging.</li>\r\n<li>Ragging is punishable offenceunder law.</li>\r\n<li>All students will have to follow some procedures i.e submission of affidavit to stop the ragging.</li>\r\n<li>Students found to be involved in any illegal practices will be expelled.</li>\r\n<li>Authority will protect the students from the ragging by:</li>\r\n</ul>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>* Anti-ragging committee.</em><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>*&nbsp;Anti-ragging squad.</em><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<em>&nbsp;*&nbsp;Anti-ragging mentoring cells.</em><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>*&nbsp;Anti-ragging monitoring cell.</em><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<em>*&nbsp;All students must co-operate to stop ragging.</em></p>\r\n<p><strong>This college with good administrative practices is totally free from any incident of ragging.</strong></p>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'infor-for-admission', 1, 1, '2014-11-12 01:10:28', '2015-02-05 08:58:59'),
(71, 1, 6, 'TRAINING AND PLACEMENT STRUCTURE', 1, 'TRAINING AND PLACEMENT STRUCTURE OF GOBONDAPUR SEPHALI MEMORIAL POLYTECHNIC', 'TRAINING AND PLACEMENT STRUCTURE OF GOBONDAPUR SEPHALI MEMORIAL POLYTECHNIC', '<p style="text-align: justify;" align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><span style="text-decoration: underline;">TPC as structured in Gobindapur Sephali Memorial Polytechnic:</span></span></p>\r\n<table width="629" cellspacing="0" cellpadding="0"><colgroup><col width="30" /> <col width="599" /> </colgroup>\r\n<tbody>\r\n<tr>\r\n<td colspan="2" width="629" height="35">\r\n<p><span style="color: #42b3e5; font-size: 12pt; font-family: ''arial black'', ''avant garde'';"><strong>A) Advisory Committee</strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="30" height="25">&nbsp;</td>\r\n<td width="599">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Dignitaries from Govt.and Non Govt. sectors.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="30" height="25">&nbsp;</td>\r\n<td width="599">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Personalities of Academic &amp; industrial Excellence.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="30" height="25">&nbsp;</td>\r\n<td width="599">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Experienced teachers.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="30" height="25">&nbsp;</td>\r\n<td width="599">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Directors.</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" width="629" height="35">\r\n<p><span style="color: #42b3e5; font-size: 12pt; font-family: ''arial black'', ''avant garde'';"><strong>Activities</strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="30" height="25">&nbsp;</td>\r\n<td width="599">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To guide the TPC and to prepare the blue print of the task assigned to it.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="30" height="25">&nbsp;</td>\r\n<td width="599">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To select Experts for special training.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="30" height="25">&nbsp;</td>\r\n<td width="599">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To represent in seminars, workshops orientation</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="30" height="25">&nbsp;</td>\r\n<td width="599">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Programmes for teachers &amp; students.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="30" height="25">&nbsp;</td>\r\n<td width="599">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To liaise with corporate sectors.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="30" height="25">&nbsp;</td>\r\n<td width="599">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To evaluate the performance of TPC and to provide remedial advice to TPC.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="30" height="25">&nbsp;</td>\r\n<td width="599">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To organize special industry oriented courses /training.</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table width="629" cellspacing="0" cellpadding="0"><colgroup><col width="19" /> <col width="610" /> </colgroup>\r\n<tbody>\r\n<tr>\r\n<td colspan="2" width="629" height="35">\r\n<p><span style="color: #42b3e5; font-size: 12pt; font-family: ''arial black'', ''avant garde'';"><strong>B) Training &amp; placement cell</strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Training &amp; placement officer </span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Principal </span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Vice Principal</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Supporting staff</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" width="629" height="35">\r\n<p><span style="color: #42b3e5; font-size: 12pt; font-family: ''arial black'', ''avant garde'';"><strong>Activities</strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To Prepare Student&rsquo;s data-Sheet along with comprehensive and continuous evaluations.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To arrange academic programmes, industrial training, project for the students.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To communicate with the different industries</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To conduct several career guidance program</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To conduct seminar workshop by dignitaries for proper grooming of students.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To make the students industry ready.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="40">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To conduct aptitude test, group discussion, mock interviews, brain storming session, reasoning test, effective measure to promote communication among the students.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To conduct HRD training programmers.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To organize campus recruitment, programmes, job fair etc.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To collect detailed information&rsquo;s of different industries.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To conduct regular industry visits.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="40">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To arrange guest Lecturers for updated information or to arrange of academic process industrial training market &amp;industry.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To provide counseling for higher studies.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="25">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To motivate students for entrepreneurship development.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="40">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To provide classroom /postal /online/coaching for different Completive exams in PWD, CPWD, RAILWAY, SSC, PSC, ONGC IRRIGATION &amp; OTHER Govt. / undertaking / non govt. sectors.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="19" height="5">&nbsp;</td>\r\n<td width="610">\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">To follow advertisement for off campusing and to visit websites of job Fair producers on regular basis.</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style="text-align: justify;" align="justify"><br /><br /></p>', 'training-placement', 0, 1, '2014-10-13 07:01:58', '2014-10-13 07:02:52'),
(72, 1, 6, 'PLACEMENT NOTICE', 1, 'PLACEMENT NOTICE', 'PLACEMENT NOTICE', '<h1 class="title single-title">&ldquo;SANMAR&rdquo; CENTRAL CAMPUS DRIVE</h1>\r\n<h3>JOB DESCRIPTION</h3>\r\n<p>Campus Date &ndash; Will be announced later on<br />Venue &ndash; Will be announced later on</p>\r\n<p><strong>Eligibility Criteria</strong></p>\r\n<ul>\r\n<li>Over all 60% from Madhyamik to Diploma</li>\r\n<li>No history of arrears in any semester (Students having and supplementary exam are not allowed).</li>\r\n</ul>\r\n<p><strong>Package</strong></p>\r\n<ul>\r\n<li>Rs 1.84 LPA as CTC</li>\r\n</ul>\r\n<p><strong>Job Role</strong></p>\r\n<ul>\r\n<li>To carry out trouble shooting of Valves or Seals / new installation / Spares business generation &amp; provide support to all branches across India</li>\r\n<li>Installation of Valves / Seals</li>\r\n<li>Trouble shooting to Valves / Seals</li>\r\n<li>Providing technical support to customers by holding presentation for technicians / Engineers</li>\r\n<li>Maintaining data as per ISO requirement for service complaints</li>\r\n<li>Interacting with branch service and Engineering regarding Valve or Seal problems / failures / trouble shooting</li>\r\n<li>Providing feed back on Valve or Seal performance and competitors Valve or Seal performance</li>\r\n</ul>\r\n<p><strong>Location</strong></p>\r\n<ul>\r\n<li>Chennai, Pune, Mumbai, Baroda, Surat, Jamnagar, Bharuch, Delhi, Bhatinda or Kolkata</li>\r\n</ul>', 'placement-notice', 1, 1, '2014-10-13 07:03:58', '2015-02-05 06:29:05'),
(73, 1, 6, 'OUR VOCATIONAL/INDUSTRIAL TRAINING', 1, 'OUR VOCATIONAL/INDUSTRIAL TRAINING', 'OUR VOCATIONAL/INDUSTRIAL TRAINING', '<table style="height: 664px; margin-left: auto; margin-right: auto;" width="693">\r\n<tbody>\r\n<tr>\r\n<td width="205">\r\n<p><em>&nbsp;</em></p>\r\n<p><strong><em>Sl No.</em></strong></p>\r\n</td>\r\n<td width="205">\r\n<p><strong><em>Name of the Vocational Training Organisation with address.</em></strong></p>\r\n</td>\r\n<td width="205">\r\n<p><strong><em>Official/Designated Authority to be Communicated.</em></strong></p>\r\n<p><em>&nbsp;</em></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="205">\r\n<p>&nbsp;1</p>\r\n</td>\r\n<td width="205">\r\n<p>&nbsp;</p>\r\n<p><strong>Chittaranjan Locomotive Works, Chittaranjan, Burdwan</strong></p>\r\n</td>\r\n<td width="205">\r\n<p><strong>The Principal</strong></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="205">\r\n<p>&nbsp;2</p>\r\n</td>\r\n<td width="205">\r\n<p><strong>Tata Mettalics,Gokulpur(Rakha Gangal),P.O-Kharagpur,Dist.-Paschim Mednipur,West Bengal,PIN-721301</strong></p>\r\n</td>\r\n<td width="205">\r\n<p><strong>The Personal Manager</strong></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="173">3&nbsp;</td>\r\n<td width="242">\r\n<p><strong>Bhatar High Way,Sub div-2,P.O-Bhatar,Dist.-Burdwan.</strong></p>\r\n</td>\r\n<td width="201">\r\n<p><strong>Assistant Engineer</strong></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="173">4&nbsp;</td>\r\n<td width="242">\r\n<p><strong>Indian Oil Corporation Limited,Haldia Refrinery,P.O-Haldia,Dist.-Purba Mednipur.</strong></p>\r\n</td>\r\n<td width="201">\r\n<p><strong>H.R Mnager</strong></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="173">5&nbsp;</td>\r\n<td width="242">\r\n<p>&nbsp;</p>\r\n<p><strong>Technical Training Centre,CLW,Near Loco Road,Chittaranjan.</strong></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td width="201">\r\n<p><strong>The Principal</strong></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="173">6&nbsp;</td>\r\n<td width="242">\r\n<p><strong>Eastern Railway,Kanchrapara.</strong></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td width="201">\r\n<p><strong>The Chief Personal Officer</strong></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="173">\r\n<p>7&nbsp;</p>\r\n</td>\r\n<td width="242">\r\n<p><strong>Liluha Eastern Railway Carriage and Wagon Workshop,P.O-Liluha,Dist.-Howrah,West Bengal,PIN-711204</strong></p>\r\n</td>\r\n<td width="201">\r\n<p><strong>The Training Officer</strong></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="173">8&nbsp;</td>\r\n<td width="242">\r\n<p><strong>Durgapur Project Limited, Durgapur, West Bengal, PIN-713201.</strong></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td width="201">\r\n<p><strong>The Training Officer</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'industrial-training', 1, 1, '2014-10-13 07:05:29', '2015-02-04 07:49:21'),
(76, 1, 6, 'PLACEMENT RECORD', 1, 'PLACEMENT RECORD', 'PLACEMENT RECORD ', '<p>&nbsp;</p>\r\n<p style="text-align: center;"><strong>GOBINDAPUR SEPHALI MEMORIAL POLYTECHNIC</strong></p>\r\n<p style="text-align: center;"><strong>Placement Statistics &nbsp;</strong></p>\r\n<table width="696">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: center;" width="57">\r\n<p><strong>SL No.</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="105">\r\n<p><strong>Date of </strong></p>\r\n<p><strong>Campus</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>Organizations </strong></p>\r\n</td>\r\n<td style="text-align: center;" width="174">\r\n<p><strong>Stream </strong></p>\r\n<p><strong>Demographics </strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>Finally </strong></p>\r\n<p><strong>Selected </strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: center;" width="57">\r\n<p><strong>1</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="105">\r\n<p><strong>13-11-2014</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>Srmb Srijan ltd.</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="174">\r\n<p><strong>CIVIL</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>18</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: center;" width="57">\r\n<p><strong>2</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="105">\r\n<p><strong>16-12-2014</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>Srmb Srijan ltd.</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="174">\r\n<p><strong>CST&nbsp; &amp; ETC</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>4(shortlisted)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: center;" width="57">\r\n<p><strong>3</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="105">\r\n<p><strong>12-12-2014</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>C.s.infosoul Pvt. Ltd.</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="174">\r\n<p><strong>CST &amp;ETC</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>8</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: center;" width="57">\r\n<p><strong>4</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="105">\r\n<p><strong>13-12-2014</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>Electronica</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="174">\r\n<p><strong>ETC</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>7(shortlisted)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: center;" width="57">\r\n<p><strong>5</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="105">\r\n<p><strong>13-12-2014</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>Syncro</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="174">\r\n<p><strong>ETC</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>3(shortlisted)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="text-align: center;" width="57">\r\n<p><strong>6</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="105">\r\n<p><strong>13-12-2014</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>G.p Tronics</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="174">\r\n<p><strong>E.E</strong></p>\r\n</td>\r\n<td style="text-align: center;" width="180">\r\n<p><strong>Nil</strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p style="text-align: center;"><strong><span style="font-size: 14pt;"><br />&nbsp;</span></strong></p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;">&nbsp;</p>', 'placement-record', 1, 1, '2014-10-13 07:36:46', '2015-02-04 08:48:20'),
(77, 1, 6, 'PLACEMENT RULES', 1, 'PLACEMENT RULES', 'PLACEMENT RULES', '<p style="text-align: justify;"><strong><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">TRAINING &amp; PLACEMENT RULES</span></strong></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 1:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">ALL STUDENTS SHOULD CARRY THEIR COLLEGE IDENTITY CARD, RESUME, PHOTOGRAPH (IN FORMAL), ORIGINAL OR ATTESTED PHOTOCOPY OF ALL MARK SHEETS AND CERTIFICATES AT THE TIME OF CAMPUS PLACEMENT.</span></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 2:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">ALL THE STUDENTS SHOULD UNDERGO SOME FORM OF COMMUNICATION/SKILL DEVELOPMENT TRAINING PROGRAMME (SOFT SKILLS AND TECHNICAL DEVELOPMENT SKILLS CLASSES). ALL THE REGISTERED STUDENTS SHOULD COMPULSORY ATTEND SUCH PROGRAMMES ORGANIZED BY HR &amp; CR DEPT.</span></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 3:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">THE REGISTERED STUDENTS MUST SIGN THE CONSENT FORM ON THE GIVEN DATE , ELSE THEY CANNOT APPEAR IN THE INTERVIEW AND WILL BE TREATED AS UN WILLING. FOR ANY QUERIES, STUDENTS SHOULD CONTACT THE CONCERNED COORDINATOR OF CR DEPT.</span></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 4:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">ALL STUDENTS APPEARING IN CAMPUS RECRUITMENT PROCESS ARE REQUIRED TO COME IN FORMAL DRESSING ALONG WITH TIE, BLAZER AND FORMAL SHOES. THEY SHOULD COME ON TIME FOR PLACEMENT PROCESS OTHERWISE THEY WILL NOT BE ALLOWED TO ATTEND.</span></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 5:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">STUDENT SHOULD REGISTER WITH HR &amp; CORPORATE RELATIONS DEPT TO AVAIL PLACEMENT FACILITIES OF THE COLLEGE. THOSE STUDENTS WHO DO NOT REGISTER WILL BE TREATED AS NOT INTERESTED AND THEY WILL NOT BE ALLOWED TO ATTEND RECRUITMENT PROCESS. REGISTRATION FOR PLACEMENT IS NOT COMPULSORY.</span></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 6:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">THE REGISTERED STUDENTS CANNOT SKIP ANY CAMPUS DRIVE BEFORE GETTING SELECTED AT LEAST BY ANY ORGANIZATION IN ON/OFF/POOL CAMPUS DRIVE CONDUCTED BY HR &amp; CORPORATE RELATIONS DEPT OF NHIT DURGAPUR.</span></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 7:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">60% ATTENDANCE IN SOFT SKILLS CLASSES IS MANDATORY, TO GET ELIGIBLITY IN PLACEMENT REGISTRATION</span></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 8:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">THE STUDENTS WHO WILL GET 80% OR ABOVE IN AVERAGE OF ALL THE ASSIGNMENT &amp; EVALUATION WILL BE GRADED "A".</span></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 9:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">THE STUDENTS WHO WILL GET 65%+ TO LESS THAN 80% AVERAGE IN ALL THE ASSIGNMENTS &amp; EVALUATION WILL BE GRADED "B".</span></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 10:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">THE STUDENTS WHO WILL GET 50% TO LESS THAN 65% AVERAGE IN ALL THE ASSIGNMENT &amp; EVALUATION WILL BE GRADED "C".</span></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 11:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">THE STUDENTS WHO WILL SCORING LESS THAN 50% WILL NOT BE ENTERTAINED FOR TRAINING &amp; PLACEMENT ASSISTANCE.</span></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 12:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">THE STUDENTS WHO WILL INDULGE THEMSELVES IN INDISCIPLINARY ACTIVITIES WILL NOT BE ENTERTAINED FOR TRAINING &amp; PLACEMENT ASSISTANCE.</span></p>\r\n<ul style="text-align: justify;">\r\n<li>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">RULE 13:</span></p>\r\n</li>\r\n</ul>\r\n<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">THE CONSERNED SOFT SKILL FACULTY WILL ACT AS THE DEPARTMENTAL COORDINATOR REGARDING TRAINING &amp; PLACEMENT ACTIVITIES.</span></p>', 'placement-rules', 0, 1, '2014-10-13 07:43:59', '2014-10-13 07:43:59'),
(78, 1, 10, 'OTHER INSTITUTE ENDEAVOURING BY MANAGEMENT', 1, 'OTHER INSTITUTE ENDEAVOURING BY MANAGEMENT', 'OTHER INSTITUTE ENDEAVOURING BY MANAGEMENT', '<p style="text-align: justify;" align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">ASSOCIATED COLLEGE UNDER GOBINDAPUR SEPHALI SAMAG </span></p>\r\n<p style="text-align: justify;" align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">SEBA SAMITY ARE</span></p>\r\n<p style="text-align: justify;" align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">1. GOBINDAPUR SEPHALI MEMORIAL POLYTECHNIC.</span></p>\r\n<p style="text-align: justify;" align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">2. GOBINDAPUR SEPHALI MEMORIAL P.T.T.I.</span></p>\r\n<p style="text-align: justify;" align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">3. SEPHALI MEMORIAL PUBLIC SCHOOL.</span></p>\r\n<p style="text-align: justify;" align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">4. HATE KALAME SIKHA KENDRA (GOBINDAPUR).</span></p>', 'OTHER-INSTITUTE-ENDEAVOURING-BY-MANAGEMENT', 0, 1, '2014-10-13 07:47:37', '2014-10-13 07:47:37'),
(79, 1, 7, 'CO-CURRICULAR ACTIVITIES', 1, 'CO-CURRICULAR ACTIVITIES', 'CO-CURRICULAR ACTIVITIES', '<p>&nbsp;</p>\r\n<table style="height: 117px;" width="456">\r\n<tbody>\r\n<tr>\r\n<td><img src="../../app/webroot/images/10154204_549957288450952_776156110_n.jpg" alt="" width="250" height="249" /></td>\r\n<td><img src="../../app/webroot/images/10173731_549957488450932_1311771130_n.jpg" alt="" width="250" height="249" /></td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;<img src="../../app/webroot/images/1888545_549957201784294_980816864_n.jpg" alt="" width="250" height="249" /></td>\r\n<td>&nbsp;<img src="../../app/webroot/images/10153062_549957175117630_1821356980_n.jpg" alt="" width="250" height="249" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'CO-CURRICULAR ACTIVITIES', 1, 1, '2014-10-13 08:36:18', '2015-02-04 09:08:49');
INSERT INTO `contents` (`id`, `user_id`, `menu_id`, `sub_menu_title`, `layout_id`, `title`, `summary`, `body`, `slug`, `draft`, `visible`, `created`, `modified`) VALUES
(80, 1, 8, 'CONTACT US', 1, 'CONTACT US', 'CONTACT US', '<table width="616" cellspacing="0" cellpadding="7"><colgroup><col width="51" /> <col width="177" /> <col width="134" /> <col width="196" /> </colgroup>\r\n<tbody>\r\n<tr valign="top">\r\n<td width="51">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><strong>Sl No.</strong></span></p>\r\n</td>\r\n<td width="177">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><strong>Name</strong></span></p>\r\n</td>\r\n<td width="134">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><strong>Designation</strong></span></p>\r\n</td>\r\n<td width="196">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><strong>Contact No.</strong></span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="51">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">1.</span></p>\r\n</td>\r\n<td width="177">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Satya Narayan Bag</span></p>\r\n</td>\r\n<td width="134">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Principal</span></p>\r\n</td>\r\n<td width="196">\r\n<p align="center">&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="51">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">2.</span></p>\r\n</td>\r\n<td width="177">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Sankar Prasad Sau</span></p>\r\n</td>\r\n<td width="134">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Teacher-In-Charge</span></p>\r\n</td>\r\n<td width="196">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">8373076101.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="51">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">3.</span></p>\r\n</td>\r\n<td width="177">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Sudipta Dey</span></p>\r\n</td>\r\n<td width="134">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Placement Officer</span></p>\r\n</td>\r\n<td width="196">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">9732991100.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="51">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">4.</span></p>\r\n</td>\r\n<td width="177">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Chittabrata Majumder, Shymal Kr. Singha.</span></p>\r\n<p align="center">&nbsp;</p>\r\n</td>\r\n<td width="134">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Admission Cell</span></p>\r\n</td>\r\n<td width="196">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">8900329343,9647608366.</span></p>\r\n</td>\r\n</tr>\r\n<tr valign="top">\r\n<td width="51">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">5.</span></p>\r\n</td>\r\n<td width="177">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Sudipta Sarkar</span></p>\r\n<p align="center">&nbsp;</p>\r\n</td>\r\n<td width="134">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Hostel-in-charge</span></p>\r\n</td>\r\n<td width="196">\r\n<p align="center"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">8373076100</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt; color: #993300;"><strong>ADDRESS DETAILS :</strong></span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><strong>Goibindapur Sephali Memorial Polytechnic</strong></span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><strong>Gobindapur ( Near Guskara ) , P.O. : Keleti,</strong></span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><strong>P.S.: Ausgram,</strong></span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><strong>Dist : Burdwan,</strong></span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><strong>Pin : 713128, WestBengal</strong></span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><strong>ContactNo : +913452-250 560/220, +91-9647608366,</strong></span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;+918900329343.</strong></span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;"><strong>Fax : 03452-250559</strong></span></p>\r\n<p><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt; color: #800000;"><strong>COMMUNICATION:&nbsp;</strong></span></p>\r\n<p><span style="font-size: 12pt;"><strong><span style="font-family: ''arial black'', ''avant garde'';">Bus Stoppage &nbsp; &nbsp; &nbsp; : Gobindapur ( Gupinpur ) , Suri Road &nbsp;( Burdwan / Guskara to Bolpur )</span></strong></span></p>\r\n<p><span style="font-size: 12pt;"><strong><span style="font-family: ''arial black'', ''avant garde'';">Rail &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : &nbsp;5km. from Guskara Railway Station &amp; 18km. from Bolpur ( Shantiniketan ) Railway &nbsp; &nbsp;Station.</span></strong></span></p>\r\n<p><span style="font-size: 12pt;"><strong><span style="font-family: ''arial black'', ''avant garde'';">Road &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : &nbsp;4km from Guskara Bus Stand &amp; 20km from Bolpur Bus Stand.</span></strong></span></p>\r\n<p><span style="font-size: 12pt;"><strong><span style="font-family: ''arial black'', ''avant garde'';">Local Transport &nbsp;: &nbsp;Public &amp; Private Bus, Taxies etc. from Guskara and Bolpur.</span></strong></span> &nbsp; &nbsp;&nbsp;</p>\r\n<p><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde''; color: #800000;"><strong>GOOGLE MAPS :</strong></span></p>\r\n<p><iframe src="https://maps.google.co.in/maps?sll=23.536049,87.744639&amp;sspn=0.0075543,0.0109864&amp;cid=13881611541513109712&amp;q=Gobindapur+Sephali+Memorial+Polytechnic&amp;ie=UTF8&amp;hq=&amp;hnear=&amp;ll=23.536049,87.744639&amp;spn=0.006295,0.006295&amp;t=m&amp;iwloc=A&amp;output=embed" width="425" height="350" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe><br /><small><a style="color: #0000ff; text-align: left;" href="https://maps.google.co.in/maps?sll=23.536049,87.744639&amp;sspn=0.0075543,0.0109864&amp;cid=13881611541513109712&amp;q=Gobindapur+Sephali+Memorial+Polytechnic&amp;ie=UTF8&amp;hq=&amp;hnear=&amp;ll=23.536049,87.744639&amp;spn=0.006295,0.006295&amp;t=m&amp;iwloc=A&amp;source=embed">View Larger Map</a></small></p>', 'contact-us', 0, 1, '2014-10-13 08:46:40', '2014-11-13 07:39:08'),
(81, 1, 5, 'INSTRUCTIONAL FACILITIES', 1, 'INSTRUCTIONAL FACILITIES', 'INSTRUCTIONAL FACILITIES', '<p align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">1) SPACIOUS, AIRY AND LARGE CLASS ROOMS.</span></p>\r\n<p align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">2) WELL STOCKED LIBRARY AND READING ROOM.</span></p>\r\n<p align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">3) WELL FURNISHED COMPUTER LAB.</span></p>\r\n<p align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">4) SEPARATE LABORATORIES FOR EACH BRANCH.</span></p>\r\n<p align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">5) SPACIOUS WORKSHOPS WITH GOOD INFRASTRUCTURE.</span></p>\r\n<p style="text-align: justify;" align="justify"><br /><br /></p>', 'INSTRUCTIONAL-FACILITIES', 1, 1, '2014-10-13 08:48:18', '2015-02-04 07:22:43'),
(82, 1, 5, 'SEPARATE HOSTEL FACILITIES FOR BOYS AND GIRLS', 1, 'SEPARATE HOSTEL FACILITIES FOR BOYS AND GIRLS', 'SEPARATE HOSTEL FACILITIES FOR BOYS AND GIRLS', '<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Hostel Facilities for both boys and girls are available inside the campus at a very reasonable rate. Hostels are well protected, Regular Supervision, emergency service, Generators are available.</span></p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="50%"><span style="font-size: 14pt;"><strong>Boys Hostel</strong></span></td>\r\n<td width="50%"><span style="font-size: 14pt;"><strong>Girls Hostel</strong></span></td>\r\n</tr>\r\n<tr>\r\n<td width="50%"><img src="../../app/webroot/images/Boys Hostel.JPG" alt="" width="362" height="300" /></td>\r\n<td width="50%"><img src="../../app/webroot/images/Girl Hostel.JPG" alt="" width="374" height="298" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'HOSTEL', 1, 1, '2014-10-13 08:57:58', '2015-02-04 09:25:14'),
(83, 1, 5, 'TRANSPORTATION FACILITIES', 1, 'TRANSPORTATION FACILITIES', 'TRANSPORTATION FACILITIES', '<p style="text-align: justify;"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Sufficient arrangement for transportation is also available from Guskara Railway station and Guskara Bus stand. In case of medical/urgent requirement transportation is available any time.</span></p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width="50%"><img src="../../app/webroot/images/DSC01079.JPG" alt="" width="300" height="250" /></td>\r\n<td width="50%"><img src="../../app/webroot/images/DSC01084-compressed.jpg" alt="" width="371" height="250" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'transport', 0, 1, '2014-10-13 09:00:35', '2015-02-04 10:23:46'),
(84, 1, 5, 'LIBRARY', 1, 'LIBARY', 'LIBRARY', '<p style="text-align: justify;" align="justify"><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">1. <span style="text-decoration: underline;"><strong>Reading Room</strong></span>:-</span></p>\r\n<p style="text-align: justify;" align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Students and Faculty members can use the well-furnished Reading Room for reading books, periodicals, journals in calm and Comfortable environment.</span></p>\r\n<p style="text-align: justify;" align="justify"><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">2. <span style="text-decoration: underline;"><strong>Library Stock</strong></span>:-There is a large stock of books, reference, periodicals, journals for ready reference to the students and faculty members.</span></p>\r\n<p style="text-align: justify;" align="justify"><span style="font-size: 12pt; font-family: ''arial black'', ''avant garde'';">3<strong>.</strong><span style="text-decoration: underline;"><strong> Reprographic Facilities</strong></span>:-Reprographics Facilities are available in the library for the students and Faculty Members.</span></p>\r\n<p style="text-align: justify;" align="justify">&nbsp;</p>\r\n<p style="text-align: justify;" align="justify">&nbsp;</p>\r\n<table width="100%">\r\n<tbody>\r\n<tr>\r\n<td width="50%"><img src="../../app/webroot/images/DSC_0218-compressed.jpg" alt="" width="100%" /></td>\r\n<td width="50%"><img src="../../app/webroot/images/DSC_0217-compressed.jpg" alt="" width="100%" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'library', 0, 1, '2014-10-13 09:04:45', '2015-02-05 03:01:32'),
(85, 1, 5, 'LABORATORY/WORKSHOP', 1, 'LABORATORY/WORKSHOP', 'LABORATORY/WORKSHOP', '<p style="text-align: justify;" align="justify"><span style="font-family: ''arial black'', ''avant garde''; font-size: 12pt;">Laboratories and Workshop are spacious and well equipped. Equipment and necessary arrangements are as per syllabus and there is vast scope to gather practical knowledge for the students.</span></p>\r\n<p style="text-align: justify;" align="justify">&nbsp;</p>\r\n<table style="height: 221px;" width="523">\r\n<tbody>\r\n<tr>\r\n<td><a href="../../app/webroot/images/CIVIL%20Dept-compressed.jpg"><img src="../../app/webroot/images/CIVIL Dept-compressed.jpg" alt="Civil Department" width="300" height="250" /></a></td>\r\n<td><img src="../../app/webroot/images/Computer Lab-compressed.jpg" alt="" width="300" height="250" />&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;<img src="../../app/webroot/images/Electrical Lab1-compressed.jpg" alt="" width="300" height="250" /></td>\r\n<td><img src="../../app/webroot/images/Electronoics Lab-compressed.jpg" alt="" width="300" height="250" />&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;<img src="../../app/webroot/images/Mechanical Lab-compressed.jpg" alt="" width="300" height="250" /></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style="text-align: justify;" align="justify">&nbsp;</p>', 'laboratories-workshop', 0, 1, '2014-10-13 09:11:28', '2015-02-05 03:13:58'),
(88, 1, 1, 'Gobindapur Sephali Memorial Ptti', 1, 'Gobindapur Sephali Memorial Ptti', 'Gobindapur Sephali Memorial Ptti', '<p>Gobindapur Sephali Memorial Ptti</p>', 'gobindapur-sephali-memorial-ptti', 0, 0, '2014-11-11 03:35:54', '2014-11-11 03:35:54'),
(89, 1, 5, 'COURSES OFFERED', 1, 'COURSES OFFERED', 'COURSES OFFERED', '<p>..</p>', 'courses-offered', 0, 0, '2014-11-11 08:29:44', '2015-02-04 05:10:57'),
(90, 1, 1, 'RULES AND REGULATIONS', 1, 'RULES AND REGULATIONS', 'RULES AND REGULATIONS', '<p>RULES AND REGULATIONS</p>', 'rules-and-regulations', 0, 0, '2014-11-11 08:33:55', '2014-11-11 08:33:55'),
(91, 1, 1, 'LIST OF LAB EQUIPMENTS', 1, 'LIST OF LAB EQUIPMENTS', 'LIST OF LAB EQUIPMENTS', '<p>LIST OF LAB EQUIPMENTS</p>', 'list-of-lab-equip', 0, 0, '2014-11-11 08:36:29', '2014-11-11 08:36:29'),
(92, 1, 1, 'ALUMNI', 1, 'ALUMNI', 'ALUMNI', '<p>ALUMNI</p>', 'alumni', 0, 0, '2014-11-11 08:39:43', '2014-11-11 08:39:43'),
(93, 1, 1, 'TERMS AND CONDITIONS', 1, 'TERMS AND CONDITIONS', 'TERMS AND CONDITIONS', '<p>TERMS AND CONDITIONS</p>', 'terms-and-conditions', 0, 0, '2014-11-11 08:41:33', '2014-11-11 08:41:33'),
(94, 1, 1, 'GSMP PROFILE', 1, 'Gobindapur Sephali Memorial Profile', 'Gobindapur Sephali Memorial Profile', '<div id="nis_body_left_up">\r\n<div id="nis_body_left_img"><img src="../../app/webroot/images/college_buliding.jpg" alt="image" width="222" height="172" /></div>\r\n<div id="nis_body_left_content">\r\n<p class="topiic_wel" style="text-align: justify;"><span style="font-family: arial black,avant garde; font-size: 12pt;">The Polytechnic Education system was highlighted for strengthening the production of competent technical professional to the need of emerging Industries and technologies. To develop the Polytechnic Education system to the desired level, Govt. of India drew a project Supported by the World Bank in October 1999. In the promotional activities of technical education, new polytechnics were set up, new courses were introduced, and curricula were updated and revised with a modified approach to up-gradation and modernization of polytechnics.</span></p>\r\n</div>\r\n<p class="topiic_wel" style="text-align: justify;"><span style="font-family: arial black,avant garde; font-size: 12pt;">All India Council of Technical Education grants recognition to the Institutes and West Bengal State Council of Technical Education conducts the different exams; supervise the courses being the Affiliating Body. After successful completion of 3 years full time Diploma Course in different branches of Engineering, the students achieve the ability to make themselves competent for various technical jobs in govt., private-public sector organizations and become advanced for higher education also.</span></p>\r\n<p class="topiic_wel" style="text-align: justify;"><span style="font-family: arial black,avant garde; font-size: 12pt;">The Institute campus has been setup at Gobindapur, P.O.: Keleti, Dist. - Burdwan beside Suri Road (Burdwan/ Guskara to Bolpur- Santiniketan Road) in a beautiful and pollution free environment with a well structured building having all the facilities. The well equipped library, laboratories, workshops and the hostels have made it an ideal campus. It is only 5km. from Guskara and 18 km. from Bolpur (Shantiniketan) and well communicated by Bus route and Railway. Our sole aim is the improvement of our students and we have tried our level based to recruit experienced faculty members and staff.</span></p>\r\n</div>\r\n<div style="clear: both;">&nbsp;</div>', 'gsmp-profle', 0, 1, '2014-11-11 10:38:55', '2014-11-12 04:47:26'),
(95, 1, 3, 'ACADEMIC CALENDER', 1, 'ACADEMIC CALENDER', 'ACADEMIC CALENDER', '<p><a href="../../app/webroot/images/AcademicCalendar2014-15.pdf">AcademicCalendar2014-15</a></p>', 'academic-clander', 1, 1, '2014-11-12 01:05:51', '2015-02-04 09:47:58'),
(96, 1, 3, 'SYLLABUS', 1, 'SYLLABUS', 'SYLLABUS', '<p>&nbsp;<span style="font-family: arial black,avant garde; font-size: 12pt;"><strong>1.</strong><strong>Engineering And Technology&nbsp;&nbsp; <br /></strong></span></p>\r\n<p><strong><span style="font-family: arial black,avant garde; font-size: 10pt;"> <a href="../../app/webroot/syllabus/Syllabus%201st Sem.pdf">a) </a></span><a href="../../app/webroot/syllabus/Syllabus%201st Sem.pdf"><span style="font-family: arial black,avant garde; font-size: 10pt;">1st Semester</span></a></strong></p>\r\n<p><strong><span style="font-family: arial black,avant garde; font-size: 10pt;"> <a href="../../app/webroot/syllabus/Final Curriculum structure and Syllabus_2nd Semeter_wef 2013-14.pdf" target="_blank">b) 2nd Semester</a></span></strong></p>\r\n<p><span style="font-family: arial black,avant garde; font-size: 12pt;"><strong> 2.Civil Engineering&nbsp;&nbsp; </strong></span></p>\r\n<p><span style="font-size: 10pt;"><strong><span style="font-family: arial black,avant garde;"><a href="../../app/webroot/syllabus/Structure-Civil Engg.pdf" target="_blank">a) Course Structure</a></span></strong></span></p>\r\n<p><span style="font-size: 10pt;"><strong><span style="font-family: arial black,avant garde;"><a href="../../app/webroot/syllabus/3rd sem-Civil Engineering.pdf" target="_blank">b) 3rd Semester</a></span></strong></span></p>\r\n<p><strong><span style="font-family: arial black,avant garde; font-size: 10pt;"><a href="../../app/webroot/syllabus/4th sem-Civil Engg.pdf" target="_blank">c) 4th Semester</a></span></strong></p>\r\n<p><strong><span style="font-family: arial black,avant garde; font-size: 10pt;"><a href="../../app/webroot/syllabus/5th sem-Civil Engg.pdf" target="_blank">d) 5th Semester</a></span></strong></p>\r\n<p><strong><span style="font-family: arial black,avant garde; font-size: 10pt;"><a href="../../app/webroot/syllabus/6th sem-Civil Engg.pdf" target="_blank">e) 6th Semester</a></span></strong></p>\r\n<p><span style="font-family: arial black,avant garde; font-size: 12pt;"><strong>3.</strong></span> <strong><span style="font-family: arial black,avant garde; font-size: 12pt;">Computer Science and Technology</span></strong></p>\r\n<p><span style="font-size: 10pt;"><strong><span style="font-family: arial black,avant garde;"><a href="../../app/webroot/syllabus/Structure-Computer Sc and Tech.pdf" target="_blank">a) Course Structure</a></span></strong></span></p>\r\n<p><span style="font-size: 10pt;"><strong><span style="font-family: arial black,avant garde;">b)<a href="../../app/webroot/syllabus/3rd%20sem-Computer Science and Technology.pdf">3rd Semister</a></span></strong></span></p>\r\n<p><span style="font-size: 10pt;"><strong><span style="font-family: arial black,avant garde;"><a href="../../app/webroot/syllabus/4th sem-Computer Science and Technology.pdf" target="_blank">c) 4th Semester</a></span></strong></span></p>\r\n<p><strong><span style="font-family: arial black,avant garde; font-size: 10pt;"><a href="../../app/webroot/syllabus/5th sem-Computer Science and Technology.pdf" target="_blank">d) 5th Semester</a></span></strong></p>\r\n<p><strong><span style="font-family: arial black,avant garde; font-size: 10pt;"><a href="6th sem-Computer Science and Technology.pdf" target="_blank">e) 6th Semester</a></span></strong></p>\r\n<p><span style="font-size: 12pt;"><strong><span style="font-family: arial black,avant garde;">4.Electrical Engineering</span></strong></span></p>\r\n<p><a href="../../app/webroot/syllabus/Structure-Electrical%20Engg.pdf" target="_blank"><span style="font-size: 10pt;"><strong><span style="font-family: arial black,avant garde;">a) Course Structure</span></strong></span></a></p>\r\n<p><a href="../../app/webroot/syllabus/3rd%20sem-Electrical Engineering.pdf"><span style="font-size: 10pt;"><strong><span style="font-family: arial black,avant garde;">b) 3rd Semester</span></strong></span></a></p>\r\n<p><strong><span style="font-family: arial black,avant garde; font-size: 10pt;"><a href="../../app/webroot/syllabus/4th sem-Electrical Engg.pdf" target="_blank">c) 4th Semester</a></span></strong></p>\r\n<p><strong><span style="font-family: arial black,avant garde; font-size: 10pt;"><a href="../../app/webroot/syllabus/5th sem-Electrical Engg.pdf">d) 5th semester</a></span></strong></p>\r\n<p><a href="../../app/webroot/images/6th%20sem-Electrical Engineering.pdf" target="_blank"><strong><span style="font-family: arial black,avant garde; font-size: 10pt;">e) 6th Semester</span></strong></a></p>\r\n<p><span style="font-size: 12pt;"><strong><span style="font-family: arial black,avant garde;">5.Mechanical Engineering</span></strong></span></p>\r\n<p><span style="font-size: 10pt;"><strong><span style="font-family: arial black,avant garde;"><a href="../../app/webroot/syllabus/Structure-Mechanical Engg.pdf" target="_blank">a) Course Structure</a></span></strong></span></p>\r\n<p><span style="font-size: 10pt;"><strong><span style="font-family: arial black,avant garde;"><a href="../../app/webroot/syllabus/3rd sem-Mechanical Engineering.pdf" target="_blank">b) 3rd Semester</a></span></strong></span></p>\r\n<p><span style="font-size: 10pt;"><strong><span style="font-family: arial black,avant garde;"><a href="../../app/webroot/syllabus/4th sem-Mechanical Engineering.pdf" target="_blank">c) 4th Semester</a></span></strong></span></p>\r\n<p><span style="font-size: 10pt;"><strong><span style="font-family: arial black,avant garde;"><a href="../../app/webroot/syllabus/5th sem-Mechanical Engineering.pdf" target="_blank">d) 5th Semester</a></span></strong></span></p>\r\n<p><span style="font-size: 10pt;"><strong><span style="font-family: arial black,avant garde;"><a href="../../app/webroot/syllabus/6th sem-Mechanical Engineering.pdf" target="_blank">e) 6th Semster</a></span></strong></span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'syllabus', 0, 1, '2014-11-12 01:06:59', '2015-02-05 07:14:43'),
(97, 1, 4, 'ADMISSION ELIGIBILITY', 1, 'ADMISSION ELIGIBILITY  ', 'ADMISSION  ELIGIBILITY  ', '<p><strong>Eligibility</strong></p>\r\n<p>1<strong>.&nbsp;</strong>Admission through JEXPO / VOCLET</p>\r\n<p>2. 50% of total seat capacity in each discipline will be admitted from JEXPO qualified student and having allotment letter after counseling organized by WBSCTE.</p>\r\n<p>3. Direct admission of remaining 50% of total seat capacity will be admitted from students qualified in madhyamik or equivalent with minimum 35% marks.</p>\r\n<p>4. Additional 20% seats will be admitted through VOCLET with allotment letter after counseling organized by WBSCTE .</p>\r\n<p style="text-align: left;"><br /> <strong>Age Limit:</strong> <br /> No upper age limit, but candidates'' date of birth should not be after 01/07/2000 (For 1st year candidates).</p>\r\n<p style="text-align: left;" align="justify">&nbsp;</p>\r\n<p align="justify">&nbsp;</p>\r\n<p align="justify">&nbsp;</p>\r\n<p align="justify">&nbsp;</p>', 'admission-procedure', 1, 1, '2014-10-13 06:09:49', '2015-02-05 07:02:29'),
(99, 1, 1, 'ORGANISATION STRUCTURE', 1, 'ORGANISATION STRUCTURE', 'ORGANISATION STRUCTURE', '<p><a href="http://gsmpoly.local/app/webroot/imagesorg1.png">org1</a><img src="../../app/webroot/images/org1.png" alt="" /></p>', 'organisation-structure', 1, 1, '2014-11-12 01:38:03', '2015-02-04 07:07:27'),
(100, 1, 1, 'MISSION & VISION', 1, 'MISSION & VISION', 'MISSION & VISION', '<p><span style="font-family: arial black,avant garde; font-size: 12pt;">OUR VISION</span></p>\r\n<ul style="list-style-type: disc;">\r\n<li><span style="font-family: arial black,avant garde; font-size: 12pt;">To be&nbsp; recognized as the premier Technical Institute in the State.</span></li>\r\n<li><span style="font-family: arial black,avant garde; font-size: 12pt;">To enable access to the best intellectual resources.</span></li>\r\n<li><span style="font-family: arial black,avant garde; font-size: 12pt;">To encourage facilities to develop academic research activities of comman interest.</span></li>\r\n<li><span style="font-family: arial black,avant garde; font-size: 12pt;">To promote moral values, physical &amp; mental fitness among the students, teachers, staff as a part of Human Resource Development.</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><span style="font-family: arial black,avant garde; font-size: 12pt;">OUR MISSION</span> </p>\r\n<ul style="list-style-type: disc;">\r\n<li><span style="font-family: arial black,avant garde; font-size: 12pt;">To promote learning and development of human resources.</span></li>\r\n<li><span style="font-family: arial black,avant garde; font-size: 12pt;">To develop itself a value added and need based quality education provider in WestBengal.</span></li>\r\n<li><span style="font-family: arial black,avant garde; font-size: 12pt;">To provide quality and competent professionals , responsive to the changing need of the society.</span></li>\r\n<li><span style="font-family: arial black,avant garde; font-size: 12pt;">To provide quality technical man-power to the industry in the country.</span></li>\r\n</ul>', 'mission-vision', 0, 1, '2014-11-12 01:39:17', '2014-11-12 05:39:49'),
(101, 1, 1, 'Interview Question & Answer', 1, 'Interview Question & Answer', 'Interview Question & Answer', '<p><a href="../../app/webroot/images/Additional%20skills....doc" target="_blank">Additional skills</a></p>', 'interview', 0, 0, '2015-02-04 08:48:02', '2015-02-05 02:18:06'),
(102, 1, 1, 'JELET and JEXPO QUESTION AVAILABLE', 1, 'JELET and JEXPO QUESTION AVAILABLE ', 'JELET and JEXPO QUESTION AVAILABLE ', '<p>&nbsp;JELET and JEXPO QUESTION AVAILABLE &nbsp;</p>', 'jelet-jexpo', 0, 0, '2015-02-04 08:50:18', '2015-02-04 09:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

DROP TABLE IF EXISTS `customer_groups`;
CREATE TABLE IF NOT EXISTS `customer_groups` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `name` char(100) NOT NULL,
  `note` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE IF NOT EXISTS `deliveries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `courier` char(100) DEFAULT NULL,
  `parcel_number` char(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `user_id`, `order_id`, `courier`, `parcel_number`, `date`, `active`) VALUES
(1, 1, 72, 'Gati', '135454-assdf-8954', '2013-12-20 23:59:00', 1),
(2, 1, 74, 'Sky', '12354*-sdfds-sdfs', '2013-12-12 22:59:00', 1),
(3, 1, 74, 'blue', 'XXXX-CCCC-1452', '2012-12-20 23:59:00', 1),
(4, 1, 74, 'asdf', 'asdf', NULL, 1),
(5, 1, 74, 'asdf', 'asdf', NULL, 1),
(6, 1, 74, 'asdf', 'asdf', NULL, 1),
(7, 1, 74, 'asdf', 'asdf', NULL, 1),
(8, 1, 74, 'asdf', 'asdf', NULL, 1),
(9, 1, 74, 'asdf', 'asdf', NULL, 1),
(10, 1, 74, 'asdf', 'asdf', NULL, 1),
(11, 1, 74, 'asdf', 'asdf', NULL, 1),
(12, 1, 74, 'asdf', 'asdf', NULL, 1),
(13, 1, 74, 'asdf', 'asdf', NULL, 1),
(14, 1, 74, 'asdf', 'asdf', NULL, 1),
(15, 1, 74, 'asdf', 'asdf', NULL, 1),
(16, 1, 74, 'asdf', 'asdf', NULL, 1),
(17, 1, 74, 'asdf', 'asdf', NULL, 1),
(18, 1, 74, 'asdf', 'asdf', NULL, 1),
(19, 1, 74, 'asdf', 'asdf', NULL, 1),
(20, 1, 74, 'asdf', 'asdf', NULL, 1),
(21, 1, 74, 'asdf', 'asdf', NULL, 1),
(22, 1, 74, 'asdf', 'asdf', NULL, 1),
(23, 1, 74, 'asdf', 'asdf', NULL, 1),
(24, 1, 74, 'asdf', 'asdf', NULL, 1),
(25, 1, 74, 'asdf', 'asdf', NULL, 1),
(26, 1, 74, 'asdf', 'asdf', NULL, 1),
(27, 1, 74, 'asdf', 'asdf', NULL, 1),
(28, 1, 74, 'asdf', 'asdf', NULL, 1),
(29, 1, 74, 'asdf', 'asdf', NULL, 1),
(30, 1, 74, 'asdf', 'asdf', NULL, 1),
(31, 1, 74, 'asdf', 'asdf', NULL, 1),
(32, 1, 74, 'Sky', 'dsdf-dfdf-20135s', NULL, 1),
(33, 1, 74, 'Sky', 'dsdf-dfdf-20135s', NULL, 1),
(34, 1, 74, 'Biralq', 'FF-CCVF-1235', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event_pictures`
--

DROP TABLE IF EXISTS `event_pictures`;
CREATE TABLE IF NOT EXISTS `event_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` char(100) NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` char(100) NOT NULL,
  `slug` char(100) NOT NULL,
  `description` text,
  `venue` text,
  `started` datetime DEFAULT NULL,
  `ended` datetime DEFAULT NULL,
  `image` char(100) DEFAULT NULL,
  `document` char(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `posted` datetime DEFAULT NULL COMMENT 'The date the event will be displayed. Subject to active attribute setting.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files_documents`
--

DROP TABLE IF EXISTS `files_documents`;
CREATE TABLE IF NOT EXISTS `files_documents` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `url` char(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `files_documents`
--

INSERT INTO `files_documents` (`id`, `name`, `url`, `active`) VALUES
(7, 'code of conduct', '/files/51_Code_Of_Conduct_Agreement_Form.pdf', 1),
(8, 'All india Football Federation', '/files/AIFF.pdf', 1),
(9, 'coaches conduct', '/files/COACH_CONDUCT.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `name` char(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `user_id`, `name`) VALUES
(1, NULL, 'administrators');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

DROP TABLE IF EXISTS `layouts`;
CREATE TABLE IF NOT EXISTS `layouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `layouts`
--

INSERT INTO `layouts` (`id`, `name`) VALUES
(1, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rght` int(11) NOT NULL,
  `slug` varchar(256) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `parent_id`, `lft`, `rght`, `slug`, `active`) VALUES
(5, 'India', NULL, 1, 42, 'india', 1),
(6, 'Assam', 5, 6, 7, 'assam', 1),
(7, 'Andhra Pradesh', 5, 2, 3, 'andhra - pradesh', 1),
(9, 'Arunachal pradesh', 5, 4, 5, 'arunachal - pradesh', 1),
(10, 'Haryana', 5, 12, 13, 'haryana', 1),
(11, 'Punjab', 5, 14, 15, 'punjab', 1),
(12, 'West Bengal', 5, 16, 17, 'west - bengal', 1),
(13, 'Delhi', 5, 10, 11, 'delhi', 1),
(14, 'Maharastha', 5, 18, 19, 'maharastha', 1),
(15, 'Bihar', 5, 8, 9, 'bihar', 1),
(16, 'Madhya Pradesh', 5, 20, 21, 'madhya - pradesh', 1),
(17, 'Tamil Nadu', 5, 22, 23, 'tamil - nadu', 1),
(18, 'Karnataka', 5, 24, 25, 'karnataka', 1),
(19, 'Rajasthan', 5, 26, 27, 'rajasthan', 1),
(20, 'Sikkim', 5, 28, 29, 'sikkim', 1),
(21, 'Orissa', 5, 30, 31, 'orissa', 1),
(22, 'Uttar Pradesh', 5, 32, 33, 'uttar - pradesh', 1),
(23, 'Chattisgarh', 5, 34, 35, 'chattisgarh', 1),
(24, 'Kerala', 5, 36, 37, 'kerala', 1),
(25, 'Jharkhand', 5, 38, 39, 'jharkhand', 1),
(26, 'Nagaland', 5, 40, 41, 'nagaland', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_tokens`
--

DROP TABLE IF EXISTS `login_tokens`;
CREATE TABLE IF NOT EXISTS `login_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `duration` varchar(32) NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `expires` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=812 ;

--
-- Dumping data for table `login_tokens`
--

INSERT INTO `login_tokens` (`id`, `user_id`, `token`, `duration`, `used`, `created`, `expires`, `active`) VALUES
(8, 2, '721449c0b3b8f9dde26d4f2699077714', '2 weeks', 0, '2013-04-08 07:46:54', '2013-04-22 07:46:54', 1),
(9, 0, 'c90f99ac216721cafc88be5bbcfcd7f8', '2 weeks', 1, '2013-04-08 07:48:57', '2013-04-22 07:48:57', 1),
(10, 0, '1c079c840a91e783e2a660a1f654b59c', '2 weeks', 1, '2013-04-08 13:58:20', '2013-04-22 13:58:20', 1),
(11, 0, '1a8c38d2479d8fefc1d3b1c07b43b8f8', '2 weeks', 1, '2013-04-08 17:58:29', '2013-04-22 17:58:29', 1),
(12, 0, '00695ed1911154a4aa278ddca3614bd8', '2 weeks', 1, '2013-04-09 01:07:23', '2013-04-23 01:07:23', 1),
(13, 0, 'acf97926d4c279aab524aae2840a7e39', '2 weeks', 1, '2013-04-09 16:51:46', '2013-04-23 16:51:46', 1),
(14, 0, '758525a9bfe9d8c96c69521496e3e5e0', '2 weeks', 1, '2013-04-09 20:51:48', '2013-04-23 20:51:48', 1),
(15, 0, '90c1a87d99a3c21522c4206812e6068f', '2 weeks', 1, '2013-04-10 00:52:22', '2013-04-24 00:52:22', 1),
(18, 0, '3667760c72d8463bd7b6ac93090a354d', '2 weeks', 1, '2013-04-10 08:45:05', '2013-04-24 08:45:05', 1),
(20, 0, '81c5037c832a35cde6ca8e734a70a65e', '2 weeks', 1, '2013-04-11 09:52:43', '2013-04-25 09:52:43', 1),
(28, 0, 'c905aa4b378c5e6689c4b4bf3a429ec2', '2 weeks', 1, '2013-04-11 19:20:15', '2013-04-25 19:20:15', 1),
(31, 8, '8179c4ed62dbbd5ad95247950aafffb5', '2 weeks', 0, '2013-04-12 01:35:20', '2013-04-26 01:35:20', 1),
(33, 8, '285c4e3bcff7ec56c35eabc6e080c077', '2 weeks', 0, '2013-04-12 01:38:14', '2013-04-26 01:38:14', 1),
(35, 8, 'eb6ad9a46861651dbfea6bbe170beebe', '2 weeks', 0, '2013-04-12 01:39:52', '2013-04-26 01:39:52', 1),
(37, 8, '0e249921ce21ac014c2a32187a04055b', '2 weeks', 0, '2013-04-12 01:47:32', '2013-04-26 01:47:32', 1),
(38, 0, '4124b8c25cc9dd95fa91c22909a0e2cd', '2 weeks', 1, '2013-04-12 01:52:05', '2013-04-26 01:52:05', 1),
(39, 13, 'fad6b043e94ff02d9267107f4cae3e02', '2 weeks', 0, '2013-04-12 02:17:01', '2013-04-26 02:17:01', 1),
(40, 8, '75748b71207b9c1a41c912683a6f4029', '2 weeks', 0, '2013-04-12 02:18:05', '2013-04-26 02:18:05', 1),
(41, 8, '8e042bb53bfd71c412036d08a42006da', '2 weeks', 0, '2013-04-12 02:20:31', '2013-04-26 02:20:31', 1),
(42, 8, 'd8c03315a7b7dc9c46c801bdd2be142f', '2 weeks', 0, '2013-04-12 02:33:15', '2013-04-26 02:33:15', 1),
(43, 8, '322e3a9806ea704bcd2c38eb1a255702', '2 weeks', 0, '2013-04-12 02:34:32', '2013-04-26 02:34:32', 1),
(44, 8, '4109f7c15b6f31a426f64b2f6d94cff9', '2 weeks', 0, '2013-04-12 02:35:47', '2013-04-26 02:35:47', 1),
(45, 8, '40517e3f8b15d7a8a0ba0964140c57c6', '2 weeks', 0, '2013-04-12 02:38:09', '2013-04-26 02:38:09', 1),
(46, 8, 'a923531223184f589c20b0bdc4505b9c', '2 weeks', 0, '2013-04-12 02:38:49', '2013-04-26 02:38:49', 1),
(47, 8, '7f2f829200d33bcbb713bde6cc379a1f', '2 weeks', 0, '2013-04-12 02:40:16', '2013-04-26 02:40:16', 1),
(48, 8, '66517115cd960929ffa33502a0395647', '2 weeks', 0, '2013-04-12 02:42:03', '2013-04-26 02:42:03', 1),
(49, 8, 'c9dc057b72455b025c6e566a34683be7', '2 weeks', 0, '2013-04-12 02:46:18', '2013-04-26 02:46:18', 1),
(50, 8, 'e36e1dbcecd0c229fbdc8c7dc8cef883', '2 weeks', 0, '2013-04-12 02:46:29', '2013-04-26 02:46:29', 1),
(51, 8, 'fa0b3b5a9931ab7b4cb4ea9ed4d627bd', '2 weeks', 0, '2013-04-12 02:49:08', '2013-04-26 02:49:08', 1),
(52, 8, '6a857a1cd1a4e13841057c6a4ff5d97f', '2 weeks', 0, '2013-04-12 02:53:27', '2013-04-26 02:53:27', 1),
(53, 8, '3f36c9b1e66a5028e990ec2bb3f16774', '2 weeks', 0, '2013-04-12 03:11:13', '2013-04-26 03:11:13', 1),
(54, 8, 'a8cdb4b57cec8f6a001dc4621122e5e9', '2 weeks', 0, '2013-04-12 03:12:43', '2013-04-26 03:12:43', 1),
(55, 8, 'aabcd008cd2d57c3338b08b23b781cc8', '2 weeks', 0, '2013-04-12 03:13:13', '2013-04-26 03:13:13', 1),
(56, 0, '2febda82193f31935d1a624ab18cd0d0', '2 weeks', 1, '2013-04-12 04:59:38', '2013-04-26 04:59:38', 1),
(58, 8, '78745814fdd8691422806ccf768ba914', '2 weeks', 0, '2013-04-12 05:09:13', '2013-04-26 05:09:13', 1),
(60, 0, 'fbe4ea00d8c37724743456da1b4b9a0a', '2 weeks', 1, '2013-04-12 06:55:38', '2013-04-26 06:55:38', 1),
(62, 0, 'd3cd477a500ed33a38a3c3231e4a6cf4', '2 weeks', 1, '2013-04-12 09:02:20', '2013-04-26 09:02:20', 1),
(63, 0, 'b2b55135d208e4db38830b6596dec47c', '2 weeks', 1, '2013-04-12 17:04:34', '2013-04-26 17:04:34', 1),
(64, 0, '900112bfadfb62021cde3eb9056d14ac', '2 weeks', 1, '2013-04-12 21:04:56', '2013-04-26 21:04:56', 1),
(66, 0, '3aa3891eabf140d1ed346d407b6b8a7d', '2 weeks', 1, '2013-04-15 12:53:09', '2013-04-29 12:53:09', 1),
(80, 0, 'baaca02d30ce346e6e0a91c04ed1643a', '2 weeks', 1, '2013-04-18 13:22:44', '2013-05-02 13:22:44', 1),
(125, 0, 'f6f3380dde78d298ecad6b5728d8fa53', '2 weeks', 1, '2013-04-21 00:19:02', '2013-05-05 00:19:02', 1),
(126, 0, 'f7ce0a1e1bb3054041591b77bf59d49e', '2 weeks', 1, '2013-04-22 13:08:15', '2013-05-06 13:08:15', 1),
(129, 0, 'd18502c64f8076b45934f6e38e57f6e7', '2 weeks', 1, '2013-04-23 10:21:55', '2013-05-07 10:21:55', 1),
(144, 0, '7b077def70f63cba46176b5a2dbb6490', '2 weeks', 1, '2013-04-24 04:20:45', '2013-05-08 04:20:45', 1),
(146, 0, '6ba5e3ff8e8879ddd1e2aecda7ee11ad', '2 weeks', 1, '2013-04-24 07:06:26', '2013-05-08 07:06:26', 1),
(155, 0, '46371de7ded34e5c0ebf0fd88de5e673', '2 weeks', 1, '2013-04-24 10:09:17', '2013-05-08 10:09:17', 1),
(156, 0, '7f3f26671bbd1a58246475af7a82169b', '2 weeks', 1, '2013-04-25 05:37:15', '2013-05-09 05:37:15', 1),
(185, 0, '9d092dfe065ad70a35e106ccd96ce538', '2 weeks', 1, '2013-04-25 09:29:46', '2013-05-09 09:29:46', 1),
(260, 0, 'b6e0b64b380bf357e0016971a4111164', '2 weeks', 1, '2013-05-06 05:10:11', '2013-05-20 05:10:11', 1),
(307, 0, '6171828cb6bdb93fba12d16591aadf91', '2 weeks', 1, '2013-05-10 06:38:39', '2013-05-24 06:38:39', 1),
(324, 4, '0f6ab006870492e4277734fe87aaeefc', '2 weeks', 0, '2013-05-11 05:11:28', '2013-05-25 05:11:28', 1),
(327, 0, 'c4ece05125e0cfb1a45d765b72c95456', '2 weeks', 1, '2013-05-11 05:19:00', '2013-05-25 05:19:00', 1),
(329, 4, 'c14ccc747491ad95170150a3cd195427', '2 weeks', 0, '2013-05-11 05:26:35', '2013-05-25 05:26:35', 1),
(330, 4, '42c40abd9cc586892f6e10952adfedc9', '2 weeks', 0, '2013-05-11 05:35:41', '2013-05-25 05:35:41', 1),
(331, 4, 'c58fd7471ee92d9b34129bbd59583e9b', '2 weeks', 0, '2013-05-11 05:36:11', '2013-05-25 05:36:11', 1),
(332, 4, 'db83f4cb79bc6665bf0e2085ab258072', '2 weeks', 0, '2013-05-11 05:36:48', '2013-05-25 05:36:48', 1),
(333, 4, '93b4da9811cd550e9a345ae7d5149553', '2 weeks', 0, '2013-05-11 05:38:37', '2013-05-25 05:38:37', 1),
(335, 4, 'aaead68a16bdbe5c3a2f59816a5bb7a3', '2 weeks', 0, '2013-05-11 05:40:07', '2013-05-25 05:40:07', 1),
(337, 4, '7abb56fe3887eeee95c43b14b130ba51', '2 weeks', 0, '2013-05-11 05:44:40', '2013-05-25 05:44:40', 1),
(338, 4, 'cee4f260fffa6460b4252b16402e85aa', '2 weeks', 0, '2013-05-11 05:45:29', '2013-05-25 05:45:29', 1),
(339, 4, '0e27703c04d090555875a0d23ee8c18f', '2 weeks', 0, '2013-05-11 05:45:47', '2013-05-25 05:45:47', 1),
(340, 4, '923685e546a7cefe0e86096c616fa004', '2 weeks', 0, '2013-05-11 05:48:36', '2013-05-25 05:48:36', 1),
(341, 0, 'c5eba02e1cdf880330ddaa4b0367d0b9', '2 weeks', 1, '2013-05-11 05:50:13', '2013-05-25 05:50:13', 1),
(342, 4, '23c6dd969db7bfe8523dfb5d6be05fbf', '2 weeks', 0, '2013-05-11 05:52:24', '2013-05-25 05:52:24', 1),
(343, 4, 'cb8b0a19b201127a4256df27fbc469f7', '2 weeks', 0, '2013-05-11 06:29:12', '2013-05-25 06:29:12', 1),
(345, 4, 'ba7135077c0556643631678f9bef1402', '2 weeks', 0, '2013-05-11 07:05:11', '2013-05-25 07:05:11', 1),
(346, 4, 'e9c3fde320e42aff7d77317f4a950fec', '2 weeks', 0, '2013-05-11 07:12:25', '2013-05-25 07:12:25', 1),
(348, 4, 'e4c12658b44eb1644f9a22087bfef875', '2 weeks', 0, '2013-05-11 07:15:38', '2013-05-25 07:15:38', 1),
(350, 4, '9ec949bec30c1d701adb629c2a3327c2', '2 weeks', 0, '2013-05-11 07:19:29', '2013-05-25 07:19:29', 1),
(352, 4, '2ddcb0780297e8f6019dbb6f74330c1c', '2 weeks', 0, '2013-05-11 07:24:10', '2013-05-25 07:24:10', 1),
(355, 4, '47428bf6fe9bd687980772cc9f754f2d', '2 weeks', 0, '2013-05-11 07:36:27', '2013-05-25 07:36:27', 1),
(357, 0, '55c7aabc23a20b44e1105f62d81f386d', '2 weeks', 1, '2013-05-11 09:10:11', '2013-05-25 09:10:11', 1),
(358, 4, '6b618c5be39cc230f5a4fc7420b42dd7', '2 weeks', 0, '2013-05-11 13:38:33', '2013-05-25 13:38:33', 1),
(360, 4, '714501cf5e1b331ea4265bd7a3b27b63', '2 weeks', 0, '2013-05-11 09:40:22', '2013-05-25 09:40:22', 1),
(365, 4, 'cbffc026f9c2401ec9df1c32d3ac0c60', '2 weeks', 0, '2013-05-11 10:40:51', '2013-05-25 10:40:51', 1),
(367, 0, '6c341ffa77647971765d8a967f197dcb', '2 weeks', 1, '2013-05-11 10:54:06', '2013-05-25 10:54:06', 1),
(368, 4, '800bab391a23d9c735ac7d94ee82155e', '2 weeks', 0, '2013-05-13 05:36:45', '2013-05-27 05:36:45', 1),
(370, 0, '423246846097902ab51c07f1e1d7d756', '2 weeks', 1, '2013-05-13 03:48:23', '2013-05-27 03:48:23', 1),
(371, 4, '7c9060d574396c414794fde6cfe60fbd', '2 weeks', 0, '2013-05-13 09:37:07', '2013-05-27 09:37:07', 1),
(372, 0, '64f476b04131f0f23a4751919d7fe419', '2 weeks', 1, '2013-05-13 07:24:09', '2013-05-27 07:24:09', 1),
(373, 4, '7527bda0d876e54994096fe39e014a91', '2 weeks', 0, '2013-05-13 13:37:32', '2013-05-27 13:37:32', 1),
(376, 0, 'b92a2eb45b49a61a49c6cca7c7b6cdbd', '2 weeks', 1, '2013-05-13 11:34:01', '2013-05-27 11:34:01', 1),
(377, 4, '137170337a9d1758ef6cd54e884d7c86', '2 weeks', 0, '2013-05-16 05:34:06', '2013-05-30 05:34:06', 1),
(393, 4, '005cdb453e4fbf47189f4f16fade02bb', '2 weeks', 0, '2013-05-16 05:13:57', '2013-05-30 05:13:57', 1),
(402, 4, 'f86052165af73978cf0d83349d029c0c', '2 weeks', 0, '2013-05-16 05:45:04', '2013-05-30 05:45:04', 1),
(403, 4, 'bb71aa2a08b6b1e665543d64feee8413', '2 weeks', 0, '2013-05-16 05:52:23', '2013-05-30 05:52:23', 1),
(405, 4, 'b632d04dac7d08560239583239d31734', '2 weeks', 0, '2013-05-16 06:34:31', '2013-05-30 06:34:31', 1),
(408, 4, '2eef2a93d61376c7c281424f9e5b3773', '2 weeks', 0, '2013-05-16 06:49:33', '2013-05-30 06:49:33', 1),
(410, 4, '3c53426f7002c2511415cd13d01cc170', '2 weeks', 0, '2013-05-16 08:30:20', '2013-05-30 08:30:20', 1),
(411, 4, '00b50dcea46a959112a2a5a58bf284cc', '2 weeks', 0, '2013-05-16 08:30:46', '2013-05-30 08:30:46', 1),
(414, 4, '15fed70edef9f7827f3af5d3aec53c2b', '2 weeks', 0, '2013-05-16 08:51:00', '2013-05-30 08:51:00', 1),
(416, 4, '752327a29a17735ef38a3d0056123ae4', '2 weeks', 0, '2013-05-16 08:54:20', '2013-05-30 08:54:20', 1),
(417, 18, '004da4833d478263da18038023c2f794', '2 weeks', 0, '2013-05-16 08:55:29', '2013-05-30 08:55:29', 1),
(426, 4, '0ca26ee9cddf4a1d13157bd4d0e3ad1b', '2 weeks', 0, '2013-05-17 06:32:28', '2013-05-31 06:32:28', 1),
(429, 4, '7532b6be6cd251d8dd00079aae010f34', '2 weeks', 0, '2013-05-17 07:21:59', '2013-05-31 07:21:59', 1),
(437, 4, 'f87565763ad899c2d923f33335617579', '2 weeks', 0, '2013-05-17 09:35:59', '2013-05-31 09:35:59', 1),
(438, 4, 'befa9e197b3c8ae3739cdbaaf71f184e', '2 weeks', 0, '2013-05-17 09:36:15', '2013-05-31 09:36:15', 1),
(439, 0, 'c918d61670ced773f8a8facf79588c49', '2 weeks', 1, '2013-05-17 09:42:47', '2013-05-31 09:42:47', 1),
(440, 4, '81fee76e101f36113378d6f9d8bac8b4', '2 weeks', 0, '2013-05-17 13:43:08', '2013-05-31 13:43:08', 1),
(441, 4, '52363db018e555ab1986d873411989ea', '2 weeks', 0, '2013-05-18 02:37:53', '2013-06-01 02:37:53', 1),
(445, 4, 'b0b1d82fabf45a456f6ffda1df1067c5', '2 weeks', 0, '2013-05-18 04:59:50', '2013-06-01 04:59:50', 1),
(447, 4, '019351c3acac5eb8905a53aba3be1664', '2 weeks', 0, '2013-05-18 05:01:10', '2013-06-01 05:01:10', 1),
(448, 4, '14da62f3fa1f3367fe106a3dacaf33cc', '2 weeks', 0, '2013-05-18 05:54:41', '2013-06-01 05:54:41', 1),
(449, 0, '1b2727a4a7b97f6f2c85802103ff21fb', '2 weeks', 1, '2013-05-18 06:19:07', '2013-06-01 06:19:07', 1),
(450, 4, 'cfbcdf823b630393b8601f2861fb4b3b', '2 weeks', 0, '2013-05-18 10:36:43', '2013-06-01 10:36:43', 1),
(455, 0, '6c8476c944e44a0c1192a559dfcf1030', '2 weeks', 1, '2013-05-18 08:29:32', '2013-06-01 08:29:32', 1),
(462, 0, 'ba74ace9c271b4df6fbf2a42c82bf29f', '2 weeks', 1, '2013-05-20 03:37:40', '2013-06-03 03:37:40', 1),
(465, 0, 'e03e171e66d13a262d966dc9250cf5e3', '2 weeks', 1, '2013-05-20 06:58:18', '2013-06-03 06:58:18', 1),
(467, 0, '4d6bbad8be50934d0726ffb264ffdabb', '2 weeks', 1, '2013-05-21 01:20:39', '2013-06-04 01:20:39', 1),
(469, 0, 'e51003aa604ec20d2af35c1eb1e7440c', '2 weeks', 1, '2013-05-21 08:21:18', '2013-06-04 08:21:18', 1),
(475, 4, '327648be7a469a3795a36cb5ff5c4f31', '2 weeks', 0, '2013-05-22 07:40:32', '2013-06-05 07:40:32', 1),
(477, 0, '9abceda15d5a3f1400783826192c9587', '2 weeks', 1, '2013-05-22 05:26:33', '2013-06-05 05:26:33', 1),
(479, 0, '5069f486c866d4e60a92bf3fcffb1b09', '2 weeks', 1, '2013-05-22 08:42:39', '2013-06-05 08:42:39', 1),
(480, 0, '4f11868e4f560f68b9c1b11d87a57a12', '2 weeks', 1, '2013-05-22 13:37:20', '2013-06-05 13:37:20', 1),
(486, 4, '83d9dedd136398db4367a88475eb2239', '2 weeks', 0, '2013-05-23 10:11:59', '2013-06-06 10:11:59', 1),
(488, 0, '9c16a0feb765235c97fca68818bdb278', '2 weeks', 1, '2013-05-24 06:59:48', '2013-06-07 06:59:48', 1),
(491, 4, 'e2901aaa0ee7eafba8d86e3ad140a8e9', '2 weeks', 0, '2013-05-27 03:08:18', '2013-06-10 03:08:18', 1),
(493, 4, 'e0023d8872d2548ee780d16902f73e1b', '2 weeks', 0, '2013-05-27 04:51:49', '2013-06-10 04:51:49', 1),
(509, 0, '15977b93769fce1e67d9952ce447e3c1', '2 weeks', 1, '2013-06-05 04:46:24', '2013-06-19 04:46:24', 1),
(510, 4, 'ed548f366365c06bfa0ef72f320b4e8c', '2 weeks', 0, '2013-06-06 06:09:07', '2013-06-20 06:09:07', 1),
(512, 4, '3ce5a8ed5b59f65cf62af40ab0f372cc', '2 weeks', 0, '2013-06-06 02:13:11', '2013-06-20 02:13:11', 1),
(513, 4, '3555db323cacfcaa74a7492573d755af', '2 weeks', 0, '2013-06-06 03:03:06', '2013-06-20 03:03:06', 1),
(514, 0, '0d41e3e3f8159fc4f708489f2e61bc75', '2 weeks', 1, '2013-06-06 03:04:41', '2013-06-20 03:04:41', 1),
(515, 4, 'a762ac08d0b51eae28d8859c3507ee21', '2 weeks', 0, '2013-06-06 03:05:53', '2013-06-20 03:05:53', 1),
(518, 0, '18cf3dd53c3bc8102cf7b2f690e0f6bb', '2 weeks', 1, '2013-06-06 08:34:11', '2013-06-20 08:34:11', 1),
(520, 0, '3221b24a31c20d071d8b3f030206aa9d', '2 weeks', 1, '2013-06-06 09:16:24', '2013-06-20 09:16:24', 1),
(524, 0, '46a9fc9b48388bc1ea60ac17de803387', '2 weeks', 1, '2013-06-06 10:45:59', '2013-06-20 10:45:59', 1),
(528, 0, '6dd4383ee44947a2fd8e18e8b27889c6', '2 weeks', 1, '2013-06-07 05:37:54', '2013-06-21 05:37:54', 1),
(532, 4, '804a57c06e92e8860a8d6a12db74b446', '2 weeks', 0, '2013-06-07 10:21:44', '2013-06-21 10:21:44', 1),
(533, 4, 'b8e0c0ca2c99ee1c8d65ede5a0086cde', '2 weeks', 0, '2013-06-07 10:22:26', '2013-06-21 10:22:26', 1),
(534, 4, '639bde7a56c761d9f3bef3e3185b6d0e', '2 weeks', 0, '2013-06-07 10:23:45', '2013-06-21 10:23:45', 1),
(536, 0, '460fa651dd37ddbf6483292454386d9d', '2 weeks', 1, '2013-06-07 10:32:44', '2013-06-21 10:32:44', 1),
(537, 4, '2dc8daa5d2fa38bebb4acdb2cd776bc6', '2 weeks', 0, '2013-06-08 05:20:26', '2013-06-22 05:20:26', 1),
(538, 4, '534ca4dc52555eeb2f45b0a36eed39bf', '2 weeks', 0, '2013-06-08 01:21:40', '2013-06-22 01:21:40', 1),
(541, 4, 'd0f3a995565afd9f15603bcdda222f09', '2 weeks', 0, '2013-06-08 02:31:27', '2013-06-22 02:31:27', 1),
(542, 4, '9c52f9f28f98e39e13247619dbb40829', '2 weeks', 0, '2013-06-08 02:32:28', '2013-06-22 02:32:28', 1),
(543, 4, 'e0e7de587d6724395dc2384cb654c711', '2 weeks', 0, '2013-06-08 02:34:19', '2013-06-22 02:34:19', 1),
(544, 4, 'ab47c8feb59adf57a111b192646c59d9', '2 weeks', 0, '2013-06-08 02:35:05', '2013-06-22 02:35:05', 1),
(545, 4, 'aa410337e4fe822c3f2a273c568492f8', '2 weeks', 0, '2013-06-08 02:35:27', '2013-06-22 02:35:27', 1),
(546, 4, '53c78187a8654c559b9e53f912955294', '2 weeks', 0, '2013-06-08 02:35:53', '2013-06-22 02:35:53', 1),
(547, 4, '8f49526389b8bbb2e5513706cc301add', '2 weeks', 0, '2013-06-08 02:36:38', '2013-06-22 02:36:38', 1),
(548, 4, '627639bad3ce487b2fdc2dab8fa566ba', '2 weeks', 0, '2013-06-08 02:36:56', '2013-06-22 02:36:56', 1),
(549, 4, 'bde4873b506775a09a26b68518d9fd25', '2 weeks', 0, '2013-06-08 02:37:31', '2013-06-22 02:37:31', 1),
(550, 4, '9c17b3b074976d758e1dba963583aa5d', '2 weeks', 0, '2013-06-08 02:43:22', '2013-06-22 02:43:22', 1),
(551, 4, 'e1b6fb041fe1e9bfc1e07fc1813d727b', '2 weeks', 0, '2013-06-08 02:44:03', '2013-06-22 02:44:03', 1),
(552, 4, 'b2833a429a131bcff8d216bea7a2e622', '2 weeks', 0, '2013-06-08 02:44:29', '2013-06-22 02:44:29', 1),
(553, 4, '44a332145b10caaea4f7def2921ad6a0', '2 weeks', 0, '2013-06-08 02:53:16', '2013-06-22 02:53:16', 1),
(555, 4, '5f8e940bcb0ba42c7d720fb100f264e3', '2 weeks', 0, '2013-06-08 03:56:15', '2013-06-22 03:56:15', 1),
(556, 0, '4a4795e2e591ea749f56ff615f068d44', '2 weeks', 1, '2013-06-08 03:56:54', '2013-06-22 03:56:54', 1),
(557, 4, '9ab6e5549d26903dac8fd2750e2cf10c', '2 weeks', 0, '2013-06-08 09:33:46', '2013-06-22 09:33:46', 1),
(560, 0, '5f465c67d7b53a9be018c61ad70851e7', '2 weeks', 1, '2013-06-08 08:31:53', '2013-06-22 08:31:53', 1),
(561, 4, '54284fb222b271e066d6c257f6fcc391', '2 weeks', 0, '2013-06-08 13:37:43', '2013-06-22 13:37:43', 1),
(562, 4, '74e83cd5fb8493b537b7af7a18102ec6', '2 weeks', 0, '2013-06-08 09:47:10', '2013-06-22 09:47:10', 1),
(563, 4, 'c8a650a5136e183c5c57ece9cc6113f1', '2 weeks', 0, '2013-06-08 09:53:43', '2013-06-22 09:53:43', 1),
(564, 4, '6265d1052e6cb121a3401ac86595ec48', '2 weeks', 0, '2013-06-08 10:02:43', '2013-06-22 10:02:43', 1),
(565, 4, 'cbec15a81ba161944772b158046233a3', '2 weeks', 0, '2013-06-08 10:05:00', '2013-06-22 10:05:00', 1),
(566, 4, '7786b4176271c4759cc0c46eb7674c3e', '2 weeks', 0, '2013-06-08 10:10:03', '2013-06-22 10:10:03', 1),
(568, 4, 'a2fc84eefb3531fbc9820dd139808f5b', '2 weeks', 0, '2013-06-08 10:19:08', '2013-06-22 10:19:08', 1),
(569, 4, '49c7a42678c71f018f22c8862beddb6f', '2 weeks', 0, '2013-06-08 10:22:03', '2013-06-22 10:22:03', 1),
(570, 0, '6ba0fa3c392aed537cffec6d01b47d46', '2 weeks', 1, '2013-06-08 12:32:05', '2013-06-22 12:32:05', 1),
(571, 4, '320d502369d124fcdf3268e15ce101df', '2 weeks', 0, '2013-06-08 12:37:40', '2013-06-22 12:37:40', 1),
(572, 0, '5d66f025f6c78de042af6aa9ddb77673', '2 weeks', 1, '2013-06-08 12:40:07', '2013-06-22 12:40:07', 1),
(573, 4, '618e6db975d5631e543621780d4970c4', '2 weeks', 0, '2013-06-08 13:07:03', '2013-06-22 13:07:03', 1),
(574, 0, 'd062fe8751b7ce4fa7118925a59c3e42', '2 weeks', 1, '2013-06-10 01:37:40', '2013-06-24 01:37:40', 1),
(576, 20, 'de87d99a27068186d8fd345713dcea9d', '2 weeks', 0, '2013-06-20 09:22:22', '2013-07-04 09:22:22', 1),
(579, 0, '0a3baba38748f6a6d6a476786037b49b', '2 weeks', 1, '2013-07-01 02:49:59', '2013-07-15 02:49:59', 1),
(581, 0, 'cfc9a7bc797d1fcf12294851a33951cf', '2 weeks', 1, '2013-07-01 08:45:56', '2013-07-15 08:45:56', 1),
(593, 0, 'b54ef350bee916412c937f3b5026372e', '2 weeks', 1, '2013-07-04 03:36:36', '2013-07-18 03:36:36', 1),
(605, 0, 'f3abb17f4ac582d39632ab0698f86b5b', '2 weeks', 1, '2013-07-13 02:56:18', '2013-07-27 02:56:18', 1),
(616, 1, 'dc882abed252bf03d3bf3281466a7cb7', '2 weeks', 0, '2014-10-13 00:51:00', '2014-10-27 00:51:00', 1),
(607, 0, 'eef9584c9f7a91a18e390341ee52920d', '2 weeks', 1, '2013-07-13 05:58:12', '2013-07-27 05:58:12', 1),
(615, 1, 'af734d5ba03889cc2a42fc3a1adb4ce8', '2 weeks', 0, '2014-10-13 00:48:37', '2014-10-27 00:48:37', 1),
(614, 1, 'ebc1525dce7d4f56a14ac46d40aea68a', '2 weeks', 1, '2014-10-12 19:12:56', '2014-10-26 19:12:56', 1),
(613, 1, '20be0a01c811b4744988218f9aa2836d', '2 weeks', 0, '2014-10-12 17:30:29', '2014-10-26 17:30:29', 1),
(612, 1, '1f393d25dcf18ac8921df375059a8d85', '2 weeks', 0, '2014-10-12 17:19:47', '2014-10-26 17:19:47', 1),
(617, 1, 'eb427c1d13f83aab5e90721e55191d38', '2 weeks', 0, '2014-10-13 01:59:19', '2014-10-27 01:59:19', 1),
(618, 1, '076c1a80dac4241b531d69587a97dc40', '2 weeks', 1, '2014-10-13 02:02:34', '2014-10-27 02:02:34', 1),
(619, 1, '034e9b219a6f06bda53cfd7f8e25b629', '2 weeks', 0, '2014-10-13 02:58:33', '2014-10-27 02:58:33', 1),
(620, 1, '859c9faa6fdb9c1dbb0fccb65dd299fc', '2 weeks', 1, '2014-10-13 03:33:39', '2014-10-27 03:33:39', 1),
(621, 1, '724f6ec2d998282ada02c7d678598ea4', '2 weeks', 1, '2014-10-13 04:42:40', '2014-10-27 04:42:40', 1),
(622, 1, '0dff5eff17360268306611761c8fff65', '2 weeks', 0, '2014-10-13 05:47:38', '2014-10-27 05:47:38', 1),
(623, 1, '1cc7d5561071069b18f4b973a71bf6b4', '2 weeks', 0, '2014-10-13 18:35:10', '2014-10-27 18:35:10', 1),
(624, 1, '3a26e2badfed9526ead40ababcf5b003', '2 weeks', 0, '2014-10-13 19:03:36', '2014-10-27 19:03:36', 1),
(625, 1, '02418d6eb77471f4c8de4c931b580b77', '2 weeks', 1, '2014-10-13 19:06:52', '2014-10-27 19:06:52', 1),
(626, 1, '8c5c1d1dfb957d97b419ed4fb48b4744', '2 weeks', 0, '2014-10-13 23:52:58', '2014-10-27 23:52:58', 1),
(627, 1, 'd2f6e2258331fab28117f748a0342a67', '2 weeks', 1, '2014-10-14 05:41:06', '2014-10-28 05:41:06', 1),
(628, 1, 'dee0911984ca6c4ab2c057b599f4078d', '2 weeks', 0, '2014-10-14 09:46:43', '2014-10-28 09:46:43', 1),
(629, 1, 'ab10295395864b91455abed278bbc3a4', '2 weeks', 1, '2014-11-08 06:39:16', '2014-11-22 06:39:16', 1),
(630, 1, 'e68b1d1364ca3ed0e72cdea22b07be7a', '2 weeks', 1, '2014-11-08 08:33:50', '2014-11-22 08:33:50', 1),
(631, 1, '44f7434fa0031358daa597ef3cc42a31', '2 weeks', 0, '2014-11-09 23:38:05', '2014-11-23 23:38:05', 1),
(632, 1, '54fd13571863acf603e00a96b02cc0d9', '2 weeks', 0, '2014-11-10 01:43:41', '2014-11-24 01:43:41', 1),
(633, 1, '86fb6cba38cbe36651a9723ab45629d4', '2 weeks', 1, '2014-11-10 02:45:57', '2014-11-24 02:45:57', 1),
(634, 1, '009f6825fb80c53d0a17c95b40d284e8', '2 weeks', 1, '2014-11-10 02:58:20', '2014-11-24 02:58:20', 1),
(635, 1, 'fbd4639511f09e32420de2889800aa86', '2 weeks', 0, '2014-11-10 04:29:13', '2014-11-24 04:29:13', 1),
(636, 1, 'b1fc1cd0e91007366ae875beea9182c7', '2 weeks', 0, '2014-11-10 04:29:13', '2014-11-24 04:29:13', 1),
(637, 1, '2ed91e21314f19252ae3c8bd29b7af91', '2 weeks', 1, '2014-11-10 05:46:56', '2014-11-24 05:46:56', 1),
(638, 1, '69b11b99441f997222f74b5f64d7718a', '2 weeks', 0, '2014-11-10 05:57:08', '2014-11-24 05:57:08', 1),
(639, 1, '43d8fd75ad65ed2c3e1c2f0978fc2feb', '2 weeks', 0, '2014-11-10 06:44:42', '2014-11-24 06:44:42', 1),
(640, 1, '22dab312373d53ba10b4eeb16f4326db', '2 weeks', 1, '2014-11-10 06:46:51', '2014-11-24 06:46:51', 1),
(641, 1, '3e5d26a8ca3e164a71f36f3e14da6ff0', '2 weeks', 0, '2014-11-10 08:17:16', '2014-11-24 08:17:16', 1),
(642, 1, '75de430d172d0ee01f88772bcb1b833b', '2 weeks', 0, '2014-11-10 08:18:36', '2014-11-24 08:18:36', 1),
(643, 1, '03d9436b2353a1dcfe140ab45f085bee', '2 weeks', 0, '2014-11-10 08:44:22', '2014-11-24 08:44:22', 1),
(644, 1, '3a509a91589fab164cdafb9184569ec4', '2 weeks', 1, '2014-11-10 09:27:25', '2014-11-24 09:27:25', 1),
(645, 1, 'e78f5c10bcd13065a41700a2a7e55665', '2 weeks', 0, '2014-11-10 09:36:20', '2014-11-24 09:36:20', 1),
(646, 1, 'a489766636e57c493b0e832fd83ea194', '2 weeks', 1, '2014-11-10 23:51:34', '2014-11-24 23:51:34', 1),
(647, 1, '499e97aa9a661830eaa4c5784c12d15f', '2 weeks', 0, '2014-11-11 00:53:47', '2014-11-25 00:53:47', 1),
(648, 1, 'd84379e5dd3ebb6e1d0b84da8d414599', '2 weeks', 1, '2014-11-11 01:55:02', '2014-11-25 01:55:02', 1),
(649, 1, '78a8037ce03d86428e27ec02567d9395', '2 weeks', 1, '2014-11-11 04:20:54', '2014-11-25 04:20:54', 1),
(650, 1, 'e65bbb1bd63bdbc2e73fb735eb75e833', '2 weeks', 0, '2014-11-11 06:13:09', '2014-11-25 06:13:09', 1),
(651, 1, '0892e45f54bfbfe8d8f1b778273d46c7', '2 weeks', 0, '2014-11-11 07:53:30', '2014-11-25 07:53:30', 1),
(652, 1, 'b7585e92c45bb0b98aeaca8df9b7baee', '2 weeks', 1, '2014-11-11 10:37:09', '2014-11-25 10:37:09', 1),
(653, 1, '6a1567bd4ee22292b7592cc831dcd3c1', '2 weeks', 1, '2014-11-11 13:19:09', '2014-11-25 13:19:09', 1),
(654, 1, '5a697d563dd7cbb172c05df16785bad7', '2 weeks', 0, '2014-11-11 23:43:31', '2014-11-25 23:43:31', 1),
(655, 1, '376ecf134bd3da19a1cb2aa8ac03385f', '2 weeks', 1, '2014-11-12 01:22:16', '2014-11-26 01:22:16', 1),
(656, 1, 'cbaa5eb22b9a4fff069f3189c585040a', '2 weeks', 1, '2014-11-12 04:18:24', '2014-11-26 04:18:24', 1),
(657, 1, '9d64d70cb1253d2fc1eeb1a7a584c81e', '2 weeks', 1, '2014-11-12 04:56:08', '2014-11-26 04:56:08', 1),
(658, 1, 'e5ae968d75af69833a82f46d4fa040d2', '2 weeks', 0, '2014-11-12 05:15:10', '2014-11-26 05:15:10', 1),
(659, 1, '2e90238648ee91df2720415eea4cfa19', '2 weeks', 0, '2014-11-12 08:18:31', '2014-11-26 08:18:31', 1),
(660, 1, 'b815c4051068615d9afabbb4338bb9db', '2 weeks', 0, '2014-11-12 09:52:51', '2014-11-26 09:52:51', 1),
(661, 1, '75dbca8cf9a4dc8eb01e9cacd408c40c', '2 weeks', 0, '2014-11-12 10:24:37', '2014-11-26 10:24:37', 1),
(662, 1, '58e79fe9ca7a4634b46320e310a6b8b2', '2 weeks', 0, '2014-11-12 10:29:42', '2014-11-26 10:29:42', 1),
(663, 1, 'c6df063fb76d9ddea179f56c83097c0f', '2 weeks', 0, '2014-11-12 11:47:19', '2014-11-26 11:47:19', 1),
(664, 1, '13352a5f809d66b5b5f934573116f762', '2 weeks', 1, '2014-11-12 12:01:44', '2014-11-26 12:01:44', 1),
(665, 1, 'd3cc4cd26c3185d9846f621c504213ac', '2 weeks', 0, '2014-11-12 23:34:22', '2014-11-26 23:34:22', 1),
(666, 1, 'ea460f957c24adefc7d9e23d4387b6f2', '2 weeks', 0, '2014-11-12 23:55:46', '2014-11-26 23:55:46', 1),
(667, 1, '05e41bc433918f1020c91028ab89613c', '2 weeks', 0, '2014-11-13 07:38:52', '2014-11-27 07:38:52', 1),
(668, 1, '28679edcbbcdf6a9ac348890e7b1a562', '2 weeks', 1, '2014-11-13 08:03:26', '2014-11-27 08:03:26', 1),
(669, 1, '4bcd10a7a48e441e2d03d7e67282e681', '2 weeks', 1, '2014-11-14 00:15:23', '2014-11-28 00:15:23', 1),
(670, 1, '57f2ce49de9238f553485aec0705e72f', '2 weeks', 0, '2014-11-14 01:22:15', '2014-11-28 01:22:15', 1),
(671, 1, '09c6077caaf104bf2b8d13868647869c', '2 weeks', 1, '2014-11-14 06:03:16', '2014-11-28 06:03:16', 1),
(672, 1, '644afe707b0931f4270366c7e9048655', '2 weeks', 1, '2014-11-14 07:10:12', '2014-11-28 07:10:12', 1),
(673, 1, '2cedf7969ba31f7946e4af5b92facbfd', '2 weeks', 0, '2014-11-17 00:28:18', '2014-12-01 00:28:18', 1),
(674, 1, '9ca45d98e436b42601c28f1572f49c98', '2 weeks', 1, '2014-11-19 01:35:11', '2014-12-03 01:35:11', 1),
(675, 1, 'ab971aabbc8c2ec1b5ade5e6fef221b4', '2 weeks', 0, '2014-11-19 02:32:34', '2014-12-03 02:32:34', 1),
(676, 1, '6134be0349f21b65fa1b53c1cdd07906', '2 weeks', 0, '2014-11-19 02:46:26', '2014-12-03 02:46:26', 1),
(677, 1, '0f3c2a9fca158faa32614b7b0a273e39', '2 weeks', 0, '2014-11-19 02:59:04', '2014-12-03 02:59:04', 1),
(678, 1, '0f4439b1a104a6cb8bea7f5381f98e5d', '2 weeks', 0, '2014-11-19 03:05:41', '2014-12-03 03:05:41', 1),
(679, 1, 'bc59a3376905d03dd604f4bd0bff10ea', '2 weeks', 1, '2014-11-19 03:08:35', '2014-12-03 03:08:35', 1),
(680, 1, '6c3edaa0b93f33cf6eccddf133063f59', '2 weeks', 0, '2014-11-19 04:33:04', '2014-12-03 04:33:04', 1),
(681, 1, '0e76513872041f503f596616942bf717', '2 weeks', 1, '2014-11-19 05:25:21', '2014-12-03 05:25:21', 1),
(682, 1, '313c26c7ec10d37e8072763cc313bfb2', '2 weeks', 0, '2014-11-19 05:32:35', '2014-12-03 05:32:35', 1),
(683, 1, 'df4e5f2d75085aa05b7732997f6ae1b2', '2 weeks', 0, '2014-11-19 05:41:22', '2014-12-03 05:41:22', 1),
(684, 1, '46696fd64b7848507d1057147826d11f', '2 weeks', 1, '2014-11-19 06:08:57', '2014-12-03 06:08:57', 1),
(685, 1, 'a614b4102e21f2ccb28ba1faf12917f0', '2 weeks', 1, '2014-11-19 06:39:35', '2014-12-03 06:39:35', 1),
(686, 1, 'a9863670a344584e94ca0db738f4024a', '2 weeks', 0, '2014-11-19 23:38:40', '2014-12-03 23:38:40', 1),
(687, 1, 'a410246d9bf4356f92948d84176cea33', '2 weeks', 0, '2014-11-19 23:38:40', '2014-12-03 23:38:40', 1),
(688, 1, 'a35b9cf39a0744f799e9104933c020de', '2 weeks', 0, '2014-11-20 00:36:23', '2014-12-04 00:36:23', 1),
(689, 1, '6763616344d6eb7a2b7c3f666ffaa42d', '2 weeks', 1, '2014-11-20 02:23:45', '2014-12-04 02:23:45', 1),
(690, 1, 'c935d3bdd3652031c35639f221e2a45f', '2 weeks', 0, '2014-11-20 04:15:42', '2014-12-04 04:15:42', 1),
(691, 1, '55f010be0cd5169613254d912a8c3669', '2 weeks', 1, '2014-11-20 06:41:45', '2014-12-04 06:41:45', 1),
(692, 1, 'add1200f59140d6a4987e0f0d2c3b027', '2 weeks', 0, '2014-11-20 08:18:39', '2014-12-04 08:18:39', 1),
(693, 1, 'e849da40faa7b7c110adbd2233f39cc5', '2 weeks', 1, '2014-11-20 23:52:14', '2014-12-04 23:52:14', 1),
(694, 1, '89f941624783596c0f1ee38627857048', '2 weeks', 0, '2014-11-21 01:20:17', '2014-12-05 01:20:17', 1),
(695, 1, 'e84c1b24f50f42434520903a582cd119', '2 weeks', 0, '2014-11-21 01:37:47', '2014-12-05 01:37:47', 1),
(696, 1, '6093840066e58d4cd2c9c8a6fe390514', '2 weeks', 0, '2014-11-21 01:54:09', '2014-12-05 01:54:09', 1),
(697, 1, '1ccbf25da9f665466a0f143c92f05ede', '2 weeks', 0, '2014-11-21 02:41:50', '2014-12-05 02:41:50', 1),
(698, 1, '49eebf6018c89442a84eb8f4746eb322', '2 weeks', 1, '2014-11-21 08:29:07', '2014-12-05 08:29:07', 1),
(699, 1, 'c713b6210183d1ff7e25c126a1eadee2', '2 weeks', 1, '2014-11-21 08:31:00', '2014-12-05 08:31:00', 1),
(700, 1, 'ace612600881ebaffd2eb22e19fd2e78', '2 weeks', 1, '2014-11-21 23:42:54', '2014-12-05 23:42:54', 1),
(701, 1, '231303537a268ad364ee1576da9d442b', '2 weeks', 0, '2014-11-21 23:54:59', '2014-12-05 23:54:59', 1),
(702, 1, '9b8b2f4f6aa1f613117bc1615ce37ca3', '2 weeks', 0, '2014-11-22 01:30:56', '2014-12-06 01:30:56', 1),
(703, 1, '7bc82303c2104fc4f1087f827da6c544', '2 weeks', 0, '2014-11-22 01:41:25', '2014-12-06 01:41:25', 1),
(704, 1, 'c85fbb03495cbe0e7b5e300f1d207b98', '2 weeks', 0, '2014-11-22 01:58:11', '2014-12-06 01:58:11', 1),
(705, 1, 'ea75e7c619737145cb9bf7a685fb336b', '2 weeks', 0, '2014-11-22 04:36:29', '2014-12-06 04:36:29', 1),
(706, 1, '5be8f259c4832a204276067d9256264c', '2 weeks', 0, '2014-11-22 05:48:11', '2014-12-06 05:48:11', 1),
(707, 1, 'ef03b1e31bb3c302e17fe369594d484f', '2 weeks', 0, '2014-11-22 05:49:08', '2014-12-06 05:49:08', 1),
(708, 1, 'c50a346b839a1a9099b4ad4d4fa7a75e', '2 weeks', 1, '2014-11-22 06:07:15', '2014-12-06 06:07:15', 1),
(709, 1, 'e522dd9189cf3becf346b1ac2cf39a78', '2 weeks', 1, '2014-11-22 07:54:48', '2014-12-06 07:54:48', 1),
(710, 1, '166c40a17f5799a38c7c44ca6d67db13', '2 weeks', 1, '2014-11-23 23:41:43', '2014-12-07 23:41:43', 1),
(711, 1, '01efbe02e5a23d733d1fc5d0f8e4975c', '2 weeks', 0, '2014-11-25 00:09:18', '2014-12-09 00:09:18', 1),
(712, 1, '17898c55bffc13b4a88c03c26bac7fe3', '2 weeks', 0, '2014-11-25 00:20:25', '2014-12-09 00:20:25', 1),
(713, 1, 'a0fd8561d11d0aee97ba68ed5a0de482', '2 weeks', 0, '2014-11-25 00:44:57', '2014-12-09 00:44:57', 1),
(714, 1, 'fc3a26959b6a3f0ba013665274be7708', '2 weeks', 0, '2014-11-25 00:47:59', '2014-12-09 00:47:59', 1),
(715, 1, 'd82a9d86672f7136f706633b5f51db8f', '2 weeks', 0, '2014-11-25 00:48:26', '2014-12-09 00:48:26', 1),
(716, 1, '3e631e21b3c16767c6375634643f6d19', '2 weeks', 0, '2014-11-25 00:52:30', '2014-12-09 00:52:30', 1),
(717, 1, '06537be49b86b9b4d7eafe9cead01fb7', '2 weeks', 0, '2014-11-25 01:12:41', '2014-12-09 01:12:41', 1),
(718, 1, '425a69db580e41e95620a18d30ba6164', '2 weeks', 1, '2014-11-25 01:41:32', '2014-12-09 01:41:32', 1),
(719, 1, 'bfec576486dcd91a3c390ccfd98fdcb6', '2 weeks', 0, '2014-11-25 04:41:37', '2014-12-09 04:41:37', 1),
(720, 1, '80310ee47a349668d96570eea7541d07', '2 weeks', 0, '2014-11-25 05:52:08', '2014-12-09 05:52:08', 1),
(721, 1, '0681c92e4d17081563d375af01fe2d7e', '2 weeks', 0, '2014-11-25 06:01:05', '2014-12-09 06:01:05', 1),
(722, 1, 'e9c1044134f215da6ccb574719482b41', '2 weeks', 0, '2014-11-25 06:07:11', '2014-12-09 06:07:11', 1),
(723, 1, '7f650f90ba15d9db3b8a2108849e1ac9', '2 weeks', 1, '2014-11-25 09:43:04', '2014-12-09 09:43:04', 1),
(724, 1, '0928ea76e142a35942ee4cf339c1c241', '2 weeks', 1, '2014-11-26 00:33:55', '2014-12-10 00:33:55', 1),
(725, 1, '3c3cfdcf4d4192b129fee155c928450b', '2 weeks', 0, '2014-11-26 03:38:09', '2014-12-10 03:38:09', 1),
(726, 1, 'd1130e18c7aabd62a47e432a2e540798', '2 weeks', 1, '2014-11-26 03:38:23', '2014-12-10 03:38:23', 1),
(727, 1, 'c610d158bec74ae0eab4410ebf8d4f51', '2 weeks', 1, '2014-11-26 03:47:22', '2014-12-10 03:47:22', 1),
(728, 1, '578f388316c35ad4702dd27936ba8f79', '2 weeks', 1, '2014-11-26 07:59:33', '2014-12-10 07:59:33', 1),
(729, 1, 'eec80f8c6b14a55fdbfc6f339c080e1a', '2 weeks', 1, '2014-11-26 08:39:54', '2014-12-10 08:39:53', 1),
(730, 1, 'be2e2619d59488acc2b1e0b532f732ee', '2 weeks', 0, '2014-11-26 09:28:10', '2014-12-10 09:28:10', 1),
(731, 1, 'd4d5f6dba3f6c53b952c6d16e9a6a458', '2 weeks', 1, '2014-11-28 06:38:50', '2014-12-12 06:38:50', 1),
(732, 1, 'd449140d6ba8794aca222c632cc070d3', '2 weeks', 1, '2014-11-28 23:57:22', '2014-12-12 23:57:22', 1),
(733, 1, '0948a45985bf3b445c56340a4a2d7e4d', '2 weeks', 1, '2014-11-29 01:08:17', '2014-12-13 01:08:17', 1),
(734, 1, 'f78cf1fcb4e841f4b8ea2a00d38f1f53', '2 weeks', 0, '2014-11-29 03:19:02', '2014-12-13 03:19:02', 1),
(735, 1, '22b7019e3e20ead97eb2c306a54d2291', '2 weeks', 0, '2014-11-29 03:58:13', '2014-12-13 03:58:13', 1),
(736, 1, 'af586863c8685cb41520dcefdb9bae7f', '2 weeks', 0, '2014-12-01 05:58:21', '2014-12-15 05:58:21', 1),
(737, 1, '2a6c81aa6b03a148e1f31127656977a3', '2 weeks', 0, '2015-01-06 08:30:42', '2015-01-20 08:30:42', 1),
(738, 1, '002f31fb57e48e0efa2f697a81d06227', '2 weeks', 0, '2015-02-04 04:24:09', '2015-02-18 04:24:09', 1),
(739, 1, 'c3ede95b24ab104b338f5dd83ba47237', '2 weeks', 0, '2015-02-04 04:45:33', '2015-02-18 04:45:33', 1),
(740, 1, '762c851ba2a6874b7fc2951b834cf204', '2 weeks', 1, '2015-02-04 05:10:20', '2015-02-18 05:10:20', 1),
(741, 1, 'ebd0409d7133d067d608d1b67e9d5184', '2 weeks', 0, '2015-02-04 06:50:08', '2015-02-18 06:50:08', 1),
(742, 1, '5399457fb7ef21393e4d137239e917ce', '2 weeks', 0, '2015-02-04 06:58:36', '2015-02-18 06:58:36', 1),
(743, 1, 'e42a5292f71e5c8c926a917ad5f9497c', '2 weeks', 0, '2015-02-04 07:00:12', '2015-02-18 07:00:12', 1),
(744, 1, 'b939650fd078df65188591d6cbf53022', '2 weeks', 0, '2015-02-04 07:06:07', '2015-02-18 07:06:07', 1),
(745, 1, '5b0cec7671c8ee6d4bfbfb90f3068e4f', '2 weeks', 0, '2015-02-04 07:09:14', '2015-02-18 07:09:14', 1),
(746, 1, 'cbb6b8d56096ceec236bd28d21b6b6f6', '2 weeks', 0, '2015-02-04 07:18:56', '2015-02-18 07:18:56', 1),
(747, 1, '444abb2f627876be5908481b321af312', '2 weeks', 0, '2015-02-04 07:35:44', '2015-02-18 07:35:44', 1),
(748, 1, 'd6eb253952c2492f2985576fa80df0d2', '2 weeks', 0, '2015-02-04 07:51:17', '2015-02-18 07:51:17', 1),
(749, 1, 'ecdf7c235a0998d15c0a53da397c8f4b', '2 weeks', 0, '2015-02-04 08:08:51', '2015-02-18 08:08:51', 1),
(750, 1, '85ce937983b466b581ef18f15b18b5fc', '2 weeks', 0, '2015-02-04 08:37:10', '2015-02-18 08:37:10', 1),
(751, 1, 'be7e4b170436c97f5116f9bca05f4903', '2 weeks', 0, '2015-02-04 09:05:26', '2015-02-18 09:05:26', 1),
(752, 1, '93e06295286fd599ce6bdf72b3f95a37', '2 weeks', 0, '2015-02-04 09:14:34', '2015-02-18 09:14:34', 1),
(753, 1, 'fc108ccb8e484537c6fe5908ee3d685d', '2 weeks', 0, '2015-02-04 09:33:39', '2015-02-18 09:33:39', 1),
(754, 1, '0395262ae018b184d6978b9e877a473b', '2 weeks', 0, '2015-02-04 09:35:44', '2015-02-18 09:35:44', 1),
(755, 1, '33d31b9740f4ba95e1954802c455730a', '2 weeks', 0, '2015-02-04 09:45:13', '2015-02-18 09:45:13', 1),
(756, 1, 'fd47d695bbbb3b5e0d97b5497053f0a0', '2 weeks', 0, '2015-02-04 09:54:21', '2015-02-18 09:54:21', 1),
(757, 1, '31ab2eab40876e5b03398156da6a6d65', '2 weeks', 1, '2015-02-04 09:57:19', '2015-02-18 09:57:19', 1),
(758, 1, '3deb7c1a610067c9c51ab204cfae857f', '2 weeks', 1, '2015-02-04 10:43:44', '2015-02-18 10:43:44', 1),
(759, 1, '7abf28ca416e172f132fc3f575b7e248', '2 weeks', 0, '2015-02-04 10:52:05', '2015-02-18 10:52:05', 1),
(760, 1, 'b0f189c864e1c2f3eb7aad530c6d8f9f', '2 weeks', 0, '2015-02-04 11:36:04', '2015-02-18 11:36:04', 1),
(761, 1, '7732754e8cd341cdceae20a718057ea0', '2 weeks', 0, '2015-02-05 02:17:20', '2015-02-19 02:17:20', 1),
(762, 1, '64c7c5b068c8d91888102d62183676a6', '2 weeks', 0, '2015-02-05 02:45:21', '2015-02-19 02:45:21', 1),
(763, 1, '0bb7b5c62e8fec58c7e8464de0b172d5', '2 weeks', 0, '2015-02-05 04:05:29', '2015-02-19 04:05:29', 1),
(764, 1, '0f955c047f2fa9b21055cba1ac650abc', '2 weeks', 0, '2015-02-05 04:40:23', '2015-02-19 04:40:23', 1),
(765, 1, '74c112041626ec615f9c266767d608b0', '2 weeks', 0, '2015-02-05 05:30:20', '2015-02-19 05:30:20', 1),
(766, 1, 'd4cb5fffe65df490f1a6cf289c0278be', '2 weeks', 0, '2015-02-05 05:37:01', '2015-02-19 05:37:01', 1),
(767, 1, 'acd18c906cc23d8a248e678a57b55330', '2 weeks', 1, '2015-02-05 05:46:38', '2015-02-19 05:46:38', 1),
(768, 1, '9f8f12d697a0dab9c8917676f23a2b22', '2 weeks', 1, '2015-02-05 05:46:42', '2015-02-19 05:46:42', 1),
(769, 1, '6cbeb85068ef244f8642a4414f379b4f', '2 weeks', 0, '2015-02-05 05:49:19', '2015-02-19 05:49:19', 1),
(770, 1, '32a547b6c56da0c2bab5e438ebaa0b55', '2 weeks', 0, '2015-02-05 05:58:26', '2015-02-19 05:58:26', 1),
(771, 1, '8cdb8ad41ae4870757921aaaca46d344', '2 weeks', 0, '2015-02-05 06:03:17', '2015-02-19 06:03:17', 1),
(772, 1, '689465ca2c69929a13df5a531c182772', '2 weeks', 0, '2015-02-05 06:04:43', '2015-02-19 06:04:43', 1),
(773, 1, '6866378087cf75c3387062ace730f3df', '2 weeks', 1, '2015-02-05 06:04:46', '2015-02-19 06:04:46', 1),
(774, 1, '7fbaf005013808a97dfc149f3f8a1258', '2 weeks', 0, '2015-02-05 06:32:39', '2015-02-19 06:32:39', 1),
(775, 1, '000349e551d383c14f960dc875bf8ed4', '2 weeks', 0, '2015-02-05 06:36:59', '2015-02-19 06:36:59', 1),
(776, 1, '65fef81ab558d6fe09d748ee94e712cb', '2 weeks', 0, '2015-02-05 06:46:34', '2015-02-19 06:46:34', 1),
(777, 1, 'd3856f660ebc15db68ec5b2e60474dcf', '2 weeks', 0, '2015-02-05 06:59:30', '2015-02-19 06:59:30', 1),
(778, 1, '8b2c4a6531ad98ef0ad85eb70465e09b', '2 weeks', 1, '2015-02-05 07:42:32', '2015-02-19 07:42:32', 1),
(779, 1, '3c551d763a56e5f783dea1697a61a1a3', '2 weeks', 1, '2015-02-05 08:32:47', '2015-02-19 08:32:47', 1),
(780, 1, '1af0852cac552852f2140d52270cf1d1', '2 weeks', 0, '2015-02-05 09:03:25', '2015-02-19 09:03:25', 1),
(781, 1, 'a5049c3aaade225873092178ea07ad21', '2 weeks', 0, '2015-02-06 01:12:00', '2015-02-20 01:12:00', 1),
(782, 1, 'd14cda991dece96605d231148a22c875', '2 weeks', 0, '2015-02-06 01:19:12', '2015-02-20 01:19:12', 1),
(783, 1, 'e22379f41229c8a722d5565c46e52f6d', '2 weeks', 0, '2015-02-14 00:49:04', '2015-02-28 00:49:04', 1),
(784, 1, 'd1f1432498bc4bb3adfeeccc1ab75005', '2 weeks', 0, '2015-02-14 01:20:16', '2015-02-28 01:20:16', 1),
(785, 1, '98c93dbdf493a83625df377c53a18606', '2 weeks', 1, '2015-02-14 01:27:52', '2015-02-28 01:27:52', 1),
(786, 1, '1ef597a420984aa02f975c2f9f2d4c8b', '2 weeks', 0, '2015-02-19 01:37:10', '2015-03-05 01:37:10', 1),
(787, 1, '6d93f6491370fc1043771373583bcf6e', '2 weeks', 0, '2015-02-19 01:38:48', '2015-03-05 01:38:48', 1),
(788, 1, '7e0521b38f5f20c5f3f87e9a34273b4f', '2 weeks', 0, '2015-02-19 01:59:14', '2015-03-05 01:59:14', 1),
(789, 1, 'd079b2aa7c5a62c8696acc043caee9d2', '2 weeks', 0, '2015-02-20 01:53:12', '2015-03-06 01:53:12', 1),
(790, 1, '1614facbf0b68a84358ecb45d5e5f95d', '2 weeks', 0, '2015-02-20 06:12:28', '2015-03-06 06:12:28', 1),
(791, 1, '763f35f779c9bafc68e19cc65c37796c', '2 weeks', 0, '2015-03-19 08:27:59', '2015-04-02 08:27:59', 1),
(792, 1, 'f787e2fef8feeba4616c768b83b086ca', '2 weeks', 1, '2015-03-20 00:26:32', '2015-04-03 00:26:32', 1),
(793, 1, '2003c2fed623549aed485fe24673be74', '2 weeks', 1, '2015-03-23 01:02:06', '2015-04-06 01:02:06', 1),
(794, 1, 'a0140ab8e22f513ea407603161ef577a', '2 weeks', 1, '2015-03-27 02:15:45', '2015-04-10 02:15:45', 1),
(795, 1, '05645a1d5f17f78454cdb1d5f775fac0', '2 weeks', 0, '2015-03-31 14:16:53', '2015-04-14 14:16:53', 1),
(796, 1, 'ded66e94b86b960c0506c873231f51f1', '2 weeks', 0, '2015-05-04 04:23:06', '2015-05-18 04:23:06', 1),
(797, 1, '58870d1b114e268d6ef0f0529664df84', '2 weeks', 0, '2015-05-07 01:19:04', '2015-05-21 01:19:04', 1),
(798, 1, '3c56701733c4ca442337d2bef41f15e5', '2 weeks', 0, '2015-05-08 03:25:43', '2015-05-22 03:25:43', 1),
(799, 1, '588d86149e409c4bc677e897dde44c30', '2 weeks', 0, '2015-05-08 03:38:30', '2015-05-22 03:38:30', 1),
(800, 1, 'c550c92c786330f08707ea0607eea3c5', '2 weeks', 0, '2015-05-08 03:40:09', '2015-05-22 03:40:09', 1),
(801, 1, 'd1b05a1c3d9f503f943bca4d4a011729', '2 weeks', 0, '2015-05-09 08:45:04', '2015-05-23 08:45:04', 1),
(802, 1, 'c77dd0efc8bfc4c67dc9ef52e8e37a91', '2 weeks', 0, '2015-05-10 11:34:41', '2015-05-24 11:34:41', 1),
(803, 1, '1877f8df6755e02919e90b0f157ccc59', '2 weeks', 0, '2015-05-15 02:41:37', '2015-05-29 02:41:37', 1),
(804, 1, '9d370bd58a9f7f517ca93ffec8b028d6', '2 weeks', 0, '2015-05-15 02:43:28', '2015-05-29 02:43:28', 1),
(805, 1, 'acc4f2e84409ca2a23cef1f61487e4fe', '2 weeks', 0, '2015-05-16 02:20:44', '2015-05-30 02:20:44', 1),
(806, 1, 'd34dda44c5d789299f65ee93bd86992f', '2 weeks', 0, '2015-05-21 02:47:29', '2015-06-04 02:47:29', 1),
(807, 1, '0e08e63b1fedc6682dc1b8b754b52574', '2 weeks', 0, '2015-05-26 03:24:03', '2015-06-09 03:24:03', 1),
(808, 1, '1e1097c593b29ba3ab47e5b5c66822c4', '2 weeks', 1, '2015-05-26 09:48:12', '2015-06-09 09:48:12', 1),
(809, 1, '438d57745c3c48479a441cfe9bc2a880', '2 weeks', 0, '2015-05-27 02:48:21', '2015-06-10 02:48:21', 1),
(810, 1, '77b784ad01d1bafd0eeb2a1c9b8d4dfa', '2 weeks', 0, '2015-06-04 02:31:47', '2015-06-18 02:31:47', 1),
(811, 1, '03a283fa229b9ea567d15bc55e4f10c0', '2 weeks', 0, '2015-06-24 09:27:24', '2015-07-08 09:27:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  `position` char(40) DEFAULT 'navigation',
  `slug` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `position`, `slug`) VALUES
(1, 'ABOUT US', 'navigation', 'about-us'),
(2, 'DEPARTMENT', 'navigation', 'department'),
(3, 'ACADEMIC', 'navigation', 'facalties'),
(4, 'ADMISSION', 'navigation', 'admission'),
(5, 'FACILITIES', 'navigation', 'FACILITIES-AT-A-GLANCE'),
(6, 'PLACEMENT', 'navigation', 'training-placement'),
(8, 'CONTACT', 'navigation1', 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `notice_boards`
--

DROP TABLE IF EXISTS `notice_boards`;
CREATE TABLE IF NOT EXISTS `notice_boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(255) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `slug` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `notice_boards`
--

INSERT INTO `notice_boards` (`id`, `title`, `description`, `url`, `active`, `created`, `modified`, `slug`) VALUES
(2, 'Industrial Training', '<p>All the 2<sup>nd</sup> &amp; 3<sup>rd</sup> Year students of (EE &amp; ETC) are hereby informed that an Industrial Training (Embedded System) is arranged at Gobindapur Sephali Memorial Polytechnic on 19.02.2015 from 11:00 A.m at Seminar Hall.</p>\r\n<p>So, The Interested students are hereby informed to attend the Industrial Training positively.</p>', 'Industrial Training', 1, '2015-02-19 02:00:22', '2015-02-19 02:00:22', 'Industrial Training'),
(3, 'Notice', '<p>Special Classes for training and Placement as Scheduled on every Sunday will be re-started on and from 22/02/2015.</p>\r\n<p>So, the interested students of Gobindapur Sephali Memorial Polytechnic are hereby informed to attend the Industrial training positively and also submit their name to the training and placement officer through Concerned H.O.Ds.</p>', 'Notice', 1, '2015-02-20 01:55:34', '2015-02-20 01:55:34', 'Notice'),
(4, 'Important Notice', '<p>All the students of 2010-2013 batches are hereby informed that they can collect their <strong>CERTIFICATE </strong>from office by showing their clearance certificate from 18/03/2015.</p>\r\n<p>So, all the students of 2010-2013 batches are advised to collect their <strong>CERTIFICATE </strong>as soon as possible.</p>', 'Important Notice', 1, '2015-03-19 08:30:44', '2015-03-20 00:27:13', 'Important Notice'),
(5, 'Campusing Notice', '<p><span style="font-size: 18pt;"><strong>NOTICE</strong></span> </p>\r\n<p>Students of 3rd Year Electrical, Electronics and Computer Science and<br /><br />Also Interested Students from Any Department are here by informed that<br /><br />a Campus Interview will be conducted by Xplresoft Pvt. Ltd. on 8th May,<br /><br />2015, at 11:00<br /><br />Name of the Company: - Xploresoft Pvt. Ltd.<br /><br />Website:-www.teamxplorsoft.com<br /><br />Reporting Time: - 10:00 A.M<br /><br />Venue:-Gobindapur Sephali Memorial Polytechnic.<br /><br />For further queries feel free to Contact: -9732991100.</p>\r\n<p>&nbsp;</p>', 'Campusing Notice', 1, '2015-05-07 01:21:05', '2015-05-08 03:41:42', 'Campusing Notice'),
(6, 'Notice', '<p>tpogsmp&nbsp;Facebook ID has been Hacked.All concerned are requested not to Interact with us.<br />Sudipta Sir</p>', 'Notice', 1, '2015-05-26 03:24:46', '2015-05-26 03:24:46', 'Notice');

-- --------------------------------------------------------

--
-- Table structure for table `otherinstitutes`
--

DROP TABLE IF EXISTS `otherinstitutes`;
CREATE TABLE IF NOT EXISTS `otherinstitutes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `otherinstitutes`
--

INSERT INTO `otherinstitutes` (`id`, `name`, `content`, `link`, `created`, `modified`) VALUES
(1, 'GOBINDAPUR SEPHALI MEMORIAL PTTI', 'GOBINDAPUR SEPHALI MEMORIAL PTTI', 'http://www.gsmpolytechnic.com', '2014-11-11 14:18:18', '2014-11-11 00:00:00'),
(2, 'Dinabandhu B.E.d college', 'Dinabandhu B.E.d college', 'http://www.dinabandhubed.com/', '2014-11-11 09:26:26', '2014-11-11 00:00:00'),
(3, 'Sephali Memorial pubilc school', 'Sephali Memorial pubilc school', 'http://www.gsmpolytechnic.com', '2014-11-11 00:00:00', '2014-11-11 00:00:00'),
(4, 'Sephali memorial private iti', 'Sephali memorial private iti', 'http://www.gsmpolytechnic.com', '2014-11-11 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(10) NOT NULL,
  `name` char(25) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `hits` int(11) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `album_id`, `name`, `picture`, `hits`, `description`) VALUES
(7, 20, 'Football', 'football-1423065636.jpg', 0, ''),
(8, 20, 'Football', 'football-1423067021.jpg', 0, ''),
(9, 20, 'Football', 'football-1423067058.jpg', 0, ''),
(10, 20, 'Football', 'football-1423067088.jpg', 0, ''),
(11, 20, 'Football', 'football-1423067116.jpg', 0, ''),
(12, 20, 'Football', 'football-1423067141.jpg', 0, ''),
(13, 20, 'Football', 'football-1423067174.jpg', 0, ''),
(14, 20, 'Football', 'football-1423067210.jpg', 0, ''),
(15, 20, 'Football', 'football-1423067476.jpg', 0, ''),
(16, 21, 'Fest', 'fest-1423067732.jpg', 0, ''),
(17, 21, 'Fest', 'fest-1423067781.jpg', 0, ''),
(18, 21, 'Fest', 'fest-1423067821.jpg', 0, ''),
(19, 21, 'Fest', 'fest-1423067847.jpg', 0, ''),
(20, 21, 'Fest', 'fest-1423067867.jpg', 0, ''),
(21, 21, 'Fest', 'fest-1423067889.jpg', 0, ''),
(22, 21, 'Fest', 'fest-1423067921.jpg', 0, ''),
(23, 21, 'Fest', 'fest-1423067940.jpg', 0, ''),
(24, 21, 'Fest', 'fest-1423067970.jpg', 0, ''),
(25, 21, 'Fest', 'fest-1423067997.jpg', 0, ''),
(26, 21, 'Fest', 'fest-1423068049.jpg', 0, ''),
(27, 21, 'Fest', 'fest-1423068081.jpg', 0, ''),
(28, 21, 'Fest', 'fest-1423068114.jpg', 0, ''),
(29, 21, 'Fest', 'fest-1423068156.jpg', 0, ''),
(30, 21, 'Fest', 'fest-1423068178.jpg', 0, ''),
(31, 21, 'Fest', 'fest-1423068207.jpg', 0, ''),
(32, 22, 'Puja', 'puja-1423068253.jpg', 0, ''),
(33, 22, 'Puja', 'puja-1423068324.jpg', 0, ''),
(34, 22, 'Puja', 'puja-1423068363.jpg', 0, ''),
(35, 22, 'Puja', 'puja-1423068422.jpg', 0, ''),
(36, 22, 'Puja', 'puja-1423068447.jpg', 0, ''),
(37, 22, 'Puja', 'puja-1423068478.jpg', 0, ''),
(38, 22, 'Puja', 'puja-1423068521.jpg', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `placement_notice_boards`
--

DROP TABLE IF EXISTS `placement_notice_boards`;
CREATE TABLE IF NOT EXISTS `placement_notice_boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(255) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `slug` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `placement_notice_boards`
--

INSERT INTO `placement_notice_boards` (`id`, `title`, `description`, `url`, `active`, `created`, `modified`, `slug`) VALUES
(1, '“SANMAR” CENTRAL CAMPUS DRIVE', '<h1 class="title single-title" style="text-align: center;">&ldquo;SANMAR&rdquo; CENTRAL CAMPUS DRIVE</h1>\r\n<h3>JOB DESCRIPTION</h3>\r\n<p>Campus Date &ndash; Will be announced later on<br />Venue &ndash; Will be announced later on</p>\r\n<p><strong>Eligibility Criteria</strong></p>\r\n<ul>\r\n<li>Over all 60% from Madhyamik to Diploma</li>\r\n<li>No history of arrears in any semester (Students having and supplementary exam are not allowed).</li>\r\n</ul>\r\n<p><strong>Package</strong></p>\r\n<ul>\r\n<li>Rs 1.84 LPA as CTC</li>\r\n</ul>\r\n<p><strong>Job Role</strong></p>\r\n<ul>\r\n<li>To carry out trouble shooting of Valves or Seals / new installation / Spares business generation &amp; provide support to all branches across India</li>\r\n<li>Installation of Valves / Seals</li>\r\n<li>Trouble shooting to Valves / Seals</li>\r\n<li>Providing technical support to customers by holding presentation for technicians / Engineers</li>\r\n<li>Maintaining data as per ISO requirement for service complaints</li>\r\n<li>Interacting with branch service and Engineering regarding Valve or Seal problems / failures / trouble shooting</li>\r\n<li>Providing feed back on Valve or Seal performance and competitors Valve or Seal performance</li>\r\n</ul>\r\n<p><strong>Location</strong></p>\r\n<ul>\r\n<li>Chennai, Pune, Mumbai, Baroda, Surat, Jamnagar, Bharuch, Delhi, Bhatinda or Kolkata</li>\r\n</ul>', 'placement', 1, '2014-11-29 02:27:09', '2015-05-08 03:35:15', 'p-notice-board'),
(2, 'HCL – CENTRAL CAMPUS', '<h1 class="title single-title" style="text-align: center;">HCL &ndash; CENTRAL CAMPUS</h1>\r\n<p>HCL Services Limited has been offered for ON campus drive for the students of Electrical &amp; Electronics &amp; Telecommunication.</p>\r\n<p>Interested students are requested to enroll their name by&nbsp;HCL&rsquo;s registration portal<br />URL &ndash;&nbsp;<strong><a href="http://hclite.in/campus/" target="_blank">http://hclite.in/campus/</a></strong></p>\r\n<p>after registration take a print out of the application form &amp; take sign &amp; seal from Training and Placement Officer of GSMP.</p>', 'HCL – CENTRAL CAMPUS', 1, '2015-02-05 06:35:23', '2015-02-05 06:35:23', 'HCL – CENTRAL CAMPUS'),
(3, 'Placement Notice', '<p style="text-align: center;"><span style="font-size: 14pt;">Conic Electronics will recruits ELECTRONICS Students through Personal Interview, to be held on&nbsp;09/01/2014 at S-1/1A Biplabi Anukul Chandra Street,Near Sabir Hotel Ground Floor.</span></p>', 'Placement Notice', 1, '2015-02-05 06:53:29', '2015-05-15 02:42:03', 'Placement Notice'),
(4, 'Placement Notice', '<p style="text-align: center;">Central Campus Drive for HCL</p>\r\n<p style="text-align: center;"><strong>Venue</strong> &ndash; Bishnupur Public Institute of Engineering, Bishnupur,Bankura.</p>\r\n<p style="text-align: center;"><strong>Date &amp; Time</strong></p>\r\n<p style="text-align: center;">19th Feb 2015 (9:45 AM) &ndash; Written<br /> 20th Feb 2015 &ndash; Personal Interview</p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', 'Placement Notice', 1, '2015-02-14 01:26:40', '2015-05-15 02:42:30', 'Placement Notice'),
(5, 'Cmapusing Notice', '<p style="text-align: center;"><span style="text-decoration: underline;"><strong>NOTICE</strong></span></p>\r\n<p style="text-align: center;"><strong>Students of 3rd Year Electrical, Electronics and Computer Science and</strong></p>\r\n<p style="text-align: center;"><strong>Also Interested Students from Any Department are here by informed that</strong></p>\r\n<p style="text-align: center;"><strong>a Campus Interview will be conducted by Xplresoft Pvt. Ltd. on 8th May,</strong></p>\r\n<p style="text-align: center;"><strong>2015, at 11:00</strong></p>\r\n<p style="text-align: center;"><strong>Name of the Company: - Xploresoft Pvt. Ltd.</strong></p>\r\n<p style="text-align: center;"><strong>Website:-www.teamxplorsoft.com</strong></p>\r\n<p style="text-align: center;"><strong>Reporting Time: - 10:00 A.M</strong></p>\r\n<p style="text-align: center;"><strong>Venue:-Gobindapur Sephali Memorial Polytechnic.</strong></p>\r\n<p style="text-align: center;"><strong>For further queries feel free to Contact: -9732991100.</strong></p>', 'Cmapusing Notice', 1, '2015-05-08 03:41:38', '2015-05-08 03:41:38', 'Cmapusing Notice'),
(6, 'Campusing Notice', '<p style="text-align: center;"><strong><span style="text-decoration: underline;">NOTICE</span></strong></p>\r\n<p style="text-align: center;">Campus Interview for all Depts. By Reputed BPOs Scheduled to be Held on 11.05.2015.</p>\r\n<p style="text-align: center;">&ldquo;Patil Rail&rdquo; for Civil only is likely to be confirmed on the same day (Final Confirmation to be notified on 10.05.2015) at night.</p>\r\n<p style="text-align: center;"><strong>Be Prepared and follow facebook / website</strong></p>\r\n<p style="text-align: center;">&nbsp;Our Face book link: Placement cell Nspc,</p>\r\n<p style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; Placement cell Gsmp.</p>\r\n<p style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Our website:&nbsp; <a href="http://www.nspolytechnic.org">www.nspolytechnic.org</a></p>\r\n<p style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; www.gsmpolytechnic.com</p>\r\n<div id="__if72ru4sdfsdfrkjahiuyi_once" style="display: none;">&nbsp;</div>\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display: none;">&nbsp;</div>\r\n<div id="__hggasdgjhsagd_once" style="display: none;">&nbsp;</div>', 'Campusing Notice', 1, '2015-05-09 08:46:38', '2015-05-15 02:44:42', 'Campusing Notice'),
(7, 'Campusing Notice', '<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p style="text-align: center;">NOTICE</p>\r\n<p style="text-align: center;">Campus Interview for all Depts. By Reputed BPOs Scheduled to be Held on 11.05.2015.</p>\r\n<p style="text-align: center;">Name of the Company: -1.AMIGOS SOLUTIONS PVT LTD.</p>\r\n<p style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.AMIGOS TECHNOLOGIES PVT LTD</p>\r\n<p style="text-align: center;">Venue:-Gobindapur Sephali Memorial Polytechnic</p>\r\n<p style="text-align: center;">Reporting Time: - 09:30 A.M</p>\r\n<p style="text-align: center;"><strong>Be Prepared and follow facebook / website</strong></p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;">Our Face book link: Placement cell Nspc,</p>\r\n<p style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Placement cell Gsmp.</p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;">Our website: <a href="http://www.nspolytechnic.org">www.nspolytechnic.org</a></p>\r\n<p style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; www.gsmpolytechnic.com</p>\r\n<div id="__if72ru4sdfsdfrkjahiuyi_once" style="display: none;">&nbsp;</div>\r\n<div id="__if72ru4sdfsdfruh7fewui_once" style="display: none;">&nbsp;</div>\r\n<div id="__hggasdgjhsagd_once" style="display: none;">&nbsp;</div>', 'Campusing Notice', 1, '2015-05-10 11:35:56', '2015-05-15 02:43:56', 'Campusing Notice');

-- --------------------------------------------------------

--
-- Table structure for table `placementcompanies`
--

DROP TABLE IF EXISTS `placementcompanies`;
CREATE TABLE IF NOT EXISTS `placementcompanies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weblink` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `placementcompanies`
--

INSERT INTO `placementcompanies` (`id`, `weblink`, `image`, `description`, `created`, `modified`) VALUES
(1, 'http://www.google.com', 'sdfsdf', 'sdfdsfsdf', '2014-11-19 05:04:38', '2014-11-19 05:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `placements`
--

DROP TABLE IF EXISTS `placements`;
CREATE TABLE IF NOT EXISTS `placements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_for` varchar(100) DEFAULT NULL,
  `branch` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `resi_address` varchar(255) NOT NULL,
  `present_address` varchar(255) NOT NULL,
  `stu_contact_no` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `guar_contact_no` varchar(100) NOT NULL,
  `date_of_birth` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `placements`
--

INSERT INTO `placements` (`id`, `form_for`, `branch`, `category`, `stu_name`, `father_name`, `resi_address`, `present_address`, `stu_contact_no`, `email`, `guar_contact_no`, `date_of_birth`) VALUES
(1, 'Placement', 'EE', 'JOB', 'Debabrata Mondal', 'Dilip Kumar Mondal', 'Vill.-Debipur,P.o-Churni Raghunathpur,P.S-Dhantala,Nadia,PIN-741501.', 'Vill.-Debipur,P.o-Churni Raghunathpur,P.S-Dhantala,Nadia,PIN-741501.', '8926452961', 'debabratamondal1950@gmail.com', '9476182171', '19/12/1991'),
(2, 'Placement', 'EE', 'JOB', 'Sanat Dutta', 'Ashis Dutta', 'Vill.+Post-Fului,P.S-Goghat,Dist.-Hooghly,PIN-712122.', 'Vill.+Post-Fului,P.S-Goghat,Dist.-Hooghly,PIN-712122.', '9647602356', 'sanatdutta149@gmail.com', '9735690838', '25/09/1993'),
(3, 'PASS OUT 2013 (BATCH 2010) FOR PLACEMENT', 'ELECTRICAL ENGINEERING', 'GENERAL', 'PRASUN BHATTACHERJEE', 'UTTAM BHATTACHERJEE', '2A/1 ANNAPURNA NAGAR, BENACHITY DURGAPUR-13, DIST- BURDWAN, PIN-713213, STATE- WEST BENGAL', '2A/1 ANNAPURNA NAGAR, BENACHITY DURGAPUR-13, DIST- BURDWAN, PIN-713213, STATE- WEST BENGAL', '9093135505', 'prasun.kit@gmail.com', '9474117960', '20-05-1990'),
(4, 'Gsmp', 'Mechanical', 'Diploma', 'Sandip laha', 'Sunil laha', 'Vill+p.o-nakunda;p.s-goghat;dist-hooghly;pin-712614', 'Vill+p.o-nakunda;p.s-goghat;dist-hooghly;pin-712614', '8967590028', 'Sandip.laha3@gmail.com', '9732662785', '22/04/1996'),
(5, '', 'E.E', 'Gen', 'Soumitra Chatterjee', 'Goutam Chatterjee', '2C/11,Bankim Chandra Avenue,B-Zone,Dgp-5,Pincode-713205,Burdwan,W.B', 'Do', '8436810484', 'soumitra.c1994@gmail.com', '9932831215', '04/01/1994'),
(6, 'ENGINEERING', 'CSE', 'GENERAL', 'SHOVAN BISWAS', 'BIKASH CHANDRA BISWAS', 'VILL-LOKENATH PUR, P.O-BETNA, P.S-HANSKHALI, DIST-NADIA', 'VILL-LOKENATH PUR, P.O-BETNA, P.S-HANSKHALI, DIST-NADIA', '8371800301', 'shovan.biswas359@gmail.com', '8371800301', '05.12.1996'),
(7, '', 'GSP', 'GEN-PWD', 'NURAJAMAL SK', 'SK SUKUR ALI', 'VILL KHARINDA PO DECHAPRA PS BHARATPUR', 'VILL KHARINDA PO DECHAPRA PS BHARATPUR', '9564703549', 'nurajamalsk786@gmail.com', '9564703549', '05-01-1992'),
(8, 'B-TECH', 'MECHANICAL', 'GENARAL', 'SUBHABRATA NAYEK', 'ARUP KUMAR NAYEK', 'VILL-JARA, PO-JARA, DIST-PASCHIM MEDINIPUR, PIN-721232', 'VILL-JARA, PO-JARA, DIST-PASCHIM MEDINIPUR, PIN-721232', '9635881969', 'nayek@iforge.co.in', '9934313956', '02/04/1998'),
(9, 'kashi nath mahato', '1', 'obc', 'kashi nath mahato', 'ankur mahato', 'palanja, purulia', 'chakirbon,purulia', '9635144080', 'kashinathmahato963@gmail.com', '9635331261', '19/12/1996'),
(10, '', 'Durgapur', 'Counceling', 'Debnath Mondal', 'Pradip Mondal', 'Benkura', 'Tarapur', '7864948873', 'Debnathmondal86@rediffmail.com', '9475186214', '08/06/1998'),
(11, 'B.tech', 'kotulpur', 'obc b', 'prakash lau', 'Asit lau', 'vill sundar chak p.o Bhagalpur dist Bankura ', 'vill Sundar chak p.o Bhagalpur Dist Bankura ', '8768481544', 'Prakashlau1@gmail.com', '9609215262', '18.06.1996'),
(12, '', 'civil', 'sc', 'kaushal kishor', 'kailasha ram', 'jharkhand ranchi', 'ranchi', '8862805794', 'jkrpkhl@gmail.com', '7870165322', '22/01/1997'),
(13, 'polytecnic', 'electrical', 'General', 'Mrityunjay upadhyay', 'Mr. Deendayal upadhyay', 'pandra,ratu road ,Ranchi, Jharlhand', 'pandra,ratu road ,Ranchi, Jharlhand', '7209396961', 'jaybaba1008@gmail.com', '7209396961', '09/10/1998'),
(14, 'Placement', 'Electrical ', 'General ', 'Aniruddha Mondal ', 'Debasis Mondal', 'Vill+P.O.- Orgram, D.T.- Burdwan, Pin-713128', 'Do-', '8900709347', 'aniruddha9153@gmail.com', '8927342618', '24/09/1992'),
(15, 'engineering ', 'hazaribag', 'obc 2', 'Dhiraj kumar gupta', 'krishna prasad gupta', 'singhrawan, chouparan, hazaribag, jharkhand, 825406', 'singhrawan, chouparan, hazaribag, jharkhand, 825406', '7870374844', 'dhirajkumargupta78@gmail.com', '7677180445', '05/02/1997'),
(16, 'Job placement', 'Bankura', 'OBC-B', 'Sougata Nandi', 'Basudeb Nandi', 'vill-hatgram P.O-hatgram P.S-Indpur Dist-Bankura Pin-722136', 'Do', '8768367513', 'sougatanandi892@gmail.com', '9933841598', '11/05/1994'),
(17, '126532', 'mechanical engineering', 'bc-2', 'ajit yadav', 'ghanshyam mahto', 'at-siyari,post-murna,thana-dhanwar,distic-giridih', 'do', '8651686536', 'yadavajit@gmail.com', '678', '12-08-1997'),
(18, 'Bhagalpur', 'Bhagalpur', 'Mechnical', 'Vikas kumar saha', 'Rampati saha', 'At-sutiyar para,post-jonka,p.s-rajmahal,dist-sahibganj', 'D/o', '8757626269', 'vikassaha787@gmail.com', '9534605065', '04/03/1998');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `description`) VALUES
(1, 'Civil Department', 'Civil_dept.jpg', 'Civil Department'),
(2, 'Computer Science Department', 'comp_sc.jpg', 'Computer Science Department'),
(3, 'Electrical Department', 'electrical_dept.jpg', 'Electrical Department'),
(4, 'Electronics Department', 'electronics_dept.jpg', 'Electronics Department'),
(5, 'Mechanical Department', 'mechanical_dept.jpg', 'Mechanical Department');

-- --------------------------------------------------------

--
-- Table structure for table `technicalqualifications`
--

DROP TABLE IF EXISTS `technicalqualifications`;
CREATE TABLE IF NOT EXISTS `technicalqualifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placement_id` int(11) NOT NULL,
  `exam_passed` varchar(100) NOT NULL,
  `year_of_passing` int(10) NOT NULL,
  `board` varchar(255) NOT NULL,
  `average_marks` float NOT NULL,
  `remarks` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=264 ;

--
-- Dumping data for table `technicalqualifications`
--

INSERT INTO `technicalqualifications` (`id`, `placement_id`, `exam_passed`, `year_of_passing`, `board`, `average_marks`, `remarks`) VALUES
(257, 1, 'Diploma', 2015, 'W.B.S.C.T.E', 75, '1St Div'),
(258, 2, 'Diploma', 2015, 'W.B.S.C.T.E', 75, '1st div'),
(259, 3, 'DIPLOMA IN ELECTRICAL ENGINEERING', 2013, 'WEST BENGAL STATE COUNCIL OF TECHNICAL EDUCATION', 81.5, '0'),
(260, 7, 'HS', 2011, 'WBCHSE', 49.2, 'NO'),
(261, 13, '10 th Board', 2015, 'CBSE', 7, 'QUALIFY'),
(262, 17, '2015', 2015, 'j.a.c', 69, '340'),
(263, 18, '10', 2015, 'Jac', 50, '50');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_permissions`
--

DROP TABLE IF EXISTS `user_group_permissions`;
CREATE TABLE IF NOT EXISTS `user_group_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group_id` int(10) unsigned NOT NULL,
  `controller` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `action` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `allowed` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=178 ;

--
-- Dumping data for table `user_group_permissions`
--

INSERT INTO `user_group_permissions` (`id`, `user_group_id`, `controller`, `action`, `allowed`) VALUES
(1, 1, 'Pages', 'display', 1),
(2, 2, 'Pages', 'display', 1),
(3, 3, 'Pages', 'display', 1),
(4, 1, 'UserGroupPermissions', 'index', 1),
(5, 2, 'UserGroupPermissions', 'index', 0),
(6, 3, 'UserGroupPermissions', 'index', 0),
(7, 1, 'UserGroupPermissions', 'update', 1),
(8, 2, 'UserGroupPermissions', 'update', 0),
(9, 3, 'UserGroupPermissions', 'update', 0),
(10, 1, 'UserGroups', 'index', 1),
(11, 2, 'UserGroups', 'index', 0),
(12, 3, 'UserGroups', 'index', 0),
(13, 1, 'UserGroups', 'addGroup', 1),
(14, 2, 'UserGroups', 'addGroup', 0),
(15, 3, 'UserGroups', 'addGroup', 0),
(16, 1, 'UserGroups', 'editGroup', 1),
(17, 2, 'UserGroups', 'editGroup', 0),
(18, 3, 'UserGroups', 'editGroup', 0),
(19, 1, 'UserGroups', 'deleteGroup', 1),
(20, 2, 'UserGroups', 'deleteGroup', 0),
(21, 3, 'UserGroups', 'deleteGroup', 0),
(22, 1, 'Users', 'index', 1),
(23, 2, 'Users', 'index', 0),
(24, 3, 'Users', 'index', 0),
(25, 1, 'Users', 'viewUser', 1),
(26, 2, 'Users', 'viewUser', 0),
(27, 3, 'Users', 'viewUser', 0),
(28, 1, 'Users', 'myprofile', 1),
(29, 2, 'Users', 'myprofile', 1),
(30, 3, 'Users', 'myprofile', 0),
(31, 1, 'Users', 'login', 1),
(32, 2, 'Users', 'login', 1),
(33, 3, 'Users', 'login', 1),
(34, 1, 'Users', 'logout', 1),
(35, 2, 'Users', 'logout', 1),
(36, 3, 'Users', 'logout', 1),
(37, 1, 'Users', 'register', 1),
(38, 2, 'Users', 'register', 1),
(39, 3, 'Users', 'register', 1),
(40, 1, 'Users', 'changePassword', 1),
(41, 2, 'Users', 'changePassword', 1),
(42, 3, 'Users', 'changePassword', 0),
(43, 1, 'Users', 'changeUserPassword', 1),
(44, 2, 'Users', 'changeUserPassword', 0),
(45, 3, 'Users', 'changeUserPassword', 0),
(46, 1, 'Users', 'addUser', 1),
(47, 2, 'Users', 'addUser', 0),
(48, 3, 'Users', 'addUser', 0),
(49, 1, 'Users', 'editUser', 1),
(50, 2, 'Users', 'editUser', 0),
(51, 3, 'Users', 'editUser', 0),
(52, 1, 'Users', 'dashboard', 1),
(53, 2, 'Users', 'dashboard', 1),
(54, 3, 'Users', 'dashboard', 0),
(55, 1, 'Users', 'deleteUser', 1),
(56, 2, 'Users', 'deleteUser', 0),
(57, 3, 'Users', 'deleteUser', 0),
(58, 1, 'Users', 'makeActive', 1),
(59, 2, 'Users', 'makeActive', 0),
(60, 3, 'Users', 'makeActive', 0),
(61, 1, 'Users', 'accessDenied', 1),
(62, 2, 'Users', 'accessDenied', 1),
(63, 3, 'Users', 'accessDenied', 1),
(64, 1, 'Users', 'userVerification', 1),
(65, 2, 'Users', 'userVerification', 1),
(66, 3, 'Users', 'userVerification', 1),
(67, 1, 'Users', 'forgotPassword', 1),
(68, 2, 'Users', 'forgotPassword', 1),
(69, 3, 'Users', 'forgotPassword', 1),
(70, 1, 'Users', 'makeActiveInactive', 1),
(71, 2, 'Users', 'makeActiveInactive', 0),
(72, 3, 'Users', 'makeActiveInactive', 0),
(73, 1, 'Users', 'verifyEmail', 1),
(74, 2, 'Users', 'verifyEmail', 0),
(75, 3, 'Users', 'verifyEmail', 0),
(76, 1, 'Users', 'activatePassword', 1),
(77, 2, 'Users', 'activatePassword', 1),
(78, 3, 'Users', 'activatePassword', 1),
(79, 1, 'Menus', 'view', 1),
(80, 2, 'Menus', 'view', 1),
(81, 3, 'Menus', 'view', 1),
(82, 1, 'Contents', 'view', 1),
(83, 2, 'Contents', 'view', 1),
(84, 3, 'Contents', 'view', 1),
(85, 1, 'Events', 'list_all_event', 1),
(86, 2, 'Events', 'list_all_event', 1),
(87, 3, 'Events', 'list_all_event', 1),
(88, 1, 'Events', 'delete', 1),
(89, 2, 'Events', 'delete', 0),
(90, 3, 'Events', 'delete', 0),
(91, 1, 'Events', 'edit', 1),
(92, 2, 'Events', 'edit', 0),
(93, 3, 'Events', 'edit', 0),
(94, 1, 'Events', 'add', 1),
(95, 2, 'Events', 'add', 0),
(96, 3, 'Events', 'add', 0),
(97, 1, 'Events', 'view', 1),
(98, 2, 'Events', 'view', 0),
(99, 3, 'Events', 'view', 0),
(100, 1, 'Events', 'index', 1),
(101, 2, 'Events', 'index', 0),
(102, 3, 'Events', 'index', 0),
(103, 1, 'NoticeBoards', 'list_all_notice', 1),
(104, 2, 'NoticeBoards', 'list_all_notice', 1),
(105, 3, 'NoticeBoards', 'list_all_notice', 1),
(106, 1, 'NoticeBoards', 'recent', 1),
(107, 2, 'NoticeBoards', 'recent', 1),
(108, 3, 'NoticeBoards', 'recent', 1),
(109, 1, 'Events', 'public_view', 1),
(110, 2, 'Events', 'public_view', 1),
(111, 3, 'Events', 'public_view', 1),
(112, 1, 'NoticeBoards', 'view', 1),
(113, 2, 'NoticeBoards', 'view', 1),
(114, 3, 'NoticeBoards', 'view', 1),
(115, 1, 'Placements', 'add', 1),
(116, 2, 'Placements', 'add', 1),
(117, 3, 'Placements', 'add', 1),
(118, 1, 'Otherinstitutes', 'list_all_institute', 1),
(119, 2, 'Otherinstitutes', 'list_all_institute', 1),
(120, 3, 'Otherinstitutes', 'list_all_institute', 1),
(121, 1, 'Blogs', 'add', 1),
(122, 2, 'Blogs', 'add', 1),
(123, 3, 'Blogs', 'add', 1),
(124, 1, 'Albums', 'delete', 1),
(125, 2, 'Albums', 'delete', 1),
(126, 3, 'Albums', 'delete', 1),
(127, 1, 'Albums', 'edit', 1),
(128, 2, 'Albums', 'edit', 1),
(129, 3, 'Albums', 'edit', 1),
(130, 1, 'Albums', 'add', 1),
(131, 2, 'Albums', 'add', 1),
(132, 3, 'Albums', 'add', 1),
(133, 1, 'Albums', 'view', 1),
(134, 2, 'Albums', 'view', 1),
(135, 3, 'Albums', 'view', 1),
(136, 1, 'Albums', 'index', 1),
(137, 2, 'Albums', 'index', 1),
(138, 3, 'Albums', 'index', 0),
(139, 1, 'NoticeBoards', 'admin_add', 1),
(140, 2, 'NoticeBoards', 'admin_add', 1),
(141, 3, 'NoticeBoards', 'admin_add', 1),
(142, 1, 'Blogs', 'blog_all', 1),
(143, 2, 'Blogs', 'blog_all', 1),
(144, 3, 'Blogs', 'blog_all', 1),
(145, 1, 'Blogs', 'blog_details', 1),
(146, 2, 'Blogs', 'blog_details', 1),
(147, 3, 'Blogs', 'blog_details', 1),
(148, 1, 'Albums', 'album_view', 1),
(149, 2, 'Albums', 'album_view', 1),
(150, 3, 'Albums', 'album_view', 1),
(151, 1, 'Albums', 'all_pictures', 1),
(152, 2, 'Albums', 'all_pictures', 1),
(153, 3, 'Albums', 'all_pictures', 1),
(154, 1, 'NoticeBoards', 'index', 1),
(155, 2, 'NoticeBoards', 'index', 1),
(156, 3, 'NoticeBoards', 'index', 1),
(157, 1, 'Technicalqualifications', 'add', 1),
(158, 2, 'Technicalqualifications', 'add', 1),
(159, 3, 'Technicalqualifications', 'add', 1),
(160, 1, 'Academicqualifications', 'add', 1),
(161, 2, 'Academicqualifications', 'add', 1),
(162, 3, 'Academicqualifications', 'add', 1),
(163, 1, 'Technicalqualifications', 'thank_you', 1),
(164, 2, 'Technicalqualifications', 'thank_you', 1),
(165, 3, 'Technicalqualifications', 'thank_you', 1),
(166, 1, 'PlacementNoticeBoards', 'list_all_notice', 1),
(167, 2, 'PlacementNoticeBoards', 'list_all_notice', 1),
(168, 3, 'PlacementNoticeBoards', 'list_all_notice', 1),
(169, 1, 'PlacementNoticeBoards', 'view', 1),
(170, 2, 'PlacementNoticeBoards', 'view', 1),
(171, 3, 'PlacementNoticeBoards', 'view', 1),
(172, 1, 'PlacementNoticeBoards', 'recent', 1),
(173, 2, 'PlacementNoticeBoards', 'recent', 1),
(174, 3, 'PlacementNoticeBoards', 'recent', 1),
(175, 1, 'PlacementNoticeBoards', 'index', 1),
(176, 2, 'PlacementNoticeBoards', 'index', 1),
(177, 3, 'PlacementNoticeBoards', 'index', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `alias_name` varchar(100) DEFAULT NULL,
  `allowRegistration` int(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `alias_name`, `allowRegistration`, `created`, `modified`) VALUES
(1, 'Admin', 'Admin', 0, '2014-10-13 02:48:13', '2014-10-13 02:48:13'),
(2, 'User', 'User', 1, '2014-10-13 02:48:13', '2014-10-13 02:48:13'),
(3, 'Guest', 'Guest', 0, '2014-10-13 02:48:13', '2014-10-13 02:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) unsigned DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` text,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email_verified` int(1) DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`username`),
  KEY `mail` (`email`),
  KEY `users_FKIndex1` (`user_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_group_id`, `username`, `password`, `salt`, `email`, `first_name`, `last_name`, `email_verified`, `active`, `ip_address`, `created`, `modified`) VALUES
(1, 1, 'admin', 'bd3147348dcae76e0a22704bfe671b28', '8baf26ea09517e7b7801c0071b041c89', 'admin@admin.com', 'Admin', '', 1, 1, '', '2014-10-13 02:48:13', '2014-10-12 17:19:26'),
(2, 2, 'Subhankarme10', '45513c07f3646a6572a6a751e80a7e48', '9784d6233946869c36e365522cda7177', 'subhankarme0@gmail.com', 'subhankar', 'biswas', 0, 1, '150.129.109.179', '2014-11-11 15:31:16', '2014-11-11 15:31:16'),
(3, 2, 'snehasismondal44@gmail.com', '9d1e40f4baca6da85767e9456af88d55', 'ea9198811487e1ca371722be4fdb44b0', 'snehasismondal44@gmail.com', 'snehasis', 'mondal', 0, 1, '107.167.107.97', '2014-11-11 23:09:32', '2014-11-11 23:09:32'),
(4, 2, 'souvikjash1993@gmail.com', 'd32d34e28dcefd65237bab46a2b253d2', 'c807cca9584a04c456f03249ba4f773b', 'souvikjash1993@gmail.com', 'SOUVIK', 'JASH', 0, 1, '103.31.190.92', '2015-02-04 07:02:52', '2015-02-04 07:02:52'),
(5, 2, 'mdakramsk', 'f5f5e25dafaa39bafc3b179afb9ec7ef', 'fdb5ee3c74e9911e59d3c50e3bc05bc1', 'md.akram.sk.10@gmail.com', 'Md Akram', 'Sk', 0, 1, '103.17.84.177', '2015-04-22 08:55:12', '2015-04-22 08:55:12'),
(6, 2, 'saikat hazra', '01aab5bbb869ddc1ca7ada259fd25b4e', '4b051eb5fcb48969b43848535d2bd84f', 'saikathazra8@gmail.com', 'saikat', 'hazra', 0, 1, '199.190.46.196', '2015-04-25 14:30:32', '2015-04-25 14:30:32'),
(7, 2, 'Amit ', 'c32fdecc4f4587fd446c65590563f233', '79e71756c9b18dd6ceb5dda5d2a5d4bf', 'senamit.akash@gmail.com', 'Amit', 'Sen', 0, 1, '37.228.104.43', '2015-05-23 05:04:13', '2015-05-23 05:04:13'),
(8, 2, 'Avijit ghosh', '467f21425b79fe0650aeb5e837a4b85b', '82988eceabe99db01f7dc7f35aa2d7fe', 'avijitg582@gmail.com', 'Avijit', 'ghosh', 0, 1, '37.228.104.121', '2015-05-23 10:44:13', '2015-05-23 10:44:13'),
(9, 2, 'ssssss', 'cd6a67d86cb0b7d76436ef0a77be0bb7', '2f149b2b6720f8c4a62be40ee904713e', 'ssssss230618@gmail.com', 'sss', 'sss', 0, 1, '168.235.194.203', '2015-05-24 11:15:06', '2015-05-24 11:15:06'),
(10, 2, 'Salman Quazi', 'babac2b3013b3989da3724ecf4933d0e', '58ba322cf88ad4bb210fb46a9b5bfa2e', 'quazisalman786@gmail.com', 'Salman ', 'Quazi', 0, 1, '168.235.194.11', '2015-05-25 11:10:51', '2015-05-25 11:10:51'),
(11, 2, '7031565953', '8368daac3e319147e0d0881482d02e6f', '904ad9bc3419f7a0f1188e9ccac6bc5f', 'kripa123@gmail.com', 'kripanath', 'sarkar', 0, 1, '101.210.255.232', '2015-05-27 00:03:20', '2015-05-27 00:03:20'),
(12, 2, 'ILOVEYOUPRADIP', '16f53bc697327f9d22394f0ea498fddc', '5aeef1232cbffc767432ccc86b1810b5', 'PRADIPB903@REDIFFMAIL.COM', 'PRADIP', 'BISWAS', 0, 1, '112.79.37.156', '2015-05-27 02:17:52', '2015-05-27 02:17:52'),
(13, 2, 'azuddin', '24d7a97162a2ba4a808cc3af196a9c5b', '8346c1ac4fec6f9ea1e8447a8dc70ce7', 'nasir123420@gmail.com', 'Azhar', 'uddin', 0, 1, '168.235.196.227', '2015-05-29 09:36:22', '2015-05-29 09:36:22'),
(14, 2, 'uddinazhar', 'bcdfd0ca0451c7dc5ade7e4bea63c0ad', '30fe26ed7181b90b304e848a456254da', 'azuddin123420@gmail.com', 'Azhar', 'uddin', 0, 1, '168.235.196.227', '2015-05-29 09:38:02', '2015-05-29 09:38:02'),
(15, 2, 'farhan', 'a700ce2e181a6b37240eeae12f7deeea', '927c3c3b5adbea2c115f42993dcdae09', 'uddin123420@gmail.com', 'Azhar', 'uddin', 0, 1, '168.235.196.227', '2015-05-29 09:39:06', '2015-05-29 09:39:06');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
