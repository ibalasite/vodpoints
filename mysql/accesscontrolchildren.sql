-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2015-12-14 10:34:01
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
-- 資料表結構 `accesscontrolchildren`
--

CREATE TABLE `accesscontrolchildren` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ParentId` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `accesscontrolchildren`
--

INSERT INTO `accesscontrolchildren` (`Id`, `Name`, `ParentId`) VALUES
(1, '片庫瀏覽', 1),
(2, '影片標籤', 1),
(3, '上傳影片', 1),
(4, 'Excel片單匯入', 1),
(5, '影片上架', 1),
(6, '節目分類', 1),
(7, '系統設定', 1),
(8, '套餐管理', 2),
(9, '套餐組成管理', 2),
(10, '頻道商管理', 3),
(11, '分發伺服器清單', 3),
(12, '操作紀錄', 4),
(13, '管理員清單', 5),
(14, '權限控管', 5);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `accesscontrolchildren`
--
ALTER TABLE `accesscontrolchildren`
  ADD PRIMARY KEY (`Id`,`ParentId`),
  ADD KEY `FK_accesscontrolchildren_accesscontrolparent` (`ParentId`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `accesscontrolchildren`
--
ALTER TABLE `accesscontrolchildren`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `accesscontrolchildren`
--
ALTER TABLE `accesscontrolchildren`
  ADD CONSTRAINT `FK_accesscontrolchildren_accesscontrolparent` FOREIGN KEY (`ParentId`) REFERENCES `accesscontrolparent` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
