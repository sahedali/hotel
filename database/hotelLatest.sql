-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2019 at 11:58 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE `account_type` (
  `id` int(11) NOT NULL,
  `acc_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`id`, `acc_name`) VALUES
(1, 'Asset'),
(2, 'Liabilities'),
(3, 'Income'),
(4, 'Expences');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `room_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL,
  `created_on` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `customer_id`, `start_date`, `end_date`, `room_id`, `price_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `is_active`) VALUES
(1, 1, '2019-02-19 18:30:00', '2019-02-21 18:30:00', 1, 1, '2019-02-19', 1, '2019-02-19', 1, 1),
(2, 23, '2019-05-13 13:00:00', '2019-05-14 13:00:00', 16, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(3, 24, '2019-05-18 13:00:00', '2019-05-20 13:00:00', 17, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(4, 25, '2019-07-08 13:00:00', '2019-07-09 13:00:00', 1, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(5, 26, '2019-07-26 13:00:00', '2019-07-27 13:00:00', 18, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(6, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 18, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(7, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(8, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(9, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(10, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(11, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(12, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(13, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(14, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(15, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(16, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(17, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(18, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(19, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(20, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 1, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(21, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 1, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(22, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 20, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(23, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 20, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(24, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(25, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 20, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(26, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 20, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(27, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 20, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(28, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(29, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(30, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 20, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(31, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 19, 0, '0000-00-00', 1, '0000-00-00', 1, 1),
(32, 26, '2019-07-27 13:00:00', '2019-07-30 13:00:00', 18, 0, '0000-00-00', 1, '0000-00-00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `ph_number` varchar(10) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_value` varchar(50) NOT NULL,
  `created_on` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `age`, `gender`, `email_id`, `ph_number`, `id_type`, `id_value`, `created_on`, `created_by`, `modified_on`, `modified_by`, `is_active`) VALUES
