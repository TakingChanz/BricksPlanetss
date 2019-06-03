-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2018 at 12:13 AM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tetrimus`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminLogs`
--

CREATE TABLE `adminLogs` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `log` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminLogs`
--

INSERT INTO `adminLogs` (`id`, `username`, `log`, `time`) VALUES
(1, 'byte312', 'Granted Diamond to 3', '1525311817'),
(2, 'byte312', 'Granted 25 tokens and 25 coins to 3', '1525311984'),
(3, 'byte312', 'Granted  tokens and 25 coins to 3', '1525311998');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `text` varchar(255) NOT NULL,
  `text2` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `banned_user` varchar(100) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `ban_time` int(11) NOT NULL,
  `banned_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bans`
--

INSERT INTO `bans` (`id`, `banned_user`, `reason`, `ban_time`, `banned_by`) VALUES
(1, '107', '1 week ban for spamming in forums. Your replies and threads will also be deleted.', 1525746767, '4'),
(2, '188', 'Banned 1 week for spam.', 1525746767, '4'),
(3, '3', 'LoL', 0, '1'),
(6, '190', 'Testing! -Byte.', 1525150375, '3'),
(5, '3', 'too kewl', 1540873498, '4'),
(7, '154', 'pula', 1525199296, '68'),
(8, '154', 'pula', 1525199301, '68'),
(9, '154', 'pula', 1525199308, '68'),
(10, '200', 'Do not impersonate and cause trouble.', 1525815382, '64'),
(11, '200', 'Do not impersonate and cause trouble.', 1525815389, '64'),
(12, '207', 'Test', 1525211466, '64'),
(13, '208', ':Warning: Spam and being rude. 1 Minute.', 1525211694, '64'),
(14, '209', 'Do not make rude names.', 1525298768, '64'),
(15, '209', 'Do not make rude names.', 1525298773, '64'),
(16, '83', 'test', 1525213023, '2'),
(17, '42', 'Bad username and status', 1527632430, '2'),
(18, '42', 'Bad username and status', 1527632442, '2'),
(19, '237', 'testing', 1525302307, '65'),
(20, '159', 'my alt', 1525302432, '65'),
(21, '189', 'Do not spam on forums. Read the rules!', 1525428590, '64');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(255) NOT NULL,
  `title` varchar(1337) NOT NULL,
  `preview` varchar(100) NOT NULL DEFAULT 'No preview available.',
  `topic` varchar(1337) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `creator` varchar(1337) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `preview`, `topic`, `date`, `creator`) VALUES
(1, 'Test', 'Don\'t delete the blog again Blank.', 'EXTRATEXTEXTRATEXTEXTRATEXTEXTRATEXTEXTRATEXTEXTRATEXTEXTRATEXTEXTRATEXT', NULL, 'byte312'),
(2, 'Test2', 'No preview available.', 'aaaaaa', NULL, 'byte312'),
(3, 'daaaa', 'No preview available.', 'a', '2018-05-01 05:34:40', 'a'),
(4, 'a', 'No preview available.', 'a', '2018-05-01 05:34:47', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(255) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `chattext` text COLLATE utf8_unicode_ci NOT NULL,
  `chattime` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clubComments`
--

