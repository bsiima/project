-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2020 at 03:40 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(225) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `contact` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `item_name` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `transport` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `role` varchar(225) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `username`, `password`, `email`, `role`, `created_at`, `updated_at`) VALUES
(1, 'brenda', 'nuwa', 'brenda', '', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'peace', 'nuwa', 'peace1', '123', 'peace@gmail.com', '', '2020-06-11 23:28:19', '0000-00-00 00:00:00'),
(4, '', '', '', '', '', '', '2020-06-11 23:31:25', '0000-00-00 00:00:00'),
(5, 'Freedom', 'Asiimwe', 'freed', 'free', 'freea@gmail.com', '', '2020-06-12 00:28:58', '0000-00-00 00:00:00'),
(6, 'brenda', 'nuwasiima', 'brenda\'s shoes', '123', 'nuw@hjhk.com', '', '2020-06-13 10:39:51', '0000-00-00 00:00:00'),
(7, 'brenda', 'nuwasiima', 'brenda\'s shoes', '123', 'nuw@hjhk.com', '', '2020-06-13 10:43:36', '0000-00-00 00:00:00'),
(8, 'brenda', 'nuwasiima', 'brenda\'s shoes', '$2y$10$/a90AletfWemvelIefwBkeM6PQqx0t2zR6LIjpNQcfthW/K48jEGm', 'nuw@hjhk.com', '', '2020-06-13 10:44:47', '0000-00-00 00:00:00'),
(9, 'patrick', 'omond', 'patrick', '$2y$10$Z5Vh57ScLjq0d5aBhAVJMOblMVn9mHR5UoZblG1Xz3E/rISx93I6a', 'djsj@jklj.com', 'admin', '2020-06-13 10:48:40', '0000-00-00 00:00:00'),
(10, 'alex', 'bree', 'alex', '$2y$10$JjhRlQu82L2UEPRj.TIGNuCT.k3FJ.EEtu4sB0iEvgGRazvv1BPq6', 'nuw@hjhk.com', 'user', '2020-06-13 11:25:56', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
