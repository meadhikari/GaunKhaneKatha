-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2013 at 06:37 PM
-- Server version: 5.5.32-cll-lve
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gaunkhanekatha`
--

-- --------------------------------------------------------

--
-- Table structure for table `gkks`
--

CREATE TABLE IF NOT EXISTS `gkks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `gkks`
--

INSERT INTO `gkks` (`id`, `question`, `answer`, `date`, `name`, `email`, `status`) VALUES
(1, 'à¤¸à¥à¤°à¤¿à¤²à¥‹ à¤°à¥à¤– à¤®à¤¾ à¤à¤‰à¤Ÿà¤¾ à¤ªà¤¾à¤¤, à¤•à¥‡ à¤¹à¥‹?', 'à¤ªà¤¨à¥à¤¯à¥', '0000-00-00 00:00:00', 'à¤¸à¥à¤¶à¥€à¤² à¤—à¥à¤ªà¥à¤¤à¤¾', 'desushil@gmail.com', 1),
(2, 'à¤¹à¤¿à¤¡à¥à¤¦à¥ˆ à¤› à¤ªà¥ˆà¤²à¤¾ à¤®à¥‡à¤Ÿà¥à¤¦à¥ˆ à¤›, à¤•à¥‡ à¤¹à¥‹?', 'à¤¡à¥à¤‚à¤—à¤¾', '0000-00-00 00:00:00', 'à¤¬à¤°à¥à¤£ à¤ªà¥‹à¤–à¥à¤°à¥‡à¤²', 'emailofpramod@gmail.com', 1),
(3, 'à¤›à¤Ÿ à¤›à¤Ÿ à¤¬à¥à¤¢à¥€, à¤® à¤…à¤—à¤¾à¤¡à¥€ à¤¬à¤¢à¥à¤›à¥! à¤•à¥‡ à¤¹à¥‹?', 'à¤²à¥Œà¤°à¥€', '0000-00-00 00:00:00', 'à¤¬à¤°à¥à¤£ à¤ªà¥‹à¤–à¥à¤°à¥‡à¤²', 'emailofbarun@gmail.com', 1),
(4, 'à¤•à¥à¤¨ à¤•à¤¾à¤° à¤•à¥‹ à¤¬à¤¿à¤°à¥‡à¤• à¤²à¤¾à¤—à¥à¤¦à¥ˆà¤¨?', 'à¤–à¤•à¤¾à¤°', '0000-00-00 00:00:00', 'à¤¬à¤°à¥à¤£ à¤ªà¥‹à¤–à¥à¤°à¥‡à¤²', 'emailofbarun@gmail.com', 1),
(5, 'à¤¸à¥‡à¤¤à¤¾ à¤¸à¥‡à¤¤à¤¾ à¤›à¤¨à¥ à¤¦à¤¾à¤¨à¤¾ à¤…à¤¸à¤¿à¤¨à¤¾ à¤¹à¥‹à¤‡à¤¨, à¤‰à¤¡à¥à¤¦à¤¾ à¤‰à¤¡à¥à¤¦à¥ˆ à¤¹à¤°à¤¾à¤‰à¤› à¤…à¤¸à¤¿à¤¨à¤¾ à¤¹à¥‹à¤‡à¤¨ à¤•à¥‡ à¤¹à¥‹à¤²à¤¾?', 'à¤•à¤ªà¤¾à¤¸', '0000-00-00 00:00:00', 'à¤¬à¤°à¥à¤£ à¤ªà¥‹à¤–à¥à¤°à¥‡à¤²', 'emailofbarun@gmail.com', 1),
(6, 'à¤¸à¥à¤¨ à¤ªà¤¿à¤Ÿà¥à¤¦à¤¾ à¤¨à¤¿à¤¸à¥à¤•à¤¿à¤¯à¥‹ à¤šà¤¾à¤¦à¤¿, à¤šà¤¾à¤¦à¤¿ à¤ªà¤•à¤¾à¤‡ à¤®à¥à¤–à¤­à¤¿à¤¤à¥à¤° à¤–à¤¾à¤¦à¤¿ à¤•à¥‡ à¤¹à¥‹à¤²à¤¾?', 'à¤§à¤¾à¤¨', '0000-00-00 00:00:00', 'à¤¬à¤°à¥à¤£ à¤ªà¥‹à¤–à¥à¤°à¥‡à¤²', 'emailofbarun@gmail.com', 1),
(7, 'à¤ªà¥‹à¤–à¤°à¤¿ à¤¸à¥à¤•à¥à¤¯à¥‹ à¤¬à¤•à¥à¤²à¥à¤²à¥‹ à¤®à¤°à¥à¤¯à¥‹ à¤•à¥‡ à¤¹à¥‹?', 'à¤¦à¤¿à¤¯à¥‹', '0000-00-00 00:00:00', 'à¤¬à¤°à¥à¤£ à¤ªà¥‹à¤–à¥à¤°à¥‡à¤²', 'emailofbarun@gmail.com', 1),
(8, 'à¤œà¤¤à¤¿ à¤œà¤¤à¤¿ à¤®à¤¾à¤¸à¥ à¤–à¤¾à¤¨à¥à¤› à¤‰à¤¤à¤¿ à¤‰à¤¤à¤¿ à¤–à¤¿à¤°à¥Œà¤Ÿà¥‹, à¤•à¥‡ à¤¹à¥‹à¤²à¤¾?', 'à¤…à¤šà¤¾à¤¨à¥‹', '0000-00-00 00:00:00', 'à¤¬à¤°à¥à¤£ à¤ªà¥‹à¤–à¥à¤°à¥‡à¤²', 'emailofbarun@gmail.com', 1),
(9, 'à¤…à¤•à¥à¤·à¤° à¤› à¤•à¤¿à¤¤à¤¾à¤µ à¤¹à¥‹à¤‡à¤¨, à¤—à¥‹à¤²à¥‹ à¤› à¤‡à¤¨à¤¾à¤° à¤¹à¥‹à¤‡à¤¨ à¤¸à¤‚à¤¸à¤¾à¤° à¤¡à¥à¤²à¥à¤› à¤–à¥à¤Ÿà¥à¤Ÿà¤¾ à¤›à¥ˆà¤¨ à¤•à¥‡ à¤¹à¥‹?', 'à¤ªà¥ˆà¤¸à¤¾ (à¤¸à¤¿à¤•à¥à¤•à¤¾)', '0000-00-00 00:00:00', 'à¤¬à¤°à¥à¤£ à¤ªà¥‹à¤–à¥à¤°à¥‡à¤²', 'emailofbarun@gmail.com', 1),
(10, 'à¤†à¤–à¤¾ à¤¹à¥à¤¨à¥‡ à¤à¤•à¤¾à¤¤à¤¿à¤° à¤¹à¤¿à¤¡à¥à¤› à¤†à¤–à¤¾ à¤¨à¤¹à¥à¤¨à¥‡ à¤¦à¥à¤µà¥ˆà¤¤à¤¿à¤° à¤¹à¤¿à¤¡à¥à¤› à¤•à¥‡ à¤¹à¥‹?', 'à¤¸à¤°à¥à¤ªà¥‹', '0000-00-00 00:00:00', 'à¤¬à¤°à¥à¤£ à¤ªà¥‹à¤–à¥à¤°à¥‡à¤²', 'emailofbarun@gmail.com', 1),
(11, 'à¤®à¤¾à¤¯à¤¾ à¤—à¤°à¥‡ à¤šà¥à¤ªà¤šà¤¾à¤ª à¤à¤•à¥ˆ à¤ à¤¾à¤‰ à¤µà¤¸à¥à¤›, à¤²à¤¤à¥à¤¤à¤¾à¤²à¥‡ à¤¹à¤¾à¤¨à¥‡ à¤–à¥à¤°à¥ à¤–à¥à¤°à¥ à¤¹à¤¿à¤¡à¥à¤› à¤•à¥‡ à¤¹à¥‹?', 'à¤¸à¤¾à¤‡à¤•à¤²', '0000-00-00 00:00:00', 'à¤¬à¤°à¥à¤£ à¤ªà¥‹à¤–à¥à¤°à¥‡à¤²', 'emailofbarun@gmail.com', 1),
(12, 'à¤®à¤¾à¤¥à¤¿ à¤¹à¤²à¥‹ à¤šà¤²à¤¾à¤‰ à¤¤à¤² à¤‰à¤¸à¥à¤¤à¥ˆ à¤¬à¤¨à¤¾à¤‰à¤›à¥ à¤•à¥‡ à¤¹à¥‹?', 'à¤•à¤¾à¤°à¥à¤µà¤¨ à¤•à¤¾à¤—à¤œ', '0000-00-00 00:00:00', 'à¤¬à¤¿à¤¶à¤¾à¤² à¤ªà¥Œà¤¡à¥‡à¤²', 'emailofbishal@gmail.com', 1),
(13, 'à¤šà¤¾à¤° à¤šà¥‹à¤¸à¤¾à¤®à¤¾ à¤¥à¥à¤¨à¤¿à¤à¤•à¤¾ à¤›à¤¨à¥ à¤•à¤¸à¥à¤•à¤¾ à¤›à¥‹à¤°à¤¾ à¤›à¥‹à¤°à¤¿ à¤œà¤¤à¤¾ à¤¹à¥à¤¨à¥à¤›à¥ à¤‰à¤¤à¥ˆ à¤¹à¥‡à¤°à¥à¤›à¤¨ à¤•à¤¸à¥à¤Ÿ à¤®à¥‹à¤°à¤¾à¤®à¥‹à¤°à¥€ à¤•à¥‡ à¤¹à¥‹?', 'à¤¤à¤¸à¥à¤¬à¤¿à¤° / à¤«à¥‹à¤Ÿà¥‹', '0000-00-00 00:00:00', 'à¤¬à¤¿à¤¶à¤¾à¤² à¤ªà¥Œà¤¡à¥‡à¤²', 'emailofbishal@gmail.com', 1),
(14, 'à¤®à¥à¤– à¤¬à¤¾à¤Ÿ à¤œà¤¨à¥à¤®à¤¾à¤‰à¤¨à¥‡ à¤®à¥à¤– à¤¬à¤¾à¤Ÿà¥ˆ à¤¹à¥à¤°à¥à¤•à¤¾à¤‰à¤¨à¥‡ à¤•à¥‡ à¤¹à¥‹ à¤¤à¥‡à¤¸à¥à¤•à¥‹ à¤¨à¤¾à¤®?', 'à¤­à¥ˆà¤•à¤Ÿà¤°', '0000-00-00 00:00:00', 'à¤¬à¤¿à¤¶à¤¾à¤² à¤ªà¥Œà¤¡à¥‡à¤²', 'emailofbishal@gmail.com', 1),
(15, 'à¤¹à¥‡à¤°à¥à¤¦à¤¾ à¤¸à¤¾à¤°à¥ˆ à¤•à¤²à¤¿, à¤¨à¤¾à¤® à¤­à¤¨à¥‡ à¤°à¤¾à¤¤à¥€ à¤•à¥‡ à¤¹à¥‹à¤²à¤¾ à¤¯à¤¸à¤•à¥‹ à¤…à¤°à¥à¤¥?', 'à¤°à¤¾à¤¤à¤¿ à¤¯à¤¾à¤¨à¥€ à¤°à¤¾à¤¤', '0000-00-00 00:00:00', 'à¤¬à¤¿à¤¶à¤¾à¤² à¤ªà¥Œà¤¡à¥‡à¤²', 'emailofbishal@gmail.com', 1),
(16, 'à¤¬à¤¨ à¤¤à¤¿à¤° à¤œà¤¾à¤¦à¤¾ à¤˜à¤° à¤¤à¤¿à¤° à¤®à¥à¤–, à¤˜à¤°à¤¤à¤¿à¤° à¤œà¤¾à¤¦à¤¾ à¤¬à¤¨à¤¤à¤¿à¤° à¤®à¥à¤– à¤•à¥‡ à¤¹à¥‹?', 'à¤¬à¤¨à¥à¤šà¤°à¥‹', '0000-00-00 00:00:00', 'à¤¸à¥à¤¶à¥€à¤² à¤—à¥‚à¤ªà¥à¤¤à¤¾', 'desushil@gmail.com', 1),
(17, 'à¤—à¤œà¥à¤° à¤› à¤®à¤¨à¥à¤¦à¤¿à¤° à¤¹à¥ˆà¤¨, à¤ªà¤–à¥‡à¤Ÿà¤¾ à¤› à¤šà¤°à¤¾ à¤¹à¥ˆà¤¨, à¤•à¤°à¤‚à¤— à¤› à¤®à¤¾à¤¨à¥à¤›à¥‡ à¤¹à¥ˆà¤¨, à¤˜à¥à¤®à¥à¤°à¤¿à¤à¤•à¥‹ à¤ªà¥à¤›à¤° à¤› à¤•à¥à¤•à¥à¤° à¤¹à¥ˆà¤¨ à¤•à¥‡ à¤¹à¥‹ à¤¸à¤¾à¤¥à¥€ à¤¤à¥‡à¤¸à¥à¤•à¥‹ à¤¨à¤¾à¤®?', 'à¤›à¤¾à¤¤à¤¾', '0000-00-00 00:00:00', 'à¤¸à¥à¤¶à¥€à¤² à¤—à¥‚à¤ªà¥à¤¤à¤¾', 'desushil@gmail.com', 1),
(18, 'à¤•à¤¾à¤²à¤¾ à¤•à¤¾à¤²à¤¾ à¤ªà¤¿à¤°à¥à¤•à¤¾à¤®à¤¾à¤¥à¤¿ à¤œà¤¨à¥à¤¤à¥€ à¤¬à¤¸à¥‡à¤•à¤¾, à¤­à¥‹à¤²à¥€ à¤ªà¤²à¥à¤Ÿ à¤¹à¥‡à¤°à¥à¤¦à¤¾à¤–à¥‡à¤°à¥€ à¤‰à¤ à¥€ à¤—à¤à¤•à¤¾ à¤•à¥‡ à¤¹à¥‹?', 'à¤¤à¤¾à¤°à¤¾', '0000-00-00 00:00:00', 'à¤¸à¥à¤¶à¥€à¤² à¤—à¥‚à¤ªà¥à¤¤à¤¾', 'desushil@gmail.com', 1),
(19, 'à¤•à¤¾à¤²à¥‡ à¤šà¤°à¥‹ à¤¸à¥à¤•à¤¿à¤²à¥‹ à¤ªà¥à¤šà¥à¤›à¤° à¤•à¥‡ à¤¹à¥‹?', 'à¤¸à¤¿à¤¯à¥‹ à¤§à¤¾à¤—à¥‹', '0000-00-00 00:00:00', 'à¤¨à¥‡à¤ªà¤¾à¤²à¥€ à¤¸à¥à¤Ÿà¤¾à¤°', 'desushil@gmail.com', 1),
(20, 'à¤–à¤¾à¤¨ à¤œà¤¾à¤¦à¤¾ à¤¦à¥à¤¬à¥à¤²à¥‹ à¤–à¤¾à¤à¤° à¤…à¤‰à¤¦à¤¾ à¤®à¥‹à¤Ÿà¥‹ à¤•à¥‡ à¤¹à¥‹?', 'à¤ªà¥à¤°à¥€ à¤ªà¤•à¤¾à¤à¤•à¥‹', '0000-00-00 00:00:00', 'à¤¨à¥‡à¤ªà¤¾à¤²à¥€ à¤¸à¥à¤Ÿà¤¾à¤°', '', 1),
(21, 'à¤–à¤¾à¤¨ à¤¤ à¤–à¤¾à¤ à¤¤à¤° à¤šà¤¾à¤–à¥‡à¤•à¥‹ à¤›à¥ˆà¤¨ à¤•à¥‡ à¤¹à¥‹?', 'à¤•à¤¿à¤°à¤¿à¤¯à¤¾, à¤¬à¤¾à¤šà¤¾', '0000-00-00 00:00:00', 'à¤¨à¥‡à¤ªà¤¾à¤²à¥€ à¤¸à¥à¤Ÿà¤¾à¤°', '', 1),
(22, 'à¤–à¤¸à¥à¤°à¥‹ à¤­à¥à¤¯à¤•à¥à¤¤à¤¾à¤•à¥‹ à¤­à¥à¤¡à¤¿ à¤¨à¥ˆ à¤®à¤¿à¤ à¥‹, à¤•à¥‡ à¤¹à¥‹?', 'à¤•à¤Ÿà¤¹à¤°', '0000-00-00 00:00:00', 'à¤¨à¥‡à¤ªà¤¾à¤²à¥€ à¤¸à¥à¤Ÿà¤¾à¤°', '', 1),
(23, 'à¤šà¤¾à¤°à¥ˆ  à¤¤à¥€à¤° à¤®à¤°à¥à¤­à¥à¤®à¥€ à¤¬à¥€à¤š à¤®à¤¾ à¤•à¤¨à¥à¤šà¤¨ à¤ªà¤¾à¤¨à¥€, à¤¸à¥à¤­ à¤«à¤²  à¤­à¤¨à¥€  à¤–à¤¾à¤¨à¤›à¤¨à¥ à¤à¤¸à¥à¤²à¤¾à¤ˆ à¤®à¥€à¤ à¥‹ à¤®à¤¾à¤¨à¥€ à¤•à¥‡ à¤¹à¥‹à¤²à¤¾?', 'à¤¨à¤¾à¤°à¥€à¤µà¤²', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(24, 'à¤šà¤¾à¤° à¤–à¥à¤Ÿà¥à¤Ÿà¤¾ à¤›à¤¨à¥ à¤œà¤¨à¥à¤¤à¥ à¤¹à¥‹à¤‡à¤¨, à¤®à¤¾à¤¨à¥à¤›à¥‡ à¤¬à¤¸à¥à¤›à¤¨ à¤˜à¥‹à¤¡à¤¾ à¤¹à¥‹à¤‡à¤¨ à¤•à¥‡ à¤¹à¥‹à¤²à¤¾?', 'à¤®à¥‡à¤š', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(25, 'à¤¦à¥à¤‡ à¤­à¤¾à¤ˆ à¤•à¤¾ à¤¤à¥‡à¤°à¥à¤¸à¤¾ à¤•à¤°à¤‚à¤— à¤•à¥‡ à¤¹à¥‹à¤²à¤¾?', 'à¤­à¤°à¥à¤¯à¤¾à¤‚à¤—', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(26, 'à¤¦à¥à¤‡ à¤¦à¤¾à¤œà¥ à¤­à¤¾à¤ˆ à¤‰à¤¸à¥à¤¤à¥ˆ à¤‰à¤¸à¥à¤¤à¤¾, à¤à¤‰à¤Ÿà¤¾ à¤•à¥‹ à¤†à¤–à¤¾ à¤› à¤…à¤°à¥à¤•à¤¾ à¤•à¥‹ à¤›à¥ˆà¤¨ à¤•à¥‡ à¤¹à¥‹à¤²à¤¾?', 'à¤¸à¥€à¤¯à¥‹ à¤° à¤†à¤²à¥à¤ªà¥€à¤¨', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(27, 'à¤¸à¤¾à¤¨à¥‹ à¤®à¤¾ à¤§à¥‹à¤¤à¥€  à¤²à¤—à¤¾à¤‰à¤¨à¥‡  à¤ à¥à¤²à¥‹ à¤­à¤ à¤ªà¤›à¥€ à¤«à¥à¤•à¤¾à¤²à¥à¤¦à¥ˆ à¤œà¤¾à¤¨à¥€ à¤•à¥‡ à¤¹à¥‹à¤²à¤¾?', 'à¤¬à¤¾à¤à¤¸ à¤•à¥‹ à¤¤à¤¾à¤®à¤¾', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(28, 'à¤ªà¤¾à¤š à¤­à¤¾à¤ˆ à¤•à¥‹ à¤à¤‰à¤Ÿà¥ˆ à¤—à¥à¤«à¤¾, à¤—à¥à¤«à¤¾ à¤­à¤¿à¤¤à¥à¤° à¤à¤‰à¤Ÿà¥ˆ à¤•à¥‹à¤ à¤¾ à¤•à¥‡ à¤¹à¥‹à¤²à¤¾?', 'à¤œà¥à¤¤à¥à¤¤à¤¾', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(29, 'à¤•à¥‡ à¤¹à¥‹à¤²à¤¾ à¤¯à¤¸à¥à¤¤à¥‹ à¤†à¤®à¤¾ à¤®à¤¾à¤¥à¤¿ à¤›à¥‹à¤°à¥€ à¤¨à¤¾à¤šà¥à¤¨à¥‡?', 'à¤²à¥‹à¤¹à¥‹à¤°à¥‹ à¤¸à¤¿à¤²à¥Œà¤Ÿà¥‹', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(30, 'à¤œà¤¤à¥€ à¤¹à¤¿à¤¡à¥à¤› à¤‰à¤¤à¤¿ à¤§à¥‹à¤¤à¥€ à¤¸à¥à¤•à¤¾à¤‰à¤› à¤•à¥‡ à¤¹à¥‹?', 'à¤šà¤¿à¤ªà¥à¤²à¥‡à¤•à¤¿à¤°à¤¾ à¤¹à¥‡à¤¡à¥‡à¤•à¥‹', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(31, 'à¤®à¤²à¤¾à¤‡ à¤•à¤¾à¤Ÿà¥‡ à¤¦à¥à¤–à¥à¤›, à¤¤à¤²à¤¾à¤‡ à¤•à¤¾à¤Ÿà¥‡ à¤¦à¥à¤–à¥à¤¦à¥ˆà¤¨ à¤•à¥‡ à¤¹à¥‹?', 'à¤”à¤²à¤¾ à¤° à¤¨à¤‚à¤™à¥', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(32, 'à¤à¥à¤¤à¥à¤°à¥€ à¤¬à¥à¤¢à¥€ à¤šà¥à¤²à¤¾ à¤šà¥à¤²à¤¾ à¤¨à¤¾à¤šà¥à¤› à¤•à¥‡ à¤¹à¥‹à¤²à¤¾ à¤¯à¤¸à¤•à¥‹ à¤‰à¤¤à¥à¤¤à¤°?', 'à¤ªà¥‹à¤¤à¥‹ (à¤²à¤¿à¤ªà¥à¤¨à¥‡ à¤•à¥à¤°à¤¾)', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(33, 'à¤¬à¥‡à¤‰à¤²à¤¾ à¤¨ à¤¬à¥‡à¤‰à¤²à¥€, à¤˜à¤°à¤­à¤°à¥€ à¤œà¤¨à¥à¤¤à¥€! à¤•à¥‡ à¤¹à¥‹?', 'à¤•à¤®à¤¿à¤²à¤¾', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(34, 'à¤­à¤¾à¤‡ à¤¬à¥‹à¤²à¥à¤› à¤¦à¤¾à¤‡ à¤¬à¥‡à¤²à¥à¤¦à¥ˆà¤¨ à¤•à¥‡ à¤¹à¥‹?', 'à¤˜à¤¨à¥à¤Ÿà¤¾à¤˜à¤° à¤° à¤§à¤°à¤¹à¤°à¤¾', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(35, 'à¤­à¥ˆà¤¸à¥€ à¤¬à¤¸à¤¿à¤°à¤¹à¤¨à¥à¤› à¤¦à¤¾à¤®à¥à¤²à¥‹ à¤šà¤°à¥à¤¨ à¤œà¤¨à¤¨à¥à¤› à¤•à¥‡ à¤¹à¥‹?', 'à¤«à¤°à¥à¤«à¥€', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(36, 'à¤­à¤¿à¤¤à¥à¤° à¤–à¤¸à¥€ à¤¬à¤¾à¤¹à¤¿à¤° à¤¦à¤¾à¤®à¥à¤²à¥‹ à¤•à¥‡ à¤¹à¥‹?', 'à¤¤à¤°à¥à¤²', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1),
(37, 'à¤® à¤®à¤¾à¤¥à¥€ à¤¹à¤²à¥‹ à¤šà¤²à¤¾à¤‰, à¤¤à¤² à¤‰à¤¸à¥à¤¤à¥ˆ à¤¬à¤¨à¤¾à¤‰à¤›à¥ à¤•à¥‡ à¤¹à¥‹?', 'à¤•à¤¾à¤°à¥à¤µà¤¨ à¤ªà¥‡à¤ªà¤°à¤®à¤¾ à¤›à¤¾à¤ªà¥‡à¤•à¥‹', '0000-00-00 00:00:00', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 'à¤¸à¤‚à¤šà¤¾à¤²à¤•', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
