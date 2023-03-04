-- phpMyAdmin SQL Dump
-- version 4.3.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3307
-- Generation Time: Jun 12, 2015 at 12:53 AM
-- Server version: 5.5.42
-- PHP Version: 5.4.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hospitaldb`
--
CREATE DATABASE IF NOT EXISTS `hospitaldb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hospitaldb`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `empid` varchar(20) NOT NULL,
  `empname` varchar(60) NOT NULL,
  `empfname` varchar(60) NOT NULL,
  `empgfname` varchar(60) NOT NULL,
  `empsex` varchar(7) NOT NULL,
  `empage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `empname`, `empfname`, `empgfname`, `empsex`, `empage`) VALUES
('12', 'WEWR', 'DFWEF', 'WEFE', 'MALE', 21),
('133', 'ww', 're', 'et', 'Male', 23),
('23', 'Abebe', 'Ahmed', 'Manush', 'Male', 24),
('24', 'jemal', 'ahmed', 'wale', 'Male', 21),
('3', 'wdeaegs', 'desft', 'fdsgr', 'Male', 123);

-- --------------------------------------------------------

--
-- Table structure for table `employerole`
--

DROP TABLE IF EXISTS `employerole`;
CREATE TABLE IF NOT EXISTS `employerole` (
  `emprid` int(11) NOT NULL,
  `emprname` varchar(60) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `emprempid` varchar(20) NOT NULL COMMENT 'foreign key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

DROP TABLE IF EXISTS `laboratory`;
CREATE TABLE IF NOT EXISTS `laboratory` (
  `labid` int(20) NOT NULL,
  `labtest` varchar(100) NOT NULL,
  `labresult` varchar(100) NOT NULL,
  `labPhID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `PID` varchar(20) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `pfname` varchar(50) NOT NULL,
  `pgfname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PID`, `pname`, `pfname`, `pgfname`) VALUES
('', '', '', ''),
('abebe', 'kebe', 'dese', 'dese'),
('ade', 'se', 'sad', 'sad'),
('dfds', 'dffd', 'fghj', 'fghj');

-- --------------------------------------------------------

--
-- Table structure for table `patienthistory`
--

DROP TABLE IF EXISTS `patienthistory`;
CREATE TABLE IF NOT EXISTS `patienthistory` (
  `PhID` int(11) NOT NULL,
  `PhPID` varchar(20) NOT NULL,
  `Phempid` varchar(20) NOT NULL,
  `treamentdate` date NOT NULL,
  `treatmentmedicine` varchar(60) NOT NULL,
  `treatmentdescription` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patientpharmacy`
--

DROP TABLE IF EXISTS `patientpharmacy`;
CREATE TABLE IF NOT EXISTS `patientpharmacy` (
  `paphid` int(11) NOT NULL,
  `ppdate` date NOT NULL,
  `phphPhID` varchar(20) NOT NULL,
  `phphpharid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
CREATE TABLE IF NOT EXISTS `pharmacy` (
  `pharid` varchar(20) NOT NULL,
  `pharname` varchar(60) NOT NULL,
  `manufacturedate` date NOT NULL,
  `expireddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `referalhospitalpaper`
--

DROP TABLE IF EXISTS `referalhospitalpaper`;
CREATE TABLE IF NOT EXISTS `referalhospitalpaper` (
  `refid` int(11) NOT NULL,
  `pname` varchar(60) NOT NULL,
  `pfname` varchar(60) NOT NULL,
  `pgfname` varchar(60) NOT NULL,
  `hospitalto` varchar(60) NOT NULL,
  `hospitalfrom` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `employerole`
--
ALTER TABLE `employerole`
  ADD KEY `emprempid` (`emprempid`);

--
-- Indexes for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD PRIMARY KEY (`labid`), ADD KEY `labPhID` (`labPhID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `patienthistory`
--
ALTER TABLE `patienthistory`
  ADD PRIMARY KEY (`PhID`), ADD KEY `PhPID` (`PhPID`), ADD KEY `Phempid` (`Phempid`);

--
-- Indexes for table `patientpharmacy`
--
ALTER TABLE `patientpharmacy`
  ADD PRIMARY KEY (`paphid`), ADD KEY `phphPhID` (`phphPhID`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`pharid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laboratory`
--
ALTER TABLE `laboratory`
  MODIFY `labid` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patienthistory`
--
ALTER TABLE `patienthistory`
  MODIFY `PhID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `patientpharmacy`
--
ALTER TABLE `patientpharmacy`
  MODIFY `paphid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employerole`
--
ALTER TABLE `employerole`
ADD CONSTRAINT `labo` FOREIGN KEY (`emprempid`) REFERENCES `employee` (`empid`);

--
-- Constraints for table `laboratory`
--
ALTER TABLE `laboratory`
ADD CONSTRAINT `laboratory` FOREIGN KEY (`labPhID`) REFERENCES `patienthistory` (`PhID`);

--
-- Constraints for table `patienthistory`
--
ALTER TABLE `patienthistory`
ADD CONSTRAINT `pahist` FOREIGN KEY (`PhPID`) REFERENCES `patient` (`PID`),
ADD CONSTRAINT `patinrt` FOREIGN KEY (`Phempid`) REFERENCES `employee` (`empid`);

--
-- Constraints for table `patientpharmacy`
--
ALTER TABLE `patientpharmacy`
ADD CONSTRAINT `patientpharr` FOREIGN KEY (`phphPhID`) REFERENCES `pharmacy` (`pharid`),
ADD CONSTRAINT `patintphar` FOREIGN KEY (`paphid`) REFERENCES `patienthistory` (`PhID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
