-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2015-12-01 01:08:45
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
-- 資料表結構 `supplier`
--

CREATE TABLE `supplier` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ContactPerson` varchar(50) NOT NULL,
  `Telephone` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `supplier`
--

INSERT INTO `supplier` (`Id`, `Name`, `ContactPerson`, `Telephone`, `Email`, `Address`) VALUES
(1, '木棉花', '王曉明', '02-87929368', 'user1@point.tv', '台北市內湖區新湖三路15號5樓'),
(2, '靖天', '陳大華', '02-87929367', 'user2@point.tv', '台北市內湖區新湖三路15號6樓'),
(3, '潘朵拉', '李阿發', '02-87929363', 'user3@point.tv', '台北市內湖區新湖三路15號8樓');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `supplier`
--
ALTER TABLE `supplier`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
