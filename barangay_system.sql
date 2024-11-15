-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 02:07 PM
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
-- Database: `barangay_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `activity_type` varchar(255) NOT NULL,
  `activity_details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `user_id`, `activity_type`, `activity_details`, `created_at`) VALUES
(1, '1', 'Login', 'User admin logged in successfully as admin.', '2024-11-10 02:35:41'),
(2, '2', 'Login', 'User joelene07 logged in successfully as staff.', '2024-11-10 03:50:14'),
(3, '2', 'Login', 'User joelene07 logged in successfully as staff.', '2024-11-10 03:52:55'),
(4, '2', 'Login', 'User Joezer Kallai Aleño logged in successfully as staff.', '2024-11-10 03:56:07'),
(5, '2', 'Login', 'User Joezer Kallai Aleño logged in successfully as staff.', '2024-11-10 04:44:23'),
(6, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-10 04:46:38'),
(7, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-10 04:50:45'),
(8, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-10 04:54:28'),
(9, '2', 'Login', 'User Joezer Kallai Aleño logged in successfully as staff.', '2024-11-10 04:56:01'),
(10, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-10 04:59:01'),
(11, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-10 05:00:14'),
(12, '2', 'Login', 'User Joezer Kallai Aleño logged in successfully as staff.', '2024-11-10 05:02:42'),
(13, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-10 05:04:52'),
(14, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-10 05:05:57'),
(15, '1', 'Logout', 'User Admin logged out successfully as admin.', '2024-11-10 05:10:17'),
(16, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-10 05:10:51'),
(17, '2', 'Login', 'User Joezer Kallai Aleño logged in successfully as staff.', '2024-11-10 05:19:05'),
(18, '2', 'Login', 'User Joezer Kallai Aleño logged in successfully as staff.', '2024-11-10 13:08:49'),
(19, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-11 04:12:28'),
(20, '1', 'Logout', 'User admin logged out successfully as admin.', '2024-11-11 04:20:02'),
(21, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-11 04:20:12'),
(22, '1', 'Logout', 'User admin logged out successfully as admin.', '2024-11-11 04:20:16'),
(23, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-11 04:51:34'),
(24, '1', 'Logout', 'User admin logged out successfully as admin.', '2024-11-11 04:52:07'),
(25, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-11 04:52:17'),
(26, '1', 'Logout', 'User admin logged out successfully as admin.', '2024-11-11 04:56:05'),
(27, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-11 04:56:24'),
(28, '1', 'Logout', 'User admin logged out successfully as admin.', '2024-11-11 05:03:20'),
(29, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-11 05:03:33'),
(30, '1', 'Logout', 'User admin logged out successfully as admin.', '2024-11-11 05:13:36'),
(31, '2', 'Login', 'User Joezer Kallai Aleño logged in successfully as staff.', '2024-11-11 05:13:44'),
(32, '2', 'Logout', 'User joelene07 logged out successfully as staff.', '2024-11-11 05:14:26'),
(33, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-11 05:14:32'),
(34, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-11 06:07:49'),
(35, '1', 'Logout', 'User admin logged out successfully as admin.', '2024-11-11 06:09:50'),
(36, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-11 06:10:12'),
(37, '1', 'Add Staff', 'Admin admin added a new staff member: Joezer Aleño (Role: staff)', '2024-11-11 06:13:28'),
(38, '1', 'Logout', 'User admin logged out successfully as admin.', '2024-11-11 06:14:23'),
(39, '6', 'Login', 'User Joezer Aleño logged in successfully as staff.', '2024-11-11 06:14:55'),
(40, '6', 'Add Staff', 'alejoezer@gmail.com added a new staff named: Arlene Poche (Role: staff)', '2024-11-11 06:15:43'),
(41, '6', 'Logout', 'User alejoezer@gmail.com logged out successfully as staff.', '2024-11-11 06:15:48'),
(42, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-11 06:15:54'),
(43, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-11 10:52:30'),
(44, '1', 'Add Staff', ' added a new staff named: Joezer Aleño (Role: staff)', '2024-11-11 10:57:18'),
(45, '1', 'Add Staff', ' added a new staff named: Joelene Poche (Role: staff)', '2024-11-11 10:58:45'),
(46, '1', 'Add Staff', 'admin added a new staff named: Joelenes (Role: staff)', '2024-11-11 11:03:26'),
(47, '1', 'Logout', 'User admin logged out successfully as admin.', '2024-11-11 11:06:16'),
(48, '8', 'Login', 'User Joezer Aleño logged in successfully as staff.', '2024-11-11 11:06:21'),
(49, '8', 'Add Staff', 'joelene07 added a new staff named: fdgrdg (Role: staff)', '2024-11-11 11:06:46'),
(50, '8', 'Logout', 'User joelene07 logged out successfully as staff.', '2024-11-11 11:06:53'),
(51, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-11 11:07:02'),
(52, '1', 'Restore Database', 'Admin ID 1 restored the database.', '2024-11-12 07:31:43'),
(53, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-13 11:06:37'),
(54, '1', 'Login', 'User  logged in successfully as admin.', '2024-11-13 14:12:26'),
(55, '1', 'Add Voter', 'admin added a new voter: Joezer Kallai L. Aleño (Voter ID: 2024-0001-0825)', '2024-11-14 10:43:35'),
(56, '1', 'Add Voter', 'admin added a new voter: Joe Kallai L. Aleño (Voter ID: 2024-0002-0825)', '2024-11-14 10:44:26'),
(57, '1', 'Add Voter', 'admin added a new voter: Joez Kallai L. Aleño (Voter ID: 2024-0003-0205)', '2024-11-14 10:49:44'),
(58, '1', 'Add Voter', 'admin added a new voter: Jo Kallai L. Aleño (Voter ID: 2024-0004-0825)', '2024-11-14 10:50:16'),
(59, '1', 'Add Voter', 'admin added a new voter: Joelene Aleño (Voter ID: 2024-0005-0818)', '2024-11-14 12:38:24'),
(60, '1', 'Add Voter', 'admin added a new voter: Joelenes Aleño (Voter ID: 2024-0006-0818)', '2024-11-14 12:39:04'),
(61, '1', 'Add Voter', 'admin added a new voter: Joeleness Aleño (Voter ID: 2024-0007-0818)', '2024-11-14 12:40:06'),
(62, '1', 'Add Voter', 'admin added a new voter: Joelenesss Aleño (Voter ID: 2024-0008-0218)', '2024-11-14 12:40:26'),
(63, '1', 'Add Voter', 'admin added a new voter: Joezer Aleño (Voter ID: 2024-0001-0825)', '2024-11-14 11:07:31'),
(64, '1', 'Add Voter', 'admin added a new voter: Joezer Kallai Aleño (Voter ID: 2024-0002-0825)', '2024-11-14 11:08:09'),
(65, '1', 'Add Voter', 'admin added a new voter: Joezer Kallai L. Aleño (Voter ID: 2024-0003-0825)', '2024-11-15 10:21:39'),
(66, '1', 'Add Voter', 'admin added a new voter: Joezer Kallai L. Aleño (Voter ID: 2024-0001-0825)', '2024-11-15 10:44:09'),
(67, '1', 'Add Voter', 'admin added a new voter: Joezer L. Aleño (Voter ID: 2024-0002-0825)', '2024-11-15 10:44:27'),
(68, '1', 'Add Voter', 'admin added a new voter: Joezer Aleño (Voter ID: 2024-0003-0825)', '2024-11-15 10:46:36'),
(69, '1', 'Add Voter', 'admin added a new voter: Joezer Kallai L. Aleño (Voter ID: 2024-0001-0825)', '2024-11-15 10:49:28'),
(70, '1', 'Add Voter', 'admin added a new voter: Joezer Kallai Aleño (Voter ID: 2024-0002-0825)', '2024-11-15 10:49:53'),
(71, '1', 'Add Voter', 'admin added a new voter: Joezers Aleño (Voter ID: 2024-0003-0825)', '2024-11-15 11:06:09'),
(72, '1', 'Add Voter', 'admin added a new voter: Joezerss Aleño (Voter ID: 2024-0004-0528)', '2024-11-15 11:06:28'),
(73, '1', 'Add Voter', 'admin added a new voter: Joezerss Aleño (Voter ID: 2024-0001-0525)', '2024-11-15 11:13:16'),
(74, '1', 'Add Voter', 'admin added a new voter: Joezerss Aleño (Voter ID: 2024-0002-0825)', '2024-11-15 11:13:30'),
(75, '1', 'Add Voter', 'admin added a new voter: Joezersss Aleño (Voter ID: 2024-0003-0825)', '2024-11-15 11:14:31'),
(76, '1', 'Add Voter', 'admin added a new voter: Joezerss Aleño (Voter ID: 2024-0002-0825)', '2024-11-15 11:16:53'),
(77, '1', 'Add Candidate', 'admin added a new candidate: Jess Estrada (Position: Barangay Chairman)', '2024-11-15 11:43:02'),
(78, '1', 'Add Candidate', 'admin added a new candidate: Arlene Poche (Position: Barangay Secretary)', '2024-11-15 11:45:51'),
(79, '1', 'Update Admin Account', 'admin updated the admin account with ID 1.', '2024-11-15 12:07:38'),
(80, '1', 'Update Admin Account', 'admin updated the admin account with ID 1.', '2024-11-15 12:07:46'),
(81, '1', 'Update Admin Account', 'admin updated the admin account with ID 1.', '2024-11-15 12:07:54'),
(82, '1', 'Update Admin Account', 'admin updated the admin account with ID 1.', '2024-11-15 12:16:35'),
(83, '1', 'Update Admin Account', 'admin updated the admin account with ID 1.', '2024-11-15 12:16:39'),
(84, '1', 'Update Admin Account', 'admin updated the admin account with ID 1.', '2024-11-15 12:16:44'),
(85, '1', 'Update Admin Account', 'admin updated the admin account with ID 1.', '2024-11-15 12:16:48'),
(86, '1', 'Update Admin Account', 'admin updated the admin account with ID 1.', '2024-11-15 12:16:57'),
(87, '1', 'Update Admin Account', 'admin updated the admin account with ID 1.', '2024-11-15 12:17:11'),
(88, '1', 'Add Staff', 'admin added a new staff named: hgjyjy (Role: staff)', '2024-11-15 12:40:01'),
(89, '1', 'Add Voter', 'admin added a new voter: Winona Mendoza (Voter ID: 2024-0003-1016)', '2024-11-15 12:46:56'),
(90, '1', 'Add Candidate', 'admin added a new candidate: Winona Mendoza (Position: SK Chairman)', '2024-11-15 12:51:11'),
(91, '1', 'Update Admin Account', 'admin updated the admin account with ID 1.', '2024-11-15 12:53:50'),
(92, '1', 'Update Admin Account', 'admin updated the admin account with ID 1.', '2024-11-15 12:54:06'),
(93, '1', 'Restore Database', 'User restored the database.', '2024-11-15 12:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `name` varchar(295) NOT NULL,
  `image` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` enum('admin','staff') NOT NULL DEFAULT 'staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `image`, `username`, `email`, `password`, `status`, `created_at`, `role`) VALUES
(1, '', '', 'admins', 'admin@gmail.com', 'admin123', 0, '2024-11-01 12:08:59', 'admin'),
(8, 'Joezer Aleño', 'imagestaff/0c07226d00000578-0-image-a-23_1425939890281.jpg', 'joelene07', 'alejoezer@gmail.com', 'joelene123', 0, '2024-11-11 10:57:18', 'staff'),
(9, 'Joelene Poche', 'imagestaff/289947656_359746662923854_2925657606779527762_n.jpg', 'joelene0718', 'alejoe@gmail.com', 'joelene1234', 0, '2024-11-11 10:58:45', 'staff'),
(10, 'Joelenes', 'imagestaff/Capture.PNG', 'joelene071825', 'alejoez@gmail.com', 'joelene', 0, '2024-11-11 11:03:26', 'staff'),
(11, 'fdgrdg', 'imagestaff/Capture.PNG', 'gftgt', 'alejoeze@gmail.com', 'gfhthtb', 0, '2024-11-11 11:06:46', 'staff'),
(12, 'hgjyjy', 'imagestaff/0c07226d00000578-0-image-a-23_1425939890281.jpg', 'gjyj', 'alejoezghte@gmail.com', 'thththh', 0, '2024-11-15 12:40:01', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `platform` text NOT NULL,
  `party_list` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `position`, `age`, `sex`, `platform`, `party_list`, `image`, `status`, `created_at`) VALUES
(1, 'Jess Estrada', 'Barangay Chairman', 72, 'Male', 'Bahala na kayo sa platform ko', 'Party', 'imagecandidates/0c07226d00000578-0-image-a-23_1425939890281.jpg', 0, '2024-11-15 11:43:02'),
(2, 'Arlene Poche', 'Barangay Secretary', 35, 'Female', 'Pag ako binoto niyo ede mas okay haha', 'Independent', 'imagecandidates/mike-kenneally-zlwDJoKTuA8-unsplash.jpg', 0, '2024-11-15 11:45:51'),
(3, 'Winona Mendoza', 'SK Chairman', 25, 'Female', 'Basta bahala', 'Bahala na din', 'imagecandidates/0c07226d00000578-0-image-a-23_1425939890281.jpg', 0, '2024-11-15 12:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voter_id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `fingerprint_data` text DEFAULT NULL,
  `voter_image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voter_id`, `name`, `address`, `birthdate`, `fingerprint_data`, `voter_image`, `status`, `created_at`) VALUES
(19, '2024-0001-0525', 'Joezerss Aleño', 'Purok 5', '2000-05-25', '', 'imagesvoters/0c07226d00000578-0-image-a-23_1425939890281.jpg', 0, '2024-11-15 11:13:16'),
(22, '2024-0002-0825', 'Joezerss Aleño', 'Purok 5', '2000-08-25', '', 'imagesvoters/0c07226d00000578-0-image-a-23_1425939890281.jpg', 0, '2024-11-15 11:16:53'),
(23, '2024-0003-1016', 'Winona Mendoza', '1147 Purok 3', '2021-10-16', '', 'imagesvoters/0c07226d00000578-0-image-a-23_1425939890281.jpg', 0, '2024-11-15 12:46:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
