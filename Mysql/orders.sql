-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Feb 02, 2024 at 07:01 PM
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
-- Database: `orders`
--

-- --------------------------------------------------------

--
-- Table structure for table `porosite`
--

CREATE TABLE `porosite` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `porosia_id` int(11) DEFAULT NULL,
  `sasia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `porosite`
--

INSERT INTO `porosite` (`id`, `username`, `email`, `porosia_id`, `sasia`) VALUES
(1, 'B0sman1', 'benetosmani99@gmail.com', 0, 2),
(2, 'B0sman1', 'benetosmani99@gmail.com', 0, 2),
(3, 'B0sman1', 'benetosmani99@gmail.com', 0, 2),
(4, 'beneti', 'benetosmani99@gmail.com', 2, 2),
(5, 'beneti', 'benetosmani99@gmail.com', 21, 11),
(6, 'B0sman1', 'benetosmani99@gmail.com', 2, 23),
(7, 'B0sman1', 'benetosmani99@gmail.com', 34, 3),
(8, 'B0sman1', 'benetosmani99@gmail.com', 2313, 22),
(9, 'B0sman1', 'benetosmani99@gmail.com', 22, 22),
(10, 'Genc', 'genc@gmail.com', 5, 10),
(11, 'asddsad', 'asdadd@gmail.com', 222, 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `porosite`
--
ALTER TABLE `porosite`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `porosite`
--
ALTER TABLE `porosite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
