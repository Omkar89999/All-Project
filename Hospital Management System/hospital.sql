-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2023 at 06:55 AM
-- Server version: 8.0.33
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `appoint_date` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phno` varchar(45) NOT NULL,
  `diseases` varchar(45) NOT NULL,
  `doctor_id` int NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `user_id`, `fullname`, `gender`, `age`, `appoint_date`, `email`, `phno`, `diseases`, `doctor_id`, `address`, `status`) VALUES
(1, 1, 'Raj', 'male', '22', '2023-05-10', 'raj@gmail.com', '8787878798', 'heart', 1, 'Ahmednagar', 'checkup completed'),
(2, 7, 'Mahesh Ganage', 'male', '23', '2023-05-11', 'mahesh22@gmail.com', '54544444444', 'heart', 1, 'Newasa', 'good'),
(5, 7, 'Sumit', 'male', '23', '2023-05-26', 'sumit@gmail.com', '6547466688', 'fever', 7, 'Ameerpet Hyderabad', 'checkup completed'),
(6, 1, 'Navin', 'male', '22', '2023-06-09', 'navin@gmail.com', '8594904024', 'fever', 7, 'Ahmednagar', 'checkup completed'),
(8, 1, 'Ram', 'male', '22', '2023-05-20', 'ram2@gmail.com', '6395959356', 'cardic', 3, 'Ahmednagar', 'checkup completed\r\n'),
(12, 11, 'ram', 'male', '22', '2023-05-20', 'ram@gmail.com', '8588888888', 'fever', 7, 'pune\r\n', 'good'),
(13, 1, 'aa', 'male', '22', '2023-05-24', 'aa@gmail.com', '8989898989', 'cavity', 8, 'Ahmednagar', 'better'),
(14, 1, 'go', 'male', '33', '2023-05-25', 'ghodechoromkar@gmail.com', '8999605892', 'heart', 7, 'pune', 'good'),
(15, 1, 'Shailesh B', 'male', '22', '2023-05-16', 'shailesh@gmail.com', '7484848484', 'cardic', 3, 'Newasa', 'Pending'),
(16, 9, 'Raj Kumar', 'male', '23', '2023-05-18', 'raj1@gmail.com', '9849493939', 'demoto', 5, 'Newasa', 'Pending'),
(17, 12, 'Letizia', 'female', '33', '2023-05-18', 'letizia@gmail.com', '8383838383', 'gyno', 11, 'Spain\r\n', 'Pending'),
(18, 1, 'Omkar Ghodechor', 'male', '25', '2023-01-01', 'ghodechoromkar@gmail.com', '8999605892', 'fever', 8, 'pune', 'g'),
(19, 1, 'Omkar Vikram', 'male', '20', '2023-01-01', 'ghodechoromkar@gmail.com', '8999605892', 'fever', 8, 'Devsade Newasa', 'better'),
(20, 3, 'Omkar', 'male', '22', '2023-05-19', 'omkar@gmail.com', '8999605892', 'fever', 7, 'Ahmednagar', 'better'),
(21, 5, 'Omkar Ghodechor', 'male', '22', '2023-05-18', 'ghodechoromkar@gmail.com', '8999605892', 'fever', 7, 'pune', 'normal'),
(22, 12, 'miller j', 'male', '32', '2023-05-25', 'miller@gmail.com', '8965741236', 'cavity', 1, 'Austrilia', 'good'),
(23, 4, 'Omkar Ghodechor', 'male', '22', '2023-05-19', 'ghodechoromkar@gmail.com', '8999605892', 'fever', 7, 'pune', 'Pending'),
(24, 3, 'Mahesh Neel', 'male', '25', '2023-05-21', 'maheshn@gmail.com', '9848494893', 'cavity', 8, 'Pune', 'better'),
(25, 10, 'Jay Kumar', 'male', '25', '2023-05-20', 'jay1@gmail.com', '8569236589', 'cavity', 8, 'Ahmednagar', 'Failed'),
(26, 14, 'Omkar Ghodechor', 'male', '25', '2023-05-24', 'ghodechoromkar@gmail.com', '8999605892', 'No', 8, 'pune', 'Complete\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int NOT NULL,
  `full_name` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `qualification` varchar(45) NOT NULL,
  `specialist` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobno` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `full_name`, `dob`, `qualification`, `specialist`, `email`, `mobno`, `password`) VALUES
(1, 'Omkar Ghodechor', '2001-06-24', 'MBBS', 'All', 'ghodechoromkar@gmail.com', '8999605892', 'omkar'),
(3, 'CM', '2023-02-02', 'MBBS', 'General Surgery', 'cm@gmail.com', '5645654582', 'cm'),
(4, 'Shivam Telore', '2023-02-03', 'MHBS', 'gyno', 'st@gmail.com', '9623612222', 'st'),
(5, 'Shriram', '2023-02-03', 'MHBS', 'Demotologist', 'sg@gmail.com', '9623612222', 'shriram'),
(6, 'Mahesh G', '2023-02-22', 'BHMS', 'Demotologist', 'Mahesh@gmail.com', '8956478569', 'mahesh'),
(7, 'OG', '2023-02-04', 'MHBS 2', 'Fever Specialist', 'og@gmail.com', '8520369741', 'og'),
(8, 'Rahul Pawal 2', '2000-02-16', 'MD', 'dentist', 'rahul22@gmail.com', '8956874589', 'rahul123'),
(11, 'Suhani S', '1996-11-20', 'MHBS', 'gyno', 'suhani@gmail.com', '9839393939', 'suhani1');

-- --------------------------------------------------------

--
-- Table structure for table `reception`
--

CREATE TABLE `reception` (
  `rid` int NOT NULL,
  `full_name` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `qualification` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobno` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `id` int NOT NULL,
  `spec_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`id`, `spec_name`) VALUES
(1, 'dentist'),
(2, 'Cardiology'),
(3, 'Demotologist'),
(4, 'Fever Specialist'),
(5, 'heard'),
(6, 'All'),
(7, 'Heart'),
(8, 'General Surgery'),
(9, 'gyno'),
(10, 'Anesthesiologist'),
(11, 'Blood Test');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int NOT NULL,
  `full_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Omkar Ghodechor', 'ghodechoromkar@gmail.com', 'om'),
(2, 'Omkar Raje', 'ghodechoromkar0744@gmail.com', 'omkar123'),
(3, 'Omkar', 'ghodechoromkar@gmail.com', 'omk'),
(4, 'Omkar Ghodechor', 'ghodechoromkar@gmail.com', 'om'),
(5, 'CM', 'cm@gmail.com', 'CM123'),
(6, 'Shivam Telore', 'shivam@gmail.com', '123'),
(7, 'Mahesh', 'Mahesh@gmail.com', 'mahesh'),
(8, 'Shriram Telore', 'shriram987@gmail.com', 'shriram'),
(9, 'Raj Kumar', 'raj1@gmail.com', 'raj1'),
(10, 'Jay Kumar', 'jay1@gmail.com', 'jay1'),
(11, 'Ram', 'ram@gmail.com', 'ram123'),
(12, 'Miller', 'miller@gmail.com', 'miller1'),
(13, 'non', 'non@gmail.com', 'non'),
(14, 'Nilesh Borkar', 'nilesh@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid_idx` (`user_id`),
  ADD KEY `did_idx` (`doctor_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reception`
--
ALTER TABLE `reception`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reception`
--
ALTER TABLE `reception`
  MODIFY `rid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `did` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uid` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
