-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2015-12-14 10:34:31
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
-- 資料表結構 `managerauthoritygroup`
--

CREATE TABLE `managerauthoritygroup` (
  `ManagerId` int(10) UNSIGNED NOT NULL,
  `AuthorityGroupId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `managerauthoritygroup`
--

INSERT INTO `managerauthoritygroup` (`ManagerId`, `AuthorityGroupId`) VALUES
(1, 1),
(1, 8),
(2, 2),
(2, 8),
(3, 8),
(4, 8),
(5, 9);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `managerauthoritygroup`
--
ALTER TABLE `managerauthoritygroup`
  ADD PRIMARY KEY (`ManagerId`,`AuthorityGroupId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
