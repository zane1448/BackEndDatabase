-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 09:37 PM
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
-- Database: `school2.0`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `ClassID` int(11) NOT NULL,
  `ClassType` varchar(255) DEFAULT NULL,
  `ClassSize` int(11) DEFAULT NULL,
  `StaffID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`ClassID`, `ClassType`, `ClassSize`, `StaffID`) VALUES
(1251254, 'b', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dinnermoney`
--

CREATE TABLE `dinnermoney` (
  `StudentID` int(11) NOT NULL,
  `DinnerMoneyID` int(11) NOT NULL,
  `CurrentDinnerMoney` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `ParentID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `PhoneNum` int(11) DEFAULT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`ParentID`, `Name`, `PhoneNum`, `Username`, `Password`) VALUES
(1, 'a', 0, 'aa', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Pay` int(11) DEFAULT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `Name`, `Age`, `Pay`, `Username`, `Password`) VALUES
(1, 'test', 11, 1, '', ''),
(2, '1234', 2444, 1256, 'test', 'test123'),
(3, '', 0, 0, '', ''),
(4, '', 0, 0, '', ''),
(5, '212521', 11415, 125125, 'newestnewtest', 'newtest'),
(6, 'veryfirststafftest', 1, 1, 'verfirst', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `Name`, `Year`, `Age`, `Username`, `Password`) VALUES
(1, 'test', 0, 0, '', ''),
(2, '', 0, 0, '', ''),
(3, '', 0, 0, '', 'test1221412'),
(4, 'test', 12, 11, 'firststudenregtest', 'test1221412'),
(5, 'testtestetstestest', 12111, 1122, 'secondtest', 'pw111'),
(6, 'testtestetstestest', 12111, 1122, 'secondtest', 'pw111'),
(7, 'testtestetstestest', 12111, 1122, 'secondtest', 'pw111'),
(8, 'thirdtest1', 12111, 1122, 'thirdtest', 'thirdtest'),
(9, 'thirdtest1', 12111, 1122, 'thirdtest', 'thirdtest'),
(10, 'thirdtest1', 12111, 1122, 'thirdtest', 'thirdtest'),
(11, 'fifthtest', 1, 11, 'fithf', '5'),
(12, 'sixthtest', 1, 11, '6', '6'),
(13, 'seventhtest', 11, 11, '7', '7'),
(14, 'fithftest', 12, 13, '555', '5'),
(15, 'g', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `studentparentrelationship`
--

CREATE TABLE `studentparentrelationship` (
  `StudentID` int(11) NOT NULL,
  `ParentID` int(11) NOT NULL,
  `Relation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentparentrelationship`
--

INSERT INTO `studentparentrelationship` (`StudentID`, `ParentID`, `Relation`) VALUES
(4, 1, 'Parent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`ClassID`),
  ADD KEY `StaffID` (`StaffID`);

--
-- Indexes for table `dinnermoney`
--
ALTER TABLE `dinnermoney`
  ADD PRIMARY KEY (`DinnerMoneyID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`ParentID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `studentparentrelationship`
--
ALTER TABLE `studentparentrelationship`
  ADD PRIMARY KEY (`StudentID`,`ParentID`),
  ADD KEY `ParentID` (`ParentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dinnermoney`
--
ALTER TABLE `dinnermoney`
  MODIFY `DinnerMoneyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `ParentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `StaffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`);

--
-- Constraints for table `dinnermoney`
--
ALTER TABLE `dinnermoney`
  ADD CONSTRAINT `dinnermoney_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);

--
-- Constraints for table `studentparentrelationship`
--
ALTER TABLE `studentparentrelationship`
  ADD CONSTRAINT `studentparentrelationship_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  ADD CONSTRAINT `studentparentrelationship_ibfk_2` FOREIGN KEY (`ParentID`) REFERENCES `parent` (`ParentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
