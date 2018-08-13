<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'nin2');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost:3307');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '.`/:|sz1W`@C`3.mX0~*t(nKowL3!z=_2st(DJP[,$Bc{ke)E<cI6<^xR(S!4);l');
define('SECURE_AUTH_KEY',  '@2kX2kuaZ6{t*5:HxO{)PbN!c#^gcXI=vm>c5k#c{;=m#qWw~6;L7?ci%&|QrWDT');
define('LOGGED_IN_KEY',    'dtW]o,o3U+`NhBEI)u|i(,OEy!/m$&h$5@i}%tQg(dv~W*{ ,?vV0*1Z-q&H8?dJ');
define('NONCE_KEY',        'jF[*Xdvk$im~DkP2i%J$1zz)f[4ECuaiB)g7>,a$bo(/83K?u>N:NLQk wFt[} W');
define('AUTH_SALT',        'l7{=oQ`tjN~*$W=LM@ /V6D>-<>9nY$`Z)C<CRfLwhx(~9B<C-r]pz8/l7k560?x');
define('SECURE_AUTH_SALT', 'ooM952l|N@7z{nyv7Q,U+2=jo@Mpu/;-u8TAYC?7G0RthhbNf{L}x3Bsiwb[cy!e');
define('LOGGED_IN_SALT',   'zwkGw}9rCuXH4)Q+Sf-isP4w;*ru#>;YJ3 ZFSw027P&|opu~H%[)dIE~zet%*fM');
define('NONCE_SALT',       'j#pGw7jAb.^_k;DNO/|0<@Bg^XR r9!Y^aIEbJ^OA6}Rx@qy7 nVu4T}:xRrn2 ^');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 * 
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
