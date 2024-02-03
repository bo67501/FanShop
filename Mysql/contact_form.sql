-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Feb 02, 2024 at 07:00 PM
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
-- Database: `contact_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_data`
--

CREATE TABLE `contact_data` (
  `id` int(11) NOT NULL,
  `emri` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mesazhi` text NOT NULL,
  `data_ora` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_data`
--

INSERT INTO `contact_data` (`id`, `emri`, `email`, `mesazhi`, `data_ora`) VALUES
(1, 'Benet', 'benetosmani99@gmail.com', 'asdasddad', '2024-01-31 19:59:35'),
(2, 'Diar', 'diar@gmail.com', 'adsadadassasdas', '2024-01-31 20:02:30'),
(5, 'Benet', 'benetosmani99@gmail.com', 'dasd', '2024-02-02 12:25:45'),
(6, 'dasdasd', 'benetosmani99@gmail.com', 'asdsaddas', '2024-02-02 13:15:54'),
(7, 'adssda', 'benetosmani99@gmail.com', 'sadasd', '2024-02-02 13:15:56'),
(8, 'dadsasds', 'benetosmani99@gmail.com', 'dassad', '2024-02-02 13:16:00'),
(9, 'Diar', 'diar@gmail.com', 'asdadasdsa', '2024-02-02 13:30:33'),
(10, 'Eris', 'eris@gmail.com', 'dasadsasdd', '2024-02-02 13:30:40'),
(11, 'Riad', 'riad@gmail.com', 'dasdadaads', '2024-02-02 13:30:47'),
(12, 'Gzim', 'gzim@gmail.com', 'dassaddasd', '2024-02-02 13:35:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_data`
--
ALTER TABLE `contact_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_data`
--
ALTER TABLE `contact_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
