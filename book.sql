-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 14 2022 г., 22:49
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rp31books`
--

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `book_id` int(255) NOT NULL,
  `book_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_script` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_year` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `book_img`, `book_script`, `book_year`) VALUES
(46, 'У тебя всё получится, дорогая моя', 'uploads/637d007eb3af7.jpg', 'Чтото', 2021),
(48, 'Тайна семьи Игиби', 'uploads/637d01743e735.jpg', 'Чтото', 2023),
(49, 'Лисья нора', 'uploads/637d0192546ab.jpg', 'Чтото', 2021),
(58, 'Ты умеешь хранить тайны?', 'uploads/6399f175bb079.jpg', 'Чтото', 2023),
(72, 'Laravel 9. Быстрая разработка веб-сайтов на PHP', 'uploads/639a0ba1b3eac.jpg', 'Чтото', 2023),
(78, 'Black Hat Python: программирование для хакеров и пентестеров', 'uploads/639a12a06241a.jpg', 'ttt', 2022),
(79, 'Поднятие уровня в одиночку. Solo Leveling. Книга 1', 'uploads/639a15c771b60.jpg', 'еуы', 2022),
(80, 'Naruto. Наруто. Книга 9. День, когда их пути разошлись: Тома 25-27', 'uploads/639a178cb0813.jpg', 'Чтото', 2022),
(81, 'Naruto. Наруто. Книга 1. Наруто Удзумаки', 'uploads/639a186f4c73d.jpg', 'Чтото', 2021),
(82, 'Naruto. Наруто. Книга 5. Прерванный экзамен', 'uploads/639a18e238833.jpg', 'Чтото', 2021),
(84, 'Не ложись поздно', 'uploads/639a1dc58476e.jpg', 'Чтото', 2021),
(85, 'Пропавшая девушка', 'uploads/639a1e801b271.jpg', 'Чтото', 2021),
(86, 'Проклятие египетской гробницы', 'uploads/639a1f4b68d93.jpg', 'Чтото', 2020),
(87, 'Король воронов', 'uploads/639a2009cd985.jpg', 'Чтото', 2020),
(88, 'Влюбленные в книги не спят в одиночестве', 'uploads/639a212ba563d.jpg', 'Чтото', 2020),
(91, 'Правосудие королей', 'uploads/639a22e9c5592.jpg', 'Чтото', 2023),
(92, 'Дино-парк. Динозавры в комиксах. Том 2', 'uploads/639a241baed74.jpg', 'Чтото', 2022);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
