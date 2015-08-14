-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: exp
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `exp_accessories`
--

DROP TABLE IF EXISTS `exp_accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_accessories` (
  `accessory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(75) NOT NULL DEFAULT '',
  `member_groups` varchar(255) NOT NULL DEFAULT 'all',
  `controllers` text,
  `accessory_version` varchar(12) NOT NULL,
  PRIMARY KEY (`accessory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_accessories`
--

LOCK TABLES `exp_accessories` WRITE;
/*!40000 ALTER TABLE `exp_accessories` DISABLE KEYS */;
INSERT INTO `exp_accessories` VALUES (1,'Expressionengine_info_acc','1|5','myaccount|admin_system|tools_logs|addons_modules|admin_content|content_edit|tools_utilities|addons_extensions|members|content|tools|addons_plugins|addons_accessories|addons_fieldtypes|content_files|homepage|tools_communicate|tools_data|content_publish|addons|content_files_modal|design','1.0'),(2,'Nsm_morphine_theme_acc','1|5','myaccount|admin_system|tools_logs|addons_modules|admin_content|content_edit|tools_utilities|addons_extensions|members|content|tools|addons_plugins|addons_accessories|addons_fieldtypes|content_files|homepage|tools_communicate|tools_data|content_publish|addons|content_files_modal|design','2.0.4');
/*!40000 ALTER TABLE `exp_accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_actions`
--

DROP TABLE IF EXISTS `exp_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_actions` (
  `action_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `csrf_exempt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_actions`
--

LOCK TABLES `exp_actions` WRITE;
/*!40000 ALTER TABLE `exp_actions` DISABLE KEYS */;
INSERT INTO `exp_actions` VALUES (1,'Comment','insert_new_comment',0),(2,'Comment_mcp','delete_comment_notification',0),(3,'Comment','comment_subscribe',0),(4,'Comment','edit_comment',0),(5,'Metaweblog_api','incoming',1),(6,'Search','do_search',1),(7,'Channel','submit_entry',0),(8,'Channel','filemanager_endpoint',0),(9,'Channel','smiley_pop',0),(10,'Channel','combo_loader',0),(11,'Rte','get_js',0);
/*!40000 ALTER TABLE `exp_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_captcha`
--

DROP TABLE IF EXISTS `exp_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_captcha`
--

LOCK TABLES `exp_captcha` WRITE;
/*!40000 ALTER TABLE `exp_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_categories`
--

DROP TABLE IF EXISTS `exp_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(6) unsigned NOT NULL,
  `parent_id` int(4) unsigned NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_url_title` varchar(75) NOT NULL,
  `cat_description` text,
  `cat_image` varchar(120) DEFAULT NULL,
  `cat_order` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `group_id` (`group_id`),
  KEY `cat_name` (`cat_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_categories`
--

LOCK TABLES `exp_categories` WRITE;
/*!40000 ALTER TABLE `exp_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_field_data`
--

DROP TABLE IF EXISTS `exp_category_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_field_data` (
  `cat_id` int(4) unsigned NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_field_data`
--

LOCK TABLES `exp_category_field_data` WRITE;
/*!40000 ALTER TABLE `exp_category_field_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_field_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_fields`
--

DROP TABLE IF EXISTS `exp_category_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
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
  `field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`field_id`),
  KEY `site_id` (`site_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_fields`
--

LOCK TABLES `exp_category_fields` WRITE;
/*!40000 ALTER TABLE `exp_category_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_groups`
--

DROP TABLE IF EXISTS `exp_category_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `sort_order` char(1) NOT NULL DEFAULT 'a',
  `exclude_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_html_formatting` char(4) NOT NULL DEFAULT 'all',
  `can_edit_categories` text,
  `can_delete_categories` text,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_groups`
--

LOCK TABLES `exp_category_groups` WRITE;
/*!40000 ALTER TABLE `exp_category_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_category_posts`
--

DROP TABLE IF EXISTS `exp_category_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_category_posts` (
  `entry_id` int(10) unsigned NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_category_posts`
--

LOCK TABLES `exp_category_posts` WRITE;
/*!40000 ALTER TABLE `exp_category_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_category_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_data`
--

DROP TABLE IF EXISTS `exp_channel_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_data` (
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
  `field_id_25` text,
  `field_ft_25` tinytext,
  `field_id_26` text,
  `field_ft_26` tinytext,
  `field_id_27` text,
  `field_ft_27` tinytext,
  `field_id_28` text,
  `field_ft_28` tinytext,
  `field_id_29` text,
  `field_ft_29` tinytext,
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
  `field_id_41` text,
  `field_ft_41` tinytext,
  `field_id_42` text,
  `field_ft_42` tinytext,
  `field_id_43` text,
  `field_ft_43` tinytext,
  `field_id_44` text,
  `field_ft_44` tinytext,
  `field_id_45` text,
  `field_ft_45` tinytext,
  `field_id_46` text,
  `field_ft_46` tinytext,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_data`
--

LOCK TABLES `exp_channel_data` WRITE;
/*!40000 ALTER TABLE `exp_channel_data` DISABLE KEYS */;
INSERT INTO `exp_channel_data` VALUES (1,1,1,'Contribuyentes por Respeto es una asociación ciudadana independiente formada por un grupo de contribuyentes que comparte una misma visión de Estado. Buscamos y promovemos decisiones públicas basadas en los principios de libertad individual (social, política y económica), responsabilidad personal, mercados competitivos, y Estado de Derecho, porque estamos convencidos que ésta es la receta que trae mayor bienestar para los peruanos. ','none','Primis maiorum mel ei, impedit eligendi forensibus qui ea, virtute definitiones nam id. Ut pri vivendo forensibus, eos et erant mucius invenire. Cu doming nostro quaeque eam. Te eum error option, eum enim volutpat no, pro no duis constituam.','none','Primis maiorum mel ei, impedit eligendi forensibus qui ea, virtute definitiones nam id. Ut pri vivendo forensibus, eos et erant mucius invenire. Cu doming nostro quaeque eam. Te eum error option, eum enim volutpat no, pro no duis constituam.','none','Primis maiorum mel ei, impedit eligendi forensibus qui ea, virtute definitiones nam id. Ut pri vivendo forensibus, eos et erant mucius invenire. Cu doming nostro quaeque eam. Te eum error option, eum enim volutpat no, pro no duis constituam.','none','{filedir_1}contribuyente_home.jpg','none','Asociación del contribuyentes del Perú','none','Interés Público bajo principios liberales','none','{filedir_1}costo_beneficio.jpg','none','{filedir_1}plaza_bolivar.jpg','none','Primis maiorum mel ei, impedit eligendi forensibus qui ea, virtute definitiones nam id. Ut pri vivendo forensibus, eos et erant mucius invenire. Cu doming nostro quaeque eam. Te eum error option, eum enim volutpat no, pro no duis constituam.','none','Primis maiorum mel ei, impedit eligendi forensibus qui ea, virtute definitiones nam id. Ut pri vivendo forensibus, eos et erant mucius invenire. Cu doming nostro quaeque eam. Te eum error option, eum enim volutpat no, pro no duis constituam.','none','Primis maiorum mel ei, impedit eligendi forensibus qui ea, virtute definitiones nam id. Ut pri vivendo forensibus, eos et erant mucius invenire. Cu doming nostro quaeque eam. Te eum error option, eum enim volutpat no, pro no duis constituam.','none','Primis maiorum mel ei, impedit eligendi forensibus qui ea, virtute definitiones nam id. Ut pri vivendo forensibus, eos et erant mucius invenire. Cu doming nostro quaeque eam. Te eum error option, eum enim volutpat no, pro no duis constituam.','none','','none','','none','','none','','none','','br','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none'),(3,1,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{filedir_1}photo-1421757295538-9c80958e75b0.jpg','none','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In condimentum libero et sapien fermentum porttitor. Proin efficitur eros vel placerat ultricies.','none','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In condimentum libero et sapien fermentum porttitor. Proin efficitur eros vel placerat ultricies. Sed interdum, libero eu maximus porttitor, purus ipsum accumsan ante, vel vehicula arcu nisl vitae quam. Fusce libero leo, tempus at sagittis eu, fermentum eget quam. Proin in nulla lorem. Integer vel dictum tortor, id commodo ex. Aenean accumsan facilisis vehicula. Sed vulputate pretium nisl hendrerit bibendum. Sed sed tortor tincidunt mauris mollis sagittis aliquam ac magna. Pellentesque hendrerit eros sit amet placerat congue. Sed sagittis fermentum aliquam. Pellentesque faucibus vestibulum arcu, id fringilla urna aliquam sed. Phasellus dictum nunc ac tempus lobortis. Nam maximus orci metus, eu laoreet nisl viverra at. Sed dolor est, faucibus in justo id, vulputate molestie turpis.\n\nAenean tincidunt accumsan enim, at egestas lectus porttitor ut. Aliquam non turpis neque. Sed imperdiet ac lectus non commodo. Ut sapien dui, rhoncus eget rutrum et, interdum vel elit. Ut tincidunt leo ac nisi accumsan tempus. Donec facilisis euismod mattis. Mauris id laoreet quam. Sed elit magna, auctor ac sodales eget, convallis iaculis diam.\n\nPraesent varius, est id semper volutpat, leo libero volutpat dui, rhoncus condimentum diam lacus non turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras a magna vitae turpis placerat vestibulum id et metus. Aliquam sagittis id leo at venenatis. Integer id diam aliquam, consectetur ligula a, rhoncus ex. Quisque iaculis tortor sed dolor porttitor faucibus. Sed pellentesque sem purus, id sagittis ex gravida ut. Vivamus vitae dui vitae dui auctor dictum id in lorem.','br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none'),(2,1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{filedir_1}31709.png','none','Contribuyentes por Respeto busca... vivamus varius pretium ligula, a aliquam odio euismod sit amet. Quisque laoreet sem sit amet orci ullamcorper at ultricies metus viverra. Pellentes que arcu mauris, malesuada quis ornare accumsan,','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none'),(4,1,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{filedir_1}photo-1416339442236-8ceb164046f8.jpg','none','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In condimentum libero et sapien fermentum porttitor. ','none','Proin efficitur eros vel placerat ultricies. Sed interdum, libero eu maximus porttitor, purus ipsum accumsan ante, vel vehicula arcu nisl vitae quam. Fusce libero leo, tempus at sagittis eu, fermentum eget quam. Proin in nulla lorem. Integer vel dictum tortor, id commodo ex. Aenean accumsan facilisis vehicula. Sed vulputate pretium nisl hendrerit bibendum. Sed sed tortor tincidunt mauris mollis sagittis aliquam ac magna. Pellentesque hendrerit eros sit amet placerat congue. Sed sagittis fermentum aliquam. Pellentesque faucibus vestibulum arcu, id fringilla urna aliquam sed. Phasellus dictum nunc ac tempus lobortis. Nam maximus orci metus, eu laoreet nisl viverra at. Sed dolor est, faucibus in justo id, vulputate molestie turpis.\n\nAenean tincidunt accumsan enim, at egestas lectus porttitor ut. Aliquam non turpis neque. Sed imperdiet ac lectus non commodo. Ut sapien dui, rhoncus eget rutrum et, interdum vel elit. Ut tincidunt leo ac nisi accumsan tempus. Donec facilisis euismod mattis. Mauris id laoreet quam. Sed elit magna, auctor ac sodales eget, convallis iaculis diam.\n\nPraesent varius, est id semper volutpat, leo libero volutpat dui, rhoncus condimentum diam lacus non turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras a magna vitae turpis placerat vestibulum id et metus. Aliquam sagittis id leo at venenatis. Integer id diam aliquam, consectetur ligula a, rhoncus ex. Quisque iaculis tortor sed dolor porttitor faucibus. Sed pellentesque sem purus, id sagittis ex gravida ut. Vivamus vitae dui vitae dui auctor dictum id in lorem.','br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none'),(5,1,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{filedir_1}photo-1416862291207-4ca732144d83.jpg','none','Aenean tincidunt accumsan enim, at egestas lectus porttitor ut. Aliquam non turpis neque. Sed imperdiet ac lectus non commodo.','none','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In condimentum libero et sapien fermentum porttitor. Proin efficitur eros vel placerat ultricies. Sed interdum, libero eu maximus porttitor, purus ipsum accumsan ante, vel vehicula arcu nisl vitae quam. Fusce libero leo, tempus at sagittis eu, fermentum eget quam. Proin in nulla lorem. Integer vel dictum tortor, id commodo ex. Aenean accumsan facilisis vehicula. Sed vulputate pretium nisl hendrerit bibendum. Sed sed tortor tincidunt mauris mollis sagittis aliquam ac magna. Pellentesque hendrerit eros sit amet placerat congue. Sed sagittis fermentum aliquam. Pellentesque faucibus vestibulum arcu, id fringilla urna aliquam sed. Phasellus dictum nunc ac tempus lobortis. Nam maximus orci metus, eu laoreet nisl viverra at. Sed dolor est, faucibus in justo id, vulputate molestie turpis.\n\nAenean tincidunt accumsan enim, at egestas lectus porttitor ut. Aliquam non turpis neque. Sed imperdiet ac lectus non commodo. Ut sapien dui, rhoncus eget rutrum et, interdum vel elit. Ut tincidunt leo ac nisi accumsan tempus. Donec facilisis euismod mattis. Mauris id laoreet quam. Sed elit magna, auctor ac sodales eget, convallis iaculis diam.','br',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none'),(7,1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{filedir_1}31709.png','none','Contribuyentes por Respeto busca... vivamus varius pretium ligula, a aliquam odio euismod sit amet. Quisque laoreet sem sit amet orci ullamcorper at ultricies metus viverra. Pellentesque arcu mauris, malesuada quis ornare accumsan.','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none'),(8,1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{filedir_1}31709.png','none','Contribuyentes por Respeto busca... vivamus varius pretium ligula, a aliquam odio euismod sit amet. Quisque laoreet sem sit amet orci ullamcorper at ultricies metus viverra. Pellentesque arcu mauris, malesuada quis ornare accumsan.','none',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none','','none'),(9,1,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'{filedir_1}costo_beneficio.jpg','none','ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','none','{filedir_1}photo-1416339442236-8ceb164046f8.jpg','none','Titulo 1','none','Comtenido del blog sed do eiusmod tempor incididunt ut labore et dolore magna aliqua sit ame.','none','{filedir_1}photo-1416339276121-ba1dfa199912.jpg','none','Titulo del Blog 2','none','Comtenido del blog sed do eiusmod tempor incididunt ut labore et dolore magna aliqua sit ame.','none','{filedir_1}photo-1421757295538-9c80958e75b0.jpg','none','Titulo del Blog 3','none','Comtenido del blog sed do eiusmod tempor incididunt ut labore et dolore magna aliqua sit ame.','none','','none','','none','','none','','none','','none','','none');
/*!40000 ALTER TABLE `exp_channel_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_entries_autosave`
--

DROP TABLE IF EXISTS `exp_channel_entries_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_entries_autosave` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `entry_data` text,
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_entries_autosave`
--

LOCK TABLES `exp_channel_entries_autosave` WRITE;
/*!40000 ALTER TABLE `exp_channel_entries_autosave` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_entries_autosave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_fields`
--

DROP TABLE IF EXISTS `exp_channel_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_fields` (
  `field_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
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
  `field_settings` text,
  PRIMARY KEY (`field_id`),
  KEY `group_id` (`group_id`),
  KEY `field_type` (`field_type`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_fields`
--

LOCK TABLES `exp_channel_fields` WRITE;
/*!40000 ALTER TABLE `exp_channel_fields` DISABLE KEYS */;
INSERT INTO `exp_channel_fields` VALUES (1,1,1,'home_introduccion','Texto Introductorio del website','','textarea','','0',0,0,10,128,'n','ltr','n','n','none','n',1,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(2,1,1,'home_introduccin_investogacin','Introducción de Investogación','','textarea','','0',0,0,10,128,'n','ltr','n','n','none','n',2,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(3,1,1,'home_introduccion_costo_benefici','Introducción Costo Beneficio','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(4,1,1,'home_introduccin_plaza_bolivar','Introducción Plaza Bolivar','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(5,1,1,'imgen_hero','Imágen Hero','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',5,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(6,1,1,'home_titulo_hero','Título Hero','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',6,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(7,1,1,'home_subttulo_hero','Subtítulo Hero','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',7,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(8,1,1,'home_imagen_costo_beneficio','Imágen Costo Beneficio','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',8,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(9,1,1,'home_imagen_plaza_bolivar','Imágen Plaza Bolivar','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',9,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(10,1,1,'home_introduccion_caricaturas','Introducción Caricaturas','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',10,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(11,1,1,'home_introduccion_alianzas','Introducción Alianzas','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',11,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(12,1,1,'home_introduccion_novedades','Introducción Novedades','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',12,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(13,1,1,'home_introduccion_siguenos','Introducción Síguenos','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',13,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(14,1,2,'alianzas_imagen','Imagen','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(15,1,2,'alianzas_descripcion','Descripcion','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(16,1,3,'novedades_imagen','Imagen','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(17,1,3,'novedades_descripcion','Descripcion','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(18,1,3,'novedades_contenido','Contenido','','textarea','','0',0,0,6,128,'n','ltr','n','n','br','n',3,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(19,1,4,'area_imagen','Imagen','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(20,1,4,'area_descripcion','Descripcion','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(21,1,5,'equipo_imagen','Imagen','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(22,1,5,'equipo_descripcion','Descripcion','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(23,1,6,'asociados_imagen','Imagen','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjU6ImltYWdlIjtzOjE5OiJhbGxvd2VkX2RpcmVjdG9yaWVzIjtzOjE6IjEiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToieSI7czoxMjoibnVtX2V4aXN0aW5nIjtzOjI6IjUwIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(24,1,6,'asociados_link','Link','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(25,1,7,'imagen_plaza_bolivar','imagen plaza bolivar','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(26,1,7,'texto_introductorio','texto introductorio plaza bolivar','','textarea','','0',0,0,10,128,'n','ltr','n','n','none','n',1,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToieSI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6InkiO30='),(27,1,7,'imagen_blog','Portada del Blog','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(28,1,7,'titulo_blog','Titulo del blog','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(29,1,7,'contenido_blog','contenido del blog','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',5,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(30,1,8,'imagen_costo_beneficio','imagen costo beneficio','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',1,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(31,1,8,'texto_introductorio_costo_benefi','texto introductorio costo beneficio','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',2,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(32,1,8,'portada_blog','Portada del Blog Costo Beneficio','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',3,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(33,1,8,'titulo_blog_costo_beneficio','Titulo del blog costo beneficio','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',4,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(34,1,8,'contenido_blog_costo','contenido del blog','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',5,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(35,1,8,'portada_blog_2','portada blog 2','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',6,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(36,1,8,'titulo_blog_2','titulo blog 2','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',7,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(37,1,8,'introduccion_blog_2','introduccion blog 2','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',8,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(38,1,8,'portada_blog_3','portada blog 3','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',9,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(39,1,8,'titulo_blog_3','titulo blog 3','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',10,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(40,1,8,'introduccion_blog_3','introduccion blog 3','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',11,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(41,1,7,'imagen_blog_2','imagen blog 2','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',6,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(42,1,7,'titulo_blog_post_2','titulo blog post 2','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',7,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(43,1,7,'contenido_blog_2','contenido blog 2','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',8,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(44,1,7,'imagen_blog_3','imagen blog 3','','file','','0',0,0,6,128,'n','ltr','n','n','none','n',9,'any','YToxMDp7czoxODoiZmllbGRfY29udGVudF90eXBlIjtzOjM6ImFsbCI7czoxOToiYWxsb3dlZF9kaXJlY3RvcmllcyI7czozOiJhbGwiO3M6MTM6InNob3dfZXhpc3RpbmciO3M6MToibiI7czoxMjoibnVtX2V4aXN0aW5nIjtiOjA7czoxODoiZmllbGRfc2hvd19zbWlsZXlzIjtzOjE6Im4iO3M6MTk6ImZpZWxkX3Nob3dfZ2xvc3NhcnkiO3M6MToibiI7czoyMToiZmllbGRfc2hvd19zcGVsbGNoZWNrIjtzOjE6Im4iO3M6MjY6ImZpZWxkX3Nob3dfZm9ybWF0dGluZ19idG5zIjtzOjE6Im4iO3M6MjQ6ImZpZWxkX3Nob3dfZmlsZV9zZWxlY3RvciI7czoxOiJuIjtzOjIwOiJmaWVsZF9zaG93X3dyaXRlbW9kZSI7czoxOiJuIjt9'),(45,1,7,'titulo_blog_post_3','titulo blog post 3','','text','','0',0,0,6,128,'n','ltr','n','n','none','n',10,'any','YTo3OntzOjE4OiJmaWVsZF9jb250ZW50X3R5cGUiO3M6MzoiYWxsIjtzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30='),(46,1,7,'contenido_blog_3','contenido blog 3','','textarea','','0',0,0,6,128,'n','ltr','n','n','none','n',11,'any','YTo2OntzOjE4OiJmaWVsZF9zaG93X3NtaWxleXMiO3M6MToibiI7czoxOToiZmllbGRfc2hvd19nbG9zc2FyeSI7czoxOiJuIjtzOjIxOiJmaWVsZF9zaG93X3NwZWxsY2hlY2siO3M6MToibiI7czoyNjoiZmllbGRfc2hvd19mb3JtYXR0aW5nX2J0bnMiO3M6MToibiI7czoyNDoiZmllbGRfc2hvd19maWxlX3NlbGVjdG9yIjtzOjE6Im4iO3M6MjA6ImZpZWxkX3Nob3dfd3JpdGVtb2RlIjtzOjE6Im4iO30=');
/*!40000 ALTER TABLE `exp_channel_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_form_settings`
--

DROP TABLE IF EXISTS `exp_channel_form_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_form_settings` (
  `channel_form_settings_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(6) unsigned NOT NULL DEFAULT '0',
  `default_status` varchar(50) NOT NULL DEFAULT 'open',
  `require_captcha` char(1) NOT NULL DEFAULT 'n',
  `allow_guest_posts` char(1) NOT NULL DEFAULT 'n',
  `default_author` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_form_settings_id`),
  KEY `site_id` (`site_id`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_form_settings`
--

LOCK TABLES `exp_channel_form_settings` WRITE;
/*!40000 ALTER TABLE `exp_channel_form_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_form_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_member_groups`
--

DROP TABLE IF EXISTS `exp_channel_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `channel_id` int(6) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`channel_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_member_groups`
--

LOCK TABLES `exp_channel_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_channel_member_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_channel_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channel_titles`
--

DROP TABLE IF EXISTS `exp_channel_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channel_titles` (
  `entry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `url_title` (`url_title`),
  KEY `status` (`status`),
  KEY `entry_date` (`entry_date`),
  KEY `expiration_date` (`expiration_date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channel_titles`
--

LOCK TABLES `exp_channel_titles` WRITE;
/*!40000 ALTER TABLE `exp_channel_titles` DISABLE KEYS */;
INSERT INTO `exp_channel_titles` VALUES (1,1,1,1,NULL,'190.232.250.179','Homepage','homepage','open','y',0,0,0,0,'y','n',1427662200,'2015','03','29',0,0,20150410173908,0,0),(2,1,2,1,NULL,'190.232.250.179','Infraestructura Para Todos','infraestructura-para-todos','open','y',0,0,0,0,'y','n',1428601740,'2015','04','09',0,0,20150409175934,0,0),(3,1,3,1,NULL,'190.232.250.179','Nombre de Post 1','nombre-de-post-1','open','y',0,0,0,0,'y','n',1428695160,'2015','04','10',0,0,20150410195614,0,0),(4,1,3,1,NULL,'190.232.250.179','Nombre de Post 2','nombre-de-post-2','open','y',0,0,0,0,'y','n',1428695760,'2015','04','10',0,0,20150410201246,0,0),(5,1,3,1,NULL,'190.232.250.179','Nombre de Post 3','nombre-de-post-3','open','y',0,0,0,0,'y','n',1428696720,'2015','04','10',0,0,20150410201751,0,0),(7,1,2,1,NULL,'190.232.250.179','Proyectos de Ley','proyectos-de-ley','open','y',0,0,0,0,'y','n',1428940740,'2015','04','13',0,0,20150414154922,0,0),(8,1,2,1,NULL,'190.232.250.179','Atlas Network','atlas-network','open','y',0,0,0,0,'y','n',1429026840,'2015','04','14',0,0,20150414155526,0,0),(9,1,7,1,NULL,'190.232.250.179','Costo Beneficio','costo-beneficio','open','y',0,0,0,0,'y','n',1430253120,'2015','04','28',0,0,20150428205259,0,0);
/*!40000 ALTER TABLE `exp_channel_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_channels`
--

DROP TABLE IF EXISTS `exp_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_channels` (
  `channel_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
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
  `live_look_template` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_id`),
  KEY `cat_group` (`cat_group`),
  KEY `status_group` (`status_group`),
  KEY `field_group` (`field_group`),
  KEY `channel_name` (`channel_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_channels`
--

LOCK TABLES `exp_channels` WRITE;
/*!40000 ALTER TABLE `exp_channels` DISABLE KEYS */;
INSERT INTO `exp_channels` VALUES (1,1,'homepage','Homepage','http://104.236.244.65/index.php',NULL,'en',1,0,1427662200,0,'',1,'open',1,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(2,1,'alianzas','Alianzas','http://104.236.244.65/index.php',NULL,'en',3,0,1429026840,0,'',1,'open',2,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(3,1,'novedades','Novedades','http://104.236.244.65/index.php',NULL,'en',3,0,1428696720,0,'',1,'open',3,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(4,1,'area_de_trabajo','Area de Trabajo','http://104.236.244.65/index.php',NULL,'en',0,0,0,0,'',1,'open',4,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(5,1,'equipo','Equipo','http://104.236.244.65/index.php',NULL,'en',0,0,0,0,'',1,'open',5,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(6,1,'asociados','Asociados','http://104.236.244.65/index.php',NULL,'en',0,0,0,0,'',1,'open',6,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(7,1,'costo_beneficio','Costo Beneficio','http://104.236.244.65/index.php',NULL,'en',1,0,1430253120,0,'',NULL,'open',8,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0),(8,1,'plaza_bolivar','Plaza Bolivar','http://104.236.244.65/index.php',NULL,'en',0,0,0,0,'',NULL,'open',7,NULL,NULL,'y','y',NULL,'all','y','n','n',NULL,NULL,'y','n','n','n',5000,0,'y','xhtml','safe','n','y','n','n',NULL,0,NULL,'y',NULL,'n',10,'','',0);
/*!40000 ALTER TABLE `exp_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_comment_subscriptions`
--

DROP TABLE IF EXISTS `exp_comment_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_comment_subscriptions` (
  `subscription_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned DEFAULT NULL,
  `member_id` int(10) DEFAULT '0',
  `email` varchar(75) DEFAULT NULL,
  `subscription_date` varchar(10) DEFAULT NULL,
  `notification_sent` char(1) DEFAULT 'n',
  `hash` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `entry_id` (`entry_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_comment_subscriptions`
--

LOCK TABLES `exp_comment_subscriptions` WRITE;
/*!40000 ALTER TABLE `exp_comment_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_comment_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_comments`
--

DROP TABLE IF EXISTS `exp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `comment` text,
  PRIMARY KEY (`comment_id`),
  KEY `entry_id` (`entry_id`),
  KEY `channel_id` (`channel_id`),
  KEY `author_id` (`author_id`),
  KEY `status` (`status`),
  KEY `site_id` (`site_id`),
  KEY `comment_date_idx` (`comment_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_comments`
--

LOCK TABLES `exp_comments` WRITE;
/*!40000 ALTER TABLE `exp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_content_types`
--

DROP TABLE IF EXISTS `exp_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_content_types` (
  `content_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_type_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_content_types`
--

LOCK TABLES `exp_content_types` WRITE;
/*!40000 ALTER TABLE `exp_content_types` DISABLE KEYS */;
INSERT INTO `exp_content_types` VALUES (1,'grid'),(2,'channel');
/*!40000 ALTER TABLE `exp_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_cp_log`
--

DROP TABLE IF EXISTS `exp_cp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_cp_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `username` varchar(32) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `act_date` int(10) NOT NULL,
  `action` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_cp_log`
--

LOCK TABLES `exp_cp_log` WRITE;
/*!40000 ALTER TABLE `exp_cp_log` DISABLE KEYS */;
INSERT INTO `exp_cp_log` VALUES (1,1,1,'herman.marin','190.234.12.3',1427576274,'Logged in'),(2,1,1,'herman.marin','190.234.105.17',1427659468,'Logged in'),(3,1,1,'herman.marin','190.234.105.17',1427661258,'Field Group Created:&nbsp;Homepage'),(4,1,1,'herman.marin','190.234.105.17',1427662229,'Channel Created:&nbsp;&nbsp;Homepage'),(5,1,1,'herman.marin','181.64.192.83',1428266329,'Logged in'),(6,1,1,'herman.marin','181.64.192.83',1428270593,'Logged in'),(7,1,1,'herman.marin','181.64.192.83',1428270606,'Field Group Created:&nbsp;Alianzas'),(8,1,1,'herman.marin','181.64.192.83',1428271077,'Channel Created:&nbsp;&nbsp;Alianzas'),(9,1,1,'herman.marin','181.64.192.83',1428271209,'Field Group Created:&nbsp;Novedades'),(10,1,1,'herman.marin','181.64.192.83',1428271397,'Channel Created:&nbsp;&nbsp;Novedades'),(11,1,1,'herman.marin','181.64.192.83',1428272808,'Field Group Created:&nbsp;Area de Trabajo'),(12,1,1,'herman.marin','181.64.192.83',1428272958,'Channel Created:&nbsp;&nbsp;Area de Trabajo'),(13,1,1,'herman.marin','181.64.192.83',1428273430,'Field Group Created:&nbsp;Equipo'),(14,1,1,'herman.marin','181.64.192.83',1428273489,'Channel Created:&nbsp;&nbsp;Equipo'),(15,1,1,'herman.marin','181.64.192.83',1428273662,'Field Group Created:&nbsp;Asociados'),(16,1,1,'herman.marin','181.64.192.83',1428273773,'Channel Created:&nbsp;&nbsp;Asociados'),(17,1,1,'herman.marin','74.101.61.70',1428531589,'Logged in'),(18,1,1,'herman.marin','190.232.250.179',1428601514,'Logged in'),(19,1,1,'herman.marin','190.232.250.179',1428601754,'Logged in'),(20,1,1,'herman.marin','190.232.250.179',1428687424,'Logged in'),(21,1,1,'herman.marin','190.232.250.179',1428712622,'Logged in'),(22,1,1,'herman.marin','190.232.250.179',1428712777,'Logged in'),(23,1,1,'herman.marin','190.232.250.179',1428940524,'Logged in'),(24,1,1,'herman.marin','190.232.250.179',1428954572,'Logged in'),(25,1,1,'herman.marin','190.232.250.179',1428959579,'Logged in'),(26,1,1,'herman.marin','190.232.250.179',1429026502,'Logged in'),(27,1,1,'herman.marin','190.232.250.179',1429818108,'Logged in'),(28,1,1,'herman.marin','190.232.250.179',1429889541,'Logged in'),(29,1,1,'herman.marin','190.232.250.179',1430249934,'Logged in'),(30,1,1,'herman.marin','190.232.250.179',1430250210,'Field Group Created:&nbsp;Plaza Bolivar'),(31,1,1,'herman.marin','190.232.250.179',1430250351,'Logged in'),(32,1,1,'herman.marin','190.232.250.179',1430251045,'Field Group Created:&nbsp;Costo Beneficio'),(33,1,1,'herman.marin','190.232.250.179',1430253089,'Channel Created:&nbsp;&nbsp;Costo Beneficio'),(34,1,1,'herman.marin','190.232.250.179',1430253117,'Channel Created:&nbsp;&nbsp;Plaza Bolivar'),(35,1,1,'herman.marin','190.232.250.179',1430261225,'Logged in'),(36,1,1,'herman.marin','190.236.100.159',1435859663,'Logged in');
/*!40000 ALTER TABLE `exp_cp_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_cp_search_index`
--

DROP TABLE IF EXISTS `exp_cp_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_cp_search_index` (
  `search_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(20) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `access` varchar(50) DEFAULT NULL,
  `keywords` text,
  PRIMARY KEY (`search_id`),
  FULLTEXT KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_cp_search_index`
--

LOCK TABLES `exp_cp_search_index` WRITE;
/*!40000 ALTER TABLE `exp_cp_search_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_cp_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_developer_log`
--

DROP TABLE IF EXISTS `exp_developer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_developer_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `hash` char(32) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_developer_log`
--

LOCK TABLES `exp_developer_log` WRITE;
/*!40000 ALTER TABLE `exp_developer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_developer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache`
--

DROP TABLE IF EXISTS `exp_email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
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
  `priority` char(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache`
--

LOCK TABLES `exp_email_cache` WRITE;
/*!40000 ALTER TABLE `exp_email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache_mg`
--

DROP TABLE IF EXISTS `exp_email_cache_mg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_cache_mg` (
  `cache_id` int(6) unsigned NOT NULL,
  `group_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache_mg`
--

LOCK TABLES `exp_email_cache_mg` WRITE;
/*!40000 ALTER TABLE `exp_email_cache_mg` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache_mg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_cache_ml`
--

DROP TABLE IF EXISTS `exp_email_cache_ml`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_cache_ml` (
  `cache_id` int(6) unsigned NOT NULL,
  `list_id` smallint(4) NOT NULL,
  PRIMARY KEY (`cache_id`,`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_cache_ml`
--

LOCK TABLES `exp_email_cache_ml` WRITE;
/*!40000 ALTER TABLE `exp_email_cache_ml` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_cache_ml` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_email_console_cache`
--

DROP TABLE IF EXISTS `exp_email_console_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_email_console_cache` (
  `cache_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `cache_date` int(10) unsigned NOT NULL DEFAULT '0',
  `member_id` int(10) unsigned NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `recipient` varchar(75) NOT NULL,
  `recipient_name` varchar(50) NOT NULL,
  `subject` varchar(120) NOT NULL,
  `message` mediumtext NOT NULL,
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_email_console_cache`
--

LOCK TABLES `exp_email_console_cache` WRITE;
/*!40000 ALTER TABLE `exp_email_console_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_email_console_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_entry_versioning`
--

DROP TABLE IF EXISTS `exp_entry_versioning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_entry_versioning` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(10) unsigned NOT NULL,
  `channel_id` int(4) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `version_date` int(10) NOT NULL,
  `version_data` mediumtext NOT NULL,
  PRIMARY KEY (`version_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_entry_versioning`
--

LOCK TABLES `exp_entry_versioning` WRITE;
/*!40000 ALTER TABLE `exp_entry_versioning` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_entry_versioning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_extensions`
--

DROP TABLE IF EXISTS `exp_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_extensions` (
  `extension_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(50) NOT NULL DEFAULT '',
  `hook` varchar(50) NOT NULL DEFAULT '',
  `settings` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '10',
  `version` varchar(10) NOT NULL DEFAULT '',
  `enabled` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_extensions`
--

LOCK TABLES `exp_extensions` WRITE;
/*!40000 ALTER TABLE `exp_extensions` DISABLE KEYS */;
INSERT INTO `exp_extensions` VALUES (1,'Rte_ext','myaccount_nav_setup','myaccount_nav_setup','',10,'1.0.1','y'),(2,'Rte_ext','cp_menu_array','cp_menu_array','',10,'1.0.1','y'),(3,'Nsm_htaccess_generator_ext','entry_submission_end','entry_submission_end','a:0:{}',10,'1.1.6','y'),(4,'Nsm_htaccess_generator_ext','update_template_end','update_template_end','a:0:{}',10,'1.1.6','y');
/*!40000 ALTER TABLE `exp_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_field_formatting`
--

DROP TABLE IF EXISTS `exp_field_formatting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_field_formatting` (
  `formatting_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(10) unsigned NOT NULL,
  `field_fmt` varchar(40) NOT NULL,
  PRIMARY KEY (`formatting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_formatting`
--

LOCK TABLES `exp_field_formatting` WRITE;
/*!40000 ALTER TABLE `exp_field_formatting` DISABLE KEYS */;
INSERT INTO `exp_field_formatting` VALUES (1,1,'none'),(2,1,'br'),(3,1,'markdown'),(4,1,'xhtml'),(5,2,'none'),(6,2,'br'),(7,2,'markdown'),(8,2,'xhtml'),(9,3,'none'),(10,3,'br'),(11,3,'markdown'),(12,3,'xhtml'),(13,4,'none'),(14,4,'br'),(15,4,'markdown'),(16,4,'xhtml'),(17,5,'none'),(18,5,'br'),(19,5,'markdown'),(20,5,'xhtml'),(21,6,'none'),(22,6,'br'),(23,6,'markdown'),(24,6,'xhtml'),(25,7,'none'),(26,7,'br'),(27,7,'markdown'),(28,7,'xhtml'),(29,8,'none'),(30,8,'br'),(31,8,'markdown'),(32,8,'xhtml'),(33,9,'none'),(34,9,'br'),(35,9,'markdown'),(36,9,'xhtml'),(37,10,'none'),(38,10,'br'),(39,10,'markdown'),(40,10,'xhtml'),(41,11,'none'),(42,11,'br'),(43,11,'markdown'),(44,11,'xhtml'),(45,12,'none'),(46,12,'br'),(47,12,'markdown'),(48,12,'xhtml'),(49,13,'none'),(50,13,'br'),(51,13,'markdown'),(52,13,'xhtml'),(53,14,'none'),(54,14,'br'),(55,14,'markdown'),(56,14,'xhtml'),(57,15,'none'),(58,15,'br'),(59,15,'markdown'),(60,15,'xhtml'),(61,16,'none'),(62,16,'br'),(63,16,'markdown'),(64,16,'xhtml'),(65,17,'none'),(66,17,'br'),(67,17,'markdown'),(68,17,'xhtml'),(69,18,'none'),(70,18,'br'),(71,18,'markdown'),(72,18,'xhtml'),(73,19,'none'),(74,19,'br'),(75,19,'markdown'),(76,19,'xhtml'),(77,20,'none'),(78,20,'br'),(79,20,'markdown'),(80,20,'xhtml'),(81,21,'none'),(82,21,'br'),(83,21,'markdown'),(84,21,'xhtml'),(85,22,'none'),(86,22,'br'),(87,22,'markdown'),(88,22,'xhtml'),(89,23,'none'),(90,23,'br'),(91,23,'markdown'),(92,23,'xhtml'),(93,24,'none'),(94,24,'br'),(95,24,'markdown'),(96,24,'xhtml'),(97,25,'none'),(98,25,'br'),(99,25,'markdown'),(100,25,'xhtml'),(101,26,'none'),(102,26,'br'),(103,26,'markdown'),(104,26,'xhtml'),(105,27,'none'),(106,27,'br'),(107,27,'markdown'),(108,27,'xhtml'),(109,28,'none'),(110,28,'br'),(111,28,'markdown'),(112,28,'xhtml'),(113,29,'none'),(114,29,'br'),(115,29,'markdown'),(116,29,'xhtml'),(117,30,'none'),(118,30,'br'),(119,30,'markdown'),(120,30,'xhtml'),(121,31,'none'),(122,31,'br'),(123,31,'markdown'),(124,31,'xhtml'),(125,32,'none'),(126,32,'br'),(127,32,'markdown'),(128,32,'xhtml'),(129,33,'none'),(130,33,'br'),(131,33,'markdown'),(132,33,'xhtml'),(133,34,'none'),(134,34,'br'),(135,34,'markdown'),(136,34,'xhtml'),(137,35,'none'),(138,35,'br'),(139,35,'markdown'),(140,35,'xhtml'),(141,36,'none'),(142,36,'br'),(143,36,'markdown'),(144,36,'xhtml'),(145,37,'none'),(146,37,'br'),(147,37,'markdown'),(148,37,'xhtml'),(149,38,'none'),(150,38,'br'),(151,38,'markdown'),(152,38,'xhtml'),(153,39,'none'),(154,39,'br'),(155,39,'markdown'),(156,39,'xhtml'),(157,40,'none'),(158,40,'br'),(159,40,'markdown'),(160,40,'xhtml'),(161,41,'none'),(162,41,'br'),(163,41,'markdown'),(164,41,'xhtml'),(165,42,'none'),(166,42,'br'),(167,42,'markdown'),(168,42,'xhtml'),(169,43,'none'),(170,43,'br'),(171,43,'markdown'),(172,43,'xhtml'),(173,44,'none'),(174,44,'br'),(175,44,'markdown'),(176,44,'xhtml'),(177,45,'none'),(178,45,'br'),(179,45,'markdown'),(180,45,'xhtml'),(181,46,'none'),(182,46,'br'),(183,46,'markdown'),(184,46,'xhtml');
/*!40000 ALTER TABLE `exp_field_formatting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_field_groups`
--

DROP TABLE IF EXISTS `exp_field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_field_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_field_groups`
--

LOCK TABLES `exp_field_groups` WRITE;
/*!40000 ALTER TABLE `exp_field_groups` DISABLE KEYS */;
INSERT INTO `exp_field_groups` VALUES (1,1,'Homepage'),(2,1,'Alianzas'),(3,1,'Novedades'),(4,1,'Area de Trabajo'),(5,1,'Equipo'),(6,1,'Asociados'),(7,1,'Plaza Bolivar'),(8,1,'Costo Beneficio');
/*!40000 ALTER TABLE `exp_field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_fieldtypes`
--

DROP TABLE IF EXISTS `exp_fieldtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_fieldtypes` (
  `fieldtype_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `version` varchar(12) NOT NULL,
  `settings` text,
  `has_global_settings` char(1) DEFAULT 'n',
  PRIMARY KEY (`fieldtype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_fieldtypes`
--

LOCK TABLES `exp_fieldtypes` WRITE;
/*!40000 ALTER TABLE `exp_fieldtypes` DISABLE KEYS */;
INSERT INTO `exp_fieldtypes` VALUES (1,'select','1.0','YTowOnt9','n'),(2,'text','1.0','YTowOnt9','n'),(3,'textarea','1.0','YTowOnt9','n'),(4,'date','1.0','YTowOnt9','n'),(5,'file','1.0','YTowOnt9','n'),(6,'grid','1.0','YTowOnt9','n'),(7,'multi_select','1.0','YTowOnt9','n'),(8,'checkboxes','1.0','YTowOnt9','n'),(9,'radio','1.0','YTowOnt9','n'),(10,'relationship','1.0','YTowOnt9','n'),(11,'rte','1.0','YTowOnt9','n');
/*!40000 ALTER TABLE `exp_fieldtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_categories`
--

DROP TABLE IF EXISTS `exp_file_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_file_categories` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `is_cover` char(1) DEFAULT 'n',
  KEY `file_id` (`file_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_categories`
--

LOCK TABLES `exp_file_categories` WRITE;
/*!40000 ALTER TABLE `exp_file_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_dimensions`
--

DROP TABLE IF EXISTS `exp_file_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_file_dimensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `upload_location_id` int(4) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `short_name` varchar(255) DEFAULT '',
  `resize_type` varchar(50) DEFAULT '',
  `width` int(10) DEFAULT '0',
  `height` int(10) DEFAULT '0',
  `watermark_id` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_location_id` (`upload_location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_dimensions`
--

LOCK TABLES `exp_file_dimensions` WRITE;
/*!40000 ALTER TABLE `exp_file_dimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_dimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_file_watermarks`
--

DROP TABLE IF EXISTS `exp_file_watermarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_file_watermarks` (
  `wm_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
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
  `wm_shadow_color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`wm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_file_watermarks`
--

LOCK TABLES `exp_file_watermarks` WRITE;
/*!40000 ALTER TABLE `exp_file_watermarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_file_watermarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_files`
--

DROP TABLE IF EXISTS `exp_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_files` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `file_hw_original` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`file_id`),
  KEY `upload_location_id` (`upload_location_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_files`
--

LOCK TABLES `exp_files` WRITE;
/*!40000 ALTER TABLE `exp_files` DISABLE KEYS */;
INSERT INTO `exp_files` VALUES (1,1,'contribuyente_home.jpg',1,'/var/www/html/images/homepage/contribuyente_home.jpg','image/jpeg','contribuyente_home.jpg',485878,NULL,NULL,NULL,1,1427662601,1,1427662601,'1060 1600'),(2,1,'costo_beneficio.jpg',1,'/var/www/html/images/homepage/costo_beneficio.jpg','image/jpeg','costo_beneficio.jpg',151409,NULL,NULL,NULL,1,1427663183,1,1427663982,'500 1000'),(3,1,'plaza_bolivar.jpg',1,'/var/www/html/images/homepage/plaza_bolivar.jpg','image/jpeg','plaza_bolivar.jpg',191611,NULL,NULL,NULL,1,1427663203,1,1427664182,'500 1000'),(6,1,'contribuyentes.jpg',1,'/var/www/html/images/homepage/contribuyentes.jpg','image/jpeg','contribuyentes.jpg',460769,NULL,NULL,NULL,1,1428269089,1,1428269104,'600 1440'),(8,1,'31709.png',1,'/var/www/html/images/homepage/31709.png','image/png','31709.png',4659,NULL,NULL,NULL,1,1428602348,1,1428602348,'256 256'),(9,1,'photo-1421757295538-9c80958e75b0.jpg',1,'/var/www/html/images/homepage/photo-1421757295538-9c80958e75b0.jpg','image/jpeg','photo-1421757295538-9c80958e75b0.jpg',178237,NULL,NULL,NULL,1,1428695701,1,1428695701,'595 893'),(10,1,'images.jpg',1,'/var/www/html/images/homepage/images.jpg','image/jpeg','images.jpg',23880,NULL,NULL,NULL,1,1428695943,1,1428695943,'194 259'),(11,1,'photo-1416339442236-8ceb164046f8.jpg',1,'/var/www/html/images/homepage/photo-1416339442236-8ceb164046f8.jpg','image/jpeg','photo-1416339442236-8ceb164046f8.jpg',88627,NULL,NULL,NULL,1,1428696759,1,1428696759,'508 702'),(12,1,'photo-1416862291207-4ca732144d83.jpg',1,'/var/www/html/images/homepage/photo-1416862291207-4ca732144d83.jpg','image/jpeg','photo-1416862291207-4ca732144d83.jpg',136233,NULL,NULL,NULL,1,1428696800,1,1428696800,'616 893'),(13,1,'photo-1416339276121-ba1dfa199912.jpg',1,'/var/www/html/images/homepage/photo-1416339276121-ba1dfa199912.jpg','image/jpeg','photo-1416339276121-ba1dfa199912.jpg',188242,NULL,NULL,NULL,1,1428712858,1,1428712858,'800 1050');
/*!40000 ALTER TABLE `exp_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_global_variables`
--

DROP TABLE IF EXISTS `exp_global_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_global_variables` (
  `variable_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `variable_name` varchar(50) NOT NULL,
  `variable_data` text NOT NULL,
  PRIMARY KEY (`variable_id`),
  KEY `variable_name` (`variable_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_global_variables`
--

LOCK TABLES `exp_global_variables` WRITE;
/*!40000 ALTER TABLE `exp_global_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_global_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_grid_columns`
--

DROP TABLE IF EXISTS `exp_grid_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_grid_columns` (
  `col_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `col_settings` text,
  PRIMARY KEY (`col_id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_grid_columns`
--

LOCK TABLES `exp_grid_columns` WRITE;
/*!40000 ALTER TABLE `exp_grid_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_grid_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_html_buttons`
--

DROP TABLE IF EXISTS `exp_html_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_html_buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `tag_name` varchar(32) NOT NULL,
  `tag_open` varchar(120) NOT NULL,
  `tag_close` varchar(120) NOT NULL,
  `accesskey` varchar(32) NOT NULL,
  `tag_order` int(3) unsigned NOT NULL,
  `tag_row` char(1) NOT NULL DEFAULT '1',
  `classname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_html_buttons`
--

LOCK TABLES `exp_html_buttons` WRITE;
/*!40000 ALTER TABLE `exp_html_buttons` DISABLE KEYS */;
INSERT INTO `exp_html_buttons` VALUES (1,1,0,'b','<strong>','</strong>','b',1,'1','btn_b'),(2,1,0,'i','<em>','</em>','i',2,'1','btn_i'),(3,1,0,'blockquote','<blockquote>','</blockquote>','q',3,'1','btn_blockquote'),(4,1,0,'a','<a href=\"[![Link:!:http://]!]\"(!( title=\"[![Title]!]\")!)>','</a>','a',4,'1','btn_a'),(5,1,0,'img','<img src=\"[![Link:!:http://]!]\" alt=\"[![Alternative text]!]\" />','','',5,'1','btn_img');
/*!40000 ALTER TABLE `exp_html_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_layout_publish`
--

DROP TABLE IF EXISTS `exp_layout_publish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_layout_publish` (
  `layout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_group` int(4) unsigned NOT NULL DEFAULT '0',
  `channel_id` int(4) unsigned NOT NULL DEFAULT '0',
  `field_layout` text,
  PRIMARY KEY (`layout_id`),
  KEY `site_id` (`site_id`),
  KEY `member_group` (`member_group`),
  KEY `channel_id` (`channel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_layout_publish`
--

LOCK TABLES `exp_layout_publish` WRITE;
/*!40000 ALTER TABLE `exp_layout_publish` DISABLE KEYS */;
INSERT INTO `exp_layout_publish` VALUES (1,1,1,1,'a:5:{s:7:\"publish\";a:16:{s:10:\"_tab_label\";s:7:\"publish\";s:5:\"title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:9:\"url_title\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:1;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:5;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:6;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:7;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:1;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:2;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:3;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:8;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:4;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:9;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:10;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:11;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:12;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}i:13;a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:4:\"date\";a:4:{s:10:\"_tab_label\";s:4:\"date\";s:10:\"entry_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:15:\"expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:23:\"comment_expiration_date\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:10:\"categories\";a:2:{s:10:\"_tab_label\";s:10:\"categories\";s:8:\"category\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:7:\"options\";a:5:{s:10:\"_tab_label\";s:7:\"options\";s:11:\"new_channel\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"status\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:6:\"author\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:7:\"options\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}s:5:\"pages\";a:3:{s:10:\"_tab_label\";s:5:\"Pages\";s:16:\"pages__pages_uri\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}s:24:\"pages__pages_template_id\";a:4:{s:7:\"visible\";b:1;s:8:\"collapse\";b:0;s:11:\"htmlbuttons\";b:1;s:5:\"width\";s:4:\"100%\";}}}');
/*!40000 ALTER TABLE `exp_layout_publish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_bulletin_board`
--

DROP TABLE IF EXISTS `exp_member_bulletin_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_bulletin_board` (
  `bulletin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL,
  `bulletin_group` int(8) unsigned NOT NULL,
  `bulletin_date` int(10) unsigned NOT NULL,
  `hash` varchar(10) NOT NULL DEFAULT '',
  `bulletin_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `bulletin_message` text NOT NULL,
  PRIMARY KEY (`bulletin_id`),
  KEY `sender_id` (`sender_id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_bulletin_board`
--

LOCK TABLES `exp_member_bulletin_board` WRITE;
/*!40000 ALTER TABLE `exp_member_bulletin_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_bulletin_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_data`
--

DROP TABLE IF EXISTS `exp_member_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_data` (
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_data`
--

LOCK TABLES `exp_member_data` WRITE;
/*!40000 ALTER TABLE `exp_member_data` DISABLE KEYS */;
INSERT INTO `exp_member_data` VALUES (1);
/*!40000 ALTER TABLE `exp_member_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_fields`
--

DROP TABLE IF EXISTS `exp_member_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_fields` (
  `m_field_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
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
  `m_field_order` int(3) unsigned NOT NULL,
  PRIMARY KEY (`m_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_fields`
--

LOCK TABLES `exp_member_fields` WRITE;
/*!40000 ALTER TABLE `exp_member_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_groups`
--

DROP TABLE IF EXISTS `exp_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_groups` (
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
  `include_in_mailinglists` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`group_id`,`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_groups`
--

LOCK TABLES `exp_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_member_groups` DISABLE KEYS */;
INSERT INTO `exp_member_groups` VALUES (1,1,'Super Admins','','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','y','','y','y','y',0,'y',20,60,'y','y','y','y','y'),(2,1,'Banned','','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','','n','n','n',60,'n',20,60,'n','n','n','n','n'),(3,1,'Guests','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),(4,1,'Pending','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','n','n','n','n','','y','n','y',15,'n',20,60,'n','n','n','n','n'),(5,1,'Members','','y','n','y','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','n','y','y','y','n','','y','n','y',10,'y',20,60,'y','n','n','y','y');
/*!40000 ALTER TABLE `exp_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_homepage`
--

DROP TABLE IF EXISTS `exp_member_homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_homepage` (
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
  `pmachine_news_feed_order` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_homepage`
--

LOCK TABLES `exp_member_homepage` WRITE;
/*!40000 ALTER TABLE `exp_member_homepage` DISABLE KEYS */;
INSERT INTO `exp_member_homepage` VALUES (1,'l',1,'l',2,'n',0,'r',1,'n',0,'r',2,'r',0,'l',0);
/*!40000 ALTER TABLE `exp_member_homepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_member_search`
--

DROP TABLE IF EXISTS `exp_member_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_member_search` (
  `search_id` varchar(32) NOT NULL,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `search_date` int(10) unsigned NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `fields` varchar(200) NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `total_results` int(8) unsigned NOT NULL,
  `query` text NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `member_id` (`member_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_member_search`
--

LOCK TABLES `exp_member_search` WRITE;
/*!40000 ALTER TABLE `exp_member_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_member_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_members`
--

DROP TABLE IF EXISTS `exp_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_members` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `rte_toolset_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`),
  KEY `group_id` (`group_id`),
  KEY `unique_id` (`unique_id`),
  KEY `password` (`password`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_members`
--

LOCK TABLES `exp_members` WRITE;
/*!40000 ALTER TABLE `exp_members` DISABLE KEYS */;
INSERT INTO `exp_members` VALUES (1,1,'herman.marin','Herman Marin','836cb93684952dd875f2623228b75dc7a5113effc4028b355d37f1829bfd514b5bef19a3631a079d03ba1e79ce51b81b0c0e70fffe84a4a142e3250d48969fe6','jRvSjIG^??r8s0W}%+^3<3p?Duy3i^+8%j\\m,B_5IwnYlDe-@}{(Bc:d@I:4lF=!z|V%TK^5KUKzsX\"\"CE$GC>CxewWiLm)kdiLr#?|Z`Evxt#U(Z\\=>(0@hz2NOMQ%q','aa5762c8f4ff1249bdb617401d236d2abe3a6571','3ff9d75c54ea3f87b47bb878898026842f54f821',NULL,'herman.marin@ayuninc.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'y',0,0,'190.234.12.3',1427576162,1430261821,1435859663,8,0,0,0,1430253344,0,0,0,'n','y','y','y','y','y','y','y','y','english','America/Lima','12','%n/%j/%y','n',NULL,NULL,NULL,NULL,'28',NULL,'18','',NULL,'n',0,'y',0);
/*!40000 ALTER TABLE `exp_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_attachments`
--

DROP TABLE IF EXISTS `exp_message_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_attachments` (
  `attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `message_id` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_name` varchar(50) NOT NULL DEFAULT '',
  `attachment_hash` varchar(40) NOT NULL DEFAULT '',
  `attachment_extension` varchar(20) NOT NULL DEFAULT '',
  `attachment_location` varchar(150) NOT NULL DEFAULT '',
  `attachment_date` int(10) unsigned NOT NULL DEFAULT '0',
  `attachment_size` int(10) unsigned NOT NULL DEFAULT '0',
  `is_temp` char(1) NOT NULL DEFAULT 'y',
  PRIMARY KEY (`attachment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_attachments`
--

LOCK TABLES `exp_message_attachments` WRITE;
/*!40000 ALTER TABLE `exp_message_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_copies`
--

DROP TABLE IF EXISTS `exp_message_copies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_copies` (
  `copy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `message_status` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`copy_id`),
  KEY `message_id` (`message_id`),
  KEY `recipient_id` (`recipient_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_copies`
--

LOCK TABLES `exp_message_copies` WRITE;
/*!40000 ALTER TABLE `exp_message_copies` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_copies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_data`
--

DROP TABLE IF EXISTS `exp_message_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_data` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `message_status` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_data`
--

LOCK TABLES `exp_message_data` WRITE;
/*!40000 ALTER TABLE `exp_message_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_folders`
--

DROP TABLE IF EXISTS `exp_message_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_folders` (
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
  `folder10_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_folders`
--

LOCK TABLES `exp_message_folders` WRITE;
/*!40000 ALTER TABLE `exp_message_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_message_listed`
--

DROP TABLE IF EXISTS `exp_message_listed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_message_listed` (
  `listed_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_member` int(10) unsigned NOT NULL DEFAULT '0',
  `listed_description` varchar(100) NOT NULL DEFAULT '',
  `listed_type` varchar(10) NOT NULL DEFAULT 'blocked',
  PRIMARY KEY (`listed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_message_listed`
--

LOCK TABLES `exp_message_listed` WRITE;
/*!40000 ALTER TABLE `exp_message_listed` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_message_listed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_metaweblog_api`
--

DROP TABLE IF EXISTS `exp_metaweblog_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_metaweblog_api` (
  `metaweblog_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `metaweblog_pref_name` varchar(80) NOT NULL DEFAULT '',
  `metaweblog_parse_type` varchar(1) NOT NULL DEFAULT 'y',
  `entry_status` varchar(50) NOT NULL DEFAULT 'NULL',
  `field_group_id` int(5) unsigned NOT NULL DEFAULT '0',
  `excerpt_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `content_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `more_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `keywords_field_id` int(7) unsigned NOT NULL DEFAULT '0',
  `upload_dir` int(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`metaweblog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_metaweblog_api`
--

LOCK TABLES `exp_metaweblog_api` WRITE;
/*!40000 ALTER TABLE `exp_metaweblog_api` DISABLE KEYS */;
INSERT INTO `exp_metaweblog_api` VALUES (1,'Default','y','NULL',1,0,2,0,0,1);
/*!40000 ALTER TABLE `exp_metaweblog_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_module_member_groups`
--

DROP TABLE IF EXISTS `exp_module_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_module_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `module_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_module_member_groups`
--

LOCK TABLES `exp_module_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_module_member_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_module_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_modules`
--

DROP TABLE IF EXISTS `exp_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_modules` (
  `module_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_version` varchar(12) NOT NULL,
  `has_cp_backend` char(1) NOT NULL DEFAULT 'n',
  `has_publish_fields` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_modules`
--

LOCK TABLES `exp_modules` WRITE;
/*!40000 ALTER TABLE `exp_modules` DISABLE KEYS */;
INSERT INTO `exp_modules` VALUES (1,'Comment','2.3.2','y','n'),(2,'Emoticon','2.0','n','n'),(3,'File','1.0.0','n','n'),(4,'Jquery','1.0','n','n'),(5,'Metaweblog_api','2.2','y','n'),(6,'Pages','2.2','y','y'),(7,'Rss','2.0','n','n'),(8,'Referrer','2.1.1','y','n'),(9,'Search','2.2.2','n','n'),(10,'Channel','2.0.1','n','n'),(11,'Stats','2.0','n','n'),(12,'Rte','1.0.1','y','n');
/*!40000 ALTER TABLE `exp_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_nsm_addon_settings`
--

DROP TABLE IF EXISTS `exp_nsm_addon_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_nsm_addon_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(5) unsigned NOT NULL DEFAULT '1',
  `addon_id` varchar(255) NOT NULL,
  `settings` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_nsm_addon_settings`
--

LOCK TABLES `exp_nsm_addon_settings` WRITE;
/*!40000 ALTER TABLE `exp_nsm_addon_settings` DISABLE KEYS */;
INSERT INTO `exp_nsm_addon_settings` VALUES (1,1,'nsm_htaccess_generator','{\"enabled\":\"1\",\"path\":[\"\\/var\\/www\\/html\\/.htaccess\"],\"template\":\"# For more awesome .htaccess rules and optimisations\\n# checkout the HTML5 Boilerplate .htaccess files\\n# https:\\/\\/github.com\\/paulirish\\/html5-boilerplate\\/blob\\/master\\/.htaccess\\n\\n# Although highly unlikely, your host may have +FollowSymLinks enabled at the root level,\\n# yet disallow its addition in .htaccess; in which case, \\n# adding +FollowSymLinks will break your setup (probably a 500 error), \\n# so just remove it, and your rules should work fine.\\nOptions +FollowSymlinks\\n\\n# EE 404 page for missing pages\\nErrorDocument 404 \\/index.php\\/{ee:404}\\n\\n# Simple 404 for missing files\\n<FilesMatch \\\"(\\\\.jpe?g|gif|png|bmp|css|js|flv)$\\\">\\n  ErrorDocument 404 \\\"File Not Found\\\"\\n<\\/FilesMatch>\\n\\n# Rewriting will likely already be on, uncomment if it isnt\\n# <IfModule mod_rewrite.c>\\n# RewriteEngine On\\n# RewriteBase \\/\\n# <\\/IfModule>\\n\\n# Block access to \\\"hidden\\\" directories whose names begin with a period. This\\n# includes directories used by version control systems such as Subversion or Git.\\n<IfModule mod_rewrite.c>\\n  RewriteRule \\\"(^|\\/)\\\\.\\\" - [F]\\n<\\/IfModule>\\n\\n# remove the www - Uncomment to activate\\n<IfModule mod_rewrite.c>\\n  RewriteCond %{HTTPS} !=on\\n  RewriteCond %{HTTP_HOST} ^www\\\\.(.+)$ [NC]\\n  RewriteRule ^(.*)$ http:\\/\\/%1\\/$1 [R=301,L]\\n<\\/IfModule>\\n\\n# Remove the trailing slash to paths without an extension\\n# Uncomment to activate\\n# <IfModule mod_rewrite.c>\\n#   RewriteRule ^(.*)\\/$ \\/$1 [R=301,L]\\n# <\\/IfModule>\\n\\n# Remove index.php\\n# Uses the \\\"include method\\\"\\n# http:\\/\\/expressionengine.com\\/wiki\\/Remove_index.php_From_URLs\\/#Include_List_Method\\n# <IfModule mod_rewrite.c>\\nRewriteCond %{QUERY_STRING} !^(ACT=.*)$ [NC]\\nRewriteCond %{REQUEST_URI} !(\\\\.[a-zA-Z0-9]{1,5})$\\nRewriteCond %{REQUEST_FILENAME} !-f\\nRewriteCond %{REQUEST_FILENAME} !-d\\nRewriteCond %{REQUEST_URI} ^\\/({ee:template_groups}{ee:pages}members|P[0-9]{2,8}) [NC]\\nRewriteRule (.*) \\/index.php\\/$1 [L]\"}');
/*!40000 ALTER TABLE `exp_nsm_addon_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_online_users`
--

DROP TABLE IF EXISTS `exp_online_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_online_users` (
  `online_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `in_forum` char(1) NOT NULL DEFAULT 'n',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `anon` char(1) NOT NULL,
  PRIMARY KEY (`online_id`),
  KEY `date` (`date`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_online_users`
--

LOCK TABLES `exp_online_users` WRITE;
/*!40000 ALTER TABLE `exp_online_users` DISABLE KEYS */;
INSERT INTO `exp_online_users` VALUES (2130,1,0,'n','','95.173.183.52',1435871500,''),(2131,1,0,'n','','190.236.100.159',1435873814,''),(2132,1,0,'n','','182.118.53.196',1435879399,''),(2125,1,0,'n','','50.117.87.207',1435825493,''),(2126,1,0,'n','','179.219.156.103',1435845458,''),(2127,1,0,'n','','67.213.118.194',1435854170,''),(2128,1,0,'n','','190.236.100.159',1435873814,''),(2129,1,0,'n','','87.7.191.228',1435869502,''),(2122,1,0,'n','','116.114.83.15',1435795209,''),(2121,1,0,'n','','207.46.13.144',1435794970,''),(2123,1,0,'n','','207.46.13.16',1435806831,''),(2124,1,0,'n','','89.136.7.5',1435815865,'');
/*!40000 ALTER TABLE `exp_online_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_pages_configuration`
--

DROP TABLE IF EXISTS `exp_pages_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_pages_configuration` (
  `configuration_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(8) unsigned NOT NULL DEFAULT '1',
  `configuration_name` varchar(60) NOT NULL,
  `configuration_value` varchar(100) NOT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_pages_configuration`
--

LOCK TABLES `exp_pages_configuration` WRITE;
/*!40000 ALTER TABLE `exp_pages_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_pages_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_password_lockout`
--

DROP TABLE IF EXISTS `exp_password_lockout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_password_lockout` (
  `lockout_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_date` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`lockout_id`),
  KEY `login_date` (`login_date`),
  KEY `ip_address` (`ip_address`),
  KEY `user_agent` (`user_agent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_password_lockout`
--

LOCK TABLES `exp_password_lockout` WRITE;
/*!40000 ALTER TABLE `exp_password_lockout` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_password_lockout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_referrers`
--

DROP TABLE IF EXISTS `exp_referrers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_referrers` (
  `ref_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) DEFAULT '1',
  `ref_from` varchar(150) DEFAULT NULL,
  `ref_to` varchar(120) DEFAULT NULL,
  `ref_ip` varchar(45) DEFAULT NULL,
  `ref_date` int(10) unsigned DEFAULT '0',
  `ref_agent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ref_id`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_referrers`
--

LOCK TABLES `exp_referrers` WRITE;
/*!40000 ALTER TABLE `exp_referrers` DISABLE KEYS */;
INSERT INTO `exp_referrers` VALUES (1,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','177.42.200.62',1427581891,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(2,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','73.191.226.23',1427626562,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(3,1,'http://semalt.semalt.com/crawler.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','189.111.90.82',1427631706,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(4,1,'http://semalt.semalt.com/crawler.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','189.47.76.28',1427642179,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(5,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','201.95.198.205',1427669229,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(6,1,'http://semalt.semalt.com/crawler.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','186.221.129.103',1427752790,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(7,1,'http://semalt.semalt.com/crawler.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','187.33.50.94',1427828242,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(8,1,'http://www.google.com','http://104.236.244.65/index.php','61.160.195.10',1427871299,'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)'),(9,1,'http://semalt.semalt.com/crawler.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','119.95.139.167',1427878378,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(10,1,'http://best-seo-solution.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','181.50.193.164',1427934390,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(11,1,'http://cireinnovations.com/','http://104.236.244.65/index.php','144.76.30.242',1427943667,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),(12,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','174.26.58.1',1427951242,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(13,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','41.107.8.20',1427955843,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(14,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','189.113.197.191',1427977496,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(15,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','213.55.107.20',1427981319,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(16,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.40.137',1428036300,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(17,1,'http://best-seo-solution.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','87.58.10.102',1428052751,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(18,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','41.200.82.50',1428057340,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(19,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','177.195.1.224',1428078732,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(20,1,'http://best-seo-solution.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','111.119.238.70',1428089244,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(21,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','113.210.130.40',1428101272,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(22,1,'http://whois.domaintools.com/cireinnovations.com','http://104.236.244.65/index.php','216.145.17.190',1428158878,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),(23,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','103.251.188.71',1428227860,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(24,1,'http://cireinnovations.com/','http://104.236.244.65/index.php','216.38.216.197',1428228330,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_1) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782'),(25,1,'http://www.cireinnovations.com/','http://104.236.244.65/index.php','216.38.216.197',1428228330,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_1) AppleWebKit/535.1 (KHTML, like Gecko) Chrome/13.0.782'),(26,1,'http://best-seo-solution.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','151.24.86.101',1428266438,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),(27,1,'http://best-seo-solution.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','201.227.226.145',1428376981,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(28,1,'http://www.netcraft.com/survey/','http://104.236.244.65/index.php','104.131.193.178',1428426473,'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),(29,1,'http://www.netcraft.com/survey/','http://104.236.244.65/index.php','104.131.253.93',1428430024,'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),(30,1,'http://best-seo-solution.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','79.36.202.135',1428431042,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(31,1,'http://best-seo-solution.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','181.163.183.220',1428510681,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(32,1,'http://best-seo-solution.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','186.71.68.154',1428526416,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(33,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.40.137',1428538749,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(34,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','151.77.157.180',1428605726,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(35,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','201.17.55.60',1428620124,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),(36,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','125.27.76.46',1428751865,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(37,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','203.87.162.58',1428768489,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(38,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','197.218.64.84',1428818784,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(39,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','179.153.71.141',1428870307,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(40,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','178.253.232.32',1428931579,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(41,1,'http://www.responsinator.com/?url=http://104.236.244.65/','http://104.236.244.65/index.php','190.232.250.179',1428946542,'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(42,1,'http://www.responsinator.com/?url=http://104.236.244.65/','http://104.236.244.65/index.php','190.232.250.179',1428946542,'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(43,1,'http://www.responsinator.com/?url=http://104.236.244.65/','http://104.236.244.65/index.php','190.232.250.179',1428946543,'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(44,1,'http://www.responsinator.com/?url=http://104.236.244.65/','http://104.236.244.65/index.php','190.232.250.179',1428946543,'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(45,1,'http://www.responsinator.com/?url=http://104.236.244.65/','http://104.236.244.65/index.php','190.232.250.179',1428946543,'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(46,1,'http://www.responsinator.com/?url=http://104.236.244.65/','http://104.236.244.65/index.php','190.232.250.179',1428946543,'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(47,1,'http://www.responsinator.com/?url=http://104.236.244.65/','http://104.236.244.65/index.php','190.232.250.179',1428946544,'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(48,1,'http://www.responsinator.com/?url=http://104.236.244.65/','http://104.236.244.65/index.php','190.232.250.179',1428946544,'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(49,1,'http://www.responsinator.com/?url=http://104.236.244.65/','http://104.236.244.65/index.php','190.232.250.179',1428946544,'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(50,1,'http://www.responsinator.com/?url=http://104.236.244.65/','http://104.236.244.65/index.php','190.232.250.179',1428946544,'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(51,1,'http://www.responsinator.com/?url=http://104.236.244.65/','http://104.236.244.65/index.php','190.232.250.179',1428946544,'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(52,1,'http://www.responsinator.com/?url=104.236.244.65','http://104.236.244.65/index.php','190.233.197.75',1428956423,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(53,1,'http://www.responsinator.com/?url=104.236.244.65','http://104.236.244.65/index.php','190.233.197.75',1428956425,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(54,1,'http://www.responsinator.com/?url=104.236.244.65','http://104.236.244.65/index.php','190.233.197.75',1428956425,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(55,1,'http://www.responsinator.com/?url=104.236.244.65','http://104.236.244.65/index.php','190.233.197.75',1428956426,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(56,1,'http://www.responsinator.com/?url=104.236.244.65','http://104.236.244.65/index.php','190.233.197.75',1428956426,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(57,1,'http://www.responsinator.com/?url=104.236.244.65','http://104.236.244.65/index.php','190.233.197.75',1428956426,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(58,1,'http://www.responsinator.com/?url=104.236.244.65','http://104.236.244.65/index.php','190.233.197.75',1428956426,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(59,1,'http://www.responsinator.com/?url=104.236.244.65','http://104.236.244.65/index.php','190.233.197.75',1428956427,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(60,1,'http://www.responsinator.com/?url=104.236.244.65','http://104.236.244.65/index.php','190.233.197.75',1428956427,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(61,1,'http://www.responsinator.com/?url=104.236.244.65','http://104.236.244.65/index.php','190.233.197.75',1428956427,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(62,1,'http://www.responsinator.com/?url=104.236.244.65','http://104.236.244.65/index.php','190.233.197.75',1428956429,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(63,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','2.233.244.104',1428998323,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(64,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','187.110.220.254',1429017107,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(65,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031302,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(66,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031302,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(67,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031302,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(68,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031303,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(69,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031303,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(70,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031303,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(71,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031304,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(72,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031304,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(73,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031306,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(74,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031306,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(75,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031306,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(76,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031579,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(77,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031580,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(78,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031580,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(79,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031580,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(80,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031580,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(81,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031581,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(82,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031581,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(83,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031581,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(84,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031581,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(85,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031582,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(86,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429031582,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(87,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429032091,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(88,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429032091,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(89,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429032091,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(90,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429032092,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(91,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429032092,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(92,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429032092,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(93,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429032093,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(94,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429032093,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(95,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429032093,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(96,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429032093,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(97,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429032094,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(98,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033042,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(99,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033042,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(100,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033042,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(101,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033043,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(102,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033043,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(103,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033043,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(104,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033043,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(105,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033044,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(106,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033044,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(107,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033044,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(108,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033044,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(109,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033508,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(110,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033509,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(111,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033509,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(112,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033509,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(113,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033510,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(114,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033510,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(115,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033515,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(116,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033516,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(117,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033516,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(118,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033516,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(119,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429033517,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(120,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429034486,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(121,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429034486,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(122,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429034486,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(123,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429034487,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(124,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429034487,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(125,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429034487,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(126,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429034488,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(127,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429034488,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(128,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429034488,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(129,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429034488,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(130,1,'http://www.responsinator.com/?url=104.236.244.65/','http://104.236.244.65/index.php','190.233.197.75',1429034488,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safa'),(131,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.40.137',1429043865,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(132,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','81.44.220.99',1429046082,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(133,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','190.17.33.228',1429066642,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(134,1,'http://www.cireinnovations.com','http://104.236.244.65/index.php','64.79.100.24',1429125886,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safar'),(135,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','201.32.18.235',1429133705,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(136,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','89.181.33.134',1429217566,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(137,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','201.79.155.147',1429282968,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(138,1,'http://whois.domaintools.com/cireinnovations.com','http://104.236.244.65/index.php','216.145.5.42',1429284735,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),(139,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','109.242.194.60',1429306471,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(140,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','177.37.177.246',1429350612,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(141,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.40.137',1429564524,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(142,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','95.253.184.76',1429788707,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(143,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','121.54.44.95',1429803660,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(144,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','114.79.55.229',1429812316,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(145,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','109.100.80.193',1429865136,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(146,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','177.169.151.16',1429914776,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(147,1,'http://CIREINNOVATIONS.COM','http://104.236.244.65/index.php','138.128.2.235',1429954684,'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.85 '),(148,1,'http://CIREINNOVATIONS.COM','http://104.236.244.65/index.php','208.167.254.223',1429992900,'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.85 '),(149,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.40.137',1430131839,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(150,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','188.80.239.75',1430165190,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(151,1,'CIREINNOVATIONS.COM/','http://104.236.244.65/index.php','104.155.44.36',1430165667,'Mozilla/4.0 (compatible; MSIE 6.0; Windows 98; Win 9x 4.90)'),(152,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','91.253.42.211',1430178662,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(153,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','2.87.81.244',1430231343,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(154,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','80.21.130.202',1430254857,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(155,1,'http://whois.domaintools.com/cireinnovations.com','http://104.236.244.65/index.php','216.145.5.42',1430410338,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),(156,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','82.104.49.83',1430415612,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(157,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','170.51.71.19',1430490810,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(158,1,'http://www.netcraft.com/survey/','http://104.236.244.65/index.php','104.131.193.72',1430780287,'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),(159,1,'http://www.netcraft.com/survey/','http://104.236.244.65/index.php','162.243.121.233',1430781028,'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),(160,1,'CIREINNOVATIONS.COM','http://104.236.244.65/index.php','216.108.227.23',1430806192,'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safa'),(161,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','151.62.41.132',1430878324,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(162,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.40.137',1430892122,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(163,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','177.1.129.239',1430959015,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(164,1,'http://www.cireinnovations.com','http://104.236.244.65/index.php','64.79.100.41',1430982223,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safar'),(165,1,'http://www.cireinnovations.com','http://104.236.244.65/index.php','64.79.100.15',1430998040,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safar'),(166,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','123.202.3.69',1431004360,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(167,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','186.213.143.7',1431285081,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(168,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','179.180.60.113',1431331801,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(169,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','200.139.143.149',1431343213,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(170,1,'http://cireinnovations.com/','http://104.236.244.65/index.php','178.94.16.129',1431361802,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),(171,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','49.149.26.35',1431391466,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(172,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','138.75.214.255',1431397429,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(173,1,'http://cireinnovations.com/','http://104.236.244.65/index.php','62.173.145.229',1431399138,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),(174,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.40.137',1431450416,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(175,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','184.151.63.202',1431476382,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(176,1,'http://whois.domaintools.com/cireinnovations.com','http://104.236.244.65/index.php','64.246.161.190',1431548048,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),(177,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','187.14.119.211',1431611210,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(178,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','197.249.237.47',1431617001,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(179,1,'http://best-seo-report.com','http://104.236.244.65/index.php','107.172.9.125',1431757317,'Mozilla/4.0 (compatible; Synapse)'),(180,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','79.24.24.38',1431851416,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),(181,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','201.93.237.129',1431860611,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(182,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','177.17.227.158',1431905250,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(183,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','173.238.72.63',1431913462,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(184,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.40.137',1432023958,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(185,1,'http://cireinnovations.com/','http://104.236.244.65/index.php','46.119.113.60',1432032576,'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)'),(186,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','41.82.176.138',1432060590,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(187,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','210.1.81.194',1432088904,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(188,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','196.216.57.10',1432111840,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(189,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','193.49.247.120',1432116955,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(190,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','177.157.60.218',1432124766,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(191,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','179.209.236.195',1432254181,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(192,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','93.148.208.214',1432257489,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(193,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','187.161.83.30',1432264358,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(194,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','189.89.166.194',1432308842,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(195,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','201.26.21.16',1432308986,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(196,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','177.135.9.28',1432326741,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(197,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','114.108.221.162',1432429662,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(198,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','82.155.124.253',1432457968,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(199,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','187.182.64.175',1432489154,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(200,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','201.15.51.181',1432494347,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(201,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','189.83.12.145',1432512179,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(202,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','151.16.169.142',1432558593,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(203,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','191.6.94.66',1432567959,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(204,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','177.159.151.152',1432573686,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(205,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.150.120',1432665357,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(206,1,'http://whois.domaintools.com/cireinnovations.com','http://104.236.244.65/index.php','64.246.165.180',1432740135,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),(207,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','177.220.175.29',1432832109,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(208,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','201.196.213.126',1432925737,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(209,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','41.254.6.12',1432927291,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(210,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','39.42.231.238',1432983322,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(211,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.150.120',1433181272,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(212,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','191.250.230.160',1433316584,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(213,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','186.221.242.1',1433391226,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(214,1,'http://best-seo-offer.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','31.15.215.225',1433408337,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(215,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','191.33.48.91',1433454697,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),(216,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','109.102.108.248',1433525168,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(217,1,'http://www.netcraft.com/survey/','http://104.236.244.65/index.php','104.131.117.12',1433610920,'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),(218,1,'http://www.netcraft.com/survey/','http://104.236.244.65/index.php','104.236.192.131',1433613333,'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),(219,1,'http://www.netcraft.com/survey/','http://104.236.244.65/index.php','104.131.56.30',1433623841,'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),(220,1,'http://www.netcraft.com/survey/','http://104.236.244.65/index.php','104.236.22.16',1433625112,'Mozilla/4.0 (compatible; Netcraft Web Server Survey)'),(221,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','213.245.198.234',1433669350,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(222,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.150.120',1433690850,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(223,1,'http://best-seo-report.com','http://104.236.244.65/index.php','107.172.9.125',1433694209,'Mozilla/4.0 (compatible; Synapse)'),(224,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','189.63.190.162',1433739782,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(225,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','87.6.66.140',1433788960,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),(226,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','217.162.177.35',1433867288,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(227,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','187.66.44.192',1433931837,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(228,1,'http://whois.domaintools.com/cireinnovations.com','http://104.236.244.65/index.php','64.246.165.150',1433962499,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),(229,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','186.219.131.37',1434050285,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(230,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','178.254.148.42',1434111174,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(231,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.150.120',1434231030,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(232,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','190.225.27.72',1434247010,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(233,1,'http://buttons-for-your-website.com','http://104.236.244.65/index.php','151.24.6.68',1434464920,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(234,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','190.164.130.180',1434503828,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(235,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','131.108.119.114',1434679793,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(236,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','201.66.61.236',1434757900,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(237,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','84.111.85.244',1434782530,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(238,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','177.98.196.167',1434804009,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safa'),(239,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.150.120',1434846671,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(240,1,'http://semaltmedia.com','http://104.236.244.65/index.php','27.130.19.246',1434899781,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(241,1,'http://semaltmedia.com','http://104.236.244.65/index.php','179.208.55.66',1434917898,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(242,1,'http://semaltmedia.com','http://104.236.244.65/index.php','191.200.226.210',1434918708,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(243,1,'http://semaltmedia.com','http://104.236.244.65/index.php','190.196.7.40',1434980002,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(244,1,'http://www.cireinnovations.com','http://104.236.244.65/index.php','64.79.100.13',1435124373,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safar'),(245,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','187.112.26.7',1435202482,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(246,1,'http://whois.domaintools.com/cireinnovations.com','http://104.236.244.65/index.php','64.246.165.140',1435334894,'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3'),(247,1,'http://49990758.videos-for-your-business.com','http://104.236.244.65/index.php','187.45.96.50',1435356967,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(248,1,'http://domainsigma.com/whois/cireinnovations.com','http://104.236.244.65/index.php','192.99.150.120',1435391144,'Mozilla/5.0 (compatible; DomainSigmaCrawler/0.1; +http://domainsigma.com/robot)'),(249,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','152.249.77.11',1435404477,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.107 Safa'),(250,1,'http://100dollars-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','201.68.17.127',1435464892,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(251,1,'http://49990758.videos-for-your-business.com','http://104.236.244.65/index.php','174.1.69.88',1435471007,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(252,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','196.35.114.42',1435672010,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(253,1,'http://success-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','189.111.10.32',1435690497,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(254,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','200.238.102.235',1435718955,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(255,1,'http://best-seo-report.com','http://104.236.244.65/index.php','23.95.245.47',1435757267,'Mozilla/4.0 (compatible; Synapse)'),(256,1,'http://videos-for-your-business.com','http://104.236.244.65/index.php','187.163.154.76',1435761667,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(257,1,'http://best-seo-report.com','http://104.236.244.65/index.php','107.172.9.247',1435772397,'Mozilla/4.0 (compatible; Synapse)'),(258,1,'http://success-seo.com/try.php?u=http://cireinnovations.com','http://104.236.244.65/index.php','201.10.57.14',1435786764,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(259,1,'http://videos-for-your-business.com','http://104.236.244.65/index.php','179.219.156.103',1435845448,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa'),(260,1,'http://buttons-for-website.com','http://104.236.244.65/index.php','87.7.191.228',1435869493,'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safa');
/*!40000 ALTER TABLE `exp_referrers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_relationships`
--

DROP TABLE IF EXISTS `exp_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_relationships` (
  `relationship_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `child_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_col_id` int(10) unsigned NOT NULL DEFAULT '0',
  `grid_row_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`relationship_id`),
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`),
  KEY `field_id` (`field_id`),
  KEY `grid_row_id` (`grid_row_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_relationships`
--

LOCK TABLES `exp_relationships` WRITE;
/*!40000 ALTER TABLE `exp_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_remember_me`
--

DROP TABLE IF EXISTS `exp_remember_me`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_remember_me` (
  `remember_me_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) DEFAULT '0',
  `ip_address` varchar(45) DEFAULT '0',
  `user_agent` varchar(120) DEFAULT '',
  `admin_sess` tinyint(1) DEFAULT '0',
  `site_id` int(4) DEFAULT '1',
  `expiration` int(10) DEFAULT '0',
  `last_refresh` int(10) DEFAULT '0',
  PRIMARY KEY (`remember_me_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_remember_me`
--

LOCK TABLES `exp_remember_me` WRITE;
/*!40000 ALTER TABLE `exp_remember_me` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_remember_me` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_reset_password`
--

DROP TABLE IF EXISTS `exp_reset_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_reset_password` (
  `reset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `resetcode` varchar(12) NOT NULL,
  `date` int(10) NOT NULL,
  PRIMARY KEY (`reset_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_reset_password`
--

LOCK TABLES `exp_reset_password` WRITE;
/*!40000 ALTER TABLE `exp_reset_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_reset_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_revision_tracker`
--

DROP TABLE IF EXISTS `exp_revision_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_revision_tracker` (
  `tracker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned NOT NULL,
  `item_table` varchar(20) NOT NULL,
  `item_field` varchar(20) NOT NULL,
  `item_date` int(10) NOT NULL,
  `item_author_id` int(10) unsigned NOT NULL,
  `item_data` mediumtext NOT NULL,
  PRIMARY KEY (`tracker_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_revision_tracker`
--

LOCK TABLES `exp_revision_tracker` WRITE;
/*!40000 ALTER TABLE `exp_revision_tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_revision_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_rte_tools`
--

DROP TABLE IF EXISTS `exp_rte_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_rte_tools` (
  `tool_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) DEFAULT NULL,
  `class` varchar(75) DEFAULT NULL,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`tool_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_rte_tools`
--

LOCK TABLES `exp_rte_tools` WRITE;
/*!40000 ALTER TABLE `exp_rte_tools` DISABLE KEYS */;
INSERT INTO `exp_rte_tools` VALUES (1,'Blockquote','Blockquote_rte','y'),(2,'Bold','Bold_rte','y'),(3,'Headings','Headings_rte','y'),(4,'Image','Image_rte','y'),(5,'Italic','Italic_rte','y'),(6,'Link','Link_rte','y'),(7,'Ordered List','Ordered_list_rte','y'),(8,'Underline','Underline_rte','y'),(9,'Unordered List','Unordered_list_rte','y'),(10,'View Source','View_source_rte','y');
/*!40000 ALTER TABLE `exp_rte_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_rte_toolsets`
--

DROP TABLE IF EXISTS `exp_rte_toolsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_rte_toolsets` (
  `toolset_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `tools` text,
  `enabled` char(1) DEFAULT 'y',
  PRIMARY KEY (`toolset_id`),
  KEY `member_id` (`member_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_rte_toolsets`
--

LOCK TABLES `exp_rte_toolsets` WRITE;
/*!40000 ALTER TABLE `exp_rte_toolsets` DISABLE KEYS */;
INSERT INTO `exp_rte_toolsets` VALUES (1,0,'Default','3|2|5|1|9|7|6|4|10','y');
/*!40000 ALTER TABLE `exp_rte_toolsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_search`
--

DROP TABLE IF EXISTS `exp_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_search` (
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
  `result_page` varchar(70) NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_search`
--

LOCK TABLES `exp_search` WRITE;
/*!40000 ALTER TABLE `exp_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_search_log`
--

DROP TABLE IF EXISTS `exp_search_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_search_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `member_id` int(10) unsigned NOT NULL,
  `screen_name` varchar(50) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `search_date` int(10) NOT NULL,
  `search_type` varchar(32) NOT NULL,
  `search_terms` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_search_log`
--

LOCK TABLES `exp_search_log` WRITE;
/*!40000 ALTER TABLE `exp_search_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_search_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_security_hashes`
--

DROP TABLE IF EXISTS `exp_security_hashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_security_hashes` (
  `hash_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL,
  PRIMARY KEY (`hash_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_security_hashes`
--

LOCK TABLES `exp_security_hashes` WRITE;
/*!40000 ALTER TABLE `exp_security_hashes` DISABLE KEYS */;
INSERT INTO `exp_security_hashes` VALUES (22,1435859663,'524d873f3dc393097f2314c71f9de2d701827963','b8071cc9fcb8010fd0c7c0c82b4b88d362823c86'),(21,1430261225,'0219fbe3bc206dad9b19e3df745ea86056f1ecdc','fa59169af23fd62787ccdfe090ea4e5c1a87b5d9'),(20,1430260647,'3410c0877144fe73e416d423035f62ca26847851','0e53aa3f1cc7781cf156607fc0e6d6d17ae5c96a'),(19,1430250351,'c9e02e35d2e1b0390e7a53085a11ba8e25f3a4d6','8c20836230a835d3e4b96e407a835c5d5643b693'),(18,1430249935,'22d3941cb3d2c92d7be01fcfb9e02be2d743c609','9f6f3690bf10088cc08eb03f6b90e541f697055c'),(17,1429889541,'a2cd95c383335b16ccf8b305675aa0db0d0c1435','5f1c643c7e182a75e2367de607a735635d28a6dc'),(16,1429818109,'2feb4c0bc400dbca25885c5bcf3ed1710f6caa2a','4174aff4bbb2fc00335c6584c6895d482517bb45'),(15,1429026502,'e2956bc22c142271220a8739e8e66a61cb589f0c','b9e56da08e665abe56c7592133e6d92607c06828'),(14,1428959580,'ab0aacc0027c4c1bf5f045158cb400e867d47ef4','f0d74c4ba4c07517aab7ab8e912c0e00d84e84f7'),(13,1428959352,'2f7b7ddbd3e7897bbd50b00544b92dfac7935b06','215d724a97f7118703e012263e15f0473871f9cf'),(12,1428954572,'3b5781bf0c50fb711394490b3aefeef0475c8ca5','f40aae0e3f0ebf7c4c01716d1adc55214d799d28');
/*!40000 ALTER TABLE `exp_security_hashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_sessions`
--

DROP TABLE IF EXISTS `exp_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `member_id` int(10) NOT NULL DEFAULT '0',
  `admin_sess` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `fingerprint` varchar(40) NOT NULL,
  `sess_start` int(10) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `member_id` (`member_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_sessions`
--

LOCK TABLES `exp_sessions` WRITE;
/*!40000 ALTER TABLE `exp_sessions` DISABLE KEYS */;
INSERT INTO `exp_sessions` VALUES ('524d873f3dc393097f2314c71f9de2d701827963',1,1,'190.236.100.159','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.3','ddedba0332e8367d7985545dd2bd5607',1435859663,1435859674);
/*!40000 ALTER TABLE `exp_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_sites`
--

DROP TABLE IF EXISTS `exp_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_sites` (
  `site_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `site_label` varchar(100) NOT NULL DEFAULT '',
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_description` text,
  `site_system_preferences` mediumtext NOT NULL,
  `site_mailinglist_preferences` text NOT NULL,
  `site_member_preferences` text NOT NULL,
  `site_template_preferences` text NOT NULL,
  `site_channel_preferences` text NOT NULL,
  `site_bootstrap_checksums` text NOT NULL,
  `site_pages` text NOT NULL,
  PRIMARY KEY (`site_id`),
  KEY `site_name` (`site_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_sites`
--

LOCK TABLES `exp_sites` WRITE;
/*!40000 ALTER TABLE `exp_sites` DISABLE KEYS */;
INSERT INTO `exp_sites` VALUES (1,'Contribuyentes con Respeto','default_site',NULL,'YTo4ODp7czoxMDoic2l0ZV9pbmRleCI7czo5OiJpbmRleC5waHAiO3M6ODoic2l0ZV91cmwiO3M6MjI6Imh0dHA6Ly8xMDQuMjM2LjI0NC42NS8iO3M6MTY6InRoZW1lX2ZvbGRlcl91cmwiO3M6Mjk6Imh0dHA6Ly8xMDQuMjM2LjI0NC42NS90aGVtZXMvIjtzOjE1OiJ3ZWJtYXN0ZXJfZW1haWwiO3M6MjQ6Imhlcm1hbi5tYXJpbkBheXVuaW5jLmNvbSI7czoxNDoid2VibWFzdGVyX25hbWUiO3M6MDoiIjtzOjIwOiJjaGFubmVsX25vbWVuY2xhdHVyZSI7czo3OiJjaGFubmVsIjtzOjEwOiJtYXhfY2FjaGVzIjtzOjM6IjE1MCI7czoxMToiY2FwdGNoYV91cmwiO3M6Mzg6Imh0dHA6Ly8xMDQuMjM2LjI0NC42NS9pbWFnZXMvY2FwdGNoYXMvIjtzOjEyOiJjYXB0Y2hhX3BhdGgiO3M6MzA6Ii92YXIvd3d3L2h0bWwvaW1hZ2VzL2NhcHRjaGFzLyI7czoxMjoiY2FwdGNoYV9mb250IjtzOjE6InkiO3M6MTI6ImNhcHRjaGFfcmFuZCI7czoxOiJ5IjtzOjIzOiJjYXB0Y2hhX3JlcXVpcmVfbWVtYmVycyI7czoxOiJuIjtzOjE3OiJlbmFibGVfZGJfY2FjaGluZyI7czoxOiJuIjtzOjE4OiJlbmFibGVfc3FsX2NhY2hpbmciO3M6MToibiI7czoxODoiZm9yY2VfcXVlcnlfc3RyaW5nIjtzOjE6Im4iO3M6MTM6InNob3dfcHJvZmlsZXIiO3M6MToibiI7czoxODoidGVtcGxhdGVfZGVidWdnaW5nIjtzOjE6Im4iO3M6MTU6ImluY2x1ZGVfc2Vjb25kcyI7czoxOiJuIjtzOjEzOiJjb29raWVfZG9tYWluIjtzOjA6IiI7czoxMToiY29va2llX3BhdGgiO3M6MDoiIjtzOjIwOiJ3ZWJzaXRlX3Nlc3Npb25fdHlwZSI7czoxOiJjIjtzOjE1OiJjcF9zZXNzaW9uX3R5cGUiO3M6MjoiY3MiO3M6MjE6ImFsbG93X3VzZXJuYW1lX2NoYW5nZSI7czoxOiJ5IjtzOjE4OiJhbGxvd19tdWx0aV9sb2dpbnMiO3M6MToieSI7czoxNjoicGFzc3dvcmRfbG9ja291dCI7czoxOiJ5IjtzOjI1OiJwYXNzd29yZF9sb2Nrb3V0X2ludGVydmFsIjtzOjE6IjEiO3M6MjA6InJlcXVpcmVfaXBfZm9yX2xvZ2luIjtzOjE6InkiO3M6MjI6InJlcXVpcmVfaXBfZm9yX3Bvc3RpbmciO3M6MToieSI7czoyNDoicmVxdWlyZV9zZWN1cmVfcGFzc3dvcmRzIjtzOjE6Im4iO3M6MTk6ImFsbG93X2RpY3Rpb25hcnlfcHciO3M6MToieSI7czoyMzoibmFtZV9vZl9kaWN0aW9uYXJ5X2ZpbGUiO3M6MDoiIjtzOjE3OiJ4c3NfY2xlYW5fdXBsb2FkcyI7czoxOiJ5IjtzOjE1OiJyZWRpcmVjdF9tZXRob2QiO3M6ODoicmVkaXJlY3QiO3M6OToiZGVmdF9sYW5nIjtzOjc6ImVuZ2xpc2giO3M6ODoieG1sX2xhbmciO3M6MjoiZW4iO3M6MTI6InNlbmRfaGVhZGVycyI7czoxOiJ5IjtzOjExOiJnemlwX291dHB1dCI7czoxOiJuIjtzOjEzOiJsb2dfcmVmZXJyZXJzIjtzOjE6InkiO3M6MTM6Im1heF9yZWZlcnJlcnMiO3M6MzoiNTAwIjtzOjExOiJkYXRlX2Zvcm1hdCI7czo4OiIlbi8lai8leSI7czoxMToidGltZV9mb3JtYXQiO3M6MjoiMTIiO3M6MTM6InNlcnZlcl9vZmZzZXQiO3M6MDoiIjtzOjIxOiJkZWZhdWx0X3NpdGVfdGltZXpvbmUiO3M6MTI6IkFtZXJpY2EvTGltYSI7czoxMzoibWFpbF9wcm90b2NvbCI7czo0OiJtYWlsIjtzOjExOiJzbXRwX3NlcnZlciI7czowOiIiO3M6MTM6InNtdHBfdXNlcm5hbWUiO3M6MDoiIjtzOjEzOiJzbXRwX3Bhc3N3b3JkIjtzOjA6IiI7czoxMToiZW1haWxfZGVidWciO3M6MToibiI7czoxMzoiZW1haWxfY2hhcnNldCI7czo1OiJ1dGYtOCI7czoxNToiZW1haWxfYmF0Y2htb2RlIjtzOjE6Im4iO3M6MTY6ImVtYWlsX2JhdGNoX3NpemUiO3M6MDoiIjtzOjExOiJtYWlsX2Zvcm1hdCI7czo1OiJwbGFpbiI7czo5OiJ3b3JkX3dyYXAiO3M6MToieSI7czoyMjoiZW1haWxfY29uc29sZV90aW1lbG9jayI7czoxOiI1IjtzOjIyOiJsb2dfZW1haWxfY29uc29sZV9tc2dzIjtzOjE6InkiO3M6ODoiY3BfdGhlbWUiO3M6NzoiZGVmYXVsdCI7czoyMToiZW1haWxfbW9kdWxlX2NhcHRjaGFzIjtzOjE6Im4iO3M6MTY6ImxvZ19zZWFyY2hfdGVybXMiO3M6MToieSI7czoxOToiZGVueV9kdXBsaWNhdGVfZGF0YSI7czoxOiJ5IjtzOjI0OiJyZWRpcmVjdF9zdWJtaXR0ZWRfbGlua3MiO3M6MToibiI7czoxNjoiZW5hYmxlX2NlbnNvcmluZyI7czoxOiJuIjtzOjE0OiJjZW5zb3JlZF93b3JkcyI7czowOiIiO3M6MTg6ImNlbnNvcl9yZXBsYWNlbWVudCI7czowOiIiO3M6MTA6ImJhbm5lZF9pcHMiO3M6MDoiIjtzOjEzOiJiYW5uZWRfZW1haWxzIjtzOjA6IiI7czoxNjoiYmFubmVkX3VzZXJuYW1lcyI7czowOiIiO3M6MTk6ImJhbm5lZF9zY3JlZW5fbmFtZXMiO3M6MDoiIjtzOjEwOiJiYW5fYWN0aW9uIjtzOjg6InJlc3RyaWN0IjtzOjExOiJiYW5fbWVzc2FnZSI7czozNDoiVGhpcyBzaXRlIGlzIGN1cnJlbnRseSB1bmF2YWlsYWJsZSI7czoxNToiYmFuX2Rlc3RpbmF0aW9uIjtzOjIxOiJodHRwOi8vd3d3LnlhaG9vLmNvbS8iO3M6MTY6ImVuYWJsZV9lbW90aWNvbnMiO3M6MToieSI7czoxMjoiZW1vdGljb25fdXJsIjtzOjM3OiJodHRwOi8vMTA0LjIzNi4yNDQuNjUvaW1hZ2VzL3NtaWxleXMvIjtzOjE5OiJyZWNvdW50X2JhdGNoX3RvdGFsIjtzOjQ6IjEwMDAiO3M6MTc6Im5ld192ZXJzaW9uX2NoZWNrIjtzOjE6InkiO3M6MTc6ImVuYWJsZV90aHJvdHRsaW5nIjtzOjE6Im4iO3M6MTc6ImJhbmlzaF9tYXNrZWRfaXBzIjtzOjE6InkiO3M6MTQ6Im1heF9wYWdlX2xvYWRzIjtzOjI6IjEwIjtzOjEzOiJ0aW1lX2ludGVydmFsIjtzOjE6IjgiO3M6MTI6ImxvY2tvdXRfdGltZSI7czoyOiIzMCI7czoxNToiYmFuaXNobWVudF90eXBlIjtzOjc6Im1lc3NhZ2UiO3M6MTQ6ImJhbmlzaG1lbnRfdXJsIjtzOjA6IiI7czoxODoiYmFuaXNobWVudF9tZXNzYWdlIjtzOjUwOiJZb3UgaGF2ZSBleGNlZWRlZCB0aGUgYWxsb3dlZCBwYWdlIGxvYWQgZnJlcXVlbmN5LiI7czoxNzoiZW5hYmxlX3NlYXJjaF9sb2ciO3M6MToieSI7czoxOToibWF4X2xvZ2dlZF9zZWFyY2hlcyI7czozOiI1MDAiO3M6MTc6InRoZW1lX2ZvbGRlcl9wYXRoIjtzOjIxOiIvdmFyL3d3dy9odG1sL3RoZW1lcy8iO3M6MTA6ImlzX3NpdGVfb24iO3M6MToieSI7czoxMToicnRlX2VuYWJsZWQiO3M6MToieSI7czoyMjoicnRlX2RlZmF1bHRfdG9vbHNldF9pZCI7czoxOiIxIjt9','YTozOntzOjE5OiJtYWlsaW5nbGlzdF9lbmFibGVkIjtzOjE6InkiO3M6MTg6Im1haWxpbmdsaXN0X25vdGlmeSI7czoxOiJuIjtzOjI1OiJtYWlsaW5nbGlzdF9ub3RpZnlfZW1haWxzIjtzOjA6IiI7fQ==','YTo0NDp7czoxMDoidW5fbWluX2xlbiI7czoxOiI0IjtzOjEwOiJwd19taW5fbGVuIjtzOjE6IjUiO3M6MjU6ImFsbG93X21lbWJlcl9yZWdpc3RyYXRpb24iO3M6MToibiI7czoyNToiYWxsb3dfbWVtYmVyX2xvY2FsaXphdGlvbiI7czoxOiJ5IjtzOjE4OiJyZXFfbWJyX2FjdGl2YXRpb24iO3M6NToiZW1haWwiO3M6MjM6Im5ld19tZW1iZXJfbm90aWZpY2F0aW9uIjtzOjE6Im4iO3M6MjM6Im1icl9ub3RpZmljYXRpb25fZW1haWxzIjtzOjA6IiI7czoyNDoicmVxdWlyZV90ZXJtc19vZl9zZXJ2aWNlIjtzOjE6InkiO3M6MjI6InVzZV9tZW1iZXJzaGlwX2NhcHRjaGEiO3M6MToibiI7czoyMDoiZGVmYXVsdF9tZW1iZXJfZ3JvdXAiO3M6MToiNSI7czoxNToicHJvZmlsZV90cmlnZ2VyIjtzOjY6Im1lbWJlciI7czoxMjoibWVtYmVyX3RoZW1lIjtzOjc6ImRlZmF1bHQiO3M6MTQ6ImVuYWJsZV9hdmF0YXJzIjtzOjE6InkiO3M6MjA6ImFsbG93X2F2YXRhcl91cGxvYWRzIjtzOjE6Im4iO3M6MTA6ImF2YXRhcl91cmwiO3M6Mzc6Imh0dHA6Ly8xMDQuMjM2LjI0NC42NS9pbWFnZXMvYXZhdGFycy8iO3M6MTE6ImF2YXRhcl9wYXRoIjtzOjI5OiIvdmFyL3d3dy9odG1sL2ltYWdlcy9hdmF0YXJzLyI7czoxNjoiYXZhdGFyX21heF93aWR0aCI7czozOiIxMDAiO3M6MTc6ImF2YXRhcl9tYXhfaGVpZ2h0IjtzOjM6IjEwMCI7czoxMzoiYXZhdGFyX21heF9rYiI7czoyOiI1MCI7czoxMzoiZW5hYmxlX3Bob3RvcyI7czoxOiJuIjtzOjk6InBob3RvX3VybCI7czo0MzoiaHR0cDovLzEwNC4yMzYuMjQ0LjY1L2ltYWdlcy9tZW1iZXJfcGhvdG9zLyI7czoxMDoicGhvdG9fcGF0aCI7czozNToiL3Zhci93d3cvaHRtbC9pbWFnZXMvbWVtYmVyX3Bob3Rvcy8iO3M6MTU6InBob3RvX21heF93aWR0aCI7czozOiIxMDAiO3M6MTY6InBob3RvX21heF9oZWlnaHQiO3M6MzoiMTAwIjtzOjEyOiJwaG90b19tYXhfa2IiO3M6MjoiNTAiO3M6MTY6ImFsbG93X3NpZ25hdHVyZXMiO3M6MToieSI7czoxMzoic2lnX21heGxlbmd0aCI7czozOiI1MDAiO3M6MjE6InNpZ19hbGxvd19pbWdfaG90bGluayI7czoxOiJuIjtzOjIwOiJzaWdfYWxsb3dfaW1nX3VwbG9hZCI7czoxOiJuIjtzOjExOiJzaWdfaW1nX3VybCI7czo1MToiaHR0cDovLzEwNC4yMzYuMjQ0LjY1L2ltYWdlcy9zaWduYXR1cmVfYXR0YWNobWVudHMvIjtzOjEyOiJzaWdfaW1nX3BhdGgiO3M6NDM6Ii92YXIvd3d3L2h0bWwvaW1hZ2VzL3NpZ25hdHVyZV9hdHRhY2htZW50cy8iO3M6MTc6InNpZ19pbWdfbWF4X3dpZHRoIjtzOjM6IjQ4MCI7czoxODoic2lnX2ltZ19tYXhfaGVpZ2h0IjtzOjI6IjgwIjtzOjE0OiJzaWdfaW1nX21heF9rYiI7czoyOiIzMCI7czoxOToicHJ2X21zZ191cGxvYWRfcGF0aCI7czozNjoiL3Zhci93d3cvaHRtbC9pbWFnZXMvcG1fYXR0YWNobWVudHMvIjtzOjIzOiJwcnZfbXNnX21heF9hdHRhY2htZW50cyI7czoxOiIzIjtzOjIyOiJwcnZfbXNnX2F0dGFjaF9tYXhzaXplIjtzOjM6IjI1MCI7czoyMDoicHJ2X21zZ19hdHRhY2hfdG90YWwiO3M6MzoiMTAwIjtzOjE5OiJwcnZfbXNnX2h0bWxfZm9ybWF0IjtzOjQ6InNhZmUiO3M6MTg6InBydl9tc2dfYXV0b19saW5rcyI7czoxOiJ5IjtzOjE3OiJwcnZfbXNnX21heF9jaGFycyI7czo0OiI2MDAwIjtzOjE5OiJtZW1iZXJsaXN0X29yZGVyX2J5IjtzOjExOiJ0b3RhbF9wb3N0cyI7czoyMToibWVtYmVybGlzdF9zb3J0X29yZGVyIjtzOjQ6ImRlc2MiO3M6MjA6Im1lbWJlcmxpc3Rfcm93X2xpbWl0IjtzOjI6IjIwIjt9','YTo3OntzOjIyOiJlbmFibGVfdGVtcGxhdGVfcm91dGVzIjtzOjE6Im4iO3M6MTE6InN0cmljdF91cmxzIjtzOjE6InkiO3M6ODoic2l0ZV80MDQiO3M6MDoiIjtzOjE5OiJzYXZlX3RtcGxfcmV2aXNpb25zIjtzOjE6Im4iO3M6MTg6Im1heF90bXBsX3JldmlzaW9ucyI7czoxOiI1IjtzOjE1OiJzYXZlX3RtcGxfZmlsZXMiO3M6MToieSI7czoxODoidG1wbF9maWxlX2Jhc2VwYXRoIjtzOjI0OiIvdmFyL3d3dy9odG1sL3RlbXBsYXRlcy8iO30=','YTo5OntzOjIxOiJpbWFnZV9yZXNpemVfcHJvdG9jb2wiO3M6MzoiZ2QyIjtzOjE4OiJpbWFnZV9saWJyYXJ5X3BhdGgiO3M6MDoiIjtzOjE2OiJ0aHVtYm5haWxfcHJlZml4IjtzOjU6InRodW1iIjtzOjE0OiJ3b3JkX3NlcGFyYXRvciI7czo0OiJkYXNoIjtzOjE3OiJ1c2VfY2F0ZWdvcnlfbmFtZSI7czoxOiJuIjtzOjIyOiJyZXNlcnZlZF9jYXRlZ29yeV93b3JkIjtzOjg6ImNhdGVnb3J5IjtzOjIzOiJhdXRvX2NvbnZlcnRfaGlnaF9hc2NpaSI7czoxOiJuIjtzOjIyOiJuZXdfcG9zdHNfY2xlYXJfY2FjaGVzIjtzOjE6InkiO3M6MjM6ImF1dG9fYXNzaWduX2NhdF9wYXJlbnRzIjtzOjE6InkiO30=','YToxOntzOjIzOiIvdmFyL3d3dy9odG1sL2luZGV4LnBocCI7czozMjoiYzQwNmNkYzdjNDIyZjAxYWZhOTcwZDgwMzZhNDBmOWMiO30=','YToxOntpOjE7YTozOntzOjQ6InVyaXMiO2E6MDp7fXM6OToidGVtcGxhdGVzIjthOjA6e31zOjM6InVybCI7czozMjoiaHR0cDovLzEwNC4yMzYuMjQ0LjY1L2luZGV4LnBocC8iO319');
/*!40000 ALTER TABLE `exp_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_snippets`
--

DROP TABLE IF EXISTS `exp_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_snippets` (
  `snippet_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) NOT NULL,
  `snippet_name` varchar(75) NOT NULL,
  `snippet_contents` text,
  PRIMARY KEY (`snippet_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_snippets`
--

LOCK TABLES `exp_snippets` WRITE;
/*!40000 ALTER TABLE `exp_snippets` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_specialty_templates`
--

DROP TABLE IF EXISTS `exp_specialty_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_specialty_templates` (
  `template_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `enable_template` char(1) NOT NULL DEFAULT 'y',
  `template_name` varchar(50) NOT NULL,
  `data_title` varchar(80) NOT NULL,
  `template_data` text NOT NULL,
  PRIMARY KEY (`template_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_specialty_templates`
--

LOCK TABLES `exp_specialty_templates` WRITE;
/*!40000 ALTER TABLE `exp_specialty_templates` DISABLE KEYS */;
INSERT INTO `exp_specialty_templates` VALUES (1,1,'y','offline_template','','<html>\n<head>\n\n<title>System Offline</title>\n\n<style type=\"text/css\">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#999999 1px solid;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n</style>\n\n</head>\n\n<body>\n\n<div id=\"content\">\n\n<h1>System Offline</h1>\n\n<p>This site is currently offline</p>\n\n</div>\n\n</body>\n\n</html>'),(2,1,'y','message_template','','<html>\n<head>\n\n<title>{title}</title>\n\n<meta http-equiv=\'content-type\' content=\'text/html; charset={charset}\' />\n\n{meta_refresh}\n\n<style type=\"text/css\">\n\nbody {\nbackground-color:	#ffffff;\nmargin:				50px;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size:			11px;\ncolor:				#000;\nbackground-color:	#fff;\n}\n\na {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nletter-spacing:		.09em;\ntext-decoration:	none;\ncolor:			  #330099;\nbackground-color:	transparent;\n}\n\na:visited {\ncolor:				#330099;\nbackground-color:	transparent;\n}\n\na:active {\ncolor:				#ccc;\nbackground-color:	transparent;\n}\n\na:hover {\ncolor:				#000;\ntext-decoration:	underline;\nbackground-color:	transparent;\n}\n\n#content  {\nborder:				#000 1px solid;\nbackground-color: 	#DEDFE3;\npadding:			22px 25px 14px 25px;\n}\n\nh1 {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-weight:		bold;\nfont-size:			14px;\ncolor:				#000;\nmargin-top: 		0;\nmargin-bottom:		14px;\n}\n\np {\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		12px;\nmargin-bottom: 		14px;\ncolor: 				#000;\n}\n\nul {\nmargin-bottom: 		16px;\n}\n\nli {\nlist-style:			square;\nfont-family:		Verdana, Arial, Tahoma, Trebuchet MS, Sans-serif;\nfont-size: 			12px;\nfont-weight: 		normal;\nmargin-top: 		8px;\nmargin-bottom: 		8px;\ncolor: 				#000;\n}\n\n</style>\n\n</head>\n\n<body>\n\n<div id=\"content\">\n\n<h1>{heading}</h1>\n\n{content}\n\n<p>{link}</p>\n\n</div>\n\n</body>\n\n</html>'),(3,1,'y','admin_notify_reg','Notification of new member registration','New member registration site: {site_name}\n\nScreen name: {name}\nUser name: {username}\nEmail: {email}\n\nYour control panel URL: {control_panel_url}'),(4,1,'y','admin_notify_entry','A new channel entry has been posted','A new entry has been posted in the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nPosted by: {name}\nEmail: {email}\n\nTo read the entry please visit:\n{entry_url}\n'),(5,1,'y','admin_notify_mailinglist','Someone has subscribed to your mailing list','A new mailing list subscription has been accepted.\n\nEmail Address: {email}\nMailing List: {mailing_list}'),(6,1,'y','admin_notify_comment','You have just received a comment','You have just received a comment for the following channel:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nLocated at:\n{comment_url}\n\nPosted by: {name}\nEmail: {email}\nURL: {url}\nLocation: {location}\n\n{comment}'),(7,1,'y','mbr_activation_instructions','Enclosed is your activation code','Thank you for your new member registration.\n\nTo activate your new account, please visit the following URL:\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}\n\n{site_url}'),(8,1,'y','forgot_password_instructions','Login information','{name},\n\nTo reset your password, please go to the following page:\n\n{reset_url}\n\nThen log in with your username: {username}\n\nIf you do not wish to reset your password, ignore this message. It will expire in 24 hours.\n\n{site_name}\n{site_url}'),(9,1,'y','validated_member_notify','Your membership account has been activated','{name},\n\nYour membership account has been activated and is ready for use.\n\nThank You!\n\n{site_name}\n{site_url}'),(10,1,'y','decline_member_validation','Your membership account has been declined','{name},\n\nWe\'re sorry but our staff has decided not to validate your membership.\n\n{site_name}\n{site_url}'),(11,1,'y','mailinglist_activation_instructions','Email Confirmation','Thank you for joining the \"{mailing_list}\" mailing list!\n\nPlease click the link below to confirm your email.\n\nIf you do not want to be added to our list, ignore this email.\n\n{unwrap}{activation_url}{/unwrap}\n\nThank You!\n\n{site_name}'),(12,1,'y','comment_notification','Someone just responded to your comment','{name_of_commenter} just responded to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comment at the following URL:\n{comment_url}\n\n{comment}\n\nTo stop receiving notifications for this comment, click here:\n{notification_removal_url}'),(13,1,'y','comments_opened_notification','New comments have been added','Responses have been added to the entry you subscribed to at:\n{channel_name}\n\nThe title of the entry is:\n{entry_title}\n\nYou can see the comments at the following URL:\n{comment_url}\n\n{comments}\n{comment}\n{/comments}\n\nTo stop receiving notifications for this entry, click here:\n{notification_removal_url}'),(14,1,'y','private_message_notification','Someone has sent you a Private Message','\n{recipient_name},\n\n{sender_name} has just sent you a Private Message titled ‘{message_subject}’.\n\nYou can see the Private Message by logging in and viewing your inbox at:\n{site_url}\n\nContent:\n\n{message_content}\n\nTo stop receiving notifications of Private Messages, turn the option off in your Email Settings.\n\n{site_name}\n{site_url}'),(15,1,'y','pm_inbox_full','Your private message mailbox is full','{recipient_name},\n\n{sender_name} has just attempted to send you a Private Message,\nbut your inbox is full, exceeding the maximum of {pm_storage_limit}.\n\nPlease log in and remove unwanted messages from your inbox at:\n{site_url}');
/*!40000 ALTER TABLE `exp_specialty_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_stats`
--

DROP TABLE IF EXISTS `exp_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_stats` (
  `stat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `last_cache_clear` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stat_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_stats`
--

LOCK TABLES `exp_stats` WRITE;
/*!40000 ALTER TABLE `exp_stats` DISABLE KEYS */;
INSERT INTO `exp_stats` VALUES (1,1,1,1,'Herman Marin',8,0,0,0,1430253120,0,0,1435879399,15,1428713439,1436142123);
/*!40000 ALTER TABLE `exp_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_status_groups`
--

DROP TABLE IF EXISTS `exp_status_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_status_groups` (
  `group_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_status_groups`
--

LOCK TABLES `exp_status_groups` WRITE;
/*!40000 ALTER TABLE `exp_status_groups` DISABLE KEYS */;
INSERT INTO `exp_status_groups` VALUES (1,1,'Statuses');
/*!40000 ALTER TABLE `exp_status_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_status_no_access`
--

DROP TABLE IF EXISTS `exp_status_no_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_status_no_access` (
  `status_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`status_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_status_no_access`
--

LOCK TABLES `exp_status_no_access` WRITE;
/*!40000 ALTER TABLE `exp_status_no_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_status_no_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_statuses`
--

DROP TABLE IF EXISTS `exp_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_statuses` (
  `status_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_id` int(4) unsigned NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_order` int(3) unsigned NOT NULL,
  `highlight` varchar(30) NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `group_id` (`group_id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_statuses`
--

LOCK TABLES `exp_statuses` WRITE;
/*!40000 ALTER TABLE `exp_statuses` DISABLE KEYS */;
INSERT INTO `exp_statuses` VALUES (1,1,1,'open',1,'009933'),(2,1,1,'closed',2,'990000');
/*!40000 ALTER TABLE `exp_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_groups`
--

DROP TABLE IF EXISTS `exp_template_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_groups` (
  `group_id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(4) unsigned NOT NULL DEFAULT '1',
  `group_name` varchar(50) NOT NULL,
  `group_order` int(3) unsigned NOT NULL,
  `is_site_default` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`group_id`),
  KEY `site_id` (`site_id`),
  KEY `group_name_idx` (`group_name`),
  KEY `group_order_idx` (`group_order`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_groups`
--

LOCK TABLES `exp_template_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_groups` DISABLE KEYS */;
INSERT INTO `exp_template_groups` VALUES (1,1,'includes',1,'n'),(2,1,'content',2,'y'),(3,1,'nosotros',3,'n'),(4,1,'investigacion',4,'n'),(5,1,'novedades',5,'n'),(6,1,'costo-beneficio',6,'n'),(7,1,'plaza-bolivar',7,'n');
/*!40000 ALTER TABLE `exp_template_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_member_groups`
--

DROP TABLE IF EXISTS `exp_template_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_member_groups` (
  `group_id` smallint(4) unsigned NOT NULL,
  `template_group_id` mediumint(5) unsigned NOT NULL,
  PRIMARY KEY (`group_id`,`template_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_member_groups`
--

LOCK TABLES `exp_template_member_groups` WRITE;
/*!40000 ALTER TABLE `exp_template_member_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_template_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_no_access`
--

DROP TABLE IF EXISTS `exp_template_no_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_no_access` (
  `template_id` int(6) unsigned NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`template_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_no_access`
--

LOCK TABLES `exp_template_no_access` WRITE;
/*!40000 ALTER TABLE `exp_template_no_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_template_no_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_template_routes`
--

DROP TABLE IF EXISTS `exp_template_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_template_routes` (
  `route_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  `route` varchar(512) DEFAULT NULL,
  `route_parsed` varchar(512) DEFAULT NULL,
  `route_required` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`route_id`),
  KEY `template_id` (`template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_template_routes`
--

LOCK TABLES `exp_template_routes` WRITE;
/*!40000 ALTER TABLE `exp_template_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_template_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_templates`
--

DROP TABLE IF EXISTS `exp_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_templates` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `protect_javascript` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`template_id`),
  KEY `group_id` (`group_id`),
  KEY `template_name` (`template_name`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_templates`
--

LOCK TABLES `exp_templates` WRITE;
/*!40000 ALTER TABLE `exp_templates` DISABLE KEYS */;
INSERT INTO `exp_templates` VALUES (1,1,1,'index','n','webpage','',NULL,1427659497,0,'n',0,'','n','n','o',3,'n'),(2,1,1,'head','y','webpage','<!DOCTYPE html>\n<html>\n	<head>\n		<meta charset=\"utf-8\">\n		<title>Contribuyentes con Respeto</title>\n		\n    <!-- Project SEO -->\n    <meta name=\"description\" content=\"\">\n    <meta name=\"keywords\" content=\"\" /> \n    <meta name=\"author\" content=\"\" />\n\n    <!-- Responsiveness -->\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\">\n\n    <!-- Open Graph -->\n    <meta property=\"og:type\" content=\"website\">\n    <meta property=\"og:url\" content=\"\">\n    <meta property=\"og:title\" content=\"\">\n    <meta property=\"og:site_name\" content=\"Contribuyentes con Respeto\">\n    <meta property=\"og:description\" content=\"\">\n    <meta property=\"og:image\" content=\"\">\n\n    <!-- Twitter Cards -->\n    <meta name=\"twitter:card\" content=\"\">\n    <meta name=\"twitter:title\" content=\"\">\n    <meta name=\"twitter:url\" content=\"\">\n    <meta name=\"twitter:description\" content=\".\">\n    <meta name=\"twitter:site\" content=\"Contribuyentes con Respeto\">\n    <meta name=\"twitter:creator\" content=\"\">\n    <meta name=\"twitter:image\" content=\"\">\n\n    <!-- FAVICON -->\n    <link rel=\"shortcut icon\" href=\"http://tini.com.pe/favicon.ico\">\n\n    <!-- Apple Mobile -->\n    <meta name=\"apple-mobile-web-app-title\" content=\"\">\n    <meta name=\"apple-mobile-web-app-capable\" content=\"yes\">\n    <meta name=\"apple-mobile-web-app-status-bar-style\" content=\"black\">\n\n    <!-- Apple icons -->\n    <link rel=\"apple-touch-icon\" sizes=\"156x156\" href=\"#\">\n    <link rel=\"apple-touch-icon\" sizes=\"128x128\" href=\"#\">\n    <link rel=\"apple-touch-icon\" sizes=\"76x76\" href=\"#\">\n    <link rel=\"apple-touch-icon\" href=\"#\">\n    \n    <!--Webfont-->		\n		<link rel=\"stylesheet\" type=\"text/css\" href=\"{site_url}stylesheets/main.css\">\n		<script src=\"//use.typekit.net/ixt8tsd.js\"></script>\n		<script>try{Typekit.load();}catch(e){}</script>\n	</head>\n	<body>		','',1428269176,1,'n',0,'','n','n','o',0,'n'),(3,1,1,'nav','y','webpage','		<nav class=\"navbar navbar-custom\">\n		  <div class=\"container-fluid\">\n		    <!-- Brand and toggle get grouped for better mobile display -->\n		    <div class=\"navbar-header\">\n		      <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n		        <span class=\"sr-only\">Toggle navigation</span>\n		        <span class=\"icon-bar\"></span>\n		        <span class=\"icon-bar\"></span>\n		        <span class=\"icon-bar\"></span>\n		      </button>\n		      <a class=\"navbar-brand hidden-xs\" href=\"{site_url}\"><img src=\"http://placehold.it/250x80\"></a>\n		    </div>\n\n		    <!-- Collect the nav links, forms, and other content for toggling -->\n		    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n		      <ul class=\"nav navbar-nav\">\n		        <li><a href=\"{site_url}nosotros\">Nosotros</a></li>\n		        <li><a href=\"{site_url}investigacion\">Investigación</a></li>\n		        <li><a href=\"{site_url}#alianzas\">Alianzas</a></li>\n		        <li><a href=\"{site_url}novedades\">Novedades</a></li>\n		      </ul>\n			</div>\n		  </div>\n		</nav>		','',1428269176,1,'n',0,'','n','n','o',0,'n'),(4,1,1,'footer','y','webpage','		<footer class=\"footer\">\n			<div class=\"row m-0 \">\n				<div class=\"col-md-2\">\n					<a href=\"\"><img src=\"http://placehold.it/250x50\"></a>\n				</div>\n				<div class=\"col-md-6\"></div>\n				<div class=\"col-md-4 text-muted\">\n					<div class=\" text-right\">\n						<p>Contribuyente por Respeto</p>\n						<p>Av. Victor Andrés Belaunde 177, San Isidro</p>\n						<p>01 705 8029</p>\n						<p>cpr@gmail.com</p>\n					</div>\n				</div>\n			</div>\n		</footer>\n		<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js\"></script>\n	  	<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js\"></script>\n	</body>\n</html>','',1428269176,1,'n',0,'','n','n','o',0,'n'),(5,1,2,'index','y','webpage','{embed=\"includes/head\"}\n		{embed=\"includes/nav\"}\n		{exp:channel:entries channel=\"homepage\" limit=\"1\"}\n		<section id=\"portada\" style=\"background-image:url({imgen_hero});\">\n			<div class=\"text-vertical-center\">\n				<h1>{home_titulo_hero}</h1>\n				<p>{home_subttulo_hero}</p>\n			</div>\n		</section>\n		<section id=\"nosotros\" class=\"text-center\">\n			<div class=\"container\">\n				<div class=\"row\">\n					<div class=\"col-xs-2\"></div>\n					<div class=\"col-md-8\">\n						<p>{home_introduccion}</p>\n						<a class=\"btn btn-custom\" href=\"{site_url}nosotros\">Conoce más de nosotros</a>\n					</div>\n				</div>\n			</div>\n		</section>\n		<section id=\"investigacion\">\n			<div class=\"container-fluid p-0\">\n				<div class=\"row m-0\">\n					<div class=\"col-md-2\"></div>\n					<div class=\"col-md-8 text-center\">\n						<h2>Investigación</h2>\n						<p>{home_introduccin_investogacin}</p>\n					</div>\n				</div>\n				<div class=\"row m-0\">\n					<div class=\"col-md-4 bg-danger text-center text-muted\">\n						<h3>Costo y Beneficio</h3>\n						<p>{home_introduccion_costo_benefici}</p>\n						<a class=\"btn btn-custom\" href=\"{site_url}costo-beneficio\">ver más</a>\n					</div>\n					<div class=\"col-md-8 p-0\">\n						<div class=\"imagen\">\n							<img src=\"{home_imagen_costo_beneficio}\">\n						</div>\n					</div>\n				</div>\n				<div class=\"row m-0\">\n					<div class=\"col-md-8 p-0\">\n						<div class=\"imagen\">						\n							<img src=\"{home_imagen_plaza_bolivar}\">\n						</div>\n					</div>\n					<div class=\"col-md-4 bg-info text-center text-muted\">\n						<h3>Plaza Bolivar</h3>\n						<p>{home_introduccin_plaza_bolivar}</p>\n						<a class=\"btn btn-custom\" href=\"{site_url}plaza-bolivar\">ver más</a>\n					</div>\n				</div>\n				</div>\n		</section>\n		<section id=\"caricaturas\">\n			<div class=\"container-fluid p-0\">\n				<div class=\"row m-0\">\n					<div class=\"col-md-2\"></div>\n					<div class=\"col-md-8 text-center\">\n						<h2>Caricaturas</h2>\n						<p>{home_introduccion_caricaturas}</p>\n					</div>\n				</div>\n			</div>\n		</section>\n		<section id=\"alianzas\">\n			<div class=\"container\">\n				<div class=\"row m-0\">\n					<div class=\"col-xs-2\"></div>\n					<div class=\"col-xs-8\">\n						<h2 class=\"text-center\">Alianzas</h2>\n						<p>{home_introduccion_alianzas}</p>\n					</div>\n				</div>\n				<ul class=\"media-list\">\n	  			<li class=\"media\">\n	    			<div class=\"media-left\">\n	      			<a href=\"#\">\n	        			<img class=\"media-object\" src=\"http://placehold.it/100x100\" alt=\"...\">\n	      			</a>\n	    			</div>\n	    			<div class=\"media-body\">\n	      			<h3 class=\"media-heading\">Infraestructura para Todos</h3>\n	      			<p>Duis aute irure dolor in reprehenderit in voluptate velit esse\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n	    				</div>\n	  			</li>\n	  			<li class=\"media\">\n	    			<div class=\"media-left\">\n	      			<a href=\"#\">\n	        			<img class=\"media-object\" src=\"http://placehold.it/100x100\" alt=\"...\">\n	      			</a>\n	    			</div>\n	    			<div class=\"media-body\">\n	      			<h3 class=\"media-heading\">Proyectos de Ley</h3>\n	      			<p>Duis aute irure dolor in reprehenderit in voluptate velit esse\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n	    				</div>\n	  			</li>\n	  			<li class=\"media\">\n	    			<div class=\"media-left\">\n	      			<a href=\"#\">\n	        			<img class=\"media-object\" src=\"http://placehold.it/100x100\" alt=\"...\">\n	      			</a>\n	    			</div>\n	    			<div class=\"media-body\">\n	      			<h3 class=\"media-heading\">Atlas Network</h3>\n	      			<p>Duis aute irure dolor in reprehenderit in voluptate velit esse\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n	    				</div>\n	  			</li>\n				</ul>\n			</div>\n		</section>\n		<section id=\"novedades\" class=\"text-center\">\n			<div class=\"container p-0\">\n				<div class=\"row m-0\">\n						<div class=\"col-md-2\"></div>\n						<div class=\"col-md-8 novedades\">\n							<h2 class=\"tex-center\">Novedades</h2>\n							<p>{home_introduccion_novedades}</p>\n						</div>\n				</div>\n				<div class=\"row m-0 posts\">\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"http://placehold.it/300x250\">\n							<a href=\"\"><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"http://placehold.it/300x250\">\n							<a href=\"\"><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"http://placehold.it/300x250\">\n							<a href=\"\"><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n				</div>\n				<button class=\"btn btn-custom\">ver más</button>\n			</div>\n		</section>\n		<section id=\"noticias\" class=\"bg-danger\">\n			<div class=\"container\">\n				<div class=\"row\">\n					<div class=\"col-md-2\"></div>\n					<div class=\"col-md-8\">\n						<h4 class=\"text-center text-muted\">Mantente al tanto de nuestras noticias</h4>\n						<div class=\"input-group\">\n						  <input type=\"text\" class=\"form-control\" placeholder=\"ingresa tu correo electrónico\" aria-describedby=\"basic-addon2\">\n						  <span class=\"input-group-addon\" id=\"basic-addon2\">suscribirse</span>\n						</div>\n					</div>\n				</div>\n			</div>\n		</section>\n		<section id=\"redes\">\n			<div class=\"container\">\n				<div class=\"row m-0\">\n						<div class=\"col-md-2\"></div>\n						<div class=\"col-md-8 text-center\">\n							<h2>Síguenos</h2>\n							<p>{home_introduccion_siguenos}</p>\n						</div>\n				</div>\n				<div class=\"row m-0 redessociales\">\n					<div class=\"col-md-4\">\n						<div class=\"sociales\"><h3>Facebook</h3></div>\n					</div>\n					<div class=\"col-md-4\">\n						<div class=\"sociales\"><h3>Twitter</h3></div>\n					</div>\n					<div class=\"col-md-4\">\n						<div class=\"sociales\"><h3>Youtube</h3></div>\n					</div>\n				</div>\n			</div>\n		</section>\n		{/exp:channel:entries}\n{embed=\"includes/footer\"}		\n','',1428269176,1,'n',0,'','n','n','o',2114,'n'),(12,1,1,'alianzas','y','webpage','			  {exp:channel:entries channel=\"alianzas\" limit=\"1\" dynamic=\"off\"}\n	  			<li class=\"media\">\n	    			<div class=\"media-left\">\n	      			<a href=\"#\">\n	        			<img class=\"media-object\" src=\"{alianzas_imagen}\" alt=\"{title}\">\n	      			</a>\n	    			</div>\n	    			<div class=\"media-body\">\n	      			<h3 class=\"media-heading\">{title}</h3>\n	      			<p>{alianzas_descripcion}</p>\n	    			</div>\n	  			</li>\n	  		  {/exp:channel:entries}','',1428271722,1,'n',0,'','n','n','o',0,'n'),(13,1,1,'novedades','y','webpage','					{exp:channel:entries channel=\"novedades\" limit=\"3\" dynamic=\"off\"}\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"{novedades_imagen}\" alt=\"{title}\">\n							<a href=\"\"><h3>{title}</h3></a>\n							<p>{novedades_descripcion}</p>\n						</div>\n					</div>\n					{/exp:channel:entries}','',1428271731,1,'n',0,'','n','n','o',0,'n'),(7,1,3,'index','y','webpage','{embed=\"includes/head\"}\n		{embed=\"includes/nav\"}\n		<section id=\"portada\">\n			<div class=\"text-vertical-center\">\n				<h1>Somos contribuyentes</h1>\n				<p>subtítulo complementario explicando en detalle</p>\n			</div>\n		</section>\n		<section id=\"seccion2\" class=\"text-center\">\n			<div class=\"container-fluid\">\n				<div class=\"row m-0\">\n					<div class=\"col-md-2\"></div>\n					<div class=\"col-md-8 text-center\">\n						<div class=\"mision\">\n							<a href=\"\"><img src=\"http://placehold.it/100x100\">\n							<h3>Misión</h3></a>\n						</div>\n						<p>Duis aute irure dolor in reprehenderit in voluptate velit esse\n						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n						proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n					</div>\n				</div>\n				<div class=\"row m-0\">\n					<div class=\"col-md-2\"></div>\n					<div class=\"col-md-8 text-center\">\n						<div class=\"mision\">\n							<a href=\"\"><img src=\"http://placehold.it/100x100\">\n							<h3>Visión</h3></a>\n						</div>\n						<p>Duis aute irure dolor in reprehenderit in voluptate velit esse\n						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n						proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n					</div>\n				</div>\n			</div>\n		</section>\n		<section id=\"area\">\n			<div class=\"container-fluid p-0\">\n				<div class=\"row m-0 descripcion\">\n					<div class=\"col-md-2\"></div>\n					<div class=\"col-md-8 text-center\">\n						<h2>Área de Trabajo</h2>\n						<p>Duis aute irure dolor in reprehenderit in voluptate velit esse\n						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n						proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n					</div>\n				</div>\n				<div class=\"container\"> \n					<div class=\"row m-0 trabajo\">\n						<div class=\"col-md-2\"></div>\n						<div class=\"col-md-4\">\n							<div class=\"areastrabajo\">\n								<img src=\" http://placehold.it/300x245\">\n							</div>\n						</div>\n						<div class=\"col-md-4 text-center overlay\">\n							<h3>Área 1</h3>\n							<p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n						</div>\n					</div>\n					<div class=\"row m-0 trabajo\">\n						<div class=\"col-md-2\"></div>\n						<div class=\"col-md-4\">\n							<div class=\"areastrabajo\">\n								<img src=\" http://placehold.it/300x245\">\n							</div>\n						</div>\n						<div class=\"col-md-4 text-center overlay\">\n							<h3>Área 2</h3>\n							<p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n						</div>\n					</div>\n					<div class=\"row m-0 trabajo\">\n						<div class=\"col-md-2\"></div>\n						<div class=\"col-md-4\">\n							<div class=\"areastrabajo\">\n								<img src=\" http://placehold.it/300x245\">\n							</div>\n						</div>\n						<div class=\"col-md-4 text-center overlay\">\n							<h3>Área 3</h3>\n							<p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n						</div>\n					</div>\n				</div>\n			</div>\n		</section>\n		<section id=\"equipo\">\n			<h2 class=\"text-center\">Equipo</h2>\n			<div class=\"row m-0\">\n				<div class=\"col-md-2\"></div>\n				<div class=\"col-md-4\">\n					<div class=\"text-center\">\n						<img src=\" http://placehold.it/200x200\">\n						<h4>Juan Castro</h4>\n						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\n					</div>\n				</div>\n				<div class=\"col-md-4\">\n					<div class=\"text-center\">\n						<img src=\" http://placehold.it/200x200\">\n						<h4>Raúl Fuentes</h4>\n						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\n					</div>\n				</div>\n			</div>\n		</section>\n		<section id=\"asociados\">\n			<div class=\"container\">\n				<div class=\"row m-0 pt-35\">\n						<div class=\"col-md-8 col-md-offset-2 text-center\">\n							<h2>Asociados</h2>\n							<p>Duis aute irure dolor in reprehenderit in voluptate velit esse\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n						</div>\n				</div>\n				<div class=\"row m-0 colaboradores\">\n					<div class=\"col-md-2\">\n						<img src=\" http://placehold.it/150x40\">\n					</div>\n					<div class=\"col-md-2\">\n						<img src=\" http://placehold.it/150x40\">\n					</div>\n					<div class=\"col-md-2\">\n						<img src=\" http://placehold.it/150x40\">\n					</div>\n					<div class=\"col-md-2\">\n						<img src=\" http://placehold.it/150x40\">\n					</div>\n					<div class=\"col-md-2\">\n						<img src=\" http://placehold.it/150x40\">\n					</div>\n					<div class=\"col-md-2\">\n						<img src=\" http://placehold.it/150x40\">\n					</div>\n				</div>\n			</div>\n		</section>\n{embed=\"includes/footer\"}','',1428269176,1,'n',0,'','n','n','o',112,'n'),(8,1,4,'index','y','webpage','{embed=\"includes/head\"}\n		{embed=\"includes/nav\"}\n		<section id=\"portada\">\n			<div class=\"botones-portada\">\n			  <a href=\"#\" class=\"btn btn-default btn-fold\">Plaza Bolivar</a>\n			  <a href=\"#\" class=\"btn btn-default btn-fold\">Costo Beneficio</a>\n			</div>\n		</section>\n		<section id=\"nosotros\" class=\"text-center\">\n			<div class=\"container\">\n				<div class=\"row\">\n					<div class=\"col-xs-2\"></div>\n					<div class=\"col-md-8\">\n						<p>Contribuyentes por Respeto busca... sed do eiusmod\n						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n						quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n						consequat.</p>\n						<button class=\"btn btn-custom\">ver más</button>\n					</div>\n				</div>\n			</div>\n		</section>\n		<section id=\"novedades\" class=\"text-center\">\n			<div class=\"container p-0\">\n					<h2>Más de Costo Beneficio</h2>\n				<div class=\"row m-0 posts\">\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"http://placehold.it/300x250\">\n							<a href=\"\"><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"http://placehold.it/300x250\">\n							<a href=\"\"><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"http://placehold.it/300x250\">\n							<a href=\"\"><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n				</div>\n				<button class=\"btn btn-custom\">ver más</button>\n			</div>\n		</section>\n{embed=\"includes/footer\"}','',1428269176,1,'n',0,'','n','n','o',70,'n'),(9,1,5,'index','y','webpage','{embed=\"includes/head\"}\n		{embed=\"includes/nav\"}\n		<section id=\"portada\">\n		</section>\n		<section id=\"novedad\">\n			<div class=\"container\">\n				<div class=\"text-center\">\n					<h2>Novedades</h2>\n					<p>Duis aute irure dolor in reprehenderit in voluptate velit esse\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n				</div>\n				<div class=\"row m-0\">\n	 				<div class=\"col-md-4\">\n	 					<div class=\"novedades\">\n	 						<img src=\"http://placehold.it/300x300\">\n	 						<div class=\"overlay\">\n			  					<h4>Riesgos de Despidos Masivos y Potestas</h4>\n			  					<p>Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem</p>\n			  				</div>\n			  			</div>\n	 				</div>\n	 				<div class=\"col-md-4\">\n	 					<div class=\"novedades\">\n	 						<img src=\"http://placehold.it/300x300\">\n	 						<div class=\"overlay\">\n			  					<h4>Riesgos de Despidos Masivos y Potestas</h4>\n			  					<p>Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem</p>\n			  				</div>\n			  			</div>\n	 				</div>\n	 				<div class=\"col-md-4\">\n	 					<div class=\"novedades\">\n	 						<img src=\"http://placehold.it/300x300\">\n	 						<div class=\"overlay\">\n			  					<h4>Riesgos de Despidos Masivos y Potestas</h4>\n			  					<p>Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem</p>\n			  				</div>\n			  			</div>\n	 				</div>\n				</div>\n				<div class=\"row m-0\">\n	 				<div class=\"col-md-4\">\n	 					<div class=\"novedades\">\n	 						<img src=\"http://placehold.it/300x300\">\n	 						<div class=\"overlay\">\n			  					<h4>Riesgos de Despidos Masivos y Potestas</h4>\n			  					<p>Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem</p>\n			  				</div>\n			  			</div>\n	 				</div>\n	 				<div class=\"col-md-4\">\n	 					<div class=\"novedades\">\n	 						<img src=\"http://placehold.it/300x300\">\n	 						<div class=\"overlay\">\n			  					<h4>Riesgos de Despidos Masivos y Potestas</h4>\n			  					<p>Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem</p>\n			  				</div>\n			  			</div>\n	 				</div>\n	 				<div class=\"col-md-4\">\n	 					<div class=\"novedades\">\n	 						<img src=\"http://placehold.it/300x300\">\n	 						<div class=\"overlay\">\n			  					<h4>Riesgos de Despidos Masivos y Potestas</h4>\n			  					<p>Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem</p>\n			  				</div>\n			  			</div>\n	 				</div>\n				</div>\n				<div class=\"row m-0\">\n	 				<div class=\"col-md-4\">\n	 					<div class=\"novedades\">\n	 						<img src=\"http://placehold.it/300x300\">\n	 						<div class=\"overlay\">\n			  					<h4>Riesgos de Despidos Masivos y Potestas</h4>\n			  					<p>Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem</p>\n			  				</div>\n			  			</div>\n	 				</div>\n	 				<div class=\"col-md-4\">\n	 					<div class=\"novedades\">\n	 						<img src=\"http://placehold.it/300x300\">\n	 						<div class=\"overlay\">\n			  					<h4>Riesgos de Despidos Masivos y Potestas</h4>\n			  					<p>Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem</p>\n			  				</div>\n			  			</div>\n	 				</div>\n	 				<div class=\"col-md-4\">\n	 					<div class=\"novedades\">\n	 						<img src=\"http://placehold.it/300x300\">\n	 						<div class=\"overlay\">\n			  					<h4>Riesgos de Despidos Masivos y Potestas</h4>\n			  					<p>Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem</p>\n			  				</div>\n			  			</div>\n	 				</div>\n				</div>\n				<div class=\"row m-0\">\n	 				<div class=\"col-md-4\">\n	 					<div class=\"novedades\">\n	 						<img src=\"http://placehold.it/300x300\">\n	 						<div class=\"overlay\">\n			  					<h4>Riesgos de Despidos Masivos y Potestas</h4>\n			  					<p>Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem</p>\n			  				</div>\n			  			</div>\n	 				</div>\n	 				<div class=\"col-md-4\">\n	 					<div class=\"novedades\">\n	 						<img src=\"http://placehold.it/300x300\">\n	 						<div class=\"overlay\">\n			  					<h4>Riesgos de Despidos Masivos y Potestas</h4>\n			  					<p>Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem</p>\n			  				</div>\n			  			</div>\n	 				</div>\n	 				<div class=\"col-md-4\">\n	 					<div class=\"novedades\">\n	 						<img src=\"http://placehold.it/300x300\">\n	 						<div class=\"overlay\">\n			  					<h4>Riesgos de Despidos Masivos y Potestas</h4>\n			  					<p>Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem Lorem Lorem Llorem Lorem Lorem Lorem</p>\n			  				</div>\n			  			</div>\n	 				</div>\n				</div>\n			</div>\n		</section>\n{embed=\"includes/footer\"}','',1428269176,1,'n',0,'','n','n','o',58,'n'),(10,1,6,'index','y','webpage','{embed=\"includes/head\"}\n		{embed=\"includes/nav\"}\n		<section id=\"portada\">\n			<div class=\"botones-portada\">\n			  <a href=\"#\" class=\"btn btn-default btn-fold\">Plaza Bolivar</a>\n			  <a href=\"#\" class=\"btn btn-default btn-fold\">Costo Beneficio</a>\n			</div>\n		</section>\n		<section id=\"nosotros\">\n			<div class=\"container\">\n				<div class=\"row m-0\">\n							<div class=\"col-md-2\"></div>\n							<div class=\"col-md-8 text-center\">\n								<p>ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n								proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n								<p>ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n								proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n								<p>ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n								proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n							</div>\n				</div>\n			</div>\n		</section>\n		<section id=\"novedades\" class=\"text-center\">\n			<div class=\"container p-0\">\n					<h2>Más de Plaza Bolivar</h2>\n				<div class=\"row m-0 posts\">\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"http://placehold.it/300x250\">\n							<a href=\"\"><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"http://placehold.it/300x250\">\n							<a href=\"\"><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"http://placehold.it/300x250\">\n							<a href=\"\"><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n				</div>\n				<button class=\"btn btn-custom\">ver más</button>\n			</div>\n		</section>\n{embed=\"includes/footer\"}','',1428269176,1,'n',0,'','n','n','o',17,'n'),(11,1,7,'index','y','webpage','{embed=\"includes/head\"}\n		{embed=\"includes/nav\"}\n		<section id=\"portada\">\n			<div class=\"botones-portada\">\n			  <a href=\"#\" class=\"btn btn-default btn-fold\">Plaza Bolivar</a>\n			  <a href=\"#\" class=\"btn btn-default btn-fold\">Costo Beneficio</a>\n			</div>\n		</section>\n		<section id=\"nosotros\">\n			<div class=\"container\">\n				<div class=\"row m-0\">\n							<div class=\"col-md-2\"></div>\n							<div class=\"col-md-8 text-center\">\n								<p>ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n								proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n								<p>ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n								proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n								<p>ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n								tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n								quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n								consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n								cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n								proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n							</div>\n				</div>\n			</div>\n		</section>\n		<section id=\"novedades\" class=\"text-center\">\n			<div class=\"container p-0\">\n					<h2>Más de Plaza Bolivar</h2>\n				<div class=\"row m-0 posts\">\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"http://placehold.it/300x250\">\n							<a href=\"\"><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"http://placehold.it/300x250\">\n							<a href=\"\"><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n					<div class=\"col-md-4\">\n						<div class=\"post text-center\">\n							<img src=\"http://placehold.it/300x250\">\n							<a href=\"\"><h3>Nombre del Post 1</h3></a>\n							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\n						</div>\n					</div>\n				</div>\n				<button class=\"btn btn-custom\">ver más</button>\n			</div>\n		</section>\n{embed=\"includes/footer\"}','',1428269176,1,'n',0,'','n','n','o',17,'n');
/*!40000 ALTER TABLE `exp_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_throttle`
--

DROP TABLE IF EXISTS `exp_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_throttle` (
  `throttle_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL,
  `locked_out` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`throttle_id`),
  KEY `ip_address` (`ip_address`),
  KEY `last_activity` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_throttle`
--

LOCK TABLES `exp_throttle` WRITE;
/*!40000 ALTER TABLE `exp_throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_upload_no_access`
--

DROP TABLE IF EXISTS `exp_upload_no_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_upload_no_access` (
  `upload_id` int(6) unsigned NOT NULL,
  `upload_loc` varchar(3) NOT NULL,
  `member_group` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`upload_id`,`member_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_upload_no_access`
--

LOCK TABLES `exp_upload_no_access` WRITE;
/*!40000 ALTER TABLE `exp_upload_no_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_upload_no_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exp_upload_prefs`
--

DROP TABLE IF EXISTS `exp_upload_prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exp_upload_prefs` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
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
  `batch_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exp_upload_prefs`
--

LOCK TABLES `exp_upload_prefs` WRITE;
/*!40000 ALTER TABLE `exp_upload_prefs` DISABLE KEYS */;
INSERT INTO `exp_upload_prefs` VALUES (1,1,'Homepage','/var/www/html/images/homepage/','http://104.236.244.65/images/homepage/','img','','','','','','','','','','',NULL);
/*!40000 ALTER TABLE `exp_upload_prefs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-02 19:26:29
