-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Жов 25 2018 р., 02:01
-- Версія сервера: 5.6.37
-- Версія PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `test1`
--

-- --------------------------------------------------------

--
-- Структура таблиці `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `area` varchar(256) NOT NULL,
  `street` varchar(256) NOT NULL,
  `house` varchar(256) NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `addresses`
--

INSERT INTO `addresses` (`id`, `name`, `city`, `area`, `street`, `house`, `info`) VALUES
(30, 'Dmitry', 'Харьков', 'Индустриальный', 'street', 'HOUSE1', 'info'),
(31, 'dsasd', 'Киев', 'Голосеевский', 'streetsad', 'HOUSE ', 'sda'),
(32, 'Коля', 'Харьков', 'Слободской', 'Sheikh Zayed Road', 'Single Business Tower', 'Suite 2204'),
(33, 'Helena ', 'Киев', 'Деснянский', 'abc', '2', 'sds'),
(34, 'Afrassiabi', 'Киев', 'Подольский', 'zz', '2', 'sda');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
