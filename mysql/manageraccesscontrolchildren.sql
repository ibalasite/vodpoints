-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2015-12-14 10:34:23
-- 伺服器版本: 5.5.46
-- PHP 版本： 5.6.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `vodpointsdb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `manageraccesscontrolchildren`
--

CREATE TABLE `manageraccesscontrolchildren` (
  `ManagerId` int(10) UNSIGNED NOT NULL,
  `AccessControlChildrenId` int(10) UNSIGNED NOT NULL,
  `Function` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `manageraccesscontrolchildren`
--

INSERT INTO `manageraccesscontrolchildren` (`ManagerId`, `AccessControlChildrenId`, `Function`) VALUES
(1, 1, 1),
(1, 14, 1),
(2, 1, 1),
(2, 14, 1),
(3, 1, 1),
(3, 14, 1),
(4, 1, 1),
(4, 14, 1),
(5, 1, 1),
(5, 2, 1),
(5, 3, 1),
(5, 4, 1),
(5, 5, 1),
(5, 6, 1),
(5, 7, 1);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `manageraccesscontrolchildren`
--
ALTER TABLE `manageraccesscontrolchildren`
  ADD PRIMARY KEY (`ManagerId`,`AccessControlChildrenId`),
  ADD KEY `FK_manageraccesscontrolchildren_accesscontrolchildren` (`AccessControlChildrenId`);

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `manageraccesscontrolchildren`
--
ALTER TABLE `manageraccesscontrolchildren`
  ADD CONSTRAINT `FK_manageraccesscontrolchildren_accesscontrolchildren` FOREIGN KEY (`AccessControlChildrenId`) REFERENCES `accesscontrolchildren` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_manageraccesscontrolchildren_manager` FOREIGN KEY (`ManagerId`) REFERENCES `manager` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