(1, 'sss', 0, '45', 'asfd@dgfhgh', '34545', 0, 'dfgdfhfh', '0000-00-00', 1, '0000-00-00', 1, 1),
(2, 'sss', 0, '45', 'asfd@dgfhgh', '34545', 0, 'dfgdfhfh', '0000-00-00', 1, '0000-00-00', 1, 1),
(3, 'sss', 0, '45', 'asfd@dgfhgh', '34545', 0, 'dfgdfhfh', '0000-00-00', 1, '0000-00-00', 1, 1),
(4, 'sahed', 0, '24', 'test@sahed.com', '8609024873', 1, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(5, 'sahed', 0, '24', 'test@sahed.com', '8609024873', 1, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(6, 'sahed', 0, '24', 'test@sahed.com', '8609024873', 1, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(7, 'sahed', 0, '24', 'test@sahed.com', '8609024873', 1, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(8, 'sahed', 0, '24', 'test@sahed.com', '8609024873', 1, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(9, 'sahed', 0, '24', 'test@sahed.com', '8609024873', 1, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(10, 'sdfsdg', 0, '23', '33sdf@sdgdfg.com', '4578787', 2, '45745757', '0000-00-00', 1, '0000-00-00', 1, 1),
(11, 'sdfsdg', 0, '23', '33sdf@sdgdfg.com', '4578787', 2, '45745757', '0000-00-00', 1, '0000-00-00', 1, 1),
(12, 'sdgds', 0, '4', 'sfsdfd@dfgdfg.com', '4575787', 2, '3454545', '0000-00-00', 1, '0000-00-00', 1, 1),
(13, 'xccncvn', 0, '23', 'sddfgdf@gdfgd.com', '43457575', 1, '547575', '0000-00-00', 1, '0000-00-00', 1, 1),
(14, 'Sahed', 0, '22', 'dfsdgdf@fghfghf.com', '123457890', 4, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(15, 'Sahed', 0, '22', 'dfsdgdf@fghfghf.com', '123457890', 4, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(16, 'Sahed', 0, '22', 'dfsdgdf@fghfghf.com', '123457890', 4, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(17, 'asdfgh', 0, '23', 'trjghf@khekhj.con', '123457890', 2, '4534534', '0000-00-00', 1, '0000-00-00', 1, 1),
(18, 'asdfgh', 0, '23', 'trjghf@khekhj.con', '123457890', 2, '4534534', '0000-00-00', 1, '0000-00-00', 1, 1),
(19, 'asdfgh', 0, '23', 'trjghf@khekhj.con', '123457890', 2, '4534534', '0000-00-00', 1, '0000-00-00', 1, 1),
(20, 'Sahed', 23, '0', 'sahed123@gmail.com', '809024837', 1, '1234555', '0000-00-00', 1, '0000-00-00', 1, 1),
(21, 'Sahed', 23, '0', 'sahed123@gmail.com', '809024837', 1, '1234555', '0000-00-00', 1, '0000-00-00', 1, 1),
(22, 'Sahed', 23, '0', 'sahed123@gmail.com', '809024837', 1, '1234555', '0000-00-00', 1, '0000-00-00', 1, 1),
(23, 'Sahed', 23, '0', 'sahed123@gmail.com', '809024837', 1, '1234555', '0000-00-00', 1, '0000-00-00', 1, 1),
(24, 'Sahadat', 25, '0', 'sahadat123@gmail.com', '123457890', 1, '1234557', '0000-00-00', 1, '0000-00-00', 1, 1),
(25, 'Sahed', 23, '0', 'sahedali51@gmail.com', '8609024873', 1, '1234567ddjh', '0000-00-00', 1, '0000-00-00', 1, 1),
(26, 'sahadat ali', 20, 'Male', 'sahedali51@gmail.com', '8609024873', 1, '1234567890', '0000-00-00', 1, '0000-00-00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `date_of_birth` date NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `mail_id` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_value` varchar(50) NOT NULL,
  `created_on` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `date_of_birth`, `contact_no`, `mail_id`, `address`, `id_type`, `id_value`, `created_on`, `created_by`, `modified_on`, `modified_by`, `is_active`) VALUES
(1, 'Sahed', 'Ali', '1992-05-28', '', '', '', 0, '', '0000-00-00', 0, '0000-00-00', 0, 0),
(2, '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', 0, '0000-00-00', 0, 0),
(3, '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', 0, '0000-00-00', 0, 0),
(4, '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', 0, '0000-00-00', 0, 0),
(5, '', '', '0000-00-00', '', '', '', 0, '', '0000-00-00', 0, '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `id_master`
--

CREATE TABLE `id_master` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_master`
--

INSERT INTO `id_master` (`id`, `name`) VALUES
(1, 'Voter Id'),
(2, 'PAN Card'),
(4, 'Adhara'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `price_detail`
--

CREATE TABLE `price_detail` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_on` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price_detail`
--

INSERT INTO `price_detail` (`id`, `category_id`, `amount`, `start_date`, `end_date`, `created_on`, `created_by`, `modified_on`, `modified_by`, `is_active`) VALUES
(6, 1, 345.00, '2019-02-01', '2019-02-28', '0000-00-00', 1, '0000-00-00', 1, 1),
(7, 6, 1200.00, '2019-02-01', '2019-02-24', '0000-00-00', 1, '0000-00-00', 1, 1),
(8, 2, 45577.00, '2019-01-01', '2019-02-28', '0000-00-00', 1, '0000-00-00', 1, 1),
(10, 5, 2586.00, '2019-02-01', '2019-02-28', '0000-00-00', 1, '0000-00-00', 1, 1),
(11, 7, 5000.00, '2019-05-01', '2019-05-31', '0000-00-00', 1, '0000-00-00', 1, 1),
(12, 16, 500.00, '2019-05-01', '2019-06-01', '0000-00-00', 1, '0000-00-00', 1, 1),
(13, 16, 1000.00, '2019-06-02', '2019-07-01', '0000-00-00', 1, '0000-00-00', 1, 1),
(14, 2, 2000.00, '2019-07-24', '2019-07-26', '0000-00-00', 1, '0000-00-00', 1, 1),
(15, 18, 500.00, '2019-07-26', '2019-07-31', '0000-00-00', 1, '0000-00-00', 1, 1),
(16, 21, 4000.00, '2019-07-26', '2019-07-31', '0000-00-00', 1, '0000-00-00', 1, 1),
(17, 23, 2000.00, '2019-07-28', '2019-08-01', '0000-00-00', 1, '0000-00-00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

CREATE TABLE `role_master` (
  `id` int(11) NOT NULL,
  `role` varchar(30) NOT NULL,
  `description` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_master`
--

INSERT INTO `role_master` (`id`, `role`, `description`) VALUES
(1, 'Admin', 'Administit');

-- --------------------------------------------------------

--
-- Table structure for table `room_category_master`
--

CREATE TABLE `room_category_master` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `week_days_price` double(10,2) NOT NULL,
  `weekend_price` double(10,2) NOT NULL,
  `description` text NOT NULL,
  `created_on` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_category_master`
--

INSERT INTO `room_category_master` (`id`, `name`, `week_days_price`, `weekend_price`, `description`, `created_on`, `created_by`, `modified_on`, `modified_by`, `is_active`) VALUES
(1, 'Delux', 390.00, 590.00, 'Delux', '0000-00-00', 1, '0000-00-00', 1, 1),
(2, 'Super Delux', 100.00, 400.00, 'Super Delux Delux', '0000-00-00', 1, '0000-00-00', 1, 1),
(5, 'test', 0.00, 0.00, 'test123', '0000-00-00', 1, '0000-00-00', 1, 1),
(6, 'Test3', 0.00, 0.00, 'Sahed Test', '0000-00-00', 1, '0000-00-00', 1, 1),
(7, '1234', 0.00, 0.00, 'test-EDIt', '0000-00-00', 1, '0000-00-00', 1, 1),
(14, 'sdfs', 0.00, 0.00, 'sdfsdf', '0000-00-00', 1, '0000-00-00', 1, 1),
(16, 'Batter', 45.00, 67.00, 'xdvdfgfd', '0000-00-00', 1, '0000-00-00', 1, 1),
(18, 'new', 234.65, 500.56, 'gfhfgh', '0000-00-00', 1, '0000-00-00', 1, 1),
(19, 'sdfdgdfg', 0.00, 0.00, 'dfgdfgdfg', '0000-00-00', 1, '0000-00-00', 1, 1),
(20, 'dgvdfg', 34535.00, 34534.00, 'dgdfg', '0000-00-00', 1, '0000-00-00', 1, 1),
(21, 'dfg', 245.00, 345.00, 'test', '0000-00-00', 1, '0000-00-00', 1, 1),
(22, 'ddd', 44.00, 566.00, 'dfhfgh', '0000-00-00', 1, '0000-00-00', 1, 1),
(23, 'Furnished', 1000.00, 1200.00, 'full luxury', '0000-00-00', 1, '0000-00-00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_master`
--

CREATE TABLE `room_master` (
  `id` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `room_category_id` int(11) NOT NULL,
  `created_on` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_on` date NOT NULL,
  `modified_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_master`
--

INSERT INTO `room_master` (`id`, `room_number`, `room_category_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `is_active`) VALUES
(1, 1, 2, '0000-00-00', 1, '0000-00-00', 1, 1),
(10, 2, 2, '0000-00-00', 1, '0000-00-00', 1, 1),
(12, 3, 2, '0000-00-00', 1, '0000-00-00', 1, 1),
(13, 5, 1, '0000-00-00', 1, '0000-00-00', 1, 1),
(15, 123, 2, '0000-00-00', 1, '0000-00-00', 1, 1),
(16, 2222, 7, '0000-00-00', 1, '0000-00-00', 1, 1),
(17, 1002, 16, '0000-00-00', 1, '0000-00-00', 1, 1),
(18, 2002, 18, '0000-00-00', 1, '0000-00-00', 1, 1),
(19, 4444, 21, '0000-00-00', 1, '0000-00-00', 1, 1),
(20, 304, 23, '0000-00-00', 1, '0000-00-00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_on` int(11) NOT NULL,
  `created_by` date NOT NULL,
  `modified_on` int(11) NOT NULL,
  `modified_by` date NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `person_id`, `username`, `password`, `role_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `is_active`) VALUES
(1, 0, 'sahedali51@gmail.com', '12345', 1, 0, '0000-00-00', 0, '0000-00-00', 0),
(2, 0, 'nishi', '1234578', 1, 0, '0000-00-00', 0, '0000-00-00', 0),
(3, 0, 'avik', '1234578', 1, 0, '0000-00-00', 0, '0000-00-00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `id_master`
--
ALTER TABLE `id_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_detail`
--
ALTER TABLE `price_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_master`
--
ALTER TABLE `role_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_category_master`
--
ALTER TABLE `room_category_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_master`
--
ALTER TABLE `room_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `id_master`
--
ALTER TABLE `id_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `price_detail`
--
ALTER TABLE `price_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `role_master`
--
ALTER TABLE `role_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `room_category_master`
--
ALTER TABLE `room_category_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `room_master`
--
ALTER TABLE `room_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
