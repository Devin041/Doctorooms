-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 05:13 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `appointment_no` varchar(255) DEFAULT NULL,
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `booking_date` datetime NOT NULL,
  `petient_name` varchar(255) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `description` text,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `relation_with_me` varchar(255) DEFAULT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `weight` decimal(18,3) DEFAULT NULL,
  `height` decimal(18,3) DEFAULT NULL,
  `physical_handicape` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `booking_type` varchar(255) DEFAULT NULL COMMENT 'booking type: by self or by receptionist',
  `appointment_charge` decimal(18,2) DEFAULT NULL COMMENT 'admin charge'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `appointment_no`, `doctor_id`, `user_id`, `state`, `city`, `booking_date`, `petient_name`, `disease`, `description`, `gender`, `date_of_birth`, `age`, `relation_with_me`, `blood_group`, `weight`, `height`, `physical_handicape`, `created_at`, `updated_at`, `status`, `booking_type`, `appointment_charge`) VALUES
(2, 'APMT-1', 4, 17, NULL, NULL, '2019-02-28 00:00:00', 'Vivek', 'Fever', 'sdf', 'Male', NULL, 22, 'Self', 'O-', '60.000', '165.000', 'No', '2019-02-26 01:16:40', '2019-03-01 00:12:21', 'Visited', NULL, '1.00'),
(3, 'APMT-2', 19, 17, NULL, NULL, '2019-03-01 00:00:00', 'Vivek', 'Fever', 'erfertre', 'Male', '0000-00-00', 22, 'Self', 'O-', '60.000', '165.000', 'No', '2019-02-26 23:52:36', '2019-10-30 21:23:20', 'Visited', NULL, '1.00'),
(4, 'APMT-3', 4, 17, NULL, NULL, '2019-03-05 00:00:00', 'Vivek', 'Fever', 'sfsd', 'Male', '2019-03-01', 22, 'Self', 'O-', '60.000', '165.000', 'No', '2019-03-01 23:42:20', '2019-03-02 00:55:10', 'Canceled', NULL, '1.00'),
(6, 'APMT-4', 4, 17, NULL, NULL, '2019-03-09 00:00:00', 'Himmat Rao', 'Fever', 'dfxgds', 'Male', '2017-04-06', 0, 'Self', 'O-', '60.000', '165.000', 'No', '2019-03-06 23:56:34', '2020-06-15 10:30:15', 'Visited', NULL, '1.00'),
(7, 'APMT-5', 4, 17, NULL, NULL, '2019-03-18 00:00:00', 'Nandoliya', 'Fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-03-14 00:03:11', '2019-10-14 23:09:54', 'Canceled', 'By Receptionist', '1.00'),
(8, 'APMT-6', 4, 17, NULL, NULL, '2019-03-16 00:00:00', 'Nandoliya', 'sd', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-03-14 00:04:04', '2019-10-14 23:14:43', 'Visited', 'By Receptionist', '1.00'),
(9, 'APMT-7', 4, 17, NULL, NULL, '2019-03-18 00:00:00', 'Himmat Rao', 'Fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-03-14 00:06:01', '2019-10-14 23:10:55', 'Visited', 'By Receptionist', '1.00'),
(10, 'APMT-8', 4, 17, NULL, NULL, '2019-04-02 00:00:00', 'Nandoliya', 'Fever', '', 'Male', '2017-06-01', 1, '', 'A+', '0.000', '0.000', 'No', '2019-03-28 00:06:12', '2019-10-14 23:11:09', 'Visited', 'By Receptionist', '1.00'),
(11, 'APMT-9', 20, 17, 'Gujarat', 'Ahmedabad', '2019-04-06 00:00:00', 'Jignesh Parmar', 'Fever', '', 'Male', '2017-03-07', 2, 'Self', 'O+', '60.000', '165.000', 'No', '2019-04-03 00:06:45', '2020-10-01 10:41:34', 'Visited', 'By Self', '1.00'),
(12, 'APMT-10', 4, 17, 'Rajasthan', 'jaipur', '2019-04-08 00:00:00', 'Manmohan', 'Fever', '', 'Male', '2019-04-02', 0, 'Self', 'O-', '60.000', '165.000', 'No', '2019-04-05 23:06:02', '2019-08-27 00:53:01', 'Visited', 'By Self', '1.00'),
(13, 'APMT-11', 4, 17, 'Gujarat', 'palanpur', '2019-04-09 00:00:00', 'Jignesh Parmar', 'Fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-04-05 23:30:10', '2019-04-26 23:44:52', 'Visited', 'By Self', '1.00'),
(14, 'APMT-12', 4, 17, 'Gujarat', 'palanpur', '2019-05-19 00:00:00', 'Nandoliya', 'Fever', '', 'Female', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-05-16 23:43:33', '2019-10-14 23:10:12', 'Visited', 'By Self', '1.00'),
(15, 'APMT-13', 4, 17, 'Gujarat', 'Ahmedabad', '2019-05-19 00:00:00', 'Ranjeet Mali', 'Fever', '', 'Male', '0000-00-00', 0, '', 'A+', '0.000', '0.000', 'No', '2019-05-16 23:48:47', '2019-08-27 00:45:57', 'Visited', 'By Self', '1.00'),
(16, 'APMT-14', 4, 17, 'Gujarat', '', '2019-05-19 00:00:00', 'Vikash', 'Fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-05-16 23:49:19', '2019-08-27 00:41:15', 'Visited', 'By Self', '1.00'),
(20, 'APMT-15', 23, NULL, NULL, NULL, '0000-00-00 00:00:00', 'snehal vyas', 'heart', 'bkbkbkbk', 'Male', '0000-00-00', 0, '', 'AB-', '0.000', '0.000', 'No', '2019-06-24 00:49:36', '2020-09-28 22:33:32', 'Visited', 'By Hospital', '1.00'),
(21, 'APMT-16', 23, NULL, NULL, NULL, '0000-00-00 00:00:00', 'dfdfdfdfd gfg', 'fkng', 'dfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnpdfdfognpgnpgnp', 'Male', '2019-05-06', 66, '', 'A+', '0.000', '0.000', 'No', '2019-06-24 00:52:03', '2020-09-28 22:33:02', 'Extend', 'By Hospital', '1.00'),
(24, 'APMT-18', 23, NULL, NULL, NULL, '0000-00-00 00:00:00', 'iqbal ghasura', 'feaver', 'sdsdsmdlsmdlskmdlksmdlksmdkl', 'Male', '1992-05-26', 27, 'self', 'B-', '65.000', '5.600', 'No', '2019-06-25 00:10:29', '2019-06-25 00:10:29', 'Pending', 'By Hospital', '1.00'),
(25, 'APMT-19', 23, NULL, NULL, NULL, '0000-00-00 00:00:00', 'nsehal', 'pain', '', 'Male', '0000-00-00', 0, '', 'B-', '0.000', '0.000', 'No', '2019-06-26 00:13:22', '2019-06-26 00:13:22', 'Pending', 'By Hospital', '1.00'),
(27, 'APMT-21', 25, NULL, NULL, NULL, '0000-00-00 00:00:00', 'jitu ptel', 'pain', '', 'Male', '1995-01-30', 24, 'self', 'B-', '0.000', '0.000', 'No', '2019-08-04 23:46:30', '2019-08-15 21:21:30', 'Canceled', 'By Hospital', '1.00'),
(28, 'APMT-22', 25, NULL, NULL, NULL, '0000-00-00 00:00:00', 'snehal kumar', 'viral feaver', 'ok', 'Male', '1992-05-26', 27, 'self', 'O+', '72.000', '5.500', 'No', '2019-08-11 20:20:52', '2019-08-15 21:21:23', 'Visited', 'By Hospital', '1.00'),
(29, 'APMT-23', 25, NULL, NULL, NULL, '2019-08-13 00:00:00', 'ajay patel', 'feaver', 'ok', 'Male', '1992-05-26', 27, 'self', 'A+', '65.000', '5.600', 'No', '2019-08-13 23:22:39', '2019-08-15 21:18:42', 'Visited', 'By Hospital', '1.00'),
(30, 'APMT-24', 27, NULL, NULL, NULL, '2019-08-15 00:00:00', 'vishal mehta', 'asthama', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\'', 'Male', '1992-05-26', 27, 'no', 'A+', '55.000', '5.600', 'No', '2019-08-15 14:56:55', '2019-08-15 21:21:48', 'Canceled', 'By Hospital', '1.00'),
(31, 'APMT-25', 27, NULL, NULL, NULL, '2019-08-15 00:00:00', 'alok varma', 'dfdfndfn', 'ok', 'Male', '1992-01-15', 27, 'self', 'O-', '72.000', '5.500', 'No', '2019-08-15 21:25:39', '2019-08-15 21:26:52', 'Canceled', 'By Hospital', '1.00'),
(32, 'APMT-26', 25, NULL, NULL, NULL, '2019-08-15 00:00:00', 'om vysa', 'gkfbgkjfgb', 'dfdofdjf', 'Male', '1994-08-23', 24, 'no', 'A-', '66.000', '5.500', 'No', '2019-08-15 21:34:12', '2019-08-15 22:11:17', 'Canceled', 'By Hospital', '1.00'),
(33, 'APMT-27', 27, NULL, NULL, NULL, '2019-08-15 00:00:00', 'ashish patel', 'fiver', 'ok', 'Male', '1998-08-07', 21, 'self', 'B+', '55.000', '5.500', 'No', '2019-08-15 22:20:53', '2019-08-15 22:21:19', 'Visited', 'By Hospital', '1.00'),
(34, 'APMT-28', 25, NULL, NULL, NULL, '2019-09-02 00:00:00', 'hiren', 'cancer', 'ok', 'Male', '1996-02-26', 23, '', 'O-', '0.000', '0.000', 'No', '2019-08-23 23:44:09', '2019-08-23 23:58:19', 'Visited', 'By Hospital', '1.00'),
(35, 'APMT-29', 4, 42, NULL, NULL, '2019-10-30 00:00:00', 'sanjay patel', 'back pain', 'ok', 'Male', '2000-12-12', 18, 'brother', 'O+', '70.000', '5.600', 'Yes', '2019-10-29 22:00:29', '2019-10-30 21:29:47', 'Visited', 'By Receptionist', '1.00'),
(36, 'APMT-30', 23, 42, NULL, NULL, '2019-11-03 00:00:00', 'mrugesh modi', 'fiver', 'ok', 'Male', '1988-11-25', 30, '-', 'O-', '60.000', '5.500', 'No', '2019-11-02 16:57:41', '2019-11-02 21:47:20', 'Visited', 'By Hospital', '1.00'),
(37, 'APMT-31', 23, 42, NULL, NULL, '2019-11-02 00:00:00', 'sanjay patel', 'fiver', 'ok', 'Male', '1999-11-22', 19, 'self', 'A-', '70.000', '5.500', 'No', '2019-11-02 22:08:04', '2019-11-02 22:08:04', 'Pending', 'By Hospital', '1.00'),
(38, 'APMT-32', 23, 42, NULL, NULL, '2019-11-04 00:00:00', 'hardik M. patel', 'back pain', 'dsdsd', 'Male', '1999-10-12', 20, 'self', 'A-', '70.000', '5.600', 'No', '2019-11-02 22:09:47', '2019-11-02 22:09:47', 'Pending', 'By Hospital', '1.00'),
(39, 'APMT-33', 23, 42, NULL, NULL, '2019-11-03 00:00:00', 'mrugesh modi', 'back pain', 'sdfa', 'Male', '1992-02-04', 27, 'self', 'A-', '55.000', '5.500', 'No', '2019-11-02 22:12:26', '2020-09-28 22:33:17', 'Extend', 'By Hospital', '1.00'),
(40, 'APMT-34', 23, 42, NULL, NULL, '2019-11-02 00:00:00', 'hardik M. patel', 'back pain', 'lkuiuk', 'Male', '1987-06-09', 32, 'self', 'B-', '55.000', '5.500', 'No', '2019-11-02 22:14:47', '2019-11-02 22:20:52', 'Visited', 'By Hospital', '1.00'),
(41, 'APMT-35', 47, NULL, NULL, NULL, '2019-11-03 00:00:00', 'JOSHI ADITYA', 'fever', '', 'Male', '2011-08-28', 8, '', '', '0.000', '0.000', 'No', '2019-11-03 18:02:36', '2019-11-03 19:01:38', 'Visited', 'By Receptionist', '1.00'),
(42, 'APMT-36', 47, 50, NULL, NULL, '2019-11-03 00:00:00', 'raj mehta', 'fever', '', 'Male', '2011-10-28', 8, '', '', '0.000', '0.000', 'No', '2019-11-03 18:23:04', '2019-11-03 19:01:40', 'Visited', 'By Receptionist', '1.00'),
(43, 'APMT-37', 47, 46, 'Gujarat', 'palanpur', '2019-11-03 00:00:00', 'Mihir', 'Fever', '', 'Male', '2006-11-03', 13, '', '', '0.000', '0.000', 'No', '2019-11-03 18:45:34', '2019-11-03 19:01:42', 'Visited', 'By Self', '1.00'),
(44, 'APMT-38', 47, NULL, NULL, NULL, '2019-11-03 00:00:00', 'RAMESH BHAI', 'FEVER', '', 'Male', '2016-11-28', 2, '', '', '0.000', '0.000', 'No', '2019-11-03 18:49:30', '2019-11-03 19:01:40', 'Visited', 'By Receptionist', '1.00'),
(45, 'APMT-39', 47, 46, 'Gujarat', '', '2019-11-03 00:00:00', 'Himal', 'Fever', '', 'Male', '2012-08-14', 7, '', '', '0.000', '0.000', 'No', '2019-11-03 18:52:04', '2019-11-03 19:04:34', 'Visited', 'By Self', '1.00'),
(46, 'APMT-40', 47, 50, 'Gujarat', 'palanpur', '2019-11-04 00:00:00', 'Neel', 'Ulti', 'Kankan', 'Male', '1994-09-01', 25, 'Koina', 'AB+', '87.000', '5.900', 'No', '2019-11-03 19:20:38', '2019-11-03 19:29:16', 'Canceled', 'By Self', '1.00'),
(47, 'APMT-41', 47, 50, 'Gujarat', 'palanpur', '2019-11-03 00:00:00', 'Neel Joshi', 'Jada', '????? ??????...\r\n????? ?????...\r\n????? ??????...\r\n??? ???? ?? ?? ?????????? ????? ???... \r\n????????? ???????? ????? ????... \r\n??? ??? ??? ?? ?? ????? ????? ??? ?????...????????', 'Male', '1994-09-01', 25, 'Koina', 'AB+', '87.000', '5.600', 'No', '2019-11-03 19:26:15', '2019-11-03 19:28:59', 'Canceled', 'By Self', '1.00'),
(48, 'APMT-42', 47, 50, 'Gujarat', 'palanpur', '2019-11-03 00:00:00', 'Pin2', 'Mardo', '????? ??????...\r\n????? ?????...\r\n????? ??????...\r\n??? ???? ?? ?? ?????????? ????? ???... \r\n????????? ???????? ????? ????... \r\n??? ??? ??? ?? ?? ????? ????? ??? ?????...????????', 'Male', '1994-11-01', 25, 'Koina', 'AB+', '88.000', '6.100', 'No', '2019-11-03 19:34:12', '2019-11-03 19:42:18', 'Visited', 'By Self', '1.00'),
(49, 'APMT-43', 47, 50, 'Gujarat', 'Ahmedabad', '2019-11-04 00:00:00', 'Neel', 'Jada', '????? ??????...\r\n????? ?????...\r\n????? ??????...\r\n??? ???? ?? ?? ?????????? ????? ???... \r\n????????? ???????? ????? ????... \r\n??? ??? ??? ?? ?? ????? ????? ??? ?????...????????', 'Male', '1999-11-03', 20, 'Bittu', 'AB+', '28.000', '3.600', 'No', '2019-11-03 19:48:03', '2019-11-04 13:24:48', 'Canceled', 'By Self', '1.00'),
(50, 'APMT-44', 47, 50, 'Rajasthan', 'jaipur', '2019-11-04 00:00:00', 'Ankit', 'Ulti', 'Pantiopalsnnnvxgjanb', 'Other', '1993-11-22', 25, 'Bittu', 'O-', '28.000', '3.600', 'No', '2019-11-03 19:50:16', '2019-11-05 12:26:07', 'Canceled', 'By Self', '1.00'),
(51, 'APMT-45', 19, NULL, NULL, NULL, '2019-11-03 00:00:00', 'snehal vyas', 'viralfiver', 'ffdf', 'Male', '1994-02-01', 25, 'self', 'A+', '55.000', '5.500', 'No', '2019-11-03 20:06:28', '2019-11-03 23:20:16', 'Visited', 'By Receptionist', '1.00'),
(52, 'APMT-46', 19, 35, NULL, NULL, '2019-11-03 00:00:00', 'rony sharma', 'back pain', 'ssdsdsd', 'Male', '1997-01-29', 22, 'self', 'B+', '70.000', '5.600', 'No', '2019-11-03 20:22:23', '2020-06-15 13:13:56', 'Canceled', 'By Receptionist', '1.00'),
(53, 'APMT-47', 19, NULL, NULL, NULL, '2019-11-03 00:00:00', 'Alpesh Gupta', 'fiver', 'ddfd', 'Male', '1996-01-29', 23, 'self', 'AB+', '70.000', '5.500', 'No', '2019-11-03 22:04:03', '2019-11-03 23:23:16', 'Visited', 'By Receptionist', '1.00'),
(54, 'APMT-48', 53, 46, NULL, NULL, '2019-11-03 00:00:00', 'RAMESH BHAI', 'FEVER', '', 'Male', '2002-08-18', 17, '', '', '0.000', '0.000', 'No', '2019-11-03 23:20:52', '2019-11-05 11:37:32', 'Visited', 'By Hospital', '1.00'),
(55, 'APMT-49', 53, NULL, NULL, NULL, '2019-11-04 00:00:00', 'RAMESH lal', 'fever', '', 'Male', '1998-11-28', 20, '', '', '0.000', '0.000', 'No', '2019-11-04 00:09:23', '2019-11-05 11:37:46', 'Visited', 'By Hospital', '1.00'),
(56, 'APMT-50', 47, 50, '', '', '0000-00-00 00:00:00', 'Neel', 'Mardo', '', 'Male', '1998-01-19', 21, '', 'A+', '0.000', '0.000', 'No', '2019-11-04 13:27:57', '2019-11-05 12:26:17', 'Canceled', 'By Self', '1.00'),
(57, 'APMT-51', 53, 46, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'ram', 'fever', '', 'Male', '2014-12-31', 4, '', '', '0.000', '0.000', 'No', '2019-11-05 09:25:30', '2019-11-05 11:36:28', 'Visited', 'By Self', '1.00'),
(58, 'APMT-52', 53, 17, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'rahul', 'fever', '', 'Male', '2014-10-28', 5, '', '', '0.000', '0.000', 'No', '2019-11-05 09:29:26', '2019-11-05 11:38:01', 'Visited', 'By Self', '1.00'),
(59, 'APMT-53', 53, 46, 'Gujarat', 'Ahmedabad', '2019-11-05 00:00:00', 'ena', 'fever', '', 'Male', '2017-08-21', 2, '', '', '0.000', '0.000', 'No', '2019-11-05 09:31:12', '2019-11-05 11:41:05', 'Canceled', 'By Self', '1.00'),
(60, 'APMT-54', 53, 46, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'RAMESH BHAI', 'fever', '', 'Male', '1984-11-28', 34, '', '', '0.000', '0.000', 'No', '2019-11-05 09:32:17', '2019-11-05 11:41:18', 'Canceled', 'By Self', '1.00'),
(61, 'APMT-55', 53, 46, 'Gujarat', NULL, '2019-11-05 00:00:00', 'rahul varma', 'fever', '', 'Male', '1984-11-28', 34, '', '', '0.000', '0.000', 'No', '2019-11-05 09:33:20', '2019-11-05 11:41:27', 'Canceled', 'By Self', '1.00'),
(62, 'APMT-56', 53, 17, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'wan', 'fever', '', 'Male', '2016-10-28', 3, '', '', '0.000', '0.000', 'No', '2019-11-05 09:34:55', '2019-11-05 11:49:23', 'Canceled', 'By Self', '1.00'),
(63, 'APMT-57', 53, 46, NULL, NULL, '2019-11-05 00:00:00', 'offlineetest', 'offilen', 'shahid khabb', 'Male', '2019-11-05', 0, 'BORTHER', 'O+', '0.000', '2.000', 'No', '2019-11-05 11:10:33', '2019-11-05 11:38:15', 'Visited', 'By Hospital', '1.00'),
(64, 'APMT-58', 53, 46, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'first', 'fever', '', 'Male', '2016-08-28', 3, '', '', '0.000', '0.000', 'No', '2019-11-05 11:45:48', '2019-11-05 12:37:26', 'Visited', 'By Self', '1.00'),
(65, 'APMT-59', 53, 46, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'second', 'fever', '', 'Male', '2017-10-30', 2, '', '', '0.000', '0.000', 'No', '2019-11-05 11:48:04', '2019-11-05 12:37:51', 'Visited', 'By Self', '1.00'),
(66, 'APMT-60', 53, NULL, NULL, NULL, '2019-11-05 00:00:00', 'third', 'fever', '', 'Male', '2014-10-28', 5, '', '', '0.000', '0.000', 'No', '2019-11-05 11:50:47', '2019-11-05 12:38:27', 'Visited', 'By Hospital', '1.00'),
(67, 'APMT-61', 53, 46, NULL, NULL, '2019-11-05 00:00:00', 'forth', 'dengue', '', 'Male', '2013-08-28', 6, '', '', '0.000', '0.000', 'No', '2019-11-05 11:52:18', '2019-11-05 12:38:06', 'Visited', 'By Hospital', '1.00'),
(68, 'APMT-62', 53, 46, NULL, NULL, '2019-11-05 00:00:00', 'five', 'five', ',dshf,shdfk', 'Male', '0000-00-00', 0, 'noting', '', '23.000', '23.000', 'No', '2019-11-05 12:19:36', '2019-11-05 12:38:07', 'Visited', 'By Hospital', '1.00'),
(69, 'APMT-63', 53, 50, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'sixth', 'fever', '', 'Male', '2017-08-28', 2, '', 'O-', '0.000', '0.000', 'No', '2019-11-05 12:24:46', '2019-11-05 12:38:08', 'Visited', 'By Self', '1.00'),
(70, 'APMT-64', 53, 50, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'seventh', 'fever', '', 'Male', '2016-10-28', 3, '', '', '0.000', '0.000', 'No', '2019-11-05 12:25:53', '2019-11-05 12:38:09', 'Visited', 'By Self', '1.00'),
(71, 'APMT-65', 54, 50, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'first', 'fever', '', 'Male', '2016-10-28', 3, '', 'O+', '0.000', '0.000', 'No', '2019-11-05 12:33:08', '2019-11-05 13:19:53', 'Visited', 'By Self', '1.00'),
(72, 'APMT-66', 54, 50, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'second', 'fever', '', 'Male', '1962-10-28', 57, '', 'O+', '0.000', '0.000', 'No', '2019-11-05 12:34:13', '2019-11-05 13:20:07', 'Visited', 'By Self', '1.00'),
(73, 'APMT-67', 47, 46, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'smit', 'fever', '', 'Male', '1997-04-04', 22, '', '', '0.000', '0.000', 'No', '2019-11-05 17:16:25', '2019-11-05 17:33:40', 'Visited', 'By Self', '1.00'),
(74, 'APMT-68', 53, 46, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'PALAK', 'fever', '', 'Male', '2015-11-30', 3, '', '', '0.000', '0.000', 'No', '2019-11-05 17:40:19', '2019-11-05 18:32:56', 'Visited', 'By Self', '1.00'),
(75, 'APMT-69', 53, 46, 'Gujarat', 'palanpur', '2019-11-05 00:00:00', 'kalpna', 'fever', '', 'Male', '1997-06-07', 22, '', '', '0.000', '0.000', 'No', '2019-11-05 18:38:46', '2019-11-05 18:49:26', 'Visited', 'By Self', '1.00'),
(76, 'APMT-70', 47, 46, 'Gujarat', 'palanpur', '2019-11-06 00:00:00', 'shahid_pateint1', 'dengue', 'shahid have weaknes  still this date because working on hospital  project', 'Male', '1998-02-09', 21, 'shahid', 'O-', '23.000', '23.000', 'No', '2019-11-06 14:22:46', '2019-11-07 16:36:22', 'Visited', 'By Self', '1.00'),
(77, 'APMT-71', 47, 46, 'Gujarat', 'palanpur', '2019-11-07 00:00:00', 'hjjj', 'fffffff', 'husffrhrtgtjjjjjjjjjjjjjjjj', 'Male', '1987-01-03', 32, '', '', '222.000', '22.000', 'No', '2019-11-07 11:56:06', '2019-11-19 10:16:36', 'Visited', 'By Self', '1.00'),
(78, 'APMT-72', 47, 46, 'Rajasthan', '', '2019-11-07 00:00:00', 'ashish', 'bigoda', '', 'Male', '0000-00-00', 0, '', 'AB-', '0.000', '0.000', 'Yes', '2019-11-07 14:08:16', '2019-11-21 22:57:28', 'Visited', 'By Self', '1.00'),
(79, 'APMT-73', 53, 46, 'Gujarat', '', '2019-11-07 00:00:00', 'ashish', 'sfsrhdtuj', 'sjjikk', 'Male', '1997-01-01', 22, 'j', 'O+', '357.000', '33.000', 'Yes', '2019-11-07 14:17:04', '2019-11-07 14:54:11', 'Visited', 'By Self', '1.00'),
(80, 'APMT-74', 53, 46, 'Gujarat', '', '2019-11-07 00:00:00', 'ashish', 'sfsrhdtuj', 'sjjikk', 'Male', '1997-01-01', 22, 'j', 'O+', '357.000', '33.000', 'Yes', '2019-11-07 14:20:56', '2019-12-18 13:22:52', 'Visited', 'By Self', '1.00'),
(81, 'APMT-75', 53, 46, 'Gujarat', '', '2019-11-07 00:00:00', 'himal', '3', '22ggggfsfgrtgvf', 'Male', '0000-00-00', 22, '222', '', '87.000', '22.000', 'Yes', '2019-11-07 14:23:41', '2019-11-07 15:01:54', 'Visited', 'By Self', '1.00'),
(82, 'APMT-76', 36, 57, 'Gujarat', 'palanpur', '2019-11-17 00:00:00', 'Fatem', 'faver and other issue', 'data is done', 'Male', '2019-11-17', 0, 'shahid', 'A+', '12.000', '12.000', 'No', '2019-11-17 11:54:18', '2019-11-17 12:02:58', 'Visited', 'By Self', '1.00'),
(83, 'APMT-77', 36, 57, 'Gujarat', 'palanpur', '2019-11-17 00:00:00', 'Shahid', 'data problem', 'done', 'Male', '0000-00-00', 0, '', 'O+', '0.000', '0.000', 'No', '2019-11-17 11:57:41', '2019-11-17 12:17:40', 'Visited', 'By Self', '1.00'),
(84, 'APMT-78', 36, 57, 'Gujarat', 'palanpur', '2019-11-17 00:00:00', 'Munir', 'done', 'dfdf', 'Male', '0000-00-00', 0, '', 'O-', '0.000', '0.000', 'No', '2019-11-17 12:05:06', '2019-11-17 12:28:32', 'Visited', 'By Self', '1.00'),
(85, 'APMT-79', 36, 59, NULL, NULL, '2019-11-17 00:00:00', 'jayeda', 'jishan', 'done is done', 'Male', '2019-11-10', 0, '', 'O-', '0.000', '0.000', 'No', '2019-11-17 12:15:34', '2019-11-17 12:30:30', 'Visited', 'By Receptionist', '1.00'),
(86, 'APMT-80', 47, NULL, NULL, NULL, '2019-11-18 00:00:00', 'RAMESH BHAI', 'fever', '', 'Male', '1931-04-17', 88, '', 'AB-', '0.000', '0.000', 'No', '2019-11-18 19:47:19', '2019-11-21 22:57:53', 'Visited', 'By Receptionist', '1.00'),
(87, 'APMT-81', 47, NULL, NULL, NULL, '2019-11-18 00:00:00', 'viar', 'fever', '', 'Male', '1937-10-12', 82, '', 'A+', '0.000', '0.000', 'No', '2019-11-18 19:48:14', '2019-11-21 22:57:55', 'Visited', 'By Receptionist', '1.00'),
(88, 'APMT-82', 47, 46, 'Gujarat', 'palanpur', '2019-11-18 00:00:00', 'RAJESH PANDYAA', 'FEVER', '', 'Male', '1975-10-15', 44, '', 'O+', '0.000', '5.000', 'No', '2019-11-18 19:50:20', '2019-11-21 22:57:41', 'Visited', 'By Self', '1.00'),
(89, 'APMT-83', 36, 60, NULL, NULL, '2019-11-18 00:00:00', 'shahida', 'dengue', 'dfgfdg', 'Male', '2019-11-18', 0, 'sef', 'O+', '243.000', '123.000', 'No', '2019-11-18 22:08:21', '2019-12-09 14:41:17', 'Visited', 'By Receptionist', '1.00'),
(90, 'APMT-84', 36, NULL, NULL, NULL, '2019-11-18 00:00:00', 'jishan', 'dengue', 'shahid', 'Male', '0000-00-00', 0, 'BORTHER', 'O-', '23.000', '12.000', 'No', '2019-11-18 22:11:11', '2019-11-18 22:11:11', 'Approve', 'By Receptionist', '1.00'),
(91, 'APMT-85', 36, NULL, NULL, NULL, '2019-11-18 00:00:00', 'jishan', 'dengue', 'sdfdskjf', 'Male', '0000-00-00', 0, 'sefe', 'O-', '23.000', '23.000', 'No', '2019-11-18 22:12:47', '2019-11-18 22:12:47', 'Approve', 'By Receptionist', '1.00'),
(92, 'APMT-86', 47, NULL, NULL, NULL, '2019-11-18 00:00:00', 'ramesh bhai', 'fever', '', 'Male', '1991-04-16', 28, '', 'A+', '0.000', '0.000', 'No', '2019-11-18 22:38:47', '2019-11-21 22:57:59', 'Visited', 'By Receptionist', '1.00'),
(93, 'APMT-87', 47, NULL, NULL, NULL, '2019-11-18 00:00:00', 'rahul bhai', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-18 22:40:49', '2019-11-21 22:57:58', 'Visited', 'By Receptionist', '1.00'),
(94, 'APMT-88', 47, 46, 'Gujarat', 'palanpur', '2019-11-18 00:00:00', 'third', 'fever', '', 'Male', '1981-02-23', 38, '', 'A+', '0.000', '0.000', 'No', '2019-11-18 22:43:18', '2019-11-21 22:57:57', 'Visited', 'By Self', '1.00'),
(95, 'APMT-89', 36, 57, 'Gujarat', 'palanpur', '2019-11-18 00:00:00', 'sabir', 'dengue', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'Yes', '2019-11-18 22:49:06', '2019-11-18 22:53:06', 'Approve', 'By Self', '1.00'),
(96, 'APMT-90', 36, NULL, NULL, NULL, '2019-11-18 00:00:00', 'shahid1', 'shahid', 'sdfdsf', 'Male', '0000-00-00', 0, '', 'O-', '12.000', '12.000', 'No', '2019-11-18 22:52:50', '2019-11-18 22:52:50', 'Approve', 'By Receptionist', '1.00'),
(97, 'APMT-91', 36, NULL, NULL, NULL, '2019-11-18 00:00:00', 'testnewfine', 'jishan', 'dfgf', 'Male', '0000-00-00', 0, '', 'O+', '0.000', '0.000', 'No', '2019-11-18 22:55:36', '2019-11-18 22:55:36', 'Approve', 'By Receptionist', '1.00'),
(98, 'APMT-92', 4, NULL, NULL, NULL, '2019-11-19 00:00:00', 'harsh m varma', 'back pain', 'dbdkfbd', 'Male', '2004-02-02', 15, 'self', 'B+', '55.000', '5.500', 'No', '2019-11-19 10:51:15', '2020-06-15 10:30:16', 'Visited', 'By Receptionist', '1.00'),
(99, 'APMT-93', 4, 62, NULL, NULL, '2019-11-19 00:00:00', 'mehul prajapati', 'fiver', 'gfgfgfgfgfg', 'Male', '2012-02-14', 7, '-', 'B-', '70.000', '5.500', 'No', '2019-11-19 10:52:34', '2020-06-15 10:30:28', 'Visited', 'By Receptionist', '1.00'),
(100, 'APMT-94', 4, 17, NULL, NULL, '2019-11-19 00:00:00', 'raju m soni', 'vomating', 'kjksdbdfjkbfsd', 'Male', '2000-01-02', 19, 'brother', 'A+', '55.000', '5.500', 'No', '2019-11-19 10:53:23', '2020-06-15 10:30:37', 'Visited', 'By Receptionist', '1.00'),
(101, 'APMT-95', 4, 57, NULL, NULL, '2019-11-19 00:00:00', 'sabir khan', 'vomating', 'fdfdfdf', 'Male', '2003-01-15', 16, 'self', 'B-', '55.000', '5.500', 'No', '2019-11-19 11:24:53', '2020-06-15 10:30:49', 'Visited', 'By Receptionist', '1.00'),
(102, 'APMT-96', 36, 57, 'Gujarat', '', '2019-11-19 00:00:00', 'Jishan', 'fever', '', 'Male', '0000-00-00', 0, '', 'O+', '0.000', '0.000', 'No', '2019-11-19 12:25:13', '2019-11-19 12:25:56', 'Approve', 'By Self', '1.00'),
(103, 'APMT-97', 36, NULL, NULL, NULL, '2019-11-19 00:00:00', 'samira', 'dengue', 'asdsad', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-19 12:28:49', '2019-11-19 12:28:49', 'Approve', 'By Receptionist', '1.00'),
(104, 'APMT-98', 36, NULL, NULL, NULL, '2019-11-19 00:00:00', 'smir3', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-19 12:30:47', '2019-11-19 12:30:47', 'Approve', 'By Receptionist', '1.00'),
(105, 'APMT-99', 36, NULL, NULL, NULL, '2019-11-19 00:00:00', 'new5', 'new5', '', 'Male', '0000-00-00', 12, '', 'O-', '0.000', '0.000', 'No', '2019-11-19 12:32:14', '2019-11-19 12:32:14', 'Approve', 'By Receptionist', '1.00'),
(106, 'APMT-100', 36, NULL, NULL, NULL, '2019-11-19 00:00:00', 'newtest7', 'dengue', '', 'Male', '0000-00-00', 0, '', 'A+', '0.000', '0.000', 'No', '2019-11-19 12:33:22', '2019-11-19 12:33:22', 'Approve', 'By Receptionist', '1.00'),
(107, 'APMT-101', 36, 57, 'Gujarat', '', '2019-11-19 00:00:00', 'newtest', 'dengue', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-19 12:39:31', '2019-11-19 12:40:18', 'Approve', 'By Self', '1.00'),
(108, 'APMT-102', 36, 63, NULL, NULL, '2019-11-19 00:00:00', 'new for test', 'vomating', 'sdfdfdfd', 'Male', '2002-02-18', 17, 'self', 'B+', '70.000', '5.500', 'No', '2019-11-19 12:42:47', '2019-11-19 12:42:47', 'Approve', 'By Receptionist', '1.00'),
(109, 'APMT-103', 36, NULL, NULL, NULL, '2019-11-19 00:00:00', 'mytest12', 'dengue', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-19 12:44:56', '2019-11-19 12:44:56', 'Approve', 'By Receptionist', '1.00'),
(110, 'APMT-104', 36, NULL, NULL, NULL, '2019-11-19 00:00:00', 'newtwst21', 'dengue', 'fdfgd', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-19 12:50:00', '2019-11-19 12:50:00', 'Approve', 'By Receptionist', '1.00'),
(111, 'APMT-105', 36, 64, NULL, NULL, '2019-11-19 00:00:00', 'reg 1', 'vomating', 'gjhpgjhp', 'Male', '1992-03-19', 27, 'brother', 'B+', '70.000', '5.500', 'No', '2019-11-19 12:53:07', '2019-11-19 12:53:07', 'Approve', 'By Receptionist', '1.00'),
(112, 'APMT-106', 36, NULL, NULL, NULL, '2019-11-19 00:00:00', 'newtest34', 'very high fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-19 12:55:36', '2019-11-19 12:55:36', 'Approve', 'By Receptionist', '1.00'),
(113, 'APMT-107', 36, 65, NULL, NULL, '2019-11-19 00:00:00', 'new user', 'fiver', 'fdfdfdf', 'Male', '2003-06-24', 16, 'self', 'AB+', '60.000', '5.500', 'No', '2019-11-19 13:07:43', '2019-11-19 13:07:43', 'Approve', 'By Receptionist', '1.00'),
(114, 'APMT-108', 36, 66, NULL, NULL, '2019-11-19 00:00:00', '123456', 'vomating', 'fgfgfgfg', 'Male', '1999-01-12', 20, 'self', 'B-', '70.000', '5.500', 'No', '2019-11-19 13:18:50', '2019-11-19 13:18:50', 'Approve', 'By Receptionist', '1.00'),
(115, 'APMT-109', 36, 67, NULL, NULL, '2019-11-19 00:00:00', 'mmmmmmm', 'fiver', 'bbj', 'Male', '2011-02-15', 8, '-', 'B-', '70.000', '5.500', 'No', '2019-11-19 13:27:52', '2019-11-19 13:27:52', 'Approve', 'By Receptionist', '1.00'),
(116, 'APMT-110', 36, 57, '', '', '2019-11-19 00:00:00', 'testlivewithsnehal', 'fever', 'plese help', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-19 16:48:01', '2019-11-19 17:00:30', 'Approve', 'By Self', '1.00'),
(117, 'APMT-111', 36, 68, NULL, NULL, '2019-11-19 00:00:00', 'hello7', 'dengue', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-19 16:59:49', '2019-11-19 16:59:49', 'Approve', 'By Receptionist', '1.00'),
(118, 'APMT-112', 47, 46, 'Gujarat', 'palanpur', '2019-11-21 00:00:00', 'mit parekh', 'fever', '', 'Male', '1981-08-22', 38, '', '', '0.000', '0.000', 'No', '2019-11-21 22:50:47', '2019-11-21 23:03:29', 'Visited', 'By Self', '1.00'),
(119, 'APMT-113', 47, NULL, NULL, NULL, '2019-11-22 00:00:00', 'RAMESH BHAI', 'fever', '', 'Male', '2002-10-22', 17, '', 'A+', '0.000', '0.000', 'No', '2019-11-22 23:33:29', '2019-11-22 23:38:18', 'Canceled', 'By Receptionist', '1.00'),
(120, 'APMT-114', 47, 72, NULL, NULL, '2019-11-22 00:00:00', 'ram', 'fever', '', 'Male', '1997-03-17', 22, '', 'A+', '0.000', '0.000', 'No', '2019-11-22 23:35:22', '2019-11-22 23:40:53', 'Visited', 'By Receptionist', '1.00'),
(121, 'APMT-115', 47, 46, '', '', '2019-11-22 00:00:00', 'saj', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-22 23:36:21', '2019-11-22 23:41:17', 'Visited', 'By Self', '1.00'),
(122, 'APMT-116', 47, 73, NULL, NULL, '2019-11-22 00:00:00', 'wddw', 'fever', '', 'Male', '1982-08-17', 37, '', 'A+', '0.000', '0.000', 'No', '2019-11-22 23:40:13', '2019-11-22 23:41:43', 'Visited', 'By Receptionist', '1.00'),
(123, 'APMT-117', 36, 57, NULL, NULL, '2019-11-23 00:00:00', 'shahid_notone', 'Testfordesease', 'sdfdsfsdfdsfdsfs', 'Male', '2019-11-23', 0, '', 'A+', '0.000', '0.000', 'Yes', '2019-11-23 10:56:34', '2019-11-23 11:08:20', 'Visited', 'By Receptionist', '1.00'),
(124, 'APMT-118', 36, 57, NULL, NULL, '2019-11-23 00:00:00', 'shahid_Problem', 'jishan', 'check with don', 'Male', '0000-00-00', 0, 'son', '', '0.000', '0.000', 'No', '2019-11-23 11:02:47', '2019-11-23 11:12:36', 'Visited', 'By Receptionist', '1.00'),
(125, 'APMT-119', 47, 46, '', '', '2019-11-23 00:00:00', 'by shahid', 'by shahid', 'chk wuth', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-23 11:41:43', '2019-11-23 11:45:32', 'Visited', 'By Self', '1.00'),
(126, 'APMT-120', 47, 57, '', '', '2019-11-23 00:00:00', 'sbbairbhaii', 'test for', 'test for  history', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-23 12:07:34', '2019-11-23 12:10:20', 'Visited', 'By Self', '1.00'),
(127, 'APMT-121', 47, 57, '', '', '2019-11-23 00:00:00', 'Shahid Testnew', 'dengue', 'fsdfsd', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-23 12:19:32', '2019-11-23 12:20:54', 'Canceled', 'By Self', '1.00'),
(128, 'APMT-122', 36, 74, 'Gujarat', 'palanpur', '2019-11-26 00:00:00', 'mahesh', 'Fever', 'helo', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-26 13:48:15', '2019-11-26 13:52:56', 'Approve', 'By Self', '1.00'),
(129, 'APMT-123', 36, 74, 'Gujarat', 'palanpur', '2019-11-26 00:00:00', 'Name2', 'headche', 'heloo', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-26 13:51:39', '2019-11-26 13:53:23', 'Approve', 'By Self', '1.00'),
(130, 'APMT-124', 36, 57, '', '', '2019-11-26 00:00:00', 'shahid', 'fever', 'hello', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-26 13:54:30', '2019-11-26 13:59:40', 'Visited', 'By Self', '1.00'),
(131, 'APMT-125', 47, 46, 'Gujarat', 'palanpur', '2019-11-26 00:00:00', 'naj', 'fvdnlk', '', 'Male', '1991-11-26', 28, '', 'A+', '0.000', '0.000', 'No', '2019-11-26 15:59:33', '2019-11-26 16:34:39', 'Visited', 'By Self', '1.00'),
(132, 'APMT-126', 47, 75, NULL, NULL, '2019-11-26 00:00:00', 'bhavesh', 'fever', '', 'Male', '1982-06-28', 37, '', 'A+', '0.000', '0.000', 'No', '2019-11-26 16:05:57', '2019-12-09 11:15:01', 'Visited', 'By Receptionist', '1.00'),
(133, 'APMT-127', 47, 76, NULL, NULL, '2019-11-26 00:00:00', 'rahul', 'djs', '', 'Male', '2002-10-28', 17, '', 'A+', '0.000', '0.000', 'No', '2019-11-26 16:06:58', '2019-12-10 21:02:30', 'Visited', 'By Receptionist', '1.00'),
(134, 'APMT-128', 47, 46, 'Gujarat', 'palanpur', '2019-11-26 00:00:00', 'faw', 'dhjb', '', 'Male', '1977-08-28', 42, '', 'A+', '0.000', '0.000', 'No', '2019-11-26 16:12:54', '2019-12-12 09:59:24', 'Visited', 'By Self', '1.00'),
(135, 'APMT-129', 77, NULL, NULL, NULL, '2019-11-27 00:00:00', 'digvijay', 'sssssssssssssj', '', 'Male', '1984-10-18', 35, '', 'A+', '0.000', '0.000', 'No', '2019-11-27 23:31:18', '2019-11-27 23:50:35', 'Visited', 'By Receptionist', '1.00'),
(136, 'APMT-130', 77, 81, NULL, NULL, '2019-11-27 00:00:00', 'SAJ', 'DDDDDDD', '', 'Male', '1977-07-11', 42, '', 'B+', '0.000', '0.000', 'No', '2019-11-27 23:37:06', '2019-11-27 23:51:27', 'Visited', 'By Receptionist', '1.00'),
(137, 'APMT-131', 77, 82, NULL, NULL, '2019-11-27 00:00:00', 'DAJ', 'DDDDDDDDDDDD', '', 'Male', '2011-11-11', 8, '', 'A+', '0.000', '0.000', 'No', '2019-11-27 23:38:17', '2019-11-27 23:52:37', 'Visited', 'By Receptionist', '1.00'),
(138, 'APMT-132', 77, 46, 'Gujarat', 'palanpur', '2019-11-27 00:00:00', 'DHJ', 'DJ', '', 'Male', '1986-11-13', 33, '', 'A+', '0.000', '0.000', 'No', '2019-11-27 23:40:13', '2019-11-27 23:52:54', 'Visited', 'By Self', '1.00'),
(139, 'APMT-133', 77, NULL, NULL, NULL, '2019-11-28 00:00:00', 'RAG', 'SIJI', '', 'Male', '2002-02-20', 17, '', 'A+', '0.000', '0.000', 'No', '2019-11-27 23:59:51', '2019-11-28 00:07:26', 'Visited', 'By Receptionist', '1.00'),
(140, 'APMT-134', 77, NULL, NULL, NULL, '2019-11-28 00:00:00', 'RAS', 'GKMDKF', '', 'Male', '2011-06-22', 8, '', 'A+', '0.000', '0.000', 'No', '2019-11-28 00:01:50', '2019-11-28 00:08:14', 'Visited', 'By Receptionist', '1.00'),
(141, 'APMT-135', 77, 46, 'Gujarat', 'palanpur', '2019-11-28 00:00:00', 'EFSR', 'RGDRG', '', 'Male', '2002-11-20', 17, '', 'A+', '0.000', '0.000', 'No', '2019-11-28 00:03:06', '2019-11-28 00:09:07', 'Visited', 'By Self', '1.00'),
(142, 'APMT-136', 36, 57, '', '', '2019-11-28 00:00:00', 'papa1', 'dengue', 'sdfdf', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 08:42:10', '2019-11-28 08:50:18', 'Approve', 'By Self', '1.00'),
(143, 'APMT-137', 36, 57, '', '', '2019-11-28 00:00:00', 'papa2', 'fever', 'dfd', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 08:43:22', '2019-11-28 08:50:42', 'Approve', 'By Self', '1.00'),
(144, 'APMT-138', 36, 83, NULL, NULL, '2019-11-28 00:00:00', 'samira', 'asds', 'asdsada', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 08:48:23', '2019-11-28 08:48:23', 'Approve', 'By Receptionist', '1.00'),
(145, 'APMT-139', 36, NULL, NULL, NULL, '2019-11-28 00:00:00', 'jishan', 'fever', 'done is done', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 08:49:58', '2019-11-28 08:49:58', 'Approve', 'By Receptionist', '1.00'),
(146, 'APMT-140', 36, NULL, NULL, NULL, '2019-11-28 00:00:00', 'shahid tst', 'dsfs', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 08:56:42', '2019-11-28 08:56:42', 'Approve', 'By Receptionist', '1.00'),
(147, 'APMT-141', 36, 85, NULL, NULL, '2019-11-28 00:00:00', 'sssg', 'sdfsd', 'fdsfsd', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 08:58:31', '2019-11-28 08:58:31', 'Approve', 'By Receptionist', '1.00'),
(148, 'APMT-142', 36, 86, NULL, NULL, '2019-11-28 00:00:00', 'jishan', 'hello', 'sdfdsfds', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 09:00:25', '2019-11-28 09:00:25', 'Approve', 'By Receptionist', '1.00'),
(149, 'APMT-143', 36, 57, NULL, NULL, '2019-11-28 00:00:00', 'hello', 'xcvcxv', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 09:01:25', '2019-11-28 09:01:25', 'Approve', 'By Receptionist', '1.00'),
(150, 'APMT-144', 36, 87, NULL, NULL, '2019-11-28 00:00:00', 'final', 'final', 'sdfds', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 09:01:59', '2019-11-28 09:01:59', 'Approve', 'By Receptionist', '1.00'),
(151, 'APMT-145', 77, 88, NULL, NULL, '2019-11-28 00:00:00', 'smytest12', 'newver', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 10:52:54', '2019-11-29 15:12:25', 'Visited', 'By Receptionist', '1.00'),
(152, 'APMT-146', 77, 89, NULL, NULL, '2019-11-28 00:00:00', 'newverfer', 'newver', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 10:54:11', '2019-11-29 15:23:08', 'Visited', 'By Receptionist', '1.00'),
(153, 'APMT-147', 77, 90, NULL, NULL, '2019-11-28 00:00:00', 'samira', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 10:54:56', '2019-11-28 10:54:56', 'Approve', 'By Receptionist', '1.00'),
(154, 'APMT-148', 77, 85, '', '', '2019-11-28 00:00:00', 'done', 'done', 'done', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-28 10:56:28', '2019-11-28 10:57:17', 'Approve', 'By Self', '1.00'),
(155, 'APMT-149', 77, 91, NULL, NULL, '2019-11-28 00:00:00', 'jay joshi', 'fever', '', 'Male', '2011-11-28', 8, '', 'A+', '0.000', '0.000', 'No', '2019-11-28 11:08:10', '2019-11-28 11:08:10', 'Approve', 'By Receptionist', '1.00'),
(156, 'APMT-150', 77, 92, NULL, NULL, '2019-11-28 00:00:00', 'gah', 'dw', '', 'Male', '2002-10-22', 17, '', 'AB+', '0.000', '0.000', 'No', '2019-11-28 11:09:11', '2019-11-28 11:09:11', 'Approve', 'By Receptionist', '1.00'),
(157, 'APMT-151', 77, 46, 'Gujarat', 'palanpur', '2019-11-28 00:00:00', 'gsa', 'dhsghb', '', 'Male', '2011-11-28', 8, '', 'A+', '0.000', '0.000', 'No', '2019-11-28 11:12:11', '2019-11-28 11:13:02', 'Approve', 'By Self', '1.00'),
(158, 'APMT-152', 77, 46, 'Gujarat', 'palanpur', '2019-11-29 00:00:00', 'fas', 'mathu dukhe 6 e', '', 'Male', '2017-11-28', 2, '', '', '0.000', '0.000', 'No', '2019-11-29 15:06:28', '2019-11-29 15:11:46', 'Approve', 'By Self', '1.00'),
(159, 'APMT-153', 77, 93, NULL, NULL, '2019-11-29 00:00:00', 'xzfg', 'dfsd', '', 'Male', '2012-10-28', 7, '', '', '0.000', '0.000', 'No', '2019-11-29 15:11:36', '2019-11-29 15:11:36', 'Approve', 'By Receptionist', '1.00'),
(160, 'APMT-154', 36, 57, '', '', '2019-11-29 00:00:00', 'shahuid', 'hello', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-11-29 15:48:00', '2019-11-29 15:53:03', 'Approve', 'By Self', '1.00'),
(161, 'APMT-155', 36, 94, NULL, NULL, '2019-11-29 00:00:00', 'SHAHID', 'SDF', '', 'Male', '0000-00-00', 0, '', 'O-', '0.000', '0.000', 'No', '2019-11-29 15:54:58', '2019-11-29 15:54:58', 'Approve', 'By Receptionist', '1.00'),
(162, 'APMT-156', 47, 46, 'Gujarat', 'palanpur', '2019-12-03 00:00:00', 'dal', 'fever', '', 'Male', '2008-04-28', 11, '', 'A+', '0.000', '0.000', 'No', '2019-12-03 23:49:02', '2019-12-18 11:02:08', 'Visited', 'By Self', '1.00'),
(163, 'APMT-157', 47, 96, NULL, NULL, '2019-12-09 00:00:00', 'rahul', 'headach', '', 'Male', '2008-09-26', 11, '', 'A+', '0.000', '0.000', 'No', '2019-12-09 11:20:23', '2019-12-12 09:59:43', 'Visited', 'By Receptionist', '1.00'),
(164, 'APMT-158', 47, 46, 'Gujarat', 'palanpur', '2019-12-09 00:00:00', 'rahul', 'headache', '', 'Male', '2019-10-27', 0, '', '', '0.000', '0.000', 'No', '2019-12-09 11:42:37', '2019-12-18 11:02:25', 'Visited', 'By Self', '1.00'),
(165, 'APMT-159', 53, 46, 'Gujarat', 'palanpur', '2019-12-12 00:00:00', 'ashish uniyal', 'back pain', '', 'Male', '1998-02-22', 21, 'friend', 'A+', '67.000', '6.000', 'No', '2019-12-12 09:46:18', '2019-12-13 10:41:55', 'Canceled', 'By Self', '1.00'),
(166, 'APMT-160', 47, 46, 'Gujarat', 'palanpur', '2019-12-12 00:00:00', 'uniyal aashish', 'fever', '', 'Male', '1998-02-22', 21, '', 'O+', '0.000', '0.000', 'No', '2019-12-12 09:48:52', '2019-12-12 09:59:45', 'Visited', 'By Self', '1.00'),
(167, 'APMT-161', 36, 57, 'Gujarat', '', '2019-12-12 00:00:00', 'sahid', 'dengue', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-12-12 09:58:46', '2019-12-12 10:23:05', 'Visited', 'By Self', '1.00'),
(168, 'APMT-162', 36, 57, NULL, NULL, '2019-12-12 00:00:00', 'munir', 'hello', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-12-12 10:00:10', '2019-12-12 10:00:10', 'Approve', 'By Receptionist', '1.00'),
(169, 'APMT-163', 47, 101, NULL, NULL, '2019-12-12 00:00:00', 'rahul', 'headache', '', 'Male', '2011-08-22', 8, '', 'A+', '0.000', '0.000', 'No', '2019-12-12 10:08:13', '2019-12-12 10:30:49', 'Visited', 'By Receptionist', '1.00'),
(170, 'APMT-164', 47, 104, NULL, NULL, '2019-12-12 00:00:00', 'hema', 'sus', '', 'Male', '2007-11-28', 12, '', '', '0.000', '0.000', 'No', '2019-12-12 10:09:50', '2019-12-12 12:32:19', 'Visited', 'By Receptionist', '1.00'),
(171, 'APMT-165', 47, 105, NULL, NULL, '2019-12-12 00:00:00', 'vihan', 'fever', '', 'Male', '2013-11-24', 6, '', 'A+', '0.000', '0.000', 'No', '2019-12-12 10:11:25', '2019-12-12 13:14:46', 'Visited', 'By Receptionist', '1.00'),
(172, 'APMT-166', 47, 46, 'Gujarat', 'palanpur', '2019-12-12 00:00:00', 'rahul patel', 'fever', '', 'Male', '2016-08-28', 3, '', 'A+', '0.000', '0.000', 'No', '2019-12-12 10:13:25', '2019-12-12 16:05:23', 'Visited', 'By Self', '1.00'),
(173, 'APMT-167', 47, 46, 'Gujarat', 'palanpur', '2019-12-12 00:00:00', 'sandeep jain', 'fever', '', 'Male', '1993-01-26', 26, '', 'A+', '0.000', '0.000', 'No', '2019-12-12 13:23:08', '2019-12-18 11:02:16', 'Visited', 'By Self', '1.00'),
(174, 'APMT-168', 19, 106, 'Gujarat', '', '2019-12-16 00:00:00', 'Vicky Maurya', 'Fever', '', 'Male', '1989-12-24', 29, '', 'O+', '89.000', '170.000', 'No', '2019-12-12 16:48:58', '2020-06-15 13:10:55', 'Canceled', 'By Self', '1.00'),
(175, 'APMT-169', 47, 107, NULL, NULL, '2019-12-13 00:00:00', 'arman', 'fever', '', 'Male', '1993-03-13', 26, '', 'A+', '0.000', '0.000', 'No', '2019-12-13 10:24:26', '2019-12-18 11:02:31', 'Visited', 'By Receptionist', '1.00'),
(176, 'APMT-170', 47, 108, NULL, NULL, '2019-12-13 00:00:00', 'vihan', 'fever', '', 'Male', '1991-11-17', 28, '', 'A+', '0.000', '0.000', 'No', '2019-12-13 10:25:49', '2019-12-18 11:02:39', 'Visited', 'By Receptionist', '1.00'),
(177, 'APMT-171', 47, 109, NULL, NULL, '2019-12-13 00:00:00', 'ramesh', 'FEVER', '', 'Male', '2008-10-28', 11, '', 'A+', '0.000', '0.000', 'No', '2019-12-13 10:28:02', '2019-12-18 11:02:45', 'Visited', 'By Receptionist', '1.00'),
(178, 'APMT-172', 47, 46, 'Gujarat', 'palanpur', '2019-12-13 00:00:00', 'rahul sharma', 'fever', '', 'Male', '2008-08-28', 11, '', 'AB+', '0.000', '0.000', 'No', '2019-12-13 10:41:09', '2019-12-18 11:02:53', 'Visited', 'By Self', '1.00'),
(179, 'APMT-173', 47, 118, 'Gujarat', 'Ahmedabad', '2019-12-16 00:00:00', 'Meet Patel', 'khujli', '', 'Male', '1998-12-01', 20, '', 'O+', '0.000', '0.000', 'No', '2019-12-16 13:52:25', '2019-12-16 14:11:36', 'Visited', 'By Self', '1.00'),
(180, 'APMT-174', 47, 119, NULL, NULL, '2019-12-16 00:00:00', 'meet', 'fever', '', 'Male', '1997-10-21', 22, '', 'O+', '0.000', '0.000', 'No', '2019-12-16 14:00:11', '2019-12-18 11:02:53', 'Visited', 'By Receptionist', '1.00'),
(181, 'APMT-175', 95, 118, 'Gujarat', 'Ahmedabad', '2019-12-16 00:00:00', 'Meet Patel', 'dard', '', 'Male', '2000-08-12', 19, '', 'O+', '0.000', '0.000', 'No', '2019-12-16 14:29:31', '2019-12-16 14:30:06', 'Approve', 'By Self', '1.00'),
(182, 'APMT-176', 111, NULL, NULL, NULL, '2019-12-16 00:00:00', 'raju', 'tav', 'hii', 'Male', '1998-08-05', 21, '', 'A+', '48.000', '167.000', 'No', '2019-12-16 16:03:02', '2019-12-16 16:08:05', 'Visited', 'By Hospital', '1.00'),
(183, 'APMT-177', 47, 46, 'Gujarat', 'palanpur', '2019-12-18 00:00:00', 'sagar', 'sb', '', 'Male', '1997-01-26', 22, '', 'A+', '0.000', '0.000', 'No', '2019-12-18 10:29:33', '2019-12-18 10:30:41', 'Visited', 'By Self', '1.00'),
(184, 'APMT-178', 47, 122, NULL, NULL, '2019-12-18 00:00:00', 'SAGAR', 'fever', '', 'Male', '2017-11-28', 2, '', 'A+', '0.000', '0.000', 'No', '2019-12-18 10:41:45', '2019-12-18 11:03:00', 'Visited', 'By Receptionist', '1.00'),
(185, 'APMT-179', 47, NULL, NULL, NULL, '2019-12-18 00:00:00', 'Kim', 'dard', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-12-18 10:44:58', '2019-12-18 11:03:06', 'Visited', 'By Receptionist', '1.00'),
(186, 'APMT-180', 47, 128, NULL, NULL, '2019-12-18 00:00:00', 'Kim K', 'dard', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2019-12-18 10:47:06', '2019-12-18 11:03:13', 'Visited', 'By Receptionist', '1.00'),
(187, 'APMT-181', 47, NULL, NULL, NULL, '2019-12-18 00:00:00', 'Shaw', 'dard', '', 'Male', '1990-11-21', 29, '', '', '0.000', '0.000', 'No', '2019-12-18 10:48:32', '2019-12-18 11:03:21', 'Visited', 'By Receptionist', '1.00'),
(188, 'APMT-182', 47, 46, '', '', '2019-12-18 00:00:00', 'Hobbs', 'ache', '', 'Male', '1998-02-06', 21, '', '', '0.000', '0.000', 'No', '2019-12-18 11:00:05', '2019-12-18 11:03:30', 'Visited', 'By Self', '1.00'),
(189, 'APMT-183', 47, 129, NULL, NULL, '2019-12-18 00:00:00', 'Bob', 'ache', '', 'Male', '2000-02-20', 19, '', '', '0.000', '0.000', 'No', '2019-12-18 11:05:29', '2019-12-18 11:50:15', 'Visited', 'By Receptionist', '1.00'),
(190, 'APMT-184', 47, 130, NULL, NULL, '2019-12-18 00:00:00', 'jimbo', 'ache', '', 'Male', '2000-12-02', 19, '', '', '0.000', '0.000', 'No', '2019-12-18 11:06:25', '2019-12-18 11:58:07', 'Visited', 'By Receptionist', '1.00'),
(191, 'APMT-185', 47, 131, NULL, NULL, '2019-12-18 00:00:00', 'Katy Perry', 'Gas', '', 'Male', '2000-02-02', 19, '', '', '0.000', '0.000', 'No', '2019-12-18 11:07:11', '2020-06-15 10:06:02', 'Visited', 'By Receptionist', '1.00'),
(192, 'APMT-186', 47, 132, NULL, NULL, '2019-12-18 00:00:00', 'Di Caprio', 'acidity', '', 'Male', '2000-02-20', 19, '', '', '0.000', '0.000', 'No', '2019-12-18 11:08:07', '2019-12-18 17:41:51', 'Visited', 'By Receptionist', '1.00'),
(193, 'APMT-187', 47, 133, NULL, NULL, '2019-12-18 00:00:00', 'Mojito', 'pata nahi', '', 'Male', '1987-02-02', 32, '', '', '0.000', '0.000', 'No', '2019-12-18 11:09:04', '2020-06-15 10:06:03', 'Visited', 'By Receptionist', '1.00'),
(194, 'APMT-188', 47, 134, NULL, NULL, '2019-12-18 00:00:00', 'Brad Pitt', 'Gala kharab', '', 'Male', '2000-02-02', 19, '', '', '0.000', '0.000', 'No', '2019-12-18 11:10:24', '2020-06-15 10:06:03', 'Visited', 'By Receptionist', '1.00'),
(195, 'APMT-189', 47, 46, '', '', '2019-12-18 00:00:00', 'Vladimir', 'idk', '', 'Male', '2000-12-12', 19, '', '', '0.000', '0.000', 'No', '2019-12-18 11:12:03', '2020-06-15 10:06:05', 'Visited', 'By Self', '1.00'),
(196, 'APMT-190', 135, 46, 'florida', 'new york', '2019-12-18 00:00:00', 'Boy', 'pata nahi', 'Hi', 'Male', '2000-02-20', 19, '', '', '0.000', '0.000', 'No', '2019-12-18 13:00:23', '2020-07-27 17:18:13', 'Visited', 'By Self', '1.00'),
(197, 'APMT-191', 135, 46, '', '', '2019-12-18 00:00:00', 'Boi', 'acidity', '', 'Male', '2000-02-02', 19, '', '', '0.000', '0.000', 'No', '2019-12-18 13:01:49', '2020-07-27 17:18:23', 'Visited', 'By Self', '1.00'),
(198, 'APMT-192', 36, 57, 'Gujarat', 'palanpur', '2019-12-18 00:00:00', 'shhid', 'fever', 'sdfds', 'Male', '0000-00-00', 0, '', 'O-', '0.000', '0.000', 'No', '2019-12-18 15:39:23', '2019-12-18 15:43:05', 'Visited', 'By Self', '1.00'),
(199, 'APMT-193', 36, 57, 'Rajasthan', '', '2019-12-18 00:00:00', 'shahid khan', 'My symptoms', 'zxcxzc', 'Male', '0000-00-00', 0, '', 'O-', '0.000', '0.000', 'No', '2019-12-18 16:27:53', '2019-12-18 16:28:39', 'Approve', 'By Self', '1.00'),
(200, 'APMT-194', 111, 112, 'Gujarat', 'Ahmedabad', '2019-12-19 00:00:00', 'piyush', 'cancer', 'hello', 'Male', '1998-12-11', 21, 'mklj', 'A+', '55.000', '164.000', 'No', '2019-12-19 13:23:50', '2019-12-19 13:30:39', 'Visited', 'By Self', '1.00'),
(201, 'APMT-195', 113, 112, 'Gujarat', 'palanpur', '2019-12-27 00:00:00', 'Joshi Anil p', 'orthopedic', 'yes', 'Male', '1996-11-17', 23, 'patient', 'O-', '56.000', '168.000', 'No', '2019-12-27 16:09:26', '2019-12-27 16:16:17', 'Canceled', 'By Self', '1.00'),
(202, 'APMT-196', 113, 112, 'Gujarat', 'palanpur', '2019-12-27 00:00:00', 'Thakor Rajesh S', 'fever', '', 'Male', '0000-00-00', 0, '', 'AB-', '0.000', '0.000', 'No', '2019-12-27 16:19:52', '2019-12-27 16:21:43', 'Canceled', 'By Self', '1.00'),
(203, 'APMT-197', 113, 112, '', '', '2019-12-28 00:00:00', 'Thakor Rajesh S', 'fever', 'yes', 'Male', '1993-08-12', 26, 'patient', 'AB-', '20.000', '145.000', 'No', '2019-12-27 16:21:31', '2019-12-27 16:21:52', 'Canceled', 'By Self', '1.00'),
(204, 'APMT-198', 113, 112, 'Gujarat', 'palanpur', '2019-12-30 00:00:00', 'piyush prajapati', 'fever', 'Yes', 'Male', '1995-02-22', 24, 'Brother', 'A+', '69.000', '156.000', 'No', '2019-12-30 13:13:07', '2019-12-30 15:35:06', 'Visited', 'By Self', '1.00'),
(205, 'APMT-199', 136, 46, 'Gujarat', 'palanpur', '2020-01-03 00:00:00', 'Mahesh bhai', 'Fever', '', 'Male', '2020-01-03', 0, '', '', '0.000', '0.000', 'No', '2020-01-03 09:41:27', '2020-01-03 09:43:24', 'Visited', 'By Self', '1.00'),
(206, 'APMT-200', 135, 139, NULL, NULL, '2020-01-03 00:00:00', 'hardik M. patel', 'back pain', 'OK', 'Male', '1993-01-01', 27, 'brother', 'A+', '55.000', '5.500', 'No', '2020-01-03 11:58:47', '2020-07-27 17:17:10', 'Visited', 'By Hospital', '1.00'),
(207, 'APMT-201', 47, 140, NULL, NULL, '2020-01-03 00:00:00', 'Ethan James', 'Skin Rash', 'Skin itches.', 'Male', '1990-01-20', 29, '', 'B+', '0.000', '0.000', 'No', '2020-01-03 14:24:57', '2020-01-03 14:32:53', 'Visited', 'By Receptionist', '1.00'),
(208, 'APMT-202', 47, 141, NULL, NULL, '2020-01-03 00:00:00', 'Jimmy Kalimba', 'Heart Pain', '', 'Male', '1994-10-07', 25, '', '', '0.000', '0.000', 'No', '2020-01-03 14:26:43', '2020-01-03 14:33:05', 'Visited', 'By Receptionist', '1.00'),
(209, 'APMT-203', 47, 142, NULL, NULL, '2020-01-03 00:00:00', 'Stephen Simons', 'Pain in the knee joint', '', 'Male', '1993-07-30', 26, '', '', '0.000', '0.000', 'No', '2020-01-03 14:34:49', '2020-01-03 14:37:17', 'Visited', 'By Receptionist', '1.00'),
(210, 'APMT-204', 47, 143, NULL, NULL, '2020-01-03 00:00:00', 'Rick Morty', 'Severe headache', '', 'Male', '1991-12-30', 28, '', '', '0.000', '0.000', 'No', '2020-01-03 14:37:15', '2020-01-03 14:37:33', 'Visited', 'By Receptionist', '1.00'),
(211, 'APMT-205', 47, 144, NULL, NULL, '2020-01-03 00:00:00', 'T. Andrew', 'Chest Pain', '', 'Male', '1972-12-01', 47, '', '', '0.000', '0.000', 'No', '2020-01-03 14:38:57', '2020-01-03 14:41:47', 'Visited', 'By Receptionist', '1.00'),
(212, 'APMT-206', 47, 145, NULL, NULL, '2020-01-03 00:00:00', 'Valek K', 'Strange Visions', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-01-03 14:40:33', '2020-01-03 14:42:03', 'Visited', 'By Receptionist', '1.00'),
(213, 'APMT-207', 47, 146, NULL, NULL, '2020-01-03 00:00:00', 'Balmond Alicks', 'Skin Rash', '', 'Male', '1993-12-10', 26, '', '', '0.000', '0.000', 'No', '2020-01-03 14:51:58', '2020-01-03 15:01:39', 'Visited', 'By Receptionist', '1.00'),
(214, 'APMT-208', 47, 147, NULL, NULL, '2020-01-03 00:00:00', 'Test', 'Throat pain', '', 'Male', '2000-06-18', 19, '', '', '0.000', '0.000', 'No', '2020-01-03 14:59:50', '2020-06-15 10:06:06', 'Visited', 'By Receptionist', '1.00'),
(215, 'APMT-209', 47, 148, NULL, NULL, '2020-01-03 00:00:00', 'RJ', 'Internal Bleeding', '', 'Male', '1993-10-24', 26, '', '', '0.000', '0.000', 'No', '2020-01-03 15:01:22', '2020-06-15 10:06:08', 'Visited', 'By Receptionist', '1.00'),
(216, 'APMT-210', 47, 149, 'Gujarat', 'Ahmedabad', '2020-01-11 00:00:00', 'sunny', 'fever', 'test...', 'Male', '1985-06-16', 34, 'Patient', 'B+', '82.000', '185.000', 'No', '2020-01-11 14:02:23', '2020-06-15 10:06:09', 'Visited', 'By Self', '1.00'),
(217, 'APMT-211', 47, 112, 'Gujarat', 'Ahmedabad', '2020-01-28 00:00:00', 'Joshi Anilkumar Popatlal', 'fever', 'many fever', 'Male', '1996-12-17', 23, 'patient', 'A+', '56.000', '168.000', 'No', '2020-01-27 14:19:11', '2020-06-15 10:06:10', 'Visited', 'By Self', '1.00');
INSERT INTO `booking` (`id`, `appointment_no`, `doctor_id`, `user_id`, `state`, `city`, `booking_date`, `petient_name`, `disease`, `description`, `gender`, `date_of_birth`, `age`, `relation_with_me`, `blood_group`, `weight`, `height`, `physical_handicape`, `created_at`, `updated_at`, `status`, `booking_type`, `appointment_charge`) VALUES
(218, 'APMT-212', 47, 112, '', '', '2020-01-28 00:00:00', 'Joshi Anilkumar Popatlal', 'fever', 'many fever', 'Male', '1996-12-17', 23, 'patient', 'A+', '56.000', '168.000', 'No', '2020-01-27 14:21:40', '2020-06-15 10:06:12', 'Visited', 'By Self', '1.00'),
(219, 'APMT-213', 55, 112, 'Gujarat', 'palanpur', '2020-01-29 00:00:00', 'Joshi Anilkumar Popatlal', 'fever', 'good', 'Male', '1996-11-17', 23, 'patient', 'O+', '56.000', '168.000', 'No', '2020-01-28 13:08:11', '2020-06-16 18:19:00', 'Visited', 'By Self', '1.00'),
(220, 'APMT-214', 55, 112, '', '', '2020-01-29 00:00:00', 'Joshi Anilkumar Popatlal', 'fever', 'good', 'Male', '1996-11-17', 23, 'patient', 'O+', '56.000', '168.000', 'No', '2020-01-28 13:13:37', '2020-06-15 14:08:32', 'Visited', 'By Self', '1.00'),
(221, 'APMT-215', 151, NULL, NULL, NULL, '2020-02-05 00:00:00', 'QWERTY', 'NA', 'NA', 'Female', '2003-03-20', 16, 'NA', 'A+', '33.000', '123.000', 'No', '2020-02-04 14:03:42', '2020-02-04 14:03:42', 'Approve', 'By Receptionist', '1.00'),
(222, 'APMT-216', 47, 154, NULL, NULL, '2020-02-04 00:00:00', 'VIHAN', 'DHS', '', 'Male', '1988-11-28', 31, '', 'O+', '0.000', '0.000', 'No', '2020-02-04 14:54:35', '2020-06-15 10:06:24', 'Visited', 'By Receptionist', '1.00'),
(223, 'APMT-217', 47, 155, NULL, NULL, '2020-02-04 00:00:00', 'FARS', 'SWDN', '', 'Male', '2018-11-17', 1, '', '', '0.000', '0.000', 'No', '2020-02-04 14:55:24', '2020-06-15 10:06:26', 'Visited', 'By Receptionist', '1.00'),
(224, 'APMT-218', 47, 46, '', '', '2020-02-05 00:00:00', 'Umang', 'Fever', '', 'Male', '2018-09-12', 1, '', 'B+', '80.000', '123.000', 'No', '2020-02-04 14:58:06', '2020-06-15 10:06:26', 'Visited', 'By Self', '1.00'),
(225, 'APMT-219', 47, 46, 'Gujarat', 'palanpur', '2020-02-04 00:00:00', 'RAHY', 'fever', '', 'Male', '2017-10-29', 2, '', '', '0.000', '0.000', 'No', '2020-02-04 15:04:23', '2020-06-15 10:06:37', 'Visited', 'By Self', '1.00'),
(226, 'APMT-220', 55, 112, 'Gujarat', 'palanpur', '2020-02-07 00:00:00', 'Joshi Anil kumar Popatlal', 'aniljoshi171196@gmail.com', 'hxgsagjssajhasgjg', 'Male', '1996-11-17', 23, 'single', 'A+', '55.000', '168.000', 'No', '2020-02-06 12:47:31', '2020-06-15 14:09:07', 'Visited', 'By Self', '1.00'),
(227, 'APMT-221', 53, 156, NULL, NULL, '2020-02-10 00:00:00', 'Hardik', 'dengue', 'sdfdfds', 'Male', '0000-00-00', 0, '', 'O-', '0.000', '0.000', 'No', '2020-02-10 14:47:51', '2020-02-10 14:47:51', 'Approve', 'By Hospital', '1.00'),
(228, 'APMT-222', 53, 157, NULL, NULL, '2020-02-10 00:00:00', 'darshan', 'dengue', '', 'Male', '0000-00-00', 45, '', 'O+', '0.000', '0.000', 'No', '2020-02-10 14:55:23', '2020-02-10 14:55:23', 'Approve', 'By Hospital', '1.00'),
(229, 'APMT-223', 136, 158, NULL, NULL, '2020-02-10 00:00:00', 'mohit@gmail.com', 'mohit', 'hjhgj', 'Male', '0000-00-00', 0, '', 'O+', '0.000', '0.000', 'No', '2020-02-10 14:56:38', '2020-02-10 14:56:38', 'Approve', 'By Hospital', '1.00'),
(230, 'APMT-224', 135, 159, NULL, NULL, '2020-02-10 00:00:00', 'rohit@gmail.com', 'dengue', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-02-10 14:59:08', '2020-07-27 17:18:45', 'Visited', 'By Hospital', '1.00'),
(231, 'APMT-225', 135, 159, NULL, NULL, '2020-02-10 00:00:00', 'saumit@gmail.com', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-02-10 15:01:17', '2020-07-27 17:18:45', 'Visited', 'By Hospital', '1.00'),
(232, 'APMT-226', 54, 161, NULL, NULL, '2020-02-10 00:00:00', 'jalotra', 'fever', 'database done', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-02-10 15:04:21', '2020-02-10 15:04:21', 'Approve', 'By Hospital', '1.00'),
(233, 'APMT-227', 135, 162, NULL, NULL, '2020-02-10 00:00:00', 'jishan', 'fever', 'dtatype one', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-02-10 15:06:10', '2020-07-27 17:18:34', 'Visited', 'By Hospital', '1.00'),
(234, 'APMT-228', 135, 164, NULL, NULL, '2020-02-10 00:00:00', 'smarpan3', 'dengue', 'hello world', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-02-10 15:16:25', '2020-07-27 17:18:35', 'Visited', 'By Hospital', '1.00'),
(235, 'APMT-229', 53, 168, NULL, NULL, '2020-02-18 00:00:00', 'arhul', 'sahdgj', '', 'Male', '2011-11-30', 8, '', 'A+', '0.000', '0.000', 'No', '2020-02-18 12:27:36', '2020-02-18 12:27:36', 'Approve', 'By Hospital', '1.00'),
(236, 'APMT-230', 95, 169, NULL, NULL, '2020-02-18 00:00:00', 'ramesh', 'sbjd', '', 'Male', '2016-11-29', 3, '', 'A+', '0.000', '0.000', 'No', '2020-02-18 12:43:47', '2020-02-18 12:43:47', 'Approve', 'By Hospital', '1.00'),
(237, 'APMT-231', 135, 171, NULL, NULL, '2020-03-03 00:00:00', 'meet', 'fever', '', 'Male', '2017-12-28', 2, '', 'A+', '0.000', '0.000', 'No', '2020-03-03 17:28:25', '2020-03-03 18:36:01', 'Visited', 'By Hospital', '1.00'),
(238, 'APMT-232', 135, 172, NULL, NULL, '2020-03-03 00:00:00', 'meet', 'fever', '', 'Male', '2014-08-02', 5, '', 'A+', '0.000', '0.000', 'No', '2020-03-03 17:34:12', '2020-03-03 18:37:33', 'Visited', 'By Hospital', '1.00'),
(239, 'APMT-233', 135, 46, 'Gujarat', 'palanpur', '2020-03-03 00:00:00', 'rahul', 'fever', '', 'Male', '2011-12-31', 8, '', 'B+', '0.000', '0.000', 'No', '2020-03-03 18:13:51', '2020-03-03 18:39:04', 'Visited', 'By Self', '1.00'),
(240, 'APMT-234', 135, 173, NULL, NULL, '2020-03-22 00:00:00', 'sanjeev', 'HSB', '', 'Male', '1993-12-28', 26, '', '', '0.000', '0.000', 'No', '2020-03-22 12:56:13', '2020-07-27 17:18:54', 'Visited', 'By Hospital', '1.00'),
(241, 'APMT-235', 135, 175, NULL, NULL, '2020-03-22 00:00:00', 'RBQ', 'SHB', '', 'Male', '2001-11-21', 18, '', '', '0.000', '0.000', 'No', '2020-03-22 12:58:27', '2020-07-27 17:19:06', 'Visited', 'By Hospital', '1.00'),
(242, 'APMT-236', 135, 46, 'Gujarat', 'palanpur', '2020-03-22 00:00:00', 'RAM', 'JSJ', '', 'Male', '2002-11-24', 17, '', 'A+', '0.000', '0.000', 'No', '2020-03-22 13:00:26', '2020-07-27 17:19:07', 'Visited', 'By Self', '1.00'),
(243, 'APMT-237', 47, 46, 'Gujarat', 'palanpur', '2020-04-29 00:00:00', 'rahhu', 'fever', '', 'Male', '0000-00-00', 0, '', 'A+', '0.000', '0.000', 'No', '2020-04-29 11:17:07', '2020-04-29 11:25:12', 'Visited', 'By Self', '1.00'),
(244, 'APMT-238', 47, 176, NULL, NULL, '2020-05-15 00:00:00', 'harshil', 'fever', '', 'Male', '2006-12-31', 13, '', 'A+', '0.000', '0.000', 'No', '2020-05-15 14:22:40', '2020-06-15 10:06:47', 'Visited', 'By Receptionist', '1.00'),
(245, 'APMT-239', 47, 177, NULL, NULL, '2020-05-15 00:00:00', 'Rahul sudhaniya', 'fever', '', 'Male', '2006-12-25', 13, '', '', '0.000', '0.000', 'No', '2020-05-15 14:23:55', '2020-06-15 10:06:57', 'Visited', 'By Receptionist', '1.00'),
(246, 'APMT-240', 47, 178, NULL, NULL, '2020-05-15 00:00:00', 'Samir', 'fever', '', 'Male', '1994-02-21', 26, '', '', '0.000', '0.000', 'No', '2020-05-15 14:25:51', '2020-06-15 10:06:58', 'Visited', 'By Receptionist', '1.00'),
(247, 'APMT-241', 47, 179, NULL, NULL, '2020-05-15 00:00:00', 'Shushant', 'fever', '', 'Male', '2008-06-18', 11, '', 'A+', '0.000', '0.000', 'No', '2020-05-15 14:27:03', '2020-06-15 10:06:59', 'Visited', 'By Receptionist', '1.00'),
(248, 'APMT-242', 47, 46, 'Gujarat', 'palanpur', '2020-05-15 00:00:00', 'Vishnu sharma', 'fever', 'Any message for receptionist', 'Male', '2008-06-20', 11, 'friend', 'A+', '67.000', '6.000', 'No', '2020-05-15 14:30:57', '2020-06-15 10:07:01', 'Visited', 'By Self', '1.00'),
(249, 'APMT-243', 47, 46, 'Gujarat', 'Ahmedabad', '2020-06-04 00:00:00', 'satish', 'fever', 'glgs;lgks;gd;kg', 'Male', '2015-01-04', 5, 'son', 'B+', '46.000', '5.000', 'No', '2020-06-04 20:36:03', '2020-06-15 10:07:01', 'Visited', 'By Self', '1.00'),
(250, 'APMT-244', 47, 46, '', '', '2020-06-04 00:00:00', 'rahul', 'efrwe', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-04 20:36:19', '2020-06-15 10:07:03', 'Visited', 'By Self', '1.00'),
(251, 'APMT-245', 47, 183, NULL, NULL, '2020-06-07 00:00:00', 'Samir', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-07 13:06:49', '2020-06-09 00:51:18', 'Visited', 'By Receptionist', '1.00'),
(252, 'APMT-246', 47, 184, NULL, NULL, '2020-06-07 00:00:00', 'meet', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-07 13:07:30', '2020-06-09 00:51:36', 'Visited', 'By Receptionist', '1.00'),
(253, 'APMT-247', 47, 46, '', '', '2020-06-07 00:00:00', 'satish', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-07 13:08:38', '2020-06-09 00:51:59', 'Visited', 'By Self', '1.00'),
(254, 'APMT-248', 53, 46, '', '', '2020-06-07 00:00:00', 'satish', 'sdc', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-07 14:36:11', '2020-06-09 00:34:25', 'Canceled', 'By Self', '1.00'),
(255, 'APMT-249', 53, 46, '', '', '2020-06-07 00:00:00', 'satish', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-07 17:35:47', '2020-06-07 17:36:26', 'Canceled', 'By Self', '1.00'),
(256, 'APMT-250', 47, 186, NULL, NULL, '2020-06-09 00:00:00', 'rahul sharma', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-09 00:26:29', '2020-06-09 00:50:54', 'Visited', 'By Receptionist', '1.00'),
(257, 'APMT-251', 47, 187, NULL, NULL, '2020-06-09 00:00:00', 'ramesh', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-09 00:27:28', '2020-06-09 00:52:25', 'Visited', 'By Receptionist', '1.00'),
(258, 'APMT-252', 47, 188, NULL, NULL, '2020-06-09 00:00:00', 'sammy', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-09 00:28:13', '2020-06-09 00:52:41', 'Visited', 'By Receptionist', '1.00'),
(259, 'APMT-253', 47, 189, NULL, NULL, '2020-06-09 00:00:00', 'asif', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-09 00:28:55', '2020-06-09 00:52:43', 'Visited', 'By Receptionist', '1.00'),
(260, 'APMT-254', 47, 190, NULL, NULL, '2020-06-09 00:00:00', 'samir', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-09 00:29:39', '2020-06-09 00:52:44', 'Visited', 'By Receptionist', '1.00'),
(261, 'APMT-255', 47, 191, NULL, NULL, '2020-06-09 00:00:00', 'rammy', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-09 00:30:21', '2020-06-15 10:07:04', 'Visited', 'By Receptionist', '1.00'),
(262, 'APMT-256', 47, 192, NULL, NULL, '2020-06-09 00:00:00', 'farukh', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-09 00:31:09', '2020-06-15 10:07:05', 'Visited', 'By Receptionist', '1.00'),
(263, 'APMT-257', 47, 193, NULL, NULL, '2020-06-09 00:00:00', 'ramesh pathani', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-09 00:32:09', '2020-06-15 10:07:17', 'Visited', 'By Receptionist', '1.00'),
(264, 'APMT-258', 47, 46, '', '', '2020-06-09 00:00:00', 'ravi', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-09 00:34:07', '2020-06-15 10:07:18', 'Visited', 'By Self', '1.00'),
(265, 'APMT-259', 47, 46, '', '', '2020-06-09 00:00:00', 'satish', 'wed', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-09 22:01:49', '2020-06-15 10:07:19', 'Visited', 'By Self', '1.00'),
(266, 'APMT-260', 47, 46, '', '', '2020-06-11 00:00:00', 'fage', 'dfdf', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-11 13:16:11', '2020-06-15 10:07:20', 'Visited', 'By Self', '1.00'),
(267, 'APMT-261', 53, 46, '', '', '2020-06-14 00:00:00', 'john', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-14 15:37:53', '2020-06-15 10:36:37', 'Canceled', 'By Self', '1.00'),
(268, 'APMT-262', 53, 46, '', '', '2020-06-14 00:00:00', 'john', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-14 18:19:04', '2020-06-15 10:36:28', 'Canceled', 'By Self', '1.00'),
(269, 'APMT-263', 53, 46, '', '', '2020-06-14 00:00:00', 'john', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-14 18:36:01', '2020-06-14 18:54:15', 'Canceled', 'By Self', '1.00'),
(270, 'APMT-264', 53, 46, '', '', '2020-06-14 00:00:00', 'smith', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-14 18:40:08', '2020-06-14 18:54:05', 'Canceled', 'By Self', '1.00'),
(271, 'APMT-265', 47, 195, NULL, NULL, '2020-06-14 00:00:00', 'satish', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-14 18:51:34', '2020-06-15 10:07:22', 'Visited', 'By Receptionist', '1.00'),
(272, 'APMT-266', 47, 196, NULL, NULL, '2020-06-14 00:00:00', 'RAJESH', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-14 18:52:17', '2020-06-15 10:07:22', 'Visited', 'By Receptionist', '1.00'),
(273, 'APMT-267', 47, 46, '', '', '2020-06-14 00:00:00', 'Rammy', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-14 18:53:35', '2020-06-15 10:07:23', 'Visited', 'By Self', '1.00'),
(274, 'APMT-268', 47, 46, '', '', '2020-06-14 00:00:00', 'Tonny', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-14 18:56:25', '2020-06-15 10:07:24', 'Visited', 'By Self', '1.00'),
(275, 'APMT-269', 47, 197, NULL, NULL, '2020-06-15 00:00:00', 'Rahul', 'Fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 08:42:39', '2020-06-15 10:07:34', 'Visited', 'By Receptionist', '1.00'),
(276, 'APMT-270', 47, 198, NULL, NULL, '2020-06-15 00:00:00', 'rahul singh', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 10:09:04', '2020-06-15 10:47:31', 'Visited', 'By Receptionist', '1.00'),
(277, 'APMT-271', 47, 199, NULL, NULL, '2020-06-15 00:00:00', 'Arjun', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 10:10:22', '2020-06-21 15:18:01', 'Visited', 'By Receptionist', '1.00'),
(278, 'APMT-272', 47, 46, NULL, NULL, '2020-06-15 00:00:00', 'Tonny', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 10:11:09', '2020-07-27 10:15:39', 'Visited', 'By Receptionist', '1.00'),
(279, 'APMT-273', 47, 200, NULL, NULL, '2020-06-15 00:00:00', 'Rammy', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 10:12:01', '2020-07-27 10:15:40', 'Visited', 'By Receptionist', '1.00'),
(280, 'APMT-274', 4, 201, NULL, NULL, '2020-06-15 00:00:00', 'Rammy', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 10:32:32', '2020-06-15 11:41:11', 'Visited', 'By Receptionist', '1.00'),
(281, 'APMT-275', 4, 202, NULL, NULL, '2020-06-15 00:00:00', 'Nishant', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 10:33:22', '2020-06-15 15:05:40', 'Visited', 'By Receptionist', '1.00'),
(282, 'APMT-276', 4, 203, NULL, NULL, '2020-06-15 00:00:00', 'Raj', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 10:34:04', '2020-06-15 15:07:02', 'Visited', 'By Receptionist', '1.00'),
(283, 'APMT-277', 4, 46, '', '', '2020-06-15 00:00:00', 'Tonny', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 10:36:08', '2020-10-23 10:59:37', 'Visited', 'By Self', '1.00'),
(284, 'APMT-278', 4, 204, NULL, NULL, '2020-06-15 00:00:00', 'ALTAF', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 11:43:35', '2020-10-23 10:59:23', 'Visited', 'By Receptionist', '1.00'),
(285, 'APMT-279', 4, 205, NULL, NULL, '2020-06-15 00:00:00', 'SAMEERA', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 11:44:42', '2020-10-23 10:59:22', 'Visited', 'By Receptionist', '1.00'),
(286, 'APMT-280', 4, 46, '', '', '2020-06-15 00:00:00', 'RAHUL', 'FEVER', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 11:45:46', '2020-10-23 10:58:48', 'Visited', 'By Self', '1.00'),
(287, 'APMT-281', 47, 206, NULL, NULL, '2020-06-15 00:00:00', 'FAGE', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 11:48:47', '2020-07-27 10:15:42', 'Visited', 'By Receptionist', '1.00'),
(288, 'APMT-282', 47, 46, NULL, NULL, '2020-06-15 00:00:00', 'jaimin', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 11:50:20', '2020-07-27 10:15:43', 'Visited', 'By Receptionist', '1.00'),
(289, 'APMT-283', 47, 46, 'Gujarat', 'palanpur', '2020-06-15 00:00:00', 'shahid', 'Fever', '', 'Male', '0000-00-00', 56, '', 'O+', '0.000', '0.000', 'No', '2020-06-15 11:56:38', '2020-07-27 10:15:45', 'Visited', 'By Self', '1.00'),
(290, 'APMT-284', 47, 200, '', '', '2020-06-15 00:00:00', 'ravi', 'FEVER', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 12:03:04', '2020-07-27 10:15:45', 'Visited', 'By Self', '1.00'),
(291, 'APMT-285', 4, 200, '', '', '2020-06-15 00:00:00', 'rajesh', 'FEVER', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 12:06:06', '2020-10-23 10:57:25', 'Visited', 'By Self', '1.00'),
(292, 'APMT-286', 47, NULL, NULL, NULL, '2020-06-15 00:00:00', 'munir', 'fever', '', 'Male', '0000-00-00', 0, '', 'O-', '0.000', '0.000', 'No', '2020-06-15 12:11:03', '2020-07-27 10:15:46', 'Visited', 'By Receptionist', '1.00'),
(293, 'APMT-287', 4, 203, '', '', '2020-06-15 00:00:00', 'ram', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 12:57:21', '2010-01-01 00:10:21', 'Visited', 'By Self', '1.00'),
(294, 'APMT-288', 19, 207, NULL, NULL, '2020-06-15 00:00:00', 'ramesh', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:12:01', '2020-06-15 13:12:01', 'Approve', 'By Receptionist', '1.00'),
(295, 'APMT-289', 19, 208, NULL, NULL, '2020-06-15 00:00:00', 'rahul', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:12:54', '2020-06-15 13:12:54', 'Approve', 'By Receptionist', '1.00'),
(296, 'APMT-290', 19, 209, NULL, NULL, '2020-06-15 00:00:00', 'rajesh', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:16:51', '2020-06-15 13:16:51', 'Approve', 'By Receptionist', '1.00'),
(297, 'APMT-291', 19, 209, '', '', '2020-06-15 00:00:00', 'rammi', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:18:19', '2020-06-15 13:23:40', 'Approve', 'By Self', '1.00'),
(298, 'APMT-292', 19, 210, NULL, NULL, '2020-06-15 00:00:00', 'tonny', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:19:45', '2020-06-15 13:19:45', 'Approve', 'By Receptionist', '1.00'),
(299, 'APMT-293', 19, 209, '', '', '2020-06-15 00:00:00', 'ramdev', 'FEVER', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:22:08', '2020-06-15 13:23:57', 'Approve', 'By Self', '1.00'),
(300, 'APMT-294', 19, 211, NULL, NULL, '2020-06-15 00:00:00', 'jimmy', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:23:33', '2020-06-15 13:23:33', 'Approve', 'By Receptionist', '1.00'),
(301, 'APMT-295', 19, 46, 'Gujarat', '', '2020-06-15 00:00:00', 'aldo', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:34:06', '2020-06-15 13:41:09', 'Approve', 'By Self', '1.00'),
(302, 'APMT-296', 19, 46, '', '', '2020-06-15 00:00:00', 'facw', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:35:20', '2020-06-15 13:46:46', 'Approve', 'By Self', '1.00'),
(303, 'APMT-297', 19, 212, NULL, NULL, '2020-06-15 00:00:00', 'game', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:44:39', '2020-06-15 13:44:39', 'Approve', 'By Receptionist', '1.00'),
(304, 'APMT-298', 19, 213, NULL, NULL, '2020-06-15 00:00:00', 'easter', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:45:35', '2020-06-15 13:45:35', 'Approve', 'By Receptionist', '1.00'),
(305, 'APMT-299', 19, 46, '', '', '2020-06-15 00:00:00', 'dase', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:50:45', '2020-06-15 13:52:16', 'Approve', 'By Self', '1.00'),
(306, 'APMT-300', 19, 46, '', '', '2020-06-15 00:00:00', 'case', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:51:29', '2020-06-15 13:52:41', 'Approve', 'By Self', '1.00'),
(307, 'APMT-301', 19, 46, '', '', '2020-06-15 00:00:00', 'dgm', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:55:12', '2020-06-15 13:59:11', 'Approve', 'By Self', '1.00'),
(308, 'APMT-302', 19, 46, '', '', '2020-06-15 00:00:00', 'mpg', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:55:49', '2020-06-15 13:59:27', 'Approve', 'By Self', '1.00'),
(309, 'APMT-303', 19, 214, NULL, NULL, '2020-06-15 00:00:00', 'wer', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:57:38', '2020-06-15 13:57:38', 'Approve', 'By Receptionist', '1.00'),
(310, 'APMT-304', 19, 215, NULL, NULL, '2020-06-15 00:00:00', 'fgh', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 13:58:50', '2020-06-15 13:58:50', 'Approve', 'By Receptionist', '1.00'),
(311, 'APMT-305', 55, 46, '', '', '2020-06-15 00:00:00', 'dfg', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:04:36', '2020-06-15 14:57:49', 'Visited', 'By Self', '1.00'),
(312, 'APMT-306', 55, 46, '', '', '2020-06-15 00:00:00', 'cdf', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:05:21', '2020-06-15 14:58:59', 'Visited', 'By Self', '1.00'),
(313, 'APMT-307', 55, 46, '', '', '2020-06-15 00:00:00', 'tre', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:06:11', '2020-06-16 18:17:59', 'Visited', 'By Self', '1.00'),
(314, 'APMT-308', 55, 46, '', '', '2020-06-15 00:00:00', 'bas', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:07:16', '2020-06-16 18:17:59', 'Visited', 'By Self', '1.00'),
(315, 'APMT-309', 19, 216, NULL, NULL, '2020-06-15 00:00:00', 'asd', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:14:56', '2020-06-15 14:14:56', 'Approve', 'By Receptionist', '1.00'),
(316, 'APMT-310', 19, 217, NULL, NULL, '2020-06-15 00:00:00', 'ydj', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:15:39', '2020-06-15 14:15:39', 'Approve', 'By Receptionist', '1.00'),
(317, 'APMT-311', 19, 218, NULL, NULL, '2020-06-15 00:00:00', 'alk', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:16:20', '2020-06-15 14:16:20', 'Approve', 'By Receptionist', '1.00'),
(318, 'APMT-312', 19, 219, NULL, NULL, '2020-06-15 00:00:00', 'fdr', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:17:14', '2020-06-15 14:17:14', 'Approve', 'By Receptionist', '1.00'),
(319, 'APMT-313', 55, 46, '', '', '2020-06-15 00:00:00', 'gfr', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:18:40', '2020-06-16 18:18:01', 'Visited', 'By Self', '1.00'),
(320, 'APMT-314', 55, 46, '', '', '2020-06-15 00:00:00', 'rbj', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:19:24', '2020-06-16 18:18:01', 'Visited', 'By Self', '1.00'),
(321, 'APMT-315', 55, 46, '', '', '2020-06-15 00:00:00', 'cxr', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:20:05', '2020-06-16 18:18:02', 'Visited', 'By Self', '1.00'),
(322, 'APMT-316', 55, 46, '', '', '2020-06-15 00:00:00', 'gmi', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:20:50', '2020-06-16 18:18:03', 'Visited', 'By Self', '1.00'),
(323, 'APMT-317', 55, 221, NULL, NULL, '2020-06-15 00:00:00', 'asd', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:32:09', '2020-06-16 18:18:05', 'Visited', 'By Receptionist', '1.00'),
(324, 'APMT-318', 55, 222, NULL, NULL, '2020-06-15 00:00:00', 'ydj', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:32:49', '2020-06-16 18:18:15', 'Visited', 'By Receptionist', '1.00'),
(325, 'APMT-319', 55, 223, NULL, NULL, '2020-06-15 00:00:00', 'alk', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:33:30', '2020-06-16 18:18:26', 'Visited', 'By Receptionist', '1.00'),
(326, 'APMT-320', 55, 224, NULL, NULL, '2020-06-15 00:00:00', 'dfr', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:34:10', '2020-06-16 18:18:36', 'Visited', 'By Receptionist', '1.00'),
(327, 'APMT-321', 55, 46, '', '', '2020-06-15 00:00:00', 'gma', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:35:27', '2020-06-16 18:19:02', 'Visited', 'By Self', '1.00'),
(328, 'APMT-322', 55, 46, '', '', '2020-06-15 00:00:00', 'iald', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:36:07', '2020-06-16 18:19:03', 'Visited', 'By Self', '1.00'),
(329, 'APMT-323', 55, 46, '', '', '2020-06-15 00:00:00', 'sum', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:36:46', '2020-06-16 18:19:03', 'Visited', 'By Self', '1.00'),
(330, 'APMT-324', 55, 46, '', '', '2020-06-15 00:00:00', 'lad', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:37:22', '2020-06-16 18:19:15', 'Visited', 'By Self', '1.00'),
(331, 'APMT-325', 55, 225, NULL, NULL, '2020-06-15 00:00:00', 'gjf', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:42:34', '2020-06-16 18:19:16', 'Visited', 'By Receptionist', '1.00'),
(332, 'APMT-326', 55, 226, NULL, NULL, '2020-06-15 00:00:00', 'rbi', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:43:34', '2020-06-16 18:19:17', 'Visited', 'By Receptionist', '1.00'),
(333, 'APMT-327', 55, 225, '', '', '2020-06-15 00:00:00', 'smy', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:45:18', '2020-06-16 18:19:18', 'Visited', 'By Self', '1.00'),
(334, 'APMT-328', 55, 226, '', '', '2020-06-15 00:00:00', 'gmi', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:49:12', '2020-06-16 18:19:19', 'Visited', 'By Self', '1.00'),
(335, 'APMT-329', 55, 46, '', '', '2020-06-15 00:00:00', 'raw', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:52:52', '2020-06-16 18:19:21', 'Visited', 'By Self', '1.00'),
(336, 'APMT-330', 55, 46, '', '', '2020-06-15 00:00:00', 'dazy', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 14:53:38', '2020-06-16 18:19:22', 'Visited', 'By Self', '1.00'),
(337, 'APMT-331', 47, 205, '', '', '2020-06-15 00:00:00', 'sda', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-15 15:43:16', '2020-07-27 10:15:48', 'Visited', 'By Self', '1.00'),
(338, 'APMT-332', 55, 228, NULL, NULL, '2020-06-16 00:00:00', 'Cassy', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-16 18:23:18', '2020-06-16 19:43:38', 'Visited', 'By Receptionist', '1.00'),
(339, 'APMT-333', 55, 229, NULL, NULL, '2020-06-16 00:00:00', 'Mark', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-16 18:24:45', '2020-06-16 18:24:45', 'Approve', 'By Receptionist', '1.00'),
(340, 'APMT-334', 55, 230, NULL, NULL, '2020-06-16 00:00:00', 'Hanny', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-16 18:28:13', '2020-06-16 18:28:13', 'Approve', 'By Receptionist', '1.00'),
(341, 'APMT-335', 55, 231, NULL, NULL, '2020-06-16 00:00:00', 'Tonny', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-06-16 18:29:38', '2020-06-16 18:29:38', 'Approve', 'By Receptionist', '1.00'),
(342, 'APMT-336', 55, 46, 'Gujarat', 'palanpur', '2020-06-16 00:00:00', 'Danny', 'fever', '', 'Male', '2011-12-28', 8, '', 'AB+', '0.000', '0.000', 'No', '2020-06-16 19:14:24', '2020-06-16 19:25:08', 'Approve', 'By Self', '1.00'),
(343, 'APMT-337', 47, 46, 'Gujarat', 'palanpur', '2020-06-21 00:00:00', 'Sady', 'Back pain', '', 'Male', '0000-00-00', 0, '', 'B+', '0.000', '0.000', 'No', '2020-06-21 15:15:10', '2020-07-27 10:15:49', 'Visited', 'By Self', '1.00'),
(344, 'APMT-338', 47, 46, 'Gujarat', NULL, '2020-06-21 00:00:00', 'Sady', 'Back pain', '', 'Male', '0000-00-00', 0, '', 'B+', '0.000', '0.000', 'No', '2020-06-21 15:16:56', '2020-07-27 10:15:51', 'Visited', 'By Self', '1.00'),
(345, 'APMT-339', 36, 112, 'Gujarat', 'palanpur', '2020-06-27 00:00:00', 'anil', 'fever', '', 'Male', '1995-11-10', 24, 'self', 'B+', '55.000', '165.000', 'No', '2020-06-27 20:32:32', '2020-06-27 20:35:34', 'Canceled', 'By Self', '1.00'),
(346, 'APMT-340', 36, 112, 'Gujarat', 'palanpur', '2020-06-27 00:00:00', 'anil', 'fever', 'hello', 'Male', '1998-11-17', 21, 'self', 'B+', '55.000', '165.000', 'No', '2020-06-27 20:48:00', '2020-06-27 21:14:52', 'Canceled', 'By Self', '1.00'),
(347, 'APMT-341', 47, 234, NULL, NULL, '2020-07-27 00:00:00', 'OLIVER', 'fever', '', 'Male', '2004-08-28', 15, '', '', '0.000', '0.000', 'No', '2020-07-27 10:23:52', '2020-07-30 23:22:49', 'Visited', 'By Receptionist', '1.00'),
(348, 'APMT-342', 47, 235, NULL, NULL, '2020-07-27 00:00:00', 'HARRY', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-07-27 10:25:29', '2020-07-30 23:22:51', 'Visited', 'By Receptionist', '1.00'),
(349, 'APMT-343', 47, 236, NULL, NULL, '2020-07-27 00:00:00', 'Mason', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-07-27 16:38:05', '2020-07-30 23:22:52', 'Visited', 'By Receptionist', '1.00'),
(350, 'APMT-344', 47, 237, NULL, NULL, '2020-07-27 00:00:00', 'Evelyn', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-07-27 16:38:52', '2020-07-30 23:22:53', 'Visited', 'By Receptionist', '1.00'),
(351, 'APMT-345', 47, 46, 'Gujarat', 'Ahmedabad', '2020-07-27 00:00:00', 'Ella', 'fever', '', 'Male', '2006-12-28', 13, 'sister', 'A+', '67.000', '5.560', 'No', '2020-07-27 16:41:54', '2020-07-30 23:22:55', 'Visited', 'By Self', '1.00'),
(352, 'APMT-346', 47, 46, 'Gujarat', 'palanpur', '2020-07-27 00:00:00', 'Avery', 'fever', '', 'Male', '2006-02-21', 14, '', 'A+', '0.000', '0.000', 'No', '2020-07-27 16:55:04', '2020-07-30 23:22:56', 'Visited', 'By Self', '1.00'),
(353, 'APMT-347', 135, 238, NULL, NULL, '2020-07-27 00:00:00', 'Jackson', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-07-27 17:13:41', '2020-07-27 17:19:08', 'Visited', 'By Hospital', '1.00'),
(354, 'APMT-348', 135, NULL, NULL, NULL, '2020-07-27 00:00:00', 'Scarlett', 'fever', '', 'Male', '2002-12-17', 17, '', 'A+', '0.000', '0.000', 'No', '2020-07-27 17:23:36', '2020-07-27 17:23:36', 'Approve', 'By Hospital', '1.00'),
(355, 'APMT-349', 135, NULL, NULL, NULL, '2020-07-27 00:00:00', 'Madison', 'fever', '', 'Male', '2006-12-30', 13, '', 'A+', '0.000', '0.000', 'No', '2020-07-27 17:25:18', '2020-07-27 17:25:18', 'Approve', 'By Hospital', '1.00'),
(356, 'APMT-350', 135, 46, 'Gujarat', 'Ahmedabad', '2020-07-27 00:00:00', 'Carter', 'fever', '', 'Male', '2002-04-29', 18, '', 'A+', '0.000', '0.000', 'No', '2020-07-27 17:28:49', '2020-07-31 01:04:05', 'Approve', 'By Self', '1.00'),
(357, 'APMT-351', 47, 46, 'Gujarat', 'palanpur', '2020-07-27 00:00:00', 'TONNY', 'back pain', '', 'Male', '1998-01-10', 22, '', 'A+', '0.000', '0.000', 'No', '2020-07-27 17:48:56', '2020-07-30 23:23:01', 'Visited', 'By Self', '1.00'),
(358, 'APMT-352', 47, 241, NULL, NULL, '2020-07-30 00:00:00', 'dany', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-07-30 23:24:17', '2020-07-31 00:51:46', 'Visited', 'By Receptionist', '1.00'),
(359, 'APMT-353', 47, 46, NULL, NULL, '2020-07-30 00:00:00', 'cami', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-07-30 23:25:15', '2020-07-31 00:51:48', 'Visited', 'By Receptionist', '1.00'),
(360, 'APMT-354', 47, 46, 'Gujarat', 'palanpur', '2020-07-30 00:00:00', 'tonny', 'back pain', 'bdihiduh', 'Male', '1999-08-21', 20, 'friend', '', '0.000', '0.000', 'No', '2020-07-31 00:02:21', '2020-07-31 00:51:59', 'Visited', 'By Self', '1.00'),
(361, 'APMT-355', 47, 46, '', '', '2020-07-31 00:00:00', 'ajdshaj', 'dwgw', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-07-31 00:27:42', '2020-07-31 00:33:05', 'Visited', 'By Self', '1.00'),
(362, 'APMT-356', 135, 242, NULL, NULL, '2020-07-31 00:00:00', 'xz', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-07-31 01:03:49', '2020-07-31 01:07:57', 'Visited', 'By Hospital', '1.00'),
(363, 'APMT-357', 47, 243, NULL, NULL, '2020-08-01 00:00:00', 'alpesh bhai', 'back pain', '', 'Male', '2007-11-30', 12, '', 'A-', '0.000', '0.000', 'No', '2020-08-01 15:21:17', '2020-08-01 15:49:21', 'Visited', 'By Receptionist', '1.00'),
(364, 'APMT-358', 47, 244, NULL, NULL, '2020-08-01 00:00:00', 'bhagyoday', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-01 15:22:56', '2020-08-05 16:10:25', 'Canceled', 'By Receptionist', '1.00'),
(365, 'APMT-359', 47, 46, 'Gujarat', 'palanpur', '2020-08-01 00:00:00', 'game', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-01 15:38:50', '2020-08-05 16:10:29', 'Canceled', 'By Self', '1.00'),
(366, 'APMT-360', 47, 46, '', '', '2020-08-05 00:00:00', 'arushi', 'sfdx', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-05 16:07:37', '2020-08-05 16:15:16', 'Visited', 'By Self', '1.00'),
(367, 'APMT-361', 47, 245, NULL, NULL, '2020-08-05 00:00:00', 'satish', 'sfdx', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-05 16:12:51', '2020-08-30 13:14:09', 'Visited', 'By Receptionist', '1.00'),
(368, 'APMT-362', 47, 46, '', '', '2020-08-05 00:00:00', 'raul', 'sfdx', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-05 16:16:14', '2020-08-30 13:13:56', 'Visited', 'By Self', '1.00'),
(369, 'APMT-363', 47, 46, 'Gujarat', '', '2020-08-21 00:00:00', 'Dhaval Dave', 'headache', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-21 11:38:10', '2020-08-21 12:02:38', 'Visited', 'By Self', '1.00'),
(370, 'APMT-364', 47, 46, '', '', '2020-08-21 00:00:00', 'adfbjhb', 'gdfnm nf', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-21 11:38:20', '2020-08-30 13:13:57', 'Visited', 'By Self', '1.00'),
(371, 'APMT-365', 47, 247, NULL, NULL, '2020-08-21 00:00:00', 'dhaval', 'headache', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-21 11:46:41', '2020-08-30 13:14:49', 'Visited', 'By Receptionist', '1.00'),
(372, 'APMT-366', 135, 247, NULL, NULL, '2020-08-21 00:00:00', 'Dhaval Dave', 'headache', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-21 12:24:00', '2020-08-21 12:25:39', 'Visited', 'By Hospital', '1.00'),
(373, 'APMT-367', 135, 247, NULL, NULL, '2020-08-21 00:00:00', 'ABCDE', 'headache', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-21 12:27:08', '2020-08-21 12:27:08', 'Approve', 'By Hospital', '1.00'),
(374, 'APMT-368', 19, 247, 'Gujarat', 'Ahmedabad', '2020-08-21 00:00:00', 'Prashant dave', 'Haedche', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-21 23:02:21', '2020-08-21 23:02:21', 'Pending', 'By Self', '1.00'),
(375, 'APMT-369', 47, 165, NULL, NULL, '2020-08-23 00:00:00', 'Abcd', 'Cdje', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-21 23:05:32', '2020-08-30 13:14:28', 'Visited', 'By Receptionist', '1.00'),
(376, 'APMT-370', 47, 247, NULL, NULL, '2020-08-21 00:00:00', 'Auto fill', 'Ajdkek', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-21 23:07:25', '2020-08-30 13:14:29', 'Visited', 'By Receptionist', '1.00'),
(377, 'APMT-371', 47, 247, '', '', '2020-08-21 00:00:00', 'Prince', 'Head', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-21 23:10:19', '2020-08-30 13:14:30', 'Visited', 'By Self', '1.00'),
(378, 'APMT-372', 47, 46, '', '', '2020-08-23 00:00:00', 'aditya', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-23 11:11:22', '2020-08-30 13:14:31', 'Visited', 'By Self', '1.00'),
(379, 'APMT-373', 47, 248, NULL, NULL, '2020-08-23 00:00:00', 'kashyap', 'fever', '', 'Male', '2008-08-28', 11, '', '', '0.000', '0.000', 'No', '2020-08-23 11:16:43', '2020-08-23 11:26:26', 'Visited', 'By Receptionist', '1.00'),
(380, 'APMT-374', 47, 46, '', '', '2020-08-23 00:00:00', 'fatima', 'SHB', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-23 14:01:13', '2020-08-30 13:14:32', 'Visited', 'By Self', '1.00'),
(381, 'APMT-375', 47, 252, NULL, NULL, '2020-08-23 00:00:00', 'case', '???? ?? ??????', '', 'Male', '1998-11-29', 21, '', 'A+', '0.000', '0.000', 'No', '2020-08-23 14:13:03', '2020-08-30 13:14:33', 'Visited', 'By Receptionist', '1.00'),
(382, 'APMT-376', 47, 253, NULL, NULL, '2020-08-23 00:00:00', 'nilamben', '???? ?? ??????  ,', '', 'Female', '1996-06-01', 24, '', 'A+', '0.000', '0.000', 'No', '2020-08-23 14:21:47', '2020-08-30 13:14:51', 'Visited', 'By Receptionist', '1.00'),
(383, 'APMT-377', 47, 254, NULL, NULL, '2020-08-23 00:00:00', '??????', '???? ??? ??????', '', 'Female', '1996-06-06', 24, '', 'O+', '43.000', '0.000', 'No', '2020-08-23 14:27:22', '2020-08-30 13:14:52', 'Visited', 'By Receptionist', '1.00'),
(384, 'APMT-378', 47, 248, 'Gujarat', 'palanpur', '2020-08-23 00:00:00', 'Kashyap gohil', 'Fever', '', 'Male', '2020-08-23', 23, 'Brother', 'O+', '67.000', '156.000', 'No', '2020-08-23 14:30:30', '2020-08-23 14:32:43', 'Canceled', 'By Self', '1.00'),
(385, 'APMT-379', 47, 255, NULL, NULL, '2020-08-23 00:00:00', 'RAVINA', 'fever', '', 'Female', '1995-10-24', 24, '', 'B+', '37.000', '43.000', 'No', '2020-08-23 14:30:52', '2020-08-30 13:14:53', 'Visited', 'By Receptionist', '1.00'),
(386, 'APMT-380', 47, 248, 'Gujarat', 'palanpur', '2020-08-23 00:00:00', 'Kashyap gohil', 'Fever', '', 'Male', '2020-08-23', 23, '', 'O+', '67.000', '156.000', 'No', '2020-08-23 14:35:25', '2020-08-23 14:43:00', 'Visited', 'By Self', '1.00'),
(387, 'APMT-381', 47, 46, '', '', '2020-08-26 00:00:00', 'Hshd', 'Hsgs', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-26 13:30:28', '2020-08-30 13:15:26', 'Visited', 'By Self', '1.00'),
(388, 'APMT-382', 47, 46, '', '', '2020-08-26 00:00:00', 'FAGE', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-26 18:16:56', '2020-08-26 18:32:16', 'Visited', 'By Self', '1.00'),
(389, 'APMT-383', 47, 256, NULL, NULL, '2020-08-26 00:00:00', 'case', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-26 18:23:30', '2020-08-30 13:15:13', 'Visited', 'By Receptionist', '1.00'),
(390, 'APMT-384', 47, 257, NULL, NULL, '2020-08-30 00:00:00', 'VIHAN', 'back painR', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-30 13:01:53', '2020-09-06 13:38:46', 'Visited', 'By Receptionist', '1.00'),
(391, 'APMT-385', 47, 258, NULL, NULL, '2020-08-30 00:00:00', 'danish', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-30 13:02:54', '2020-09-06 13:38:49', 'Visited', 'By Receptionist', '1.00'),
(392, 'APMT-386', 47, 46, '', '', '2020-08-30 00:00:00', 'priyanka', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-08-30 13:07:41', '2020-09-06 13:38:55', 'Visited', 'By Self', '1.00'),
(393, 'APMT-387', 47, 46, 'Gujarat', 'palanpur', '2020-09-03 00:00:00', 'Shahid Test', 'fever', 'i have fever since 4 days', 'Male', '2020-09-03', 0, 'own', 'O+', '12.000', '2.000', 'No', '2020-09-03 21:09:15', '2020-09-03 21:17:47', 'Visited', 'By Self', '1.00'),
(394, 'APMT-388', 47, 46, '', '', '2020-09-06 00:00:00', 'FAGE', 'fever', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-06 13:35:25', '2020-09-06 14:02:20', 'Visited', 'By Self', '1.00'),
(395, 'APMT-389', 47, 259, NULL, NULL, '2020-09-06 00:00:00', 'JIGAR', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-06 13:42:41', '2020-09-13 16:38:58', 'Visited', 'By Receptionist', '1.00'),
(396, 'APMT-390', 47, 46, NULL, NULL, '2020-09-06 00:00:00', 'case', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-06 13:43:39', '2020-09-13 16:39:06', 'Visited', 'By Receptionist', '1.00'),
(397, 'APMT-391', 47, 46, '', '', '2020-09-13 00:00:00', 'Jigar', 'Fever', '', 'Male', '0000-00-00', 0, '', 'B+', '0.000', '0.000', 'No', '2020-09-13 15:43:02', '2020-09-13 16:40:01', 'Visited', 'By Self', '1.00'),
(398, 'APMT-392', 47, 46, '', '', '2020-09-13 00:00:00', 'RAKESH', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 10:40:02', '2020-09-13 16:39:01', 'Visited', 'By Self', '1.00'),
(399, 'APMT-393', 47, 46, 'Gujarat', 'Ahmedabad', '2020-09-13 00:00:00', 'Navin', 'Fever', '', 'Male', '1991-03-12', 29, '', 'B+', '0.000', '0.000', 'No', '2020-09-13 10:41:03', '2020-09-13 16:39:56', 'Visited', 'By Self', '1.00'),
(400, 'APMT-394', 47, 263, NULL, NULL, '2020-09-13 00:00:00', 'Navin', 'Fever and cold', '', 'Male', '1991-03-12', 29, '', 'B+', '0.000', '0.000', 'No', '2020-09-13 11:03:05', '2020-09-13 16:39:04', 'Visited', 'By Receptionist', '1.00'),
(401, 'APMT-395', 47, NULL, NULL, NULL, '2020-09-13 00:00:00', 'Jigar Chaudhari', 'Head Ache', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 11:03:09', '2020-09-13 11:28:08', 'Visited', 'By Receptionist', '1.00'),
(402, 'APMT-396', 47, 46, NULL, NULL, '2020-09-13 00:00:00', 'ADI', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 11:08:15', '2020-09-13 16:39:57', 'Visited', 'By Receptionist', '1.00'),
(403, 'APMT-397', 47, 264, NULL, NULL, '2020-09-13 00:00:00', 'Jigar_Chaudhari', 'Cold', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 11:08:23', '2020-09-13 16:39:59', 'Visited', 'By Receptionist', '1.00'),
(404, 'APMT-398', 47, 46, '', '', '2020-09-13 00:00:00', 'face', 'shjd', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 12:48:13', '2020-09-13 16:39:59', 'Visited', 'By Receptionist', '1.00'),
(405, 'APMT-399', 47, 46, 'Gujarat', 'palanpur', '2020-09-13 00:00:00', 'shhaid', 'feaver', 'done', 'Male', '0000-00-00', 0, '', 'A+', '0.000', '0.000', 'No', '2020-09-13 15:29:48', '2020-09-13 16:39:09', 'Visited', 'By Self', '1.00'),
(406, 'APMT-400', 47, 46, NULL, NULL, '2020-09-13 00:00:00', 'rale', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 15:40:47', '2020-09-13 16:39:14', 'Visited', 'By Receptionist', '1.00'),
(407, 'APMT-401', 47, 265, NULL, NULL, '2020-09-13 00:00:00', 'viva', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 15:43:37', '2020-09-13 16:40:25', 'Visited', 'By Receptionist', '1.00'),
(408, 'APMT-402', 47, 46, '', '', '2020-09-13 00:00:00', 'savage 1', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:16:25', '2020-09-13 16:16:40', 'Canceled', 'By Self', '1.00'),
(409, 'APMT-403', 47, 46, '', '', '2020-09-14 00:00:00', 'savage 1', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:17:21', '2020-09-13 16:40:27', 'Visited', 'By Self', '1.00'),
(410, 'APMT-404', 47, 46, '', '', '2020-09-14 00:00:00', 'savge 2', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:18:06', '2020-09-13 16:40:27', 'Visited', 'By Self', '1.00'),
(411, 'APMT-405', 47, 46, '', '', '2020-09-14 00:00:00', 'savage 3', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:18:42', '2020-09-13 16:40:06', 'Visited', 'By Self', '1.00'),
(412, 'APMT-406', 47, 46, '', '', '2020-09-13 00:00:00', '1', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:34:43', '2020-09-13 16:54:43', 'Visited', 'By Self', '1.00'),
(413, 'APMT-407', 47, 46, '', '', '2020-09-13 00:00:00', '2', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:35:31', '2020-09-13 16:55:11', 'Visited', 'By Self', '1.00'),
(414, 'APMT-408', 47, 46, '', '', '2020-09-13 00:00:00', '3', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:38:18', '2021-01-09 18:08:19', 'Visited', 'By Self', '1.00'),
(415, 'APMT-409', 47, 266, NULL, NULL, '2020-09-13 00:00:00', '4', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:41:52', '2020-09-13 16:41:52', 'Approve', 'By Receptionist', '1.00'),
(416, 'APMT-410', 47, 267, NULL, NULL, '2020-09-13 00:00:00', '5', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:42:46', '2020-09-13 16:42:46', 'Approve', 'By Receptionist', '1.00'),
(417, 'APMT-411', 47, 268, NULL, NULL, '2020-09-13 00:00:00', '6', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:43:15', '2020-09-13 16:43:15', 'Approve', 'By Receptionist', '1.00'),
(418, 'APMT-412', 47, 269, NULL, NULL, '2020-09-13 00:00:00', '7', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:43:47', '2020-09-13 16:59:03', 'Visited', 'By Receptionist', '1.00'),
(419, 'APMT-413', 47, 46, '', '', '2020-09-13 00:00:00', '8', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:45:27', '2020-09-13 16:59:28', 'Visited', 'By Self', '1.00'),
(420, 'APMT-414', 47, 46, '', '', '2020-09-13 00:00:00', '8', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:46:15', '2020-09-13 16:48:16', 'Approve', 'By Self', '1.00'),
(421, 'APMT-415', 47, 46, '', '', '2020-09-13 00:00:00', '10', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:47:10', '2020-09-13 16:48:23', 'Approve', 'By Self', '1.00'),
(422, 'APMT-416', 47, 46, '', '', '2020-09-13 00:00:00', '11', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:51:04', '2020-09-14 10:22:54', 'Approve', 'By Self', '1.00'),
(423, 'APMT-417', 47, 46, '', '', '2020-09-13 00:00:00', '12', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:51:34', '2020-09-14 10:23:35', 'Approve', 'By Self', '1.00'),
(424, 'APMT-418', 47, 46, '', '', '2020-09-13 00:00:00', '13', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:52:12', '2020-09-13 16:53:19', 'Approve', 'By Self', '1.00'),
(425, 'APMT-419', 47, 46, '', '', '2020-09-13 00:00:00', '14', 'back pain', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-13 16:52:42', '2020-09-13 16:53:32', 'Approve', 'By Self', '1.00'),
(426, 'APMT-420', 47, 46, 'Gujarat', 'palanpur', '2020-09-14 00:00:00', 'bharat', 'fevar', 'shshisf', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-09-14 10:19:52', '2020-09-14 10:21:30', 'Approve', 'By Self', '1.00'),
(427, 'APMT-421', 47, 46, 'Gujarat', 'palanpur', '2020-09-14 00:00:00', 'shahid', 'shahid', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'Yes', '2020-09-14 10:27:11', '2020-09-14 10:28:02', 'Approve', 'By Self', '1.00'),
(428, 'APMT-422', 246, 46, 'Gujarat', 'palanpur', '2020-09-17 00:00:00', 'mahesh', 'back pain', 'ok', 'Male', '1992-01-11', 28, 'one man army', 'B+', '55.000', '165.000', 'No', '2020-09-17 10:39:32', '2020-09-29 21:34:13', 'Approve', 'By Self', '1.00'),
(429, 'APMT-423', 47, 46, 'Gujarat', 'palanpur', '2020-09-17 00:00:00', 'nikunj', 'taav sardi khansi', 'ok', 'Male', '1995-04-11', 25, 'akela', 'B+', '10000.000', '345.000', 'No', '2020-09-17 10:40:59', '2020-09-17 11:10:15', 'Visited', 'By Self', '1.00'),
(430, 'APMT-424', 23, 165, NULL, NULL, '2020-09-28 00:00:00', 'gaurav', 'fghh dfhg k', '', 'Male', '2004-05-28', 16, '', 'O-', '0.000', '0.000', 'No', '2020-09-28 22:32:27', '2020-09-28 22:32:27', 'Approve', 'By Hospital', '1.00'),
(431, 'APMT-425', 20, 271, NULL, NULL, '2020-10-19 00:00:00', 'hiiii', 'asdassd', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-10-19 12:50:36', '2020-10-19 12:50:36', 'Approve', 'By Receptionist', '1.00'),
(432, 'APMT-426', 4, 271, NULL, NULL, '2020-10-22 00:00:00', 'gaurav', 'xzddfnfsdf', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-10-21 12:30:33', '2020-10-23 10:58:21', 'Visited', 'By Receptionist', '1.00'),
(433, 'APMT-427', 4, 272, NULL, NULL, '2020-10-23 00:00:00', 'sdfsadfafd', 'sdfdf', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-10-23 11:00:46', '2020-10-23 11:00:58', 'Visited', 'By Receptionist', '1.00'),
(434, 'APMT-428', 4, 273, NULL, NULL, '2020-10-23 00:00:00', 'sdfasdfsdf', 'ASDJFHJKSDF', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-10-23 11:01:46', '2020-10-23 11:01:59', 'Visited', 'By Receptionist', '1.00'),
(435, 'APMT-429', 4, 274, NULL, NULL, '2020-10-23 00:00:00', 'ASDHSADGJHSDF', 'SDSDF', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-10-23 11:08:27', '2020-10-23 11:09:16', 'Visited', 'By Receptionist', '1.00'),
(436, 'APMT-430', 4, 275, NULL, NULL, '2020-10-23 00:00:00', 'DSFSDFDFFDS', 'SDGSFDJF', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-10-23 11:08:41', '2020-10-23 11:08:59', 'Visited', 'By Receptionist', '1.00'),
(437, 'APMT-431', 4, 276, NULL, NULL, '2020-10-23 00:00:00', 'sdfadffaf', 'sdfsadfffd', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-10-23 11:10:11', '2020-10-23 11:10:30', 'Visited', 'By Receptionist', '1.00'),
(438, 'APMT-432', 4, 277, NULL, NULL, '2020-10-23 00:00:00', 'dsjfhsfksuadhf', 'sadAD', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-10-23 11:17:59', '2020-10-23 11:18:19', 'Visited', 'By Receptionist', '1.00');
INSERT INTO `booking` (`id`, `appointment_no`, `doctor_id`, `user_id`, `state`, `city`, `booking_date`, `petient_name`, `disease`, `description`, `gender`, `date_of_birth`, `age`, `relation_with_me`, `blood_group`, `weight`, `height`, `physical_handicape`, `created_at`, `updated_at`, `status`, `booking_type`, `appointment_charge`) VALUES
(439, 'APMT-433', 4, 278, NULL, NULL, '2020-10-23 00:00:00', 'SDFSHGJHSDF', 'SDFSDFGSDFH', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-10-23 11:19:02', '2020-10-23 11:19:11', 'Visited', 'By Receptionist', '1.00'),
(440, 'APMT-434', 4, 279, NULL, NULL, '2020-10-23 00:00:00', 'SDFSDFASDF', 'SDFSDFDF', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-10-23 11:29:30', '2020-12-01 17:46:49', 'Visited', 'By Receptionist', '1.00'),
(441, 'APMT-435', 4, 281, NULL, NULL, '2020-11-11 00:00:00', 'sdasda', 'sadasdsad', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-11-11 15:06:21', '2020-12-08 14:55:28', 'Visited', 'By Receptionist', '1.00'),
(442, 'APMT-436', 4, 282, NULL, NULL, '2020-11-11 00:00:00', 'asdasdasd', 'asd', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-11-11 15:06:42', '2020-11-11 15:06:42', 'Approve', 'By Receptionist', '1.00'),
(443, 'APMT-437', 4, 283, NULL, NULL, '2020-11-11 00:00:00', 'asdaSDDAd', 'asdasdasddasdsdasd', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-11-11 15:07:04', '2020-11-11 15:07:04', 'Approve', 'By Receptionist', '1.00'),
(444, 'APMT-438', 36, 280, 'Gujarat', '', '2020-11-11 00:00:00', 'forenventry sdf', 'asdds', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-11-11 16:04:31', '2020-11-11 16:05:10', 'Canceled', 'By Self', '1.00'),
(445, 'APMT-439', 36, 280, 'Gujarat', 'palanpur', '2020-11-11 00:00:00', 'Bharat Prajapati', 'safsf dsa', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-11-11 16:06:39', '2020-11-11 16:06:39', 'Pending', 'By Self', '1.00'),
(446, 'APMT-440', 4, NULL, NULL, NULL, '2020-11-22 00:00:00', 'gaurav', 'xzcvvczx', '', 'Male', '0000-00-00', 0, '', 'O-', '0.000', '0.000', 'No', '2020-11-22 12:01:23', '2020-11-22 12:01:23', 'Approve', 'By Receptionist', '1.00'),
(447, 'APMT-441', 4, 286, NULL, NULL, '2020-11-22 00:00:00', 'gaurav', 'xzczxcxz', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-11-22 12:02:09', '2020-12-16 17:00:01', 'Visited', 'By Receptionist', '1.00'),
(448, 'APMT-442', 4, 287, 'Gujarat', 'palanpur', '2020-12-09 00:00:00', 'gaurav prajapati', 'fsdfdfs', '', 'Male', '0000-00-00', 0, '', 'A-', '0.000', '0.000', 'Yes', '2020-12-09 12:11:22', '2021-01-08 17:47:08', 'Extend', 'By Self', '1.00'),
(449, 'APMT-443', 4, NULL, NULL, NULL, '2020-12-16 00:00:00', 'bharat', 'sdas', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-12-16 17:10:55', '2020-12-16 17:10:55', 'Approve', 'By Receptionist', '1.00'),
(450, 'APMT-444', 4, 287, NULL, NULL, '2020-12-16 00:00:00', 'SDFGJH', 'SAD', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-12-16 17:13:06', '2020-12-16 17:13:06', 'Approve', 'By Receptionist', '1.00'),
(451, 'APMT-445', 4, 288, '', '', '2020-12-16 00:00:00', 'bharat', 'sdsdf', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-12-16 17:24:30', '2020-12-16 17:24:30', 'Pending', 'By Self', '1.00'),
(452, 'APMT-446', 4, 288, '', '', '2020-12-16 00:00:00', 'hgsdh', 'sdf', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-12-16 17:27:01', '2020-12-16 17:27:01', 'Pending', 'By Self', '1.00'),
(453, 'APMT-447', 4, NULL, NULL, NULL, '2020-12-21 00:00:00', 'bharat', '', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-12-21 17:16:32', '2020-12-21 17:19:06', 'Visited', 'By Receptionist', '1.00'),
(454, 'APMT-448', 4, NULL, NULL, NULL, '2020-12-21 00:00:00', 'bharat', '', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-12-21 17:23:13', '2020-12-21 17:23:13', 'Approve', 'By Receptionist', '1.00'),
(455, 'APMT-449', 4, 289, NULL, NULL, '2020-12-21 00:00:00', 'sadasd', '', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-12-21 17:24:30', '2020-12-21 17:24:30', 'Approve', 'By Receptionist', '1.00'),
(456, 'APMT-450', 4, NULL, NULL, NULL, '2020-12-24 00:00:00', 'bharat prajapati', '', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-12-24 16:30:29', '2021-05-31 14:21:59', 'Visited', 'By Receptionist', '1.00'),
(457, 'APMT-451', 4, 288, '', '', '2020-12-24 00:00:00', 'dfsf sdf', '', '', 'Male', '0000-00-00', 0, '', '', '0.000', '0.000', 'No', '2020-12-24 16:32:33', '2021-01-28 22:58:43', 'Visited', 'By Self', '1.00'),
(458, 'APMT-452', 4, 288, NULL, NULL, '2020-12-24 00:00:00', 'harish sharma', 'fsdfdfs', 'dfgdghsggdf', 'Male', '0000-00-00', 0, '', 'AB+', '0.000', '0.000', 'No', '2020-12-24 17:28:18', '2021-01-08 17:47:39', 'Visited', 'By Receptionist', '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `booking_chat`
--

CREATE TABLE `booking_chat` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL COMMENT 'from user id',
  `to_id` int(11) NOT NULL COMMENT 'to user id',
  `message` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_chat`
--

INSERT INTO `booking_chat` (`id`, `booking_id`, `from_id`, `to_id`, `message`, `status`, `created_at`) VALUES
(1, 16, 17, 18, 'hello', 'UNREAD', '2019-05-19 21:47:06'),
(2, 16, 18, 17, 'hii', 'UNREAD', '2019-05-19 21:47:16'),
(3, 16, 18, 17, 'hrll', 'UNREAD', '2019-05-19 21:49:05'),
(4, 16, 17, 18, 'nai', 'UNREAD', '2019-05-19 21:49:16'),
(5, 16, 18, 17, 'ok', 'UNREAD', '2019-05-19 21:49:29'),
(6, 16, 18, 17, 'hello', 'UNREAD', '2019-05-19 22:13:41'),
(7, 16, 18, 17, 'hello', 'UNREAD', '2019-05-19 22:17:42'),
(8, 16, 17, 18, 'sometime', 'UNREAD', '2019-05-19 22:17:53'),
(9, 16, 18, 17, 'ok', 'UNREAD', '2019-05-19 22:18:04'),
(10, 16, 18, 17, 'hey_mine', 'UNREAD', '2019-05-19 22:43:45'),
(11, 14, 7, 17, 'hi', 'UNREAD', '2019-09-10 09:24:12'),
(12, 14, 7, 17, 'snehal vyas', 'UNREAD', '2019-09-10 09:24:21'),
(13, 14, 17, 18, 'hi', 'UNREAD', '2019-09-10 09:25:58'),
(14, 9, 18, 17, 'hi', 'UNREAD', '2019-10-11 23:21:13'),
(15, 9, 17, 18, 'hello', 'UNREAD', '2019-10-11 23:24:46'),
(16, 77, 46, 48, 'hjii', 'UNREAD', '2019-11-07 11:56:36'),
(17, 138, 46, 79, 'hii', 'UNREAD', '2019-11-27 23:47:21'),
(18, 138, 79, 46, 'hello', 'UNREAD', '2019-11-27 23:48:07'),
(19, 162, 46, 48, 'hello i am waiting for your apporovel', 'UNREAD', '2019-12-03 23:49:56'),
(20, 180, 119, 48, 'Hdid', 'UNREAD', '2019-12-16 14:02:40'),
(21, 180, 119, 48, 'Hiiiii', 'UNREAD', '2019-12-16 14:02:50'),
(22, 180, 48, 119, 'hdjs', 'UNREAD', '2019-12-16 14:03:21'),
(23, 180, 48, 119, 'nkkn', 'UNREAD', '2019-12-16 14:03:38'),
(24, 179, 118, 48, 'yo', 'UNREAD', '2019-12-16 14:09:25'),
(25, 188, 46, 48, 'Kya ho raha hai bhai?', 'UNREAD', '2019-12-18 11:01:50'),
(26, 195, 46, 48, 'Sahi hai!', 'UNREAD', '2019-12-18 11:13:34'),
(27, 201, 112, 114, 'hello sir', 'UNREAD', '2019-12-27 16:11:46'),
(28, 201, 114, 112, 'bolo', 'UNREAD', '2019-12-27 16:12:23'),
(29, 204, 112, 114, 'hello ! Dr.Jatiya sir', 'UNREAD', '2019-12-30 13:14:37'),
(30, 217, 112, 48, 'hi', 'UNREAD', '2020-01-27 14:25:27'),
(31, 224, 46, 48, 'hi', 'UNREAD', '2020-02-04 15:00:39'),
(32, 365, 48, 46, 'djfbsj', 'UNREAD', '2020-08-01 15:40:22'),
(33, 369, 48, 46, 'hi', 'UNREAD', '2020-08-21 11:42:25'),
(34, 386, 248, 48, 'Hii', 'UNREAD', '2020-08-23 14:36:49'),
(35, 392, 46, 48, 'hii', 'UNREAD', '2020-08-30 13:13:05'),
(36, 394, 46, 48, 'HIHI', 'UNREAD', '2020-09-06 13:35:52'),
(37, 429, 46, 48, 'cvbcv', 'UNREAD', '2020-09-17 10:47:26'),
(38, 430, 7, 165, 'hjjh', 'UNREAD', '2020-09-28 22:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `city_mstr`
--

CREATE TABLE `city_mstr` (
  `id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city_mstr`
--

INSERT INTO `city_mstr` (`id`, `city_name`, `state_id`) VALUES
(1, 'palanpur', 1),
(2, 'Ahmedabad', 1);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `admin_charge` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `admin_charge`) VALUES
(1, '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `country_mstr`
--

CREATE TABLE `country_mstr` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_mstr`
--

INSERT INTO `country_mstr` (`id`, `country_name`) VALUES
(1, 'india'),
(3, 'united states of america');

-- --------------------------------------------------------

--
-- Table structure for table `co_master`
--

CREATE TABLE `co_master` (
  `id` int(11) NOT NULL,
  `co_code` varchar(255) NOT NULL,
  `co_detail` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `co_master`
--

INSERT INTO `co_master` (`id`, `co_code`, `co_detail`, `created_by`, `doctor_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 'dsdf', 'sdfsdf', 20, 20, 'Active', '2020-10-01 10:49:42', '2020-10-01 10:52:01'),
(5, 'Hemophilia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus nunc vel tellus efficitur tincidunt. Phasellus sem risus, ullamcorper a facilisis sit amet, auctor sit amet odio. Suspendisse pharetra risus ex, euismod luctus mauris sagittis et. Donec at nisl massa.', 4, 4, 'Active', '2020-10-20 16:39:36', '2020-10-20 16:39:36'),
(6, 'Abdominal Pain', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus nunc vel tellus efficitur tincidunt. Phasellus sem risus, ullamcorper a facilisis sit amet, auctor sit amet odio. Suspendisse pharetra risus ex, euismod luctus mauris sagittis et. Donec at nisl massa.', 4, 4, 'Active', '2020-10-20 16:39:57', '2020-10-20 16:39:57'),
(7, 'Abdominoplasty', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus nunc vel tellus efficitur tincidunt. Phasellus sem risus, ullamcorper a facilisis sit amet, auctor sit amet odio. Suspendisse pharetra risus ex, euismod luctus mauris sagittis et. Donec at nisl massa.', 4, 4, 'Active', '2020-10-20 16:40:24', '2020-10-20 16:40:24'),
(8, '', '', 4, 4, 'Active', '2020-12-08 23:15:38', '2020-12-08 23:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `disease_master`
--

CREATE TABLE `disease_master` (
  `id` int(11) NOT NULL,
  `dis_name` varchar(500) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_days` int(11) DEFAULT NULL COMMENT 'booking before this days',
  `daily_limit` int(11) DEFAULT NULL,
  `doctor_type` varchar(255) DEFAULT NULL,
  `description` text,
  `photos` text,
  `address` varchar(300) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `hospital_address` varchar(300) DEFAULT NULL,
  `fees` decimal(18,2) DEFAULT NULL,
  `emergency_charge` decimal(18,2) DEFAULT NULL,
  `specialization` text,
  `award_and_recognition` text,
  `eduction` text,
  `lat` decimal(18,9) DEFAULT NULL,
  `longi` decimal(18,9) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL COMMENT 'user table hospital id',
  `experience` text,
  `registration_detail` text,
  `contact_no` varchar(100) NOT NULL,
  `phone_no` varchar(100) DEFAULT NULL,
  `is_emergency` int(11) NOT NULL DEFAULT '0' COMMENT '0=''no_emergency'',1=''emergency'''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `user_id`, `booking_days`, `daily_limit`, `doctor_type`, `description`, `photos`, `address`, `state`, `city`, `hospital_address`, `fees`, `emergency_charge`, `specialization`, `award_and_recognition`, `eduction`, `lat`, `longi`, `hospital_id`, `experience`, `registration_detail`, `contact_no`, `phone_no`, `is_emergency`) VALUES
(1, 4, 180, 4, 'MASTER OF PHYSIOTHERAPY [MPT]', '<p>Dr. Ranjeet Mali is currently the Director and H.O.D. of the Department of Medicine, Artemis Hospital, where he’s been working for the past 8 years. He is responsible for the overall administration of the Medicine department which includes analysis & performance of the department as per the business plan and conducting medical audits on a regular basis. He manages patients in the OPD, IPD, ICU and Emergency conforming to the latest evidence based guidelines. Additionally, he is also the Program director of the post graduate DNB teaching program and in-charge of the Preventive Health-check Program at Artemis Hospital.</p>', '[\"2019-01-24_4_154835690410256384225c4a0d2836aee.jpg\",\"2019-01-24_4_154835691120574259135c4a0d2f4740e.jpg\",\"2019-11-09_4_1573321634224275dc6fba239ab6.jpg\"]', '32,medipolice sc highway,ahmedabad', 'Gujarat', 'palanpur', '32,medipolice sc highway,ahmedabad', '800.00', '0.00', NULL, '<p>This is award</p>\r\n', '<p>M.B.B.S. - Maulana Azad Medical College, Delhi 1987<br />\r\nM.D.(Medicine) - Delhi University 1993 Fellow of the American College of Physicians 2013</p>', '72.214545000', '72.154154160', 7, '<p>exp</p>\r\n', '<p>reg</p>\r\n', '02726', '0792562563', 1),
(3, 19, 10, NULL, 'M.B.B.S', '<p>not done</p>\r\n', '[\"2019-01-24_19_154836010617031519145c4a19aa61774.png\",\"2019-01-24_19_154836011018372329745c4a19ae60ec3.jpg\"]', 'Near Gubber', 'Gujarat', 'palanpur', '', '100.00', '0.00', '[\"Cancer\"]', '', '<p>MBBS</p>\r\n', '0.000000000', '0.000000000', NULL, '', '', '4564565', '', 0),
(6, 23, NULL, NULL, 'M D', 'bguif', NULL, 'bobodfb', NULL, '', NULL, '200.00', NULL, '[\"Cancer\"]', 'oinfoidnf', 'dnofindof', '0.000000000', '0.000000000', 7, '', '', '9429420049', NULL, 0),
(7, 25, NULL, NULL, 'M.B.B.S', 'Your Google Account was just signed in to from a new Windows device. You\'re getting this email to make sure that it was you.', NULL, 'palanpur', NULL, '', NULL, '150.00', NULL, '[\"Cancer\"]', 'Your Google Account was just signed in to from a new Windows device. You\'re getting this email to make sure that it was you.', 'MBBS Your Google Account was just signed in to from a new Windows device. You\'re getting this email to make sure that it was you.', '0.000000000', '0.000000000', 24, 'Your Google Account was just signed in to from a new Windows device. You\'re getting this email to make sure that it was you.\r\nYour Google Account was just signed in to from a new Windows device. You\'re getting this email to make sure that it was you.\r\nYour Google Account was just signed in to from a new Windows device. You\'re getting this email to make sure that it was you.\r\nYour Google Account was just signed in to from a new Windows device. You\'re getting this email to make sure that it was you.', 'Your Google Account was just signed in to from a new Windows device. You\'re getting this email to make sure that it was you.\r\nYour Google Account was just signed in to from a new Windows device. You\'re getting this email to make sure that it was you.\r\nYour Google Account was just signed in to from a new Windows device. You\'re getting this email to make sure that it was you.', '02742320000', NULL, 0),
(8, 27, NULL, NULL, 'M.B.B.S', '\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"\r\n\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"', NULL, 'palanpur', NULL, '', NULL, '250.00', NULL, '[\"Cancer\",\"Bloud Pressure\"]', '\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"\r\n\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"', ' \"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"\r\n\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"', '0.000000000', '0.000000000', 24, '\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"\r\n\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"', '\"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...\"\r\n\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"', '7878787871', NULL, 0),
(9, 36, 180, NULL, NULL, NULL, '[\"2019-11-17_36_157397694024185dd0fb6ce5841.png\"]', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0),
(10, 47, 180, NULL, 'M.B.B.S', '<p>ROLE: </p>\r\n\r\n<p>Surgeon - Cardiothoracic</p>\r\n\r\n<h2>PRACTICE AREAS</h2>\r\n\r\n<ul>\r\n	<li>Cardiac</li>\r\n	<li>Congenital</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Aorta</li>\r\n	<li>Aortic valve disease</li>\r\n	<li>Congenital</li>\r\n	<li>Extracorporeal circulation</li>\r\n	<li>Mechanical circulatory assistance</li>\r\n	<li>Pericardium</li>\r\n	<li>Tricuspid valve disease</li>\r\n	<li>Valve disease</li>\r\n</ul>\r\n', NULL, 'at post palanpur , doctorhouse ', 'Gujarat', 'palanpur', '', '100.00', '100.00', '[\"Cancer\"]', '', '<p>MBBS,<br />\r\nMS (General Surgery), Madras Medical College<br />\r\nMCh, Madurai Medical College<br />\r\nFellow, Pediatric Cardiac Surgery, Narayana Hrudayalaya<br />\r\nConsultant Pediatric Cardiac Surgeon, Narayana Hrudayalaya<br />\r\nFellow, Childrens Hospital at Westmead<br />\r\nconsultant Ped card surg NH Dec<br />\r\nSenior consultant pediatric cardiac surgeon , AIMS, Cochin, India.<br />\r\nCardiac surgeon Columbia Asia hospital, Bangalore -<br />\r\nschool-Vikaasa - Madurai - </p>\r\n', '24.173419000', '72.431757000', NULL, '<p>21 years </p>\r\n', '', '3214523212', '', 0),
(11, 53, NULL, NULL, '-select-', 'we provide a best health care ', NULL, 'at post palanpur', NULL, '', NULL, '100.00', NULL, '[\"Cancer\",\"Bloud Pressure\"]', '', 'm.d.', '24.173419000', '72.431757000', 52, '10', '', '2112112211', NULL, 0),
(12, 54, NULL, NULL, 'M.B.B.S', 'djcsdncj', '[\"2019-11-05_54_1572943759150045dc1378f6ead9.jpg\"]', 'lsadjsi', '', '', NULL, '100.00', '0.00', NULL, 'dclkfsnedl', 'kldwnkedn', '0.000000000', '0.000000000', 52, '10', 'jkdfbajkds', '221111221122', NULL, 0),
(13, 55, 180, NULL, NULL, NULL, '[\"2019-11-19_55_1574138651157925dd3731b58f67.jpg\"]', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0),
(14, 77, 180, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0),
(15, 95, NULL, NULL, 'DOCTORATE OF MEDICINE [MD] (FORENSIC MEDICINE)', 'ndlcnkld', NULL, 'at post jagana ta palanpur dist banaskantha state gujarat', NULL, '', NULL, '100.00', NULL, '[\"Cancer\",\"Bloud Pressure\"]', 'kdmkfn', 'njfndfks', '0.000000000', '0.000000000', 52, 'kjkden', 'ndfjnskjdfn', '09408824463', NULL, 0),
(16, 111, NULL, NULL, 'm.d', '<p>hii</p>\r\n', '[\"2019-12-13_111_157622911034125df358f6480fa.png\"]', 'palanpur', NULL, '', '', '10.00', NULL, '[\"Cancer\",\"Bloud Pressure\"]', '', '<p>m.d</p>\r\n', '0.000000000', '0.000000000', 110, '', '', '9512338302', '', 0),
(17, 113, 180, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0),
(18, 135, 180, NULL, 'MASTER OF CHIRURGIAE [M.CH] (NEURO SURGERY)', 'A doctor high on LSD all the time.', NULL, 'Somewhere', NULL, '', NULL, '1000.00', NULL, 'null', 'Nobel Health Award', 'M.Ch', '0.000000000', '0.000000000', 52, 'Too much', '', '987654321', NULL, 0),
(19, 136, NULL, NULL, '-select-', 'sdfghjk', NULL, 'asdfghj', NULL, '', NULL, '100.00', NULL, 'null', 'hj', 'wertyuio', '0.000000000', '0.000000000', 52, 'dfghjk', 'fghjk', '1234567890', NULL, 0),
(20, 151, 180, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0),
(21, 246, 180, NULL, 'MASTER OF SURGERY [MS] (ORTHOPAEDICS)', 'ORTHOPAEDIC TRAUMA AND JOINT REPLACEMENT AND ARTHROSOCPY CENTER', NULL, 'GROUND FLOOR JIVANDEEP HOSPITAL,BEHIND HOTEL CAPPAL,NEAR AROMA CIRCLE,PALANPUR-385001', 'Gujarat', 'palanpur', NULL, '600.00', '1000.00', NULL, '', 'MS ORTHO\r\nJOINT REPLACEMENT SURGEON (MUMBAI)\r\nJOINT REPLACEMENT AND ARTHROSCOPY CENTER (FRANCE & MUMBAI)', '0.000000000', '0.000000000', NULL, '', '', '8980222824', NULL, 0),
(22, 249, 180, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0),
(23, 20, 180, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_assistants`
--

CREATE TABLE `doctor_assistants` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL COMMENT 'user table id',
  `description` text NOT NULL,
  `address` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_assistants`
--

INSERT INTO `doctor_assistants` (`id`, `user_id`, `doctor_id`, `description`, `address`) VALUES
(3, 34, 4, 'This is description of assistant ', 'Near mahadev temple, Ambaji'),
(4, 37, 19, 'doiodnifdf', 'palanpur'),
(5, 49, 47, 'hewgjgh', 'yguwygyuw'),
(6, 78, 77, 'fhsufhvui', 'fhvjdg'),
(7, 115, 113, '', 'palanpur'),
(8, 120, 111, 'hii', 'palanpur'),
(9, 153, 151, 'pqrs', 'pqrs'),
(10, 194, 135, 'Hshjs', 'Ggsha'),
(11, 227, 55, 'h8she husdhf hdf duehfsnd', 'at post jagana ta palanpur dist banaskantha state gujarat'),
(12, 251, 249, '', 'old college compound pratapbhai vadi road  palanpur');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_holiday_schedule`
--

CREATE TABLE `doctor_holiday_schedule` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'doctor_id',
  `date` date NOT NULL,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_holiday_schedule`
--

INSERT INTO `doctor_holiday_schedule` (`id`, `user_id`, `date`, `remark`) VALUES
(6, 20, '2019-04-04', 're1'),
(7, 20, '2019-04-07', 'sd'),
(8, 20, '2019-04-15', 'waf'),
(11, 4, '2019-04-30', 'sdfasd'),
(12, 4, '2019-05-03', 'sdfdsa'),
(13, 36, '2019-11-30', 'Not avilable'),
(14, 47, '2019-12-18', 'Aise hi'),
(15, 47, '2020-08-02', 'vgdgfh'),
(16, 47, '2020-08-22', 'abcd'),
(17, 47, '0000-00-00', 'Holiday'),
(19, 47, '0000-00-00', 'Holiday'),
(20, 4, '2020-12-16', ''),
(21, 4, '2020-12-18', ''),
(22, 4, '2020-12-19', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_medicine_list`
--

CREATE TABLE `doctor_medicine_list` (
  `id` int(11) NOT NULL,
  `name` varchar(2000) CHARACTER SET latin1 NOT NULL,
  `morning` varchar(255) CHARACTER SET latin1 NOT NULL,
  `afternoon` varchar(255) CHARACTER SET latin1 NOT NULL,
  `evening` varchar(255) CHARACTER SET latin1 NOT NULL,
  `doz` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `tab` int(255) DEFAULT NULL,
  `description` text NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'doctor''s user id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_medicine_list`
--

INSERT INTO `doctor_medicine_list` (`id`, `name`, `morning`, `afternoon`, `evening`, `doz`, `tab`, `description`, `status`, `created_at`, `updated_at`, `created_by`, `user_id`) VALUES
(1, 'Paracetamol', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-04 23:14:05', '2019-10-04 23:14:05', 18, 4),
(2, 'Acetaminophen', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:47:53', '2019-10-11 23:47:53', 18, 4),
(3, 'Crestor (rosuvastatin)', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:48:19', '2019-10-11 23:48:19', 18, 4),
(4, 'Ventolin HFA (albuterol)', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:48:28', '2019-10-11 23:48:28', 18, 4),
(5, 'Nexium (esomeprazole)', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:48:41', '2019-10-11 23:48:41', 18, 4),
(6, 'Advair Diskus (fluticasone)', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:48:55', '2019-10-11 23:48:55', 18, 4),
(7, 'Paracetamol 5', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-04 23:14:05', '2019-10-04 23:14:05', 18, 4),
(8, 'Acetaminophen code', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:47:53', '2019-10-11 23:47:53', 18, 4),
(9, 'Crestor (rosuvastatin) new', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:48:19', '2019-10-11 23:48:19', 18, 4),
(10, 'Ventolin HFA (albuterol) hold', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:48:28', '2019-10-11 23:48:28', 18, 4),
(11, 'Paracetamol nos', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-04 23:14:05', '2019-10-04 23:14:05', 18, 4),
(12, 'Acetaminophen can', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:47:53', '2019-10-11 23:47:53', 18, 4),
(13, 'Crestor (rosuvastatin) week', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:48:19', '2019-10-11 23:48:19', 18, 4),
(14, 'Ventolin HFA (albuterol) how', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:48:28', '2019-10-11 23:48:28', 18, 4),
(15, 'Nexium (esomeprazole) lon', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:48:41', '2019-10-11 23:48:41', 18, 4),
(16, 'Advair Diskus (fluticasone) haha', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:48:55', '2019-10-11 23:48:55', 18, 4),
(17, 'Paracetamol 585', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-04 23:14:05', '2019-10-04 23:14:05', 18, 4),
(18, 'Acetaminophen grow', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:47:53', '2019-10-11 23:47:53', 18, 4),
(19, 'Crestor (rosuvastatin) man', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:48:19', '2019-10-11 23:48:19', 18, 4),
(20, 'Ventolin HFA (albuterol) 250', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-11 23:48:28', '2019-10-11 23:48:28', 18, 4),
(21, 'Acetaminophen', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-14 18:47:40', '2019-10-14 18:47:40', 38, 19),
(22, 'Hydrochlorothiazide', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-14 18:47:55', '2019-10-14 18:47:55', 38, 19),
(23, 'Ibuprofen', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-14 18:48:04', '2019-10-14 18:48:04', 38, 19),
(24, 'Zoloft', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-14 18:48:12', '2019-10-14 18:48:12', 38, 19),
(25, 'Cymbalta', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-14 18:48:20', '2019-10-14 18:48:20', 38, 19),
(26, 'Lorazepam', '1', '1', '1', NULL, NULL, '', 'Active', '2019-10-14 18:48:30', '2019-10-14 18:48:30', 38, 19),
(27, 'prosc300', '1', '1', '1', NULL, NULL, '', 'Active', '2019-11-02 22:18:49', '2019-11-02 22:18:49', 43, 23),
(28, 'fruensx', '1', '1', '1', NULL, NULL, '', 'Active', '2019-11-02 22:19:27', '2019-11-02 22:19:27', 43, 23),
(29, 'Acetaminophen.', '1', '1', '1', NULL, NULL, '', 'Active', '2019-11-03 19:16:45', '2019-11-03 19:16:45', 48, 47),
(30, 'Adderall.', '1', '1', '1', NULL, NULL, '', 'Active', '2019-11-03 19:17:26', '2019-11-03 19:17:26', 48, 47),
(31, 'Alprazolam.', '1', '1', '1', NULL, NULL, '', 'Active', '2019-11-03 19:18:19', '2019-11-03 19:18:19', 48, 47),
(32, 'Amitriptyline.', '1', '1', '1', NULL, NULL, '', 'Active', '2019-11-03 19:18:44', '2019-11-03 19:18:44', 48, 47),
(33, 'Amlodipine', '1', '1', '1', NULL, NULL, '', 'Active', '2019-11-03 19:19:14', '2019-11-03 19:19:14', 48, 47),
(34, 'Amoxicillin', '1', '1', '1', NULL, NULL, '', 'Active', '2019-11-03 19:19:47', '2019-11-03 19:19:47', 48, 47),
(35, 'Ativan', '1', '1', '1', NULL, NULL, '', 'Active', '2019-11-03 19:20:08', '2019-11-03 19:20:08', 48, 47),
(36, 'Atorvastatin', '1', '1', '1', NULL, NULL, '', 'Active', '2019-11-03 19:20:32', '2019-11-03 19:20:32', 48, 47),
(37, 'ralson', '1', '1', '1', NULL, NULL, '', 'Active', '2019-11-26 16:14:09', '2019-11-26 16:14:09', 48, 47),
(38, 'ABCD', '1', '1', '1', NULL, NULL, '', 'Active', '2020-02-04 14:01:36', '2020-02-04 14:01:36', 152, 151),
(39, 'PQRS', '1', '1', '1', NULL, NULL, '', 'Active', '2020-02-04 14:01:57', '2020-02-04 14:01:57', 152, 151),
(40, 'T. DOXYCYCLINE 100mg 0-1-0-1 ?????  ??????  ?????', '1', '1', '1', NULL, NULL, '', 'Active', '2020-08-23 13:23:55', '2020-08-23 13:26:05', 48, 47),
(41, 'PANTACQ D', '1', '1', '1', NULL, NULL, '', 'Active', '2020-09-07 08:59:48', '2020-09-07 08:59:48', 250, 249),
(42, 'PANTACQ D', '1', '1', '1', NULL, NULL, '', 'Active', '2020-09-07 09:07:18', '2020-09-07 09:07:18', 250, 249),
(43, 'RANTAC 150', '1', '1', '1', NULL, NULL, '', 'Active', '2020-09-07 09:08:54', '2020-09-07 09:08:54', 250, 249),
(44, 'METROGYL', '1', '1', '1', NULL, NULL, '', 'Active', '2020-09-07 09:09:42', '2020-09-07 09:09:42', 250, 249),
(45, 'CEFI-XL 0-1-0-1', '1', '1', '1', NULL, NULL, '', 'Block', '2020-09-07 09:15:38', '2020-09-07 09:46:37', 250, 249),
(46, 'DOXYCYCLINE 100  0-1-0-1', '1', '1', '1', NULL, NULL, '', 'Active', '2020-09-07 09:45:18', '2020-09-07 09:45:18', 250, 249),
(47, 'test Medicine', '1', 'gaurav', '1', NULL, NULL, '', 'Active', '2020-09-29 22:40:40', '2020-09-29 22:50:43', 18, 4),
(48, 'test', '1', 'gfgffgg', '1', '[\"300\",\"500\"]', 30, 'Google ઇનપુટ સાધનોનો ઓનલાઇન ...', 'Active', '2020-09-29 22:44:11', '2020-12-08 22:49:01', 18, 4),
(49, 'pera', '1', '1', '1', NULL, NULL, '', 'Active', '2020-10-19 16:12:43', '2020-10-19 16:12:43', 21, 20),
(50, 'kb;lkfg', '1', '1', '1', '[\"500\",\"300\",\"400\"]', 30, 'dljlbfdf', 'Active', '2020-12-02 12:31:02', '2020-12-02 12:31:02', 18, 4);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_pharmacist`
--

CREATE TABLE `doctor_pharmacist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(500) NOT NULL,
  `dlno` varchar(500) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_pharmacist`
--

INSERT INTO `doctor_pharmacist` (`id`, `user_id`, `doctor_id`, `description`, `address`, `dlno`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 270, 4, 'Medicine with suggestions and google speech api. (when doctor select medicine then timing fill automatically', 'Cozy Palanpur', 'DNODF89658974DJKBDKFLBDLKF', 2020, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_rating`
--

CREATE TABLE `doctor_rating` (
  `id` bigint(20) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_rating`
--

INSERT INTO `doctor_rating` (`id`, `patient_id`, `doctor_id`, `star`) VALUES
(2, 14, 4, 4),
(4, 17, 4, 4),
(5, 17, 19, 5),
(6, 26, 25, 5),
(7, 50, 47, 2),
(8, 50, 55, 1),
(9, 46, 47, 5),
(10, 46, 53, 5);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_type_mstr`
--

CREATE TABLE `doctor_type_mstr` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_type_mstr`
--

INSERT INTO `doctor_type_mstr` (`id`, `type`, `status`, `created_at`) VALUES
(7, 'MASTER OF CHIRURGIAE [M.CH] (NEURO SURGERY)', '', '0000-00-00 00:00:00'),
(8, 'MASTER OF CHIRURGIAE [M.CH] (UROLOGY)', '', '0000-00-00 00:00:00'),
(9, 'DOCTORATE OF MEDICINE [MD] (TUBERCULOSIS & RESPIRATORY MEDICINE)', '', '0000-00-00 00:00:00'),
(10, 'MASTER OF CHIRURGIAE [M.CH] (PLASTIC SURGERY)', '', '0000-00-00 00:00:00'),
(11, 'DOCTORATE OF MEDICINE [MD] (RADIOLOGY)', '', '0000-00-00 00:00:00'),
(12, 'MASTER OF PHYSIOTHERAPY [MPT]', '', '0000-00-00 00:00:00'),
(13, 'DM [CARDIOLOGY]', '', '0000-00-00 00:00:00'),
(14, 'MASTER OF SURGERY [MS] (GENERAL SURGERY)', '', '0000-00-00 00:00:00'),
(15, 'DOCTORATE OF MEDICINE [MD] (DERMATOLOGY)', '', '0000-00-00 00:00:00'),
(16, 'MASTER OF SURGERY [MS] (ANATOMY)', '', '0000-00-00 00:00:00'),
(17, 'MASTER OF SURGERY [MS] (OPHTHALMOLOGY)', '', '0000-00-00 00:00:00'),
(18, 'DOCTORATE OF MEDICINE [MD] (DERMATOLOGY, VENEREOLOGY & LEPROLOGY)', '', '0000-00-00 00:00:00'),
(19, 'DOCTORATE OF MEDICINE [MD] (OBSTETRICS & GYNAECOLOGY)', '', '0000-00-00 00:00:00'),
(20, 'DOCTORATE OF MEDICINE [MD] (FORENSIC MEDICINE)', '', '0000-00-00 00:00:00'),
(21, 'DOCTORATE OF MEDICINE [MD] (ANAESTHESIOLOGY)', '', '0000-00-00 00:00:00'),
(22, 'MASTER OF SURGERY [MS] (OBSTETRICS & GYNAECOLOGY)', '', '0000-00-00 00:00:00'),
(23, 'MASTER OF SURGERY [MS] (E.N.T.)', '', '0000-00-00 00:00:00'),
(24, 'DOCTORATE OF MEDICINE [MD] (RADIODIAGNOSIS)', '', '0000-00-00 00:00:00'),
(25, 'DOCTORATE OF MEDICINE [MD] (PSYCHIATRY)', '', '0000-00-00 00:00:00'),
(26, 'DOCTORATE OF MEDICINE [MD] (ANATOMY)', '', '0000-00-00 00:00:00'),
(27, 'DOCTORATE OF MEDICINE [MD] (COMMUNITY MEDICINE)', '', '0000-00-00 00:00:00'),
(28, 'DOCTORATE OF MEDICINE [MD] (PAEDIATRICS)', '', '0000-00-00 00:00:00'),
(29, 'MASTER OF SURGERY [MS] (ORTHOPAEDICS)', '', '0000-00-00 00:00:00'),
(30, 'BACHELOR OF PHYSIOTHERAPY [BPT]', '', '0000-00-00 00:00:00'),
(31, 'MASTER OF SURGERY [MB.DGO] (OBSTETRICS & GYNAECOLOGY)', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(255) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contact_no` varchar(100) NOT NULL,
  `gallary` text,
  `lat` decimal(18,9) DEFAULT NULL,
  `longi` decimal(18,9) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `hospital_name`, `address`, `state`, `city`, `contact_no`, `gallary`, `lat`, `longi`, `user_id`) VALUES
(1, 'Mavajat Hospital', 'Mansarovar Road,palanpur', 'Gujarat', 'palanpur', '027123456789', NULL, '892893.989000000', '649384.890000000', 7),
(2, 'KD HOSPITAL ', 'Ahmeadabd', 'Rajasthan', '', '9429420049', NULL, '23.562365000', '72.456600000', 24),
(3, 'SHREEJI HOSPITAL', 'PALANPUR', 'Gujarat', 'palanpur', '02742321320', NULL, '0.000000000', '0.000000000', 39),
(5, 'LIONS CLUB ', 'at post palanpur', 'Gujarat', 'palanpur', '2222222222', NULL, '24.173419000', '72.431757000', 52),
(6, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 110),
(7, 'sadbhav hospital', 'palanpur', NULL, NULL, '9512338302', 'lo.png', '0.000000000', '0.000000000', 110);

-- --------------------------------------------------------

--
-- Table structure for table `hospital_inquiry`
--

CREATE TABLE `hospital_inquiry` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_cotanct_no` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital_inquiry`
--

INSERT INTO `hospital_inquiry` (`id`, `hospital_name`, `hospital_cotanct_no`, `email`, `contact_person_name`, `contact_person_mobile`, `address`, `city`, `state`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Some One', '5454545646', 'sadasd@sdfnsd.com', 'Nandoliya', '9898209403', 'Gabbar Road, Near Mahadev temple', 'Ambaji', 'Gujarat', 'cvbgvc', '2019-03-13 01:04:35', '2019-03-13 01:04:35'),
(3, 'ramdev hospital', '212121212', 'RAMDEV@GMAIL.COM', 'ADITYA JOSHI', '1111111111', 'HSGFUGSYG', 'PALANPUR', 'GUJARAT', 'I WANT TO ADD MY HOSPITAL SYSTEM ', '2019-11-07 15:26:23', '2019-11-07 15:26:23'),
(4, 'Acha Hospital', '8774566325', 'acha@gmail.com', 'Acha Banda', '9876543219', 'Wonderland', 'Dreamcity', 'Jupiter', 'Just an acha hospital.', '2019-12-18 12:30:27', '2019-12-18 12:30:27'),
(5, 'ABC', '123456789', 'hospital@gmail.com', 'Neel Shah', '123456789', 'ygde, iend', 'WA', 'ON', 'I want an A/C.', '2020-01-02 12:36:01', '2020-01-02 12:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `label_master`
--

CREATE TABLE `label_master` (
  `id` int(11) NOT NULL,
  `label_title` varchar(255) NOT NULL,
  `label_value` text,
  `label_unit` varchar(255) DEFAULT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `input_type` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `label_master`
--

INSERT INTO `label_master` (`id`, `label_title`, `label_value`, `label_unit`, `validation`, `input_type`, `created_by`, `doctor_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'new one', NULL, NULL, NULL, 'text_box', 20, 20, 'Active', '2020-10-01 00:17:10', '2020-10-01 00:17:10'),
(4, 'BP', NULL, NULL, NULL, 'text_box', 4, 4, 'Active', '2020-10-06 21:34:44', '2020-10-06 21:34:44'),
(5, 'SUGER', NULL, NULL, NULL, 'text_box', 4, 4, 'Active', '2020-10-06 21:34:54', '2020-10-06 21:34:54'),
(6, 'HEART RATE', NULL, NULL, NULL, 'text_box', 4, 4, 'Active', '2020-10-06 21:35:05', '2020-10-06 21:35:05'),
(7, 'PULSE', NULL, NULL, NULL, 'text_box', 4, 4, 'Active', '2020-10-06 21:35:23', '2020-10-06 21:35:23'),
(8, 'weight', NULL, NULL, NULL, 'text_box', 4, 4, 'Active', '2020-10-20 16:53:16', '2020-10-20 16:53:16'),
(9, 'LMP', NULL, NULL, NULL, 'text_box', 4, 4, 'Active', '2020-10-20 16:53:32', '2020-10-20 16:53:32'),
(10, 'GD', NULL, NULL, NULL, 'text_box', 4, 4, 'Active', '2020-10-20 16:53:39', '2020-10-20 16:53:39'),
(11, 'weeks', NULL, NULL, NULL, 'text_box', 4, 4, 'Active', '2020-10-20 16:53:58', '2020-10-20 16:53:58'),
(12, 'RS', NULL, NULL, NULL, 'text_box', 4, 4, 'Active', '2020-10-20 16:54:04', '2020-10-20 16:54:16'),
(13, 'dsf', NULL, 'dsf', NULL, 'text_box', 4, 4, 'Active', '2020-11-22 11:22:29', '2020-11-22 11:22:29'),
(14, 'sdf', NULL, 'sdf', NULL, 'text_box', 4, 4, 'Active', '2020-11-22 11:22:34', '2020-11-22 11:22:34'),
(15, 'dsfsadfadsf', NULL, 'jkghkkgj', NULL, 'text_box', 4, 4, 'Active', '2020-11-22 11:22:47', '2020-11-22 11:22:47'),
(16, 'dsvxcvcv', NULL, 'xcvzxcvvc', NULL, 'text_box', 4, 4, 'Active', '2020-11-22 11:22:52', '2020-11-22 11:22:52'),
(17, 'કોરોના', NULL, 'Score', NULL, 'text_box', 4, 4, 'Active', '2020-12-08 14:50:15', '2020-12-08 14:51:31'),
(18, 'SUGER', NULL, '', NULL, 'text_box', 4, 4, 'Active', '2020-12-08 23:16:26', '2020-12-08 23:16:26'),
(19, 'dd', NULL, '', NULL, 'text_box', 4, 4, 'Active', '2020-12-09 11:58:22', '2020-12-09 11:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `status` varchar(50) DEFAULT 'UNREAD',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'This is titm', 'the notificationsthe notificationsthe notificationsthe notificationsthe notificationsthe notificationsthe notificationsthe notifications', 'READ', '2019-04-13 00:00:00', '2021-03-14 20:52:27'),
(2, 4, 'This is titm', 'the notificationsthe notificationsthe notificationsthe notificationsthe notificationsthe notificationsthe notificationsthe notifications', 'READ', '2019-04-13 00:00:00', '2021-03-14 20:52:27'),
(3, 17, 'This is titm', 'the notificationsthe notificationsthe notificationsthe notificationsthe notificationsthe notificationsthe notificationsthe notifications', 'READ', '2019-04-13 00:00:00', '2019-11-05 11:32:04'),
(4, 17, 'This is titm', 'the notificationsthe notificationsthe notificationsthe notificationsthe notificationsthe notificationsthe notificationsthe notifications', 'READ', '2019-04-13 00:00:00', '2019-11-05 11:32:04'),
(5, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been approved.', 'READ', '2019-04-26 23:38:47', '2019-11-05 11:32:04'),
(6, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been approved.', 'READ', '2019-04-26 23:39:47', '2019-11-05 11:32:04'),
(7, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been extended.', 'READ', '2019-04-26 23:39:50', '2019-11-05 11:32:04'),
(8, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been approved.', 'READ', '2019-04-26 23:39:53', '2019-11-05 11:32:04'),
(9, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been approved.', 'READ', '2019-04-26 23:40:13', '2019-11-05 11:32:04'),
(10, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been approved.', 'READ', '2019-04-26 23:40:22', '2019-11-05 11:32:04'),
(11, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been approved.', 'READ', '2019-04-26 23:40:27', '2019-11-05 11:32:04'),
(12, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been approved.', 'READ', '2019-04-26 23:42:10', '2019-11-05 11:32:04'),
(13, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been approved.', 'READ', '2019-04-26 23:43:24', '2019-11-05 11:32:04'),
(14, 18, 'Appointment updated', 'Appointment <b>APMT-11</b> has been approved.', 'READ', '2019-04-26 23:43:24', '2021-03-14 20:55:47'),
(15, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been visited.', 'READ', '2019-04-26 23:43:33', '2019-11-05 11:32:04'),
(16, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been visited.', 'READ', '2019-04-26 23:44:04', '2019-11-05 11:32:04'),
(17, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been visited.', 'READ', '2019-04-26 23:44:12', '2019-11-05 11:32:04'),
(18, 17, 'Appointment updated', 'Appointment <b>APMT-11</b> has been visited.', 'READ', '2019-04-26 23:44:52', '2019-11-05 11:32:04'),
(19, 18, 'Appointment updated', 'Appointment <b>APMT-11</b> has been visited.', 'READ', '2019-04-26 23:44:52', '2021-03-14 20:55:47'),
(20, 4, 'New appointment', 'A new appointment <b>APMT-12</b> has been booked', 'READ', '2019-05-16 23:43:33', '2021-03-14 20:52:27'),
(21, 18, 'New appointment', 'A new appointment <b>APMT-12</b> has been booked', 'READ', '2019-05-16 23:43:33', '2021-03-14 20:55:47'),
(22, 4, 'New appointment', 'A new appointment <b>APMT-13</b> has been booked', 'READ', '2019-05-16 23:48:47', '2021-03-14 20:52:27'),
(23, 18, 'New appointment', 'A new appointment <b>APMT-13</b> has been booked', 'READ', '2019-05-16 23:48:47', '2021-03-14 20:55:47'),
(24, 4, 'New appointment', 'A new appointment <b>APMT-14</b> has been booked', 'READ', '2019-05-16 23:49:19', '2021-03-14 20:52:27'),
(25, 18, 'New appointment', 'A new appointment <b>APMT-14</b> has been booked', 'READ', '2019-05-16 23:49:19', '2021-03-14 20:55:47'),
(26, 23, 'New appointment', 'A new appointment <b>APMT-15</b> has been booked ', 'READ', '2019-06-18 23:20:39', '2019-11-02 22:18:10'),
(33, 0, 'New appointment', 'A new appointment <b>APMT-15</b> has been booked ', 'UNREAD', '2019-06-24 00:48:09', '2019-06-24 00:48:09'),
(34, 0, 'New appointment', 'A new appointment <b>APMT-15</b> has been booked ', 'UNREAD', '2019-06-24 00:49:15', '2019-06-24 00:49:15'),
(35, 23, 'New appointment', 'A new appointment <b>APMT-15</b> has been booked ', 'READ', '2019-06-24 00:49:36', '2019-11-02 22:18:10'),
(36, 23, 'New appointment', 'A new appointment <b>APMT-16</b> has been booked ', 'READ', '2019-06-24 00:52:03', '2019-11-02 22:18:10'),
(37, 0, 'New appointment', 'A new appointment <b>APMT-17</b> has been booked ', 'UNREAD', '2019-06-24 00:53:31', '2019-06-24 00:53:31'),
(38, 0, 'New appointment', 'A new appointment <b>APMT-17</b> has been booked ', 'UNREAD', '2019-06-24 00:53:58', '2019-06-24 00:53:58'),
(39, 0, 'New appointment', 'A new appointment <b>APMT-17</b> has been booked ', 'UNREAD', '2019-06-24 00:57:36', '2019-06-24 00:57:36'),
(40, 0, 'New appointment', 'A new appointment <b>APMT-17</b> has been booked ', 'UNREAD', '2019-06-25 00:05:31', '2019-06-25 00:05:31'),
(41, 0, 'New appointment', 'A new appointment <b>APMT-17</b> has been booked ', 'UNREAD', '2019-06-25 00:06:37', '2019-06-25 00:06:37'),
(42, 23, 'New appointment', 'A new appointment <b>APMT-18</b> has been booked ', 'READ', '2019-06-25 00:10:29', '2019-11-02 22:18:10'),
(43, 23, 'New appointment', 'A new appointment <b>APMT-19</b> has been booked ', 'READ', '2019-06-26 00:13:22', '2019-11-02 22:18:10'),
(44, 23, 'New appointment', 'A new appointment <b>APMT-20</b> has been booked ', 'READ', '2019-06-26 00:21:32', '2019-11-02 22:18:10'),
(45, 25, 'New appointment', 'A new appointment <b>APMT-21</b> has been booked ', 'UNREAD', '2019-08-04 23:46:29', '2019-08-04 23:46:29'),
(46, 25, 'New appointment', 'A new appointment <b>APMT-22</b> has been booked ', 'UNREAD', '2019-08-11 20:20:52', '2019-08-11 20:20:52'),
(47, 25, 'New appointment', 'A new appointment <b>APMT-23</b> has been booked ', 'UNREAD', '2019-08-13 23:22:39', '2019-08-13 23:22:39'),
(48, 27, 'New appointment', 'A new appointment <b>APMT-24</b> has been booked ', 'UNREAD', '2019-08-15 14:56:55', '2019-08-15 14:56:55'),
(49, 27, 'New appointment', 'A new appointment <b>APMT-25</b> has been booked ', 'UNREAD', '2019-08-15 21:25:39', '2019-08-15 21:25:39'),
(50, 25, 'New appointment', 'A new appointment <b>APMT-26</b> has been booked ', 'UNREAD', '2019-08-15 21:34:12', '2019-08-15 21:34:12'),
(51, 27, 'New appointment', 'A new appointment <b>APMT-27</b> has been booked ', 'UNREAD', '2019-08-15 22:20:53', '2019-08-15 22:20:53'),
(52, 25, 'New appointment', 'A new appointment <b>APMT-28</b> has been booked ', 'UNREAD', '2019-08-23 23:44:09', '2019-08-23 23:44:09'),
(53, 17, 'Appointment updated', 'Appointment <b>APMT-14</b> has been approved.', 'READ', '2019-08-27 00:40:58', '2019-11-05 11:32:04'),
(54, 18, 'Appointment updated', 'Appointment <b>APMT-14</b> has been approved.', 'READ', '2019-08-27 00:40:58', '2021-03-14 20:55:47'),
(55, 17, 'Appointment updated', 'Appointment <b>APMT-14</b> has been visited.', 'READ', '2019-08-27 00:41:15', '2019-11-05 11:32:04'),
(56, 18, 'Appointment updated', 'Appointment <b>APMT-14</b> has been visited.', 'READ', '2019-08-27 00:41:15', '2021-03-14 20:55:47'),
(57, 17, 'Appointment updated', 'Appointment <b>APMT-13</b> has been approved.', 'READ', '2019-08-27 00:45:43', '2019-11-05 11:32:04'),
(58, 18, 'Appointment updated', 'Appointment <b>APMT-13</b> has been approved.', 'READ', '2019-08-27 00:45:43', '2021-03-14 20:55:47'),
(59, 17, 'Appointment updated', 'Appointment <b>APMT-13</b> has been visited.', 'READ', '2019-08-27 00:45:57', '2019-11-05 11:32:04'),
(60, 18, 'Appointment updated', 'Appointment <b>APMT-13</b> has been visited.', 'READ', '2019-08-27 00:45:57', '2021-03-14 20:55:47'),
(61, 17, 'Appointment updated', 'Appointment <b>APMT-10</b> has been approved.', 'READ', '2019-08-27 00:52:51', '2019-11-05 11:32:04'),
(62, 18, 'Appointment updated', 'Appointment <b>APMT-10</b> has been approved.', 'READ', '2019-08-27 00:52:51', '2021-03-14 20:55:47'),
(63, 17, 'Appointment updated', 'Appointment <b>APMT-10</b> has been visited.', 'READ', '2019-08-27 00:53:01', '2019-11-05 11:32:04'),
(64, 18, 'Appointment updated', 'Appointment <b>APMT-10</b> has been visited.', 'READ', '2019-08-27 00:53:01', '2021-03-14 20:55:47'),
(65, 17, 'Appointment updated', 'Appointment <b>APMT-2</b> has been approved.', 'READ', '2019-10-14 18:33:17', '2019-11-05 11:32:04'),
(66, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/hospital-app/receptionist/appointment/show/35\' > APMT-29</a > </b > has been booked', 'READ', '2019-10-29 22:00:29', '2021-03-14 20:52:27'),
(67, 17, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/hospital-app/appointment/show/3\' > APMT-2</a > </b > (Vivek) has been visited.', 'READ', '2019-10-30 21:23:20', '2019-11-05 11:32:04'),
(68, 38, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/hospital-app/receptionist/appointment/show/3\' > APMT-2</a > </b > (Vivek) has been visited.', 'READ', '2019-10-30 21:23:20', '2019-10-31 20:32:07'),
(69, NULL, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/hospital-app/appointment/show/35\' > APMT-29</a > </b > (sanjay patel) has been visited.', 'UNREAD', '2019-10-30 21:29:47', '2019-10-30 21:29:47'),
(70, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/hospital-app/receptionist/appointment/show/35\' > APMT-29</a > </b > (sanjay patel) has been visited.', 'READ', '2019-10-30 21:29:47', '2021-03-14 20:55:47'),
(71, 23, 'New appointment', 'A new appointment <b>APMT-30</b> has been booked ', 'READ', '2019-11-02 16:57:03', '2019-11-02 22:18:10'),
(72, 23, 'New appointment', 'A new appointment <b>APMT-30</b> has been booked ', 'READ', '2019-11-02 16:57:41', '2019-11-02 22:18:10'),
(73, 42, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/hospital-app/appointment/show/36\' > APMT-30</a > </b > (mrugesh modi) has been approved.', 'UNREAD', '2019-11-02 21:47:15', '2019-11-02 21:47:15'),
(74, 42, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/hospital-app/appointment/show/36\' > APMT-30</a > </b > (mrugesh modi) has been visited.', 'UNREAD', '2019-11-02 21:47:20', '2019-11-02 21:47:20'),
(75, 23, 'New appointment', 'A new appointment <b><a href=\'http://localhost/hospital-app/appointment/show/\' > APMT-31</a > </b > (sanjay patel) has been booked', 'READ', '2019-11-02 22:05:54', '2019-11-02 22:18:10'),
(76, 23, 'New appointment', 'A new appointment <b><a href=\'http://localhost/hospital-app/appointment/show/\' > APMT-31</a > </b > (sanjay patel) has been booked', 'READ', '2019-11-02 22:07:52', '2019-11-02 22:18:10'),
(77, 23, 'New appointment', 'A new appointment <b><a href=\'http://localhost/hospital-app/appointment/show/\' > APMT-32</a > </b > (hardik M. patel) has been booked', 'READ', '2019-11-02 22:09:35', '2019-11-02 22:18:10'),
(78, 23, 'New appointment', 'A new appointment <b><a href=\'http://localhost/hospital-app/appointment/show/\' > APMT-33</a > </b > (mrugesh modi) has been booked', 'READ', '2019-11-02 22:11:21', '2019-11-02 22:18:10'),
(79, 23, 'New appointment', 'A new appointment <b><a href=\'http://localhost/hospital-app/appointment/show/\' > APMT-33</a > </b > (mrugesh modi) has been booked', 'READ', '2019-11-02 22:11:45', '2019-11-02 22:18:10'),
(80, 23, 'New appointment', 'A new appointment <b><a href=\'http://localhost/hospital-app/appointment/show/\' > APMT-33</a > </b > (mrugesh modi) has been booked', 'READ', '2019-11-02 22:11:55', '2019-11-02 22:18:10'),
(81, 23, 'New appointment', 'A new appointment <b><a href=\'http://localhost/hospital-app/appointment/show/\' > APMT-33</a > </b > (mrugesh modi) has been booked', 'READ', '2019-11-02 22:12:14', '2019-11-02 22:18:10'),
(82, 23, 'New appointment', 'A new appointment <b><a href=\'http://localhost/hospital-app/appointment/show/\' > APMT-34</a > </b > (hardik M. patel) has been booked', 'READ', '2019-11-02 22:14:46', '2019-11-02 22:18:10'),
(83, 42, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/hospital-app/appointment/show/40\' > APMT-34</a > </b > (hardik M. patel) has been approved.', 'UNREAD', '2019-11-02 22:15:56', '2019-11-02 22:15:56'),
(84, 42, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/hospital-app/appointment/show/40\' > APMT-34</a > </b > (hardik M. patel) has been visited.', 'UNREAD', '2019-11-02 22:20:52', '2019-11-02 22:20:52'),
(85, 43, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/hospital-app/receptionist/appointment/show/40\' > APMT-34</a > </b > (hardik M. patel) has been visited.', 'UNREAD', '2019-11-02 22:20:52', '2019-11-02 22:20:52'),
(86, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/41\' > APMT-35</a > </b > (JOSHI ADITYA) has been booked', 'READ', '2019-11-03 18:02:36', '2020-09-13 12:08:11'),
(87, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/42\' > APMT-36</a > </b > (raj mehta) has been booked', 'READ', '2019-11-03 18:23:04', '2020-09-13 12:08:11'),
(88, 50, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/42\' > APMT-36</a > </b > (raj mehta) has been booked', 'READ', '2019-11-03 18:23:04', '2019-11-03 19:52:21'),
(89, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/43\' > APMT-37</a > </b > has been booked', 'READ', '2019-11-03 18:45:34', '2020-09-13 12:08:11'),
(90, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/43\' > APMT-37</a > </b > has been booked', 'READ', '2019-11-03 18:45:34', '2020-09-13 10:55:29'),
(91, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/43\' > APMT-37</a > </b > (Mihir) has been approved.', 'READ', '2019-11-03 18:46:07', '2020-09-13 12:08:11'),
(92, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/43\' > APMT-37</a > </b > (Mihir) has been approved.', 'READ', '2019-11-03 18:46:07', '2020-09-14 10:24:05'),
(93, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/43\' > APMT-37</a > </b > (Mihir) has been approved.', 'READ', '2019-11-03 18:46:07', '2019-12-18 11:42:15'),
(94, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/44\' > APMT-38</a > </b > (RAMESH BHAI) has been booked', 'READ', '2019-11-03 18:49:30', '2020-09-13 12:08:11'),
(95, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/45\' > APMT-39</a > </b > has been booked', 'READ', '2019-11-03 18:52:04', '2020-09-13 12:08:11'),
(96, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/45\' > APMT-39</a > </b > has been booked', 'READ', '2019-11-03 18:52:04', '2020-09-13 10:55:29'),
(97, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/45\' > APMT-39</a > </b > (Himal) has been approved.', 'READ', '2019-11-03 18:52:37', '2020-09-13 12:08:11'),
(98, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/45\' > APMT-39</a > </b > (Himal) has been approved.', 'READ', '2019-11-03 18:52:37', '2020-09-14 10:24:05'),
(99, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/45\' > APMT-39</a > </b > (Himal) has been approved.', 'READ', '2019-11-03 18:52:37', '2019-12-18 11:42:15'),
(100, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/41\' > APMT-35</a > </b > (JOSHI ADITYA) has been visited.', 'READ', '2019-11-03 19:01:38', '2020-09-13 12:08:11'),
(101, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/41\' > APMT-35</a > </b > (JOSHI ADITYA) has been visited.', 'UNREAD', '2019-11-03 19:01:38', '2019-11-03 19:01:38'),
(102, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/44\' > APMT-38</a > </b > (RAMESH BHAI) has been visited.', 'READ', '2019-11-03 19:01:40', '2020-09-13 12:08:11'),
(103, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/44\' > APMT-38</a > </b > (RAMESH BHAI) has been visited.', 'UNREAD', '2019-11-03 19:01:40', '2019-11-03 19:01:40'),
(104, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/42\' > APMT-36</a > </b > (raj mehta) has been visited.', 'READ', '2019-11-03 19:01:40', '2020-09-13 12:08:11'),
(105, 50, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/42\' > APMT-36</a > </b > (raj mehta) has been visited.', 'READ', '2019-11-03 19:01:40', '2019-11-03 19:52:21'),
(106, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/43\' > APMT-37</a > </b > (Mihir) has been visited.', 'READ', '2019-11-03 19:01:42', '2020-09-13 12:08:11'),
(107, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/43\' > APMT-37</a > </b > (Mihir) has been visited.', 'READ', '2019-11-03 19:01:42', '2020-09-14 10:24:05'),
(108, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/45\' > APMT-39</a > </b > (Himal) has been visited.', 'READ', '2019-11-03 19:04:34', '2020-09-13 12:08:11'),
(109, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/45\' > APMT-39</a > </b > (Himal) has been visited.', 'READ', '2019-11-03 19:04:34', '2020-09-14 10:24:05'),
(110, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/46\' > APMT-40</a > </b > has been booked', 'READ', '2019-11-03 19:20:38', '2020-09-13 12:08:11'),
(111, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/46\' > APMT-40</a > </b > has been booked', 'READ', '2019-11-03 19:20:38', '2020-09-13 10:55:29'),
(112, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/46\' > APMT-40</a > </b > (Neel) has been approved.', 'READ', '2019-11-03 19:21:10', '2020-09-13 12:08:11'),
(113, 50, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/46\' > APMT-40</a > </b > (Neel) has been approved.', 'READ', '2019-11-03 19:21:10', '2019-11-03 19:52:21'),
(114, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/46\' > APMT-40</a > </b > (Neel) has been approved.', 'READ', '2019-11-03 19:21:10', '2019-12-18 11:42:15'),
(115, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/47\' > APMT-41</a > </b > has been booked', 'READ', '2019-11-03 19:26:15', '2020-09-13 12:08:11'),
(116, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/47\' > APMT-41</a > </b > has been booked', 'READ', '2019-11-03 19:26:15', '2020-09-13 10:55:29'),
(117, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/47\' > APMT-41</a > </b > (Neel Joshi) has been approved.', 'READ', '2019-11-03 19:27:11', '2020-09-13 12:08:11'),
(118, 50, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/47\' > APMT-41</a > </b > (Neel Joshi) has been approved.', 'READ', '2019-11-03 19:27:11', '2019-11-03 19:52:21'),
(119, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/47\' > APMT-41</a > </b > (Neel Joshi) has been approved.', 'READ', '2019-11-03 19:27:11', '2019-12-18 11:42:15'),
(120, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/47\' > APMT-41</a > </b > (Neel Joshi) has been canceled.', 'READ', '2019-11-03 19:28:59', '2020-09-13 12:08:11'),
(121, 50, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/47\' > APMT-41</a > </b > (Neel Joshi) has been canceled.', 'READ', '2019-11-03 19:28:59', '2019-11-03 19:52:21'),
(122, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/46\' > APMT-40</a > </b > (Neel) has been canceled.', 'READ', '2019-11-03 19:29:16', '2020-09-13 12:08:11'),
(123, 50, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/46\' > APMT-40</a > </b > (Neel) has been canceled.', 'READ', '2019-11-03 19:29:16', '2019-11-03 19:52:21'),
(124, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/48\' > APMT-42</a > </b > has been booked', 'READ', '2019-11-03 19:34:12', '2020-09-13 12:08:11'),
(125, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/48\' > APMT-42</a > </b > has been booked', 'READ', '2019-11-03 19:34:12', '2020-09-13 10:55:29'),
(126, 50, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/48\' > APMT-42</a > </b > (Pin2) has been approved.', 'READ', '2019-11-03 19:34:34', '2019-11-03 19:52:21'),
(127, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/48\' > APMT-42</a > </b > (Pin2) has been approved.', 'READ', '2019-11-03 19:34:34', '2020-09-13 10:55:29'),
(128, 50, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/48\' > APMT-42</a > </b > (Pin2) has been visited.', 'READ', '2019-11-03 19:42:18', '2019-11-03 19:52:21'),
(129, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/48\' > APMT-42</a > </b > (Pin2) has been visited.', 'READ', '2019-11-03 19:42:18', '2020-09-13 10:55:29'),
(130, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/49\' > APMT-43</a > </b > has been booked', 'READ', '2019-11-03 19:48:03', '2020-09-13 12:08:11'),
(131, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/49\' > APMT-43</a > </b > has been booked', 'READ', '2019-11-03 19:48:03', '2020-09-13 10:55:29'),
(132, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/50\' > APMT-44</a > </b > has been booked', 'READ', '2019-11-03 19:50:16', '2020-09-13 12:08:11'),
(133, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/50\' > APMT-44</a > </b > has been booked', 'READ', '2019-11-03 19:50:16', '2020-09-13 10:55:29'),
(134, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/51\' > APMT-45</a > </b > (snehal vyas) has been booked', 'READ', '2019-11-03 20:06:28', '2019-11-03 20:22:48'),
(135, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/52\' > APMT-46</a > </b > (rony sharma) has been booked', 'READ', '2019-11-03 20:22:23', '2019-11-03 20:22:48'),
(136, 35, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/52\' > APMT-46</a > </b > (rony sharma) has been booked', 'UNREAD', '2019-11-03 20:22:23', '2019-11-03 20:22:23'),
(137, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/53\' > APMT-47</a > </b > (Alpesh Gupta) has been booked', 'UNREAD', '2019-11-03 22:04:03', '2019-11-03 22:04:03'),
(138, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/51\' > APMT-45</a > </b > (snehal vyas) has been visited.', 'UNREAD', '2019-11-03 23:20:16', '2019-11-03 23:20:16'),
(139, 38, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/51\' > APMT-45</a > </b > (snehal vyas) has been visited.', 'UNREAD', '2019-11-03 23:20:16', '2019-11-03 23:20:16'),
(140, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-48</a > </b > (RAMESH BHAI) has been booked', 'READ', '2019-11-03 23:20:51', '2019-11-07 14:19:18'),
(141, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/53\' > APMT-47</a > </b > (Alpesh Gupta) has been visited.', 'UNREAD', '2019-11-03 23:23:16', '2019-11-03 23:23:16'),
(142, 38, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/53\' > APMT-47</a > </b > (Alpesh Gupta) has been visited.', 'UNREAD', '2019-11-03 23:23:16', '2019-11-03 23:23:16'),
(143, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-49</a > </b > (RAMESH lal) has been booked', 'READ', '2019-11-04 00:09:22', '2019-11-07 14:19:18'),
(144, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/49\' > APMT-43</a > </b > (Neel) has been canceled by patient', 'READ', '2019-11-04 13:24:48', '2020-09-13 12:08:11'),
(145, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/49\' > APMT-43</a > </b > (Neel) has been canceled by patient', 'READ', '2019-11-04 13:24:48', '2020-09-13 10:55:29'),
(146, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/56\' > APMT-50</a > </b > has been booked', 'READ', '2019-11-04 13:27:57', '2020-09-13 12:08:11'),
(147, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/56\' > APMT-50</a > </b > has been booked', 'READ', '2019-11-04 13:27:57', '2020-09-13 10:55:29'),
(148, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/57\' > APMT-51</a > </b > has been booked', 'READ', '2019-11-05 09:25:30', '2019-11-07 14:19:18'),
(149, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/58\' > APMT-52</a > </b > has been booked', 'READ', '2019-11-05 09:29:26', '2019-11-07 14:19:18'),
(150, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/59\' > APMT-53</a > </b > has been booked', 'READ', '2019-11-05 09:31:12', '2019-11-07 14:19:18'),
(151, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/60\' > APMT-54</a > </b > has been booked', 'READ', '2019-11-05 09:32:17', '2019-11-07 14:19:18'),
(152, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/61\' > APMT-55</a > </b > has been booked', 'READ', '2019-11-05 09:33:20', '2019-11-07 14:19:18'),
(153, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/62\' > APMT-56</a > </b > has been booked', 'READ', '2019-11-05 09:34:55', '2019-11-07 14:19:18'),
(154, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-57</a > </b > (offlineetest) has been booked', 'READ', '2019-11-05 11:10:32', '2019-11-07 14:19:18'),
(155, 53, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/59\' > APMT-53</a > </b > (ena) has been canceled by patient', 'READ', '2019-11-05 11:41:05', '2019-11-07 14:19:18'),
(156, 53, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/60\' > APMT-54</a > </b > (RAMESH BHAI) has been canceled by patient', 'READ', '2019-11-05 11:41:18', '2019-11-07 14:19:18'),
(157, 53, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/61\' > APMT-55</a > </b > (rahul varma) has been canceled by patient', 'READ', '2019-11-05 11:41:27', '2019-11-07 14:19:18'),
(158, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/64\' > APMT-58</a > </b > has been booked', 'READ', '2019-11-05 11:45:48', '2019-11-07 14:19:18'),
(159, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/65\' > APMT-59</a > </b > has been booked', 'READ', '2019-11-05 11:48:04', '2019-11-07 14:19:18'),
(160, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-60</a > </b > (third) has been booked', 'READ', '2019-11-05 11:50:47', '2019-11-07 14:19:18'),
(161, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-61</a > </b > (forth) has been booked', 'READ', '2019-11-05 11:52:18', '2019-11-07 14:19:18'),
(162, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-62</a > </b > (five) has been booked', 'READ', '2019-11-05 12:19:36', '2019-11-07 14:19:18'),
(163, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/69\' > APMT-63</a > </b > has been booked', 'READ', '2019-11-05 12:24:46', '2019-11-07 14:19:18'),
(164, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/70\' > APMT-64</a > </b > has been booked', 'READ', '2019-11-05 12:25:53', '2019-11-07 14:19:18'),
(165, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/50\' > APMT-44</a > </b > (Ankit) has been canceled by patient', 'READ', '2019-11-05 12:26:07', '2020-09-13 12:08:11'),
(166, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/50\' > APMT-44</a > </b > (Ankit) has been canceled by patient', 'READ', '2019-11-05 12:26:07', '2020-09-13 10:55:29'),
(167, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/56\' > APMT-50</a > </b > (Neel) has been canceled by patient', 'READ', '2019-11-05 12:26:17', '2020-09-13 12:08:11'),
(168, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/56\' > APMT-50</a > </b > (Neel) has been canceled by patient', 'READ', '2019-11-05 12:26:17', '2020-09-13 10:55:29'),
(169, 54, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/71\' > APMT-65</a > </b > has been booked', 'READ', '2019-11-05 12:33:08', '2020-06-24 10:31:40'),
(170, 54, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/72\' > APMT-66</a > </b > has been booked', 'READ', '2019-11-05 12:34:13', '2020-06-24 10:31:40'),
(171, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/64\' > APMT-58</a > </b > (first) has been visited.', 'READ', '2019-11-05 12:37:26', '2020-09-14 10:24:05'),
(172, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/65\' > APMT-59</a > </b > (second) has been visited.', 'READ', '2019-11-05 12:37:51', '2020-09-14 10:24:05'),
(173, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/67\' > APMT-61</a > </b > (forth) has been visited.', 'READ', '2019-11-05 12:38:06', '2020-09-14 10:24:05'),
(174, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/68\' > APMT-62</a > </b > (five) has been visited.', 'READ', '2019-11-05 12:38:07', '2020-09-14 10:24:05'),
(175, 50, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/69\' > APMT-63</a > </b > (sixth) has been visited.', 'UNREAD', '2019-11-05 12:38:08', '2019-11-05 12:38:08'),
(176, 50, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/70\' > APMT-64</a > </b > (seventh) has been visited.', 'UNREAD', '2019-11-05 12:38:09', '2019-11-05 12:38:09'),
(177, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/66\' > APMT-60</a > </b > (third) has been visited.', 'UNREAD', '2019-11-05 12:38:27', '2019-11-05 12:38:27'),
(178, 50, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/71\' > APMT-65</a > </b > (first) has been visited.', 'UNREAD', '2019-11-05 13:19:53', '2019-11-05 13:19:53'),
(179, 50, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/72\' > APMT-66</a > </b > (second) has been visited.', 'UNREAD', '2019-11-05 13:20:05', '2019-11-05 13:20:05'),
(180, 50, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/72\' > APMT-66</a > </b > (second) has been visited.', 'UNREAD', '2019-11-05 13:20:07', '2019-11-05 13:20:07'),
(181, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/73\' > APMT-67</a > </b > has been booked', 'READ', '2019-11-05 17:16:25', '2020-09-13 12:08:11'),
(182, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/73\' > APMT-67</a > </b > has been booked', 'READ', '2019-11-05 17:16:25', '2020-09-13 10:55:29'),
(183, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/73\' > APMT-67</a > </b > (smit) has been approved.', 'READ', '2019-11-05 17:17:09', '2020-09-14 10:24:05'),
(184, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/73\' > APMT-67</a > </b > (smit) has been approved.', 'READ', '2019-11-05 17:17:09', '2020-09-13 10:55:29'),
(185, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/73\' > APMT-67</a > </b > (smit) has been visited.', 'READ', '2019-11-05 17:33:40', '2020-09-14 10:24:05'),
(186, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/73\' > APMT-67</a > </b > (smit) has been visited.', 'READ', '2019-11-05 17:33:40', '2020-09-13 10:55:29'),
(187, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/74\' > APMT-68</a > </b > has been booked', 'READ', '2019-11-05 17:40:19', '2019-11-07 14:19:18'),
(188, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/74\' > APMT-68</a > </b > (PALAK) has been visited.', 'READ', '2019-11-05 18:32:56', '2020-09-14 10:24:05'),
(189, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/75\' > APMT-69</a > </b > has been booked', 'READ', '2019-11-05 18:38:46', '2019-11-07 14:19:18'),
(190, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/75\' > APMT-69</a > </b > (kalpna) has been approved.', 'READ', '2019-11-05 18:40:09', '2020-09-14 10:24:05'),
(191, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/75\' > APMT-69</a > </b > (kalpna) has been visited.', 'READ', '2019-11-05 18:49:26', '2020-09-14 10:24:05'),
(192, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/76\' > APMT-70</a > </b > has been booked', 'READ', '2019-11-06 14:22:46', '2020-09-13 12:08:11'),
(193, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/76\' > APMT-70</a > </b > has been booked', 'READ', '2019-11-06 14:22:46', '2020-09-13 10:55:29'),
(194, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/76\' > APMT-70</a > </b > (shahid_pateint1) has been approved.', 'READ', '2019-11-06 14:22:56', '2020-09-14 10:24:05'),
(195, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/76\' > APMT-70</a > </b > (shahid_pateint1) has been approved.', 'READ', '2019-11-06 14:22:56', '2020-09-13 10:55:29'),
(196, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/77\' > APMT-71</a > </b > has been booked', 'READ', '2019-11-07 11:56:06', '2020-09-13 12:08:11'),
(197, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/77\' > APMT-71</a > </b > has been booked', 'READ', '2019-11-07 11:56:06', '2020-09-13 10:55:29'),
(198, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/77\' > APMT-71</a > </b > (hjjj) has been approved.', 'READ', '2019-11-07 11:57:52', '2020-09-14 10:24:05'),
(199, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/77\' > APMT-71</a > </b > (hjjj) has been approved.', 'READ', '2019-11-07 11:57:52', '2020-09-13 10:55:29'),
(200, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/77\' > APMT-71</a > </b > (hjjj) has been approved.', 'READ', '2019-11-07 12:04:45', '2020-09-14 10:24:05'),
(201, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/77\' > APMT-71</a > </b > (hjjj) has been approved.', 'READ', '2019-11-07 12:04:45', '2020-09-13 10:55:29'),
(202, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/78\' > APMT-72</a > </b > has been booked', 'READ', '2019-11-07 14:08:16', '2020-09-13 12:08:11'),
(203, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/78\' > APMT-72</a > </b > has been booked', 'READ', '2019-11-07 14:08:16', '2020-09-13 10:55:29'),
(204, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/79\' > APMT-73</a > </b > has been booked', 'READ', '2019-11-07 14:17:04', '2019-11-07 14:19:18'),
(205, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/79\' > APMT-73</a > </b > (ashish) has been approved.', 'READ', '2019-11-07 14:18:23', '2020-09-14 10:24:05'),
(206, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/80\' > APMT-74</a > </b > has been booked', 'UNREAD', '2019-11-07 14:20:56', '2019-11-07 14:20:56'),
(207, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/81\' > APMT-75</a > </b > has been booked', 'UNREAD', '2019-11-07 14:23:41', '2019-11-07 14:23:41'),
(208, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/79\' > APMT-73</a > </b > (ashish) has been visited.', 'READ', '2019-11-07 14:54:11', '2020-09-14 10:24:05'),
(209, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/81\' > APMT-75</a > </b > (himal) has been visited.', 'READ', '2019-11-07 15:01:54', '2020-09-14 10:24:05'),
(210, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/78\' > APMT-72</a > </b > (ashish) has been approved.', 'READ', '2019-11-07 16:35:59', '2020-09-14 10:24:05'),
(211, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/78\' > APMT-72</a > </b > (ashish) has been approved.', 'READ', '2019-11-07 16:35:59', '2020-09-13 10:55:29'),
(212, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/76\' > APMT-70</a > </b > (shahid_pateint1) has been visited.', 'READ', '2019-11-07 16:36:22', '2020-09-14 10:24:05'),
(213, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/76\' > APMT-70</a > </b > (shahid_pateint1) has been visited.', 'READ', '2019-11-07 16:36:22', '2020-09-13 10:55:29'),
(214, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/82\' > APMT-76</a > </b > (Fatem) has been booked', 'READ', '2019-11-17 11:54:18', '2019-12-19 13:10:43'),
(215, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/83\' > APMT-77</a > </b > (Shahid) has been booked', 'READ', '2019-11-17 11:57:41', '2019-12-19 13:10:43'),
(216, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/82\' > APMT-76</a > </b > (Fatem) has been approved.', 'READ', '2019-11-17 12:01:04', '2019-11-29 15:53:31'),
(217, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/82\' > APMT-76</a > </b > (Fatem) has been visited.', 'READ', '2019-11-17 12:02:58', '2019-11-29 15:53:31'),
(218, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/83\' > APMT-77</a > </b > (Shahid) has been approved.', 'READ', '2019-11-17 12:03:31', '2019-11-29 15:53:31'),
(219, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/84\' > APMT-78</a > </b > (Munir) has been booked', 'READ', '2019-11-17 12:05:06', '2019-12-19 13:10:43'),
(220, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/84\' > APMT-78</a > </b > (Munir) has been approved.', 'READ', '2019-11-17 12:07:32', '2019-11-29 15:53:31'),
(221, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/85\' > APMT-79</a > </b > (jayeda) has been booked', 'READ', '2019-11-17 12:15:34', '2019-12-19 13:10:43'),
(222, 59, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/85\' > APMT-79</a > </b > (jayeda) has been booked', 'UNREAD', '2019-11-17 12:15:34', '2019-11-17 12:15:34'),
(223, 36, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/83\' > APMT-77</a > </b > (Shahid) has been visited.', 'READ', '2019-11-17 12:17:40', '2019-12-19 13:10:43'),
(224, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/83\' > APMT-77</a > </b > (Shahid) has been visited.', 'READ', '2019-11-17 12:17:40', '2019-11-29 15:53:31'),
(225, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/84\' > APMT-78</a > </b > (Munir) has been visited.', 'READ', '2019-11-17 12:28:32', '2019-11-29 15:53:31'),
(226, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/84\' > APMT-78</a > </b > (Munir) has been visited.', 'UNREAD', '2019-11-17 12:28:32', '2019-11-17 12:28:32'),
(227, 59, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/85\' > APMT-79</a > </b > (jayeda) has been visited.', 'UNREAD', '2019-11-17 12:30:30', '2019-11-17 12:30:30'),
(228, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/85\' > APMT-79</a > </b > (jayeda) has been visited.', 'UNREAD', '2019-11-17 12:30:30', '2019-11-17 12:30:30'),
(229, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/86\' > APMT-80</a > </b > (RAMESH BHAI) has been booked', 'READ', '2019-11-18 19:47:19', '2020-09-13 12:08:11'),
(230, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/87\' > APMT-81</a > </b > (viar) has been booked', 'READ', '2019-11-18 19:48:14', '2020-09-13 12:08:11'),
(231, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/88\' > APMT-82</a > </b > (RAJESH PANDYAA) has been booked', 'READ', '2019-11-18 19:50:20', '2020-09-13 12:08:11'),
(232, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/88\' > APMT-82</a > </b > (RAJESH PANDYAA) has been booked', 'READ', '2019-11-18 19:50:20', '2020-09-13 10:55:29'),
(233, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/88\' > APMT-82</a > </b > (RAJESH PANDYAA) has been approved.', 'READ', '2019-11-18 19:51:23', '2020-09-13 12:08:11'),
(234, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/88\' > APMT-82</a > </b > (RAJESH PANDYAA) has been approved.', 'READ', '2019-11-18 19:51:23', '2020-09-14 10:24:05'),
(235, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/88\' > APMT-82</a > </b > (RAJESH PANDYAA) has been approved.', 'READ', '2019-11-18 19:51:23', '2019-12-18 11:42:15'),
(236, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/89\' > APMT-83</a > </b > (shahida) has been booked', 'READ', '2019-11-18 22:08:21', '2019-12-19 13:10:43'),
(237, 60, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/89\' > APMT-83</a > </b > (shahida) has been booked', 'UNREAD', '2019-11-18 22:08:21', '2019-11-18 22:08:21'),
(238, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/90\' > APMT-84</a > </b > (jishan) has been booked', 'READ', '2019-11-18 22:11:11', '2019-12-19 13:10:43'),
(239, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/91\' > APMT-85</a > </b > (jishan) has been booked', 'READ', '2019-11-18 22:12:47', '2019-12-19 13:10:43'),
(240, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/92\' > APMT-86</a > </b > (ramesh bhai) has been booked', 'READ', '2019-11-18 22:38:47', '2020-09-13 12:08:11'),
(241, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/93\' > APMT-87</a > </b > (rahul bhai) has been booked', 'READ', '2019-11-18 22:40:49', '2020-09-13 12:08:11'),
(242, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/94\' > APMT-88</a > </b > (third) has been booked', 'READ', '2019-11-18 22:43:18', '2020-09-13 12:08:11'),
(243, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/94\' > APMT-88</a > </b > (third) has been booked', 'READ', '2019-11-18 22:43:18', '2020-09-13 10:55:29'),
(244, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/94\' > APMT-88</a > </b > (third) has been approved.', 'READ', '2019-11-18 22:44:32', '2020-09-13 12:08:11'),
(245, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/94\' > APMT-88</a > </b > (third) has been approved.', 'READ', '2019-11-18 22:44:32', '2020-09-14 10:24:05'),
(246, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/94\' > APMT-88</a > </b > (third) has been approved.', 'READ', '2019-11-18 22:44:32', '2019-12-18 11:42:15'),
(247, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/95\' > APMT-89</a > </b > (sabir) has been booked', 'READ', '2019-11-18 22:49:06', '2019-12-19 13:10:43'),
(248, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/95\' > APMT-89</a > </b > (sabir) has been booked', 'UNREAD', '2019-11-18 22:49:06', '2019-11-18 22:49:06'),
(249, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/96\' > APMT-90</a > </b > (shahid1) has been booked', 'READ', '2019-11-18 22:52:50', '2019-12-19 13:10:43'),
(250, 36, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/95\' > APMT-89</a > </b > (sabir) has been approved.', 'READ', '2019-11-18 22:53:06', '2019-12-19 13:10:43'),
(251, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/95\' > APMT-89</a > </b > (sabir) has been approved.', 'READ', '2019-11-18 22:53:06', '2019-11-29 15:53:31'),
(252, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/97\' > APMT-91</a > </b > (testnewfine) has been booked', 'READ', '2019-11-18 22:55:36', '2019-12-19 13:10:43'),
(253, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/77\' > APMT-71</a > </b > (hjjj) has been visited.', 'READ', '2019-11-19 10:16:36', '2020-09-14 10:24:05'),
(254, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/77\' > APMT-71</a > </b > (hjjj) has been visited.', 'READ', '2019-11-19 10:16:36', '2020-09-13 10:55:29'),
(255, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/98\' > APMT-92</a > </b > (harsh m varma) has been booked', 'READ', '2019-11-19 10:51:15', '2021-03-14 20:52:27'),
(256, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/99\' > APMT-93</a > </b > (mehul prajapati) has been booked', 'READ', '2019-11-19 10:52:34', '2021-03-14 20:52:27'),
(257, 62, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/99\' > APMT-93</a > </b > (mehul prajapati) has been booked', 'UNREAD', '2019-11-19 10:52:34', '2019-11-19 10:52:34'),
(258, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/100\' > APMT-94</a > </b > (raju m soni) has been booked', 'READ', '2019-11-19 10:53:23', '2021-03-14 20:52:27'),
(259, 17, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/100\' > APMT-94</a > </b > (raju m soni) has been booked', 'UNREAD', '2019-11-19 10:53:23', '2019-11-19 10:53:23'),
(260, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/101\' > APMT-95</a > </b > (sabir khan) has been booked', 'READ', '2019-11-19 11:24:53', '2021-03-14 20:52:27');
INSERT INTO `notifications` (`id`, `user_id`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(261, 57, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/101\' > APMT-95</a > </b > (sabir khan) has been booked', 'READ', '2019-11-19 11:24:53', '2019-11-29 15:53:31'),
(262, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/102\' > APMT-96</a > </b > (Jishan) has been booked', 'READ', '2019-11-19 12:25:13', '2019-12-19 13:10:43'),
(263, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/102\' > APMT-96</a > </b > (Jishan) has been booked', 'UNREAD', '2019-11-19 12:25:13', '2019-11-19 12:25:13'),
(264, 36, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/102\' > APMT-96</a > </b > (Jishan) has been approved.', 'READ', '2019-11-19 12:25:56', '2019-12-19 13:10:43'),
(265, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/102\' > APMT-96</a > </b > (Jishan) has been approved.', 'READ', '2019-11-19 12:25:56', '2019-11-29 15:53:31'),
(266, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/103\' > APMT-97</a > </b > (samira) has been booked', 'READ', '2019-11-19 12:28:49', '2019-12-19 13:10:43'),
(267, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/104\' > APMT-98</a > </b > (smir3) has been booked', 'READ', '2019-11-19 12:30:47', '2019-12-19 13:10:43'),
(268, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/105\' > APMT-99</a > </b > (new5) has been booked', 'READ', '2019-11-19 12:32:14', '2019-12-19 13:10:43'),
(269, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/106\' > APMT-100</a > </b > (newtest7) has been booked', 'READ', '2019-11-19 12:33:22', '2019-12-19 13:10:43'),
(270, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/107\' > APMT-101</a > </b > (newtest) has been booked', 'READ', '2019-11-19 12:39:31', '2019-12-19 13:10:43'),
(271, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/107\' > APMT-101</a > </b > (newtest) has been booked', 'UNREAD', '2019-11-19 12:39:31', '2019-11-19 12:39:31'),
(272, 36, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/107\' > APMT-101</a > </b > (newtest) has been approved.', 'READ', '2019-11-19 12:40:18', '2019-12-19 13:10:43'),
(273, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/107\' > APMT-101</a > </b > (newtest) has been approved.', 'READ', '2019-11-19 12:40:18', '2019-11-29 15:53:31'),
(274, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/108\' > APMT-102</a > </b > (new for test) has been booked', 'READ', '2019-11-19 12:42:47', '2019-12-19 13:10:43'),
(275, 63, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/108\' > APMT-102</a > </b > (new for test) has been booked', 'UNREAD', '2019-11-19 12:42:47', '2019-11-19 12:42:47'),
(276, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/109\' > APMT-103</a > </b > (mytest12) has been booked', 'READ', '2019-11-19 12:44:56', '2019-12-19 13:10:43'),
(277, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/110\' > APMT-104</a > </b > (newtwst21) has been booked', 'READ', '2019-11-19 12:50:00', '2019-12-19 13:10:43'),
(278, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/111\' > APMT-105</a > </b > (reg 1) has been booked', 'READ', '2019-11-19 12:53:07', '2019-12-19 13:10:43'),
(279, 64, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/111\' > APMT-105</a > </b > (reg 1) has been booked', 'UNREAD', '2019-11-19 12:53:07', '2019-11-19 12:53:07'),
(280, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/112\' > APMT-106</a > </b > (newtest34) has been booked', 'READ', '2019-11-19 12:55:36', '2019-12-19 13:10:43'),
(281, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/113\' > APMT-107</a > </b > (new user) has been booked', 'READ', '2019-11-19 13:07:43', '2019-12-19 13:10:43'),
(282, 65, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/113\' > APMT-107</a > </b > (new user) has been booked', 'UNREAD', '2019-11-19 13:07:43', '2019-11-19 13:07:43'),
(283, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/114\' > APMT-108</a > </b > (123456) has been booked', 'READ', '2019-11-19 13:18:50', '2019-12-19 13:10:43'),
(284, 66, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/114\' > APMT-108</a > </b > (123456) has been booked', 'UNREAD', '2019-11-19 13:18:50', '2019-11-19 13:18:50'),
(285, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/115\' > APMT-109</a > </b > (mmmmmmm) has been booked', 'READ', '2019-11-19 13:27:52', '2019-12-19 13:10:43'),
(286, 67, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/115\' > APMT-109</a > </b > (mmmmmmm) has been booked', 'UNREAD', '2019-11-19 13:27:52', '2019-11-19 13:27:52'),
(287, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/116\' > APMT-110</a > </b > (testlivewithsnehal) has been booked', 'READ', '2019-11-19 16:48:01', '2019-12-19 13:10:43'),
(288, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/116\' > APMT-110</a > </b > (testlivewithsnehal) has been booked', 'UNREAD', '2019-11-19 16:48:01', '2019-11-19 16:48:01'),
(289, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/117\' > APMT-111</a > </b > (hello7) has been booked', 'READ', '2019-11-19 16:59:49', '2019-12-19 13:10:43'),
(290, 68, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/117\' > APMT-111</a > </b > (hello7) has been booked', 'UNREAD', '2019-11-19 16:59:49', '2019-11-19 16:59:49'),
(291, 36, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/116\' > APMT-110</a > </b > (testlivewithsnehal) has been approved.', 'READ', '2019-11-19 17:00:30', '2019-12-19 13:10:43'),
(292, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/116\' > APMT-110</a > </b > (testlivewithsnehal) has been approved.', 'READ', '2019-11-19 17:00:30', '2019-11-29 15:53:31'),
(293, 19, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/52\' > APMT-46</a > </b > (rony sharma) prescription has been created.', 'UNREAD', '2019-11-19 18:29:06', '2019-11-19 18:29:06'),
(294, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/118\' > APMT-112</a > </b > (mit parekh) has been booked', 'READ', '2019-11-21 22:50:47', '2020-09-13 12:08:11'),
(295, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/118\' > APMT-112</a > </b > (mit parekh) has been booked', 'READ', '2019-11-21 22:50:47', '2020-09-13 10:55:29'),
(296, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/118\' > APMT-112</a > </b > (mit parekh) has been approved.', 'READ', '2019-11-21 22:55:29', '2020-09-14 10:24:05'),
(297, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/118\' > APMT-112</a > </b > (mit parekh) has been approved.', 'READ', '2019-11-21 22:55:29', '2020-09-13 10:55:29'),
(298, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/78\' > APMT-72</a > </b > (ashish) has been visited.', 'READ', '2019-11-21 22:57:28', '2020-09-14 10:24:05'),
(299, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/78\' > APMT-72</a > </b > (ashish) has been visited.', 'READ', '2019-11-21 22:57:28', '2020-09-13 10:55:29'),
(300, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/88\' > APMT-82</a > </b > (RAJESH PANDYAA) has been visited.', 'READ', '2019-11-21 22:57:41', '2020-09-14 10:24:05'),
(301, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/88\' > APMT-82</a > </b > (RAJESH PANDYAA) has been visited.', 'READ', '2019-11-21 22:57:41', '2020-09-13 10:55:29'),
(302, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/86\' > APMT-80</a > </b > (RAMESH BHAI) has been visited.', 'UNREAD', '2019-11-21 22:57:53', '2019-11-21 22:57:53'),
(303, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/86\' > APMT-80</a > </b > (RAMESH BHAI) has been visited.', 'READ', '2019-11-21 22:57:53', '2020-09-13 10:55:29'),
(304, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/87\' > APMT-81</a > </b > (viar) has been visited.', 'UNREAD', '2019-11-21 22:57:55', '2019-11-21 22:57:55'),
(305, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/87\' > APMT-81</a > </b > (viar) has been visited.', 'READ', '2019-11-21 22:57:55', '2020-09-13 10:55:29'),
(306, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/94\' > APMT-88</a > </b > (third) has been visited.', 'READ', '2019-11-21 22:57:57', '2020-09-14 10:24:05'),
(307, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/94\' > APMT-88</a > </b > (third) has been visited.', 'READ', '2019-11-21 22:57:57', '2020-09-13 10:55:29'),
(308, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/93\' > APMT-87</a > </b > (rahul bhai) has been visited.', 'UNREAD', '2019-11-21 22:57:58', '2019-11-21 22:57:58'),
(309, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/93\' > APMT-87</a > </b > (rahul bhai) has been visited.', 'READ', '2019-11-21 22:57:58', '2020-09-13 10:55:29'),
(310, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/92\' > APMT-86</a > </b > (ramesh bhai) has been visited.', 'UNREAD', '2019-11-21 22:57:59', '2019-11-21 22:57:59'),
(311, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/92\' > APMT-86</a > </b > (ramesh bhai) has been visited.', 'READ', '2019-11-21 22:57:59', '2020-09-13 10:55:29'),
(312, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/118\' > APMT-112</a > </b > (mit parekh) has been visited.', 'READ', '2019-11-21 23:03:29', '2020-09-14 10:24:05'),
(313, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/118\' > APMT-112</a > </b > (mit parekh) has been visited.', 'READ', '2019-11-21 23:03:29', '2020-09-13 10:55:29'),
(314, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/119\' > APMT-113</a > </b > (RAMESH BHAI) has been booked', 'READ', '2019-11-22 23:33:29', '2020-09-13 12:08:11'),
(315, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/120\' > APMT-114</a > </b > (ram) has been booked', 'READ', '2019-11-22 23:35:22', '2020-09-13 12:08:11'),
(316, 72, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/120\' > APMT-114</a > </b > (ram) has been booked', 'UNREAD', '2019-11-22 23:35:22', '2019-11-22 23:35:22'),
(317, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/121\' > APMT-115</a > </b > (saj) has been booked', 'READ', '2019-11-22 23:36:21', '2020-09-13 12:08:11'),
(318, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/121\' > APMT-115</a > </b > (saj) has been booked', 'READ', '2019-11-22 23:36:21', '2020-09-13 10:55:29'),
(319, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/121\' > APMT-115</a > </b > (saj) has been approved.', 'READ', '2019-11-22 23:37:10', '2020-09-13 12:08:11'),
(320, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/121\' > APMT-115</a > </b > (saj) has been approved.', 'READ', '2019-11-22 23:37:10', '2020-09-14 10:24:05'),
(321, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/121\' > APMT-115</a > </b > (saj) has been approved.', 'READ', '2019-11-22 23:37:10', '2019-12-18 11:42:15'),
(322, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/119\' > APMT-113</a > </b > (RAMESH BHAI) has been canceled.', 'READ', '2019-11-22 23:38:18', '2020-09-13 12:08:11'),
(323, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/119\' > APMT-113</a > </b > (RAMESH BHAI) has been canceled.', 'UNREAD', '2019-11-22 23:38:18', '2019-11-22 23:38:18'),
(324, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/122\' > APMT-116</a > </b > (wddw) has been booked', 'READ', '2019-11-22 23:40:13', '2020-09-13 12:08:11'),
(325, 73, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/122\' > APMT-116</a > </b > (wddw) has been booked', 'UNREAD', '2019-11-22 23:40:13', '2019-11-22 23:40:13'),
(326, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/120\' > APMT-114</a > </b > (ram) has been visited.', 'READ', '2019-11-22 23:40:53', '2020-09-13 12:08:11'),
(327, 72, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/120\' > APMT-114</a > </b > (ram) has been visited.', 'UNREAD', '2019-11-22 23:40:53', '2019-11-22 23:40:53'),
(328, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/121\' > APMT-115</a > </b > (saj) has been visited.', 'READ', '2019-11-22 23:41:17', '2020-09-13 12:08:11'),
(329, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/121\' > APMT-115</a > </b > (saj) has been visited.', 'READ', '2019-11-22 23:41:17', '2020-09-14 10:24:05'),
(330, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/122\' > APMT-116</a > </b > (wddw) has been visited.', 'READ', '2019-11-22 23:41:43', '2020-09-13 12:08:11'),
(331, 73, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/122\' > APMT-116</a > </b > (wddw) has been visited.', 'UNREAD', '2019-11-22 23:41:43', '2019-11-22 23:41:43'),
(332, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/123\' > APMT-117</a > </b > (shahid_notone) has been booked', 'READ', '2019-11-23 10:56:34', '2019-12-19 13:10:43'),
(333, 57, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/123\' > APMT-117</a > </b > (shahid_notone) has been booked', 'READ', '2019-11-23 10:56:34', '2019-11-29 15:53:31'),
(334, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/124\' > APMT-118</a > </b > (shahid_Problem) has been booked', 'READ', '2019-11-23 11:02:47', '2019-12-19 13:10:43'),
(335, 57, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/124\' > APMT-118</a > </b > (shahid_Problem) has been booked', 'READ', '2019-11-23 11:02:47', '2019-11-29 15:53:31'),
(336, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/123\' > APMT-117</a > </b > (shahid_notone) has been visited.', 'READ', '2019-11-23 11:08:20', '2019-11-29 15:53:31'),
(337, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/123\' > APMT-117</a > </b > (shahid_notone) has been visited.', 'UNREAD', '2019-11-23 11:08:20', '2019-11-23 11:08:20'),
(338, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/124\' > APMT-118</a > </b > (shahid_Problem) has been visited.', 'READ', '2019-11-23 11:12:36', '2019-11-29 15:53:31'),
(339, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/124\' > APMT-118</a > </b > (shahid_Problem) has been visited.', 'UNREAD', '2019-11-23 11:12:36', '2019-11-23 11:12:36'),
(340, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/125\' > APMT-119</a > </b > (by shahid) has been booked', 'READ', '2019-11-23 11:41:43', '2020-09-13 12:08:11'),
(341, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/125\' > APMT-119</a > </b > (by shahid) has been booked', 'READ', '2019-11-23 11:41:43', '2020-09-13 10:55:29'),
(342, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/125\' > APMT-119</a > </b > (by shahid) has been approved.', 'READ', '2019-11-23 11:41:57', '2020-09-14 10:24:05'),
(343, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/125\' > APMT-119</a > </b > (by shahid) has been approved.', 'READ', '2019-11-23 11:41:57', '2020-09-13 10:55:29'),
(344, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/125\' > APMT-119</a > </b > (by shahid) has been visited.', 'READ', '2019-11-23 11:45:32', '2020-09-14 10:24:05'),
(345, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/125\' > APMT-119</a > </b > (by shahid) has been visited.', 'READ', '2019-11-23 11:45:32', '2020-09-13 10:55:29'),
(346, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/126\' > APMT-120</a > </b > (sbbairbhaii) has been booked', 'READ', '2019-11-23 12:07:34', '2020-09-13 12:08:11'),
(347, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/126\' > APMT-120</a > </b > (sbbairbhaii) has been booked', 'READ', '2019-11-23 12:07:34', '2020-09-13 10:55:29'),
(348, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/126\' > APMT-120</a > </b > (sbbairbhaii) has been approved.', 'READ', '2019-11-23 12:09:15', '2019-11-29 15:53:31'),
(349, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/126\' > APMT-120</a > </b > (sbbairbhaii) has been approved.', 'READ', '2019-11-23 12:09:15', '2020-09-13 10:55:29'),
(350, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/126\' > APMT-120</a > </b > (sbbairbhaii) has been visited.', 'READ', '2019-11-23 12:10:20', '2019-11-29 15:53:31'),
(351, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/126\' > APMT-120</a > </b > (sbbairbhaii) has been visited.', 'READ', '2019-11-23 12:10:20', '2020-09-13 10:55:29'),
(352, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/127\' > APMT-121</a > </b > (Shahid Testnew) has been booked', 'READ', '2019-11-23 12:19:32', '2020-09-13 12:08:11'),
(353, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/127\' > APMT-121</a > </b > (Shahid Testnew) has been booked', 'READ', '2019-11-23 12:19:32', '2020-09-13 10:55:29'),
(354, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/127\' > APMT-121</a > </b > (Shahid Testnew) has been canceled by patient', 'READ', '2019-11-23 12:20:54', '2020-09-13 12:08:11'),
(355, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/127\' > APMT-121</a > </b > (Shahid Testnew) has been canceled by patient', 'READ', '2019-11-23 12:20:54', '2020-09-13 10:55:29'),
(356, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/128\' > APMT-122</a > </b > (mahesh) has been booked', 'READ', '2019-11-26 13:48:15', '2019-12-19 13:10:43'),
(357, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/128\' > APMT-122</a > </b > (mahesh) has been booked', 'UNREAD', '2019-11-26 13:48:15', '2019-11-26 13:48:15'),
(358, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/129\' > APMT-123</a > </b > (Name2) has been booked', 'READ', '2019-11-26 13:51:39', '2019-12-19 13:10:43'),
(359, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/129\' > APMT-123</a > </b > (Name2) has been booked', 'UNREAD', '2019-11-26 13:51:39', '2019-11-26 13:51:39'),
(360, 74, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/128\' > APMT-122</a > </b > (mahesh) has been approved.', 'UNREAD', '2019-11-26 13:52:56', '2019-11-26 13:52:56'),
(361, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/128\' > APMT-122</a > </b > (mahesh) has been approved.', 'UNREAD', '2019-11-26 13:52:56', '2019-11-26 13:52:56'),
(362, 74, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/129\' > APMT-123</a > </b > (Name2) has been approved.', 'UNREAD', '2019-11-26 13:53:23', '2019-11-26 13:53:23'),
(363, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/129\' > APMT-123</a > </b > (Name2) has been approved.', 'UNREAD', '2019-11-26 13:53:23', '2019-11-26 13:53:23'),
(364, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/130\' > APMT-124</a > </b > (shahid) has been booked', 'READ', '2019-11-26 13:54:30', '2019-12-19 13:10:43'),
(365, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/130\' > APMT-124</a > </b > (shahid) has been booked', 'UNREAD', '2019-11-26 13:54:30', '2019-11-26 13:54:30'),
(366, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/130\' > APMT-124</a > </b > (shahid) has been approved.', 'READ', '2019-11-26 13:55:14', '2019-11-29 15:53:31'),
(367, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/130\' > APMT-124</a > </b > (shahid) has been approved.', 'UNREAD', '2019-11-26 13:55:14', '2019-11-26 13:55:14'),
(368, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/130\' > APMT-124</a > </b > (shahid) has been visited.', 'READ', '2019-11-26 13:59:40', '2019-11-29 15:53:31'),
(369, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/130\' > APMT-124</a > </b > (shahid) has been visited.', 'UNREAD', '2019-11-26 13:59:40', '2019-11-26 13:59:40'),
(370, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/131\' > APMT-125</a > </b > (naj) has been booked', 'READ', '2019-11-26 15:59:33', '2020-09-13 12:08:11'),
(371, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/131\' > APMT-125</a > </b > (naj) has been booked', 'READ', '2019-11-26 15:59:33', '2020-09-13 10:55:29'),
(372, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/132\' > APMT-126</a > </b > (bhavesh) has been booked', 'READ', '2019-11-26 16:05:57', '2020-09-13 12:08:11'),
(373, 75, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/132\' > APMT-126</a > </b > (bhavesh) has been booked', 'UNREAD', '2019-11-26 16:05:57', '2019-11-26 16:05:57'),
(374, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/133\' > APMT-127</a > </b > (rahul) has been booked', 'READ', '2019-11-26 16:06:58', '2020-09-13 12:08:11'),
(375, 76, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/133\' > APMT-127</a > </b > (rahul) has been booked', 'UNREAD', '2019-11-26 16:06:58', '2019-11-26 16:06:58'),
(376, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/131\' > APMT-125</a > </b > (naj) has been approved.', 'READ', '2019-11-26 16:07:09', '2020-09-13 12:08:11'),
(377, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/131\' > APMT-125</a > </b > (naj) has been approved.', 'READ', '2019-11-26 16:07:09', '2020-09-14 10:24:05'),
(378, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/131\' > APMT-125</a > </b > (naj) has been approved.', 'READ', '2019-11-26 16:07:09', '2019-12-18 11:42:15'),
(379, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/134\' > APMT-128</a > </b > (faw) has been booked', 'READ', '2019-11-26 16:12:54', '2020-09-13 12:08:11'),
(380, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/134\' > APMT-128</a > </b > (faw) has been booked', 'READ', '2019-11-26 16:12:54', '2020-09-13 10:55:29'),
(381, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/134\' > APMT-128</a > </b > (faw) has been approved.', 'READ', '2019-11-26 16:13:10', '2020-09-13 12:08:11'),
(382, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/134\' > APMT-128</a > </b > (faw) has been approved.', 'READ', '2019-11-26 16:13:10', '2020-09-14 10:24:05'),
(383, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/134\' > APMT-128</a > </b > (faw) has been approved.', 'READ', '2019-11-26 16:13:10', '2019-12-18 11:42:15'),
(384, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/131\' > APMT-125</a > </b > (naj) prescription has been created.', 'READ', '2019-11-26 16:17:49', '2020-09-13 12:08:11'),
(385, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/131\' > APMT-125</a > </b > (naj) has been visited.', 'READ', '2019-11-26 16:34:39', '2020-09-14 10:24:05'),
(386, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/131\' > APMT-125</a > </b > (naj) has been visited.', 'READ', '2019-11-26 16:34:39', '2020-09-13 10:55:29'),
(387, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/135\' > APMT-129</a > </b > (digvijay) has been booked', 'UNREAD', '2019-11-27 23:31:18', '2019-11-27 23:31:18'),
(388, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/136\' > APMT-130</a > </b > (SAJ) has been booked', 'UNREAD', '2019-11-27 23:37:06', '2019-11-27 23:37:06'),
(389, 81, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/136\' > APMT-130</a > </b > (SAJ) has been booked', 'UNREAD', '2019-11-27 23:37:06', '2019-11-27 23:37:06'),
(390, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/137\' > APMT-131</a > </b > (DAJ) has been booked', 'UNREAD', '2019-11-27 23:38:17', '2019-11-27 23:38:17'),
(391, 82, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/137\' > APMT-131</a > </b > (DAJ) has been booked', 'UNREAD', '2019-11-27 23:38:17', '2019-11-27 23:38:17'),
(392, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/138\' > APMT-132</a > </b > (DHJ) has been booked', 'UNREAD', '2019-11-27 23:40:13', '2019-11-27 23:40:13'),
(393, 79, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/138\' > APMT-132</a > </b > (DHJ) has been booked', 'UNREAD', '2019-11-27 23:40:13', '2019-11-27 23:40:13'),
(394, 77, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/138\' > APMT-132</a > </b > (DHJ) has been approved.', 'UNREAD', '2019-11-27 23:40:41', '2019-11-27 23:40:41'),
(395, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/138\' > APMT-132</a > </b > (DHJ) has been approved.', 'READ', '2019-11-27 23:40:41', '2020-09-14 10:24:05'),
(396, 78, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/138\' > APMT-132</a > </b > (DHJ) has been approved.', 'READ', '2019-11-27 23:40:41', '2019-12-03 23:52:36'),
(397, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/135\' > APMT-129</a > </b > (digvijay) has been visited.', 'UNREAD', '2019-11-27 23:50:35', '2019-11-27 23:50:35'),
(398, 79, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/135\' > APMT-129</a > </b > (digvijay) has been visited.', 'UNREAD', '2019-11-27 23:50:35', '2019-11-27 23:50:35'),
(399, 81, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/136\' > APMT-130</a > </b > (SAJ) has been visited.', 'UNREAD', '2019-11-27 23:51:27', '2019-11-27 23:51:27'),
(400, 79, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/136\' > APMT-130</a > </b > (SAJ) has been visited.', 'UNREAD', '2019-11-27 23:51:27', '2019-11-27 23:51:27'),
(401, 82, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/137\' > APMT-131</a > </b > (DAJ) has been visited.', 'UNREAD', '2019-11-27 23:52:37', '2019-11-27 23:52:37'),
(402, 79, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/137\' > APMT-131</a > </b > (DAJ) has been visited.', 'UNREAD', '2019-11-27 23:52:37', '2019-11-27 23:52:37'),
(403, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/138\' > APMT-132</a > </b > (DHJ) has been visited.', 'READ', '2019-11-27 23:52:54', '2020-09-14 10:24:05'),
(404, 79, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/138\' > APMT-132</a > </b > (DHJ) has been visited.', 'UNREAD', '2019-11-27 23:52:54', '2019-11-27 23:52:54'),
(405, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/139\' > APMT-133</a > </b > (RAG) has been booked', 'UNREAD', '2019-11-27 23:59:51', '2019-11-27 23:59:51'),
(406, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/140\' > APMT-134</a > </b > (RAS) has been booked', 'UNREAD', '2019-11-28 00:01:50', '2019-11-28 00:01:50'),
(407, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/141\' > APMT-135</a > </b > (EFSR) has been booked', 'UNREAD', '2019-11-28 00:03:06', '2019-11-28 00:03:06'),
(408, 79, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/141\' > APMT-135</a > </b > (EFSR) has been booked', 'UNREAD', '2019-11-28 00:03:06', '2019-11-28 00:03:06'),
(409, 77, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/141\' > APMT-135</a > </b > (EFSR) has been approved.', 'UNREAD', '2019-11-28 00:03:27', '2019-11-28 00:03:27'),
(410, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/141\' > APMT-135</a > </b > (EFSR) has been approved.', 'READ', '2019-11-28 00:03:27', '2020-09-14 10:24:05'),
(411, 78, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/141\' > APMT-135</a > </b > (EFSR) has been approved.', 'READ', '2019-11-28 00:03:27', '2019-12-03 23:52:36'),
(412, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/139\' > APMT-133</a > </b > (RAG) has been visited.', 'UNREAD', '2019-11-28 00:07:26', '2019-11-28 00:07:26'),
(413, 79, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/139\' > APMT-133</a > </b > (RAG) has been visited.', 'UNREAD', '2019-11-28 00:07:26', '2019-11-28 00:07:26'),
(414, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/140\' > APMT-134</a > </b > (RAS) has been visited.', 'UNREAD', '2019-11-28 00:08:14', '2019-11-28 00:08:14'),
(415, 79, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/140\' > APMT-134</a > </b > (RAS) has been visited.', 'UNREAD', '2019-11-28 00:08:14', '2019-11-28 00:08:14'),
(416, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/141\' > APMT-135</a > </b > (EFSR) has been visited.', 'READ', '2019-11-28 00:09:07', '2020-09-14 10:24:05'),
(417, 79, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/141\' > APMT-135</a > </b > (EFSR) has been visited.', 'UNREAD', '2019-11-28 00:09:07', '2019-11-28 00:09:07'),
(418, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/142\' > APMT-136</a > </b > (papa1) has been booked', 'READ', '2019-11-28 08:42:10', '2019-12-19 13:10:43'),
(419, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/142\' > APMT-136</a > </b > (papa1) has been booked', 'UNREAD', '2019-11-28 08:42:10', '2019-11-28 08:42:10'),
(420, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/143\' > APMT-137</a > </b > (papa2) has been booked', 'READ', '2019-11-28 08:43:22', '2019-12-19 13:10:43'),
(421, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/143\' > APMT-137</a > </b > (papa2) has been booked', 'UNREAD', '2019-11-28 08:43:22', '2019-11-28 08:43:22'),
(422, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/144\' > APMT-138</a > </b > (samira) has been booked', 'READ', '2019-11-28 08:48:23', '2019-12-19 13:10:43'),
(423, 83, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/144\' > APMT-138</a > </b > (samira) has been booked', 'UNREAD', '2019-11-28 08:48:23', '2019-11-28 08:48:23'),
(424, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/145\' > APMT-139</a > </b > (jishan) has been booked', 'READ', '2019-11-28 08:49:58', '2019-12-19 13:10:43'),
(425, 36, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/142\' > APMT-136</a > </b > (papa1) has been approved.', 'READ', '2019-11-28 08:50:18', '2019-12-19 13:10:43'),
(426, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/142\' > APMT-136</a > </b > (papa1) has been approved.', 'READ', '2019-11-28 08:50:18', '2019-11-29 15:53:31'),
(427, 36, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/143\' > APMT-137</a > </b > (papa2) has been approved.', 'READ', '2019-11-28 08:50:42', '2019-12-19 13:10:43'),
(428, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/143\' > APMT-137</a > </b > (papa2) has been approved.', 'READ', '2019-11-28 08:50:42', '2019-11-29 15:53:31'),
(429, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/146\' > APMT-140</a > </b > (shahid tst) has been booked', 'READ', '2019-11-28 08:56:43', '2019-12-19 13:10:43'),
(430, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/147\' > APMT-141</a > </b > (sssg) has been booked', 'READ', '2019-11-28 08:58:31', '2019-12-19 13:10:43'),
(431, 85, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/147\' > APMT-141</a > </b > (sssg) has been booked', 'READ', '2019-11-28 08:58:31', '2019-11-28 08:59:33'),
(432, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/148\' > APMT-142</a > </b > (jishan) has been booked', 'READ', '2019-11-28 09:00:26', '2019-12-19 13:10:43'),
(433, 86, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/148\' > APMT-142</a > </b > (jishan) has been booked', 'UNREAD', '2019-11-28 09:00:26', '2019-11-28 09:00:26'),
(434, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/149\' > APMT-143</a > </b > (hello) has been booked', 'READ', '2019-11-28 09:01:25', '2019-12-19 13:10:43'),
(435, 57, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/149\' > APMT-143</a > </b > (hello) has been booked', 'READ', '2019-11-28 09:01:25', '2019-11-29 15:53:31'),
(436, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/150\' > APMT-144</a > </b > (final) has been booked', 'READ', '2019-11-28 09:01:59', '2019-12-19 13:10:43'),
(437, 87, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/150\' > APMT-144</a > </b > (final) has been booked', 'UNREAD', '2019-11-28 09:01:59', '2019-11-28 09:01:59'),
(438, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/151\' > APMT-145</a > </b > (smytest12) has been booked', 'UNREAD', '2019-11-28 10:52:54', '2019-11-28 10:52:54'),
(439, 88, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/151\' > APMT-145</a > </b > (smytest12) has been booked', 'UNREAD', '2019-11-28 10:52:54', '2019-11-28 10:52:54'),
(440, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/152\' > APMT-146</a > </b > (newverfer) has been booked', 'UNREAD', '2019-11-28 10:54:11', '2019-11-28 10:54:11'),
(441, 89, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/152\' > APMT-146</a > </b > (newverfer) has been booked', 'UNREAD', '2019-11-28 10:54:11', '2019-11-28 10:54:11'),
(442, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/153\' > APMT-147</a > </b > (samira) has been booked', 'UNREAD', '2019-11-28 10:54:56', '2019-11-28 10:54:56'),
(443, 90, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/153\' > APMT-147</a > </b > (samira) has been booked', 'READ', '2019-11-28 10:54:56', '2019-11-28 11:10:47'),
(444, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/154\' > APMT-148</a > </b > (done) has been booked', 'UNREAD', '2019-11-28 10:56:28', '2019-11-28 10:56:28'),
(445, 79, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/154\' > APMT-148</a > </b > (done) has been booked', 'UNREAD', '2019-11-28 10:56:28', '2019-11-28 10:56:28'),
(446, 77, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/154\' > APMT-148</a > </b > (done) has been approved.', 'UNREAD', '2019-11-28 10:57:17', '2019-11-28 10:57:17'),
(447, 85, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/154\' > APMT-148</a > </b > (done) has been approved.', 'UNREAD', '2019-11-28 10:57:17', '2019-11-28 10:57:17'),
(448, 78, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/154\' > APMT-148</a > </b > (done) has been approved.', 'READ', '2019-11-28 10:57:17', '2019-12-03 23:52:36'),
(449, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/155\' > APMT-149</a > </b > (jay joshi) has been booked', 'UNREAD', '2019-11-28 11:08:10', '2019-11-28 11:08:10'),
(450, 91, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/155\' > APMT-149</a > </b > (jay joshi) has been booked', 'UNREAD', '2019-11-28 11:08:10', '2019-11-28 11:08:10'),
(451, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/156\' > APMT-150</a > </b > (gah) has been booked', 'UNREAD', '2019-11-28 11:09:11', '2019-11-28 11:09:11'),
(452, 92, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/156\' > APMT-150</a > </b > (gah) has been booked', 'UNREAD', '2019-11-28 11:09:11', '2019-11-28 11:09:11'),
(453, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/157\' > APMT-151</a > </b > (gsa) has been booked', 'UNREAD', '2019-11-28 11:12:11', '2019-11-28 11:12:11'),
(454, 79, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/157\' > APMT-151</a > </b > (gsa) has been booked', 'UNREAD', '2019-11-28 11:12:11', '2019-11-28 11:12:11'),
(455, 77, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/157\' > APMT-151</a > </b > (gsa) has been approved.', 'UNREAD', '2019-11-28 11:13:02', '2019-11-28 11:13:02'),
(456, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/157\' > APMT-151</a > </b > (gsa) has been approved.', 'READ', '2019-11-28 11:13:02', '2020-09-14 10:24:05'),
(457, 78, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/157\' > APMT-151</a > </b > (gsa) has been approved.', 'READ', '2019-11-28 11:13:02', '2019-12-03 23:52:36'),
(458, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/158\' > APMT-152</a > </b > (fas) has been booked', 'UNREAD', '2019-11-29 15:06:28', '2019-11-29 15:06:28'),
(459, 79, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/158\' > APMT-152</a > </b > (fas) has been booked', 'UNREAD', '2019-11-29 15:06:28', '2019-11-29 15:06:28'),
(460, 77, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/159\' > APMT-153</a > </b > (xzfg) has been booked', 'UNREAD', '2019-11-29 15:11:36', '2019-11-29 15:11:36'),
(461, 93, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/159\' > APMT-153</a > </b > (xzfg) has been booked', 'UNREAD', '2019-11-29 15:11:36', '2019-11-29 15:11:36'),
(462, 77, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/158\' > APMT-152</a > </b > (fas) has been approved.', 'UNREAD', '2019-11-29 15:11:46', '2019-11-29 15:11:46'),
(463, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/158\' > APMT-152</a > </b > (fas) has been approved.', 'READ', '2019-11-29 15:11:46', '2020-09-14 10:24:05'),
(464, 78, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/158\' > APMT-152</a > </b > (fas) has been approved.', 'READ', '2019-11-29 15:11:46', '2019-12-03 23:52:36'),
(465, 77, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/151\' > APMT-145</a > </b > (smytest12) has been visited.', 'UNREAD', '2019-11-29 15:12:25', '2019-11-29 15:12:25'),
(466, 88, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/151\' > APMT-145</a > </b > (smytest12) has been visited.', 'UNREAD', '2019-11-29 15:12:25', '2019-11-29 15:12:25'),
(467, 77, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/152\' > APMT-146</a > </b > (newverfer) prescription has been created.', 'UNREAD', '2019-11-29 15:17:05', '2019-11-29 15:17:05'),
(468, 89, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/152\' > APMT-146</a > </b > (newverfer) has been visited.', 'UNREAD', '2019-11-29 15:23:08', '2019-11-29 15:23:08'),
(469, 79, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/152\' > APMT-146</a > </b > (newverfer) has been visited.', 'UNREAD', '2019-11-29 15:23:08', '2019-11-29 15:23:08'),
(470, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/160\' > APMT-154</a > </b > (shahuid) has been booked', 'READ', '2019-11-29 15:48:00', '2019-12-19 13:10:43'),
(471, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/160\' > APMT-154</a > </b > (shahuid) has been booked', 'UNREAD', '2019-11-29 15:48:00', '2019-11-29 15:48:00'),
(472, 36, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/160\' > APMT-154</a > </b > (shahuid) has been approved.', 'READ', '2019-11-29 15:53:03', '2019-12-19 13:10:43'),
(473, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/160\' > APMT-154</a > </b > (shahuid) has been approved.', 'READ', '2019-11-29 15:53:03', '2019-11-29 15:53:31'),
(474, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/161\' > APMT-155</a > </b > (SHAHID) has been booked', 'READ', '2019-11-29 15:54:58', '2019-12-19 13:10:43'),
(475, 94, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/161\' > APMT-155</a > </b > (SHAHID) has been booked', 'UNREAD', '2019-11-29 15:54:58', '2019-11-29 15:54:58'),
(476, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/162\' > APMT-156</a > </b > (dal) has been booked', 'READ', '2019-12-03 23:49:02', '2020-09-13 12:08:11'),
(477, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/162\' > APMT-156</a > </b > (dal) has been booked', 'READ', '2019-12-03 23:49:02', '2020-09-13 10:55:29'),
(478, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/162\' > APMT-156</a > </b > (dal) has been approved.', 'READ', '2019-12-03 23:57:25', '2020-09-14 10:24:05'),
(479, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/162\' > APMT-156</a > </b > (dal) has been approved.', 'READ', '2019-12-03 23:57:25', '2020-09-13 10:55:29'),
(480, 75, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/132\' > APMT-126</a > </b > (bhavesh) has been visited.', 'UNREAD', '2019-12-09 11:15:01', '2019-12-09 11:15:01'),
(481, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/132\' > APMT-126</a > </b > (bhavesh) has been visited.', 'READ', '2019-12-09 11:15:01', '2020-09-13 10:55:29'),
(482, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/163\' > APMT-157</a > </b > (rahul) has been booked', 'READ', '2019-12-09 11:20:23', '2020-09-13 12:08:11'),
(483, 96, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/163\' > APMT-157</a > </b > (rahul) has been booked', 'UNREAD', '2019-12-09 11:20:23', '2019-12-09 11:20:23'),
(484, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/164\' > APMT-158</a > </b > (rahul) has been booked', 'READ', '2019-12-09 11:42:37', '2020-09-13 12:08:11'),
(485, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/164\' > APMT-158</a > </b > (rahul) has been booked', 'READ', '2019-12-09 11:42:37', '2020-09-13 10:55:29'),
(486, 60, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/89\' > APMT-83</a > </b > (shahida) has been visited.', 'UNREAD', '2019-12-09 14:41:17', '2019-12-09 14:41:17'),
(487, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/89\' > APMT-83</a > </b > (shahida) has been visited.', 'UNREAD', '2019-12-09 14:41:17', '2019-12-09 14:41:17'),
(488, 76, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/133\' > APMT-127</a > </b > (rahul) has been visited.', 'UNREAD', '2019-12-10 21:02:30', '2019-12-10 21:02:30');
INSERT INTO `notifications` (`id`, `user_id`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(489, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/133\' > APMT-127</a > </b > (rahul) has been visited.', 'READ', '2019-12-10 21:02:30', '2020-09-13 10:55:29'),
(490, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/165\' > APMT-159</a > </b > (ashish uniyal) has been booked', 'UNREAD', '2019-12-12 09:46:18', '2019-12-12 09:46:18'),
(491, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/166\' > APMT-160</a > </b > (uniyal aashish) has been booked', 'READ', '2019-12-12 09:48:52', '2020-09-13 12:08:11'),
(492, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/166\' > APMT-160</a > </b > (uniyal aashish) has been booked', 'READ', '2019-12-12 09:48:52', '2020-09-13 10:55:29'),
(493, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/166\' > APMT-160</a > </b > (uniyal aashish) has been approved.', 'READ', '2019-12-12 09:55:10', '2020-09-13 12:08:11'),
(494, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/166\' > APMT-160</a > </b > (uniyal aashish) has been approved.', 'READ', '2019-12-12 09:55:10', '2020-09-14 10:24:05'),
(495, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/166\' > APMT-160</a > </b > (uniyal aashish) has been approved.', 'READ', '2019-12-12 09:55:10', '2019-12-18 11:42:15'),
(496, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/167\' > APMT-161</a > </b > (sahid) has been booked', 'READ', '2019-12-12 09:58:46', '2019-12-19 13:10:43'),
(497, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/167\' > APMT-161</a > </b > (sahid) has been booked', 'UNREAD', '2019-12-12 09:58:46', '2019-12-12 09:58:46'),
(498, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/164\' > APMT-158</a > </b > (rahul) has been approved.', 'READ', '2019-12-12 09:59:20', '2020-09-13 12:08:11'),
(499, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/164\' > APMT-158</a > </b > (rahul) has been approved.', 'READ', '2019-12-12 09:59:20', '2020-09-14 10:24:05'),
(500, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/164\' > APMT-158</a > </b > (rahul) has been approved.', 'READ', '2019-12-12 09:59:20', '2019-12-18 11:42:15'),
(501, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/134\' > APMT-128</a > </b > (faw) has been visited.', 'READ', '2019-12-12 09:59:24', '2020-09-13 12:08:11'),
(502, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/134\' > APMT-128</a > </b > (faw) has been visited.', 'READ', '2019-12-12 09:59:24', '2020-09-14 10:24:05'),
(503, 36, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/167\' > APMT-161</a > </b > (sahid) has been approved.', 'READ', '2019-12-12 09:59:35', '2019-12-19 13:10:43'),
(504, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/167\' > APMT-161</a > </b > (sahid) has been approved.', 'UNREAD', '2019-12-12 09:59:35', '2019-12-12 09:59:35'),
(505, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/163\' > APMT-157</a > </b > (rahul) has been visited.', 'READ', '2019-12-12 09:59:43', '2020-09-13 12:08:11'),
(506, 96, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/163\' > APMT-157</a > </b > (rahul) has been visited.', 'UNREAD', '2019-12-12 09:59:43', '2019-12-12 09:59:43'),
(507, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/166\' > APMT-160</a > </b > (uniyal aashish) has been visited.', 'READ', '2019-12-12 09:59:45', '2020-09-13 12:08:11'),
(508, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/166\' > APMT-160</a > </b > (uniyal aashish) has been visited.', 'READ', '2019-12-12 09:59:45', '2020-09-14 10:24:05'),
(509, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/168\' > APMT-162</a > </b > (munir) has been booked', 'READ', '2019-12-12 10:00:10', '2019-12-19 13:10:43'),
(510, 57, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/168\' > APMT-162</a > </b > (munir) has been booked', 'UNREAD', '2019-12-12 10:00:10', '2019-12-12 10:00:10'),
(511, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/169\' > APMT-163</a > </b > (rahul) has been booked', 'READ', '2019-12-12 10:08:13', '2020-09-13 12:08:11'),
(512, 101, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/169\' > APMT-163</a > </b > (rahul) has been booked', 'UNREAD', '2019-12-12 10:08:13', '2019-12-12 10:08:13'),
(513, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/170\' > APMT-164</a > </b > (hema) has been booked', 'READ', '2019-12-12 10:09:50', '2020-09-13 12:08:11'),
(514, 104, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/170\' > APMT-164</a > </b > (hema) has been booked', 'UNREAD', '2019-12-12 10:09:50', '2019-12-12 10:09:50'),
(515, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/171\' > APMT-165</a > </b > (vihan) has been booked', 'READ', '2019-12-12 10:11:25', '2020-09-13 12:08:11'),
(516, 105, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/171\' > APMT-165</a > </b > (vihan) has been booked', 'UNREAD', '2019-12-12 10:11:25', '2019-12-12 10:11:25'),
(517, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/172\' > APMT-166</a > </b > (rahul patel) has been booked', 'READ', '2019-12-12 10:13:25', '2020-09-13 12:08:11'),
(518, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/172\' > APMT-166</a > </b > (rahul patel) has been booked', 'READ', '2019-12-12 10:13:25', '2020-09-13 10:55:29'),
(519, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/172\' > APMT-166</a > </b > (rahul patel) has been approved.', 'READ', '2019-12-12 10:14:38', '2020-09-13 12:08:11'),
(520, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/172\' > APMT-166</a > </b > (rahul patel) has been approved.', 'READ', '2019-12-12 10:14:38', '2020-09-14 10:24:05'),
(521, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/172\' > APMT-166</a > </b > (rahul patel) has been approved.', 'READ', '2019-12-12 10:14:38', '2019-12-18 11:42:15'),
(522, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/167\' > APMT-161</a > </b > (sahid) has been visited.', 'UNREAD', '2019-12-12 10:23:05', '2019-12-12 10:23:05'),
(523, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/167\' > APMT-161</a > </b > (sahid) has been visited.', 'UNREAD', '2019-12-12 10:23:05', '2019-12-12 10:23:05'),
(524, 101, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/169\' > APMT-163</a > </b > (rahul) has been visited.', 'UNREAD', '2019-12-12 10:30:49', '2019-12-12 10:30:49'),
(525, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/169\' > APMT-163</a > </b > (rahul) has been visited.', 'READ', '2019-12-12 10:30:49', '2020-09-13 10:55:29'),
(526, 104, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/170\' > APMT-164</a > </b > (hema) has been visited.', 'UNREAD', '2019-12-12 12:32:19', '2019-12-12 12:32:19'),
(527, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/170\' > APMT-164</a > </b > (hema) has been visited.', 'READ', '2019-12-12 12:32:19', '2020-09-13 10:55:29'),
(528, 105, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/171\' > APMT-165</a > </b > (vihan) has been visited.', 'UNREAD', '2019-12-12 13:14:46', '2019-12-12 13:14:46'),
(529, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/171\' > APMT-165</a > </b > (vihan) has been visited.', 'READ', '2019-12-12 13:14:46', '2020-09-13 10:55:29'),
(530, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/173\' > APMT-167</a > </b > (sandeep jain) has been booked', 'READ', '2019-12-12 13:23:08', '2020-09-13 12:08:11'),
(531, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/173\' > APMT-167</a > </b > (sandeep jain) has been booked', 'READ', '2019-12-12 13:23:08', '2020-09-13 10:55:29'),
(532, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/173\' > APMT-167</a > </b > (sandeep jain) has been approved.', 'READ', '2019-12-12 13:24:14', '2020-09-14 10:24:05'),
(533, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/173\' > APMT-167</a > </b > (sandeep jain) has been approved.', 'READ', '2019-12-12 13:24:14', '2020-09-13 10:55:29'),
(534, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/172\' > APMT-166</a > </b > (rahul patel) has been visited.', 'READ', '2019-12-12 16:05:23', '2020-09-14 10:24:05'),
(535, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/172\' > APMT-166</a > </b > (rahul patel) has been visited.', 'READ', '2019-12-12 16:05:23', '2020-09-13 10:55:29'),
(536, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/174\' > APMT-168</a > </b > (Vicky Maurya) has been booked', 'UNREAD', '2019-12-12 16:48:58', '2019-12-12 16:48:58'),
(537, 38, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/174\' > APMT-168</a > </b > (Vicky Maurya) has been booked', 'UNREAD', '2019-12-12 16:48:58', '2019-12-12 16:48:58'),
(538, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/175\' > APMT-169</a > </b > (arman) has been booked', 'READ', '2019-12-13 10:24:26', '2020-09-13 12:08:11'),
(539, 107, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/175\' > APMT-169</a > </b > (arman) has been booked', 'UNREAD', '2019-12-13 10:24:26', '2019-12-13 10:24:26'),
(540, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/176\' > APMT-170</a > </b > (vihan) has been booked', 'READ', '2019-12-13 10:25:49', '2020-09-13 12:08:11'),
(541, 108, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/176\' > APMT-170</a > </b > (vihan) has been booked', 'UNREAD', '2019-12-13 10:25:49', '2019-12-13 10:25:49'),
(542, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/177\' > APMT-171</a > </b > (ramesh) has been booked', 'READ', '2019-12-13 10:28:02', '2020-09-13 12:08:11'),
(543, 109, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/177\' > APMT-171</a > </b > (ramesh) has been booked', 'UNREAD', '2019-12-13 10:28:02', '2019-12-13 10:28:02'),
(544, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/178\' > APMT-172</a > </b > (rahul sharma) has been booked', 'READ', '2019-12-13 10:41:09', '2020-09-13 12:08:11'),
(545, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/178\' > APMT-172</a > </b > (rahul sharma) has been booked', 'READ', '2019-12-13 10:41:09', '2020-09-13 10:55:29'),
(546, 53, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/165\' > APMT-159</a > </b > (ashish uniyal) has been canceled by patient', 'UNREAD', '2019-12-13 10:41:55', '2019-12-13 10:41:55'),
(547, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/178\' > APMT-172</a > </b > (rahul sharma) has been approved.', 'READ', '2019-12-13 10:45:06', '2020-09-13 12:08:11'),
(548, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/178\' > APMT-172</a > </b > (rahul sharma) has been approved.', 'READ', '2019-12-13 10:45:06', '2020-09-14 10:24:05'),
(549, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/178\' > APMT-172</a > </b > (rahul sharma) has been approved.', 'READ', '2019-12-13 10:45:06', '2019-12-18 11:42:15'),
(550, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/179\' > APMT-173</a > </b > (Meet Patel) has been booked', 'READ', '2019-12-16 13:52:25', '2020-09-13 12:08:11'),
(551, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/179\' > APMT-173</a > </b > (Meet Patel) has been booked', 'READ', '2019-12-16 13:52:25', '2020-09-13 10:55:29'),
(552, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/179\' > APMT-173</a > </b > (Meet Patel) has been approved.', 'READ', '2019-12-16 13:58:20', '2020-09-13 12:08:11'),
(553, 118, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/179\' > APMT-173</a > </b > (Meet Patel) has been approved.', 'READ', '2019-12-16 13:58:20', '2019-12-16 14:48:15'),
(554, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/179\' > APMT-173</a > </b > (Meet Patel) has been approved.', 'READ', '2019-12-16 13:58:20', '2019-12-18 11:42:15'),
(555, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/180\' > APMT-174</a > </b > (meet) has been booked', 'READ', '2019-12-16 14:00:11', '2020-09-13 12:08:11'),
(556, 119, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/180\' > APMT-174</a > </b > (meet) has been booked', 'UNREAD', '2019-12-16 14:00:11', '2019-12-16 14:00:11'),
(557, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/179\' > APMT-173</a > </b > (Meet Patel) prescription has been created.', 'READ', '2019-12-16 14:08:40', '2020-09-13 12:08:11'),
(558, 118, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/179\' > APMT-173</a > </b > (Meet Patel) has been visited.', 'READ', '2019-12-16 14:11:36', '2019-12-16 14:48:15'),
(559, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/179\' > APMT-173</a > </b > (Meet Patel) has been visited.', 'READ', '2019-12-16 14:11:36', '2020-09-13 10:55:29'),
(560, 95, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/181\' > APMT-175</a > </b > (Meet Patel) has been booked', 'UNREAD', '2019-12-16 14:29:31', '2019-12-16 14:29:31'),
(561, 111, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-176</a > </b > (raju) has been booked', 'READ', '2019-12-16 16:03:02', '2019-12-19 13:32:00'),
(562, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/183\' > APMT-177</a > </b > (sagar) has been booked', 'READ', '2019-12-18 10:29:33', '2020-09-13 12:08:11'),
(563, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/183\' > APMT-177</a > </b > (sagar) has been booked', 'READ', '2019-12-18 10:29:33', '2020-09-13 10:55:29'),
(564, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/183\' > APMT-177</a > </b > (sagar) has been approved.', 'READ', '2019-12-18 10:29:53', '2020-09-13 12:08:11'),
(565, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/183\' > APMT-177</a > </b > (sagar) has been approved.', 'READ', '2019-12-18 10:29:53', '2020-09-14 10:24:05'),
(566, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/183\' > APMT-177</a > </b > (sagar) has been approved.', 'READ', '2019-12-18 10:29:53', '2019-12-18 11:42:15'),
(567, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/183\' > APMT-177</a > </b > (sagar) has been visited.', 'READ', '2019-12-18 10:30:41', '2020-09-13 12:08:11'),
(568, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/183\' > APMT-177</a > </b > (sagar) has been visited.', 'READ', '2019-12-18 10:30:41', '2020-09-14 10:24:05'),
(569, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/184\' > APMT-178</a > </b > (SAGAR) has been booked', 'READ', '2019-12-18 10:41:45', '2020-09-13 12:08:11'),
(570, 122, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/184\' > APMT-178</a > </b > (SAGAR) has been booked', 'UNREAD', '2019-12-18 10:41:45', '2019-12-18 10:41:45'),
(571, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/185\' > APMT-179</a > </b > (Kim) has been booked', 'READ', '2019-12-18 10:44:58', '2020-09-13 12:08:11'),
(572, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/186\' > APMT-180</a > </b > (Kim K) has been booked', 'READ', '2019-12-18 10:47:06', '2020-09-13 12:08:11'),
(573, 128, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/186\' > APMT-180</a > </b > (Kim K) has been booked', 'UNREAD', '2019-12-18 10:47:06', '2019-12-18 10:47:06'),
(574, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/187\' > APMT-181</a > </b > (Shaw) has been booked', 'READ', '2019-12-18 10:48:32', '2020-09-13 12:08:11'),
(575, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/188\' > APMT-182</a > </b > (Hobbs) has been booked', 'READ', '2019-12-18 11:00:05', '2020-09-13 12:08:11'),
(576, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/188\' > APMT-182</a > </b > (Hobbs) has been booked', 'READ', '2019-12-18 11:00:05', '2020-09-13 10:55:29'),
(577, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/188\' > APMT-182</a > </b > (Hobbs) has been approved.', 'READ', '2019-12-18 11:00:21', '2020-09-13 12:08:11'),
(578, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/188\' > APMT-182</a > </b > (Hobbs) has been approved.', 'READ', '2019-12-18 11:00:21', '2020-09-14 10:24:05'),
(579, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/188\' > APMT-182</a > </b > (Hobbs) has been approved.', 'READ', '2019-12-18 11:00:21', '2019-12-18 11:42:15'),
(580, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/162\' > APMT-156</a > </b > (dal) has been visited.', 'READ', '2019-12-18 11:02:08', '2020-09-13 12:08:11'),
(581, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/162\' > APMT-156</a > </b > (dal) has been visited.', 'READ', '2019-12-18 11:02:08', '2020-09-14 10:24:05'),
(582, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/173\' > APMT-167</a > </b > (sandeep jain) has been visited.', 'READ', '2019-12-18 11:02:16', '2020-09-13 12:08:11'),
(583, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/173\' > APMT-167</a > </b > (sandeep jain) has been visited.', 'READ', '2019-12-18 11:02:16', '2020-09-14 10:24:05'),
(584, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/164\' > APMT-158</a > </b > (rahul) has been visited.', 'READ', '2019-12-18 11:02:24', '2020-09-13 12:08:11'),
(585, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/164\' > APMT-158</a > </b > (rahul) has been visited.', 'READ', '2019-12-18 11:02:24', '2020-09-14 10:24:05'),
(586, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/175\' > APMT-169</a > </b > (arman) has been visited.', 'READ', '2019-12-18 11:02:31', '2020-09-13 12:08:11'),
(587, 107, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/175\' > APMT-169</a > </b > (arman) has been visited.', 'UNREAD', '2019-12-18 11:02:31', '2019-12-18 11:02:31'),
(588, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/176\' > APMT-170</a > </b > (vihan) has been visited.', 'READ', '2019-12-18 11:02:39', '2020-09-13 12:08:11'),
(589, 108, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/176\' > APMT-170</a > </b > (vihan) has been visited.', 'UNREAD', '2019-12-18 11:02:39', '2019-12-18 11:02:39'),
(590, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/177\' > APMT-171</a > </b > (ramesh) has been visited.', 'READ', '2019-12-18 11:02:45', '2020-09-13 12:08:11'),
(591, 109, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/177\' > APMT-171</a > </b > (ramesh) has been visited.', 'UNREAD', '2019-12-18 11:02:45', '2019-12-18 11:02:45'),
(592, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/178\' > APMT-172</a > </b > (rahul sharma) has been visited.', 'READ', '2019-12-18 11:02:53', '2020-09-13 12:08:11'),
(593, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/178\' > APMT-172</a > </b > (rahul sharma) has been visited.', 'READ', '2019-12-18 11:02:53', '2020-09-14 10:24:05'),
(594, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/180\' > APMT-174</a > </b > (meet) has been visited.', 'READ', '2019-12-18 11:02:53', '2020-09-13 12:08:11'),
(595, 119, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/180\' > APMT-174</a > </b > (meet) has been visited.', 'UNREAD', '2019-12-18 11:02:53', '2019-12-18 11:02:53'),
(596, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/184\' > APMT-178</a > </b > (SAGAR) has been visited.', 'READ', '2019-12-18 11:03:00', '2020-09-13 12:08:11'),
(597, 122, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/184\' > APMT-178</a > </b > (SAGAR) has been visited.', 'UNREAD', '2019-12-18 11:03:00', '2019-12-18 11:03:00'),
(598, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/185\' > APMT-179</a > </b > (Kim) has been visited.', 'READ', '2019-12-18 11:03:06', '2020-09-13 12:08:11'),
(599, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/185\' > APMT-179</a > </b > (Kim) has been visited.', 'UNREAD', '2019-12-18 11:03:06', '2019-12-18 11:03:06'),
(600, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/186\' > APMT-180</a > </b > (Kim K) has been visited.', 'READ', '2019-12-18 11:03:13', '2020-09-13 12:08:11'),
(601, 128, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/186\' > APMT-180</a > </b > (Kim K) has been visited.', 'UNREAD', '2019-12-18 11:03:13', '2019-12-18 11:03:13'),
(602, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/187\' > APMT-181</a > </b > (Shaw) has been visited.', 'READ', '2019-12-18 11:03:21', '2020-09-13 12:08:11'),
(603, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/187\' > APMT-181</a > </b > (Shaw) has been visited.', 'UNREAD', '2019-12-18 11:03:21', '2019-12-18 11:03:21'),
(604, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/188\' > APMT-182</a > </b > (Hobbs) has been visited.', 'READ', '2019-12-18 11:03:30', '2020-09-13 12:08:11'),
(605, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/188\' > APMT-182</a > </b > (Hobbs) has been visited.', 'READ', '2019-12-18 11:03:30', '2020-09-14 10:24:05'),
(606, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/189\' > APMT-183</a > </b > (Bob) has been booked', 'READ', '2019-12-18 11:05:29', '2020-09-13 12:08:11'),
(607, 129, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/189\' > APMT-183</a > </b > (Bob) has been booked', 'UNREAD', '2019-12-18 11:05:29', '2019-12-18 11:05:29'),
(608, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/190\' > APMT-184</a > </b > (jimbo) has been booked', 'READ', '2019-12-18 11:06:25', '2020-09-13 12:08:11'),
(609, 130, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/190\' > APMT-184</a > </b > (jimbo) has been booked', 'UNREAD', '2019-12-18 11:06:25', '2019-12-18 11:06:25'),
(610, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/191\' > APMT-185</a > </b > (Katy Perry) has been booked', 'READ', '2019-12-18 11:07:11', '2020-09-13 12:08:11'),
(611, 131, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/191\' > APMT-185</a > </b > (Katy Perry) has been booked', 'UNREAD', '2019-12-18 11:07:11', '2019-12-18 11:07:11'),
(612, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/192\' > APMT-186</a > </b > (Di Caprio) has been booked', 'READ', '2019-12-18 11:08:07', '2020-09-13 12:08:11'),
(613, 132, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/192\' > APMT-186</a > </b > (Di Caprio) has been booked', 'UNREAD', '2019-12-18 11:08:07', '2019-12-18 11:08:07'),
(614, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/193\' > APMT-187</a > </b > (Mojito) has been booked', 'READ', '2019-12-18 11:09:04', '2020-09-13 12:08:11'),
(615, 133, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/193\' > APMT-187</a > </b > (Mojito) has been booked', 'UNREAD', '2019-12-18 11:09:04', '2019-12-18 11:09:04'),
(616, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/194\' > APMT-188</a > </b > (Brad Pitt) has been booked', 'READ', '2019-12-18 11:10:24', '2020-09-13 12:08:11'),
(617, 134, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/194\' > APMT-188</a > </b > (Brad Pitt) has been booked', 'UNREAD', '2019-12-18 11:10:24', '2019-12-18 11:10:24'),
(618, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/195\' > APMT-189</a > </b > (Vladimir) has been booked', 'READ', '2019-12-18 11:12:03', '2020-09-13 12:08:11'),
(619, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/195\' > APMT-189</a > </b > (Vladimir) has been booked', 'READ', '2019-12-18 11:12:03', '2020-09-13 10:55:29'),
(620, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/195\' > APMT-189</a > </b > (Vladimir) has been approved.', 'READ', '2019-12-18 11:12:18', '2020-09-13 12:08:11'),
(621, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/195\' > APMT-189</a > </b > (Vladimir) has been approved.', 'READ', '2019-12-18 11:12:18', '2020-09-14 10:24:05'),
(622, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/195\' > APMT-189</a > </b > (Vladimir) has been approved.', 'READ', '2019-12-18 11:12:18', '2019-12-18 11:42:15'),
(623, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/189\' > APMT-183</a > </b > (Bob) prescription has been created.', 'READ', '2019-12-18 11:45:02', '2020-09-13 12:08:11'),
(624, 129, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/189\' > APMT-183</a > </b > (Bob) has been visited.', 'UNREAD', '2019-12-18 11:50:15', '2019-12-18 11:50:15'),
(625, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/189\' > APMT-183</a > </b > (Bob) has been visited.', 'READ', '2019-12-18 11:50:15', '2020-09-13 10:55:29'),
(626, 130, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/190\' > APMT-184</a > </b > (jimbo) has been visited.', 'UNREAD', '2019-12-18 11:58:07', '2019-12-18 11:58:07'),
(627, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/190\' > APMT-184</a > </b > (jimbo) has been visited.', 'READ', '2019-12-18 11:58:07', '2020-09-13 10:55:29'),
(628, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/196\' > APMT-190</a > </b > (Boy) has been booked', 'READ', '2019-12-18 13:00:24', '2020-09-13 12:56:24'),
(629, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/196\' > APMT-190</a > </b > (Boy) has been approved.', 'READ', '2019-12-18 13:01:43', '2020-09-14 10:24:05'),
(630, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/197\' > APMT-191</a > </b > (Boi) has been booked', 'READ', '2019-12-18 13:01:49', '2020-09-13 12:56:24'),
(631, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/197\' > APMT-191</a > </b > (Boi) has been approved.', 'READ', '2019-12-18 13:02:10', '2020-09-14 10:24:05'),
(632, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/198\' > APMT-192</a > </b > (shhid) has been booked', 'READ', '2019-12-18 15:39:23', '2019-12-19 13:10:43'),
(633, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/198\' > APMT-192</a > </b > (shhid) has been booked', 'UNREAD', '2019-12-18 15:39:23', '2019-12-18 15:39:23'),
(634, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/198\' > APMT-192</a > </b > (shhid) has been approved.', 'UNREAD', '2019-12-18 15:39:39', '2019-12-18 15:39:39'),
(635, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/198\' > APMT-192</a > </b > (shhid) has been approved.', 'UNREAD', '2019-12-18 15:39:39', '2019-12-18 15:39:39'),
(636, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/198\' > APMT-192</a > </b > (shhid) has been visited.', 'UNREAD', '2019-12-18 15:43:05', '2019-12-18 15:43:05'),
(637, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/198\' > APMT-192</a > </b > (shhid) has been visited.', 'UNREAD', '2019-12-18 15:43:05', '2019-12-18 15:43:05'),
(638, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/199\' > APMT-193</a > </b > (shahid khan) has been booked', 'READ', '2019-12-18 16:27:53', '2019-12-19 13:10:43'),
(639, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/199\' > APMT-193</a > </b > (shahid khan) has been booked', 'UNREAD', '2019-12-18 16:27:53', '2019-12-18 16:27:53'),
(640, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/199\' > APMT-193</a > </b > (shahid khan) has been approved.', 'UNREAD', '2019-12-18 16:28:39', '2019-12-18 16:28:39'),
(641, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/199\' > APMT-193</a > </b > (shahid khan) has been approved.', 'UNREAD', '2019-12-18 16:28:39', '2019-12-18 16:28:39'),
(642, 132, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/192\' > APMT-186</a > </b > (Di Caprio) has been visited.', 'UNREAD', '2019-12-18 17:41:51', '2019-12-18 17:41:51'),
(643, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/192\' > APMT-186</a > </b > (Di Caprio) has been visited.', 'READ', '2019-12-18 17:41:51', '2020-09-13 10:55:29'),
(644, 111, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/200\' > APMT-194</a > </b > (piyush) has been booked', 'READ', '2019-12-19 13:23:50', '2019-12-19 13:32:00'),
(645, 116, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/200\' > APMT-194</a > </b > (piyush) has been booked', 'READ', '2019-12-19 13:23:50', '2019-12-20 15:25:41'),
(646, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/200\' > APMT-194</a > </b > (piyush) has been approved.', 'READ', '2019-12-19 13:28:24', '2019-12-19 13:47:10'),
(647, 116, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/200\' > APMT-194</a > </b > (piyush) has been approved.', 'READ', '2019-12-19 13:28:24', '2019-12-20 15:25:41'),
(648, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/200\' > APMT-194</a > </b > (piyush) has been visited.', 'READ', '2019-12-19 13:30:39', '2019-12-19 13:47:10'),
(649, 116, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/200\' > APMT-194</a > </b > (piyush) has been visited.', 'READ', '2019-12-19 13:30:39', '2019-12-20 15:25:41'),
(650, 113, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/201\' > APMT-195</a > </b > (Joshi Anil p) has been booked', 'UNREAD', '2019-12-27 16:09:26', '2019-12-27 16:09:26'),
(651, 114, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/201\' > APMT-195</a > </b > (Joshi Anil p) has been booked', 'READ', '2019-12-27 16:09:26', '2019-12-27 16:19:11'),
(652, 113, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/201\' > APMT-195</a > </b > (Joshi Anil p) has been canceled by patient', 'UNREAD', '2019-12-27 16:16:17', '2019-12-27 16:16:17'),
(653, 114, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/201\' > APMT-195</a > </b > (Joshi Anil p) has been canceled by patient', 'READ', '2019-12-27 16:16:17', '2019-12-27 16:19:11'),
(654, 113, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/202\' > APMT-196</a > </b > (Thakor Rajesh S) has been booked', 'UNREAD', '2019-12-27 16:19:52', '2019-12-27 16:19:52'),
(655, 114, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/202\' > APMT-196</a > </b > (Thakor Rajesh S) has been booked', 'UNREAD', '2019-12-27 16:19:52', '2019-12-27 16:19:52'),
(656, 113, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/203\' > APMT-197</a > </b > (Thakor Rajesh S) has been booked', 'UNREAD', '2019-12-27 16:21:31', '2019-12-27 16:21:31'),
(657, 114, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/203\' > APMT-197</a > </b > (Thakor Rajesh S) has been booked', 'UNREAD', '2019-12-27 16:21:31', '2019-12-27 16:21:31'),
(658, 113, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/202\' > APMT-196</a > </b > (Thakor Rajesh S) has been canceled by patient', 'UNREAD', '2019-12-27 16:21:43', '2019-12-27 16:21:43'),
(659, 114, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/202\' > APMT-196</a > </b > (Thakor Rajesh S) has been canceled by patient', 'UNREAD', '2019-12-27 16:21:43', '2019-12-27 16:21:43'),
(660, 113, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/203\' > APMT-197</a > </b > (Thakor Rajesh S) has been canceled by patient', 'UNREAD', '2019-12-27 16:21:52', '2019-12-27 16:21:52'),
(661, 114, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/203\' > APMT-197</a > </b > (Thakor Rajesh S) has been canceled by patient', 'UNREAD', '2019-12-27 16:21:52', '2019-12-27 16:21:52'),
(662, 113, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/204\' > APMT-198</a > </b > (piyush prajapati) has been booked', 'UNREAD', '2019-12-30 13:13:07', '2019-12-30 13:13:07'),
(663, 114, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/204\' > APMT-198</a > </b > (piyush prajapati) has been booked', 'UNREAD', '2019-12-30 13:13:07', '2019-12-30 13:13:07'),
(664, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/204\' > APMT-198</a > </b > (piyush prajapati) has been approved.', 'UNREAD', '2019-12-30 15:22:36', '2019-12-30 15:22:36'),
(665, 114, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/204\' > APMT-198</a > </b > (piyush prajapati) has been approved.', 'UNREAD', '2019-12-30 15:22:36', '2019-12-30 15:22:36'),
(666, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/204\' > APMT-198</a > </b > (piyush prajapati) has been visited.', 'UNREAD', '2019-12-30 15:35:06', '2019-12-30 15:35:06'),
(667, 114, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/204\' > APMT-198</a > </b > (piyush prajapati) has been visited.', 'UNREAD', '2019-12-30 15:35:06', '2019-12-30 15:35:06'),
(668, 136, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/205\' > APMT-199</a > </b > (Mahesh bhai) has been booked', 'UNREAD', '2020-01-03 09:41:27', '2020-01-03 09:41:27'),
(669, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/205\' > APMT-199</a > </b > (Mahesh bhai) has been visited.', 'READ', '2020-01-03 09:43:24', '2020-09-14 10:24:05'),
(670, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-200</a > </b > (hardik M. patel) has been booked', 'READ', '2020-01-03 11:58:47', '2020-09-13 12:56:24'),
(671, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/207\' > APMT-201</a > </b > (Ethan James) has been booked', 'READ', '2020-01-03 14:24:57', '2020-09-13 12:08:11'),
(672, 140, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/207\' > APMT-201</a > </b > (Ethan James) has been booked', 'UNREAD', '2020-01-03 14:24:57', '2020-01-03 14:24:57'),
(673, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/208\' > APMT-202</a > </b > (Jimmy Kalimba) has been booked', 'READ', '2020-01-03 14:26:43', '2020-09-13 12:08:11'),
(674, 141, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/208\' > APMT-202</a > </b > (Jimmy Kalimba) has been booked', 'UNREAD', '2020-01-03 14:26:43', '2020-01-03 14:26:43'),
(675, 140, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/207\' > APMT-201</a > </b > (Ethan James) has been visited.', 'UNREAD', '2020-01-03 14:32:53', '2020-01-03 14:32:53'),
(676, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/207\' > APMT-201</a > </b > (Ethan James) has been visited.', 'READ', '2020-01-03 14:32:53', '2020-09-13 10:55:29'),
(677, 141, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/208\' > APMT-202</a > </b > (Jimmy Kalimba) has been visited.', 'UNREAD', '2020-01-03 14:33:05', '2020-01-03 14:33:05'),
(678, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/208\' > APMT-202</a > </b > (Jimmy Kalimba) has been visited.', 'READ', '2020-01-03 14:33:05', '2020-09-13 10:55:29'),
(679, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/209\' > APMT-203</a > </b > (Stephen Simons) has been booked', 'READ', '2020-01-03 14:34:49', '2020-09-13 12:08:11'),
(680, 142, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/209\' > APMT-203</a > </b > (Stephen Simons) has been booked', 'UNREAD', '2020-01-03 14:34:49', '2020-01-03 14:34:49'),
(681, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/210\' > APMT-204</a > </b > (Rick Morty) has been booked', 'READ', '2020-01-03 14:37:15', '2020-09-13 12:08:11'),
(682, 143, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/210\' > APMT-204</a > </b > (Rick Morty) has been booked', 'UNREAD', '2020-01-03 14:37:15', '2020-01-03 14:37:15'),
(683, 142, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/209\' > APMT-203</a > </b > (Stephen Simons) has been visited.', 'UNREAD', '2020-01-03 14:37:17', '2020-01-03 14:37:17'),
(684, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/209\' > APMT-203</a > </b > (Stephen Simons) has been visited.', 'READ', '2020-01-03 14:37:17', '2020-09-13 10:55:29'),
(685, 143, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/210\' > APMT-204</a > </b > (Rick Morty) has been visited.', 'UNREAD', '2020-01-03 14:37:33', '2020-01-03 14:37:33'),
(686, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/210\' > APMT-204</a > </b > (Rick Morty) has been visited.', 'READ', '2020-01-03 14:37:33', '2020-09-13 10:55:29'),
(687, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/211\' > APMT-205</a > </b > (T. Andrew) has been booked', 'READ', '2020-01-03 14:38:57', '2020-09-13 12:08:11'),
(688, 144, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/211\' > APMT-205</a > </b > (T. Andrew) has been booked', 'UNREAD', '2020-01-03 14:38:57', '2020-01-03 14:38:57'),
(689, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/212\' > APMT-206</a > </b > (Valek K) has been booked', 'READ', '2020-01-03 14:40:33', '2020-09-13 12:08:11'),
(690, 145, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/212\' > APMT-206</a > </b > (Valek K) has been booked', 'UNREAD', '2020-01-03 14:40:33', '2020-01-03 14:40:33'),
(691, 144, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/211\' > APMT-205</a > </b > (T. Andrew) has been visited.', 'UNREAD', '2020-01-03 14:41:47', '2020-01-03 14:41:47'),
(692, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/211\' > APMT-205</a > </b > (T. Andrew) has been visited.', 'READ', '2020-01-03 14:41:47', '2020-09-13 10:55:29'),
(693, 145, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/212\' > APMT-206</a > </b > (Valek K) has been visited.', 'UNREAD', '2020-01-03 14:42:03', '2020-01-03 14:42:03'),
(694, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/212\' > APMT-206</a > </b > (Valek K) has been visited.', 'READ', '2020-01-03 14:42:03', '2020-09-13 10:55:29'),
(695, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/213\' > APMT-207</a > </b > (Balmond Alicks) has been booked', 'READ', '2020-01-03 14:51:58', '2020-09-13 12:08:11'),
(696, 146, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/213\' > APMT-207</a > </b > (Balmond Alicks) has been booked', 'UNREAD', '2020-01-03 14:51:58', '2020-01-03 14:51:58'),
(697, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/214\' > APMT-208</a > </b > (Test) has been booked', 'READ', '2020-01-03 14:59:50', '2020-09-13 12:08:11'),
(698, 147, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/214\' > APMT-208</a > </b > (Test) has been booked', 'UNREAD', '2020-01-03 14:59:50', '2020-01-03 14:59:50'),
(699, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/215\' > APMT-209</a > </b > (RJ) has been booked', 'READ', '2020-01-03 15:01:22', '2020-09-13 12:08:11'),
(700, 148, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/215\' > APMT-209</a > </b > (RJ) has been booked', 'UNREAD', '2020-01-03 15:01:22', '2020-01-03 15:01:22'),
(701, 146, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/213\' > APMT-207</a > </b > (Balmond Alicks) has been visited.', 'UNREAD', '2020-01-03 15:01:39', '2020-01-03 15:01:39'),
(702, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/213\' > APMT-207</a > </b > (Balmond Alicks) has been visited.', 'READ', '2020-01-03 15:01:39', '2020-09-13 10:55:29'),
(703, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/216\' > APMT-210</a > </b > (sunny) has been booked', 'READ', '2020-01-11 14:02:23', '2020-09-13 12:08:11'),
(704, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/216\' > APMT-210</a > </b > (sunny) has been booked', 'READ', '2020-01-11 14:02:23', '2020-09-13 10:55:29'),
(705, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/217\' > APMT-211</a > </b > (Joshi Anilkumar Popatlal) has been booked', 'READ', '2020-01-27 14:19:11', '2020-09-13 12:08:11'),
(706, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/217\' > APMT-211</a > </b > (Joshi Anilkumar Popatlal) has been booked', 'READ', '2020-01-27 14:19:11', '2020-09-13 10:55:29'),
(707, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/218\' > APMT-212</a > </b > (Joshi Anilkumar Popatlal) has been booked', 'READ', '2020-01-27 14:21:40', '2020-09-13 12:08:11'),
(708, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/218\' > APMT-212</a > </b > (Joshi Anilkumar Popatlal) has been booked', 'READ', '2020-01-27 14:21:40', '2020-09-13 10:55:29'),
(709, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/219\' > APMT-213</a > </b > (Joshi Anilkumar Popatlal) has been booked', 'UNREAD', '2020-01-28 13:08:11', '2020-01-28 13:08:11'),
(710, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/220\' > APMT-214</a > </b > (Joshi Anilkumar Popatlal) has been booked', 'UNREAD', '2020-01-28 13:13:37', '2020-01-28 13:13:37'),
(711, 151, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/221\' > APMT-215</a > </b > (QWERTY) has been booked', 'READ', '2020-02-04 14:03:42', '2020-02-04 14:16:59'),
(712, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/216\' > APMT-210</a > </b > (sunny) has been approved.', 'READ', '2020-02-04 14:51:21', '2020-09-13 12:08:11'),
(713, 149, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/216\' > APMT-210</a > </b > (sunny) has been approved.', 'UNREAD', '2020-02-04 14:51:21', '2020-02-04 14:51:21'),
(714, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/216\' > APMT-210</a > </b > (sunny) has been approved.', 'UNREAD', '2020-02-04 14:51:21', '2020-02-04 14:51:21');
INSERT INTO `notifications` (`id`, `user_id`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(715, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/217\' > APMT-211</a > </b > (Joshi Anilkumar Popatlal) has been approved.', 'READ', '2020-02-04 14:51:22', '2020-09-13 12:08:11'),
(716, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/217\' > APMT-211</a > </b > (Joshi Anilkumar Popatlal) has been approved.', 'UNREAD', '2020-02-04 14:51:22', '2020-02-04 14:51:22'),
(717, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/217\' > APMT-211</a > </b > (Joshi Anilkumar Popatlal) has been approved.', 'UNREAD', '2020-02-04 14:51:22', '2020-02-04 14:51:22'),
(718, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/218\' > APMT-212</a > </b > (Joshi Anilkumar Popatlal) has been approved.', 'READ', '2020-02-04 14:52:32', '2020-09-13 12:08:11'),
(719, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/218\' > APMT-212</a > </b > (Joshi Anilkumar Popatlal) has been approved.', 'UNREAD', '2020-02-04 14:52:32', '2020-02-04 14:52:32'),
(720, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/218\' > APMT-212</a > </b > (Joshi Anilkumar Popatlal) has been approved.', 'UNREAD', '2020-02-04 14:52:33', '2020-02-04 14:52:33'),
(721, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/222\' > APMT-216</a > </b > (VIHAN) has been booked', 'READ', '2020-02-04 14:54:35', '2020-09-13 12:08:11'),
(722, 154, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/222\' > APMT-216</a > </b > (VIHAN) has been booked', 'UNREAD', '2020-02-04 14:54:35', '2020-02-04 14:54:35'),
(723, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/223\' > APMT-217</a > </b > (FARS) has been booked', 'READ', '2020-02-04 14:55:24', '2020-09-13 12:08:11'),
(724, 155, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/223\' > APMT-217</a > </b > (FARS) has been booked', 'UNREAD', '2020-02-04 14:55:24', '2020-02-04 14:55:24'),
(725, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/224\' > APMT-218</a > </b > (Umang) has been booked', 'READ', '2020-02-04 14:58:06', '2020-09-13 12:08:11'),
(726, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/224\' > APMT-218</a > </b > (Umang) has been booked', 'READ', '2020-02-04 14:58:06', '2020-09-13 10:55:29'),
(727, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/224\' > APMT-218</a > </b > (Umang) has been approved.', 'READ', '2020-02-04 14:58:45', '2020-09-14 10:24:05'),
(728, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/224\' > APMT-218</a > </b > (Umang) has been approved.', 'READ', '2020-02-04 14:58:45', '2020-09-13 10:55:29'),
(729, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/225\' > APMT-219</a > </b > (RAHY) has been booked', 'READ', '2020-02-04 15:04:23', '2020-09-13 12:08:11'),
(730, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/225\' > APMT-219</a > </b > (RAHY) has been booked', 'READ', '2020-02-04 15:04:23', '2020-09-13 10:55:29'),
(731, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/225\' > APMT-219</a > </b > (RAHY) has been approved.', 'READ', '2020-02-04 15:04:50', '2020-09-14 10:24:05'),
(732, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/225\' > APMT-219</a > </b > (RAHY) has been approved.', 'READ', '2020-02-04 15:04:50', '2020-09-13 10:55:29'),
(733, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/226\' > APMT-220</a > </b > (Joshi Anil kumar Popatlal) has been booked', 'UNREAD', '2020-02-06 12:47:31', '2020-02-06 12:47:31'),
(734, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-221</a > </b > (Hardik) has been booked', 'UNREAD', '2020-02-10 14:47:50', '2020-02-10 14:47:50'),
(735, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-222</a > </b > (darshan) has been booked', 'UNREAD', '2020-02-10 14:55:23', '2020-02-10 14:55:23'),
(736, 136, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-223</a > </b > (mohit@gmail.com) has been booked', 'UNREAD', '2020-02-10 14:56:38', '2020-02-10 14:56:38'),
(737, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-224</a > </b > (rohit@gmail.com) has been booked', 'READ', '2020-02-10 14:59:08', '2020-09-13 12:56:24'),
(738, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-225</a > </b > (saumit@gmail.com) has been booked', 'READ', '2020-02-10 15:01:17', '2020-09-13 12:56:24'),
(739, 54, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-226</a > </b > (jalotra) has been booked', 'READ', '2020-02-10 15:04:21', '2020-06-24 10:31:40'),
(740, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-227</a > </b > (jishan) has been booked', 'READ', '2020-02-10 15:06:10', '2020-09-13 12:56:24'),
(741, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-228</a > </b > (smarpan3) has been booked', 'READ', '2020-02-10 15:16:25', '2020-09-13 12:56:24'),
(742, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-229</a > </b > (arhul) has been booked', 'UNREAD', '2020-02-18 12:27:36', '2020-02-18 12:27:36'),
(743, 95, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-230</a > </b > (ramesh) has been booked', 'UNREAD', '2020-02-18 12:43:46', '2020-02-18 12:43:46'),
(744, 4, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/98\' > APMT-92</a > </b > (harsh m varma) prescription has been created.', 'READ', '2020-02-18 13:11:01', '2021-03-14 20:52:27'),
(745, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/219\' > APMT-213</a> </b> (Joshi Anilkumar Popatlal) has been extended.', 'UNREAD', '2020-02-27 16:10:27', '2020-02-27 16:10:27'),
(746, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/220\' > APMT-214</a > </b > (Joshi Anilkumar Popatlal) has been approved.', 'UNREAD', '2020-02-27 16:36:32', '2020-02-27 16:36:32'),
(747, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-231</a > </b > (meet) has been booked', 'READ', '2020-03-03 17:28:25', '2020-09-13 12:56:24'),
(748, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-232</a > </b > (meet) has been booked', 'READ', '2020-03-03 17:34:12', '2020-09-13 12:56:24'),
(749, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/239\' > APMT-233</a > </b > (rahul) has been booked', 'READ', '2020-03-03 18:13:51', '2020-09-13 12:56:24'),
(750, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/239\' > APMT-233</a > </b > (rahul) has been approved.', 'READ', '2020-03-03 18:20:01', '2020-09-14 10:24:05'),
(751, 171, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/237\' > APMT-231</a > </b > (meet) has been visited.', 'UNREAD', '2020-03-03 18:36:01', '2020-03-03 18:36:01'),
(752, 172, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/238\' > APMT-232</a > </b > (meet) has been visited.', 'UNREAD', '2020-03-03 18:37:33', '2020-03-03 18:37:33'),
(753, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/239\' > APMT-233</a > </b > (rahul) has been visited.', 'READ', '2020-03-03 18:39:04', '2020-09-14 10:24:05'),
(754, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-234</a > </b > (sanjeev) has been booked', 'READ', '2020-03-22 12:56:13', '2020-09-13 12:56:24'),
(755, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-235</a > </b > (RBQ) has been booked', 'READ', '2020-03-22 12:58:27', '2020-09-13 12:56:24'),
(756, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/242\' > APMT-236</a > </b > (RAM) has been booked', 'READ', '2020-03-22 13:00:26', '2020-09-13 12:56:24'),
(757, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/242\' > APMT-236</a > </b > (RAM) has been approved.', 'READ', '2020-03-22 13:02:03', '2020-09-14 10:24:05'),
(758, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/243\' > APMT-237</a > </b > (rahhu) has been booked', 'READ', '2020-04-29 11:17:07', '2020-09-13 12:08:11'),
(759, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/243\' > APMT-237</a > </b > (rahhu) has been booked', 'READ', '2020-04-29 11:17:07', '2020-09-13 10:55:29'),
(760, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/243\' > APMT-237</a > </b > (rahhu) has been approved.', 'READ', '2020-04-29 11:20:11', '2020-09-13 12:08:11'),
(761, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/243\' > APMT-237</a > </b > (rahhu) has been approved.', 'READ', '2020-04-29 11:20:11', '2020-09-14 10:24:05'),
(762, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/243\' > APMT-237</a > </b > (rahhu) has been approved.', 'UNREAD', '2020-04-29 11:20:11', '2020-04-29 11:20:11'),
(763, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/243\' > APMT-237</a > </b > (rahhu) has been visited.', 'READ', '2020-04-29 11:25:12', '2020-09-14 10:24:05'),
(764, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/243\' > APMT-237</a > </b > (rahhu) has been visited.', 'READ', '2020-04-29 11:25:12', '2020-09-13 10:55:29'),
(765, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/244\' > APMT-238</a > </b > (harshil) has been booked', 'READ', '2020-05-15 14:22:40', '2020-09-13 12:08:11'),
(766, 176, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/244\' > APMT-238</a > </b > (harshil) has been booked', 'UNREAD', '2020-05-15 14:22:40', '2020-05-15 14:22:40'),
(767, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/245\' > APMT-239</a > </b > (Rahul sudhaniya) has been booked', 'READ', '2020-05-15 14:23:55', '2020-09-13 12:08:11'),
(768, 177, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/245\' > APMT-239</a > </b > (Rahul sudhaniya) has been booked', 'UNREAD', '2020-05-15 14:23:55', '2020-05-15 14:23:55'),
(769, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/246\' > APMT-240</a > </b > (Samir) has been booked', 'READ', '2020-05-15 14:25:51', '2020-09-13 12:08:11'),
(770, 178, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/246\' > APMT-240</a > </b > (Samir) has been booked', 'UNREAD', '2020-05-15 14:25:51', '2020-05-15 14:25:51'),
(771, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/247\' > APMT-241</a > </b > (Shushant) has been booked', 'READ', '2020-05-15 14:27:03', '2020-09-13 12:08:11'),
(772, 179, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/247\' > APMT-241</a > </b > (Shushant) has been booked', 'UNREAD', '2020-05-15 14:27:03', '2020-05-15 14:27:03'),
(773, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/248\' > APMT-242</a > </b > (Vishnu sharma) has been booked', 'READ', '2020-05-15 14:30:57', '2020-09-13 12:08:11'),
(774, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/248\' > APMT-242</a > </b > (Vishnu sharma) has been booked', 'READ', '2020-05-15 14:30:57', '2020-09-13 10:55:29'),
(775, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/248\' > APMT-242</a > </b > (Vishnu sharma) has been approved.', 'READ', '2020-05-15 15:07:42', '2020-09-13 12:08:11'),
(776, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/248\' > APMT-242</a > </b > (Vishnu sharma) has been approved.', 'READ', '2020-05-15 15:07:42', '2020-09-14 10:24:05'),
(777, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/248\' > APMT-242</a > </b > (Vishnu sharma) has been approved.', 'UNREAD', '2020-05-15 15:07:42', '2020-05-15 15:07:42'),
(778, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/249\' > APMT-243</a > </b > (satish) has been booked', 'READ', '2020-06-04 20:36:03', '2020-09-13 12:08:11'),
(779, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/249\' > APMT-243</a > </b > (satish) has been booked', 'READ', '2020-06-04 20:36:03', '2020-09-13 10:55:29'),
(780, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/250\' > APMT-244</a > </b > (rahul) has been booked', 'READ', '2020-06-04 20:36:19', '2020-09-13 12:08:11'),
(781, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/250\' > APMT-244</a > </b > (rahul) has been booked', 'READ', '2020-06-04 20:36:19', '2020-09-13 10:55:29'),
(782, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/249\' > APMT-243</a > </b > (satish) has been approved.', 'READ', '2020-06-04 20:39:58', '2020-09-13 12:08:11'),
(783, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/249\' > APMT-243</a > </b > (satish) has been approved.', 'READ', '2020-06-04 20:39:58', '2020-09-14 10:24:05'),
(784, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/249\' > APMT-243</a > </b > (satish) has been approved.', 'UNREAD', '2020-06-04 20:39:58', '2020-06-04 20:39:58'),
(785, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/249\' > APMT-243</a > </b > (satish) has been approved.', 'READ', '2020-06-04 20:40:11', '2020-09-13 12:08:11'),
(786, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/249\' > APMT-243</a > </b > (satish) has been approved.', 'READ', '2020-06-04 20:40:11', '2020-09-14 10:24:05'),
(787, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/249\' > APMT-243</a > </b > (satish) has been approved.', 'UNREAD', '2020-06-04 20:40:11', '2020-06-04 20:40:11'),
(788, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/250\' > APMT-244</a > </b > (rahul) has been approved.', 'READ', '2020-06-04 20:40:20', '2020-09-13 12:08:11'),
(789, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/250\' > APMT-244</a > </b > (rahul) has been approved.', 'READ', '2020-06-04 20:40:20', '2020-09-14 10:24:05'),
(790, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/250\' > APMT-244</a > </b > (rahul) has been approved.', 'UNREAD', '2020-06-04 20:40:20', '2020-06-04 20:40:20'),
(791, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/251\' > APMT-245</a > </b > (Samir) has been booked', 'READ', '2020-06-07 13:06:49', '2020-09-13 12:08:11'),
(792, 183, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/251\' > APMT-245</a > </b > (Samir) has been booked', 'UNREAD', '2020-06-07 13:06:49', '2020-06-07 13:06:49'),
(793, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/252\' > APMT-246</a > </b > (meet) has been booked', 'READ', '2020-06-07 13:07:31', '2020-09-13 12:08:11'),
(794, 184, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/252\' > APMT-246</a > </b > (meet) has been booked', 'UNREAD', '2020-06-07 13:07:31', '2020-06-07 13:07:31'),
(795, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/253\' > APMT-247</a > </b > (satish) has been booked', 'READ', '2020-06-07 13:08:38', '2020-09-13 12:08:11'),
(796, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/253\' > APMT-247</a > </b > (satish) has been booked', 'READ', '2020-06-07 13:08:38', '2020-09-13 10:55:29'),
(797, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/253\' > APMT-247</a > </b > (satish) has been approved.', 'READ', '2020-06-07 13:08:59', '2020-09-14 10:24:05'),
(798, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/253\' > APMT-247</a > </b > (satish) has been approved.', 'READ', '2020-06-07 13:08:59', '2020-09-13 10:55:29'),
(799, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/254\' > APMT-248</a > </b > (satish) has been booked', 'UNREAD', '2020-06-07 14:36:11', '2020-06-07 14:36:11'),
(800, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/255\' > APMT-249</a > </b > (satish) has been booked', 'UNREAD', '2020-06-07 17:35:47', '2020-06-07 17:35:47'),
(801, 53, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/255\' > APMT-249</a > </b > (satish) has been canceled by patient', 'UNREAD', '2020-06-07 17:36:26', '2020-06-07 17:36:26'),
(802, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/256\' > APMT-250</a > </b > (rahul sharma) has been booked', 'READ', '2020-06-09 00:26:29', '2020-09-13 12:08:11'),
(803, 186, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/256\' > APMT-250</a > </b > (rahul sharma) has been booked', 'UNREAD', '2020-06-09 00:26:29', '2020-06-09 00:26:29'),
(804, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/257\' > APMT-251</a > </b > (ramesh) has been booked', 'READ', '2020-06-09 00:27:28', '2020-09-13 12:08:11'),
(805, 187, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/257\' > APMT-251</a > </b > (ramesh) has been booked', 'UNREAD', '2020-06-09 00:27:28', '2020-06-09 00:27:28'),
(806, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/258\' > APMT-252</a > </b > (sammy) has been booked', 'READ', '2020-06-09 00:28:14', '2020-09-13 12:08:11'),
(807, 188, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/258\' > APMT-252</a > </b > (sammy) has been booked', 'UNREAD', '2020-06-09 00:28:14', '2020-06-09 00:28:14'),
(808, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/259\' > APMT-253</a > </b > (asif) has been booked', 'READ', '2020-06-09 00:28:55', '2020-09-13 12:08:11'),
(809, 189, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/259\' > APMT-253</a > </b > (asif) has been booked', 'UNREAD', '2020-06-09 00:28:55', '2020-06-09 00:28:55'),
(810, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/260\' > APMT-254</a > </b > (samir) has been booked', 'READ', '2020-06-09 00:29:39', '2020-09-13 12:08:11'),
(811, 190, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/260\' > APMT-254</a > </b > (samir) has been booked', 'UNREAD', '2020-06-09 00:29:39', '2020-06-09 00:29:39'),
(812, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/261\' > APMT-255</a > </b > (rammy) has been booked', 'READ', '2020-06-09 00:30:21', '2020-09-13 12:08:11'),
(813, 191, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/261\' > APMT-255</a > </b > (rammy) has been booked', 'UNREAD', '2020-06-09 00:30:21', '2020-06-09 00:30:21'),
(814, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/262\' > APMT-256</a > </b > (farukh) has been booked', 'READ', '2020-06-09 00:31:09', '2020-09-13 12:08:11'),
(815, 192, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/262\' > APMT-256</a > </b > (farukh) has been booked', 'UNREAD', '2020-06-09 00:31:09', '2020-06-09 00:31:09'),
(816, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/263\' > APMT-257</a > </b > (ramesh pathani) has been booked', 'READ', '2020-06-09 00:32:09', '2020-09-13 12:08:11'),
(817, 193, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/263\' > APMT-257</a > </b > (ramesh pathani) has been booked', 'UNREAD', '2020-06-09 00:32:09', '2020-06-09 00:32:09'),
(818, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/264\' > APMT-258</a > </b > (ravi) has been booked', 'READ', '2020-06-09 00:34:07', '2020-09-13 12:08:11'),
(819, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/264\' > APMT-258</a > </b > (ravi) has been booked', 'READ', '2020-06-09 00:34:07', '2020-09-13 10:55:29'),
(820, 53, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/254\' > APMT-248</a > </b > (satish) has been canceled by patient', 'UNREAD', '2020-06-09 00:34:25', '2020-06-09 00:34:25'),
(821, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/264\' > APMT-258</a > </b > (ravi) has been approved.', 'READ', '2020-06-09 00:46:26', '2020-09-14 10:24:05'),
(822, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/264\' > APMT-258</a > </b > (ravi) has been approved.', 'READ', '2020-06-09 00:46:26', '2020-09-13 10:55:29'),
(823, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/256\' > APMT-250</a > </b > (rahul sharma) has been visited.', 'READ', '2020-06-09 00:50:54', '2020-09-13 12:08:11'),
(824, 186, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/256\' > APMT-250</a > </b > (rahul sharma) has been visited.', 'UNREAD', '2020-06-09 00:50:54', '2020-06-09 00:50:54'),
(825, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/251\' > APMT-245</a > </b > (Samir) has been visited.', 'READ', '2020-06-09 00:51:17', '2020-09-13 12:08:11'),
(826, 183, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/251\' > APMT-245</a > </b > (Samir) has been visited.', 'UNREAD', '2020-06-09 00:51:17', '2020-06-09 00:51:17'),
(827, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/252\' > APMT-246</a > </b > (meet) has been visited.', 'READ', '2020-06-09 00:51:36', '2020-09-13 12:08:11'),
(828, 184, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/252\' > APMT-246</a > </b > (meet) has been visited.', 'UNREAD', '2020-06-09 00:51:36', '2020-06-09 00:51:36'),
(829, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/253\' > APMT-247</a > </b > (satish) has been visited.', 'READ', '2020-06-09 00:51:59', '2020-09-13 12:08:11'),
(830, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/253\' > APMT-247</a > </b > (satish) has been visited.', 'READ', '2020-06-09 00:51:59', '2020-09-14 10:24:05'),
(831, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/257\' > APMT-251</a > </b > (ramesh) has been visited.', 'READ', '2020-06-09 00:52:25', '2020-09-13 12:08:11'),
(832, 187, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/257\' > APMT-251</a > </b > (ramesh) has been visited.', 'UNREAD', '2020-06-09 00:52:25', '2020-06-09 00:52:25'),
(833, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/258\' > APMT-252</a > </b > (sammy) has been visited.', 'READ', '2020-06-09 00:52:41', '2020-09-13 12:08:11'),
(834, 188, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/258\' > APMT-252</a > </b > (sammy) has been visited.', 'UNREAD', '2020-06-09 00:52:41', '2020-06-09 00:52:41'),
(835, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/259\' > APMT-253</a > </b > (asif) has been visited.', 'READ', '2020-06-09 00:52:43', '2020-09-13 12:08:11'),
(836, 189, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/259\' > APMT-253</a > </b > (asif) has been visited.', 'UNREAD', '2020-06-09 00:52:43', '2020-06-09 00:52:43'),
(837, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/260\' > APMT-254</a > </b > (samir) has been visited.', 'READ', '2020-06-09 00:52:44', '2020-09-13 12:08:11'),
(838, 190, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/260\' > APMT-254</a > </b > (samir) has been visited.', 'UNREAD', '2020-06-09 00:52:44', '2020-06-09 00:52:44'),
(839, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/265\' > APMT-259</a > </b > (satish) has been booked', 'READ', '2020-06-09 22:01:49', '2020-09-13 12:08:11'),
(840, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/265\' > APMT-259</a > </b > (satish) has been booked', 'READ', '2020-06-09 22:01:49', '2020-09-13 10:55:29'),
(841, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/266\' > APMT-260</a > </b > (fage) has been booked', 'READ', '2020-06-11 13:16:11', '2020-09-13 12:08:11'),
(842, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/266\' > APMT-260</a > </b > (fage) has been booked', 'READ', '2020-06-11 13:16:11', '2020-09-13 10:55:29'),
(843, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/267\' > APMT-261</a > </b > (john) has been booked', 'UNREAD', '2020-06-14 15:37:53', '2020-06-14 15:37:53'),
(844, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/268\' > APMT-262</a > </b > (john) has been booked', 'UNREAD', '2020-06-14 18:19:04', '2020-06-14 18:19:04'),
(845, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/269\' > APMT-263</a > </b > (john) has been booked', 'UNREAD', '2020-06-14 18:36:01', '2020-06-14 18:36:01'),
(846, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/265\' > APMT-259</a > </b > (satish) has been approved.', 'READ', '2020-06-14 18:37:52', '2020-09-13 12:08:11'),
(847, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/265\' > APMT-259</a > </b > (satish) has been approved.', 'READ', '2020-06-14 18:37:52', '2020-09-14 10:24:05'),
(848, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/265\' > APMT-259</a > </b > (satish) has been approved.', 'UNREAD', '2020-06-14 18:37:52', '2020-06-14 18:37:52'),
(849, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/266\' > APMT-260</a > </b > (fage) has been approved.', 'READ', '2020-06-14 18:38:06', '2020-09-13 12:08:11'),
(850, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/266\' > APMT-260</a > </b > (fage) has been approved.', 'READ', '2020-06-14 18:38:06', '2020-09-14 10:24:05'),
(851, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/266\' > APMT-260</a > </b > (fage) has been approved.', 'UNREAD', '2020-06-14 18:38:06', '2020-06-14 18:38:06'),
(852, 53, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/270\' > APMT-264</a > </b > (smith) has been booked', 'UNREAD', '2020-06-14 18:40:08', '2020-06-14 18:40:08'),
(853, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/271\' > APMT-265</a > </b > (satish) has been booked', 'READ', '2020-06-14 18:51:34', '2020-09-13 12:08:11'),
(854, 195, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/271\' > APMT-265</a > </b > (satish) has been booked', 'UNREAD', '2020-06-14 18:51:34', '2020-06-14 18:51:34'),
(855, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/272\' > APMT-266</a > </b > (RAJESH) has been booked', 'READ', '2020-06-14 18:52:17', '2020-09-13 12:08:11'),
(856, 196, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/272\' > APMT-266</a > </b > (RAJESH) has been booked', 'UNREAD', '2020-06-14 18:52:17', '2020-06-14 18:52:17'),
(857, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/273\' > APMT-267</a > </b > (Rammy) has been booked', 'READ', '2020-06-14 18:53:35', '2020-09-13 12:08:11'),
(858, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/273\' > APMT-267</a > </b > (Rammy) has been booked', 'READ', '2020-06-14 18:53:35', '2020-09-13 10:55:29'),
(859, 53, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/270\' > APMT-264</a > </b > (smith) has been canceled by patient', 'UNREAD', '2020-06-14 18:54:05', '2020-06-14 18:54:05'),
(860, 53, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/269\' > APMT-263</a > </b > (john) has been canceled by patient', 'UNREAD', '2020-06-14 18:54:15', '2020-06-14 18:54:15'),
(861, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/273\' > APMT-267</a > </b > (Rammy) has been approved.', 'READ', '2020-06-14 18:55:05', '2020-09-13 12:08:11'),
(862, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/273\' > APMT-267</a > </b > (Rammy) has been approved.', 'READ', '2020-06-14 18:55:05', '2020-09-14 10:24:05'),
(863, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/273\' > APMT-267</a > </b > (Rammy) has been approved.', 'UNREAD', '2020-06-14 18:55:05', '2020-06-14 18:55:05'),
(864, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/274\' > APMT-268</a > </b > (Tonny) has been booked', 'READ', '2020-06-14 18:56:25', '2020-09-13 12:08:11'),
(865, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/274\' > APMT-268</a > </b > (Tonny) has been booked', 'READ', '2020-06-14 18:56:25', '2020-09-13 10:55:29'),
(866, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/274\' > APMT-268</a > </b > (Tonny) has been approved.', 'READ', '2020-06-14 18:57:06', '2020-09-13 12:08:11'),
(867, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/274\' > APMT-268</a > </b > (Tonny) has been approved.', 'READ', '2020-06-14 18:57:06', '2020-09-14 10:24:05'),
(868, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/274\' > APMT-268</a > </b > (Tonny) has been approved.', 'UNREAD', '2020-06-14 18:57:06', '2020-06-14 18:57:06'),
(869, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/275\' > APMT-269</a > </b > (Rahul) has been booked', 'READ', '2020-06-15 08:42:39', '2020-09-13 12:08:11'),
(870, 197, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/275\' > APMT-269</a > </b > (Rahul) has been booked', 'UNREAD', '2020-06-15 08:42:39', '2020-06-15 08:42:39'),
(871, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/191\' > APMT-185</a > </b > (Katy Perry) has been visited.', 'READ', '2020-06-15 10:06:01', '2020-09-13 12:08:11'),
(872, 131, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/191\' > APMT-185</a > </b > (Katy Perry) has been visited.', 'UNREAD', '2020-06-15 10:06:01', '2020-06-15 10:06:01'),
(873, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/193\' > APMT-187</a > </b > (Mojito) has been visited.', 'READ', '2020-06-15 10:06:03', '2020-09-13 12:08:11'),
(874, 133, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/193\' > APMT-187</a > </b > (Mojito) has been visited.', 'UNREAD', '2020-06-15 10:06:03', '2020-06-15 10:06:03'),
(875, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/194\' > APMT-188</a > </b > (Brad Pitt) has been visited.', 'READ', '2020-06-15 10:06:03', '2020-09-13 12:08:11'),
(876, 134, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/194\' > APMT-188</a > </b > (Brad Pitt) has been visited.', 'UNREAD', '2020-06-15 10:06:03', '2020-06-15 10:06:03'),
(877, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/195\' > APMT-189</a > </b > (Vladimir) has been visited.', 'READ', '2020-06-15 10:06:05', '2020-09-13 12:08:11'),
(878, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/195\' > APMT-189</a > </b > (Vladimir) has been visited.', 'READ', '2020-06-15 10:06:05', '2020-09-14 10:24:05'),
(879, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/214\' > APMT-208</a > </b > (Test) has been visited.', 'READ', '2020-06-15 10:06:06', '2020-09-13 12:08:11'),
(880, 147, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/214\' > APMT-208</a > </b > (Test) has been visited.', 'UNREAD', '2020-06-15 10:06:06', '2020-06-15 10:06:06'),
(881, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/215\' > APMT-209</a > </b > (RJ) has been visited.', 'READ', '2020-06-15 10:06:08', '2020-09-13 12:08:11'),
(882, 148, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/215\' > APMT-209</a > </b > (RJ) has been visited.', 'UNREAD', '2020-06-15 10:06:08', '2020-06-15 10:06:08'),
(883, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/216\' > APMT-210</a > </b > (sunny) has been visited.', 'READ', '2020-06-15 10:06:09', '2020-09-13 12:08:11'),
(884, 149, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/216\' > APMT-210</a > </b > (sunny) has been visited.', 'UNREAD', '2020-06-15 10:06:09', '2020-06-15 10:06:09'),
(885, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/217\' > APMT-211</a > </b > (Joshi Anilkumar Popatlal) has been visited.', 'READ', '2020-06-15 10:06:10', '2020-09-13 12:08:11'),
(886, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/217\' > APMT-211</a > </b > (Joshi Anilkumar Popatlal) has been visited.', 'UNREAD', '2020-06-15 10:06:10', '2020-06-15 10:06:10'),
(887, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/218\' > APMT-212</a > </b > (Joshi Anilkumar Popatlal) has been visited.', 'READ', '2020-06-15 10:06:12', '2020-09-13 12:08:11'),
(888, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/218\' > APMT-212</a > </b > (Joshi Anilkumar Popatlal) has been visited.', 'UNREAD', '2020-06-15 10:06:12', '2020-06-15 10:06:12'),
(889, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/222\' > APMT-216</a > </b > (VIHAN) has been visited.', 'READ', '2020-06-15 10:06:24', '2020-09-13 12:08:11'),
(890, 154, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/222\' > APMT-216</a > </b > (VIHAN) has been visited.', 'UNREAD', '2020-06-15 10:06:24', '2020-06-15 10:06:24'),
(891, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/223\' > APMT-217</a > </b > (FARS) has been visited.', 'READ', '2020-06-15 10:06:26', '2020-09-13 12:08:11'),
(892, 155, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/223\' > APMT-217</a > </b > (FARS) has been visited.', 'UNREAD', '2020-06-15 10:06:26', '2020-06-15 10:06:26'),
(893, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/224\' > APMT-218</a > </b > (Umang) has been visited.', 'READ', '2020-06-15 10:06:26', '2020-09-13 12:08:11'),
(894, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/224\' > APMT-218</a > </b > (Umang) has been visited.', 'READ', '2020-06-15 10:06:26', '2020-09-14 10:24:05'),
(895, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/225\' > APMT-219</a > </b > (RAHY) has been visited.', 'READ', '2020-06-15 10:06:37', '2020-09-13 12:08:11'),
(896, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/225\' > APMT-219</a > </b > (RAHY) has been visited.', 'READ', '2020-06-15 10:06:37', '2020-09-14 10:24:05'),
(897, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/244\' > APMT-238</a > </b > (harshil) has been visited.', 'READ', '2020-06-15 10:06:47', '2020-09-13 12:08:11'),
(898, 176, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/244\' > APMT-238</a > </b > (harshil) has been visited.', 'UNREAD', '2020-06-15 10:06:47', '2020-06-15 10:06:47'),
(899, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/245\' > APMT-239</a > </b > (Rahul sudhaniya) has been visited.', 'READ', '2020-06-15 10:06:57', '2020-09-13 12:08:11'),
(900, 177, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/245\' > APMT-239</a > </b > (Rahul sudhaniya) has been visited.', 'UNREAD', '2020-06-15 10:06:57', '2020-06-15 10:06:57'),
(901, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/246\' > APMT-240</a > </b > (Samir) has been visited.', 'READ', '2020-06-15 10:06:58', '2020-09-13 12:08:11'),
(902, 178, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/246\' > APMT-240</a > </b > (Samir) has been visited.', 'UNREAD', '2020-06-15 10:06:58', '2020-06-15 10:06:58'),
(903, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/247\' > APMT-241</a > </b > (Shushant) has been visited.', 'READ', '2020-06-15 10:06:59', '2020-09-13 12:08:11'),
(904, 179, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/247\' > APMT-241</a > </b > (Shushant) has been visited.', 'UNREAD', '2020-06-15 10:06:59', '2020-06-15 10:06:59'),
(905, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/248\' > APMT-242</a > </b > (Vishnu sharma) has been visited.', 'READ', '2020-06-15 10:07:01', '2020-09-13 12:08:11'),
(906, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/248\' > APMT-242</a > </b > (Vishnu sharma) has been visited.', 'READ', '2020-06-15 10:07:01', '2020-09-14 10:24:05'),
(907, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/249\' > APMT-243</a > </b > (satish) has been visited.', 'READ', '2020-06-15 10:07:01', '2020-09-13 12:08:11'),
(908, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/249\' > APMT-243</a > </b > (satish) has been visited.', 'READ', '2020-06-15 10:07:01', '2020-09-14 10:24:05'),
(909, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/250\' > APMT-244</a > </b > (rahul) has been visited.', 'READ', '2020-06-15 10:07:03', '2020-09-13 12:08:11'),
(910, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/250\' > APMT-244</a > </b > (rahul) has been visited.', 'READ', '2020-06-15 10:07:03', '2020-09-14 10:24:05'),
(911, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/261\' > APMT-255</a > </b > (rammy) has been visited.', 'READ', '2020-06-15 10:07:04', '2020-09-13 12:08:11'),
(912, 191, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/261\' > APMT-255</a > </b > (rammy) has been visited.', 'UNREAD', '2020-06-15 10:07:04', '2020-06-15 10:07:04'),
(913, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/262\' > APMT-256</a > </b > (farukh) has been visited.', 'READ', '2020-06-15 10:07:05', '2020-09-13 12:08:11'),
(914, 192, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/262\' > APMT-256</a > </b > (farukh) has been visited.', 'UNREAD', '2020-06-15 10:07:05', '2020-06-15 10:07:05'),
(915, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/263\' > APMT-257</a > </b > (ramesh pathani) has been visited.', 'READ', '2020-06-15 10:07:17', '2020-09-13 12:08:11'),
(916, 193, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/263\' > APMT-257</a > </b > (ramesh pathani) has been visited.', 'UNREAD', '2020-06-15 10:07:17', '2020-06-15 10:07:17'),
(917, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/264\' > APMT-258</a > </b > (ravi) has been visited.', 'READ', '2020-06-15 10:07:18', '2020-09-13 12:08:11'),
(918, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/264\' > APMT-258</a > </b > (ravi) has been visited.', 'READ', '2020-06-15 10:07:18', '2020-09-14 10:24:05'),
(919, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/265\' > APMT-259</a > </b > (satish) has been visited.', 'READ', '2020-06-15 10:07:19', '2020-09-13 12:08:11'),
(920, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/265\' > APMT-259</a > </b > (satish) has been visited.', 'READ', '2020-06-15 10:07:19', '2020-09-14 10:24:05'),
(921, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/266\' > APMT-260</a > </b > (fage) has been visited.', 'READ', '2020-06-15 10:07:20', '2020-09-13 12:08:11'),
(922, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/266\' > APMT-260</a > </b > (fage) has been visited.', 'READ', '2020-06-15 10:07:20', '2020-09-14 10:24:05'),
(923, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/271\' > APMT-265</a > </b > (satish) has been visited.', 'READ', '2020-06-15 10:07:22', '2020-09-13 12:08:11'),
(924, 195, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/271\' > APMT-265</a > </b > (satish) has been visited.', 'UNREAD', '2020-06-15 10:07:22', '2020-06-15 10:07:22'),
(925, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/272\' > APMT-266</a > </b > (RAJESH) has been visited.', 'READ', '2020-06-15 10:07:22', '2020-09-13 12:08:11'),
(926, 196, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/272\' > APMT-266</a > </b > (RAJESH) has been visited.', 'UNREAD', '2020-06-15 10:07:22', '2020-06-15 10:07:22'),
(927, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/273\' > APMT-267</a > </b > (Rammy) has been visited.', 'READ', '2020-06-15 10:07:23', '2020-09-13 12:08:11'),
(928, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/273\' > APMT-267</a > </b > (Rammy) has been visited.', 'READ', '2020-06-15 10:07:23', '2020-09-14 10:24:05'),
(929, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/274\' > APMT-268</a > </b > (Tonny) has been visited.', 'READ', '2020-06-15 10:07:23', '2020-09-13 12:08:11'),
(930, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/274\' > APMT-268</a > </b > (Tonny) has been visited.', 'READ', '2020-06-15 10:07:23', '2020-09-14 10:24:05'),
(931, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/275\' > APMT-269</a > </b > (Rahul) has been visited.', 'READ', '2020-06-15 10:07:34', '2020-09-13 12:08:11'),
(932, 197, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/275\' > APMT-269</a > </b > (Rahul) has been visited.', 'UNREAD', '2020-06-15 10:07:34', '2020-06-15 10:07:34'),
(933, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/276\' > APMT-270</a > </b > (rahul singh) has been booked', 'READ', '2020-06-15 10:09:04', '2020-09-13 12:08:11'),
(934, 198, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/276\' > APMT-270</a > </b > (rahul singh) has been booked', 'UNREAD', '2020-06-15 10:09:04', '2020-06-15 10:09:04'),
(935, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/277\' > APMT-271</a > </b > (Arjun) has been booked', 'READ', '2020-06-15 10:10:22', '2020-09-13 12:08:11'),
(936, 199, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/277\' > APMT-271</a > </b > (Arjun) has been booked', 'UNREAD', '2020-06-15 10:10:22', '2020-06-15 10:10:22'),
(937, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/278\' > APMT-272</a > </b > (Tonny) has been booked', 'READ', '2020-06-15 10:11:09', '2020-09-13 12:08:11'),
(938, 46, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/278\' > APMT-272</a > </b > (Tonny) has been booked', 'READ', '2020-06-15 10:11:09', '2020-09-14 10:24:05'),
(939, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/279\' > APMT-273</a > </b > (Rammy) has been booked', 'READ', '2020-06-15 10:12:02', '2020-09-13 12:08:11'),
(940, 200, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/279\' > APMT-273</a > </b > (Rammy) has been booked', 'READ', '2020-06-15 10:12:02', '2020-06-15 12:00:22'),
(941, 17, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/6\' > APMT-4</a > </b > (Himmat Rao) has been approved.', 'UNREAD', '2020-06-15 10:30:11', '2020-06-15 10:30:11'),
(942, 18, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/6\' > APMT-4</a > </b > (Himmat Rao) has been approved.', 'READ', '2020-06-15 10:30:11', '2021-03-14 20:55:47'),
(943, 17, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/6\' > APMT-4</a > </b > (Himmat Rao) has been visited.', 'UNREAD', '2020-06-15 10:30:15', '2020-06-15 10:30:15'),
(944, 18, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/6\' > APMT-4</a > </b > (Himmat Rao) has been visited.', 'READ', '2020-06-15 10:30:15', '2021-03-14 20:55:47');
INSERT INTO `notifications` (`id`, `user_id`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(945, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/98\' > APMT-92</a > </b > (harsh m varma) has been visited.', 'UNREAD', '2020-06-15 10:30:16', '2020-06-15 10:30:16'),
(946, 18, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/98\' > APMT-92</a > </b > (harsh m varma) has been visited.', 'READ', '2020-06-15 10:30:16', '2021-03-14 20:55:47'),
(947, 62, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/99\' > APMT-93</a > </b > (mehul prajapati) has been visited.', 'UNREAD', '2020-06-15 10:30:28', '2020-06-15 10:30:28'),
(948, 18, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/99\' > APMT-93</a > </b > (mehul prajapati) has been visited.', 'READ', '2020-06-15 10:30:28', '2021-03-14 20:55:47'),
(949, 17, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/100\' > APMT-94</a > </b > (raju m soni) has been visited.', 'UNREAD', '2020-06-15 10:30:37', '2020-06-15 10:30:37'),
(950, 18, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/100\' > APMT-94</a > </b > (raju m soni) has been visited.', 'READ', '2020-06-15 10:30:37', '2021-03-14 20:55:47'),
(951, 57, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/101\' > APMT-95</a > </b > (sabir khan) has been visited.', 'UNREAD', '2020-06-15 10:30:49', '2020-06-15 10:30:49'),
(952, 18, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/101\' > APMT-95</a > </b > (sabir khan) has been visited.', 'READ', '2020-06-15 10:30:49', '2021-03-14 20:55:47'),
(953, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/280\' > APMT-274</a > </b > (Rammy) has been booked', 'READ', '2020-06-15 10:32:32', '2021-03-14 20:52:27'),
(954, 201, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/280\' > APMT-274</a > </b > (Rammy) has been booked', 'UNREAD', '2020-06-15 10:32:32', '2020-06-15 10:32:32'),
(955, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/281\' > APMT-275</a > </b > (Nishant) has been booked', 'READ', '2020-06-15 10:33:22', '2021-03-14 20:52:27'),
(956, 202, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/281\' > APMT-275</a > </b > (Nishant) has been booked', 'UNREAD', '2020-06-15 10:33:22', '2020-06-15 10:33:22'),
(957, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/282\' > APMT-276</a > </b > (Raj) has been booked', 'READ', '2020-06-15 10:34:04', '2021-03-14 20:52:27'),
(958, 203, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/282\' > APMT-276</a > </b > (Raj) has been booked', 'READ', '2020-06-15 10:34:04', '2020-06-15 12:58:32'),
(959, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/283\' > APMT-277</a > </b > (Tonny) has been booked', 'READ', '2020-06-15 10:36:08', '2021-03-14 20:52:27'),
(960, 18, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/283\' > APMT-277</a > </b > (Tonny) has been booked', 'READ', '2020-06-15 10:36:08', '2021-03-14 20:55:47'),
(961, 53, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/268\' > APMT-262</a > </b > (john) has been canceled by patient', 'UNREAD', '2020-06-15 10:36:28', '2020-06-15 10:36:28'),
(962, 53, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/267\' > APMT-261</a > </b > (john) has been canceled by patient', 'UNREAD', '2020-06-15 10:36:37', '2020-06-15 10:36:37'),
(963, 4, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/283\' > APMT-277</a > </b > (Tonny) has been approved.', 'READ', '2020-06-15 10:39:39', '2021-03-14 20:52:27'),
(964, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/283\' > APMT-277</a > </b > (Tonny) has been approved.', 'READ', '2020-06-15 10:39:39', '2020-09-14 10:24:05'),
(965, 34, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/283\' > APMT-277</a > </b > (Tonny) has been approved.', 'UNREAD', '2020-06-15 10:39:39', '2020-06-15 10:39:39'),
(966, 198, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/276\' > APMT-270</a > </b > (rahul singh) has been visited.', 'UNREAD', '2020-06-15 10:47:31', '2020-06-15 10:47:31'),
(967, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/276\' > APMT-270</a > </b > (rahul singh) has been visited.', 'READ', '2020-06-15 10:47:31', '2020-09-13 10:55:29'),
(968, 201, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/280\' > APMT-274</a > </b > (Rammy) has been visited.', 'UNREAD', '2020-06-15 11:41:11', '2020-06-15 11:41:11'),
(969, 18, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/280\' > APMT-274</a > </b > (Rammy) has been visited.', 'READ', '2020-06-15 11:41:11', '2021-03-14 20:55:47'),
(970, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/284\' > APMT-278</a > </b > (ALTAF) has been booked', 'READ', '2020-06-15 11:43:35', '2021-03-14 20:52:27'),
(971, 204, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/284\' > APMT-278</a > </b > (ALTAF) has been booked', 'UNREAD', '2020-06-15 11:43:36', '2020-06-15 11:43:36'),
(972, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/285\' > APMT-279</a > </b > (SAMEERA) has been booked', 'READ', '2020-06-15 11:44:42', '2021-03-14 20:52:27'),
(973, 205, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/285\' > APMT-279</a > </b > (SAMEERA) has been booked', 'READ', '2020-06-15 11:44:42', '2020-06-15 23:20:31'),
(974, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/286\' > APMT-280</a > </b > (RAHUL) has been booked', 'READ', '2020-06-15 11:45:46', '2021-03-14 20:52:27'),
(975, 18, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/286\' > APMT-280</a > </b > (RAHUL) has been booked', 'READ', '2020-06-15 11:45:46', '2021-03-14 20:55:47'),
(976, 4, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/286\' > APMT-280</a > </b > (RAHUL) has been approved.', 'READ', '2020-06-15 11:46:09', '2021-03-14 20:52:27'),
(977, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/286\' > APMT-280</a > </b > (RAHUL) has been approved.', 'READ', '2020-06-15 11:46:09', '2020-09-14 10:24:05'),
(978, 34, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/286\' > APMT-280</a > </b > (RAHUL) has been approved.', 'UNREAD', '2020-06-15 11:46:09', '2020-06-15 11:46:09'),
(979, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/287\' > APMT-281</a > </b > (FAGE) has been booked', 'READ', '2020-06-15 11:48:47', '2020-09-13 12:08:11'),
(980, 206, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/287\' > APMT-281</a > </b > (FAGE) has been booked', 'UNREAD', '2020-06-15 11:48:48', '2020-06-15 11:48:48'),
(981, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/288\' > APMT-282</a > </b > (jaimin) has been booked', 'READ', '2020-06-15 11:50:20', '2020-09-13 12:08:11'),
(982, 46, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/288\' > APMT-282</a > </b > (jaimin) has been booked', 'READ', '2020-06-15 11:50:20', '2020-09-14 10:24:05'),
(983, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/289\' > APMT-283</a > </b > (shahid) has been booked', 'READ', '2020-06-15 11:56:38', '2020-09-13 12:08:11'),
(984, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/289\' > APMT-283</a > </b > (shahid) has been booked', 'READ', '2020-06-15 11:56:38', '2020-09-13 10:55:29'),
(985, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/289\' > APMT-283</a > </b > (shahid) has been approved.', 'READ', '2020-06-15 11:59:01', '2020-09-13 12:08:11'),
(986, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/289\' > APMT-283</a > </b > (shahid) has been approved.', 'READ', '2020-06-15 11:59:01', '2020-09-14 10:24:05'),
(987, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/289\' > APMT-283</a > </b > (shahid) has been approved.', 'UNREAD', '2020-06-15 11:59:01', '2020-06-15 11:59:01'),
(988, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/290\' > APMT-284</a > </b > (ravi) has been booked', 'READ', '2020-06-15 12:03:04', '2020-09-13 12:08:11'),
(989, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/290\' > APMT-284</a > </b > (ravi) has been booked', 'READ', '2020-06-15 12:03:04', '2020-09-13 10:55:29'),
(990, 200, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/290\' > APMT-284</a > </b > (ravi) has been approved.', 'UNREAD', '2020-06-15 12:03:36', '2020-06-15 12:03:36'),
(991, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/290\' > APMT-284</a > </b > (ravi) has been approved.', 'READ', '2020-06-15 12:03:36', '2020-09-13 10:55:29'),
(992, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/291\' > APMT-285</a > </b > (rajesh) has been booked', 'READ', '2020-06-15 12:06:06', '2021-03-14 20:52:27'),
(993, 18, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/291\' > APMT-285</a > </b > (rajesh) has been booked', 'READ', '2020-06-15 12:06:06', '2021-03-14 20:55:47'),
(994, 200, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/291\' > APMT-285</a > </b > (rajesh) has been approved.', 'UNREAD', '2020-06-15 12:07:13', '2020-06-15 12:07:13'),
(995, 18, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/291\' > APMT-285</a > </b > (rajesh) has been approved.', 'READ', '2020-06-15 12:07:13', '2021-03-14 20:55:47'),
(996, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/292\' > APMT-286</a > </b > (munir) has been booked', 'READ', '2020-06-15 12:11:03', '2020-09-13 12:08:11'),
(997, 4, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/293\' > APMT-287</a > </b > (ram) has been booked', 'READ', '2020-06-15 12:57:21', '2021-03-14 20:52:27'),
(998, 18, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/293\' > APMT-287</a > </b > (ram) has been booked', 'READ', '2020-06-15 12:57:21', '2021-03-14 20:55:47'),
(999, 203, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/293\' > APMT-287</a > </b > (ram) has been approved.', 'READ', '2020-06-15 12:58:03', '2020-06-15 12:58:32'),
(1000, 18, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/293\' > APMT-287</a > </b > (ram) has been approved.', 'READ', '2020-06-15 12:58:03', '2021-03-14 20:55:47'),
(1001, 19, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/174\' > APMT-168</a > </b > (Vicky Maurya) has been canceled.', 'UNREAD', '2020-06-15 13:10:55', '2020-06-15 13:10:55'),
(1002, 106, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/174\' > APMT-168</a > </b > (Vicky Maurya) has been canceled.', 'UNREAD', '2020-06-15 13:10:55', '2020-06-15 13:10:55'),
(1003, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/294\' > APMT-288</a > </b > (ramesh) has been booked', 'UNREAD', '2020-06-15 13:12:01', '2020-06-15 13:12:01'),
(1004, 207, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/294\' > APMT-288</a > </b > (ramesh) has been booked', 'UNREAD', '2020-06-15 13:12:01', '2020-06-15 13:12:01'),
(1005, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/295\' > APMT-289</a > </b > (rahul) has been booked', 'UNREAD', '2020-06-15 13:12:54', '2020-06-15 13:12:54'),
(1006, 208, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/295\' > APMT-289</a > </b > (rahul) has been booked', 'UNREAD', '2020-06-15 13:12:54', '2020-06-15 13:12:54'),
(1007, 19, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/52\' > APMT-46</a > </b > (rony sharma) has been canceled.', 'UNREAD', '2020-06-15 13:13:56', '2020-06-15 13:13:56'),
(1008, 35, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/52\' > APMT-46</a > </b > (rony sharma) has been canceled.', 'UNREAD', '2020-06-15 13:13:56', '2020-06-15 13:13:56'),
(1009, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/296\' > APMT-290</a > </b > (rajesh) has been booked', 'UNREAD', '2020-06-15 13:16:51', '2020-06-15 13:16:51'),
(1010, 209, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/296\' > APMT-290</a > </b > (rajesh) has been booked', 'READ', '2020-06-15 13:16:51', '2020-06-15 13:26:14'),
(1011, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/297\' > APMT-291</a > </b > (rammi) has been booked', 'UNREAD', '2020-06-15 13:18:19', '2020-06-15 13:18:19'),
(1012, 38, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/297\' > APMT-291</a > </b > (rammi) has been booked', 'UNREAD', '2020-06-15 13:18:19', '2020-06-15 13:18:19'),
(1013, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/298\' > APMT-292</a > </b > (tonny) has been booked', 'UNREAD', '2020-06-15 13:19:45', '2020-06-15 13:19:45'),
(1014, 210, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/298\' > APMT-292</a > </b > (tonny) has been booked', 'UNREAD', '2020-06-15 13:19:45', '2020-06-15 13:19:45'),
(1015, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/299\' > APMT-293</a > </b > (ramdev) has been booked', 'UNREAD', '2020-06-15 13:22:08', '2020-06-15 13:22:08'),
(1016, 38, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/299\' > APMT-293</a > </b > (ramdev) has been booked', 'UNREAD', '2020-06-15 13:22:08', '2020-06-15 13:22:08'),
(1017, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/300\' > APMT-294</a > </b > (jimmy) has been booked', 'UNREAD', '2020-06-15 13:23:33', '2020-06-15 13:23:33'),
(1018, 211, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/300\' > APMT-294</a > </b > (jimmy) has been booked', 'UNREAD', '2020-06-15 13:23:33', '2020-06-15 13:23:33'),
(1019, 19, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/297\' > APMT-291</a > </b > (rammi) has been approved.', 'UNREAD', '2020-06-15 13:23:40', '2020-06-15 13:23:40'),
(1020, 209, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/297\' > APMT-291</a > </b > (rammi) has been approved.', 'READ', '2020-06-15 13:23:40', '2020-06-15 13:26:14'),
(1021, 37, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/297\' > APMT-291</a > </b > (rammi) has been approved.', 'UNREAD', '2020-06-15 13:23:40', '2020-06-15 13:23:40'),
(1022, 19, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/299\' > APMT-293</a > </b > (ramdev) has been approved.', 'UNREAD', '2020-06-15 13:23:57', '2020-06-15 13:23:57'),
(1023, 209, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/299\' > APMT-293</a > </b > (ramdev) has been approved.', 'READ', '2020-06-15 13:23:57', '2020-06-15 13:26:14'),
(1024, 37, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/299\' > APMT-293</a > </b > (ramdev) has been approved.', 'UNREAD', '2020-06-15 13:23:57', '2020-06-15 13:23:57'),
(1025, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/301\' > APMT-295</a > </b > (aldo) has been booked', 'UNREAD', '2020-06-15 13:34:06', '2020-06-15 13:34:06'),
(1026, 38, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/301\' > APMT-295</a > </b > (aldo) has been booked', 'UNREAD', '2020-06-15 13:34:06', '2020-06-15 13:34:06'),
(1027, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/302\' > APMT-296</a > </b > (facw) has been booked', 'UNREAD', '2020-06-15 13:35:20', '2020-06-15 13:35:20'),
(1028, 38, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/302\' > APMT-296</a > </b > (facw) has been booked', 'UNREAD', '2020-06-15 13:35:20', '2020-06-15 13:35:20'),
(1029, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/301\' > APMT-295</a > </b > (aldo) has been approved.', 'READ', '2020-06-15 13:41:09', '2020-09-14 10:24:05'),
(1030, 38, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/301\' > APMT-295</a > </b > (aldo) has been approved.', 'UNREAD', '2020-06-15 13:41:09', '2020-06-15 13:41:09'),
(1031, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/303\' > APMT-297</a > </b > (game) has been booked', 'UNREAD', '2020-06-15 13:44:39', '2020-06-15 13:44:39'),
(1032, 212, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/303\' > APMT-297</a > </b > (game) has been booked', 'UNREAD', '2020-06-15 13:44:39', '2020-06-15 13:44:39'),
(1033, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/304\' > APMT-298</a > </b > (easter) has been booked', 'UNREAD', '2020-06-15 13:45:35', '2020-06-15 13:45:35'),
(1034, 213, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/304\' > APMT-298</a > </b > (easter) has been booked', 'UNREAD', '2020-06-15 13:45:35', '2020-06-15 13:45:35'),
(1035, 19, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/302\' > APMT-296</a > </b > (facw) has been approved.', 'UNREAD', '2020-06-15 13:46:46', '2020-06-15 13:46:46'),
(1036, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/302\' > APMT-296</a > </b > (facw) has been approved.', 'READ', '2020-06-15 13:46:46', '2020-09-14 10:24:05'),
(1037, 37, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/302\' > APMT-296</a > </b > (facw) has been approved.', 'UNREAD', '2020-06-15 13:46:46', '2020-06-15 13:46:46'),
(1038, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/305\' > APMT-299</a > </b > (dase) has been booked', 'UNREAD', '2020-06-15 13:50:45', '2020-06-15 13:50:45'),
(1039, 38, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/305\' > APMT-299</a > </b > (dase) has been booked', 'UNREAD', '2020-06-15 13:50:45', '2020-06-15 13:50:45'),
(1040, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/306\' > APMT-300</a > </b > (case) has been booked', 'UNREAD', '2020-06-15 13:51:29', '2020-06-15 13:51:29'),
(1041, 38, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/306\' > APMT-300</a > </b > (case) has been booked', 'UNREAD', '2020-06-15 13:51:29', '2020-06-15 13:51:29'),
(1042, 19, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/305\' > APMT-299</a > </b > (dase) has been approved.', 'UNREAD', '2020-06-15 13:52:16', '2020-06-15 13:52:16'),
(1043, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/305\' > APMT-299</a > </b > (dase) has been approved.', 'READ', '2020-06-15 13:52:16', '2020-09-14 10:24:05'),
(1044, 37, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/305\' > APMT-299</a > </b > (dase) has been approved.', 'UNREAD', '2020-06-15 13:52:16', '2020-06-15 13:52:16'),
(1045, 19, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/306\' > APMT-300</a > </b > (case) has been approved.', 'UNREAD', '2020-06-15 13:52:41', '2020-06-15 13:52:41'),
(1046, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/306\' > APMT-300</a > </b > (case) has been approved.', 'READ', '2020-06-15 13:52:41', '2020-09-14 10:24:05'),
(1047, 37, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/306\' > APMT-300</a > </b > (case) has been approved.', 'UNREAD', '2020-06-15 13:52:41', '2020-06-15 13:52:41'),
(1048, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/307\' > APMT-301</a > </b > (dgm) has been booked', 'UNREAD', '2020-06-15 13:55:12', '2020-06-15 13:55:12'),
(1049, 38, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/307\' > APMT-301</a > </b > (dgm) has been booked', 'UNREAD', '2020-06-15 13:55:12', '2020-06-15 13:55:12'),
(1050, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/308\' > APMT-302</a > </b > (mpg) has been booked', 'UNREAD', '2020-06-15 13:55:49', '2020-06-15 13:55:49'),
(1051, 38, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/308\' > APMT-302</a > </b > (mpg) has been booked', 'UNREAD', '2020-06-15 13:55:49', '2020-06-15 13:55:49'),
(1052, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/309\' > APMT-303</a > </b > (wer) has been booked', 'UNREAD', '2020-06-15 13:57:38', '2020-06-15 13:57:38'),
(1053, 214, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/309\' > APMT-303</a > </b > (wer) has been booked', 'UNREAD', '2020-06-15 13:57:38', '2020-06-15 13:57:38'),
(1054, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/310\' > APMT-304</a > </b > (fgh) has been booked', 'UNREAD', '2020-06-15 13:58:50', '2020-06-15 13:58:50'),
(1055, 215, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/310\' > APMT-304</a > </b > (fgh) has been booked', 'UNREAD', '2020-06-15 13:58:50', '2020-06-15 13:58:50'),
(1056, 19, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/307\' > APMT-301</a > </b > (dgm) has been approved.', 'UNREAD', '2020-06-15 13:59:11', '2020-06-15 13:59:11'),
(1057, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/307\' > APMT-301</a > </b > (dgm) has been approved.', 'READ', '2020-06-15 13:59:11', '2020-09-14 10:24:05'),
(1058, 37, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/307\' > APMT-301</a > </b > (dgm) has been approved.', 'UNREAD', '2020-06-15 13:59:11', '2020-06-15 13:59:11'),
(1059, 19, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/308\' > APMT-302</a > </b > (mpg) has been approved.', 'UNREAD', '2020-06-15 13:59:27', '2020-06-15 13:59:27'),
(1060, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/308\' > APMT-302</a > </b > (mpg) has been approved.', 'READ', '2020-06-15 13:59:27', '2020-09-14 10:24:05'),
(1061, 37, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/308\' > APMT-302</a > </b > (mpg) has been approved.', 'UNREAD', '2020-06-15 13:59:27', '2020-06-15 13:59:27'),
(1062, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/311\' > APMT-305</a > </b > (dfg) has been booked', 'UNREAD', '2020-06-15 14:04:36', '2020-06-15 14:04:36'),
(1063, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/312\' > APMT-306</a > </b > (cdf) has been booked', 'UNREAD', '2020-06-15 14:05:21', '2020-06-15 14:05:21'),
(1064, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/313\' > APMT-307</a > </b > (tre) has been booked', 'UNREAD', '2020-06-15 14:06:11', '2020-06-15 14:06:11'),
(1065, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/314\' > APMT-308</a > </b > (bas) has been booked', 'UNREAD', '2020-06-15 14:07:16', '2020-06-15 14:07:16'),
(1066, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/226\' > APMT-220</a > </b > (Joshi Anil kumar Popatlal) has been approved.', 'UNREAD', '2020-06-15 14:08:11', '2020-06-15 14:08:11'),
(1067, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/311\' > APMT-305</a > </b > (dfg) has been approved.', 'READ', '2020-06-15 14:08:12', '2020-09-14 10:24:05'),
(1068, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/312\' > APMT-306</a > </b > (cdf) has been approved.', 'READ', '2020-06-15 14:08:14', '2020-09-14 10:24:05'),
(1069, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/313\' > APMT-307</a > </b > (tre) has been approved.', 'READ', '2020-06-15 14:08:15', '2020-09-14 10:24:05'),
(1070, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/220\' > APMT-214</a > </b > (Joshi Anilkumar Popatlal) has been visited.', 'UNREAD', '2020-06-15 14:08:32', '2020-06-15 14:08:32'),
(1071, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/314\' > APMT-308</a > </b > (bas) has been approved.', 'READ', '2020-06-15 14:08:47', '2020-09-14 10:24:05'),
(1072, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/226\' > APMT-220</a > </b > (Joshi Anil kumar Popatlal) has been visited.', 'UNREAD', '2020-06-15 14:09:07', '2020-06-15 14:09:07'),
(1073, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/315\' > APMT-309</a > </b > (asd) has been booked', 'UNREAD', '2020-06-15 14:14:56', '2020-06-15 14:14:56'),
(1074, 216, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/315\' > APMT-309</a > </b > (asd) has been booked', 'UNREAD', '2020-06-15 14:14:56', '2020-06-15 14:14:56'),
(1075, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/316\' > APMT-310</a > </b > (ydj) has been booked', 'UNREAD', '2020-06-15 14:15:39', '2020-06-15 14:15:39'),
(1076, 217, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/316\' > APMT-310</a > </b > (ydj) has been booked', 'UNREAD', '2020-06-15 14:15:39', '2020-06-15 14:15:39'),
(1077, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/317\' > APMT-311</a > </b > (alk) has been booked', 'UNREAD', '2020-06-15 14:16:20', '2020-06-15 14:16:20'),
(1078, 218, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/317\' > APMT-311</a > </b > (alk) has been booked', 'UNREAD', '2020-06-15 14:16:20', '2020-06-15 14:16:20'),
(1079, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/318\' > APMT-312</a > </b > (fdr) has been booked', 'UNREAD', '2020-06-15 14:17:14', '2020-06-15 14:17:14'),
(1080, 219, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/318\' > APMT-312</a > </b > (fdr) has been booked', 'UNREAD', '2020-06-15 14:17:14', '2020-06-15 14:17:14'),
(1081, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/319\' > APMT-313</a > </b > (gfr) has been booked', 'UNREAD', '2020-06-15 14:18:40', '2020-06-15 14:18:40'),
(1082, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/320\' > APMT-314</a > </b > (rbj) has been booked', 'UNREAD', '2020-06-15 14:19:24', '2020-06-15 14:19:24'),
(1083, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/321\' > APMT-315</a > </b > (cxr) has been booked', 'UNREAD', '2020-06-15 14:20:05', '2020-06-15 14:20:05'),
(1084, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/322\' > APMT-316</a > </b > (gmi) has been booked', 'UNREAD', '2020-06-15 14:20:50', '2020-06-15 14:20:50'),
(1085, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/319\' > APMT-313</a > </b > (gfr) has been approved.', 'READ', '2020-06-15 14:22:33', '2020-09-14 10:24:05'),
(1086, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/320\' > APMT-314</a > </b > (rbj) has been approved.', 'READ', '2020-06-15 14:22:49', '2020-09-14 10:24:05'),
(1087, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/321\' > APMT-315</a > </b > (cxr) has been approved.', 'READ', '2020-06-15 14:23:03', '2020-09-14 10:24:05'),
(1088, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/322\' > APMT-316</a > </b > (gmi) has been approved.', 'READ', '2020-06-15 14:23:04', '2020-09-14 10:24:05'),
(1089, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/323\' > APMT-317</a > </b > (asd) has been booked', 'UNREAD', '2020-06-15 14:32:09', '2020-06-15 14:32:09'),
(1090, 221, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/323\' > APMT-317</a > </b > (asd) has been booked', 'UNREAD', '2020-06-15 14:32:09', '2020-06-15 14:32:09'),
(1091, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/324\' > APMT-318</a > </b > (ydj) has been booked', 'UNREAD', '2020-06-15 14:32:49', '2020-06-15 14:32:49'),
(1092, 222, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/324\' > APMT-318</a > </b > (ydj) has been booked', 'UNREAD', '2020-06-15 14:32:49', '2020-06-15 14:32:49'),
(1093, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/325\' > APMT-319</a > </b > (alk) has been booked', 'UNREAD', '2020-06-15 14:33:30', '2020-06-15 14:33:30'),
(1094, 223, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/325\' > APMT-319</a > </b > (alk) has been booked', 'UNREAD', '2020-06-15 14:33:30', '2020-06-15 14:33:30'),
(1095, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/326\' > APMT-320</a > </b > (dfr) has been booked', 'UNREAD', '2020-06-15 14:34:10', '2020-06-15 14:34:10'),
(1096, 224, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/326\' > APMT-320</a > </b > (dfr) has been booked', 'UNREAD', '2020-06-15 14:34:10', '2020-06-15 14:34:10'),
(1097, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/327\' > APMT-321</a > </b > (gma) has been booked', 'UNREAD', '2020-06-15 14:35:27', '2020-06-15 14:35:27'),
(1098, 220, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/327\' > APMT-321</a > </b > (gma) has been booked', 'UNREAD', '2020-06-15 14:35:27', '2020-06-15 14:35:27'),
(1099, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/328\' > APMT-322</a > </b > (iald) has been booked', 'UNREAD', '2020-06-15 14:36:07', '2020-06-15 14:36:07'),
(1100, 220, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/328\' > APMT-322</a > </b > (iald) has been booked', 'UNREAD', '2020-06-15 14:36:07', '2020-06-15 14:36:07'),
(1101, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/329\' > APMT-323</a > </b > (sum) has been booked', 'UNREAD', '2020-06-15 14:36:46', '2020-06-15 14:36:46'),
(1102, 220, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/329\' > APMT-323</a > </b > (sum) has been booked', 'UNREAD', '2020-06-15 14:36:46', '2020-06-15 14:36:46'),
(1103, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/330\' > APMT-324</a > </b > (lad) has been booked', 'UNREAD', '2020-06-15 14:37:22', '2020-06-15 14:37:22'),
(1104, 220, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/330\' > APMT-324</a > </b > (lad) has been booked', 'UNREAD', '2020-06-15 14:37:23', '2020-06-15 14:37:23'),
(1105, 55, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/327\' > APMT-321</a > </b > (gma) has been approved.', 'UNREAD', '2020-06-15 14:37:59', '2020-06-15 14:37:59'),
(1106, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/327\' > APMT-321</a > </b > (gma) has been approved.', 'READ', '2020-06-15 14:37:59', '2020-09-14 10:24:05'),
(1107, 55, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/328\' > APMT-322</a > </b > (iald) has been approved.', 'UNREAD', '2020-06-15 14:38:11', '2020-06-15 14:38:11'),
(1108, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/328\' > APMT-322</a > </b > (iald) has been approved.', 'READ', '2020-06-15 14:38:11', '2020-09-14 10:24:05'),
(1109, 55, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/329\' > APMT-323</a > </b > (sum) has been approved.', 'UNREAD', '2020-06-15 14:38:22', '2020-06-15 14:38:22'),
(1110, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/329\' > APMT-323</a > </b > (sum) has been approved.', 'READ', '2020-06-15 14:38:22', '2020-09-14 10:24:05'),
(1111, 55, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/330\' > APMT-324</a > </b > (lad) has been approved.', 'UNREAD', '2020-06-15 14:38:27', '2020-06-15 14:38:27'),
(1112, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/330\' > APMT-324</a > </b > (lad) has been approved.', 'READ', '2020-06-15 14:38:27', '2020-09-14 10:24:05'),
(1113, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/331\' > APMT-325</a > </b > (gjf) has been booked', 'UNREAD', '2020-06-15 14:42:34', '2020-06-15 14:42:34'),
(1114, 225, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/331\' > APMT-325</a > </b > (gjf) has been booked', 'READ', '2020-06-15 14:42:34', '2020-06-15 14:46:00'),
(1115, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/332\' > APMT-326</a > </b > (rbi) has been booked', 'UNREAD', '2020-06-15 14:43:34', '2020-06-15 14:43:34'),
(1116, 226, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/332\' > APMT-326</a > </b > (rbi) has been booked', 'READ', '2020-06-15 14:43:34', '2020-06-15 15:03:47'),
(1117, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/333\' > APMT-327</a > </b > (smy) has been booked', 'UNREAD', '2020-06-15 14:45:18', '2020-06-15 14:45:18'),
(1118, 220, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/333\' > APMT-327</a > </b > (smy) has been booked', 'UNREAD', '2020-06-15 14:45:18', '2020-06-15 14:45:18'),
(1119, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/334\' > APMT-328</a > </b > (gmi) has been booked', 'UNREAD', '2020-06-15 14:49:12', '2020-06-15 14:49:12'),
(1120, 220, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/334\' > APMT-328</a > </b > (gmi) has been booked', 'UNREAD', '2020-06-15 14:49:12', '2020-06-15 14:49:12'),
(1121, 225, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/333\' > APMT-327</a > </b > (smy) has been approved.', 'UNREAD', '2020-06-15 14:50:04', '2020-06-15 14:50:04'),
(1122, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/333\' > APMT-327</a > </b > (smy) has been approved.', 'UNREAD', '2020-06-15 14:50:04', '2020-06-15 14:50:04'),
(1123, 226, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/334\' > APMT-328</a > </b > (gmi) has been approved.', 'READ', '2020-06-15 14:50:16', '2020-06-15 15:03:47'),
(1124, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/334\' > APMT-328</a > </b > (gmi) has been approved.', 'UNREAD', '2020-06-15 14:50:16', '2020-06-15 14:50:16'),
(1125, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/335\' > APMT-329</a > </b > (raw) has been booked', 'UNREAD', '2020-06-15 14:52:52', '2020-06-15 14:52:52'),
(1126, 220, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/335\' > APMT-329</a > </b > (raw) has been booked', 'UNREAD', '2020-06-15 14:52:52', '2020-06-15 14:52:52'),
(1127, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/336\' > APMT-330</a > </b > (dazy) has been booked', 'UNREAD', '2020-06-15 14:53:38', '2020-06-15 14:53:38'),
(1128, 220, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/336\' > APMT-330</a > </b > (dazy) has been booked', 'UNREAD', '2020-06-15 14:53:38', '2020-06-15 14:53:38'),
(1129, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/335\' > APMT-329</a > </b > (raw) has been approved.', 'READ', '2020-06-15 14:54:11', '2020-09-14 10:24:05'),
(1130, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/335\' > APMT-329</a > </b > (raw) has been approved.', 'UNREAD', '2020-06-15 14:54:11', '2020-06-15 14:54:11'),
(1131, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/336\' > APMT-330</a > </b > (dazy) has been approved.', 'READ', '2020-06-15 14:54:25', '2020-09-14 10:24:05'),
(1132, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/336\' > APMT-330</a > </b > (dazy) has been approved.', 'UNREAD', '2020-06-15 14:54:25', '2020-06-15 14:54:25'),
(1133, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/311\' > APMT-305</a > </b > (dfg) has been visited.', 'READ', '2020-06-15 14:57:49', '2020-09-14 10:24:05'),
(1134, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/311\' > APMT-305</a > </b > (dfg) has been visited.', 'UNREAD', '2020-06-15 14:57:49', '2020-06-15 14:57:49'),
(1135, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/312\' > APMT-306</a > </b > (cdf) has been visited.', 'READ', '2020-06-15 14:58:59', '2020-09-14 10:24:05'),
(1136, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/312\' > APMT-306</a > </b > (cdf) has been visited.', 'UNREAD', '2020-06-15 14:58:59', '2020-06-15 14:58:59'),
(1137, 202, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/281\' > APMT-275</a > </b > (Nishant) has been visited.', 'UNREAD', '2020-06-15 15:05:40', '2020-06-15 15:05:40'),
(1138, 18, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/281\' > APMT-275</a > </b > (Nishant) has been visited.', 'READ', '2020-06-15 15:05:40', '2021-03-14 20:55:47'),
(1139, 203, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/282\' > APMT-276</a > </b > (Raj) has been visited.', 'UNREAD', '2020-06-15 15:07:02', '2020-06-15 15:07:02'),
(1140, 18, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/282\' > APMT-276</a > </b > (Raj) has been visited.', 'READ', '2020-06-15 15:07:02', '2021-03-14 20:55:47'),
(1141, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/337\' > APMT-331</a > </b > (sda) has been booked', 'READ', '2020-06-15 15:43:16', '2020-09-13 12:08:11'),
(1142, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/337\' > APMT-331</a > </b > (sda) has been booked', 'READ', '2020-06-15 15:43:16', '2020-09-13 10:55:29'),
(1143, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/337\' > APMT-331</a > </b > (sda) has been approved.', 'READ', '2020-06-15 15:44:07', '2020-09-13 12:08:11'),
(1144, 205, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/337\' > APMT-331</a > </b > (sda) has been approved.', 'READ', '2020-06-15 15:44:07', '2020-06-15 23:20:31'),
(1145, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/337\' > APMT-331</a > </b > (sda) has been approved.', 'UNREAD', '2020-06-15 15:44:07', '2020-06-15 15:44:07'),
(1146, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/313\' > APMT-307</a > </b > (tre) has been visited.', 'READ', '2020-06-16 18:17:59', '2020-09-14 10:24:05'),
(1147, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/313\' > APMT-307</a > </b > (tre) has been visited.', 'UNREAD', '2020-06-16 18:17:59', '2020-06-16 18:17:59'),
(1148, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/314\' > APMT-308</a > </b > (bas) has been visited.', 'READ', '2020-06-16 18:17:59', '2020-09-14 10:24:05'),
(1149, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/314\' > APMT-308</a > </b > (bas) has been visited.', 'UNREAD', '2020-06-16 18:17:59', '2020-06-16 18:17:59'),
(1150, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/319\' > APMT-313</a > </b > (gfr) has been visited.', 'READ', '2020-06-16 18:18:01', '2020-09-14 10:24:05'),
(1151, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/319\' > APMT-313</a > </b > (gfr) has been visited.', 'UNREAD', '2020-06-16 18:18:01', '2020-06-16 18:18:01'),
(1152, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/320\' > APMT-314</a > </b > (rbj) has been visited.', 'READ', '2020-06-16 18:18:01', '2020-09-14 10:24:05'),
(1153, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/320\' > APMT-314</a > </b > (rbj) has been visited.', 'UNREAD', '2020-06-16 18:18:01', '2020-06-16 18:18:01'),
(1154, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/321\' > APMT-315</a > </b > (cxr) has been visited.', 'READ', '2020-06-16 18:18:02', '2020-09-14 10:24:05'),
(1155, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/321\' > APMT-315</a > </b > (cxr) has been visited.', 'UNREAD', '2020-06-16 18:18:02', '2020-06-16 18:18:02'),
(1156, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/322\' > APMT-316</a > </b > (gmi) has been visited.', 'READ', '2020-06-16 18:18:03', '2020-09-14 10:24:05'),
(1157, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/322\' > APMT-316</a > </b > (gmi) has been visited.', 'UNREAD', '2020-06-16 18:18:03', '2020-06-16 18:18:03'),
(1158, 221, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/323\' > APMT-317</a > </b > (asd) has been visited.', 'UNREAD', '2020-06-16 18:18:05', '2020-06-16 18:18:05'),
(1159, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/323\' > APMT-317</a > </b > (asd) has been visited.', 'UNREAD', '2020-06-16 18:18:05', '2020-06-16 18:18:05'),
(1160, 222, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/324\' > APMT-318</a > </b > (ydj) has been visited.', 'UNREAD', '2020-06-16 18:18:15', '2020-06-16 18:18:15'),
(1161, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/324\' > APMT-318</a > </b > (ydj) has been visited.', 'UNREAD', '2020-06-16 18:18:15', '2020-06-16 18:18:15'),
(1162, 223, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/325\' > APMT-319</a > </b > (alk) has been visited.', 'UNREAD', '2020-06-16 18:18:26', '2020-06-16 18:18:26'),
(1163, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/325\' > APMT-319</a > </b > (alk) has been visited.', 'UNREAD', '2020-06-16 18:18:26', '2020-06-16 18:18:26'),
(1164, 224, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/326\' > APMT-320</a > </b > (dfr) has been visited.', 'UNREAD', '2020-06-16 18:18:36', '2020-06-16 18:18:36'),
(1165, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/326\' > APMT-320</a > </b > (dfr) has been visited.', 'UNREAD', '2020-06-16 18:18:36', '2020-06-16 18:18:36'),
(1166, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/219\' > APMT-213</a > </b > (Joshi Anilkumar Popatlal) has been approved.', 'UNREAD', '2020-06-16 18:18:51', '2020-06-16 18:18:51'),
(1167, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/219\' > APMT-213</a > </b > (Joshi Anilkumar Popatlal) has been approved.', 'UNREAD', '2020-06-16 18:18:51', '2020-06-16 18:18:51'),
(1168, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/219\' > APMT-213</a > </b > (Joshi Anilkumar Popatlal) has been visited.', 'UNREAD', '2020-06-16 18:19:00', '2020-06-16 18:19:00'),
(1169, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/219\' > APMT-213</a > </b > (Joshi Anilkumar Popatlal) has been visited.', 'UNREAD', '2020-06-16 18:19:00', '2020-06-16 18:19:00'),
(1170, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/327\' > APMT-321</a > </b > (gma) has been visited.', 'READ', '2020-06-16 18:19:02', '2020-09-14 10:24:05'),
(1171, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/327\' > APMT-321</a > </b > (gma) has been visited.', 'UNREAD', '2020-06-16 18:19:02', '2020-06-16 18:19:02'),
(1172, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/328\' > APMT-322</a > </b > (iald) has been visited.', 'READ', '2020-06-16 18:19:03', '2020-09-14 10:24:05'),
(1173, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/328\' > APMT-322</a > </b > (iald) has been visited.', 'UNREAD', '2020-06-16 18:19:03', '2020-06-16 18:19:03');
INSERT INTO `notifications` (`id`, `user_id`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1174, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/329\' > APMT-323</a > </b > (sum) has been visited.', 'READ', '2020-06-16 18:19:03', '2020-09-14 10:24:05'),
(1175, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/329\' > APMT-323</a > </b > (sum) has been visited.', 'UNREAD', '2020-06-16 18:19:03', '2020-06-16 18:19:03'),
(1176, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/330\' > APMT-324</a > </b > (lad) has been visited.', 'READ', '2020-06-16 18:19:15', '2020-09-14 10:24:05'),
(1177, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/330\' > APMT-324</a > </b > (lad) has been visited.', 'UNREAD', '2020-06-16 18:19:15', '2020-06-16 18:19:15'),
(1178, 225, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/331\' > APMT-325</a > </b > (gjf) has been visited.', 'UNREAD', '2020-06-16 18:19:16', '2020-06-16 18:19:16'),
(1179, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/331\' > APMT-325</a > </b > (gjf) has been visited.', 'UNREAD', '2020-06-16 18:19:16', '2020-06-16 18:19:16'),
(1180, 226, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/332\' > APMT-326</a > </b > (rbi) has been visited.', 'UNREAD', '2020-06-16 18:19:17', '2020-06-16 18:19:17'),
(1181, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/332\' > APMT-326</a > </b > (rbi) has been visited.', 'UNREAD', '2020-06-16 18:19:17', '2020-06-16 18:19:17'),
(1182, 225, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/333\' > APMT-327</a > </b > (smy) has been visited.', 'UNREAD', '2020-06-16 18:19:18', '2020-06-16 18:19:18'),
(1183, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/333\' > APMT-327</a > </b > (smy) has been visited.', 'UNREAD', '2020-06-16 18:19:18', '2020-06-16 18:19:18'),
(1184, 226, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/334\' > APMT-328</a > </b > (gmi) has been visited.', 'UNREAD', '2020-06-16 18:19:19', '2020-06-16 18:19:19'),
(1185, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/334\' > APMT-328</a > </b > (gmi) has been visited.', 'UNREAD', '2020-06-16 18:19:19', '2020-06-16 18:19:19'),
(1186, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/335\' > APMT-329</a > </b > (raw) has been visited.', 'READ', '2020-06-16 18:19:21', '2020-09-14 10:24:05'),
(1187, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/335\' > APMT-329</a > </b > (raw) has been visited.', 'UNREAD', '2020-06-16 18:19:21', '2020-06-16 18:19:21'),
(1188, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/336\' > APMT-330</a > </b > (dazy) has been visited.', 'READ', '2020-06-16 18:19:22', '2020-09-14 10:24:05'),
(1189, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/336\' > APMT-330</a > </b > (dazy) has been visited.', 'UNREAD', '2020-06-16 18:19:22', '2020-06-16 18:19:22'),
(1190, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/338\' > APMT-332</a > </b > (Cassy) has been booked', 'UNREAD', '2020-06-16 18:23:18', '2020-06-16 18:23:18'),
(1191, 228, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/338\' > APMT-332</a > </b > (Cassy) has been booked', 'UNREAD', '2020-06-16 18:23:18', '2020-06-16 18:23:18'),
(1192, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/339\' > APMT-333</a > </b > (Mark) has been booked', 'UNREAD', '2020-06-16 18:24:45', '2020-06-16 18:24:45'),
(1193, 229, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/339\' > APMT-333</a > </b > (Mark) has been booked', 'UNREAD', '2020-06-16 18:24:45', '2020-06-16 18:24:45'),
(1194, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/340\' > APMT-334</a > </b > (Hanny) has been booked', 'UNREAD', '2020-06-16 18:28:13', '2020-06-16 18:28:13'),
(1195, 230, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/340\' > APMT-334</a > </b > (Hanny) has been booked', 'UNREAD', '2020-06-16 18:28:13', '2020-06-16 18:28:13'),
(1196, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/341\' > APMT-335</a > </b > (Tonny) has been booked', 'UNREAD', '2020-06-16 18:29:38', '2020-06-16 18:29:38'),
(1197, 231, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/341\' > APMT-335</a > </b > (Tonny) has been booked', 'UNREAD', '2020-06-16 18:29:38', '2020-06-16 18:29:38'),
(1198, 55, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/342\' > APMT-336</a > </b > (Danny) has been booked', 'UNREAD', '2020-06-16 19:14:24', '2020-06-16 19:14:24'),
(1199, 220, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/342\' > APMT-336</a > </b > (Danny) has been booked', 'UNREAD', '2020-06-16 19:14:24', '2020-06-16 19:14:24'),
(1200, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/342\' > APMT-336</a > </b > (Danny) has been approved.', 'READ', '2020-06-16 19:25:08', '2020-09-14 10:24:05'),
(1201, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/342\' > APMT-336</a > </b > (Danny) has been approved.', 'UNREAD', '2020-06-16 19:25:08', '2020-06-16 19:25:08'),
(1202, 228, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/338\' > APMT-332</a > </b > (Cassy) has been visited.', 'UNREAD', '2020-06-16 19:43:38', '2020-06-16 19:43:38'),
(1203, 220, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/338\' > APMT-332</a > </b > (Cassy) has been visited.', 'UNREAD', '2020-06-16 19:43:38', '2020-06-16 19:43:38'),
(1204, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/343\' > APMT-337</a > </b > (Sady) has been booked', 'READ', '2020-06-21 15:15:10', '2020-09-13 12:08:11'),
(1205, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/343\' > APMT-337</a > </b > (Sady) has been booked', 'READ', '2020-06-21 15:15:10', '2020-09-13 10:55:29'),
(1206, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/343\' > APMT-337</a > </b > (Sady) has been approved.', 'READ', '2020-06-21 15:15:40', '2020-09-14 10:24:05'),
(1207, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/343\' > APMT-337</a > </b > (Sady) has been approved.', 'READ', '2020-06-21 15:15:40', '2020-09-13 10:55:29'),
(1208, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/344\' > APMT-338</a > </b > (Sady) has been booked', 'READ', '2020-06-21 15:16:56', '2020-09-13 12:08:11'),
(1209, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/344\' > APMT-338</a > </b > (Sady) has been booked', 'READ', '2020-06-21 15:16:56', '2020-09-13 10:55:29'),
(1210, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/344\' > APMT-338</a > </b > (Sady) has been approved.', 'READ', '2020-06-21 15:17:51', '2020-09-14 10:24:05'),
(1211, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/344\' > APMT-338</a > </b > (Sady) has been approved.', 'READ', '2020-06-21 15:17:51', '2020-09-13 10:55:29'),
(1212, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/344\' > APMT-338</a > </b > (Sady) has been approved.', 'READ', '2020-06-21 15:17:52', '2020-09-14 10:24:05'),
(1213, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/344\' > APMT-338</a > </b > (Sady) has been approved.', 'READ', '2020-06-21 15:17:52', '2020-09-13 10:55:29'),
(1214, 199, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/277\' > APMT-271</a > </b > (Arjun) has been visited.', 'UNREAD', '2020-06-21 15:18:01', '2020-06-21 15:18:01'),
(1215, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/277\' > APMT-271</a > </b > (Arjun) has been visited.', 'READ', '2020-06-21 15:18:01', '2020-09-13 10:55:29'),
(1216, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/345\' > APMT-339</a > </b > (anil) has been booked', 'UNREAD', '2020-06-27 20:32:32', '2020-06-27 20:32:32'),
(1217, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/345\' > APMT-339</a > </b > (anil) has been booked', 'UNREAD', '2020-06-27 20:32:32', '2020-06-27 20:32:32'),
(1218, 36, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/345\' > APMT-339</a > </b > (anil) has been canceled by patient', 'UNREAD', '2020-06-27 20:35:34', '2020-06-27 20:35:34'),
(1219, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/345\' > APMT-339</a > </b > (anil) has been canceled by patient', 'UNREAD', '2020-06-27 20:35:34', '2020-06-27 20:35:34'),
(1220, 36, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/346\' > APMT-340</a > </b > (anil) has been booked', 'UNREAD', '2020-06-27 20:48:00', '2020-06-27 20:48:00'),
(1221, 58, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/346\' > APMT-340</a > </b > (anil) has been booked', 'UNREAD', '2020-06-27 20:48:00', '2020-06-27 20:48:00'),
(1222, 36, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/346\' > APMT-340</a > </b > (anil) has been approved.', 'UNREAD', '2020-06-27 21:06:45', '2020-06-27 21:06:45'),
(1223, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/346\' > APMT-340</a > </b > (anil) has been approved.', 'UNREAD', '2020-06-27 21:06:45', '2020-06-27 21:06:45'),
(1224, 112, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/346\' > APMT-340</a > </b > (anil) has been canceled.', 'UNREAD', '2020-06-27 21:14:52', '2020-06-27 21:14:52'),
(1225, 58, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/346\' > APMT-340</a > </b > (anil) has been canceled.', 'UNREAD', '2020-06-27 21:14:52', '2020-06-27 21:14:52'),
(1226, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/278\' > APMT-272</a > </b > (Tonny) has been visited.', 'READ', '2020-07-27 10:15:39', '2020-09-14 10:24:05'),
(1227, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/278\' > APMT-272</a > </b > (Tonny) has been visited.', 'READ', '2020-07-27 10:15:39', '2020-09-13 10:55:29'),
(1228, 200, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/279\' > APMT-273</a > </b > (Rammy) has been visited.', 'UNREAD', '2020-07-27 10:15:40', '2020-07-27 10:15:40'),
(1229, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/279\' > APMT-273</a > </b > (Rammy) has been visited.', 'READ', '2020-07-27 10:15:40', '2020-09-13 10:55:29'),
(1230, 206, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/287\' > APMT-281</a > </b > (FAGE) has been visited.', 'UNREAD', '2020-07-27 10:15:41', '2020-07-27 10:15:41'),
(1231, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/287\' > APMT-281</a > </b > (FAGE) has been visited.', 'READ', '2020-07-27 10:15:42', '2020-09-13 10:55:29'),
(1232, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/288\' > APMT-282</a > </b > (jaimin) has been visited.', 'READ', '2020-07-27 10:15:43', '2020-09-14 10:24:05'),
(1233, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/288\' > APMT-282</a > </b > (jaimin) has been visited.', 'READ', '2020-07-27 10:15:43', '2020-09-13 10:55:29'),
(1234, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/289\' > APMT-283</a > </b > (shahid) has been visited.', 'READ', '2020-07-27 10:15:44', '2020-09-14 10:24:05'),
(1235, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/289\' > APMT-283</a > </b > (shahid) has been visited.', 'READ', '2020-07-27 10:15:44', '2020-09-13 10:55:29'),
(1236, 200, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/290\' > APMT-284</a > </b > (ravi) has been visited.', 'UNREAD', '2020-07-27 10:15:45', '2020-07-27 10:15:45'),
(1237, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/290\' > APMT-284</a > </b > (ravi) has been visited.', 'READ', '2020-07-27 10:15:45', '2020-09-13 10:55:29'),
(1238, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/292\' > APMT-286</a > </b > (munir) has been visited.', 'UNREAD', '2020-07-27 10:15:46', '2020-07-27 10:15:46'),
(1239, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/292\' > APMT-286</a > </b > (munir) has been visited.', 'READ', '2020-07-27 10:15:46', '2020-09-13 10:55:29'),
(1240, 205, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/337\' > APMT-331</a > </b > (sda) has been visited.', 'UNREAD', '2020-07-27 10:15:48', '2020-07-27 10:15:48'),
(1241, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/337\' > APMT-331</a > </b > (sda) has been visited.', 'READ', '2020-07-27 10:15:48', '2020-09-13 10:55:29'),
(1242, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/343\' > APMT-337</a > </b > (Sady) has been visited.', 'READ', '2020-07-27 10:15:49', '2020-09-14 10:24:05'),
(1243, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/343\' > APMT-337</a > </b > (Sady) has been visited.', 'READ', '2020-07-27 10:15:49', '2020-09-13 10:55:29'),
(1244, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/344\' > APMT-338</a > </b > (Sady) has been visited.', 'READ', '2020-07-27 10:15:50', '2020-09-14 10:24:05'),
(1245, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/344\' > APMT-338</a > </b > (Sady) has been visited.', 'READ', '2020-07-27 10:15:51', '2020-09-13 10:55:29'),
(1246, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/347\' > APMT-341</a > </b > (OLIVER) has been booked', 'READ', '2020-07-27 10:23:52', '2020-09-13 12:08:11'),
(1247, 234, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/347\' > APMT-341</a > </b > (OLIVER) has been booked', 'UNREAD', '2020-07-27 10:23:52', '2020-07-27 10:23:52'),
(1248, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/348\' > APMT-342</a > </b > (HARRY) has been booked', 'READ', '2020-07-27 10:25:29', '2020-09-13 12:08:11'),
(1249, 235, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/348\' > APMT-342</a > </b > (HARRY) has been booked', 'UNREAD', '2020-07-27 10:25:29', '2020-07-27 10:25:29'),
(1250, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/349\' > APMT-343</a > </b > (Mason) has been booked', 'READ', '2020-07-27 16:38:05', '2020-09-13 12:08:11'),
(1251, 236, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/349\' > APMT-343</a > </b > (Mason) has been booked', 'UNREAD', '2020-07-27 16:38:05', '2020-07-27 16:38:05'),
(1252, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/350\' > APMT-344</a > </b > (Evelyn) has been booked', 'READ', '2020-07-27 16:38:52', '2020-09-13 12:08:11'),
(1253, 237, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/350\' > APMT-344</a > </b > (Evelyn) has been booked', 'UNREAD', '2020-07-27 16:38:52', '2020-07-27 16:38:52'),
(1254, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/351\' > APMT-345</a > </b > (Ella) has been booked', 'READ', '2020-07-27 16:41:54', '2020-09-13 12:08:11'),
(1255, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/351\' > APMT-345</a > </b > (Ella) has been booked', 'READ', '2020-07-27 16:41:54', '2020-09-13 10:55:29'),
(1256, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/351\' > APMT-345</a > </b > (Ella) has been approved.', 'READ', '2020-07-27 16:45:04', '2020-09-14 10:24:05'),
(1257, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/351\' > APMT-345</a > </b > (Ella) has been approved.', 'READ', '2020-07-27 16:45:04', '2020-09-13 10:55:29'),
(1258, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/352\' > APMT-346</a > </b > (Avery) has been booked', 'READ', '2020-07-27 16:55:04', '2020-09-13 12:08:11'),
(1259, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/352\' > APMT-346</a > </b > (Avery) has been booked', 'READ', '2020-07-27 16:55:04', '2020-09-13 10:55:29'),
(1260, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-347</a > </b > (Jackson) has been booked', 'READ', '2020-07-27 17:13:41', '2020-09-13 12:56:24'),
(1261, 139, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/206\' > APMT-200</a > </b > (hardik M. patel) has been visited.', 'UNREAD', '2020-07-27 17:17:10', '2020-07-27 17:17:10'),
(1262, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/196\' > APMT-190</a > </b > (Boy) has been visited.', 'READ', '2020-07-27 17:18:13', '2020-09-14 10:24:05'),
(1263, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/197\' > APMT-191</a > </b > (Boi) has been visited.', 'READ', '2020-07-27 17:18:23', '2020-09-14 10:24:05'),
(1264, 162, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/233\' > APMT-227</a > </b > (jishan) has been visited.', 'UNREAD', '2020-07-27 17:18:34', '2020-07-27 17:18:34'),
(1265, 164, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/234\' > APMT-228</a > </b > (smarpan3) has been visited.', 'UNREAD', '2020-07-27 17:18:35', '2020-07-27 17:18:35'),
(1266, 159, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/230\' > APMT-224</a > </b > (rohit@gmail.com) has been visited.', 'UNREAD', '2020-07-27 17:18:45', '2020-07-27 17:18:45'),
(1267, 159, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/231\' > APMT-225</a > </b > (saumit@gmail.com) has been visited.', 'UNREAD', '2020-07-27 17:18:45', '2020-07-27 17:18:45'),
(1268, 173, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/240\' > APMT-234</a > </b > (sanjeev) has been visited.', 'UNREAD', '2020-07-27 17:18:54', '2020-07-27 17:18:54'),
(1269, 175, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/241\' > APMT-235</a > </b > (RBQ) has been visited.', 'UNREAD', '2020-07-27 17:19:06', '2020-07-27 17:19:06'),
(1270, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/242\' > APMT-236</a > </b > (RAM) has been visited.', 'READ', '2020-07-27 17:19:07', '2020-09-14 10:24:05'),
(1271, 238, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/353\' > APMT-347</a > </b > (Jackson) has been visited.', 'UNREAD', '2020-07-27 17:19:08', '2020-07-27 17:19:08'),
(1272, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-348</a > </b > (Scarlett) has been booked', 'READ', '2020-07-27 17:23:36', '2020-09-13 12:56:24'),
(1273, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-349</a > </b > (Madison) has been booked', 'READ', '2020-07-27 17:25:17', '2020-09-13 12:56:24'),
(1274, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/356\' > APMT-350</a > </b > (Carter) has been booked', 'READ', '2020-07-27 17:28:49', '2020-09-13 12:56:24'),
(1275, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/352\' > APMT-346</a > </b > (Avery) has been approved.', 'READ', '2020-07-27 17:46:47', '2020-09-14 10:24:05'),
(1276, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/352\' > APMT-346</a > </b > (Avery) has been approved.', 'READ', '2020-07-27 17:46:47', '2020-09-13 10:55:29'),
(1277, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/357\' > APMT-351</a > </b > (TONNY) has been booked', 'READ', '2020-07-27 17:48:56', '2020-09-13 12:08:11'),
(1278, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/357\' > APMT-351</a > </b > (TONNY) has been booked', 'READ', '2020-07-27 17:48:56', '2020-09-13 10:55:29'),
(1279, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/357\' > APMT-351</a > </b > (TONNY) has been approved.', 'READ', '2020-07-30 23:22:43', '2020-09-13 12:08:11'),
(1280, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/357\' > APMT-351</a > </b > (TONNY) has been approved.', 'READ', '2020-07-30 23:22:43', '2020-09-14 10:24:05'),
(1281, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/357\' > APMT-351</a > </b > (TONNY) has been approved.', 'UNREAD', '2020-07-30 23:22:43', '2020-07-30 23:22:43'),
(1282, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/347\' > APMT-341</a > </b > (OLIVER) has been visited.', 'READ', '2020-07-30 23:22:49', '2020-09-13 12:08:11'),
(1283, 234, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/347\' > APMT-341</a > </b > (OLIVER) has been visited.', 'UNREAD', '2020-07-30 23:22:49', '2020-07-30 23:22:49'),
(1284, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/348\' > APMT-342</a > </b > (HARRY) has been visited.', 'READ', '2020-07-30 23:22:51', '2020-09-13 12:08:11'),
(1285, 235, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/348\' > APMT-342</a > </b > (HARRY) has been visited.', 'UNREAD', '2020-07-30 23:22:51', '2020-07-30 23:22:51'),
(1286, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/349\' > APMT-343</a > </b > (Mason) has been visited.', 'READ', '2020-07-30 23:22:52', '2020-09-13 12:08:11'),
(1287, 236, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/349\' > APMT-343</a > </b > (Mason) has been visited.', 'UNREAD', '2020-07-30 23:22:52', '2020-07-30 23:22:52'),
(1288, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/350\' > APMT-344</a > </b > (Evelyn) has been visited.', 'READ', '2020-07-30 23:22:53', '2020-09-13 12:08:11'),
(1289, 237, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/350\' > APMT-344</a > </b > (Evelyn) has been visited.', 'UNREAD', '2020-07-30 23:22:53', '2020-07-30 23:22:53'),
(1290, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/351\' > APMT-345</a > </b > (Ella) has been visited.', 'READ', '2020-07-30 23:22:55', '2020-09-13 12:08:11'),
(1291, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/351\' > APMT-345</a > </b > (Ella) has been visited.', 'READ', '2020-07-30 23:22:55', '2020-09-14 10:24:05'),
(1292, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/352\' > APMT-346</a > </b > (Avery) has been visited.', 'READ', '2020-07-30 23:22:56', '2020-09-13 12:08:11'),
(1293, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/352\' > APMT-346</a > </b > (Avery) has been visited.', 'READ', '2020-07-30 23:22:56', '2020-09-14 10:24:05'),
(1294, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/357\' > APMT-351</a > </b > (TONNY) has been visited.', 'READ', '2020-07-30 23:23:00', '2020-09-13 12:08:11'),
(1295, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/357\' > APMT-351</a > </b > (TONNY) has been visited.', 'READ', '2020-07-30 23:23:00', '2020-09-14 10:24:05'),
(1296, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/358\' > APMT-352</a > </b > (dany) has been booked', 'READ', '2020-07-30 23:24:17', '2020-09-13 12:08:11'),
(1297, 241, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/358\' > APMT-352</a > </b > (dany) has been booked', 'UNREAD', '2020-07-30 23:24:17', '2020-07-30 23:24:17'),
(1298, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/359\' > APMT-353</a > </b > (cami) has been booked', 'READ', '2020-07-30 23:25:16', '2020-09-13 12:08:11'),
(1299, 46, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/359\' > APMT-353</a > </b > (cami) has been booked', 'READ', '2020-07-30 23:25:16', '2020-09-14 10:24:05'),
(1300, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/360\' > APMT-354</a > </b > (tonny) has been booked', 'READ', '2020-07-31 00:02:21', '2020-09-13 12:08:11'),
(1301, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/360\' > APMT-354</a > </b > (tonny) has been booked', 'READ', '2020-07-31 00:02:21', '2020-09-13 10:55:29'),
(1302, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/360\' > APMT-354</a > </b > (tonny) has been approved.', 'READ', '2020-07-31 00:17:10', '2020-09-13 12:08:11'),
(1303, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/360\' > APMT-354</a > </b > (tonny) has been approved.', 'READ', '2020-07-31 00:17:10', '2020-09-14 10:24:05'),
(1304, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/360\' > APMT-354</a > </b > (tonny) has been approved.', 'UNREAD', '2020-07-31 00:17:10', '2020-07-31 00:17:10'),
(1305, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/360\' > APMT-354</a > </b > (tonny) prescription has been created.', 'READ', '2020-07-31 00:23:27', '2020-09-13 12:08:11'),
(1306, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/361\' > APMT-355</a > </b > (ajdshaj) has been booked', 'READ', '2020-07-31 00:27:42', '2020-09-13 12:08:11'),
(1307, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/361\' > APMT-355</a > </b > (ajdshaj) has been booked', 'READ', '2020-07-31 00:27:42', '2020-09-13 10:55:29'),
(1308, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/361\' > APMT-355</a > </b > (ajdshaj) has been approved.', 'READ', '2020-07-31 00:28:25', '2020-09-13 12:08:11'),
(1309, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/361\' > APMT-355</a > </b > (ajdshaj) has been approved.', 'READ', '2020-07-31 00:28:25', '2020-09-14 10:24:05'),
(1310, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/361\' > APMT-355</a > </b > (ajdshaj) has been approved.', 'UNREAD', '2020-07-31 00:28:25', '2020-07-31 00:28:25'),
(1311, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/361\' > APMT-355</a > </b > (ajdshaj) has been visited.', 'READ', '2020-07-31 00:33:05', '2020-09-14 10:24:05'),
(1312, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/361\' > APMT-355</a > </b > (ajdshaj) has been visited.', 'READ', '2020-07-31 00:33:05', '2020-09-13 10:55:29'),
(1313, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/358\' > APMT-352</a > </b > (dany) has been visited.', 'READ', '2020-07-31 00:51:46', '2020-09-13 12:08:11'),
(1314, 241, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/358\' > APMT-352</a > </b > (dany) has been visited.', 'UNREAD', '2020-07-31 00:51:46', '2020-07-31 00:51:46'),
(1315, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/359\' > APMT-353</a > </b > (cami) has been visited.', 'READ', '2020-07-31 00:51:48', '2020-09-13 12:08:11'),
(1316, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/359\' > APMT-353</a > </b > (cami) has been visited.', 'READ', '2020-07-31 00:51:48', '2020-09-14 10:24:05'),
(1317, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/360\' > APMT-354</a > </b > (tonny) has been visited.', 'READ', '2020-07-31 00:51:59', '2020-09-13 12:08:11'),
(1318, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/360\' > APMT-354</a > </b > (tonny) has been visited.', 'READ', '2020-07-31 00:51:59', '2020-09-14 10:24:05'),
(1319, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-356</a > </b > (xz) has been booked', 'READ', '2020-07-31 01:03:49', '2020-09-13 12:56:24'),
(1320, 242, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/362\' > APMT-356</a > </b > (xz) has been visited.', 'UNREAD', '2020-07-31 01:07:57', '2020-07-31 01:07:57'),
(1321, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/363\' > APMT-357</a > </b > (alpesh bhai) has been booked', 'READ', '2020-08-01 15:21:17', '2020-09-13 12:08:11'),
(1322, 243, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/363\' > APMT-357</a > </b > (alpesh bhai) has been booked', 'UNREAD', '2020-08-01 15:21:17', '2020-08-01 15:21:17'),
(1323, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/364\' > APMT-358</a > </b > (bhagyoday) has been booked', 'READ', '2020-08-01 15:22:56', '2020-09-13 12:08:11'),
(1324, 244, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/364\' > APMT-358</a > </b > (bhagyoday) has been booked', 'UNREAD', '2020-08-01 15:22:56', '2020-08-01 15:22:56'),
(1325, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/365\' > APMT-359</a > </b > (game) has been booked', 'READ', '2020-08-01 15:38:50', '2020-09-13 12:08:11'),
(1326, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/365\' > APMT-359</a > </b > (game) has been booked', 'READ', '2020-08-01 15:38:50', '2020-09-13 10:55:29'),
(1327, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/365\' > APMT-359</a > </b > (game) has been approved.', 'READ', '2020-08-01 15:41:06', '2020-09-13 12:08:11'),
(1328, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/365\' > APMT-359</a > </b > (game) has been approved.', 'READ', '2020-08-01 15:41:06', '2020-09-14 10:24:05'),
(1329, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/365\' > APMT-359</a > </b > (game) has been approved.', 'UNREAD', '2020-08-01 15:41:06', '2020-08-01 15:41:06'),
(1330, 243, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/363\' > APMT-357</a > </b > (alpesh bhai) has been visited.', 'UNREAD', '2020-08-01 15:49:21', '2020-08-01 15:49:21'),
(1331, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/363\' > APMT-357</a > </b > (alpesh bhai) has been visited.', 'READ', '2020-08-01 15:49:21', '2020-09-13 10:55:29'),
(1332, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/366\' > APMT-360</a > </b > (arushi) has been booked', 'READ', '2020-08-05 16:07:37', '2020-09-13 12:08:11'),
(1333, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/366\' > APMT-360</a > </b > (arushi) has been booked', 'READ', '2020-08-05 16:07:37', '2020-09-13 10:55:29'),
(1334, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/366\' > APMT-360</a > </b > (arushi) has been approved.', 'READ', '2020-08-05 16:10:15', '2020-09-13 12:08:11'),
(1335, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/366\' > APMT-360</a > </b > (arushi) has been approved.', 'READ', '2020-08-05 16:10:15', '2020-09-14 10:24:05'),
(1336, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/366\' > APMT-360</a > </b > (arushi) has been approved.', 'UNREAD', '2020-08-05 16:10:15', '2020-08-05 16:10:15'),
(1337, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/364\' > APMT-358</a > </b > (bhagyoday) has been canceled.', 'READ', '2020-08-05 16:10:25', '2020-09-13 12:08:11'),
(1338, 244, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/364\' > APMT-358</a > </b > (bhagyoday) has been canceled.', 'UNREAD', '2020-08-05 16:10:25', '2020-08-05 16:10:25'),
(1339, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/365\' > APMT-359</a > </b > (game) has been canceled.', 'READ', '2020-08-05 16:10:29', '2020-09-13 12:08:11'),
(1340, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/365\' > APMT-359</a > </b > (game) has been canceled.', 'READ', '2020-08-05 16:10:29', '2020-09-14 10:24:05'),
(1341, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/367\' > APMT-361</a > </b > (satish) has been booked', 'READ', '2020-08-05 16:12:51', '2020-09-13 12:08:11'),
(1342, 245, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/367\' > APMT-361</a > </b > (satish) has been booked', 'UNREAD', '2020-08-05 16:12:51', '2020-08-05 16:12:51'),
(1343, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/366\' > APMT-360</a > </b > (arushi) has been visited.', 'READ', '2020-08-05 16:15:16', '2020-09-14 10:24:05'),
(1344, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/366\' > APMT-360</a > </b > (arushi) has been visited.', 'READ', '2020-08-05 16:15:16', '2020-09-13 10:55:29'),
(1345, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/368\' > APMT-362</a > </b > (raul) has been booked', 'READ', '2020-08-05 16:16:14', '2020-09-13 12:08:11'),
(1346, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/368\' > APMT-362</a > </b > (raul) has been booked', 'READ', '2020-08-05 16:16:14', '2020-09-13 10:55:29'),
(1347, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/368\' > APMT-362</a > </b > (raul) has been approved.', 'READ', '2020-08-05 16:17:21', '2020-09-13 12:08:11'),
(1348, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/368\' > APMT-362</a > </b > (raul) has been approved.', 'READ', '2020-08-05 16:17:21', '2020-09-14 10:24:05'),
(1349, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/368\' > APMT-362</a > </b > (raul) has been approved.', 'UNREAD', '2020-08-05 16:17:21', '2020-08-05 16:17:21'),
(1350, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) has been booked', 'READ', '2020-08-21 11:38:10', '2020-09-13 12:08:11'),
(1351, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) has been booked', 'READ', '2020-08-21 11:38:10', '2020-09-13 10:55:29'),
(1352, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/370\' > APMT-364</a > </b > (adfbjhb) has been booked', 'READ', '2020-08-21 11:38:20', '2020-09-13 12:08:11'),
(1353, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/370\' > APMT-364</a > </b > (adfbjhb) has been booked', 'READ', '2020-08-21 11:38:20', '2020-09-13 10:55:29'),
(1354, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) has been approved.', 'READ', '2020-08-21 11:42:10', '2020-09-13 12:08:11'),
(1355, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) has been approved.', 'READ', '2020-08-21 11:42:10', '2020-09-14 10:24:05'),
(1356, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) has been approved.', 'UNREAD', '2020-08-21 11:42:10', '2020-08-21 11:42:10'),
(1357, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) has been approved.', 'READ', '2020-08-21 11:42:46', '2020-09-13 12:08:11'),
(1358, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) has been approved.', 'READ', '2020-08-21 11:42:46', '2020-09-14 10:24:05'),
(1359, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) has been approved.', 'UNREAD', '2020-08-21 11:42:46', '2020-08-21 11:42:46'),
(1360, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/370\' > APMT-364</a > </b > (adfbjhb) has been approved.', 'READ', '2020-08-21 11:43:31', '2020-09-13 12:08:11'),
(1361, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/370\' > APMT-364</a > </b > (adfbjhb) has been approved.', 'READ', '2020-08-21 11:43:31', '2020-09-14 10:24:05'),
(1362, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/370\' > APMT-364</a > </b > (adfbjhb) has been approved.', 'UNREAD', '2020-08-21 11:43:31', '2020-08-21 11:43:31'),
(1363, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/371\' > APMT-365</a > </b > (dhaval) has been booked', 'READ', '2020-08-21 11:46:41', '2020-09-13 12:08:11'),
(1364, 247, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/371\' > APMT-365</a > </b > (dhaval) has been booked', 'READ', '2020-08-21 11:46:41', '2020-08-21 11:53:58'),
(1365, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) prescription has been created.', 'READ', '2020-08-21 11:56:29', '2020-09-13 12:08:11'),
(1366, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) has been visited.', 'READ', '2020-08-21 12:02:22', '2020-09-14 10:24:05'),
(1367, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) has been visited.', 'READ', '2020-08-21 12:02:22', '2020-09-13 10:55:29'),
(1368, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) has been visited.', 'READ', '2020-08-21 12:02:38', '2020-09-14 10:24:05'),
(1369, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/369\' > APMT-363</a > </b > (Dhaval Dave) has been visited.', 'READ', '2020-08-21 12:02:38', '2020-09-13 10:55:29'),
(1370, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-366</a > </b > (Dhaval Dave) has been booked', 'READ', '2020-08-21 12:23:59', '2020-09-13 12:56:24'),
(1371, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/\' > APMT-367</a > </b > (ABCDE) has been booked', 'READ', '2020-08-21 12:27:08', '2020-09-13 12:56:24'),
(1372, 19, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/374\' > APMT-368</a > </b > (Prashant dave) has been booked', 'UNREAD', '2020-08-21 23:02:21', '2020-08-21 23:02:21'),
(1373, 38, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/374\' > APMT-368</a > </b > (Prashant dave) has been booked', 'UNREAD', '2020-08-21 23:02:21', '2020-08-21 23:02:21'),
(1374, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/375\' > APMT-369</a > </b > (Abcd) has been booked', 'READ', '2020-08-21 23:05:32', '2020-09-13 12:08:11'),
(1375, 165, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/375\' > APMT-369</a > </b > (Abcd) has been booked', 'UNREAD', '2020-08-21 23:05:32', '2020-08-21 23:05:32'),
(1376, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/376\' > APMT-370</a > </b > (Auto fill) has been booked', 'READ', '2020-08-21 23:07:25', '2020-09-13 12:08:11'),
(1377, 247, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/376\' > APMT-370</a > </b > (Auto fill) has been booked', 'UNREAD', '2020-08-21 23:07:25', '2020-08-21 23:07:25'),
(1378, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/377\' > APMT-371</a > </b > (Prince) has been booked', 'READ', '2020-08-21 23:10:19', '2020-09-13 12:08:11'),
(1379, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/377\' > APMT-371</a > </b > (Prince) has been booked', 'READ', '2020-08-21 23:10:20', '2020-09-13 10:55:29'),
(1380, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/377\' > APMT-371</a > </b > (Prince) has been approved.', 'READ', '2020-08-21 23:11:16', '2020-09-13 12:08:11'),
(1381, 247, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/377\' > APMT-371</a > </b > (Prince) has been approved.', 'UNREAD', '2020-08-21 23:11:16', '2020-08-21 23:11:16'),
(1382, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/377\' > APMT-371</a > </b > (Prince) has been approved.', 'UNREAD', '2020-08-21 23:11:16', '2020-08-21 23:11:16'),
(1383, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/378\' > APMT-372</a > </b > (aditya) has been booked', 'READ', '2020-08-23 11:11:22', '2020-09-13 12:08:11'),
(1384, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/378\' > APMT-372</a > </b > (aditya) has been booked', 'READ', '2020-08-23 11:11:22', '2020-09-13 10:55:29'),
(1385, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/378\' > APMT-372</a > </b > (aditya) has been approved.', 'READ', '2020-08-23 11:13:20', '2020-09-13 12:08:11'),
(1386, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/378\' > APMT-372</a > </b > (aditya) has been approved.', 'READ', '2020-08-23 11:13:20', '2020-09-14 10:24:05'),
(1387, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/378\' > APMT-372</a > </b > (aditya) has been approved.', 'UNREAD', '2020-08-23 11:13:20', '2020-08-23 11:13:20'),
(1388, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/379\' > APMT-373</a > </b > (kashyap) has been booked', 'READ', '2020-08-23 11:16:43', '2020-09-13 12:08:11'),
(1389, 248, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/379\' > APMT-373</a > </b > (kashyap) has been booked', 'UNREAD', '2020-08-23 11:16:43', '2020-08-23 11:16:43'),
(1390, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/379\' > APMT-373</a > </b > (kashyap) prescription has been created.', 'READ', '2020-08-23 11:19:58', '2020-09-13 12:08:11'),
(1391, 248, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/379\' > APMT-373</a > </b > (kashyap) has been visited.', 'UNREAD', '2020-08-23 11:26:26', '2020-08-23 11:26:26'),
(1392, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/379\' > APMT-373</a > </b > (kashyap) has been visited.', 'READ', '2020-08-23 11:26:26', '2020-09-13 10:55:29'),
(1393, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/375\' > APMT-369</a > </b > (Abcd) prescription has been created.', 'READ', '2020-08-23 13:26:55', '2020-09-13 12:08:11'),
(1394, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/380\' > APMT-374</a > </b > (fatima) has been booked', 'READ', '2020-08-23 14:01:13', '2020-09-13 12:08:11'),
(1395, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/380\' > APMT-374</a > </b > (fatima) has been booked', 'READ', '2020-08-23 14:01:13', '2020-09-13 10:55:29'),
(1396, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/380\' > APMT-374</a > </b > (fatima) has been extended.', 'READ', '2020-08-23 14:04:26', '2020-09-13 12:08:11'),
(1397, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/380\' > APMT-374</a > </b > (fatima) has been extended.', 'READ', '2020-08-23 14:04:26', '2020-09-14 10:24:05'),
(1398, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/380\' > APMT-374</a > </b > (fatima) has been approved.', 'READ', '2020-08-23 14:05:30', '2020-09-13 12:08:11'),
(1399, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/380\' > APMT-374</a > </b > (fatima) has been approved.', 'READ', '2020-08-23 14:05:30', '2020-09-14 10:24:05'),
(1400, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/380\' > APMT-374</a > </b > (fatima) has been approved.', 'UNREAD', '2020-08-23 14:05:30', '2020-08-23 14:05:30'),
(1401, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/381\' > APMT-375</a > </b > (case) has been booked', 'READ', '2020-08-23 14:13:03', '2020-09-13 12:08:11'),
(1402, 252, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/381\' > APMT-375</a > </b > (case) has been booked', 'UNREAD', '2020-08-23 14:13:03', '2020-08-23 14:13:03');
INSERT INTO `notifications` (`id`, `user_id`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1403, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/382\' > APMT-376</a > </b > (nilamben) has been booked', 'READ', '2020-08-23 14:21:47', '2020-09-13 12:08:11'),
(1404, 253, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/382\' > APMT-376</a > </b > (nilamben) has been booked', 'UNREAD', '2020-08-23 14:21:47', '2020-08-23 14:21:47'),
(1405, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/383\' > APMT-377</a > </b > (??????) has been booked', 'READ', '2020-08-23 14:27:22', '2020-09-13 12:08:11'),
(1406, 254, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/383\' > APMT-377</a > </b > (??????) has been booked', 'UNREAD', '2020-08-23 14:27:22', '2020-08-23 14:27:22'),
(1407, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/384\' > APMT-378</a > </b > (Kashyap gohil) has been booked', 'READ', '2020-08-23 14:30:30', '2020-09-13 12:08:11'),
(1408, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/384\' > APMT-378</a > </b > (Kashyap gohil) has been booked', 'READ', '2020-08-23 14:30:30', '2020-09-13 10:55:29'),
(1409, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/385\' > APMT-379</a > </b > (RAVINA) has been booked', 'READ', '2020-08-23 14:30:52', '2020-09-13 12:08:11'),
(1410, 255, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/385\' > APMT-379</a > </b > (RAVINA) has been booked', 'UNREAD', '2020-08-23 14:30:52', '2020-08-23 14:30:52'),
(1411, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/384\' > APMT-378</a > </b > (Kashyap gohil) has been canceled.', 'READ', '2020-08-23 14:32:43', '2020-09-13 12:08:11'),
(1412, 248, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/384\' > APMT-378</a > </b > (Kashyap gohil) has been canceled.', 'UNREAD', '2020-08-23 14:32:43', '2020-08-23 14:32:43'),
(1413, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/386\' > APMT-380</a > </b > (Kashyap gohil) has been booked', 'READ', '2020-08-23 14:35:25', '2020-09-13 12:08:11'),
(1414, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/386\' > APMT-380</a > </b > (Kashyap gohil) has been booked', 'READ', '2020-08-23 14:35:25', '2020-09-13 10:55:29'),
(1415, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/386\' > APMT-380</a > </b > (Kashyap gohil) has been approved.', 'READ', '2020-08-23 14:37:16', '2020-09-13 12:08:11'),
(1416, 248, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/386\' > APMT-380</a > </b > (Kashyap gohil) has been approved.', 'UNREAD', '2020-08-23 14:37:16', '2020-08-23 14:37:16'),
(1417, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/386\' > APMT-380</a > </b > (Kashyap gohil) has been approved.', 'UNREAD', '2020-08-23 14:37:16', '2020-08-23 14:37:16'),
(1418, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/386\' > APMT-380</a > </b > (Kashyap gohil) has been visited.', 'READ', '2020-08-23 14:42:58', '2020-09-13 12:08:11'),
(1419, 248, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/386\' > APMT-380</a > </b > (Kashyap gohil) has been visited.', 'UNREAD', '2020-08-23 14:42:58', '2020-08-23 14:42:58'),
(1420, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/378\' > APMT-372</a > </b > (aditya) prescription has been created.', 'READ', '2020-08-23 14:50:52', '2020-09-13 12:08:11'),
(1421, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/387\' > APMT-381</a > </b > (Hshd) has been booked', 'READ', '2020-08-26 13:30:28', '2020-09-13 12:08:11'),
(1422, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/387\' > APMT-381</a > </b > (Hshd) has been booked', 'READ', '2020-08-26 13:30:28', '2020-09-13 10:55:29'),
(1423, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/387\' > APMT-381</a > </b > (Hshd) has been approved.', 'READ', '2020-08-26 13:33:20', '2020-09-13 12:08:11'),
(1424, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/387\' > APMT-381</a > </b > (Hshd) has been approved.', 'READ', '2020-08-26 13:33:20', '2020-09-14 10:24:05'),
(1425, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/387\' > APMT-381</a > </b > (Hshd) has been approved.', 'UNREAD', '2020-08-26 13:33:20', '2020-08-26 13:33:20'),
(1426, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/367\' > APMT-361</a > </b > (satish) prescription has been created.', 'READ', '2020-08-26 13:58:24', '2020-09-13 12:08:11'),
(1427, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/388\' > APMT-382</a > </b > (FAGE) has been booked', 'READ', '2020-08-26 18:16:56', '2020-09-13 12:08:11'),
(1428, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/388\' > APMT-382</a > </b > (FAGE) has been booked', 'READ', '2020-08-26 18:16:56', '2020-09-13 10:55:29'),
(1429, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/388\' > APMT-382</a > </b > (FAGE) has been approved.', 'READ', '2020-08-26 18:21:07', '2020-09-13 12:08:11'),
(1430, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/388\' > APMT-382</a > </b > (FAGE) has been approved.', 'READ', '2020-08-26 18:21:07', '2020-09-14 10:24:05'),
(1431, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/388\' > APMT-382</a > </b > (FAGE) has been approved.', 'UNREAD', '2020-08-26 18:21:07', '2020-08-26 18:21:07'),
(1432, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/389\' > APMT-383</a > </b > (case) has been booked', 'READ', '2020-08-26 18:23:30', '2020-09-13 12:08:11'),
(1433, 256, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/389\' > APMT-383</a > </b > (case) has been booked', 'UNREAD', '2020-08-26 18:23:30', '2020-08-26 18:23:30'),
(1434, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/388\' > APMT-382</a > </b > (FAGE) prescription has been created.', 'READ', '2020-08-26 18:27:26', '2020-09-13 12:08:11'),
(1435, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/388\' > APMT-382</a > </b > (FAGE) has been visited.', 'READ', '2020-08-26 18:32:16', '2020-09-14 10:24:05'),
(1436, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/388\' > APMT-382</a > </b > (FAGE) has been visited.', 'READ', '2020-08-26 18:32:16', '2020-09-13 10:55:29'),
(1437, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/390\' > APMT-384</a > </b > (VIHAN) has been booked', 'READ', '2020-08-30 13:01:53', '2020-09-13 12:08:11'),
(1438, 257, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/390\' > APMT-384</a > </b > (VIHAN) has been booked', 'UNREAD', '2020-08-30 13:01:53', '2020-08-30 13:01:53'),
(1439, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/391\' > APMT-385</a > </b > (danish) has been booked', 'READ', '2020-08-30 13:02:54', '2020-09-13 12:08:11'),
(1440, 258, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/391\' > APMT-385</a > </b > (danish) has been booked', 'UNREAD', '2020-08-30 13:02:54', '2020-08-30 13:02:54'),
(1441, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/392\' > APMT-386</a > </b > (priyanka) has been booked', 'READ', '2020-08-30 13:07:41', '2020-09-13 12:08:11'),
(1442, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/392\' > APMT-386</a > </b > (priyanka) has been booked', 'READ', '2020-08-30 13:07:41', '2020-09-13 10:55:29'),
(1443, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/392\' > APMT-386</a > </b > (priyanka) has been approved.', 'READ', '2020-08-30 13:13:40', '2020-09-13 12:08:11'),
(1444, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/392\' > APMT-386</a > </b > (priyanka) has been approved.', 'READ', '2020-08-30 13:13:40', '2020-09-14 10:24:05'),
(1445, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/392\' > APMT-386</a > </b > (priyanka) has been approved.', 'UNREAD', '2020-08-30 13:13:40', '2020-08-30 13:13:40'),
(1446, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/368\' > APMT-362</a > </b > (raul) has been visited.', 'READ', '2020-08-30 13:13:56', '2020-09-13 12:08:11'),
(1447, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/368\' > APMT-362</a > </b > (raul) has been visited.', 'READ', '2020-08-30 13:13:56', '2020-09-14 10:24:05'),
(1448, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/370\' > APMT-364</a > </b > (adfbjhb) has been visited.', 'READ', '2020-08-30 13:13:57', '2020-09-13 12:08:11'),
(1449, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/370\' > APMT-364</a > </b > (adfbjhb) has been visited.', 'READ', '2020-08-30 13:13:57', '2020-09-14 10:24:05'),
(1450, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/367\' > APMT-361</a > </b > (satish) has been visited.', 'READ', '2020-08-30 13:14:09', '2020-09-13 12:08:11'),
(1451, 245, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/367\' > APMT-361</a > </b > (satish) has been visited.', 'UNREAD', '2020-08-30 13:14:09', '2020-08-30 13:14:09'),
(1452, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/375\' > APMT-369</a > </b > (Abcd) has been visited.', 'READ', '2020-08-30 13:14:28', '2020-09-13 12:08:11'),
(1453, 165, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/375\' > APMT-369</a > </b > (Abcd) has been visited.', 'UNREAD', '2020-08-30 13:14:28', '2020-08-30 13:14:28'),
(1454, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/376\' > APMT-370</a > </b > (Auto fill) has been visited.', 'READ', '2020-08-30 13:14:29', '2020-09-13 12:08:11'),
(1455, 247, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/376\' > APMT-370</a > </b > (Auto fill) has been visited.', 'UNREAD', '2020-08-30 13:14:29', '2020-08-30 13:14:29'),
(1456, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/377\' > APMT-371</a > </b > (Prince) has been visited.', 'READ', '2020-08-30 13:14:30', '2020-09-13 12:08:11'),
(1457, 247, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/377\' > APMT-371</a > </b > (Prince) has been visited.', 'UNREAD', '2020-08-30 13:14:30', '2020-08-30 13:14:30'),
(1458, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/378\' > APMT-372</a > </b > (aditya) has been visited.', 'READ', '2020-08-30 13:14:31', '2020-09-13 12:08:11'),
(1459, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/378\' > APMT-372</a > </b > (aditya) has been visited.', 'READ', '2020-08-30 13:14:31', '2020-09-14 10:24:05'),
(1460, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/380\' > APMT-374</a > </b > (fatima) has been visited.', 'READ', '2020-08-30 13:14:32', '2020-09-13 12:08:11'),
(1461, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/380\' > APMT-374</a > </b > (fatima) has been visited.', 'READ', '2020-08-30 13:14:32', '2020-09-14 10:24:05'),
(1462, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/381\' > APMT-375</a > </b > (case) has been visited.', 'READ', '2020-08-30 13:14:32', '2020-09-13 12:08:11'),
(1463, 252, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/381\' > APMT-375</a > </b > (case) has been visited.', 'UNREAD', '2020-08-30 13:14:32', '2020-08-30 13:14:32'),
(1464, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/371\' > APMT-365</a > </b > (dhaval) has been visited.', 'READ', '2020-08-30 13:14:49', '2020-09-13 12:08:11'),
(1465, 247, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/371\' > APMT-365</a > </b > (dhaval) has been visited.', 'UNREAD', '2020-08-30 13:14:49', '2020-08-30 13:14:49'),
(1466, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/382\' > APMT-376</a > </b > (nilamben) has been visited.', 'READ', '2020-08-30 13:14:51', '2020-09-13 12:08:11'),
(1467, 253, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/382\' > APMT-376</a > </b > (nilamben) has been visited.', 'UNREAD', '2020-08-30 13:14:51', '2020-08-30 13:14:51'),
(1468, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/383\' > APMT-377</a > </b > (??????) has been visited.', 'READ', '2020-08-30 13:14:52', '2020-09-13 12:08:11'),
(1469, 254, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/383\' > APMT-377</a > </b > (??????) has been visited.', 'UNREAD', '2020-08-30 13:14:52', '2020-08-30 13:14:52'),
(1470, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/385\' > APMT-379</a > </b > (RAVINA) has been visited.', 'READ', '2020-08-30 13:14:53', '2020-09-13 12:08:11'),
(1471, 255, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/385\' > APMT-379</a > </b > (RAVINA) has been visited.', 'UNREAD', '2020-08-30 13:14:53', '2020-08-30 13:14:53'),
(1472, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/389\' > APMT-383</a > </b > (case) has been visited.', 'READ', '2020-08-30 13:15:13', '2020-09-13 12:08:11'),
(1473, 256, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/389\' > APMT-383</a > </b > (case) has been visited.', 'UNREAD', '2020-08-30 13:15:13', '2020-08-30 13:15:13'),
(1474, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/387\' > APMT-381</a > </b > (Hshd) has been visited.', 'READ', '2020-08-30 13:15:26', '2020-09-13 12:08:11'),
(1475, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/387\' > APMT-381</a > </b > (Hshd) has been visited.', 'READ', '2020-08-30 13:15:26', '2020-09-14 10:24:05'),
(1476, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/390\' > APMT-384</a > </b > (VIHAN) prescription has been created.', 'READ', '2020-08-30 13:22:20', '2020-09-13 12:08:11'),
(1477, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/393\' > APMT-387</a > </b > (Shahid Test) has been booked', 'READ', '2020-09-03 21:09:15', '2020-09-13 12:08:11'),
(1478, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/393\' > APMT-387</a > </b > (Shahid Test) has been booked', 'READ', '2020-09-03 21:09:15', '2020-09-13 10:55:29'),
(1479, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/393\' > APMT-387</a > </b > (Shahid Test) has been approved.', 'READ', '2020-09-03 21:13:51', '2020-09-14 10:24:05'),
(1480, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/393\' > APMT-387</a > </b > (Shahid Test) has been approved.', 'READ', '2020-09-03 21:13:51', '2020-09-13 10:55:29'),
(1481, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/393\' > APMT-387</a > </b > (Shahid Test) has been visited.', 'READ', '2020-09-03 21:17:47', '2020-09-14 10:24:05'),
(1482, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/393\' > APMT-387</a > </b > (Shahid Test) has been visited.', 'READ', '2020-09-03 21:17:47', '2020-09-13 10:55:29'),
(1483, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/394\' > APMT-388</a > </b > (FAGE) has been booked', 'READ', '2020-09-06 13:35:25', '2020-09-13 12:08:11'),
(1484, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/394\' > APMT-388</a > </b > (FAGE) has been booked', 'READ', '2020-09-06 13:35:25', '2020-09-13 10:55:29'),
(1485, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/394\' > APMT-388</a > </b > (FAGE) has been approved.', 'READ', '2020-09-06 13:38:15', '2020-09-13 12:08:11'),
(1486, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/394\' > APMT-388</a > </b > (FAGE) has been approved.', 'READ', '2020-09-06 13:38:15', '2020-09-14 10:24:05'),
(1487, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/394\' > APMT-388</a > </b > (FAGE) has been approved.', 'UNREAD', '2020-09-06 13:38:15', '2020-09-06 13:38:15'),
(1488, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/390\' > APMT-384</a > </b > (VIHAN) has been visited.', 'READ', '2020-09-06 13:38:46', '2020-09-13 12:08:11'),
(1489, 257, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/390\' > APMT-384</a > </b > (VIHAN) has been visited.', 'UNREAD', '2020-09-06 13:38:46', '2020-09-06 13:38:46'),
(1490, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/391\' > APMT-385</a > </b > (danish) has been visited.', 'READ', '2020-09-06 13:38:49', '2020-09-13 12:08:11'),
(1491, 258, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/391\' > APMT-385</a > </b > (danish) has been visited.', 'UNREAD', '2020-09-06 13:38:49', '2020-09-06 13:38:49'),
(1492, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/392\' > APMT-386</a > </b > (priyanka) has been visited.', 'READ', '2020-09-06 13:38:55', '2020-09-13 12:08:11'),
(1493, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/392\' > APMT-386</a > </b > (priyanka) has been visited.', 'READ', '2020-09-06 13:38:55', '2020-09-14 10:24:05'),
(1494, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/395\' > APMT-389</a > </b > (JIGAR) has been booked', 'READ', '2020-09-06 13:42:41', '2020-09-13 12:08:11'),
(1495, 259, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/395\' > APMT-389</a > </b > (JIGAR) has been booked', 'UNREAD', '2020-09-06 13:42:41', '2020-09-06 13:42:41'),
(1496, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/396\' > APMT-390</a > </b > (case) has been booked', 'READ', '2020-09-06 13:43:39', '2020-09-13 12:08:11'),
(1497, 46, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/396\' > APMT-390</a > </b > (case) has been booked', 'READ', '2020-09-06 13:43:39', '2020-09-14 10:24:05'),
(1498, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/394\' > APMT-388</a > </b > (FAGE) prescription has been created.', 'READ', '2020-09-06 13:58:48', '2020-09-13 12:08:11'),
(1499, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/394\' > APMT-388</a > </b > (FAGE) has been visited.', 'READ', '2020-09-06 14:02:20', '2020-09-14 10:24:05'),
(1500, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/394\' > APMT-388</a > </b > (FAGE) has been visited.', 'READ', '2020-09-06 14:02:20', '2020-09-13 10:55:29'),
(1501, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/397\' > APMT-391</a > </b > (Jigar) has been booked', 'READ', '2020-09-13 10:38:46', '2020-09-13 12:08:11'),
(1502, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/397\' > APMT-391</a > </b > (Jigar) has been booked', 'READ', '2020-09-13 10:38:46', '2020-09-13 10:55:29'),
(1503, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/398\' > APMT-392</a > </b > (RAKESH) has been booked', 'READ', '2020-09-13 10:40:03', '2020-09-13 12:08:11'),
(1504, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/398\' > APMT-392</a > </b > (RAKESH) has been booked', 'READ', '2020-09-13 10:40:03', '2020-09-13 10:55:29'),
(1505, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/399\' > APMT-393</a > </b > (Navin) has been booked', 'READ', '2020-09-13 10:41:03', '2020-09-13 12:08:11'),
(1506, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/399\' > APMT-393</a > </b > (Navin) has been booked', 'READ', '2020-09-13 10:41:03', '2020-09-13 10:55:29'),
(1507, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/397\' > APMT-391</a > </b > (Jigar) has been approved.', 'READ', '2020-09-13 10:52:45', '2020-09-13 12:08:11'),
(1508, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/397\' > APMT-391</a > </b > (Jigar) has been approved.', 'READ', '2020-09-13 10:52:45', '2020-09-14 10:24:05'),
(1509, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/397\' > APMT-391</a > </b > (Jigar) has been approved.', 'UNREAD', '2020-09-13 10:52:45', '2020-09-13 10:52:45'),
(1510, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/398\' > APMT-392</a > </b > (RAKESH) has been approved.', 'READ', '2020-09-13 10:52:59', '2020-09-13 12:08:11'),
(1511, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/398\' > APMT-392</a > </b > (RAKESH) has been approved.', 'READ', '2020-09-13 10:52:59', '2020-09-14 10:24:05'),
(1512, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/398\' > APMT-392</a > </b > (RAKESH) has been approved.', 'UNREAD', '2020-09-13 10:52:59', '2020-09-13 10:52:59'),
(1513, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/395\' > APMT-389</a > </b > (JIGAR) has been canceled.', 'READ', '2020-09-13 10:53:27', '2020-09-13 12:08:11'),
(1514, 259, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/395\' > APMT-389</a > </b > (JIGAR) has been canceled.', 'UNREAD', '2020-09-13 10:53:27', '2020-09-13 10:53:27'),
(1515, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/399\' > APMT-393</a > </b > (Navin) has been approved.', 'READ', '2020-09-13 10:54:00', '2020-09-13 12:08:11'),
(1516, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/399\' > APMT-393</a > </b > (Navin) has been approved.', 'READ', '2020-09-13 10:54:00', '2020-09-14 10:24:05'),
(1517, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/399\' > APMT-393</a > </b > (Navin) has been approved.', 'UNREAD', '2020-09-13 10:54:00', '2020-09-13 10:54:00'),
(1518, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/396\' > APMT-390</a > </b > (case) has been canceled.', 'READ', '2020-09-13 10:54:32', '2020-09-13 12:08:11'),
(1519, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/396\' > APMT-390</a > </b > (case) has been canceled.', 'READ', '2020-09-13 10:54:32', '2020-09-14 10:24:05'),
(1520, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/400\' > APMT-394</a > </b > (Navin) has been booked', 'READ', '2020-09-13 11:03:05', '2020-09-13 12:08:11'),
(1521, 263, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/400\' > APMT-394</a > </b > (Navin) has been booked', 'UNREAD', '2020-09-13 11:03:05', '2020-09-13 11:03:05'),
(1522, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/401\' > APMT-395</a > </b > (Jigar Chaudhari) has been booked', 'READ', '2020-09-13 11:03:09', '2020-09-13 12:08:11'),
(1523, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/402\' > APMT-396</a > </b > (ADI) has been booked', 'READ', '2020-09-13 11:08:15', '2020-09-13 12:08:11'),
(1524, 46, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/402\' > APMT-396</a > </b > (ADI) has been booked', 'READ', '2020-09-13 11:08:15', '2020-09-14 10:24:05'),
(1525, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/403\' > APMT-397</a > </b > (Jigar_Chaudhari) has been booked', 'READ', '2020-09-13 11:08:23', '2020-09-13 12:08:11'),
(1526, 264, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/403\' > APMT-397</a > </b > (Jigar_Chaudhari) has been booked', 'UNREAD', '2020-09-13 11:08:23', '2020-09-13 11:08:23'),
(1527, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/401\' > APMT-395</a > </b > (Jigar Chaudhari) has been visited.', 'READ', '2020-09-13 11:28:07', '2020-09-13 12:08:11'),
(1528, NULL, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/401\' > APMT-395</a > </b > (Jigar Chaudhari) has been visited.', 'UNREAD', '2020-09-13 11:28:07', '2020-09-13 11:28:07'),
(1529, 47, 'Prescription Created ', 'A appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/397\' > APMT-391</a > </b > (Jigar) prescription has been created.', 'READ', '2020-09-13 11:30:25', '2020-09-13 12:08:11'),
(1530, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/397\' > APMT-391</a > </b > (Jigar) has been visited.', 'READ', '2020-09-13 11:42:42', '2020-09-14 10:24:05'),
(1531, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/397\' > APMT-391</a > </b > (Jigar) has been visited.', 'UNREAD', '2020-09-13 11:42:42', '2020-09-13 11:42:42'),
(1532, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/397\' > APMT-391</a > </b > (Jigar) has been visited.', 'READ', '2020-09-13 11:43:47', '2020-09-14 10:24:05'),
(1533, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/397\' > APMT-391</a > </b > (Jigar) has been visited.', 'UNREAD', '2020-09-13 11:43:47', '2020-09-13 11:43:47'),
(1534, 135, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/404\' > APMT-398</a > </b > (face) has been booked', 'READ', '2020-09-13 12:48:13', '2020-09-13 12:56:24'),
(1535, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/404\' > APMT-398</a > </b > (face) has been approved.', 'READ', '2020-09-13 12:49:20', '2020-09-14 10:24:05'),
(1536, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/404\' > APMT-398</a > </b > (face) has been approved.', 'READ', '2020-09-13 12:49:30', '2020-09-14 10:24:05'),
(1537, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/404\' > APMT-398</a > </b > (face) has been approved.', 'READ', '2020-09-13 12:49:32', '2020-09-14 10:24:05'),
(1538, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/404\' > APMT-398</a > </b > (face) has been visited.', 'READ', '2020-09-13 12:50:12', '2020-09-14 10:24:05'),
(1539, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/405\' > APMT-399</a > </b > (shhaid) has been booked', 'UNREAD', '2020-09-13 15:29:48', '2020-09-13 15:29:48'),
(1540, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/405\' > APMT-399</a > </b > (shhaid) has been booked', 'UNREAD', '2020-09-13 15:29:48', '2020-09-13 15:29:48'),
(1541, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/405\' > APMT-399</a > </b > (shhaid) has been approved.', 'UNREAD', '2020-09-13 15:30:16', '2020-09-13 15:30:16'),
(1542, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/405\' > APMT-399</a > </b > (shhaid) has been approved.', 'READ', '2020-09-13 15:30:16', '2020-09-14 10:24:05'),
(1543, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/405\' > APMT-399</a > </b > (shhaid) has been approved.', 'UNREAD', '2020-09-13 15:30:16', '2020-09-13 15:30:16'),
(1544, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/406\' > APMT-400</a > </b > (rale) has been booked', 'UNREAD', '2020-09-13 15:40:47', '2020-09-13 15:40:47'),
(1545, 46, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/406\' > APMT-400</a > </b > (rale) has been booked', 'READ', '2020-09-13 15:40:47', '2020-09-14 10:24:05'),
(1546, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/407\' > APMT-401</a > </b > (viva) has been booked', 'UNREAD', '2020-09-13 15:43:37', '2020-09-13 15:43:37'),
(1547, 265, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/407\' > APMT-401</a > </b > (viva) has been booked', 'UNREAD', '2020-09-13 15:43:37', '2020-09-13 15:43:37'),
(1548, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/408\' > APMT-402</a > </b > (savage 1) has been booked', 'UNREAD', '2020-09-13 16:16:25', '2020-09-13 16:16:25'),
(1549, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/408\' > APMT-402</a > </b > (savage 1) has been booked', 'UNREAD', '2020-09-13 16:16:25', '2020-09-13 16:16:25'),
(1550, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/408\' > APMT-402</a > </b > (savage 1) has been canceled by patient', 'UNREAD', '2020-09-13 16:16:40', '2020-09-13 16:16:40'),
(1551, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/408\' > APMT-402</a > </b > (savage 1) has been canceled by patient', 'UNREAD', '2020-09-13 16:16:40', '2020-09-13 16:16:40'),
(1552, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/409\' > APMT-403</a > </b > (savage 1) has been booked', 'UNREAD', '2020-09-13 16:17:21', '2020-09-13 16:17:21'),
(1553, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/409\' > APMT-403</a > </b > (savage 1) has been booked', 'UNREAD', '2020-09-13 16:17:21', '2020-09-13 16:17:21'),
(1554, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/410\' > APMT-404</a > </b > (savge 2) has been booked', 'UNREAD', '2020-09-13 16:18:06', '2020-09-13 16:18:06'),
(1555, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/410\' > APMT-404</a > </b > (savge 2) has been booked', 'UNREAD', '2020-09-13 16:18:06', '2020-09-13 16:18:06'),
(1556, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/411\' > APMT-405</a > </b > (savage 3) has been booked', 'UNREAD', '2020-09-13 16:18:42', '2020-09-13 16:18:42'),
(1557, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/411\' > APMT-405</a > </b > (savage 3) has been booked', 'UNREAD', '2020-09-13 16:18:42', '2020-09-13 16:18:42'),
(1558, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/409\' > APMT-403</a > </b > (savage 1) has been approved.', 'UNREAD', '2020-09-13 16:20:00', '2020-09-13 16:20:00'),
(1559, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/409\' > APMT-403</a > </b > (savage 1) has been approved.', 'READ', '2020-09-13 16:20:00', '2020-09-14 10:24:05'),
(1560, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/409\' > APMT-403</a > </b > (savage 1) has been approved.', 'UNREAD', '2020-09-13 16:20:00', '2020-09-13 16:20:00'),
(1561, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/411\' > APMT-405</a > </b > (savage 3) has been approved.', 'UNREAD', '2020-09-13 16:20:02', '2020-09-13 16:20:02'),
(1562, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/411\' > APMT-405</a > </b > (savage 3) has been approved.', 'READ', '2020-09-13 16:20:02', '2020-09-14 10:24:05'),
(1563, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/411\' > APMT-405</a > </b > (savage 3) has been approved.', 'UNREAD', '2020-09-13 16:20:02', '2020-09-13 16:20:02'),
(1564, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/410\' > APMT-404</a > </b > (savge 2) has been approved.', 'UNREAD', '2020-09-13 16:20:07', '2020-09-13 16:20:07'),
(1565, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/410\' > APMT-404</a > </b > (savge 2) has been approved.', 'READ', '2020-09-13 16:20:07', '2020-09-14 10:24:05'),
(1566, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/410\' > APMT-404</a > </b > (savge 2) has been approved.', 'UNREAD', '2020-09-13 16:20:07', '2020-09-13 16:20:07'),
(1567, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/412\' > APMT-406</a > </b > (1) has been booked', 'UNREAD', '2020-09-13 16:34:43', '2020-09-13 16:34:43'),
(1568, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/412\' > APMT-406</a > </b > (1) has been booked', 'UNREAD', '2020-09-13 16:34:43', '2020-09-13 16:34:43'),
(1569, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/413\' > APMT-407</a > </b > (2) has been booked', 'UNREAD', '2020-09-13 16:35:31', '2020-09-13 16:35:31'),
(1570, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/413\' > APMT-407</a > </b > (2) has been booked', 'UNREAD', '2020-09-13 16:35:31', '2020-09-13 16:35:31'),
(1571, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/414\' > APMT-408</a > </b > (3) has been booked', 'UNREAD', '2020-09-13 16:38:18', '2020-09-13 16:38:18'),
(1572, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/414\' > APMT-408</a > </b > (3) has been booked', 'UNREAD', '2020-09-13 16:38:18', '2020-09-13 16:38:18'),
(1573, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/395\' > APMT-389</a > </b > (JIGAR) has been visited.', 'UNREAD', '2020-09-13 16:38:58', '2020-09-13 16:38:58'),
(1574, 259, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/395\' > APMT-389</a > </b > (JIGAR) has been visited.', 'UNREAD', '2020-09-13 16:38:58', '2020-09-13 16:38:58'),
(1575, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/398\' > APMT-392</a > </b > (RAKESH) has been visited.', 'UNREAD', '2020-09-13 16:39:01', '2020-09-13 16:39:01'),
(1576, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/398\' > APMT-392</a > </b > (RAKESH) has been visited.', 'READ', '2020-09-13 16:39:01', '2020-09-14 10:24:05'),
(1577, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/400\' > APMT-394</a > </b > (Navin) has been visited.', 'UNREAD', '2020-09-13 16:39:04', '2020-09-13 16:39:04'),
(1578, 263, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/400\' > APMT-394</a > </b > (Navin) has been visited.', 'UNREAD', '2020-09-13 16:39:04', '2020-09-13 16:39:04'),
(1579, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/396\' > APMT-390</a > </b > (case) has been visited.', 'UNREAD', '2020-09-13 16:39:06', '2020-09-13 16:39:06'),
(1580, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/396\' > APMT-390</a > </b > (case) has been visited.', 'READ', '2020-09-13 16:39:06', '2020-09-14 10:24:05'),
(1581, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/405\' > APMT-399</a > </b > (shhaid) has been visited.', 'UNREAD', '2020-09-13 16:39:09', '2020-09-13 16:39:09'),
(1582, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/405\' > APMT-399</a > </b > (shhaid) has been visited.', 'READ', '2020-09-13 16:39:09', '2020-09-14 10:24:05'),
(1583, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/406\' > APMT-400</a > </b > (rale) has been visited.', 'UNREAD', '2020-09-13 16:39:14', '2020-09-13 16:39:14'),
(1584, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/406\' > APMT-400</a > </b > (rale) has been visited.', 'READ', '2020-09-13 16:39:14', '2020-09-14 10:24:05'),
(1585, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/399\' > APMT-393</a > </b > (Navin) has been visited.', 'UNREAD', '2020-09-13 16:39:56', '2020-09-13 16:39:56'),
(1586, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/399\' > APMT-393</a > </b > (Navin) has been visited.', 'READ', '2020-09-13 16:39:56', '2020-09-14 10:24:05'),
(1587, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/402\' > APMT-396</a > </b > (ADI) has been visited.', 'UNREAD', '2020-09-13 16:39:57', '2020-09-13 16:39:57'),
(1588, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/402\' > APMT-396</a > </b > (ADI) has been visited.', 'READ', '2020-09-13 16:39:57', '2020-09-14 10:24:05'),
(1589, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/403\' > APMT-397</a > </b > (Jigar_Chaudhari) has been visited.', 'UNREAD', '2020-09-13 16:39:59', '2020-09-13 16:39:59'),
(1590, 264, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/403\' > APMT-397</a > </b > (Jigar_Chaudhari) has been visited.', 'UNREAD', '2020-09-13 16:39:59', '2020-09-13 16:39:59'),
(1591, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/404\' > APMT-398</a > </b > (face) has been visited.', 'UNREAD', '2020-09-13 16:39:59', '2020-09-13 16:39:59'),
(1592, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/404\' > APMT-398</a > </b > (face) has been visited.', 'READ', '2020-09-13 16:39:59', '2020-09-14 10:24:05'),
(1593, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/397\' > APMT-391</a > </b > (Jigar) has been visited.', 'UNREAD', '2020-09-13 16:40:01', '2020-09-13 16:40:01'),
(1594, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/397\' > APMT-391</a > </b > (Jigar) has been visited.', 'READ', '2020-09-13 16:40:01', '2020-09-14 10:24:05'),
(1595, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/411\' > APMT-405</a > </b > (savage 3) has been visited.', 'UNREAD', '2020-09-13 16:40:06', '2020-09-13 16:40:06'),
(1596, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/411\' > APMT-405</a > </b > (savage 3) has been visited.', 'READ', '2020-09-13 16:40:06', '2020-09-14 10:24:05'),
(1597, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/407\' > APMT-401</a > </b > (viva) has been visited.', 'UNREAD', '2020-09-13 16:40:25', '2020-09-13 16:40:25'),
(1598, 265, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/407\' > APMT-401</a > </b > (viva) has been visited.', 'UNREAD', '2020-09-13 16:40:25', '2020-09-13 16:40:25'),
(1599, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/409\' > APMT-403</a > </b > (savage 1) has been visited.', 'UNREAD', '2020-09-13 16:40:27', '2020-09-13 16:40:27'),
(1600, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/409\' > APMT-403</a > </b > (savage 1) has been visited.', 'READ', '2020-09-13 16:40:27', '2020-09-14 10:24:05'),
(1601, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/410\' > APMT-404</a > </b > (savge 2) has been visited.', 'UNREAD', '2020-09-13 16:40:27', '2020-09-13 16:40:27'),
(1602, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/410\' > APMT-404</a > </b > (savge 2) has been visited.', 'READ', '2020-09-13 16:40:27', '2020-09-14 10:24:05'),
(1603, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/412\' > APMT-406</a > </b > (1) has been approved.', 'UNREAD', '2020-09-13 16:40:57', '2020-09-13 16:40:57'),
(1604, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/412\' > APMT-406</a > </b > (1) has been approved.', 'READ', '2020-09-13 16:40:57', '2020-09-14 10:24:05'),
(1605, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/412\' > APMT-406</a > </b > (1) has been approved.', 'UNREAD', '2020-09-13 16:40:57', '2020-09-13 16:40:57'),
(1606, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/413\' > APMT-407</a > </b > (2) has been approved.', 'UNREAD', '2020-09-13 16:41:14', '2020-09-13 16:41:14'),
(1607, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/413\' > APMT-407</a > </b > (2) has been approved.', 'READ', '2020-09-13 16:41:14', '2020-09-14 10:24:05'),
(1608, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/413\' > APMT-407</a > </b > (2) has been approved.', 'UNREAD', '2020-09-13 16:41:14', '2020-09-13 16:41:14'),
(1609, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/414\' > APMT-408</a > </b > (3) has been approved.', 'UNREAD', '2020-09-13 16:41:15', '2020-09-13 16:41:15'),
(1610, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/414\' > APMT-408</a > </b > (3) has been approved.', 'READ', '2020-09-13 16:41:15', '2020-09-14 10:24:05'),
(1611, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/414\' > APMT-408</a > </b > (3) has been approved.', 'UNREAD', '2020-09-13 16:41:15', '2020-09-13 16:41:15'),
(1612, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/415\' > APMT-409</a > </b > (4) has been booked', 'UNREAD', '2020-09-13 16:41:52', '2020-09-13 16:41:52'),
(1613, 266, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/415\' > APMT-409</a > </b > (4) has been booked', 'UNREAD', '2020-09-13 16:41:52', '2020-09-13 16:41:52'),
(1614, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/416\' > APMT-410</a > </b > (5) has been booked', 'UNREAD', '2020-09-13 16:42:46', '2020-09-13 16:42:46'),
(1615, 267, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/416\' > APMT-410</a > </b > (5) has been booked', 'UNREAD', '2020-09-13 16:42:46', '2020-09-13 16:42:46'),
(1616, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/417\' > APMT-411</a > </b > (6) has been booked', 'UNREAD', '2020-09-13 16:43:15', '2020-09-13 16:43:15'),
(1617, 268, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/417\' > APMT-411</a > </b > (6) has been booked', 'READ', '2020-09-13 16:43:15', '2020-09-13 16:49:04'),
(1618, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/418\' > APMT-412</a > </b > (7) has been booked', 'UNREAD', '2020-09-13 16:43:47', '2020-09-13 16:43:47'),
(1619, 269, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/appointment/show/418\' > APMT-412</a > </b > (7) has been booked', 'UNREAD', '2020-09-13 16:43:47', '2020-09-13 16:43:47'),
(1620, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/419\' > APMT-413</a > </b > (8) has been booked', 'UNREAD', '2020-09-13 16:45:27', '2020-09-13 16:45:27'),
(1621, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/419\' > APMT-413</a > </b > (8) has been booked', 'UNREAD', '2020-09-13 16:45:27', '2020-09-13 16:45:27'),
(1622, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/420\' > APMT-414</a > </b > (8) has been booked', 'UNREAD', '2020-09-13 16:46:15', '2020-09-13 16:46:15'),
(1623, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/420\' > APMT-414</a > </b > (8) has been booked', 'UNREAD', '2020-09-13 16:46:15', '2020-09-13 16:46:15'),
(1624, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/421\' > APMT-415</a > </b > (10) has been booked', 'UNREAD', '2020-09-13 16:47:10', '2020-09-13 16:47:10'),
(1625, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/421\' > APMT-415</a > </b > (10) has been booked', 'UNREAD', '2020-09-13 16:47:10', '2020-09-13 16:47:10'),
(1626, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/419\' > APMT-413</a > </b > (8) has been approved.', 'UNREAD', '2020-09-13 16:48:15', '2020-09-13 16:48:15'),
(1627, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/419\' > APMT-413</a > </b > (8) has been approved.', 'READ', '2020-09-13 16:48:15', '2020-09-14 10:24:05'),
(1628, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/419\' > APMT-413</a > </b > (8) has been approved.', 'UNREAD', '2020-09-13 16:48:15', '2020-09-13 16:48:15'),
(1629, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/420\' > APMT-414</a > </b > (8) has been approved.', 'UNREAD', '2020-09-13 16:48:16', '2020-09-13 16:48:16'),
(1630, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/420\' > APMT-414</a > </b > (8) has been approved.', 'READ', '2020-09-13 16:48:16', '2020-09-14 10:24:05'),
(1631, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/420\' > APMT-414</a > </b > (8) has been approved.', 'UNREAD', '2020-09-13 16:48:16', '2020-09-13 16:48:16');
INSERT INTO `notifications` (`id`, `user_id`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1632, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/421\' > APMT-415</a > </b > (10) has been approved.', 'UNREAD', '2020-09-13 16:48:23', '2020-09-13 16:48:23'),
(1633, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/421\' > APMT-415</a > </b > (10) has been approved.', 'READ', '2020-09-13 16:48:23', '2020-09-14 10:24:05'),
(1634, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/421\' > APMT-415</a > </b > (10) has been approved.', 'UNREAD', '2020-09-13 16:48:23', '2020-09-13 16:48:23'),
(1635, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/422\' > APMT-416</a > </b > (11) has been booked', 'UNREAD', '2020-09-13 16:51:04', '2020-09-13 16:51:04'),
(1636, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/422\' > APMT-416</a > </b > (11) has been booked', 'UNREAD', '2020-09-13 16:51:04', '2020-09-13 16:51:04'),
(1637, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/423\' > APMT-417</a > </b > (12) has been booked', 'UNREAD', '2020-09-13 16:51:34', '2020-09-13 16:51:34'),
(1638, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/423\' > APMT-417</a > </b > (12) has been booked', 'UNREAD', '2020-09-13 16:51:34', '2020-09-13 16:51:34'),
(1639, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/424\' > APMT-418</a > </b > (13) has been booked', 'UNREAD', '2020-09-13 16:52:12', '2020-09-13 16:52:12'),
(1640, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/424\' > APMT-418</a > </b > (13) has been booked', 'UNREAD', '2020-09-13 16:52:12', '2020-09-13 16:52:12'),
(1641, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/425\' > APMT-419</a > </b > (14) has been booked', 'UNREAD', '2020-09-13 16:52:42', '2020-09-13 16:52:42'),
(1642, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/425\' > APMT-419</a > </b > (14) has been booked', 'UNREAD', '2020-09-13 16:52:42', '2020-09-13 16:52:42'),
(1643, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/424\' > APMT-418</a > </b > (13) has been approved.', 'UNREAD', '2020-09-13 16:53:19', '2020-09-13 16:53:19'),
(1644, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/424\' > APMT-418</a > </b > (13) has been approved.', 'READ', '2020-09-13 16:53:19', '2020-09-14 10:24:05'),
(1645, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/424\' > APMT-418</a > </b > (13) has been approved.', 'UNREAD', '2020-09-13 16:53:19', '2020-09-13 16:53:19'),
(1646, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/425\' > APMT-419</a > </b > (14) has been approved.', 'UNREAD', '2020-09-13 16:53:32', '2020-09-13 16:53:32'),
(1647, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/425\' > APMT-419</a > </b > (14) has been approved.', 'READ', '2020-09-13 16:53:32', '2020-09-14 10:24:05'),
(1648, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/425\' > APMT-419</a > </b > (14) has been approved.', 'UNREAD', '2020-09-13 16:53:32', '2020-09-13 16:53:32'),
(1649, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/412\' > APMT-406</a > </b > (1) has been visited.', 'READ', '2020-09-13 16:54:43', '2020-09-14 10:24:05'),
(1650, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/412\' > APMT-406</a > </b > (1) has been visited.', 'UNREAD', '2020-09-13 16:54:43', '2020-09-13 16:54:43'),
(1651, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/413\' > APMT-407</a > </b > (2) has been visited.', 'READ', '2020-09-13 16:55:11', '2020-09-14 10:24:05'),
(1652, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/413\' > APMT-407</a > </b > (2) has been visited.', 'UNREAD', '2020-09-13 16:55:11', '2020-09-13 16:55:11'),
(1653, 269, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/418\' > APMT-412</a > </b > (7) has been visited.', 'UNREAD', '2020-09-13 16:59:03', '2020-09-13 16:59:03'),
(1654, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/418\' > APMT-412</a > </b > (7) has been visited.', 'UNREAD', '2020-09-13 16:59:03', '2020-09-13 16:59:03'),
(1655, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/419\' > APMT-413</a > </b > (8) has been visited.', 'READ', '2020-09-13 16:59:28', '2020-09-14 10:24:05'),
(1656, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/419\' > APMT-413</a > </b > (8) has been visited.', 'UNREAD', '2020-09-13 16:59:28', '2020-09-13 16:59:28'),
(1657, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/426\' > APMT-420</a > </b > (bharat) has been booked', 'UNREAD', '2020-09-14 10:19:52', '2020-09-14 10:19:52'),
(1658, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/426\' > APMT-420</a > </b > (bharat) has been booked', 'UNREAD', '2020-09-14 10:19:52', '2020-09-14 10:19:52'),
(1659, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/426\' > APMT-420</a > </b > (bharat) has been approved.', 'UNREAD', '2020-09-14 10:21:30', '2020-09-14 10:21:30'),
(1660, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/426\' > APMT-420</a > </b > (bharat) has been approved.', 'READ', '2020-09-14 10:21:30', '2020-09-14 10:24:05'),
(1661, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/426\' > APMT-420</a > </b > (bharat) has been approved.', 'UNREAD', '2020-09-14 10:21:30', '2020-09-14 10:21:30'),
(1662, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/422\' > APMT-416</a > </b > (11) has been approved.', 'UNREAD', '2020-09-14 10:22:54', '2020-09-14 10:22:54'),
(1663, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/422\' > APMT-416</a > </b > (11) has been approved.', 'READ', '2020-09-14 10:22:54', '2020-09-14 10:24:05'),
(1664, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/422\' > APMT-416</a > </b > (11) has been approved.', 'UNREAD', '2020-09-14 10:22:54', '2020-09-14 10:22:54'),
(1665, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/423\' > APMT-417</a > </b > (12) has been approved.', 'UNREAD', '2020-09-14 10:23:35', '2020-09-14 10:23:35'),
(1666, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/423\' > APMT-417</a > </b > (12) has been approved.', 'READ', '2020-09-14 10:23:35', '2020-09-14 10:24:05'),
(1667, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/423\' > APMT-417</a > </b > (12) has been approved.', 'UNREAD', '2020-09-14 10:23:35', '2020-09-14 10:23:35'),
(1668, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/427\' > APMT-421</a > </b > (shahid) has been booked', 'UNREAD', '2020-09-14 10:27:11', '2020-09-14 10:27:11'),
(1669, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/427\' > APMT-421</a > </b > (shahid) has been booked', 'UNREAD', '2020-09-14 10:27:11', '2020-09-14 10:27:11'),
(1670, 47, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/427\' > APMT-421</a > </b > (shahid) has been approved.', 'UNREAD', '2020-09-14 10:28:02', '2020-09-14 10:28:02'),
(1671, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/427\' > APMT-421</a > </b > (shahid) has been approved.', 'UNREAD', '2020-09-14 10:28:02', '2020-09-14 10:28:02'),
(1672, 49, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/assistant/appointment/show/427\' > APMT-421</a > </b > (shahid) has been approved.', 'UNREAD', '2020-09-14 10:28:02', '2020-09-14 10:28:02'),
(1673, 246, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/428\' > APMT-422</a > </b > (mahesh) has been booked', 'UNREAD', '2020-09-17 10:39:32', '2020-09-17 10:39:32'),
(1674, 47, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/doctor/appointment/show/429\' > APMT-423</a > </b > (nikunj) has been booked', 'UNREAD', '2020-09-17 10:40:59', '2020-09-17 10:40:59'),
(1675, 48, 'New appointment', 'A new appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/429\' > APMT-423</a > </b > (nikunj) has been booked', 'UNREAD', '2020-09-17 10:40:59', '2020-09-17 10:40:59'),
(1676, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/429\' > APMT-423</a > </b > (nikunj) has been approved.', 'UNREAD', '2020-09-17 10:44:10', '2020-09-17 10:44:10'),
(1677, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/429\' > APMT-423</a > </b > (nikunj) has been approved.', 'UNREAD', '2020-09-17 10:44:10', '2020-09-17 10:44:10'),
(1678, 46, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/appointment/show/429\' > APMT-423</a > </b > (nikunj) has been visited.', 'UNREAD', '2020-09-17 11:10:15', '2020-09-17 11:10:15'),
(1679, 48, 'Appointment updated', 'Appointment <b><a href=\'https://doctorooms.com/receptionist/appointment/show/429\' > APMT-423</a > </b > (nikunj) has been visited.', 'UNREAD', '2020-09-17 11:10:15', '2020-09-17 11:10:15'),
(1680, 23, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/\' > APMT-424</a > </b > (gaurav) has been booked', 'UNREAD', '2020-09-28 22:32:26', '2020-09-28 22:32:26'),
(1681, 46, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/428\' > APMT-422</a > </b > (mahesh) has been approved.', 'UNREAD', '2020-09-29 21:33:36', '2020-09-29 21:33:36'),
(1682, 46, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/428\' > APMT-422</a > </b > (mahesh) has been visited.', 'UNREAD', '2020-09-29 21:34:12', '2020-09-29 21:34:12'),
(1683, 17, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/11\' > APMT-9</a > </b > (Jignesh Parmar) has been approved.', 'UNREAD', '2020-10-01 10:41:28', '2020-10-01 10:41:28'),
(1684, 21, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/11\' > APMT-9</a > </b > (Jignesh Parmar) has been approved.', 'UNREAD', '2020-10-01 10:41:28', '2020-10-01 10:41:28'),
(1685, 17, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/11\' > APMT-9</a > </b > (Jignesh Parmar) has been visited.', 'UNREAD', '2020-10-01 10:41:34', '2020-10-01 10:41:34'),
(1686, 21, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/11\' > APMT-9</a > </b > (Jignesh Parmar) has been visited.', 'UNREAD', '2020-10-01 10:41:34', '2020-10-01 10:41:34'),
(1687, 20, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/431\' > APMT-425</a > </b > (hiiii) has been booked', 'UNREAD', '2020-10-19 12:50:36', '2020-10-19 12:50:36'),
(1688, 271, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/431\' > APMT-425</a > </b > (hiiii) has been booked', 'UNREAD', '2020-10-19 12:50:36', '2020-10-19 12:50:36'),
(1689, 203, 'Appointment updated', 'Appointment <b><a href=\'http://192.168.0.106/doctorooms/appointment/show/293\' > APMT-287</a > </b > (ram) has been visited.', 'UNREAD', '2010-01-01 00:10:21', '2010-01-01 00:10:21'),
(1690, 18, 'Appointment updated', 'Appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/293\' > APMT-287</a > </b > (ram) has been visited.', 'READ', '2010-01-01 00:10:21', '2021-03-14 20:55:47'),
(1691, 4, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been booked', 'READ', '2020-10-21 12:30:33', '2021-03-14 20:52:27'),
(1692, 271, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been booked', 'UNREAD', '2020-10-21 12:30:33', '2020-10-21 12:30:33'),
(1693, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'UNREAD', '2020-10-23 10:50:18', '2020-10-23 10:50:18'),
(1694, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'READ', '2020-10-23 10:50:18', '2021-03-14 20:55:47'),
(1695, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'UNREAD', '2020-10-23 10:50:24', '2020-10-23 10:50:24'),
(1696, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'READ', '2020-10-23 10:50:24', '2021-03-14 20:55:47'),
(1697, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'UNREAD', '2020-10-23 10:50:44', '2020-10-23 10:50:44'),
(1698, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'READ', '2020-10-23 10:50:44', '2021-03-14 20:55:47'),
(1699, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'UNREAD', '2020-10-23 10:51:00', '2020-10-23 10:51:00'),
(1700, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'READ', '2020-10-23 10:51:00', '2021-03-14 20:55:47'),
(1701, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'UNREAD', '2020-10-23 10:51:22', '2020-10-23 10:51:22'),
(1702, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'READ', '2020-10-23 10:51:22', '2021-03-14 20:55:47'),
(1703, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'UNREAD', '2020-10-23 10:52:02', '2020-10-23 10:52:02'),
(1704, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'READ', '2020-10-23 10:52:02', '2021-03-14 20:55:47'),
(1705, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'UNREAD', '2020-10-23 10:52:19', '2020-10-23 10:52:19'),
(1706, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'READ', '2020-10-23 10:52:19', '2021-03-14 20:55:47'),
(1707, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'UNREAD', '2020-10-23 10:53:06', '2020-10-23 10:53:06'),
(1708, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'READ', '2020-10-23 10:53:06', '2021-03-14 20:55:47'),
(1709, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'UNREAD', '2020-10-23 10:53:19', '2020-10-23 10:53:19'),
(1710, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'READ', '2020-10-23 10:53:19', '2021-03-14 20:55:47'),
(1711, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'UNREAD', '2020-10-23 10:53:53', '2020-10-23 10:53:53'),
(1712, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'READ', '2020-10-23 10:53:53', '2021-03-14 20:55:47'),
(1713, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'UNREAD', '2020-10-23 10:54:09', '2020-10-23 10:54:09'),
(1714, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'READ', '2020-10-23 10:54:09', '2021-03-14 20:55:47'),
(1715, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'UNREAD', '2020-10-23 10:55:06', '2020-10-23 10:55:06'),
(1716, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been approved.', 'READ', '2020-10-23 10:55:06', '2021-03-14 20:55:47'),
(1717, 200, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/291\' > APMT-285</a > </b > (rajesh) has been visited.', 'UNREAD', '2020-10-23 10:57:25', '2020-10-23 10:57:25'),
(1718, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/291\' > APMT-285</a > </b > (rajesh) has been visited.', 'READ', '2020-10-23 10:57:25', '2021-03-14 20:55:47'),
(1719, 271, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been visited.', 'UNREAD', '2020-10-23 10:58:21', '2020-10-23 10:58:21'),
(1720, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/432\' > APMT-426</a > </b > (gaurav) has been visited.', 'READ', '2020-10-23 10:58:21', '2021-03-14 20:55:47'),
(1721, 46, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/286\' > APMT-280</a > </b > (RAHUL) has been visited.', 'UNREAD', '2020-10-23 10:58:48', '2020-10-23 10:58:48'),
(1722, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/286\' > APMT-280</a > </b > (RAHUL) has been visited.', 'READ', '2020-10-23 10:58:48', '2021-03-14 20:55:47'),
(1723, 205, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/285\' > APMT-279</a > </b > (SAMEERA) has been visited.', 'UNREAD', '2020-10-23 10:59:22', '2020-10-23 10:59:22'),
(1724, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/285\' > APMT-279</a > </b > (SAMEERA) has been visited.', 'READ', '2020-10-23 10:59:22', '2021-03-14 20:55:47'),
(1725, 204, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/284\' > APMT-278</a > </b > (ALTAF) has been visited.', 'UNREAD', '2020-10-23 10:59:23', '2020-10-23 10:59:23'),
(1726, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/284\' > APMT-278</a > </b > (ALTAF) has been visited.', 'READ', '2020-10-23 10:59:23', '2021-03-14 20:55:47'),
(1727, 46, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/283\' > APMT-277</a > </b > (Tonny) has been visited.', 'UNREAD', '2020-10-23 10:59:37', '2020-10-23 10:59:37'),
(1728, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/283\' > APMT-277</a > </b > (Tonny) has been visited.', 'READ', '2020-10-23 10:59:37', '2021-03-14 20:55:47'),
(1729, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/433\' > APMT-427</a > </b > (sdfsadfafd) has been booked', 'READ', '2020-10-23 11:00:46', '2021-03-14 20:52:27'),
(1730, 272, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/433\' > APMT-427</a > </b > (sdfsadfafd) has been booked', 'UNREAD', '2020-10-23 11:00:46', '2020-10-23 11:00:46'),
(1731, 272, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/433\' > APMT-427</a > </b > (sdfsadfafd) has been visited.', 'UNREAD', '2020-10-23 11:00:58', '2020-10-23 11:00:58'),
(1732, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/433\' > APMT-427</a > </b > (sdfsadfafd) has been visited.', 'READ', '2020-10-23 11:00:58', '2021-03-14 20:55:47'),
(1733, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/434\' > APMT-428</a > </b > (sdfasdfsdf) has been booked', 'READ', '2020-10-23 11:01:46', '2021-03-14 20:52:27'),
(1734, 273, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/434\' > APMT-428</a > </b > (sdfasdfsdf) has been booked', 'UNREAD', '2020-10-23 11:01:46', '2020-10-23 11:01:46'),
(1735, 273, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/434\' > APMT-428</a > </b > (sdfasdfsdf) has been visited.', 'UNREAD', '2020-10-23 11:01:59', '2020-10-23 11:01:59'),
(1736, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/434\' > APMT-428</a > </b > (sdfasdfsdf) has been visited.', 'READ', '2020-10-23 11:01:59', '2021-03-14 20:55:47'),
(1737, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/435\' > APMT-429</a > </b > (ASDHSADGJHSDF) has been booked', 'READ', '2020-10-23 11:08:27', '2021-03-14 20:52:27'),
(1738, 274, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/435\' > APMT-429</a > </b > (ASDHSADGJHSDF) has been booked', 'UNREAD', '2020-10-23 11:08:27', '2020-10-23 11:08:27'),
(1739, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/436\' > APMT-430</a > </b > (DSFSDFDFFDS) has been booked', 'READ', '2020-10-23 11:08:41', '2021-03-14 20:52:27'),
(1740, 275, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/436\' > APMT-430</a > </b > (DSFSDFDFFDS) has been booked', 'UNREAD', '2020-10-23 11:08:41', '2020-10-23 11:08:41'),
(1741, 275, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/436\' > APMT-430</a > </b > (DSFSDFDFFDS) has been visited.', 'UNREAD', '2020-10-23 11:08:59', '2020-10-23 11:08:59'),
(1742, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/436\' > APMT-430</a > </b > (DSFSDFDFFDS) has been visited.', 'READ', '2020-10-23 11:08:59', '2021-03-14 20:55:47'),
(1743, 274, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/435\' > APMT-429</a > </b > (ASDHSADGJHSDF) has been visited.', 'UNREAD', '2020-10-23 11:09:16', '2020-10-23 11:09:16'),
(1744, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/435\' > APMT-429</a > </b > (ASDHSADGJHSDF) has been visited.', 'READ', '2020-10-23 11:09:16', '2021-03-14 20:55:47'),
(1745, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/437\' > APMT-431</a > </b > (sdfadffaf) has been booked', 'READ', '2020-10-23 11:10:11', '2021-03-14 20:52:27'),
(1746, 276, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/437\' > APMT-431</a > </b > (sdfadffaf) has been booked', 'UNREAD', '2020-10-23 11:10:11', '2020-10-23 11:10:11'),
(1747, 276, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/437\' > APMT-431</a > </b > (sdfadffaf) has been visited.', 'UNREAD', '2020-10-23 11:10:30', '2020-10-23 11:10:30'),
(1748, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/437\' > APMT-431</a > </b > (sdfadffaf) has been visited.', 'READ', '2020-10-23 11:10:30', '2021-03-14 20:55:47'),
(1749, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/438\' > APMT-432</a > </b > (dsjfhsfksuadhf) has been booked', 'READ', '2020-10-23 11:17:59', '2021-03-14 20:52:27'),
(1750, 277, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/438\' > APMT-432</a > </b > (dsjfhsfksuadhf) has been booked', 'UNREAD', '2020-10-23 11:17:59', '2020-10-23 11:17:59'),
(1751, 277, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/438\' > APMT-432</a > </b > (dsjfhsfksuadhf) has been visited.', 'UNREAD', '2020-10-23 11:18:19', '2020-10-23 11:18:19'),
(1752, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/438\' > APMT-432</a > </b > (dsjfhsfksuadhf) has been visited.', 'READ', '2020-10-23 11:18:19', '2021-03-14 20:55:47'),
(1753, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/439\' > APMT-433</a > </b > (SDFSHGJHSDF) has been booked', 'READ', '2020-10-23 11:19:02', '2021-03-14 20:52:27'),
(1754, 278, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/439\' > APMT-433</a > </b > (SDFSHGJHSDF) has been booked', 'UNREAD', '2020-10-23 11:19:02', '2020-10-23 11:19:02'),
(1755, 278, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/439\' > APMT-433</a > </b > (SDFSHGJHSDF) has been visited.', 'UNREAD', '2020-10-23 11:19:11', '2020-10-23 11:19:11'),
(1756, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/439\' > APMT-433</a > </b > (SDFSHGJHSDF) has been visited.', 'READ', '2020-10-23 11:19:11', '2021-03-14 20:55:47'),
(1757, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/440\' > APMT-434</a > </b > (SDFSDFASDF) has been booked', 'READ', '2020-10-23 11:29:30', '2021-03-14 20:52:27'),
(1758, 279, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/440\' > APMT-434</a > </b > (SDFSDFASDF) has been booked', 'UNREAD', '2020-10-23 11:29:30', '2020-10-23 11:29:30'),
(1759, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/441\' > APMT-435</a > </b > (sdasda) has been booked', 'READ', '2020-11-11 15:06:21', '2021-03-14 20:52:27'),
(1760, 281, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/441\' > APMT-435</a > </b > (sdasda) has been booked', 'UNREAD', '2020-11-11 15:06:21', '2020-11-11 15:06:21'),
(1761, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/442\' > APMT-436</a > </b > (asdasdasd) has been booked', 'READ', '2020-11-11 15:06:42', '2021-03-14 20:52:27'),
(1762, 282, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/442\' > APMT-436</a > </b > (asdasdasd) has been booked', 'UNREAD', '2020-11-11 15:06:42', '2020-11-11 15:06:42'),
(1763, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/443\' > APMT-437</a > </b > (asdaSDDAd) has been booked', 'READ', '2020-11-11 15:07:04', '2021-03-14 20:52:27'),
(1764, 283, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/443\' > APMT-437</a > </b > (asdaSDDAd) has been booked', 'UNREAD', '2020-11-11 15:07:04', '2020-11-11 15:07:04'),
(1765, 36, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/doctor/appointment/show/444\' > APMT-438</a > </b > (forenventry sdf) has been booked', 'UNREAD', '2020-11-11 16:04:31', '2020-11-11 16:04:31'),
(1766, 58, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/444\' > APMT-438</a > </b > (forenventry sdf) has been booked', 'UNREAD', '2020-11-11 16:04:31', '2020-11-11 16:04:31'),
(1767, 36, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/doctor/appointment/show/444\' > APMT-438</a > </b > (forenventry sdf) has been canceled by patient', 'UNREAD', '2020-11-11 16:05:10', '2020-11-11 16:05:10'),
(1768, 58, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/444\' > APMT-438</a > </b > (forenventry sdf) has been canceled by patient', 'UNREAD', '2020-11-11 16:05:10', '2020-11-11 16:05:10'),
(1769, 36, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/doctor/appointment/show/445\' > APMT-439</a > </b > (Bharat Prajapati) has been booked', 'UNREAD', '2020-11-11 16:06:39', '2020-11-11 16:06:39'),
(1770, 58, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/445\' > APMT-439</a > </b > (Bharat Prajapati) has been booked', 'UNREAD', '2020-11-11 16:06:39', '2020-11-11 16:06:39'),
(1771, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/446\' > APMT-440</a > </b > (gaurav) has been booked', 'READ', '2020-11-22 12:01:23', '2021-03-14 20:52:27'),
(1772, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/447\' > APMT-441</a > </b > (gaurav) has been booked', 'READ', '2020-11-22 12:02:10', '2021-03-14 20:52:27'),
(1773, 286, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/appointment/show/447\' > APMT-441</a > </b > (gaurav) has been booked', 'UNREAD', '2020-11-22 12:02:10', '2020-11-22 12:02:10'),
(1774, 4, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/doctor/appointment/show/448\' > APMT-442</a > </b > (gaurav prajapati) has been booked', 'READ', '2020-12-09 12:11:22', '2021-03-14 20:52:27'),
(1775, 18, 'New appointment', 'A new appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/448\' > APMT-442</a > </b > (gaurav prajapati) has been booked', 'READ', '2020-12-09 12:11:22', '2021-03-14 20:55:47'),
(1776, 4, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/449\' > APMT-443</a > </b > (bharat) has been booked', 'READ', '2020-12-16 17:10:55', '2021-03-14 20:52:27'),
(1777, 4, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/450\' > APMT-444</a > </b > (SDFGJH) has been booked', 'READ', '2020-12-16 17:13:06', '2021-03-14 20:52:27'),
(1778, 287, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/appointment/show/450\' > APMT-444</a > </b > (SDFGJH) has been booked', 'UNREAD', '2020-12-16 17:13:06', '2020-12-16 17:13:06'),
(1779, 4, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/doctor/appointment/show/451\' > APMT-445</a > </b > (bharat) has been booked', 'READ', '2020-12-16 17:24:30', '2021-03-14 20:52:27'),
(1780, 18, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/451\' > APMT-445</a > </b > (bharat) has been booked', 'READ', '2020-12-16 17:24:30', '2021-03-14 20:55:47'),
(1781, 4, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/doctor/appointment/show/452\' > APMT-446</a > </b > (hgsdh) has been booked', 'READ', '2020-12-16 17:27:01', '2021-03-14 20:52:27'),
(1782, 18, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/452\' > APMT-446</a > </b > (hgsdh) has been booked', 'READ', '2020-12-16 17:27:01', '2021-03-14 20:55:47'),
(1783, 4, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/453\' > APMT-447</a > </b > (bharat) has been booked', 'READ', '2020-12-21 17:16:32', '2021-03-14 20:52:27'),
(1784, 4, 'Appointment updated', 'Appointment <b><a href=\'http://192.168.0.106/doctorooms/doctor/appointment/show/453\' > APMT-447</a > </b > (bharat) has been visited.', 'READ', '2020-12-21 17:19:06', '2021-03-14 20:52:27'),
(1785, NULL, 'Appointment updated', 'Appointment <b><a href=\'http://192.168.0.106/doctorooms/appointment/show/453\' > APMT-447</a > </b > (bharat) has been visited.', 'UNREAD', '2020-12-21 17:19:06', '2020-12-21 17:19:06'),
(1786, 4, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/454\' > APMT-448</a > </b > (bharat) has been booked', 'READ', '2020-12-21 17:23:13', '2021-03-14 20:52:27'),
(1787, 4, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/455\' > APMT-449</a > </b > (sadasd) has been booked', 'READ', '2020-12-21 17:24:30', '2021-03-14 20:52:27'),
(1788, 289, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/appointment/show/455\' > APMT-449</a > </b > (sadasd) has been booked', 'UNREAD', '2020-12-21 17:24:30', '2020-12-21 17:24:30'),
(1789, 4, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/456\' > APMT-450</a > </b > (bharat prajapati) has been booked', 'READ', '2020-12-24 16:30:29', '2021-03-14 20:52:27'),
(1790, 4, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/doctor/appointment/show/457\' > APMT-451</a > </b > (dfsf sdf) has been booked', 'READ', '2020-12-24 16:32:33', '2021-03-14 20:52:27'),
(1791, 18, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/457\' > APMT-451</a > </b > (dfsf sdf) has been booked', 'READ', '2020-12-24 16:32:33', '2021-03-14 20:55:47'),
(1792, 288, 'Appointment updated', 'Appointment <b><a href=\'http://192.168.0.106/doctorooms/appointment/show/457\' > APMT-451</a > </b > (dfsf sdf) has been approved.', 'UNREAD', '2020-12-24 16:32:59', '2020-12-24 16:32:59'),
(1793, 18, 'Appointment updated', 'Appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/457\' > APMT-451</a > </b > (dfsf sdf) has been approved.', 'READ', '2020-12-24 16:32:59', '2021-03-14 20:55:47'),
(1794, 4, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/docotor/appointment/show/458\' > APMT-452</a > </b > (harish sharma) has been booked', 'READ', '2020-12-24 17:28:18', '2021-03-14 20:52:27'),
(1795, 288, 'New appointment', 'A new appointment <b><a href=\'http://192.168.0.106/doctorooms/appointment/show/458\' > APMT-452</a > </b > (harish sharma) has been booked', 'UNREAD', '2020-12-24 17:28:18', '2020-12-24 17:28:18'),
(1796, 287, 'Appointment updated', 'Appointment <b><a href=\'http://192.168.0.106/doctorooms/appointment/show/448\' > APMT-442</a> </b> (gaurav prajapati) has been extended.', 'UNREAD', '2021-01-08 17:47:07', '2021-01-08 17:47:07'),
(1797, 288, 'Appointment updated', 'Appointment <b><a href=\'http://192.168.0.106/doctorooms/appointment/show/458\' > APMT-452</a > </b > (harish sharma) has been visited.', 'UNREAD', '2021-01-08 17:47:39', '2021-01-08 17:47:39'),
(1798, 18, 'Appointment updated', 'Appointment <b><a href=\'http://192.168.0.106/doctorooms/receptionist/appointment/show/458\' > APMT-452</a > </b > (harish sharma) has been visited.', 'READ', '2021-01-08 17:47:39', '2021-03-14 20:55:47'),
(1799, NULL, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/appointment/show/456\' > APMT-450</a > </b > (bharat prajapati) has been visited.', 'UNREAD', '2021-05-31 14:21:58', '2021-05-31 14:21:58'),
(1800, 18, 'Appointment updated', 'Appointment <b><a href=\'http://localhost/doctorooms/receptionist/appointment/show/456\' > APMT-450</a > </b > (bharat prajapati) has been visited.', 'UNREAD', '2021-05-31 14:21:59', '2021-05-31 14:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `blog_img` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `paramalink` varchar(300) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `blog_img`, `video_link`, `paramalink`, `type`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(27, 'Potential Downsides', '<h3>A well-rounded vegetarian diet can be healthy and nutritious.</h3>\r\n\r\n<p>However, it may also increase your risk of certain nutritional deficiencies.</p>\r\n\r\n<p>Meat, poultry and fish supply a good amount of protein and&nbsp;<a href=\"https://www.healthline.com/nutrition/17-health-benefits-of-omega-3\">omega-3 fatty acids</a>, as well as micronutrients like zinc, selenium, iron and vitamin B12 (<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/23273468\" target=\"_blank\">20Trusted Source</a>).</p>\r\n\r\n<p>Other animal products like dairy and eggs also contain plenty of calcium, vitamin D and B vitamins (<a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4730419/\" target=\"_blank\">21Trusted Source</a>,&nbsp;<a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4303863/\" target=\"_blank\">22Trusted Source</a>).</p>\r\n\r\n<p>When cutting meat or other animal products from your diet, it&rsquo;s important to ensure you&rsquo;re getting these essential nutrients from other sources.</p>\r\n\r\n<p>Studies show that vegetarians are at a higher risk of protein, calcium, iron, iodine and vitamin B12 deficiencies (<a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3967195/\" target=\"_blank\">23Trusted Source</a>,&nbsp;<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/12417096\" target=\"_blank\">24Trusted Source</a>,&nbsp;<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/21613354/\" target=\"_blank\">25Trusted Source</a>,&nbsp;<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/17299475\" target=\"_blank\">26Trusted Source</a>).</p>\r\n\r\n<p>A nutritional deficiency in these&nbsp;<a href=\"https://www.healthline.com/nutrition/micronutrients\">key micronutrients</a>&nbsp;can lead to symptoms like fatigue, weakness, anemia, bone loss and thyroid issues (<a href=\"https://www.ncbi.nlm.nih.gov/books/NBK441923/\" target=\"_blank\">27Trusted Source</a>,&nbsp;<a href=\"https://www.ncbi.nlm.nih.gov/pubmedhealth/PMH0062933/\" target=\"_blank\">28Trusted Source</a>,&nbsp;<a href=\"https://www.ncbi.nlm.nih.gov/books/NBK56060/\" target=\"_blank\">29Trusted Source</a>,&nbsp;<a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4049553/\" target=\"_blank\">30Trusted Source</a>).</p>\r\n\r\n<p>Including a variety of fruits, vegetables, whole grains, protein sources and fortified foods is an easy way to ensure you&rsquo;re getting appropriate nutrition.</p>\r\n\r\n<p>Multivitamins and supplements are another option to quickly bump up your intake and compensate for potential deficiencies.</p>\r\n\r\n<blockquote><strong>SUMMARY</strong>Cutting out meat and animal-based products can increase your risk of nutritional deficiencies. A well-balanced diet &mdash; possibly alongside supplements &mdash; can help prevent deficiencies.</blockquote>\r\n', '2019-12-31_157773170130295e0a4675cd302.jpg', '', 'potential-downsides', 'Blog', 'Published', '2019-11-05 14:25:56', '2019-12-31 00:29:16', 54),
(32, 'Foods to Eat', '<p>A vegetarian diet should include a diverse mix of fruits, vegetables, grains, healthy fats and proteins.</p>\r\n\r\n<p>To replace the protein provided by meat in your diet, include a variety of&nbsp;<a href=\"https://www.healthline.com/nutrition/protein-for-vegans-vegetarians\">protein-rich plant foods</a>&nbsp;like nuts, seeds, legumes, tempeh, tofu and seitan.</p>\r\n\r\n<p>If you follow a lacto-ovo-vegetarian diet, eggs and dairy can also boost your protein intake.</p>\r\n\r\n<p>Eating&nbsp;<a href=\"https://www.healthline.com/nutrition/11-most-nutrient-dense-foods-on-the-planet\">nutrient-dense whole foods</a>&nbsp;like fruits, vegetables and whole grains will supply a range of important vitamins and minerals to fill in any nutritional gaps in your diet.</p>\r\n\r\n<p>A few healthy foods to eat on a vegetarian diet are:</p>\r\n\r\n<ul>\r\n	<li><strong>Fruits:</strong>&nbsp;Apples, bananas, berries, oranges, melons, pears, peaches</li>\r\n	<li><strong>Vegetables:&nbsp;</strong>Leafy greens, asparagus, broccoli, tomatoes, carrots</li>\r\n	<li><strong>Grains:</strong>&nbsp;Quinoa, barley, buckwheat, rice, oats</li>\r\n	<li><strong>Legumes:&nbsp;</strong>Lentils, beans, peas, chickpeas.</li>\r\n	<li><strong>Nuts:&nbsp;</strong>Almonds, walnuts, cashews, chestnuts</li>\r\n	<li><strong>Seeds:</strong>&nbsp;Flaxseeds, chia and hemp seeds</li>\r\n	<li><strong>Healthy fats:&nbsp;</strong>Coconut oil, olive oil, avocados</li>\r\n	<li><strong>Proteins:&nbsp;</strong>Tempeh, tofu, seitan, natto, nutritional yeast, spirulina, eggs, dairy products</li>\r\n</ul>\r\n\r\n<blockquote><strong>SUMMARY</strong>A healthy vegetarian diet includes a variety of nutritious foods like fruits, vegetables, grains, healthy fats and plant-based proteins.</blockquote>\r\n\r\n<h2>&nbsp;</h2>\r\n', '2019-12-31_1577731975128315e0a478797db1.jpg', '', 'foods-to-eat', 'Blog', 'Published', '2019-12-31 00:22:55', '2019-12-31 00:22:55', 5),
(33, 'Sample Meal Plan', '<p>To help get you started, here&rsquo;s a one-week sample meal plan for a lacto-ovo-vegetarian diet.</p>\r\n\r\n<h3>Monday</h3>\r\n\r\n<ul>\r\n	<li><strong>Breakfast:</strong>&nbsp;Oatmeal with fruit and flaxseeds</li>\r\n	<li><strong>Lunch:</strong>&nbsp;Grilled veggie and hummus wrap with sweet potato fries</li>\r\n	<li><strong>Dinner:</strong>&nbsp;Tofu banh mi sandwich with pickled slaw</li>\r\n</ul>\r\n\r\n<h3>Tuesday</h3>\r\n\r\n<ul>\r\n	<li><strong>Breakfast:</strong>&nbsp;Scrambled eggs with tomatoes, garlic and mushrooms</li>\r\n	<li><strong>Lunch:</strong>&nbsp;Zucchini boats stuffed with veggies and feta with tomato soup</li>\r\n	<li><strong>Dinner:</strong>&nbsp;Chickpea curry with basmati rice</li>\r\n</ul>\r\n\r\n<h3>Wednesday</h3>\r\n\r\n<ul>\r\n	<li><strong>Breakfast:</strong>&nbsp;Greek yogurt with chia seeds and berries</li>\r\n	<li><strong>Lunch:</strong>&nbsp;Farro salad with tomatoes, cucumber and feta with spiced lentil soup</li>\r\n	<li><strong>Dinner:</strong>&nbsp;Eggplant parmesan with a side salad</li>\r\n</ul>\r\n\r\n<h3>Thursday</h3>\r\n\r\n<ul>\r\n	<li><strong>Breakfast:</strong>&nbsp;Tofu scramble with sauteed peppers, onions and spinach</li>\r\n	<li><strong>Lunch:</strong>&nbsp;Burrito bowl with brown rice, beans,&nbsp;<a href=\"https://www.healthline.com/nutrition/12-proven-benefits-of-avocado\">avocado</a>, salsa and veggies</li>\r\n	<li><strong>Dinner:</strong>&nbsp;Vegetable paella with a side salad</li>\r\n</ul>\r\n\r\n<h3>Friday</h3>\r\n\r\n<ul>\r\n	<li><strong>Breakfast:</strong>&nbsp;Whole-wheat toast with avocado and nutritional yeast</li>\r\n	<li><strong>Lunch:</strong>&nbsp;Marinated tofu pita pocket with Greek salad</li>\r\n	<li><strong>Dinner:</strong>&nbsp;Quinoa-black-bean meatballs with&nbsp;<a href=\"https://www.healthline.com/nutrition/low-carb-pasta\">zucchini noodles</a></li>\r\n</ul>\r\n\r\n<h3>Saturday</h3>\r\n\r\n<ul>\r\n	<li><strong>Breakfast:</strong>&nbsp;Smoothie of kale, berries, bananas, nut butter and almond milk</li>\r\n	<li><strong>Lunch:</strong>&nbsp;Red lentil veggie burger with avocado salad</li>\r\n	<li><strong>Dinner:</strong>&nbsp;Flatbread with grilled garden vegetables and pesto</li>\r\n</ul>\r\n\r\n<h3>Sunday</h3>\r\n\r\n<ul>\r\n	<li><strong>Breakfast:</strong>&nbsp;Kale and sweet potato hash</li>\r\n	<li><strong>Lunch:</strong>&nbsp;Bell peppers stuffed with tempeh with zucchini fritters</li>\r\n	<li><strong>Dinner:</strong>&nbsp;Black bean tacos with cauliflower rice</li>\r\n</ul>\r\n\r\n<blockquote><strong>SUMMARY</strong>Above is a sample menu of what one week on a lacto-ovo-vegetarian diet may look like. This plan can be adjusted for other styles of vegetarianism as well.</blockquote>\r\n', '2019-12-31_1577732653108415e0a4a2daff74.jpg', '', 'sample-meal-plan', 'Blog', 'Published', '2019-12-31 00:34:14', '2019-12-31 00:34:14', 5),
(34, 'Animal vs Plant Protein', '<p>About 20% of the human body is made up of&nbsp;<a href=\"https://www.healthline.com/nutrition/how-much-protein-per-day/\">protein</a>.</p>\r\n\r\n<p>Because your body doesn&#39;t store protein, it&#39;s important to get enough from your diet each day.</p>\r\n\r\n<p>You can get protein from many food sources, including plants and animals.</p>\r\n\r\n<p>Some people claim that the source of the protein, whether animal or plant, shouldn&#39;t matter.</p>\r\n\r\n<p>Others suggest that plant protein is superior to animal protein.</p>\r\n\r\n<p>This article compares animal and plant proteins.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p><a name=\"section1\">The Amino Acid Profile Varies Between Plant and Animal Proteins</a></p>\r\n\r\n<p>When eaten, protein is broken down into amino acids.</p>\r\n\r\n<p>Proteins and amino acids are used for almost every metabolic process in the body.</p>\r\n\r\n<p>However, different proteins can vary greatly in the types of amino acids they contain.</p>\r\n\r\n<p>While animal proteins tend to contain a good balance of all the amino acids that we need, some plant proteins are low in certain amino acids.</p>\r\n\r\n<p>For example, some key plant proteins are often low in methionine, tryptophan, lycine and isoleucine.</p>\r\n\r\n<blockquote><strong>BOTTOM LINE:</strong>All proteins are made up of amino acids, although the amount and type of each amino acid varies based on the protein source.</blockquote>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<p><a name=\"section2\">Animal Proteins Are Complete, But Plant Proteins Are Not</a></p>\r\n\r\n<p>In total, there are around 20 amino acids that the human body uses to build proteins.</p>\r\n\r\n<p>These amino acids are classified as either essential or non-essential.</p>\r\n\r\n<p>Your body can produce non-essential amino acids. However, it cannot produce essential amino acids, which need to be obtained through your diet.</p>\r\n\r\n<p>For optimal health, your body needs all the essential amino acids in the right ratios.</p>\r\n\r\n<p>Animal protein sources, such as meat,&nbsp;<a href=\"https://www.healthline.com/nutrition/11-health-benefits-of-fish/\">fish</a>, poultry,&nbsp;<a href=\"https://www.healthline.com/nutrition/10-proven-health-benefits-of-eggs/\">eggs</a>&nbsp;and&nbsp;<a href=\"https://www.healthline.com/nutrition/is-dairy-bad-or-good/\">dairy</a>, are similar to the protein found in your body.</p>\r\n\r\n<p>These are considered to be&nbsp;<strong>complete</strong>&nbsp;sources of protein because they contain all of the essential amino acids that your body needs to function effectively.</p>\r\n\r\n<p>On the contrary, plant protein sources, such as&nbsp;<a href=\"https://www.healthline.com/nutrition/beans-101/\">beans</a>, lentils and nuts are considered to be&nbsp;<strong>incomplete</strong>, as they lack one or more of the essential amino acids that your body needs (<a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3905294/\" target=\"_blank\">1Trusted Source</a>).</p>\r\n\r\n<p>Some sources report soy protein as complete. However, two essential amino acids are only found in small amounts in soy, so it isn&#39;t comparable to animal protein (<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/11312815\" target=\"_blank\">2Trusted Source</a>).</p>\r\n\r\n<blockquote><strong>BOTTOM LINE:</strong>Animal foods are the highest quality protein sources. Plant sources lack one or more amino acids, which makes it more difficult to get all the amino acids that your body needs.</blockquote>\r\n', '2019-12-31_1577732937246835e0a4b4994240.jpg', '', 'animal-vs-plant-protein', 'Blog', 'Published', '2019-12-31 00:38:57', '2019-12-31 00:38:57', 5),
(35, 'Diets High in Plant Protein are Linked to Many Benefits', '<p>Diets high in plant protein, such as the vegetarian diet, are linked with many health benefits.</p>\r\n\r\n<p>Studies suggest vegetarians tend to have a lower body weight, lower cholesterol and lower blood pressure levels.</p>\r\n\r\n<p>They also have a lower risk of stroke, cancer and death from heart disease than non-vegetarians (<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/21139125\" target=\"_blank\">15Trusted Source</a>).</p>\r\n\r\n<h3>Lower Risk of Heart Disease</h3>\r\n\r\n<p>A study found that a diet rich in protein (about half from plants) lowered blood pressure, cholesterol levels and the risk of heart disease more than a standard diet or a healthy high-carb diet (<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/16287956\" target=\"_blank\">16Trusted Source</a>).</p>\r\n\r\n<p>The EcoAtkins trial found that a&nbsp;<a href=\"https://www.healthline.com/nutrition/low-carb-diet-meal-plan-and-menu/\">low-carb</a>, high-plant protein diet helped lower cholesterol and blood pressure more than a high-carb, low-fat diet (<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/19506174\" target=\"_blank\">17Trusted Source</a>).</p>\r\n\r\n<h3>Reduced Risk of Type 2 Diabetes</h3>\r\n\r\n<p>One small study of people with type 2 diabetes found that replacing 2 servings of red meat with&nbsp;<a href=\"https://www.healthline.com/nutrition/legumes-good-or-bad/\">legumes</a>&nbsp;3 days per week improved cholesterol and blood sugar (<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/25351652\" target=\"_blank\">18Trusted Source</a>).</p>\r\n\r\n<p>However, another small 6-week study of diabetics compared a diet high in plant protein with a diet high in animal protein. No differences were found in blood sugar, cholesterol and blood pressure (<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/12145221\" target=\"_blank\">19Trusted Source</a>).</p>\r\n\r\n<h3>Protection Against Weight Gain</h3>\r\n\r\n<p>Diets high in plant protein may also help you control your weight.</p>\r\n\r\n<p>An observational study following 120,000 men and women over 20 years found that eating more nuts was linked to&nbsp;<a href=\"https://www.healthline.com/nutrition/how-to-lose-weight-as-fast-as-possible/\">weight loss</a>&nbsp;(<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/21696306\" target=\"_blank\">20Trusted Source</a>).</p>\r\n\r\n<p>Also, eating one serving of beans, chickpeas, lentils or peas per day can increase fullness and may lead to better weight management and weight loss (<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/24820437\" target=\"_blank\">21Trusted Source</a>).</p>\r\n\r\n<h3>Correlation Does Not Imply Causation</h3>\r\n\r\n<p>It&#39;s important to remember that observational studies only report statistical associations. They cannot prove that these benefits were caused by eliminating meat or other animal protein sources.</p>\r\n\r\n<p>One thing to consider is that people on vegetarian diets tend to be more health-conscious than the general population (<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/24667136\" target=\"_blank\">22Trusted Source</a>).</p>\r\n\r\n<p>Therefore, the health benefits of vegetarian diets are likely due to overall healthier diets and lifestyles, rather than any inherent difference between plant and animal proteins (<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/26567196\" target=\"_blank\">23Trusted Source</a>,&nbsp;<a href=\"https://www.ncbi.nlm.nih.gov/pubmed/26148914\" target=\"_blank\">24Trusted Source</a>,&nbsp;<a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2540657/\" target=\"_blank\">25Trusted Source</a>).</p>\r\n\r\n<blockquote><strong>BOTTOM LINE:</strong>A diet high in plant protein is linked to a lower risk of heart disease, diabetes and obesity. This may be explained by an overall healthier lifestyle in vegetarians.</blockquote>\r\n', '2019-12-31_1577733269216785e0a4c9567311.jpg', '', 'diets-high-in-plant-protein-are-linked-to-many-benefits', 'Blog', 'Published', '2019-12-31 00:44:29', '2019-12-31 00:44:29', 5),
(36, 'This Is How A Vegan Diet Affects Workouts', '<p>Going vegan is a controversial choice &mdash; some people are completely on board, and some will roll their eyes and immediately criticize the decision. Either way, it&rsquo;s worth looking into how the plant-based diet can affect your workouts.</p>\r\n\r\n<p>One high profile athlete recently opened up about her experience with switching to a vegan diet. U.S. soccer star Alex Morgan has said that the change in her eating regimen has allowed her to increase her abilities on the field. When asked why she changed her diet, she said: &ldquo;because it didn&rsquo;t feel fair to have a dog I adore, and yet eat meat all the time.&rdquo; She then figured out that she felt like she had a lot more energy during training sessions and during games. This begs the question, does switching to a vegan diet benefit your workout?There is currently no research that directly shows a correlation, however &ldquo;they do not appear to decrease athletic performance either,&rdquo; Tanya Halliday, professor of Health, Kinesiology, and Recreation at the University of Utah shares. She continues: &ldquo;When athletes believe a certain eating pattern is the cause of improved performance, it is likely more do to a combination of a greater focus placed on nutrition as well as a solid training program.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>While there is no direct evidence that shows it helps, you may find that cutting out certain food groups will affect your body in a positive way. The most important thing to remember is that every person&rsquo;s body is different, and it&rsquo;s wise to consult with a doctor before adopting major changes in your diet.</p>\r\n', '2019-12-31_1577733474170795e0a4d62bc8be.jpg', '', 'this-is-how-a-vegan-diet-affects-workouts', 'Blog', 'Published', '2019-12-31 00:47:54', '2019-12-31 00:47:54', 5),
(37, 'The 8 Most Weight-Loss-Friendly Foods on The Planet', 'Whole Eggs. Once feared for being high in cholesterol, whole eggs have been making a comeback. ...\r\nLeafy Greens. Leafy greens include kale, spinach, collards, swiss chards and a few others. ...\r\nSalmon. ...\r\nCruciferous Vegetables. ...\r\nLean Beef and Chicken Breast. ...\r\nBoiled Potatoes. ...\r\nTuna. ...\r\nBeans and Legumes.', '2020-01-01_157788117915615e0c8e5b16712.png', '', 'the-8-most-weight-loss-friendly-foods-on-the-planet-3', 'Blog', 'Published', '2019-12-31 11:06:41', '2020-01-02 12:33:09', 46),
(40, 'Happy New year', '<p>Welcome&nbsp; for happy new year</p>\r\n', '2020-01-02_157797248137015e0df301b8d19.jpg', '', 'happy-new-year', 'Blog', 'Published', '2020-01-02 19:11:22', '2020-01-02 19:11:22', 5),
(41, 'The Indian balanced diet plan', '<p>\r\n\r\nWhat to include in the <strong>balanced diet chart</strong>&nbsp;a.k.a. healthy eating chart? It doesn\'t have to be sprouts and salads only, though those are certainly good for you. The renowned nutrition and wellness expert Rujuta Diwekar told her audience once that the food a person grew up with was the food to which the body would respond to the best. Therefore, for Indian women, what works best for permanent weight loss is an <strong><a target=\"_blank\" rel=\"nofollow\" href=\"http://blogs.femina.in/health-and-fitness/your-go-to-diet-chart-simple-and-effective-meal-options/\">Indian balanced diet plan</a></strong>.<br><br><strong>1. Make small tweaks</strong><br>Cut down on the packaged and processed foods; they\'re usually loaded with sodium, which may lead to bloating and a higher risk of heart problems. Whenever possible, eat fresh produce, as we always did in India, and make your juices by throwing diced fruits and veggies into the blender. Eliminate the white (rice, sugar, bread) and go for brown. Pick wholewheat atta over refined flour.<br><br><strong>2. Eat seasonal fruits</strong><br>Eat seasonal fruits from the local market instead of exotic imports found out of season. Seasonal fruits usually are rich in the compounds that the body needs for that time of the year, e.g. guava and orange, rich in Vitamin C, come to the market in winter, just when you need that vitamin to guard against the common cold.<br><br><strong>3. Stir-fry instead of deep-fry</strong><br>The occasional samosa won\'t bust your weight loss plan, but on a daily basis, stir-frying is a far better idea than deep-frying, as you can keep the calorie count low without sacrificing taste.<br><br><strong>4. To increase the basal metabolic rate</strong><br>Eat several small meals a day. This gives the body repeated assurance that more food is coming -it stops hoarding calories and happily burns fat. A small meal isn\'t a bag of crisps and vending machine coffee; its a fruit, or a small portion of trail mix (dry fruits and unsalted nuts), or a small bowl of daal with a roti, or a bowl of oats.<br><br><strong>5. Do some lightweight training</strong><br>This builds muscle tone, giving the body a more sculpted look, and increases the basal metabolic rate. A daily workout with light weights - make it a low-intensity workout, if you cant do more - prompts the body to go on burning calories long after you\'ve stopped exercising. Even 5-10 minutes a day is a lot better than nothing. It doesn\'t take much to re-orient your lifestyle and achieve permanent <strong><a target=\"_blank\" rel=\"nofollow\" href=\"http://www.femina.in/wellness/weight-loss\">weight loss</a></strong>. Think of it as perfect weight, made in India.\r\n\r\n<br></p>', '2020-01-03_157804240690735e0f04262ef9d.jpg', '', 'the-indian-balanced-diet-plan', 'Blog', 'Published', '2020-01-03 14:36:46', '2020-01-03 14:36:46', 47),
(42, 'Corona virus precaution: 10 ways to make sure you do not catch the disease', '<p>With coronavirus threatening to run riot in India, here&#39;s how you can keep yourself safe from the scourge.<br />\r\n<br />\r\nAs of now, a vaccine has not been formulated for the novel coronavirus. In light of this fact, prevention appears to be the best cure available so far.<br />\r\n<br />\r\nHere are the measures you need to take to keep the virus at bay</p>\r\n\r\n<ul>\r\n	<li>Avoid close contact with people who are sick. Maintain at least three feet distance between yourself and anyone who is coughing or sneezing.</li>\r\n	<li>Avoid touching your eyes, nose, and mouth.</li>\r\n	<li>Stay home when you are sick.</li>\r\n	<li>Cover your cough or sneeze with a tissue, then dispose of the tissue safely.</li>\r\n	<li>Clean and disinfect frequently-touched objects and surfaces using a regular household cleaning spray or wipe</li>\r\n	<li>Wearing a mask is not necessary unless you are taking care of an infected person. The Centers for Disease Control (CDC) does recommend that only infected people wear masks to prevent the spread of the virus.</li>\r\n	<li>Wash your hands often with soap and water for at least 20 seconds, especially after going to the bathroom, before eating, and after blowing your nose, coughing, or sneezing.</li>\r\n	<li>If soap and water are not readily available, use an alcohol-based hand sanitiser with at least&nbsp;60% alcohol. Always wash hands with soap and water when hands are visibly dirty.</li>\r\n	<li>If you have a fever, cough and difficulty breathing, seek medical attention immediately.</li>\r\n	<li>Keep in mind the travel advisory set out by the Ministry of Health and Welfare.</li>\r\n	<br />\r\n	<br />\r\n	<br />\r\n	&nbsp;\r\n</ul>\r\n', '2020-03-26_1585207867207425e7c5a3b51be1.png', '', 'corona-virus-precaution-10-ways-to-make-sure-you-do-not-catch-the-disease', 'Blog', 'Published', '2020-03-26 13:01:07', '2020-03-26 13:01:07', 5),
(43, 'sd', '<p>sad</p>', NULL, 'asd', 'sd', 'Blog', 'Published', '2020-09-30 22:29:58', '2020-09-30 22:32:05', 20);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `next_visit` date DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `doc_id`, `patient_id`, `booking_id`, `next_visit`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 20, 272, 433, NULL, 'Pending', 20, '2020-10-12 22:56:05', '2020-10-12 22:56:05'),
(2, 20, 273, 434, NULL, 'Pending', 20, '2020-10-19 10:56:22', '2020-10-19 10:56:22'),
(3, 20, 274, 435, NULL, 'Pending', 20, '2020-10-19 11:06:39', '2020-10-19 11:06:39'),
(4, 20, 275, 436, NULL, 'Pending', 20, '2020-10-19 11:10:11', '2020-10-19 11:10:11'),
(5, 20, 276, 437, NULL, 'Pending', 20, '2020-10-19 11:10:55', '2020-10-19 11:10:55'),
(6, 20, 277, 438, NULL, 'Pending', 20, '2020-10-19 11:13:06', '2020-10-19 11:13:06'),
(7, 20, 278, 439, NULL, 'Pending', 20, '2020-10-19 11:14:55', '2020-10-19 11:14:55'),
(8, 20, 282, 443, NULL, 'Pending', 20, '2020-10-19 11:21:07', '2020-10-19 11:21:07'),
(9, 20, 281, 442, NULL, 'Pending', 20, '2020-10-19 11:22:55', '2020-10-19 11:22:55'),
(10, 20, 279, 440, NULL, 'Pending', 20, '2020-10-19 11:29:38', '2020-10-19 11:29:38'),
(11, 20, 283, 445, NULL, 'Pending', 20, '2020-10-19 11:34:36', '2020-10-19 11:34:36'),
(12, 20, 284, 446, NULL, 'Pending', 20, '2020-10-19 11:35:47', '2020-10-19 11:35:47'),
(13, 20, 285, 447, NULL, 'Pending', 20, '2020-10-19 11:44:10', '2020-10-19 11:44:10'),
(14, 20, 286, 448, NULL, 'Pending', 20, '2020-10-19 11:45:30', '2020-10-19 11:45:30'),
(15, 20, 287, 449, NULL, 'Pending', 20, '2020-10-19 11:49:10', '2020-10-19 11:49:10'),
(16, 20, 288, 450, NULL, 'Pending', 20, '2020-10-19 11:50:20', '2020-10-19 11:50:20'),
(17, 20, 271, 431, NULL, 'Pending', 20, '2020-10-19 13:00:44', '2020-10-19 13:00:44'),
(18, 4, 203, 293, '2020-10-21', 'Finish', 4, '2020-10-20 16:58:45', '2020-10-20 16:58:45'),
(19, 4, 200, 291, NULL, 'Pending', 4, '2010-01-01 00:10:53', '2010-01-01 00:10:53'),
(20, 4, 271, 432, NULL, 'Pending', 4, '2020-10-21 12:31:06', '2020-10-21 12:31:06'),
(21, 4, 279, 440, '2020-11-02', 'Visited', 4, '2020-10-23 11:29:44', '2020-10-23 11:29:44'),
(22, 4, 281, 441, '2020-11-28', 'Visited', 4, '2020-11-21 21:20:54', '2020-11-21 21:20:54'),
(23, 4, 283, 443, '0000-00-00', 'Visited', 4, '2020-11-22 08:40:16', '2020-11-22 08:40:16'),
(24, 4, 286, 447, '2020-11-25', 'Visited', 4, '2020-11-22 12:02:23', '2020-11-22 12:02:23'),
(25, 4, 289, 455, NULL, 'Pending', 4, '2020-12-24 11:29:43', '2020-12-24 11:29:43'),
(26, 4, 288, 457, '2021-02-06', 'Visited', 4, '2020-12-24 17:20:01', '2020-12-24 17:20:01'),
(27, 47, 46, 414, '0000-00-00', 'Visited', 47, '2021-01-09 18:08:01', '2021-01-09 18:08:01'),
(28, 4, 282, 442, NULL, 'Pending', 4, '2021-01-30 12:49:06', '2021-01-30 12:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `disease_description` text NOT NULL,
  `medicine_details` text COMMENT '{ Name: Description: Tab: }',
  `remark` text,
  `created_by` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `booking_id`, `disease_description`, `medicine_details`, `remark`, `created_by`, `user_id`) VALUES
(4, 9, '<p>\r\n\r\n<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.<br></p>', '[{\"medicine_name\":\"Paracetamol 585\",\"tab\":\"5\",\"description\":\"This is description of this\"},{\"medicine_name\":\"Acetaminophen code\",\"tab\":\"60\",\"description\":\"Daily 2 time in a day for 30 days\"},{\"medicine_name\":\"Acetaminophen grow\",\"tab\":\"50\",\"description\":\"Daily 2 time in a day for 30 days\"}]', 'This is remark of this', 4, 4),
(5, 3, '<p>\r\n\r\nand whether the migration will be creating a new table. These options pre-fill the generated migration stub file with the specified table:\r\n\r\n<br></p><p></p><ul><li>fdhfold;ofd</li><li>dfkndpfdn\'f</li><li>df[pdm;flmdf</li><li>dklfmn;df</li></ul><p></p>', '[{\"medicine_name\":\"Hydrochlorothiazide\",\"tab\":\"20\",\"description\":\"at night\"},{\"medicine_name\":\"Acetaminophen\",\"tab\":\"20\",\"description\":\"morning\"}]', 'ok', 19, 19),
(6, 35, '<p>\r\n\r\nThe <code>$config</code>&nbsp;array contains your configuration variables. It is passed to the <code>$this-&gt;pagination-&gt;initialize()</code>&nbsp;method as shown above. Although there are some twenty items you can configure, at minimum you need the three shown. Here is a description of what those items represent:\r\n\r\n<br></p>', '[{\"medicine_name\":\"Acetaminophen can\",\"tab\":\"10\",\"description\":\"ok\"},{\"medicine_name\":\"Paracetamol nos\",\"tab\":\"30\",\"description\":\"ok\"}]', 'odondf', 4, 4),
(7, 40, '<p>fdfdfhgfhghgfhf</p>', '[{\"medicine_name\":\"fruensx\",\"tab\":\"30\",\"description\":\"1 tab at night\"}]', 'ok', 23, 23),
(8, 48, '<p>you have a fever i</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"10\",\"description\":\"night\"},{\"medicine_name\":\"Adderall.\",\"tab\":\"22\",\"description\":\"fsf\"},{\"medicine_name\":\"gasoline\",\"tab\":\"11\",\"description\":\"w,dl,\"},{\"medicine_name\":\"Ativan\",\"tab\":\"11\",\"description\":\"\"}]', 'you take a medicine before lunch ', 47, 47),
(9, 54, '<p>headache</p>', '[{\"medicine_name\":\"gasoline\",\"tab\":\"12\",\"description\":\"night 1 time\"}]', '', 53, 53),
(10, 73, '<p>duwegudiusd</p>', '[{\"medicine_name\":\"Acetaminophen. \",\"tab\":\"12\",\"description\":\"night\"}]', 'pani sthe pvani ', 47, 47),
(11, 74, '<p>GDIUGSUIDH</p>', '[{\"medicine_name\":\"ACESDSH\",\"tab\":\"12\",\"description\":\"night 1 time\"}]', 'UERTH', 53, 53),
(12, 75, '<p>heduewhdig</p>', '[{\"medicine_name\":\"acesch\",\"tab\":\"12\",\"description\":\"night\"}]', 'dihsdbbk', 53, 53),
(13, 76, '<p>hestjshz</p><p><br></p>', '[{\"medicine_name\":\"diclocine\",\"tab\":\"20\",\"description\":\"dudh sathe levani\"}]', 'dhjcvhs', 47, 47),
(14, 77, '<p>sssdedcddadssdfwrwscsefsjjkdc.mdjdddjdddd<br></p>', '[{\"medicine_name\":\"peracitamol 300mgj\",\"tab\":\"23\",\"description\":\"night\"},{\"medicine_name\":\"sss4\",\"tab\":\"3r\",\"description\":\"35\"}]', 'dayjjjjjjjjj 24', 47, 47),
(15, 84, '<p>Deaseas of the&nbsp; main os done fpor related work</p>', '[{\"medicine_name\":\"vixaction\",\"tab\":\"2\",\"description\":\"done\"},{\"medicine_name\":\"paracitamol\",\"tab\":\"2\",\"description\":\"done\"}]', 'very hard that done', 36, 36),
(16, 85, '<p>done is done</p>', NULL, NULL, 36, 36),
(17, 52, '<p>hghgc?</p><p><br></p>', NULL, NULL, 37, 19),
(18, 118, '<p>mit has a viral fever&nbsp;</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"12\",\"description\":\"night\"}]', '\'jfljajfiserf', 47, 47),
(19, 123, '<p>self done test</p>', '[{\"medicine_name\":\"paracitamol\",\"tab\":\"12\",\"description\":\"desc\"},{\"medicine_name\":\"vixaction\",\"tab\":\"7\",\"description\":\"descption\"}]', 'done by dine', 36, 36),
(20, 124, '<p>my header is done</p>', '[{\"medicine_name\":\"vixaction\",\"tab\":\"12\",\"description\":\"datatype\"}]', 'dfd', 36, 36),
(21, 125, '<p>dhosahfo&nbsp;</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"12\",\"description\":\"night\"}]', 'hdhsdk', 47, 47),
(22, 126, '<p>shahid history come or nor</p>', '[{\"medicine_name\":\"vixvaporab\",\"tab\":\"11\",\"description\":\"tesrt\"}]', 'done tod one', 47, 47),
(23, 130, '<p>dfhsjkhfsdjhfdksfjkdsfjk<br></p>', '[{\"medicine_name\":\"vixvaporab\",\"tab\":\"20\",\"description\":\"hghg\"},{\"medicine_name\":\"paracita\",\"tab\":\"10\",\"description\":\"bnbnm\"}]', '', 36, 36),
(24, 131, '<p>he has a headache</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"12\",\"description\":\"night\"},{\"medicine_name\":\"ralson\",\"tab\":\"22\",\"description\":\"fsf\"},{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"11\",\"description\":\"w,dl,\"},{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"11\",\"description\":\"sgha\"}]', 'hdsjfsdhfgdgig', 49, 47),
(25, 135, '<p>jfjj</p>', '[{\"medicine_name\":\"jds\",\"tab\":\"jj\",\"description\":\"jjjj\"}]', 'jjjjj', 77, 77),
(26, 136, '<p>jfj</p>', '[{\"medicine_name\":\"nsnf\",\"tab\":\"jjjj\",\"description\":\"jjjj\"}]', 'jjjj', 77, 77),
(27, 137, '<p>fdke</p>', '[{\"medicine_name\":\"zkzk\",\"tab\":\"JJJJ\",\"description\":\"JJJJ\"}]', 'JJJJ', 77, 77),
(28, 139, '<p>KMKK</p>', '[{\"medicine_name\":\"MLLJ\",\"tab\":\"ML\",\"description\":\"JM,\"}]', 'MN', 77, 77),
(29, 140, '<p>KMKM</p>', '[{\"medicine_name\":\" MKNK\",\"tab\":\"NKK\",\"description\":\"M\"}]', 'MKMK', 77, 77),
(30, 141, '<p>KMKN</p>', '[{\"medicine_name\":\"KNKK\",\"tab\":\"MKNK\",\"description\":\"NNKK\"}]', 'MLMK', 77, 77),
(31, 152, '<p>scasn cknakndlk cdwhad uawydan</p>', '[{\"medicine_name\":\"acehasb\",\"tab\":\"12\",\"description\":\"\"}]', 'skmdhd', 78, 77),
(32, 89, '<p>He have [roblem of numiniasd</p>', '[{\"medicine_name\":\"par\",\"tab\":\"45\",\"description\":\"sdfds\"},{\"medicine_name\":\"vix\",\"tab\":\"4\",\"description\":\"\"},{\"medicine_name\":\"vbv\",\"tab\":\"2\",\"description\":\"fgfd\"}]', 'dfgdf', 36, 36),
(33, 132, '<p>uyhghuy</p><p><br></p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"23\",\"description\":\"ji\"}]', 'i00i9o0', 47, 47),
(34, 133, '<p>sdguhgsadih</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"20\",\"description\":\"swjj\"}]', 'dsauygdyug', 47, 47),
(35, 169, '<p>head ache</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"10\",\"description\":\"night\"}]', 'gdjhwgd', 47, 47),
(36, 167, '<p>He required&nbsp; 2 month mediucime to recover</p>', '[{\"medicine_name\":\"vixvaporab\",\"tab\":\"12\",\"description\":\"noght\"},{\"medicine_name\":\"paracitamole\",\"tab\":\"20\",\"description\":\"morning\"}]', 'take regular', 36, 36),
(37, 170, '<p>achgcqsvjbq</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"11\",\"description\":\"night\"}]', 'dswqguteiudg', 47, 47),
(38, 171, '<p>lkndwfklf</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"11\",\"description\":\"night\"}]', 's wqdwe', 47, 47),
(39, 173, '<p>utriuruiqhi</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"11\",\"description\":\"hwsd\"}]', 'ffxwyjzh', 47, 47),
(40, 172, '<p>ueggwuh</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"11\",\"description\":\"night\"}]', 'jwyyjsfw', 47, 47),
(41, 179, '<p>svdhbakjsdblSHDOs gdsabc&nbsp; sguakjsbc<img alt=\"\" src=\"http://\"><img alt=\"\"></p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"11\",\"description\":\"night\"}]', 'asdbkjbfkjebq ', 49, 47),
(42, 189, '<p>He\'s crazy!</p>', '[{\"medicine_name\":\"Bonvita\",\"tab\":\"1000\",\"description\":\"rozki 20\"}]', 'Have it. It\'s compulsory.', 49, 47),
(43, 190, '<p><b></b><br></p>grfhgbj<br>', '[{\"medicine_name\":\"paracetamol\",\"tab\":\"5\",\"description\":\"55\"}]', '5', 47, 47),
(44, 191, '<p>fdsdf</p>', '[{\"medicine_name\":\"sda\",\"tab\":\"22\",\"description\":\"11ds\"}]', 'zvxdv', 47, 47),
(45, 198, '<p>This is very high fever and done every one</p>', '[{\"medicine_name\":\"paracitamol\",\"tab\":\"2\",\"description\":\"morning\"},{\"medicine_name\":\"vixaction\",\"tab\":\"3\",\"description\":\"evening\"},{\"medicine_name\":\"CPM\",\"tab\":\"4\",\"description\":\"night\"}]', 'Done', 36, 36),
(46, 192, '<p>ysrf</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"11\",\"description\":\"night\"}]', 'DGDDG', 47, 47),
(47, 205, '<p>jsgdjmasb</p>', '[{\"medicine_name\":\"acesfg\",\"tab\":\"11\",\"description\":\"night\"}]', 'lifdhlsidjfk', 136, 136),
(48, 98, '<p>FDG</p>', NULL, NULL, 34, 4),
(49, 237, '<p>dgfgc</p>', '[{\"medicine_name\":\"asdf\",\"tab\":\"12\",\"description\":\"asdfghjk\"}]', 'asdfghjkl', 135, 135),
(50, 238, '<p>qwertyui</p>', '[{\"medicine_name\":\"zxcvb\",\"tab\":\"1234\",\"description\":\"asdfghjk\"},{\"medicine_name\":\"sdfgh\",\"tab\":\"123456\",\"description\":\"sdfghjkl\"}]', 'sdfghjk', 135, 135),
(51, 239, '<p>asdfghj?</p>', '[{\"medicine_name\":\"asdfgh\",\"tab\":\"1234\",\"description\":\"asdfghj\"}]', 'jsdfghjh', 135, 135),
(52, 243, '<p>bdhasgiuisjd</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"20\",\"description\":\"night\"}]', 'sghdytfwasj', 47, 47),
(53, 256, '<p>shfdhsufh</p>', NULL, NULL, 47, 47),
(54, 276, '<p>L,FGLDLML</p>', '[{\"medicine_name\":\"Acetaminophen.\",\"tab\":\"11\",\"description\":\"AT NIGHT\"}]', 'TAKE A MEDICINE WITH WATER ', 47, 47),
(55, 280, '<p>HIWSUYVHJM</p>', '[{\"medicine_name\":\"DHSVDHJA\",\"tab\":\"1\",\"description\":\"NDKSN\"}]', 'SHGDYUGSUBD', 4, 4),
(56, 311, '<p>dssd</p>', '[{\"medicine_name\":\"casd\",\"tab\":\"2\",\"description\":\"badj\"}]', 'sbdjbs', 55, 55),
(57, 312, '<p>fkldvml?????</p><p><br></p>', '[{\"medicine_name\":\"sfds\",\"tab\":\"1\",\"description\":\"dsfsd\"}]', 'dwew', 55, 55),
(58, 281, '<p>sfhjsdf</p>', '[{\"medicine_name\":\"snja\",\"tab\":\"1\",\"description\":\"IOHK\"}]', 'BHBDFSJBS', 4, 4),
(59, 282, '<p>SEHFJSE</p>', '[{\"medicine_name\":\"FSGF\",\"tab\":\"1\",\"description\":\"HSAU\"}]', 'SHGYDHDHSHDSFHU', 4, 4),
(60, 338, '<p></p><blockquote>eehwurhwueh</blockquote><p></p>', '[{\"medicine_name\":\"dhagsdhg\",\"tab\":\"11\",\"description\":\"night \"},{\"medicine_name\":\"dfgu\",\"tab\":\"11\",\"description\":\"ndhgj\"}]', 'sherufdns', 55, 55),
(61, 360, '<p>zxzxdszxczcxzxzxzzx</p>', NULL, NULL, 49, 47),
(62, 361, '<p>hsjafhuyhesjhh</p>', '[{\"medicine_name\":\"Atorvastatin\",\"tab\":\"10\",\"description\":\"nigt\"}]', 'xzxzxzxzx', 47, 47),
(63, 362, '<p>rtjkje</p>', '[{\"medicine_name\":\"sfg\",\"tab\":\"refg`\",\"description\":\"eref\"}]', '', 135, 135),
(64, 363, '<p>dgfuygdisjfh98eywenkjaf</p>', '[{\"medicine_name\":\"Atorvastatin\",\"tab\":\"10\",\"description\":\"night\"}]', 'ysdifguygeuiftaifuhij', 47, 47),
(65, 366, '<p>sdhfjhsjff</p>', '[{\"medicine_name\":\"ralson\",\"tab\":\"10\",\"description\":\"night\"}]', 'fjdksjglfd', 47, 47),
(66, 369, '<p>hi how r u?</p><p><br></p>', '[{\"medicine_name\":\"ralson\",\"tab\":\"10\",\"description\":\"ajalkdj\"},{\"medicine_name\":\"abcd\",\"tab\":\"5\",\"description\":\"fjdklvg\"}]', 'take every day', 49, 47),
(67, 379, '<p></p><blockquote>hkjewfjjkjwd hdsjha wjhdj</blockquote><p></p>', '[{\"medicine_name\":\"ralson\",\"tab\":\"11\",\"description\":\"bdc,m\"}]', 'sdjakjha', 49, 47),
(68, 375, '<p>\r\n\r\n</p><p>WT.:-58.3,P:-80/min , BP:-140/90mmHg , LMP:-01/07/2020,WEEK:  &nbsp; &nbsp;PALLOR:+/- , EDEMA:+/-, RS:  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CVS:  &nbsp; &nbsp; &nbsp; </p><p><b>C/o:-</b><br></p><p>ON EXAMINATION :-<b></b></p><p><b>Folliculor study\r\n\r\n:- </b><br></p><p><b></b>Day 2/3/4UTERUS AV/RV CX:Langth  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Rt  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Lt</p><p>AFC</p><p>UtPI</p><p>Day-10/11/12</p><p>F1</p><p>F2</p><p>UtPI</p><p>ET:  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mm triple line yes/no </p><p><b>P/A(OBS)</b><br></p><p>WEEK:-<b><br></b></p><p>UtPI:-</p><p>EFW:-</p><p>Placenta:-</p><p>AFI:-</p><p>MCA PI :-</p><p>Umb PI :-</p><p>C:P Ratio:-</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>&nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<br><p></p>', '[{\"medicine_name\":\"T. DOXYCYCLINE 100mg \\u0ae6-\\u0ae7-\\u0ae6-\\u0ae7 \",\"tab\":\"10\",\"description\":\"\\u0aac\\u0aaa\\u0acb\\u0ab0\\u0ac7 \\u0ab0\\u0abe\\u0aa4\\u0acd\\u0ab0\\u0ac7 \\u0a9c\\u0aae\\u0ac0\\u0aa8\\u0ac7 \"}]', 'follow up date 1 sept 2020', 49, 47),
(69, 378, '<p>\r\n\r\n</p><p>WT.:-58.3,P:-80/min , BP:-140/90mmHg , LMP:-01/07/2020,WEEK:  &nbsp; &nbsp;PALLOR:+/- , EDEMA:+/-, RS:  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CVS:  &nbsp; &nbsp; &nbsp; </p><p><b>C/o:-</b><br></p><p>ON EXAMINATION :-<b></b></p><p><b>Folliculor study\r\n\r\n:- </b><br></p><p><b></b>Day 2/3/4UTERUS AV/RV CX:Langth  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Rt  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Lt</p><p>AFC</p><p>UtPI</p><p>Day-10/11/12</p><p>F1</p><p>F2</p><p>UtPI</p><p>ET:  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mm triple line yes/no </p><p><b>P/A(OBS)</b><br></p><p>WEEK:-<b><br></b></p><p>UtPI:-</p><p>EFW:-</p><p>Placenta:-</p><p>AFI:-</p><p>MCA PI :-</p><p>Umb PI :-</p><p>C:P Ratio:-</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>&nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<br><p></p>', '[{\"medicine_name\":\"ralson\",\"tab\":\"10\",\"description\":\"\\u0ab8\\u0ab5\\u0abe\\u0ab0\\u0ac7 1 \\u0ab8\\u0abe\\u0a82\\u0a9c\\u0ac7  1 \\u0ab0\\u0abe\\u0aa4\\u0acd\\u0ab0\\u0ac7 1 \"}]', '?????????????? ', 49, 47),
(70, 367, '<p>dtsrsfg</p>', '[{\"medicine_name\":\"sds\",\"tab\":\"w\",\"description\":\"q\"}]', 'DFDS', 49, 47),
(71, 388, '<p>edgejdfjhfehffgwsry</p>', '[{\"medicine_name\":\"ralson\",\"tab\":\"11\",\"description\":\"night\"}]', 'rgfhgfjug', 49, 47),
(72, 390, '<p></p><p>WT.:-58.3,P:-80/min , BP:-140/90mmHg , LMP:-01/07/2020,WEEK:  &nbsp;\r\n&nbsp;PALLOR:+/- , EDEMA:+/-, RS:  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp;CVS:  &nbsp; &nbsp; &nbsp; </p>\r\n\r\n<p><b>C/o:-</b></p>\r\n\r\n<p>ON EXAMINATION :-</p>\r\n\r\n<p><b>Folliculor study :- </b></p>\r\n\r\n<p>Day 2/3/4UTERUS AV/RV CX:Langth  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Rt  &nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp;Lt</p>\r\n\r\n<p>AFC</p>\r\n\r\n<p>UtPI</p>\r\n\r\n<p>Day-10/11/12</p>\r\n\r\n<p>F1</p>\r\n\r\n<p>F2</p>\r\n\r\n<p>UtPI</p>\r\n\r\n<p>ET:  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mm triple line\r\nyes/no </p>\r\n\r\n<p><b>P/A(OBS)</b></p>\r\n\r\n<p>WEEK:-</p>\r\n\r\n<p>UtPI:-</p>\r\n\r\n<p>EFW:-</p>\r\n\r\n<p>Placenta:-</p>\r\n\r\n<p>AFI:-</p>\r\n\r\n<p>MCA PI :-</p>\r\n\r\n<p>Umb PI :-</p>\r\n\r\n<p>C:P Ratio:-</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n\r\n\r\n\r\n\r\n<br><p></p>', NULL, NULL, 49, 47),
(73, 393, '<p>health issue</p>', '[{\"medicine_name\":\"paracitamole\",\"tab\":\"12\",\"description\":\"done\"},{\"medicine_name\":\"verynice paracitamole\",\"tab\":\"12\",\"description\":\"gooe\"}]', '', 47, 47),
(74, 394, '<p>JWHDIJYIESHFDSHLKFHEGSKJDGHS</p>', '[{\"medicine_name\":\"Adderall.\",\"tab\":\"10\",\"description\":\"night\"},{\"medicine_name\":\"ralson\",\"tab\":\"11\",\"description\":\"NIGHT\"}]', 'SDIUYsI', 49, 47),
(75, 395, '<p><br></p><p>WT.:-58.3,P:-80/min , BP:-140/90mmHg , LMP:-01/07/2020,WEEK:  &nbsp;\r\n&nbsp;PALLOR:+/- , EDEMA:+/-, RS:  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp;CVS:  &nbsp; &nbsp; &nbsp; </p>\r\n\r\n<p><b>C/o:-</b></p>\r\n\r\n<p>ON EXAMINATION :-</p>\r\n\r\n<p><b>Folliculor study :- </b></p>\r\n\r\n<p>Day 2/3/4UTERUS AV/RV CX:Langth  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Rt  &nbsp;\r\n&nbsp; &nbsp; &nbsp; &nbsp;Lt</p>\r\n\r\n<p>AFC</p>\r\n\r\n<p>UtPI</p>\r\n\r\n<p>Day-10/11/12</p>\r\n\r\n<p>F1</p>\r\n\r\n<p>F2</p>\r\n\r\n<p>UtPI</p>\r\n\r\n<p>ET:  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;mm triple line\r\nyes/no </p>\r\n\r\n<p><b>P/A(OBS)</b></p>\r\n\r\n<p>WEEK:-</p>\r\n\r\n<p>UtPI:-</p>\r\n\r\n<p>EFW:-</p>\r\n\r\n<p>Placenta:-</p>\r\n\r\n<p>AFI:-</p>\r\n\r\n<p>MCA PI :-</p>\r\n\r\n<p>Umb PI :-</p>\r\n\r\n<p>C:P Ratio:-</p>\r\n\r\n\r\n\r\n\r\n\r\n<br><p></p>', NULL, NULL, 47, 47),
(76, 397, '<p>BP - 85/12%</p>', '[{\"medicine_name\":\"ralson\",\"tab\":\"10\",\"description\":\"Before meal twice in day\"},{\"medicine_name\":\"Adderall.\",\"tab\":\"5\",\"description\":\"After meal \"}]', 'Follow up visit after 10 days', 49, 47),
(77, 404, '<p>Rx</p><p><br></p><p>Dolo 650mg</p>', NULL, NULL, 135, 135),
(78, 429, '<p>pera sitamol 3</p>', NULL, NULL, 47, 47),
(79, 428, '<p><u><b></b></u><u></u><b>jhj fh fjgh fjdhg dfjfdhgjgh dfjghdjfgh dfjhg dfjh</b></p>', '[{\"medicine_name\":\"dsf\",\"tab\":\"2\",\"description\":\"werwerw\"},{\"medicine_name\":\"werwer\",\"tab\":\"2\",\"description\":\"werwer\"},{\"medicine_name\":\"ewr\",\"tab\":\"2\",\"description\":\"df\"}]', '', 246, 246);

-- --------------------------------------------------------

--
-- Table structure for table `p_cos`
--

CREATE TABLE `p_cos` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `co` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `question_code` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_cos`
--

INSERT INTO `p_cos` (`id`, `p_id`, `co`, `question`, `question_code`, `created_by`, `created_at`, `updated_at`) VALUES
(307, 1, 'fever', 'dsf', NULL, 20, '2020-10-17 17:21:02', '2020-10-17 17:21:02'),
(308, 1, 'headache', 'Can I Trust My Tap Water', NULL, 20, '2020-10-17 17:21:02', '2020-10-17 17:21:02'),
(309, 1, 'headache', 'Will vitamin D Save My Life', NULL, 20, '2020-10-17 17:21:02', '2020-10-17 17:21:02'),
(320, 2, 'fever', 'dsf', NULL, 20, '2020-10-19 11:04:46', '2020-10-19 11:04:46'),
(321, 2, 'headache', 'Can I Trust My Tap Water', NULL, 20, '2020-10-19 11:04:46', '2020-10-19 11:04:46'),
(326, 0, 'headache', 'Can I Trust My Tap Water', NULL, 20, '2020-10-19 11:28:21', '2020-10-19 11:28:21'),
(327, 0, 'headache', 'Will vitamin D Save My Life', NULL, 20, '2020-10-19 11:28:21', '2020-10-19 11:28:21'),
(328, 9, 'headache', 'Can I Trust My Tap Water', NULL, 20, '2020-10-19 11:29:13', '2020-10-19 11:29:13'),
(329, 9, 'headache', 'Will vitamin D Save My Life', NULL, 20, '2020-10-19 11:29:13', '2020-10-19 11:29:13'),
(330, 10, 'headache', 'Can I Trust My Tap Water', NULL, 20, '2020-10-19 11:31:45', '2020-10-19 11:31:45'),
(331, 10, 'headache', 'Will vitamin D Save My Life', NULL, 20, '2020-10-19 11:31:45', '2020-10-19 11:31:45'),
(334, 15, 'headache', 'Can I Trust My Tap Water', NULL, 20, '2020-10-19 11:49:36', '2020-10-19 11:49:36'),
(335, 15, 'headache', 'Will vitamin D Save My Life', NULL, 20, '2020-10-19 11:49:36', '2020-10-19 11:49:36'),
(342, 7, 'headache', 'Can I Trust My Tap Water', NULL, 20, '2020-10-19 11:54:16', '2020-10-19 11:54:16'),
(343, 7, 'headache', 'Will vitamin D Save My Life', NULL, 20, '2020-10-19 11:54:16', '2020-10-19 11:54:16'),
(388, 16, 'headache', 'Can I Trust My Tap Water', NULL, 20, '2020-10-19 12:28:59', '2020-10-19 12:28:59'),
(389, 16, 'headache', 'Will vitamin D Save My Life', NULL, 20, '2020-10-19 12:28:59', '2020-10-19 12:28:59'),
(403, 17, 'dsdf', 'Can I Trust My Tap Water', NULL, 20, '2020-10-19 17:36:32', '2020-10-19 17:36:32'),
(484, 19, 'Abdominoplasty', 'Can a vegan diet cause lupus patient to go into remission?', NULL, 4, '2020-10-21 13:22:27', '2020-10-21 13:22:27'),
(485, 19, 'Abdominal Pain', 'What exactly is a spine block injection? Will it work long-term for low back pain due to disc problems?', NULL, 4, '2020-10-21 13:22:27', '2020-10-21 13:22:27'),
(486, 19, 'Abdominal Pain', 'What medications are best for the treatment of asthma? What are their side effects?', NULL, 4, '2020-10-21 13:22:27', '2020-10-21 13:22:27'),
(487, 19, 'Hemophilia', 'What causes Hashimoto\'s thyroiditis, and what is the best method of treatment? Can iodine help this condition?', NULL, 4, '2020-10-21 13:22:27', '2020-10-21 13:22:27'),
(491, 18, 'Abdominoplasty', 'Can a vegan diet cause lupus patient to go into remission?', NULL, 4, '2020-10-21 17:06:47', '2020-10-21 17:06:47'),
(492, 18, 'Abdominal Pain', 'What medications are best for the treatment of asthma? What are their side effects?', NULL, 4, '2020-10-21 17:06:47', '2020-10-21 17:06:47'),
(493, 18, 'Hemophilia', 'What causes Hashimoto\'s thyroiditis, and what is the best method of treatment? Can iodine help this condition?', NULL, 4, '2020-10-21 17:06:47', '2020-10-21 17:06:47'),
(583, 23, 'Abdominoplasty', 'Can a vegan diet cause lupus patient to go into remission?', 'vegan', 4, '2020-11-22 11:23:06', '2020-11-22 11:23:06'),
(584, 23, 'Hemophilia', 'What causes Hashimoto\'s thyroiditis, and what is the best method of treatment? Can iodine help this condition?', 'Hashimoto\'s', 4, '2020-11-22 11:23:06', '2020-11-22 11:23:06'),
(587, 21, 'Abdominoplasty', 'Can a vegan diet cause lupus patient to go into remission?', 'vegan', 4, '2020-12-01 17:46:05', '2020-12-01 17:46:05'),
(588, 21, 'Abdominal Pain', 'What exactly is a spine block injection? Will it work long-term for low back pain due to disc problems?', 'spine', 4, '2020-12-01 17:46:05', '2020-12-01 17:46:05'),
(589, 21, 'Abdominal Pain', 'What medications are best for the treatment of asthma? What are their side effects?', 'medications', 4, '2020-12-01 17:46:05', '2020-12-01 17:46:05'),
(590, 21, 'Hemophilia', 'Is breast cancer inherited?', 'cancer', 4, '2020-12-01 17:46:05', '2020-12-01 17:46:05'),
(619, 22, 'Abdominoplasty', 'Can a vegan diet cause lupus patient to go into remission?', 'vegan', 4, '2020-12-08 14:52:34', '2020-12-08 14:52:34'),
(620, 22, 'Abdominal Pain', 'What exactly is a spine block injection? Will it work long-term for low back pain due to disc problems?', 'spine', 4, '2020-12-08 14:52:34', '2020-12-08 14:52:34'),
(621, 22, 'Abdominal Pain', 'What medications are best for the treatment of asthma? What are their side effects?', 'medications', 4, '2020-12-08 14:52:34', '2020-12-08 14:52:34'),
(622, 22, 'Hemophilia', 'What causes Hashimoto\'s thyroiditis, and what is the best method of treatment? Can iodine help this condition?', 'Hashimoto\'s', 4, '2020-12-08 14:52:34', '2020-12-08 14:52:34'),
(827, 24, 'Abdominoplasty', 'Can a vegan diet cause lupus patient to go into remission?', 'vegan', 4, '2020-12-19 14:23:14', '2020-12-19 14:23:14'),
(828, 24, 'Abdominoplasty', 'Will a person with Type 2 diabetes under control end up with the need for insulin?', 'diabetes', 4, '2020-12-19 14:23:14', '2020-12-19 14:23:14'),
(829, 24, 'Abdominal Pain', 'What exactly is a spine block injection? Will it work long-term for low back pain due to disc problems?', 'spine', 4, '2020-12-19 14:23:14', '2020-12-19 14:23:14'),
(830, 24, 'Abdominal Pain', 'What medications are best for the treatment of asthma? What are their side effects?', 'medications', 4, '2020-12-19 14:23:14', '2020-12-19 14:23:14'),
(831, 24, 'Hemophilia', 'What causes Hashimoto\'s thyroiditis, and what is the best method of treatment? Can iodine help this condition?', 'Hashimoto\'s', 4, '2020-12-19 14:23:14', '2020-12-19 14:23:14'),
(832, 24, 'Hemophilia', 'Is breast cancer inherited?', 'cancer', 4, '2020-12-19 14:23:14', '2020-12-19 14:23:14'),
(837, 26, 'Abdominal Pain', 'What exactly is a spine block injection? Will it work long-term for low back pain due to disc problems?', 'spine', 4, '2021-01-28 22:55:56', '2021-01-28 22:55:56'),
(838, 26, 'Abdominal Pain', 'What medications are best for the treatment of asthma? What are their side effects?', 'medications', 4, '2021-01-28 22:55:56', '2021-01-28 22:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `p_digno_table`
--

CREATE TABLE `p_digno_table` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `rows` int(11) NOT NULL,
  `cols` int(11) NOT NULL,
  `header_label` varchar(255) NOT NULL,
  `cols_label` varchar(255) NOT NULL,
  `footer_label` varchar(255) NOT NULL,
  `extra_label` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_digno_table`
--

INSERT INTO `p_digno_table` (`id`, `p_id`, `rows`, `cols`, `header_label`, `cols_label`, `footer_label`, `extra_label`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 4, '[\"Rt\",\"Lt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"Week\",\"Afi\",\"UTPI\"]', '[\"Uterus\",\"AV\\/RV\",\"Cx:length\",\"ET:_____mm trip line\"]', '', 20, '2020-10-17 12:04:54', '2020-10-17 12:04:54'),
(2, 6, 4, 4, '[\"Rt\",\"Lt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"Week\",\"Afi\",\"UTPI\"]', '[\"Uterus\",\"AV\\/RV\",\"Cx:length\",\"ET:_____mm trip line\"]', '', 20, '2020-10-19 11:13:06', '2020-10-19 11:13:06'),
(3, 8, 4, 4, '[\"Rt\",\"Lt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"Week\",\"Afi\",\"UTPI\"]', '[\"Uterus\",\"AV\\/RV\",\"Cx:length\",\"ET:_____mm trip line\"]', '', 20, '2020-10-19 11:21:07', '2020-10-19 11:21:07'),
(4, 9, 4, 4, '[\"Rt\",\"Lt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"Week\",\"Afi\",\"UTPI\"]', '[\"Uterus\",\"AV\\/RV\",\"Cx:length\",\"ET:_____mm trip line\"]', '', 20, '2020-10-19 11:22:55', '2020-10-19 11:22:55'),
(5, 10, 4, 4, '[\"Rt\",\"Lt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"Week\",\"Afi\",\"UTPI\"]', '[\"Uterus\",\"AV\\/RV\",\"Cx:length\",\"ET:_____mm trip line\"]', '', 20, '2020-10-19 11:29:38', '2020-10-19 11:29:38'),
(6, 11, 4, 4, '[\"Rt\",\"Lt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"Week\",\"Afi\",\"UTPI\"]', '[\"Uterus\",\"AV\\/RV\",\"Cx:length\",\"ET:_____mm trip line\"]', '', 20, '2020-10-19 11:34:36', '2020-10-19 11:34:36'),
(7, 12, 4, 4, '[\"Rt\",\"Lt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"Week\",\"Afi\",\"UTPI\"]', '[\"Uterus\",\"AV\\/RV\",\"Cx:length\",\"ET:_____mm trip line\"]', '', 20, '2020-10-19 11:35:47', '2020-10-19 11:35:47'),
(8, 14, 4, 4, '[\"Rt\",\"Lt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"Week\",\"Afi\",\"UTPI\"]', '[\"Uterus\",\"AV\\/RV\",\"Cx:length\",\"ET:_____mm trip line\"]', '', 20, '2020-10-19 11:45:30', '2020-10-19 11:45:30'),
(9, 16, 4, 4, '[\"Rt\",\"Lt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"Week\",\"Afi\",\"UTPI\"]', '[\"Uterus\",\"AV\\/RV\",\"Cx:length\",\"ET:_____mm trip line\"]', '', 20, '2020-10-19 11:50:20', '2020-10-19 11:50:20'),
(10, 18, 4, 4, '[\"lt\",\"rt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"AFi\",\"UtPI\",\"Utratus\"]', '[\"AV\\/RV\",\"Cx:Langth\",\"Et:_mm\",\"Cx:mucus\"]', '', 4, '2020-10-20 16:58:45', '2020-10-20 16:58:45'),
(11, 19, 4, 4, '[\"lt\",\"rt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"AFi\",\"UtPI\",\"Utratus\"]', '[\"AV\\/RV\",\"Cx:Langth\",\"Et:_mm\",\"Cx:mucus\"]', '', 4, '2010-01-01 00:10:54', '2010-01-01 00:10:54'),
(12, 20, 4, 4, '[\"lt\",\"rt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"AFi\",\"UtPI\",\"Utratus\"]', '[\"AV\\/RV\",\"Cx:Langth\",\"Et:_mm\",\"Cx:mucus\"]', '', 4, '2020-10-21 12:31:06', '2020-10-21 12:31:06'),
(13, 21, 4, 4, '[\"lt\",\"rt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"AFi\",\"UtPI\",\"Utratus\"]', '[\"AV\\/RV\",\"Cx:Langth\",\"Et:_mm\",\"Cx:mucus\"]', '', 4, '2020-10-23 11:29:44', '2020-10-23 11:29:44'),
(14, 22, 4, 4, '[\"lt\",\"rt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"AFi\",\"UtPI\",\"Utratus\"]', '[\"AV\\/RV\",\"Cx:Langth\",\"Et:_mm\",\"Cx:mucus\"]', '', 4, '2020-11-21 21:20:54', '2020-11-21 21:20:54'),
(15, 23, 4, 4, '[\"lt\",\"rt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"AFi\",\"UtPI\",\"Utratus\"]', '[\"AV\\/RV\",\"Cx:Langth\",\"Et:_mm\",\"Cx:mucus\"]', '', 4, '2020-11-22 08:40:17', '2020-11-22 08:40:17'),
(16, 24, 4, 4, '[\"lt\",\"rt\",\"Rt1\",\"Lt1\"]', '[\"AFC\",\"AFi\",\"UtPI\",\"Utratus\"]', '[\"AV\\/RV\",\"Cx:Langth\",\"Et:_mm\",\"Cx:mucus\"]', 'dsffsd', 4, '2020-11-22 12:02:23', '2020-11-22 12:02:23'),
(17, 25, 4, 4, '[\"Rt\",\"Lt\",\"Rt\",\"Lt\"]', '[\"Rx\",\"Tv\",\"Sf\",\"Df\"]', '[\"Av\",\"Rv\",\"Av\",\"Rv\"]', 'dsffsd', 4, '2020-12-24 11:29:43', '2020-12-24 11:29:43'),
(18, 26, 4, 4, '[\"Rt\",\"Lt\",\"Rt\",\"Lt\"]', '[\"Rx\",\"Tv\",\"Sf\",\"Df\"]', '[\"Av\",\"Rv\",\"Av\",\"Rv\"]', 'dsffsd', 4, '2020-12-24 17:20:02', '2020-12-24 17:20:02'),
(19, 28, 0, 4, '[\"Rt\",\"Lt\",\"Rt\",\"Lt\"]', '[\"-\"]', '[\"Av\",\"Rv\",\"Av\",\"Rv\"]', 'dsffsd', 4, '2021-01-30 12:49:06', '2021-01-30 12:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `p_labels`
--

CREATE TABLE `p_labels` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `l_value` varchar(255) NOT NULL,
  `label_unit` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_labels`
--

INSERT INTO `p_labels` (`id`, `p_id`, `label`, `l_value`, `label_unit`, `created_by`, `created_at`, `updated_at`) VALUES
(83, 1, 'new one', 'sddsd', NULL, 20, '2020-10-17 17:21:03', '2020-10-17 17:21:03'),
(88, 2, 'new one', 'sdds', NULL, 20, '2020-10-19 11:04:35', '2020-10-19 11:04:35'),
(90, 15, 'new one', 'sadasdd', NULL, 20, '2020-10-19 11:49:37', '2020-10-19 11:49:37'),
(92, 7, 'new one', 'Dfghj', NULL, 20, '2020-10-19 11:54:21', '2020-10-19 11:54:21'),
(112, 16, 'new one', 'asdasd', NULL, 20, '2020-10-19 12:29:00', '2020-10-19 12:29:00'),
(126, 17, 'new one', 'sdsd', NULL, 20, '2020-10-19 17:36:33', '2020-10-19 17:36:33'),
(217, 18, 'RS', 'lorem', NULL, 4, '2020-10-21 17:06:49', '2020-10-21 17:06:49'),
(218, 18, 'weeks', '5', NULL, 4, '2020-10-21 17:06:49', '2020-10-21 17:06:49'),
(219, 18, 'GD', 'lorem', NULL, 4, '2020-10-21 17:06:49', '2020-10-21 17:06:49'),
(220, 18, 'LMP', '10', NULL, 4, '2020-10-21 17:06:49', '2020-10-21 17:06:49'),
(221, 18, 'weight', '10', NULL, 4, '2020-10-21 17:06:49', '2020-10-21 17:06:49'),
(222, 18, 'PULSE', '70', NULL, 4, '2020-10-21 17:06:49', '2020-10-21 17:06:49'),
(223, 18, 'HEART RATE', '50', NULL, 4, '2020-10-21 17:06:49', '2020-10-21 17:06:49'),
(224, 18, 'SUGER', '56', NULL, 4, '2020-10-21 17:06:49', '2020-10-21 17:06:49'),
(225, 18, 'BP', '100', NULL, 4, '2020-10-21 17:06:49', '2020-10-21 17:06:49'),
(516, 23, 'dsvxcvcv', 'xzc', 'xcvzxcvvc', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(517, 23, 'dsfsadfadsf', 'zxc', 'jkghkkgj', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(518, 23, 'sdf', 'zxc', 'sdf', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(519, 23, 'dsf', 'zxc', 'dsf', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(520, 23, 'RS', '45', '', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(521, 23, 'weeks', '55', '', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(522, 23, 'GD', '5', '', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(523, 23, 'LMP', '5', '', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(524, 23, 'weight', '6', '', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(525, 23, 'PULSE', '6', '', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(526, 23, 'HEART RATE', 'xzc', '', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(527, 23, 'SUGER', '5', '', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(528, 23, 'BP', '4', '', 4, '2020-11-22 11:23:17', '2020-11-22 11:23:17'),
(542, 21, 'dsvxcvcv', '10', 'xcvzxcvvc', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(543, 21, 'dsfsadfadsf', '10', 'jkghkkgj', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(544, 21, 'sdf', '10', 'sdf', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(545, 21, 'dsf', '10', 'dsf', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(546, 21, 'RS', 'new', '', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(547, 21, 'weeks', '45', '', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(548, 21, 'GD', '10', '', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(549, 21, 'LMP', '54', '', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(550, 21, 'weight', '20', '', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(551, 21, 'PULSE', '45', '', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(552, 21, 'HEART RATE', '11', '', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(553, 21, 'SUGER', '45', '', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(554, 21, 'BP', '111', '', 4, '2020-12-01 17:46:18', '2020-12-01 17:46:18'),
(659, 22, 'કોરોના', '10', 'Score', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(660, 22, 'dsvxcvcv', '15', 'xcvzxcvvc', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(661, 22, 'dsfsadfadsf', '1212', 'jkghkkgj', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(662, 22, 'sdf', '121', 'sdf', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(663, 22, 'dsf', '121', 'dsf', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(664, 22, 'RS', '2', '', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(665, 22, 'weeks', '212', '', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(666, 22, 'GD', '1', '', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(667, 22, 'LMP', '21', '', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(668, 22, 'weight', '2', '', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(669, 22, 'PULSE', '12', '', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(670, 22, 'HEART RATE', '1', '', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(671, 22, 'SUGER', '2', '', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(672, 22, 'BP', '12', '', 4, '2020-12-08 14:54:52', '2020-12-08 14:54:52'),
(1149, 24, 'SUGER', 'zxc', '', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1150, 24, 'dsvxcvcv', 'xzc', 'xcvzxcvvc', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1151, 24, 'dsfsadfadsf', 'zxc', 'jkghkkgj', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1152, 24, 'sdf', 'zxcz', 'sdf', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1153, 24, 'dsf', 'xczxc', 'dsf', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1154, 24, 'RS', 'zxc', '', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1155, 24, 'weeks', 'zxc', '', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1156, 24, 'GD', 'zcx', '', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1157, 24, 'LMP', 'zxczxc', '', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1158, 24, 'weight', 'zxc', '', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1159, 24, 'PULSE', 'zxc', '', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1160, 24, 'HEART RATE', 'zxc', '', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1161, 24, 'SUGER', 'zxc', '', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1162, 24, 'BP', 'xzc', '', 4, '2020-12-19 14:23:15', '2020-12-19 14:23:15'),
(1163, 26, 'dd', '12', '', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1164, 26, 'SUGER', '121', '', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1165, 26, 'કોરોના', '46', 'Score', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1166, 26, 'dsvxcvcv', '15', 'xcvzxcvvc', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1167, 26, 'dsfsadfadsf', 'df', 'jkghkkgj', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1168, 26, 'sdf', 'ffdf', 'sdf', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1169, 26, 'dsf', 'dfdfdf', 'dsf', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1170, 26, 'RS', 'fdfdf', '', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1171, 26, 'weeks', '0', '', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1172, 26, 'GD', '22', '', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1173, 26, 'weight', '200', '', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1174, 26, 'PULSE', '152', '', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1175, 26, 'HEART RATE', '73', '', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1176, 26, 'SUGER', '150', '', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51'),
(1177, 26, 'BP', '120', '', 4, '2021-01-28 22:56:51', '2021-01-28 22:56:51');

-- --------------------------------------------------------

--
-- Table structure for table `p_medicine`
--

CREATE TABLE `p_medicine` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `medicine` varchar(255) NOT NULL,
  `morning` int(11) NOT NULL,
  `after_noon` int(11) NOT NULL,
  `evning` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `doz` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_medicine`
--

INSERT INTO `p_medicine` (`id`, `p_id`, `medicine`, `morning`, `after_noon`, `evning`, `tab`, `doz`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(31, 18, 'Paracetamol 5', 1, 1, 1, 10, NULL, 'lorum ipsum', 4, '2020-10-21 19:02:38', '2020-10-21 19:02:38'),
(32, 18, 'Advair Diskus (fluticasone)', 1, 1, 1, 10, NULL, 'lorum ipsum', 4, '2020-10-21 19:02:38', '2020-10-21 19:02:38'),
(33, 18, 'Nexium (esomeprazole)', 1, 1, 1, 10, NULL, 'lorum ipsum', 4, '2020-10-21 19:02:38', '2020-10-21 19:02:38'),
(34, 18, 'Ventolin HFA (albuterol)', 1, 1, 1, 5, NULL, 'lorum ipsum', 4, '2020-10-21 19:02:38', '2020-10-21 19:02:38'),
(77, 23, 'Paracetamol', 1, 1, 1, 20, '200mg', 'sadsf', 4, '2020-11-22 11:15:18', '2020-11-22 11:15:18'),
(78, 23, 'Nexium (esomeprazole) lon', 1, 1, 1, 20, '10', 'asd', 4, '2020-11-22 11:15:18', '2020-11-22 11:15:18'),
(80, 21, 'Nexium (esomeprazole)', 1, 1, 1, 10, '', '', 4, '2020-12-01 17:46:42', '2020-12-01 17:46:42'),
(81, 21, 'Acetaminophen', 1, 1, 1, 10, '', '', 4, '2020-12-01 17:46:42', '2020-12-01 17:46:42'),
(89, 22, 'Paracetamol', 1, 1, 1, 20, '', 'hgfhg', 4, '2020-12-08 14:55:05', '2020-12-08 14:55:05'),
(90, 22, 'Paracetamol 585', 1, 1, 1, 10, '', '65', 4, '2020-12-08 14:55:05', '2020-12-08 14:55:05'),
(92, 24, 'Paracetamol nos', 1, 1, 1, 0, '', '', 4, '2020-12-16 16:59:58', '2020-12-16 16:59:58'),
(93, 26, 'Paracetamol 585', 1, 1, 1, 20, '', '', 4, '2021-01-28 22:57:45', '2021-01-28 22:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `p_other_settings`
--

CREATE TABLE `p_other_settings` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `time` text NOT NULL,
  `header` varchar(255) NOT NULL,
  `full_header` text,
  `is_full_header` int(11) NOT NULL DEFAULT '0' COMMENT 'full_header=1,other=0',
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_other_settings`
--

INSERT INTO `p_other_settings` (`id`, `doctor_id`, `logo`, `time`, `header`, `full_header`, `is_full_header`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 47, '2020-11-22_47_16060145834236853395fb9d677ef955.png', '{\"morning_from\":\"10:15\",\"morning_to\":\"12:50\",\"evening_from\":\"3:15\",\"evening_to\":\"4:50\"}', 'asdasd', NULL, 0, 47, '2020-11-22 08:39:33', '2020-11-22 08:39:44'),
(3, 4, '2020-12-16_4_16081151246757695985fd9e3b499959.png', 'ASDadasd', 'asdsadASDASD', '2021-01-30_4_161199160649229748960150a36cc66c.jpg', 1, 4, '2020-12-16 16:08:44', '2021-01-30 12:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `p_suggestions`
--

CREATE TABLE `p_suggestions` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `suggestions` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_suggestions`
--

INSERT INTO `p_suggestions` (`id`, `p_id`, `question`, `suggestions`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 16, 'Can I Trust My Tap Water', 'asdfasf', 20, '2020-10-19 12:15:51', '2020-10-19 12:15:51'),
(2, 16, 'Can I Trust My Tap Water', 'afs', 20, '2020-10-19 12:15:51', '2020-10-19 12:15:51'),
(3, 16, 'extra', '', 20, '2020-10-19 12:15:51', '2020-10-19 12:15:51'),
(5, 18, 'Can a vegan diet cause lupus patient to go into remission?', 'It is good that you are concerned because many people who start eating a vegetarian diet simply eliminate the meat from their diet and compromise their protein needs', 4, '2020-10-20 17:34:38', '2020-10-20 17:34:38'),
(6, 18, 'What medications are best for the treatment of asthma? What are their side effects?', 'Morbi dignissim ligula libero, non aliquam augue cursus vel. Donec non lorem vel dolor pellentesque auctor. Donec blandit pellentesque porttitor', 4, '2020-10-20 17:34:38', '2020-10-20 17:34:38'),
(7, 18, 'What causes Hashimoto\'s thyroiditis, and what is the best method of treatment? Can iodine help this condition?', 'Aenean semper erat at ipsum tincidunt aliquet. Curabitur nec eleifend mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas condimentum risus a sem ullamcorper, vel sagittis eros suscipit. Donec efficitur pellentesque ante. Donec susc', 4, '2020-10-20 17:34:38', '2020-10-20 17:34:38'),
(8, 18, 'What causes Hashimoto\'s thyroiditis, and what is the best method of treatment? Can iodine help this condition?', 'Vivamus id dui at urna dictum sollicitudin. Nulla facilisi. Quisque finibus enim eget urna pellentesque luctus. Morbi rutrum sit amet elit', 4, '2020-10-20 17:34:38', '2020-10-20 17:34:38'),
(9, 18, 'extra', 'jhrjhjkhjkfhdkfdh fdhgkjdf hkjg hjkdfh kjdfgh kjdf', 4, '2020-10-20 17:34:38', '2020-10-20 17:34:38'),
(93, 23, 'Can a vegan diet cause lupus patient to go into remission?', 'Nunc sodales volutpat bibendum. Sed dui lectus, mollis a scelerisque quis, lobortis at purus. Aliquam a purus aliquet, malesuada ante vel, ', 4, '2020-11-22 11:15:26', '2020-11-22 11:15:26'),
(94, 23, 'What causes Hashimoto\'s thyroiditis, and what is the best method of treatment? Can iodine help this condition?', 'Aenean semper erat at ipsum tincidunt aliquet. Curabitur nec eleifend mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas condimentum risus a sem ullamcorper, vel sagittis eros suscipit. Donec efficitur pellentesque ante. Donec susc', 4, '2020-11-22 11:15:26', '2020-11-22 11:15:26'),
(95, 23, 'extra', 'dfdf', 4, '2020-11-22 11:15:26', '2020-11-22 11:15:26'),
(98, 21, 'Can a vegan diet cause lupus patient to go into remission?', 'It is good that you are concerned because many people who start eating a vegetarian diet simply eliminate the meat from their diet and compromise their protein needs', 4, '2020-12-01 17:46:49', '2020-12-01 17:46:49'),
(99, 21, 'Is breast cancer inherited?', 'Vivamus id dui at urna dictum sollicitudin. Nulla facilisi. Quisque finibus enim eget urna pellentesque luctus. Morbi rutrum sit amet elit', 4, '2020-12-01 17:46:49', '2020-12-01 17:46:49'),
(100, 21, 'Is breast cancer inherited?', 'Answered by Stephanie Valente, DO. Dr. Valente is a breast surgeon at Cleveland Clinic. She is a board certified general surgeon with fellowship training in surgical breast oncology and serves as the Associate', 4, '2020-12-01 17:46:49', '2020-12-01 17:46:49'),
(101, 21, 'extra', 'ksjhakjdf', 4, '2020-12-01 17:46:49', '2020-12-01 17:46:49'),
(135, 22, 'What exactly is a spine block injection? Will it work long-term for low back pain due to disc problems?', 'The typical life of hearing aids is usually about five to seven years. When you are first fitted with hearing aids, talk with your audiologist about choosing devices that will give you ‘room to grow’ in case your hearing', 4, '2020-12-08 14:55:28', '2020-12-08 14:55:28'),
(136, 22, 'What exactly is a spine block injection? Will it work long-term for low back pain due to disc problems?', 'કોરોના ગુજરાત LIVE: 19મા દિવસે કોરોનાના 1400થી ઓછા કેસ, રિક્વરી રેટ 91.56 પર પહોંચ્યો અને કોરોનાના કારણે 14...', 4, '2020-12-08 14:55:28', '2020-12-08 14:55:28'),
(137, 22, 'What medications are best for the treatment of asthma? What are their side effects?', 'Only if you have celiac disease, when gluten (a protein in grains) damages your small intestine. Experts no longer think gluten causes rashes,', 4, '2020-12-08 14:55:28', '2020-12-08 14:55:28'),
(138, 22, 'extra', 'hghjghghjg', 4, '2020-12-08 14:55:28', '2020-12-08 14:55:28'),
(139, 24, 'Will a person with Type 2 diabetes under control end up with the need for insulin?', 'Sed ac nisi in mauris euismod commodo sit amet id odio. Aenean laoreet lectus non consectetur vehicula. Etiam vehicula tristique tincidunt. Nunc sodales dolor egestas justo feugiat vestibulum. ', 4, '2020-12-16 17:00:01', '2020-12-16 17:00:01'),
(140, 24, 'extra', 'zxczxc', 4, '2020-12-16 17:00:01', '2020-12-16 17:00:01'),
(141, 27, 'extra', '', 47, '2021-01-09 18:08:19', '2021-01-09 18:08:19'),
(146, 26, 'extra', '', 4, '2021-01-28 22:58:43', '2021-01-28 22:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `questions_master`
--

CREATE TABLE `questions_master` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `question_code` varchar(255) DEFAULT NULL,
  `co_id` int(11) NOT NULL,
  `explenations` text,
  `created_by` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions_master`
--

INSERT INTO `questions_master` (`id`, `question`, `question_code`, `co_id`, `explenations`, `created_by`, `doctor_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Will vitamin D Save My Life', NULL, 4, 'asdasddas sadds', 20, 20, 'Active', '2020-09-30 23:35:23', '2020-10-01 11:03:13'),
(3, 'Can I Trust My Tap Water', NULL, 4, '', 20, 20, 'Active', '2020-10-01 00:39:51', '2020-10-01 00:39:51'),
(6, 'Heart disease ?', NULL, 0, 'Heart disease is the leading killer for both men and women. Women tend to be under-diagnosed to the point it’s too late to help them once the condition is discovered. Many studies also suggest that in women the symptoms may just not be chest pain. Symptoms like jaw pain, shoulder pain, nausea, or shortness of breath should also be looked at', 4, 4, 'Active', '2020-10-06 21:31:21', '2020-10-06 21:31:21'),
(7, 'Breast cancer ?', NULL, 0, 'Breast cancer is the most common cancer in women. In breast cancer, the cancer begins in the tissues of the breasts. The cancer cells may form a tumor. (Note: Not all tumors are cancerous.)', 4, 4, 'Active', '2020-10-06 21:31:45', '2020-10-06 21:31:45'),
(8, 'Autoimmune diseases', NULL, 0, 'Autoimmune diseases are a group of disorders in which the immune system attacks the body and destroys or alters tissues. There are more than 80 serious chronic illnesses in this category, including lupus, multiple sclerosis, and type-1 diabetes.', 4, 4, 'Active', '2020-10-06 21:32:07', '2020-10-06 21:32:07'),
(9, 'Will a person with Type 2 diabetes under control end up with the need for insulin?', 'diabetes', 7, 'As you may have read, Type 2 diabetes is a progressive disease. Will you require insulin? That all depends on individual factors that includes, among many other factors, weight, exercise, genetics, hormones', 4, 4, 'Active', '2020-10-20 16:43:06', '2020-10-20 16:43:06'),
(10, 'Can a vegan diet cause lupus patient to go into remission?', 'vegan', 7, 'The scientific evidence on the role of diet in autoimmune diseases such as lupus is just becoming available. I am a believer that a plant-based diet is helpful in promoting overall health and decreasing the chemicals that cause inflammation. I advocate a -based diet along with a very low-fat diet. ', 4, 4, 'Active', '2020-10-20 16:43:43', '2020-10-20 16:43:43'),
(11, 'What medications are best for the treatment of asthma? What are their side effects?', 'medications', 6, 'Albuterol is usually the primary \"rescue\" or short-term medicine that is used to help acute asthma symptoms, such as coughing or wheezing. When a patient needs to use albuterol to relieve daytime', 4, 4, 'Active', '2020-10-20 16:44:26', '2020-10-20 16:44:26'),
(12, 'What exactly is a spine block injection? Will it work long-term for low back pain due to disc problems?', 'spine', 6, 'There are number of injections, and they basically are used to block the pain generators that are believed to be the cause of pain. These have been used for decades for pain control. Some need only one injection', 4, 4, 'Active', '2020-10-20 16:45:00', '2020-10-20 16:45:00'),
(13, 'Is breast cancer inherited?', 'cancer', 5, ' Most women who get breast cancer do not have any family history of breast cancer. Just because a family member had breast cancer does not always mean that you will get breast cancer.', 4, 4, 'Active', '2020-10-20 16:45:37', '2020-10-20 16:45:37'),
(14, 'What causes Hashimoto\'s thyroiditis, and what is the best method of treatment? Can iodine help this condition?', 'Hashimoto\'s', 5, 'Hashimoto\'s thyroiditis is a type of autoimmune thyroid disease in which the immune system attacks and changes the texture of the thyroid gland. Hashimoto\'s thyroiditis stops the gland from making enough thyroid hormones for the body to work the way it should.', 4, 4, 'Active', '2020-10-20 16:46:17', '2020-10-20 16:46:17'),
(21, 'dfdsfdsf', 'sfdsfdfsdf', 6, 'sdfdsfdsf', 4, 4, 'Active', '2020-12-08 23:19:16', '2020-12-08 23:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`id`, `doctor_id`, `user_id`, `address`) VALUES
(1, 4, 18, 'Gabbar Road, Near Mahadev templess'),
(2, 20, 21, 'Gabbar Road, Near Mahadev temple'),
(3, 27, 28, 'palanpur'),
(4, 19, 38, 'palanpur'),
(5, 23, 43, 'palanpur'),
(6, 47, 48, 'whuyyw'),
(7, 36, 58, 'hello'),
(8, 77, 79, 'jhrigfuhiu'),
(9, 113, 114, 'palanpur'),
(10, 111, 116, 'deesa'),
(11, 151, 152, 'abcd'),
(12, 55, 220, ''),
(13, 249, 250, 'nisarg hospital');

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reset_password`
--

INSERT INTO `reset_password` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'ran@gmail.com', 'c08fd9d89a16c514e7fae787bcd2180c', '2019-08-24 23:18:37'),
(2, 'ran@gmail.com', 'e9a6d8b15a458404ae62d73a3d426bcd', '2019-08-24 23:19:54'),
(3, 'ran@gmail.com', 'a4e2985483294d21f982cfec0044b026', '2019-08-24 23:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_pdf`
--

CREATE TABLE `schedule_pdf` (
  `id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `file_name` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `link` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slider_image`, `position`, `status`, `created_at`, `updated_at`, `link`) VALUES
(18, '619994.jpg', 1, 'Active', '2019-12-22 06:27:30', '2019-12-22 06:27:30', ''),
(19, '53-531334_person-holding-pen-and-life-insurance-paper-beside_.jpg', 2, 'Active', '2019-12-22 06:30:26', '2019-12-22 06:30:26', '');

-- --------------------------------------------------------

--
-- Table structure for table `state_mstr`
--

CREATE TABLE `state_mstr` (
  `id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `county_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_mstr`
--

INSERT INTO `state_mstr` (`id`, `state_name`, `county_id`) VALUES
(1, 'Gujarat', 1),
(2, 'Rajasthan', 1),
(3, 'florida', 3);

-- --------------------------------------------------------

--
-- Table structure for table `suggestions_master`
--

CREATE TABLE `suggestions_master` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `suggestions` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `status` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suggestions_master`
--

INSERT INTO `suggestions_master` (`id`, `question_id`, `suggestions`, `created_by`, `doctor_id`, `status`, `created_at`, `updated_at`) VALUES
(9, 2, 'hjghjjhghghj hjhgj ghjgh', 20, 20, 'Active', '2020-10-01 11:08:31', '2020-10-01 11:08:31'),
(10, 3, 'asdfasf', 20, 20, 'Active', '2020-10-01 11:08:39', '2020-10-01 11:08:39'),
(11, 3, 'afs', 20, 20, 'Active', '2020-10-01 11:08:39', '2020-10-01 11:08:39'),
(12, 3, 'asfasf', 20, 20, 'Active', '2020-10-01 11:08:39', '2020-10-01 11:08:39'),
(13, 8, 'Symptoms: Chest pain, jaw pain, shoulder pain, nausea, shortness of breath.\r\n\r\nPrevention: Women can reduce their risk of heart disease by modifying lifestyle to include a well-balanced diet and exercise.', 4, 4, 'Active', '2020-10-06 21:33:29', '2020-10-06 21:33:29'),
(14, 8, 'Heart disease is the leading killer for both men and women. Women tend to be under-diagnosed to the point it’s too late to help them once the condition is discovered. Many studies also suggest that in women the symptoms may just not be chest pain. Symptoms like jaw pain, shoulder pain, nausea, or shortness of breath should also be looked at.', 4, 4, 'Active', '2020-10-06 21:33:29', '2020-10-06 21:33:29'),
(15, 7, 'Symptoms: A lump in or near a breast or in your arm, thick or firm tissue in or near your breast or under your arm, a change in size or shape of your breast.', 4, 4, 'Active', '2020-10-06 21:33:51', '2020-10-06 21:33:51'),
(16, 7, 'Prevention: Weight management. Eat lean protein, whole grains and choose vegetable oil over animal fat. Exercise for at least 30 minutes daily, drink little or no alcohol, don’t smoke. If you have recently given birth then breast-feed your baby for as long as possible. Get regular breast cancer screenings.', 4, 4, 'Active', '2020-10-06 21:33:51', '2020-10-06 21:33:51'),
(17, 6, 'Symptoms: Some of the common autoimmune diseases are rheumatoid arthritis - inflammation of joints and surrounding tissues. Systemic lupus erythematosus - affects skin, joints, kidneys, brain, and other organs. Multiple sclerosis - affects the brain and spinal cord. Celiac sprue disease - a reaction to gluten (found in wheat, rye, and barley) that causes damage to the lining of the small intestine.', 4, 4, 'Active', '2020-10-06 21:34:15', '2020-10-06 21:34:15'),
(18, 6, 'Prevention: Take immune-balancing nutrients and supplements, including vitamin D, essential fats (like EPA/DHA and GLA), and probiotics. Practice deep relaxation daily through yoga, meditation, or anything that reverses the stress response. Keep a strict check on your weight.', 4, 4, 'Active', '2020-10-06 21:34:15', '2020-10-06 21:34:15'),
(19, 14, 'Aenean semper erat at ipsum tincidunt aliquet. Curabitur nec eleifend mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas condimentum risus a sem ullamcorper, vel sagittis eros suscipit. Donec efficitur pellentesque ante. Donec suscipit commodo', 4, 4, 'Active', '2020-10-20 16:49:46', '2020-10-20 16:49:46'),
(20, 14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus nunc vel tellus efficitur tincidunt. Phasellus sem risus, ullamcorper a facilisis sit amet, auctor sit amet odio. Suspendisse pharetra risus ex, euismod luctus mauris sagittis et. Donec at nisl massa.', 4, 4, 'Active', '2020-10-20 16:49:46', '2020-10-20 16:49:46'),
(21, 14, 'Vivamus id dui at urna dictum sollicitudin. Nulla facilisi. Quisque finibus enim eget urna pellentesque luctus. Morbi rutrum sit amet elit', 4, 4, 'Active', '2020-10-20 16:49:46', '2020-10-20 16:49:46'),
(27, 11, 'Only if you have celiac disease, when gluten (a protein in grains) damages your small intestine. Experts no longer think gluten causes rashes,', 4, 4, 'Active', '2020-10-20 16:51:33', '2020-10-20 16:51:33'),
(28, 11, 'Morbi dignissim ligula libero, non aliquam augue cursus vel. Donec non lorem vel dolor pellentesque auctor. Donec blandit pellentesque porttitor', 4, 4, 'Active', '2020-10-20 16:51:33', '2020-10-20 16:51:33'),
(33, 10, 'It is good that you are concerned because many people who start eating a vegetarian diet simply eliminate the meat from their diet and compromise their protein needs', 4, 4, 'Active', '2020-12-08 14:49:01', '2020-12-08 14:49:01'),
(34, 10, 'Nunc sodales volutpat bibendum. Sed dui lectus, mollis a scelerisque quis, lobortis at purus. Aliquam a purus aliquet, malesuada ante vel, ', 4, 4, 'Active', '2020-12-08 14:49:01', '2020-12-08 14:49:01'),
(35, 10, 'કોરોના ગુજરાત LIVE: 19મા દિવસે કોરોનાના 1400થી ઓછા કેસ, રિક્વરી રેટ 91.56 પર પહોંચ્યો અને કોરોનાના કારણે 14...', 4, 4, 'Active', '2020-12-08 14:49:01', '2020-12-08 14:49:01'),
(36, 9, 'Sed ac nisi in mauris euismod commodo sit amet id odio. Aenean laoreet lectus non consectetur vehicula. Etiam vehicula tristique tincidunt. Nunc sodales dolor egestas justo feugiat vestibulum. ', 4, 4, 'Active', '2020-12-08 14:49:07', '2020-12-08 14:49:07'),
(37, 9, 'Praesent vel euismod tortor. Donec quis sem ex. Praesent vel congue mi, imperdiet bibendum felis. ', 4, 4, 'Active', '2020-12-08 14:49:07', '2020-12-08 14:49:07'),
(38, 9, 'કોરોના ગુજરાત LIVE: 19મા દિવસે કોરોનાના 1400થી ઓછા કેસ, રિક્વરી રેટ 91.56 પર પહોંચ્યો અને કોરોનાના કારણે 14...', 4, 4, 'Active', '2020-12-08 14:49:07', '2020-12-08 14:49:07'),
(39, 12, 'One should avoid taking iodine in this situation. If you have evidence of underactive thyroid and are symptomatic, the treatment of choice would be thyroid hormone replacement (T4 replacement).', 4, 4, 'Active', '2020-12-08 14:49:16', '2020-12-08 14:49:16'),
(40, 12, ' nulla egestas. Vestibulum sed lacinia metus, eu dictum dolor. Sed tortor odio, laoreet id suscipit id, bibendum a justo. Aenean congue felis at neque semper, ut tincidunt nunc congue.', 4, 4, 'Active', '2020-12-08 14:49:16', '2020-12-08 14:49:16'),
(41, 12, 'The typical life of hearing aids is usually about five to seven years. When you are first fitted with hearing aids, talk with your audiologist about choosing devices that will give you ‘room to grow’ in case your hearing', 4, 4, 'Active', '2020-12-08 14:49:16', '2020-12-08 14:49:16'),
(42, 12, 'કોરોના ગુજરાત LIVE: 19મા દિવસે કોરોનાના 1400થી ઓછા કેસ, રિક્વરી રેટ 91.56 પર પહોંચ્યો અને કોરોનાના કારણે 14...', 4, 4, 'Active', '2020-12-08 14:49:16', '2020-12-08 14:49:16'),
(43, 13, 'Vivamus id dui at urna dictum sollicitudin. Nulla facilisi. Quisque finibus enim eget urna pellentesque luctus. Morbi rutrum sit amet elit', 4, 4, 'Active', '2020-12-08 14:49:26', '2020-12-08 14:49:26'),
(44, 13, 'Answered by Stephanie Valente, DO. Dr. Valente is a breast surgeon at Cleveland Clinic. She is a board certified general surgeon with fellowship training in surgical breast oncology and serves as the Associate', 4, 4, 'Active', '2020-12-08 14:49:26', '2020-12-08 14:49:26'),
(45, 13, 'કોરોના ગુજરાત LIVE: 19મા દિવસે કોરોનાના 1400થી ઓછા કેસ, રિક્વરી રેટ 91.56 પર પહોંચ્યો અને કોરોનાના કારણે 14...', 4, 4, 'Active', '2020-12-08 14:49:26', '2020-12-08 14:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `table_master`
--

CREATE TABLE `table_master` (
  `id` int(11) NOT NULL,
  `row` int(11) NOT NULL,
  `table_column` int(11) NOT NULL,
  `lable_header` text NOT NULL,
  `lable_footer` text NOT NULL,
  `lable_row` text NOT NULL,
  `extra_label` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_master`
--

INSERT INTO `table_master` (`id`, `row`, `table_column`, `lable_header`, `lable_footer`, `lable_row`, `extra_label`, `created_by`, `doctor_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 4, '[\"Rt\",\"Lt\",\"Rt\",\"Lt\"]', '[\"Av\",\"Rv\",\"Av\",\"Rv\"]', '[\"-\"]', 'dsffsd', 4, 4, 'Active', '2020-10-06 21:37:10', '2020-10-06 21:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `profile_img` varchar(255) DEFAULT 'default.png',
  `mobile_no` varchar(50) NOT NULL,
  `mobile_verified_at` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `role`, `status`, `email`, `password`, `created_at`, `updated_at`, `profile_img`, `mobile_no`, `mobile_verified_at`, `email_verified_at`) VALUES
(4, 'Ranjeet  mali', 'Male', 'doctor', 'Active', 'ran@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-12-19 18:31:17', '2018-12-19 18:31:17', '2019-04-30_4_15565640485169474225cc74850ed82a.jpg', '9898989895', '2019-10-12 00:00:00', '2019-10-12 00:00:00'),
(5, 'Administrator', 'Male', 'admin', 'Active', 'admin@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-12-19 18:31:17', '2019-07-16 23:21:28', '2019-12-06_5_157562688432365dea28843a453.png', '9429420048', '2019-10-12 00:00:00', '2019-10-09 00:00:00'),
(7, 'MAVAJAT HOSPITAL', 'Male', 'hospital', 'Active', 'mavjat@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2018-12-19 18:31:17', '2019-11-02 15:55:34', '2019-04-30_7_155656576616360080825cc74f064bab5.JPG', '8989976540', NULL, NULL),
(14, 'sanjay patel', 'Male', 'patient', 'Active', 'sanjay@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-01-07 18:36:17', '2019-01-07 18:36:17', 'default.png', '7474737473', NULL, NULL),
(15, 'kalpesh prajapati', 'Male', 'receptionist', 'Active', 'kal@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-01-10 00:00:00', '2019-01-10 00:00:00', 'default.png', '8989976546', NULL, NULL),
(17, 'Vivekbhai Soni', 'Male', 'patient', 'Active', 'vivek@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-01-16 18:43:10', '2019-01-16 18:43:10', '2019-04-30_17_155656451811020230625cc74a264987f.jpg', '9898209402', NULL, NULL),
(18, 'Nisha Patni', 'Female', 'receptionist', 'Active', 'nisha@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-01-20 15:49:42', '2019-01-20 15:49:42', '2019-04-30_18_155656428714874690525cc7493fd5495.jpg', '9898209403', NULL, NULL),
(19, 'Bharat Rana', 'Male', 'doctor', 'Block', 'bharat@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-01-24 19:47:43', '2019-01-24 19:47:43', 'default.png', '9898989894', NULL, NULL),
(20, 'Jignesh Parmar', 'Male', 'doctor', 'Active', 'jignesh@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-04-02 00:17:44', '2019-04-02 00:17:44', 'default.png', '8574857485', NULL, NULL),
(21, 'Manmohan', 'Male', 'receptionist', 'Active', 'manmohan@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-04-02 00:41:00', '2019-04-02 00:41:00', 'default.png', '8585748574', '2020-10-19 00:00:00', '2020-10-19 00:00:00'),
(23, 'nishant nayak', 'Male', 'doctor', 'Active', 'nishant@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-05-30 23:41:26', '2019-05-30 23:41:26', 'default.png', '7878787871', NULL, NULL),
(24, 'KD HOSPITAL USER', 'Male', 'hospital', 'Block', 'kd@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-08-01 22:49:35', '2019-08-11 20:12:57', '2019-08-01_24_15646800684184432175d431f84e1d92.jpg', '9429420044', NULL, NULL),
(25, 'shiv', 'Male', 'doctor', 'Block', 'shiv@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-08-01 23:04:43', '2019-08-01 23:04:43', 'default.png', '9429244920', NULL, NULL),
(26, 'dhruv', 'Male', 'patient', 'Active', 'dhv@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-08-04 23:34:44', '2019-08-04 23:34:44', 'default.png', '9429455215', NULL, NULL),
(27, 'Bhavin Mishara', 'Male', 'doctor', 'Block', 'bhavin@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-08-15 14:45:16', '2019-08-15 14:45:16', 'default.png', '784512356', NULL, NULL),
(28, 'priti mishra', 'Male', 'receptionist', 'Active', 'priti@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-08-15 16:58:11', '2019-08-15 16:58:11', 'default.png', '9429420049', NULL, NULL),
(29, 'snehal vyas', 'Male', 'doctor', 'Pending', 'vyas339@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-08-28 00:07:21', '2019-08-28 00:07:21', 'default.png', '9033270308', NULL, NULL),
(34, 'Mohan Janis', 'Male', 'assistant', 'Active', 'mohan@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-10-01 23:54:54', '2019-10-01 23:54:54', 'default.png', '9898525241', NULL, NULL),
(35, 'Rony', 'Male', 'patient', 'Active', 'ronm@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-10-13 00:32:39', '2019-10-13 00:32:39', 'default.png', '9427168693', '2019-10-13 13:33:00', NULL),
(36, 'Rajesh@gmail.com', 'Male', 'doctor', 'Active', 'rajesh@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-10-14 18:30:18', '2019-10-14 18:30:18', 'default.png', '9724657130', '2019-10-14 18:31:08', NULL),
(37, 'dipak patel', 'Male', 'assistant', 'Active', 'dipak@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-10-14 18:35:03', '2019-10-14 18:35:03', 'default.png', '999852312', NULL, NULL),
(38, 'ankur vyas', 'Male', 'receptionist', 'Active', 'ankur123@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-10-14 18:47:08', '2019-10-14 18:47:08', 'default.png', '7878786123', NULL, NULL),
(39, 'shreeji hospital', 'Male', 'hospital', 'Block', 'shreeji@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-10-29 23:12:38', '2019-10-29 23:14:57', 'default.png', '9979025250', NULL, NULL),
(43, 'kiran patel', 'Male', 'receptionist', 'Active', 'kiran@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-02 22:18:03', '2019-11-02 22:18:03', 'default.png', '9999912345', NULL, NULL),
(44, 'komal patel', 'Female', 'patient', 'Active', 'komal@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-02 23:37:15', '2019-11-02 23:37:15', 'default.png', '8849522635', NULL, NULL),
(46, 'Aditya Joshi', 'Male', 'patient', 'Active', 'ksv1619aditya@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-03 14:05:41', '2019-11-03 14:05:41', 'default.png', '9408824463', '2019-11-03 14:06:14', NULL),
(47, 'Rakesh Sharma ', 'Male', 'doctor', 'Active', 'aditya14081998@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-03 14:09:02', '2019-11-03 14:09:02', '2019-12-30_47_1577730530166805e0a41e26e11c.png', '9106096745', '2019-11-03 14:09:38', NULL),
(48, 'vihan desai', 'Male', 'receptionist', 'Active', 'vihan@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-03 17:59:05', '2019-11-03 17:59:05', 'default.png', '1234567811', NULL, NULL),
(49, 'ram desai', 'Male', 'assistant', 'Active', 'ram@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-03 17:59:58', '2019-11-03 17:59:58', '2019-12-18_49_1576649519105655df9c32f8f4fd.png', '2121212121', NULL, NULL),
(50, 'raj mehta', 'Male', 'patient', 'Active', 'raj@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-03 18:19:46', '2019-11-03 18:19:46', 'default.png', '9426420163', NULL, NULL),
(51, 'Ankit Thakar', 'Male', 'doctor', 'Pending', 'rutvikpvyas@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '2019-11-03 21:59:29', '2019-11-03 21:59:29', 'default.png', '9913032424', NULL, NULL),
(52, 'LIONS CLUB', 'Male', 'hospital', 'Active', 'samrpan@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-03 23:01:37', '2020-08-14 16:35:48', '2019-11-03_52_1572802631102745dbf1047effa8.png', '211212211', NULL, NULL),
(53, 'smit joshi', 'Male', 'doctor', 'Block', 'smitjoshi1974@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-03 23:14:36', '2019-11-03 23:14:36', 'default.png', '8469531080', NULL, NULL),
(54, 'palak joshi ', 'Male', 'doctor', 'Block', 'palak@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-03 23:17:49', '2019-11-03 23:17:49', '2019-11-05_54_1572943526230255dc136a68aeb9.png', '4321234123', NULL, NULL),
(55, 'joshi palak', 'Female', 'doctor', 'Block', 'palakjoshi@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-04 16:39:23', '2019-11-04 16:39:23', 'default.png', '9574017375', '2019-11-04 22:36:13', NULL),
(56, 'Cnjoshi', 'Female', 'patient', 'Active', 'joshichandrika52@gmail.com', '3ec95876c5ca1d714dbef9f0ac9e0f4bee03883e6418ac579613fcb49f4a534e', '2019-11-04 19:26:19', '2019-11-04 19:26:19', 'default.png', '9265145372', '2019-11-04 19:27:02', NULL),
(57, 'sabir', 'Male', 'patient', 'Active', 'sabir@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-17 11:48:55', '2019-11-17 11:48:55', 'default.png', '9898220039', '2019-11-17 11:50:07', NULL),
(58, 'afifa', 'Male', 'receptionist', 'Active', 'afifa@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-17 12:09:47', '2019-11-17 12:09:47', 'default.png', '9173915656', NULL, NULL),
(59, 'jayeda', 'Male', 'patient', 'Active', 'jayeda@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-17 12:14:49', '2019-11-17 12:14:49', 'default.png', '3203292806', NULL, NULL),
(60, 'test1', 'Male', 'patient', 'Active', 'test1@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-18 22:07:18', '2019-11-18 22:07:18', 'default.png', '9466569649', NULL, NULL),
(61, 'harsh varma', 'Male', 'patient', 'Active', 'harsh@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-19 10:47:55', '2019-11-19 10:47:55', 'default.png', '6510781311', NULL, NULL),
(62, 'mehul prajapati', 'Male', 'patient', 'Active', 'mehul@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-19 10:51:58', '2019-11-19 10:51:58', 'default.png', '5227374972', NULL, NULL),
(63, 'new for test', 'Male', 'patient', 'Active', 'newtest@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-19 12:42:04', '2019-11-19 12:42:04', 'default.png', '2750471465', NULL, NULL),
(64, 'new reg 1', 'Male', 'patient', 'Active', 'newreg1@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-19 12:52:24', '2019-11-19 12:52:24', 'default.png', '5279502140', NULL, NULL),
(65, 'new user', 'Male', 'patient', 'Active', 'newuser@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-19 13:07:06', '2019-11-19 13:07:06', 'default.png', '1420042036', NULL, NULL),
(66, 'xyznew', 'Male', 'patient', 'Active', 'xyz@gamail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-19 13:18:07', '2019-11-19 13:18:07', 'default.png', '3813559267', NULL, NULL),
(67, 'abc1234', 'Male', 'patient', 'Active', 'abc@gg.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-19 13:26:57', '2019-11-19 13:26:57', 'default.png', '5799291905', NULL, NULL),
(68, 'hello2', 'Male', 'patient', 'Active', 'hello@sbnjdbf.dfbjd', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-19 16:51:01', '2019-11-19 16:51:01', 'default.png', '3622942897', NULL, NULL),
(69, 'hello5', 'Male', 'patient', 'Active', 'hello@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-19 16:54:05', '2019-11-19 16:54:05', 'default.png', '1968452823', NULL, NULL),
(70, 'newtset', 'Male', 'patient', 'Active', '4071697100@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-21 14:39:57', '2019-11-21 14:39:57', 'default.png', '4071697100', NULL, NULL),
(71, 'dfdf', 'Male', 'patient', 'Active', '9047775738@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-21 15:30:02', '2019-11-21 15:30:02', 'default.png', '9047775738', NULL, NULL),
(72, 'ram desai', 'Male', 'patient', 'Active', '6728395772@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-22 23:34:06', '2019-11-22 23:34:06', 'default.png', '6728395772', NULL, NULL),
(73, 'sxsd', 'Male', 'patient', 'Active', '4389527392@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-22 23:39:14', '2019-11-22 23:39:14', 'default.png', '4389527392', NULL, NULL),
(74, 'mahesh', 'Male', 'patient', 'Active', 'mahesh@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-26 13:44:45', '2019-11-26 13:44:45', 'default.png', '7624045032', '2019-11-26 13:46:29', NULL),
(75, 'bhavesh', 'Male', 'patient', 'Active', '3396317319@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-26 16:04:46', '2019-11-26 16:04:46', 'default.png', '3396317319', NULL, NULL),
(76, 'rahul', 'Male', 'patient', 'Active', '7518729501@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-26 16:06:19', '2019-11-26 16:06:19', 'default.png', '7518729501', NULL, NULL),
(77, 'Bhavin', 'Male', 'doctor', 'Block', 'mitupadhyay61@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-27 12:22:22', '2019-11-27 12:22:22', 'default.png', '9016269846', '2019-11-27 12:25:16', NULL),
(78, 'DAS BHAI', 'Male', 'assistant', 'Active', 'das@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-27 12:26:55', '2019-11-27 12:26:55', 'default.png', '1234567123', NULL, NULL),
(79, 'RINA', 'Male', 'receptionist', 'Active', 'rina@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-27 12:30:33', '2019-11-27 12:30:33', 'default.png', '2131234567', NULL, NULL),
(80, 'ravin', 'Male', 'patient', 'Active', '3142285736@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-27 23:26:46', '2019-11-27 23:26:46', 'default.png', '3142285736', NULL, NULL),
(81, 'SAJ', 'Male', 'patient', 'Active', '3084981197@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-27 23:36:22', '2019-11-27 23:36:22', 'default.png', '3084981197', NULL, NULL),
(82, 'DAJ', 'Male', 'patient', 'Active', '8575544938@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-27 23:37:28', '2019-11-27 23:37:28', 'default.png', '8575544938', NULL, NULL),
(83, 'smaira', 'Male', 'patient', 'Active', '3880210864@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-28 08:47:59', '2019-11-28 08:47:59', 'default.png', '3880210864', NULL, NULL),
(84, 'samira', 'Male', 'patient', 'Active', '1797204041@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-28 08:48:39', '2019-11-28 08:48:39', 'default.png', '1797204041', NULL, NULL),
(85, 'ssg', 'Male', 'patient', 'Active', '8431214028@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-28 08:57:02', '2019-11-28 08:57:02', 'default.png', '8431214028', NULL, NULL),
(86, '7388856393', 'Male', 'patient', 'Active', '7388856393@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-28 09:00:04', '2019-11-28 09:00:04', 'default.png', '7388856393', NULL, NULL),
(87, 'final', 'Male', 'patient', 'Active', '4828048990@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-28 09:01:42', '2019-11-28 09:01:42', 'default.png', '4828048990', NULL, NULL),
(88, 'mytest', 'Male', 'patient', 'Active', '8873976271@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-28 10:52:30', '2019-11-28 10:52:30', 'default.png', '8873976271', NULL, NULL),
(89, 'trst', 'Male', 'patient', 'Active', '8065579833@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-28 10:53:42', '2019-11-28 10:53:42', 'default.png', '1111122222', NULL, NULL),
(90, 'samirq', 'Male', 'patient', 'Active', '5380245762@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-28 10:54:37', '2019-11-28 10:54:37', 'default.png', '2222211111', NULL, NULL),
(91, 'jay joshi', 'Male', 'patient', 'Active', '2360708066@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-28 11:07:28', '2019-11-28 11:07:28', 'default.png', '6352248432', NULL, NULL),
(92, 'gys', 'Male', 'patient', 'Active', '7389157496@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-28 11:08:35', '2019-11-28 11:08:35', 'default.png', '7389157496', NULL, NULL),
(93, 'ghsg', 'Male', 'patient', 'Active', '1692229201@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-29 15:10:50', '2019-11-29 15:10:50', 'default.png', '1692229201', NULL, NULL),
(94, 'SHAHID', 'Male', 'patient', 'Active', '6622384820@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-11-29 15:54:15', '2019-11-29 15:54:15', 'default.png', '6622384820', NULL, NULL),
(95, 'ram lal', 'Male', 'doctor', 'Block', 'ramlal@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-05 23:17:08', '2019-12-05 23:17:08', 'default.png', '9421407351', NULL, NULL),
(96, 'rahul', 'Male', 'patient', 'Active', '1577506890@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-09 11:19:19', '2019-12-09 11:19:19', 'default.png', '1577506890', NULL, NULL),
(97, 'Arya joshi', 'Male', 'patient', 'Pending', 'aryacjoshi@gmail.com', 'b81dbd4c8e299ddbf8a5c105e78f98d5ce29a9375bcff5e7c17ef1e4708f23f0', '2019-12-09 13:56:11', '2019-12-09 13:56:11', 'default.png', '9328192737', NULL, NULL),
(98, 'snehal', 'Male', 'patient', 'Active', '3254925267@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-11 21:51:36', '2019-12-11 21:51:36', 'default.png', '3254925267', NULL, NULL),
(99, 'dnfdnfodf', 'Male', 'patient', 'Active', '7026431917@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-11 22:21:38', '2019-12-11 22:21:38', 'default.png', '7026431917', NULL, NULL),
(100, 'RAJESHKUMAR BABABHAI SUTHAR', 'Male', 'patient', 'Active', 'rajeshbsuthar2108@gmail.com', 'd87e4e0e8ceb6a4fe784357cfb755a510d22a882747a001a37050147bf96fac3', '2019-12-12 09:46:52', '2019-12-12 09:46:52', 'default.png', '7990513299', '2019-12-12 09:47:53', NULL),
(101, 'rahul', 'Male', 'patient', 'Active', '8856230273@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-12 10:07:43', '2019-12-12 10:07:43', 'default.png', '8856230273', NULL, NULL),
(102, 'shyam', 'Male', 'patient', 'Active', '8427180294@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-12 10:08:37', '2019-12-12 10:08:37', 'default.png', '8427180294', NULL, NULL),
(103, 'ram', 'Male', 'patient', 'Active', '2936598995@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-12 10:09:11', '2019-12-12 10:09:11', 'default.png', '2936598995', NULL, NULL),
(104, 'hema', 'Male', 'patient', 'Active', '3729936371@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-12 10:09:23', '2019-12-12 10:09:23', 'default.png', '3729936371', NULL, NULL),
(105, 'vihan', 'Male', 'patient', 'Active', '2879788602@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-12 10:10:42', '2019-12-12 10:10:42', 'default.png', '2879788602', NULL, NULL),
(106, 'Vicky Maurya', 'Male', 'patient', 'Active', 'vicky5540content@gmail.com', '4f2bb3b8ef4b161ffdd2e7b9df71e9b65b70eb8e313f3df2d9def86c1ef66e13', '2019-12-12 16:44:40', '2019-12-12 16:44:40', 'default.png', '9717975860', '2019-12-12 16:46:03', NULL),
(107, 'arman', 'Male', 'patient', 'Active', '6420322616@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-13 10:23:50', '2019-12-13 10:23:50', 'default.png', '6420322616', NULL, NULL),
(108, 'vihan', 'Male', 'patient', 'Active', '2419290495@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-13 10:25:19', '2019-12-13 10:25:19', 'default.png', '2419290495', NULL, NULL),
(109, 'ramesh', 'Male', 'patient', 'Active', '4138858576@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-13 10:26:41', '2019-12-13 10:26:41', 'default.png', '4138858576', NULL, NULL),
(110, 'sadbhav hospital', 'male', 'hospital', 'Active', 'thakorganpat0023@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-13 12:36:53', '2019-12-17 16:47:32', 'default.png', '9512338302', NULL, NULL),
(111, 'Rajesh', 'Male', 'doctor', 'Block', 'rajeshthakor2434@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-13 13:19:53', '2019-12-13 13:19:53', 'default.png', '9599', NULL, NULL),
(112, 'Joshi Anil P', 'Male', 'patient', 'Active', 'aniljoshi171196@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-13 13:30:46', '2019-12-13 13:30:46', 'default.png', '9601665164', '2019-12-13 13:35:56', NULL),
(113, 'jatiya paresh', 'Male', 'doctor', 'Block', 'pareshkhorwal96@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-13 14:36:53', '2019-12-13 14:36:53', 'default.png', '9687807505', '2019-12-13 14:38:30', NULL),
(114, 'paresh', 'Male', 'receptionist', 'Active', 'priyarathod2983@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-13 14:44:46', '2019-12-13 14:44:46', 'default.png', '9664882740', NULL, NULL),
(115, 'kamlesh', 'Male', 'assistant', 'Active', 'kamlesh12@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-13 15:00:54', '2019-12-13 15:00:54', 'default.png', '7624061775', NULL, NULL),
(116, 'Soravada Rajesh', 'Male', 'receptionist', 'Active', 'rajesh12@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-13 15:17:57', '2019-12-13 15:17:57', 'default.png', '9408538905', NULL, NULL),
(117, 'Test', 'Male', 'patient', 'Pending', 'test@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-13 18:22:35', '2019-12-13 18:22:35', 'default.png', '9999999999', NULL, NULL),
(118, 'Meet Patel', 'Male', 'patient', 'Active', 'zedxin0@gmail.com', '95ce789c5c9d18490972709838ca3a9719094bca3ac16332cfec0652b0236141', '2019-12-16 13:31:06', '2019-12-16 13:31:06', 'default.png', '6354996232', '2019-12-16 13:32:09', NULL),
(119, 'meet', 'Male', 'patient', 'Active', '4996846802@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-16 13:59:28', '2019-12-16 13:59:28', 'default.png', '9104494999', NULL, NULL),
(120, 'Anil', 'Male', 'assistant', 'Active', 'rajesh13@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-16 15:15:39', '2019-12-16 15:15:39', 'default.png', '9428258940', NULL, NULL),
(121, '123', 'Male', 'doctor', 'Pending', '123@123.com', '6ca13d52ca70c883e0f0bb101e425a89e8624de51db2d2392593af6a84118090', '2019-12-16 15:21:17', '2019-12-16 15:21:17', 'default.png', '123', NULL, NULL),
(122, 'SAGAR', 'Male', 'patient', 'Active', '6345396426@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 10:39:02', '2019-12-18 10:39:02', 'default.png', '6345396426', NULL, NULL),
(123, 'Jay', 'Male', 'patient', 'Active', '7594005987@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 10:42:12', '2019-12-18 10:42:12', 'default.png', '7594005987', NULL, NULL),
(124, 'Bro', 'Male', 'patient', 'Active', '2954700804@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 10:42:24', '2019-12-18 10:42:24', 'default.png', '2954700804', NULL, NULL),
(125, 'Isro', 'Male', 'patient', 'Active', '4278282138@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 10:42:33', '2019-12-18 10:42:33', 'default.png', '4278282138', NULL, NULL),
(126, 'Jimbo', 'Male', 'patient', 'Active', '1319638614@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 10:42:50', '2019-12-18 10:42:50', 'default.png', '1319638614', NULL, NULL),
(127, 'Hobbs', 'Male', 'patient', 'Active', '1869590597@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 10:45:48', '2019-12-18 10:45:48', 'default.png', '1869590597', NULL, NULL),
(128, 'Hobbs', 'Male', 'patient', 'Active', '5872935636@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 10:46:45', '2019-12-18 10:46:45', 'default.png', '5872935636', NULL, NULL),
(129, 'Bob', 'Male', 'patient', 'Active', '9058849313@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 11:04:43', '2019-12-18 11:04:43', 'default.png', '9058849313', NULL, NULL),
(130, 'Jimbo', 'Male', 'patient', 'Active', '9006085503@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 11:05:46', '2019-12-18 11:05:46', 'default.png', '9006085503', NULL, NULL),
(131, 'Katy Perry', 'Male', 'patient', 'Active', '6680634366@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 11:06:44', '2019-12-18 11:06:44', 'default.png', '6680634366', NULL, NULL),
(132, 'Di Caprio', 'Male', 'patient', 'Active', '7733703074@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 11:07:28', '2019-12-18 11:07:28', 'default.png', '7733703074', NULL, NULL),
(133, 'Mojito', 'Male', 'patient', 'Active', '4390920960@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 11:08:39', '2019-12-18 11:08:39', 'default.png', '4390920960', NULL, NULL),
(134, 'Brad Pitt', 'Male', 'patient', 'Active', '8229126904@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 11:09:27', '2019-12-18 11:09:27', 'default.png', '8229126904', NULL, NULL),
(135, 'David Hullman', 'Male', 'doctor', 'Active', 'davidh@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2019-12-18 12:45:09', '2019-12-18 12:45:09', 'default.png', '3460', NULL, NULL),
(136, 'Rajesh chauhan', 'Male', 'doctor', 'Block', 'rajeshchauhan@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-02 23:49:03', '2020-01-02 23:49:03', '2020-01-02_136_1577989726102175e0e365e5ea83.png', '3455', NULL, NULL),
(137, 'mahesh bhai', 'Male', 'patient', 'Active', 'aditiconsultancy2@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-03 09:34:17', '2020-01-03 09:34:17', 'default.png', '7575008900', NULL, NULL),
(138, 'dipak darji', 'Male', 'patient', 'Pending', 'dipak123@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-03 11:50:51', '2020-01-03 11:50:51', 'default.png', '8849469980', NULL, NULL),
(139, 'Bharat Patel', 'Male', 'patient', 'Active', 'bharatpatel@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-03 11:57:27', '2020-01-03 11:57:27', 'default.png', '9429420030', NULL, NULL),
(140, 'Ethan James', 'Male', 'patient', 'Active', '4352365057@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-03 14:23:56', '2020-01-03 14:23:56', 'default.png', '4352365057', NULL, NULL),
(141, 'Jimmy Kalimba', 'Male', 'patient', 'Active', '5387173245@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-03 14:25:18', '2020-01-03 14:25:18', 'default.png', '5387173245', NULL, NULL),
(142, 'KM', 'Male', 'patient', 'Active', '5337623036@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-03 14:33:57', '2020-01-03 14:33:57', 'default.png', '5337623036', NULL, NULL),
(143, 'Rick', 'Male', 'patient', 'Active', '2871270285@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-03 14:36:09', '2020-01-03 14:36:09', 'default.png', '2871270285', NULL, NULL),
(144, 'Timothy Andrew', 'Male', 'patient', 'Active', '9892894093@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-03 14:37:54', '2020-01-03 14:37:54', 'default.png', '9892894093', NULL, NULL),
(145, 'Valek Kalashnikov', 'Male', 'patient', 'Active', '2532587202@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-03 14:39:52', '2020-01-03 14:39:52', 'default.png', '2532587202', NULL, NULL),
(146, 'Balmond Dota', 'Male', 'patient', 'Active', '9553162047@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-03 14:46:48', '2020-01-03 14:46:48', 'default.png', '9553162047', NULL, NULL),
(147, 'Jake Pauls', 'Male', 'patient', 'Active', '6043141391@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-03 14:58:29', '2020-01-03 14:58:29', 'default.png', '6043141391', NULL, NULL),
(148, 'Ricky Jointing', 'Male', 'patient', 'Active', '7044009583@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-01-03 15:00:28', '2020-01-03 15:00:28', 'default.png', '7044009583', NULL, NULL),
(149, 'sunny', 'Male', 'patient', 'Active', 'mr.sunnysharma85@gmail.com', '505df155af13fc957e3a4389866640f6a70824d7abdde4b9e96d36a71fdddb45', '2020-01-11 13:58:36', '2020-01-11 13:58:36', 'default.png', '7990201904', '2020-01-11 13:59:31', NULL),
(150, 'ABC', 'Male', 'doctor', 'Pending', 'abc@gmail.com', '48ddb93f0b30c475423fe177832912c5bcdce3cc72872f8051627967ef278e08', '2020-02-04 13:41:32', '2020-02-04 13:41:32', 'default.png', '9874563210', NULL, NULL),
(151, 'xyz', 'Male', 'doctor', 'Block', 'xyz@gmail.com', '32e19a491662fd86de7d3806b1199b76f0ee44e928d3475f05b0c8a59912c097', '2020-02-04 13:51:57', '2020-02-04 13:51:57', 'default.png', '8200624262', '2020-02-04 13:53:22', NULL),
(152, 'ABCD', 'Male', 'receptionist', 'Active', 'abcd@gmail.com', 'bef57ec7f53a6d40beb640a780a639c83bc29ac8a9816f1fc6c5c6dcd93c4721', '2020-02-04 13:56:54', '2020-02-04 13:56:54', 'default.png', '9876543210', NULL, NULL),
(153, 'pqrs', 'Male', 'assistant', 'Active', 'pqrs@gmail.com', 'bef57ec7f53a6d40beb640a780a639c83bc29ac8a9816f1fc6c5c6dcd93c4721', '2020-02-04 13:58:30', '2020-02-04 13:58:30', 'default.png', '9876543211', NULL, NULL),
(154, 'VIHAN', 'Male', 'patient', 'Active', '1482606455@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-04 14:53:44', '2020-02-04 14:53:44', 'default.png', '1482606455', NULL, NULL),
(155, 'FARS', 'Male', 'patient', 'Active', '8618653431@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-04 14:54:55', '2020-02-04 14:54:55', 'default.png', '8618653431', NULL, NULL),
(156, 'hardik', 'Male', 'patient', 'Active', 'hardik@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-10 14:47:01', '2020-02-10 14:47:01', 'default.png', '1841601294', NULL, NULL),
(157, 'darshan', 'Male', 'patient', 'Active', 'darshan@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-10 14:54:52', '2020-02-10 14:54:52', 'default.png', '4563693390', NULL, NULL),
(158, 'mohit', 'Male', 'patient', 'Active', 'mohit@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-10 14:56:09', '2020-02-10 14:56:09', 'default.png', '1436093699', NULL, NULL),
(159, 'rohit', 'Male', 'patient', 'Active', 'rohit@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-10 14:58:34', '2020-02-10 14:58:34', 'default.png', '4295544625', NULL, NULL),
(160, 'saumitnew', 'Male', 'patient', 'Active', 'saumitnew@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-10 15:02:17', '2020-02-10 15:02:17', 'default.png', '4322160813', NULL, NULL),
(161, 'jalotra', 'Male', 'patient', 'Active', 'jalotra@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-10 15:03:42', '2020-02-10 15:03:42', 'default.png', '3965270331', NULL, NULL),
(162, 'smarpan1', 'Male', 'patient', 'Active', 'samrpan1@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-10 15:05:38', '2020-02-10 15:05:38', 'default.png', '8445418678', NULL, NULL),
(163, 'smarpan2', 'Male', 'patient', 'Active', 'smarpan2@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-10 15:07:11', '2020-02-10 15:07:11', 'default.png', '8363242102', NULL, NULL),
(164, 'smarpan3', 'Male', 'patient', 'Active', 'samarpan3@gmil.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-10 15:15:28', '2020-02-10 15:15:28', 'default.png', '9517230877', NULL, NULL),
(165, 'sagar', 'Male', 'patient', 'Pending', 'sagar@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-11 15:15:58', '2020-02-11 15:15:58', 'default.png', '1234567890', NULL, NULL),
(166, 'sagar', 'Male', 'patient', 'Active', 'ganpat@gmail.com', '51be712a0af3d740f4972d8581c6f8261c6e031d9daf494b73e209df0ae660ee', '2020-02-11 15:17:42', '2020-02-11 15:17:42', 'default.png', '8980617008', '2020-02-11 15:19:16', NULL),
(167, 'Priyank', 'Male', 'patient', 'Pending', 'davepriyank2610@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-12 21:55:58', '2020-02-12 21:55:58', 'default.png', '8160643306', NULL, NULL),
(168, 'arhul', 'Male', 'patient', 'Active', 'arhul@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-18 12:26:01', '2020-02-18 12:26:01', 'default.png', '2894429964', NULL, NULL),
(169, 'ramesh', 'Male', 'patient', 'Active', 'ramesh123@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-18 12:42:15', '2020-02-18 12:42:15', 'default.png', '6303289311', NULL, NULL),
(170, 'RAHUL', 'Male', 'patient', 'Active', 'rahul123@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-02-18 13:10:09', '2020-02-18 13:10:09', 'default.png', '7977798012', NULL, NULL),
(171, 'meet', 'Male', 'patient', 'Active', '3536583808@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-03-03 17:24:46', '2020-03-03 17:24:46', 'default.png', '3536583808', NULL, NULL),
(172, 'meet', 'Male', 'patient', 'Active', '9282158778@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-03-03 17:32:56', '2020-03-03 17:32:56', 'default.png', '9282158778', NULL, NULL),
(173, 'sanjeev', 'Male', 'patient', 'Active', '1297955151@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-03-22 12:55:15', '2020-03-22 12:55:15', 'default.png', '1297955151', NULL, NULL),
(174, 'RQW', 'Male', 'patient', 'Active', '2592847060@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-03-22 12:57:00', '2020-03-22 12:57:00', 'default.png', '2592847060', NULL, NULL),
(175, 'RBQ', 'Male', 'patient', 'Active', '2298261830@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-03-22 12:57:31', '2020-03-22 12:57:31', 'default.png', '2298261830', NULL, NULL),
(176, 'Harshil jani', 'Male', 'patient', 'Active', '6532618963@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-05-15 14:22:01', '2020-05-15 14:22:01', 'default.png', '6532618963', NULL, NULL),
(177, 'Rahul sudhaniya', 'Male', 'patient', 'Active', '8707137356@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-05-15 14:23:10', '2020-05-15 14:23:10', 'default.png', '8707137356', NULL, NULL),
(178, 'Samir', 'Male', 'patient', 'Active', '4163020722@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-05-15 14:25:21', '2020-05-15 14:25:21', 'default.png', '4163020722', NULL, NULL),
(179, 'Shushant', 'Male', 'patient', 'Active', '5535420823@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-05-15 14:26:21', '2020-05-15 14:26:21', 'default.png', '5535420823', NULL, NULL),
(180, 'ARVIND SINGH', 'Male', 'patient', 'Active', 'satishraj3289@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-07 12:58:19', '2020-06-07 12:58:19', 'default.png', '9725407180', NULL, NULL),
(181, 'satish', 'Male', 'patient', 'Active', '6823061729@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-07 12:59:15', '2020-06-07 12:59:15', 'default.png', '8200540154', NULL, NULL),
(182, 'satish', 'Male', 'patient', 'Active', '4351580398@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-07 13:01:56', '2020-06-07 13:01:56', 'default.png', '4351580398', NULL, NULL),
(183, 'Samir', 'Male', 'patient', 'Active', '8603944184@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-07 13:06:21', '2020-06-07 13:06:21', 'default.png', '8603944184', NULL, NULL),
(184, 'meet', 'Male', 'patient', 'Active', '9893047280@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-07 13:07:09', '2020-06-07 13:07:09', 'default.png', '9893047280', NULL, NULL),
(185, 'Karl Rock', 'Male', 'doctor', 'Pending', 'karl@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-09 00:21:14', '2020-06-09 00:21:14', 'default.png', '1111123451', NULL, NULL),
(186, 'rahul sharma', 'Male', 'patient', 'Active', '4487370013@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-09 00:26:05', '2020-06-09 00:26:05', 'default.png', '4487370013', NULL, NULL),
(187, 'ramesh', 'Male', 'patient', 'Active', '2782125419@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-09 00:26:56', '2020-06-09 00:26:56', 'default.png', '2782125419', NULL, NULL),
(188, 'sammy', 'Male', 'patient', 'Active', '9624567596@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-09 00:27:53', '2020-06-09 00:27:53', 'default.png', '9624567596', NULL, NULL),
(189, 'asif', 'Male', 'patient', 'Active', '4911348895@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-09 00:28:36', '2020-06-09 00:28:36', 'default.png', '4911348895', NULL, NULL),
(190, 'samir', 'Male', 'patient', 'Active', '7767926600@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-09 00:29:15', '2020-06-09 00:29:15', 'default.png', '7767926600', NULL, NULL),
(191, 'rammy', 'Male', 'patient', 'Active', '6026915580@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-09 00:30:03', '2020-06-09 00:30:03', 'default.png', '6026915580', NULL, NULL),
(192, 'farukh', 'Male', 'patient', 'Active', '8923945065@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-09 00:30:48', '2020-06-09 00:30:48', 'default.png', '8923945065', NULL, NULL),
(193, 'ramesh pathani', 'Male', 'patient', 'Active', '9888014738@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-09 00:31:40', '2020-06-09 00:31:40', 'default.png', '9888014738', NULL, NULL),
(194, 'Ramesh', 'Male', 'assistant', 'Active', 'rame@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-10 21:31:17', '2020-06-10 21:31:17', 'default.png', '2123432123', NULL, NULL),
(195, 'satish', 'Male', 'patient', 'Active', '6833483352@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-14 18:51:02', '2020-06-14 18:51:02', 'default.png', '6833483352', NULL, NULL),
(196, 'Rajesh chauhan', 'Male', 'patient', 'Active', '9696000237@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-14 18:51:52', '2020-06-14 18:51:52', 'default.png', '9696000237', NULL, NULL),
(197, 'Rahul', 'Male', 'patient', 'Active', '5682405390@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 08:42:08', '2020-06-15 08:42:08', 'default.png', '5682405390', NULL, NULL),
(198, 'rahul singh', 'Male', 'patient', 'Active', '5274269309@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 10:08:50', '2020-06-15 10:08:50', 'default.png', '5274269309', NULL, NULL),
(199, 'Arjun', 'Male', 'patient', 'Active', '1596795583@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 10:10:02', '2020-06-15 10:10:02', 'default.png', '1596795583', NULL, NULL),
(200, 'Rammy', 'Male', 'patient', 'Active', '2474112892@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 10:11:43', '2020-06-15 10:11:43', 'default.png', '2474112892', NULL, NULL),
(201, 'Rammy', 'Male', 'patient', 'Active', '1532329488@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 10:32:12', '2020-06-15 10:32:12', 'default.png', '1532329488', NULL, NULL),
(202, 'Nishant', 'Male', 'patient', 'Active', '3008432264@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 10:32:59', '2020-06-15 10:32:59', 'default.png', '3008432264', NULL, NULL),
(203, 'Raj', 'Male', 'patient', 'Active', '3775043880@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 10:33:46', '2020-06-15 10:33:46', 'default.png', '3775043880', NULL, NULL),
(204, 'ALTAF', 'Male', 'patient', 'Active', '7716520694@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 11:43:14', '2020-06-15 11:43:14', 'default.png', '7716520694', NULL, NULL),
(205, 'SAMEERA', 'Male', 'patient', 'Active', '1501704109@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 11:44:07', '2020-06-15 11:44:07', 'default.png', '1501704109', NULL, NULL),
(206, 'FAGE', 'Male', 'patient', 'Active', '6414155238@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 11:48:31', '2020-06-15 11:48:31', 'default.png', '6414155238', NULL, NULL),
(207, 'ramesh', 'Male', 'patient', 'Active', '3289021241@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 13:11:44', '2020-06-15 13:11:44', 'default.png', '3289021241', NULL, NULL),
(208, 'rahul', 'Male', 'patient', 'Active', '6177231888@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 13:12:22', '2020-06-15 13:12:22', 'default.png', '6177231888', NULL, NULL),
(209, 'rajesh', 'Male', 'patient', 'Active', '7730236852@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 13:16:05', '2020-06-15 13:16:05', 'default.png', '7730236852', NULL, NULL),
(210, 'tonny', 'Male', 'patient', 'Active', '6978525414@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 13:19:27', '2020-06-15 13:19:27', 'default.png', '6978525414', NULL, NULL),
(211, 'jimmy', 'Male', 'patient', 'Active', '9231870321@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 13:23:14', '2020-06-15 13:23:14', 'default.png', '9231870321', NULL, NULL),
(212, 'game', 'Male', 'patient', 'Active', '1008122274@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 13:44:18', '2020-06-15 13:44:18', 'default.png', '1008122274', NULL, NULL),
(213, 'easter', 'Male', 'patient', 'Active', '3619283924@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 13:45:17', '2020-06-15 13:45:17', 'default.png', '3619283924', NULL, NULL),
(214, 'wer', 'Male', 'patient', 'Active', '2964295589@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 13:57:11', '2020-06-15 13:57:11', 'default.png', '2964295589', NULL, NULL),
(215, 'fgh', 'Male', 'patient', 'Active', '1820178900@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 13:58:15', '2020-06-15 13:58:15', 'default.png', '1820178900', NULL, NULL),
(216, 'asd', 'Male', 'patient', 'Active', '7266878092@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 14:14:32', '2020-06-15 14:14:32', 'default.png', '7266878092', NULL, NULL),
(217, 'ydj', 'Male', 'patient', 'Active', '2514418301@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 14:15:21', '2020-06-15 14:15:21', 'default.png', '2514418301', NULL, NULL),
(218, 'alk', 'Male', 'patient', 'Active', '6276792195@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 14:16:04', '2020-06-15 14:16:04', 'default.png', '6276792195', NULL, NULL),
(219, 'dfr', 'Male', 'patient', 'Active', '9739526772@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 14:16:51', '2020-06-15 14:16:51', 'default.png', '9739526772', NULL, NULL),
(220, 'rahul', 'Male', 'receptionist', 'Active', 'rahuk@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 14:28:23', '2020-06-15 14:28:23', 'default.png', '1112345612', NULL, NULL),
(221, 'asd', 'Male', 'patient', 'Active', '4925428740@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 14:29:50', '2020-06-15 14:29:50', 'default.png', '4925428740', NULL, NULL),
(222, 'ydj', 'Male', 'patient', 'Active', '2895122749@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 14:32:32', '2020-06-15 14:32:32', 'default.png', '2895122749', NULL, NULL),
(223, 'alk', 'Male', 'patient', 'Active', '7583937690@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 14:33:07', '2020-06-15 14:33:07', 'default.png', '7583937690', NULL, NULL),
(224, 'dfr', 'Male', 'patient', 'Active', '8542992289@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 14:33:50', '2020-06-15 14:33:50', 'default.png', '8542992289', NULL, NULL),
(225, 'gjf', 'Male', 'patient', 'Active', '2640914249@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 14:42:18', '2020-06-15 14:42:18', 'default.png', '2640914249', NULL, NULL),
(226, 'rbi', 'Male', 'patient', 'Active', '2115701704@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-15 14:43:08', '2020-06-15 14:43:08', 'default.png', '2115701704', NULL, NULL),
(227, 'Rajan Gupta', 'Male', 'assistant', 'Active', 'rajan123@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-16 18:21:26', '2020-06-16 18:21:26', 'default.png', '432123654', NULL, NULL),
(228, 'cassy', 'Male', 'patient', 'Active', '1730045837@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-16 18:22:47', '2020-06-16 18:22:47', 'default.png', '1730045837', NULL, NULL),
(229, 'Mark', 'Male', 'patient', 'Active', '7375012081@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-16 18:24:01', '2020-06-16 18:24:01', 'default.png', '7375012081', NULL, NULL),
(230, 'Hanny', 'Male', 'patient', 'Active', '7279476992@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-16 18:25:17', '2020-06-16 18:25:17', 'default.png', '7279476992', NULL, NULL),
(231, 'Tonny', 'Male', 'patient', 'Active', '3014276000@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-16 18:29:02', '2020-06-16 18:29:02', 'default.png', '3014276000', NULL, NULL),
(232, 'ravi', 'Male', 'patient', 'Active', '3577786855@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-16 19:47:11', '2020-06-16 19:47:11', 'default.png', '3577786855', NULL, NULL),
(233, 'anil', 'Male', 'patient', 'Pending', 'aniljoshi12@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-06-27 20:12:35', '2020-06-27 20:12:35', 'default.png', '9856565633', NULL, NULL),
(234, 'OLIVER', 'Male', 'patient', 'Active', '9969910337@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-07-27 10:22:23', '2020-07-27 10:22:23', 'default.png', '9969910337', NULL, NULL),
(235, 'HARRY', 'Male', 'patient', 'Active', '1325533502@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-07-27 10:24:54', '2020-07-27 10:24:54', 'default.png', '1325533502', NULL, NULL),
(236, 'Mason', 'Male', 'patient', 'Active', '1403981886@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-07-27 16:37:44', '2020-07-27 16:37:44', 'default.png', '1403981886', NULL, NULL),
(237, 'Evelyn', 'Male', 'patient', 'Active', '8412674749@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-07-27 16:38:35', '2020-07-27 16:38:35', 'default.png', '8412674749', NULL, NULL);
INSERT INTO `users` (`id`, `name`, `gender`, `role`, `status`, `email`, `password`, `created_at`, `updated_at`, `profile_img`, `mobile_no`, `mobile_verified_at`, `email_verified_at`) VALUES
(238, 'Jackson', 'Male', 'patient', 'Active', '2343686062@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-07-27 17:12:53', '2020-07-27 17:12:53', 'default.png', '2343686062', NULL, NULL),
(239, 'Scarlett', 'Male', 'patient', 'Active', '7737585941@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-07-27 17:22:44', '2020-07-27 17:22:44', 'default.png', '7737585941', NULL, NULL),
(240, 'Madison', 'Male', 'patient', 'Active', '9721050233@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-07-27 17:24:30', '2020-07-27 17:24:30', 'default.png', '9721050233', NULL, NULL),
(241, 'dany', 'Male', 'patient', 'Active', '1332749022@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-07-30 23:24:02', '2020-07-30 23:24:02', 'default.png', '1332749022', NULL, NULL),
(242, 'butter', 'Male', 'patient', 'Active', '2526362765@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-07-31 01:02:56', '2020-07-31 01:02:56', 'default.png', '6351466490', NULL, NULL),
(243, 'Alpesh bhai', 'Male', 'patient', 'Active', '9768847967@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-01 15:17:19', '2020-08-01 15:17:19', 'default.png', '9409394723', NULL, NULL),
(244, 'bhagyoday', 'Male', 'patient', 'Active', '4995075164@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-01 15:22:37', '2020-08-01 15:22:37', 'default.png', '4995075164', NULL, NULL),
(245, 'satish', 'Male', 'patient', 'Active', '7884356929@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-05 16:12:29', '2020-08-05 16:12:29', 'default.png', '7884356929', NULL, NULL),
(246, 'Dr.Hitesh Vhora', 'Male', 'doctor', 'Active', 'hiteshvhora242@hotmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-05 16:34:42', '2020-08-05 16:34:42', 'default.png', '9773543340', '2020-08-05 16:35:59', NULL),
(247, 'dhaval', 'Male', 'patient', 'Active', 'davedhaval36@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-21 11:45:59', '2020-08-21 11:45:59', 'default.png', '9099951358', NULL, NULL),
(248, 'kashyap gohil', 'Male', 'patient', 'Active', '1723865386@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-23 11:15:03', '2020-08-23 11:15:03', 'default.png', '7600320779', NULL, NULL),
(249, 'Nisarg chaudhary', 'Male', 'doctor', 'Active', 'dr.nisargpinal@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-23 13:45:01', '2020-08-23 13:45:01', 'default.png', '9909200548', '2020-08-23 13:45:51', NULL),
(250, 'Suresh chaudhari', 'Male', 'receptionist', 'Active', 'sv64064@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-23 13:48:29', '2020-08-23 13:48:29', 'default.png', '7228857021', NULL, NULL),
(251, 'kashyap gohil', 'Male', 'assistant', 'Active', 'kashyapgohil76@gmail.com', 'd9da85df4784dda641c2df0e4a16b1b628743f9597cbeee655f05faf1d6a2372', '2020-08-23 13:52:33', '2020-08-23 13:52:33', 'default.png', '6360311711', NULL, NULL),
(252, 'case', 'Male', 'patient', 'Active', '9958459422@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-23 14:10:01', '2020-08-23 14:10:01', 'default.png', '9958459422', NULL, NULL),
(253, 'nilam', 'Female', 'patient', 'Active', '6376388590@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-23 14:16:51', '2020-08-23 14:16:51', 'default.png', '6376388590', NULL, NULL),
(254, 'SUNITA', 'Female', 'patient', 'Active', '1208740036@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-23 14:25:28', '2020-08-23 14:25:28', 'default.png', '9512217346', NULL, NULL),
(255, 'RAVINA', 'Female', 'patient', 'Active', '1412858960@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-23 14:29:07', '2020-08-23 14:29:07', 'default.png', '1412858960', NULL, NULL),
(256, 'case', 'Male', 'patient', 'Active', '5676517624@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-26 18:22:50', '2020-08-26 18:22:50', 'default.png', '5676517624', NULL, NULL),
(257, 'VIHAN', 'Male', 'patient', 'Active', '2480764129@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-30 13:00:34', '2020-08-30 13:00:34', 'default.png', '2480764129', NULL, NULL),
(258, 'danish', 'Male', 'patient', 'Active', '2911253736@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-08-30 13:02:31', '2020-08-30 13:02:31', 'default.png', '2911253736', NULL, NULL),
(259, 'BJIGAR', 'Male', 'patient', 'Active', '5501215428@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-09-06 13:41:33', '2020-09-06 13:41:33', 'default.png', '9979907891', NULL, NULL),
(260, 'gaurav', 'Male', 'patient', 'Active', '1071569163@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-09-09 15:16:54', '2020-09-09 15:16:54', 'default.png', '1071569163', NULL, NULL),
(261, 'shahid', 'male', 'patient', 'Pending', 'shahid.bracesoft@gmail.com', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '2020-09-12 10:36:24', '2020-09-12 10:36:24', 'default.png', '9724657120', NULL, NULL),
(262, 'shahid', 'male', 'patient', 'Pending', 'shahid.bracesoft@gmail.com1', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '2020-09-12 12:35:40', '2020-09-12 12:35:40', 'default.png', '9724657190', NULL, NULL),
(263, 'Navin', 'Male', 'patient', 'Active', 'navinchaudhari123@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-09-13 11:00:14', '2020-09-13 11:00:14', 'default.png', '9978981224', NULL, NULL),
(264, 'Jigar_Chaudhari', 'Male', 'patient', 'Active', '2687289573@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-09-13 11:06:28', '2020-09-13 11:06:28', 'default.png', '9429369616', NULL, NULL),
(265, 'viva', 'Male', 'pharmacist', 'Active', '3768813166@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-09-13 15:43:18', '2020-09-13 15:43:18', 'default.png', '3768813166', NULL, NULL),
(266, '4', 'Male', 'patient', 'Active', '3931296972@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-09-13 16:41:36', '2020-09-13 16:41:36', 'default.png', '3931296972', NULL, NULL),
(267, '5', 'Male', 'patient', 'Active', '1403526181@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-09-13 16:42:25', '2020-09-13 16:42:25', 'default.png', '1403526181', NULL, NULL),
(268, '6', 'Male', 'patient', 'Active', '4841050994@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-09-13 16:43:00', '2020-09-13 16:43:00', 'default.png', '4841050994', NULL, NULL),
(269, '7', 'Male', 'patient', 'Active', '4520252560@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-09-13 16:43:32', '2020-09-13 16:43:32', 'default.png', '4520252560', NULL, NULL),
(270, 'Jay Ambe Pharmasutical', 'Male', 'pharmacist', 'Active', 'jay@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-10-15 18:04:58', '2020-10-15 18:04:58', '2020-10-18_270_16030210563325926515f8c290081070.jpg', '9429421194', NULL, NULL),
(271, 'hiiiii', 'Male', 'patient', 'Active', '8529212577@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-10-19 12:50:25', '2020-10-19 12:50:25', 'default.png', '8529212577', NULL, NULL),
(272, 'sadsdsadf', 'Male', 'patient', 'Active', '8811495961@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-10-23 11:00:39', '2020-10-23 11:00:39', 'default.png', '8811495961', NULL, NULL),
(273, 'dksagfjfgahs', 'Male', 'patient', 'Active', '7857913120@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-10-23 11:01:38', '2020-10-23 11:01:38', 'default.png', '7857913120', NULL, NULL),
(274, 'SADBHDSF', 'Male', 'patient', 'Active', '8321719671@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-10-23 11:08:19', '2020-10-23 11:08:19', 'default.png', '8321719671', NULL, NULL),
(275, 'SDFSADFSADF', 'Male', 'patient', 'Active', '4287637382@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-10-23 11:08:34', '2020-10-23 11:08:34', 'default.png', '4287637382', NULL, NULL),
(276, 'sdfasdsdf', 'Male', 'patient', 'Active', '3439759166@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-10-23 11:10:04', '2020-10-23 11:10:04', 'default.png', '3439759166', NULL, NULL),
(277, 'sd fgsdaghasdfh', 'Male', 'patient', 'Active', '6557109460@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-10-23 11:17:52', '2020-10-23 11:17:52', 'default.png', '6557109460', NULL, NULL),
(278, 'SADGSADFHGSD', 'Male', 'patient', 'Active', '6233211323@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-10-23 11:18:54', '2020-10-23 11:18:54', 'default.png', '6233211323', NULL, NULL),
(279, 'NEWLSDFJ', 'Male', 'patient', 'Active', '2358104300@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-10-23 11:29:23', '2020-10-23 11:29:23', 'default.png', '2358104300', NULL, NULL),
(280, 'Bharat Prajapati', 'Male', 'patient', 'Active', 'bharatqqq@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-11-11 14:50:06', '2020-11-11 14:50:06', 'default.png', '6352104626', '2020-11-11 14:51:13', '2020-11-11 14:51:08'),
(281, 'Bharat Prajapati', 'Male', 'patient', 'Active', 'bharatsadasd@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-11-11 15:06:13', '2020-11-11 15:06:13', 'default.png', '4536214562', NULL, NULL),
(282, 'newmen', 'Male', 'patient', 'Active', '8789378314@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-11-11 15:06:34', '2020-11-11 15:06:34', 'default.png', '8789378314', NULL, NULL),
(283, 'asdasdaDasdsadsad', 'Male', 'patient', 'Active', '4051536119@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-11-11 15:06:55', '2020-11-11 15:06:55', 'default.png', '4051536119', NULL, NULL),
(284, 'Bharat Prajapati', 'Male', 'patient', 'Active', '6847255963@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-11-11 15:17:27', '2020-11-11 15:17:27', 'default.png', '655', NULL, NULL),
(285, 'sdhsakjdhaksdfksdfkjfhdskja', 'Male', 'patient', 'Active', '6994452457@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-11-11 15:18:03', '2020-11-11 15:18:03', 'default.png', '6994452457', NULL, NULL),
(286, 'gaurav', 'Male', 'patient', 'Active', '8849519985@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-11-22 12:02:01', '2020-11-22 12:02:01', 'default.png', '8849519985', NULL, NULL),
(287, 'gaurav', 'Male', 'patient', 'Active', 'gaurav@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-12-09 12:09:55', '2020-12-09 12:09:55', 'default.png', '8140273767', '2020-12-09 12:10:54', NULL),
(288, 'bhar', 'Male', 'patient', 'Active', 'prajapati@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-12-16 17:21:31', '2020-12-16 17:21:31', 'default.png', '7046222422', '2020-12-16 17:22:14', NULL),
(289, 'sadasd', 'Male', 'patient', 'Active', '9702186233@doctorooms.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2020-12-21 17:24:24', '2020-12-21 17:24:24', 'default.png', '9702186233', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `booking_chat`
--
ALTER TABLE `booking_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `to_id` (`to_id`);

--
-- Indexes for table `city_mstr`
--
ALTER TABLE `city_mstr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_mstr`
--
ALTER TABLE `country_mstr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `co_master`
--
ALTER TABLE `co_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease_master`
--
ALTER TABLE `disease_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`hospital_id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `doctor_assistants`
--
ALTER TABLE `doctor_assistants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `doctor_holiday_schedule`
--
ALTER TABLE `doctor_holiday_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `doctor_medicine_list`
--
ALTER TABLE `doctor_medicine_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `doctor_pharmacist`
--
ALTER TABLE `doctor_pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_rating`
--
ALTER TABLE `doctor_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `doctor_type_mstr`
--
ALTER TABLE `doctor_type_mstr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hospital_inquiry`
--
ALTER TABLE `hospital_inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `label_master`
--
ALTER TABLE `label_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `p_cos`
--
ALTER TABLE `p_cos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_digno_table`
--
ALTER TABLE `p_digno_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_labels`
--
ALTER TABLE `p_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_medicine`
--
ALTER TABLE `p_medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_other_settings`
--
ALTER TABLE `p_other_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_suggestions`
--
ALTER TABLE `p_suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_master`
--
ALTER TABLE `questions_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_pdf`
--
ALTER TABLE `schedule_pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_mstr`
--
ALTER TABLE `state_mstr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `county_id` (`county_id`);

--
-- Indexes for table `suggestions_master`
--
ALTER TABLE `suggestions_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_master`
--
ALTER TABLE `table_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;

--
-- AUTO_INCREMENT for table `booking_chat`
--
ALTER TABLE `booking_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `city_mstr`
--
ALTER TABLE `city_mstr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country_mstr`
--
ALTER TABLE `country_mstr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `co_master`
--
ALTER TABLE `co_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `disease_master`
--
ALTER TABLE `disease_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `doctor_assistants`
--
ALTER TABLE `doctor_assistants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctor_holiday_schedule`
--
ALTER TABLE `doctor_holiday_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `doctor_medicine_list`
--
ALTER TABLE `doctor_medicine_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `doctor_pharmacist`
--
ALTER TABLE `doctor_pharmacist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor_rating`
--
ALTER TABLE `doctor_rating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctor_type_mstr`
--
ALTER TABLE `doctor_type_mstr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hospital_inquiry`
--
ALTER TABLE `hospital_inquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `label_master`
--
ALTER TABLE `label_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1801;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `p_cos`
--
ALTER TABLE `p_cos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=839;

--
-- AUTO_INCREMENT for table `p_digno_table`
--
ALTER TABLE `p_digno_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `p_labels`
--
ALTER TABLE `p_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1178;

--
-- AUTO_INCREMENT for table `p_medicine`
--
ALTER TABLE `p_medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `p_other_settings`
--
ALTER TABLE `p_other_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `p_suggestions`
--
ALTER TABLE `p_suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `questions_master`
--
ALTER TABLE `questions_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedule_pdf`
--
ALTER TABLE `schedule_pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `state_mstr`
--
ALTER TABLE `state_mstr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suggestions_master`
--
ALTER TABLE `suggestions_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `table_master`
--
ALTER TABLE `table_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_chat`
--
ALTER TABLE `booking_chat`
  ADD CONSTRAINT `booking_chat_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`),
  ADD CONSTRAINT `booking_chat_ibfk_2` FOREIGN KEY (`from_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `booking_chat_ibfk_3` FOREIGN KEY (`to_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `city_mstr`
--
ALTER TABLE `city_mstr`
  ADD CONSTRAINT `city_mstr_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state_mstr` (`id`);

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `doctors_ibfk_2` FOREIGN KEY (`hospital_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `doctor_assistants`
--
ALTER TABLE `doctor_assistants`
  ADD CONSTRAINT `doctor_assistants_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `doctor_assistants_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `doctor_holiday_schedule`
--
ALTER TABLE `doctor_holiday_schedule`
  ADD CONSTRAINT `doctor_holiday_schedule_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `doctor_medicine_list`
--
ALTER TABLE `doctor_medicine_list`
  ADD CONSTRAINT `doctor_medicine_list_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `doctor_medicine_list_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `doctor_rating`
--
ALTER TABLE `doctor_rating`
  ADD CONSTRAINT `doctor_rating_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `doctor_rating_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `hospital`
--
ALTER TABLE `hospital`
  ADD CONSTRAINT `hospital_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`),
  ADD CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `prescriptions_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD CONSTRAINT `receptionist_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `receptionist_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `state_mstr`
--
ALTER TABLE `state_mstr`
  ADD CONSTRAINT `state_mstr_ibfk_1` FOREIGN KEY (`county_id`) REFERENCES `country_mstr` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
