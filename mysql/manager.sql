-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2015-12-08 23:34:21
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
-- 資料表結構 `manager`
--

CREATE TABLE `manager` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Account` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Telephone` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `manager`
--

INSERT INTO `manager` (`Id`, `Name`, `Account`, `Email`, `Telephone`, `Password`) VALUES
(1, '陳欣玄', 'Alex', 'alex@point.tv', '02-87929368', '12345'),
(2, '賴曉明', 'Edward', 'alex@point.tv', '02-87929368', '12345'),
(3, '吳曉華', 'Daniel', 'alex@point.tv', '02-87929368', '12345'),
(4, '台灣微軟', 'Mike', 'alex@point.tv', '02-87929368', '12345');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`Id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `manager`
--
ALTER TABLE `manager`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
