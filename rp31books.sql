-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 14 2022 г., 22:54
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
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `author_id` int(255) NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`author_id`, `author_name`) VALUES
(6, 'Стайн Р.Л.'),
(8, 'Мартен-Люган А.'),
(10, 'Питерсон Э.'),
(11, 'Сакавич Н.'),
(13, 'Дронов В.А.'),
(14, 'Зельц Дж.'),
(15, 'Арнольд Т.'),
(16, 'Чхугон'),
(17, 'Кисимото М.'),
(18, 'Суон Р.'),
(19, 'Плюмери А.');

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

-- --------------------------------------------------------

--
-- Структура таблицы `booksauthor`
--

CREATE TABLE `booksauthor` (
  `id` int(255) NOT NULL,
  `book_id` int(255) NOT NULL,
  `author_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `booksauthor`
--

INSERT INTO `booksauthor` (`id`, `book_id`, `author_id`) VALUES
(2, 46, 8),
(9, 48, 10),
(1, 49, 11),
(5, 58, 6),
(18, 72, 13),
(29, 78, 14),
(30, 78, 15),
(35, 79, 16),
(37, 80, 17),
(38, 81, 17),
(39, 82, 17),
(44, 84, 6),
(46, 85, 6),
(48, 86, 6),
(50, 87, 11),
(52, 88, 8),
(55, 91, 18),
(56, 92, 19);

-- --------------------------------------------------------

--
-- Структура таблицы `booksgenres`
--

CREATE TABLE `booksgenres` (
  `id` int(255) NOT NULL,
  `book_id` int(255) NOT NULL,
  `book_genre_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `booksgenres`
--

INSERT INTO `booksgenres` (`id`, `book_id`, `book_genre_id`) VALUES
(1, 46, 9),
(2, 48, 11),
(3, 58, 8),
(4, 49, 13),
(11, 72, 12),
(22, 78, 12),
(27, 79, 10),
(29, 80, 14),
(30, 81, 14),
(31, 82, 14),
(36, 84, 8),
(38, 85, 8),
(40, 86, 8),
(42, 87, 11),
(44, 88, 9),
(47, 91, 10),
(48, 92, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `genre`
--

CREATE TABLE `genre` (
  `book_genre_id` int(255) NOT NULL,
  `genre_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `genre`
--

INSERT INTO `genre` (`book_genre_id`, `genre_name`) VALUES
(8, 'Ужасы'),
(9, 'Роман'),
(10, 'Фэнтези'),
(11, 'Приключения'),
(12, 'Обучение'),
(13, 'Комикс'),
(14, 'Манга');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'admin', 'goodmorning'),
(2, 'guest', 'guestin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Индексы таблицы `booksauthor`
--
ALTER TABLE `booksauthor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`,`author_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Индексы таблицы `booksgenres`
--
ALTER TABLE `booksgenres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `book_genre_id` (`book_genre_id`);

--
-- Индексы таблицы `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`book_genre_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT для таблицы `booksauthor`
--
ALTER TABLE `booksauthor`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `booksgenres`
--
ALTER TABLE `booksgenres`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `genre`
--
ALTER TABLE `genre`
  MODIFY `book_genre_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `booksauthor`
--
ALTER TABLE `booksauthor`
  ADD CONSTRAINT `booksauthor_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  ADD CONSTRAINT `booksauthor_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`);

--
-- Ограничения внешнего ключа таблицы `booksgenres`
--
ALTER TABLE `booksgenres`
  ADD CONSTRAINT `booksgenres_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booksgenres_ibfk_2` FOREIGN KEY (`book_genre_id`) REFERENCES `genre` (`book_genre_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
