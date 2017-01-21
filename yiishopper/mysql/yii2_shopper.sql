-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 03 2016 г., 15:58
-- Версия сервера: 5.5.48
-- Версия PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2_shopper`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sh_category`
--

CREATE TABLE IF NOT EXISTS `sh_category` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sh_category`
--

INSERT INTO `sh_category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 0, 'Sportswear', NULL, NULL),
(2, 0, 'Mens', NULL, NULL),
(3, 0, 'Womens', NULL, NULL),
(4, 1, 'Nike', NULL, NULL),
(5, 1, 'Under Armour', NULL, NULL),
(6, 1, 'Adidas', NULL, NULL),
(7, 1, 'Puma', NULL, NULL),
(8, 1, 'ASICS', NULL, NULL),
(9, 2, 'Fendi', NULL, NULL),
(10, 2, 'Guess', NULL, NULL),
(11, 2, 'Valentino', NULL, NULL),
(12, 2, 'Dior', NULL, NULL),
(13, 2, 'Versace', NULL, NULL),
(14, 2, 'Armani', NULL, NULL),
(15, 2, 'Prada', NULL, NULL),
(16, 2, 'Dolce and Gabbana', NULL, NULL),
(17, 2, 'Chanel', NULL, NULL),
(18, 2, 'Gucci', NULL, NULL),
(19, 3, 'Fendi', NULL, NULL),
(20, 3, 'Guess', NULL, NULL),
(21, 3, 'Valentino', NULL, NULL),
(22, 3, 'Dior', NULL, NULL),
(23, 3, 'Versace', NULL, NULL),
(24, 0, 'Kids', NULL, NULL),
(25, 0, 'Fashion', NULL, NULL),
(26, 0, 'Households', NULL, NULL),
(27, 0, 'Interiors', NULL, NULL),
(28, 0, 'Clothing', NULL, NULL),
(29, 0, 'Bags', 'сумки ключевики', 'сумки описание'),
(30, 0, 'Shoes', NULL, NULL),
(31, 6, 'Shoes', NULL, NULL),
(32, 6, 'Clothing', NULL, NULL),
(33, 6, 'Symka', NULL, NULL),
(34, 31, 'Lifestyle', NULL, NULL),
(35, 31, 'Baseball', NULL, NULL),
(36, 32, 'ПУХОВИК SUPERLIGHT', NULL, NULL),
(37, 32, 'КУРТКА WHITE MOUNTAINEERING VARSITY', NULL, NULL),
(38, 32, 'КУРТКА MÉLANGE', NULL, NULL),
(39, 31, 'Soccer', NULL, NULL),
(40, 31, 'Running', NULL, NULL),
(41, 31, 'Scateboarding', NULL, NULL),
(42, 34, 'SUPERSTAR FOUNDATION SHOES\r\n\r\n', NULL, NULL),
(43, 34, 'STAN SMITH PRIMEKNIT SHOES', NULL, NULL),
(44, 34, 'STAN SMITH PRIMEKNIT SHOES', NULL, NULL),
(45, 35, 'ADIZERO AFTERBURNER 2.0 JRD CLEATS', NULL, NULL),
(46, 35, 'BOOST ICON 2.0 JRD CLEATS', NULL, NULL),
(47, 39, 'X TANGO 16.1 INDOOR SHOES', NULL, NULL),
(48, 39, 'X TANGO 16.2 TURF SHOES', NULL, NULL),
(49, 39, 'ACE TANGO 17+ PURECONTROL TURF SHOES', NULL, NULL),
(50, 39, 'ACE TANGO 17.2 TURF SHOES', NULL, NULL),
(51, 40, 'ALPHABOUNCE XENO M', NULL, NULL),
(52, 40, 'RESPONSE BOOST TRAIL SHOES', NULL, NULL),
(53, 41, 'BUSENITZ PUREBOOST SHOES', NULL, NULL),
(54, 41, 'ADIEASE PREMIERE ADV X OFFICIAL SHOES', NULL, NULL),
(55, 41, 'BUSENITZ PRO CLASSIFIED SHOES', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sh_product`
--

CREATE TABLE IF NOT EXISTS `sh_product` (
  `id` int(11) unsigned NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `cart_img` varchar(255) DEFAULT 'no-image.png',
  `medium_img` varchar(255) DEFAULT 'no-image.png',
  `recommend_img` varchar(255) DEFAULT 'recommend1.jpg',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0',
  `stock` enum('0','1') NOT NULL DEFAULT '0',
  `rating` varchar(255) DEFAULT 'rating1.png',
  `recommend` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sh_product`
--

INSERT INTO `sh_product` (`id`, `category_id`, `name`, `content`, `price`, `keywords`, `description`, `img`, `cart_img`, `medium_img`, `recommend_img`, `hit`, `new`, `sale`, `stock`, `rating`, `recommend`) VALUES
(1, 4, 'Джинсы Garsia 244/32/856 28-32p Серо-синие', 'У Garcia 244/32/856 28-32p не просто выбрать себе наряд, а все потому что выбор то огромен. Персонал всегда приветлив, всегда предложат несколько вариантов и тогда запросто можна выбрать оптимальный для вас', 10, NULL, NULL, 'product1.jpg', 'one.png', '4.jpg', 'recommend1.jpg', '0', '0', '0', '1', 'rating9.png', '1'),
(2, 4, 'Джинсы MR520 MR 227 200002 0115 29-34p Синие', 'Джинсы MR520 MR 227  Хорошая, качественная и привлекательная внешне одежда не может не радовать, здесь сможет найти себе джинсовую одежку даже самый требовательный покупатель. По крайней мере я покупала пару раз одежду этой марки и мне понравилось, качество на высоком уровне и цены доступные.', 56, NULL, NULL, 'product2.jpg', 'two.png', '5.jpg', 'recommend2.jpg', '1', '0', '0', '1', 'rating8.png', '0'),
(3, 9, 'Блуза Mango 62305896-05-M Бежевая', 'Блуза Mango 62305896-05-M Струящаяся ткань, с фактурной выделкой. Круглый вырез горловины. Рукава три четверти, завязываются шнурки. Спереди застежка на пуговицы.\r\n', 20, NULL, NULL, 'product3.jpg', 'three.png', '6.jpg', 'recommend3.jpg', '1', '1', '0', '0', 'rating11.png', '1'),
(4, 21, 'Блуза Tom Tailor TT 25984564-05-M Зелёная', 'Испанский бренд модной одежды "Mango" родился в 1984 году в Барселоне, где и по сей день находится штаб-квартира компании. В том же городе появился и первый магазин\r\n', 70, NULL, NULL, 'product4.jpg', 'three.png', '7.jpg', 'recommend1.jpg', '1', '0', '1', '0', 'rating10.png', '0'),
(5, 25, 'Блузка Kira Plastinina 17-16-17436598-SM-23 S', 'Блузка Kira Plastinina с жабо выполнена из легкой ткани в горох. Модель прямого кроя. Детали: короткая планка и манжеты на пуговицах, длинные рукава.', 0, NULL, NULL, 'product5.jpg', 'one.png', '8.jpg', 'recommend2.jpg', '1', '0', '0', '1', 'rating6.png', '1'),
(6, 28, 'Кардиган Levis Lcy Grey Heather M', 'Низкая посадка, узкая брючина, застежка на молнию. Ткань с добавлением эластана обеспечивает наилучшую посадку и сохранение формы.', 100, NULL, NULL, 'product6.jpg', 'three.png', '1.jpg', 'recommend3.jpg', '1', '0', '0', '0', 'rating4.png', '1'),
(7, 28, 'Кардиган Only ON 155585 Black Heather M', NULL, 0, NULL, NULL, 'no-image.png', 'no-image.png', 'no-image.png', 'recommend1.jpg', '1', '1', '0', '1', 'rating10.png', '0'),
(8, 26, 'Брюки суперстретч', NULL, 99, NULL, NULL, 'no-image.png', 'no-image.png', '11.jpg', 'recommend2.jpg', '0', '0', '1', '1', 'rating9.png', '1'),
(9, 26, 'Укороченные брюки суперстрейч', NULL, 0, NULL, NULL, 'product1.jpg', 'one.png', '3.jpg', 'recommend3.jpg', '0', '0', '0', '1', 'rating5.png', '0'),
(10, 29, 'Черный кожаный рюкзак ''Rhea'' с заклепками от Michael Michael Kors', 'Простата, инновационный стиль бренда ', 15, NULL, NULL, 'product3.jpg', 'one.png', '1.jpg', 'recommend1.jpg', '0', '1', '0', '0', 'rating8.png', '0'),
(11, 29, 'Белая кожаная сумка-тоут ''Selma'' от Michael Michael Kors', NULL, 200, NULL, NULL, 'no-image.png', 'no-image.png', 'no-image.png', 'recommend1.jpg', '0', '0', '1', '0', 'rating9.png', '0'),
(12, 29, 'Золотистая кожаная сумка-тоут ''jet Set'' от Michael Michael Kors', NULL, 205, NULL, NULL, 'product5.jpg', 'three.png', '9.jpg', 'recommend2.jpg', '0', '0', '0', '1', 'rating11.png', '0'),
(13, 29, 'Brown calf leather ''Jet Set Travel'' cross body bag from Michael Michael Kors', NULL, 0, NULL, NULL, 'no-image.png', 'two.png', '3.jpg', 'recommend2.jpg', '0', '0', '0', '1', 'rating1.png', '1'),
(14, 29, 'Черная кожаная сумка-тоут ''Jet Set'' от Michael Michael Kors', NULL, 0, NULL, NULL, 'no-image.png', 'one.png', '11.jpg', 'recommend3.jpg', '0', '0', '0', '0', 'rating4.png', '0');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `sh_category`
--
ALTER TABLE `sh_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sh_product`
--
ALTER TABLE `sh_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `sh_category`
--
ALTER TABLE `sh_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT для таблицы `sh_product`
--
ALTER TABLE `sh_product`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `sh_product`
--
ALTER TABLE `sh_product`
  ADD CONSTRAINT `sh_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `sh_category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
