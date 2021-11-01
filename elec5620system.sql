-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2021-11-01 03:14:37
-- 服务器版本： 10.4.16-MariaDB
-- PHP 版本： 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `elec5620system`
--

-- --------------------------------------------------------

--
-- 表的结构 `agencyaccount`
--

CREATE TABLE `agencyaccount` (
  `agencyAccountID` int(25) NOT NULL,
  `agencyName` varchar(20) NOT NULL,
  `accountName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `agencyaccount`
--

INSERT INTO `agencyaccount` (`agencyAccountID`, `agencyName`, `accountName`, `password`, `email`, `phone`) VALUES
(1, '240TA', 'Dean', '123', '3456@qq.com', 43531);

-- --------------------------------------------------------

--
-- 表的结构 `agencyinform`
--

CREATE TABLE `agencyinform` (
  `agencyID` int(10) NOT NULL,
  `agencyName` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `companyPicture` varchar(50) NOT NULL,
  `introduction` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `agencyinform`
--

INSERT INTO `agencyinform` (`agencyID`, `agencyName`, `address`, `companyPicture`, `introduction`) VALUES
(1, '240TA', 'AMMer', '16354828991772860502.jpg', 'Wonderful studio one');

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `cid` int(150) NOT NULL,
  `pid` int(150) NOT NULL,
  `username` varchar(225) NOT NULL,
  `comment` text NOT NULL,
  `rate` float NOT NULL,
  `time` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`cid`, `pid`, `username`, `comment`, `rate`, `time`) VALUES
(2, 4, 'zxf', 'test1', 0, ''),
(3, 4, 'zxf', 'test2', 0, '2021-09-21 12:52:53'),
(4, 4, 'zxf', 'test2', 0, '2021-09-21 12:53:10'),
(5, 4, 'zxf', 'test2', 0, '2021-09-21 12:54:13'),
(6, 4, 'zxf', '', 10, '2021-09-21 12:58:44'),
(7, 5, 'wyh', 'i comment myself', 10, '2021-09-21 13:07:21'),
(8, 4, 'zxf', 'i like it ', 10, '2021-09-21 14:58:52'),
(10, 11, 'test', 'test comment', 10, '2021-09-22 18:52:52'),
(11, 21, 'test', 'test commenttttttttttttt', 10, '2021-09-22 18:53:57'),
(12, 4, 'test', 'test22/9/2021', 1, '2021-09-22 20:22:23'),
(13, 4, 'zxf', 'wqasdsa', 10, '2021-10-13 14:57:19'),
(14, 4, 'zxf', '这是一个测试', 5, '2021-10-13 23:05:23'),
(15, 22, 'test3', 'this is a test', 10, '2021-10-24 23:25:11');

-- --------------------------------------------------------

--
-- 表的结构 `itinerary`
--

CREATE TABLE `itinerary` (
  `itineraryID` int(35) NOT NULL,
  `title` varchar(50) NOT NULL,
  `placeStart` varchar(30) NOT NULL,
  `placeEnd` varchar(30) NOT NULL,
  `duration` int(30) NOT NULL,
  `coverPicture` varchar(50) NOT NULL,
  `introduction` varchar(100) NOT NULL,
  `price` mediumtext NOT NULL,
  `agencyName` varchar(25) NOT NULL,
  `userName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `itinerary`
--

INSERT INTO `itinerary` (`itineraryID`, `title`, `placeStart`, `placeEnd`, `duration`, `coverPicture`, `introduction`, `price`, `agencyName`, `userName`) VALUES
(1, 'Summer travel', 'ghll', 'fxss', 22, '16354136531246983910.jpg', '11-12 Trip', '105k', '240TA', 'Dean'),
(2, 'Winter Travel', 'yyds', 'yysds', 22, '16354133151508192743.jpg', '5 stars', '112k', '240TA', 'Dean');

-- --------------------------------------------------------

--
-- 表的结构 `pictures`
--

CREATE TABLE `pictures` (
  `pid` int(150) NOT NULL,
  `uid` int(150) NOT NULL,
  `creatorName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(225) NOT NULL,
  `upload_time` varchar(150) NOT NULL,
  `address` varchar(225) NOT NULL,
  `viewTimes` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `pictures`
--

INSERT INTO `pictures` (`pid`, `uid`, `creatorName`, `description`, `name`, `upload_time`, `address`, `viewTimes`) VALUES
(4, 1, 'zxf', 'test1111111111111111111111111111111111111111111111', 'tet1', '2021-09-19 03:01:01', 'http://localhost/elec5620/feed/xinige.jpg', 113),
(5, 3, 'wyh', '我以前去过这里很漂亮', 'Tian an men ', '2021-09-19 05:42:53', 'http://localhost/elec5620/feed/tiananmen.jpg', 6),
(11, 3, 'wyh', 'ww', 'w', '2021-09-19 14:02:16', 'http://localhost/elec5620/feed/hunanUni.jpg', 1),
(21, 6, 'test', 'located at italyyyyyyyyyyyyyyyyyyyyyyyyyyy', 'PiazzaTower', '2021-09-22 18:53:27', 'http://localhost/elec5620/feed/Tower_of_Pisa.jpg', 3),
(22, 6, 'test', 'have been there before', 'Brisbane Center Station', '2021-09-22 19:32:39', 'http://localhost/elec5620/feed/centerstation.jpg', 8);

-- --------------------------------------------------------

--
-- 表的结构 `rate`
--

CREATE TABLE `rate` (
  `rid` int(150) NOT NULL,
  `pid` int(150) NOT NULL,
  `rate` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `taadvertising`
--

CREATE TABLE `taadvertising` (
  `advertiseID` int(100) NOT NULL,
  `agencyName` varchar(25) NOT NULL,
  `pID` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `taadvertising`
--

INSERT INTO `taadvertising` (`advertiseID`, `agencyName`, `pID`) VALUES
(1, '240TA', 4);

-- --------------------------------------------------------

--
-- 表的结构 `tasecurity`
--

CREATE TABLE `tasecurity` (
  `securityID` int(11) NOT NULL,
  `problem1` varchar(100) NOT NULL,
  `problem2` varchar(100) NOT NULL,
  `answer1` varchar(50) NOT NULL,
  `answer2` varchar(50) NOT NULL,
  `agencyName` varchar(25) NOT NULL,
  `userName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `tasecurity`
--

INSERT INTO `tasecurity` (`securityID`, `problem1`, `problem2`, `answer1`, `answer2`, `agencyName`, `userName`) VALUES
(1, 'What is your favourite color?', 'Who is your favourite star?', 'Red', 'SP', '240TA', 'Dean');

-- --------------------------------------------------------

--
-- 表的结构 `useraccount`
--

CREATE TABLE `useraccount` (
  `uid` int(150) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `secret_ques` varchar(225) NOT NULL,
  `answer` varchar(225) NOT NULL,
  `balance` int(150) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `useraccount`
--

INSERT INTO `useraccount` (`uid`, `username`, `password`, `phone`, `email`, `secret_ques`, `answer`, `balance`, `type`) VALUES
(1, 'zxf', '$2y$10$mk7AXXZZqpfveIUHUJRWyu5mRy9XjVZX8vDY6KxOfHRXDkt2ezzq2', '111', '123qq.com', 'age now', '24', 8, 'user'),
(3, 'wyh', '123', '123', '123qq.com', 'who am i', 'wyh', 9972, 'user'),
(6, 'test', '$2y$10$eSlv0dsBD0BCTr37nHNbMOIm19Gh1f1YImOLViOr6Wp0ZvkePo60G', '110', 'test@qq.com', 'whoami', 'test', 936, 'user'),
(7, 'test1', '$2y$10$MoWrCDNn.UHg71mBp4QpsOQG7Hj3KGJXSwIM9zgGeG0Jm2Ox4hF6m', '120', 'test1@qq.com', 'whoami', 'test1', 0, 'user'),
(12, 'admin', '$2y$10$Tds3FSAXTz1cQ0pU2XfSiOnkSZLHQkLOufhQVxpPmV6GCWUhauB1G', '1234', '1234@qq.com', 'age', '20', 0, 'admin');

--
-- 转储表的索引
--

--
-- 表的索引 `agencyaccount`
--
ALTER TABLE `agencyaccount`
  ADD PRIMARY KEY (`agencyAccountID`);

--
-- 表的索引 `agencyinform`
--
ALTER TABLE `agencyinform`
  ADD PRIMARY KEY (`agencyID`);

--
-- 表的索引 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `rate&cic` (`pid`);

--
-- 表的索引 `itinerary`
--
ALTER TABLE `itinerary`
  ADD PRIMARY KEY (`itineraryID`);

--
-- 表的索引 `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `uidConstraint` (`uid`);

--
-- 表的索引 `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `rate&pic` (`pid`);

--
-- 表的索引 `taadvertising`
--
ALTER TABLE `taadvertising`
  ADD PRIMARY KEY (`advertiseID`);

--
-- 表的索引 `tasecurity`
--
ALTER TABLE `tasecurity`
  ADD PRIMARY KEY (`securityID`);

--
-- 表的索引 `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `agencyaccount`
--
ALTER TABLE `agencyaccount`
  MODIFY `agencyAccountID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `agencyinform`
--
ALTER TABLE `agencyinform`
  MODIFY `agencyID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `cid` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `itinerary`
--
ALTER TABLE `itinerary`
  MODIFY `itineraryID` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `pictures`
--
ALTER TABLE `pictures`
  MODIFY `pid` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用表AUTO_INCREMENT `rate`
--
ALTER TABLE `rate`
  MODIFY `rid` int(150) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `taadvertising`
--
ALTER TABLE `taadvertising`
  MODIFY `advertiseID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `tasecurity`
--
ALTER TABLE `tasecurity`
  MODIFY `securityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `useraccount`
--
ALTER TABLE `useraccount`
  MODIFY `uid` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 限制导出的表
--

--
-- 限制表 `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `rate&cic` FOREIGN KEY (`pid`) REFERENCES `pictures` (`pid`);

--
-- 限制表 `pictures`
--
ALTER TABLE `pictures`
  ADD CONSTRAINT `uidConstraint` FOREIGN KEY (`uid`) REFERENCES `useraccount` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate&pic` FOREIGN KEY (`pid`) REFERENCES `pictures` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
