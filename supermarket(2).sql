-- phpMyAdmin SQL Dump
-- version 4.3.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 31, 2015 at 07:21 PM
-- Server version: 5.5.42
-- PHP Version: 5.4.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customerID` int(11) NOT NULL,
  `Cname` varchar(23) NOT NULL,
  `Fname` varchar(54) DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `Cname`, `Fname`, `pin`) VALUES
(1, ' Abebe', ' kebede', '1234'),
(2, ' Fatuma', ' Abebe', ' 12345'),
(3, ' asfino', 'rshan ', ' 0213'),
(4, ' ryy', ' yhj', ' uu'),
(5, ' abrham', ' bekele', ' 22'),
(6, ' ABI', ' KEBEA', ' 1221'),
(7, ' ', ' ', ' '),
(8, ' asF', ' ABR', ' 123'),
(9, ' ', ' ', ' '),
(10, ' ', ' ', ' '),
(11, ' ', ' ', ' '),
(12, ' astwale', '  tsega', ' 12');

-- --------------------------------------------------------

--
-- Table structure for table `customerproduct`
--

CREATE TABLE IF NOT EXISTS `customerproduct` (
  `CstProdCode` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL,
  `ProdCod` int(11) DEFAULT NULL,
  `BuyDate` datetime DEFAULT NULL,
  `ItemQuantity` int(11) DEFAULT NULL,
  `paynumber` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerproduct`
--

