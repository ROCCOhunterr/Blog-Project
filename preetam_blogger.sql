-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 05:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `preetam_blogger`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descri` text NOT NULL,
  `img` varchar(500) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `descri`, `img`, `userName`, `blog_id`, `created_at`) VALUES
(1, 'Healthcare', 'Access to health care may vary across countries, communities, and individuals, influenced by social and economic conditions as well as health policies. Providing health care services means \"the timely use of personal health services to achieve the best possible health outcomes\".[3] Factors to consider in terms of health care access include financial limitations (such as insurance coverage), geographical and logistical barriers (such as additional transportation costs and the possibility to take paid time off work to use such services), sociocultural expectations, and personal limitations (lack of ability to communicate with health care providers, poor health literacy, low income).[4] Limitations to health care services affects negatively the use of medical services, the efficacy of treatments, and overall outcome (well-being, mortality rates).', 'Capture.PNG', 'Preetam', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `userName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `reply_id`, `post_id`, `userName`) VALUES
(1, 'nice', 0, 1, 'Shivam'),
(2, 'thanks', 0, 1, 'Preetam');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(250) NOT NULL,
  `birthdayDate` date NOT NULL,
  `gender` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `choose` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `userName`, `password`, `birthdayDate`, `gender`, `email`, `phone`, `choose`) VALUES
(1, 'Preetam', '827ccb0eea8a706c4c34a16891f84e7b', '2023-04-20', 'option2', 'preetam183016@gmail.com', '1234567890', '1'),
(3, 'Shivam', '827ccb0eea8a706c4c34a16891f84e7b', '2023-04-01', 'option2', 'shivam@gmail.com', '9598183016', '2'),
(4, 'Shivam', '827ccb0eea8a706c4c34a16891f84e7b', '2023-04-01', 'option2', 'shivam@gmail.com', '9598183016', '2'),
(5, 'Yogesh', '827ccb0eea8a706c4c34a16891f84e7b', '2023-04-06', 'option2', 'yogesh@gmail.com', '1234669587', '1'),
(6, 'Yogesh', '827ccb0eea8a706c4c34a16891f84e7b', '2023-04-06', 'option2', 'yogesh@gmail.com', '1234669587', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
