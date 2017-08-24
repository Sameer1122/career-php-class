-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2017 at 10:42 AM
-- Server version: 5.7.18-0ubuntu0.16.10.1
-- PHP Version: 7.0.15-0ubuntu0.16.10.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academia`
--

-- --------------------------------------------------------

--
-- Table structure for table `campus`
--

CREATE TABLE `campus` (
  `cmID` int(11) NOT NULL,
  `cmName` varchar(50) NOT NULL,
  `cmCity` varchar(50) NOT NULL,
  `cmAddress` varchar(50) NOT NULL,
  `cmContact` varchar(50) NOT NULL,
  `cmContact2` varchar(50) NOT NULL,
  `cmContactM` varchar(60) NOT NULL,
  `cmMail` varchar(50) NOT NULL,
  `cmEsatablishDate` date NOT NULL,
  `cmLastEdit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cmRoomCount` int(11) NOT NULL,
  `cmDocuments` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campus`
--

INSERT INTO `campus` (`cmID`, `cmName`, `cmCity`, `cmAddress`, `cmContact`, `cmContact2`, `cmContactM`, `cmMail`, `cmEsatablishDate`, `cmLastEdit`, `cmRoomCount`, `cmDocuments`) VALUES
(1, 'Pak Campus', 'Okara', 'Okara, Pakistan ', '03014555555', '555555', '5455', '55554@tr', '2017-07-25', '2017-07-26 16:20:03', 44, 'Test'),
(5, 'OKR', 'Okara', 'Okara,Pakistan', '03014555555', '555555', '5455', '55554@tr', '2017-07-25', '2017-07-26 16:23:25', 12, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `crsID` int(11) NOT NULL,
  `crsCode` varchar(100) NOT NULL,
  `crsName` varchar(50) NOT NULL,
  `tcID` int(11) NOT NULL,
  `cmID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`crsID`, `crsCode`, `crsName`, `tcID`, `cmID`) VALUES
(1, '122', '9th', 1, 1),
(2, '124', '10th', 2, 1),
(3, '5455', 'five', 1, 2),
(7, '99', 'five.&#39;', 1, 2),
(8, '8', 'five.&#39;', 2, 1),
(9, '', 'five.&#39;', 2, 1),
(10, '99', 'Bold', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exmID` int(11) NOT NULL,
  `crsID` int(11) NOT NULL,
  `exmName` varchar(50) NOT NULL,
  `exmDate` date NOT NULL,
  `exmStatus` varchar(5) NOT NULL,
  `exmTimeStemp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cmID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exmID`, `crsID`, `exmName`, `exmDate`, `exmStatus`, `exmTimeStemp`, `cmID`) VALUES
