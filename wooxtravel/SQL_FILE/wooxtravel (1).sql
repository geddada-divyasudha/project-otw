-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 08:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wooxtravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(4) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(1, 'admin.first@admin.first.com', 'admin.first@admin.first.com', '$2y$10$Qkx2Jukrx5spRFVT25jJrOa6QFXj2UTxlSi4pVh9T2vDbd8KQ2LtK', '2023-08-17 04:32:51'),
(3, 'ece.ece@ece.com', 'ece.ece@ece.com', '$2y$10$Qkx2Jukrx5spRFVT25jJrOa6QFXj2UTxlSi4pVh9T2vDbd8KQ2LtK', '2023-08-17 04:52:07'),
(9, 'admin_first.admin_first', 'admin.first.admin.first@gmail.com', '$2y$10$Qkx2Jukrx5spRFVT25jJrOa6QFXj2UTxlSi4pVh9T2vDbd8KQ2LtK', '2023-08-17 04:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone_number` int(30) NOT NULL,
  `num_of_geusts` int(10) NOT NULL,
  `checkin_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `destination` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `city_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `payment` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `phone_number`, `num_of_geusts`, `checkin_date`, `destination`, `status`, `city_id`, `user_id`, `payment`, `created_at`) VALUES
(1, 'Mohamed Hassan', 2023333, 5, '0000-00-00 00:00:00.000000', 'Berlin', 'Pending', 3, 1, '', '2023-08-11 14:59:43'),
(2, 'John Doe', 2929333, 2, '2023-11-05 05:22:52.831375', 'Frankfurt', 'Pending', 4, 1, '', '2023-08-11 14:59:43'),
(3, 'vasu', 3434343, 3, '2023-11-05 05:22:54.789393', 'Berlin', 'Pending', 3, 1, '', '2023-08-11 16:15:58'),
(4, 'pavan', 988845, 5, '2023-10-18 08:20:08.502958', 'Alex', 'Pending', 2, 1, '', '2023-08-11 16:23:29'),
(5, 'bndc', 2147483647, 5, '2023-08-17 18:30:00.000000', 'Frankfurt', 'Pending', 4, 3, '2500', '2023-08-17 08:51:38'),
(7, 'vasu', 2147483647, 1, '2023-08-17 10:43:11.745244', 'New York', 'Pending', 5, 4, '600', '2023-08-17 10:42:35'),
(8, 'bndc', 2147483647, 1, '2023-11-05 05:22:35.700858', 'New York', 'Booked Successfully', 5, 4, '600', '2023-08-17 14:00:04'),
(9, 'vasu', 2147483647, 1, '2023-08-21 18:30:00.000000', 'New York', 'Pending', 5, 4, '600', '2023-08-21 11:06:39'),
(10, 'vasu', 2147483647, 1, '2023-10-25 18:30:00.000000', 'New York', 'Pending', 5, 3, '600', '2023-10-18 05:22:00'),
(11, 'vasu', 2147483647, 1, '2023-10-18 08:20:42.390179', 'Giza', 'Pending', 1, 4, '200', '2023-10-18 05:31:36'),
(12, 'vasu', 2147483647, 1, '2023-10-24 18:30:00.000000', 'New York', 'Pending', 5, 4, '600', '2023-10-19 08:17:19'),
(13, 'vasu', 2147483647, 1, '2023-10-24 18:30:00.000000', 'New York', 'Pending', 5, 4, '600', '2023-10-19 08:19:46'),
(14, 'Alexandria', 2147483647, 1, '2023-10-25 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 08:20:54'),
(15, 'Alexandria', 2147483647, 1, '2023-10-25 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 08:33:34'),
(16, 'vasu', 2147483647, 1, '2023-10-26 18:30:00.000000', 'New York', 'Pending', 5, 4, '600', '2023-10-19 12:52:54'),
(17, 'SAMPARA BHAVYA MANI SITA SATWIKA', 2147483647, 1, '2023-10-19 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 12:56:00'),
(18, 'Alexandria', 2147483647, 1, '2023-10-19 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 13:07:33'),
(19, 'vasu', 2147483647, 1, '2023-10-27 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 13:20:40'),
(20, 'Alexandria', 2147483647, 1, '2023-10-27 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 13:22:31'),
(21, 'vasu', 2147483647, 1, '2023-10-22 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 13:25:45'),
(22, 'vasu', 2147483647, 1, '2023-10-20 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 13:28:44'),
(23, 'vasu', 2147483647, 1, '2023-10-24 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 13:30:12'),
(24, 'vasu', 2147483647, 1, '2023-10-19 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 13:31:16'),
(25, 'vasu', 2147483647, 1, '2023-10-26 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 13:37:35'),
(26, 'vasu', 2147483647, 1, '2023-10-26 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 13:39:58'),
(27, 'vasu', 2147483647, 1, '2023-10-19 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 13:41:52'),
(28, 'vasu', 2147483647, 1, '2023-10-20 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 13:45:00'),
(29, 'vasu', 2147483647, 1, '2023-10-30 11:40:48.256396', 'Giza', 'Booked Successfully', 1, 4, '200', '2023-10-19 13:47:45'),
(30, 'vasu', 2147483647, 1, '2023-10-25 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-19 18:01:23'),
(31, 'vasu', 2147483647, 1, '2023-10-20 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-20 01:53:16'),
(32, 'vasu', 2147483647, 1, '2023-10-24 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-20 01:58:25'),
(33, 'vasu', 2147483647, 1, '2023-10-25 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-20 02:40:42'),
(34, 'New York', 2147483647, 1, '2023-10-29 18:30:00.000000', 'Frankfurt', 'Pending', 4, 4, '500', '2023-10-27 14:46:33'),
(35, 'vasu', 2147483647, 1, '2023-10-30 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-29 15:53:06'),
(36, 'vasu', 2147483647, 1, '2023-10-30 18:30:00.000000', 'Giza', 'Pending', 1, 3, '200', '2023-10-30 12:55:55'),
(37, 'vasu', 2147483647, 1, '2023-10-30 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-30 13:31:21'),
(38, 'vasu', 2147483647, 1, '2023-10-30 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-30 13:36:08'),
(39, 'vasu', 2147483647, 1, '2023-10-30 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-30 13:41:57'),
(40, 'vasu', 2147483647, 1, '2023-10-30 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-30 13:54:54'),
(41, 'vasu', 2147483647, 1, '2023-10-30 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-10-30 13:59:21'),
(42, 'vasu', 2147483647, 1, '2023-11-03 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-01 13:24:05'),
(43, 'vasu', 2147483647, 1, '2023-11-03 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-02 13:16:13'),
(44, 'vasu', 2147483647, 1, '2023-11-03 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-02 13:29:39'),
(45, 'vasu', 2147483647, 1, '2023-11-03 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-02 13:40:26'),
(46, 'vasu', 2147483647, 1, '2023-11-05 04:32:30.017611', 'Giza', 'Booked Successfully', 1, 4, '200', '2023-11-04 20:34:44'),
(47, 'vasu', 33333333, 1, '2023-11-05 06:28:22.393943', 'Giza', 'Booked Successfully', 1, 4, '200', '2023-11-05 06:24:23'),
(48, 'vasu', 2147483647, 1, '2023-11-07 18:30:00.000000', 'Alex', 'Pending', 2, 4, '600', '2023-11-06 16:57:42'),
(49, 'vasu', 2147483647, 1, '2023-11-07 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-06 17:00:47'),
(50, 'vasu', 2147483647, 1, '2023-11-07 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-06 17:06:23'),
(51, 'vasu', 2147483647, 1, '2023-11-07 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-06 17:09:05'),
(52, 'vasu', 2147483647, 1, '2023-11-07 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-06 17:11:26'),
(53, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:43:34'),
(54, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:44:03'),
(55, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:45:27'),
(56, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:45:46'),
(57, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:46:03'),
(58, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:48:12'),
(59, 'vasu', 2147483647, 1, '2023-11-22 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:48:23'),
(60, 'vasu', 2147483647, 1, '2023-11-22 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:49:52'),
(61, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:50:03'),
(62, 'vasu', 2147483647, 1, '2023-11-22 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:54:00'),
(63, 'vasu', 2147483647, 1, '2023-11-22 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:54:51'),
(64, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:55:01'),
(65, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:56:10'),
(66, 'vasu', 2147483647, 1, '2023-11-20 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 09:56:20'),
(67, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Alex', 'Pending', 2, 4, '600', '2023-11-20 10:03:46'),
(68, 'vasu', 2147483647, 2, '2023-11-20 18:30:00.000000', 'Alex', 'Pending', 2, 4, '1200', '2023-11-20 10:04:03'),
(69, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 10:10:07'),
(70, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 10:10:13'),
(71, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 10:12:19'),
(72, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 11:14:47'),
(73, 'vasu', 2147483647, 1, '2023-11-22 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 11:19:04'),
(74, 'vasu', 2147483647, 2, '2023-11-22 18:30:00.000000', 'Frankfurt', 'Pending', 4, 4, '1000', '2023-11-20 11:21:49'),
(75, 'vasu', 2147483647, 2, '2023-11-22 18:30:00.000000', 'Frankfurt', 'Pending', 4, 4, '1000', '2023-11-20 11:31:46'),
(76, 'vasu', 2147483647, 2, '2023-11-22 18:30:00.000000', 'Frankfurt', 'Pending', 4, 4, '1000', '2023-11-20 11:31:52'),
(77, 'vasu', 2147483647, 2, '2023-11-22 18:30:00.000000', 'Frankfurt', 'Pending', 4, 4, '1000', '2023-11-20 11:32:44'),
(78, 'vasu', 2147483647, 2, '2023-11-22 18:30:00.000000', 'Frankfurt', 'Pending', 4, 4, '1000', '2023-11-20 11:33:34'),
(79, 'vasu', 2147483647, 2, '2023-11-22 18:30:00.000000', 'Frankfurt', 'Pending', 4, 4, '1000', '2023-11-20 11:35:20'),
(80, 'vasu', 2147483647, 2, '2023-11-22 18:30:00.000000', 'Frankfurt', 'Pending', 4, 4, '1000', '2023-11-20 11:35:40'),
(81, 'vasu', 2147483647, 2, '2023-11-22 18:30:00.000000', 'Frankfurt', 'Pending', 4, 4, '1000', '2023-11-20 11:36:22'),
(82, 'vasu', 2147483647, 1, '2023-11-20 18:30:00.000000', 'Frankfurt', 'Pending', 4, 4, '500', '2023-11-20 11:36:35'),
(83, 'vasu', 2147483647, 2, '2023-11-23 18:30:00.000000', 'Frankfurt', 'Pending', 4, 4, '1000', '2023-11-20 11:37:59'),
(84, 'vasu', 2147483647, 1, '2023-11-20 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 11:40:08'),
(85, 'vasu', 2147483647, 1, '2023-11-20 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 11:51:08'),
(86, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 11:51:22'),
(87, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 11:53:54'),
(88, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 11:54:22'),
(89, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 11:56:04'),
(90, 'vasu', 2147483647, 1, '2023-11-22 18:30:00.000000', 'Berlin', 'Pending', 3, 4, '600', '2023-11-20 11:58:31'),
(91, 'vasu', 2147483647, 1, '2023-11-21 18:30:00.000000', 'Giza', 'Pending', 1, 3, '200', '2023-11-20 12:02:19'),
(92, 'vasu', 2147483647, 1, '2023-11-20 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 12:36:20'),
(93, 'satwika', 2147483647, 1, '2023-11-20 18:30:00.000000', 'Giza', 'Pending', 1, 4, '200', '2023-11-20 14:32:51'),
(94, 'satwika', 2147483647, 1, '2023-11-21 02:42:01.490648', 'Giza', 'Booked Successfully', 1, 4, '200', '2023-11-21 02:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `trip_days` int(4) NOT NULL,
  `price` varchar(4) NOT NULL,
  `country_id` int(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `image`, `trip_days`, `price`, `country_id`, `created_at`) VALUES
(1, 'Giza', 'offers-01.jpg', 4, '200', 1, '2023-08-11 14:23:58'),
(2, 'Alex', 'deals-01.jpg', 4, '600', 1, '2023-08-11 16:52:45'),
(4, 'Frankfurt', 'deals-01.jpg', 5, '500', 2, '2023-08-11 14:45:25'),
(5, 'New York', 'deals-02.jpg', 4, '600', 3, '2023-08-17 05:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `continent` varchar(200) NOT NULL,
  `population` varchar(30) NOT NULL,
  `territory` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `image`, `continent`, `population`, `territory`, `description`, `created_at`) VALUES
(1, 'Egypt', 'banner-01.jpg', 'Africa', '100', '41.290', 'Egypt is a North African country bordered by the Mediterranean Sea and Red Sea. It is famous for its ancient civilization, the Pharaohs, and iconic landmarks such as the Great Pyramids of Giza and Sphinx. The Nile River flows through Egypt, providing fertile land for agriculture. Egypt is predominantly Muslim and the official language is Arabic. Major industries include tourism, petroleum, textiles, and agriculture. Cairo is the capital and largest city, while Luxor and Aswan are popular tourist destinations. The country has a rich cultural heritage and is known for its vibrant music, dance, and cuisine.\r\n\r\n', '2023-08-11 14:18:21'),
(2, 'Germany', 'banner-02.jpg', 'Europe', '90', '275.40', 'Germany is a country located in central Europe. It is known for its rich history, diverse culture, and strong economy. Germany is the most populous country in the European Union, with Berlin as its capital. It is famous for its castles, beer festivals, and beautiful landscapes. Germany has a strong tradition in arts, science, and technology. The country is also a major global exporter and is home to large multinational companies. Germany has a high standard of living and is known for its efficient healthcare and education systems.\r\n\r\n', '2023-08-11 14:18:21'),
(4, 'USA', 'country-03.jpg', 'North America', '300 ', '400,4999', 'usa ia a great country', '2023-11-21 02:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `mypassword`, `created_at`) VALUES
(1, 'mohamed.Hassan@gmail.com', 'mohamed.Hassan@gmail.com', '$2Y$10$65CGA7.VMyPUZWRbL8GLS.Ylvyp3ff2WDliCIdLhu/MsYEIoCSgSG', '2023-08-11 14:07:51'),
(2, 'satwisatwi@gmail.com', 'satwisatwi', '$2y$10$Qkx2Jukrx5spRFVT25jJrOa6QFXj2UTxlSi4pVh9T2vDbd8KQ2LtK', '2023-08-11 16:46:22'),
(3, 'satwisatwi@gmail.com', 'satwisatwi', '$2y$10$DHbmyKV6mmVE5.GniRW9yuZi27qOhQz2pd.e8Gg8jZ1.qVYghJy5e', '2023-08-17 04:33:59'),
(4, 'ece.ece@ece.com', 'ece.ece@ece.com', '$2y$10$Qkx2Jukrx5spRFVT25jJrOa6QFXj2UTxlSi4pVh9T2vDbd8KQ2LtK', '2023-08-17 04:45:21'),
(5, 'sb-vsnoa26718932@personal.example.com', 'ramya', '$2y$10$iCvwSItDkSfQBbBvv1UfFOyqw.H1u3r4wRdLTiM1GYMhUIT.HwxZO', '2023-11-18 04:50:41'),
(6, 'sb-vsnoa26718932@personal.example.com', 'satwika', '$2y$10$5CK.LFpgTlRR7rHB6nyR.OydDM14VPCu/A8DrLvv6h2dnUHVKvmju', '2023-11-18 04:51:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