CREATE TABLE `clubComments` (
  `id` int(255) NOT NULL,
  `username` varchar(25) NOT NULL,
  `userID` int(255) NOT NULL,
  `groupID` int(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(11) NOT NULL,
  `creator_name` varchar(100) NOT NULL,
  `club_name` varchar(233) NOT NULL,
  `club_members` int(11) NOT NULL DEFAULT '0',
  `club_description` varchar(130) NOT NULL,
  `club_icon` varchar(130) NOT NULL DEFAULT 'pending.png',
  `approved` int(11) NOT NULL DEFAULT '0',
  `role1` varchar(110) NOT NULL,
  `role2` varchar(110) NOT NULL,
  `role3` varchar(110) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `creator_name`, `club_name`, `club_members`, `club_description`, `club_icon`, `approved`, `role1`, `role2`, `role3`) VALUES
(1, 'Tetrimus', 'Tetrimus', 51, 'Join if you support Tetrimus!', 'pending.png', 1, 'Member', 'Admin', 'Tetrimus');

-- --------------------------------------------------------

--
-- Table structure for table `club_members`
--

CREATE TABLE `club_members` (
  `id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(110) NOT NULL DEFAULT 'Member'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club_members`
--

INSERT INTO `club_members` (`id`, `club_id`, `user_id`, `role`) VALUES
(2, 1, 109, 'Members'),
(3, 1, 3, 'Members'),
(1, 1, 1, 'Tetrimus'),
(4, 1, 85, 'Members'),
(21, 1, 13, 'Members'),
(6, 1, 107, 'Members'),
(7, 1, 42, 'Members'),
(8, 1, 111, 'Members'),
(9, 1, 10, 'Members'),
(10, 1, 9, 'Members'),
(11, 1, 112, 'Members'),
(12, 1, 50, 'Members'),
(13, 1, 17, 'Members'),
(14, 1, 53, 'Members'),
(15, 1, 71, 'Members'),
(16, 1, 130, 'Members'),
(17, 1, 64, 'Members'),
(18, 1, 124, 'Members'),
(19, 1, 2, 'Members'),
(20, 1, 100, 'Members'),
(22, 1, 7, 'Members'),
(23, 1, 30, 'Members'),
(24, 1, 20, 'Members'),
(25, 1, 51, 'Members'),
(26, 1, 150, 'Members'),
(27, 1, 37, 'Members'),
(28, 1, 142, 'Members'),
(29, 1, 153, 'Members'),
(30, 1, 5, 'Members'),
(31, 1, 22, 'Members'),
(32, 1, 159, 'Members'),
(33, 1, 56, 'Members'),
(34, 1, 133, 'Members'),
(35, 1, 94, 'Members'),
(36, 1, 39, 'Members'),
(37, 1, 105, 'Members'),
(38, 1, 16, 'Members'),
(39, 1, 198, 'Members'),
(40, 1, 68, 'Members'),
(41, 1, 140, 'Members'),
(42, 1, 211, 'Members'),
(43, 1, 90, 'Members'),
(44, 1, 174, 'Members'),
(45, 1, 221, 'Members'),
(46, 1, 139, 'Members'),
(47, 1, 195, 'Members'),
(48, 1, 137, 'Members'),
(49, 1, 216, 'Members'),
(50, 1, 237, 'Members'),
(51, 1, 171, 'Members');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'None',
  `item_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'Hat',
  `rare` int(11) NOT NULL DEFAULT '0',
  `serialnum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `user_id`, `name`, `item_id`, `type`, `rare`, `serialnum`) VALUES
(1, 4, 'Black Fedora', 1, 'Hat', 0, 1),
(2, 13, 'Black Fedora', 1, 'Hat', 0, 0),
(3, 112, 'Black Fedora', 1, 'Hat', 0, 0),
(4, 10, 'Black Fedora', 1, 'Hat', 0, 0),
(5, 31, 'Black Fedora', 1, 'Hat', 0, 0),
(6, 9, 'Black Fedora', 1, 'Hat', 0, 0),
(7, 3, 'Black Fedora', 1, 'Hat', 0, 0),
(8, 8, 'Black Fedora', 1, 'Hat', 0, 0),
(9, 109, 'Black Fedora', 1, 'Hat', 0, 0),
(10, 50, 'Black Fedora', 1, 'Hat', 0, 0),
(11, 107, 'Black Fedora', 1, 'Hat', 0, 0),
(12, 116, 'Black Fedora', 1, 'Hat', 0, 0),
(13, 57, 'Black Fedora', 1, 'Hat', 0, 0),
(14, 117, 'Black Fedora', 1, 'Hat', 0, 0),
(15, 42, 'Black Fedora', 1, 'Hat', 0, 0),
(16, 17, 'Black Fedora', 1, 'Hat', 0, 0),
(17, 31, 'Pot Head', 2, 'Hat', 0, 0),
(18, 4, 'Pot Head', 2, 'Hat', 0, 0),
(19, 17, 'Pot Head', 2, 'Hat', 0, 0),
(20, 10, 'Pot Head', 2, 'Hat', 0, 0),
(21, 112, 'Pot Head', 2, 'Hat', 0, 0),
(22, 3, 'Pot Head', 2, 'Hat', 0, 0),
(23, 9, 'Pot Head', 2, 'Hat', 0, 0),
(24, 107, 'Pot Head', 2, 'Hat', 0, 0),
(25, 8, 'Pot Head', 2, 'Hat', 0, 0),
(26, 50, 'Pot Head', 2, 'Hat', 0, 0),
(27, 124, 'Black Fedora', 1, 'Hat', 0, 0),
(28, 94, 'Black Fedora', 1, 'Hat', 0, 0),
(29, 94, 'Pot Head', 2, 'Hat', 0, 0),
(30, 124, 'Pot Head', 2, 'Hat', 0, 0),
(31, 71, 'Black Fedora', 1, 'Hat', 0, 0),
(32, 71, 'Pot Head', 2, 'Hat', 0, 0),
(33, 15, 'Pot Head', 2, 'Hat', 0, 0),
(34, 15, 'Black Fedora', 1, 'Hat', 0, 0),
(35, 53, 'Black Fedora', 1, 'Hat', 0, 0),
(36, 53, 'Pot Head', 2, 'Hat', 0, 0),
(37, 57, 'Pot Head', 2, 'Hat', 0, 0),
(38, 75, 'Black Fedora', 1, 'Hat', 0, 0),
(39, 75, 'Pot Head', 2, 'Hat', 0, 0),
(40, 129, 'Black Fedora', 1, 'Hat', 0, 0),
(41, 130, 'Black Fedora', 1, 'Hat', 0, 0),
(42, 131, 'Black Fedora', 1, 'Hat', 0, 0),
(43, 131, 'Pot Head', 2, 'Hat', 0, 0),
(44, 132, 'Black Fedora', 1, 'Hat', 0, 0),
(45, 133, 'Black Fedora', 1, 'Hat', 0, 0),
(46, 133, 'Pot Head', 2, 'Hat', 0, 0),
(47, 64, 'Black Fedora', 1, 'Hat', 0, 0),
(48, 64, 'Pot Head', 2, 'Hat', 0, 0),
(49, 134, 'Black Fedora', 1, 'Hat', 0, 0),
(50, 134, 'Pot Head', 2, 'Hat', 0, 0),
(51, 2, 'Black Fedora', 1, 'Hat', 0, 0),
(52, 90, 'Black Fedora', 1, 'Hat', 0, 0),
(53, 90, 'Pot Head', 2, 'Hat', 0, 0),
(54, 100, 'Black Fedora', 1, 'Hat', 0, 0),
(55, 100, 'Pot Head', 2, 'Hat', 0, 0),
(56, 135, 'Black Fedora', 1, 'Hat', 0, 0),
(57, 65, 'Black Fedora', 1, 'Hat', 0, 0),
(58, 65, 'Pot Head', 2, 'Hat', 0, 0),
(59, 137, 'Black Fedora', 1, 'Hat', 0, 0),
(60, 137, 'Pot Head', 2, 'Hat', 0, 0),
(61, 85, 'Black Fedora', 1, 'Hat', 0, 0),
(62, 13, 'Pot Head', 2, 'Hat', 0, 0),
(63, 7, 'Black Fedora', 1, 'Hat', 0, 0),
(64, 35, 'Black Fedora', 1, 'Hat', 0, 0),
(65, 16, 'Black Fedora', 1, 'Hat', 0, 0),
(66, 7, 'Pot Head', 2, 'Hat', 0, 0),
(67, 16, 'Pot Head', 2, 'Hat', 0, 0),
(68, 68, 'Black Fedora', 1, 'Hat', 0, 0),
(69, 68, 'Pot Head', 2, 'Hat', 0, 0),
(70, 56, 'Pot Head', 2, 'Hat', 0, 0),
(71, 56, 'Black Fedora', 1, 'Hat', 0, 0),
(72, 30, 'Pot Head', 2, 'Hat', 0, 0),
(73, 30, 'Black Fedora', 1, 'Hat', 0, 0),
(74, 60, 'Black Fedora', 1, 'Hat', 0, 0),
(75, 20, 'Black Fedora', 1, 'Hat', 0, 0),
(76, 40, 'Pot Head', 2, 'Hat', 0, 0),
(77, 40, 'Black Fedora', 1, 'Hat', 0, 0),
(78, 139, 'Pot Head', 2, 'Hat', 0, 0),
(79, 140, 'Pot Head', 2, 'Hat', 0, 0),
(80, 140, 'Black Fedora', 1, 'Hat', 0, 0),
(81, 142, 'Black Fedora', 1, 'Hat', 0, 0),
(82, 51, 'Black Fedora', 1, 'Hat', 0, 0),
(83, 51, 'Pot Head', 2, 'Hat', 0, 0),
(84, 5, 'Black Fedora', 1, 'Hat', 0, 0),
(85, 143, 'Pot Head', 2, 'Hat', 0, 0),
(86, 143, 'Black Fedora', 1, 'Hat', 0, 0),
(87, 147, 'Pot Head', 2, 'Hat', 0, 0),
(88, 147, 'Black Fedora', 1, 'Hat', 0, 0),
(89, 148, 'Pot Head', 2, 'Hat', 0, 0),
(90, 148, 'Black Fedora', 1, 'Hat', 0, 0),
(91, 149, 'Black Fedora', 1, 'Hat', 0, 0),
(92, 150, 'Black Fedora', 1, 'Hat', 0, 0),
(93, 45, 'Pot Head', 2, 'Hat', 0, 0),
(94, 45, 'Black Fedora', 1, 'Hat', 0, 0),
(95, 37, 'Black Fedora', 1, 'Hat', 0, 0),
(96, 37, 'Pot Head', 2, 'Hat', 0, 0),
(97, 44, 'Pot Head', 2, 'Hat', 0, 0),
(98, 44, 'Black Fedora', 1, 'Hat', 0, 0),
(99, 142, 'Pot Head', 2, 'Hat', 0, 0),
(100, 152, 'Black Fedora', 1, 'Hat', 0, 0),
(101, 152, 'Pot Head', 2, 'Hat', 0, 0),
(102, 41, 'Black Fedora', 1, 'Hat', 0, 0),
(103, 153, 'Black Fedora', 1, 'Hat', 0, 0),
(104, 153, 'Pot Head', 2, 'Hat', 0, 0),
(105, 154, 'Pot Head', 2, 'Hat', 0, 0),
(106, 155, 'Black Fedora', 1, 'Hat', 0, 0),
(107, 155, 'Pot Head', 2, 'Hat', 0, 0),
(108, 156, 'Black Fedora', 1, 'Hat', 0, 0),
(109, 157, 'Black Fedora', 1, 'Hat', 0, 0),
(110, 157, 'Pot Head', 2, 'Hat', 0, 0),
(111, 48, 'Black Fedora', 1, 'Hat', 0, 0),
(112, 12, 'Pot Head', 2, 'Hat', 0, 0),
(113, 12, 'Black Fedora', 1, 'Hat', 0, 0),
(114, 2, 'Pot Head', 2, 'Hat', 0, 0),
(115, 158, 'Pot Head', 2, 'Hat', 0, 0),
(116, 158, 'Black Fedora', 1, 'Hat', 0, 0),
(117, 5, 'Pot Head', 2, 'Hat', 0, 0),
(118, 22, 'Black Fedora', 1, 'Hat', 0, 0),
(119, 22, 'Pot Head', 2, 'Hat', 0, 0),
(120, 11, 'Black Fedora', 1, 'Hat', 0, 0),
(121, 11, 'Pot Head', 2, 'Hat', 0, 0),
(122, 24, 'Black Fedora', 1, 'Hat', 0, 0),
(123, 24, 'Pot Head', 2, 'Hat', 0, 0),
(124, 43, 'Black Fedora', 1, 'Hat', 0, 0),
(125, 76, 'Black Fedora', 1, 'Hat', 0, 0),
(126, 159, 'Black Fedora', 1, 'Hat', 0, 0),
(127, 159, 'Pot Head', 2, 'Hat', 0, 0),
(128, 160, 'Black Fedora', 1, 'Hat', 0, 0),
(129, 160, 'Pot Head', 2, 'Hat', 0, 0),
(130, 79, 'Pot Head', 2, 'Hat', 0, 0),
(131, 79, 'Black Fedora', 1, 'Hat', 0, 0),
(132, 168, 'Pot Head', 2, 'Hat', 0, 0),
(133, 21, 'Black Fedora', 1, 'Hat', 0, 0),
(134, 21, 'Pot Head', 2, 'Hat', 0, 0),
(135, 78, 'Black Fedora', 1, 'Hat', 0, 0),
(136, 78, 'Pot Head', 2, 'Hat', 0, 0),
(137, 169, 'Black Fedora', 1, 'Hat', 0, 0),
(138, 171, 'Black Fedora', 1, 'Hat', 0, 0),
(139, 173, 'Black Fedora', 1, 'Hat', 0, 0),
(140, 173, 'Pot Head', 2, 'Hat', 0, 0),
(141, 174, 'Black Fedora', 1, 'Hat', 0, 0),
(142, 174, 'Pot Head', 2, 'Hat', 0, 0),
(143, 177, 'Black Fedora', 1, 'Hat', 0, 0),
(144, 178, 'Black Fedora', 1, 'Hat', 0, 0),
(145, 105, 'Pot Head', 2, 'Hat', 0, 0),
(146, 105, 'Black Fedora', 1, 'Hat', 0, 0),
(147, 180, 'Black Fedora', 1, 'Hat', 0, 0),
(148, 180, 'Pot Head', 2, 'Hat', 0, 0),
(149, 181, 'Black Fedora', 1, 'Hat', 0, 0),
(150, 181, 'Pot Head', 2, 'Hat', 0, 0),
(151, 98, 'Black Fedora', 1, 'Hat', 0, 0),
(152, 98, 'Pot Head', 2, 'Hat', 0, 0),
(153, 170, 'Black Fedora', 1, 'Hat', 0, 0),
(154, 87, 'Black Fedora', 1, 'Hat', 0, 0),
(155, 172, 'Pot Head', 2, 'Hat', 0, 0),
(156, 172, 'Black Fedora', 1, 'Hat', 0, 0),
(157, 87, 'Pot Head', 2, 'Hat', 0, 0),
(158, 184, 'Black Fedora', 1, 'Hat', 0, 0),
(159, 184, 'Pot Head', 2, 'Hat', 0, 0),
(160, 185, 'Black Fedora', 1, 'Hat', 0, 0),
(161, 185, 'Pot Head', 2, 'Hat', 0, 0),
(162, 81, 'Pot Head', 2, 'Hat', 0, 0),
(163, 81, 'Black Fedora', 1, 'Hat', 0, 0),
(164, 189, 'Black Fedora', 1, 'Hat', 0, 0),
(165, 189, 'Pot Head', 2, 'Hat', 0, 0),
(166, 190, 'Black Fedora', 1, 'Hat', 0, 0),
(167, 190, 'Pot Head', 2, 'Hat', 0, 0),
(168, 191, 'Black Fedora', 1, 'Hat', 0, 0),
(169, 191, 'Pot Head', 2, 'Hat', 0, 0),
(170, 192, 'Pot Head', 2, 'Hat', 0, 0),
(171, 192, 'Black Fedora', 1, 'Hat', 0, 0),
(172, 193, 'Black Fedora', 1, 'Hat', 0, 0),
(173, 193, 'Pot Head', 2, 'Hat', 0, 0),
(174, 194, 'Black Fedora', 1, 'Hat', 0, 0),
(175, 194, 'Pot Head', 2, 'Hat', 0, 0),
(176, 195, 'Black Fedora', 1, 'Hat', 0, 0),
(177, 196, 'Pot Head', 2, 'Hat', 0, 0),
(178, 196, 'Black Fedora', 1, 'Hat', 0, 0),
(179, 25, 'Black Fedora', 1, 'Hat', 0, 0),
(180, 197, 'Black Fedora', 1, 'Hat', 0, 0),
(181, 198, 'Black Fedora', 1, 'Hat', 0, 0),
(182, 198, 'Pot Head', 2, 'Hat', 0, 0),
(183, 199, 'Black Fedora', 1, 'Hat', 0, 0),
(184, 154, 'Black Fedora', 1, 'Hat', 0, 0),
(185, 201, 'Black Fedora', 1, 'Hat', 0, 0),
(186, 201, 'Pot Head', 2, 'Hat', 0, 0),
(187, 77, 'Pot Head', 2, 'Hat', 0, 0),
(188, 77, 'Black Fedora', 1, 'Hat', 0, 0),
(189, 18, 'Black Fedora', 1, 'Hat', 0, 0),
(190, 206, 'Black Fedora', 1, 'Hat', 0, 0),
(191, 207, 'Black Fedora', 1, 'Hat', 0, 0),
(192, 208, 'Black Fedora', 1, 'Hat', 0, 0),
(193, 208, 'Pot Head', 2, 'Hat', 0, 0),
(194, 210, 'Black Fedora', 1, 'Hat', 0, 0),
(195, 209, 'Pot Head', 2, 'Hat', 0, 0),
(196, 209, 'Black Fedora', 1, 'Hat', 0, 0),
(197, 211, 'Black Fedora', 1, 'Hat', 0, 0),
(198, 211, 'Pot Head', 2, 'Hat', 0, 0),
(199, 212, 'Black Fedora', 1, 'Hat', 0, 0),
(200, 80, 'Black Fedora', 1, 'Hat', 0, 0),
(201, 80, 'Pot Head', 2, 'Hat', 0, 0),
(202, 213, 'Black Fedora', 1, 'Hat', 0, 0),
(203, 214, 'Black Fedora', 1, 'Hat', 0, 0),
(204, 214, 'Pot Head', 2, 'Hat', 0, 0),
(205, 215, 'Black Fedora', 1, 'Hat', 0, 0),
(206, 215, 'Pot Head', 2, 'Hat', 0, 0),
(207, 216, 'Black Fedora', 1, 'Hat', 0, 0),
(208, 216, 'Pot Head', 2, 'Hat', 0, 0),
(209, 217, 'Black Fedora', 1, 'Hat', 0, 0),
(210, 217, 'Pot Head', 2, 'Hat', 0, 0),
(211, 218, 'Black Fedora', 1, 'Hat', 0, 0),
(212, 218, 'Pot Head', 2, 'Hat', 0, 0),
(213, 221, 'Black Fedora', 1, 'Hat', 0, 0),
(214, 222, 'Black Fedora', 1, 'Hat', 0, 0),
(215, 223, 'Black Fedora', 1, 'Hat', 0, 0),
(216, 223, 'Pot Head', 2, 'Hat', 0, 0),
(217, 139, 'Black Fedora', 1, 'Hat', 0, 0),
(218, 224, 'Black Fedora', 1, 'Hat', 0, 0),
(219, 224, 'Pot Head', 2, 'Hat', 0, 0),
(220, 225, 'Black Fedora', 1, 'Hat', 0, 0),
(221, 225, 'Pot Head', 2, 'Hat', 0, 0),
(222, 128, 'Pot Head', 2, 'Hat', 0, 0),
(223, 228, 'Black Fedora', 1, 'Hat', 0, 0),
(224, 228, 'Pot Head', 2, 'Hat', 0, 0),
(225, 230, 'Black Fedora', 1, 'Hat', 0, 0),
(226, 230, 'Pot Head', 2, 'Hat', 0, 0),
(227, 233, 'Black Fedora', 1, 'Hat', 0, 0),
(228, 233, 'Pot Head', 2, 'Hat', 0, 0),
(229, 235, 'Pot Head', 2, 'Hat', 0, 0),
(230, 235, 'Black Fedora', 1, 'Hat', 0, 0),
(231, 237, 'Black Fedora', 1, 'Hat', 0, 0),
(232, 237, 'Pot Head', 2, 'Hat', 0, 0),
(233, 239, 'Pot Head', 2, 'Hat', 0, 0),
(234, 239, 'Black Fedora', 1, 'Hat', 0, 0),
(235, 106, 'Black Fedora', 1, 'Hat', 0, 0),
(236, 106, 'Pot Head', 2, 'Hat', 0, 0),
(237, 61, 'Black Fedora', 1, 'Hat', 0, 0),
(238, 47, 'Black Fedora', 1, 'Hat', 0, 0),
(239, 244, 'Pot Head', 2, 'Hat', 0, 0),
(240, 62, 'Black Fedora', 1, 'Hat', 0, 0),
(241, 248, 'Black Fedora', 1, 'Hat', 0, 0),
(242, 229, 'Test', 3, 'shirt', 0, 0),
(243, 229, 'Pot Head', 2, 'Hat', 0, 0),
(244, 229, 'Black Fedora', 1, 'Hat', 0, 0),
(245, 26, 'Pot Head', 2, 'Hat', 0, 0),
(246, 207, 'Pot Head', 2, 'Hat', 0, 0),
(247, 251, 'Black Fedora', 1, 'Hat', 0, 0),
(248, 251, 'Pot Head', 2, 'Hat', 0, 0),
(249, 85, 'Cream is dank', 6, 'shirt', 0, 0),
(250, 85, 'Cream is dank', 7, 'shirt', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `itemComments`
--

CREATE TABLE `itemComments` (
  `id` int(255) NOT NULL,
  `username` varchar(33) NOT NULL,
  `userID` int(255) NOT NULL,
  `itemID` int(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemComments`
--

INSERT INTO `itemComments` (`id`, `username`, `userID`, `itemID`, `post`, `time`) VALUES
(1, 'abb', 12, 1, 'first.', '1525038653'),
(2, 'Retro', 31, 1, 'Second!', '1525038680'),
(3, 'kcurt', 16, 1, '2n', '1525038682'),
(4, 'fernando penedo', 10, 1, 'hum', '1525038694'),
(5, 'Retro', 31, 2, 'First!', '1525038703'),
(6, 'kcurt', 16, 1, '3rd', '1525038703'),
(7, 'extremeplayer32', 50, 1, 'Wow', '1525038705'),
(8, 'Retro', 31, 3, 'First!', '1525038714'),
(9, 'kcurt', 16, 1, 'idk anymore', '1525038720'),
(10, 'extremeplayer32', 50, 1, '4th', '1525038723'),
(11, 'Retro', 31, 3, 'First!', '1525038732'),
(12, 'fernando penedo', 10, 4, 'ha', '1525038738'),
(13, 'Tea', 17, 1, 'Sad', '1525038740'),
(14, 'kcurt', 16, 7, 'rip green fed 1st', '1525038750'),
(15, 'fernando penedo', 10, 666, '666', '1525038751'),
(16, 'fernando penedo', 10, 1337, 'moon', '1525038758'),
(17, 'Tea', 17, 100, 'Nice hat', '1525038767'),
(18, 'abb', 12, 19, 'hi', '1525038776'),
(19, 'fernando penedo', 10, 7, ':(', '1525038778'),
(20, 'kcurt', 16, 7, 'rip green fed 1st', '1525038780'),
(21, 'fernando penedo', 10, 3, 'ok', '1525038788'),
(22, 'extremeplayer32', 50, 3, '2nd', '1525038791'),
(23, 'extremeplayer32', 50, 7, 'RIP :(', '1525038844'),
(24, 'kcurt', 16, 7, 'rip green fed 1st', '1525039074'),
(25, 'coolboy13', 13, 1, 'yes', '1525059568'),
(26, 'fernando penedo', 10, 1, '4 person that buy the fedora', '1525059638'),
(27, 'fernando penedo', 10, 1, '*bought', '1525059650'),
(28, 'fernando penedo', 10, 1, '*bought', '1525059657'),
(29, 'extremeplayer32', 50, 1, 'Finally! Its back', '1525059710'),
(30, 'zix', 109, 1, '10th to buy it', '1525059715'),
(31, 'zix', 109, 2, 'second', '1525059817'),
(32, 'zix', 109, 3, 'lol 3rd', '1525059838'),
(33, 'zix', 109, 10, 'woa', '1525059847'),
(34, 'zix', 109, 666, 'lol we both went here u coo', '1525059858'),
(35, 'zix', 109, 69, 'eyy lmao', '1525059865'),
(36, 'zix', 109, 9001, 'over 9000!', '1525059873'),
(37, 'The', 112, 1, '11th owner of this hat!', '1525059888'),
(38, 'The', 112, 1, '11th owner of this hat!', '1525059896'),
(39, 'Awesomeless', 116, 1, '12th.', '1525059899'),
(40, 'zix', 109, 4, 'ha', '1525060130'),
(41, 'zix', 109, 1337, 'yes lit 1337', '1525060153'),
(42, 'zix', 109, 777, 'lucky', '1525060585'),
(43, 'zix', 109, 100, 'ikr', '1525060596'),
(44, 'zix', 109, 99, 'inb4 100', '1525060657'),
(45, 'KKK', 42, 1, 'a', '1525061074'),
(46, 'Tea', 17, 2, 'Smoke weed', '1525061958'),
(47, 'fernando penedo', 10, 2, '3 person that bought this', '1525061968'),
(48, 'trint', 132, 1, 'gay', '1525072465'),
(49, 'coolboy13', 13, 2, 'hi', '1525090362'),
(50, 'SouthernRoadgeek', 35, 1, 'o o f', '1525090658'),
(51, 'ValconBlackwell', 7, 2, 'i\'m the 27th owner lol', '1525090994'),
(52, 'exe', 65, 123, 'why am i here', '1525091836'),
(53, 'exe', 65, 666, 'why', '1525091847'),
(54, 'exe', 65, 1000, 'yes waiting for 1k', '1525091865'),
(55, 'Raymonf', 60, 1, 'C0O&Ccedil;', '1525094748'),
(56, 'igdegoo', 40, 2, 'pothead', '1525096637'),
(57, 'igdegoo', 40, 1, 'nice', '1525096650'),
(58, 'City', 139, 2, 'k', '1525098285'),
(59, 'Lapis', 20, 1, 'This fedora looks pretty cool.', '1525104085'),
(60, 'aaa', 142, 2, '41th owner', '1525109205'),
(61, 'aaa', 142, 2, '41th owner', '1525109213'),
(62, 'Cashkid08', 56, 1, 'Yea', '1525109292'),
(63, 'coolboy13', 13, 3, 'lol', '1525118674'),
(64, 'coolboy13', 13, 2, 'i\'m the 10th owner lol', '1525119648'),
(65, 'found', 43, 1, 'yes', '1525119913'),
(66, 'fernando penedo', 10, 616, 'real beast', '1525120421'),
(67, 'abb', 12, 2, 'Funny joke hahaahahah.', '1525121074'),
(68, 'ravioli', 168, 2, 'pot head', '1525123603'),
(69, 'Shea', 169, 1, 'hi\r\n', '1525125208'),
(70, 'Jeffy', 64, 1, 'Best item ever.', '1525126813'),
(71, 'Jeffy', 64, 1, 'Best item ever.', '1525126824'),
(72, 'Dog', 190, 1, 'HELLO', '1525143594'),
(73, 'coolboy13', 13, 5, 'hi', '1525148772'),
(74, 'coolboy13', 13, 5, 'hi', '1525148778'),
(75, 'Astronomy', 195, 1, 'My first hat', '1525159522'),
(76, 'Astronomy', 195, 1, 'My first hat', '1525159533'),
(77, 'Josh', 71, 1, 'better than u', '1525195666'),
(78, 'abb', 12, 2, 'He\'s a little stoned*', '1525204130'),
(79, 'MrBlack', 18, 1, 'Too bad this site getting sued by Issac', '1525205993'),
(80, 'Jeffy', 64, 1, 'All the colour went on my face D;', '1525212918'),
(81, 'Jeffy', 64, 1, 'All the colour went on my face D;', '1525212930'),
(82, '???', 218, 1, 'Awssome!', '1525233578'),
(83, 'pink', 223, 1, '#####\r\n', '1525257067'),
(84, 'zix', 109, 123456789, '123456789\r\nlol idk man', '1525282065'),
(85, 'Kwame', 235, 2, 'alert(\'.\');', '1525294305'),
(86, 'Kwame', 235, 2, '\'', '1525294312'),
(87, 'Kwame', 235, 2, '\'', '1525294317'),
(88, 'OSBW x REVENGE', 237, 1, 'I know something about this hat that I shouldn\'t. I am not telling you.', '1525301412'),
(89, 'Conner', 85, 6, 'First!', '1525392555');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(255) NOT NULL,
  `fromID` int(255) NOT NULL,
  `toID` int(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `fromID`, `toID`, `message`) VALUES
(1, 1, 3, 'Hey Byte it\'s me. Tetrimus! How are you doing?');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `poster` varchar(20) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `post`, `poster`, `date`) VALUES
(1, 'Forums will be wiped soon!', 'byte312', '5/1/18');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `gross` varchar(25) NOT NULL DEFAULT '0',
  `timestamp` varchar(75) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `receipt` varchar(500) NOT NULL DEFAULT '0',
  `product` varchar(200) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `gross`, `timestamp`, `email`, `receipt`, `product`) VALUES
(2, 90, '1.00', '2018-05-01 02:08:58', 'jhsage5@yahoo.com', '0XU7838354203761U', 'DiamondMonthly');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `message` varchar(500) NOT NULL,
  `poster` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `topic_id`, `forum_id`, `message`, `poster`, `date`) VALUES
(1, 1, 1, 'Angry Face', 10, 1525058432),
(2, 1, 1, 'Hey byte, can you get Blank to message me on Twitter? Thanks', 85, 1525058477),
(3, 1, 1, 'pls', 13, 1525058477),
(4, 1, 1, 'Selling items if offsale', 85, 1525058497),
(5, 1, 1, 'I\'d like to see, clothing and clubs added. But I want the ability to add clothing to the clubs so all clothing sales (revenue) would go to the group vault.', 31, 1525058511),
(6, 1, 1, 'Or if the quantity is maxed', 85, 1525058521),
(7, 1, 1, 'items pls', 13, 1525058529),
(8, 1, 1, 'Make upgrades work?', 42, 1525058538),
(9, 2, 2, 'Unfair! Haha.', 85, 1525058575),
(10, 2, 2, 'Awesome!', 10, 1525058580),
(11, 2, 2, 'Totally unfair!', 31, 1525058597),
(12, 2, 2, 'RIOT', 42, 1525058627),
(13, 8, 2, 'Staff*', 85, 1525058698),
(14, 7, 2, 'Hi!', 31, 1525058700),
(15, 1, 1, 'True', 85, 1525058717),
(16, 5, 2, 'Amazing! I\'m very excited for Tetrimus\' future!', 31, 1525058725),
(17, 7, 2, 'good day:)', 13, 1525058727),
(18, 7, 2, 'Hey!', 85, 1525058733),
(19, 4, 2, 'Hello.', 31, 1525058735),
(20, 5, 2, 'Same.', 85, 1525058755),
(21, 3, 2, 'You have a bad username. :(', 31, 1525058758),
(22, 4, 2, 'Hello Retro', 10, 1525058762),
(23, 8, 2, 'Bump for sake of time', 85, 1525058804),
(24, 7, 2, ':D', 13, 1525058804),
(25, 8, 2, 'On what platform?', 31, 1525058810),
(26, 8, 2, 'Twitter, and dotn question it, because he knows who I am on Twitter', 85, 1525058843),
(27, 8, 2, 'Don\'t*', 85, 1525058852),
(28, 11, 2, 'Oh, no!', 31, 1525058853),
(29, 1, 1, 'Discord Member Badge\r\n', 50, 1525058864),
(30, 10, 2, 'Worst username, right there.', 31, 1525058864),
(31, 13, 2, 'Um okay', 85, 1525058867),
(32, 10, 2, 'O_O', 13, 1525058874),
(33, 9, 2, 'I have no idea.', 31, 1525058877),
(34, 10, 2, 'Why..', 85, 1525058884),
(35, 8, 2, 'Sure!', 31, 1525058893),
(36, 9, 2, 'Yep', 85, 1525058899),
(37, 8, 2, 'Ty', 85, 1525058918),
(38, 15, 2, '...', 85, 1525058943),
(39, 15, 2, 'staff', 1, 1525058987),
(40, 16, 2, 'Yep', 85, 1525058991),
(42, 15, 2, 'This makes no sense, but okay!', 31, 1525059002),
(43, 17, 2, 'Hiya\' there!', 31, 1525059011),
(44, 15, 2, 'staff', 10, 1525059022),
(45, 7, 2, 'hi', 13, 1525059031),
(46, 12, 2, 'Kk', 31, 1525059063),
(47, 13, 2, 'What happened to your avatar?', 31, 1525059077),
(48, 19, 2, 'gang gang', 109, 1525059078),
(49, 14, 2, 'Yep.', 31, 1525059112),
(50, 14, 2, 'Ikr', 85, 1525059125),
(51, 19, 2, 'I used to be the first.', 85, 1525059145),
(52, 16, 2, 'Yes', 31, 1525059150),
(53, 23, 2, 'Lol', 85, 1525059162),
(54, 16, 2, 'um ya', 109, 1525059171),
(55, 24, 2, 'Uh', 85, 1525059186),
(56, 21, 2, 'No, stop it. Get some help.', 31, 1525059201),
(57, 22, 2, 'No! I am!', 31, 1525059216),
(58, 22, 2, 'no i will be', 109, 1525059225),
(59, 21, 2, 'Why', 85, 1525059226),
(60, 23, 2, 'Lol\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nPropaganda!', 31, 1525059240),
(61, 22, 2, 'Lol', 85, 1525059247),
(62, 26, 2, '*pass', 50, 1525059248),
(63, 26, 2, 'Ok', 85, 1525059264),
(64, 19, 2, 'No. Me!', 31, 1525059264),
(65, 19, 2, 'hi', 13, 1525059304),
(66, 19, 2, 'no me', 109, 1525059319),
(67, 30, 2, 'What?', 85, 1525059341),
(68, 28, 2, 'Alright, enjoy the show.', 31, 1525059374),
(69, 27, 2, 'What!?', 31, 1525059387),
(70, 36, 2, 'Stop spamming.', 85, 1525059401),
(71, 25, 2, 'Spammer! &gt;:(', 31, 1525059409),
(72, 41, 2, 'You can and will get banned.', 85, 1525059450),
(73, 25, 2, 'Not really.', 85, 1525059476),
(74, 1, 1, 'let me create a group !!', 109, 1525059490),
(75, 39, 2, 'No you!', 31, 1525059494),
(76, 39, 2, 'no u', 109, 1525059502),
(77, 39, 2, 'Do you even know what spamming is retro?', 85, 1525059509),
(78, 44, 2, 'You will get banned but okay', 85, 1525059540),
(79, 38, 2, 'Two plus two is four, if you subtract one from the equation you will get an equivalent of three.', 31, 1525059552),
(80, 46, 2, 'It prob won\'t be free', 85, 1525059558),
(81, 44, 2, 'yo man extreme dont just make random threads u gotta have some type of meaning in them', 109, 1525059567),
(82, 37, 2, 'Stop spamming.', 31, 1525059573),
(83, 50, 2, 'you gon get banned man', 109, 1525059586),
(84, 49, 2, 'You know as soon as banning is working you will be banned for spamming?', 85, 1525059593),
(85, 52, 2, 'STOP SPAMMING', 85, 1525059611),
(86, 55, 2, 'quic maths', 109, 1525059622),
(87, 56, 2, 'you probably will so stop!!', 109, 1525059634),
(88, 57, 2, 'we probably can', 109, 1525059643),
(89, 58, 2, 'all you\'re doing is spamming threads', 109, 1525059657),
(90, 59, 2, 'tryhard man', 109, 1525059669),
(91, 50, 2, 'Stop it.', 31, 1525059677),
(92, 51, 2, 'Seriously, just stop spamming.', 31, 1525059693),
(93, 49, 2, 'Exactly.', 31, 1525059709),
(94, 49, 2, 'mhm inb4 ban', 109, 1525059752),
(95, 64, 2, 'yee fedora gang', 109, 1525059766),
(96, 65, 2, 'yeah what byte said, extreme!!', 109, 1525059777),
(98, 65, 2, 'Okay', 10, 1525059794),
(99, 66, 2, 'yes', 109, 1525059888),
(100, 58, 2, 'Seriously, just stop it.', 31, 1525059904),
(101, 59, 2, 'Stop spamming the forums!', 31, 1525059944),
(102, 60, 2, 'Same.', 31, 1525059957),
(103, 72, 2, 'ye its lit', 109, 1525059974),
(104, 71, 2, 'i know right extreme needa chill man', 109, 1525059996),
(105, 61, 2, 'Yes.', 31, 1525060000),
(106, 62, 2, 'Not really, but at the same time it is.', 31, 1525060025),
(107, 2, 2, 'oh nice', 109, 1525060038),
(108, 63, 2, 'Gucci Gang, Gucci Gang, Gucci Gang!', 31, 1525060046),
(109, 73, 2, 'reset', 10, 1525060055),
(110, 73, 2, 'dont know, maybe a few updates that required a wipe', 109, 1525060057),
(111, 65, 2, 'Yeah, Extreme!', 31, 1525060067),
(112, 75, 2, 'hot', 109, 1525060083),
(113, 64, 2, 'Fedora Gang!', 31, 1525060089),
(114, 74, 2, 'because he runs and eats healthy', 109, 1525060106),
(115, 76, 2, 'im proud of myself because this game will be big in the future!', 112, 1525060145),
(116, 73, 2, 'A reset has occurred', 10, 1525060158),
(118, 74, 2, 'ya they did its how u get skinny here', 109, 1525060193),
(119, 77, 2, 'true', 109, 1525060210),
(121, 74, 2, 'you move ur legs', 109, 1525060245),
(122, 1, 1, 'Please add some midnight shades, i\'ve been requesting them for a while and probably 90% of the people would like midnight shades!', 112, 1525060248),
(124, 76, 2, ':( \r\ni want banana!', 112, 1525060294),
(125, 76, 2, 'i own this zix', 109, 1525060354),
(126, 76, 2, 'zix is alright, but i\'d go for a 3 letter world because they\'d make you look cool', 112, 1525060400),
(127, 82, 2, 'yeah its really cool \r\n', 112, 1525060442),
(128, 76, 2, 'it is a 3 letter word\r\nalso i got this namesnipe eyy gang gang', 117, 1525060447),
(129, 82, 2, 'ey its my alt :))', 109, 1525060483),
(130, 83, 2, 'probably not yet', 109, 1525060504),
(131, 84, 2, 'soon', 109, 1525060517),
(132, 76, 2, 'I got Retro and Llama', 31, 1525060536),
(134, 79, 2, 'yes, 1 token and 10 coins for normal users, and 25 tokens and 10 coins for Diamond membership ($10)\r\n\r\nas of right now basic membership gets the same as normal users, we will be changing that very very soon, it will most likely be 10 tokens and 10 coins for basic', 4, 1525060579),
(135, 78, 2, 'Gang Gang!', 31, 1525060580),
(137, 78, 2, 'yes gang gang', 109, 1525060822),
(138, 86, 3, 'no', 10, 1525060890),
(140, 86, 3, 'despacito', 116, 1525060936),
(141, 86, 3, 'despacito', 116, 1525060990),
(142, 86, 3, 'despacito', 116, 1525061037),
(144, 86, 3, 'despacito', 116, 1525061117),
(146, 65, 2, 'Test', 3, 1525061187),
(147, 86, 3, 'despacito', 116, 1525061260),
(148, 86, 3, 'despacito', 116, 1525061283),
(149, 86, 3, 'despacito [5]', 116, 1525061408),
(150, 76, 2, 'I own active and Me.', 9, 1525061435),
(151, 86, 3, 'despacito [6]', 116, 1525061447),
(152, 92, 2, 'T E A', 116, 1525061470),
(154, 86, 3, 'despacito', 116, 1525061541),
(155, 86, 3, 'despacito [11]', 116, 1525061570),
(156, 95, 3, 'yaya', 116, 1525061602),
(157, 76, 2, 'i own noynac ðŸ‘', 4, 1525061605),
(158, 86, 3, 'despacito [12]', 116, 1525061645),
(160, 98, 2, 'Hello', 10, 1525061708),
(162, 100, 2, 'ID 100', 10, 1525061806),
(164, 101, 2, 'whoah nice name dood', 112, 1525061813),
(165, 100, 2, 'No', 10, 1525061833),
(167, 100, 2, 'This is the Thread 100', 10, 1525061886),
(169, 100, 2, '...', 10, 1525061937),
(170, 102, 2, 'Please do not trashpost are posting any other staffs that is not related into this channel!', 50, 1525061946),
(171, 76, 2, 'noynac? \r\nWhat\'s that mean? \r\nlol cool name tho\r\n', 112, 1525061966),
(175, 105, 2, 'Ethan\r\n\r\nLook at the id of this thread', 10, 1525062097),
(177, 107, 2, 'I doubt they\'ll change it but it\'s worth a try. \r\n', 112, 1525062129),
(178, 105, 2, 'Now look the id of my thread', 10, 1525062141),
(181, 111, 2, 'maybe', 10, 1525062351),
(184, 111, 2, 'You totally trashpost! You trashpost because you want to be in the first place', 50, 1525062472),
(186, 112, 2, 'If you are wondering why i trashpost in that part is because i want to test if there is a cooldown that\'s why i post so fast on it', 50, 1525062545),
(188, 113, 2, '*about', 10, 1525062620),
(190, 113, 2, 'Not aout', 10, 1525062645),
(192, 113, 2, 'Trashpost means posting some any other stuffs that is not related to this channel and posting any stupid stuffs and then you\'re posting so many times like about every second, you said that i trashpost? How could that be trashpost that i warned you that do not trashpost?', 50, 1525062682),
(194, 114, 2, 'I have to go with forum it\'s the best one so far', 112, 1525062773),
(195, 113, 2, 'I could say to you that you are trashposting cause you said &quot;How many points you need to become Level 2?&quot; That is the proof', 50, 1525062787),
(197, 112, 2, 'I did not stop after i become 1st place', 50, 1525062830),
(198, 112, 2, 'I stop in 40+ posts', 50, 1525062852),
(200, 113, 2, 'There is a off-topic channel', 50, 1525062899),
(207, 123, 4, '123', 10, 1525063378),
(209, 120, 2, 'You stop cause you said &quot;How many points needed to become Level 2?&quot; also you post a thread that the Title is 1st Place, just admit it dude.', 50, 1525063474),
(210, 123, 4, 'Its not spamming! It is a test, byte312 said', 50, 1525063550),
(215, 128, 2, 'No', 10, 1525063780),
(218, 128, 2, 'Oh, i thought they already released it', 50, 1525063891),
(219, 129, 2, '*Triggered\r\n\r\nAlso bye i\'m going to sleep', 10, 1525063893),
(223, 129, 2, 'Now you are trying to harass me even i don\'t harass also which means you are still trash posting in here', 50, 1525064071),
(226, 131, 3, 'no you are irrelevant.', 71, 1525064755),
(227, 135, 2, 'nice', 71, 1525064774),
(228, 129, 2, 'amazing', 71, 1525064791),
(229, 65, 2, 'we won\'t dad.', 71, 1525064812),
(230, 126, 2, 'nice man! congrats.', 71, 1525064847),
(231, 119, 2, 'relevant things.', 71, 1525064870),
(232, 124, 2, 'dont quit yet pls', 71, 1525064900),
(233, 113, 2, '*sigh* just stop.', 71, 1525064946),
(234, 128, 2, 'yeah it doesn\'t work.', 71, 1525064994),
(235, 120, 2, 'tbh this is kinda true.', 71, 1525065033),
(236, 130, 2, 'I don\'t think they will.', 71, 1525065070),
(237, 116, 2, 'no', 71, 1525065119),
(239, 108, 2, 'like we know.', 71, 1525065465),
(240, 132, 3, 'true\r\n\r\n-Offtopic King', 71, 1525065520),
(242, 108, 2, 'alright thanks dude lol.', 71, 1525065556),
(243, 110, 3, 'wdym', 71, 1525065636),
(244, 86, 3, 'despacito', 71, 1525065699),
(245, 123, 4, 'Tralalalalal', 15, 1525065802),
(246, 123, 4, '12356789', 15, 1525065814),
(247, 123, 4, 'qwertyuiopasdfghjklzxcvbnm', 15, 1525065835),
(248, 144, 2, 'hey bud', 71, 1525065848),
(249, 123, 4, ';+Ä¾&scaron;ÄÅ¥Å¾&yacute;&aacute;&iacute;&eacute;=&acute;&auml;&uacute;Åˆ&sect;&ocirc;-.,', 15, 1525065853),
(251, 144, 2, 'wheres spongebob', 53, 1525065893),
(252, 142, 3, 'Gotta go fast!', 15, 1525065904),
(254, 120, 2, 'sad', 15, 1525066075),
(255, 145, 2, 'no 2029', 71, 1525066189),
(257, 146, 3, '1:35 AM where I am rip. im falling asleep as im typing this eidnfntjje', 71, 1525066545),
(258, 93, 3, 'n00000000', 71, 1525066645),
(259, 94, 3, 'yessirry', 71, 1525066661),
(260, 104, 3, 'l0l', 71, 1525066673),
(261, 145, 2, 'why', 71, 1525066699),
(262, 145, 2, 'answer or suffer the consequences.', 71, 1525066729),
(263, 145, 2, 'OH NOW YOU\'RE OFFLINE. NOW YOU WANNA GO.', 71, 1525066749),
(264, 144, 2, 'hide n\' seek', 71, 1525066783),
(265, 148, 2, 'eat a tuna sandwich', 71, 1525066882),
(266, 148, 2, 'with mayonnaise', 71, 1525066900),
(267, 152, 2, 'no', 71, 1525067312),
(268, 151, 2, 'because they\'re working while you\'re trashposting.', 71, 1525067357),
(270, 1, 1, '^ wouldn\'t that copy roblox.', 71, 1525067462),
(271, 150, 2, 'yes', 71, 1525067484),
(272, 146, 3, 'so tired.', 71, 1525067509),
(273, 149, 2, 'me lol', 71, 1525067531),
(275, 147, 5, 'Okay??', 31, 1525069477),
(276, 143, 5, 'Yes.', 31, 1525069504),
(277, 141, 5, 'Not!', 31, 1525069514),
(278, 136, 5, 'Yep!', 31, 1525069524),
(279, 155, 5, 'due*', 31, 1525069560),
(280, 125, 4, 'Got it.', 31, 1525069781),
(281, 123, 4, 'Lol, they got ya\'', 31, 1525069803),
(282, 122, 4, 'Sure...', 31, 1525069832),
(283, 121, 4, 'Not me! It was probably Llama', 31, 1525069863),
(284, 140, 3, 'OK then.', 31, 1525070236),
(285, 132, 3, 'Agreed', 31, 1525070294),
(286, 110, 3, 'What?', 31, 1525070308),
(287, 117, 3, 'Makes sense.', 31, 1525070339),
(288, 95, 3, 'Ja.', 31, 1525070352),
(289, 91, 3, 'Stop it, get some help.', 31, 1525070374),
(290, 146, 3, 'Alright, then sleep.', 31, 1525070512),
(291, 142, 3, 'Nope, too bad.', 31, 1525071160),
(292, 93, 3, 'You aren\'t active!', 31, 1525071176),
(293, 94, 3, 'Agreed', 31, 1525071194),
(294, 104, 3, 'No! Me!', 31, 1525071212),
(295, 137, 3, 'No more.', 31, 1525071252),
(296, 131, 3, 'Gimmie', 31, 1525071267),
(297, 138, 3, 'You truly are.', 31, 1525071303),
(298, 156, 2, '*subforum (I said suborum at end)', 124, 1525071400),
(299, 157, 3, 'xDDDDDDDDDDDDDD', 124, 1525071513),
(300, 157, 3, 'Not funny anymore.', 124, 1525071596),
(301, 155, 5, 'lol', 130, 1525072299),
(302, 121, 4, 'I wonder...', 130, 1525072337),
(303, 1, 1, 'Shirts tools and pants', 15, 1525073898),
(304, 1, 1, 'Shirts tools and pants', 15, 1525073899),
(305, 153, 2, 'Sad', 15, 1525073969),
(306, 131, 3, 'What flavor', 15, 1525074009),
(307, 137, 3, 'This was last reset', 15, 1525074051),
(308, 152, 2, 'Why', 15, 1525074103),
(309, 156, 2, 'Yes', 15, 1525074142),
(310, 144, 2, 'I dont understand', 15, 1525074185),
(311, 150, 2, 'Yes', 15, 1525074232),
(312, 157, 3, 'XD', 15, 1525074283),
(313, 94, 3, 'I love donuts! They are yummy', 15, 1525074339),
(314, 10, 2, 'Offensive. :(', 31, 1525079848),
(315, 18, 2, 'I believe 10-30 USD.\r\nFor the domain.', 31, 1525079914),
(316, 20, 2, 'Me!', 31, 1525079952),
(317, 31, 2, 'Alright, goodnight!', 31, 1525080010),
(318, 19, 2, 'No, I\'m the 16th member!', 31, 1525080029),
(319, 31, 2, 'Good night!', 64, 1525080036),
(320, 29, 2, 'For testing purposes.', 31, 1525080045),
(321, 26, 2, 'Doubt it.', 31, 1525080060),
(322, 21, 2, '/shrug\r\n\r\nI thought we were listing dead memes.', 31, 1525080094),
(323, 24, 2, '101 Token\'s and 5 Coin\'s!', 31, 1525080111),
(324, 161, 2, 'Bump. Its illegal but shh!', 64, 1525080182),
(325, 45, 2, 'No! God, please no! No! Noooooo!', 31, 1525080211),
(326, 39, 2, 'Of course!', 31, 1525080232),
(327, 1, 1, 'A new logo for the homepage when you click the Tetrimus homepage. Its just plain old lets get it creative!', 64, 1525080245),
(328, 43, 2, 'I call spam!', 31, 1525080290),
(329, 41, 2, 'Yerp.', 31, 1525080311),
(330, 40, 2, 'Same.', 31, 1525080327),
(331, 36, 2, '^^^', 31, 1525080390),
(332, 35, 2, 'Stop spamming!', 31, 1525080413),
(333, 34, 2, 'Spam!', 31, 1525080432),
(334, 161, 2, 'Yes.', 31, 1525080457),
(335, 161, 2, 'Thanks for the opinion!', 64, 1525080525),
(336, 69, 2, 'Yeah.', 31, 1525080565),
(337, 66, 2, 'Zix, Trix!', 31, 1525080703),
(338, 68, 2, 'Bought!', 31, 1525080714),
(339, 67, 2, 'No me!', 31, 1525080769),
(340, 57, 2, 'Already have.', 31, 1525080807),
(341, 56, 2, 'You will.', 31, 1525080818),
(342, 54, 2, 'I know right!', 31, 1525080862),
(343, 92, 2, 'Why?', 31, 1525080958),
(344, 90, 2, 'Good.', 31, 1525080972),
(345, 89, 2, '/shrug', 31, 1525081007),
(346, 88, 2, 'Woah!', 31, 1525081017),
(347, 87, 2, 'I don\'t get it?', 31, 1525081053),
(348, 85, 2, 'I\'m doing amazing!', 31, 1525081073),
(349, 79, 2, '^^^', 31, 1525081090),
(350, 84, 2, 'I feel like there will be more on-topic stuff.', 31, 1525081144),
(351, 83, 2, 'You need to DM Blank/Cream on Discord and donate to his paypal and he will grant you membership or that currency.', 31, 1525081182),
(352, 82, 2, 'This feature is a bug, it will be fixed soon.', 31, 1525081208),
(353, 81, 2, '/shrug\r\n\r\nMaybe you?', 31, 1525081233),
(354, 100, 2, 'You just made me confused.', 31, 1525081311),
(355, 105, 2, 'What?', 31, 1525081346),
(356, 107, 2, 'Yeah.', 31, 1525081359),
(357, 106, 2, 'Lol! So true.', 31, 1525081388),
(358, 102, 2, 'X3', 31, 1525081403),
(359, 103, 2, 'eM', 31, 1525081444),
(360, 101, 2, 'Yeah!', 31, 1525081459),
(361, 99, 2, 'Hi.', 31, 1525081472),
(362, 98, 2, 'Hiya\' there! I hope you enjoy our site. :)', 31, 1525081501),
(363, 97, 2, 'Not for long!', 31, 1525081518),
(364, 96, 2, 'No me!', 31, 1525081533),
(365, 145, 2, 'Says the one who is offline.', 31, 1525081601),
(366, 148, 2, 'Seems good.', 31, 1525081618),
(367, 120, 2, 'ðŸ™„', 31, 1525081682),
(368, 108, 2, 'Yes.', 31, 1525081719),
(369, 116, 2, ':(', 31, 1525081786),
(370, 139, 2, 'Yes', 31, 1525081794),
(371, 130, 2, 'It\'s kinda a requirement if we have rares.', 31, 1525081824),
(372, 128, 2, 'Ask Blank/Cream on the Tetrimus Discord server.', 31, 1525081855),
(373, 113, 2, 'oof', 31, 1525081880),
(374, 124, 2, 'Yeah.\r\nOh the forum ID is 124, and the ID of One is 123.', 31, 1525081925),
(375, 119, 2, 'Not stuff about your dog.', 31, 1525081947),
(376, 126, 2, 'Noice.ðŸ‘Œ', 31, 1525082051),
(377, 1, 1, 'I would like seeing an community manager,and I would suggest Doom (that is his disc name,not sure if also here) for the community mod.', 124, 1525082340),
(378, 150, 2, '1 Token and 10 Coin\'s daily', 31, 1525082499),
(379, 151, 2, 'They are under construction', 31, 1525082525),
(380, 152, 2, 'Why?', 31, 1525082577),
(381, 160, 2, '*Fixes Tetrimus.exe*', 31, 1525082606),
(382, 162, 5, 'Yeah.', 31, 1525082633),
(383, 32, 2, 'No.', 31, 1525082912),
(384, 33, 2, 'Stop.', 31, 1525082930),
(385, 44, 2, '**BANNING**', 31, 1525082981),
(386, 46, 2, 'Same.', 31, 1525083000),
(387, 47, 2, 'Maybe', 31, 1525083018),
(388, 48, 2, 'No.', 31, 1525083034),
(389, 52, 2, 'Stop...', 31, 1525083068),
(390, 53, 2, 'ikr', 31, 1525083101),
(391, 70, 2, 'Yes.', 31, 1525083220),
(392, 71, 2, 'Yeah.', 31, 1525083246),
(393, 72, 2, 'yeah', 31, 1525083264),
(394, 73, 2, 'Site was reset.', 31, 1525083288),
(395, 74, 2, 'You eat kitty treats', 31, 1525083349),
(396, 75, 2, 'Yes.', 31, 1525083374),
(397, 80, 2, 'RIP', 31, 1525083426),
(398, 86, 3, 'despacito', 31, 1525083646),
(399, 73, 2, 'I am cool!', 2, 1525084468),
(400, 1, 1, 'I should get the first 100 badge', 100, 1525085138),
(401, 166, 2, 'Trashposts /shrug', 100, 1525086755),
(402, 80, 2, 'Same except I am the first 100', 100, 1525086872),
(403, 1, 1, 'my brain dead i just woke up nothing think of', 65, 1525088227),
(404, 65, 2, 'ok but its a hack thanks', 65, 1525088264),
(405, 162, 5, 'i agree', 65, 1525088330),
(406, 167, 2, 'donate', 65, 1525088346),
(407, 80, 2, 'rip dude, i lost my username', 65, 1525088376),
(408, 166, 2, 'Trashposts /shrug [2]', 65, 1525088420),
(409, 73, 2, 'bots', 65, 1525088438),
(410, 75, 2, 'tiring', 65, 1525088537),
(411, 74, 2, 'last first 20 had to flex', 65, 1525088590),
(412, 72, 2, 'meh', 65, 1525088622),
(413, 71, 2, 'this is a trashpost go home', 65, 1525088662),
(414, 53, 2, 'this dosn\'t help', 65, 1525088712),
(415, 52, 2, 'oof', 65, 1525088732),
(416, 70, 2, 'its cool', 65, 1525088861),
(417, 150, 2, 'no u get 999999 tokens for being oof', 65, 1525088901),
(418, 86, 3, 'this is trash go away, despacito', 65, 1525089100),
(419, 94, 3, 'doughnuts', 65, 1525089131),
(420, 121, 4, 'umm wat', 65, 1525089228),
(421, 122, 4, 'testing', 65, 1525089252),
(422, 123, 4, 'testing', 65, 1525089272),
(423, 125, 4, 'testing', 65, 1525089300),
(424, 1, 1, 'i want friends', 65, 1525089434),
(425, 168, 2, 'yes , i guess', 15, 1525089606),
(426, 65, 2, 'Ban extreme he spammed all night', 85, 1525090065),
(427, 150, 2, 'Yeah', 85, 1525090149),
(428, 73, 2, 'Updates', 85, 1525090177),
(429, 72, 2, 'Ig', 85, 1525090190),
(430, 48, 2, 'Stop spamming', 85, 1525090278),
(431, 53, 2, 'this', 85, 1525090290),
(432, 139, 2, 'Yeah', 85, 1525090313),
(433, 130, 2, 'idk prob', 85, 1525090433),
(434, 167, 2, 'Not sure, I think you have to message Blank of discord.', 85, 1525090473),
(435, 168, 2, 'ig', 85, 1525090489),
(436, 71, 2, 'Yeah', 85, 1525090513),
(437, 47, 2, 'Sure?', 85, 1525090530),
(438, 32, 2, 'stop', 85, 1525090588),
(439, 94, 3, 'yess', 85, 1525090716),
(440, 142, 3, 'um, once there was a little boy named Conner.', 85, 1525090741),
(441, 173, 2, 'um ok', 65, 1525091956),
(442, 32, 2, 'where no ok lol why', 65, 1525091989),
(443, 171, 2, 'or cool', 65, 1525092006),
(444, 1, 1, 'working Realms', 60, 1525095044),
(445, 171, 2, 'Yeah, Its pretty cool.', 20, 1525096116),
(446, 94, 3, 'ok', 42, 1525096564),
(447, 1, 1, 'Upgrades working pls', 42, 1525096634),
(448, 171, 2, 'eh', 42, 1525096687),
(449, 175, 2, 'cuz thats super easy right?', 42, 1525096720),
(450, 173, 2, 'uh ok', 42, 1525096771),
(451, 32, 2, '????', 42, 1525096917),
(452, 47, 2, 'Prob not', 42, 1525096942),
(453, 71, 2, 'Just like how many hats there are\r\n\r\n\r\n\r\n\r\nwait', 42, 1525096965),
(454, 168, 2, 'its a pot with holes in it...', 42, 1525096985),
(455, 167, 2, 'If they could fix upgrade tab lol', 42, 1525097019),
(456, 130, 2, 'Its a brickplanet spin off so prob will have this unless they low on money.', 42, 1525097046),
(457, 139, 2, 'uh ok', 42, 1525097071),
(458, 53, 2, 'lol rude', 42, 1525097080),
(459, 48, 2, 'why tho', 42, 1525097109),
(460, 73, 2, '#BlameKyle', 42, 1525097141),
(461, 72, 2, 'eh', 42, 1525097166),
(462, 150, 2, 'mmhm', 42, 1525097194),
(463, 72, 2, 'Pretty cool.', 20, 1525097196),
(464, 169, 2, 'no', 42, 1525097252),
(465, 70, 2, 'no not rlly lmao', 42, 1525097274),
(466, 52, 2, 'this is kind of annoying ngl', 42, 1525097309),
(467, 74, 2, 'Hot', 42, 1525097363),
(468, 46, 2, 'yes', 42, 1525097399),
(469, 80, 2, 'haha', 42, 1525097429),
(470, 166, 2, 'no life /shrug', 42, 1525097453),
(471, 165, 2, '???', 42, 1525097518),
(472, 33, 2, 'ST\r\nO\r\nP\r\nPPP\r\n', 42, 1525097544),
(473, 160, 2, 'lol', 42, 1525097595),
(474, 152, 2, 'UHHHHHHHHHh', 42, 1525097639),
(475, 151, 2, 'cuz', 42, 1525097729),
(476, 163, 2, 'ok....', 42, 1525097747),
(477, 126, 2, 'LAAAAMMMMEEEEEE', 42, 1525097763),
(478, 128, 2, 'yeaaaaa', 42, 1525097992),
(479, 113, 2, '??????', 42, 1525098140),
(480, 124, 2, 'This site is bad atm lol', 42, 1525098186),
(481, 119, 2, 'nothing', 42, 1525098217),
(482, 33, 2, 'shutup', 71, 1525101115),
(483, 33, 2, 'wow', 10, 1525101234),
(484, 142, 3, 'he fell out of a tree', 71, 1525101452),
(485, 170, 3, 'c00l', 71, 1525101505),
(486, 86, 3, 'despacito (100) we done now.', 71, 1525101611),
(487, 177, 2, 'DON\'T WORRY FERNANDOOOOO', 71, 1525101641),
(488, 178, 3, 'longer xd', 71, 1525101712),
(489, 163, 2, 'no u', 71, 1525101773),
(490, 160, 2, 'i knew you were going to say that.', 71, 1525101828),
(491, 33, 2, '00f', 71, 1525101857),
(492, 175, 2, 'idk', 60, 1525102955),
(493, 175, 2, 'If ur gonna complain u can go back to brick planet.', 112, 1525103472),
(494, 177, 2, 'im here for u bb', 71, 1525103779),
(495, 121, 4, 'dead meme', 71, 1525103895),
(496, 86, 3, 'despapapo', 71, 1525104066),
(497, 86, 3, 'oh yeah oh no', 71, 1525104098),
(498, 170, 3, 'i have a good feeling for this site soo yeah.', 71, 1525104140),
(499, 177, 2, 'Hello', 20, 1525104142),
(500, 65, 2, 'lol true ^', 71, 1525104238),
(501, 142, 3, 'oh yeah oh no', 71, 1525104281),
(502, 124, 2, 'it\'ll get better it\'s in development/alpha ^', 71, 1525104349),
(503, 124, 2, 'ow my toe', 71, 1525104372),
(504, 178, 3, 'leave this thread forever.', 71, 1525104442),
(505, 10, 2, 'best snipe smh', 42, 1525105017),
(506, 10, 2, 'Amazing Namesnipe!', 148, 1525105131),
(507, 181, 2, 'Cream', 2, 1525107711),
(508, 181, 2, 'Me', 10, 1525108249),
(509, 10, 2, 'thanks mars', 42, 1525108443),
(510, 181, 2, 'Igdegoo', 20, 1525117069),
(511, 183, 2, 'Very good.', 20, 1525117120),
(512, 185, 2, 'No.', 12, 1525119704),
(513, 185, 2, 'yes', 42, 1525119799),
(515, 186, 2, 'REEEEE', 42, 1525119821),
(517, 185, 2, 'KKK=KewlKidsKlub', 42, 1525119846),
(518, 186, 2, 'Very good.', 20, 1525119851),
(520, 185, 2, 'not at all, very not good', 65, 1525119927),
(521, 185, 2, 'yes', 42, 1525119949),
(522, 160, 2, 'ok', 65, 1525120061),
(524, 3, 2, 'yes and the status is bad', 65, 1525120164),
(525, 188, 2, 'myself', 65, 1525120195),
(527, 186, 2, 'REEEEE [2]', 65, 1525120227),
(528, 184, 2, 'ok cool', 65, 1525120252),
(530, 181, 2, 'tetrimus', 65, 1525120298),
(531, 188, 2, 'Not sure..', 12, 1525120335),
(532, 190, 2, 'Ethan I thought we were lovers', 42, 1525120688),
(533, 192, 2, 'Ahah', 12, 1525120716),
(536, 194, 2, 'Haha yes', 12, 1525121337),
(537, 196, 2, 'me cuz im swiggety sw00ty', 16, 1525121513),
(538, 178, 3, 'aaa', 42, 1525121524),
(539, 196, 2, 'bad', 43, 1525121584),
(540, 198, 2, 'i think byte312 is my favorite', 65, 1525121811),
(541, 196, 2, 'I NEED A SHIRT , I AM NAKED!', 68, 1525121853),
(542, 198, 2, 'or noynac', 65, 1525121853),
(543, 196, 2, 'same', 160, 1525121884),
(544, 198, 2, 'both are good', 65, 1525121896),
(545, 196, 2, 'Igdegoo', 20, 1525121905),
(546, 196, 2, 'JEALOUS OF MAH SHIRT?', 16, 1525121908),
(547, 190, 2, 'yeah it really is racist. apart from the status', 65, 1525121996),
(549, 200, 3, '.exe', 2, 1525122165),
(550, 200, 3, 'ok', 12, 1525122512),
(551, 198, 2, '....', 2, 1525122576),
(552, 201, 2, 'ayy', 12, 1525122668),
(553, 201, 2, 'Igdegoo', 20, 1525122686),
(555, 198, 2, 'cream', 12, 1525122711),
(556, 201, 2, 'favorite user is myself', 65, 1525122825),
(558, 198, 2, 'noy', 16, 1525122920),
(559, 194, 2, 'Time to delete this post learn how to read the rules smh', 2, 1525122950),
(560, 202, 2, 'Nice!', 39, 1525123806),
(561, 203, 2, 'i am an og :(', 12, 1525123955),
(562, 203, 2, 'well rip me', 65, 1525123962),
(563, 103, 2, 'I am 19 users off.', 39, 1525124006),
(564, 103, 2, 'I have', 10, 1525124049),
(565, 101, 2, 'I think they are still testing shirts, they might release them today or tomorrow.', 39, 1525124062),
(566, 99, 2, 'Yes.', 39, 1525124078),
(567, 98, 2, 'Hi! We are all new site was released 1 day ago.', 39, 1525124092),
(568, 97, 2, 'I am catching up bud!', 39, 1525124117),
(569, 96, 2, 'I am catching up!', 39, 1525124126),
(571, 145, 2, 'Tetrimus will probably add games somewhere in September.', 39, 1525124159),
(572, 148, 2, 'I will make my own group, duh.', 39, 1525124180),
(573, 120, 2, 'Cmon kids, site was released 1 day ago and we\'re arguing.', 39, 1525124220),
(574, 108, 2, 'Its free.', 39, 1525124239),
(575, 116, 2, 'Get banned!', 39, 1525124253),
(576, 6, 2, 'Hola!', 39, 1525124336),
(577, 5, 2, 'I\'m good, feeling great since I have the old model.', 39, 1525124360),
(578, 4, 2, 'Hello!', 39, 1525124368),
(579, 11, 2, 'That\'s not good!', 39, 1525124409),
(580, 9, 2, 'Probably a glitch.', 39, 1525124440),
(581, 8, 2, 'Can\'t you message him?', 39, 1525124463),
(582, 17, 2, 'Hello for like the 6th time.', 39, 1525124472),
(583, 187, 4, 'oLOL', 56, 1525124474),
(584, 15, 2, 'Oh! That game.', 39, 1525124499),
(585, 9, 2, 'Staff', 2, 1525124502),
(586, 7, 2, 'Oh! I thought you were coolboy14.', 39, 1525124533),
(587, 12, 2, 'Testing?', 39, 1525124544),
(588, 13, 2, 'aaa is my favorite number on the alphabetical color wheel.', 39, 1525124619),
(589, 12, 2, 'Yeah', 10, 1525124625),
(590, 14, 2, 'Its back!', 39, 1525124630),
(591, 16, 2, 'I already made a thread.', 39, 1525124645),
(592, 23, 2, 'Well my friend, we must shoot you down.', 39, 1525124661),
(593, 22, 2, 'I keep thinking that you are saying Connor stop', 39, 1525124897),
(594, 30, 2, 'Not going to point who.', 39, 1525124913),
(595, 28, 2, 'Isn\'t it that show where they have that really skinny dude with a hoodie and the yellow dog with glasses.', 39, 1525125010),
(596, 27, 2, 'Woah!', 39, 1525125022),
(597, 25, 2, 'First to spam to level 1 *COUGH*', 39, 1525125040),
(598, 42, 2, 'Actually back in march a user named cake/rush had like 97 post and then they did a reset and he lost it all.', 39, 1525125103),
(599, 38, 2, 'Nice?', 39, 1525125152),
(600, 37, 2, 'Please stop!', 39, 1525125162),
(601, 55, 2, 'I like big shacks.', 39, 1525125195),
(602, 50, 2, 'Can you please stop!', 39, 1525125222),
(603, 51, 2, 'Get banned, please.', 39, 1525125237),
(604, 49, 2, ';-;', 39, 1525125247),
(605, 58, 2, 'He is trying to get 100 threads in.', 39, 1525125261),
(607, 205, 2, 'https://cdn.discordapp.com/attachments/439963712309428224/440612155427913731/petrock.png', 12, 1525125267),
(608, 59, 2, 'Yeah that is including you.', 39, 1525125298),
(609, 131, 3, 'He needs more.\r\n-Jeffy', 64, 1525125302),
(610, 60, 2, 'inb4 that kid gets banned.', 39, 1525125312),
(611, 61, 2, 'Finally a useful thread from you.', 39, 1525125324),
(612, 205, 2, 'oh my gosh yess :D roxy still remember dat', 170, 1525125393),
(613, 62, 2, 'Not the first thread, but the guy had the first thread.', 39, 1525125411),
(614, 61, 2, 'ok', 12, 1525125414),
(615, 2, 2, 'coolio?', 39, 1525125422),
(616, 63, 2, 'gang gang.', 39, 1525125436),
(617, 64, 2, 'It looks hawt!', 39, 1525125450),
(618, 77, 2, 'It will also reset your post and then you end up wasting your time.', 39, 1525125494),
(619, 78, 2, 'If we are able to I\'d make a club called Night Night Gang', 39, 1525125542),
(620, 63, 2, 'Here!', 20, 1525125577),
(621, 76, 2, 'I own the account night and ravioli, what will be big though is the fact I have the old character model.', 39, 1525125588),
(622, 109, 2, 'Probably.', 39, 1525125595),
(623, 109, 2, 'The last and final reset was yesterday.', 12, 1525125615),
(624, 111, 2, 'Sort of.', 39, 1525125618),
(625, 208, 2, 'no u ghost', 65, 1525125625),
(626, 114, 2, 'exe', 39, 1525125642),
(627, 115, 2, 'Your obsession with name snipes.', 39, 1525125660),
(629, 112, 2, 'xD', 39, 1525125670),
(630, 208, 2, 'U pet rock gonna be ghost if you nubs dont fix this!', 170, 1525125700),
(633, 18, 2, 'Not much.', 39, 1525125881),
(634, 159, 2, '1 token and 10 coins.', 39, 1525125950),
(635, 144, 2, 'We are not starfish, speak english.', 39, 1525125968),
(636, 156, 2, 'Good idea!', 39, 1525125983),
(637, 153, 2, 'We are not losers.', 39, 1525125994),
(638, 158, 2, 'good.', 39, 1525126007),
(639, 154, 2, 'I kinda don\'t miss my old ID it was 134 back in march and then 2 resets ago it was 213', 39, 1525126062),
(640, 149, 2, 'Same.', 39, 1525126072),
(641, 153, 2, 'Ethan you are noob AND I WILL BURN YOUR TOAST NEXT TIME I SEE YOU!', 170, 1525126112),
(642, 129, 2, 'Not for long!', 39, 1525126114),
(643, 158, 2, 'Good.', 12, 1525126179),
(644, 129, 2, 'no life', 42, 1525126206),
(645, 135, 2, 'Not cool!', 39, 1525126219),
(646, 133, 2, 'Maybe!', 39, 1525126243),
(647, 211, 2, 'I was a user back in march.', 39, 1525126287),
(648, 41, 2, 'I am not near that.', 39, 1525126361),
(649, 211, 2, 'kk', 170, 1525126362),
(651, 214, 2, 'cool', 171, 1525126705),
(652, 214, 2, 'cool gang', 170, 1525126737),
(653, 39, 2, 'Yes! Stop spamming!', 39, 1525126858),
(654, 45, 2, 'Oh No! Not again!', 39, 1525126870),
(655, 24, 2, 'I have 75 coins and 1 token.', 39, 1525126925),
(656, 21, 2, 'Hey! VSauce here! Where are your fingers?', 39, 1525126945),
(657, 211, 2, 'I have been hear since April 4th.', 85, 1525127002),
(658, 29, 2, 'I want to wear a shirt, but If I do my old model will go away.', 39, 1525127002),
(659, 211, 2, 'here*', 85, 1525127008),
(660, 31, 2, 'Goodnight.', 39, 1525127017),
(661, 19, 2, 'Ayyyeee!!!', 39, 1525127039),
(662, 20, 2, 'Me!', 39, 1525127062),
(663, 20, 2, 'me', 148, 1525127133),
(664, 20, 2, 'me if u are lmao', 12, 1525127207),
(668, 219, 2, 'waw', 12, 1525127413),
(669, 220, 2, 'Actually, that does not look that bad.', 85, 1525128158),
(670, 134, 2, 'lies', 39, 1525128536),
(671, 84, 2, 'Soon!', 39, 1525128722),
(673, 83, 2, 'not through the site, no', 39, 1525128787),
(674, 82, 2, 'Don\'t abuse the glitches.', 39, 1525128801),
(675, 81, 2, 'Probably you.', 39, 1525128808),
(678, 81, 2, 'I see you at level 2... You?', 30, 1525128919),
(680, 221, 2, 'The world shall never know... Not till someone gets to level 3.', 30, 1525129045),
(682, 221, 2, 'Yes, let\'s find out.', 30, 1525129139),
(683, 221, 2, 'Yes, there is, but you need over 200.', 85, 1525129241),
(685, 223, 2, 'no one care that u leave Ethan yu are a loser meany but', 170, 1525129578),
(689, 228, 2, '123', 10, 1525130127),
(690, 229, 2, 'ha', 10, 1525130173),
(692, 170, 3, 'hi', 13, 1525130486),
(693, 235, 2, 'tokens', 12, 1525130658),
(694, 235, 2, 'They are called \'Tokens\'', 31, 1525130849),
(695, 236, 2, 'Noynac is the best admin.', 31, 1525130890),
(696, 236, 2, 'Ethan\r\n\r\nNow you spam?', 10, 1525130980),
(697, 234, 2, 'Bad.', 31, 1525130995),
(698, 234, 2, '...', 10, 1525131007),
(700, 233, 2, 'Spamming threads that are called \'test\' are useless as you\'re testing nothing. x3', 31, 1525131037),
(701, 232, 2, 'EXCUSE', 31, 1525131112),
(703, 237, 2, 'you just do it.', 39, 1525131135),
(704, 231, 2, 'Stop spamming. &gt;:T', 31, 1525131139),
(705, 231, 2, 'aaaaaaaaaaaaaaaaaaaaaaa', 10, 1525131160),
(706, 229, 2, 'Understood. The money will be delivered to you\'re account soon.', 31, 1525131227),
(707, 137, 3, 'agree', 133, 1525131235),
(708, 230, 2, 'Spamming threads that are called \'test\' are useless as you\'re testing nothing. x3', 31, 1525131252),
(709, 242, 2, 'Ok.', 10, 1525131261),
(710, 228, 2, 'Stahp.', 31, 1525131264),
(711, 137, 3, 'hi', 13, 1525131282),
(712, 227, 2, 'What?', 31, 1525131287),
(714, 226, 2, 'Banning...', 31, 1525131326),
(715, 215, 3, 'The poison is in it\'s digestive track, so now you\'re poisoned!', 31, 1525131380),
(716, 223, 2, 'Yay, now I\'m first!', 31, 1525131427),
(719, 223, 2, 'ethan -\r\n&quot;Ban Doom he 1000000300% legit spams the threads so delete him&quot;\r\nReally?', 10, 1525131671),
(721, 223, 2, 'Proof', 10, 1525131732),
(723, 223, 2, 'This is spam.', 85, 1525131806),
(724, 164, 5, 'hi', 13, 1525132103),
(725, 245, 2, 'I don\'t know', 10, 1525132539),
(726, 224, 2, 'Ban', 31, 1525132637),
(727, 221, 2, 'Yes, there\'s even a level 100.', 31, 1525132674),
(728, 222, 2, 'Wrong.', 31, 1525132700),
(729, 134, 2, 'no', 31, 1525132750),
(730, 220, 2, 'Eh...', 31, 1525132769),
(731, 219, 2, 'foO', 31, 1525132796),
(732, 223, 2, 'hi', 180, 1525132953),
(733, 240, 2, '*mute @ethan#4928', 31, 1525132984),
(734, 239, 2, '*mute @ethan#4928', 31, 1525133018),
(735, 238, 2, '*mute @ethan#4928', 31, 1525133045),
(736, 225, 2, 'Ehh. 4-10', 31, 1525133083),
(737, 218, 2, 'cmon', 10, 1525133146),
(738, 218, 2, 'Says the one spamming. :rolling_eyes:', 31, 1525133157),
(739, 218, 2, 'and night isn\'t spamming right now', 10, 1525133180),
(740, 217, 2, 'No me.', 31, 1525133243),
(742, 216, 2, 'You spam though?', 31, 1525133254),
(743, 213, 2, 'But you spam?', 31, 1525133287),
(745, 214, 2, 'No I\'m too cool!', 31, 1525133318),
(746, 211, 2, 'Joined a few days ago...', 31, 1525133359),
(747, 247, 2, 'Uhm.... The T Virus', 31, 1525133570),
(749, 1, 1, 'clothing and trading', 142, 1525133783),
(750, 247, 2, 'You spammed, so you will get banned when the feature is added.', 85, 1525133888),
(752, 247, 2, 'I love how you don\'t even stop when you know the consequences.', 85, 1525134155),
(754, 248, 2, 'Be quiet', 7, 1525134409),
(755, 248, 2, 'No you.', 31, 1525134477),
(757, 249, 2, 'Good, you?\r\n\r\n(Cool username, by the way.)', 31, 1525135195),
(758, 249, 2, 'Things are going pretty nicely.', 98, 1525135269),
(759, 249, 2, 'it\'s going good', 94, 1525135550),
(760, 250, 2, 'Same.', 12, 1525135952),
(761, 252, 2, 'bump', 170, 1525136313),
(762, 252, 2, 'bump', 12, 1525136419),
(763, 253, 2, 'thiccccccccccc', 170, 1525137640),
(764, 254, 3, 'no', 71, 1525137912),
(765, 215, 3, 'aka trashposting.', 71, 1525137942),
(766, 255, 2, 'wow thanks', 71, 1525137982),
(767, 253, 2, 'too thicc for school', 71, 1525138016),
(768, 255, 2, '0.5 points', 170, 1525138162),
(769, 251, 2, 'https://discord.gg/sTzFvzT', 71, 1525138165),
(770, 255, 2, '0.5 points', 170, 1525138180),
(771, 255, 2, 'shut up trashposter', 71, 1525138201),
(772, 255, 2, '0.5 points', 170, 1525138219),
(773, 255, 2, '0.5 points', 170, 1525138227),
(774, 211, 2, 'I\'ve been here longer than most people.', 71, 1525138286),
(775, 255, 2, 'no', 170, 1525138298),
(776, 211, 2, 'And Thrawn just because you were in before the reset doesn\'t make you an &quot;old&quot; user, it lets me know that you actually joined more recently.', 71, 1525138342),
(777, 211, 2, 'k gud job Josh. I am old bum', 170, 1525138358),
(778, 247, 2, 'thanks to your trashposting.', 71, 1525138504),
(779, 257, 2, 'no I was born skinny', 71, 1525138542),
(780, 207, 3, 'kys', 71, 1525138593),
(781, 248, 2, 'if a noobie starts getting personal items im done with this site.', 71, 1525138639),
(782, 257, 2, 'No you just auntyrexist u ned to et fud I have good PB&amp;J\'s cooking in oven I will give PB&amp;J for 1 coin.', 170, 1525138642),
(783, 252, 2, 'Thrawn, the new trashposter.', 71, 1525138703),
(784, 247, 2, 'yes (first quote ever)', 71, 1525138761),
(785, 214, 2, 'stop trashposting in forums.', 71, 1525138806),
(786, 251, 2, ':)', 71, 1525138827),
(787, 256, 3, 'it makes me sick seeing trashposters name climb the leaderboard.', 71, 1525138870),
(788, 249, 2, 'Good, how are you?', 71, 1525138907),
(789, 142, 3, 'yes no maybe so', 71, 1525138962),
(790, 255, 2, 'I am sure this helped out many, thanks!', 85, 1525139153),
(791, 259, 2, 'FIRE!', 2, 1525139179),
(792, 259, 2, '****', 10, 1525139197),
(793, 259, 2, 'Thanks for the support Cream. the starred word meant to be Succ but it star', 170, 1525139274),
(794, 259, 2, 's--uuuuuuk', 170, 1525139370),
(795, 249, 2, 'Hello', 10, 1525139379),
(796, 218, 2, 'I don\'t know maybe you should stop.', 39, 1525139457),
(797, 249, 2, 'Good and you?', 39, 1525139500),
(798, 247, 2, 'Congratulations you spent your time spamming!', 172, 1525139943),
(799, 261, 2, 'hello\r\n', 90, 1525140628),
(800, 261, 2, 'OMG', 42, 1525140847),
(801, 261, 2, 'Howdy!', 30, 1525141030),
(803, 218, 2, 'omg haxcker get ethan', 30, 1525141233),
(804, 265, 2, 'hi', 90, 1525141240),
(805, 265, 2, 'sup', 185, 1525141370),
(806, 266, 2, '100 is the user, 100 is the ID', 90, 1525141459),
(807, 187, 4, 'shut your fucking mouth', 81, 1525142658),
(808, 187, 4, '*shut your f ucking mouth', 81, 1525142671),
(809, 65, 2, 'YUP\r\n\r\nEVERYONE DO NOT SPAM\r\n\r\n', 189, 1525143285),
(810, 276, 2, 'That\'s from GamingWithKev thats so obvious.', 190, 1525143716),
(811, 277, 2, 'hello', 190, 1525144174),
(812, 277, 2, 'hi, how ya doin? :)', 4, 1525144209),
(814, 276, 2, 'THE RAREST NAME', 192, 1525145436),
(815, 276, 2, 'How did you get 5k views?', 193, 1525145597),
(816, 276, 2, 'Nvm its obvious you view botted this thread', 193, 1525145614),
(818, 280, 2, 'LOL', 189, 1525146402),
(819, 276, 2, 'of course its from gamingwithkevin.\r\n', 189, 1525146500),
(821, 1, 1, 'They Wiping Out The Forums Again! They Just Wiped Out The Site This Morning! Wow', 178, 1525152517),
(822, 1, 1, 'They Should Add Blog News Like Weekly Things About The Game Soon When There Is More To The Game!', 178, 1525152961),
(823, 1, 1, 'And If You Do Consider It Can I Be In Charge Of The Blog!', 178, 1525152995),
(824, 294, 3, 'bump', 50, 1525170776),
(825, 294, 3, 'Bump2', 50, 1525170801),
(826, 294, 3, 'bump3', 50, 1525170826),
(827, 294, 3, 'bump4', 50, 1525170839),
(828, 294, 3, 'bump5', 50, 1525170848),
(829, 294, 3, 'bump6', 50, 1525170901),
(830, 294, 3, 'RIP forum', 50, 1525170929),
(831, 297, 3, 'LOL!', 50, 1525170979),
(832, 297, 3, 'LOL!', 50, 1525170992),
(833, 297, 3, 'LOL!', 50, 1525171010),
(834, 297, 3, 'LOL!', 50, 1525171036),
(835, 297, 3, 'LOL! No one is still online', 50, 1525171061),
(836, 255, 2, 'Hard work.', 140, 1525171319),
(837, 295, 2, 'uh im bored lmao!', 50, 1525171498),
(838, 172, 5, 'idek', 135, 1525175248),
(839, 293, 2, 'Because of school.', 8, 1525175445),
(840, 300, 2, 'He wasn\'t banned, but he lost all of his points', 85, 1525176438),
(841, 301, 2, 'wipped*', 39, 1525176494),
(842, 299, 2, 'I got 3 snipe accounts (including this one) and 2 of them have the first character model.\r\n\r\nget rekt xddd', 39, 1525176583),
(843, 299, 2, 'ID snipe\r\n', 9, 1525185160),
(844, 302, 2, 'lol no \r\ntetricola \r\n', 123, 1525188199),
(845, 302, 2, 'https://www.youtube.com/watch?v=k_5zELmun9E', 156, 1525188403),
(846, 306, 3, 'wuz poppin', 147, 1525188747),
(847, 301, 2, 'yes!', 123, 1525188820),
(848, 307, 2, 'No', 10, 1525190313),
(849, 303, 2, 'a little', 10, 1525190443),
(850, 278, 2, 'ya', 71, 1525193041),
(851, 255, 2, 'Ok bye', 197, 1525194780),
(852, 306, 3, 'hola', 171, 1525195136),
(853, 297, 3, 'no u', 169, 1525195719),
(854, 303, 2, 'no u dont that id is dumbo', 71, 1525195779),
(855, 297, 3, 'extreme da trashposter', 71, 1525195828),
(856, 300, 2, 'Banned', 191, 1525195970),
(857, 300, 2, 'For a week', 191, 1525195983),
(858, 307, 2, 'No.', 20, 1525195984),
(859, 310, 2, 'good', 10, 1525196345),
(860, 310, 2, 'Good.', 20, 1525196356),
(861, 312, 2, 'me', 10, 1525198658),
(862, 312, 2, 'Oh ok', 191, 1525198884),
(863, 305, 2, 'no you are not the only survivor', 40, 1525198927),
(864, 313, 2, 'Please do not ask why, \r\neveryone will recieve 1000 coins tonight.', 200, 1525199984),
(865, 313, 2, 'Oh \r\n\r\nHis name is not Tetrimus', 10, 1525201825),
(866, 314, 2, 'Hello Bob', 10, 1525202079),
(867, 314, 2, 'u not bob', 204, 1525202418),
(869, 314, 2, 'no i am bob', 205, 1525203952),
(870, 311, 2, 'I hope.', 12, 1525204077),
(871, 311, 2, 'Never!', 2, 1525204125),
(872, 314, 2, '0_0', 10, 1525204134),
(873, 302, 2, 'Tetricola', 12, 1525204202),
(874, 313, 2, 'Wow! We sure are going to get copyrighted by Brickplanet.', 2, 1525204205),
(875, 301, 2, 'Whipped.', 12, 1525204251),
(876, 313, 2, 'ikr', 12, 1525204270),
(877, 311, 2, 'oof', 139, 1525204302),
(878, 315, 2, 'oooo', 12, 1525204546),
(879, 305, 2, 'I actually am the only survivor of the very first avatar.', 39, 1525207214),
(880, 318, 2, 'Ok', 10, 1525209768),
(882, 318, 2, 'ahsa', 12, 1525210556),
(883, 319, 2, 'me', 10, 1525210889),
(884, 322, 2, 'Nuke, Love to see you forming but please do not spam!', 64, 1525211226),
(885, 322, 2, 'oh noes', 30, 1525211363),
(886, 318, 2, 'I don\'t know who dark is, but he seems cool!', 8, 1525211775),
(887, 326, 2, 'That was so funny I spilt my drink!', 64, 1525211903),
(888, 328, 2, 'I will be the first to make there own brand.', 64, 1525212181),
(889, 328, 2, 'No that me you bum I will beat u to it fite me nib i make gud templates and wear them and I be guccied down supper soon and I also will knit my pet rock a gucci sweater someting I gon beat u 2 nib', 170, 1525212261),
(890, 328, 2, 'No, your not nib!', 64, 1525212296),
(891, 330, 2, 'About spamming, Do we need it?', 64, 1525212537),
(892, 326, 2, 'Same.', 31, 1525212588),
(893, 318, 2, 'yess I\'m on there', 31, 1525212623),
(894, 328, 2, 'REEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE', 170, 1525212632),
(895, 324, 2, 'That was a staff member who uploaded it xd', 31, 1525212720),
(896, 322, 2, 'Agreed.', 31, 1525212760),
(897, 323, 2, 'Understood.', 31, 1525212799),
(898, 320, 2, 'Yes. Levels... There\'s a post about it.', 31, 1525212884),
(899, 335, 2, 'Oh, I came here for banana bush.', 64, 1525212885),
(900, 321, 2, 'There\'s a post about it.', 31, 1525212941),
(901, 319, 2, 'ME!', 31, 1525213107),
(902, 317, 2, 'okei', 31, 1525213175),
(903, 319, 2, 'Oi nib when Clubs are made I am gonna make a Rap record label called Lil City Boomin and I was planning on offering you a deal but u noob loser so I no invite u bum', 170, 1525213201),
(904, 331, 2, 'Makes sense.', 31, 1525213212),
(905, 330, 2, 'No citrus', 31, 1525213243),
(906, 329, 2, 'Yes', 31, 1525213263),
(907, 330, 2, 'maybe', 207, 1525213263),
(908, 327, 2, ';(', 31, 1525213274),
(909, 338, 2, 'What? Did your mom just put your pillow pet up for adoption?', 170, 1525213293),
(910, 334, 2, 'KK', 31, 1525213392),
(911, 336, 2, 'OFF-SITE LINKS!', 31, 1525213440),
(912, 338, 2, 'what, did your mom give you the 2 dollar leap frog computer again?', 207, 1525213471),
(913, 338, 2, 'Oi you bum wanna fite u bum noob loser I dont have lep frog computter but I melt your bag of marshmellows tho oi oi niiiib', 170, 1525213582),
(914, 337, 2, 'That makes no sense. A onesie is called a \'onesie\' because it\'s two pieces of clothing in one.', 31, 1525213586),
(915, 338, 2, 'i swear i\'ll dab on you', 207, 1525213615),
(916, 335, 2, 'lol', 31, 1525213741),
(917, 338, 2, '*shoots kitties*', 31, 1525213824),
(918, 338, 2, '(Shooting kitties out of a kitty gun)', 31, 1525214020),
(919, 338, 2, 'ono', 207, 1525214049),
(920, 338, 2, 'oi', 207, 1525214066),
(921, 338, 2, 'oi', 207, 1525214081),
(922, 341, 2, 'No.', 31, 1525214504),
(923, 340, 2, 'Flexing', 31, 1525214599),
(924, 339, 2, 'spam goes in off-topic', 31, 1525214638),
(925, 255, 2, 'yes I got mentioned :)', 31, 1525214765),
(926, 278, 2, 'Already done, kind sur', 31, 1525214774),
(927, 335, 2, 'LOL', 50, 1525216092),
(928, 344, 2, 'Did the entire site reset or something?', 213, 1525217676),
(929, 344, 2, 'Yes, it did.', 90, 1525218009),
(930, 343, 2, 'Good.', 31, 1525218082),
(931, 344, 2, 'Yeah. But you posted this on an account named &quot;Shadow&quot;', 31, 1525218116),
(932, 346, 2, 'ok i will maybe join', 90, 1525218931),
(933, 344, 2, 'he obviously recreated it...', 90, 1525218990),
(934, 346, 2, 'ok noob', 170, 1525219013),
(935, 347, 2, 'What? No, this is clearly a bug with them testing out.', 85, 1525219356),
(936, 349, 2, 'No I make better faces.', 170, 1525219609),
(937, 349, 2, 'noob', 170, 1525219625),
(938, 349, 2, 'You expect me to believe that when all you do on the forums is practically make things a big deal and have grammar what so ever?', 85, 1525219753),
(939, 349, 2, 'yes', 170, 1525219799),
(940, 349, 2, 'Yeah, okay.', 85, 1525219937),
(941, 349, 2, 'Good', 10, 1525219991),
(942, 348, 2, 'Okay?', 31, 1525220326),
(943, 347, 2, 'RIP', 31, 1525220347),
(944, 350, 2, 'Was the name really necessary?', 31, 1525220390),
(945, 349, 2, 'They are really nice.', 31, 1525220424),
(946, 345, 2, 'So we can make shirts', 31, 1525220510),
(947, 345, 2, ':tada:\r\n:D', 31, 1525220595),
(948, 351, 2, 'ha', 10, 1525220624),
(949, 350, 2, 'Yes you noob. where u live? under pet rock?', 170, 1525220642),
(950, 348, 2, 'k\'', 170, 1525220730),
(951, 348, 2, 'this was a very important announcement that probably belongs in off topic?\r\n/shrug\r\n\r\n', 90, 1525222202),
(952, 349, 2, 'Thanks', 85, 1525222784),
(953, 352, 2, 'awesome....', 10, 1525224515),
(954, 352, 2, 'EW', 31, 1525226008),
(955, 355, 2, 'Well, recently reset, not first', 5, 1525229229),
(956, 357, 3, 'Okay', 5, 1525229370),
(957, 357, 3, '*jeapardy music plays', 5, 1525229428),
(958, 356, 2, 'Okay', 10, 1525229679),
(959, 358, 2, 'the new pothead looks great', 109, 1525230296),
(960, 358, 2, 'Don\'t bot the views', 10, 1525230717),
(961, 359, 2, 'You should appeal', 5, 1525232853),
(962, 357, 3, 'Huh', 5, 1525232973),
(963, 362, 3, 'bump', 50, 1525232993),
(964, 362, 3, 'bump2', 50, 1525233060),
(965, 359, 2, 'I have\r\n\r\nWaiting for response', 218, 1525233106),
(966, 362, 3, 'bumpkashvjdmasvda', 50, 1525233351),
(967, 362, 3, 'this is the most boring thread', 50, 1525233473),
(968, 362, 3, 'bumpasjdhvaskdvsavdwavasd', 50, 1525233834),
(969, 362, 3, 'sakvdhsamdvb', 50, 1525233980),
(970, 364, 2, 'New avatars', 10, 1525234192),
(971, 364, 2, 'Btw still have the old one', 10, 1525234211),
(972, 364, 2, 'my face wtf', 116, 1525234234),
(973, 362, 3, 'Subeme La Radio', 50, 1525235029),
(974, 362, 3, 'Dusk Till Dawn', 50, 1525235253),
(975, 362, 3, 'Ok i am so bored', 50, 1525235285),
(976, 276, 2, 'hi wasup', 189, 1525235895),
(977, 366, 2, 'lol', 64, 1525241681),
(978, 365, 2, 'RIP Pencil', 31, 1525242302),
(979, 366, 2, 'lol', 31, 1525242315),
(980, 359, 2, 'RIP', 31, 1525242809),
(981, 361, 2, 'No.... Maybe...', 31, 1525242832),
(982, 360, 2, 'No.', 31, 1525242853),
(983, 358, 2, 'yeah', 31, 1525242875),
(984, 364, 2, 'it okie', 31, 1525242903),
(985, 356, 2, 'k?', 31, 1525242929),
(986, 363, 3, 'Oh, very sad!', 64, 1525244518),
(987, 278, 2, 'Yes sir! I\'m in there!', 64, 1525244556),
(988, 368, 2, 'Jeffy', 2, 1525256216),
(989, 278, 2, 'im onle 98.7% gay so it fine I fittering it', 223, 1525257216),
(990, 255, 2, 'you might be hacking if you have 100 replies and no threads', 65, 1525259533),
(991, 369, 2, 'What happened to my text', 224, 1525260337),
(992, 297, 3, 'Stop it, get some help.', 195, 1525262095),
(993, 363, 3, 'OMG the legend is here.', 195, 1525262149),
(994, 333, 3, 'What?!?', 172, 1525264516),
(995, 341, 2, 'yes', 28, 1525269790),
(996, 1, 1, 'Ayy extreme is promoting my badge', 9, 1525274613),
(997, 357, 3, 'kk ggfds', 147, 1525275805),
(998, 363, 3, 'lol rip', 71, 1525275825),
(999, 374, 3, 'wait', 71, 1525275864),
(1000, 306, 3, '&quot;boi&quot; spaz attack', 71, 1525275909),
(1001, 357, 3, 'l0leg4g', 71, 1525275980),
(1002, 373, 2, 'no', 71, 1525276021),
(1003, 371, 2, 'sure', 71, 1525276122),
(1004, 375, 2, 'g00d', 10, 1525278558),
(1005, 341, 2, 'no and never', 10, 1525278725),
(1006, 376, 2, 'nou', 185, 1525282063),
(1007, 341, 2, 'nope', 25, 1525282438),
(1008, 359, 2, 'this isnt bp \r\nleave', 112, 1525284932),
(1009, 379, 2, 'sToP tHe BoTs PlEaSe', 10, 1525290920),
(1010, 379, 2, 'What do you do The?', 2, 1525292722),
(1011, 379, 2, 'i do foruming as a job xdd', 12, 1525293247),
(1012, 380, 3, 'smh', 12, 1525293266),
(1013, 380, 3, 'haha', 10, 1525293304),
(1014, 378, 2, 'I got verified.', 12, 1525293393),
(1015, 380, 3, 'Your special now woo hoo....', 234, 1525293748),
(1016, 384, 2, 'mafia', 12, 1525294262),
(1017, 379, 2, 'this kinda looks botted because there isnt even 500 people in this lego game', 116, 1525296427),
(1018, 386, 2, 'ehh', 12, 1525297103),
(1019, 255, 2, 'Won\'t that just cause people to spam make threads?', 211, 1525298730),
(1020, 386, 2, 'Or make it so threads/replies have to be a certain length in order to receive maximum points. (above the 3 character limit)', 39, 1525300788),
(1021, 378, 2, 'That would be cool! I\'d like to be verified by staff although it won\'t ever happen.', 39, 1525301154),
(1022, 359, 2, 'Now you have to wait like 2 or 3 months before they reply with something like &quot;We are sorry your appeal must be sent again for security issues&quot;', 39, 1525301242),
(1023, 379, 2, 'Even if there was a spot they wouldn\'t hire you because you\'re breaking the rules by botting  your views.', 39, 1525301302),
(1024, 387, 2, 'Good, hackers arent able to get in! This is a good sign.', 236, 1525301433),
(1025, 384, 2, 'I\'d rather not be on level 1. I\'d much rather be on my current level of 69.\r\nxdxd', 39, 1525301550),
(1026, 387, 2, 'What kind of test is this?!?', 39, 1525301815),
(1027, 387, 2, 'He tried opening an alert window.', 17, 1525302352),
(1028, 387, 2, 'I\'m clueless when it comes to computers.', 39, 1525303604),
(1029, 389, 2, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 12, 1525304547),
(1030, 389, 2, 'AAHAHA', 191, 1525305152),
(1031, 357, 3, 'NIGGARD', 191, 1525305183),
(1032, 276, 2, '[][][', 189, 1525309241);
INSERT INTO `replies` (`id`, `topic_id`, `forum_id`, `message`, `poster`, `date`) VALUES
(1033, 394, 3, 'You can use \r\n\r\n\r\nfunction esape($string) { return htmlentities($string, ENT_QUOTES, \'utf-8\');}\r\n\r\nthen when use is using any type of test to output like forums and profiles use this esape($Message) then if the user trys to use XSS or Html script it will not run since php will not let it.', 239, 1525309875),
(1034, 351, 2, 'no u', 171, 1525312593),
(1035, 395, 2, 'There will be a live-chat like Discord inside of the website.\r\nFeel free to be there, it will be more convenient.', 3, 1525312889),
(1036, 395, 2, 'Doing good so far!', 85, 1525315693),
(1037, 379, 2, 'I literally do nothing in my spare time, I do have a job as head manager at Walmart xd', 112, 1525316338),
(1038, 379, 2, '@Night I didn\'t bot anything lol', 112, 1525316396),
(1039, 379, 2, 'You definitely are the head of a Walmart location, and you botted your views.', 85, 1525316581),
(1040, 397, 2, 'Um okay..', 85, 1525316642),
(1041, 379, 2, 'First of all you can\'t &quot;bot&quot; views. And secondly Walmart pays a decent amount for a 18yr old like me', 112, 1525316674),
(1042, 397, 2, 'but remember, this is still in alpha! im sure we\'ll grow a lot more when we actually release :)', 4, 1525324438),
(1043, 276, 2, 'DONT KICK YOUR BOI OUT', 189, 1525334139),
(1044, 379, 2, 'HEY HEY HEY I WILL BEAT YOU IN VIEWS', 189, 1525334333),
(1045, 379, 2, 'Can\'t wait for your account to visit the heaven land which is &quot;Ban-Land&quot;', 140, 1525350618),
(1046, 276, 2, 'Quit tetrimus and your life because you were born to just bot.', 140, 1525350661),
(1047, 400, 3, 'That belongs in Tetrimus Hub not off-topic', 39, 1525350993),
(1048, 397, 2, 'You make the community worse. You bot your thread views you lie saying you didn\'t you also lied about your age and job. The community would be like 5x better if you changed or left.', 39, 1525351187),
(1049, 402, 2, 'Because it was the same avatar with a different render.', 3, 1525355809),
(1050, 396, 2, 'iH', 10, 1525361685),
(1051, 400, 3, '^ you\'re wrong', 71, 1525362001),
(1052, 396, 2, 'tRaShPoSt', 71, 1525362028),
(1053, 379, 2, 'dude beat me, I don\'t care about views! \r\nBut thanks!!', 112, 1525362059),
(1054, 397, 2, '... (so what)', 71, 1525362074),
(1055, 379, 2, 'they no longer hire and they won\'t hire for another 5 months. (also you being an admin would be horrific.)', 71, 1525362267),
(1056, 397, 2, 'I didn\'t lie about my job I do work at walmart. \r\nHow would you know I don\'t work at walmart. \r\n \r\nSecond off you\'re just making the community bad by bringing in hatred. If you dislike me thats fine by me we all have are opinions but think about the positive stuff, we have a loving community with pretty AWESOME moderators who actually care about the community. \r\n\r\n:) i\'ll try to stop doing whatever i\'m doing wrong', 112, 1525362367),
(1057, 398, 2, 'tRaShPoSt', 71, 1525362417),
(1058, 381, 3, 'i hate u', 71, 1525362433),
(1059, 397, 2, 'I didn\'t bot anything but if you say so.. \r\n \r\nit dosen\'t even matter \r\nwhoever got views on my forum post props to them but the forums are getting wiped soon so it dosen\'t matter', 112, 1525362542),
(1060, 395, 2, 'good \r\nim tired but I gotta work at 5', 112, 1525362795),
(1061, 379, 2, 'OMG RUN THIS THREADS ON FIREEEEEEEEEEEEEEEEEEEE \r\nAHHHHHHHHHHHHHHHHHHHHHHHHHH \r\n', 112, 1525362878),
(1062, 398, 2, 'Forums are getting whiped who cares', 112, 1525362972),
(1063, 398, 2, 'wiped', 112, 1525362978),
(1064, 404, 2, 'Like I said these ideas could be implemented but I don\'t know how they would function. \r\n', 112, 1525363389),
(1068, 357, 3, 'nigger balls', 71, 1525365036),
(1069, 379, 2, 'wdym l0s3r', 71, 1525368383),
(1070, 406, 2, 'adios', 121, 1525370954),
(1071, 357, 3, 'roblox', 25, 1525371440),
(1072, 397, 2, '^ Thanks!', 172, 1525378068),
(1073, 276, 2, 'I think I know how to do it\r\n\r\nview refresh', 190, 1525378213),
(1074, 409, 2, 'we need realistic or this', 190, 1525378266),
(1075, 407, 3, 'no', 71, 1525378441),
(1076, 276, 2, 'aint you the guy that told people on bp to get a job on your yt', 190, 1525378586),
(1077, 409, 2, 'that would copy roblox', 71, 1525378597),
(1078, 409, 2, 'yeah', 10, 1525378624),
(1079, 404, 2, 'great ideas! but i think #2 should be free', 190, 1525378654),
(1080, 380, 3, 'no mex14nnn', 71, 1525378904),
(1081, 397, 2, 'Explain how view botting makes the community &quot;worse&quot;', 190, 1525379118),
(1082, 380, 3, 'I was on AOL yesterday and the Instagram Creator told me I could have $1000, he scammed me!', 211, 1525379543),
(1083, 413, 2, 'SO FUNNY', 191, 1525380469),
(1084, 414, 2, 'I like some of your faces but I feel like the smile is a bit too subtle and I think it should be longer in height.', 17, 1525380860),
(1085, 415, 2, 'Well, I do not know but my best suggestion is to talk to Cream about it.', 64, 1525385773),
(1086, 415, 2, 'I have tried already, but he hasn\'t really noticed.', 85, 1525391183),
(1087, 417, 2, 'Hi', 20, 1525391358);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL DEFAULT 'tokens',
  `price` varchar(11) NOT NULL DEFAULT '0',
  `rare` int(11) NOT NULL DEFAULT '0',
  `quantity` int(100) NOT NULL DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '1',
  `accepted` int(11) NOT NULL DEFAULT '0',
  `object` varchar(100) NOT NULL,
  `texture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `creator_id`, `name`, `description`, `type`, `payment`, `price`, `rare`, `quantity`, `sale`, `accepted`, `object`, `texture`) VALUES
(1, 1, 'Black Fedora', 'Back in black and ready to go!', 'Hat', 'coins', '10', 0, 0, 1, 1, 'blackfedora', 'blackfedora'),
(2, 1, 'Pot Head', 'He\'s a little stone.', 'Hat', 'tokens', '1', 0, 0, 1, 1, 'pothead', 'pothead'),
(3, 2, 'Test', 'Test shirt', 'shirt', 'coins', '10', 0, 0, 1, 0, '', 'cream.jpeg'),
(4, 2, 'Test', 'Test shirt', 'shirt', 'coins', '10', 0, 0, 1, 0, '', 'cream.jpeg'),
(5, 2, 'Test', 'Test shirt', 'shirt', 'coins', '10', 0, 0, 1, 0, '', 'cream.jpeg'),
(6, 2, 'Cream is dank', 'This is a test.', 'shirt', 'coins', '', 0, 0, 1, 0, '', 'cream.jpeg'),
(7, 2, 'Cream is dank', 'This is a test.', 'shirt', 'coins', '', 0, 0, 1, 0, '', 'cream.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` int(25) NOT NULL,
  `forumid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `poster` varchar(25) NOT NULL,
  `message` varchar(3000) NOT NULL,
  `lastposter` varchar(25) NOT NULL,
  `date` varchar(25) NOT NULL,
  `lastpostdate` varchar(25) NOT NULL,
  `replies` int(32) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `locked` int(11) NOT NULL DEFAULT '0',
  `pinned` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `forumid`, `name`, `poster`, `message`, `lastposter`, `date`, `lastpostdate`, `replies`, `views`, `locked`, `pinned`) VALUES
(1, 1, 'What would you guys like to see added to Tetrimus?', '3', 'Anything you can think of (That\'s good of course) will be added.', '9', '1525058374', '1525274613', 27, 766, 0, 0),
(2, 2, 'Hey!', '3', 'First thread, cool.', '39', '1525058554', '1525125422', 6, 30, 0, 0),
(3, 2, 'aaa', '42', 'aaaa', '65', '1525058592', '1525120164', 2, 27, 0, 0),
(4, 2, 'Hello', '10', 'hi', '39', '1525058607', '1525124368', 3, 24, 0, 0),
(5, 2, 'Hey everyone!', '85', 'How are you?', '39', '1525058620', '1525124360', 3, 14, 0, 0),
(6, 2, 'Aloha\'', '31', 'It\'s your neighborhood-friendly, Retro!', '39', '1525058638', '1525124336', 1, 8, 0, 0),
(7, 2, 'hi i\'m coolboy13', '13', 'hello', '39', '1525058645', '1525124533', 6, 27, 0, 0),
(8, 2, 'To current state of Tetrimus', '85', 'Can one of you get Blank to message me?', '39', '1525058684', '1525124463', 8, 31, 0, 0),
(9, 2, 'Why is', '85', 'S t a f f censored? Or it was before at least.', '2', '1525058781', '1525124502', 4, 16, 0, 0),
(10, 2, 'best username right here', '42', 'lol', '42', '1525058786', '1525108443', 7, 66, 0, 0),
(12, 2, 'Thread name', '10', 'Thread body', '10', '1525058826', '1525124625', 3, 18, 0, 0),
(13, 2, 'oh nice', '109', 'aaa', '39', '1525058846', '1525124619', 3, 16, 0, 0),
(14, 2, 'Finally!', '50', 'Forums is back', '39', '1525058907', '1525124630', 3, 13, 0, 0),
(15, 2, 'tetrimus more like', '109', 'tetris\r\n\r\nnever forgetti', '39', '1525058916', '1525124499', 6, 25, 0, 0),
(17, 2, 'Hey!', '50', 'Hey Everyone!', '39', '1525058936', '1525124472', 2, 10, 0, 0),
(18, 2, 'How much is it', '85', 'Per month to run the site?', '39', '1525058971', '1525125881', 2, 8, 0, 0),
(19, 2, 'first member of the tetrimus club', '109', 'eyyy', '39', '1525059002', '1525127039', 7, 25, 0, 0),
(20, 2, 'Who is online?', '50', 'Say me if u are lmao', '12', '1525059063', '1525127207', 4, 17, 0, 0),
(22, 2, 'Conner is top', '50', 'Oh nice', '39', '1525059144', '1525124897', 4, 11, 0, 0),
(24, 2, 'so uh what do we do here', '109', 'got 2 tokens and 35 coins lit lit gang gang', '39', '1525059156', '1525126925', 3, 14, 0, 0),
(25, 2, 'First to', '85', 'Level one, cool.', '39', '1525059208', '1525125040', 3, 12, 0, 0),
(26, 2, 'So Conner is top', '50', 'I can pass him', '31', '1525059223', '1525080060', 3, 10, 0, 0),
(28, 2, 'gtonna go watch adventure time  in a bit', '109', 'ahah', '39', '1525059257', '1525125010', 2, 6, 0, 0),
(29, 2, 'Look at', '85', 'Noynac, he is wearing a shirt lol', '39', '1525059290', '1525127002', 2, 7, 0, 0),
(30, 2, 'Shoot Down the Spammers!', '31', 'aka Conner : )', '39', '1525059310', '1525124913', 2, 7, 0, 0),
(31, 2, 'Goodnight Everyone!', '85', 'Bound to be passed up, but gn!', '39', '1525059325', '1525127017', 3, 11, 0, 0),
(32, 2, 'Almost there', '50', 'Trashpost thing!', '42', '1525059334', '1525096917', 4, 12, 0, 0),
(33, 2, 'ttttt', '50', 'Trashpost thing!', '71', '1525059349', '1525101857', 5, 13, 0, 0),
(34, 2, 'this is trashpost', '50', 'Trashpost thing!', '31', '1525059361', '1525080432', 1, 4, 0, 0),
(35, 2, 'okey so fast', '50', 'Trashpost thing!', '31', '1525059375', '1525080413', 1, 6, 0, 0),
(36, 2, 'almost there this is so ez', '50', 'Trashpost thing!', '31', '1525059390', '1525080390', 2, 6, 0, 0),
(37, 2, 'really', '50', 'Trashpost thing!', '39', '1525059406', '1525125162', 2, 9, 0, 0),
(38, 2, 'you are fast', '50', 'Trashpost thing!', '39', '1525059419', '1525125152', 2, 6, 0, 0),
(39, 2, 'Extreme', '85', 'Stop spamming', '39', '1525059420', '1525126858', 5, 14, 0, 0),
(40, 2, 'gaahh need more milstones', '109', 'i need more achievements', '31', '1525059429', '1525080327', 1, 4, 0, 0),
(41, 2, '19 points almost there', '50', 'Trashpost thing!', '39', '1525059433', '1525126361', 3, 9, 0, 0),
(42, 2, 'The More You Know', '31', 'Tetrimus\' first top poster was actually Telepathy/Mr. Kitty Cat/Retro.\r\n\r\nAnd he held this position for almost two weeks!', '39', '1525059484', '1525125103', 1, 9, 0, 0),
(43, 2, '19 points almost there', '50', 'Trashpost thing!', '31', '1525059508', '1525080290', 1, 4, 0, 0),
(44, 2, 'Trashpost thing!', '50', 'Trashpost thing!', '31', '1525059521', '1525082981', 3, 14, 0, 0),
(45, 2, '2 more', '50', 'Trashpost thing!', '39', '1525059531', '1525126870', 2, 7, 0, 0),
(46, 2, 'i want to make groups!!', '109', 'let us make groups', '42', '1525059537', '1525097399', 3, 12, 0, 0),
(48, 2, '2 more again', '50', 'Trashpost thing!', '42', '1525059551', '1525097109', 3, 9, 0, 0),
(49, 2, 'there we go', '50', 'Trashpost thing!', '39', '1525059562', '1525125247', 4, 15, 0, 0),
(50, 2, 'pass me', '50', 'Trashpost thing!', '39', '1525059574', '1525125222', 3, 10, 0, 0),
(51, 2, 'pass me if u can', '50', 'Trashpost thing!', '39', '1525059586', '1525125237', 2, 11, 0, 0),
(52, 2, 'its so ez', '50', 'Trashpost thing!', '42', '1525059599', '1525097309', 4, 10, 0, 0),
(53, 2, 'yo extreme', '109', 'stop spamming threads', '42', '1525059609', '1525097080', 4, 9, 0, 0),
(55, 2, 'Big Shaq', '31', 'Two plus two is four, if you subtract one from the equation you will get an equivalent of three.', '39', '1525059614', '1525125195', 2, 11, 0, 0),
(56, 2, 'ok i hope i wont get banned', '50', 'Trashpost thing!', '31', '1525059615', '1525080818', 2, 10, 0, 0),
(57, 2, 'u cant me pass me lol', '50', 'Trashpost thing!', '31', '1525059630', '1525080807', 2, 5, 0, 0),
(58, 2, 'dude this is so ez', '50', 'Trashpost thing!', '39', '1525059642', '1525125261', 3, 15, 0, 0),
(59, 2, 'so many trashposts', '50', 'Trashpost thing!', '39', '1525059657', '1525125298', 3, 11, 0, 0),
(60, 2, 'inb4 extreme gets banned', '109', 'lol', '39', '1525059681', '1525125312', 2, 11, 0, 0),
(61, 2, 'Everyone! New Item has been released!', '50', 'Check out the store', '12', '1525059685', '1525125414', 3, 19, 0, 0),
(63, 2, 'black fedora gang gang', '109', 'ahahah', '20', '1525059735', '1525125577', 3, 9, 0, 0),
(65, 2, 'Please do not spam the forums.', '3', 'If you do, your account will be banned.', '189', '1525059757', '1525143285', 9, 180, 0, 1),
(66, 2, 'byte i love you', '109', 'byte sized candy bars', '31', '1525059805', '1525080703', 2, 10, 0, 0),
(68, 2, 'First Hat!', '50', 'Check out the store and you can see Black Fedora is back and it is the first hat that has been release now, for more information check out the store here https://tetrimus.com/store/.', '31', '1525059837', '1525080714', 1, 12, 0, 0),
(70, 2, 'who likes my fedora', '109', 'lit right', '42', '1525059917', '1525097274', 3, 7, 0, 0),
(71, 2, 'the amount of trash posts', '4', 'there\'s so many, its insane', '42', '1525059921', '1525096965', 5, 15, 0, 0),
(73, 2, 'Why was tetrimus down?', '112', 'All accounts were wiped \r\nanyone know why? \r\n;c', '42', '1525060042', '1525097141', 8, 35, 0, 0),
(75, 2, 'Hiyo.', '116', 'I\'m back, my lil\' beans. How\'s life?', '65', '1525060060', '1525088537', 3, 14, 0, 0),
(76, 2, 'What namesnipes do you guys got?', '112', 'I own the accounts: \r\nThe \r\nHow \r\n:DDDDDD', '39', '1525060098', '1525125588', 10, 51, 0, 0),
(77, 2, 'A Thing About Spam', '31', 'It\'s pretty much useless, if you want to get banned, sure spam the forums but if you don\'t want to be banned, I suggest not.', '39', '1525060184', '1525125494', 2, 11, 0, 0),
(78, 2, 'i want to create a club', '109', 'zix gang gang\r\n\r\nalso first to join tetrimus group gang gang!!', '39', '1525060280', '1525125542', 3, 16, 0, 0),
(79, 2, 'Is there a daily token and coins?', '50', 'Cause i already have 2 tokens and 25 coins (35 before)', '31', '1525060311', '1525081090', 2, 11, 0, 0),
(80, 2, 'Kind of sad about the whipe,', '112', 'I had first 100 badge :( \r\nnow i\'m 112 \r\n', '42', '1525060354', '1525097429', 4, 21, 0, 0),
(82, 2, 'LOL i didnt know we could use more then letters', '117', 'yes yes yes', '107', '1525060423', '1525128815', 5, 29, 0, 0),
(83, 2, 'Can we buy membership?', '50', 'I tried to press the button but it doesnt work :/', '39', '1525060453', '1525128787', 3, 15, 0, 0),
(85, 2, 'so hows every1 today', '109', 'just tryna get #1 gang gang', '31', '1525060553', '1525081073', 2, 17, 0, 0),
(86, 3, 'saying despacito 100 times', '116', 'start\r\n\r\ndespacito.', '71', '1525060857', '1525104098', 21, 110, 0, 0),
(89, 2, 'LOL Who is this xD nice name', '112', 'LOL https://tetrimus.com/profile.php?id=118', '31', '1525061392', '1525081007', 1, 5, 0, 0),
(92, 2, 'Typing Tea 100 times in one thread', '17', 'Tea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea\r\nTea', '31', '1525061442', '1525080958', 2, 13, 0, 0),
(93, 3, '3rd', '9', 'h a', '31', '1525061469', '1525071176', 2, 8, 0, 0),
(95, 3, 'New Forum Channel', '50', 'Off-Topic', '31', '1525061578', '1525070352', 2, 9, 0, 0),
(97, 2, '1st place', '50', '*dabs*', '107', '1525061652', '1525124150', 4, 17, 0, 0),
(98, 2, 'hi im new', '121', 'hi', '39', '1525061693', '1525124092', 3, 22, 0, 0),
(100, 2, '100?', '10', 'maybe?', '31', '1525061745', '1525081311', 10, 54, 0, 0),
(101, 2, 'me want shirt', '121', 'shirt pls', '39', '1525061778', '1525124062', 3, 11, 0, 0),
(103, 2, 'Comment if you have the first 20 users badge', '50', 'Comment Me if you have', '10', '1525061882', '1525124049', 3, 12, 0, 0),
(104, 3, 'second', '112', 'yay', '31', '1525061892', '1525071212', 2, 5, 0, 0),
(106, 2, 'Please do not trashpost!', '50', 'Do not trashposting or posting any other stuffs that is not related into the channel! Tetrimus Hub channel is for related to Tetrimus, trashposting may result in a warning or ban! Thank You!', '31', '1525062018', '1525081388', 2, 18, 0, 0),
(107, 2, 'I like the new hat, but', '112', 'the description talks about drugs and honestly I don\'t really like it. \r\n', '31', '1525062038', '1525081359', 2, 15, 0, 0),
(109, 2, '@MODERATOR', '112', 'Do you guys know if the site\'s going to reset again? \r\n', '12', '1525062209', '1525125615', 2, 20, 0, 0),
(112, 2, 'Ethan', '50', 'Please do not spam or trashposting in this channel cause all of your post are not related here and also this channel is for only a posts that is related to Tetrimus or if you want to post that is not related above, post in Off-Topic not in Tetrimus Hub.', '39', '1525062428', '1525125670', 9, 44, 0, 0),
(114, 2, 'What\'s the best namesnipe you\'ve seen so far?', '112', 'Other than yours which one is the best one so far?', '39', '1525062700', '1525125642', 2, 14, 0, 0),
(115, 2, 'How has no one taken the account Rich?', '112', 'I wish I could but I only can make two accounts.', '39', '1525062813', '1525125660', 1, 6, 0, 0),
(117, 3, 'Off-Topic!', '50', 'You can post any other stuffs here that is not related to the other channels!', '31', '1525062968', '1525070339', 1, 7, 0, 0),
(120, 2, 'Ethan (This is the proof)', '50', 'In my other posts you said that &quot;How many points needed to become Level 2?&quot;\r\nAlso you stop posting after you become in the 1st place\r\nPlus you keep posting like every 3 seconds\r\nPlus all your posts are not related to the topics', '39', '1525063188', '1525124220', 10, 54, 0, 0),
(121, 4, 'Mama mia', '17', 'who touchaa my spaget!', '71', '1525063232', '1525103895', 4, 33, 0, 0),
(122, 4, 'Test Thread', '50', 'This is a testing purposes', '65', '1525063270', '1525089252', 2, 13, 0, 0),
(123, 4, 'Test Again', '50', 'Test1', '65', '1525063323', '1525089272', 10, 36, 0, 0),
(124, 2, '123 user', '123', 'Omgmgmgmggmmg I just came from brick planet', '71', '1525063338', '1525104372', 5, 19, 0, 0),
(125, 4, 'Testing', '50', 'test2! linked by byte312', '65', '1525063356', '1525089300', 2, 11, 0, 0),
(128, 2, 'Does upgrade works?', '50', 'I tried to press the button but it doesnt work tho :/', '42', '1525063750', '1525097992', 7, 22, 0, 0),
(130, 2, 'Trading System', '50', 'I hope they will add trading that dont need a membership :)', '42', '1525063847', '1525097046', 4, 19, 0, 0),
(133, 2, 'Clubs will be released today?', '50', 'Cause i see a new category (Clubs)', '39', '1525064157', '1525126243', 1, 8, 0, 0),
(134, 2, 'Forums will be wiped', '50', 'byte312 said', '31', '1525064184', '1525132750', 3, 16, 0, 0),
(136, 5, 'New Category?!', '50', 'Oh wow this is so fast', '31', '1525064257', '1525069524', 1, 10, 0, 0),
(137, 3, 'no more resets', '71', 'pls', '13', '1525064715', '1525131282', 4, 19, 0, 0),
(138, 3, 'I\'m irrelevant', '71', 'cri', '31', '1525065145', '1525071303', 1, 5, 0, 0),
(139, 2, 'Site is looking good so far...', '71', 'Nice job byte, noynac, Blank/Cream, and others that worked on the site!', '42', '1525065231', '1525097071', 3, 14, 0, 0),
(140, 3, 'I\'m Josh!', '71', 'I\'m Josh! The 71st user on Tetrimus. (aka the 31st, 2nd, and 1st) I\'m super nice so if you ever need anything just ask.', '31', '1525065340', '1525070236', 1, 9, 0, 0),
(142, 3, 'The Longest Thread', '71', 'go go', '71', '1525065721', '1525138962', 6, 34, 0, 0),
(143, 5, 'Tetrimus membership', '15', 'Will we able to buy with paysafecard?', '31', '1525065737', '1525069504', 1, 15, 0, 0),
(144, 2, 'hola', '53', 'it&rsquo;s biz', '39', '1525065803', '1525125968', 7, 23, 0, 0),
(145, 2, 'I bet', '50', 'Tetrimus will add games in 2030', '39', '1525066174', '1525124159', 7, 25, 0, 0),
(146, 3, 'Im tired', '50', 'Im gonna sleep! brb', '31', '1525066194', '1525070512', 3, 9, 0, 0),
(147, 5, 'ooo', '71', 'dont think about it too much, too much, too much, too much...\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nfeelsbadman', '31', '1525066484', '1525069477', 1, 7, 0, 0),
(148, 2, 'If Clubs will be released?', '50', 'What you will do if clubs will be released?', '39', '1525066854', '1525124180', 4, 10, 0, 0),
(149, 2, 'If clubs will be released? (My Answer)', '50', 'If clubs will be release i will make a group and name it Tetrimus Namesnipe and hiring some ppl who wants to become an admin in my group :)', '39', '1525067021', '1525126072', 2, 5, 0, 0),
(150, 2, 'What do we get daily?', '50', 'Is it free 1 token and free 10 coins? i guess thats it', '42', '1525067129', '1525097194', 6, 18, 0, 0),
(154, 2, 'Why 2 resets?', '124', 'I was ID 90,then 30 and now I\'m ID 124!Unfair as hecc!Make me back my ID 90!!!!', '39', '1525069252', '1525126062', 1, 7, 0, 0),
(155, 5, 'Yes or No', '31', 'Reset the forums do to all the spam?', '130', '1525069260', '1525072299', 2, 12, 0, 0),
(156, 2, 'Anyone that can make forum sections,read this:', '124', 'We need trading section and clubs sections,and also an help subforum that has \'\'game help\'\',\'\'bugs and glitches\'\',\'\'ideas\'\' and \'\'suggestions\'\' in that help suborum.', '39', '1525071384', '1525125983', 3, 10, 0, 0),
(157, 3, 'xDe', '124', 'xDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD\r\n(No ban senpai pls)', '15', '1525071504', '1525074283', 3, 9, 0, 0),
(158, 2, 'is tetrimus', '75', 'good or bad, what would\'ve you said?\r\ni\'d say it\'s good.', '12', '1525072913', '1525126179', 2, 6, 0, 0),
(159, 2, 'Daily currency is...', '64', 'The daily currency is Coins. You get 10 a day to inform you and the green currency is known as Tokens.', '39', '1525079759', '1525125950', 1, 7, 0, 0),
(160, 2, 'Tetrimus.exe', '64', 'Has stopped working.\r\n', '65', '1525080013', '1525120061', 4, 12, 0, 0),
(161, 2, 'Debate on signature or not.', '64', 'I want to know if I should use -Jeffy after every post. Yes to do it, No to not do it. Please submit your opinion!', '64', '1525080097', '1525080525', 3, 13, 0, 0),
(162, 5, 'Suggestions as this thread.', '64', 'I would like to see this turn in to Suggestions.\r\n-Jeffy', '65', '1525080756', '1525088330', 2, 16, 0, 0),
(163, 2, '100 Posts', '31', 'send help\r\nI\'m listening to songs I don\'t understand ;-;', '71', '1525082289', '1525101773', 2, 9, 0, 0),
(164, 5, 'First!', '31', 'Claimed. ðŸš©', '13', '1525082421', '1525132103', 1, 12, 0, 0),
(165, 2, '165', '31', 'Understood', '42', '1525082668', '1525097518', 1, 3, 0, 0),
(166, 2, 'Close to 100 Points', '31', '/shrug', '42', '1525083778', '1525097453', 3, 7, 0, 0),
(167, 2, 'Donator', '100', 'How2get', '42', '1525086934', '1525097019', 3, 6, 0, 0),
(168, 2, 'pot head', '65', 'the name is very interesting, amirite?', '42', '1525088994', '1525096985', 3, 10, 0, 0),
(169, 2, 'Good morning!', '85', 'Good morning Tetrimus.', '42', '1525090085', '1525097252', 1, 4, 0, 0),
(170, 3, 'This is off topic.', '85', 'Tetrimus has been in development since Jan I think', '13', '1525090129', '1525130486', 3, 10, 0, 0),
(171, 2, 'Fedora seems pretty cool', '85', 'in my opinion', '42', '1525090211', '1525096687', 3, 9, 0, 0),
(172, 5, 'Lol what', '85', 'what is this madness', '135', '1525090255', '1525175248', 1, 9, 0, 0),
(173, 2, 'Clothes are looking good', '85', 'https://tetrimus.com/profile.php?id=4 Cool', '42', '1525090658', '1525096771', 2, 6, 0, 0),
(174, 5, 'oooo', '30', 'is it what i think it is', '30', '1525094493', '1525094493', 0, 7, 0, 0),
(175, 2, 'please put games', '60', 'i joined this to be able to play. not to see sites resetings.', '112', '1525094997', '1525103472', 3, 13, 0, 0),
(176, 5, 'Cool', '10', 'Cool', '10', '1525099606', '1525099606', 0, 4, 0, 0),
(177, 2, 'Anyone?', '10', 'e.e', '20', '1525099734', '1525104142', 3, 13, 0, 0),
(178, 3, 'resets', '71', 'have been going on lonfer than you\'ve alive.', '42', '1525101700', '1525121524', 3, 16, 0, 0),
(179, 2, 'test', '148', 'test', '148', '1525105612', '1525105612', 0, 5, 0, 0),
(182, 2, 'succ', '45', 'oof', '45', '1525107705', '1525107705', 0, 5, 0, 0),
(183, 2, 'hi guys', '12', 'how r u', '20', '1525117099', '1525117120', 1, 9, 0, 0),
(184, 2, 'Making a shader for the shirt template', '12', 'Will probably use for only me tho', '65', '1525118982', '1525120252', 1, 8, 0, 0),
(185, 2, 'My username is the best', '42', 'Yes', '42', '1525119671', '1525119949', 8, 33, 0, 0),
(187, 4, 'Test', '12', 'test', '81', '1525119799', '1525142671', 3, 20, 0, 0),
(189, 3, 'me&gt;you', '42', 'yes', '42', '1525120116', '1525120116', 0, 3, 0, 0),
(191, 2, 'Historic Image', '12', 'https://cdn.discordapp.com/attachments/439963712309428224/440612155427913731/petrock.png', '12', '1525120546', '1525120546', 0, 3, 0, 0),
(193, 2, 'Tetrimus before the reset', '12', 'Before Kyle ruined the economy and stuff, we joked around.\r\nhttps://cdn.discordapp.com/attachments/439963712309428224/440599022466629632/2201f277c2a8e189d6a822047d0d469a.png', '12', '1525121153', '1525121153', 0, 5, 0, 0),
(195, 2, 'Hello again', '12', 'I am bored.', '12', '1525121316', '1525121316', 0, 3, 0, 0),
(196, 2, 'The Favorite..', '22', 'Whose your favorite Tetrimus player? let us know', '16', '1525121475', '1525121908', 6, 44, 0, 0),
(197, 2, 'My old avatar', '12', 'https://cdn.discordapp.com/attachments/439963712309428224/440615946227548171/71.png', '12', '1525121491', '1525121491', 0, 6, 0, 0),
(200, 3, 'wat?', '65', 'ok amazing', '12', '1525122123', '1525122512', 2, 15, 0, 0),
(201, 2, 'Who\'s your favorite', '2', 'User mine is abb', '65', '1525122642', '1525122825', 4, 32, 0, 0),
(202, 2, 'I got verified', '12', 'yay.', '39', '1525123437', '1525123806', 1, 12, 0, 0),
(203, 2, 'OG Members', '39', 'if you have the old model :)', '65', '1525123791', '1525123962', 2, 22, 0, 0),
(204, 5, 'Suggestions as this thread.', '', 'I would like to see this turn in to Suggestions.\r\n-Jeffy', '', '1525124216', '1525124216', 0, 5, 0, 0),
(205, 2, 'I\'m back baby', '170', 'I back with my bull crap you butter licking breakfast sandwich\'s.', '170', '1525125181', '1525125393', 2, 10, 0, 0),
(207, 3, '&gt;:))))))))', '171', 'i will take over the world', '71', '1525125385', '1525138593', 1, 10, 0, 0),
(208, 2, 'Profile Broken', '170', 'how come you can\'t see my character it just has broken picture thingy. Oi yuo bummy admins betta fix this before i mail u mum\'s DSi to Zimbobway', '170', '1525125511', '1525125700', 2, 14, 0, 0),
(210, 5, 'Hi....', '12', 'This is a cool thread.', '12', '1525126232', '1525126232', 0, 3, 0, 0),
(211, 2, 'I am old user', '170', 'I was in before Tetrimus was reset and I have witnesses to confirm that.', '170', '1525126255', '1525138358', 8, 40, 0, 0),
(212, 2, 'My Full Name', '170', 'me full name is Mitth\'raw\'nuruodo but all me friends call me Thrawn.', '170', '1525126319', '1525126319', 0, 2, 0, 0),
(213, 2, 'What?!?', '39', 'I have more post than Josh which means I should have more points then Josh.', '31', '1525126326', '1525133287', 2, 13, 0, 0),
(214, 2, 'I too cool', '170', 'I soo cool you can\'t see my profile pic cuz it dont serve me justice', '71', '1525126536', '1525138806', 4, 16, 0, 0),
(219, 2, 'Oof', '170', 'oof', '31', '1525127276', '1525132796', 2, 12, 0, 0),
(220, 2, 'New avatar', '12', 'https://tetrimus.com/profile.php?id=4', '31', '1525127604', '1525132769', 2, 22, 0, 0),
(224, 2, 'test dont ban', '12', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', '31', '1525129452', '1525132637', 1, 4, 0, 0),
(229, 2, 'Admin DisTrack', '170', 'Hey I\'m back again with another Dis\r\nyou admin better fix my profile picture before you get the fist\r\nI will throw a pie in your face just gotta check my Hit list\r\n\r\nYou admin are lame\r\nyou have no fame\r\nand your the ones to blame (for not fixing my profile pic)\r\n\r\nYall admin have 24 hours to fix my profile pic or I release another dis-track', '31', '1525130130', '1525131227', 2, 10, 0, 0),
(241, 2, 'Ayyyeee!', '39', 'Top 5 bb!', '39', '1525131086', '1525131086', 0, 3, 0, 0),
(243, 2, 'OG\'s Reply', '39', 'if you have the 1st model for the avatar reply.', '107', '1525131607', '1525131660', 1, 4, 0, 0),
(244, 3, 'I\'m just gonna put this here.', '105', 'oldie tetrimuso was greateso brong it baeck tootremiasu (This is a joke)', '105', '1525131627', '1525131627', 0, 6, 0, 0),
(245, 2, 'a look like a potato on a stick', '79', 'why is my head bigger then my boddy', '10', '1525131987', '1525132539', 1, 12, 0, 0),
(246, 2, 'New player model', '85', 'looks cool.', '85', '1525133029', '1525133029', 0, 5, 0, 0),
(248, 2, 'Doom\'s Large Candy Bar', '31', 'It\'s 5000 x 500, we can each cut out our own piece for everyone to take home!\r\n(Doom\'s Candy Bar is 15 x 5 and is only for the King Kitty, Doom)\r\n', '71', '1525134364', '1525138639', 4, 27, 0, 0),
(249, 2, 'Hello.', '98', 'How\'s your day?', '39', '1525135098', '1525139500', 6, 28, 0, 0),
(250, 2, 'I\'m bored.', '98', 'Title.', '12', '1525135198', '1525135952', 1, 12, 0, 0),
(251, 2, 'discord?', '90', 'whats the discord\r\n', '71', '1525135562', '1525138827', 2, 20, 0, 0),
(252, 2, 'Thesaurus', '170', 'Thesaurus are you looking for a pet rock I have one that needs to be away from other pet rocks I have two her name is Roxy please reply she needs to be away from other pet rocks for a while she was sick and she needs a new home for her full recovery.', '71', '1525136148', '1525138703', 3, 17, 0, 0),
(253, 2, 'o ok im bakc', '109', 'hi', '71', '1525137610', '1525138016', 2, 8, 0, 0),
(254, 3, 'OT best place', '109', 'yes', '71', '1525137627', '1525137912', 1, 5, 0, 0),
(255, 2, 'how levels work', '4', 'Apparently some people are confused about how leveling and points work so I am here to explain it to everyone.\r\n\r\nYou get 1.5 points per thread and 0.5 points per reply. \r\nSo for example if I (noynac) have 100 replies and 0 threads, I get 50 points, but if Doom has 50 threads and 0 replies, he gets 75 points. \r\n\r\nTherefore even though I have way more replies than Doom, and I have more replies than the amount of threads Doom has, he still gets more points because threads are worth more.', '211', '1525137861', '1525298730', 13, 112, 0, 1),
(256, 3, 'ethan', '71', 'don\'t listen to his threads, he\'s a bigger trashposter than extreme.', '71', '1525138066', '1525138870', 1, 3, 0, 0),
(257, 2, 'I Slimmed Down', '170', 'After 1 second of working out I went from fat to fit and lost 100 pounds and you can to!', '170', '1525138520', '1525138642', 2, 9, 0, 0),
(258, 3, 'Thrawn, the new trashposter.', '71', 'Has entered the arena.', '71', '1525138732', '1525138732', 0, 1, 0, 0),
(259, 2, 'Josh is Bum Distrack', '170', 'Ay Josh you bum\r\nyou think you mature when you suck your thumb\r\nand you look really dumb\r\n\r\nyou say I\'m a trash poster but that is false\r\nyour the one with the trash posting flaws\r\n\r\nyou think your cool\r\nbut you look like a fool\r\ngo to school\r\ntool', '170', '1525138947', '1525139370', 4, 33, 0, 0),
(260, 2, 'Hey!', '39', 'Verify me in the discord.', '39', '1525139802', '1525139802', 0, 5, 0, 0),
(261, 2, 'Howdy!', '39', 'We\'re from the southern Ya\'ll.', '30', '1525140562', '1525141030', 3, 13, 0, 0),
(264, 2, 'hellooo', '185', 'henlo my amig0z', '185', '1525141136', '1525141136', 0, 3, 0, 0),
(265, 2, 'Howdy!', '30', 'Howdy!', '185', '1525141198', '1525141370', 2, 10, 0, 0),
(266, 2, 'What\'s your biggest snipe?', '30', 'ID snipe or name snipe.', '90', '1525141298', '1525141459', 1, 20, 0, 0),
(276, 2, 'HEY HEY HEY IM BACK', '189', 'WHEN YOU TRY TO KICK YO BOI OUT HE COMES RIGHT BACK IN \r\n\r\nSMASH THAT LIKE BUTTON FOR YOU BOI\r\n\r\n[im not the real]', '190', '1525143083', '1525378586', 11, 12773, 0, 0),
(277, 2, 'hello', '191', 'hello', '4', '1525144105', '1525144209', 2, 13, 0, 0),
(278, 2, 'Come join discord!', '4', 'Feel free to join our discord server! https://discord.gg/BSdQWD', '223', '1525144263', '1525257216', 4, 57, 0, 1),
(280, 2, 'most viewed threads...', '193', '#1 https://tetrimus.com/forum/view.php?id=276  - 5K+ Views\r\n#2 https://tetrimus.com/forum/view.php?id=65 - 130 Views \r\n#3 https://tetrimus.com/forum/view.php?id=100 - 54 Views\r\n# 4 https://tetrimus.com/forum/view.php?id=112\r\n# 5 https://tetrimus.com/forum/view.php?id=10', '189', '1525146196', '1525146402', 1, 13, 0, 0),
(282, 2, 'SUP DUDES', '194', 'Join BrixInfinity. An upcoming sci-fi futuristic game!', '194', '1525155216', '1525155216', 0, 1, 0, 0),
(283, 5, 'xde', '124', 'omg yey', '124', '1525155709', '1525155709', 0, 3, 0, 0),
(284, 2, 'Im new', '195', 'What do i do here?', '195', '1525159801', '1525159801', 0, 1, 0, 0),
(285, 2, 'Doom', '50', 'He had so many points!', '50', '1525160593', '1525160593', 0, 1, 0, 0),
(286, 2, 'HEY GUys!', '50', 'Forum will be wiped again?!', '50', '1525160636', '1525160636', 0, 1, 0, 0),
(287, 2, 'Tor is back', '50', 'But he is not staff :(', '50', '1525160923', '1525160923', 0, 1, 0, 0),
(288, 2, 'Tor is not staff', '50', 'Why?', '50', '1525160947', '1525160947', 0, 2, 0, 0),
(289, 2, 'Forums why?!', '50', 'Why?! Forums will be wiped again?!', '50', '1525160981', '1525160981', 0, 1, 0, 0),
(290, 2, 'Ninja', '', ':ninjaBlast1: :ninjaBlast2: :ninjaBlast3: :ninjaBlast3: :ninjaBlast3: :ninjaBlast3: :ninjaBlast3: :ninjaBlast3: :ninjaPon:', '', '1525164722', '1525164722', 0, 3, 0, 0),
(291, 2, 'Tetrimus Forum', '50', 'RIP!', '50', '1525164852', '1525164852', 0, 3, 0, 0),
(292, 2, 'Tetrimus Forum Removal', '50', 'Forums will be wiped one last time on 5/2 @5PM EST.', '50', '1525170726', '1525170726', 0, 3, 0, 0),
(293, 2, 'Tetrimus is dead', '50', 'No one is online lmao', '8', '1525170746', '1525175445', 1, 13, 0, 0),
(294, 3, 'The longest thread', '50', 'Make this thread so long', '50', '1525170768', '1525170929', 7, 14, 0, 0),
(295, 2, 'Ok Tetrimus', '50', 'No one is totally online', '50', '1525170883', '1525171498', 1, 8, 0, 0),
(296, 3, 'Ok im done', '50', 'Im the only online lmao', '50', '1525170955', '1525170955', 0, 2, 0, 0),
(297, 3, 'What the heck', '50', 'LOL!', '195', '1525170974', '1525262095', 8, 27, 0, 0),
(298, 2, 'Trucks', '16', 'Tetrimus trucks are life', '16', '1525174110', '1525174110', 0, 4, 0, 0),
(299, 2, 'snipe accounts', '135', 'i got 4 snipe accounts with namesnipe and rare item snipe xd rekt', '9', '1525175300', '1525185160', 2, 20, 0, 0),
(300, 2, 'What happened to Ethan?', '85', 'Was he banned..?', '191', '1525176406', '1525195983', 3, 18, 0, 0),
(301, 2, 'NOOO!!', '39', 'Forums are going to be whipped.', '12', '1525176486', '1525204251', 3, 23, 0, 0),
(302, 2, 'Original Drink', '156', 'Bloxy Orange (an original drink)\r\n\r\nplz make this a gear ;-;', '12', '1525187862', '1525204202', 3, 13, 0, 0),
(303, 2, 'I own the rarest ID ever', '123', 'yes', '71', '1525188152', '1525195779', 2, 30, 0, 0),
(304, 2, 'remove spaces in name', '123', 'pls', '123', '1525188174', '1525188174', 0, 6, 0, 0),
(305, 2, 'i\'m the only survival of the old avatars', '75', 'i need to loot!!', '39', '1525188405', '1525207214', 2, 21, 0, 0),
(306, 3, 'hi bois', '147', 'hhhhoiiiiiiiii', '71', '1525188676', '1525275909', 3, 10, 0, 0),
(307, 2, 'Are accounts getting wiped to?', '123', 'I hope so.', '20', '1525188772', '1525195984', 2, 16, 0, 0),
(308, 2, 'add a feature where u can view ur threads', '123', 'yes', '123', '1525189047', '1525189047', 0, 7, 0, 0),
(309, 3, 'what', '71', 'why are forums being wiped lol', '71', '1525193161', '1525193161', 0, 4, 0, 0),
(310, 2, 'Hello', '191', 'Hello evrebody how was your day!', '20', '1525196019', '1525196356', 2, 14, 0, 0),
(311, 2, 'Howdy!', '139', 'Howdy! Any new hats coming in soon?', '139', '1525196517', '1525204302', 3, 20, 0, 0),
(312, 2, 'Who is your favorite user?', '191', 'Mine is noy', '191', '1525196610', '1525198884', 2, 12, 0, 0),
(313, 2, 'We are getting sued for copyright.', '200', 'Tetrimus is getting sued by Brick Planet for copyright. \r\n \r\nWe will shut down tommorow. \r\n\r\n Thank you for playing', '12', '1525199725', '1525204270', 4, 55, 0, 0),
(314, 2, 'Hello guys', '202', 'I\'m Bob', '10', '1525201978', '1525204134', 4, 19, 0, 0),
(315, 2, 'sup', '185', 'hello fellow memerz', '12', '1525203322', '1525204546', 1, 10, 0, 0),
(316, 2, 'yay!!!', '16', 'my tokens r now called trucks', '16', '1525207585', '1525207585', 0, 4, 0, 0),
(317, 2, 'last post', '156', 'bb', '31', '1525208467', '1525213175', 1, 7, 0, 0),
(318, 2, 'first 100', '16', 'Tetrimus\r\nCream\r\nByte312\r\nNoynac\r\nJack\r\nHash\r\nValconBlackwell \r\nDark\r\nActive\r\nfernando penedo\r\nUsername\r\nabb\r\ncoolboy13\r\neazye\r\nzeleniak\r\nkcurt\r\ntea\r\nmrblack\r\nfernando\r\nLapis\r\nsergio.penedo \r\nsauce\r\nfer\r\nSaucy Profit\r\nSmiley\r\nPrimey\r\nAsh \r\nmercilessbandit \r\nRich\r\nAdmin\r\nDoom\r\nsnipe\r\nguy\r\nfun\r\nSouthernRoadgeek \r\nChole\r\nHappyFedora\r\nnight\r\nthingelon\r\n**\r\nfound\r\nDavid\r\nDavidTheBest\r\nme.\r\nSans\r\nextremeplayer32\r\nPerson\r\nKJS\r\npatrick star\r\nLbotius\r\nCat\r\nCashkid08\r\nLlama\r\nWill\r\nWaterNoob\r\nRaymonf\r\nKing\r\nVic\r\nDrifttwo\r\njeffy\r\nshrek\r\nJello9898\r\nBounzzey\r\nsheriffchase\r\nSpeed\r\nJosh\r\nAlpha\r\nFearless\r\nslate\r\namigocough\r\nchad\r\nHi there\r\nWoops\r\nBobby\r\n****er\r\nTetris\r\ntor\r\nkevin\r\ngreysonm10\r\nConner\r\nCap\r\nJack\r\nsip\r\ndrink hat\r\nmawuli\r\nwater\r\nlion\r\nsoccer\r\nfutbol\r\nmessi\r\nriver\r\nthesaurus\r\nuser 99\r\n100', '31', '1525209635', '1525212623', 4, 28, 0, 0),
(319, 2, 'Who is excited for clubs?', '64', 'I am totally excited and can not wait to see them ;)\r\n-Jeffy\r\n', '170', '1525210688', '1525213201', 3, 19, 0, 0),
(320, 2, 'levels?', '207', 'heyo, i\'m new here', '31', '1525211057', '1525212884', 1, 6, 0, 0),
(321, 2, 'my points?', '207', 'how does it work', '31', '1525211095', '1525212941', 1, 7, 0, 0),
(322, 2, 'levels so easy', '207', 'like your typical math quiz', '31', '1525211168', '1525212760', 3, 13, 0, 0),
(323, 2, 'deus vult', '207', 'aaaaaaaa', '31', '1525211360', '1525212799', 1, 7, 0, 0),
(324, 2, 'This site is trash', '208', 'the owner of this site is a pot head\r\nno wonder he uploaded pot head hat\r\n', '31', '1525211583', '1525212720', 1, 8, 0, 0),
(326, 2, 'what was the little boy and fat boy?', '207', 'a nuke\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\ni\'ll just leave', '31', '1525211785', '1525212588', 2, 9, 0, 0),
(327, 2, 'dabs', '207', 'on your bitcoin status aaaaa', '31', '1525212120', '1525213274', 1, 7, 0, 0),
(328, 2, 'Guccied Down', '170', 'When Shirts and Pants are added I\'ma be the first user to be guccied down fite me.', '170', '1525212134', '1525212632', 4, 13, 0, 0),
(329, 2, 'i have a rare snipe', '207', 'yes', '31', '1525212248', '1525213263', 1, 4, 0, 0),
(330, 2, 'about taxes', '207', 'do we need them?', '207', '1525212510', '1525213263', 3, 9, 0, 0),
(331, 2, 'ham bush!', '207', 'numearz: i see a bacon tree!\r\npubert: dont trust it!\r\n*numearz walks to the tree and is gunned down*\r\npubert: NO!\r\nnumearz: pubert! ees\r\n    ees\r\n    ees\r\n    ees a ham bush!', '31', '1525212664', '1525213212', 1, 6, 0, 0),
(332, 3, 'Ecks dee.', '64', 'In stead of XD we say Ecks dee!', '64', '1525212740', '1525212740', 0, 1, 0, 0),
(333, 3, 'Gang shiidd', '212', 'Crip gang cuhh!', '172', '1525212750', '1525264516', 1, 5, 0, 0),
(334, 2, 'Zues de vault', '64', 'Allegra! phobiaaaaaaaaaaaaaa', '31', '1525212834', '1525213392', 1, 5, 0, 0),
(335, 2, 'banned bush', '207', 'how can i use banned bush in a joke?', '50', '1525212846', '1525216092', 3, 8, 0, 0),
(336, 2, 'appreciate music', '207', 'https://www.youtube.com/watch?v=VMtarj8Ua0s', '31', '1525212874', '1525213440', 1, 8, 0, 0),
(337, 2, 'Onezies', '170', 'Before people start saying I wear onezies I will say that I dont wear onezie because it actually called Unozie because Uno in espanol is one so there u go nubs I no wear onezie', '31', '1525213057', '1525213586', 1, 4, 0, 0),
(338, 2, 'damn', '207', 'damn', '207', '1525213239', '1525214081', 9, 28, 0, 0),
(339, 2, 'hey', '207', 'not spam', '31', '1525213819', '1525214638', 1, 7, 0, 0),
(340, 2, 'look at all of the oldies flexin', '210', 'meanwhile im just a nooblet', '31', '1525213982', '1525214599', 1, 11, 0, 0),
(341, 2, 'Free my man KKK bruh', '28', 'https://tetrimus.com/profile.php?id=42', '25', '1525214067', '1525282438', 4, 37, 0, 0),
(342, 2, 'Kitty Gun', '31', 'hiss scratch meow\r\n\r\n*GET YOUR OWN TODAY AND SHOOT YOUR ENEMIES WITH KITTIES!*', '31', '1525215038', '1525215038', 0, 6, 0, 0),
(343, 2, 'Hey everyone!', '85', 'While I am waiting to receive my administrator badge and design stuff for Tetrimus, how are you?', '31', '1525216794', '1525218082', 1, 6, 0, 0),
(344, 2, 'What happened to my account', '213', 'I made the account shadow a few days ago and I try to log back in and it says it never existed &gt;:(', '90', '1525217199', '1525218990', 4, 21, 0, 0),
(345, 2, 'Characters are broken', '85', 'gg', '31', '1525218780', '1525220595', 2, 15, 0, 0),
(346, 2, 'I make good klub', '170', 'ok noobs I gonna make a good club called the Krispy Kreme Klub cuz i lov denuts just luve them so if i make klub then plz join. k?', '170', '1525218843', '1525219013', 2, 8, 0, 0),
(347, 2, 'Admin is Racist', '170', 'Why my head brown they are imposing a race on me. I wanna be a Asian and they make me black', '31', '1525219154', '1525220347', 2, 13, 0, 0),
(348, 2, 'I Black Male', '170', 'k nnubs I changed my race to a black male so now I will be black for rest of my life thax alot cream of mushroom soup.', '90', '1525219463', '1525222202', 3, 22, 0, 0),
(349, 2, 'Created Faces For Tetrimus', '85', 'Opinions? https://twitter.com/_Chollingsworth/status/991468684072882176', '85', '1525219554', '1525222784', 8, 37, 0, 0),
(350, 2, 'Woopidy Scoop scoopidy woop woopidy scoop', '170', 'Kanye is gonna become the biggest meme of 2018 his new single &quot;Lift Yourself&quot; lol gg', '170', '1525219771', '1525220642', 2, 14, 0, 0),
(351, 2, '700th Reply', '31', ':)', '171', '1525220543', '1525312593', 2, 16, 0, 0),
(352, 2, 'my head is glitched', '215', 'aaaaahh', '31', '1525224229', '1525226008', 2, 15, 0, 0),
(353, 2, 'Forums', '10', 'didn\'t get wiped?', '10', '1525228892', '1525228892', 0, 7, 0, 0),
(354, 2, 'How do you thread', '5', 'Huh?', '5', '1525229139', '1525229139', 0, 5, 0, 0),
(355, 2, 'I was on the leaderboard once', '5', 'When the site first reset I was number 5 for being the 5th player to join... it didn\'t last long.', '5', '1525229207', '1525229229', 1, 14, 0, 0),
(356, 2, 'Hahahhaha', '5', 'Thread views count as any view, no matter if it\'s a unique view or not.', '31', '1525229301', '1525242929', 2, 15, 0, 0),
(357, 3, 'How off topic can we get?', '5', 'Reply reply reply', '25', '1525229346', '1525371440', 8, 24, 0, 0),
(358, 2, 'hi guys', '109', 'screech', '31', '1525230219', '1525242875', 3, 280, 0, 0),
(359, 2, 'I was IP banned on Brickplanet', '218', 'Username on BP: Zachary\r\nReason: I\'m not exactly sure', '39', '1525232745', '1525301242', 5, 43, 0, 0),
(360, 2, 'Give me the badge', '50', 'Ok i LOL', '31', '1525232765', '1525242853', 1, 12, 0, 0),
(361, 2, 'Tetrimus Forum Is Dead', '50', 'Like almost everyday', '31', '1525232790', '1525242832', 1, 11, 0, 0),
(362, 3, 'Boring', '50', 'Boring', '50', '1525232900', '1525235285', 9, 12, 0, 0),
(363, 3, 'I got IP banned on BrickPlanet', '218', 'Username on BP: Zachary\r\nReason: I\'m not exactly sure', '71', '1525232908', '1525275825', 3, 11, 0, 0),
(364, 2, 'the avatars', '116', 'wth happened to them', '31', '1525234056', '1525242903', 4, 27, 0, 0),
(365, 2, 'rip old avatar', '116', 'you will be missed', '31', '1525235134', '1525242302', 1, 11, 0, 0),
(366, 2, 'What do you call someone who lost a car?', '194', 'Carlos', '31', '1525239692', '1525242315', 2, 6, 0, 0),
(367, 2, 'h3y', '221', 'w3lc0me to t3trim0s!\r\n:;)', '221', '1525245421', '1525245421', 0, 2, 0, 0),
(368, 2, 'Henlo', '196', 'Guess my real account ;3', '2', '1525247295', '1525256216', 1, 9, 0, 0),
(369, 2, 'Hi I&rsquo;m A.I', '224', 'I&rsquo;m new here', '224', '1525260316', '1525260337', 1, 5, 0, 0),
(370, 2, 'TTEB', '124', 'Join Tetrimus Trade Earn Buy (discord available only) https://discord.gg/MFHXJ4T TTEB is a trading group that is work-in-progress!', '124', '1525260716', '1525260716', 0, 7, 0, 0),
(371, 2, 'Only one online.', '85', 'Not usual, but okay.', '71', '1525263045', '1525276122', 1, 19, 0, 0),
(372, 2, 'Good Morning!', '39', 'Just enjoying my self before the forums get wiped today.', '39', '1525264688', '1525264688', 0, 4, 0, 0),
(373, 2, 'I will be wiped soon..', '121', 'goodbye world', '71', '1525274526', '1525276021', 1, 13, 0, 0),
(374, 3, '364', '71', 'lol', '71', '1525275853', '1525275864', 1, 4, 0, 0),
(375, 2, 'hi j0sh', '221', 'h0w ar3 y0u?', '10', '1525276312', '1525278558', 1, 15, 0, 0),
(376, 2, 'oh nice', '109', 'hiu', '185', '1525281942', '1525282063', 1, 9, 0, 0),
(377, 5, 'o ok', '109', 'hi', '109', '1525281957', '1525281957', 0, 2, 0, 0),
(378, 2, 'Can I get verified by staff?', '112', 'can u', '39', '1525284711', '1525301154', 2, 16, 0, 0),
(379, 2, 'How do i become an administrator here?', '112', 'You guys are hiring right? \r\n|', '71', '1525285100', '1525368383', 15, 24594, 0, 0),
(380, 3, 'How off topic can we get?', '22', 'Well, my mom said if this gets 2 reply I\'m her favorite daughter...', '211', '1525293247', '1525379543', 5, 132, 0, 0),
(381, 3, 'rice gum', '17', '\r\n\r\n\r\n', '71', '1525293297', '1525362433', 1, 3, 0, 0),
(382, 2, 'Can I wear  a shirt?', '12', 'pls', '12', '1525293359', '1525293359', 0, 5, 0, 0),
(383, 2, 'World Record', '12', 'I am the most active guy on Tetrimus (500 forum posts before and talked in the Discord 3,000+ times)', '12', '1525293523', '1525293523', 0, 8, 0, 0),
(384, 2, 'I am the real tetrimus mafia', '76', 'noobs, get on my level', '39', '1525293978', '1525301550', 2, 16, 0, 0),
(385, 2, 'why they gassed', '235', '&quot; OR 1 = 1--', '235', '1525294364', '1525294364', 0, 8, 0, 0),
(386, 2, 'Replies should be worth more than threads.', '11', 'This would promote quality of threads over quantity.', '39', '1525296446', '1525300788', 2, 386, 0, 0),
(387, 2, 'test', '236', 'window.alert(&ldquo;test&rdquo;)', '39', '1525301406', '1525303604', 4, 24, 0, 0),
(388, 2, 'Ayyeee!', '39', '100 Post! I\'m pretty sure most of them are not spammed or trash.', '39', '1525301690', '1525301690', 0, 4, 0, 0),
(389, 2, 'i am scarey', '191', 'i wil hac TETRIMUS in MARCH29 2018 NUBS\r\n\r\nGUT REDY', '191', '1525303926', '1525305152', 2, 18, 0, 0),
(390, 3, 'Hey', '239', 'Whats up Tetrimus', '239', '1525306215', '1525306215', 0, 3, 0, 0),
(391, 2, 'THEY BE TRYNA KICK ME OUT', '189', 'Forums will be wiped soon! by byte312 on 5/1/18 \r\n\r\n\r\nhttps://tetrimus.com/forum/view.php?id=276\r\n\r\nNO YOU AINT CANT KICK YOUR BOI', '189', '1525309230', '1525309230', 0, 9, 0, 0),
(392, 5, 'CHIPS AHOY IS HERE', '189', 'HELLO', '189', '1525309280', '1525309280', 0, 3, 0, 0),
(393, 2, 'aaa', '12', 'aaa', '12', '1525309422', '1525309422', 0, 3, 0, 0),
(394, 3, 'alert(&quot;Hello! I am an alert box!&quot;)', '239', '\r\nalert(&quot;Hello! I am an alert box!&quot;)\r\n', '239', '1525309699', '1525309875', 1, 4, 0, 0),
(395, 2, 'What\'s up?', '3', 'Going to be working on some stuff tonight.\r\nHow are you guys doing? :)', '112', '1525312851', '1525362795', 3, 17, 0, 0),
(396, 2, 'â€®  â€®  â€® â€®', '5', 'â€® â€®Hello.', '71', '1525316252', '1525362028', 2, 19, 0, 0),
(397, 2, 'I really enjoy this community but', '112', 'The community has some flawes, of course Tetrimus just released but this is a small community and no one\'s online when I\'m on ;(', '190', '1525316502', '1525379118', 8, 53, 0, 0),
(398, 2, 'tfw when', '116', 'you accidentally RIP A HOLE INTO THE 4TH DIMENSION USING A HEXAFLEXAGON AND EVERYTHING IS BEiNG DESTROYED AAAAAAAAAAAAA', '112', '1525319596', '1525362978', 3, 14, 0, 0),
(399, 2, 'free bobby shmurda', '47', 'Thread body', '47', '1525322214', '1525322214', 0, 1, 0, 0),
(400, 3, '400th thread', '47', 'Thread body', '71', '1525322236', '1525362001', 2, 10, 0, 0),
(401, 4, 'HEY IM SNEAKING', '189', 'SMASH THAT LIKE BUTTON', '189', '1525334230', '1525334230', 0, 4, 0, 0),
(402, 2, 'March 2018', '39', 'Why couldn\'t we stick with the avatars with the lava torso?', '3', '1525351688', '1525355809', 1, 8, 0, 0),
(403, 3, 'night is really annoying sometimes', '71', '&quot;I joined not only on the first day Tetrimus was released but in the first minute&quot; half of the people joined within that time span (night also complains about everything.)', '71', '1525362204', '1525362204', 0, 27, 0, 0),
(404, 2, 'Some suggestions I have', '112', 'Three suggestions: \r\n\r\nSuggestion (1): \r\nWhen you create a forum post you can preview it before you actually post it, it displays it as a created forum post but it really isn\'t created yet, it would really help people. \r\n\r\nSuggestion (2): \r\nI really like this idea and think it would be a really cool feature in Tetrimus, you can buy a CARD for 100 coins and you can pm it to peoples messages, so there\'s 3 cards: Valentines, Cool, Happy birthday. \r\n\r\nValentines says something romantic and gives the player 1 token  \r\nBirthday says happy birthday  \r\nand so on..\r\n \r\nI don\'t know how it would work but it\'s worth a shot. \r\n\r\nThird Suggestion (3) \r\nAdd coupons to the game, \r\nCoupons can be redeemable by typing in a specific code found on tetrimus\'s twitter. \r\n\r\nYou can use a coupon only on CLOTHING and it makes the clothing 50% off \r\nThat would be really cool but idk', '190', '1525363326', '1525378654', 2, 10, 0, 0),
(406, 2, 'forum', '121', 'forum', '121', '1525370868', '1525370954', 1, 12, 0, 0),
(407, 3, 'I am cool', '169', 'ur mom jdsfjld', '71', '1525373835', '1525378441', 1, 3, 0, 0),
(408, 5, 'hacker', '137', 'reportedered', '137', '1525377448', '1525377448', 0, 1, 0, 0),
(409, 2, 'Avatars', '172', 'Please change them back to the fatter version of the current avatar.', '10', '1525378161', '1525378624', 3, 13, 0, 0),
(410, 2, 'sniped 7th off-topic', '71', 'wait i didnt make this thread wait help lol waht wait ignore this', '71', '1525378704', '1525378704', 0, 6, 0, 0),
(411, 2, 'moonwalking is overrated', '207', 'truth!', '207', '1525379502', '1525379502', 0, 6, 0, 0),
(412, 2, 'fedora will go special', '207', 'according to cream', '207', '1525379755', '1525379755', 0, 9, 0, 0),
(413, 2, 'why cant wheel chair people fight?', '207', 'because they cant stand up for themselves', '191', '1525380024', '1525380469', 1, 11, 0, 0),
(414, 2, 'Need opinions', '85', 'https://twitter.com/_Chollingsworth/status/991468684072882176', '17', '1525380685', '1525380860', 1, 14, 0, 0),
(415, 2, 'Where did my admin badge go?', '85', 'Odd...', '85', '1525380808', '1525391183', 2, 15, 0, 0),
(416, 5, 'Henlo', '64', ':)))))))', '64', '1525385694', '1525385694', 0, 1, 0, 0),
(417, 2, 'hey', '207', 'Heyo\r\n', '20', '1525391276', '1525391358', 1, 4, 0, 0),
(418, 2, 'dabs', '207', 'xd', '207', '1525391446', '1525391446', 0, 1, 0, 0),
(419, 2, 'heyo', '207', 'okk', '207', '1525391560', '1525391560', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `category` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `locked` varchar(25) NOT NULL DEFAULT 'false',
  `replies` int(32) NOT NULL DEFAULT '0',
  `threads` int(32) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `category`, `name`, `description`, `locked`, `replies`, `threads`) VALUES
(1, 1, 'Bulletin Board', 'Anything important such as announcements and updates go here.', 'false', 27, 1),
(2, 1, 'Tetrimus Hub', 'Post anything related to Tetrimus!', 'false', 912, 351),
(3, 1, 'Off-Topic', 'Post irrelevant things here!', 'false', 117, 44),
(4, 2, 'TEST', 'N/A', 'true', 21, 6),
(5, 2, 'Another Test', 'XD', 'false', 10, 17);

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `desc_update` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  `posted_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `desc_update`, `date`, `posted_by`) VALUES
(1, 'HMMM', 0, ':facepalm:byte312');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(1337) NOT NULL,
  `email` varchar(255) NOT NULL,
  `donator` int(11) NOT NULL DEFAULT '0',
  `donation_amount` varchar(50) NOT NULL DEFAULT '$0.00',
  `name_color` varchar(50) NOT NULL DEFAULT '#000000',
  `banned` int(11) NOT NULL DEFAULT '0',
  `rand` int(11) NOT NULL DEFAULT '1',
  `HeadColor` varchar(50) NOT NULL DEFAULT '225/255,221/255,56/255',
  `TorsoColor` varchar(50) NOT NULL DEFAULT '16/255,113/255,184/255',
  `RightArmColor` varchar(50) NOT NULL DEFAULT '225/255,221/255,56/255',
  `LeftArmColor` varchar(50) NOT NULL DEFAULT '225/255,221/255,56/255',
  `RightLegColor` varchar(50) NOT NULL DEFAULT '135/255,155/255,58/255',
  `LeftLegColor` varchar(50) NOT NULL DEFAULT '135/255,155/255,58/255',
  `Face` varchar(50) NOT NULL DEFAULT 'face',
  `Hat` varchar(50) NOT NULL DEFAULT 'none',
  `Hat2` varchar(50) NOT NULL DEFAULT 'none',
  `Hat3` varchar(50) NOT NULL DEFAULT 'none',
  `Gear` varchar(50) NOT NULL DEFAULT 'none',
  `Gear2` varchar(50) NOT NULL DEFAULT 'none',
  `shirt` varchar(50) NOT NULL DEFAULT 'none.png',
  `tshirt` varchar(50) NOT NULL DEFAULT 'none.png',
  `tokens` int(255) NOT NULL DEFAULT '1',
  `coins` int(255) NOT NULL DEFAULT '25',
  `power` int(255) NOT NULL DEFAULT '0',
  `membership` varchar(255) NOT NULL DEFAULT 'none',
  `description` varchar(255) NOT NULL DEFAULT 'This is a default description.',
  `verified` int(255) NOT NULL DEFAULT '0',
  `verified_email` int(25) NOT NULL DEFAULT '0',
  `status` varchar(200) NOT NULL DEFAULT 'Playing Tetrimus',
  `Ip` varchar(255) NOT NULL,
  `currency_time` varchar(255) NOT NULL DEFAULT '03/16/18' COMMENT 'Daily income.',
  `visitTick` varchar(11) NOT NULL DEFAULT '0',
  `expireTime` varchar(11) NOT NULL DEFAULT '0',
  `gettc` varchar(11) NOT NULL DEFAULT '0',
  `lastflood` int(11) NOT NULL DEFAULT '0',
  `theme` varchar(100) NOT NULL DEFAULT 'default',
  `join_date` varchar(255) NOT NULL DEFAULT '0',
  `profile_views` int(11) NOT NULL DEFAULT '0',
  `now` int(11) NOT NULL DEFAULT '0',
  `replies` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `total` int(11) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `next_points` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `donator`, `donation_amount`, `name_color`, `banned`, `rand`, `HeadColor`, `TorsoColor`, `RightArmColor`, `LeftArmColor`, `RightLegColor`, `LeftLegColor`, `Face`, `Hat`, `Hat2`, `Hat3`, `Gear`, `Gear2`, `shirt`, `tshirt`, `tokens`, `coins`, `power`, `membership`, `description`, `verified`, `verified_email`, `status`, `Ip`, `currency_time`, `visitTick`, `expireTime`, `gettc`, `lastflood`, `theme`, `join_date`, `profile_views`, `now`, `replies`, `posts`, `total`, `points`, `level`, `next_points`) VALUES
(1, 'Tetrimus', '$2b$10$FmTlpKLIoXXzTVfgP4UDCuEQGuEJczlQ6hJGb4VDRvZMoZR3ZHmiK', 'aaa@gmail.com', 0, '$0.00', '#000000', 0, 1, '225/255,221/255,56/255', '16/255,113/255,184/255', '225/255,221/255,56/255', '225/255,221/255,56/255', '135/255,155/255,58/255', '135/255,155/255,58/255', 'face', 'none', 'none', 'none', 'none', 'none', 'none.png', 'none.png', 2, 35, 0, 'none', 'This is a default description.', 0, 0, 'Playing Tetrimus!', '172.69.70.87', '03/16/18', '1525059024', '1525059324', '1525122717', 1525058995, 'default', '1525035798', 591, 1525059024, 1, 0, 1, 0, 0, 16),
(251, 'a', '$2y$10$ntDzGkxEZqh18WFTBgUf8OyMCo7rPgn/bNbzjVQHiQyOeEwwEC/fa', 'homeworkrmd@gmail.com', 0, '$0.00', '#000000', 0, 3, '225/255,221/255,56/255', '16/255,113/255,184/255', '225/255,221/255,56/255', '225/255,221/255,56/255', '135/255,155/255,58/255', '135/255,155/255,58/255', 'face', 'pothead', 'blackfedora', 'none', 'none', 'none', 'none.png', 'none.png', 1, 25, 0, 'none', 'This is a default description.', 0, 0, 'Playing Tetrimus!', '172.69.62.152', '03/16/18', '1525381101', '1525381401', '1525467167', 0, 'default', '1525380751', 0, 1525381101, 0, 0, 0, 0, 0, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminLogs`
--
ALTER TABLE `adminLogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD UNIQUE KEY `text` (`text`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubComments`
--
ALTER TABLE `clubComments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_members`
--
ALTER TABLE `club_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemComments`
--
ALTER TABLE `itemComments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminLogs`
--
ALTER TABLE `adminLogs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clubComments`
--
ALTER TABLE `clubComments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `club_members`
--
ALTER TABLE `club_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `itemComments`
--
ALTER TABLE `itemComments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1088;
--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;
--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
