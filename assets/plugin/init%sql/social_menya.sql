-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2019 at 10:04 AM
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
(61, 'faysal', 'shema', 'fayzo', 'shemafaysal@gmail.com', 'fafa', 'Male', 'off', 'engineering', 'RW', '2019-05-01', '2019-05-01', '2019-07-23 14:41:14', 266, 0, 10, 10, '911f.jpg', '', '702caus.jpg', 'chair', '', 'rose', 'lycee', 'project', 'web', 'BR', 'styuding', 6, 3, 'on', 'Private', 'sale', 'sd', '250', 'rwanda', 'ikorana buhanga', '1994', '100100 team', 'mine', 'kigali', 'umwunga', 'mtn', 'yes', 'accountant', '03680482477'),
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
