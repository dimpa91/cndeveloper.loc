-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Час створення: Сер 13 2018 р., 11:55
-- Версія сервера: 5.6.31
-- Версія PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `nin2`
--

-- --------------------------------------------------------

--
-- Структура таблиці `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-12 21:02:24', '2018-08-12 18:02:24', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://cndeveloper.loc', 'yes'),
(2, 'home', 'http://cndeveloper.loc', 'yes'),
(3, 'blogname', 'Ninjstest', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dimpa91@rambler.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:177:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"movies/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"movies/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"movies/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"movies/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"movies/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"movies/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"movies/([^/]+)/embed/?$\";s:39:\"index.php?movies=$matches[1]&embed=true\";s:27:\"movies/([^/]+)/trackback/?$\";s:33:\"index.php?movies=$matches[1]&tb=1\";s:35:\"movies/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?movies=$matches[1]&paged=$matches[2]\";s:42:\"movies/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?movies=$matches[1]&cpage=$matches[2]\";s:32:\"movies/([^/]+)/wc-api(/(.*))?/?$\";s:47:\"index.php?movies=$matches[1]&wc-api=$matches[3]\";s:38:\"movies/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:49:\"movies/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:31:\"movies/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?movies=$matches[1]&page=$matches[2]\";s:23:\"movies/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"movies/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"movies/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"movies/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"movies/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"movies/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:3;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', '', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'cron', 'a:14:{i:1534151068;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1534153016;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1534161984;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1534183344;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1534183347;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534183468;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534183584;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534183594;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534183745;a:1:{s:26:\"importer_scheduled_cleanup\";a:1:{s:32:\"60fda3b54003017dc64a0c492471bbfe\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:8;}}}}i:1534184614;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534194000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1534194384;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536019200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1534097367;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(119, 'can_compress_scripts', '1', 'no'),
(143, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"dimpa91@rambler.ru\";s:7:\"version\";s:6:\"4.7.11\";s:9:\"timestamp\";i:1534097017;}', 'no'),
(148, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(149, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(150, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(151, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'recently_activated', 'a:3:{s:25:\"duplicator/duplicator.php\";i:1534150467;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:1534150467;s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";i:1534150467;}', 'yes'),
(165, 'woocommerce_store_address', 'Адрес', 'yes'),
(166, 'woocommerce_store_address_2', 'Адрес', 'yes'),
(167, 'woocommerce_store_city', 'Адрес', 'yes'),
(168, 'woocommerce_default_country', 'GB:*', 'yes'),
(169, 'woocommerce_store_postcode', '123456', 'yes'),
(170, 'woocommerce_allowed_countries', 'all', 'yes'),
(171, 'woocommerce_all_except_countries', '', 'yes'),
(172, 'woocommerce_specific_allowed_countries', '', 'yes'),
(173, 'woocommerce_ship_to_countries', '', 'yes'),
(174, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(175, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(176, 'woocommerce_calc_taxes', 'no', 'yes'),
(177, 'woocommerce_enable_coupons', 'yes', 'yes'),
(178, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(179, 'woocommerce_currency', 'GBP', 'yes'),
(180, 'woocommerce_currency_pos', 'left', 'yes'),
(181, 'woocommerce_price_thousand_sep', ',', 'yes'),
(182, 'woocommerce_price_decimal_sep', '.', 'yes'),
(183, 'woocommerce_price_num_decimals', '2', 'yes'),
(184, 'woocommerce_shop_page_id', '4', 'yes'),
(185, 'woocommerce_cart_redirect_after_add', 'yes', 'yes'),
(186, 'woocommerce_enable_ajax_add_to_cart', 'no', 'yes'),
(187, 'woocommerce_weight_unit', 'kg', 'yes'),
(188, 'woocommerce_dimension_unit', 'cm', 'yes'),
(189, 'woocommerce_enable_reviews', 'yes', 'yes'),
(190, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(191, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(192, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(193, 'woocommerce_review_rating_required', 'yes', 'no'),
(194, 'woocommerce_manage_stock', 'yes', 'yes'),
(195, 'woocommerce_hold_stock_minutes', '60', 'no'),
(196, 'woocommerce_notify_low_stock', 'yes', 'no'),
(197, 'woocommerce_notify_no_stock', 'yes', 'no'),
(198, 'woocommerce_stock_email_recipient', 'dimpa91@rambler.ru', 'no'),
(199, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(200, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(201, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(202, 'woocommerce_stock_format', '', 'yes'),
(203, 'woocommerce_file_download_method', 'force', 'no'),
(204, 'woocommerce_downloads_require_login', 'no', 'no'),
(205, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(206, 'woocommerce_prices_include_tax', 'no', 'yes'),
(207, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(208, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(209, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(210, 'woocommerce_tax_classes', 'Пониженная ставка\r\nНулевая ставка', 'yes'),
(211, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(212, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(213, 'woocommerce_price_display_suffix', '', 'yes'),
(214, 'woocommerce_tax_total_display', 'itemized', 'no'),
(215, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(216, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(217, 'woocommerce_ship_to_destination', 'billing', 'no'),
(218, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(219, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(220, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(221, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(222, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(223, 'woocommerce_registration_generate_username', 'yes', 'no'),
(224, 'woocommerce_registration_generate_password', 'yes', 'no'),
(225, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(226, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(227, 'wp_page_for_privacy_policy', '', 'yes'),
(228, 'woocommerce_registration_privacy_policy_text', 'Ваши личные данные будут использоваться для упрощения вашей работы с сайтом, управления доступом к вашей учётной записи и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(229, 'woocommerce_checkout_privacy_policy_text', 'Ваши личные данные будут использоваться для обработки ваших заказов, упрощения вашей работы с сайтом и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(230, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(231, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(232, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(233, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(234, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(235, 'woocommerce_email_from_name', 'Ninjstest', 'no'),
(236, 'woocommerce_email_from_address', 'dimpa91@rambler.ru', 'no'),
(237, 'woocommerce_email_header_image', '', 'no'),
(238, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(239, 'woocommerce_email_base_color', '#96588a', 'no'),
(240, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(241, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(242, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(243, 'woocommerce_cart_page_id', '5', 'yes'),
(244, 'woocommerce_checkout_page_id', '6', 'yes'),
(245, 'woocommerce_myaccount_page_id', '7', 'yes'),
(246, 'woocommerce_terms_page_id', '', 'no'),
(247, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(248, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(249, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(250, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(251, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(252, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(253, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(254, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(255, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(256, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(257, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(258, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(259, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(260, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(261, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(262, 'woocommerce_api_enabled', 'no', 'yes'),
(263, 'woocommerce_single_image_width', '600', 'yes'),
(264, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(265, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(266, 'woocommerce_demo_store', 'no', 'no'),
(267, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(268, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(269, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(272, 'default_product_cat', '15', 'yes'),
(275, 'woocommerce_version', '3.4.4', 'yes'),
(276, 'woocommerce_db_version', '3.4.4', 'yes'),
(277, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(279, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(300, 'woocommerce_product_type', 'both', 'yes'),
(301, 'woocommerce_allow_tracking', 'yes', 'yes'),
(303, 'woocommerce_tracker_last_send', '1534097291', 'yes'),
(305, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:14:\"create_account\";b:0;s:5:\"email\";s:18:\"dimpa91@rambler.ru\";}', 'yes'),
(307, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:18:\"dimpa91@rambler.ru\";}', 'yes'),
(308, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(309, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(310, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(311, 'wc_ppec_version', '1.6.1', 'yes'),
(318, 'wc_stripe_version', '4.1.8', 'yes'),
(320, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:25:\"Единая ставка\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:1:\"1\";}', 'yes'),
(321, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:25:\"Единая ставка\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:1:\"1\";}', 'yes'),
(333, 'product_cat_children', 'a:2:{i:16;a:2:{i:0;i:17;i:1;i:18;}i:20;a:2:{i:0;i:21;i:1;i:22;}}', 'yes'),
(336, 'current_theme', '2017 Child', 'yes'),
(337, 'theme_mods_twentyseventeen-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:26;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(338, 'theme_switched', '', 'yes'),
(339, 'woocommerce_maybe_regenerate_images_hash', '494bdb3708d5a8a5b3be00abab75910e', 'yes'),
(380, 'wc_stripe_show_keys_notice', 'no', 'yes'),
(381, 'wc_stripe_show_ssl_notice', 'no', 'yes'),
(394, 'new_admin_email', 'dimpa91@rambler.ru', 'yes'),
(423, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(426, 'woocommerce_gateway_stripe_retention', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(482, 'duplicator_exe_safe_mode', '0', 'yes'),
(483, '_transient_timeout_external_ip_address_127.0.0.1', '1534755197', 'no'),
(484, '_transient_external_ip_address_127.0.0.1', '5.53.116.10', 'no'),
(485, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(486, '_transient_wc_attribute_taxonomies', 'a:1:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(487, 'woocommerce_tracker_ua', 'a:1:{i:0;s:115:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/68.0.3440.106 safari/537.36\";}', 'yes'),
(489, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(490, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1534150406;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(491, '_transient_timeout__woocommerce_helper_subscriptions', '1534151306', 'no'),
(492, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(493, '_site_transient_timeout_theme_roots', '1534152206', 'no'),
(494, '_site_transient_theme_roots', 'a:2:{s:21:\"twentyseventeen-child\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no'),
(495, '_transient_timeout__woocommerce_helper_updates', '1534193606', 'no'),
(496, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1534150406;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(497, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1534150457;s:7:\"checked\";a:4:{s:25:\"duplicator/duplicator.php\";s:6:\"1.2.40\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.4\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.6.1\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:5:\"4.1.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.2.40\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.2.40.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=1298463\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=1298463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=1645055\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1900204\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1900204\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/woocommerce-gateway-stripe\";s:4:\"slug\";s:26:\"woocommerce-gateway-stripe\";s:6:\"plugin\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woocommerce-gateway-stripe/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=1917495\";s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=1917495\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=1917495\";s:2:\"1x\";s:81:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=1917495\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(498, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1534150408;s:7:\"checked\";a:2:{s:21:\"twentyseventeen-child\";s:0:\"\";s:15:\"twentyseventeen\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(499, '_transient_shipping-transient-version', '1534150416', 'yes'),
(503, '_transient_timeout_wc_shipping_method_count_1_1534150416', '1536742449', 'no'),
(504, '_transient_wc_shipping_method_count_1_1534150416', '2', 'no'),
(505, '_transient_timeout_plugin_slugs', '1534236884', 'no'),
(506, '_transient_plugin_slugs', 'a:1:{i:0;s:27:\"woocommerce/woocommerce.php\";}', 'no'),
(508, '_transient_product-transient-version', '1534150504', 'yes'),
(509, '_transient_timeout_wc_product_children_19', '1536742504', 'no'),
(510, '_transient_wc_product_children_19', 'a:2:{s:3:\"all\";a:2:{i:0;i:82;i:1;i:83;}s:7:\"visible\";a:2:{i:0;i:82;i:1;i:83;}}', 'no'),
(511, '_transient_timeout_wc_var_prices_19', '1536742504', 'no'),
(512, '_transient_wc_var_prices_19', '{\"version\":\"1534150504\",\"388c3f77f93a91171efb6646da5e63d7\":{\"price\":{\"82\":\"20.00\",\"83\":\"20.00\"},\"regular_price\":{\"82\":\"20.00\",\"83\":\"20.00\"},\"sale_price\":{\"82\":\"20.00\",\"83\":\"20.00\"}}}', 'no'),
(513, '_transient_timeout_wc_product_children_20', '1536742504', 'no'),
(514, '_transient_wc_product_children_20', 'a:2:{s:3:\"all\";a:2:{i:0;i:69;i:1;i:70;}s:7:\"visible\";a:2:{i:0;i:69;i:1;i:70;}}', 'no'),
(515, '_transient_timeout_wc_var_prices_20', '1536742504', 'no'),
(516, '_transient_wc_var_prices_20', '{\"version\":\"1534150504\",\"388c3f77f93a91171efb6646da5e63d7\":{\"price\":{\"69\":\"30.00\",\"70\":\"35.00\"},\"regular_price\":{\"69\":\"35.00\",\"70\":\"35.00\"},\"sale_price\":{\"69\":\"30.00\",\"70\":\"35.00\"}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_wp_attached_file', '2018/08/dummy-data.csv'),
(3, 8, '_wp_attachment_context', 'import'),
(4, 9, '_sku', 'WOO-SINGLE-1'),
(5, 9, '_regular_price', '3'),
(6, 9, '_sale_price', ''),
(7, 9, '_sale_price_dates_from', ''),
(8, 9, '_sale_price_dates_to', ''),
(9, 9, 'total_sales', '0'),
(10, 9, '_tax_status', 'taxable'),
(11, 9, '_tax_class', ''),
(12, 9, '_manage_stock', 'no'),
(13, 9, '_backorders', 'no'),
(14, 9, '_sold_individually', 'no'),
(15, 9, '_weight', ''),
(16, 9, '_length', ''),
(17, 9, '_width', ''),
(18, 9, '_height', ''),
(19, 9, '_upsell_ids', 'a:0:{}'),
(20, 9, '_crosssell_ids', 'a:0:{}'),
(21, 9, '_purchase_note', ''),
(22, 9, '_default_attributes', 'a:0:{}'),
(23, 9, '_virtual', 'yes'),
(24, 9, '_downloadable', 'yes'),
(25, 9, '_product_image_gallery', '28'),
(26, 9, '_download_limit', '-1'),
(27, 9, '_download_expiry', '-1'),
(28, 9, '_stock', NULL),
(29, 9, '_stock_status', 'instock'),
(30, 9, '_wc_average_rating', '0'),
(31, 9, '_wc_rating_count', 'a:0:{}'),
(32, 9, '_wc_review_count', '0'),
(33, 9, '_downloadable_files', 'a:1:{s:36:\"20e82e7a-b9e5-4ae2-a5f7-e3dceadf15c1\";a:3:{s:2:\"id\";s:36:\"20e82e7a-b9e5-4ae2-a5f7-e3dceadf15c1\";s:4:\"name\";s:7:\"Song #1\";s:4:\"file\";s:64:\"https://woocommerce.files.wordpress.com/2017/06/woo-single-1.ogg\";}}'),
(34, 9, '_product_attributes', 'a:0:{}'),
(35, 9, '_product_version', '3.4.4'),
(36, 9, '_price', '3'),
(37, 10, '_sku', 'WOO-SINGLE-2'),
(38, 10, '_regular_price', '3'),
(39, 10, '_sale_price', '2'),
(40, 10, '_sale_price_dates_from', ''),
(41, 10, '_sale_price_dates_to', ''),
(42, 10, 'total_sales', '0'),
(43, 10, '_tax_status', 'taxable'),
(44, 10, '_tax_class', ''),
(45, 10, '_manage_stock', 'no'),
(46, 10, '_backorders', 'no'),
(47, 10, '_sold_individually', 'no'),
(48, 10, '_weight', ''),
(49, 10, '_length', ''),
(50, 10, '_width', ''),
(51, 10, '_height', ''),
(52, 10, '_upsell_ids', 'a:0:{}'),
(53, 10, '_crosssell_ids', 'a:0:{}'),
(54, 10, '_purchase_note', ''),
(55, 10, '_default_attributes', 'a:0:{}'),
(56, 10, '_virtual', 'yes'),
(57, 10, '_downloadable', 'yes'),
(58, 10, '_product_image_gallery', '26'),
(59, 10, '_download_limit', '10'),
(60, 10, '_download_expiry', '90'),
(61, 10, '_stock', NULL),
(62, 10, '_stock_status', 'instock'),
(63, 10, '_wc_average_rating', '0'),
(64, 10, '_wc_rating_count', 'a:0:{}'),
(65, 10, '_wc_review_count', '0'),
(66, 10, '_downloadable_files', 'a:1:{s:36:\"fb58b5b0-11c8-416e-8c40-563a93151f1d\";a:3:{s:2:\"id\";s:36:\"fb58b5b0-11c8-416e-8c40-563a93151f1d\";s:4:\"name\";s:7:\"Song #2\";s:4:\"file\";s:64:\"https://woocommerce.files.wordpress.com/2017/06/woo-single-2.ogg\";}}'),
(67, 10, '_product_attributes', 'a:0:{}'),
(68, 10, '_product_version', '3.4.4'),
(69, 10, '_price', '2'),
(70, 11, '_sku', 'WOO-ALBUM-1'),
(71, 11, '_regular_price', '9'),
(72, 11, '_sale_price', ''),
(73, 11, '_sale_price_dates_from', ''),
(74, 11, '_sale_price_dates_to', ''),
(75, 11, 'total_sales', '0'),
(76, 11, '_tax_status', 'taxable'),
(77, 11, '_tax_class', ''),
(78, 11, '_manage_stock', 'no'),
(79, 11, '_backorders', 'no'),
(80, 11, '_sold_individually', 'no'),
(81, 11, '_weight', ''),
(82, 11, '_length', ''),
(83, 11, '_width', ''),
(84, 11, '_height', ''),
(85, 11, '_upsell_ids', 'a:0:{}'),
(86, 11, '_crosssell_ids', 'a:0:{}'),
(87, 11, '_purchase_note', ''),
(88, 11, '_default_attributes', 'a:0:{}'),
(89, 11, '_virtual', 'yes'),
(90, 11, '_downloadable', 'no'),
(91, 11, '_product_image_gallery', '38'),
(92, 11, '_download_limit', '0'),
(93, 11, '_download_expiry', '0'),
(94, 11, '_stock', NULL),
(95, 11, '_stock_status', 'instock'),
(96, 11, '_wc_average_rating', '0'),
(97, 11, '_wc_rating_count', 'a:0:{}'),
(98, 11, '_wc_review_count', '0'),
(99, 11, '_downloadable_files', 'a:0:{}'),
(100, 11, '_product_attributes', 'a:0:{}'),
(101, 11, '_product_version', '3.4.4'),
(102, 11, '_price', '9'),
(103, 12, '_sku', 'WOO-ALBUM-2'),
(104, 12, '_regular_price', '9'),
(105, 12, '_sale_price', ''),
(106, 12, '_sale_price_dates_from', ''),
(107, 12, '_sale_price_dates_to', ''),
(108, 12, 'total_sales', '0'),
(109, 12, '_tax_status', 'taxable'),
(110, 12, '_tax_class', ''),
(111, 12, '_manage_stock', 'no'),
(112, 12, '_backorders', 'no'),
(113, 12, '_sold_individually', 'no'),
(114, 12, '_weight', ''),
(115, 12, '_length', ''),
(116, 12, '_width', ''),
(117, 12, '_height', ''),
(118, 12, '_upsell_ids', 'a:0:{}'),
(119, 12, '_crosssell_ids', 'a:0:{}'),
(120, 12, '_purchase_note', ''),
(121, 12, '_default_attributes', 'a:0:{}'),
(122, 12, '_virtual', 'yes'),
(123, 12, '_downloadable', 'no'),
(124, 12, '_product_image_gallery', '36'),
(125, 12, '_download_limit', '0'),
(126, 12, '_download_expiry', '0'),
(127, 12, '_stock', NULL),
(128, 12, '_stock_status', 'instock'),
(129, 12, '_wc_average_rating', '0'),
(130, 12, '_wc_rating_count', 'a:0:{}'),
(131, 12, '_wc_review_count', '0'),
(132, 12, '_downloadable_files', 'a:0:{}'),
(133, 12, '_product_attributes', 'a:0:{}'),
(134, 12, '_product_version', '3.4.4'),
(135, 12, '_price', '9'),
(136, 13, '_sku', 'WOO-ALBUM-3'),
(137, 13, '_regular_price', '9'),
(138, 13, '_sale_price', ''),
(139, 13, '_sale_price_dates_from', ''),
(140, 13, '_sale_price_dates_to', ''),
(141, 13, 'total_sales', '0'),
(142, 13, '_tax_status', 'taxable'),
(143, 13, '_tax_class', ''),
(144, 13, '_manage_stock', 'no'),
(145, 13, '_backorders', 'no'),
(146, 13, '_sold_individually', 'no'),
(147, 13, '_weight', ''),
(148, 13, '_length', ''),
(149, 13, '_width', ''),
(150, 13, '_height', ''),
(151, 13, '_upsell_ids', 'a:0:{}'),
(152, 13, '_crosssell_ids', 'a:0:{}'),
(153, 13, '_purchase_note', ''),
(154, 13, '_default_attributes', 'a:0:{}'),
(155, 13, '_virtual', 'yes'),
(156, 13, '_downloadable', 'no'),
(157, 13, '_product_image_gallery', '34'),
(158, 13, '_download_limit', '0'),
(159, 13, '_download_expiry', '0'),
(160, 13, '_stock', NULL),
(161, 13, '_stock_status', 'instock'),
(162, 13, '_wc_average_rating', '0'),
(163, 13, '_wc_rating_count', 'a:0:{}'),
(164, 13, '_wc_review_count', '0'),
(165, 13, '_downloadable_files', 'a:0:{}'),
(166, 13, '_product_attributes', 'a:0:{}'),
(167, 13, '_product_version', '3.4.4'),
(168, 13, '_price', '9'),
(169, 14, '_sku', 'T-SHIRT-WOO-LOGO'),
(170, 14, '_regular_price', '20'),
(171, 14, '_sale_price', '18'),
(172, 14, '_sale_price_dates_from', ''),
(173, 14, '_sale_price_dates_to', ''),
(174, 14, 'total_sales', '0'),
(175, 14, '_tax_status', 'taxable'),
(176, 14, '_tax_class', ''),
(177, 14, '_manage_stock', 'yes'),
(178, 14, '_backorders', 'no'),
(179, 14, '_sold_individually', 'no'),
(180, 14, '_weight', ''),
(181, 14, '_length', ''),
(182, 14, '_width', ''),
(183, 14, '_height', ''),
(184, 14, '_upsell_ids', 'a:1:{i:0;i:15;}'),
(185, 14, '_crosssell_ids', 'a:0:{}'),
(186, 14, '_purchase_note', ''),
(187, 14, '_default_attributes', 'a:0:{}'),
(188, 14, '_virtual', 'no'),
(189, 14, '_downloadable', 'no'),
(190, 14, '_product_image_gallery', '87'),
(191, 14, '_download_limit', '0'),
(192, 14, '_download_expiry', '0'),
(193, 14, '_stock', '5'),
(194, 14, '_stock_status', 'instock'),
(195, 14, '_wc_average_rating', '0'),
(196, 14, '_wc_rating_count', 'a:0:{}'),
(197, 14, '_wc_review_count', '0'),
(198, 14, '_downloadable_files', 'a:0:{}'),
(199, 14, '_product_attributes', 'a:0:{}'),
(200, 14, '_product_version', '3.4.4'),
(201, 14, '_price', '18'),
(202, 15, '_sku', 'HOODIE-WOO-LOGO'),
(203, 15, '_regular_price', '35'),
(204, 15, '_sale_price', ''),
(205, 15, '_sale_price_dates_from', ''),
(206, 15, '_sale_price_dates_to', ''),
(207, 15, 'total_sales', '0'),
(208, 15, '_tax_status', 'taxable'),
(209, 15, '_tax_class', ''),
(210, 15, '_manage_stock', 'no'),
(211, 15, '_backorders', 'no'),
(212, 15, '_sold_individually', 'no'),
(213, 15, '_weight', ''),
(214, 15, '_length', ''),
(215, 15, '_width', ''),
(216, 15, '_height', ''),
(217, 15, '_upsell_ids', 'a:0:{}'),
(218, 15, '_crosssell_ids', 'a:1:{i:0;i:14;}'),
(219, 15, '_purchase_note', ''),
(220, 15, '_default_attributes', 'a:0:{}'),
(221, 15, '_virtual', 'no'),
(222, 15, '_downloadable', 'no'),
(223, 15, '_product_image_gallery', '55'),
(224, 15, '_download_limit', '0'),
(225, 15, '_download_expiry', '0'),
(226, 15, '_stock', NULL),
(227, 15, '_stock_status', 'instock'),
(228, 15, '_wc_average_rating', '0'),
(229, 15, '_wc_rating_count', 'a:0:{}'),
(230, 15, '_wc_review_count', '0'),
(231, 15, '_downloadable_files', 'a:0:{}'),
(232, 15, '_product_attributes', 'a:0:{}'),
(233, 15, '_product_version', '3.4.4'),
(234, 15, '_price', '35'),
(235, 16, '_sku', 'T-SHIRT-WOO-NINJA'),
(236, 16, '_regular_price', '20'),
(237, 16, '_sale_price', ''),
(238, 16, '_sale_price_dates_from', ''),
(239, 16, '_sale_price_dates_to', ''),
(240, 16, 'total_sales', '0'),
(241, 16, '_tax_status', 'taxable'),
(242, 16, '_tax_class', ''),
(243, 16, '_manage_stock', 'no'),
(244, 16, '_backorders', 'no'),
(245, 16, '_sold_individually', 'no'),
(246, 16, '_weight', ''),
(247, 16, '_length', ''),
(248, 16, '_width', ''),
(249, 16, '_height', ''),
(250, 16, '_upsell_ids', 'a:1:{i:0;i:17;}'),
(251, 16, '_crosssell_ids', 'a:2:{i:0;i:22;i:1;i:21;}'),
(252, 16, '_purchase_note', ''),
(253, 16, '_default_attributes', 'a:0:{}'),
(254, 16, '_virtual', 'no'),
(255, 16, '_downloadable', 'no'),
(256, 16, '_product_image_gallery', '74'),
(257, 16, '_download_limit', '0'),
(258, 16, '_download_expiry', '0'),
(259, 16, '_stock', NULL),
(260, 16, '_stock_status', 'instock'),
(261, 16, '_wc_average_rating', '0'),
(262, 16, '_wc_rating_count', 'a:0:{}'),
(263, 16, '_wc_review_count', '0'),
(264, 16, '_downloadable_files', 'a:0:{}'),
(265, 16, '_product_attributes', 'a:0:{}'),
(266, 16, '_product_version', '3.4.4'),
(267, 16, '_price', '20'),
(268, 17, '_sku', 'HOODIE-WOO-NINJA'),
(269, 17, '_regular_price', '35'),
(270, 17, '_sale_price', ''),
(271, 17, '_sale_price_dates_from', ''),
(272, 17, '_sale_price_dates_to', ''),
(273, 17, 'total_sales', '0'),
(274, 17, '_tax_status', 'taxable'),
(275, 17, '_tax_class', ''),
(276, 17, '_manage_stock', 'no'),
(277, 17, '_backorders', 'no'),
(278, 17, '_sold_individually', 'no'),
(279, 17, '_weight', ''),
(280, 17, '_length', ''),
(281, 17, '_width', ''),
(282, 17, '_height', ''),
(283, 17, '_upsell_ids', 'a:0:{}'),
(284, 17, '_crosssell_ids', 'a:1:{i:0;i:16;}'),
(285, 17, '_purchase_note', ''),
(286, 17, '_default_attributes', 'a:0:{}'),
(287, 17, '_virtual', 'no'),
(288, 17, '_downloadable', 'no'),
(289, 17, '_product_image_gallery', '64'),
(290, 17, '_download_limit', '0'),
(291, 17, '_download_expiry', '0'),
(292, 17, '_stock', NULL),
(293, 17, '_stock_status', 'instock'),
(294, 17, '_wc_average_rating', '0'),
(295, 17, '_wc_rating_count', 'a:0:{}'),
(296, 17, '_wc_review_count', '0'),
(297, 17, '_downloadable_files', 'a:0:{}'),
(298, 17, '_product_attributes', 'a:0:{}'),
(299, 17, '_product_version', '3.4.4'),
(300, 17, '_price', '35'),
(301, 18, '_sku', 'T-SHIRT-PREMIUM-QUALITY'),
(302, 18, '_regular_price', '20'),
(303, 18, '_sale_price', ''),
(304, 18, '_sale_price_dates_from', ''),
(305, 18, '_sale_price_dates_to', ''),
(306, 18, 'total_sales', '0'),
(307, 18, '_tax_status', 'taxable'),
(308, 18, '_tax_class', ''),
(309, 18, '_manage_stock', 'no'),
(310, 18, '_backorders', 'no'),
(311, 18, '_sold_individually', 'no'),
(312, 18, '_weight', ''),
(313, 18, '_length', ''),
(314, 18, '_width', ''),
(315, 18, '_height', ''),
(316, 18, '_upsell_ids', 'a:0:{}'),
(317, 18, '_crosssell_ids', 'a:0:{}'),
(318, 18, '_purchase_note', ''),
(319, 18, '_default_attributes', 'a:0:{}'),
(320, 18, '_virtual', 'no'),
(321, 18, '_downloadable', 'no'),
(322, 18, '_product_image_gallery', '85'),
(323, 18, '_download_limit', '0'),
(324, 18, '_download_expiry', '0'),
(325, 18, '_stock', NULL),
(326, 18, '_stock_status', 'instock'),
(327, 18, '_wc_average_rating', '0'),
(328, 18, '_wc_rating_count', 'a:0:{}'),
(329, 18, '_wc_review_count', '0'),
(330, 18, '_downloadable_files', 'a:0:{}'),
(331, 18, '_product_attributes', 'a:0:{}'),
(332, 18, '_product_version', '3.4.4'),
(333, 18, '_price', '20'),
(334, 19, '_sku', 'T-SHIRT-SHIP-YOUR-IDEA'),
(337, 19, '_sale_price_dates_from', ''),
(338, 19, '_sale_price_dates_to', ''),
(339, 19, 'total_sales', '0'),
(340, 19, '_tax_status', 'taxable'),
(341, 19, '_tax_class', ''),
(342, 19, '_manage_stock', 'no'),
(343, 19, '_backorders', 'no'),
(344, 19, '_sold_individually', 'no'),
(345, 19, '_weight', ''),
(346, 19, '_length', ''),
(347, 19, '_width', ''),
(348, 19, '_height', ''),
(349, 19, '_upsell_ids', 'a:1:{i:0;i:20;}'),
(350, 19, '_crosssell_ids', 'a:0:{}'),
(351, 19, '_purchase_note', ''),
(352, 19, '_default_attributes', 'a:0:{}'),
(353, 19, '_virtual', 'no'),
(354, 19, '_downloadable', 'no'),
(355, 19, '_product_image_gallery', '78,79,80,81'),
(356, 19, '_download_limit', '0'),
(357, 19, '_download_expiry', '0'),
(358, 19, '_stock', NULL),
(359, 19, '_stock_status', 'instock'),
(360, 19, '_wc_average_rating', '0'),
(361, 19, '_wc_rating_count', 'a:0:{}'),
(362, 19, '_wc_review_count', '0'),
(363, 19, '_downloadable_files', 'a:0:{}'),
(364, 19, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(365, 19, '_product_version', '3.4.4'),
(367, 20, '_sku', 'HOODIE-SHIP-YOUR-IDEA'),
(370, 20, '_sale_price_dates_from', ''),
(371, 20, '_sale_price_dates_to', ''),
(372, 20, 'total_sales', '0'),
(373, 20, '_tax_status', 'taxable'),
(374, 20, '_tax_class', ''),
(375, 20, '_manage_stock', 'no'),
(376, 20, '_backorders', 'no'),
(377, 20, '_sold_individually', 'no'),
(378, 20, '_weight', ''),
(379, 20, '_length', ''),
(380, 20, '_width', ''),
(381, 20, '_height', ''),
(382, 20, '_upsell_ids', 'a:0:{}'),
(383, 20, '_crosssell_ids', 'a:1:{i:0;i:19;}'),
(384, 20, '_purchase_note', ''),
(385, 20, '_default_attributes', 'a:2:{s:8:\"pa_color\";s:5:\"black\";s:4:\"size\";s:1:\"L\";}'),
(386, 20, '_virtual', 'no'),
(387, 20, '_downloadable', 'no'),
(388, 20, '_product_image_gallery', '66,67,68'),
(389, 20, '_download_limit', '0'),
(390, 20, '_download_expiry', '0'),
(391, 20, '_stock', NULL),
(392, 20, '_stock_status', 'instock'),
(393, 20, '_wc_average_rating', '0'),
(394, 20, '_wc_rating_count', 'a:0:{}'),
(395, 20, '_wc_review_count', '0'),
(396, 20, '_downloadable_files', 'a:0:{}'),
(397, 20, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"size\";a:6:{s:4:\"name\";s:4:\"Size\";s:5:\"value\";s:6:\"L | XL\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(398, 20, '_product_version', '3.4.4'),
(400, 21, '_sku', 'T-SHIRT-NINJA-SILHOUETTE'),
(401, 21, '_regular_price', '20'),
(402, 21, '_sale_price', ''),
(403, 21, '_sale_price_dates_from', ''),
(404, 21, '_sale_price_dates_to', ''),
(405, 21, 'total_sales', '0'),
(406, 21, '_tax_status', 'taxable'),
(407, 21, '_tax_class', ''),
(408, 21, '_manage_stock', 'no'),
(409, 21, '_backorders', 'no'),
(410, 21, '_sold_individually', 'no'),
(411, 21, '_weight', ''),
(412, 21, '_length', ''),
(413, 21, '_width', ''),
(414, 21, '_height', ''),
(415, 21, '_upsell_ids', 'a:1:{i:0;i:24;}'),
(416, 21, '_crosssell_ids', 'a:2:{i:0;i:16;i:1;i:22;}'),
(417, 21, '_purchase_note', ''),
(418, 21, '_default_attributes', 'a:0:{}'),
(419, 21, '_virtual', 'no'),
(420, 21, '_downloadable', 'no'),
(421, 21, '_product_image_gallery', '76'),
(422, 21, '_download_limit', '0'),
(423, 21, '_download_expiry', '0'),
(424, 21, '_stock', NULL),
(425, 21, '_stock_status', 'instock'),
(426, 21, '_wc_average_rating', '0'),
(427, 21, '_wc_rating_count', 'a:0:{}'),
(428, 21, '_wc_review_count', '0'),
(429, 21, '_downloadable_files', 'a:0:{}'),
(430, 21, '_product_attributes', 'a:0:{}'),
(431, 21, '_product_version', '3.4.4'),
(432, 21, '_price', '20'),
(433, 22, '_sku', 'T-SHIRT-HAPPY-NINJA'),
(434, 22, '_regular_price', '18'),
(435, 22, '_sale_price', ''),
(436, 22, '_sale_price_dates_from', ''),
(437, 22, '_sale_price_dates_to', ''),
(438, 22, 'total_sales', '0'),
(439, 22, '_tax_status', 'taxable'),
(440, 22, '_tax_class', ''),
(441, 22, '_manage_stock', 'no'),
(442, 22, '_backorders', 'no'),
(443, 22, '_sold_individually', 'no'),
(444, 22, '_weight', ''),
(445, 22, '_length', ''),
(446, 22, '_width', ''),
(447, 22, '_height', ''),
(448, 22, '_upsell_ids', 'a:1:{i:0;i:23;}'),
(449, 22, '_crosssell_ids', 'a:2:{i:0;i:16;i:1;i:21;}'),
(450, 22, '_purchase_note', ''),
(451, 22, '_default_attributes', 'a:0:{}'),
(452, 22, '_virtual', 'no'),
(453, 22, '_downloadable', 'no'),
(454, 22, '_product_image_gallery', '72'),
(455, 22, '_download_limit', '0'),
(456, 22, '_download_expiry', '0'),
(457, 22, '_stock', NULL),
(458, 22, '_stock_status', 'instock'),
(459, 22, '_wc_average_rating', '0'),
(460, 22, '_wc_rating_count', 'a:0:{}'),
(461, 22, '_wc_review_count', '0'),
(462, 22, '_downloadable_files', 'a:0:{}'),
(463, 22, '_product_attributes', 'a:0:{}'),
(464, 22, '_product_version', '3.4.4'),
(465, 22, '_price', '18'),
(466, 23, '_sku', 'HOODIE-HAPPY-NINJA'),
(467, 23, '_regular_price', '35'),
(468, 23, '_sale_price', ''),
(469, 23, '_sale_price_dates_from', ''),
(470, 23, '_sale_price_dates_to', ''),
(471, 23, 'total_sales', '0'),
(472, 23, '_tax_status', 'taxable'),
(473, 23, '_tax_class', ''),
(474, 23, '_manage_stock', 'no'),
(475, 23, '_backorders', 'no'),
(476, 23, '_sold_individually', 'no'),
(477, 23, '_weight', ''),
(478, 23, '_length', ''),
(479, 23, '_width', ''),
(480, 23, '_height', ''),
(481, 23, '_upsell_ids', 'a:0:{}'),
(482, 23, '_crosssell_ids', 'a:1:{i:0;i:22;}'),
(483, 23, '_purchase_note', ''),
(484, 23, '_default_attributes', 'a:0:{}'),
(485, 23, '_virtual', 'no'),
(486, 23, '_downloadable', 'no'),
(487, 23, '_product_image_gallery', '59'),
(488, 23, '_download_limit', '0'),
(489, 23, '_download_expiry', '0'),
(490, 23, '_stock', NULL),
(491, 23, '_stock_status', 'instock'),
(492, 23, '_wc_average_rating', '0'),
(493, 23, '_wc_rating_count', 'a:0:{}'),
(494, 23, '_wc_review_count', '0'),
(495, 23, '_downloadable_files', 'a:0:{}'),
(496, 23, '_product_attributes', 'a:0:{}'),
(497, 23, '_product_version', '3.4.4'),
(498, 23, '_price', '35'),
(499, 24, '_sku', 'HOODIE-NINJA-SILHOUETTE'),
(500, 24, '_regular_price', '30'),
(501, 24, '_sale_price', ''),
(502, 24, '_sale_price_dates_from', ''),
(503, 24, '_sale_price_dates_to', ''),
(504, 24, 'total_sales', '0'),
(505, 24, '_tax_status', 'taxable'),
(506, 24, '_tax_class', ''),
(507, 24, '_manage_stock', 'no'),
(508, 24, '_backorders', 'no'),
(509, 24, '_sold_individually', 'no'),
(510, 24, '_weight', ''),
(511, 24, '_length', ''),
(512, 24, '_width', ''),
(513, 24, '_height', ''),
(514, 24, '_upsell_ids', 'a:0:{}'),
(515, 24, '_crosssell_ids', 'a:1:{i:0;i:21;}'),
(516, 24, '_purchase_note', ''),
(517, 24, '_default_attributes', 'a:0:{}'),
(518, 24, '_virtual', 'no'),
(519, 24, '_downloadable', 'no'),
(520, 24, '_product_image_gallery', '57'),
(521, 24, '_download_limit', '0'),
(522, 24, '_download_expiry', '0'),
(523, 24, '_stock', NULL),
(524, 24, '_stock_status', 'instock'),
(525, 24, '_wc_average_rating', '0'),
(526, 24, '_wc_rating_count', 'a:0:{}'),
(527, 24, '_wc_review_count', '0'),
(528, 24, '_downloadable_files', 'a:0:{}'),
(529, 24, '_product_attributes', 'a:0:{}'),
(530, 24, '_product_version', '3.4.4'),
(531, 24, '_price', '30'),
(532, 25, '_wp_attached_file', '2018/08/cd_6_angle.jpg'),
(533, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2018/08/cd_6_angle.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cd_6_angle-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"cd_6_angle-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_6_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(534, 25, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_6_angle.jpg'),
(535, 26, '_wp_attached_file', '2018/08/cd_6_flat.jpg'),
(536, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/cd_6_flat.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"cd_6_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"cd_6_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_6_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(537, 26, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_6_flat.jpg'),
(538, 10, '_wp_old_slug', 'import-placeholder-for-woo-single-2'),
(539, 10, '_thumbnail_id', '25'),
(540, 27, '_wp_attached_file', '2018/08/cd_4_angle.jpg'),
(541, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2018/08/cd_4_angle.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cd_4_angle-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"cd_4_angle-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_4_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(542, 27, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_angle.jpg'),
(543, 28, '_wp_attached_file', '2018/08/cd_4_flat.jpg'),
(544, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/cd_4_flat.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"cd_4_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"cd_4_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_4_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(545, 28, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_4_flat.jpg'),
(546, 9, '_wp_old_slug', 'import-placeholder-for-woo-single-1'),
(547, 9, '_thumbnail_id', '27'),
(548, 29, '_children', 'a:2:{i:0;i:9;i:1;i:10;}'),
(549, 29, '_sku', 'WOO-SINGLES'),
(552, 29, '_sale_price_dates_from', ''),
(553, 29, '_sale_price_dates_to', ''),
(554, 29, 'total_sales', '0'),
(555, 29, '_tax_status', 'taxable'),
(556, 29, '_tax_class', ''),
(557, 29, '_manage_stock', 'no'),
(558, 29, '_backorders', 'no'),
(559, 29, '_sold_individually', 'no'),
(560, 29, '_weight', ''),
(561, 29, '_length', ''),
(562, 29, '_width', ''),
(563, 29, '_height', ''),
(564, 29, '_upsell_ids', 'a:2:{i:0;i:11;i:1;i:12;}'),
(565, 29, '_crosssell_ids', 'a:1:{i:0;i:13;}'),
(566, 29, '_purchase_note', ''),
(567, 29, '_default_attributes', 'a:0:{}'),
(568, 29, '_virtual', 'no'),
(569, 29, '_downloadable', 'no'),
(570, 29, '_product_image_gallery', ''),
(571, 29, '_download_limit', '0'),
(572, 29, '_download_expiry', '0'),
(573, 29, '_thumbnail_id', '26'),
(574, 29, '_stock', NULL),
(575, 29, '_stock_status', 'instock'),
(576, 29, '_wc_average_rating', '0'),
(577, 29, '_wc_rating_count', 'a:0:{}'),
(578, 29, '_wc_review_count', '0'),
(579, 29, '_downloadable_files', 'a:0:{}'),
(580, 29, '_product_attributes', 'a:0:{}'),
(581, 29, '_product_version', '3.4.4'),
(582, 29, '_price', '2'),
(583, 29, '_price', '3'),
(584, 30, '_wp_attached_file', '2018/08/cd_5_angle.jpg'),
(585, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2018/08/cd_5_angle.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cd_5_angle-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"cd_5_angle-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_5_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(586, 30, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_5_angle.jpg'),
(587, 31, '_wp_attached_file', '2018/08/cd_5_flat.jpg'),
(588, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/cd_5_flat.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"cd_5_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"cd_5_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_5_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(589, 31, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_5_flat.jpg'),
(590, 32, '_sku', 'WOO-ALBUM-4'),
(591, 32, '_regular_price', '9'),
(592, 32, '_sale_price', ''),
(593, 32, '_sale_price_dates_from', ''),
(594, 32, '_sale_price_dates_to', ''),
(595, 32, 'total_sales', '0'),
(596, 32, '_tax_status', 'taxable'),
(597, 32, '_tax_class', ''),
(598, 32, '_manage_stock', 'no'),
(599, 32, '_backorders', 'no'),
(600, 32, '_sold_individually', 'no'),
(601, 32, '_weight', ''),
(602, 32, '_length', ''),
(603, 32, '_width', ''),
(604, 32, '_height', ''),
(605, 32, '_upsell_ids', 'a:0:{}'),
(606, 32, '_crosssell_ids', 'a:0:{}'),
(607, 32, '_purchase_note', ''),
(608, 32, '_default_attributes', 'a:0:{}'),
(609, 32, '_virtual', 'yes'),
(610, 32, '_downloadable', 'no'),
(611, 32, '_product_image_gallery', '31'),
(612, 32, '_download_limit', '0'),
(613, 32, '_download_expiry', '0'),
(614, 32, '_thumbnail_id', '30'),
(615, 32, '_stock', NULL),
(616, 32, '_stock_status', 'instock'),
(617, 32, '_wc_average_rating', '0'),
(618, 32, '_wc_rating_count', 'a:0:{}'),
(619, 32, '_wc_review_count', '0'),
(620, 32, '_downloadable_files', 'a:0:{}'),
(621, 32, '_product_attributes', 'a:0:{}'),
(622, 32, '_product_version', '3.4.4'),
(623, 32, '_price', '9'),
(624, 33, '_wp_attached_file', '2018/08/cd_3_angle.jpg'),
(625, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2018/08/cd_3_angle.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cd_3_angle-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"cd_3_angle-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_3_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(626, 33, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_3_angle.jpg'),
(627, 34, '_wp_attached_file', '2018/08/cd_3_flat.jpg'),
(628, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/cd_3_flat.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"cd_3_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_3_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(629, 34, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_3_flat.jpg'),
(630, 13, '_wp_old_slug', 'import-placeholder-for-woo-album-3'),
(631, 13, '_thumbnail_id', '33'),
(632, 35, '_wp_attached_file', '2018/08/cd_2_angle.jpg'),
(633, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2018/08/cd_2_angle.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cd_2_angle-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_2_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(634, 35, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_2_angle.jpg'),
(635, 36, '_wp_attached_file', '2018/08/cd_2_flat.jpg'),
(636, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/cd_2_flat.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"cd_2_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_2_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(637, 36, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_2_flat.jpg'),
(638, 12, '_wp_old_slug', 'import-placeholder-for-woo-album-2'),
(639, 12, '_thumbnail_id', '35'),
(640, 37, '_wp_attached_file', '2018/08/cd_1_angle.jpg'),
(641, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2018/08/cd_1_angle.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cd_1_angle-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cd_1_angle-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(642, 37, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_1_angle.jpg'),
(643, 38, '_wp_attached_file', '2018/08/cd_1_flat.jpg'),
(644, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/cd_1_flat.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"cd_1_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"cd_1_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(645, 38, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_1_flat.jpg'),
(646, 11, '_wp_old_slug', 'import-placeholder-for-woo-album-1'),
(647, 11, '_thumbnail_id', '37'),
(648, 39, '_wp_attached_file', '2018/08/poster_5_up.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(649, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2018/08/poster_5_up.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_5_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_5_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_5_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:23:\"poster_5_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"poster_5_up-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"poster_5_up-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_5_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_5_up-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_5_up-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_5_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(650, 39, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_5_up.jpg'),
(651, 40, '_wp_attached_file', '2018/08/Poster_5_flat.jpg'),
(652, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2018/08/Poster_5_flat.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Poster_5_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_5_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(653, 40, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_5_flat.jpg'),
(654, 41, '_sku', 'POSTER-WOO-LOGO'),
(655, 41, '_regular_price', '15'),
(656, 41, '_sale_price', ''),
(657, 41, '_sale_price_dates_from', ''),
(658, 41, '_sale_price_dates_to', ''),
(659, 41, 'total_sales', '0'),
(660, 41, '_tax_status', 'taxable'),
(661, 41, '_tax_class', ''),
(662, 41, '_manage_stock', 'no'),
(663, 41, '_backorders', 'no'),
(664, 41, '_sold_individually', 'no'),
(665, 41, '_weight', ''),
(666, 41, '_length', ''),
(667, 41, '_width', ''),
(668, 41, '_height', ''),
(669, 41, '_upsell_ids', 'a:0:{}'),
(670, 41, '_crosssell_ids', 'a:2:{i:0;i:14;i:1;i:15;}'),
(671, 41, '_purchase_note', ''),
(672, 41, '_default_attributes', 'a:0:{}'),
(673, 41, '_virtual', 'no'),
(674, 41, '_downloadable', 'no'),
(675, 41, '_product_image_gallery', '40'),
(676, 41, '_download_limit', '0'),
(677, 41, '_download_expiry', '0'),
(678, 41, '_thumbnail_id', '39'),
(679, 41, '_stock', NULL),
(680, 41, '_stock_status', 'instock'),
(681, 41, '_wc_average_rating', '0'),
(682, 41, '_wc_rating_count', 'a:0:{}'),
(683, 41, '_wc_review_count', '0'),
(684, 41, '_downloadable_files', 'a:0:{}'),
(685, 41, '_product_attributes', 'a:0:{}'),
(686, 41, '_product_version', '3.4.4'),
(687, 41, '_price', '15'),
(688, 42, '_wp_attached_file', '2018/08/poster_4_up.jpg'),
(689, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2018/08/poster_4_up.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_4_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_4_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_4_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:23:\"poster_4_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"poster_4_up-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"poster_4_up-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_4_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_4_up-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_4_up-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_4_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(690, 42, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_4_up.jpg'),
(691, 43, '_wp_attached_file', '2018/08/Poster_4_flat.jpg'),
(692, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2018/08/Poster_4_flat.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Poster_4_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_4_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(693, 43, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_4_flat.jpg'),
(694, 44, '_sku', 'POSTER-WOO-NINJA'),
(695, 44, '_regular_price', '15'),
(696, 44, '_sale_price', ''),
(697, 44, '_sale_price_dates_from', ''),
(698, 44, '_sale_price_dates_to', ''),
(699, 44, 'total_sales', '0'),
(700, 44, '_tax_status', 'taxable'),
(701, 44, '_tax_class', ''),
(702, 44, '_manage_stock', 'no'),
(703, 44, '_backorders', 'no'),
(704, 44, '_sold_individually', 'no'),
(705, 44, '_weight', ''),
(706, 44, '_length', ''),
(707, 44, '_width', ''),
(708, 44, '_height', ''),
(709, 44, '_upsell_ids', 'a:0:{}'),
(710, 44, '_crosssell_ids', 'a:2:{i:0;i:16;i:1;i:17;}'),
(711, 44, '_purchase_note', ''),
(712, 44, '_default_attributes', 'a:0:{}'),
(713, 44, '_virtual', 'no'),
(714, 44, '_downloadable', 'no'),
(715, 44, '_product_image_gallery', '43'),
(716, 44, '_download_limit', '0'),
(717, 44, '_download_expiry', '0'),
(718, 44, '_thumbnail_id', '42'),
(719, 44, '_stock', NULL),
(720, 44, '_stock_status', 'instock'),
(721, 44, '_wc_average_rating', '0'),
(722, 44, '_wc_rating_count', 'a:0:{}'),
(723, 44, '_wc_review_count', '0'),
(724, 44, '_downloadable_files', 'a:0:{}'),
(725, 44, '_product_attributes', 'a:0:{}'),
(726, 44, '_product_version', '3.4.4'),
(727, 44, '_price', '15'),
(728, 45, '_wp_attached_file', '2018/08/poster_3_up.jpg'),
(729, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2018/08/poster_3_up.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_3_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_3_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_3_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:23:\"poster_3_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"poster_3_up-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"poster_3_up-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_3_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_3_up-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_3_up-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_3_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(730, 45, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_3_up.jpg'),
(731, 46, '_wp_attached_file', '2018/08/Poster_3_flat.jpg'),
(732, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2018/08/Poster_3_flat.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Poster_3_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_3_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(733, 46, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_3_flat.jpg'),
(734, 47, '_sku', 'POSTER-PREMIUM-QUALITY'),
(735, 47, '_regular_price', '15'),
(736, 47, '_sale_price', '12'),
(737, 47, '_sale_price_dates_from', ''),
(738, 47, '_sale_price_dates_to', ''),
(739, 47, 'total_sales', '0'),
(740, 47, '_tax_status', 'taxable'),
(741, 47, '_tax_class', ''),
(742, 47, '_manage_stock', 'no'),
(743, 47, '_backorders', 'no'),
(744, 47, '_sold_individually', 'no'),
(745, 47, '_weight', ''),
(746, 47, '_length', ''),
(747, 47, '_width', ''),
(748, 47, '_height', ''),
(749, 47, '_upsell_ids', 'a:1:{i:0;i:18;}'),
(750, 47, '_crosssell_ids', 'a:0:{}'),
(751, 47, '_purchase_note', ''),
(752, 47, '_default_attributes', 'a:0:{}'),
(753, 47, '_virtual', 'no'),
(754, 47, '_downloadable', 'no'),
(755, 47, '_product_image_gallery', '46'),
(756, 47, '_download_limit', '0'),
(757, 47, '_download_expiry', '0'),
(758, 47, '_thumbnail_id', '45'),
(759, 47, '_stock', NULL),
(760, 47, '_stock_status', 'instock'),
(761, 47, '_wc_average_rating', '0'),
(762, 47, '_wc_rating_count', 'a:0:{}'),
(763, 47, '_wc_review_count', '0'),
(764, 47, '_downloadable_files', 'a:0:{}'),
(765, 47, '_product_attributes', 'a:0:{}'),
(766, 47, '_product_version', '3.4.4'),
(767, 47, '_price', '12'),
(768, 48, '_wp_attached_file', '2018/08/poster_2_up.jpg'),
(769, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2018/08/poster_2_up.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_2_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_2_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_2_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:23:\"poster_2_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"poster_2_up-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"poster_2_up-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_2_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_2_up-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_2_up-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_2_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(770, 48, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_2_up.jpg'),
(771, 49, '_wp_attached_file', '2018/08/Poster_2_flat.jpg'),
(772, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2018/08/Poster_2_flat.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Poster_2_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_2_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(773, 49, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_2_flat.jpg'),
(774, 50, '_sku', 'POSTER-FLYING-NINJA'),
(775, 50, '_regular_price', '15'),
(776, 50, '_sale_price', '12'),
(777, 50, '_sale_price_dates_from', ''),
(778, 50, '_sale_price_dates_to', ''),
(779, 50, 'total_sales', '0'),
(780, 50, '_tax_status', 'taxable'),
(781, 50, '_tax_class', ''),
(782, 50, '_manage_stock', 'no'),
(783, 50, '_backorders', 'no'),
(784, 50, '_sold_individually', 'no'),
(785, 50, '_weight', ''),
(786, 50, '_length', ''),
(787, 50, '_width', ''),
(788, 50, '_height', ''),
(789, 50, '_upsell_ids', 'a:0:{}'),
(790, 50, '_crosssell_ids', 'a:0:{}'),
(791, 50, '_purchase_note', ''),
(792, 50, '_default_attributes', 'a:0:{}'),
(793, 50, '_virtual', 'no'),
(794, 50, '_downloadable', 'no'),
(795, 50, '_product_image_gallery', '49'),
(796, 50, '_download_limit', '0'),
(797, 50, '_download_expiry', '0'),
(798, 50, '_thumbnail_id', '48'),
(799, 50, '_stock', NULL),
(800, 50, '_stock_status', 'instock'),
(801, 50, '_wc_average_rating', '0'),
(802, 50, '_wc_rating_count', 'a:0:{}'),
(803, 50, '_wc_review_count', '0'),
(804, 50, '_downloadable_files', 'a:0:{}'),
(805, 50, '_product_attributes', 'a:0:{}'),
(806, 50, '_product_version', '3.4.4'),
(807, 50, '_price', '12'),
(808, 51, '_wp_attached_file', '2018/08/poster_1_up.jpg'),
(809, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:23:\"2018/08/poster_1_up.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_1_up-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"poster_1_up-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"poster_1_up-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:23:\"poster_1_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"poster_1_up-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"poster_1_up-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_1_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"poster_1_up-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"poster_1_up-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"poster_1_up-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(810, 51, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/poster_1_up.jpg'),
(811, 52, '_wp_attached_file', '2018/08/Poster_1_flat.jpg'),
(812, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2018/08/Poster_1_flat.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Poster_1_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Poster_1_flat-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(813, 52, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/Poster_1_flat.jpg'),
(814, 53, '_sku', 'POSTER-SHIP-YOUR-IDEA'),
(815, 53, '_regular_price', '15'),
(816, 53, '_sale_price', ''),
(817, 53, '_sale_price_dates_from', ''),
(818, 53, '_sale_price_dates_to', ''),
(819, 53, 'total_sales', '0'),
(820, 53, '_tax_status', 'taxable'),
(821, 53, '_tax_class', ''),
(822, 53, '_manage_stock', 'no'),
(823, 53, '_backorders', 'no'),
(824, 53, '_sold_individually', 'no'),
(825, 53, '_weight', ''),
(826, 53, '_length', ''),
(827, 53, '_width', ''),
(828, 53, '_height', ''),
(829, 53, '_upsell_ids', 'a:2:{i:0;i:19;i:1;i:20;}'),
(830, 53, '_crosssell_ids', 'a:2:{i:0;i:19;i:1;i:20;}'),
(831, 53, '_purchase_note', ''),
(832, 53, '_default_attributes', 'a:0:{}'),
(833, 53, '_virtual', 'no'),
(834, 53, '_downloadable', 'no'),
(835, 53, '_product_image_gallery', '52'),
(836, 53, '_download_limit', '0'),
(837, 53, '_download_expiry', '0'),
(838, 53, '_thumbnail_id', '51'),
(839, 53, '_stock', NULL),
(840, 53, '_stock_status', 'instock'),
(841, 53, '_wc_average_rating', '0'),
(842, 53, '_wc_rating_count', 'a:0:{}'),
(843, 53, '_wc_review_count', '0'),
(844, 53, '_downloadable_files', 'a:0:{}'),
(845, 53, '_product_attributes', 'a:0:{}'),
(846, 53, '_product_version', '3.4.4'),
(847, 53, '_price', '15'),
(848, 54, '_wp_attached_file', '2018/08/hoodie_6_front.jpg'),
(849, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2018/08/hoodie_6_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_6_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_6_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(850, 54, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_6_front.jpg'),
(851, 55, '_wp_attached_file', '2018/08/hoodie_6_back.jpg'),
(852, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2018/08/hoodie_6_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_6_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_6_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(853, 55, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_6_back.jpg'),
(854, 15, '_wp_old_slug', 'import-placeholder-for-hoodie-woo-logo'),
(855, 15, '_thumbnail_id', '54'),
(856, 56, '_wp_attached_file', '2018/08/hoodie_5_front.jpg'),
(857, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2018/08/hoodie_5_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_5_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_5_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(858, 56, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_5_front.jpg'),
(859, 57, '_wp_attached_file', '2018/08/hoodie_5_back.jpg'),
(860, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2018/08/hoodie_5_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_5_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_5_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(861, 57, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_5_back.jpg'),
(862, 24, '_wp_old_slug', 'import-placeholder-for-hoodie-ninja-silhouette'),
(863, 24, '_thumbnail_id', '56'),
(864, 24, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-logo-black-zip-hoodie/'),
(865, 24, '_button_text', 'Buy on WordPress Swag Store'),
(866, 58, '_wp_attached_file', '2018/08/hoodie_4_front.jpg'),
(867, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2018/08/hoodie_4_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_4_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_4_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(868, 58, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_4_front.jpg'),
(869, 59, '_wp_attached_file', '2018/08/hoodie_4_back.jpg'),
(870, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2018/08/hoodie_4_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_4_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_4_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(871, 59, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_4_back.jpg'),
(872, 23, '_wp_old_slug', 'import-placeholder-for-hoodie-happy-ninja'),
(873, 23, '_thumbnail_id', '58'),
(874, 60, '_wp_attached_file', '2018/08/hoodie_3_front.jpg'),
(875, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2018/08/hoodie_3_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_3_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_3_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(876, 60, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_3_front.jpg'),
(877, 61, '_wp_attached_file', '2018/08/hoodie_3_back.jpg'),
(878, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2018/08/hoodie_3_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_3_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_3_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(879, 61, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_3_back.jpg'),
(880, 62, '_sku', 'HOODIE-PATIENT-NINJA'),
(881, 62, '_regular_price', '35'),
(882, 62, '_sale_price', ''),
(883, 62, '_sale_price_dates_from', ''),
(884, 62, '_sale_price_dates_to', ''),
(885, 62, 'total_sales', '0'),
(886, 62, '_tax_status', 'taxable'),
(887, 62, '_tax_class', ''),
(888, 62, '_manage_stock', 'no'),
(889, 62, '_backorders', 'no'),
(890, 62, '_sold_individually', 'no'),
(891, 62, '_weight', ''),
(892, 62, '_length', ''),
(893, 62, '_width', ''),
(894, 62, '_height', ''),
(895, 62, '_upsell_ids', 'a:0:{}'),
(896, 62, '_crosssell_ids', 'a:1:{i:0;i:23;}'),
(897, 62, '_purchase_note', ''),
(898, 62, '_default_attributes', 'a:0:{}'),
(899, 62, '_virtual', 'no'),
(900, 62, '_downloadable', 'no'),
(901, 62, '_product_image_gallery', '61'),
(902, 62, '_download_limit', '0'),
(903, 62, '_download_expiry', '0'),
(904, 62, '_thumbnail_id', '60'),
(905, 62, '_stock', NULL),
(906, 62, '_stock_status', 'instock'),
(907, 62, '_wc_average_rating', '0'),
(908, 62, '_wc_rating_count', 'a:0:{}'),
(909, 62, '_wc_review_count', '0'),
(910, 62, '_downloadable_files', 'a:0:{}'),
(911, 62, '_product_attributes', 'a:0:{}'),
(912, 62, '_product_version', '3.4.4'),
(913, 62, '_price', '35'),
(914, 63, '_wp_attached_file', '2018/08/hoodie_2_front.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(915, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2018/08/hoodie_2_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_2_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_2_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(916, 63, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_2_front.jpg'),
(917, 64, '_wp_attached_file', '2018/08/hoodie_2_back.jpg'),
(918, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2018/08/hoodie_2_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_2_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_2_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(919, 64, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_2_back.jpg'),
(920, 17, '_wp_old_slug', 'import-placeholder-for-hoodie-woo-ninja'),
(921, 17, '_thumbnail_id', '63'),
(922, 65, '_wp_attached_file', '2018/08/hoodie_7_front.jpg'),
(923, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2018/08/hoodie_7_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_7_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_7_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(924, 65, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_7_front.jpg'),
(925, 66, '_wp_attached_file', '2018/08/hoodie_7_back.jpg'),
(926, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2018/08/hoodie_7_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_7_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_7_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(927, 66, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_7_back.jpg'),
(928, 67, '_wp_attached_file', '2018/08/hoodie_1_back.jpg'),
(929, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:25:\"2018/08/hoodie_1_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie_1_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie_1_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(930, 67, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_1_back.jpg'),
(931, 68, '_wp_attached_file', '2018/08/hoodie_1_front.jpg'),
(932, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:26:\"2018/08/hoodie_1_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie_1_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie_1_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(933, 68, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/hoodie_1_front.jpg'),
(934, 20, '_wp_old_slug', 'import-placeholder-for-hoodie-ship-your-idea'),
(935, 20, '_thumbnail_id', '65'),
(936, 69, '_variation_description', ''),
(937, 69, '_sku', 'HOODIE-SHIP-YOUR-IDEA-BLUE-XL'),
(938, 69, '_regular_price', '35'),
(939, 69, '_sale_price', '30'),
(940, 69, '_sale_price_dates_from', ''),
(941, 69, '_sale_price_dates_to', ''),
(942, 69, 'total_sales', '0'),
(943, 69, '_tax_status', 'taxable'),
(944, 69, '_tax_class', ''),
(945, 69, '_manage_stock', 'no'),
(946, 69, '_backorders', 'no'),
(947, 69, '_sold_individually', 'no'),
(948, 69, '_weight', ''),
(949, 69, '_length', ''),
(950, 69, '_width', ''),
(951, 69, '_height', ''),
(952, 69, '_upsell_ids', 'a:0:{}'),
(953, 69, '_crosssell_ids', 'a:1:{i:0;i:19;}'),
(954, 69, '_purchase_note', ''),
(955, 69, '_default_attributes', 'a:0:{}'),
(956, 69, '_virtual', 'no'),
(957, 69, '_downloadable', 'no'),
(958, 69, '_product_image_gallery', ''),
(959, 69, '_download_limit', '0'),
(960, 69, '_download_expiry', '0'),
(961, 69, '_thumbnail_id', '68'),
(962, 69, '_stock', NULL),
(963, 69, '_stock_status', 'instock'),
(964, 69, '_wc_average_rating', '0'),
(965, 69, '_wc_rating_count', 'a:0:{}'),
(966, 69, '_wc_review_count', '0'),
(967, 69, '_downloadable_files', 'a:0:{}'),
(968, 69, 'attribute_pa_color', 'blue'),
(969, 69, 'attribute_size', 'XL'),
(970, 69, '_price', '30'),
(971, 69, '_product_version', '3.4.4'),
(972, 70, '_variation_description', ''),
(973, 70, '_sku', 'HOODIE-SHIP-YOUR-IDEA-BLACK-L'),
(974, 70, '_regular_price', '35'),
(975, 70, '_sale_price', ''),
(976, 70, '_sale_price_dates_from', ''),
(977, 70, '_sale_price_dates_to', ''),
(978, 70, 'total_sales', '0'),
(979, 70, '_tax_status', 'taxable'),
(980, 70, '_tax_class', ''),
(981, 70, '_manage_stock', 'no'),
(982, 70, '_backorders', 'no'),
(983, 70, '_sold_individually', 'no'),
(984, 70, '_weight', ''),
(985, 70, '_length', ''),
(986, 70, '_width', ''),
(987, 70, '_height', ''),
(988, 70, '_upsell_ids', 'a:0:{}'),
(989, 70, '_crosssell_ids', 'a:1:{i:0;i:19;}'),
(990, 70, '_purchase_note', ''),
(991, 70, '_default_attributes', 'a:0:{}'),
(992, 70, '_virtual', 'no'),
(993, 70, '_downloadable', 'no'),
(994, 70, '_product_image_gallery', ''),
(995, 70, '_download_limit', '0'),
(996, 70, '_download_expiry', '0'),
(997, 70, '_thumbnail_id', '65'),
(998, 70, '_stock', NULL),
(999, 70, '_stock_status', 'instock'),
(1000, 70, '_wc_average_rating', '0'),
(1001, 70, '_wc_rating_count', 'a:0:{}'),
(1002, 70, '_wc_review_count', '0'),
(1003, 70, '_downloadable_files', 'a:0:{}'),
(1004, 70, 'attribute_pa_color', 'black'),
(1005, 70, 'attribute_size', 'L'),
(1006, 70, '_price', '35'),
(1007, 70, '_product_version', '3.4.4'),
(1008, 71, '_wp_attached_file', '2018/08/T_7_front.jpg'),
(1009, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/T_7_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_7_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_7_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_7_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"T_7_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_7_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_7_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_7_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_7_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_7_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_7_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1010, 71, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_7_front.jpg'),
(1011, 72, '_wp_attached_file', '2018/08/T_7_back.jpg'),
(1012, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2018/08/T_7_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_7_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_7_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_7_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"T_7_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_7_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_7_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_7_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_7_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_7_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_7_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1013, 72, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_7_back.jpg'),
(1014, 22, '_wp_old_slug', 'import-placeholder-for-t-shirt-happy-ninja'),
(1015, 22, '_thumbnail_id', '71'),
(1016, 73, '_wp_attached_file', '2018/08/T_6_front.jpg'),
(1017, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/T_6_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_6_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_6_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_6_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"T_6_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_6_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_6_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_6_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_6_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_6_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_6_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1018, 73, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_6_front.jpg'),
(1019, 74, '_wp_attached_file', '2018/08/T_6_back.jpg'),
(1020, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2018/08/T_6_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_6_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_6_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_6_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"T_6_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_6_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_6_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_6_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_6_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_6_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_6_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1021, 74, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_6_back.jpg'),
(1022, 16, '_wp_old_slug', 'import-placeholder-for-t-shirt-woo-ninja'),
(1023, 16, '_thumbnail_id', '73'),
(1024, 20, '_price', '30'),
(1025, 20, '_price', '35'),
(1026, 20, '_regular_price', ''),
(1027, 20, '_sale_price', ''),
(1028, 75, '_wp_attached_file', '2018/08/T_5_front.jpg'),
(1029, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/T_5_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_5_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_5_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_5_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"T_5_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_5_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_5_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_5_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_5_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_5_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_5_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1030, 75, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_5_front.jpg'),
(1031, 76, '_wp_attached_file', '2018/08/T_5_back.jpg'),
(1032, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2018/08/T_5_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_5_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_5_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_5_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"T_5_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_5_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_5_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_5_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_5_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_5_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_5_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1033, 76, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_5_back.jpg'),
(1034, 21, '_wp_old_slug', 'import-placeholder-for-t-shirt-ninja-silhouette'),
(1035, 21, '_thumbnail_id', '75'),
(1036, 77, '_wp_attached_file', '2018/08/T_4_front.jpg'),
(1037, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/T_4_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_4_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_4_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_4_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"T_4_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_4_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_4_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_4_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_4_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_4_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_4_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1038, 77, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front.jpg'),
(1039, 78, '_wp_attached_file', '2018/08/T_3_back.jpg'),
(1040, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2018/08/T_3_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_3_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_3_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_3_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"T_3_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_3_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_3_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_3_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_3_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_3_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_3_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1041, 78, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_back.jpg'),
(1042, 79, '_wp_attached_file', '2018/08/T_3_front.jpg'),
(1043, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/T_3_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_3_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_3_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_3_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"T_3_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_3_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_3_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_3_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_3_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_3_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_3_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1044, 79, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_3_front.jpg'),
(1045, 80, '_wp_attached_file', '2018/08/T_4_back.jpg'),
(1046, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2018/08/T_4_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_4_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_4_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_4_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"T_4_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_4_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_4_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_4_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_4_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_4_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_4_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1047, 80, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_back.jpg'),
(1048, 81, '_wp_attached_file', '2018/08/T_4_front1.jpg'),
(1049, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2018/08/T_4_front1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"T_4_front1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"T_4_front1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"T_4_front1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"T_4_front1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"T_4_front1-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"T_4_front1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"T_4_front1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"T_4_front1-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"T_4_front1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"T_4_front1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1050, 81, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_4_front1.jpg'),
(1051, 19, '_wp_old_slug', 'import-placeholder-for-t-shirt-ship-your-idea'),
(1052, 19, '_thumbnail_id', '77'),
(1053, 82, '_variation_description', ''),
(1054, 82, '_sku', 'T-SHIRT-SHIP-YOUR-IDEA-GREEN'),
(1055, 82, '_regular_price', '20'),
(1056, 82, '_sale_price', ''),
(1057, 82, '_sale_price_dates_from', ''),
(1058, 82, '_sale_price_dates_to', ''),
(1059, 82, 'total_sales', '0'),
(1060, 82, '_tax_status', 'taxable'),
(1061, 82, '_tax_class', ''),
(1062, 82, '_manage_stock', 'no'),
(1063, 82, '_backorders', 'no'),
(1064, 82, '_sold_individually', 'no'),
(1065, 82, '_weight', ''),
(1066, 82, '_length', ''),
(1067, 82, '_width', ''),
(1068, 82, '_height', ''),
(1069, 82, '_upsell_ids', 'a:0:{}'),
(1070, 82, '_crosssell_ids', 'a:0:{}'),
(1071, 82, '_purchase_note', ''),
(1072, 82, '_default_attributes', 'a:0:{}'),
(1073, 82, '_virtual', 'no'),
(1074, 82, '_downloadable', 'no'),
(1075, 82, '_product_image_gallery', ''),
(1076, 82, '_download_limit', '0'),
(1077, 82, '_download_expiry', '0'),
(1078, 82, '_thumbnail_id', '79'),
(1079, 82, '_stock', NULL),
(1080, 82, '_stock_status', 'instock'),
(1081, 82, '_wc_average_rating', '0'),
(1082, 82, '_wc_rating_count', 'a:0:{}'),
(1083, 82, '_wc_review_count', '0'),
(1084, 82, '_downloadable_files', 'a:0:{}'),
(1085, 82, 'attribute_pa_color', 'green'),
(1086, 82, '_price', '20'),
(1087, 82, '_product_version', '3.4.4'),
(1088, 83, '_variation_description', ''),
(1089, 83, '_sku', 'T-SHIRT-SHIP-YOUR-IDEA-BLACK'),
(1090, 83, '_regular_price', '20'),
(1091, 83, '_sale_price', ''),
(1092, 83, '_sale_price_dates_from', ''),
(1093, 83, '_sale_price_dates_to', ''),
(1094, 83, 'total_sales', '0'),
(1095, 83, '_tax_status', 'taxable'),
(1096, 83, '_tax_class', ''),
(1097, 83, '_manage_stock', 'no'),
(1098, 83, '_backorders', 'no'),
(1099, 83, '_sold_individually', 'no'),
(1100, 83, '_weight', ''),
(1101, 83, '_length', ''),
(1102, 83, '_width', ''),
(1103, 83, '_height', ''),
(1104, 83, '_upsell_ids', 'a:0:{}'),
(1105, 83, '_crosssell_ids', 'a:0:{}'),
(1106, 83, '_purchase_note', ''),
(1107, 83, '_default_attributes', 'a:0:{}'),
(1108, 83, '_virtual', 'no'),
(1109, 83, '_downloadable', 'no'),
(1110, 83, '_product_image_gallery', ''),
(1111, 83, '_download_limit', '0'),
(1112, 83, '_download_expiry', '0'),
(1113, 83, '_thumbnail_id', '81'),
(1114, 83, '_stock', NULL),
(1115, 83, '_stock_status', 'instock'),
(1116, 83, '_wc_average_rating', '0'),
(1117, 83, '_wc_rating_count', 'a:0:{}'),
(1118, 83, '_wc_review_count', '0'),
(1119, 83, '_downloadable_files', 'a:0:{}'),
(1120, 83, 'attribute_pa_color', 'black'),
(1121, 83, '_price', '20'),
(1122, 83, '_product_version', '3.4.4'),
(1123, 84, '_wp_attached_file', '2018/08/T_2_front.jpg'),
(1124, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/T_2_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_2_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_2_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_2_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"T_2_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_2_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_2_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_2_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_2_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_2_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_2_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1125, 84, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_front.jpg'),
(1126, 85, '_wp_attached_file', '2018/08/T_2_back.jpg'),
(1127, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2018/08/T_2_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_2_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_2_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_2_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"T_2_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_2_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_2_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_2_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_2_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_2_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_2_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1128, 85, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_2_back.jpg'),
(1129, 18, '_wp_old_slug', 'import-placeholder-for-t-shirt-premium-quality'),
(1130, 18, '_thumbnail_id', '84'),
(1131, 86, '_wp_attached_file', '2018/08/T_1_front.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1132, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:21:\"2018/08/T_1_front.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"T_1_front-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"T_1_front-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"T_1_front-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"T_1_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"T_1_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"T_1_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_1_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"T_1_front-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"T_1_front-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"T_1_front-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1133, 86, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_1_front.jpg'),
(1134, 87, '_wp_attached_file', '2018/08/T_1_back.jpg'),
(1135, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2018/08/T_1_back.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"T_1_back-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"T_1_back-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"T_1_back-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"T_1_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"T_1_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"T_1_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_1_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"T_1_back-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"T_1_back-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"T_1_back-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1136, 87, '_wc_attachment_source', 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/T_1_back.jpg'),
(1137, 14, '_wp_old_slug', 'import-placeholder-for-t-shirt-woo-logo'),
(1138, 14, '_thumbnail_id', '86'),
(1139, 19, '_price', '20'),
(1140, 19, '_regular_price', ''),
(1141, 19, '_sale_price', ''),
(1142, 98, '_edit_last', '1'),
(1143, 98, '_edit_lock', '1534098730:1'),
(1144, 102, '_wc_review_count', '0'),
(1145, 102, '_wc_rating_count', 'a:0:{}'),
(1146, 102, '_wc_average_rating', '0'),
(1147, 108, '_edit_last', '1'),
(1148, 108, '_edit_lock', '1534150546:1'),
(1149, 4, '_edit_lock', '1534102304:1'),
(1150, 108, 'sub_title', 'subtitle'),
(1151, 108, '_price', '34'),
(1152, 62, '_edit_lock', '1534100261:1'),
(1153, 108, 'product-type', 'simple'),
(1154, 108, '_wc_review_count', '0'),
(1155, 108, '_wc_rating_count', 'a:0:{}'),
(1156, 108, '_wc_average_rating', '0'),
(1157, 108, '_thumbnail_id', '86'),
(1158, 109, '_menu_item_type', 'post_type'),
(1159, 109, '_menu_item_menu_item_parent', '0'),
(1160, 109, '_menu_item_object_id', '7'),
(1161, 109, '_menu_item_object', 'page'),
(1162, 109, '_menu_item_target', ''),
(1163, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1164, 109, '_menu_item_xfn', ''),
(1165, 109, '_menu_item_url', ''),
(1167, 110, '_menu_item_type', 'post_type'),
(1168, 110, '_menu_item_menu_item_parent', '0'),
(1169, 110, '_menu_item_object_id', '6'),
(1170, 110, '_menu_item_object', 'page'),
(1171, 110, '_menu_item_target', ''),
(1172, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1173, 110, '_menu_item_xfn', ''),
(1174, 110, '_menu_item_url', ''),
(1176, 111, '_menu_item_type', 'post_type'),
(1177, 111, '_menu_item_menu_item_parent', '0'),
(1178, 111, '_menu_item_object_id', '5'),
(1179, 111, '_menu_item_object', 'page'),
(1180, 111, '_menu_item_target', ''),
(1181, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1182, 111, '_menu_item_xfn', ''),
(1183, 111, '_menu_item_url', ''),
(1185, 112, '_menu_item_type', 'post_type'),
(1186, 112, '_menu_item_menu_item_parent', '0'),
(1187, 112, '_menu_item_object_id', '4'),
(1188, 112, '_menu_item_object', 'page'),
(1189, 112, '_menu_item_target', ''),
(1190, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1191, 112, '_menu_item_xfn', ''),
(1192, 112, '_menu_item_url', ''),
(1194, 5, '_edit_last', '1'),
(1195, 5, '_edit_lock', '1534102299:1'),
(1196, 4, '_edit_last', '1'),
(1197, 7, '_edit_last', '1'),
(1198, 7, '_edit_lock', '1534102310:1'),
(1199, 6, '_edit_last', '1'),
(1200, 6, '_edit_lock', '1534102316:1'),
(1201, 2, '_wp_trash_meta_status', 'publish'),
(1202, 2, '_wp_trash_meta_time', '1534102318'),
(1203, 2, '_wp_desired_post_slug', 'sample-page'),
(1204, 118, '_menu_item_type', 'post_type'),
(1205, 118, '_menu_item_menu_item_parent', '0'),
(1206, 118, '_menu_item_object_id', '108'),
(1207, 118, '_menu_item_object', 'movies'),
(1208, 118, '_menu_item_target', ''),
(1209, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1210, 118, '_menu_item_xfn', ''),
(1211, 118, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-12 21:02:24', '2018-08-12 18:02:24', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2018-08-12 21:02:24', '2018-08-12 18:02:24', '', 0, 'http://cndeveloper.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-12 21:02:24', '2018-08-12 18:02:24', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://cndeveloper.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-08-12 22:31:58', '2018-08-12 19:31:58', '', 0, 'http://cndeveloper.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-12 21:02:34', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-12 21:02:34', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?p=3', 0, 'post', '', 0),
(4, 1, '2018-08-12 21:08:10', '2018-08-12 18:08:10', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-08-12 22:31:44', '2018-08-12 19:31:44', '', 0, 'http://cndeveloper.loc/shop/', 0, 'page', '', 0),
(5, 1, '2018-08-12 21:08:10', '2018-08-12 18:08:10', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-08-12 22:31:39', '2018-08-12 19:31:39', '', 0, 'http://cndeveloper.loc/cart/', 0, 'page', '', 0),
(6, 1, '2018-08-12 21:08:10', '2018-08-12 18:08:10', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-08-12 22:31:56', '2018-08-12 19:31:56', '', 0, 'http://cndeveloper.loc/checkout/', 0, 'page', '', 0),
(7, 1, '2018-08-12 21:08:10', '2018-08-12 18:08:10', '[woocommerce_my_account]', 'Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-08-12 22:31:50', '2018-08-12 19:31:50', '', 0, 'http://cndeveloper.loc/my-account/', 0, 'page', '', 0),
(8, 1, '2018-08-12 21:09:05', '2018-08-12 18:09:05', 'http://cndeveloper.loc/wp-content/uploads/2018/08/dummy-data.csv', 'dummy-data.csv', '', 'private', 'open', 'closed', '', 'dummy-data-csv', '', '', '2018-08-12 21:09:05', '2018-08-12 18:09:05', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/dummy-data.csv', 0, 'attachment', 'text/csv', 0),
(9, 1, '2018-08-12 21:09:14', '2018-08-12 18:09:14', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-1', '', '', '2018-08-12 21:09:23', '2018-08-12 18:09:23', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-woo-single-1/', 0, 'product', '', 0),
(10, 1, '2018-08-12 21:09:14', '2018-08-12 18:09:14', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Single #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-single-2', '', '', '2018-08-12 21:09:20', '2018-08-12 18:09:20', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-woo-single-2/', 0, 'product', '', 0),
(11, 1, '2018-08-12 21:09:15', '2018-08-12 18:09:15', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #1', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-1', '', '', '2018-08-12 21:09:37', '2018-08-12 18:09:37', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-woo-album-1/', 0, 'product', '', 0),
(12, 1, '2018-08-12 21:09:15', '2018-08-12 18:09:15', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #2', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-2', '', '', '2018-08-12 21:09:34', '2018-08-12 18:09:34', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-woo-album-2/', 0, 'product', '', 0),
(13, 1, '2018-08-12 21:09:15', '2018-08-12 18:09:15', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #3', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-3', '', '', '2018-08-12 21:09:31', '2018-08-12 18:09:31', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-woo-album-3/', 0, 'product', '', 0),
(14, 1, '2018-08-12 21:09:15', '2018-08-12 18:09:15', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-3', '', '', '2018-08-12 21:10:40', '2018-08-12 18:10:40', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-t-shirt-woo-logo/', 0, 'product', '', 0),
(15, 1, '2018-08-12 21:09:15', '2018-08-12 18:09:15', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo-2', '', '', '2018-08-12 21:09:57', '2018-08-12 18:09:57', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-hoodie-woo-logo/', 0, 'product', '', 0),
(16, 1, '2018-08-12 21:09:16', '2018-08-12 18:09:16', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-3', '', '', '2018-08-12 21:10:23', '2018-08-12 18:10:23', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-t-shirt-woo-ninja/', 0, 'product', '', 0),
(17, 1, '2018-08-12 21:09:16', '2018-08-12 18:09:16', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja-2', '', '', '2018-08-12 21:10:08', '2018-08-12 18:10:08', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-hoodie-woo-ninja/', 0, 'product', '', 0),
(18, 1, '2018-08-12 21:09:16', '2018-08-12 18:09:16', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality-2', '', '', '2018-08-12 21:10:37', '2018-08-12 18:10:37', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-t-shirt-premium-quality/', 0, 'product', '', 0),
(19, 1, '2018-08-12 21:09:16', '2018-08-12 18:09:16', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-3', '', '', '2018-08-12 21:10:40', '2018-08-12 18:10:40', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-t-shirt-ship-your-idea/', 0, 'product', '', 0),
(20, 1, '2018-08-12 21:09:16', '2018-08-12 18:09:16', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea-2', '', '', '2018-08-12 21:10:23', '2018-08-12 18:10:23', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-hoodie-ship-your-idea/', 0, 'product', '', 0),
(21, 1, '2018-08-12 21:09:17', '2018-08-12 18:09:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ninja-silhouette-2', '', '', '2018-08-12 21:10:27', '2018-08-12 18:10:27', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-t-shirt-ninja-silhouette/', 0, 'product', '', 0),
(22, 1, '2018-08-12 21:09:17', '2018-08-12 18:09:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja-2', '', '', '2018-08-12 21:10:20', '2018-08-12 18:10:20', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-t-shirt-happy-ninja/', 0, 'product', '', 0),
(23, 1, '2018-08-12 21:09:17', '2018-08-12 18:09:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Happy Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'happy-ninja', '', '', '2018-08-12 21:10:03', '2018-08-12 18:10:03', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-hoodie-happy-ninja/', 0, 'product', '', 0),
(24, 1, '2018-08-12 21:09:17', '2018-08-12 18:09:17', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ninja Silhouette', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'closed', 'closed', '', 'ninja-silhouette', '', '', '2018-08-12 21:09:59', '2018-08-12 18:09:59', '', 0, 'http://cndeveloper.loc/product/import-placeholder-for-hoodie-ninja-silhouette/', 0, 'product', '', 0),
(25, 1, '2018-08-12 21:09:18', '2018-08-12 18:09:18', '', 'cd_6_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_6_angle-jpg', '', '', '2018-08-12 21:09:18', '2018-08-12 18:09:18', '', 10, 'http://cndeveloper.loc/wp-content/uploads/2018/08/cd_6_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-08-12 21:09:19', '2018-08-12 18:09:19', '', 'cd_6_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_6_flat-jpg', '', '', '2018-08-12 21:09:19', '2018-08-12 18:09:19', '', 10, 'http://cndeveloper.loc/wp-content/uploads/2018/08/cd_6_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-08-12 21:09:21', '2018-08-12 18:09:21', '', 'cd_4_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_4_angle-jpg', '', '', '2018-08-12 21:09:21', '2018-08-12 18:09:21', '', 9, 'http://cndeveloper.loc/wp-content/uploads/2018/08/cd_4_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-08-12 21:09:22', '2018-08-12 18:09:22', '', 'cd_4_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_4_flat-jpg', '', '', '2018-08-12 21:09:22', '2018-08-12 18:09:22', '', 9, 'http://cndeveloper.loc/wp-content/uploads/2018/08/cd_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-08-12 21:09:24', '2018-08-12 18:09:24', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Singles', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-singles', '', '', '2018-08-12 21:09:24', '2018-08-12 18:09:24', '', 0, 'http://cndeveloper.loc/product/woo-singles/', 0, 'product', '', 0),
(30, 1, '2018-08-12 21:09:24', '2018-08-12 18:09:24', '', 'cd_5_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_5_angle-jpg', '', '', '2018-08-12 21:09:24', '2018-08-12 18:09:24', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/cd_5_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-08-12 21:09:26', '2018-08-12 18:09:26', '', 'cd_5_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_5_flat-jpg', '', '', '2018-08-12 21:09:26', '2018-08-12 18:09:26', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/cd_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-08-12 21:09:27', '2018-08-12 18:09:27', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Album #4', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-album-4', '', '', '2018-08-12 21:09:27', '2018-08-12 18:09:27', '', 0, 'http://cndeveloper.loc/product/woo-album-4/', 0, 'product', '', 0),
(33, 1, '2018-08-12 21:09:28', '2018-08-12 18:09:28', '', 'cd_3_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_3_angle-jpg', '', '', '2018-08-12 21:09:28', '2018-08-12 18:09:28', '', 13, 'http://cndeveloper.loc/wp-content/uploads/2018/08/cd_3_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-08-12 21:09:29', '2018-08-12 18:09:29', '', 'cd_3_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_3_flat-jpg', '', '', '2018-08-12 21:09:29', '2018-08-12 18:09:29', '', 13, 'http://cndeveloper.loc/wp-content/uploads/2018/08/cd_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-08-12 21:09:31', '2018-08-12 18:09:31', '', 'cd_2_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_2_angle-jpg', '', '', '2018-08-12 21:09:31', '2018-08-12 18:09:31', '', 12, 'http://cndeveloper.loc/wp-content/uploads/2018/08/cd_2_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-08-12 21:09:33', '2018-08-12 18:09:33', '', 'cd_2_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_2_flat-jpg', '', '', '2018-08-12 21:09:33', '2018-08-12 18:09:33', '', 12, 'http://cndeveloper.loc/wp-content/uploads/2018/08/cd_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-08-12 21:09:35', '2018-08-12 18:09:35', '', 'cd_1_angle.jpg', '', 'inherit', 'open', 'closed', '', 'cd_1_angle-jpg', '', '', '2018-08-12 21:09:35', '2018-08-12 18:09:35', '', 11, 'http://cndeveloper.loc/wp-content/uploads/2018/08/cd_1_angle.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-08-12 21:09:36', '2018-08-12 18:09:36', '', 'cd_1_flat.jpg', '', 'inherit', 'open', 'closed', '', 'cd_1_flat-jpg', '', '', '2018-08-12 21:09:36', '2018-08-12 18:09:36', '', 11, 'http://cndeveloper.loc/wp-content/uploads/2018/08/cd_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-08-12 21:09:39', '2018-08-12 18:09:39', '', 'poster_5_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_5_up-jpg', '', '', '2018-08-12 21:09:39', '2018-08-12 18:09:39', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/poster_5_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-08-12 21:09:40', '2018-08-12 18:09:40', '', 'Poster_5_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_5_flat-jpg', '', '', '2018-08-12 21:09:40', '2018-08-12 18:09:40', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/Poster_5_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-08-12 21:09:41', '2018-08-12 18:09:41', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Logo', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-logo', '', '', '2018-08-12 21:09:41', '2018-08-12 18:09:41', '', 0, 'http://cndeveloper.loc/product/woo-logo/', 0, 'product', '', 0),
(42, 1, '2018-08-12 21:09:42', '2018-08-12 18:09:42', '', 'poster_4_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_4_up-jpg', '', '', '2018-08-12 21:09:42', '2018-08-12 18:09:42', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/poster_4_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-08-12 21:09:43', '2018-08-12 18:09:43', '', 'Poster_4_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_4_flat-jpg', '', '', '2018-08-12 21:09:43', '2018-08-12 18:09:43', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/Poster_4_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-08-12 21:09:44', '2018-08-12 18:09:44', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Woo Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'woo-ninja', '', '', '2018-08-12 21:09:44', '2018-08-12 18:09:44', '', 0, 'http://cndeveloper.loc/product/woo-ninja/', 0, 'product', '', 0),
(45, 1, '2018-08-12 21:09:45', '2018-08-12 18:09:45', '', 'poster_3_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_3_up-jpg', '', '', '2018-08-12 21:09:45', '2018-08-12 18:09:45', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/poster_3_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-08-12 21:09:47', '2018-08-12 18:09:47', '', 'Poster_3_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_3_flat-jpg', '', '', '2018-08-12 21:09:47', '2018-08-12 18:09:47', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/Poster_3_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-08-12 21:09:47', '2018-08-12 18:09:47', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Premium Quality', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'premium-quality', '', '', '2018-08-12 21:09:47', '2018-08-12 18:09:47', '', 0, 'http://cndeveloper.loc/product/premium-quality/', 0, 'product', '', 0),
(48, 1, '2018-08-12 21:09:48', '2018-08-12 18:09:48', '', 'poster_2_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_2_up-jpg', '', '', '2018-08-12 21:09:48', '2018-08-12 18:09:48', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/poster_2_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-08-12 21:09:49', '2018-08-12 18:09:49', '', 'Poster_2_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_2_flat-jpg', '', '', '2018-08-12 21:09:49', '2018-08-12 18:09:49', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/Poster_2_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-08-12 21:09:51', '2018-08-12 18:09:51', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Flying Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'flying-ninja', '', '', '2018-08-12 21:09:51', '2018-08-12 18:09:51', '', 0, 'http://cndeveloper.loc/product/flying-ninja/', 0, 'product', '', 0),
(51, 1, '2018-08-12 21:09:51', '2018-08-12 18:09:51', '', 'poster_1_up.jpg', '', 'inherit', 'open', 'closed', '', 'poster_1_up-jpg', '', '', '2018-08-12 21:09:51', '2018-08-12 18:09:51', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/poster_1_up.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-08-12 21:09:53', '2018-08-12 18:09:53', '', 'Poster_1_flat.jpg', '', 'inherit', 'open', 'closed', '', 'poster_1_flat-jpg', '', '', '2018-08-12 21:09:53', '2018-08-12 18:09:53', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/Poster_1_flat.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-08-12 21:09:53', '2018-08-12 18:09:53', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ship Your Idea', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'ship-your-idea', '', '', '2018-08-12 21:09:53', '2018-08-12 18:09:53', '', 0, 'http://cndeveloper.loc/product/ship-your-idea/', 0, 'product', '', 0),
(54, 1, '2018-08-12 21:09:54', '2018-08-12 18:09:54', '', 'hoodie_6_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_6_front-jpg', '', '', '2018-08-12 21:09:54', '2018-08-12 18:09:54', '', 15, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-08-12 21:09:55', '2018-08-12 18:09:55', '', 'hoodie_6_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_6_back-jpg', '', '', '2018-08-12 21:09:55', '2018-08-12 18:09:55', '', 15, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-08-12 21:09:57', '2018-08-12 18:09:57', '', 'hoodie_5_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_5_front-jpg', '', '', '2018-08-12 21:09:57', '2018-08-12 18:09:57', '', 24, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-08-12 21:09:59', '2018-08-12 18:09:59', '', 'hoodie_5_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_5_back-jpg', '', '', '2018-08-12 21:09:59', '2018-08-12 18:09:59', '', 24, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-08-12 21:10:01', '2018-08-12 18:10:01', '', 'hoodie_4_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_4_front-jpg', '', '', '2018-08-12 21:10:01', '2018-08-12 18:10:01', '', 23, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-08-12 21:10:02', '2018-08-12 18:10:02', '', 'hoodie_4_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_4_back-jpg', '', '', '2018-08-12 21:10:02', '2018-08-12 18:10:02', '', 23, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-08-12 21:10:04', '2018-08-12 18:10:04', '', 'hoodie_3_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_3_front-jpg', '', '', '2018-08-12 21:10:04', '2018-08-12 18:10:04', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-08-12 21:10:05', '2018-08-12 18:10:05', '', 'hoodie_3_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_3_back-jpg', '', '', '2018-08-12 21:10:05', '2018-08-12 18:10:05', '', 0, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2018-08-12 21:10:06', '2018-08-12 18:10:06', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Patient Ninja', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'publish', 'open', 'closed', '', 'patient-ninja', '', '', '2018-08-12 21:10:06', '2018-08-12 18:10:06', '', 0, 'http://cndeveloper.loc/product/patient-ninja/', 0, 'product', '', 0),
(63, 1, '2018-08-12 21:10:07', '2018-08-12 18:10:07', '', 'hoodie_2_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_2_front-jpg', '', '', '2018-08-12 21:10:07', '2018-08-12 18:10:07', '', 17, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-08-12 21:10:08', '2018-08-12 18:10:08', '', 'hoodie_2_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_2_back-jpg', '', '', '2018-08-12 21:10:08', '2018-08-12 18:10:08', '', 17, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-08-12 21:10:09', '2018-08-12 18:10:09', '', 'hoodie_7_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_7_front-jpg', '', '', '2018-08-12 21:10:09', '2018-08-12 18:10:09', '', 20, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-08-12 21:10:10', '2018-08-12 18:10:10', '', 'hoodie_7_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_7_back-jpg', '', '', '2018-08-12 21:10:10', '2018-08-12 18:10:10', '', 20, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2018-08-12 21:10:12', '2018-08-12 18:10:12', '', 'hoodie_1_back.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_1_back-jpg', '', '', '2018-08-12 21:10:12', '2018-08-12 18:10:12', '', 20, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-08-12 21:10:14', '2018-08-12 18:10:14', '', 'hoodie_1_front.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie_1_front-jpg', '', '', '2018-08-12 21:10:14', '2018-08-12 18:10:14', '', 20, 'http://cndeveloper.loc/wp-content/uploads/2018/08/hoodie_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-08-12 21:10:16', '2018-08-12 18:10:16', '', 'Ship Your Idea - Blue, XL', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-blue-xl', '', '', '2018-08-12 21:10:16', '2018-08-12 18:10:16', '', 20, 'http://cndeveloper.loc/product/ship-your-idea-2/', 0, 'product_variation', '', 0),
(70, 1, '2018-08-12 21:10:16', '2018-08-12 18:10:16', '', 'Ship Your Idea - Black, L', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-black-l', '', '', '2018-08-12 21:10:16', '2018-08-12 18:10:16', '', 20, 'http://cndeveloper.loc/product/ship-your-idea-2/', 0, 'product_variation', '', 0),
(71, 1, '2018-08-12 21:10:17', '2018-08-12 18:10:17', '', 'T_7_front.jpg', '', 'inherit', 'open', 'closed', '', 't_7_front-jpg', '', '', '2018-08-12 21:10:17', '2018-08-12 18:10:17', '', 22, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_7_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-08-12 21:10:19', '2018-08-12 18:10:19', '', 'T_7_back.jpg', '', 'inherit', 'open', 'closed', '', 't_7_back-jpg', '', '', '2018-08-12 21:10:19', '2018-08-12 18:10:19', '', 22, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_7_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-08-12 21:10:20', '2018-08-12 18:10:20', '', 'T_6_front.jpg', '', 'inherit', 'open', 'closed', '', 't_6_front-jpg', '', '', '2018-08-12 21:10:20', '2018-08-12 18:10:20', '', 16, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_6_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-08-12 21:10:22', '2018-08-12 18:10:22', '', 'T_6_back.jpg', '', 'inherit', 'open', 'closed', '', 't_6_back-jpg', '', '', '2018-08-12 21:10:22', '2018-08-12 18:10:22', '', 16, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_6_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-08-12 21:10:24', '2018-08-12 18:10:24', '', 'T_5_front.jpg', '', 'inherit', 'open', 'closed', '', 't_5_front-jpg', '', '', '2018-08-12 21:10:24', '2018-08-12 18:10:24', '', 21, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_5_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-08-12 21:10:26', '2018-08-12 18:10:26', '', 'T_5_back.jpg', '', 'inherit', 'open', 'closed', '', 't_5_back-jpg', '', '', '2018-08-12 21:10:26', '2018-08-12 18:10:26', '', 21, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_5_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2018-08-12 21:10:27', '2018-08-12 18:10:27', '', 'T_4_front.jpg', '', 'inherit', 'open', 'closed', '', 't_4_front-jpg', '', '', '2018-08-12 21:10:27', '2018-08-12 18:10:27', '', 19, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_4_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-08-12 21:10:29', '2018-08-12 18:10:29', '', 'T_3_back.jpg', '', 'inherit', 'open', 'closed', '', 't_3_back-jpg', '', '', '2018-08-12 21:10:29', '2018-08-12 18:10:29', '', 19, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_3_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2018-08-12 21:10:30', '2018-08-12 18:10:30', '', 'T_3_front.jpg', '', 'inherit', 'open', 'closed', '', 't_3_front-jpg', '', '', '2018-08-12 21:10:30', '2018-08-12 18:10:30', '', 19, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_3_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-08-12 21:10:31', '2018-08-12 18:10:31', '', 'T_4_back.jpg', '', 'inherit', 'open', 'closed', '', 't_4_back-jpg', '', '', '2018-08-12 21:10:31', '2018-08-12 18:10:31', '', 19, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_4_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-08-12 21:10:33', '2018-08-12 18:10:33', '', 'T_4_front1.jpg', '', 'inherit', 'open', 'closed', '', 't_4_front1-jpg', '', '', '2018-08-12 21:10:33', '2018-08-12 18:10:33', '', 19, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_4_front1.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-08-12 21:10:34', '2018-08-12 18:10:34', '', 'Ship Your Idea - Green', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-green', '', '', '2018-08-12 21:10:34', '2018-08-12 18:10:34', '', 19, 'http://cndeveloper.loc/product/ship-your-idea-3/', 0, 'product_variation', '', 0),
(83, 1, '2018-08-12 21:10:34', '2018-08-12 18:10:34', '', 'Ship Your Idea - Black', '', 'publish', 'closed', 'closed', '', 'ship-your-idea-black', '', '', '2018-08-12 21:10:34', '2018-08-12 18:10:34', '', 19, 'http://cndeveloper.loc/product/ship-your-idea-3/', 0, 'product_variation', '', 0),
(84, 1, '2018-08-12 21:10:35', '2018-08-12 18:10:35', '', 'T_2_front.jpg', '', 'inherit', 'open', 'closed', '', 't_2_front-jpg', '', '', '2018-08-12 21:10:35', '2018-08-12 18:10:35', '', 18, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_2_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2018-08-12 21:10:36', '2018-08-12 18:10:36', '', 'T_2_back.jpg', '', 'inherit', 'open', 'closed', '', 't_2_back-jpg', '', '', '2018-08-12 21:10:36', '2018-08-12 18:10:36', '', 18, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_2_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2018-08-12 21:10:37', '2018-08-12 18:10:37', '', 'T_1_front.jpg', '', 'inherit', 'open', 'closed', '', 't_1_front-jpg', '', '', '2018-08-12 21:10:37', '2018-08-12 18:10:37', '', 14, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_1_front.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2018-08-12 21:10:39', '2018-08-12 18:10:39', '', 'T_1_back.jpg', '', 'inherit', 'open', 'closed', '', 't_1_back-jpg', '', '', '2018-08-12 21:10:39', '2018-08-12 18:10:39', '', 14, 'http://cndeveloper.loc/wp-content/uploads/2018/08/T_1_back.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2018-08-12 21:23:34', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:23:34', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=88', 0, 'movies', '', 0),
(89, 1, '2018-08-12 21:23:39', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:23:39', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=89', 0, 'movies', '', 0),
(90, 1, '2018-08-12 21:23:41', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:23:41', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=90', 0, 'movies', '', 0),
(91, 1, '2018-08-12 21:26:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:26:35', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=91', 0, 'movies', '', 0),
(92, 1, '2018-08-12 21:27:30', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:27:30', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=92', 0, 'movies', '', 0),
(93, 1, '2018-08-12 21:27:41', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:27:41', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=93', 0, 'movies', '', 0),
(94, 1, '2018-08-12 21:27:47', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:27:47', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?page_id=94', 0, 'page', '', 0),
(95, 1, '2018-08-12 21:27:51', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:27:51', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=95', 0, 'movies', '', 0),
(96, 1, '2018-08-12 21:30:42', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:30:42', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=96', 0, 'movies', '', 0),
(97, 1, '2018-08-12 21:31:10', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:31:10', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=97', 0, 'movies', '', 0),
(98, 1, '2018-08-12 21:32:10', '0000-00-00 00:00:00', '', 'd', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:32:10', '2018-08-12 18:32:10', '', 0, 'http://cndeveloper.loc/?post_type=movies&#038;p=98', 0, 'movies', '', 0),
(99, 1, '2018-08-12 21:32:43', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:32:43', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=99', 0, 'movies', '', 0),
(100, 1, '2018-08-12 21:33:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:33:39', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=100', 0, 'movies', '', 0),
(101, 1, '2018-08-12 21:33:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:33:49', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=101', 0, 'movies', '', 0),
(102, 1, '2018-08-12 21:34:43', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-08-12 21:34:43', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=product&p=102', 0, 'product', '', 0),
(103, 1, '2018-08-12 21:40:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:40:56', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=103', 0, 'movies', '', 0),
(104, 1, '2018-08-12 21:41:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:41:10', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=104', 0, 'movies', '', 0),
(105, 1, '2018-08-12 21:41:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:41:17', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=105', 0, 'movies', '', 0),
(106, 1, '2018-08-12 21:41:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:41:17', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=106', 0, 'movies', '', 0),
(107, 1, '2018-08-12 21:41:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-12 21:41:23', '0000-00-00 00:00:00', '', 0, 'http://cndeveloper.loc/?post_type=movies&p=107', 0, 'movies', '', 0),
(108, 1, '2018-08-12 21:43:09', '2018-08-12 18:43:09', 'Content', 'Movie1', '', 'publish', 'closed', 'closed', '', 'movie1', '', '', '2018-08-13 11:55:28', '2018-08-13 08:55:28', '', 0, 'http://cndeveloper.loc/?post_type=movies&#038;p=108', 0, 'movies', '', 0),
(109, 1, '2018-08-12 22:31:24', '2018-08-12 19:31:24', ' ', '', '', 'publish', 'closed', 'closed', '', '109', '', '', '2018-08-13 11:54:12', '2018-08-13 08:54:12', '', 0, 'http://cndeveloper.loc/?p=109', 1, 'nav_menu_item', '', 0),
(110, 1, '2018-08-12 22:31:24', '2018-08-12 19:31:24', ' ', '', '', 'publish', 'closed', 'closed', '', '110', '', '', '2018-08-13 11:54:12', '2018-08-13 08:54:12', '', 0, 'http://cndeveloper.loc/?p=110', 2, 'nav_menu_item', '', 0),
(111, 1, '2018-08-12 22:31:24', '2018-08-12 19:31:24', ' ', '', '', 'publish', 'closed', 'closed', '', '111', '', '', '2018-08-13 11:54:12', '2018-08-13 08:54:12', '', 0, 'http://cndeveloper.loc/?p=111', 3, 'nav_menu_item', '', 0),
(112, 1, '2018-08-12 22:31:24', '2018-08-12 19:31:24', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2018-08-13 11:54:12', '2018-08-13 08:54:12', '', 0, 'http://cndeveloper.loc/?p=112', 4, 'nav_menu_item', '', 0),
(113, 1, '2018-08-12 22:31:39', '2018-08-12 19:31:39', '[woocommerce_cart]', 'Cart', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-08-12 22:31:39', '2018-08-12 19:31:39', '', 5, 'http://cndeveloper.loc/2018/08/12/5-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-08-12 22:31:44', '2018-08-12 19:31:44', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-08-12 22:31:44', '2018-08-12 19:31:44', '', 4, 'http://cndeveloper.loc/2018/08/12/4-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-08-12 22:31:50', '2018-08-12 19:31:50', '[woocommerce_my_account]', 'Account', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-08-12 22:31:50', '2018-08-12 19:31:50', '', 7, 'http://cndeveloper.loc/2018/08/12/7-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-08-12 22:31:56', '2018-08-12 19:31:56', '[woocommerce_checkout]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-08-12 22:31:56', '2018-08-12 19:31:56', '', 6, 'http://cndeveloper.loc/2018/08/12/6-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-08-12 22:31:58', '2018-08-12 19:31:58', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://cndeveloper.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-12 22:31:58', '2018-08-12 19:31:58', '', 2, 'http://cndeveloper.loc/2018/08/12/2-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-08-13 11:54:12', '2018-08-13 08:54:12', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2018-08-13 11:54:12', '2018-08-13 08:54:12', '', 0, 'http://cndeveloper.loc/?p=118', 5, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '0'),
(2, 17, 'order', '0'),
(3, 15, 'product_count_product_cat', '0'),
(4, 18, 'order', '0'),
(5, 19, 'order', '0'),
(6, 20, 'order', '0'),
(7, 21, 'order', '0'),
(8, 22, 'order', '0'),
(9, 16, 'product_count_product_cat', '7'),
(10, 17, 'product_count_product_cat', '3'),
(11, 18, 'product_count_product_cat', '4'),
(12, 19, 'product_count_product_cat', '5'),
(13, 20, 'product_count_product_cat', '12'),
(14, 21, 'product_count_product_cat', '6'),
(15, 23, 'order_pa_color', '0'),
(16, 24, 'order_pa_color', '0'),
(17, 22, 'product_count_product_cat', '6'),
(18, 25, 'order_pa_color', '0');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Music', 'music', 0),
(17, 'Singles', 'singles', 0),
(18, 'Albums', 'albums', 0),
(19, 'Posters', 'posters', 0),
(20, 'Clothing', 'clothing', 0),
(21, 'Hoodies', 'hoodies', 0),
(22, 'T-shirts', 't-shirts', 0),
(23, 'Black', 'black', 0),
(24, 'Blue', 'blue', 0),
(25, 'Green', 'green', 0),
(26, 'Top', 'top', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(9, 16, 0),
(9, 17, 0),
(10, 2, 0),
(10, 16, 0),
(10, 17, 0),
(11, 2, 0),
(11, 16, 0),
(11, 18, 0),
(12, 2, 0),
(12, 16, 0),
(12, 18, 0),
(13, 2, 0),
(13, 16, 0),
(13, 18, 0),
(14, 2, 0),
(14, 20, 0),
(14, 22, 0),
(15, 2, 0),
(15, 20, 0),
(15, 21, 0),
(16, 2, 0),
(16, 20, 0),
(16, 22, 0),
(17, 2, 0),
(17, 20, 0),
(17, 21, 0),
(18, 2, 0),
(18, 20, 0),
(18, 22, 0),
(19, 4, 0),
(19, 20, 0),
(19, 22, 0),
(19, 23, 0),
(19, 25, 0),
(20, 4, 0),
(20, 20, 0),
(20, 21, 0),
(20, 23, 0),
(20, 24, 0),
(21, 2, 0),
(21, 20, 0),
(21, 22, 0),
(22, 2, 0),
(22, 20, 0),
(22, 22, 0),
(23, 2, 0),
(23, 20, 0),
(23, 21, 0),
(24, 5, 0),
(24, 20, 0),
(24, 21, 0),
(29, 3, 0),
(29, 16, 0),
(29, 17, 0),
(32, 2, 0),
(32, 16, 0),
(32, 18, 0),
(41, 2, 0),
(41, 19, 0),
(44, 2, 0),
(44, 19, 0),
(47, 2, 0),
(47, 19, 0),
(50, 2, 0),
(50, 19, 0),
(53, 2, 0),
(53, 19, 0),
(62, 2, 0),
(62, 20, 0),
(62, 21, 0),
(108, 20, 0),
(109, 26, 0),
(110, 26, 0),
(111, 26, 0),
(112, 26, 0),
(118, 26, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 20),
(3, 3, 'product_type', '', 0, 1),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 1),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 7),
(17, 17, 'product_cat', '', 16, 3),
(18, 18, 'product_cat', '', 16, 4),
(19, 19, 'product_cat', '', 0, 5),
(20, 20, 'product_cat', '', 0, 13),
(21, 21, 'product_cat', '', 20, 6),
(22, 22, 'product_cat', '', 20, 6),
(23, 23, 'pa_color', '', 0, 2),
(24, 24, 'pa_color', '', 0, 1),
(25, 25, 'pa_color', '', 0, 1),
(26, 26, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:2:{s:64:\"ec2d6b8f853837aed6f4fec0bbf372be487c158663bcdf2f24044da36271cba0\";a:4:{s:10:\"expiration\";i:1535306545;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1534096945;}s:64:\"5c2311ec5b6d2724e09c6151df62652c6b1cc7e39f1e1231014d8235b0863ef3\";a:4:{s:10:\"expiration\";i:1534323201;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1534150401;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'wp_woocommerce_product_import_mapping', 'a:47:{i:0;s:4:\"type\";i:1;s:3:\"sku\";i:2;s:4:\"name\";i:3;s:9:\"published\";i:4;s:8:\"featured\";i:5;s:18:\"catalog_visibility\";i:6;s:17:\"short_description\";i:7;s:11:\"description\";i:8;s:17:\"date_on_sale_from\";i:9;s:15:\"date_on_sale_to\";i:10;s:9:\"tax_class\";i:11;s:12:\"stock_status\";i:12;s:14:\"stock_quantity\";i:13;s:10:\"backorders\";i:14;s:17:\"sold_individually\";i:15;s:6:\"weight\";i:16;s:6:\"length\";i:17;s:5:\"width\";i:18;s:6:\"height\";i:19;s:15:\"reviews_allowed\";i:20;s:13:\"purchase_note\";i:21;s:10:\"sale_price\";i:22;s:13:\"regular_price\";i:23;s:12:\"category_ids\";i:24;s:7:\"tag_ids\";i:25;s:17:\"shipping_class_id\";i:26;s:6:\"images\";i:27;s:14:\"download_limit\";i:28;s:15:\"download_expiry\";i:29;s:9:\"parent_id\";i:30;s:16:\"grouped_products\";i:31;s:10:\"upsell_ids\";i:32;s:14:\"cross_sell_ids\";i:33;s:11:\"product_url\";i:34;s:11:\"button_text\";i:35;s:15:\"downloads:name1\";i:36;s:14:\"downloads:url1\";i:37;s:16:\"attributes:name1\";i:38;s:17:\"attributes:value1\";i:39;s:19:\"attributes:visible1\";i:40;s:20:\"attributes:taxonomy1\";i:41;s:16:\"attributes:name2\";i:42;s:17:\"attributes:value2\";i:43;s:19:\"attributes:visible2\";i:44;s:20:\"attributes:taxonomy2\";i:45;s:19:\"attributes:default1\";i:46;s:19:\"attributes:default2\";}'),
(18, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:3:{s:32:\"c0c7c76d30bd3dcaefc96f40275bdc0a\";a:11:{s:3:\"key\";s:32:\"c0c7c76d30bd3dcaefc96f40275bdc0a\";s:10:\"product_id\";i:50;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:7;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:84;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:84;s:8:\"line_tax\";i:0;}s:32:\"67c6a1e7ce56d3d6fa748ab6d9af3fd7\";a:11:{s:3:\"key\";s:32:\"67c6a1e7ce56d3d6fa748ab6d9af3fd7\";s:10:\"product_id\";i:47;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:12;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:12;s:8:\"line_tax\";i:0;}s:32:\"a3c65c2974270fd093ee8a9bf8ae7d0b\";a:11:{s:3:\"key\";s:32:\"a3c65c2974270fd093ee8a9bf8ae7d0b\";s:10:\"product_id\";i:108;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:102;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:102;s:8:\"line_tax\";i:0;}}}'),
(19, 1, 'wp_product_import_error_log', 'a:0:{}'),
(20, 1, 'wc_last_active', '1534118400'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1534102063'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";}'),
(25, 1, 'dismissed_no_secure_connection_notice', '1'),
(26, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(27, 2, 'nickname', 'ds'),
(28, 2, 'first_name', ''),
(29, 2, 'last_name', ''),
(30, 2, 'description', ''),
(31, 2, 'rich_editing', 'true'),
(32, 2, 'syntax_highlighting', 'true'),
(33, 2, 'comment_shortcuts', 'false'),
(34, 2, 'admin_color', 'fresh'),
(35, 2, 'use_ssl', '0'),
(36, 2, 'show_admin_bar_front', 'true'),
(37, 2, 'locale', ''),
(38, 2, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(39, 2, 'wp_user_level', '0'),
(40, 2, 'skype', 'asdsad'),
(42, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(43, 2, 'wc_last_active', '1534118400'),
(44, 1, 'nav_menu_recently_edited', '26'),
(45, 1, 'closedpostboxes_nav-menus', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BgjzWWvK8SrmlHSpO8h6IDPf4miHsN1', 'admin', 'dimpa91@rambler.ru', '', '2018-08-12 18:02:24', '', 0, 'admin'),
(2, 'ds', '$P$BGKRpxOdJMsMfvrq0us5suxv4lhEw51', 'ds', 'ds@ds.ds', '', '2018-08-13 08:42:32', '', 0, 'ds');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(23, '1', 'a:13:{s:4:\"cart\";s:1221:\"a:3:{s:32:\"c0c7c76d30bd3dcaefc96f40275bdc0a\";a:11:{s:3:\"key\";s:32:\"c0c7c76d30bd3dcaefc96f40275bdc0a\";s:10:\"product_id\";i:50;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:7;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:84;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:84;s:8:\"line_tax\";i:0;}s:32:\"67c6a1e7ce56d3d6fa748ab6d9af3fd7\";a:11:{s:3:\"key\";s:32:\"67c6a1e7ce56d3d6fa748ab6d9af3fd7\";s:10:\"product_id\";i:47;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:12;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:12;s:8:\"line_tax\";i:0;}s:32:\"a3c65c2974270fd093ee8a9bf8ae7d0b\";a:11:{s:3:\"key\";s:32:\"a3c65c2974270fd093ee8a9bf8ae7d0b\";s:10:\"product_id\";i:108;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:102;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:102;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:408:\"a:15:{s:8:\"subtotal\";s:6:\"198.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"1.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"198.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"199.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:708:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:1:\"*\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:1:\"*\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:18:\"dimpa91@rambler.ru\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:22:\"shipping_for_package_0\";s:440:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_2fbd1076d295b73d1ef633edc0f8cb35\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:25:\"Единая ставка\";s:4:\"cost\";s:4:\"1.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:67:\"Flying Ninja &times; 7, Premium Quality &times; 1, Movie1 &times; 3\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:10:\"wc_notices\";N;s:21:\"chosen_payment_method\";s:0:\"\";}', 1534323215),
(21, '2', 'a:1:{s:8:\"customer\";s:695:\"a:26:{s:2:\"id\";s:1:\"2\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"UA\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"UA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:8:\"ds@ds.ds\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1534322950),
(13, '4bdf4c930885c8d59468a9172698ac5d', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"UA\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"UA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1534322552);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Великобритания', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'GB', 'country');

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Індекси таблиці `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Індекси таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Індекси таблиці `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Індекси таблиці `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Індекси таблиці `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Індекси таблиці `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Індекси таблиці `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Індекси таблиці `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Індекси таблиці `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Індекси таблиці `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Індекси таблиці `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Індекси таблиці `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Індекси таблиці `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Індекси таблиці `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Індекси таблиці `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Індекси таблиці `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Індекси таблиці `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;
--
-- AUTO_INCREMENT для таблиці `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1213;
--
-- AUTO_INCREMENT для таблиці `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT для таблиці `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблиці `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблиці `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблиці `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT для таблиці `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблиці `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
