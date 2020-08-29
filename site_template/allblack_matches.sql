-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2020 at 01:09 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allblack_matches`
--

-- --------------------------------------------------------

--
-- Table structure for table `allblack_matches`
--

CREATE TABLE `allblack_matches` (
  `ID` int(11) NOT NULL,
  `OppositionID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Result` int(11) NOT NULL,
  `LocationID` int(11) NOT NULL,
  `OppDebutants` int(11) NOT NULL,
  `Debutants` int(11) NOT NULL,
  `OppTries` int(11) NOT NULL COMMENT 'Opposition tries in last 5 games',
  `AbTries` int(11) NOT NULL COMMENT 'Tries in last 5 games',
  `LastLoss` int(11) NOT NULL COMMENT 'Games since last loss',
  `OppRating` float NOT NULL,
  `AbRating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allblack_matches`
--

INSERT INTO `allblack_matches` (`ID`, `OppositionID`, `Date`, `Result`, `LocationID`, `OppDebutants`, `Debutants`, `OppTries`, `AbTries`, `LastLoss`, `OppRating`, `AbRating`) VALUES
(1, 2, '2004-06-19', 24, 1, 2, 1, 10, 21, 89, 91.23, 3),
(2, 3, '2005-06-10', 91, 9, 1, 4, 18, 19, 73, 90.9, 4),
(3, 2, '2005-11-19', 4, 11, 0, 0, 18, 21, 84, 92.96, 6),
(4, 6, '2006-09-02', -1, 10, 0, 0, 8, 15, 85, 94.62, 16),
(5, 6, '2007-07-14', 27, 4, 0, 0, 18, 28, 85, 93.29, 1),
(6, 6, '2008-07-05', 11, 12, 0, 0, 17, 26, 91, 89.8, 4),
(7, 8, '2008-11-22', 20, 8, 0, 0, 11, 28, 80, 92.42, 8),
(8, 1, '2009-09-19', 27, 12, 0, 1, 8, 6, 86, 89.07, 1),
(9, 6, '2010-07-17', 14, 12, 0, 0, 19, 25, 89, 92.4, 11),
(10, 3, '2011-07-22', 46, 5, 0, 1, 11, 21, 72, 93.19, 5),
(11, 1, '2011-10-16', 14, 1, 0, 0, 26, 38, 87, 90.62, 6),
(12, 6, '2012-10-06', 16, 6, 0, 0, 11, 14, 86, 92.43, 16),
(13, 1, '2013-08-24', 11, 12, 0, 1, 7, 16, 85, 91.55, 5),
(14, 2, '2014-06-07', 5, 1, 2, 2, 14, 20, 86, 93.81, 15),
(15, 7, '2014-11-01', 68, 3, 1, 1, 15, 16, 67, 93.15, 2),
(16, 4, '2015-09-24', 44, 7, 0, 0, 28, 17, 62, 92.89, 3),
(17, 1, '2016-08-27', 20, 12, 1, 1, 13, 25, 84, 96.3, 13),
(18, 5, '2017-06-16', 78, 1, 2, 2, 7, 26, 71, 94.78, 4),
(19, 1, '2017-10-21', -5, 2, 0, 0, 21, 27, 86, 95.52, 8),
(20, 6, '2018-09-15', -2, 12, 0, 0, 14, 29, 81, 94.52, 10);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryID` int(11) NOT NULL,
  `Country` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryID`, `Country`) VALUES
(1, 'Australia'),
(2, 'England'),
(3, 'Fiji'),
(4, 'Namibia'),
(5, 'Samoa'),
(6, 'South Africa'),
(7, 'USA'),
(8, 'Wales'),
(9, 'New Zealand');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LocationID` int(11) NOT NULL,
  `Location` varchar(35) NOT NULL,
  `Country` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LocationID`, `Location`, `Country`) VALUES
(1, 'Auckland', 9),
(2, 'Brisbane', 1),
(3, 'Chicago', 7),
(4, 'Christchurch', 9),
(5, 'Dunedin', 9),
(6, 'Johannesburg', 6),
(7, 'London', 2),
(8, 'Millennium Stadium', 2),
(9, 'North Shore City', 9),
(10, 'Rustenberg', 6),
(11, 'Twickenham', 2),
(12, 'Wellington', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allblack_matches`
--
ALTER TABLE `allblack_matches`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allblack_matches`
--
ALTER TABLE `allblack_matches`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LocationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
