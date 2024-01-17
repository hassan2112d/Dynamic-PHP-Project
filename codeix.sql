-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 03:30 AM
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
-- Database: `codeix`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `added_on`) VALUES
(1, 'Python', 'Python is a good language and used for machine learning.Ai has been working on python and chatgpt is also made on python.', '2023-10-21 12:31:30'),
(2, 'java', 'Java is a OOP LANGUAGE and used and based on classes and objects it is an object oriented language.', '2023-10-21 12:40:07'),
(3, 'Typescript', 'Typescript is make on javascript', '2023-12-12 02:25:20'),
(4, 'flutter', 'it is language which makes the applications.', '2024-01-09 23:30:41'),
(5, 'DSA', 'it is the cs education related to the alghorithums.', '2024-01-09 23:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment_content` varchar(2000) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_content`, `thread_id`, `comment_user_id`, `comment_time`) VALUES
(25, 'hii . My name is hassan . I can solve your problem easily.\r\n', 7, 12, '2023-12-17 18:23:43'),
(26, 'hello', 7, 14, '2024-01-05 21:01:02'),
(28, '&ltscript&gtalert(\"helloworld\");&lt/script&gt', 7, 14, '2024-01-09 10:43:42'),
(29, 'yes i know that', 12, 16, '2024-01-17 01:32:10'),
(30, 'yes i know ', 13, 17, '2024-01-17 02:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

CREATE TABLE `thread` (
  `thread_id` int(11) NOT NULL,
  `thread_name` varchar(255) NOT NULL,
  `thread_desc` varchar(255) NOT NULL,
  `thread_cat_id` int(255) NOT NULL,
  `thread_user_id` int(255) NOT NULL,
  `added_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thread`
--

INSERT INTO `thread` (`thread_id`, `thread_name`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `added_on`) VALUES
(7, 'I have a problem ', 'Problem is related to the library of python.', 1, 11, '2023-12-17 23:17:10'),
(8, 'debugging', 'Having problem in doing debugging.', 1, 11, '2024-01-06 01:04:16'),
(10, 'Libararuy Issue in python', 'I am facing library issue in tkinter library\r\n', 1, 14, '2024-01-06 01:31:11'),
(11, 'PHP', 'Curl api probelm', 1, 14, '2024-01-06 02:04:29'),
(12, 'Java', 'Java is a object oriented programming language.', 2, 16, '2024-01-17 06:31:49'),
(13, 'python', 'regular expression caan be done in python', 1, 17, '2024-01-17 07:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `added_on`) VALUES
(11, 'hassan', 'hass@gmail.com', '$2y$10$jcN8xFLX/QTxtLnQ9GHSd.OUefJDYWDRhJ.rt2vp3u/imgacVb5u.', '2023-12-18 00:34:49'),
(12, 'hiii', 'e@gmail.com', '$2y$10$T6if6em38RXoE6WGvPlaAeHsYeAGGPeWi2NiZ6XcIZzCopyY6j55C', '2023-12-18 00:48:52'),
(13, 'my', 'm@gmail.com', '$2y$10$qUXFANpiObIb9hNNDbf61eXhSHzkjAJIOLdjiMz4ZEKBvVxNLOCeK', '2023-12-18 00:55:23'),
(14, 'hassan', 'h@gmail.com', '$2y$10$Oo//sCUG3MQIKdQUmfcPYuwBlgxJ3wkKERXIuPSazQ9FYsoS2HUY.', '2024-01-04 14:59:06'),
(15, 'MAHA', 'MAHAMF544@GMAIL.COM', '$2y$10$pk.A4c.1QhSTc6kAbvvzWu/htrfmQa3/.Ml/vdlHulztzqZ9YURhC', '2024-01-16 17:05:58'),
(16, 'hassan', 'h234@gmail.com', '$2y$10$Bw90ERMWIL/jAU73nHjHPuFtlvqi6lyj/my5nZUretq17tGGhvMn.', '2024-01-17 01:30:54'),
(17, 'ali', 'a@gmail.com', '$2y$10$UGTnmzf.iYdO9oJjb331ce4N9jEyCGEMUmpReUC5qFaqmyJNgbqqe', '2024-01-17 02:08:54'),
(18, 'feroz', 'f@gmail.com', '$2y$10$MwZMBy1Xg2B0vbBYUZPVSetDOwvL6MU51E9fu2rpZArWbnwrQ194W', '2024-01-17 02:28:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`thread_id`);
ALTER TABLE `thread` ADD FULLTEXT KEY `thread_name` (`thread_name`,`thread_desc`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `thread`
--
ALTER TABLE `thread`
  MODIFY `thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