INSERT INTO `customerproduct` (`CstProdCode`, `customerID`, `ProdCod`, `BuyDate`, `ItemQuantity`, `paynumber`) VALUES
(1, 1, 1, '2015-05-17 00:00:00', 1, 1),
(2, 5, 12, '2015-05-13 00:00:00', 2, 3),
(3, 1, 1, '2015-05-08 00:00:00', 2, 1),
(4, 5, 14, '2014-10-22 00:00:00', 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `itemcatagory`
--

CREATE TABLE IF NOT EXISTS `itemcatagory` (
  `ItemCode` int(11) NOT NULL,
  `ItemName` varchar(54) DEFAULT NULL,
  `ItemDisriputtion` varchar(123) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemcatagory`
--

INSERT INTO `itemcatagory` (`ItemCode`, `ItemName`, `ItemDisriputtion`) VALUES
(1, 'Juice', 'j'),
(2, 'sopes', 's'),
(3, 'biscutes', 'b'),
(4, ' spoons ', 'spoons made '),
(5, ' pens', 'red pens made in ethiopa'),
(6, 'cosmotics', 'cosmotics made up of\nfruots'),
(7, 'school products', 'materials used to in school'),
(8, 'foods', 'foods used for childes'),
(45, 'cofee products', 'ethiopian cofee related productes'),
(46, ' Banana', ' Frouuts Banana ');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `PayCode` int(11) NOT NULL,
  `PayDate` datetime DEFAULT NULL,
  `EmpId` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PayCode`, `PayDate`, `EmpId`) VALUES
(1, '2015-05-17 00:00:00', 1),
(2, '2015-05-17 00:00:00', 1),
(3, '2015-05-17 00:00:00', 1),
(5, '2015-05-18 00:00:00', 3),
(7, '2015-05-20 00:00:00', NULL),
(8, '2015-05-07 00:00:00', NULL),
(9, '2015-05-01 00:00:00', NULL),
(10, '2015-05-14 00:00:00', 3),
(11, '2015-05-08 00:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `ProdCod` int(11) NOT NULL,
  `ProdName` varchar(16) NOT NULL,
  `ProdManDate` datetime DEFAULT NULL,
  `ProdExpDate` datetime DEFAULT NULL,
  `ProdPrice` double DEFAULT NULL,
  `DteReg` datetime DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `prodcatCode` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProdCod`, `ProdName`, `ProdManDate`, `ProdExpDate`, `ProdPrice`, `DteReg`, `Quantity`, `prodcatCode`) VALUES
(1, 'r', '2014-11-04 00:00:00', '2015-07-24 00:00:00', 34, '2015-05-17 00:00:00', 12, 1),
(2, 'kokakola', '2014-12-17 00:00:00', '2015-05-18 00:00:00', 12.5, '2015-05-28 00:00:00', 24, 5),
(12, 'banana', '2015-05-14 00:00:00', '2015-05-11 00:00:00', 0.65, '2015-05-28 00:00:00', 12, 5),
(14, ' amir', '2014-05-02 00:00:00', '2016-05-13 00:00:00', 12.2, '2015-05-09 00:00:00', 12, 8),
(15, ' brush', '2014-05-02 00:00:00', '2015-05-16 00:00:00', 10, '2015-05-01 00:00:00', 1, 5),
(16, ' mouse', '2012-05-02 00:00:00', '2015-05-15 00:00:00', 1020, '2015-05-09 00:00:00', 5, 8),
(17, ' keyboard', '2011-05-05 00:00:00', '2015-05-08 00:00:00', 1523, '2015-05-22 00:00:00', 3, 5),
(18, ' sugar', '2012-05-02 00:00:00', '2017-05-06 00:00:00', 18, '2015-05-09 00:00:00', 2, 5),
(19, 'brush', '2015-03-01 00:00:00', '2015-07-06 00:00:00', 6.5, '2015-05-07 00:00:00', 8, 4),
(20, ' BAnana', '2015-05-15 00:00:00', '2015-05-23 00:00:00', 45, '2015-05-18 00:00:00', 16, 4),
(21, ' frouts', '2015-05-14 00:00:00', '2015-05-22 00:00:00', 56, '2015-05-28 00:00:00', 12, 46);

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

CREATE TABLE IF NOT EXISTS `useraccount` (
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `UserRole` int(11) DEFAULT NULL,
  `UserWorkerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`UserName`, `Password`, `UserRole`, `UserWorkerID`) VALUES
('asfino', '1616', 4, 8),
('java', '1234', 1, 1),
('zeki', '1221', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE IF NOT EXISTS `worker` (
  `WorkerId` int(11) NOT NULL,
  `Wkrname` varchar(34) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `Phoneno` int(11) DEFAULT NULL,
  `city` varchar(56) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `ProdCod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`WorkerId`, `Wkrname`, `Dob`, `sex`, `Phoneno`, `city`, `customerId`, `ProdCod`) VALUES
(1, 'abebe', '2014-03-03', 'w', 2323, 'db', 1, 1),
(2, ' BURTEA', '1985-05-14', 'Female', 938199258, 'DBU ', 3, 2),
(3, 'asfino', '2012-09-28', 'm', 938199408, 'addis adigura', 3, 1),
(8, ' akelat', '2015-05-07', 'Male', 9374158, ' gonder', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `customerproduct`
--
ALTER TABLE `customerproduct`
  ADD PRIMARY KEY (`CstProdCode`), ADD KEY `customerID` (`customerID`), ADD KEY `ProdCod` (`ProdCod`), ADD KEY `paynumber` (`paynumber`);

--
-- Indexes for table `itemcatagory`
--
ALTER TABLE `itemcatagory`
  ADD PRIMARY KEY (`ItemCode`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PayCode`), ADD KEY `EmpId` (`EmpId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProdCod`), ADD KEY `prodcatCode` (`prodcatCode`);

--
-- Indexes for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`UserName`), ADD KEY `userworker` (`UserWorkerID`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`WorkerId`), ADD KEY `customerId` (`customerId`), ADD KEY `ProdCod` (`ProdCod`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `customerproduct`
--
ALTER TABLE `customerproduct`
  MODIFY `CstProdCode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `itemcatagory`
--
ALTER TABLE `itemcatagory`
  MODIFY `ItemCode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PayCode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProdCod` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customerproduct`
--
ALTER TABLE `customerproduct`
ADD CONSTRAINT `customerproduct_ibfk_1` FOREIGN KEY (`paynumber`) REFERENCES `payment` (`PayCode`),
ADD CONSTRAINT `customerproduct_ibfk_2` FOREIGN KEY (`ProdCod`) REFERENCES `product` (`ProdCod`),
ADD CONSTRAINT `customerproduct_ibfk_3` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`EmpId`) REFERENCES `worker` (`WorkerId`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
ADD CONSTRAINT `prodcatagoryfk` FOREIGN KEY (`prodcatCode`) REFERENCES `itemcatagory` (`ItemCode`);

--
-- Constraints for table `useraccount`
--
ALTER TABLE `useraccount`
ADD CONSTRAINT `workeraccount` FOREIGN KEY (`UserWorkerID`) REFERENCES `worker` (`WorkerId`);

--
-- Constraints for table `worker`
--
ALTER TABLE `worker`
ADD CONSTRAINT `worker_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
