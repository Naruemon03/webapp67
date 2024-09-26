-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2024 at 02:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dvdshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `aid` varchar(3) NOT NULL,
  `aname` varchar(20) NOT NULL,
  `alastname` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='action information';

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`aid`, `aname`, `alastname`, `address`, `telephone`) VALUES
('901', 'doja', 'dog', 'usa', 123456789),
('902', 'dodo', 'cat', 'mcu', 987654321),
('903', 'jame', 'camalo', 'uk', 897651234),
('904', ' boba', 'fade', 'deathstar', 2341567),
('905', 'picharn', 'lakben', 'thailand', 971346205);

-- --------------------------------------------------------

--
-- Table structure for table `actorinmovie`
--

CREATE TABLE `actorinmovie` (
  `count` int(10) NOT NULL,
  `movid` varchar(3) NOT NULL,
  `aid` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='actor action in movie';

--
-- Dumping data for table `actorinmovie`
--

INSERT INTO `actorinmovie` (`count`, `movid`, `aid`) VALUES
(1, '101', '901');

-- --------------------------------------------------------

--
-- Table structure for table `buymovie`
--

CREATE TABLE `buymovie` (
  `count` varchar(10) NOT NULL,
  `mid` varchar(3) NOT NULL,
  `movid` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='member buy movie';

--
-- Dumping data for table `buymovie`
--

INSERT INTO `buymovie` (`count`, `mid`, `movid`) VALUES
('2', '001', '101'),
('', '001', '104');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mid` varchar(3) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `mlastname` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='member information';

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mid`, `mname`, `mlastname`, `address`, `telephone`) VALUES
('001', 'john', 'weak', 'india', 800000000),
('002', 'george', 'gee', 'thailand', 880001122),
('003', 'thunder', 'safai', 'thailand', 890002211),
('004', 'tom', 'hotland', 'uk', 901123344),
('005', 'luna', 'light', 'japan', 211234321);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movid` varchar(3) NOT NULL,
  `movname` varchar(20) NOT NULL,
  `movinformation` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='movie information';

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movid`, `movname`, `movinformation`, `time`, `date`) VALUES
('101', 'farmerjohn', 'john is a farmer ', '120 min', '2024-09-01'),
('102', 'weakjohn', 'john is a weakest man in a world', '110 min', '2024-02-28'),
('103', 'bobacat', 'cat make a boba tea', '100 min', '2023-11-30'),
('104', 'running girl', 'a group of girl runnig in to the end of the world', '108 min', '2024-02-12'),
('105', 'boy form hell', 'a boy who come form hell', '140 min', '2024-07-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `actorinmovie`
--
ALTER TABLE `actorinmovie`
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `buymovie`
--
ALTER TABLE `buymovie`
  ADD KEY `mid` (`mid`),
  ADD KEY `movid` (`movid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
