-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2017 at 02:02 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `safe`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `u_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `c_msg` text,
  `c_to` varchar(50) DEFAULT NULL,
  `c_from` varchar(50) DEFAULT NULL,
  `c_status` varchar(20) DEFAULT '0=read,1=unread',
  `created_at` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`u_id`, `c_id`, `c_msg`, `c_to`, `c_from`, `c_status`, `created_at`) VALUES
(12, 13, 'this is police complaint about sundya', '1002', 'alok', '2', 'sunday'),
(13, 14, 'this is police complaint about sundyathis is police complaint about sundya', '1003', 'abhishek', '1', 'monady'),
(14, 15, 'this is polthis is police complaint about sundyathis is police complaint about ', '1002', 'alok anshu', '2', 'friday'),
(17, 16, 'this is police complaint about sundyathis is police cothis is police ', '1003', 'abhishek abhi', '1', 'wensday');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_reply`
--

CREATE TABLE `complaint_reply` (
  `cr_id` int(100) NOT NULL,
  `cr_from` varchar(200) NOT NULL,
  `cr_to` varchar(200) NOT NULL,
  `cr_status` int(2) NOT NULL DEFAULT '1',
  `cr_msg` varchar(500) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complaint_reply`
--

INSERT INTO `complaint_reply` (`cr_id`, `cr_from`, `cr_to`, `cr_status`, `cr_msg`, `created_date`) VALUES
(0, 'i am  the', 'abhi', 1, 'this is the fight against north koeria ', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `complain_com`
--

CREATE TABLE `complain_com` (
  `id` int(11) NOT NULL,
  `reply` varchar(200) NOT NULL,
  `com_id` int(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain_com`
--

INSERT INTO `complain_com` (`id`, `reply`, `com_id`, `status`) VALUES
(19, 'ok we wiil let u know ', 1002, 2),
(20, 'hi my name is abhishek', 1002, 2);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(100) NOT NULL,
  `f_msg` varchar(500) NOT NULL,
  `f_from` varchar(200) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE `ngo` (
  `id` int(11) NOT NULL,
  `u_ngo` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`
--

INSERT INTO `ngo` (`id`, `u_ngo`, `u_pass`) VALUES
(1, 'abhi', '12345'),
(2, 'kumar ', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `id` int(11) NOT NULL,
  `u_police` varchar(50) NOT NULL,
  `up_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`id`, `u_police`, `up_password`) VALUES
(1, 'abhishek', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(10) NOT NULL,
  `u_name` varchar(40) DEFAULT NULL,
  `u_dob` varchar(20) DEFAULT NULL,
  `u_age` int(10) DEFAULT NULL,
  `u_location` varchar(100) DEFAULT NULL,
  `u_email` varchar(40) DEFAULT NULL,
  `u_pwd` varchar(20) DEFAULT NULL,
  `u_token` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_name`, `u_dob`, `u_age`, `u_location`, `u_email`, `u_pwd`, `u_token`, `created_at`) VALUES
(1, 'rani', NULL, 30, 'pune', 'rani@gmail.com', '1234567', 'abc', NULL),
(26, 'Sagar', '02/13/17', 25, 'Pune', 'sagar.d@gmail.com', '123456', 'abc', '2017-02-17 11:56:10'),
(27, 'Sagar', '02/17/17', 25, 'Pune', 'sagar.d1@gmail.com', '123456', 'abc', '2017-02-17 12:06:24'),
(28, 'Abc', '02/13/17', 25, 'Gsgsgs', 'ggaga@gsgsg.com', '1234567', 'temp', '2017-02-19 11:47:37'),
(29, 'Gagaag', '02/15/17', 25, 'Pune', 'agafaf@gmail.com', '1234567', 'temp', '2017-02-19 11:48:27'),
(30, 'Sagarrrrrr', '02/15/17', 25, 'Pune', 'abc@gmail.com', '1234567', 'abc', '2017-02-19 11:50:29'),
(31, 'Ok', '09/08/16', 13, 'Pune', 'asf@gmail.com', '1234567', 'abc', '2017-02-19 11:52:00'),
(32, 'Abc', '02/21/17', 25, 'Fatra', 'afa@hha.chh', '1234567', 'temp', '2017-02-19 11:56:31'),
(33, 'Abc Gagagaga', '02/20/17', 25, 'Pune', 'sagar@g.com', '1234567', 'temp', '2017-02-19 12:09:13'),
(34, 'pallavi naikwade', '02/19/17', 6, 'hHzbb', 'pallavi@gmail.com', '12345678', 'abc', '2017-02-19 12:19:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `complaint_reply`
--
ALTER TABLE `complaint_reply`
  ADD PRIMARY KEY (`cr_id`);

--
-- Indexes for table `complain_com`
--
ALTER TABLE `complain_com`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `ngo`
--
ALTER TABLE `ngo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `complain_com`
--
ALTER TABLE `complain_com`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ngo`
--
ALTER TABLE `ngo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
