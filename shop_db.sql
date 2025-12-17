-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2024 at 07:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `Id` int(10) NOT NULL,
  `name` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`Id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(10) NOT NULL,
  `artist_name` varchar(15) NOT NULL,
  `description` varchar(500) NOT NULL,
  `artist_image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `artist_name`, `description`, `artist_image`) VALUES
(13, 'Jaminiroy', 'Jamini Roy began his career as a painter of Post-Impressionist landscapes and portraits. The European influences in his art were much in keeping with his training in a British academic system. However, in mid-1920s, Roy completely changed his style from his academic Western training to a new style which was based on Bengali folk traditions.', 'pic-2.png'),
(14, 'Amrita', 'Amrita Sher-Gil moved to Europe when she was 16 years old and her early work is significantly influenced by European art style, especially that of Impressionist painters like Paul Cézanne and Paul Gauguin. Sher-Gil first received recognition at the age of 19 through her painting Young Girls. It won her many accolades including a gold medal .', 'pic-5.png');

-- --------------------------------------------------------

--
-- Table structure for table `art_type`
--

CREATE TABLE `art_type` (
  `id` int(10) NOT NULL,
  `art_type` varchar(15) NOT NULL,
  `medium_art` varchar(20) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `art_type`
--

INSERT INTO `art_type` (`id`, `art_type`, `medium_art`, `description`, `image`) VALUES
(8, 'sculpture', 'clay,stone,wax', 'Sculpture, an artistic form in which hard or plastic materials are worked into three-dimensional art objects. The designs may be embodied in freestanding objects, in reliefs on surfaces, or in environments ranging from tableaux to contexts that envelop the spectator. An enormous variety of media may be used, including clay, wax, stone, metal, fabric, glass, wood, plaster, rubber, and random “found” objects. Materials may be carved, modeled, molded, cast, wrought, welded.', 'i14.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cancel_order`
--

CREATE TABLE `cancel_order` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(15) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `product_name` varchar(15) NOT NULL,
  `total_price` int(10) NOT NULL,
  `placed_on` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cancel_order`
--

INSERT INTO `cancel_order` (`id`, `user_id`, `name`, `number`, `email`, `address`, `product_name`, `total_price`, `placed_on`) VALUES
(5, 8, 'gopi', '7893215465', 'gopi@gmail.com', 'flat no. 45, cvbxcbcx, BHAVANAGER, India - 364002', 'ram', 810, '26-Feb-2024'),
(6, 6, 'JAMINI ROY', '8965472314', 'anu@gmail.com', 'flat no. 5, cvbxcbcx, BHAVANAGER, India - 364002', ', ram (1', 810, '03-Mar-2024'),
(7, 6, 'ayushi', '56321489', 'ayu@gmail.com', 'flat no. 1, hdgbdy, surt, india - 123456', 'painting', 6000, '13-Mar-2024'),
(8, 6, 'krushnaraj', '1545444444', 'zkrushnraj@gmail.com', 'flat no. 3, gchgfg, bhavnagar, india - 23622', ', painti', 18000, '14-Mar-2024'),
(9, 6, 'niraj', '3121211232', 'tester1@gmail.com', 'flat no. 5, streat, bhavnagar, india - 036522', ', painti', 24000, '14-Mar-2024'),
(10, 6, 'krushnaraj', '936547852314', 'ayu@gmail.com', 'flat no. 2, gchgfg, bhavnagar, india - 2356545', 'painting', 6000, '14-Mar-2024'),
(11, 6, 'niraj', '5354', 'ayu@gmail.com', 'flat no. 15346, hdshdvghs, bhavnagar, india - 1234569', ', painti', 6000, '14-Mar-2024'),
(12, 6, 'krushnaraj', '1545444444', 'zkrushnraj@gmail.com', 'flat no. 3, gchgfg, bhavnagar, india - 23622', ', painti', 18000, '14-Mar-2024'),
(13, 6, 'niraj', '3121211232', 'tester1@gmail.com', 'flat no. 5, streat, bhavnagar, india - 036522', ', painti', 24000, '14-Mar-2024'),
(14, 6, 'krushnaraj', '936547852314', 'ayu@gmail.com', 'flat no. 2, gchgfg, bhavnagar, india - 2356545', 'painting', 6000, '14-Mar-2024'),
(15, 6, 'niraj', '789654123698', 'tester1@gmail.com', 'flat no. 4, ajagar nagar, jamanagar, india - 125365', 'oil pain', 7000, '14-Mar-2024'),
(16, 6, 'Bhumi', '563214789632', 'anu@gmail.com', 'flat no. 2, hdshdvghs, bhavnagar, india - 446656', 'painting', 6000, '14-Mar-2024'),
(17, 6, 'niraj', '755546554557', 'zkrushnraj@gmail.com', 'flat no. 89, dfnjrbjer, kalapure, india - 5465464', 'oil pain', 7000, '14-Mar-2024'),
(18, 6, 'krushnaraj', '1545444444', 'zkrushnraj@gmail.com', 'flat no. 3, gchgfg, bhavnagar, india - 23622', ', painti', 18000, '14-Mar-2024'),
(19, 6, 'niraj', '3121211232', 'tester1@gmail.com', 'flat no. 5, streat, bhavnagar, india - 036522', ', painti', 24000, '14-Mar-2024'),
(20, 6, 'krushnaraj', '936547852314', 'ayu@gmail.com', 'flat no. 2, gchgfg, bhavnagar, india - 2356545', 'painting', 6000, '14-Mar-2024'),
(21, 6, 'niraj', '789654123698', 'tester1@gmail.com', 'flat no. 4, ajagar nagar, jamanagar, india - 125365', 'oil pain', 7000, '14-Mar-2024'),
(22, 6, 'Bhumi', '563214789632', 'anu@gmail.com', 'flat no. 2, hdshdvghs, bhavnagar, india - 446656', 'painting', 6000, '14-Mar-2024'),
(23, 6, 'krushnaraj', '1545444444', 'zkrushnraj@gmail.com', 'flat no. 3, gchgfg, bhavnagar, india - 23622', ', painti', 18000, '14-Mar-2024'),
(24, 6, 'niraj', '3121211232', 'tester1@gmail.com', 'flat no. 5, streat, bhavnagar, india - 036522', ', painti', 24000, '14-Mar-2024'),
(25, 6, 'krushnaraj', '936547852314', 'ayu@gmail.com', 'flat no. 2, gchgfg, bhavnagar, india - 2356545', 'painting', 6000, '14-Mar-2024'),
(26, 6, 'Bhumi', '563214789632', 'anu@gmail.com', 'flat no. 2, hdshdvghs, bhavnagar, india - 446656', 'painting', 6000, '14-Mar-2024'),
(27, 6, 'krushnaraj', '1545444444', 'zkrushnraj@gmail.com', 'flat no. 3, gchgfg, bhavnagar, india - 23622', ', painti', 18000, '14-Mar-2024'),
(28, 6, 'niraj', '3121211232', 'tester1@gmail.com', 'flat no. 5, streat, bhavnagar, india - 036522', ', painti', 24000, '14-Mar-2024'),
(29, 6, 'Bhumi', '563214789632', 'anu@gmail.com', 'flat no. 2, hdshdvghs, bhavnagar, india - 446656', 'painting', 6000, '14-Mar-2024'),
(30, 6, 'krushnaraj', '1545444444', 'zkrushnraj@gmail.com', 'flat no. 3, gchgfg, bhavnagar, india - 23622', ', painti', 18000, '14-Mar-2024'),
(31, 6, 'niraj', '3121211232', 'tester1@gmail.com', 'flat no. 5, streat, bhavnagar, india - 036522', ', painti', 24000, '14-Mar-2024'),
(32, 6, 'niraj', '563214789632', 'ayu@gmail.com', 'flat no. 5, dffsdf, jamanagar, india - 12563214', 'painting', 6000, '14-Mar-2024'),
(33, 6, 'JAMINI ROY', '8965472314', 'anu@gmail.com', 'flat no. 5, cvbxcbcx, BHAVANAGER, India - 364002', 'painting', 6000, '04-Apr-2024'),
(34, 6, 'krushnaraj', '1545444444', 'zkrushnraj@gmail.com', 'flat no. 3, gchgfg, bhavnagar, india - 23622', ', painti', 18000, '14-Mar-2024'),
(35, 6, 'niraj', '3121211232', 'tester1@gmail.com', 'flat no. 5, streat, bhavnagar, india - 036522', ', painti', 24000, '14-Mar-2024'),
(36, 6, 'niraj', '563214789632', 'ayu@gmail.com', 'flat no. 5, dffsdf, jamanagar, india - 12563214', 'painting', 6000, '14-Mar-2024'),
(37, 6, 'krushnaraj', '1545444444', 'zkrushnraj@gmail.com', 'flat no. 3, gchgfg, bhavnagar, india - 23622', ', painti', 18000, '14-Mar-2024'),
(38, 6, 'krushnaraj', '1234567895', 'zkrushnraj@gmail.com', 'flat no. 5, gdhgdfd, bhavnagar, india - 123456', 'painting', 6000, '06-Apr-2024'),
(39, 6, 'krushnaraj', '1545444444', 'zkrushnraj@gmail.com', 'flat no. 3, gchgfg, bhavnagar, india - 23622', ', painti', 18000, '14-Mar-2024'),
(40, 6, 'gopi', '7894561234', 'zkrushanraj@gmail.com', 'flat no. 8, saradar, ahemadabad, india - 475456', ', fffghf', 75, '06-Apr-2024'),
(41, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 1, manadnagar, bhavnagar, india - 859632', 'cubisum', 1000, '10-Apr-2024'),
(42, 6, 'krushnaraj', '8965321458', 'anu@gmail.com', 'flat no. 5, gchgfg, jamanagar, india - 535635', 'cubisum', 1000, '11-Apr-2024'),
(43, 6, 'kishu', '8965321458', 'ayushiba@gmail.com', 'flat no. 5, dffsdf, bhavnagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(44, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 5, hdshdvghs, kalapure, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(45, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 1, manadnagar, bhavnagar, india - 859632', 'cubisum', 1000, '10-Apr-2024'),
(46, 6, 'krushnaraj', '8965321458', 'anu@gmail.com', 'flat no. 5, gchgfg, jamanagar, india - 535635', 'cubisum', 1000, '11-Apr-2024'),
(47, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 5, hdshdvghs, kalapure, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(48, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 1, manadnagar, bhavnagar, india - 859632', 'cubisum', 1000, '10-Apr-2024'),
(49, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 5, hdshdvghs, kalapure, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(50, 6, 'krushnaraj', '8965321458', 'anu@gmail.com', 'flat no. 3, gchgfg, bhavnagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(51, 6, 'painting', '8965321458', 'anu@gmail.com', 'flat no. 3, dfnjrbjer, bhavnagar, india - 321212', 'cubisum', 1000, '11-Apr-2024'),
(52, 6, 'painting', '8965321458', 'anu@gmail.com', 'flat no. 3, dfnjrbjer, bhavnagar, india - 321212', 'cubisum', 1000, '11-Apr-2024'),
(53, 6, 'painting', '8965321458', 'anu@gmail.com', 'flat no. 3, dfnjrbjer, bhavnagar, india - 321212', 'cubisum', 1000, '11-Apr-2024'),
(54, 6, 'painting', '8965321458', 'anu@gmail.com', 'flat no. 3, dfnjrbjer, bhavnagar, india - 321212', 'cubisum', 1000, '11-Apr-2024'),
(55, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 1, manadnagar, bhavnagar, india - 859632', 'cubisum', 1000, '10-Apr-2024'),
(56, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 5, hdshdvghs, kalapure, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(57, 6, 'krushnaraj', '8965321458', 'anu@gmail.com', 'flat no. 3, gchgfg, bhavnagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(58, 6, 'painting', '8965321458', 'anu@gmail.com', 'flat no. 3, dfnjrbjer, bhavnagar, india - 321212', 'cubisum', 1000, '11-Apr-2024'),
(59, 6, 'painting', '8965321458', 'anu@gmail.com', 'flat no. 3, dfnjrbjer, bhavnagar, india - 321212', 'cubisum', 1000, '11-Apr-2024'),
(60, 6, 'painting', '8965321458', 'anu@gmail.com', 'flat no. 3, dfnjrbjer, bhavnagar, india - 321212', 'cubisum', 1000, '11-Apr-2024'),
(61, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 1, manadnagar, bhavnagar, india - 859632', 'cubisum', 1000, '10-Apr-2024'),
(62, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 5, hdshdvghs, kalapure, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(63, 6, 'krushnaraj', '8965321458', 'anu@gmail.com', 'flat no. 3, gchgfg, bhavnagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(64, 6, 'painting', '8965321458', 'anu@gmail.com', 'flat no. 3, dfnjrbjer, bhavnagar, india - 321212', 'cubisum', 1000, '11-Apr-2024'),
(65, 6, 'painting', '8965321458', 'anu@gmail.com', 'flat no. 3, dfnjrbjer, bhavnagar, india - 321212', 'cubisum', 1000, '11-Apr-2024'),
(66, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 1, manadnagar, bhavnagar, india - 859632', 'cubisum', 1000, '10-Apr-2024'),
(67, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 5, hdshdvghs, kalapure, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(68, 6, 'painting', '8965321458', 'anu@gmail.com', 'flat no. 3, dfnjrbjer, bhavnagar, india - 321212', 'cubisum', 1000, '11-Apr-2024'),
(69, 6, 'painting', '8965321458', 'anu@gmail.com', 'flat no. 3, dfnjrbjer, bhavnagar, india - 321212', 'cubisum', 1000, '11-Apr-2024'),
(70, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 1, manadnagar, bhavnagar, india - 859632', 'cubisum', 1000, '10-Apr-2024'),
(71, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 5, hdshdvghs, kalapure, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(72, 6, 'painting', '8965321458', 'anu@gmail.com', 'flat no. 3, dfnjrbjer, bhavnagar, india - 321212', 'cubisum', 1000, '11-Apr-2024'),
(73, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 1, manadnagar, bhavnagar, india - 859632', 'cubisum', 1000, '10-Apr-2024'),
(74, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 5, hdshdvghs, kalapure, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(75, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 1, manadnagar, bhavnagar, india - 859632', 'cubisum', 1000, '10-Apr-2024'),
(76, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(77, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(78, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(79, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(80, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(81, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(82, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(83, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(84, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(85, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(86, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(87, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(88, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(89, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(90, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(91, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(92, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(93, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(94, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(95, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(96, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(97, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(98, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(99, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(100, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(101, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(102, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(103, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(104, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(105, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(106, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(107, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(108, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(109, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(110, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(111, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(112, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(113, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(114, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(115, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(116, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(117, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(118, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(119, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(120, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(121, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(122, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(123, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(124, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(125, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(126, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(127, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(128, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(129, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(130, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(131, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(132, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(133, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(134, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(135, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(136, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(137, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(138, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(139, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(140, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(141, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(142, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(143, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(144, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(145, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(146, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(147, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(148, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(149, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(150, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(151, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(152, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(153, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(154, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(155, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(156, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(157, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(158, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(159, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(160, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(161, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 3000, '11-Apr-2024'),
(162, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(163, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(164, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(165, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(166, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(167, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(168, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(169, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(170, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(171, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(172, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(173, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(174, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(175, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(176, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(177, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(178, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(179, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(180, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(181, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(182, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(183, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(184, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(185, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(186, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(187, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(188, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(189, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(190, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(191, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(192, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(193, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(194, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(195, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(196, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(197, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(198, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(199, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(200, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(201, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(202, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(203, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(204, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(205, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(206, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(207, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(208, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(209, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(210, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(211, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(212, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(213, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(214, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(215, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(216, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(217, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(218, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(219, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(220, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(221, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(222, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(223, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(224, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(225, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(226, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(227, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(228, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(229, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(230, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(231, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(232, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(233, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(234, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(235, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(236, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(237, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(238, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(239, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(240, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(241, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(242, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(243, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(244, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(245, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(246, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(247, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(248, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(249, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(250, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(251, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(252, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(253, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(254, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(255, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(256, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(257, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(258, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(259, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(260, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(261, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(262, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(263, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(264, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(265, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(266, 6, 'krushnaraj', '8965321458', 'ayu@gmail.com', 'flat no. 6, hdshdvghs, bhavnagar, india - 159595', 'cubisum', 1000, '11-Apr-2024'),
(267, 6, 'krushnaraj', '8965321458', 'admin@gmail.com', 'flat no. 78, hdshdvghs, bhavnagar, india - 787878', 'cubisum', 1000, '11-Apr-2024'),
(268, 6, 'krushnaraj', '8965321458', 'ayushiba@gmail.com', 'flat no. 2, dffsdf, jamanagar, india - 147852', 'cubisum', 1000, '11-Apr-2024'),
(269, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(270, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(271, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(272, 6, 'Bhumi', '8965321458', 'ayu@gmail.com', 'flat no. 2, dfnjrbjer, jamanagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(273, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(274, 6, 'krushnaraj', '8965321458', 'ayu@gmail.com', 'flat no. 6, hdshdvghs, bhavnagar, india - 159595', 'cubisum', 1000, '11-Apr-2024'),
(275, 6, 'krushnaraj', '8965321458', 'admin@gmail.com', 'flat no. 78, hdshdvghs, bhavnagar, india - 787878', 'cubisum', 1000, '11-Apr-2024'),
(276, 6, 'krushnaraj', '8965321458', 'ayushiba@gmail.com', 'flat no. 2, dffsdf, jamanagar, india - 147852', 'cubisum', 1000, '11-Apr-2024'),
(277, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(278, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(279, 6, 'Bhumi', '8965321458', 'ayu@gmail.com', 'flat no. 2, dfnjrbjer, jamanagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(280, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(281, 6, 'krushnaraj', '8965321458', 'ayu@gmail.com', 'flat no. 6, hdshdvghs, bhavnagar, india - 159595', 'cubisum', 1000, '11-Apr-2024'),
(282, 6, 'krushnaraj', '8965321458', 'admin@gmail.com', 'flat no. 78, hdshdvghs, bhavnagar, india - 787878', 'cubisum', 1000, '11-Apr-2024'),
(283, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(284, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(285, 6, 'Bhumi', '8965321458', 'ayu@gmail.com', 'flat no. 2, dfnjrbjer, jamanagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(286, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(287, 6, 'krushnaraj', '8965321458', 'ayu@gmail.com', 'flat no. 6, hdshdvghs, bhavnagar, india - 159595', 'cubisum', 1000, '11-Apr-2024'),
(288, 6, 'krushnaraj', '8965321458', 'admin@gmail.com', 'flat no. 78, hdshdvghs, bhavnagar, india - 787878', 'cubisum', 1000, '11-Apr-2024'),
(289, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(290, 6, 'Bhumi', '8965321458', 'ayu@gmail.com', 'flat no. 2, dfnjrbjer, jamanagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(291, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(292, 6, 'krushnaraj', '8965321458', 'admin@gmail.com', 'flat no. 78, hdshdvghs, bhavnagar, india - 787878', 'cubisum', 1000, '11-Apr-2024'),
(293, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(294, 6, 'Bhumi', '8965321458', 'ayu@gmail.com', 'flat no. 2, dfnjrbjer, jamanagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(295, 6, 'krushnaraj', '8965321458', 'ayu@gmail.com', 'flat no. 2, ajagar nagar, kalapure, india - 589647', 'painting', 2000, '11-Apr-2024'),
(296, 6, 'Bhumi', '8965321458', 'ayushiba@gmail.com', 'flat no. 2, dfnjrbjer, bhavnagar, india - 569874', 'painting', 2000, '11-Apr-2024'),
(297, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(298, 6, 'krushnaraj', '8965321458', 'admin@gmail.com', 'flat no. 78, hdshdvghs, bhavnagar, india - 787878', 'cubisum', 1000, '11-Apr-2024'),
(299, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(300, 6, 'Bhumi', '8965321458', 'ayu@gmail.com', 'flat no. 2, dfnjrbjer, jamanagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(301, 6, 'krushnaraj', '8965321458', 'ayu@gmail.com', 'flat no. 2, ajagar nagar, kalapure, india - 589647', 'painting', 2000, '11-Apr-2024'),
(302, 6, 'Bhumi', '8965321458', 'anu@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159753', ', painti', 1000, '11-Apr-2024'),
(303, 6, 'krushnaraj', '8965321458', 'admin@gmail.com', 'flat no. 78, hdshdvghs, bhavnagar, india - 787878', 'cubisum', 1000, '11-Apr-2024'),
(304, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(305, 6, 'Bhumi', '8965321458', 'ayu@gmail.com', 'flat no. 2, dfnjrbjer, jamanagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(306, 6, 'krushnaraj', '8965321458', 'admin@gmail.com', 'flat no. 78, hdshdvghs, bhavnagar, india - 787878', 'cubisum', 1000, '11-Apr-2024'),
(307, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(308, 6, 'Bhumi', '8965321458', 'ayu@gmail.com', 'flat no. 2, dfnjrbjer, jamanagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(309, 6, 'krushnaraj', '8965321458', 'tester1@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 159852', ', cubisu', 1000, '11-Apr-2024'),
(310, 6, 'Bhumi', '8965321458', 'ayu@gmail.com', 'flat no. 2, dfnjrbjer, jamanagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(311, 6, 'Bhumi', '8965321458', 'ayu@gmail.com', 'flat no. 2, dfnjrbjer, jamanagar, india - 123456', 'cubisum', 1000, '11-Apr-2024'),
(312, 6, 'avinash', '8965745865', 'avinash@gmail.com', 'flat no. 56, jamashednagar, ahemadabad, india - 896547563', 'cubisum', 1000, '13-Apr-2024');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(15) NOT NULL,
  `artist` varchar(15) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(5) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_gallery`
--

CREATE TABLE `image_gallery` (
  `id` int(10) NOT NULL,
  `image_name` varchar(20) NOT NULL,
  `image` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image_gallery`
--

INSERT INTO `image_gallery` (`id`, `image_name`, `image`) VALUES
(6, 'sculpture', 'i14.jpg'),
(7, 'painting', 'i4.jpg'),
(24, 'Serigraphs', 'i18.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 6, 'Krushnraj', 'zkrushnraj@gmail.com', '7041565859', 'hi your wed site are very good , i see never befor'),
(3, 6, 'Ayushiba', 'zkrushnraj@gmail.com', '563215896', 'hiii my name is');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(15) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `product_name` varchar(8) NOT NULL,
  `total_price` int(10) NOT NULL,
  `placed_on` varchar(15) NOT NULL,
  `total_product` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `address`, `product_name`, `total_price`, `placed_on`, `total_product`) VALUES
(9, 6, 'krushnaraj', '8965321458', 'admin@gmail.com', 'flat no. 5, streat, bhavnagar, india - 0158751', ', painti', 8000, '13-Apr-2024', 4),
(10, 6, 'krushnaraj', '8965321458', 'zkrushnraj@gmail.com', 'flat no. 5, hdshdvghs, bhavnagar, india - 123456', ', painti', 2000, '13-Apr-2024', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_status`
--

CREATE TABLE `payment_status` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(15) NOT NULL,
  `product_name` varchar(15) NOT NULL,
  `price` int(10) NOT NULL,
  `payment_status` varchar(15) NOT NULL,
  `method` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_status`
--

INSERT INTO `payment_status` (`id`, `user_id`, `name`, `product_name`, `price`, `payment_status`, `method`) VALUES
(1, 6, 'Bhumi', 'sculpture', 800, 'pending', 'cash on de'),
(2, 6, 'ayu', 'cubisum', 1000, 'padding', 'paytm'),
(3, 6, 'ayu', 'cubisum', 1000, 'padding', 'Credit Card'),
(4, 6, 'ayu', 'cubisum', 1000, 'padding', 'Credit Card'),
(5, 6, 'avinash', 'cubisum', 1000, 'padding', 'cash on delivery'),
(6, 6, 'Bhumi', 'cubisum', 1000, 'padding', 'cash on delivery'),
(7, 6, 'Bhumi', 'cubisum', 1000, 'padding', 'Credit Card'),
(8, 6, 'krushnaraj', ', painting (4) ', 8000, 'padding', 'cash on delivery'),
(9, 6, 'krushnaraj', ', painting (1) ', 2000, 'padding', 'card');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `name` varchar(15) NOT NULL,
  `artist` varchar(15) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `artist`, `price`, `image`) VALUES
(18, 'cubisum', 'jiminlazona', 1000, 'i5.jpg'),
(19, 'painting', 'krishan', 2000, 'I3.jpg'),
(20, 'sculpture', 'uman', 800, 'i14.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(6, 'krushnraj', 'zkrushnraj@gmail.com', '123'),
(9, 'Ayushiba', 'ayushiba@gmail.com', '963'),
(10, 'ayu', 'ayushiba@gmail.com', '123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `art_type`
--
ALTER TABLE `art_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancel_order`
--
ALTER TABLE `cancel_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `foreign` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `image_gallery`
--
ALTER TABLE `image_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `art_type`
--
ALTER TABLE `art_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cancel_order`
--
ALTER TABLE `cancel_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `image_gallery`
--
ALTER TABLE `image_gallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `foregin key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `foregin_key_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment_status`
--
ALTER TABLE `payment_status`
  ADD CONSTRAINT `foreign_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