(1, 2, 'December', '0000-00-00', 'Open', '1980-01-04 23:58:27', 1),
(2, 2, 'Anual', '0000-00-00', 'Open', '1980-01-04 23:59:49', 1),
(3, 1, 'Test', '0000-00-00', 'Open', '1980-01-05 00:00:33', 1),
(4, 1, 'anuals.&#39;', '2012-12-15', 'Open', '2017-07-25 16:53:03', 1),
(5, 2, 'anuals', '2012-12-15', 'Open', '2017-07-25 16:53:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'added 5 of LG 43" UHD TV UH6100', '2017-02-04 01:10:41'),
(2, 1, 'added 100 of Lotion', '2017-02-04 01:10:49'),
(3, 1, 'added 10 of Rice Cooker', '2017-02-04 01:10:55'),
(4, 1, 'added 5 of Samsung', '2017-02-04 01:11:07'),
(5, 1, 'has logged in the system at ', '2017-02-04 08:22:52'),
(6, 1, 'has logged in the system at ', '2017-02-04 08:51:11'),
(7, 1, 'has logged in the system at ', '2017-02-04 13:13:53'),
(8, 1, 'has logged in the system at ', '2017-02-21 18:56:56'),
(9, 1, 'added a payment of -76.6 for , ', '2017-02-21 00:00:00'),
(10, 1, 'has logged in the system at ', '2017-07-03 19:04:16'),
(11, 1, 'has logged in the system at ', '2017-07-03 19:04:38'),
(12, 1, 'has logged in the system at ', '2017-07-03 19:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `scID` int(11) NOT NULL,
  `scNameF` varchar(99) NOT NULL,
  `scNameS` varchar(99) NOT NULL,
  `scContact1` varchar(15) NOT NULL,
  `scContact2` varchar(15) NOT NULL,
  `scContactO` varchar(15) NOT NULL,
  `scMail` varchar(111) NOT NULL,
  `scAddress` text NOT NULL,
  `scEsatablishDate` date DEFAULT NULL,
  `scLogo` varchar(999) NOT NULL,
  `scLastEdit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`scID`, `scNameF`, `scNameS`, `scContact1`, `scContact2`, `scContactO`, `scMail`, `scAddress`, `scEsatablishDate`, `scLogo`, `scLastEdit`) VALUES
(1, 'Sooper', 'School', '03123458', '0300129854', '03001298543', 'ai@gmail.com', '34', '2012-12-12', '../document/logo/Untitled.png', '2017-07-25 17:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `smstext`
--

CREATE TABLE `smstext` (
  `smsID` int(11) NOT NULL,
  `smsIn` text NOT NULL,
  `smsOut` text NOT NULL,
  `smsAbsent` text NOT NULL,
  `smsLastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smstext`
--

INSERT INTO `smstext` (`smsID`, `smsIn`, `smsOut`, `smsAbsent`, `smsLastUpdate`) VALUES
(1, 'Your Child Enter in School :)', 'Your Child Out From School... ;}', 'Your Child Absent From ', '1980-01-03 19:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `stID` int(11) NOT NULL,
  `stCode` varchar(22) NOT NULL,
  `stDep` varchar(50) NOT NULL,
  `stName` varchar(50) NOT NULL,
  `stFather` varchar(50) NOT NULL,
  `stDOB` date NOT NULL,
  `stCNIC` varchar(50) NOT NULL,
  `stContactP` varchar(50) NOT NULL,
  `stContactM` varchar(50) NOT NULL,
  `stMailP` varchar(50) NOT NULL,
  `stMailO` varchar(50) NOT NULL,
  `stRefName` varchar(50) NOT NULL,
  `stRefContact` varchar(50) NOT NULL,
  `cmID` int(11) NOT NULL,
  `stLastEdit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stDocument` varchar(300) NOT NULL,
  `salary` int(11) DEFAULT NULL,
  `incrementPer` int(11) DEFAULT NULL,
  `stAddress` text NOT NULL,
  `stHireDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`stID`, `stCode`, `stDep`, `stName`, `stFather`, `stDOB`, `stCNIC`, `stContactP`, `stContactM`, `stMailP`, `stMailO`, `stRefName`, `stRefContact`, `cmID`, `stLastEdit`, `stDocument`, `salary`, `incrementPer`, `stAddress`, `stHireDate`) VALUES
(1, '001', 'teacher', 'Muhammad Asif', 'Azam Ali', '0000-00-00', '31101-6920497-5', '0303-6982800', '', 'snew3110@gmail.com', '', '', '', 1, '2017-07-24 17:21:01', '../document/staff/unknown.png', 0, 0, 'Mehboob Town', '0000-00-00'),
(2, '002', 'teacher', 'Saqib', 'Azam Ali', '0000-00-00', '31101-6920497-5', '0303-6982800', '', 'snew3110@gmail.com', '', '', '', 1, '2017-07-24 17:21:29', '../document/staff/unknown.png', 0, 0, 'Mehboob Town', '0000-00-00'),
(3, '003', 'admin', 'kashif', 'Azam Ali', '0000-00-00', '31101-6920497-5', '0303-6982800', '', 'snew3110@gmail.com', '', '', '', 1, '2017-07-24 17:21:26', '../document/staff/unknown.png', 0, 0, 'Mehboob Town', '0000-00-00'),
(4, '010', 'clerk', 'kashif', 'Azam Ali', '0000-00-00', '31101-6920497-5', '0303-6982800', '', 'snew3110@gmail.com', '', '', '', 1, '2017-07-24 17:21:21', '../document/staff/unknown.png', 0, 0, 'Mehboob Town', '0000-00-00'),
(5, '015', 'teacher', 'Umair', 'Iftikhar', '0000-00-00', '31101-6920497-5', '0303-6982800', '', 'umai@gmal.com', '', '', '', 1, '2017-07-24 17:21:16', '../document/staff/unknown.png', 0, 0, 'Faislabad', '0000-00-00'),
(6, '016', 'clerk', 'Riaz', 'Ahmad', '0000-00-00', '31101-6920497-5', '0303-6982800', '', 'snew3110@gmail.com', '', '', '', 1, '2017-07-24 17:21:12', '../document/staff/unknown.png', 0, 0, 'Mehboob Town', '0000-00-00'),
(7, '0100', 'teacher', 'Ali', 'Azam', '2017-07-30', '435345323', '2342342', '32423423', '324234', '32423423@2', 'sasd', '3242334', 2, '2017-07-24 17:21:07', '../document/staff/unknown.png', 3212, 535, '', '2017-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `stdattendance`
--

CREATE TABLE `stdattendance` (
  `satID` int(11) NOT NULL,
  `stdID` int(11) NOT NULL,
  `crsID` int(11) NOT NULL,
  `attendance` tinyint(4) NOT NULL,
  `satdate` date NOT NULL,
  `satTime` time NOT NULL,
  `comments` text,
  `cmID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stdattendance`
--

INSERT INTO `stdattendance` (`satID`, `stdID`, `crsID`, `attendance`, `satdate`, `satTime`, `comments`, `cmID`) VALUES
(1, 7, 2, 0, '2017-07-22', '20:25:21', NULL, 1),
(2, 7, 2, 1, '2017-07-22', '20:25:28', NULL, 1),
(3, 5, 2, 0, '2017-07-22', '20:25:35', NULL, 1),
(4, 5, 2, 1, '2017-07-22', '20:25:42', NULL, 1),
(5, 4, 2, 0, '2017-07-22', '20:25:59', NULL, 1),
(6, 1, 1, 3, '2017-07-22', '20:26:16', NULL, 1),
(7, 2, 1, 3, '2017-07-22', '20:26:16', NULL, 1),
(8, 3, 2, 3, '2017-07-22', '20:26:16', NULL, 1),
(9, 8, 1, 3, '2017-07-22', '20:26:16', NULL, 1),
(10, 1, 1, 3, '2017-07-24', '22:11:05', NULL, 1),
(11, 2, 1, 3, '2017-07-24', '22:11:05', NULL, 1),
(12, 3, 2, 3, '2017-07-24', '22:11:05', NULL, 1),
(13, 4, 2, 3, '2017-07-24', '22:11:05', NULL, 1),
(14, 5, 2, 3, '2017-07-24', '22:11:05', NULL, 1),
(15, 7, 2, 3, '2017-07-24', '22:11:05', NULL, 1),
(16, 8, 1, 3, '2017-07-24', '22:11:05', NULL, 1),
(17, 3, 2, 0, '2017-07-25', '22:23:27', NULL, 1),
(18, 3, 2, 1, '2017-07-25', '22:24:22', NULL, 1),
(19, 4, 2, 0, '2017-07-25', '22:24:32', NULL, 1),
(20, 4, 2, 1, '2017-07-25', '22:24:40', NULL, 1),
(21, 1, 1, 4, '2017-07-25', '21:55:10', NULL, 1),
(22, 2, 1, 3, '2017-07-25', '21:55:10', NULL, 1),
(23, 5, 2, 3, '2017-07-25', '21:55:10', NULL, 1),
(24, 7, 2, 3, '2017-07-25', '21:55:10', NULL, 1),
(25, 8, 1, 3, '2017-07-25', '21:55:10', NULL, 1),
(26, 3, 2, 0, '2017-07-26', '22:05:24', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stdID` int(11) NOT NULL,
  `stdCode` varchar(22) NOT NULL,
  `stdRollNo` varchar(50) NOT NULL,
  `stdName` varchar(50) NOT NULL,
  `crsID` varchar(50) NOT NULL,
  `stdFather` varchar(50) NOT NULL,
  `stdCNIC` varchar(50) NOT NULL,
  `stdContactP` varchar(18) NOT NULL,
  `stdContactHome` varchar(18) NOT NULL,
  `stdDOB` date NOT NULL,
  `stdDocument` varchar(300) NOT NULL,
  `stdFees` int(11) NOT NULL,
  `stdAddress` text NOT NULL,
  `stdAdmissionDate` date NOT NULL,
  `stdRef` varchar(50) NOT NULL,
  `stdStatus` varchar(50) NOT NULL,
  `stdStatusChangeDate` date NOT NULL,
  `stdLastEdit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cmID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stdID`, `stdCode`, `stdRollNo`, `stdName`, `crsID`, `stdFather`, `stdCNIC`, `stdContactP`, `stdContactHome`, `stdDOB`, `stdDocument`, `stdFees`, `stdAddress`, `stdAdmissionDate`, `stdRef`, `stdStatus`, `stdStatusChangeDate`, `stdLastEdit`, `cmID`) VALUES
(1, '006', '01', 'Ramzan', '1 ', '---', '0201012123', '', '0301-1234567', '0000-00-00', '../document/student/unknown.png', 500, '39-3R', '0000-00-00', '', 'Certified', '0000-00-00', '2017-07-24 17:19:39', 1),
(2, '007', '02', 'sayam', '1 ', '---', '2912124212', '', '0301-1234567', '0000-00-00', '../document/student/unknown.png', 500, '39-3R', '0000-00-00', '', 'Certified', '0000-00-00', '2017-07-24 17:19:50', 1),
(3, '008', '01', 'Arslan', '2', '---', '0201012123', '', '0301-1234567', '0000-00-00', '../document/student/unknown.png', 800, '39-3R', '0000-00-00', '', 'Certified', '0000-00-00', '2017-07-24 17:19:57', 1),
(4, '009', '02', 'Fiaz', '2', '---', '0201012123', '', '0301-1234567', '0000-00-00', '../document/student/unknown.png', 800, '39-3R', '0000-00-00', '', 'Enrolled', '0000-00-00', '2017-07-24 17:20:06', 1),
(5, '011', '03', 'Asgher', '2', '---', '0201012123', '', '0301-1234567', '0000-00-00', '../document/student/unknown.png', 800, '39-3R', '0000-00-00', '', 'Enrolled', '0000-00-00', '2017-07-24 17:20:16', 1),
(7, '012', '05', 'Ali', '2', 'Ali', '0201012123', '', '0301-1234567', '0000-00-00', '../document/student/unknown.png', 800, '39-3R', '0000-00-00', '', 'Enrolled', '0000-00-00', '2017-07-24 17:20:21', 1),
(8, '013', '06', 'Ahmad', '1 ', 'Abbas', '0201012123', '', '0301-1234567', '0000-00-00', '../document/student/ss.png', 800, '39-3R', '0000-00-00', '', 'Enrolled', '0000-00-00', '2017-07-24 17:20:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tcattendance`
--

CREATE TABLE `tcattendance` (
  `tatID` int(11) NOT NULL,
  `tcID` int(11) NOT NULL,
  `attendance` tinyint(4) NOT NULL,
  `tatdate` date NOT NULL,
  `tatTime` time NOT NULL,
  `comments` text NOT NULL,
  `cmID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tcattendance`
--

INSERT INTO `tcattendance` (`tatID`, `tcID`, `attendance`, `tatdate`, `tatTime`, `comments`, `cmID`) VALUES
(1, 1, 0, '1980-01-08', '10:43:24', '', 1),
(2, 2, 0, '1980-01-08', '10:43:32', '', 1),
(3, 3, 0, '1980-01-08', '10:43:40', '', 1),
(4, 4, 3, '1980-01-08', '10:56:02', '', 1),
(5, 5, 3, '1980-01-08', '10:56:02', '', 1),
(6, 6, 3, '1980-01-08', '10:56:02', '', 1),
(7, 1, 1, '1980-01-08', '11:02:00', '', 1),
(8, 2, 1, '1980-01-08', '11:02:11', '', 1),
(9, 3, 1, '1980-01-08', '11:02:19', '', 1),
(10, 1, 0, '1980-01-11', '13:53:32', '', 1),
(11, 2, 0, '1980-01-11', '13:53:40', '', 1),
(12, 3, 0, '1980-01-11', '13:53:49', '', 1),
(13, 4, 4, '1980-01-11', '13:53:56', '', 1),
(14, 5, 4, '1980-01-11', '13:53:56', '', 1),
(15, 6, 3, '1980-01-11', '13:53:56', '', 1),
(16, 1, 0, '2017-07-03', '13:39:47', '', 1),
(17, 1, 1, '2017-07-03', '13:42:33', '', 1),
(18, 0, 0, '2017-07-03', '13:42:44', '', 1),
(19, 2, 3, '2017-07-03', '13:47:34', '', 1),
(20, 3, 3, '2017-07-03', '13:47:34', '', 1),
(21, 4, 3, '2017-07-03', '13:47:34', '', 1),
(22, 5, 3, '2017-07-03', '13:47:34', '', 1),
(23, 6, 3, '2017-07-03', '13:47:34', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `tsID` int(11) NOT NULL,
  `exmID` int(11) NOT NULL,
  `tsDate` date NOT NULL,
  `tsName` varchar(50) NOT NULL,
  `tcID` int(11) NOT NULL,
  `crsID` int(11) NOT NULL,
  `tsTotalMarks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`tsID`, `exmID`, `tsDate`, `tsName`, `tcID`, `crsID`, `tsTotalMarks`) VALUES
(1, 1, '2017-02-15', 'Math', 1, 2, 100),
(2, 1, '2017-02-20', 'Urdu', 2, 2, 100),
(3, 1, '1980-01-09', 'Computer', 5, 2, 100),
(4, 1, '2017-02-20', 'Arabic', 1, 2, 75),
(5, 1, '2017-02-15', 'Physics', 1, 2, 100),
(14, 2, '2017-08-20', 'Computer', 5, 2, 180),
(15, 2, '2017-08-20', 'Physics', 2, 2, 200),
(16, 3, '2017-02-20', 'Chemistry', 2, 1, 75),
(17, 4, '2018-05-20', 'Stats', 2, 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `testresult`
--

CREATE TABLE `testresult` (
  `rsID` int(11) NOT NULL,
  `stdID` int(11) NOT NULL,
  `rsObtainMarks` int(11) NOT NULL,
  `tsID` int(11) NOT NULL,
  `exmID` int(11) NOT NULL,
  `crsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testresult`
--

INSERT INTO `testresult` (`rsID`, `stdID`, `rsObtainMarks`, `tsID`, `exmID`, `crsID`) VALUES
(1, 3, 5, 1, 1, 2),
(2, 4, 50, 1, 1, 2),
(3, 5, 55, 1, 1, 2),
(4, 7, 20, 1, 1, 2),
(5, 8, 2, 1, 1, 2),
(6, 3, 95, 2, 1, 2),
(7, 4, 10, 2, 1, 2),
(8, 5, 35, 2, 1, 2),
(9, 7, 85, 2, 1, 2),
(10, 8, 16, 2, 1, 2),
(11, 3, 42, 3, 1, 2),
(12, 4, 40, 3, 1, 2),
(13, 5, 20, 3, 1, 2),
(14, 7, 22, 3, 1, 2),
(15, 8, 33, 3, 1, 2),
(16, 3, 45, 4, 1, 2),
(17, 4, 50, 4, 1, 2),
(18, 5, 70, 4, 1, 2),
(19, 7, 60, 4, 1, 2),
(20, 8, 65, 4, 1, 2),
(21, 3, 95, 14, 2, 2),
(22, 4, 55, 14, 2, 2),
(23, 5, 150, 14, 2, 2),
(24, 7, 90, 14, 2, 2),
(25, 8, 80, 14, 2, 2),
(26, 3, 55, 1, 1, 2),
(27, 4, 50, 1, 1, 2),
(28, 5, 55, 1, 1, 2),
(29, 7, 20, 1, 1, 2),
(30, 8, 2, 1, 1, 2),
(31, 3, 55, 5, 1, 2),
(32, 4, 45, 5, 1, 2),
(33, 5, 20, 5, 1, 2),
(34, 7, 66, 5, 1, 2),
(35, 8, 33, 5, 1, 2),
(36, 3, 100, 15, 2, 2),
(37, 4, 90, 15, 2, 2),
(38, 5, 130, 15, 2, 2),
(39, 7, 120, 15, 2, 2),
(40, 8, 179, 15, 2, 2),
(41, 1, 50, 16, 3, 1),
(42, 2, 0, 16, 3, 1),
(43, 8, 0, 16, 3, 1),
(44, 1, 55, 17, 4, 1),
(45, 2, 34, 17, 4, 1),
(46, 8, 88, 17, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `userLevel` varchar(99) DEFAULT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `cmID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userLevel`, `username`, `password`, `name`, `status`, `cmID`) VALUES
(1, 'user', 'user1', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'masif', 'active', 1),
(4, 'user', 'user2', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Mona', 'active', 2),
(5, 'guard', 'guard1', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Mona', 'active', 1),
(6, 'admin', 'admin', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Asif', 'active', 0),
(7, 'guard', 'guard2', 'a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055', 'Ali', 'active', 2),
(10, 'user', 'saqibAQ', 'a1Bz20ydqelm8m1wql3b712de48137572f3849aabd5666a4e3', 'Saqib', 'active', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`cmID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`crsID`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exmID`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`scID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`stID`),
  ADD UNIQUE KEY `stCode` (`stCode`);

--
-- Indexes for table `stdattendance`
--
ALTER TABLE `stdattendance`
  ADD PRIMARY KEY (`satID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stdID`),
  ADD UNIQUE KEY `stdCode` (`stdCode`);

--
-- Indexes for table `tcattendance`
--
ALTER TABLE `tcattendance`
  ADD PRIMARY KEY (`tatID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`tsID`);

--
-- Indexes for table `testresult`
--
ALTER TABLE `testresult`
  ADD PRIMARY KEY (`rsID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `cmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `crsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `scID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `stID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `stdattendance`
--
ALTER TABLE `stdattendance`
  MODIFY `satID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stdID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tcattendance`
--
ALTER TABLE `tcattendance`
  MODIFY `tatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `tsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `testresult`
--
ALTER TABLE `testresult`
  MODIFY `rsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
