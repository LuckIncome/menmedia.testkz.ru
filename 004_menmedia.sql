-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: 10.0.0.125:3306
-- Время создания: Сен 09 2021 г., 04:42
-- Версия сервера: 10.1.48-MariaDB
-- Версия PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `004_menmedia`
--

-- --------------------------------------------------------

--
-- Структура таблицы `anons`
--

CREATE TABLE `anons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `anons`
--

INSERT INTO `anons` (`id`, `title`, `slug`, `category_id`, `image`, `thumb`, `excerpt`, `content`, `status`, `seo_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'PR-менеджер для работы с зарубежными отелями', 'pr-menedzher-dlya-raboty-s-zarubezhnymi-otelyami', 5, 'anons/August2021/CoAdkOM97M8GqNrn3oG1.jpg', NULL, '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '', '', '', '2021-08-26 09:02:00', '2021-08-26 09:03:26'),
(2, 'PR-менеджер для работы с зарубежными клиентами', 'pr-menedzher-dlya-raboty-s-zarubezhnymi-klientami', 3, 'anons/August2021/CoAdkOM97M8GqNrn3oG1.jpg', NULL, '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '', '', '', '2021-08-26 09:04:06', '2021-08-26 09:04:06');

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `category_id`, `image`, `thumb`, `excerpt`, `content`, `status`, `seo_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'PR-менеджер для работы с зарубежными отелями', 'pr-menedzher-dlya-raboty-s-zarubezhnymi-otelyami', 2, 'articles/August2021/S5j1SDxX8HuLONJx08O0.jpg', NULL, '', '<p>В целом у казахстанских судей есть общее понимание того, как нужно использовать VAR, они старались применять те знания, которые получили во время теоретических занятий. Арбитр не может работать с системой VAR без наличия лицензии ФИФА, поэтому очень важно казахстанским судьям не только обучиться работе с системой, но и пройти сертификацию со стороны мирового футбольного регулятора. Проведенная на протяжении пяти дней работа меня удовлетворила, я остался доволен тем, какое понимание есть у казахстанских судей.</p>\n<p>- Сколько семинаров и практических встреч необходимо провести еще, чтобы казахстанские футбольные судьи были готовы к внедрению VAR на турнирах под эгидой КФФ?&nbsp;&nbsp;</p>\n<p>- Судьи, прошедшие обучение, должны получить соответствующую лицензию ФИФА. Экзаменация арбитров пройдет в онлайн-режиме. Судьям необходимо выполнить все критерии, речь идет об определенном количестве времени за тренажерами VAR и работы на поле.</p>\n<p>Мы планируем встретиться в начале сентября, чтобы провести аналогичный обучающий практический семинар в период окна ФИФА, когда клубные турниры будут приостановлены. Хотим провести 5-6-дневный турнир среди любителей или детских команд, где будут закреплены полученные ранее знания в приближенных к реальности условиях. Думаю, что примерно к октябрю у ФИФА будет возможность подтвердить, кто из кандидатов сможет получить лицензию VAR или А-VAR (ассистент VAR).&nbsp;&nbsp;</p>', 1, '', '', '', '2021-08-26 07:58:00', '2021-08-26 08:00:38'),
(2, 'PR-менеджер для работы с зарубежными отелями', 'pr-menedzher-dlya-raboty-s-zarubezhnymi-otelyami-2', 3, 'articles/August2021/S5j1SDxX8HuLONJx08O0.jpg', NULL, '', '<p>В целом у казахстанских судей есть общее понимание того, как нужно использовать VAR, они старались применять те знания, которые получили во время теоретических занятий. Арбитр не может работать с системой VAR без наличия лицензии ФИФА, поэтому очень важно казахстанским судьям не только обучиться работе с системой, но и пройти сертификацию со стороны мирового футбольного регулятора. Проведенная на протяжении пяти дней работа меня удовлетворила, я остался доволен тем, какое понимание есть у казахстанских судей.</p>\n<p>- Сколько семинаров и практических встреч необходимо провести еще, чтобы казахстанские футбольные судьи были готовы к внедрению VAR на турнирах под эгидой КФФ?&nbsp;&nbsp;</p>\n<p>- Судьи, прошедшие обучение, должны получить соответствующую лицензию ФИФА. Экзаменация арбитров пройдет в онлайн-режиме. Судьям необходимо выполнить все критерии, речь идет об определенном количестве времени за тренажерами VAR и работы на поле.</p>\n<p>Мы планируем встретиться в начале сентября, чтобы провести аналогичный обучающий практический семинар в период окна ФИФА, когда клубные турниры будут приостановлены. Хотим провести 5-6-дневный турнир среди любителей или детских команд, где будут закреплены полученные ранее знания в приближенных к реальности условиях. Думаю, что примерно к октябрю у ФИФА будет возможность подтвердить, кто из кандидатов сможет получить лицензию VAR или А-VAR (ассистент VAR).&nbsp;&nbsp;</p>', 1, '', '', '', '2021-08-26 08:02:03', '2021-08-26 08:02:03');

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `image`, `btn_link`, `type`, `time`, `event_id`, `status`, `sort_id`, `created_at`, `updated_at`) VALUES
(1, 'Казахи в космосе', 'Смотри <span>специальный репортаж</span>', 'banners/September2021/eYjjA9nc0fZ2rQDsLEqW.png', NULL, 'press-announcement', '', 2, 1, 1, '2021-09-02 08:03:15', '2021-09-02 08:03:15'),
(2, 'PR-менеджер для работы с зарубежными отелями', 'Смотри <span>специальный репортаж</span>', 'banners/September2021/LOksgpFQ5SGrW3fYbnOd.png', NULL, 'event', '', 2, 1, 2, '2021-09-02 08:04:43', '2021-09-02 08:04:43'),
(3, 'Авиакомпания S7 Airlines в поисках PR-менеджера', ' ', 'banners/September2021/zL3im1zfOSzSqq83FDaS.png', NULL, 'section-block', '', NULL, 1, 1, '2021-09-06 06:54:04', '2021-09-06 06:54:04'),
(4, 'Авиакомпания S7 Airlines в поисках 2', ' ', 'banners/September2021/3zJohDMU4y7FnmN0E7be.png', NULL, 'section-block', '', NULL, 1, 2, '2021-09-06 06:54:36', '2021-09-06 06:54:36');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `content`, `seo_title`, `meta_keywords`, `meta_description`, `status`, `sort_id`, `created_at`, `updated_at`) VALUES
(1, 'Культура', 'kultura', '', '', '', '', 1, 1, '2021-08-26 07:53:23', '2021-08-26 07:53:23'),
(2, 'Спорт', 'sport', '', '', '', '', 1, 2, '2021-08-26 07:54:21', '2021-08-26 07:54:21'),
(3, 'PR и медиа', 'pr-i-media', '', '', '', '', 1, 3, '2021-08-26 07:55:28', '2021-08-26 07:55:28'),
(4, 'IT для PR', 'it-dlya-pr', '', '', '', '', 1, 4, '2021-08-26 07:56:06', '2021-08-26 07:56:06'),
(5, 'Экономика', 'ekonomika', '', '', '', '', 1, 5, '2021-08-26 07:56:35', '2021-08-26 07:56:35'),
(6, 'Технологии', 'tehnologii', '', '', '', '', 1, 6, '2021-08-26 07:56:53', '2021-08-26 07:56:53');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_main` tinyint(1) NOT NULL DEFAULT '1',
  `type` enum('phone','graph','social','address','email','whatsapp','map') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'phone',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `is_main`, `type`, `icon`, `value`, `link`, `status`, `sort_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'address', 'contacts\\May2021\\Nm4sqrzQD5OCvkwPcR6o.svg', 'г. Алматы, ул. Мусабаева, д. 8', NULL, 1, 1, '2021-05-18 05:24:00', '2021-05-18 06:06:03'),
(2, 1, 'phone', NULL, '+7 (727) 245 55 56', NULL, 1, 1, '2021-05-18 05:25:00', '2021-09-06 07:22:46'),
(3, 1, 'whatsapp', NULL, '+7 (707) 566 66 67', NULL, 1, 2, '2021-05-18 05:25:00', '2021-07-08 01:57:27'),
(4, 1, 'social', NULL, 'Instagram', 'https://instagram.com', 1, 1, '2021-05-18 05:27:00', '2021-08-19 04:54:23'),
(5, 1, 'social', NULL, 'Facebook', 'https://facebook.com', 1, 2, '2021-05-18 05:28:00', '2021-08-19 04:54:04'),
(6, 1, 'graph', 'contacts\\May2021\\NZv2Amn1QNLrzxPvXZ3M.svg', '<ul class=\"shedule-inner__list\">\n                            <li class=\"shedule-inner__item\" data-day=\"1\"><span>Пн:</span> <span>07:00 - 20:00</span>\n                            </li>\n                            <li class=\"shedule-inner__item\" data-day=\"2\"><span>Вт:</span> <span>07:00 - 20:00</span>\n                            </li>\n                            <li class=\"shedule-inner__item\" data-day=\"3\"><span>Ср:</span> <span>07:00 - 20:00</span>\n                            </li>\n                            <li class=\"shedule-inner__item\" data-day=\"4\"><span>Чт:</span> <span>07:00 - 20:00</span>\n                            </li>\n                            <li class=\"shedule-inner__item\" data-day=\"5\"><span>Пт:</span> <span>07:00 - 20:00</span>\n                            </li>\n                            <li class=\"shedule-inner__item\" data-day=\"6\"><span>Сб:</span> <span>07:00 - 20:00</span>\n                            </li>\n                            <li class=\"shedule-inner__item\" data-day=\"0\"><span>Вс:</span> <span>Выходной</span></li>\n                            <li class=\"shedule-inner__item pre-last\"><span>Процедурный кабинет</span>\n                                <span>24/7</span></li>\n                            <li class=\"shedule-inner__item last\"><span>МРТ</span> <span>24/7</span></li>\n</ul>', NULL, 1, 1, '2021-05-18 05:30:13', '2021-05-18 05:30:13'),
(7, 1, 'email', 'contacts\\May2021\\xxNsCX53Uaridl4rvKYe.svg', 'hc@healthcity.kz', 'mailto:hc@healthcity.kz', 1, 1, '2021-05-18 05:31:00', '2021-08-25 08:50:35'),
(8, 1, 'map', NULL, ' <iframe\n                        src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2908.6465617326076!2d76.86577291527435!3d43.19592637913966!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38836863395add25%3A0xebec018eadccaeb3!2z0YPQu9C40YbQsCDQnNGD0YHQsNCx0LDQtdCy0LAsINCQ0LvQvNCw0YLRiw!5e0!3m2!1sru!2skz!4v1619588559796!5m2!1sru!2skz\"\n                        width=\"100%\" height=\"339\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL, 1, 1, '2021-05-24 23:15:48', '2021-05-24 23:15:48'),
(9, 1, 'social', NULL, 'Vk', 'https://vk.com', 1, 3, '2021-05-18 05:28:00', '2021-08-19 04:54:04'),
(10, 1, 'social', NULL, 'Twitter', 'https://twitter.com', 1, 4, '2021-05-18 05:28:00', '2021-08-19 04:54:04'),
(11, 1, 'social', 'telegram-foot.svg', 'Telegram', 'https://twitter.com', 1, 5, '2021-05-18 05:28:00', '2021-08-19 04:54:04'),
(12, 1, 'social', 'tiktok-foot.svg', 'Tiktok', 'https://tiktok.com', 1, 6, '2021-05-18 05:28:00', '2021-08-19 04:54:04'),
(13, 1, 'social', 'youtube-foot.svg', 'Youtube', 'https://youtube.com', 1, 7, '2021-05-18 05:28:00', '2021-08-19 04:54:04');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'author_id', 'text', 'Author Id', 1, 0, 0, 0, 0, 0, '{}', 2),
(24, 4, 'type', 'select_dropdown', 'Тип страницы', 1, 1, 1, 1, 1, 1, '{\"default\":\"simple\",\"options\":{\"home\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"about\":\"\\u041e \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438\",\"services\":\"\\u0423\\u0441\\u043b\\u0443\\u0433\\u0438\",\"contacts\":\"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\"posts\":\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438\",\"announcements\":\"\\u041f\\u0440\\u0435\\u0441\\u0441-\\u0430\\u043d\\u043e\\u043d\\u0441\\u044b\",\"events\":\"\\u041f\\u0440\\u0435\\u0441\\u0441-\\u043c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u044f\",\"gallery\":\"\\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f\",\"simple\":\"\\u0414\\u0440\\u0443\\u0433\\u043e\\u0435\"}}', 3),
(25, 4, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'excerpt', 'text_area', 'Краткое описание', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'body', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 6),
(28, 4, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 7),
(29, 4, 'slug', 'text', 'Ссылка (Уникальная)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 8),
(30, 4, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 9),
(31, 4, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 10),
(32, 4, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 11),
(33, 4, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 12),
(34, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 13),
(35, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(36, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(37, 6, 'is_main', 'checkbox', 'Главная', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u044b\\u0439\",\"off\":\"\\u0412\\u0442\\u043e\\u0440\\u043e\\u0441\\u0442\\u0435\\u043f\\u0435\\u043d\\u043d\\u044b\\u0439\",\"checked\":true}', 2),
(38, 6, 'type', 'select_dropdown', 'Тип', 1, 1, 1, 1, 1, 1, '{\"default\":\"phone\",\"options\":{\"phone\":\"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\",\"graph\":\"\\u0413\\u0440\\u0430\\u0444\\u0438\\u043a \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b\",\"social\":\"\\u0421\\u043e\\u0446\\u0441\\u0435\\u0442\\u044c\",\"address\":\"\\u0410\\u0434\\u0440\\u0435\\u0441\",\"email\":\"Email\",\"map\":\"\\u041a\\u0430\\u0440\\u0442\\u0430 (JS)\"}}', 3),
(39, 6, 'icon', 'image', 'Иконка (svg)', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"100%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 4),
(40, 6, 'value', 'text_area', 'Значение', 1, 1, 1, 1, 1, 1, '{}', 5),
(41, 6, 'link', 'text', 'Ссылка', 0, 0, 1, 1, 1, 1, '{}', 6),
(42, 6, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 7),
(43, 6, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 8),
(44, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 9),
(45, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(46, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(47, 7, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 2),
(48, 7, 'subtitle', 'text', 'Подзаголовок (в меню)', 0, 1, 1, 1, 1, 1, '{}', 3),
(49, 7, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1300\",\"height\":null},\"quality\":\"100%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"]}', 4),
(50, 7, 'text', 'text_area', 'Текст', 0, 0, 1, 1, 1, 1, '{}', 5),
(51, 7, 'btn_link', 'text', 'Ссылка кнопки', 0, 0, 1, 1, 1, 1, '{}', 6),
(52, 7, 'btn_text', 'text', 'Текст кнопки', 0, 0, 1, 1, 1, 1, '{}', 7),
(53, 7, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 8),
(54, 7, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 9),
(55, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 10),
(56, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(57, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 8, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(59, 8, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 3),
(60, 8, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 4),
(61, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 5),
(62, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(63, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 9, 'name', 'text', 'ФИО', 1, 1, 1, 1, 1, 1, '{}', 2),
(65, 9, 'spec', 'text', 'Позиция', 1, 1, 1, 1, 1, 1, '{}', 3),
(66, 9, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 5),
(67, 9, 'price', 'number', 'Первичный прием', 0, 1, 1, 1, 1, 1, '{}', 7),
(68, 9, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 9),
(69, 9, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 10),
(70, 9, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 11),
(71, 9, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 12),
(72, 9, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 14),
(73, 9, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 15),
(74, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 16),
(75, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(76, 9, 'doctor_belongstomany_speciality_relationship', 'relationship', 'Специализации', 1, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Speciality\",\"table\":\"specialities\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"doctor_speciality\",\"pivot\":\"1\",\"taggable\":\"0\"}', 4),
(77, 9, 'featured', 'checkbox', 'На главной?', 1, 0, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":false}', 13),
(78, 8, 'slug', 'text', 'Ссылка (Уникальная)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:specialities,slug\"}}', 3),
(79, 9, 'slug', 'text', 'Ссылка (Уникальная)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:doctors,slug\"}}', 6),
(80, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 11, 'research_id', 'text', 'Research Id', 1, 0, 0, 1, 1, 1, '{}', 3),
(82, 11, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 4),
(83, 11, 'price', 'number', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 5),
(84, 11, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 6),
(85, 11, 'featured', 'checkbox', 'Топ анализ', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":false}', 7),
(86, 11, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 8),
(87, 11, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 9),
(88, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 10),
(89, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(90, 11, 'analyze_belongsto_research_relationship', 'relationship', 'Исследование', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Research\",\"table\":\"researches\",\"type\":\"belongsTo\",\"column\":\"research_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"analyzes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(91, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 12, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(93, 12, 'slug', 'text', 'Ссылка (Уникальная)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:researches,slug\"}}', 3),
(94, 12, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 4),
(95, 12, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 5),
(96, 12, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 6),
(97, 12, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 7),
(98, 12, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 8),
(99, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 9),
(100, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(101, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(102, 13, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 4),
(103, 13, 'price', 'number', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 5),
(104, 13, 'content', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 6),
(105, 13, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 7),
(106, 13, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 8),
(107, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 9),
(108, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(109, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(110, 14, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 2),
(111, 14, 'excerpt', 'text', 'Краткое описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(112, 14, 'description', 'text_area', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 4),
(113, 14, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1300\",\"height\":null},\"quality\":\"100%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"]}', 5),
(114, 14, 'symptoms', 'rich_text_box', 'Симптомы, при которых нужно обратиться к врачу', 0, 0, 1, 1, 1, 1, '{}', 6),
(115, 14, 'program', 'rich_text_box', 'Содержание программы', 0, 0, 1, 1, 1, 1, '{}', 7),
(116, 14, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 9),
(117, 14, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 10),
(118, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 11),
(119, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(120, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(121, 15, 'type_id', 'text', 'Type Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(122, 15, 'title', 'text', 'Вопрос', 1, 1, 1, 1, 1, 1, '{}', 4),
(123, 15, 'content', 'rich_text_box', 'Ответ', 0, 0, 1, 1, 1, 1, '{}', 5),
(124, 15, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 6),
(125, 15, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 7),
(126, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 8),
(127, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(128, 15, 'checkup_faq_belongsto_checkup_type_relationship', 'relationship', 'Категория', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\CheckupType\",\"table\":\"checkup_types\",\"type\":\"belongsTo\",\"column\":\"type_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"analyzes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(129, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(130, 16, 'type_id', 'text', 'Категория', 1, 1, 1, 1, 1, 1, '{}', 3),
(131, 16, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 4),
(132, 16, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"]}', 5),
(133, 16, 'content_1', 'rich_text_box', 'Контент 1', 0, 0, 1, 1, 1, 1, '{}', 6),
(134, 16, 'content_2', 'rich_text_box', 'Контент 2', 0, 0, 1, 1, 1, 1, '{}', 7),
(135, 16, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 8),
(136, 16, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 9),
(137, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 10),
(138, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(139, 16, 'checkup_belongsto_checkup_type_relationship', 'relationship', 'Категория', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\CheckupType\",\"table\":\"checkup_types\",\"type\":\"belongsTo\",\"column\":\"type_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"analyzes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(140, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(141, 17, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 2),
(142, 17, 'subtitle', 'text', 'Подзаголовок', 1, 1, 1, 1, 1, 1, '{}', 3),
(143, 17, 'description', 'text_area', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 4),
(144, 17, 'content_1', 'rich_text_box', 'Контент 1', 0, 0, 1, 1, 1, 1, '{}', 5),
(145, 17, 'content_2', 'rich_text_box', 'Контент 2', 0, 0, 1, 1, 1, 1, '{}', 6),
(146, 17, 'file', 'file', 'Файл', 0, 0, 1, 1, 1, 1, '{}', 7),
(147, 17, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":false}', 8),
(148, 17, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 9),
(149, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 10),
(150, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(151, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(152, 18, 'type_id', 'text', 'Type Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(153, 18, 'title', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 4),
(154, 18, 'price', 'number', 'Цена', 1, 1, 1, 1, 1, 1, '{}', 5),
(155, 18, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{}', 6),
(156, 18, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 7),
(157, 18, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 8),
(158, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(159, 18, 'checkup_price_belongsto_checkup_relationship', 'relationship', 'Checkup', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Checkup\",\"table\":\"checkups\",\"type\":\"belongsTo\",\"column\":\"type_id\",\"key\":\"id\",\"label\":\"full_name\",\"pivot_table\":\"analyzes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(160, 7, 'type', 'select_dropdown', 'Страница', 1, 1, 1, 1, 1, 1, '{\"default\":\"home\",\"options\":{\"home\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"about\":\"\\u041e \\u043a\\u043b\\u0438\\u043d\\u0438\\u043a\\u0435\"}}', 2),
(161, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(162, 19, 'type', 'select_dropdown', 'Тип', 1, 1, 1, 1, 1, 1, '{\"default\":\"advantages\",\"options\":{\"advantages\":\"\\u041f\\u0440\\u0435\\u0438\\u043c\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0430\",\"numbers\":\"\\u041e \\u043d\\u0430\\u0441 \\u0432 \\u0446\\u0438\\u0444\\u0440\\u0430\\u0445\",\"corporates\":\"\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0437\\u0434\\u0435\\u043b (\\u0446\\u0438\\u0444\\u0440\\u044b)\",\"checkup\":\"Checkup \\u043f\\u0440\\u0435\\u0438\\u043c\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0430\"}}', 2),
(163, 19, 'icon', 'image', 'Иконка (svg)', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"100%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"]}', 4),
(164, 19, 'text', 'text_area', 'Текст', 0, 0, 1, 1, 1, 1, '{}', 5),
(165, 19, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 6),
(166, 19, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 7),
(167, 19, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 8),
(168, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(169, 19, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 3),
(170, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(171, 21, 'images', 'multiple_images', 'Изображения(сертификаты)', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 2),
(172, 21, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 3),
(173, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(174, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(175, 22, 'title', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 2),
(176, 22, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"]}', 3),
(177, 22, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 4),
(178, 22, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 5),
(179, 22, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 6),
(180, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(181, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(182, 23, 'video', 'text_area', 'YouTube ссылка', 1, 1, 1, 1, 1, 1, '{}', 2),
(183, 23, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 3),
(184, 23, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 4),
(185, 23, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 5),
(186, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(187, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(188, 24, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 2),
(189, 24, 'text', 'rich_text_box', 'Контент', 0, 0, 1, 1, 1, 1, '{}', 3),
(190, 24, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 4),
(191, 24, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 5),
(192, 24, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 6),
(193, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(194, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(195, 25, 'title', 'text', 'Название альбома', 1, 1, 1, 1, 1, 1, '{}', 2),
(196, 25, 'image', 'image', 'Обложка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 3),
(197, 25, 'images', 'multiple_images', 'Изображения', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 4),
(198, 25, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 5),
(199, 25, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 6),
(200, 25, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 7),
(201, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(202, 14, 'in_slider', 'checkbox', 'В слайдере ?', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u043d\\u0435\\u0442\",\"checked\":false}', 8),
(216, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(217, 27, 'type', 'select_dropdown', 'Тип акции', 1, 1, 1, 1, 1, 1, '{\"default\":\"month\",\"options\":{\"month\":\"\\u0410\\u043a\\u0446\\u0438\\u044f \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430\",\"day\":\"\\u0410\\u043a\\u0446\\u0438\\u044f \\u0434\\u043d\\u044f\"}}', 2),
(218, 27, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 3),
(219, 27, 'excerpt', 'text_area', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 4),
(220, 27, 'slug', 'text', 'Ссылка (Уникальная)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:sales,slug\"}}', 5),
(221, 27, 'image', 'image', 'Изображение', 0, 0, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"]}', 6),
(223, 27, 'price', 'number', 'Цена', 0, 1, 1, 1, 1, 1, '{}', 8),
(224, 27, 'content_1', 'rich_text_box', 'Контент 1', 0, 0, 1, 1, 1, 1, '{}', 9),
(225, 27, 'content_2', 'rich_text_box', 'Контент 2', 0, 0, 1, 1, 1, 1, '{}', 10),
(226, 27, 'file', 'file', 'Файл', 0, 0, 1, 1, 1, 1, '{}', 11),
(227, 27, 'in_slider', 'checkbox', 'В слайдере ?', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":false}', 12),
(228, 27, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 13),
(229, 27, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 14),
(230, 27, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 15),
(231, 27, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\",\"checked\":true}', 16),
(232, 27, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 17),
(233, 27, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 18),
(234, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 19),
(235, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(236, 28, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 2),
(237, 28, 'created_at', 'timestamp', 'Время подписки', 0, 1, 1, 1, 0, 1, '{}', 3),
(238, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(239, 13, 'service_belongsto_service_type_relationship', 'relationship', 'Категория', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ServiceType\",\"table\":\"service_types\",\"type\":\"belongsTo\",\"column\":\"type_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"analyzes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(240, 13, 'type_id', 'text', 'Type Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(241, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(242, 29, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(243, 29, 'slug', 'text', 'Ссылка (Уникальная)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:service_types,slug\"}}', 3),
(244, 29, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 4),
(245, 29, 'meta_keywords', 'text_area', 'Meta Ключевые слова', 0, 0, 1, 1, 1, 1, '{}', 5),
(246, 29, 'meta_description', 'text_area', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 6),
(247, 29, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 7),
(248, 29, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 8),
(249, 29, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 9),
(250, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(251, 13, 'featured', 'checkbox', 'На главной?', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0414\\u0430\",\"off\":\"\\u041d\\u0435\\u0442\",\"checked\":false}', 7),
(252, 8, 'alternate', 'text', 'Альтернативное название', 0, 1, 1, 1, 1, 1, '{}', 3),
(253, 14, 'symptom_title', 'text', 'Заголовок Симптомов', 0, 0, 1, 1, 1, 1, '{}', 6),
(254, 14, 'program_title', 'text', 'Заголовок программ', 0, 0, 1, 1, 1, 1, '{}', 8),
(255, 9, 'second_price', 'number', 'Повторный прием', 0, 1, 1, 1, 1, 1, '{}', 8),
(256, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(257, 30, 'uuid', 'text', 'Код', 1, 1, 1, 1, 1, 1, '{}', 2),
(258, 30, 'amount', 'text', 'Сумма', 1, 1, 1, 1, 1, 1, '{}', 3),
(259, 30, 'file', 'file', 'Файл', 1, 1, 1, 1, 1, 1, '{}', 4),
(260, 30, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 1, 0, 1, '{}', 5),
(261, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(262, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(263, 32, 'type', 'select_dropdown', 'Вид', 1, 1, 1, 1, 1, 1, '{\"default\":\"simple\",\"options\":{\"press-event\":\"\\u041f\\u0440\\u0435\\u0441\\u0441-\\u043c\\u0435\\u0440\\u043e\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u0435\",\"press-announcement\":\"\\u041f\\u0440\\u0435\\u0441\\u0441-\\u0430\\u043d\\u043e\\u043d\\u0441\",\"section-block\":\"\\u0411\\u043b\\u043e\\u043a \\u0432 \\u0444\\u0443\\u0442\\u0435\\u0440\\u0435\",\"simple\":\"\\u0414\\u0440\\u0443\\u0433\\u043e\\u0435\"}}', 3),
(265, 32, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1300\",\"height\":null},\"quality\":\"100%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"]}', 5),
(266, 32, 'title', 'text', 'Заголовок', 1, 1, 1, 1, 1, 1, '{}', 2),
(268, 32, 'time', 'text', 'Время', 0, 1, 1, 1, 1, 1, '{}', 7),
(269, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(270, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(271, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(272, 34, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(275, 34, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 5),
(280, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(281, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(282, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(283, 35, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(284, 35, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:events,slug\"}}', 3),
(291, 35, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 10),
(294, 35, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 13),
(295, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(296, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(297, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(298, 36, 'title', 'text', 'Название альбома', 1, 1, 1, 1, 1, 1, '{}', 2),
(299, 36, 'slug', 'text', 'Ссылка (Уникальная)', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 3),
(300, 36, 'image', 'image', 'Обложка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 4),
(302, 36, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(303, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(304, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(305, 40, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(306, 40, 'slug', 'text', 'Ссылка (Уникальная)', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 3),
(307, 40, 'image', 'image', 'Обложка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 4),
(309, 40, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(310, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(318, 41, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(319, 41, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(320, 41, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:articles,slug\"}}', 3),
(325, 41, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 8),
(328, 41, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 11),
(329, 41, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(330, 41, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(331, 42, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(332, 42, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(333, 42, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:categories,slug\"}}', 3),
(334, 42, 'content', 'rich_text_box', 'Content', 1, 1, 1, 1, 1, 1, '{}', 4),
(335, 42, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(336, 42, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 6),
(337, 42, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 7),
(338, 42, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 8),
(339, 42, 'sort_id', 'text', 'Sort Id', 1, 1, 1, 1, 1, 1, '{}', 9),
(340, 42, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(341, 42, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(342, 41, 'article_belongsto_category_relationship', 'relationship', 'categories', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"anons\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(343, 41, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(344, 41, 'thumb', 'image', 'Thumb', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 6),
(345, 41, 'excerpt', 'text', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 7),
(346, 41, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 9),
(347, 41, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, '{}', 10),
(348, 41, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 11),
(349, 41, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 12),
(350, 34, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:anons,slug\"}}', 3),
(351, 34, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(352, 34, 'thumb', 'image', 'Thumb', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 6),
(353, 34, 'excerpt', 'text', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 7),
(354, 34, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 8),
(355, 34, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 9),
(356, 34, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, '{}', 10),
(357, 34, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 11),
(358, 34, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 12),
(359, 34, 'anon_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"anons\",\"pivot\":\"0\",\"taggable\":null}', 13),
(360, 35, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(361, 35, 'thumb', 'image', 'Thumb', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 6),
(362, 35, 'excerpt', 'text', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 7),
(363, 35, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 9),
(364, 35, 'seo_title', 'text', 'Seo Title', 0, 1, 1, 1, 1, 1, '{}', 10),
(365, 35, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 11),
(366, 35, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 12),
(367, 35, 'event_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"anons\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(368, 35, 'planned_at', 'timestamp', 'Planned At', 0, 1, 1, 1, 1, 1, '{}', 9),
(369, 32, 'subtitle', 'text', 'Подзаголовок (в меню)', 1, 1, 1, 1, 1, 1, '{}', 4),
(370, 32, 'btn_link', 'text', 'Ссылка (url адрес)', 0, 1, 1, 1, 1, 1, '{}', 6),
(371, 32, 'event_id', 'text', 'Event Id', 0, 1, 1, 1, 1, 1, '{}', 9),
(372, 32, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 11),
(373, 32, 'sort_id', 'number', 'Порядковый номер', 1, 1, 1, 1, 1, 1, '{}', 12),
(374, 32, 'banner_belongsto_event_relationship', 'relationship', 'events', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Event\",\"table\":\"events\",\"type\":\"belongsTo\",\"column\":\"event_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"anons\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(375, 35, 'files', 'media_picker', 'Файлы', 0, 0, 1, 1, 1, 1, '{\"max\":500,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":false,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":false,\"base_path\":\"\\/events\\/{pk}\\/\"}', 9),
(376, 36, 'images', 'multiple_images', 'Фотографии', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"90%\",\"upsize\":false,\"formats\":[\"original\",\"webp\"],\"thumbnails\":[{\"name\":\"small\",\"scale\":\"25%\"}]}', 5),
(377, 36, 'content', 'rich_text_box', 'Контент', 0, 1, 1, 1, 1, 1, '{}', 6),
(378, 36, 'event_id', 'text', 'Event Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(379, 36, 'seo_title', 'text', 'SEO Заголовок', 0, 0, 1, 1, 1, 1, '{}', 8),
(380, 36, 'meta_description', 'text', 'Meta Описание', 0, 0, 1, 1, 1, 1, '{}', 9),
(381, 36, 'meta_keywords', 'text', 'Meta Ключевые слова', 0, 1, 1, 1, 1, 1, '{}', 10),
(382, 36, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 11),
(383, 36, 'photo_belongsto_event_relationship', 'relationship', 'events', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Event\",\"table\":\"events\",\"type\":\"belongsTo\",\"column\":\"event_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"anons\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(384, 40, 'videos', 'text_area', 'Ссылки на видео (список в линию)', 0, 1, 1, 1, 1, 1, '{}', 5),
(385, 40, 'content', 'rich_text_box', 'Контент', 0, 1, 1, 1, 1, 1, '{}', 6),
(386, 40, 'event_id', 'text', 'Event Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(387, 40, 'seo_title', 'text', 'SEO Заголовок', 0, 1, 1, 1, 1, 1, '{}', 8),
(388, 40, 'meta_description', 'text', 'Meta Описание', 0, 1, 1, 1, 1, 1, '{}', 9),
(389, 40, 'meta_keywords', 'text', 'Meta Ключевые слова', 0, 1, 1, 1, 1, 1, '{}', 10),
(390, 40, 'status', 'checkbox', 'Статус', 1, 1, 1, 1, 1, 1, '{\"on\":\"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"off\":\"\\u041e\\u0442\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u044c\",\"checked\":true}', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(4, 'pages', 'pages', 'Страница', 'Страницы', 'voyager-file-text', 'App\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-18 06:02:02', '2021-08-30 11:51:28'),
(6, 'contacts', 'contacts', 'Контакт', 'Контакты', 'voyager-location', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-05-18 08:22:18', '2021-05-18 08:22:18'),
(7, 'sliders', 'sliders', 'Слайдер', 'Слайды', 'voyager-images', 'App\\Models\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-18 11:16:10', '2021-06-06 04:56:04'),
(8, 'specialities', 'specialities', 'Специализация врачя', 'Специализация врачей', 'voyager-study', 'App\\Models\\Speciality', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-18 11:59:37', '2021-05-25 04:56:45'),
(9, 'doctors', 'doctors', 'Врач', 'Врачи', 'voyager-person', 'App\\Models\\Doctor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-18 13:52:51', '2021-07-20 10:42:09'),
(11, 'analyzes', 'analyzes', 'Анализ', 'Анализы', 'voyager-lab', 'App\\Models\\Analysis', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-28 07:22:42', '2021-05-28 07:30:08'),
(12, 'researches', 'researches', 'Исследование', 'Исследования', 'voyager-bulb', 'App\\Models\\Research', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-28 07:26:17', '2021-05-28 07:43:00'),
(13, 'services', 'services', 'Услуга', 'Услуги', 'voyager-world', 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-28 10:42:43', '2021-07-14 05:53:35'),
(14, 'methodics', 'methodics', 'Методика', 'Методики', 'voyager-archive', 'App\\Models\\Methodic', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-03 03:01:03', '2021-06-16 01:41:31'),
(15, 'checkup_faqs', 'checkup-faqs', 'Checkup Вопрос', 'Checkup Вопросы', 'voyager-list', 'App\\Models\\CheckupFaq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-04 07:00:09', '2021-06-04 07:03:35'),
(16, 'checkups', 'checkups', 'Checkup', 'Checkups', 'voyager-pie-chart', 'App\\Models\\Checkup', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-04 07:05:57', '2021-06-04 07:06:53'),
(17, 'checkup_types', 'checkup-types', 'Категория', 'Категории', 'voyager-categories', 'App\\Models\\CheckupType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-04 07:09:33', '2021-06-04 07:09:33'),
(18, 'checkup_prices', 'checkup-prices', 'Checkup Цена', 'Checkup Цены', 'voyager-dollar', 'App\\Models\\CheckupPrice', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-04 07:10:46', '2021-06-04 13:21:05'),
(19, 'icontexts', 'icontexts', 'Преимущество', 'Преимущества', 'voyager-sound', 'App\\Models\\Icontext', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-06 05:08:26', '2021-06-19 02:30:32'),
(21, 'certificates', 'certificates', 'Сертификат', 'Сертификаты', 'voyager-certificate', 'App\\Models\\Certificate', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-06 05:26:24', '2021-06-06 05:26:24'),
(22, 'partners', 'partners', 'Партнер', 'Партнеры', 'voyager-images', 'App\\Models\\Partner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-10 11:13:28', '2021-06-10 11:13:28'),
(23, 'corp_videos', 'corp-videos', 'Видео', 'Видео', 'voyager-tv', 'App\\Models\\CorpVideo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-10 11:17:58', '2021-06-10 11:17:58'),
(24, 'corp_blocks', 'corp-blocks', 'Текст блок', 'Текст блоки', 'voyager-window-list', 'App\\Models\\CorpBlock', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-10 11:50:10', '2021-06-10 11:50:10'),
(25, 'galleries', 'galleries', 'Галерея', 'Галереи', 'voyager-images', 'App\\Models\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-11 06:53:33', '2021-06-11 06:53:33'),
(27, 'sales', 'sales', 'Акция', 'Акции', 'voyager-gift', 'App\\Models\\Sale', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-17 06:28:07', '2021-07-03 02:25:11'),
(28, 'subscribers', 'subscribers', 'Подписчик', 'Подписчики', 'voyager-world', 'App\\Models\\Subscriber', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-18 06:02:12', '2021-06-18 06:02:12'),
(29, 'service_types', 'service-types', 'Категория услуг', 'Категории услуг', 'voyager-paint-bucket', 'App\\Models\\ServiceType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-07-14 05:55:10', '2021-07-14 05:56:35'),
(30, 'applications', 'applications', 'Корзина', 'Корзины', 'voyager-receipt', 'App\\Models\\Application', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"uuid\",\"scope\":null}', '2021-07-28 17:32:51', '2021-07-28 17:34:37'),
(32, 'banners', 'banners', 'Баннер', 'Баннеры', 'voyager-tv', 'App\\Models\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-13 08:38:33', '2021-09-06 06:47:41'),
(34, 'anons', 'anons', 'Анонс', 'Анонсы', 'voyager-window-list', 'App\\Models\\Anons', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-13 08:41:38', '2021-08-26 07:46:50'),
(35, 'events', 'events', 'Мероприятие', 'Мероприятия', 'voyager-polaroid', 'App\\Models\\Event', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-13 08:42:53', '2021-09-02 14:23:40'),
(36, 'photos', 'photos', 'Фотография', 'Фотографии', 'voyager-photos', 'App\\Models\\Photo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-13 09:03:41', '2021-09-08 06:48:13'),
(40, 'videos', 'videos', 'Видео', 'Видео', 'voyager-youtube-play', 'App\\Models\\Video', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-13 10:50:30', '2021-09-08 06:52:25'),
(41, 'articles', 'articles', 'Новость', 'Новости', 'voyager-news', 'App\\Models\\Article', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-18 10:49:03', '2021-08-26 07:39:47'),
(42, 'categories', 'categories', 'Рубрика', 'Рубрики', 'voyager-categories', 'App\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-08-26 07:32:36', '2021-08-26 07:32:36');

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `files` longtext COLLATE utf8mb4_unicode_ci,
  `planned_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `title`, `slug`, `category_id`, `image`, `thumb`, `excerpt`, `content`, `files`, `planned_at`, `status`, `seo_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Пресс-конференция на тему: ”О привлечении иностранных инвестиций”', 'press-konferenciya-na-temu-o-privlechenii-inostrannyh-investicij', 3, 'anons/August2021/CoAdkOM97M8GqNrn3oG1.jpg', NULL, 'На данном этапе развития Казахстана как суверенного государства, направленного на построение цивилизованных рыночных отношений, приоритетным путем экономических реформ является разработка и реализация инвестиционной политики страны, нацеленной на достижение высоких темпов экономического роста и роста эффективности экономики. С целью осуществления данных задач, а также для обеспечения коренных изменений в экономике на базе программы Правительства РК по осуществлению реформ в условиях недостаточности внутренних источников финансирования исключительно важную роль приобретает привлечение иностранного капитала в экономику Казахстана', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '[]', '2021-10-16 13:39:00', 1, '', '', '', '2021-07-13 08:34:00', '2021-08-26 13:39:52'),
(2, 'Пресс-конференция на тему: ”О привлечении иностранных вложении”', 'press-konferenciya-na-temu-o-privlechenii-inostrannyh-vlozhenii', 5, 'anons/August2021/CoAdkOM97M8GqNrn3oG1.jpg', NULL, 'На данном этапе развития Казахстана как суверенного государства, направленного на построение цивилизованных рыночных отношений, приоритетным путем экономических реформ является разработка и реализация инвестиционной политики страны, нацеленной на достижение высоких темпов экономического роста и роста эффективности экономики. С целью осуществления данных задач, а также для обеспечения коренных изменений в экономике на базе программы Правительства РК по осуществлению реформ в условиях недостаточности внутренних источников финансирования исключительно важную роль приобретает привлечение иностранного капитала в экономику Казахстана', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '[]', '2021-05-27 13:40:00', 1, '', '', '', '2021-05-02 08:40:00', '2021-08-26 13:40:17');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(2, 'main', '2021-06-06 06:55:24', '2021-06-06 06:55:24');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Панель управления', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2021-05-18 04:12:29', '2021-06-19 06:39:18', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 4, '2021-05-18 04:12:29', '2021-06-04 07:13:11', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 5, 2, '2021-05-18 04:12:29', '2021-06-04 07:13:11', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 5, 3, '2021-05-18 04:12:29', '2021-06-04 07:13:11', 'voyager.roles.index', NULL),
(5, 1, 'Инструменты', '', '_self', 'voyager-tools', '#000000', NULL, 17, '2021-05-18 04:12:29', '2021-07-28 22:09:40', NULL, ''),
(6, 1, 'Конструктор меню', '', '_self', 'voyager-list', '#000000', 5, 1, '2021-05-18 04:12:29', '2021-06-19 05:06:21', 'voyager.menus.index', 'null'),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 5, '2021-05-18 04:12:29', '2021-06-04 07:13:11', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 6, '2021-05-18 04:12:29', '2021-06-04 07:13:11', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 7, '2021-05-18 04:12:29', '2021-06-04 07:13:11', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 18, '2021-05-18 04:12:29', '2021-07-28 22:09:40', 'voyager.settings.index', 'null'),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 8, '2021-05-18 04:12:29', '2021-06-04 07:13:11', 'voyager.hooks', NULL),
(15, 1, 'Специализация врачей', '', '_self', 'voyager-study', NULL, 27, 1, '2021-05-18 11:59:37', '2021-06-04 07:16:19', 'voyager.specialities.index', NULL),
(16, 1, 'Врачи', '', '_self', 'voyager-person', NULL, 27, 2, '2021-05-18 13:52:51', '2021-06-04 07:16:21', 'voyager.doctors.index', NULL),
(18, 1, 'Исследования', '', '_self', 'voyager-bulb', NULL, 26, 1, '2021-05-28 07:26:17', '2021-06-04 07:15:29', 'voyager.researches.index', NULL),
(19, 1, 'Услуги', '', '_self', 'voyager-world', NULL, 45, 2, '2021-05-28 10:42:43', '2021-07-14 05:57:11', 'voyager.services.index', NULL),
(21, 1, 'Checkup Вопросы', '', '_self', 'voyager-list', NULL, 25, 2, '2021-06-04 07:00:09', '2021-06-04 07:12:25', 'voyager.checkup-faqs.index', NULL),
(22, 1, 'Checkup-ы', '', '_self', 'voyager-pie-chart', '#000000', 25, 3, '2021-06-04 07:05:57', '2021-06-04 07:12:25', 'voyager.checkups.index', 'null'),
(23, 1, 'Категории', '', '_self', 'voyager-categories', NULL, 25, 1, '2021-06-04 07:09:33', '2021-06-04 07:12:21', 'voyager.checkup-types.index', NULL),
(24, 1, 'Checkup Цены', '', '_self', 'voyager-dollar', NULL, 25, 4, '2021-06-04 07:10:47', '2021-06-04 07:12:25', 'voyager.checkup-prices.index', NULL),
(29, 1, 'Сертификаты', '', '_self', 'voyager-certificate', NULL, NULL, 12, '2021-06-06 05:26:24', '2021-07-28 22:09:40', 'voyager.certificates.index', NULL),
(30, 2, 'Услуги', '/uslugi', '_self', NULL, '#000000', NULL, 14, '2021-06-06 06:56:50', '2021-06-06 06:56:50', NULL, ''),
(31, 2, 'Врачи', '/vrachi', '_self', NULL, '#000000', NULL, 15, '2021-06-06 06:57:02', '2021-06-06 06:57:02', NULL, ''),
(32, 2, 'Анализы', '/analizy', '_self', NULL, '#000000', NULL, 16, '2021-06-06 06:57:15', '2021-06-06 06:57:15', NULL, ''),
(33, 2, 'Check Up', '/check-up', '_self', NULL, '#000000', NULL, 17, '2021-06-06 06:57:29', '2021-06-06 06:57:29', NULL, ''),
(34, 2, 'О клинике', '/o-klinike', '_self', NULL, '#000000', NULL, 18, '2021-06-06 06:57:42', '2021-06-06 06:57:42', NULL, ''),
(35, 2, 'Контакты', '/kontakty', '_self', NULL, '#000000', NULL, 19, '2021-06-06 06:57:55', '2021-06-06 06:57:55', NULL, ''),
(37, 1, 'Видео', '', '_self', 'voyager-tv', NULL, 43, 2, '2021-06-10 11:17:58', '2021-06-19 05:01:44', 'voyager.corp-videos.index', NULL),
(38, 1, 'Текст блоки', '', '_self', 'voyager-window-list', NULL, 43, 1, '2021-06-10 11:50:10', '2021-06-19 05:01:34', 'voyager.corp-blocks.index', NULL),
(46, 1, 'Корзина', '', '_self', 'voyager-receipt', '#000000', NULL, 2, '2021-07-28 22:09:34', '2021-07-28 22:09:40', 'voyager.applications.index', NULL),
(47, 1, 'Banners', '', '_self', 'voyager-images', NULL, NULL, 20, '2021-08-11 04:50:49', '2021-08-11 04:50:49', 'voyager.banners.index', NULL),
(48, 1, 'Partners', '', '_self', NULL, NULL, NULL, 21, '2021-08-11 09:28:10', '2021-08-11 09:28:10', 'voyager.partners.index', NULL),
(50, 1, 'Анонсы', '', '_self', 'voyager-news', NULL, NULL, 22, '2021-08-12 03:34:24', '2021-08-12 03:34:24', 'voyager.anons.index', NULL),
(51, 1, 'Мероприятия', '', '_self', 'voyager-polaroid', NULL, NULL, 23, '2021-08-12 08:15:39', '2021-08-12 08:15:39', 'voyager.events.index', NULL),
(55, 1, 'Фотографии', '', '_self', 'voyager-photos', NULL, NULL, 24, '2021-08-13 09:03:41', '2021-08-13 09:03:41', 'voyager.photos.index', NULL),
(56, 1, 'Видео', '', '_self', 'voyager-youtube-play', NULL, NULL, 25, '2021-08-13 10:50:30', '2021-08-13 10:50:30', 'voyager.videos.index', NULL),
(57, 1, 'Новости', '', '_self', 'voyager-news', NULL, NULL, 26, '2021-08-18 10:49:03', '2021-08-18 10:49:03', 'voyager.articles.index', NULL),
(58, 1, 'Рубрики', '', '_self', 'voyager-categories', NULL, NULL, 27, '2021-08-26 07:32:36', '2021-08-26 07:32:36', 'voyager.categories.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2021_04_29_123446_create_contacts_table', 3),
(26, '2021_05_18_164439_create_home_sliders_table', 4),
(27, '2021_05_18_173748_create_specialities_table', 5),
(28, '2021_05_18_190744_create_doctors_table', 6),
(29, '2021_05_18_192404_create_doctors_specialities_pivot', 7),
(31, '2021_05_24_081806_add_featured_column_to_doctors', 8),
(32, '2021_05_25_104333_add_slug_to_specialities_table', 8),
(33, '2021_05_25_105000_add_slug_to_doctors_table', 9),
(34, '2021_05_27_133925_create_analyzes_table', 10),
(35, '2021_05_28_130920_create_researches_table', 11),
(36, '2021_05_28_162915_create_services_table', 12),
(37, '2021_06_03_085140_create_methodics_table', 13),
(38, '2021_06_04_124620_create_checkup_types_table', 14),
(39, '2021_06_04_125039_create_checkups_table', 15),
(40, '2021_06_04_125307_create_checkup_faqs_table', 16),
(41, '2021_06_04_125457_create_checkup_prices_table', 17),
(42, '2021_06_06_104701_edit_home_sliders_table', 18),
(43, '2021_06_06_110312_create_icontexts_table', 19),
(44, '2021_06_06_111125_edit_icontexts_table', 20),
(45, '2021_06_06_112312_create_certificates_table', 21),
(46, '2021_06_06_114804_icontexts_edit_type', 22),
(47, '2021_06_10_170944_create_partners_table', 23),
(48, '2021_06_10_171449_create_corp_videos_table', 24),
(49, '2021_06_10_174438_create_corp_blocks_table', 25),
(50, '2021_06_11_124849_create_galleries_table', 26),
(51, '2021_06_16_073902_add_in_slider_column', 27),
(53, '2021_06_16_093200_create_articles_table', 28),
(54, '2021_06_16_121355_create_sales_table', 29),
(57, '2021_06_17_165332_drop_column_icon', 30),
(58, '2021_06_18_115700_create_subscribers_table', 30),
(59, '2021_07_12_152210_create_service_types_table', 31),
(60, '2021_07_20_095008_add_featured_to_services', 32),
(61, '2021_07_20_123329_add_cost_column_to_doctors', 33),
(62, '2021_07_20_130823_add_alternate_column_to_specialities', 34),
(63, '2021_07_20_132329_add_titles_to_methodics_table', 35),
(65, '2021_07_28_195731_create_applications_table', 36),
(67, '2021_08_11_104029_create_banners_table', 37),
(68, '2021_08_11_152014_create_partners_table', 38),
(70, '2021_08_11_154955_create_anons_table', 39),
(73, '2021_08_12_115702_create_events_table', 40),
(74, '2021_08_13_134300_create_photos_table', 41),
(75, '2021_08_13_155249_create_videos_table', 42),
(76, '2021_08_18_163242_create_articles_table', 43);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'simple',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `type`, `title`, `excerpt`, `body`, `image`, `slug`, `seo_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'home', 'Главная', NULL, '<p></p>', NULL, 'home', NULL, NULL, NULL, 'ACTIVE', '2021-05-18 09:05:00', '2021-08-11 18:27:16'),
(2, 1, 'services', 'Услуги', 'Услуги', '', 'pages\\May2021\\yISvPjTDHkcf1q0fY0KZ.png', 'uslugi', 'Услуги', 'Услуги', 'Услуги', 'ACTIVE', '2021-05-24 16:03:38', '2021-05-24 16:03:38'),
(3, 1, 'contacts', 'Контакты', '', '', 'pages\\May2021\\x7arHv0dzNyAkUw8yKPq.png', 'kontakty', 'Контакты', 'Контакты', 'Контакты', 'ACTIVE', '2021-05-25 05:14:59', '2021-05-25 05:14:59'),
(4, 1, 'posts', 'Новости', '', '', NULL, 'news', '', '', '', 'ACTIVE', '2021-05-25 06:41:00', '2021-08-26 08:49:44'),
(5, 1, 'gallery', 'Галерея', '', '', NULL, 'galereya', '', '', '', 'ACTIVE', '2021-05-28 12:03:00', '2021-08-30 11:53:15'),
(6, 1, 'announcements', 'Пресс-анонсы', '', '', NULL, 'announcements', '', '', '', 'ACTIVE', '2021-06-02 08:26:00', '2021-08-26 14:06:05'),
(7, 1, 'events', 'Пресс-мероприятия', '', '', '', 'events', NULL, NULL, NULL, 'ACTIVE', '2021-06-03 06:46:00', '2021-07-29 15:12:22'),
(8, 1, 'about', 'О компании', 'lorem ipsum dolar sit amet', '<p>lorem ipsum dolar sit amet</p>', NULL, 'about', 'О компании', 'О компании', 'О компании', 'ACTIVE', '2021-08-11 16:42:00', '2021-08-11 18:30:06'),
(9, 1, 'photos', 'Фото', NULL, '', NULL, 'photos', NULL, NULL, NULL, 'ACTIVE', '2021-06-06 08:53:01', '2021-06-06 08:53:01'),
(10, 1, 'videos', 'Видео', NULL, '', NULL, 'videos', NULL, NULL, NULL, 'ACTIVE', '2021-06-07 07:34:40', '2021-06-07 07:34:40'),
(11, 1, 'sales', 'Акции', 'Акции', '', 'pages\\June2021\\zjmQrTCJbfYfQmcVEuOM.png', 'akcii', 'Акции', 'Акции', 'Акции', 'ACTIVE', '2021-06-17 09:45:38', '2021-06-17 09:45:38');

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `partners`
--

