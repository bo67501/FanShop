-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Feb 02, 2024 at 06:59 PM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `image`, `author`) VALUES
(19, 'Manchester City Goalkeeper Jersey 2023/24 ', 'EDERSON M. 31', 100.00, 'uploads/home.png', 'Benet Osmani'),
(21, 'Manchester City Goalkeeper Jersey 2023/24 ', 'CARSON 33', 100.00, 'uploads/carson_home.png', 'Benet Osmani'),
(22, 'Manchester City Goalkeeper Jersey 2023/24 ', 'EDERSON M. 31', 100.00, 'uploads/away.png', 'Arlind Voca'),
(23, 'Manchester City Goalkeeper Jersey 2023/24 ', 'ORTEGA ', 100.00, 'uploads/ortega_away.png', 'Arlind Voca'),
(24, 'Manchester City Goalkeeper Jersey 2023/24 ', 'CARSON 33', 100.00, 'uploads/carson_away.png', 'Arlind Voca'),
(25, 'Manchester City Goalkeeper Jersey 2023/24 ', 'ORTEGA 18', 100.00, 'uploads/ortega_home.png', 'Arlind Voca'),
(26, 'Manchester City Goalkeeper Jersey 2023/24 ', 'ORTEGA 18', 100.00, 'uploads/ortega_third.png', 'Arlind Voca'),
(27, 'Manchester City Goalkeeper Jersey 2023/24 ', 'CARSON 33', 100.00, 'uploads/carson_third.png', 'Benet Osmani'),
(28, 'Manchester City Goalkeeper Jersey 2023/24 ', 'EDERSON M. 31', 100.00, 'uploads/third.png', 'Benet Osmani'),
(29, 'Manchester City Defender Jersey 2023/24', 'DIAS 3', 100.00, 'uploads/dias_away.png', 'Benet Osmani'),
(30, 'Manchester City Defender Jersey 2023/24', 'GVARDIOL 24', 100.00, 'uploads/gvardiol_home.png', 'Benet Osmani'),
(31, 'Manchester City Defender Jersey 2023/24', 'STONES 5', 100.00, 'uploads/stones_third.png', 'Benet Osmani'),
(33, 'Manchester City Defender Jersey 2023/24', 'WALKER 2', 100.00, 'uploads/walker_away.png', 'Benet Osmani'),
(34, 'Manchester City Midflielders Jersey 2023/24', 'BERNARDO 20', 100.00, 'uploads/bernardo_home.png', 'Arlind Voca'),
(35, 'Manchester City Midflielders Jersey 2023/24', 'BRUYNE 17', 100.00, 'uploads/debruyne_home.png', 'Arlind Voca'),
(36, 'Manchester City Midflielders Jersey 2023/24', 'FODEN 47', 100.00, 'uploads/foden_third.png', 'Arlind Voca'),
(37, 'Manchester City Midflielders Jersey 2023/24', 'GREALISH 10', 100.00, 'uploads/grealish_away.png', 'Arlind Voca'),
(38, 'Manchester City Forwards Jersey 2023/24', 'ALVAREZ 19', 100.00, 'uploads/alvarez_third.png', 'Arlind Voca'),
(39, 'Manchester City Forwards Jersey 2023/24', 'HAALAND 9', 100.00, 'uploads/haaland_away.png', 'Benet Osmani'),
(40, 'Manchester City Forwards Jersey 2023/24', 'DOKU 11', 100.00, 'uploads/doku_home.png', 'Benet Osmani'),
(41, 'Manchester City Forwards Jersey 2023/24', 'HAALAND 9', 100.00, 'uploads/haaland_home.png', 'Benet Osmani');

-- --------------------------------------------------------

--
-- Table structure for table `treningu`
--

