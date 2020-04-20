-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-04-20 10:31:28
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `sample`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `board`
--

CREATE TABLE `board` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `board`
--

INSERT INTO `board` (`id`, `name`, `comment`, `created`) VALUES
(4, '田中雄一', 'テストテスト', '2020-04-20 17:26:51'),
(6, '小林一茶', 'こんにちは', '2020-04-20 17:30:06'),
(7, '小林二郎', 'こんばんは', '2020-04-20 17:30:15'),
(8, '小林三蔵', 'おはようございます', '2020-04-20 17:30:34');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
