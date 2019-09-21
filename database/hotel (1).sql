-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2019 at 08:31 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

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
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
(1, 1, '2019-02-19 18:30:00', '2019-02-21 18:30:00', 1, 1, '2019-02-19', 1, '2019-02-19', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
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
(1, 'sss', 0, 45, 'asfd@dgfhgh', '34545', 0, 'dfgdfhfh', '0000-00-00', 1, '0000-00-00', 1, 1),
(2, 'sss', 0, 45, 'asfd@dgfhgh', '34545', 0, 'dfgdfhfh', '0000-00-00', 1, '0000-00-00', 1, 1),
(3, 'sss', 0, 45, 'asfd@dgfhgh', '34545', 0, 'dfgdfhfh', '0000-00-00', 1, '0000-00-00', 1, 1),
(4, 'sahed', 0, 24, 'test@sahed.com', '8609024873', 1, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(5, 'sahed', 0, 24, 'test@sahed.com', '8609024873', 1, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(6, 'sahed', 0, 24, 'test@sahed.com', '8609024873', 1, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(7, 'sahed', 0, 24, 'test@sahed.com', '8609024873', 1, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(8, 'sahed', 0, 24, 'test@sahed.com', '8609024873', 1, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(9, 'sahed', 0, 24, 'test@sahed.com', '8609024873', 1, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(10, 'sdfsdg', 0, 23, '33sdf@sdgdfg.com', '4578787', 2, '45745757', '0000-00-00', 1, '0000-00-00', 1, 1),
(11, 'sdfsdg', 0, 23, '33sdf@sdgdfg.com', '4578787', 2, '45745757', '0000-00-00', 1, '0000-00-00', 1, 1),
(12, 'sdgds', 0, 4, 'sfsdfd@dfgdfg.com', '4575787', 2, '3454545', '0000-00-00', 1, '0000-00-00', 1, 1),
(13, 'xccncvn', 0, 23, 'sddfgdf@gdfgd.com', '43457575', 1, '547575', '0000-00-00', 1, '0000-00-00', 1, 1),
(14, 'Sahed', 0, 22, 'dfsdgdf@fghfghf.com', '123457890', 4, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(15, 'Sahed', 0, 22, 'dfsdgdf@fghfghf.com', '123457890', 4, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(16, 'Sahed', 0, 22, 'dfsdgdf@fghfghf.com', '123457890', 4, '123457890', '0000-00-00', 1, '0000-00-00', 1, 1),
(17, 'asdfgh', 0, 23, 'trjghf@khekhj.con', '123457890', 2, '4534534', '0000-00-00', 1, '0000-00-00', 1, 1),
(18, 'asdfgh', 0, 23, 'trjghf@khekhj.con', '123457890', 2, '4534534', '0000-00-00', 1, '0000-00-00', 1, 1),
(19, 'asdfgh', 0, 23, 'trjghf@khekhj.con', '123457890', 2, '4534534', '0000-00-00', 1, '0000-00-00', 1, 1);

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
(10, 5, 2586.00, '2019-02-01', '2019-02-28', '0000-00-00', 1, '0000-00-00', 1, 1);

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

INSERT INTO `room_category_master` (`id`, `name`, `description`, `created_on`, `created_by`, `modified_on`, `modified_by`, `is_active`) VALUES
(1, 'Delux', 'Delux', '0000-00-00', 1, '0000-00-00', 1, 1),
(2, 'Super Delux', 'Super Delux Delux', '0000-00-00', 1, '0000-00-00', 1, 1),
(5, 'test', 'test123', '0000-00-00', 1, '0000-00-00', 1, 1),
(6, 'Test3', 'Sahed Test', '0000-00-00', 1, '0000-00-00', 1, 1);

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
(15, 123, 2, '0000-00-00', 1, '0000-00-00', 1, 1);

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
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_master`
--
ALTER TABLE `role_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `room_category_master`
--
ALTER TABLE `room_category_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_master`
--
ALTER TABLE `room_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