CREATE TABLE `treningu` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treningu`
--

INSERT INTO `treningu` (`id`, `title`, `description`, `price`, `image`, `author`) VALUES
(3, 'Manchester City Essentials Fleece Lined Hoodie', 'PUMA cat logo on the right side and Manchester City crest on the left side.\r\nMade from 50% BCI cotton, 30% polyester and 20% recycled cotton.', 100.00, 'uploads/Men Hood 1.jpg', 'Benet Osmani'),
(4, 'Manchester City Essentials Fleece Lined Hoodie', 'PUMA cat logo on the right side and Manchester City crest on the left side.\r\nMade from 50% BCI cotton, 30% polyester and 20% recycled cotton.', 100.00, 'uploads/Men Hood 2.jpg', 'Benet Osmani'),
(5, 'Manchester City Essentials Fleece Lined Hoodie', 'PUMA cat logo on the right side and Manchester City crest on the left side.\r\nMade from 50% BCI cotton, 30% polyester and 20% recycled cotton.', 100.00, 'uploads/Men Hood 3.jpg', 'Benet Osmani'),
(6, 'Manchester City Essentials Fleece Lined Hoodie', 'PUMA cat logo on the right side and Manchester City crest on the left side.\r\nMade from 50% BCI cotton, 30% polyester and 20% recycled cotton.', 100.00, 'uploads/Men Hood 4.jpg', 'Benet Osmani'),
(7, 'Manchester City Tracksuit 1/4 Zip Top & Pants', 'Slim Fit: Official Match jersey as worn by the players. Long sleeve silhouette', 100.00, 'uploads/Men5.jpg', 'Arlind Voca'),
(8, 'Manchester City Training 1/4 Zip Top', 'Slim Fit: Official Match jersey as worn by the players. Long sleeve silhouette', 100.00, 'uploads/Men6.png', 'Arlind Voca'),
(9, 'Manchester City Training 1/4 Zip Top', 'Slim Fit: Official Match jersey as worn by the players. Long sleeve silhouette', 100.00, 'uploads/Men7.png', 'Benet Osmani'),
(10, 'Manchester City Training Shorts', 'Regular fit\r\nPocketed sides with zippers\r\nContrast panels\r\nOfficial Manchester City club crest printed on the right thigh', 100.00, 'uploads/Men8.png', 'Benet Osmani'),
(11, 'Manchester City Pre-Match Short Sleeve Jersey', 'Slim Fit: Official Match jersey as worn by the players\r\nShort sleeves\r\nOfficial Manchester City club crest printed on the left chest', 100.00, 'uploads/Kids4.png', 'Benet Osmani'),
(14, 'Kids\' Manchester City Pre-Match Jersey', 'Slim Fit: Official Match jersey as worn by the players\r\nShort sleeves\r\nOfficial Manchester City club crest printed on the left chest', 100.00, 'uploads/Kids3.png', 'Arlind Voca'),
(15, 'Kids\' Manchester City Essentials Fleece Lined Sweat Pants', 'Regular fit\r\nSide pockets for convenient storage.\r\nRibbed cuffs for added comfort', 100.00, 'uploads/Kids6.png', 'Benet Osmani'),
(16, 'Kids\' Manchester City Essentials Fleece Lined Sweat Pants', 'Regular fit Side pockets for convenient storage. Ribbed cuffs for added comfort', 100.00, 'uploads/Kids8.png', 'Benet Osmani'),
(17, 'Women\'s Manchester City Casuals Hooded Jacket', 'Regular fit\r\nLong sleeve silhouette\r\nOfficial Manchester City club crest printed on the left chest', 100.00, 'uploads/Women2.png', 'Benet Osmani'),
(21, 'Manchester City Training Jersey', 'Training Jersey', 100.00, 'uploads/Women4.png', 'Benet Osmani'),
(22, 'Manchester City Pre-Match Jersey', 'Pre-Match Jersey', 100.00, 'uploads/Women5.png', 'Benet Osmani'),
(24, 'Kids\' Manchester City Training Jersey', 'Slim Fit: Official Match jersey as worn by the players\r\nShort sleeve silhouette\r\nOfficial Manchester City club crest printed on the left chest', 100.00, 'uploads/Kids2.jpg', 'Benet Osmani'),
(29, 'Kids\' Manchester City Pre-Match Sweat Top', 'Slim Fit: Official Match jersey as worn by the players\r\nLong sleeves\r\nOffical Manchester City club crest on chest\r\nPUMA No1 logo printed on Chest', 100.00, 'uploads/Kids5.png', 'Benet Osmani'),
(30, 'Kids\' Manchester City Essentials Fleece Lined Sweat Pants', 'Regular fit\r\nSide pockets for convenient storage.\r\nRibbed cuffs for added comfort\r\nElasticated waistband for integrated drawcord for customised comfort', 100.00, 'uploads/Kids7.png', 'Benet Osmani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treningu`
--
ALTER TABLE `treningu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `treningu`
--
ALTER TABLE `treningu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
