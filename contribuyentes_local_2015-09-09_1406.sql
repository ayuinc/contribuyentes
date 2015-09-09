-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2015 a las 21:03:45
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contribuyentes_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_accessories`
--

CREATE TABLE IF NOT EXISTS `exp_accessories` (
  `accessory_id` int(10) unsigned NOT NULL,
  `class` varchar(75) NOT NULL DEFAULT '',
  `member_groups` varchar(255) NOT NULL DEFAULT 'all',
  `controllers` text,
  `accessory_version` varchar(12) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_accessories`
--

INSERT INTO `exp_accessories` (`accessory_id`, `class`, `member_groups`, `controllers`, `accessory_version`) VALUES
(1, 'Expressionengine_info_acc', '1|5', 'myaccount|admin_system|tools_logs|addons_modules|admin_content|content_edit|tools_utilities|addons_extensions|members|content|tools|addons_plugins|addons_accessories|addons_fieldtypes|content_files|homepage|tools_communicate|tools_data|content_publish|addons|content_files_modal|design', '1.0'),
(2, 'Nsm_morphine_theme_acc', '1|5', 'myaccount|admin_system|tools_logs|addons_modules|admin_content|content_edit|tools_utilities|addons_extensions|members|content|tools|addons_plugins|addons_accessories|addons_fieldtypes|content_files|homepage|tools_communicate|tools_data|content_publish|addons|content_files_modal|design', '2.0.4'),
(3, 'Freeform_acc', '1|5', 'myaccount|admin_system|tools_logs|addons_modules|admin_content|content_edit|tools_utilities|addons_extensions|members|content|tools|addons_plugins|addons_accessories|addons_fieldtypes|content_files|homepage|tools_communicate|tools_data|content_publish|addons|content_files_modal|design', '4.2.2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_actions`
--

CREATE TABLE IF NOT EXISTS `exp_actions` (
  `action_id` int(4) unsigned NOT NULL,
  `class` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `csrf_exempt` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_actions`
--

INSERT INTO `exp_actions` (`action_id`, `class`, `method`, `csrf_exempt`) VALUES
(1, 'Comment', 'insert_new_comment', 0),
(2, 'Comment_mcp', 'delete_comment_notification', 0),
(3, 'Comment', 'comment_subscribe', 0),
(4, 'Comment', 'edit_comment', 0),
(5, 'Metaweblog_api', 'incoming', 1),
(6, 'Search', 'do_search', 1),
(7, 'Channel', 'submit_entry', 0),
(8, 'Channel', 'filemanager_endpoint', 0),
(9, 'Channel', 'smiley_pop', 0),
(10, 'Channel', 'combo_loader', 0),
(11, 'Rte', 'get_js', 0),
(12, 'Importer', 'ajax_connnection_test', 1),
(13, 'Importer', 'cron_import', 1),
(14, 'Importer', 'batch_import', 1),
(15, 'Importer', 'import_statistics', 1),
(16, 'Channel_images', 'channel_images_router', 1),
(17, 'Channel_images', 'locked_image_url', 0),
(18, 'Channel_images', 'simple_image_url', 0),
(19, 'Freeform', 'save_form', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_captcha`
--

CREATE TABLE IF NOT EXISTS `exp_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_categories`
--

CREATE TABLE IF NOT EXISTS `exp_categories` (
  `cat_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `parent_id` int(4) unsigned NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_url_title` varchar(75) NOT NULL,
  `cat_description` text,
  `cat_image` varchar(120) DEFAULT NULL,
  `cat_order` int(4) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_category_fields`
--

CREATE TABLE IF NOT EXISTS `exp_category_fields` (
  `field_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `field_label` varchar(50) NOT NULL DEFAULT '',
  `field_type` varchar(12) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_maxl` smallint(3) NOT NULL DEFAULT '128',
  `field_ta_rows` tinyint(2) NOT NULL DEFAULT '8',
  `field_default_fmt` varchar(40) NOT NULL DEFAULT 'none',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_order` int(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_category_field_data`
--

CREATE TABLE IF NOT EXISTS `exp_category_field_data` (
  `cat_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_category_groups`
--

CREATE TABLE IF NOT EXISTS `exp_category_groups` (
  `group_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `sort_order` char(1) NOT NULL DEFAULT 'a',
  `exclude_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `can_edit_categories` text,
  `can_delete_categories` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_category_posts`
--

CREATE TABLE IF NOT EXISTS `exp_category_posts` (
  `entry_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channels`
--

CREATE TABLE IF NOT EXISTS `exp_channels` (
  `channel_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_name` varchar(40) NOT NULL,
  `channel_title` varchar(100) NOT NULL,
  `channel_url` varchar(100) NOT NULL,
  `channel_description` varchar(255) DEFAULT NULL,
  `channel_lang` varchar(12) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `cat_group` varchar(255) DEFAULT NULL,
  `status_group` int(4) unsigned DEFAULT NULL,
  `deft_status` varchar(50) NOT NULL DEFAULT 'open',
  `field_group` int(4) unsigned DEFAULT NULL,
  `search_excerpt` int(4) unsigned DEFAULT NULL,
  `deft_category` varchar(60) DEFAULT NULL,
  `deft_comments` char(1) NOT NULL DEFAULT 'y',
  `channel_require_membership` char(1) NOT NULL DEFAULT 'y',
  `channel_max_chars` int(5) unsigned DEFAULT NULL,
  `channel_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `channel_allow_img_urls` char(1) NOT NULL DEFAULT 'y',
  `channel_auto_link_urls` char(1) NOT NULL DEFAULT 'n',
  `channel_notify` char(1) NOT NULL DEFAULT 'n',
  `channel_notify_emails` varchar(255) DEFAULT NULL,
  `comment_url` varchar(80) DEFAULT NULL,
  `comment_system_enabled` char(1) NOT NULL DEFAULT 'y',
  `comment_require_membership` char(1) NOT NULL DEFAULT 'n',
  `comment_use_captcha` char(1) NOT NULL DEFAULT 'n',
  `comment_moderate` char(1) NOT NULL DEFAULT 'n',
  `comment_max_chars` int(5) unsigned DEFAULT '5000',
  `comment_timelock` int(5) unsigned NOT NULL DEFAULT '0',
  `comment_require_email` char(1) NOT NULL DEFAULT 'y',
  `comment_text_formatting` char(5) NOT NULL DEFAULT 'xhtml',
  `comment_html_formatting` char(4) NOT NULL DEFAULT 'safe',
  `comment_allow_img_urls` char(1) NOT NULL DEFAULT 'n',
  `comment_auto_link_urls` char(1) NOT NULL DEFAULT 'y',
  `comment_notify` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_authors` char(1) NOT NULL DEFAULT 'n',
  `comment_notify_emails` varchar(255) DEFAULT NULL,
  `comment_expiration` int(4) unsigned NOT NULL DEFAULT '0',
  `search_results_url` varchar(80) DEFAULT NULL,
  `show_button_cluster` char(1) NOT NULL DEFAULT 'y',
  `rss_url` varchar(80) DEFAULT NULL,
  `enable_versioning` char(1) NOT NULL DEFAULT 'n',
  `max_revisions` smallint(4) unsigned NOT NULL DEFAULT '10',
  `default_entry_title` varchar(100) DEFAULT NULL,
  `url_title_prefix` varchar(80) DEFAULT NULL,
  `live_look_template` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_channels`
--

INSERT INTO `exp_channels` (`channel_id`, `site_id`, `channel_name`, `channel_title`, `channel_url`, `channel_description`, `channel_lang`, `total_entries`, `total_comments`, `last_entry_date`, `last_comment_date`, `cat_group`, `status_group`, `deft_status`, `field_group`, `search_excerpt`, `deft_category`, `deft_comments`, `channel_require_membership`, `channel_max_chars`, `channel_html_formatting`, `channel_allow_img_urls`, `channel_auto_link_urls`, `channel_notify`, `channel_notify_emails`, `comment_url`, `comment_system_enabled`, `comment_require_membership`, `comment_use_captcha`, `comment_moderate`, `comment_max_chars`, `comment_timelock`, `comment_require_email`, `comment_text_formatting`, `comment_html_formatting`, `comment_allow_img_urls`, `comment_auto_link_urls`, `comment_notify`, `comment_notify_authors`, `comment_notify_emails`, `comment_expiration`, `search_results_url`, `show_button_cluster`, `rss_url`, `enable_versioning`, `max_revisions`, `default_entry_title`, `url_title_prefix`, `live_look_template`) VALUES
(1, 1, 'homepage', 'Homepage', 'http://104.236.244.65/index.php', NULL, 'en', 1, 0, 1427662200, 0, '', 1, 'open', 1, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(2, 1, 'alianzas', 'Alianzas', 'http://104.236.244.65/index.php', NULL, 'en', 3, 0, 1429026840, 0, '', 1, 'open', 2, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(3, 1, 'novedades', 'Novedades', 'http://104.236.244.65/index.php', NULL, 'en', 10, 0, 1441229040, 0, '', 1, 'open', 3, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(4, 1, 'area_de_trabajo', 'Area de Trabajo', 'http://104.236.244.65/index.php', NULL, 'en', 1, 0, 1439599200, 0, '', 1, 'open', 4, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(5, 1, 'equipo', 'Equipo', 'http://104.236.244.65/index.php', NULL, 'en', 3, 0, 1439599560, 0, '', 1, 'open', 5, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(6, 1, 'asociados', 'Asociados', 'http://104.236.244.65/index.php', NULL, 'en', 4, 0, 1439599740, 0, '', 1, 'open', 6, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(7, 1, 'costo_beneficio', 'Costo Beneficio', 'http://104.236.244.65/index.php', NULL, 'en', 1, 0, 1430253120, 0, '', NULL, 'open', 8, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(10, 1, 'somos_contribuyentes', 'Somos contribuyentes', 'http://104.236.244.65/index.php', NULL, 'en', 1, 0, 1439591460, 0, '', NULL, 'open', 10, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(9, 1, 'boletin_costo_beneficio', 'Boletin Costo Beneficio', 'http://104.236.244.65/index.php', NULL, 'en', 13, 0, 1439602080, 0, '', 1, 'open', 9, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(11, 1, 'caricaturas', 'Caricaturas', 'http://104.236.244.65/', NULL, 'en', 101, 0, 1439593649, 0, '', 1, 'open', 12, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(12, 1, 'colaboradores', 'Colaboradores', 'http://104.236.244.65/', NULL, 'en', 1, 0, 1439600220, 0, '', NULL, 'open', 13, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(13, 1, 'investigacion', 'Investigacion', 'http://104.236.244.65/', NULL, 'en', 1, 0, 1439600820, 0, '', NULL, 'open', 14, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(14, 1, 'policy_notes', 'Policy Notes', 'http://104.236.244.65/', NULL, 'en', 2, 0, 1441319460, 0, '', NULL, 'open', 15, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0),
(15, 1, 'metatags', 'Metatags', 'http://104.236.244.65/', NULL, 'en', 1, 0, 1440087240, 0, '', NULL, 'open', 16, NULL, NULL, 'y', 'y', NULL, 'all', 'y', 'n', 'n', NULL, NULL, 'y', 'n', 'n', 'n', 5000, 0, 'y', 'xhtml', 'safe', 'n', 'y', 'n', 'n', NULL, 0, NULL, 'y', NULL, 'n', 10, '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_data`
--

CREATE TABLE IF NOT EXISTS `exp_channel_data` (
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `field_id_1` text,
  `field_ft_1` tinytext,
  `field_id_2` text,
  `field_ft_2` tinytext,
  `field_id_3` text,
  `field_ft_3` tinytext,
  `field_id_4` text,
  `field_ft_4` tinytext,
  `field_id_5` text,
  `field_ft_5` tinytext,
  `field_id_6` text,
  `field_ft_6` tinytext,
  `field_id_7` text,
  `field_ft_7` tinytext,
  `field_id_8` text,
  `field_ft_8` tinytext,
  `field_id_9` text,
  `field_ft_9` tinytext,
  `field_id_10` text,
  `field_ft_10` tinytext,
  `field_id_11` text,
  `field_ft_11` tinytext,
  `field_id_12` text,
  `field_ft_12` tinytext,
  `field_id_13` text,
  `field_ft_13` tinytext,
  `field_id_14` text,
  `field_ft_14` tinytext,
  `field_id_15` text,
  `field_ft_15` tinytext,
  `field_id_16` text,
  `field_ft_16` tinytext,
  `field_id_17` text,
  `field_ft_17` tinytext,
  `field_id_18` text,
  `field_ft_18` tinytext,
  `field_id_19` text,
  `field_ft_19` tinytext,
  `field_id_20` text,
  `field_ft_20` tinytext,
  `field_id_21` text,
  `field_ft_21` tinytext,
  `field_id_22` text,
  `field_ft_22` tinytext,
  `field_id_23` text,
  `field_ft_23` tinytext,
  `field_id_24` text,
  `field_ft_24` tinytext,
  `field_id_30` text,
  `field_ft_30` tinytext,
  `field_id_31` text,
  `field_ft_31` tinytext,
  `field_id_32` text,
  `field_ft_32` tinytext,
  `field_id_33` text,
  `field_ft_33` tinytext,
  `field_id_34` text,
  `field_ft_34` tinytext,
  `field_id_35` text,
  `field_ft_35` tinytext,
  `field_id_36` text,
  `field_ft_36` tinytext,
  `field_id_37` text,
  `field_ft_37` tinytext,
  `field_id_38` text,
  `field_ft_38` tinytext,
  `field_id_39` text,
  `field_ft_39` tinytext,
  `field_id_40` text,
  `field_ft_40` tinytext,
  `field_id_47` text,
  `field_ft_47` tinytext,
  `field_id_48` text,
  `field_ft_48` tinytext,
  `field_id_49` text,
  `field_ft_49` tinytext,
  `field_id_50` text,
  `field_ft_50` tinytext,
  `field_id_51` text,
  `field_ft_51` tinytext,
  `field_id_52` text,
  `field_ft_52` tinytext,
  `field_id_53` text,
  `field_ft_53` tinytext,
  `field_id_54` text,
  `field_ft_54` tinytext,
  `field_id_55` text,
  `field_ft_55` tinytext,
  `field_id_56` text,
  `field_ft_56` tinytext,
  `field_id_57` text,
  `field_ft_57` tinytext,
  `field_id_58` text,
  `field_ft_58` tinytext,
  `field_id_59` text,
  `field_ft_59` tinytext,
  `field_id_60` text,
  `field_ft_60` tinytext,
  `field_id_61` text,
  `field_ft_61` tinytext,
  `field_id_62` text,
  `field_ft_62` tinytext,
  `field_id_63` text,
  `field_ft_63` tinytext,
  `field_id_64` text,
  `field_ft_64` tinytext,
  `field_id_65` text,
  `field_ft_65` tinytext,
  `field_id_66` text,
  `field_ft_66` tinytext,
  `field_id_68` text,
  `field_ft_68` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_channel_data`
--

INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`, `field_id_15`, `field_ft_15`, `field_id_16`, `field_ft_16`, `field_id_17`, `field_ft_17`, `field_id_18`, `field_ft_18`, `field_id_19`, `field_ft_19`, `field_id_20`, `field_ft_20`, `field_id_21`, `field_ft_21`, `field_id_22`, `field_ft_22`, `field_id_23`, `field_ft_23`, `field_id_24`, `field_ft_24`, `field_id_30`, `field_ft_30`, `field_id_31`, `field_ft_31`, `field_id_32`, `field_ft_32`, `field_id_33`, `field_ft_33`, `field_id_34`, `field_ft_34`, `field_id_35`, `field_ft_35`, `field_id_36`, `field_ft_36`, `field_id_37`, `field_ft_37`, `field_id_38`, `field_ft_38`, `field_id_39`, `field_ft_39`, `field_id_40`, `field_ft_40`, `field_id_47`, `field_ft_47`, `field_id_48`, `field_ft_48`, `field_id_49`, `field_ft_49`, `field_id_50`, `field_ft_50`, `field_id_51`, `field_ft_51`, `field_id_52`, `field_ft_52`, `field_id_53`, `field_ft_53`, `field_id_54`, `field_ft_54`, `field_id_55`, `field_ft_55`, `field_id_56`, `field_ft_56`, `field_id_57`, `field_ft_57`, `field_id_58`, `field_ft_58`, `field_id_59`, `field_ft_59`, `field_id_60`, `field_ft_60`, `field_id_61`, `field_ft_61`, `field_id_62`, `field_ft_62`, `field_id_63`, `field_ft_63`, `field_id_64`, `field_ft_64`, `field_id_65`, `field_ft_65`, `field_id_66`, `field_ft_66`, `field_id_68`, `field_ft_68`) VALUES
(1, 1, 1, 'Contribuyentes por Respeto es una asociación ciudadana independiente formada por un grupo de contribuyentes que comparte una misma visión de Estado. Buscamos y promovemos decisiones públicas basadas en los principios de libertad individual (social, política y económica), responsabilidad personal, mercados competitivos, y Estado de Derecho, porque estamos convencidos que ésta es la receta que trae mayor bienestar para todos los peruanos. \n\nNuestros principales ejes de acción son la promoción de un marco tributario transparente y justo, el desarrollo de la infraestructura necesaria para integrar los mercados y una regulación razonable.\n', 'none', 'Encuentra aquí nuestros análisis y propuestas sobre diversos problemas de políticas públicas.', 'none', 'Documentos con una investigación profunda, en la que diagnosticamos un problema de política pública y realizamos propuestas de reforma, o discutimos alguna propuesta regulatoria que puede ser interesante o contraproducente. \n\nLos temas abordados en ediciones pasadas han incluido alcohol, regulación de riesgos, transgénicos, pensiones públicas, agua y saneamiento, comisiones bancarias, control de fusiones, programas sociales, entre otros.\n', 'none', 'Documentos en los que proponemos temas para el debate o buscamos poner algún problema de política pública en la agenda.', 'none', '{filedir_1}Portal_Congreso_%28modificada%29.jpg', 'none', 'Asociación de Contribuyentes del Perú', 'none', 'Investigación. Diálogo. Impacto.', 'none', '{filedir_1}books-magazines-building-school.jpg', 'none', '{filedir_1}plaza_bolivar.jpg', 'none', 'A veces una imagen vale más que mil palabras. Encuentra aquí las caricaturas que publicamos todas las semanas, en las describimos con humor y fina ironía las regulaciones sin sentido que solemos criticar, las propuestas demagógicas de algunos políticos o algún problema actual de los contribuyentes.\n', 'none', 'En aras de lograr nuestros objetivos y lograr un mayor impacto celebramos diversas alianzas a nivel nacional e internacional.', 'none', 'Entérate de nuestras últimas publicaciones y apariciones en medios: ', 'none', 'Primis maiorum mel ei, impedit eligendi forensibus qui ea, virtute definitiones nam id. Ut pri vivendo forensibus, eos et erant mucius invenire. Cu doming nostro quaeque eam. Te eum error option, eum enim volutpat no, pro no duis constituam.', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'br', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(2, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}logo_Infrastructura_para_todos.png', 'none', 'Contribuyentes por Respeto administra el programa “Infraestructura para Todos”, en alianza con Apoyo Consultoría y AMCHAM, con la finalidad de sensibilizar al país acerca de la urgencia de\nincrementar la inversión en infraestructura a niveles\nde 7% del PBI para lograr más crecimiento, mayor\nacceso al mercado y reducir la pobreza.\n', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(7, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}pdlbanner.png', 'none', 'En alianza con ONG Hiperderecho desarrollamos \nProyectosdeley.pe, portal web te permite estar al tanto de los proyectos de Ley que se presentan en el Congreso de la República, así como consultar el estado y los documentos asociados a cada uno de ellos hasta que son aprobados por el Pleno o rechazados.', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'http://proyectosdeley.pe/', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(8, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}atlas.gif', 'none', 'Atlas Network es una organización sin fines de lucro que da soporte una red de más de 400 organizaciones pro-libre mercado en más de 80 países, proveyéndolas de ideas y recursos necesarios para defender la causa de la libertad. \n', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', 'http://atlasnetwork.org/', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(9, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}costo_beneficio.jpg', 'none', 'ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'none', '{filedir_1}photo-1416339442236-8ceb164046f8.jpg', 'none', 'Titulo 1', 'none', 'Comtenido del blog sed do eiusmod tempor incididunt ut labore et dolore magna aliqua sit ame.', 'none', '{filedir_1}photo-1416339276121-ba1dfa199912.jpg', 'none', 'Titulo del Blog 2', 'none', 'Comtenido del blog sed do eiusmod tempor incididunt ut labore et dolore magna aliqua sit ame.', 'none', '{filedir_1}photo-1421757295538-9c80958e75b0.jpg', 'none', 'Titulo del Blog 3', 'none', 'Comtenido del blog sed do eiusmod tempor incididunt ut labore et dolore magna aliqua sit ame.', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(175, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_14.png', 'none', '{filedir_1}Costo_y_Beneficio_14_pdf.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(11, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}logo_cuadrado_laboratoria.png', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(12, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', 'Como tales, queremos promover que las políticas públicas se traduzcan en mejores servicios a los ciudadanos y en marco regulatorio e institucional que favorezca el crecimiento e inclusión.&nbsp;\n\n <i>Contribuyentes por Respeto</i> es una organización ciudadana que defiende y promueve el interés público bajo los principios de libertad individual (política y económica), responsabilidad personal, mercados competitivos, y Estado de Derecho, porque estamos convencidos que ésta es la receta que trae mayor bienestar para los peruanos y que ha permitido sacar de la pobreza a casi 8 millones de personas en los últimos años.', 'xhtml', 'Un marco regulatorio inclusivo que respete los principios libertad individual (política y económica), responsabilidad personal, mercados competitivos, y Estado de Derecho, promoviendo así una mayor generación de riqueza y movilidad social.', 'none', 'Promover que las políticas públicas en el Perú se basen en la evidencia y en un adecuado análisis costo-beneficio; debatidas de manera transparente y tomando en cuenta los intereses y opiniones de todos los involucrados.', 'none', NULL, NULL, '{filedir_1}ciudadanos.jpeg', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(13, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}unnamed.jpg', 'none', 'Analizamos la performance del Congreso en base a la data de <a href="http://www.proyectosdeley.pe.">Proyectos de ley</a>.', 'none', 'Esta semana se eligió a los nuevos integrantes de las comisiones del Poder Legislativo, lo cual da inicio al último periodo o legislatura del Congreso 2011-2016. La oportunidad es propicia para evaluar los “grandes números” del Congreso actual, con la intención –capaz ingenua– de que nuestros representantes reflexionen en torno al verdadero valor del trabajo legislativo que realizan. La data proviene, en su mayoría, de www.proyectosdeley.pe, una iniciativa de Contribuyentes por Respeto e Hiperderecho.\n\n  Este Congreso ha producido 459 leyes, cada una de las cuales, en promedio, ha sido producto de la acumulación de dos proyectos de ley (pdl). En otras palabras, uno de cada cuatro pdl de los actuales congresistas ha llegado a convertirse en ley. Durante este Congreso se han presentado un total de 4,692 pdl, de los cuales 1,376 tienen, al menos, un dictamen de comisiones. Es decir, casi el 30% ha sido “trabajado” en las comisiones. El 70% restante “duerme el sueño de los justos”, lo cual indica una excesiva producción de iniciativas sin sustento o una pobre capacidad de las comisiones para procesarlas (o ambas).\n\n  Además, de los 1,145 pdl que han pasado al Pleno del Congreso (tras ser trabajados en comisiones o haberse exonerado el trámite en estas), 926 han sido exonerados de segunda votación, trámite pensado para dar espacio a mayor reflexión y debate público al no haber dos cámaras, pero que hoy es prácticamente un adorno.\n\n  \n\n  En corto, muchos pdl innecesarios o sin sustento, baja productividad de las comisiones, y poco respeto por los trámites democráticos. Lamentablemente, es muy difícil esperar mejoras en estos ámbitos durante la campaña, que coincidirá con el último periodo legislativo, pues los congresistas estarán a la caza de “logros” que mostrar, y nada más fácil que recurrir al mensaje “he presentado un pdl” o “se ha aprobado mi pdl”. La calidad del trabajo legislativo, que impacta directamente en la economía, tendrá que seguir esperando.', 'br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fernando Cáceres', 'none', 'Publicado originalmente en Perú21 el 9 de agosto de 2015.', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(151, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}unnamed_%284%29.jpg', 'none', 'Propuestas para hacer el Estado más eficiente en base a mayor gasto público son una receta para incrementar la informalidad..', 'none', 'Luego de sugerir que el Estado es ineficiente “porque es muy chico” o porque “gasta muy poco”, <a href="http://elcomercio.pe/buscar/david+rivera?ref=nota_opinion&amp;ft=contenido" title="">David Rivera</a> señala en un artículo del 30 de junio, coherentemente con su posición por cierto, “‘<a href="http://elcomercio.pe/politica/opinion/huevo-gallina-david-rivera-noticia-1822341?ref=nota_opinion&amp;ft=contenido" title="">sacrificar’ algo de estabilidad macro [...] o llegar a un pacto fiscal [...] que eleve los impuestos en el corto plazo a quienes más tienen y más ganan</a>”. Si no tomamos algunas de las opciones que él ofrece, estaríamos “creyendo cuentos chinos” o discutiendo infructuosamente “sobre qué es primero, ¿el huevo o la gallina?”.\n\n  Existen, sin embargo, al menos dos poderosas razones para no aumentar impuestos en el Perú. En primer lugar, extraer más riqueza del sector privado para trasladarla a un sector público que no presta buenos servicios; no gasta bien, y que ni siquiera puede gastar todo lo que presupuesta, es un desperdicio. \n\n  Es cierto que hay sectores en los que el Estado debe invertir más y aumentar su presencia. Pero mientras no ajustemos nuestro sistema político, nuestro Poder Judicial y nuestra burocracia, los incentivos seguirán favoreciendo la corrupción, la ineficiencia, el gasto excesivo y el uso de bienes públicos para la obtención de beneficios privados. \n\n  No se trata entonces de hacer el Estado más grande o más chico, sino de hacerlo más eficiente. Y para eso hay que implementar reformas que alineen los incentivos de los funcionarios públicos con el bienestar social. Más y mejor representatividad política, para que los políticos asuman las consecuencias de sus actos; más meritocracia; más competencia a escala de organizaciones que aún tienen monopolios, como Essalud (capa compleja), entre otros.\n\n  En segundo lugar, la estrategia de exprimir “a los que más tienen” no tiene mucho sentido. Las empresas e individuos con mayores ingresos son los mejor calificados para reorganizar sus actividades y activos allí donde la tributación resulta excesiva. Además, en el Perú ya son algunos pocos los que soportan el financiamiento del Estado. El índice de libertad del contribuyente (ILC), elaborado por<a href="http://www.respeto.pe/" title="">Contribuyentes por Respeto</a>, muestra cómo, más allá del 16% de presión tributaria del que habitualmente se habla, los contribuyentes formales tienen aproximadamente el 41% de sus ingresos “restringidos” (es decir, se destinan a cubrir el costo del Estado o no son de libre disposición). \n\n  Ir más allá de eso es correr el riesgo de empujar más gente a la informalidad. Lo que tenemos que hacer es precisamente lo contrario: bajar la carga tributaria y regulatoria, de modo tal que incluyamos a más ciudadanos, cobrando impuestos que la gran mayoría (incluso los más pobres) esté dispuesta a asumir. Esto no solo aumentaría la base tributaria, sino que además les da a los contribuyentes un incentivo para hacer uso de sus derechos políticos: hoy la gran masa informal no tiene incentivos para fiscalizar al político: no está (mal)gastando su dinero, al fin y al cabo. \n\n  \n\n  En algo concordamos con Rivera. No hay que creernos cuentos chinos. Hay cuentos de otras latitudes, como Irlanda o Estonia por ejemplo, de los que podemos aprender que se puede crecer (y desarrollar) con impuestos bajos. Queda la opción, dirá Rivera, de endeudarse. ¿No es ese el cuento griego?', 'xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mario Zúñiga', 'none', 'Publicado originalmente en El Comercio el 14 de julio de 2015', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(14, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}07H5XZD.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(15, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}1teq3uR.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(16, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}29NiE6D.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(17, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}2IJmibM.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(18, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}2pBC9ru.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(19, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}3FUddAM.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(20, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}3kkihD3.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(21, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}3ZmQizn.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(22, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}4GIQkhC.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(23, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}4Irct10.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(24, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}4oinKjg.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(25, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}5iB5al2.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(26, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}5jrws0q.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(27, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}5mF7Xqf.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(28, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}6VppqwS.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(29, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}7BBKf0B.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(30, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}7ncqSm9.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(31, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}7nyMgHg.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(32, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}7pfgCsW.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(33, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}89G3Q2J.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(34, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}8ea57oa.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(35, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}8gc1PvJ.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(36, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}8jccx.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(37, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}9ciDig2.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(38, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}9z80b2W.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(39, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}acRGBgb.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(40, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}aFVzsJx.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(41, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}AovACKd.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(42, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}au3EqtK.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(43, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}AXsTxxH.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(44, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}brpFRvN.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(45, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}ccnb5NU.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(46, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}clXqEFe.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(47, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}cOI3yXs.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(48, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}CTzn37l.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(49, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}cy9gh4b.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(50, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}DfnAhEq.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(51, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}dvjbkvw.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(52, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}dWJ0Qf8.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(53, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}DZvdqTB.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(54, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}E89psZP.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml');
INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`, `field_id_15`, `field_ft_15`, `field_id_16`, `field_ft_16`, `field_id_17`, `field_ft_17`, `field_id_18`, `field_ft_18`, `field_id_19`, `field_ft_19`, `field_id_20`, `field_ft_20`, `field_id_21`, `field_ft_21`, `field_id_22`, `field_ft_22`, `field_id_23`, `field_ft_23`, `field_id_24`, `field_ft_24`, `field_id_30`, `field_ft_30`, `field_id_31`, `field_ft_31`, `field_id_32`, `field_ft_32`, `field_id_33`, `field_ft_33`, `field_id_34`, `field_ft_34`, `field_id_35`, `field_ft_35`, `field_id_36`, `field_ft_36`, `field_id_37`, `field_ft_37`, `field_id_38`, `field_ft_38`, `field_id_39`, `field_ft_39`, `field_id_40`, `field_ft_40`, `field_id_47`, `field_ft_47`, `field_id_48`, `field_ft_48`, `field_id_49`, `field_ft_49`, `field_id_50`, `field_ft_50`, `field_id_51`, `field_ft_51`, `field_id_52`, `field_ft_52`, `field_id_53`, `field_ft_53`, `field_id_54`, `field_ft_54`, `field_id_55`, `field_ft_55`, `field_id_56`, `field_ft_56`, `field_id_57`, `field_ft_57`, `field_id_58`, `field_ft_58`, `field_id_59`, `field_ft_59`, `field_id_60`, `field_ft_60`, `field_id_61`, `field_ft_61`, `field_id_62`, `field_ft_62`, `field_id_63`, `field_ft_63`, `field_id_64`, `field_ft_64`, `field_id_65`, `field_ft_65`, `field_id_66`, `field_ft_66`, `field_id_68`, `field_ft_68`) VALUES
(55, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}eExMoTh.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(56, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}eLDEcZT.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(57, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}ETHM0Xw.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(58, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}f85bqrT.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(59, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}FpwymhT.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(60, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}fs3FmrO.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(61, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}GB8rhxE.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(62, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}hBESKLy.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(63, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}hEhXCh2.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(64, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}HG1dD5w.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(65, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}HNOdMWz.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(66, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}HqPBKfQ.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(67, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}I4E6l2X.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(68, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}IfjkmkG.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(69, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}iLCxf2a.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(70, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}J6mEhoc.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(71, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}Jbhx31X.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(72, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}jbpVzQV.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(73, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}JG6XRXX.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(74, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}kaYSliU.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(75, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}kOaZQUb.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(76, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}L7uTu8L.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(77, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}LEaokwi.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(78, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}LwGgOeP.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(79, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}lx4aZLJ.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(80, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}LXCVNFC.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(81, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}lYHqRee.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(82, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}M6Q6imc.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(83, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}mAxhvMr.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(84, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}mMkiPxN.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(85, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}MYW1Kvk.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(86, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}N7nzhLh.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(87, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}NBqO3qX.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(88, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}NI47jKc.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(89, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}nPL2fok.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(90, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}NVYVucx.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(91, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}OaQt894.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(92, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}OHt3l4f.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(93, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}oIQ2or6.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(94, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}onj4ytq.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(95, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}OO4PTVt.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(96, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}oQ3VdpX.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(97, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}OQ5yYqX.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(98, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}OxeVtSu.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(99, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}P127V.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(100, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}pEKyawL.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(101, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}pMIoPQB.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(102, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}puxVYjB.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(103, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}PW72O8v.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(104, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}q8dWZzd.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(105, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}qdZOfkh.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(106, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}QGQhdKS.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(107, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}Qizaqzy.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(108, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}qy9fMlz.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(109, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}r7w5QrP.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(110, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}RcGf0tb.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(111, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}rPg2e8m.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(112, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}RsU2b3B.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(113, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}Rzei1n5.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(114, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}RzmycLv.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(115, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}T6bVyZi.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(116, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}T8jq5mV.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(117, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}TcynGMN.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(118, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}TWDLe1d.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(119, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}TZbrZeo.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(120, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}tzySx0S.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(121, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}ufdmZlE.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(122, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}uqPfUeR.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml');
INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`, `field_id_15`, `field_ft_15`, `field_id_16`, `field_ft_16`, `field_id_17`, `field_ft_17`, `field_id_18`, `field_ft_18`, `field_id_19`, `field_ft_19`, `field_id_20`, `field_ft_20`, `field_id_21`, `field_ft_21`, `field_id_22`, `field_ft_22`, `field_id_23`, `field_ft_23`, `field_id_24`, `field_ft_24`, `field_id_30`, `field_ft_30`, `field_id_31`, `field_ft_31`, `field_id_32`, `field_ft_32`, `field_id_33`, `field_ft_33`, `field_id_34`, `field_ft_34`, `field_id_35`, `field_ft_35`, `field_id_36`, `field_ft_36`, `field_id_37`, `field_ft_37`, `field_id_38`, `field_ft_38`, `field_id_39`, `field_ft_39`, `field_id_40`, `field_ft_40`, `field_id_47`, `field_ft_47`, `field_id_48`, `field_ft_48`, `field_id_49`, `field_ft_49`, `field_id_50`, `field_ft_50`, `field_id_51`, `field_ft_51`, `field_id_52`, `field_ft_52`, `field_id_53`, `field_ft_53`, `field_id_54`, `field_ft_54`, `field_id_55`, `field_ft_55`, `field_id_56`, `field_ft_56`, `field_id_57`, `field_ft_57`, `field_id_58`, `field_ft_58`, `field_id_59`, `field_ft_59`, `field_id_60`, `field_ft_60`, `field_id_61`, `field_ft_61`, `field_id_62`, `field_ft_62`, `field_id_63`, `field_ft_63`, `field_id_64`, `field_ft_64`, `field_id_65`, `field_ft_65`, `field_id_66`, `field_ft_66`, `field_id_68`, `field_ft_68`) VALUES
(123, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}uwpMWYq.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(124, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}v934oZf.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(125, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}VfFTSQf.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(126, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}VggIMS9.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(127, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}vkGGk66.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(128, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}vlc7axb.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(129, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}VToEvCs.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(130, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}Wn2K4H0.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(131, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}WnKUJmt.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(132, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}WsGT2q3.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(133, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}wvk4LGe.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(134, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}XgpR4.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(135, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}XmW72Pq.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(136, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}xqPBeGq.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(137, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}XuCJbhM.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(138, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}XvIh5uE.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(139, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}yFhiPVh.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(140, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}YjCNAoW.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(141, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}YNOcdKY.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(142, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}YQV5qrV.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(143, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}yRH3oDj.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(144, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}yTHztMt.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(145, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}zcXo9Zg.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(146, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_2}zJTwZDW.jpg', 'none', NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(147, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}unnamed_%281%29.jpg', 'none', 'Pese a que hemos mejorado mucho con la existencia de los TUPAS, declaraciones juradas y el silencio administrativo..', 'none', 'Pueden existir razones válidas para proponer regulaciones y controles a algunas actividades económicas. Discutamos con evidencia y con un adecuado análisis costo-beneficio donde trazamos el límite. Lo que es inadmisible, sin embargo, es que para defender la necesidad de crear nuevas regulaciones y esquemas de licencias se sostenga que la tramitología “es un mito”. Es un “invento de los empresarios” para oponerse a cualquier tipo de regulación y procedimiento. Quizá algún empresario haya usado el término injustificadamente, para deshacerse de una norma realmente necesaria; pero afirmar que no tenemos un problema de tramitología no solo es falso, sino que resulta francamente indolente con lo que millones de peruanos sufrimos todos los días.\n\n  Pese a que hemos mejorado mucho con la existencia de los TUPAS, declaraciones juradas y el silencio administrativo, todavía sufrimos retrasos inexcusables, exigencia de legalizaciones y formalismos innecesarios, tasas irracionales y hasta requisitos inventados. Y lo sufrimos todos: pobres, ricos, individuos y empresas. ¿Ha tramitado usted una licencia de funcionamiento para una pequeña bodega o restaurante? ¿Ha “desaduanado” un producto comprado en el extranjero? ¿Ha inscrito un título de propiedad recientemente? El ranking<i>Doing Business </i>para el año 2015 muestra que hemos retrocedido en indicadores como apertura de negocios, obtención de licencias de construcción y pago de impuestos.\n\n  Recientemente, un funcionario de la Defensoría del Pueblo ha destacado, por ejemplo, cómo para obtener un título de propiedad, nuestras comunidades indígenas se ven obligadas a seguir “procedimientos complejos mediante los cuales se tiene que conseguir más de veinte autorizaciones”. La tramitología no discrimina entre bolsillos ni orígenes étnicos.\n\n  \n\n  Haz un trámite y compruébalo. La tramitología es realidad.', 'xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mario Zúñiga', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(148, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}unnamed_(2).jpg', 'none', 'Necesitamos invertir 7% del PBI anualmente para cerrar la brecha de infraestructura. Este tema debe ser central en la próxima campaña electoral.', 'none', 'Esta semana se dieron a conocer los resultados de “Infraestructura para todos 2014-2015” del Observatorio de Infraestructura, una alianza de Apoyo Consultoría, AmCham y Contribuyentes por Respeto para promover la infraestructura de uso público a escala nacional. En términos generales, se observa que, durante el 2014, se invirtió 5% delPBI&nbsp;en infraestructura (60% de inversión pública y 40% de inversión privada vía asociaciones público-privadas,&nbsp;APP), un nivel ligeramente superior a los tres años previos, pero lejano del 7% necesario para cerrar la brecha de infraestructura.\n\n El mayor foco de la inversión pública durante el 2014 estuvo puesto en carreteras y vías (66%), aunque gran parte se destinó a reparar y reponer infraestructura dañada y en obras de saneamiento (21%). Lamentablemente, el sector público dejó de ejecutar alrededor de 20% de su presupuesto, por intervenciones (justificadas) de la Contraloría e ineficiencias, lo cual habría llevado la inversión en infraestructura a un nivel entre 5.6% y 6% del&nbsp;PBI&nbsp;(considerando el efecto de arrastre que tiene en la inversión privada). En este mismo periodo, la inversión privada creció 20%, impulsada por los sectores transporte (65%) y telecomunicaciones (22%).\n\n En el periodo 2015-2016, iniciarán obras 30 nuevos proyectos de&nbsp;APP, de los cuales el Observatorio de Infraestructura estima que 1 de cada 3 presenta riesgos relacionados con la obtención de predios, 1 de cada 5 tiene riesgos derivados de la aprobación/obtención de estudios (ambientales y de ingeniería) y permisos, y 1 de cada 10 presenta riesgos por la oposición de terceros.\n\n  \n\n El despliegue de infraestructura de uso público, sea que se ejecute con recursos privados o públicos, requiere una reingeniería de varios procesos estatales. Aquí hay un gran espacio para que los candidatos formulen propuestas de mejora durante la próxima campaña electoral, sin recurrir, por supuesto, a facilismos como el desafortunado “eliminemos el SNIP”.', 'xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fernando Cáceres', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(149, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}unnamed_(3).jpg', 'none', 'El Presidente nunca se sintió cómodo con un discurso de crecimiento. Ello determinó que sus medidas no generen confianza.', 'none', 'Este gobierno tuvo una ‘hoja de ruta’, pero nunca tuvo un rumbo. El Presidente tuvo que aceptar a regañadientes este compromiso de racionalizar su ambicioso (y desafortunado) plan para una ‘Gran Transformación’; lo cual implicaba aceptar mantener al menos la estructura básica de nuestro régimen económico, ese que en los últimos 25 años ha logrado, con sus imperfecciones, crecimiento económico y una reducción significativa de la pobreza.\n\n Ese compromiso forzado determinó que el Gobierno nunca se sintiera cómodo con un discurso claro de apoyo al crecimiento económico. Por eso las idas y venidas (‘Ley Pulpín’), por eso los retos públicos a invertir, seguidos de discursos en los que se satanizaba el ‘fin de lucro’. Por eso es que las ‘medidas para reactivar la economía’ tomadas en los últimos tiempos no han tenido el impacto esperado ni han generado confianza.\n\n El Gobierno ha puesto más énfasis en la ‘inclusión’ entendida, básicamente, como redistribución de riqueza. Por eso la amplia mención en el discurso presidencial último a los programas sociales (muchos de ellos necesario y positivos, por cierto). Por eso, quizás, la nula mención a propuestas para recuperar el crecimiento económico. El próximo gobierno debe poner énfasis en otro tipo de inclusión. Inclusión entendida como infraestructura para conectar a los más pobres con el mercado. Inclusión entendida como eliminar la regulación y burocracia que impide a los más pobres hacer empresa formal (el ‘TLC interno’). Crecer para incluir y desarrollarnos a todo nivel. El Gobierno razona al revés: incluir (redistribuir) para crecer.\n\n  \n\n El énfasis importa. En un discurso y en un gobierno. Por eso este discurso y este gobierno pasarán con más pena que gloria.', 'xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mario Zúñiga', 'none', '', 'none', '', 'none', '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(153, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}antena.jpg', 'none', 'Las regulaciones de la actividad económica privada, la actividad empresarial del Estado, la fiscalización y el cumplimiento de las leyes, la educación, movilidad social, la reforma del sistema político, y\ngestión Pública.', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(154, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', 'Andrés Calderón López', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(155, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', 'Mario Zúñiga Palomino', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(156, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', 'Fernando Cáceres Freyre', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(157, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(158, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(159, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(160, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(161, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Andrés Calderón López\nBruno Amiel\nCarlos Rubio Vasallo\nEdgar Ojead Vinelli\nFernando Cáceres Freyre\nFranklin Cáceres Freyre\nMario Zuñiga Palomino\nPilar Olavide Galdós\nCarlos Gomero Rigacci\nRolando Ramírez Gastón Horny\nStefanie Schmidt Schroth\n<ul>\n</ul>', 'xhtml', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(176, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}tarjetas.jpg', 'none', 'Los bancos deberían ser más prudentes al otorgar créditos. Conviene a la economía y les conviene a ellos.', 'none', 'Durante el 2015, ha crecido considerablemente el uso de líneas de crédito para financiar consumo y la disposición de efectivo de las tarjetas de crédito. Al mismo tiempo, han aumentado las colocaciones de tarjetas de crédito. Esta es una llamada de alerta para las entidades financieras (EF).\n\n  La explicación es obvia. Frente a la desaceleración económica, las personas tienen un menor ingreso disponible y una mayor necesidad de endeudarse para mantener el mismo nivel de gasto. De otro lado, las fuerzas de venta de las EF tienen incentivos económicos para colocar nuevos productos, pues gran parte de su ingreso proviene de variables generadas por nuevas colocaciones.\n\n  Aquí un ejemplo frecuente. Las EF ofrecen a los consumidores tarjetas de crédito preaprobadas con la misma línea que estos tienen con otra EF. Hasta ahí, todo bien. El problema es que no hay procesos establecidos para verificar que la actual tarjeta de crédito sea cancelada antes de entregar la nueva. Y es mediante este tipo de “fallas” del sistema que los consumidores terminan multiplicando su línea de crédito sin haber multiplicado su capacidad de endeudamiento.\n\n  En Chile, uno de los grandes ejes de la protesta que llevó a Bachelet de vuelta a La Moneda fue el reclamo ciudadano contra deudas consideradas impagables. Y es que tratándose de productos complejos, como los financieros, que son otorgados por grupos identificados con el tan mentado “afán de lucro”, políticamente no basta con asegurar un consumo informado. Por eso, las EF deben tener en cuenta la sostenibilidad de la economía.\n\n  \n\n  Campaña electoral más desaceleración son el caldo de cultivo ideal para que los políticos populistas echen la culpa a las EF de cualquier problema económico. Varios ya empezaron. Mi sugerencia: revisen sus procesos para colocar nuevos productos, alineando los intereses de la fuerza de ventas con una mayor responsabilidad financiera. Ganarán ustedes y ganará el público.', 'xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fernando Cáceres', 'none', ' Originalmente publicado en Perú.21 el 16 de agosto de 2015.', 'none', '', 'none', NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(174, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_12_y_13.png', 'none', '{filedir_1}Costo_y_Beneficio_12_y_13.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(162, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}books-magazines-building-school.jpg', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(163, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_01_img.png', 'none', '{filedir_1}Costo_y_Beneficio_01.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(164, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_02.png', 'none', '{filedir_1}Costo_y_Beneficio_02.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(165, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_03.png', 'none', '{filedir_1}Costo_y_Beneficio_03.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(166, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_04.png', 'none', '{filedir_1}Costo_y_Beneficio_04.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(167, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_05.png', 'none', '{filedir_1}Costo_y_Beneficio_05_pdf.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(168, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_06.png', 'none', '{filedir_1}Costo_y_Beneficio_06_pdf.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(169, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_07.png', 'none', '{filedir_1}Costo_y_Beneficio_07_pdf.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(170, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_08.png', 'none', '{filedir_1}Costo_y_Beneficio_08_pdf.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(171, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_09.png', 'none', '{filedir_1}Costo_y_Beneficio_09_pdf.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(172, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_10.png', 'none', '{filedir_1}Costo_y_Beneficio_10_pdf.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(173, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '{filedir_1}Costo_y_Beneficio_11.png', 'none', '{filedir_1}Costo_y_Beneficio_11_pdf.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'none', '', 'none', '', 'none', '', 'none', '', 'none', '', 'xhtml'),
(179, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Contribuyentes por Respeto es una asociación ciudadana independiente formada por un grupo de contribuyentes que comparte una misma visión de Estado. ', 'none', 'Contribuyentes por Respeto es una asociación ciudadana independiente formada por un grupo de contribuyentes que comparte una misma visión de Estado. ', 'none', 'ChannelImages', 'xhtml'),
(180, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nuestras autoridades promulgan leyes y regulaciones con escasa o nula evidencia técnica. Luego de aprobadas, autoridades no evalúan impacto. ', 'none', '{filedir_1}Policy_Notes.png', 'none', '{filedir_1}policy_notes_01.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `exp_channel_data` (`entry_id`, `site_id`, `channel_id`, `field_id_1`, `field_ft_1`, `field_id_2`, `field_ft_2`, `field_id_3`, `field_ft_3`, `field_id_4`, `field_ft_4`, `field_id_5`, `field_ft_5`, `field_id_6`, `field_ft_6`, `field_id_7`, `field_ft_7`, `field_id_8`, `field_ft_8`, `field_id_9`, `field_ft_9`, `field_id_10`, `field_ft_10`, `field_id_11`, `field_ft_11`, `field_id_12`, `field_ft_12`, `field_id_13`, `field_ft_13`, `field_id_14`, `field_ft_14`, `field_id_15`, `field_ft_15`, `field_id_16`, `field_ft_16`, `field_id_17`, `field_ft_17`, `field_id_18`, `field_ft_18`, `field_id_19`, `field_ft_19`, `field_id_20`, `field_ft_20`, `field_id_21`, `field_ft_21`, `field_id_22`, `field_ft_22`, `field_id_23`, `field_ft_23`, `field_id_24`, `field_ft_24`, `field_id_30`, `field_ft_30`, `field_id_31`, `field_ft_31`, `field_id_32`, `field_ft_32`, `field_id_33`, `field_ft_33`, `field_id_34`, `field_ft_34`, `field_id_35`, `field_ft_35`, `field_id_36`, `field_ft_36`, `field_id_37`, `field_ft_37`, `field_id_38`, `field_ft_38`, `field_id_39`, `field_ft_39`, `field_id_40`, `field_ft_40`, `field_id_47`, `field_ft_47`, `field_id_48`, `field_ft_48`, `field_id_49`, `field_ft_49`, `field_id_50`, `field_ft_50`, `field_id_51`, `field_ft_51`, `field_id_52`, `field_ft_52`, `field_id_53`, `field_ft_53`, `field_id_54`, `field_ft_54`, `field_id_55`, `field_ft_55`, `field_id_56`, `field_ft_56`, `field_id_57`, `field_ft_57`, `field_id_58`, `field_ft_58`, `field_id_59`, `field_ft_59`, `field_id_60`, `field_ft_60`, `field_id_61`, `field_ft_61`, `field_id_62`, `field_ft_62`, `field_id_63`, `field_ft_63`, `field_id_64`, `field_ft_64`, `field_id_65`, `field_ft_65`, `field_id_66`, `field_ft_66`, `field_id_68`, `field_ft_68`) VALUES
(181, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}cigarrillo-electronico_web_respeto_2.jpg', 'none', 'Regularlo tan estrictamente como a los cigarrillos de tabaco sería un error', 'none', 'Un <a href="https://www.gov.uk/government/news/e-cigarettes-around-95-less-harmful-than-tobacco-estimates-landmark-review" title="">nuevo estudio independiente encargado por</a> <a href="https://www.gov.uk/government/news/e-cigarettes-around-95-less-harmful-than-tobacco-estimates-landmark-review" title="">Public Health England</a>, agencia dependiente del Ministerio de Salud del Reino Unido encargada de estudios de salud pública, concluye que los cigarrillos electrónicos son significativamente —aproximadamente 95%— menos dañinos que los cigarrillos de tabaco.\n\n  “¡Ajá!, ¡menos dañino no significa que sea inofensivo!”, dirán algunas organizaciones internacionales o los activistas anti-tabaco locales, que también se han opuesto ya tajantemente al cigarrillo electrónico. Creo que se enfocan en la cuestión equivocada. Lo que hay que analizar es cuáles serían los efectos de la prohibición o regulación de este nuevo producto; en el mundo real, por cierto, y no en el texto de las leyes. Si tratamos el cigarrillo electrónico como si fuera tan dañino como los cigarrillos de tabaco, estamos impidiendo que los consumidores migren a un producto menos dañino, que ayuda a los fumadores a dejar de fumar y que, cabe precisar, no es una ruta para empezar a fumar para no fumadores o niños, según este mismo estudio.\n\n  ¿Hay razones para regular los cigarrillos electrónicos? Sí. Hay que proteger a los menores de edad e informar adecuadamente a los adultos, como recomendó una reciente investigación de Contribuyentes por Respeto. Pero si empezamos a prohibirlos o regularlos restrictivamente (prohibiendo que se usen en público, aplicándoles altos impuestos, impidiendo su publicidad) lo que estamos haciendo, en realidad, es blindar a los productores de tabaco de la competencia del cigarrillo electrónico (aunque algunas tabacaleras también venden cigarrillos electrónicos). Curiosas “alianzas” se dan cuando se trata de prohibiciones. Grupos bienintencionados terminan favoreciendo reglas que incentivan a consumir los productos que tanto combaten. Nadie sabe para quien trabaja.', 'xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mario Zúñiga', 'none', 'Publicado originalmente en Exitosa Diario el 21 de agosto de 2015.', 'none', '', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}Consenso_Infraestructura_Respeto.pe.jpg', 'none', 'No hay algún aspecto ideológico fundamental que impida un consenso en torno al objetivo de cerrar la brecha de infraestructura', 'none', 'El programa Infraestructura para Todos, alianza en la que participo, acaba de publicar una investigación sobre el proceso de obtención de predios para obras de infraestructura. Nuestros hallazgos más importantes son los siguientes.\n\n Concatenación, el proceso de concesión en cualquier proyecto de infraestructura cuenta con una serie de procesos definidos. El problema es que se suele esperar hasta la firma del contrato para iniciar la obtención de predios, lo cual puede tomar algunos años adicionales. Por ello, es recomendable realizar los procesos de concesión y de obtención de predios de manera simultánea.\n\n Interferencias, en cada proyecto de infraestructura es muy probable encontrar interferencias de servicios públicos. Dada la debilidad del marco institucional, movilizar una red de un servicio público retrasa el desarrollo de los proyectos. Por ello, sería útil crear y reglamentar un marco institucional estandarizado que facilite la movilización de interferencias.\n\n Reasentamiento, el Estado, además de tratar con propietarios, también debe hacerlo con poseedores ilegales, que suelen pertenecer a estructuras sociales vulnerables. Actualmente, se suelen elaborar planes de reasentamiento involuntario por cada proyecto. Sin embargo no existe una guía metodológica detallada que recopile experiencias pasadas. Una guía de este tipo ahorraría tiempo y recursos.\n\n Expropiaciones, la Ley 30327 busca acortar tiempos en el proceso de expropiación, el cual dura como máximo dos años, creando un nuevo mecanismo que no garantiza una adecuada protección a los derechos de propiedad. En lugar de reducir el plazo requerido por el Estado, se debería permitir al concesionario obtener directamente los predios.\n\n  \n\n En áreas como estas debiéramos ser capaces de generar consensos. Estos deben abarcar a la derecha e izquierda. Claro, siempre que exista una izquierda que piense más allá de “necesitamos una nueva Constitución”.', 'xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fernando Cáceres', 'none', 'Publicado originalmente en Perú.21 el 23 de agosto de 2015.', 'none', '', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}Perú_No_revolución_respeto.pe.jpg', 'none', 'Hay muchos problemas que corregir en el modelo, pero sería un error caer nuevamente en el "borrón y cuenta nueva"', 'none', 'Desaceleración china, bajos precios de los minerales, época electoral. No se vienen tiempos fáciles para el Perú. Lamentablemente, los tiempos de crisis son propicios para que políticos populistas hablen de “agotamiento” o incluso de “fracaso” del modelo; o peor, para que los antisistema hablen de revoluciones o “refundaciones”. Más de un candidato hablará de la necesidad, por ejemplo, de aprobar una nueva Constitución.&nbsp;\n\n Pero, entonces, ¿todo está bien en el Perú? No, por supuesto que no. Hay que cambiar mucho, pero eso no implica desandar lo andado. En el Perú realizamos reformas de primera generación que apuntaron a desarmar un aparato intervencionista en la economía que nos hizo mucho daño: innumerables empresas públicas, controles de precios, regulaciones y aranceles. El (incompleto) modelo de Estado subsidiario, libre empresa y libre comercio; respeto de la propiedad privada y los contratos, nos ayudó a crecer a un ritmo de 6% anual y reducir la pobreza a la mitad.&nbsp;\n\n ¿Qué nos falta? No necesariamente un Estado más grande, pero sí un mejor Estado. Necesitamos reformas políticas (cómo elegimos y fiscalizamos a nuestras autoridades) e institucionales (Poder Judicial, lucha anticorrupción, servicio civil, entre otros) que permitan que exista una real igualdad ante la ley y mejores servicios públicos. Necesitamos también hacer que el mercado sea más inclusivo para que más peruanos puedan aprovechar oportunidades y salir de la pobreza (más infraestructura, menos barreras). Debería haber consenso en que ese es el enemigo principal, la pobreza.\n\n  \n\n Esta no puede ser, una vez más, una elección en la que hablemos de una nueva Constitución. Nunca terminaremos de construir el edificio si cada cinco años construimos nuevos cimientos.', 'xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mario Zúñiga', 'none', 'Publicado originalmente en Exitosa Diario, el 28 de agosto de 2015.', 'none', '', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{filedir_1}Tribunal_Fiscal_Impuesto_Ineficiencia_respeto.pe.jpg', 'none', '¿Deben los contribuyentes asumir el costo de la ineficiencia de algunas autoridades para resolver litigios?', 'none', 'Desde hace algunos años, venimos escuchando acerca de una controversia que mantiene Telefónica del Perú (TdP) con la Sunat. La mayoría de asuntos –y millones– en juego solo involucran a TdP y al Fisco (al menos directamente), pero hay uno cuya resolución impactaría en muchos contribuyentes. Este es el caso de los intereses moratorios (IM).\n\n El impacto preciso en los contribuyentes no puedo saberlo, pues la Sunat no ha explicado cómo se compone la “deuda histórica”, que calcula en S/.67,500 millones. Sin embargo, lo más lógico es que la mayor parte provenga de IM, y que la Sunat esté asumiendo que a todos los contribuyentes podrá cobrarnos IM devengados en periodos donde ya se habían vencido los plazos para que la Sunat, el Tribunal Fiscal (TF) y el Poder Judicial resuelvan. Si esto es así, estamos en un serio aprieto.\n\n La Sunat tiene, por supuesto, la obligación de cobrar IM durante los plazos establecidos para que ella, el TF y el Poder Judicial se pronuncien, pero no tiene sentido que cobre intereses luego de haberse vencido tales plazos. La buena noticia es que en el 2007 y en el 2014 se emitieron normas que “aclararon” que no podría cobrarse IM por el plazo excedido por la Sunat y el TF, respectivamente. La mala noticia es que la Sunat estaría entendiendo que antes de estas normas sí puede cobrar IM durante los plazos vencidos, y que ambas normas declararon que sí puede cobrarse IM durante los plazos vencidos en el Poder Judicial.\n\n  \n\n Si cualquier contribuyente, persona o empresa, dilata de mala fe el trámite de un proceso legal, debe cobrársele IM incluso durante los plazos vencidos, pues estaría indebidamente “judicializando deudas”. Pero si la demora es por causa de una mala gestión pública, aplicar IM equivale a crear un nuevo impuesto, un impuesto a la ineficiencia estatal. El fin recaudatorio no justifica los medios.', 'xhtml', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fernando Cáceres', 'none', 'Publicado originalmente en Perú.21 el 30 de agosto de 2015. ', 'none', '', 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'La obtención de predios muchas veces retrasa la realización de obras de infraestructura. Urge una metodología clara para lidiar con casos de reasentamientos de poseedores e interferencia con redes de servicios públicos.', 'none', '{filedir_2}Carátula_web_para_PN_2_Predios.png', 'none', '{filedir_1}Policy_Note_02_-_Obtenci%C3%B3n_de_predios_03.09.2015.pdf', 'none', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_entries_autosave`
--

CREATE TABLE IF NOT EXISTS `exp_channel_entries_autosave` (
  `entry_id` int(10) unsigned NOT NULL,
  `original_entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0',
  `entry_data` text
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_fields`
--

CREATE TABLE IF NOT EXISTS `exp_channel_fields` (
  `field_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_label` varchar(50) NOT NULL,
  `field_instructions` text,
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `field_list_items` text NOT NULL,
  `field_pre_populate` char(1) NOT NULL DEFAULT 'n',
  `field_pre_channel_id` int(6) unsigned DEFAULT NULL,
  `field_pre_field_id` int(6) unsigned DEFAULT NULL,
  `field_ta_rows` tinyint(2) DEFAULT '8',
  `field_maxl` smallint(3) DEFAULT NULL,
  `field_required` char(1) NOT NULL DEFAULT 'n',
  `field_text_direction` char(3) NOT NULL DEFAULT 'ltr',
  `field_search` char(1) NOT NULL DEFAULT 'n',
  `field_is_hidden` char(1) NOT NULL DEFAULT 'n',
  `field_fmt` varchar(40) NOT NULL DEFAULT 'xhtml',
  `field_show_fmt` char(1) NOT NULL DEFAULT 'y',
  `field_order` int(3) unsigned NOT NULL,
  `field_content_type` varchar(20) NOT NULL DEFAULT 'any',
  `field_settings` text
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_channel_fields`
--

INSERT INTO `exp_channel_fields` (`field_id`, `site_id`, `group_id`, `field_name`, `field_label`, `field_instructions`, `field_type`, `field_list_items`, `field_pre_populate`, `field_pre_channel_id`, `field_pre_field_id`, `field_ta_rows`, `field_maxl`, `field_required`, `field_text_direction`, `field_search`, `field_is_hidden`, `field_fmt`, `field_show_fmt`, `field_order`, `field_content_type`, `field_settings`) VALUES
(1, 1, 1, 'home_introduccion', 'Texto Introductorio del website', '', 'textarea', '', '0', 0, 0, 10, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),
(2, 1, 1, 'home_introduccin_investogacin', 'Introducción de Investogación', '', 'textarea', '', '0', 0, 0, 10, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 2, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),
(3, 1, 1, 'home_introduccion_costo_benefici', 'Introducción Costo Beneficio', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 3, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),
(4, 1, 1, 'home_introduccin_plaza_bolivar', 'Introducción Plaza Bolivar', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 4, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),
(5, 1, 1, 'imgen_hero', 'Imágen Hero', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 5, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(6, 1, 1, 'home_titulo_hero', 'Título Hero', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 6, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(7, 1, 1, 'home_subttulo_hero', 'Subtítulo Hero', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 7, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(8, 1, 1, 'home_imagen_costo_beneficio', 'Imágen Costo Beneficio', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 8, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(9, 1, 1, 'home_imagen_plaza_bolivar', 'Imágen Plaza Bolivar', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 9, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(10, 1, 1, 'home_introduccion_caricaturas', 'Introducción Caricaturas', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 10, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),
(11, 1, 1, 'home_introduccion_alianzas', 'Introducción Alianzas', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 11, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),
(12, 1, 1, 'home_introduccion_novedades', 'Introducción Novedades', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 12, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),
(13, 1, 1, 'home_introduccion_siguenos', 'Introducción Síguenos', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 13, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),
(14, 1, 2, 'alianzas_imagen', 'Imagen', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(15, 1, 2, 'alianzas_descripcion', 'Descripcion', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 2, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),
(16, 1, 3, 'novedades_imagen', 'Imagen', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(17, 1, 3, 'novedades_descripcion', 'Descripcion', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 2, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(18, 1, 3, 'novedades_contenido', 'Contenido', '', 'rte', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'xhtml', 'n', 3, 'any', 'YTo4OntzOjI0OiJydGVfZmllbGRfdGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJydGVfdGFfcm93cyI7czoxOiI2IjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(19, 1, 4, 'area_imagen', 'Imagen', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(20, 1, 4, 'area_descripcion', 'Descripcion', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 2, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),
(21, 1, 5, 'equipo_imagen', 'Imagen', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(22, 1, 5, 'equipo_descripcion', 'Descripcion', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 2, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),
(23, 1, 6, 'asociados_imagen', 'Imagen', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(24, 1, 6, 'asociados_link', 'Link', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 2, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(60, 1, 13, 'colaboradores_contenido', 'Colaboradores contenido', '', 'rte', '', '0', 0, 0, 10, 128, 'n', 'ltr', 'n', 'n', 'xhtml', 'n', 1, 'any', 'YTo4OntzOjI0OiJydGVfZmllbGRfdGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJydGVfdGFfcm93cyI7czoyOiIxMCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(61, 1, 14, 'investigacion_fondo', 'Investigacion fondo', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(58, 1, 3, 'novedades_fuente', 'Novedades fuente', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 5, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(59, 1, 3, 'video_de_youtube', 'Video de Youtube', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 6, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(57, 1, 3, 'novedades_autor', 'Novedades autor', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 4, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(30, 1, 8, 'imagen_costo_beneficio', 'imagen costo beneficio', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(31, 1, 8, 'texto_introductorio_costo_benefi', 'texto introductorio costo beneficio', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 2, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(32, 1, 8, 'portada_blog', 'Portada del Blog Costo Beneficio', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 3, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(33, 1, 8, 'titulo_blog_costo_beneficio', 'Titulo del blog costo beneficio', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 4, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(34, 1, 8, 'contenido_blog_costo', 'contenido del blog', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 5, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(35, 1, 8, 'portada_blog_2', 'portada blog 2', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 6, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(36, 1, 8, 'titulo_blog_2', 'titulo blog 2', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 7, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(37, 1, 8, 'introduccion_blog_2', 'introduccion blog 2', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 8, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(38, 1, 8, 'portada_blog_3', 'portada blog 3', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 9, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(39, 1, 8, 'titulo_blog_3', 'titulo blog 3', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 10, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(40, 1, 8, 'introduccion_blog_3', 'introduccion blog 3', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 11, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(56, 1, 10, 'imagen_somos_contribuyentes', 'Imagen somos contribuyentes', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 5, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(55, 1, 12, 'imagen_caricaturas', 'Imagen Caricaturas', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjIiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(54, 1, 10, 'vision', 'Vision', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 4, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(53, 1, 10, 'mision', 'Mision', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 3, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(52, 1, 10, 'contribuyentes_contenido', 'Contribuyentes contenido', '', 'rte', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'xhtml', 'n', 2, 'any', 'YTo4OntzOjI0OiJydGVfZmllbGRfdGV4dF9kaXJlY3Rpb24iO3M6MzoibHRyIjtzOjExOiJydGVfdGFfcm93cyI7czoxOiI2IjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(51, 1, 10, 'contribuyentes_introduccion', 'Contribuyentes introduccion', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(47, 1, 9, 'descripcion-boletin-cb', 'Descripción', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(48, 1, 9, 'imagen-boletin-cb', 'Imágen Boletín', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 2, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(49, 1, 9, 'archivo-boletin-cb', 'Archívo', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 3, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czoxOiIxIjtzOjEzOiJzaG93X2V4aXN0aW5nIjtzOjE6InkiO3M6MTI6Im51bV9leGlzdGluZyI7czoyOiI1MCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(50, 1, 2, 'lee_mas', 'Lee mas', '', 'text', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 3, 'any', 'YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(62, 1, 15, 'descripcion_policy', 'Descripcion policy', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(63, 1, 15, 'imagen_policy', 'Imagen policy', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 2, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(64, 1, 15, 'archivo-policy', 'Archivo policy', '', 'file', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 3, 'any', 'YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czoxOiIxIjtzOjEzOiJzaG93X2V4aXN0aW5nIjtzOjE6InkiO3M6MTI6Im51bV9leGlzdGluZyI7czoyOiI1MCI7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),
(65, 1, 16, 'descripcion_facebook', 'Descripcion Facebook', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 1, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(66, 1, 16, 'descripcion_twitter', 'Descripcion twitter', '', 'textarea', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'none', 'n', 2, 'any', 'YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),
(68, 1, 16, 'imagen_contribuyentes', 'Imagen contribuyentes', '', 'channel_images', '', '0', 0, 0, 6, 128, 'n', 'ltr', 'n', 'n', 'xhtml', 'n', 3, 'any', 'YTo3OntzOjE0OiJjaGFubmVsX2ltYWdlcyI7YTozMzp7czo5OiJ2aWV3X21vZGUiO3M6NToidGFibGUiO3M6MTM6ImFjdGlvbl9ncm91cHMiO2E6Mzp7aToxO2E6NTp7czoxMDoiZ3JvdXBfbmFtZSI7czo1OiJzbWFsbCI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjEwMCI7czo2OiJoZWlnaHQiO3M6MzoiMTAwIjtzOjc6InF1YWxpdHkiO3M6MjoiODAiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9fXM6MTA6ImZpbmFsX3NpemUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiIxMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjEwMCI7czo3OiJxdWFsaXR5IjtzOjI6IjgwIjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fXM6ODoiZWRpdGFibGUiO3M6Mjoibm8iO31pOjI7YTo1OntzOjEwOiJncm91cF9uYW1lIjtzOjY6Im1lZGl1bSI7czo3OiJ3eXNpd3lnIjtzOjM6InllcyI7czo3OiJhY3Rpb25zIjthOjE6e3M6MTU6InJlc2l6ZV9hZGFwdGl2ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjQ1MCI7czo2OiJoZWlnaHQiO3M6MzoiMzAwIjtzOjc6InF1YWxpdHkiO3M6MjoiNzUiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9fXM6MTA6ImZpbmFsX3NpemUiO2E6NTp7czo1OiJ3aWR0aCI7czozOiI0NTAiO3M6NjoiaGVpZ2h0IjtzOjM6IjMwMCI7czo3OiJxdWFsaXR5IjtzOjI6Ijc1IjtzOjg6InVwc2l6aW5nIjtzOjI6Im5vIjtzOjQ6InN0ZXAiO3M6MToiMSI7fXM6ODoiZWRpdGFibGUiO3M6Mjoibm8iO31pOjM7YTo1OntzOjEwOiJncm91cF9uYW1lIjtzOjU6ImxhcmdlIjtzOjc6Ind5c2l3eWciO3M6MzoieWVzIjtzOjc6ImFjdGlvbnMiO2E6MTp7czoxNToicmVzaXplX2FkYXB0aXZlIjthOjU6e3M6NToid2lkdGgiO3M6MzoiODAwIjtzOjY6ImhlaWdodCI7czozOiI2MDAiO3M6NzoicXVhbGl0eSI7czoyOiI3NSI7czo4OiJ1cHNpemluZyI7czoyOiJubyI7czo0OiJzdGVwIjtzOjE6IjEiO319czoxMDoiZmluYWxfc2l6ZSI7YTo1OntzOjU6IndpZHRoIjtzOjM6IjgwMCI7czo2OiJoZWlnaHQiO3M6MzoiNjAwIjtzOjc6InF1YWxpdHkiO3M6MjoiNzUiO3M6ODoidXBzaXppbmciO3M6Mjoibm8iO3M6NDoic3RlcCI7czoxOiIxIjt9czo4OiJlZGl0YWJsZSI7czoyOiJubyI7fX1zOjEzOiJzbWFsbF9wcmV2aWV3IjtzOjU6InNtYWxsIjtzOjExOiJiaWdfcHJldmlldyI7czo1OiJzbWFsbCI7czoxMzoia2VlcF9vcmlnaW5hbCI7czozOiJ5ZXMiO3M6MTU6InVwbG9hZF9sb2NhdGlvbiI7czo1OiJsb2NhbCI7czo5OiJsb2NhdGlvbnMiO2E6Mzp7czo1OiJsb2NhbCI7YToxOntzOjg6ImxvY2F0aW9uIjtzOjE6IjIiO31zOjI6InMzIjthOjg6e3M6Mzoia2V5IjtzOjA6IiI7czoxMDoic2VjcmV0X2tleSI7czowOiIiO3M6NjoiYnVja2V0IjtzOjA6IiI7czo2OiJyZWdpb24iO3M6OToidXMtZWFzdC0xIjtzOjM6ImFjbCI7czoxMToicHVibGljLXJlYWQiO3M6Nzoic3RvcmFnZSI7czo4OiJzdGFuZGFyZCI7czo5OiJkaXJlY3RvcnkiO3M6MDoiIjtzOjE3OiJjbG91ZGZyb250X2RvbWFpbiI7czowOiIiO31zOjEwOiJjbG91ZGZpbGVzIjthOjU6e3M6ODoidXNlcm5hbWUiO3M6MDoiIjtzOjM6ImFwaSI7czowOiIiO3M6OToiY29udGFpbmVyIjtzOjA6IiI7czo2OiJyZWdpb24iO3M6MjoidXMiO3M6NzoiY2RuX3VyaSI7czowOiIiO319czoxMDoiY2F0ZWdvcmllcyI7YTowOnt9czoxNjoiZGVmYXVsdF9jYXRlZ29yeSI7czowOiIiO3M6MTg6InNob3dfc3RvcmVkX2ltYWdlcyI7czoyOiJubyI7czoyMzoic3RvcmVkX2ltYWdlc19ieV9hdXRob3IiO3M6Mjoibm8iO3M6MjU6InN0b3JlZF9pbWFnZXNfc2VhcmNoX3R5cGUiO3M6NToiZW50cnkiO3M6MTc6InNob3dfaW1wb3J0X2ZpbGVzIjtzOjI6Im5vIjtzOjExOiJpbXBvcnRfcGF0aCI7czoxOiIvIjtzOjE1OiJzaG93X2ltYWdlX2VkaXQiO3M6MzoieWVzIjtzOjE4OiJzaG93X2ltYWdlX3JlcGxhY2UiO3M6MzoieWVzIjtzOjIyOiJhbGxvd19wZXJfaW1hZ2VfYWN0aW9uIjtzOjI6Im5vIjtzOjExOiJpbWFnZV9saW1pdCI7czowOiIiO3M6MTM6Imh5YnJpZF91cGxvYWQiO3M6MzoieWVzIjtzOjE2OiJwcm9ncmVzc2l2ZV9qcGVnIjtzOjI6Im5vIjtzOjE2OiJ3eXNpd3lnX29yaWdpbmFsIjtzOjM6InllcyI7czoxODoic2F2ZV9kYXRhX2luX2ZpZWxkIjtzOjI6Im5vIjtzOjEzOiJkaXNhYmxlX2NvdmVyIjtzOjI6Im5vIjtzOjExOiJjb252ZXJ0X2pwZyI7czoyOiJubyI7czoxMToiY292ZXJfZmlyc3QiO3M6MzoieWVzIjtzOjE0OiJ3eXNpd3lnX291dHB1dCI7czo5OiJpbWFnZV91cmwiO3M6MTA6ImRpcmVjdF91cmwiO3M6MzoieWVzIjtzOjEyOiJtYXhfZmlsZXNpemUiO3M6MDoiIjtzOjEwOiJwYXJzZV9pcHRjIjtzOjI6Im5vIjtzOjEwOiJwYXJzZV9leGlmIjtzOjI6Im5vIjtzOjk6InBhcnNlX3htcCI7czoyOiJubyI7czo3OiJjb2x1bW5zIjthOjEzOntzOjc6InJvd19udW0iO3M6MToiIyI7czoyOiJpZCI7czoyOiJJRCI7czo1OiJpbWFnZSI7czo1OiJJbWFnZSI7czo4OiJmaWxlbmFtZSI7czowOiIiO3M6NToidGl0bGUiO3M6NToiVGl0bGUiO3M6OToidXJsX3RpdGxlIjtzOjA6IiI7czo0OiJkZXNjIjtzOjExOiJEZXNjcmlwdGlvbiI7czo4OiJjYXRlZ29yeSI7czowOiIiO3M6OToiY2lmaWVsZF8xIjtzOjA6IiI7czo5OiJjaWZpZWxkXzIiO3M6MDoiIjtzOjk6ImNpZmllbGRfMyI7czowOiIiO3M6OToiY2lmaWVsZF80IjtzOjA6IiI7czo5OiJjaWZpZWxkXzUiO3M6MDoiIjt9czoxNToiY29sdW1uc19kZWZhdWx0IjthOjk6e3M6NToidGl0bGUiO3M6MDoiIjtzOjk6InVybF90aXRsZSI7czowOiIiO3M6NDoiZGVzYyI7czowOiIiO3M6ODoiY2F0ZWdvcnkiO3M6MDoiIjtzOjk6ImNpZmllbGRfMSI7czowOiIiO3M6OToiY2lmaWVsZF8yIjtzOjA6IiI7czo5OiJjaWZpZWxkXzMiO3M6MDoiIjtzOjk6ImNpZmllbGRfNCI7czowOiIiO3M6OToiY2lmaWVsZF81IjtzOjA6IiI7fX1zOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30=');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_form_settings`
--

CREATE TABLE IF NOT EXISTS `exp_channel_form_settings` (
  `channel_form_settings_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(6) unsigned NOT NULL DEFAULT '0',
  `default_status` varchar(50) NOT NULL DEFAULT 'open',
  `require_captcha` char(1) NOT NULL DEFAULT 'n',
  `allow_guest_posts` char(1) NOT NULL DEFAULT 'n',
  `default_author` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_images`
--

CREATE TABLE IF NOT EXISTS `exp_channel_images` (
  `image_id` int(10) unsigned NOT NULL,
  `site_id` tinyint(3) unsigned DEFAULT '1',
  `entry_id` int(10) unsigned DEFAULT '0',
  `field_id` mediumint(8) unsigned DEFAULT '0',
  `channel_id` tinyint(3) unsigned DEFAULT '0',
  `member_id` int(10) unsigned DEFAULT '0',
  `is_draft` tinyint(3) unsigned DEFAULT '0',
  `link_image_id` int(10) unsigned DEFAULT '0',
  `link_entry_id` int(10) unsigned DEFAULT '0',
  `link_channel_id` int(10) unsigned DEFAULT '0',
  `link_field_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) unsigned DEFAULT '0',
  `cover` tinyint(1) unsigned DEFAULT '0',
  `image_order` smallint(5) unsigned DEFAULT '1',
  `filename` varchar(250) DEFAULT '',
  `extension` varchar(20) DEFAULT '',
  `filesize` int(10) unsigned DEFAULT '0',
  `mime` varchar(20) DEFAULT '',
  `width` smallint(6) DEFAULT '0',
  `height` smallint(6) DEFAULT '0',
  `title` varchar(250) DEFAULT '',
  `url_title` varchar(250) DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `category` varchar(250) DEFAULT '',
  `cifield_1` varchar(250) DEFAULT '',
  `cifield_2` varchar(250) DEFAULT '',
  `cifield_3` varchar(250) DEFAULT '',
  `cifield_4` varchar(250) DEFAULT '',
  `cifield_5` varchar(250) DEFAULT '',
  `sizes_metadata` varchar(250) DEFAULT '',
  `iptc` text,
  `exif` text,
  `xmp` text
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_channel_images`
--

INSERT INTO `exp_channel_images` (`image_id`, `site_id`, `entry_id`, `field_id`, `channel_id`, `member_id`, `is_draft`, `link_image_id`, `link_entry_id`, `link_channel_id`, `link_field_id`, `upload_date`, `cover`, `image_order`, `filename`, `extension`, `filesize`, `mime`, `width`, `height`, `title`, `url_title`, `description`, `category`, `cifield_1`, `cifield_2`, `cifield_3`, `cifield_4`, `cifield_5`, `sizes_metadata`, `iptc`, `exif`, `xmp`) VALUES
(2, 1, 179, 68, 15, 1, 0, 0, 0, 0, 0, 1440102139, 0, 2, 'imagen-metatag-large.png', 'png', 2594, 'image/png', 200, 200, 'Imagen-metatag-large', 'imagen-metatag-large', '', '', '', '', '', '', '', 'small|100|100|2294/medium|200|200|2884/large|200|200|2884/', 'YTowOnt9', 'YTowOnt9', ''),
(3, 1, 179, 68, 15, 1, 0, 0, 0, 0, 0, 1440102400, 0, 1, 'imagen-metatag2.png', 'png', 0, 'image/png', 0, 0, 'Imagen-metatag2', 'imagen-metatag2', '', '', '', '', '', '', '', 'small|/medium|/large|/', 'YTowOnt9', 'YTowOnt9', ''),
(4, 1, 179, 68, 15, 1, 0, 0, 0, 0, 0, 1440102400, 0, 2, 'cpr4.png', 'png', 2882, 'image/png', 220, 220, 'Cpr4', 'cpr4', '', '', '', '', '', '', '', 'small|100|100|3706/medium|220|220|3210/large|220|220|3210/', 'YTowOnt9', 'YTowOnt9', ''),
(5, 1, 179, 68, 15, 1, 0, 0, 0, 0, 0, 1440102400, 0, 3, 'cpr5.png', 'png', 4034, 'image/png', 300, 300, 'Cpr5', 'cpr5', '', '', '', '', '', '', '', 'small|100|100|2558/medium|300|300|4425/large|300|300|4425/', 'YTowOnt9', 'YTowOnt9', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_member_groups`
--

CREATE TABLE IF NOT EXISTS `exp_channel_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `channel_id` int(6) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_channel_titles`
--

CREATE TABLE IF NOT EXISTS `exp_channel_titles` (
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `forum_topic_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url_title` varchar(75) NOT NULL,
  `status` varchar(50) NOT NULL,
  `versioning_enabled` char(1) NOT NULL DEFAULT 'n',
  `view_count_one` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_two` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_three` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count_four` int(10) unsigned NOT NULL DEFAULT '0',
  `allow_comments` varchar(1) NOT NULL DEFAULT 'y',
  `sticky` varchar(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) NOT NULL,
  `year` char(4) NOT NULL,
  `month` char(2) NOT NULL,
  `day` char(3) NOT NULL,
  `expiration_date` int(10) NOT NULL DEFAULT '0',
  `comment_expiration_date` int(10) NOT NULL DEFAULT '0',
  `edit_date` bigint(14) DEFAULT NULL,
  `recent_comment_date` int(10) DEFAULT NULL,
  `comment_total` int(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_channel_titles`
--

INSERT INTO `exp_channel_titles` (`entry_id`, `site_id`, `channel_id`, `author_id`, `forum_topic_id`, `ip_address`, `title`, `url_title`, `status`, `versioning_enabled`, `view_count_one`, `view_count_two`, `view_count_three`, `view_count_four`, `allow_comments`, `sticky`, `entry_date`, `year`, `month`, `day`, `expiration_date`, `comment_expiration_date`, `edit_date`, `recent_comment_date`, `comment_total`) VALUES
(1, 1, 1, 1, NULL, '190.236.100.159', 'Homepage', 'homepage', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1427662200, '2015', '03', '29', 0, 0, 20150818203555, 0, 0),
(2, 1, 2, 1, NULL, '190.236.100.159', 'Infraestructura Para Todos', 'infraestructura-para-todos', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1428601740, '2015', '04', '09', 0, 0, 20150819213924, 0, 0),
(162, 1, 13, 1, NULL, '190.236.100.159', 'Fondo', 'fondo', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439600820, '2015', '08', '14', 0, 0, 20150820144819, 0, 0),
(151, 1, 3, 1, NULL, '190.236.100.159', 'Ni el huevo ni la gallina', 'ni-el-huevo-ni-la-gallina', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439594520, '2015', '08', '14', 0, 0, 20150814235203, 0, 0),
(7, 1, 2, 1, NULL, '190.42.3.16', 'Proyectos de Ley', 'proyectos-de-ley', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1428940740, '2015', '04', '13', 0, 0, 20150815013220, 0, 0),
(8, 1, 2, 1, NULL, '190.236.100.159', 'Atlas Network', 'atlas-network', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1429026840, '2015', '04', '14', 0, 0, 20150819214027, 0, 0),
(9, 1, 7, 1, NULL, '190.236.100.159', 'Costo y Beneficio', 'costo-y-beneficio', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1430253120, '2015', '04', '28', 0, 0, 20150814175258, 0, 0),
(174, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 12 y 13', 'costo-y-beneficio-12-y-13', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439602080, '2015', '08', '14', 0, 0, 20150818160257, 0, 0),
(11, 1, 11, 1, NULL, '190.236.100.159', 'Test', 'test', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439590560, '2015', '08', '14', 0, 0, 20150814221627, 0, 0),
(12, 1, 10, 1, NULL, '190.236.100.159', 'Somos contribuyentes', 'somos-contribuyentes', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439591460, '2015', '08', '14', 0, 0, 20150818193423, 0, 0),
(13, 1, 3, 1, NULL, '190.236.100.159', 'Congreso: las grandes cifras', 'congreso-las-grandes-cifras', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439592840, '2015', '08', '14', 0, 0, 20150815000043, 0, 0),
(14, 1, 11, 1, NULL, '190.236.100.159', '07H5XZD', '07h5xzd', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(15, 1, 11, 1, NULL, '190.236.100.159', '1teq3uR', '1teq3ur', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(16, 1, 11, 1, NULL, '190.236.100.159', '29NiE6D', '29nie6d', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(17, 1, 11, 1, NULL, '190.236.100.159', '2IJmibM', '2ijmibm', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(18, 1, 11, 1, NULL, '190.236.100.159', '2pBC9ru', '2pbc9ru', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(19, 1, 11, 1, NULL, '190.236.100.159', '3FUddAM', '3fuddam', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(20, 1, 11, 1, NULL, '190.236.100.159', '3kkihD3', '3kkihd3', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(21, 1, 11, 1, NULL, '190.236.100.159', '3ZmQizn', '3zmqizn', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(22, 1, 11, 1, NULL, '190.236.100.159', '4GIQkhC', '4giqkhc', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(23, 1, 11, 1, NULL, '190.236.100.159', '4Irct10', '4irct10', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(24, 1, 11, 1, NULL, '190.236.100.159', '4oinKjg', '4oinkjg', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(25, 1, 11, 1, NULL, '190.236.100.159', '5iB5al2', '5ib5al2', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(26, 1, 11, 1, NULL, '190.236.100.159', '5jrws0q', '5jrws0q', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(27, 1, 11, 1, NULL, '190.236.100.159', '5mF7Xqf', '5mf7xqf', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(28, 1, 11, 1, NULL, '190.236.100.159', '6VppqwS', '6vppqws', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(29, 1, 11, 1, NULL, '190.236.100.159', '7BBKf0B', '7bbkf0b', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(30, 1, 11, 1, NULL, '190.236.100.159', '7ncqSm9', '7ncqsm9', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(31, 1, 11, 1, NULL, '190.236.100.159', '7nyMgHg', '7nymghg', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(32, 1, 11, 1, NULL, '190.236.100.159', '7pfgCsW', '7pfgcsw', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(33, 1, 11, 1, NULL, '190.236.100.159', '89G3Q2J', '89g3q2j', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(34, 1, 11, 1, NULL, '190.236.100.159', '8ea57oa', '8ea57oa', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(35, 1, 11, 1, NULL, '190.236.100.159', '8gc1PvJ', '8gc1pvj', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(36, 1, 11, 1, NULL, '190.236.100.159', '8jccx', '8jccx', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(37, 1, 11, 1, NULL, '190.236.100.159', '9ciDig2', '9cidig2', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(38, 1, 11, 1, NULL, '190.236.100.159', '9z80b2W', '9z80b2w', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(39, 1, 11, 1, NULL, '190.236.100.159', 'acRGBgb', 'acrgbgb', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(40, 1, 11, 1, NULL, '190.236.100.159', 'aFVzsJx', 'afvzsjx', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(41, 1, 11, 1, NULL, '190.236.100.159', 'AovACKd', 'aovackd', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(42, 1, 11, 1, NULL, '190.236.100.159', 'au3EqtK', 'au3eqtk', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(43, 1, 11, 1, NULL, '190.236.100.159', 'AXsTxxH', 'axstxxh', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(44, 1, 11, 1, NULL, '190.236.100.159', 'brpFRvN', 'brpfrvn', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(45, 1, 11, 1, NULL, '190.236.100.159', 'ccnb5NU', 'ccnb5nu', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(46, 1, 11, 1, NULL, '190.236.100.159', 'clXqEFe', 'clxqefe', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(47, 1, 11, 1, NULL, '190.236.100.159', 'cOI3yXs', 'coi3yxs', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(48, 1, 11, 1, NULL, '190.236.100.159', 'CTzn37l', 'ctzn37l', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(49, 1, 11, 1, NULL, '190.236.100.159', 'cy9gh4b', 'cy9gh4b', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(50, 1, 11, 1, NULL, '190.236.100.159', 'DfnAhEq', 'dfnaheq', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(51, 1, 11, 1, NULL, '190.236.100.159', 'dvjbkvw', 'dvjbkvw', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(52, 1, 11, 1, NULL, '190.236.100.159', 'dWJ0Qf8', 'dwj0qf8', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(53, 1, 11, 1, NULL, '190.236.100.159', 'DZvdqTB', 'dzvdqtb', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(54, 1, 11, 1, NULL, '190.236.100.159', 'E89psZP', 'e89pszp', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(55, 1, 11, 1, NULL, '190.236.100.159', 'eExMoTh', 'eexmoth', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(56, 1, 11, 1, NULL, '190.236.100.159', 'eLDEcZT', 'eldeczt', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(57, 1, 11, 1, NULL, '190.236.100.159', 'ETHM0Xw', 'ethm0xw', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(58, 1, 11, 1, NULL, '190.236.100.159', 'f85bqrT', 'f85bqrt', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(59, 1, 11, 1, NULL, '190.236.100.159', 'FpwymhT', 'fpwymht', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(60, 1, 11, 1, NULL, '190.236.100.159', 'fs3FmrO', 'fs3fmro', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(61, 1, 11, 1, NULL, '190.236.100.159', 'GB8rhxE', 'gb8rhxe', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(62, 1, 11, 1, NULL, '190.236.100.159', 'hBESKLy', 'hbeskly', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(63, 1, 11, 1, NULL, '190.236.100.159', 'hEhXCh2', 'hehxch2', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(64, 1, 11, 1, NULL, '190.236.100.159', 'HG1dD5w', 'hg1dd5w', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(65, 1, 11, 1, NULL, '190.236.100.159', 'HNOdMWz', 'hnodmwz', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(66, 1, 11, 1, NULL, '190.236.100.159', 'HqPBKfQ', 'hqpbkfq', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(67, 1, 11, 1, NULL, '190.236.100.159', 'I4E6l2X', 'i4e6l2x', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(68, 1, 11, 1, NULL, '190.236.100.159', 'IfjkmkG', 'ifjkmkg', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(69, 1, 11, 1, NULL, '190.236.100.159', 'iLCxf2a', 'ilcxf2a', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(70, 1, 11, 1, NULL, '190.236.100.159', 'J6mEhoc', 'j6mehoc', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(71, 1, 11, 1, NULL, '190.236.100.159', 'Jbhx31X', 'jbhx31x', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(72, 1, 11, 1, NULL, '190.236.100.159', 'jbpVzQV', 'jbpvzqv', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(73, 1, 11, 1, NULL, '190.236.100.159', 'JG6XRXX', 'jg6xrxx', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(74, 1, 11, 1, NULL, '190.236.100.159', 'kaYSliU', 'kaysliu', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(75, 1, 11, 1, NULL, '190.236.100.159', 'kOaZQUb', 'koazqub', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(76, 1, 11, 1, NULL, '190.236.100.159', 'L7uTu8L', 'l7utu8l', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(77, 1, 11, 1, NULL, '190.236.100.159', 'LEaokwi', 'leaokwi', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(78, 1, 11, 1, NULL, '190.236.100.159', 'LwGgOeP', 'lwggoep', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(79, 1, 11, 1, NULL, '190.236.100.159', 'lx4aZLJ', 'lx4azlj', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(80, 1, 11, 1, NULL, '190.236.100.159', 'LXCVNFC', 'lxcvnfc', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(81, 1, 11, 1, NULL, '190.236.100.159', 'lYHqRee', 'lyhqree', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(82, 1, 11, 1, NULL, '190.236.100.159', 'M6Q6imc', 'm6q6imc', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(83, 1, 11, 1, NULL, '190.236.100.159', 'mAxhvMr', 'maxhvmr', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(84, 1, 11, 1, NULL, '190.236.100.159', 'mMkiPxN', 'mmkipxn', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(85, 1, 11, 1, NULL, '190.236.100.159', 'MYW1Kvk', 'myw1kvk', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(86, 1, 11, 1, NULL, '190.236.100.159', 'N7nzhLh', 'n7nzhlh', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(87, 1, 11, 1, NULL, '190.236.100.159', 'NBqO3qX', 'nbqo3qx', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(88, 1, 11, 1, NULL, '190.236.100.159', 'NI47jKc', 'ni47jkc', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(89, 1, 11, 1, NULL, '190.236.100.159', 'nPL2fok', 'npl2fok', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(90, 1, 11, 1, NULL, '190.236.100.159', 'NVYVucx', 'nvyvucx', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(91, 1, 11, 1, NULL, '190.236.100.159', 'OaQt894', 'oaqt894', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(92, 1, 11, 1, NULL, '190.236.100.159', 'OHt3l4f', 'oht3l4f', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(93, 1, 11, 1, NULL, '190.236.100.159', 'oIQ2or6', 'oiq2or6', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(94, 1, 11, 1, NULL, '190.236.100.159', 'onj4ytq', 'onj4ytq', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(95, 1, 11, 1, NULL, '190.236.100.159', 'OO4PTVt', 'oo4ptvt', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(96, 1, 11, 1, NULL, '190.236.100.159', 'oQ3VdpX', 'oq3vdpx', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(97, 1, 11, 1, NULL, '190.236.100.159', 'OQ5yYqX', 'oq5yyqx', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(98, 1, 11, 1, NULL, '190.236.100.159', 'OxeVtSu', 'oxevtsu', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(99, 1, 11, 1, NULL, '190.236.100.159', 'P127V', 'p127v', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(100, 1, 11, 1, NULL, '190.236.100.159', 'pEKyawL', 'pekyawl', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(101, 1, 11, 1, NULL, '190.236.100.159', 'pMIoPQB', 'pmiopqb', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(102, 1, 11, 1, NULL, '190.236.100.159', 'puxVYjB', 'puxvyjb', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(103, 1, 11, 1, NULL, '190.236.100.159', 'PW72O8v', 'pw72o8v', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(104, 1, 11, 1, NULL, '190.236.100.159', 'q8dWZzd', 'q8dwzzd', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(105, 1, 11, 1, NULL, '190.236.100.159', 'qdZOfkh', 'qdzofkh', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(106, 1, 11, 1, NULL, '190.236.100.159', 'QGQhdKS', 'qgqhdks', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(107, 1, 11, 1, NULL, '190.236.100.159', 'Qizaqzy', 'qizaqzy', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(108, 1, 11, 1, NULL, '190.236.100.159', 'qy9fMlz', 'qy9fmlz', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(109, 1, 11, 1, NULL, '190.236.100.159', 'r7w5QrP', 'r7w5qrp', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(110, 1, 11, 1, NULL, '190.236.100.159', 'RcGf0tb', 'rcgf0tb', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(111, 1, 11, 1, NULL, '190.236.100.159', 'rPg2e8m', 'rpg2e8m', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(112, 1, 11, 1, NULL, '190.236.100.159', 'RsU2b3B', 'rsu2b3b', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(113, 1, 11, 1, NULL, '190.236.100.159', 'Rzei1n5', 'rzei1n5', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593649, '2015', '08', '14', 0, 0, 20150814230729, 0, 0),
(114, 1, 11, 1, NULL, '190.236.100.159', 'RzmycLv', 'rzmyclv', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(115, 1, 11, 1, NULL, '190.236.100.159', 'T6bVyZi', 't6bvyzi', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(116, 1, 11, 1, NULL, '190.236.100.159', 'T8jq5mV', 't8jq5mv', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(117, 1, 11, 1, NULL, '190.236.100.159', 'TcynGMN', 'tcyngmn', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(118, 1, 11, 1, NULL, '190.236.100.159', 'TWDLe1d', 'twdle1d', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(119, 1, 11, 1, NULL, '190.236.100.159', 'TZbrZeo', 'tzbrzeo', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(120, 1, 11, 1, NULL, '190.236.100.159', 'tzySx0S', 'tzysx0s', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(121, 1, 11, 1, NULL, '190.236.100.159', 'ufdmZlE', 'ufdmzle', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(122, 1, 11, 1, NULL, '190.236.100.159', 'uqPfUeR', 'uqpfuer', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(123, 1, 11, 1, NULL, '190.236.100.159', 'uwpMWYq', 'uwpmwyq', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(124, 1, 11, 1, NULL, '190.236.100.159', 'v934oZf', 'v934ozf', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(125, 1, 11, 1, NULL, '190.236.100.159', 'VfFTSQf', 'vfftsqf', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(126, 1, 11, 1, NULL, '190.236.100.159', 'VggIMS9', 'vggims9', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(127, 1, 11, 1, NULL, '190.236.100.159', 'vkGGk66', 'vkggk66', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(128, 1, 11, 1, NULL, '190.236.100.159', 'vlc7axb', 'vlc7axb', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(129, 1, 11, 1, NULL, '190.236.100.159', 'VToEvCs', 'vtoevcs', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(130, 1, 11, 1, NULL, '190.236.100.159', 'Wn2K4H0', 'wn2k4h0', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(131, 1, 11, 1, NULL, '190.236.100.159', 'WnKUJmt', 'wnkujmt', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(132, 1, 11, 1, NULL, '190.236.100.159', 'WsGT2q3', 'wsgt2q3', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(133, 1, 11, 1, NULL, '190.236.100.159', 'wvk4LGe', 'wvk4lge', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(134, 1, 11, 1, NULL, '190.236.100.159', 'XgpR4', 'xgpr4', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(135, 1, 11, 1, NULL, '190.236.100.159', 'XmW72Pq', 'xmw72pq', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(136, 1, 11, 1, NULL, '190.236.100.159', 'xqPBeGq', 'xqpbegq', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(137, 1, 11, 1, NULL, '190.236.100.159', 'XuCJbhM', 'xucjbhm', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(138, 1, 11, 1, NULL, '190.236.100.159', 'XvIh5uE', 'xvih5ue', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(139, 1, 11, 1, NULL, '190.236.100.159', 'yFhiPVh', 'yfhipvh', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(140, 1, 11, 1, NULL, '190.236.100.159', 'YjCNAoW', 'yjcnaow', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(141, 1, 11, 1, NULL, '190.236.100.159', 'YNOcdKY', 'ynocdky', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(142, 1, 11, 1, NULL, '190.236.100.159', 'YQV5qrV', 'yqv5qrv', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(143, 1, 11, 1, NULL, '190.236.100.159', 'yRH3oDj', 'yrh3odj', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(144, 1, 11, 1, NULL, '190.236.100.159', 'yTHztMt', 'ythztmt', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(145, 1, 11, 1, NULL, '190.236.100.159', 'zcXo9Zg', 'zcxo9zg', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(146, 1, 11, 1, NULL, '190.236.100.159', 'zJTwZDW', 'zjtwzdw', 'open', 'y', 0, 0, 0, 0, 'n', 'n', 1439593652, '2015', '08', '14', 0, 0, 20150814230732, 0, 0),
(147, 1, 3, 1, NULL, '190.236.100.159', 'Tramitología: “Tócala que es realidad”', 'tramitologia-tocala-que-es-realidad', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439593800, '2015', '08', '14', 0, 0, 20150814231800, 0, 0),
(148, 1, 3, 1, NULL, '190.236.100.159', 'El observatorio de infraestructura', 'el-observatorio-de-infraestructura', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439593920, '2015', '08', '14', 0, 0, 20150814231404, 0, 0),
(149, 1, 3, 1, NULL, '190.236.100.159', 'Un discurso sin rumbo, una Presidencia sin rumbo', 'un-discurso-sin-rumbo-una-presidencia-sin-rumbo', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439594280, '2015', '08', '14', 0, 0, 20150814232004, 0, 0),
(161, 1, 12, 1, NULL, '190.236.100.159', 'Colaboradores', 'colaboradores', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439600220, '2015', '08', '14', 0, 0, 20150818192102, 0, 0),
(153, 1, 4, 1, NULL, '190.236.100.159', 'Nuestras áreas de  investigación y difusión son:', 'nuestras-areas-de-investigacion-y-difusion-son1', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439599200, '2015', '08', '14', 0, 0, 20150819210058, 0, 0),
(154, 1, 5, 1, NULL, '190.42.3.16', 'Secretario:', 'secretario', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439599320, '2015', '08', '14', 0, 0, 20150820023850, 0, 0),
(155, 1, 5, 1, NULL, '190.236.100.159', 'Vice-Presidente:', 'vice-presidente', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439599500, '2015', '08', '14', 0, 0, 20150815004554, 0, 0),
(156, 1, 5, 1, NULL, '190.42.3.16', 'Presidente:', 'presidente1', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439599560, '2015', '08', '14', 0, 0, 20150820023812, 0, 0),
(157, 1, 6, 1, NULL, '190.236.100.159', 'Caricaturas: Molina Dibujos', 'caricaturas-molina-dibujos', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439599620, '2015', '08', '14', 0, 0, 20150815004835, 0, 0),
(158, 1, 6, 1, NULL, '190.236.100.159', 'Investigadores: Juan José García, César Valencia', 'investigadores-juan-jose-garcia-cesar-valencia', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439599680, '2015', '08', '14', 0, 0, 20150815004906, 0, 0),
(159, 1, 6, 1, NULL, '190.42.3.16', 'Colaboradores: Klever Espinoza, José Raúl Odría', 'colaboradores-klever-espinoza-jose-raul-odria', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439599740, '2015', '08', '14', 0, 0, 20150820023925, 0, 0),
(160, 1, 6, 1, NULL, '190.236.100.159', 'Productos Multimedia: MagooBTL', 'productos-multimedia-magoobtl', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439599740, '2015', '08', '14', 0, 0, 20150815004947, 0, 0),
(163, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 01', 'costo-y-beneficio-01', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439601240, '2015', '08', '14', 0, 0, 20150815012007, 0, 0),
(164, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 02', 'costo-y-beneficio-02', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439601600, '2015', '08', '14', 0, 0, 20150818160758, 0, 0),
(165, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 03', 'costo-y-beneficio-03', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439601660, '2015', '08', '14', 0, 0, 20150818160742, 0, 0),
(166, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 04', 'costo-y-beneficio-04', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439601720, '2015', '08', '14', 0, 0, 20150818160727, 0, 0),
(167, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 05', 'costo-y-beneficio-05', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439601720, '2015', '08', '14', 0, 0, 20150818160710, 0, 0),
(168, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 06', 'costo-y-beneficio-06', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439601840, '2015', '08', '14', 0, 0, 20150818160652, 0, 0),
(169, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 07', 'costo-y-beneficio-07', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439601840, '2015', '08', '14', 0, 0, 20150818160635, 0, 0),
(170, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 08', 'costo-y-beneficio-08', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439601840, '2015', '08', '14', 0, 0, 20150818160539, 0, 0),
(171, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 09', 'costo-y-beneficio-09', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439601960, '2015', '08', '14', 0, 0, 20150818160516, 0, 0),
(172, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 10', 'costo-y-beneficio-10', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439601960, '2015', '08', '14', 0, 0, 20150818160458, 0, 0),
(173, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 11', 'costo-y-beneficio-11', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439601960, '2015', '08', '14', 0, 0, 20150818160436, 0, 0),
(175, 1, 9, 1, NULL, '190.236.100.159', 'Costo y Beneficio 14', 'costo-y-beneficio-14', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439602080, '2015', '08', '14', 0, 0, 20150818160237, 0, 0),
(176, 1, 3, 1, NULL, '190.236.100.159', 'Bancos, campaña y responsabilidad', 'bancos-campana-y-responsabilidad', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1439917200, '2015', '08', '18', 0, 0, 20150819203849, 0, 0),
(179, 1, 15, 1, NULL, '190.236.100.159', 'Contribuyentes por respeto', 'contribuyentes-por-respeto', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1440087240, '2015', '08', '20', 0, 0, 20150820202640, 0, 0),
(180, 1, 14, 1, NULL, '128.164.134.126', 'Policy Note 01 - Regulación sin evidencia', 'policy-notes-01', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1440100500, '2015', '08', '20', 0, 0, 20150903223738, 0, 0),
(181, 1, 3, 2, NULL, '190.41.179.86', 'Cigarrillo electrónico: nadie sabe para quien trabaja', 'cigarrillo-electronico-nadie-sabe-para-quien-trabaja', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1440432000, '2015', '08', '24', 0, 0, 20150824160828, 0, 0),
(182, 1, 3, 2, NULL, '128.164.134.128', 'Infraestructura: Hora de los consensos', 'infraestructura-hora-de-los-consensos', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1441228620, '2015', '09', '02', 0, 0, 20150902212024, 0, 0),
(183, 1, 3, 2, NULL, '128.164.134.128', 'Se hace camino al andar, no al desandar', 'se-hace-camino-al-andar-no-al-desandar', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1441228800, '2015', '09', '02', 0, 0, 20150902212328, 0, 0),
(184, 1, 3, 2, NULL, '128.164.134.128', 'Un impuesto a la ineficiencia', 'un-impuesto-a-la-ineficiencia', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1441229040, '2015', '09', '02', 0, 0, 20150902212629, 0, 0),
(185, 1, 14, 2, NULL, '128.164.134.126', 'Policy Note 02 - Obtención de predios para obras de infraestructura', 'policy-note-02-obtencion-de-predios-para-obras-de-infraestructura', 'open', 'y', 0, 0, 0, 0, 'y', 'n', 1441319460, '2015', '09', '03', 0, 0, 20150903223940, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_comments`
--

CREATE TABLE IF NOT EXISTS `exp_comments` (
  `comment_id` int(10) unsigned NOT NULL,
  `site_id` int(4) DEFAULT '1',
  `entry_id` int(10) unsigned DEFAULT '0',
  `channel_id` int(4) unsigned DEFAULT '1',
  `author_id` int(10) unsigned DEFAULT '0',
  `status` char(1) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `url` varchar(75) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `comment_date` int(10) DEFAULT NULL,
  `edit_date` int(10) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_comment_subscriptions`
--

CREATE TABLE IF NOT EXISTS `exp_comment_subscriptions` (
  `subscription_id` int(10) unsigned NOT NULL,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `member_id` int(10) DEFAULT '0',
  `email` varchar(75) DEFAULT NULL,
  `subscription_date` varchar(10) DEFAULT NULL,
  `notification_sent` char(1) DEFAULT 'n',
  `hash` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_content_types`
--

CREATE TABLE IF NOT EXISTS `exp_content_types` (
  `content_type_id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_content_types`
--

INSERT INTO `exp_content_types` (`content_type_id`, `name`) VALUES
(1, 'grid'),
(2, 'channel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_cp_log`
--

CREATE TABLE IF NOT EXISTS `exp_cp_log` (
  `id` int(10) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `username` varchar(32) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `act_date` int(10) NOT NULL,
  `action` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_cp_log`
--

INSERT INTO `exp_cp_log` (`id`, `site_id`, `member_id`, `username`, `ip_address`, `act_date`, `action`) VALUES
(1, 1, 1, 'herman.marin', '190.234.12.3', 1427576274, 'Logged in'),
(2, 1, 1, 'herman.marin', '190.234.105.17', 1427659468, 'Logged in'),
(3, 1, 1, 'herman.marin', '190.234.105.17', 1427661258, 'Field Group Created:&nbsp;Homepage'),
(4, 1, 1, 'herman.marin', '190.234.105.17', 1427662229, 'Channel Created:&nbsp;&nbsp;Homepage'),
(5, 1, 1, 'herman.marin', '181.64.192.83', 1428266329, 'Logged in'),
(6, 1, 1, 'herman.marin', '181.64.192.83', 1428270593, 'Logged in'),
(7, 1, 1, 'herman.marin', '181.64.192.83', 1428270606, 'Field Group Created:&nbsp;Alianzas'),
(8, 1, 1, 'herman.marin', '181.64.192.83', 1428271077, 'Channel Created:&nbsp;&nbsp;Alianzas'),
(9, 1, 1, 'herman.marin', '181.64.192.83', 1428271209, 'Field Group Created:&nbsp;Novedades'),
(10, 1, 1, 'herman.marin', '181.64.192.83', 1428271397, 'Channel Created:&nbsp;&nbsp;Novedades'),
(11, 1, 1, 'herman.marin', '181.64.192.83', 1428272808, 'Field Group Created:&nbsp;Area de Trabajo'),
(12, 1, 1, 'herman.marin', '181.64.192.83', 1428272958, 'Channel Created:&nbsp;&nbsp;Area de Trabajo'),
(13, 1, 1, 'herman.marin', '181.64.192.83', 1428273430, 'Field Group Created:&nbsp;Equipo'),
(14, 1, 1, 'herman.marin', '181.64.192.83', 1428273489, 'Channel Created:&nbsp;&nbsp;Equipo'),
(15, 1, 1, 'herman.marin', '181.64.192.83', 1428273662, 'Field Group Created:&nbsp;Asociados'),
(16, 1, 1, 'herman.marin', '181.64.192.83', 1428273773, 'Channel Created:&nbsp;&nbsp;Asociados'),
(17, 1, 1, 'herman.marin', '74.101.61.70', 1428531589, 'Logged in'),
(18, 1, 1, 'herman.marin', '190.232.250.179', 1428601514, 'Logged in'),
(19, 1, 1, 'herman.marin', '190.232.250.179', 1428601754, 'Logged in'),
(20, 1, 1, 'herman.marin', '190.232.250.179', 1428687424, 'Logged in'),
(21, 1, 1, 'herman.marin', '190.232.250.179', 1428712622, 'Logged in'),
(22, 1, 1, 'herman.marin', '190.232.250.179', 1428712777, 'Logged in'),
(23, 1, 1, 'herman.marin', '190.232.250.179', 1428940524, 'Logged in'),
(24, 1, 1, 'herman.marin', '190.232.250.179', 1428954572, 'Logged in'),
(25, 1, 1, 'herman.marin', '190.232.250.179', 1428959579, 'Logged in'),
(26, 1, 1, 'herman.marin', '190.232.250.179', 1429026502, 'Logged in'),
(27, 1, 1, 'herman.marin', '190.232.250.179', 1429818108, 'Logged in'),
(28, 1, 1, 'herman.marin', '190.232.250.179', 1429889541, 'Logged in'),
(29, 1, 1, 'herman.marin', '190.232.250.179', 1430249934, 'Logged in'),
(30, 1, 1, 'herman.marin', '190.232.250.179', 1430250210, 'Field Group Created:&nbsp;Plaza Bolivar'),
(31, 1, 1, 'herman.marin', '190.232.250.179', 1430250351, 'Logged in'),
(32, 1, 1, 'herman.marin', '190.232.250.179', 1430251045, 'Field Group Created:&nbsp;Costo Beneficio'),
(33, 1, 1, 'herman.marin', '190.232.250.179', 1430253089, 'Channel Created:&nbsp;&nbsp;Costo Beneficio'),
(34, 1, 1, 'herman.marin', '190.232.250.179', 1430253117, 'Channel Created:&nbsp;&nbsp;Plaza Bolivar'),
(35, 1, 1, 'herman.marin', '190.232.250.179', 1430261225, 'Logged in'),
(36, 1, 1, 'herman.marin', '190.236.100.159', 1435859663, 'Logged in'),
(37, 1, 1, 'herman.marin', '190.236.100.159', 1439569605, 'Logged in'),
(38, 1, 1, 'herman.marin', '190.236.100.159', 1439571986, 'Logged in'),
(39, 1, 1, 'herman.marin', '190.236.100.159', 1439575003, 'Logged in'),
(40, 1, 1, 'herman.marin', '190.236.100.159', 1439575084, 'Field Group Created:&nbsp;Boletin Costo Beneficio'),
(41, 1, 1, 'herman.marin', '190.236.100.159', 1439575204, 'Channel Created:&nbsp;&nbsp;Boletin Costo Beneficio'),
(42, 1, 1, 'herman.marin', '190.236.100.159', 1439583008, 'Logged in'),
(43, 1, 1, 'herman.marin', '190.236.100.159', 1439584723, 'Logged in'),
(44, 1, 1, 'herman.marin', '190.236.100.159', 1439584739, 'Field group Deleted:&nbsp;&nbsp;Plaza Bolivar'),
(45, 1, 1, 'herman.marin', '190.236.100.159', 1439584748, 'Channel Deleted:&nbsp;&nbsp;Plaza Bolivar'),
(46, 1, 1, 'herman.marin', '190.236.100.159', 1439586402, 'Field Group Created:&nbsp;Somos contribuyentes '),
(47, 1, 1, 'herman.marin', '190.236.100.159', 1439586552, 'Channel Created:&nbsp;&nbsp;Somos contribuyentes'),
(48, 1, 1, 'herman.marin', '190.236.100.159', 1439586652, 'Logged in'),
(49, 1, 1, 'herman.marin', '190.236.100.159', 1439586657, 'Field Group Created:&nbsp;Colaboradores'),
(50, 1, 1, 'herman.marin', '190.236.100.159', 1439586725, 'Field group Deleted:&nbsp;&nbsp;Colaboradores'),
(51, 1, 1, 'herman.marin', '190.236.100.159', 1439587347, 'Logged in'),
(52, 1, 1, 'herman.marin', '190.236.100.159', 1439589416, 'Logged in'),
(53, 1, 1, 'herman.marin', '190.236.100.159', 1439589432, 'Field Group Created:&nbsp;Caricaturas'),
(54, 1, 1, 'herman.marin', '190.236.100.159', 1439589507, 'Channel Created:&nbsp;&nbsp;Caricaturas'),
(55, 1, 1, 'herman.marin', '190.236.100.159', 1439590126, 'Logged in'),
(56, 1, 1, 'herman.marin', '190.236.100.159', 1439591199, 'Logged in'),
(57, 1, 1, 'herman.marin', '190.236.100.159', 1439592439, 'Logged in'),
(58, 1, 1, 'herman.marin', '190.236.100.159', 1439593419, 'Logged in'),
(59, 1, 1, 'herman.marin', '190.236.100.159', 1439600151, 'Field Group Created:&nbsp;Colaboradores'),
(60, 1, 1, 'herman.marin', '190.236.100.159', 1439600236, 'Channel Created:&nbsp;&nbsp;Colaboradores'),
(61, 1, 1, 'herman.marin', '190.236.100.159', 1439600770, 'Field Group Created:&nbsp;Investigacion'),
(62, 1, 1, 'herman.marin', '190.236.100.159', 1439600817, 'Channel Created:&nbsp;&nbsp;Investigacion'),
(63, 1, 1, 'herman.marin', '190.42.3.16', 1439601377, 'Logged in'),
(64, 1, 1, 'herman.marin', '190.236.100.159', 1439913583, 'Logged in'),
(65, 1, 1, 'herman.marin', '190.41.179.86', 1439917209, 'Logged in'),
(66, 1, 1, 'herman.marin', '190.41.179.86', 1439917448, 'Logged out'),
(67, 1, 1, 'herman.marin', '190.236.100.159', 1439924077, 'Logged in'),
(68, 1, 1, 'herman.marin', '190.236.100.159', 1439930059, 'Logged in'),
(69, 1, 1, 'herman.marin', '190.236.100.159', 1440016682, 'Logged in'),
(70, 1, 1, 'herman.marin', '190.236.100.159', 1440017838, 'Logged in'),
(71, 1, 1, 'herman.marin', '190.236.100.159', 1440020307, 'Logged in'),
(72, 1, 1, 'herman.marin', '190.236.100.159', 1440021661, 'Logged in'),
(73, 1, 1, 'herman.marin', '190.236.100.159', 1440023760, 'Logged in'),
(74, 1, 1, 'herman.marin', '190.236.100.159', 1440023843, 'Field Group Created:&nbsp;Policy Notes'),
(75, 1, 1, 'herman.marin', '190.236.100.159', 1440023981, 'Channel Created:&nbsp;&nbsp;Policy Notes'),
(76, 1, 1, 'herman.marin', '190.236.100.159', 1440025536, 'Logged in'),
(77, 1, 1, 'herman.marin', '190.236.200.245', 1440029757, 'Logged in'),
(78, 1, 1, 'herman.marin', '190.236.200.245', 1440029820, 'Member profile created:&nbsp;&nbsp;mario.zuniga'),
(79, 1, 1, 'herman.marin', '190.236.200.245', 1440029922, 'Member profile created:&nbsp;&nbsp;fernando.caceres'),
(80, 1, 1, 'herman.marin', '190.236.200.245', 1440029962, 'Member profile created:&nbsp;&nbsp;andres.calderon'),
(81, 1, 1, 'herman.marin', '190.42.3.16', 1440038162, 'Logged in'),
(82, 1, 1, 'herman.marin', '190.236.100.159', 1440082033, 'Logged in'),
(83, 1, 1, 'herman.marin', '190.236.100.159', 1440087132, 'Logged in'),
(84, 1, 1, 'herman.marin', '190.236.100.159', 1440087152, 'Field Group Created:&nbsp;Metatags'),
(85, 1, 1, 'herman.marin', '190.236.100.159', 1440087268, 'Channel Created:&nbsp;&nbsp;Metatags'),
(86, 1, 1, 'herman.marin', '190.236.100.159', 1440097745, 'Logged in'),
(87, 1, 1, 'herman.marin', '190.236.100.159', 1440098164, 'Logged in'),
(88, 1, 1, 'herman.marin', '190.236.100.159', 1440098214, 'Custom Field Deleted:&nbsp;Imagen contribuyentes'),
(89, 1, 1, 'herman.marin', '190.236.100.159', 1440100070, 'Logged in'),
(90, 1, 1, 'herman.marin', '190.236.100.159', 1440100239, 'Logged in'),
(91, 1, 1, 'herman.marin', '190.236.100.159', 1440114072, 'Logged in'),
(92, 1, 1, 'herman.marin', '181.64.209.26', 1440124399, 'Logged in'),
(93, 1, 1, 'herman.marin', '190.236.100.159', 1440178466, 'Logged in'),
(94, 1, 1, 'herman.marin', '190.236.100.159', 1440178479, 'Logged in'),
(95, 1, 1, 'herman.marin', '190.236.100.159', 1440187769, 'Logged in'),
(96, 1, 2, 'mario.zuniga', '190.41.179.86', 1440432009, 'Logged in'),
(97, 1, 2, 'mario.zuniga', '190.41.179.86', 1440432531, 'Logged out'),
(98, 1, 4, 'andres.calderon', '190.236.100.159', 1440444801, 'Logged in'),
(99, 1, 4, 'andres.calderon', '190.236.100.159', 1440445382, 'Logged out'),
(100, 1, 1, 'herman.marin', '190.236.100.159', 1440445388, 'Logged in'),
(101, 1, 3, 'fernando.caceres', '190.236.100.159', 1440451171, 'Logged in'),
(102, 1, 3, 'fernando.caceres', '190.236.100.159', 1440451244, 'Logged in'),
(103, 1, 3, 'fernando.caceres', '190.236.100.159', 1440451253, 'Logged out'),
(104, 1, 1, 'herman.marin', '190.236.100.159', 1440451262, 'Logged in'),
(105, 1, 3, 'fernando.caceres', '190.236.100.159', 1440451349, 'Logged in'),
(106, 1, 2, 'mario.zuniga', '128.164.134.126', 1440798820, 'Logged in'),
(107, 1, 2, 'mario.zuniga', '128.164.134.126', 1440799534, 'Logged out'),
(108, 1, 2, 'mario.zuniga', '128.164.134.126', 1440799614, 'Logged in'),
(109, 1, 2, 'mario.zuniga', '128.164.134.126', 1440799624, 'Logged out'),
(110, 1, 3, 'fernando.caceres', '181.67.224.12', 1440807035, 'Logged in'),
(111, 1, 3, 'fernando.caceres', '181.67.224.12', 1440807381, 'Logged out'),
(112, 1, 3, 'fernando.caceres', '181.67.224.12', 1440807397, 'Logged in'),
(113, 1, 3, 'fernando.caceres', '181.67.224.12', 1440807401, 'Logged out'),
(114, 1, 3, 'fernando.caceres', '190.41.179.86', 1441138834, 'Logged in'),
(115, 1, 2, 'mario.zuniga', '128.164.134.128', 1441228630, 'Logged in'),
(116, 1, 2, 'mario.zuniga', '128.164.134.128', 1441229212, 'Logged out'),
(117, 1, 2, 'mario.zuniga', '128.164.134.126', 1441319501, 'Logged in'),
(118, 1, 1, 'herman.marin', '190.236.100.159', 1441741753, 'Logged in'),
(119, 1, 1, 'herman.marin', '190.236.100.159', 1441742759, 'Logged in'),
(120, 1, 1, 'herman.marin', '::1', 1441818988, 'Logged in'),
(121, 1, 1, 'herman.marin', '::1', 1441819366, 'Logged in'),
(122, 1, 1, 'herman.marin', '::1', 1441819523, 'Logged in'),
(123, 1, 1, 'herman.marin', '::1', 1441820493, 'Logged in');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_cp_search_index`
--

CREATE TABLE IF NOT EXISTS `exp_cp_search_index` (
  `search_id` int(10) unsigned NOT NULL,
  `controller` varchar(20) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `access` varchar(50) DEFAULT NULL,
  `keywords` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_developer_log`
--

CREATE TABLE IF NOT EXISTS `exp_developer_log` (
  `log_id` int(10) unsigned NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `viewed` char(1) NOT NULL DEFAULT 'n',
  `description` text,
  `function` varchar(100) DEFAULT NULL,
  `line` int(10) unsigned DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `deprecated_since` varchar(10) DEFAULT NULL,
  `use_instead` varchar(100) DEFAULT NULL,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `template_name` varchar(100) DEFAULT NULL,
  `template_group` varchar(100) DEFAULT NULL,
  `addon_module` varchar(100) DEFAULT NULL,
  `addon_method` varchar(100) DEFAULT NULL,
  `snippets` text,
  `hash` char(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_email_cache`
--

CREATE TABLE IF NOT EXISTS `exp_email_cache` (
  `cache_id` int(6) unsigned NOT NULL,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `total_sent` int(6) unsigned NOT NULL,
  `from_name` varchar(70) NOT NULL,
  `from_email` varchar(75) NOT NULL,
  `recipient` text NOT NULL,
  `cc` text NOT NULL,
  `bcc` text NOT NULL,
  `recipient_array` mediumtext NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  `plaintext_alt` mediumtext NOT NULL,
  `mailinglist` char(1) NOT NULL DEFAULT 'n',
  `mailtype` varchar(6) NOT NULL,
  `text_fmt` varchar(40) NOT NULL,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `priority` char(1) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_email_cache_mg`
--

CREATE TABLE IF NOT EXISTS `exp_email_cache_mg` (
  `cache_id` int(6) unsigned NOT NULL,
  `group_id` smallint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_email_cache_ml`
--

CREATE TABLE IF NOT EXISTS `exp_email_cache_ml` (
  `cache_id` int(6) unsigned NOT NULL,
  `list_id` smallint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_email_console_cache`
--

CREATE TABLE IF NOT EXISTS `exp_email_console_cache` (
  `cache_id` int(6) unsigned NOT NULL,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `recipient` varchar(75) NOT NULL,
  `recipient_name` varchar(50) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_entry_versioning`
--

CREATE TABLE IF NOT EXISTS `exp_entry_versioning` (
  `version_id` int(10) unsigned NOT NULL,
  `entry_id` int(10) unsigned NOT NULL,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `version_date` int(10) NOT NULL,
  `version_data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_extensions`
--

CREATE TABLE IF NOT EXISTS `exp_extensions` (
  `extension_id` int(10) unsigned NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(50) NOT NULL DEFAULT '',
  `hook` varchar(50) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '10',
  `version` varchar(10) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT 'y'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_extensions`
--

INSERT INTO `exp_extensions` (`extension_id`, `class`, `method`, `hook`, `settings`, `priority`, `version`, `enabled`) VALUES
(1, 'Rte_ext', 'myaccount_nav_setup', 'myaccount_nav_setup', '', 10, '1.0.1', 'y'),
(2, 'Rte_ext', 'cp_menu_array', 'cp_menu_array', '', 10, '1.0.1', 'y'),
(3, 'Nsm_htaccess_generator_ext', 'entry_submission_end', 'entry_submission_end', 'a:0:{}', 10, '1.1.6', 'y'),
(4, 'Nsm_htaccess_generator_ext', 'update_template_end', 'update_template_end', 'a:0:{}', 10, '1.1.6', 'y'),
(5, 'Importer_ext', 'cp_js_end', 'cp_js_end', 'a:0:{}', 4, '2.2.5', 'y'),
(6, 'Channel_images_ext', 'wygwam_config', 'wygwam_config', 'a:0:{}', 100, '5.4.19', 'y'),
(7, 'Channel_images_ext', 'wygwam_tb_groups', 'wygwam_tb_groups', 'a:0:{}', 100, '5.4.19', 'y'),
(8, 'Channel_images_ext', 'wygwam_before_display', 'wygwam_before_display', 'a:0:{}', 100, '5.4.19', 'y'),
(9, 'Channel_images_ext', 'wygwam_before_save', 'wygwam_before_save', 'a:0:{}', 100, '5.4.19', 'y'),
(10, 'Channel_images_ext', 'wygwam_before_replace', 'wygwam_before_replace', 'a:0:{}', 100, '5.4.19', 'y'),
(11, 'Channel_images_ext', 'editor_before_display', 'editor_before_display', 'a:0:{}', 100, '5.4.19', 'y'),
(12, 'Channel_images_ext', 'editor_before_save', 'editor_before_save', 'a:0:{}', 100, '5.4.19', 'y'),
(13, 'Channel_images_ext', 'editor_before_replace', 'editor_before_replace', 'a:0:{}', 100, '5.4.19', 'y');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_fieldtypes`
--

CREATE TABLE IF NOT EXISTS `exp_fieldtypes` (
  `fieldtype_id` int(4) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `version` varchar(12) NOT NULL,
  `settings` text,
  `has_global_settings` char(1) DEFAULT 'n'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_fieldtypes`
--

INSERT INTO `exp_fieldtypes` (`fieldtype_id`, `name`, `version`, `settings`, `has_global_settings`) VALUES
(1, 'select', '1.0', 'YTowOnt9', 'n'),
(2, 'text', '1.0', 'YTowOnt9', 'n'),
(3, 'textarea', '1.0', 'YTowOnt9', 'n'),
(4, 'date', '1.0', 'YTowOnt9', 'n'),
(5, 'file', '1.0', 'YTowOnt9', 'n'),
(6, 'grid', '1.0', 'YTowOnt9', 'n'),
(7, 'multi_select', '1.0', 'YTowOnt9', 'n'),
(8, 'checkboxes', '1.0', 'YTowOnt9', 'n'),
(9, 'radio', '1.0', 'YTowOnt9', 'n'),
(10, 'relationship', '1.0', 'YTowOnt9', 'n'),
(11, 'rte', '1.0', 'YTowOnt9', 'n'),
(12, 'channel_images', '5.4.19', 'YTowOnt9', 'n'),
(13, 'freeform', '4.2.2', 'YTowOnt9', 'n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_field_formatting`
--

CREATE TABLE IF NOT EXISTS `exp_field_formatting` (
  `formatting_id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned NOT NULL,
  `field_fmt` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=273 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_field_formatting`
--

INSERT INTO `exp_field_formatting` (`formatting_id`, `field_id`, `field_fmt`) VALUES
(1, 1, 'none'),
(2, 1, 'br'),
(3, 1, 'markdown'),
(4, 1, 'xhtml'),
(5, 2, 'none'),
(6, 2, 'br'),
(7, 2, 'markdown'),
(8, 2, 'xhtml'),
(9, 3, 'none'),
(10, 3, 'br'),
(11, 3, 'markdown'),
(12, 3, 'xhtml'),
(13, 4, 'none'),
(14, 4, 'br'),
(15, 4, 'markdown'),
(16, 4, 'xhtml'),
(17, 5, 'none'),
(18, 5, 'br'),
(19, 5, 'markdown'),
(20, 5, 'xhtml'),
(21, 6, 'none'),
(22, 6, 'br'),
(23, 6, 'markdown'),
(24, 6, 'xhtml'),
(25, 7, 'none'),
(26, 7, 'br'),
(27, 7, 'markdown'),
(28, 7, 'xhtml'),
(29, 8, 'none'),
(30, 8, 'br'),
(31, 8, 'markdown'),
(32, 8, 'xhtml'),
(33, 9, 'none'),
(34, 9, 'br'),
(35, 9, 'markdown'),
(36, 9, 'xhtml'),
(37, 10, 'none'),
(38, 10, 'br'),
(39, 10, 'markdown'),
(40, 10, 'xhtml'),
(41, 11, 'none'),
(42, 11, 'br'),
(43, 11, 'markdown'),
(44, 11, 'xhtml'),
(45, 12, 'none'),
(46, 12, 'br'),
(47, 12, 'markdown'),
(48, 12, 'xhtml'),
(49, 13, 'none'),
(50, 13, 'br'),
(51, 13, 'markdown'),
(52, 13, 'xhtml'),
(53, 14, 'none'),
(54, 14, 'br'),
(55, 14, 'markdown'),
(56, 14, 'xhtml'),
(57, 15, 'none'),
(58, 15, 'br'),
(59, 15, 'markdown'),
(60, 15, 'xhtml'),
(61, 16, 'none'),
(62, 16, 'br'),
(63, 16, 'markdown'),
(64, 16, 'xhtml'),
(65, 17, 'none'),
(66, 17, 'br'),
(67, 17, 'markdown'),
(68, 17, 'xhtml'),
(69, 18, 'none'),
(70, 18, 'br'),
(71, 18, 'markdown'),
(72, 18, 'xhtml'),
(73, 19, 'none'),
(74, 19, 'br'),
(75, 19, 'markdown'),
(76, 19, 'xhtml'),
(77, 20, 'none'),
(78, 20, 'br'),
(79, 20, 'markdown'),
(80, 20, 'xhtml'),
(81, 21, 'none'),
(82, 21, 'br'),
(83, 21, 'markdown'),
(84, 21, 'xhtml'),
(85, 22, 'none'),
(86, 22, 'br'),
(87, 22, 'markdown'),
(88, 22, 'xhtml'),
(89, 23, 'none'),
(90, 23, 'br'),
(91, 23, 'markdown'),
(92, 23, 'xhtml'),
(93, 24, 'none'),
(94, 24, 'br'),
(95, 24, 'markdown'),
(96, 24, 'xhtml'),
(241, 61, 'none'),
(240, 60, 'xhtml'),
(239, 60, 'markdown'),
(238, 60, 'br'),
(237, 60, 'none'),
(236, 59, 'xhtml'),
(235, 59, 'markdown'),
(234, 59, 'br'),
(233, 59, 'none'),
(232, 58, 'xhtml'),
(231, 58, 'markdown'),
(230, 58, 'br'),
(229, 58, 'none'),
(228, 57, 'xhtml'),
(227, 57, 'markdown'),
(226, 57, 'br'),
(225, 57, 'none'),
(224, 56, 'xhtml'),
(223, 56, 'markdown'),
(222, 56, 'br'),
(117, 30, 'none'),
(118, 30, 'br'),
(119, 30, 'markdown'),
(120, 30, 'xhtml'),
(121, 31, 'none'),
(122, 31, 'br'),
(123, 31, 'markdown'),
(124, 31, 'xhtml'),
(125, 32, 'none'),
(126, 32, 'br'),
(127, 32, 'markdown'),
(128, 32, 'xhtml'),
(129, 33, 'none'),
(130, 33, 'br'),
(131, 33, 'markdown'),
(132, 33, 'xhtml'),
(133, 34, 'none'),
(134, 34, 'br'),
(135, 34, 'markdown'),
(136, 34, 'xhtml'),
(137, 35, 'none'),
(138, 35, 'br'),
(139, 35, 'markdown'),
(140, 35, 'xhtml'),
(141, 36, 'none'),
(142, 36, 'br'),
(143, 36, 'markdown'),
(144, 36, 'xhtml'),
(145, 37, 'none'),
(146, 37, 'br'),
(147, 37, 'markdown'),
(148, 37, 'xhtml'),
(149, 38, 'none'),
(150, 38, 'br'),
(151, 38, 'markdown'),
(152, 38, 'xhtml'),
(153, 39, 'none'),
(154, 39, 'br'),
(155, 39, 'markdown'),
(156, 39, 'xhtml'),
(157, 40, 'none'),
(158, 40, 'br'),
(159, 40, 'markdown'),
(160, 40, 'xhtml'),
(221, 56, 'none'),
(220, 55, 'xhtml'),
(219, 55, 'markdown'),
(218, 55, 'br'),
(217, 55, 'none'),
(216, 54, 'xhtml'),
(215, 54, 'markdown'),
(214, 54, 'br'),
(213, 54, 'none'),
(212, 53, 'xhtml'),
(211, 53, 'markdown'),
(210, 53, 'br'),
(209, 53, 'none'),
(208, 52, 'xhtml'),
(207, 52, 'markdown'),
(206, 52, 'br'),
(205, 52, 'none'),
(204, 51, 'xhtml'),
(203, 51, 'markdown'),
(202, 51, 'br'),
(201, 51, 'none'),
(185, 47, 'none'),
(186, 47, 'br'),
(187, 47, 'markdown'),
(188, 47, 'xhtml'),
(189, 48, 'none'),
(190, 48, 'br'),
(191, 48, 'markdown'),
(192, 48, 'xhtml'),
(193, 49, 'none'),
(194, 49, 'br'),
(195, 49, 'markdown'),
(196, 49, 'xhtml'),
(197, 50, 'none'),
(198, 50, 'br'),
(199, 50, 'markdown'),
(200, 50, 'xhtml'),
(242, 61, 'br'),
(243, 61, 'markdown'),
(244, 61, 'xhtml'),
(245, 62, 'none'),
(246, 62, 'br'),
(247, 62, 'markdown'),
(248, 62, 'xhtml'),
(249, 63, 'none'),
(250, 63, 'br'),
(251, 63, 'markdown'),
(252, 63, 'xhtml'),
(253, 64, 'none'),
(254, 64, 'br'),
(255, 64, 'markdown'),
(256, 64, 'xhtml'),
(257, 65, 'none'),
(258, 65, 'br'),
(259, 65, 'markdown'),
(260, 65, 'xhtml'),
(261, 66, 'none'),
(262, 66, 'br'),
(263, 66, 'markdown'),
(264, 66, 'xhtml'),
(271, 68, 'markdown'),
(270, 68, 'br'),
(269, 68, 'none'),
(272, 68, 'xhtml');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_field_groups`
--

CREATE TABLE IF NOT EXISTS `exp_field_groups` (
  `group_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_field_groups`
--

INSERT INTO `exp_field_groups` (`group_id`, `site_id`, `group_name`) VALUES
(1, 1, 'Homepage'),
(2, 1, 'Alianzas'),
(3, 1, 'Novedades'),
(4, 1, 'Area de Trabajo'),
(5, 1, 'Equipo'),
(6, 1, 'Asociados'),
(10, 1, 'Somos contribuyentes '),
(8, 1, 'Costo Beneficio'),
(9, 1, 'Boletin Costo Beneficio'),
(12, 1, 'Caricaturas'),
(13, 1, 'Colaboradores'),
(14, 1, 'Investigacion'),
(15, 1, 'Policy Notes'),
(16, 1, 'Metatags');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_files`
--

CREATE TABLE IF NOT EXISTS `exp_files` (
  `file_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `upload_location_id` int(4) unsigned DEFAULT '0',
  `rel_path` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_size` int(10) DEFAULT '0',
  `description` text,
  `credit` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `uploaded_by_member_id` int(10) unsigned DEFAULT '0',
  `upload_date` int(10) DEFAULT NULL,
  `modified_by_member_id` int(10) unsigned DEFAULT '0',
  `modified_date` int(10) DEFAULT NULL,
  `file_hw_original` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_files`
--

INSERT INTO `exp_files` (`file_id`, `site_id`, `title`, `upload_location_id`, `rel_path`, `mime_type`, `file_name`, `file_size`, `description`, `credit`, `location`, `uploaded_by_member_id`, `upload_date`, `modified_by_member_id`, `modified_date`, `file_hw_original`) VALUES
(1, 1, 'contribuyente_home.jpg', 1, '/var/www/html/images/homepage/contribuyente_home.jpg', 'image/jpeg', 'contribuyente_home.jpg', 485878, NULL, NULL, NULL, 1, 1427662601, 1, 1427662601, '1060 1600'),
(2, 1, 'costo_beneficio.jpg', 1, '/var/www/html/images/homepage/costo_beneficio.jpg', 'image/jpeg', 'costo_beneficio.jpg', 151409, NULL, NULL, NULL, 1, 1427663183, 1, 1427663982, '500 1000'),
(3, 1, 'plaza_bolivar.jpg', 1, '/var/www/html/images/homepage/plaza_bolivar.jpg', 'image/jpeg', 'plaza_bolivar.jpg', 191611, NULL, NULL, NULL, 1, 1427663203, 1, 1427664182, '500 1000'),
(6, 1, 'contribuyentes.jpg', 1, '/var/www/html/images/homepage/contribuyentes.jpg', 'image/jpeg', 'contribuyentes.jpg', 460769, NULL, NULL, NULL, 1, 1428269089, 1, 1428269104, '600 1440'),
(8, 1, '31709.png', 1, '/var/www/html/images/homepage/31709.png', 'image/png', '31709.png', 4659, NULL, NULL, NULL, 1, 1428602348, 1, 1428602348, '256 256'),
(9, 1, 'photo-1421757295538-9c80958e75b0.jpg', 1, '/var/www/html/images/homepage/photo-1421757295538-9c80958e75b0.jpg', 'image/jpeg', 'photo-1421757295538-9c80958e75b0.jpg', 178237, NULL, NULL, NULL, 1, 1428695701, 1, 1428695701, '595 893'),
(10, 1, 'images.jpg', 1, '/var/www/html/images/homepage/images.jpg', 'image/jpeg', 'images.jpg', 23880, NULL, NULL, NULL, 1, 1428695943, 1, 1428695943, '194 259'),
(11, 1, 'photo-1416339442236-8ceb164046f8.jpg', 1, '/var/www/html/images/homepage/photo-1416339442236-8ceb164046f8.jpg', 'image/jpeg', 'photo-1416339442236-8ceb164046f8.jpg', 88627, NULL, NULL, NULL, 1, 1428696759, 1, 1428696759, '508 702'),
(12, 1, 'photo-1416862291207-4ca732144d83.jpg', 1, '/var/www/html/images/homepage/photo-1416862291207-4ca732144d83.jpg', 'image/jpeg', 'photo-1416862291207-4ca732144d83.jpg', 136233, NULL, NULL, NULL, 1, 1428696800, 1, 1428696800, '616 893'),
(13, 1, 'photo-1416339276121-ba1dfa199912.jpg', 1, '/var/www/html/images/homepage/photo-1416339276121-ba1dfa199912.jpg', 'image/jpeg', 'photo-1416339276121-ba1dfa199912.jpg', 188242, NULL, NULL, NULL, 1, 1428712858, 1, 1428712858, '800 1050'),
(14, 1, 'Portal_Congreso_(modificada).jpg', 1, '/var/www/html/images/homepage/Portal_Congreso_(modificada).jpg', 'image/jpeg', 'Portal_Congreso_(modificada).jpg', 218429, NULL, NULL, NULL, 1, 1439573050, 1, 1439573050, '1200 1800'),
(16, 1, 'Costo_y_Beneficio_14_.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_14_.pdf', 'application/pdf', 'Costo_y_Beneficio_14_.pdf', 564234, NULL, NULL, NULL, 1, 1439575331, 1, 1439575338, ' '),
(17, 1, 'Costo_y_Beneficio_14_preview.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_14_preview.png', 'image/png', 'Costo_y_Beneficio_14_preview.png', 903578, NULL, NULL, NULL, 1, 1439575618, 1, 1439575634, '675 704'),
(18, 1, 'ciudadanos.jpeg', 1, '/var/www/html/images/homepage/ciudadanos.jpeg', 'image/jpeg', 'ciudadanos.jpeg', 365722, NULL, NULL, NULL, 1, 1439576135, 1, 1439592295, '750 1200'),
(19, 1, 'logo_cuadrado_laboratoria.png', 2, '/var/www/html/images/caricaturas/logo_cuadrado_laboratoria.png', 'image/png', 'logo_cuadrado_laboratoria.png', 42300, NULL, NULL, NULL, 1, 1439590584, 1, 1439595312, '731 734'),
(21, 1, 'unnamed.jpg', 1, '/var/www/html/images/homepage/unnamed.jpg', 'image/jpeg', 'unnamed.jpg', 57600, NULL, NULL, NULL, 1, 1439593119, 1, 1439593119, '355 630'),
(22, 1, 'unnamed_(2).jpg', 1, '/var/www/html/images/homepage/unnamed_(2).jpg', 'image/jpeg', 'unnamed_(2).jpg', 28826, NULL, NULL, NULL, 1, 1439594021, 1, 1439594021, '250 585'),
(23, 1, 'unnamed_(1).jpg', 1, '/var/www/html/images/homepage/unnamed_(1).jpg', 'image/jpeg', 'unnamed_(1).jpg', 38226, NULL, NULL, NULL, 1, 1439594060, 1, 1439594060, '374 600'),
(24, 1, 'unnamed_(3).jpg', 1, '/var/www/html/images/homepage/unnamed_(3).jpg', 'image/jpeg', 'unnamed_(3).jpg', 30208, NULL, NULL, NULL, 1, 1439594330, 1, 1439594330, '374 600'),
(25, 1, 'unnamed_(4).jpg', 1, '/var/www/html/images/homepage/unnamed_(4).jpg', 'image/jpeg', 'unnamed_(4).jpg', 42691, NULL, NULL, NULL, 1, 1439594416, 1, 1439594416, '285 513'),
(26, 1, '07H5XZD.jpg', 2, '/var/www/html/images/caricaturas/07H5XZD.jpg', 'image/jpeg', '07H5XZD.jpg', 232954, NULL, NULL, NULL, 1, 1439595036, 1, 1439595036, '622 690'),
(27, 1, '1teq3uR.jpg', 2, '/var/www/html/images/caricaturas/1teq3uR.jpg', 'image/jpeg', '1teq3uR.jpg', 176589, NULL, NULL, NULL, 1, 1439595016, 1, 1439595016, '621 690'),
(28, 1, '29NiE6D.jpg', 2, '/var/www/html/images/caricaturas/29NiE6D.jpg', 'image/jpeg', '29NiE6D.jpg', 251756, NULL, NULL, NULL, 1, 1439595046, 1, 1439595046, '625 690'),
(29, 1, '2IJmibM.jpg', 2, '/var/www/html/images/caricaturas/2IJmibM.jpg', 'image/jpeg', '2IJmibM.jpg', 201852, NULL, NULL, NULL, 1, 1439595034, 1, 1439595034, '621 690'),
(30, 1, '2pBC9ru.jpg', 2, '/var/www/html/images/caricaturas/2pBC9ru.jpg', 'image/jpeg', '2pBC9ru.jpg', 239357, NULL, NULL, NULL, 1, 1439595022, 1, 1439595022, '633 690'),
(31, 1, '3FUddAM.jpg', 2, '/var/www/html/images/caricaturas/3FUddAM.jpg', 'image/jpeg', '3FUddAM.jpg', 195499, NULL, NULL, NULL, 1, 1439595029, 1, 1439595029, '622 690'),
(32, 1, '3ZmQizn.jpg', 2, '/var/www/html/images/caricaturas/3ZmQizn.jpg', 'image/jpeg', '3ZmQizn.jpg', 189261, NULL, NULL, NULL, 1, 1439595018, 1, 1439595018, '621 690'),
(33, 1, '3kkihD3.jpg', 2, '/var/www/html/images/caricaturas/3kkihD3.jpg', 'image/jpeg', '3kkihD3.jpg', 250859, NULL, NULL, NULL, 1, 1439595022, 1, 1439595022, '621 690'),
(34, 1, '4GIQkhC.jpg', 2, '/var/www/html/images/caricaturas/4GIQkhC.jpg', 'image/jpeg', '4GIQkhC.jpg', 253084, NULL, NULL, NULL, 1, 1439595023, 1, 1439595023, '630 690'),
(35, 1, '4Irct10.jpg', 2, '/var/www/html/images/caricaturas/4Irct10.jpg', 'image/jpeg', '4Irct10.jpg', 312098, NULL, NULL, NULL, 1, 1439595029, 1, 1439595029, '690 690'),
(36, 1, '4oinKjg.jpg', 2, '/var/www/html/images/caricaturas/4oinKjg.jpg', 'image/jpeg', '4oinKjg.jpg', 210497, NULL, NULL, NULL, 1, 1439595024, 1, 1439595024, '621 690'),
(37, 1, '5iB5al2.jpg', 2, '/var/www/html/images/caricaturas/5iB5al2.jpg', 'image/jpeg', '5iB5al2.jpg', 233396, NULL, NULL, NULL, 1, 1439595027, 1, 1439595027, '621 690'),
(38, 1, '5jrws0q.jpg', 2, '/var/www/html/images/caricaturas/5jrws0q.jpg', 'image/jpeg', '5jrws0q.jpg', 249537, NULL, NULL, NULL, 1, 1439595033, 1, 1439595033, '621 690'),
(39, 1, '5mF7Xqf.jpg', 2, '/var/www/html/images/caricaturas/5mF7Xqf.jpg', 'image/jpeg', '5mF7Xqf.jpg', 254970, NULL, NULL, NULL, 1, 1439595032, 1, 1439595032, '622 690'),
(40, 1, '6VppqwS.jpg', 2, '/var/www/html/images/caricaturas/6VppqwS.jpg', 'image/jpeg', '6VppqwS.jpg', 257083, NULL, NULL, NULL, 1, 1439595034, 1, 1439595034, '621 690'),
(41, 1, '7BBKf0B.jpg', 2, '/var/www/html/images/caricaturas/7BBKf0B.jpg', 'image/jpeg', '7BBKf0B.jpg', 323114, NULL, NULL, NULL, 1, 1439595044, 1, 1439595044, '621 690'),
(42, 1, '7ncqSm9.jpg', 2, '/var/www/html/images/caricaturas/7ncqSm9.jpg', 'image/jpeg', '7ncqSm9.jpg', 169936, NULL, NULL, NULL, 1, 1439595036, 1, 1439595036, '621 690'),
(43, 1, '7nyMgHg.jpg', 2, '/var/www/html/images/caricaturas/7nyMgHg.jpg', 'image/jpeg', '7nyMgHg.jpg', 239491, NULL, NULL, NULL, 1, 1439595041, 1, 1439595041, '621 690'),
(44, 1, '7pfgCsW.jpg', 2, '/var/www/html/images/caricaturas/7pfgCsW.jpg', 'image/jpeg', '7pfgCsW.jpg', 208431, NULL, NULL, NULL, 1, 1439595041, 1, 1439595041, '562 690'),
(45, 1, '89G3Q2J.jpg', 2, '/var/www/html/images/caricaturas/89G3Q2J.jpg', 'image/jpeg', '89G3Q2J.jpg', 265129, NULL, NULL, NULL, 1, 1439595047, 1, 1439595047, '623 690'),
(46, 1, '8ea57oa.jpg', 2, '/var/www/html/images/caricaturas/8ea57oa.jpg', 'image/jpeg', '8ea57oa.jpg', 246579, NULL, NULL, NULL, 1, 1439595040, 1, 1439595040, '622 690'),
(47, 1, '8gc1PvJ.jpg', 2, '/var/www/html/images/caricaturas/8gc1PvJ.jpg', 'image/jpeg', '8gc1PvJ.jpg', 179779, NULL, NULL, NULL, 1, 1439595039, 1, 1439595039, '621 690'),
(48, 1, '8jccx.jpg', 2, '/var/www/html/images/caricaturas/8jccx.jpg', 'image/jpeg', '8jccx.jpg', 248133, NULL, NULL, NULL, 1, 1439595043, 1, 1439595043, '621 690'),
(49, 1, '9ciDig2.jpg', 2, '/var/www/html/images/caricaturas/9ciDig2.jpg', 'image/jpeg', '9ciDig2.jpg', 217065, NULL, NULL, NULL, 1, 1439595044, 1, 1439595044, '624 690'),
(50, 1, '9z80b2W.jpg', 2, '/var/www/html/images/caricaturas/9z80b2W.jpg', 'image/jpeg', '9z80b2W.jpg', 192571, NULL, NULL, NULL, 1, 1439595050, 1, 1439595050, '621 690'),
(51, 1, 'AXsTxxH.jpg', 2, '/var/www/html/images/caricaturas/AXsTxxH.jpg', 'image/jpeg', 'AXsTxxH.jpg', 303891, NULL, NULL, NULL, 1, 1439595056, 1, 1439595056, '621 690'),
(52, 1, 'AovACKd.jpg', 2, '/var/www/html/images/caricaturas/AovACKd.jpg', 'image/jpeg', 'AovACKd.jpg', 221732, NULL, NULL, NULL, 1, 1439595049, 1, 1439595049, '621 690'),
(53, 1, 'CTzn37l.jpg', 2, '/var/www/html/images/caricaturas/CTzn37l.jpg', 'image/jpeg', 'CTzn37l.jpg', 229970, NULL, NULL, NULL, 1, 1439595062, 1, 1439595062, '639 690'),
(54, 1, 'DZvdqTB.jpg', 2, '/var/www/html/images/caricaturas/DZvdqTB.jpg', 'image/jpeg', 'DZvdqTB.jpg', 206582, NULL, NULL, NULL, 1, 1439595066, 1, 1439595066, '621 690'),
(55, 1, 'DfnAhEq.jpg', 2, '/var/www/html/images/caricaturas/DfnAhEq.jpg', 'image/jpeg', 'DfnAhEq.jpg', 223461, NULL, NULL, NULL, 1, 1439595061, 1, 1439595061, '510 690'),
(56, 1, 'E89psZP.jpg', 2, '/var/www/html/images/caricaturas/E89psZP.jpg', 'image/jpeg', 'E89psZP.jpg', 213004, NULL, NULL, NULL, 1, 1439595066, 1, 1439595066, '621 690'),
(57, 1, 'ETHM0Xw.jpg', 2, '/var/www/html/images/caricaturas/ETHM0Xw.jpg', 'image/jpeg', 'ETHM0Xw.jpg', 246192, NULL, NULL, NULL, 1, 1439595071, 1, 1439595071, '621 690'),
(58, 1, 'FpwymhT.jpg', 2, '/var/www/html/images/caricaturas/FpwymhT.jpg', 'image/jpeg', 'FpwymhT.jpg', 259778, NULL, NULL, NULL, 1, 1439595076, 1, 1439595076, '621 690'),
(59, 1, 'GB8rhxE.jpg', 2, '/var/www/html/images/caricaturas/GB8rhxE.jpg', 'image/jpeg', 'GB8rhxE.jpg', 229347, NULL, NULL, NULL, 1, 1439595075, 1, 1439595075, '621 690'),
(60, 1, 'HG1dD5w.jpg', 2, '/var/www/html/images/caricaturas/HG1dD5w.jpg', 'image/jpeg', 'HG1dD5w.jpg', 192871, NULL, NULL, NULL, 1, 1439595079, 1, 1439595079, '621 690'),
(61, 1, 'HNOdMWz.jpg', 2, '/var/www/html/images/caricaturas/HNOdMWz.jpg', 'image/jpeg', 'HNOdMWz.jpg', 254014, NULL, NULL, NULL, 1, 1439595082, 1, 1439595082, '622 690'),
(62, 1, 'HqPBKfQ.jpg', 2, '/var/www/html/images/caricaturas/HqPBKfQ.jpg', 'image/jpeg', 'HqPBKfQ.jpg', 240430, NULL, NULL, NULL, 1, 1439595083, 1, 1439595083, '621 690'),
(63, 1, 'I4E6l2X.jpg', 2, '/var/www/html/images/caricaturas/I4E6l2X.jpg', 'image/jpeg', 'I4E6l2X.jpg', 215641, NULL, NULL, NULL, 1, 1439595084, 1, 1439595084, '623 690'),
(64, 1, 'IfjkmkG.jpg', 2, '/var/www/html/images/caricaturas/IfjkmkG.jpg', 'image/jpeg', 'IfjkmkG.jpg', 182122, NULL, NULL, NULL, 1, 1439595086, 1, 1439595086, '623 690'),
(65, 1, 'J6mEhoc.jpg', 2, '/var/www/html/images/caricaturas/J6mEhoc.jpg', 'image/jpeg', 'J6mEhoc.jpg', 273292, NULL, NULL, NULL, 1, 1439595089, 1, 1439595089, '631 690'),
(66, 1, 'JG6XRXX.jpg', 2, '/var/www/html/images/caricaturas/JG6XRXX.jpg', 'image/jpeg', 'JG6XRXX.jpg', 308725, NULL, NULL, NULL, 1, 1439595094, 1, 1439595094, '588 690'),
(67, 1, 'Jbhx31X.jpg', 2, '/var/www/html/images/caricaturas/Jbhx31X.jpg', 'image/jpeg', 'Jbhx31X.jpg', 210872, NULL, NULL, NULL, 1, 1439595087, 1, 1439595087, '569 690'),
(68, 1, 'L7uTu8L.jpg', 2, '/var/www/html/images/caricaturas/L7uTu8L.jpg', 'image/jpeg', 'L7uTu8L.jpg', 214417, NULL, NULL, NULL, 1, 1439595093, 1, 1439595093, '564 690'),
(69, 1, 'LEaokwi.jpg', 2, '/var/www/html/images/caricaturas/LEaokwi.jpg', 'image/jpeg', 'LEaokwi.jpg', 261510, NULL, NULL, NULL, 1, 1439595093, 1, 1439595093, '621 690'),
(70, 1, 'LXCVNFC.jpg', 2, '/var/www/html/images/caricaturas/LXCVNFC.jpg', 'image/jpeg', 'LXCVNFC.jpg', 228549, NULL, NULL, NULL, 1, 1439595096, 1, 1439595096, '581 690'),
(71, 1, 'LwGgOeP.jpg', 2, '/var/www/html/images/caricaturas/LwGgOeP.jpg', 'image/jpeg', 'LwGgOeP.jpg', 249627, NULL, NULL, NULL, 1, 1439595101, 1, 1439595101, '621 690'),
(72, 1, 'M6Q6imc.jpg', 2, '/var/www/html/images/caricaturas/M6Q6imc.jpg', 'image/jpeg', 'M6Q6imc.jpg', 196652, NULL, NULL, NULL, 1, 1439595100, 1, 1439595100, '621 690'),
(73, 1, 'MYW1Kvk.jpg', 2, '/var/www/html/images/caricaturas/MYW1Kvk.jpg', 'image/jpeg', 'MYW1Kvk.jpg', 212512, NULL, NULL, NULL, 1, 1439595104, 1, 1439595104, '621 690'),
(74, 1, 'N7nzhLh.jpg', 2, '/var/www/html/images/caricaturas/N7nzhLh.jpg', 'image/jpeg', 'N7nzhLh.jpg', 156203, NULL, NULL, NULL, 1, 1439595105, 1, 1439595105, '624 690'),
(75, 1, 'NBqO3qX.jpg', 2, '/var/www/html/images/caricaturas/NBqO3qX.jpg', 'image/jpeg', 'NBqO3qX.jpg', 241873, NULL, NULL, NULL, 1, 1439595111, 1, 1439595111, '621 690'),
(76, 1, 'NI47jKc.jpg', 2, '/var/www/html/images/caricaturas/NI47jKc.jpg', 'image/jpeg', 'NI47jKc.jpg', 186701, NULL, NULL, NULL, 1, 1439595110, 1, 1439595110, '630 690'),
(77, 1, 'NVYVucx.jpg', 2, '/var/www/html/images/caricaturas/NVYVucx.jpg', 'image/jpeg', 'NVYVucx.jpg', 290181, NULL, NULL, NULL, 1, 1439595111, 1, 1439595111, '693 690'),
(78, 1, 'OHt3l4f.jpg', 2, '/var/www/html/images/caricaturas/OHt3l4f.jpg', 'image/jpeg', 'OHt3l4f.jpg', 240087, NULL, NULL, NULL, 1, 1439595114, 1, 1439595114, '621 690'),
(79, 1, 'OO4PTVt.jpg', 2, '/var/www/html/images/caricaturas/OO4PTVt.jpg', 'image/jpeg', 'OO4PTVt.jpg', 189792, NULL, NULL, NULL, 1, 1439595116, 1, 1439595116, '554 690'),
(80, 1, 'OQ5yYqX.jpg', 2, '/var/www/html/images/caricaturas/OQ5yYqX.jpg', 'image/jpeg', 'OQ5yYqX.jpg', 254916, NULL, NULL, NULL, 1, 1439595122, 1, 1439595122, '621 690'),
(81, 1, 'OaQt894.jpg', 2, '/var/www/html/images/caricaturas/OaQt894.jpg', 'image/jpeg', 'OaQt894.jpg', 186963, NULL, NULL, NULL, 1, 1439595115, 1, 1439595115, '621 690'),
(82, 1, 'OxeVtSu.jpg', 2, '/var/www/html/images/caricaturas/OxeVtSu.jpg', 'image/jpeg', 'OxeVtSu.jpg', 233317, NULL, NULL, NULL, 1, 1439595120, 1, 1439595120, '690 690'),
(83, 1, 'P127V.jpg', 2, '/var/www/html/images/caricaturas/P127V.jpg', 'image/jpeg', 'P127V.jpg', 248884, NULL, NULL, NULL, 1, 1439595125, 1, 1439595125, '621 690'),
(84, 1, 'PW72O8v.jpg', 2, '/var/www/html/images/caricaturas/PW72O8v.jpg', 'image/jpeg', 'PW72O8v.jpg', 266378, NULL, NULL, NULL, 1, 1439595130, 1, 1439595130, '621 690'),
(85, 1, 'QGQhdKS.jpg', 2, '/var/www/html/images/caricaturas/QGQhdKS.jpg', 'image/jpeg', 'QGQhdKS.jpg', 214839, NULL, NULL, NULL, 1, 1439595129, 1, 1439595129, '581 690'),
(86, 1, 'Qizaqzy.jpg', 2, '/var/www/html/images/caricaturas/Qizaqzy.jpg', 'image/jpeg', 'Qizaqzy.jpg', 252756, NULL, NULL, NULL, 1, 1439595135, 1, 1439595135, '621 690'),
(87, 1, 'RcGf0tb.jpg', 2, '/var/www/html/images/caricaturas/RcGf0tb.jpg', 'image/jpeg', 'RcGf0tb.jpg', 292098, NULL, NULL, NULL, 1, 1439595139, 1, 1439595139, '621 690'),
(88, 1, 'RsU2b3B.jpg', 2, '/var/www/html/images/caricaturas/RsU2b3B.jpg', 'image/jpeg', 'RsU2b3B.jpg', 168279, NULL, NULL, NULL, 1, 1439595138, 1, 1439595138, '621 690'),
(89, 1, 'Rzei1n5.jpg', 2, '/var/www/html/images/caricaturas/Rzei1n5.jpg', 'image/jpeg', 'Rzei1n5.jpg', 199476, NULL, NULL, NULL, 1, 1439595141, 1, 1439595141, '621 690'),
(90, 1, 'RzmycLv.jpg', 2, '/var/www/html/images/caricaturas/RzmycLv.jpg', 'image/jpeg', 'RzmycLv.jpg', 165799, NULL, NULL, NULL, 1, 1439595140, 1, 1439595140, '621 690'),
(91, 1, 'T6bVyZi.jpg', 2, '/var/www/html/images/caricaturas/T6bVyZi.jpg', 'image/jpeg', 'T6bVyZi.jpg', 272560, NULL, NULL, NULL, 1, 1439595141, 1, 1439595141, '586 690'),
(92, 1, 'T8jq5mV.jpg', 2, '/var/www/html/images/caricaturas/T8jq5mV.jpg', 'image/jpeg', 'T8jq5mV.jpg', 198377, NULL, NULL, NULL, 1, 1439595142, 1, 1439595142, '621 690'),
(93, 1, 'TWDLe1d.jpg', 2, '/var/www/html/images/caricaturas/TWDLe1d.jpg', 'image/jpeg', 'TWDLe1d.jpg', 197934, NULL, NULL, NULL, 1, 1439595146, 1, 1439595146, '621 690'),
(94, 1, 'TZbrZeo.jpg', 2, '/var/www/html/images/caricaturas/TZbrZeo.jpg', 'image/jpeg', 'TZbrZeo.jpg', 238983, NULL, NULL, NULL, 1, 1439595151, 1, 1439595151, '621 690'),
(95, 1, 'TcynGMN.jpg', 2, '/var/www/html/images/caricaturas/TcynGMN.jpg', 'image/jpeg', 'TcynGMN.jpg', 164995, NULL, NULL, NULL, 1, 1439595143, 1, 1439595143, '621 690'),
(96, 1, 'VToEvCs.jpg', 2, '/var/www/html/images/caricaturas/VToEvCs.jpg', 'image/jpeg', 'VToEvCs.jpg', 166440, NULL, NULL, NULL, 1, 1439595165, 1, 1439595165, '621 690'),
(97, 1, 'VfFTSQf.jpg', 2, '/var/www/html/images/caricaturas/VfFTSQf.jpg', 'image/jpeg', 'VfFTSQf.jpg', 247686, NULL, NULL, NULL, 1, 1439595153, 1, 1439595153, '584 690'),
(98, 1, 'VggIMS9.jpg', 2, '/var/www/html/images/caricaturas/VggIMS9.jpg', 'image/jpeg', 'VggIMS9.jpg', 201569, NULL, NULL, NULL, 1, 1439595152, 1, 1439595152, '623 690'),
(99, 1, 'Wn2K4H0.jpg', 2, '/var/www/html/images/caricaturas/Wn2K4H0.jpg', 'image/jpeg', 'Wn2K4H0.jpg', 234095, NULL, NULL, NULL, 1, 1439595159, 1, 1439595159, '621 690'),
(100, 1, 'WnKUJmt.jpg', 2, '/var/www/html/images/caricaturas/WnKUJmt.jpg', 'image/jpeg', 'WnKUJmt.jpg', 304240, NULL, NULL, NULL, 1, 1439595160, 1, 1439595160, '621 690'),
(101, 1, 'WsGT2q3.jpg', 2, '/var/www/html/images/caricaturas/WsGT2q3.jpg', 'image/jpeg', 'WsGT2q3.jpg', 235154, NULL, NULL, NULL, 1, 1439595165, 1, 1439595165, '621 690'),
(102, 1, 'XgpR4.jpg', 2, '/var/www/html/images/caricaturas/XgpR4.jpg', 'image/jpeg', 'XgpR4.jpg', 250004, NULL, NULL, NULL, 1, 1439595165, 1, 1439595165, '591 690'),
(103, 1, 'XmW72Pq.jpg', 2, '/var/www/html/images/caricaturas/XmW72Pq.jpg', 'image/jpeg', 'XmW72Pq.jpg', 219621, NULL, NULL, NULL, 1, 1439595165, 1, 1439595165, '621 690'),
(104, 1, 'XuCJbhM.jpg', 2, '/var/www/html/images/caricaturas/XuCJbhM.jpg', 'image/jpeg', 'XuCJbhM.jpg', 171657, NULL, NULL, NULL, 1, 1439595173, 1, 1439595173, '622 690'),
(105, 1, 'XvIh5uE.jpg', 2, '/var/www/html/images/caricaturas/XvIh5uE.jpg', 'image/jpeg', 'XvIh5uE.jpg', 277274, NULL, NULL, NULL, 1, 1439595171, 1, 1439595171, '621 690'),
(106, 1, 'YNOcdKY.jpg', 2, '/var/www/html/images/caricaturas/YNOcdKY.jpg', 'image/jpeg', 'YNOcdKY.jpg', 183792, NULL, NULL, NULL, 1, 1439595172, 1, 1439595172, '505 690'),
(107, 1, 'YQV5qrV.jpg', 2, '/var/www/html/images/caricaturas/YQV5qrV.jpg', 'image/jpeg', 'YQV5qrV.jpg', 178292, NULL, NULL, NULL, 1, 1439595173, 1, 1439595173, '606 690'),
(108, 1, 'YjCNAoW.jpg', 2, '/var/www/html/images/caricaturas/YjCNAoW.jpg', 'image/jpeg', 'YjCNAoW.jpg', 261942, NULL, NULL, NULL, 1, 1439595170, 1, 1439595170, '488 690'),
(109, 1, 'aFVzsJx.jpg', 2, '/var/www/html/images/caricaturas/aFVzsJx.jpg', 'image/jpeg', 'aFVzsJx.jpg', 345950, NULL, NULL, NULL, 1, 1439595056, 1, 1439595056, '620 690'),
(110, 1, 'acRGBgb.jpg', 2, '/var/www/html/images/caricaturas/acRGBgb.jpg', 'image/jpeg', 'acRGBgb.jpg', 329378, NULL, NULL, NULL, 1, 1439595050, 1, 1439595050, '608 690'),
(111, 1, 'au3EqtK.jpg', 2, '/var/www/html/images/caricaturas/au3EqtK.jpg', 'image/jpeg', 'au3EqtK.jpg', 260409, NULL, NULL, NULL, 1, 1439595054, 1, 1439595054, '621 690'),
(112, 1, 'brpFRvN.jpg', 2, '/var/www/html/images/caricaturas/brpFRvN.jpg', 'image/jpeg', 'brpFRvN.jpg', 311135, NULL, NULL, NULL, 1, 1439595078, 1, 1439595078, '611 690'),
(113, 1, 'cOI3yXs.jpg', 2, '/var/www/html/images/caricaturas/cOI3yXs.jpg', 'image/jpeg', 'cOI3yXs.jpg', 227854, NULL, NULL, NULL, 1, 1439595062, 1, 1439595062, '620 690'),
(114, 1, 'ccnb5NU.jpg', 2, '/var/www/html/images/caricaturas/ccnb5NU.jpg', 'image/jpeg', 'ccnb5NU.jpg', 269304, NULL, NULL, NULL, 1, 1439595056, 1, 1439595056, '621 690'),
(115, 1, 'clXqEFe.jpg', 2, '/var/www/html/images/caricaturas/clXqEFe.jpg', 'image/jpeg', 'clXqEFe.jpg', 221775, NULL, NULL, NULL, 1, 1439595058, 1, 1439595058, '630 690'),
(116, 1, 'cy9gh4b.jpg', 2, '/var/www/html/images/caricaturas/cy9gh4b.jpg', 'image/jpeg', 'cy9gh4b.jpg', 237724, NULL, NULL, NULL, 1, 1439595062, 1, 1439595062, '621 690'),
(117, 1, 'dWJ0Qf8.jpg', 2, '/var/www/html/images/caricaturas/dWJ0Qf8.jpg', 'image/jpeg', 'dWJ0Qf8.jpg', 194180, NULL, NULL, NULL, 1, 1439595064, 1, 1439595064, '651 690'),
(118, 1, 'dvjbkvw.jpg', 2, '/var/www/html/images/caricaturas/dvjbkvw.jpg', 'image/jpeg', 'dvjbkvw.jpg', 141900, NULL, NULL, NULL, 1, 1439595068, 1, 1439595068, '623 690'),
(119, 1, 'eExMoTh.jpg', 2, '/var/www/html/images/caricaturas/eExMoTh.jpg', 'image/jpeg', 'eExMoTh.jpg', 178001, NULL, NULL, NULL, 1, 1439595069, 1, 1439595069, '621 690'),
(120, 1, 'eLDEcZT.jpg', 2, '/var/www/html/images/caricaturas/eLDEcZT.jpg', 'image/jpeg', 'eLDEcZT.jpg', 195108, NULL, NULL, NULL, 1, 1439595069, 1, 1439595069, '621 690'),
(121, 1, 'f85bqrT.jpg', 2, '/var/www/html/images/caricaturas/f85bqrT.jpg', 'image/jpeg', 'f85bqrT.jpg', 234790, NULL, NULL, NULL, 1, 1439595074, 1, 1439595074, '621 690'),
(122, 1, 'fs3FmrO.jpg', 2, '/var/www/html/images/caricaturas/fs3FmrO.jpg', 'image/jpeg', 'fs3FmrO.jpg', 214463, NULL, NULL, NULL, 1, 1439595073, 1, 1439595073, '623 690'),
(123, 1, 'hBESKLy.jpg', 2, '/var/www/html/images/caricaturas/hBESKLy.jpg', 'image/jpeg', 'hBESKLy.jpg', 164647, NULL, NULL, NULL, 1, 1439595079, 1, 1439595079, '621 690'),
(124, 1, 'hEhXCh2.jpg', 2, '/var/www/html/images/caricaturas/hEhXCh2.jpg', 'image/jpeg', 'hEhXCh2.jpg', 235629, NULL, NULL, NULL, 1, 1439595079, 1, 1439595079, '623 690'),
(125, 1, 'iLCxf2a.jpg', 2, '/var/www/html/images/caricaturas/iLCxf2a.jpg', 'image/jpeg', 'iLCxf2a.jpg', 225491, NULL, NULL, NULL, 1, 1439595085, 1, 1439595085, '622 690'),
(126, 1, 'jbpVzQV.jpg', 2, '/var/www/html/images/caricaturas/jbpVzQV.jpg', 'image/jpeg', 'jbpVzQV.jpg', 263999, NULL, NULL, NULL, 1, 1439595090, 1, 1439595090, '624 690'),
(127, 1, 'kOaZQUb.jpg', 2, '/var/www/html/images/caricaturas/kOaZQUb.jpg', 'image/jpeg', 'kOaZQUb.jpg', 214160, NULL, NULL, NULL, 1, 1439595090, 1, 1439595090, '600 690'),
(128, 1, 'kaYSliU.jpg', 2, '/var/www/html/images/caricaturas/kaYSliU.jpg', 'image/jpeg', 'kaYSliU.jpg', 316798, NULL, NULL, NULL, 1, 1439595102, 1, 1439595102, '621 690'),
(129, 1, 'lYHqRee.jpg', 2, '/var/www/html/images/caricaturas/lYHqRee.jpg', 'image/jpeg', 'lYHqRee.jpg', 227714, NULL, NULL, NULL, 1, 1439595100, 1, 1439595100, '621 690'),
(130, 1, 'lx4aZLJ.jpg', 2, '/var/www/html/images/caricaturas/lx4aZLJ.jpg', 'image/jpeg', 'lx4aZLJ.jpg', 267407, NULL, NULL, NULL, 1, 1439595099, 1, 1439595099, '620 690'),
(131, 1, 'mAxhvMr.jpg', 2, '/var/www/html/images/caricaturas/mAxhvMr.jpg', 'image/jpeg', 'mAxhvMr.jpg', 246856, NULL, NULL, NULL, 1, 1439595104, 1, 1439595104, '621 690'),
(132, 1, 'mMkiPxN.jpg', 2, '/var/www/html/images/caricaturas/mMkiPxN.jpg', 'image/jpeg', 'mMkiPxN.jpg', 304561, NULL, NULL, NULL, 1, 1439595107, 1, 1439595107, '621 690'),
(133, 1, 'nPL2fok.jpg', 2, '/var/www/html/images/caricaturas/nPL2fok.jpg', 'image/jpeg', 'nPL2fok.jpg', 336116, NULL, NULL, NULL, 1, 1439595110, 1, 1439595110, '566 690'),
(134, 1, 'oIQ2or6.jpg', 2, '/var/www/html/images/caricaturas/oIQ2or6.jpg', 'image/jpeg', 'oIQ2or6.jpg', 232992, NULL, NULL, NULL, 1, 1439595116, 1, 1439595116, '624 690'),
(135, 1, 'oQ3VdpX.jpg', 2, '/var/www/html/images/caricaturas/oQ3VdpX.jpg', 'image/jpeg', 'oQ3VdpX.jpg', 197804, NULL, NULL, NULL, 1, 1439595117, 1, 1439595117, '620 690'),
(136, 1, 'onj4ytq.jpg', 2, '/var/www/html/images/caricaturas/onj4ytq.jpg', 'image/jpeg', 'onj4ytq.jpg', 234311, NULL, NULL, NULL, 1, 1439595120, 1, 1439595120, '588 690'),
(137, 1, 'pEKyawL.jpg', 2, '/var/www/html/images/caricaturas/pEKyawL.jpg', 'image/jpeg', 'pEKyawL.jpg', 318414, NULL, NULL, NULL, 1, 1439595124, 1, 1439595124, '621 690'),
(138, 1, 'pMIoPQB.jpg', 2, '/var/www/html/images/caricaturas/pMIoPQB.jpg', 'image/jpeg', 'pMIoPQB.jpg', 271309, NULL, NULL, NULL, 1, 1439595125, 1, 1439595125, '639 690'),
(139, 1, 'puxVYjB.jpg', 2, '/var/www/html/images/caricaturas/puxVYjB.jpg', 'image/jpeg', 'puxVYjB.jpg', 236269, NULL, NULL, NULL, 1, 1439595128, 1, 1439595128, '630 690'),
(140, 1, 'q8dWZzd.jpg', 2, '/var/www/html/images/caricaturas/q8dWZzd.jpg', 'image/jpeg', 'q8dWZzd.jpg', 235970, NULL, NULL, NULL, 1, 1439595132, 1, 1439595132, '621 690'),
(141, 1, 'qdZOfkh.jpg', 2, '/var/www/html/images/caricaturas/qdZOfkh.jpg', 'image/jpeg', 'qdZOfkh.jpg', 202394, NULL, NULL, NULL, 1, 1439595131, 1, 1439595131, '637 690'),
(142, 1, 'qy9fMlz.jpg', 2, '/var/www/html/images/caricaturas/qy9fMlz.jpg', 'image/jpeg', 'qy9fMlz.jpg', 222913, NULL, NULL, NULL, 1, 1439595133, 1, 1439595133, '621 690'),
(143, 1, 'r7w5QrP.jpg', 2, '/var/www/html/images/caricaturas/r7w5QrP.jpg', 'image/jpeg', 'r7w5QrP.jpg', 244394, NULL, NULL, NULL, 1, 1439595136, 1, 1439595136, '621 690'),
(144, 1, 'rPg2e8m.jpg', 2, '/var/www/html/images/caricaturas/rPg2e8m.jpg', 'image/jpeg', 'rPg2e8m.jpg', 159678, NULL, NULL, NULL, 1, 1439595135, 1, 1439595135, '621 690'),
(145, 1, 'tzySx0S.jpg', 2, '/var/www/html/images/caricaturas/tzySx0S.jpg', 'image/jpeg', 'tzySx0S.jpg', 198259, NULL, NULL, NULL, 1, 1439595148, 1, 1439595148, '621 690'),
(146, 1, 'ufdmZlE.jpg', 2, '/var/www/html/images/caricaturas/ufdmZlE.jpg', 'image/jpeg', 'ufdmZlE.jpg', 248182, NULL, NULL, NULL, 1, 1439595147, 1, 1439595147, '623 690'),
(147, 1, 'uqPfUeR.jpg', 2, '/var/www/html/images/caricaturas/uqPfUeR.jpg', 'image/jpeg', 'uqPfUeR.jpg', 240650, NULL, NULL, NULL, 1, 1439595148, 1, 1439595148, '621 690'),
(148, 1, 'uwpMWYq.jpg', 2, '/var/www/html/images/caricaturas/uwpMWYq.jpg', 'image/jpeg', 'uwpMWYq.jpg', 232510, NULL, NULL, NULL, 1, 1439595151, 1, 1439595151, '621 690'),
(149, 1, 'v934oZf.jpg', 2, '/var/www/html/images/caricaturas/v934oZf.jpg', 'image/jpeg', 'v934oZf.jpg', 249327, NULL, NULL, NULL, 1, 1439595153, 1, 1439595153, '623 690'),
(150, 1, 'vkGGk66.jpg', 2, '/var/www/html/images/caricaturas/vkGGk66.jpg', 'image/jpeg', 'vkGGk66.jpg', 212423, NULL, NULL, NULL, 1, 1439595160, 1, 1439595160, '621 690'),
(151, 1, 'vlc7axb.jpg', 2, '/var/www/html/images/caricaturas/vlc7axb.jpg', 'image/jpeg', 'vlc7axb.jpg', 233538, NULL, NULL, NULL, 1, 1439595156, 1, 1439595156, '596 690'),
(152, 1, 'wvk4LGe.jpg', 2, '/var/www/html/images/caricaturas/wvk4LGe.jpg', 'image/jpeg', 'wvk4LGe.jpg', 134937, NULL, NULL, NULL, 1, 1439595161, 1, 1439595161, '657 690'),
(153, 1, 'xqPBeGq.jpg', 2, '/var/www/html/images/caricaturas/xqPBeGq.jpg', 'image/jpeg', 'xqPBeGq.jpg', 228287, NULL, NULL, NULL, 1, 1439595165, 1, 1439595165, '622 690'),
(154, 1, 'yFhiPVh.jpg', 2, '/var/www/html/images/caricaturas/yFhiPVh.jpg', 'image/jpeg', 'yFhiPVh.jpg', 244454, NULL, NULL, NULL, 1, 1439595170, 1, 1439595170, '621 690'),
(155, 1, 'yRH3oDj.jpg', 2, '/var/www/html/images/caricaturas/yRH3oDj.jpg', 'image/jpeg', 'yRH3oDj.jpg', 247477, NULL, NULL, NULL, 1, 1439595174, 1, 1439595174, '621 690'),
(156, 1, 'yTHztMt.jpg', 2, '/var/www/html/images/caricaturas/yTHztMt.jpg', 'image/jpeg', 'yTHztMt.jpg', 479161, NULL, NULL, NULL, 1, 1439595179, 1, 1439595179, '621 690'),
(157, 1, 'zJTwZDW.jpg', 2, '/var/www/html/images/caricaturas/zJTwZDW.jpg', 'image/jpeg', 'zJTwZDW.jpg', 223760, NULL, NULL, NULL, 1, 1439595176, 1, 1439595176, '488 690'),
(158, 1, 'zcXo9Zg.jpg', 2, '/var/www/html/images/caricaturas/zcXo9Zg.jpg', 'image/jpeg', 'zcXo9Zg.jpg', 258026, NULL, NULL, NULL, 1, 1439595176, 1, 1439595176, '605 690'),
(159, 1, 'Costo_y_Beneficio_01.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_01.png', 'image/png', 'Costo_y_Beneficio_01.png', 793180, NULL, NULL, NULL, 1, 1439601261, 1, 1439601261, '754 795'),
(160, 1, 'Costo_y_Beneficio_01.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_01.pdf', 'application/pdf', 'Costo_y_Beneficio_01.pdf', 303616, NULL, NULL, NULL, 1, 1439601324, 1, 1439601324, ' '),
(161, 1, 'Costo_y_Beneficio_01_img.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_01_img.png', 'image/png', 'Costo_y_Beneficio_01_img.png', 793180, NULL, NULL, NULL, 1, 1439601569, 1, 1439601582, '754 795'),
(162, 1, 'Costo_y_Beneficio_02.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_02.png', 'image/png', 'Costo_y_Beneficio_02.png', 528906, NULL, NULL, NULL, 1, 1439601650, 1, 1439601650, '503 528'),
(163, 1, 'Costo_y_Beneficio_02.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_02.pdf', 'application/pdf', 'Costo_y_Beneficio_02.pdf', 379720, NULL, NULL, NULL, 1, 1439601662, 1, 1439601662, ' '),
(164, 1, 'Costo_y_Beneficio_03.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_03.png', 'image/png', 'Costo_y_Beneficio_03.png', 443372, NULL, NULL, NULL, 1, 1439601752, 1, 1439601752, '504 531'),
(165, 1, 'Costo_y_Beneficio_04.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_04.png', 'image/png', 'Costo_y_Beneficio_04.png', 951900, NULL, NULL, NULL, 1, 1439601766, 1, 1439601766, '758 795'),
(166, 1, 'Costo_y_Beneficio_05.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_05.png', 'image/png', 'Costo_y_Beneficio_05.png', 750193, NULL, NULL, NULL, 1, 1439601773, 1, 1439601773, '755 796'),
(167, 1, 'Costo_y_Beneficio_03.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_03.pdf', 'application/pdf', 'Costo_y_Beneficio_03.pdf', 235049, NULL, NULL, NULL, 1, 1439601805, 1, 1439601805, ' '),
(168, 1, 'Costo_y_Beneficio_04.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_04.pdf', 'application/pdf', 'Costo_y_Beneficio_04.pdf', 1345362, NULL, NULL, NULL, 1, 1439601818, 1, 1439601818, ' '),
(169, 1, 'Costo_y_Beneficio_05_pdf.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_05_pdf.pdf', 'application/pdf', 'Costo_y_Beneficio_05_pdf.pdf', 1425684, NULL, NULL, NULL, 1, 1439601828, 1, 1439601836, ' '),
(170, 1, 'Costo_y_Beneficio_06.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_06.png', 'image/png', 'Costo_y_Beneficio_06.png', 757473, NULL, NULL, NULL, 1, 1439601881, 1, 1439601881, '755 797'),
(171, 1, 'Costo_y_Beneficio_07.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_07.png', 'image/png', 'Costo_y_Beneficio_07.png', 785562, NULL, NULL, NULL, 1, 1439601889, 1, 1439601889, '755 794'),
(172, 1, 'Costo_y_Beneficio_08.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_08.png', 'image/png', 'Costo_y_Beneficio_08.png', 1030482, NULL, NULL, NULL, 1, 1439601903, 1, 1439601903, '759 796'),
(173, 1, 'Costo_y_Beneficio_06_pdf.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_06_pdf.pdf', 'application/pdf', 'Costo_y_Beneficio_06_pdf.pdf', 295967, NULL, NULL, NULL, 1, 1439601925, 1, 1439601950, ' '),
(174, 1, 'Costo_y_Beneficio_07_pdf.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_07_pdf.pdf', 'application/pdf', 'Costo_y_Beneficio_07_pdf.pdf', 808980, NULL, NULL, NULL, 1, 1439601939, 1, 1439601957, ' '),
(175, 1, 'Costo_y_Beneficio_08_pdf.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_08_pdf.pdf', 'application/pdf', 'Costo_y_Beneficio_08_pdf.pdf', 505631, NULL, NULL, NULL, 1, 1439601950, 1, 1439601962, ' '),
(176, 1, 'Costo_y_Beneficio_09.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_09.png', 'image/png', 'Costo_y_Beneficio_09.png', 616407, NULL, NULL, NULL, 1, 1439602013, 1, 1439602013, '757 794'),
(177, 1, 'Costo_y_Beneficio_10.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_10.png', 'image/png', 'Costo_y_Beneficio_10.png', 857846, NULL, NULL, NULL, 1, 1439602023, 1, 1439602023, '754 792'),
(178, 1, 'Costo_y_Beneficio_11.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_11.png', 'image/png', 'Costo_y_Beneficio_11.png', 724101, NULL, NULL, NULL, 1, 1439602032, 1, 1439602032, '763 796'),
(179, 1, 'Costo_y_Beneficio_09_pdf.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_09_pdf.pdf', 'application/pdf', 'Costo_y_Beneficio_09_pdf.pdf', 322673, NULL, NULL, NULL, 1, 1439602052, 1, 1439602069, ' '),
(180, 1, 'Costo_y_Beneficio_10_pdf.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_10_pdf.pdf', 'application/pdf', 'Costo_y_Beneficio_10_pdf.pdf', 788214, NULL, NULL, NULL, 1, 1439602060, 1, 1439602074, ' '),
(181, 1, 'Costo_y_Beneficio_11_pdf.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_11_pdf.pdf', 'application/pdf', 'Costo_y_Beneficio_11_pdf.pdf', 370319, NULL, NULL, NULL, 1, 1439602068, 1, 1439602083, ' '),
(182, 1, 'Costo_y_Beneficio_12_y_13.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_12_y_13.png', 'image/png', 'Costo_y_Beneficio_12_y_13.png', 1135124, NULL, NULL, NULL, 1, 1439602147, 1, 1439602147, '759 796'),
(183, 1, 'Costo_y_Beneficio_14.png', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_14.png', 'image/png', 'Costo_y_Beneficio_14.png', 1100964, NULL, NULL, NULL, 1, 1439602158, 1, 1439602158, '756 794'),
(184, 1, 'Costo_y_Beneficio_12_y_13.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_12_y_13.pdf', 'application/pdf', 'Costo_y_Beneficio_12_y_13.pdf', 570358, NULL, NULL, NULL, 1, 1439602168, 1, 1439602168, ' '),
(185, 1, 'Costo_y_Beneficio_14_pdf.pdf', 1, '/var/www/html/images/homepage/Costo_y_Beneficio_14_pdf.pdf', 'application/pdf', 'Costo_y_Beneficio_14_pdf.pdf', 564234, NULL, NULL, NULL, 1, 1439602177, 1, 1439602182, ' '),
(186, 1, 'pdlbanner.png', 1, '/var/www/html/images/homepage/pdlbanner.png', 'image/png', 'pdlbanner.png', 39311, NULL, NULL, NULL, 1, 1439602306, 1, 1439602306, '800 1920'),
(187, 1, 'logo.png', 1, '/var/www/html/images/homepage/logo.png', 'image/png', 'logo.png', 17367, NULL, NULL, NULL, 1, 1439602410, 1, 1439602410, '205 500'),
(188, 1, 'atlas.gif', 1, '/var/www/html/images/homepage/atlas.gif', 'image/gif', 'atlas.gif', 3512, NULL, NULL, NULL, 1, 1439602486, 1, 1439602486, '109 300'),
(189, 1, 'tarjetas.jpg', 1, '/var/www/html/images/homepage/tarjetas.jpg', 'image/jpeg', 'tarjetas.jpg', 89027, NULL, NULL, NULL, 1, 1439917262, 1, 1439917262, '250 570'),
(190, 1, 'books-magazines-building-school.jpg', 1, '/var/www/html/images/homepage/books-magazines-building-school.jpg', 'image/jpeg', 'books-magazines-building-school.jpg', 1925816, NULL, NULL, NULL, 1, 1439930123, 1, 1439930123, '2848 4288'),
(191, 1, 'antena.jpg', 1, '/var/www/html/images/homepage/antena.jpg', 'image/jpeg', 'antena.jpg', 57825, NULL, NULL, NULL, 1, 1440018054, 1, 1440018054, '250 570'),
(192, 1, 'logo_Infrastructura_para_todos.png', 1, '/var/www/html/images/homepage/logo_Infrastructura_para_todos.png', 'image/png', 'logo_Infrastructura_para_todos.png', 17644, NULL, NULL, NULL, 1, 1440020350, 1, 1440020360, '108 347'),
(193, 1, 'Policy_Notes.png', 1, '/var/www/html/images/homepage/Policy_Notes.png', 'image/png', 'Policy_Notes.png', 221522, NULL, NULL, NULL, 1, 1440024427, 1, 1440024427, '703 794'),
(194, 1, 'Policy_Note_01_-_Regulaciones_sin_evidencia.pdf', 1, '/var/www/html/images/homepage/Policy_Note_01_-_Regulaciones_sin_evidencia.pdf', 'application/pdf', 'Policy_Note_01_-_Regulaciones_sin_evidencia.pdf', 635648, NULL, NULL, NULL, 1, 1440024719, 1, 1440100190, ' '),
(195, 1, 'imagen-metatag2.png', 1, '/var/www/html/images/homepage/imagen-metatag2.png', 'image/png', 'imagen-metatag2.png', 1638, NULL, NULL, NULL, 1, 1440089461, 1, 1440089463, '120 120'),
(197, 1, 'policy_notes_01.pdf', 1, '/var/www/html/images/homepage/policy_notes_01.pdf', 'application/pdf', 'policy_notes_01.pdf', 635648, NULL, NULL, NULL, 1, 1440100595, 1, 1440100608, ' '),
(198, 1, 'cigarrillo-electronico_web_respeto_2.jpg', 1, '/var/www/html/images/homepage/cigarrillo-electronico_web_respeto_2.jpg', 'image/jpeg', 'cigarrillo-electronico_web_respeto_2.jpg', 17357, NULL, NULL, NULL, 2, 1440432252, 2, 1440432252, '352 627'),
(199, 1, 'logo1.png', 1, '/var/www/html/images/homepage/logo1.png', 'image/png', 'logo1.png', 24177, NULL, NULL, NULL, 1, 1440446449, 1, 1440446449, '143 300'),
(200, 1, 'Consenso_Infraestructura_Respeto.pe.jpg', 1, '/var/www/html/images/homepage/Consenso_Infraestructura_Respeto.pe.jpg', 'image/jpeg', 'Consenso_Infraestructura_Respeto.pe.jpg', 187709, NULL, NULL, NULL, 2, 1441228816, 2, 1441228817, '1200 1800'),
(201, 1, 'Perú_No_revolución_respeto.pe.jpg', 1, '/var/www/html/images/homepage/Perú_No_revolución_respeto.pe.jpg', 'image/jpeg', 'Perú_No_revolución_respeto.pe.jpg', 108831, NULL, NULL, NULL, 2, 1441228997, 2, 1441229002, '474 637'),
(202, 1, 'Tribunal_Fiscal_Impuesto_Ineficiencia_respeto.pe.jpg', 1, '/var/www/html/images/homepage/Tribunal_Fiscal_Impuesto_Ineficiencia_respeto.pe.jpg', 'image/jpeg', 'Tribunal_Fiscal_Impuesto_Ineficiencia_respeto.pe.jpg', 151654, NULL, NULL, NULL, 2, 1441229094, 2, 1441229104, '285 513'),
(203, 1, 'Policy_Note_02_-_Obtención_de_predios_03.09.2015.pdf', 1, '/var/www/html/images/homepage/Policy_Note_02_-_Obtención_de_predios_03.09.2015.pdf', 'application/pdf', 'Policy_Note_02_-_Obtención_de_predios_03.09.2015.pdf', 150938, NULL, NULL, NULL, 2, 1441319593, 2, 1441319593, ' '),
(204, 1, 'Carátula_web_para_PN_2_Predios.tiff', 1, '/var/www/html/images/homepage/Carátula_web_para_PN_2_Predios.tiff', 'image/tiff', 'Carátula_web_para_PN_2_Predios.tiff', 142664, NULL, NULL, NULL, 2, 1441319691, 2, 1441319691, ' '),
(205, 1, 'Carátula_web_para_PN_2_Predios.png', 2, '/var/www/html/images/caricaturas/Carátula_web_para_PN_2_Predios.png', 'image/png', 'Carátula_web_para_PN_2_Predios.png', 371589, NULL, NULL, NULL, 2, 1441319976, 2, 1441319976, '698 886');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_file_categories`
--

CREATE TABLE IF NOT EXISTS `exp_file_categories` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `is_cover` char(1) DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_file_dimensions`
--

CREATE TABLE IF NOT EXISTS `exp_file_dimensions` (
  `id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `upload_location_id` int(4) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `short_name` varchar(255) DEFAULT '',
  `resize_type` varchar(50) DEFAULT '',
  `width` int(10) DEFAULT '0',
  `height` int(10) DEFAULT '0',
  `watermark_id` int(4) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_file_watermarks`
--

CREATE TABLE IF NOT EXISTS `exp_file_watermarks` (
  `wm_id` int(4) unsigned NOT NULL,
  `wm_name` varchar(80) DEFAULT NULL,
  `wm_type` varchar(10) DEFAULT 'text',
  `wm_image_path` varchar(100) DEFAULT NULL,
  `wm_test_image_path` varchar(100) DEFAULT NULL,
  `wm_use_font` char(1) DEFAULT 'y',
  `wm_font` varchar(30) DEFAULT NULL,
  `wm_font_size` int(3) unsigned DEFAULT NULL,
  `wm_text` varchar(100) DEFAULT NULL,
  `wm_vrt_alignment` varchar(10) DEFAULT 'top',
  `wm_hor_alignment` varchar(10) DEFAULT 'left',
  `wm_padding` int(3) unsigned DEFAULT NULL,
  `wm_opacity` int(3) unsigned DEFAULT NULL,
  `wm_hor_offset` int(4) unsigned DEFAULT NULL,
  `wm_vrt_offset` int(4) unsigned DEFAULT NULL,
  `wm_x_transp` int(4) DEFAULT NULL,
  `wm_y_transp` int(4) DEFAULT NULL,
  `wm_font_color` varchar(7) DEFAULT NULL,
  `wm_use_drop_shadow` char(1) DEFAULT 'y',
  `wm_shadow_distance` int(3) unsigned DEFAULT NULL,
  `wm_shadow_color` varchar(7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_composer_layouts`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_composer_layouts` (
  `composer_id` int(10) unsigned NOT NULL,
  `composer_data` text,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `preview` char(1) NOT NULL DEFAULT 'n',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_composer_templates`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_composer_templates` (
  `template_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `template_name` varchar(150) NOT NULL DEFAULT 'default',
  `template_label` varchar(150) NOT NULL DEFAULT 'default',
  `template_description` text,
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_data` text,
  `param_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_email_logs`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_email_logs` (
  `id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(250) NOT NULL DEFAULT 'user',
  `success` char(1) NOT NULL DEFAULT 'y',
  `from` text,
  `from_name` text,
  `to` text,
  `subject` text,
  `message` text,
  `debug_info` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_fields`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_fields` (
  `field_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `field_name` varchar(150) NOT NULL DEFAULT 'default',
  `field_label` varchar(150) NOT NULL DEFAULT 'default',
  `field_type` varchar(50) NOT NULL DEFAULT 'text',
  `settings` text,
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `required` char(1) NOT NULL DEFAULT 'n',
  `submissions_page` char(1) NOT NULL DEFAULT 'y',
  `moderation_page` char(1) NOT NULL DEFAULT 'y',
  `composer_use` char(1) NOT NULL DEFAULT 'y',
  `field_description` text
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_freeform_fields`
--

INSERT INTO `exp_freeform_fields` (`field_id`, `site_id`, `field_name`, `field_label`, `field_type`, `settings`, `author_id`, `entry_date`, `edit_date`, `required`, `submissions_page`, `moderation_page`, `composer_use`, `field_description`) VALUES
(1, 1, 'first_name', 'First Name', 'text', '{"field_length":150,"field_content_type":"any"}', 1, 1440114548, 0, 'n', 'y', 'y', 'y', 'This field contains the user''s first name.'),
(2, 1, 'last_name', 'Last Name', 'text', '{"field_length":150,"field_content_type":"any"}', 1, 1440114548, 0, 'n', 'y', 'y', 'y', 'This field contains the user''s last name.'),
(3, 1, 'email', 'Email', 'text', '{"field_length":150,"field_content_type":"email"}', 1, 1440114548, 0, 'n', 'y', 'y', 'y', 'A basic email field for collecting stuff like an email address.'),
(4, 1, 'user_message', 'Message', 'textarea', '{"field_ta_rows":6}', 1, 1440114548, 0, 'n', 'y', 'y', 'y', 'This field contains the user''s message.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_fieldtypes`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_fieldtypes` (
  `fieldtype_id` int(10) unsigned NOT NULL,
  `fieldtype_name` varchar(250) DEFAULT NULL,
  `settings` text,
  `default_field` char(1) NOT NULL DEFAULT 'n',
  `version` varchar(12) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_freeform_fieldtypes`
--

INSERT INTO `exp_freeform_fieldtypes` (`fieldtype_id`, `fieldtype_name`, `settings`, `default_field`, `version`) VALUES
(1, 'checkbox', '[]', 'n', '4.2.2'),
(2, 'checkbox_group', '[]', 'n', '4.2.2'),
(3, 'country_select', '[]', 'n', '4.2.2'),
(4, 'file_upload', '[]', 'n', '4.2.2'),
(5, 'hidden', '[]', 'n', '4.2.2'),
(6, 'mailinglist', '[]', 'n', '4.2.2'),
(7, 'multiselect', '[]', 'n', '4.2.2'),
(8, 'province_select', '[]', 'n', '4.2.2'),
(9, 'radio', '[]', 'n', '4.2.2'),
(10, 'select', '[]', 'n', '4.2.2'),
(11, 'state_select', '[]', 'n', '4.2.2'),
(12, 'text', '[]', 'n', '4.2.2'),
(13, 'textarea', '[]', 'n', '4.2.2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_file_uploads`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_file_uploads` (
  `file_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `server_path` varchar(750) DEFAULT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `extension` varchar(20) DEFAULT NULL,
  `filesize` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_forms`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_forms` (
  `form_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_name` varchar(150) NOT NULL DEFAULT 'default',
  `form_label` varchar(150) NOT NULL DEFAULT 'default',
  `default_status` varchar(150) NOT NULL DEFAULT 'default',
  `notify_user` char(1) NOT NULL DEFAULT 'n',
  `notify_admin` char(1) NOT NULL DEFAULT 'n',
  `user_email_field` varchar(150) NOT NULL DEFAULT '',
  `user_notification_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_notification_id` int(10) unsigned NOT NULL DEFAULT '0',
  `admin_notification_email` text,
  `form_description` text,
  `field_ids` text,
  `field_order` text,
  `template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `composer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `settings` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_freeform_forms`
--

INSERT INTO `exp_freeform_forms` (`form_id`, `site_id`, `form_name`, `form_label`, `default_status`, `notify_user`, `notify_admin`, `user_email_field`, `user_notification_id`, `admin_notification_id`, `admin_notification_email`, `form_description`, `field_ids`, `field_order`, `template_id`, `composer_id`, `author_id`, `entry_date`, `edit_date`, `settings`) VALUES
(1, 1, 'contact', 'Contact', 'pending', 'n', 'y', '', 0, 1, 'herman.marin@ayuninc.com', 'This is a basic contact form.', '1|2|3|4', NULL, 0, 0, 1, 1440114548, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_form_entries_1`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_form_entries_1` (
  `entry_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `complete` varchar(1) NOT NULL DEFAULT 'y',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit_date` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT NULL,
  `form_field_1` text,
  `form_field_2` text,
  `form_field_3` text,
  `form_field_4` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_freeform_form_entries_1`
--

INSERT INTO `exp_freeform_form_entries_1` (`entry_id`, `site_id`, `author_id`, `complete`, `ip_address`, `entry_date`, `edit_date`, `status`, `form_field_1`, `form_field_2`, `form_field_3`, `form_field_4`) VALUES
(1, 1, 0, 'y', '127.0.0.1', 1440114548, 0, 'pending', 'Jake', 'Solspace', 'support@solspace.com', 'Welcome to Freeform. We hope that you will enjoy Solspace software.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_multipage_hashes`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_multipage_hashes` (
  `hash_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `edit` char(1) NOT NULL DEFAULT 'n',
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_notification_templates`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_notification_templates` (
  `notification_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `notification_name` varchar(150) NOT NULL DEFAULT 'default',
  `notification_label` varchar(150) NOT NULL DEFAULT 'default',
  `notification_description` text,
  `wordwrap` char(1) NOT NULL DEFAULT 'y',
  `allow_html` char(1) NOT NULL DEFAULT 'n',
  `from_name` varchar(150) NOT NULL DEFAULT '',
  `from_email` varchar(250) NOT NULL DEFAULT '',
  `reply_to_email` varchar(250) NOT NULL DEFAULT '',
  `email_subject` varchar(128) NOT NULL DEFAULT 'default',
  `include_attachments` char(1) NOT NULL DEFAULT 'n',
  `template_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_params`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_params` (
  `params_id` int(10) unsigned NOT NULL,
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_preferences`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_preferences` (
  `preference_id` int(10) unsigned NOT NULL,
  `preference_name` varchar(80) DEFAULT NULL,
  `preference_value` text,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_freeform_preferences`
--

INSERT INTO `exp_freeform_preferences` (`preference_id`, `preference_name`, `preference_value`, `site_id`) VALUES
(1, 'ffp', 'y', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_freeform_user_email`
--

CREATE TABLE IF NOT EXISTS `exp_freeform_user_email` (
  `email_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned NOT NULL DEFAULT '1',
  `author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(40) NOT NULL DEFAULT '0',
  `entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email_count` int(10) unsigned NOT NULL DEFAULT '0',
  `email_addresses` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_global_variables`
--

CREATE TABLE IF NOT EXISTS `exp_global_variables` (
  `variable_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `variable_name` varchar(50) NOT NULL,
  `variable_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_grid_columns`
--

CREATE TABLE IF NOT EXISTS `exp_grid_columns` (
  `col_id` int(10) unsigned NOT NULL,
  `field_id` int(10) unsigned DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `col_order` int(3) unsigned DEFAULT NULL,
  `col_type` varchar(50) DEFAULT NULL,
  `col_label` varchar(50) DEFAULT NULL,
  `col_name` varchar(32) DEFAULT NULL,
  `col_instructions` text,
  `col_required` char(1) DEFAULT NULL,
  `col_search` char(1) DEFAULT NULL,
  `col_width` int(3) unsigned DEFAULT NULL,
  `col_settings` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_html_buttons`
--

CREATE TABLE IF NOT EXISTS `exp_html_buttons` (
  `id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `tag_name` varchar(32) NOT NULL,
  `tag_open` varchar(120) NOT NULL,
  `tag_close` varchar(120) NOT NULL,
  `accesskey` varchar(32) NOT NULL,
  `tag_order` int(3) unsigned NOT NULL,
  `tag_row` char(1) NOT NULL DEFAULT '1',
  `classname` varchar(20) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_html_buttons`
--

INSERT INTO `exp_html_buttons` (`id`, `site_id`, `member_id`, `tag_name`, `tag_open`, `tag_close`, `accesskey`, `tag_order`, `tag_row`, `classname`) VALUES
(1, 1, 0, 'b', '<strong>', '</strong>', 'b', 1, '1', 'btn_b'),
(2, 1, 0, 'i', '<em>', '</em>', 'i', 2, '1', 'btn_i'),
(3, 1, 0, 'blockquote', '<blockquote>', '</blockquote>', 'q', 3, '1', 'btn_blockquote'),
(4, 1, 0, 'a', '<a href="[![Link:!:http://]!]"(!( title="[![Title]!]")!)>', '</a>', 'a', 4, '1', 'btn_a'),
(5, 1, 0, 'img', '<img src="[![Link:!:http://]!]" alt="[![Alternative text]!]" />', '', '', 5, '1', 'btn_img');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_importer_batches`
--

CREATE TABLE IF NOT EXISTS `exp_importer_batches` (
  `batch_id` bigint(20) unsigned NOT NULL,
  `profile_id` int(10) unsigned NOT NULL DEFAULT '1',
  `batch_hash` varchar(13) NOT NULL DEFAULT '',
  `details` mediumtext,
  `batch_date` int(10) unsigned DEFAULT '0',
  `finished` char(1) NOT NULL DEFAULT 'n'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_importer_batch_data`
--

CREATE TABLE IF NOT EXISTS `exp_importer_batch_data` (
  `profile_id` int(10) unsigned NOT NULL DEFAULT '1',
  `batch_hash` varchar(13) NOT NULL DEFAULT '',
  `batch_number` int(10) unsigned NOT NULL DEFAULT '1',
  `batch_data` mediumtext,
  `finished` char(1) NOT NULL DEFAULT 'n',
  `batch_date` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_importer_log`
--

CREATE TABLE IF NOT EXISTS `exp_importer_log` (
  `log_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned DEFAULT '1',
  `member_id` int(10) unsigned DEFAULT '1',
  `batch_hash` varchar(13) NOT NULL DEFAULT '',
  `details` mediumtext,
  `date` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_importer_log`
--

INSERT INTO `exp_importer_log` (`log_id`, `profile_id`, `member_id`, `batch_hash`, `details`, `date`) VALUES
(1, 5, 1, '55ce74ae11c17', 'YToxNTp7czoxMDoic3RhcnRfdGltZSI7czoxNjoiOC8xNS8xNSAxMjo1MSBBTSI7czo5OiJkZWJ1Z2dpbmciO2E6NDEwOntpOjA7czozMDoiUmV0cmlldmUgRGF0YSAtIFNUQVJUOiAxLjY3IE1CIjtpOjE7czoyNjoiUGFyc2UgRGF0YSAtIFNUQVJUOiAxLjggTUIiO2k6MjtzOjI1OiJQYXJzZSBEYXRhIC0gRU5EOiAxLjg0IE1CIjtpOjM7czozNDoiTG9hZCBBUEkgLSBTVEFSVDogMS42OCBNQiAoMC4wMDAyKSI7aTo0O3M6MzI6IkxvYWQgQVBJIC0gRU5EOiAxLjczIE1CICgwLjAwMTMpIjtpOjU7czo0NDoiRW50cnkgKDApIFN0YXJ0IFByb2Nlc3Npbmc6IDEuNzQgTUIgKDAuMDAxNCkiO2k6NjtzOjM4OiJFbnRyeSAoMCkgQVBJIFN0YXJ0czogMS43NiBNQiAoMC4wMDc4KSI7aTo3O3M6NDI6IkVudHJ5ICgwKSBDYXRlZ29yaWVzL1RhZ3M6IDIuMiBNQiAoMC4wMjEzKSI7aTo4O3M6NDM6IkVudHJ5ICgxKSBTdGFydCBQcm9jZXNzaW5nOiAyLjIgTUIgKDAuMDIxNykiO2k6OTtzOjM2OiJFbnRyeSAoMSkgQVBJIFN0YXJ0czogMi4yIE1CICgwLjAyNikiO2k6MTA7czo0MzoiRW50cnkgKDEpIENhdGVnb3JpZXMvVGFnczogMi4yMSBNQiAoMC4wMzQxKSI7aToxMTtzOjQ0OiJFbnRyeSAoMikgU3RhcnQgUHJvY2Vzc2luZzogMi4yMSBNQiAoMC4wMzQ1KSI7aToxMjtzOjM4OiJFbnRyeSAoMikgQVBJIFN0YXJ0czogMi4yMSBNQiAoMC4wMzg4KSI7aToxMztzOjQyOiJFbnRyeSAoMikgQ2F0ZWdvcmllcy9UYWdzOiAyLjIyIE1CICgwLjA0NykiO2k6MTQ7czo0NDoiRW50cnkgKDMpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuMjIgTUIgKDAuMDQ3NCkiO2k6MTU7czozODoiRW50cnkgKDMpIEFQSSBTdGFydHM6IDIuMjIgTUIgKDAuMDUxNikiO2k6MTY7czo0MzoiRW50cnkgKDMpIENhdGVnb3JpZXMvVGFnczogMi4yMyBNQiAoMC4wNTk5KSI7aToxNztzOjQ0OiJFbnRyeSAoNCkgU3RhcnQgUHJvY2Vzc2luZzogMi4yMyBNQiAoMC4wNjAzKSI7aToxODtzOjM4OiJFbnRyeSAoNCkgQVBJIFN0YXJ0czogMi4yMyBNQiAoMC4wNjQ4KSI7aToxOTtzOjQzOiJFbnRyeSAoNCkgQ2F0ZWdvcmllcy9UYWdzOiAyLjI0IE1CICgwLjA3MzQpIjtpOjIwO3M6NDQ6IkVudHJ5ICg1KSBTdGFydCBQcm9jZXNzaW5nOiAyLjI0IE1CICgwLjA3MzgpIjtpOjIxO3M6Mzg6IkVudHJ5ICg1KSBBUEkgU3RhcnRzOiAyLjI0IE1CICgwLjA3ODEpIjtpOjIyO3M6NDM6IkVudHJ5ICg1KSBDYXRlZ29yaWVzL1RhZ3M6IDIuMjUgTUIgKDAuMDg2NSkiO2k6MjM7czo0NDoiRW50cnkgKDYpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuMjUgTUIgKDAuMDg2OSkiO2k6MjQ7czozODoiRW50cnkgKDYpIEFQSSBTdGFydHM6IDIuMjUgTUIgKDAuMDkxMykiO2k6MjU7czo0MzoiRW50cnkgKDYpIENhdGVnb3JpZXMvVGFnczogMi4yNiBNQiAoMC4xMDAyKSI7aToyNjtzOjQ0OiJFbnRyeSAoNykgU3RhcnQgUHJvY2Vzc2luZzogMi4yNiBNQiAoMC4xMDA2KSI7aToyNztzOjM4OiJFbnRyeSAoNykgQVBJIFN0YXJ0czogMi4yNiBNQiAoMC4xMDUxKSI7aToyODtzOjQyOiJFbnRyeSAoNykgQ2F0ZWdvcmllcy9UYWdzOiAyLjI3IE1CICgwLjExNCkiO2k6Mjk7czo0NDoiRW50cnkgKDgpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuMjcgTUIgKDAuMTE0MykiO2k6MzA7czozODoiRW50cnkgKDgpIEFQSSBTdGFydHM6IDIuMjcgTUIgKDAuMTE4NikiO2k6MzE7czo0MzoiRW50cnkgKDgpIENhdGVnb3JpZXMvVGFnczogMi4yOCBNQiAoMC4xMjczKSI7aTozMjtzOjQ0OiJFbnRyeSAoOSkgU3RhcnQgUHJvY2Vzc2luZzogMi4yOCBNQiAoMC4xMjc2KSI7aTozMztzOjM4OiJFbnRyeSAoOSkgQVBJIFN0YXJ0czogMi4yOCBNQiAoMC4xMzIxKSI7aTozNDtzOjQzOiJFbnRyeSAoOSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjI5IE1CICgwLjE0MTYpIjtpOjM1O3M6NDU6IkVudHJ5ICgxMCkgU3RhcnQgUHJvY2Vzc2luZzogMi4yOSBNQiAoMC4xNDE5KSI7aTozNjtzOjM5OiJFbnRyeSAoMTApIEFQSSBTdGFydHM6IDIuMjkgTUIgKDAuMTQ2MikiO2k6Mzc7czo0MjoiRW50cnkgKDEwKSBDYXRlZ29yaWVzL1RhZ3M6IDIuMyBNQiAoMC4xNTYpIjtpOjM4O3M6NDQ6IkVudHJ5ICgxMSkgU3RhcnQgUHJvY2Vzc2luZzogMi4zIE1CICgwLjE1NjYpIjtpOjM5O3M6Mzg6IkVudHJ5ICgxMSkgQVBJIFN0YXJ0czogMi4zIE1CICgwLjE2NDkpIjtpOjQwO3M6NDQ6IkVudHJ5ICgxMSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjMxIE1CICgwLjE3NDQpIjtpOjQxO3M6NDQ6IkVudHJ5ICgxMikgU3RhcnQgUHJvY2Vzc2luZzogMi4zMSBNQiAoMC4xNzUpIjtpOjQyO3M6Mzk6IkVudHJ5ICgxMikgQVBJIFN0YXJ0czogMi4zMSBNQiAoMC4xODAxKSI7aTo0MztzOjQ0OiJFbnRyeSAoMTIpIENhdGVnb3JpZXMvVGFnczogMi4zMSBNQiAoMC4xODk1KSI7aTo0NDtzOjQ1OiJFbnRyeSAoMTMpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuMzEgTUIgKDAuMTg5OSkiO2k6NDU7czozOToiRW50cnkgKDEzKSBBUEkgU3RhcnRzOiAyLjMyIE1CICgwLjE5NDUpIjtpOjQ2O3M6NDQ6IkVudHJ5ICgxMykgQ2F0ZWdvcmllcy9UYWdzOiAyLjMyIE1CICgwLjIwMzUpIjtpOjQ3O3M6NDU6IkVudHJ5ICgxNCkgU3RhcnQgUHJvY2Vzc2luZzogMi4zMiBNQiAoMC4yMDM5KSI7aTo0ODtzOjM5OiJFbnRyeSAoMTQpIEFQSSBTdGFydHM6IDIuMzIgTUIgKDAuMjA4NSkiO2k6NDk7czo0NDoiRW50cnkgKDE0KSBDYXRlZ29yaWVzL1RhZ3M6IDIuMzMgTUIgKDAuMjE3OSkiO2k6NTA7czo0NToiRW50cnkgKDE1KSBTdGFydCBQcm9jZXNzaW5nOiAyLjMzIE1CICgwLjIxODMpIjtpOjUxO3M6Mzk6IkVudHJ5ICgxNSkgQVBJIFN0YXJ0czogMi4zMyBNQiAoMC4yMjMzKSI7aTo1MjtzOjQ0OiJFbnRyeSAoMTUpIENhdGVnb3JpZXMvVGFnczogMi4zNSBNQiAoMC4yMzQzKSI7aTo1MztzOjQ1OiJFbnRyeSAoMTYpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuMzUgTUIgKDAuMjM0NikiO2k6NTQ7czozOToiRW50cnkgKDE2KSBBUEkgU3RhcnRzOiAyLjM1IE1CICgwLjIzOTUpIjtpOjU1O3M6NDQ6IkVudHJ5ICgxNikgQ2F0ZWdvcmllcy9UYWdzOiAyLjM2IE1CICgwLjI0ODYpIjtpOjU2O3M6NDU6IkVudHJ5ICgxNykgU3RhcnQgUHJvY2Vzc2luZzogMi4zNSBNQiAoMC4yNDg5KSI7aTo1NztzOjM5OiJFbnRyeSAoMTcpIEFQSSBTdGFydHM6IDIuMzYgTUIgKDAuMjUzNCkiO2k6NTg7czo0NDoiRW50cnkgKDE3KSBDYXRlZ29yaWVzL1RhZ3M6IDIuMzYgTUIgKDAuMjYyNSkiO2k6NTk7czo0NToiRW50cnkgKDE4KSBTdGFydCBQcm9jZXNzaW5nOiAyLjM2IE1CICgwLjI2MjkpIjtpOjYwO3M6Mzk6IkVudHJ5ICgxOCkgQVBJIFN0YXJ0czogMi4zNiBNQiAoMC4yNzAxKSI7aTo2MTtzOjQ0OiJFbnRyeSAoMTgpIENhdGVnb3JpZXMvVGFnczogMi4zNyBNQiAoMC4yODc1KSI7aTo2MjtzOjQ1OiJFbnRyeSAoMTkpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuMzcgTUIgKDAuMjg4MikiO2k6NjM7czozOToiRW50cnkgKDE5KSBBUEkgU3RhcnRzOiAyLjM3IE1CICgwLjI5NzcpIjtpOjY0O3M6NDQ6IkVudHJ5ICgxOSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjM4IE1CICgwLjMxNTEpIjtpOjY1O3M6NDU6IkVudHJ5ICgyMCkgU3RhcnQgUHJvY2Vzc2luZzogMi4zOCBNQiAoMC4zMTU5KSI7aTo2NjtzOjM5OiJFbnRyeSAoMjApIEFQSSBTdGFydHM6IDIuMzggTUIgKDAuMzI1OSkiO2k6Njc7czo0NDoiRW50cnkgKDIwKSBDYXRlZ29yaWVzL1RhZ3M6IDIuMzkgTUIgKDAuMzQzNCkiO2k6Njg7czo0NToiRW50cnkgKDIxKSBTdGFydCBQcm9jZXNzaW5nOiAyLjM5IE1CICgwLjM0NDIpIjtpOjY5O3M6Mzg6IkVudHJ5ICgyMSkgQVBJIFN0YXJ0czogMi4zOSBNQiAoMC4zNTMpIjtpOjcwO3M6NDM6IkVudHJ5ICgyMSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjQgTUIgKDAuMzcwOSkiO2k6NzE7czo0NDoiRW50cnkgKDIyKSBTdGFydCBQcm9jZXNzaW5nOiAyLjQgTUIgKDAuMzcxNikiO2k6NzI7czozODoiRW50cnkgKDIyKSBBUEkgU3RhcnRzOiAyLjQgTUIgKDAuMzgxNykiO2k6NzM7czo0NDoiRW50cnkgKDIyKSBDYXRlZ29yaWVzL1RhZ3M6IDIuNDEgTUIgKDAuMzk4NykiO2k6NzQ7czo0NToiRW50cnkgKDIzKSBTdGFydCBQcm9jZXNzaW5nOiAyLjQxIE1CICgwLjM5OTQpIjtpOjc1O3M6Mzk6IkVudHJ5ICgyMykgQVBJIFN0YXJ0czogMi40MSBNQiAoMC40MDgxKSI7aTo3NjtzOjQ0OiJFbnRyeSAoMjMpIENhdGVnb3JpZXMvVGFnczogMi40MiBNQiAoMC40MjU1KSI7aTo3NztzOjQ1OiJFbnRyeSAoMjQpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNDIgTUIgKDAuNDI2MikiO2k6Nzg7czozOToiRW50cnkgKDI0KSBBUEkgU3RhcnRzOiAyLjQyIE1CICgwLjQzNTMpIjtpOjc5O3M6NDQ6IkVudHJ5ICgyNCkgQ2F0ZWdvcmllcy9UYWdzOiAyLjQzIE1CICgwLjQ1MzYpIjtpOjgwO3M6NDU6IkVudHJ5ICgyNSkgU3RhcnQgUHJvY2Vzc2luZzogMi40MyBNQiAoMC40NTQ0KSI7aTo4MTtzOjM5OiJFbnRyeSAoMjUpIEFQSSBTdGFydHM6IDIuNDMgTUIgKDAuNDYzNikiO2k6ODI7czo0NDoiRW50cnkgKDI1KSBDYXRlZ29yaWVzL1RhZ3M6IDIuNDQgTUIgKDAuNDgwNCkiO2k6ODM7czo0NToiRW50cnkgKDI2KSBTdGFydCBQcm9jZXNzaW5nOiAyLjQ0IE1CICgwLjQ4MTIpIjtpOjg0O3M6Mzk6IkVudHJ5ICgyNikgQVBJIFN0YXJ0czogMi40NCBNQiAoMC40OTA0KSI7aTo4NTtzOjQ0OiJFbnRyeSAoMjYpIENhdGVnb3JpZXMvVGFnczogMi40NSBNQiAoMC41MDc3KSI7aTo4NjtzOjQ1OiJFbnRyeSAoMjcpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNDUgTUIgKDAuNTA4NCkiO2k6ODc7czozOToiRW50cnkgKDI3KSBBUEkgU3RhcnRzOiAyLjQ1IE1CICgwLjUxNzIpIjtpOjg4O3M6NDQ6IkVudHJ5ICgyNykgQ2F0ZWdvcmllcy9UYWdzOiAyLjQ1IE1CICgwLjUzNDgpIjtpOjg5O3M6NDU6IkVudHJ5ICgyOCkgU3RhcnQgUHJvY2Vzc2luZzogMi40NSBNQiAoMC41MzU1KSI7aTo5MDtzOjM5OiJFbnRyeSAoMjgpIEFQSSBTdGFydHM6IDIuNDYgTUIgKDAuNTQ0MikiO2k6OTE7czo0NDoiRW50cnkgKDI4KSBDYXRlZ29yaWVzL1RhZ3M6IDIuNDYgTUIgKDAuNTYxOCkiO2k6OTI7czo0NToiRW50cnkgKDI5KSBTdGFydCBQcm9jZXNzaW5nOiAyLjQ2IE1CICgwLjU2MjUpIjtpOjkzO3M6Mzk6IkVudHJ5ICgyOSkgQVBJIFN0YXJ0czogMi40NiBNQiAoMC41NzEzKSI7aTo5NDtzOjQ0OiJFbnRyeSAoMjkpIENhdGVnb3JpZXMvVGFnczogMi40NyBNQiAoMC41ODk1KSI7aTo5NTtzOjQ1OiJFbnRyeSAoMzApIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNDcgTUIgKDAuNTkwMikiO2k6OTY7czozOToiRW50cnkgKDMwKSBBUEkgU3RhcnRzOiAyLjQ3IE1CICgwLjU5ODkpIjtpOjk3O3M6NDQ6IkVudHJ5ICgzMCkgQ2F0ZWdvcmllcy9UYWdzOiAyLjQ4IE1CICgwLjYxNjMpIjtpOjk4O3M6NDQ6IkVudHJ5ICgzMSkgU3RhcnQgUHJvY2Vzc2luZzogMi40OCBNQiAoMC42MTcpIjtpOjk5O3M6Mzk6IkVudHJ5ICgzMSkgQVBJIFN0YXJ0czogMi40OCBNQiAoMC42MjU2KSI7aToxMDA7czo0MzoiRW50cnkgKDMxKSBDYXRlZ29yaWVzL1RhZ3M6IDIuNSBNQiAoMC42NDI5KSI7aToxMDE7czo0NDoiRW50cnkgKDMyKSBTdGFydCBQcm9jZXNzaW5nOiAyLjUgTUIgKDAuNjQzNikiO2k6MTAyO3M6Mzg6IkVudHJ5ICgzMikgQVBJIFN0YXJ0czogMi41IE1CICgwLjY1MjQpIjtpOjEwMztzOjQ0OiJFbnRyeSAoMzIpIENhdGVnb3JpZXMvVGFnczogMi41MSBNQiAoMC42NzAyKSI7aToxMDQ7czo0NToiRW50cnkgKDMzKSBTdGFydCBQcm9jZXNzaW5nOiAyLjUxIE1CICgwLjY3MTEpIjtpOjEwNTtzOjM5OiJFbnRyeSAoMzMpIEFQSSBTdGFydHM6IDIuNTEgTUIgKDAuNjc5NykiO2k6MTA2O3M6NDM6IkVudHJ5ICgzMykgQ2F0ZWdvcmllcy9UYWdzOiAyLjUyIE1CICgwLjY5NykiO2k6MTA3O3M6NDU6IkVudHJ5ICgzNCkgU3RhcnQgUHJvY2Vzc2luZzogMi41MiBNQiAoMC42OTc3KSI7aToxMDg7czozOToiRW50cnkgKDM0KSBBUEkgU3RhcnRzOiAyLjUyIE1CICgwLjcwNjkpIjtpOjEwOTtzOjQ0OiJFbnRyeSAoMzQpIENhdGVnb3JpZXMvVGFnczogMi41MyBNQiAoMC43MjQyKSI7aToxMTA7czo0NToiRW50cnkgKDM1KSBTdGFydCBQcm9jZXNzaW5nOiAyLjUzIE1CICgwLjcyNDgpIjtpOjExMTtzOjM5OiJFbnRyeSAoMzUpIEFQSSBTdGFydHM6IDIuNTMgTUIgKDAuNzMzOCkiO2k6MTEyO3M6NDQ6IkVudHJ5ICgzNSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjU0IE1CICgwLjc1MTEpIjtpOjExMztzOjQ1OiJFbnRyeSAoMzYpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNTQgTUIgKDAuNzUyMikiO2k6MTE0O3M6Mzk6IkVudHJ5ICgzNikgQVBJIFN0YXJ0czogMi41NCBNQiAoMC43NjE0KSI7aToxMTU7czo0NDoiRW50cnkgKDM2KSBDYXRlZ29yaWVzL1RhZ3M6IDIuNTQgTUIgKDAuNzcyMSkiO2k6MTE2O3M6NDU6IkVudHJ5ICgzNykgU3RhcnQgUHJvY2Vzc2luZzogMi41NCBNQiAoMC43NzI0KSI7aToxMTc7czozOToiRW50cnkgKDM3KSBBUEkgU3RhcnRzOiAyLjU1IE1CICgwLjc3NzUpIjtpOjExODtzOjQ0OiJFbnRyeSAoMzcpIENhdGVnb3JpZXMvVGFnczogMi41NSBNQiAoMC43ODYyKSI7aToxMTk7czo0NToiRW50cnkgKDM4KSBTdGFydCBQcm9jZXNzaW5nOiAyLjU1IE1CICgwLjc4NjYpIjtpOjEyMDtzOjM4OiJFbnRyeSAoMzgpIEFQSSBTdGFydHM6IDIuNTUgTUIgKDAuNzkxKSI7aToxMjE7czo0NDoiRW50cnkgKDM4KSBDYXRlZ29yaWVzL1RhZ3M6IDIuNTYgTUIgKDAuNzk5NikiO2k6MTIyO3M6NDU6IkVudHJ5ICgzOSkgU3RhcnQgUHJvY2Vzc2luZzogMi41NiBNQiAoMC43OTk5KSI7aToxMjM7czozOToiRW50cnkgKDM5KSBBUEkgU3RhcnRzOiAyLjU2IE1CICgwLjgwNDMpIjtpOjEyNDtzOjQ0OiJFbnRyeSAoMzkpIENhdGVnb3JpZXMvVGFnczogMi41NyBNQiAoMC44MTU0KSI7aToxMjU7czo0NToiRW50cnkgKDQwKSBTdGFydCBQcm9jZXNzaW5nOiAyLjU3IE1CICgwLjgxNjIpIjtpOjEyNjtzOjM5OiJFbnRyeSAoNDApIEFQSSBTdGFydHM6IDIuNTcgTUIgKDAuODIxNCkiO2k6MTI3O3M6NDQ6IkVudHJ5ICg0MCkgQ2F0ZWdvcmllcy9UYWdzOiAyLjU4IE1CICgwLjgzMDMpIjtpOjEyODtzOjQ1OiJFbnRyeSAoNDEpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNTggTUIgKDAuODMwNikiO2k6MTI5O3M6Mzg6IkVudHJ5ICg0MSkgQVBJIFN0YXJ0czogMi41OCBNQiAoMC44MzUpIjtpOjEzMDtzOjQ0OiJFbnRyeSAoNDEpIENhdGVnb3JpZXMvVGFnczogMi41OSBNQiAoMC44NDM3KSI7aToxMzE7czo0NToiRW50cnkgKDQyKSBTdGFydCBQcm9jZXNzaW5nOiAyLjU5IE1CICgwLjg0NDEpIjtpOjEzMjtzOjM5OiJFbnRyeSAoNDIpIEFQSSBTdGFydHM6IDIuNTkgTUIgKDAuODQ4NSkiO2k6MTMzO3M6NDM6IkVudHJ5ICg0MikgQ2F0ZWdvcmllcy9UYWdzOiAyLjYgTUIgKDAuODU3NykiO2k6MTM0O3M6NDM6IkVudHJ5ICg0MykgU3RhcnQgUHJvY2Vzc2luZzogMi42IE1CICgwLjg1OCkiO2k6MTM1O3M6Mzg6IkVudHJ5ICg0MykgQVBJIFN0YXJ0czogMi42IE1CICgwLjg2MjYpIjtpOjEzNjtzOjQ0OiJFbnRyeSAoNDMpIENhdGVnb3JpZXMvVGFnczogMi42MSBNQiAoMC44NzE0KSI7aToxMzc7czo0NToiRW50cnkgKDQ0KSBTdGFydCBQcm9jZXNzaW5nOiAyLjYxIE1CICgwLjg3MTgpIjtpOjEzODtzOjM5OiJFbnRyeSAoNDQpIEFQSSBTdGFydHM6IDIuNjEgTUIgKDAuODc2MikiO2k6MTM5O3M6NDQ6IkVudHJ5ICg0NCkgQ2F0ZWdvcmllcy9UYWdzOiAyLjYyIE1CICgwLjg4NDQpIjtpOjE0MDtzOjQ1OiJFbnRyeSAoNDUpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNjIgTUIgKDAuODg0NykiO2k6MTQxO3M6Mzk6IkVudHJ5ICg0NSkgQVBJIFN0YXJ0czogMi42MiBNQiAoMC44ODkxKSI7aToxNDI7czo0NDoiRW50cnkgKDQ1KSBDYXRlZ29yaWVzL1RhZ3M6IDIuNjMgTUIgKDAuODk3OCkiO2k6MTQzO3M6NDU6IkVudHJ5ICg0NikgU3RhcnQgUHJvY2Vzc2luZzogMi42MyBNQiAoMC44OTgyKSI7aToxNDQ7czozOToiRW50cnkgKDQ2KSBBUEkgU3RhcnRzOiAyLjYzIE1CICgwLjkwMjcpIjtpOjE0NTtzOjQ0OiJFbnRyeSAoNDYpIENhdGVnb3JpZXMvVGFnczogMi42NCBNQiAoMC45MTE0KSI7aToxNDY7czo0NToiRW50cnkgKDQ3KSBTdGFydCBQcm9jZXNzaW5nOiAyLjY0IE1CICgwLjkxMTcpIjtpOjE0NztzOjM5OiJFbnRyeSAoNDcpIEFQSSBTdGFydHM6IDIuNjQgTUIgKDAuOTE2MSkiO2k6MTQ4O3M6NDQ6IkVudHJ5ICg0NykgQ2F0ZWdvcmllcy9UYWdzOiAyLjY0IE1CICgwLjkyNDYpIjtpOjE0OTtzOjQ0OiJFbnRyeSAoNDgpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNjQgTUIgKDAuOTI1KSI7aToxNTA7czozOToiRW50cnkgKDQ4KSBBUEkgU3RhcnRzOiAyLjY1IE1CICgwLjkyOTQpIjtpOjE1MTtzOjQ0OiJFbnRyeSAoNDgpIENhdGVnb3JpZXMvVGFnczogMi42NSBNQiAoMC45Mzg3KSI7aToxNTI7czo0NToiRW50cnkgKDQ5KSBTdGFydCBQcm9jZXNzaW5nOiAyLjY1IE1CICgwLjkzOTMpIjtpOjE1MztzOjM5OiJFbnRyeSAoNDkpIEFQSSBTdGFydHM6IDIuNjUgTUIgKDAuOTQ0MykiO2k6MTU0O3M6NDQ6IkVudHJ5ICg0OSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjY2IE1CICgwLjk1NTgpIjtpOjE1NTtzOjQ1OiJFbnRyeSAoNTApIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNjYgTUIgKDAuOTU2NSkiO2k6MTU2O3M6Mzk6IkVudHJ5ICg1MCkgQVBJIFN0YXJ0czogMi42NiBNQiAoMC45NjQ5KSI7aToxNTc7czo0NDoiRW50cnkgKDUwKSBDYXRlZ29yaWVzL1RhZ3M6IDIuNjcgTUIgKDAuOTgwMSkiO2k6MTU4O3M6NDU6IkVudHJ5ICg1MSkgU3RhcnQgUHJvY2Vzc2luZzogMi42NyBNQiAoMC45ODA4KSI7aToxNTk7czozOToiRW50cnkgKDUxKSBBUEkgU3RhcnRzOiAyLjY3IE1CICgwLjk4ODkpIjtpOjE2MDtzOjQ0OiJFbnRyeSAoNTEpIENhdGVnb3JpZXMvVGFnczogMi42OCBNQiAoMS4wMDI1KSI7aToxNjE7czo0NToiRW50cnkgKDUyKSBTdGFydCBQcm9jZXNzaW5nOiAyLjY4IE1CICgxLjAwMjkpIjtpOjE2MjtzOjM5OiJFbnRyeSAoNTIpIEFQSSBTdGFydHM6IDIuNjggTUIgKDEuMDA4NikiO2k6MTYzO3M6NDQ6IkVudHJ5ICg1MikgQ2F0ZWdvcmllcy9UYWdzOiAyLjY5IE1CICgxLjAxOTIpIjtpOjE2NDtzOjQ1OiJFbnRyeSAoNTMpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNjkgTUIgKDEuMDE5NikiO2k6MTY1O3M6Mzk6IkVudHJ5ICg1MykgQVBJIFN0YXJ0czogMi42OSBNQiAoMS4wMjQzKSI7aToxNjY7czo0MzoiRW50cnkgKDUzKSBDYXRlZ29yaWVzL1RhZ3M6IDIuNyBNQiAoMS4wMzUxKSI7aToxNjc7czo0NDoiRW50cnkgKDU0KSBTdGFydCBQcm9jZXNzaW5nOiAyLjcgTUIgKDEuMDM1NSkiO2k6MTY4O3M6Mzg6IkVudHJ5ICg1NCkgQVBJIFN0YXJ0czogMi43IE1CICgxLjA0MzYpIjtpOjE2OTtzOjQ0OiJFbnRyeSAoNTQpIENhdGVnb3JpZXMvVGFnczogMi43MSBNQiAoMS4wNjc4KSI7aToxNzA7czo0NToiRW50cnkgKDU1KSBTdGFydCBQcm9jZXNzaW5nOiAyLjcxIE1CICgxLjA2ODMpIjtpOjE3MTtzOjM5OiJFbnRyeSAoNTUpIEFQSSBTdGFydHM6IDIuNzEgTUIgKDEuMDc5MSkiO2k6MTcyO3M6NDQ6IkVudHJ5ICg1NSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjcyIE1CICgxLjA5OTgpIjtpOjE3MztzOjQ1OiJFbnRyeSAoNTYpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNzIgTUIgKDEuMTAwMikiO2k6MTc0O3M6Mzc6IkVudHJ5ICg1NikgQVBJIFN0YXJ0czogMi43MiBNQiAoMS4xMSkiO2k6MTc1O3M6NDQ6IkVudHJ5ICg1NikgQ2F0ZWdvcmllcy9UYWdzOiAyLjczIE1CICgxLjEyODkpIjtpOjE3NjtzOjQ1OiJFbnRyeSAoNTcpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNzMgTUIgKDEuMTI5MykiO2k6MTc3O3M6Mzk6IkVudHJ5ICg1NykgQVBJIFN0YXJ0czogMi43MyBNQiAoMS4xMzM3KSI7aToxNzg7czo0MzoiRW50cnkgKDU3KSBDYXRlZ29yaWVzL1RhZ3M6IDIuNzQgTUIgKDEuMTQ0KSI7aToxNzk7czo0NToiRW50cnkgKDU4KSBTdGFydCBQcm9jZXNzaW5nOiAyLjczIE1CICgxLjE0NDcpIjtpOjE4MDtzOjM5OiJFbnRyeSAoNTgpIEFQSSBTdGFydHM6IDIuNzQgTUIgKDEuMTUwOSkiO2k6MTgxO3M6NDQ6IkVudHJ5ICg1OCkgQ2F0ZWdvcmllcy9UYWdzOiAyLjc0IE1CICgxLjE2MDQpIjtpOjE4MjtzOjQ1OiJFbnRyeSAoNTkpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNzQgTUIgKDEuMTYwOSkiO2k6MTgzO3M6Mzk6IkVudHJ5ICg1OSkgQVBJIFN0YXJ0czogMi43NCBNQiAoMS4xNjU1KSI7aToxODQ7czo0MzoiRW50cnkgKDU5KSBDYXRlZ29yaWVzL1RhZ3M6IDIuNzUgTUIgKDEuMTc1KSI7aToxODU7czo0NToiRW50cnkgKDYwKSBTdGFydCBQcm9jZXNzaW5nOiAyLjc1IE1CICgxLjE3NTQpIjtpOjE4NjtzOjM3OiJFbnRyeSAoNjApIEFQSSBTdGFydHM6IDIuNzUgTUIgKDEuMTgpIjtpOjE4NztzOjQ0OiJFbnRyeSAoNjApIENhdGVnb3JpZXMvVGFnczogMi43NiBNQiAoMS4xODg5KSI7aToxODg7czo0NToiRW50cnkgKDYxKSBTdGFydCBQcm9jZXNzaW5nOiAyLjc2IE1CICgxLjE4OTMpIjtpOjE4OTtzOjM5OiJFbnRyeSAoNjEpIEFQSSBTdGFydHM6IDIuNzYgTUIgKDEuMTkzOCkiO2k6MTkwO3M6NDQ6IkVudHJ5ICg2MSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjc3IE1CICgxLjIwMzMpIjtpOjE5MTtzOjQ1OiJFbnRyeSAoNjIpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNzcgTUIgKDEuMjAzNikiO2k6MTkyO3M6Mzk6IkVudHJ5ICg2MikgQVBJIFN0YXJ0czogMi43NyBNQiAoMS4yMDg0KSI7aToxOTM7czo0NDoiRW50cnkgKDYyKSBDYXRlZ29yaWVzL1RhZ3M6IDIuNzggTUIgKDEuMjE3NSkiO2k6MTk0O3M6NDU6IkVudHJ5ICg2MykgU3RhcnQgUHJvY2Vzc2luZzogMi43OCBNQiAoMS4yMTc5KSI7aToxOTU7czozOToiRW50cnkgKDYzKSBBUEkgU3RhcnRzOiAyLjc4IE1CICgxLjIyMjQpIjtpOjE5NjtzOjQ0OiJFbnRyeSAoNjMpIENhdGVnb3JpZXMvVGFnczogMi44MSBNQiAoMS4yMzE3KSI7aToxOTc7czo0NDoiRW50cnkgKDY0KSBTdGFydCBQcm9jZXNzaW5nOiAyLjggTUIgKDEuMjMyMSkiO2k6MTk4O3M6Mzk6IkVudHJ5ICg2NCkgQVBJIFN0YXJ0czogMi44MSBNQiAoMS4yMzY4KSI7aToxOTk7czo0NDoiRW50cnkgKDY0KSBDYXRlZ29yaWVzL1RhZ3M6IDIuODIgTUIgKDEuMjQ2MikiO2k6MjAwO3M6NDU6IkVudHJ5ICg2NSkgU3RhcnQgUHJvY2Vzc2luZzogMi44MSBNQiAoMS4yNDY2KSI7aToyMDE7czozOToiRW50cnkgKDY1KSBBUEkgU3RhcnRzOiAyLjgyIE1CICgxLjI1MTMpIjtpOjIwMjtzOjQ0OiJFbnRyeSAoNjUpIENhdGVnb3JpZXMvVGFnczogMi44MiBNQiAoMS4yNjA0KSI7aToyMDM7czo0NToiRW50cnkgKDY2KSBTdGFydCBQcm9jZXNzaW5nOiAyLjgyIE1CICgxLjI2MTEpIjtpOjIwNDtzOjM5OiJFbnRyeSAoNjYpIEFQSSBTdGFydHM6IDIuODMgTUIgKDEuMjY3MikiO2k6MjA1O3M6NDQ6IkVudHJ5ICg2NikgQ2F0ZWdvcmllcy9UYWdzOiAyLjgzIE1CICgxLjI4NTYpIjtpOjIwNjtzOjQ1OiJFbnRyeSAoNjcpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuODMgTUIgKDEuMjg2MykiO2k6MjA3O3M6Mzk6IkVudHJ5ICg2NykgQVBJIFN0YXJ0czogMi44MyBNQiAoMS4yOTU1KSI7aToyMDg7czo0NDoiRW50cnkgKDY3KSBDYXRlZ29yaWVzL1RhZ3M6IDIuODQgTUIgKDEuMzEzNCkiO2k6MjA5O3M6NDU6IkVudHJ5ICg2OCkgU3RhcnQgUHJvY2Vzc2luZzogMi44NCBNQiAoMS4zMTQ1KSI7aToyMTA7czozOToiRW50cnkgKDY4KSBBUEkgU3RhcnRzOiAyLjg0IE1CICgxLjMyNDkpIjtpOjIxMTtzOjQ0OiJFbnRyeSAoNjgpIENhdGVnb3JpZXMvVGFnczogMi44NSBNQiAoMS4zNTc5KSI7aToyMTI7czo0NToiRW50cnkgKDY5KSBTdGFydCBQcm9jZXNzaW5nOiAyLjg1IE1CICgxLjM1ODYpIjtpOjIxMztzOjM5OiJFbnRyeSAoNjkpIEFQSSBTdGFydHM6IDIuODUgTUIgKDEuMzY3OSkiO2k6MjE0O3M6NDQ6IkVudHJ5ICg2OSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjg2IE1CICgxLjM4NjMpIjtpOjIxNTtzOjQ1OiJFbnRyeSAoNzApIFN0YXJ0IFByb2Nlc3Npbmc6IDIuODYgTUIgKDEuMzg2OSkiO2k6MjE2O3M6Mzk6IkVudHJ5ICg3MCkgQVBJIFN0YXJ0czogMi44NiBNQiAoMS4zOTYxKSI7aToyMTc7czo0NDoiRW50cnkgKDcwKSBDYXRlZ29yaWVzL1RhZ3M6IDIuODcgTUIgKDEuNDEzNCkiO2k6MjE4O3M6NDQ6IkVudHJ5ICg3MSkgU3RhcnQgUHJvY2Vzc2luZzogMi44NyBNQiAoMS40MTQpIjtpOjIxOTtzOjM5OiJFbnRyeSAoNzEpIEFQSSBTdGFydHM6IDIuODcgTUIgKDEuNDI0NykiO2k6MjIwO3M6NDQ6IkVudHJ5ICg3MSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjg4IE1CICgxLjQ0MzYpIjtpOjIyMTtzOjQ1OiJFbnRyeSAoNzIpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuODggTUIgKDEuNDQ0MykiO2k6MjIyO3M6Mzk6IkVudHJ5ICg3MikgQVBJIFN0YXJ0czogMi44OCBNQiAoMS40NjE4KSI7aToyMjM7czo0NDoiRW50cnkgKDcyKSBDYXRlZ29yaWVzL1RhZ3M6IDIuODkgTUIgKDEuNDg2NSkiO2k6MjI0O3M6NDU6IkVudHJ5ICg3MykgU3RhcnQgUHJvY2Vzc2luZzogMi44OSBNQiAoMS40ODcxKSI7aToyMjU7czozOToiRW50cnkgKDczKSBBUEkgU3RhcnRzOiAyLjg5IE1CICgxLjQ5NTkpIjtpOjIyNjtzOjQyOiJFbnRyeSAoNzMpIENhdGVnb3JpZXMvVGFnczogMi45IE1CICgxLjUxNSkiO2k6MjI3O3M6NDQ6IkVudHJ5ICg3NCkgU3RhcnQgUHJvY2Vzc2luZzogMi45IE1CICgxLjUxNTgpIjtpOjIyODtzOjM4OiJFbnRyeSAoNzQpIEFQSSBTdGFydHM6IDIuOSBNQiAoMS41MzIzKSI7aToyMjk7czo0NDoiRW50cnkgKDc0KSBDYXRlZ29yaWVzL1RhZ3M6IDIuOTEgTUIgKDEuNTU0OCkiO2k6MjMwO3M6NDU6IkVudHJ5ICg3NSkgU3RhcnQgUHJvY2Vzc2luZzogMi45MSBNQiAoMS41NTU0KSI7aToyMzE7czozOToiRW50cnkgKDc1KSBBUEkgU3RhcnRzOiAyLjkxIE1CICgxLjU2MzUpIjtpOjIzMjtzOjQ0OiJFbnRyeSAoNzUpIENhdGVnb3JpZXMvVGFnczogMi45MSBNQiAoMS41Nzk0KSI7aToyMzM7czo0NToiRW50cnkgKDc2KSBTdGFydCBQcm9jZXNzaW5nOiAyLjkxIE1CICgxLjU4MDEpIjtpOjIzNDtzOjM5OiJFbnRyeSAoNzYpIEFQSSBTdGFydHM6IDIuOTIgTUIgKDEuNTg5MikiO2k6MjM1O3M6NDM6IkVudHJ5ICg3NikgQ2F0ZWdvcmllcy9UYWdzOiAyLjkyIE1CICgxLjYwNikiO2k6MjM2O3M6NDU6IkVudHJ5ICg3NykgU3RhcnQgUHJvY2Vzc2luZzogMi45MiBNQiAoMS42MDY3KSI7aToyMzc7czozODoiRW50cnkgKDc3KSBBUEkgU3RhcnRzOiAyLjkyIE1CICgxLjYxNSkiO2k6MjM4O3M6NDQ6IkVudHJ5ICg3NykgQ2F0ZWdvcmllcy9UYWdzOiAyLjkzIE1CICgxLjYzMTYpIjtpOjIzOTtzOjQ1OiJFbnRyeSAoNzgpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuOTMgTUIgKDEuNjMyMikiO2k6MjQwO3M6Mzk6IkVudHJ5ICg3OCkgQVBJIFN0YXJ0czogMi45MyBNQiAoMS42NDA0KSI7aToyNDE7czo0NDoiRW50cnkgKDc4KSBDYXRlZ29yaWVzL1RhZ3M6IDIuOTQgTUIgKDEuNjU2NykiO2k6MjQyO3M6NDU6IkVudHJ5ICg3OSkgU3RhcnQgUHJvY2Vzc2luZzogMi45NCBNQiAoMS42NTc2KSI7aToyNDM7czozOToiRW50cnkgKDc5KSBBUEkgU3RhcnRzOiAyLjk0IE1CICgxLjY2NTcpIjtpOjI0NDtzOjQzOiJFbnRyeSAoNzkpIENhdGVnb3JpZXMvVGFnczogMi45NSBNQiAoMS42ODMpIjtpOjI0NTtzOjQ1OiJFbnRyeSAoODApIFN0YXJ0IFByb2Nlc3Npbmc6IDIuOTUgTUIgKDEuNjgzNykiO2k6MjQ2O3M6Mzk6IkVudHJ5ICg4MCkgQVBJIFN0YXJ0czogMi45NSBNQiAoMS42OTE4KSI7aToyNDc7czo0NDoiRW50cnkgKDgwKSBDYXRlZ29yaWVzL1RhZ3M6IDIuOTYgTUIgKDEuNzA4NSkiO2k6MjQ4O3M6NDU6IkVudHJ5ICg4MSkgU3RhcnQgUHJvY2Vzc2luZzogMi45NiBNQiAoMS43MDk1KSI7aToyNDk7czozOToiRW50cnkgKDgxKSBBUEkgU3RhcnRzOiAyLjk2IE1CICgxLjcxODUpIjtpOjI1MDtzOjQ0OiJFbnRyeSAoODEpIENhdGVnb3JpZXMvVGFnczogMi45NyBNQiAoMS43MzQ2KSI7aToyNTE7czo0NToiRW50cnkgKDgyKSBTdGFydCBQcm9jZXNzaW5nOiAyLjk3IE1CICgxLjczNTMpIjtpOjI1MjtzOjM5OiJFbnRyeSAoODIpIEFQSSBTdGFydHM6IDIuOTcgTUIgKDEuNzQzNykiO2k6MjUzO3M6NDQ6IkVudHJ5ICg4MikgQ2F0ZWdvcmllcy9UYWdzOiAyLjk4IE1CICgxLjc2MDYpIjtpOjI1NDtzOjQ1OiJFbnRyeSAoODMpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuOTggTUIgKDEuNzYxMykiO2k6MjU1O3M6Mzk6IkVudHJ5ICg4MykgQVBJIFN0YXJ0czogMi45OCBNQiAoMS43Njk1KSI7aToyNTY7czo0NDoiRW50cnkgKDgzKSBDYXRlZ29yaWVzL1RhZ3M6IDIuOTkgTUIgKDEuNzgzNSkiO2k6MjU3O3M6NDQ6IkVudHJ5ICg4NCkgU3RhcnQgUHJvY2Vzc2luZzogMi45OSBNQiAoMS43ODQpIjtpOjI1ODtzOjM5OiJFbnRyeSAoODQpIEFQSSBTdGFydHM6IDIuOTkgTUIgKDEuNzkxMSkiO2k6MjU5O3M6NDE6IkVudHJ5ICg4NCkgQ2F0ZWdvcmllcy9UYWdzOiAzIE1CICgxLjgwNzQpIjtpOjI2MDtzOjQyOiJFbnRyeSAoODUpIFN0YXJ0IFByb2Nlc3Npbmc6IDMgTUIgKDEuODA4NikiO2k6MjYxO3M6MzY6IkVudHJ5ICg4NSkgQVBJIFN0YXJ0czogMyBNQiAoMS44MTYxKSI7aToyNjI7czo0NDoiRW50cnkgKDg1KSBDYXRlZ29yaWVzL1RhZ3M6IDMuMDEgTUIgKDEuODMwNikiO2k6MjYzO3M6NDU6IkVudHJ5ICg4NikgU3RhcnQgUHJvY2Vzc2luZzogMy4wMSBNQiAoMS44MzEzKSI7aToyNjQ7czozOToiRW50cnkgKDg2KSBBUEkgU3RhcnRzOiAzLjAxIE1CICgxLjgzODYpIjtpOjI2NTtzOjQzOiJFbnRyeSAoODYpIENhdGVnb3JpZXMvVGFnczogMy4wMiBNQiAoMS44NTMpIjtpOjI2NjtzOjQ1OiJFbnRyeSAoODcpIFN0YXJ0IFByb2Nlc3Npbmc6IDMuMDIgTUIgKDEuODUzNikiO2k6MjY3O3M6Mzk6IkVudHJ5ICg4NykgQVBJIFN0YXJ0czogMy4wMiBNQiAoMS44NjA3KSI7aToyNjg7czo0NDoiRW50cnkgKDg3KSBDYXRlZ29yaWVzL1RhZ3M6IDMuMDMgTUIgKDEuODc0OSkiO2k6MjY5O3M6NDU6IkVudHJ5ICg4OCkgU3RhcnQgUHJvY2Vzc2luZzogMy4wMiBNQiAoMS44NzU1KSI7aToyNzA7czozOToiRW50cnkgKDg4KSBBUEkgU3RhcnRzOiAzLjAzIE1CICgxLjg4MzMpIjtpOjI3MTtzOjQ0OiJFbnRyeSAoODgpIENhdGVnb3JpZXMvVGFnczogMy4wMyBNQiAoMS44OTgyKSI7aToyNzI7czo0NToiRW50cnkgKDg5KSBTdGFydCBQcm9jZXNzaW5nOiAzLjAzIE1CICgxLjg5ODkpIjtpOjI3MztzOjM5OiJFbnRyeSAoODkpIEFQSSBTdGFydHM6IDMuMDMgTUIgKDEuOTA2NykiO2k6Mjc0O3M6NDQ6IkVudHJ5ICg4OSkgQ2F0ZWdvcmllcy9UYWdzOiAzLjA0IE1CICgxLjkyMTYpIjtpOjI3NTtzOjQ1OiJFbnRyeSAoOTApIFN0YXJ0IFByb2Nlc3Npbmc6IDMuMDQgTUIgKDEuOTIyMSkiO2k6Mjc2O3M6Mzk6IkVudHJ5ICg5MCkgQVBJIFN0YXJ0czogMy4wNCBNQiAoMS45MjkyKSI7aToyNzc7czo0NDoiRW50cnkgKDkwKSBDYXRlZ29yaWVzL1RhZ3M6IDMuMDUgTUIgKDEuOTQ4MikiO2k6Mjc4O3M6NDU6IkVudHJ5ICg5MSkgU3RhcnQgUHJvY2Vzc2luZzogMy4wNSBNQiAoMS45NDg4KSI7aToyNzk7czozOToiRW50cnkgKDkxKSBBUEkgU3RhcnRzOiAzLjA1IE1CICgxLjk1NzEpIjtpOjI4MDtzOjQ0OiJFbnRyeSAoOTEpIENhdGVnb3JpZXMvVGFnczogMy4wNiBNQiAoMS45NzE3KSI7aToyODE7czo0NToiRW50cnkgKDkyKSBTdGFydCBQcm9jZXNzaW5nOiAzLjA2IE1CICgxLjk3MjMpIjtpOjI4MjtzOjM5OiJFbnRyeSAoOTIpIEFQSSBTdGFydHM6IDMuMDYgTUIgKDEuOTc5MykiO2k6MjgzO3M6NDQ6IkVudHJ5ICg5MikgQ2F0ZWdvcmllcy9UYWdzOiAzLjA3IE1CICgxLjk5MzYpIjtpOjI4NDtzOjQ1OiJFbnRyeSAoOTMpIFN0YXJ0IFByb2Nlc3Npbmc6IDMuMDcgTUIgKDEuOTk0MikiO2k6Mjg1O3M6Mzk6IkVudHJ5ICg5MykgQVBJIFN0YXJ0czogMy4wNyBNQiAoMi4wMDE3KSI7aToyODY7czo0NDoiRW50cnkgKDkzKSBDYXRlZ29yaWVzL1RhZ3M6IDMuMDggTUIgKDIuMDE2NikiO2k6Mjg3O3M6NDU6IkVudHJ5ICg5NCkgU3RhcnQgUHJvY2Vzc2luZzogMy4wOCBNQiAoMi4wMTczKSI7aToyODg7czozOToiRW50cnkgKDk0KSBBUEkgU3RhcnRzOiAzLjA4IE1CICgyLjAyNDcpIjtpOjI4OTtzOjQ0OiJFbnRyeSAoOTQpIENhdGVnb3JpZXMvVGFnczogMy4wOSBNQiAoMi4wMzk0KSI7aToyOTA7czo0MzoiRW50cnkgKDk1KSBTdGFydCBQcm9jZXNzaW5nOiAzLjA5IE1CICgyLjA0KSI7aToyOTE7czozOToiRW50cnkgKDk1KSBBUEkgU3RhcnRzOiAzLjA5IE1CICgyLjA0NzIpIjtpOjI5MjtzOjQzOiJFbnRyeSAoOTUpIENhdGVnb3JpZXMvVGFnczogMy4xIE1CICgyLjA2MTQpIjtpOjI5MztzOjQ0OiJFbnRyeSAoOTYpIFN0YXJ0IFByb2Nlc3Npbmc6IDMuMSBNQiAoMi4wNjE5KSI7aToyOTQ7czozODoiRW50cnkgKDk2KSBBUEkgU3RhcnRzOiAzLjEgTUIgKDIuMDY4OSkiO2k6Mjk1O3M6NDQ6IkVudHJ5ICg5NikgQ2F0ZWdvcmllcy9UYWdzOiAzLjExIE1CICgyLjA4MzgpIjtpOjI5NjtzOjQ1OiJFbnRyeSAoOTcpIFN0YXJ0IFByb2Nlc3Npbmc6IDMuMTEgTUIgKDIuMDg0NCkiO2k6Mjk3O3M6Mzg6IkVudHJ5ICg5NykgQVBJIFN0YXJ0czogMy4xMSBNQiAoMi4wOTIpIjtpOjI5ODtzOjQ0OiJFbnRyeSAoOTcpIENhdGVnb3JpZXMvVGFnczogMy4xMiBNQiAoMi4xMDc4KSI7aToyOTk7czo0NToiRW50cnkgKDk4KSBTdGFydCBQcm9jZXNzaW5nOiAzLjExIE1CICgyLjEwODQpIjtpOjMwMDtzOjM5OiJFbnRyeSAoOTgpIEFQSSBTdGFydHM6IDMuMTIgTUIgKDIuMTE1OCkiO2k6MzAxO3M6NDQ6IkVudHJ5ICg5OCkgQ2F0ZWdvcmllcy9UYWdzOiAzLjEyIE1CICgyLjEzMDUpIjtpOjMwMjtzOjQ1OiJFbnRyeSAoOTkpIFN0YXJ0IFByb2Nlc3Npbmc6IDMuMTIgTUIgKDIuMTMxMykiO2k6MzAzO3M6Mzk6IkVudHJ5ICg5OSkgQVBJIFN0YXJ0czogMy4xMyBNQiAoMi4xMzgzKSI7aTozMDQ7czo0NDoiRW50cnkgKDk5KSBDYXRlZ29yaWVzL1RhZ3M6IDMuMTMgTUIgKDIuMTUzNCkiO2k6MzA1O3M6Mzc6IkVudHJ5IExvb3AgRmluaXNoZWQ6IDMuMTIgTUIgKDIuMTU0MSkiO2k6MzA2O3M6NDE6IlBlcmZvcm0gSW1wb3J0IEZpbmlzaGVkOiAzLjEyIE1CICgyLjE1NDgpIjtpOjMwNztzOjM0OiJMb2FkIEFQSSAtIFNUQVJUOiAxLjc2IE1CICgwLjAwMDIpIjtpOjMwODtzOjMyOiJMb2FkIEFQSSAtIEVORDogMS44MSBNQiAoMC4wMDEzKSI7aTozMDk7czo0NDoiRW50cnkgKDApIFN0YXJ0IFByb2Nlc3Npbmc6IDEuODIgTUIgKDAuMDAxNSkiO2k6MzEwO3M6Mzg6IkVudHJ5ICgwKSBBUEkgU3RhcnRzOiAxLjg0IE1CICgwLjAxMTEpIjtpOjMxMTtzOjQzOiJFbnRyeSAoMCkgQ2F0ZWdvcmllcy9UYWdzOiAyLjI4IE1CICgwLjAzMDQpIjtpOjMxMjtzOjQzOiJFbnRyeSAoMSkgU3RhcnQgUHJvY2Vzc2luZzogMi4yOCBNQiAoMC4wMzEpIjtpOjMxMztzOjM3OiJFbnRyeSAoMSkgQVBJIFN0YXJ0czogMi4yOCBNQiAoMC4wMzgpIjtpOjMxNDtzOjQzOiJFbnRyeSAoMSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjI5IE1CICgwLjA1NTQpIjtpOjMxNTtzOjQ0OiJFbnRyeSAoMikgU3RhcnQgUHJvY2Vzc2luZzogMi4yOSBNQiAoMC4wNTY1KSI7aTozMTY7czozODoiRW50cnkgKDIpIEFQSSBTdGFydHM6IDIuMjkgTUIgKDAuMDY0MSkiO2k6MzE3O3M6NDE6IkVudHJ5ICgyKSBDYXRlZ29yaWVzL1RhZ3M6IDIuMyBNQiAoMC4wNzgpIjtpOjMxODtzOjQzOiJFbnRyeSAoMykgU3RhcnQgUHJvY2Vzc2luZzogMi4zIE1CICgwLjA3ODYpIjtpOjMxOTtzOjM2OiJFbnRyeSAoMykgQVBJIFN0YXJ0czogMi4zIE1CICgwLjA4NikiO2k6MzIwO3M6NDA6IkVudHJ5ICgzKSBDYXRlZ29yaWVzL1RhZ3M6IDIuMzEgTUIgKDAuMSkiO2k6MzIxO3M6NDQ6IkVudHJ5ICg0KSBTdGFydCBQcm9jZXNzaW5nOiAyLjMxIE1CICgwLjEwMDkpIjtpOjMyMjtzOjM4OiJFbnRyeSAoNCkgQVBJIFN0YXJ0czogMi4zMSBNQiAoMC4xMTA3KSI7aTozMjM7czo0MzoiRW50cnkgKDQpIENhdGVnb3JpZXMvVGFnczogMi4zMiBNQiAoMC4xMjk3KSI7aTozMjQ7czo0NDoiRW50cnkgKDUpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuMzIgTUIgKDAuMTMwNCkiO2k6MzI1O3M6Mzg6IkVudHJ5ICg1KSBBUEkgU3RhcnRzOiAyLjMyIE1CICgwLjEzOTkpIjtpOjMyNjtzOjQyOiJFbnRyeSAoNSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjMzIE1CICgwLjE1OSkiO2k6MzI3O3M6NDQ6IkVudHJ5ICg2KSBTdGFydCBQcm9jZXNzaW5nOiAyLjMzIE1CICgwLjE1OTcpIjtpOjMyODtzOjM4OiJFbnRyeSAoNikgQVBJIFN0YXJ0czogMi4zMyBNQiAoMC4xNjk1KSI7aTozMjk7czo0MzoiRW50cnkgKDYpIENhdGVnb3JpZXMvVGFnczogMi4zNCBNQiAoMC4xODc2KSI7aTozMzA7czo0NDoiRW50cnkgKDcpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuMzQgTUIgKDAuMTg4NCkiO2k6MzMxO3M6Mzg6IkVudHJ5ICg3KSBBUEkgU3RhcnRzOiAyLjM0IE1CICgwLjE5ODYpIjtpOjMzMjtzOjQyOiJFbnRyeSAoNykgQ2F0ZWdvcmllcy9UYWdzOiAyLjM1IE1CICgwLjIxNykiO2k6MzMzO3M6NDQ6IkVudHJ5ICg4KSBTdGFydCBQcm9jZXNzaW5nOiAyLjM1IE1CICgwLjIxNzgpIjtpOjMzNDtzOjM4OiJFbnRyeSAoOCkgQVBJIFN0YXJ0czogMi4zNSBNQiAoMC4yMjc1KSI7aTozMzU7czo0MzoiRW50cnkgKDgpIENhdGVnb3JpZXMvVGFnczogMi4zNiBNQiAoMC4yNDU2KSI7aTozMzY7czo0NDoiRW50cnkgKDkpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuMzYgTUIgKDAuMjQ2NCkiO2k6MzM3O3M6Mzg6IkVudHJ5ICg5KSBBUEkgU3RhcnRzOiAyLjM2IE1CICgwLjI1NTgpIjtpOjMzODtzOjQzOiJFbnRyeSAoOSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjM2IE1CICgwLjI3NDMpIjtpOjMzOTtzOjQ0OiJFbnRyeSAoMTApIFN0YXJ0IFByb2Nlc3Npbmc6IDIuMzYgTUIgKDAuMjc1KSI7aTozNDA7czozOToiRW50cnkgKDEwKSBBUEkgU3RhcnRzOiAyLjM3IE1CICgwLjI4ODkpIjtpOjM0MTtzOjQ0OiJFbnRyeSAoMTApIENhdGVnb3JpZXMvVGFnczogMi4zNyBNQiAoMC4zMTM5KSI7aTozNDI7czo0NToiRW50cnkgKDExKSBTdGFydCBQcm9jZXNzaW5nOiAyLjM3IE1CICgwLjMxNDcpIjtpOjM0MztzOjM5OiJFbnRyeSAoMTEpIEFQSSBTdGFydHM6IDIuMzcgTUIgKDAuMzI0MikiO2k6MzQ0O3M6NDQ6IkVudHJ5ICgxMSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjM4IE1CICgwLjM0MjgpIjtpOjM0NTtzOjQ1OiJFbnRyeSAoMTIpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuMzggTUIgKDAuMzQzNikiO2k6MzQ2O3M6Mzk6IkVudHJ5ICgxMikgQVBJIFN0YXJ0czogMi4zOCBNQiAoMC4zNTI5KSI7aTozNDc7czo0NDoiRW50cnkgKDEyKSBDYXRlZ29yaWVzL1RhZ3M6IDIuMzkgTUIgKDAuMzcxNSkiO2k6MzQ4O3M6NDU6IkVudHJ5ICgxMykgU3RhcnQgUHJvY2Vzc2luZzogMi4zOSBNQiAoMC4zNzIzKSI7aTozNDk7czozOToiRW50cnkgKDEzKSBBUEkgU3RhcnRzOiAyLjM5IE1CICgwLjM4MTkpIjtpOjM1MDtzOjQzOiJFbnRyeSAoMTMpIENhdGVnb3JpZXMvVGFnczogMi40IE1CICgwLjM5OTMpIjtpOjM1MTtzOjQ0OiJFbnRyeSAoMTQpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNCBNQiAoMC40MDAxKSI7aTozNTI7czozODoiRW50cnkgKDE0KSBBUEkgU3RhcnRzOiAyLjQgTUIgKDAuNDA5OCkiO2k6MzUzO3M6NDQ6IkVudHJ5ICgxNCkgQ2F0ZWdvcmllcy9UYWdzOiAyLjQxIE1CICgwLjQyODEpIjtpOjM1NDtzOjQ1OiJFbnRyeSAoMTUpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNDEgTUIgKDAuNDI4OSkiO2k6MzU1O3M6Mzk6IkVudHJ5ICgxNSkgQVBJIFN0YXJ0czogMi40MSBNQiAoMC40MzgyKSI7aTozNTY7czo0NDoiRW50cnkgKDE1KSBDYXRlZ29yaWVzL1RhZ3M6IDIuNDIgTUIgKDAuNDU3MSkiO2k6MzU3O3M6NDU6IkVudHJ5ICgxNikgU3RhcnQgUHJvY2Vzc2luZzogMi40MiBNQiAoMC40NTc5KSI7aTozNTg7czozOToiRW50cnkgKDE2KSBBUEkgU3RhcnRzOiAyLjQyIE1CICgwLjQ2NzYpIjtpOjM1OTtzOjQ0OiJFbnRyeSAoMTYpIENhdGVnb3JpZXMvVGFnczogMi40MyBNQiAoMC40ODU5KSI7aTozNjA7czo0NToiRW50cnkgKDE3KSBTdGFydCBQcm9jZXNzaW5nOiAyLjQzIE1CICgwLjQ4NjcpIjtpOjM2MTtzOjM5OiJFbnRyeSAoMTcpIEFQSSBTdGFydHM6IDIuNDMgTUIgKDAuNDk2MSkiO2k6MzYyO3M6NDQ6IkVudHJ5ICgxNykgQ2F0ZWdvcmllcy9UYWdzOiAyLjQ0IE1CICgwLjUxNDYpIjtpOjM2MztzOjQ1OiJFbnRyeSAoMTgpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNDQgTUIgKDAuNTE1NCkiO2k6MzY0O3M6Mzk6IkVudHJ5ICgxOCkgQVBJIFN0YXJ0czogMi40NCBNQiAoMC41MjYyKSI7aTozNjU7czo0NDoiRW50cnkgKDE4KSBDYXRlZ29yaWVzL1RhZ3M6IDIuNDUgTUIgKDAuNTQ1OSkiO2k6MzY2O3M6NDU6IkVudHJ5ICgxOSkgU3RhcnQgUHJvY2Vzc2luZzogMi40NSBNQiAoMC41NDY2KSI7aTozNjc7czozOToiRW50cnkgKDE5KSBBUEkgU3RhcnRzOiAyLjQ1IE1CICgwLjU1NjEpIjtpOjM2ODtzOjQ0OiJFbnRyeSAoMTkpIENhdGVnb3JpZXMvVGFnczogMi40NiBNQiAoMC41NzU3KSI7aTozNjk7czo0NToiRW50cnkgKDIwKSBTdGFydCBQcm9jZXNzaW5nOiAyLjQ2IE1CICgwLjU3NjQpIjtpOjM3MDtzOjM5OiJFbnRyeSAoMjApIEFQSSBTdGFydHM6IDIuNDYgTUIgKDAuNTg1OCkiO2k6MzcxO3M6NDQ6IkVudHJ5ICgyMCkgQ2F0ZWdvcmllcy9UYWdzOiAyLjQ3IE1CICgwLjYwMjEpIjtpOjM3MjtzOjQ1OiJFbnRyeSAoMjEpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNDcgTUIgKDAuNjAyNCkiO2k6MzczO3M6Mzk6IkVudHJ5ICgyMSkgQVBJIFN0YXJ0czogMi40NyBNQiAoMC42MDY4KSI7aTozNzQ7czo0NDoiRW50cnkgKDIxKSBDYXRlZ29yaWVzL1RhZ3M6IDIuNDggTUIgKDAuNjE1NikiO2k6Mzc1O3M6NDU6IkVudHJ5ICgyMikgU3RhcnQgUHJvY2Vzc2luZzogMi40OCBNQiAoMC42MTU5KSI7aTozNzY7czozOToiRW50cnkgKDIyKSBBUEkgU3RhcnRzOiAyLjQ4IE1CICgwLjYyMDIpIjtpOjM3NztzOjQ0OiJFbnRyeSAoMjIpIENhdGVnb3JpZXMvVGFnczogMi40OSBNQiAoMC42Mjg2KSI7aTozNzg7czo0NToiRW50cnkgKDIzKSBTdGFydCBQcm9jZXNzaW5nOiAyLjQ5IE1CICgwLjYyODkpIjtpOjM3OTtzOjM5OiJFbnRyeSAoMjMpIEFQSSBTdGFydHM6IDIuNDkgTUIgKDAuNjMzMykiO2k6MzgwO3M6NDM6IkVudHJ5ICgyMykgQ2F0ZWdvcmllcy9UYWdzOiAyLjUgTUIgKDAuNjQxOSkiO2k6MzgxO3M6NDQ6IkVudHJ5ICgyNCkgU3RhcnQgUHJvY2Vzc2luZzogMi41IE1CICgwLjY0MjIpIjtpOjM4MjtzOjM4OiJFbnRyeSAoMjQpIEFQSSBTdGFydHM6IDIuNSBNQiAoMC42NDY1KSI7aTozODM7czo0NDoiRW50cnkgKDI0KSBDYXRlZ29yaWVzL1RhZ3M6IDIuNTEgTUIgKDAuNjU0OSkiO2k6Mzg0O3M6NDQ6IkVudHJ5ICgyNSkgU3RhcnQgUHJvY2Vzc2luZzogMi41IE1CICgwLjY1NTIpIjtpOjM4NTtzOjM5OiJFbnRyeSAoMjUpIEFQSSBTdGFydHM6IDIuNTEgTUIgKDAuNjU5NSkiO2k6Mzg2O3M6NDQ6IkVudHJ5ICgyNSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjUxIE1CICgwLjY2NzgpIjtpOjM4NztzOjQ1OiJFbnRyeSAoMjYpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNTEgTUIgKDAuNjY4MikiO2k6Mzg4O3M6Mzk6IkVudHJ5ICgyNikgQVBJIFN0YXJ0czogMi41MiBNQiAoMC42NzI2KSI7aTozODk7czo0NDoiRW50cnkgKDI2KSBDYXRlZ29yaWVzL1RhZ3M6IDIuNTIgTUIgKDAuNjgxNykiO2k6MzkwO3M6NDQ6IkVudHJ5ICgyNykgU3RhcnQgUHJvY2Vzc2luZzogMi41MiBNQiAoMC42ODIpIjtpOjM5MTtzOjM5OiJFbnRyeSAoMjcpIEFQSSBTdGFydHM6IDIuNTIgTUIgKDAuNjg2NCkiO2k6MzkyO3M6NDM6IkVudHJ5ICgyNykgQ2F0ZWdvcmllcy9UYWdzOiAyLjUzIE1CICgwLjY5NSkiO2k6MzkzO3M6NDU6IkVudHJ5ICgyOCkgU3RhcnQgUHJvY2Vzc2luZzogMi41MyBNQiAoMC42OTU0KSI7aTozOTQ7czozOToiRW50cnkgKDI4KSBBUEkgU3RhcnRzOiAyLjUzIE1CICgwLjY5OTkpIjtpOjM5NTtzOjQ0OiJFbnRyeSAoMjgpIENhdGVnb3JpZXMvVGFnczogMi41NCBNQiAoMC43MDg2KSI7aTozOTY7czo0NDoiRW50cnkgKDI5KSBTdGFydCBQcm9jZXNzaW5nOiAyLjU0IE1CICgwLjcwOSkiO2k6Mzk3O3M6Mzk6IkVudHJ5ICgyOSkgQVBJIFN0YXJ0czogMi41NCBNQiAoMC43MTMzKSI7aTozOTg7czo0NDoiRW50cnkgKDI5KSBDYXRlZ29yaWVzL1RhZ3M6IDIuNTUgTUIgKDAuNzIyNCkiO2k6Mzk5O3M6NDU6IkVudHJ5ICgzMCkgU3RhcnQgUHJvY2Vzc2luZzogMi41NSBNQiAoMC43MjI4KSI7aTo0MDA7czozOToiRW50cnkgKDMwKSBBUEkgU3RhcnRzOiAyLjU1IE1CICgwLjcyNzEpIjtpOjQwMTtzOjQ0OiJFbnRyeSAoMzApIENhdGVnb3JpZXMvVGFnczogMi41NiBNQiAoMC43MzU5KSI7aTo0MDI7czo0NToiRW50cnkgKDMxKSBTdGFydCBQcm9jZXNzaW5nOiAyLjU2IE1CICgwLjczNjMpIjtpOjQwMztzOjM5OiJFbnRyeSAoMzEpIEFQSSBTdGFydHM6IDIuNTYgTUIgKDAuNzQwNikiO2k6NDA0O3M6NDQ6IkVudHJ5ICgzMSkgQ2F0ZWdvcmllcy9UYWdzOiAyLjU4IE1CICgwLjc0ODkpIjtpOjQwNTtzOjQ1OiJFbnRyeSAoMzIpIFN0YXJ0IFByb2Nlc3Npbmc6IDIuNTggTUIgKDAuNzQ5MykiO2k6NDA2O3M6Mzk6IkVudHJ5ICgzMikgQVBJIFN0YXJ0czogMi41OCBNQiAoMC43NTM2KSI7aTo0MDc7czo0NDoiRW50cnkgKDMyKSBDYXRlZ29yaWVzL1RhZ3M6IDIuNTkgTUIgKDAuNzYxOCkiO2k6NDA4O3M6Mzc6IkVudHJ5IExvb3AgRmluaXNoZWQ6IDIuNTggTUIgKDAuNzYyMikiO2k6NDA5O3M6NDE6IlBlcmZvcm0gSW1wb3J0IEZpbmlzaGVkOiAyLjU4IE1CICgwLjc2MjYpIjt9czo4OiJydW5fdGltZSI7czoxMzoiNy4xNzUgc2Vjb25kcyI7czoxNToiaW1wb3J0X2xvY2F0aW9uIjtzOjEzOiJDb250cm9sIFBhbmVsIjtzOjE3OiJudW1iZXJfb2ZfcXVlcmllcyI7aToyMjczO3M6MTY6ImVudHJpZXNfaW5zZXJ0ZWQiO2k6MTMzO3M6MTU6ImVudHJpZXNfdXBkYXRlZCI7aTowO3M6MTU6ImVudHJpZXNfZGVsZXRlZCI7aTowO3M6MTM6InRvdGFsX2VudHJpZXMiO2k6MTMzO3M6Nzoic2l0ZV9pZCI7czoxOiIxIjtzOjEwOiJhdXRob3JfaWRzIjthOjE6e2k6MDtzOjE6IjEiO31zOjk6ImVudHJ5X2lkcyI7YToxMzM6e2k6MDtpOjE0O2k6MTtpOjE1O2k6MjtpOjE2O2k6MztpOjE3O2k6NDtpOjE4O2k6NTtpOjE5O2k6NjtpOjIwO2k6NztpOjIxO2k6ODtpOjIyO2k6OTtpOjIzO2k6MTA7aToyNDtpOjExO2k6MjU7aToxMjtpOjI2O2k6MTM7aToyNztpOjE0O2k6Mjg7aToxNTtpOjI5O2k6MTY7aTozMDtpOjE3O2k6MzE7aToxODtpOjMyO2k6MTk7aTozMztpOjIwO2k6MzQ7aToyMTtpOjM1O2k6MjI7aTozNjtpOjIzO2k6Mzc7aToyNDtpOjM4O2k6MjU7aTozOTtpOjI2O2k6NDA7aToyNztpOjQxO2k6Mjg7aTo0MjtpOjI5O2k6NDM7aTozMDtpOjQ0O2k6MzE7aTo0NTtpOjMyO2k6NDY7aTozMztpOjQ3O2k6MzQ7aTo0ODtpOjM1O2k6NDk7aTozNjtpOjUwO2k6Mzc7aTo1MTtpOjM4O2k6NTI7aTozOTtpOjUzO2k6NDA7aTo1NDtpOjQxO2k6NTU7aTo0MjtpOjU2O2k6NDM7aTo1NztpOjQ0O2k6NTg7aTo0NTtpOjU5O2k6NDY7aTo2MDtpOjQ3O2k6NjE7aTo0ODtpOjYyO2k6NDk7aTo2MztpOjUwO2k6NjQ7aTo1MTtpOjY1O2k6NTI7aTo2NjtpOjUzO2k6Njc7aTo1NDtpOjY4O2k6NTU7aTo2OTtpOjU2O2k6NzA7aTo1NztpOjcxO2k6NTg7aTo3MjtpOjU5O2k6NzM7aTo2MDtpOjc0O2k6NjE7aTo3NTtpOjYyO2k6NzY7aTo2MztpOjc3O2k6NjQ7aTo3ODtpOjY1O2k6Nzk7aTo2NjtpOjgwO2k6Njc7aTo4MTtpOjY4O2k6ODI7aTo2OTtpOjgzO2k6NzA7aTo4NDtpOjcxO2k6ODU7aTo3MjtpOjg2O2k6NzM7aTo4NztpOjc0O2k6ODg7aTo3NTtpOjg5O2k6NzY7aTo5MDtpOjc3O2k6OTE7aTo3ODtpOjkyO2k6Nzk7aTo5MztpOjgwO2k6OTQ7aTo4MTtpOjk1O2k6ODI7aTo5NjtpOjgzO2k6OTc7aTo4NDtpOjk4O2k6ODU7aTo5OTtpOjg2O2k6MTAwO2k6ODc7aToxMDE7aTo4ODtpOjEwMjtpOjg5O2k6MTAzO2k6OTA7aToxMDQ7aTo5MTtpOjEwNTtpOjkyO2k6MTA2O2k6OTM7aToxMDc7aTo5NDtpOjEwODtpOjk1O2k6MTA5O2k6OTY7aToxMTA7aTo5NztpOjExMTtpOjk4O2k6MTEyO2k6OTk7aToxMTM7aToxMDA7aToxMTQ7aToxMDE7aToxMTU7aToxMDI7aToxMTY7aToxMDM7aToxMTc7aToxMDQ7aToxMTg7aToxMDU7aToxMTk7aToxMDY7aToxMjA7aToxMDc7aToxMjE7aToxMDg7aToxMjI7aToxMDk7aToxMjM7aToxMTA7aToxMjQ7aToxMTE7aToxMjU7aToxMTI7aToxMjY7aToxMTM7aToxMjc7aToxMTQ7aToxMjg7aToxMTU7aToxMjk7aToxMTY7aToxMzA7aToxMTc7aToxMzE7aToxMTg7aToxMzI7aToxMTk7aToxMzM7aToxMjA7aToxMzQ7aToxMjE7aToxMzU7aToxMjI7aToxMzY7aToxMjM7aToxMzc7aToxMjQ7aToxMzg7aToxMjU7aToxMzk7aToxMjY7aToxNDA7aToxMjc7aToxNDE7aToxMjg7aToxNDI7aToxMjk7aToxNDM7aToxMzA7aToxNDQ7aToxMzE7aToxNDU7aToxMzI7aToxNDY7fXM6MTg6Imluc2VydGVkX2VudHJ5X2lkcyI7YToxMzM6e2k6MDtpOjE0O2k6MTtpOjE1O2k6MjtpOjE2O2k6MztpOjE3O2k6NDtpOjE4O2k6NTtpOjE5O2k6NjtpOjIwO2k6NztpOjIxO2k6ODtpOjIyO2k6OTtpOjIzO2k6MTA7aToyNDtpOjExO2k6MjU7aToxMjtpOjI2O2k6MTM7aToyNztpOjE0O2k6Mjg7aToxNTtpOjI5O2k6MTY7aTozMDtpOjE3O2k6MzE7aToxODtpOjMyO2k6MTk7aTozMztpOjIwO2k6MzQ7aToyMTtpOjM1O2k6MjI7aTozNjtpOjIzO2k6Mzc7aToyNDtpOjM4O2k6MjU7aTozOTtpOjI2O2k6NDA7aToyNztpOjQxO2k6Mjg7aTo0MjtpOjI5O2k6NDM7aTozMDtpOjQ0O2k6MzE7aTo0NTtpOjMyO2k6NDY7aTozMztpOjQ3O2k6MzQ7aTo0ODtpOjM1O2k6NDk7aTozNjtpOjUwO2k6Mzc7aTo1MTtpOjM4O2k6NTI7aTozOTtpOjUzO2k6NDA7aTo1NDtpOjQxO2k6NTU7aTo0MjtpOjU2O2k6NDM7aTo1NztpOjQ0O2k6NTg7aTo0NTtpOjU5O2k6NDY7aTo2MDtpOjQ3O2k6NjE7aTo0ODtpOjYyO2k6NDk7aTo2MztpOjUwO2k6NjQ7aTo1MTtpOjY1O2k6NTI7aTo2NjtpOjUzO2k6Njc7aTo1NDtpOjY4O2k6NTU7aTo2OTtpOjU2O2k6NzA7aTo1NztpOjcxO2k6NTg7aTo3MjtpOjU5O2k6NzM7aTo2MDtpOjc0O2k6NjE7aTo3NTtpOjYyO2k6NzY7aTo2MztpOjc3O2k6NjQ7aTo3ODtpOjY1O2k6Nzk7aTo2NjtpOjgwO2k6Njc7aTo4MTtpOjY4O2k6ODI7aTo2OTtpOjgzO2k6NzA7aTo4NDtpOjcxO2k6ODU7aTo3MjtpOjg2O2k6NzM7aTo4NztpOjc0O2k6ODg7aTo3NTtpOjg5O2k6NzY7aTo5MDtpOjc3O2k6OTE7aTo3ODtpOjkyO2k6Nzk7aTo5MztpOjgwO2k6OTQ7aTo4MTtpOjk1O2k6ODI7aTo5NjtpOjgzO2k6OTc7aTo4NDtpOjk4O2k6ODU7aTo5OTtpOjg2O2k6MTAwO2k6ODc7aToxMDE7aTo4ODtpOjEwMjtpOjg5O2k6MTAzO2k6OTA7aToxMDQ7aTo5MTtpOjEwNTtpOjkyO2k6MTA2O2k6OTM7aToxMDc7aTo5NDtpOjEwODtpOjk1O2k6MTA5O2k6OTY7aToxMTA7aTo5NztpOjExMTtpOjk4O2k6MTEyO2k6OTk7aToxMTM7aToxMDA7aToxMTQ7aToxMDE7aToxMTU7aToxMDI7aToxMTY7aToxMDM7aToxMTc7aToxMDQ7aToxMTg7aToxMDU7aToxMTk7aToxMDY7aToxMjA7aToxMDc7aToxMjE7aToxMDg7aToxMjI7aToxMDk7aToxMjM7aToxMTA7aToxMjQ7aToxMTE7aToxMjU7aToxMTI7aToxMjY7aToxMTM7aToxMjc7aToxMTQ7aToxMjg7aToxMTU7aToxMjk7aToxMTY7aToxMzA7aToxMTc7aToxMzE7aToxMTg7aToxMzI7aToxMTk7aToxMzM7aToxMjA7aToxMzQ7aToxMjE7aToxMzU7aToxMjI7aToxMzY7aToxMjM7aToxMzc7aToxMjQ7aToxMzg7aToxMjU7aToxMzk7aToxMjY7aToxNDA7aToxMjc7aToxNDE7aToxMjg7aToxNDI7aToxMjk7aToxNDM7aToxMzA7aToxNDQ7aToxMzE7aToxNDU7aToxMzI7aToxNDY7fXM6MTc6InVwZGF0ZWRfZW50cnlfaWRzIjthOjA6e31zOjg6ImVuZF90aW1lIjtiOjA7fQ==', 1439593652);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_importer_profiles`
--

CREATE TABLE IF NOT EXISTS `exp_importer_profiles` (
  `profile_id` int(10) unsigned NOT NULL,
  `site_id` int(10) unsigned DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `instructions` text,
  `content_type` varchar(100) NOT NULL DEFAULT 'channel_entries',
  `datatype` varchar(255) NOT NULL DEFAULT 'xml',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `last_import` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_importer_profiles`
--

INSERT INTO `exp_importer_profiles` (`profile_id`, `site_id`, `name`, `instructions`, `content_type`, `datatype`, `hash`, `last_import`) VALUES
(5, 1, 'Caricaturas', '', 'channel_entries', 'csv', 'yTxC5fn8gZWAqTlvm0vBjdqk6V3XbfPk', 1439593652);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_importer_profile_settings`
--

CREATE TABLE IF NOT EXISTS `exp_importer_profile_settings` (
  `setting_id` int(10) unsigned NOT NULL,
  `profile_id` int(10) unsigned DEFAULT '1',
  `setting` varchar(255) NOT NULL DEFAULT '',
  `value` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_importer_profile_settings`
--

INSERT INTO `exp_importer_profile_settings` (`setting_id`, `profile_id`, `setting`, `value`) VALUES
(1, 5, 'data_source', 'filename'),
(2, 5, 'filename', '/var/www/html/caricaturas_subir.csv'),
(3, 5, 'csv_delimiter', 'comma'),
(4, 5, 'csv_encloser', '"'),
(5, 5, 'first_record_column_names', 'y'),
(6, 5, 'channel_id', '11'),
(7, 5, 'title_element', 'Nombre_de_archivo'),
(8, 5, 'default_title', ''),
(9, 5, 'url_title_element', 'Nombre_de_archivo'),
(10, 5, 'default_url_title', ''),
(11, 5, 'status_element', ''),
(12, 5, 'default_status', 'open'),
(13, 5, 'default_author', '1'),
(14, 5, 'author_element_type', 'screen_name'),
(15, 5, 'author_element', ''),
(16, 5, 'entry_date_element', ''),
(17, 5, 'default_entry_date', 'time_of_import'),
(18, 5, 'entry_date_offset', '0'),
(19, 5, 'expiration_date_element', ''),
(20, 5, 'categories_element', ''),
(21, 5, 'default_categories', ''),
(22, 5, 'new_category_group', ''),
(23, 5, 'category_delimiter', ','),
(24, 5, 'duplicate_field', ''),
(25, 5, 'duplicate_field_two', ''),
(26, 5, 'duplicate_entry_action', 'update_entry'),
(27, 5, 'duplicate_entry_category_action', 'delete_old_add_new'),
(28, 5, 'duplicate_entry_status_action', 'update_status'),
(29, 5, 'notification_emails', ''),
(30, 5, 'notification_cc', ''),
(31, 5, 'notification_subject', ''),
(32, 5, 'notification_message', ''),
(33, 5, 'notification_rules', 'disabled'),
(34, 5, 'field_id_55_element', 'Path_de_imagen'),
(35, 5, 'default_field_id_55', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_layout_publish`
--

CREATE TABLE IF NOT EXISTS `exp_layout_publish` (
  `layout_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_group` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(4) unsigned NOT NULL DEFAULT '0',
  `field_layout` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_layout_publish`
--

INSERT INTO `exp_layout_publish` (`layout_id`, `site_id`, `member_group`, `channel_id`, `field_layout`) VALUES
(1, 1, 1, 1, 'a:5:{s:7:"publish";a:16:{s:10:"_tab_label";s:7:"publish";s:5:"title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:9:"url_title";a:4:{s:7:"visible";b:1;s:8:"collapse";b:1;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:5;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:6;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:7;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:1;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:2;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:3;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:8;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:4;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:9;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:10;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:11;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:12;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}i:13;a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:4:"date";a:4:{s:10:"_tab_label";s:4:"date";s:10:"entry_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:15:"expiration_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:23:"comment_expiration_date";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:10:"categories";a:2:{s:10:"_tab_label";s:10:"categories";s:8:"category";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:7:"options";a:5:{s:10:"_tab_label";s:7:"options";s:11:"new_channel";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"status";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:6:"author";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:7:"options";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}s:5:"pages";a:3:{s:10:"_tab_label";s:5:"Pages";s:16:"pages__pages_uri";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}s:24:"pages__pages_template_id";a:4:{s:7:"visible";b:1;s:8:"collapse";b:0;s:11:"htmlbuttons";b:1;s:5:"width";s:4:"100%";}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_members`
--

CREATE TABLE IF NOT EXISTS `exp_members` (
  `member_id` int(10) unsigned NOT NULL,
  `group_id` smallint(4) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `salt` varchar(128) NOT NULL DEFAULT '',
  `unique_id` varchar(40) NOT NULL,
  `crypt_key` varchar(40) DEFAULT NULL,
  `authcode` varchar(10) DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `url` varchar(150) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `occupation` varchar(80) DEFAULT NULL,
  `interests` varchar(120) DEFAULT NULL,
  `bday_d` int(2) DEFAULT NULL,
  `bday_m` int(2) DEFAULT NULL,
  `bday_y` int(4) DEFAULT NULL,
  `aol_im` varchar(50) DEFAULT NULL,
  `yahoo_im` varchar(50) DEFAULT NULL,
  `msn_im` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `bio` text,
  `signature` text,
  `avatar_filename` varchar(120) DEFAULT NULL,
  `avatar_width` int(4) unsigned DEFAULT NULL,
  `avatar_height` int(4) unsigned DEFAULT NULL,
  `photo_filename` varchar(120) DEFAULT NULL,
  `photo_width` int(4) unsigned DEFAULT NULL,
  `photo_height` int(4) unsigned DEFAULT NULL,
  `sig_img_filename` varchar(120) DEFAULT NULL,
  `sig_img_width` int(4) unsigned DEFAULT NULL,
  `sig_img_height` int(4) unsigned DEFAULT NULL,
  `ignore_list` text,
  `private_messages` int(4) unsigned NOT NULL DEFAULT '0',
  `accept_messages` char(1) NOT NULL DEFAULT 'y',
  `last_view_bulletins` int(10) NOT NULL DEFAULT '0',
  `last_bulletin_date` int(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `join_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `total_entries` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_email_date` int(10) unsigned NOT NULL DEFAULT '0',
  `in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `accept_admin_email` char(1) NOT NULL DEFAULT 'y',
  `accept_user_email` char(1) NOT NULL DEFAULT 'y',
  `notify_by_default` char(1) NOT NULL DEFAULT 'y',
  `notify_of_pm` char(1) NOT NULL DEFAULT 'y',
  `display_avatars` char(1) NOT NULL DEFAULT 'y',
  `display_signatures` char(1) NOT NULL DEFAULT 'y',
  `parse_smileys` char(1) NOT NULL DEFAULT 'y',
  `smart_notifications` char(1) NOT NULL DEFAULT 'y',
  `language` varchar(50) NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `time_format` char(2) NOT NULL DEFAULT '12',
  `date_format` varchar(8) NOT NULL DEFAULT '%n/%j/%y',
  `include_seconds` char(1) NOT NULL DEFAULT 'n',
  `cp_theme` varchar(32) DEFAULT NULL,
  `profile_theme` varchar(32) DEFAULT NULL,
  `forum_theme` varchar(32) DEFAULT NULL,
  `tracker` text,
  `template_size` varchar(2) NOT NULL DEFAULT '28',
  `notepad` text,
  `notepad_size` varchar(2) NOT NULL DEFAULT '18',
  `quick_links` text,
  `quick_tabs` text,
  `show_sidebar` char(1) NOT NULL DEFAULT 'n',
  `pmember_id` int(10) NOT NULL DEFAULT '0',
  `rte_enabled` char(1) NOT NULL DEFAULT 'y',
  `rte_toolset_id` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_members`
--

INSERT INTO `exp_members` (`member_id`, `group_id`, `username`, `screen_name`, `password`, `salt`, `unique_id`, `crypt_key`, `authcode`, `email`, `url`, `location`, `occupation`, `interests`, `bday_d`, `bday_m`, `bday_y`, `aol_im`, `yahoo_im`, `msn_im`, `icq`, `bio`, `signature`, `avatar_filename`, `avatar_width`, `avatar_height`, `photo_filename`, `photo_width`, `photo_height`, `sig_img_filename`, `sig_img_width`, `sig_img_height`, `ignore_list`, `private_messages`, `accept_messages`, `last_view_bulletins`, `last_bulletin_date`, `ip_address`, `join_date`, `last_visit`, `last_activity`, `total_entries`, `total_comments`, `total_forum_topics`, `total_forum_posts`, `last_entry_date`, `last_comment_date`, `last_forum_post_date`, `last_email_date`, `in_authorlist`, `accept_admin_email`, `accept_user_email`, `notify_by_default`, `notify_of_pm`, `display_avatars`, `display_signatures`, `parse_smileys`, `smart_notifications`, `language`, `timezone`, `time_format`, `date_format`, `include_seconds`, `cp_theme`, `profile_theme`, `forum_theme`, `tracker`, `template_size`, `notepad`, `notepad_size`, `quick_links`, `quick_tabs`, `show_sidebar`, `pmember_id`, `rte_enabled`, `rte_toolset_id`) VALUES
(1, 1, 'herman.marin', 'Herman Marin', '836cb93684952dd875f2623228b75dc7a5113effc4028b355d37f1829bfd514b5bef19a3631a079d03ba1e79ce51b81b0c0e70fffe84a4a142e3250d48969fe6', 'jRvSjIG^??r8s0W}%+^3<3p?Duy3i^+8%j\\m,B_5IwnYlDe-@}{(Bc:d@I:4lF=!z|V%TK^5KUKzsX""CE$GC>CxewWiLm)kdiLr#?|Z`Evxt#U(Z\\=>(0@hz2NOMQ%q', 'aa5762c8f4ff1249bdb617401d236d2abe3a6571', '3ff9d75c54ea3f87b47bb878898026842f54f821', NULL, 'herman.marin@ayuninc.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'y', 0, 0, '190.234.12.3', 1427576162, 1441749590, 1441824939, 40, 0, 0, 0, 1440100623, 0, 0, 0, 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'english', 'America/Lima', '12', '%n/%j/%y', 'n', NULL, NULL, NULL, NULL, '28', NULL, '18', '', NULL, 'n', 0, 'y', 0),
(2, 1, 'mario.zuniga', 'Mario Zúñiga', 'cf1b93d5a9bbb143945860a0221d14d0ce2886d503a30d5d4b7b8e9be8e4980dd39224166d8690a89aedce5b7b72ac6a52ed245a7b6211488f881474695c7c1d', '&(loWv^GFg0uK!qBuGb1''DDm}uO_17TTq4mX_t]''UOSU1juE,:otQj>O)tU(<;1,8j:6`%=4}4s`E85$/EInT`s+LlJ2h}6''%%"v_3=&08`$&UmL^/YOrS$[MRQ.-!)%', '46cee8c606e9b2055d8dca3f6a2829594bdf7f8c', 'fd808c69d8141a2b4620de7af47d8854f9ab62b8', NULL, 'mario.zuniga@respeto.pe', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'y', 0, 0, '190.236.200.245', 1440029820, 1441228979, 1441319855, 5, 0, 0, 0, 1441319760, 0, 0, 0, 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'english', 'America/Lima', '12', '%n/%j/%y', 'n', NULL, NULL, NULL, NULL, '28', NULL, '18', NULL, NULL, 'n', 0, 'y', 0),
(3, 1, 'fernando.caceres', 'Fernando Cáceres', 'f2fec8ffafaade9678e9d8a418cf49f50c83b57d76f403ba18a52c8c525052bfba28380267059c10c8d4b2d73a6b5d8af041645184f418839350e64b0e81b2c4', '"?w!SZ#m*p~8Pc''CL@(4rie0cS)/{/Z@zODI%&rc|%^5qRw}Mg8XaKMho#Nq~%|v9)Oq4,,^dcp(''T)"LPw;vvLV%k,3_`*SV>_`:"aZ0G;%HbU4e~SAvyD5OFk*+g<W', '1ffa9ea81d5c117eef6dc2b70c3df9cc4da4c515', 'ee04ff58b172ddc117fcc8ea0dacc0109e5b14c4', NULL, 'fernando.caceres@respeto.pe', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'y', 0, 0, '190.236.200.245', 1440029922, 1440807364, 1441138834, 0, 0, 0, 0, 0, 0, 0, 0, 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'english', 'America/Lima', '12', '%n/%j/%y', 'n', NULL, NULL, NULL, NULL, '28', NULL, '18', NULL, NULL, 'n', 0, 'y', 0),
(4, 1, 'andres.calderon', 'Andrés Calderón', '77d88e9ad0a4f450f4f740cef61d952956e376662bd9e1d8a008b9c77619b2b95d935ceb54e6e81a3c2c190ad42f439e2ee4c0196c236b5a5a74000fa372ef25', 'm.gT#7U|+KocZZ);{$NT)k7>"j{<1cm)5E-d:j71i&d{O+gc9N8TAWI@HeHisEaNc8Q{_<8Gg!FZW[$R3ycr^.5P+~4GXX1Q.>vv''<<Se(^j.|xb:;SKli1TEHrs:SqT', '7c13a343fc6795256f609af2ad882023b084585e', '29179b3e3843e0423f06c5dc1dfffc55c55bde00', NULL, 'andres.calderon@respeto.pe', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'y', 0, 0, '190.236.200.245', 1440029962, 1440444801, 1440445368, 0, 0, 0, 0, 0, 0, 0, 0, 'n', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'english', 'America/Lima', '12', '%n/%j/%y', 'n', NULL, NULL, NULL, NULL, '28', NULL, '18', NULL, NULL, 'n', 0, 'y', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_member_bulletin_board`
--

CREATE TABLE IF NOT EXISTS `exp_member_bulletin_board` (
  `bulletin_id` int(10) unsigned NOT NULL,
  `sender_id` int(10) unsigned NOT NULL,
  `bulletin_group` int(8) unsigned NOT NULL,
  `bulletin_date` int(10) unsigned NOT NULL,
  `hash` varchar(10) NOT NULL DEFAULT '',
  `bulletin_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `bulletin_message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_member_data`
--

CREATE TABLE IF NOT EXISTS `exp_member_data` (
  `member_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_member_data`
--

INSERT INTO `exp_member_data` (`member_id`) VALUES
(1),
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_member_fields`
--

CREATE TABLE IF NOT EXISTS `exp_member_fields` (
  `m_field_id` int(4) unsigned NOT NULL,
  `m_field_name` varchar(32) NOT NULL,
  `m_field_label` varchar(50) NOT NULL,
  `m_field_description` text NOT NULL,
  `m_field_type` varchar(12) NOT NULL DEFAULT 'text',
  `m_field_list_items` text NOT NULL,
  `m_field_ta_rows` tinyint(2) DEFAULT '8',
  `m_field_maxl` smallint(3) NOT NULL,
  `m_field_width` varchar(6) NOT NULL,
  `m_field_search` char(1) NOT NULL DEFAULT 'y',
  `m_field_required` char(1) NOT NULL DEFAULT 'n',
  `m_field_public` char(1) NOT NULL DEFAULT 'y',
  `m_field_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_cp_reg` char(1) NOT NULL DEFAULT 'n',
  `m_field_fmt` char(5) NOT NULL DEFAULT 'none',
  `m_field_order` int(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_member_groups`
--

CREATE TABLE IF NOT EXISTS `exp_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_title` varchar(100) NOT NULL,
  `group_description` text NOT NULL,
  `is_locked` char(1) NOT NULL DEFAULT 'y',
  `can_view_offline_system` char(1) NOT NULL DEFAULT 'n',
  `can_view_online_system` char(1) NOT NULL DEFAULT 'y',
  `can_access_cp` char(1) NOT NULL DEFAULT 'y',
  `can_access_content` char(1) NOT NULL DEFAULT 'n',
  `can_access_publish` char(1) NOT NULL DEFAULT 'n',
  `can_access_edit` char(1) NOT NULL DEFAULT 'n',
  `can_access_files` char(1) NOT NULL DEFAULT 'n',
  `can_access_fieldtypes` char(1) NOT NULL DEFAULT 'n',
  `can_access_design` char(1) NOT NULL DEFAULT 'n',
  `can_access_addons` char(1) NOT NULL DEFAULT 'n',
  `can_access_modules` char(1) NOT NULL DEFAULT 'n',
  `can_access_extensions` char(1) NOT NULL DEFAULT 'n',
  `can_access_accessories` char(1) NOT NULL DEFAULT 'n',
  `can_access_plugins` char(1) NOT NULL DEFAULT 'n',
  `can_access_members` char(1) NOT NULL DEFAULT 'n',
  `can_access_admin` char(1) NOT NULL DEFAULT 'n',
  `can_access_sys_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_content_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_access_tools` char(1) NOT NULL DEFAULT 'n',
  `can_access_comm` char(1) NOT NULL DEFAULT 'n',
  `can_access_utilities` char(1) NOT NULL DEFAULT 'n',
  `can_access_data` char(1) NOT NULL DEFAULT 'n',
  `can_access_logs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_channels` char(1) NOT NULL DEFAULT 'n',
  `can_admin_upload_prefs` char(1) NOT NULL DEFAULT 'n',
  `can_admin_design` char(1) NOT NULL DEFAULT 'n',
  `can_admin_members` char(1) NOT NULL DEFAULT 'n',
  `can_delete_members` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_groups` char(1) NOT NULL DEFAULT 'n',
  `can_admin_mbr_templates` char(1) NOT NULL DEFAULT 'n',
  `can_ban_users` char(1) NOT NULL DEFAULT 'n',
  `can_admin_modules` char(1) NOT NULL DEFAULT 'n',
  `can_admin_templates` char(1) NOT NULL DEFAULT 'n',
  `can_edit_categories` char(1) NOT NULL DEFAULT 'n',
  `can_delete_categories` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_edit_other_entries` char(1) NOT NULL DEFAULT 'n',
  `can_assign_post_authors` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self_entries` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_entries` char(1) NOT NULL DEFAULT 'n',
  `can_view_other_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_own_comments` char(1) NOT NULL DEFAULT 'n',
  `can_edit_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_delete_all_comments` char(1) NOT NULL DEFAULT 'n',
  `can_moderate_comments` char(1) NOT NULL DEFAULT 'n',
  `can_send_email` char(1) NOT NULL DEFAULT 'n',
  `can_send_cached_email` char(1) NOT NULL DEFAULT 'n',
  `can_email_member_groups` char(1) NOT NULL DEFAULT 'n',
  `can_email_mailinglist` char(1) NOT NULL DEFAULT 'n',
  `can_email_from_profile` char(1) NOT NULL DEFAULT 'n',
  `can_view_profiles` char(1) NOT NULL DEFAULT 'n',
  `can_edit_html_buttons` char(1) NOT NULL DEFAULT 'n',
  `can_delete_self` char(1) NOT NULL DEFAULT 'n',
  `mbr_delete_notify_emails` varchar(255) DEFAULT NULL,
  `can_post_comments` char(1) NOT NULL DEFAULT 'n',
  `exclude_from_moderation` char(1) NOT NULL DEFAULT 'n',
  `can_search` char(1) NOT NULL DEFAULT 'n',
  `search_flood_control` mediumint(5) unsigned NOT NULL,
  `can_send_private_messages` char(1) NOT NULL DEFAULT 'n',
  `prv_msg_send_limit` smallint(5) unsigned NOT NULL DEFAULT '20',
  `prv_msg_storage_limit` smallint(5) unsigned NOT NULL DEFAULT '60',
  `can_attach_in_private_messages` char(1) NOT NULL DEFAULT 'n',
  `can_send_bulletins` char(1) NOT NULL DEFAULT 'n',
  `include_in_authorlist` char(1) NOT NULL DEFAULT 'n',
  `include_in_memberlist` char(1) NOT NULL DEFAULT 'y',
  `include_in_mailinglists` char(1) NOT NULL DEFAULT 'y'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_member_groups`
--

INSERT INTO `exp_member_groups` (`group_id`, `site_id`, `group_title`, `group_description`, `is_locked`, `can_view_offline_system`, `can_view_online_system`, `can_access_cp`, `can_access_content`, `can_access_publish`, `can_access_edit`, `can_access_files`, `can_access_fieldtypes`, `can_access_design`, `can_access_addons`, `can_access_modules`, `can_access_extensions`, `can_access_accessories`, `can_access_plugins`, `can_access_members`, `can_access_admin`, `can_access_sys_prefs`, `can_access_content_prefs`, `can_access_tools`, `can_access_comm`, `can_access_utilities`, `can_access_data`, `can_access_logs`, `can_admin_channels`, `can_admin_upload_prefs`, `can_admin_design`, `can_admin_members`, `can_delete_members`, `can_admin_mbr_groups`, `can_admin_mbr_templates`, `can_ban_users`, `can_admin_modules`, `can_admin_templates`, `can_edit_categories`, `can_delete_categories`, `can_view_other_entries`, `can_edit_other_entries`, `can_assign_post_authors`, `can_delete_self_entries`, `can_delete_all_entries`, `can_view_other_comments`, `can_edit_own_comments`, `can_delete_own_comments`, `can_edit_all_comments`, `can_delete_all_comments`, `can_moderate_comments`, `can_send_email`, `can_send_cached_email`, `can_email_member_groups`, `can_email_mailinglist`, `can_email_from_profile`, `can_view_profiles`, `can_edit_html_buttons`, `can_delete_self`, `mbr_delete_notify_emails`, `can_post_comments`, `exclude_from_moderation`, `can_search`, `search_flood_control`, `can_send_private_messages`, `prv_msg_send_limit`, `prv_msg_storage_limit`, `can_attach_in_private_messages`, `can_send_bulletins`, `include_in_authorlist`, `include_in_memberlist`, `include_in_mailinglists`) VALUES
(1, 1, 'Super Admins', '', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', '', 'y', 'y', 'y', 0, 'y', 20, 60, 'y', 'y', 'y', 'y', 'y'),
(2, 1, 'Banned', '', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', '', 'n', 'n', 'n', 60, 'n', 20, 60, 'n', 'n', 'n', 'n', 'n'),
(3, 1, 'Guests', '', 'y', 'n', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'n', 'n', 'n', 'n', '', 'y', 'n', 'y', 15, 'n', 20, 60, 'n', 'n', 'n', 'n', 'n'),
(4, 1, 'Pending', '', 'y', 'n', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'n', 'n', 'n', 'n', '', 'y', 'n', 'y', 15, 'n', 20, 60, 'n', 'n', 'n', 'n', 'n'),
(5, 1, 'Members', '', 'y', 'n', 'y', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'n', 'y', 'y', 'y', 'n', '', 'y', 'n', 'y', 10, 'y', 20, 60, 'y', 'n', 'n', 'y', 'y');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_member_homepage`
--

CREATE TABLE IF NOT EXISTS `exp_member_homepage` (
  `member_id` int(10) unsigned NOT NULL,
  `recent_entries` char(1) NOT NULL DEFAULT 'l',
  `recent_entries_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_comments` char(1) NOT NULL DEFAULT 'l',
  `recent_comments_order` int(3) unsigned NOT NULL DEFAULT '0',
  `recent_members` char(1) NOT NULL DEFAULT 'n',
  `recent_members_order` int(3) unsigned NOT NULL DEFAULT '0',
  `site_statistics` char(1) NOT NULL DEFAULT 'r',
  `site_statistics_order` int(3) unsigned NOT NULL DEFAULT '0',
  `member_search_form` char(1) NOT NULL DEFAULT 'n',
  `member_search_form_order` int(3) unsigned NOT NULL DEFAULT '0',
  `notepad` char(1) NOT NULL DEFAULT 'r',
  `notepad_order` int(3) unsigned NOT NULL DEFAULT '0',
  `bulletin_board` char(1) NOT NULL DEFAULT 'r',
  `bulletin_board_order` int(3) unsigned NOT NULL DEFAULT '0',
  `pmachine_news_feed` char(1) NOT NULL DEFAULT 'n',
  `pmachine_news_feed_order` int(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_member_homepage`
--

INSERT INTO `exp_member_homepage` (`member_id`, `recent_entries`, `recent_entries_order`, `recent_comments`, `recent_comments_order`, `recent_members`, `recent_members_order`, `site_statistics`, `site_statistics_order`, `member_search_form`, `member_search_form_order`, `notepad`, `notepad_order`, `bulletin_board`, `bulletin_board_order`, `pmachine_news_feed`, `pmachine_news_feed_order`) VALUES
(1, 'l', 1, 'l', 2, 'n', 0, 'r', 1, 'n', 0, 'r', 2, 'r', 0, 'l', 0),
(2, 'l', 0, 'l', 0, 'n', 0, 'r', 0, 'n', 0, 'r', 0, 'r', 0, 'n', 0),
(3, 'l', 0, 'l', 0, 'n', 0, 'r', 0, 'n', 0, 'r', 0, 'r', 0, 'n', 0),
(4, 'l', 0, 'l', 0, 'n', 0, 'r', 0, 'n', 0, 'r', 0, 'r', 0, 'n', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_member_search`
--

CREATE TABLE IF NOT EXISTS `exp_member_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `search_date` int(10) unsigned NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `fields` varchar(200) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL,
  `query` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_message_attachments`
--

CREATE TABLE IF NOT EXISTS `exp_message_attachments` (
  `attachment_id` int(10) unsigned NOT NULL,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_name` varchar(50) NOT NULL DEFAULT '',
  `attachment_hash` varchar(40) NOT NULL DEFAULT '',
  `attachment_extension` varchar(20) NOT NULL DEFAULT '',
  `attachment_location` varchar(150) NOT NULL DEFAULT '',
  `attachment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_size` int(10) unsigned NOT NULL DEFAULT '0',
  `is_temp` char(1) NOT NULL DEFAULT 'y'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_message_copies`
--

CREATE TABLE IF NOT EXISTS `exp_message_copies` (
  `copy_id` int(10) unsigned NOT NULL,
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_received` char(1) NOT NULL DEFAULT 'n',
  `message_read` char(1) NOT NULL DEFAULT 'n',
  `message_time_read` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_downloaded` char(1) NOT NULL DEFAULT 'n',
  `message_folder` int(10) unsigned NOT NULL DEFAULT '1',
  `message_authcode` varchar(10) NOT NULL DEFAULT '',
  `message_deleted` char(1) NOT NULL DEFAULT 'n',
  `message_status` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_message_data`
--

CREATE TABLE IF NOT EXISTS `exp_message_data` (
  `message_id` int(10) unsigned NOT NULL,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_date` int(10) unsigned NOT NULL DEFAULT '0',
  `message_subject` varchar(255) NOT NULL DEFAULT '',
  `message_body` text NOT NULL,
  `message_tracking` char(1) NOT NULL DEFAULT 'y',
  `message_attachments` char(1) NOT NULL DEFAULT 'n',
  `message_recipients` varchar(200) NOT NULL DEFAULT '',
  `message_cc` varchar(200) NOT NULL DEFAULT '',
  `message_hide_cc` char(1) NOT NULL DEFAULT 'n',
  `message_sent_copy` char(1) NOT NULL DEFAULT 'n',
  `total_recipients` int(5) unsigned NOT NULL DEFAULT '0',
  `message_status` varchar(25) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_message_folders`
--

CREATE TABLE IF NOT EXISTS `exp_message_folders` (
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `folder1_name` varchar(50) NOT NULL DEFAULT 'InBox',
  `folder2_name` varchar(50) NOT NULL DEFAULT 'Sent',
  `folder3_name` varchar(50) NOT NULL DEFAULT '',
  `folder4_name` varchar(50) NOT NULL DEFAULT '',
  `folder5_name` varchar(50) NOT NULL DEFAULT '',
  `folder6_name` varchar(50) NOT NULL DEFAULT '',
  `folder7_name` varchar(50) NOT NULL DEFAULT '',
  `folder8_name` varchar(50) NOT NULL DEFAULT '',
  `folder9_name` varchar(50) NOT NULL DEFAULT '',
  `folder10_name` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_message_folders`
--

INSERT INTO `exp_message_folders` (`member_id`, `folder1_name`, `folder2_name`, `folder3_name`, `folder4_name`, `folder5_name`, `folder6_name`, `folder7_name`, `folder8_name`, `folder9_name`, `folder10_name`) VALUES
(2, 'InBox', 'Sent', '', '', '', '', '', '', '', ''),
(3, 'InBox', 'Sent', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_message_listed`
--

CREATE TABLE IF NOT EXISTS `exp_message_listed` (
  `listed_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_member` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_description` varchar(100) NOT NULL DEFAULT '',
  `listed_type` varchar(10) NOT NULL DEFAULT 'blocked'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_metaweblog_api`
--

CREATE TABLE IF NOT EXISTS `exp_metaweblog_api` (
  `metaweblog_id` int(5) unsigned NOT NULL,
  `metaweblog_pref_name` varchar(80) NOT NULL DEFAULT '',
  `metaweblog_parse_type` varchar(1) NOT NULL DEFAULT 'y',
  `entry_status` varchar(50) NOT NULL DEFAULT 'NULL',
  `field_group_id` int(5) unsigned NOT NULL DEFAULT '0',
  `excerpt_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `content_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `more_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `keywords_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `upload_dir` int(5) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_metaweblog_api`
--

INSERT INTO `exp_metaweblog_api` (`metaweblog_id`, `metaweblog_pref_name`, `metaweblog_parse_type`, `entry_status`, `field_group_id`, `excerpt_field_id`, `content_field_id`, `more_field_id`, `keywords_field_id`, `upload_dir`) VALUES
(1, 'Default', 'y', 'NULL', 1, 0, 2, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_modules`
--

CREATE TABLE IF NOT EXISTS `exp_modules` (
  `module_id` int(4) unsigned NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_version` varchar(12) NOT NULL,
  `has_cp_backend` char(1) NOT NULL DEFAULT 'n',
  `has_publish_fields` char(1) NOT NULL DEFAULT 'n',
  `settings` text
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_modules`
--

INSERT INTO `exp_modules` (`module_id`, `module_name`, `module_version`, `has_cp_backend`, `has_publish_fields`, `settings`) VALUES
(1, 'Comment', '2.3.2', 'y', 'n', NULL),
(2, 'Emoticon', '2.0', 'n', 'n', NULL),
(3, 'File', '1.0.0', 'n', 'n', NULL),
(4, 'Jquery', '1.0', 'n', 'n', NULL),
(5, 'Metaweblog_api', '2.2', 'y', 'n', NULL),
(6, 'Pages', '2.2', 'y', 'y', NULL),
(7, 'Rss', '2.0', 'n', 'n', NULL),
(8, 'Referrer', '2.1.1', 'y', 'n', NULL),
(9, 'Search', '2.2.2', 'n', 'n', NULL),
(10, 'Channel', '2.0.1', 'n', 'n', NULL),
(11, 'Stats', '2.0', 'n', 'n', NULL),
(12, 'Rte', '1.0.1', 'y', 'n', NULL),
(13, 'Importer', '2.2.5', 'y', 'n', NULL),
(14, 'Channel_images', '5.4.19', 'y', 'n', NULL),
(15, 'Freeform', '4.2.2', 'y', 'n', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_module_member_groups`
--

CREATE TABLE IF NOT EXISTS `exp_module_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `module_id` mediumint(5) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_nsm_addon_settings`
--

CREATE TABLE IF NOT EXISTS `exp_nsm_addon_settings` (
  `id` int(10) unsigned NOT NULL,
  `site_id` int(5) unsigned NOT NULL DEFAULT '1',
  `addon_id` varchar(255) NOT NULL,
  `settings` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_nsm_addon_settings`
--

INSERT INTO `exp_nsm_addon_settings` (`id`, `site_id`, `addon_id`, `settings`) VALUES
(1, 1, 'nsm_htaccess_generator', '{"enabled":"1","path":["C:\\\\xampp\\\\htdocs\\\\Contribuyentes\\\\.htaccess"],"template":"# For more awesome .htaccess rules and optimisations\\n# checkout the HTML5 Boilerplate .htaccess files\\n# https:\\/\\/github.com\\/paulirish\\/html5-boilerplate\\/blob\\/master\\/.htaccess\\n\\n# Although highly unlikely, your host may have +FollowSymLinks enabled at the root level,\\n# yet disallow its addition in .htaccess; in which case, \\n# adding +FollowSymLinks will break your setup (probably a 500 error), \\n# so just remove it, and your rules should work fine.\\nOptions +FollowSymlinks\\n\\n# EE 404 page for missing pages\\nErrorDocument 404 \\/index.php\\/{ee:404}\\n\\n# Simple 404 for missing files\\n<FilesMatch \\"(\\\\.jpe?g|gif|png|bmp|css|js|flv)$\\">\\n  ErrorDocument 404 \\"File Not Found\\"\\n<\\/FilesMatch>\\n\\n# Rewriting will likely already be on, uncomment if it isnt\\n<IfModule mod_rewrite.c>\\nRewriteEngine On\\nRewriteBase \\/\\n<\\/IfModule>\\n\\n# Block access to \\"hidden\\" directories whose names begin with a period. This\\n# includes directories used by version control systems such as Subversion or Git.\\n<IfModule mod_rewrite.c>\\n  RewriteRule \\"(^|\\/)\\\\.\\" - [F]\\n<\\/IfModule>\\n\\n# remove the www - Uncomment to activate\\n<IfModule mod_rewrite.c>\\n  RewriteCond %{HTTPS} !=on\\n  RewriteCond %{HTTP_HOST} ^www\\\\.(.+)$ [NC]\\n  RewriteRule ^(.*)$ http:\\/\\/%1\\/$1 [R=301,L]\\n<\\/IfModule>\\n\\n# Remove the trailing slash to paths without an extension\\n# Uncomment to activate\\n# <IfModule mod_rewrite.c>\\n#   RewriteRule ^(.*)\\/$ \\/$1 [R=301,L]\\n# <\\/IfModule>\\n\\n# Remove index.php\\n# Uses the \\"include method\\"\\n# http:\\/\\/expressionengine.com\\/wiki\\/Remove_index.php_From_URLs\\/#Include_List_Method\\n# <IfModule mod_rewrite.c>\\nRewriteCond %{QUERY_STRING} !^(ACT=.*)$ [NC]\\nRewriteCond %{REQUEST_URI} !(\\\\.[a-zA-Z0-9]{1,5})$\\nRewriteCond %{REQUEST_FILENAME} !-f\\nRewriteCond %{REQUEST_FILENAME} !-d\\nRewriteCond %{REQUEST_URI} ^\\/Contribuyentes\\/({ee:template_groups}{ee:pages}members|P[0-9]{2,8}) [NC]\\nRewriteRule (.*) \\/Contribuyentes\\/index.php\\/$1 [L]"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_online_users`
--

CREATE TABLE IF NOT EXISTS `exp_online_users` (
  `online_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `in_forum` char(1) NOT NULL DEFAULT 'n',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `anon` char(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8790 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_online_users`
--

INSERT INTO `exp_online_users` (`online_id`, `site_id`, `member_id`, `in_forum`, `name`, `ip_address`, `date`, `anon`) VALUES
(8789, 1, 1, 'n', 'Herman Marin', '::1', 1441824970, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_pages_configuration`
--

CREATE TABLE IF NOT EXISTS `exp_pages_configuration` (
  `configuration_id` int(10) unsigned NOT NULL,
  `site_id` int(8) unsigned NOT NULL DEFAULT '1',
  `configuration_name` varchar(60) NOT NULL,
  `configuration_value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_password_lockout`
--

CREATE TABLE IF NOT EXISTS `exp_password_lockout` (
  `lockout_id` int(10) unsigned NOT NULL,
  `login_date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_password_lockout`
--

INSERT INTO `exp_password_lockout` (`lockout_id`, `login_date`, `ip_address`, `user_agent`, `username`) VALUES
(17, 1441138820, '190.41.179.86', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 'fernando.caceres'),
(16, 1440799578, '128.164.134.126', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.3', 'mario.zuniga'),
(15, 1440799573, '128.164.134.126', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.3', 'mario.zuniga'),
(14, 1440799555, '128.164.134.126', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.3', 'mario.zuniga'),
(13, 1440451585, '190.232.237.50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/600.7.12 (KHTML, like Gecko) Version/8.0.7 Safari/600.7.12', 'respetop'),
(12, 1440451578, '190.232.237.50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/600.7.12 (KHTML, like Gecko) Version/8.0.7 Safari/600.7.12', 'admin'),
(11, 1440451569, '190.232.237.50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/600.7.12 (KHTML, like Gecko) Version/8.0.7 Safari/600.7.12', 'kno_z'),
(18, 1441818973, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'admin'),
(19, 1441818974, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'admin'),
(20, 1441819357, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'admin'),
(21, 1441819358, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'admin'),
(22, 1441819513, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'admin}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_referrers`
--

CREATE TABLE IF NOT EXISTS `exp_referrers` (
  `ref_id` int(10) unsigned NOT NULL,
  `site_id` int(4) DEFAULT '1',
  `ref_from` varchar(150) DEFAULT NULL,
  `ref_to` varchar(120) DEFAULT NULL,
  `ref_ip` varchar(45) DEFAULT NULL,
  `ref_date` int(10) unsigned DEFAULT '0',
  `ref_agent` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=534 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_referrers`
--

INSERT INTO `exp_referrers` (`ref_id`, `site_id`, `ref_from`, `ref_to`, `ref_ip`, `ref_date`, `ref_agent`) VALUES
(1, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '177.42.200.62', 1427581891, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(2, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '73.191.226.23', 1427626562, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(3, 1, 'http://semalt.semalt.com/crawler.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '189.111.90.82', 1427631706, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(4, 1, 'http://semalt.semalt.com/crawler.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '189.47.76.28', 1427642179, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(5, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '201.95.198.205', 1427669229, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(6, 1, 'http://semalt.semalt.com/crawler.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '186.221.129.103', 1427752790, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(7, 1, 'http://semalt.semalt.com/crawler.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '187.33.50.94', 1427828242, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(8, 1, 'http://www.google.com', 'http://104.236.244.65/index.php', '61.160.195.10', 1427871299, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),
(9, 1, 'http://semalt.semalt.com/crawler.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '119.95.139.167', 1427878378, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(10, 1, 'http://best-seo-solution.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '181.50.193.164', 1427934390, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(11, 1, 'http://cireinnovations.com/', 'http://104.236.244.65/index.php', '144.76.30.242', 1427943667, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(12, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '174.26.58.1', 1427951242, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(13, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '41.107.8.20', 1427955843, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(14, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '189.113.197.191', 1427977496, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(15, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '213.55.107.20', 1427981319, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(16, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.40.137', 1428036300, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(17, 1, 'http://best-seo-solution.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '87.58.10.102', 1428052751, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(18, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '41.200.82.50', 1428057340, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(19, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '177.195.1.224', 1428078732, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(20, 1, 'http://best-seo-solution.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '111.119.238.70', 1428089244, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(21, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '113.210.130.40', 1428101272, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(22, 1, 'http://whois.domaintools.com/cireinnovations.com', 'http://104.236.244.65/index.php', '216.145.17.190', 1428158878, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),
(23, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '103.251.188.71', 1428227860, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(24, 1, 'http://cireinnovations.com/', 'http://104.236.244.65/index.php', '216.38.216.197', 1428228330, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_1) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782'),
(25, 1, 'http://www.cireinnovations.com/', 'http://104.236.244.65/index.php', '216.38.216.197', 1428228330, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_1) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782'),
(26, 1, 'http://best-seo-solution.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '151.24.86.101', 1428266438, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),
(27, 1, 'http://best-seo-solution.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '201.227.226.145', 1428376981, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(28, 1, 'http://www.netcraft.com/survey/', 'http://104.236.244.65/index.php', '104.131.193.178', 1428426473, 'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),
(29, 1, 'http://www.netcraft.com/survey/', 'http://104.236.244.65/index.php', '104.131.253.93', 1428430024, 'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),
(30, 1, 'http://best-seo-solution.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '79.36.202.135', 1428431042, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(31, 1, 'http://best-seo-solution.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '181.163.183.220', 1428510681, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(32, 1, 'http://best-seo-solution.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '186.71.68.154', 1428526416, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(33, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.40.137', 1428538749, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(34, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '151.77.157.180', 1428605726, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(35, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '201.17.55.60', 1428620124, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),
(36, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '125.27.76.46', 1428751865, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(37, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '203.87.162.58', 1428768489, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(38, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '197.218.64.84', 1428818784, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(39, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '179.153.71.141', 1428870307, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(40, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '178.253.232.32', 1428931579, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(41, 1, 'http://www.responsinator.com/?url=http://104.236.244.65/', 'http://104.236.244.65/index.php', '190.232.250.179', 1428946542, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(42, 1, 'http://www.responsinator.com/?url=http://104.236.244.65/', 'http://104.236.244.65/index.php', '190.232.250.179', 1428946542, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(43, 1, 'http://www.responsinator.com/?url=http://104.236.244.65/', 'http://104.236.244.65/index.php', '190.232.250.179', 1428946543, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(44, 1, 'http://www.responsinator.com/?url=http://104.236.244.65/', 'http://104.236.244.65/index.php', '190.232.250.179', 1428946543, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(45, 1, 'http://www.responsinator.com/?url=http://104.236.244.65/', 'http://104.236.244.65/index.php', '190.232.250.179', 1428946543, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(46, 1, 'http://www.responsinator.com/?url=http://104.236.244.65/', 'http://104.236.244.65/index.php', '190.232.250.179', 1428946543, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(47, 1, 'http://www.responsinator.com/?url=http://104.236.244.65/', 'http://104.236.244.65/index.php', '190.232.250.179', 1428946544, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(48, 1, 'http://www.responsinator.com/?url=http://104.236.244.65/', 'http://104.236.244.65/index.php', '190.232.250.179', 1428946544, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(49, 1, 'http://www.responsinator.com/?url=http://104.236.244.65/', 'http://104.236.244.65/index.php', '190.232.250.179', 1428946544, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(50, 1, 'http://www.responsinator.com/?url=http://104.236.244.65/', 'http://104.236.244.65/index.php', '190.232.250.179', 1428946544, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(51, 1, 'http://www.responsinator.com/?url=http://104.236.244.65/', 'http://104.236.244.65/index.php', '190.232.250.179', 1428946544, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(52, 1, 'http://www.responsinator.com/?url=104.236.244.65', 'http://104.236.244.65/index.php', '190.233.197.75', 1428956423, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(53, 1, 'http://www.responsinator.com/?url=104.236.244.65', 'http://104.236.244.65/index.php', '190.233.197.75', 1428956425, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(54, 1, 'http://www.responsinator.com/?url=104.236.244.65', 'http://104.236.244.65/index.php', '190.233.197.75', 1428956425, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(55, 1, 'http://www.responsinator.com/?url=104.236.244.65', 'http://104.236.244.65/index.php', '190.233.197.75', 1428956426, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(56, 1, 'http://www.responsinator.com/?url=104.236.244.65', 'http://104.236.244.65/index.php', '190.233.197.75', 1428956426, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(57, 1, 'http://www.responsinator.com/?url=104.236.244.65', 'http://104.236.244.65/index.php', '190.233.197.75', 1428956426, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(58, 1, 'http://www.responsinator.com/?url=104.236.244.65', 'http://104.236.244.65/index.php', '190.233.197.75', 1428956426, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(59, 1, 'http://www.responsinator.com/?url=104.236.244.65', 'http://104.236.244.65/index.php', '190.233.197.75', 1428956427, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(60, 1, 'http://www.responsinator.com/?url=104.236.244.65', 'http://104.236.244.65/index.php', '190.233.197.75', 1428956427, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(61, 1, 'http://www.responsinator.com/?url=104.236.244.65', 'http://104.236.244.65/index.php', '190.233.197.75', 1428956427, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(62, 1, 'http://www.responsinator.com/?url=104.236.244.65', 'http://104.236.244.65/index.php', '190.233.197.75', 1428956429, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(63, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '2.233.244.104', 1428998323, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(64, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '187.110.220.254', 1429017107, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(65, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031302, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(66, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031302, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(67, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031302, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(68, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031303, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(69, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031303, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(70, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031303, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(71, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031304, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(72, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031304, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(73, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031306, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(74, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031306, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(75, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031306, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(76, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031579, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(77, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031580, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(78, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031580, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(79, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031580, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(80, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031580, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(81, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031581, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(82, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031581, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(83, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031581, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(84, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031581, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(85, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031582, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(86, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429031582, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(87, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429032091, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(88, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429032091, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(89, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429032091, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(90, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429032092, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(91, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429032092, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(92, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429032092, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(93, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429032093, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(94, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429032093, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(95, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429032093, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(96, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429032093, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(97, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429032094, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(98, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033042, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(99, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033042, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(100, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033042, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(101, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033043, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(102, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033043, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(103, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033043, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(104, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033043, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(105, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033044, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(106, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033044, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(107, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033044, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(108, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033044, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(109, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033508, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(110, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033509, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(111, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033509, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(112, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033509, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(113, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033510, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(114, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033510, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(115, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033515, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(116, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033516, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(117, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033516, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(118, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033516, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(119, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429033517, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(120, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429034486, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(121, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429034486, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(122, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429034486, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(123, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429034487, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(124, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429034487, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(125, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429034487, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(126, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429034488, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(127, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429034488, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(128, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429034488, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(129, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429034488, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(130, 1, 'http://www.responsinator.com/?url=104.236.244.65/', 'http://104.236.244.65/index.php', '190.233.197.75', 1429034488, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),
(131, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.40.137', 1429043865, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(132, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '81.44.220.99', 1429046082, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(133, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '190.17.33.228', 1429066642, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(134, 1, 'http://www.cireinnovations.com', 'http://104.236.244.65/index.php', '64.79.100.24', 1429125886, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safar'),
(135, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '201.32.18.235', 1429133705, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(136, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '89.181.33.134', 1429217566, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(137, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '201.79.155.147', 1429282968, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(138, 1, 'http://whois.domaintools.com/cireinnovations.com', 'http://104.236.244.65/index.php', '216.145.5.42', 1429284735, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),
(139, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '109.242.194.60', 1429306471, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(140, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '177.37.177.246', 1429350612, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(141, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.40.137', 1429564524, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(142, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '95.253.184.76', 1429788707, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(143, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '121.54.44.95', 1429803660, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(144, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '114.79.55.229', 1429812316, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(145, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '109.100.80.193', 1429865136, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(146, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '177.169.151.16', 1429914776, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(147, 1, 'http://CIREINNOVATIONS.COM', 'http://104.236.244.65/index.php', '138.128.2.235', 1429954684, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.85 '),
(148, 1, 'http://CIREINNOVATIONS.COM', 'http://104.236.244.65/index.php', '208.167.254.223', 1429992900, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.85 '),
(149, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.40.137', 1430131839, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(150, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '188.80.239.75', 1430165190, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(151, 1, 'CIREINNOVATIONS.COM/', 'http://104.236.244.65/index.php', '104.155.44.36', 1430165667, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)'),
(152, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '91.253.42.211', 1430178662, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(153, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '2.87.81.244', 1430231343, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(154, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '80.21.130.202', 1430254857, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(155, 1, 'http://whois.domaintools.com/cireinnovations.com', 'http://104.236.244.65/index.php', '216.145.5.42', 1430410338, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),
(156, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '82.104.49.83', 1430415612, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(157, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '170.51.71.19', 1430490810, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(158, 1, 'http://www.netcraft.com/survey/', 'http://104.236.244.65/index.php', '104.131.193.72', 1430780287, 'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),
(159, 1, 'http://www.netcraft.com/survey/', 'http://104.236.244.65/index.php', '162.243.121.233', 1430781028, 'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),
(160, 1, 'CIREINNOVATIONS.COM', 'http://104.236.244.65/index.php', '216.108.227.23', 1430806192, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safa'),
(161, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '151.62.41.132', 1430878324, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(162, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.40.137', 1430892122, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(163, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '177.1.129.239', 1430959015, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(164, 1, 'http://www.cireinnovations.com', 'http://104.236.244.65/index.php', '64.79.100.41', 1430982223, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safar'),
(165, 1, 'http://www.cireinnovations.com', 'http://104.236.244.65/index.php', '64.79.100.15', 1430998040, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safar'),
(166, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '123.202.3.69', 1431004360, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(167, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '186.213.143.7', 1431285081, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(168, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '179.180.60.113', 1431331801, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(169, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '200.139.143.149', 1431343213, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(170, 1, 'http://cireinnovations.com/', 'http://104.236.244.65/index.php', '178.94.16.129', 1431361802, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(171, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '49.149.26.35', 1431391466, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(172, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '138.75.214.255', 1431397429, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(173, 1, 'http://cireinnovations.com/', 'http://104.236.244.65/index.php', '62.173.145.229', 1431399138, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(174, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.40.137', 1431450416, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(175, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '184.151.63.202', 1431476382, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(176, 1, 'http://whois.domaintools.com/cireinnovations.com', 'http://104.236.244.65/index.php', '64.246.161.190', 1431548048, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),
(177, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '187.14.119.211', 1431611210, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(178, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '197.249.237.47', 1431617001, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(179, 1, 'http://best-seo-report.com', 'http://104.236.244.65/index.php', '107.172.9.125', 1431757317, 'Mozilla/4.0 (compatible; Synapse)'),
(180, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '79.24.24.38', 1431851416, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),
(181, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '201.93.237.129', 1431860611, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(182, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '177.17.227.158', 1431905250, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(183, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '173.238.72.63', 1431913462, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(184, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.40.137', 1432023958, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(185, 1, 'http://cireinnovations.com/', 'http://104.236.244.65/index.php', '46.119.113.60', 1432032576, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),
(186, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '41.82.176.138', 1432060590, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(187, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '210.1.81.194', 1432088904, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(188, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '196.216.57.10', 1432111840, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(189, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '193.49.247.120', 1432116955, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(190, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '177.157.60.218', 1432124766, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(191, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '179.209.236.195', 1432254181, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(192, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '93.148.208.214', 1432257489, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(193, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '187.161.83.30', 1432264358, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(194, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '189.89.166.194', 1432308842, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(195, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '201.26.21.16', 1432308986, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(196, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '177.135.9.28', 1432326741, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(197, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '114.108.221.162', 1432429662, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(198, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '82.155.124.253', 1432457968, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(199, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '187.182.64.175', 1432489154, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(200, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '201.15.51.181', 1432494347, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(201, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '189.83.12.145', 1432512179, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(202, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '151.16.169.142', 1432558593, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(203, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '191.6.94.66', 1432567959, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(204, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '177.159.151.152', 1432573686, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(205, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.150.120', 1432665357, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(206, 1, 'http://whois.domaintools.com/cireinnovations.com', 'http://104.236.244.65/index.php', '64.246.165.180', 1432740135, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),
(207, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '177.220.175.29', 1432832109, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(208, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '201.196.213.126', 1432925737, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(209, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '41.254.6.12', 1432927291, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(210, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '39.42.231.238', 1432983322, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(211, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.150.120', 1433181272, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(212, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '191.250.230.160', 1433316584, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(213, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '186.221.242.1', 1433391226, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(214, 1, 'http://best-seo-offer.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '31.15.215.225', 1433408337, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(215, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '191.33.48.91', 1433454697, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),
(216, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '109.102.108.248', 1433525168, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(217, 1, 'http://www.netcraft.com/survey/', 'http://104.236.244.65/index.php', '104.131.117.12', 1433610920, 'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),
(218, 1, 'http://www.netcraft.com/survey/', 'http://104.236.244.65/index.php', '104.236.192.131', 1433613333, 'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),
(219, 1, 'http://www.netcraft.com/survey/', 'http://104.236.244.65/index.php', '104.131.56.30', 1433623841, 'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),
(220, 1, 'http://www.netcraft.com/survey/', 'http://104.236.244.65/index.php', '104.236.22.16', 1433625112, 'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),
(221, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '213.245.198.234', 1433669350, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(222, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.150.120', 1433690850, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(223, 1, 'http://best-seo-report.com', 'http://104.236.244.65/index.php', '107.172.9.125', 1433694209, 'Mozilla/4.0 (compatible; Synapse)');
INSERT INTO `exp_referrers` (`ref_id`, `site_id`, `ref_from`, `ref_to`, `ref_ip`, `ref_date`, `ref_agent`) VALUES
(224, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '189.63.190.162', 1433739782, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(225, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '87.6.66.140', 1433788960, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),
(226, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '217.162.177.35', 1433867288, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(227, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '187.66.44.192', 1433931837, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(228, 1, 'http://whois.domaintools.com/cireinnovations.com', 'http://104.236.244.65/index.php', '64.246.165.150', 1433962499, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),
(229, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '186.219.131.37', 1434050285, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(230, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '178.254.148.42', 1434111174, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(231, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.150.120', 1434231030, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(232, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '190.225.27.72', 1434247010, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(233, 1, 'http://buttons-for-your-website.com', 'http://104.236.244.65/index.php', '151.24.6.68', 1434464920, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(234, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '190.164.130.180', 1434503828, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(235, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '131.108.119.114', 1434679793, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(236, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '201.66.61.236', 1434757900, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(237, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '84.111.85.244', 1434782530, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(238, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '177.98.196.167', 1434804009, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),
(239, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.150.120', 1434846671, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(240, 1, 'http://semaltmedia.com', 'http://104.236.244.65/index.php', '27.130.19.246', 1434899781, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(241, 1, 'http://semaltmedia.com', 'http://104.236.244.65/index.php', '179.208.55.66', 1434917898, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(242, 1, 'http://semaltmedia.com', 'http://104.236.244.65/index.php', '191.200.226.210', 1434918708, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(243, 1, 'http://semaltmedia.com', 'http://104.236.244.65/index.php', '190.196.7.40', 1434980002, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(244, 1, 'http://www.cireinnovations.com', 'http://104.236.244.65/index.php', '64.79.100.13', 1435124373, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safar'),
(245, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '187.112.26.7', 1435202482, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(246, 1, 'http://whois.domaintools.com/cireinnovations.com', 'http://104.236.244.65/index.php', '64.246.165.140', 1435334894, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),
(247, 1, 'http://49990758.videos-for-your-business.com', 'http://104.236.244.65/index.php', '187.45.96.50', 1435356967, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(248, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://104.236.244.65/index.php', '192.99.150.120', 1435391144, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(249, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '152.249.77.11', 1435404477, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(250, 1, 'http://100dollars-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '201.68.17.127', 1435464892, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(251, 1, 'http://49990758.videos-for-your-business.com', 'http://104.236.244.65/index.php', '174.1.69.88', 1435471007, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(252, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '196.35.114.42', 1435672010, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(253, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '189.111.10.32', 1435690497, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(254, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '200.238.102.235', 1435718955, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(255, 1, 'http://best-seo-report.com', 'http://104.236.244.65/index.php', '23.95.245.47', 1435757267, 'Mozilla/4.0 (compatible; Synapse)'),
(256, 1, 'http://videos-for-your-business.com', 'http://104.236.244.65/index.php', '187.163.154.76', 1435761667, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(257, 1, 'http://best-seo-report.com', 'http://104.236.244.65/index.php', '107.172.9.247', 1435772397, 'Mozilla/4.0 (compatible; Synapse)'),
(258, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '201.10.57.14', 1435786764, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(259, 1, 'http://videos-for-your-business.com', 'http://104.236.244.65/index.php', '179.219.156.103', 1435845448, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(260, 1, 'http://buttons-for-website.com', 'http://104.236.244.65/index.php', '87.7.191.228', 1435869493, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(261, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://104.236.244.65/index.php', '154.70.36.23', 1439523091, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(262, 1, 'http://buttons-for-website.com', 'http://cireinnovations.com', '197.217.87.137', 1439621557, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(263, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '190.179.139.31', 1439737966, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(264, 1, 'http://video--production.com', 'http://cireinnovations.com', '191.189.204.8', 1439738417, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(265, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '186.232.174.165', 1439771390, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(266, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '187.103.216.134', 1439818044, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(267, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '95.247.109.55', 1439820134, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(268, 1, 'https://www.facebook.com/', 'http://104.236.244.65', '50.193.159.114', 1439847306, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safa'),
(269, 1, 'http://video--production.com', 'http://cireinnovations.com', '103.26.217.207', 1439920484, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(270, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '112.198.64.34', 1439945331, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(271, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '93.67.219.112', 1439965439, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(272, 1, 'http://104.236.244.65//novedades/articulo/bancos-campana-y-responsabilidad', 'http://104.236.244.65/Contribuyentes/nosotros', '190.236.100.159', 1440017413, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Saf'),
(273, 1, 'http://104.236.244.65//novedades/articulo/bancos-campana-y-responsabilidad', 'http://104.236.244.65/Contribuyentes/nosotros', '190.236.100.159', 1440017418, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Saf'),
(274, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '177.130.10.175', 1440030520, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(275, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://cireinnovations.com', '192.99.150.120', 1440033193, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(276, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '5.108.5.22', 1440072629, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),
(277, 1, 'http://whois.domaintools.com/cireinnovations.com', 'http://www.cireinnovations.com', '64.246.165.210', 1440092537, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),
(278, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.233.197.75', 1440115733, 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Vers'),
(279, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.233.197.75', 1440115933, 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Vers'),
(280, 1, 'https://www.google.com/', 'http://www.respeto.pe', '190.232.22.247', 1440118892, 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Versio'),
(281, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '179.7.83.5', 1440126053, 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Vers'),
(282, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '86.167.86.48', 1440141877, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(283, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '37.189.203.241', 1440151715, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(284, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '190.177.79.211', 1440164268, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(285, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '49.144.38.18', 1440165201, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(286, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '200.37.120.90', 1440167175, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safa'),
(287, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.234.106.94', 1440174088, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2'),
(288, 1, 'http://localhost:8181/1.html', 'http://respeto.pe', '208.78.105.17', 1440178398, 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Versi'),
(289, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.235.81.198', 1440182619, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safa'),
(290, 1, 'http://www.google.com/search', 'http://respeto.pe', '66.102.8.131', 1440199257, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview) Chrome/27'),
(291, 1, 'http://buttons-for-website.com', 'http://respeto.pe', '189.110.159.179', 1440204330, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(292, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '79.18.97.237', 1440245330, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(293, 1, 'http://buttons-for-website.com', 'http://respeto.pe', '179.236.196.57', 1440256411, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(294, 1, 'https://www.google.com.co/', 'http://www.respeto.pe', '190.14.239.131', 1440266597, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.125 Safari/537.'),
(295, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '152.92.109.15', 1440271077, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(296, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '177.65.53.35', 1440279100, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(297, 1, 'https://www.google.com/', 'http://www.respeto.pe', '172.56.30.11', 1440300786, 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) GSA'),
(298, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '49.144.238.151', 1440372542, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(299, 1, 'http://www.bing.com/search?FORM=UP97DF&PC=UP97&q=respeto', 'http://www.respeto.pe', '190.236.149.146', 1440372863, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.'),
(300, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.64.192.96', 1440388338, 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.'),
(301, 1, 'http://www.google.es/url?sa=t&rct=j&q=&esrc=s&frm=1&source=web&cd=1&ved=0CCEQFjAAahUKEwi6geCrrsHHAhWDOxoKHeH1DJk&url=http://www.respeto.pe/&ei=993aVfq', 'http://www.respeto.pe', '85.115.60.180', 1440407039, 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0)'),
(302, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '201.159.88.143', 1440419714, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(303, 1, 'http://buttons-for-website.com', 'http://respeto.pe', '191.40.82.94', 1440429048, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(304, 1, 'http://t.co/dJ5PgrBimc', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '108.28.191.203', 1440433500, 'Mozilla/5.0 (Linux; U; Android 2.3.6; en-us; SGH-T989 Build/GINGERBREAD) AppleWebKit/533.1 (KHTML, l'),
(305, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.116.9.74', 1440442315, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.'),
(306, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.116.9.74', 1440442317, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.'),
(307, 1, 'http://us5.campaign-archive2.com/?u=bd14e168fc4251f8652e5069c&id=576d667f25', 'http://respeto.pe', '190.236.100.159', 1440446261, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2'),
(308, 1, 'http://us5.campaign-archive2.com/?u=bd14e168fc4251f8652e5069c&id=576d667f25', 'http://respeto.pe', '190.236.100.159', 1440446488, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2'),
(309, 1, 'http://buttons-for-website.com', 'http://respeto.pe', '189.5.211.170', 1440449211, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(310, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.65.165.147', 1440452131, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(311, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.65.165.147', 1440452132, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(312, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '187.52.161.236', 1440453844, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(313, 1, 'http://pizza-tycoon.com/', 'http://respeto.pe', '185.65.135.226', 1440464603, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/5'),
(314, 1, 'http://t.co/dJ5PgrBimc', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '190.113.208.115', 1440470969, 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile'),
(315, 1, 'http://buttons-for-website.com', 'http://cireinnovations.com', '179.235.205.92', 1440504173, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(316, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '200.96.221.30', 1440507856, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(317, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '64.76.72.13', 1440515823, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(318, 1, 'http://www.google.com.pe/url?sa=t&rct=j&q=&esrc=s&frm=1&source=web&cd=1&sqi=2&ved=0CBsQFjAAahUKEwi4gMCG0MTHAhVHKh4KHV78AtY&url=http://www.respeto.pe/&', 'http://www.respeto.pe', '190.223.63.76', 1440519165, 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0)'),
(319, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.233.127.247', 1440520122, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(320, 1, 'http://video--production.com', 'http://respeto.pe', '191.222.169.206', 1440522489, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(321, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.116.20.10', 1440524208, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(322, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.116.20.249', 1440524208, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(323, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.116.20.249', 1440524210, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(324, 1, 'http://www.google.com.pe/', 'http://www.respeto.pe', '190.239.84.113', 1440525546, 'Mozilla/5.0 (Linux; Android 4.4.4; Nexus 5 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chro'),
(325, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '177.223.13.18', 1440543476, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(326, 1, 'http://www.bing.com/search?q=yotobe&form=MSNH14&sc=8-4&sp=-1&qs=n&sk;=', 'http://www.respeto.pe/nosotros', '192.92.196.88', 1440551794, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0;  Trident/5.0)'),
(327, 1, 'https://www.google.com.mx/', 'http://www.respeto.pe', '189.229.116.177', 1440551885, 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(328, 1, 'https://www.google.com.mx/', 'http://www.respeto.pe', '189.229.116.177', 1440551987, 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(329, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '103.3.83.159', 1440565492, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(330, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '189.76.78.244', 1440577205, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(331, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '83.58.189.255', 1440581571, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(332, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.233.138.79', 1440597237, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(333, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.233.138.79', 1440597238, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(334, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.65.251.180', 1440599521, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(335, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.65.251.180', 1440599524, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(336, 1, 'https://www.google.com.pe/', 'http://respeto.pe/costo-beneficio', '181.65.251.180', 1440599723, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(337, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.66.243.178', 1440601371, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(338, 1, 'https://www.google.es/', 'http://www.respeto.pe', '92.58.132.186', 1440601816, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(339, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '179.208.8.37', 1440604537, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(340, 1, 'https://www.google.com', 'http://www.respeto.pe', '200.0.118.173', 1440605950, 'Mozilla/5.0 (Windows NT 6.1; rv:40.0) Gecko/20100101 Firefox/40.0'),
(341, 1, 'https://www.facebook.com', 'http://www.respeto.pe', '200.0.118.173', 1440605982, 'Mozilla/5.0 (Windows NT 6.1; rv:40.0) Gecko/20100101 Firefox/40.0'),
(342, 1, 'http://l.facebook.com/lsr.php?u=http://www.respeto.pe/&ext=1440606299&hash=AcnX4ijZGuPE1DUsfEIzgwi-cs9PwjrAnyxhN7Zn_dAv9A', 'http://www.respeto.pe', '54.251.2.104', 1440606002, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/5'),
(343, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.234.106.233', 1440607570, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Saf'),
(344, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.234.106.233', 1440607711, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Saf'),
(345, 1, 'http://buttons-for-website.com', 'http://respeto.pe', '89.217.118.172', 1440609747, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(346, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '179.7.78.186', 1440612173, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(347, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.113.209.254', 1440616741, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(348, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.232.16.51', 1440622627, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(349, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.66.157.77', 1440625209, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(350, 1, 'http://www.google.com/search', 'http://www.respeto.pe', '66.102.8.173', 1440630053, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview) Chrome/27'),
(351, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://cireinnovations.com', '192.99.150.120', 1440630786, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(352, 1, 'http://www.bing.com/search?q=yotobe&form=MSNH14&sc=8-4&sp=-1&qs=n&sk;=', 'http://www.respeto.pe/nosotros', '192.92.196.121', 1440639113, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0;  Trident/5.0)'),
(353, 1, 'https://www.google.com.mx/', 'http://www.respeto.pe', '201.143.161.79', 1440641729, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(354, 1, 'https://www.google.com.mx/', 'http://www.respeto.pe', '201.143.161.79', 1440641989, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(355, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '181.66.156.145', 1440649280, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(356, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '77.29.125.15', 1440658788, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(357, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '179.7.75.35', 1440662002, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(358, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.116.13.102', 1440688860, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(359, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '114.4.77.160', 1440690268, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(360, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '201.240.215.4', 1440690279, 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(361, 1, 'https://www.google.com', 'http://www.respeto.pe', '201.230.251.28', 1440708400, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:40.0) Gecko/20100101 Firefox/40.0'),
(362, 1, 'https://www.google.com', 'http://www.respeto.pe', '201.230.251.28', 1440708404, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:40.0) Gecko/20100101 Firefox/40.0'),
(363, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '177.101.221.150', 1440711079, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(364, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '132.157.64.203', 1440713502, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(365, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '132.157.64.203', 1440713556, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(366, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '177.207.199.194', 1440715298, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(367, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.81.35.34', 1440731531, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(368, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.81.35.34', 1440731674, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(369, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.81.35.34', 1440731707, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(370, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '204.112.242.51', 1440741136, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(371, 1, 'http://buttons-for-website.com', 'http://cireinnovations.com', '197.218.82.24', 1440754499, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(372, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.64.240.226', 1440776342, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(373, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.177.248.122', 1440793576, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(374, 1, 'http://www.linkedin.com/', 'http://www.respeto.pe', '190.81.171.4', 1440803810, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(375, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '200.4.199.12', 1440808270, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(376, 1, 'http://au.search.yahoo.com/search;_ylt=AwrSbmJMLOFVwEIA1SbpQyE5?pvid=M02wLzY4LjHB63LJVKForA01MjIwLgAAAAAeOZvt&ei=UTF-8&_tsrc=apple&gprid;=&fr2=sb-bott', 'http://www.respeto.pe', '220.240.110.19', 1440820366, 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0_4 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Ver'),
(377, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '191.249.34.199', 1440847510, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(378, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '188.251.217.215', 1440852540, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(379, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '27.110.251.26', 1440860018, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(380, 1, 'http://buttons-for-website.com', 'http://cireinnovations.com', '189.74.212.227', 1440861626, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(381, 1, 'http://buttons-for-website.com', 'http://respeto.pe', '177.204.71.153', 1440865955, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(382, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '189.76.70.19', 1440866395, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(383, 1, 'http://www.bing.com/search?q=respeto&form=MSNH14&sc=8-4&sp=-1&qs=n&sk;=', 'http://www.respeto.pe', '192.92.196.87', 1440869803, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0;  Trident/5.0)'),
(384, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '201.66.45.5', 1440873730, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(385, 1, 'http://FENCEINSTALLATIONDALLAS.COM', 'http://CIREINNOVATIONS.COM', '54.233.85.252', 1440875418, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:20.0) Gecko/20100101 Firefox/20.0'),
(386, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '186.241.86.54', 1440888998, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(387, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '62.81.253.122', 1440890311, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(388, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.42.17.20', 1440902424, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(389, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '187.242.205.119', 1440979535, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(390, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.64.192.52', 1440989036, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.24'),
(391, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.232.110.7', 1440989780, 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Versi'),
(392, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.113.211.55', 1440990877, 'Mozilla/5.0 (Linux; Android 5.0.2; XT1063 Build/LXB22.99-16) AppleWebKit/537.36 (KHTML, like Gecko) '),
(393, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.113.211.55', 1440990908, 'Mozilla/5.0 (Linux; Android 5.0.2; XT1063 Build/LXB22.99-16) AppleWebKit/537.36 (KHTML, like Gecko) '),
(394, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.64.233.146', 1440994724, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(395, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '201.81.141.25', 1441016685, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(396, 1, 'http://buttons-for-website.com', 'http://respeto.pe', '103.255.182.166', 1441017462, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(397, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '208.126.4.248', 1441027099, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(398, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '201.131.221.4', 1441031220, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1833.5 Safari'),
(399, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '201.131.221.4', 1441031222, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1833.5 Safari'),
(400, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '201.131.221.4', 1441031387, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1833.5 Safari'),
(401, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe/nosotros', '201.131.221.4', 1441031703, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1833.5 Safari'),
(402, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '177.87.224.35', 1441036090, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(403, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '82.56.177.115', 1441051133, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(404, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '201.55.121.102', 1441058813, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(405, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '200.37.72.202', 1441116899, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(406, 1, 'http://www.amcham.org.pe/nosotros/socios.php', 'http://www.respeto.pe', '179.7.123.102', 1441120463, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(407, 1, 'http://www.google.com/url?q=http://www.respeto.pe/&sa=D&sntz=1&usg=AFQjCNHiv0txghKIfh5Ti935LAbqowtMEg', 'http://www.respeto.pe', '200.106.60.231', 1441121600, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safa'),
(408, 1, 'http://www.google.com/url?q=http://www.respeto.pe/&sa=D&sntz=1&usg=AFQjCNHiv0txghKIfh5Ti935LAbqowtMEg', 'http://www.respeto.pe', '200.106.60.231', 1441121615, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safa'),
(409, 1, 'http://www.google.com/url?q=http://www.respeto.pe/&sa=D&sntz=1&usg=AFQjCNHiv0txghKIfh5Ti935LAbqowtMEg', 'http://www.respeto.pe', '200.106.60.231', 1441123216, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safa'),
(410, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '200.60.223.39', 1441130981, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(411, 1, 'https://www.google.com', 'http://www.respeto.pe', '190.234.250.65', 1441140415, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:40.0) Gecko/20100101 Firefox/40.0'),
(412, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '201.81.188.227', 1441140605, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),
(413, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.64.209.110', 1441150439, 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(414, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.238.253.103', 1441151414, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Saf'),
(415, 1, 'http://domainsigma.com/whois/cireinnovations.com', 'http://cireinnovations.com', '192.99.150.120', 1441164473, 'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),
(416, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '138.59.191.2', 1441188635, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(417, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '200.101.222.53', 1441194556, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(418, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.236.97.10', 1441199039, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(419, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.236.97.10', 1441199043, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(420, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.236.97.10', 1441199053, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(421, 1, 'https://www.google.com.ar/', 'http://www.respeto.pe', '190.138.249.2', 1441199141, 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9301I Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Ch'),
(422, 1, 'https://www.google.com.ar/', 'http://www.respeto.pe', '190.138.249.2', 1441199142, 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9301I Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Ch'),
(423, 1, 'https://www.google.com.ar/', 'http://www.respeto.pe', '190.138.249.2', 1441199146, 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9301I Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Ch'),
(424, 1, 'https://www.google.com.ar/', 'http://www.respeto.pe', '190.138.249.2', 1441199152, 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9301I Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Ch'),
(425, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '84.41.63.207', 1441199794, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(426, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.239.39.233', 1441208175, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(427, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '200.48.54.13', 1441209385, 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(428, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '191.190.21.141', 1441214269, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(429, 1, 'http://buttons-for-website.com', 'http://respeto.pe', '187.109.28.105', 1441218654, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(430, 1, 'http://pizza-tycoon.com/', 'http://respeto.pe', '77.247.181.162', 1441223296, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/5'),
(431, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '200.60.117.200', 1441224161, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.3'),
(432, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.12.80.22', 1441227939, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(433, 1, 'http://l.facebook.com/lsr.php?u=http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja&ext=1441232800&hash=AcnbZVXx', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '54.207.206.244', 1441232504, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/5'),
(434, 1, 'https://www.facebook.com/', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '128.164.134.128', 1441233222, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2'),
(435, 1, 'http://www.facebook.com/Gertruda', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '91.228.167.109', 1441235386, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.3'),
(436, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.41.179.86', 1441238070, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.24'),
(437, 1, 'http://www.facebook.com/Gertruda', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '91.228.167.109', 1441239585, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.3'),
(438, 1, 'http://m.facebook.com', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '201.230.241.238', 1441240665, 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mob'),
(439, 1, 'http://www.facebook.com/Gertruda', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '91.228.167.130', 1441243891, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.3'),
(440, 1, 'http://www.facebook.com/Gertruda', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '91.228.167.109', 1441249840, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.3'),
(441, 1, 'http://www.facebook.com/Gertruda', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '91.228.167.109', 1441254011, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.3'),
(442, 1, 'http://www.facebook.com/Gertruda', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '91.228.167.130', 1441258768, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.3'),
(443, 1, 'http://www.facebook.com/Gertruda', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '91.228.167.109', 1441264107, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.3'),
(444, 1, 'http://www.bing.com', 'http://cireinnovations.com', '208.184.112.75', 1441271464, 'Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.5.307'),
(445, 1, 'http://www.facebook.com/Gertruda', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '91.228.167.109', 1441272630, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.3'),
(446, 1, 'http://www.facebook.com/Gertruda', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '91.228.167.130', 1441278604, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.3'),
(447, 1, 'https://www.google.es/', 'http://www.respeto.pe', '5.154.44.132', 1441281863, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(448, 1, 'http://www.facebook.com/Gertruda', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '91.228.167.130', 1441283507, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.3'),
(449, 1, 'http://www.facebook.com/Gertruda', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '91.228.167.130', 1441289245, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.3'),
(450, 1, 'http://respeto.pe', 'http://respeto.pe/nosotros', '45.55.232.76', 1441289860, 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),
(451, 1, 'http://respeto.pe', 'http://respeto.pe/investigacion', '45.55.232.76', 1441289860, 'Mozilla/5.0 (Windows NT 6.1; rv:28.0) Gecko/20100101 Firefox/28.0'),
(452, 1, 'http://respeto.pe', 'http://respeto.pe/novedades', '45.55.232.76', 1441289860, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),
(453, 1, 'http://respeto.pe', 'http://respeto.pe/novedades/articulo/un-impuesto-a-la-ineficiencia', '45.55.232.76', 1441289860, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safa');
INSERT INTO `exp_referrers` (`ref_id`, `site_id`, `ref_from`, `ref_to`, `ref_ip`, `ref_date`, `ref_agent`) VALUES
(454, 1, 'http://respeto.pe', 'http://respeto.pe/novedades/articulo/se-hace-camino-al-andar-no-al-desandar', '45.55.232.76', 1441289860, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safa'),
(455, 1, 'http://respeto.pe', 'http://respeto.pe/novedades/articulo/infraestructura-hora-de-los-consensos', '45.55.232.76', 1441289860, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0'),
(456, 1, 'http://respeto.pe', 'http://respeto.pe/costo-beneficio', '45.55.232.76', 1441289860, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0'),
(457, 1, 'http://t.co/dJ5PgrBimc', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '88.26.208.168', 1441292074, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(458, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '94.62.77.104', 1441292853, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(459, 1, 'http://www.facebook.com/Gertruda', 'http://respeto.pe/novedades/articulo/cigarrillo-electronico-nadie-sabe-para-quien-trabaja', '91.228.167.109', 1441293122, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.3'),
(460, 1, 'http://whois.domaintools.com/cireinnovations.com', 'http://www.cireinnovations.com', '64.246.187.42', 1441304696, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),
(461, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.41.179.86', 1441305526, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(462, 1, 'http://BATHROOMREMODELSAVE.COM', 'http://CIREINNOVATIONS.COM', '54.206.32.216', 1441311577, 'WWW-Mechanize/1.74'),
(463, 1, 'http://www.proyectosdeley.pe/about/', 'http://www.respeto.pe', '190.116.7.65', 1441315322, 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(464, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.233.215.147', 1441345261, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2'),
(465, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '88.123.49.92', 1441356455, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(466, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '179.159.92.125', 1441365582, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(467, 1, 'http://t.co/tKu9oB2ZOL', 'http://respeto.pe/novedades/articulo/se-hace-camino-al-andar-no-al-desandar', '190.237.137.12', 1441374904, 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.3'),
(468, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.41.179.86', 1441377811, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.24'),
(469, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.116.15.162', 1441378217, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(470, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.232.2.16', 1441380708, 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.'),
(471, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.233.122.132', 1441389640, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(472, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.234.91.223', 1441390014, 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.3'),
(473, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.234.91.223', 1441390016, 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.3'),
(474, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '200.121.165.7', 1441398972, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(475, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '200.121.165.7', 1441398974, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(476, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '200.4.199.12', 1441408301, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(477, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '200.4.199.12', 1441408421, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(478, 1, 'http://buttons-for-website.com', 'http://respeto.pe', '179.108.55.141', 1441457403, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(479, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '177.53.80.2', 1441464586, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(480, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.238.29.68', 1441522827, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(481, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '122.168.20.5', 1441527989, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(482, 1, 'http://www.netcraft.com/survey/', 'http://www.respeto.pe', '45.55.60.70', 1441559030, 'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),
(483, 1, 'http://www.netcraft.com/survey/', 'http://fms.cireinnovations.com', '45.55.43.244', 1441561215, 'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),
(484, 1, 'http://www.netcraft.com/survey/', 'http://respeto.pe', '45.55.45.194', 1441563663, 'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),
(485, 1, 'http://www.google.com/url?sa=t&rct=j&q=www.respeto.pe&source=web&cd=5&ved=0CF0QFjAE&url=http://www.respeto.pe/&cad=rja', 'http://www.respeto.pe', '78.158.11.226', 1441564418, 'Lynx/2.8.5rel.1 libwww-FM/2.15FC SSL-MM/1.4.1c OpenSSL/0.9.7e-dev'),
(486, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '109.64.122.196', 1441603068, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(487, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.233.197.37', 1441608807, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safa'),
(488, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '84.236.226.151', 1441611735, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(489, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '110.137.69.98', 1441612071, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(490, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.64.192.17', 1441616774, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.24'),
(491, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.64.192.17', 1441616775, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.24'),
(492, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.64.192.17', 1441616791, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.24'),
(493, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '189.15.203.18', 1441628125, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(494, 1, 'http://t.co/pHBfiBKvL4', 'http://www.respeto.pe', '186.31.145.14', 1441632324, 'Mozilla/5.0 (Linux; U; Android 4.3; es-us; HUAWEI G6-L33 Build/HuaweiG6-L33) AppleWebKit/534.30 (KHT'),
(495, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.117.194.80', 1441636812, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(496, 1, 'http://www.bing.com/search?q=respeto&src=IE-SearchBox&Form=IE8SRC', 'http://www.respeto.pe', '190.102.144.150', 1441637724, 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.5072'),
(497, 1, 'http://www.bing.com/search?q=respeto&src=IE-SearchBox&Form=IE8SRC', 'http://www.respeto.pe', '190.102.144.150', 1441641896, 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.5072'),
(498, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '179.7.71.219', 1441642942, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.3'),
(499, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '179.7.71.219', 1441642948, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.3'),
(500, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '179.7.71.219', 1441642971, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.3'),
(501, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '179.234.238.127', 1441645372, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),
(502, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '187.42.253.51', 1441645853, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(503, 1, 'https://www.google.com/', 'http://www.respeto.pe', '201.206.55.139', 1441651136, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/5'),
(504, 1, 'https://www.google.com/', 'http://www.respeto.pe', '201.206.55.139', 1441651137, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/5'),
(505, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.41.179.86', 1441665788, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(506, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.41.179.86', 1441665862, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(507, 1, 'https://www.facebook.com/', 'http://www.respeto.pe/policy-notes', '201.234.61.133', 1441666146, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(508, 1, 'https://www.facebook.com/', 'http://www.respeto.pe/policy-notes', '190.41.179.86', 1441666572, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(509, 1, 'https://www.facebook.com/', 'http://www.respeto.pe/policy-notes', '181.64.192.175', 1441666632, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(510, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.41.179.86', 1441666672, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(511, 1, 'https://www.facebook.com/', 'http://www.respeto.pe/policy-notes', '190.216.182.67', 1441666694, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(512, 1, 'http://t.co/pYWGZiOipH', 'http://www.respeto.pe/policy-notes', '190.41.179.86', 1441666769, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(513, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '177.9.66.116', 1441667110, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(514, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.117.189.36', 1441671829, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(515, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '187.27.86.252', 1441672728, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(516, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.117.189.36', 1441673732, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(517, 1, 'https://www.facebook.com/', 'http://www.respeto.pe/policy-notes', '181.67.199.111', 1441685937, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(518, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '112.210.32.91', 1441691150, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),
(519, 1, 'http://infraestructuraparatodos.pe/', 'http://respeto.pe', '200.62.134.109', 1441722801, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(520, 1, 'http://infraestructuraparatodos.pe/', 'http://respeto.pe', '200.62.134.109', 1441722811, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(521, 1, 'http://infraestructuraparatodos.pe/', 'http://respeto.pe', '200.62.134.109', 1441722903, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(522, 1, 'http://www.linkedin.com/', 'http://www.respeto.pe', '200.123.2.140', 1441730040, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(523, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.216.182.132', 1441734145, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(524, 1, 'http://success-seo.com/try.php?u=http://respeto.pe', 'http://respeto.pe', '197.218.90.242', 1441734691, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(525, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.42.85.212', 1441736540, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(526, 1, 'http://success-seo.com/try.php?u=http://cireinnovations.com', 'http://cireinnovations.com', '95.247.143.120', 1441744047, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),
(527, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.113.211.139', 1441746460, 'Mozilla/5.0 (Linux; Android 5.0; SM-G900M Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrom'),
(528, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '181.67.203.249', 1441746598, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.3'),
(529, 1, 'http://infraestructuraparatodos.pe/', 'http://respeto.pe', '190.113.211.139', 1441746786, 'Mozilla/5.0 (Linux; Android 5.0; SM-G900M Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrom'),
(530, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.113.211.139', 1441746804, 'Mozilla/5.0 (Linux; Android 5.0; SM-G900M Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrom'),
(531, 1, 'https://www.google.com.pe/', 'http://www.respeto.pe', '190.216.117.162', 1441746858, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safar'),
(532, 1, 'https://www.facebook.com/', 'http://www.respeto.pe', '190.236.100.159', 1441748414, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safa'),
(533, 1, 'http://whois.domaintools.com/respeto.pe', 'http://www.respeto.pe', '64.246.165.210', 1441750076, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_relationships`
--

CREATE TABLE IF NOT EXISTS `exp_relationships` (
  `relationship_id` int(6) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_col_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_row_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_remember_me`
--

CREATE TABLE IF NOT EXISTS `exp_remember_me` (
  `remember_me_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) DEFAULT '0',
  `ip_address` varchar(45) DEFAULT '0',
  `user_agent` varchar(120) DEFAULT '',
  `admin_sess` tinyint(1) DEFAULT '0',
  `site_id` int(4) DEFAULT '1',
  `expiration` int(10) DEFAULT '0',
  `last_refresh` int(10) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_reset_password`
--

CREATE TABLE IF NOT EXISTS `exp_reset_password` (
  `reset_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `resetcode` varchar(12) NOT NULL,
  `date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_revision_tracker`
--

CREATE TABLE IF NOT EXISTS `exp_revision_tracker` (
  `tracker_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `item_table` varchar(20) NOT NULL,
  `item_field` varchar(20) NOT NULL,
  `item_date` int(10) NOT NULL,
  `item_author_id` int(10) unsigned NOT NULL,
  `item_data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_rte_tools`
--

CREATE TABLE IF NOT EXISTS `exp_rte_tools` (
  `tool_id` int(10) unsigned NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `class` varchar(75) DEFAULT NULL,
  `enabled` char(1) DEFAULT 'y'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_rte_tools`
--

INSERT INTO `exp_rte_tools` (`tool_id`, `name`, `class`, `enabled`) VALUES
(1, 'Blockquote', 'Blockquote_rte', 'y'),
(2, 'Bold', 'Bold_rte', 'y'),
(3, 'Headings', 'Headings_rte', 'y'),
(4, 'Image', 'Image_rte', 'y'),
(5, 'Italic', 'Italic_rte', 'y'),
(6, 'Link', 'Link_rte', 'y'),
(7, 'Ordered List', 'Ordered_list_rte', 'y'),
(8, 'Underline', 'Underline_rte', 'y'),
(9, 'Unordered List', 'Unordered_list_rte', 'y'),
(10, 'View Source', 'View_source_rte', 'y'),
(11, 'Channel_images', 'Channel_images_rte', 'y');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_rte_toolsets`
--

CREATE TABLE IF NOT EXISTS `exp_rte_toolsets` (
  `toolset_id` int(10) unsigned NOT NULL,
  `member_id` int(10) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `tools` text,
  `enabled` char(1) DEFAULT 'y'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_rte_toolsets`
--

INSERT INTO `exp_rte_toolsets` (`toolset_id`, `member_id`, `name`, `tools`, `enabled`) VALUES
(1, 0, 'Default', '3|2|5|1|9|7|6|4|10', 'y');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_search`
--

CREATE TABLE IF NOT EXISTS `exp_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) NOT NULL DEFAULT '1',
  `search_date` int(10) NOT NULL,
  `keywords` varchar(60) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `total_results` int(6) NOT NULL,
  `per_page` tinyint(3) unsigned NOT NULL,
  `query` mediumtext,
  `custom_fields` mediumtext,
  `result_page` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_search_log`
--

CREATE TABLE IF NOT EXISTS `exp_search_log` (
  `id` int(10) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `search_date` int(10) NOT NULL,
  `search_type` varchar(32) NOT NULL,
  `search_terms` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_security_hashes`
--

CREATE TABLE IF NOT EXISTS `exp_security_hashes` (
  `hash_id` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_security_hashes`
--

INSERT INTO `exp_security_hashes` (`hash_id`, `date`, `session_id`, `hash`) VALUES
(73, 1441742759, '7bf61be47a2ed7c14a4116364f2d2d2e1db846de', 'ea2896979ca10950726bb94a22f3e6daf7d01614'),
(72, 1441741754, '59dac435423e5114bd903f1762955ae193094c29', 'f4beafce1a69672cffc5a3ba2b7fd7e041680858'),
(71, 1441319501, 'b09421c92564cf86e88d18ed5cd5160be23821ef', '2848abb65360da1e90431ab55594ea97bd330ee8'),
(69, 1441138834, '4e90ee7fe32e314b7bdce0726a4f949cc2858a4e', '8ef76cd44f031682a45f891ccfbde0ac336addc1'),
(64, 1440451350, '4bcf4a77f7385d562f9a3041cc4013ce3f4bd489', '79f463da952709c1618eb60524d734d274dcceb6'),
(63, 1440451262, '0596284c39bf2accab7f63ff2ed621e726eed667', 'de010068abaf43e26445564322706558edef543c'),
(61, 1440451171, 'e8c792804fbe88726dfac643332da6c835eefe49', '90b623e24bf85a2f641fae3d929dfeeb7d3f3d9e'),
(60, 1440445388, '92c999db4201c0a618444a8b0250f3c636e06805', '07294d434e6193315af3b34b2c530045259a7c94'),
(74, 1441818988, '6d587c73afb5308fd6b08fee342d885f1e139801', 'cab579627accc7c825a43f8ba7ad0b55f25b76ed'),
(75, 1441819366, 'f4bab57ae2f4f3d77ac7dd25df03175a3cefccc5', '740f48077fa66bc2da48e9e379e3bb73d7a677e1'),
(76, 1441819523, '4f810215374c32fbf4ac9c981d40401031a52a1d', 'a2f527835a76cab3ee54501372bc9501bb3e3d3f'),
(77, 1441820493, 'c2cfdeb7dfc23b83a1438f88733f9bfa2e55d6b3', '8845af521e110df392a0298e90007492831a87ed');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_sessions`
--

CREATE TABLE IF NOT EXISTS `exp_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `admin_sess` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `fingerprint` varchar(40) NOT NULL,
  `sess_start` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_sessions`
--

INSERT INTO `exp_sessions` (`session_id`, `member_id`, `admin_sess`, `ip_address`, `user_agent`, `fingerprint`, `sess_start`, `last_activity`) VALUES
('6d587c73afb5308fd6b08fee342d885f1e139801', 1, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'dbefab5c4e79198c954d9a46dfec7e3f', 1441818988, 1441819287),
('f4bab57ae2f4f3d77ac7dd25df03175a3cefccc5', 1, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'dbefab5c4e79198c954d9a46dfec7e3f', 1441819366, 1441819440),
('4f810215374c32fbf4ac9c981d40401031a52a1d', 1, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'dbefab5c4e79198c954d9a46dfec7e3f', 1441819523, 1441819752),
('c2cfdeb7dfc23b83a1438f88733f9bfa2e55d6b3', 1, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'dbefab5c4e79198c954d9a46dfec7e3f', 1441820493, 1441824970);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_sites`
--

CREATE TABLE IF NOT EXISTS `exp_sites` (
  `site_id` int(5) unsigned NOT NULL,
  `site_label` varchar(100) NOT NULL DEFAULT '',
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_description` text,
  `site_system_preferences` mediumtext NOT NULL,
  `site_mailinglist_preferences` text NOT NULL,
  `site_member_preferences` text NOT NULL,
  `site_template_preferences` text NOT NULL,
  `site_channel_preferences` text NOT NULL,
  `site_bootstrap_checksums` text NOT NULL,
  `site_pages` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_sites`
--

INSERT INTO `exp_sites` (`site_id`, `site_label`, `site_name`, `site_description`, `site_system_preferences`, `site_mailinglist_preferences`, `site_member_preferences`, `site_template_preferences`, `site_channel_preferences`, `site_bootstrap_checksums`, `site_pages`) VALUES
(1, 'Contribuyentes por Respeto', 'default_site', NULL, 'YTo4ODp7czoxMDoic2l0ZV9pbmRleCI7czowOiIiO3M6ODoic2l0ZV91cmwiO3M6MTg6Imh0dHA6Ly9yZXNwZXRvLnBlLyI7czoxNjoidGhlbWVfZm9sZGVyX3VybCI7czoyNjoiaHR0cDovL3Jlc3BldG8ucGUvL3RoZW1lcy8iO3M6MTU6IndlYm1hc3Rlcl9lbWFpbCI7czoyNDoiaGVybWFuLm1hcmluQGF5dW5pbmMuY29tIjtzOjE0OiJ3ZWJtYXN0ZXJfbmFtZSI7czowOiIiO3M6MjA6ImNoYW5uZWxfbm9tZW5jbGF0dXJlIjtzOjc6ImNoYW5uZWwiO3M6MTA6Im1heF9jYWNoZXMiO3M6MzoiMTUwIjtzOjExOiJjYXB0Y2hhX3VybCI7czozODoiaHR0cDovLzEwNC4yMzYuMjQ0LjY1L2ltYWdlcy9jYXB0Y2hhcy8iO3M6MTI6ImNhcHRjaGFfcGF0aCI7czozMDoiL3Zhci93d3cvaHRtbC9pbWFnZXMvY2FwdGNoYXMvIjtzOjEyOiJjYXB0Y2hhX2ZvbnQiO3M6MToieSI7czoxMjoiY2FwdGNoYV9yYW5kIjtzOjE6InkiO3M6MjM6ImNhcHRjaGFfcmVxdWlyZV9tZW1iZXJzIjtzOjE6Im4iO3M6MTc6ImVuYWJsZV9kYl9jYWNoaW5nIjtzOjE6Im4iO3M6MTg6ImVuYWJsZV9zcWxfY2FjaGluZyI7czoxOiJuIjtzOjE4OiJmb3JjZV9xdWVyeV9zdHJpbmciO3M6MToibiI7czoxMzoic2hvd19wcm9maWxlciI7czoxOiJuIjtzOjE4OiJ0ZW1wbGF0ZV9kZWJ1Z2dpbmciO3M6MToibiI7czoxNToiaW5jbHVkZV9zZWNvbmRzIjtzOjE6Im4iO3M6MTM6ImNvb2tpZV9kb21haW4iO3M6MDoiIjtzOjExOiJjb29raWVfcGF0aCI7czowOiIiO3M6MjA6IndlYnNpdGVfc2Vzc2lvbl90eXBlIjtzOjE6ImMiO3M6MTU6ImNwX3Nlc3Npb25fdHlwZSI7czoyOiJjcyI7czoyMToiYWxsb3dfdXNlcm5hbWVfY2hhbmdlIjtzOjE6InkiO3M6MTg6ImFsbG93X211bHRpX2xvZ2lucyI7czoxOiJ5IjtzOjE2OiJwYXNzd29yZF9sb2Nrb3V0IjtzOjE6InkiO3M6MjU6InBhc3N3b3JkX2xvY2tvdXRfaW50ZXJ2YWwiO3M6MToiMSI7czoyMDoicmVxdWlyZV9pcF9mb3JfbG9naW4iO3M6MToieSI7czoyMjoicmVxdWlyZV9pcF9mb3JfcG9zdGluZyI7czoxOiJ5IjtzOjI0OiJyZXF1aXJlX3NlY3VyZV9wYXNzd29yZHMiO3M6MToibiI7czoxOToiYWxsb3dfZGljdGlvbmFyeV9wdyI7czoxOiJ5IjtzOjIzOiJuYW1lX29mX2RpY3Rpb25hcnlfZmlsZSI7czowOiIiO3M6MTc6Inhzc19jbGVhbl91cGxvYWRzIjtzOjE6InkiO3M6MTU6InJlZGlyZWN0X21ldGhvZCI7czo4OiJyZWRpcmVjdCI7czo5OiJkZWZ0X2xhbmciO3M6NzoiZW5nbGlzaCI7czo4OiJ4bWxfbGFuZyI7czoyOiJlbiI7czoxMjoic2VuZF9oZWFkZXJzIjtzOjE6InkiO3M6MTE6Imd6aXBfb3V0cHV0IjtzOjE6Im4iO3M6MTM6ImxvZ19yZWZlcnJlcnMiO3M6MToieSI7czoxMzoibWF4X3JlZmVycmVycyI7czozOiI1MDAiO3M6MTE6ImRhdGVfZm9ybWF0IjtzOjg6IiVuLyVqLyV5IjtzOjExOiJ0aW1lX2Zvcm1hdCI7czoyOiIxMiI7czoxMzoic2VydmVyX29mZnNldCI7czowOiIiO3M6MjE6ImRlZmF1bHRfc2l0ZV90aW1lem9uZSI7czoxMjoiQW1lcmljYS9MaW1hIjtzOjEzOiJtYWlsX3Byb3RvY29sIjtzOjQ6Im1haWwiO3M6MTE6InNtdHBfc2VydmVyIjtzOjA6IiI7czoxMzoic210cF91c2VybmFtZSI7czowOiIiO3M6MTM6InNtdHBfcGFzc3dvcmQiO3M6MDoiIjtzOjExOiJlbWFpbF9kZWJ1ZyI7czoxOiJuIjtzOjEzOiJlbWFpbF9jaGFyc2V0IjtzOjU6InV0Zi04IjtzOjE1OiJlbWFpbF9iYXRjaG1vZGUiO3M6MToibiI7czoxNjoiZW1haWxfYmF0Y2hfc2l6ZSI7czowOiIiO3M6MTE6Im1haWxfZm9ybWF0IjtzOjU6InBsYWluIjtzOjk6IndvcmRfd3JhcCI7czoxOiJ5IjtzOjIyOiJlbWFpbF9jb25zb2xlX3RpbWVsb2NrIjtzOjE6IjUiO3M6MjI6ImxvZ19lbWFpbF9jb25zb2xlX21zZ3MiO3M6MToieSI7czo4OiJjcF90aGVtZSI7czo3OiJkZWZhdWx0IjtzOjIxOiJlbWFpbF9tb2R1bGVfY2FwdGNoYXMiO3M6MToibiI7czoxNjoibG9nX3NlYXJjaF90ZXJtcyI7czoxOiJ5IjtzOjE5OiJkZW55X2R1cGxpY2F0ZV9kYXRhIjtzOjE6InkiO3M6MjQ6InJlZGlyZWN0X3N1Ym1pdHRlZF9saW5rcyI7czoxOiJuIjtzOjE2OiJlbmFibGVfY2Vuc29yaW5nIjtzOjE6Im4iO3M6MTQ6ImNlbnNvcmVkX3dvcmRzIjtzOjA6IiI7czoxODoiY2Vuc29yX3JlcGxhY2VtZW50IjtzOjA6IiI7czoxMDoiYmFubmVkX2lwcyI7czowOiIiO3M6MTM6ImJhbm5lZF9lbWFpbHMiO3M6MDoiIjtzOjE2OiJiYW5uZWRfdXNlcm5hbWVzIjtzOjA6IiI7czoxOToiYmFubmVkX3NjcmVlbl9uYW1lcyI7czowOiIiO3M6MTA6ImJhbl9hY3Rpb24iO3M6ODoicmVzdHJpY3QiO3M6MTE6ImJhbl9tZXNzYWdlIjtzOjM0OiJUaGlzIHNpdGUgaXMgY3VycmVudGx5IHVuYXZhaWxhYmxlIjtzOjE1OiJiYW5fZGVzdGluYXRpb24iO3M6MjE6Imh0dHA6Ly93d3cueWFob28uY29tLyI7czoxNjoiZW5hYmxlX2Vtb3RpY29ucyI7czoxOiJ5IjtzOjEyOiJlbW90aWNvbl91cmwiO3M6Mzc6Imh0dHA6Ly8xMDQuMjM2LjI0NC42NS9pbWFnZXMvc21pbGV5cy8iO3M6MTk6InJlY291bnRfYmF0Y2hfdG90YWwiO3M6NDoiMTAwMCI7czoxNzoibmV3X3ZlcnNpb25fY2hlY2siO3M6MToieSI7czoxNzoiZW5hYmxlX3Rocm90dGxpbmciO3M6MToibiI7czoxNzoiYmFuaXNoX21hc2tlZF9pcHMiO3M6MToieSI7czoxNDoibWF4X3BhZ2VfbG9hZHMiO3M6MjoiMTAiO3M6MTM6InRpbWVfaW50ZXJ2YWwiO3M6MToiOCI7czoxMjoibG9ja291dF90aW1lIjtzOjI6IjMwIjtzOjE1OiJiYW5pc2htZW50X3R5cGUiO3M6NzoibWVzc2FnZSI7czoxNDoiYmFuaXNobWVudF91cmwiO3M6MDoiIjtzOjE4OiJiYW5pc2htZW50X21lc3NhZ2UiO3M6NTA6IllvdSBoYXZlIGV4Y2VlZGVkIHRoZSBhbGxvd2VkIHBhZ2UgbG9hZCBmcmVxdWVuY3kuIjtzOjE3OiJlbmFibGVfc2VhcmNoX2xvZyI7czoxOiJ5IjtzOjE5OiJtYXhfbG9nZ2VkX3NlYXJjaGVzIjtzOjM6IjUwMCI7czoxNzoidGhlbWVfZm9sZGVyX3BhdGgiO3M6MjA6Ii92YXIvd3d3L2h0bWwvdGhlbWVzIjtzOjEwOiJpc19zaXRlX29uIjtzOjE6InkiO3M6MTE6InJ0ZV9lbmFibGVkIjtzOjE6InkiO3M6MjI6InJ0ZV9kZWZhdWx0X3Rvb2xzZXRfaWQiO3M6MToiMSI7fQ==', 'YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==', 'YTo0NDp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToibiI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NToiZW1haWwiO3M6MjM6Im5ld19tZW1iZXJfbm90aWZpY2F0aW9uIjtzOjE6Im4iO3M6MjM6Im1icl9ub3RpZmljYXRpb25fZW1haWxzIjtzOjA6IiI7czoyNDoicmVxdWlyZV90ZXJtc19vZl9zZXJ2aWNlIjtzOjE6InkiO3M6MjI6InVzZV9tZW1iZXJzaGlwX2NhcHRjaGEiO3M6MToibiI7czoyMDoiZGVmYXVsdF9tZW1iZXJfZ3JvdXAiO3M6MToiNSI7czoxNToicHJvZmlsZV90cmlnZ2VyIjtzOjY6Im1lbWJlciI7czoxMjoibWVtYmVyX3RoZW1lIjtzOjc6ImRlZmF1bHQiO3M6MTQ6ImVuYWJsZV9hdmF0YXJzIjtzOjE6InkiO3M6MjA6ImFsbG93X2F2YXRhcl91cGxvYWRzIjtzOjE6Im4iO3M6MTA6ImF2YXRhcl91cmwiO3M6Mzc6Imh0dHA6Ly8xMDQuMjM2LjI0NC42NS9pbWFnZXMvYXZhdGFycy8iO3M6MTE6ImF2YXRhcl9wYXRoIjtzOjI5OiIvdmFyL3d3dy9odG1sL2ltYWdlcy9hdmF0YXJzLyI7czoxNjoiYXZhdGFyX21heF93aWR0aCI7czozOiIxMDAiO3M6MTc6ImF2YXRhcl9tYXhfaGVpZ2h0IjtzOjM6IjEwMCI7czoxMzoiYXZhdGFyX21heF9rYiI7czoyOiI1MCI7czoxMzoiZW5hYmxlX3Bob3RvcyI7czoxOiJuIjtzOjk6InBob3RvX3VybCI7czo0MzoiaHR0cDovLzEwNC4yMzYuMjQ0LjY1L2ltYWdlcy9tZW1iZXJfcGhvdG9zLyI7czoxMDoicGhvdG9fcGF0aCI7czozNToiL3Zhci93d3cvaHRtbC9pbWFnZXMvbWVtYmVyX3Bob3Rvcy8iO3M6MTU6InBob3RvX21heF93aWR0aCI7czozOiIxMDAiO3M6MTY6InBob3RvX21heF9oZWlnaHQiO3M6MzoiMTAwIjtzOjEyOiJwaG90b19tYXhfa2IiO3M6MjoiNTAiO3M6MTY6ImFsbG93X3NpZ25hdHVyZXMiO3M6MToieSI7czoxMzoic2lnX21heGxlbmd0aCI7czozOiI1MDAiO3M6MjE6InNpZ19hbGxvd19pbWdfaG90bGluayI7czoxOiJuIjtzOjIwOiJzaWdfYWxsb3dfaW1nX3VwbG9hZCI7czoxOiJuIjtzOjExOiJzaWdfaW1nX3VybCI7czo1MToiaHR0cDovLzEwNC4yMzYuMjQ0LjY1L2ltYWdlcy9zaWduYXR1cmVfYXR0YWNobWVudHMvIjtzOjEyOiJzaWdfaW1nX3BhdGgiO3M6NDM6Ii92YXIvd3d3L2h0bWwvaW1hZ2VzL3NpZ25hdHVyZV9hdHRhY2htZW50cy8iO3M6MTc6InNpZ19pbWdfbWF4X3dpZHRoIjtzOjM6IjQ4MCI7czoxODoic2lnX2ltZ19tYXhfaGVpZ2h0IjtzOjI6IjgwIjtzOjE0OiJzaWdfaW1nX21heF9rYiI7czoyOiIzMCI7czoxOToicHJ2X21zZ191cGxvYWRfcGF0aCI7czozNjoiL3Zhci93d3cvaHRtbC9pbWFnZXMvcG1fYXR0YWNobWVudHMvIjtzOjIzOiJwcnZfbXNnX21heF9hdHRhY2htZW50cyI7czoxOiIzIjtzOjIyOiJwcnZfbXNnX2F0dGFjaF9tYXhzaXplIjtzOjM6IjI1MCI7czoyMDoicHJ2X21zZ19hdHRhY2hfdG90YWwiO3M6MzoiMTAwIjtzOjE5OiJwcnZfbXNnX2h0bWxfZm9ybWF0IjtzOjQ6InNhZmUiO3M6MTg6InBydl9tc2dfYXV0b19saW5rcyI7czoxOiJ5IjtzOjE3OiJwcnZfbXNnX21heF9jaGFycyI7czo0OiI2MDAwIjtzOjE5OiJtZW1iZXJsaXN0X29yZGVyX2J5IjtzOjExOiJ0b3RhbF9wb3N0cyI7czoyMToibWVtYmVybGlzdF9zb3J0X29yZGVyIjtzOjQ6ImRlc2MiO3M6MjA6Im1lbWJlcmxpc3Rfcm93X2xpbWl0IjtzOjI6IjIwIjt9', 'YTo3OntzOjIyOiJlbmFibGVfdGVtcGxhdGVfcm91dGVzIjtzOjE6Im4iO3M6MTE6InN0cmljdF91cmxzIjtzOjE6InkiO3M6ODoic2l0ZV80MDQiO3M6MDoiIjtzOjE5OiJzYXZlX3RtcGxfcmV2aXNpb25zIjtzOjE6Im4iO3M6MTg6Im1heF90bXBsX3JldmlzaW9ucyI7czoxOiI1IjtzOjE1OiJzYXZlX3RtcGxfZmlsZXMiO3M6MToieSI7czoxODoidG1wbF9maWxlX2Jhc2VwYXRoIjtzOjI0OiIvdmFyL3d3dy9odG1sL3RlbXBsYXRlcy8iO30=', 'YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czo0OiJkYXNoIjtzOjE3OiJ1c2VfY2F0ZWdvcnlfbmFtZSI7czoxOiJuIjtzOjIyOiJyZXNlcnZlZF9jYXRlZ29yeV93b3JkIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJhdXRvX2NvbnZlcnRfaGlnaF9hc2NpaSI7czoxOiJuIjtzOjIyOiJuZXdfcG9zdHNfY2xlYXJfY2FjaGVzIjtzOjE6InkiO3M6MjM6ImF1dG9fYXNzaWduX2NhdF9wYXJlbnRzIjtzOjE6InkiO30=', 'YToyOntzOjQwOiJDOlx4YW1wcFxodGRvY3NcQ29udHJpYnV5ZW50ZXNcaW5kZXgucGhwIjtzOjMyOiIxMGQ5M2VkZWZiNDk1YmZlYWIxYTVmYmUxZWFjZTExZiI7czo3OiJlbWFpbGVkIjthOjA6e319', 'YToxOntpOjE7YTozOntzOjQ6InVyaXMiO2E6MDp7fXM6OToidGVtcGxhdGVzIjthOjA6e31zOjM6InVybCI7czoxODoiaHR0cDovL3Jlc3BldG8ucGUvIjt9fQ==');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_snippets`
--

CREATE TABLE IF NOT EXISTS `exp_snippets` (
  `snippet_id` int(10) unsigned NOT NULL,
  `site_id` int(4) NOT NULL,
  `snippet_name` varchar(75) NOT NULL,
  `snippet_contents` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_specialty_templates`
--

CREATE TABLE IF NOT EXISTS `exp_specialty_templates` (
  `template_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_name` varchar(50) NOT NULL,
  `data_title` varchar(80) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_specialty_templates`
--

INSERT INTO `exp_specialty_templates` (`template_id`, `site_id`, `enable_template`, `template_name`, `data_title`, `template_data`) VALUES
(1, 1, 'y', 'offline_template', '', '<html>\n<head>\n\n<title>System Offline</title>\n\n<style type="text/css">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#999999 1px solid;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n</style>\n\n</head>\n\n<body>\n\n<div id="content">\n\n<h1>System Offline</h1>\n\n<p>This site is currently offline</p>\n\n</div>\n\n</body>\n\n</html>'),
(2, 1, 'y', 'message_template', '', '<html>\n<head>\n\n<title>{title}</title>\n\n<meta http-equiv=''content-type'' content=''text/html; charset={charset}'' />\n\n{meta_refresh}\n\n<style type="text/css">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:active {\ncolor:				#ccc;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#000 1px solid;\nbackground-color: 	#DEDFE3;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n\nul {\nmargin-bottom: 		16px;\n}\n\nli {\nlist-style:			square;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		8px;\nmargin-bottom: 		8px;\ncolor: 				#000;\n}\n\n</style>\n\n</head>\n\n<body>\n\n<div id="content">\n\n<h1>{heading}</h1>\n\n{content}\n\n<p>{link}</p>\n\n</div>\n\n</body>\n\n</html>'),
(3, 1, 'y', 'admin_notify_reg', 'Notification of new member registration', 'New member registration site: {site_name}\n\nScreen name: {name}\nUser name: {username}\nEmail: {email}\n\nYour control panel URL: {control_panel_url}'),
(4, 1, 'y', 'admin_notify_entry', 'A new channel entry has been posted', 'A new entry has been posted in the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nPosted by: {name}\nEmail: {email}\n\nTo read the entry please visit:\n{entry_url}\n'),
(5, 1, 'y', 'admin_notify_mailinglist', 'Someone has subscribed to your mailing list', 'A new mailing list subscription has been accepted.\n\nEmail Address: {email}\nMailing List: {mailing_list}'),
(6, 1, 'y', 'admin_notify_comment', 'You have just received a comment', 'You have just received a comment for the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nLocated at:\n{comment_url}\n\nPosted by: {name}\nEmail: {email}\nURL: {url}\nLocation: {location}\n\n{comment}'),
(7, 1, 'y', 'mbr_activation_instructions', 'Enclosed is your activation code', 'Thank you for your new member registration.\n\nTo activate your new account, please visit the following URL:\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}\n\n{site_url}'),
(8, 1, 'y', 'forgot_password_instructions', 'Login information', '{name},\n\nTo reset your password, please go to the following page:\n\n{reset_url}\n\nThen log in with your username: {username}\n\nIf you do not wish to reset your password, ignore this message. It will expire in 24 hours.\n\n{site_name}\n{site_url}'),
(9, 1, 'y', 'validated_member_notify', 'Your membership account has been activated', '{name},\n\nYour membership account has been activated and is ready for use.\n\nThank You!\n\n{site_name}\n{site_url}'),
(10, 1, 'y', 'decline_member_validation', 'Your membership account has been declined', '{name},\n\nWe''re sorry but our staff has decided not to validate your membership.\n\n{site_name}\n{site_url}'),
(11, 1, 'y', 'mailinglist_activation_instructions', 'Email Confirmation', 'Thank you for joining the "{mailing_list}" mailing list!\n\nPlease click the link below to confirm your email.\n\nIf you do not want to be added to our list, ignore this email.\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}'),
(12, 1, 'y', 'comment_notification', 'Someone just responded to your comment', '{name_of_commenter} just responded to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comment at the following URL:\n{comment_url}\n\n{comment}\n\nTo stop receiving notifications for this comment, click here:\n{notification_removal_url}'),
(13, 1, 'y', 'comments_opened_notification', 'New comments have been added', 'Responses have been added to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comments at the following URL:\n{comment_url}\n\n{comments}\n{comment}\n{/comments}\n\nTo stop receiving notifications for this entry, click here:\n{notification_removal_url}'),
(14, 1, 'y', 'private_message_notification', 'Someone has sent you a Private Message', '\n{recipient_name},\n\n{sender_name} has just sent you a Private Message titled ‘{message_subject}’.\n\nYou can see the Private Message by logging in and viewing your inbox at:\n{site_url}\n\nContent:\n\n{message_content}\n\nTo stop receiving notifications of Private Messages, turn the option off in your Email Settings.\n\n{site_name}\n{site_url}'),
(15, 1, 'y', 'pm_inbox_full', 'Your private message mailbox is full', '{recipient_name},\n\n{sender_name} has just attempted to send you a Private Message,\nbut your inbox is full, exceeding the maximum of {pm_storage_limit}.\n\nPlease log in and remove unwanted messages from your inbox at:\n{site_url}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_stats`
--

CREATE TABLE IF NOT EXISTS `exp_stats` (
  `stat_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `total_members` mediumint(7) NOT NULL DEFAULT '0',
  `recent_member_id` int(10) NOT NULL DEFAULT '0',
  `recent_member` varchar(50) NOT NULL,
  `total_entries` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_topics` mediumint(8) NOT NULL DEFAULT '0',
  `total_forum_posts` mediumint(8) NOT NULL DEFAULT '0',
  `total_comments` mediumint(8) NOT NULL DEFAULT '0',
  `last_entry_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_forum_post_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_comment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `most_visitors` mediumint(7) NOT NULL DEFAULT '0',
  `most_visitor_date` int(10) unsigned NOT NULL DEFAULT '0',
  `last_cache_clear` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_stats`
--

INSERT INTO `exp_stats` (`stat_id`, `site_id`, `total_members`, `recent_member_id`, `recent_member`, `total_entries`, `total_forum_topics`, `total_forum_posts`, `total_comments`, `last_entry_date`, `last_forum_post_date`, `last_comment_date`, `last_visitor_date`, `most_visitors`, `most_visitor_date`, `last_cache_clear`) VALUES
(1, 1, 4, 4, 'Andrés Calderón', 176, 0, 0, 0, 1441319460, 0, 0, 1441824970, 30, 1440433185, 1441937690);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_statuses`
--

CREATE TABLE IF NOT EXISTS `exp_statuses` (
  `status_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_order` int(3) unsigned NOT NULL,
  `highlight` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_statuses`
--

INSERT INTO `exp_statuses` (`status_id`, `site_id`, `group_id`, `status`, `status_order`, `highlight`) VALUES
(1, 1, 1, 'open', 1, '009933'),
(2, 1, 1, 'closed', 2, '990000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_status_groups`
--

CREATE TABLE IF NOT EXISTS `exp_status_groups` (
  `group_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_status_groups`
--

INSERT INTO `exp_status_groups` (`group_id`, `site_id`, `group_name`) VALUES
(1, 1, 'Statuses');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_status_no_access`
--

CREATE TABLE IF NOT EXISTS `exp_status_no_access` (
  `status_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_templates`
--

CREATE TABLE IF NOT EXISTS `exp_templates` (
  `template_id` int(10) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `save_template_file` char(1) NOT NULL DEFAULT 'n',
  `template_type` varchar(16) NOT NULL DEFAULT 'webpage',
  `template_data` mediumtext,
  `template_notes` text,
  `edit_date` int(10) NOT NULL DEFAULT '0',
  `last_author_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cache` char(1) NOT NULL DEFAULT 'n',
  `refresh` int(6) unsigned NOT NULL DEFAULT '0',
  `no_auth_bounce` varchar(50) NOT NULL DEFAULT '',
  `enable_http_auth` char(1) NOT NULL DEFAULT 'n',
  `allow_php` char(1) NOT NULL DEFAULT 'n',
  `php_parse_location` char(1) NOT NULL DEFAULT 'o',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `protect_javascript` char(1) NOT NULL DEFAULT 'n'
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_templates`
--

INSERT INTO `exp_templates` (`template_id`, `site_id`, `group_id`, `template_name`, `save_template_file`, `template_type`, `template_data`, `template_notes`, `edit_date`, `last_author_id`, `cache`, `refresh`, `no_auth_bounce`, `enable_http_auth`, `allow_php`, `php_parse_location`, `hits`, `protect_javascript`) VALUES
(1, 1, 1, 'index', 'n', 'webpage', '', NULL, 1427659497, 0, 'n', 0, '', 'n', 'n', 'o', 4, 'n'),
(2, 1, 1, 'head', 'y', 'webpage', '<!DOCTYPE html>\n<html>\n	<head>\n		<meta charset="utf-8">\n		<title>Contribuyentes con Respeto</title>\n		\n    <!-- Project SEO -->\n    <meta name="description" content="">\n    <meta name="keywords" content="" /> \n    <meta name="author" content="" />\n\n    <!-- Responsiveness -->\n    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">\n\n    <!-- Open Graph -->\n    <meta property="og:type" content="website">\n    <meta property="og:url" content="">\n    <meta property="og:title" content="">\n    <meta property="og:site_name" content="Contribuyentes con Respeto">\n    <meta property="og:description" content="">\n    <meta property="og:image" content="">\n\n    <!-- Twitter Cards -->\n    <meta name="twitter:card" content="">\n    <meta name="twitter:title" content="">\n    <meta name="twitter:url" content="">\n    <meta name="twitter:description" content=".">\n    <meta name="twitter:site" content="Contribuyentes con Respeto">\n    <meta name="twitter:creator" content="">\n    <meta name="twitter:image" content="">\n\n    <!-- FAVICON -->\n    <link rel="shortcut icon" href="http://tini.com.pe/favicon.ico">\n\n    <!-- Apple Mobile -->\n    <meta name="apple-mobile-web-app-title" content="">\n    <meta name="apple-mobile-web-app-capable" content="yes">\n    <meta name="apple-mobile-web-app-status-bar-style" content="black">\n\n    <!-- Apple icons -->\n    <link rel="apple-touch-icon" sizes="156x156" href="#">\n    <link rel="apple-touch-icon" sizes="128x128" href="#">\n    <link rel="apple-touch-icon" sizes="76x76" href="#">\n    <link rel="apple-touch-icon" href="#">\n    \n    <!--Webfont-->		\n		<link rel="stylesheet" type="text/css" href="{site_url}stylesheets/main.css">\n		<script src="//use.typekit.net/ixt8tsd.js"></script>\n		<script>try{Typekit.load();}catch(e){}</script>\n                <script src="{site_url}javascripts/modernizr.custom.js"></script>\n	</head>\n	<body>		', '', 1439590492, 1, 'n', 0, '', 'n', 'n', 'o', 0, 'n'),
(3, 1, 1, 'nav', 'y', 'webpage', '		<nav class="navbar navbar-custom">\n		  <div class="container-fluid">\n		    <!-- Brand and toggle get grouped for better mobile display -->\n		    <div class="navbar-header">\n		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">\n		        <span class="sr-only">Toggle navigation</span>\n		        <span class="icon-bar"></span>\n		        <span class="icon-bar"></span>\n		        <span class="icon-bar"></span>\n		      </button>\n		      <a class="left hidden-xs ml-63 pull-left mt-14" href="{site_url}"><img src="{site_url}images/homepage/logo-transparente.png" height="70"></a>\n		      <a class="left hidden-lg hidden-md hidden-sm logo-navegacion" href="{site_url}"><img src="{site_url}images/homepage/logo-transparente.png"  class="logo-navegacion" width="200"></a>\n\n		    <!-- Collect the nav links, forms, and other content for toggling -->\n		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">\n		      <ul class="nav navbar-nav mt-21">\n		        <li class="bg-header"><a href="{site_url}nosotros" class="weight">Nosotros</a></li>\n		        <li><a href="{site_url}investigacion" class="weight">Investigación</a></li>\n		        <li class="bg-header"><a href="{site_url}#alianzas" class="weight">Alianzas</a></li>\n		        <li><a href="{site_url}novedades" class="weight">Novedades</a></li>\n		      </ul>\n				</div>\n		  </div>\n		</nav>	\n', '', 1439590492, 1, 'n', 0, '', 'n', 'n', 'o', 0, 'n'),
(4, 1, 1, 'footer', 'y', 'webpage', '		<footer class="footer">\n			<div class="row m-0 ">\n				<div class="col-md-4 mt-28 pl-0 mb-21">\n					<div id="laboratoria-banner"><div class="laboratoria-icon" style="background-image: url(https://cdn.rawgit.com/Laboratoria/Laboratoria.02/master/LaboratoriaBanner/img/laboratoria-icon-black.png)"></div> <div class="laboratoria-label"> <p>Proyecto desarrollado por<br><a href="http://laboratoria.la" target="_blank">laboratoria.la</a></p> </div></div>\n				</div>\n				<div class="col-md-4"></div>\n				<div class="col-md-4 text-muted">\n					<div class=" text-right">\n						<p>Contribuyente por Respeto</p>\n						<p>Av. Victor Andrés Belaunde 177, San Isidro</p>\n						<p>01 705 8029</p>\n						<p>cpr@gmail.com</p>\n					</div>\n				</div>\n			</div>\n		</footer>\n		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>\n	  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>\n	  	<script src="{site_url}javascripts/laboratoriaBanner.js"></script>\n	  	<script src="{site_url}javascripts/classie.js"></script>\n\n	  	<script src="{site_url}javascripts/jquery.flexslider-min.js"></script>\n	  	<script>\n	  		$(window).load(function() {\n				  $(''.flexslider'').flexslider({\n				    animation: "slide",\n				    animationLoop: false,\n				    itemWidth: 210,\n				    itemMargin: 5,\n				    minItems: 2,\n				    maxItems: 4\n				  });\n				});\n	  	</script>\n			<script type="text/javascript">\n			    /* * * CONFIGURATION VARIABLES * * */\n			    var disqus_shortname = ''controbuyentes'';\n			    \n			    /* * * DON''T EDIT BELOW THIS LINE * * */\n			    (function() {\n			        var dsq = document.createElement(''script''); dsq.type = ''text/javascript''; dsq.async = true;\n			        dsq.src = ''//'' + disqus_shortname + ''.disqus.com/embed.js'';\n			        (document.getElementsByTagName(''head'')[0] || document.getElementsByTagName(''body'')[0]).appendChild(dsq);\n			    })();\n			</script>\n			<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>\n			<!-- Go to www.addthis.com/dashboard to customize your tools -->\n			<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-55c7dbed6900f502" async="async"></script>			\n	</body>\n</html>', '', 1439590492, 1, 'n', 0, '', 'n', 'n', 'o', 0, 'n'),
(5, 1, 2, 'index', 'y', 'webpage', '{embed="includes/head"}\n		{embed="includes/nav"}\n		{exp:channel:entries channel="homepage" limit="1"}\n		<section id="portada" style="background-image:url({imgen_hero}); background-position-y: 10px;" class="hero-unit">\n			<div class="text-vertical-center">\n		  <h1>{home_titulo_hero}</h1>\n					<h4>{home_subttulo_hero}</h4>\n		</div>\n		</section>\n		<section id="nosotros" class="text-center">\n			<div class="container">\n				<div class="row">\n					<div class="col-xs-1"></div>\n					<div class="col-md-10">\n						<h2 class="pb-35 text-dark">¿Por qué estamos aquí?</h2>\n						<h4 class="text-gray">{home_introduccion}</h4>\n						<a class="btn btn-nosotros btn-1 btn-1b" href="{site_url}nosotros">CONOCE MÁS DE NOSOTROS</a>\n					</div>\n				</div>\n			</div>\n		</section>\n		<section id="investigacion" class="pt-35">\n			<div class="container-fluid p-0">\n				<div class="row m-0 investigacion">\n					<div class="col-md-2"></div>\n					<div class="col-md-8 text-center pb-42">\n						<h2 class="pb-0 text-dark">Investigación</h2>\n						<h4 class="text-gray">{home_introduccin_investogacin}</h4>\n					</div>\n				</div>\n				<div class="row m-0">\n					<div class="col-md-4 bg-danger text-center">\n						<h3 class="text-serif">Costo y Beneficio</h3>\n						<p class="weight-light">{home_introduccion_costo_benefici}</p>\n						<a class="btn btn-investigacion btn-more text-white btn-1 btn-1b" href="{site_url}costo-beneficio">VER MÁS</a>\n					</div>\n					<div class="col-md-8 p-0">\n						<div class="imagen">\n							<img src="{home_imagen_costo_beneficio}">\n						</div>\n					</div>\n				</div>\n				<!--<div class="row m-0">\n					<div class="col-md-8 p-0">\n						<div class="imagen">						\n							<img src="{home_imagen_plaza_bolivar}">\n						</div>\n					</div>\n					<div class="col-md-4 bg-info text-center text-muted">\n						<h3 class="text-serif">Plaza Bolivar</h3>\n						<p class="weight-light">{home_introduccin_plaza_bolivar}</p>\n						<a class="btn btn-investigacion text-white" href="{site_url}plaza-bolivar">VER MÁS</a>\n					</div>\n				</div>-->\n				</div>\n		</section>\n		<section id="caricaturas">\n			<div class="container">\n				<div class="row m-0">\n					<div class="col-md-1"></div>\n					<div class="col-md-10 text-center">\n						<h2>Caricaturas</h2>\n						<h4 class="text-gray-light">{home_introduccion_caricaturas}</h4>\n					</div>\n				</div>\n				<div class="flexslider">\n				  <ul class="slides">\n					{exp:channel:entries channel="caricaturas" limit="20"}\n					<li>\n					  <img src="{imagen_caricaturas}" />\n					</li>\n					{/exp:channel:entries}\n				  </ul>\n				</div>\n			</div>\n		</section>\n		<section id="alianzas">\n			<div class="container pt-42 pb-42">\n				<div class="row m-0">\n					<div class="col-xs-1"></div>\n					<div class="col-md-10 text-center">\n						<h2 class="text-center">Alianzas</h2>\n						<h4 class="text-gray-light mt-42 mb-42">{home_introduccion_alianzas}</h4>\n					</div>\n				</div>\n				<div class="alianzas-center" >\n					{embed="includes/alianzas"}\n				</div>\n			</div>\n		</section>\n		<section id="novedades" class="text-center">\n			<div class="container p-0">\n				<div class="row m-0">\n					<div class="col-md-8 col-md-offset-2 novedades">\n						<h2 class="tex-center">Novedades</h2>\n						<h4 class="text-gray-light">{home_introduccion_novedades}</h4>\n					</div>\n				</div>\n				<div class="row m-0 posts">\n					{embed="includes/novedades"}\n				</div>\n				<a href="{site_url}novedades" class="btn btn-custom btn-more btn-1 btn-1b">ver más</a>\n			</div>\n		</section>\n		<section id="noticias" class="bg-danger">\n			<div class="container">\n				<div class="row">\n					<div class="col-md-10 col-md-offset-1">\n						<h4 class="text-center text-muted">Mantente al tanto de nuestras noticias</h4>\n					</div>\n					<div class="col-md-6 col-md-offset-3 mt-14">\n						<div class="input-group">\n						  <input type="text" class="form-control" placeholder="ingresa tu correo electrónico" aria-describedby="basic-addon2">\n						  <span class="input-group-addon" id="basic-addon2">SUSCRIBIRSE</span>\n						</div>\n					</div>\n				</div>\n			</div>\n		</section>\n		{embed="includes/redsocial"}\n		{/exp:channel:entries}\n{embed="includes/footer"}		\n', '', 1439590492, 1, 'n', 0, '', 'n', 'n', 'o', 5009, 'n'),
(12, 1, 1, 'alianzas', 'y', 'webpage', '				{exp:channel:entries channel="alianzas" limit="3" dynamic="off"}\n				<div class="row mt-21 mb-21">\n					<div class="col-md-2"></div>\n				  <div class="col-md-3 text-center picture">\n						<img class="media-object mb-14" src="{alianzas_imagen}" alt="{title}" width="100%">\n					</div>\n					<div class="col-md-5">\n						<h3 class="mt-0 mb-7">{title}</h3>\n			     	<p class="text-gray-light">{alianzas_descripcion}</p>\n						{if lee_mas!=""}\n							<a href="{lee_mas}">Lee mas</a>\n						{/if}\n					</div>\n				</div>\n	  		{/exp:channel:entries}', '', 1439590492, 1, 'n', 0, '', 'n', 'n', 'o', 0, 'n'),
(13, 1, 1, 'novedades', 'y', 'webpage', '					{exp:channel:entries channel="novedades" limit="3" dynamic="off"}\n					<div class="col-md-4">\n						<div class="post text-center">\n							<img src="{novedades_imagen}" alt="{title}">\n							<a href="{site_url}/novedades/articulo/{url_title}" class="text-underline"><h3>{title}</h3></a>\n							<p class="text-gray-light">{novedades_descripcion}</p>\n						</div>\n					</div>\n					{/exp:channel:entries}', '', 1439590492, 1, 'n', 0, '', 'n', 'n', 'o', 0, 'n'),
(7, 1, 3, 'index', 'y', 'webpage', '{embed="includes/head"}\n		{embed="includes/nav"}\n		<section id="portada">\n			<div class="text-vertical-center">\n				<h1>Somos Contribuyentes</h1>\n				<h4>Como tales, queremos promover que las políticas públicas se traduzcan en mejores servicios a los ciudadanos y en marco regulatorio e institucional que favorezca el crecimiento e inclusión. </h4>\n				<p><em>Contribuyentes por Respeto</em> es una organización ciudadana que defiende y promueve el interés público bajo los principios de libertad individual (política y económica), responsabilidad personal, mercados competitivos, y Estado de Derecho, porque estamos convencidos que ésta es la receta que trae mayor bienestar para los peruanos y que ha permitido sacar de la pobreza a casi 8 millones de personas en los últimos años.</p>\n			</div>\n		</section>\n		<section id="seccion2" class="text-center">\n			<div class="container-fluid">\n				<div class="row m-0">\n					<div class="col-md-6 col-md-offset-3 text-center">\n						<div class="mision">\n							<a href=""><img src="http://placehold.it/100x100"></a>\n						</div>\n						<h2 class="pb-0">Misión</h2>\n						<h4 class="text-gray-light">Un marco regulatorio inclusivo que respete los principios libertad individual (política y económica), responsabilidad personal, mercados competitivos, y Estado de Derecho, promoviendo así una mayor generación de riqueza y movilidad social.</h4>\n					</div>\n				</div>\n				<div class="row m-0">\n					<div class="col-md-6 col-md-offset-3 text-center">\n						<div class="mision">\n							<a href=""><img src="http://placehold.it/100x100"></a>\n						</div>\n						<h2 class="pb-0">Visión</h2>\n						<h4 class="text-gray-light">Promover que las políticas públicas en el Perú se basen en la evidencia y en un adecuado análisis costo-beneficio; debatidas de manera transparente y tomando en cuenta los intereses y opiniones de todos los involucrados.</h4>\n					</div>\n				</div>\n			</div>\n		</section>\n		<section id="area">\n			<div class="container-fluid p-0">\n				<div class="row m-0 descripcion">\n					<div class="col-md-2"></div>\n					<div class="col-md-8 text-center">\n						<h2>Área de Trabajo</h2>\n						<h4 class="text-gray-light">Nuestras áreas de investigación y difusión son:</h4>\n					</div>\n				</div>\n				<div class="container"> \n					{exp:channel:entries channel="area_de_trabajo" limit="5" dynamic="off"}\n					<div class="row m-0 trabajo">\n						<div class="col-md-2"></div>\n						<div class="col-md-4">\n							<div class="areastrabajo">\n								<img src="{area_imagen}" alt="{title}">\n							</div>\n						</div>\n						<div class="col-md-4 text-center overlay">\n							<h3>{title}</h3>\n							<p>{area_descripcion}</p>\n						</div>\n					</div>\n					{/exp:channel:entries}\n				</div>\n			</div>\n		</section>\n		<section id="equipo">\n				<div class="row m-0 pv-35">\n						<div class="col-md-8 col-md-offset-2 text-center">			\n							<h2 class="text-center">Consejo Directivo</h2>\n							<h4 class="text-gray-light">El trabajo de Contribuyentes por Respeto no sería posible sin el siguiente equipo:</h4>\n						</div>\n				</div>\n			<div class="row m-0">\n				{exp:channel:entries channel="equipo" limit="6" dynamic="off"}\n				<div class="col-md-4">\n					<div class="text-center">\n						<img src="{equipo_imagen}" alt="{title}">\n						<h5 class="mb-0 pb-0">{title}</h5>\n						<small>{equipo_cargo}</small>\n						<p>{equipo_descripcion}</p>\n					</div>\n				</div>\n				{/exp:channel:entries}\n			</div>\n		</section>\n		<section id="asociados">\n			<div class="container">\n				<div class="row m-0 pt-35">\n						<div class="col-md-8 col-md-offset-2 text-center">\n							<h2>Colaboradores</h2>\n						</div>\n				</div>\n				<div class="row m-0 colaboradores">\n					{exp:channel:entries channel="asociados" limit="20" dynamic="off"}\n					<div class="col-md-3">\n						<a href="{asociados_link}" target="_blank"><img src="{asociados_imagen}" alt="{title}"></a>\n						<h5 class="mb-0 pb-0">{title}</h5>\n						<small>{asociados_tipo}</small>\n					</div>\n					{/exp:channel:entries}\n				</div>\n			</div>\n		</section>\n		<section id="asociados">\n			<div class="container">\n				<div class="row m-0 pt-35">\n						<div class="col-md-8 col-md-offset-2 text-center">\n							<h2>Asociados</h2>\n						</div>\n				</div>\n				<div class="row m-0 colaboradores">\n					<div class="col-md-6 col-md-offset-3 text-center">\n						{exp:channel:entries channel="colaboradores" limit="20" dynamic="off"}\n						<div class="pb-21">\n							<h5 class="mb-0 pb-0">{title}</h5>\n							<small>{asociados_tipo}</small>\n						</div>\n						{/exp:channel:entries}\n					</div>\n				</div>\n			</div>\n		</section>		\n		{embed="includes/redsocial"}\n{embed="includes/footer"}', '', 1439590492, 1, 'n', 0, '', 'n', 'n', 'o', 438, 'n'),
(8, 1, 4, 'index', 'y', 'webpage', '{embed="includes/head"}\n		{embed="includes/nav"}\n		<section id="portada">\n			<div class="botones-portada">\n			  <a href="{site_url}plaza-bolivar" class="btn btn-default btn-fold">Plaza Bolivar</a>\n			  <a href="{site_url}costo-beneficio" class="btn btn-default btn-fold">Costo Beneficio</a>\n			</div>\n		</section>\n		<section id="nosotros" class="text-center">\n			<div class="container">\n				<div class="row">\n					<div class="col-xs-1"></div>\n					<div class="col-md-10">\n						<h3 class="text-gray">Contribuyentes por Respeto busca... sed do eiusmod\n						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n						quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n						consequat.</h3>\n						<!--<button class="btn btn-custom btn-vista-investigacion">ver más</button>-->\n					</div>\n				</div>\n			</div>\n		</section>\n		<section id="novedades" class="text-center">\n			<div class="container p-0">\n					<h2>Más de Costo Beneficio</h2>\n				<div class="row m-0 posts">\n					{exp:channel:entries channel="news" limit="10"}\n					<div class="col-md-4">\n						<div class="post text-center">\n							<img src="{novedades_imagen}">\n							<a href="{site_url}/investigacion/articulo/{url_tile}"><h3>{title}</h3></a>\n							<p>{novedades_descripcion}</p>\n						</div>\n					</div>\n					{/exp:channel:entries}\n				</div>\n				<a href="{site_url}/investigacion/lista" class="btn btn-custom">ver más</a>\n			</div>\n		</section>\n{embed="includes/footer"}', '', 1439590492, 1, 'n', 0, '', 'n', 'n', 'o', 437, 'n'),
(9, 1, 5, 'index', 'y', 'webpage', '{embed="includes/head"}\n		{embed="includes/nav"}\n		<section id="novedad">\n			<div class="container">\n				<div class="row mt-70">\n					<div class="col-md-1"></div>\n					<div class="col-md-10 text-center">\n						<h2>Novedades</h2>\n						<h4 class="text-gray-light">Entérate de nuestras últimas publicaciones y apariciones en medios: </h4>\n					</div>\n				</div>\n				<div class="row m-0">\n					{exp:channel:entries channel="novedades" limit="20" dynamic="off"}\n	 				<div class="col-md-4">\n		 				<a href="{site_url}/novedades/articulo/{url_title}">\n		 					<div class="novedades">\n		 						<img src="{novedades_imagen}">\n		 						<div class="overlay text-muted">\n				  					<h4>{title}</h4>\n				  					<p>{novedades_descripcion}</p>\n				  			</div>\n				  		</div>\n		 				</a>\n	 				</div>\n	 				{/exp:channel:entries}\n				</div>\n			</div>\n		</section>\n{embed="includes/footer"}', '', 1439602643, 1, 'n', 0, '', 'n', 'n', 'o', 293, 'n'),
(20, 1, 9, 'index', 'y', 'webpage', '', '', 1440023781, 1, 'n', 0, '', 'n', 'n', 'o', 67, 'n'),
(10, 1, 6, 'index', 'y', 'webpage', '{embed="includes/head"}\n		{embed="includes/nav"}\n		<section id="novedad">\n			<div class="container">\n				<div class="row mt-70">\n					<div class="col-md-1"></div>\n					<div class="col-md-10 text-center">\n						<h2>Costo y Beneficio</h2>\n						<h4 class="text-gray-light">Cada mes desarrollamos una investigación en la que diagnosticamos un problema de política pública y realizamos propuestas de reforma. Los temas abordados en ediciones pasada han incluido alcohol, regulación de riesgos, transgénicos, pensiones públicas, agua y saneamiento, comisiones bancarias, y control de fusiones.</h4>\n						<p>Estos contenidos son distribuidos vía suscripciones, y luego de tres meses son abiertos al público a través desde nuestra web</p>\n					</div>\n				</div>\n				<div class="row m-0">\n					{exp:channel:entries channel="boletin_costo_beneficio" dynamic="off"}\n	 				<div class="col-md-4">\n		 				<a href="{archivo-boletin-cb}" target="_blank">\n		 					<div class="novedades">\n		 						<img src="{imagen-boletin-cb}">\n		 						<div class="overlay text-muted">\n				  					<h4>{title}</h4>\n				  					<p>{descripcion-boletin-cb}</p>\n				  					<p>Ver PDF →</p>\n				  			</div>\n				  		</div>\n		 				</a>\n	 				</div>\n	 				{/exp:channel:entries}\n				</div>\n			</div>\n		</section>\n{embed="includes/footer"}', '', 1439914348, 1, 'n', 0, '', 'n', 'n', 'o', 223, 'n'),
(11, 1, 7, 'index', 'y', 'webpage', '{embed="includes/head"}\n		{embed="includes/nav"}\n		<section id="portada">\n			<div class="botones-portada">\n			  <a href="#" class="btn btn-default btn-fold">Plaza Bolivar</a>\n			  <a href="#" class="btn btn-default btn-fold">Costo Beneficio</a>\n			</div>\n		</section>\n		<section id="nosotros">\n			<div class="container">\n				<div class="row m-0">\n							<div class="col-md-2"></div>\n							<div class="col-md-8 text-center">\n								<p>ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n								proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n								<p>ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n								proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n								<p>ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n								proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n							</div>\n				</div>\n			</div>\n		</section>\n		<section id="novedades" class="text-center">\n			<div class="container p-0">\n					<h2>Más de Plaza Bolivar</h2>\n				<div class="row m-0 posts">\n					<div class="col-md-4">\n						<div class="post text-center">\n							<img src="http://placehold.it/300x250">\n							<a href=""><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n					<div class="col-md-4">\n						<div class="post text-center">\n							<img src="http://placehold.it/300x250">\n							<a href=""><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n					<div class="col-md-4">\n						<div class="post text-center">\n							<img src="http://placehold.it/300x250">\n							<a href=""><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n				</div>\n				<button class="btn btn-custom">ver más</button>\n			</div>\n		</section>\n{embed="includes/footer"}', '', 1428269176, 1, 'n', 0, '', 'n', 'n', 'o', 22, 'n'),
(14, 1, 4, 'lista', 'y', 'webpage', '{embed="includes/head"}\n		{embed="includes/nav"}\n		<section id="novedad">\n			<div class="container">\n				<div class="row mt-70">\n					<div class="col-md-1"></div>\n					<div class="col-md-10 text-center">\n						<h2>Investigación</h2>\n						<h4 class="text-gray-light">Duis aute irure dolor in reprehenderit in voluptate velit esse\n						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n						proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</h4>\n					</div>\n				</div>\n				<div class="row m-0">\n					{exp:channel:entries channel="investigacion" limit="20" dynamic="off"}\n	 				<div class="col-md-4">\n		 				<a href="{site_url}/novedades/articulo/{url_title}">\n		 					<div class="novedades">\n		 						<img src="{novedades_imagen}">\n		 						<div class="overlay text-muted">\n				  					<h4>{title}</h4>\n				  					<p>{novedades_descripcion}</p>\n				  			</div>\n				  		</div>\n		 				</a>\n	 				</div>\n	 				{/exp:channel:entries}\n				</div>\n			</div>\n		</section>\n{embed="includes/footer"}', NULL, 1439572162, 1, 'n', 0, '', 'n', 'n', 'o', 21, 'n'),
(15, 1, 4, 'articulo', 'y', 'webpage', '{embed="includes/head"}\n		{embed="includes/nav"}\n		{exp:channel:entries channel="investigacion" limit="1"}\n		<section id="novedad">\n			<div class="container">\n				<div class="row mt-70">\n					<div class="col-md-1"></div>\n					<div class="col-md-10 text-left mb-0">\n						<h1 class="ml-14">{title}</h1>\n					</div>\n				</div>\n				<div class="row m-0">\n	 				<div class="col-md-10 col-md-offset-1">\n 						<div class="pb-28">\n	 						<img src="{novedades_imagen}" width="100%">\n 						</div>\n		  			{novedades_contenido}\n		  			<div class="pt-28">\n			  			<h4>Comentarios</h4>\n			  			<div id="disqus_thread"></div>\n		  			</div>\n			  	</div>\n				</div>\n			</div>\n		</section>\n		{/exp:channel:entries}\n{embed="includes/footer"}', NULL, 1439572162, 1, 'n', 0, '', 'n', 'n', 'o', 0, 'n'),
(16, 1, 5, 'articulo', 'y', 'webpage', '{embed="includes/head"}\n		{embed="includes/nav"}\n		{exp:channel:entries channel="novedades" limit="1"}\n		<section id="novedad">\n			<div class="container">\n				<div class="row mt-70">\n					<div class="col-md-1"></div>\n					<div class="col-md-10 text-left mb-0">\n						<h1 class="ml-14">{title}</h1>\n					</div>\n				</div>\n				<div class="row m-0">\n	 				<div class="col-md-10 col-md-offset-1">\n 						<div class="pb-28">\n	 						<img src="{novedades_imagen}" width="100%">\n 						</div>\n		  			{novedades_contenido}\n		  			<div class="pt-28">\n			  			<h4>Comentarios</h4>\n			  			<div id="disqus_thread"></div>\n		  			</div>\n			  	</div>\n				</div>\n			</div>\n		</section>\n		{/exp:channel:entries}\n{embed="includes/footer"}', NULL, 1439572162, 1, 'n', 0, '', 'n', 'n', 'o', 423, 'n'),
(17, 1, 1, 'redsocial', 'y', 'webpage', '		<section id="comparte" class="bg-gray pb-70">\n		  <div class="container">\n			<h1 class="section-title text-gray text-center mt-42">Únete en las redes</h1>\n		  </div>\n		  <div class="container flex-middle">\n			<div id="share-grid" class="grid-list grid-list-4 grid-list-2-sm grid-list-1-xs">\n			  <a href="https://www.facebook.com/respeto.pe" target="_blank" class="grid-list-item" >\n				<h3 class="network-name">Facebook</h3>\n				<div class="share-icon"><i class="icon-facebook"></i></div>\n				<div class="overlay bg-facebook"></div>\n			  </a>\n			  <a href="http://www.twitter.com/respeto_pe" target="_blank" class="grid-list-item">\n				<h3 class="network-name">Twitter</h3>\n				<div class="share-icon"><i class="icon-twitter"></i></div>\n				<div class="overlay bg-twitter"></div>\n			  </a>\n			  <a href="#" class="grid-list-item">\n				<h3 class="network-name">Youtube</h3>\n				<div class="share-icon"><i class="icon-linkedin"></i></div>\n				<div class="overlay bg-youtube"></div>\n			  </a>\n			</div>\n		  </div>\n		</section>', NULL, 1439589066, 1, 'n', 0, '', 'n', 'n', 'o', 0, 'n'),
(18, 1, 1, 'caricaturas', 'y', 'webpage', '					{exp:channel:entries channel="caricaturas" limit="20"}\n					<li>\n					  <img src="{imagen_caricaturas}" />\n					</li>\n					{/exp:channel:entries}', '', 1439590195, 1, 'n', 0, '', 'n', 'n', 'o', 0, 'n'),
(21, 1, 10, 'index', 'y', 'webpage', '', '', 1441819063, 1, 'n', 0, '', 'n', 'n', 'o', 3, 'n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_template_groups`
--

CREATE TABLE IF NOT EXISTS `exp_template_groups` (
  `group_id` int(6) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `group_order` int(3) unsigned NOT NULL,
  `is_site_default` char(1) NOT NULL DEFAULT 'n'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_template_groups`
--

INSERT INTO `exp_template_groups` (`group_id`, `site_id`, `group_name`, `group_order`, `is_site_default`) VALUES
(1, 1, 'includes', 1, 'n'),
(2, 1, 'content', 2, 'y'),
(3, 1, 'nosotros', 3, 'n'),
(4, 1, 'investigacion', 4, 'n'),
(5, 1, 'novedades', 5, 'n'),
(6, 1, 'costo-beneficio', 6, 'n'),
(7, 1, 'plaza-bolivar', 7, 'n'),
(9, 1, 'policy-notes', 8, 'n'),
(10, 1, 'caricaturas', 9, 'n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_template_member_groups`
--

CREATE TABLE IF NOT EXISTS `exp_template_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `template_group_id` mediumint(5) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_template_no_access`
--

CREATE TABLE IF NOT EXISTS `exp_template_no_access` (
  `template_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_template_routes`
--

CREATE TABLE IF NOT EXISTS `exp_template_routes` (
  `route_id` int(10) unsigned NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `route` varchar(512) DEFAULT NULL,
  `route_parsed` varchar(512) DEFAULT NULL,
  `route_required` char(1) NOT NULL DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_throttle`
--

CREATE TABLE IF NOT EXISTS `exp_throttle` (
  `throttle_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL,
  `locked_out` char(1) NOT NULL DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_upload_no_access`
--

CREATE TABLE IF NOT EXISTS `exp_upload_no_access` (
  `upload_id` int(6) unsigned NOT NULL,
  `upload_loc` varchar(3) NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exp_upload_prefs`
--

CREATE TABLE IF NOT EXISTS `exp_upload_prefs` (
  `id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `server_path` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL,
  `allowed_types` varchar(3) NOT NULL DEFAULT 'img',
  `max_size` varchar(16) DEFAULT NULL,
  `max_height` varchar(6) DEFAULT NULL,
  `max_width` varchar(6) DEFAULT NULL,
  `properties` varchar(120) DEFAULT NULL,
  `pre_format` varchar(120) DEFAULT NULL,
  `post_format` varchar(120) DEFAULT NULL,
  `file_properties` varchar(120) DEFAULT NULL,
  `file_pre_format` varchar(120) DEFAULT NULL,
  `file_post_format` varchar(120) DEFAULT NULL,
  `cat_group` varchar(255) DEFAULT NULL,
  `batch_location` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `exp_upload_prefs`
--

INSERT INTO `exp_upload_prefs` (`id`, `site_id`, `name`, `server_path`, `url`, `allowed_types`, `max_size`, `max_height`, `max_width`, `properties`, `pre_format`, `post_format`, `file_properties`, `file_pre_format`, `file_post_format`, `cat_group`, `batch_location`) VALUES
(1, 1, 'Homepage', '/var/www/html/images/homepage/', 'http://104.236.244.65/images/homepage/', 'all', '', '', '', '', '', '', '', '', '', '', NULL),
(2, 1, 'Caricaturas', '/var/www/html/images/caricaturas/', 'http://104.236.244.65/images/caricaturas/', 'img', '', '', '', '', '', '', '', '', '', '', NULL),
(3, 1, 'images', '/var/www/html/', 'http://respeto.pe/', 'img', '', '', '', '', '', '', '', '', '', '', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `exp_accessories`
--
ALTER TABLE `exp_accessories`
  ADD PRIMARY KEY (`accessory_id`);

--
-- Indices de la tabla `exp_actions`
--
ALTER TABLE `exp_actions`
  ADD PRIMARY KEY (`action_id`);

--
-- Indices de la tabla `exp_captcha`
--
ALTER TABLE `exp_captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indices de la tabla `exp_categories`
--
ALTER TABLE `exp_categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `cat_name` (`cat_name`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_category_fields`
--
ALTER TABLE `exp_category_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indices de la tabla `exp_category_field_data`
--
ALTER TABLE `exp_category_field_data`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indices de la tabla `exp_category_groups`
--
ALTER TABLE `exp_category_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_category_posts`
--
ALTER TABLE `exp_category_posts`
  ADD PRIMARY KEY (`entry_id`,`cat_id`);

--
-- Indices de la tabla `exp_channels`
--
ALTER TABLE `exp_channels`
  ADD PRIMARY KEY (`channel_id`),
  ADD KEY `cat_group` (`cat_group`),
  ADD KEY `status_group` (`status_group`),
  ADD KEY `field_group` (`field_group`),
  ADD KEY `channel_name` (`channel_name`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_channel_data`
--
ALTER TABLE `exp_channel_data`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `channel_id` (`channel_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_channel_entries_autosave`
--
ALTER TABLE `exp_channel_entries_autosave`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `channel_id` (`channel_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `url_title` (`url_title`),
  ADD KEY `status` (`status`),
  ADD KEY `entry_date` (`entry_date`),
  ADD KEY `expiration_date` (`expiration_date`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_channel_fields`
--
ALTER TABLE `exp_channel_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `field_type` (`field_type`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_channel_form_settings`
--
ALTER TABLE `exp_channel_form_settings`
  ADD PRIMARY KEY (`channel_form_settings_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Indices de la tabla `exp_channel_images`
--
ALTER TABLE `exp_channel_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `entry_id` (`entry_id`);

--
-- Indices de la tabla `exp_channel_member_groups`
--
ALTER TABLE `exp_channel_member_groups`
  ADD PRIMARY KEY (`group_id`,`channel_id`);

--
-- Indices de la tabla `exp_channel_titles`
--
ALTER TABLE `exp_channel_titles`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `channel_id` (`channel_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `url_title` (`url_title`),
  ADD KEY `status` (`status`),
  ADD KEY `entry_date` (`entry_date`),
  ADD KEY `expiration_date` (`expiration_date`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_comments`
--
ALTER TABLE `exp_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `channel_id` (`channel_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `status` (`status`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `comment_date_idx` (`comment_date`);

--
-- Indices de la tabla `exp_comment_subscriptions`
--
ALTER TABLE `exp_comment_subscriptions`
  ADD PRIMARY KEY (`subscription_id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indices de la tabla `exp_content_types`
--
ALTER TABLE `exp_content_types`
  ADD PRIMARY KEY (`content_type_id`),
  ADD KEY `name` (`name`);

--
-- Indices de la tabla `exp_cp_log`
--
ALTER TABLE `exp_cp_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_cp_search_index`
--
ALTER TABLE `exp_cp_search_index`
  ADD PRIMARY KEY (`search_id`),
  ADD FULLTEXT KEY `keywords` (`keywords`);

--
-- Indices de la tabla `exp_developer_log`
--
ALTER TABLE `exp_developer_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indices de la tabla `exp_email_cache`
--
ALTER TABLE `exp_email_cache`
  ADD PRIMARY KEY (`cache_id`);

--
-- Indices de la tabla `exp_email_cache_mg`
--
ALTER TABLE `exp_email_cache_mg`
  ADD PRIMARY KEY (`cache_id`,`group_id`);

--
-- Indices de la tabla `exp_email_cache_ml`
--
ALTER TABLE `exp_email_cache_ml`
  ADD PRIMARY KEY (`cache_id`,`list_id`);

--
-- Indices de la tabla `exp_email_console_cache`
--
ALTER TABLE `exp_email_console_cache`
  ADD PRIMARY KEY (`cache_id`);

--
-- Indices de la tabla `exp_entry_versioning`
--
ALTER TABLE `exp_entry_versioning`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `entry_id` (`entry_id`);

--
-- Indices de la tabla `exp_extensions`
--
ALTER TABLE `exp_extensions`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indices de la tabla `exp_fieldtypes`
--
ALTER TABLE `exp_fieldtypes`
  ADD PRIMARY KEY (`fieldtype_id`);

--
-- Indices de la tabla `exp_field_formatting`
--
ALTER TABLE `exp_field_formatting`
  ADD PRIMARY KEY (`formatting_id`);

--
-- Indices de la tabla `exp_field_groups`
--
ALTER TABLE `exp_field_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_files`
--
ALTER TABLE `exp_files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `upload_location_id` (`upload_location_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_file_categories`
--
ALTER TABLE `exp_file_categories`
  ADD KEY `file_id` (`file_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indices de la tabla `exp_file_dimensions`
--
ALTER TABLE `exp_file_dimensions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_location_id` (`upload_location_id`);

--
-- Indices de la tabla `exp_file_watermarks`
--
ALTER TABLE `exp_file_watermarks`
  ADD PRIMARY KEY (`wm_id`);

--
-- Indices de la tabla `exp_freeform_composer_layouts`
--
ALTER TABLE `exp_freeform_composer_layouts`
  ADD PRIMARY KEY (`composer_id`),
  ADD KEY `preview` (`preview`);

--
-- Indices de la tabla `exp_freeform_composer_templates`
--
ALTER TABLE `exp_freeform_composer_templates`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `template_name` (`template_name`);

--
-- Indices de la tabla `exp_freeform_email_logs`
--
ALTER TABLE `exp_freeform_email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `exp_freeform_fields`
--
ALTER TABLE `exp_freeform_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `field_name` (`field_name`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_freeform_fieldtypes`
--
ALTER TABLE `exp_freeform_fieldtypes`
  ADD PRIMARY KEY (`fieldtype_id`),
  ADD KEY `fieldtype_name` (`fieldtype_name`);

--
-- Indices de la tabla `exp_freeform_file_uploads`
--
ALTER TABLE `exp_freeform_file_uploads`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `entry_id` (`entry_id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `extension` (`extension`);

--
-- Indices de la tabla `exp_freeform_forms`
--
ALTER TABLE `exp_freeform_forms`
  ADD PRIMARY KEY (`form_id`),
  ADD KEY `form_name` (`form_name`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_freeform_form_entries_1`
--
ALTER TABLE `exp_freeform_form_entries_1`
  ADD PRIMARY KEY (`entry_id`);

--
-- Indices de la tabla `exp_freeform_multipage_hashes`
--
ALTER TABLE `exp_freeform_multipage_hashes`
  ADD PRIMARY KEY (`hash_id`),
  ADD KEY `hash` (`hash`),
  ADD KEY `ip_address` (`ip_address`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_freeform_notification_templates`
--
ALTER TABLE `exp_freeform_notification_templates`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `notification_name` (`notification_name`);

--
-- Indices de la tabla `exp_freeform_params`
--
ALTER TABLE `exp_freeform_params`
  ADD PRIMARY KEY (`params_id`),
  ADD KEY `entry_date` (`entry_date`);

--
-- Indices de la tabla `exp_freeform_preferences`
--
ALTER TABLE `exp_freeform_preferences`
  ADD PRIMARY KEY (`preference_id`),
  ADD KEY `preference_name` (`preference_name`);

--
-- Indices de la tabla `exp_freeform_user_email`
--
ALTER TABLE `exp_freeform_user_email`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `ip_address` (`ip_address`);

--
-- Indices de la tabla `exp_global_variables`
--
ALTER TABLE `exp_global_variables`
  ADD PRIMARY KEY (`variable_id`),
  ADD KEY `variable_name` (`variable_name`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_grid_columns`
--
ALTER TABLE `exp_grid_columns`
  ADD PRIMARY KEY (`col_id`),
  ADD KEY `field_id` (`field_id`);

--
-- Indices de la tabla `exp_html_buttons`
--
ALTER TABLE `exp_html_buttons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_importer_batches`
--
ALTER TABLE `exp_importer_batches`
  ADD PRIMARY KEY (`batch_id`),
  ADD KEY `profile_id` (`profile_id`),
  ADD KEY `batch_hash` (`batch_hash`);

--
-- Indices de la tabla `exp_importer_batch_data`
--
ALTER TABLE `exp_importer_batch_data`
  ADD KEY `profile_id` (`profile_id`),
  ADD KEY `batch_hash` (`batch_hash`),
  ADD KEY `batch_number` (`batch_number`);

--
-- Indices de la tabla `exp_importer_log`
--
ALTER TABLE `exp_importer_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `profile_id` (`profile_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indices de la tabla `exp_importer_profiles`
--
ALTER TABLE `exp_importer_profiles`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_importer_profile_settings`
--
ALTER TABLE `exp_importer_profile_settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD KEY `site_id` (`profile_id`);

--
-- Indices de la tabla `exp_layout_publish`
--
ALTER TABLE `exp_layout_publish`
  ADD PRIMARY KEY (`layout_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `member_group` (`member_group`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Indices de la tabla `exp_members`
--
ALTER TABLE `exp_members`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `unique_id` (`unique_id`),
  ADD KEY `password` (`password`);

--
-- Indices de la tabla `exp_member_bulletin_board`
--
ALTER TABLE `exp_member_bulletin_board`
  ADD PRIMARY KEY (`bulletin_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `hash` (`hash`);

--
-- Indices de la tabla `exp_member_data`
--
ALTER TABLE `exp_member_data`
  ADD PRIMARY KEY (`member_id`);

--
-- Indices de la tabla `exp_member_fields`
--
ALTER TABLE `exp_member_fields`
  ADD PRIMARY KEY (`m_field_id`);

--
-- Indices de la tabla `exp_member_groups`
--
ALTER TABLE `exp_member_groups`
  ADD PRIMARY KEY (`group_id`,`site_id`);

--
-- Indices de la tabla `exp_member_homepage`
--
ALTER TABLE `exp_member_homepage`
  ADD PRIMARY KEY (`member_id`);

--
-- Indices de la tabla `exp_member_search`
--
ALTER TABLE `exp_member_search`
  ADD PRIMARY KEY (`search_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_message_attachments`
--
ALTER TABLE `exp_message_attachments`
  ADD PRIMARY KEY (`attachment_id`);

--
-- Indices de la tabla `exp_message_copies`
--
ALTER TABLE `exp_message_copies`
  ADD PRIMARY KEY (`copy_id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `recipient_id` (`recipient_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indices de la tabla `exp_message_data`
--
ALTER TABLE `exp_message_data`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indices de la tabla `exp_message_folders`
--
ALTER TABLE `exp_message_folders`
  ADD PRIMARY KEY (`member_id`);

--
-- Indices de la tabla `exp_message_listed`
--
ALTER TABLE `exp_message_listed`
  ADD PRIMARY KEY (`listed_id`);

--
-- Indices de la tabla `exp_metaweblog_api`
--
ALTER TABLE `exp_metaweblog_api`
  ADD PRIMARY KEY (`metaweblog_id`);

--
-- Indices de la tabla `exp_modules`
--
ALTER TABLE `exp_modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indices de la tabla `exp_module_member_groups`
--
ALTER TABLE `exp_module_member_groups`
  ADD PRIMARY KEY (`group_id`,`module_id`);

--
-- Indices de la tabla `exp_nsm_addon_settings`
--
ALTER TABLE `exp_nsm_addon_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `exp_online_users`
--
ALTER TABLE `exp_online_users`
  ADD PRIMARY KEY (`online_id`),
  ADD KEY `date` (`date`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_pages_configuration`
--
ALTER TABLE `exp_pages_configuration`
  ADD PRIMARY KEY (`configuration_id`);

--
-- Indices de la tabla `exp_password_lockout`
--
ALTER TABLE `exp_password_lockout`
  ADD PRIMARY KEY (`lockout_id`),
  ADD KEY `login_date` (`login_date`),
  ADD KEY `ip_address` (`ip_address`),
  ADD KEY `user_agent` (`user_agent`);

--
-- Indices de la tabla `exp_referrers`
--
ALTER TABLE `exp_referrers`
  ADD PRIMARY KEY (`ref_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_relationships`
--
ALTER TABLE `exp_relationships`
  ADD PRIMARY KEY (`relationship_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `child_id` (`child_id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `grid_row_id` (`grid_row_id`);

--
-- Indices de la tabla `exp_remember_me`
--
ALTER TABLE `exp_remember_me`
  ADD PRIMARY KEY (`remember_me_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indices de la tabla `exp_reset_password`
--
ALTER TABLE `exp_reset_password`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indices de la tabla `exp_revision_tracker`
--
ALTER TABLE `exp_revision_tracker`
  ADD PRIMARY KEY (`tracker_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indices de la tabla `exp_rte_tools`
--
ALTER TABLE `exp_rte_tools`
  ADD PRIMARY KEY (`tool_id`),
  ADD KEY `enabled` (`enabled`);

--
-- Indices de la tabla `exp_rte_toolsets`
--
ALTER TABLE `exp_rte_toolsets`
  ADD PRIMARY KEY (`toolset_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `enabled` (`enabled`);

--
-- Indices de la tabla `exp_search`
--
ALTER TABLE `exp_search`
  ADD PRIMARY KEY (`search_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_search_log`
--
ALTER TABLE `exp_search_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_security_hashes`
--
ALTER TABLE `exp_security_hashes`
  ADD PRIMARY KEY (`hash_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `exp_sessions`
--
ALTER TABLE `exp_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indices de la tabla `exp_sites`
--
ALTER TABLE `exp_sites`
  ADD PRIMARY KEY (`site_id`),
  ADD KEY `site_name` (`site_name`);

--
-- Indices de la tabla `exp_snippets`
--
ALTER TABLE `exp_snippets`
  ADD PRIMARY KEY (`snippet_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_specialty_templates`
--
ALTER TABLE `exp_specialty_templates`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `template_name` (`template_name`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_stats`
--
ALTER TABLE `exp_stats`
  ADD PRIMARY KEY (`stat_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_statuses`
--
ALTER TABLE `exp_statuses`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_status_groups`
--
ALTER TABLE `exp_status_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_status_no_access`
--
ALTER TABLE `exp_status_no_access`
  ADD PRIMARY KEY (`status_id`,`member_group`);

--
-- Indices de la tabla `exp_templates`
--
ALTER TABLE `exp_templates`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `template_name` (`template_name`),
  ADD KEY `site_id` (`site_id`);

--
-- Indices de la tabla `exp_template_groups`
--
ALTER TABLE `exp_template_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `site_id` (`site_id`),
  ADD KEY `group_name_idx` (`group_name`),
  ADD KEY `group_order_idx` (`group_order`);

--
-- Indices de la tabla `exp_template_member_groups`
--
ALTER TABLE `exp_template_member_groups`
  ADD PRIMARY KEY (`group_id`,`template_group_id`);

--
-- Indices de la tabla `exp_template_no_access`
--
ALTER TABLE `exp_template_no_access`
  ADD PRIMARY KEY (`template_id`,`member_group`);

--
-- Indices de la tabla `exp_template_routes`
--
ALTER TABLE `exp_template_routes`
  ADD PRIMARY KEY (`route_id`),
  ADD KEY `template_id` (`template_id`);

--
-- Indices de la tabla `exp_throttle`
--
ALTER TABLE `exp_throttle`
  ADD PRIMARY KEY (`throttle_id`),
  ADD KEY `ip_address` (`ip_address`),
  ADD KEY `last_activity` (`last_activity`);

--
-- Indices de la tabla `exp_upload_no_access`
--
ALTER TABLE `exp_upload_no_access`
  ADD PRIMARY KEY (`upload_id`,`member_group`);

--
-- Indices de la tabla `exp_upload_prefs`
--
ALTER TABLE `exp_upload_prefs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_id` (`site_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `exp_accessories`
--
ALTER TABLE `exp_accessories`
  MODIFY `accessory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `exp_actions`
--
ALTER TABLE `exp_actions`
  MODIFY `action_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `exp_captcha`
--
ALTER TABLE `exp_captcha`
  MODIFY `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_categories`
--
ALTER TABLE `exp_categories`
  MODIFY `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_category_fields`
--
ALTER TABLE `exp_category_fields`
  MODIFY `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_category_groups`
--
ALTER TABLE `exp_category_groups`
  MODIFY `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_channels`
--
ALTER TABLE `exp_channels`
  MODIFY `channel_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `exp_channel_entries_autosave`
--
ALTER TABLE `exp_channel_entries_autosave`
  MODIFY `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `exp_channel_fields`
--
ALTER TABLE `exp_channel_fields`
  MODIFY `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT de la tabla `exp_channel_form_settings`
--
ALTER TABLE `exp_channel_form_settings`
  MODIFY `channel_form_settings_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_channel_images`
--
ALTER TABLE `exp_channel_images`
  MODIFY `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `exp_channel_titles`
--
ALTER TABLE `exp_channel_titles`
  MODIFY `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=186;
--
-- AUTO_INCREMENT de la tabla `exp_comments`
--
ALTER TABLE `exp_comments`
  MODIFY `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_comment_subscriptions`
--
ALTER TABLE `exp_comment_subscriptions`
  MODIFY `subscription_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_content_types`
--
ALTER TABLE `exp_content_types`
  MODIFY `content_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `exp_cp_log`
--
ALTER TABLE `exp_cp_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT de la tabla `exp_cp_search_index`
--
ALTER TABLE `exp_cp_search_index`
  MODIFY `search_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_developer_log`
--
ALTER TABLE `exp_developer_log`
  MODIFY `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_email_cache`
--
ALTER TABLE `exp_email_cache`
  MODIFY `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_email_console_cache`
--
ALTER TABLE `exp_email_console_cache`
  MODIFY `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_entry_versioning`
--
ALTER TABLE `exp_entry_versioning`
  MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_extensions`
--
ALTER TABLE `exp_extensions`
  MODIFY `extension_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `exp_fieldtypes`
--
ALTER TABLE `exp_fieldtypes`
  MODIFY `fieldtype_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `exp_field_formatting`
--
ALTER TABLE `exp_field_formatting`
  MODIFY `formatting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT de la tabla `exp_field_groups`
--
ALTER TABLE `exp_field_groups`
  MODIFY `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `exp_files`
--
ALTER TABLE `exp_files`
  MODIFY `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT de la tabla `exp_file_dimensions`
--
ALTER TABLE `exp_file_dimensions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_file_watermarks`
--
ALTER TABLE `exp_file_watermarks`
  MODIFY `wm_id` int(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_composer_layouts`
--
ALTER TABLE `exp_freeform_composer_layouts`
  MODIFY `composer_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_composer_templates`
--
ALTER TABLE `exp_freeform_composer_templates`
  MODIFY `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_email_logs`
--
ALTER TABLE `exp_freeform_email_logs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_fields`
--
ALTER TABLE `exp_freeform_fields`
  MODIFY `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_fieldtypes`
--
ALTER TABLE `exp_freeform_fieldtypes`
  MODIFY `fieldtype_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_file_uploads`
--
ALTER TABLE `exp_freeform_file_uploads`
  MODIFY `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_forms`
--
ALTER TABLE `exp_freeform_forms`
  MODIFY `form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_form_entries_1`
--
ALTER TABLE `exp_freeform_form_entries_1`
  MODIFY `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_multipage_hashes`
--
ALTER TABLE `exp_freeform_multipage_hashes`
  MODIFY `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_notification_templates`
--
ALTER TABLE `exp_freeform_notification_templates`
  MODIFY `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_params`
--
ALTER TABLE `exp_freeform_params`
  MODIFY `params_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_preferences`
--
ALTER TABLE `exp_freeform_preferences`
  MODIFY `preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `exp_freeform_user_email`
--
ALTER TABLE `exp_freeform_user_email`
  MODIFY `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_global_variables`
--
ALTER TABLE `exp_global_variables`
  MODIFY `variable_id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_grid_columns`
--
ALTER TABLE `exp_grid_columns`
  MODIFY `col_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_html_buttons`
--
ALTER TABLE `exp_html_buttons`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `exp_importer_batches`
--
ALTER TABLE `exp_importer_batches`
  MODIFY `batch_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `exp_importer_log`
--
ALTER TABLE `exp_importer_log`
  MODIFY `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `exp_importer_profiles`
--
ALTER TABLE `exp_importer_profiles`
  MODIFY `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `exp_importer_profile_settings`
--
ALTER TABLE `exp_importer_profile_settings`
  MODIFY `setting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `exp_layout_publish`
--
ALTER TABLE `exp_layout_publish`
  MODIFY `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `exp_members`
--
ALTER TABLE `exp_members`
  MODIFY `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `exp_member_bulletin_board`
--
ALTER TABLE `exp_member_bulletin_board`
  MODIFY `bulletin_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_member_fields`
--
ALTER TABLE `exp_member_fields`
  MODIFY `m_field_id` int(4) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_message_attachments`
--
ALTER TABLE `exp_message_attachments`
  MODIFY `attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_message_copies`
--
ALTER TABLE `exp_message_copies`
  MODIFY `copy_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_message_data`
--
ALTER TABLE `exp_message_data`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_message_listed`
--
ALTER TABLE `exp_message_listed`
  MODIFY `listed_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_metaweblog_api`
--
ALTER TABLE `exp_metaweblog_api`
  MODIFY `metaweblog_id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `exp_modules`
--
ALTER TABLE `exp_modules`
  MODIFY `module_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `exp_nsm_addon_settings`
--
ALTER TABLE `exp_nsm_addon_settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `exp_online_users`
--
ALTER TABLE `exp_online_users`
  MODIFY `online_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8790;
--
-- AUTO_INCREMENT de la tabla `exp_pages_configuration`
--
ALTER TABLE `exp_pages_configuration`
  MODIFY `configuration_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_password_lockout`
--
ALTER TABLE `exp_password_lockout`
  MODIFY `lockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `exp_referrers`
--
ALTER TABLE `exp_referrers`
  MODIFY `ref_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=534;
--
-- AUTO_INCREMENT de la tabla `exp_relationships`
--
ALTER TABLE `exp_relationships`
  MODIFY `relationship_id` int(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_reset_password`
--
ALTER TABLE `exp_reset_password`
  MODIFY `reset_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_revision_tracker`
--
ALTER TABLE `exp_revision_tracker`
  MODIFY `tracker_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_rte_tools`
--
ALTER TABLE `exp_rte_tools`
  MODIFY `tool_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `exp_rte_toolsets`
--
ALTER TABLE `exp_rte_toolsets`
  MODIFY `toolset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `exp_search_log`
--
ALTER TABLE `exp_search_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_security_hashes`
--
ALTER TABLE `exp_security_hashes`
  MODIFY `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT de la tabla `exp_sites`
--
ALTER TABLE `exp_sites`
  MODIFY `site_id` int(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `exp_snippets`
--
ALTER TABLE `exp_snippets`
  MODIFY `snippet_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_specialty_templates`
--
ALTER TABLE `exp_specialty_templates`
  MODIFY `template_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `exp_stats`
--
ALTER TABLE `exp_stats`
  MODIFY `stat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `exp_statuses`
--
ALTER TABLE `exp_statuses`
  MODIFY `status_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `exp_status_groups`
--
ALTER TABLE `exp_status_groups`
  MODIFY `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `exp_templates`
--
ALTER TABLE `exp_templates`
  MODIFY `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `exp_template_groups`
--
ALTER TABLE `exp_template_groups`
  MODIFY `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `exp_template_routes`
--
ALTER TABLE `exp_template_routes`
  MODIFY `route_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_throttle`
--
ALTER TABLE `exp_throttle`
  MODIFY `throttle_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `exp_upload_prefs`
--
ALTER TABLE `exp_upload_prefs`
  MODIFY `id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
