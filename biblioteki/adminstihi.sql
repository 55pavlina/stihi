-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 24 2018 г., 22:55
-- Версия сервера: 5.6.37
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `adminstihi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Autors`
--

CREATE TABLE `Autors` (
  `id_Autors` int(10) NOT NULL COMMENT 'ИД Автора',
  `name` varchar(50) DEFAULT NULL COMMENT 'Имя автора'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Autors`
--

INSERT INTO `Autors` (`id_Autors`, `name`) VALUES
(1, 'Ахматова А. '),
(2, 'Васильев П.'),
(3, 'Есенин С.'),
(4, 'Карамзин Н.'),
(5, 'Набоков В.'),
(6, 'Пушкин А.'),
(7, 'Тургенев И.'),
(8, 'Толстой А.'),
(9, 'Цветаева М.'),
(10, 'Чуковский К.');

-- --------------------------------------------------------

--
-- Структура таблицы `Stihi`
--

CREATE TABLE `Stihi` (
  `id` int(10) NOT NULL DEFAULT '0' COMMENT 'ИД стихотворения',
  `title` varchar(100) DEFAULT NULL COMMENT 'Название стихотворения',
  `fullDescription` varchar(5000) DEFAULT NULL COMMENT 'Полное стихотворение',
  `date` datetime DEFAULT NULL COMMENT 'Дата публикации',
  `id_Autors` int(10) DEFAULT NULL COMMENT 'ИД автора'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Stihi`
--

INSERT INTO `Stihi` (`id`, `title`, `fullDescription`, `date`, `id_Autors`) VALUES
(1, 'Он любил', 'Он любил три вещи на свете:\r\nЗа вечерней пенье, белых павлинов\r\nИ стёртые карты Америки.\r\nНе любил, когда плачут дети,\r\nНе любил чая с малиной\r\nИ женской истерики\r\n... А я была его женой.', '1999-03-23 00:00:00', 1),
(2, 'Степь', 'Родительница степь, прими мою,\r\nОкрашенную сердца жаркой кровью,\r\nСтепную песнь! Склонившись к изголовью\r\nВсех трав твоих, одну тебя пою!\r\nК певучему я обращаюсь звуку,\r\nЕго не потускнеет серебро,\r\nТак вкладывай, о степь, в сыновью руку\r\nКривое ястребиное перо.', '1920-03-24 00:00:00', 2),
(3, 'До свидания, друг мой!', 'До свиданья, друг мой, до свиданья.\r\nМилый мой, ты у меня в груди.\r\nПредназначенное расставанье\r\nОбещает встречу впереди.\r\n\r\nДо свиданья, друг мой, без руки, без слова,\r\nНе грусти и не печаль бровей,-\r\nВ этой жизни умирать не ново,\r\nНо и жить, конечно, не новей.', '1913-03-26 00:00:00', 3),
(4, 'К читателям!', '   Не гневитеся, чтецы, стихами моими.\r\n   С музой своей говорю; нет дела с иными.\r\n   Коли кому и смеюсь, - ей, не с доброй воли,\r\n   Для украсы: ведь и в щах нет смаку без соли.', '1791-01-08 00:00:00', 4),
(5, 'Забудешь ты меня...', 'Забудешь ты меня, как эту ночь забудешь,\r\nкак черный этот сад, и дальний плеск волны,\r\nи в небе облачном зеркальный блеск луны...\r\nНо - думается мне - ты счастлива не будешь.\r\nБыть может, я не прав. Я только ведь поэт,\r\nнепостоянный друг печали мимолетной\r\nи краткой радости, мечтатель беззаботный,\r\nхудожник, любящий равно и мрак и свет.\r\nНо ясновиденье подобно вдохновенью:\r\nпрезреньем окрылен тревожный голос мой!\r\nВот почему твой путь и ясный и прямой\r\nтуманю наперед пророческою тенью.\r\nПредсказываю я: ты будешь мирно жить,\r\nкак вдруг о пламенном в тебе тоска проснется,\r\nно, видишь ли, другой тех звезд и не коснется,\r\nкоторыми тебя могу я окружить.', '1937-04-21 00:00:00', 5),
(6, 'Воды глубокие', 'Воды глубокие\r\nПлавно текут.\r\nЛюди премудрые\r\nТихо живут.', '1833-03-30 00:00:00', 6),
(7, 'Разлука', 'О разлука, разлука!\r\nКак ты сердцу горька.\r\nТерзает его скука,\r\nСожигает тоска!\r\n\r\nГде бывалая сила?\r\nУвы, где прежний я?\r\nМеня ты разлюбила...\r\nНо не кляну тебя!', '1843-05-18 00:00:00', 7),
(8, 'Не верь мне друг', 'Не верь мне, друг, когда, в избытке горя\r\nЯ говорю, что разлюбил тебя,\r\nВ отлива час не верь измене моря,\r\nОно к земле воротится, любя.\r\n\r\nУж я тоскую, прежней страсти полный,\r\nМою свободу вновь тебе отдам,\r\nИ уж бегут с обратным шумом волны\r\nИздалека к любимым берегам!', '1898-05-18 00:00:00', 8),
(9, 'Как правая и левая рука...', 'Как правая и левая рука -\r\nТвоя душа моей душе близка.\r\n\r\nМы смежны, блаженно и тепло,\r\nКак правое и левое крыло.\r\n\r\nНо вихрь встаёт - и бездна пролегла\r\nОт правого - до левого крыла!', '1925-06-23 00:00:00', 9),
(10, 'Свинки', 'Как на пишущей машинке\r\nДве хорошенькие свинки:\r\nТуки-туки-туки-тук!\r\nТуки-туки-туки-тук!\r\n\r\n   И постукивают,\r\n   И похрюкивают:\r\n\"Хрюки-хрюки-хрюки-хрюк!\r\nХрюки-хрюки-хрюки-хрюк!\"', '1922-03-30 00:00:00', 10),
(11, 'Как вчера хорош у моря...', 'Как вчера хорош у моря\r\nБыл наш русский самовар,\r\nШли мы долго вместе, споря,\r\nМежду саклями татар.\r\n', '1856-08-17 00:00:00', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id` int(10) DEFAULT NULL COMMENT 'ИД админа',
  `name` varchar(50) DEFAULT NULL COMMENT 'Имя админа',
  `password` varchar(50) DEFAULT NULL COMMENT 'Пароль админа'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `name`, `password`) VALUES
(1, 'lina', 'lina1'),
(2, 'severina', 'severina2'),
(3, 'calina', 'catalina3'),
(4, 'vanya', 'vanya4'),
(5, 'robert', 'robert5'),
(6, 'max', 'max6'),
(7, 'lena', 'lena7'),
(8, 'kris', 'kris8'),
(9, 'mark', 'mark9'),
(10, 'sonya', 'sonya10');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Autors`
--
ALTER TABLE `Autors`
  ADD PRIMARY KEY (`id_Autors`);

--
-- Индексы таблицы `Stihi`
--
ALTER TABLE `Stihi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Autors` (`id_Autors`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Autors`
--
ALTER TABLE `Autors`
  MODIFY `id_Autors` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ИД Автора', AUTO_INCREMENT=11;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Stihi`
--
ALTER TABLE `Stihi`
  ADD CONSTRAINT `stihi_ibfk_1` FOREIGN KEY (`id_Autors`) REFERENCES `Autors` (`id_Autors`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
