-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2022 at 07:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pfil database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_id`, `password`) VALUES
(1, 'admin', 'c3BpYzEyMw==');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `marital` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `ifsc_code` varchar(100) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `city` varchar(500) NOT NULL,
  `village` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `dateofbirth` varchar(50) DEFAULT NULL,
  `signature_path` varchar(1000) NOT NULL,
  `adharcard_path` varchar(50) NOT NULL,
  `pancard_path` varchar(50) NOT NULL,
  `image_path` varchar(50) NOT NULL,
  `other_path` varchar(500) NOT NULL,
  `otp` int(4) NOT NULL,
  `loan_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile_number` int(11) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emi`
--

CREATE TABLE `emi` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `total_loan` int(11) DEFAULT NULL,
  `Balance_amt` int(11) DEFAULT NULL,
  `emi_amount` int(11) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `interest` int(11) DEFAULT 0,
  `paid_amount` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(11) NOT NULL,
  `employee_name` varchar(20) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `marital` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `checkbox` varchar(50) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emp1`
--

CREATE TABLE `emp1` (
  `id` int(11) NOT NULL,
  `employee_Name` varchar(50) DEFAULT NULL,
  `Higher_Qualification` varchar(50) DEFAULT NULL,
  `marital` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `resume_path` varchar(300) DEFAULT NULL,
  `Address` varchar(300) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `dateofbirth` varchar(50) DEFAULT NULL,
  `image_path` varchar(1000) NOT NULL,
  `otp` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `groupmember`
--

CREATE TABLE `groupmember` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `otp` int(11) DEFAULT NULL,
  `other` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loangroup`
--

CREATE TABLE `loangroup` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `group_name` varchar(50) DEFAULT NULL,
  `Loan_Amount` int(11) NOT NULL,
  `Time_Duration` varchar(500) NOT NULL,
  `loan_status` int(11) DEFAULT 0,
  `number_of_members` int(11) DEFAULT NULL,
  `info` varchar(1000) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `other` varchar(1000) NOT NULL,
  `Read_Status` int(11) NOT NULL DEFAULT 2,
  `stage2_info` varchar(500) NOT NULL,
  `stage3_info` varchar(500) NOT NULL,
  `path1` varchar(500) NOT NULL,
  `path2` varchar(500) NOT NULL,
  `path3` varchar(500) NOT NULL,
  `path4` varchar(500) NOT NULL,
  `path5` varchar(500) NOT NULL,
  `loan_cheque` varchar(100) NOT NULL,
  `cheque_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `member_action_detail`
--

CREATE TABLE `member_action_detail` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `date_and_time` varchar(100) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `request_for_undo`
--

CREATE TABLE `request_for_undo` (
  `id` int(11) NOT NULL,
  `group_id` varchar(100) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `admin_id` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `temp_groupmember`
--

CREATE TABLE `temp_groupmember` (
  `id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `otp` int(11) DEFAULT NULL,
  `other` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emi`
--
ALTER TABLE `emi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp1`
--
ALTER TABLE `emp1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groupmember`
--
ALTER TABLE `groupmember`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loangroup`
--
ALTER TABLE `loangroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_action_detail`
--
ALTER TABLE `member_action_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_for_undo`
--
ALTER TABLE `request_for_undo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_groupmember`
--
ALTER TABLE `temp_groupmember`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `emi`
--
ALTER TABLE `emi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emp1`
--
ALTER TABLE `emp1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `groupmember`
--
ALTER TABLE `groupmember`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `loangroup`
--
ALTER TABLE `loangroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `member_action_detail`
--
ALTER TABLE `member_action_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `request_for_undo`
--
ALTER TABLE `request_for_undo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `temp_groupmember`
--
ALTER TABLE `temp_groupmember`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
