USE world;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `price` int(11) NOT NULL,
  `info` text NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `shop`
--

INSERT INTO `shop` (`id`, `name`, `price`, `info`, `date_creation`) VALUES
(1, 'Lamborgini', 1000, 'В наличии', '2018-04-28 17:54:20'),
(2, 'Победа', 1500, 'В музее', '2018-04-28 17:54:20'),
(3, 'Dodge ', 1200, 'ожидается', '2018-04-28 17:55:16'),
(4, 'BMW', 1300, 'в наличии', '2018-04-28 17:55:16'),
(5, 'Dodge ', 1200, 'ожидается', '2018-04-28 17:55:16'),
(6, 'Lada', 1300, 'в наличии', '2018-04-28 17:55:16'),
(7, 'Ford ', 1200, 'ожидается', '2018-04-28 17:55:16'),
(8, 'Pego', 1300, 'в наличии', '2018-04-28 17:55:16');