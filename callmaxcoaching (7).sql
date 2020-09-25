-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2020 at 02:20 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `callmaxcoaching`
--

-- --------------------------------------------------------

--
-- Table structure for table `aaa_account_category_score`
--

CREATE TABLE `aaa_account_category_score` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `opening_spiel` int(11) DEFAULT NULL,
  `resolution_of_issue` int(11) DEFAULT NULL,
  `communication_skills` int(11) DEFAULT NULL,
  `proper_closing` int(11) DEFAULT NULL,
  `process_compliance` int(11) DEFAULT NULL,
  `account_verification` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aaa_account_category_score`
--

INSERT INTO `aaa_account_category_score` (`id`, `account_name`, `opening_spiel`, `resolution_of_issue`, `communication_skills`, `proper_closing`, `process_compliance`, `account_verification`) VALUES
(21, 'American Plan Administrators', 10, 30, 15, 10, 20, 15),
(22, 'Medical Supply Depot', 10, 30, 20, 10, 30, 0),
(23, 'Exchange and Connectel', 10, 30, 25, 10, 25, 0),
(24, 'Reside New York', 10, 30, 20, 10, 30, 0),
(25, 'First Health Pro', 10, 30, 25, 10, 25, 0),
(26, 'Tiger Companies', 10, 30, 20, 10, 30, 0),
(27, 'MBH Services', 10, 0, 40, 10, 40, 0),
(28, 'White Gloves Consultancy', 10, 0, 40, 10, 40, 0),
(29, 'Medex', 10, 0, 40, 10, 40, 0),
(30, 'AM Home', 10, 30, 25, 10, 25, 0),
(31, 'Rafieh Pharmacy', 10, 30, 25, 10, 25, 0),
(32, 'Edison', 20, 0, 30, 20, 30, 0),
(33, 'USZoom', 20, 30, 20, 10, 20, 0),
(34, 'Mongotel', 10, 30, 20, 10, 30, 0),
(35, 'S&F Supplies', 10, 30, 20, 10, 30, 0),
(36, 'Five Star Recruitment', 20, 0, 30, 20, 30, 0),
(37, 'Five Star Staffing', 10, 30, 20, 10, 30, 0),
(38, 'Five Star Care', 10, 30, 20, 10, 30, 0),
(39, 'Quest Staffing', 10, 30, 20, 10, 30, 0),
(40, 'Dime Trading (Nesstoy)', 10, 30, 20, 10, 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aaa_account_verification`
--

CREATE TABLE `aaa_account_verification` (
  `id` int(11) NOT NULL,
  `qav_data_id` int(11) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `answers` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aaa_account_verification`
--

INSERT INTO `aaa_account_verification` (`id`, `qav_data_id`, `agent`, `account`, `answers`, `date`) VALUES
(1, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(2, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `aaa_agent_score`
--

CREATE TABLE `aaa_agent_score` (
  `id` int(11) NOT NULL,
  `qav_data_id` int(11) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `opening_spiel` float DEFAULT NULL,
  `account_verification` float DEFAULT NULL,
  `resolution_of_issue` float DEFAULT NULL,
  `process_compliance` float DEFAULT NULL,
  `communication_skills` float DEFAULT NULL,
  `proper_closing` float DEFAULT NULL,
  `total_score` float DEFAULT NULL,
  `audit_count` varchar(45) DEFAULT 'N/A',
  `date` date DEFAULT NULL,
  `major` int(11) DEFAULT 0,
  `minor` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aaa_agent_score`
--

INSERT INTO `aaa_agent_score` (`id`, `qav_data_id`, `agent`, `account`, `opening_spiel`, `account_verification`, `resolution_of_issue`, `process_compliance`, `communication_skills`, `proper_closing`, `total_score`, `audit_count`, `date`, `major`, `minor`) VALUES
(5, 7, 'Allan Hilario', 'EDISON', 20, 0, 0, 25, 27.2727, 20, 92.2727, 'N/A', NULL, 0, 0),
(6, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 10, 15, 26.6667, 20, 13.125, 10, 94.7917, 'N/A', NULL, 0, 0),
(7, 9, 'Aileen Domingo', 'EDISON', 20, 0, 0, 25, 27.2727, 20, 92.2727, 'N/A', NULL, 0, 0),
(8, 10, 'Allan Hilario', 'EDISON', 0, 0, 0, 0, 0, 0, 0, 'N/A', NULL, 0, 0),
(9, 11, 'Allan Hilario', 'EDISON', 20, 0, 0, 30, 27, 20, 97, '1st', '2020-05-28', 1, 1),
(10, 12, 'Allan Hilario', 'EDISON', 20, 0, 0, 30, 30, 20, 100, '2nd', '2020-05-28', 1, 1),
(11, 13, 'Alexander Albert Labajo', 'EDISON', 20, 0, 0, 30, 21.8182, 20, 91.8182, '1st', '2020-05-28', 1, 1),
(12, 14, 'Alexander Albert Labajo', 'EDISON', 20, 0, 0, 25, 30, 20, 95, '2nd', '2020-05-28', 0, 0),
(13, 15, 'Alexander Albert Labajo', 'MEDEX', 0, 0, 0, 0, 0, 0, 0, '1st', '2020-05-29', 1, 0),
(14, 16, 'Alexander Albert Labajo', 'MEDEX', 10, 0, 0, 40, 26.6667, 10, 86.6667, '2nd', '2020-05-29', 0, 1),
(15, 17, 'Aileen Domingo', 'EDISON', 0, 0, 0, 0, 0, 0, 0, '1st', '2020-05-29', 1, 0),
(16, 18, 'Aileen Domingo', 'EDISON', 20, 0, 0, 30, 24.5455, 20, 94.5455, '2nd', '2020-05-29', 0, 0),
(17, 19, 'Allan Hilario', 'EDISON', 20, 0, 0, 30, 24.5455, 20, 94.5455, '1st', '2020-05-29', 0, 1),
(18, 20, 'Allan Hilario', 'EDISON', 20, 0, 0, 30, 30, 20, 100, '1st', '2020-05-29', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `aaa_communication_skills`
--

CREATE TABLE `aaa_communication_skills` (
  `id` int(11) NOT NULL,
  `qav_data_id` int(11) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `answers` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aaa_communication_skills`
--

INSERT INTO `aaa_communication_skills` (`id`, `qav_data_id`, `agent`, `account`, `answers`, `date`) VALUES
(1, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(2, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(3, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(4, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(5, 3, 'Allia Luzong', 'AM HOME', 'NO', '2020-04-24'),
(6, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(7, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(8, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(9, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(10, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(11, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(12, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(13, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(14, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(15, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(16, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(17, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(18, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(19, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(20, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(21, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(22, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(23, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(24, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(25, 4, 'Aileen Domingo', 'AM HOME', 'NO', '2020-04-24'),
(26, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(27, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(28, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(29, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(30, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(31, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(32, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(33, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(34, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(35, 5, 'Allan Hilario', 'AM HOME', 'NO', '2020-04-24'),
(36, 5, 'Allan Hilario', 'AM HOME', 'NO', '2020-04-24'),
(37, 5, 'Allan Hilario', 'AM HOME', 'NO', '2020-04-24'),
(38, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(39, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(40, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(41, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(42, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(43, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(44, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(45, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(46, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(47, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(48, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(49, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(50, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(51, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(52, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(53, 6, 'Camille Marcaida', 'AM HOME', 'NO', '2020-04-24'),
(54, 6, 'Camille Marcaida', 'AM HOME', 'NO', '2020-04-24'),
(55, 6, 'Camille Marcaida', 'AM HOME', 'NO', '2020-04-24'),
(56, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(57, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(58, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(59, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(60, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(61, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(62, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(63, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(64, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(65, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(66, 7, 'Allan Hilario', 'EDISON', 'NO', '2020-04-24'),
(67, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(68, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(69, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(70, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(71, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(72, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(73, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(74, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'NO', '2020-05-01'),
(75, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(76, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(77, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(78, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'N/A', '2020-05-01'),
(79, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(80, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(81, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(82, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(83, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(84, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'NO', '2020-05-01'),
(85, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(86, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(87, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(88, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(89, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(90, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(91, 9, 'Aileen Domingo', 'EDISON', 'NO', '2020-05-07'),
(92, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(93, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(94, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(95, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(96, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(97, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(98, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(99, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(100, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(101, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(102, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(103, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(104, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(105, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(106, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(107, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(108, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(109, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(110, 11, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-28'),
(111, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(112, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(113, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(114, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(115, 11, 'Allan Hilario', 'EDISON', 'NO', '2020-05-28'),
(116, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(117, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(118, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(119, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(120, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(121, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(122, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(123, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(124, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(125, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(126, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(127, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(128, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(129, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(130, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(131, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(132, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(133, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(134, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(135, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(136, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(137, 13, 'Alexander Albert Labajo', 'EDISON', 'NO', '2020-05-28'),
(138, 13, 'Alexander Albert Labajo', 'EDISON', 'NO', '2020-05-28'),
(139, 13, 'Alexander Albert Labajo', 'EDISON', 'NO', '2020-05-28'),
(140, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(141, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(142, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(143, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(144, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(145, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(146, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(147, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(148, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(149, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(150, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(151, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(152, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(153, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(154, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(155, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(156, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(157, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(158, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(159, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(160, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(161, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(162, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(163, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(164, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(165, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(166, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(167, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(168, 16, 'Alexander Albert Labajo', 'MEDEX', 'NO', '2020-05-29'),
(169, 16, 'Alexander Albert Labajo', 'MEDEX', 'NO', '2020-05-29'),
(170, 16, 'Alexander Albert Labajo', 'MEDEX', 'NO', '2020-05-29'),
(171, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(172, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(173, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(174, 16, 'Alexander Albert Labajo', 'MEDEX', 'NO', '2020-05-29'),
(175, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(176, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(177, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(178, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(179, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(180, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(181, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(182, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(183, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(184, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(185, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(186, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(187, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(188, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(189, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(190, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(191, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(192, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(193, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(194, 18, 'Aileen Domingo', 'EDISON', 'NO', '2020-05-29'),
(195, 18, 'Aileen Domingo', 'EDISON', 'NO', '2020-05-29'),
(196, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(197, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(198, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(199, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(200, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(201, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(202, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(203, 19, 'Allan Hilario', 'EDISON', 'NO', '2020-05-29'),
(204, 19, 'Allan Hilario', 'EDISON', 'NO', '2020-05-29'),
(205, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(206, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(207, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(208, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(209, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(210, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(211, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(212, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(213, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(214, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(215, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(216, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(217, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(218, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `aaa_opening_spiel`
--

CREATE TABLE `aaa_opening_spiel` (
  `id` int(11) NOT NULL,
  `qav_data_id` int(11) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `answers` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aaa_opening_spiel`
--

INSERT INTO `aaa_opening_spiel` (`id`, `qav_data_id`, `agent`, `account`, `answers`, `date`) VALUES
(1, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(2, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(3, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(4, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(5, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(6, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(7, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(8, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(9, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(10, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(11, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(12, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(13, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(14, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(15, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(16, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(17, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(18, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(19, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(20, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(21, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(22, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(23, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(24, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(25, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(26, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(27, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(28, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(29, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(30, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(31, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(32, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(33, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(34, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(35, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'N/A', '2020-05-01'),
(36, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(37, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(38, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(39, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(40, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(41, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(42, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(43, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(44, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(45, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(46, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(47, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(48, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(49, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(50, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(51, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(52, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(53, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(54, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(55, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(56, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(57, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(58, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(59, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(60, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(61, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(62, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(63, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(64, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(65, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(66, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(67, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(68, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(69, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(70, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(71, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(72, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(73, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(74, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(75, 16, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(76, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(77, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(78, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(79, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(80, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(81, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(82, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(83, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(84, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(85, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(86, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(87, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(88, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(89, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(90, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(91, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(92, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(93, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(94, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(95, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(96, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `aaa_process_compliance`
--

CREATE TABLE `aaa_process_compliance` (
  `id` int(11) NOT NULL,
  `qav_data_id` int(11) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `answers` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aaa_process_compliance`
--

INSERT INTO `aaa_process_compliance` (`id`, `qav_data_id`, `agent`, `account`, `answers`, `date`) VALUES
(1, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(2, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(3, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(4, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(5, 3, 'Allia Luzong', 'AM HOME', 'NO', '2020-04-24'),
(6, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(7, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(8, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(9, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(10, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(11, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(12, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(13, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(14, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(15, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(16, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(17, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(18, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(19, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(20, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(21, 7, 'Allan Hilario', 'EDISON', 'NO', '2020-04-24'),
(22, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(23, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(24, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(25, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(26, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(27, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(28, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(29, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(30, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(31, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(32, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(33, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(34, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(35, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(36, 9, 'Aileen Domingo', 'EDISON', 'NO', '2020-05-07'),
(37, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(38, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(39, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(40, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(41, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(42, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(43, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(44, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(45, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(46, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(47, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(48, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(49, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(50, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(51, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(52, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(53, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(54, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(55, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(56, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(57, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(58, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(59, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(60, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(61, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(62, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(63, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(64, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(65, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(66, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(67, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(68, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(69, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(70, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(71, 14, 'Alexander Albert Labajo', 'EDISON', 'NO', '2020-05-28'),
(72, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(73, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(74, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(75, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(76, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(77, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(78, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(79, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(80, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(81, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(82, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(83, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(84, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(85, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(86, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(87, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(88, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(89, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(90, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(91, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(92, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(93, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(94, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(95, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(96, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(97, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(98, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(99, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(100, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(101, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(102, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(103, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `aaa_proper_closing`
--

CREATE TABLE `aaa_proper_closing` (
  `id` int(11) NOT NULL,
  `qav_data_id` int(11) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `answers` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aaa_proper_closing`
--

INSERT INTO `aaa_proper_closing` (`id`, `qav_data_id`, `agent`, `account`, `answers`, `date`) VALUES
(1, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(2, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(3, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(4, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(5, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(6, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(7, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(8, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(9, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(10, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(11, 7, 'Allan Hilario', 'EDISON', 'YES', '2020-04-24'),
(12, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(13, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(14, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(15, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(16, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(17, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(18, 9, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-07'),
(19, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(20, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(21, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(22, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(23, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(24, 11, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(25, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(26, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(27, 12, 'Allan Hilario', 'EDISON', 'YES', '2020-05-28'),
(28, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(29, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(30, 13, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(31, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(32, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(33, 14, 'Alexander Albert Labajo', 'EDISON', 'YES', '2020-05-28'),
(34, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(35, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(36, 15, 'Alexander Albert Labajo', 'MEDEX', 'N/A', '2020-05-29'),
(37, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(38, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(39, 16, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(40, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(41, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(42, 17, 'Aileen Domingo', 'EDISON', 'N/A', '2020-05-29'),
(43, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(44, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(45, 18, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(46, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(47, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(48, 19, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(49, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(50, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29'),
(51, 20, 'Allan Hilario', 'EDISON', 'YES', '2020-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `aaa_resolution_of_issue`
--

CREATE TABLE `aaa_resolution_of_issue` (
  `id` int(11) NOT NULL,
  `qav_data_id` int(11) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `answers` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aaa_resolution_of_issue`
--

INSERT INTO `aaa_resolution_of_issue` (`id`, `qav_data_id`, `agent`, `account`, `answers`, `date`) VALUES
(1, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(2, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(3, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(4, 3, 'Allia Luzong', 'AM HOME', 'YES', '2020-04-24'),
(5, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(6, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(7, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(8, 4, 'Aileen Domingo', 'AM HOME', 'YES', '2020-04-24'),
(9, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(10, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(11, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(12, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(13, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(14, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(15, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(16, 6, 'Camille Marcaida', 'AM HOME', 'YES', '2020-04-24'),
(17, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(18, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(19, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(20, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(21, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(22, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(23, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01'),
(24, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'NO', '2020-05-01'),
(25, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'YES', '2020-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `aaa_zero_tolerance`
--

CREATE TABLE `aaa_zero_tolerance` (
  `id` int(11) NOT NULL,
  `qav_data_id` int(11) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `answers` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aaa_zero_tolerance`
--

INSERT INTO `aaa_zero_tolerance` (`id`, `qav_data_id`, `agent`, `account`, `answers`, `date`) VALUES
(1, 3, 'Allia Luzong', 'AM HOME', 'NO', '2020-04-24'),
(2, 4, 'Aileen Domingo', 'AM HOME', 'NO', '2020-04-24'),
(3, 5, 'Allan Hilario', 'AM HOME', 'YES', '2020-04-24'),
(4, 6, 'Camille Marcaida', 'AM HOME', 'NO', '2020-04-24'),
(5, 7, 'Allan Hilario', 'EDISON', 'NO', '2020-04-24'),
(6, 8, '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'NO', '2020-05-01'),
(7, 9, 'Aileen Domingo', 'EDISON', 'NO', '2020-05-07'),
(8, 10, 'Allan Hilario', 'EDISON', 'N/A', '2020-05-07'),
(9, 11, 'Allan Hilario', 'EDISON', 'NO', '2020-05-28'),
(10, 12, 'Allan Hilario', 'EDISON', 'NO', '2020-05-28'),
(11, 13, 'Alexander Albert Labajo', 'EDISON', 'NO', '2020-05-28'),
(12, 14, 'Alexander Albert Labajo', 'EDISON', 'NO', '2020-05-28'),
(13, 15, 'Alexander Albert Labajo', 'MEDEX', 'YES', '2020-05-29'),
(14, 16, 'Alexander Albert Labajo', 'MEDEX', 'NO', '2020-05-29'),
(15, 17, 'Aileen Domingo', 'EDISON', 'YES', '2020-05-29'),
(16, 18, 'Aileen Domingo', 'EDISON', 'NO', '2020-05-29'),
(17, 19, 'Allan Hilario', 'EDISON', 'NO', '2020-05-29'),
(18, 20, 'Allan Hilario', 'EDISON', 'NO', '2020-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `status`, `startdate`, `enddate`) VALUES
(46, 'Amazing Listers VA', 'ACTIVE', NULL, NULL),
(47, 'A1 Fireseal', 'ACTIVE', NULL, NULL),
(48, 'ABLE PAVEMENT', 'ACTIVE', NULL, NULL),
(49, 'AM HOME', 'ACTIVE', NULL, NULL),
(50, 'Amazing Listers', 'ACTIVE', NULL, NULL),
(51, 'American Plan Administrators', 'ACTIVE', NULL, NULL),
(52, 'Anchor Home Health Care Services', 'LOSS', NULL, NULL),
(53, 'Evergreen', 'ACTIVE', NULL, NULL),
(54, 'CICADA ENTERPRISE INC', 'ACTIVE', NULL, NULL),
(55, 'Grab Wireless', 'LOSS', NULL, NULL),
(56, 'Culinary Depot', 'ACTIVE', NULL, NULL),
(57, 'Dime Trading (Nesstoy)', 'ACTIVE', NULL, NULL),
(58, 'Dynalink', 'ACTIVE', NULL, NULL),
(59, 'Edison', 'ACTIVE', NULL, NULL),
(60, 'S&F Supplies', 'ACTIVE', NULL, NULL),
(61, 'Exchange and Connectel', 'ACTIVE', NULL, NULL),
(62, 'EXQUISITE KITCHEN DESIGNS', 'ACTIVE', NULL, NULL),
(63, 'Fidella', 'ACTIVE', NULL, NULL),
(64, 'First Health Pro', 'ACTIVE', NULL, NULL),
(65, 'Five Star CARE', 'ACTIVE', NULL, NULL),
(66, 'Five Star Staffing', 'ACTIVE', NULL, NULL),
(67, 'Goldstar Electronics', 'ACTIVE', NULL, NULL),
(68, 'Grandview', 'ACTIVE', NULL, NULL),
(69, 'Hudi Greenberger Photography', 'HOLD', NULL, NULL),
(70, 'JWBL', 'ACTIVE', NULL, NULL),
(71, 'JWBL POLYMERS', 'ACTIVE', NULL, NULL),
(72, 'LUXURY LIGHTING', 'ACTIVE', NULL, NULL),
(73, 'Marks & Spencer', 'ACTIVE', NULL, NULL),
(74, 'MBH Services', 'ACTIVE', NULL, NULL),
(75, 'Medex', 'ACTIVE', NULL, NULL),
(76, 'Medical Supply Depot', 'ACTIVE', NULL, NULL),
(77, 'MongoTEL', 'ACTIVE', NULL, NULL),
(78, 'Quest Staffing', 'ACTIVE', NULL, NULL),
(79, 'Rafieh Pharmacy', 'ACTIVE', NULL, NULL),
(80, 'Renah Appliance Repair', 'ACTIVE', NULL, NULL),
(81, 'Reside New York', 'ACTIVE', NULL, NULL),
(82, 'RUBBERSTAMP', 'ACTIVE', NULL, NULL),
(83, 'SPARK LIGHTING', 'ACTIVE', NULL, NULL),
(84, 'Sthetix', 'ACTIVE', NULL, NULL),
(85, 'Tiger Companies', 'ACTIVE', NULL, NULL),
(86, 'Total Plan Concept', 'ACTIVE', NULL, NULL),
(87, 'Twin Med', 'ACTIVE', NULL, NULL),
(88, 'UHA', 'ACTIVE', NULL, NULL),
(89, 'White Gloves Consultancy', 'ACTIVE', NULL, NULL),
(90, 'Dark White Studios', 'TRAINING', NULL, NULL),
(91, 'YK Group', 'ACTIVE', NULL, NULL),
(92, 'Five Star Recruitment', 'ACTIVE', NULL, NULL),
(93, 'USZoom', 'ACTIVE', NULL, NULL),
(94, 'Fivestar Coordinator', 'ACTIVE', NULL, NULL),
(95, 'Bonafide Healthcare', 'ACTIVE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `reportcount` int(11) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `tl` varchar(255) DEFAULT NULL,
  `am` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `status`, `account`, `reportcount`, `fullname`, `tl`, `am`) VALUES
(1, 'Active', 'A1 Fireseal', 0, 'Lloyd Mari', NULL, NULL),
(2, 'Active', 'A1 Fireseal', 0, 'Erish Jasper Genuino', NULL, NULL),
(3, 'Active', 'Able Pavement', 0, 'Alrich T. Patosa', NULL, NULL),
(4, 'Active', 'AM Home Delivery', 0, 'Catherine Pacheco', NULL, NULL),
(5, 'Active', 'AM Home Delivery', 0, 'Sean D. Castañeda', NULL, NULL),
(6, 'Active', 'Amazing Listers (GA)', 0, 'Justin Pena', NULL, NULL),
(7, 'Active', 'Amazing Listers (GA)', 0, 'Jan Dellen Francisco', NULL, NULL),
(8, 'Active', 'Amazing Listers (GA)', 0, 'Kyle Wilvin H. Yu', NULL, NULL),
(9, 'Active', 'Amazing Listers (GA)', 0, 'Karen Ramirez', NULL, NULL),
(10, 'Active', 'Amazing Listers (VA)', 0, 'Glocel Grace Lectura', NULL, NULL),
(11, 'Active', 'American Plan Administrator', 0, 'Rhea Famisaran', NULL, NULL),
(12, 'Active', 'American Plan Administrator', 0, 'Myleen Ancheta', NULL, NULL),
(13, 'Active', 'American Plan Administrator', 0, 'Jay Sol Cruz', NULL, NULL),
(14, 'Active', 'American Plan Administrator', 0, 'Maria Cristina Santillan', NULL, NULL),
(15, 'Active', 'American Plan Administrator', 0, 'Kristine Erika T. Watanabe', NULL, NULL),
(16, 'Active', 'American Plan Administrator', 0, 'Ana Isabel Olete', NULL, NULL),
(17, 'Active', 'American Plan Administrator', 0, 'Irish Joy C. Salanguit', NULL, NULL),
(18, 'Active', 'American Plan Administrator', 0, 'Cyril Suellen C. Toledo', NULL, NULL),
(19, 'Active', 'American Plan Administrator', 0, 'Donna Mae B. Armamento', NULL, NULL),
(20, 'Active', 'American Plan Administrator', 0, 'Rowena Gliponeo', NULL, NULL),
(21, 'Active', 'American Plan Administrator', 0, 'Marjorie A. Valderama', NULL, NULL),
(22, 'Active', 'American Plan Administrator', 0, 'Genesis Parentela', NULL, NULL),
(23, 'Active', 'American Plan Administrator', 0, 'Sarah Jane Abonitalla', NULL, NULL),
(24, 'Active', 'American Plan Administrator', 0, 'Lalaine Catangue', NULL, NULL),
(25, 'Active', 'American Plan Administrator', 0, 'Joan Sumeracruz', NULL, NULL),
(26, 'Active', 'Cicada', 0, 'Felizardo Josef', NULL, NULL),
(27, 'Active', 'Cicada Group', 0, 'Jimel Toledo', NULL, NULL),
(28, 'Active', 'Culinary Depot', 0, 'Ma. Patrica King', NULL, NULL),
(29, 'Active', 'Culinary Depot', 0, 'Robert Arvin H. Cifra', NULL, NULL),
(30, 'Active', 'Culinary Depot', 0, 'Joseph Riel P. Rañoa', NULL, NULL),
(31, 'Active', 'Culinary Depot', 0, 'Rioniña V. Ocampo', NULL, NULL),
(32, 'Active', 'Culinary Depot', 0, 'Davis Z. Ti', NULL, NULL),
(33, 'Active', 'Culinary Depot', 0, 'Mae Lynie Darunday', NULL, NULL),
(34, 'Active', 'Culinary Depot', 0, 'Christine Joy Brun', NULL, NULL),
(35, 'Active', 'Culinary Depot', 0, 'Allia Luzong', NULL, NULL),
(36, 'Active', 'Culinary Depot', 0, 'Danielle Aquilino', NULL, NULL),
(37, 'Active', 'Culinary Depot', 0, 'Nicole Bringuela', NULL, NULL),
(38, 'Active', 'Dark White Studios', 0, 'Joey Ronquillo', NULL, NULL),
(39, 'Active', 'Dime Trading', 0, 'Alexander Albert Labajo', NULL, NULL),
(40, 'Active', 'Dime Trading', 0, 'Edgie Zamudio', NULL, NULL),
(41, 'Active', 'Dynalink', 0, 'Felizardo Esguerra Jr.', NULL, NULL),
(42, 'Active', 'Edison', 0, 'Paola Bianca D. Galang', NULL, NULL),
(43, 'Active', 'Edison', 0, 'Allan Hilario', NULL, NULL),
(44, 'Active', 'Edison', 0, 'Ranjit Singh Banga', NULL, NULL),
(45, 'Active', 'Edison', 0, 'Michael Casabuena', NULL, NULL),
(46, 'Active', 'Edison', 0, 'April Dwight C. Agliam', NULL, NULL),
(47, 'Active', 'Edison', 0, 'Bennet Vales', NULL, NULL),
(48, 'Active', 'Edison', 0, 'Joanna Rafada', NULL, NULL),
(49, 'Active', 'Edison', 0, 'Jennyfer Palad', NULL, NULL),
(50, 'Active', 'Evergreen Insurance & Risk Management', 0, 'Harlen Joyce Redobla', NULL, NULL),
(51, 'Active', 'Evergreen Insurance & Risk Management', 0, 'Ricaleen Ocampo', NULL, NULL),
(52, 'Active', 'Evergreen Insurance & Risk Management', 0, 'Leilani Toquero', NULL, NULL),
(53, 'Active', 'Evergreen Insurance & Risk Management', 0, 'Jenny D. Pescasio', NULL, NULL),
(54, 'Active', 'Evergreen Insurance & Risk Management', 0, 'Criztal Leigh G. Pilar', NULL, NULL),
(55, 'Active', 'Exchange / Connectel', 0, 'Ralf Emerson Ramos', NULL, NULL),
(56, 'Active', 'Exchange / Connectel', 0, 'Michaela May E Gillado', NULL, NULL),
(57, 'Active', 'Exchange / Connectel', 0, 'Isaiah Marione F. De Castro', NULL, NULL),
(58, 'Active', 'Exchange / Connectel', 0, 'Marlowe Ansley Sescon', NULL, NULL),
(59, 'Active', 'Exchange / Connectel', 0, 'Rachelle Anne Whigan', NULL, NULL),
(60, 'Active', 'Exchange / Connectel', 0, 'Lorheanne Mae Ariola', NULL, NULL),
(61, 'Active', 'Exchange Telecom', 0, 'Giovanni Pewee P. Larga', NULL, NULL),
(62, 'Active', 'Exchange Telecom', 0, 'Channielle Nepomuceno', NULL, NULL),
(63, 'Active', 'Exquisite Kitchen Design', 0, 'Razel Ann M. Pabalan', NULL, NULL),
(64, 'Active', 'Fidella Plus', 0, 'Ruel Prias', NULL, NULL),
(65, 'Active', 'Fidella Plus', 0, 'Jane Moratillo', NULL, NULL),
(66, 'Active', 'First Health Pro', 0, 'Sheila M. Fischer', NULL, NULL),
(67, 'Active', 'Five Star Care', 0, 'Mick Russell Serrano', NULL, NULL),
(68, 'Active', 'Five Star Care', 0, 'Marinel Ancheta', NULL, NULL),
(69, 'Active', 'Five Star Care', 0, 'Jennylyn Ching', NULL, NULL),
(70, 'Active', 'Five Star Care', 0, 'Eileen Rose Samson', NULL, NULL),
(71, 'Active', 'Five Star Care', 0, 'Jeffrey Licuanan', NULL, NULL),
(72, 'Active', 'Five Star Staffing', 0, 'Jerome Canosa', NULL, NULL),
(73, 'Active', 'Five Star Staffing', 0, 'Camille Marcaida', NULL, NULL),
(74, 'Active', 'Five Star Staffing', 0, 'Mary Anne K. Pellejera', NULL, NULL),
(75, 'Active', 'Five Star Staffing', 0, 'Mary Ann Mesa', NULL, NULL),
(76, 'Active', 'Five Star Staffing', 0, 'Michael Anthony D. Calata', NULL, NULL),
(77, 'Active', 'Five Star Staffing', 0, 'Jelyne Mallari', NULL, NULL),
(78, 'Active', 'Fivestar Care', 0, 'Paula Salboro', NULL, NULL),
(79, 'Active', 'Fivestar Care', 0, 'Christopher Jerry Bitalac', NULL, NULL),
(80, 'Active', 'GNP Insurance Brokerage', 0, 'Paolo De Leon', NULL, NULL),
(81, 'Active', 'Goldstar Electronics', 0, 'Jazz Espinosa', NULL, NULL),
(82, 'Active', 'Grandview', 0, 'Mark Arnie Doroteo', NULL, NULL),
(83, 'Active', 'Grandview', 0, 'Marshall Oliver Villaruel', NULL, NULL),
(84, 'Active', 'Hudi Greenberg Photography', 0, 'Arnold Vismanos', NULL, NULL),
(85, 'Active', 'Medical Supply Depot', 0, 'Angelo Genorga', 'Jessa Matuguina', NULL),
(86, 'Active', 'Medical Supply Depot', 0, 'Elizalde Mission Jr', 'Jessa Matuguina', NULL),
(87, 'Active', 'Medical Supply Depot', 0, 'Marlon L. Linga', 'Jessa Matuguina', NULL),
(88, 'Active', 'Medical Supply Depot', 0, 'Charlene Shane Tutaan', 'Jessa Matuguina', NULL),
(89, 'Active', 'Reside NY', 0, 'April Rose V. Villamin', 'Mary Jane B. Zafe', NULL),
(90, 'Active', 'Reside NY', 0, 'Nadia B. Nuevo', 'Mary Jane B. Zafe', NULL),
(91, 'Active', 'MongoTEL', 0, 'Gabriel R. Quimora', 'Fritz Ravana', NULL),
(92, 'Active', 'MongoTEL', 0, 'Rey Anthony R. Dematera', 'Fritz Ravana', NULL),
(93, 'Active', 'MongoTEL', 0, 'Jomart R. Guayan', 'Fritz Ravana', NULL),
(94, 'Active', 'S&F Supplies', 0, 'Margarita S. Santos', 'Maria Antonette Beato', NULL),
(95, 'Active', 'S&F Supplies', 0, 'Jose Roy Villegas', 'Maria Antonette Beato', NULL),
(96, 'Active', 'USZoom', 0, 'Camil Artan Calimlim', 'Hershey M. Austria', NULL),
(97, 'Active', 'Quest Staffing', 0, 'Aileen Domingo', 'Richard Franco', NULL),
(98, 'Active', 'MBH Services', 0, 'Annlynette Aquino', 'Kris Eric Macairan', NULL),
(99, 'Active', 'MBH Services', 0, 'Michel Balendo', 'Kris Eric Macairan', NULL),
(100, 'Active', 'MBH Services', 0, 'Miguel Jayson Reyes', 'Kris Eric Macairan', NULL),
(101, 'Active', 'MBH Services', 0, 'Clarisse Icaro', 'Kris Eric Macairan', NULL),
(102, 'Active', 'MBH Services', 0, 'Marife Donesa', 'Kris Eric Macairan', NULL),
(103, 'Active', 'Medex', 0, 'Paulino Ducat', 'Jefferson Velasco', NULL),
(104, 'Active', 'Medex', 0, 'Romelito Abad', 'Jefferson Velasco', NULL),
(105, 'Active', 'White Gloves Consultancy', 0, 'Ann Loraine Advincula', '	Jefferson Velasco', NULL),
(106, 'Active', 'Rafieh Pharmacy', 0, 'Mike Karlo M. Macatangay', 'John Derick O. Tinampay', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `agent_reports`
--

CREATE TABLE `agent_reports` (
  `id` int(11) NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `report_type` varchar(255) DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `coaching_date` date DEFAULT NULL,
  `acknowledge_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `root_cause` longtext DEFAULT NULL,
  `action_plan` longtext DEFAULT NULL,
  `team_leader` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agent_reports`
--

INSERT INTO `agent_reports` (`id`, `report_id`, `agent`, `account`, `report_type`, `date_issued`, `coaching_date`, `acknowledge_date`, `status`, `root_cause`, `action_plan`, `team_leader`) VALUES
(41, 20, 'Paulino Ducat', 'MBH Services', 'TL Report', '2020-08-27', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(43, NULL, 'Rioniña V. Ocampo', 'MBH Services', 'TL Report', '2020-08-27', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(44, NULL, 'Myleen Ancheta', 'MBH Services', 'TL Report', '2020-08-27', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(45, NULL, 'Kyle Wilvin H. Yu', 'MBH Services', 'TL Report', '2020-08-28', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(46, NULL, 'Kyle Wilvin H. Yu', 'MBH Services', 'TL Report', '2020-09-02', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(47, NULL, 'Jay Sol Cruz', 'MBH Services', 'TL Report', '2020-09-02', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(48, NULL, 'Glocel Grace Lectura', 'MBH Services', 'TL Report', '2020-09-02', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(49, NULL, 'Mike Karlo M. Macatangay', 'MBH Services', 'TL Report', '2020-09-02', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(50, NULL, 'Kyle Wilvin H. Yu', 'MBH Services', 'TL Report', '2020-09-03', '2020-09-24', NULL, 'Submitted', NULL, 'Agent is thinking while doing while being Communicate Clearly. TL should provide coaching and mentoring sessions to help the agent transition from thinking while doing, to only doing.', NULL),
(51, NULL, 'Kyle Wilvin H. Yu', 'MBH Services', 'TL Report', '2020-09-03', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(52, NULL, 'Myleen Ancheta', 'MBH Services', 'TL Report', '2020-09-03', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(53, NULL, 'Maria Cristina Santillan', 'MBH Services', 'TL Report', '2020-09-03', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(54, NULL, 'Maria Cristina Santillan', 'MBH Services', 'TL Report', '2020-09-03', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(55, NULL, 'Maria Cristina Santillan', 'MBH Services', 'TL Report', '2020-09-03', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(56, NULL, 'Irish Joy C. Salanguit', 'MBH Services', 'TL Report', '2020-09-03', NULL, NULL, 'Submitted', NULL, NULL, NULL),
(57, NULL, 'Kyle Wilvin H. Yu', 'MBH Services', 'TL Report', '2020-09-08', '2020-09-24', NULL, 'Submitted', NULL, 'The agent cannot propose the Computer Literate, but the agent understand the knowledge.  Coach the agent until the agent can evaluate the said knowledge.', ''),
(58, NULL, 'Karen Ramirez', 'MBH Services', 'TL Report', '2020-09-08', '2020-09-24', '2020-09-08', 'Acknowledged', NULL, 'The agent cannot justify the Ability to communicate and resolve issues, but the agent is aware to this knowledge. Coach the agent until the agent can justify the knowledge.', 'Kwon Jin Bacali'),
(59, NULL, '', 'Exchange and Connectel', 'QA Report', '2020-09-21', NULL, NULL, 'Pending', NULL, NULL, ''),
(60, NULL, 'Lloyd Mari', 'Exchange and Connectel', 'QA Report', '2020-09-21', NULL, NULL, 'Pending', NULL, NULL, ''),
(61, NULL, 'Lloyd Mari', 'Exchange and Connectel', 'QA Report', '2020-09-21', NULL, NULL, 'Pending', NULL, NULL, ''),
(62, NULL, 'Kristine Erika T. Watanabe', 'Exchange and Connectel', 'QA Report', '2020-09-21', NULL, NULL, 'Pending', NULL, NULL, ''),
(63, NULL, 'Karen Ramirez', 'Exchange and Connectel', 'QA Report', '2020-09-21', NULL, NULL, 'Pending', NULL, NULL, ''),
(64, NULL, 'Marjorie A. Valderama', 'Exchange and Connectel', 'QA Report', '2020-09-21', NULL, NULL, 'Pending', NULL, NULL, ''),
(65, NULL, 'Marjorie A. Valderama', 'Exchange and Connectel', 'QA Report', '2020-09-21', NULL, NULL, 'Pending', NULL, NULL, ''),
(66, NULL, 'Glocel Grace Lectura', 'Exchange and Connectel', 'QA Report', '2020-09-21', NULL, NULL, 'Pending', NULL, NULL, ''),
(67, NULL, 'Cyril Suellen C. Toledo', 'Exchange and Connectel', 'QA Report', '2020-09-21', NULL, NULL, 'Pending', NULL, NULL, ''),
(68, NULL, 'Kyle Wilvin H. Yu', 'Exchange and Connectel', 'QA Report', '2020-09-21', NULL, NULL, 'Pending', NULL, NULL, ''),
(69, NULL, 'Kyle Wilvin H. Yu', 'Exchange and Connectel', 'QA Report', '2020-09-21', NULL, NULL, 'Pending', NULL, NULL, ''),
(70, NULL, 'Arnold Vismanos', 'Exchange and Connectel', 'QA Report', '2020-09-21', NULL, NULL, 'Pending', NULL, NULL, ''),
(71, NULL, 'Glocel Grace Lectura', 'Exchange and Connectel', 'QA Report', '2020-09-22', NULL, NULL, 'Pending', NULL, NULL, ''),
(72, NULL, 'Maria Cristina Santillan', 'Exchange and Connectel', 'QA Report', '2020-09-22', NULL, NULL, 'Pending', NULL, NULL, ''),
(73, NULL, 'Maria Cristina Santillan', 'Exchange and Connectel', 'QA Report', '2020-09-22', NULL, NULL, 'Pending', NULL, NULL, ''),
(74, NULL, 'Catherine Pacheco', 'Exchange and Connectel', 'QA Report', '2020-09-22', NULL, NULL, 'Pending', NULL, NULL, ''),
(75, NULL, 'Ana Isabel Olete', 'Exchange and Connectel', 'QA Report', '2020-09-24', NULL, NULL, 'Pending', NULL, NULL, ''),
(76, NULL, 'Karen Ramirez', 'Exchange and Connectel', 'QA Report', '2020-09-24', NULL, NULL, 'Pending', NULL, NULL, ''),
(77, NULL, 'Jerome Canosa', 'Exchange and Connectel', 'QA Report', '2020-09-24', NULL, NULL, 'Pending', NULL, NULL, ''),
(78, NULL, 'Myleen Ancheta', 'Exchange and Connectel', 'QA Report', '2020-09-24', '2020-09-24', NULL, 'Submitted', NULL, '3rd Testing action plan update', 'Kwon Jin Bacali'),
(79, NULL, 'Marshall Oliver Villaruel', 'Exchange and Connectel', 'QA Report', '2020-09-24', NULL, NULL, 'Pending', NULL, NULL, ''),
(80, NULL, 'Ana Isabel Olete', 'Exchange and Connectel', 'QA Report', '2020-09-24', NULL, NULL, 'Pending', NULL, NULL, ''),
(81, NULL, 'Irish Joy C. Salanguit', 'Exchange and Connectel', 'QA Report', '2020-09-24', '2020-09-24', '2020-09-24', 'Acknowledged', NULL, '<br />\r\n<b>Notice</b>:  Undefined variable: statement in <b>C:UsersKwonxampphtdocsBackupCallmax_CoachingagentSearchinfo.php</b> on line <b>483</b><br />\r\n', 'Kwon Jin Bacali');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `qav_submittedcounter` int(11) DEFAULT NULL,
  `qav_acknowledgedcounter` int(11) DEFAULT NULL,
  `qan_submittedcounter` int(11) DEFAULT NULL,
  `qan_acknowledgedcounter` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `qav_submittedcounter`, `qav_acknowledgedcounter`, `qan_submittedcounter`, `qan_acknowledgedcounter`) VALUES
(1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `demerits` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `lastname`, `firstname`, `username`, `password`, `status`, `reg_date`, `demerits`, `email`) VALUES
(7, 'Bacali', 'Kwon Jin', 'tester', 'testingforvoice', 'Active', '2020-04-02', 'QAV', 'k.bacali.callmax@gmail.com'),
(8, 'Bacali', 'Kwon Jin', 'tester2', 'testingfornonvoice', 'Active', '2020-04-02', 'QAN', 'k.bacali.callmax@gmail.com'),
(9, 'Santarina', 'Edlyn', 'edlynsantarina', 'Djam11042007', 'Active', '2020-04-03', 'QAV', 'e.santarina.callmax@gmail.com'),
(10, 'Crawford', 'Nelda B.', 'NeldaCrawford', 'Dailey85', 'Active', '2020-04-03', 'QAV', 'n.crawford@callmaxsolutions.com'),
(11, 'Administrator', 'System', 'admin', 'callmaxcoaching@admin', 'Active', '2020-04-03', 'SUPERADMIN', NULL),
(12, 'Alturas', 'Angel', 'angel', 'passw3rd', 'Active', '2020-04-06', 'KPI', 'am.alturas.callmax@gmail.com'),
(13, 'Palad', 'Rey Edward', 'Rey', 'edwardP1016!', 'Active', '2020-04-07', 'QAN', 'rey.edward.callmax@gmail.com'),
(14, 'Bacali', 'Kwon Jin', 'tester3', 'testingfortl', 'Active', '2020-04-02', 'TL', 'k.bacali.callmax@gmail.com'),
(19, 'Personnel', 'Executive', 'exec', 'callmaxcoaching@exec', 'Active', '2020-04-02', 'SUPERADMIN', NULL),
(20, 'Bacali', 'Kwon Jin', 'tester4', 'testingforam', 'Active', '2020-05-27', 'AM', 'tester4@gmail.com'),
(21, 'Tinampay', 'Derick', 'dee', 'deetl', 'Active', '2020-05-27', 'TL', 'tldee@gmail.com'),
(22, 'Bacali', 'Kwon Jin', 'tester5', 'testingforhr', 'Active', '2020-05-27', 'HR', 'k.bacali.callmax@gmail.com'),
(23, 'Teodoro', 'Lance', 'lance', 'lance@123', 'Active', '2020-08-25', 'QAV', 'lm.teodoro.callmax@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hr_reports`
--

CREATE TABLE `hr_reports` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `offense` longtext DEFAULT NULL,
  `coaching_details` longtext DEFAULT NULL,
  `offense_count` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `submitted_by` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hr_reports`
--

INSERT INTO `hr_reports` (`id`, `date`, `agent`, `offense`, `coaching_details`, `offense_count`, `account`, `submitted_by`, `status`) VALUES
(1, '2020-06-06', 'Lloyd Mari', 'Testing', 'Testing', 1, 'Amazing Listers', 'TL', 'Submitted'),
(2, '2020-06-06', 'Jan Dellen Francisco', 'Testing', 'Testing', 1, 'American Plan Administrators', 'TL', 'Submitted'),
(3, '2020-06-06', 'Justin Pena', 'Test', 'Test', 1, 'Amazing Listers VA', 'TL', 'Submitted'),
(4, '2020-06-06', 'Justin Pena', 'test', 'test', 1, 'American Plan Administrators', 'TL', 'Submitted'),
(5, '2020-06-06', 'Jan Dellen Francisco', 'test', 'test', 1, 'Amazing Listers', 'TL', 'Submitted'),
(6, '2020-06-06', 'Jay Sol Cruz', 'testing', 'testing', 1, 'American Plan Administrators', 'TL', 'Submitted'),
(7, '2020-06-06', 'Lloyd Mari', 'Test Send Report', 'Test Send Report', 2, 'Amazing Listers VA', 'TL', 'Submitted'),
(8, '2020-06-06', 'Erish Jasper Genuino', 'Test Send Report', 'Test Send Report', 1, 'Edison', 'TL', 'Submitted'),
(9, '2020-06-06', 'Sean D. Castañeda', 'tessssst', 'tessssst', 3, 'Edison', 'TL', 'Submitted'),
(10, '2020-06-10', 'Mike Karlo M. Macatangay', 'Testing report From HR', 'Testing for 2nd time', 4, 'JWBL', 'HR', 'Submitted'),
(11, '2020-06-10', 'Jay Sol Cruz', 'Testing send report from HR', 'Testing send coaching Details to HR from TL', 4, 'Edison', 'HR', 'Submitted'),
(12, '2020-06-11', 'Ana Isabel Olete', 'Testing from TL', 'Testing from TL', 1, 'JWBL', 'TL', 'Submitted'),
(13, '2020-06-11', 'Rhea Famisaran', 'testing', 'testing', 1, 'Edison', 'TL', 'Submitted'),
(14, '2020-06-11', 'Rey Anthony R. Dematera', 'Testing for 2nd time from HR', NULL, 1, 'AM HOME', 'HR', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `kpi`
--

CREATE TABLE `kpi` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `productivity` int(11) DEFAULT NULL,
  `efficiency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kpi`
--

INSERT INTO `kpi` (`id`, `account`, `agent`, `attendance`, `productivity`, `efficiency`) VALUES
(1, NULL, 'Lloyd Mari', 100, 100, 100),
(2, NULL, 'Erish Jasper Genuino', 100, 100, 100),
(3, NULL, 'Alrich T. Patosa', 100, 100, 100),
(4, NULL, 'Catherine Pacheco', 100, 100, 100),
(5, NULL, 'Sean D. Castañeda', 100, 100, 100),
(6, NULL, 'Justin Pena', 100, 100, 100),
(7, NULL, 'Jan Dellen Francisco', 100, 100, 100),
(8, NULL, 'Kyle Wilvin H. Yu', 100, 100, 100),
(9, NULL, 'Karen Ramirez', 100, 100, 100),
(10, NULL, 'Glocel Grace Lectura', 100, 100, 100),
(11, NULL, 'Rhea Famisaran', 100, 100, 100),
(12, NULL, 'Myleen Ancheta', 100, 100, 100),
(13, NULL, 'Jay Sol Cruz', 100, 100, 100),
(14, NULL, 'Maria Cristina Santillan', 100, 100, 100),
(15, NULL, 'Kristine Erika T. Watanabe', 100, 100, 100),
(16, NULL, 'Ana Isabel Olete', 100, 100, 100),
(17, NULL, 'Irish Joy C. Salanguit', 100, 100, 100),
(18, NULL, 'Cyril Suellen C. Toledo', 100, 100, 100),
(19, NULL, 'Donna Mae B. Armamento', 100, 100, 100),
(20, NULL, 'Rowena Gliponeo', 100, 100, 100),
(21, NULL, 'Marjorie A. Valderama', 100, 100, 100),
(22, NULL, 'Genesis Parentela', 100, 100, 100),
(23, NULL, 'Sarah Jane Abonitalla', 100, 100, 100),
(24, NULL, 'Lalaine Catangue', 100, 100, 100),
(25, NULL, 'Joan Sumeracruz', 100, 100, 100),
(26, NULL, 'Felizardo Josef', 100, 100, 100),
(27, NULL, 'Jimel Toledo', 100, 100, 100),
(28, NULL, 'Ma. Patrica King', 100, 100, 100),
(29, NULL, 'Robert Arvin H. Cifra', 100, 100, 100),
(30, NULL, 'Joseph Riel P. Rañoa', 100, 100, 100),
(31, NULL, 'Rioniña V. Ocampo', 100, 100, 100),
(32, NULL, 'Davis Z. Ti', 100, 100, 100),
(33, NULL, 'Mae Lynie Darunday', 100, 100, 100),
(34, NULL, 'Christine Joy Brun', 100, 100, 100),
(35, NULL, 'Allia Luzong', 100, 100, 100),
(36, NULL, 'Danielle Aquilino', 100, 100, 100),
(37, NULL, 'Nicole Bringuela', 100, 100, 100),
(38, NULL, 'Joey Ronquillo', 100, 100, 100),
(39, NULL, 'Alexander Albert Labajo', 100, 100, 100),
(40, NULL, 'Edgie Zamudio', 100, 100, 100),
(41, NULL, 'Felizardo Esguerra Jr.', 100, 100, 100),
(42, NULL, 'Paola Bianca D. Galang', 100, 100, 100),
(43, NULL, 'Allan Hilario', 100, 100, 100),
(44, NULL, 'Ranjit Singh Banga', 100, 100, 100),
(45, NULL, 'Michael Casabuena', 100, 100, 100),
(46, NULL, 'April Dwight C. Agliam', 100, 100, 100),
(47, NULL, 'Bennet Vales', 100, 100, 100),
(48, NULL, 'Joanna Rafada', 100, 100, 100),
(49, NULL, 'Jennyfer Palad', 100, 100, 100),
(50, NULL, 'Harlen Joyce Redobla', 100, 100, 100),
(51, NULL, 'Ricaleen Ocampo', 100, 100, 100),
(52, NULL, 'Leilani Toquero', 100, 100, 100),
(53, NULL, 'Jenny D. Pescasio', 100, 100, 100),
(54, NULL, 'Criztal Leigh G. Pilar', 100, 100, 100),
(55, NULL, 'Ralf Emerson Ramos', 100, 100, 100),
(56, NULL, 'Michaela May E Gillado', 100, 100, 100),
(57, NULL, 'Isaiah Marione F. De Castro', 100, 100, 100),
(58, NULL, 'Marlowe Ansley Sescon', 100, 100, 100),
(59, NULL, 'Rachelle Anne Whigan', 100, 100, 100),
(60, NULL, 'Lorheanne Mae Ariola', 100, 100, 100),
(61, NULL, 'Giovanni Pewee P. Larga', 100, 100, 100),
(62, NULL, 'Channielle Nepomuceno', 100, 100, 100),
(63, NULL, 'Razel Ann M. Pabalan', 100, 100, 100),
(64, NULL, 'Ruel Prias', 100, 100, 100),
(65, NULL, 'Jane Moratillo', 100, 100, 100),
(66, NULL, 'Sheila M. Fischer', 100, 100, 100),
(67, NULL, 'Mick Russell Serrano', 100, 100, 100),
(68, NULL, 'Marinel Ancheta', 100, 100, 100),
(69, NULL, 'Jennylyn Ching', 100, 100, 100),
(70, NULL, 'Eileen Rose Samson', 100, 100, 100),
(71, NULL, 'Jeffrey Licuanan', 100, 100, 100),
(72, NULL, 'Jerome Canosa', 100, 100, 100),
(73, NULL, 'Camille Marcaida', 100, 100, 100),
(74, NULL, 'Mary Anne K. Pellejera', 100, 100, 100),
(75, NULL, 'Mary Ann Mesa', 100, 100, 100),
(76, NULL, 'Michael Anthony D. Calata', 100, 100, 100),
(77, NULL, 'Jelyne Mallari', 100, 100, 100),
(78, NULL, 'Paula Salboro', 100, 100, 100),
(79, NULL, 'Christopher Jerry Bitalac', 100, 100, 100),
(80, NULL, 'Paolo De Leon', 100, 100, 100),
(81, NULL, 'Jazz Espinosa', 100, 100, 100),
(82, NULL, 'Mark Arnie Doroteo', 100, 100, 100),
(83, NULL, 'Marshall Oliver Villaruel', 100, 100, 100),
(84, NULL, 'Arnold Vismanos', 100, 100, 100),
(85, NULL, 'Angelo Genorga', 100, 100, 100),
(86, NULL, 'Elizalde Mission Jr', 100, 100, 100),
(87, NULL, 'Marlon L. Linga', 100, 100, 100),
(88, NULL, 'Charlene Shane Tutaan', 100, 100, 100),
(89, NULL, 'April Rose V. Villamin', 100, 100, 100),
(90, NULL, 'Nadia B. Nuevo', 100, 100, 100),
(91, NULL, 'Gabriel R. Quimora', 100, 100, 100),
(92, NULL, 'Rey Anthony R. Dematera', 100, 100, 100),
(93, NULL, 'Jomart R. Guayan', 100, 100, 100),
(94, NULL, 'Margarita S. Santos', 100, 100, 100),
(95, NULL, 'Jose Roy Villegas', 100, 100, 100),
(96, NULL, 'Camil Artan Calimlim', 100, 100, 100),
(97, NULL, 'Aileen Domingo', 100, 100, 100),
(98, NULL, 'Annlynette Aquino', 100, 100, 100),
(99, NULL, 'Michel Balendo', 100, 100, 100),
(100, NULL, 'Miguel Jayson Reyes', 100, 100, 100),
(101, NULL, 'Clarisse Icaro', 100, 100, 100),
(102, NULL, 'Marife Donesa', 100, 100, 100),
(103, NULL, 'Paulino Ducat', 100, 100, 100),
(104, NULL, 'Romelito Abad', 100, 100, 100),
(105, NULL, 'Ann Loraine Advincula', 100, 100, 100),
(106, NULL, 'Mike Karlo M. Macatangay', 100, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `kpi_dump`
--

CREATE TABLE `kpi_dump` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `attendance` double DEFAULT NULL,
  `productivity` double DEFAULT NULL,
  `efficiency` double DEFAULT NULL,
  `actual_date` date DEFAULT NULL,
  `am` varchar(255) DEFAULT NULL,
  `tl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kpi_dump`
--

INSERT INTO `kpi_dump` (`id`, `date`, `agent`, `attendance`, `productivity`, `efficiency`, `actual_date`, `am`, `tl`) VALUES
(1, '2020-05-19', 'Aileen Domingo', 99, 99, 99, NULL, NULL, NULL),
(2, '2020-05-20', 'Aileen Domingo', 99, 99, 99, NULL, NULL, NULL),
(3, '2020-05-20', 'Lloyd Mari', 99, 99, 99, NULL, NULL, NULL),
(4, '2020-05-20', 'Alexander Albert Labajo', 99, 99, 99, NULL, NULL, NULL),
(5, '2020-05-20', 'Allan Hilario', 99, 99, 99, NULL, NULL, NULL),
(6, '2020-05-20', 'Aileen Domingo', 99, 99, 99, NULL, NULL, NULL),
(7, '2020-05-20', 'April Dwight C. Agliam', 99, 99, 99, NULL, NULL, NULL),
(8, '2020-05-20', 'Davis Z. Ti', 99, 99, 99, NULL, NULL, NULL),
(9, '2020-05-21', 'Aileen Domingo', 99, 99, 99, NULL, NULL, NULL),
(10, '2020-05-21', 'Alexander Albert Labajo', 99, 99, 99, NULL, NULL, NULL),
(11, '2020-05-21', 'Alrich T. Patosa', 78.22, 33.89, 99.66, NULL, NULL, NULL),
(12, '2020-05-21', 'Ana Isabel Olete', 99, 99, 99, NULL, NULL, NULL),
(13, '2020-05-21', 'Angelo Genorga', 99, 99, 99, NULL, NULL, NULL),
(14, '2020-05-21', 'Ann Loraine Advincula', 99, 99, 99, NULL, NULL, NULL),
(15, '2020-05-21', 'Annlynette Aquino', 99, 99, 99, NULL, NULL, NULL),
(16, '2020-05-21', 'April Dwight C. Agliam', 99, 99, 99, NULL, NULL, NULL),
(17, '2020-05-21', 'Christine Joy Brun', 99, 88, 77, '2020-05-15', NULL, NULL),
(18, '2020-05-21', 'April Rose V. Villamin', 78, 89, 88, NULL, NULL, NULL),
(19, '2020-05-21', 'Arnold Vismanos', 88, 88, 88, NULL, NULL, NULL),
(20, '2020-05-21', 'Bennet Vales', 100, 100, 100, NULL, NULL, NULL),
(21, '2020-05-21', 'Camil Artan Calimlim', 99, 99, 99, NULL, NULL, NULL),
(22, '2020-05-21', 'Camille Marcaida', 99, 99, 99, NULL, NULL, NULL),
(23, '2020-05-21', 'Catherine Pacheco', 99, 99, 99, NULL, NULL, NULL),
(24, '2020-05-21', 'Channielle Nepomuceno', 99, 99, 99, NULL, NULL, NULL),
(25, '2020-05-21', 'Charlene Shane Tutaan', 99, 99, 99, NULL, NULL, NULL),
(26, '2020-05-21', 'Christine Joy Brun', 99, 88, 77, '2020-05-15', NULL, NULL),
(27, '2020-05-21', 'Christopher Jerry Bitalac', 99, 99, 99, NULL, NULL, NULL),
(28, '2020-05-21', 'Christopher Jerry Bitalac', 99, 99, 99, NULL, NULL, NULL),
(29, '2020-05-21', 'Christopher Jerry Bitalac', 99, 99, 99, NULL, NULL, NULL),
(30, '2020-05-21', 'Christopher Jerry Bitalac', 99, 99, 99, NULL, NULL, NULL),
(31, '2020-05-21', 'Christopher Jerry Bitalac', 99, 99, 99, NULL, NULL, NULL),
(32, '2020-05-21', 'Christopher Jerry Bitalac', 99, 99, 99, NULL, NULL, NULL),
(33, '2020-05-21', 'Christopher Jerry Bitalac', 99, 99, 99, NULL, NULL, NULL),
(34, '2020-05-21', 'Christopher Jerry Bitalac', 99, 99, 99, NULL, NULL, NULL),
(35, '2020-05-21', 'Clarisse Icaro', 99, 99, 99, NULL, NULL, NULL),
(36, '2020-05-21', 'Criztal Leigh G. Pilar', 99, 99, 99, NULL, NULL, NULL),
(37, '2020-05-21', 'Cyril Suellen C. Toledo', 99, 99, 99, NULL, NULL, NULL),
(38, '2020-05-21', 'Danielle Aquilino', 99, 99, 99, NULL, NULL, NULL),
(39, '2020-05-21', 'Davis Z. Ti', 99, 99, 99, NULL, NULL, NULL),
(40, '2020-05-22', 'Aileen Domingo', 99, 99, 99, NULL, NULL, NULL),
(41, '2020-05-22', 'Alexander Albert Labajo', 99, 99, 99, NULL, NULL, NULL),
(42, '2020-05-22', 'Allan Hilario', 99, 99, 99, NULL, NULL, NULL),
(43, '2020-05-22', 'Allia Luzong', 99, 99, 99, NULL, NULL, NULL),
(44, '2020-05-22', 'Alrich T. Patosa', 78.22, 33.89, 99.66, NULL, NULL, NULL),
(45, '2020-05-22', 'Ana Isabel Olete', 99, 99, 99, NULL, NULL, NULL),
(46, '2020-05-22', 'Angelo Genorga', 99, 99, 99, NULL, NULL, NULL),
(47, '2020-05-22', 'Ann Loraine Advincula', 99, 99, 99, NULL, NULL, NULL),
(48, '2020-05-22', 'Annlynette Aquino', 99, 99, 99, NULL, NULL, NULL),
(49, '2020-05-22', 'Annlynette Aquino', 99, 99, 99, NULL, NULL, NULL),
(50, '2020-05-22', 'April Dwight C. Agliam', 99, 99, 99, NULL, NULL, NULL),
(51, '2020-05-22', 'April Rose V. Villamin', 78, 89, 88, NULL, NULL, NULL),
(52, '2020-05-22', 'April Rose V. Villamin', 78, 89, 88, NULL, NULL, NULL),
(53, '2020-05-22', 'Arnold Vismanos', 88, 88, 88, NULL, NULL, NULL),
(54, '2020-05-22', 'Bennet Vales', 100, 100, 100, NULL, NULL, NULL),
(55, '2020-05-22', 'Camil Artan Calimlim', 99, 99, 99, NULL, NULL, NULL),
(56, '2020-05-22', 'Camille Marcaida', 99, 99, 99, NULL, NULL, NULL),
(57, '2020-05-22', 'Catherine Pacheco', 99, 99, 99, NULL, NULL, NULL),
(58, '2020-05-22', 'Channielle Nepomuceno', 99, 99, 99, NULL, NULL, NULL),
(59, '2020-05-22', 'Charlene Shane Tutaan', 99, 99, 99, NULL, NULL, NULL),
(60, '2020-05-22', 'Christine Joy Brun', 99, 88, 77, '2020-05-15', NULL, NULL),
(61, '2020-05-22', 'Christopher Jerry Bitalac', 99, 99, 99, NULL, NULL, NULL),
(62, '2020-05-22', 'Clarisse Icaro', 99, 99, 99, NULL, NULL, NULL),
(63, '2020-05-22', 'Criztal Leigh G. Pilar', 99, 99, 99, NULL, NULL, NULL),
(64, '2020-05-22', 'Cyril Suellen C. Toledo', 99, 99, 99, NULL, NULL, NULL),
(65, '2020-05-22', 'Danielle Aquilino', 99, 99, 99, NULL, NULL, NULL),
(66, '2020-05-22', 'Davis Z. Ti', 99, 99, 99, NULL, NULL, NULL),
(67, '2020-05-22', 'Donna Mae B. Armamento', 99, 99, 99, NULL, NULL, NULL),
(68, '2020-05-22', 'Edgie Zamudio', 99, 99, 99, NULL, NULL, NULL),
(69, '2020-05-22', 'Eileen Rose Samson', 99, 99, 99, NULL, NULL, NULL),
(70, '2020-05-22', 'Elizalde Mission Jr', 99, 99, 99, NULL, NULL, NULL),
(71, '2020-05-22', 'Erish Jasper Genuino', 99, 99, 99, NULL, NULL, NULL),
(72, '2020-05-22', 'Felizardo Esguerra Jr.', 99, 99, 99, NULL, NULL, NULL),
(73, '2020-05-22', 'Felizardo Josef', 99, 99, 99, NULL, NULL, NULL),
(74, '2020-05-22', 'Sheila M. Fischer', 99, 99, 99, NULL, NULL, NULL),
(75, '2020-05-22', 'Sean D. Castañeda', 99, 99, 99, NULL, NULL, NULL),
(76, '2020-05-22', 'Sarah Jane Abonitalla', 99, 99, 99, NULL, NULL, NULL),
(77, '2020-05-22', 'Ruel Prias', 99, 99, 99, NULL, NULL, NULL),
(78, '2020-05-22', 'Rowena Gliponeo', 99, 99, 99, NULL, NULL, NULL),
(79, '2020-05-22', 'Aileen Domingo', 99, 99, 99, NULL, NULL, NULL),
(80, '2020-05-22', 'Alexander Albert Labajo', 99, 99, 99, NULL, NULL, NULL),
(81, '2020-05-22', 'Aileen Domingo', 99, 99, 99, NULL, NULL, NULL),
(82, '2020-05-22', 'Alexander Albert Labajo', 99, 99, 99, NULL, NULL, NULL),
(83, '2020-05-22', 'Alexander Albert Labajo', 99, 99, 99, NULL, NULL, NULL),
(84, '2020-05-22', 'Alexander Albert Labajo', 99, 99, 99, NULL, NULL, NULL),
(85, '2020-05-22', 'Alexander Albert Labajo', 99, 99, 99, NULL, NULL, NULL),
(86, '2020-05-22', 'Allan Hilario', 99, 99, 99, NULL, NULL, NULL),
(87, '2020-05-22', 'Allia Luzong', 99, 99, 99, NULL, NULL, NULL),
(88, '2020-05-22', 'Ana Isabel Olete', 99, 99, 99, NULL, NULL, NULL),
(89, '2020-05-22', 'Ana Isabel Olete', 99, 99, 99, NULL, NULL, NULL),
(90, '2020-05-22', 'Angelo Genorga', 99, 99, 99, NULL, NULL, NULL),
(91, '2020-05-22', 'Ann Loraine Advincula', 99, 99, 99, NULL, NULL, NULL),
(92, '2020-05-22', 'Annlynette Aquino', 99, 99, 99, NULL, NULL, NULL),
(93, '2020-05-22', 'April Dwight C. Agliam', 99, 99, 99, NULL, NULL, NULL),
(94, '2020-05-22', 'April Rose V. Villamin', 78, 89, 88, NULL, NULL, NULL),
(95, '2020-05-22', 'Arnold Vismanos', 88, 88, 88, NULL, NULL, NULL),
(96, '2020-05-22', 'Bennet Vales', 100, 100, 100, NULL, NULL, NULL),
(97, '2020-05-22', 'Camil Artan Calimlim', 99, 99, 99, NULL, NULL, NULL),
(98, '2020-05-22', 'Camille Marcaida', 99, 99, 99, NULL, NULL, NULL),
(99, '2020-05-22', 'Aileen Domingo', 99, 99, 99, NULL, NULL, NULL),
(100, '2020-05-22', 'Alexander Albert Labajo', 99, 99, 99, NULL, NULL, NULL),
(101, '2020-05-22', 'Allan Hilario', 99, 99, 99, NULL, NULL, NULL),
(102, '2020-05-22', 'Allia Luzong', 99, 99, 99, NULL, NULL, NULL),
(103, '2020-05-22', 'Allia Luzong', 99, 99, 99, NULL, NULL, NULL),
(104, '2020-05-22', 'Angelo Genorga', 99, 99, 99, NULL, NULL, NULL),
(105, '2020-05-22', 'Aileen Domingo', 99, 99, 99, NULL, NULL, NULL),
(106, '2020-05-22', 'Bennet Vales', 100, 100, 100, NULL, NULL, NULL),
(107, '2020-05-23', 'Aileen Domingo', 99, 99, 99, NULL, NULL, NULL),
(108, '2020-05-23', 'Alexander Albert Labajo', 99, 99, 99, NULL, NULL, NULL),
(109, '2020-05-23', 'Allan Hilario', 99, 99, 99, NULL, NULL, NULL),
(110, '2020-05-23', 'Allia Luzong', 99, 99, 99, NULL, NULL, NULL),
(111, '2020-05-23', 'Alrich T. Patosa', 78.22, 33.89, 99.66, NULL, NULL, NULL),
(112, '2020-05-23', 'Ana Isabel Olete', 99, 99, 99, NULL, NULL, NULL),
(113, '2020-05-23', 'Angelo Genorga', 99, 99, 99, NULL, NULL, NULL),
(114, '2020-05-23', 'Ann Loraine Advincula', 99, 99, 99, NULL, NULL, NULL),
(115, '2020-05-23', 'Annlynette Aquino', 99, 99, 99, NULL, NULL, NULL),
(116, '2020-05-23', 'April Dwight C. Agliam', 99, 99, 99, NULL, NULL, NULL),
(117, '2020-05-23', 'April Rose V. Villamin', 78, 89, 88, NULL, NULL, NULL),
(118, '2020-05-23', 'Arnold Vismanos', 88, 88, 88, NULL, NULL, NULL),
(119, '2020-05-23', 'Bennet Vales', 100, 100, 100, NULL, NULL, NULL),
(121, '2020-05-23', 'Camil Artan Calimlim', 78.66, 88.95, 77.2, NULL, NULL, NULL),
(122, '2020-05-23', 'Camille Marcaida', 100, 100, 100, NULL, NULL, NULL),
(123, '2020-05-23', 'Catherine Pacheco', 80.5, 88.22, 89.97, '2020-05-22', NULL, NULL),
(124, '2020-05-23', 'Channielle Nepomuceno', 77.68, 88.99, 94.5, '2020-05-22', NULL, NULL),
(125, '2020-05-23', 'Christine Joy Brun', 88, 77, 98, '2020-05-16', NULL, NULL),
(126, '2020-05-23', 'Christine Joy Brun', 99, 88, 79, '2020-05-15', NULL, NULL),
(127, '2020-05-23', 'Christopher Jerry Bitalac', 88, 88, 88, '2020-05-15', NULL, NULL),
(128, '2020-05-26', 'Aileen Domingo', 100, 100, 100, '2020-05-25', NULL, NULL),
(129, '2020-05-26', 'Alexander Albert Labajo', 100, 100, 100, '2020-05-25', NULL, NULL),
(130, '2020-06-02', 'Alexander Albert Labajo', 99, 100, 100, '2020-06-03', NULL, NULL),
(131, '2020-06-02', 'Aileen Domingo', 77, 88, 99, '2020-06-02', NULL, NULL),
(132, '2020-06-02', 'Allan Hilario', 100, 100, 100, '2020-06-03', NULL, NULL),
(133, '2020-06-02', 'Aileen Domingo', 77, 88, 99, '2020-06-02', NULL, NULL),
(134, '2020-06-02', 'Aileen Domingo', 100, 100, 100, '2020-06-03', NULL, NULL),
(135, '2020-06-03', 'Aileen Domingo', 100, 100, 100, '2020-06-02', NULL, NULL),
(136, '2020-06-03', 'Alexander Albert Labajo', 100, 100, 100, '2020-06-02', NULL, NULL),
(137, '2020-06-03', 'Allan Hilario', 100, 100, 100, '2020-06-02', NULL, NULL),
(138, '2020-06-03', 'Allia Luzong', 100, 100, 100, '2020-06-02', NULL, NULL),
(139, '2020-06-03', 'Alrich T. Patosa', 100, 100, 100, '2020-06-02', NULL, NULL),
(140, '2020-06-03', 'Ana Isabel Olete', 100, 100, 100, '2020-06-02', 'null', 'null'),
(141, '2020-06-03', 'Angelo Genorga', 100, 100, 100, '2020-06-02', 'Kwon Jin Bacali', 'Derick Tinampay'),
(142, '2020-06-03', 'Ann Loraine Advincula', 100, 100, 100, '2020-06-02', 'Kwon Jin Bacali', 'Derick Tinampay'),
(143, '2020-06-03', 'Annlynette Aquino', 100, 100, 100, '2020-06-02', 'Kwon Jin Bacali', 'Derick Tinampay'),
(144, '2020-06-04', 'Aileen Domingo', 100, 100, 100, '2020-06-02', 'Kwon Jin Bacali', 'Derick Tinampay'),
(145, '2020-06-04', 'Alexander Albert Labajo', 100, 100, 100, '2020-06-02', 'Kwon Jin Bacali', 'Derick Tinampay'),
(146, '2020-06-04', 'Allan Hilario', 100, 100, 100, '2020-06-02', 'Kwon Jin Bacali', 'Derick Tinampay'),
(147, '2020-06-04', 'Allia Luzong', 100, 100, 100, '2020-06-02', 'Kwon Jin Bacali', 'Derick Tinampay');

-- --------------------------------------------------------

--
-- Table structure for table `picard_dump`
--

CREATE TABLE `picard_dump` (
  `id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `kash_requirement` varchar(255) NOT NULL,
  `Questions` text NOT NULL,
  `scores` int(11) NOT NULL,
  `standard_score` int(11) NOT NULL,
  `equivalent_word` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `picard_dump`
--

INSERT INTO `picard_dump` (`id`, `report_id`, `name`, `account`, `kash_requirement`, `Questions`, `scores`, `standard_score`, `equivalent_word`) VALUES
(72, 41, 'Paulino Ducat', 'MBH Services', 'Knowledge', 'Understanding of medical terminology that commonly appears on medical claims', 2, 4, 'justify'),
(73, 41, 'Paulino Ducat', 'MBH Services', 'Knowledge', 'Ability to communicate and resolve issues', 3, 4, 'justify'),
(74, 41, 'Paulino Ducat', 'MBH Services', 'Knowledge', 'Familiarity with ICD-10 and CPT coding', 2, 2, 'understand'),
(75, 41, 'Paulino Ducat', 'MBH Services', 'Knowledge', 'Computer Literate', 3, 5, 'propose'),
(76, 41, 'Paulino Ducat', 'MBH Services', 'Knowledge', 'English Language Proficient', 3, 5, 'propose'),
(77, 43, 'Rioniña V. Ocampo', 'MBH Services', 'Attitude', 'Reliable', 3, 3, ''),
(78, 43, 'Rioniña V. Ocampo', 'MBH Services', 'Attitude', 'Confident', 2, 3, ''),
(79, 43, 'Rioniña V. Ocampo', 'MBH Services', 'Attitude', 'Ownership', 1, 3, ''),
(80, 43, 'Rioniña V. Ocampo', 'MBH Services', 'Attitude', 'Patient', 1, 3, ''),
(81, 43, 'Rioniña V. Ocampo', 'MBH Services', 'Attitude', 'Proactive', 2, 3, ''),
(82, 43, 'Rioniña V. Ocampo', 'MBH Services', 'Attitude', 'Flexible', 3, 3, ''),
(83, 44, 'Myleen Ancheta', 'MBH Services', 'Attitude', 'Reliable', 2, 3, ''),
(84, 44, 'Myleen Ancheta', 'MBH Services', 'Attitude', 'Confident', 3, 3, ''),
(85, 44, 'Myleen Ancheta', 'MBH Services', 'Attitude', 'Ownership', 3, 3, ''),
(86, 44, 'Myleen Ancheta', 'MBH Services', 'Attitude', 'Patient', 3, 3, ''),
(87, 44, 'Myleen Ancheta', 'MBH Services', 'Attitude', 'Proactive', 2, 3, ''),
(88, 44, 'Myleen Ancheta', 'MBH Services', 'Attitude', 'Flexible', 3, 3, ''),
(89, 45, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'Understanding of medical terminology that commonly appears on medical claims', 3, 4, 'justify'),
(90, 45, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'Ability to communicate and resolve issues', 3, 4, 'justify'),
(91, 45, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'Familiarity with ICD-10 and CPT coding', 2, 2, 'understand'),
(92, 45, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'Computer Literate', 4, 5, 'propose'),
(93, 45, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'English Language Proficient', 5, 5, 'propose'),
(94, 46, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'Understanding of medical terminology that commonly appears on medical claims', 4, 4, 'justify'),
(95, 46, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'Ability to communicate and resolve issues', 4, 4, 'justify'),
(96, 46, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'Familiarity with ICD-10 and CPT coding', 1, 2, 'understand'),
(97, 46, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'Computer Literate', 5, 5, 'propose'),
(98, 46, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'English Language Proficient', 5, 5, 'propose'),
(99, 47, 'Jay Sol Cruz', 'MBH Services', 'Knowledge', 'Understanding of medical terminology that commonly appears on medical claims', 1, 4, 'justify'),
(100, 47, 'Jay Sol Cruz', 'MBH Services', 'Knowledge', 'Ability to communicate and resolve issues', 1, 4, 'justify'),
(101, 47, 'Jay Sol Cruz', 'MBH Services', 'Knowledge', 'Familiarity with ICD-10 and CPT coding', 1, 2, 'understand'),
(102, 47, 'Jay Sol Cruz', 'MBH Services', 'Knowledge', 'Computer Literate', 1, 5, 'propose'),
(103, 47, 'Jay Sol Cruz', 'MBH Services', 'Knowledge', 'English Language Proficient', 1, 5, 'propose'),
(104, 48, 'Glocel Grace Lectura', 'MBH Services', 'Knowledge', 'Understanding of medical terminology that commonly appears on medical claims', 1, 4, 'justify'),
(105, 48, 'Glocel Grace Lectura', 'MBH Services', 'Knowledge', 'Ability to communicate and resolve issues', 1, 4, 'justify'),
(106, 48, 'Glocel Grace Lectura', 'MBH Services', 'Knowledge', 'Familiarity with ICD-10 and CPT coding', 1, 2, 'understand'),
(107, 48, 'Glocel Grace Lectura', 'MBH Services', 'Knowledge', 'Computer Literate', 1, 5, 'propose'),
(108, 48, 'Glocel Grace Lectura', 'MBH Services', 'Knowledge', 'English Language Proficient', 1, 5, 'propose'),
(109, 49, 'Mike Karlo M. Macatangay', 'MBH Services', 'Knowledge', 'Understanding of medical terminology that commonly appears on medical claims', 1, 4, 'justify'),
(110, 49, 'Mike Karlo M. Macatangay', 'MBH Services', 'Knowledge', 'Ability to communicate and resolve issues', 1, 4, 'justify'),
(111, 49, 'Mike Karlo M. Macatangay', 'MBH Services', 'Knowledge', 'Familiarity with ICD-10 and CPT coding', 1, 2, 'understand'),
(112, 49, 'Mike Karlo M. Macatangay', 'MBH Services', 'Knowledge', 'Computer Literate', 1, 5, 'propose'),
(113, 49, 'Mike Karlo M. Macatangay', 'MBH Services', 'Knowledge', 'English Language Proficient', 1, 5, 'propose'),
(114, 50, 'Kyle Wilvin H. Yu', 'MBH Services', 'Habit', 'Solid Organizational system', 1, 0, ''),
(115, 50, 'Kyle Wilvin H. Yu', 'MBH Services', 'Habit', 'Keen attention to detail', 1, 0, ''),
(116, 50, 'Kyle Wilvin H. Yu', 'MBH Services', 'Habit', 'Communicate Clearly', 2, 0, ''),
(117, 50, 'Kyle Wilvin H. Yu', 'MBH Services', 'Habit', 'Goal Setter', 3, 0, ''),
(118, 51, 'Kyle Wilvin H. Yu', 'MBH Services', 'Habit', 'Solid Organizational system', 1, 0, ''),
(119, 51, 'Kyle Wilvin H. Yu', 'MBH Services', 'Habit', 'Keen attention to detail', 3, 0, ''),
(120, 51, 'Kyle Wilvin H. Yu', 'MBH Services', 'Habit', 'Communicate Clearly', 2, 0, ''),
(121, 51, 'Kyle Wilvin H. Yu', 'MBH Services', 'Habit', 'Goal Setter', 2, 0, ''),
(122, 52, 'Myleen Ancheta', 'MBH Services', 'Habit', 'Solid Organizational system', 1, 0, ''),
(123, 52, 'Myleen Ancheta', 'MBH Services', 'Habit', 'Keen attention to detail', 1, 0, ''),
(124, 52, 'Myleen Ancheta', 'MBH Services', 'Habit', 'Communicate Clearly', 3, 0, ''),
(125, 52, 'Myleen Ancheta', 'MBH Services', 'Habit', 'Goal Setter', 3, 0, ''),
(126, 55, 'Maria Cristina Santillan', 'MBH Services', 'Skills', 'Communication Skills', 1, 0, ''),
(127, 55, 'Maria Cristina Santillan', 'MBH Services', 'Skills', 'Multitasking', 1, 0, ''),
(128, 55, 'Maria Cristina Santillan', 'MBH Services', 'Skills', 'Organizational Skills', 1, 0, ''),
(129, 55, 'Maria Cristina Santillan', 'MBH Services', 'Skills', 'Intuitive learning', 3, 0, ''),
(130, 55, 'Maria Cristina Santillan', 'MBH Services', 'Skills', 'Conflict Management Skills', 3, 0, ''),
(131, 56, 'Irish Joy C. Salanguit', 'MBH Services', 'Habit', 'Solid Organizational system', 3, 3, ''),
(132, 56, 'Irish Joy C. Salanguit', 'MBH Services', 'Habit', 'Keen attention to detail', 2, 3, ''),
(133, 56, 'Irish Joy C. Salanguit', 'MBH Services', 'Habit', 'Communicate Clearly', 2, 3, ''),
(134, 56, 'Irish Joy C. Salanguit', 'MBH Services', 'Habit', 'Goal Setter', 2, 3, ''),
(135, 57, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'Understanding of medical terminology that commonly appears on medical claims', 4, 4, 'justify'),
(136, 57, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'Ability to communicate and resolve issues', 1, 4, 'justify'),
(137, 57, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'Familiarity with ICD-10 and CPT coding', 2, 2, 'understand'),
(138, 57, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'Computer Literate', 2, 5, 'propose'),
(139, 57, 'Kyle Wilvin H. Yu', 'MBH Services', 'Knowledge', 'English Language Proficient', 5, 5, 'propose'),
(140, 58, 'Karen Ramirez', 'MBH Services', 'Knowledge', 'Understanding of medical terminology that commonly appears on medical claims', 4, 4, 'justify'),
(141, 58, 'Karen Ramirez', 'MBH Services', 'Knowledge', 'Ability to communicate and resolve issues', 1, 4, 'justify'),
(142, 58, 'Karen Ramirez', 'MBH Services', 'Knowledge', 'Familiarity with ICD-10 and CPT coding', 2, 2, 'understand'),
(143, 58, 'Karen Ramirez', 'MBH Services', 'Knowledge', 'Computer Literate', 5, 5, 'propose'),
(144, 58, 'Karen Ramirez', 'MBH Services', 'Knowledge', 'English Language Proficient', 5, 5, 'propose');

-- --------------------------------------------------------

--
-- Table structure for table `picard_table`
--

CREATE TABLE `picard_table` (
  `id` int(11) NOT NULL,
  `kash_name` varchar(255) NOT NULL,
  `kash_requirement` text NOT NULL,
  `kash_standard_score` int(50) NOT NULL,
  `department_account` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `picard_table`
--

INSERT INTO `picard_table` (`id`, `kash_name`, `kash_requirement`, `kash_standard_score`, `department_account`) VALUES
(1, 'Knowledge', 'Understanding of medical terminology that commonly appears on medical claims', 4, 'MBH Services'),
(3, 'Knowledge', 'Ability to communicate and resolve issues', 4, 'MBH Services'),
(4, 'Knowledge', 'Familiarity with ICD-10 and CPT coding', 2, 'MBH Services'),
(5, 'Knowledge', 'Computer Literate', 5, 'MBH Services'),
(6, 'Knowledge', 'English Language Proficient', 5, 'MBH Services'),
(7, 'Attitude', 'Reliable', 3, 'MBH Services'),
(8, 'Attitude', 'Confident', 3, 'MBH Services'),
(9, 'Attitude', 'Ownership', 3, 'MBH Services'),
(10, 'Attitude', 'Patient', 3, 'MBH Services'),
(11, 'Attitude', 'Proactive', 3, 'MBH Services'),
(12, 'Attitude', 'Flexible', 3, 'MBH Services'),
(13, 'Skills', 'Communication Skills', 3, 'MBH Services'),
(14, 'Skills', 'Multitasking', 3, 'MBH Services'),
(15, 'Skills', 'Organizational Skills', 3, 'MBH Services'),
(16, 'Skills', 'Intuitive learning', 3, 'MBH Services'),
(17, 'Skills', 'Conflict Management Skills', 3, 'MBH Services'),
(18, 'Habit', 'Solid Organizational system', 3, 'MBH Services'),
(19, 'Habit', 'Keen attention to detail', 3, 'MBH Services'),
(20, 'Habit', 'Communicate Clearly', 3, 'MBH Services'),
(21, 'Habit', 'Goal Setter', 3, 'MBH Services');

-- --------------------------------------------------------

--
-- Table structure for table `qan_data`
--

CREATE TABLE `qan_data` (
  `id` int(11) NOT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `recommended_action` longtext DEFAULT NULL,
  `severity` int(11) DEFAULT NULL,
  `occurence` int(11) DEFAULT NULL,
  `detection` int(11) DEFAULT NULL,
  `rpn` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `qascore` double DEFAULT NULL,
  `process` varchar(1028) DEFAULT NULL,
  `failuremode` longtext DEFAULT NULL,
  `potential_cause_of_failure` longtext DEFAULT NULL,
  `qa` varchar(255) DEFAULT NULL,
  `audit_count` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qan_data`
--

INSERT INTO `qan_data` (`id`, `agent`, `date`, `recommended_action`, `severity`, `occurence`, `detection`, `rpn`, `account`, `qascore`, `process`, `failuremode`, `potential_cause_of_failure`, `qa`, `audit_count`) VALUES
(7, 'Aileen Domingo', '2020-04-24', 'Testing Only', 5, 5, 5, 125, 'MEDEX', 42.129629629629626, 'ELIGIBILITY AND BENEFITS', 'Typographic error(Minor),Misrouted email(Major)', 'The agent sent email with mispelled words,The agent sent email to the wrong person', 'Kwon Jin Bacali', NULL),
(8, 'Allan Hilario', '2020-05-07', 'If the SSN is unclear, send email to the director for clarification or approval. Responsible person to send email is the Team Leader.', 3, 3, 5, 45, 'EDISON', 79.16666666666666, 'DATA ENTRY', 'File status not updated (Major),Incorrect information on employment type(Major)', 'Agent entered the wrong profile status,Agent entered incorrect SSN#', 'Kwon Jin Bacali', NULL),
(9, 'Aileen Domingo', '2020-05-07', '', 0, 0, 0, 0, 'EDISON', 100, 'EMAIL HANDLING', '', '', 'Kwon Jin Bacali', NULL),
(10, 'Allan Hilario', '2020-05-28', 'N/A Test Only', 5, 5, 5, 125, 'EDISON', 42.129629629629626, 'EMAIL HANDLING', 'Team Lead was not copied to the email,Improper grammar', 'The agent did not ccd the TL on sending an email,The agent sent an email with improper grammar', 'Kwon Jin Bacali', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `qan_design_control`
--

CREATE TABLE `qan_design_control` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `process` varchar(1028) DEFAULT NULL,
  `design_control` longtext DEFAULT NULL,
  `sub_process` varchar(1028) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qan_design_control`
--

INSERT INTO `qan_design_control` (`id`, `account`, `process`, `design_control`, `sub_process`) VALUES
(1, 'Medex', 'Eligibility and Benefits', 'Screen Shot of inactive insurances.', 'Eligibility and Benefits'),
(2, 'Medex', 'Eligibility and Benefits', 'Getting the reference number of the call.', 'Eligibility and Benefits'),
(3, 'Medex', 'Eligibility and Benefits', 'Task template for quality review.', 'Eligibility and Benefits'),
(4, 'Medex', 'Billing', 'Printing transaction reports for rechecking.', 'Billing'),
(5, 'YK Group', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS', 'Some pdf files the we got from the client already have a chart that can be converted to Google sheets.', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS'),
(6, 'S&F Supplies', 'QUICK SHIPMENT', 'Quickshipment SBT wont accept incorrect or already shipped SO#', 'used to shipped multiple orders.'),
(7, 'S&F Supplies', 'Collections', 'Part of the driver\'s task is to call the collections team.', 'Driver Calls/ Customer Calls'),
(8, 'S&F Supplies', 'Collections', 'All upcoming due balances are on the aging file. This way the agent can pre empt and list down the upcoming due balances', 'Outbound Calls'),
(9, 'S&F Supplies', 'Driver Calls', 'Part of the driver\'s task is to call the collections team before dropping the order. This ensures that the collections agent will not miss a driver call', 'Processing Payment/ COD'),
(10, 'S&F Supplies', 'Tracker For Payment for credit card process', 'This is the initiative of TL Toni that was presented to client and approved', 'Processing Payment/ COD'),
(11, 'S&F Supplies', 'Tracker For Payment for credit card process', 'These are the failure points that may be captured by this tracker', 'Processing Payment/ COD'),
(12, 'S&F Supplies', 'Tracker For Payment for credit card process', 'Failure to apply the process payment to SBT', 'Processing Payment/ COD'),
(13, 'S&F Supplies', 'Tracker For Payment for credit card process', 'Processing multiple CC charges', 'Processing Payment/ COD'),
(14, 'S&F Supplies', 'Tracker For Payment for credit card process', 'Failure to use the right CC of the customer', 'Processing Payment/ COD'),
(15, 'JWBL', 'VIRTUAL ASSISTANT', 'Team Leader has access to the email of the agent. They are always copied to all emails sent by the agents.', 'VIRTUAL ASSISTANT'),
(16, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'Team Leader has access to the email of the agent. They are always copied to all emails sent by the agents.', 'CUSTOMER SERVICE REPRESENTATIVE'),
(17, 'JWBL', 'UPS SHIPPING', 'Shipkey on UPS website prompt an error if the details entered is invalid.', 'UPS SHIPPING'),
(18, 'JWBL', 'UPS SHIPPING', 'Shipping can be voided easily if there is an error occured. ', 'UPS SHIPPING');

-- --------------------------------------------------------

--
-- Table structure for table `qan_effect_of_failure`
--

CREATE TABLE `qan_effect_of_failure` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `process` varchar(1028) DEFAULT NULL,
  `effect_of_failure` longtext DEFAULT NULL,
  `sub_process` varchar(1028) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qan_effect_of_failure`
--

INSERT INTO `qan_effect_of_failure` (`id`, `account`, `process`, `effect_of_failure`, `sub_process`) VALUES
(1, 'Medex', 'Eligibility and Benefits', 'Delayed Walk-ins ', 'Eligibility and Benefits'),
(2, 'Medex', 'Eligibility and Benefits', 'Repeating of insurance calls', 'Eligibility and Benefits'),
(3, 'Medex', 'Eligibility and Benefits', 'Incorrect notes on Dr. Chrono', 'Eligibility and Benefits'),
(4, 'Medex', 'Eligibility and Benefits', 'Inaccurate insurance benefits acquired from the insurance representatives.', 'Eligibility and Benefits'),
(5, 'Medex', 'Eligibility and Benefits', 'Misunderstanding with the Client/POC', 'EMAIL HANDLING'),
(6, 'Medex', 'Eligibility and Benefits', 'Delayed provider\'s services', 'EMAIL HANDLING'),
(7, 'Medex', 'Billing', 'Inaccurate account information.', 'Billing'),
(8, 'Medex', 'Billing', 'Bill sent to wrong insurance.', 'Billing'),
(9, 'Medex', 'Billing', 'Bill sent to Medicare with deductibles not met.', 'Billing'),
(10, 'Medex', 'Billing', 'Claims not sent to insurance providers.', 'Billing'),
(11, 'Medex', 'Billing', 'Denied claims.', 'Billing'),
(12, 'Medex', 'Billing', 'Submission deadline not met', 'Billing'),
(13, 'Medex', 'Billing', 'Returned claims for rebilling', 'Billing'),
(14, 'Medex', 'Billing', 'Misunderstanding with the Client/POC', 'EMAIL HANDLING'),
(15, 'Medex', 'Billing', 'Delayed provider\'s services', 'EMAIL HANDLING'),
(16, 'YK Group', 'CONVERTING PDF FILES TO GOOGLE SHEETS', 'Low productivity', 'CONVERTING PDF FILES TO GOOGLE SHEETS'),
(17, 'YK Group', 'CONVERTING PDF FILES TO GOOGLE SHEETS', 'More hours spent on completing the task', 'CONVERTING PDF FILES TO GOOGLE SHEETS'),
(18, 'YK Group', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS', 'One wrong unit on cells format will produce a failed result.', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS'),
(19, 'YK Group', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS', 'Negative feedback', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS'),
(20, 'YK Group', 'ADDING FORMULAS IN GOOGLE SHEET', 'Incorrect formula will result to incorrect audit and reports of the client.', 'ADDING FORMULAS IN GOOGLE SHEET'),
(21, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 'Staff won\'t get paid', 'TIME AND ATTENDANCE PAYROLL'),
(22, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 'Delay of salary ', 'TIME AND ATTENDANCE PAYROLL'),
(23, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'Unprocessed payment', 'PAYMENT AND SAVE PAYMENT'),
(24, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'Unauthorized usage of the credit card - If the payment details was saved.', 'PAYMENT AND SAVE PAYMENT'),
(25, 'Marks & Spencer', 'RENEWAL', 'Unupdated status of insurance', 'RENEWAL'),
(26, 'Marks & Spencer', 'REINSTATEMENT', 'Unupdated status of insurance', 'REINSTATEMENT'),
(27, 'Marks & Spencer', 'CANCELLATION NOTICE', 'Unupdated status of insurance', 'CANCELLATION NOTICE'),
(28, 'Marks & Spencer', 'MONITORING', 'Non payment', 'MONITORING'),
(29, 'Twin Med', 'Data Research', 'If the MFR # used is incorrect, all the attributes that was filled will be incorrect resulting to a waste of time.', 'Data Research'),
(30, 'Twin Med', 'Data Research', 'Not understanding the proper use of NONE and NA will result to more errors. The client wil be displeased if this keeps on happening because they already gave the policy in regards to this.', 'Data Research'),
(31, 'Twin Med', 'Data Research', 'If we keep on missing or incorrectly entering/tagging information of the attributes. The client may not go for the planned headcount.', 'Data Research'),
(32, 'Twin Med', 'Data Research', 'Worst case is that the client might discontinue.', 'Data Research'),
(33, 'White Gloves Consultancy', 'ELIGIBILITY', 'Reports will be inaccurate', 'ELIGIBILITY'),
(34, 'White Gloves Consultancy', 'ELIGIBILITY', 'Reports will be inaccurate', 'ELIGIBILITY'),
(35, 'White Gloves Consultancy', 'Listing of Active/Inactive ', 'If the file was saved to the wrong folder, the client will havr difficulty finding it.', 'Listing of Active/Inactive '),
(36, 'UHA', 'REPRICING', 'Choosing the incorrect client code will result to the claim to be entered in error.', 'REPRICING'),
(37, 'UHA', 'REPRICING', 'Provider would not get paid.', 'REPRICING'),
(38, 'UHA', 'REPRICING', 'Loss of Profit', 'REPRICING'),
(39, 'UHA', 'REPRICING', 'Continous error would result to pulling out of the account.', 'REPRICING'),
(40, 'MBH Services', 'Authorizations', 'Inaccurate patient information', 'Authorizations'),
(41, 'MBH Services', 'Authorizations', 'Accounts not on file', 'Authorizations'),
(42, 'MBH Services', 'Authorizations', 'Duplicate accounts', 'Authorizations'),
(43, 'MBH Services', 'Authorizations', 'Accounts with descrepancy', 'Authorizations'),
(44, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'Duplicate files', 'Appeals/ CRM/ Catalyst DL'),
(45, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'Increased AHT', 'Appeals/ CRM/ Catalyst DL'),
(46, 'MBH Services', 'Timesheet', 'Delayed payment for the provider', 'Timesheet'),
(47, 'MBH Services', 'Timesheet', 'Non payment for the provider', 'Timesheet'),
(48, 'MBH Services', 'Timesheet', 'Returned timesheets', 'Timesheet'),
(49, 'MBH Services', 'Timesheet', 'Low productivity', 'Timesheet'),
(50, 'MBH Services', 'Reimbursement', 'Denied claims ', 'Reimbursement'),
(51, 'MBH Services', 'Reimbursement', 'Duplicate claims', 'Reimbursement'),
(52, 'MBH Services', 'Reimbursement', 'Underpaid claims', 'Reimbursement'),
(53, 'MBH Services', 'Reimbursement', 'Other services not paid', 'Reimbursement'),
(54, 'Total Plan Concept', 'Extraction', 'Time wasted', 'Extraction'),
(55, 'Total Plan Concept', 'Extraction', 'Claims not processed', 'Extraction'),
(56, 'Total Plan Concept', 'BILLING', 'Returned claims for reprocess.', 'BILLING'),
(57, 'Total Plan Concept', 'BILLING', 'Time wasted', 'BILLING'),
(58, 'Total Plan Concept', 'BILLING', 'Denied claims for out of network', 'BILLING'),
(59, 'Total Plan Concept', 'PRICING', 'Underpayment from insurance', 'PRICING'),
(60, 'Total Plan Concept', 'PRICING', 'Overpayment from insurance', 'PRICING'),
(61, 'Total Plan Concept', 'PRICING', 'Denied claimsn for incorrect fee schedule', 'PRICING'),
(62, 'Total Plan Concept', 'RESUBMISSION', 'Returned claims', 'RESUBMISSION'),
(63, 'Total Plan Concept', 'RESUBMISSION', 'Waste of time', 'RESUBMISSION'),
(64, 'Tiger Companies', 'INVOICING', 'Information descrepancies in the invoice', 'INVOICING'),
(65, 'Tiger Companies', 'INVOICING', 'POC will not be able to determine the descrepancies on the descrepancy folder if the notes is incorrect', 'INVOICING'),
(66, 'Tiger Companies', 'CREDIT MEMO', 'Invoicing won\'t be processed.', 'CREDIT MEMO'),
(67, 'Tiger Companies', 'EMAIL HANDLING', 'Misunderstanding with the customer and/or manufacturer', 'EMAIL HANDLING'),
(68, 'Tiger Companies', 'EMAIL HANDLING', 'Irate customers', 'EMAIL HANDLING'),
(69, 'Tiger Companies', 'EMAIL HANDLING', 'Refunds, returns and replacements won\'t be processed', 'EMAIL HANDLING'),
(70, 'Tiger Companies', 'EMAIL HANDLING', 'Subject not addressed properly', 'EMAIL HANDLING'),
(71, 'Exchange and Connectel', 'REPAIR TICKETING', 'Takes too long for the tech to arrive.', 'REPAIR TICKETING'),
(72, 'Exchange and Connectel', 'REPAIR TICKETING', 'Unresolved issue. Customer will call back.', 'REPAIR TICKETING'),
(73, 'Exchange and Connectel', 'REPAIR TICKETING', 'Low productivity', 'REPAIR TICKETING'),
(74, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Irate customer.', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(75, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Decrease in productivity', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(76, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'The customer will get confused resulting to unresolved or very long calls.', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(77, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'DSAT', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(78, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Long calls', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(79, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Customer complain escalations', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(80, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Increase number of repeat callers', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(81, 'Exchange and Connectel', 'BILLING/COLLECTIONS', 'The customer will get additional cost they didn\'t expect', 'BILLING/COLLECTIONS'),
(82, 'Exchange and Connectel', 'BILLING/COLLECTIONS', 'Increased number of overdue statements', 'BILLING/COLLECTIONS'),
(83, 'Exchange and Connectel', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP', 'Unresolved issue', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP'),
(84, 'Exchange and Connectel', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP', 'Customer will be upset and will take a lot of time to address the issue.', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP'),
(85, 'Grandview', 'DIRECT BILL TRANSACTIONS', 'POC will send back the task for revision', 'DIRECT BILL TRANSACTIONS'),
(86, 'Grandview', 'DIRECT BILL TRANSACTIONS', 'Payment error', 'DIRECT BILL TRANSACTIONS'),
(87, 'Grandview', 'CREATING DOCUMENTS', 'POC will send back the document for revision.', 'CREATING DOCUMENTS'),
(88, 'Grandview', 'CREATING DOCUMENTS', 'Unprocessed request', 'CREATING DOCUMENTS'),
(89, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Unsearchable accounts in epic', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(90, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Duplicate accounts', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(91, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Accounts with descrepancy', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(92, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Files unavailable for download', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(93, 'Reside New York', 'MARKETING PLAN REVIEW', 'Returned marketing plans for another review.', 'MARKETING PLAN REVIEW'),
(94, 'Reside New York', 'MARKETING PLAN REVIEW', 'Repetition of tasks.', 'MARKETING PLAN REVIEW'),
(95, 'Reside New York', 'MARKETING PLAN REVIEW', 'Other marketing plans on queue will take a while before it gets started.', 'MARKETING PLAN REVIEW'),
(96, 'Reside New York', 'CLOSING DOCUMENTS', 'The client/POCs will be upset because they will have inaccurate reports', 'CLOSING DOCUMENTS'),
(97, 'Reside New York', 'RENT ROLL', 'Task will be sent back for re-entry with correct data', 'RENT ROLL'),
(98, 'Reside New York', 'RENT ROLL', 'Reduced in productivity', 'RENT ROLL'),
(99, 'Reside New York', 'RENT ROLL', 'Reduced in efficiency', 'RENT ROLL'),
(100, 'Reside New York', 'WEBSITE LISTING', 'Inaccurate website', 'WEBSITE LISTING'),
(101, 'Reside New York', 'WEBSITE LISTING', 'Task will be sent back for re-entry with correct data', 'WEBSITE LISTING'),
(102, 'Reside New York', 'CALCULATION DATA', 'Applications may not be processed or declined', 'CALCULATION DATA'),
(103, 'Reside New York', 'CALCULATION DATA', 'Client will pull out if continous errors occur', 'CALCULATION DATA'),
(104, 'Renah Appliance Repair', 'BILLING', 'Loss profit due to non payment', 'BILLING'),
(105, 'Renah Appliance Repair', 'BILLING', 'Service repair won\'t be rendered', 'BILLING'),
(106, 'Renah Appliance Repair', 'BILLING', 'Long turn around time', 'BILLING'),
(107, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Wrong data on reports', 'UPDATING SERVICE STATUS'),
(108, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Rechecking of work which causes more time spent by the agent', 'UPDATING SERVICE STATUS'),
(109, 'Renah Appliance Repair', 'CHECKING OF CLAIMS', 'Overdued claims', 'CHECKING OF CLAIMS'),
(110, 'Renah Appliance Repair', 'CHECKING OF CLAIMS', 'Unpaid balances', 'CHECKING OF CLAIMS'),
(111, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'The requestor won\'r be able to receive the requested documents', 'CLIENT INVOICE / PAID RECEIPT'),
(112, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Unprocessed statements', 'CLIENT INVOICE / PAID RECEIPT'),
(113, 'Evergreen', 'EMAIL HANDLING', 'Missing documents', 'EMAIL HANDLING'),
(114, 'Evergreen', 'EMAIL HANDLING', 'Account executive did not receive any email confirmation.', 'EMAIL HANDLING'),
(115, 'Evergreen', 'EMAIL HANDLING', 'Completed tasks not received by account executives.', 'EMAIL HANDLING'),
(116, 'Evergreen', 'EMAIL HANDLING', 'Delayed task completion', 'EMAIL HANDLING'),
(117, 'Evergreen', 'PROCESSING DOCUMENTS', 'Requestor will receive invalid document.', 'PROCESSING DOCUMENTS'),
(118, 'Evergreen', 'PROCESSING DOCUMENTS', 'Returned documents for revision.', 'PROCESSING DOCUMENTS'),
(119, 'Evergreen', 'PROCESSING DOCUMENTS', 'Repetition of task resulting to waste of time.', 'PROCESSING DOCUMENTS'),
(120, 'Evergreen', 'FINANCED POLICY', 'Repetition of task resulting to waste of time.', 'FINANCED POLICY'),
(121, 'Evergreen', 'FINANCED POLICY', 'Unprocessed finance policy.', 'FINANCED POLICY'),
(122, 'Evergreen', 'POLICY REVIEW', 'Inaccurate customer\'s account.', 'POLICY REVIEW'),
(123, 'Evergreen', 'POLICY REVIEW', 'Repetition of task resulting to waste of time.', 'POLICY REVIEW'),
(124, 'Evergreen', 'POLICY REVIEW', 'Returned tasks for revision.', 'POLICY REVIEW'),
(125, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Inaccurate quote', 'CREATING BROADBAND QUOTES'),
(126, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Reduce in productivity', 'CREATING BROADBAND QUOTES'),
(127, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Reduce in efficiency', 'CREATING BROADBAND QUOTES'),
(128, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Loss of money', 'CREATING BROADBAND QUOTES'),
(129, 'Dynalink', 'CREATE CABLE QUOTES', 'Inaccurate quote', 'CREATE CABLE QUOTES'),
(130, 'Dynalink', 'CREATE CABLE QUOTES', 'Reduce in productivity', 'CREATE CABLE QUOTES'),
(131, 'Dynalink', 'CREATE CABLE QUOTES', 'Reduce in efficiency', 'CREATE CABLE QUOTES'),
(132, 'Dynalink', 'CREATE CABLE QUOTES', 'Loss of money', 'CREATE CABLE QUOTES'),
(133, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Inaccurate quote', 'CREATE T1 DATA QUOTES'),
(134, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Reduce in productivity', 'CREATE T1 DATA QUOTES'),
(135, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Reduce in efficiency', 'CREATE T1 DATA QUOTES'),
(136, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Loss of money', 'CREATE T1 DATA QUOTES'),
(137, 'Dynalink', 'CREATE DSL QUOTES', 'Inaccurate quote', 'CREATE DSL QUOTES'),
(138, 'Dynalink', 'CREATE DSL QUOTES', 'Reduce in productivity', 'CREATE DSL QUOTES'),
(139, 'Dynalink', 'CREATE DSL QUOTES', 'Reduce in efficiency', 'CREATE DSL QUOTES'),
(140, 'Dynalink', 'CREATE DSL QUOTES', 'Loss of money', 'CREATE DSL QUOTES'),
(141, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Inaccurate quote', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(142, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Reduce in productivity', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(143, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Reduce in efficiency', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(144, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Loss of money', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(145, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Inaccurate quote', 'CREATE ETHERNET OVER COPPER QUOTES'),
(146, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Reduce in productivity', 'CREATE ETHERNET OVER COPPER QUOTES'),
(147, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Reduce in efficiency', 'CREATE ETHERNET OVER COPPER QUOTES'),
(148, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Loss of money', 'CREATE ETHERNET OVER COPPER QUOTES'),
(149, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Inaccurate quote', 'CREATE ETHERNET OVER FIBER QUOTES'),
(150, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Reduce in productivity', 'CREATE ETHERNET OVER FIBER QUOTES'),
(151, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Reduce in efficiency', 'CREATE ETHERNET OVER FIBER QUOTES'),
(152, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Loss of money', 'CREATE ETHERNET OVER FIBER QUOTES'),
(153, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Inaccurate quote', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(154, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Reduce in productivity', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(155, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Reduce in efficiency', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(156, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Loss of money', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(157, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Inaccurate quote', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(158, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Reduce in productivity', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(159, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Reduce in efficiency', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(160, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Loss of money', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(161, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Returned task for revision', 'DOWNLOADING AND SENDING DOCUMENTS'),
(162, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Delayed completion of task', 'DOWNLOADING AND SENDING DOCUMENTS'),
(163, 'Fidella', 'UPDATING EPIC', 'Unsearchable accounts in EPIC', 'UPDATING EPIC'),
(164, 'Fidella', 'UPDATING EPIC', 'Inaccurate information', 'UPDATING EPIC'),
(165, 'Fidella', 'UPDATING EPIC', 'Missing documents ', 'UPDATING EPIC'),
(166, 'Fidella', 'UPDATING EPIC', 'Returned tasks from POC for revision.', 'UPDATING EPIC'),
(167, 'Fidella', 'UPDATING EPIC', 'Less productivity', 'UPDATING EPIC'),
(168, 'S&F Supplies', 'QUICK SHIPMENT', 'Orders not delivered', 'used to shipped multiple orders.'),
(169, 'S&F Supplies', 'QUICK SHIPMENT', 'Loss of profit', 'used to shipped multiple orders.'),
(170, 'S&F Supplies', 'QUICK SHIPMENT', 'Driver will have to verify the order resulting to prolonged turn around time', 'used to shipped multiple orders.'),
(171, 'S&F Supplies', 'Applying Payment', 'Payments not processed', 'Cash Receipts'),
(172, 'S&F Supplies', 'Applying Payment', 'Loss of profit', 'Check Payments'),
(173, 'S&F Supplies', 'Applying Payment', 'Multiple Charges', 'Check Payments'),
(174, 'S&F Supplies', 'Collections', 'Uncollected receivables', '\"Emails from Credit Manager to process collection/ reminder for payment/ call for reminder\n1st reminder - \n2nd credit hold 1 - (2 days)\n3rd inform that the account is on credit hold \"'),
(175, 'S&F Supplies', 'Collections', 'Loss of profit', '\"Emails from Credit Manager to process collection/ reminder for payment/ call for reminder\n1st reminder - \n2nd credit hold 1 - (2 days)\n3rd inform that the account is on credit hold \"'),
(176, 'S&F Supplies', 'Driver Calls', 'Miscommunication with the driver', 'Processing Payment/ COD'),
(177, 'S&F Supplies', 'Driver Calls', 'Payment not processed', 'Informing the customer that the order will arrive.'),
(178, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Inaccurate accounts', 'Customer Identification Validation'),
(179, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Unsearchable accounts', 'Customer Identification Validation'),
(180, 'S&F Supplies', 'AGING TRACKER', 'Uncollected balances', 'Unpaid COD monitoring Every Monday'),
(181, 'S&F Supplies', 'TRACKING UNSHIPPED PACKED ORDERS', 'Unshipped orders for the past 13 days', 'Every Wed and Friday, 13 days unshipped orders must be shipped if already paid'),
(182, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'No staff coming to work', 'FACILITY COORDINATOR'),
(183, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Misunderstanding with the facility', 'FACILITY COORDINATOR'),
(184, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'No staff coming to work', 'STAFF COORDINATOR'),
(185, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Misunderstanding with the facility', 'STAFF COORDINATOR'),
(186, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Client will send back the items for re editing resulting to waste of time', 'UNFI, AMAZON AND EBAY LISTING'),
(187, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Longer hours of work due to redoing the task.', 'UNFI, AMAZON AND EBAY LISTING'),
(188, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'decrease in productivity', 'UNFI, AMAZON AND EBAY LISTING'),
(189, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Quota not met', 'UNFI, AMAZON AND EBAY LISTING'),
(190, 'CICADA ENTERPRISE INC', 'CREATING BOX INFO', 'Shipment will be halted.', 'CREATING BOX INFO'),
(191, 'CICADA ENTERPRISE INC', 'CREATING BOX INFO', 'Client will send back for editing', 'CREATING BOX INFO'),
(192, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Shipment will not be delivered', ' INVOICING/PURCHASE ORDER'),
(193, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'decrease in productivity', ' INVOICING/PURCHASE ORDER'),
(194, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Client will send back for editing', ' INVOICING/PURCHASE ORDER'),
(195, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Client will send back the items for re editing resulting to waste of time', 'COLLECTING ASIN INFO (New update task)'),
(196, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Longer hours of work due to redoing the task.', 'COLLECTING ASIN INFO (New update task)'),
(197, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'decrease in productivity', 'COLLECTING ASIN INFO (New update task)'),
(198, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Quota not met', 'COLLECTING ASIN INFO (New update task)'),
(199, 'CICADA ENTERPRISE INC', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"', 'Discrepancy on the report', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"'),
(200, 'CICADA ENTERPRISE INC', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"', 'Client will send back the items for re editing resulting to waste of time', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"'),
(201, 'JWBL', 'VIRTUAL ASSISTANT', 'Data entry errors', 'VIRTUAL ASSISTANT'),
(202, 'JWBL', 'VIRTUAL ASSISTANT', 'Misunderstanding with the POC.', 'VIRTUAL ASSISTANT'),
(203, 'JWBL', 'VIRTUAL ASSISTANT', 'Loss of profit.', 'VIRTUAL ASSISTANT'),
(204, 'JWBL', 'VIRTUAL ASSISTANT', 'The client will lose trust in the agent', 'VIRTUAL ASSISTANT'),
(205, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'Unresolved Issues', 'CUSTOMER SERVICE REPRESENTATIVE'),
(206, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'Undelivered orders', 'CUSTOMER SERVICE REPRESENTATIVE'),
(207, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'Complains from the customers and client', 'CUSTOMER SERVICE REPRESENTATIVE'),
(208, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Inaccurate data of daily dropships.', 'DAILY DROPSHIPS UPDATE'),
(209, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Repetition of tasks resulting to low efficiency and productivity.', 'DAILY DROPSHIPS UPDATE'),
(210, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'The client will lose trust in the agent', 'DAILY DROPSHIPS UPDATE'),
(211, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Worst case is loss of profit resulting to pulling out of the account', 'DAILY DROPSHIPS UPDATE'),
(212, 'JWBL', 'KEYWORD SEARCHING', 'Inaccurate data on sheet', 'KEYWORD SEARCHING'),
(213, 'JWBL', 'KEYWORD SEARCHING', 'Repetition of tasks resulting to low efficiency and productivity.', 'KEYWORD SEARCHING'),
(214, 'JWBL', 'KEYWORD SEARCHING', 'The client will lose trust in the agent', 'KEYWORD SEARCHING'),
(215, 'JWBL', 'KEYWORD SEARCHING', 'Worst case is loss of profit resulting to pulling out of the account', 'KEYWORD SEARCHING'),
(216, 'JWBL', 'PO CREATOR', 'Missed PO will not be able to process for shipping labels.', 'PO CREATOR'),
(217, 'JWBL', 'PO CREATOR', 'Items won\'t be shipped', 'PO CREATOR'),
(218, 'JWBL', 'PO CREATOR', 'Worst case is loss of profit resulting to pulling out of the account', 'PO CREATOR'),
(219, 'JWBL', 'UPS SHIPPING', 'Orders will not be shipped.', 'UPS SHIPPING'),
(220, 'JWBL', 'UPS SHIPPING', 'Profit loss for the client.', 'UPS SHIPPING'),
(221, 'JWBL', 'UPS SHIPPING', 'Worst case is loss of profit resulting to pulling out of the account', 'UPS SHIPPING'),
(222, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)', 'Ineligible reviewer', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)'),
(223, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)', 'No comments on Instagram', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)'),
(224, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)', 'Reduced in efficiency and productivity', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)'),
(225, 'Edison', 'DATA ENTRY', 'Will receive feedback for error from client asking to revise the account resulting to wastes of time.', 'DATA ENTRY'),
(226, 'Edison', 'DATA ENTRY', 'Repetition of the task done.', 'DATA ENTRY'),
(227, 'Edison', 'DATA ENTRY', 'Reduced productivity and efficiency', 'DATA ENTRY'),
(228, 'Edison', 'EMAIL HANDLING', 'Misunderstanding with the client', 'EMAIL HANDLING'),
(229, 'Edison', 'EMAIL HANDLING', 'Undetection of error', 'EMAIL HANDLING'),
(230, 'Sthetix', 'QUOTATION', 'Box measurement in centimeter is not accepted therefore the shipment amount will be different.', 'QUOTATION'),
(231, 'Sthetix', 'QUOTATION', 'Amount descrepancy will result to loss profit and overpayment in shipping.', 'QUOTATION'),
(232, 'Sthetix', 'STOCKS TRACKING', 'Delayed shipments', 'STOCKS TRACKING'),
(233, 'Sthetix', 'STOCKS LISTING', 'Stocks not updated', 'STOCKS LISTING'),
(234, 'Sthetix', 'STOCKS LISTING', 'Negative feedback from client ', 'STOCKS LISTING'),
(235, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Misunderstanding with the client and the customer', 'EMAIL HANDLING'),
(236, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Unprocessed orders', 'ORDER PLACEMENTS AND REPLACEMENT'),
(237, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Loss of money', 'ORDER PLACEMENTS AND REPLACEMENT'),
(238, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Unprocessed refunds', 'RETURN AND REFUND'),
(239, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Loss of customers', 'RETURN AND REFUND'),
(240, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 'Negative reviews', 'REVIEWS 1-2-3 STAR RATING'),
(241, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 'Unshipped products', 'WORLDWIDE GLOBAL SHIPPING'),
(242, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 'Loss of customer', 'WORLDWIDE GLOBAL SHIPPING'),
(243, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Loss of profit', 'A-Z CLAIMS'),
(244, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Customer loss', 'A-Z CLAIMS'),
(245, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Negative review', 'A-Z CLAIMS'),
(246, 'Dime Trading (Nesstoy)', 'ADDRESS CHANGE ORDER CANCELLATION', 'Loss of profit', 'ADDRESS CHANGE ORDER CANCELLATION'),
(247, 'Dime Trading (Nesstoy)', 'ADDRESS CHANGE ORDER CANCELLATION', 'Customer loss', 'ADDRESS CHANGE ORDER CANCELLATION'),
(248, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 'Loss of profit', 'NEVER RECEIVED GOODS'),
(249, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 'Customer loss', 'NEVER RECEIVED GOODS'),
(250, 'Five Star Staffing', 'RECRUITMENT', 'Wrong database in google sheet', 'RECRUITMENT'),
(251, 'Five Star Staffing', 'STAFFING', 'Information won\'t be received by the facility in a timely manner.', 'STAFFING'),
(252, 'Anchor Home Health Care Services', 'RECRUITMENT TASK', 'Client would be upset because the information is incorrect resulting to negative feedbacks.', 'RECRUITMENT TASK'),
(253, 'Anchor Home Health Care Services', 'RECRUITMENT TASK', 'Client will advise to redo the work resulting to additional man hours spent.', 'RECRUITMENT TASK'),
(254, 'Anchor Home Health Care Services', 'EMAIL HANDLING', 'Misinformed applicants.', 'EMAIL HANDLING'),
(255, 'Anchor Home Health Care Services', 'EMAIL HANDLING', 'Misinformed clients', 'EMAIL HANDLING'),
(256, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Unsearchable account', 'ACCOUNT ACTIVATION'),
(257, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Inaccurate account details', 'ACCOUNT ACTIVATION'),
(258, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Decrease in Productivity and Efficiency.', 'ACCOUNT ACTIVATION'),
(260, 'BONAFIDE HEALTHCARE', 'UTILIZATION OF PORTAL', 'VOB summary will no be sent back to the client in less than an hour. That\'s the client\'s expectations', 'UTILIZATION OF PORTAL'),
(261, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Denied claims', 'VERIFICATION OF BENEFITS'),
(262, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Reduced efficiency and productivity', 'VERIFICATION OF BENEFITS'),
(263, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Negative feedback from the client', 'VERIFICATION OF BENEFITS'),
(264, 'Bonafide Healthcare', 'DOWNLOADING PATIENTS INSURANCE BENEFITS IN PDF FILE', 'Missing document', 'DOWNLOADING PATIENTS INSURANCE BENEFITS IN PDF FILE'),
(265, 'Bonafide Healthcare', 'EMAILING BENEFITS SUMMARY', 'Confusion with the POC resulting to errors.', 'EMAILING BENEFITS SUMMARY'),
(266, 'Bonafide Healthcare', 'EMAILING BENEFITS SUMMARY', 'Negative feedback', 'EMAILING BENEFITS SUMMARY');

-- --------------------------------------------------------

--
-- Table structure for table `qan_failure_mode`
--

CREATE TABLE `qan_failure_mode` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `process` varchar(1028) DEFAULT NULL,
  `failure_mode` longtext DEFAULT NULL,
  `sub_process` varchar(1028) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qan_failure_mode`
--

INSERT INTO `qan_failure_mode` (`id`, `account`, `process`, `failure_mode`, `sub_process`) VALUES
(1, 'Medex', 'Eligibility and Benefits', 'Incorrect Benefits(Major)', 'Eligibility and Benefits'),
(2, 'Medex', 'Eligibility and Benefits', 'Incorrect Coordination of benefits(Major)', 'Eligibility and Benefits'),
(3, 'Medex', 'Eligibility and Benefits', 'Insurance w/ no coverage(Major)', 'Eligibility and Benefits'),
(4, 'Medex', 'Eligibility and Benefits', 'No referrence number of call.(Minor)', 'Eligibility and Benefits'),
(5, 'Medex', 'Eligibility and Benefits', 'Typographic error(Minor)', 'EMAIL HANDLING'),
(6, 'Medex', 'Eligibility and Benefits', 'Improper grammar(Minor)', 'EMAIL HANDLING'),
(7, 'Medex', 'Eligibility and Benefits', 'Misrouted email(Major)', 'EMAIL HANDLING'),
(8, 'Medex', 'Eligibility and Benefits', 'Unchecked/failure to read emails(Major)', 'EMAIL HANDLING'),
(9, 'Medex', 'Eligibility and Benefits', 'The subject was not addressed properly(Major)', 'EMAIL HANDLING'),
(10, 'Medex', 'Billing', 'Wrong patient\'s demographics.(Major)', 'Billing'),
(11, 'Medex', 'Billing', 'Wrong patient\'s insurance.(Major)', 'Billing'),
(12, 'Medex', 'Billing', 'Wrong CPT codes(Major)', 'Billing'),
(13, 'Medex', 'Billing', 'Wrong date of service(Major)', 'Billing'),
(14, 'Medex', 'Billing', 'Wrong diagnosis codes(Major)', 'Billing'),
(15, 'Medex', 'Billing', 'Wrong place of service(Major)', 'Billing'),
(16, 'Medex', 'Billing', 'Wrong Doctor.(Major)', 'Billing'),
(17, 'Medex', 'Billing', 'Unresponded emails(Minor)', 'Billing'),
(18, 'Medex', 'Billing', 'Typographic error(Minor)', 'EMAIL HANDLING'),
(19, 'Medex', 'Billing', 'Improper grammar(Minor)', 'EMAIL HANDLING'),
(20, 'Medex', 'Billing', 'Misrouted email(Major)', 'EMAIL HANDLING'),
(21, 'Medex', 'Billing', 'Unchecked/failure to read emails(Major)', 'EMAIL HANDLING'),
(22, 'Medex', 'Billing', 'The subject was not addressed properly(Major)', 'EMAIL HANDLING'),
(23, 'YK Group', 'CONVERTING PDF FILES TO GOOGLE SHEETS', 'Failed to convert file to Google sheet', 'CONVERTING PDF FILES TO GOOGLE SHEETS'),
(24, 'YK Group', 'CONVERTING PDF FILES TO GOOGLE SHEETS', 'Incorrect table format on Google Sheets', 'CONVERTING PDF FILES TO GOOGLE SHEETS'),
(25, 'YK Group', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS', 'Incorrect chart listing info', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS'),
(26, 'YK Group', 'ADDING FORMULAS IN GOOGLE SHEET', 'Incorrect formula', 'ADDING FORMULAS IN GOOGLE SHEET'),
(27, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 'Failure to find the facility timesheet of the staff in Clear Care  ', 'TIME AND ATTENDANCE PAYROLL'),
(28, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 'Failure to identify any updates on the schedule of the staff', 'TIME AND ATTENDANCE PAYROLL'),
(29, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 'Timesheets and punched time in Clear Care doesn\'t match ', 'TIME AND ATTENDANCE PAYROLL'),
(30, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'Saving of payment details (ZTP)', 'PAYMENT AND SAVE PAYMENT'),
(31, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', '\"Incorrect file name created for the receipt (should be Payment Receipt – Katz', 'PAYMENT AND SAVE PAYMENT'),
(32, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'Failed to change the status of cancellation to completed', 'PAYMENT AND SAVE PAYMENT'),
(33, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'Failed to add note \"Insured paid\" in the comment section', 'PAYMENT AND SAVE PAYMENT'),
(34, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'Failed to attach the payment receipt', 'PAYMENT AND SAVE PAYMENT'),
(35, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'Failed to confirm with the CSR that the payment was recorded', 'PAYMENT AND SAVE PAYMENT'),
(36, 'Marks & Spencer', 'RENEWAL', 'Failed to pull up the account  even the account exists', 'RENEWAL'),
(37, 'Marks & Spencer', 'RENEWAL', 'Incorrect insurance status - Should be \"Written (Sold)\"', 'RENEWAL'),
(38, 'Marks & Spencer', 'RENEWAL', 'Incorrect policy number', 'RENEWAL'),
(39, 'Marks & Spencer', 'RENEWAL', 'Incorrect effective and expiration date', 'RENEWAL'),
(40, 'Marks & Spencer', 'RENEWAL', 'Incorrect Premium amount', 'RENEWAL'),
(41, 'Marks & Spencer', 'RENEWAL', 'Failed to attach the Dec page', 'RENEWAL'),
(42, 'Marks & Spencer', 'REINSTATEMENT', 'Incorrect file name', 'REINSTATEMENT'),
(43, 'Marks & Spencer', 'REINSTATEMENT', 'Incorrect policy dates processed', 'REINSTATEMENT'),
(44, 'Marks & Spencer', 'REINSTATEMENT', 'Incorrect policy status- from cancellation to Completed ', 'REINSTATEMENT'),
(45, 'Marks & Spencer', 'REINSTATEMENT', 'No notes - should have \"Insured paid\" note in the comment', 'REINSTATEMENT'),
(46, 'Marks & Spencer', 'REINSTATEMENT', 'Failed to upload the document', 'REINSTATEMENT'),
(47, 'Marks & Spencer', 'REINSTATEMENT', 'Failed to click \"import\"', 'REINSTATEMENT'),
(48, 'Marks & Spencer', 'CANCELLATION NOTICE', 'Do not issue if Policy it is expired. ZTP', 'CANCELLATION NOTICE'),
(49, 'Marks & Spencer', 'CANCELLATION NOTICE', '\"Always advise CSR first and wait for', 'CANCELLATION NOTICE'),
(50, 'Marks & Spencer', 'CANCELLATION NOTICE', 'Failed to check and respond to the email promptly', 'CANCELLATION NOTICE'),
(51, 'Marks & Spencer', 'CANCELLATION NOTICE', 'Incorrect file name of the downloaded file', 'CANCELLATION NOTICE'),
(52, 'Marks & Spencer', 'CANCELLATION NOTICE', 'Failed to pull up the account  even the account exists', 'CANCELLATION NOTICE'),
(53, 'Marks & Spencer', 'CANCELLATION NOTICE', 'Incorrect insurance type . (Should be cancellation)', 'CANCELLATION NOTICE'),
(54, 'Marks & Spencer', 'MONITORING', 'Failure to call or email the insured to remind payment before the policy is past due', 'MONITORING'),
(55, 'Marks & Spencer', 'MONITORING', 'Failure to send the notice of cancellation to the insured when policy is about to due', 'MONITORING'),
(56, 'Marks & Spencer', 'MONITORING', 'Failure to inform the CSR when the insured advised that they already paid or the they want to cancel', 'MONITORING'),
(57, 'Marks & Spencer', 'MONITORING', 'Failure to update status in Veruna to complete when payment is received', 'MONITORING'),
(58, 'Marks & Spencer', 'MONITORING', 'Failure to update status in Veruna to complete when insured want to cancel', 'MONITORING'),
(59, 'Marks & Spencer', 'MONITORING', 'Failure to send the cancellation notice to the insured for non payments', 'MONITORING'),
(60, 'Twin Med', 'Data Research', 'Incorrect MFR# used', 'Data Research'),
(61, 'Twin Med', 'Data Research', 'Incorrect Unit of Measurement', 'Data Research'),
(62, 'Twin Med', 'Data Research', 'Incorrect Brand Name', 'Data Research'),
(63, 'Twin Med', 'Data Research', 'Incorrect Key Features', 'Data Research'),
(64, 'Twin Med', 'Data Research', 'Incorrect/ missed California Prop 65', 'Data Research'),
(65, 'Twin Med', 'Data Research', 'Incorrect Color', 'Data Research'),
(66, 'Twin Med', 'Data Research', 'Incorrect tagging for Disposable attribute', 'Data Research'),
(67, 'Twin Med', 'Data Research', 'Incorrect tagging for Reusable attribute', 'Data Research'),
(68, 'Twin Med', 'Data Research', 'Incorrect / missed HCPCS', 'Data Research'),
(69, 'Twin Med', 'Data Research', 'Incorrect Gender', 'Data Research'),
(70, 'Twin Med', 'Data Research', 'Incorrect information on Hazardous attribute', 'Data Research'),
(71, 'Twin Med', 'Data Research', 'Incorrect/ missed NDC', 'Data Research'),
(72, 'Twin Med', 'Data Research', 'Incorrect Primary Item Material', 'Data Research'),
(73, 'Twin Med', 'Data Research', 'Incorrect Related SKUs', 'Data Research'),
(74, 'Twin Med', 'Data Research', 'Incorrect Required Parts/ Supplies', 'Data Research'),
(75, 'Twin Med', 'Data Research', 'Incorrect tagging on Rx Required attribute', 'Data Research'),
(76, 'Twin Med', 'Data Research', 'Incorrect SDS Sheet', 'Data Research'),
(77, 'Twin Med', 'Data Research', 'Incorrect Size', 'Data Research'),
(78, 'Twin Med', 'Data Research', 'Incorrect information in Sterile attribute', 'Data Research'),
(79, 'Twin Med', 'Data Research', 'Incorrect Temperature Requirements Range', 'Data Research'),
(80, 'Twin Med', 'Data Research', 'Incorrect / missed UNSPSC', 'Data Research'),
(81, 'Twin Med', 'Data Research', 'Incorrect Warranty Information', 'Data Research'),
(82, 'Twin Med', 'Data Research', 'Incorrect tagging in liquid attribute', 'Data Research'),
(83, 'Twin Med', 'Data Research', 'Incorrect use of NONE and NA', 'Data Research'),
(84, 'White Gloves Consultancy', 'ELIGIBILITY', 'Incorrect information gathered from EPACES (active or inactive)', 'ELIGIBILITY'),
(85, 'White Gloves Consultancy', 'ELIGIBILITY', 'Incorrect Medicaid Managed Plan', 'ELIGIBILITY'),
(86, 'White Gloves Consultancy', 'ELIGIBILITY', 'Incorrect date of coverage', 'ELIGIBILITY'),
(87, 'White Gloves Consultancy', 'ELIGIBILITY', 'Incorrect recert days as per agency', 'ELIGIBILITY'),
(88, 'White Gloves Consultancy', 'ELIGIBILITY', 'Incorrect highlighting for inactive Medicaid(should be red)', 'ELIGIBILITY'),
(89, 'White Gloves Consultancy', 'ELIGIBILITY', 'Incorrect highlighting for reinstated Medicaid ( Should be blue)', 'ELIGIBILITY'),
(90, 'White Gloves Consultancy', 'Listing of Active/Inactive', 'Incorrect Medicaid eligibility status', 'Listing of Active/Inactive'),
(91, 'White Gloves Consultancy', 'Listing of Active/Inactive', 'File saved to incorrect folder', 'Listing of Active/Inactive'),
(92, 'UHA', 'REPRICING', 'Incorrect Client Code', 'REPRICING'),
(93, 'UHA', 'REPRICING', 'Incorrect Service Line Items', 'REPRICING'),
(94, 'UHA', 'REPRICING', 'Incorrect Demographics', 'REPRICING'),
(95, 'UHA', 'REPRICING', 'Incorrect Diagnosis Code', 'REPRICING'),
(96, 'UHA', 'REPRICING', 'Incorrect Insurance Policy or Group ID#', 'REPRICING'),
(97, 'UHA', 'REPRICING', 'Incorrect Amount for Service Lines', 'REPRICING'),
(98, 'UHA', 'REPRICING', 'Incorrect Total charges', 'REPRICING'),
(99, 'UHA', 'REPRICING', 'Incorrect Provider\'s Information', 'REPRICING'),
(100, 'UHA', 'REPRICING', 'Incorrect File Folder (In-Network, Out of Network, Missing Information)', 'REPRICING'),
(101, 'UHA', 'REPRICING', 'Incorrect PDF format or orientation', 'REPRICING'),
(102, 'MBH Services', 'Authorizations', 'Wrong Patienet\'s name(Major)', 'Authorizations'),
(103, 'MBH Services', 'Authorizations', 'Wrong date of birth(Major)', 'Authorizations'),
(104, 'MBH Services', 'Authorizations', 'Wrong address(Major)', 'Authorizations'),
(105, 'MBH Services', 'Authorizations', 'Wrong phone number(Major)', 'Authorizations'),
(106, 'MBH Services', 'Authorizations', 'Wrong insurance ID number(Major)', 'Authorizations'),
(107, 'MBH Services', 'Authorizations', 'Wrong insurance carrier(Major)', 'Authorizations'),
(108, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'Wrong date of service entered', 'Appeals/ CRM/ Catalyst DL'),
(109, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'Wrong documnet format(Major)', 'Appeals/ CRM/ Catalyst DL'),
(110, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'Incorrect File Name(Major)', 'Appeals/ CRM/ Catalyst DL'),
(111, 'MBH Services', 'Timesheet', 'Wrong place of service(Major)', 'Timesheet'),
(112, 'MBH Services', 'Timesheet', 'Wrong start and end time(Major)', 'Timesheet'),
(113, 'MBH Services', 'Timesheet', 'Wrong date of service(Major)', 'Timesheet'),
(114, 'MBH Services', 'Timesheet', 'Wrong patient(Major)', 'Timesheet'),
(115, 'MBH Services', 'Reimbursement', 'No Ref # of call(Minor)', 'Reimbursement'),
(116, 'MBH Services', 'Reimbursement', 'No name of the insurance rep(Minor)', 'Reimbursement'),
(117, 'MBH Services', 'Reimbursement', 'No claim # (Minor)', 'Reimbursement'),
(118, 'MBH Services', 'Reimbursement', 'Amount descrepancy(Major)', 'Reimbursement'),
(119, 'Total Plan Concept', 'Extraction', 'Duplicate Insurance forms(Minor)', 'Extraction'),
(120, 'Total Plan Concept', 'Extraction', 'Missed emails(Minor)', 'Extraction'),
(121, 'Total Plan Concept', 'BILLING', 'Incorrect type of service(Major)', 'BILLING'),
(122, 'Total Plan Concept', 'BILLING', 'Incorrect place of service(Major)', 'BILLING'),
(123, 'Total Plan Concept', 'BILLING', 'Incorrect units(Major)', 'BILLING'),
(124, 'Total Plan Concept', 'BILLING', 'Incorrect date of service(Major)', 'BILLING'),
(125, 'Total Plan Concept', 'BILLING', 'Incorrect CPT codes(Major)', 'BILLING'),
(126, 'Total Plan Concept', 'BILLING', 'Incorrect diagnosis(Major)', 'BILLING'),
(127, 'Total Plan Concept', 'BILLING', 'submitted claims with out of network doctors.(Major)', 'BILLING'),
(128, 'Total Plan Concept', 'PRICING', 'Underpayment from insurance', 'PRICING'),
(129, 'Total Plan Concept', 'PRICING', 'Overpayment from insurance', 'PRICING'),
(130, 'Total Plan Concept', 'PRICING', 'Denied claimsn for incorrect fee schedule', 'PRICING'),
(131, 'Total Plan Concept', 'RESUBMISSION', 'Resubmitted claims with wrong CPT codes(Major)', 'RESUBMISSION'),
(132, 'Total Plan Concept', 'RESUBMISSION', 'Resubmitted claims with wrong diagnosis(Major)', 'RESUBMISSION'),
(133, 'Total Plan Concept', 'RESUBMISSION', 'Resubmitted claims with wrong charge amount(Major)', 'RESUBMISSION'),
(134, 'Total Plan Concept', 'RESUBMISSION', 'Resubmitted claims with wrong allowed amount(Major)', 'RESUBMISSION'),
(135, 'Total Plan Concept', 'RESUBMISSION', 'Invalid tagging on tracker(Minor)', 'RESUBMISSION'),
(136, 'Tiger Companies', 'INVOICING', 'Incorrect net amount(Major)', 'INVOICING'),
(137, 'Tiger Companies', 'INVOICING', 'Incorrect shipping company(Major)', 'INVOICING'),
(138, 'Tiger Companies', 'INVOICING', 'Incorrect invoice date(Major)', 'INVOICING'),
(139, 'Tiger Companies', 'INVOICING', 'Incorrect shipping date(Major)', 'INVOICING'),
(140, 'Tiger Companies', 'INVOICING', 'Missing or incorrect tracking number(Minor)', 'INVOICING'),
(141, 'Tiger Companies', 'INVOICING', 'Incorrect item quantity shipped(Major)', 'INVOICING'),
(142, 'Tiger Companies', 'INVOICING', 'Incorrect notes uploaded on descrepancy folder(Minor)', 'INVOICING'),
(143, 'Tiger Companies', 'INVOICING', 'Incorrect terms(Major)', 'INVOICING'),
(144, 'Tiger Companies', 'CREDIT MEMO', 'Incorrect PO(Major)', 'CREDIT MEMO'),
(145, 'Tiger Companies', 'CREDIT MEMO', 'Incorrect status(Major)', 'CREDIT MEMO'),
(146, 'Tiger Companies', 'CREDIT MEMO', 'Incorrect amount entered((Major)', 'CREDIT MEMO'),
(147, 'Tiger Companies', 'EMAIL HANDLING', 'Typo error(Minor)', 'EMAIL HANDLING'),
(148, 'Tiger Companies', 'EMAIL HANDLING', 'Improper grammar(Minor)', 'EMAIL HANDLING'),
(149, 'Tiger Companies', 'EMAIL HANDLING', 'Misrouted email(Major)', 'EMAIL HANDLING'),
(150, 'Tiger Companies', 'EMAIL HANDLING', 'Subject not addressed properly(Major)', 'EMAIL HANDLING'),
(151, 'Exchange and Connectel', 'REPAIR TICKETING', 'Pending tickets unattended', 'REPAIR TICKETING'),
(152, 'Exchange and Connectel', 'REPAIR TICKETING', 'Expired Tickets', 'REPAIR TICKETING'),
(153, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'abandoned calls', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(154, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Answered phone after 3 rings', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(155, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Call mishandling', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(156, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', '\"Incorrect transfer of calls to the correct dept.\n\"', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(157, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Improper tone of voice', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(158, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Improper probing.', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(159, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Long dead air', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(160, 'Exchange and Connectel', 'BILLING/COLLECTIONS', 'Wrong Billing method', 'BILLING/COLLECTIONS'),
(161, 'Exchange and Connectel', 'BILLING/COLLECTIONS', 'Wrong mode of payments', 'BILLING/COLLECTIONS'),
(162, 'Exchange and Connectel', 'BILLING/COLLECTIONS', 'Missing Payments', 'BILLING/COLLECTIONS'),
(163, 'Exchange and Connectel', 'BILLING/COLLECTIONS', 'Incorrect entry for credit card/ check info', 'BILLING/COLLECTIONS'),
(164, 'Exchange and Connectel', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP', 'Missed follow up calls', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP'),
(165, 'Exchange and Connectel', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP', 'Unable to call the customer back', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP'),
(166, 'Exchange and Connectel', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP', 'Ticket status not updated', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP'),
(167, 'Grandview', 'DIRECT BILL TRANSACTIONS', 'Entered transaction without policy dec on hand(Major)', 'DIRECT BILL TRANSACTIONS'),
(168, 'Grandview', 'DIRECT BILL TRANSACTIONS', 'Incorrect commision rate and amount(Major)', 'DIRECT BILL TRANSACTIONS'),
(169, 'Grandview', 'CREATING DOCUMENTS', 'Missing information on documents(Major)', 'CREATING DOCUMENTS'),
(170, 'Grandview', 'CREATING DOCUMENTS', 'Missing information on documents(Major)', 'CREATING DOCUMENTS'),
(171, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Incorrect location(Minor)', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(172, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Incorrect policy type(Minor)', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(173, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Incorrect policy number(Minor)', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(174, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Incorrect Insurance carrier(Minor)', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(175, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Incorrect insured name(Minor)', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(176, 'Reside New York', 'MARKETING PLAN REVIEW', 'Not updated checklist(Major)', 'MARKETING PLAN REVIEW'),
(177, 'Reside New York', 'MARKETING PLAN REVIEW', 'Incorrect details on attachments(Major)', 'MARKETING PLAN REVIEW'),
(178, 'Reside New York', 'MARKETING PLAN REVIEW', 'Missed attachments(Major)', 'MARKETING PLAN REVIEW'),
(179, 'Reside New York', 'CLOSING DOCUMENTS', 'Incorrect data(Major)', 'CLOSING DOCUMENTS'),
(180, 'Reside New York', 'CLOSING DOCUMENTS', 'Incorrect tagging(Major)', 'CLOSING DOCUMENTS'),
(181, 'Reside New York', 'RENT ROLL', 'Incorrect PIS Date', 'RENT ROLL'),
(182, 'Reside New York', 'RENT ROLL', 'Incorrect project name', 'RENT ROLL'),
(183, 'Reside New York', 'RENT ROLL', 'Incorrect Bldg address', 'RENT ROLL'),
(184, 'Reside New York', 'RENT ROLL', 'Incorrect unti #', 'RENT ROLL'),
(185, 'Reside New York', 'RENT ROLL', 'Incorrect name of tenant', 'RENT ROLL'),
(186, 'Reside New York', 'RENT ROLL', 'incorrect household size', 'RENT ROLL'),
(187, 'Reside New York', 'RENT ROLL', 'Incorrect household gross annual income', 'RENT ROLL'),
(188, 'Reside New York', 'RENT ROLL', 'Incorrect move-in date', 'RENT ROLL'),
(189, 'Reside New York', 'RENT ROLL', 'Incorrect current lease - end date', 'RENT ROLL'),
(190, 'Reside New York', 'RENT ROLL', 'Incorrect unit sq. ft.', 'RENT ROLL'),
(191, 'Reside New York', 'RENT ROLL', 'Incorrect unit size, number of BR', 'RENT ROLL'),
(192, 'Reside New York', 'RENT ROLL', 'Incorrect actual rent', 'RENT ROLL'),
(193, 'Reside New York', 'RENT ROLL', 'Incorrect tenant share rent', 'RENT ROLL'),
(194, 'Reside New York', 'RENT ROLL', 'Incorrect subsidy source', 'RENT ROLL'),
(195, 'Reside New York', 'RENT ROLL', 'Incorrect race', 'RENT ROLL'),
(196, 'Reside New York', 'RENT ROLL', 'Incorrect ethnicity', 'RENT ROLL'),
(197, 'Reside New York', 'RENT ROLL', 'Incorrect tagged for disability', 'RENT ROLL'),
(198, 'Reside New York', 'RENT ROLL', 'Incorrect tick on utility box field', 'RENT ROLL'),
(199, 'Reside New York', 'RENT ROLL', 'Incorrect unit breakdown', 'RENT ROLL'),
(200, 'Reside New York', 'RENT ROLL', 'Data entered to different tabs- affordable units / Market units', 'RENT ROLL'),
(201, 'Reside New York', 'WEBSITE LISTING', 'Incorrect entry on basic info', 'WEBSITE LISTING'),
(202, 'Reside New York', 'WEBSITE LISTING', 'Failed to upload pictures in Gallery Images', 'WEBSITE LISTING'),
(203, 'Reside New York', 'WEBSITE LISTING', 'Incorrect information entered in Floor Plans.', 'WEBSITE LISTING'),
(204, 'Reside New York', 'WEBSITE LISTING', 'Incorrect tagging on agent info', 'WEBSITE LISTING'),
(205, 'Reside New York', 'WEBSITE LISTING', 'Incorrect font color in Misc. field', 'WEBSITE LISTING'),
(206, 'Reside New York', 'CALCULATION DATA', 'Incorrect/Did not enter the Paystub amount', 'CALCULATION DATA'),
(207, 'Reside New York', 'CALCULATION DATA', 'Incomplete/Incorrect Notes', 'CALCULATION DATA'),
(208, 'Reside New York', 'CALCULATION DATA', 'Incorrect/Did not enter the Paystub sequence', 'CALCULATION DATA'),
(209, 'Reside New York', 'CALCULATION DATA', 'Incorrect gross pay amount', 'CALCULATION DATA'),
(210, 'Reside New York', 'CALCULATION DATA', 'Incorrect number of pay periods', 'CALCULATION DATA'),
(211, 'Reside New York', 'CALCULATION DATA', 'Incorrect number of weeks paid', 'CALCULATION DATA'),
(212, 'Reside New York', 'CALCULATION DATA', 'Incorrect YTD entered', 'CALCULATION DATA'),
(213, 'Reside New York', 'CALCULATION DATA', 'Incorrect/Did not enter amount in FEDERAL from 1040 form line 7', 'CALCULATION DATA'),
(214, 'Reside New York', 'CALCULATION DATA', 'Incorrect/Did not enter amount from W2 form BOX 1', 'CALCULATION DATA'),
(215, 'Reside New York', 'CALCULATION DATA', 'Incorrect/Did not enter the amount under \"Other Income\"', 'CALCULATION DATA'),
(216, 'Reside New York', 'CALCULATION DATA', 'Incorrect/Incomplete/Did not enter the amount under Assets (savings - most recent; checking - 6 consecutive)', 'CALCULATION DATA'),
(217, 'Reside New York', 'CALCULATION DATA', 'Incorrect/Did not enter the amount under Public Assistance', 'CALCULATION DATA'),
(218, 'Renah Appliance Repair', 'BILLING', 'Incorrect date of repair(Minor)', 'BILLING'),
(219, 'Renah Appliance Repair', 'BILLING', 'Incorrect number of visits(Minor)', 'BILLING'),
(220, 'Renah Appliance Repair', 'BILLING', 'Incorrect name of technician(Major)', 'BILLING'),
(221, 'Renah Appliance Repair', 'BILLING', 'Incorrect invoice number(Major)', 'BILLING'),
(222, 'Renah Appliance Repair', 'BILLING', 'Incorrect service status(Major)', 'BILLING'),
(223, 'Renah Appliance Repair', 'BILLING', 'Incorrect date of invoice(Major)', 'BILLING'),
(224, 'Renah Appliance Repair', 'BILLING', 'Incorrect service schedule(Major)', 'BILLING'),
(225, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Incorrect notes(Major)', 'UPDATING SERVICE STATUS'),
(226, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Incorrect recheck date(Minor)', 'UPDATING SERVICE STATUS'),
(227, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Incorrect completed date(Minor)', 'UPDATING SERVICE STATUS'),
(228, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Incorrect job order status(Major)', 'UPDATING SERVICE STATUS'),
(229, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Incorrect warranty provider(Major)', 'UPDATING SERVICE STATUS'),
(230, 'Renah Appliance Repair', 'CHECKING OF CLAIMS', 'Failed to check claims in Service Power, Service Bench, and New Leaf if for claims status', 'CHECKING OF CLAIMS'),
(231, 'Renah Appliance Repair', 'CHECKING OF CLAIMS', 'Incorrect/ missing notes in the system', 'CHECKING OF CLAIMS'),
(232, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Incorrect policy number(Major)', 'CLIENT INVOICE / PAID RECEIPT'),
(233, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Incorrect insurance company(Major)', 'CLIENT INVOICE / PAID RECEIPT'),
(234, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Incorrect policy type(Major)', 'CLIENT INVOICE / PAID RECEIPT'),
(235, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Incorrect email subject(Minor)', 'CLIENT INVOICE / PAID RECEIPT'),
(236, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'No documents attached on email(Major)', 'CLIENT INVOICE / PAID RECEIPT'),
(237, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Incorrect invoice amount(Major)', 'CLIENT INVOICE / PAID RECEIPT'),
(238, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Incorrect insurance status.(Major)', 'CLIENT INVOICE / PAID RECEIPT'),
(239, 'Evergreen', 'EMAIL HANDLING', 'Incorrect keywords(Minor)', 'EMAIL HANDLING'),
(240, 'Evergreen', 'EMAIL HANDLING', 'Misrouted Emails(Major)', 'EMAIL HANDLING'),
(241, 'Evergreen', 'EMAIL HANDLING', 'Late emails(Minor)', 'EMAIL HANDLING'),
(242, 'Evergreen', 'EMAIL HANDLING', 'No email confirmation(Minor)', 'EMAIL HANDLING'),
(243, 'Evergreen', 'EMAIL HANDLING', 'Account executive not cc\'d on emails(Minor)', 'EMAIL HANDLING'),
(244, 'Evergreen', 'EMAIL HANDLING', 'No attached documents(Minor)', 'EMAIL HANDLING'),
(245, 'Evergreen', 'PROCESSING DOCUMENTS', 'Incorrect name(Major)', 'PROCESSING DOCUMENTS'),
(246, 'Evergreen', 'PROCESSING DOCUMENTS', 'Incorrect address(Major)', 'PROCESSING DOCUMENTS'),
(247, 'Evergreen', 'PROCESSING DOCUMENTS', 'Incorrect insurance company(Major)', 'PROCESSING DOCUMENTS'),
(248, 'Evergreen', 'PROCESSING DOCUMENTS', 'Incorrect policy number(Major)', 'PROCESSING DOCUMENTS'),
(249, 'Evergreen', 'PROCESSING DOCUMENTS', 'Incorrect policy coverage date(Major)', 'PROCESSING DOCUMENTS'),
(250, 'Evergreen', 'PROCESSING DOCUMENTS', 'Incorrect policy number(Major)', 'PROCESSING DOCUMENTS'),
(251, 'Evergreen', 'PROCESSING DOCUMENTS', 'No document attached(Major)', 'PROCESSING DOCUMENTS'),
(252, 'Evergreen', 'FINANCED POLICY', 'Incorrect account number.(Major)', 'FINANCED POLICY'),
(253, 'Evergreen', 'FINANCED POLICY', 'Incorrect financial company.(Major)', 'FINANCED POLICY'),
(254, 'Evergreen', 'FINANCED POLICY', 'Incorrect amount financed.(Major)', 'FINANCED POLICY'),
(255, 'Evergreen', 'FINANCED POLICY', 'Incorrect installment amount.(Major)', 'FINANCED POLICY'),
(256, 'Evergreen', 'FINANCED POLICY', 'Incorrect number of installment.(Major)', 'FINANCED POLICY'),
(257, 'Evergreen', 'FINANCED POLICY', 'Incorrect installment dates.(Major)', 'FINANCED POLICY'),
(258, 'Evergreen', 'FINANCED POLICY', 'Incorrect annual % rate.(Major)', 'FINANCED POLICY'),
(259, 'Evergreen', 'POLICY REVIEW', 'Incorrect policy coverage (Major)', 'POLICY REVIEW'),
(260, 'Evergreen', 'POLICY REVIEW', 'Incorrect policy coverage dates.(Major)', 'POLICY REVIEW'),
(261, 'Evergreen', 'POLICY REVIEW', 'Incorrect policy number(Major)', 'POLICY REVIEW'),
(262, 'Evergreen', 'POLICY REVIEW', 'Incorrect insurance carrier.(Major', 'POLICY REVIEW'),
(263, 'Evergreen', 'POLICY REVIEW', 'Incorrect policy type.(Major', 'POLICY REVIEW'),
(264, 'Evergreen', 'POLICY REVIEW', 'Incorresct premium amount(Major', 'POLICY REVIEW'),
(265, 'Evergreen', 'POLICY REVIEW', 'Incorrect policy number(Major)', 'POLICY REVIEW'),
(266, 'Evergreen', 'POLICY REVIEW', 'Incorrect Demographics', 'POLICY REVIEW'),
(267, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Incorrect demographics', 'CREATING BROADBAND QUOTES'),
(268, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Incorrect download speed', 'CREATING BROADBAND QUOTES'),
(269, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Incorrect product', 'CREATING BROADBAND QUOTES'),
(270, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Incorrect circuit type', 'CREATING BROADBAND QUOTES'),
(271, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Incorrect access type', 'CREATING BROADBAND QUOTES'),
(272, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Incorrect IPs', 'CREATING BROADBAND QUOTES'),
(273, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Incorrect term', 'CREATING BROADBAND QUOTES'),
(274, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Incorrect bandwidth', 'CREATING BROADBAND QUOTES'),
(275, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Incorrect quote ID provided', 'CREATING BROADBAND QUOTES'),
(276, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Incorrect MRC', 'CREATING BROADBAND QUOTES'),
(277, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Incorrect NRC', 'CREATING BROADBAND QUOTES'),
(278, 'Dynalink', 'CREATE CABLE QUOTES', 'Incorrect demographics', 'CREATE CABLE QUOTES'),
(279, 'Dynalink', 'CREATE CABLE QUOTES', 'Incorrect product', 'CREATE CABLE QUOTES'),
(280, 'Dynalink', 'CREATE CABLE QUOTES', 'Incorrect circuit type', 'CREATE CABLE QUOTES'),
(281, 'Dynalink', 'CREATE CABLE QUOTES', 'Incorrect access type', 'CREATE CABLE QUOTES'),
(282, 'Dynalink', 'CREATE CABLE QUOTES', 'Incorrect IPs', 'CREATE CABLE QUOTES'),
(283, 'Dynalink', 'CREATE CABLE QUOTES', 'Incorrect term', 'CREATE CABLE QUOTES'),
(284, 'Dynalink', 'CREATE CABLE QUOTES', 'Incorrect bandwidth', 'CREATE CABLE QUOTES'),
(285, 'Dynalink', 'CREATE CABLE QUOTES', 'Incorrect quote ID provided', 'CREATE CABLE QUOTES'),
(286, 'Dynalink', 'CREATE CABLE QUOTES', 'Incorrect MRC', 'CREATE CABLE QUOTES'),
(287, 'Dynalink', 'CREATE CABLE QUOTES', 'Incorrect NRC', 'CREATE CABLE QUOTES'),
(288, 'Dynalink', 'CREATE CABLE QUOTES', 'Service availability not sent through email', 'CREATE CABLE QUOTES'),
(289, 'Dynalink', 'CREATE CABLE QUOTES', 'File for pricing not attached in the email', 'CREATE CABLE QUOTES'),
(290, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect demographics', 'CREATE T1 DATA QUOTES'),
(291, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect Bandwidth', 'CREATE T1 DATA QUOTES'),
(292, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect product', 'CREATE T1 DATA QUOTES'),
(293, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect quote ID provided', 'CREATE T1 DATA QUOTES'),
(294, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect technology', 'CREATE T1 DATA QUOTES'),
(295, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect speed', 'CREATE T1 DATA QUOTES'),
(296, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect location ', 'CREATE T1 DATA QUOTES'),
(297, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect network product', 'CREATE T1 DATA QUOTES'),
(298, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect terms', 'CREATE T1 DATA QUOTES'),
(299, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect port type', 'CREATE T1 DATA QUOTES'),
(300, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect port speed', 'CREATE T1 DATA QUOTES'),
(301, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect access type', 'CREATE T1 DATA QUOTES'),
(302, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect access speed', 'CREATE T1 DATA QUOTES'),
(303, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect Installation type', 'CREATE T1 DATA QUOTES'),
(304, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect circuit type', 'CREATE T1 DATA QUOTES'),
(305, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect IPs', 'CREATE T1 DATA QUOTES'),
(306, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect CPE provider', 'CREATE T1 DATA QUOTES'),
(307, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect connection type', 'CREATE T1 DATA QUOTES'),
(308, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect port billing type', 'CREATE T1 DATA QUOTES'),
(309, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect MRC', 'CREATE T1 DATA QUOTES'),
(310, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Incorrect NRC', 'CREATE T1 DATA QUOTES'),
(311, 'Dynalink', 'CREATE DSL QUOTES', 'Incorrect demographics', 'CREATE DSL QUOTES'),
(312, 'Dynalink', 'CREATE DSL QUOTES', 'Incorrect contract term', 'CREATE DSL QUOTES'),
(313, 'Dynalink', 'CREATE DSL QUOTES', 'Incorrect MRC', 'CREATE DSL QUOTES'),
(314, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Incorrect quote type', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(315, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Incorrect term', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(316, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Incorrect quote ID provided', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(317, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Incorrect MRC', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(318, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Incorrect NRC', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(319, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Incorrect NPANXX', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(320, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Incorrect demographics', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(321, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Incorrect product', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(322, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Incorrect rate center provided', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(323, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Incorrect demographics', 'CREATE ETHERNET OVER COPPER QUOTES'),
(324, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Incorrect product', 'CREATE ETHERNET OVER COPPER QUOTES'),
(325, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Incorrect technology', 'CREATE ETHERNET OVER COPPER QUOTES'),
(326, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Incorrect speed', 'CREATE ETHERNET OVER COPPER QUOTES'),
(327, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Incorrect term', 'CREATE ETHERNET OVER COPPER QUOTES'),
(328, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Incorrect NRC', 'CREATE ETHERNET OVER COPPER QUOTES'),
(329, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Incorrect MRC', 'CREATE ETHERNET OVER COPPER QUOTES'),
(330, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Incorrect quote ID provided', 'CREATE ETHERNET OVER COPPER QUOTES'),
(331, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect demographics', 'CREATE ETHERNET OVER FIBER QUOTES'),
(332, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect product', 'CREATE ETHERNET OVER FIBER QUOTES'),
(333, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect technology', 'CREATE ETHERNET OVER FIBER QUOTES'),
(334, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect speed', 'CREATE ETHERNET OVER FIBER QUOTES'),
(335, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect NRC', 'CREATE ETHERNET OVER FIBER QUOTES'),
(336, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect MRC', 'CREATE ETHERNET OVER FIBER QUOTES'),
(337, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect quote ID provided', 'CREATE ETHERNET OVER FIBER QUOTES'),
(338, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect CPE provider', 'CREATE ETHERNET OVER FIBER QUOTES'),
(339, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect bandwidth', 'CREATE ETHERNET OVER FIBER QUOTES'),
(340, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect terms', 'CREATE ETHERNET OVER FIBER QUOTES'),
(341, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect port type', 'CREATE ETHERNET OVER FIBER QUOTES'),
(342, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect port speed', 'CREATE ETHERNET OVER FIBER QUOTES'),
(343, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect access type', 'CREATE ETHERNET OVER FIBER QUOTES'),
(344, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect access speed', 'CREATE ETHERNET OVER FIBER QUOTES'),
(345, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect installation type', 'CREATE ETHERNET OVER FIBER QUOTES'),
(346, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect port billing type', 'CREATE ETHERNET OVER FIBER QUOTES'),
(347, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect connection type', 'CREATE ETHERNET OVER FIBER QUOTES'),
(348, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect loop speed', 'CREATE ETHERNET OVER FIBER QUOTES'),
(349, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Incorrect CoS type', 'CREATE ETHERNET OVER FIBER QUOTES'),
(350, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Incorrect demographics', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(351, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Incorrect speed', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(352, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Incorrect location', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(353, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Incorrect module', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(354, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Incorrect TXNUN', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(355, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Incorrect location', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(356, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Incorrect MRC', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(357, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Incorrect demographics', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(358, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Incorrect Lookup Type', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(359, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Incorrect terms', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(360, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Incorrect quote ID provided', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(361, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Incorrect product', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(362, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Incorrect policy type in the document(Major)', 'DOWNLOADING AND SENDING DOCUMENTS'),
(363, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Incorrect  insurance carrier in the document(Major)', 'DOWNLOADING AND SENDING DOCUMENTS'),
(364, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Incorrect  location in the document(Major)', 'DOWNLOADING AND SENDING DOCUMENTS'),
(365, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Incorrect  policy holder in the document(Major)', 'DOWNLOADING AND SENDING DOCUMENTS'),
(366, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Missing information on the document(Major)', 'DOWNLOADING AND SENDING DOCUMENTS'),
(367, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Misrouted email(Major)', 'DOWNLOADING AND SENDING DOCUMENTS'),
(368, 'Fidella', 'UPDATING EPIC', 'Incorrect policy holder(Minor)', 'UPDATING EPIC'),
(369, 'Fidella', 'UPDATING EPIC', 'Incorrect locating address(Minor)', 'UPDATING EPIC'),
(370, 'Fidella', 'UPDATING EPIC', 'incorrect type of policy(Minor)', 'UPDATING EPIC'),
(371, 'Fidella', 'UPDATING EPIC', 'Incorrect  policy number(Minor)', 'UPDATING EPIC'),
(372, 'Fidella', 'UPDATING EPIC', 'Incorrect insurance carrier(Minor)', 'UPDATING EPIC'),
(373, 'Fidella', 'UPDATING EPIC', 'Incorrect coverage(Minor)', 'UPDATING EPIC'),
(374, 'Fidella', 'UPDATING EPIC', 'Incorrect date of coverages(Minor)', 'UPDATING EPIC'),
(375, 'Fidella', 'UPDATING EPIC', 'Wrong insurance status(Minor)', 'UPDATING EPIC'),
(376, 'Fidella', 'UPDATING EPIC', 'No attachmed documents(Minor)', 'UPDATING EPIC'),
(377, 'S&F Supplies', 'QUICK SHIPMENT', 'Failed to enter correct SO number.', 'used to shipped multiple orders.'),
(378, 'S&F Supplies', 'QUICK SHIPMENT', 'Failed to check if the SO has the same payment type and packed date.', 'used to shipped multiple orders.'),
(379, 'S&F Supplies', 'Applying Payment', 'Entered incorrect customer information (such as Customer ID, Name of Company and/or Telephone Number)', 'Cash Receipts'),
(380, 'S&F Supplies', 'Applying Payment', 'Selected incorrect payment method. (O- for Check, C for Credit Card)', 'Check Payments'),
(381, 'S&F Supplies', 'Applying Payment', 'Entered incorrect check/ref number', 'Check Payments'),
(382, 'S&F Supplies', 'Applying Payment', 'Entered incorrect date of payment', 'Check Payments'),
(383, 'S&F Supplies', 'Applying Payment', 'Entered incorrect amount that has been paid', 'Check Payments'),
(384, 'S&F Supplies', 'Applying Payment', 'Failed to save the informations.', 'Check Payments'),
(385, 'S&F Supplies', 'Applying Payment', 'Incorrect card chosen on file', 'For Credit Card Payments'),
(386, 'S&F Supplies', 'Applying Payment', 'Selected Incorrect Merchant ID', 'For Credit Card Payments'),
(387, 'S&F Supplies', 'Applying Payment', 'Selected Manual Swipe incorrectly. (should be used if only the Zipcode is provided.) ', 'For Credit Card Payments'),
(388, 'S&F Supplies', 'Applying Payment', 'Entered incorrect customer information (such as Customer ID, Name of Company and/or Telephone Number)', 'Bounce Check '),
(389, 'S&F Supplies', 'Applying Payment', 'Entered incorrect amount paid', 'Bounce Check '),
(390, 'S&F Supplies', 'Applying Payment', 'Incorrectly selected SBT version. ', 'Apply Credit/Deposit'),
(391, 'S&F Supplies', 'Applying Payment', 'Entered incorrect customer information (such as Customer ID, Name of Company and/or Telephone Number)', 'Apply Credit/Deposit'),
(392, 'S&F Supplies', 'Collections', 'Failed to check Outlook Inbox for new Emails', '\"Emails from Credit Manager to process collection/ reminder for payment/ call for reminder\n1st reminder - \n2nd credit hold 1 - (2 days)\n3rd inform that the account is on credit hold \"'),
(393, 'S&F Supplies', 'Collections', 'Failed to reply and acknowledge', '\"Emails from Credit Manager to process collection/ reminder for payment/ call for reminder'),
(394, 'S&F Supplies', 'Collections', 'Failed to forward Emails that were misrouted to A/R inbox. JP', '\"Emails from Credit Manager to process collection/ reminder for payment/ call for reminder'),
(395, 'S&F Supplies', 'Collections', 'Failed to call the customers with oustanding balance. (for payment follow up)', 'Driver Calls/ Customer Calls'),
(396, 'S&F Supplies', 'Collections', 'Failed to do a follow up call after 3 business days.', 'Driver Calls/ Customer Calls'),
(397, 'S&F Supplies', 'Collections', 'Failed to call back after the first follow up.', 'Outbound Calls'),
(398, 'S&F Supplies', 'Collections', 'Failed to call back after the first follow up.', 'Outbound Calls'),
(399, 'S&F Supplies', 'Driver Calls', 'Failed to charge the card if the Net Terms are as follows (Cash,Check,Crdit Card & Cash.Credit Card)', 'Processing Payment/ COD'),
(400, 'S&F Supplies', 'Driver Calls', 'Failed to get an approval of the Credit Manager or Accounting Manager for check payments. EJ', 'Informing the customer that the order will arrive.'),
(401, 'S&F Supplies', 'Driver Calls', 'Failed to ask for approval/authorization from A/R  (for accounts with tagging: Call A/R before and daily limit exceeded)', 'Informing the customer that the order will arrive.'),
(402, 'S&F Supplies', 'Driver Calls', 'Failed to change the correct terms on the SO number.', 'Informing the customer that the order will arrive.'),
(403, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Failed to call customers to update file.', 'Customer Identification Validation '),
(404, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Entered incorrect customer demographics', 'Customer Identification Validation '),
(405, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Failed to enter name of person incharge of sales/ purchasing.', 'Customer Identification Validation '),
(406, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Incorrect owner contact information. (if provided)', 'Renaming File/Renaming error scans to correct  SO# or driver sheet #.'),
(407, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Failed to set a follow up schedule (for customer\'s that don\'t have the time to provide information.)', 'Renaming File/Renaming error scans to correct  SO# or driver sheet #.'),
(408, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Failed to send New Entity Form (for customers under a new company name or new entity)', 'Renaming File/Renaming error scans to correct  SO# or driver sheet #.'),
(409, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Incorrect file name', 'Renaming File/Renaming error scans to correct  SO# or driver sheet #.'),
(410, 'S&F Supplies', 'AGING TRACKER', 'Failed to follow up the payment', 'Unpaid COD monitoring Every Monday'),
(411, 'S&F Supplies', 'AGING TRACKER', 'Incorrect disposition Y/F - Y for collect and F for follow up', 'Unpaid COD monitoring Every Monday'),
(412, 'S&F Supplies', 'TRACKING UNSHIPPED PACKED ORDERS', 'Failed to shipped paid orders on a timely manner', 'Every Wed and Friday, 13 days unshipped orders must be shipped if already paid'),
(413, 'S&F Supplies', 'Tracker For Payment for credit card process', 'Failure to update the tracker by the agent', 'Monitoring of the processed payment. These are the things that can be monitored by this tracker'),
(414, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Incorrect date submitted', 'FACILITY COORDINATOR'),
(415, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Incorrect time submitted', 'FACILITY COORDINATOR'),
(416, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Incorrect tagged for availibility', 'FACILITY COORDINATOR'),
(417, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Incorrect staff name', 'FACILITY COORDINATOR'),
(418, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Incorrect Facility', 'FACILITY COORDINATOR'),
(419, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Improper grammar', 'FACILITY COORDINATOR'),
(420, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Misspelled words', 'FACILITY COORDINATOR'),
(421, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Incorrect staff name', 'STAFF COORDINATOR'),
(422, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Incorrect Facility', 'STAFF COORDINATOR'),
(423, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Incorrect tagged for availibility', 'STAFF COORDINATOR'),
(424, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Incorrect staff name', 'STAFF COORDINATOR'),
(425, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Incorrect Facility', 'STAFF COORDINATOR'),
(426, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Improper grammar', 'STAFF COORDINATOR'),
(427, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Misspelled words', 'STAFF COORDINATOR'),
(428, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Subject of the email not addressed properly', 'STAFF COORDINATOR'),
(429, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Incorrect SKU(Major)', 'UNFI, AMAZON AND EBAY LISTING'),
(430, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Incorrect weight(Major)', 'UNFI, AMAZON AND EBAY LISTING'),
(431, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Incorrect ASIN link(Major)', 'UNFI, AMAZON AND EBAY LISTING'),
(432, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Incorrect price(Major)', 'UNFI, AMAZON AND EBAY LISTING'),
(433, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Incorrect shipping charge(Major)', 'UNFI, AMAZON AND EBAY LISTING'),
(434, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Incorrect brand (Major) new update', 'UNFI, AMAZON AND EBAY LISTING'),
(435, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Incorrect Ingredients(Major) new update', 'UNFI, AMAZON AND EBAY LISTING'),
(436, 'CICADA ENTERPRISE INC', 'CREATING BOX INFO', 'Incorrect item number(Major)', 'CREATING BOX INFO'),
(437, 'CICADA ENTERPRISE INC', 'CREATING BOX INFO', 'Incorrect quantity(Major)', 'CREATING BOX INFO'),
(438, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Incorrect SKU(Major)', ' INVOICING/PURCHASE ORDER'),
(439, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Incorrect quantity(Major)', ' INVOICING/PURCHASE ORDER'),
(440, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Incorrect invoice number(Major)', ' INVOICING/PURCHASE ORDER'),
(441, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Incorrect invoice date(Major)', ' INVOICING/PURCHASE ORDER'),
(442, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Incorrect vendor(Major)', ' INVOICING/PURCHASE ORDER'),
(443, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Incorrect warehouse(Major)', ' INVOICING/PURCHASE ORDER'),
(444, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Incorrect Amazon Country', 'COLLECTING ASIN INFO (New update task)'),
(445, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Incorrect ASIN', 'COLLECTING ASIN INFO (New update task)'),
(446, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Incorrect product name', 'COLLECTING ASIN INFO (New update task)'),
(447, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Incorrect last 3 months average ranking', 'COLLECTING ASIN INFO (New update task)'),
(448, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Incorrect category', 'COLLECTING ASIN INFO (New update task)'),
(449, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Incorrect number of reviews', 'COLLECTING ASIN INFO (New update task)'),
(450, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Incorrect star rating', 'COLLECTING ASIN INFO (New update task)'),
(451, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Incorrect number of sellers with FBA Prime', 'COLLECTING ASIN INFO (New update task)'),
(452, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Incorrect buy box price', 'COLLECTING ASIN INFO (New update task)'),
(453, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Incorrect FBA price at time of best ranking', 'COLLECTING ASIN INFO (New update task)'),
(454, 'CICADA ENTERPRISE INC', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"', 'Incorrect quantity remaining', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"'),
(455, 'JWBL', 'VIRTUAL ASSISTANT', 'Missed email sent by the POC', 'VIRTUAL ASSISTANT'),
(456, 'JWBL', 'VIRTUAL ASSISTANT', 'Late acknowledement of email sent by the POC', 'VIRTUAL ASSISTANT'),
(457, 'JWBL', 'VIRTUAL ASSISTANT', 'Failed to ask clairifications ', 'VIRTUAL ASSISTANT'),
(458, 'JWBL', 'VIRTUAL ASSISTANT', 'Failure to send email regarding completion of the task', 'VIRTUAL ASSISTANT'),
(459, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'Failure to check email from esther.lindenproducts@gmail.com/Amazon-Customer-Service', 'CUSTOMER SERVICE REPRESENTATIVE'),
(460, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'Delayed email sent to the client', 'CUSTOMER SERVICE REPRESENTATIVE'),
(461, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'Late response to the customers emails', 'CUSTOMER SERVICE REPRESENTATIVE'),
(462, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'Failed to verify the tracking for \"order not received\"', 'CUSTOMER SERVICE REPRESENTATIVE'),
(463, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Incorrect date', 'DAILY DROPSHIPS UPDATE'),
(464, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Incorrect charge amount', 'DAILY DROPSHIPS UPDATE'),
(465, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Incorrect expected charge amount', 'DAILY DROPSHIPS UPDATE');
INSERT INTO `qan_failure_mode` (`id`, `account`, `process`, `failure_mode`, `sub_process`) VALUES
(466, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Incorrect Shipping cost', 'DAILY DROPSHIPS UPDATE'),
(467, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Incorrect tracking number', 'DAILY DROPSHIPS UPDATE'),
(468, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Incorrect Order Number', 'DAILY DROPSHIPS UPDATE'),
(469, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Incorrect Sale Price', 'DAILY DROPSHIPS UPDATE'),
(470, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Incorrect Fee', 'DAILY DROPSHIPS UPDATE'),
(471, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Incorrect Profit', 'DAILY DROPSHIPS UPDATE'),
(472, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Failure to send email regarding completion of the task', 'DAILY DROPSHIPS UPDATE'),
(473, 'JWBL', 'KEYWORD SEARCHING', 'Incorrect position type (sponsored or organic)', 'KEYWORD SEARCHING'),
(474, 'JWBL', 'KEYWORD SEARCHING', 'Incorrect title', 'KEYWORD SEARCHING'),
(475, 'JWBL', 'KEYWORD SEARCHING', 'Incorrect number of reviews', 'KEYWORD SEARCHING'),
(476, 'JWBL', 'KEYWORD SEARCHING', 'Incorrect Brand (for items that was tagged yes by Sam)', 'KEYWORD SEARCHING'),
(477, 'JWBL', 'KEYWORD SEARCHING', 'Incorrect ASIN (for items that was tagged yes by Sam)', 'KEYWORD SEARCHING'),
(478, 'JWBL', 'KEYWORD SEARCHING', 'Incorrect price (for items that was tagged yes by Sam)', 'KEYWORD SEARCHING'),
(479, 'JWBL', 'KEYWORD SEARCHING', 'Incorrect FBA fee (for items that was tagged yes by Sam)', 'KEYWORD SEARCHING'),
(480, 'JWBL', 'KEYWORD SEARCHING', 'Incorrect review rating (for items that was tagged yes by Sam)', 'KEYWORD SEARCHING'),
(481, 'JWBL', 'KEYWORD SEARCHING', 'Incorrect Date First Available (for items that was tagged yes by Sam)', 'KEYWORD SEARCHING'),
(482, 'JWBL', 'KEYWORD SEARCHING', 'Incorrect Negative Review Points', 'KEYWORD SEARCHING'),
(483, 'JWBL', 'PO CREATOR', 'Incorrect name', 'PO CREATOR'),
(484, 'JWBL', 'PO CREATOR', 'Incorrect shipping address', 'PO CREATOR'),
(485, 'JWBL', 'PO CREATOR', 'Incorrect City/State', 'PO CREATOR'),
(486, 'JWBL', 'PO CREATOR', 'Incorrect Zip Code', 'PO CREATOR'),
(487, 'JWBL', 'UPS SHIPPING', 'Incorrect address', 'UPS SHIPPING'),
(488, 'JWBL', 'UPS SHIPPING', 'Incorrect name/company', 'UPS SHIPPING'),
(489, 'JWBL', 'UPS SHIPPING', 'Incorrect phone number', 'UPS SHIPPING'),
(490, 'JWBL', 'UPS SHIPPING', 'Incorrect weight of package', 'UPS SHIPPING'),
(491, 'JWBL', 'UPS SHIPPING', 'Incorrect dimension of the package', 'UPS SHIPPING'),
(492, 'JWBL', 'UPS SHIPPING', 'Incorrect reference#', 'UPS SHIPPING'),
(493, 'JWBL', 'UPS SHIPPING', 'Incorrect method of payment', 'UPS SHIPPING'),
(494, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)', 'Incorrect tagging(Minor)', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)'),
(495, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)', 'Failure to like or comment on a post', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)'),
(496, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)', 'Irrelevant comments', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)'),
(497, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)', 'commented or liked post on accounts that are not linked with the Power Users account', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)'),
(498, 'Edison', 'DATA ENTRY', 'File status not updated (Major)', 'DATA ENTRY'),
(499, 'Edison', 'DATA ENTRY', 'Incorrect primary office(Minor)', 'DATA ENTRY'),
(500, 'Edison', 'DATA ENTRY', 'Incorrect demographics(Minor)', 'DATA ENTRY'),
(501, 'Edison', 'DATA ENTRY', 'Incorrect information on employment type(Major)', 'DATA ENTRY'),
(502, 'Edison', 'DATA ENTRY', 'Incorrect emergency contact information(Minor)', 'DATA ENTRY'),
(503, 'Edison', 'DATA ENTRY', 'Incorrect caregiver preferences information(Major)', 'DATA ENTRY'),
(504, 'Edison', 'DATA ENTRY', 'Incorrect medical lab report (Major)', 'DATA ENTRY'),
(505, 'Edison', 'DATA ENTRY', 'Incorrect phone mobile number (entered in home phone number)', 'DATA ENTRY'),
(506, 'Edison', 'DATA ENTRY', 'Incorrect SSN (Major)', 'DATA ENTRY'),
(507, 'Edison', 'EMAIL HANDLING', 'Team Lead was not copied to the email', 'EMAIL HANDLING'),
(508, 'Edison', 'EMAIL HANDLING', 'Incorrect spelling', 'EMAIL HANDLING'),
(509, 'Edison', 'EMAIL HANDLING', 'Improper grammar', 'EMAIL HANDLING'),
(510, 'Edison', 'EMAIL HANDLING', 'Subject was not addressed to the receiver.', 'EMAIL HANDLING'),
(511, 'Sthetix', 'QUOTATION', 'Incorrect box measurement(Major)', 'QUOTATION'),
(512, 'Sthetix', 'QUOTATION', 'Incorrect duty cost(Major)', 'QUOTATION'),
(513, 'Sthetix', 'QUOTATION', 'Incorrect quote amount(Major)', 'QUOTATION'),
(514, 'Sthetix', 'QUOTATION', 'Incorrect quantity(Major)', 'QUOTATION'),
(515, 'Sthetix', 'QUOTATION', 'Incorrect HTS code(Major)', 'QUOTATION'),
(516, 'Sthetix', 'QUOTATION', 'Missed emails(Major)', 'QUOTATION'),
(517, 'Sthetix', 'STOCKS TRACKING', 'Incorrect shipment date(Major)', 'STOCKS TRACKING'),
(518, 'Sthetix', 'STOCKS TRACKING', 'Incorrect shipment status(Major)', 'STOCKS TRACKING'),
(519, 'Sthetix', 'STOCKS LISTING', 'Incorrect update of SKU(Major)', 'STOCKS LISTING'),
(520, 'Sthetix', 'STOCKS LISTING', 'Incorrect update of stocks quantity(Major)', 'STOCKS LISTING'),
(521, 'Sthetix', 'STOCKS LISTING', 'Incorrect update of ELC(Major)', 'STOCKS LISTING'),
(522, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Incorrect templates', 'EMAIL HANDLING'),
(523, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Incorrect grammar', 'EMAIL HANDLING'),
(524, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Incorrect spelling', 'EMAIL HANDLING'),
(525, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Misrouted emails', 'EMAIL HANDLING'),
(526, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Incorrect order number', 'ORDER PLACEMENTS AND REPLACEMENT'),
(527, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Incorrect item number', 'ORDER PLACEMENTS AND REPLACEMENT'),
(528, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Incorrect quantity', 'ORDER PLACEMENTS AND REPLACEMENT'),
(529, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Incorrect price', 'ORDER PLACEMENTS AND REPLACEMENT'),
(530, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Incorrect shipping option', 'ORDER PLACEMENTS AND REPLACEMENT'),
(531, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Incorrect fulfillment order ', 'ORDER PLACEMENTS AND REPLACEMENT'),
(532, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Incorrect HS Conversation Number in RMA Number Field', 'RETURN AND REFUND'),
(533, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Incorrect quantity ', 'RETURN AND REFUND'),
(534, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Incorrect label', 'RETURN AND REFUND'),
(535, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Incorrect email template', 'RETURN AND REFUND'),
(536, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Misrouted email', 'RETURN AND REFUND'),
(537, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 'Missed review', 'REVIEWS 1-2-3 STAR RATING'),
(538, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 'Failure to comment in a 3 star or below review', 'REVIEWS 1-2-3 STAR RATING'),
(539, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 'Failure to make a comment that would give incentive ti the buyer so that they will actually reach out to us ', 'REVIEWS 1-2-3 STAR RATING'),
(540, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 'Incorrect username used in Amazon. Sould be “RB – Seller” or [insert your first & Surname Initials] followed by “- Seller”', 'REVIEWS 1-2-3 STAR RATING'),
(541, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 'Shipping products, parts or replacements outside of the 48 contigious states of the US', 'WORLDWIDE GLOBAL SHIPPING'),
(542, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 'Failure to reply to customer inquiries in Amazon and Ebay', 'WORLDWIDE GLOBAL SHIPPING'),
(543, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 'Sending Amazon buyer to Ebay or vice versa', 'WORLDWIDE GLOBAL SHIPPING'),
(544, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 'Non conveying the terms of agreement with Ebay to the buyer', 'WORLDWIDE GLOBAL SHIPPING'),
(545, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Answering claims OUTSIDE of these three reasons: Never received (no signature required), Product condition and Customer service request unanswered', 'A-Z CLAIMS'),
(546, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Failed to reach out to reach out to the buyer to offer refund, replace etc', 'A-Z CLAIMS'),
(547, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Failure to offer discount coupon for future purchase', 'A-Z CLAIMS'),
(548, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Failure to answer A-Z claim in Amazon right away', 'A-Z CLAIMS'),
(549, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Failure to send an appeal to Amazon', 'A-Z CLAIMS'),
(550, 'Dime Trading (Nesstoy)', 'ADDRESS CHANGE ORDER CANCELLATION', 'Failure to process cancelation of order in Seller Central and GoFlow', 'ADDRESS CHANGE ORDER CANCELLATION'),
(551, 'Dime Trading (Nesstoy)', 'ADDRESS CHANGE ORDER CANCELLATION', 'Processing cancelation in Amazon with the reason of change address.', 'ADDRESS CHANGE ORDER CANCELLATION'),
(552, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 'Failure to communicate to the buyer and ask the to check with their neighbor', 'NEVER RECEIVED GOODS'),
(553, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 'Failure to offer 50% discount for product shipped with \"signature required\" if the package was not found', 'NEVER RECEIVED GOODS'),
(554, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 'Incorrect tagging in the Help Scout', 'NEVER RECEIVED GOODS'),
(555, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 'Failed to offer replacement or refund for lost package that was shipped \"without signature required\"', 'NEVER RECEIVED GOODS'),
(556, 'Five Star Staffing', 'RECRUITMENT', 'Incorrect shift date', 'RECRUITMENT'),
(557, 'Five Star Staffing', 'RECRUITMENT', 'Incorrect facility', 'RECRUITMENT'),
(558, 'Five Star Staffing', 'RECRUITMENT', 'Incorrect agency', 'RECRUITMENT'),
(559, 'Five Star Staffing', 'RECRUITMENT', 'Incorrect staff name', 'RECRUITMENT'),
(560, 'Five Star Staffing', 'RECRUITMENT', 'Incorrect position', 'RECRUITMENT'),
(561, 'Five Star Staffing', 'RECRUITMENT', 'Incorrect mobile number', 'RECRUITMENT'),
(562, 'Five Star Staffing', 'RECRUITMENT', 'Incorrect confirmation status', 'RECRUITMENT'),
(563, 'Five Star Staffing', 'STAFFING', 'Incorrect grammar', 'STAFFING'),
(564, 'Five Star Staffing', 'STAFFING', 'Incorrect spelling', 'STAFFING'),
(565, 'Five Star Staffing', 'STAFFING', 'Incorrect facility', 'STAFFING'),
(566, 'Anchor Home Health Care Services', 'RECRUITMENT TASK', '- Incorrect tagging of available staff in SMARTSHEET', 'RECRUITMENT TASK'),
(567, 'Anchor Home Health Care Services', 'RECRUITMENT TASK', '- Incorrect notes on tracker', 'RECRUITMENT TASK'),
(568, 'Anchor Home Health Care Services', 'EMAIL HANDLING', '- Sent email with incorrect information to the applicant.', 'EMAIL HANDLING'),
(569, 'Anchor Home Health Care Services', 'EMAIL HANDLING', '- Sent email with incorrect schedule date of the applicant to the client.', 'EMAIL HANDLING'),
(570, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Incorrect fields in MongoTEL PBX Tool', 'ACCOUNT ACTIVATION'),
(571, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Incorrect status on Reseller tab.', 'ACCOUNT ACTIVATION'),
(572, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Incorrect  Time Zone.', 'ACCOUNT ACTIVATION'),
(573, 'MongoTEL', 'ACCOUNT ACTIVATION', 'The description is not set to customer\'s name.', 'ACCOUNT ACTIVATION'),
(574, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Incorrect Default External Caller ID', 'ACCOUNT ACTIVATION'),
(575, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Incorrect E911 Caller ID', 'ACCOUNT ACTIVATION'),
(576, 'MongoTEL', 'ACCOUNT ACTIVATION', 'No mailbox.', 'ACCOUNT ACTIVATION'),
(577, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Disabled voicemail.', 'ACCOUNT ACTIVATION'),
(578, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Route setted-up with no extension number yet.', 'ACCOUNT ACTIVATION'),
(579, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Incorrect prefix', 'ACCOUNT ACTIVATION'),
(580, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Incorrect ticket details.', 'ACCOUNT ACTIVATION'),
(583, 'BONAFIDE HEALTHCARE', 'UTILIZATION OF PORTAL', 'Overdue VOB', 'UTILIZATION OF PORTAL'),
(584, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Incorrect information in the \"Payer\" tab.', 'VERIFICATION OF BENEFITS'),
(585, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Incorrect information in the \"Policy Holder\" tab.', 'VERIFICATION OF BENEFITS'),
(586, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Incorrect box ticked on the \"Benefits\" tab', 'VERIFICATION OF BENEFITS'),
(587, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Incorrect information in the Coverage Breakdown tab', 'VERIFICATION OF BENEFITS'),
(588, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Incomplete benefit details', 'VERIFICATION OF BENEFITS'),
(589, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Incorrect information on the Policy Notes', 'VERIFICATION OF BENEFITS'),
(590, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Incorrect details in tracker', 'VERIFICATION OF BENEFITS'),
(591, 'Bonafide Healthcare', 'DOWNLOADING PATIENTS INSURANCE BENEFITS IN PDF FILE', 'PDF cannot be found after downloading', 'DOWNLOADING PATIENTS INSURANCE BENEFITS IN PDF FILE'),
(592, 'Bonafide Healthcare', 'EMAILING BENEFITS SUMMARY', 'Benefits summary delayed for an hour', 'EMAILING BENEFITS SUMMARY'),
(593, 'Bonafide Healthcare', 'EMAILING BENEFITS SUMMARY', 'Incorrect information on summary of benefits sent to the POC', 'EMAILING BENEFITS SUMMARY'),
(594, 'Bonafide Healthcare', 'EMAILING BENEFITS SUMMARY', 'Incorrect template', 'EMAILING BENEFITS SUMMARY');

-- --------------------------------------------------------

--
-- Table structure for table `qan_function`
--

CREATE TABLE `qan_function` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `process` varchar(1028) DEFAULT NULL,
  `function` longtext DEFAULT NULL,
  `sub_process` varchar(1028) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qan_function`
--

INSERT INTO `qan_function` (`id`, `account`, `process`, `function`, `sub_process`) VALUES
(1, 'Medex', 'Eligibility and Benefits', '-Verifying on regular and Medicaid patients with appointment through insurance portals', 'Eligibility and Benefits'),
(2, 'Medex', 'Eligibility and Benefits', '-Addressing walk-in patients', 'Eligibility and Benefits'),
(3, 'Medex', 'Eligibility and Benefits', '-Outbound calls to Insurance carriers.', 'Eligibility and Benefits'),
(4, 'Medex', 'Eligibility and Benefits', '-Making notes on Dr. Chrono of the infortmations obtained.', 'Eligibility and Benefits'),
(5, 'Medex', 'Eligibility and Benefits', '-Sending emails to POC/client for inquiries and requested information.', 'EMAIL HANDLING'),
(6, 'Medex', 'Billing', '-Creating accounts for new patients on Medics.', 'Billing'),
(7, 'Medex', 'Billing', '-Entering CPT codes  for corresponding dates of services on Medics.', 'Billing'),
(8, 'Medex', 'Billing', '-Checking of insurance eligibility on portals.', 'Billing'),
(9, 'Medex', 'Billing', '-Checking of Medicare deductibles.', 'Billing'),
(10, 'Medex', 'Billing', '-Sending emails to POC/client for inquiries and requested information.', 'EMAIL HANDLING'),
(11, 'YK Group', 'CONVERTING PDF FILES TO GOOGLE SHEETS', 'From PDF format, we need to convert these files to Google sheets for us to create tables based from the data provided', 'CONVERTING PDF FILES TO GOOGLE SHEETS'),
(12, 'YK Group', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS', 'Extract data from PDF floor plans and create chart listings from Take-Offs', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS'),
(13, 'YK Group', 'ADDING FORMULAS IN GOOGLE SHEET', 'Add formulas to Google Sheets to allow interaction with numbers. This is to allow our clients to easily audit and create reports for they data.', 'ADDING FORMULAS IN GOOGLE SHEET'),
(14, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 'Tracking of work hours of the employees and checking for updates', 'TIME AND ATTENDANCE PAYROLL'),
(15, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'Forwarding the payment to the CSR for processing, changing the status in Verona and uploading payment receipt', 'PAYMENT AND SAVE PAYMENT'),
(16, 'Marks & Spencer', 'RENEWAL', 'Editing the policy info and status of Renewed policies', 'RENEWAL'),
(17, 'Marks & Spencer', 'REINSTATEMENT', 'Editing the policy info and status of Reinstated policies', 'REINSTATEMENT'),
(18, 'Marks & Spencer', 'CANCELLATION NOTICE', 'Editing the status of cancellation and emailing the insured for the cancellation notice', 'CANCELLATION NOTICE'),
(19, 'Marks & Spencer', 'MONITORING', 'Check daily on Excel File list of overdue policies and policies that are about to due  ', 'MONITORING'),
(20, 'Marks & Spencer', 'MONITORING', 'For overdue policies, call or email the insured to remind payment', 'MONITORING'),
(21, 'Marks & Spencer', 'MONITORING', 'If policy is about to due, email Notice of Cancellation to the insured to remind payment.', 'MONITORING'),
(22, 'Twin Med', 'Data Research', 'Providing the needed information in the given items and filling out the attributes', 'Data Research'),
(23, 'White Gloves Consultancy', 'ELIGIBILITY', 'Checking the members Medicaid eligibility if Active, Inactive or Reinstated', 'ELIGIBILITY'),
(24, 'White Gloves Consultancy', 'Listing of Active/Inactive ', 'Filtering of Inactive and Active Medicaid and saving it to the designated folders', 'Listing of Active/Inactive '),
(25, 'UHA', 'REPRICING', 'Each service line items should be repriced correctly and shows allowable amount for In Network providers and separate those that are Out of Network.', 'REPRICING'),
(26, 'MBH Services', 'Authorizations', 'Calling Insurance carriers to get Authorization number for the procedure', 'Authorizations'),
(27, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'Downloading Timesheets and from Catalyst and updating the Smartsheet', 'Appeals/ CRM/ Catalyst DL'),
(28, 'MBH Services', 'Timesheet', 'Entering timesheet details in Smartsheet', 'Timesheet'),
(29, 'MBH Services', 'Reimbursement', 'Calling insurance carriers for information on unpaid claims and have it sent back for reprocess', 'Reimbursement'),
(30, 'Total Plan Concept', 'Extraction', 'Downloading of timesheets from GHI tool', 'Extraction'),
(31, 'Total Plan Concept', 'Extraction', 'Extracting of insurance forms from Team Leader and POC\'s email.', 'Extraction'),
(32, 'Total Plan Concept', 'BILLING', 'Claims Submission', 'BILLING'),
(33, 'Total Plan Concept', 'PRICING', 'Checking the allowable amount for the service provided', 'PRICING'),
(34, 'Total Plan Concept', 'RESUBMISSION', 'Resubmission of denied claims', 'RESUBMISSION'),
(35, 'Total Plan Concept', 'RESUBMISSION', 'Resubmission of claims with previous error', 'RESUBMISSION'),
(36, 'Tiger Companies', 'INVOICING', 'Creating invoice for accounts payable', 'INVOICING'),
(37, 'Tiger Companies', 'INVOICING', 'Creating invoices for accounts receivable', 'INVOICING'),
(38, 'Tiger Companies', 'CREDIT MEMO', 'Updating ACCTIVATE for credit memo status', 'CREDIT MEMO'),
(39, 'Tiger Companies', 'EMAIL HANDLING', 'Sending emails to the manufacturers for return, replace and refund process.', 'EMAIL HANDLING'),
(40, 'Tiger Companies', 'EMAIL HANDLING', 'Sending emails to the customer\'s inquiries and follow ups', 'EMAIL HANDLING'),
(41, 'Grandview', 'DIRECT BILL TRANSACTIONS', 'Direct billing for New Business, Renewal, Endorsement, Cancellation, Audit and Rewrite', 'DIRECT BILL TRANSACTIONS'),
(42, 'Grandview', 'CREATING DOCUMENTS', 'Creating documents for certificate of insurance, renewals and evidence of property.', 'CREATING DOCUMENTS'),
(43, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Entering new policies and accounts in epic', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(44, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Attaching files', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(45, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Issuing policy', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(46, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'No attachments', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(47, 'Reside New York', 'MARKETING PLAN REVIEW', '- Checking the errors of attachments for marketing plan', 'MARKETING PLAN REVIEW'),
(48, 'Reside New York', 'MARKETING PLAN REVIEW', '-Updating/Editing the attachments with correct information.', 'MARKETING PLAN REVIEW'),
(49, 'Reside New York', 'CLOSING DOCUMENTS', 'Counter checking of the reports from the Reside NY POCs.', 'CLOSING DOCUMENTS'),
(50, 'Reside New York', 'RENT ROLL', 'Authenticating the numbers and information on rent roll', 'RENT ROLL'),
(51, 'Reside New York', 'WEBSITE LISTING', 'Updating the Reside NY website', 'WEBSITE LISTING'),
(52, 'Reside New York', 'CALCULATION DATA', '\"Calculation Data task computes the Annual Income of a household applying for\n the Affordable Housing\"', 'CALCULATION DATA'),
(53, 'Renah Appliance Repair', 'BILLING', 'Billing the customers for the parts and services rendered', 'BILLING'),
(54, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Updating the service status on the system for backlogs', 'UPDATING SERVICE STATUS'),
(55, 'Renah Appliance Repair', 'CHECKING OF CLAIMS', 'Agent will have to check in a day or 2 if the claims if the transmitted job was approved, rejected or incomplete.', 'CHECKING OF CLAIMS'),
(56, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Issuing invoices/ paid receipts requested by banks, mortgagee, loan companies and/or clients. ', 'CLIENT INVOICE / PAID RECEIPT'),
(57, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Processing billing statements', 'CLIENT INVOICE / PAID RECEIPT'),
(58, 'Evergreen', 'EMAIL HANDLING', 'Respondin to emails sent by account executives and insurance carriers', 'EMAIL HANDLING'),
(59, 'Evergreen', 'PROCESSING DOCUMENTS', 'Creating and sending documents requested by insurance carriers.', 'PROCESSING DOCUMENTS'),
(60, 'Evergreen', 'FINANCED POLICY', 'Enter/Update the Master Policy and email fax to the account executives.', 'FINANCED POLICY'),
(61, 'Evergreen', 'POLICY REVIEW', 'Entering/updating policies and coverages in Mater Policy', 'POLICY REVIEW'),
(62, 'Dynalink', 'CREATING BROADBAND QUOTES', 'AT&T quoting ', 'CREATING BROADBAND QUOTES'),
(63, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Windstream Quoting Portal', 'CREATING BROADBAND QUOTES'),
(64, 'Dynalink', 'CREATE CABLE QUOTES', 'Cablevision Quoting Portal', 'CREATE CABLE QUOTES'),
(65, 'Dynalink', 'CREATE CABLE QUOTES', 'Windstream Quoting Portal', 'CREATE CABLE QUOTES'),
(66, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Earthlink Quoting Portal', 'CREATE T1 DATA QUOTES'),
(67, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Level3 Quoting Portal', 'CREATE T1 DATA QUOTES'),
(68, 'Dynalink', 'CREATE T1 DATA QUOTES', 'XO Quoting Portal', 'CREATE T1 DATA QUOTES'),
(69, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Checking with Telepacific for Service Availability', 'CREATE T1 DATA QUOTES'),
(70, 'Dynalink', 'CREATE T1 DATA QUOTES', 'AT&T Quoting Portal', 'CREATE T1 DATA QUOTES'),
(71, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Verizon Quoting Portal', 'CREATE T1 DATA QUOTES'),
(72, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Windstream Quoting Portal', 'CREATE T1 DATA QUOTES'),
(73, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Centurylink Quoting Portal', 'CREATE T1 DATA QUOTES'),
(74, 'Dynalink', 'CREATE DSL QUOTES', 'GTT Quoting Portal', 'CREATE DSL QUOTES'),
(75, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Earthlink Quoting Porta', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(76, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Broadview Quoting Portal', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(77, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Check Telepacific for Serviceability', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(78, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'XO Quoting Portal', 'CREATE ETHERNET OVER COPPER QUOTES'),
(79, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'GTT Quoting Portal', 'CREATE ETHERNET OVER COPPER QUOTES'),
(80, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Check Telepacific for Serviceability', 'CREATE ETHERNET OVER COPPER QUOTES'),
(81, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'XO Quoting Portal', 'CREATE ETHERNET OVER FIBER QUOTES'),
(82, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Windstream Quoting Portal', 'CREATE ETHERNET OVER FIBER QUOTES'),
(83, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'AT&T Quoting Portal', 'CREATE ETHERNET OVER FIBER QUOTES'),
(84, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Verizon Quoting Portal', 'CREATE ETHERNET OVER FIBER QUOTES'),
(85, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Level3 Quoting Portal', 'CREATE ETHERNET OVER FIBER QUOTES'),
(86, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'GTT Quoting Portal', 'CREATE ETHERNET OVER FIBER QUOTES'),
(87, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Centurylink Quoting Portal', 'CREATE ETHERNET OVER FIBER QUOTES'),
(88, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Checking Telepacific for Serviceability', 'CREATE ETHERNET OVER FIBER QUOTES'),
(89, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Checking Frontier for Serviceability', 'CREATE ETHERNET OVER FIBER QUOTES'),
(90, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Checking LCE(Verizon) for Serviceability', 'CREATE ETHERNET OVER FIBER QUOTES'),
(91, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Checking NANO for Serviceability', 'CREATE ETHERNET OVER FIBER QUOTES'),
(92, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Checking TITAN for Serviceability', 'CREATE ETHERNET OVER FIBER QUOTES'),
(93, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Checking BRAVO for Serviceability', 'CREATE ETHERNET OVER FIBER QUOTES'),
(94, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Checking TRIUMPH for Serviceability', 'CREATE ETHERNET OVER FIBER QUOTES'),
(95, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Verizon Quoting Portal', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(96, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Frontier Quoting Portal', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(97, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Check AT&T for Serviceability', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(98, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Check Earthlink for Serviceability', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(99, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Verizon Quoting Portal', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(100, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Broadview Quoting Portal', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(101, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Check Telepacific for Serviceability', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(102, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Create Primary Rate Interface (PRI) Quotes', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(103, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Broadview Quoting Portal', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(104, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Check Windstream for Serviceability', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(105, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Verizon Quoting Portal', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(106, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Downloading file attachments in EPIC', 'DOWNLOADING AND SENDING DOCUMENTS'),
(107, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Processing and creating files and certificates requested by insurance carriers and policy holders.', 'DOWNLOADING AND SENDING DOCUMENTS'),
(108, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Sending emails with attached documents requested by the requestor.', 'DOWNLOADING AND SENDING DOCUMENTS'),
(109, 'Fidella', 'UPDATING EPIC', 'Adding and updating accounts in EPIC', 'UPDATING EPIC'),
(110, 'Fidella', 'UPDATING EPIC', 'Issuing policies in EPIC', 'UPDATING EPIC'),
(111, 'S&F Supplies', 'QUICK SHIPMENT', 'used to shipped multiple orders.', 'used to shipped multiple orders.'),
(112, 'S&F Supplies', 'Applying Payment', 'Cash Receipts', 'Cash Receipts'),
(113, 'S&F Supplies', 'Applying Payment', 'Check Payments', 'Check Payments'),
(114, 'S&F Supplies', 'Applying Payment', 'For Credit Card Payments', 'For Credit Card Payments'),
(115, 'S&F Supplies', 'Applying Payment', 'Bounce Check', 'Bounce Check'),
(116, 'S&F Supplies', 'Applying Payment', 'Apply Credit/Deposit', 'Apply Credit/Deposit'),
(117, 'S&F Supplies', 'Collections', '\"Emails from Credit Manager to process collection/ reminder for payment/ call for reminder\n1st reminder - \n2nd credit hold 1 - (2 days)\n3rd inform that the account is on credit hold \"', '\"Emails from Credit Manager to process collection/ reminder for payment/ call for reminder\n1st reminder - \n2nd credit hold 1 - (2 days)\n3rd inform that the account is on credit hold \"'),
(118, 'S&F Supplies', 'Collections', 'Driver Calls/ Customer Calls', 'Driver Calls/ Customer Calls'),
(119, 'S&F Supplies', 'Collections', 'Outbound Calls', 'Outbound Calls'),
(120, 'S&F Supplies', 'Driver Calls', 'Processing Payment/ COD', 'Processing Payment/ COD'),
(121, 'S&F Supplies', 'Driver Calls', 'Informing the customer that the order will arrive.', 'Informing the customer that the order will arrive.'),
(122, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Customer Identification Validation ', 'Customer Identification Validation '),
(123, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Renaming File/Renaming error scans to correct  SO# or driver sheet #.', 'Renaming File/Renaming error scans to correct  SO# or driver sheet #.'),
(124, 'S&F Supplies', 'AGING TRACKER', 'Unpaid COD monitoring Every Monday', 'Unpaid COD monitoring Every Monday'),
(125, 'S&F Supplies', 'TRACKING UNSHIPPED PACKED ORDERS', 'Every Wed and Friday, 13 days unshipped orders must be shipped if already paid', 'Every Wed and Friday, 13 days unshipped orders must be shipped if already paid'),
(126, 'S&F Supplies', 'Tracker For Payment for credit card process', 'Monitoring of the processed payment. These are the things that can be monitored by this tracker', 'Monitoring of the processed payment. These are the things that can be monitored by this tracker'),
(127, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Coverage', 'FACILITY COORDINATOR'),
(128, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Cancelation of Shift', 'FACILITY COORDINATOR'),
(129, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Acknowledgement of Incident Report', 'FACILITY COORDINATOR'),
(130, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Email Handling', 'FACILITY COORDINATOR'),
(131, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Cancellation of Shift', 'STAFF COORDINATOR'),
(132, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Checking Schedule', 'STAFF COORDINATOR'),
(133, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Checking Availity of Shift', 'STAFF COORDINATOR'),
(134, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Payroll Issue', 'STAFF COORDINATOR'),
(135, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Attendance', 'STAFF COORDINATOR'),
(136, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Email Handling', 'STAFF COORDINATOR'),
(137, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Gathering of Data in UNFI', 'UNFI, AMAZON AND EBAY LISTING'),
(138, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Entering details in SellerCloud', 'UNFI, AMAZON AND EBAY LISTING'),
(139, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Managing Shadows', 'UNFI, AMAZON AND EBAY LISTING'),
(140, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'SKU with Suffix', 'UNFI, AMAZON AND EBAY LISTING'),
(141, 'CICADA ENTERPRISE INC', 'CREATING BOX INFO', 'Updating box info in the Sellercloud', 'CREATING BOX INFO'),
(142, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Creating Invoice and purchase order', ' INVOICING/PURCHASE ORDER'),
(143, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Filling up the spreadsheet information before making a listing in Amazon UK', 'COLLECTING ASIN INFO (New update task)'),
(144, 'CICADA ENTERPRISE INC', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"', 'Filling up the spreadsheet with the quantity remaining from the merchant', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"'),
(145, 'JWBL', 'VIRTUAL ASSISTANT', 'Perform various administrative duties assigned by the POC', 'VIRTUAL ASSISTANT'),
(146, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', '\"Checking emails from esther.lindenproducts@gmail.com/Amazon-Customer-Service\nand tracking the order status \"\"not received\"\" and  informing Sam about customer\'s concerns and replying to customer\'s emails as per Sam\'s advise\"', 'CUSTOMER SERVICE REPRESENTATIVE'),
(147, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'Updating of the Daily Dropships Sheet every morning', 'DAILY DROPSHIPS UPDATE'),
(148, 'JWBL', 'KEYWORD SEARCHING', 'Gathering data for the provided Keywords.', 'KEYWORD SEARCHING'),
(149, 'JWBL', 'PO CREATOR', 'Downloading PO and tranfferring it to the excel file for Shipping Label Task', 'PO CREATOR'),
(150, 'JWBL', 'UPS SHIPPING', 'Creating UPS Shipping Labels', 'UPS SHIPPING'),
(151, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)', 'Ensure that all added and chosen reviewers have been screened and checked under client\'s eligibility requirements', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)'),
(152, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)', 'If a product lacked opt-ins and eligibile reviewers, create a suggested list and clients will make a decision in assigning', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)'),
(153, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)', 'All member data should be updated and collected', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)'),
(154, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)', 'Liking and making comments on 10 posts in the Power Users account or its followers per day', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)'),
(155, 'Edison', 'DATA ENTRY', 'Processing the application of healthcare aides or caregivers.', 'DATA ENTRY'),
(156, 'Edison', 'EMAIL HANDLING', 'Sending emails to the POC', 'EMAIL HANDLING'),
(157, 'Sthetix', 'QUOTATION', 'Requesting quotations for shipping and sending it to the client.', 'QUOTATION'),
(158, 'Sthetix', 'STOCKS TRACKING', 'Tracking shipments from UPS and DHL', 'STOCKS TRACKING'),
(159, 'Sthetix', 'STOCKS LISTING', 'Keeping tabs on all the stocks and updating it whenever necessary', 'STOCKS LISTING'),
(160, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Addressing emails from various request and inquiries using HelpScout. ', 'EMAIL HANDLING'),
(161, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Responding to product inquiry', 'EMAIL HANDLING'),
(162, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Responding to troubleshooting', 'EMAIL HANDLING'),
(163, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Responding to follow up', 'EMAIL HANDLING'),
(164, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Processing orders', 'ORDER PLACEMENTS AND REPLACEMENT'),
(165, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Processing replacements', 'ORDER PLACEMENTS AND REPLACEMENT'),
(166, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Processing refunds', 'RETURN AND REFUND'),
(167, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Processing returns', 'RETURN AND REFUND'),
(168, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Processing return back through pre-paid UPS Label', 'RETURN AND REFUND'),
(169, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Manage Seller Fulfilled Returns', 'RETURN AND REFUND'),
(170, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Order cancellations', 'RETURN AND REFUND'),
(171, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 'Keeping track of negative reviews', 'REVIEWS 1-2-3 STAR RATING'),
(172, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 'Commenting on negative reviews and give assurance to the buyer that we will do something about the complan', 'REVIEWS 1-2-3 STAR RATING'),
(173, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 'Shipping the products worldwide following the terms of agreement with Amzon and Ebay ', 'WORLDWIDE GLOBAL SHIPPING'),
(174, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Answering A-Z claims in Amazon', 'A-Z CLAIMS'),
(175, 'Dime Trading (Nesstoy)', 'ADDRESS CHANGE ORDER CANCELLATION', 'Cancel the order via Seller Central AND Goflow', 'ADDRESS CHANGE ORDER CANCELLATION'),
(176, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 'Handling of lost packages ', 'NEVER RECEIVED GOODS'),
(177, 'Five Star Staffing', 'RECRUITMENT', 'Logging of calls and texts ', 'RECRUITMENT'),
(178, 'Five Star Staffing', 'STAFFING', 'Email handling', 'STAFFING'),
(179, 'Anchor Home Health Care Services', 'RECRUITMENT TASK', 'Updating the information in SmartSheet', 'RECRUITMENT TASK'),
(180, 'Anchor Home Health Care Services', 'RECRUITMENT TASK', 'Updating information on Anchor_Tracker', 'RECRUITMENT TASK'),
(181, 'Anchor Home Health Care Services', 'EMAIL HANDLING', 'Sending emails to applicants to confirm their appointment.', 'EMAIL HANDLING'),
(182, 'Anchor Home Health Care Services', 'EMAIL HANDLING', 'Sending email to clients for confirmed applicants.', 'EMAIL HANDLING'),
(183, 'Anchor Home Health Care Services', 'EMAIL HANDLING', 'Improper grammar and incorrect spelling.', 'EMAIL HANDLING'),
(185, 'BONAFIDE HEALTHCARE', 'UTILIZATION OF PORTAL', 'Keeping an eye if there will be a VOB that will appear on portal.', 'UTILIZATION OF PORTAL'),
(186, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Verifying insurance eligibility and benefits and logging the details in the tracker', 'VERIFICATION OF BENEFITS'),
(187, 'Bonafide Healthcare', 'DOWNLOADING PATIENTS INSURANCE BENEFITS IN PDF FILE', 'Downloading benefit  in PDF file and uploading it in Sharepoint', 'DOWNLOADING PATIENTS INSURANCE BENEFITS IN PDF FILE'),
(188, 'Bonafide Healthcare', 'EMAILING BENEFITS SUMMARY', 'Emailing the summary of the benefits that was gathered back to the POC.', 'EMAILING BENEFITS SUMMARY');

-- --------------------------------------------------------

--
-- Table structure for table `qan_numbers`
--

CREATE TABLE `qan_numbers` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `process` varchar(1028) DEFAULT NULL,
  `severity` int(11) DEFAULT NULL,
  `occurence` int(11) DEFAULT NULL,
  `detection` int(11) DEFAULT NULL,
  `rpn` int(11) DEFAULT NULL,
  `sub_process` varchar(1028) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qan_numbers`
--

INSERT INTO `qan_numbers` (`id`, `account`, `process`, `severity`, `occurence`, `detection`, `rpn`, `sub_process`) VALUES
(1, 'Medex', 'Eligibility and Benefits', 5, 3, 4, 60, 'Eligibility and Benefits'),
(2, 'Medex', 'Eligibility and Benefits', 4, 2, 6, 48, 'EMAIL HANDLING'),
(3, 'Medex', 'Billing', 4, 6, 4, 96, 'Billing'),
(4, 'Medex', 'Billing', 4, 2, 6, 48, 'EMAIL HANDLING'),
(5, 'YK Group', 'CONVERTING PDF FILES TO GOOGLE SHEETS', 2, 2, 6, 24, 'CONVERTING PDF FILES TO GOOGLE SHEETS'),
(6, 'YK Group', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS', 6, 4, 3, 72, 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS'),
(7, 'YK Group', 'ADDING FORMULAS IN GOOGLE SHEET', 5, 3, 6, 90, 'ADDING FORMULAS IN GOOGLE SHEET'),
(8, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 5, 2, 6, 60, 'TIME AND ATTENDANCE PAYROLL'),
(9, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 6, 3, 6, 108, 'PAYMENT AND SAVE PAYMENT'),
(10, 'Marks & Spencer', 'RENEWAL', 2, 3, 6, 36, 'RENEWAL'),
(11, 'Marks & Spencer', 'REINSTATEMENT', 3, 3, 6, 54, 'REINSTATEMENT'),
(12, 'Marks & Spencer', 'CANCELLATION NOTICE', 4, 3, 6, 72, 'CANCELLATION NOTICE'),
(13, 'Marks & Spencer', 'MONITORING', 5, 3, 6, 90, 'MONITORING'),
(14, 'Twin Med', 'Data Research', 5, 4, 6, 120, 'Data Research'),
(15, 'White Gloves Consultancy', 'ELIGIBILITY', 4, 3, 6, 72, 'ELIGIBILITY'),
(16, 'White Gloves Consultancy', 'Listing of Active/Inactive ', 3, 2, 6, 36, 'Listing of Active/Inactive '),
(17, 'UHA', 'REPRICING', 5, 5, 6, 150, 'REPRICING'),
(18, 'MBH Services', 'Authorizations', 1, 2, 6, 12, 'Authorizations'),
(19, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 2, 3, 6, 36, 'Appeals/ CRM/ Catalyst DL'),
(20, 'MBH Services', 'Timesheet', 3, 1, 3, 6, 'Timesheet'),
(21, 'MBH Services', 'Reimbursement', 4, 4, 6, 96, 'Reimbursement'),
(22, 'Total Plan Concept', 'Extraction', 6, 4, 4, 96, 'Extraction'),
(23, 'Total Plan Concept', 'BILLING', 3, 6, 6, 108, 'BILLING'),
(24, 'Total Plan Concept', 'PRICING', 5, 3, 6, 90, 'PRICING'),
(25, 'Total Plan Concept', 'RESUBMISSION', 2, 2, 4, 16, 'RESUBMISSION'),
(26, 'Tiger Companies', 'INVOICING', 3, 5, 5, 75, 'INVOICING'),
(27, 'Tiger Companies', 'CREDIT MEMO', 2, 2, 5, 20, 'CREDIT MEMO'),
(28, 'Tiger Companies', 'EMAIL HANDLING', 2, 3, 5, 30, 'EMAIL HANDLING'),
(29, 'Exchange and Connectel', 'REPAIR TICKETING', 4, 5, 6, 120, 'REPAIR TICKETING'),
(30, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 3, 4, 3, 36, 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(31, 'Exchange and Connectel', 'BILLING/COLLECTIONS', 5, 2, 6, 60, 'BILLING/COLLECTIONS'),
(32, 'Exchange and Connectel', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP', 2, 3, 6, 36, 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP'),
(33, 'Grandview', 'DIRECT BILL TRANSACTIONS', 4, 2, 4, 32, 'DIRECT BILL TRANSACTIONS'),
(34, 'Grandview', 'CREATING DOCUMENTS', 5, 4, 4, 80, 'CREATING DOCUMENTS'),
(35, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 2, 3, 4, 24, 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(36, 'Reside New York', 'MARKETING PLAN REVIEW', 6, 2, 4, 48, 'MARKETING PLAN REVIEW'),
(37, 'Reside New York', 'CLOSING DOCUMENTS', 2, 2, 5, 20, 'CLOSING DOCUMENTS'),
(38, 'Reside New York', 'RENT ROLL', 3, 2, 5, 30, 'RENT ROLL'),
(39, 'Reside New York', 'WEBSITE LISTING', 4, 3, 5, 60, 'WEBSITE LISTING'),
(40, 'Reside New York', 'CALCULATION DATA', 5, 4, 6, 120, 'CALCULATION DATA'),
(41, 'Renah Appliance Repair', 'BILLING', 3, 2, 6, 36, 'BILLING'),
(42, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 2, 2, 6, 24, 'UPDATING SERVICE STATUS'),
(43, 'Renah Appliance Repair', 'CHECKING OF CLAIMS', 2, 3, 6, 36, 'CHECKING OF CLAIMS'),
(44, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 3, 1, 3, 9, 'CLIENT INVOICE / PAID RECEIPT'),
(45, 'Evergreen', 'EMAIL HANDLING', 1, 4, 3, 12, 'EMAIL HANDLING'),
(46, 'Evergreen', 'PROCESSING DOCUMENTS', 6, 5, 3, 90, 'PROCESSING DOCUMENTS'),
(47, 'Evergreen', 'FINANCED POLICY', 2, 2, 3, 12, 'FINANCED POLICY'),
(48, 'Evergreen', 'POLICY REVIEW', 5, 3, 3, 45, 'POLICY REVIEW'),
(49, 'Dynalink', 'CREATING BROADBAND QUOTES', 5, 4, 6, 120, 'CREATING BROADBAND QUOTES'),
(50, 'Dynalink', 'CREATE CABLE QUOTES', 5, 4, 6, 120, 'CREATE CABLE QUOTES'),
(51, 'Dynalink', 'CREATE T1 DATA QUOTES', 5, 4, 6, 120, 'CREATE T1 DATA QUOTES'),
(52, 'Dynalink', 'CREATE DSL QUOTES', 5, 4, 6, 120, 'CREATE DSL QUOTES'),
(53, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 5, 4, 6, 120, 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(54, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 5, 4, 6, 120, 'CREATE ETHERNET OVER COPPER QUOTES'),
(55, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 5, 4, 6, 120, 'CREATE ETHERNET OVER FIBER QUOTES'),
(56, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 5, 4, 6, 120, 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(57, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 5, 4, 6, 120, 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(58, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 4, 3, 4, 48, 'DOWNLOADING AND SENDING DOCUMENTS'),
(59, 'Fidella', 'UPDATING EPIC', 2, 3, 4, 24, 'UPDATING EPIC'),
(60, 'S&F Supplies', 'QUICK SHIPMENT', 5, 2, 2, 20, 'used to shipped multiple orders.'),
(61, 'S&F Supplies', 'Applying Payment', 6, 4, 6, 144, 'Cash Receipts'),
(62, 'S&F Supplies', 'Applying Payment', 6, 2, 6, 72, 'Check Payments'),
(63, 'S&F Supplies', 'Applying Payment', 6, 6, 6, 216, 'For Credit Card Payments'),
(64, 'S&F Supplies', 'Applying Payment', 6, 2, 6, 72, 'Bounce Check'),
(65, 'S&F Supplies', 'Applying Payment', 3, 3, 6, 54, 'Apply Credit/Deposit'),
(66, 'S&F Supplies', 'Collections', 5, 4, 6, 120, '\"Emails from Credit Manager to process collection/ reminder for payment/ call for reminder\n1st reminder - \n2nd credit hold 1 - (2 days)\n3rd inform that the account is on credit hold \"'),
(67, 'S&F Supplies', 'Collections', 5, 4, 2, 40, 'Driver Calls/ Customer Calls'),
(68, 'S&F Supplies', 'Collections', 6, 4, 3, 72, 'Outbound Calls'),
(69, 'S&F Supplies', 'Driver Calls', 6, 5, 3, 90, 'Processing Payment/ COD'),
(70, 'S&F Supplies', 'Driver Calls', 6, 5, 6, 180, 'Informing the customer that the order will arrive.'),
(71, 'S&F Supplies', 'Data Entry (AD HOC Task)', 2, 4, 6, 48, 'Customer Identification Validation '),
(72, 'S&F Supplies', 'Data Entry (AD HOC Task)', 2, 6, 6, 72, 'Renaming File/Renaming error scans to correct  SO# or driver sheet #.'),
(73, 'S&F Supplies', 'AGING TRACKER', 3, 2, 6, 36, 'Unpaid COD monitoring Every Monday'),
(74, 'S&F Supplies', 'TRACKING UNSHIPPED PACKED ORDERS', 4, 2, 6, 48, 'Every Wed and Friday, 13 days unshipped orders must be shipped if already paid'),
(75, 'S&F Supplies', 'Tracker For Payment for credit card process', 2, 3, 2, 36, 'Monitoring of the processed payment. These are the things that can be monitored by this tracker'),
(76, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 5, 4, 6, 120, 'FACILITY COORDINATOR'),
(77, 'Fivestar Coordinator', 'STAFF COORDINATOR', 5, 4, 6, 120, 'STAFF COORDINATOR'),
(78, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 4, 5, 6, 120, 'UNFI, AMAZON AND EBAY LISTING'),
(79, 'CICADA ENTERPRISE INC', 'CREATING BOX INFO', 3, 2, 6, 36, 'CREATING BOX INFO'),
(80, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 2, 3, 6, 36, ' INVOICING/PURCHASE ORDER'),
(81, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 3, 2, 6, 36, 'COLLECTING ASIN INFO (New update task)'),
(82, 'CICADA ENTERPRISE INC', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"', 4, 2, 6, 48, '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"'),
(83, 'JWBL', 'VIRTUAL ASSISTANT', 2, 2, 3, 12, 'VIRTUAL ASSISTANT'),
(84, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 2, 1, 3, 6, 'CUSTOMER SERVICE REPRESENTATIVE'),
(85, 'JWBL', 'DAILY DROPSHIPS UPDATE', 5, 5, 6, 150, 'DAILY DROPSHIPS UPDATE'),
(86, 'JWBL', 'KEYWORD SEARCHING', 5, 4, 6, 120, 'KEYWORD SEARCHING'),
(87, 'JWBL', 'PO CREATOR', 5, 5, 6, 150, 'PO CREATOR'),
(88, 'JWBL', 'UPS SHIPPING', 6, 5, 2, 60, 'UPS SHIPPING'),
(89, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)', 2, 2, 4, 16, 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)'),
(90, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)', 2, 2, 3, 12, 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)'),
(91, 'Edison', 'DATA ENTRY', 4, 3, 6, 72, 'DATA ENTRY'),
(92, 'Edison', 'EMAIL HANDLING', 2, 4, 6, 48, 'EMAIL HANDLING'),
(93, 'Sthetix', 'QUOTATION', 6, 4, 6, 144, 'QUOTATION'),
(94, 'Sthetix', 'STOCKS TRACKING', 2, 2, 6, 24, 'STOCKS TRACKING'),
(95, 'Sthetix', 'STOCKS LISTING', 4, 3, 6, 72, 'STOCKS LISTING'),
(96, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 3, 5, 6, 90, 'EMAIL HANDLING'),
(97, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 6, 4, 6, 144, 'ORDER PLACEMENTS AND REPLACEMENT'),
(98, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 4, 2, 6, 48, 'RETURN AND REFUND'),
(99, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 2, 3, 6, 36, 'REVIEWS 1-2-3 STAR RATING'),
(100, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 4, 3, 6, 72, 'WORLDWIDE GLOBAL SHIPPING'),
(101, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 5, 2, 6, 60, 'A-Z CLAIMS'),
(102, 'Dime Trading (Nesstoy)', 'ADDRESS CHANGE ORDER CANCELLATION', 3, 2, 6, 36, 'ADDRESS CHANGE ORDER CANCELLATION'),
(103, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 5, 3, 6, 90, 'NEVER RECEIVED GOODS'),
(104, 'Five Star Staffing', 'RECRUITMENT', 2, 3, 5, 30, 'RECRUITMENT'),
(105, 'Five Star Staffing', 'STAFFING', 3, 3, 5, 45, 'STAFFING'),
(106, 'Anchor Home Health Care Services', 'RECRUITMENT TASK', 3, 4, 6, 72, 'RECRUITMENT TASK'),
(107, 'Anchor Home Health Care Services', 'EMAIL HANDLING', 2, 6, 6, 72, 'EMAIL HANDLING'),
(108, 'MongoTEL', 'ACCOUNT ACTIVATION', 4, 3, 6, 72, 'ACCOUNT ACTIVATION'),
(110, 'BONAFIDE HEALTHCARE', 'UTILIZATION OF PORTAL', 4, 3, 6, 72, 'UTILIZATION OF PORTAL'),
(111, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 6, 5, 6, 180, 'VERIFICATION OF BENEFITS'),
(112, 'Bonafide Healthcare', 'DOWNLOADING PATIENTS INSURANCE BENEFITS IN PDF FILE', 2, 2, 6, 24, 'DOWNLOADING PATIENTS INSURANCE BENEFITS IN PDF FILE'),
(113, 'Bonafide Healthcare', 'EMAILING BENEFITS SUMMARY', 6, 4, 6, 144, 'EMAILING BENEFITS SUMMARY');

-- --------------------------------------------------------

--
-- Table structure for table `qan_potential_cause_of_failure`
--

CREATE TABLE `qan_potential_cause_of_failure` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `process` varchar(1028) DEFAULT NULL,
  `potential_cause_of_failure` longtext DEFAULT NULL,
  `sub_process` varchar(1028) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qan_potential_cause_of_failure`
--

INSERT INTO `qan_potential_cause_of_failure` (`id`, `account`, `process`, `potential_cause_of_failure`, `sub_process`) VALUES
(1, 'Medex', 'Eligibility and Benefits', 'Agent entered the wrong insurance benefits in Dr. Chrono.', 'Eligibility and Benefits'),
(2, 'Medex', 'Eligibility and Benefits', 'Agent failed to determine the primary insurance.', 'Eligibility and Benefits'),
(3, 'Medex', 'Eligibility and Benefits', 'Agent flagged inactive insurance as active.', 'Eligibility and Benefits'),
(4, 'Medex', 'Eligibility and Benefits', 'The agent did not check the Outlook for walk-ins.', 'Eligibility and Benefits'),
(5, 'Medex', 'Eligibility and Benefits', 'The agent did not get the ref# for the call.', 'Eligibility and Benefits'),
(6, 'Medex', 'Eligibility and Benefits', 'The agent did not reply promptly on the email of the POC', 'Eligibility and Benefits'),
(7, 'Medex', 'Eligibility and Benefits', 'The agent sent email with mispelled words', 'EMAIL HANDLING'),
(8, 'Medex', 'Eligibility and Benefits', 'The agent sent email with improper grammar', 'EMAIL HANDLING'),
(9, 'Medex', 'Eligibility and Benefits', 'The agent sent email to the wrong person', 'EMAIL HANDLING'),
(10, 'Medex', 'Eligibility and Benefits', 'The agent did not check the inbox regularly.', 'EMAIL HANDLING'),
(11, 'Medex', 'Eligibility and Benefits', 'The agent failed to address the subject', 'EMAIL HANDLING'),
(12, 'Medex', 'Billing', 'Agent entered incorrect patient\'s demographics.', 'Billing'),
(13, 'Medex', 'Billing', 'Agent failed to determine the correct insurance payer.', 'Billing'),
(14, 'Medex', 'Billing', 'Agent entered wrong CPT codes. ', 'Billing'),
(15, 'Medex', 'Billing', 'Agent entered wrong date of service.', 'Billing'),
(16, 'Medex', 'Billing', 'Agent entered wrong diagnosis codes', 'Billing'),
(17, 'Medex', 'Billing', 'Agent entered the wrong location.', 'Billing'),
(18, 'Medex', 'Billing', 'Agent entered wrong provider', 'Billing'),
(19, 'Medex', 'Billing', 'Agent failed to finish the weekly tasks on or before Thursday. ', 'Billing'),
(20, 'Medex', 'Billing', 'Agent did not send email to POC for clarification.', 'Billing'),
(21, 'Medex', 'Billing', 'The agent did not check the email from POCs', 'Billing'),
(22, 'Medex', 'Billing', 'The agent sent email with mispelled words', 'EMAIL HANDLING'),
(23, 'Medex', 'Billing', 'The agent sent email with improper grammar', 'EMAIL HANDLING'),
(24, 'Medex', 'Billing', 'The agent sent email to the wrong person', 'EMAIL HANDLING'),
(25, 'Medex', 'Billing', 'The agent did not check the inbox regularly.', 'EMAIL HANDLING'),
(26, 'Medex', 'Billing', 'The agent failed to address the subject', 'EMAIL HANDLING'),
(27, 'YK Group', 'CONVERTING PDF FILES TO GOOGLE SHEETS', 'The agent did not follow the converting procedure reslting to an error', 'CONVERTING PDF FILES TO GOOGLE SHEETS'),
(28, 'YK Group', 'CONVERTING PDF FILES TO GOOGLE SHEETS', 'The agent incorrectly created the table format on Google sheet', 'CONVERTING PDF FILES TO GOOGLE SHEETS'),
(29, 'YK Group', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS', 'The agent incorrectly entered incorrect unit numbers', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS'),
(30, 'YK Group', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS', 'The agent incorrectly entered incorrect square footage', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS'),
(31, 'YK Group', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS', 'The agent entered incorrect bedroom count', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS'),
(32, 'YK Group', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS', 'The agent failed to duplicate the chart listing from the given pdf file', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS'),
(33, 'YK Group', 'ADDING FORMULAS IN GOOGLE SHEET', 'The agent created an incorrect formula ', 'ADDING FORMULAS IN GOOGLE SHEET'),
(34, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 'The agent used an invalid name of the facility in searching for timesheets', 'TIME AND ATTENDANCE PAYROLL'),
(35, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 'The agent failed to check updates on the Dashboard', 'TIME AND ATTENDANCE PAYROLL'),
(36, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 'The agent did not validate the scheduled shift', 'TIME AND ATTENDANCE PAYROLL'),
(37, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 'The agent entered incorrect time', 'TIME AND ATTENDANCE PAYROLL'),
(38, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'The agent copied credit card details', 'PAYMENT AND SAVE PAYMENT'),
(39, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'The agent renamed the pdf file incorrectly', 'PAYMENT AND SAVE PAYMENT'),
(40, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'The agent did not change the status to completed', 'PAYMENT AND SAVE PAYMENT'),
(41, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'The agent did not add comment \"insured paid\"', 'PAYMENT AND SAVE PAYMENT'),
(42, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'The agent failed to upload the receipt', 'PAYMENT AND SAVE PAYMENT'),
(43, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'The agent did not send email to the CSR that the payment was recorded.', 'PAYMENT AND SAVE PAYMENT'),
(44, 'Marks & Spencer', 'RENEWAL', 'The agent unable to pull up the account even the account already exists', 'RENEWAL'),
(45, 'Marks & Spencer', 'RENEWAL', 'The agent tagged the statis of the insurance incorrectly', 'RENEWAL'),
(46, 'Marks & Spencer', 'RENEWAL', 'The agent entered incorrect policy number', 'RENEWAL'),
(47, 'Marks & Spencer', 'RENEWAL', 'The agent entered incorrect effective and expiration date', 'RENEWAL'),
(48, 'Marks & Spencer', 'RENEWAL', 'The agent entered incorrect premium amount', 'RENEWAL'),
(49, 'Marks & Spencer', 'RENEWAL', 'The agent did not attach the policy Dec.', 'RENEWAL'),
(50, 'Marks & Spencer', 'REINSTATEMENT', 'The agent renamed the downloaded file incorrectly', 'REINSTATEMENT'),
(51, 'Marks & Spencer', 'REINSTATEMENT', 'The agent processed reinstatement with incorrect policy dates', 'REINSTATEMENT'),
(52, 'Marks & Spencer', 'REINSTATEMENT', 'The agent tagged the policy status incorrectly', 'REINSTATEMENT'),
(53, 'Marks & Spencer', 'REINSTATEMENT', 'The agent did not write a note in the comment section', 'REINSTATEMENT'),
(54, 'Marks & Spencer', 'REINSTATEMENT', 'The agent did not upload the policy Dec.', 'REINSTATEMENT'),
(55, 'Marks & Spencer', 'REINSTATEMENT', 'The agent did not click \"import\"', 'REINSTATEMENT'),
(56, 'Marks & Spencer', 'CANCELLATION NOTICE', 'The agent issued the policy even it is expired', 'CANCELLATION NOTICE'),
(57, 'Marks & Spencer', 'CANCELLATION NOTICE', 'The agent processed and emailed the cancellation notice without the CSR\'s instruction', 'CANCELLATION NOTICE'),
(58, 'Marks & Spencer', 'CANCELLATION NOTICE', 'The agent did not check and responded to email in a timely manner', 'CANCELLATION NOTICE'),
(59, 'Marks & Spencer', 'CANCELLATION NOTICE', 'The agent named the file incorrectly', 'CANCELLATION NOTICE'),
(60, 'Marks & Spencer', 'CANCELLATION NOTICE', 'The agent failed to pull the account even the account exixts', 'CANCELLATION NOTICE'),
(61, 'Marks & Spencer', 'CANCELLATION NOTICE', 'The agent entered incorrect insurance type', 'CANCELLATION NOTICE'),
(62, 'Marks & Spencer', 'CANCELLATION NOTICE', 'The agent entered incorrect effective and cancellation date', 'CANCELLATION NOTICE'),
(63, 'Marks & Spencer', 'CANCELLATION NOTICE', 'The agent tagged incorrectly in the insurance status', 'CANCELLATION NOTICE'),
(64, 'Marks & Spencer', 'CANCELLATION NOTICE', 'The agent failed to email the cancellation notice to the insured', 'CANCELLATION NOTICE'),
(65, 'Marks & Spencer', 'MONITORING', 'The agent did not call or email the insured for payment reminder', 'MONITORING'),
(66, 'Marks & Spencer', 'MONITORING', 'The agent did not send notice of cancellation to the insured when the policy is about to due', 'MONITORING'),
(67, 'Marks & Spencer', 'MONITORING', 'The agent did not inform the CSR for payment or cancellation', 'MONITORING'),
(68, 'Marks & Spencer', 'MONITORING', 'The agent did not update the status in Veruna', 'MONITORING'),
(69, 'Marks & Spencer', 'MONITORING', 'The agent did not send the cancellation notice to the insured for non payment', 'MONITORING'),
(70, 'Twin Med', 'Data Research', 'The agent used an incorrect MFR# for that particular product', 'Data Research'),
(71, 'Twin Med', 'Data Research', 'The agent entered incorrect UOM (it should be the UOM of the product itself, not the packaging)', 'Data Research'),
(72, 'Twin Med', 'Data Research', 'The agent entered incorrect Brand Name', 'Data Research'),
(73, 'Twin Med', 'Data Research', 'The agent entered incomplete or incorrect Key Features', 'Data Research'),
(74, 'Twin Med', 'Data Research', 'The agent entered incorrect or missed out the California Prop 65', 'Data Research'),
(75, 'Twin Med', 'Data Research', 'The agent entered incorrect color of the product', 'Data Research'),
(76, 'Twin Med', 'Data Research', 'The agent tagged incorrect or failed to distinguish if its Disposable', 'Data Research'),
(77, 'Twin Med', 'Data Research', 'The agent tagged incorrect or failed to distinguish if its Reusable', 'Data Research'),
(78, 'Twin Med', 'Data Research', 'The agent entered incorrect or missed out the HCPCS', 'Data Research'),
(79, 'Twin Med', 'Data Research', 'The agent entered incorrect gender', 'Data Research'),
(80, 'Twin Med', 'Data Research', 'The agent entered incorrect information in Hazardous attribute', 'Data Research'),
(81, 'Twin Med', 'Data Research', 'The agent entered incorrect or missed the NDC', 'Data Research'),
(82, 'Twin Med', 'Data Research', 'The agent entered incorrect Primary Item Material', 'Data Research'),
(83, 'Twin Med', 'Data Research', 'The agent entered incorrect Related SKUs', 'Data Research'),
(84, 'Twin Med', 'Data Research', 'The agent entered incorrect pr missed the Required Parts/Supplies', 'Data Research'),
(85, 'Twin Med', 'Data Research', 'The agent tagged incorrectly if the Rx is required', 'Data Research'),
(86, 'Twin Med', 'Data Research', 'The agent entered incorrect or missed SDS Sheet', 'Data Research'),
(87, 'Twin Med', 'Data Research', 'The agent entered incorrect Size of the item', 'Data Research'),
(88, 'Twin Med', 'Data Research', 'The agent entered or failed to determine if the item is sterile', 'Data Research'),
(89, 'Twin Med', 'Data Research', 'The agent entered incorrect Temp Requirements Range', 'Data Research'),
(90, 'Twin Med', 'Data Research', 'The agent entered incorrect or missed the UNSPSC', 'Data Research'),
(91, 'Twin Med', 'Data Research', 'The agent entered incorrect or missed the waranty information', 'Data Research'),
(92, 'Twin Med', 'Data Research', 'The agent tagged incorrectly if the item is liquid or not', 'Data Research'),
(93, 'Twin Med', 'Data Research', 'The agent incorrectly tagged the attributes using NONE instead of NA and other way around', 'Data Research'),
(94, 'White Gloves Consultancy', 'ELIGIBILITY', 'The agent got incorrect eligibility information from Epaces', 'ELIGIBILITY'),
(95, 'White Gloves Consultancy', 'ELIGIBILITY', 'The agent entered incorrect Medicaid Manage Plan', 'ELIGIBILITY'),
(96, 'White Gloves Consultancy', 'ELIGIBILITY', 'The agent entered incorrect date of coverage', 'ELIGIBILITY'),
(97, 'White Gloves Consultancy', 'ELIGIBILITY', 'The agent entered incorrect recert ', 'ELIGIBILITY'),
(98, 'White Gloves Consultancy', 'ELIGIBILITY', 'The agent highlighted incorrect color for inactive Medicaid(should be red)', 'ELIGIBILITY'),
(99, 'White Gloves Consultancy', 'ELIGIBILITY', 'The agent highlighted incorrect color for reinstated Medicaid(should be blue)', 'ELIGIBILITY'),
(100, 'White Gloves Consultancy', 'Listing of Active/Inactive ', 'The agent failed to separate the active and inactive Medicaid status.', 'Listing of Active/Inactive '),
(101, 'White Gloves Consultancy', 'Listing of Active/Inactive ', 'The agent saved the Inactive Medicaid file to Eli\'s folder (should be to the designated agency folder)', 'Listing of Active/Inactive '),
(102, 'White Gloves Consultancy', 'Listing of Active/Inactive ', 'The agent saved the Active Medicaid File to the agency folders. (should be Eli\'s folder)', 'Listing of Active/Inactive '),
(103, 'UHA', 'REPRICING', 'The agent selected incorrect Client Code', 'REPRICING'),
(104, 'UHA', 'REPRICING', 'The agent input incorrect date of service', 'REPRICING'),
(105, 'UHA', 'REPRICING', 'The agent input incorrect place of service', 'REPRICING'),
(106, 'UHA', 'REPRICING', 'The agent input incorrect CPT/HCPCS codes', 'REPRICING'),
(107, 'UHA', 'REPRICING', 'The agent input incorrect modifiers', 'REPRICING'),
(108, 'UHA', 'REPRICING', 'The agent input incorrect charges and days or units', 'REPRICING'),
(109, 'UHA', 'REPRICING', 'The agent input incorrect Insured ID #', 'REPRICING'),
(110, 'UHA', 'REPRICING', 'The agent input incorrect/mispelled Patient name', 'REPRICING'),
(111, 'UHA', 'REPRICING', 'The agent input incorrect date of birth', 'REPRICING'),
(112, 'UHA', 'REPRICING', 'The agent input incorrect gender', 'REPRICING'),
(113, 'UHA', 'REPRICING', 'The agent input incorrect Insured name', 'REPRICING'),
(114, 'UHA', 'REPRICING', 'The agent input incorrect Patient relation to insured', 'REPRICING'),
(115, 'UHA', 'REPRICING', 'The agent input incorrect Primary Diagnosis Codes', 'REPRICING'),
(116, 'UHA', 'REPRICING', 'The agent input incorrect Insured\'s Policy or Group ID#', 'REPRICING'),
(117, 'UHA', 'REPRICING', 'The agent input incorrect total charges', 'REPRICING'),
(118, 'UHA', 'REPRICING', 'The agent input incorrect Provider Tax ID', 'REPRICING'),
(119, 'UHA', 'REPRICING', 'The agent input incorrect provider name and rendering provider information', 'REPRICING'),
(120, 'UHA', 'REPRICING', 'The agent input incorrect service location', 'REPRICING'),
(121, 'UHA', 'REPRICING', 'The agent failed to ticked box used for billing provider (should be ticked if the Provider and Rendering Provider name and address are the same)', 'REPRICING'),
(122, 'UHA', 'REPRICING', 'The agent failed to checked claims (should be done everytime that the claim did not give the repricing back right away)', 'REPRICING'),
(123, 'UHA', 'REPRICING', 'The agent uploaded the claims to incorrect file folder (In-Network, Out of network, Missing information)', 'REPRICING'),
(124, 'UHA', 'REPRICING', 'The agent uploaded incorrect pdf format', 'REPRICING'),
(125, 'MBH Services', 'Authorizations', 'Agent entered Insurance ID incorrectly', 'Authorizations'),
(126, 'MBH Services', 'Authorizations', 'Agent entered Insurance carrier incorrectly', 'Authorizations'),
(127, 'MBH Services', 'Authorizations', 'Agent entered incorrect Auth#  ', 'Authorizations'),
(128, 'MBH Services', 'Authorizations', 'Agent entered incorrect Patient\'s demographics ', 'Authorizations'),
(129, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'Agent provided wrong patient info.', 'Appeals/ CRM/ Catalyst DL'),
(130, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'Agent did not double check the files before downloading', 'Appeals/ CRM/ Catalyst DL'),
(131, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'The agent did not follow instructions', 'Appeals/ CRM/ Catalyst DL'),
(132, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'The agent did not delete the lines that should be deleted in the PDF file', 'Appeals/ CRM/ Catalyst DL'),
(133, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'The agent Incorrectly renamed the PDF file', 'Appeals/ CRM/ Catalyst DL'),
(134, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'The agent incorrectly change the size of the column tab', 'Appeals/ CRM/ Catalyst DL'),
(135, 'MBH Services', 'Timesheet', 'Agent did not request for a clearer copy of document when the document is of poor quality.', 'Timesheet'),
(136, 'MBH Services', 'Timesheet', 'Agent entered incorrect place of service', 'Timesheet'),
(137, 'MBH Services', 'Timesheet', 'Agent entered incorrect date of service ', 'Timesheet'),
(138, 'MBH Services', 'Timesheet', 'Agent entered the wrong patient', 'Timesheet'),
(139, 'MBH Services', 'Timesheet', 'Agent entered the time incorrectly ', 'Timesheet'),
(140, 'MBH Services', 'Reimbursement', 'The agent did not get the Ref# of the call. ', 'Reimbursement'),
(141, 'MBH Services', 'Reimbursement', 'The agent did not get the name of the insurance rep', 'Reimbursement'),
(142, 'MBH Services', 'Reimbursement', 'The agent did not get the claim number from the rep.', 'Reimbursement'),
(143, 'MBH Services', 'Reimbursement', 'The agent failed to check if the check amount and paid amount matches.', 'Reimbursement'),
(144, 'Total Plan Concept', 'Extraction', 'Agent did not check if the claims were already done before downloading.', 'Extraction'),
(145, 'Total Plan Concept', 'Extraction', 'The agent did not check the email from Team Lead or POC for additional claims', 'Extraction'),
(146, 'Total Plan Concept', 'BILLING', 'Agent entered wrong type of service', 'BILLING'),
(147, 'Total Plan Concept', 'BILLING', 'Agent entered wrong place of service', 'BILLING'),
(148, 'Total Plan Concept', 'BILLING', 'Agent entered wrong number of units', 'BILLING'),
(149, 'Total Plan Concept', 'BILLING', 'Agent entered wrong date of service', 'BILLING'),
(150, 'Total Plan Concept', 'BILLING', 'Agent entered wrong CPT codes', 'BILLING'),
(151, 'Total Plan Concept', 'BILLING', 'Agent entered wrong diagnosis codes', 'BILLING'),
(152, 'Total Plan Concept', 'BILLING', 'Agent did not tag out of network doctors.', 'BILLING'),
(153, 'Total Plan Concept', 'PRICING', 'Agent entered the wrong allowable amount.', 'PRICING'),
(154, 'Total Plan Concept', 'RESUBMISSION', 'Agent entered wrong cpt codes', 'RESUBMISSION'),
(155, 'Total Plan Concept', 'RESUBMISSION', 'Agent entered wrong diagnosis', 'RESUBMISSION'),
(156, 'Total Plan Concept', 'RESUBMISSION', 'Agent entered wrong charge amount', 'RESUBMISSION'),
(157, 'Total Plan Concept', 'RESUBMISSION', 'Agent entered wrong allowed amount', 'RESUBMISSION'),
(158, 'Total Plan Concept', 'RESUBMISSION', 'Agent tagged the claim incorrectly', 'RESUBMISSION'),
(159, 'Tiger Companies', 'INVOICING', 'Agent entered incorrect amount.', 'INVOICING'),
(160, 'Tiger Companies', 'INVOICING', 'Agent entered incorrect generic account', 'INVOICING'),
(161, 'Tiger Companies', 'INVOICING', 'Agent entered incorrect shipping date', 'INVOICING'),
(162, 'Tiger Companies', 'INVOICING', 'Agent entered incorrect tracking number', 'INVOICING'),
(163, 'Tiger Companies', 'INVOICING', 'Agent entered incorrect quantity.', 'INVOICING'),
(164, 'Tiger Companies', 'INVOICING', 'Agent put incorrect noted in descrepancy folder', 'INVOICING'),
(165, 'Tiger Companies', 'CREDIT MEMO', 'Agent enterd incorrect PO', 'CREDIT MEMO'),
(166, 'Tiger Companies', 'CREDIT MEMO', 'Agent entered incorrect status', 'CREDIT MEMO'),
(167, 'Tiger Companies', 'CREDIT MEMO', 'Agent entered incorrect amount credited', 'CREDIT MEMO'),
(168, 'Tiger Companies', 'EMAIL HANDLING', 'Agent sent email with mispelled words', 'EMAIL HANDLING'),
(169, 'Tiger Companies', 'EMAIL HANDLING', 'Agent sent email with improper grammar', 'EMAIL HANDLING'),
(170, 'Tiger Companies', 'EMAIL HANDLING', 'Agent sent email to the wrong person', 'EMAIL HANDLING'),
(171, 'Tiger Companies', 'EMAIL HANDLING', 'The agent failed to address the email properly', 'EMAIL HANDLING'),
(172, 'Exchange and Connectel', 'REPAIR TICKETING', 'Agent entered incorrect notes', 'REPAIR TICKETING'),
(173, 'Exchange and Connectel', 'REPAIR TICKETING', 'Agent incorrectly tagged the ticket', 'REPAIR TICKETING'),
(174, 'Exchange and Connectel', 'REPAIR TICKETING', 'Creating another ticket even if there is an open pending ticket', 'REPAIR TICKETING'),
(175, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Agent not aware because he/she is busy doing something', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(176, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', '\"Agent did not check the phone line.\n\n\"', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(177, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'The agent did not give enough information needed by the customer.', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(178, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Agent did not do verification.', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(179, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'The agent did not follow the callflow', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(180, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Agent did not do visual audit.', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(181, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Agent has dead air for more than 10 seconds', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(182, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'Agent used unprefossional tone of voice.', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(183, 'Exchange and Connectel', 'BILLING/COLLECTIONS', 'Agent did not process customer\'s request to change billing method', 'BILLING/COLLECTIONS'),
(184, 'Exchange and Connectel', 'BILLING/COLLECTIONS', 'Agent entered incorrect  amount.', 'BILLING/COLLECTIONS'),
(185, 'Exchange and Connectel', 'BILLING/COLLECTIONS', 'Agent entered credit card/ check info', 'BILLING/COLLECTIONS'),
(186, 'Exchange and Connectel', 'BILLING/COLLECTIONS', 'Agent entered wrong mode of payment', 'BILLING/COLLECTIONS'),
(187, 'Exchange and Connectel', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP', 'Agent wrote incorrect notes', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP'),
(188, 'Exchange and Connectel', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP', 'Agent did not call for follow up', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP'),
(189, 'Exchange and Connectel', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP', 'Agent did not update the ticket status.', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP'),
(190, 'Grandview', 'DIRECT BILL TRANSACTIONS', 'Agent did not ask the POC for the dec.', 'DIRECT BILL TRANSACTIONS'),
(191, 'Grandview', 'DIRECT BILL TRANSACTIONS', 'Agent entered the wrong amount', 'DIRECT BILL TRANSACTIONS'),
(192, 'Grandview', 'DIRECT BILL TRANSACTIONS', 'Agent entered wrong commision rate', 'DIRECT BILL TRANSACTIONS'),
(193, 'Grandview', 'DIRECT BILL TRANSACTIONS', 'The agent did not ask the POC for commision rate', 'DIRECT BILL TRANSACTIONS'),
(194, 'Grandview', 'CREATING DOCUMENTS', 'The agent failed to edit the document', 'CREATING DOCUMENTS'),
(195, 'Grandview', 'CREATING DOCUMENTS', 'The agent entered wrong information on document', 'CREATING DOCUMENTS'),
(196, 'Grandview', 'CREATING DOCUMENTS', 'Agent missed an email from POC', 'CREATING DOCUMENTS'),
(197, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Agent entered wrong address', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(198, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Agent entered incorrect insurance policy', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(199, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Agent entered incorrect policy number', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(200, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Agent entered wrong insurance carrier', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(201, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Agent entered incorrect insurance policy holder', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(202, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'Agent did not attached documents downloaded from insurance carriers.', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(203, 'Reside New York', 'MARKETING PLAN REVIEW', 'The agent did not save the edited attachments', 'MARKETING PLAN REVIEW'),
(204, 'Reside New York', 'MARKETING PLAN REVIEW', 'The agent entered incorrect info while editing the attachments.', 'MARKETING PLAN REVIEW'),
(205, 'Reside New York', 'MARKETING PLAN REVIEW', 'The agent tagged the status of the marketing review in the checklist.', 'MARKETING PLAN REVIEW'),
(206, 'Reside New York', 'MARKETING PLAN REVIEW', 'The agent did not update the checklist.', 'MARKETING PLAN REVIEW'),
(207, 'Reside New York', 'MARKETING PLAN REVIEW', 'The agent missed or overlooked an attachment.', 'MARKETING PLAN REVIEW'),
(208, 'Reside New York', 'CLOSING DOCUMENTS', 'The agent entered the wrong figures.', 'CLOSING DOCUMENTS'),
(209, 'Reside New York', 'CLOSING DOCUMENTS', 'The agent tagged incorrectly', 'CLOSING DOCUMENTS'),
(210, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect PIS date', 'RENT ROLL'),
(211, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect project name', 'RENT ROLL'),
(212, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect bldg address', 'RENT ROLL'),
(213, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect unit #', 'RENT ROLL'),
(214, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect name of tenant', 'RENT ROLL'),
(215, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect household size', 'RENT ROLL'),
(216, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect annual income amount', 'RENT ROLL'),
(217, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect move-in date', 'RENT ROLL'),
(218, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect current lease - end date', 'RENT ROLL'),
(219, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect unit sq. ft.', 'RENT ROLL'),
(220, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect unit size, number of BR', 'RENT ROLL'),
(221, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect actual rent', 'RENT ROLL'),
(222, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect tenant share rent', 'RENT ROLL'),
(223, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect subsidy source', 'RENT ROLL'),
(224, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect race', 'RENT ROLL'),
(225, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect ethnicity', 'RENT ROLL'),
(226, 'Reside New York', 'RENT ROLL', 'The agent tagged for disability incorrectly', 'RENT ROLL'),
(227, 'Reside New York', 'RENT ROLL', 'The agent ticked incorrectly on utility box field', 'RENT ROLL'),
(228, 'Reside New York', 'RENT ROLL', 'The agent entered incorrect unit breakdown', 'RENT ROLL'),
(229, 'Reside New York', 'RENT ROLL', 'The agent entered info on wrong tabs', 'RENT ROLL'),
(230, 'Reside New York', 'WEBSITE LISTING', 'Agent entered incorrect property status.', 'WEBSITE LISTING'),
(231, 'Reside New York', 'WEBSITE LISTING', 'Agent entered incorrect property type.', 'WEBSITE LISTING'),
(232, 'Reside New York', 'WEBSITE LISTING', 'Agent entered incorrect info in Amenities.', 'WEBSITE LISTING'),
(233, 'Reside New York', 'WEBSITE LISTING', 'The agent failed to upload pictures in Gallery Images.', 'WEBSITE LISTING'),
(234, 'Reside New York', 'WEBSITE LISTING', 'Agent enetered incorrect description.', 'WEBSITE LISTING'),
(235, 'Reside New York', 'WEBSITE LISTING', 'Agent entered incorrect floor name.', 'WEBSITE LISTING'),
(236, 'Reside New York', 'WEBSITE LISTING', 'Agent entered incorrect floor price.', 'WEBSITE LISTING'),
(237, 'Reside New York', 'WEBSITE LISTING', 'Agent entered incorrect Price Post', 'WEBSITE LISTING'),
(238, 'Reside New York', 'WEBSITE LISTING', 'Agent entered incorrect number of bedrooms.', 'WEBSITE LISTING'),
(239, 'Reside New York', 'WEBSITE LISTING', 'Agent ticked the wrong box on Agent info.', 'WEBSITE LISTING'),
(240, 'Reside New York', 'WEBSITE LISTING', 'Agent entered incorrect wrong font color. (Should be 51ff51)', 'WEBSITE LISTING'),
(241, 'Reside New York', 'CALCULATION DATA', 'Agent entered Incorrect/Did not enter the Paystub amount', 'CALCULATION DATA'),
(242, 'Reside New York', 'CALCULATION DATA', 'Agent did not write a note for incomplete paystubs', 'CALCULATION DATA'),
(243, 'Reside New York', 'CALCULATION DATA', 'Agent entered Incorrect/Did not enter the Paystub sequence', 'CALCULATION DATA'),
(244, 'Reside New York', 'CALCULATION DATA', 'Agent entered gross pay', 'CALCULATION DATA'),
(245, 'Reside New York', 'CALCULATION DATA', 'Agent entered incorrect number of pay period', 'CALCULATION DATA'),
(246, 'Reside New York', 'CALCULATION DATA', 'Agent entered incorrect number of weeks that been paid', 'CALCULATION DATA'),
(247, 'Reside New York', 'CALCULATION DATA', 'Agent entered incorrect YTD', 'CALCULATION DATA'),
(248, 'Reside New York', 'CALCULATION DATA', 'Agent entered incorrect/Did not enter amount from Federal form 1040 line number 7', 'CALCULATION DATA'),
(249, 'Reside New York', 'CALCULATION DATA', 'Agent entered incorrect amount/Did not enter amount from W2 form BOX 1', 'CALCULATION DATA'),
(250, 'Reside New York', 'CALCULATION DATA', 'Agent entered Incorrect/Did not enter the amount under \"Other Income\"', 'CALCULATION DATA'),
(251, 'Reside New York', 'CALCULATION DATA', 'Agent entered Incorrect/Incomplete/Did not enter the amount under Assets (savings - most recent; checking - 6 consecutive)', 'CALCULATION DATA'),
(252, 'Reside New York', 'CALCULATION DATA', 'Agent entered Incorrect/Did not enter the amount under Public Assistance', 'CALCULATION DATA'),
(253, 'Renah Appliance Repair', 'BILLING', 'The agent entered incorrect date of repair', 'BILLING'),
(254, 'Renah Appliance Repair', 'BILLING', 'The agent entered incorrect number of visits', 'BILLING'),
(255, 'Renah Appliance Repair', 'BILLING', 'Agent entered incorrect name of technician', 'BILLING'),
(256, 'Renah Appliance Repair', 'BILLING', 'Agent entered incorrect invoice number', 'BILLING'),
(257, 'Renah Appliance Repair', 'BILLING', 'Agent entered incorrect service status', 'BILLING'),
(258, 'Renah Appliance Repair', 'BILLING', 'Agent entered incorrect date of invoice', 'BILLING'),
(259, 'Renah Appliance Repair', 'BILLING', 'Agent entered incorrect service schedule', 'BILLING'),
(260, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Agent entered incorrect notes', 'UPDATING SERVICE STATUS'),
(261, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Agent entered incorrect recheck date', 'UPDATING SERVICE STATUS'),
(262, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Agent entered incorrect completed date', 'UPDATING SERVICE STATUS'),
(263, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Agent entered incorrect order status', 'UPDATING SERVICE STATUS'),
(264, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'Agent entered incorrect warranty provider', 'UPDATING SERVICE STATUS'),
(265, 'Renah Appliance Repair', 'CHECKING OF CLAIMS', 'Agent failed to check the claims within 90 days', 'CHECKING OF CLAIMS'),
(266, 'Renah Appliance Repair', 'CHECKING OF CLAIMS', 'Agent entered incorrect notes', 'CHECKING OF CLAIMS'),
(267, 'Renah Appliance Repair', 'CHECKING OF CLAIMS', 'Agent missed putting notes in the system', 'CHECKING OF CLAIMS'),
(268, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Agent entered the wrong policy type.', 'CLIENT INVOICE / PAID RECEIPT'),
(269, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Agent entered the wrong policy number.', 'CLIENT INVOICE / PAID RECEIPT'),
(270, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Agent entered the wrong insurance company.', 'CLIENT INVOICE / PAID RECEIPT'),
(271, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Agent entered the wrong invoice amount.', 'CLIENT INVOICE / PAID RECEIPT'),
(272, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'Agent entered the wrong finance status', 'CLIENT INVOICE / PAID RECEIPT'),
(273, 'Evergreen', 'EMAIL HANDLING', 'Agent wrote incorrect keywords in the email', 'EMAIL HANDLING'),
(274, 'Evergreen', 'EMAIL HANDLING', 'Agent sent the email to the wrong recipient.', 'EMAIL HANDLING'),
(275, 'Evergreen', 'EMAIL HANDLING', 'Agent did not check the inbox.', 'EMAIL HANDLING'),
(276, 'Evergreen', 'EMAIL HANDLING', 'Agent failed to send an email confirmation to customers. ', 'EMAIL HANDLING'),
(277, 'Evergreen', 'EMAIL HANDLING', 'Agent did not copy the account executive in the email.', 'EMAIL HANDLING'),
(278, 'Evergreen', 'EMAIL HANDLING', 'Agent failed to attach document requested.', 'EMAIL HANDLING'),
(279, 'Evergreen', 'PROCESSING DOCUMENTS', 'Agent entered wrong insured name.', 'PROCESSING DOCUMENTS'),
(280, 'Evergreen', 'PROCESSING DOCUMENTS', 'Agent entered wrong location', 'PROCESSING DOCUMENTS'),
(281, 'Evergreen', 'PROCESSING DOCUMENTS', 'Agent entered incorrect insurance carrier.', 'PROCESSING DOCUMENTS'),
(282, 'Evergreen', 'PROCESSING DOCUMENTS', 'Agent entered incorrect policy number.', 'PROCESSING DOCUMENTS'),
(283, 'Evergreen', 'PROCESSING DOCUMENTS', 'Agent entered incorrect coverage dates.', 'PROCESSING DOCUMENTS'),
(284, 'Evergreen', 'PROCESSING DOCUMENTS', 'Agent entered incorrect policy type.', 'PROCESSING DOCUMENTS'),
(285, 'Evergreen', 'PROCESSING DOCUMENTS', 'Agent failed to attach documents.', 'PROCESSING DOCUMENTS'),
(286, 'Evergreen', 'FINANCED POLICY', 'Agent entered incorrect account number.', 'FINANCED POLICY'),
(287, 'Evergreen', 'FINANCED POLICY', 'Agent entered incorrect financial company.', 'FINANCED POLICY'),
(288, 'Evergreen', 'FINANCED POLICY', 'Agent entered incorrect amount financed.', 'FINANCED POLICY'),
(289, 'Evergreen', 'FINANCED POLICY', 'Agent entered incorrect amount installment.', 'FINANCED POLICY'),
(290, 'Evergreen', 'FINANCED POLICY', 'Agent entered incorrect number of installment.', 'FINANCED POLICY'),
(291, 'Evergreen', 'FINANCED POLICY', 'Agent entered incorrect installment dates.', 'FINANCED POLICY'),
(292, 'Evergreen', 'FINANCED POLICY', 'Agent entered incorrect annual % rate.', 'FINANCED POLICY'),
(293, 'Evergreen', 'POLICY REVIEW', 'Agent entered incorrect coverages.', 'POLICY REVIEW'),
(294, 'Evergreen', 'POLICY REVIEW', 'Agent entered incorrect policy number.', 'POLICY REVIEW'),
(295, 'Evergreen', 'POLICY REVIEW', 'Agent entered incorrect coverage dates.', 'POLICY REVIEW'),
(296, 'Evergreen', 'POLICY REVIEW', 'Agent entered incorrect Insurance carriers.', 'POLICY REVIEW'),
(297, 'Evergreen', 'POLICY REVIEW', 'Agent entered incorrect policy type.', 'POLICY REVIEW'),
(298, 'Evergreen', 'POLICY REVIEW', 'Agent entered incorrect premium.', 'POLICY REVIEW'),
(299, 'Evergreen', 'POLICY REVIEW', 'Agent entered incorrect policy type.', 'POLICY REVIEW'),
(300, 'Evergreen', 'POLICY REVIEW', 'Agent entered incorrect demographics in Master Policy', 'POLICY REVIEW'),
(301, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Agent entered incorrect applicants demographics', 'CREATING BROADBAND QUOTES'),
(302, 'Dynalink', 'CREATING BROADBAND QUOTES', 'agent entered incorrect download speed', 'CREATING BROADBAND QUOTES'),
(303, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Agent entered incorrect product', 'CREATING BROADBAND QUOTES'),
(304, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Agent entered incorrect ciruit type', 'CREATING BROADBAND QUOTES'),
(305, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Agent entered incorrect access type', 'CREATING BROADBAND QUOTES'),
(306, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Agent entered incorrect IPs', 'CREATING BROADBAND QUOTES'),
(307, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Agent entered incorrect term', 'CREATING BROADBAND QUOTES'),
(308, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Agent entered incorrect bandwidth', 'CREATING BROADBAND QUOTES'),
(309, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Agent provided incorrect quote ID', 'CREATING BROADBAND QUOTES'),
(310, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Agent provided incorrect MRC', 'CREATING BROADBAND QUOTES'),
(311, 'Dynalink', 'CREATING BROADBAND QUOTES', 'Agent provided incorrect NRC', 'CREATING BROADBAND QUOTES'),
(312, 'Dynalink', 'CREATE CABLE QUOTES', 'Agent entered incorrect applicants demographics', 'CREATE CABLE QUOTES'),
(313, 'Dynalink', 'CREATE CABLE QUOTES', 'Agent entered incorrect product', 'CREATE CABLE QUOTES'),
(314, 'Dynalink', 'CREATE CABLE QUOTES', 'Agent entered incorrect ciruit type', 'CREATE CABLE QUOTES'),
(315, 'Dynalink', 'CREATE CABLE QUOTES', 'Agent entered incorrect access type', 'CREATE CABLE QUOTES'),
(316, 'Dynalink', 'CREATE CABLE QUOTES', 'Agent entered incorrect IPs', 'CREATE CABLE QUOTES'),
(317, 'Dynalink', 'CREATE CABLE QUOTES', 'Agent entered incorrect term', 'CREATE CABLE QUOTES'),
(318, 'Dynalink', 'CREATE CABLE QUOTES', 'Agent entered incorrect bandwidth', 'CREATE CABLE QUOTES'),
(319, 'Dynalink', 'CREATE CABLE QUOTES', 'Agent provided incorrect quote ID', 'CREATE CABLE QUOTES'),
(320, 'Dynalink', 'CREATE CABLE QUOTES', 'Agent provided incorrect MRC', 'CREATE CABLE QUOTES'),
(321, 'Dynalink', 'CREATE CABLE QUOTES', 'Agent provided incorrect NRC', 'CREATE CABLE QUOTES'),
(322, 'Dynalink', 'CREATE CABLE QUOTES', 'Agent failed to send email regarding the service availability to the requestor', 'CREATE CABLE QUOTES'),
(323, 'Dynalink', 'CREATE CABLE QUOTES', 'Agent failed to attach the file for pricing in the email', 'CREATE CABLE QUOTES'),
(324, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect applicants demographics', 'CREATE T1 DATA QUOTES'),
(325, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect bandwidth', 'CREATE T1 DATA QUOTES'),
(326, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect product', 'CREATE T1 DATA QUOTES'),
(327, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent provided incorrect quote ID', 'CREATE T1 DATA QUOTES'),
(328, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect technology', 'CREATE T1 DATA QUOTES'),
(329, 'Dynalink', 'CREATE T1 DATA QUOTES', 'agent entered incorrect download speed', 'CREATE T1 DATA QUOTES'),
(330, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect location', 'CREATE T1 DATA QUOTES'),
(331, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect network product', 'CREATE T1 DATA QUOTES'),
(332, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect terms', 'CREATE T1 DATA QUOTES'),
(333, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect port type', 'CREATE T1 DATA QUOTES'),
(334, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect port speed', 'CREATE T1 DATA QUOTES'),
(335, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect access type', 'CREATE T1 DATA QUOTES'),
(336, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect access speed', 'CREATE T1 DATA QUOTES'),
(337, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect installation type', 'CREATE T1 DATA QUOTES'),
(338, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect circuit type', 'CREATE T1 DATA QUOTES'),
(339, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect IPs', 'CREATE T1 DATA QUOTES'),
(340, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect CPE provider', 'CREATE T1 DATA QUOTES'),
(341, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect connection type', 'CREATE T1 DATA QUOTES'),
(342, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent entered incorrect port billing type', 'CREATE T1 DATA QUOTES'),
(343, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent provided incorrect MRC', 'CREATE T1 DATA QUOTES'),
(344, 'Dynalink', 'CREATE T1 DATA QUOTES', 'Agent provided incorrect NRC', 'CREATE T1 DATA QUOTES'),
(345, 'Dynalink', 'CREATE DSL QUOTES', 'Agent entered incorrect applicants demographics', 'CREATE DSL QUOTES'),
(346, 'Dynalink', 'CREATE DSL QUOTES', 'Agent entered incorrect contract term', 'CREATE DSL QUOTES'),
(347, 'Dynalink', 'CREATE DSL QUOTES', 'agent entered incorrect MRC', 'CREATE DSL QUOTES'),
(348, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Agent entered incorrect quote type', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(349, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Agent entered incorrect terms', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(350, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'agent provided incorrect quote ID', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(351, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Agent provided incorrect MRC', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(352, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Agent provided incorrect NRC', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(353, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Agent entered incorrect NPANXX', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(354, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Agent entered incorrect demographics', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(355, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Agent entered incorrect product', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(356, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'Agent entered incorrect rate center provider', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(357, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Agent entered incorrect demographics', 'CREATE ETHERNET OVER COPPER QUOTES'),
(358, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Agent entered incorrect product', 'CREATE ETHERNET OVER COPPER QUOTES'),
(359, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Agent entered incorrect technology', 'CREATE ETHERNET OVER COPPER QUOTES'),
(360, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Agent entered incorrect speed', 'CREATE ETHERNET OVER COPPER QUOTES'),
(361, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Agent entered incorrect term', 'CREATE ETHERNET OVER COPPER QUOTES'),
(362, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Agent provided incorrect NRC', 'CREATE ETHERNET OVER COPPER QUOTES'),
(363, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Agent provided incorrect MRC', 'CREATE ETHERNET OVER COPPER QUOTES'),
(364, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'Agent provided incorrect quote ID', 'CREATE ETHERNET OVER COPPER QUOTES'),
(365, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect demographics', 'CREATE ETHERNET OVER FIBER QUOTES'),
(366, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect product', 'CREATE ETHERNET OVER FIBER QUOTES'),
(367, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect technology', 'CREATE ETHERNET OVER FIBER QUOTES'),
(368, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect speed', 'CREATE ETHERNET OVER FIBER QUOTES'),
(369, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent provided incorrect NRC', 'CREATE ETHERNET OVER FIBER QUOTES'),
(370, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent provided incorrect MRC', 'CREATE ETHERNET OVER FIBER QUOTES'),
(371, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent provided incorrect quote ID', 'CREATE ETHERNET OVER FIBER QUOTES'),
(372, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect CPE provider', 'CREATE ETHERNET OVER FIBER QUOTES'),
(373, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect bandwidth', 'CREATE ETHERNET OVER FIBER QUOTES'),
(374, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect terms', 'CREATE ETHERNET OVER FIBER QUOTES'),
(375, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect port type', 'CREATE ETHERNET OVER FIBER QUOTES'),
(376, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect port speed', 'CREATE ETHERNET OVER FIBER QUOTES'),
(377, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect access type', 'CREATE ETHERNET OVER FIBER QUOTES'),
(378, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect access speed', 'CREATE ETHERNET OVER FIBER QUOTES'),
(379, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect installation type', 'CREATE ETHERNET OVER FIBER QUOTES'),
(380, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect billing port type', 'CREATE ETHERNET OVER FIBER QUOTES'),
(381, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect connection type', 'CREATE ETHERNET OVER FIBER QUOTES'),
(382, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect loop speed', 'CREATE ETHERNET OVER FIBER QUOTES'),
(383, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'Agent entered incorrect CoS type', 'CREATE ETHERNET OVER FIBER QUOTES'),
(384, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Agent entered incorrect demographics', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(385, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Agent entered incorrect speed', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(386, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Agent entered incorrect location', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(387, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Agent entered incorrect module', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(388, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'Agent entered incorrect TXNUN', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(389, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Agent entered incorrect location', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(390, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Agent provided incorrect MRC', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(391, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Agent entered incorrect demographics', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(392, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Agent entered incorrect Lookup Type', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(393, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Agent ,entered incorrect terms', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(394, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Agent provided incorrect quote ID', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(395, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'Agent entered incorrect quote product', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(396, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Agent edited the file with wrong policy type', 'DOWNLOADING AND SENDING DOCUMENTS'),
(397, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Agent edited the file with incorrect insurance carrier', 'DOWNLOADING AND SENDING DOCUMENTS'),
(398, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Agent edited the file with incorrect location', 'DOWNLOADING AND SENDING DOCUMENTS'),
(399, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Agent edited the file with incorrect policy holder', 'DOWNLOADING AND SENDING DOCUMENTS'),
(400, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Agent missed an email requesting for a document', 'DOWNLOADING AND SENDING DOCUMENTS'),
(401, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Agent did not attach the document downloaded from the insurance carriers.', 'DOWNLOADING AND SENDING DOCUMENTS'),
(402, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'Agent send email to wrong requestor.', 'DOWNLOADING AND SENDING DOCUMENTS'),
(403, 'Fidella', 'UPDATING EPIC', 'Agent entered incorrect name', 'UPDATING EPIC'),
(404, 'Fidella', 'UPDATING EPIC', 'Agent entered incorrect location', 'UPDATING EPIC'),
(405, 'Fidella', 'UPDATING EPIC', 'Agent entered incorrect policy type', 'UPDATING EPIC'),
(406, 'Fidella', 'UPDATING EPIC', 'Agent entered incorrect policy number', 'UPDATING EPIC'),
(407, 'Fidella', 'UPDATING EPIC', 'Agent entered incorrect insurance carrier', 'UPDATING EPIC'),
(408, 'Fidella', 'UPDATING EPIC', 'Agent entered incorrect coverages', 'UPDATING EPIC'),
(409, 'Fidella', 'UPDATING EPIC', 'Agent entered incorrect date of coverage', 'UPDATING EPIC'),
(410, 'Fidella', 'UPDATING EPIC', 'Agent entered wrong insurance status', 'UPDATING EPIC'),
(411, 'Fidella', 'UPDATING EPIC', 'Agent did not attached document in EPIC', 'UPDATING EPIC'),
(412, 'S&F Supplies', 'QUICK SHIPMENT', 'Agent failed to input correct SO number', 'used to shipped multiple orders.'),
(413, 'S&F Supplies', 'QUICK SHIPMENT', 'Agent failed to check if SO has same poayment type and packed date.', 'used to shipped multiple orders.'),
(414, 'S&F Supplies', 'Applying Payment', 'Agent input incorrect customer information.', 'Cash Receipts'),
(415, 'S&F Supplies', 'Applying Payment', 'Agent selected incorrect payment method.', 'Check Payments'),
(416, 'S&F Supplies', 'Applying Payment', 'Agent entered incorrect check/ref number', 'Check Payments'),
(417, 'S&F Supplies', 'Applying Payment', 'Agent entered incorrect payment date', 'Check Payments'),
(418, 'S&F Supplies', 'Applying Payment', 'Agent entered incorrect payment amount', 'Check Payments'),
(419, 'S&F Supplies', 'Applying Payment', 'Agent failed to save information.', 'Check Payments'),
(420, 'S&F Supplies', 'Applying Payment', 'Agent select incorrect card ID on file', 'For Credit Card Payments'),
(421, 'S&F Supplies', 'Applying Payment', 'Agent selected incorrect Merchant ID.', 'For Credit Card Payments'),
(422, 'S&F Supplies', 'Applying Payment', 'Agent Incorrectly selected \"Manual Swipe\" (only if zip code is provided)', 'For Credit Card Payments'),
(423, 'S&F Supplies', 'Applying Payment', 'Agent entered incorrect customer information.', 'Bounce Check '),
(424, 'S&F Supplies', 'Applying Payment', 'Agent entered incorrect amount payment', 'Bounce Check '),
(425, 'S&F Supplies', 'Applying Payment', 'Agent selectincorrect SBT Version', 'Apply Credit/Deposit'),
(426, 'S&F Supplies', 'Applying Payment', 'Agent entered incorrect customer information.', 'Apply Credit/Deposit'),
(427, 'S&F Supplies', 'Collections', 'Agent did not check the inbox of the Outlook.', '\"Emails from Credit Manager to process collection/ reminder for payment/ call for reminder\n1st reminder - \n2nd credit hold 1 - (2 days)\n3rd inform that the account is on credit hold \"'),
(428, 'S&F Supplies', 'Collections', 'Agent failed to reply to the email', '\"Emails from Credit Manager to process collection/ reminder for payment/ call for reminder'),
(429, 'S&F Supplies', 'Collections', 'Agent did not forward Emails that were misrouted to A/R inbox', '\"Emails from Credit Manager to process collection/ reminder for payment/ call for reminder'),
(430, 'S&F Supplies', 'Collections', 'Agent did not do a follow up call for payment.', 'Driver Calls/ Customer Calls'),
(431, 'S&F Supplies', 'Collections', 'Agent failed to follow up after 3 business days', 'Driver Calls/ Customer Calls');
INSERT INTO `qan_potential_cause_of_failure` (`id`, `account`, `process`, `potential_cause_of_failure`, `sub_process`) VALUES
(432, 'S&F Supplies', 'Collections', 'Agent did not callback 2 days after the first follow up', 'Outbound Calls'),
(433, 'S&F Supplies', 'Collections', 'Agent did not put the account on HOLD after 2 weeks of non payment', 'Outbound Calls'),
(434, 'S&F Supplies', 'Driver Calls', 'Agent did not charge the card with the correct Net Terms', 'Processing Payment/ COD'),
(435, 'S&F Supplies', 'Driver Calls', 'The agent did not get an approval from the credit manager or accounting manager before charging payment. ZTP', 'Informing the customer that the order will arrive.'),
(436, 'S&F Supplies', 'Driver Calls', 'Agent allowed the driver to drop the order without payment (COD orders)', 'Informing the customer that the order will arrive.'),
(437, 'S&F Supplies', 'Driver Calls', 'Agent did not check or put notes ', 'Informing the customer that the order will arrive.'),
(438, 'S&F Supplies', 'Driver Calls', 'The agent failed to change the term after the call AR before terms.', 'Informing the customer that the order will arrive.'),
(439, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'agent did not call the customer and updated the file.', 'Customer Identification Validation '),
(440, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Agent entered incorrect address', 'Customer Identification Validation '),
(441, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Agent entered incorrect name of sales person', 'Customer Identification Validation '),
(442, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Agent entered incorrect contact information', 'Renaming File/Renaming error scans to correct  SO# or driver sheet #.'),
(443, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Agent did not set a follow up schedule', 'Renaming File/Renaming error scans to correct  SO# or driver sheet #.'),
(444, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Agent did not send New Entity Form', 'Renaming File/Renaming error scans to correct  SO# or driver sheet #.'),
(445, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'The agent incorrectly named the file', 'Renaming File/Renaming error scans to correct  SO# or driver sheet #.'),
(446, 'S&F Supplies', 'AGING TRACKER', 'The agent did not send email or call cutomer for payment follow ups', 'Unpaid COD monitoring Every Monday'),
(447, 'S&F Supplies', 'AGING TRACKER', 'The agent tagged incorrect disposition.', 'Unpaid COD monitoring Every Monday'),
(448, 'S&F Supplies', 'TRACKING UNSHIPPED PACKED ORDERS', 'The agent did not ship the paid order', 'Every Wed and Friday, 13 days unshipped orders must be shipped if already paid'),
(449, 'S&F Supplies', 'Tracker For Payment for credit card process', 'The agent did not update the tracker', 'Monitoring of the processed payment. These are the things that can be monitored by this tracker'),
(450, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Agent submitted incorrect date', 'FACILITY COORDINATOR'),
(451, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Agent submitted incorrect time', 'FACILITY COORDINATOR'),
(452, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Agent tagged incorrectly of the staff\'s availability', 'FACILITY COORDINATOR'),
(453, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Agent entered incorrect staff name', 'FACILITY COORDINATOR'),
(454, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Agent entered incorrect facility', 'FACILITY COORDINATOR'),
(455, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Agent sent email with improper grammar', 'FACILITY COORDINATOR'),
(456, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'Agent sent email with misspelled words', 'FACILITY COORDINATOR'),
(457, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Agent submitted incorrect date', 'STAFF COORDINATOR'),
(458, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Agent submitted incorrect time', 'STAFF COORDINATOR'),
(459, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Agent tagged incorrectly of the staff\'s availability', 'STAFF COORDINATOR'),
(460, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Agent entered incorrect staff name', 'STAFF COORDINATOR'),
(461, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Agent entered incorrect facility', 'STAFF COORDINATOR'),
(462, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Agent sent email with improper grammar', 'STAFF COORDINATOR'),
(463, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Agent sent email with misspelled words', 'STAFF COORDINATOR'),
(464, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'Agent did not addressed the problem properly.', 'STAFF COORDINATOR'),
(465, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Agent entered incorrect SKU', 'UNFI, AMAZON AND EBAY LISTING'),
(466, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Agent entered incorrect weight', 'UNFI, AMAZON AND EBAY LISTING'),
(467, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Agent entered incorrect ASIN', 'UNFI, AMAZON AND EBAY LISTING'),
(468, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Agent entered incorrect price', 'UNFI, AMAZON AND EBAY LISTING'),
(469, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Agent entered incorrect shipping charge', 'UNFI, AMAZON AND EBAY LISTING'),
(470, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Agent entered incorrect brand', 'UNFI, AMAZON AND EBAY LISTING'),
(471, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'Agent entered incorrect ingredients', 'UNFI, AMAZON AND EBAY LISTING'),
(472, 'CICADA ENTERPRISE INC', 'CREATING BOX INFO', 'Agent entered incorrect item number.', 'CREATING BOX INFO'),
(473, 'CICADA ENTERPRISE INC', 'CREATING BOX INFO', 'Agent entered incorrect quantity', 'CREATING BOX INFO'),
(474, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Agent entered wrong SKU', ' INVOICING/PURCHASE ORDER'),
(475, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Agent entered wrong quantity', ' INVOICING/PURCHASE ORDER'),
(476, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Agent entered wrong invoice number', ' INVOICING/PURCHASE ORDER'),
(477, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Agent entered incorrect invoice date', ' INVOICING/PURCHASE ORDER'),
(478, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Agent entered incorrect vendor', ' INVOICING/PURCHASE ORDER'),
(479, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', 'Agent entered wrong warehouse ', ' INVOICING/PURCHASE ORDER'),
(480, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Agent entered incorrect Amazon Country', 'COLLECTING ASIN INFO (New update task)'),
(481, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Agent entered incorrect ASIN', 'COLLECTING ASIN INFO (New update task)'),
(482, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Agent entered incorrect product name', 'COLLECTING ASIN INFO (New update task)'),
(483, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Agent entered incorrect last 3 months ranking', 'COLLECTING ASIN INFO (New update task)'),
(484, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Agernt entered incorrect category', 'COLLECTING ASIN INFO (New update task)'),
(485, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Agent entered incorrect number of reviews', 'COLLECTING ASIN INFO (New update task)'),
(486, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Agent entered incorrect star rating', 'COLLECTING ASIN INFO (New update task)'),
(487, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Agent entered incorrect number of sellers with FBA Prime', 'COLLECTING ASIN INFO (New update task)'),
(488, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Agent entered incorrect buy box price', 'COLLECTING ASIN INFO (New update task)'),
(489, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'Agent entered incorrect FBA price at time of best ranking', 'COLLECTING ASIN INFO (New update task)'),
(490, 'CICADA ENTERPRISE INC', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"', 'The agent entered incorrect numbers on the remaining quantity', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"'),
(491, 'CICADA ENTERPRISE INC', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"', 'The agent entered numbers on the wrong item', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"'),
(492, 'JWBL', 'VIRTUAL ASSISTANT', 'The agent failed to check email regularly', 'VIRTUAL ASSISTANT'),
(493, 'JWBL', 'VIRTUAL ASSISTANT', 'The agent failed to inform or confirm the POC that the task/instructions was received.', 'VIRTUAL ASSISTANT'),
(494, 'JWBL', 'VIRTUAL ASSISTANT', 'The agent failed to ask questions about unclear instructions to the POC resulting to an error.', 'VIRTUAL ASSISTANT'),
(495, 'JWBL', 'VIRTUAL ASSISTANT', 'The agent failed to send email informing the POC that the task is completed.', 'VIRTUAL ASSISTANT'),
(496, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'The agent failed to check email regularly', 'CUSTOMER SERVICE REPRESENTATIVE'),
(497, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'The agent sent late email to Sam regarding customer\'s concern.', 'CUSTOMER SERVICE REPRESENTATIVE'),
(498, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'The agent sent late email to the customer.', 'CUSTOMER SERVICE REPRESENTATIVE'),
(499, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'The agent failed to verify the not received orders.', 'CUSTOMER SERVICE REPRESENTATIVE'),
(500, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'The agent entered incorrect date', 'DAILY DROPSHIPS UPDATE'),
(501, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'The agent entered incorrect charge amount', 'DAILY DROPSHIPS UPDATE'),
(502, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'The agent entered incorrect expected charge amount', 'DAILY DROPSHIPS UPDATE'),
(503, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'The agent entered incorrect shipping cost ', 'DAILY DROPSHIPS UPDATE'),
(504, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'The agent entered incorrect tracking number', 'DAILY DROPSHIPS UPDATE'),
(505, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'The agent entered incorrect order number', 'DAILY DROPSHIPS UPDATE'),
(506, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'The agent entered incorrect sale price', 'DAILY DROPSHIPS UPDATE'),
(507, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'The agent entered incorrect fee', 'DAILY DROPSHIPS UPDATE'),
(508, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'The agent entered incorrect profit', 'DAILY DROPSHIPS UPDATE'),
(509, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'The agent failed to send email informing the POC that the task iscompleted.', 'DAILY DROPSHIPS UPDATE'),
(510, 'JWBL', 'KEYWORD SEARCHING', 'The agent entered incorrect position type', 'KEYWORD SEARCHING'),
(511, 'JWBL', 'KEYWORD SEARCHING', 'The agent entered incorrect title', 'KEYWORD SEARCHING'),
(512, 'JWBL', 'KEYWORD SEARCHING', 'The agent entered incorrect number of reviews', 'KEYWORD SEARCHING'),
(513, 'JWBL', 'KEYWORD SEARCHING', 'The agent entered incorrect brand', 'KEYWORD SEARCHING'),
(514, 'JWBL', 'KEYWORD SEARCHING', 'The agent entered incorrect ASIN', 'KEYWORD SEARCHING'),
(515, 'JWBL', 'KEYWORD SEARCHING', 'The agent entered incorrect price', 'KEYWORD SEARCHING'),
(516, 'JWBL', 'KEYWORD SEARCHING', 'The agent entered incorrect FBA fee', 'KEYWORD SEARCHING'),
(517, 'JWBL', 'KEYWORD SEARCHING', 'The agent entered incorrect review rating', 'KEYWORD SEARCHING'),
(518, 'JWBL', 'KEYWORD SEARCHING', 'The agent entered incorrecdt Date First Available', 'KEYWORD SEARCHING'),
(519, 'JWBL', 'KEYWORD SEARCHING', 'The agent entered incorrect negative review points(Must be 3 stars and below)', 'KEYWORD SEARCHING'),
(520, 'JWBL', 'PO CREATOR', 'The agent entered incorrect name', 'PO CREATOR'),
(521, 'JWBL', 'PO CREATOR', 'Theagent entered incorrect shipping address', 'PO CREATOR'),
(522, 'JWBL', 'PO CREATOR', 'The agent entered incorrect City/State', 'PO CREATOR'),
(523, 'JWBL', 'PO CREATOR', 'Agent entered incorrect Zip Code', 'PO CREATOR'),
(524, 'JWBL', 'UPS SHIPPING', 'Agent entered incorrect address on UPS website', 'UPS SHIPPING'),
(525, 'JWBL', 'UPS SHIPPING', 'Agent entered incorrect name/company on UPS website', 'UPS SHIPPING'),
(526, 'JWBL', 'UPS SHIPPING', 'Agent entered incorrect hpone number on UPS website', 'UPS SHIPPING'),
(527, 'JWBL', 'UPS SHIPPING', 'Agent entered incorrect weight of package on UPS website', 'UPS SHIPPING'),
(528, 'JWBL', 'UPS SHIPPING', 'Agent entered incorrect length of package on UPS website', 'UPS SHIPPING'),
(529, 'JWBL', 'UPS SHIPPING', 'Agent entered incorrect width of package on UPS website', 'UPS SHIPPING'),
(530, 'JWBL', 'UPS SHIPPING', 'Agent entered incorrect height of package on UPS website', 'UPS SHIPPING'),
(531, 'JWBL', 'UPS SHIPPING', 'Agent entered incorrect reference number on UPS website', 'UPS SHIPPING'),
(532, 'JWBL', 'UPS SHIPPING', 'Agent entered incorrect method of payment on UPS website', 'UPS SHIPPING'),
(533, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)', 'Agent incorrectly tagged the review status in MTTT form ', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)'),
(534, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)', 'The agent failed to like or comment on a post on Power User\'s post or its followers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)'),
(535, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)', 'The agent put comment irrelevant or unraleted comments on a post', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)'),
(536, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)', 'The agent liked or commented on accounts that are not linked to the Power User\'s account.', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)'),
(537, 'Edison', 'DATA ENTRY', 'Agent entered the wrong profile status', 'DATA ENTRY'),
(538, 'Edison', 'DATA ENTRY', 'Agent entered incorrect primary office', 'DATA ENTRY'),
(539, 'Edison', 'DATA ENTRY', 'Agent entered incorrect name', 'DATA ENTRY'),
(540, 'Edison', 'DATA ENTRY', 'Agent entered incorrect date of birth', 'DATA ENTRY'),
(541, 'Edison', 'DATA ENTRY', 'Agent entered incorrect SSN#', 'DATA ENTRY'),
(542, 'Edison', 'DATA ENTRY', 'Agent entered incorrect address', 'DATA ENTRY'),
(543, 'Edison', 'DATA ENTRY', 'Agent entered wrong info on emergency contact information tab', 'DATA ENTRY'),
(544, 'Edison', 'DATA ENTRY', 'Agent entered wrong information on caregiver preferences tab', 'DATA ENTRY'),
(545, 'Edison', 'DATA ENTRY', 'Agent entered incorrect information of the laboratory report.', 'DATA ENTRY'),
(546, 'Edison', 'EMAIL HANDLING', 'The agent did not cc\'d the TL on sending an email', 'EMAIL HANDLING'),
(547, 'Edison', 'EMAIL HANDLING', 'The agent sent email with incorrect spelled words.', 'EMAIL HANDLING'),
(548, 'Edison', 'EMAIL HANDLING', 'The agent sent an email with improper grammar', 'EMAIL HANDLING'),
(549, 'Edison', 'EMAIL HANDLING', 'The agent did not addressed the subject properly.', 'EMAIL HANDLING'),
(550, 'Sthetix', 'QUOTATION', 'Agent entered incorrect box measurement', 'QUOTATION'),
(551, 'Sthetix', 'QUOTATION', 'Agent entered incorrect duty cost', 'QUOTATION'),
(552, 'Sthetix', 'QUOTATION', 'Agent entered incorrect quote amount', 'QUOTATION'),
(553, 'Sthetix', 'QUOTATION', 'Agent entered incorrect quantity', 'QUOTATION'),
(554, 'Sthetix', 'QUOTATION', 'Agent entered incorrect HTS code', 'QUOTATION'),
(555, 'Sthetix', 'QUOTATION', 'Agent failed to check emails from requestor.', 'QUOTATION'),
(556, 'Sthetix', 'QUOTATION', 'Agent failed to reply to emails on a timely manner.', 'QUOTATION'),
(557, 'Sthetix', 'STOCKS TRACKING', 'Agent entered incorrect shipment date', 'STOCKS TRACKING'),
(558, 'Sthetix', 'STOCKS TRACKING', 'Agent entered incorrect shipment status.', 'STOCKS TRACKING'),
(559, 'Sthetix', 'STOCKS LISTING', 'Agent entered incorrect SKU', 'STOCKS LISTING'),
(560, 'Sthetix', 'STOCKS LISTING', 'Agent entered incorrect quantity', 'STOCKS LISTING'),
(561, 'Sthetix', 'STOCKS LISTING', 'Agent entered incorrect ELC', 'STOCKS LISTING'),
(562, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Agent used incorrect template', 'EMAIL HANDLING'),
(563, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Agent sent an email with wrong grammar.', 'EMAIL HANDLING'),
(564, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Agent sent an email with incorrect spelling', 'EMAIL HANDLING'),
(565, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Agent sent email to the wrong person', 'EMAIL HANDLING'),
(566, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Agent entered incorrect order number', 'ORDER PLACEMENTS AND REPLACEMENT'),
(567, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Agent entered incorrect item number', 'ORDER PLACEMENTS AND REPLACEMENT'),
(568, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Agent entered incorrect quantity', 'ORDER PLACEMENTS AND REPLACEMENT'),
(569, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Agent enterred incorrect price', 'ORDER PLACEMENTS AND REPLACEMENT'),
(570, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Agent entered incorrect shipping option', 'ORDER PLACEMENTS AND REPLACEMENT'),
(571, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'Agent entered incorrect fulfillment order', 'ORDER PLACEMENTS AND REPLACEMENT'),
(572, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Agent failed to click the refund order in Amazon', 'RETURN AND REFUND'),
(573, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Agent entered incorrect HS Conversation Number in RMA Number Field', 'RETURN AND REFUND'),
(574, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Agent entered incorrect quantity', 'RETURN AND REFUND'),
(575, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Agent created incorrect label', 'RETURN AND REFUND'),
(576, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Agent used incorrect template', 'RETURN AND REFUND'),
(577, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'Agent sent an email to the wrong person', 'RETURN AND REFUND'),
(578, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 'Agent missed a negative review.', 'REVIEWS 1-2-3 STAR RATING'),
(579, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 'Agent failed to make a comment on a negative review', 'REVIEWS 1-2-3 STAR RATING'),
(580, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 'Agent make a comment that is not enough to retract the negative review', 'REVIEWS 1-2-3 STAR RATING'),
(581, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 'Agent did not change the user name before commenting in public', 'REVIEWS 1-2-3 STAR RATING'),
(582, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 'Agent shipped the item OUTSIDE of the 48 contigious states of the US', 'WORLDWIDE GLOBAL SHIPPING'),
(583, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 'Agent did not replied to customers inquiry', 'WORLDWIDE GLOBAL SHIPPING'),
(584, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 'Agent send Amazon buyer to Ebay or vice versa', 'WORLDWIDE GLOBAL SHIPPING'),
(585, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 'Agent failed to convey the terms of agreement with Ebay to the buyer', 'WORLDWIDE GLOBAL SHIPPING'),
(586, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Agent processed claims with invalid reason', 'A-Z CLAIMS'),
(587, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Agent failed to reach out to the buyer to offer refund, replacement, etc', 'A-Z CLAIMS'),
(588, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Agent failed to offer discount coupon to the buyer', 'A-Z CLAIMS'),
(589, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Agent did not answer the claim immediately', 'A-Z CLAIMS'),
(590, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Agent failed to send an appeal to Amazon', 'A-Z CLAIMS'),
(591, 'Dime Trading (Nesstoy)', 'ADDRESS CHANGE ORDER CANCELLATION', 'Agent failed to prpocess a cancellation request in Seller Cloud and in GoFlow', 'ADDRESS CHANGE ORDER CANCELLATION'),
(592, 'Dime Trading (Nesstoy)', 'ADDRESS CHANGE ORDER CANCELLATION', 'The agent processed a cancellation in Amazon with change of address reason.', 'ADDRESS CHANGE ORDER CANCELLATION'),
(593, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 'Agent did not communicate with the buyer for lost package ', 'NEVER RECEIVED GOODS'),
(594, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 'Agent failed to offer 50% discount', 'NEVER RECEIVED GOODS'),
(595, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 'Agent tag incorrectly in Help Scout', 'NEVER RECEIVED GOODS'),
(596, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 'Agent failed to offer replacement or refund for lost package that was shipped \"without signature required\"', 'NEVER RECEIVED GOODS'),
(597, 'Five Star Staffing', 'RECRUITMENT', 'Agent entered incorrect shift date', 'RECRUITMENT'),
(598, 'Five Star Staffing', 'RECRUITMENT', 'Agent entered incorrect facility', 'RECRUITMENT'),
(599, 'Five Star Staffing', 'RECRUITMENT', 'Agent entered incorrect agency', 'RECRUITMENT'),
(600, 'Five Star Staffing', 'RECRUITMENT', 'Agent entered incorrect staff name', 'RECRUITMENT'),
(601, 'Five Star Staffing', 'RECRUITMENT', 'Agent entered incorrect position', 'RECRUITMENT'),
(602, 'Five Star Staffing', 'RECRUITMENT', 'Agent entered incorrect mobile number', 'RECRUITMENT'),
(603, 'Five Star Staffing', 'RECRUITMENT', 'Agent entered incorrect confirmation status', 'RECRUITMENT'),
(604, 'Five Star Staffing', 'STAFFING', 'Agent used wrong grammar on sending emails', 'STAFFING'),
(605, 'Five Star Staffing', 'STAFFING', 'Agent wrote words with incorrect spelling in email', 'STAFFING'),
(606, 'Five Star Staffing', 'STAFFING', 'Agent sent email to the wrong facility', 'STAFFING'),
(607, 'Anchor Home Health Care Services', 'RECRUITMENT TASK', '- Agent ticked the available box even though the staff is not available', 'RECRUITMENT TASK'),
(608, 'Anchor Home Health Care Services', 'RECRUITMENT TASK', '- Agent  incorrectly logged the status of the call', 'RECRUITMENT TASK'),
(609, 'Anchor Home Health Care Services', 'RECRUITMENT TASK', '- Agent entered incorrect appointment date and/or on tracker.', 'RECRUITMENT TASK'),
(610, 'Anchor Home Health Care Services', 'EMAIL HANDLING', '- Agent wrote incorrect applicant\'s name in the email sent to applicant', 'EMAIL HANDLING'),
(611, 'Anchor Home Health Care Services', 'EMAIL HANDLING', '- Agent wrote incorrect appointment schedule date and/or time in the email sent to the applicant', 'EMAIL HANDLING'),
(612, 'Anchor Home Health Care Services', 'EMAIL HANDLING', '- Agent wrote incorrect appointment schedule date and/or time in the email sent to the client', 'EMAIL HANDLING'),
(613, 'Anchor Home Health Care Services', 'EMAIL HANDLING', '- Agent composed email with improper grammar and mispelled words.', 'EMAIL HANDLING'),
(614, 'Anchor Home Health Care Services', 'EMAIL HANDLING', '- Agent did not use the tempalate provided by the client.', 'EMAIL HANDLING'),
(615, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent did not change the \"Select from\" field to \"unassigned\"', 'ACCOUNT ACTIVATION'),
(616, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent did not change the \'DID Contains\" field to \"929\"', 'ACCOUNT ACTIVATION'),
(617, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent did not set the status on \"Reseller\" tab to \"Enabled\"', 'ACCOUNT ACTIVATION'),
(618, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent set the Time Zone incorrectly.(Should be based on tim.is)', 'ACCOUNT ACTIVATION'),
(619, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent did not key in the customer\'s name as the description.', 'ACCOUNT ACTIVATION'),
(620, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent did not key in the customer\'s phone number as the Default External Caller ID.', 'ACCOUNT ACTIVATION'),
(621, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent did not key in the customer\'s phone number as the E911 Caller ID.', 'ACCOUNT ACTIVATION'),
(622, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent did not ticked the \"Enable voicemail\"', 'ACCOUNT ACTIVATION'),
(623, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent did not ticked the \"Create mailbox\"', 'ACCOUNT ACTIVATION'),
(624, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent set up route even with no extension number.', 'ACCOUNT ACTIVATION'),
(625, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent entered incorrect area code on setting the route.', 'ACCOUNT ACTIVATION'),
(626, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent entered incorrect phone number', 'ACCOUNT ACTIVATION'),
(627, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent entered incorrect extension number', 'ACCOUNT ACTIVATION'),
(628, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent enterred incorrect Business Hours.', 'ACCOUNT ACTIVATION'),
(629, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent entered incorrect Hardware MAC', 'ACCOUNT ACTIVATION'),
(630, 'MongoTEL', 'ACCOUNT ACTIVATION', 'Agent entered incorrect Hardware Install.', 'ACCOUNT ACTIVATION'),
(632, 'BONAFIDE HEALTHCARE', 'UTILIZATION OF PORTAL', 'The agent failed to check if there is a VOB to work on in Avia.', 'UTILIZATION OF PORTAL'),
(633, 'BONAFIDE HEALTHCARE', 'UTILIZATION OF PORTAL', 'The agent started working with the VOB late.', 'UTILIZATION OF PORTAL'),
(634, 'BONAFIDE HEALTHCARE', 'UTILIZATION OF PORTAL', 'The agent failed to advise the POC if there is a big volume of VOB that will result in failure of sending reports in less than an hour.', 'UTILIZATION OF PORTAL'),
(635, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'The agent edited the information in the \"Payer\" tab without advising the POC.', 'VERIFICATION OF BENEFITS'),
(636, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'The agent entered incorrect information like insurance ID, demographics etc.  on the \"Policy Holder\" tab.', 'VERIFICATION OF BENEFITS'),
(637, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'The agent incorrectly edited the \"Third Party Pricing\" box - it should be \"Yes\" and \"Viant\" for \"Third Party Pricer\" box', 'VERIFICATION OF BENEFITS'),
(638, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'The agent entered incorrect information on the Coverage Breakdown such as Pre auth needed, is the level of care covere, Co insurance, Copay, Max benefit, Amount used.', 'VERIFICATION OF BENEFITS'),
(639, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', '\"The agent failed to ask the insurance representative other patient\'s insurance benefits such as: \r\nDO pre existing conditions apply?\r\nIs member subject to balance billing?\r\nDoes 4th quarter carry over apply?\r\nDoes member have an HSA?\r\nWhat is the timely filing?\r\nCPT code 80305: limit and amount used?\r\nIf no OON, is a single case agreement an option?\r\nIf so, how, who, and what would be needed to initiate the process?\"', 'VERIFICATION OF BENEFITS'),
(640, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'The agent entered incorrect details in the policy notes such as timely filing and claims address.', 'VERIFICATION OF BENEFITS'),
(641, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'The agent did not enter any information in the policy notes', 'VERIFICATION OF BENEFITS'),
(642, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'The agent entered incorrect details such as primary payer, ID#, State of plan, date and etc. on the tracker', 'VERIFICATION OF BENEFITS'),
(643, 'Bonafide Healthcare', 'DOWNLOADING PATIENTS INSURANCE BENEFITS IN PDF FILE', 'The agent saved the pdf under a different folder', 'DOWNLOADING PATIENTS INSURANCE BENEFITS IN PDF FILE'),
(644, 'Bonafide Healthcare', 'EMAILING BENEFITS SUMMARY', 'The agent sent the benefits for an hour of more. Benefits summary must be sent in less than an hour starting when the VOB appears in Avia', 'EMAILING BENEFITS SUMMARY'),
(645, 'Bonafide Healthcare', 'EMAILING BENEFITS SUMMARY', 'The agent sent email with incorrect benefits information', 'EMAILING BENEFITS SUMMARY'),
(646, 'Bonafide Healthcare', 'EMAILING BENEFITS SUMMARY', 'The agent did not follow the template', 'EMAILING BENEFITS SUMMARY');

-- --------------------------------------------------------

--
-- Table structure for table `qan_process`
--

CREATE TABLE `qan_process` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `process` varchar(1028) DEFAULT NULL,
  `sub_process` varchar(1028) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qan_process`
--

INSERT INTO `qan_process` (`id`, `account`, `process`, `sub_process`) VALUES
(1, 'Medex', 'Eligibility and Benefits', 'Eligibility and Benefits'),
(2, 'Medex', 'Eligibility and Benefits', 'EMAIL HANDLING'),
(3, 'Medex', 'Billing', 'Billing'),
(4, 'Medex', 'Billing', 'EMAIL HANDLING'),
(5, 'YK Group', 'CONVERTING PDF FILES TO GOOGLE SHEETS', 'CONVERTING PDF FILES TO GOOGLE SHEETS'),
(6, 'YK Group', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS'),
(7, 'YK Group', 'ADDING FORMULAS IN GOOGLE SHEET', 'ADDING FORMULAS IN GOOGLE SHEET'),
(8, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 'TIME AND ATTENDANCE PAYROLL'),
(9, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'PAYMENT AND SAVE PAYMENT'),
(10, 'Marks & Spencer', 'RENEWAL', 'RENEWAL'),
(11, 'Marks & Spencer', 'REINSTATEMENT', 'REINSTATEMENT'),
(12, 'Marks & Spencer', 'CANCELLATION NOTICE', 'CANCELLATION NOTICE'),
(13, 'Marks & Spencer', 'MONITORING', 'MONITORING'),
(14, 'Twin Med', 'Data Research', 'Data Research'),
(15, 'White Gloves Consultancy', 'ELIGIBILITY', 'ELIGIBILITY'),
(16, 'White Gloves Consultancy', 'Listing of Active/Inactive ', 'Listing of Active/Inactive '),
(17, 'UHA', 'REPRICING', 'REPRICING'),
(18, 'MBH Services', 'Authorizations', 'Authorizations'),
(22, 'MBH Services', 'Appeals/ CRM/ Catalyst DL', 'Appeals/ CRM/ Catalyst DL'),
(23, 'MBH Services', 'Timesheet', 'Timesheet'),
(24, 'MBH Services', 'Reimbursement', 'Reimbursement'),
(25, 'Total Plan Concept', 'Extraction', 'Extraction'),
(26, 'Total Plan Concept', 'BILLING', 'BILLING'),
(27, 'Total Plan Concept', 'PRICING', 'PRICING'),
(28, 'Total Plan Concept', 'RESUBMISSION', 'RESUBMISSION'),
(29, 'Tiger Companies', 'INVOICING', 'INVOICING'),
(30, 'Tiger Companies', 'CREDIT MEMO', 'CREDIT MEMO'),
(31, 'Tiger Companies', 'EMAIL HANDLING', 'EMAIL HANDLING'),
(32, 'Exchange and Connectel', 'REPAIR TICKETING', 'REPAIR TICKETING'),
(33, 'Exchange and Connectel', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN', 'INBOUND CALLFLOW AND ACCOUNTS CONCERN'),
(34, 'Exchange and Connectel', 'BILLING/COLLECTIONS', 'BILLING/COLLECTIONS'),
(35, 'Exchange and Connectel', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP', 'OUTBOUND - REPAIR AND CUSTOMER FOLLOW UP'),
(36, 'Grandview', 'DIRECT BILL TRANSACTIONS', 'DIRECT BILL TRANSACTIONS'),
(37, 'Grandview', 'CREATING DOCUMENTS', 'CREATING DOCUMENTS'),
(38, 'Grandview', 'UPDATING AND ADDING ACCOUNTS IN EPIC', 'UPDATING AND ADDING ACCOUNTS IN EPIC'),
(39, 'Reside New York', 'MARKETING PLAN REVIEW', 'MARKETING PLAN REVIEW'),
(40, 'Reside New York', 'CLOSING DOCUMENTS', 'CLOSING DOCUMENTS'),
(41, 'Reside New York', 'RENT ROLL', 'RENT ROLL'),
(42, 'Reside New York', 'WEBSITE LISTING', 'WEBSITE LISTING'),
(43, 'Reside New York', 'CALCULATION DATA', 'CALCULATION DATA'),
(44, 'Renah Appliance Repair', 'BILLING', 'BILLING'),
(45, 'Renah Appliance Repair', 'UPDATING SERVICE STATUS', 'UPDATING SERVICE STATUS'),
(46, 'Renah Appliance Repair', 'CHECKING OF CLAIMS', 'CHECKING OF CLAIMS'),
(47, 'Evergreen', 'CLIENT INVOICE / PAID RECEIPT', 'CLIENT INVOICE / PAID RECEIPT'),
(48, 'Evergreen', 'EMAIL HANDLING', 'EMAIL HANDLING'),
(49, 'Evergreen', 'PROCESSING DOCUMENTS', 'PROCESSING DOCUMENTS'),
(50, 'Evergreen', 'FINANCED POLICY', 'FINANCED POLICY'),
(51, 'Evergreen', 'POLICY REVIEW', 'POLICY REVIEW'),
(52, 'Dynalink', 'CREATING BROADBAND QUOTES', 'CREATING BROADBAND QUOTES'),
(53, 'Dynalink', 'CREATE CABLE QUOTES', 'CREATE CABLE QUOTES'),
(54, 'Dynalink', 'CREATE T1 DATA QUOTES', 'CREATE T1 DATA QUOTES'),
(55, 'Dynalink', 'CREATE DSL QUOTES', 'CREATE DSL QUOTES'),
(56, 'Dynalink', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES', 'CREATE DYNAMIC PRI/INTEGRATED PRI/T-1 QUOTES'),
(57, 'Dynalink', 'CREATE ETHERNET OVER COPPER QUOTES', 'CREATE ETHERNET OVER COPPER QUOTES'),
(58, 'Dynalink', 'CREATE ETHERNET OVER FIBER QUOTES', 'CREATE ETHERNET OVER FIBER QUOTES'),
(59, 'Dynalink', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES', 'CREATE FIBER OPTIC SERVICE (FiOS) QUOTES'),
(60, 'Dynalink', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES', 'CREATE PLAIN OLD TELEPHONE SYSTEM (POTS) QUOTES'),
(61, 'Fidella', 'DOWNLOADING AND SENDING DOCUMENTS', 'DOWNLOADING AND SENDING DOCUMENTS'),
(62, 'Fidella', 'UPDATING EPIC', 'UPDATING EPIC'),
(63, 'S&F Supplies', 'QUICK SHIPMENT', 'used to shipped multiple orders.'),
(64, 'S&F Supplies', 'Applying Payment', 'Cash Receipts'),
(65, 'S&F Supplies', 'Applying Payment', 'Check Payments'),
(66, 'S&F Supplies', 'Applying Payment', 'For Credit Card Payments'),
(67, 'S&F Supplies', 'Applying Payment', 'Bounce Check'),
(68, 'S&F Supplies', 'Applying Payment', 'Apply Credit/Deposit'),
(69, 'S&F Supplies', 'Collections', '\"Emails from Credit Manager to process collection/ reminder for payment/ call for reminder\n1st reminder - \n2nd credit hold 1 - (2 days)\n3rd inform that the account is on credit hold \"'),
(70, 'S&F Supplies', 'Collections', 'Driver Calls/ Customer Calls'),
(71, 'S&F Supplies', 'Collections', 'Outbound Calls'),
(72, 'S&F Supplies', 'Driver Calls', 'Processing Payment/ COD'),
(73, 'S&F Supplies', 'Driver Calls', 'Informing the customer that the order will arrive.'),
(74, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Customer Identification Validation '),
(75, 'S&F Supplies', 'Data Entry (AD HOC Task)', 'Renaming File/Renaming error scans to correct  SO# or driver sheet #.'),
(76, 'S&F Supplies', 'AGING TRACKER', 'Unpaid COD monitoring Every Monday'),
(77, 'S&F Supplies', 'TRACKING UNSHIPPED PACKED ORDERS', 'Every Wed and Friday, 13 days unshipped orders must be shipped if already paid'),
(78, 'S&F Supplies', 'Tracker For Payment for credit card process', 'Monitoring of the processed payment. These are the things that can be monitored by this tracker'),
(79, 'Fivestar Coordinator', 'FACILITY COORDINATOR', 'FACILITY COORDINATOR'),
(80, 'Fivestar Coordinator', 'STAFF COORDINATOR', 'STAFF COORDINATOR'),
(81, 'CICADA ENTERPRISE INC', 'UNFI, AMAZON AND EBAY LISTING', 'UNFI, AMAZON AND EBAY LISTING'),
(82, 'CICADA ENTERPRISE INC', 'CREATING BOX INFO', 'CREATING BOX INFO'),
(83, 'CICADA ENTERPRISE INC', ' INVOICING/PURCHASE ORDER', ' INVOICING/PURCHASE ORDER'),
(84, 'CICADA ENTERPRISE INC', 'COLLECTING ASIN INFO (New update task)', 'COLLECTING ASIN INFO (New update task)'),
(85, 'CICADA ENTERPRISE INC', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"', '\"Updating Sheet for Merchant Remaining QTY (New Task)\n\"'),
(86, 'JWBL', 'VIRTUAL ASSISTANT', 'VIRTUAL ASSISTANT'),
(87, 'JWBL', 'CUSTOMER SERVICE REPRESENTATIVE', 'CUSTOMER SERVICE REPRESENTATIVE'),
(88, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'DAILY DROPSHIPS UPDATE'),
(89, 'JWBL', 'KEYWORD SEARCHING', 'KEYWORD SEARCHING'),
(90, 'JWBL', 'PO CREATOR', 'PO CREATOR'),
(91, 'JWBL', 'UPS SHIPPING', 'UPS SHIPPING'),
(92, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (FACEBOOK)'),
(93, 'Amazing Listers', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)', 'ADDING/ CHECKING NEW REVIEWERS IN MTTT PRODUCTS (INSTAGRAM)'),
(94, 'Edison', 'DATA ENTRY', 'DATA ENTRY'),
(95, 'Edison', 'EMAIL HANDLING', 'EMAIL HANDLING'),
(96, 'Sthetix', 'QUOTATION', 'QUOTATION'),
(97, 'Sthetix', 'STOCKS TRACKING', 'STOCKS TRACKING'),
(98, 'Sthetix', 'STOCKS LISTING', 'STOCKS LISTING'),
(99, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'EMAIL HANDLING'),
(100, 'Dime Trading (Nesstoy)', 'ORDER PLACEMENTS AND REPLACEMENT', 'ORDER PLACEMENTS AND REPLACEMENT'),
(101, 'Dime Trading (Nesstoy)', 'RETURN AND REFUND', 'RETURN AND REFUND'),
(102, 'Dime Trading (Nesstoy)', 'REVIEWS 1-2-3 STAR RATING', 'REVIEWS 1-2-3 STAR RATING'),
(103, 'Dime Trading (Nesstoy)', 'WORLDWIDE GLOBAL SHIPPING', 'WORLDWIDE GLOBAL SHIPPING'),
(104, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'A-Z CLAIMS'),
(105, 'Dime Trading (Nesstoy)', 'ADDRESS CHANGE ORDER CANCELLATION', 'ADDRESS CHANGE ORDER CANCELLATION'),
(106, 'Dime Trading (Nesstoy)', 'NEVER RECEIVED GOODS', 'NEVER RECEIVED GOODS'),
(107, 'Five Star Staffing', 'RECRUITMENT', 'RECRUITMENT'),
(108, 'Five Star Staffing', 'STAFFING', 'STAFFING'),
(109, 'Anchor Home Health Care Services', 'RECRUITMENT TASK', 'RECRUITMENT TASK'),
(110, 'Anchor Home Health Care Services', 'EMAIL HANDLING', 'EMAIL HANDLING'),
(111, 'MongoTEL', 'ACCOUNT ACTIVATION', 'ACCOUNT ACTIVATION'),
(113, 'BONAFIDE HEALTHCARE', 'UTILIZATION OF PORTAL', 'UTILIZATION OF PORTAL'),
(114, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'VERIFICATION OF BENEFITS'),
(115, 'Bonafide Healthcare', 'DOWNLOADING PATIENTS INSURANCE BENEFITS IN PDF FILE', 'DOWNLOADING PATIENTS INSURANCE BENEFITS IN PDF FILE'),
(116, 'Bonafide Healthcare', 'EMAILING BENEFITS SUMMARY', 'EMAILING BENEFITS SUMMARY');

-- --------------------------------------------------------

--
-- Table structure for table `qan_recommended_action`
--

CREATE TABLE `qan_recommended_action` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `process` varchar(1028) DEFAULT NULL,
  `recommended_action` longtext DEFAULT NULL,
  `sub_process` varchar(1028) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qan_recommended_action`
--

INSERT INTO `qan_recommended_action` (`id`, `account`, `process`, `recommended_action`, `sub_process`) VALUES
(1, 'Medex', 'Billing', '\"The design control is not foolproof but really helps in detecting errors, however, more man hour is spent on checking transaction reports. Therefore the agents should be very careful on entering data in Medics and not relying heavily on checking of transaction reports.\n\"', 'Billing'),
(2, 'YK Group', 'CONVERTING PDF FILES TO GOOGLE SHEETS', 'We strongly recommend that the Adobe acrobat should be the latest version and this should also be alligned with what the client is using. With this when the agent convert the pdf file into excel and Goggle sheet, it would be the same as what the client is expecting. And thus, it prevents the agent from commiting errors in converting files.', 'CONVERTING PDF FILES TO GOOGLE SHEETS'),
(3, 'YK Group', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS', 'Double checking of the chart at all times before submission especially if the agent has to manually create the chart or table in Google sheets', 'REVIEW OF PDF PLANS AND CREATE CHART LISTINGS FROM TAKE-OFFS'),
(4, 'YK Group', 'ADDING FORMULAS IN GOOGLE SHEET', 'Create a table of common Google sheets formula. This will minimize or eliminate the retention issue of the agent. ', 'ADDING FORMULAS IN GOOGLE SHEET'),
(5, 'Five Star CARE', 'TIME AND ATTENDANCE PAYROLL', 'Since this is the pay check of the staff, the agent must double check the punches and data entry. ', 'TIME AND ATTENDANCE PAYROLL'),
(6, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'Create a knowledge base and update it everytime when there is a new procedure instructed by the client.', 'PAYMENT AND SAVE PAYMENT'),
(7, 'Marks & Spencer', 'PAYMENT AND SAVE PAYMENT', 'Create a tracker that will monitor the handling time and the errors. This will be used to remind the agents to be careful with their errors.', 'PAYMENT AND SAVE PAYMENT'),
(8, 'Twin Med', 'Data Research', '\"Since we are having issues on when to use NONE and NA, Let us create a dropdown in the spreadsheet of what tagging is only applicable to that attribute. This is a simple design control which will lower the risk of making errors on incorrect tagging. \n\nNONE- If there is no information found in the website.', 'Data Research'),
(9, 'Twin Med', 'Data Research', 'This is a new account that is why the severity of these errors is high. We should build a Knowledge base (Training modules and wiki) that contains all the policies, processes and procedures and make it available to the agents. Have it always updated real time whenever there is a revision from the client. Through this we can eliminate knowledge and retention gap that can possibly be the rootcause of these errors.', 'Data Research'),
(10, 'UHA', 'REPRICING', 'Keep the Knowledge Base (Training Module, WIKI) updated,whenever there is a new policy revisions or new process at all times. And be sure that it is cascaded to the team.', 'REPRICING'),
(11, 'UHA', 'REPRICING', 'Create a tracker containing all the questions/clarifications and the feedback from the POCs including errors. This will eliminate if not, minimize the retention problem of the agents.', 'REPRICING'),
(12, 'UHA', 'REPRICING', 'Leaders should always be copied to the Emails that are being received and being sent out to the clients. In that way we will have transparency and for them to create an immediate solution to any problem that might occur.', 'REPRICING'),
(13, 'Total Plan Concept', 'Extraction', 'All insurance forms from GHI were downloaded using the snipping tool. If there is a way to download the insurance form straight to pdf file then this should be the procedure to greatly minimize the time downloading insurance forms.', 'Extraction'),
(14, 'Total Plan Concept', 'BILLING', 'Create a policy that makes the agents review their work before submitting the claims.', 'BILLING'),
(15, 'Total Plan Concept', 'PRICING', 'One agent can edit the pdf file and the other one cannot because the adobe acrobat seems to be different from the other agent. The PDF acrobat that they are using should be the same wherin they can easily copy and paste the price on the pdf file.', 'PRICING'),
(16, 'Grandview', 'DIRECT BILL TRANSACTIONS', 'As of now there is no process that will detect an error before it reaches the client. We should have all the emails auto forwarded to the TL, outgoing and incoming so that the TL will be aware that there is an error going on and we can make an immediate response or actions to fix that.', 'DIRECT BILL TRANSACTIONS'),
(17, 'Grandview', 'CREATING DOCUMENTS', 'The Knowledge base (wiki and training modules) of should always be updated whenever there is a new task or policy revisions. If it is updated real time, the agents will have no reason not to or have forgotten to comply with the policies set by the client. Knowledge and retention gap will be eliminated.', 'CREATING DOCUMENTS'),
(18, 'Reside New York', 'CALCULATION DATA', 'RNY Tracker should always be updated. All data loaded in the database should be entered in the tracker. May use the tracker as a guide or basis for any similar inquries. This would minimize or prevent retention.', 'CALCULATION DATA'),
(19, 'Reside New York', 'CALCULATION DATA', 'Have the agent audit their output during their avail time.', 'CALCULATION DATA'),
(20, 'Evergreen', 'PROCESSING DOCUMENTS', 'Manual editing of documents takes a lot of time to finish especially the new policies, so I suggest that new policies should be completed first before the existing ones.', 'PROCESSING DOCUMENTS'),
(21, 'JWBL', 'DAILY DROPSHIPS UPDATE', 'This is mostly copy and paste task however, the agent must be very cautious of the details because any error may have a big impact for the client. Agent must check every line that will be entered on the sheet before moving to the next item. Also, we recommend to keep track of any error by putting it on a google sheet so that the agent will always be reminded of his prevoious error and prevent it from happening again.', 'DAILY DROPSHIPS UPDATE'),
(22, 'JWBL', 'KEYWORD SEARCHING', 'Our recommendation is the same with the Dropship Updates because they have the same types of poterntial errors and its severity.', 'KEYWORD SEARCHING'),
(23, 'JWBL', 'PO CREATOR', 'Create a tracker on a google sheet that enables the agent to review and monitor if there are items that the agent may missed.', 'PO CREATOR'),
(24, 'JWBL', 'UPS SHIPPING', 'Create a tracker on a google sheet that enables the agent to review and monitor if there are items that the agent may missed.', 'UPS SHIPPING'),
(25, 'Edison', 'DATA ENTRY', 'If the SSN is unclear, send email to the director for clarification or approval. Responsible person to send email is the Team Leader.', 'DATA ENTRY'),
(26, 'Dime Trading (Nesstoy)', 'EMAIL HANDLING', 'Using a templated reply is recommended to make the a uniform reply message. This will lessen an email error.', 'EMAIL HANDLING'),
(27, 'Dime Trading (Nesstoy)', 'A-Z CLAIMS', 'Have a multiple templated review message to address different bad review scenarios.', 'A-Z CLAIMS'),
(36, 'BONAFIDE HEALTHCARE', 'UTILIZATION OF PORTAL', 'We recommend that the Team Leader will also have access to the portal to monitor the flow of the VOB ensuring that no VOB will be missed.', 'UTILIZATION OF PORTAL'),
(37, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Since this is a new account, we recommend to create a knowledge base with all the policies and procedures in which the agent would have an easy access to ensure that the agent is doing the correct process.', 'VERIFICATION OF BENEFITS'),
(38, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'It is very critical to have an error in the process of verificaton of benefits, so we highly recommend that the agent or the Supervisor audit the agent\'s work before submission.', 'VERIFICATION OF BENEFITS'),
(39, 'BONAFIDE HEALTHCARE', 'VERIFICATION OF BENEFITS', 'Create an error tracker so that we would be able to monitor any failures and quickly create a corrective and preventive measure when it happens.', 'VERIFICATION OF BENEFITS'),
(40, 'Bonafide Healthcare', 'EMAILING BENEFITS SUMMARY', 'Make a template for the agents to use in sending emails especially with the summary of benefits to avoid confucion and errors.\r\n\r\n', 'EMAILING BENEFITS SUMMARY');

-- --------------------------------------------------------

--
-- Table structure for table `qav_account_categories`
--

CREATE TABLE `qav_account_categories` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `opening_spiel` longtext DEFAULT NULL,
  `account_verification` longtext DEFAULT NULL,
  `resolution_of_issue` longtext DEFAULT NULL,
  `process_compliance` longtext DEFAULT NULL,
  `communication_skill` longtext DEFAULT NULL,
  `proper_closing` longtext DEFAULT NULL,
  `zero_tolerance` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qav_account_categories`
--

INSERT INTO `qav_account_categories` (`id`, `account`, `opening_spiel`, `account_verification`, `resolution_of_issue`, `process_compliance`, `communication_skill`, `proper_closing`, `zero_tolerance`) VALUES
(1, 'American Plan Administrators', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply', '• Did the agent correctly verify member /or patients information?', '• Correctly identified customer\'s concern/issue based on information presented.', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe? ( Should not exceed 2 mins) - Wil not apply if talking to the POC)', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe ( Should not exceed 2 mins)', '• Did the agent confirm the concern or provide a timeframe for resolution?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(2, 'American Plan Administrators', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?', '• Was the agent able to provide correct information being asked by the provider or member? (Correct - ID Number, Name, & date of Birth)\"\"', '• Acknowledge/Resolve all customer concerns / Respond appropriately- Made sure that all customer concerns are provided with the right solution?', '• Did the agent follow up with the customer within the agreed timeframe and thank the caller for placing the call on hold?  -Wil not apply if talking to the POC)', '• Did the agent follow up with customer within the agreed timeframe and thank the caller for placing the call on hold?', '• Did the agent offer further assistance or ask customer if they had any additional questions before closing the call?', 'N/A'),
(3, 'American Plan Administrators', '• Did agent mention the Brand name of the company?', 'N/A', '• Did the agent resolve a call on first contact and minimize callbacks?', '• Was the agent able to probe appropriately to better understand situation?', '• Agent approach - assertiveness, confident and comprehension?', '• Was the agent able to provide reference number for the call if incase asked by the caller (Their name and todays date)', 'N/A'),
(4, 'American Plan Administrators', '• Did the agent capture the caller\'s information correctly the first time it was provided?', 'N/A', '• Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline.', '• Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements and appropriate tone( I understand. “I\'m sorry you\'ve had to deal with this\")', '• Pleasantries / Courtesies -use of courtesy words such as \"Please\", \"May I /Can I? Used Thank You\", \"Kindly\"?', '• The agent thanked the customer for calling?', 'N/A'),
(5, 'American Plan Administrators', '• Did agent verify the caller’s name?', 'N/A', '•  Was the agent able to provider timeframes for all normal reprocess claims, refunds, timely filing, vouch, eob\'s, expediting claims, and etc...?', '• Was the agent able to set a clear expectations for special actions or request (Fax, re-process, callbacks)', '• Did the agent avoid long silence/dead air? (10 seconds)', 'N/A', 'N/A'),
(6, 'American Plan Administrators', '• Did the agent offer assistance to the caller?', 'N/A', '• Was the agent able to clearly communicate the requested needed for the call? (Claims, Benefits, and eligibilty)', '• Escalated Calls- Was the agent able to set a clear expectations on escalations (Sup Call) or for special actions or request (Fax, re-process, callbacks)', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"\"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(7, 'American Plan Administrators', '• Did the agent offer assistance to the caller?', 'N/A', '• Was the agent able to clearly communicate the requested needed for the call? (Claims, Benefits, and eligibilty)', '• Escalated Calls- Was the agent able to set a clear expectations on escalations (Sup Call) or for special actions or request (Fax, re-process, callbacks)', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"\"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(8, 'American Plan Administrators', 'N/A', 'N/A', '• Respond appropriately - Used the right statement/response based on customer\'s concern?', '• Did the agent display efficiency with the system navigation, system tools, and support? (Exhaust all resources)', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(9, 'American Plan Administrators', 'N/A', 'N/A', '• Did agent collect customer\'s contact information for all situations that requires a call-back?', '• Did the agent leave a note on the system with the accurate information or request?', '• Did the agent avoid using negative phrases, Like \"\"can\'t, don\'t, there\'s no way\"\"? (Use postive script)', 'N/A', 'N/A'),
(10, 'American Plan Administrators', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent demonstrate active listening & Rate of speech - Appropriate pace?', 'N/A', 'N/A'),
(11, 'American Plan Administrators', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid addressing the customer Sir or Mam)', 'N/A', 'N/A'),
(12, 'American Plan Administrators', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent actively listening through out the call?', 'N/A', 'N/A'),
(13, 'American Plan Administrators', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent allow the customer/provider to talk without interruptions?', 'N/A', 'N/A'),
(14, 'American Plan Administrators', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using vernacular words that was heard during the call?', 'N/A', 'N/A'),
(15, 'American Plan Administrators', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation of words used? (Neutral and understandable accent)', 'N/A', 'N/A'),
(16, 'American Plan Administrators', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain professional choices of words through out the call?', 'N/A', 'N/A'),
(17, 'American Plan Administrators', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent acknowledge the caller\'s concern by asking approriate verifying and probing questions?', 'N/A', 'N/A'),
(18, 'AM Home', 'Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call or working on a needed task.', 'N/A', 'Correct assessment of Issue - Correctly identified customer\'s Concern/Issue based on information presented.', 'Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements with appropriate tone (I understand. “I\'m sorry you\'ve had to deal with this, etc..)', 'Did the agent ask permission to place the call on hold/ transfer and provide a timeframe (Should not exceed 2 mins- Initial Hold)', 'Was the agent able to obtain or provide necessary interaction details before ending the call?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(19, 'AM Home', 'Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly and wait for an answer?', 'N/A', 'Respond appropriately - Used the right Statement/Response based of customer\'s concern.', 'Did agent provide the most appropriate solution and use appropriate choice of words.', 'Did the agent follow up with the customer within the agreed timeframe and thank the caller for placing the call on hold?', 'The agent thanked the customer for taking the call?', 'N/A'),
(20, 'AM Home', 'Did agent mention the Brand name of the company?', 'N/A', 'Acknowledge all customer concerns - Made sure that all customer concerns are provided with the right solution (As long as aTimeframe is provided)', 'Was the agent able to set a clear expectations for special actions or request (Fax or Emails)', 'Agent approach - assertiveness, confident and comprehension?', 'N/A', 'N/A'),
(21, 'AM Home', 'Did agent verify the caller’s name?', 'N/A', 'Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline.', 'The agent received prior authorization when processing payment? (Offered or provided a reference for the payment)', 'Pleasantries / Courtesies - use of courtesy words such as \"Please\", \"May/Can I? Used Thank You\", Kindly\"?', 'N/A', 'N/A'),
(22, 'AM Home', 'Was the agent able to verify the complete Name, Address, or Telephone Number for account verification?', 'N/A', 'N/A', 'Did agent collect customer\'s contact information for all situations that requires a call-back?', 'Did the agent avoid long silence/dead air? (10 seconds)', 'N/A', 'N/A'),
(23, 'AM Home', 'Did the agent offer assistance to the caller?', 'N/A', 'N/A', 'N/A', 'Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(24, 'AM Home', 'N/A', 'N/A', 'N/A', 'N/A', 'Did the agent avoid using negative phrases, Like \"can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(25, 'AM Home', 'N/A', 'N/A', 'N/A', 'N/A', 'Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(26, 'AM Home', 'N/A', 'N/A', 'N/A', 'N/A', 'Did agent demonstrate active listening & rate of speech - appropriate pace throughout the call?', 'N/A', 'N/A'),
(27, 'AM Home', 'N/A', 'N/A', 'N/A', 'N/A', 'The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid addressing the customer Sir or Ma\'am)', 'N/A', 'N/A'),
(28, 'AM Home', 'N/A', 'N/A', 'N/A', 'N/A', 'Did the agent listen and allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(29, 'AM Home', 'N/A', 'N/A', 'N/A', 'N/A', 'Did agent use vernacular words that was heard during the call?', 'N/A', 'N/A'),
(30, 'AM Home', 'N/A', 'N/A', 'N/A', 'N/A', 'Was the agent able to maintain acceptable pronunciation? (Neutral and understandable accent)', 'N/A', 'N/A'),
(31, 'AM Home', 'N/A', 'N/A', 'N/A', 'N/A', 'Was the agent able to use the correct/professional choices of words through out the call?', 'N/A', 'N/A'),
(32, 'Dime Trading (Nesstoy)', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply?', 'N/A', '• Correct assessment of Issue  - Correctly identified customer\'s concern/issue based on information presented?', '• Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements with appropriate tone (I understand. “I\'m sorry you\'ve had to deal with this,etc..)', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe ( Should not exceed 2 mins)', '• Did the agent offer further assistance or ask customer if they had any additional questions before closing the call?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(33, 'Dime Trading (Nesstoy)', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly and wait for an answer?', 'N/A', '• Respond appropriately - Used the right statement/response based of customer\'s concern?', '• Was the agent able to probe appropriately to better understand situation?', '• Did the agent follow up with customer within the agreed timeframe and thank the caller for placing the call on hold?', '• Was the agent able to set a clear expectations for special actions or request (Fax, re-process, callbacks) before ending the call?', 'N/A'),
(34, 'Dime Trading (Nesstoy)', '• Did agent mention the Brand name of the company?', 'N/A', '• Acknowledge/Resolve all customer concerns - Made sure that all customer concerns are provided with the right solution?', '• Did agent provide the most appropriate solution?', '• Agent approach - assertiveness and comprehension?', '• The agent thanked the customer for calling?', 'N/A'),
(35, 'Dime Trading (Nesstoy)', '• Did agent verify the caller’s name?', 'N/A', '• Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline?', '• Was the agent able to set a clear expectations for special actions or request?  (Emalis or Callbacks 5 -7 business days an email is sent as a notification/reference number)', '• Pleasantries / Courtesies -use of courtesy words such as, \"Please\", \"May/Can I? Used Thank You\", Kindly\"? ', 'N/A', 'N/A'),
(36, 'Dime Trading (Nesstoy)', '• Was the agent able to verify the complete name or address for verification? (Proof of purchase, order number)', 'N/A', 'N/A', '• Did agent collect customer\'s contact information for all situations that requires a call-back?', '• Did the agent avoid long silence/dead air? (10 seconds)', 'N/A', 'N/A'),
(37, 'Dime Trading (Nesstoy)', '• Did the agent offer assistance to the caller?', 'N/A', 'N/A', '• Did the agent send an email as necessary?', '• Did the agent avoid using negative phrases, Like \"Can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(38, 'Dime Trading (Nesstoy)', 'N/A', 'N/A', 'N/A', '• The agent received prior authorization when processing payment? (Offered a reference for the payment)', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(39, 'Dime Trading (Nesstoy)', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent demonstrate active listening & rate of speech - Appropriate pace?', 'N/A', 'N/A'),
(40, 'Dime Trading (Nesstoy)', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam)', 'N/A', 'N/A'),
(41, 'Dime Trading (Nesstoy)', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent listen and allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(42, 'Dime Trading (Nesstoy)', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation? (Neutral and understandable accent)', 'N/A', 'N/A'),
(43, 'Dime Trading (Nesstoy)', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain professional choices of words through out the call?', 'N/A', 'N/A'),
(44, 'Dime Trading (Nesstoy)', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent use vernacular words that was heard during the call?', 'N/A', 'N/A'),
(45, 'Dime Trading (Nesstoy)', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using too many fillers, \'umm, uuuhh and Jargon/Slang words, \"yea, nope, naw, ain\'t, uh-huh, etc....', 'N/A', 'N/A'),
(46, 'Edison', 'Was the call answered within the allowable time? (2 seconds) - If agent is on another call or working on a task, this will not apply.', 'N/A', 'N/A', 'Respond appropriately - Used the right statement/response based on customer\'s concern?', 'Did the agent politley advise the caller they\'ll be connecting to the designated person?', 'Did the agent offer further assistance or ask customer if they had any additional questions before closing the call? (Only applys to ext 246 & 247)', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(47, 'Edison', 'Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly?', 'N/A', 'N/A', 'Acknowledge/Resolve all customer concerns - Made sure that all customer concerns are provided with the right solution.', 'Agent approach -  assertiveness, confident and comprehension?', 'Was the agent able to set a clear expectations for special actions or request (Send an email or Callbacks) before ending the call?', 'N/A'),
(48, 'Edison', 'Did agent mention the Brand name of the company?', 'N/A', 'N/A', 'Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline.', 'Pleasantries / Courtesies - use of courtesy words such as \"Please, \"May/Can I? Used Thank You\", Kindly\"?', 'Did agent thank the customer for calling?', 'N/A'),
(49, 'Edison', 'Did agent verify the caller’s name?', 'N/A', 'N/A', 'Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements with appropriate tone (I understand. “I\'m sorry you\'ve had to deal with this, etc..) (If appropriate and if there is an opportunity).', 'Did the agent maintain professional, polite,proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(50, 'Edison', 'Did the agent offer to direct the call or ask who would theylike to speak with?', 'N/A', 'N/A', 'Did agent collect customer\'s contact information for all situations that requires a call-back?', 'Did the agent avoid using too many fillers, \'umm, uuuhh Jargon/Slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(51, 'Edison', 'N/A', 'N/A', 'N/A', 'Did the agent send an email as necessary?', 'Did the agent avoid using negative phrases, Like \"can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(52, 'Edison', 'N/A', 'N/A', 'N/A', 'N/A', 'Did agent demonstrate active listening & rate of speech - appropriate pace throughout the call?', 'N/A', 'N/A'),
(53, 'Edison', 'N/A', 'N/A', 'N/A', 'N/A', 'Did the agent allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(54, 'Edison', 'N/A', 'N/A', 'N/A', 'N/A', 'Did agent use vernacular words that was heard during the call?', 'N/A', 'N/A'),
(55, 'Edison', 'N/A', 'N/A', 'N/A', 'N/A', 'Was the agent able to maintain acceptable pronunciation of words used? (Neutral and understandable accent)', 'N/A', 'N/A'),
(56, 'Edison', 'N/A', 'N/A', 'N/A', 'N/A', 'The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam)', 'N/A', 'N/A'),
(57, 'Exchange and Connectel', '• Was the call answered within the allowable time? (2 seconds)', 'N/A', '• Correct assessment of Issue - Correctly identified customer\'s concern/issue based on information presented.', '• Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements with appropriate tone (I understand. “I\'m sorry you\'ve had to deal with this, etc..)', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe (Should not exceed 2 mins)', '• Did the agent offer further assistance or ask customer if they had any additional questions before closing the call?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?'),
(58, 'Exchange and Connectel', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?', 'N/A', '• Respond appropriately  - Used the right statement/response based of customer\'s concern.', '• Was the agent able to probe appropriately to better understand situation?', '• Did the agent follow up with the customer within the agreed timeframe and thank the caller for placing the call on hold?', '• Was the agent able to obtain or provide necessary interaction details before ending the call?', 'N/A'),
(59, 'Exchange and Connectel', '• Did agent mention the Brand name of the company?', 'N/A', '• Acknowledge/Resolve customer concerns - Made sure that all customer concerns are provided with the right solution.', '• Did agent provide the most appropriate solution and use appropriate choice of words?', '• Agent approach - assertiveness, confident and comprehension?', '• The agent thanked the customer for calling?', 'N/A'),
(60, 'Exchange and Connectel', '• Did agent verify the caller’s name?', 'N/A', '• Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline.', '• Did the agent (Satisfactory) resolve the customer’s issue, or provide a timeframe for resolution? (As much as I\'d like to provde an estimation, please allow us more time)', '• Pleasantries / Courtesies - use of courtesy words such as \"Please\", \"May/Can I? Used Thank You\", Kindly\"?', 'N/A', 'N/A'),
(61, 'Exchange and Connectel', '• Was the agent able to verify the complete name and address, or telephone number for account verification?', 'N/A', '• Did agent collect customer\'s contact information for all situations that requires a call-back?', '• Was the agent able to set a clear expectations for special actions or request (Fax, emalis, callbacks)', '• Did the agent avoid long silence/dead air? (10 seconds)', 'N/A', 'N/A'),
(62, 'Exchange and Connectel', '• Did agent verifiy the phone number(s) in question?', 'N/A', 'N/A', '• The agent received prior authorization when processing payment? (Offered or provided a reference for the payment)', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(63, 'Exchange and Connectel', '• Did the agent offer assistance to the caller?', 'N/A', 'N/A', '• The agent recommended the most appropriate product, service, or pricing plan?', '• Did the agent avoid using negative phrases, Like \"can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(64, 'Exchange and Connectel', 'N/A', 'N/A', 'N/A', '• Did the agent send an email as necessary?', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(65, 'Exchange and Connectel', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent demonstrate active listening & rate of speech - appropriate pace throughout the call?', 'N/A', 'N/A'),
(66, 'Exchange and Connectel', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam)', 'N/A', 'N/A'),
(67, 'Exchange and Connectel', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent listen and allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(68, 'Exchange and Connectel', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent avoid using vernacular words that was heard during the call?', 'N/A', 'N/A'),
(69, 'Exchange and Connectel', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation? (Neutral and understandable accent)', 'N/A', 'N/A'),
(70, 'Exchange and Connectel', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to use the correct/professional choices of words through out the call?', 'N/A', 'N/A'),
(71, 'First Health Pro', '• Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements. (Sure, ok uh huh, I understand.', 'N/A', '• Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements. (Sure, ok uh huh, I understand.', '• Did agent collect customer\'s contact information for all situations that requires a call-back?', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe (Should not exceed 2 mins)', '•Was the agent able to obtain,  provide, or offer necessary interaction details before ending the call? (If call results to an appointment)', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(72, 'First Health Pro', '• Did the agent provide the reason or clearly set an agenda duringt the of the call? (In between of call)', 'N/A', '• Was the agent able to probe appropriately to better understand the situation?  - Not unless it\'s an appointment call', '• Did the agent send an email as necessary?', '• Did the agent follow up with the customer within the agreed timeframe and thank the caller for placing the call on hold?', '• Was the agent able to set a clear expectations for special actions or request before ending the call? (applicable for appointment calls only)', 'N/A'),
(73, 'First Health Pro', '• Did agent mention the Brand name of the company?', 'N/A', '• Did agent provide the most appropriate details and use appropriate choice of words?', '• Did the agent provide correct contact details?', '•Agent approach - friendliness, assertiveness, comprehension?', '• The agent thanked the customer for taking the call?', 'N/A'),
(74, 'First Health Pro', '• Did agent verify the caller’s name?', 'N/A', 'N/A', 'N/A', '• Pleasantries / Courtesies - use of courtesy words such as \"Please\", \"May/Can I? Used Thank You\", Kindly\"?', 'N/A', 'N/A'),
(75, 'First Health Pro', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid long silence/dead air? (10 seconds)', 'N/A', 'N/A'),
(76, 'First Health Pro', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using negative phrases, Like \"can\'t, don\'t, there\'s no way? ( Use postive script)', 'N/A', 'N/A'),
(77, 'First Health Pro', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Sound sarcastic or condescending)', 'N/A', 'N/A'),
(78, 'First Health Pro', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent demonstrate active listening & rate of speech - Appropriate pace?', 'N/A', 'N/A'),
(79, 'First Health Pro', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent listen and allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(80, 'First Health Pro', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent use vernacular words that was heard during the call?', 'N/A', 'N/A'),
(81, 'First Health Pro', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation? (Neutral and understandable accent)', 'N/A', 'N/A'),
(82, 'First Health Pro', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain professional choices of words through out the call?', 'N/A', 'N/A'),
(83, 'First Health Pro', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... Appropriate response would be Yes, no , sure)', 'N/A', 'N/A'),
(84, 'Five Star CARE', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply', 'N/A', '• Did the agent assess and acknowledge the caller\'s concern immediately? (Understood the caller)', '• Was the agent able to set expectations regarding follow throughs either via call/text or emails? (Handle the situation timely)', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe ( Should not exceed 2 mins) Incase the call needs to be placed on hold.', '• Did the agent offer further assistance or ask customer if they had any additional questions before closing the call? (An opportunity)', 'CLIENT FEEDBACK  UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(85, 'Five Star CARE', '• Was the agent able to use appropriate greeting, (Thank the customer) introduce themselves properly?', 'N/A', '• Was the agent able to follow protocols and guidelines in resolving customer needs/concern?', '• Was the agent able to provide accurate and relevant information? (Correct address & Correct schedules)', '• Did the agent follow up with customer within the agreed timeframe and thank the caller for placing the call on hold? ( Please bare with Me)', '• The agent thanked the customer for calling?', 'N/A'),
(86, 'Five Star CARE', '• Did agent mention the Brand name of the company?', 'N/A', '• Was the agent able to navigate tools effectively in providing the best resolution?', '• Was the agent able to set clear expectations for special actions and request for timesheets (Fax timesheets)', '• Pleasantries / Courtesies -use of courtesy words such as \"Please\", \"May I /Can I? Used Thank You\", Kindly\"?', 'N/A', 'N/A'),
(87, 'Five Star CARE', '• Did the agent confirm the caller\'s postion? (Confirming the title of the caller - (Aid, RN, LPN, CRA) - Will ONLY apply if it\'s the first time calling.', 'N/A', 'N/A', '• Was the agent able to take ownership and provide a strong assurance statement that concern will be dealt with accordingly? (Agent will make a call immediately to the staff supervisor)', '• Did the agent avoid long silence/dead air? (10 seconds dead air)', 'N/A', 'N/A'),
(88, 'Five Star CARE', '• Did agent verify the caller’s name?', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... ... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(89, 'Five Star CARE', '• Did the agent offer assistance to the caller? (How can I help)', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using negative phrases, Like \" Can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(90, 'Five Star CARE', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent was friendly, confident, polite and professional throughout the call? (Tone of voice)', 'N/A', 'N/A'),
(91, 'Five Star CARE', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent demonstrate active listening skills?', 'N/A', 'N/A'),
(92, 'Five Star CARE', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation used or maintain professional choices of words throughout the call?', 'N/A', 'N/A'),
(93, 'Five Star CARE', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent use vernacular words when talkng to the caller or maintained acceptable pronunciation of words used?', 'N/A', 'N/A'),
(94, 'Five Star CARE', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent allow the customer to talk without interrupting? (Did not intentionally talk over the caller)', 'N/A', 'N/A'),
(95, 'Five Star CARE', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent sound clear and confident throughout the call?', 'N/A', 'N/A'),
(96, 'Five Star CARE', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam)', 'N/A', 'N/A'),
(97, 'Five Star Recruitment', '• Was the agent able to introduce himself/herself appropriately?', 'N/A', 'N/A', '• Was agent able to verify if the license of the caller is valId (CNA, LPN, or RN)', '• Pleasantries / Courtesies -use of courtesy words such as \"Please\", \"May/Can I? Used Thank You\", Kindly\"?', '• Did the agent confrim additional information before closing the call', 'CLIENT FEEDBACK / UNPROFESSIONAL BEHAVIOR / CALL AVOIDANCE?'),
(98, 'Five Star Recruitment', '• Did agent mention the Brand name of the company?', 'N/A', 'N/A', '• Respond appropriately - Used the right statement/response based of customer\'s concern.', '• Agent approach - assertiveness, confident and comprehension?', '• The agent adequately resolved the customer’s issue, or provided a timeframe for resolution', 'N/A'),
(99, 'Five Star Recruitment', '• Did the agent provide the reason of the call?', 'N/A', 'N/A', '• Did the agent send an email to as necessary?', '• Did the agent avoid long silence/dead air? (10 seconds)', '• The agent thank the customer for taking the call', 'N/A'),
(100, 'Five Star Recruitment', '• Was the agent able to confirm the correct person needed to call?', 'N/A', 'N/A', '• Was the agent able to set a clear expectations for special actions or request ( callbacks) before ending the call?', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... ... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(101, 'Five Star Recruitment', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using negative phrases , Like \"Can\'t, don\'t, there\'s no way? ( Use postive script) Let\'s deliver in a mannerable tone', 'N/A', 'N/A'),
(102, 'Five Star Recruitment', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent demonstrate active listening & rate of speech - appropriate pace throughout the call', 'N/A', 'N/A'),
(103, 'Five Star Recruitment', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(104, 'Five Star Recruitment', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam)', 'N/A', 'N/A'),
(105, 'Five Star Recruitment', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent listen and allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(106, 'Five Star Recruitment', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent use vernacular words that was heard during the call?', 'N/A', 'N/A'),
(107, 'Five Star Recruitment', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain professional choices of words through out the call?', 'N/A', 'N/A'),
(108, 'Five Star Staffing', '• Did the agent confirm the caller\'s postion? (Confirming the title of the caller - (Aid, RN, LPN, CRA) - Will ONLY apply if it\'s the first time calling.', 'N/A', '• Did the agent assess and acknowledge the caller\'s concern immediately? (Understood the caller)', '• Was the agent able to set expectations regarding follow throughs either via call/text or emails? (Handle the situation timely)', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe ( Should not exceed 2 mins) Incase the call needs to be placed on hold.', '•Did the agent offer further assistance or ask customer if they had any additional questions before closing the call? (An opportunity)', 'CLIENT FEEDBACK  UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(109, 'Five Star Staffing', '• Did agent verify the caller’s name?', 'N/A', '• Was the agent able to follow protocols and guidelines in resolving customer needs/concern?', '• Was the agent able to provide accurate and relevant information? (Correct address & Correct schedules)', '• Did the agent follow up with customer within the agreed timeframe and thank the caller for placing the call on hold? ( Please bare with Me)', '• The agent thanked the customer for calling?', 'N/A'),
(110, 'Five Star Staffing', '• Did the agent offer assistance to the caller? (How can I help)', 'N/A', '• Was the agent able to navigate tools effectively in providing the best resolution?', '• Was the agent able to set clear expectations for special actions and request for timesheets (Fax timesheets)', '• Pleasantries / Courtesies -use of courtesy words such as \"Please\", \"May I /Can I? Used Thank You\", Kindly\"?', 'N/A', 'N/A'),
(111, 'Five Star Staffing', 'N/A', 'N/A', 'N/A', '• Was the agent able to take ownership and provide a strong assurance statement that concern will be dealt with accordingly? (Agent will make a call immediately to the staff supervisor)', '• Did the agent avoid long silence/dead air? (10 seconds dead air)', 'N/A', 'N/A'),
(112, 'Five Star Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... ... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(113, 'Five Star Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '•Did the agent avoid using negative phrases, Like \" Can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(114, 'Five Star Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent was friendly, confident, polite and professional throughout the call? (Tone of voice)', 'N/A', 'N/A'),
(115, 'Five Star Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent demonstrate active listening skills?', 'N/A', 'N/A'),
(116, 'Five Star Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation used or maintain professional choices of words throughout the call?', 'N/A', 'N/A'),
(117, 'Five Star Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent use vernacular words when talkng to the caller or maintained acceptable pronunciation of words used?', 'N/A', 'N/A'),
(118, 'Five Star Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent allow the customer to talk without interrupting? (Did not intentionally talk over the caller)', 'N/A', 'N/A'),
(119, 'Five Star Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent sound clear and confident throughout the call?', 'N/A', 'N/A'),
(120, 'Five Star Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam)', 'N/A', 'N/A'),
(121, 'MBH Services', '• Was the agent able to introduce himself/herself appropriately?', 'N/A', 'N/A', '• Was the agent able to clearly communicate the request needed for the call? (DOS, charge amount, procedure codes)', '• Agent approach - assertiveness, confident and comprehension?', '• Was the agent able to obtain the Reference number for the call?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(122, 'MBH Services', '• Did the agent provide the reason or clearly set an agenda at the start of the call?', 'N/A', 'N/A', '• Was the agent able to provide correct information being asked by carrier representative?', '• Pleasantries / Courtesies -use of courtesy words such as \"Please\", \"May/Can I? Used Thank You\", Kindly\"?', '• Was the agent able to obtain necessary interaction details before ending the call?', 'N/A'),
(123, 'MBH Services', '• Did agent present his/her name and telephone number when asked from the caller?', 'N/A', 'N/A', '• Was the agent able to probe appropriately to better understand situation or status of claims?', '• Did the agent avoid long silence/dead air? (10 seconds)', '• Was the agent able to thank the carrier representative for their assistance?', 'N/A'),
(124, 'MBH Services', '• Did agent verify the caller’s name?', 'N/A', 'N/A', '• Was the agent able to provide rebuttals when necessary', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(125, 'MBH Services', 'N/A', 'N/A', 'N/A', '• Was the agent able to identify if carrier\'s response is satisfactory?', '• Did the agent avoid using negative phrases, Like \"can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(126, 'MBH Services', 'N/A', 'N/A', 'N/A', '• Was the agent able to set a clear expectations for special actions or request (Fax, re-process, callbacks)', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(127, 'MBH Services', 'N/A', 'N/A', 'N/A', '• Was the agent able to provide correct details of the Facilities that they are calling for?', '• Did agent demonstrate active listening & rate of speech - appropriate pace throughout the call?', 'N/A', 'N/A'),
(128, 'MBH Services', 'N/A', 'N/A', 'N/A', '• Was the agent able to provide correct details of the Patient that they are calling for?', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam?', 'N/A', 'N/A'),
(129, 'MBH Services', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent listen and allow the carrier to talk without interrupting?', 'N/A', 'N/A'),
(130, 'MBH Services', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent not use vernacular words that was heard during the call?', 'N/A', 'N/A'),
(131, 'MBH Services', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation? (Neutral and understandable accent)', 'N/A', 'N/A'),
(132, 'MBH Services', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to use the correct/professional choices of words through out the call?', 'N/A', 'N/A'),
(133, 'MBH Services', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam)', 'N/A', 'N/A'),
(134, 'Medex', '• Was the agent able to introduce himself/herself appropriately?', 'N/A', 'N/A', '• Did the agent provide the correct Patient\'s information to the carrier? Patient\'s Name, Date of Birth and necessary verification)', '• Agent approach - assertiveness, confident and comprehension?', '• Was the agent able to obtain the Reference number for the call?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(135, 'Medex', '• Did the agent provide the reason or clearly set an agenda at the start of the call?', 'N/A', 'N/A', '• Did the agent collect the correct benefits  and all neccessary information given by the insurance agent?', '• Did the agent avoid using negative phrases, Like \"can\'t, don\'t, there\'s no way? (Use postive script)', '• Was the agent able to obtain necessary interaction details before ending the call?', 'N/A'),
(136, 'Medex', '• Did agent mention the Brand name of the company?', 'N/A', 'N/A', '• Was the agent able to provide correct details of the Physician/Facilities that they are calling for?', '• Pleasantries / Courtesies - use of courtesy words such as \"Please\", \"May/Can I? Used Thank You\", Kindly\"?', '• Was the agent able to thank the carrier representative for their assistance?', 'N/A'),
(137, 'Medex', '• Did agent provide all the information that was asked from the caller?', 'N/A', 'N/A', '• Was the agent able to identify if carrier\'s response is satisfactory?', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(138, 'Medex', '• Did agent verify the caller’s name? (No need to ask if the name was already provided)', 'N/A', 'N/A', 'N/A', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(139, 'Medex', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent demonstrate active listening & rate of speech - appropriate pace throughout the call?', 'N/A', 'N/A'),
(140, 'Medex', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent listen and allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(141, 'Medex', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent avoid using vernacular words that was heard during the call?', 'N/A', 'N/A'),
(142, 'Medex', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation? (Neutral and understandable accent)', 'N/A', 'N/A'),
(143, 'Medex', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to use the correct/professional choices of words through out the call?', 'N/A', 'N/A'),
(144, 'Medex', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid long silence/dead air? (10 seconds)', 'N/A', 'N/A'),
(145, 'Medex', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid addressing the customer Sir or Mam)', 'N/A', 'N/A'),
(146, 'Medical Supply Depot', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply', 'N/A', '• Correct assessment of Issue - Correctly identified customer\'s concern/issue based on information presented?', '• Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements and appropriate tone( I understand. “I\'m sorry you\'ve had to deal with this\")', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe (Should not exceed 2 mins)', '• Did the agent offer further assistance or ask customer if they had any additional questions before closing the call?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL/ AVOIDANCE?'),
(147, 'Medical Supply Depot', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?', 'N/A', '• Respond appropriately - Used the right statement/response based on customer\'s concern?', '• Was the agent able to probe appropriately to better understand the situation?', '• Did the agent follow up with customer within the agreed upon timeframe and thank the caller for placing the call on hold?', '• Was the agent able to set a clear expectations for special actions or request (Re-process, send an email or callbacks) before ending the call?', 'N/A'),
(148, 'Medical Supply Depot', '• Did agent mention the Brand name of the company', 'N/A', '• Acknowledge/Resolve customer concerns - Made sure that all customer concerns are provided with the right solution?', '• Did the agent (Satisfactory) resolve the customer’s issue, or provide a timeframe for resolution? (For specail orders ONLY time frame is 2 weeks)', '• Agent approach -  assertiveness, confident and comprehension?', '• Did agent thank the customer for calling?', 'N/A'),
(149, 'Medical Supply Depot', '• Did agent verify the caller’s name?', 'N/A', '• Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline?', '• Did the agent ask for pertinent information or provide (tracking #, delivery date, the estimated date of availability) to find a solution?', '• Pleasantries / Courtesies - use of courtesy words such as \"Please, \"May/Can I? Used Thank You\", Kindly\"?', 'N/A', 'N/A'),
(150, 'Medical Supply Depot', '• Was the agent able to verify the complete name and address, or telephone number, or sales order #? (Applys ONLY for placing an order)', 'N/A', 'N/A', '• Was the agent able to set clear expectations on escalations? (Reach out to the Supervicor or offer a callback)', '• Did the agent avoid long silence/dead air? (10 seconds)', 'N/A', 'N/A'),
(151, 'Medical Supply Depot', 'N/A', 'N/A', 'N/A', '• Did agent collect customer\'s contact information for all situations that requires a call-back?', '• Did the agent avoid using too many fillers, \'umm, uuuhh and Jargon/Slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(152, 'Medical Supply Depot', 'N/A', 'N/A', 'N/A', '• Did the agent send an email as necessary?', '• Did the agent avoid using negative phrases, Like \"can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(153, 'Medical Supply Depot', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(154, 'Medical Supply Depot', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent demonstrate active listening & rate of speech - appropriate pace throughout the call?', 'N/A', 'N/A'),
(155, 'Medical Supply Depot', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? ( Avoid Mam/Sir)', 'N/A', 'N/A'),
(156, 'Medical Supply Depot', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent listen and allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(157, 'Medical Supply Depot', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent use vernacular words that was heard during the call?', 'N/A', 'N/A'),
(158, 'Medical Supply Depot', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation of words used? (Neutral and understandable accent)', 'N/A', 'N/A'),
(159, 'Medical Supply Depot', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to use the correct professional choices of words through out the call?', 'N/A', 'N/A');
INSERT INTO `qav_account_categories` (`id`, `account`, `opening_spiel`, `account_verification`, `resolution_of_issue`, `process_compliance`, `communication_skill`, `proper_closing`, `zero_tolerance`) VALUES
(160, 'MongoTEL', 'Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply', 'N/A', 'Correct assessment of Issue - Correctly identified customer\'s concern/issue based on information presented.', 'Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements with appropriate tone (I understand. “I\'m sorry you\'ve had to deal with this,etc..)', 'Did the agent ask permission to place the call on hold/ transfer and provide a timeframe (Should not exceed 2 mins - Case to case calls)', 'Did the agent offer further assistance or ask customer if they had any additional questions before closing the call?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?'),
(161, 'MongoTEL', 'Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly and mention the brand name? (wait for an answer)', 'N/A', 'Respond appropriately - Used the right statement/response based of customer\'s concern.', 'Was the agent able to probe appropriately to better understand situation', 'Did the agent follow up within the agreed timeframe and thank the customer for placing the call on hold?', 'The agent thanked the customer for calling', 'N/A'),
(162, 'MongoTEL', 'Did agent verify the caller’s name, company name, and the telephone in question?', 'N/A', 'Acknowledge/Resolve all customer concerns - Made sure that all customer concerns are provided with the right solution.', 'Did agent provide the most appropriate solution and use appropriate choice of words.', 'Agent approach - assertiveness, comprehension', 'N/A', 'N/A'),
(163, 'MongoTEL', 'Did the agent offer assistance to the caller?', 'N/A', 'Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline.', 'Did the agent (Satisfactory) resolve the customer’s issue, or provide a timeframe for resolution? (As much as I\'d like to provde a timeframe, please allow us more time - Case to case basis)', 'Pleasantries / Courtesies - use of courtesy words such as \"Please\", \"May/Can I? Used Thank You\", Kindly\"?', 'N/A', 'N/A'),
(164, 'MongoTEL', 'Did agent collect customer\'s contact information for all situations that requires a call-back?', 'N/A', 'N/A', 'Was the agent able to set a clear expectations for special actions or request (Emalis or Callbacks)', 'Did the agent avoid long silence/dead air? (10 seconds)', 'N/A', 'N/A'),
(165, 'MongoTEL', 'N/A', 'N/A', 'N/A', 'The agent received prior authorization when processing payment? (Did provide or offer a refernece #)', 'Did the agent avoid using negative phrases, Like \"Can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(166, 'MongoTEL', 'N/A', 'N/A', 'N/A', 'The agent recommended the most appropriate product, service, or pricing plan', 'Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(167, 'MongoTEL', 'N/A', 'N/A', 'N/A', 'N/A', 'Did agent demonstrate active listening & rate of speech - Appropriate pace?', 'N/A', 'N/A'),
(168, 'MongoTEL', 'N/A', 'N/A', 'N/A', 'N/A', 'The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once?', 'N/A', 'N/A'),
(169, 'MongoTEL', 'N/A', 'N/A', 'N/A', 'N/A', 'Did the agent listen and allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(170, 'MongoTEL', 'N/A', 'N/A', 'N/A', 'N/A', 'Was the agent able to maintain acceptable pronunciation? (Neutral and understandable accent)', 'N/A', 'N/A'),
(171, 'MongoTEL', 'N/A', 'N/A', 'N/A', 'N/A', 'Was the agent able to maintain professional choices of words through out the call?', 'N/A', 'N/A'),
(172, 'MongoTEL', 'N/A', 'N/A', 'N/A', 'N/A', 'Did agent use vernacular words that was heard during the call?', 'N/A', 'N/A'),
(173, 'MongoTEL', 'N/A', 'N/A', 'N/A', 'N/A', 'Did the agent avoid using too many fillers, \'umm, uuuhh and Jargon/Slang words, \"yea, nope, naw, ain\'t, uh-huh, etc...', 'N/A', 'N/A'),
(174, 'Quest Staffing', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply', 'N/A', '• Did the agent assess and acknowledge the caller\'s concern immediately? (Understood the caller)', '• Was the agent able to set expectations regarding follow throughs either via call/text or emails? (Handle the situation timely)', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe ( Should not exceed 2 mins) Incase the call needs to be placed on hold.', '• Did the agent offer further assistance or ask customer if they had any additional questions before closing the call? (An opportunity)', 'CLIENT FEEDBACK  UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(175, 'Quest Staffing', '• Was the agent able to use appropriate greeting, (Thank the customer) introduce themselves properly?', 'N/A', '• Was the agent able to follow protocols and guidelines in resolving customer needs/concern?', '• Was the agent able to provide accurate and relevant information? (Correct address & Correct schedules)', '• Did the agent follow up with customer within the agreed timeframe and thank the caller for placing the call on hold? ( Please bare with Me)', '• The agent thanked the customer for calling?', 'N/A'),
(176, 'Quest Staffing', '• Did agent mention the Brand name of the company?', 'N/A', '• Was the agent able to navigate tools effectively in providing the best resolution?', '• Was the agent able to set clear expectations for special actions and request for timesheets (Fax timesheets)', '• Pleasantries / Courtesies -use of courtesy words such as \"Please\", \"May I /Can I? Used Thank You\", Kindly\"?', 'N/A', 'N/A'),
(177, 'Quest Staffing', '• Did the agent confirm the caller\'s postion? (Confirming the title of the caller - (Aid, RN, LPN, CRA) - Will ONLY apply if it\'s the first time calling.', 'N/A', 'N/A', '• Was the agent able to take ownership and provide a strong assurance statement that concern will be dealt with accordingly? (Agent will make a call immediately to the staff supervisor)', '• Did the agent avoid long silence/dead air? (10 seconds dead air)', 'N/A', 'N/A'),
(178, 'Quest Staffing', '• Did agent verify the caller’s name?', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... ... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(179, 'Quest Staffing', '• Did the agent offer assistance to the caller? (How can I help)', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using negative phrases, Like \" Can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(180, 'Quest Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent was friendly, confident, polite and professional throughout the call? (Tone of voice)', 'N/A', 'N/A'),
(181, 'Quest Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent demonstrate active listening skills?', 'N/A', 'N/A'),
(182, 'Quest Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation used or maintain professional choices of words throughout the call?', 'N/A', 'N/A'),
(183, 'Quest Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent use vernacular words when talkng to the caller or maintained acceptable pronunciation of words used?', 'N/A', 'N/A'),
(184, 'Quest Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent allow the customer to talk without interrupting? (Did not intentionally talk over the caller)', 'N/A', 'N/A'),
(185, 'Quest Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent sound clear and confident throughout the call?', 'N/A', 'N/A'),
(186, 'Quest Staffing', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam)', 'N/A', 'N/A'),
(187, 'Rafieh Pharmacy', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly and wait for an answer?', 'N/A', '• Correct assessment of Issue - Correctly identified customer\'s concern/issue based on information presented.', '• Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements with appropriate tone (I understand. “I\'m sorry you\'ve had to deal with this, etc..)', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe (Should not exceed 2 mins- Initial Hold)', '• Was the agent able to obtain or provide necessary interaction details before ending the call?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(188, 'Rafieh Pharmacy', '• Did the agent provide the reason or clearly set an agenda at the start of the call?', 'N/A', '• Respond appropriately - Used the right statement/response based of customer\'s concern.', '• Was the agent able to probe appropriately to better understand situation?', '• Did the agent follow up with the customer within the agreed timeframe and thank the caller for placing the call on hold?', '• The agent thanked the customer for taking the call?', 'N/A'),
(189, 'Rafieh Pharmacy', '• Did agent mention the Brand name of the company?', 'N/A', '• Acknowledge/Provide and made sure that all Patient\'s Information are correct?', '• Did agent provide the most appropriate solution?', '• Agent approach - assertiveness, confident and comprehension?', 'N/A', 'N/A'),
(190, 'Rafieh Pharmacy', '• Was the agent able to provide correct details of the Patient\'s name they are calling for?', 'N/A', '• Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline.', '• Did agent collect patient\'s contact information for all situations that requires a call-back? (If Neccessary)', '• Pleasantries / Courtesies - use of courtesy words such as \"Please\", \"May/Can I? Used Thank You\", Kindly\"?', 'N/A', 'N/A'),
(191, 'Rafieh Pharmacy', '• Did the agent get all necessary information (Doctor\'s Name, Phone Number or Address', 'N/A', 'N/A', '• Was the agent able to set a clear expectations for special actions - (Contacting the Doctor for request)', '• Did the agent avoid long silence/dead air? (10 seconds)', 'N/A', 'N/A'),
(192, 'Rafieh Pharmacy', 'N/A', 'N/A', 'N/A', '• Did the agent send an email as necessary?', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(193, 'Rafieh Pharmacy', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using negative phrases, Like, \"can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(194, 'Rafieh Pharmacy', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(195, 'Rafieh Pharmacy', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent demonstrate active listening & rate of speech - appropriate pace throughout the call?', 'N/A', 'N/A'),
(196, 'Rafieh Pharmacy', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam)', 'N/A', 'N/A'),
(197, 'Rafieh Pharmacy', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent listen and allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(198, 'Rafieh Pharmacy', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent use vernacular words that was heard during the call?', 'N/A', 'N/A'),
(199, 'Rafieh Pharmacy', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation? (Neutral and understandable accent)', 'N/A', 'N/A'),
(200, 'Rafieh Pharmacy', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to use the correct/professional choices of words through out the call?', 'N/A', 'N/A'),
(201, 'Reside New York', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply', 'N/A', '• Was the agent able to identify customer\'s concern/issue based on information presented?', '• Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements and appropriate tone( I understand. “I\'m sorry you\'ve had to deal with this\")', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe (Should not exceed 2 mins)', '• Did the agent offer further assistance or ask customer if they had any additional questions before closing the call?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR / CALL AVOIDANCE?'),
(202, 'Reside New York', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?', 'N/A', '• Respond appropriately - Used the right statement/response based on customer\'s concern?', '• Was the agent able to probe appropriately to better understand the situation?', '• Did agent thank the caller for placing the call on hold? (Especially exceeding the hold time)', '• Was the agent able to obtain necessary interaction details before ending the call?', 'N/A'),
(203, 'Reside New York', '• Did agent mention the Brand name of the company?', 'N/A', '• Acknowledge/Resolve all customer concerns - Made sure that all customer concerns are provided with the right solution?', '• Did the agent ask for pertinent information (project name, log #) to find a solution?', '• Agent approach - assertiveness, confident and comprehension?', '• Did agent thank the customer for calling?', 'N/A'),
(204, 'Reside New York', '• Did the agent attempt to get the caller\'s name?', 'N/A', '• Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline?', '• Was the agent able to set a clear expectations on escalations? (Send an email to the Project manager)', '• Pleasantries / Courtesies -use of courtesy words such as \"Please\", \"May I /Can I? Used Thank You\", Kindly\"?', 'N/A', 'N/A'),
(205, 'Reside New York', '• Did the agent offer assistance to the caller?', 'N/A', 'N/A', '• Did agent collect customer\'s contact information for all situations that requires a call-back?', '• Did the agent avoid long silence/dead air? (10 seconds)', 'N/A', 'N/A'),
(206, 'Reside New York', 'N/A', 'N/A', 'N/A', '• Did agent advise the customer of correct appeal process and what are the supporting documents needed for an Appeal letter and advise the applicantsthey should reply to the email they received within 10 days from receipt of the email)', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(207, 'Reside New York', 'N/A', 'N/A', 'N/A', '• Did the agent set the requested appointment in Acuity?', '• Did the agent avoid using negative phrases, Like \"Can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(208, 'Reside New York', 'N/A', 'N/A', 'N/A', '• Did the agent send an email to Project Manager as necessary?', '• Did agent demonstrate active listening & rate of speech - Appropriate pace throughout the call?', 'N/A', 'N/A'),
(209, 'Reside New York', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam)', 'N/A', 'N/A'),
(210, 'Reside New York', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation of words used? (Neutral and understandable accent) Choice of words', 'N/A', 'N/A'),
(211, 'Reside New York', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent avoid using vernacular words that was heard during the call?', 'N/A', 'N/A'),
(212, 'Reside New York', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(213, 'Reside New York', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using too many fillers, \'umm, uuuhh and Jargon/Slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(214, 'Reside New York', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to use the correct professional choices of words through out the call?', 'N/A', 'N/A'),
(215, 'S&F Supplies', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call or working an a task this will not apply', 'N/A', '• Correct assessment of Issue - Correctly identified customer\'s concern/issue based on information presented?', '• Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements with appropriate tone (I understand. “I\'m sorry you\'ve had to deal with this,etc..)', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe (Should not exceed 2 mins)', '• Did the agent offer additional assistance?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(216, 'S&F Supplies', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly and wait for an answer?', 'N/A', '• Respond appropriately - Used the right statement/response based of customer\'s concern?', '• Was the agent able to probe appropriately to better understand situation?', '• Did the agent follow up within the agreed timeframe and thank the customer for placing the call on hold?', '• Was the agent able to set a clear expectations for special actions or request (Callbacks and emails) before ending the call?', 'N/A'),
(217, 'S&F Supplies', '• Did agent provide the department and Brand name of the company?', 'N/A', '• Acknowledge/Resolve all customer concerns - Made sure that all customer concerns are provided with the right solution?', '• Did agent provide the most appropriate solution?', '• Agent approach - friendliness, assertiveness, comprehension', '• Did the agent thank the customer for calling/or thank the customer for taking the call?', 'N/A'),
(218, 'S&F Supplies', '• Did the agent provide the reason or clearly set an agenda at the start of the call?', 'N/A', '• Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline?', '• Did the agent (Satisfactory) resolve the customer’s issue, or provide a timeframe for resolution? (As much as I\'d like to provde a timeframe, please allow us more time)', '• Pleasantries / Courtesies - use of courtesy words such as \"Please\", \"May/Can I? Used Thank You\", Kindly\"?', 'N/A', 'N/A'),
(219, 'S&F Supplies', '• Did agent verify the caller’s name? (Or ask if speaking with accounts payable)', 'N/A', 'N/A', '• Was the agent able to set a clear expectations for special actions or request (Fax, emalis, callbacks) before ending the call?)', '• Did the agent avoid long silence/dead air? (2 seconds)', 'N/A', 'N/A'),
(220, 'S&F Supplies', '• Was the agent able to verify the complete name and address, or telephone number for verification or order number?', 'N/A', 'N/A', '• Did agent collect customer\'s contact information for all situations that requires a call-back?', '• Did the agent avoid using negative phrases, Like \" Can\'t, don\'t, there\'s no way? ( Use postive script)', 'N/A', 'N/A'),
(221, 'S&F Supplies', '• Did the agent offer assistance to the caller?', 'N/A', 'N/A', '• The agent received prior authorization when processing payment? (Offered a reference for the payment?', '• Did the agent maintain professional, polite,proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(222, 'S&F Supplies', '• Did the agent verify the name of the company, business address, email and telephone number correct for clarification? \"', 'N/A', 'N/A', 'N/A', '• Did agent demonstrate active listening & rate of speech - Appropriate pace?', 'N/A', 'N/A'),
(223, 'S&F Supplies', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam)', 'N/A', 'N/A'),
(224, 'S&F Supplies', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent listen and allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(225, 'S&F Supplies', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation? (Neutral and understandable accent)', 'N/A', 'N/A'),
(226, 'S&F Supplies', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain professional choices of words through out the call?', 'N/A', 'N/A'),
(227, 'S&F Supplies', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent use vernacular words that was heard during the call?', 'N/A', 'N/A'),
(228, 'S&F Supplies', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using too many fillers, \'umm, uuuhh and Jargon/Slang words, \"yea, nope, naw, ain\'t, uh-huh, etc...?', 'N/A', 'N/A'),
(229, 'Tiger Companies', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply.', 'N/A', '• Correct assessment of Issue - Correctly identified customer\'s concern/issue based on information presented.', '• Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements with appropriate tone (I understand. “I\'m sorry you\'ve had to deal with this, etc..)', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe ( Should not exceed 2 mins)', '• Did the agent offer further assistance or ask customer if they had any additional questions before closing the call?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(230, 'Tiger Companies', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly and wait for an answer?', 'N/A', '• Respond appropriately - Used the right statement/response based of customer\'s concern.', '• Was the agent able to probe appropriately to better understand situation', '• Did the agent follow up with the customer within the agreed timeframe and thank the caller for placing the call on hold?', '• Was the agent able to set a clear expectations for special actions or request (Fax, re-process, callbacks) before ending the call?', 'N/A'),
(231, 'Tiger Companies', '• Did agent mention the Brand name of the company?', 'N/A', '• Acknowledge/Resolve all customer concerns - Made sure that all customer concerns are provided with the right solution.', '• Did agent provide the most appropriate solution and use appropriate choice of words.', '• Agent approach - assertiveness, confident and comprehension?', '• The agent thanked the customer for calling', 'N/A'),
(232, 'Tiger Companies', '• Did agent verify the caller’s name?', 'N/A', '• Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline.', '• Did the agent satisfactory resolve the customer’s issue, or provide a timeframe for resolution?', '• Pleasantries / Courtesies -use of courtesy words such as \"Please\", \"May/Can I? Used Thank You\", Kindly\"?', 'N/A', 'N/A'),
(233, 'Tiger Companies', '• Was the agent able to verify the sales order or purchase order for verification', 'N/A', 'N/A', '• Did agent offer or provide a reference number for the call?', '• Did the agent avoid long silence/dead air? (10 seconds)', 'N/A', 'N/A'),
(234, 'Tiger Companies', '• Did the agent offer assistance to the caller?', 'N/A', 'N/A', '• If situation requires a call-back, did the agent collect customer\'s contact information', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(235, 'Tiger Companies', 'N/A', 'N/A', 'N/A', '• The agent received prior authorization when negotiating prices, offering discounts or giving refunds', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Sound sarcastic or condescending)', 'N/A', 'N/A'),
(236, 'Tiger Companies', 'N/A', 'N/A', 'N/A', '• Did agent collect customer\'s contact information for all situations that requires a call-back?', '• Did the agent avoid using negative phrases, Like \"can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(237, 'Tiger Companies', 'N/A', 'N/A', 'N/A', '• The agent recommended the most appropriate product, service, or pricing plan', '• Did agent demonstrate active listening & rate of speech - appropriate pace throughout the call?', 'N/A', 'N/A'),
(238, 'Tiger Companies', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/mam)', 'N/A', 'N/A'),
(239, 'Tiger Companies', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent listen and allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(240, 'Tiger Companies', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent use vernacular words that was heard during the call?', 'N/A', 'N/A'),
(241, 'Tiger Companies', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation? (Neutral and understandable accent)', 'N/A', 'N/A'),
(242, 'Tiger Companies', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to use the correct/professional choices of words through out the call?', 'N/A', 'N/A'),
(243, 'USZoom', 'Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call or working on a task, this will not apply.', 'N/A', 'Was the agent able to provide the information required documents to apply for the plan requested?', 'Was the agent able to educate the customer about the product plan - (Virtual Mailing Address,  Virtual Business Address, & Virtual Office)', 'Agent approach -  assertiveness, confident and comprehension?', 'Did the agent offer further assistance or ask customer if they had any additional questions before closing the call?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(244, 'USZoom', 'Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly?', 'N/A', 'Respond appropriately - Used the right statement/response based of customer\'s concern?', 'Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements with appropriate tone (I understand. “I\'m sorry you\'ve had to deal with this, etc..) (If appropriate and if there is an opportunity)', 'Pleasantries / Courtesies - use of courtesy words such as \"Please, \"May/Can I? Used Thank You\", Kindly\"?', 'Did the agent offer the customer to visit the  website for more details on the products before ending the call?', 'N/A'),
(245, 'USZoom', 'Did agent mention the Brand name of the company?', 'N/A', 'Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline.', 'Did agent collect customer\'s contact information for all situations that requires a call-back?', 'Did the agent maintain professional, polite,proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'Did agent thank the customer for calling?', 'N/A'),
(246, 'USZoom', 'Did agent verify the caller’s name?', 'N/A', 'Acknowledge/Resolve all customer concerns - Made sure that all customer concerns are provided with the right solution.', 'Did the agent send an email as necessary?', 'Did the agent avoid using too many fillers, \'umm, uuuhh, Jargon/Slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(247, 'USZoom', 'Did the agent offer assistance or how they can help the customer sign up for a mailbox?', 'N/A', 'Was the agent able to set a clear expectations for special actions or request (Send an email or Callbacks)', 'Did the agent politley advise the caller they\'ll be connecting to the designated extension\\person?', 'Did the agent avoid using negative phrases, Like \"can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(248, 'USZoom', 'N/A', 'N/A', 'N/A', 'N/A', 'Did agent demonstrate active listening & rate of speech - appropriate pace throughout the call?', 'N/A', 'N/A'),
(249, 'USZoom', 'N/A', 'N/A', 'N/A', 'N/A', 'Did the agent allow the customer to talk without interrupting?', 'N/A', 'N/A'),
(250, 'USZoom', 'N/A', 'N/A', 'N/A', 'N/A', 'Did agent avoid using vernacular words that was heard during the call?', 'N/A', 'N/A'),
(251, 'USZoom', 'N/A', 'N/A', 'N/A', 'N/A', 'Was the agent able to maintain acceptable pronunciation of words used? (Neutral and understandable accent)', 'N/A', 'N/A'),
(252, 'USZoom', 'N/A', 'N/A', 'N/A', 'N/A', 'The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam)', 'N/A', 'N/A'),
(253, 'White Gloves Consultancy', '• Was the agent able to introduce himself/herself appropriately?', 'N/A', 'N/A', '• Did the agent provide the correct patient\'s information to the Plan or HRA?', '• Agent approach - assertiveness, confident and comprehension?', '• Was the agent able to obtain or provide necessary interaction details before ending the call?', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/CALL AVOIDANCE?'),
(254, 'White Gloves Consultancy', '• Did agent mention the Brand name of the company?', 'N/A', 'N/A', '• Did the agent collect the correct information (disenrollment date or active status) of each given tab \"Managed care\" and \"Non active tab\" ?', '• Pleasantries / Courtesies -use of courtesy words such as \"Please\", \"May/Can I? Used Thank You\", Kindly\"?', '• Was the agent able to thank the carrier representative for their assistance?', 'N/A'),
(255, 'White Gloves Consultancy', '• Did agent provide the reason of the call?', 'N/A', 'N/A', '• Did the agent verify the patient\'s name prior to releasing any PHI?', '• Did the agent avoid long silence/dead air? (10 seconds)', 'N/A', 'N/A'),
(256, 'White Gloves Consultancy', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'N/A', 'N/A'),
(257, 'White Gloves Consultancy', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent avoid using negative phrases, Like \"can\'t, don\'t, there\'s no way? (Use postive script)', 'N/A', 'N/A'),
(258, 'White Gloves Consultancy', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call? (Did not sound sarcastic or condescending)', 'N/A', 'N/A'),
(259, 'White Gloves Consultancy', 'N/A', 'N/A', 'N/A', 'N/A', '• Did agent demonstrate active listening & rate of speech - appropriate pace throughout the call?', 'N/A', 'N/A'),
(260, 'White Gloves Consultancy', 'N/A', 'N/A', 'N/A', 'N/A', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? (Avoid Sir/Mam?', 'N/A', 'N/A'),
(261, 'White Gloves Consultancy', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent listen and allow the carrier to talk without interrupting?', 'N/A', 'N/A'),
(262, 'White Gloves Consultancy', 'N/A', 'N/A', 'N/A', 'N/A', '• Did the agent not use vernacular words that was heard during the call?', 'N/A', 'N/A'),
(263, 'White Gloves Consultancy', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to maintain acceptable pronunciation? (Neutral and understandable accent)', 'N/A', 'N/A'),
(264, 'White Gloves Consultancy', 'N/A', 'N/A', 'N/A', 'N/A', '• Was the agent able to use the correct/professional choices of words through out the call?', 'N/A', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `qav_data`
--

CREATE TABLE `qav_data` (
  `id` int(11) NOT NULL,
  `date_issued` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `qa` varchar(255) DEFAULT NULL,
  `focusitem` longtext DEFAULT NULL,
  `coachingopportunities` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qav_data`
--

INSERT INTO `qav_data` (`id`, `date_issued`, `name`, `account`, `qa`, `focusitem`, `coachingopportunities`) VALUES
(7, '2020-04-24', 'Allan Hilario', 'EDISON', 'Kwon Jin Bacali', 'Test focus item', 'test coaching opportunities'),
(8, '2020-05-01', '	Ann Loraine Advincula', 'AMERICAN PLAN ADMINISTRATORS', 'Kwon Jin Bacali', 'Test purposes', 'Test purposes'),
(9, '2020-05-07', 'Aileen Domingo', 'EDISON', 'Kwon Jin Bacali', 'test only', 'test only'),
(10, '2020-05-07', 'Allan Hilario', 'EDISON', 'Kwon Jin Bacali', '', ''),
(11, '2020-05-28', 'Allan Hilario', 'EDISON', 'Kwon Jin Bacali', 'N/A Test', 'N/A Test'),
(12, '2020-05-28', 'Allan Hilario', 'EDISON', 'Kwon Jin Bacali', 'N/A test Only', 'N/A test Only'),
(13, '2020-05-28', 'Alexander Albert Labajo', 'EDISON', 'Kwon Jin Bacali', 'N/A Test Only', 'N/A Test Only'),
(14, '2020-05-28', 'Alexander Albert Labajo', 'EDISON', 'Kwon Jin Bacali', 'N/A Test Only', 'N/A Test Only'),
(15, '2020-05-29', 'Alexander Albert Labajo', 'MEDEX', 'Kwon Jin Bacali', 'N/A Test only', 'N/A Test only'),
(16, '2020-05-29', 'Alexander Albert Labajo', 'MEDEX', 'Kwon Jin Bacali', 'N/A Test only', 'N/A Test only'),
(17, '2020-05-29', 'Aileen Domingo', 'EDISON', 'Kwon Jin Bacali', 'N/A Test only', 'N/A test only'),
(18, '2020-05-29', 'Aileen Domingo', 'EDISON', 'Kwon Jin Bacali', 'N/A Test only', 'N/A Test only'),
(19, '2020-05-29', 'Allan Hilario', 'EDISON', 'Kwon Jin Bacali', 'test', 'test'),
(20, '2020-05-29', 'Allan Hilario', 'EDISON', 'Kwon Jin Bacali', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `qav_opening_spiel`
--

CREATE TABLE `qav_opening_spiel` (
  `id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `opening_spiel` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qav_opening_spiel`
--

INSERT INTO `qav_opening_spiel` (`id`, `account`, `opening_spiel`) VALUES
(1, 'American Plan Administrators', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply'),
(2, 'American Plan Administrators', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?'),
(3, 'American Plan Administrators', '• Did agent mention the Brand name of the company?'),
(4, 'American Plan Administrators', '• Did the agent capture the caller\'s information correctly the first time it was provided?'),
(5, 'American Plan Administrators', '• Did agent verify the caller’s name?'),
(6, 'American Plan Administrators', '• Did the agent offer assistance to the caller?'),
(7, 'American Plan Administrators', '• Did the agent offer assistance to the caller?'),
(8, 'AM Home', 'Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call or working on a needed task.'),
(9, 'AM Home', 'Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly and wait for an answer?'),
(10, 'AM Home', 'Did agent mention the Brand name of the company?'),
(11, 'AM Home', 'Did agent verify the caller’s name?'),
(12, 'AM Home', 'Was the agent able to verify the complete Name, Address, or Telephone Number for account verification?'),
(13, 'AM Home', 'Did the agent offer assistance to the caller?'),
(14, 'Dime Trading (Nesstoy)', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply?'),
(15, 'Dime Trading (Nesstoy)', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly and wait for an answer?'),
(16, 'Dime Trading (Nesstoy)', '• Did agent mention the Brand name of the company?'),
(17, 'Dime Trading (Nesstoy)', '• Did agent verify the caller’s name?'),
(18, 'Dime Trading (Nesstoy)', '• Was the agent able to verify the complete name or address for verification? (Proof of purchase, order number)'),
(19, 'Dime Trading (Nesstoy)', '• Did the agent offer assistance to the caller?'),
(20, 'Edison', 'Was the call answered within the allowable time? (2 seconds) - If agent is on another call or working on a task, this will not apply.'),
(21, 'Edison', 'Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly?'),
(22, 'Edison', 'Did agent mention the Brand name of the company?'),
(23, 'Edison', 'Did agent verify the caller’s name?'),
(24, 'Edison', 'Did the agent offer to direct the call or ask who would theylike to speak with?'),
(25, 'Exchange and Connectel', '• Was the call answered within the allowable time? (2 seconds)'),
(26, 'Exchange and Connectel', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?'),
(27, 'Exchange and Connectel', '• Did agent mention the Brand name of the company?'),
(28, 'Exchange and Connectel', '• Did agent verify the caller’s name?'),
(29, 'Exchange and Connectel', '• Was the agent able to verify the complete name and address, or telephone number for account verification?'),
(30, 'Exchange and Connectel', '• Did agent verifiy the phone number(s) in question?'),
(31, 'Exchange and Connectel', '• Did the agent offer assistance to the caller?'),
(32, 'First Health Pro', '• Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements. (Sure, ok uh huh, I understand.'),
(33, 'First Health Pro', '• Did the agent provide the reason or clearly set an agenda duringt the of the call? (In between of call)'),
(34, 'First Health Pro', '• Did agent mention the Brand name of the company?'),
(35, 'First Health Pro', '• Did agent verify the caller’s name?'),
(36, 'Five Star CARE', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply'),
(37, 'Five Star CARE', '• Was the agent able to use appropriate greeting, (Thank the customer) introduce themselves properly?'),
(38, 'Five Star CARE', '• Did agent mention the Brand name of the company?'),
(39, 'Five Star CARE', '• Did the agent confirm the caller\'s postion? (Confirming the title of the caller - (Aid, RN, LPN, CRA) - Will ONLY apply if it\'s the first time calling.'),
(40, 'Five Star CARE', '• Did agent verify the caller’s name?'),
(41, 'Five Star CARE', '• Did the agent offer assistance to the caller? (How can I help)'),
(42, 'Five Star Recruitment', '• Was the agent able to introduce himself/herself appropriately?'),
(43, 'Five Star Recruitment', '• Did agent mention the Brand name of the company?'),
(44, 'Five Star Recruitment', '• Did the agent provide the reason of the call?'),
(45, 'Five Star Recruitment', '• Was the agent able to confirm the correct person needed to call?'),
(46, 'Five Star Staffing', '• Did the agent confirm the caller\'s postion? (Confirming the title of the caller - (Aid, RN, LPN, CRA) - Will ONLY apply if it\'s the first time calling.'),
(47, 'Five Star Staffing', '• Did agent verify the caller’s name?'),
(48, 'Five Star Staffing', '• Did the agent offer assistance to the caller? (How can I help)'),
(49, 'MBH Services', '• Was the agent able to introduce himself/herself appropriately?'),
(50, 'MBH Services', '• Did the agent provide the reason or clearly set an agenda at the start of the call?'),
(51, 'MBH Services', '• Did agent present his/her name and telephone number when asked from the caller?'),
(52, 'MBH Services', '• Did agent verify the caller’s name?'),
(53, 'Medex', '• Was the agent able to introduce himself/herself appropriately?'),
(54, 'Medex', '• Did the agent provide the reason or clearly set an agenda at the start of the call?'),
(55, 'Medex', '• Did agent mention the Brand name of the company?'),
(56, 'Medex', '• Did agent provide all the information that was asked from the caller?'),
(57, 'Medex', '• Did agent verify the caller’s name? (No need to ask if the name was already provided)'),
(58, 'Medical Supply Depot', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply'),
(59, 'Medical Supply Depot', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?'),
(60, 'Medical Supply Depot', '• Did agent mention the Brand name of the company'),
(61, 'Medical Supply Depot', '• Did agent verify the caller’s name?'),
(62, 'Medical Supply Depot', '• Was the agent able to verify the complete name and address, or telephone number, or sales order #? (Applys ONLY for placing an order)'),
(63, 'MongoTEL', 'Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply'),
(64, 'MongoTEL', 'Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly and mention the brand name? (wait for an answer)'),
(65, 'MongoTEL', 'Did agent verify the caller’s name, company name, and the telephone in question?'),
(66, 'MongoTEL', 'Did the agent offer assistance to the caller?'),
(67, 'MongoTEL', 'Did agent collect customer\'s contact information for all situations that requires a call-back?'),
(68, 'Quest Staffing', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply'),
(69, 'Quest Staffing', '• Was the agent able to use appropriate greeting, (Thank the customer) introduce themselves properly?'),
(70, 'Quest Staffing', '• Did agent mention the Brand name of the company?'),
(71, 'Quest Staffing', '• Did the agent confirm the caller\'s postion? (Confirming the title of the caller - (Aid, RN, LPN, CRA) - Will ONLY apply if it\'s the first time calling.'),
(72, 'Quest Staffing', '• Did agent verify the caller’s name?'),
(73, 'Quest Staffing', '• Did the agent offer assistance to the caller? (How can I help)'),
(74, 'Rafieh Pharmacy', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly and wait for an answer?'),
(75, 'Rafieh Pharmacy', '• Did the agent provide the reason or clearly set an agenda at the start of the call?'),
(76, 'Rafieh Pharmacy', '• Did agent mention the Brand name of the company?'),
(77, 'Rafieh Pharmacy', '• Was the agent able to provide correct details of the Patient\'s name they are calling for?'),
(78, 'Rafieh Pharmacy', '• Did the agent get all necessary information (Doctor\'s Name, Phone Number or Address'),
(79, 'Reside New York', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply'),
(80, 'Reside New York', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?'),
(81, 'Reside New York', '• Did agent mention the Brand name of the company?'),
(82, 'Reside New York', '• Did the agent attempt to get the caller\'s name?'),
(83, 'Reside New York', '• Did the agent offer assistance to the caller?'),
(84, 'S&F Supplies', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call or working an a task this will not apply'),
(85, 'S&F Supplies', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly and wait for an answer?'),
(86, 'S&F Supplies', '• Did agent provide the department and Brand name of the company?'),
(87, 'S&F Supplies', '• Did the agent provide the reason or clearly set an agenda at the start of the call?'),
(88, 'S&F Supplies', '• Did agent verify the caller’s name? (Or ask if speaking with accounts payable)'),
(89, 'S&F Supplies', '• Was the agent able to verify the complete name and address, or telephone number for verification or order number?'),
(90, 'S&F Supplies', '• Did the agent offer assistance to the caller?'),
(91, 'S&F Supplies', '• Did the agent verify the name of the company, business address, email and telephone number correct for clarification? \"'),
(92, 'Tiger Companies', '• Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call, this will not apply.'),
(93, 'Tiger Companies', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly and wait for an answer?'),
(94, 'Tiger Companies', '• Did agent mention the Brand name of the company?'),
(95, 'Tiger Companies', '• Did agent verify the caller’s name?'),
(96, 'Tiger Companies', '• Was the agent able to verify the sales order or purchase order for verification'),
(97, 'Tiger Companies', '• Did the agent offer assistance to the caller?'),
(98, 'USZoom', 'Was the call answered within the allowable time? (2 seconds) N/A - If agent is on another call or working on a task, this will not apply.'),
(99, 'USZoom', 'Was the agent able to use proper greeting, (Thank the customer) introduce themselves properly?'),
(100, 'USZoom', 'Did agent mention the Brand name of the company?'),
(101, 'USZoom', 'Did agent verify the caller’s name?'),
(102, 'USZoom', 'Did the agent offer assistance or how they can help the customer sign up for a mailbox?'),
(103, 'White Gloves Consultancy', '• Was the agent able to introduce himself/herself appropriately?'),
(104, 'White Gloves Consultancy', '• Did agent mention the Brand name of the company?'),
(105, 'White Gloves Consultancy', '• Did agent provide the reason of the call?');

-- --------------------------------------------------------

--
-- Table structure for table `qa_form`
--

CREATE TABLE `qa_form` (
  `id` int(11) NOT NULL,
  `account` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `item` text NOT NULL,
  `answer` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qa_form`
--

INSERT INTO `qa_form` (`id`, `account`, `category`, `item`, `answer`, `error`) VALUES
(1, 'Exchange and Connectel', 'Opening Spiel', '• Was the call answered within the allowable time? (2 seconds)', 'No', 'Major'),
(2, 'Exchange and Connectel', 'Opening Spiel', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?', 'No', 'Minor'),
(3, 'Exchange and Connectel', 'Opening Spiel', '• Did agent mention the Brand name of the company?', 'No', 'Minor'),
(4, 'Exchange and Connectel', 'Opening Spiel', '• Did agent verify the caller’s name?', 'No', 'Major'),
(5, 'Exchange and Connectel', 'Opening Spiel', '• Was the agent able to verify the complete name and address, or telephone number for account verification?', 'No', 'Major'),
(6, 'Exchange and Connectel', 'Opening Spiel', '• Did agent verify the phone number(s) in question?', 'No', 'Major'),
(7, 'Exchange and Connectel', 'Opening Spiel', '• Did the agent offer assistance to the caller?', 'No', 'Minor'),
(8, 'Exchange and Connectel', 'Process Compliance', '• Empathy/Taking Ownership - Acknowledged customer\'s concern & responded with use of empathy statements with appropriate tone (I understand. “I\'m sorry you\'ve had to deal with this, etc..)', 'No', 'Major'),
(10, 'Exchange and Connectel', 'Process Compliance', '• Was the agent able to probe appropriately to better understand situation?', 'No', 'Major'),
(11, 'Exchange and Connectel', 'Process Compliance', '• Did the agent (Satisfactory) resolve the customer’s issue, or provide a timeframe for resolution? (As much as I\'d like to provide an estimation, please allow us more time)', 'No', 'Minor'),
(12, 'Exchange and Connectel', 'Process Compliance', '• Was the agent able to set a clear expectations for special actions or request (Fax, emails, callbacks)', 'No', 'Minor'),
(13, 'Exchange and Connectel', 'Process Compliance', '• The agent received prior authorization when processing payment? (Offered or provided a reference for the payment)', 'No', 'Major'),
(14, 'Exchange and Connectel', 'Communication Skills', '• Did the agent ask permission to place the call on hold/ transfer and provide a timeframe (Should not exceed 2 mins)', 'No', 'Major'),
(15, 'Exchange and Connectel', 'Communication Skills', '• Did the agent follow up with the customer within the agreed timeframe and thank the caller for placing the call on hold?', 'No', 'Major'),
(16, 'Exchange and Connectel', 'Communication Skills', '• Agent approach - assertiveness, confident and comprehension?', 'No', 'Minor'),
(17, 'Exchange and Connectel', 'Communication Skills', '• Pleasantries / Courtesies - use of courtesy words such as \"Please\", \"May/Can I? Used Thank You\", Kindly\"?', 'No', 'Minor'),
(18, 'Exchange and Connectel', 'Communication Skills', '• Did the agent avoid long silence/dead air? (10 seconds)', 'No', 'Major'),
(19, 'Exchange and Connectel', 'Communication Skills', '• Did the agent avoid using too many fillers, \'umm, uuuhh and jargon/slang words, \"yea, nope, naw, ain\'t, uh-huh, etc... (Appropriate response would be Yes, No , Sure)', 'No', 'Major'),
(20, 'Exchange and Connectel', 'Communication Skills', '• Did the agent avoid using negative phrases, Like \"can\'t, don\'t, there\'s no way? (Use positive script)', 'No', 'Minor'),
(21, 'Exchange and Connectel', 'Communication Skills', '• Was the agent able to use the correct/professional choices of words (grammar, etc..)  through out the call?', 'No', 'Major'),
(22, 'Exchange and Connectel', 'Communication Skills', '• Did the agent maintain professional, polite, proper tone, pitch, volume and pace throughout the call?', 'No', 'Minor'),
(23, 'Exchange and Connectel', 'Communication Skills', '• Did agent demonstrate active listening & rate of speech - appropriate pace throughout the call?', 'No', 'Minor'),
(24, 'Exchange and Connectel', 'Communication Skills', '• The agent used the caller\'s name to personalize the call? (If the name is very difficult to pronounce. First or last name would be appropriate. If incase both names are difficult to pronounce, than upon monitoring I would be determined if it\'s difficult. (Check if agent used caller\'s name at least once? ( Avoid Mam/Sir)', 'No', 'Minor'),
(25, 'Exchange and Connectel', 'Communication Skills', '• Did the agent listen and allow the customer to talk without interrupting?', 'No', 'Major'),
(26, 'Exchange and Connectel', 'Proper Closing', '• Did the agent offer further assistance or ask customer if they had any additional questions before closing the call?', 'No', 'Major'),
(27, 'Exchange and Connectel', 'Proper Closing', '• Did the agent recap what has been transpired in the call? ', 'No', 'Minor'),
(28, 'Exchange and Connectel', 'Proper Closing', '• Did the agent closed the call properly? (e.g. Thank the customer for calling, branding, provided the agent\'s name prior ending the call?)', 'No', 'Major'),
(29, 'Exchange and Connectel', 'Resolution of Issue', '• Correct assessment of Issue - Correctly identified customer\'s concern/issue based on information presented?', 'No', 'Major'),
(30, 'Exchange and Connectel', 'Resolution of Issue', '• Acknowledge/Resolve customer concerns - Made sure that all customer concerns are provided with the right solution?', 'No', 'Major'),
(31, 'Exchange and Connectel', 'Resolution of Issue', '• Provide/follow accurate resolution/process guide - Diligently followed step by step procedure as outlined in the Workflow Guideline?', 'No', 'Major'),
(32, 'Exchange and Connectel', 'Resolution of Issue', '• Did agent collect customer\'s contact information for all situations that requires a callback?', 'No', 'Major'),
(33, 'Exchange and Connectel', 'Offline Process - Repair Tickets/ Billing and Collections/ Customer Repair Follow up', 'Agent entered incorrect notes', 'Yes', 'Major'),
(34, 'Exchange and Connectel', 'Offline Process - Repair Tickets/ Billing and Collections/ Customer Repair Follow up', 'Agent incorrectly tagged the ticket', 'Yes', 'Major'),
(35, 'Exchange and Connectel', 'Offline Process - Repair Tickets/ Billing and Collections/ Customer Repair Follow up', 'Creating another ticket even if there is an open pending ticket', 'Yes', 'Major'),
(36, 'Exchange and Connectel', 'Offline Process - Repair Tickets/ Billing and Collections/ Customer Repair Follow up', 'Agent did not process customer\'s request to change billing method', 'Yes', 'Major'),
(37, 'Exchange and Connectel', 'Offline Process - Repair Tickets/ Billing and Collections/ Customer Repair Follow up', 'Agent entered incorrect amount.', 'Yes', 'Major'),
(38, 'Exchange and Connectel', 'Offline Process - Repair Tickets/ Billing and Collections/ Customer Repair Follow up', 'Agent entered credit card/ check info', 'Yes', 'Major'),
(39, 'Exchange and Connectel', 'Offline Process - Repair Tickets/ Billing and Collections/ Customer Repair Follow up', 'Agent entered wrong mode of payment', 'Yes', 'Major'),
(40, 'Exchange and Connectel', 'Offline Process - Repair Tickets/ Billing and Collections/ Customer Repair Follow up', 'Agent wrote incorrect notes', 'Yes', 'Major'),
(41, 'Exchange and Connectel', 'Offline Process - Repair Tickets/ Billing and Collections/ Customer Repair Follow up', 'Agent did not call for follow up', 'Yes', 'Major'),
(42, 'Exchange and Connectel', 'Offline Process - Repair Tickets/ Billing and Collections/ Customer Repair Follow up', 'Agent did not update the ticket status.', 'Yes', 'Major'),
(43, 'Exchange and Connectel', 'Zero Tolerance/ AUTO FAIL', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?', 'Yes', 'Major');

-- --------------------------------------------------------

--
-- Table structure for table `qa_record`
--

CREATE TABLE `qa_record` (
  `id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `minor` int(11) NOT NULL,
  `major` int(11) NOT NULL,
  `total_deduction` int(11) NOT NULL,
  `qa` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `error_items` text NOT NULL,
  `suggestion` text NOT NULL,
  `filename` varchar(1048) NOT NULL,
  `filesize` varchar(255) NOT NULL,
  `downloads` int(11) NOT NULL,
  `action_plan` text NOT NULL,
  `tl` varchar(255) NOT NULL,
  `coaching_date` date DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qa_record`
--

INSERT INTO `qa_record` (`id`, `report_id`, `agent`, `account`, `minor`, `major`, `total_deduction`, `qa`, `date`, `error_items`, `suggestion`, `filename`, `filesize`, `downloads`, `action_plan`, `tl`, `coaching_date`, `status`) VALUES
(4, 0, 'Alrich T. Patosa', 'Exchange and Connectel', 1, 4, 21, '', '2020-09-14', '', '', '', '', 0, '', '', '0000-00-00', ''),
(5, 0, 'Glocel Grace Lectura', 'Exchange and Connectel', 0, 3, 15, 'Kwon Jin Bacali', '2020-09-14', '', '', '', '', 0, '', '', '0000-00-00', ''),
(6, 0, 'Jan Dellen Francisco', 'Exchange and Connectel', 0, 3, 15, 'Kwon Jin Bacali', '2020-09-14', '', '', '', '', 0, '', '', '0000-00-00', ''),
(7, 0, 'Rhea Famisaran', 'Exchange and Connectel', 0, 3, 15, 'Kwon Jin Bacali', '2020-09-21', 'Agent did not call for follow up,<br/>Agent did not update the ticket status.,<br/>CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(8, 0, 'Rhea Famisaran', 'Exchange and Connectel', 0, 3, 15, 'Kwon Jin Bacali', '2020-09-21', 'Agent did not call for follow up,\nAgent did not update the ticket status.,\nCLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(9, 0, 'Rhea Famisaran', 'Exchange and Connectel', 0, 3, 15, 'Kwon Jin Bacali', '2020-09-21', 'Agent did not call for follow up,\nAgent did not update the ticket status.,\nCLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(10, 59, 'Rhea Famisaran', 'Exchange and Connectel', 0, 3, 15, 'Kwon Jin Bacali', '2020-09-21', 'Agent did not call for follow up,\nAgent did not update the ticket status.,\nCLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(11, 60, 'Lloyd Mari', 'Exchange and Connectel', 0, 3, 15, 'Kwon Jin Bacali', '2020-09-21', 'Agent did not call for follow up,\r\nAgent did not update the ticket status.,\r\nCLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(12, 61, 'Lloyd Mari', 'Exchange and Connectel', 0, 3, 15, 'Kwon Jin Bacali', '2020-09-21', 'Agent did not call for follow up,\nAgent did not update the ticket status.,\nCLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(13, 62, 'Kristine Erika T. Watanabe', 'Exchange and Connectel', 0, 3, 15, 'Kwon Jin Bacali', '2020-09-21', 'Agent did not call for follow up,\nAgent did not update the ticket status.,\nCLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(14, 63, 'Karen Ramirez', 'Exchange and Connectel', 0, 0, 0, 'Kwon Jin Bacali', '2020-09-21', '', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(15, 64, 'Marjorie A. Valderama', 'Exchange and Connectel', 2, 1, 7, 'Kwon Jin Bacali', '2020-09-21', '', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(16, 65, 'Marjorie A. Valderama', 'Exchange and Connectel', 2, 1, 7, 'Kwon Jin Bacali', '2020-09-21', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?,\n• Did agent mention the Brand name of the company?,\n• Did agent verify the caller’s name?', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(17, 66, 'Glocel Grace Lectura', 'Exchange and Connectel', 2, 1, 7, 'Kwon Jin Bacali', '2020-09-21', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?,\n• Did agent mention the Brand name of the company?,\n• Did agent verify the caller’s name?', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(18, 67, 'Cyril Suellen C. Toledo', 'Exchange and Connectel', 0, 1, 5, 'Kwon Jin Bacali', '2020-09-21', '', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(19, 68, 'Kyle Wilvin H. Yu', 'Exchange and Connectel', 1, 1, 6, 'Kwon Jin Bacali', '2020-09-21', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?,\n• • Did agent verify the caller’s name?', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(20, 69, 'Kyle Wilvin H. Yu', 'Exchange and Connectel', 2, 1, 7, 'Kwon Jin Bacali', '2020-09-21', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?,\n• Did agent mention the Brand name of the company?,\n• Did agent verify the caller’s name?', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(21, 70, 'Arnold Vismanos', 'Exchange and Connectel', 2, 2, 12, 'Kwon Jin Bacali', '2020-09-21', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves,\n• Did agent mention the Brand name of the company,\n• Did agent verify the caller’s name,\nCLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(22, 71, 'Glocel Grace Lectura', 'Exchange and Connectel', 1, 3, 16, 'Kwon Jin Bacali', '2020-09-22', '• Was the call answered within the allowable time? (2 seconds),\n• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?,\nAgent did not call for follow up,\nCLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(23, 72, 'Maria Cristina Santillan', 'Exchange and Connectel', 0, 0, 0, 'Kwon Jin Bacali', '2020-09-22', '', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(24, 73, 'Maria Cristina Santillan', 'Exchange and Connectel', 0, 0, 0, 'Kwon Jin Bacali', '2020-09-22', '', 'No suggestions', '', '', 0, '', '', '0000-00-00', ''),
(25, 74, 'Catherine Pacheco', 'Exchange and Connectel', 0, 1, 5, 'Kwon Jin Bacali', '2020-09-22', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?', 'test upload file', 'aaaaaaaaa.txt', '21', 0, '', '', '0000-00-00', ''),
(26, 75, 'Ana Isabel Olete', 'Exchange and Connectel', 0, 1, 5, 'Kwon Jin Bacali', '2020-09-24', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?', 'qweweqwewqe', '', '0', 0, '', '', '0000-00-00', ''),
(27, 76, 'Karen Ramirez', 'Exchange and Connectel', 0, 0, 0, 'Kwon Jin Bacali', '2020-09-24', '', 'qwewqewqe', '', '0', 0, '', '', '0000-00-00', ''),
(28, 77, 'Jerome Canosa', 'Exchange and Connectel', 0, 1, 5, 'Kwon Jin Bacali', '2020-09-24', 'Agent did not update the ticket status.', 'qeqweqwewe', 'aaaaaaaaa.txt', '21', 0, '', '', '0000-00-00', ''),
(29, 78, 'Myleen Ancheta', 'Exchange and Connectel', 0, 1, 5, 'Kwon Jin Bacali', '2020-09-24', 'CLIENT FEEDBACK/ UNPROFESSIONAL BEHAVIOR/ CALL AVOIDANCE?', 'qeqwewqe', '20200917-165120_125_(972)998-0332_Incoming_Auto_1354322216012.mp3', '2797998', 0, '3rd Testing action plan update', 'Kwon Jin Bacali', '2020-09-24', 'Submitted'),
(30, 80, 'Ana Isabel Olete', 'Exchange and Connectel', 1, 0, 1, 'Kwon Jin Bacali', '2020-09-24', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?', 'qwewqewqeqweqweqwe', '', '0', 0, '', '', NULL, 'Pending'),
(31, 81, 'Irish Joy C. Salanguit', 'Exchange and Connectel', 2, 0, 2, 'Kwon Jin Bacali', '2020-09-24', '• Was the agent able to use proper greeting, (Thank the customer) introduce themselves?,\n• Did the agent offer assistance to the caller?', 'qwewqeqweqwe', '', '0', 0, 'Test Action plan', 'Kwon Jin Bacali', '2020-09-24', 'Acknowledged');

-- --------------------------------------------------------

--
-- Table structure for table `tl_accounts`
--

CREATE TABLE `tl_accounts` (
  `id` int(11) NOT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tl_accounts`
--

INSERT INTO `tl_accounts` (`id`, `employee_name`, `account`) VALUES
(5, 'Kwon Jin Bacali', 'Exchange and Connectel'),
(6, 'tltestingggggg tltestingggggg', 'JWBL'),
(7, 'Joy Marian', 'medex'),
(9, 'Kwon Jin Bacali', 'Edison'),
(10, 'Kwon Jin Bacali', 'Medex'),
(11, 'Kwon Jin Bacali', 'JWBL'),
(12, 'Kwon Jin Bacali', 'AM HOME'),
(13, 'Kwon Jin Bacali', 'Amazing Listers'),
(14, 'Kwon Jin Bacali', 'MongoTEL'),
(15, 'Kwon Jin Bacali', 'Quest Staffing'),
(16, 'Kwon Jin Bacali', 'Rafieh Pharmacy'),
(17, 'Kwon Jin Bacali', 'MBH Services'),
(18, 'Kwon Jin Bacali', 'American Plan Administrators');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aaa_account_category_score`
--
ALTER TABLE `aaa_account_category_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aaa_account_verification`
--
ALTER TABLE `aaa_account_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aaa_agent_score`
--
ALTER TABLE `aaa_agent_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aaa_communication_skills`
--
ALTER TABLE `aaa_communication_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aaa_opening_spiel`
--
ALTER TABLE `aaa_opening_spiel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aaa_process_compliance`
--
ALTER TABLE `aaa_process_compliance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aaa_proper_closing`
--
ALTER TABLE `aaa_proper_closing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aaa_resolution_of_issue`
--
ALTER TABLE `aaa_resolution_of_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aaa_zero_tolerance`
--
ALTER TABLE `aaa_zero_tolerance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_reports`
--
ALTER TABLE `agent_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_reports`
--
ALTER TABLE `hr_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpi`
--
ALTER TABLE `kpi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpi_dump`
--
ALTER TABLE `kpi_dump`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picard_dump`
--
ALTER TABLE `picard_dump`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picard_table`
--
ALTER TABLE `picard_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qan_data`
--
ALTER TABLE `qan_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qan_design_control`
--
ALTER TABLE `qan_design_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qan_effect_of_failure`
--
ALTER TABLE `qan_effect_of_failure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qan_failure_mode`
--
ALTER TABLE `qan_failure_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qan_function`
--
ALTER TABLE `qan_function`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qan_numbers`
--
ALTER TABLE `qan_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qan_potential_cause_of_failure`
--
ALTER TABLE `qan_potential_cause_of_failure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qan_process`
--
ALTER TABLE `qan_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qan_recommended_action`
--
ALTER TABLE `qan_recommended_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qav_account_categories`
--
ALTER TABLE `qav_account_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qav_data`
--
ALTER TABLE `qav_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qav_opening_spiel`
--
ALTER TABLE `qav_opening_spiel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qa_form`
--
ALTER TABLE `qa_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qa_record`
--
ALTER TABLE `qa_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_accounts`
--
ALTER TABLE `tl_accounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aaa_account_category_score`
--
ALTER TABLE `aaa_account_category_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `aaa_account_verification`
--
ALTER TABLE `aaa_account_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aaa_agent_score`
--
ALTER TABLE `aaa_agent_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `aaa_communication_skills`
--
ALTER TABLE `aaa_communication_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `aaa_opening_spiel`
--
ALTER TABLE `aaa_opening_spiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `aaa_process_compliance`
--
ALTER TABLE `aaa_process_compliance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `aaa_proper_closing`
--
ALTER TABLE `aaa_proper_closing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `aaa_resolution_of_issue`
--
ALTER TABLE `aaa_resolution_of_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `aaa_zero_tolerance`
--
ALTER TABLE `aaa_zero_tolerance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `agent_reports`
--
ALTER TABLE `agent_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `hr_reports`
--
ALTER TABLE `hr_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kpi`
--
ALTER TABLE `kpi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `kpi_dump`
--
ALTER TABLE `kpi_dump`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `picard_dump`
--
ALTER TABLE `picard_dump`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `picard_table`
--
ALTER TABLE `picard_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `qan_data`
--
ALTER TABLE `qan_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `qan_design_control`
--
ALTER TABLE `qan_design_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `qan_effect_of_failure`
--
ALTER TABLE `qan_effect_of_failure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `qan_failure_mode`
--
ALTER TABLE `qan_failure_mode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=595;

--
-- AUTO_INCREMENT for table `qan_function`
--
ALTER TABLE `qan_function`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `qan_numbers`
--
ALTER TABLE `qan_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `qan_potential_cause_of_failure`
--
ALTER TABLE `qan_potential_cause_of_failure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=648;

--
-- AUTO_INCREMENT for table `qan_process`
--
ALTER TABLE `qan_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `qan_recommended_action`
--
ALTER TABLE `qan_recommended_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `qav_account_categories`
--
ALTER TABLE `qav_account_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `qav_data`
--
ALTER TABLE `qav_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `qav_opening_spiel`
--
ALTER TABLE `qav_opening_spiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `qa_form`
--
ALTER TABLE `qa_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `qa_record`
--
ALTER TABLE `qa_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tl_accounts`
--
ALTER TABLE `tl_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
