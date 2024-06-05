-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 03:15 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daily1`
--

-- --------------------------------------------------------

--
-- Table structure for table `ip_user`
--

CREATE TABLE `ip_user` (
  `id` int(11) NOT NULL,
  `Dept` varchar(255) NOT NULL,
  `User` varchar(255) NOT NULL,
  `IP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

------------------------------
-- Dumping data for table `ip_user`
--

INSERT INTO `ip_user` (`id`, `Dept`, `User`, `IP`) VALUES


-- --------------------------------------------------------

----------------------------------------
-- Table structure for table `list_email` --
----------------------------------------

CREATE TABLE `list_email` (
  `id` int(11) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--------------------------------------
-- Dumping data for table `list_email` --
--------------------------------------

INSERT INTO `list_email` (`id`, `Department`, `Email`, `Nama`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `task_daily`
--

CREATE TABLE `task_daily` (
  `id` int(11) NOT NULL,
  `Tanggal` date DEFAULT NULL,
  `Dept` varchar(255) NOT NULL,
  `User` varchar(255) NOT NULL,
  `Trouble` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Gambar` varchar(255) NOT NULL,
  `PIC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_daily`
--

INSERT INTO `task_daily` (`id`, `Tanggal`, `Dept`, `User`, `Trouble`, `Status`, `Gambar`, `PIC`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2024-08-15 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `id_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `Password`, `email`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `id_user`) VALUES
(3, 'adam', '$2y$10$sDq4RJLJZJQzX0ebupzKN.KnCNjswWg50ZDD3k608GoGQHKiR5H1q', 'adamabdillahjanuar@gmail.com', 'http://localhost/daily/uploads/files/6ljz2a4i03smf_n.png', NULL, NULL, '2024-08-15 00:00:00', NULL, '1515'),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ip_user`
--
ALTER TABLE `ip_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_email`
--
ALTER TABLE `list_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_daily`
--
ALTER TABLE `task_daily`
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
-- AUTO_INCREMENT for table `ip_user`
--
ALTER TABLE `ip_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `list_email`
--
ALTER TABLE `list_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `task_daily`
--
ALTER TABLE `task_daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
