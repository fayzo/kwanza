-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2019 at 11:17 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_menya`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `target` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `album_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `target`, `album_image`, `created_on`) VALUES
(3, '61', '2019_341.jpg=2019_102.jpg=2019_143.jpg', '2019-06-10 20:27:48'),
(4, '61', '2019_8118587.jpg=2019_982585.jpg', '2019-06-11 09:15:06'),
(5, '61', '2019_6451qs.jpg=2019_7451xj.jpg', '2019-06-11 11:21:26'),
(6, '61', '2019_895908.jpg=2019_480032.jpeg=2019_703959.jpg', '2019-06-11 11:28:52'),
(7, '61', '2019_562585.jpg=2019_340032.jpeg=2019_143959.jpg=2019_678003.jpg=2019_603450.jpg=2019_965087.jpg', '2019-06-11 11:37:06'),
(8, '61', '2019_782019.xlsx=2019_642019.docx=2019_552019.xls', '2019-06-11 11:52:49'),
(9, '61', '2019_632018.pdf', '2019-06-11 12:17:41'),
(10, '61', '2019_292018.xls=2019_422018.xls', '2019-06-11 12:18:53'),
(11, '61', '2019_79images.jpg', '2019-06-19 23:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `apply_job`
--

CREATE TABLE `apply_job` (
  `cv_id` int(11) NOT NULL,
  `firstname0` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename0` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname0` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email0` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address0` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadfilecv` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadfilecertificates` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addition_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id0` int(11) NOT NULL,
  `job_id0` int(11) NOT NULL,
  `business_id0` int(11) NOT NULL,
  `created_on0` datetime NOT NULL,
  `deadline0` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apply_job`
--

INSERT INTO `apply_job` (`cv_id`, `firstname0`, `middlename0`, `lastname0`, `email0`, `address0`, `telephone`, `degree`, `field`, `uploadfilecv`, `uploadfilecertificates`, `addition_information`, `user_id0`, `job_id0`, `business_id0`, `created_on0`, `deadline0`) VALUES
(1, 'fa', 'fa', 'fa', 'shemafaysal@gmail.com', 'sd', '34343', '', '', '2019_52cove.pdf', '2019_29cove.pdf', 'sf', 61, 7, 61, '2019-05-27 13:23:42', '0000-00-00 00:00:00'),
(2, 'fa', 'fa', 'fa', 'shemafaysal@gmail.com', 'sdfds', '3132', '', '', '2019_652018.xls=2019_622018.pdf=2019_43apa .docx', '2019_50appl.pdf=2019_53appl.pdf', 'fa', 61, 7, 61, '2019-05-27 13:41:00', '0000-00-00 00:00:00'),
(3, 'a', 'a', 'a', 'shemafaysal@gmail.com', 'sd', 'faf', '', '', '2019_60begi.docx=2019_54blue.jpg', '2019_32book1.xlsx', 'assas', 61, 7, 61, '2019-05-27 13:46:57', '0000-00-00 00:00:00'),
(4, 'b', 'b', 'b', 'b@gmail.com', 'b', 'bbbbb', '', '', '2019_162018.pdf', '2019_74begi.docx', 'bb', 61, 7, 61, '2019-05-27 13:55:00', '0000-00-00 00:00:00'),
(5, 'z', 'z', 'z', 'zidani@gmail.com', 'z', 'z21', '', '', '2019_232018.pdf', '2019_40begi.docx=2019_13blue.jpg=2019_86book1.xlsx=2019_79book.xlsx=2019_12copy.xlsx=2019_23cove.pdf=2019_80crim.pdf', 'zz', 61, 8, 61, '2019-05-27 13:56:55', '0000-00-00 00:00:00'),
(6, 'karim', 'karim', 'karim', 'kariml@gmail.com', 'karim', '1331e43r', '', '', '2019_79acco.pdf=2019_30adob.docx=2019_77apa .docx=2019_34appl.pdf=2019_24appl.pdf', '2019_84acco.pdf=2019_39adob.docx=2019_35apa .docx=2019_46appl.pdf=2019_37appl.pdf=2019_83appl.pdf', 'efavcvav', 66, 7, 61, '2019-05-27 14:10:27', '0000-00-00 00:00:00'),
(7, 'x', 'x', 'x', 'xl@gmail.com', 'x', 'x', '', '', '2019_96acco.pdf', '2019_16book1.xlsx', 'x', 65, 3, 61, '2019-05-27 21:51:22', '0000-00-00 00:00:00'),
(8, 'm', 'm', 'm', 'm@gmail.com', 'm', '42424', '', '', '2019_74head.jpg=2019_70hear.jpg=2019_83hear.jpg', '2019_26ramz.png=2019_97ramz.png=2019_19rwanda.jpg', 'hgd', 61, 8, 61, '2019-05-28 14:38:13', '0000-00-00 00:00:00'),
(9, 'ronaldo', 'ronaldo', 'ronaldo', 'ronaldol@gmail.com', 'ronaldo', 'ronaldo', '', '', '2019_39gori.jpg=2019_55images.jpg', '2019_50hear.jpg', 'ronaldoronaldoronaldoronaldoronaldoronaldo', 61, 8, 61, '2019-05-30 05:36:05', '0000-00-00 00:00:00'),
(10, 'c', 'c', 'c', 'c@gmail.com', 'c', 'c', 'diploma', 'finace', '2019_43hear.jpg', '2019_20imag.jpg', 'ddc', 61, 3, 61, '2019-05-30 07:28:49', '0000-00-00 00:00:00'),
(11, 'c', 'd', 'd', 'd', 'sdfds', 'c', 'diploma', 'account', '2019_79fayz.jpg', '2019_56imag.jpg', 'c', 61, 3, 61, '2019-05-30 11:44:21', '0000-00-00 00:00:00'),
(12, 'fa', 'fa', 'fa', 'fa@gmail.com', 'da', '0389758', 'diploma', 'account', '2019_38hote.pdf', '2019_50hote.pdf', 'amadamda', 61, 30, 64, '2019-07-13 09:38:23', '0000-00-00 00:00:00'),
(13, 'eq', 'wrw', 'wrw', 'dfsdf', '', 'wrwr', 'diploma', 'account', '2019_49hote.pdf', '2019_25hote.pdf', 'rwrw', 61, 30, 64, '2019-07-13 09:43:04', '0000-00-00 00:00:00'),
(14, 'faf', 'afa', 'fa', 'fafa', 'fa', 'fa', 'diploma', 'account', '2019_91hote.pdf', '2019_96hote.pdf', 'fafa', 61, 30, 64, '2019-07-13 09:56:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(10) UNSIGNED NOT NULL,
  `created_on3` datetime NOT NULL,
  `user_id3` int(11) NOT NULL,
  `categories_blog` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authors` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_likes3` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_comments3` char(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `created_on3`, `user_id3`, `categories_blog`, `title`, `text`, `authors`, `photo`, `other_photo`, `video`, `youtube`, `total_likes3`, `total_comments3`) VALUES
(1, '2019-06-03 12:46:42', 61, 'history', 'fa', 'fa', 'fa', '2019_34f.jpg', '2019_34fayz.jpg', '', '', '', ''),
(2, '2019-06-03 15:45:07', 61, 'science', 'harry potter', 'iyi film ikoze mwibaga', 'quan', '2019_92f.jpg', '2019_33f.jpg=2019_60fayz.jpg=2019_17fayz.jpg', '', '', '', ''),
(3, '2019-06-05 07:53:50', 61, 'history', 'Title of a longer featured blog post', 'Multiple lines of text that form the lede, informing new readers quickly and efficiently about what\'s most interesting in this post\'s contents.', 'harry kane', '2019_14fayz.jpg', '2019_64imag.jpg=2019_28imag.jpg', '', '', '', ''),
(4, '2019-06-05 08:44:57', 61, 'history', 'Title of a longer featured blog post', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'raheem sterling', '2019_90hear.jpg', '2019_51imag.jpg=2019_24imag.jpg', '', '', '', ''),
(5, '2019-06-05 08:50:37', 61, 'history', 'Title of a longer featured blog post', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'roon', '2019_89rwanda.jpg', '2019_55ramp.jpg=2019_80ramzy2.jpg', '', '', '', ''),
(6, '2019-06-05 08:50:38', 61, 'history', 'Title of a longer featured blog post', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'roon', '2019_92rwanda.jpg', '2019_40ramp.jpg=2019_64ramzy2.jpg', '', '', '', ''),
(7, '2019-06-05 08:51:56', 61, 'history', 'One more for good measure', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'zidani', '2019_11f.jpg', '2019_60hear.jpg', '', '', '', ''),
(8, '2019-06-05 09:17:55', 61, 'history', 'Example headline.', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'iron man', '2019_100imag.jpg', '2019_19gori.jpg', '', '', '', ''),
(9, '2019-06-23 13:27:30', 61, '', 'shema rutahizamu ntiyoroshye', 'good', 'fayzo', '2019_93camera.jpg', '2019_68camera.jpg=2019_64exte.jpg', '', '', '', ''),
(10, '2019-06-23 13:27:30', 61, '', 'shema rutahizamu ntiyoroshye', 'good', 'fayzo', '2019_29camera.jpg', '2019_87camera.jpg=2019_91exte.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `authors` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country01` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title_main` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districts` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cell` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_car` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id3` int(11) NOT NULL,
  `created_on3` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `authors`, `photo`, `other_photo`, `video`, `youtube`, `price`, `phone`, `country01`, `photo_Title_main`, `photo_Title`, `city`, `province`, `districts`, `sector`, `cell`, `village`, `text`, `categories_car`, `buy`, `user_id3`, `created_on3`) VALUES
(3, 'fayzo', '2019_34001_.jpg', '2019_5601.jpg', '', '', '45300', '0787345243243', 'rwanda', 'imfite amabara meza', 'imfite amapine meza=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'ni ziza', 'car_For_sale', 'available', 61, '2019-07-05 21:39:22'),
(4, 'fayzo', '2019_951.jpg', '2019_3401.jpg', '', '', '453000', '0787345243243', 'rwanda', 'irirukanka', 'imfite amabara meza=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud shape', 'car_For_sale', 'available', 61, '2019-07-05 21:40:29'),
(5, 'fayzo', '2019_65300x.jpg', '2019_871.jpg', '', '', '32424', '0787345243243', 'rwanda', 'imfite byose', 'irihuta=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud shape', 'car_For_sale', 'available', 61, '2019-07-05 21:41:24'),
(6, 'fayzo', '2019_68911-.jpg', '2019_2801.jpg', '', '', '564500', '0787345243243', 'rwanda', 'imfite umutuku', 'irirukanka=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud shape', 'car_For_sale', 'available', 61, '2019-07-05 21:43:11'),
(7, 'fayzo', '2019_171.jpg', '2019_6701.jpg', '', '', '35300', '0787345243243', 'rwanda', 'gud coulor', 'nice pup=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'nice car', 'car_For_sale', 'available', 61, '2019-07-05 21:44:22'),
(8, 'fayzo', '2019_871200.jpg', '2019_67001_.jpg', '', '', '34200', '0787345243243', 'rwanda', 'nice', 'imfite moter yirukanka=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'car_For_rent', 'available', 61, '2019-07-05 21:45:31'),
(9, 'fayzo', '2019_381984.jpg', '2019_311984.jpg', '', '', '23400', '0787345243243', 'rwanda', 'ni shanje', 'irihuta=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'ggud', 'car_For_rent', 'available', 61, '2019-07-05 21:46:24'),
(10, 'fayzo', '2019_111984.jpg', '2019_221984.jpg', '', '', '5643000', '0787345243243', 'rwanda', 'nice car', 'moter yayo ninziza=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'car_For_rent', 'available', 61, '2019-07-05 21:47:26'),
(11, 'fayzo', '2019_1009108.jpg', '2019_192872.jpg', '', '', '45300', '0787345243243', 'rwanda', 'nice', 'irihuta=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud shape', 'camion_For_sale', 'available', 61, '2019-07-05 21:48:45'),
(12, 'fayzo', '2019_862872.jpg', '2019_839108.jpg', '', '', '35000', '0787345243243', 'rwanda', 'imfite ibar nziza', 'nice moter=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'camion_For_sale', 'available', 61, '2019-07-05 21:49:44'),
(13, 'fayzo', '2019_212987.jpg', '2019_632872.jpg', '', '', '35300', '0787345243243', 'rwanda', 'nice', 'nice=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'camion_For_sale', 'available', 61, '2019-07-05 21:50:34'),
(14, 'fayzo', '2019_415c06.jpg', '2019_1919-s.jpg', '', '', '45300', '0787345243243', 'rwanda', 'irirukanka', 'nice=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'motor_For_sale', 'available', 61, '2019-07-05 21:51:55'),
(15, 'fayzo', '2019_60g400.jpg', '2019_37chin.jpg', '', '', '4600', '0787345243243', 'rwanda', 'irirukanka', 'nice=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gid', 'motor_For_sale', 'available', 61, '2019-07-05 21:53:06'),
(16, 'fayzo', '2019_97indi.jpg', '2019_66img.jpg', '', '', '6500', '0787345243243', 'rwanda', 'nice', 'gud=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'motor_For_sale', 'available', 61, '2019-07-05 21:54:06'),
(17, 'fayzo', '2019_26001_.jpg', '2019_7071qy.jpg', '', '', '56400', '0787345243243', 'rwanda', 'igare', 'ririhuta=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud work', 'bicycle_For_sale', 'available', 61, '2019-07-05 21:55:35'),
(18, 'fayzo', '2019_6671qy.jpg', '2019_89001_.jpg', '', '', '35600', '0787345243243', 'rwanda', 'nice bicycle', 'ririhuta=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'ririhuta', 'bicycle_For_sale', 'available', 61, '2019-07-05 21:56:28'),
(19, 'fayzo', '2019_5096ah.jpg', '2019_271886.jpg', '', '', '4000', '0787345243243', 'rwanda', 'gud shape', 'ntacyo riraba=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'nivce', 'bicycle_For_sale', 'available', 61, '2019-07-05 21:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `cells`
--

CREATE TABLE `cells` (
  `codecell` varchar(50) NOT NULL,
  `nameCell` varchar(50) NOT NULL,
  `sectorcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cells`
--

INSERT INTO `cells` (`codecell`, `nameCell`, `sectorcode`) VALUES
('1010100', '-- Select Cell --', '10101'),
('1010101', 'Akabahizi', '10101'),
('1010102', 'Akabeza', '10101'),
('1010103', 'Gacyamo', '10101'),
('1010104', 'Kigarama', '10101'),
('1010105', 'Kinyange', '10101'),
('1010106', 'Kora', '10101'),
('1010200', '-- Select Cell --', '10102'),
('1010201', 'Nyamweru', '10102'),
('1010202', 'Nzove', '10102'),
('1010203', 'Taba', '10102'),
('1010300', '-- Select Cell --', '10103'),
('1010301', 'Kigali', '10103'),
('1010302', 'Mwendo', '10103'),
('1010303', 'Nyabugogo', '10103'),
('1010304', 'Ruriba', '10103'),
('1010305', 'Rwesero', '10103'),
('1010400', '-- Select Cell --', '10104'),
('1010401', 'Kamuhoza', '10104'),
('1010402', 'Katabaro', '10104'),
('1010403', 'Kimisagara', '10104'),
('1010500', '-- Select Cell --', '10105'),
('1010501', 'Kankuba', '10105'),
('1010502', 'Kavumu', '10105'),
('1010503', 'Mataba', '10105'),
('1010504', 'Ntungamo', '10105'),
('1010505', 'Nyarufunzo', '10105'),
('1010506', 'Nyarurenzi', '10105'),
('1010507', 'Runzenze', '10105'),
('1010600', '-- Select Cell --', '10106'),
('1010601', 'Amahoro', '10106'),
('1010602', 'Kabasengerezi', '10106'),
('1010603', 'Kabeza', '10106'),
('1010604', 'Nyabugogo', '10106'),
('1010605', 'Rugenge', '10106'),
('1010606', 'Tetero', '10106'),
('1010607', 'Ubumwe', '10106'),
('1010700', '-- Select Cell --', '10107'),
('1010701', 'Munanira I', '10107'),
('1010702', 'Munanira Ii', '10107'),
('1010703', 'Nyakabanda I', '10107'),
('1010704', 'Nyakabanda Ii', '10107'),
('1010800', '-- Select Cell --', '10108'),
('1010801', 'Cyivugiza', '10108'),
('1010802', 'Gasharu ', '10108'),
('1010803', 'Mumena', '10108'),
('1010804', 'Rugarama', '10108'),
('1010900', '-- Select Cell --', '10109'),
('1010901', 'Agatare', '10109'),
('1010902', 'Biryogo', '10109'),
('1010903', 'Kiyovu', '10109'),
('1010904', 'Rwampara', '10109'),
('1011000', '-- Select Cell --', '10110'),
('1011001', 'Kabuguru I', '10110'),
('1011002', 'Kabuguru Ii', '10110'),
('1011003', 'Rwezamenyo I', '10110'),
('1011004', 'Rwezamenyo Ii', '10110'),
('1020100', '-- Select Cell --', '10201'),
('1020101', 'Kinyaga', '10201'),
('1020102', 'Musave', '10201'),
('1020103', 'Mvuzo', '10201'),
('1020104', 'Ngara', '10201'),
('1020105', 'Nkuzuzu', '10201'),
('1020106', 'Nyabikenke', '10201'),
('1020107', 'Nyagasozi', '10201'),
('1020200', '-- Select Cell --', '10202'),
('1020201', 'Karuruma', '10202'),
('1020202', 'Nyamabuye ', '10202'),
('1020203', 'Nyamugari', '10202'),
('1020300', '-- Select Cell --', '10203'),
('1020301', 'Gasagara', '10203'),
('1020302', 'Gicaca', '10203'),
('1020303', 'Kibara', '10203'),
('1020304', 'Munini ', '10203'),
('1020305', 'Murambi', '10203'),
('1020400', '-- Select Cell --', '10204'),
('1020401', 'Musezero ', '10204'),
('1020402', 'Ruhango', '10204'),
('1020500', '-- Select Cell --', '10205'),
('1020501', 'Akamatamu', '10205'),
('1020502', 'Bweramvura', '10205'),
('1020503', 'Kabuye', '10205'),
('1020504', 'Kidashya', '10205'),
('1020505', 'Ngiryi', '10205'),
('1020600', '-- Select Cell --', '10206'),
('1020601', 'Agateko', '10206'),
('1020602', 'Buhiza ', '10206'),
('1020603', 'Muko', '10206'),
('1020604', 'Nkusi', '10206'),
('1020605', 'Nyabuliba', '10206'),
('1020606', 'Nyakabungo', '10206'),
('1020607', 'Nyamitanga', '10206'),
('1020700', '-- Select Cell --', '10207'),
('1020701', 'Kamatamu ', '10207'),
('1020702', 'Kamutwa', '10207'),
('1020703', 'Kibaza', '10207'),
('1020800', '-- Select Cell --', '10208'),
('1020801', 'Kamukina', '10208'),
('1020802', 'Kimihurura', '10208'),
('1020803', 'Rugando', '10208'),
('1020900', '-- Select Cell --', '10209'),
('1020901', 'Bibare', '10209'),
('1020902', 'Kibagabaga', '10209'),
('1020903', 'Nyagatovu ', '10209'),
('1021000', '-- Select Cell --', '10210'),
('1021001', 'Gacuriro', '10210'),
('1021002', 'Gasharu', '10210'),
('1021003', 'Kagugu', '10210'),
('1021004', 'Murama', '10210'),
('1021100', '-- Select Cell --', '10211'),
('1021101', 'Bwiza ', '10211'),
('1021102', 'Cyaruzinge', '10211'),
('1021103', 'Kibenga', '10211'),
('1021104', 'Masoro', '10211'),
('1021105', 'Mukuyu', '10211'),
('1021106', 'Rudashya', '10211'),
('1021200', '-- Select Cell --', '10212'),
('1021201', 'Butare', '10212'),
('1021202', 'Gasanze', '10212'),
('1021203', 'Gasura', '10212'),
('1021204', 'Gatunga', '10212'),
('1021205', 'Muremure', '10212'),
('1021206', 'Sha', '10212'),
('1021207', 'Shango', '10212'),
('1021300', '-- Select Cell --', '10213'),
('1021301', 'Nyabisindu', '10213'),
('1021302', 'Nyarutarama', '10213'),
('1021303', 'Rukiri I', '10213'),
('1021304', 'Rukiri Ii', '10213'),
('1021400', '-- Select Cell --', '10214'),
('1021401', 'Bisenga', '10214'),
('1021402', 'Gasagara', '10214'),
('1021403', 'Kabuga I', '10214'),
('1021404', 'Kabuga Ii', '10214'),
('1021405', 'Kinyana', '10214'),
('1021406', 'Mbandazi', '10214'),
('1021407', 'Nyagahinga', '10214'),
('1021408', 'Ruhanga', '10214'),
('1021500', '-- Select Cell --', '10215'),
('1021501', 'Gasabo', '10215'),
('1021502', 'Indatemwa', '10215'),
('1021503', 'Kabaliza', '10215'),
('1021504', 'Kacyatwa', '10215'),
('1021505', 'Kibenga', '10215'),
('1021506', 'Kigabiro', '10215'),
('1030100', '-- Select Cell --', '10301'),
('1030101', 'Gahanga', '10301'),
('1030102', 'Kagasa', '10301'),
('1030103', 'Karembure', '10301'),
('1030104', 'Murinja', '10301'),
('1030105', 'Nunga', '10301'),
('1030106', 'Rwabutenge', '10301'),
('1030200', '-- Select Cell --', '10302'),
('1030201', 'Gatenga', '10302'),
('1030202', 'Karambo', '10302'),
('1030203', 'Nyanza', '10302'),
('1030204', 'Nyarurama', '10302'),
('1030300', '-- Select Cell --', '10303'),
('1030301', 'Kagunga', '10303'),
('1030302', 'Kanserege', '10303'),
('1030303', 'Kinunga', '10303'),
('1030400', '-- Select Cell --', '10304'),
('1030401', 'Kanserege', '10304'),
('1030402', 'Muyange', '10304'),
('1030403', 'Rukatsa', '10304'),
('1030500', '-- Select Cell --', '10305'),
('1030501', 'Busanza ', '10305'),
('1030502', 'Kabeza', '10305'),
('1030503', 'Karama', '10305'),
('1030504', 'Rubirizi', '10305'),
('1030600', '-- Select Cell --', '10306'),
('1030601', 'Gasharu', '10306'),
('1030602', 'Kagina', '10306'),
('1030603', 'Kicukiro', '10306'),
('1030604', 'Ngoma', '10306'),
('1030701', 'Bwerankori', '10307'),
('1030702', 'Karugira', '10307'),
('1030703', 'Kigarama', '10307'),
('1030704', 'Nyarurama', '10307'),
('1030705', 'Rwampara', '10307'),
('1030800', '-- Select Cell --', '10308'),
('1030801', 'Ayabaraya', '10308'),
('1030802', 'Cyimo', '10308'),
('1030803', 'Gako', '10308'),
('1030804', 'Gitaraga', '10308'),
('1030805', 'Mbabe', '10308'),
('1030806', 'Rusheshe', '10308'),
('1030900', '-- Select Cell --', '10309'),
('1030901', 'Gatare', '10309'),
('1030902', 'Niboye', '10309'),
('1030903', 'Nyakabanda', '10309'),
('1031000', '-- Select Cell --', '10310'),
('1031001', 'Kamashashi ', '10310'),
('1031002', 'Nonko', '10310'),
('1031003', 'Rwimbogo', '10310'),
('2010100', '-- Select Cell --', '20101'),
('2010101', 'Gahondo', '20101'),
('2010102', 'Kavumu', '20101'),
('2010103', 'Kibinja', '20101'),
('2010104', 'Nyanza', '20101'),
('2010105', 'Rwesero', '20101'),
('2010200', '-- Select Cell --', '20102'),
('2010201', 'Gitovu', '20102'),
('2010202', 'Kimirama', '20102'),
('2010203', 'Masangano', '20102'),
('2010204', 'Munyinya', '20102'),
('2010205', 'Rukingiro', '20102'),
('2010206', 'Shyira', '20102'),
('2010300', '-- Select Cell --', '20103'),
('2010301', 'Kadaho', '20103'),
('2010302', 'Karama', '20103'),
('2010303', 'Nyabinyenga', '20103'),
('2010304', 'Nyarurama', '20103'),
('2010305', 'Rubona', '20103'),
('2010400', '-- Select Cell --', '20104'),
('2010401', 'Cyeru', '20104'),
('2010402', 'Mbuye', '20104'),
('2010403', 'Mututu', '20104'),
('2010404', 'Rwotso', '20104'),
('2010500', '-- Select Cell --', '20105'),
('2010501', 'Butansinda', '20105'),
('2010502', 'Butara', '20105'),
('2010503', 'Gahombo', '20105'),
('2010504', 'Gasoro', '20105'),
('2010505', 'Mulinja', '20105'),
('2010600', '-- Select Cell --', '20106'),
('2010601', 'Cyerezo', '20106'),
('2010602', 'Gatagara', '20106'),
('2010603', 'Kiruli', '20106'),
('2010604', 'Mpanga', '20106'),
('2010605', 'Ngwa', '20106'),
('2010606', 'Nkomero', '20106'),
('2010700', '-- Select Cell --', '20107'),
('2010701', 'Gati', '20107'),
('2010702', 'Migina', '20107'),
('2010703', 'Nyamiyaga', '20107'),
('2010704', 'Nyamure', '20107'),
('2010705', 'Nyundo', '20107'),
('2010800', '-- Select Cell --', '20108'),
('2010801', 'Bugali', '20108'),
('2010802', 'Cyotamakara', '20108'),
('2010803', 'Kagunga', '20108'),
('2010804', 'Katarara', '20108'),
('2010900', '-- Select Cell --', '20109'),
('2010901', 'Gahunga', '20109'),
('2010902', 'Kabirizi', '20109'),
('2010903', 'Kabuga', '20109'),
('2010904', 'Kirambi', '20109'),
('2010905', 'Rurangazi', '20109'),
('2011000', '-- Select Cell --', '20110'),
('2011001', 'Gacu', '20110'),
('2011002', 'Gishike', '20110'),
('2011003', 'Mubuga', '20110'),
('2011004', 'Mushirarungu', '20110'),
('2011005', 'Nyarusange', '20110'),
('2011006', 'Runga', '20110'),
('2020100', '-- Select Cell --', '20201'),
('2020101', 'Cyiri', '20201'),
('2020102', 'Gasagara', '20201'),
('2020103', 'Gikonko', '20201'),
('2020104', 'Mbogo', '20201'),
('2020200', '-- Select Cell --', '20202'),
('2020201', 'Gabiro', '20202'),
('2020202', 'Nyabitare', '20202'),
('2020203', 'Nyakibungo', '20202'),
('2020204', 'Nyeranzi', '20202'),
('2020300', '-- Select Cell --', '20203'),
('2020301', 'Akaboti', '20203'),
('2020302', 'Bwiza', '20203'),
('2020303', 'Sabusaro', '20203'),
('2020304', 'Umunini', '20203'),
('2020400', '-- Select Cell --', '20204'),
('2020401', 'Duwani', '20204'),
('2020402', 'Kibirizi', '20204'),
('2020403', 'Muyira', '20204'),
('2020404', 'Ruturo', '20204'),
('2020500', '-- Select Cell --', '20205'),
('2020501', 'Agahabwa', '20205'),
('2020502', 'Gatovu', '20205'),
('2020503', 'Impinga', '20205'),
('2020504', 'Nyabikenke', '20205'),
('2020505', 'Rubona', '20205'),
('2020506', 'Rusagara', '20205'),
('2020600', '-- Select Cell --', '20206'),
('2020601', 'Gakoma', '20206'),
('2020602', 'Kabumbwe', '20206'),
('2020603', 'Mamba', '20206'),
('2020604', 'Muyaga', '20206'),
('2020605', 'Ramba', '20206'),
('2020700', '-- Select Cell --', '20207'),
('2020701', 'Cyumba', '20207'),
('2020702', 'Muganza', '20207'),
('2020703', 'Remera', '20207'),
('2020704', 'Rwamiko', '20207'),
('2020705', 'Saga', '20207'),
('2020800', '-- Select Cell --', '20208'),
('2020801', 'Baziro', '20208'),
('2020802', 'Kibayi', '20208'),
('2020803', 'Kibu', '20208'),
('2020804', 'Mugombwa', '20208'),
('2020805', 'Mukomacara', '20208'),
('2020900', '-- Select Cell --', '20209'),
('2020901', 'Gitega', '20209'),
('2020902', 'Mukiza', '20209'),
('2020903', 'Nyabisagara', '20209'),
('2020904', 'Runyinya', '20209'),
('2021000', '-- Select Cell --', '20210'),
('2021001', 'Bukinanyana', '20210'),
('2021002', 'Gatovu', '20210'),
('2021003', 'Kigarama', '20210'),
('2021004', 'Kimana', '20210'),
('2021100', '-- Select Cell --', '20211'),
('2021101', 'Bweya', '20211'),
('2021102', 'Cyamukuza', '20211'),
('2021103', 'Dahwe', '20211'),
('2021104', 'Gisagara', '20211'),
('2021105', 'Mukande', '20211'),
('2021200', '-- Select Cell --', '20212'),
('2021201', 'Higiro', '20212'),
('2021202', 'Nyamugari', '20212'),
('2021203', 'Nyaruteja', '20212'),
('2021204', 'Umubanga', '20212'),
('2021300', '-- Select Cell --', '20213'),
('2021301', 'Gatoki', '20213'),
('2021302', 'Munazi', '20213'),
('2021303', 'Rwanza', '20213'),
('2021304', 'Shyanda', '20213'),
('2021305', 'Zivu', '20213'),
('2030100', '-- Select Cell --', '20301'),
('2030101', 'Kirarangombe', '20301'),
('2030102', 'Nkanda', '20301'),
('2030103', 'Nteko', '20301'),
('2030104', 'Runyombyi', '20301'),
('2030105', 'Shororo', '20301'),
('2030200', '-- Select Cell --', '20302'),
('2030201', 'Coko', '20302'),
('2030202', 'Cyahinda', '20302'),
('2030203', 'Gasasa', '20302'),
('2030204', 'Muhambara', '20302'),
('2030205', 'Rutobwe', '20302'),
('2030300', '-- Select Cell --', '20303'),
('2030301', 'Gakoma', '20303'),
('2030302', 'Kibeho', '20303'),
('2030303', 'Mbasa', '20303'),
('2030304', 'Mpanda', '20303'),
('2030305', 'Mubuga', '20303'),
('2030306', 'Nyange', '20303'),
('2030400', '-- Select Cell --', '20304'),
('2030401', 'Cyanyirankora', '20304'),
('2030402', 'Gahurizo', '20304'),
('2030403', 'Kimina', '20304'),
('2030404', 'Kivu', '20304'),
('2030405', 'Rugerero', '20304'),
('2030500', '-- Select Cell --', '20305'),
('2030501', 'Gorwe', '20305'),
('2030502', 'Murambi', '20305'),
('2030503', 'Nyamabuye', '20305'),
('2030504', 'Ramba', '20305'),
('2030505', 'Rwamiko', '20305'),
('2030600', '-- Select Cell --', '20306'),
('2030601', 'Muganza', '20306'),
('2030602', 'Rukore', '20306'),
('2030603', 'Samiyonga', '20306'),
('2030604', 'Uwacyiza', '20306'),
('2030700', '-- Select Cell --', '20307'),
('2030701', 'Giheta', '20307'),
('2030702', 'Ngarurira', '20307'),
('2030703', 'Ngeri', '20307'),
('2030704', 'Ntwali', '20307'),
('2030705', 'Nyarure', '20307'),
('2030800', '-- Select Cell --', '20308'),
('2030801', 'Bitare', '20308'),
('2030802', 'Mukuge', '20308'),
('2030803', 'Murama', '20308'),
('2030804', 'Nyamirama', '20308'),
('2030805', 'Nyanza', '20308'),
('2030806', 'Yaramba', '20308'),
('2030900', '-- Select Cell --', '20309'),
('2030901', 'Fugi', '20309'),
('2030902', 'Kibangu', '20309'),
('2030903', 'Kiyonza', '20309'),
('2030904', 'Mbuye', '20309'),
('2030905', 'Nyamirama', '20309'),
('2030906', 'Rubona', '20309'),
('2031000', '-- Select Cell --', '20310'),
('2031001', 'Gihemvu', '20310'),
('2031002', 'Kabere', '20310'),
('2031003', 'Mishungero', '20310'),
('2031004', 'Nyabimata', '20310'),
('2031005', 'Ruhinga', '20310'),
('2031100', '-- Select Cell --', '20311'),
('2031101', 'Maraba', '20311'),
('2031102', 'Mwoya', '20311'),
('2031103', 'Nkakwa', '20311'),
('2031104', 'Nyagisozi', '20311'),
('2031200', '-- Select Cell --', '20312'),
('2031201', 'Gitita', '20312'),
('2031202', 'Kabere', '20312'),
('2031203', 'Remera', '20312'),
('2031204', 'Ruyenzi', '20312'),
('2031205', 'Uwumusebeya', '20312'),
('2031300', '-- Select Cell --', '20313'),
('2031301', 'Gabiro', '20313'),
('2031302', 'Giseke', '20313'),
('2031303', 'Nyarugano', '20313'),
('2031304', 'Rugogwe', '20313'),
('2031305', 'Ruramba', '20313'),
('2031400', '-- Select Cell --', '20314'),
('2031401', 'Bunge', '20314'),
('2031402', 'Cyuna', '20314'),
('2031403', 'Gikunzi', '20314'),
('2031404', 'Mariba', '20314'),
('2031405', 'Raranzige', '20314'),
('2031406', 'Rusenge', '20314'),
('2040100', '-- Select Cell --', '20401'),
('2040101', 'Nyakibanda', '20401'),
('2040102', 'Nyumba', '20401'),
('2040103', 'Ryakibogo', '20401'),
('2040104', 'Shori', '20401'),
('2040200', '-- Select Cell --', '20402'),
('2040201', 'Muyogoro', '20402'),
('2040202', 'Nyakagezi', '20402'),
('2040203', 'Rukira', '20402'),
('2040204', 'Sovu', '20402'),
('2040300', '-- Select Cell --', '20403'),
('2040301', 'Buhoro', '20403'),
('2040302', 'Bunazi', '20403'),
('2040303', 'Gahororo', '20403'),
('2040304', 'Kibingo', '20403'),
('2040305', 'Muhembe', '20403'),
('2040400', '-- Select Cell --', '20404'),
('2040401', 'Gishihe', '20404'),
('2040402', 'Kabatwa', '20404'),
('2040403', 'Kabuga', '20404'),
('2040404', 'Karambi', '20404'),
('2040405', 'Musebeya', '20404'),
('2040406', 'Nyabisindu', '20404'),
('2040407', 'Rugarama', '20404'),
('2040408', 'Shanga', '20404'),
('2040500', '-- Select Cell --', '20405'),
('2040501', 'Byinza', '20405'),
('2040502', 'Gahana', '20405'),
('2040503', 'Gitovu', '20405'),
('2040504', 'Kabona', '20405'),
('2040505', 'Sazange', '20405'),
('2040600', '-- Select Cell --', '20406'),
('2040601', 'Buremera', '20406'),
('2040602', 'Gasumba', '20406'),
('2040603', 'Kabuye', '20406'),
('2040604', 'Kanyinya', '20406'),
('2040605', 'Shanga', '20406'),
('2040606', 'Shyembe', '20406'),
('2040700', '-- Select Cell --', '20407'),
('2040701', 'Gatobotobo', '20407'),
('2040702', 'Kabuga', '20407'),
('2040703', 'Mutunda', '20407'),
('2040704', 'Mwulire', '20407'),
('2040705', 'Rugango', '20407'),
('2040706', 'Rusagara', '20407'),
('2040707', 'Tare', '20407'),
('2040800', '-- Select Cell --', '20408'),
('2040801', 'Bukomeye', '20408'),
('2040802', 'Buvumu', '20408'),
('2040803', 'Icyeru', '20408'),
('2040804', 'Rango A', '20408'),
('2040900', '-- Select Cell --', '20409'),
('2040901', 'Butare', '20409'),
('2040902', 'Kaburemera', '20409'),
('2040903', 'Matyazo', '20409'),
('2040904', 'Ngoma', '20409'),
('2041000', '-- Select Cell --', '20410'),
('2041001', 'Busheshi', '20410'),
('2041002', 'Gatovu', '20410'),
('2041003', 'Karama', '20410'),
('2041004', 'Mara', '20410'),
('2041005', 'Muhororo', '20410'),
('2041006', 'Rugogwe', '20410'),
('2041007', 'Ruhashya', '20410'),
('2041100', '-- Select Cell --', '20411'),
('2041101', 'Buhimba', '20411'),
('2041102', 'Gafumba', '20411'),
('2041103', 'Kimirehe', '20411'),
('2041104', 'Kimuna', '20411'),
('2041105', 'Kiruhura', '20411'),
('2041106', 'Mugogwe', '20411'),
('2041200', '-- Select Cell --', '20412'),
('2041201', 'Gatwaro', '20412'),
('2041202', 'Kamwambi', '20412'),
('2041203', 'Kibiraro', '20412'),
('2041204', 'Mwendo', '20412'),
('2041205', 'Nyamabuye', '20412'),
('2041206', 'Nyaruhombo', '20412'),
('2041207', 'Shyunga', '20412'),
('2041300', '-- Select Cell --', '20413'),
('2041301', 'Cyendajuru', '20413'),
('2041302', 'Gisakura', '20413'),
('2041303', 'Kabusanza', '20413'),
('2041304', 'Mugobore', '20413'),
('2041305', 'Nyangazi', '20413'),
('2041400', '-- Select Cell --', '20414'),
('2041401', 'Cyarwa', '20414'),
('2041402', 'Cyimana', '20414'),
('2041403', 'Gitwa', '20414'),
('2041404', 'Mpare', '20414'),
('2041405', 'Rango B', '20414'),
('2050100', '-- Select Cell --', '20501'),
('2050101', 'Bushigishigi', '20501'),
('2050102', 'Byimana', '20501'),
('2050103', 'Gifurwe', '20501'),
('2050104', 'Kizimyamuriro', '20501'),
('2050105', 'Munini', '20501'),
('2050106', 'Rambya', '20501'),
('2050200', '-- Select Cell --', '20502'),
('2050201', 'Gitega', '20502'),
('2050202', 'Karama', '20502'),
('2050203', 'Kiyumba', '20502'),
('2050204', 'Ngoma', '20502'),
('2050205', 'Nyanza', '20502'),
('2050206', 'Nyanzoga', '20502'),
('2050300', '-- Select Cell --', '20503'),
('2050301', 'Kigeme', '20503'),
('2050302', 'Ngiryi', '20503'),
('2050303', 'Nyabivumu', '20503'),
('2050304', 'Nyamugari', '20503'),
('2050305', 'Nzega', '20503'),
('2050306', 'Remera', '20503'),
('2050400', '-- Select Cell --', '20504'),
('2050401', 'Bakopfu', '20504'),
('2050402', 'Gatare', '20504'),
('2050403', 'Mukongoro', '20504'),
('2050404', 'Ruganda', '20504'),
('2050405', 'Shyeru', '20504'),
('2050500', '-- Select Cell --', '20505'),
('2050501', 'Kavumu', '20505'),
('2050502', 'Murambi', '20505'),
('2050503', 'Musenyi', '20505'),
('2050504', 'Nyabisindu', '20505'),
('2050505', 'Nyamiyaga', '20505'),
('2050600', '-- Select Cell --', '20506'),
('2050601', 'Bwama', '20506'),
('2050602', 'Kamegeri', '20506'),
('2050603', 'Kirehe', '20506'),
('2050604', 'Kizi', '20506'),
('2050605', 'Nyarusiza', '20506'),
('2050606', 'Rususa', '20506'),
('2050700', '-- Select Cell --', '20507'),
('2050701', 'Bugarama', '20507'),
('2050702', 'Bugarura', '20507'),
('2050703', 'Gashiha', '20507'),
('2050704', 'Karambo', '20507'),
('2050705', 'Ruhunga', '20507'),
('2050706', 'Uwindekezi', '20507'),
('2050800', '-- Select Cell --', '20508'),
('2050801', 'Bwenda', '20508'),
('2050802', 'Gakanka', '20508'),
('2050803', 'Kibibi', '20508'),
('2050804', 'Nyakiza', '20508'),
('2050900', '-- Select Cell --', '20509'),
('2050901', 'Kagano', '20509'),
('2050902', 'Mujuga', '20509'),
('2050903', 'Mukungu', '20509'),
('2050904', 'Shaba', '20509'),
('2050905', 'Uwingugu', '20509'),
('2051000', '-- Select Cell --', '20510'),
('2051001', 'Manwari', '20510'),
('2051002', 'Mutiwingoma', '20510'),
('2051003', 'Ngambi', '20510'),
('2051004', 'Ngara', '20510'),
('2051100', '-- Select Cell --', '20511'),
('2051101', 'Gitondorero', '20511'),
('2051102', 'Gitwa', '20511'),
('2051103', 'Ruhinga', '20511'),
('2051104', 'Sovu', '20511'),
('2051105', 'Suti', '20511'),
('2051106', 'Yonde', '20511'),
('2051200', '-- Select Cell --', '20512'),
('2051201', 'Gasave', '20512'),
('2051202', 'Jenda', '20512'),
('2051203', 'Masagara', '20512'),
('2051204', 'Masangano', '20512'),
('2051205', 'Masizi', '20512'),
('2051206', 'Nyagisozi', '20512'),
('2051300', '-- Select Cell --', '20513'),
('2051301', 'Gatovu', '20513'),
('2051302', 'Nyarurambi', '20513'),
('2051303', 'Rugano', '20513'),
('2051304', 'Runege', '20513'),
('2051305', 'Rusekera', '20513'),
('2051306', 'Sekera', '20513'),
('2051400', '-- Select Cell --', '20514'),
('2051401', 'Buteteri', '20514'),
('2051402', 'Cyobe', '20514'),
('2051403', 'Gashwati', '20514'),
('2051500', '-- Select Cell --', '20515'),
('2051501', 'Bitandara', '20515'),
('2051502', 'Musaraba', '20515'),
('2051503', 'Mutengeri', '20515'),
('2051504', 'Nkomane', '20515'),
('2051505', 'Nyarwungo', '20515'),
('2051506', 'Twiya', '20515'),
('2051600', '-- Select Cell --', '20516'),
('2051601', 'Buhoro', '20516'),
('2051602', 'Gasarenda', '20516'),
('2051603', 'Gatovu', '20516'),
('2051604', 'Kaganza', '20516'),
('2051605', 'Nkumbure', '20516'),
('2051606', 'Nyamigina', '20516'),
('2051700', '-- Select Cell --', '20517'),
('2051701', 'Bigumira', '20517'),
('2051702', 'Gahira', '20517'),
('2051703', 'Kibyagira', '20517'),
('2051704', 'Mudasomwa', '20517'),
('2051705', 'Munyege', '20517'),
('2051706', 'Rugogwe', '20517'),
('2060100', '-- Select Cell --', '20601'),
('2060101', 'Buhanda', '20601'),
('2060102', 'Gitisi', '20601'),
('2060103', 'Murama', '20601'),
('2060104', 'Rubona', '20601'),
('2060105', 'Rwinyana', '20601'),
('2060200', '-- Select Cell --', '20602'),
('2060201', 'Kamusenyi', '20602'),
('2060202', 'Kirengeri', '20602'),
('2060203', 'Mahembe', '20602'),
('2060204', 'Mpanda', '20602'),
('2060205', 'Muhororo', '20602'),
('2060206', 'Ntenyo', '20602'),
('2060207', 'Nyakabuye', '20602'),
('2060300', '-- Select Cell --', '20603'),
('2060301', 'Bihembe', '20603'),
('2060302', 'Karambi', '20603'),
('2060303', 'Munanira', '20603'),
('2060304', 'Remera', '20603'),
('2060305', 'Rwesero', '20603'),
('2060306', 'Rwoga', '20603'),
('2060400', '-- Select Cell --', '20604'),
('2060401', 'Burima', '20604'),
('2060402', 'Gisali', '20604'),
('2060403', 'Kinazi', '20604'),
('2060404', 'Rubona', '20604'),
('2060405', 'Rutabo', '20604'),
('2060500', '-- Select Cell --', '20605'),
('2060501', 'Bweramvura', '20605'),
('2060502', 'Gitinda', '20605'),
('2060503', 'Kirwa', '20605'),
('2060504', 'Muyunzwe', '20605'),
('2060505', 'Nyakogo', '20605'),
('2060506', 'Rukina', '20605'),
('2060600', '-- Select Cell --', '20606'),
('2060601', 'Cyanza', '20606'),
('2060602', 'Gisanga', '20606'),
('2060603', 'Kabuga', '20606'),
('2060604', 'Kizibere', '20606'),
('2060605', 'Mbuye', '20606'),
('2060606', 'Mwendo', '20606'),
('2060607', 'Nyakarekare', '20606'),
('2060700', '-- Select Cell --', '20607'),
('2060701', 'Gafunzo', '20607'),
('2060702', 'Gishweru', '20607'),
('2060703', 'Kamujisho', '20607'),
('2060704', 'Kigarama', '20607'),
('2060705', 'Kubutare', '20607'),
('2060706', 'Mutara', '20607'),
('2060707', 'Nyabibugu', '20607'),
('2060708', 'Saruheshyi', '20607'),
('2060800', '-- Select Cell --', '20608'),
('2060801', 'Gako', '20608'),
('2060802', 'Kareba', '20608'),
('2060803', 'Kayenzi', '20608'),
('2060804', 'Kebero', '20608'),
('2060805', 'Nyagisozi', '20608'),
('2060806', 'Nyakabungo', '20608'),
('2060807', 'Nyarurama', '20608'),
('2060900', '-- Select Cell --', '20609'),
('2060901', 'Buhoro', '20609'),
('2060902', 'Bunyogombe', '20609'),
('2060903', 'Gikoma', '20609'),
('2060904', 'Munini', '20609'),
('2060905', 'Musamo', '20609'),
('2060906', 'Nyamagana', '20609'),
('2060907', 'Rwoga', '20609'),
('2060908', 'Tambwe', '20609'),
('2070100', '-- Select Cell --', '20701'),
('2070101', 'Biringaga', '20701'),
('2070102', 'Kigarama', '20701'),
('2070103', 'Kivumu', '20701'),
('2070104', 'Makera', '20701'),
('2070105', 'Nyarunyinya', '20701'),
('2070106', 'Shori', '20701'),
('2070200', '-- Select Cell --', '20702'),
('2070201', 'Buramba', '20702'),
('2070202', 'Butare', '20702'),
('2070203', 'Kabuye', '20702'),
('2070204', 'Kavumu', '20702'),
('2070205', 'Kibyimba', '20702'),
('2070206', 'Ngarama', '20702'),
('2070207', 'Ngoma', '20702'),
('2070208', 'Sholi', '20702'),
('2070300', '-- Select Cell --', '20703'),
('2070301', 'Gisharu', '20703'),
('2070302', 'Gitega', '20703'),
('2070303', 'Jurwe', '20703'),
('2070304', 'Mubuga', '20703'),
('2070305', 'Rubyiniro', '20703'),
('2070306', 'Ryakanimba', '20703'),
('2070400', '-- Select Cell --', '20704'),
('2070401', 'Budende', '20704'),
('2070402', 'Ndago', '20704'),
('2070403', 'Remera', '20704'),
('2070404', 'Ruhina', '20704'),
('2070405', 'Rukeri', '20704'),
('2070500', '-- Select Cell --', '20705'),
('2070501', 'Kanyinya', '20705'),
('2070502', 'Nganzo', '20705'),
('2070503', 'Nyamirama', '20705'),
('2070504', 'Remera', '20705'),
('2070505', 'Tyazo', '20705'),
('2070600', '-- Select Cell --', '20706'),
('2070601', 'Matyazo', '20706'),
('2070602', 'Munazi', '20706'),
('2070603', 'Nyagasozi', '20706'),
('2070604', 'Rukaragata', '20706'),
('2070605', 'Rwasare', '20706'),
('2070606', 'Rwigerero', '20706'),
('2070700', '-- Select Cell --', '20707'),
('2070701', 'Gashorera', '20707'),
('2070702', 'Masangano', '20707'),
('2070703', 'Mbuga', '20707'),
('2070704', 'Muvumba', '20707'),
('2070705', 'Nyarusozi', '20707'),
('2070800', '-- Select Cell --', '20708'),
('2070801', 'Gahogo', '20708'),
('2070802', 'Gifumba', '20708'),
('2070803', 'Gitarama', '20708'),
('2070804', 'Remera', '20708'),
('2070900', '-- Select Cell --', '20709'),
('2070901', 'Mbiriri', '20709'),
('2070902', 'Musongati', '20709'),
('2070903', 'Ngaru', '20709'),
('2070904', 'Rusovu', '20709'),
('2071000', '-- Select Cell --', '20710'),
('2071001', 'Gasagara', '20710'),
('2071002', 'Gasharu', '20710'),
('2071003', 'Karambo', '20710'),
('2071004', 'Nyamirambo', '20710'),
('2071005', 'Ruhango', '20710'),
('2071100', '-- Select Cell --', '20711'),
('2071101', 'Gasave', '20711'),
('2071102', 'Kanyana', '20711'),
('2071103', 'Kibaga', '20711'),
('2071104', 'Mpinga', '20711'),
('2071105', 'Nsanga', '20711'),
('2071200', '-- Select Cell --', '20712'),
('2071201', 'Kinini', '20712'),
('2071202', 'Mbare', '20712'),
('2071203', 'Mubuga', '20712'),
('2071204', 'Ruli', '20712'),
('2080100', '-- Select Cell --', '20801'),
('2080101', 'Gihinga', '20801'),
('2080102', 'Gihira', '20801'),
('2080103', 'Kigembe', '20801'),
('2080104', 'Nkingo', '20801'),
('2080200', '-- Select Cell --', '20802'),
('2080201', 'Bitare', '20802'),
('2080202', 'Bunyonga', '20802'),
('2080203', 'Muganza', '20802'),
('2080204', 'Nyamirembe', '20802'),
('2080300', '-- Select Cell --', '20803'),
('2080301', 'Bugarama', '20803'),
('2080302', 'Cubi', '20803'),
('2080303', 'Kayonza', '20803'),
('2080304', 'Kirwa', '20803'),
('2080305', 'Mataba', '20803'),
('2080306', 'Nyamirama', '20803'),
('2080400', '-- Select Cell --', '20804'),
('2080401', 'Busoro', '20804'),
('2080402', 'Gaseke', '20804'),
('2080403', 'Giko', '20804'),
('2080404', 'Muyange', '20804'),
('2080500', '-- Select Cell --', '20805'),
('2080501', 'Jenda', '20805'),
('2080502', 'Kabugondo', '20805'),
('2080503', 'Mbati', '20805'),
('2080504', 'Mugina', '20805'),
('2080505', 'Nteko', '20805'),
('2080600', '-- Select Cell --', '20806'),
('2080601', 'Buhoro', '20806'),
('2080602', 'Cyambwe', '20806'),
('2080603', 'Karengera', '20806'),
('2080604', 'Kivumu', '20806'),
('2080605', 'Mpushi', '20806'),
('2080606', 'Rukambura', '20806'),
('2080700', '-- Select Cell --', '20807'),
('2080701', 'Kabuga', '20807'),
('2080702', 'Kazirabonde', '20807'),
('2080703', 'Marembo', '20807'),
('2080800', '-- Select Cell --', '20808'),
('2080801', 'Bibungo', '20808'),
('2080802', 'Kabashumba', '20808'),
('2080803', 'Kidahwe', '20808'),
('2080804', 'Mukinga', '20808'),
('2080805', 'Ngoma', '20808'),
('2080900', '-- Select Cell --', '20809'),
('2080901', 'Gitare', '20809'),
('2080902', 'Kambyeyi', '20809'),
('2080903', 'Kigusa', '20809'),
('2080904', 'Nyagishubi', '20809'),
('2080905', 'Ruyanza', '20809'),
('2081000', '-- Select Cell --', '20810'),
('2081001', 'Bihembe', '20810'),
('2081002', 'Kigese', '20810'),
('2081003', 'Masaka', '20810'),
('2081004', 'Nyarubuye', '20810'),
('2081005', 'Sheli', '20810'),
('2081100', '-- Select Cell --', '20811'),
('2081101', 'Bugoba', '20811'),
('2081102', 'Buguri', '20811'),
('2081103', 'Gishyeshye', '20811'),
('2081104', 'Murehe', '20811'),
('2081105', 'Mwirute', '20811'),
('2081106', 'Remera', '20811'),
('2081107', 'Taba', '20811'),
('2081200', '-- Select Cell --', '20812'),
('2081201', 'Gihara', '20812'),
('2081202', 'Kabagesera', '20812'),
('2081203', 'Kagina', '20812'),
('2081204', 'Muganza', '20812'),
('2081205', 'Ruyenzi', '20812'),
('3010100', '-- Select Cell --', '30101'),
('3010101', 'Burunga', '30101'),
('3010102', 'Gasura', '30101'),
('3010103', 'Gitarama', '30101'),
('3010104', 'Kayenzi', '30101'),
('3010105', 'Kibuye', '30101'),
('3010106', 'Kiniha', '30101'),
('3010107', 'Nyarusazi', '30101'),
('3010200', '-- Select Cell --', '30102'),
('3010201', 'Birambo', '30102'),
('3010202', 'Musasa', '30102'),
('3010203', 'Mwendo', '30102'),
('3010204', 'Rugobagoba', '30102'),
('3010205', 'Tongati', '30102'),
('3010300', '-- Select Cell --', '30103'),
('3010301', 'Buhoro', '30103'),
('3010302', 'Cyanya', '30103'),
('3010303', 'Kigarama', '30103'),
('3010304', 'Munanira', '30103'),
('3010305', 'Musasa', '30103'),
('3010306', 'Ngoma', '30103'),
('3010400', '-- Select Cell --', '30104'),
('3010401', 'Gasharu', '30104'),
('3010402', 'Gitega', '30104'),
('3010403', 'Kanunga', '30104'),
('3010404', 'Kirambo', '30104'),
('3010405', 'Munanira', '30104'),
('3010406', 'Nyamiringa', '30104'),
('3010407', 'Ruhinga', '30104'),
('3010408', 'Rwariro', '30104'),
('3010500', '-- Select Cell --', '30105'),
('3010501', 'Kagabiro', '30105'),
('3010502', 'Murangara', '30105'),
('3010503', 'Nyagatovu', '30105'),
('3010504', 'Ryaruhanga', '30105'),
('3010600', '-- Select Cell --', '30106'),
('3010601', 'Mubuga', '30106'),
('3010602', 'Muhororo', '30106'),
('3010603', 'Nkoto', '30106'),
('3010604', 'Nyarunyinya', '30106'),
('3010605', 'Shyembe', '30106'),
('3010700', '-- Select Cell --', '30107'),
('3010701', 'Bukiro', '30107'),
('3010702', 'Kabaya', '30107'),
('3010703', 'Kamina', '30107'),
('3010704', 'Kareba', '30107'),
('3010705', 'Nyamushishi', '30107'),
('3010706', 'Nzaratsi', '30107'),
('3010800', '-- Select Cell --', '30108'),
('3010801', 'Byogo', '30108'),
('3010802', 'Gasharu', '30108'),
('3010803', 'Gisayura', '30108'),
('3010804', 'Kanyege', '30108'),
('3010805', 'Kinyonzwe', '30108'),
('3010806', 'Murengezo', '30108'),
('3010807', 'Rwufi', '30108'),
('3010900', '-- Select Cell --', '30109'),
('3010901', 'Bubazi', '30109'),
('3010902', 'Gacaca', '30109'),
('3010903', 'Gisanze', '30109'),
('3010904', 'Gitwa', '30109'),
('3010905', 'Kibirizi', '30109'),
('3010906', 'Mataba', '30109'),
('3010907', 'Nyarugenge', '30109'),
('3010908', 'Ruragwe', '30109'),
('3011000', '-- Select Cell --', '30110'),
('3011001', 'Gisiza', '30110'),
('3011002', 'Gitega', '30110'),
('3011003', 'Gitovu', '30110'),
('3011004', 'Kabuga', '30110'),
('3011005', 'Mubuga', '30110'),
('3011006', 'Mucyimba', '30110'),
('3011007', 'Rufungo', '30110'),
('3011008', 'Rwungo', '30110'),
('3011009', 'Tyazo', '30110'),
('3011100', '-- Select Cell --', '30111'),
('3011101', 'Biguhu', '30111'),
('3011102', 'Kabingo', '30111'),
('3011103', 'Kinyovu', '30111'),
('3011104', 'Kivumu', '30111'),
('3011105', 'Nyabikeri', '30111'),
('3011106', 'Nyamugwagwa', '30111'),
('3011107', 'Rubona', '30111'),
('3011108', 'Rugobagoba', '30111'),
('3011200', '-- Select Cell --', '30112'),
('3011201', 'Bigugu', '30112'),
('3011202', 'Bisesero', '30112'),
('3011203', 'Gasata', '30112'),
('3011204', 'Munini', '30112'),
('3011205', 'Nyakamira', '30112'),
('3011206', 'Nyarusanga', '30112'),
('3011207', 'Rubazo', '30112'),
('3011208', 'Rubumba', '30112'),
('3011300', '-- Select Cell --', '30113'),
('3011301', 'Bihumbe', '30113'),
('3011302', 'Gakuta', '30113'),
('3011303', 'Gisovu', '30113'),
('3011304', 'Gitabura', '30113'),
('3011305', 'Kavumu', '30113'),
('3011306', 'Murehe', '30113'),
('3011307', 'Rutabi', '30113'),
('3020100', '-- Select Cell --', '30201'),
('3020101', 'Bushaka', '30201'),
('3020102', 'Kabihogo', '30201'),
('3020103', 'Nkira', '30201'),
('3020104', 'Remera', '30201'),
('3020200', '-- Select Cell --', '30202'),
('3020201', 'Bugina', '30202'),
('3020202', 'Congo-nil', '30202'),
('3020203', 'Mataba', '30202'),
('3020204', 'Murambi', '30202'),
('3020205', 'Ruhingo', '30202'),
('3020206', 'Shyembe', '30202'),
('3020207', 'Teba', '30202'),
('3020300', '-- Select Cell --', '30203'),
('3020301', 'Buhindure', '30203'),
('3020302', 'Nkora', '30203'),
('3020303', 'Nyagahinika', '30203'),
('3020304', 'Rukaragata', '30203'),
('3020400', '-- Select Cell --', '30204'),
('3020401', 'Bunyoni', '30204'),
('3020402', 'Bunyunju', '30204'),
('3020403', 'Kabere', '30204'),
('3020404', 'Kabujenje', '30204'),
('3020405', 'Karambi', '30204'),
('3020406', 'Nganzo', '30204'),
('3020500', '-- Select Cell --', '30205'),
('3020501', 'Haniro', '30205'),
('3020502', 'Muyira', '30205'),
('3020503', 'Tangabo', '30205'),
('3020600', '-- Select Cell --', '30206'),
('3020601', 'Kabuga', '30206'),
('3020602', 'Kagano', '30206'),
('3020603', 'Kageyo', '30206'),
('3020604', 'Kagusa', '30206'),
('3020605', 'Karambo', '30206'),
('3020606', 'Mwendo', '30206'),
('3020700', '-- Select Cell --', '30207'),
('3020701', 'Kirwa', '30207'),
('3020702', 'Mburamazi', '30207'),
('3020703', 'Rugeyo', '30207'),
('3020704', 'Twabugezi', '30207'),
('3020800', '-- Select Cell --', '30208'),
('3020801', 'Gabiro', '30208'),
('3020802', 'Gisiza', '30208'),
('3020803', 'Murambi', '30208'),
('3020804', 'Nyarubuye', '30208'),
('3020900', '-- Select Cell --', '30209'),
('3020901', 'Biruyi', '30209'),
('3020902', 'Kaguriro', '30209'),
('3020903', 'Magaba', '30209'),
('3020904', 'Rurara', '30209'),
('3021000', '-- Select Cell --', '30210'),
('3021001', 'Bumba', '30210'),
('3021002', 'Cyarusera', '30210'),
('3021003', 'Gitwa', '30210'),
('3021004', 'Mageragere', '30210'),
('3021005', 'Sure', '30210'),
('3021100', '-- Select Cell --', '30211'),
('3021101', 'Busuku', '30211'),
('3021102', 'Cyivugiza', '30211'),
('3021103', 'Mubuga', '30211'),
('3021104', 'Ngoma', '30211'),
('3021105', 'Terimbere', '30211'),
('3021200', '-- Select Cell --', '30212'),
('3021201', 'Gatare', '30212'),
('3021202', 'Gihira', '30212'),
('3021203', 'Kavumu', '30212'),
('3021204', 'Nyakarera', '30212'),
('3021205', 'Rugasa', '30212'),
('3021206', 'Rundoyi', '30212'),
('3021300', '-- Select Cell --', '30213'),
('3021301', 'Kabona', '30213'),
('3021302', 'Mberi', '30213'),
('3021303', 'Remera', '30213'),
('3021304', 'Ruronde', '30213'),
('3030100', '-- Select Cell --', '30301'),
('3030101', 'Buringo', '30301'),
('3030102', 'Butaka', '30301'),
('3030103', 'Hehu', '30301'),
('3030104', 'Kabumba', '30301'),
('3030105', 'Mutovu', '30301'),
('3030106', 'Nsherima', '30301'),
('3030107', 'Rusiza', '30301'),
('3030200', '-- Select Cell --', '30302'),
('3030201', 'Gacurabwenge', '30302'),
('3030202', 'Gasiza', '30302'),
('3030203', 'Gihonga', '30302'),
('3030204', 'Kageshi', '30302'),
('3030205', 'Makoro', '30302'),
('3030206', 'Nyacyonga', '30302'),
('3030207', 'Rusura', '30302'),
('3030300', '-- Select Cell --', '30303'),
('3030301', 'Busigari', '30303'),
('3030302', 'Cyanzarwe', '30303'),
('3030303', 'Gora', '30303'),
('3030304', 'Kinyanzovu', '30303'),
('3030305', 'Makurizo', '30303'),
('3030306', 'Rwangara', '30303'),
('3030307', 'Rwanzekuma', '30303'),
('3030308', 'Ryabizige', '30303'),
('3030400', '-- Select Cell --', '30304'),
('3030401', 'Amahoro', '30304'),
('3030402', 'Bugoyi', '30304'),
('3030403', 'Kivumu', '30304'),
('3030404', 'Mbugangari', '30304'),
('3030405', 'Nengo', '30304'),
('3030406', 'Rubavu', '30304'),
('3030407', 'Umuganda', '30304'),
('3030500', '-- Select Cell --', '30305'),
('3030501', 'Kamuhoza', '30305'),
('3030502', 'Karambo', '30305'),
('3030503', 'Mahoko', '30305'),
('3030504', 'Musabike', '30305'),
('3030505', 'Nkomane', '30305'),
('3030506', 'Rusongati', '30305'),
('3030507', 'Yungwe', '30305'),
('3030600', '-- Select Cell --', '30306'),
('3030601', 'Kanyirabigogo', '30306'),
('3030602', 'Kirerema', '30306'),
('3030603', 'Muramba', '30306'),
('3030604', 'Nyamikongi', '30306'),
('3030605', 'Nyamirango', '30306'),
('3030606', 'Nyaruteme', '30306'),
('3030700', '-- Select Cell --', '30307'),
('3030701', 'Bihungwe', '30307'),
('3030702', 'Kanyundo', '30307'),
('3030703', 'Micinyiro', '30307'),
('3030704', 'Mirindi', '30307'),
('3030705', 'Ndoranyi', '30307'),
('3030706', 'Rungu', '30307'),
('3030707', 'Rwanyakayaga', '30307'),
('3030800', '-- Select Cell --', '30308'),
('3030801', 'Bisizi', '30308'),
('3030802', 'Gikombe', '30308'),
('3030803', 'Kanyefurwe', '30308'),
('3030804', 'Nyarushyamba', '30308'),
('3030900', '-- Select Cell --', '30309'),
('3030901', 'Burushya', '30309'),
('3030902', 'Busoro', '30309'),
('3030903', 'Kinigi', '30309'),
('3030904', 'Kiraga', '30309'),
('3030905', 'Munanira', '30309'),
('3030906', 'Rubona', '30309'),
('3031000', '-- Select Cell --', '30310'),
('3031001', 'Bahimba', '30310'),
('3031002', 'Gatovu', '30310'),
('3031003', 'Kavomo', '30310'),
('3031004', 'Kigarama', '30310'),
('3031005', 'Mukondo', '30310'),
('3031006', 'Nyundo', '30310'),
('3031007', 'Terimbere', '30310'),
('3031100', '-- Select Cell --', '30311'),
('3031101', 'Buhaza', '30311'),
('3031102', 'Burinda', '30311'),
('3031103', 'Byahi', '30311'),
('3031104', 'Gikombe', '30311'),
('3031105', 'Murambi', '30311'),
('3031106', 'Murara', '30311'),
('3031107', 'Rukoko', '30311'),
('3031200', '-- Select Cell --', '30312'),
('3031201', 'Basa', '30312'),
('3031202', 'Gisa', '30312'),
('3031203', 'Kabilizi', '30312'),
('3031204', 'Muhira', '30312'),
('3031205', 'Rugerero', '30312'),
('3031206', 'Rushubi', '30312'),
('3031207', 'Rwaza', '30312'),
('3040100', '-- Select Cell --', '30401'),
('3040101', 'Arusha', '30401'),
('3040102', 'Basumba', '30401'),
('3040103', 'Kijote', '30401'),
('3040104', 'Kora', '30401'),
('3040105', 'Muhe', '30401'),
('3040106', 'Rega', '30401'),
('3040200', '-- Select Cell --', '30402'),
('3040201', 'Bukinanyana', '30402'),
('3040202', 'Gasizi', '30402'),
('3040203', 'Kabatezi', '30402'),
('3040204', 'Kareba', '30402'),
('3040205', 'Nyirakigugu', '30402'),
('3040206', 'Rega', '30402'),
('3040300', '-- Select Cell --', '30403'),
('3040301', 'Gasiza', '30403'),
('3040302', 'Gasura', '30403'),
('3040303', 'Gisizi', '30403'),
('3040304', 'Guriro', '30403'),
('3040305', 'Kavumu', '30403'),
('3040306', 'Nyamitanzi', '30403'),
('3040400', '-- Select Cell --', '30404'),
('3040401', 'Batikoti', '30404'),
('3040402', 'Cyamvumba', '30404'),
('3040403', 'Gihorwe', '30404'),
('3040404', 'Myuga', '30404'),
('3040405', 'Ngando', '30404'),
('3040406', 'Rugarama', '30404'),
('3040500', '-- Select Cell --', '30405'),
('3040501', 'Busoro', '30405'),
('3040502', 'Cyamabuye', '30405'),
('3040503', 'Gatagara', '30405'),
('3040504', 'Gihirwa', '30405'),
('3040505', 'Kadahenda', '30405'),
('3040506', 'Karengera', '30405'),
('3040600', '-- Select Cell --', '30406'),
('3040601', 'Gatovu', '30406'),
('3040602', 'Kintobo', '30406'),
('3040603', 'Nyagisozi', '30406'),
('3040604', 'Nyamugari', '30406'),
('3040605', 'Rukondo', '30406'),
('3040606', 'Ryinyo', '30406'),
('3040700', '-- Select Cell --', '30407'),
('3040701', 'Gasizi', '30407'),
('3040702', 'Jaba', '30407'),
('3040703', 'Kanyove', '30407'),
('3040704', 'Rubaya', '30407'),
('3040705', 'Rugeshi', '30407'),
('3040706', 'Rukoma', '30407'),
('3040707', 'Rurengeri', '30407'),
('3040800', '-- Select Cell --', '30408'),
('3040801', 'Gisizi', '30408'),
('3040802', 'Mulinga', '30408'),
('3040803', 'Mwiyanike', '30408'),
('3040804', 'Nkomane', '30408'),
('3040805', 'Nyamasheke', '30408'),
('3040806', 'Rwantobo', '30408'),
('3040900', '-- Select Cell --', '30409'),
('3040901', 'Birembo', '30409'),
('3040902', 'Guriro', '30409'),
('3040903', 'Kibisabo', '30409'),
('3040904', 'Mutaho', '30409'),
('3040905', 'Nyundo', '30409'),
('3040906', 'Rugamba', '30409'),
('3041000', '-- Select Cell --', '30410'),
('3041001', 'Gakoro', '30410'),
('3041002', 'Marangara', '30410'),
('3041003', 'Nyagahondo', '30410'),
('3041004', 'Nyarutembe', '30410'),
('3041005', 'Rurembo', '30410'),
('3041006', 'Tyazo', '30410'),
('3041100', '-- Select Cell --', '30411'),
('3041101', 'Gahondo', '30411'),
('3041102', 'Gitega', '30411'),
('3041103', 'Kirimbogo', '30411'),
('3041104', 'Murambi', '30411'),
('3041105', 'Mwana', '30411'),
('3041106', 'Rwaza', '30411'),
('3041200', '-- Select Cell --', '30412'),
('3041201', 'Cyimanzovu', '30412'),
('3041202', 'Kanyamitana', '30412'),
('3041203', 'Kintarure', '30412'),
('3041204', 'Mpinga', '30412'),
('3041205', 'Mutanda', '30412'),
('3041206', 'Shaki', '30412'),
('3050100', '-- Select Cell --', '30501'),
('3050101', 'Bungwe', '30501'),
('3050102', 'Cyahafi', '30501'),
('3050103', 'Gashubi', '30501'),
('3050104', 'Kabarondo', '30501'),
('3050105', 'Ruhindage', '30501'),
('3050200', '-- Select Cell --', '30502'),
('3050201', 'Cyome', '30502'),
('3050202', 'Gatsibo', '30502'),
('3050203', 'Kamasiga', '30502'),
('3050204', 'Karambo', '30502'),
('3050205', 'Ruhanga', '30502'),
('3050206', 'Rusumo', '30502'),
('3050300', '-- Select Cell --', '30503'),
('3050301', 'Gatare', '30503'),
('3050302', 'Gatega', '30503'),
('3050303', 'Kajinge', '30503'),
('3050304', 'Marantima', '30503'),
('3050305', 'Rugendabari', '30503'),
('3050306', 'Runyinya', '30503'),
('3050400', '-- Select Cell --', '30504'),
('3050401', 'Busunzu', '30504'),
('3050402', 'Gaseke', '30504'),
('3050403', 'Kabaya', '30504'),
('3050404', 'Mwendo', '30504'),
('3050405', 'Ngoma', '30504'),
('3050406', 'Nyenyeri', '30504'),
('3050500', '-- Select Cell --', '30505'),
('3050501', 'Kageshi', '30505'),
('3050502', 'Kirwa', '30505'),
('3050503', 'Mukore', '30505'),
('3050504', 'Muramba', '30505'),
('3050505', 'Nyamata', '30505'),
('3050506', 'Rwamamara', '30505'),
('3050600', '-- Select Cell --', '30506'),
('3050601', 'Birembo', '30506'),
('3050602', 'Gitwa', '30506'),
('3050603', 'Murinzi', '30506'),
('3050604', 'Nyamugeyo', '30506'),
('3050605', 'Rugeshi', '30506'),
('3050606', 'Tetero', '30506'),
('3050700', '-- Select Cell --', '30507'),
('3050701', 'Binana', '30507'),
('3050702', 'Gitega', '30507'),
('3050703', 'Matare', '30507'),
('3050704', 'Rutare', '30507'),
('3050705', 'Rwamiko', '30507'),
('3050800', '-- Select Cell --', '30508'),
('3050801', 'Bugarura', '30508'),
('3050802', 'Gasiza', '30508'),
('3050803', 'Mashya', '30508'),
('3050804', 'Nganzo', '30508'),
('3050805', 'Ngoma', '30508'),
('3050806', 'Rutagara', '30508'),
('3050900', '-- Select Cell --', '30509'),
('3050901', 'Bweramana', '30509'),
('3050902', 'Mubuga', '30509'),
('3050903', 'Myiha', '30509'),
('3050904', 'Rugogwe', '30509'),
('3050905', 'Rusororo', '30509'),
('3050906', 'Sanza', '30509'),
('3051000', '-- Select Cell --', '30510'),
('3051001', 'Bijyojyo', '30510'),
('3051002', 'Bitabage', '30510'),
('3051003', 'Kabageshi', '30510'),
('3051004', 'Kibanda', '30510'),
('3051005', 'Kinyovi', '30510'),
('3051100', '-- Select Cell --', '30511'),
('3051101', 'Kaseke', '30511'),
('3051102', 'Kazabe', '30511'),
('3051103', 'Mugano', '30511'),
('3051104', 'Nyange', '30511'),
('3051105', 'Rususa', '30511'),
('3051106', 'Torero', '30511'),
('3051200', '-- Select Cell --', '30512'),
('3051201', 'Bambiro', '30512'),
('3051202', 'Gaseke', '30512'),
('3051203', 'Nsibo', '30512'),
('3051204', 'Vuganyana', '30512'),
('3051300', '-- Select Cell --', '30513'),
('3051301', 'Birembo', '30513'),
('3051302', 'Kagano', '30513'),
('3051303', 'Kanyana', '30513'),
('3051304', 'Musenyi', '30513'),
('3051305', 'Nyabipfura', '30513'),
('3051306', 'Rutovu', '30513'),
('3060100', '-- Select Cell --', '30601'),
('3060101', 'Nyange', '30601'),
('3060102', 'Pera', '30601'),
('3060103', 'Ryankana', '30601'),
('3060200', '-- Select Cell --', '30602'),
('3060201', 'Butanda', '30602'),
('3060202', 'Gatereri', '30602'),
('3060203', 'Nyamihanda', '30602'),
('3060204', 'Rwambogo', '30602'),
('3060300', '-- Select Cell --', '30603'),
('3060301', 'Gikungu', '30603'),
('3060302', 'Kiyabo', '30603'),
('3060303', 'Murwa', '30603'),
('3060304', 'Nyamuzi', '30603'),
('3060305', 'Rasano', '30603'),
('3060400', '-- Select Cell --', '30604'),
('3060401', 'Birembo', '30604'),
('3060402', 'Buhokoro', '30604'),
('3060403', 'Kabakobwa', '30604'),
('3060404', 'Kacyuma', '30604'),
('3060405', 'Kamurehe', '30604'),
('3060406', 'Karemereye', '30604'),
('3060407', 'Muti', '30604'),
('3060408', 'Rusayo', '30604'),
('3060500', '-- Select Cell --', '30605'),
('3060501', 'Cyendajuru', '30605'),
('3060502', 'Gakomeye', '30605'),
('3060503', 'Giheke', '30605'),
('3060504', 'Kamashangi', '30605'),
('3060505', 'Kigenge', '30605'),
('3060506', 'Ntura', '30605'),
('3060507', 'Rwega', '30605'),
('3060508', 'Turambi', '30605'),
('3060600', '-- Select Cell --', '30606'),
('3060601', 'Burunga', '30606'),
('3060602', 'Gatsiro', '30606'),
('3060603', 'Gihaya', '30606'),
('3060604', 'Kagara', '30606'),
('3060605', 'Kamatita', '30606'),
('3060606', 'Shagasha', '30606'),
('3060700', '-- Select Cell --', '30607'),
('3060701', 'Kizura', '30607'),
('3060702', 'Mpinga', '30607'),
('3060703', 'Nyamigina', '30607'),
('3060800', '-- Select Cell --', '30608'),
('3060801', 'Cyingwa', '30608'),
('3060802', 'Gahungeri', '30608'),
('3060803', 'Hangabashi', '30608'),
('3060804', 'Mashesha', '30608'),
('3060900', '-- Select Cell --', '30609'),
('3060901', 'Cyangugu', '30609'),
('3060902', 'Gihundwe', '30609'),
('3060903', 'Kamashangi', '30609'),
('3060904', 'Kamurera', '30609'),
('3060905', 'Ruganda', '30609'),
('3061000', '-- Select Cell --', '30610'),
('3061001', 'Cyarukara', '30610'),
('3061002', 'Gakoni', '30610'),
('3061003', 'Shara', '30610'),
('3061100', '-- Select Cell --', '30611'),
('3061101', 'Gahinga', '30611'),
('3061102', 'Kabahinda', '30611'),
('3061103', 'Kabasigirira', '30611'),
('3061104', 'Kagarama', '30611'),
('3061105', 'Karambi', '30611'),
('3061106', 'Miko', '30611'),
('3061107', 'Tara', '30611'),
('3061200', '-- Select Cell --', '30612'),
('3061201', 'Gitwa', '30612'),
('3061202', 'Kamanyenga', '30612'),
('3061203', 'Kangazi', '30612'),
('3061204', 'Kinyaga', '30612'),
('3061205', 'Rugabano', '30612'),
('3061300', '-- Select Cell --', '30613'),
('3061301', 'Bigoga', '30613'),
('3061302', 'Bugarura', '30613'),
('3061303', 'Ishywa', '30613'),
('3061304', 'Kamagimbo', '30613'),
('3061305', 'Rwenje', '30613'),
('3061400', '-- Select Cell --', '30614'),
('3061401', 'Gatare', '30614'),
('3061402', 'Kiziguro', '30614'),
('3061403', 'Mataba', '30614'),
('3061404', 'Ryamuhirwa', '30614'),
('3061500', '-- Select Cell --', '30615'),
('3061501', 'Gasebeya', '30615'),
('3061502', 'Gaseke', '30615'),
('3061503', 'Kamanu', '30615'),
('3061504', 'Kiziho', '30615'),
('3061505', 'Mashyuza', '30615'),
('3061506', 'Nyabintare', '30615'),
('3061600', '-- Select Cell --', '30616'),
('3061601', 'Gatare', '30616'),
('3061602', 'Kabagina', '30616'),
('3061603', 'Kabuye', '30616'),
('3061604', 'Kanoga', '30616'),
('3061605', 'Karangiro', '30616'),
('3061606', 'Murambi', '30616'),
('3061607', 'Rusambu', '30616'),
('3061700', '-- Select Cell --', '30617'),
('3061701', 'Butambamo', '30617'),
('3061702', 'Kigenge', '30617'),
('3061703', 'Murya', '30617'),
('3061704', 'Nyenji', '30617'),
('3061705', 'Rebero', '30617'),
('3061706', 'Rwinzuki', '30617'),
('3061800', '-- Select Cell --', '30618'),
('3061801', 'Karenge', '30618'),
('3061802', 'Muhehwe', '30618'),
('3061803', 'Mushaka', '30618'),
('3061804', 'Rubugu', '30618'),
('3061805', 'Ruganda', '30618'),
('3070100', '-- Select Cell --', '30701'),
('3070101', 'Buvungira', '30701'),
('3070102', 'Mpumbu', '30701'),
('3070103', 'Ngoma', '30701'),
('3070104', 'Nyarusange', '30701'),
('3070200', '-- Select Cell --', '30702'),
('3070201', 'Gasheke', '30702'),
('3070202', 'Impala', '30702'),
('3070203', 'Kagatamu', '30702'),
('3070204', 'Karusimbi', '30702'),
('3070300', '-- Select Cell --', '30703'),
('3070301', 'Bisumo', '30703'),
('3070302', 'Murambi', '30703'),
('3070303', 'Mutongo', '30703'),
('3070304', 'Rugari', '30703'),
('3070400', '-- Select Cell --', '30704'),
('3070401', 'Butare', '30704'),
('3070402', 'Gitwa', '30704'),
('3070403', 'Jarama', '30704'),
('3070404', 'Kibingo', '30704'),
('3070405', 'Mubuga', '30704'),
('3070500', '-- Select Cell --', '30705'),
('3070501', 'Gako', '30705'),
('3070502', 'Mubumbano', '30705'),
('3070503', 'Ninzi', '30705'),
('3070504', 'Rwesero', '30705'),
('3070505', 'Shara', '30705'),
('3070600', '-- Select Cell --', '30706'),
('3070601', 'Kibogora', '30706'),
('3070602', 'Kigarama', '30706'),
('3070603', 'Kigoya', '30706'),
('3070604', 'Raro', '30706'),
('3070605', 'Susa', '30706'),
('3070700', '-- Select Cell --', '30707'),
('3070701', 'Gasovu', '30707'),
('3070702', 'Gitwe', '30707'),
('3070703', 'Kabuga', '30707'),
('3070704', 'Kagarama', '30707'),
('3070705', 'Rushyarara', '30707'),
('3070800', '-- Select Cell --', '30708'),
('3070801', 'Gasayo', '30708'),
('3070802', 'Gashashi', '30708'),
('3070803', 'Higiro', '30708'),
('3070804', 'Miko', '30708'),
('3070805', 'Mwezi', '30708'),
('3070900', '-- Select Cell --', '30709'),
('3070901', 'Cyimpindu', '30709'),
('3070902', 'Karengera', '30709'),
('3070903', 'Muhororo', '30709'),
('3070904', 'Nyarusange', '30709'),
('3071000', '-- Select Cell --', '30710'),
('3071001', 'Gatare', '30710'),
('3071002', 'Mutongo', '30710'),
('3071003', 'Nyakabingo', '30710'),
('3071004', 'Rugari', '30710'),
('3071005', 'Vugangoma', '30710'),
('3071100', '-- Select Cell --', '30711'),
('3071101', 'Gisoke', '30711'),
('3071102', 'Kagarama', '30711'),
('3071103', 'Nyagatare', '30711'),
('3071104', 'Nyakavumu', '30711'),
('3071200', '-- Select Cell --', '30712'),
('3071201', 'Kigabiro', '30712'),
('3071202', 'Kinunga', '30712'),
('3071203', 'Mariba', '30712'),
('3071204', 'Muyange', '30712'),
('3071205', 'Ntango', '30712'),
('3071300', '-- Select Cell --', '30713'),
('3071301', 'Banda', '30713'),
('3071302', 'Gakenke', '30713'),
('3071303', 'Jurwe', '30713'),
('3071304', 'Murambi', '30713'),
('3071400', '-- Select Cell --', '30714'),
('3071401', 'Kanazi', '30714'),
('3071402', 'Ntendezi', '30714'),
('3071403', 'Save', '30714'),
('3071404', 'Wimana', '30714'),
('3071500', '-- Select Cell --', '30715'),
('3071501', 'Burimba', '30715'),
('3071502', 'Mataba', '30715'),
('3071503', 'Mugera', '30715'),
('3071504', 'Nyamugari', '30715'),
('3071505', 'Shangi', '30715'),
('4010100', '-- Select Cell --', '40101'),
('4010101', 'Cyohoha', '40101'),
('4010102', 'Gitare', '40101'),
('4010103', 'Rwamahwa', '40101'),
('4010200', '-- Select Cell --', '40102'),
('4010201', 'Butangampundu', '40102'),
('4010202', 'Karengeri', '40102'),
('4010203', 'Taba', '40102'),
('4010300', '-- Select Cell --', '40103'),
('4010301', 'Gasiza', '40103'),
('4010302', 'Giko', '40103'),
('4010303', 'Kayenzi', '40103'),
('4010304', 'Mukoto', '40103'),
('4010305', 'Nyirangarama', '40103'),
('4010400', '-- Select Cell --', '40104'),
('4010401', 'Busoro', '40104'),
('4010402', 'Butare', '40104'),
('4010403', 'Gahororo', '40104'),
('4010404', 'Gitumba', '40104'),
('4010405', 'Karama', '40104'),
('4010406', 'Mwumba', '40104'),
('4010407', 'Ndarage', '40104'),
('4010500', '-- Select Cell --', '40105'),
('4010501', 'Budakiranya', '40105'),
('4010502', 'Migendezo', '40105'),
('4010503', 'Rudogo', '40105'),
('4010600', '-- Select Cell --', '40106'),
('4010601', 'Burehe', '40106'),
('4010602', 'Marembo', '40106'),
('4010603', 'Rwili', '40106'),
('4010700', '-- Select Cell --', '40107'),
('4010701', 'Butunzi', '40107'),
('4010702', 'Karegamazi', '40107'),
('4010703', 'Marembo', '40107'),
('4010704', 'Rebero', '40107'),
('4010800', '-- Select Cell --', '40108'),
('4010801', 'Gitatsa', '40108'),
('4010802', 'Kamushenyi', '40108'),
('4010803', 'Kigarama', '40108'),
('4010804', 'Mubuga', '40108'),
('4010805', 'Murama', '40108'),
('4010806', 'Sayo', '40108'),
('4010900', '-- Select Cell --', '40109'),
('4010901', 'Kabuga', '40109'),
('4010902', 'Kigarama', '40109'),
('4010903', 'Kivugiza', '40109'),
('4010904', 'Nyamyumba', '40109'),
('4010905', 'Shengampuli', '40109'),
('4011000', '-- Select Cell --', '40110'),
('4011001', 'Bukoro', '40110'),
('4011002', 'Mushari', '40110'),
('4011003', 'Ngiramazi', '40110'),
('4011004', 'Rurenge', '40110'),
('4011100', '-- Select Cell --', '40111'),
('4011101', 'Bubangu', '40111'),
('4011102', 'Gatwa', '40111'),
('4011103', 'Mugambazi', '40111'),
('4011104', 'Mvuzo', '40111'),
('4011200', '-- Select Cell --', '40112'),
('4011201', 'Kabuga', '40112'),
('4011202', 'Karambo', '40112'),
('4011203', 'Mugote', '40112'),
('4011204', 'Munyarwanda', '40112'),
('4011300', '-- Select Cell --', '40113'),
('4011301', 'Kajevuba', '40113');
INSERT INTO `cells` (`codecell`, `nameCell`, `sectorcode`) VALUES
('4011302', 'Kiyanza', '40113'),
('4011303', 'Mahaza', '40113'),
('4011400', '-- Select Cell --', '40114'),
('4011401', 'Buraro', '40114'),
('4011402', 'Bwimo', '40114'),
('4011403', 'Mberuka', '40114'),
('4011404', 'Mbuye', '40114'),
('4011500', '-- Select Cell --', '40115'),
('4011501', 'Gako', '40115'),
('4011502', 'Kirenge', '40115'),
('4011503', 'Taba', '40115'),
('4011600', '-- Select Cell --', '40116'),
('4011601', 'Bugaragara', '40116'),
('4011602', 'Kijabagwe', '40116'),
('4011603', 'Muvumu', '40116'),
('4011604', 'Rubona', '40116'),
('4011605', 'Rutonde', '40116'),
('4011700', '-- Select Cell --', '40117'),
('4011701', 'Barari', '40117'),
('4011702', 'Gahabwa', '40117'),
('4011703', 'Misezero', '40117'),
('4011704', 'Nyirabirori', '40117'),
('4011705', 'Taba', '40117'),
('4020100', '-- Select Cell --', '40201'),
('4020101', 'Birambo ', '40201'),
('4020102', 'Butereri ', '40201'),
('4020103', 'Byibuhiro ', '40201'),
('4020104', 'Kamina ', '40201'),
('4020105', 'Kirabo ', '40201'),
('4020106', 'Mwumba ', '40201'),
('4020107', 'Ruhanga ', '40201'),
('4020200', '-- Select Cell --', '40202'),
('4020201', 'Kiruku ', '40202'),
('4020202', 'Mbirima ', '40202'),
('4020203', 'Nyange ', '40202'),
('4020204', 'Nyanza ', '40202'),
('4020300', '-- Select Cell --', '40203'),
('4020301', 'Muhaza ', '40203'),
('4020302', 'Muhororo ', '40203'),
('4020303', 'Muramba ', '40203'),
('4020304', 'Mutanda ', '40203'),
('4020305', 'Rukore ', '40203'),
('4020400', '-- Select Cell --', '40204'),
('4020401', 'Buheta ', '40204'),
('4020402', 'Kagoma ', '40204'),
('4020403', 'Nganzo ', '40204'),
('4020404', 'Rusagara ', '40204'),
('4020500', '-- Select Cell --', '40205'),
('4020501', 'Nyacyina ', '40205'),
('4020502', 'Rukura ', '40205'),
('4020503', 'Rutabo ', '40205'),
('4020504', 'Rutenderi ', '40205'),
('4020505', 'Taba ', '40205'),
('4020600', '-- Select Cell --', '40206'),
('4020601', 'Gakindo ', '40206'),
('4020602', 'Gashyamba ', '40206'),
('4020603', 'Gatwa ', '40206'),
('4020604', 'Karukungu ', '40206'),
('4020700', '-- Select Cell --', '40207'),
('4020701', 'Kamubuga ', '40207'),
('4020702', 'Kidomo ', '40207'),
('4020703', 'Mbatabata ', '40207'),
('4020704', 'Rukore ', '40207'),
('4020800', '-- Select Cell --', '40208'),
('4020801', 'Kanyanza ', '40208'),
('4020802', 'Karambo ', '40208'),
('4020803', 'Kirebe ', '40208'),
('4020900', '-- Select Cell --', '40209'),
('4020901', 'Cyintare ', '40209'),
('4020902', 'Gasiza ', '40209'),
('4020903', 'Rugimbu ', '40209'),
('4020904', 'Ruhinga ', '40209'),
('4020905', 'Sereri ', '40209'),
('4021000', '-- Select Cell --', '40210'),
('4021001', 'Buyange ', '40210'),
('4021002', 'Gikombe ', '40210'),
('4021003', 'Nyundo ', '40210'),
('4021100', '-- Select Cell --', '40211'),
('4021101', 'Gasiho ', '40211'),
('4021102', 'Munyana ', '40211'),
('4021103', 'Murambi ', '40211'),
('4021104', 'Raba ', '40211'),
('4021200', '-- Select Cell --', '40212'),
('4021201', 'Gahinga ', '40212'),
('4021202', 'Munyana ', '40212'),
('4021203', 'Mutego ', '40212'),
('4021204', 'Nkomane ', '40212'),
('4021205', 'Rutabo ', '40212'),
('4021206', 'Rutenderi ', '40212'),
('4021207', 'Rwamambe ', '40212'),
('4021300', '-- Select Cell --', '40213'),
('4021301', 'Busake', '40213'),
('4021302', 'Bwenda', '40213'),
('4021303', 'Gasiza ', '40213'),
('4021304', 'Gihinga ', '40213'),
('4021305', 'Huro ', '40213'),
('4021306', 'Musagara ', '40213'),
('4021307', 'Musenyi ', '40213'),
('4021308', 'Ruganda ', '40213'),
('4021309', 'Rwinkuba ', '40213'),
('4021400', '-- Select Cell --', '40214'),
('4021401', 'Bumba ', '40214'),
('4021402', 'Gisiza ', '40214'),
('4021403', 'Karyango ', '40214'),
('4021404', 'Nganzo ', '40214'),
('4021405', 'Va ', '40214'),
('4021500', '-- Select Cell --', '40215'),
('4021501', 'Kabatezi ', '40215'),
('4021502', 'Kiryamo ', '40215'),
('4021503', 'Mubuga ', '40215'),
('4021504', 'Mwiyando ', '40215'),
('4021505', 'Rwa ', '40215'),
('4021600', '-- Select Cell --', '40216'),
('4021601', 'Buranga ', '40216'),
('4021602', 'Gahinga ', '40216'),
('4021603', 'Gisozi ', '40216'),
('4021604', 'Mucaca ', '40216'),
('4021700', '-- Select Cell --', '40217'),
('4021701', 'Busoro ', '40217'),
('4021702', 'Gikingo ', '40217'),
('4021703', 'Jango ', '40217'),
('4021704', 'Ruli ', '40217'),
('4021705', 'Rwesero ', '40217'),
('4021800', '-- Select Cell --', '40218'),
('4021801', 'Gataba ', '40218'),
('4021802', 'Kamonyi ', '40218'),
('4021803', 'Murambi ', '40218'),
('4021804', 'Nyundo ', '40218'),
('4021805', 'Rumbi ', '40218'),
('4021806', 'Rurembo ', '40218'),
('4021900', '-- Select Cell --', '40219'),
('4021901', 'Burimba ', '40219'),
('4021902', 'Busanane ', '40219'),
('4021903', 'Joma ', '40219'),
('4021904', 'Kageyo ', '40219'),
('4021905', 'Mbogo ', '40219'),
('4021906', 'Razi ', '40219'),
('4021907', 'Rwankuba ', '40219'),
('4021908', 'Shyombwe ', '40219'),
('4030100', '-- Select Cell --', '40301'),
('4030101', 'Gisesero', '40301'),
('4030102', 'Kavumu', '40301'),
('4030103', 'Nyagisozi', '40301'),
('4030104', 'Sahara', '40301'),
('4030200', '-- Select Cell --', '40302'),
('4030201', 'Bukinanyana', '40302'),
('4030202', 'Buruba', '40302'),
('4030203', 'Cyanya', '40302'),
('4030204', 'Kabeza', '40302'),
('4030205', 'Migeshi', '40302'),
('4030206', 'Rwebeya', '40302'),
('4030300', '-- Select Cell --', '40303'),
('4030301', 'Gakoro', '40303'),
('4030302', 'Gasakuza', '40303'),
('4030303', 'Kabirizi', '40303'),
('4030304', 'Karwasa', '40303'),
('4030400', '-- Select Cell --', '40304'),
('4030401', 'Kigabiro', '40304'),
('4030402', 'Kivumu', '40304'),
('4030403', 'Mbwe', '40304'),
('4030404', 'Muharuro', '40304'),
('4030500', '-- Select Cell --', '40305'),
('4030501', 'Mudakama', '40305'),
('4030502', 'Murago', '40305'),
('4030503', 'Rubindi', '40305'),
('4030504', 'Rungu', '40305'),
('4030600', '-- Select Cell --', '40306'),
('4030601', 'Birira', '40306'),
('4030602', 'Buramira', '40306'),
('4030603', 'Kivumu', '40306'),
('4030604', 'Mbizi', '40306'),
('4030700', '-- Select Cell --', '40307'),
('4030701', 'Bisoke', '40307'),
('4030702', 'Kaguhu', '40307'),
('4030703', 'Kampanga', '40307'),
('4030704', 'Nyabigoma', '40307'),
('4030705', 'Nyonirima', '40307'),
('4030800', '-- Select Cell --', '40308'),
('4030801', 'Cyabararika', '40308'),
('4030802', 'Kigombe', '40308'),
('4030803', 'Mpenge', '40308'),
('4030804', 'Ruhengeri', '40308'),
('4030900', '-- Select Cell --', '40309'),
('4030901', 'Cyivugiza', '40309'),
('4030902', 'Cyogo', '40309'),
('4030903', 'Mburabuturo', '40309'),
('4030904', 'Songa', '40309'),
('4031000', '-- Select Cell --', '40310'),
('4031001', 'Cyabagarura', '40310'),
('4031002', 'Garuka', '40310'),
('4031003', 'Kabazungu', '40310'),
('4031004', 'Nyarubuye', '40310'),
('4031005', 'Rwambogo', '40310'),
('4031100', '-- Select Cell --', '40311'),
('4031101', 'Bikara', '40311'),
('4031102', 'Gashinga', '40311'),
('4031103', 'Mubago', '40311'),
('4031104', 'Rugeshi', '40311'),
('4031105', 'Ruyumba', '40311'),
('4031200', '-- Select Cell --', '40312'),
('4031201', 'Cyivugiza', '40312'),
('4031202', 'Kabeza', '40312'),
('4031203', 'Kamwumba', '40312'),
('4031204', 'Muhabura', '40312'),
('4031205', 'Ninda', '40312'),
('4031300', '-- Select Cell --', '40313'),
('4031301', 'Gasongero', '40313'),
('4031302', 'Kamisave', '40313'),
('4031303', 'Murandi', '40313'),
('4031304', 'Murwa', '40313'),
('4031305', 'Rurambo', '40313'),
('4031400', '-- Select Cell --', '40314'),
('4031401', 'Bumara', '40314'),
('4031402', 'Kabushinge', '40314'),
('4031403', 'Musezero', '40314'),
('4031404', 'Nturo', '40314'),
('4031405', 'Nyarubuye', '40314'),
('4031500', '-- Select Cell --', '40315'),
('4031501', 'Gakingo', '40315'),
('4031502', 'Kibuguzo', '40315'),
('4031503', 'Mudende', '40315'),
('4031504', 'Mugari', '40315'),
('4040100', '-- Select Cell --', '40401'),
('4040101', 'Bungwe', '40401'),
('4040102', 'Bushenya', '40401'),
('4040103', 'Mudugari', '40401'),
('4040104', 'Tumba', '40401'),
('4040200', '-- Select Cell --', '40402'),
('4040201', 'Gatsibo', '40402'),
('4040202', 'Mubuga', '40402'),
('4040203', 'Muhotora', '40402'),
('4040204', 'Nyamicucu', '40402'),
('4040205', 'Rusumo', '40402'),
('4040300', '-- Select Cell --', '40403'),
('4040301', 'Gasiza', '40403'),
('4040302', 'Gisovu', '40403'),
('4040303', 'Kabyiniro', '40403'),
('4040304', 'Kagitega', '40403'),
('4040305', 'Kamanyana', '40403'),
('4040306', 'Nyagahinga', '40403'),
('4040400', '-- Select Cell --', '40404'),
('4040401', 'Butare', '40404'),
('4040402', 'Ndongozi', '40404'),
('4040403', 'Ruyange', '40404'),
('4040500', '-- Select Cell --', '40405'),
('4040501', 'Buramba', '40405'),
('4040502', 'Gisizi', '40405'),
('4040503', 'Kidakama', '40405'),
('4040504', 'Nyangwe', '40405'),
('4040505', 'Rwasa', '40405'),
('4040600', '-- Select Cell --', '40406'),
('4040601', 'Gabiro', '40406'),
('4040602', 'Musenda', '40406'),
('4040603', 'Rwambogo', '40406'),
('4040604', 'Rwasa', '40406'),
('4040700', '-- Select Cell --', '40407'),
('4040701', 'Mariba', '40407'),
('4040702', 'Musasa', '40407'),
('4040703', 'Runoga', '40407'),
('4040800', '-- Select Cell --', '40408'),
('4040801', 'Kabaya', '40408'),
('4040802', 'Kayenzi', '40408'),
('4040803', 'Kiringa', '40408'),
('4040804', 'Nyamabuye', '40408'),
('4040900', '-- Select Cell --', '40409'),
('4040901', 'Gafuka', '40409'),
('4040902', 'Nkenke', '40409'),
('4040903', 'Nkumba', '40409'),
('4040904', 'Ntaruka', '40409'),
('4041000', '-- Select Cell --', '40410'),
('4041001', 'Bugamba', '40410'),
('4041002', 'Kaganda', '40410'),
('4041003', 'Musasa', '40410'),
('4041004', 'Rutovu', '40410'),
('4041100', '-- Select Cell --', '40411'),
('4041101', 'Bukwashuri', '40411'),
('4041102', 'Gashanje', '40411'),
('4041103', 'Murwa', '40411'),
('4041104', 'Nyirataba', '40411'),
('4041200', '-- Select Cell --', '40412'),
('4041201', 'Kivumu', '40412'),
('4041202', 'Nyamugari', '40412'),
('4041203', 'Rubona', '40412'),
('4041204', 'Rushara', '40412'),
('4041300', '-- Select Cell --', '40413'),
('4041301', 'Cyahi', '40413'),
('4041302', 'Gafumba', '40413'),
('4041303', 'Karangara', '40413'),
('4041304', 'Rurembo', '40413'),
('4041400', '-- Select Cell --', '40414'),
('4041401', 'Kilibata', '40414'),
('4041402', 'Mucaca', '40414'),
('4041403', 'Nyanamo', '40414'),
('4041404', 'Rukandabyuma', '40414'),
('4041500', '-- Select Cell --', '40415'),
('4041501', 'Gaseke', '40415'),
('4041502', 'Gatare', '40415'),
('4041503', 'Gitovu', '40415'),
('4041504', 'Rusekera', '40415'),
('4041600', '-- Select Cell --', '40416'),
('4041601', 'Kabona', '40416'),
('4041602', 'Ndago', '40416'),
('4041603', 'Ruhanga', '40416'),
('4041700', '-- Select Cell --', '40417'),
('4041701', 'Gacundura', '40417'),
('4041702', 'Gashoro', '40417'),
('4041703', 'Ruconsho', '40417'),
('4041704', 'Rugari', '40417'),
('4050100', '-- Select Cell --', '40501'),
('4050101', 'Karenge', '40501'),
('4050102', 'Kigabiro', '40501'),
('4050103', 'Kivumu', '40501'),
('4050104', 'Rwesero', '40501'),
('4050200', '-- Select Cell --', '40502'),
('4050201', 'Bwisige', '40502'),
('4050202', 'Gihuke', '40502'),
('4050203', 'Mukono', '40502'),
('4050204', 'Nyabushingitwa', '40502'),
('4050300', '-- Select Cell --', '40503'),
('4050301', 'Gacurabwenge', '40503'),
('4050302', 'Gisuna', '40503'),
('4050303', 'Kibali', '40503'),
('4050304', 'Kivugiza', '40503'),
('4050305', 'Murama', '40503'),
('4050306', 'Ngondore', '40503'),
('4050307', 'Nyakabungo', '40503'),
('4050308', 'Nyamabuye', '40503'),
('4050309', 'Nyarutarama', '40503'),
('4050400', '-- Select Cell --', '40504'),
('4050401', 'Gasunzu', '40504'),
('4050402', 'Muhambo', '40504'),
('4050403', 'Nyakabungo', '40504'),
('4050404', 'Nyambare', '40504'),
('4050405', 'Nyaruka', '40504'),
('4050406', 'Rwankonjo', '40504'),
('4050500', '-- Select Cell --', '40505'),
('4050501', 'Gatobotobo', '40505'),
('4050502', 'Murehe', '40505'),
('4050503', 'Tanda', '40505'),
('4050600', '-- Select Cell --', '40506'),
('4050601', 'Gihembe', '40506'),
('4050602', 'Horezo', '40506'),
('4050603', 'Kabuga', '40506'),
('4050604', 'Muhondo', '40506'),
('4050605', 'Nyamiyaga', '40506'),
('4050700', '-- Select Cell --', '40507'),
('4050701', 'Bugomba', '40507'),
('4050702', 'Gatoma', '40507'),
('4050703', 'Mulindi', '40507'),
('4050704', 'Nyarwambu', '40507'),
('4050705', 'Rukurura', '40507'),
('4050800', '-- Select Cell --', '40508'),
('4050801', 'Kabuga', '40508'),
('4050802', 'Nyiragifumba', '40508'),
('4050803', 'Nyiravugiza', '40508'),
('4050804', 'Remera', '40508'),
('4050805', 'Rusekera', '40508'),
('4050806', 'Ryaruyumba', '40508'),
('4050900', '-- Select Cell --', '40509'),
('4050901', 'Gakenke', '40509'),
('4050902', 'Miyove', '40509'),
('4050903', 'Mubuga', '40509'),
('4051000', '-- Select Cell --', '40510'),
('4051001', 'Cyamuganga', '40510'),
('4051002', 'Gatenga', '40510'),
('4051003', 'Kiruhura', '40510'),
('4051004', 'Mutarama', '40510'),
('4051005', 'Rugerero', '40510'),
('4051006', 'Rusambya', '40510'),
('4051100', '-- Select Cell --', '40511'),
('4051101', 'Cyamuhinda', '40511'),
('4051102', 'Kigoma', '40511'),
('4051103', 'Mwendo', '40511'),
('4051104', 'Ngange', '40511'),
('4051105', 'Rebero', '40511'),
('4051200', '-- Select Cell --', '40512'),
('4051201', 'Gaseke', '40512'),
('4051202', 'Kabeza', '40512'),
('4051203', 'Musenyi', '40512'),
('4051204', 'Mutandi', '40512'),
('4051205', 'Nyarubuye', '40512'),
('4051300', '-- Select Cell --', '40513'),
('4051301', 'Gahumuliza', '40513'),
('4051302', 'Jamba', '40513'),
('4051303', 'Kabeza', '40513'),
('4051304', 'Kabuga', '40513'),
('4051305', 'Karambo', '40513'),
('4051306', 'Kiziba', '40513'),
('4051307', 'Mataba', '40513'),
('4051400', '-- Select Cell --', '40514'),
('4051401', 'Butare', '40514'),
('4051402', 'Kigogo', '40514'),
('4051403', 'Kinishya', '40514'),
('4051404', 'Rusasa', '40514'),
('4051405', 'Rutete', '40514'),
('4051406', 'Rwagihura', '40514'),
('4051407', 'Yaramba', '40514'),
('4051500', '-- Select Cell --', '40515'),
('4051501', 'Gihanga', '40515'),
('4051502', 'Gishambashayo', '40515'),
('4051503', 'Gishari', '40515'),
('4051504', 'Muguramo', '40515'),
('4051505', 'Nyamiyaga', '40515'),
('4051600', '-- Select Cell --', '40516'),
('4051601', 'Cyeya', '40516'),
('4051602', 'Cyuru', '40516'),
('4051603', 'Gisiza', '40516'),
('4051604', 'Kinyami', '40516'),
('4051605', 'Mabare', '40516'),
('4051606', 'Munyinya', '40516'),
('4051700', '-- Select Cell --', '40517'),
('4051701', 'Gitega', '40517'),
('4051702', 'Kamutora', '40517'),
('4051703', 'Karurama', '40517'),
('4051800', '-- Select Cell --', '40518'),
('4051801', 'Bikumba', '40518'),
('4051802', 'Gasharu', '40518'),
('4051803', 'Gatwaro', '40518'),
('4051804', 'Kigabiro', '40518'),
('4051805', 'Munanira', '40518'),
('4051806', 'Nkoto', '40518'),
('4051900', '-- Select Cell --', '40519'),
('4051901', 'Cyandaro', '40519'),
('4051902', 'Gasambya', '40519'),
('4051903', 'Gashirira', '40519'),
('4051904', 'Kabare', '40519'),
('4051905', 'Rebero', '40519'),
('4051906', 'Ruhondo', '40519'),
('4052000', '-- Select Cell --', '40520'),
('4052001', 'Cyeru', '40520'),
('4052002', 'Kigabiro', '40520'),
('4052003', 'Nyagahinga', '40520'),
('4052100', '-- Select Cell --', '40521'),
('4052101', 'Bushara', '40521'),
('4052102', 'Kitazigurwa', '40521'),
('4052103', 'Nyabishambi', '40521'),
('4052104', 'Nyabubare', '40521'),
('4052105', 'Shangasha', '40521'),
('5010100', '-- Select Cell --', '50101'),
('5010101', 'Mununu', '50101'),
('5010102', 'Nyagasambu', '50101'),
('5010103', 'Nyakagunga', '50101'),
('5010104', 'Nyamirama', '50101'),
('5010105', 'Nyarubuye', '50101'),
('5010106', 'Sasabirago', '50101'),
('5010200', '-- Select Cell --', '50102'),
('5010201', 'Gihumuza', '50102'),
('5010202', 'Kagezi', '50102'),
('5010203', 'Kanyangese', '50102'),
('5010204', 'Kibare', '50102'),
('5010205', 'Mutamwa', '50102'),
('5010206', 'Rugarama', '50102'),
('5010207', 'Runyinya', '50102'),
('5010208', 'Rweri', '50102'),
('5010300', '-- Select Cell --', '50103'),
('5010301', 'Binunga', '50103'),
('5010302', 'Bwinsanga', '50103'),
('5010303', 'Cyinyana', '50103'),
('5010304', 'Gati', '50103'),
('5010305', 'Kavumu', '50103'),
('5010306', 'Ruhimbi', '50103'),
('5010307', 'Ruhunda', '50103'),
('5010400', '-- Select Cell --', '50104'),
('5010401', 'Bicaca', '50104'),
('5010402', 'Byimana', '50104'),
('5010403', 'Kabasore', '50104'),
('5010404', 'Kangamba', '50104'),
('5010405', 'Karenge', '50104'),
('5010406', 'Nyabubare', '50104'),
('5010407', 'Nyamatete', '50104'),
('5010500', '-- Select Cell --', '50105'),
('5010501', 'Bwiza', '50105'),
('5010502', 'Cyanya', '50105'),
('5010503', 'Nyagasenyi', '50105'),
('5010504', 'Sibagire', '50105'),
('5010505', 'Sovu', '50105'),
('5010600', '-- Select Cell --', '50106'),
('5010601', 'Byeza', '50106'),
('5010602', 'Kabare', '50106'),
('5010603', 'Karambi', '50106'),
('5010604', 'Karitutu', '50106'),
('5010605', 'Kitazigurwa', '50106'),
('5010606', 'Murambi', '50106'),
('5010607', 'Nsinda', '50106'),
('5010608', 'Ntebe', '50106'),
('5010609', 'Nyarusange', '50106'),
('5010700', '-- Select Cell --', '50107'),
('5010701', 'Kaduha', '50107'),
('5010702', 'Nkungu', '50107'),
('5010703', 'Rweru', '50107'),
('5010704', 'Zinga', '50107'),
('5010800', '-- Select Cell --', '50108'),
('5010801', 'Binunga', '50108'),
('5010802', 'Bwana', '50108'),
('5010803', 'Cyarukamba', '50108'),
('5010804', 'Cyimbazi', '50108'),
('5010805', 'Nkomangwa', '50108'),
('5010806', 'Nyarubuye', '50108'),
('5010900', '-- Select Cell --', '50109'),
('5010901', 'Akabare', '50109'),
('5010902', 'Budahanda', '50109'),
('5010903', 'Kagarama', '50109'),
('5010904', 'Musha', '50109'),
('5010905', 'Nyabisindu', '50109'),
('5010906', 'Nyakabanda', '50109'),
('5011000', '-- Select Cell --', '50110'),
('5011001', 'Akinyambo', '50110'),
('5011002', 'Bujyujyu', '50110'),
('5011003', 'Murehe', '50110'),
('5011004', 'Ntebe', '50110'),
('5011005', 'Nyarukombe', '50110'),
('5011100', '-- Select Cell --', '50111'),
('5011101', 'Bicumbi', '50111'),
('5011102', 'Bushenyi', '50111'),
('5011103', 'Mwulire', '50111'),
('5011104', 'Ntunga', '50111'),
('5011200', '-- Select Cell --', '50112'),
('5011201', 'Bihembe', '50112'),
('5011202', 'Gatare', '50112'),
('5011203', 'Gishore', '50112'),
('5011204', 'Munini', '50112'),
('5011205', 'Rwimbogo', '50112'),
('5011300', '-- Select Cell --', '50113'),
('5011301', 'Akanzu', '50113'),
('5011302', 'Kigarama', '50113'),
('5011303', 'Murama', '50113'),
('5011304', 'Rugarama', '50113'),
('5011400', '-- Select Cell --', '50114'),
('5011401', 'Byinza', '50114'),
('5011402', 'Kabatasi', '50114'),
('5011403', 'Kabuye', '50114'),
('5011404', 'Karambi', '50114'),
('5011405', 'Mabare', '50114'),
('5011406', 'Nawe', '50114'),
('5020100', '-- Select Cell --', '50201'),
('5020101', 'Cyagaju', '50201'),
('5020102', 'Kabeza', '50201'),
('5020103', 'Nyamikamba', '50201'),
('5020104', 'Nyamirembe', '50201'),
('5020105', 'Nyangara', '50201'),
('5020106', 'Nyarurema', '50201'),
('5020107', 'Rwensheke', '50201'),
('5020200', '-- Select Cell --', '50202'),
('5020201', 'Bushara', '50202'),
('5020202', 'Cyenkwanzi', '50202'),
('5020203', 'Gikagati', '50202'),
('5020204', 'Gikundamvura', '50202'),
('5020205', 'Kabuga', '50202'),
('5020206', 'Ndego', '50202'),
('5020207', 'Nyakiga', '50202'),
('5020300', '-- Select Cell --', '50203'),
('5020301', 'Kamate', '50203'),
('5020302', 'Karama', '50203'),
('5020303', 'Kizirakome', '50203'),
('5020304', 'Mbare', '50203'),
('5020305', 'Musenyi', '50203'),
('5020306', 'Ndama', '50203'),
('5020307', 'Nyagashanga', '50203'),
('5020308', 'Nyamirama', '50203'),
('5020309', 'Rubagabaga', '50203'),
('5020310', 'Rwenyemera', '50203'),
('5020311', 'Rwisirabo', '50203'),
('5020400', '-- Select Cell --', '50204'),
('5020401', 'Bayigaburire', '50204'),
('5020402', 'Kaduha', '50204'),
('5020403', 'Kanyeganyege', '50204'),
('5020404', 'Katabagemu', '50204'),
('5020405', 'Kigarama', '50204'),
('5020406', 'Nyakigando', '50204'),
('5020407', 'Rubira', '50204'),
('5020408', 'Rugazi', '50204'),
('5020409', 'Rutoma', '50204'),
('5020500', '-- Select Cell --', '50205'),
('5020501', 'Gataba', '50205'),
('5020502', 'Gitenga', '50205'),
('5020503', 'Kabungo', '50205'),
('5020504', 'Karambo', '50205'),
('5020505', 'Karujumba', '50205'),
('5020506', 'Tovu', '50205'),
('5020600', '-- Select Cell --', '50206'),
('5020601', 'Bwera', '50206'),
('5020602', 'Byimana', '50206'),
('5020603', 'Cyembogo', '50206'),
('5020604', 'Kagitumba', '50206'),
('5020605', 'Kanyonza', '50206'),
('5020606', 'Matimba', '50206'),
('5020607', 'Nyabwishongwezi', '50206'),
('5020608', 'Rwentanga', '50206'),
('5020700', '-- Select Cell --', '50207'),
('5020701', 'Bibare', '50207'),
('5020702', 'Gakoma', '50207'),
('5020703', 'Mahoro', '50207'),
('5020704', 'Mimuri', '50207'),
('5020705', 'Rugari', '50207'),
('5020800', '-- Select Cell --', '50208'),
('5020801', 'Bufunda', '50208'),
('5020802', 'Gatete', '50208'),
('5020803', 'Gihengeri', '50208'),
('5020804', 'Gishororo', '50208'),
('5020805', 'Kagina', '50208'),
('5020806', 'Rugarama', '50208'),
('5020900', '-- Select Cell --', '50209'),
('5020901', 'Kibirizi', '50209'),
('5020902', 'Kijojo', '50209'),
('5020903', 'Musheri', '50209'),
('5020904', 'Ntoma', '50209'),
('5020905', 'Nyagatabire', '50209'),
('5020906', 'Nyamiyonga', '50209'),
('5020907', 'Rugarama I', '50209'),
('5020908', 'Rugarama Ii', '50209'),
('5021000', '-- Select Cell --', '50210'),
('5021001', 'Barija', '50210'),
('5021002', 'Bushoga', '50210'),
('5021003', 'Cyabayaga', '50210'),
('5021004', 'Gakirage', '50210'),
('5021005', 'Kamagiri', '50210'),
('5021006', 'Nsheke', '50210'),
('5021007', 'Nyagatare', '50210'),
('5021008', 'Rutaraka', '50210'),
('5021009', 'Ryabega', '50210'),
('5021100', '-- Select Cell --', '50211'),
('5021101', 'Gahurura', '50211'),
('5021102', 'Gashenyi', '50211'),
('5021103', 'Nyakagarama', '50211'),
('5021104', 'Rukomo Ii', '50211'),
('5021105', 'Rurenge', '50211'),
('5021200', '-- Select Cell --', '50212'),
('5021201', 'Cyenjonjo', '50212'),
('5021202', 'Gasinga', '50212'),
('5021203', 'Kabare', '50212'),
('5021204', 'Kazaza', '50212'),
('5021205', 'Mishenyi', '50212'),
('5021206', 'Rugarama', '50212'),
('5021207', 'Rukorota', '50212'),
('5021208', 'Rutare', '50212'),
('5021209', 'Rwempasha', '50212'),
('5021210', 'Ryeru', '50212'),
('5021300', '-- Select Cell --', '50213'),
('5021301', 'Gacundezi', '50213'),
('5021302', 'Kabeza', '50213'),
('5021303', 'Kirebe', '50213'),
('5021304', 'Ntoma', '50213'),
('5021305', 'Nyarupfubire', '50213'),
('5021306', 'Nyendo', '50213'),
('5021307', 'Rutungu', '50213'),
('5021308', 'Rwimiyaga', '50213'),
('5021400', '-- Select Cell --', '50214'),
('5021401', 'Gishuro', '50214'),
('5021402', 'Gitengure', '50214'),
('5021403', 'Nkoma', '50214'),
('5021404', 'Nyabitekeri', '50214'),
('5021405', 'Nyagatoma', '50214'),
('5021406', 'Shonga', '50214'),
('5021407', 'Tabagwe', '50214'),
('5030100', '-- Select Cell --', '50301'),
('5030101', 'Kigabiro', '50301'),
('5030102', 'Kimana', '50301'),
('5030103', 'Teme', '50301'),
('5030104', 'Viro', '50301'),
('5030200', '-- Select Cell --', '50302'),
('5030201', 'Gatsibo', '50302'),
('5030202', 'Manishya', '50302'),
('5030203', 'Mugera', '50302'),
('5030204', 'Nyabicwamba', '50302'),
('5030205', 'Nyagahanga', '50302'),
('5030300', '-- Select Cell --', '50303'),
('5030301', 'Bukomane', '50303'),
('5030302', 'Cyabusheshe', '50303'),
('5030303', 'Karubungo', '50303'),
('5030304', 'Mpondwa', '50303'),
('5030305', 'Nyamirama', '50303'),
('5030306', 'Rubira', '50303'),
('5030400', '-- Select Cell --', '50304'),
('5030401', 'Kabarore', '50304'),
('5030402', 'Kabeza', '50304'),
('5030403', 'Karenge', '50304'),
('5030404', 'Marimba', '50304'),
('5030405', 'Nyabikiri', '50304'),
('5030406', 'Simbwa', '50304'),
('5030500', '-- Select Cell --', '50305'),
('5030501', 'Busetsa', '50305'),
('5030502', 'Gituza', '50305'),
('5030503', 'Kintu', '50305'),
('5030504', 'Nyagisozi', '50305'),
('5030600', '-- Select Cell --', '50306'),
('5030601', 'Akabuga', '50306'),
('5030602', 'Gakenke', '50306'),
('5030603', 'Gakoni', '50306'),
('5030604', 'Nyabisindu', '50306'),
('5030700', '-- Select Cell --', '50307'),
('5030701', 'Agakomeye', '50307'),
('5030702', 'Mbogo', '50307'),
('5030703', 'Ndatemwa', '50307'),
('5030704', 'Rubona', '50307'),
('5030800', '-- Select Cell --', '50308'),
('5030801', 'Bibare', '50308'),
('5030802', 'Gakorokombe', '50308'),
('5030803', 'Mamfu', '50308'),
('5030804', 'Rumuli', '50308'),
('5030805', 'Taba', '50308'),
('5030900', '-- Select Cell --', '50309'),
('5030901', 'Murambi', '50309'),
('5030902', 'Nyamiyaga', '50309'),
('5030903', 'Rwankuba', '50309'),
('5030904', 'Rwimitereri', '50309'),
('5031000', '-- Select Cell --', '50310'),
('5031001', 'Bugamba', '50310'),
('5031002', 'Karambi', '50310'),
('5031003', 'Kigasha', '50310'),
('5031004', 'Ngarama', '50310'),
('5031005', 'Nyarubungo', '50310'),
('5031100', '-- Select Cell --', '50311'),
('5031101', 'Gitinda', '50311'),
('5031102', 'Kibare', '50311'),
('5031103', 'Mayange', '50311'),
('5031104', 'Murambi', '50311'),
('5031105', 'Nyagitabire', '50311'),
('5031106', 'Nyamirama', '50311'),
('5031200', '-- Select Cell --', '50312'),
('5031201', 'Bushobora', '50312'),
('5031202', 'Butiruka', '50312'),
('5031203', 'Kigabiro', '50312'),
('5031204', 'Nyagakombe', '50312'),
('5031205', 'Rurenge', '50312'),
('5031206', 'Rwarenga', '50312'),
('5031300', '-- Select Cell --', '50313'),
('5031301', 'Bugarama', '50313'),
('5031302', 'Gihuta', '50313'),
('5031303', 'Kanyangese', '50313'),
('5031304', 'Matare', '50313'),
('5031305', 'Matunguru', '50313'),
('5031306', 'Remera', '50313'),
('5031400', '-- Select Cell --', '50314'),
('5031401', 'Kiburara', '50314'),
('5031402', 'Munini', '50314'),
('5031403', 'Nyamatete', '50314'),
('5031404', 'Rwikiniro', '50314'),
('5040100', '-- Select Cell --', '50401'),
('5040101', 'Juru', '50401'),
('5040102', 'Kahi', '50401'),
('5040103', 'Kiyenzi', '50401'),
('5040104', 'Urugarama', '50401'),
('5040200', '-- Select Cell --', '50402'),
('5040201', 'Cyarubare', '50402'),
('5040202', 'Gitara', '50402'),
('5040203', 'Kirehe', '50402'),
('5040204', 'Rubimba', '50402'),
('5040205', 'Rubumba', '50402'),
('5040300', '-- Select Cell --', '50403'),
('5040301', 'Cyabajwa', '50403'),
('5040302', 'Cyinzovu', '50403'),
('5040303', 'Kabura', '50403'),
('5040304', 'Rusera', '50403'),
('5040400', '-- Select Cell --', '50404'),
('5040401', 'Bwiza', '50404'),
('5040402', 'Kayonza', '50404'),
('5040403', 'Mburabuturo', '50404'),
('5040404', 'Nyagatovu', '50404'),
('5040405', 'Rugendabari', '50404'),
('5040500', '-- Select Cell --', '50405'),
('5040501', 'Bunyentongo', '50405'),
('5040502', 'Muko', '50405'),
('5040503', 'Murama', '50405'),
('5040504', 'Nyakanazi', '50405'),
('5040505', 'Rusave', '50405'),
('5040600', '-- Select Cell --', '50406'),
('5040601', 'Buhabwa', '50406'),
('5040602', 'Karambi', '50406'),
('5040603', 'Murundi', '50406'),
('5040604', 'Ryamanyoni', '50406'),
('5040700', '-- Select Cell --', '50407'),
('5040701', 'Kageyo', '50407'),
('5040702', 'Migera', '50407'),
('5040703', 'Nyamugari', '50407'),
('5040704', 'Nyawera', '50407'),
('5040800', '-- Select Cell --', '50408'),
('5040801', 'Byimana', '50408'),
('5040802', 'Isangano', '50408'),
('5040803', 'Karambi', '50408'),
('5040804', 'Kiyovu', '50408'),
('5040900', '-- Select Cell --', '50409'),
('5040901', 'Gikaya', '50409'),
('5040902', 'Musumba', '50409'),
('5040903', 'Rurambi', '50409'),
('5040904', 'Shyogo', '50409'),
('5041000', '-- Select Cell --', '50410'),
('5041001', 'Kawangire', '50410'),
('5041002', 'Rukara', '50410'),
('5041003', 'Rwimishinya', '50410'),
('5041100', '-- Select Cell --', '50411'),
('5041101', 'Bugambira', '50411'),
('5041102', 'Nkamba', '50411'),
('5041103', 'Ruyonza', '50411'),
('5041104', 'Umubuga', '50411'),
('5041200', '-- Select Cell --', '50412'),
('5041201', 'Gihinga', '50412'),
('5041202', 'Mbarara', '50412'),
('5041203', 'Mukoyoyo', '50412'),
('5041204', 'Nkondo ', '50412'),
('5050100', '-- Select Cell --', '50501'),
('5050101', 'Butezi', '50501'),
('5050102', 'Muhamba', '50501'),
('5050103', 'Murehe', '50501'),
('5050104', 'Nyagasenyi', '50501'),
('5050105', 'Nyakagezi', '50501'),
('5050106', 'Rubimba', '50501'),
('5050200', '-- Select Cell --', '50502'),
('5050201', 'Curazo', '50502'),
('5050202', 'Cyunuzi', '50502'),
('5050203', 'Muganza', '50502'),
('5050204', 'Nyamiryango', '50502'),
('5050205', 'Rwabutazi', '50502'),
('5050206', 'Rwantonde', '50502'),
('5050300', '-- Select Cell --', '50503'),
('5050301', 'Cyanya', '50503'),
('5050302', 'Kigarama', '50503'),
('5050303', 'Kiremera', '50503'),
('5050304', 'Nyakerera', '50503'),
('5050305', 'Nyankurazo', '50503'),
('5050400', '-- Select Cell --', '50504'),
('5050401', 'Gatarama', '50504'),
('5050402', 'Rugarama', '50504'),
('5050403', 'Ruhanga', '50504'),
('5050404', 'Rwanteru', '50504'),
('5050500', '-- Select Cell --', '50505'),
('5050501', 'Gahama', '50505'),
('5050502', 'Kirehe', '50505'),
('5050503', 'Nyabigega', '50505'),
('5050504', 'Nyabikokora', '50505'),
('5050505', 'Rwesero', '50505'),
('5050600', '-- Select Cell --', '50506'),
('5050601', 'Kamombo', '50506'),
('5050602', 'Mwoga', '50506'),
('5050603', 'Saruhembe', '50506'),
('5050604', 'Umunini', '50506'),
('5050700', '-- Select Cell --', '50507'),
('5050701', 'Bwiyorere', '50507'),
('5050702', 'Kankobwa', '50507'),
('5050703', 'Mpanga', '50507'),
('5050704', 'Mushongi', '50507'),
('5050705', 'Nasho', '50507'),
('5050706', 'Nyakabungo', '50507'),
('5050707', 'Rubaya', '50507'),
('5050800', '-- Select Cell --', '50508'),
('5050801', 'Gasarabwayi', '50508'),
('5050802', 'Kabuga', '50508'),
('5050803', 'Mubuga', '50508'),
('5050804', 'Musaza', '50508'),
('5050805', 'Nganda ', '50508'),
('5050900', '-- Select Cell --', '50509'),
('5050901', 'Bisagara', '50509'),
('5050902', 'Cyamigurwa', '50509'),
('5050903', 'Rugarama', '50509'),
('5050904', 'Rwanyamuhanga', '50509'),
('5050905', 'Rwayikona', '50509'),
('5051000', '-- Select Cell --', '50510'),
('5051001', 'Cyambwe', '50510'),
('5051002', 'Kagese', '50510'),
('5051003', 'Ntaruka', '50510'),
('5051004', 'Rubirizi', '50510'),
('5051005', 'Rugoma', '50510'),
('5051100', '-- Select Cell --', '50511'),
('5051101', 'Bukora', '50511'),
('5051102', 'Kagasa', '50511'),
('5051103', 'Kazizi', '50511'),
('5051104', 'Kiyanzi', '50511'),
('5051105', 'Nyamugari', '50511'),
('5051200', '-- Select Cell --', '50512'),
('5051201', 'Mareba', '50512'),
('5051202', 'Nyabitare', '50512'),
('5051203', 'Nyarutunga', '50512'),
('5060100', '-- Select Cell --', '50601'),
('5060101', 'Cyerwa', '50601'),
('5060102', 'Giseri', '50601'),
('5060103', 'Munege', '50601'),
('5060104', 'Mutsindo', '50601'),
('5060200', '-- Select Cell --', '50602'),
('5060201', 'Ihanika', '50602'),
('5060202', 'Jarama', '50602'),
('5060203', 'Karenge', '50602'),
('5060204', 'Kibimba', '50602'),
('5060205', 'Kigoma', '50602'),
('5060300', '-- Select Cell --', '50603'),
('5060301', 'Akaziba', '50603'),
('5060302', 'Karaba', '50603'),
('5060303', 'Nyamirambo', '50603'),
('5060400', '-- Select Cell --', '50604'),
('5060401', 'Birenga', '50604'),
('5060402', 'Gahurire', '50604'),
('5060403', 'Karama', '50604'),
('5060404', 'Kinyonzo', '50604'),
('5060405', 'Umukamba', '50604'),
('5060500', '-- Select Cell --', '50605'),
('5060501', 'Cyasemakamba', '50605'),
('5060502', 'Gahima', '50605'),
('5060503', 'Gatonde', '50605'),
('5060504', 'Karenge', '50605'),
('5060505', 'Mahango', '50605'),
('5060600', '-- Select Cell --', '50606'),
('5060601', 'Akabungo', '50606'),
('5060602', 'Mugatare', '50606'),
('5060603', 'Ntanga', '50606'),
('5060604', 'Nyamugari', '50606'),
('5060605', 'Nyange', '50606'),
('5060700', '-- Select Cell --', '50607'),
('5060701', 'Gitaraga', '50607'),
('5060702', 'Kigabiro', '50607'),
('5060703', 'Mvumba', '50607'),
('5060704', 'Rurenge', '50607'),
('5060705', 'Sakara', '50607'),
('5060800', '-- Select Cell --', '50608'),
('5060801', 'Karwema', '50608'),
('5060802', 'Kibare', '50608'),
('5060803', 'Mutenderi', '50608'),
('5060804', 'Muzingira', '50608'),
('5060805', 'Nyagasozi', '50608'),
('5060900', '-- Select Cell --', '50609'),
('5060901', 'Bugera', '50609'),
('5060902', 'Kinunga', '50609'),
('5060903', 'Ndekwe', '50609'),
('5060904', 'Nyamagana', '50609'),
('5061000', '-- Select Cell --', '50610'),
('5061001', 'Buliba', '50610'),
('5061002', 'Kibatsi', '50610'),
('5061003', 'Nyaruvumu', '50610'),
('5061004', 'Nyinya', '50610'),
('5061100', '-- Select Cell --', '50611'),
('5061101', 'Gituza', '50611'),
('5061102', 'Ntovi', '50611'),
('5061103', 'Rubago', '50611'),
('5061104', 'Rubona', '50611'),
('5061105', 'Rwintashya', '50611'),
('5061200', '-- Select Cell --', '50612'),
('5061201', 'Akagarama', '50612'),
('5061202', 'Muhurire', '50612'),
('5061203', 'Musya', '50612'),
('5061204', 'Rugese', '50612'),
('5061205', 'Rujambara', '50612'),
('5061206', 'Rwikubo', '50612'),
('5061300', '-- Select Cell --', '50613'),
('5061301', 'Gafunzo', '50613'),
('5061302', 'Kibonde', '50613'),
('5061303', 'Nkanga', '50613'),
('5061304', 'Rukoma', '50613'),
('5061400', '-- Select Cell --', '50614'),
('5061401', 'Nyagasozi', '50614'),
('5061402', 'Nyagatugunda', '50614'),
('5061403', 'Ruhembe', '50614'),
('5061404', 'Ruhinga', '50614'),
('5070100', '-- Select Cell --', '50701'),
('5070101', 'Biryogo', '50701'),
('5070102', 'Kabuye', '50701'),
('5070103', 'Kagomasi', '50701'),
('5070104', 'Mwendo', '50701'),
('5070105', 'Ramiro', '50701'),
('5070200', '-- Select Cell --', '50702'),
('5070201', 'Juru', '50702'),
('5070202', 'Kabukuba', '50702'),
('5070203', 'Mugorore', '50702'),
('5070204', 'Musovu', '50702'),
('5070205', 'Rwinume', '50702'),
('5070300', '-- Select Cell --', '50703'),
('5070301', 'Biharagu', '50703'),
('5070302', 'Burenge', '50703'),
('5070303', 'Kampeka', '50703'),
('5070304', 'Nyakayaga', '50703'),
('5070305', 'Tunda', '50703'),
('5070400', '-- Select Cell --', '50704'),
('5070401', 'Bushenyi', '50704'),
('5070402', 'Gakomeye', '50704'),
('5070403', 'Nyamigina', '50704'),
('5070404', 'Rango', '50704'),
('5070405', 'Rugarama', '50704'),
('5070500', '-- Select Cell --', '50705'),
('5070501', 'Gakamba', '50705'),
('5070502', 'Kagenge', '50705'),
('5070503', 'Kibenga', '50705'),
('5070504', 'Kibirizi', '50705'),
('5070505', 'Mbyo', '50705'),
('5070600', '-- Select Cell --', '50706'),
('5070601', 'Gicaca', '50706'),
('5070602', 'Musenyi', '50706'),
('5070603', 'Nyagihunika', '50706'),
('5070604', 'Rulindo', '50706'),
('5070700', '-- Select Cell --', '50707'),
('5070701', 'Bitaba', '50707'),
('5070702', 'Kagasa', '50707'),
('5070703', 'Rugunga', '50707'),
('5070704', 'Rurenge', '50707'),
('5070800', '-- Select Cell --', '50708'),
('5070801', 'Gihembe', '50708'),
('5070802', 'Murama', '50708'),
('5070803', 'Ngeruka', '50708'),
('5070804', 'Nyakayenzi', '50708'),
('5070805', 'Rutonde', '50708'),
('5070900', '-- Select Cell --', '50709'),
('5070901', 'Cyugaro', '50709'),
('5070902', 'Kanzenze', '50709'),
('5070903', 'Kibungo', '50709'),
('5071000', '-- Select Cell --', '50710'),
('5071001', 'Kanazi', '50710'),
('5071002', 'Kayumba', '50710'),
('5071003', 'Maranyundo', '50710'),
('5071004', 'Murama', '50710'),
('5071005', 'Nyamata Y Umujyi', '50710'),
('5071100', '-- Select Cell --', '50711'),
('5071101', 'Gihinga', '50711'),
('5071102', 'Kabuye', '50711'),
('5071103', 'Murambi', '50711'),
('5071104', 'Ngenda', '50711'),
('5071105', 'Rugando', '50711'),
('5071200', '-- Select Cell --', '50712'),
('5071201', 'Kabeza', '50712'),
('5071202', 'Karera', '50712'),
('5071203', 'Kimaranzara', '50712'),
('5071204', 'Ntarama', '50712'),
('5071205', 'Nyabagendwa', '50712'),
('5071300', '-- Select Cell --', '50713'),
('5071301', 'Bihari', '50713'),
('5071302', 'Gatanga', '50713'),
('5071303', 'Gikundamvura', '50713'),
('5071304', 'Kindama', '50713'),
('5071305', 'Ruhuha', '50713'),
('5071400', '-- Select Cell --', '50714'),
('5071401', 'Batima', '50714'),
('5071402', 'Kintambwe', '50714'),
('5071403', 'Mazane', '50714'),
('5071404', 'Nemba', '50714'),
('5071405', 'Nkanga', '50714'),
('5071406', 'Sharita', '50714'),
('5071500', '-- Select Cell --', '50715'),
('5071501', 'Kabagugu', '50715'),
('5071502', 'Kamabuye', '50715'),
('5071503', 'Nziranziza', '50715'),
('5071504', 'Rebero', '50715'),
('5071505', 'Rutare', '50715');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_on` int(11) NOT NULL,
  `comment_by` int(11) NOT NULL,
  `comment_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment`, `comment_on`, `comment_by`, `comment_at`) VALUES
(4, 'nice', 334, 61, '2019-06-26 09:22:46'),
(5, ',mm', 343, 61, '2019-07-03 14:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `crowfundraising`
--

CREATE TABLE `crowfundraising` (
  `fund_id` int(10) UNSIGNED NOT NULL,
  `firstname1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districts` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cell` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `progress_payment` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id2` int(11) NOT NULL,
  `created_on2` datetime NOT NULL,
  `total_likes` int(11) NOT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_crowfundraising` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title_main` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_raising` float(10,2) NOT NULL,
  `percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crowfundraising`
--

INSERT INTO `crowfundraising` (`fund_id`, `firstname1`, `middlename1`, `lastname1`, `address1`, `country1`, `city`, `province`, `districts`, `sector`, `cell`, `village`, `text`, `progress_payment`, `photo`, `other_photo`, `video`, `youtube`, `user_id2`, `created_on2`, `total_likes`, `comments`, `email1`, `telephone1`, `categories_crowfundraising`, `photo_Title`, `photo_Title_main`, `money_raising`, `percentage`) VALUES
(56, 'fafa', 'faf', 'afa', 'faf', 'afaf', 'afa', 'afa', 'faf', 'afa', 'afaf', 'afa', 'affa', '', '2019_401.jpg', '2019_312.jpg', '', '', 61, '2019-07-08 14:03:14', 0, '', 'faf', 'afa', 'Agriculture', 'afafa=====', 'fafa', 30900.00, 40);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `districtcode` varchar(50) NOT NULL,
  `namedistrict` varchar(50) NOT NULL,
  `provincecode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`districtcode`, `namedistrict`, `provincecode`) VALUES
('100', '-- Select Districts --', '1'),
('101', 'NYARUGENGE', '1'),
('102', 'GASABO', '1'),
('103', 'KICUKIRO', '1'),
('200', '-- Select Districts --', '2'),
('201', 'NYANZA', '2'),
('202', 'GISAGARA', '2'),
('203', 'NYARUGURU', '2'),
('204', 'HUYE', '2'),
('205', 'NYAMAGABE', '2'),
('206', 'RUHANGO', '2'),
('207', 'MUHANGA', '2'),
('208', 'KAMONYI', '2'),
('300', '-- Select Districts --', '3'),
('301', 'KARONGI', '3'),
('302', 'RUTSIRO', '3'),
('303', 'RUBAVU', '3'),
('304', 'NYABIHU', '3'),
('305', 'NGORORERO', '3'),
('306', 'RUSIZI', '3'),
('307', 'NYAMASHEKE', '3'),
('400', '-- Select Districts --', '4'),
('401', 'RULINDO', '4'),
('402', 'GAKENKE', '4'),
('403', 'MUSANZE', '4'),
('404', 'BURERA', '4'),
('405', 'GICUMBI', '4'),
('500', '-- Select Districts --', '5'),
('501', 'RWAMAGANA', '5'),
('502', 'NYAGATARE', '5'),
('503', 'GATSIBO', '5'),
('504', 'KAYONZA', '5'),
('505', 'KIREHE', '5'),
('506', 'NGOMA', '5'),
('507', 'BUGESERA', '5');

-- --------------------------------------------------------

--
-- Table structure for table `domestics`
--

CREATE TABLE `domestics` (
  `domestics_id` int(11) NOT NULL,
  `firstname_` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname_` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpassword` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_province` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_districts` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_sector` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_cell` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_village` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id_` int(11) NOT NULL,
  `created_on_` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `domestics`
--

INSERT INTO `domestics` (`domestics_id`, `firstname_`, `lastname_`, `phone_`, `country_`, `photo_`, `other_photo_`, `text_`, `gender`, `cpassword`, `password`, `status`, `email`, `username`, `location_province`, `location_districts`, `location_sector`, `location_cell`, `location_village`, `user_id_`, `created_on_`) VALUES
(30, 'ruzindana', 'eric', '03680482477', 'rwanda', '2019_74capt.png', '2019_52capt.png', 'dcsdc', 'Female', 'fafa', 'fafa', 'Married', 'hemafaysal@gmail.com', 'fayz', 'Northern province', 'Gatsibo', 'Bugeshi', 'rutondo', 'henza', 64, '2019-07-17 11:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `employersdomestics`
--

CREATE TABLE `employersdomestics` (
  `employers_id` int(11) NOT NULL,
  `firstname_` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname_` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpassword` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_province` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_districts` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_sector` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_cell` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_village` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id_` int(11) NOT NULL,
  `created_on_` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employersdomestics`
--

INSERT INTO `employersdomestics` (`employers_id`, `firstname_`, `lastname_`, `phone_`, `country_`, `photo_`, `text_`, `gender`, `cpassword`, `password`, `status`, `email`, `username`, `location_province`, `location_districts`, `location_sector`, `location_cell`, `location_village`, `user_id_`, `created_on_`) VALUES
(29, 'ruzindana', 'eric', '03680482477', 'rwanda', 'images.jpg', 'uruyu', 'Female', 'fafa', 'fafa', 'Married', 'hemafaysal@gmail.com', 'fayz', 'Southern province', 'Gasabo', 'Burega', 'Rutsiro', 'kamuhima', 64, '2019-07-17 11:56:10'),
(30, 'faysal', 'shema', '03680482477', 'rwanda', 'images.jpg', 'fafaf', 'Male', 'fafa', 'fafa', 'Single', 'shemafaysal@gmail.com', 'fayzo', 'West province', 'Gatsibo', 'Bugarama', 'Rutsiro', 'Kicukiro', 61, '2019-07-17 14:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `events_id` int(11) NOT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_place` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_events` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_events` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date0` date NOT NULL,
  `categories_events` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additioninformation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id3` int(11) NOT NULL,
  `created_on3` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`events_id`, `country`, `name_place`, `location_events`, `start_events`, `date0`, `categories_events`, `additioninformation`, `photo`, `video`, `youtube`, `user_id3`, `created_on3`) VALUES
(2, 'rwanda', '', '', '', '0000-00-00', 'Party', 'party', '2019_80fayz.jpg', '', '', 61, '2019-06-15 02:21:16'),
(3, 'rwanda', '', '', '', '0000-00-00', 'Party', 'party', '2019_48gori.jpg', '', '', 61, '2019-06-15 03:01:35'),
(4, 'rwanda', 'milles collins', '', '', '0000-00-00', 'Party', 'having fun', '2019_96head.jpg', '', '', 61, '2019-06-15 03:14:08'),
(5, 'rwanda', 'milles collins', 'kimihurura', '07h', '0000-00-00', 'Party', 'having fun', '2019_18ramz.png', '', '', 61, '2019-06-15 03:28:53'),
(6, 'rwanda', 'milles collins', 'kimihurura', '2019-06-12', '0000-00-00', 'Party', 'nice', '2019_44hear.jpg', '', '', 61, '2019-06-15 03:40:08'),
(7, 'rwanda', 'milles collins', 'kimihurura', '2019-06-15', '0000-00-00', 'Party', 'n ice', '2019_100images.jpg', '', '', 61, '2019-06-15 03:41:13'),
(8, 'rwanda', 'milles collins', 'kimihurura', '2019-06-16', '0000-00-00', 'Party', 'niice', '2019_61images.png', '', '', 61, '2019-06-15 03:41:42'),
(9, 'rwanda', 'milles collins', 'kimihurura', '07h', '2019-06-15', 'Party', 'nice', '2019_89imag.jpg', '', '', 61, '2019-06-15 03:49:03'),
(10, 'rwanda', 'milles collins', 'kimihurura', '07h', '2019-06-16', 'Party', 'n', '2019_28imag.jpg', '', '', 61, '2019-06-15 03:50:26'),
(11, 'rwanda', 'milles collins', 'kimihurura', '07h', '2019-06-16', 'Party', 'gud', '2019_291.jpg', '', '', 61, '2019-06-15 03:59:15'),
(12, 'rwanda', 'milles collins', 'kimihurura', '07h', '2019-06-16', 'Party', 'gud', '2019_341.jpg', '', '', 61, '2019-06-15 03:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `follow_id` int(10) UNSIGNED NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `follow_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`follow_id`, `sender`, `receiver`, `follow_on`) VALUES
(27, 61, 66, '2019-05-16 20:13:23'),
(28, 65, 61, '2019-05-16 20:27:56'),
(29, 65, 66, '2019-05-16 20:34:46'),
(31, 67, 61, '2019-05-21 14:54:25'),
(32, 67, 66, '2019-05-21 14:54:27'),
(33, 61, 65, '2019-05-22 09:16:12'),
(34, 71, 61, '2019-06-02 14:51:24'),
(35, 69, 61, '2019-06-02 14:51:57'),
(36, 61, 70, '2019-06-17 09:28:24'),
(37, 64, 61, '2019-06-29 13:16:25'),
(38, 72, 61, '2019-07-01 16:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL,
  `authors` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country01` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title_main` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districts` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cell` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_food` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `price_discount` float(10,2) NOT NULL,
  `banner` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id3` int(11) NOT NULL,
  `created_on3` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `authors`, `photo`, `other_photo`, `video`, `youtube`, `price`, `phone`, `country01`, `photo_Title_main`, `photo_Title`, `city`, `province`, `districts`, `sector`, `cell`, `village`, `text`, `categories_food`, `code`, `quantity`, `discount`, `price_discount`, `banner`, `user_id3`, `created_on3`) VALUES
(14, 'fa', '2019_431.jpg', '2019_253200.jpg', '', '', 4533.00, '0787345243243', 'rwanda', 'hamburg', 'tomates=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'nice', 'food', '9730rw', 1, 10, 5656.00, 'new', 61, '2019-07-05 21:59:51'),
(15, 'fayzo', '2019_483200.jpg', '2019_625ad7.jpg', '', '', 45300.00, '0787345243243', 'rwanda', 'isosi', 'amakaroni=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'food', '973052f', 1, 5, 60785.00, 'great_deal', 61, '2019-07-05 22:01:49'),
(16, 'fayzo', '2019_275ad7.jpg', '2019_740517.jpg', '', '', 8754.00, '0787345243243', 'rwanda', 'amakaroni', 'isosi=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'food', '97301e', 1, 8, 9000.00, 'new', 61, '2019-07-05 22:03:22'),
(17, 'fayzo', '2019_681.5-.jpg', '2019_92imag.jpg', '', '', 453.00, '0787345243243', 'rwanda', 'ikinyobwa', 'coca=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'drink', '9730324', 1, 67, 500.00, 'new_arrival', 61, '2019-07-05 22:05:24'),
(18, 'fayzo', '2019_9381vx.jpg', '2019_84417h.jpg', '', '', 500.00, '0787345243243', 'rwanda', 'fata', 'sprit=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'nice', 'drink', '425b', 1, 60, 600.00, 'new', 61, '2019-07-05 22:06:27'),
(19, 'fayzo', '2019_451597.jpg', '2019_835222.jpg', '', '', 4537.00, '0787345243243', 'rwanda', 'orange', 'beverange=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'drink', '45v', 1, 39, 5000.00, 'great_deal', 61, '2019-07-05 22:07:36'),
(20, 'fayzo', '2019_99131-.png', '2019_675169.jpg', '', '', 600.00, '0787345243243', 'rwanda', 'water', 'bottle=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'drink', '3242f', 1, 50, 700.00, 'great_deal', 61, '2019-07-05 22:08:25'),
(21, 'fayzo', '2019_498-co.jpg', '2019_6625-h.jpg', '', '', 353.00, '0787345243243', 'rwanda', 'amatunda', 'orange=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'byahanutse', 'fruits', 'b353', 1, 98, 400.00, 'great_deal', 61, '2019-07-05 22:11:08'),
(22, 'fayzo', '2019_246003.jpg', '2019_86easy.jpg', '', '', 3563.00, '0787345243243', 'rwanda', 'inyanya', 'freze=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'fruits', 'w45', 1, 34, 4545.00, 'new', 61, '2019-07-05 22:12:29'),
(23, 'fayzo', '2019_35fres.jpg', '2019_573067.jpg', '', '', 45342.00, '0787345243243', 'rwanda', 'freze', 'freze=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'fruits', '452b', 1, 36, 45454.00, 'new', 61, '2019-07-05 22:13:53'),
(24, 'fayzo', '2019_2514c3.jpg', '2019_752000.jpg', '', '', 453.00, '0787345243243', 'rwanda', 'igituguru', 'onion=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'vegetables', '9732df', 1, 1, 459.00, 'great_deal', 61, '2019-07-05 22:15:13'),
(25, 'fayzo', '2019_5771fp.jpg', '2019_3171fp.jpg', '', '', 356.00, '0787345243243', 'rwanda', 'ibiriganya', 'nuko=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'vegetables', '5b', 1, 39, 400.00, 'new_arrival', 61, '2019-07-05 22:16:20'),
(26, 'fayzo', '2019_7856-1.jpg', '2019_8656-1.jpg', '', '', 467600.00, '0787345243243', 'rwanda', 'bugali', 'chappati=====', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'gud', 'food', '97301erws4', 1, 0, 0.00, 'new_arrival', 61, '2019-07-06 16:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `football`
--

CREATE TABLE `football` (
  `football_id` int(11) NOT NULL,
  `match_game` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goals_player_name_match` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goal_player_id_match` int(11) NOT NULL,
  `counts_goals` int(11) NOT NULL,
  `counts_drows` int(11) NOT NULL,
  `counts_points` int(11) NOT NULL,
  `date_of_match` date NOT NULL,
  `created_on3` datetime NOT NULL,
  `user_id3` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_of_match` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_team_photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `away_team_photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `football`
--

INSERT INTO `football` (`football_id`, `match_game`, `goals_player_name_match`, `goal_player_id_match`, `counts_goals`, `counts_drows`, `counts_points`, `date_of_match`, `created_on3`, `user_id3`, `text`, `location_of_match`, `home_team_photo`, `away_team_photo`) VALUES
(1, 'rayon-sports', '', 0, 0, 0, 0, '2019-06-18', '2019-06-17 10:42:40', 61, 'ibintu nu buryohe itike ni 1000 frw kwijira', '10pm at stadium', '2019_58imag.jpg', '2019_10imag.jpg'),
(2, 'kiyovu ?-? sports', '', 0, 0, 0, 0, '2019-06-18', '2019-06-18 14:58:28', 61, 'kwijira bizaba bishushe', '10pm at stadium', '2019_35ligh.jpg', '2019_33imag.jpg'),
(3, 'apr', '', 0, 0, 0, 0, '2019-07-13', '2019-07-13 15:38:37', 64, 'nice', 'kimironko', '2019_63map-.png', '2019_49capt.png'),
(4, 'apr', '', 0, 0, 0, 0, '2019-07-12', '2019-07-13 15:41:38', 64, 'rtw', 'rt', '2019_64capt.png', '2019_16capt.png');

-- --------------------------------------------------------

--
-- Table structure for table `fundraising`
--

CREATE TABLE `fundraising` (
  `fund_id` int(10) UNSIGNED NOT NULL,
  `firstname1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districts` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cell` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `progress_payment` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id2` int(11) NOT NULL,
  `created_on2` datetime NOT NULL,
  `total_likes` int(11) NOT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_fundraising` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title_main` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fundraising`
--

INSERT INTO `fundraising` (`fund_id`, `firstname1`, `middlename1`, `lastname1`, `address1`, `country1`, `city`, `province`, `districts`, `sector`, `cell`, `village`, `text`, `progress_payment`, `photo`, `other_photo`, `video`, `youtube`, `user_id2`, `created_on2`, `total_likes`, `comments`, `email1`, `telephone1`, `categories_fundraising`, `photo_Title`, `photo_Title_main`) VALUES
(23, 'v', 'v', 'v', 'v', '0', 'v', 'v', 'v', 'v', 'v', 'v', 'v', '', '2019_16fayz.jpg', '2019_64hear.jpg', '2019_45imag.jpg', 'v', 61, '0000-00-00 00:00:00', 0, '', 'v', 'v', '', '', ''),
(24, 'c', 'd', 'd', 'sd', '0', 'z', 'c', 'c', 'z', 'c', 'c', 'c', '', '2019_19ramp.jpg', '2019_82hear.jpg', '2019_89ramzy2.jpg', 'c', 61, '0000-00-00 00:00:00', 0, '', 'shemafaysal@gmail.com', 'c', 'education', '', ''),
(25, 'a', 'a', 'a', 'a', '0', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '', '', '', '', 'a', 61, '2019-05-30 13:28:19', 0, '', 'a', 'a', 'medical', '', ''),
(26, 'a', 'a', 'a', 'a', '0', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '', '', '', '', 'a', 61, '2019-05-30 13:28:47', 0, '', 'a', 'a', 'medical', '', ''),
(27, 'a', 'a', 'a', 'a', '0', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '', '', '', '', 'a', 61, '2019-05-30 13:28:47', 0, '', 'a', 'a', 'medical', '', ''),
(28, 'a', 'a', 'a', 'aa', '0', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019_85head.jpg', '2019_73hear.jpg', '2019_29hear.jpg', 'a', 61, '2019-05-30 13:29:16', 0, '', 'a', 'a', 'Select what types of helps you need', '', ''),
(29, 'w', 'w', 'w', 'w', '0', 'w', 'w', 'w', 'w', 'w', 'w', 'w', '', '2019_54hear.jpg', '2019_19hear.jpg', '2019_38imag.jpg', 'w', 61, '2019-05-30 13:34:51', 0, '', 'w', 'w', 'business', '', ''),
(30, 'x', 'x', 'x', 'x', '0', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', '2019_86imag.jpg', '2019_43imag.jpg', '2019_89images.png', 'x', 61, '2019-05-30 13:36:21', 0, '', 'x', 'x', 'education', '', ''),
(31, 'q', 'q', 'q', 'q', '0', 'q', 'q', 'q', 'q', 'q', 'q', 'q', '', '', '', '', '', 61, '2019-05-31 06:49:14', 0, '', 'q', 'q', 'business', '', ''),
(32, 'q', 'q', 'q', 'q', '0', 'q', 'q', 'q', 'q', 'q', 'q', 'q', '', '2019_40f.jpg', '2019_74fayz.jpg', '', '', 61, '2019-05-31 06:51:50', 0, '', 'q', 'q', 'business', '', ''),
(33, 'a', 'a', 'a', 'a', '0', 'a', 'a', 'a', 'a', 'a', 'a', 'a', '', '2019_97gori.jpg', '2019_15ramp.jpg', '', '', 61, '2019-05-31 06:54:12', 0, '', 'a', 'a', 'business', '', ''),
(34, 'z', 'z', 'z', 'z', '0', 'z', 'z', 'z', 'z', 'z', 'z', 'z', '', '2019_62tree.jpg', '2019_53unti.png', '', '', 61, '2019-05-31 06:56:58', 0, '', 'z', 'z', 'business', '', ''),
(35, 'd', 'd', 'd', 'd', '0', 'd', 'd', 'd', 'd', 'd', 'd', 'd', '', '2019_40head.jpg', '2019_36images.png', '', '', 61, '2019-05-31 07:09:36', 0, '', 'd', 'd', 'business', '', ''),
(36, 'x', 'x', 'x', 'x', '0', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', '2019_69head.jpg', '2019_15fayz.jpg', '', '', 61, '2019-05-31 07:20:30', 0, '', 'x', 'x', 'business', '', ''),
(37, 'z', 'z', 'z', 'z', '0', 'z', 'z', 'z', 'z', 'z', 'z', 'z', '', '2019_27suns.jpg', '2019_53suns.jpg', '', '', 61, '2019-05-31 07:24:12', 0, '', 'z', 'z', 'business', '', ''),
(38, 'v', 'v', 'v', 'v', '0', 'v', 'v', 'v', 'v', 'v', 'v', 'v', '', '2019_57f.jpg', '2019_31imag.jpg', '', '', 61, '2019-05-31 07:27:57', 0, '', 'v', 'v', 'business', '', ''),
(39, 'c', 'c', 'c', 'c', '0', 'c', 'c', 'c', 'c', 'c', 'c', 'c', '', '2019_78gori.jpg', '2019_90ramzya.jpg', '', '', 61, '2019-05-31 07:28:35', 0, '', 'c', 'c', 'business', '', ''),
(40, 's', 's', 's', 's', '0', 's', 's', 's', 's', 's', 's', 's', '', '2019_951.jpg', '2019_923.jpg', '', '', 61, '2019-05-31 07:59:41', 0, '', 's', 's', 'education', '', ''),
(41, 'v', 'v', 'v', 'v', '0', 'v', 'v', 'v', 'v', 'v', 'v', 'v', '', '2019_826147.jpg', '2019_58fay121.jpg', '', '', 61, '2019-05-31 08:06:09', 0, '', 'v', 'v', 'creative', '', ''),
(42, 'x', 'x', 'x', 'x', '0', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', '2019_781.jpg', '2019_575220.jpg', '', '', 61, '2019-05-31 08:56:20', 0, '', 'x', 'x', 'community', '', ''),
(43, 'cs', 'c', 'c', 'c', '0', 'c', 'c', 'c', 'c', 'c', 'c', 'c', '', '2019_191.jpg', '2019_212.jpg=2019_633.jpg=2019_1005046.jpg=2019_305220.jpg=2019_475220.jpg=2019_975220.jpg=2019_476147.jpg=2019_79caus.jpg', '', '', 61, '2019-05-31 11:28:35', 0, '', 'c', 'c', 'business', '', ''),
(44, 'b', 'b', 'b', 'b', '0', 'b', 'b', 'b', 'b', 'b', 'b', 'b', '', '2019_19hear.jpg', '2019_12images.jpg', '', '', 61, '2019-06-01 06:52:06', 0, '', 'b', 'b', 'business', '', ''),
(45, 'd', 'd', 'd', 'd', '0', 'd', 'd', 'd', 'd', 'd', 'd', 'd', '', '2019_583.jpg', '2019_38f.jpg=2019_87fayz.jpg=2019_91fayz.jpg=2019_43head.jpg=2019_93hear.jpg=2019_61hear.jpg=2019_24images.png=2019_98imag.jpg=2019_42imag.jpg', '', '', 61, '2019-06-02 13:54:26', 0, '', 'd', 'd', 'community', '', ''),
(46, 'q', 'q', 'q', 'q', '0', 'q', 'q', 'q', 'q', 'q', 'q', 'q', '', '2019_52hear.jpg', '2019_26hear.jpg=2019_19imag.jpg', '', '', 61, '2019-06-02 13:56:23', 0, '', 'q', 'q', 'community', '', ''),
(47, 'ee', 'e', 'e', 'e', '0', 'e', 'e', 'e', 'e', 'e', 'e', 'e', '', '2019_70imag.jpg', '2019_15fayz.jpg=2019_21fayz.jpg', '', '', 61, '2019-06-02 13:58:02', 0, '', 'e', 'e', 'community', '', ''),
(48, 'xc', 'c', 'c', 'c', '0', 'c', 'c', 'c', 'c', 'c', 'c', 'c', '', '2019_73imag.jpg', '2019_90ramz.png=2019_39rwanda.jpg', '', '', 61, '2019-06-02 13:58:58', 0, '', 'c', 'c', 'community', '', ''),
(49, 'r', 'r', 'r', 'r', '0', 'r', 'r', 'r', 'r', 'r', 'r', 'r', '', '2019_40imag.jpg', '2019_60ramp.jpg=2019_38ramzy2.jpg', '', '', 61, '2019-06-02 13:59:34', 0, '', 'r', 'r', 'community', '', ''),
(50, 't', 't', 't', 't', '0', 't', 't', 't', 't', 't', 't', 't', '', '2019_13images.png', '2019_67suns.jpg', '', '', 61, '2019-06-02 14:00:06', 0, '', 't', 't', 'community', '', ''),
(51, 'uu', 'u', 'u', 'u', '0', 'u', 'u', 'u', 'u', 'u', 'u', 'u', '', '2019_99ramp.jpg', '2019_10ramzya.jpg', '', '', 61, '2019-06-02 14:00:36', 0, '', 'uu', 'u', 'community', '', ''),
(52, 'cd', 'dd', 'd', 'd', '0', 'd', 'd', 'd', 'd', 'd', 'd', 'd', '', '2019_36ramz.png', '2019_23tree.jpg', '', '', 61, '2019-06-02 14:01:04', 0, '', 'd', 'd', 'community', '', ''),
(53, 'shema', 'shema', 'faysal', 'kigali', '0', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'rwaye umtima', '', '2019_941.jpg', '2019_832.jpg=2019_193.jpg', '', '', 61, '2019-06-29 08:53:40', 0, '', 'shemafaysal@gmail.com', '07867424253', 'faith', 'ndi mugitanda=aha ndikugenda buhororor====', ''),
(54, 'ronaldo', 'shema', 'faysal', 'kigali', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'ndarwaye', '', '2019_655046.jpg', '2019_62caus.jpg=2019_26caus.jpg', '', '', 61, '2019-06-29 09:11:56', 0, '', 'shemafaysal@gmail.com', '07867424253', 'faith', 'no kwiga ntago niga====', 'nta mbaraga'),
(55, 'x', 'c', 'x', 'sdfds', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'ndarwaye', '', '2019_74fay1.jpg', '2019_26stoc.jpg=2019_52stoc.jpg', '', '', 61, '2019-06-29 09:15:23', 0, '', 'shemafaysal@gmail.com', '007068', 'faith', 'ndaguye====', 'ifoto yo mu mutwe');

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `house_id` int(11) NOT NULL,
  `authors` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_house` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country01` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districts` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cell` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title_main` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id3` int(11) NOT NULL,
  `created_on3` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`house_id`, `authors`, `photo`, `other_photo`, `video`, `youtube`, `text`, `categories_house`, `price`, `phone`, `country01`, `city`, `province`, `districts`, `sector`, `cell`, `village`, `buy`, `photo_Title_main`, `photo_Title`, `user_id3`, `created_on3`) VALUES
(13, 'fayzo', '2019_576d46.jpg', '2019_85042b.jpg', '', '', 'nice', 'House_For_sale', '547890000', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'ni ziza', 'ni ziza imbere=====', 61, '2019-07-05 21:12:33'),
(16, 'fayzo', '2019_332_gz.jpg', '2019_176d46.jpg', '', '', 'gud shape', 'House_For_sale', '56564000', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'ni nziza', 'hejuru=====', 61, '2019-07-05 21:13:40'),
(17, 'fayzo', '2019_43042b.jpg', '2019_792_gz.jpg', '', '', 'gud', 'House_For_sale', '665000', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'hejuru', 'hasi=====', 61, '2019-07-05 21:15:45'),
(18, 'fayzo', '2019_58450_.jpg', '2019_96042b.jpg', '', '', 'nice', 'House_For_rent', '5350000', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'gud', 'shape=====', 61, '2019-07-05 21:16:56'),
(19, 'fayzo', '2019_67450_.jpg', '2019_93450_.jpg', '', '', 'nice', 'House_For_rent', '23454600', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'gud house', 'amazu meza=====', 61, '2019-07-05 21:17:47'),
(20, 'fayzo', '2019_482019.jpeg', '2019_15450_.jpg', '', '', 'gud', 'House_For_sale', '354500', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'ni ziza', 'iurubatse=====', 61, '2019-07-05 21:18:51'),
(21, 'fayzo', '2019_924854.jpg', '2019_942019.jpeg', '', '', 'hi', 'House_For_rent', '57500', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'pisini', 'parking=====', 61, '2019-07-05 21:19:44'),
(22, 'fayzo', '2019_7520-2.jpg', '2019_861014.jpg', '', '', 'ikibaza', 'House_Land', '4500', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'heza', 'umurima=====', 61, '2019-07-05 21:20:44'),
(23, 'fayzo', '2019_101014.jpg', '2019_581200.jpeg', '', '', 'ikibaza', 'House_Land', '36500', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'ikibaza n425', 'ikibaza N45=====', 61, '2019-07-05 21:21:44'),
(24, 'fayzo', '2019_981200.jpeg', '2019_656370.jpg', '', '', 'ikibaza', 'House_Land', '45346000', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'umuhanda', 'umurima=====', 61, '2019-07-05 21:22:28'),
(25, 'fayzo', '2019_186370.jpg', '2019_183998.jpg', '', '', 'nice', 'House_Land', '5645600', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'umurima', 'ishamba=====', 61, '2019-07-05 21:25:40'),
(26, 'fayzo', '2019_7203e3.jpg', '2019_16dsc_.jpg', '', '', 'gud', 'Apartment_For_sale', '43536000', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'irakodeshwa', 'imfite ibyumba byishi=====', 61, '2019-07-05 21:27:05'),
(27, 'fayzo', '2019_672201.jpg', '2019_5603e3.jpg', '', '', 'inzu ya partment igurishwa', 'Apartment_For_sale', '2445000', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'ni nziza', 'imfite ubugari buri hejuru=====', 61, '2019-07-05 21:28:20'),
(28, 'fayzo', '2019_8905-b.jpg', '2019_812201.jpg', '', '', 'nice', 'Apartment_For_sale', '24536800', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'imfite pisini', 'nini=====', 61, '2019-07-05 21:29:13'),
(29, 'fayzo', '2019_22apas.jpg', '2019_322201.jpg', '', '', 'imfite ibyumba byinshi', 'Apartment_For_rent', '453600', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'imfite ibyumba byinshi', '4 ibyumba na toillet=====', 61, '2019-07-05 21:31:16'),
(30, 'fayzo', '2019_606449.jpg', '2019_84apas.jpg', '', '', 'hejuru', 'Apartment_For_rent', '45400', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'amataraa meza', 'parking nini=====', 61, '2019-07-05 21:32:11'),
(31, 'fayzo', '2019_469148.jpg', '2019_536449.jpg', '', '', 'imfite byose', 'Apartment_For_rent', '54600', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'imfite byose', 'waza ukirebere=====', 61, '2019-07-05 21:33:21'),
(32, 'fayzo', '2019_100arie.jpg', '2019_23apas.jpg', '', '', 'nice', 'Apartment_For_rent', '345300', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'imfite ibiti', 'hejuru no hasi=====', 61, '2019-07-05 21:34:20'),
(33, 'fayzo', '2019_20f296.jpg', '2019_48arie.jpg', '', '', 'nice', 'Offices_stores', 'fayzo', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'gukorera', 'naha=====', 61, '2019-07-05 21:35:23'),
(34, 'fayzo', '2019_98dsc_.jpg', '2019_51apas.jpg', '', '', 'gud shape', 'Offices_stores', '4353600', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'imfite byose', 'hejuru no haasi=====', 61, '2019-07-05 21:36:19'),
(35, 'fayzo', '2019_89feat.jpg', '2019_50f296.jpg', '', '', 'gud', 'Offices_stores', '43500', '0787345243243', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'available', 'aho gukorera', 'imfite ibyumba byinshi=====', 61, '2019-07-05 21:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(10) UNSIGNED NOT NULL,
  `job_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_summary` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibilities_duties` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualifications_skills` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int(11) NOT NULL,
  `conditions` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_jobs` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `turn` char(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_title`, `job_summary`, `responsibilities_duties`, `qualifications_skills`, `business_id`, `conditions`, `categories_jobs`, `deadline`, `website`, `created_on`, `turn`) VALUES
(2, 'akazi', 'gukora', 'gukora', 'gukora', 61, 'gukora', 'Featured', '22', 'gukora', '2019-05-25 00:00:00', 'on'),
(3, 'a', 'a', 'a', 'a', 61, 'a', 'Tenders', 'a', 'a', '2019-05-25 00:00:00', 'on'),
(7, 'a', '<p>a</p>', '<p>a</p>', '<p>a</p>', 61, '<p>a</p>', 'Consultancy', '<p>ad</p>', 'gukora', '2019-05-26 13:34:55', 'on'),
(8, 'ddfdf', '<p>dfdf</p>', '<p>fdf</p>', '<p>dfdf</p>', 61, '<p>dfdf</p>', 'Internships', '<p>dfdf</p>', 'dfdf', '2019-05-26 15:34:43', 'on'),
(19, 'plumber', '<p>\n\n<div><div>  &lt;h4 &gt;Job Summary: &lt;/h4&gt;</div><div>                             &lt;p&gt; Example of an Accountant job summary. &lt;/p&gt;</div><div>                             &lt;ul style=\"list-style-type:dot\"&gt;</div><div>                                &lt;li&gt;Weâ€™re looking for an organized and driven Staff Accountant to join our growing team at our company. The Staff Accountant position will work closely with our other accountants and operations personnel and handle day-to', '<p>\n\n<div><div>  &lt;h4&gt;Responsibilities and Duties: &lt;/h4&gt;</div><div>                             &lt;p &gt;Examples of an Accountant Responsibilities. &lt;/p&gt;</div><div>                             &lt;ul style=\"list-style-type:dot\"&gt;</div><div>                                 &lt;li&gt;Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports', '<p>\n\n<div><div>&lt;h4 &gt;Qualifications and Skills: &lt;/h4&gt;</div><div>                           &lt;p &gt;Examples of an Accountant skills. &lt;/p&gt;</div><div>                           &lt;ul style=\"list-style-type:dot\"&gt;</div><div>                               &lt;li&gt;2+ years accounting experience&lt;/li&gt;</div><div>                               &lt;li&gt;Expertise with QuickBooks&lt;/li&gt;</div><div>                               &lt;li&gt;Extensive knowledge of US GAAP&lt;/', 64, '<p>\n\n<div><div> &lt;h4 class=\"card-title\"&gt;Terms and conditions: &lt;/h4&gt;</div><div>                            &lt;p class=\"card-title\"&gt;Explaination of Terms and conditions: &lt;/p&gt;</div><div>                            &lt;p&gt;Include a list of hard and soft skills. Of course, the job ', 'Featured', '<p>\n\n<div><div> &lt;h4 class=\"card-title\"&gt;Deadline to submit: &lt;/h4&gt;</div><div>                            &lt;p class=\"card-title\"&gt;Explaination of Deadline to submit: &lt;/p&gt;</div><div>', '2+ yearsâ€™ Data mining experience', '2019-07-01 08:47:44', 'on'),
(23, 'plumber', '<p>\n\n<div><div>  &lt;h4 &gt;Job Summary: &lt;/h4&gt;</div><div>                             &lt;p&gt; Example of an Accountant job summary. &lt;/p&gt;</div><div>                             &lt;ul style=\"list-style-type:dot\"&gt;</div><div>                                &lt;li&gt;Weâ€™re looking for an organized and driven Staff Accountant to join our growing team at our company. The Staff Accountant position will work closely with our other accountants and operations personnel and handle day-to', '<p>\n\n<div><div>  &lt;h4&gt;Responsibilities and Duties: &lt;/h4&gt;</div><div>                             &lt;p &gt;Examples of an Accountant Responsibilities. &lt;/p&gt;</div><div>                             &lt;ul style=\"list-style-type:dot\"&gt;</div><div>                                 &lt;li&gt;Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports', '<p>\n\n<div><div>&lt;h4 &gt;Qualifications and Skills: &lt;/h4&gt;</div><div>                           &lt;p &gt;Examples of an Accountant skills. &lt;/p&gt;</div><div>                           &lt;ul style=\"list-style-type:dot\"&gt;</div><div>                               &lt;li&gt;2+ years accounting experience&lt;/li&gt;</div><div>                               &lt;li&gt;Expertise with QuickBooks&lt;/li&gt;</div><div>                               &lt;li&gt;Extensive knowledge of US GAAP&lt;/', 64, '<p>\n\n<div><div> &lt;h4 class=\"card-title\"&gt;Terms and conditions: &lt;/h4&gt;</div><div>                            &lt;p class=\"card-title\"&gt;Explaination of Terms and conditions: &lt;/p&gt;</div><div>                            &lt;p&gt;Include a list of hard and soft skills. Of course, the job ', 'Featured', '<p>\n\n<div><div> &lt;h4 class=\"card-title\"&gt;Deadline to submit: &lt;/h4&gt;</div><div>                            &lt;p class=\"card-title\"&gt;Explaination of Deadline to submit: &lt;/p&gt;</div><div>', '2+ yearsâ€™ Data mining experience', '2019-07-01 08:47:45', 'off'),
(25, 'Accountant', '<p><ul><li>\r\n\r\n<div><p>Weâ€™re looking for an organized and driven Staff Accountant to join our growing team at our company. The Staff Accountant position will work closely with our other accountants and operations personnel and handle day-to-day bookkeeping. Weâ€™re an energetic company and are looking for a passionate individual to join our organization and revitalize our record keeping and bring more organization to our day to day financials.</p></div></li><li><p>\r\n', '<p>\r\n\r\n<div><div><ul><li>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</li></ul><ul><li>Analyze and report on financial status including income statement variances, communicating financial results to management, budget preparation and analysis</li></ul><ul>', '<p>\n\n<div><div>2+ years accounting experience</div><div>Expertise with QuickBooks</div><div>Extensive knowledge of US GAAP</div><div>Advanced computer skills in MS Office, accounting software and databases</div><div>Excellent organizational, problem-solving, project management and communication skills</div><div>Additional experience in Audit and International accounting</div><div>Experience with SaaS companies</div><div>CPA certification&nbsp;</div></div>\n\n<br></p>', 64, '<p>\n\n<div><div><ul><li>Include a list of hard and soft skills. Of course, the job description should specify education, previous job experience, certifications and technical skills required for the role. You may also include soft skills, like communication and problem solving, as well as personality', 'Public', '<p>\n\n<div><div>Include a list of hard and soft skills. Of course, the job description should specify education, previous job experience, certifications and technical skills required for the role. You ', 'wwww.dgsfg.com', '2019-07-12 17:22:06', 'off'),
(26, 'Senior Staff Accountant ', '<p><ul><li>\r\n\r\n<div><p>Weâ€™re looking for an organized and driven Staff Accountant to join our growing team at our company. The Staff Accountant position will work closely with our other accountants and operations personnel and handle day-to-day bookkeeping. Weâ€™re an energetic company and are looking for a passionate individual to join our organization and revitalize our record keeping and bring more organization to our day to day financials.</p></div></li><li><p>\r\n', '<p>\r\n\r\n<div><div><ul><li>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</li></ul><ul><li>Analyze and report on financial status including income statement variances, communicating financial results to management, budget preparation and analysis</li></ul><ul>', '<p>\n\n<div><div>2+ years accounting experience</div><div>Expertise with QuickBooks</div><div>Extensive knowledge of US GAAP</div><div>Advanced computer skills in MS Office, accounting software and databases</div><div>Excellent organizational, problem-solving, project management and communication skills</div><div>Additional experience in Audit and International accounting</div><div>Experience with SaaS companies</div><div>CPA certification&nbsp;</div></div>\n\n<br></p>', 64, '<p>\n\n<div><div><ul><li>Include a list of hard and soft skills. Of course, the job description should specify education, previous job experience, certifications and technical skills required for the role. You may also include soft skills, like communication and problem solving, as well as personality', 'Public', '<p>\n\n<div><div>Include a list of hard and soft skills. Of course, the job description should specify education, previous job experience, certifications and technical skills required for the role. You ', 'wwww.dgsfg.com', '2019-07-12 17:22:37', 'on'),
(27, 'Accounts Payable Specialist', '<p>\n\n<div><ul><li>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</li><li>\n\n<div><p>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessaryï»¿</p></div></li><li>\n\n<di', '<p><ul><li>\n\n<div><div>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</div></div>\n\n<br></li><li>\n\n<div><div>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</', '<h1><b>niceï»¿</b><b></b></h1><p><ul><li>\n\n<div><div>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</div></div>\n\n</li><li><p>\n\n<div><div>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial r', 64, '<p><small>\n\n<div><div>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</div></div>\n\n</small><br></p><p>\n\n<div><div>Perform monthly', 'Featured', '<p><ul><li>\n\n<div><div>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewi', 'goood', '2019-07-12 17:46:31', 'on'),
(28, 'Senior Staff Accountant', '<p><div><ul><li>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</li>\r\n<li><div><p>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessaryï»¿</p></div></li>\r\n</ul></di', '<p><ul><li>\r\n\r\n<div><div>xPerform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</div></div>\r\n\r\n<br></li><li>\r\n\r\n<div><div>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as nece', '<h1><b>niceï»¿</b><b></b></h1><p><ul><li>\n\n<div><div>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</div></div>\n\n</li><li><p>\n\n<div><div>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial r', 64, '<p><small>\n\n<div><div>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</div></div>\n\n</small><br></p><p>\n\n<div><div>Perform monthly', 'Featured', '<p><ul><li>\n\n<div><div>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewi', 'goood', '2019-07-12 17:46:58', 'on'),
(29, 'amakuru', '<p><ul><li>adad</li><li>adad</li><li>adada</li><li>adad</li><li>adad</li><li>ad</li></ul></p>', '<p><ul><li>ama</li><li>abab</li><li>abab</li><li>abab</li><li>abab</li><li>abab</li></ul></p>', '<p><ul><li>dadad</li><li>dada</li><li>dad</li><li>dada</li><li>dadadvad</li><li>dafaav</li></ul></p>', 64, '<p><ul><li>adfadfad</li><li>adfafadf</li><li>afadfadf</li><li>dfadf</li><li>fadfadf</li><li>dfadfad</li><li>adfadbd</li></ul></p>', 'Tenders', '<p><ul><li>vsfbfvsfa</li><li>afavabfs</li><li>adfadvdafadfa</li><li>adfadvazc</li><li>adfadfadfad</li><li>vadvadfzcfz</li><li>adfdvv</li></ul></p>', 'dvadvf', '2019-07-12 18:25:40', 'on'),
(30, 'Accountant', '<p>\n\n<div><div><ul><li>Weâ€™re looking for an organized and driven Staff Accountant to join our growing team at our company. The Staff Accountant position will work closely with our other accountants and operations personnel and handle day-to-day bookkeeping. Weâ€™re an energetic company and are looking for a passionate individual to join our organization and revitalize our record keeping and bring more organization to our day to day financials.</li><li>Weâ€™re looking for an organized and drive', '<p>\n\n<div><ul><li>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</li><li>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</li><li>Perform monthly, quarterly a', '<p>\n\n<div><ul><li>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</li><li>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary Perform monthly, quarterly and annua', 64, '<p>\n\n<div><ul><li>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/support as necessary</li><li>Perform monthly, quarterly and annual accounting activi', 'Tenders', '<p>\n\n<div><ul><li><i>Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing', 'Perform monthly, quarterly and annual accounting activities including reconciliations of bank and credit card accounts, coordination and completion of annual audits, and reviewing financial reports/su', '2019-07-12 18:35:34', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(10) UNSIGNED NOT NULL,
  `like_by` int(11) NOT NULL,
  `like_on` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_to` int(11) NOT NULL,
  `message_from` int(11) NOT NULL,
  `message_on` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message`, `message_to`, `message_from`, `message_on`, `status`) VALUES
(7, 'czcm sv kn sn vjv bxxnm nmx,  ,fff ffff ffff fffffff fffff ffffff fffffff ffff fffff ff ffffff fff fff ffff fffff ffff fffffff ffffff fff ffffff ffffffffff fffffff fffff fffff ffffff ffff ffffff ffffff ff fffffv', 66, 61, '2019-05-15 21:45:17', 1),
(9, 'dfe', 61, 66, '2019-05-15 23:54:00', 1),
(10, 'amakuru yawe', 61, 66, '2019-05-21 14:10:02', 1),
(11, 'uraho musore', 61, 65, '2019-05-21 14:11:46', 1),
(12, 'ntago nkuherutse', 61, 65, '2019-05-21 14:12:06', 1),
(13, 'amakuru', 61, 67, '2019-05-21 14:54:15', 1),
(44, 'ada', 66, 61, '2019-05-23 06:55:20', 1),
(46, 'biteuraho', 64, 61, '2019-05-24 14:21:10', 1),
(47, 'biteurahonarakubuze cyane', 64, 61, '2019-05-24 14:21:32', 1),
(48, 'biteurah onar akubuze cyan ecccccc cccccc cccccccc ccccccc cccc cccccccc cccccccc cccccc cccccc ccccc ccccccc cccc ', 66, 61, '2019-05-30 05:56:49', 1),
(49, 'biteura hona rakubuze cyane ccc ccccc cccc ccccc ccccccc ccccccc ccc ccccccc ccccc cccccccc cccccc', 66, 61, '2019-05-30 05:57:05', 1),
(50, 'bite', 61, 68, '2019-05-30 11:55:11', 1),
(51, 'uraho', 61, 68, '2019-05-30 11:55:17', 1),
(52, 'ndaho', 61, 64, '2019-05-30 11:56:17', 1),
(53, 'amakuru yawe', 61, 71, '2019-06-02 14:50:54', 1),
(54, 'longtime', 61, 71, '2019-06-02 14:50:59', 1),
(55, 'usigaye ubahe hehe?', 61, 71, '2019-06-02 14:51:13', 1),
(56, 'nitwa rrrrr', 61, 69, '2019-06-02 14:52:09', 1),
(57, 'rihana', 61, 69, '2019-06-02 14:52:12', 1),
(58, 'ok nice name uwo wakwise gutya yakwise neza', 69, 61, '2019-06-02 14:54:47', 0),
(59, 'ndakwemera', 69, 61, '2019-06-02 15:15:51', 0),
(60, 'uraho', 67, 61, '2019-06-11 15:10:27', 0),
(61, 'amakuru yawe', 61, 72, '2019-07-01 16:27:15', 1),
(62, 'ndaho wowe', 72, 61, '2019-07-01 16:28:52', 1),
(64, 'ndaho', 61, 72, '2019-07-01 16:52:45', 1),
(65, 'umeze ute', 72, 61, '2019-07-03 14:09:07', 0),
(67, 'ga', 72, 61, '2019-07-03 14:09:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movies_id` int(11) NOT NULL,
  `title_movies` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actors` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latest_movies` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_release` date NOT NULL,
  `duration` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_movies` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additioninformation` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id3` int(11) NOT NULL,
  `created_on3` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movies_id`, `title_movies`, `director`, `actors`, `country`, `photo`, `latest_movies`, `date_release`, `duration`, `categories_movies`, `additioninformation`, `video`, `youtube`, `user_id3`, `created_on3`) VALUES
(3, 'harry potter', 'john', 'miley', 'c', '2019_58487a.jpg', 'america-movies', '0000-00-00', '', 'Action', 'cs', '2019_53vlc-.mp4', '', 61, '2019-06-13 02:33:32'),
(4, 'harry potter', 'john', 's', 'c', '2019_56482d.jpg', 'america-movies', '0000-00-00', '', 'Adventure', 's', '2019_50vlc-.mp4', '', 61, '2019-06-13 02:40:29'),
(5, 'king kong', 'john', 'miley', 'a', '2019_1477e5.jpg', 'Tv-Series', '2019-06-02', '33mn', 'Tv-Series', 'cmb', '2019_95vlc-.mp4', '', 61, '2019-06-13 07:46:35'),
(6, 'creed', 'stalon', 'miley', 'america', '2019_898750.jpg', 'america-movies', '2019-01-10', '120 min', 'Action', 'nice', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:04:06'),
(7, 'hellboy', 'john', 'miley', 'c', '2019_267fcb.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'nice', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:05:17'),
(8, 'c', 'john', 'c', 'c', '2019_2933ba.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'nice', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:06:01'),
(9, 'king kong', 'john', 'miley', 'c', '2019_334eaf.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'nice', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:06:39'),
(10, 'c', 'john', 'miley', 'c', '2019_819f28.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'nice', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:07:13'),
(11, 'c', 'john', 'miley', 'c', '2019_28739c.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'nice', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:07:52'),
(12, 'creed', 'stalon', 'c', 'c', '2019_19a860.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'nice', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:08:29'),
(13, 'c', 'john', 'd', 'c', '2019_35aa75.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'b', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:13:25'),
(14, 'c', 'john', 'miley', 'c', '2019_36c02b.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'nice', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:19:22'),
(15, 'c', 'john', 'miley', 'c', '2019_94d87e.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'nc', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:20:09'),
(16, 'c', 'john', 'd', 'c', '2019_36e77e.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'nice', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:20:43'),
(17, 'c', 'john', 'miley', 'c', '2019_22eeba.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'nc', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:21:44'),
(18, 'c', 'john', 'miley', 'c', '2019_33f0a7.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'v', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:24:40'),
(19, 'c', 'john', 'miley', 'c', '2019_83fe2a.jpg', 'america-movies', '2019-06-13', '120 min', 'Action', 'b', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:25:14'),
(20, 'c', 'john', 'miley', 'c', '2019_88oper.png', 'america-movies', '2019-06-13', '120 min', 'Action', 'x', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:25:41'),
(21, 'c', 'john', 'miley', 'c', '2019_56oper.png', 'america-movies', '2019-06-13', '120 min', 'Action', 'bf', '2019_53vlc-.mp4', '', 61, '2019-06-13 14:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authors` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_news` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id3` int(11) NOT NULL,
  `created_on3` datetime NOT NULL,
  `photo_Title_main` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title0` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title4` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_Title5` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `authors`, `photo`, `other_photo`, `video`, `youtube`, `text`, `categories_news`, `user_id3`, `created_on3`, `photo_Title_main`, `photo_Title`, `photo_Title0`, `photo_Title1`, `photo_Title2`, `photo_Title3`, `photo_Title4`, `photo_Title5`) VALUES
(22, 'Title of a longer featured blog post', 'fayzo', '2019_141.jpg', '2019_402.jpg=2019_303.jpg', '', '', 'dsfs', 'Technology', 61, '2019-06-25 08:55:04', 'ari kwirukanka', 'ari kwiga=afite gitari====', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(10) UNSIGNED NOT NULL,
  `notification_for` int(11) UNSIGNED NOT NULL,
  `notification_from` int(11) UNSIGNED NOT NULL,
  `target` int(11) UNSIGNED NOT NULL,
  `type` enum('follow','retweet','likes','mention') COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `status` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `notification_for`, `notification_from`, `target`, `type`, `time`, `status`) VALUES
(1, 61, 66, 334, 'mention', '2019-06-17 04:12:32', 1),
(2, 70, 61, 70, 'follow', '2019-06-17 09:28:24', 0),
(5, 61, 64, 61, 'follow', '2019-06-29 13:16:25', 1),
(6, 61, 72, 61, 'follow', '2019-07-01 16:26:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(20) NOT NULL,
  `product_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'OPPO A83', 6990, 'upload/OPPO_A83_L_1.jpg'),
(2, 'HUAWEI Y6 (2018)', 5690, 'upload/HUAWEI_Y6_2018_L_1.jpg'),
(3, 'Vivo V9', 16500, 'upload/Vivo_V9_1_L_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products_`
--

CREATE TABLE `products_` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(6,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_`
--

INSERT INTO `products_` (`id`, `name`, `price`, `created`, `modified`, `status`) VALUES
(1, 'car', 200.00, '2019-07-21 00:00:00', '2019-07-21 00:00:46', ''),
(2, 'bicyle', 130.00, '2019-07-21 00:00:00', '2019-07-21 00:00:00', ''),
(3, 'motor', 280.00, '2019-07-21 00:00:00', '2019-07-21 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `provincecode` int(11) NOT NULL,
  `provincename` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`provincecode`, `provincename`) VALUES
(1, 'MVK'),
(2, 'South Provice'),
(3, 'Wester Provice'),
(4, 'North Provice'),
(5, 'East  Provice');

-- --------------------------------------------------------

--
-- Table structure for table `rwandahotel`
--

CREATE TABLE `rwandahotel` (
  `hotel_id` int(11) NOT NULL,
  `title_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `ranges` double(10,2) NOT NULL,
  `text_` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_` varchar(2002) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_province` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_districts` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_Sector` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_cell` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_village` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id_` int(11) NOT NULL,
  `created_on_` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rwandahotel`
--

INSERT INTO `rwandahotel` (`hotel_id`, `title_`, `author_`, `price`, `ranges`, `text_`, `photo_`, `other_photo_`, `video_`, `youtube_`, `country`, `location_province`, `location_districts`, `location_Sector`, `location_cell`, `location_village`, `phone_`, `user_id_`, `created_on_`) VALUES
(26, 'milles collins', 'jean damour', 189, 6.50, 'gud', '2019_37cs-1.jpg', '2019_14cs-1.jpg=2019_61cs-2.jpg=2019_37cs-3.jpg=2019_13cs-5.jpg=2019_44cs-6.jpg=2019_11cs-7.jpg', '', '', 'RW', 'kigali city', 'Gasabo', 'Boneza', 'Kicukiro', 'amajyambere', '07874254254', 61, '2019-07-21 12:23:51'),
(27, 'milles collins', 'jean damour', 189, 6.50, 'gud', '2019_83cs-1.jpg', '2019_54cs-1.jpg=2019_50cs-2.jpg=2019_31cs-3.jpg=2019_78cs-5.jpg=2019_88cs-6.jpg=2019_10cs-7.jpg', '', '', 'RW', 'kigali city', 'Gasabo', 'Boneza', 'Kicukiro', 'amajyambere', '07874254254', 61, '2019-07-21 12:24:00'),
(28, 'milles collins', 'jean damour', 189, 6.50, 'gud', '2019_42cs-1.jpg', '2019_54cs-1.jpg=2019_85cs-2.jpg=2019_74cs-3.jpg=2019_32cs-5.jpg=2019_50cs-6.jpg=2019_37cs-7.jpg', '', '', 'RW', 'kigali city', 'Gasabo', 'Boneza', 'Kicukiro', 'amajyambere', '07874254254', 61, '2019-07-21 12:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `rwandalandscapes`
--

CREATE TABLE `rwandalandscapes` (
  `landscape_id` int(11) NOT NULL,
  `title_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_of_landscapes` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_` varchar(2002) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_province` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_districts` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_Sector` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_cell` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_village` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id_` int(11) NOT NULL,
  `created_on_` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rwandalandscapes`
--

INSERT INTO `rwandalandscapes` (`landscape_id`, `title_`, `author_`, `categories_of_landscapes`, `text_`, `photo_`, `other_photo_`, `video_`, `youtube_`, `country`, `location_province`, `location_districts`, `location_Sector`, `location_cell`, `location_village`, `phone_`, `user_id_`, `created_on_`) VALUES
(13, 'shema rutahizamu ntiyoroshye', 'fayzo', 'Kigali-city', 'let me do we it', '2019_681.jpg', '2019_573.jpg', '', '', '', 'Kigali-city', 'Gasabo', 'kimihurura', 'Rugando', 'gasange', '0787345243243', 61, '2019-06-27 07:58:23'),
(14, 'Title of a longer featured blog post', 'fayzo', 'Kigali-city', 'akagari ka gasange', '2019_1005046.jpg', '2019_186147.jpg', '', '', '', 'Kigali-city', 'Gasabo', 'kimihurura', 'Rugando', 'gasambe', '0787345243243', 61, '2019-06-27 12:22:38'),
(15, 'Title of a longer featured blog post', 'fayzo', 'Kigali-city', 'nono', '2019_461.jpg', '2019_336147.jpg', '', '', '', 'Kigali-city', 'Nyarugenge', 'Kicukiro', 'Kicukiro', 'rutare', '0787345243243', 61, '2019-06-27 12:43:46'),
(16, 'Title of a longer featured blog post', 'fayzo', 'Kigali-city', 'it is in good place', '2019_17caus.jpg', '2019_40quot.jpg', '', '', '', 'Kigali-city', 'Nyarugenge', 'Kicukiro', 'Kicukiro', 'amajyambere', '0787345243243', 61, '2019-06-27 12:50:47'),
(17, 'Title of a longer featured blog post', 'fayzo', 'Kigali-city', 'it is in good place', '2019_69caus.jpg', '2019_25quot.jpg', '', '', '', 'Kigali-city', 'Nyarugenge', 'Kicukiro', 'Kicukiro', 'amajyambere', '0787345243243', 61, '2019-06-27 12:50:47'),
(18, 'Title of a longer featured blog post', 'fayzo', 'Kigali-city', 'mice', '2019_1005220.jpg', '2019_255220.jpg', '', '', '', 'Kigali-city', 'Kicukiro', 'Remera', 'muhobe', 'henza', '0787345243243', 61, '2019-06-28 08:47:04'),
(19, 'Title of a longer featured blog post', 'fayzo', 'Kigali-city', 'mice', '2019_925220.jpg', '2019_975220.jpg', '', '', '', 'Kigali-city', 'Kicukiro', 'Remera', 'muhobe', 'henza', '0787345243243', 61, '2019-06-28 08:47:04'),
(20, 'Title of a longer featured blog post', 'fayzo', 'Kigali-city', 'sds', '2019_75caus.jpg', '2019_64stoc.jpg', '', '', '', 'Province', 'Rubavu', 'kiyovu', 'Rutsiro', 'rugombe', '0787345243243', 61, '2019-06-28 08:49:22'),
(21, 'Title of a longer featured blog post', 'fayzo', 'Landscapes', 'arfe', '2019_85caus.jpg', '2019_875046.jpg', '', '', '', 'Province', 'Burera', 'Nyamirambo', 'rutondo', 'mujabana', '0787345243243', 61, '2019-06-28 10:44:59'),
(22, 'Title of a longer featured blog post', 'fayzo', 'Landscapes', 'arfe', '2019_24caus.jpg', '2019_835046.jpg', '', '', '', 'Province', 'Burera', 'Nyamirambo', 'rutondos', 'mujabana', '0787345243243', 61, '2019-06-28 10:45:00'),
(23, 'da', 'da', 'kigali-city', 'xccdc', 'csc', 'scsc', 'fl', 'fl', '', 'Province', 'Burera', 'fl', 'fl', 'fl', 'fk', 64, '2019-07-08 00:00:00'),
(24, 'ddaa', 'adfad', '', 'adfd', '2019_32capt.png', '2019_39capt.png', '', '', '', 'Southern province', 'Gakenke', 'Bigogwe', 'Kicukiro', 'Kicukiro', 'dfad', 61, '2019-07-15 09:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_sale` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id01` int(11) NOT NULL,
  `created_on01` datetime NOT NULL,
  `country01` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districts` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cell` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `title`, `code`, `price`, `quantity`, `phone`, `photo`, `other_photo`, `video`, `youtube`, `text`, `categories_sale`, `user_id01`, `created_on01`, `country01`, `city`, `province`, `districts`, `sector`, `cell`, `village`, `banner`) VALUES
(2, 'inkweto', 'inkweto', 445.00, 0, '0787345243243', '2019_86air-.jpg', '2019_63air-.jpg=2019_12air-.jpg', '', '', 'nice one', 'clothes', 61, '2019-06-11 06:30:42', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'new'),
(3, 'samsung', 'igisavi', 4000.00, 0, '0787345243243', '2019_3671p8.jpg', '2019_380302.jpg', '', '', 'nice', 'sports', 61, '2019-06-11 06:39:30', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'great_deal'),
(4, 'style', '9098', 400.00, 0, '0787345243243', '2019_372367.jpg', '2019_64set-.jpg=2019_33sigm.jpg', '', '', 'good', 'health_beauty', 61, '2019-06-11 13:13:26', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'new'),
(5, 'FinePix Pro2 3D Camera', '3DcAM01', 1500.00, 0, '0787345243243', '2019_74camera.jpg', '2019_74camera.jpg', '', '', 'good quality', 'electronics', 61, '2019-06-22 00:49:02', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'great_deal'),
(6, 'EXP Portable Hard Drive', 'USB02', 800.00, 0, '0787345243243', '2019_46exte.jpg', '2019_24exte.jpg', '', '', 'good quality', 'electronics', 61, '2019-06-22 00:50:23', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'new'),
(7, 'Luxury Ultra thin Wrist Watch', 'wristWear03', 300.00, 0, '0787345243243', '2019_90watch.jpg', '2019_38watch.jpg', '', '', 'good quality', 'electronics', 61, '2019-06-22 00:51:28', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'new_arrival'),
(8, 'XP 1155 Intel Core Laptop', 'LPN45', 800.00, 0, '0787345243243', '2019_39laptop.jpg', '2019_33laptop.jpg', '', '', 'good quality', 'electronics', 61, '2019-06-22 00:52:34', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'new_arrival'),
(9, 'isahani', 'xfg54', 2464.00, 0, '0787345243243', '2019_6131enum.jpg', '2019_8071p8.jpg', '', '', 'is in good shape', 'home_garden', 61, '2019-07-01 16:31:57', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'new'),
(10, 'isahani', 'xfg54', 2464.00, 0, '0787345243243', '2019_3731enum.jpg', '2019_2571p8.jpg', '', '', 'is in good shape', 'home_garden', 61, '2019-07-01 16:32:05', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'great_deal'),
(11, 'isafiriya', 'wte54', 4635.00, 0, '0787345243243', '2019_6851qs.jpg', '2019_7551xj.jpg', '', '', 'fgf', 'home_garden', 61, '2019-07-01 16:36:10', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'great_deal'),
(12, 'isafiriya', 'wte54', 4635.00, 0, '0787345243243', '2019_6251qs.jpg', '2019_2351xj.jpg', '', '', 'fgf', 'home_garden', 61, '2019-07-01 16:36:17', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'new'),
(13, 'car', 'sf53', 4000.00, 0, '0787345243243', '2019_820032.jpeg', '2019_560032.jpeg', '', '', 'fdg', 'car', 61, '2019-07-01 16:37:30', 'rwanda', 'kigali', 'kigali', 'gasabo', 'kimihurura', 'rugando', 'gasange', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_id` int(11) NOT NULL,
  `title_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_of_school` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_school` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_` varchar(2002) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_province` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_districts` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_Sector` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_cell` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_village` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id_` int(11) NOT NULL,
  `created_on_` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `title_`, `author_`, `categories_of_school`, `type_of_school`, `text_`, `photo_`, `other_photo_`, `video_`, `youtube_`, `country`, `location_province`, `location_districts`, `location_Sector`, `location_cell`, `location_village`, `phone_`, `user_id_`, `created_on_`) VALUES
(1, 'lycee de kigali', 'gatete', 'Kigali-city', 'College', 'gud', '2019_80capt.png', '2019_27capt.png', '', '', 'RW', 'kigali city', 'Gasabo', 'Kimihurura', 'Rugando', 'gasange', '078745646', 61, '2019-07-15 09:05:01'),
(2, 'IFAK', 'gatete', 'Province', 'College', 'gud', '2019_268512.jpg', '2019_248557.jpg', '', '', 'RW', 'kigali city', 'Gasabo', 'Kimihurura', 'Rugando', 'gasange', '05673784', 61, '2019-07-15 09:44:54'),
(3, 'APADE', 'MASABO', 'Religion School', 'College', 'nice', '2019_43images.jpg', '2019_15imag.jpg', '', '', 'AX', 'kigali city', 'Gasabo', 'Kimihurura', 'Rugando', 'gasange', '03457248', 61, '2019-07-15 09:48:55'),
(4, 'maternitte', 'hice', 'Religion School', 'kindergarden', 'gud', '2019_67capt.png', '2019_92mode.jpg', '', '', 'AX', 'kigali city', 'Gasabo', 'Kimihurura', 'Rugando', 'gasange', '0799353452', 61, '2019-07-15 09:51:29'),
(5, 'upc kigali', 'fayzo', 'Public School', 'kindergarden', 'gud', '2019_81down.png', '2019_608557.jpg', '', '', 'AO', 'kigali city', 'Gasabo', 'Kibangu', 'Rugando', 'amajyambere', '07856353', 61, '2019-07-15 09:54:25'),
(6, 'upc kigali', 'fayzo', 'Public School', 'College', 'gud', '2019_59down.png', '2019_358557.jpg', '', '', 'AO', 'kigali city', 'Gasabo', 'Kibangu', 'Rugando', 'amajyambere', '07856353', 61, '2019-07-15 09:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `sectorcode` varchar(50) NOT NULL,
  `namesector` varchar(50) NOT NULL,
  `districtcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`sectorcode`, `namesector`, `districtcode`) VALUES
('10100', '-- Select Sectors --', '101'),
('10101', 'Gitega', '101'),
('10102', 'Kanyinya', '101'),
('10103', 'Kigali', '101'),
('10104', 'Kimisagara', '101'),
('10105', 'Mageragere', '101'),
('10106', 'Muhima', '101'),
('10107', 'Nyakabanda', '101'),
('10108', 'Nyamirambo', '101'),
('10109', 'Nyarugenge', '101'),
('10110', 'Rwezamenyo', '101'),
('10200', '-- Select Sectors --', '102'),
('10201', 'Bumbogo', '102'),
('10202', 'Gatsata', '102'),
('10203', 'Gikomero', '102'),
('10204', 'Gisozi', '102'),
('10205', 'Jabana', '102'),
('10206', 'Jali', '102'),
('10207', 'Kacyiru', '102'),
('10208', 'Kimihurura', '102'),
('10209', 'Kimironko', '102'),
('10210', 'Kinyinya', '102'),
('10211', 'Ndera', '102'),
('10212', 'Nduba', '102'),
('10213', 'Remera', '102'),
('10214', 'Rusororo', '102'),
('10215', 'Rutunga', '102'),
('10300', '-- Select Sectors --', '103'),
('10301', 'Gahanga', '103'),
('10302', 'Gatenga', '103'),
('10303', 'Gikondo', '103'),
('10304', 'Kagarama', '103'),
('10305', 'Kanombe', '103'),
('10306', 'Kicukiro', '103'),
('10307', 'Kigarama', '103'),
('10308', 'Masaka', '103'),
('10309', 'Niboye', '103'),
('10310', 'Nyarugunga', '103'),
('20100', '-- Select Sectors --', '201'),
('20101', 'Busasamana', '201'),
('20102', 'Busoro', '201'),
('20103', 'Cyabakamyi', '201'),
('20104', 'Kibilizi', '201'),
('20105', 'Kigoma', '201'),
('20106', 'Mukingo', '201'),
('20107', 'Muyira', '201'),
('20108', 'Ntyazo', '201'),
('20109', 'Nyagisozi', '201'),
('20110', 'Rwabicuma', '201'),
('20200', '-- Select Sectors --', '202'),
('20201', 'Gikonko', '202'),
('20202', 'Gishubi', '202'),
('20203', 'Kansi', '202'),
('20204', 'Kibirizi', '202'),
('20205', 'Kigembe', '202'),
('20206', 'Mamba', '202'),
('20207', 'Muganza', '202'),
('20208', 'Mugombwa', '202'),
('20209', 'Mukindo', '202'),
('20210', 'Musha', '202'),
('20211', 'Ndora', '202'),
('20212', 'Nyanza', '202'),
('20213', 'Save', '202'),
('20300', '-- Select Sectors --', '203'),
('20301', 'Busanze', '203'),
('20302', 'Cyahinda', '203'),
('20303', 'Kibeho', '203'),
('20304', 'Kivu', '203'),
('20305', 'Mata', '203'),
('20306', 'Muganza', '203'),
('20307', 'Munini', '203'),
('20308', 'Ngera', '203'),
('20309', 'Ngoma', '203'),
('20310', 'Nyabimata', '203'),
('20311', 'Nyagisozi', '203'),
('20312', 'Ruheru', '203'),
('20313', 'Ruramba', '203'),
('20314', 'Rusenge', '203'),
('20400', '-- Select Sectors --', '204'),
('20401', 'Gishamvu', '204'),
('20402', 'Huye', '204'),
('20403', 'Karama', '204'),
('20404', 'Kigoma', '204'),
('20405', 'Kinazi', '204'),
('20406', 'Maraba', '204'),
('20407', 'Mbazi', '204'),
('20408', 'Mukura', '204'),
('20409', 'Ngoma', '204'),
('20410', 'Ruhashya', '204'),
('20411', 'Rusatira', '204'),
('20412', 'Rwaniro', '204'),
('20413', 'Simbi', '204'),
('20414', 'Tumba', '204'),
('20500', '-- Select Sectors --', '205'),
('20501', 'Buruhukiro', '205'),
('20502', 'Cyanika', '205'),
('20503', 'Gasaka', '205'),
('20504', 'Gatare', '205'),
('20505', 'Kaduha', '205'),
('20506', 'Kamegeri', '205'),
('20507', 'Kibirizi', '205'),
('20508', 'Kibumbwe', '205'),
('20509', 'Kitabi', '205'),
('20510', 'Mbazi', '205'),
('20511', 'Mugano', '205'),
('20512', 'Musange', '205'),
('20513', 'Musebeya', '205'),
('20514', 'Mushubi', '205'),
('20515', 'Nkomane', '205'),
('20516', 'Tare', '205'),
('20517', 'Uwinkingi', '205'),
('20600', '-- Select Sectors --', '206'),
('20601', 'Bweramana', '206'),
('20602', 'Byimana', '206'),
('20603', 'Kabagali', '206'),
('20604', 'Kinazi', '206'),
('20605', 'Kinihira', '206'),
('20606', 'Mbuye', '206'),
('20607', 'Mwendo', '206'),
('20608', 'Ntongwe', '206'),
('20609', 'Ruhango', '206'),
('20700', '-- Select Sectors --', '207'),
('20701', 'Cyeza', '207'),
('20702', 'Kabacuzi', '207'),
('20703', 'Kibangu', '207'),
('20704', 'Kiyumba', '207'),
('20705', 'Muhanga', '207'),
('20706', 'Mushishiro', '207'),
('20707', 'Nyabinoni', '207'),
('20708', 'Nyamabuye', '207'),
('20709', 'Nyarusange', '207'),
('20710', 'Rongi', '207'),
('20711', 'Rugendabari', '207'),
('20712', 'Shyogwe', '207'),
('20800', '-- Select Sectors --', '208'),
('20801', 'Gacurabwenge', '208'),
('20802', 'Karama', '208'),
('20803', 'Kayenzi', '208'),
('20804', 'Kayumbu', '208'),
('20805', 'Mugina', '208'),
('20806', 'Musambira', '208'),
('20807', 'Ngamba', '208'),
('20808', 'Nyamiyaga', '208'),
('20809', 'Nyarubaka', '208'),
('20810', 'Rugarika', '208'),
('20811', 'Rukoma', '208'),
('20812', 'Runda', '208'),
('30100', '-- Select Sectors --', '301'),
('30101', 'Bwishyura', '301'),
('30102', 'Gashari', '301'),
('30103', 'Gishyita', '301'),
('30104', 'Gitesi', '301'),
('30105', 'Mubuga', '301'),
('30106', 'Murambi', '301'),
('30107', 'Murundi', '301'),
('30108', 'Mutuntu', '301'),
('30109', 'Rubengera', '301'),
('30110', 'Rugabano', '301'),
('30111', 'Ruganda', '301'),
('30112', 'Rwankuba', '301'),
('30113', 'Twumba', '301'),
('30200', '-- Select Sectors --', '302'),
('30201', 'Boneza', '302'),
('30202', 'Gihango', '302'),
('30203', 'Kigeyo', '302'),
('30204', 'Kivumu', '302'),
('30205', 'Manihira', '302'),
('30206', 'Mukura', '302'),
('30207', 'Murunda', '302'),
('30208', 'Musasa', '302'),
('30209', 'Mushonyi', '302'),
('30210', 'Mushubati', '302'),
('30211', 'Nyabirasi', '302'),
('30212', 'Ruhango', '302'),
('30213', 'Rusebeya', '302'),
('30300', '-- Select Sectors --', '303'),
('30301', 'Bugeshi', '303'),
('30302', 'Busasamana', '303'),
('30303', 'Cyanzarwe', '303'),
('30304', 'Gisenyi', '303'),
('30305', 'Kanama', '303'),
('30306', 'Kanzenze', '303'),
('30307', 'Mudende', '303'),
('30308', 'Nyakiriba', '303'),
('30309', 'Nyamyumba', '303'),
('30310', 'Nyundo', '303'),
('30311', 'Rubavu', '303'),
('30312', 'Rugerero', '303'),
('30400', '-- Select Sectors --', '304'),
('30401', 'Bigogwe', '304'),
('30402', 'Jenda', '304'),
('30403', 'Jomba', '304'),
('30404', 'Kabatwa', '304'),
('30405', 'Karago', '304'),
('30406', 'Kintobo', '304'),
('30407', 'Mukamira', '304'),
('30408', 'Muringa', '304'),
('30409', 'Rambura', '304'),
('30410', 'Rugera', '304'),
('30411', 'Rurembo', '304'),
('30412', 'Shyira', '304'),
('30500', '-- Select Sectors --', '305'),
('30501', 'BWIRA', '305'),
('30502', 'GATUMBA', '305'),
('30503', 'HINDIRO', '305'),
('30504', 'KABAYA', '305'),
('30505', 'KAGEYO', '305'),
('30506', 'KAVUMU', '305'),
('30507', 'MATYAZO', '305'),
('30508', 'MUHANDA', '305'),
('30509', 'MUHORORO', '305'),
('30510', 'NDARO', '305'),
('30511', 'NGORORERO', '305'),
('30512', 'NYANGE', '305'),
('30513', 'SOVU', '305'),
('30600', '-- Select Sectors --', '306'),
('30601', 'Bugarama', '306'),
('30602', 'Butare', '306'),
('30603', 'Bweyeye', '306'),
('30604', 'Gashonga', '306'),
('30605', 'Giheke', '306'),
('30606', 'Gihundwe', '306'),
('30607', 'Gikundamvura', '306'),
('30608', 'Gitambi', '306'),
('30609', 'Kamembe', '306'),
('30610', 'Muganza', '306'),
('30611', 'Mururu', '306'),
('30612', 'Nkanka', '306'),
('30613', 'Nkombo', '306'),
('30614', 'Nkungu', '306'),
('30615', 'Nyakabuye', '306'),
('30616', 'Nyakarenzo', '306'),
('30617', 'Nzahaha', '306'),
('30618', 'Rwimbogo', '306'),
('30700', '-- Select Sectors --', '307'),
('30701', 'Bushekeri', '307'),
('30702', 'Bushenge', '307'),
('30703', 'Cyato', '307'),
('30704', 'Gihombo', '307'),
('30705', 'Kagano', '307'),
('30706', 'Kanjongo', '307'),
('30707', 'Karambi', '307'),
('30708', 'Karengera', '307'),
('30709', 'Kirimbi', '307'),
('30710', 'Macuba', '307'),
('30711', 'Mahembe', '307'),
('30712', 'Nyabitekeri', '307'),
('30713', 'Rangiro', '307'),
('30714', 'Ruharambuga', '307'),
('30715', 'Shangi', '307'),
('40100', '-- Select Sectors --', '401'),
('40101', 'BASE', '401'),
('40102', 'BUREGA', '401'),
('40103', 'BUSHOKI', '401'),
('40104', 'BUYOGA', '401'),
('40105', 'CYINZUZI', '401'),
('40106', 'CYUNGO', '401'),
('40107', 'KINIHIRA', '401'),
('40108', 'KISARO', '401'),
('40109', 'MASORO', '401'),
('40110', 'MBOGO', '401'),
('40111', 'MURAMBI', '401'),
('40112', 'NGOMA', '401'),
('40113', 'NTARABANA', '401'),
('40114', 'RUKOZO', '401'),
('40115', 'RUSIGA', '401'),
('40116', 'SHYORONGI', '401'),
('40117', 'TUMBA', '401'),
('40200', '-- Select Sectors --', '402'),
('40201', 'Busengo ', '402'),
('40202', 'Coko ', '402'),
('40203', 'Cyabingo ', '402'),
('40204', 'Gakenke ', '402'),
('40205', 'Gashenyi ', '402'),
('40206', 'Janja ', '402'),
('40207', 'Kamubuga ', '402'),
('40208', 'Karambo ', '402'),
('40209', 'Kivuruga ', '402'),
('40210', 'Mataba ', '402'),
('40211', 'Minazi ', '402'),
('40212', 'Mugunga ', '402'),
('40213', 'Muhondo ', '402'),
('40214', 'Muyongwe ', '402'),
('40215', 'Muzo ', '402'),
('40216', 'Nemba ', '402'),
('40217', 'Ruli ', '402'),
('40218', 'Rusasa ', '402'),
('40219', 'Rushashi ', '402'),
('40300', '-- Select Sectors --', '403'),
('40301', 'Busogo', '403'),
('40302', 'Cyuve', '403'),
('40303', 'Gacaca', '403'),
('40304', 'Gashaki', '403'),
('40305', 'Gataraga', '403'),
('40306', 'Kimonyi', '403'),
('40307', 'Kinigi', '403'),
('40308', 'Muhoza', '403'),
('40309', 'Muko', '403'),
('40310', 'Musanze', '403'),
('40311', 'Nkotsi', '403'),
('40312', 'Nyange', '403'),
('40313', 'Remera', '403'),
('40314', 'Rwaza', '403'),
('40315', 'Shingiro', '403'),
('40400', '-- Select Sectors --', '404'),
('40401', 'Bungwe', '404'),
('40402', 'Butaro', '404'),
('40403', 'Cyanika', '404'),
('40404', 'Cyeru', '404'),
('40405', 'Gahunga', '404'),
('40406', 'Gatebe', '404'),
('40407', 'Gitovu', '404'),
('40408', 'Kagogo', '404'),
('40409', 'Kinoni', '404'),
('40410', 'Kinyababa', '404'),
('40411', 'Kivuye', '404'),
('40412', 'Nemba', '404'),
('40413', 'Rugarama', '404'),
('40414', 'Rugengabari', '404'),
('40415', 'Ruhunde', '404'),
('40416', 'Rusarabuye', '404'),
('40417', 'Rwerere', '404'),
('40500', '-- Select Sectors --', '405'),
('40501', 'Bukure', '405'),
('40502', 'Bwisige', '405'),
('40503', 'Byumba', '405'),
('40504', 'Cyumba', '405'),
('40505', 'Giti', '405'),
('40506', 'Kageyo', '405'),
('40507', 'Kaniga', '405'),
('40508', 'Manyagiro', '405'),
('40509', 'Miyove', '405'),
('40510', 'Mukarange', '405'),
('40511', 'Muko', '405'),
('40512', 'Mutete', '405'),
('40513', 'Nyamiyaga', '405'),
('40514', 'Nyankenke', '405'),
('40515', 'Rubaya', '405'),
('40516', 'Rukomo', '405'),
('40517', 'Rushaki', '405'),
('40518', 'Rutare', '405'),
('40519', 'Ruvune', '405'),
('40520', 'Rwamiko', '405'),
('40521', 'Shangasha', '405'),
('50100', '-- Select Sectors --', '501'),
('50101', 'Fumbwe', '501'),
('50102', 'Gahengeri', '501'),
('50103', 'Gishali', '501'),
('50104', 'Karenge', '501'),
('50105', 'Kigabiro', '501'),
('50106', 'Muhazi', '501'),
('50107', 'Munyaga', '501'),
('50108', 'Munyiginya', '501'),
('50109', 'Musha', '501'),
('50110', 'Muyumbu', '501'),
('50111', 'Mwulire', '501'),
('50112', 'Nyakaliro', '501'),
('50113', 'Nzige', '501'),
('50114', 'Rubona', '501'),
('50200', '-- Select Sectors --', '502'),
('50201', 'GATUNDA', '502'),
('50202', 'KARAMA', '502'),
('50203', 'KARANGAZI', '502'),
('50204', 'KATABAGEMU', '502'),
('50205', 'KIYOMBE', '502'),
('50206', 'MATIMBA', '502'),
('50207', 'MIMURI', '502'),
('50208', 'MUKAMA', '502'),
('50209', 'MUSHERI', '502'),
('50210', 'NYAGATARE', '502'),
('50211', 'RUKOMO', '502'),
('50212', 'RWEMPASHA', '502'),
('50213', 'RWIMIYAGA', '502'),
('50214', 'TABAGWE', '502'),
('50300', '-- Select Sectors --', '503'),
('50301', 'Gasange', '503'),
('50302', 'Gatsibo', '503'),
('50303', 'Gitoki', '503'),
('50304', 'Kabarore', '503'),
('50305', 'Kageyo', '503'),
('50306', 'Kiramuruzi', '503'),
('50307', 'Kiziguro', '503'),
('50308', 'Muhura', '503'),
('50309', 'Murambi', '503'),
('50310', 'Ngarama', '503'),
('50311', 'Nyagihanga', '503'),
('50312', 'Remera', '503'),
('50313', 'Rugarama', '503'),
('50314', 'Rwimbogo', '503'),
('50400', '-- Select Sectors --', '504'),
('50401', 'Gahini', '504'),
('50402', 'Kabare', '504'),
('50403', 'Kabarondo', '504'),
('50404', 'Mukarange', '504'),
('50405', 'Murama', '504'),
('50406', 'Murundi', '504'),
('50407', 'Mwiri', '504'),
('50408', 'Ndego', '504'),
('50409', 'Nyamirama', '504'),
('50410', 'Rukara', '504'),
('50411', 'Ruramira', '504'),
('50412', 'Rwinkwavu', '504'),
('50500', '-- Select Sectors --', '505'),
('50501', 'Gahara', '505'),
('50502', 'Gatore', '505'),
('50503', 'Kigarama', '505'),
('50504', 'Kigina', '505'),
('50505', 'Kirehe', '505'),
('50506', 'Mahama', '505'),
('50507', 'Mpanga', '505'),
('50508', 'Musaza', '505'),
('50509', 'Mushikiri', '505'),
('50510', 'Nasho', '505'),
('50511', 'Nyamugari', '505'),
('50512', 'Nyarubuye', '505'),
('50600', '-- Select Sectors --', '506'),
('50601', 'Gashanda', '506'),
('50602', 'Jarama', '506'),
('50603', 'Karembo', '506'),
('50604', 'Kazo', '506'),
('50605', 'Kibungo', '506'),
('50606', 'Mugesera', '506'),
('50607', 'Murama', '506'),
('50608', 'Mutenderi', '506'),
('50609', 'Remera', '506'),
('50610', 'Rukira', '506'),
('50611', 'Rukumberi', '506'),
('50612', 'Rurenge', '506'),
('50613', 'Sake', '506'),
('50614', 'Zaza', '506'),
('50700', '-- Select Sectors --', '507'),
('50701', 'Gashora', '507'),
('50702', 'Juru', '507'),
('50703', 'Kamabuye', '507'),
('50704', 'Mareba', '507'),
('50705', 'Mayange', '507'),
('50706', 'Musenyi', '507'),
('50707', 'Mwogo', '507'),
('50708', 'Ngeruka', '507'),
('50709', 'Ntarama', '507'),
('50710', 'Nyamata', '507'),
('50711', 'Nyarugenge', '507'),
('50712', 'Ririma', '507'),
('50713', 'Ruhuha', '507'),
('50714', 'Rweru', '507'),
('50715', 'Shyara', '507');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sports_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authors` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_sports` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id3` int(11) NOT NULL,
  `created_on3` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sports_id`, `title`, `authors`, `text`, `photo`, `other_photo`, `video`, `youtube`, `categories_sports`, `user_id3`, `created_on3`) VALUES
(2, 'umupira wagiye ari kimwe kimwe', 'fayzo', 'umupira wo mu rwanda neza cyane', '2019_121.jpg', '2019_762.jpg=2019_813.jpg', '', '', 'Football', 61, '2019-06-15 05:54:27'),
(3, 'apr yatinze igitego', 'fayzo', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.\r\n\r\nCurabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.\r\n\r\nEtiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.\r\n\r\nHeading\r\nVivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\r\n\r\nSub-heading\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019_7011-b.jpg', '2019_592017.jpg', '', '', 'Football', 61, '2019-06-15 06:44:59'),
(4, 'rayons sports ihaganye namukeba wayo', 'fayzo', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.\r\n\r\nCurabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.\r\n\r\nEtiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.\r\n\r\nHeading\r\nVivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\r\n\r\nSub-heading Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019_851486.jpg', '2019_19arto.jpg', '', '', 'Football', 61, '2019-06-15 06:48:02'),
(5, 'rutahizamu wikipe ya rayon spoirts', 'fayzo', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.\r\n\r\nCurabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.\r\nEtiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur\r\nHeadin Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\r\n\r\nSub-heading Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019_98eric.jpg', '2019_732207.jpg', '', '', 'Football', 61, '2019-06-15 06:49:44'),
(6, 'apr iriguhagana na mukura', 'fayzo', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.\r\n\r\nCurabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.\r\n\r\nEtiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.\r\n\r\nHeading\r\nVivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\r\n\r\nSub-heading\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019_132017.jpg', '2019_25arto.jpg', '', '', 'Football', 61, '2019-06-15 06:51:03'),
(7, 'shema yavuze kwi cyipe ye', 'fayzo', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.\r\n\r\nCurabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.\r\n\r\nEtiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.\r\n\r\nHeading\r\nVivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\r\n\r\nSub-heading\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019_77diar.jpg', '2019_91gabr.jpg', '', '', 'Football', 61, '2019-06-15 06:53:21'),
(8, 'umutozam wa equipe yigihugu', 'harry kane', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.\r\n\r\nCurabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.\r\n\r\nEtiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.\r\n\r\nHeading\r\nVivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\r\n\r\nSub-heading\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019_45imag.jpg', '2019_56capt.jpg', '', '', 'Football', 61, '2019-06-15 06:55:57'),
(9, 'shema rutahizamu ntiyoroshye', 'fayzo', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.\r\n\r\nCurabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.\r\n\r\nEtiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.\r\n\r\nHeading\r\nVivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\r\n\r\nSub-heading\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019_45capt.jpg', '2019_78capt.jpg', '', '', 'Football', 61, '2019-06-15 06:57:07'),
(10, 'urwanda rwa tsinze kimwe', 'fayzo', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.\r\n\r\nCurabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.\r\n\r\nEtiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.\r\n\r\nHeading\r\nVivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\r\n\r\nSub-heading\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2019_55arto.jpg', '2019_78a-84.jpg', '', '', 'Football', 61, '2019-06-15 06:58:03'),
(11, 'guud', 'fa', 'nice', '2019_24capt.png', '2019_47driv.png', '', '', 'Football', 64, '2019-07-13 15:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'FinePix Pro2 3D Camera', '3DcAM01', 'product-images/camera.jpg', 1500.00),
(2, 'EXP Portable Hard Drive', 'USB02', 'product-images/external-hard-drive.jpg', 800.00),
(3, 'Luxury Ultra thin Wrist Watch', 'wristWear03', 'product-images/watch.jpg', 300.00),
(4, 'XP 1155 Intel Core Laptop', 'LPN45', 'product-images/laptop.jpg', 800.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member_rating`
--

CREATE TABLE `tbl_member_rating` (
  `id` int(11) NOT NULL,
  `tutorial_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `rating` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member_rating`
--

INSERT INTO `tbl_member_rating` (`id`, `tutorial_id`, `member_id`, `rating`) VALUES
(12, 1, 6, 'smile'),
(13, 2, 6, 'love'),
(14, 3, 6, 'love'),
(15, 1, 7, 'angry'),
(16, 2, 7, 'like'),
(17, 3, 7, 'like');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `customer_id`, `amount`, `name`, `address`, `city`, `state`, `zip`, `country`, `payment_type`, `order_status`, `order_at`) VALUES
(15, 2, 3900, 'fayzo', 'sd', 'd', 'stat', '32', 'z', 'PAYPAL', 'PENDING', '2019-06-24 17:35:40'),
(16, 2, 3900, 'fayzo', 'sd', 'd', 'stat', '32', 'z', 'PAYPAL', 'PENDING', '2019-06-24 17:35:50'),
(17, 2, 3900, 'fayzo', 'sd', 'd', 'stat', '32', 'z', 'PAYPAL', 'PENDING', '2019-06-24 17:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE `tbl_order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_price` double NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`id`, `order_id`, `product_id`, `item_price`, `quantity`) VALUES
(9, 5, 1, 1500, 1),
(10, 6, 1, 1500, 1),
(11, 7, 1, 1500, 1),
(12, 7, 3, 300, 1),
(13, 8, 3, 300, 1),
(14, 8, 1, 1500, 2),
(15, 8, 2, 800, 18),
(16, 9, 1, 1500, 1),
(17, 9, 2, 800, 1),
(18, 9, 3, 300, 1),
(19, 10, 1, 1500, 1),
(20, 10, 2, 800, 1),
(21, 10, 3, 300, 1),
(22, 11, 1, 1500, 1),
(23, 11, 2, 800, 1),
(24, 11, 3, 300, 1),
(25, 12, 1, 1500, 1),
(26, 12, 2, 800, 1),
(27, 12, 3, 300, 1),
(28, 13, 1, 1500, 1),
(29, 13, 2, 800, 1),
(30, 13, 3, 300, 1),
(31, 14, 2, 800, 1),
(32, 14, 3, 300, 3),
(33, 14, 1, 1500, 7),
(34, 15, 1, 1500, 1),
(35, 15, 2, 800, 3),
(36, 16, 1, 1500, 1),
(37, 16, 2, 800, 3),
(38, 17, 1, 1500, 1),
(39, 17, 2, 800, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_response` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, '3D Camera', '3DcAM01', 'product/camera.jpg', 1500.00),
(2, 'External Hard Drive', 'USB02', 'product/external-hard-drive.jpg', 800.00),
(3, 'Wrist Watch', 'wristWear03', 'product/watch.jpg', 300.00);

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE `trash` (
  `trash_id` int(11) NOT NULL,
  `cv_id` int(11) UNSIGNED NOT NULL,
  `firstname0` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename0` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname0` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email0` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address0` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadfilecv` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadfilecertificates` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addition_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id0` int(11) NOT NULL,
  `job_id0` int(11) NOT NULL,
  `business_id0` int(11) NOT NULL,
  `created_on0` datetime NOT NULL,
  `deadline0` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trash`
--

INSERT INTO `trash` (`trash_id`, `cv_id`, `firstname0`, `middlename0`, `lastname0`, `email0`, `address0`, `telephone`, `degree`, `field`, `uploadfilecv`, `uploadfilecertificates`, `addition_information`, `user_id0`, `job_id0`, `business_id0`, `created_on0`, `deadline0`) VALUES
(8, 11, 'c', 'd', 'd', 'd', 'sdfds', 'c', 'diploma', 'account', '2019_79fayz.jpg', '2019_56imag.jpg', 'c', 61, 3, 61, '2019-05-30 11:44:21', '0000-00-00 00:00:00'),
(9, 10, 'c', 'c', 'c', 'c@gmail.com', 'c', 'c', 'diploma', 'finace', '2019_43hear.jpg', '2019_20imag.jpg', 'ddc', 61, 3, 61, '2019-05-30 07:28:49', '0000-00-00 00:00:00'),
(10, 9, 'ronaldo', 'ronaldo', 'ronaldo', 'ronaldol@gmail.com', 'ronaldo', 'ronaldo', '', '', '2019_39gori.jpg=2019_55images.jpg', '2019_50hear.jpg', 'ronaldoronaldoronaldoronaldoronaldoronaldo', 61, 8, 61, '2019-05-30 05:36:05', '0000-00-00 00:00:00'),
(11, 8, 'm', 'm', 'm', 'm@gmail.com', 'm', '42424', '', '', '2019_74head.jpg=2019_70hear.jpg=2019_83hear.jpg', '2019_26ramz.png=2019_97ramz.png=2019_19rwanda.jpg', 'hgd', 61, 8, 61, '2019-05-28 14:38:13', '0000-00-00 00:00:00'),
(12, 10, 'c', 'c', 'c', 'c@gmail.com', 'c', 'c', 'diploma', 'finace', '2019_43hear.jpg', '2019_20imag.jpg', 'ddc', 61, 3, 61, '2019-05-30 07:28:49', '0000-00-00 00:00:00'),
(13, 10, 'c', 'c', 'c', 'c@gmail.com', 'c', 'c', 'diploma', 'finace', '2019_43hear.jpg', '2019_20imag.jpg', 'ddc', 61, 3, 61, '2019-05-30 07:28:49', '0000-00-00 00:00:00'),
(14, 10, 'c', 'c', 'c', 'c@gmail.com', 'c', 'c', 'diploma', 'finace', '2019_43hear.jpg', '2019_20imag.jpg', 'ddc', 61, 3, 61, '2019-05-30 07:28:49', '0000-00-00 00:00:00'),
(15, 10, 'c', 'c', 'c', 'c@gmail.com', 'c', 'c', 'diploma', 'finace', '2019_43hear.jpg', '2019_20imag.jpg', 'ddc', 61, 3, 61, '2019-05-30 07:28:49', '0000-00-00 00:00:00'),
(16, 10, 'c', 'c', 'c', 'c@gmail.com', 'c', 'c', 'diploma', 'finace', '2019_43hear.jpg', '2019_20imag.jpg', 'ddc', 61, 3, 61, '2019-05-30 07:28:49', '0000-00-00 00:00:00'),
(17, 10, 'c', 'c', 'c', 'c@gmail.com', 'c', 'c', 'diploma', 'finace', '2019_43hear.jpg', '2019_20imag.jpg', 'ddc', 61, 3, 61, '2019-05-30 07:28:49', '0000-00-00 00:00:00'),
(18, 10, 'c', 'c', 'c', 'c@gmail.com', 'c', 'c', 'diploma', 'finace', '2019_43hear.jpg', '2019_20imag.jpg', 'ddc', 61, 3, 61, '2019-05-30 07:28:49', '0000-00-00 00:00:00'),
(19, 7, 'x', 'x', 'x', 'xl@gmail.com', 'x', 'x', '', '', '2019_96acco.pdf', '2019_16book1.xlsx', 'x', 65, 3, 61, '2019-05-27 21:51:22', '0000-00-00 00:00:00'),
(20, 7, 'x', 'x', 'x', 'xl@gmail.com', 'x', 'x', '', '', '2019_96acco.pdf', '2019_16book1.xlsx', 'x', 65, 3, 61, '2019-05-27 21:51:22', '0000-00-00 00:00:00'),
(21, 7, 'x', 'x', 'x', 'xl@gmail.com', 'x', 'x', '', '', '2019_96acco.pdf', '2019_16book1.xlsx', 'x', 65, 3, 61, '2019-05-27 21:51:22', '0000-00-00 00:00:00'),
(22, 7, 'x', 'x', 'x', 'xl@gmail.com', 'x', 'x', '', '', '2019_96acco.pdf', '2019_16book1.xlsx', 'x', 65, 3, 61, '2019-05-27 21:51:22', '0000-00-00 00:00:00'),
(23, 7, 'x', 'x', 'x', 'xl@gmail.com', 'x', 'x', '', '', '2019_96acco.pdf', '2019_16book1.xlsx', 'x', 65, 3, 61, '2019-05-27 21:51:22', '0000-00-00 00:00:00'),
(24, 7, 'x', 'x', 'x', 'xl@gmail.com', 'x', 'x', '', '', '2019_96acco.pdf', '2019_16book1.xlsx', 'x', 65, 3, 61, '2019-05-27 21:51:22', '0000-00-00 00:00:00'),
(25, 7, 'x', 'x', 'x', 'xl@gmail.com', 'x', 'x', '', '', '2019_96acco.pdf', '2019_16book1.xlsx', 'x', 65, 3, 61, '2019-05-27 21:51:22', '0000-00-00 00:00:00'),
(26, 7, 'x', 'x', 'x', 'xl@gmail.com', 'x', 'x', '', '', '2019_96acco.pdf', '2019_16book1.xlsx', 'x', 65, 3, 61, '2019-05-27 21:51:22', '0000-00-00 00:00:00'),
(27, 2, 'fa', 'fa', 'fa', 'shemafaysal@gmail.com', 'sdfds', '3132', '', '', '2019_652018.xls=2019_622018.pdf=2019_43apa .docx', '2019_50appl.pdf=2019_53appl.pdf', 'fa', 61, 7, 61, '2019-05-27 13:41:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `trend_id` int(10) UNSIGNED NOT NULL,
  `hashtag` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutorial`
--

CREATE TABLE `tutorial` (
  `id` int(8) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutorial`
--

INSERT INTO `tutorial` (`id`, `title`, `description`) VALUES
(1, 'Favorite Star Rating with jQuery', '\0This tutorial is for doing favorite star rating using jQuery. It displays list of HTML stars by using li tags. These stars are highlighted by using CSS and jQuery based on the favorite rating selected by the user.'),
(2, 'PHP RSS Feed Read and List', '\0PHP\'s simplexml_load_file() function is used for reading data from xml file. Using this function, we can parse RSS feed to get item object array.'),
(3, 'jQuery AJAX Autocomplete Country Example', 'Autocomplete feature is used to provide auto suggestion for users while entering input. It suggests country names for the users based on the keyword they entered into the input field by using jQuery AJAX.');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `tweet_id` int(11) NOT NULL,
  `status` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tweetBy` int(11) NOT NULL,
  `retweet_id` int(11) NOT NULL,
  `retweet_by` int(11) NOT NULL,
  `tweet_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes_counts` int(11) NOT NULL,
  `retweet_counts` int(11) NOT NULL,
  `posted_on` datetime NOT NULL,
  `retweet_Msg` varchar(140) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`tweet_id`, `status`, `tweetBy`, `retweet_id`, `retweet_by`, `tweet_image`, `likes_counts`, `retweet_counts`, `posted_on`, `retweet_Msg`) VALUES
(334, 'amakuru @fayzo', 66, 0, 0, '', 0, 0, '2019-06-17 04:12:32', ''),
(343, 'https://stackoverflow.com/questions/31391113/php-preg-replace-youtube-links', 61, 340, 61, '', 0, 1, '2019-06-29 13:15:25', 'amakuru'),
(344, 'abana muri beza', 72, 0, 0, '2019_411.jpg', 0, 0, '2019-07-01 16:25:56', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chat` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `career` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_birth` date NOT NULL,
  `date_registry` date NOT NULL,
  `last_login` datetime NOT NULL,
  `counts_login` int(11) NOT NULL,
  `forgotUsernameCounts` int(11) NOT NULL,
  `forgotUsernameCountsTimesHeCreates` int(11) NOT NULL,
  `forgotUsernameCountsTimesHeCreatespassword` int(11) NOT NULL,
  `profile_img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_img_crop` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diploma` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skills` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hobbys` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `followers` int(11) NOT NULL,
  `following` int(11) NOT NULL,
  `approval` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_education` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_business` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_of_people` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `team` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `legal_structure` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_facilities` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_statement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unemplyoment` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_fields` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `username`, `email`, `password`, `gender`, `chat`, `career`, `country`, `date_birth`, `date_registry`, `last_login`, `counts_login`, `forgotUsernameCounts`, `forgotUsernameCountsTimesHeCreates`, `forgotUsernameCountsTimesHeCreatespassword`, `profile_img`, `profile_img_crop`, `cover_img`, `background`, `language`, `color`, `education`, `diploma`, `skills`, `location`, `hobbys`, `followers`, `following`, `approval`, `company_education`, `type_of_business`, `address`, `size_of_people`, `companyname`, `overview`, `history`, `team`, `legal_structure`, `location_facilities`, `mission_statement`, `website`, `unemplyoment`, `categories_fields`, `phone`) VALUES
(61, 'faysal', 'shema', 'fayzo', 'shemafaysal@gmail.com', 'fafa', 'Male', 'off', 'engineering', 'RW', '2019-05-01', '2019-05-01', '2019-07-26 04:24:12', 267, 0, 10, 10, '911f.jpg', '', '702caus.jpg', 'chair', '', 'rose', 'lycee', 'project', 'web', 'BR', 'styuding', 6, 3, 'on', 'Private', 'sale', 'sd', '250', 'rwanda', 'ikorana buhanga', '1994', '100100 team', 'mine', 'kigali', 'umwunga', 'mtn', 'yes', 'accountant', '03680482477'),
(64, 'ruzindana', 'eric', 'fayz', 'hemafaysal@gmail.com', 'fafa', 'Female', 'on', '', 'RW', '2019-05-02', '2019-05-02', '2019-07-19 08:25:01', 26, 0, 0, 0, '', '', '', 'chair', '', 'purple', '', '', '', '', '', 0, 1, 'on', '', '', '', '', '<b></b><b><h1>kfc</h1></b><b></b>', '<p>\n\n<i><b></b></i><b><i>ï»¿</i></b><i><b></b></i><i>Use your company description to provide detailed information about your company. Go into detail about the problems your business solves. Be specific, and list out the consumers, organization, or businesses your company plans to serve.\n</i><i></i>\n<br></p>', '<p><ul><li>\n\nUse your company description to provide detailed information about your company. Go into detail about the problems your business solves. Be specific, and list out the consumers, organization, or businesses your company plans to serve. Use your company description to provide detailed information about your company. Go into detail about the problems your business solves. Be specific, and list out the consumers, organization, or businesses your company plans to serve.&nbsp;</li><li>\n\nUse your company description to provide detailed information about your company. Go into detail about the problems your business solves. Be specific, and list out the consumers, organization, or businesses your company plans to serve.\n\n</li><li>\n\nUse your company description to provide detailed information about your company. Go into detail about the problems your business solves. Be specific, and list out the consumers, organization, or businesses your company plans to serve.\n\n</li></ul></p>', '<p><ul><li>\n\nUse your company description to provide detailed information about your company. Go into detail about the problems your business solves. Be specific, and list out the consumers, organization, or businesses your company plans to serve.\n\n\n\nUse your company description to provide detailed information about your company. Go into detail about the problems your business solves. Be specific, and list out the consumers, organization, or businesses your company plans to serve.\n\n\n\nUse your company description to provide detailed information about your company. Go into detail about the problems your business solves. Be specific, and list out the consumers, organization, or businesses your company plans to serve.\n\n</li></ul></p>', '<p>\n\nUse your company description to provide detailed information about your company. Go into detail about the problems your business solves. Be specific, and list out the consumers, organization, or businesses your company plans to serve.\n\n<br></p>', '<p>\n\nUse your company description to provide detailed information about your company. Go into detail about the problems your business solves. Be specific, and list out the consumers, organization, or businesses your company plans to serve.\n\n<br></p>', '<p>\n\nUse your company description to provide detailed information about your company. Go into detail about the problems your business solves. Be specific, and list out the consumers, organization, or businesses your company plans to serve.\n\n<br></p>', 'good', 'yes', 'accountant', '03680482477'),
(65, 'karisa', 'bosco', 'bosco', 'faysal@gmail.com', 'bosco', 'Male', '', '', 'RW', '2019-05-03', '2019-05-02', '2019-05-27 21:50:00', 8, 0, 0, 0, '', '', '', 'chair', '', 'black', '', '', '', '', '', 1, 2, 'off', '', '', '', '', 'LAMBORGIN', '0', '0', '0', '0', '', '0', '', 'yes', 'finance', '03680482477'),
(66, 'muhre', 'karim', 'karim', 'karim@gmail.com', 'karim', 'Male', 'on', '', 'RW', '1994-08-03', '2019-05-05', '2019-06-22 03:31:56', 57, 0, 0, 0, '710head.jpg', '', '8902.jpg', 'chair', '', 'rose', '', '', '', '', '', 3, 0, 'off', '', '', '', '', '', '0', '0', '0', '0', '', '0', '', 'yes', 'finance', '03680482477'),
(67, 'musema', 'musema', 'musema', 'musemafaysal@gmail.com', 'musema', 'Male', '', '', 'RW', '2019-05-06', '2019-05-06', '2019-05-21 14:53:30', 1, 0, 0, 0, '', '', '', '', '', 'black', '', '', '', '', '', 0, 2, 'off', '', '', '', '', '', '0', '0', '0', '0', '', '0', '', 'yes', 'management', '03680482477'),
(68, 'zidani', 'zidani', 'zidanii', 'zidani@gmail.com', 'zidani', 'Male', '', '', 'FR', '2019-05-06', '2019-05-22', '2019-05-30 11:54:50', 5, 0, 0, 0, '855fays.gif', '', '', '', '', 'black', '', '', '', '', '', 0, 0, 'on', '', '', '', '', '', '0', '0', '0', '0', '', '0', '', 'yes', 'management', '03680482477'),
(69, 'rihana', 'rihana', 'rihana', 'rihana@gmail.com', 'rihana', 'Female', 'on', '', 'AF', '1988-03-18', '2019-06-02', '2019-06-02 14:51:44', 1, 0, 0, 0, '', '', '', '', '', 'black', '', '', '', '', '', 0, 1, 'off', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', 'computer_enginnering', '03680482477'),
(70, 'patrick', 'patrick', 'patrick', 'patrick@gmail.com', 'patrick', 'Male', '', '', 'AS', '2019-06-04', '2019-06-02', '2019-06-02 14:47:57', 0, 0, 0, 0, '', '', '', '', '', 'black', '', '', '', '', '', 1, 0, 'off', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', 'computer_enginnering', '03680482477'),
(71, 'saleh', 'saleh', 'saleh', 'saleh@gmail.com', 'saleh', 'Male', 'on', '', 'AQ', '2019-05-31', '2019-06-02', '2019-06-02 14:50:22', 1, 0, 0, 0, '', '', '', '', '', 'black', '', '', '', '', '', 0, 1, 'off', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', 'mechanical_enginnering', '03680482477'),
(72, 'riri', 'aline', 'aline', 'aline@gmail.com', 'aline', 'Male', 'off', '', 'RW', '2019-07-01', '2019-07-01', '2019-07-02 08:52:01', 5, 0, 0, 0, '', '', '', '', '', 'black', '', '', '', '', '', 0, 1, 'off', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', 'mechanical_enginnering', '03680482477'),
(73, 'antonia', 'griezman', 'antonia', 'antonia@gmail.com', 'fafa', 'Male', 'off', '', 'FR', '2019-07-01', '2019-07-02', '2019-07-02 08:36:59', 2, 0, 0, 1, '', '', '', '', '', 'black', '', '', '', '', '', 0, 0, 'off', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', 'electrical_enginnering', '03680482477'),
(74, 'jojo', 'jojo', 'jojo', 'jojo@gmail.com', 'jojo', 'Male', 'off', '', 'RW', '2019-07-03', '2019-07-02', '2019-07-02 08:49:57', 1, 0, 0, 0, '', '', '', '', '', 'black', '', '', '', '', '', 0, 0, 'off', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', 'electrical_enginnering', '03680482477');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `apply_job`
--
ALTER TABLE `apply_job`
  ADD PRIMARY KEY (`cv_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `cells`
--
ALTER TABLE `cells`
  ADD UNIQUE KEY `codecell` (`codecell`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `crowfundraising`
--
ALTER TABLE `crowfundraising`
  ADD PRIMARY KEY (`fund_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`districtcode`),
  ADD UNIQUE KEY `districtcode` (`districtcode`);

--
-- Indexes for table `domestics`
--
ALTER TABLE `domestics`
  ADD PRIMARY KEY (`domestics_id`);

--
-- Indexes for table `employersdomestics`
--
ALTER TABLE `employersdomestics`
  ADD PRIMARY KEY (`employers_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`events_id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`follow_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `football`
--
ALTER TABLE `football`
  ADD PRIMARY KEY (`football_id`);

--
-- Indexes for table `fundraising`
--
ALTER TABLE `fundraising`
  ADD PRIMARY KEY (`fund_id`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`house_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_`
--
ALTER TABLE `products_`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`provincecode`),
  ADD UNIQUE KEY `provincecode` (`provincecode`);

--
-- Indexes for table `rwandahotel`
--
ALTER TABLE `rwandahotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `rwandalandscapes`
--
ALTER TABLE `rwandalandscapes`
  ADD PRIMARY KEY (`landscape_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD UNIQUE KEY `sectorcode` (`sectorcode`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sports_id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_member_rating`
--
ALTER TABLE `tbl_member_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tut_rate_id` (`tutorial_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
  ADD PRIMARY KEY (`trash_id`);

--
-- Indexes for table `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`trend_id`);

--
-- Indexes for table `tutorial`
--
ALTER TABLE `tutorial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`tweet_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `apply_job`
--
ALTER TABLE `apply_job`
  MODIFY `cv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crowfundraising`
--
ALTER TABLE `crowfundraising`
  MODIFY `fund_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `domestics`
--
ALTER TABLE `domestics`
  MODIFY `domestics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `employersdomestics`
--
ALTER TABLE `employersdomestics`
  MODIFY `employers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `events_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `follow_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `football`
--
ALTER TABLE `football`
  MODIFY `football_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fundraising`
--
ALTER TABLE `fundraising`
  MODIFY `fund_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `house_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products_`
--
ALTER TABLE `products_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rwandahotel`
--
ALTER TABLE `rwandahotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `rwandalandscapes`
--
ALTER TABLE `rwandalandscapes`
  MODIFY `landscape_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `sports_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_member_rating`
--
ALTER TABLE `tbl_member_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trash`
--
ALTER TABLE `trash`
  MODIFY `trash_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `trends`
--
ALTER TABLE `trends`
  MODIFY `trend_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutorial`
--
ALTER TABLE `tutorial`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `tweet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
