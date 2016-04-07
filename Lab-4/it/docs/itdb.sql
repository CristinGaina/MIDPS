-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 24 2011 г., 19:45
-- Версия сервера: 5.1.50
-- Версия PHP: 5.3.8-ZS5.5.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `itdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `text`, `date`) VALUES
(1, 'Nullam aliquet dapibus mauris ut auctor. Donec placerat tortor vel velit sollicitudin in accumsan tortor semper.', '2011-12-01 11:40:50'),
(2, 'Nullam aliquet dapibus mauris ut auctor. Donec placerat tortor vel velit sollicitudin in accumsan tortor semper.', '2011-12-02 11:41:04'),
(3, 'Pellentesque vehicula tempor justo, id congue enim lobortis ut. Sed ut nulla quis diam imperdiet consequat. Phasellus ut nisl dui.', '2011-12-03 11:40:59'),
(4, 'Pellentesque vehicula tempor justo, id congue enim lobortis ut. Sed ut nulla quis diam imperdiet consequat. Phasellus ut nisl dui.', '2011-12-04 11:41:10');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `keywords`, `description`, `text`) VALUES
(1, 'Lorem, Ipsum, is, simply, dummy, text, of, the, printing, and, typesetting, industry', '<p><strong>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</strong></p>', '<p><strong>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</strong></p>'),
(2, 'Contrary, to, popular, belief, Lorem, Ipsum, is, not, simply, random, text', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin</p>', '<p><em>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up</em> one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `keywords`, `description`, `title`, `text`, `image`) VALUES
(5, 'Lorem ipsum dolor sit amet ', '<div class="col-1">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tempor libero ac orci lacinia accumsan. Suspendisse posuere sagittis ipsum varius porttitor. Fusce turpis eros, volutpat in adipiscing faucibus, varius posuere massa. Phasellus vel erat pretium augue hendrerit suscipit.&nbsp;</div>', 'Lorem ipsum dolor sit amet ', '<div class="col-1">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tempor libero ac orci lacinia accumsan. Suspendisse posuere sagittis ipsum varius porttitor. Fusce turpis eros, volutpat in adipiscing faucibus, varius posuere massa. Phasellus vel erat pretium augue hendrerit suscipit. Curabitur ipsum dolor, gravida in sagittis vel, porta vel lectus. Sed gravida est sit amet nulla malesuada porta. Sed porta dui quis dui tempor ac euismod purus iaculis. Mauris quis arcu odio. Nam pretium quam vel tortor gravida pretium. Proin ac libero eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla ut arcu urna. Aliquam aliquam dignissim arcu nec faucibus.</div>', 'c056c60c682c17f2bcddec5787760ac6_lipsum07.gif'),
(6, 'Duis non blandit risus. Mauris at neque eget massa dapibus tristique. ', '<div class="col-1">Duis non blandit risus. Mauris at neque eget massa dapibus tristique. In vitae est in tellus aliquam suscipit. Curabitur ac nisl et magna sollicitudin dignissim. Donec et diam sit amet libero lacinia imperdiet in a tortor. Integer feugiat risus sed metus malesuada semper.&nbsp;</div>', 'Duis non blandit risus. Mauris at neque eget massa dapibus tristique. ', '<div class="col-1">Duis non blandit risus. Mauris at neque eget massa dapibus tristique. In vitae est in tellus aliquam suscipit. Curabitur ac nisl et magna sollicitudin dignissim. Donec et diam sit amet libero lacinia imperdiet in a tortor. Integer feugiat risus sed metus malesuada semper. Nunc pharetra, urna et hendrerit rhoncus, dolor neque facilisis leo, adipiscing adipiscing lorem ipsum id dui. Mauris vel fringilla quam. Proin viverra eros augue. Maecenas semper purus nec arcu sagittis vitae vehicula sapien viverra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed feugiat, nunc non dictum posuere, odio augue varius tellus, sed gravida turpis sapien facilisis sapien. Aliquam arcu tellus, pretium id convallis sed, eleifend lacinia magna. In sit amet ipsum ut lectus suscipit ultrices.</div>', '8dbe10cf01aaaed578019bbc0050e23c_lipsum09.gif'),
(7, 'Ut ullamcorper aliquet risus in hendrerit. ', '<div class="col-1">Ut ullamcorper aliquet risus in hendrerit. Donec et neque ut erat convallis blandit in et dolor. Maecenas pretium augue a magna facilisis vitae sodales ligula lobortis. Integer sit amet egestas purus. Aenean dignissim dolor vitae felis venenatis interdum.&nbsp;</div>', 'Ut ullamcorper aliquet risus in hendrerit. ', '<div class="col-1">Ut ullamcorper aliquet risus in hendrerit. Donec et neque ut erat convallis blandit in et dolor. Maecenas pretium augue a magna facilisis vitae sodales ligula lobortis. Integer sit amet egestas purus. Aenean dignissim dolor vitae felis venenatis interdum. Quisque vestibulum mi dictum turpis tristique adipiscing. Praesent nunc magna, interdum eu cursus id, porttitor ac est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet est libero, quis malesuada ipsum. In sed tellus eget neque sagittis pretium. Praesent in ligula ac turpis ultricies viverra. Suspendisse ac nulla felis, in viverra nulla. Vestibulum nec lorem velit, quis luctus magna.</div>', 'b57c93bba4baf5c4ef650db5cbd9fa8b_lipsum08.gif');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`) VALUES
(1, 'admin', '07e8d45f412dc77b02c9de29a530fd64', '##%&#*(^%');
