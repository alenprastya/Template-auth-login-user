-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 04:48 PM
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
-- Database: `auth_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('I_eU-BkIRpE9YjV1AEYBcCE57335aAZb', '2023-09-16 14:47:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"52b35abe-0b7d-472c-a9b3-cbff17151019\"}', '2023-09-15 14:42:11', '2023-09-15 14:47:56'),
('Ua9-L9dJS15yliW3OHpSKsHUYsUo5G02', '2023-09-14 13:08:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"52b35abe-0b7d-472c-a9b3-cbff17151019\"}', '2023-09-13 13:06:54', '2023-09-13 13:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '52b35abe-0b7d-472c-a9b3-cbff17151019', 'Alen Prastya', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$ht1AhuOWSWN7ZHZkGryDqA$fo+L1ooqlRP7eO9/u7ZETLbNrguTODOKxh2DSCCNHrA', 'admin', '2023-09-13 13:03:31', '2023-09-13 13:03:31'),
(2, 'b9819352-33cf-47d6-82a8-e68cd3e2b14e', 'Alen Prastya Ajun Updated', 'ajun@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$AuURLDW0EfIkNnn6hOSiTQ$2vncDWZO+Ps5Bx8fGL3s/1Td+vBz2/MKi4Xn0onN+JY', 'user', '2023-09-13 13:07:40', '2023-09-15 14:47:56'),
(3, 'ba00a066-f5b6-4dd9-89ea-23c2a44945cb', 'Muhammad Alen Prastya', 'muh@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$vBA5vTQxVCXncen+rIMzhg$YSVGI9Y4DII3oXvyvWTFMp+HHz1VQKJ/i2WDRcUS1P8', 'user', '2023-09-15 14:42:39', '2023-09-15 14:42:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
