-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2015-12-10 00:05:06
-- 伺服器版本: 5.6.27-log
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
-- 資料表結構 `operationlog`
--

CREATE TABLE `operationlog` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Account` varchar(50) NOT NULL,
  `Module` varchar(50) NOT NULL,
  `ExecutedAction` varchar(50) NOT NULL,
  `CreateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `operationlog`
--

INSERT INTO `operationlog` (`Id`, `Account`, `Module`, `ExecutedAction`, `CreateDate`) VALUES
(1, 'admin', '影片上傳', '2015-11-12 18:07:30 新增 大爾查布_G_U_S1_18_國語.ts', '2015-11-12 00:00:00'),
(2, 'admin', '影片上傳', '2015-11-12 18:07:30 新增 大爾查布_G_U_S1_18_國語.ts', '2015-11-12 00:00:00'),
(3, 'admin', '影片上傳', '2015-11-12 18:07:30 新增 大爾查布_G_U_S1_18_國語.ts', '2015-11-12 13:45:56'),
(4, 'admin', '影片上傳', '2015-11-12 18:07:30 新增 大爾查布_G_U_S1_18_國語.ts', '2015-11-12 13:45:56'),
(5, 'admin', '影片上傳', '2015-11-12 18:07:30 新增 大爾查布_G_U_S1_18_國語.ts', '2015-11-12 13:45:56'),
(6, 'admin', '影片上傳', '2015-11-12 18:07:30 新增 大爾查布_G_U_S1_18_國語.ts', '2015-11-12 13:45:56'),
(7, 'test', 'test', '123', '2015-12-09 00:00:00');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `operationlog`
--
ALTER TABLE `operationlog`
  ADD PRIMARY KEY (`Id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `operationlog`
--
ALTER TABLE `operationlog`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
