-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2026 at 03:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic_logbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `clinic_staff`
--

CREATE TABLE `clinic_staff` (
  `staff_id` varchar(50) NOT NULL,
  `security_key` varchar(255) NOT NULL,
  `staff_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinic_staff`
--

INSERT INTO `clinic_staff` (`staff_id`, `security_key`, `staff_name`) VALUES
('STAFF-0922', 'password123', 'Head Nurse');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_visits`
--

CREATE TABLE `clinic_visits` (
  `visit_id` int(11) NOT NULL,
  `reference_code` varchar(50) NOT NULL,
  `school_id` varchar(50) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `category` varchar(50) NOT NULL,
  `department` varchar(100) NOT NULL,
  `year_level` varchar(20) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `chief_complaint` text DEFAULT NULL,
  `visit_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clinic_visits`
--

INSERT INTO `clinic_visits` (`visit_id`, `reference_code`, `school_id`, `full_name`, `category`, `department`, `year_level`, `purpose`, `chief_complaint`, `visit_time`) VALUES
(1, '#VIS-2026-8952', 'dadada', 'dad', 'student', 'it', '1', 'checkup', 'dadad', '2026-04-17 20:22:11'),
(2, '#VIS-2026-5636', 'fafaf', 'fafaf', 'student', 'ba', '1', 'injury', 'fafaf', '2026-04-17 20:22:40'),
(3, '#VIS-2026-5675', 'none', 'glen', 'student', 'ba', '1', 'checkup', 'heart ache broken', '2026-04-17 20:53:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinic_staff`
--
ALTER TABLE `clinic_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `clinic_visits`
--
ALTER TABLE `clinic_visits`
  ADD PRIMARY KEY (`visit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clinic_visits`
--
ALTER TABLE `clinic_visits`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
