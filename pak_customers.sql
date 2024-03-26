-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Мар 26 2024 г., 09:22
-- Версия сервера: 5.7.38-log
-- Версия PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pak_customers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`client_id`, `name`, `job_title`, `address`) VALUES
(1, 'Иванов И.В.', 'Менеджер', 'Петропавловская, 5'),
(2, 'ООО \"Бергамот\"', 'Ген Директор', 'Крымская, 1'),
(3, 'Медведев Д.В. ', 'Начальник отдела', 'Кумовская, 1'),
(4, 'Гриньев А.С.', 'Менеджер', 'Рактинская, 45'),
(5, 'Брогов В.К.', 'Ген Директор', 'Дурачева, 33'),
(6, 'ООО \"Кризалай\"', 'Начальник отдела', 'Грузова, 95'),
(7, 'ООО \"Ренгинайзер\"', 'Менеджер', 'Луковская, 43'),
(8, 'ООО \"Ровлиф\"', 'Ген Директор', 'Дубровская, 29'),
(9, 'ООО \"Вропенгайзер\"', 'Менеджер', 'Великоустьева, 59');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `date_post` date NOT NULL,
  `date_appo` date NOT NULL,
  `date_exe` date NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `date_post`, `date_appo`, `date_exe`, `client_id`) VALUES
(1, '2024-03-15', '2024-03-20', '2024-03-23', 9),
(2, '2024-03-01', '2024-03-09', '2024-03-13', 8),
(3, '2024-03-06', '2024-03-07', '2024-03-21', 2),
(4, '2024-03-01', '2024-03-03', '2024-03-05', 4),
(5, '2024-03-05', '2024-03-11', '2024-03-22', 6),
(6, '2024-03-02', '2024-03-04', '2024-03-15', 3),
(7, '2024-03-06', '2024-03-13', '2024-03-15', 1),
(8, '2024-03-05', '2024-03-13', '2024-03-16', 4),
(9, '2024-03-09', '2024-03-11', '2024-03-14', 5),
(10, '2024-03-08', '2024-03-20', '2024-03-22', 8),
(11, '2024-03-04', '2024-03-15', '2024-03-20', 9),
(12, '2024-03-08', '2024-03-08', '2024-03-14', 5),
(13, '2024-03-01', '2024-03-06', '2024-03-07', 7),
(14, '2024-03-08', '2024-03-12', '2024-03-15', 2),
(15, '2024-03-07', '2024-03-16', '2024-03-21', 3),
(16, '2024-03-13', '2024-03-14', '2024-03-16', 7),
(17, '2024-03-03', '2024-03-09', '2024-03-22', 4),
(18, '2024-03-08', '2024-03-15', '2024-03-19', 6);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `client_id` (`client_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
