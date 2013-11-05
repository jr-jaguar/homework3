-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: geekhub
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.04.1

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
-- Table structure for table `zru0x_assets`
--

DROP TABLE IF EXISTS `zru0x_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_assets`
--

LOCK TABLES `zru0x_assets` WRITE;
/*!40000 ALTER TABLE `zru0x_assets` DISABLE KEYS */;
INSERT INTO `zru0x_assets` VALUES (1,0,1,117,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,68,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,69,70,1,'com_cpanel','com_cpanel','{}'),(10,1,71,72,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,73,74,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,75,76,1,'com_login','com_login','{}'),(13,1,77,78,1,'com_mailto','com_mailto','{}'),(14,1,79,80,1,'com_massmail','com_massmail','{}'),(15,1,81,82,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,83,84,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,85,86,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,87,88,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,89,92,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,93,94,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,95,96,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,97,98,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,99,100,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,101,104,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,105,108,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,109,110,1,'com_wrapper','com_wrapper','{}'),(27,8,18,41,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,90,91,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,106,107,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,102,103,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,111,112,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,113,114,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,38,45,46,3,'com_content.article.1','Про GeekHub','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(36,1,115,116,1,'com_jce','jce','{}'),(37,38,43,44,3,'com_content.article.2','dfgfd','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(38,8,42,49,2,'com_content.category.8','123','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(39,27,19,20,3,'com_content.article.3','Про GeekHub1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(40,27,21,22,3,'com_content.article.4','КОМАНДА','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(41,27,23,24,3,'com_content.article.5','FAQ','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(42,27,25,26,3,'com_content.article.6','ЗВ\'ЯЗОК','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(43,38,47,48,3,'com_content.article.7','Frontend CMS','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(44,27,27,28,3,'com_content.article.8','Advanced CMS','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(45,8,50,67,2,'com_content.category.9','detalis','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(46,45,51,52,3,'com_content.article.9','Advanced PHP','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(47,45,53,54,3,'com_content.article.10','JavaScript','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(48,27,29,30,3,'com_content.article.11','iOS','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(49,45,55,56,3,'com_content.article.12','Android','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(50,45,57,58,3,'com_content.article.13','Ruby on Rails','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(51,45,59,60,3,'com_content.article.14','Groovy & Grails','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(52,27,31,32,3,'com_content.article.15','Java for Web','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(53,45,61,62,3,'com_content.article.16','Project Management','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(54,45,63,64,3,'com_content.article.17','Quality Assurance','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(55,45,65,66,3,'com_content.article.18','Business English','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(56,27,33,34,3,'com_content.article.19','НАШІ КУРСИ','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(57,27,35,36,3,'com_content.article.20','Про GeekHub2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(58,27,37,38,3,'com_content.article.21','Register','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(59,27,39,40,3,'com_content.article.22','About','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
/*!40000 ALTER TABLE `zru0x_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_associations`
--

DROP TABLE IF EXISTS `zru0x_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_associations`
--

LOCK TABLES `zru0x_associations` WRITE;
/*!40000 ALTER TABLE `zru0x_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_banner_clients`
--

DROP TABLE IF EXISTS `zru0x_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_banner_clients`
--

LOCK TABLES `zru0x_banner_clients` WRITE;
/*!40000 ALTER TABLE `zru0x_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_banner_tracks`
--

DROP TABLE IF EXISTS `zru0x_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_banner_tracks`
--

LOCK TABLES `zru0x_banner_tracks` WRITE;
/*!40000 ALTER TABLE `zru0x_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_banners`
--

DROP TABLE IF EXISTS `zru0x_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_banners`
--

LOCK TABLES `zru0x_banners` WRITE;
/*!40000 ALTER TABLE `zru0x_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_categories`
--

DROP TABLE IF EXISTS `zru0x_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_categories`
--

LOCK TABLES `zru0x_categories` WRITE;
/*!40000 ALTER TABLE `zru0x_categories` DISABLE KEYS */;
INSERT INTO `zru0x_categories` VALUES (1,0,0,0,17,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',0,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*'),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"_:blog\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:26:37',662,'2013-10-28 10:47:49',0,'*'),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*'),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*'),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*'),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',42,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(8,38,1,13,14,1,'123','com_content','123','123','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"_:blog\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',662,'2013-10-28 10:52:54',662,'2013-10-29 07:49:44',0,'*'),(9,45,1,15,16,1,'detalis','com_content','detalis','detalis','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',662,'2013-11-01 15:25:44',0,'0000-00-00 00:00:00',0,'*');
/*!40000 ALTER TABLE `zru0x_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_contact_details`
--

DROP TABLE IF EXISTS `zru0x_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_contact_details`
--

LOCK TABLES `zru0x_contact_details` WRITE;
/*!40000 ALTER TABLE `zru0x_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_content`
--

DROP TABLE IF EXISTS `zru0x_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_content`
--

LOCK TABLES `zru0x_content` WRITE;
/*!40000 ALTER TABLE `zru0x_content` DISABLE KEYS */;
INSERT INTO `zru0x_content` VALUES (1,35,'Про GeekHub','pro-geekhub','','<ul>\r\n<li>\r\n<div>GeekHub - це проект, що надає можливість талановитій молоді отримати практичні знання та навички в сфері розробки програмного забезпечення та IT вцілому. Команда Geekhub — це группа</div>\r\n','\r\n<div>професіоналів в інформаційних технологіях, які готують слухачів курсів до успішної кар’єри в індустрії. Всі члени команди Geekhub працюють у провідних софтверних компаніях, кожного дня оновлюючи свої знання та навички інноваціями в інформаційних технологіях. Саме це дає змогу викладати виключно потрібний матеріал, що знадобиться при роботі в реальних виробничих умовах.</div>\r\n</li>\r\n<li>\r\n<div>Ми шукаємо мотивованих учнів та студентів, які мріють отримати професію в інформаційних технологіях, для інтенсивного практичного навчання з розробки веб та мобільних додатків. Ми хочемо щоб молоді таланти теж змогли приєднатись до спільноти професіоналів інформаційних технологій і створювали унікальні інтегровані продукти для поліпшення умов праці і життя людей навколо нас.</div>\r\n<div>Ми називаємо Geekhub “Open Source”, тому що саме ця ідеологія керує всією програмою. Все що ми робимо обертається навколо взаємовідносин між людьми. Курси Geekhub не коштують грошей, все що вимагається — це внутрішня мотивація та багато самостійної роботи.</div>\r\n</li>\r\n<li>\r\n<div>Якщо ви зацікавлені у співробітництві з GeekHub, або у вас є ідеї щодо того, як зробити GeekHub краще - будь-ласка, <a href=\"http://geekhub.ck.ua/contacts.html\">зв\'яжіться з нами</a> будь яким зручним для вас шляхом</div>\r\n</li>\r\n<li>{mosmap}</li>\r\n</ul>',-2,0,0,8,'2013-10-28 08:29:55',662,'','2013-10-28 10:53:35',662,0,'0000-00-00 00:00:00','2013-10-28 08:29:55','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',11,0,1,'','',1,23,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,37,'dfgfd','dfgfd','','<p>dfgsgfsdgfsgdgssfgsfdgfdgdfgdf</p>\r\n<p>&nbsp;</p>\r\n<p>cvbgxcvh</p>\r\n','<hr class=\"system-pagebreak\" />\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>fgh</p>\r\n<p>gfhjgfhdj</p>\r\n<p>gfh</p>\r\n<p>gfh</p>\r\n<p>gf</p>\r\n<p>hg</p>\r\n<p>fh</p>\r\n<p>dfgh</p>\r\n<p>g</p>\r\n<p>fh</p>',-2,0,0,8,'2013-10-28 10:51:51',662,'','2013-10-29 07:04:25',662,0,'0000-00-00 00:00:00','2013-10-28 10:51:51','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,0,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(3,39,'Про GeekHub1','pro-geekhub1','','<ul>\r\n<li>\r\n<h2>Про GeekHub</h2>\r\n</li>\r\n<li><hr /></li>\r\n<li>\r\n<p><img style=\"float: left;\" src=\"images/about.png\" alt=\"\" />GeekHub - це проект, що надає можливість талановитій молоді отримати практичні знання та навички в сфері розробки програмного забезпечення та IT вцілому. Команда Geekhub — це группа професіоналів в інформаційних технологіях, які готують слухачів курсів до успішної кар’єри в індустрії. Всі члени команди Geekhub працюють у провідних софтверних компаніях, кожного дня оновлюючи свої знання та навички інноваціями в інформаційних технологіях. Саме це дає змогу викладати виключно потрібний матеріал, що знадобиться при роботі в реальних виробничих умовах.</p>\r\n</li>\r\n<li>\r\n<p>Ми шукаємо мотивованих учнів та студентів, які мріють отримати професію в інформаційних технологіях, для інтенсивного практичного навчання з розробки веб та мобільних додатків. Ми хочемо щоб молоді таланти теж змогли приєднатись до спільноти професіоналів інформаційних технологій і створювали унікальні інтегровані продукти для поліпшення умов праці і життя людей навколо нас.</p>\r\n<p>Ми називаємо Geekhub “Open Source”, тому що саме ця ідеологія керує всією програмою. Все що ми робимо обертається навколо взаємовідносин між людьми. Курси Geekhub не коштують грошей, все що вимагається — це внутрішня мотивація та багато самостійної роботи.</p>\r\n</li>\r\n<li>\r\n<p>Якщо ви зацікавлені у співробітництві з GeekHub, або у вас є ідеї щодо того, як зробити GeekHub краще - будь-ласка, <a href=\"index.php?option=com_content&view=article&id=6\">зв\'яжіться з нами</a> будь яким зручним для вас шляхом.</p>\r\n</li>\r\n</ul>','',1,0,0,2,'2013-11-01 10:29:49',662,'','2013-11-05 16:31:40',662,0,'0000-00-00 00:00:00','2013-11-01 10:29:49','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,10,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,40,'КОМАНДА','komanda','','<div class=\"team\">\r\n            <h2>Команда GeekHub</h2>\r\n            <ul>\r\n                <li class=\"odd\">\r\n                    <h3>Євген “Jack” Григор’єв <span>Старший девелопер PHP <br />в Мaster of Code</span></h3>\r\n                    <img src=\"images/jack.png\" />\r\n                    <p>Працює з рядом технологій, включаючи Symfony, Drupal, jQuery, Compass CSS, HAML, etc.\r\n                        Майстерність Євгена стоїть за такими проектами як <a href=\"http://www.belvilla.nl/\">Belvilla</a>, <a href=\"http://yesorno.ch/\">Yes or No</a>, <a href=\"http://www.webshop.jongenvrij.nl/\">Jongenvrij webshop</a>, <a href=\"http://usgovernmentauctions.net/\">USGA</a> та багато інших. У Geekhub Євген викладає Advanced CMS.</p>\r\n                </li>\r\n                <li>\r\n                    <h3>Тимофій “Common” Козак <span>Технічний директор <br />у Presentain. </span></h3>\r\n                    <img src=\"images/cmn.png\" />\r\n                    <p>Тимофій розвиває індустрію мобільних додатків. На його рахунку такі проекти як KandleFly, SecondChance, Yak Messenger, <a href=\"http://presentain.com/\">Presentain</a>, <a href=\"http://www.maximsoftware.com/\">MaximSoftware</a>, <a href=\"http://mclean-design.com/\">MClean-design</a> та багато інших. В Geekhub Тимофій викладає iOS.</p>\r\n                </li>\r\n		        <li class=\"odd\">\r\n                    <h3>Олег Пасько <span>Старший девелопер <br />в Everlabs.com. </span></h3>\r\n                    <img src=\"images/pasko.png\" />\r\n                    <p>Олег полюбляє розв\'язувати бізнес-задачі в IT за допомогою RoR. На рахунку Олега такі проекти як <a href=\'http://shopius.ru\'>shopius.ru</a>, <a href=\'http://totravelme.ru\'>totravelme.ru</a>, <a href=\'http://clickaway.ru\'>clickaway.ru</a> та ряд інших цікавих проектів для різних компаній. У GeekHub Олег викладає Ruby on Rails.</p>\r\n                </li>\r\n		        <li>\r\n                    <h3>Сергій Босовський <span>Старший Android developer <br />в Master of Code. </span></h3>\r\n                    <img src=\"images/boss.png\" />\r\n                    <p>Сергій займається питаннями інтерфейсів і обробки контенту, кастомними компонентами UI та інтеграцією андроїд аппів із зовнішніми сервісами. Сергій працював над такими проектами як <a href=\"https://market.android.com/details?id=com.sandsmedia.apps.mobile.android.jtj\">Java Tech Journal</a>, <a href=\"https://market.android.com/details?id=com.sirma.mobile.bible.android\">LifeChurch Android app</a> та <a href=\"https://market.android.com/details?id=com.masterofcode.android.yakchat\">Yak messenger</a>. У GeekHub Сергій викладає Java for Android.</p>\r\n                </li>\r\n                <li class=\"odd\">\r\n                    <h3>Іван Хижняк <span>Старший девелопер PHP. </span></h3>\r\n                    <img src=\"images/user.png\" />\r\n                    <p>У GeekHub викладає Advanced PHP.</p>\r\n                </li>\r\n                <li>\r\n                    <h3>Нік Курат <span>Управляючий партнер<br />в Master of Code</span></h3>\r\n                    <img src=\"images/nkurat.png\" />\r\n                    <p>Нік займається розвитком бізнесу компанії Master of Code LLC та розвитком стартапу presentain.com . У складі Geekhub Нік викладає Project Management та працює над брендінгом та маркетингом проекту.</p>\r\n                </li>\r\n                <li class=\"odd\">\r\n                    <h3>Валентин Ярмолатій <span>Логістичний менеджер <br />в Master of Code</span></h3>\r\n                    <img src=\"images/val.png\" />\r\n                    <p>Валентин займається питаннями технічного забезпечення Geekhub.</p>\r\n                </li>\r\n                <li>\r\n                    <h3>Олег Зінченко <span>TeamLead <br />в  <a href=\"http://exercise.com\">Exercise.com</a>, Inc. </span></h3>\r\n                    <img src=\"images/oleg_zinchenko.png\" />\r\n                    <p>Олег професiйно займаеться розробкою веб додаткiв на PHP з використанням сучасних фреймфоркiв. Адепт Symfony2. У GeekHub Олег викладає Advanced PHP.</p>\r\n                </li>                \r\n                <li class=\"odd\">\r\n                    <h3>Tim Phipps <span>English Language Tutor</span></h3>\r\n                    <img src=\"images/tim_phipps.png\" />\r\n                    <p>Since gaining his CELTA teaching qualification, Tim has specialised in private English lessons, meeting a wide range of student needs. At Geekhub Tim leads the Technical English course.</p>\r\n                </li>\r\n                <li>\r\n                    <h3>Юрій Курат <span>CEO в N3w Normal</span></h3>\r\n                    <img src=\"images/jurii_kurat.png\" />\r\n                    <p>Юрій працює із командою розробників веб та кросс-платформових мобільних технологій. Його нещодавні проекти включають у себе <a href=\"http://stickyalbums.com\">stickyalbums.com</a>, <a href=\"http://chewy.com\">chewy.com</a>. У GeekHub Юрій займається організацією та розвитком проекту.</p>\r\n                </li>\r\n                <li class=\"odd\">\r\n                    <h3>Сергій Ключник <span>Backend та frontend девелопер <br />в Master of Code. </span></h3>\r\n                    <img src=\"images/kluchnik.png\" />\r\n                    <p>Сергій - активний учасник open source community, контріб\'ютор <a href=\"https://github.com/jquery/qunit/blob/master/AUTHORS.txt\">jQuery Foundation</a>, створив багато <a href=\"https://github.com/redexp?tab=repositories\">проектів з відкритим кодом</a> на github. У повсякденній роботі Сергій займається як frontend, так і backend розробкою. У GeekHub Сергій викладає Javascript.</p>\r\n                </li>\r\n                <li>\r\n                    <h3>Олена Перекопська <span>Менеджер проектів <br />в Master of Code. </span></h3>\r\n                    <img src=\"images/olena_perekopska.png\" />\r\n                    <p>Олена має значний досвід у сфері контролю якості та управління проектами. У GeekHub викладає Quality Assurance.</p>\r\n                </li>                \r\n                <li class=\"odd\">\r\n                    <h3>Володимир Білоус <span>Java EE/ Android developer <br />в SPD Ukraine.</span></h3>\r\n                    <img src=\"images/volodymyr_bilous.png\" />\r\n                    <p>Володимир є Java та Android розробником у SPD Ukraine. Його основний проект -- <a href=\"http://nimblecommerce.com\">nimblecommerce.com</a> У GeekHub Володимир викладає Java for Web.</p>\r\n                </li>\r\n                <li>\r\n                    <h3>Валерій Олексієнко <span>Веб-розробник <br />в SPD-Ukraine.</span></h3>\r\n                    <img src=\"images/valerii_oleksienko.png\" />\r\n                    <p>Backend та frontend веб-розробник. Основні технології, з якими працює: Spring (MVC, Security), Hibernate, mySql, MongoDB, jQuery, Ext.js Хоббі включають сноуборд, музика, mobile development. У GeekHub Валерій викладає Java for Web.</p>\r\n                </li>                \r\n                <li class=\"odd\">\r\n                    <h3>Богдан Халяпін <span>Директор <br />в SPD-Ukraine. </span></h3>\r\n                    <img src=\"images/bogdan_haliapin.png\" />\r\n                    <p>Богдан керує компанією SPD-Ukraine та займається її розвитком. Має більше ніж 10 років досвіду з Java. У складі GeekHub Богдан є викладачем та координатором групи Java for Web.</p>\r\n                </li>                \r\n                <li>\r\n                    <h3>Олександра Корнійчук <span>Teamlead <br />у QAMadness. </span></h3>\r\n                    <img src=\"images/korneichuk.png\" />\r\n                    <p>Олександра займається розвитком бізнесу, а також керує командою тестувальників у компанії QAMadness.</p>\r\n                </li>                \r\n                <li class=\"odd\">\r\n                    <h3>Альона Лісіцина <span>Head Project Manager <br />в Master of Code. </span></h3>\r\n                    <img src=\"images/alona_lisicina.png\" />\r\n                    <p>Альона має науковий ступінь PhD та працює головним проектним менеджером у компанії Master of Code LLC. У Geekhub Альона викладає Project Management. </p>\r\n                </li>        \r\n                \r\n                        \r\n                <li>\r\n                    <h3>Богдан Данилюк <span>Розробник <br />у TransferWise. </span></h3>\r\n                    <img src=\"images/daniluk.png\" />\r\n                    <p>Богдан розробник у компанії TransferWise. Прихильник швидких, динамічних та надійних рішень у розробці програмного забезпечення. Викладатиме курс улюбленої мови програмування та фреймворку - Groovy & Grails.</p>\r\n                </li>                \r\n\r\n\r\n                <li class=\"odd\">\r\n                    <h3>Павло Надолинський <span>iOS девелопер <br />в Master of Code. </span></h3>\r\n                    <img src=\"images/nadolinskiy.png\" />\r\n                    <p>За досить невеликий час роботи, Павло встиг прийняти участь у багатьох проектах та здобути неабиякий досвід у розробці iOS додатків. У GeekHub викладає iOS.</p>\r\n                </li>                \r\n                \r\n                \r\n                        \r\n                <li>\r\n                    <h3>Дмитро Таряник <span>Android developer <br />в Master of Code. </span></h3>\r\n                    <img src=\"images/dmytro_tarianyk.png\" />\r\n                    <p>\r\n	                    На рахунку Дмитра такі проекти як <a href=\"https://play.google.com/store/apps/details?id=com.heineken.magazineapp\">Heineken Nederland Magazine</a>, <a href=\"https://play.google.com/store/apps/details?id=com.sirma.mobile.bible.android\">LifeChurch Android app</a>. У GeekHub викладає Java for Android.\r\n                    </p>\r\n                </li>                \r\n\r\n\r\n                <li class=\"odd\">\r\n                    <h3>Сергій Гичка <span>Backend developer <br />в Master of Code. </span></h3>\r\n                    <img src=\"images/sergii_gychka.png\" />\r\n                    <p>Сергій працює з такими технологіями як Symfony, Drupal, JS, Zend Framework, CodeIgniter. Його проекти включають InnoLaunch Platform, <a href=\"http://www.thevx.com/\">The VX</a>, <a href=\"http://fundforgenderequality.unwomen.org/\">Fund for Gender Equality</a>, <a href=\"http://untf.unwomen.org/\">UN Trust Fund to End Violence Against Women</a>. У GeekHub Сергій викладає Advanced CMS.</p>\r\n                </li>                \r\n                <li>\r\n                    <h3>Юра Батора <span>Team Leader <br />в SPD-Ukraine. </span></h3>\r\n                    <img src=\"images/jura_batora.png\" />\r\n                    <p>Юра займається розробкою комерційних проектів на Java зі складною клієнт-серверною архітектурою. У GeekHub викладає Java for Web.</p>\r\n                </li>        \r\n                <li class=\"odd\">\r\n                      <h3>Сергій Поліщук <span>Backend developer <br />в <a href=\"http://exercise.com\">Exercise.com</a>, Inc.</span></h3>\r\n                      <img src=\"images/polischuk.png\" />\r\n                      <p>Студент GeekHub у минулому, а зараз - backend девелопер в успішній продуктовій компанії США. Сергій полюбляє важкі задачі та прості рішення. У GeekHub Сергій викладає Advanced PHP. </p>\r\n                </li>\r\n                <li>\r\n                      <h3>Владислав Ящук <span>Старший CMS девелопер<br />в Master of Code.</a></span></h3>\r\n                      <img src=\"images/yaschuk.png\" />\r\n                      <p>Влад має значний досвід у розробці веб-сайтів на базі CMS. У GeekHub викладає Advanced CMS.</p>\r\n                </li>\r\n                <li class=\"odd\">\r\n					<h3>Андрій Береза <span>Java 7 Programmer <br />в SPD-Ukraine. </span></h3>\r\n					<img src=\"images/bereza.png\" />\r\n					<p>Андрій  - сертифікований Java 7 Programmer з великим досвідом реалізації back-end та front-end, у тому числі на проектах створення фінансових систем. У GeekHub викладає Java for Web.</p>\r\n                </li>\r\n            </ul>\r\n\r\n            \r\n        </div>','',1,0,0,2,'2013-11-01 10:39:07',662,'','2013-11-03 11:36:35',662,662,'2013-11-03 12:21:08','2013-11-01 10:39:07','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,9,'','',1,45,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,41,'FAQ','faq','','<div class=\"about\">\r\n<h2>Як відбувається рєстрація?</h2>\r\n<ul>\r\n<li class=\"imgs\"><img src=\"images/about.png\" alt=\"about\" width=\"274\" height=\"189\" /></li>\r\n<li>\r\n<h3>Етапи Реєстрації</h3>\r\n<p>Зарахування на курси проходить у 4 етапи:</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width=\"150\"><strong>до 14 вересня</strong></td>\r\n<td>Реєстрація на цьому веб-сайті</td>\r\n</tr>\r\n<tr>\r\n<td><strong>14 вересня</strong></td>\r\n<td>Вводне зібрання до сезону</td>\r\n</tr>\r\n<tr>\r\n<td><strong>21 вересня</strong></td>\r\n<td>Автоматизовані екзамени</td>\r\n</tr>\r\n<tr>\r\n<td><strong>28 вересня</strong></td>\r\n<td>Співбесіда для тих хто успішно пройшов автоматизовані екзамени</td>\r\n</tr>\r\n<tr>\r\n<td><strong>1 жовтня</strong></td>\r\n<td>Початок занять для зарахованих студентів</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</li>\r\n<li>\r\n<h3>Як підготуватися до вступних екзаменів?</h3>\r\n<p>На початку Серпня ми викладемо базові теми як необхідно освоїти для того щоб пройти вступний іспит. Кожен курс буде мати свій набір тем. Така система надає можливість мотивованим людям пройти на курс без попереднього досвіду у цій сфері.</p>\r\n</li>\r\n<li>\r\n<h3>Скільки коштують курси?</h3>\r\n<p>GeekHub -- це спільнота, тому курси безкоштовні. Від потенційних студентів ми вимагаємо високого рівня мотивації та багато часу роботи вдома.</p>\r\n</li>\r\n<li>\r\n<h3>Чи може GeekHub допомогти мені з працевлаштуванням?</h3>\r\n<p>Ми не займаємось працевлаштуванням студентів, що успішно завершили курс. Але як сторонній ефект, Черкаські компанії, знаючи про рівень викладання і сертифікованих студентів часто звертаються до нас за рекомендаціями. За статистикою минулого року, більше 80 процентів сертифікованих студентів були запрошені на роботу.</p>\r\n</li>\r\n<li>\r\n<h3>Який курс мені краще обрати, якщо я не маю зовсім ніякого досвіду у web?</h3>\r\n<p>Frontend</p>\r\n</li>\r\n</ul>\r\n</div>','',1,0,0,2,'2013-11-01 10:56:32',662,'','2013-11-03 11:33:01',662,0,'0000-00-00 00:00:00','2013-11-01 10:56:32','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,0,8,'','',1,33,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,42,'ЗВ\'ЯЗОК','zv-yazok','','<div class=\"contacts\">\r\n            <h2>Зв’язок</h2>\r\n            <dl>\r\n                <dt class=\"map\">\r\n                    <h3>Заходьте</h3>\r\n                </dt>\r\n                <dd class=\"map\"><div id=\"map\" style=\"width:382px; height:287px\">{mosmap}</div></dd>\r\n                <dt>\r\n                    <h3>Звоніть</h3>\r\n                </dt>\r\n                <dd><img src=\"images/phone.png\" alt=\"phone\" /></dd>\r\n                <dt>\r\n                    <h3>Пишіть</h3>\r\n                </dt>\r\n                <dd>\r\n                    <img src=\"images/email.png\" alt=\"email\"/>\r\n                </dd>\r\n                <dt>\r\n                    <h3>Слідкуйте</h3>\r\n                </dt>\r\n                <dd>\r\n                    <ul>\r\n                        <li class=\"fb\"><a href=\"http://www.facebook.com/pages/GeekHub/158983477520070\">facebook</a></li>\r\n                        <li class=\"vk\"><a href=\"http://vkontakte.ru/geekhub\">vkontakte</a></li>\r\n                        <li class=\"tw\"><a href=\"http://twitter.com/#!/geek_hub\">twitter</a></li>\r\n                    </ul>\r\n                </dd>\r\n                <dd>Перед тим як телефонувати, ознайомтесь із <a href=\"faq.html\" >сторінкою FAQ</a></dd>\r\n\r\n            </dl>\r\n        </div>','',1,0,0,2,'2013-11-01 11:27:18',662,'','2013-11-03 12:24:06',662,0,'0000-00-00 00:00:00','2013-11-01 11:27:18','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,0,7,'','',1,40,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,43,'Frontend CMS','frontend-cms','','<li>\r\n                    <img style=\"float: right;\" src=\"images/icon-frontend.png\" alt=\"frontend\">\r\n                    <h2>Frontend CMS</h2>\r\n                    <p>Цей курс допоможе вам навчитися створювати веб сайти на основі системи керування контентом. Все, від скінування дизайну до підключення CMS. Цей курс дасть вам чудовий старт для фріланса або роботи в компанії.</p>\r\n                    <h3>Команда</h3>\r\n                    <ul class=\"team\">\r\n                        <li>\r\n                            <img src=\"images/jack.png\" />\r\n                            <h3>Євген “Jack” Григор’єв</h3>\r\n                            <p>Працює з рядом технологій, включаючи Symfony, Drupal, jQuery, Compass CSS, HAML, etc.\r\n                                Майстерність Євгена стоїть за такими проектами як <a href=\"http://www.belvilla.nl/\">Belvilla</a>, <a href=\"http://yesorno.ch/\">Yes or No</a>, <a href=\"http://www.webshop.jongenvrij.nl/\">Jongenvrij webshop</a>, <a href=\"http://usgovernmentauctions.net/\">USGA</a> та багато інших. У Geekhub Євген викладає Advanced CMS.</p>\r\n                        </li>\r\n                    </ul>\r\n\r\n                    <h3>ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n                    <ul class=\"questions\">\r\n                        <li>Що таке HTML (Wikipedia)</li>\r\n                        <li>Що таке CSS (Wikipedia)</li>\r\n                        <li>Основи роботи інтернету (сервер, браузер, домен і т.п.)</li>\r\n                    </ul>\r\n                    <a class=\"register\" href=\"index.php?option=com_content&view=article&id=21\">Зареєструватися</a>\r\n                </li>','',1,0,0,8,'2013-11-01 15:16:49',662,'','2013-11-05 16:52:12',662,0,'0000-00-00 00:00:00','2013-11-01 15:16:49','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',11,0,0,'','',1,68,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,44,'Advanced CMS','advanced-cms','',' <li>\r\n                    <img style=\"float: right;\" src=\"images/icon-adv-cms.png\" />\r\n                    <h2>Advanced CMS</h2>\r\n                    <p>Курс для тих хто хоче навчитися створювати сайти різного рівня складності за допомогою популярних CMS Joomla та Drupal. Якщо ви хочете робити вебсайти як професіонал, цей курс для вас. Особливості різних CMS, використання та написання плагінів та компонентів, інтеграція із соціальними мережами та третьосторонніми сервісами.</p>\r\n\r\n                    <h3>Команда</h3>\r\n                    <ul class=\"team\">\r\n                        <li>\r\n                            <img src=\"images/sergii_gychka.png\" />\r\n                            <h3>Сергій Гичка</h3>\r\n                            <p>Сергій працює з такими технологіями як Symfony, Drupal, JS, Zend Framework, CodeIgniter. Його проекти включають InnoLaunch Platform, <a href=\"http://www.thevx.com/\">The VX</a>, <a href=\"http://fundforgenderequality.unwomen.org/\">Fund for Gender Equality</a>, <a href=\"http://untf.unwomen.org/\">UN Trust Fund to End Violence Against Women</a>. У GeekHub Сергій викладає Advanced CMS.</p>\r\n                        </li>\r\n                        <li>\r\n                              <img src=\"images/yaschuk.png\" />\r\n                              <h3>Владислав Ящук</h3>\r\n                              <p>Влад має значний досвід у розробці веб-сайтів на базі CMS. У GeekHub викладає Advanced CMS.</p>\r\n                        </li>\r\n\r\n                    </ul>\r\n\r\n                    <h3>ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n                    <ul class=\"questions\">\r\n                        <li>Базові знання HTML / CSS (HTML: структура сторінки, теги, посилання, зображення, форми, талиці; CSS: селектори, наслідування, псевдокласи, ідентифікатори і класи, інтеграція css-файлів з HTML)</li>\r\n                        <li>Базові знання PHP (синтаксис мови, основи ООП)</li>\r\n                        <li>Базові знання JavaScript (синтаксис, основи работи з JQuery)</li>\r\n                    </ul>\r\n                    <a class=\"register\" href=\"index.php?option=com_content&view=article\">Зареєструватися</a>\r\n                </li>','',1,0,0,2,'2013-11-01 15:22:49',662,'','2013-11-05 11:56:04',662,0,'0000-00-00 00:00:00','2013-11-01 15:22:49','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',10,0,6,'','',1,56,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,46,'Advanced PHP','advanced-php','',' <li>\r\n                    <img style=\"float: right;\" src=\"images/icon-adv-php.png\" />\r\n                    <h2>Advanced PHP</h2>\r\n                    <p>AdvancedPHP для тих хто хоче розвивати свої базові навички в PHP. Курс заглиблюється у вивчення ООП, MVC та паттернiв проектування на базі найпопулярнішого php фреймворку Symfony2. Курс буде корисний тим, хто вже спробував себе у написанні простих сайтів/web-додаткiв за допомогою популярних платформ, таких як Joomla, WP ect. AdvancedPHP для тих хто хоче прокачати свої знання та навички для виходу на новий рівень, де вiдсутнi обмеження платформ чи мов програмування.</p>\r\n\r\n                    <h3>Команда</h3>\r\n                    <ul class=\"team\">\r\n                        <li>\r\n                            <img src=\"images/oleg_zinchenko.png\" />\r\n                            <h3>Олег Зінченко</h3>\r\n                            <p>Олег професiйно займаеться розробкою веб додаткiв на PHP з використанням сучасних фреймфоркiв. Адепт Symfony2. У GeekHub Олег викладає Advanced PHP.</p>\r\n                        </li>\r\n                        <li>\r\n                            <img src=\"images/polischuk.png\" />\r\n                            <h3>Сергій Поліщук</h3>\r\n                            <p>Студент GeekHub у минулому, а зараз - backend девелопер в успішній продуктовій компанії США. Сергій полюбляє важкі задачі та прості рішення. У GeekHub Сергій викладає Advanced PHP. </p>\r\n                        </li>\r\n                    </ul>\r\n\r\n                    <h3>ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n                    <ul class=\"questions\">\r\n                        <li>Базові знання HTML / CSS (HTML: структура сторiнки, теги, посилання, зображення, форми, таблицi; CSS: селектори, наслiдування, псевдокласи, iдентифiкатори i класи, iнтеграцiя css-файлiв у HTML)</li>\r\n                        <li>Базові знання PHP - ситаксис, змінні, оператори та конструкції (if, for, foreach etc.)</li>\r\n                        <li>Базовий рівень англійської в IT (розумiння технiчної літератури і документації, вміння називати змінні англійською);</li>\r\n                        <li>Загальне розуміння роботи web (протоколи (http, ...), методи (POST, GET, ...), заголовки (cookies, …), коди відповідей (404, 302, ...), сервери, домени, браузери, кукі);</li>\r\n                        <li>Базові UNIX команди (ls, cp, mv, rm, chmod (в т.ч. опції), mkdir, ssh);</li>\r\n                        <li>Встановлена UNIX система на ноутбуці й вміння з нею управлятися (Ubuntu, Mac OS X і т.д.);</li>\r\n                        <li>Велике бажання й мотивація :)</li>\r\n                    </ul>\r\n                    <a class=\"register\" href=\"#\">Зареєструватися</a>\r\n                </li>','',1,0,0,9,'2013-11-01 16:15:34',662,'','2013-11-05 11:56:45',662,0,'0000-00-00 00:00:00','2013-11-01 16:15:34','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,7,'','',1,22,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,47,'JavaScript','javascript','',' <li>\r\n                    <img style=\"float: right;\" src=\"images/icon-js.png\" />\r\n                    <h2>JavaScript</h2>\r\n                    <p>Подивіться на список найбільш популярних мов - javascript в першій трійці. Це тому що все найцікавіше відбувається в браузері, а не на сервері. Javascript - це той інструмент який допоможе вам створювати дійсно зручні та швидкі веб сторінки.</p>\r\n\r\n                    <h3>Команда</h3>\r\n                    <ul class=\"team\">\r\n                        <li>\r\n                            <img src=\"images/kluchnik.png\" />\r\n                            <h3>Сергій Ключник</h3>\r\n                            <p>Сергій - активний учасник open source community, контріб\'ютор <a href=\"https://github.com/jquery/qunit/blob/master/AUTHORS.txt\">jQuery Foundation</a>, створив багато <a href=\"https://github.com/redexp?tab=repositories\">проектів з відкритим кодом</a> на github. У повсякденній роботі Сергій займається як frontend, так і backend розробкою. У GeekHub Сергій викладає Javascript.</p>\r\n                        </li>\r\n                    </ul>\r\n\r\n                    <h3>ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n                    <ul class=\"questions\">\r\n                        <li>Базові знання HTML</li>\r\n                        <li>Базові знання ООП</li>\r\n                        <li>Навички програмування на скриптовій мові програмування</li>\r\n                        <li>Синтаксис javascript</li>\r\n                    </ul>\r\n                    <a class=\"register\" href=\"#\">Зареєструватися</a>\r\n                </li>\r\n               ','',1,0,0,9,'2013-11-01 16:20:33',662,'','2013-11-05 12:02:23',662,0,'0000-00-00 00:00:00','2013-11-01 16:20:33','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,6,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,48,'iOS','ios','',' <li>\r\n                    <img style=\"float: right;\" src=\"images/icon-ios.png\" />\r\n                    <h2>iOS</h2>\r\n                    <p>Курс для швидкого старту в розробці програмного забезпечення під популярну мобільну платформу iOS. Від найпростйших принципів до повноцінного мобільного програмного забезпечення iPhone, iPod Touch, iPad.</p>\r\n\r\n                    <h3>Команда</h3>\r\n                    <ul class=\"team\">\r\n                        <li>\r\n                            <img src=\"images/cmn.png\" />\r\n                            <h3>Тимофій “Common” Козак</h3>\r\n                            <p>Тимофій розвиває індустрію мобільних додатків. На його рахунку такі проекти як KandleFly, SecondChance, Yak Messenger, <a href=\"http://presentain.com/\">Presentain</a>, <a href=\"http://www.maximsoftware.com/\">MaximSoftware</a>, <a href=\"http://mclean-design.com/\">MClean-design</a> та багато інших. В Geekhub Тимофій викладає iOS.</p>\r\n                        </li>\r\n                        <li>\r\n                            <img src=\"images/nadolinskiy.png\" />\r\n                            <h3>Павло Надолинський</h3>\r\n                            <p>За досить невеликий час роботи, Павло встиг прийняти участь у багатьох проектах та здобути неабиякий досвід у розробці iOS додатків. У GeekHub викладає iOS.</p>\r\n                        </li>\r\n                    </ul>\r\n\r\n                    <h3>ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n                    <ul class=\"questions\">\r\n                        <li>(Ноутбук з OS X) АБО (PC з OS X + iPhone/iPad/iPod Touch)</li>\r\n                        <li>Базові навички програмування. (змінні, функції, цикли, умови, типи данних, алгоритми)</li>\r\n                        <li>Базові знання ООП</li>\r\n                        <li>Базовий рівень англійської в IT (вміння розуміти технічну літературу і документацію, називати змінні англійською);</li>\r\n                        <li>Бажання і мотивація до крові :)</li>\r\n                    </ul>\r\n                    <a class=\"register\" href=\"#\">Зареєструватися</a>\r\n                </li>','',1,0,0,2,'2013-11-01 16:21:28',662,'','2013-11-05 12:01:08',662,0,'0000-00-00 00:00:00','2013-11-01 16:21:28','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,5,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,49,'Android','android','',' <li>\r\n                    <img style=\"float: right;\"  src=\"images/icon-android.png\" />\r\n                    <h2>Android</h2>\r\n                    <p>Android - найпопулярніша операційна система для смартфонів. В даному курсі ми охопимо найважливіші елементи побудови додатків для даної платформи. Ознайомимося з основними компонентами UI та UX. Навчимося їх правильно використовувати. Також навчимося працювати в команді та побудуємо корисні додатки.</p>\r\n\r\n                    <h3>Команда</h3>\r\n                    <ul class=\"team\">\r\n                        <li>\r\n                            <img src=\"images/dmytro_tarianyk.png\" />\r\n                            <h3>Дмитро Таряник</h3>\r\n							<p>\r\n								На рахунку Дмитра такі проекти як <a href=\"https://play.google.com/store/apps/details?id=com.heineken.magazineapp\">Heineken Nederland Magazine</a>, <a href=\"https://play.google.com/store/apps/details?id=com.sirma.mobile.bible.android\">LifeChurch Android app</a>. У GeekHub викладає Java for Android.\r\n							</p>\r\n                        </li>\r\n                        <li>\r\n                            <img src=\"images/boss.png\" />\r\n                            <h3>Сергій Босовський</h3>\r\n                            <p>Сергій займається питаннями інтерфейсів і обробки контенту, кастомними компонентами UI та інтеграцією андроїд аппів із зовнішніми сервісами. Сергій працював над такими проектами як <a href=\"https://market.android.com/details?id=com.sandsmedia.apps.mobile.android.jtj\">Java Tech Journal</a>, <a href=\"https://market.android.com/details?id=com.sirma.mobile.bible.android\">LifeChurch Android app</a> та <a href=\"https://market.android.com/details?id=com.masterofcode.android.yakchat\">Yak messenger</a>. У GeekHub Сергій викладає Java for Android.</p>\r\n                        </li>\r\n                    </ul>\r\n\r\n                    <h3>ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n                    <ul class=\"questions\">\r\n                        <li>Добре розуміння ООП</li>\r\n                        <li>Базові знання Java</li>\r\n                        <li>Мотивація та бажання розвиватись</li>\r\n                        <li>Базові знання роботи з Git вітаються</li>\r\n                    </ul>\r\n                    <a class=\"register\" href=\"#\">Зареєструватися</a>\r\n                </li>','',1,0,0,9,'2013-11-01 16:23:02',662,'','2013-11-05 11:57:24',662,0,'0000-00-00 00:00:00','2013-11-01 16:23:02','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,5,'','',1,16,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(13,50,'Ruby on Rails','ruby-on-rails','','<li>\r\n                    <img style=\"float: right;\" src=\"images/icon-ruby.png\" />\r\n                    <h2>Ruby on Rails</h2>\r\n                    <p>Ruby on Rails (RoR) є популярним та затребуваним фреймворком для написання веб-сервісів на мові програмування Ruby. Використовуючи основні переваги Ruby (динамічна мова для об\'єктно-орієнтовного програмування, що відрізняється лаконічністю і інтуітивністю) та еталонної MVC архітектури — RoR дозволяє розробляти якісні веб-сервіси швидкими темпами. Серед веб-проектiв, що написані на Ruby on Rails можна виділити — GitHub, Twitter, Basecamp, Groupon, YP, Shopify та інші.</p>\r\n\r\n                    <h3>Команда</h3>\r\n                    <ul class=\"team\">\r\n                        <li>\r\n                            <img src=\"images/pasko.png\" />\r\n                            <h3>Олег Пасько</h3>\r\n                            <p>Олег полюбляє розв\'язувати бізнес-задачі в IT за допомогою RoR. На рахунку Олега такі проекти як <a href=\'http://shopius.ru\'>shopius.ru</a>, <a href=\'http://totravelme.ru\'>totravelme.ru</a>, <a href=\'http://clickaway.ru\'>clickaway.ru</a> та ряд інших цікавих проектів для різних компаній. У GeekHub Олег викладає Ruby on Rails.</p>\r\n                        </li>\r\n                    </ul>\r\n\r\n                    <h3>ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n                    <ul class=\"questions\">\r\n                        <li>Базові знання HTML / CSS (HTML: структура сторiнки, теги, посилання, зображення, форми, таблицi; CSS: селектори, наслiдування, псевдокласи, iдентифiкатори i класи, iнтеграцiя css-файлiв у HTML)</li>\r\n                        <li>Базовий рівень англійської в IT (розумiння технiчної літератури і документації, вміння називати змінні англійською);</li>\r\n                        <li>Загальне розуміння роботи web (протоколи (http, ...), методи (POST, GET, ...), заголовки (cookies, …), коди відповідей (404, 302, ...), сервери, домени, браузери, кукі);</li>\r\n                        <li>Базові UNIX команди (ls, cp, mv, rm, chmod (в т.ч. опції), mkdir, ssh);</li>\r\n                        <li>Встановлена UNIX система на ноутбуці й вміння з нею управлятися (Ubuntu, Mac OS X і т.д.);</li>\r\n                        <li>Велике бажання й мотивація :)</li>\r\n                    </ul>\r\n                    <a class=\"register\" href=\"#\">Зареєструватися</a>\r\n                </li>\r\n               ','',1,0,0,9,'2013-11-01 16:25:04',662,'','2013-11-05 12:07:08',662,0,'0000-00-00 00:00:00','2013-11-01 16:25:04','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,4,'','',1,7,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(14,51,'Groovy & Grails','groovy-grails','','                <li>\r\n                    <img style=\"float: right;\" src=\"images/icon-grails.png\" />\r\n                    <h2>Groovy & Grails</h2>\r\n                    <p>Познайомтесь з одним з найпотужніших фреймворків для швидкої розробки веб-додатків. Гнучкість динамічної мови Groovy (що є надмножиною Java, що на 100% сумiсна Groovy) поєднуються з силою та рiзноманiтнiстю Java бiблiотек та фреймворкiв. Grails - це не тільки набір бібліотек, але й певна філософія розробки, що базуеться на паттернах та найкращих практиках, які стали загальноприйнятими не тільки в середовищі Java, але й в програмуванні вцілому. Спираючись на відносно низький поріг входження, ми спробуемо розглянути повний цикл розробки веб-додатку: побудова інтерфейсу, обробка внутрішньої логіки, зберігання даних.</p>\r\n\r\n                    <h3>Команда</h3>\r\n                    <ul class=\"team\">\r\n                        <li>\r\n                            <img src=\"images/daniluk.png\" />\r\n                            <h3>Богдан Данилюк</h3>\r\n                            <p>Богдан розробник у компанії TransferWise. Прихильник швидких, динамічних та надійних рішень у розробці програмного забезпечення. Викладатиме курс улюбленої мови програмування та фреймворку - Groovy & Grails.</p>\r\n                        </li>\r\n                    </ul>\r\n\r\n                    <h3>ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n                    <ul class=\"questions\">\r\n                        <li>Базові знання HTML / CSS (HTML: структура сторiнки, теги, посилання, зображення, форми, таблицi; CSS: селектори, наслiдування, псевдокласи, iдентифiкатори i класи, iнтеграцiя css-файлiв у HTML)</li>\r\n                        <li>Базовий рівень англійської в IT (розумiння технiчної літератури і документації, вміння називати змінні англійською);</li>\r\n                        <li>Загальне розуміння роботи web (протоколи (http, ...), методи (POST, GET, ...), заголовки (cookies, …), коди відповідей (404, 302, ...), сервери, домени, браузери, кукі);</li>\r\n                        <li>Базові UNIX команди (ls, cp, mv, rm, chmod (в т.ч. опції), mkdir, ssh);</li>\r\n                        <li>Встановлена UNIX система на ноутбуці й вміння з нею управлятися (Ubuntu, Mac OS X і т.д.);</li>\r\n                        <li>Велике бажання й мотивація :)</li>\r\n                    </ul>\r\n                    <a class=\"register\" href=\"#\">Зареєструватися</a>\r\n                </li>','',1,0,0,9,'2013-11-01 16:32:49',662,'','2013-11-05 11:59:31',662,0,'0000-00-00 00:00:00','2013-11-01 16:32:49','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,3,'','',1,8,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(15,52,'Java for Web','java-for-web','','<li>\r\n                    <img style=\"float: right;\" src=\"images/icon-java.png\" />\r\n                    <h2>Java for Web</h2>\r\n                    <p>Java -- це основа ентерпрайз технологій. Ви ознайомитесь із мовою, основними классами і пакетами, а також найбільш популярними та потужними фреймворками для розробки веб-аплікейшенів. Курс вимагає підвищеного рівня самостійної роботи, але отримані знання приносять особливу винагороду в роботі.</p>\r\n\r\n                    <h3>Команда</h3>\r\n                    <ul class=\"team\">\r\n                        <li>\r\n                            <img src=\"images/jura_batora.png\" />\r\n                            <h3>Юра Батора</h3>\r\n                            <p>Юра займається розробкою комерційних проектів на Java зі складною клієнт-серверною архітектурою. У GeekHub викладає Java for Web.</p>\r\n                        </li>\r\n                        <li>\r\n                            <img src=\"images/bogdan_haliapin.png\" />\r\n                            <h3>Богдан Халяпін</h3>\r\n                            <p>Богдан керує компанією SPD-Ukraine та займається її розвитком. Має більше ніж 10 років досвіду з Java. У складі GeekHub Богдан є викладачем та координатором групи Java for Web.</p>\r\n                        </li>\r\n                        <li>\r\n                            <img src=\"images/valerii_oleksienko.png\" />\r\n                            <h3>Валерій Олексієнко</h3>\r\n                            <p>Backend та frontend веб-розробник. Основні технології, з якими працює: Spring (MVC, Security), Hibernate, mySql, MongoDB, jQuery, Ext.js Хоббі включають сноуборд, музика, mobile development. У GeekHub Валерій викладає Java for Web.</p>\r\n                        </li>\r\n                        <li>\r\n                            <img src=\"images/bereza.png\" />\r\n                            <h3>Андрій Береза</h3>\r\n                            <p>Андрій  - сертифікований Java 7 Programmer з великим досвідом реалізації back-end та front-end, у тому числі на проектах створення фінансових систем. У GeekHub викладає Java for Web.</p>\r\n                        </li>\r\n                        <li>\r\n                            <img src=\"images/volodymyr_bilous.png\" />\r\n                            <h3>Володимир Білоус</h3>\r\n                            <p>Володимир є Java та Android розробником у SPD Ukraine. Його основний проект -- <a href=\"http://nimblecommerce.com\">nimblecommerce.com</a> У GeekHub Володимир викладає Java for Web.</p>\r\n                        </li>\r\n                    </ul>\r\n\r\n                    <h3>ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n                    <ul class=\"questions\">\r\n                        <li>Базові знання HTML (структура сторінки, теги, посилання, форми)</li>\r\n                        <li>Базові знання Java (cинтаксис, ключові слова, базові типи, поняття пакет, клас, метод, змінна, модифікатори доступу, ...)</li>\r\n                        <li>Базові знання ООП (поняття об’єкт, клас, наслідування, інтерфейс, ...)</li>\r\n                        <li>Базовий рівень англійської (розуміння технічної літератури та документації, вміння називати змінні англійською, ...);</li>\r\n                        <li>Загальне розуміння роботи web (протоколи (http, ...), методи (POST, GET, ...), коди відповідей (200, 404, 302, ...), сервер, домен, браузер, ...;</li>\r\n                    </ul>\r\n                    <a class=\"register\" href=\"#\">Зареєструватися</a>\r\n                </li>\r\n','',1,0,0,2,'2013-11-01 16:34:03',662,'','2013-11-05 12:01:37',662,0,'0000-00-00 00:00:00','2013-11-01 16:34:03','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,0,4,'','',1,7,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(16,53,'Project Management','project-management','','<li>\r\n                    <img style=\"float: right;\" src=\"images/icon-pm.png\" />\r\n                	<h2>Project Management</h2>\r\n                	<p>Щоб стати досвідченим менеджером проектів потрібні роки спроб та помилок. Geekhub дає вам можливість набути практичних навичок та уникнути неприємних ситуацій в реальній роботі. Ми навчимо вас розуміти бізнес, відносини із клієнтами, девелоперами та звичайно вивчемо методології ведення проектів.</p>\r\n\r\n                    <h3>Команда</h3>\r\n                    <ul class=\"team\">\r\n                        <li>\r\n                            <img src=\"images/alona_lisicina.png\" />\r\n                            <h3>Альона Лісіцина</h3>\r\n                            <p>Альона має науковий ступінь PhD та працює головним проектним менеджером у компанії Master of Code LLC. У Geekhub Альона викладає Project Management. </p>\r\n                        </li>\r\n                        <li>\r\n                            <img src=\"images/nkurat.png\" />\r\n                            <h3>Нік Курат</h3>\r\n                            <p>Нік займається розвитком бізнесу компанії Master of Code LLC та розвитком стартапу presentain.com . У складі Geekhub Нік викладає Project Management та працює над брендінгом та маркетингом проекту.</p>\r\n                        </li>\r\n                    </ul>\r\n\r\n                    <h3>ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n                    <ul class=\"questions\">\r\n                        <li>Основи роботи інтернету (сервер, браузер, домен і т.п.)</li>\r\n                        <li>Agile (маніфест)</li>\r\n                        <li>Scrum (основні принципи)</li>\r\n                        <li>Знання англійської мови (високий рівень) - обов’язково!</li>\r\n                        <li>Лідерські якості</li>\r\n                        <li>IT background</li>\r\n                    </ul>\r\n                    <a class=\"register\" href=\"#\">Зареєструватися</a>\r\n                </li>','',1,0,0,9,'2013-11-01 16:45:14',662,'','2013-11-05 12:03:21',662,0,'0000-00-00 00:00:00','2013-11-01 16:45:14','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,0,2,'','',1,4,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(17,54,'Quality Assurance','quality-assurance','','<li>\r\n                    <img style=\"float: right;\" src=\"images/icon-qa.png\" />\r\n                    <h2>Quality Assurance</h2>\r\n                    <p>Курс для тих, хто вміє конструктивно критикувати та хотів би з цього навику зробити цікаву інноваційну професію. Ми допоможемо розібратися у непростій науці тестування програмного забезпечення та веб-сайтів, навчимо писати змістовні тест-плани, підкріпивши знання практичними навичками, розберемо базу автоматизованого тестування, зробивши впевнені кроки у її засвоєнні, та спробуємо виховати у студентах тягу до прекрасних продуктів з чудовим юзабіліті та безбажним змістом.\r\n\r\n                    <h3>Команда</h3>\r\n                    <ul class=\"team\">\r\n                        <li>\r\n                            <img src=\"images/olena_perekopska.png\" />\r\n                            <h3>Олена Перекопська</h3>\r\n                            <p>Олена має значний досвід у сфері контролю якості та управління проектами. У GeekHub викладає Quality Assurance.</p>\r\n                        </li>\r\n                        <li>\r\n                            <img src=\"images/korneichuk.png\" />\r\n                            <h3>Олександра Корнійчук</h3>\r\n                            <p>Олександра займається розвитком бізнесу, а також керує командою тестувальників у компанії QAMadness.</p>\r\n                        </li>\r\n                    </ul>\r\n\r\n                    <h3>ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n                    <ul class=\"questions\">\r\n                        <li>Знання загальної термінології тестування програмного забезпечення та сайтів</li>\r\n                        <li>Розуміння основних принципів тестування</li>\r\n                        <li>Розуміння принципів роботи різних систем та програмних продуктів</li>\r\n                        <li>Базовий рівень англійської</li>\r\n                    </ul>\r\n                    <a class=\"register\" href=\"#\">Зареєструватися</a>\r\n                </li>','',1,0,0,9,'2013-11-01 16:47:51',662,'','2013-11-05 12:05:49',662,0,'0000-00-00 00:00:00','2013-11-01 16:47:51','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,0,1,'','',1,7,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(18,55,'Business English','business-english','','<li>\r\n                    <img style=\"float: right;\" src=\"images/icon-english.png\" />\r\n                    <h2>Business English</h2>\r\n                    <p>Навички спілкування у діловому середовищі. Якщо ви лідер команди або менеджер проектів, Business English допоможе вам здобути корисні інструменти для ефективних комунікацій як всередині команди так і з клієнтами.</p>\r\n\r\n                    <h3>Команда</h3>\r\n                    <ul class=\"team\">\r\n                        <li>\r\n                            <img src=\"images/tim_phipps.png\" />\r\n                            <h3>Tim Phipps</h3>\r\n                            <p>Since gaining his CELTA teaching qualification, Tim has specialised in private English lessons, meeting a wide range of student needs. At Geekhub Tim leads the Technical English course.</p>\r\n                        </li>\r\n                    </ul>\r\n\r\n                    <h3 style=\"display: none\" >ТЕМИ ПИТАНЬ НА ЕКЗАМЕНI</h3>\r\n                    <ul style=\"display: none\" class=\"questions\">\r\n                        <li>dcvd</li>\r\n                        <li>dfvfvdf</li>\r\n                        <li>fvdvdv</li>\r\n                    </ul>\r\n                    <a class=\"register\" href=\"#\">Зареєструватися</a>\r\n                </li>\r\n            </ul>','',1,0,0,9,'2013-11-01 17:12:20',662,'','2013-11-05 11:58:17',662,0,'0000-00-00 00:00:00','2013-11-01 17:12:20','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',7,0,0,'','',1,9,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(19,56,'НАШІ КУРСИ','nashi-kursi','','<div class=\"home\">\r\n            <h2>Наші Курси</h2>\r\n            <ul class=\"types\">\r\n                <li class=\"left-col\">\r\n                	<img src=\"images/icon-frontend.png\" />\r\n                    <a class=\"title\" href=\"index.php?option=com_content&view=article&id=7\"><h3>Frontend + CMS</h3></a>\r\n                    <p>Цей курс допоможе вам навчитися створювати веб сайти на основі системи керування контентом. Все, від скінування дизайну до підключення CMS.</p>\r\n                    <a href=\"index.php?option=com_content&view=article&id=7\">Докладніше</a>\r\n                </li>\r\n                <li>\r\n                    <img src=\"images/icon-adv-cms.png\" />\r\n                    <a class=\"title\" href=\"index.php?option=com_content&view=article&id=8\"><h3>Advanced CMS</h3></a>\r\n                    <p>Курс для тих хто хоче навчитися створювати сайти різного рівня складності за допомогою популярних CMS Joomla та Drupal.</p>\r\n                    <a href=\"index.php?option=com_content&view=article&id=8\">Докладніше</a>\r\n                </li>\r\n                <li>\r\n                    <img src=\"images/icon-adv-php.png\" />\r\n                    <a class=\"title\" href=\"index.php?option=com_content&view=article&id=9\"><h3>Advanced PHP</h3></a>\r\n                    <p>Для тих хто хоче розвивати свої базові навички в PHP. Курс заглиблюється у вивчення ООП, MVC та паттернiв проетування на базі найпопулярнішого php фреймворку Symfony2.</p>\r\n                    <a href=\"index.php?option=com_content&view=article&id=9\">Докладніше</a>\r\n                </li>\r\n                <li class=\"left-col\">\r\n                    <img src=\"images/icon-js.png\" />\r\n                    <a class=\"title\" href=\"index.php?option=com_content&view=article&id=10\"><h3>JavaScript</h3></a>\r\n                    <p>Все найцікавіше відбувається в браузері, а не на сервері. Javascript - це той інструмент який допоможе вам створювати дійсно зручні та швидкі веб сторінки.</p>\r\n                    <a href=\"index.php?option=com_content&view=article&id=10\">Докладніше</a>\r\n                </li>\r\n                <li>\r\n                    <img src=\"images/icon-ios.png\" />\r\n                    <a class=\"title\" href=\"index.php?option=com_content&view=article&id=11\"><h3>iOS</h3></a>\r\n                    <p>Курс для швидкого старту в розробці програмного забезпечення під популярну мобільну платформу iOS. </p>\r\n                    <a href=\"index.php?option=com_content&view=article&id=11\">Докладніше</a>\r\n                </li>\r\n                <li>\r\n                    <img src=\"images/icon-android.png\" />\r\n                    <a class=\"title\" href=\"index.php?option=com_content&view=article&id=12\"><h3>Android</h3></a>\r\n                    <p>В даному курсі ми охопимо найважливіші елементи побудови додатків для найпопулярнішої ОС для смартфонів.</p>\r\n                    <a href=\"index.php?option=com_content&view=article&id=12\">Докладніше</a>\r\n                </li>\r\n                <li class=\"left-col\">\r\n                    <img src=\"images/icon-ruby.png\" />\r\n                    <a class=\"title\" href=\"index.php?option=com_content&view=article&id=13\"><h3>Ruby on Rails</h3></a>\r\n                    <p>Курс навчить Вас працювати з популярним фреймворком для розробки веб-сервісів на мові програмування Ruby. </p>\r\n                    <a href=\"index.php?option=com_content&view=article&id=13\">Докладніше</a>\r\n                </li>\r\n                <li>\r\n                    <img src=\"images/icon-grails.png\" />\r\n                    <a class=\"title\" href=\"index.php?option=com_content&view=article&id=14\"><h3>Groovy & Grails</h3></a>\r\n                    <p>Познайомтесь з одним з найпотужніших фреймворків для швидкої розробки веб-додатків Groovy & Grails.</p>\r\n                    <a href=\"index.php?option=com_content&view=article&id=14\">Докладніше</a>\r\n                </li>\r\n                <li>\r\n                    <img src=\"images/icon-java.png\" />\r\n                    <a class=\"title\" href=\"index.php?option=com_content&view=article&id=15\"><h3>Java for Web</h3></a>\r\n                    <p>Java - це основа ентерпрайз технологій. Ви ознайомитесь із мовою, основними классами і пакетами, а також найбільш популярними та потужними фреймворками для розробки веб-додатків.</p>\r\n                    <a href=\"index.php?option=com_content&view=article&id=15\">Докладніше</a>\r\n                </li>\r\n                <li class=\"left-col\">\r\n                    <img src=\"images/icon-pm.png\" />\r\n                    <a class=\"title\" href=\"index.php?option=com_content&view=article&id=16\"><h3>Project Management</h3></a>\r\n                	<p>Щоб стати досвідченим менеджером проектів потрібні роки спроб та помилок. Geekhub дає вам можливість почати набувати практичні навички вже зараз.</p>\r\n                    <a href=\"index.php?option=com_content&view=article&id=16\">Докладніше</a>\r\n                </li>\r\n                <li>\r\n                    <img src=\"images/icon-qa.png\" />\r\n                    <a class=\"title\" href=\"index.php?option=com_content&view=article&id=17\"><h3>Quality Assurance</h3></a>\r\n                    <p>Курс для тих, хто вміє конструктивно критикувати та хотів би з цього навику зробити цікаву інноваційну професію.</p>\r\n                    <a href=\"index.php?option=com_content&view=article&id=17\">Докладніше</a>\r\n                </li>\r\n                <li>\r\n                    <img src=\"images/icon-english.png\" />\r\n                    <a class=\"title\" href=\"index.php?option=com_content&view=article&id=18\"><h3>Business English</h3></a>\r\n                    <p>Якщо ви лідер команди або менеджер проектів, Business English допоможе вам здобути корисні інструменти для ефективних комунікацій як всередині команди так і з клієнтами.</p>\r\n                    <a href=\"index.php?option=com_content&view=article&id=18\">Докладніше</a>\r\n                </li>\r\n\r\n\r\n\r\n\r\n\r\n            </ul>\r\n            \r\n        </div>','',1,0,0,2,'2013-11-03 14:58:37',662,'','2013-11-05 14:08:13',662,0,'0000-00-00 00:00:00','2013-11-03 14:58:37','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',10,0,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(20,57,'Про GeekHub2','progeekhub','','<div class=\"about\">\r\n            <h2>Про GeekHub</h2>\r\n            <ul>\r\n                <li class=\"imgs\"><img alt=\"img\" src=\"images/about.png\"/></li>\r\n                <li>\r\n                    <p>GeekHub - це проект, що надає можливість талановитій молоді отримати практичні знання та навички в сфері розробки програмного забезпечення та IT вцілому. Команда Geekhub — це группа професіоналів в інформаційних технологіях, які готують слухачів курсів до успішної кар’єри в індустрії. Всі члени команди Geekhub працюють у провідних софтверних компаніях, кожного дня оновлюючи свої знання та навички інноваціями в інформаційних технологіях. Саме це дає змогу викладати виключно потрібний матеріал, що знадобиться при роботі в реальних виробничих умовах.</p></li>\r\n                <li>\r\n                    <p>Ми шукаємо мотивованих учнів та студентів, які мріють отримати професію в інформаційних технологіях, для інтенсивного практичного навчання з розробки веб та мобільних додатків. Ми хочемо щоб молоді таланти теж змогли приєднатись до спільноти професіоналів інформаційних технологій і створювали унікальні інтегровані продукти для поліпшення умов праці і життя людей навколо нас.</p>\r\n                    <p>Ми називаємо Geekhub “Open Source”, тому що саме ця ідеологія керує всією програмою. Все що ми робимо обертається навколо взаємовідносин між людьми. Курси Geekhub не коштують грошей, все що вимагається — це внутрішня мотивація та багато самостійної роботи.</p>\r\n                </li>\r\n                <li>\r\n                    <p>Якщо ви зацікавлені у співробітництві з GeekHub, або у вас є ідеї щодо того, як зробити GeekHub краще - будь-ласка, <a href=\"/contacts.html\">зв\'яжіться з нами</a> будь яким зручним для вас шляхом.</p>\r\n                </li>\r\n            </ul>\r\n        </div>','',1,0,0,2,'2013-11-04 16:19:45',662,'','2013-11-04 16:32:50',662,0,'0000-00-00 00:00:00','2013-11-04 16:19:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,2,'','',1,22,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(21,58,'Register','register','',' <div class=\"register\">\r\n            <h2>Реєстрація</h2>\r\n			<div class=\"register-wrap\">\r\n				<p>Нажаль реєстрацію на другий сезон GeekHub вже зачинено :(</p>\r\n				<p>Реєстрація на сезон 2014-2015 відкриється у серпні 2014. Чекаємо на Вас у наступному році!</p>\r\n        </div>','',1,0,0,2,'2013-11-05 11:33:57',662,'','2013-11-05 16:50:37',662,0,'0000-00-00 00:00:00','2013-11-05 11:33:57','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,1,'','',1,14,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(22,59,'About','about','',' <div class=\"about\">\r\n\r\n            <!-- Season2 -->\r\n            <h2>Сезон 2</h2>\r\n            <h3>Junior Frontend Developer</h3>\r\n            <table style=\"margin:0 0 15px;\">\r\n                <tbody>\r\n                <tr>\r\n                    <td style=\"width: 300px;\"><strong>Name</strong></td>\r\n                    <td style=\"width: 100px;\"><strong>Serial number</strong></td>\r\n                    <td style=\"text-align: right; width: 100px;\"><strong>Awarded on</strong></td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Galina Babiy</td>\r\n                    <td style=\"text-align: right;\">1124748667</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Iana Semenova</td>\r\n                    <td style=\"text-align: right;\">3452162624</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Roman Nikitin</td>\r\n                    <td style=\"text-align: right;\">7638391471</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Mahurov Anton</td>\r\n                    <td style=\"text-align: right;\">9962637954</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Mykola Bosovsky</td>\r\n                    <td style=\"text-align: right;\">4204046093</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Gotovtseva Iuliia</td>\r\n                    <td style=\"text-align: right;\">7754538583</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Polosukhin Volodymyr</td>\r\n                    <td style=\"text-align: right;\">3362541375</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Sergey Lesechko</td>\r\n                    <td style=\"text-align: right;\">3256472258</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Marina Perederenko</td>\r\n                    <td style=\"text-align: right;\">6677691755</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Elena Bondar</td>\r\n                    <td style=\"text-align: right;\">1652974203</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Olga Zakharchenko</td>\r\n                    <td style=\"text-align: right;\">9700900199</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Nastya Usenko</td>\r\n                    <td style=\"text-align: right;\">3010494200</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Marina Derkach</td>\r\n                    <td style=\"text-align: right;\">7562188072</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Lavrenko Andrij</td>\r\n                    <td style=\"text-align: right;\">7238591877</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n            </table>\r\n\r\n            <h3>Junior Android Developer</h3>\r\n            <table style=\"margin:0 0 15px;\">\r\n                <tbody>\r\n                <tr>\r\n                    <td style=\"width: 300px;\"><strong>Name</strong></td>\r\n                    <td style=\"width: 100px;\"><strong>Serial number</strong></td>\r\n                    <td style=\"text-align: right; width: 100px;\"><strong>Awarded on</strong></td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Tsibrovkiy Sergey</td>\r\n                    <td style=\"text-align: right;\">6819133693</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Chernobay Vladislav</td>\r\n                    <td style=\"text-align: right;\">8169071109</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Serhii Nadolinskyi</td>\r\n                    <td style=\"text-align: right;\">7281360092</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Sirenko Andrew</td>\r\n                    <td style=\"text-align: right;\">5854667269</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Shcherbyna Bogdan</td>\r\n                    <td style=\"text-align: right;\">8738196356</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n\r\n\r\n            </table>\r\n\r\n\r\n            <h3>Junior Java EE Developer</h3>\r\n            <table style=\"margin:0 0 15px;\">\r\n                <tbody>\r\n                <tr>\r\n                    <td style=\"width: 300px;\"><strong>Name</strong></td>\r\n                    <td style=\"width: 100px;\"><strong>Serial number</strong></td>\r\n                    <td style=\"text-align: right; width: 100px;\"><strong>Awarded on</strong></td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Oleksandr Kucher</td>\r\n                    <td style=\"text-align: right;\">8804914855</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Oleksandr Podymskyi</td>\r\n                    <td style=\"text-align: right;\">3485844131</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Alexander Semenets\'</td>\r\n                    <td style=\"text-align: right;\">9887638238</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Ihor Chanzhar</td>\r\n                    <td style=\"text-align: right;\">5882544220</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Oleksandr Kozynets</td>\r\n                    <td style=\"text-align: right;\">7758109852</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Olha Vasylevska</td>\r\n                    <td style=\"text-align: right;\">7260047923</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Vladislav Glushchenko</td>\r\n                    <td style=\"text-align: right;\">2619151116</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n\r\n                </tbody>\r\n                </table>\r\n\r\n            <h3>Junior Project Manager</h3>\r\n            <table style=\"margin:0 0 15px;\">\r\n                <tbody>\r\n                <tr>\r\n                    <td style=\"width: 300px;\"><strong>Name</strong></td>\r\n                    <td style=\"width: 100px;\"><strong>Serial number</strong></td>\r\n                    <td style=\"text-align: right; width: 100px;\"><strong>Awarded on</strong></td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Oleksandr Tkachenko</td>\r\n                    <td style=\"text-align: right;\">9185975885</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Oleg Pasko</td>\r\n                    <td style=\"text-align: right;\">5830513188</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Julia Makarenko</td>\r\n                    <td style=\"text-align: right;\">1742265008</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Alex Labay</td>\r\n                    <td style=\"text-align: right;\">5518821031</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Dmytro Piskovyi</td>\r\n                    <td style=\"text-align: right;\">5055580272</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Borys Abazher</td>\r\n                    <td style=\"text-align: right;\">7534797325</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Oleksii Kononenko</td>\r\n                    <td style=\"text-align: right;\">7634480495</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Inna Kulyk</td>\r\n                    <td style=\"text-align: right;\">9383610459</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Valeriya Yakovenko</td>\r\n                    <td style=\"text-align: right;\">1985325918</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Dmytro Shysh</td>\r\n                    <td style=\"text-align: right;\">8052872900</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Galyna Kornieynko</td>\r\n                    <td style=\"text-align: right;\">8169707798</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Dmytro Govorov</td>\r\n                    <td style=\"text-align: right;\">3507787574</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Lena Tykhonova</td>\r\n                    <td style=\"text-align: right;\">9472166653</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Alexander Tinyaev</td>\r\n                    <td style=\"text-align: right;\">4143158664</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n</tbody></table>\r\n\r\n            <h3>Junior CMS Developer</h3>\r\n            <table style=\"margin:0 0 15px;\">\r\n                <tbody>\r\n                <tr>\r\n                    <td style=\"width: 300px;\"><strong>Name</strong></td>\r\n                    <td style=\"width: 100px;\"><strong>Serial number</strong></td>\r\n                    <td style=\"text-align: right; width: 100px;\"><strong>Awarded on</strong></td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Bakum Iryna</td>\r\n                    <td style=\"text-align: right;\">7833873023</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Bakum Maryna</td>\r\n                    <td style=\"text-align: right;\">6128051649</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Vizirenko Vadim</td>\r\n                    <td style=\"text-align: right;\">1710515535</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Hychka Irina</td>\r\n                    <td style=\"text-align: right;\">7810319835</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Kovalov Ruslan</td>\r\n                    <td style=\"text-align: right;\">4877312139</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Anton Kotliarenko</td>\r\n                    <td style=\"text-align: right;\">9585687279</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Kuzmenko Yaroslav</td>\r\n                    <td style=\"text-align: right;\">9796168964</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Nikulin Oleg</td>\r\n                    <td style=\"text-align: right;\">4903480098</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Smirnov Vlad</td>\r\n                    <td style=\"text-align: right;\">9483334795</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n\r\n                </tbody></table>\r\n\r\n\r\n                <h3>Junior Symfony Developer</h3>\r\n                <table style=\"margin:0 0 15px;\">\r\n                    <tbody>\r\n                    <tr>\r\n                        <td style=\"width: 300px;\"><strong>Name</strong></td>\r\n                        <td style=\"width: 100px;\"><strong>Serial number</strong></td>\r\n                        <td style=\"text-align: right; width: 100px;\"><strong>Awarded on</strong></td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td>Dmitriy Monastyretskiy</td>\r\n                        <td style=\"text-align: right;\">3347148324</td>\r\n                        <td style=\"text-align: right;\">04/26/2013</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td>Anton Bakay</td>\r\n                        <td style=\"text-align: right;\">7698772557</td>\r\n                        <td style=\"text-align: right;\">04/26/2013</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td>Gennadiy Zelenskiy</td>\r\n                        <td style=\"text-align: right;\">4188664768</td>\r\n                        <td style=\"text-align: right;\">04/26/2013</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td>Dmitriy Nemesh</td>\r\n                        <td style=\"text-align: right;\">2730261599</td>\r\n                        <td style=\"text-align: right;\">04/26/2013</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td>Sergey Polishchuk</td>\r\n                        <td style=\"text-align: right;\">7779689106</td>\r\n                        <td style=\"text-align: right;\">04/26/2013</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td>Ruslan Pistryak</td>\r\n                        <td style=\"text-align: right;\">2444576536</td>\r\n                        <td style=\"text-align: right;\">04/26/2013</td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td>Alexander Zherebilo</td>\r\n                        <td style=\"text-align: right;\">6034122654</td>\r\n                        <td style=\"text-align: right;\">04/26/2013</td>\r\n                    </tr>\r\n\r\n                    </tbody></table>\r\n\r\n            <h3>Junior Quality Assurance Engineer</h3>\r\n            <table style=\"margin:0 0 15px;\">\r\n                <tbody>\r\n                <tr>\r\n                    <td style=\"width: 300px;\"><strong>Name</strong></td>\r\n                    <td style=\"width: 100px;\"><strong>Serial number</strong></td>\r\n                    <td style=\"text-align: right; width: 100px;\"><strong>Awarded on</strong></td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Michael Suddya</td>\r\n                    <td style=\"text-align: right;\">380972835030</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Alexandr Stadnyk</td>\r\n                    <td style=\"text-align: right;\">380634038936</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Anna Litvinenko</td>\r\n                    <td style=\"text-align: right;\">380939709848</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Aleksandr Goncharenko</td>\r\n                    <td style=\"text-align: right;\">380937891229</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Alina Ternova</td>\r\n                    <td style=\"text-align: right;\">380936515839</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Marina Bezuglaya</td>\r\n                    <td style=\"text-align: right;\">380932405296</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Iryna Diachkova</td>\r\n                    <td style=\"text-align: right;\">380633751372</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n\r\n\r\n                </tbody></table>\r\n\r\n            <h3>Technical English</h3>\r\n            <table style=\"margin:0 0 15px;\">\r\n                <tbody>\r\n                <tr>\r\n                    <td style=\"width: 300px;\"><strong>Name</strong></td>\r\n                    <td style=\"width: 100px;\"><strong>Serial number</strong></td>\r\n                    <td style=\"text-align: right; width: 100px;\"><strong>Awarded on</strong></td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Dmitry Shysh</td>\r\n                    <td style=\"text-align: right;\">2717094894</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Dmitry Tarianyk</td>\r\n                    <td style=\"text-align: right;\">2252603993</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Lena Tykhonova</td>\r\n                    <td style=\"text-align: right;\">6835645208</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n                <tr>\r\n                    <td>Valery Yakovenko</td>\r\n                    <td style=\"text-align: right;\">4987229691</td>\r\n                    <td style=\"text-align: right;\">04/26/2013</td>\r\n                </tr>\r\n\r\n                </tbody></table>\r\n\r\n                    <h2>Сезон 1</h2>\r\n            <h3>Junior backend developer (PHP)</h3>\r\n            <table style=\"margin:0 0 15px;\">\r\n            <tbody>\r\n            <tr>\r\n            <td style=\"width: 300px;\"><strong>Name</strong></td>\r\n            <td style=\"width: 100px;\"><strong>Serial number</strong></td>\r\n            <td style=\"text-align: right; width: 100px;\"><strong>Awarded on</strong></td>\r\n            </tr>\r\n            <tr>\r\n            <td>Vladislav Chornobay</td>\r\n            <td style=\"text-align: right;\">3892523758</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Mykola Zenkov</td>\r\n            <td style=\"text-align: right;\">8556244656</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Sergiy Bulgacov</td>\r\n            <td style=\"text-align: right;\">7643245634</td>\r\n            <td style=\"text-align: right;\">&nbsp;06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Sergiy Vlasov</td>\r\n            <td style=\"text-align: right;\">2567852574</td>\r\n            <td style=\"text-align: right;\">&nbsp;06/15/2012</td>\r\n            </tr>\r\n            </tbody>\r\n            </table>\r\n            <h3>Junior frontend developer (HTML, CSS)</h3>\r\n            <table>\r\n            <tbody>\r\n            <tr>\r\n            <td style=\"width: 300px;\"><strong>Name</strong></td>\r\n            <td style=\"width: 100px;\"><strong>Serial number</strong></td>\r\n            <td style=\"text-align: right; width: 100px;\"><strong>Awarded on</strong></td>\r\n            </tr>\r\n            <tr>\r\n            <td>Petro Kiryshkin</td>\r\n            <td style=\"text-align: right;\">5935398234</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Olexiy Procenko</td>\r\n            <td style=\"text-align: right;\">9474728922</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Vadym Tyshchenko</td>\r\n            <td style=\"text-align: right;\">6236536827</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Roman Rudakov</td>\r\n            <td style=\"text-align: right;\">6222982267</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Iryna Bakum</td>\r\n            <td style=\"text-align: right;\">2552423964</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Maryna Bakum</td>\r\n            <td style=\"text-align: right;\">8462892626</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Dmytro Bevz</td>\r\n            <td style=\"text-align: right;\">4822529579</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Oleksiy Ilchenko</td>\r\n            <td style=\"text-align: right;\">8927342865</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Alexandr Tinyayev</td>\r\n            <td style=\"text-align: right;\">5443255438</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Aleksandra Lytvynenko</td>\r\n            <td style=\"text-align: right;\">2472742642</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Oleksiy Magurov</td>\r\n            <td style=\"text-align: right;\">4872657364</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Yevhenii Lutsiuk</td>\r\n            <td style=\"text-align: right;\">6379228837</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Katerina Khomenko</td>\r\n            <td style=\"text-align: right;\">9362325659</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Oleg Nikulin</td>\r\n            <td style=\"text-align: right;\">2369277425</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Oksana Garbuz</td>\r\n            <td style=\"text-align: right;\">7867643678</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Oksana Kocherga</td>\r\n            <td style=\"text-align: right;\">6566575332</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Oleg Kulik</td>\r\n            <td style=\"text-align: right;\">7492773424</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Tanya Kozlova</td>\r\n            <td style=\"text-align: right;\">3384299393</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Victor Ovsyanik</td>\r\n            <td style=\"text-align: right;\">4387853948</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Anton Kotlyarenko</td>\r\n            <td style=\"text-align: right;\">6469982686</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Viktor Urbanas</td>\r\n            <td style=\"text-align: right;\">9437765523</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Stanislav Gurin</td>\r\n            <td style=\"text-align: right;\">4334337865</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Andrii Sirenko</td>\r\n            <td style=\"text-align: right;\">3242584772</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Iryna Hychka</td>\r\n            <td style=\"text-align: right;\">8734567965</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Ruslan Ischuk</td>\r\n            <td style=\"text-align: right;\">9488828863</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            <tr>\r\n            <td>Oleg Sotulenko</td>\r\n            <td style=\"text-align: right;\">2992538956</td>\r\n            <td style=\"text-align: right;\">06/15/2012</td>\r\n            </tr>\r\n            </tbody>\r\n            </table>\r\n        </div>\r\n	</div','',1,0,0,2,'2013-11-05 16:36:30',662,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-11-05 16:36:30','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `zru0x_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_content_frontpage`
--

DROP TABLE IF EXISTS `zru0x_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_content_frontpage`
--

LOCK TABLES `zru0x_content_frontpage` WRITE;
/*!40000 ALTER TABLE `zru0x_content_frontpage` DISABLE KEYS */;
INSERT INTO `zru0x_content_frontpage` VALUES (2,2),(19,1);
/*!40000 ALTER TABLE `zru0x_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_content_rating`
--

DROP TABLE IF EXISTS `zru0x_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_content_rating`
--

LOCK TABLES `zru0x_content_rating` WRITE;
/*!40000 ALTER TABLE `zru0x_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_core_log_searches`
--

DROP TABLE IF EXISTS `zru0x_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_core_log_searches`
--

LOCK TABLES `zru0x_core_log_searches` WRITE;
/*!40000 ALTER TABLE `zru0x_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_extensions`
--

DROP TABLE IF EXISTS `zru0x_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10010 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_extensions`
--

LOCK TABLES `zru0x_extensions` WRITE;
/*!40000 ALTER TABLE `zru0x_extensions` DISABLE KEYS */;
INSERT INTO `zru0x_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"ru-RU\",\"site\":\"ru-RU\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"1\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.14\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'Russian','language','ru-RU','',0,1,0,0,'{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2013-07-26\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.13.1\",\"description\":\"Russian language pack (site) for Joomla! 2.5\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10001,'Russian','language','ru-RU','',1,1,0,0,'{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2013-07-26\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.13.1\",\"description\":\"Russian language pack (administrator) for Joomla! 2.5\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'TinyMCE ru-RU','file','tinymce_ru-ru','',0,1,0,0,'{\"legacy\":false,\"name\":\"TinyMCE ru-RU\",\"type\":\"file\",\"creationDate\":\"2012-06-19\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"3.5.2.1\",\"description\":\"Russian Language Package for TinyMCE 3.5.2.1 in Joomla 2.5\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10003,'ru-RU','package','pkg_ru-RU','',0,1,1,0,'{\"legacy\":false,\"name\":\"Russian Language Pack\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.5.13.1\",\"description\":\"Joomla 2.5 Russian Language Package\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10004,'System - Google Maps','plugin','plugin_googlemap3','system',0,1,1,0,'{\"legacy\":false,\"name\":\"System - Google Maps\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Mike Reumer\",\"copyright\":\"(C) 2013 Reumer\",\"authorEmail\":\"tech@reumer.net\",\"authorUrl\":\"tech.reumer.net\",\"version\":\"3.1\",\"description\":\"PLUGIN_GOOGLE_MAP3_INSTALLATION\",\"group\":\"\"}','{\"publ\":\"1\",\"debug\":\"0\",\"plugincode\":\"mosmap\",\"brackets\":\"{\",\"Google_API_version\":\"3.x\",\"visualrefresh\":\"0\",\"show\":\"1\",\"mapclass\":\"\",\"mapcss\":\"\\/* For img in the map remove borders, shadow, no margin and no max-width\\r\\n*\\/\\r\\n.map img, .svPanel img {\\r\\n    border: 0px;\\r\\n    box-shadow: none;\\r\\n    margin: 0px !important;\\r\\n    padding: 0px !important;\\r\\n    max-width: none !important;\\r\\n    background: none !important;\\r\\n}\\r\\n\\r\\n\\/* Make sure the directions are below the map\\r\\n*\\/\\r\\n.directions {\\r\\n    clear: left;\\r\\n}\\r\\n\\r\\n.adp-directions {\\r\\n    width: 100%;\\r\\n}\\r\\n\\r\\n\\/* Solve problems in chrome with the show of the direction steps in full width\\r\\n*\\/\\r\\n.adp-placemark {\\r\\n    width : 100%;\\r\\n}\\r\\n\\r\\n\\/* Padding for image overlay\\r\\n*\\/\\r\\n.controlDiv {\\r\\n    padding : 5px;\\r\\n}\\r\\n\",\"loadmootools\":\"1\",\"timeinterval\":\"500\",\"Google_API_key\":\"AIzaSyBWXzDu3fd84G10am5icB7FyGL3sKn61bM\",\"Google_Multi_API_key\":\"\",\"urlsetting\":\"Joomla\",\"googlewebsite\":\"maps.google.ru\",\"styledmap\":\"\",\"align\":\"center\",\"langtype\":\"site\",\"lang\":\"\",\"width\":\"382\",\"height\":\"288\",\"effect\":\"none\",\"lat\":\"49.425703\",\"lon\":\"32.094223\",\"centerlat\":\"\",\"centerlon\":\"\",\"address\":\"\",\"latitudeid\":\"\",\"latitudedesc\":\"1\",\"latitudecoord\":\"0\",\"latitudeform\":\"0\",\"controltype\":\"UI\",\"zoomType\":\"3D-large\",\"svcontrol\":\"1\",\"returncontrol\":\"1\",\"zoom\":\"15\",\"corzoom\":\"0\",\"minzoom\":\"0\",\"maxzoom\":\"19\",\"rotation\":\"1\",\"zoomnew\":\"0\",\"zoomWheel\":\"0\",\"keyboard\":\"0\",\"mapType\":\"Normal\",\"showmaptype\":\"1\",\"showNormalMaptype\":\"1\",\"showSatelliteMaptype\":\"1\",\"showHybridMaptype\":\"1\",\"showTerrainMaptype\":\"1\",\"showEarthMaptype\":\"1\",\"showscale\":\"0\",\"overview\":\"0\",\"dragging\":\"1\",\"marker\":\"1\",\"icon\":\"\",\"iconwidth\":\"\",\"iconheight\":\"\",\"iconanchorx\":\"\",\"iconanchory\":\"\",\"iconshadow\":\"\",\"iconshadowwidth\":\"\",\"iconshadowheight\":\"\",\"iconimagemap\":\"\",\"traffic\":\"0\",\"transit\":\"0\",\"bicycle\":\"0\",\"panoramio\":\"0\",\"pano_userid\":\"\",\"pano_tag\":\"\",\"weather\":\"0\",\"weathercloud\":\"0\",\"weatherinfo\":\"1\",\"weathertempunit\":\"celsius\",\"weatherwindunit\":\"km\",\"dir\":\"0\",\"dirtype\":\"D\",\"formdirtype\":\"1\",\"avoidhighways\":\"0\",\"avoidtoll\":\"0\",\"diroptimize\":\"0\",\"diralternatives\":\"0\",\"showdir\":\"1\",\"animdir\":\"0\",\"animspeed\":\"1\",\"animautostart\":\"0\",\"animunit\":\"kilometers\",\"formspeed\":\"0\",\"formaddress\":\"0\",\"formdir\":\"0\",\"autocompl\":\"both\",\"langanim\":\"en;The requested panorama could not be displayed|Could not generate a route for the current start and end addresses|Street View coverage is not available for this route|You have reached your destination|miles|miles|ft|kilometers|kilometer|meters|In|You will reach your destination|Stop|Drive|Press Drive to follow your route|Route|Speed|Fast|Medium|Slow\",\"txtdir\":\"Directions: \",\"txtgetdir\":\"Get Directions\",\"txtfrom\":\"From here\",\"txtto\":\"To here\",\"txtdiraddr\":\"Address: \",\"txt_driving\":\"\",\"txt_avhighways\":\"\",\"txt_avtoll\":\"\",\"txt_walking\":\"\",\"txt_bicycle\":\"\",\"txt_transit\":\"\",\"txt_optimize\":\"\",\"txt_alternatives\":\"\",\"inputsize\":\"25\",\"dirdefault\":\"0\",\"gotoaddr\":\"0\",\"gotoaddrzoom\":\"0\",\"txtaddr\":\"Address: ##\",\"erraddr\":\"Address ## not found!\",\"txtgotoaddr\":\"Goto\",\"clientgeotype\":\"google\",\"lightbox\":\"0\",\"txtlightbox\":\"Open lightbox\",\"lbxcaption\":\"\",\"lbxwidth\":\"500\",\"lbxheight\":\"700\",\"lbxcenterlat\":\"\",\"lbxcenterlon\":\"\",\"lbxzoom\":\"\",\"sv\":\"none\",\"svwidth\":\"100%\",\"svheight\":\"300\",\"svyaw\":\"0\",\"svpitch\":\"0\",\"svzoom\":\"\",\"svautorotate\":\"0\",\"svaddress\":\"1\",\"earthtimeout\":\"300\",\"earthborders\":\"1\",\"earthbuildings\":\"0\",\"earthroads\":\"0\",\"earthterrain\":\"0\",\"kmlrenderer\":\"google\",\"kmlsidebar\":\"none\",\"kmlsbwidth\":\"200\",\"kmlfoldersopen\":\"0\",\"kmlhide\":\"0\",\"kmlscale\":\"0\",\"kmlopenmethod\":\"click\",\"kmlsbsort\":\"none\",\"kmllightbox\":\"0\",\"kmlmessshow\":\"0\",\"kmlclickablemarkers\":\"1\",\"kmlzoommarkers\":\"0\",\"kmlopendivmarkers\":\"\",\"kmlcontentlinkmarkers\":\"0\",\"kmllinkablemarkers\":\"0\",\"kmllinktarget\":\"_self\",\"kmllinkmethod\":\"dblclick\",\"kmlhighlite\":\"{ \'color\': \'#aaffff\', \'opacity\': 0.3,  \'textcolor\': \'#000000\' }\",\"kmlmarkerlabel\":\"100\",\"kmlmarkerlabelclass\":\"\",\"kmlpolylabel\":\"100\",\"kmlpolylabelclass\":\"\",\"proxy\":\"1\",\"txtsrchnrby\":\"Search nearby\",\"txtzoomhere\":\"Zoom Here\",\"txtaddrstart\":\"Start address:\",\"txtkmlgetdir\":\"Go\",\"txtback\":\"\\u00ab Back\",\"txtsearchnearby\":\"Search nearby: e.g. pizza\",\"txtsearch\":\"Go\",\"maxcluster\":\"\",\"clustericonurl\":\"\\/media\\/plugin_googlemap3\\/site\\/geoxmlv3\\/images\\/m\",\"gridsize\":\"\",\"minmarkerscluster\":\"\",\"maxlinesinfocluster\":\"\",\"clusterinfowindow\":\"click\",\"clusterzoom\":\"dblclick\",\"clustermarkerzoom\":\"16\",\"txtzoomin\":\"Zoom in to show more\",\"txtclustercount1\":\"...and\",\"txtclustercount2\":\"more\",\"tilelayer\":\"\",\"tilemethod\":\"\",\"tileopacity\":\"1\",\"tilebounds\":\"\",\"tileminzoom\":\"0\",\"tilemaxzoom\":\"19\",\"imageurl\":\"\",\"imageposition\":\"RIGHT_TOP\",\"imageindex\":\"1\",\"imagewidth\":\"\",\"imageheight\":\"\",\"twittername\":\"\",\"twittertweets\":\"15\",\"twittericon\":\"\\/media\\/plugin_googlemap3\\/site\\/Twitter\\/twitter_map_icon.png\",\"twitterline\":\"#ff0000ff\",\"twitterlinewidth\":\"4\",\"twitterstartloc\":\"0,0,0\",\"twitterconsumerkey\":\"\",\"twitterconsumersecret\":\"\",\"twitteraccesstoken\":\"\",\"twitteraccesstokensecret\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10005,'plg_editors_jce','plugin','jce','editors',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors_jce\",\"type\":\"plugin\",\"creationDate\":\"27 March 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"2006-2010 Ryan Demmer\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.3.2.4\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10006,'plg_quickicon_jcefilebrowser','plugin','jcefilebrowser','quickicon',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_quickicon_jcefilebrowser\",\"type\":\"plugin\",\"creationDate\":\"27 March 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved\",\"authorEmail\":\"@@email@@\",\"authorUrl\":\"www.joomalcontenteditor.net\",\"version\":\"2.3.2.4\",\"description\":\"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10007,'jce','component','com_jce','',1,1,0,0,'{\"legacy\":false,\"name\":\"JCE\",\"type\":\"component\",\"creationDate\":\"27 March 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.3.2.4\",\"description\":\"WF_ADMIN_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10008,'gumennoy','template','gumennoy','',0,1,1,0,'{\"legacy\":false,\"name\":\"gumennoy\",\"type\":\"template\",\"creationDate\":\"30 10 2013\",\"author\":\"JR\",\"copyright\":\"GNU\\/GPL\",\"authorEmail\":\"j.jaguar@rambler.ru\",\"authorUrl\":\"none\",\"version\":\"2.5.0\",\"description\":\"GeekHub test\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10009,'JL VK Group','module','mod_jlvkgroup','',0,1,0,0,'{\"legacy\":false,\"name\":\"JL VK Group\",\"type\":\"module\",\"creationDate\":\"2010-09-23\",\"author\":\"JoomLine\",\"copyright\":\"Copyright 2010 JoomLine.net All rights reserved!\",\"authorEmail\":\"sale@joomline.ru\",\"authorUrl\":\"http:\\/\\/www.joomline.net\",\"version\":\"2.5.1\",\"description\":\"MOD_JLVKGROUP_XML_DESCRIPTION\",\"group\":\"\"}','{\"group_id\":\"17291036\",\"width\":\"200\",\"height\":\"290\",\"mode\":\"0\",\"wide\":\"0\",\"color1\":\"FFFFFF\",\"color2\":\"2B587A\",\"color3\":\"5B7FA6\",\"link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `zru0x_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_filters`
--

DROP TABLE IF EXISTS `zru0x_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_filters`
--

LOCK TABLES `zru0x_finder_filters` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links`
--

DROP TABLE IF EXISTS `zru0x_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links`
--

LOCK TABLES `zru0x_finder_links` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_terms0`
--

DROP TABLE IF EXISTS `zru0x_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_terms0`
--

LOCK TABLES `zru0x_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_terms1`
--

DROP TABLE IF EXISTS `zru0x_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_terms1`
--

LOCK TABLES `zru0x_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_terms2`
--

DROP TABLE IF EXISTS `zru0x_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_terms2`
--

LOCK TABLES `zru0x_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_terms3`
--

DROP TABLE IF EXISTS `zru0x_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_terms3`
--

LOCK TABLES `zru0x_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_terms4`
--

DROP TABLE IF EXISTS `zru0x_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_terms4`
--

LOCK TABLES `zru0x_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_terms5`
--

DROP TABLE IF EXISTS `zru0x_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_terms5`
--

LOCK TABLES `zru0x_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_terms6`
--

DROP TABLE IF EXISTS `zru0x_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_terms6`
--

LOCK TABLES `zru0x_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_terms7`
--

DROP TABLE IF EXISTS `zru0x_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_terms7`
--

LOCK TABLES `zru0x_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_terms8`
--

DROP TABLE IF EXISTS `zru0x_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_terms8`
--

LOCK TABLES `zru0x_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_terms9`
--

DROP TABLE IF EXISTS `zru0x_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_terms9`
--

LOCK TABLES `zru0x_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_termsa`
--

DROP TABLE IF EXISTS `zru0x_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_termsa`
--

LOCK TABLES `zru0x_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_termsb`
--

DROP TABLE IF EXISTS `zru0x_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_termsb`
--

LOCK TABLES `zru0x_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_termsc`
--

DROP TABLE IF EXISTS `zru0x_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_termsc`
--

LOCK TABLES `zru0x_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_termsd`
--

DROP TABLE IF EXISTS `zru0x_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_termsd`
--

LOCK TABLES `zru0x_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_termse`
--

DROP TABLE IF EXISTS `zru0x_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_termse`
--

LOCK TABLES `zru0x_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_links_termsf`
--

DROP TABLE IF EXISTS `zru0x_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_links_termsf`
--

LOCK TABLES `zru0x_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_taxonomy`
--

DROP TABLE IF EXISTS `zru0x_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_taxonomy`
--

LOCK TABLES `zru0x_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `zru0x_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `zru0x_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `zru0x_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_taxonomy_map`
--

LOCK TABLES `zru0x_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_terms`
--

DROP TABLE IF EXISTS `zru0x_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_terms`
--

LOCK TABLES `zru0x_finder_terms` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_terms_common`
--

DROP TABLE IF EXISTS `zru0x_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_terms_common`
--

LOCK TABLES `zru0x_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_terms_common` DISABLE KEYS */;
INSERT INTO `zru0x_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `zru0x_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_tokens`
--

DROP TABLE IF EXISTS `zru0x_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_tokens`
--

LOCK TABLES `zru0x_finder_tokens` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `zru0x_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_tokens_aggregate`
--

LOCK TABLES `zru0x_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_finder_types`
--

DROP TABLE IF EXISTS `zru0x_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_finder_types`
--

LOCK TABLES `zru0x_finder_types` WRITE;
/*!40000 ALTER TABLE `zru0x_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_languages`
--

DROP TABLE IF EXISTS `zru0x_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_languages`
--

LOCK TABLES `zru0x_languages` WRITE;
/*!40000 ALTER TABLE `zru0x_languages` DISABLE KEYS */;
INSERT INTO `zru0x_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);
/*!40000 ALTER TABLE `zru0x_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_menu`
--

DROP TABLE IF EXISTS `zru0x_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_menu`
--

LOCK TABLES `zru0x_menu` WRITE;
/*!40000 ALTER TABLE `zru0x_menu` DISABLE KEYS */;
INSERT INTO `zru0x_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,93,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',43,44,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',33,34,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',35,40,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',36,37,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',38,39,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',31,32,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',7,'{\"featured_categories\":[\"\"],\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"multi_column_order\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_noauth\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',29,30,0,'*',0),(103,'main','JCE','jce','','jce','index.php?option=com_jce','component',0,1,1,10007,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/logo.png',0,'',45,54,0,'',1),(104,'main','WF_MENU_CPANEL','wf-menu-cpanel','','jce/wf-menu-cpanel','index.php?option=com_jce','component',0,103,2,10007,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-cpanel.png',0,'',46,47,0,'',1),(105,'main','WF_MENU_CONFIG','wf-menu-config','','jce/wf-menu-config','index.php?option=com_jce&view=config','component',0,103,2,10007,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-config.png',0,'',48,49,0,'',1),(106,'main','WF_MENU_PROFILES','wf-menu-profiles','','jce/wf-menu-profiles','index.php?option=com_jce&view=profiles','component',0,103,2,10007,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-profiles.png',0,'',50,51,0,'',1),(107,'main','WF_MENU_INSTALL','wf-menu-install','','jce/wf-menu-install','index.php?option=com_jce&view=installer','component',0,103,2,10007,0,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-install.png',0,'',52,53,0,'',1),(109,'nav','ГЛАВНАЯ','glavnaya','','glavnaya','index.php?option=com_content&view=featured','component',1,1,1,22,0,662,'2013-11-03 11:37:49',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"3\",\"num_intro_articles\":\"\",\"num_columns\":\"3\",\"num_links\":\"\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"0\",\"show_pagination_results\":\"\",\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',55,56,1,'*',0),(110,'nav','КОМАНДА','komanda','','komanda','index.php?option=com_content&view=article&id=4','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',61,62,0,'*',0),(111,'nav','FAQ','faq','','faq','index.php?option=com_content&view=article&id=5','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":0,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',63,64,0,'*',0),(112,'nav','ЗВ\'ЯЗОК','zv-yazok','','zv-yazok','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',65,66,0,'*',0),(114,'detalis','Frontend CMS','frontend-cms','','frontend-cms','index.php?option=com_content&view=article&id=7','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',67,68,0,'*',0),(115,'nav','ПРО GEEKHUB','pro-geekhub','','pro-geekhub','index.php?option=com_content&view=article&id=20','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',57,60,0,'*',0),(116,'detalis','Advanced CMS','advanced-cms','','advanced-cms','index.php?option=com_content&view=article&id=8','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',69,70,0,'*',0),(117,'detalis','Advanced PHP','advanced-php','','advanced-php','index.php?option=com_content&view=article&id=9','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',71,72,0,'*',0),(118,'detalis','Android','android','','android','index.php?option=com_content&view=article&id=12','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',73,74,0,'*',0),(119,'detalis','Business English','business-english','','business-english','index.php?option=com_content&view=article&id=18','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"0\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',75,76,0,'*',0),(120,'detalis','Groovy & Grails','groovy-grails','','groovy-grails','index.php?option=com_content&view=article&id=14','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',77,78,0,'*',0),(121,'detalis','iOS','ios','','ios','index.php?option=com_content&view=article&id=11','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',79,80,0,'*',0),(122,'detalis','Java for Web','java-for-web','','java-for-web','index.php?option=com_content&view=article&id=15','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',81,82,0,'*',0),(123,'detalis','JavaScript','javascript','','javascript','index.php?option=com_content&view=article&id=10','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',83,84,0,'*',0),(124,'detalis','Project Management','project-management','','project-management','index.php?option=com_content&view=article&id=16','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',85,86,0,'*',0),(125,'detalis','Quality Assurance','quality-assurance','','quality-assurance','index.php?option=com_content&view=article&id=17','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',87,88,0,'*',0),(126,'detalis','Ruby on Rails','ruby-on-rails','','ruby-on-rails','index.php?option=com_content&view=article&id=13','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',89,90,0,'*',0),(129,'nav','About','about','','about','index.php?option=com_content&view=article&id=22','component',0,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',91,92,0,'*',0),(130,'nav','Register','register','','pro-geekhub/register','index.php?option=com_content&view=article&id=21','component',0,115,2,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',58,59,0,'*',0);
/*!40000 ALTER TABLE `zru0x_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_menu_types`
--

DROP TABLE IF EXISTS `zru0x_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_menu_types`
--

LOCK TABLES `zru0x_menu_types` WRITE;
/*!40000 ALTER TABLE `zru0x_menu_types` DISABLE KEYS */;
INSERT INTO `zru0x_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site'),(2,'nav','nav',''),(3,'detalis','detalis','');
/*!40000 ALTER TABLE `zru0x_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_messages`
--

DROP TABLE IF EXISTS `zru0x_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_messages`
--

LOCK TABLES `zru0x_messages` WRITE;
/*!40000 ALTER TABLE `zru0x_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_messages_cfg`
--

DROP TABLE IF EXISTS `zru0x_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_messages_cfg`
--

LOCK TABLES `zru0x_messages_cfg` WRITE;
/*!40000 ALTER TABLE `zru0x_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_modules`
--

DROP TABLE IF EXISTS `zru0x_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_modules`
--

LOCK TABLES `zru0x_modules` WRITE;
/*!40000 ALTER TABLE `zru0x_modules` DISABLE KEYS */;
INSERT INTO `zru0x_modules` VALUES (1,'Main Menu','','',1,'user1_1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,'Breadcrumbs','','',1,'user3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_breadcrumbs',1,1,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,'Карта','','<p>{mosmap}</p>',1,'position-6',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(88,'nav','','',1,'user1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_breadcrumbs',1,1,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"nav\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(89,'nav','','',1,'nav',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"nav\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(90,'НАШІ КУРСИ','','',1,'left',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"detalis\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(91,'Certificate','','<li class=\"sertificates_list\">\r\n                	<h4><a href=\"/certified-professionals.html\">Сертифiкованi професiонали</a></h4>\r\n                </li>',0,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(92,'Certificate','','',0,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_footer',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(93,'nav down','','',1,'down',662,'2013-11-05 16:45:41','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"nav\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"down\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(94,'JL VK Group','','',0,'social',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_jlvkgroup',1,1,'{\"group_id\":\"30111409\",\"width\":\"276\",\"height\":\"240\",\"mode\":\"0\",\"wide\":\"0\",\"color1\":\"FFFFFF\",\"color2\":\"2B587A\",\"color3\":\"5B7FA6\",\"link\":\"1\",\"moduleclass_sfx\":\"\"}',0,'*'),(95,'sertificates_list','','<li class=\"sertificates_list\">\r\n                	<h4><a href=\"index.php?option=com_content&view=article&id=22\">Сертифiкованi професiонали</a></h4>\r\n                </li>',2,'social',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(96,'Наші Спонсори','','<li>\r\n                    <h4>Наші Спонсори</h4>\r\n                    <ul>\r\n                        <li class=\"de\"><a href=\"http://povnahata.com\">Дім Євангелія</a></li>\r\n                        <li class=\"moc\"><a href=\"http://masterofcode.com\">Masterofcode LTD</a></li>\r\n                        <li class=\"sergium\"><a href=\"http://sergium.net\">SerGium.net</a></li>\r\n                        <li class=\"clear left stuff\"><a href=\"http://val.co.ua/\">val.co.ua/</a></li>\r\n                        <li class=\"youthog\"><a href=\"http://yothog.com\">Youthog.com</a></li>\r\n                    </ul>\r\n                </li>',3,'social',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(97,'vk','','<script type=\"text/javascript\" src=\"//vk.com/js/api/openapi.js?101\"></script>\r\n\r\n<!-- VK Widget -->\r\n<div id=\"vk_groups\"></div>\r\n<script type=\"text/javascript\">\r\nVK.Widgets.Group(\"vk_groups\", {mode: 0, width: \"276\", height: \"240\"}, 30111409);\r\n</script>',1,'social',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*');
/*!40000 ALTER TABLE `zru0x_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_modules_menu`
--

DROP TABLE IF EXISTS `zru0x_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_modules_menu`
--

LOCK TABLES `zru0x_modules_menu` WRITE;
/*!40000 ALTER TABLE `zru0x_modules_menu` DISABLE KEYS */;
INSERT INTO `zru0x_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,0),(88,0),(89,0),(90,-130),(90,-129),(90,-115),(90,-112),(90,-111),(90,-110),(90,-109),(90,-101),(91,0),(92,0),(93,0),(94,109),(95,109),(96,109),(97,109);
/*!40000 ALTER TABLE `zru0x_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_newsfeeds`
--

DROP TABLE IF EXISTS `zru0x_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_newsfeeds`
--

LOCK TABLES `zru0x_newsfeeds` WRITE;
/*!40000 ALTER TABLE `zru0x_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_overrider`
--

DROP TABLE IF EXISTS `zru0x_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_overrider`
--

LOCK TABLES `zru0x_overrider` WRITE;
/*!40000 ALTER TABLE `zru0x_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_redirect_links`
--

DROP TABLE IF EXISTS `zru0x_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_redirect_links`
--

LOCK TABLES `zru0x_redirect_links` WRITE;
/*!40000 ALTER TABLE `zru0x_redirect_links` DISABLE KEYS */;
INSERT INTO `zru0x_redirect_links` VALUES (1,'http://localhost/GeekHub/index.php/ghghg','','http://localhost/GeekHub/','',1,0,'2013-11-01 11:00:26','0000-00-00 00:00:00'),(2,'http://localhost/GeekHub/index.php/component/content/article','','http://localhost/GeekHub/index.php/component/content/article?id=17','',2,0,'2013-11-05 16:48:21','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `zru0x_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_schemas`
--

DROP TABLE IF EXISTS `zru0x_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_schemas`
--

LOCK TABLES `zru0x_schemas` WRITE;
/*!40000 ALTER TABLE `zru0x_schemas` DISABLE KEYS */;
INSERT INTO `zru0x_schemas` VALUES (700,'2.5.14');
/*!40000 ALTER TABLE `zru0x_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_session`
--

DROP TABLE IF EXISTS `zru0x_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_session`
--

LOCK TABLES `zru0x_session` WRITE;
/*!40000 ALTER TABLE `zru0x_session` DISABLE KEYS */;
INSERT INTO `zru0x_session` VALUES ('56edd3e31ff13f9c4fe8a8e5658733e9',0,1,'1383670980','__default|a:8:{s:22:\"session.client.browser\";s:74:\"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:25.0) Gecko/20100101 Firefox/25.0\";s:15:\"session.counter\";i:84;s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:19:\"session.timer.start\";i:1383666981;s:18:\"session.timer.last\";i:1383670969;s:17:\"session.timer.now\";i:1383670980;s:16:\"com_mailto.links\";a:1:{s:40:\"c7ce3072a29de006255b4f80887b491c7b14f1e4\";O:8:\"stdClass\":2:{s:4:\"link\";s:43:\"http://localhost/GeekHub/index.php/register\";s:6:\"expiry\";i:1383668817;}}}',0,'',''),('b7fbe3f5c8b68e3e63da0b9c6c62e10c',1,0,'1383670884','__default|a:8:{s:15:\"session.counter\";i:277;s:19:\"session.timer.start\";i:1383656974;s:18:\"session.timer.last\";i:1383670883;s:17:\"session.timer.now\";i:1383670884;s:22:\"session.client.browser\";s:74:\"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:25.0) Gecko/20100101 Firefox/25.0\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":7:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:9:\"com_menus\";O:8:\"stdClass\":2:{s:4:\"edit\";O:8:\"stdClass\":1:{s:4:\"item\";O:8:\"stdClass\":4:{s:2:\"id\";a:1:{i:0;i:130;}s:4:\"data\";N;s:4:\"type\";N;s:4:\"link\";N;}}s:5:\"items\";O:8:\"stdClass\":6:{s:6:\"filter\";O:8:\"stdClass\":4:{s:8:\"menutype\";s:3:\"nav\";s:6:\"access\";i:0;s:5:\"level\";i:0;s:8:\"language\";s:0:\"\";}s:10:\"limitstart\";i:0;s:6:\"search\";s:0:\"\";s:9:\"published\";s:0:\"\";s:8:\"ordercol\";s:5:\"a.lft\";s:9:\"orderdirn\";s:3:\"asc\";}}s:11:\"com_content\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"article\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}s:13:\"com_installer\";O:8:\"stdClass\":3:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";s:12:\"redirect_url\";N;}s:11:\"com_modules\";O:8:\"stdClass\":4:{s:7:\"modules\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":8:{s:18:\"client_id_previous\";i:0;s:6:\"search\";s:0:\"\";s:6:\"access\";i:0;s:5:\"state\";s:0:\"\";s:8:\"position\";s:0:\"\";s:6:\"module\";s:0:\"\";s:9:\"client_id\";i:0;s:8:\"language\";s:0:\"\";}s:10:\"limitstart\";s:1:\"0\";s:8:\"ordercol\";s:8:\"ordering\";s:9:\"orderdirn\";s:3:\"asc\";}s:4:\"edit\";O:8:\"stdClass\":1:{s:6:\"module\";O:8:\"stdClass\":2:{s:2:\"id\";a:1:{i:0;i:93;}s:4:\"data\";N;}}s:3:\"add\";O:8:\"stdClass\":1:{s:6:\"module\";O:8:\"stdClass\":2:{s:12:\"extension_id\";N;s:6:\"params\";N;}}s:9:\"positions\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":4:{s:6:\"search\";s:0:\"\";s:5:\"state\";s:0:\"\";s:8:\"template\";s:8:\"gumennoy\";s:4:\"type\";s:0:\"\";}s:10:\"limitstart\";i:0;s:8:\"ordercol\";s:5:\"value\";s:9:\"orderdirn\";s:3:\"asc\";}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:20;}}s:4:\"item\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:3:\"nav\";}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"662\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:19:\"j.jaguar@rambler.ru\";s:8:\"password\";s:65:\"43b25eac6ac27b11fb89bdd8bc3dfcf3:AlaMlZNPgg28ql6bcHvyzjRx4ndBabmF\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-10-27 12:22:59\";s:13:\"lastvisitDate\";s:19:\"2013-11-05 12:47:31\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:0:\"\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"c20f8877e2c896fe9196a6e53a5664a6\";}__wf|a:1:{s:13:\"session.token\";s:32:\"f384dbe9350787d3e4a16008a3653bd8\";}',662,'admin','');
/*!40000 ALTER TABLE `zru0x_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_template_styles`
--

DROP TABLE IF EXISTS `zru0x_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_template_styles`
--

LOCK TABLES `zru0x_template_styles` WRITE;
/*!40000 ALTER TABLE `zru0x_template_styles` DISABLE KEYS */;
INSERT INTO `zru0x_template_styles` VALUES (2,'bluestork',1,'1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(3,'atomic',0,'0','Atomic - Default','{}'),(4,'beez_20',0,'0','Beez2 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Beez5 - Default','{\"wrapperSmall\":53,\"wrapperLarge\":72,\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"html5\":0}'),(7,'gumennoy',0,'1','gumennoy - По умолчанию','{}');
/*!40000 ALTER TABLE `zru0x_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_update_categories`
--

DROP TABLE IF EXISTS `zru0x_update_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_update_categories`
--

LOCK TABLES `zru0x_update_categories` WRITE;
/*!40000 ALTER TABLE `zru0x_update_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_update_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_update_sites`
--

DROP TABLE IF EXISTS `zru0x_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_update_sites`
--

LOCK TABLES `zru0x_update_sites` WRITE;
/*!40000 ALTER TABLE `zru0x_update_sites` DISABLE KEYS */;
INSERT INTO `zru0x_update_sites` VALUES (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1383592729),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1383592729),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,1383592729);
/*!40000 ALTER TABLE `zru0x_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_update_sites_extensions`
--

DROP TABLE IF EXISTS `zru0x_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_update_sites_extensions`
--

LOCK TABLES `zru0x_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `zru0x_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `zru0x_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(3,10003);
/*!40000 ALTER TABLE `zru0x_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_updates`
--

DROP TABLE IF EXISTS `zru0x_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_updates`
--

LOCK TABLES `zru0x_updates` WRITE;
/*!40000 ALTER TABLE `zru0x_updates` DISABLE KEYS */;
INSERT INTO `zru0x_updates` VALUES (1,3,0,0,'Armenian','','pkg_hy-AM','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hy-AM_details.xml',''),(2,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),(3,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(4,3,0,0,'Khmer','','pkg_km-KH','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/km-KH_details.xml',''),(5,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),(6,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(7,3,0,0,'Bulgarian','','pkg_bg-BG','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/bg-BG_details.xml',''),(8,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(9,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(10,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(11,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(12,3,0,0,'Turkish','','pkg_tr-TR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/tr-TR_details.xml',''),(13,3,0,0,'Ukrainian','','pkg_uk-UA','package','',0,'2.5.13.11','','http://update.joomla.org/language/details/uk-UA_details.xml',''),(14,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.14.3','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(15,3,0,0,'Belarusian','','pkg_be-BY','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/be-BY_details.xml',''),(16,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(17,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(18,3,0,0,'Romanian','','pkg_ro-RO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ro-RO_details.xml',''),(19,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(20,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),(21,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(22,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(23,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(24,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(25,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(26,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-AU_details.xml',''),(27,3,0,0,'English US','','pkg_en-US','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-US_details.xml',''),(28,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(29,3,0,0,'Lithuanian','','pkg_lt-LT','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/lt-LT_details.xml',''),(30,3,0,0,'Albanian','','pkg_sq-AL','package','',0,'2.5.1.5','','http://update.joomla.org/language/details/sq-AL_details.xml',''),(31,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(32,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(33,3,0,0,'Galician','','pkg_gl-ES','package','',0,'2.5.7.4','','http://update.joomla.org/language/details/gl-ES_details.xml',''),(34,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(35,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),(36,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),(38,3,0,0,'Hebrew','','pkg_he-IL','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml',''),(39,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(40,3,0,0,'Laotian','','pkg_lo-LA','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/lo-LA_details.xml',''),(41,3,0,0,'Afrikaans','','pkg_af-ZA','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/af-ZA_details.xml',''),(42,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(43,3,0,0,'Greek','','pkg_el-GR','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/el-GR_details.xml',''),(44,3,0,0,'Esperanto','','pkg_eo-XX','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/eo-XX_details.xml',''),(45,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),(46,3,0,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/pt-BR_details.xml',''),(47,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(48,3,0,0,'Vietnamese','','pkg_vi-VN','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/vi-VN_details.xml',''),(49,3,0,0,'Kurdish Sorani','','pkg_ckb-IQ','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml',''),(50,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(51,3,0,0,'Croatian','','pkg_hr-HR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/hr-HR_details.xml',''),(52,3,0,0,'Azeri','','pkg_az-AZ','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/az-AZ_details.xml',''),(53,3,0,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nn-NO_details.xml',''),(54,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.14.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(55,3,0,0,'Scottish Gaelic','','pkg_gd-GB','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/gd-GB_details.xml',''),(56,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(57,3,0,0,'Basque','','pkg_eu-ES','package','',0,'1.7.0.1','','http://update.joomla.org/language/details/eu-ES_details.xml',''),(58,3,0,0,'Uyghur','','pkg_ug-CN','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml',''),(59,3,0,0,'Korean','','pkg_ko-KR','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ko-KR_details.xml',''),(60,3,0,0,'Hindi','','pkg_hi-IN','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/hi-IN_details.xml',''),(61,3,0,0,'Welsh','','pkg_cy-GB','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/cy-GB_details.xml',''),(62,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');
/*!40000 ALTER TABLE `zru0x_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_user_notes`
--

DROP TABLE IF EXISTS `zru0x_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_user_notes`
--

LOCK TABLES `zru0x_user_notes` WRITE;
/*!40000 ALTER TABLE `zru0x_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_user_profiles`
--

DROP TABLE IF EXISTS `zru0x_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_user_profiles`
--

LOCK TABLES `zru0x_user_profiles` WRITE;
/*!40000 ALTER TABLE `zru0x_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_user_usergroup_map`
--

DROP TABLE IF EXISTS `zru0x_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_user_usergroup_map`
--

LOCK TABLES `zru0x_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `zru0x_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `zru0x_user_usergroup_map` VALUES (662,8);
/*!40000 ALTER TABLE `zru0x_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_usergroups`
--

DROP TABLE IF EXISTS `zru0x_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_usergroups`
--

LOCK TABLES `zru0x_usergroups` WRITE;
/*!40000 ALTER TABLE `zru0x_usergroups` DISABLE KEYS */;
INSERT INTO `zru0x_usergroups` VALUES (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');
/*!40000 ALTER TABLE `zru0x_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_users`
--

DROP TABLE IF EXISTS `zru0x_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=663 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_users`
--

LOCK TABLES `zru0x_users` WRITE;
/*!40000 ALTER TABLE `zru0x_users` DISABLE KEYS */;
INSERT INTO `zru0x_users` VALUES (662,'Super User','admin','j.jaguar@rambler.ru','43b25eac6ac27b11fb89bdd8bc3dfcf3:AlaMlZNPgg28ql6bcHvyzjRx4ndBabmF','deprecated',0,1,'2013-10-27 12:22:59','2013-11-05 13:09:36','0','','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `zru0x_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_viewlevels`
--

DROP TABLE IF EXISTS `zru0x_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_viewlevels`
--

LOCK TABLES `zru0x_viewlevels` WRITE;
/*!40000 ALTER TABLE `zru0x_viewlevels` DISABLE KEYS */;
INSERT INTO `zru0x_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]');
/*!40000 ALTER TABLE `zru0x_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_weblinks`
--

DROP TABLE IF EXISTS `zru0x_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_weblinks`
--

LOCK TABLES `zru0x_weblinks` WRITE;
/*!40000 ALTER TABLE `zru0x_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `zru0x_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zru0x_wf_profiles`
--

DROP TABLE IF EXISTS `zru0x_wf_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zru0x_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zru0x_wf_profiles`
--

LOCK TABLES `zru0x_wf_profiles` WRITE;
/*!40000 ALTER TABLE `zru0x_wf_profiles` DISABLE KEYS */;
INSERT INTO `zru0x_wf_profiles` VALUES (1,'Default','Default Profile for all users','','3,4,5,6,8,7','',0,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists',1,1,0,'0000-00-00 00:00:00',''),(2,'Front End','Sample Front-end Profile','','3,4,5','',1,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists',0,2,0,'0000-00-00 00:00:00',''),(3,'Blogger','Simple Blogging Profile','','3,4,5,6,8,7','',0,'desktop,tablet,phone','bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help','link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists',0,3,0,'0000-00-00 00:00:00','{\"editor\":{\"toggle\":\"0\"}}'),(4,'Mobile','Sample Mobile Profile','','3,4,5,6,8,7','',0,'tablet,phone','undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink','fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists',0,4,0,'0000-00-00 00:00:00','{\"editor\":{\"toolbar_theme\":\"mobile\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}');
/*!40000 ALTER TABLE `zru0x_wf_profiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-05 19:12:44
