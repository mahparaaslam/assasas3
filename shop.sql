-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2021 at 01:51 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `employeno` int(20) NOT NULL,
  `employdesignation` varchar(20) NOT NULL,
  `empsal` varchar(20) NOT NULL,
  `empid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`employeno`, `employdesignation`, `empsal`, `empid`) VALUES
(1, 'salesman', '423423', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employe_gen`
--

CREATE TABLE `employe_gen` (
  `emcountry` varchar(20) NOT NULL,
  `empgen` varchar(20) NOT NULL,
  `empheight` varchar(20) NOT NULL,
  `epmid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employe_gen`
--

INSERT INTO `employe_gen` (`emcountry`, `empgen`, `empheight`, `epmid`) VALUES
('pakistan', 'F', '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_name`
--

CREATE TABLE `shop_name` (
  `employeid` int(20) NOT NULL,
  `employename` varchar(20) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_name`
--

INSERT INTO `shop_name` (`employeid`, `employename`, `contact`, `address`) VALUES
(1, 'maha', '678324628734', 'bufferzone-u8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`employeno`),
  ADD KEY `empid` (`empid`);

--
-- Indexes for table `employe_gen`
--
ALTER TABLE `employe_gen`
  ADD KEY `epmid` (`epmid`);

--
-- Indexes for table `shop_name`
--
ALTER TABLE `shop_name`
  ADD PRIMARY KEY (`employeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `employeno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_name`
--
ALTER TABLE `shop_name`
  MODIFY `employeid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD CONSTRAINT `employee_salary_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `shop_name` (`employeid`);

--
-- Constraints for table `employe_gen`
--
ALTER TABLE `employe_gen`
  ADD CONSTRAINT `employe_gen_ibfk_1` FOREIGN KEY (`epmid`) REFERENCES `shop_name` (`employeid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
