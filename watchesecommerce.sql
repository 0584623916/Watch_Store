-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2022 at 10:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watchesecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Details` text NOT NULL,
  `CreateTime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`Id`, `UserId`, `Title`, `Details`, `CreateTime`) VALUES
(1, 1, 'Test', 'Test một tý', '2016-03-18 16:27:55'),
(2, 1, 'Test', 'test hai tÃ½', '2016-03-18 16:31:19'),
(3, 1, 'Kiá»ƒm tra', 'Kiá»ƒm tra má»™t táº¹o', '2016-03-18 16:33:14'),
(4, 1, 'Kiểm tra', 'Kiểm tra cho chắc chắn.', '2016-03-18 16:33:49'),
(5, 1, 'ghdgkhdfkgh', 'klghdklhgdfkj', '2016-03-28 04:12:23'),
(6, 1, 'gdfgdfg', 'gdfgdfg', '2016-03-28 04:12:35'),
(7, 1, 'gdfgdfg', 'gdfgdfg', '2016-03-28 04:13:39'),
(8, 1, 'gdfgdfgdg', 'gdfgdfgdfg', '2016-03-28 04:13:46'),
(9, 1, 'jgjghj', 'jghjhg', '2016-03-28 04:13:57'),
(10, 1, 'gdfgdf', 'gfdg', '2016-03-28 04:14:50'),
(11, 1, 'ghdfhgjh', 'gdfj', '2016-03-28 04:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `orderlines`
--

CREATE TABLE `orderlines` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `WatchesId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderlines`
--

INSERT INTO `orderlines` (`Id`, `OrderId`, `WatchesId`, `Quantity`, `Price`) VALUES
(0, 1, 4, 1, 675000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `CreateTime` datetime NOT NULL,
  `CloseTime` datetime NOT NULL,
  `Status` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Request` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Id`, `CreateTime`, `CloseTime`, `Status`, `UserId`, `Name`, `Address`, `Phone`, `Email`, `Request`) VALUES
(1, '2022-08-04 15:30:43', '0000-00-00 00:00:00', 0, NULL, 'Lê Vũ Quang', 'Hà Nội', '0584623916', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `Id` int(11) NOT NULL,
  `CodeName` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`Id`, `CodeName`, `Name`) VALUES
(1, 'casio', 'Casio'),
(2, 'rolex', 'Rolex'),
(3, 'omega', 'Omega'),
(4, 'longines', 'Longines'),
(5, 'citizens', 'Citizens'),
(6, 'eposswiss', 'Eposwiss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `CreateTime` datetime NOT NULL,
  `Admin` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Sex` int(11) NOT NULL,
  `DoB` date NOT NULL,
  `IdCard` varchar(10) NOT NULL,
  `Address` text NOT NULL,
  `Phone` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Password`, `Email`, `CreateTime`, `Admin`, `Name`, `Sex`, `DoB`, `IdCard`, `Address`, `Phone`) VALUES
(11, '123', 'admin', '2022-08-04 10:19:56', 1, 'qqqq', 1, '0000-00-00', '2123', '123', '123'),
(12, '202cb962ac59075b964b07152d234b70', 'admin@admin.com', '2022-08-04 15:31:21', 0, 'Lê Vũ Quang', 0, '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `watches`
--

CREATE TABLE `watches` (
  `Id` int(11) NOT NULL,
  `CodeName` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Origin` varchar(255) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Price` bigint(20) DEFAULT NULL,
  `CreateTime` datetime NOT NULL,
  `Picture` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `watches`
--

INSERT INTO `watches` (`Id`, `CodeName`, `Name`, `Type`, `Origin`, `Year`, `Details`, `Price`, `CreateTime`, `Picture`) VALUES
(1, 'MTP-V004GL-9AUDF', 'Đồng hồ Casio MTP-V004GL-9AUDF', 'Casio', 'Nhật bản', 2010, 'Hãng sản xuất: Đồng hồ Casio\n\nKiểu dáng: Đồng hồ nam\n\nMáy: Pin\n\nChất liệu vỏ: Thép không gỉ hay còn gọi là inox (All Stainless Steel)\n\nChất liệu dây: dây da\n\nBảo hành: 1 năm\n\nXuất xứ: Nhật Bản\n\nMặt kính: Mineral Crystal', 720000, '2016-03-28 07:19:11', '1.jpg'),
(2, 'MTP-V005GL-9AUDF', 'Đồng hồ Casio MTP-V005GL-9AUDF', 'Casio', 'Nhật bản', 2008, 'Hãng sản xuất: Đồng hồ Casio\r\n\r\nKiểu dáng: Đồng hồ nam\r\n\r\nMáy: Pin\r\n\r\nChất liệu vỏ: Thép không gỉ hay còn gọi là inox (All Stainless Steel)\r\n\r\nChất liệu dây: dây da\r\n\r\nBảo hành: 1 năm\r\n\r\nXuất xứ: Nhật Bản\r\n\r\nMặt kính: Mineral Crystal', 630000, '2016-03-28 08:56:37', '835008269_dong-ho-casio-MTP-V005GL-9AUDF.jpg'),
(3, 'MTP-V006L-1BUDF', 'Đồng hồ Casio MTP-V006L-1BUDF', 'Casio', 'Nhật bản', 2009, 'Hãng sản xuất: Đồng hồ Casio\r\n\r\nKiểu dáng: Đồng hồ nam\r\n\r\nMáy: Pin\r\n\r\nChất liệu vỏ: Thép không gỉ hay còn gọi là inox (All Stainless Steel)\r\n\r\nChất liệu dây: dây da\r\n\r\nBảo hành: 1 năm\r\n\r\nXuất xứ: Nhật Bản\r\n\r\nMặt kính: Mineral Crystal', 720000, '2016-03-28 08:56:37', '46234354_MTP-V006L-1BUDF.png'),
(4, 'MTP-V004L-1AUDF', 'Đồng hồ Casio MTP-V004L-1AUDF', 'Casio', 'Nhật bản', 2004, 'Hãng sản xuất: Đồng hồ Casio\r\n\r\nKiểu dáng: Đồng hồ nam\r\n\r\nMáy: Pin\r\n\r\nChất liệu vỏ: Thép không gỉ hay còn gọi là inox (All Stainless Steel)\r\n\r\nChất liệu dây: dây da\r\n\r\nBảo hành: 1 năm\r\n\r\nXuất xứ: Nhật Bản\r\n\r\nMặt kính: Mineral Crystal', 675000, '2016-03-28 08:58:16', '179199675_dong-ho-casio-MTP-V004L-1AUDF.jpg'),
(5, 'MTP-V002D-1AUDF', 'Đồng hồ Casio MTP-V002D-1AUDF', 'Casio', 'Nhật bản', 2004, 'Hãng sản xuất: Đồng hồ Casio\r\n\r\nKiểu dáng: Đồng hồ nam\r\n\r\nMáy: Pin\r\n\r\nChất liệu vỏ: Thép không gỉ hay còn gọi là inox (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ\r\n\r\nBảo hành: 1 năm\r\n\r\nXuất xứ: Nhật Bản\r\n\r\nMặt kính: Mineral Crystal', 765000, '2016-03-28 08:58:16', '888144402_dong-ho-casio-MTP-V002D-1AUDF.jpg'),
(6, 'MTP-V004GL-9AUDF', 'Đồng hồ Casio MTP-V004GL-9AUDF', 'Casio', 'Nhật bản', 2010, 'Hãng sản xuất: Đồng hồ Casio\r\n\r\nKiểu dáng: Đồng hồ nam\r\n\r\nMáy: Pin\r\n\r\nChất liệu vỏ: Thép không gỉ hay còn gọi là inox (All Stainless Steel)\r\n\r\nChất liệu dây: dây da\r\n\r\nBảo hành: 1 năm\r\n\r\nXuất xứ: Nhật Bản\r\n\r\nMặt kính: Mineral Crystal', 720000, '2016-03-28 07:19:11', '1.jpg'),
(7, 'MTP-V005GL-9AUDF', 'Đồng hồ Casio MTP-V005GL-9AUDF', 'Casio', 'Nhật bản', 2008, 'Hãng sản xuất: Đồng hồ Casio\r\n\r\nKiểu dáng: Đồng hồ nam\r\n\r\nMáy: Pin\r\n\r\nChất liệu vỏ: Thép không gỉ hay còn gọi là inox (All Stainless Steel)\r\n\r\nChất liệu dây: dây da\r\n\r\nBảo hành: 1 năm\r\n\r\nXuất xứ: Nhật Bản\r\n\r\nMặt kính: Mineral Crystal', 630000, '2016-03-28 08:56:37', '835008269_dong-ho-casio-MTP-V005GL-9AUDF.jpg'),
(8, 'MTP-V006L-1BUDF', 'Đồng hồ Casio MTP-V006L-1BUDF', 'Casio', 'Nhật bản', 2009, 'Hãng sản xuất: Đồng hồ Casio\r\n\r\nKiểu dáng: Đồng hồ nam\r\n\r\nMáy: Pin\r\n\r\nChất liệu vỏ: Thép không gỉ hay còn gọi là inox (All Stainless Steel)\r\n\r\nChất liệu dây: dây da\r\n\r\nBảo hành: 1 năm\r\n\r\nXuất xứ: Nhật Bản\r\n\r\nMặt kính: Mineral Crystal', 720000, '2016-03-28 08:56:37', '46234354_MTP-V006L-1BUDF.png'),
(9, 'MTP-V004L-1AUDF', 'Đồng hồ Casio MTP-V004L-1AUDF', 'Casio', 'Nhật bản', 2004, 'Hãng sản xuất: Đồng hồ Casio\r\n\r\nKiểu dáng: Đồng hồ nam\r\n\r\nMáy: Pin\r\n\r\nChất liệu vỏ: Thép không gỉ hay còn gọi là inox (All Stainless Steel)\r\n\r\nChất liệu dây: dây da\r\n\r\nBảo hành: 1 năm\r\n\r\nXuất xứ: Nhật Bản\r\n\r\nMặt kính: Mineral Crystal', 675000, '2016-03-28 08:58:16', '179199675_dong-ho-casio-MTP-V004L-1AUDF.jpg'),
(10, 'MTP-V002D-1AUDF', 'Đồng hồ Casio MTP-V002D-1AUDF', 'Casio', 'Nhật bản', 2004, 'Hãng sản xuất: Đồng hồ Casio\r\n\r\nKiểu dáng: Đồng hồ nam\r\n\r\nMáy: Pin\r\n\r\nChất liệu vỏ: Thép không gỉ hay còn gọi là inox (All Stainless Steel)\r\n\r\nChất liệu dây: Thép không gỉ\r\n\r\nBảo hành: 1 năm\r\n\r\nXuất xứ: Nhật Bản\r\n\r\nMặt kính: Mineral Crystal', 765000, '2016-03-28 08:58:16', '888144402_dong-ho-casio-MTP-V002D-1AUDF.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Email`);

--
-- Indexes for table `watches`
--
ALTER TABLE `watches`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `watches`
--
ALTER TABLE `watches`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
