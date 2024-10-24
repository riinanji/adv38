-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 02:31 AM
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
-- Database: `adv_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_code`, `created_at`, `updated_at`) VALUES
(1, 'Computer Science', '', '2024-10-23 09:33:10', '2024-10-23 09:33:10'),
(2, 'Criminal', '', '2024-10-23 10:39:07', '2024-10-23 10:39:07'),
(3, 'Criminal', '', '2024-10-23 10:39:56', '2024-10-23 10:39:56'),
(4, 'Criminal', '', '2024-10-23 10:46:22', '2024-10-23 10:46:22'),
(5, 'Criminal', '', '2024-10-23 10:46:47', '2024-10-23 10:46:47'),
(6, 'Criminal', '', '2024-10-23 10:48:04', '2024-10-23 10:48:04'),
(7, 'Criminal', '', '2024-10-23 10:49:02', '2024-10-23 10:49:02'),
(8, 'Criminal', '', '2024-10-23 10:57:42', '2024-10-23 10:57:42'),
(9, 'Criminal', '', '2024-10-23 10:59:13', '2024-10-23 10:59:13'),
(10, 'Criminal', '', '2024-10-23 10:59:20', '2024-10-23 10:59:20'),
(11, 'Criminal', '', '2024-10-23 11:02:03', '2024-10-23 11:02:03'),
(12, 'Psychology', '', '2024-10-23 11:04:16', '2024-10-23 11:04:16'),
(13, 'Psychology', '', '2024-10-23 11:04:26', '2024-10-23 11:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `section_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `created_at`, `updated_at`) VALUES
(1, 'A1', '2024-10-23 09:33:19', '2024-10-23 09:33:19'),
(2, 'Bakukang', '2024-10-23 10:38:57', '2024-10-23 10:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(255) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `gender`, `section_id`, `course_id`, `year`, `created_at`, `updated_at`, `email`, `instructor_id`) VALUES
(3, 'Reynan', 'Busano', 'Male', 1, 1, 4, '2024-10-23 09:57:40', '2024-10-23 10:26:12', '2020198@nbsc.edu', 1),
(4, 'Ariel', 'Sumantin', 'Male', 1, 1, 3, '2024-10-23 10:00:04', '2024-10-23 10:26:14', '20211276@nbsc.edu.ph', 1),
(5, 'Ariel', 'Sumantin', 'Male', 1, 1, 3, '2024-10-23 10:04:09', '2024-10-23 10:26:31', '20211276@nbsc.edu.ph', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('admin','instructor') NOT NULL DEFAULT 'instructor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `role`) VALUES
(2, 'ADMIN', 'admin@gmail.com', '$2y$10$2OIX2tOMm300i8nU7uOa4u3.9eSMigIl6swD4WXbOqU4th2GtNMKe', '2024-10-23 09:29:36', 'admin'),
(3, 'Instructor1', 'instructor1@gmai.com', '$2y$10$L1hBuzIKd/ZVCvSYWc.UX.2EktLtp6s491cBs.wDlBlSaScUECtuK', '2024-10-23 09:30:59', 'instructor'),
(4, 'chanchan', 'user@gmail.com', '$2y$10$hVHx8gd9pJ3RWsjqYm44E.9BHqusW75JccFOTsJ4r0Agpdu0dw3oG', '2024-10-23 09:55:39', 'instructor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `fk_instructor` (`instructor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_instructor` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`),
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
