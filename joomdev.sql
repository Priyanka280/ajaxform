-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 19, 2022 at 01:20 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joomdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE `text` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `status` varchar(111) NOT NULL DEFAULT 'Active',
  `user` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`id`, `text`, `status`, `user`) VALUES
(1, 'this is first test', 'Active', '1'),
(2, 'this is first test', 'Active', '1'),
(3, 'ddddd', 'Active', '1'),
(4, 'eee', 'Active', '1'),
(5, 'jjjj', 'Active', '1'),
(6, 'wwww', 'Active', '1'),
(7, 'ewdca', 'Active', '1'),
(8, 'jashg jsgdjasgd ajsgdjkasd', 'Active', '1'),
(9, 'huzaifa', 'Active', '1'),
(10, 'huzaifa', 'Active', '1'),
(11, 'huzaifa', 'Active', '1'),
(12, 'ssss', 'Active', '1'),
(13, 'my name is priyanka', 'Active', '1'),
(14, 'my name is priyanka\r\n', 'Active', '1'),
(15, 'hdashdkjahsdkjhaskd hasdkjhasd kjhsdkjhasd khkjhsd ', 'Active', '1'),
(16, 'f sdds de cxvcxv', 'Active', '1'),
(17, 'asdasd asdasd asd', 'Active', '1'),
(18, 'fgdfsdf', 'Active', '1'),
(19, 'fgdfsdf', 'Active', '1'),
(20, 'sss', 'Active', '1'),
(21, 'sss', 'Active', '1'),
(22, 'sss', 'Active', '1'),
(23, 'ddds', 'Active', '1'),
(24, 'ddds', 'Active', '1'),
(25, 'vd', 'Active', '1'),
(26, 'bfbcvb', 'Active', '1'),
(27, 'asasd', 'Active', '1'),
(28, 'aasd', 'Active', '1'),
(29, 'sdfsd', 'Active', '1'),
(30, 'dasd', 'Active', '1'),
(31, 'sadas', 'Active', '1'),
(32, 'fgrtert', 'Active', '1'),
(33, 'sadsad', 'Active', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `id` int(11) NOT NULL,
  `username` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `status` varchar(111) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`id`, `username`, `password`, `status`) VALUES
(1, 'priya', 'priya@123', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `text`
--
ALTER TABLE `text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