INSERT INTO `partners` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Самрук', 'partners\\August2021\\PVetAkjicVOyLKEqLqCr.png', '2021-08-11 09:30:35', '2021-08-11 09:30:35'),
(2, 'КазМунай', 'partners\\August2021\\ARzSNoWyThlsR6jErnPl.png', '2021-08-11 09:30:59', '2021-08-11 09:30:59'),
(3, 'Эйрлайнс', 'partners\\August2021\\uaocdkfvs9A0fAmUnimY.png', '2021-08-11 09:31:20', '2021-08-11 09:31:20'),
(4, 'Фридом', 'partners\\August2021\\5JKyKmPLWgMBmVd2E8Cy.png', '2021-08-11 09:31:58', '2021-08-11 09:31:58'),
(5, 'Атамекен', 'partners\\August2021\\W4dT6ovwKRhHgGYMVdSC.png', '2021-08-11 09:32:23', '2021-08-11 09:32:23');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(2, 'browse_bread', NULL, '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(3, 'browse_database', NULL, '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(4, 'browse_media', NULL, '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(5, 'browse_compass', NULL, '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(6, 'browse_menus', 'menus', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(7, 'read_menus', 'menus', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(8, 'edit_menus', 'menus', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(9, 'add_menus', 'menus', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(10, 'delete_menus', 'menus', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(11, 'browse_roles', 'roles', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(12, 'read_roles', 'roles', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(13, 'edit_roles', 'roles', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(14, 'add_roles', 'roles', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(15, 'delete_roles', 'roles', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(16, 'browse_users', 'users', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(17, 'read_users', 'users', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(18, 'edit_users', 'users', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(19, 'add_users', 'users', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(20, 'delete_users', 'users', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(21, 'browse_settings', 'settings', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(22, 'read_settings', 'settings', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(23, 'edit_settings', 'settings', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(24, 'add_settings', 'settings', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(25, 'delete_settings', 'settings', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(26, 'browse_hooks', NULL, '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(27, 'browse_pages', 'pages', '2021-05-18 06:02:02', '2021-05-18 06:02:02'),
(28, 'read_pages', 'pages', '2021-05-18 06:02:02', '2021-05-18 06:02:02'),
(29, 'edit_pages', 'pages', '2021-05-18 06:02:02', '2021-05-18 06:02:02'),
(30, 'add_pages', 'pages', '2021-05-18 06:02:02', '2021-05-18 06:02:02'),
(31, 'delete_pages', 'pages', '2021-05-18 06:02:02', '2021-05-18 06:02:02'),
(32, 'browse_contacts', 'contacts', '2021-05-18 08:22:18', '2021-05-18 08:22:18'),
(33, 'read_contacts', 'contacts', '2021-05-18 08:22:18', '2021-05-18 08:22:18'),
(34, 'edit_contacts', 'contacts', '2021-05-18 08:22:18', '2021-05-18 08:22:18'),
(35, 'add_contacts', 'contacts', '2021-05-18 08:22:18', '2021-05-18 08:22:18'),
(36, 'delete_contacts', 'contacts', '2021-05-18 08:22:18', '2021-05-18 08:22:18'),
(37, 'browse_sliders', 'sliders', '2021-05-18 11:16:11', '2021-05-18 11:16:11'),
(38, 'read_sliders', 'sliders', '2021-05-18 11:16:11', '2021-05-18 11:16:11'),
(39, 'edit_sliders', 'sliders', '2021-05-18 11:16:11', '2021-05-18 11:16:11'),
(40, 'add_sliders', 'sliders', '2021-05-18 11:16:11', '2021-05-18 11:16:11'),
(41, 'delete_sliders', 'sliders', '2021-05-18 11:16:11', '2021-05-18 11:16:11'),
(42, 'browse_specialities', 'specialities', '2021-05-18 11:59:37', '2021-05-18 11:59:37'),
(43, 'read_specialities', 'specialities', '2021-05-18 11:59:37', '2021-05-18 11:59:37'),
(44, 'edit_specialities', 'specialities', '2021-05-18 11:59:37', '2021-05-18 11:59:37'),
(45, 'add_specialities', 'specialities', '2021-05-18 11:59:37', '2021-05-18 11:59:37'),
(46, 'delete_specialities', 'specialities', '2021-05-18 11:59:37', '2021-05-18 11:59:37'),
(47, 'browse_doctors', 'doctors', '2021-05-18 13:52:51', '2021-05-18 13:52:51'),
(48, 'read_doctors', 'doctors', '2021-05-18 13:52:51', '2021-05-18 13:52:51'),
(49, 'edit_doctors', 'doctors', '2021-05-18 13:52:51', '2021-05-18 13:52:51'),
(50, 'add_doctors', 'doctors', '2021-05-18 13:52:51', '2021-05-18 13:52:51'),
(51, 'delete_doctors', 'doctors', '2021-05-18 13:52:51', '2021-05-18 13:52:51'),
(57, 'browse_researches', 'researches', '2021-05-28 07:26:17', '2021-05-28 07:26:17'),
(58, 'read_researches', 'researches', '2021-05-28 07:26:17', '2021-05-28 07:26:17'),
(59, 'edit_researches', 'researches', '2021-05-28 07:26:17', '2021-05-28 07:26:17'),
(60, 'add_researches', 'researches', '2021-05-28 07:26:17', '2021-05-28 07:26:17'),
(61, 'delete_researches', 'researches', '2021-05-28 07:26:17', '2021-05-28 07:26:17'),
(62, 'browse_services', 'services', '2021-05-28 10:42:43', '2021-05-28 10:42:43'),
(63, 'read_services', 'services', '2021-05-28 10:42:43', '2021-05-28 10:42:43'),
(64, 'edit_services', 'services', '2021-05-28 10:42:43', '2021-05-28 10:42:43'),
(65, 'add_services', 'services', '2021-05-28 10:42:43', '2021-05-28 10:42:43'),
(66, 'delete_services', 'services', '2021-05-28 10:42:43', '2021-05-28 10:42:43'),
(67, 'browse_methodics', 'methodics', '2021-06-03 03:01:03', '2021-06-03 03:01:03'),
(68, 'read_methodics', 'methodics', '2021-06-03 03:01:03', '2021-06-03 03:01:03'),
(69, 'edit_methodics', 'methodics', '2021-06-03 03:01:03', '2021-06-03 03:01:03'),
(70, 'add_methodics', 'methodics', '2021-06-03 03:01:03', '2021-06-03 03:01:03'),
(71, 'delete_methodics', 'methodics', '2021-06-03 03:01:03', '2021-06-03 03:01:03'),
(72, 'browse_checkup_faqs', 'checkup_faqs', '2021-06-04 07:00:09', '2021-06-04 07:00:09'),
(73, 'read_checkup_faqs', 'checkup_faqs', '2021-06-04 07:00:09', '2021-06-04 07:00:09'),
(74, 'edit_checkup_faqs', 'checkup_faqs', '2021-06-04 07:00:09', '2021-06-04 07:00:09'),
(75, 'add_checkup_faqs', 'checkup_faqs', '2021-06-04 07:00:09', '2021-06-04 07:00:09'),
(76, 'delete_checkup_faqs', 'checkup_faqs', '2021-06-04 07:00:09', '2021-06-04 07:00:09'),
(77, 'browse_checkups', 'checkups', '2021-06-04 07:05:57', '2021-06-04 07:05:57'),
(78, 'read_checkups', 'checkups', '2021-06-04 07:05:57', '2021-06-04 07:05:57'),
(79, 'edit_checkups', 'checkups', '2021-06-04 07:05:57', '2021-06-04 07:05:57'),
(80, 'add_checkups', 'checkups', '2021-06-04 07:05:57', '2021-06-04 07:05:57'),
(81, 'delete_checkups', 'checkups', '2021-06-04 07:05:57', '2021-06-04 07:05:57'),
(82, 'browse_checkup_types', 'checkup_types', '2021-06-04 07:09:33', '2021-06-04 07:09:33'),
(83, 'read_checkup_types', 'checkup_types', '2021-06-04 07:09:33', '2021-06-04 07:09:33'),
(84, 'edit_checkup_types', 'checkup_types', '2021-06-04 07:09:33', '2021-06-04 07:09:33'),
(85, 'add_checkup_types', 'checkup_types', '2021-06-04 07:09:33', '2021-06-04 07:09:33'),
(86, 'delete_checkup_types', 'checkup_types', '2021-06-04 07:09:33', '2021-06-04 07:09:33'),
(87, 'browse_checkup_prices', 'checkup_prices', '2021-06-04 07:10:47', '2021-06-04 07:10:47'),
(88, 'read_checkup_prices', 'checkup_prices', '2021-06-04 07:10:47', '2021-06-04 07:10:47'),
(89, 'edit_checkup_prices', 'checkup_prices', '2021-06-04 07:10:47', '2021-06-04 07:10:47'),
(90, 'add_checkup_prices', 'checkup_prices', '2021-06-04 07:10:47', '2021-06-04 07:10:47'),
(91, 'delete_checkup_prices', 'checkup_prices', '2021-06-04 07:10:47', '2021-06-04 07:10:47'),
(92, 'browse_icontexts', 'icontexts', '2021-06-06 05:08:26', '2021-06-06 05:08:26'),
(93, 'read_icontexts', 'icontexts', '2021-06-06 05:08:26', '2021-06-06 05:08:26'),
(94, 'edit_icontexts', 'icontexts', '2021-06-06 05:08:26', '2021-06-06 05:08:26'),
(95, 'add_icontexts', 'icontexts', '2021-06-06 05:08:26', '2021-06-06 05:08:26'),
(96, 'delete_icontexts', 'icontexts', '2021-06-06 05:08:26', '2021-06-06 05:08:26'),
(97, 'browse_certificates', 'certificates', '2021-06-06 05:26:24', '2021-06-06 05:26:24'),
(98, 'read_certificates', 'certificates', '2021-06-06 05:26:24', '2021-06-06 05:26:24'),
(99, 'edit_certificates', 'certificates', '2021-06-06 05:26:24', '2021-06-06 05:26:24'),
(100, 'add_certificates', 'certificates', '2021-06-06 05:26:24', '2021-06-06 05:26:24'),
(101, 'delete_certificates', 'certificates', '2021-06-06 05:26:24', '2021-06-06 05:26:24'),
(107, 'browse_corp_videos', 'corp_videos', '2021-06-10 11:17:58', '2021-06-10 11:17:58'),
(108, 'read_corp_videos', 'corp_videos', '2021-06-10 11:17:58', '2021-06-10 11:17:58'),
(109, 'edit_corp_videos', 'corp_videos', '2021-06-10 11:17:58', '2021-06-10 11:17:58'),
(110, 'add_corp_videos', 'corp_videos', '2021-06-10 11:17:58', '2021-06-10 11:17:58'),
(111, 'delete_corp_videos', 'corp_videos', '2021-06-10 11:17:58', '2021-06-10 11:17:58'),
(112, 'browse_corp_blocks', 'corp_blocks', '2021-06-10 11:50:10', '2021-06-10 11:50:10'),
(113, 'read_corp_blocks', 'corp_blocks', '2021-06-10 11:50:10', '2021-06-10 11:50:10'),
(114, 'edit_corp_blocks', 'corp_blocks', '2021-06-10 11:50:10', '2021-06-10 11:50:10'),
(115, 'add_corp_blocks', 'corp_blocks', '2021-06-10 11:50:10', '2021-06-10 11:50:10'),
(116, 'delete_corp_blocks', 'corp_blocks', '2021-06-10 11:50:10', '2021-06-10 11:50:10'),
(117, 'browse_galleries', 'galleries', '2021-06-11 06:53:33', '2021-06-11 06:53:33'),
(118, 'read_galleries', 'galleries', '2021-06-11 06:53:33', '2021-06-11 06:53:33'),
(119, 'edit_galleries', 'galleries', '2021-06-11 06:53:33', '2021-06-11 06:53:33'),
(120, 'add_galleries', 'galleries', '2021-06-11 06:53:33', '2021-06-11 06:53:33'),
(121, 'delete_galleries', 'galleries', '2021-06-11 06:53:33', '2021-06-11 06:53:33'),
(127, 'browse_sales', 'sales', '2021-06-17 06:28:07', '2021-06-17 06:28:07'),
(128, 'read_sales', 'sales', '2021-06-17 06:28:07', '2021-06-17 06:28:07'),
(129, 'edit_sales', 'sales', '2021-06-17 06:28:07', '2021-06-17 06:28:07'),
(130, 'add_sales', 'sales', '2021-06-17 06:28:07', '2021-06-17 06:28:07'),
(131, 'delete_sales', 'sales', '2021-06-17 06:28:07', '2021-06-17 06:28:07'),
(132, 'browse_subscribers', 'subscribers', '2021-06-18 06:02:12', '2021-06-18 06:02:12'),
(133, 'read_subscribers', 'subscribers', '2021-06-18 06:02:12', '2021-06-18 06:02:12'),
(134, 'edit_subscribers', 'subscribers', '2021-06-18 06:02:12', '2021-06-18 06:02:12'),
(135, 'add_subscribers', 'subscribers', '2021-06-18 06:02:12', '2021-06-18 06:02:12'),
(136, 'delete_subscribers', 'subscribers', '2021-06-18 06:02:12', '2021-06-18 06:02:12'),
(137, 'browse_service_types', 'service_types', '2021-07-14 05:55:10', '2021-07-14 05:55:10'),
(138, 'read_service_types', 'service_types', '2021-07-14 05:55:10', '2021-07-14 05:55:10'),
(139, 'edit_service_types', 'service_types', '2021-07-14 05:55:10', '2021-07-14 05:55:10'),
(140, 'add_service_types', 'service_types', '2021-07-14 05:55:10', '2021-07-14 05:55:10'),
(141, 'delete_service_types', 'service_types', '2021-07-14 05:55:10', '2021-07-14 05:55:10'),
(142, 'browse_applications', 'applications', '2021-07-28 17:32:51', '2021-07-28 17:32:51'),
(143, 'read_applications', 'applications', '2021-07-28 17:32:51', '2021-07-28 17:32:51'),
(144, 'edit_applications', 'applications', '2021-07-28 17:32:51', '2021-07-28 17:32:51'),
(145, 'add_applications', 'applications', '2021-07-28 17:32:51', '2021-07-28 17:32:51'),
(146, 'delete_applications', 'applications', '2021-07-28 17:32:51', '2021-07-28 17:32:51'),
(147, 'browse_banners', 'banners', '2021-08-11 04:50:49', '2021-08-11 04:50:49'),
(148, 'read_banners', 'banners', '2021-08-11 04:50:49', '2021-08-11 04:50:49'),
(149, 'edit_banners', 'banners', '2021-08-11 04:50:49', '2021-08-11 04:50:49'),
(150, 'add_banners', 'banners', '2021-08-11 04:50:49', '2021-08-11 04:50:49'),
(151, 'delete_banners', 'banners', '2021-08-11 04:50:49', '2021-08-11 04:50:49'),
(152, 'browse_partners', 'partners', '2021-08-11 09:28:10', '2021-08-11 09:28:10'),
(153, 'read_partners', 'partners', '2021-08-11 09:28:10', '2021-08-11 09:28:10'),
(154, 'edit_partners', 'partners', '2021-08-11 09:28:10', '2021-08-11 09:28:10'),
(155, 'add_partners', 'partners', '2021-08-11 09:28:10', '2021-08-11 09:28:10'),
(156, 'delete_partners', 'partners', '2021-08-11 09:28:10', '2021-08-11 09:28:10'),
(162, 'browse_anons', 'anons', '2021-08-12 03:34:24', '2021-08-12 03:34:24'),
(163, 'read_anons', 'anons', '2021-08-12 03:34:24', '2021-08-12 03:34:24'),
(164, 'edit_anons', 'anons', '2021-08-12 03:34:24', '2021-08-12 03:34:24'),
(165, 'add_anons', 'anons', '2021-08-12 03:34:24', '2021-08-12 03:34:24'),
(166, 'delete_anons', 'anons', '2021-08-12 03:34:24', '2021-08-12 03:34:24'),
(167, 'browse_events', 'events', '2021-08-12 08:15:39', '2021-08-12 08:15:39'),
(168, 'read_events', 'events', '2021-08-12 08:15:39', '2021-08-12 08:15:39'),
(169, 'edit_events', 'events', '2021-08-12 08:15:39', '2021-08-12 08:15:39'),
(170, 'add_events', 'events', '2021-08-12 08:15:39', '2021-08-12 08:15:39'),
(171, 'delete_events', 'events', '2021-08-12 08:15:39', '2021-08-12 08:15:39'),
(172, 'browse_photos', 'photos', '2021-08-13 09:03:41', '2021-08-13 09:03:41'),
(173, 'read_photos', 'photos', '2021-08-13 09:03:41', '2021-08-13 09:03:41'),
(174, 'edit_photos', 'photos', '2021-08-13 09:03:41', '2021-08-13 09:03:41'),
(175, 'add_photos', 'photos', '2021-08-13 09:03:41', '2021-08-13 09:03:41'),
(176, 'delete_photos', 'photos', '2021-08-13 09:03:41', '2021-08-13 09:03:41'),
(177, 'browse_videos', 'videos', '2021-08-13 10:50:30', '2021-08-13 10:50:30'),
(178, 'read_videos', 'videos', '2021-08-13 10:50:30', '2021-08-13 10:50:30'),
(179, 'edit_videos', 'videos', '2021-08-13 10:50:30', '2021-08-13 10:50:30'),
(180, 'add_videos', 'videos', '2021-08-13 10:50:30', '2021-08-13 10:50:30'),
(181, 'delete_videos', 'videos', '2021-08-13 10:50:30', '2021-08-13 10:50:30'),
(182, 'browse_articles', 'articles', '2021-08-18 10:49:03', '2021-08-18 10:49:03'),
(183, 'read_articles', 'articles', '2021-08-18 10:49:03', '2021-08-18 10:49:03'),
(184, 'edit_articles', 'articles', '2021-08-18 10:49:03', '2021-08-18 10:49:03'),
(185, 'add_articles', 'articles', '2021-08-18 10:49:03', '2021-08-18 10:49:03'),
(186, 'delete_articles', 'articles', '2021-08-18 10:49:03', '2021-08-18 10:49:03'),
(187, 'browse_categories', 'categories', '2021-08-26 07:32:36', '2021-08-26 07:32:36'),
(188, 'read_categories', 'categories', '2021-08-26 07:32:36', '2021-08-26 07:32:36'),
(189, 'edit_categories', 'categories', '2021-08-26 07:32:36', '2021-08-26 07:32:36'),
(190, 'add_categories', 'categories', '2021-08-26 07:32:36', '2021-08-26 07:32:36'),
(191, 'delete_categories', 'categories', '2021-08-26 07:32:36', '2021-08-26 07:32:36');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(99, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `event_id` int(10) UNSIGNED DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `title`, `slug`, `image`, `images`, `content`, `event_id`, `seo_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Пресс-конференция на тему: ”О привлечении иностранных инвестиций”', 'press-konferenciya-na-temu-o-privlechenii-inostrannyh-investicij', 'photos\\August2021\\nPiSifl0OAa544v3snGf.jpg', '[\"photos/1/August2021/announcements-1.png\",\"photos/1/August2021/announcements-2.png\",\"photos/1/August2021/banner-2.png\",\"photos/1/August2021/anonsimg.jpg\",\"photos/1/August2021/banner.png\"]', '', 4, '', '', '', 1, '2021-08-29 20:09:20', '2021-08-29 20:09:20'),
(3, '30. март Event Arena - Система онлайн-покупки зарубежных жилых людей', '30-mart-event-arena-sistema-onlajn-pokupki-zarubezhnyh-zhilyh-lyudej', 'photos\\August2021\\Lmdr147B3giByeyf0U9p.jpg', '[\"photos/2/August2021/Column41.jpg\",\"photos/2/August2021/Column42.jpg\",\"photos/2/August2021/Column51.jpg\",\"photos/2/August2021/column50.jpg\",\"photos/2/August2021/Column52.jpg\"]', '', 4, '', '', '', 1, '2021-08-29 20:09:20', '2021-08-29 20:09:20'),
(4, '1 апрель Digital Almaty Forum 2021 | Управление финансовыми пассивами общества', '1-aprel-digital-almaty-forum-2021-upravlenie-finansovymi-passivami-obshestva', 'photos\\August2021\\C3c00xioHaWm5XAL8nHB.jpg', '[\"photos/3/August2021/Column321.jpg\",\"photos/3/August2021/en.png\",\"photos/3/August2021/event.jpg\",\"photos/3/August2021/event-bot.jpg\",\"photos/3/August2021/events-1.png\"]', '', 4, '', '', '', 1, '2021-08-29 20:09:20', '2021-08-29 20:09:20'),
(5, '15. апрель Памятные мероприятия в день...', '15-aprel-pamyatnye-meropriyatiya-v-den', 'photos\\August2021\\LCJXu0GYlS4dFI4hDikH.jpg', '[\"photos/4/August2021/column30.jpg\",\"photos/4/August2021/Column31.jpg\",\"photos/4/August2021/column40.jpg\",\"photos/4/August2021/Column32.jpg\"]', '', 4, '', '', '', 1, '2021-08-29 20:09:20', '2021-08-29 20:09:20'),
(6, 'Пресс-конференция на тему: ”О привлечении иностранных инвестиций”', 'press-konferenciya-na-temu-o-privlechenii-inostrannyh-investicij-5', 'photos\\August2021\\nPiSifl0OAa544v3snGf.jpg', '[\"photos/1/August2021/announcements-1.png\",\"photos/1/August2021/announcements-2.png\",\"photos/1/August2021/banner-2.png\",\"photos/1/August2021/anonsimg.jpg\",\"photos/1/August2021/banner.png\"]', '', 4, '', '', '', 1, '2021-08-29 20:09:20', '2021-08-29 20:09:20');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-05-18 04:12:29', '2021-05-18 04:12:29'),
(2, 'user', 'Normal User', '2021-05-18 04:12:29', '2021-05-18 04:12:29');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Health City', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\May2021\\5pG3n9Ylpxkf0RzWSkmm.png', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.footer_logo', 'Footer Logo', 'settings\\May2021\\fuBmYaX9VlIY4QovjisN.png', NULL, 'image', 4, 'Site'),
(12, 'site.copyrights', 'Copyright text', 'Copyright © 2021 Health City', NULL, 'text', 9, 'Site'),
(13, 'site.qr', 'QR Code', 'settings\\June2021\\aJsp4PTx4Quze5T2vLRw.png', NULL, 'image', 7, 'Site'),
(14, 'site.qr_link', 'QR Code Ссылка', '', NULL, 'text', 8, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'checkups', 'title', 1, 'kz', 'PLATINUM пакеті', '2021-06-05 03:52:05', '2021-06-05 03:52:05'),
(2, 'checkup_types', 'title', 3, 'kz', 'Фокусті', '2021-06-05 03:56:03', '2021-06-05 03:56:03'),
(3, 'checkup_types', 'subtitle', 3, 'kz', '1 күнде денсаулығыңызды жан-жақты тексеру', '2021-06-05 03:56:03', '2021-06-05 03:56:03'),
(4, 'checkup_types', 'description', 3, 'kz', 'Диагностикалық емтиханға дайындық Диагностикалық тексеруге лайықты дайындық - бұл Тексерудің сәтті өтуі мен нақты нәтижелерге қол жеткізудің кепілі:', '2021-06-05 03:56:03', '2021-06-05 03:56:03'),
(5, 'checkup_types', 'content_1', 3, 'kz', '<ul>\n<li>* Таңғы ас ішпеңіз, шай немесе кофе ішпеңіз, темекі шекпеңіз;</li>\n<li>* Электрокардиограмма (EKG) алдында теріге кремдер немесе лосьондар жағуға болмайды;</li>\n<li>* CheckUp қарсаңында физикалық жаттығулар ұсынылмайды;</li>\n<li>* Тексеруден 2 күн бұрын алкогольді ішпеңіз;</li>\n<li>* Медициналық кітапшаның көшірмесін, егер олар сақталған болса, алдыңғы сынақтардың нәтижелерімен бірге алу ұсынылады;</li>\n<li>* Сізде жаттығу тесті үшін спорт костюміңіз болуы керек;</li>\n<li>* CheckUp-ға зергерлік бұйымдарсыз келуге кеңес береміз.</li>\n</ul>', '2021-06-05 03:56:03', '2021-06-05 03:56:03'),
(6, 'checkup_types', 'content_2', 3, 'kz', '<p>Назар аударыңыз:</p>\n<ul>\n<li>* Талдаудан бұрын таңертең: гормондар, кортизондар, инсулин, қан сұйылтқыштар (антикоагулянттар) қабылдауға болмайды, бірақ оларды тестілеуден кейін қабылдау үшін өздеріңізде ұстаңыз.</li>\n<li>* Диагноз қойылғанға дейін үш күн бойы дәрумендер, темір, түрлі тағамдық қоспалар қабылдауды тоқтатыңыз.</li>\n<li>* Қант диабеті, гипертония, жүрек ауруы, қалқанша без, холестеринді төмендету, ревматизм аурулары, психиатриялық және жүйке аурулары сияқты созылмалы аурулармен байланысты дәрі-дәрмектерді қолдануды тоқтатпаңыз.</li>\n<li>* Физикалық және эмоционалды шамадан тыс жүктеме жоқ.</li>\n</ul>', '2021-06-05 03:56:03', '2021-06-05 03:56:03'),
(7, 'checkup_prices', 'title', 1, 'kz', 'Ерлерге арналған check up', '2021-06-05 04:09:47', '2021-06-05 04:09:47'),
(8, 'checkup_faqs', 'title', 3, 'kz', 'Бағдарламаны сатып алғанда не аласыз?', '2021-06-05 04:13:45', '2021-06-05 04:13:45'),
(9, 'checkup_faqs', 'content', 3, 'kz', '<p>KZ Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi nesciunt necessitatibus blanditiis! Error cupiditate ad inventore ea optio cumque veniam harum, doloribus officia velit voluptatibus consectetur voluptas voluptates, facilis, omnis eum molestiae aspernatur quisquam itaque impedit quam dolorem. Dolorum ullam assumenda modi tempora pariatur, quaerat neque nihil facilis voluptates nulla? Dolores voluptatem dolor beatae tempora consequuntur eius veniam doloribus, saepe odit delectus magni? Accusantium corporis recusandae placeat expedita porro ipsam tempora aliquam quae fugiat doloremque, voluptatum maxime nam facilis voluptatem nesciunt non eligendi explicabo unde at cupiditate inventore neque magni! Sequi praesentium eligendi nisi. Harum quisquam temporibus nam quibusdam incidunt distinctio facere soluta ullam possimus illo delectus voluptatem aliquid commodi, unde at. Rem similique fugiat delectus molestiae quas aliquam, iste cum harum nisi voluptatem nobis voluptas quibusdam porro fuga. Molestiae blanditiis delectus asperiores amet at, sit voluptatem sapiente ipsam, expedita iure aliquam rem iusto maxime, eum accusamus exercitationem eos eaque?</p>', '2021-06-05 04:13:45', '2021-06-05 04:13:45'),
(10, 'checkup_faqs', 'title', 2, 'kz', 'Дені сау адамға check up диагностикаcы қажет пе?', '2021-06-05 04:14:34', '2021-06-05 04:14:34'),
(11, 'checkup_faqs', 'content', 2, 'kz', '<p>KZ Lorem ipsum dolor, sit amet consectetur adipisicing elit. Impedit alias mollitia quisquam fugit animi, doloribus quod expedita natus enim explicabo nostrum! Neque dolorem architecto consectetur quibusdam pariatur iure at qui tempora fuga cupiditate libero reprehenderit sapiente minus natus, doloribus assumenda dolorum perferendis quo aliquid quaerat. Voluptas quas p</p>', '2021-06-05 04:14:34', '2021-06-05 04:14:34'),
(12, 'checkup_faqs', 'title', 1, 'kz', 'Check up диагностика дегеніміз не?', '2021-06-05 04:15:29', '2021-06-05 04:15:29'),
(13, 'checkup_faqs', 'content', 1, 'kz', '<p>Каз Lorem ipsum dolor, sit amet consectetur adipisicing elit. Impedit alias mollitia quisquam fugit animi, doloribus quod expedita natus enim explicabo nostrum! Neque dolorem architecto consectetur quibusdam pariatur iure at qui tempora fuga cupiditate libero reprehenderit sapiente minus natus, doloribus assumenda dolorum perferendis quo aliquid quaerat. Voluptas quas provident aliquam omnis ratione quibusdam sequi? Iure, minus, nesciunt beatae qui velit veniam delectus eveniet reiciendis quibusdam itaque illo explicabo laborum! Eos tempore dolore magnam repellat ipsa atque deserunt laborum, nisi totam itaque doloribus debitis rem, corrupti expedita molestiae. Pariatur eligendi laboriosam repellat voluptas recusandae doloribus cum eum. Sint pariatur odit beatae quisquam?</p>', '2021-06-05 04:15:29', '2021-06-05 04:15:29'),
(14, 'checkup_types', 'title', 1, 'kz', 'Ересектерге арналған пакеттер', '2021-06-05 04:16:39', '2021-06-05 04:16:39'),
(15, 'checkup_types', 'subtitle', 1, 'kz', '1 күнде денсаулығыңызды жан-жақты тексеру', '2021-06-05 04:16:39', '2021-06-05 04:16:39'),
(16, 'checkup_types', 'description', 1, 'kz', 'Диагностикалық емтиханға дайындық Диагностикалық тексеруге лайықты дайындық - бұл Тексерудің сәтті өтуі мен нақты нәтижелерге қол жеткізудің кепілі:', '2021-06-05 04:16:39', '2021-06-05 04:16:39'),
(17, 'checkup_types', 'content_1', 1, 'kz', '<ul>\n<li>* Таңғы ас ішпеңіз, шай немесе кофе ішпеңіз, темекі шекпеңіз;</li>\n<li>* Электрокардиограмма (EKG) алдында теріге кремдер немесе лосьондар жағуға болмайды;</li>\n<li>* CheckUp қарсаңында физикалық жаттығулар ұсынылмайды;</li>\n<li>* Тексеруден 2 күн бұрын алкогольді ішпеңіз;</li>\n<li>* Медициналық кітапшаның көшірмесін, егер олар сақталған болса, алдыңғы сынақтардың нәтижелерімен бірге алу ұсынылады;</li>\n<li>* Сізде жаттығу тесті үшін спорт костюміңіз болуы керек;</li>\n<li>* CheckUp-ға зергерлік бұйымдарсыз келуге кеңес береміз.</li>\n</ul>', '2021-06-05 04:16:39', '2021-06-05 04:16:39'),
(18, 'checkup_types', 'content_2', 1, 'kz', '<p>Назар аударыңыз:</p>\n<ul>\n<li>* Талдаудан бұрын таңертең: гормондар, кортизондар, инсулин, қан сұйылтқыштар (антикоагулянттар) қабылдауға болмайды, бірақ оларды тестілеуден кейін қабылдау үшін өздеріңізде ұстаңыз.</li>\n<li>* Диагноз қойылғанға дейін үш күн бойы дәрумендер, темір, түрлі тағамдық қоспалар қабылдауды тоқтатыңыз.</li>\n<li>* Қант диабеті, гипертония, жүрек ауруы, қалқанша без, холестеринді төмендету, ревматизм аурулары, психиатриялық және жүйке аурулары сияқты созылмалы аурулармен байланысты дәрі-дәрмектерді қолдануды тоқтатпаңыз.</li>\n<li>* Физикалық және эмоционалды шамадан тыс жүктеме жоқ.</li>\n</ul>', '2021-06-05 04:16:39', '2021-06-05 04:16:39'),
(19, 'checkups', 'title', 2, 'kz', 'GOLD пакеті', '2021-06-05 04:21:52', '2021-06-05 04:21:52'),
(20, 'checkups', 'content_1', 2, 'kz', '<p>Дәрігердің кеңесі:</p>\n<ul>\n<li>* Сұхбат</li>\n<li>* Анамнез жинау (өмір, ауру)</li>\n</ul>\n<p>Антропометрия:</p>\n<ul>\n<li>* Биіктігі, Салмағы, BMI</li>\n<li>* Дене салмағының құрамы (май және бұлшықет массасы)</li>\n</ul>\n<p>Маңызды статистика:</p>\n<ul>\n<li>* Пульс</li>\n<li>* Оттегімен қанықтыру</li>\n<li>* Дене температурасы</li>\n<li>* Артериялық қысым</li>\n<li>* Тыныс алу жиілігі</li>\n</ul>\n<p>Stanford25 стандартына сәйкес жеке дәрігермен денсаулықты бағалау:</p>\n<ul>\n<li>* Тірек-қимыл аппаратының жұмысын бағалау</li>\n<li>* Мойын тамырларының доплерографиялық ультрадыбыстық зерттеуі</li>\n<li>* Неврологиялық жағдайды бағалау (бас сүйек нервтері, сезімталдық)</li>\n</ul>', '2021-06-05 04:21:52', '2021-06-05 04:21:52'),
(21, 'checkups', 'content_2', 2, 'kz', '<p>Остеопорозға тесттер:</p>\n<ul>\n<li>* 2 тар маманның кеңесі (дәрігердің нұсқауы бойынша)</li>\n</ul>\n<p>Көру ұпайы:</p>\n<ul>\n<li>* Жалпы кальций</li>\n<li>* Электролиттердің көру өткірлігін өлшеу</li>\n<li>* Офтальмоскопия</li>\n<li>* Магний</li>\n<li>* Фосфор</li>\n</ul>\n<p>Тыңдауды бағалау:</p>\n<ul>\n<li>* Отоскопия</li>\n</ul>\n<p>Қалқанша безін бағалау:</p>\n<ul>\n<li>* Аудиометрия</li>\n<li>* Қалқанша безінің ультрадыбыстық зерттеуі</li>\n<li>* ТТГ</li>\n</ul>', '2021-06-05 04:21:52', '2021-06-05 04:21:52'),
(22, 'checkups', 'content_1', 1, 'kz', '<p>Дәрігердің кеңесі:</p>\n<ul>\n<li>* Сұхбат</li>\n<li>* Анамнез жинау (өмір, ауру)</li>\n</ul>\n<p>Антропометрия:</p>\n<ul>\n<li>* Биіктігі, Салмағы, BMI</li>\n<li>* Дене салмағының құрамы (май және бұлшықет массасы)</li>\n</ul>\n<p>Маңызды статистика:</p>\n<ul>\n<li>* Пульс</li>\n<li>* Оттегімен қанықтыру</li>\n<li>* Дене температурасы</li>\n<li>* Артериялық қысым</li>\n<li>* Тыныс алу жиілігі</li>\n</ul>\n<p>Stanford25 стандартына сәйкес жеке дәрігермен денсаулықты бағалау:</p>\n<ul>\n<li>* Тірек-қимыл аппаратының жұмысын бағалау</li>\n<li>* Мойын тамырларының доплерографиялық ультрадыбыстық зерттеуі</li>\n<li>* Неврологиялық жағдайды бағалау (бас сүйек нервтері, сезімталдық)</li>\n</ul>', '2021-06-05 04:22:41', '2021-06-05 04:22:41'),
(23, 'checkups', 'content_2', 1, 'kz', '<p>Остеопорозға тесттер:</p>\n<ul>\n<li>* 2 тар маманның кеңесі (дәрігердің нұсқауы бойынша)</li>\n</ul>\n<p>Көру ұпайы:</p>\n<ul>\n<li>* Жалпы кальций</li>\n<li>* Электролиттердің көру өткірлігін өлшеу</li>\n<li>* Офтальмоскопия</li>\n<li>* Магний</li>\n<li>* Фосфор</li>\n</ul>\n<p>Тыңдауды бағалау:</p>\n<ul>\n<li>* Отоскопия</li>\n</ul>\n<p>Қалқанша безін бағалау:</p>\n<ul>\n<li>* Аудиометрия</li>\n<li>* Қалқанша безінің ультрадыбыстық зерттеуі</li>\n<li>* ТТГ</li>\n</ul>', '2021-06-05 04:22:41', '2021-06-05 04:22:41'),
(24, 'checkup_prices', 'title', 2, 'kz', 'Әйелдерге арналған check up', '2021-06-05 04:23:20', '2021-06-05 04:23:20'),
(25, 'categories', 'name', 1, 'kz', 'Культура', '2021-08-26 07:53:23', '2021-08-26 07:53:23'),
(26, 'categories', 'name', 1, 'en', 'Культура', '2021-08-26 07:53:23', '2021-08-26 07:53:23'),
(27, 'categories', 'name', 2, 'kz', 'Спорт', '2021-08-26 07:54:21', '2021-08-26 07:54:21'),
(28, 'categories', 'name', 2, 'en', 'Sport', '2021-08-26 07:54:21', '2021-08-26 07:54:21'),
(29, 'categories', 'name', 3, 'kz', 'PR и медиа', '2021-08-26 07:55:28', '2021-08-26 07:55:28'),
(30, 'categories', 'name', 3, 'en', 'PR и медиа', '2021-08-26 07:55:28', '2021-08-26 07:55:28'),
(31, 'categories', 'name', 4, 'kz', 'IT для PR', '2021-08-26 07:56:06', '2021-08-26 07:56:06'),
(32, 'categories', 'name', 4, 'en', 'IT для PR', '2021-08-26 07:56:06', '2021-08-26 07:56:06'),
(33, 'categories', 'name', 5, 'kz', 'Экономика', '2021-08-26 07:56:35', '2021-08-26 07:56:35'),
(34, 'categories', 'name', 5, 'en', 'Экономика', '2021-08-26 07:56:35', '2021-08-26 07:56:35'),
(35, 'categories', 'name', 6, 'kz', 'Технологии', '2021-08-26 07:56:53', '2021-08-26 07:56:53'),
(36, 'categories', 'name', 6, 'en', 'Технологии', '2021-08-26 07:56:53', '2021-08-26 07:56:53'),
(37, 'articles', 'title', 1, 'kz', 'PR-менеджер для работы с зарубежными отелями', '2021-08-26 07:58:52', '2021-08-26 07:58:52'),
(38, 'articles', 'title', 1, 'en', 'PR-менеджер для работы с зарубежными отелями', '2021-08-26 07:58:52', '2021-08-26 07:58:52'),
(39, 'articles', 'content', 1, 'en', '<p>В целом у казахстанских судей есть общее понимание того, как нужно использовать VAR, они старались применять те знания, которые получили во время теоретических занятий. Арбитр не может работать с системой VAR без наличия лицензии ФИФА, поэтому очень важно казахстанским судьям не только обучиться работе с системой, но и пройти сертификацию со стороны мирового футбольного регулятора. Проведенная на протяжении пяти дней работа меня удовлетворила, я остался доволен тем, какое понимание есть у казахстанских судей.</p>\n<p>- Сколько семинаров и практических встреч необходимо провести еще, чтобы казахстанские футбольные судьи были готовы к внедрению VAR на турнирах под эгидой КФФ?&nbsp;&nbsp;</p>\n<p>- Судьи, прошедшие обучение, должны получить соответствующую лицензию ФИФА. Экзаменация арбитров пройдет в онлайн-режиме. Судьям необходимо выполнить все критерии, речь идет об определенном количестве времени за тренажерами VAR и работы на поле.</p>\n<p>Мы планируем встретиться в начале сентября, чтобы провести аналогичный обучающий практический семинар в период окна ФИФА, когда клубные турниры будут приостановлены. Хотим провести 5-6-дневный турнир среди любителей или детских команд, где будут закреплены полученные ранее знания в приближенных к реальности условиях. Думаю, что примерно к октябрю у ФИФА будет возможность подтвердить, кто из кандидатов сможет получить лицензию VAR или А-VAR (ассистент VAR).&nbsp;&nbsp;</p>', '2021-08-26 08:00:38', '2021-08-26 08:00:38'),
(40, 'articles', 'title', 2, 'kz', 'PR-менеджер для работы с зарубежными отелями', '2021-08-26 08:02:03', '2021-08-26 08:02:03'),
(41, 'articles', 'title', 2, 'en', 'PR-менеджер для работы с зарубежными отелями', '2021-08-26 08:02:03', '2021-08-26 08:02:03'),
(42, 'events', 'title', 1, 'kz', 'Пресс-конференция на тему: ”О привлечении иностранных инвестиций”', '2021-08-26 08:35:39', '2021-08-26 08:35:39'),
(43, 'events', 'title', 1, 'en', 'Пресс-конференция на тему: ”О привлечении иностранных инвестиций”', '2021-08-26 08:35:39', '2021-08-26 08:35:39'),
(44, 'events', 'content', 1, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2021-08-26 08:35:39', '2021-08-26 08:35:39'),
(45, 'events', 'title', 2, 'kz', 'Пресс-конференция на тему: ”О привлечении иностранных вложении”', '2021-08-26 08:40:32', '2021-08-26 08:40:32'),
(46, 'events', 'title', 2, 'en', 'Пресс-конференция на тему: ”О привлечении иностранных вложении”', '2021-08-26 08:40:32', '2021-08-26 08:40:32'),
(47, 'data_rows', 'display_name', 22, 'en', 'Id', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(48, 'data_rows', 'display_name', 23, 'en', 'Author Id', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(49, 'data_rows', 'display_name', 24, 'en', 'Тип страницы', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(50, 'data_rows', 'display_name', 25, 'en', 'Заголовок', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(51, 'data_rows', 'display_name', 26, 'en', 'Краткое описание', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(52, 'data_rows', 'display_name', 27, 'en', 'Контент', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(53, 'data_rows', 'display_name', 28, 'en', 'Изображение', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(54, 'data_rows', 'display_name', 29, 'en', 'Ссылка (Уникальная)', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(55, 'data_rows', 'display_name', 30, 'en', 'SEO Заголовок', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(56, 'data_rows', 'display_name', 31, 'en', 'Meta Описание', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(57, 'data_rows', 'display_name', 32, 'en', 'Meta Ключевые слова', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(58, 'data_rows', 'display_name', 33, 'en', 'Статус', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(59, 'data_rows', 'display_name', 34, 'en', 'Created At', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(60, 'data_rows', 'display_name', 35, 'en', 'Updated At', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(61, 'data_types', 'display_name_singular', 4, 'en', 'Страница', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(62, 'data_types', 'display_name_plural', 4, 'en', 'Страницы', '2021-08-26 08:47:12', '2021-08-26 08:47:12'),
(63, 'pages', 'title', 4, 'kz', 'Жаңалықтар', '2021-08-26 08:49:44', '2021-08-26 08:49:44'),
(64, 'pages', 'title', 4, 'en', 'Врачи', '2021-08-26 08:49:44', '2021-08-26 08:49:44'),
(65, 'pages', 'excerpt', 4, 'en', 'Врачи', '2021-08-26 08:49:44', '2021-08-26 08:49:44'),
(66, 'pages', 'seo_title', 4, 'en', 'Врачи', '2021-08-26 08:49:44', '2021-08-26 08:49:44'),
(67, 'pages', 'meta_description', 4, 'en', 'Врачи', '2021-08-26 08:49:44', '2021-08-26 08:49:44'),
(68, 'pages', 'meta_keywords', 4, 'en', 'Врачи', '2021-08-26 08:49:44', '2021-08-26 08:49:44'),
(69, 'anons', 'title', 1, 'kz', 'PR-менеджер для работы с зарубежными отелями', '2021-08-26 09:03:26', '2021-08-26 09:03:26'),
(70, 'anons', 'title', 1, 'en', 'PR-менеджер для работы с зарубежными отелями', '2021-08-26 09:03:26', '2021-08-26 09:03:26'),
(71, 'anons', 'content', 1, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2021-08-26 09:03:26', '2021-08-26 09:03:26'),
(72, 'data_rows', 'display_name', 282, 'en', 'Id', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(73, 'data_rows', 'display_name', 283, 'en', 'Title', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(74, 'data_rows', 'display_name', 284, 'en', 'Slug', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(75, 'data_rows', 'display_name', 360, 'en', 'Category Id', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(76, 'data_rows', 'display_name', 291, 'en', 'Image', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(77, 'data_rows', 'display_name', 361, 'en', 'Thumb', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(78, 'data_rows', 'display_name', 362, 'en', 'Excerpt', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(79, 'data_rows', 'display_name', 294, 'en', 'Content', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(80, 'data_rows', 'display_name', 363, 'en', 'Status', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(81, 'data_rows', 'display_name', 364, 'en', 'Seo Title', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(82, 'data_rows', 'display_name', 365, 'en', 'Meta Keywords', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(83, 'data_rows', 'display_name', 366, 'en', 'Meta Description', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(84, 'data_rows', 'display_name', 295, 'en', 'Created At', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(85, 'data_rows', 'display_name', 296, 'en', 'Updated At', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(86, 'data_rows', 'display_name', 367, 'en', 'categories', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(87, 'data_types', 'display_name_singular', 35, 'en', 'Мероприятие', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(88, 'data_types', 'display_name_plural', 35, 'en', 'Мероприятия', '2021-08-26 13:39:25', '2021-08-26 13:39:25'),
(89, 'events', 'content', 1, 'kz', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2021-08-26 13:39:52', '2021-08-26 13:39:52'),
(90, 'events', 'content', 2, 'en', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2021-08-26 13:40:17', '2021-08-26 13:40:17'),
(91, 'data_rows', 'display_name', 22, 'kz', 'Id', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(92, 'data_rows', 'display_name', 23, 'kz', 'Author Id', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(93, 'data_rows', 'display_name', 24, 'kz', 'Тип страницы', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(94, 'data_rows', 'display_name', 25, 'kz', 'Заголовок', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(95, 'data_rows', 'display_name', 26, 'kz', 'Краткое описание', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(96, 'data_rows', 'display_name', 27, 'kz', 'Контент', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(97, 'data_rows', 'display_name', 28, 'kz', 'Изображение', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(98, 'data_rows', 'display_name', 29, 'kz', 'Ссылка (Уникальная)', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(99, 'data_rows', 'display_name', 30, 'kz', 'SEO Заголовок', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(100, 'data_rows', 'display_name', 31, 'kz', 'Meta Описание', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(101, 'data_rows', 'display_name', 32, 'kz', 'Meta Ключевые слова', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(102, 'data_rows', 'display_name', 33, 'kz', 'Статус', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(103, 'data_rows', 'display_name', 34, 'kz', 'Created At', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(104, 'data_rows', 'display_name', 35, 'kz', 'Updated At', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(105, 'data_types', 'display_name_singular', 4, 'kz', 'Страница', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(106, 'data_types', 'display_name_plural', 4, 'kz', 'Страницы', '2021-08-26 14:04:08', '2021-08-26 14:04:08'),
(107, 'pages', 'title', 6, 'kz', 'Пресс-анонстар', '2021-08-26 14:06:05', '2021-08-26 14:06:05'),
(108, 'pages', 'title', 6, 'en', 'Press-announcements', '2021-08-26 14:06:05', '2021-08-26 14:06:05'),
(109, 'pages', 'title', 5, 'en', 'Галерея', '2021-08-30 11:53:15', '2021-08-30 11:53:15'),
(110, 'data_rows', 'display_name', 262, 'en', 'Id', '2021-09-02 08:01:25', '2021-09-02 08:01:25'),
(111, 'data_rows', 'display_name', 266, 'en', 'Title', '2021-09-02 08:01:25', '2021-09-02 08:01:25'),
(112, 'data_rows', 'display_name', 265, 'en', 'Image', '2021-09-02 08:01:25', '2021-09-02 08:01:25'),
(113, 'data_rows', 'display_name', 263, 'en', 'Type', '2021-09-02 08:01:25', '2021-09-02 08:01:25'),
(114, 'data_rows', 'display_name', 268, 'en', 'Time', '2021-09-02 08:01:25', '2021-09-02 08:01:25'),
(115, 'data_rows', 'display_name', 269, 'en', 'Created At', '2021-09-02 08:01:25', '2021-09-02 08:01:25'),
(116, 'data_rows', 'display_name', 270, 'en', 'Updated At', '2021-09-02 08:01:25', '2021-09-02 08:01:25'),
(117, 'data_types', 'display_name_singular', 32, 'en', 'Баннер', '2021-09-02 08:01:25', '2021-09-02 08:01:25'),
(118, 'data_types', 'display_name_plural', 32, 'en', 'Баннеры', '2021-09-02 08:01:25', '2021-09-02 08:01:25'),
(119, 'data_rows', 'display_name', 262, 'kz', 'Id', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(120, 'data_rows', 'display_name', 266, 'kz', 'Title', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(121, 'data_rows', 'display_name', 369, 'en', 'Подзаголовок (в меню)', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(122, 'data_rows', 'display_name', 265, 'kz', 'Image', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(123, 'data_rows', 'display_name', 370, 'en', 'Ссылка (url адрес)', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(124, 'data_rows', 'display_name', 263, 'kz', 'Type', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(125, 'data_rows', 'display_name', 268, 'kz', 'Time', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(126, 'data_rows', 'display_name', 371, 'en', 'Event Id', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(127, 'data_rows', 'display_name', 372, 'en', 'Статус', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(128, 'data_rows', 'display_name', 373, 'en', 'Порядковый номер', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(129, 'data_rows', 'display_name', 269, 'kz', 'Created At', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(130, 'data_rows', 'display_name', 270, 'kz', 'Updated At', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(131, 'data_rows', 'display_name', 374, 'en', 'events', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(132, 'data_types', 'display_name_singular', 32, 'kz', 'Баннер', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(133, 'data_types', 'display_name_plural', 32, 'kz', 'Баннеры', '2021-09-02 08:02:00', '2021-09-02 08:02:00'),
(134, 'data_rows', 'display_name', 369, 'kz', 'Подзаголовок (в меню)', '2021-09-02 08:37:40', '2021-09-02 08:37:40'),
(135, 'data_rows', 'display_name', 370, 'kz', 'Ссылка (url адрес)', '2021-09-02 08:37:40', '2021-09-02 08:37:40'),
(136, 'data_rows', 'display_name', 371, 'kz', 'Event Id', '2021-09-02 08:37:40', '2021-09-02 08:37:40'),
(137, 'data_rows', 'display_name', 372, 'kz', 'Статус', '2021-09-02 08:37:40', '2021-09-02 08:37:40'),
(138, 'data_rows', 'display_name', 373, 'kz', 'Порядковый номер', '2021-09-02 08:37:40', '2021-09-02 08:37:40'),
(139, 'data_rows', 'display_name', 374, 'kz', 'events', '2021-09-02 08:37:40', '2021-09-02 08:37:40'),
(140, 'data_rows', 'display_name', 282, 'kz', 'Id', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(141, 'data_rows', 'display_name', 283, 'kz', 'Title', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(142, 'data_rows', 'display_name', 284, 'kz', 'Slug', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(143, 'data_rows', 'display_name', 360, 'kz', 'Category Id', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(144, 'data_rows', 'display_name', 291, 'kz', 'Image', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(145, 'data_rows', 'display_name', 361, 'kz', 'Thumb', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(146, 'data_rows', 'display_name', 362, 'kz', 'Excerpt', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(147, 'data_rows', 'display_name', 294, 'kz', 'Content', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(148, 'data_rows', 'display_name', 368, 'en', 'Planned At', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(149, 'data_rows', 'display_name', 363, 'kz', 'Status', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(150, 'data_rows', 'display_name', 364, 'kz', 'Seo Title', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(151, 'data_rows', 'display_name', 365, 'kz', 'Meta Keywords', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(152, 'data_rows', 'display_name', 366, 'kz', 'Meta Description', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(153, 'data_rows', 'display_name', 295, 'kz', 'Created At', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(154, 'data_rows', 'display_name', 296, 'kz', 'Updated At', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(155, 'data_rows', 'display_name', 367, 'kz', 'categories', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(156, 'data_types', 'display_name_singular', 35, 'kz', 'Мероприятие', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(157, 'data_types', 'display_name_plural', 35, 'kz', 'Мероприятия', '2021-09-02 14:19:31', '2021-09-02 14:19:31'),
(158, 'data_rows', 'display_name', 375, 'en', 'Файлы', '2021-09-02 14:23:40', '2021-09-02 14:23:40'),
(159, 'data_rows', 'display_name', 368, 'kz', 'Planned At', '2021-09-02 14:23:40', '2021-09-02 14:23:40'),
(160, 'data_rows', 'display_name', 297, 'en', 'Id', '2021-09-08 06:47:03', '2021-09-08 06:47:03'),
(161, 'data_rows', 'display_name', 298, 'en', 'Title', '2021-09-08 06:47:03', '2021-09-08 06:47:03'),
(162, 'data_rows', 'display_name', 299, 'en', 'Slug', '2021-09-08 06:47:03', '2021-09-08 06:47:03'),
(163, 'data_rows', 'display_name', 300, 'en', 'Image', '2021-09-08 06:47:03', '2021-09-08 06:47:03'),
(164, 'data_rows', 'display_name', 302, 'en', 'Created At', '2021-09-08 06:47:03', '2021-09-08 06:47:03'),
(165, 'data_rows', 'display_name', 303, 'en', 'Updated At', '2021-09-08 06:47:03', '2021-09-08 06:47:03'),
(166, 'data_types', 'display_name_singular', 36, 'en', 'Фотография', '2021-09-08 06:47:03', '2021-09-08 06:47:03'),
(167, 'data_types', 'display_name_plural', 36, 'en', 'Фотографии', '2021-09-08 06:47:03', '2021-09-08 06:47:03'),
(168, 'data_rows', 'display_name', 297, 'kz', 'Id', '2021-09-08 06:48:13', '2021-09-08 06:48:13'),
(169, 'data_rows', 'display_name', 298, 'kz', 'Title', '2021-09-08 06:48:13', '2021-09-08 06:48:13'),
(170, 'data_rows', 'display_name', 299, 'kz', 'Slug', '2021-09-08 06:48:13', '2021-09-08 06:48:13'),
(171, 'data_rows', 'display_name', 300, 'kz', 'Image', '2021-09-08 06:48:13', '2021-09-08 06:48:13'),
(172, 'data_rows', 'display_name', 376, 'en', 'Фотографии', '2021-09-08 06:48:14', '2021-09-08 06:48:14'),
(173, 'data_rows', 'display_name', 377, 'en', 'Контент', '2021-09-08 06:48:14', '2021-09-08 06:48:14'),
(174, 'data_rows', 'display_name', 378, 'en', 'Event Id', '2021-09-08 06:48:14', '2021-09-08 06:48:14'),
(175, 'data_rows', 'display_name', 379, 'en', 'SEO Заголовок', '2021-09-08 06:48:14', '2021-09-08 06:48:14'),
(176, 'data_rows', 'display_name', 380, 'en', 'Meta Описание', '2021-09-08 06:48:14', '2021-09-08 06:48:14'),
(177, 'data_rows', 'display_name', 381, 'en', 'Meta Ключевые слова', '2021-09-08 06:48:14', '2021-09-08 06:48:14'),
(178, 'data_rows', 'display_name', 382, 'en', 'Статус', '2021-09-08 06:48:14', '2021-09-08 06:48:14'),
(179, 'data_rows', 'display_name', 302, 'kz', 'Created At', '2021-09-08 06:48:14', '2021-09-08 06:48:14'),
(180, 'data_rows', 'display_name', 303, 'kz', 'Updated At', '2021-09-08 06:48:14', '2021-09-08 06:48:14'),
(181, 'data_rows', 'display_name', 383, 'en', 'events', '2021-09-08 06:48:14', '2021-09-08 06:48:14'),
(182, 'data_types', 'display_name_singular', 36, 'kz', 'Фотография', '2021-09-08 06:48:14', '2021-09-08 06:48:14'),
(183, 'data_types', 'display_name_plural', 36, 'kz', 'Фотографии', '2021-09-08 06:48:14', '2021-09-08 06:48:14'),
(184, 'data_rows', 'display_name', 304, 'en', 'Id', '2021-09-08 06:52:25', '2021-09-08 06:52:25'),
(185, 'data_rows', 'display_name', 305, 'en', 'Title', '2021-09-08 06:52:25', '2021-09-08 06:52:25'),
(186, 'data_rows', 'display_name', 306, 'en', 'Slug', '2021-09-08 06:52:25', '2021-09-08 06:52:25'),
(187, 'data_rows', 'display_name', 307, 'en', 'Image', '2021-09-08 06:52:25', '2021-09-08 06:52:25'),
(188, 'data_rows', 'display_name', 309, 'en', 'Created At', '2021-09-08 06:52:25', '2021-09-08 06:52:25'),
(189, 'data_rows', 'display_name', 310, 'en', 'Updated At', '2021-09-08 06:52:25', '2021-09-08 06:52:25'),
(190, 'data_types', 'display_name_singular', 40, 'en', 'Видео', '2021-09-08 06:52:25', '2021-09-08 06:52:25'),
(191, 'data_types', 'display_name_plural', 40, 'en', 'Видео', '2021-09-08 06:52:25', '2021-09-08 06:52:25');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'info@menmedia.kz', 'users/default.png', NULL, '$2y$10$bV4oWdkFDTwdlBdrbdCjNeVIEoEF4/E0zvwlycF39sBOE11UZI2Wa', 'nJQsNxr7j7ePGA4iHf52acVG3I3vgBFrVzyQXlRkDesS438ZJl6UgzYqYYZF', '{\"locale\":\"ru\"}', '2021-05-18 05:39:39', '2021-05-18 09:40:38');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videos` longtext COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `event_id` int(10) UNSIGNED DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `videos`
--

INSERT INTO `videos` (`id`, `title`, `slug`, `image`, `videos`, `content`, `event_id`, `seo_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Пресс-конференция на тему: ”О привлечении иностранных инвестиций”', 'press-konferenciya-na-temu-o-privlechenii-inostrannyh-investicij', 'videos\\August2021\\04S6VFDnX7kPfFYNyJr3.jpg', 'https://www.youtube.com/watch?v=_4kHxtiuML0\r\nhttps://www.youtube.com/watch?v=hlANal2_tsc\r\nhttps://www.youtube.com/watch?v=YPHn4xSvjNM\r\nhttps://www.youtube.com/watch?v=FVue6P2VoTc', '', 3, '', '', '', 1, '2021-08-31 08:12:21', '2021-08-31 08:12:21'),
(2, '30. март Event Arena - Система онлайн-покупки зарубежных жилых людей', '30-mart-event-arena-sistema-onlajn-pokupki-zarubezhnyh-zhilyh-lyudej', 'videos\\August2021\\B6taVFHUvS7WpjjGPAP4.jpg', 'https://www.youtube.com/watch?v=_4kHxtiuML0\r\nhttps://www.youtube.com/watch?v=hlANal2_tsc\r\nhttps://www.youtube.com/watch?v=YPHn4xSvjNM\r\nhttps://www.youtube.com/watch?v=FVue6P2VoTc', '', 3, '', '', '', 1, '2021-08-31 08:13:03', '2021-08-31 08:13:03'),
(3, '1 апрель Digital Almaty Forum 2021 | Управление финансовыми пассивами общества', '1-aprel-digital-almaty-forum-2021-upravlenie-finansovymi-passivami-obshestva', 'videos\\August2021\\SFPFdG9rCd8yNQNKIc4K.jpg', 'https://www.youtube.com/watch?v=_4kHxtiuML0\r\nhttps://www.youtube.com/watch?v=hlANal2_tsc\r\nhttps://www.youtube.com/watch?v=YPHn4xSvjNM\r\nhttps://www.youtube.com/watch?v=FVue6P2VoTc', '', 3, '', '', '', 1, '2021-08-31 08:12:21', '2021-08-31 08:12:21'),
(4, '15. апрель Памятные мероприятия в день...', '15-aprel-pamyatnye-meropriyatiya-v-den', 'videos\\August2021\\fQyzhcCeWKr8cw8cY7Ri.jpg', 'https://www.youtube.com/watch?v=_4kHxtiuML0\r\nhttps://www.youtube.com/watch?v=hlANal2_tsc\r\nhttps://www.youtube.com/watch?v=YPHn4xSvjNM\r\nhttps://www.youtube.com/watch?v=FVue6P2VoTc', '', 3, '', '', '', 1, '2021-08-31 08:13:03', '2021-08-31 08:13:03'),
(5, 'Пресс-конференция на тему: ”О привлечении иностранных инвестиций”', 'press-konferenciya-na-temu-o-privlechenii-inostrannyh-investicij-2', 'videos\\August2021\\9kXQdBU3m9g6OSjf3E2o.jpg', 'https://www.youtube.com/watch?v=_4kHxtiuML0\r\nhttps://www.youtube.com/watch?v=hlANal2_tsc\r\nhttps://www.youtube.com/watch?v=YPHn4xSvjNM\r\nhttps://www.youtube.com/watch?v=FVue6P2VoTc', '', 3, '', '', '', 1, '2021-08-31 08:13:03', '2021-08-31 08:13:03'),
(6, '30. март Event Arena - Система онлайн-покупки зарубежных жилых людей', '30-mart-event-arena-sistema-onlajn-pokupki-zarubezhnyh-zhilyh-lyudej-2', 'videos\\August2021\\9kXQdBU3m9g6OSjf3E2o.jpg', 'https://www.youtube.com/watch?v=_4kHxtiuML0\r\nhttps://www.youtube.com/watch?v=hlANal2_tsc\r\nhttps://www.youtube.com/watch?v=YPHn4xSvjNM\r\nhttps://www.youtube.com/watch?v=FVue6P2VoTc', '', 3, '', '', '', 1, '2021-08-31 08:13:03', '2021-08-31 08:13:03'),
(7, '1 апрель Digital Almaty Forum 2021 | Управление финансовыми пассивами общества', '1-aprel-digital-almaty-forum-2021-upravlenie-finansovymi-passivami-obshestva-2', 'videos\\August2021\\SV4jk0jBY39mZv9B8Nm8.jpg', 'https://www.youtube.com/watch?v=_4kHxtiuML0\r\nhttps://www.youtube.com/watch?v=hlANal2_tsc\r\nhttps://www.youtube.com/watch?v=YPHn4xSvjNM\r\nhttps://www.youtube.com/watch?v=FVue6P2VoTc', '', 3, '', '', '', 1, '2021-08-31 08:13:03', '2021-08-31 08:13:03'),
(8, '15. апрель Памятные мероприятия в день...', '15-aprel-pamyatnye-meropriyatiya-v-den-2', 'videos\\August2021\\95CsYk4TqdQYmEQ8I8yd.jpg', 'https://www.youtube.com/watch?v=_4kHxtiuML0\r\nhttps://www.youtube.com/watch?v=hlANal2_tsc\r\nhttps://www.youtube.com/watch?v=YPHn4xSvjNM\r\nhttps://www.youtube.com/watch?v=FVue6P2VoTc', '', 3, '', '', '', 1, '2021-08-31 08:13:03', '2021-08-31 08:13:03');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `anons`
--
ALTER TABLE `anons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `anons_slug_unique` (`slug`);

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`);

--
-- Индексы таблицы `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_slug_unique` (`slug`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photos_slug_unique` (`slug`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Индексы таблицы `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `videos_slug_unique` (`slug`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `anons`
--
ALTER TABLE `anons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
