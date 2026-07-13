-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2013. dec. 03. 14:02
-- Szerver verzió: 5.1.41
-- PHP verzió: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `vir2_002`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_advert`
--

CREATE TABLE IF NOT EXISTS `core_advert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_advert_advertiserID` int(11) unsigned DEFAULT NULL,
  `core_advert_groupID` int(11) unsigned DEFAULT NULL,
  `core_advert_sizeID` int(11) unsigned DEFAULT NULL,
  `core_advert_sourceID` int(11) unsigned DEFAULT NULL,
  `core_advert_zoneID` int(11) unsigned DEFAULT NULL,
  `core_advert_campaignID` int(11) unsigned DEFAULT NULL,
  `sizeWidth` int(11) unsigned DEFAULT NULL,
  `sizeHeight` int(11) unsigned DEFAULT NULL,
  `changeTime` int(11) unsigned DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `name` varchar(100) COLLATE utf8_bin DEFAULT '',
  `advertFileName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `textValue` tinytext COLLATE utf8_bin,
  `jumpURL` varchar(255) COLLATE utf8_bin DEFAULT '',
  `comment` text COLLATE utf8_bin,
  `activateWhen` datetime DEFAULT NULL,
  `deactivateWhen` datetime DEFAULT NULL,
  `playMaxNum` int(11) unsigned DEFAULT NULL,
  `playCounter` int(11) unsigned DEFAULT NULL,
  `clickMaxNum` int(11) unsigned DEFAULT NULL,
  `clickCounter` int(11) unsigned DEFAULT NULL,
  `priceMax` double unsigned DEFAULT NULL,
  `priceActual` double unsigned DEFAULT NULL,
  `price` double unsigned DEFAULT NULL,
  `percentVAT` double unsigned DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `nocore_doctorID` int(11) unsigned DEFAULT NULL,
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `lastvisit` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_advert`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_advert_advertiser`
--

CREATE TABLE IF NOT EXISTS `core_advert_advertiser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) COLLATE utf8_bin DEFAULT NULL,
  `zipcode` int(5) unsigned DEFAULT NULL,
  `settlement` varchar(90) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(90) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `contactName` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(55) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(55) COLLATE utf8_bin DEFAULT NULL,
  `activateWhen` datetime DEFAULT NULL,
  `deactivateWhen` datetime DEFAULT NULL,
  `playMaxNum` int(11) unsigned DEFAULT NULL,
  `playCounter` int(11) unsigned DEFAULT NULL,
  `clickMaxNum` int(11) unsigned DEFAULT NULL,
  `clickCounter` int(11) unsigned DEFAULT NULL,
  `priceMax` double unsigned DEFAULT NULL,
  `priceActual` double unsigned DEFAULT NULL,
  `comment` text COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_advert_advertiser`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_advert_campaign`
--

CREATE TABLE IF NOT EXISTS `core_advert_campaign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_advert_advertiserID` int(11) unsigned DEFAULT NULL,
  `core_advert_zoneID` int(11) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `activateWhen` datetime DEFAULT NULL,
  `deactivateWhen` datetime DEFAULT NULL,
  `playMaxNum` int(11) unsigned DEFAULT NULL,
  `playCounter` int(11) unsigned DEFAULT NULL,
  `clickMaxNum` int(11) unsigned DEFAULT NULL,
  `clickCounter` int(11) unsigned DEFAULT NULL,
  `priceMax` double unsigned DEFAULT NULL,
  `priceActual` double unsigned DEFAULT NULL,
  `percentVAT` double unsigned DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `nocore_doctorID` int(11) unsigned DEFAULT NULL,
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_advert_campaign`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_advert_group`
--

CREATE TABLE IF NOT EXISTS `core_advert_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_advert_advertiserID` int(11) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `nocore_doctorID` int(11) unsigned DEFAULT NULL,
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_advert_group`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_advert_log`
--

CREATE TABLE IF NOT EXISTS `core_advert_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_advertID` int(11) unsigned DEFAULT '0',
  `remoteIP` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT '',
  `jumpURL` varchar(255) COLLATE utf8_bin DEFAULT '',
  `playWhen` datetime DEFAULT NULL,
  `clickWhen` datetime DEFAULT NULL,
  `price` double unsigned DEFAULT NULL,
  `percentVAT` double unsigned DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned NOT NULL,
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_advert_log`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_advert_size`
--

CREATE TABLE IF NOT EXISTS `core_advert_size` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_advert_advertiserID` int(11) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `sizeWidth` int(11) unsigned DEFAULT NULL,
  `sizeHeight` int(11) unsigned DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `core_advert_size`
--

INSERT INTO `core_advert_size` (`id`, `core_advert_advertiserID`, `name`, `sizeWidth`, `sizeHeight`, `description`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, NULL, 'Pop-Under', 720, 300, NULL, 1, 0, 2, '2013-09-24 12:24:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_advert_source`
--

CREATE TABLE IF NOT EXISTS `core_advert_source` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_advert_advertiserID` int(11) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `nocore_doctorID` int(11) unsigned DEFAULT NULL,
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `core_advert_source`
--

INSERT INTO `core_advert_source` (`id`, `core_advert_advertiserID`, `name`, `description`, `active`, `nocore_doctorID`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, NULL, 'jpg', NULL, 1, NULL, 0, 2, '2013-08-13 20:26:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_advert_zone`
--

CREATE TABLE IF NOT EXISTS `core_advert_zone` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_advert_advertiserID` int(11) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `core_advert_zone`
--

INSERT INTO `core_advert_zone` (`id`, `core_advert_advertiserID`, `name`, `description`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, NULL, 'Top', NULL, 1, NULL, 2, '2013-09-24 12:07:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_calendar`
--

CREATE TABLE IF NOT EXISTS `core_calendar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `startDate` date DEFAULT NULL,
  `startHour` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `startMin` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `stopHour` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `stopMin` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `nocore_doctorID` int(11) unsigned NOT NULL,
  `nocore_patientID` int(11) unsigned DEFAULT NULL,
  `core_calendar_typeID` int(11) unsigned DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_calendar`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_calendar_type`
--

CREATE TABLE IF NOT EXISTS `core_calendar_type` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- A tábla adatainak kiíratása `core_calendar_type`
--

INSERT INTO `core_calendar_type` (`id`, `name`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, '1.-es típus', NULL, 1, 2, '2013-10-16 09:23:32', NULL, NULL),
(2, '2.-es típus', NULL, 1, 2, '2013-10-16 09:23:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_config`
--

CREATE TABLE IF NOT EXISTS `core_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `systemType` enum('frontend','backend') COLLATE utf8_bin DEFAULT NULL,
  `core_configsID` int(11) unsigned DEFAULT NULL,
  `fieldName` varchar(100) COLLATE utf8_bin NOT NULL,
  `fieldValue` text COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `autoload` int(1) unsigned DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=32 ;

--
-- A tábla adatainak kiíratása `core_config`
--

INSERT INTO `core_config` (`id`, `systemType`, `core_configsID`, `fieldName`, `fieldValue`, `description`, `autoload`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'frontend', NULL, 'core_localserverID', '2', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(2, 'frontend', NULL, 'barcodeType', '0', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(3, 'frontend', NULL, 'maxPatientView', '8', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-10-03 15:19:04'),
(4, 'frontend', NULL, 'waitingBoxRefresh', '10', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(5, 'frontend', NULL, 'bannerBoxRefresh', '1800', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(6, 'frontend', NULL, 'marqueeBoxRefresh', '10', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(7, 'frontend', NULL, 'barcodeReadTimeout', '8', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-11-26 12:18:10'),
(8, 'frontend', NULL, 'patientViewTimeout', '8', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-11-26 12:18:26'),
(9, 'frontend', NULL, 'patientViewRefresh', '8', NULL, 1, 1, NULL, NULL, NULL, 3, '2013-12-03 13:53:29'),
(10, 'frontend', NULL, 'bannerChangeTimeout', '15', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(11, 'frontend', NULL, 'bannerDrMaximum', '6', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(12, 'frontend', NULL, 'marqueeDrMaximum', '5', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(13, 'frontend', NULL, 'playAudio', '1', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(14, 'frontend', NULL, 'cssFromFile', '1', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(15, 'frontend', NULL, 'cssInsertRename', '0', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(16, 'frontend', NULL, 'callUpCounterMax', '1', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(17, 'frontend', NULL, 'dayStartClearBefore', '1', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(18, 'backend', 10, 'miniBoxZoomHeight', '600px', NULL, 1, 1, NULL, 2, '2013-09-09 13:03:11', NULL, NULL),
(19, 'backend', 68, 'boxRefresh', '60', NULL, 1, 1, NULL, 2, '2013-09-08 09:24:54', 2, '2013-09-08 20:00:48'),
(20, 'frontend', NULL, 'getBarcodeErrorAudio', '<audio autoplay><source src="../docroot/audio/hiba.wav" type="audio/wav"></audio>', NULL, 1, 1, NULL, 2, '2013-11-28 14:36:48', NULL, NULL),
(21, 'frontend', NULL, 'callUpAudio', '<audio autoplay><source src="../docroot/audio/behivas.wav" type="audio/wav"></audio>', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-11-08 09:41:15'),
(22, 'frontend', NULL, 'patientCallType', 'madmax', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(23, 'frontend', NULL, 'getBarcodeAudio', '<audio autoplay><source src="../docroot/audio/kartya.wav" type="audio/wav"></audio>', NULL, 1, 1, NULL, 2, '2013-11-08 09:10:29', 2, '2013-11-08 09:40:48'),
(24, 'frontend', NULL, 'defaultOrderTime', '--:-- - --:--', NULL, 1, 1, NULL, 2, '2013-11-19 12:25:34', NULL, NULL),
(25, 'frontend', NULL, 'barcodeLogging', '0', NULL, 1, 1, NULL, 2, '2013-11-19 12:25:34', NULL, NULL),
(26, 'frontend', NULL, 'doctorNameViewNo', '1', NULL, 1, 1, NULL, NULL, NULL, 3, '2013-12-03 13:53:07'),
(27, 'frontend', NULL, 'waitingListSetup1920x1080', '750<=>220<=>17<=>6', NULL, 1, 1, NULL, 2, '2013-11-27 11:58:57', 2, '2013-11-27 13:27:42'),
(28, 'frontend', NULL, 'waitingListSetup1360x768', '550<=>180<=>12<=>5', NULL, 1, 1, NULL, 2, '2013-11-27 18:30:10', 2, '2013-11-27 18:51:19'),
(29, 'frontend', NULL, 'waitingListSetup1366x768', '550<=>180<=>12<=>5', NULL, NULL, 1, NULL, 2, '2013-11-27 18:43:02', 2, '2013-11-27 18:52:26'),
(30, 'frontend', NULL, 'waitingListSetup1024x768', '550<=>180<=>12<=>5', NULL, 1, 1, NULL, 2, '2013-11-27 18:54:06', NULL, NULL),
(31, 'frontend', NULL, 'waitingListSetup1280x720', '550<=>180<=>12<=>5', NULL, NULL, 1, NULL, 2, '2013-11-27 19:01:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_configs`
--

CREATE TABLE IF NOT EXISTS `core_configs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `tplName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `allrecs` int(2) unsigned DEFAULT '0',
  `ownrecs` int(2) unsigned DEFAULT '0',
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=80 ;

--
-- A tábla adatainak kiíratása `core_configs`
--

INSERT INTO `core_configs` (`id`, `name`, `title`, `tplName`, `allrecs`, `ownrecs`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'core_users', 'Felhasználó', 'core_users', 15, 0, NULL, 1, 1, '2005-08-29 23:45:38', 2, '2013-08-24 11:47:27'),
(2, 'core_users_rights', 'Felhasználó jogai', 'core_users_rights', 15, 0, NULL, 1, 1, '2005-08-29 23:46:03', 2, '2013-07-30 15:50:07'),
(3, 'core_groups', 'Csoport', 'core_groups', 15, 0, NULL, 1, 1, '2005-08-29 23:46:31', 2, '2013-08-24 11:57:35'),
(4, 'core_groups_rights', 'Csoport jogai', 'core_groups_rights', 15, 0, NULL, 1, 1, '2005-08-29 23:46:46', 2, '2012-01-17 13:37:39'),
(5, 'core_lang', 'Nyelv', 'core_lang', 15, 0, NULL, 1, 1, '2005-08-29 23:48:06', 2, '2010-09-24 08:57:03'),
(6, 'core_advert', 'Reklám', 'core_advert', 15, 15, NULL, 1, 2, '2009-06-10 12:14:20', 2, '2013-07-30 15:49:44'),
(7, 'core_userstitle', 'Titulus', 'core_userstitle', 15, 0, NULL, 1, 2, '2009-07-01 10:12:24', 2, '2012-03-25 13:59:07'),
(8, 'userslog', 'login/logout', NULL, 15, 0, NULL, 1, 2, '2009-08-12 20:40:21', NULL, NULL),
(10, 'configShare', 'Rendszer', NULL, 15, 0, NULL, 1, 2, '2011-03-11 22:34:24', 2, '2012-03-23 23:11:47'),
(11, 'core_advert_zone', 'Zóna', 'topicshare', 15, 0, NULL, 1, 2, '2011-03-02 07:34:38', 2, '2013-07-30 15:49:33'),
(13, 'core_advert_advertiser', 'Hirdető', 'core_advert_advertiser', 15, 0, NULL, 1, 2, '2011-03-02 07:36:46', 2, '2013-07-30 15:49:14'),
(14, 'core_advert_size', 'Méret', 'core_advert_size', 15, 0, NULL, 1, 2, '2011-03-02 07:37:44', 2, '2013-07-30 15:49:03'),
(15, 'core_advert_source', 'Forrás', 'topicshare', 15, 0, NULL, 1, 2, '2011-03-09 20:08:41', 2, '2013-07-30 15:48:51'),
(16, 'core_advert_group', 'Csoport', 'topicshare', 15, 0, NULL, 1, 2, '2012-01-16 10:05:46', 2, '2013-08-01 09:25:02'),
(17, 'core_configs', 'Konfigurátor', 'core_configs', 15, 15, NULL, 1, 2, '2012-01-16 14:15:08', 2, '2013-07-30 15:48:30'),
(20, 'core_themes', 'Arculat', 'core_themes', 8, 0, NULL, 1, 2, '2012-02-19 20:55:58', 2, '2012-03-03 18:39:38'),
(22, 'core_support', 'Támogatás', 'core_support', 15, 0, NULL, 1, 2, '2012-02-29 23:12:41', 2, '2013-07-30 15:48:20'),
(23, 'core_support_topic', 'Téma', 'core_support_topic', 8, 0, NULL, 1, 2, '2012-03-02 23:02:26', 2, '2013-08-01 09:24:49'),
(24, 'core_support_type', 'Típus', 'core_support_type', 8, 0, NULL, 1, 2, '2012-03-02 23:09:38', 2, '2013-08-01 09:24:40'),
(25, 'core_support_status', 'Állapot', 'core_support_status', 8, 0, NULL, 1, 2, '2012-03-02 23:10:13', 2, '2013-08-01 09:24:29'),
(65, 'core_advert_campaign', 'Kampány', 'core_advert_campaign', 8, 0, NULL, 1, 2, '2013-08-14 10:42:07', NULL, NULL),
(38, 'core_messagewall', 'Üzenőfal', 'core_messagewall', 8, 0, NULL, 1, 2, '2012-03-21 18:28:31', 2, '2012-05-12 23:30:35'),
(59, 'nocore_clinic', 'Rendelő', 'nocore_clinic', 8, 0, NULL, 1, 2, '2013-08-01 22:18:56', NULL, NULL),
(50, 'nocore_barcode', 'Behívás', 'nocore_barcode', 8, 0, NULL, 1, 2, '2013-07-24 11:20:56', 2, '2013-07-25 10:38:13'),
(51, 'nocore_where', 'Kihez', 'nocore_where', 8, 0, NULL, 1, 2, '2013-07-26 10:48:50', NULL, NULL),
(52, 'nocore_status', 'Állapot', 'nocore_status', 8, 0, NULL, 1, 2, '2013-07-26 10:49:09', NULL, NULL),
(53, 'nocore_doctor', 'Orvos', 'nocore_doctor', 8, 0, NULL, 1, 2, '2013-07-29 09:46:02', NULL, NULL),
(54, 'nocore_doctor_marquee', 'Fényújság', 'nocore_doctor_marquee', 8, 0, NULL, 1, 2, '2013-07-29 12:44:53', 2, '2013-08-01 09:22:58'),
(55, 'nocore_doctor_advert', 'Reklám', 'nocore_doctor_advert', 8, 0, NULL, 1, 2, '2013-07-29 12:45:29', 2, '2013-08-01 09:22:46'),
(56, 'nocore_doctor_ambulance', 'Ambuláns', 'nocore_doctor_ambulance', 8, 0, NULL, 1, 2, '2013-07-29 12:46:58', 2, '2013-08-01 09:22:34'),
(57, 'nocore_doctor_order', 'Rendelés', 'nocore_doctor_order', 8, 0, NULL, 1, 2, '2013-07-29 12:47:51', 2, '2013-08-01 09:22:22'),
(58, 'nocore_doctor_order_type', 'Rendelés típus', 'nocore_doctor_order_type', 8, 0, NULL, 1, 2, '2013-07-29 12:48:18', 2, '2013-08-01 09:21:58'),
(60, 'nocore_clinic_order', 'Rendelés', 'nocore_clinic_order', 8, 0, NULL, 1, 2, '2013-08-01 22:19:19', NULL, NULL),
(61, 'core_support_action', 'Intézkedés', 'core_support_action', 8, 0, NULL, 1, 2, '2013-08-05 11:36:14', NULL, NULL),
(62, 'core_localserver', 'Szerver', 'core_localserver', 8, 0, NULL, 1, 2, '2013-08-06 12:43:01', 2, '2013-08-24 11:49:00'),
(64, 'nocore_doctor_deputy', 'Helyettesítés', 'nocore_doctor_deputy', 8, 0, NULL, 1, 2, '2013-08-12 14:10:36', NULL, NULL),
(66, 'core_configs', 'Beállítás', 'core_configs', 8, 0, NULL, 1, 2, '2013-08-14 14:45:09', 2, '2013-08-24 11:45:48'),
(67, 'nocore_patient', 'Beteg', 'nocore_patient', 8, 0, NULL, 1, 2, '2013-08-16 10:24:34', NULL, NULL),
(68, 'nocore_waiting', 'Várakozók', 'nocore_waiting', 8, 0, NULL, 1, 2, '2013-08-30 10:09:05', NULL, NULL),
(69, 'nocore_provided', 'Ellátottak', 'nocore_provided', 8, 0, NULL, 1, 2, '2013-08-30 10:09:41', NULL, NULL),
(70, 'nocore_prerecorded', 'Előjegyzettek', 'nocore_prerecorded', 8, 0, NULL, 1, 2, '2013-08-30 10:10:15', NULL, NULL),
(71, 'core_marquee', 'Fényújság', 'core_marquee', 8, 0, NULL, 1, 2, '2013-09-03 15:11:22', NULL, NULL),
(72, 'core_config', 'Setup', 'core_config', 8, 0, NULL, 1, 2, '2013-09-05 22:10:02', 2, '2013-09-20 12:01:42'),
(73, 'core_language', 'Nyelv', 'core_language', 8, 0, NULL, 1, 2, '2013-09-23 13:12:50', NULL, NULL),
(74, 'core_import', 'Import', 'core_import', 8, 0, NULL, 1, 2, '2013-09-30 22:17:47', NULL, NULL),
(75, 'core_calendar', 'Naptár', 'core_calendar', 8, 0, NULL, 1, 2, '2013-10-09 12:07:28', 2, '2013-11-06 12:39:53'),
(79, 'core_calendar_type', 'Típus', 'core_calendar_type', 8, 0, NULL, 1, 2, '2013-10-16 09:16:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_gender`
--

CREATE TABLE IF NOT EXISTS `core_gender` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `langID` int(2) unsigned NOT NULL DEFAULT '0',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- A tábla adatainak kiíratása `core_gender`
--

INSERT INTO `core_gender` (`id`, `name`, `description`, `active`, `langID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'Férfi', NULL, 1, 1, 2, '2012-03-30 16:02:10', NULL, NULL),
(2, 'Nő', NULL, 1, 1, 2, '2012-03-30 16:02:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_groups`
--

CREATE TABLE IF NOT EXISTS `core_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_themesID` int(4) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- A tábla adatainak kiíratása `core_groups`
--

INSERT INTO `core_groups` (`id`, `core_themesID`, `name`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 1, 'Vendég', NULL, 1, 2, '2005-08-29 21:08:54', 2, '2013-07-22 23:29:48'),
(2, NULL, 'Supervisor', NULL, 1, 1, '2005-08-29 21:08:54', 2, '2011-12-26 14:56:34'),
(3, NULL, 'Rendszergazda', NULL, 1, 1, '2005-08-29 21:10:02', NULL, NULL),
(4, NULL, 'Tag', NULL, 1, 1, '2005-08-29 21:10:55', 2, '2010-10-05 12:23:21'),
(5, 14, 'Orvos', NULL, 1, 2, '2013-08-06 08:52:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_groups_config`
--

CREATE TABLE IF NOT EXISTS `core_groups_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fieldName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fieldValue` text COLLATE utf8_bin,
  `autoload` int(1) unsigned DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned NOT NULL,
  `core_groupsID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `core_groups_config`
--

INSERT INTO `core_groups_config` (`id`, `fieldName`, `fieldValue`, `autoload`, `active`, `core_localserverID`, `core_groupsID`, `insertWhen`, `modifyWhen`) VALUES
(1, 'noMenuItem', 'core_users', 1, 1, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_groups_rights`
--

CREATE TABLE IF NOT EXISTS `core_groups_rights` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_groupsID` int(11) unsigned NOT NULL DEFAULT '0',
  `core_configsID` int(11) unsigned NOT NULL DEFAULT '0',
  `allrecs` int(2) unsigned DEFAULT '0',
  `ownrecs` int(2) unsigned DEFAULT '0',
  `active` int(1) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=96 ;

--
-- A tábla adatainak kiíratása `core_groups_rights`
--

INSERT INTO `core_groups_rights` (`id`, `core_groupsID`, `core_configsID`, `allrecs`, `ownrecs`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 2, 1, 31, 0, 1, 2, '2012-03-30 15:44:44', NULL, NULL),
(2, 2, 2, 31, 0, 1, 2, '2012-03-30 15:45:16', NULL, NULL),
(3, 2, 3, 31, 0, 1, 2, '2012-03-30 15:46:14', NULL, NULL),
(4, 2, 4, 31, 0, 1, 2, '2012-03-30 15:46:27', NULL, NULL),
(5, 2, 5, 15, 0, 1, 2, '2012-03-30 15:46:42', NULL, NULL),
(6, 2, 6, 31, 0, 1, 2, '2012-03-30 15:46:53', NULL, NULL),
(7, 2, 7, 31, 0, 1, 2, '2012-03-30 15:47:09', NULL, NULL),
(9, 2, 10, 15, 0, 1, 2, '2012-03-30 15:48:16', NULL, NULL),
(10, 2, 11, 31, 0, 1, 2, '2012-03-30 15:48:29', NULL, NULL),
(11, 2, 12, 31, 0, 1, 2, '2012-03-30 15:48:45', NULL, NULL),
(12, 2, 13, 31, 0, 1, 2, '2012-03-30 15:48:59', NULL, NULL),
(13, 2, 14, 31, 0, 1, 2, '2012-03-30 15:49:15', NULL, NULL),
(14, 2, 15, 31, 0, 1, 2, '2012-03-30 15:49:35', NULL, NULL),
(15, 2, 16, 31, 0, 1, 2, '2012-03-30 15:49:56', NULL, NULL),
(16, 2, 17, 31, 0, 1, 2, '2012-03-30 15:50:10', NULL, NULL),
(19, 2, 20, 31, 0, 1, 2, '2012-03-30 15:51:27', NULL, NULL),
(21, 2, 22, 31, 0, 1, 2, '2012-03-30 15:51:54', NULL, NULL),
(22, 2, 23, 31, 0, 1, 2, '2012-03-30 15:52:07', NULL, NULL),
(23, 2, 24, 31, 0, 1, 2, '2012-03-30 15:52:23', NULL, NULL),
(24, 2, 25, 31, 0, 1, 2, '2012-03-30 15:52:36', NULL, NULL),
(37, 2, 38, 31, 0, 1, 2, '2012-03-30 15:56:44', NULL, NULL),
(49, 2, 50, 14, 0, 1, 2, '2013-07-25 10:25:36', 2, '2013-07-25 21:22:45'),
(50, 2, 51, 31, 0, 1, 2, '2013-07-26 10:53:54', NULL, NULL),
(51, 2, 52, 31, 0, 1, 2, '2013-07-26 11:24:15', NULL, NULL),
(52, 2, 53, 31, 0, 1, 2, '2013-07-29 09:53:14', NULL, NULL),
(53, 2, 56, 31, 0, 1, 2, '2013-07-29 12:53:46', NULL, NULL),
(54, 2, 54, 31, 0, 1, 2, '2013-07-29 15:37:58', NULL, NULL),
(55, 2, 55, 31, 0, 1, 2, '2013-07-29 15:38:07', NULL, NULL),
(56, 2, 57, 31, 0, 1, 2, '2013-07-29 15:38:18', NULL, NULL),
(57, 2, 58, 31, 0, 1, 2, '2013-07-29 15:38:27', NULL, NULL),
(58, 2, 59, 31, 0, 1, 2, '2013-08-01 22:19:51', NULL, NULL),
(59, 2, 60, 31, 0, 1, 2, '2013-08-01 22:20:26', NULL, NULL),
(60, 2, 61, 31, 0, 1, 2, '2013-08-05 11:36:46', NULL, NULL),
(61, 2, 62, 31, 0, 1, 2, '2013-08-06 12:43:43', NULL, NULL),
(62, 2, 64, 31, 0, 1, 2, '2013-08-12 14:12:49', NULL, NULL),
(63, 5, 50, 0, 0, 1, 2, '2013-08-13 09:08:07', NULL, NULL),
(64, 5, 53, 12, 0, 1, 2, '2013-08-13 09:08:34', NULL, NULL),
(65, 5, 55, 15, 0, 1, 2, '2013-08-13 09:13:02', NULL, NULL),
(66, 5, 56, 15, 0, 1, 2, '2013-08-13 09:13:14', NULL, NULL),
(67, 5, 64, 15, 0, 1, 2, '2013-08-13 09:13:25', NULL, NULL),
(68, 5, 54, 15, 0, 1, 2, '2013-08-13 09:13:38', NULL, NULL),
(69, 5, 57, 15, 0, 1, 2, '2013-08-13 09:13:53', NULL, NULL),
(70, 5, 59, 15, 0, 1, 2, '2013-08-13 09:34:34', NULL, NULL),
(71, 5, 60, 15, 0, 1, 2, '2013-08-13 09:34:49', NULL, NULL),
(72, 2, 65, 31, 0, 1, 2, '2013-08-14 10:42:45', 2, '2013-08-14 10:44:48'),
(73, 5, 22, 13, 0, 1, 2, '2013-08-14 14:37:21', NULL, NULL),
(74, 5, 38, 13, 0, 1, 2, '2013-08-14 14:37:48', NULL, NULL),
(75, 2, 67, 31, 0, 1, 2, '2013-08-16 10:26:12', NULL, NULL),
(76, 5, 67, 13, 0, 1, 2, '2013-08-16 10:26:59', NULL, NULL),
(77, 2, 68, 24, 0, 1, 2, '2013-08-30 10:10:50', NULL, NULL),
(78, 2, 69, 24, 0, 1, 2, '2013-08-30 10:11:08', NULL, NULL),
(79, 2, 70, 24, 0, 1, 2, '2013-08-30 10:11:22', NULL, NULL),
(80, 5, 68, 8, 0, 1, 2, '2013-08-30 10:11:35', NULL, NULL),
(81, 5, 69, 8, 0, 1, 2, '2013-08-30 10:11:54', NULL, NULL),
(82, 5, 70, 8, 0, 1, 2, '2013-08-30 10:12:10', NULL, NULL),
(83, 2, 71, 31, 0, 1, 2, '2013-09-03 15:12:05', NULL, NULL),
(84, 2, 72, 31, 0, 1, 2, '2013-09-05 22:10:29', NULL, NULL),
(85, 5, 6, 8, 0, 1, 2, '2013-09-12 10:05:20', NULL, NULL),
(86, 5, 1, 12, 0, 1, 2, '2013-09-12 12:05:03', NULL, NULL),
(87, 2, 73, 31, 0, 1, 2, '2013-09-23 13:14:02', NULL, NULL),
(88, 2, 74, 10, 0, 1, 2, '2013-10-01 08:49:32', NULL, NULL),
(89, 2, 75, 8, 0, 1, 2, '2013-10-09 12:08:04', NULL, NULL),
(93, 5, 75, 8, 0, 1, 2, '2013-10-15 13:39:02', NULL, NULL),
(94, 2, 79, 15, 0, 1, 2, '2013-10-16 09:17:08', 2, '2013-10-16 09:18:04'),
(95, 5, 79, 8, 0, 1, 2, '2013-10-16 09:18:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_import`
--

CREATE TABLE IF NOT EXISTS `core_import` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_configsID` int(11) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `fileName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `nocore_doctorID` int(11) unsigned DEFAULT NULL,
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_import`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_lang`
--

CREATE TABLE IF NOT EXISTS `core_lang` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `active` int(1) unsigned NOT NULL,
  `name` varchar(4) COLLATE utf8_bin NOT NULL,
  `pictureURL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `core_lang`
--

INSERT INTO `core_lang` (`id`, `active`, `name`, `pictureURL`) VALUES
(1, 1, 'HU', 'images/public/button/hu.gif');

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_language`
--

CREATE TABLE IF NOT EXISTS `core_language` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `systemType` enum('frontend','backend') COLLATE utf8_bin DEFAULT NULL,
  `core_configsID` int(11) unsigned DEFAULT NULL,
  `fieldName` varchar(100) COLLATE utf8_bin NOT NULL,
  `fieldValue` text COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `autoload` int(1) unsigned DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=262 ;

--
-- A tábla adatainak kiíratása `core_language`
--

INSERT INTO `core_language` (`id`, `systemType`, `core_configsID`, `fieldName`, `fieldValue`, `description`, `autoload`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'frontend', 10, 'labelWaitDr', 'ORVOS:', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-09-10 15:54:47'),
(2, 'frontend', NULL, 'messageCardAccept', 'Kártya elfogadva!', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(3, 'frontend', NULL, 'messageComeIn', 'Kérem fáradjon be!', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(4, 'frontend', NULL, 'messageBarcodeLogged', 'Már be van jelentkezve!', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(5, 'frontend', NULL, 'messageDrNotOpen', 'A kártyához tartozó orvos most nem rendel!', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(6, 'frontend', NULL, 'messageDrNotExist', 'Az Ön orvosa itt nem rendel!', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(7, 'frontend', NULL, 'messageBadWhere', 'Hibás kihez megadás!', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(8, 'frontend', NULL, 'systemName', 'Váró', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(9, 'frontend', NULL, 'templateNotFound', 'Temaplate nem található!', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(10, 'frontend', NULL, 'messageOpenExpired', 'Rendelési idő lejárt!', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(11, 'frontend', NULL, 'marqueeDrSeparator', '--', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(12, 'frontend', NULL, 'marqueeMessageSeparator', '**', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(13, 'frontend', NULL, 'cssNotFound', 'CSS nem található', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(14, 'backend', 10, 'copyright', 'Copyright &copy; dericom', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-09-23 15:46:46'),
(15, 'frontend', 10, 'loginBoxHeaderText', 'BEJELENTKEZÉS', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-09-11 09:05:46'),
(16, 'frontend', 10, 'loginSealNumberLabel', 'PECSÉTSZÁM', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-09-11 09:07:14'),
(17, 'frontend', 10, 'loginNicknameLabel', 'NÉV', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-09-11 09:09:00'),
(18, 'frontend', 10, 'loginPasswordLabel', 'JELSZÓ', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-09-11 09:09:18'),
(19, 'frontend', 10, 'shortSystemName', 'VÁRÓTERMI RENDSZER 1.0', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-09-11 09:03:00'),
(20, 'frontend', NULL, 'startSelectTitle', '- Kérem válasszon -', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(21, 'frontend', NULL, 'loginSealNumberEmpty', 'Nincs pecsétszám kiválasztva!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(22, 'frontend', NULL, 'loginNicknameEmpty', 'Üres felhasználónév!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(23, 'frontend', NULL, 'loginPasswordEmpty', 'Üres jelszó!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(24, 'frontend', NULL, 'loginNicknameNotExist', 'Nincs ilyen felhasználó!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(25, 'frontend', NULL, 'loginPasswordBad', 'Hibás jelszó!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(26, 'frontend', NULL, 'jsNotFound', 'js file nem található!', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(27, 'frontend', NULL, 'messageBadBarcode', 'Ismeretlen kártya formátum!', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(28, 'frontend', NULL, 'orderWhenTitle', 'Rendelési idő: ', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(29, 'backend', 10, 'nocore_whereID', 'Kihez', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:16:02'),
(30, 'backend', 10, 'loginSubmitButtonText', 'BELÉPÉS', NULL, 1, 1, NULL, 2, '2013-09-09 13:51:43', 2, '2013-09-11 09:06:18'),
(31, 'backend', 10, 'nocore_statusID', 'Állapot', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:14:59'),
(32, 'backend', 10, 'call', 'Behívás', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-11-19 19:52:29'),
(33, 'backend', 10, 'inside', 'Ellátás', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:08:35'),
(34, 'backend', 10, 'outside', 'Törlés', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:16:52'),
(35, 'backend', 68, 'title', 'Várakozók', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(36, 'backend', 69, 'title', 'Ellátottak', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(37, 'backend', 64, 'sealNumber', 'Orvos', NULL, NULL, 1, NULL, 2, '2013-11-20 10:20:36', 2, '2013-11-20 10:21:32'),
(38, 'backend', 70, 'title', 'Előjegyzettek', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(39, 'backend', 67, 'nocore_doctor', 'Orvos', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(40, 'backend', 67, 'tajNumber', 'TAJ', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(41, 'backend', 67, 'masterCartonNumber', 'Törzskarton', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(42, 'backend', 67, 'birthDate', 'Születési dátum', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(43, 'backend', 67, 'loginDate', 'Bejelentkezés dátum', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(44, 'backend', 67, 'core_genderID', 'Neme', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(45, 'backend', 10, 'patientID', 'Beteg', NULL, NULL, 1, NULL, 2, '2013-11-20 10:04:37', NULL, NULL),
(46, 'backend', 67, 'tajNumberEmpty', 'Üres TAJ!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(47, 'backend', 67, 'masterCartonNumberEmpty', 'Üres Törzskarton!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(48, 'backend', 67, 'birthDateEmpty', 'Üres Születési dátum!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(49, 'backend', 67, 'loginDateEmpty', 'Üres Bejelentkezés dátum!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(50, 'backend', 67, 'core_genderIDEmpty', 'Üres Neme!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(51, 'backend', 57, 'nocore_doctor_order_dayID', 'Nap', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(52, 'backend', 57, 'nocore_doctor_order_typeID', 'Típus', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(53, 'backend', 57, 'startTime', 'Mettől', '', 0, 1, NULL, NULL, NULL, NULL, NULL),
(54, 'backend', 57, 'stopTime', 'Meddig', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(55, 'backend', 57, 'barcodeStart', 'Vonalkód kezdés', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(56, 'backend', 57, 'barcodeStop', 'Vonalkód végzés', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(57, 'backend', 57, 'doctorIs', 'Orvos', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(58, 'backend', 57, 'nurseIs', 'Nővér', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(59, 'backend', 57, 'nocore_doctor_order_dayIDEmpty', 'Üres Nap!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(60, 'backend', 57, 'startTimeEmpty', 'Üres Mettől!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(61, 'backend', 57, 'stopTimeEmpty', 'Üres Meddig!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(62, 'backend', 10, 'message', 'Üzenet', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(63, 'backend', 10, 'messageEmpty', 'Üres Üzenet!', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:11:09'),
(64, 'backend', 64, 'sealNumberDeputy', 'Helyettes', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(65, 'backend', 10, 'stopDate', 'Meddig', '', 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:24:30'),
(66, 'backend', 64, 'sealNumberEmpty', 'Üres Orvos!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(67, 'backend', 64, 'sealNumberDeputyEmpty', 'Üres Helyettes!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(68, 'backend', 55, 'textValue', 'Szöveg', '', 0, 1, NULL, NULL, NULL, NULL, NULL),
(69, 'backend', 10, 'advertFileNameEmpty', 'Üres Kép!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(70, 'backend', 55, 'textValueEmpty', 'Üres Szöveg!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(71, 'backend', 53, 'sealNumber', 'Pecsétszám', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(72, 'backend', 53, 'licence', 'Liszensz', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(73, 'backend', 10, 'information', 'Információ', '', 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:36:54'),
(74, 'backend', 53, 'nurse', 'Nővér', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(75, 'backend', 53, 'bannerMaximum', 'Banner', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(76, 'backend', 53, 'marqueeMaximum', 'Fényújság', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(77, 'backend', 53, 'statusName', 'Állapot', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(78, 'backend', 53, 'sealNumberEmpty', 'Üres Pecsétszám!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(79, 'backend', 53, 'licenceEmpty', 'Üres Liszensz!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(80, 'backend', 60, 'nocore_clinicID', 'Rendelő', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(81, 'backend', 60, 'nocore_clinicIDEmpty', 'Üres Rendelő!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(82, 'backend', 50, 'sealNumber', 'Orvos', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(83, 'backend', 10, 'nocore_statusIDEmpty', 'Üres állapot!', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:15:33'),
(84, 'backend', 20, 'fgcolor', 'Előtérszín', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(85, 'backend', 20, 'bgcolor', 'Háttérszín', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(86, 'backend', 20, 'path', 'Útvonal', '', 0, 1, NULL, NULL, NULL, NULL, NULL),
(87, 'backend', 17, 'title', 'Megnevezés', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(88, 'backend', 17, 'tplName', 'Template', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(89, 'backend', 17, 'titleEmpty', 'Üres Megnevezés!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(90, 'backend', 3, 'name', 'Csoport', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(91, 'backend', 3, 'actionCount', 'User', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(92, 'backend', 10, 'rightsCount', 'Jog', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:21:09'),
(93, 'backend', 3, 'nameEmpty', 'Üres Csoport', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(94, 'backend', 10, 'core_groupsID', 'Csoport', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:35:33'),
(95, 'backend', 10, 'core_groupsIDEmpty', 'Üres Csoport!', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:35:41'),
(96, 'backend', 61, 'core_supportID', 'Támogatás', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(97, 'backend', 61, 'downloadURL', 'Melléklet', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(98, 'backend', 61, 'core_supportIDEmpty', 'Üres támogatás!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(99, 'backend', 1, 'core_userstitleID', 'Titulus', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(100, 'backend', 1, 'surname', 'Vezetéknév', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(101, 'backend', 1, 'forename', 'Keresztnév', '', 0, 1, NULL, NULL, NULL, NULL, NULL),
(102, 'backend', 1, 'nickname', 'Becenév', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(103, 'backend', 1, 'password', 'Jelszó', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(104, 'backend', 1, 'password2', 'Jelszó megerősítés', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(105, 'backend', 1, 'oldpassword', 'Régi jelszó', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(106, 'backend', 1, 'pictureURL', 'Kép', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(107, 'backend', 1, 'activationWhen', 'Aktiválva', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(108, 'backend', 1, 'newsletter', 'Hirlevél', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(109, 'backend', 1, 'myData', 'Adataim', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(110, 'backend', 10, 'passchange', 'Jelszóváltás', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-10-02 10:37:49'),
(111, 'backend', 1, 'registration', 'Regisztráció', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(112, 'backend', 1, 'nicknameEmpty', 'Üres Becenév!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(113, 'backend', 1, 'passwordEmpty', 'Üres Jelszó!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(114, 'backend', 1, 'password2Empty', 'Üres Jelszó megerősítés!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(115, 'backend', 1, 'passwordPassword', 'Hibás jelszó megerősítés!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(116, 'backend', 1, 'passwordOldEmpty', 'Üres Régi jelszó!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(117, 'backend', 1, 'surnameEmpty', 'Üres Vezetéknév!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(118, 'backend', 1, 'forenameEmpty', 'Üres Keresznév!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(119, 'backend', 10, 'emailEmpty', 'Üres Email!', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:01:36'),
(120, 'backend', 10, 'emailDuplicate', 'Már van ilyen Email!', NULL, 0, 1, NULL, NULL, NULL, 2, '2013-11-19 20:01:56'),
(121, 'backend', 1, 'notFoundUser', 'Nem létező Rövidnév/Jelszó!', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL),
(122, 'backend', 10, 'systemType', 'Rendszertípus', NULL, NULL, 1, NULL, 2, '2013-09-05 22:40:41', 2, '2013-11-20 09:31:26'),
(123, 'backend', 10, 'fieldType', 'Típus', NULL, NULL, 1, NULL, 2, '2013-09-05 22:41:35', 2, '2013-11-19 20:03:32'),
(124, 'backend', 10, 'fieldName', 'Megnevezés', NULL, NULL, 1, NULL, 2, '2013-09-05 22:41:59', 2, '2013-11-19 20:02:54'),
(125, 'backend', 10, 'fieldValue', 'Érték', NULL, NULL, 1, NULL, 2, '2013-09-05 22:42:18', 2, '2013-11-19 20:04:14'),
(126, 'backend', 10, 'autoload', 'Autobetöltés', NULL, NULL, 1, NULL, 2, '2013-09-05 22:43:07', 2, '2013-11-19 19:51:40'),
(127, 'backend', 10, 'systemTypeEmpty', 'Üres Rendszertípus!', NULL, NULL, 1, NULL, 2, '2013-09-05 22:43:39', 2, '2013-11-20 09:31:16'),
(128, 'backend', 10, 'fieldTypeEmpty', 'Üres Típus!', NULL, NULL, 1, NULL, 2, '2013-09-05 22:44:46', 2, '2013-11-19 20:03:18'),
(129, 'backend', 10, 'fieldNameEmpty', 'Üres Megnevezés!', NULL, NULL, 1, NULL, 2, '2013-09-05 22:46:17', 2, '2013-11-19 20:02:37'),
(130, 'backend', 10, 'fieldValueEmpty', 'Üres Érték!', NULL, NULL, 1, NULL, 2, '2013-09-05 22:46:41', 2, '2013-11-19 20:04:03'),
(131, 'backend', 22, 'actionCount', 'Intézkedés', NULL, NULL, 1, NULL, 2, '2013-09-05 22:51:31', NULL, NULL),
(132, 'backend', 22, 'core_support_topicID', 'Téma', NULL, NULL, 1, NULL, 2, '2013-09-05 22:51:59', NULL, NULL),
(133, 'backend', 22, 'core_support_typeID', 'Típus', NULL, NULL, 1, NULL, 2, '2013-09-05 22:52:21', NULL, NULL),
(134, 'backend', 22, 'core_support_statusID', 'Állapot', NULL, NULL, 1, NULL, 2, '2013-09-05 22:52:42', NULL, NULL),
(135, 'backend', 22, 'planTime', 'Tervezett idő', NULL, NULL, 1, NULL, 2, '2013-09-05 22:53:06', NULL, NULL),
(136, 'backend', 22, 'realTime', 'Valós idő', NULL, NULL, 1, NULL, 2, '2013-09-05 22:53:26', NULL, NULL),
(137, 'backend', 22, 'comment', 'Megjegyzés', NULL, NULL, 1, NULL, 2, '2013-09-05 22:55:35', NULL, NULL),
(138, 'backend', 22, 'insertUserID', 'Rögzítő', NULL, NULL, 1, NULL, 2, '2013-09-05 22:56:01', NULL, NULL),
(139, 'backend', 10, 'nameEmpty', 'Üres Megnevezés!', NULL, NULL, 1, NULL, 2, '2013-09-05 22:56:31', 2, '2013-11-19 20:50:32'),
(140, 'backend', 22, 'core_support_topicIDEmpty', 'Üres Téma!', NULL, NULL, 1, NULL, 2, '2013-09-05 22:57:05', NULL, NULL),
(141, 'backend', 22, 'core_support_statusIDEmpty', 'Üres Állapot!', NULL, NULL, 1, NULL, 2, '2013-09-05 22:57:32', NULL, NULL),
(142, 'backend', 38, 'insertName', 'Kitől', NULL, NULL, 1, NULL, 2, '2013-09-05 23:24:50', NULL, NULL),
(143, 'backend', 38, 'targetUserID', 'Kinek', NULL, NULL, 1, NULL, 2, '2013-09-05 23:25:14', 2, '2013-10-07 16:06:10'),
(144, 'backend', 38, 'targetGroupID', 'Kiknek', NULL, NULL, 1, NULL, 2, '2013-09-05 23:25:44', NULL, NULL),
(145, 'backend', 38, 'subject', 'Tárgy', NULL, NULL, 1, NULL, 2, '2013-09-05 23:26:24', NULL, NULL),
(146, 'backend', 10, 'actionCount', 'Mennyiség', NULL, NULL, 1, NULL, 2, '2013-11-19 19:44:58', NULL, NULL),
(147, 'backend', 38, 'readWhen', 'Olvasva', NULL, NULL, 1, NULL, 2, '2013-09-05 23:27:12', NULL, NULL),
(148, 'backend', 38, 'copy', 'Válasz', NULL, NULL, 1, NULL, 2, '2013-09-05 23:27:37', NULL, NULL),
(149, 'backend', 38, 'answer', 'Válasz erre', NULL, NULL, 1, NULL, 2, '2013-09-05 23:27:55', NULL, NULL),
(150, 'backend', 38, 'subjectEmpty', 'Üres Tárgy!', NULL, NULL, 1, NULL, 2, '2013-09-05 23:28:23', NULL, NULL),
(151, 'backend', 10, 'viewButtonText', 'Megtekintés', NULL, 1, 1, NULL, 2, '2013-09-10 12:31:44', 2, '2013-09-10 12:48:34'),
(152, 'frontend', 10, 'labelWaitNurse', 'NŐVÉR:', NULL, 1, 1, NULL, 2, '2013-09-10 15:54:02', 2, '2013-09-19 15:08:43'),
(153, 'backend', 10, 'deleteGroup', 'Törlés', NULL, NULL, 1, NULL, 2, '2013-09-16 14:41:19', 2, '2013-10-08 13:06:52'),
(154, 'backend', 10, 'topMessage', '//A Honlap feltőltése folyamatban ezért 1-2 funkció még nem működik.', NULL, 1, 1, NULL, 2, '2013-09-23 15:24:00', 2, '2013-09-23 15:36:21'),
(155, 'backend', 10, 'list', 'List', NULL, NULL, 1, NULL, 2, '2013-09-23 15:48:57', NULL, NULL),
(156, 'backend', 10, 'add', 'Felvitel', NULL, NULL, 1, NULL, 2, '2013-09-23 15:49:28', NULL, NULL),
(157, 'backend', 10, 'copy', 'Másolás', NULL, NULL, 1, NULL, 2, '2013-09-23 15:55:32', NULL, NULL),
(158, 'backend', 10, 'edit', 'Módosítás', NULL, NULL, 1, NULL, 2, '2013-09-23 15:58:07', NULL, NULL),
(159, 'backend', 10, 'view', 'Megtekintés', NULL, NULL, 1, NULL, 2, '2013-09-23 15:59:04', NULL, NULL),
(160, 'backend', 10, 'delete', 'Törlés', NULL, NULL, 1, NULL, 2, '2013-09-23 16:00:40', NULL, NULL),
(161, 'backend', 10, 'first', 'Első', NULL, NULL, 1, NULL, 2, '2013-09-23 16:02:21', 2, '2013-09-23 16:04:13'),
(162, 'backend', 10, 'prev', 'Elöző oldal', NULL, NULL, 1, NULL, 2, '2013-09-23 16:05:21', NULL, NULL),
(163, 'backend', 10, 'prevItem', 'Elöző tétel', NULL, NULL, 1, NULL, 2, '2013-09-23 16:05:34', NULL, NULL),
(164, 'backend', 10, 'next', 'Következő oldal', NULL, NULL, 1, NULL, 2, '2013-09-23 16:07:58', NULL, NULL),
(165, 'backend', 10, 'nextItem', 'Következő tétel', NULL, NULL, 1, NULL, 2, '2013-09-23 16:08:12', NULL, NULL),
(166, 'backend', 10, 'last', 'Utolsó', NULL, NULL, 1, NULL, 2, '2013-09-23 16:09:14', NULL, NULL),
(167, 'backend', 10, 'layoutfull', 'Teljes', NULL, NULL, 1, NULL, 2, '2013-09-23 16:10:10', NULL, NULL),
(168, 'backend', 10, 'layoutmini', 'Behívó', NULL, NULL, 1, NULL, 2, '2013-09-23 16:10:32', NULL, NULL),
(169, 'backend', 10, 'layoutsetup', 'Beállítások', NULL, NULL, 1, NULL, 2, '2013-09-23 16:10:54', NULL, NULL),
(170, 'backend', 10, 'search', 'Keresés', NULL, NULL, 1, NULL, 2, '2013-09-23 16:12:03', NULL, NULL),
(171, 'backend', 10, 'searchOff', 'Összes', NULL, NULL, 1, NULL, 2, '2013-09-23 16:14:28', NULL, NULL),
(172, 'backend', 10, 'yes', 'Igen', NULL, NULL, 1, NULL, 2, '2013-09-23 16:15:25', NULL, NULL),
(173, 'backend', 10, 'no', 'Nem', NULL, NULL, 1, NULL, 2, '2013-09-23 16:15:37', NULL, NULL),
(174, 'backend', 10, 'save', 'Mentés', NULL, NULL, 1, NULL, 2, '2013-09-23 16:17:50', NULL, NULL),
(175, 'backend', 10, 'saveNoBack', 'Mentés és maradok', NULL, NULL, 1, NULL, 2, '2013-09-23 16:18:17', NULL, NULL),
(176, 'backend', 10, 'back', 'Vissza', NULL, NULL, 1, NULL, 2, '2013-09-23 16:18:45', NULL, NULL),
(177, 'backend', 10, 'noRecord', 'Nincs találat!', NULL, NULL, 1, NULL, 2, '2013-09-23 16:22:27', NULL, NULL),
(178, 'backend', 10, 'noRights', 'Nincs jogosultság!', NULL, NULL, 1, NULL, 2, '2013-09-23 16:23:52', NULL, NULL),
(179, 'backend', 10, 'order', 'Rendezettség', NULL, NULL, 1, NULL, 2, '2013-09-23 16:24:29', NULL, NULL),
(180, 'backend', 10, 'logout', 'Kijelentkezés', NULL, NULL, 1, NULL, 2, '2013-09-23 16:25:38', NULL, NULL),
(181, 'backend', 10, 'description', 'Leírás', NULL, NULL, 1, NULL, 2, '2013-09-23 16:26:17', NULL, NULL),
(182, 'backend', 10, 'item', 'Tétel', NULL, NULL, 1, NULL, 2, '2013-09-23 20:38:58', NULL, NULL),
(183, 'backend', 10, 'page', 'Oldal', NULL, NULL, 1, NULL, 2, '2013-09-23 20:39:58', NULL, NULL),
(184, 'backend', 10, 'myDataChange', 'Adataim', NULL, NULL, 1, NULL, 2, '2013-09-23 20:41:53', NULL, NULL),
(185, 'backend', 10, 'passwordChange', 'Jelszóváltás', NULL, NULL, 1, NULL, 2, '2013-09-23 20:42:39', NULL, NULL),
(186, 'backend', 10, 'zoomin', 'Kicsi', NULL, NULL, 1, NULL, 2, '2013-09-23 20:47:40', 2, '2013-10-04 08:58:10'),
(187, 'backend', 10, 'zoomout', 'Nagy', NULL, NULL, 1, NULL, 2, '2013-09-23 20:49:22', NULL, NULL),
(188, 'backend', 10, 'zoomClose', 'Bezárás', NULL, NULL, 1, NULL, 2, '2013-09-23 20:49:42', NULL, NULL),
(189, 'backend', 10, 'itemSelect', '- Kérem válasszon -', NULL, NULL, 1, NULL, 2, '2013-09-23 21:04:30', NULL, NULL),
(190, 'backend', 10, 'insertWhen', 'Rögzítve', NULL, NULL, 1, NULL, 2, '2013-09-23 21:11:15', NULL, NULL),
(191, 'backend', 10, 'newItem', 'Új tétel', NULL, NULL, 1, NULL, 2, '2013-09-23 21:13:35', NULL, NULL),
(192, 'backend', 10, 'topLogo', '//Backend', NULL, NULL, 1, NULL, 2, '2013-09-23 21:23:13', 2, '2013-09-23 21:29:03'),
(193, 'backend', 10, 'sec', 'másodperc', NULL, NULL, 1, NULL, 2, '2013-09-23 21:24:47', 2, '2013-09-23 21:43:09'),
(194, 'backend', 10, 'system', 'VÁRÓTERMI RENDSZER 1.0', NULL, NULL, 1, NULL, 2, '2013-09-23 22:23:12', 2, '2013-09-24 11:15:43'),
(195, 'backend', 55, 'sequenceId', 'Sorrend', NULL, NULL, 1, NULL, 2, '2013-09-24 09:41:18', NULL, NULL),
(196, 'backend', 10, 'core_advert_advertiserID', 'Hírdető', NULL, NULL, 1, NULL, 2, '2013-09-24 12:57:12', 2, '2013-11-19 19:54:57'),
(197, 'backend', 10, 'core_advert_zoneID', 'Zóna', NULL, NULL, 1, NULL, 2, '2013-09-24 12:59:14', 2, '2013-11-19 19:56:22'),
(198, 'backend', 10, 'activateWhen', 'Mettől', NULL, NULL, 1, NULL, 2, '2013-09-24 12:59:45', 2, '2013-11-19 19:49:55'),
(199, 'backend', 10, 'deactivateWhen', 'Meddig', NULL, NULL, 1, NULL, 2, '2013-09-24 12:59:58', 2, '2013-11-19 19:50:07'),
(200, 'backend', 10, 'playMaxNum', 'Maximális lejátszás', NULL, NULL, 1, NULL, 2, '2013-09-24 13:01:06', 2, '2013-11-19 20:19:24'),
(201, 'backend', 10, 'playCounter', 'Lejátszott', NULL, NULL, 1, NULL, 2, '2013-09-24 13:01:25', 2, '2013-11-19 20:18:53'),
(202, 'backend', 10, 'clickMaxNum', 'Maximális klikkelés', NULL, NULL, 1, NULL, 2, '2013-09-24 13:01:49', 2, '2013-11-19 19:54:01'),
(203, 'backend', 10, 'clickCounter', 'Klikkeltek', NULL, NULL, 1, NULL, 2, '2013-09-24 13:02:12', 2, '2013-11-19 19:53:18'),
(204, 'backend', 10, 'priceMax', 'Maximálisan költhető', NULL, NULL, 1, NULL, 2, '2013-09-24 13:02:38', 2, '2013-11-19 20:20:28'),
(205, 'backend', 10, 'priceActual', 'Elköltött', NULL, NULL, 1, NULL, 2, '2013-09-24 13:02:57', 2, '2013-11-19 20:20:05'),
(206, 'backend', 10, 'address', 'Utca, házszám', NULL, NULL, 1, NULL, 2, '2013-09-24 13:59:15', 2, '2013-11-19 20:34:36'),
(207, 'backend', 13, 'contactName', 'Kapcsolattartó', NULL, NULL, 1, NULL, 2, '2013-09-24 13:59:35', NULL, NULL),
(208, 'backend', 13, 'phone', 'Telefon', NULL, NULL, 1, NULL, 2, '2013-09-24 13:59:49', NULL, NULL),
(209, 'backend', 13, 'fax', 'Fax', NULL, NULL, 1, NULL, 2, '2013-09-24 14:00:01', 2, '2013-09-24 14:00:10'),
(210, 'backend', 13, 'mobile', 'Mobil', NULL, NULL, 1, NULL, 2, '2013-09-24 14:00:25', NULL, NULL),
(211, 'backend', 10, 'email', 'Email', NULL, NULL, 1, NULL, 2, '2013-09-24 14:00:40', 2, '2013-11-19 20:01:18'),
(212, 'backend', 13, 'website', 'Weboldal', NULL, NULL, 1, NULL, 2, '2013-09-24 14:00:55', NULL, NULL),
(213, 'backend', 10, 'nameDuplicate', 'Már van ilyen!', NULL, NULL, 1, NULL, 2, '2013-09-24 12:56:20', 2, '2013-11-19 20:13:03'),
(214, 'backend', 10, 'advertFileName', 'Kép', NULL, NULL, 1, NULL, 2, '2013-09-24 14:17:35', NULL, NULL),
(215, 'backend', 6, 'textValue', 'Szöveges tartalom', NULL, NULL, 1, NULL, 2, '2013-09-24 14:18:08', NULL, NULL),
(216, 'backend', 6, 'jumpURL', 'Link', NULL, NULL, 1, NULL, 2, '2013-09-24 14:18:24', NULL, NULL),
(217, 'backend', 6, 'core_advert_groupID', 'Reklám csoport', NULL, NULL, 1, NULL, 2, '2013-09-24 14:19:29', NULL, NULL),
(218, 'backend', 6, 'core_advert_campaignID', 'Kampány', NULL, NULL, 1, NULL, 2, '2013-09-24 14:19:51', NULL, NULL),
(219, 'backend', 6, 'core_advert_sizeID', 'Méret', NULL, NULL, 1, NULL, 2, '2013-09-24 14:20:06', NULL, NULL),
(220, 'backend', 6, 'core_advert_sourceID', 'Forrás', NULL, NULL, 1, NULL, 2, '2013-09-24 14:20:22', NULL, NULL),
(221, 'backend', 10, 'sizeWidth', 'Szélesség', NULL, NULL, 1, NULL, 2, '2013-09-24 14:20:42', 2, '2013-11-19 20:23:02'),
(222, 'backend', 10, 'sizeHeight', 'Magasság', NULL, NULL, 1, NULL, 2, '2013-09-24 14:20:57', 2, '2013-11-19 20:22:45'),
(223, 'backend', 6, 'changeTime', 'Csere idő', NULL, NULL, 1, NULL, 2, '2013-09-24 14:21:20', 2, '2013-11-05 09:22:53'),
(224, 'backend', 10, 'core_configsIDEmpty', 'Üres Modul!', NULL, NULL, 1, NULL, 2, '2013-09-24 14:28:51', 2, '2013-11-19 19:57:16'),
(225, 'backend', 2, 'core_usersIDEmpty', 'Üres Felhasználó!', NULL, NULL, 1, NULL, 2, '2013-09-24 14:29:23', NULL, NULL),
(226, 'backend', 2, 'core_usersID', 'Felhasználó', NULL, NULL, 1, NULL, 2, '2013-09-24 14:29:53', 2, '2013-09-24 14:30:40'),
(227, 'backend', 10, 'import', 'Import', NULL, 1, 1, NULL, 2, '2013-09-30 10:48:03', NULL, NULL),
(228, 'backend', 10, 'fileNameEmpty', 'Üres Fájlnév!', NULL, NULL, 1, NULL, 2, '2013-09-30 11:03:52', 2, '2013-11-20 08:46:27'),
(229, 'backend', 67, 'importOK', 'Beteg adatok importja sikeres!', NULL, NULL, 1, NULL, 2, '2013-09-30 15:18:45', 2, '2013-09-30 15:19:15'),
(230, 'backend', 67, 'importBAD', 'Beteg adatok importja sikertelen!', NULL, NULL, 1, NULL, 2, '2013-09-30 15:58:52', NULL, NULL),
(231, 'backend', 10, 'fileName', 'Fájlnév', NULL, NULL, 1, NULL, 2, '2013-10-01 08:53:24', 2, '2013-11-20 08:46:12'),
(232, 'backend', 10, 'core_configsID', 'Modul', NULL, NULL, 1, NULL, 2, '2013-10-01 08:55:02', 2, '2013-11-19 19:57:02'),
(233, 'backend', 10, 'mydata', 'Adataim', NULL, NULL, 1, NULL, 2, '2013-10-02 08:36:01', 2, '2013-10-02 08:38:17'),
(234, 'backend', 1, 'oldpasswordEmpty', 'Üres Régi jelszó!', NULL, NULL, 1, NULL, 2, '2013-10-02 09:45:25', NULL, NULL),
(235, 'backend', 1, 'oldpasswordBad', 'Hibás Régi jelszó!', NULL, NULL, 1, NULL, 2, '2013-10-02 10:28:58', NULL, NULL),
(236, 'backend', 10, 'nocore_doctorID', 'Orvos', NULL, NULL, 1, NULL, 2, '2013-11-19 19:35:40', NULL, NULL),
(237, 'backend', 10, 'pdf', 'PDF', NULL, NULL, 1, NULL, 2, '2013-10-09 12:27:31', NULL, NULL),
(238, 'backend', 10, 'calendarToday', 'Ma', NULL, NULL, 1, NULL, 2, '2013-10-14 15:43:12', NULL, NULL),
(239, 'backend', 10, 'nocore_patientID', 'Beteg', NULL, NULL, 1, NULL, 2, '2013-10-15 13:21:22', 2, '2013-11-19 20:18:02'),
(240, 'backend', 75, 'startWhen', 'Mettől', NULL, NULL, 1, NULL, 2, '2013-10-15 13:21:55', NULL, NULL),
(241, 'backend', 75, 'stopWhen', 'Meddig', NULL, NULL, 1, NULL, 2, '2013-10-15 13:22:44', NULL, NULL),
(242, 'backend', 10, 'nocore_doctorIDEmpty', 'Üres Orvos!', NULL, NULL, 1, NULL, 2, '2013-11-19 19:35:27', NULL, NULL),
(243, 'backend', 10, 'week', 'Hét', NULL, NULL, 1, NULL, 2, '2013-10-15 14:03:51', NULL, NULL),
(244, 'backend', 75, 'core_calendar_typeID', 'Típus', NULL, NULL, 1, NULL, 2, '2013-10-16 09:15:46', NULL, NULL),
(245, 'backend', 10, 'id', 'Azonosító', NULL, NULL, 1, NULL, 2, '2013-10-16 09:22:28', 2, '2013-11-19 20:06:41'),
(246, 'backend', 10, 'name', 'Megnevezés', NULL, NULL, 1, NULL, 2, '2013-11-19 20:48:14', NULL, NULL),
(247, 'backend', 75, 'title', 'Bejegyzés', NULL, NULL, 1, NULL, 2, '2013-10-16 13:09:43', 2, '2013-10-16 13:13:08'),
(248, 'backend', 10, 'startDate', 'Időpont', NULL, NULL, 1, NULL, 2, '2013-10-17 08:32:02', 2, '2013-11-19 20:23:57'),
(249, 'backend', 10, 'zipcode', 'Irányítőszám', NULL, NULL, 1, NULL, 2, '2013-10-21 12:07:09', 2, '2013-11-19 20:25:47'),
(250, 'backend', 10, 'settlement', 'Település', NULL, NULL, 1, NULL, 2, '2013-10-21 12:07:34', 2, '2013-11-19 20:22:08'),
(251, 'backend', 53, 'phone', 'Telefon', NULL, NULL, 1, NULL, 2, '2013-10-21 12:08:39', NULL, NULL),
(252, 'backend', 10, 'core_localserverIDEmpty', 'Üres Szerver!', NULL, NULL, 1, NULL, 2, '2013-11-04 20:57:08', NULL, NULL),
(253, 'backend', 10, 'min', 'perc', NULL, NULL, 1, NULL, 2, '2013-11-04 20:57:08', NULL, NULL),
(254, 'backend', 10, 'dateViewFormat', '(éé-hh-nn)', NULL, NULL, 1, NULL, 2, '2013-11-05 08:37:40', NULL, NULL),
(255, 'backend', 10, 'piece', 'darab', NULL, NULL, 1, NULL, 2, '2013-11-05 08:40:04', NULL, NULL),
(256, 'backend', 10, 'timeViewFormat', '(óó:pp:mm)', NULL, NULL, 1, NULL, 2, '2013-11-05 08:45:04', 2, '2013-11-05 08:46:30'),
(257, 'backend', 10, 'weekly', 'Heti', NULL, NULL, 1, NULL, 2, '2013-11-06 10:36:03', NULL, NULL),
(258, 'backend', 10, 'daily', 'Napi', NULL, NULL, 1, NULL, 2, '2013-11-06 10:36:58', NULL, NULL),
(259, 'backend', 53, 'patientTime', 'Páciens/Idő', NULL, NULL, 1, NULL, 2, '2013-11-11 11:38:43', 2, '2013-11-11 11:41:03'),
(260, 'backend', 53, 'alwaysView', 'Midig látható', NULL, NULL, 1, NULL, 2, '2013-11-19 08:55:16', NULL, NULL),
(261, 'backend', 10, 'core_localserverID', 'Szerver', NULL, NULL, 1, NULL, 2, '2013-11-19 15:57:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_localserver`
--

CREATE TABLE IF NOT EXISTS `core_localserver` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- A tábla adatainak kiíratása `core_localserver`
--

INSERT INTO `core_localserver` (`id`, `name`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(2, '002szentend201310302000HU', NULL, 1, 3, '2013-10-30 17:49:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_marquee`
--

CREATE TABLE IF NOT EXISTS `core_marquee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `message` varchar(500) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `core_marquee`
--

INSERT INTO `core_marquee` (`id`, `name`, `message`, `description`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, '1.', 'Praxismédia Informatikai Kft. - REKLÁMFELÜLET BÉRLÉS! - Telefon: +36 (1) 599-9740 Mobil: +36 (70) 339-3692 Web: http://praxismedia.hu', '', 1, NULL, NULL, NULL, 3, '2013-10-18 12:10:32');

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_messagewall`
--

CREATE TABLE IF NOT EXISTS `core_messagewall` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `targetUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `targetGroupID` int(11) unsigned DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `description` longtext COLLATE utf8_bin NOT NULL,
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `isReadWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_messagewall`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_support`
--

CREATE TABLE IF NOT EXISTS `core_support` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `core_configsID` int(11) unsigned DEFAULT NULL,
  `core_support_topicID` int(2) unsigned DEFAULT '0',
  `core_support_typeID` int(2) unsigned DEFAULT '0',
  `planTime` int(11) unsigned DEFAULT NULL,
  `realTime` int(11) unsigned DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `nocore_doctorID` int(11) unsigned DEFAULT NULL,
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  `comment` longtext COLLATE utf8_bin,
  `core_support_statusID` int(2) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `isReadWhen` datetime DEFAULT NULL,
  `isReadUserID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_support`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_support_action`
--

CREATE TABLE IF NOT EXISTS `core_support_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_supportID` int(11) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT '',
  `planTime` int(11) unsigned DEFAULT NULL,
  `realTime` int(11) unsigned DEFAULT NULL,
  `downloadURL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `nocore_doctorID` int(11) unsigned DEFAULT NULL,
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `langID` int(2) unsigned NOT NULL DEFAULT '0',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `isReadWhen` datetime DEFAULT NULL,
  `isReadUserID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_support_action`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_support_status`
--

CREATE TABLE IF NOT EXISTS `core_support_status` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `langID` int(2) unsigned NOT NULL DEFAULT '0',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- A tábla adatainak kiíratása `core_support_status`
--

INSERT INTO `core_support_status` (`id`, `name`, `description`, `active`, `langID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'Bejelentve', NULL, 1, 1, 2, '2012-03-30 15:59:55', NULL, NULL),
(2, 'Folyamatban', NULL, 1, 1, 2, '2012-03-30 16:00:09', NULL, NULL),
(3, 'Továbbítva', NULL, 1, 1, 2, '2012-03-30 16:00:22', NULL, NULL),
(4, 'Javítva', NULL, 1, 1, 2, '2012-03-30 16:00:31', NULL, NULL),
(5, 'Javítva és értesítve', NULL, 1, 1, 2, '2012-03-30 16:01:07', NULL, NULL),
(6, 'Lezárva', NULL, 1, 1, 2, '2012-03-30 16:01:22', NULL, NULL),
(7, 'Tervezett', NULL, 1, 1, 2, '2012-03-30 16:01:33', NULL, NULL),
(8, 'Törölve', NULL, 1, 1, 2, '2012-03-30 16:01:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_support_topic`
--

CREATE TABLE IF NOT EXISTS `core_support_topic` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `langID` int(2) unsigned NOT NULL DEFAULT '0',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- A tábla adatainak kiíratása `core_support_topic`
--

INSERT INTO `core_support_topic` (`id`, `name`, `description`, `active`, `langID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'Hiba', NULL, 1, 1, 2, '2012-03-30 15:58:36', NULL, NULL),
(2, 'Bővítés', NULL, 1, 1, 2, '2012-03-30 15:59:12', NULL, NULL),
(3, 'Módosítás', NULL, 1, 1, 2, '2012-03-30 15:59:24', NULL, NULL),
(4, 'Érdeklődés', NULL, 1, 0, 2, '2013-08-02 12:39:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_support_type`
--

CREATE TABLE IF NOT EXISTS `core_support_type` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `langID` int(2) unsigned NOT NULL DEFAULT '0',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- A tábla adatainak kiíratása `core_support_type`
--

INSERT INTO `core_support_type` (`id`, `name`, `description`, `active`, `langID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'Frontend', NULL, 1, 1, 2, '2012-03-30 16:02:10', NULL, NULL),
(2, 'Backend', NULL, 1, 1, 2, '2012-03-30 16:02:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_themes`
--

CREATE TABLE IF NOT EXISTS `core_themes` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `CSSFile` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `path` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bgcolor` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `fgcolor` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `isReadWhen` datetime DEFAULT NULL,
  `isReadUserID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=17 ;

--
-- A tábla adatainak kiíratása `core_themes`
--

INSERT INTO `core_themes` (`id`, `name`, `CSSFile`, `path`, `bgcolor`, `fgcolor`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`, `isReadWhen`, `isReadUserID`) VALUES
(1, 'black', NULL, 'edgablack', '#000000', '#FFFFFF', NULL, 1, 2, '2010-09-24 00:41:33', 2, '2010-09-27 14:08:51', '2010-09-24 00:41:33', 2),
(2, 'white', NULL, 'edgawhite', '#FFFFFF', '#000000', NULL, 1, 2, '2010-09-24 00:41:53', 2, '2010-09-27 14:16:18', '2010-09-24 00:41:53', 2),
(3, 'silver', NULL, 'edgasilver', '#C0C0C0', '#000000', NULL, 1, 2, '2010-09-24 00:42:20', 2, '2010-09-27 14:17:10', '2010-09-24 00:42:20', 2),
(4, 'gray', NULL, 'edgagray', '#808080', '#FFFFFF', NULL, 1, 2, '2010-09-24 00:55:14', 2, '2010-09-27 14:18:47', '2010-09-24 00:55:14', 2),
(5, 'maroon', NULL, 'edgamaroon', '#800000', '#FFFFFF', NULL, 1, 2, '2010-09-24 00:55:45', 2, '2010-09-27 14:18:30', '2010-09-24 00:55:45', 2),
(6, 'purple', NULL, 'edgapurple', '#800080', '#FFFFFF', NULL, 1, 2, '2010-09-24 00:55:57', 2, '2010-09-27 14:19:23', '2010-09-24 00:55:57', 2),
(7, 'fuchsia', NULL, 'edgafuchsia', '#FF00FF', '#FFFFFF', NULL, 1, 2, '2010-09-26 14:09:10', 2, '2010-09-27 14:21:51', '2010-09-26 14:09:10', 2),
(8, 'green', NULL, 'edgagreen', '#008000', '#FFFFFF', NULL, 1, 2, '2010-09-26 14:09:41', 2, '2010-09-27 14:22:20', '2010-09-26 14:09:41', 2),
(9, 'lime', NULL, 'edgalime', '#00FF00', '#000000', NULL, 1, 2, '2010-09-26 14:21:39', 2, '2010-09-27 14:23:00', '2010-09-26 14:21:39', 2),
(10, 'olive', 'admin/themes/edgaolive/css/admin.css', 'edgaolive', '#808000', '#FFFFFF', NULL, 1, 2, '2010-09-26 15:20:25', 2, '2010-09-27 14:23:30', '2010-09-26 15:20:25', 2),
(11, 'yellow', NULL, 'edgayellow', '#FFFF00', '#000000', NULL, 1, 2, '2010-09-26 22:24:13', 2, '2010-09-27 14:24:10', '2010-09-26 22:24:13', 2),
(12, 'navy', NULL, 'edganavy', '#000080', '#FFFFFF', NULL, 1, 2, '2010-09-26 23:22:00', 2, '2010-09-27 14:24:54', '2010-09-26 23:22:00', 2),
(13, 'blue', NULL, 'edgablue', '#0000FF', '#FFFFFF', NULL, 1, 2, '2010-09-27 13:12:59', 2, '2010-09-27 14:25:26', '2010-09-27 13:12:59', 2),
(14, 'teal', NULL, 'edgateal', '#008080', '#FFFFFF', NULL, 1, 2, '2010-09-27 14:54:08', NULL, NULL, '2010-09-27 14:54:08', 2),
(15, 'aqua', NULL, 'edgaaqua', '#00FFFF', '#000000', NULL, 1, 2, '2010-09-27 16:26:35', NULL, NULL, '2010-09-27 16:26:35', 2),
(16, 'orange', NULL, 'edgaorange', '#FFA500', '#000000', NULL, 1, 2, '2010-09-27 17:09:27', 2, '2013-09-02 12:43:53', '2010-09-27 17:09:27', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_users`
--

CREATE TABLE IF NOT EXISTS `core_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_userstitleID` int(4) unsigned DEFAULT NULL,
  `surname` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `forename` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(40) COLLATE utf8_bin NOT NULL,
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `description` longtext COLLATE utf8_bin,
  `lastLoginWhen` datetime DEFAULT NULL,
  `lastLogoutWhen` datetime DEFAULT NULL,
  `activationCode` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `regmailWhen` datetime DEFAULT NULL,
  `activationWhen` datetime DEFAULT NULL,
  `core_groupsID` int(11) unsigned NOT NULL DEFAULT '3',
  `pictureURL` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `newsletter` int(1) DEFAULT '0',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `isReadWhen` datetime DEFAULT NULL,
  `isReadUserID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- A tábla adatainak kiíratása `core_users`
--

INSERT INTO `core_users` (`id`, `core_userstitleID`, `surname`, `forename`, `nickname`, `password`, `email`, `core_localserverID`, `active`, `description`, `lastLoginWhen`, `lastLogoutWhen`, `activationCode`, `regmailWhen`, `activationWhen`, `core_groupsID`, `pictureURL`, `newsletter`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`, `isReadWhen`, `isReadUserID`) VALUES
(1, NULL, NULL, NULL, 'Guest', '', '', NULL, 1, NULL, NULL, '2013-10-28 12:19:13', NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, 2, '2012-01-24 11:06:15', '2006-03-28 23:38:24', 2),
(2, NULL, 'Szabó', 'Sándor', 'SzSanyi', 'phoenix', 'rodnas@uw.hu', NULL, 1, NULL, '2013-09-02 13:09:13', '2013-10-31 14:58:32', NULL, NULL, NULL, 2, NULL, 0, NULL, '2005-02-19 09:00:00', 2, '2013-11-04 10:14:52', '2009-06-03 09:01:09', 2),
(3, NULL, 'Varga', 'Tamás', 'tomi', 'tomi', 'varga.tamas@dericom.hu', NULL, 1, NULL, '2013-08-30 09:55:20', '2013-11-26 15:35:35', NULL, NULL, NULL, 2, NULL, 0, 2, '2013-08-05 11:01:17', NULL, NULL, '2013-08-05 11:01:17', 2),
(4, 1, 'Hasitz', 'Ăgnes', 'hasitza', 'hasitza', 'hasitza@gmail.com', 2, 1, NULL, NULL, '2013-10-30 17:43:23', NULL, NULL, NULL, 5, NULL, 0, 3, '2013-10-30 17:05:33', NULL, NULL, '2013-10-30 17:05:33', 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_userslog`
--

CREATE TABLE IF NOT EXISTS `core_userslog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usersID` int(11) unsigned DEFAULT NULL,
  `modul` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `actionWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_userslog`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_userstitle`
--

CREATE TABLE IF NOT EXISTS `core_userstitle` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `core_userstitle`
--

INSERT INTO `core_userstitle` (`id`, `name`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'dr', NULL, 1, 2, '2013-07-26 08:48:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_users_config`
--

CREATE TABLE IF NOT EXISTS `core_users_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fieldName` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fieldValue` text COLLATE utf8_bin,
  `autoload` int(1) unsigned DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned NOT NULL,
  `core_usersID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- A tábla adatainak kiíratása `core_users_config`
--

INSERT INTO `core_users_config` (`id`, `fieldName`, `fieldValue`, `autoload`, `active`, `core_localserverID`, `core_usersID`, `insertWhen`, `modifyWhen`) VALUES
(1, 'layout', 'layoutsetup', NULL, 1, 2, 3, '2013-11-26 15:32:19', '2013-11-26 15:32:19'),
(2, 'modulSelect', 'core_config', NULL, 1, 2, 3, '2013-11-26 15:32:20', '2013-12-03 13:53:42');

-- --------------------------------------------------------

--
-- Tábla szerkezet: `core_users_rights`
--

CREATE TABLE IF NOT EXISTS `core_users_rights` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `core_usersID` int(11) unsigned NOT NULL DEFAULT '0',
  `core_configsID` int(11) unsigned NOT NULL DEFAULT '0',
  `allrecs` int(2) unsigned DEFAULT '0',
  `ownrecs` int(2) unsigned DEFAULT '0',
  `core_localserverID` int(11) unsigned DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned NOT NULL DEFAULT '0',
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_users_rights`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_barcode`
--

CREATE TABLE IF NOT EXISTS `nocore_barcode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `barcode` varchar(22) COLLATE utf8_bin DEFAULT NULL,
  `barcodeType` int(3) unsigned DEFAULT NULL,
  `sealNumber` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `sealNumberDeputy` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `patientID` varchar(9) COLLATE utf8_bin DEFAULT NULL,
  `zipCode` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `nocore_whereID` int(1) unsigned DEFAULT NULL,
  `nocore_statusID` int(2) unsigned DEFAULT '1',
  `loginWhen` datetime DEFAULT NULL,
  `callUp` int(1) unsigned DEFAULT NULL,
  `callUpWhen` datetime DEFAULT NULL,
  `insideWhen` datetime DEFAULT NULL,
  `outsideWhen` datetime DEFAULT NULL,
  `prerecordedWhen` datetime DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=43 ;

--
-- A tábla adatainak kiíratása `nocore_barcode`
--

INSERT INTO `nocore_barcode` (`id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, '4642320871', 0, '46423', '', '0871', NULL, 2, 4, '2013-12-03 06:51:27', NULL, '2013-12-03 07:06:29', NULL, '2013-12-03 07:06:54', NULL, 0, 2, NULL, '2013-12-03 06:51:27', NULL, NULL),
(2, '4642312451', 0, '46423', '', '2451', NULL, 1, 4, '2013-12-03 06:51:43', NULL, '2013-12-03 07:29:12', NULL, '2013-12-03 07:32:05', NULL, 0, 2, NULL, '2013-12-03 06:51:43', NULL, NULL),
(3, '4642312762', 0, '46423', '', '2762', NULL, 1, 4, '2013-12-03 06:53:17', NULL, '2013-12-03 07:06:54', NULL, '2013-12-03 07:07:44', NULL, 0, 2, NULL, '2013-12-03 06:53:17', NULL, NULL),
(4, '4642312760', 0, '46423', '', '2760', NULL, 1, 4, '2013-12-03 06:53:38', NULL, '2013-12-03 07:07:59', NULL, '2013-12-03 07:08:13', NULL, 0, 2, NULL, '2013-12-03 06:53:38', NULL, NULL),
(5, '4642310204', 0, '46423', '', '0204', NULL, 1, 4, '2013-12-03 06:57:19', NULL, '2013-12-03 07:42:49', NULL, '2013-12-03 07:44:19', NULL, 0, 2, NULL, '2013-12-03 06:57:19', NULL, NULL),
(6, '46423105488', 0, '46423', '', '05488', NULL, 1, 4, '2013-12-03 06:57:26', NULL, '2013-12-03 07:52:18', NULL, '2013-12-03 07:58:06', NULL, 0, 2, NULL, '2013-12-03 06:57:26', NULL, NULL),
(7, '4642315325', 0, '46423', '', '5325', NULL, 1, 4, '2013-12-03 07:08:21', NULL, '2013-12-03 07:49:50', NULL, '2013-12-03 07:50:03', NULL, 0, 2, NULL, '2013-12-03 07:08:21', NULL, NULL),
(8, '4642313927', 0, '46423', '', '3927', NULL, 1, 4, '2013-12-03 07:13:46', NULL, '2013-12-03 07:29:54', NULL, '2013-12-03 07:30:01', NULL, 0, 2, NULL, '2013-12-03 07:13:46', NULL, NULL),
(9, '46423101159', 0, '46423', '', '01159', NULL, 1, 4, '2013-12-03 07:21:06', NULL, '2013-12-03 07:58:37', NULL, '2013-12-03 08:00:39', NULL, 0, 2, NULL, '2013-12-03 07:21:06', NULL, NULL),
(10, '4642311523', 0, '46423', '', '1523', NULL, 1, 4, '2013-12-03 07:26:03', NULL, '2013-12-03 08:50:21', NULL, '2013-12-03 08:56:52', NULL, 0, 2, NULL, '2013-12-03 07:26:03', NULL, NULL),
(11, '4642324029', 0, '46423', '', '4029', NULL, 2, 4, '2013-12-03 07:49:36', NULL, '2013-12-03 08:03:55', NULL, '2013-12-03 08:04:27', NULL, 0, 2, NULL, '2013-12-03 07:49:36', NULL, NULL),
(12, '4642324030', 0, '46423', '', '4030', NULL, 2, 4, '2013-12-03 07:49:54', NULL, '2013-12-03 08:04:36', NULL, '2013-12-03 08:05:01', NULL, 0, 2, NULL, '2013-12-03 07:49:54', NULL, NULL),
(13, '4642324955', 0, '46423', '', '4955', NULL, 2, 4, '2013-12-03 07:50:42', NULL, '2013-12-03 08:20:03', NULL, '2013-12-03 08:25:40', NULL, 0, 2, NULL, '2013-12-03 07:50:42', NULL, NULL),
(14, '4642313575', 0, '46423', '', '3575', NULL, 1, 4, '2013-12-03 07:52:25', NULL, NULL, NULL, '2013-12-03 08:50:25', NULL, 0, 2, NULL, '2013-12-03 07:52:25', NULL, NULL),
(15, '46423105575', 0, '46423', '', '05575', NULL, 1, 4, '2013-12-03 07:53:06', NULL, '2013-12-03 08:41:27', NULL, '2013-12-03 08:45:53', NULL, 0, 2, NULL, '2013-12-03 07:53:06', NULL, NULL),
(16, '4642324959', 0, '46423', '', '4959', NULL, 2, 4, '2013-12-03 07:54:29', NULL, '2013-12-03 08:26:09', NULL, '2013-12-03 08:32:08', NULL, 0, 2, NULL, '2013-12-03 07:54:29', NULL, NULL),
(17, '4642314376', 0, '46423', '', '4376', NULL, 1, 4, '2013-12-03 07:56:07', NULL, '2013-12-03 08:56:59', NULL, '2013-12-03 08:57:53', NULL, 0, 2, NULL, '2013-12-03 07:56:07', NULL, NULL),
(18, '4642320501', 0, '46423', '', '0501', NULL, 2, 4, '2013-12-03 08:06:01', NULL, '2013-12-03 08:37:40', NULL, '2013-12-03 08:38:09', NULL, 0, 2, NULL, '2013-12-03 08:06:01', NULL, NULL),
(19, '4642324731', 0, '46423', '', '4731', NULL, 2, 4, '2013-12-03 08:27:10', NULL, '2013-12-03 08:46:38', NULL, '2013-12-03 08:48:24', NULL, 0, 2, NULL, '2013-12-03 08:27:10', NULL, NULL),
(20, '46423105295', 0, '46423', '', '05295', NULL, 1, 4, '2013-12-03 08:27:15', NULL, '2013-12-03 09:22:52', NULL, '2013-12-03 09:23:26', NULL, 0, 2, NULL, '2013-12-03 08:27:15', NULL, NULL),
(21, '4642312643', 0, '46423', '', '2643', NULL, 1, 4, '2013-12-03 08:38:32', NULL, '2013-12-03 09:25:39', NULL, '2013-12-03 09:36:46', NULL, 0, 2, NULL, '2013-12-03 08:38:32', NULL, NULL),
(22, '4642313200', 0, '46423', '', '3200', NULL, 1, 4, '2013-12-03 08:38:53', NULL, '2013-12-03 09:42:47', NULL, '2013-12-03 09:43:26', NULL, 0, 2, NULL, '2013-12-03 08:38:53', NULL, NULL),
(23, '4642310394', 0, '46423', '', '0394', NULL, 1, 4, '2013-12-03 08:45:54', NULL, '2013-12-03 09:41:03', NULL, '2013-12-03 09:42:05', NULL, 0, 2, NULL, '2013-12-03 08:45:54', NULL, NULL),
(24, '46423103946', 0, '46423', '', '03946', NULL, 1, 4, '2013-12-03 08:46:00', NULL, '2013-12-03 09:42:13', NULL, '2013-12-03 09:47:07', NULL, 0, 2, NULL, '2013-12-03 08:46:00', NULL, NULL),
(25, '4642320657', 0, '46423', '', '0657', NULL, 2, 4, '2013-12-03 08:50:50', NULL, '2013-12-03 08:52:28', NULL, '2013-12-03 08:54:03', NULL, 0, 2, NULL, '2013-12-03 08:50:50', NULL, NULL),
(26, '4642323974', 0, '46423', '', '3974', NULL, 2, 4, '2013-12-03 08:52:47', NULL, '2013-12-03 08:54:18', NULL, '2013-12-03 08:54:23', NULL, 0, 2, NULL, '2013-12-03 08:52:47', NULL, NULL),
(27, '4642322352', 0, '46423', '', '2352', NULL, 2, 4, '2013-12-03 09:08:16', NULL, '2013-12-03 09:16:41', NULL, '2013-12-03 09:19:15', NULL, 0, 2, NULL, '2013-12-03 09:08:16', NULL, NULL),
(28, '4642310525', 0, '46423', '', '0525', NULL, 1, 4, '2013-12-03 09:13:22', NULL, '2013-12-03 10:11:08', NULL, '2013-12-03 10:12:13', NULL, 0, 2, NULL, '2013-12-03 09:13:22', NULL, NULL),
(29, '4642314936', 0, '46423', '', '4936', NULL, 1, 4, '2013-12-03 09:15:07', NULL, '2013-12-03 10:32:57', NULL, '2013-12-03 10:35:07', NULL, 0, 2, NULL, '2013-12-03 09:15:07', NULL, NULL),
(30, '4642321700', 0, '46423', '', '1700', NULL, 2, 4, '2013-12-03 09:39:26', NULL, '2013-12-03 09:43:56', NULL, '2013-12-03 09:44:02', NULL, 0, 2, NULL, '2013-12-03 09:39:26', NULL, NULL),
(31, '4642315197', 0, '46423', '', '5197', NULL, 1, 4, '2013-12-03 09:55:27', NULL, '2013-12-03 10:44:41', NULL, '2013-12-03 10:47:18', NULL, 0, 2, NULL, '2013-12-03 09:55:27', NULL, NULL),
(32, '4642313261', 0, '46423', '', '3261', NULL, 1, 4, '2013-12-03 09:58:09', NULL, '2013-12-03 11:03:41', NULL, '2013-12-03 11:04:28', NULL, 0, 2, NULL, '2013-12-03 09:58:09', NULL, NULL),
(33, '4642322994', 0, '46423', '', '2994', NULL, 2, 4, '2013-12-03 09:59:25', NULL, '2013-12-03 10:06:50', NULL, '2013-12-03 10:15:47', NULL, 0, 2, NULL, '2013-12-03 09:59:25', NULL, NULL),
(34, '4642321548', 0, '46423', '', '1548', NULL, 2, 4, '2013-12-03 10:11:14', NULL, '2013-12-03 10:17:09', NULL, '2013-12-03 10:17:29', NULL, 0, 2, NULL, '2013-12-03 10:11:14', NULL, NULL),
(35, '4642320395', 0, '46423', '', '0395', NULL, 2, 4, '2013-12-03 10:15:56', NULL, '2013-12-03 10:19:31', NULL, '2013-12-03 10:19:53', NULL, 0, 2, NULL, '2013-12-03 10:15:56', NULL, NULL),
(36, '46423203315', 0, '46423', '', '03315', NULL, 2, 4, '2013-12-03 10:16:31', NULL, '2013-12-03 10:22:26', NULL, '2013-12-03 10:25:07', NULL, 0, 2, NULL, '2013-12-03 10:16:31', NULL, NULL),
(37, '4642314561', 0, '46423', '', '4561', NULL, 1, 4, '2013-12-03 10:21:35', NULL, '2013-12-03 11:10:23', NULL, '2013-12-03 11:11:04', NULL, 0, 2, NULL, '2013-12-03 10:21:35', NULL, NULL),
(38, '4642322416', 0, '46423', '', '2416', NULL, 2, 4, '2013-12-03 10:33:07', NULL, '2013-12-03 10:34:20', NULL, '2013-12-03 10:34:37', NULL, 0, 2, NULL, '2013-12-03 10:33:07', NULL, NULL),
(39, '4642324026', 0, '46423', '', '4026', NULL, 2, 4, '2013-12-03 10:47:11', NULL, '2013-12-03 10:50:20', NULL, '2013-12-03 10:50:23', NULL, 0, 2, NULL, '2013-12-03 10:47:11', NULL, NULL),
(40, '4642311432', 0, '46423', '', '1432', NULL, 1, 4, '2013-12-03 10:58:17', NULL, '2013-12-03 11:38:15', NULL, '2013-12-03 11:41:28', NULL, 0, 2, NULL, '2013-12-03 10:58:17', NULL, NULL),
(41, '4642310533', 0, '46423', '', '0533', NULL, 1, 4, '2013-12-03 11:02:14', NULL, '2013-12-03 12:00:24', NULL, NULL, NULL, 1, 2, NULL, '2013-12-03 11:02:14', NULL, NULL),
(42, '4642310525', 0, '46423', '', '0525', NULL, 1, 4, '2013-12-03 11:17:48', NULL, NULL, NULL, '2013-12-03 11:20:45', NULL, 0, 2, NULL, '2013-12-03 11:17:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_barcode_full`
--

CREATE TABLE IF NOT EXISTS `nocore_barcode_full` (
  `fullid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) unsigned NOT NULL,
  `barcode` varchar(22) COLLATE utf8_bin DEFAULT NULL,
  `barcodeType` int(3) unsigned DEFAULT NULL,
  `sealNumber` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `sealNumberDeputy` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `patientID` varchar(9) COLLATE utf8_bin DEFAULT NULL,
  `zipCode` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `nocore_whereID` int(1) unsigned DEFAULT NULL,
  `nocore_statusID` int(2) unsigned DEFAULT '1',
  `loginWhen` datetime DEFAULT NULL,
  `callUp` int(1) unsigned DEFAULT NULL,
  `callUpWhen` datetime DEFAULT NULL,
  `insideWhen` datetime DEFAULT NULL,
  `outsideWhen` datetime DEFAULT NULL,
  `prerecordedWhen` datetime DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`fullid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=479 ;

--
-- A tábla adatainak kiíratása `nocore_barcode_full`
--

INSERT INTO `nocore_barcode_full` (`fullid`, `id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 1, '012345209991', 0, '12345', '', '09991', NULL, 2, 4, '2013-10-03 12:29:48', NULL, NULL, NULL, '2013-10-03 16:16:10', NULL, 0, 2, NULL, '2013-10-03 12:29:48', 4, '2013-10-03 16:16:10'),
(2, 2, '012345109998', 0, '12345', '', '09998', NULL, 1, 4, '2013-10-03 12:30:04', NULL, NULL, '2013-10-03 16:15:00', NULL, NULL, 0, 2, NULL, '2013-10-03 12:30:04', 4, '2013-10-03 16:15:00'),
(3, 3, '012345109992', 0, '12345', '', '09992', NULL, 1, 4, '2013-10-03 12:30:09', NULL, NULL, NULL, '2013-10-16 13:03:00', NULL, 0, 2, NULL, '2013-10-03 12:30:09', 2, '2013-10-16 13:03:00'),
(4, 4, '012345209995', 0, '12345', '', '09995', NULL, 2, 4, '2013-10-03 13:11:19', NULL, NULL, NULL, '2013-10-18 11:57:59', NULL, 0, 2, NULL, '2013-10-03 13:11:19', NULL, NULL),
(5, 5, '012345209997', 0, '12345', '', '09997', NULL, 2, 4, '2013-10-03 13:11:19', NULL, NULL, NULL, '2013-10-18 11:58:00', NULL, 0, 2, NULL, '2013-10-03 13:11:19', NULL, NULL),
(6, 6, '012345109996', 0, '12345', '', '09996', NULL, 1, 4, '2013-10-03 13:13:42', NULL, NULL, NULL, '2013-10-18 11:57:57', NULL, 0, 2, NULL, '2013-10-03 13:13:42', NULL, NULL),
(7, 7, '012345109994', 0, '12345', '', '09994', NULL, 1, 4, '2013-10-03 13:19:40', NULL, NULL, NULL, '2013-10-18 11:57:56', NULL, 0, 2, NULL, '2013-10-03 13:19:40', NULL, NULL),
(8, 8, '012345109990', 0, '12345', '', '09990', NULL, 1, 4, '2013-10-03 13:19:43', NULL, NULL, NULL, '2013-10-18 11:57:53', NULL, 0, 2, NULL, '2013-10-03 13:19:43', NULL, NULL),
(9, 9, '012345100500', 0, '12345', '', '00500', NULL, 1, 4, '2013-10-03 13:30:53', NULL, NULL, '2013-10-03 16:15:11', NULL, NULL, 0, 2, NULL, '2013-10-03 13:30:53', 4, '2013-10-03 16:15:11'),
(10, 10, '012345100004', 0, '12345', '', '00004', NULL, 1, 4, '2013-10-18 12:14:43', 0, '2013-10-18 12:19:16', NULL, NULL, NULL, 0, 2, NULL, '2013-10-18 12:14:43', NULL, NULL),
(11, 11, '012345100137', 0, '12345', '', '00137', NULL, 1, 1, '2013-10-18 12:24:43', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-10-18 12:24:43', NULL, NULL),
(12, 12, '1234520078', 0, '12345', '', '0078', NULL, 2, 1, '2013-10-18 12:24:53', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-10-18 12:24:53', NULL, NULL),
(13, 13, '1234520077', 0, '12345', '', '0077', NULL, 2, 1, '2013-10-18 12:25:11', 0, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-10-18 12:25:11', NULL, NULL),
(14, 1, '4642315306', 0, '46423', '', '5306', NULL, 1, 4, '2013-10-30 18:47:30', 0, NULL, NULL, '2013-10-30 18:48:37', NULL, 0, 2, NULL, '2013-10-30 18:47:30', NULL, NULL),
(15, 1, '4642320913', 0, '46423', '', '0913', NULL, 2, 4, '2013-10-31 08:55:52', NULL, '2013-10-31 09:01:01', NULL, '2013-10-31 09:01:18', NULL, 0, 2, NULL, '2013-10-31 08:55:52', NULL, NULL),
(16, 1, '4642325195', 0, '46423', '', '5195', NULL, 2, 4, '2013-10-31 09:11:56', NULL, '2013-10-31 09:15:13', NULL, '2013-10-31 09:15:19', NULL, 0, 2, NULL, '2013-10-31 09:11:56', NULL, NULL),
(17, 1, '4642314271', 0, '46423', '', '4271', NULL, 1, 4, '2013-10-31 09:52:07', NULL, '2013-10-31 09:54:49', NULL, '2013-10-31 09:55:22', NULL, 0, 2, NULL, '2013-10-31 09:52:07', NULL, NULL),
(18, 1, '4642321429', 0, '46423', '', '1429', NULL, 2, 4, '2013-10-31 10:05:48', NULL, '2013-10-31 10:12:51', NULL, '2013-10-31 10:13:04', NULL, 0, 2, NULL, '2013-10-31 10:05:48', NULL, NULL),
(19, 2, '4642320627', 0, '46423', '', '0627', NULL, 2, 4, '2013-10-31 10:18:37', NULL, NULL, NULL, '2013-10-31 10:28:41', NULL, 0, 2, NULL, '2013-10-31 10:18:37', NULL, NULL),
(20, 3, '4642320624', 0, '46423', '', '0624', NULL, 2, 4, '2013-10-31 10:31:03', NULL, NULL, NULL, '2013-10-31 10:35:12', NULL, 0, 2, NULL, '2013-10-31 10:31:03', NULL, NULL),
(21, 1, '4642311269', 0, '46423', '', '1269', NULL, 1, 4, '2013-10-31 10:45:37', NULL, NULL, NULL, '2013-10-31 11:00:18', NULL, 0, 2, NULL, '2013-10-31 10:45:37', NULL, NULL),
(22, 2, '4642321305', 0, '46423', '', '1305', NULL, 2, 4, '2013-10-31 10:49:07', NULL, NULL, NULL, '2013-10-31 10:58:48', NULL, 0, 2, NULL, '2013-10-31 10:49:07', NULL, NULL),
(23, 3, '4642325250', 0, '46423', '', '5250', NULL, 2, 4, '2013-10-31 11:09:17', NULL, NULL, NULL, '2013-10-31 11:13:27', NULL, 0, 2, NULL, '2013-10-31 11:09:17', NULL, NULL),
(24, 1, '4642320349', 0, '46423', '', '0349', NULL, 2, 1, '2013-10-31 12:43:51', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-10-31 12:43:51', NULL, NULL),
(25, 2, '4642325023', 0, '46423', '', '5023', NULL, 2, 4, '2013-11-04 12:20:20', NULL, '2013-11-04 12:21:17', NULL, '2013-11-04 12:22:16', NULL, 0, 2, NULL, '2013-11-04 12:20:20', NULL, NULL),
(26, 1, '4642313060', 0, '46423', '', '3060', NULL, 1, 4, '2013-11-04 13:33:56', NULL, NULL, NULL, '2013-11-04 16:58:27', NULL, 0, 2, NULL, '2013-11-04 13:33:56', NULL, NULL),
(27, 2, '4642323483', 0, '46423', '', '3483', NULL, 2, 4, '2013-11-04 13:38:48', NULL, NULL, NULL, '2013-11-04 16:58:22', NULL, 0, 2, NULL, '2013-11-04 13:38:48', NULL, NULL),
(28, 3, '4642324564', 0, '46423', '', '4564', NULL, 2, 4, '2013-11-04 15:27:14', NULL, NULL, NULL, '2013-11-04 16:58:24', NULL, 0, 2, NULL, '2013-11-04 15:27:14', NULL, NULL),
(29, 4, '4642324560', 0, '46423', '', '4560', NULL, 2, 4, '2013-11-04 17:03:40', NULL, '2013-11-04 17:31:44', NULL, '2013-11-04 17:32:04', NULL, 0, 2, NULL, '2013-11-04 17:03:40', NULL, NULL),
(30, 5, '4642314561', 0, '46423', '', '4561', NULL, 1, 4, '2013-11-04 17:03:59', NULL, '2013-11-04 17:08:37', NULL, '2013-11-04 17:26:34', NULL, 0, 2, NULL, '2013-11-04 17:03:59', NULL, NULL),
(31, 1, '4642323314', 0, '46423', '', '3314', NULL, 2, 4, '2013-11-05 08:54:21', NULL, '2013-11-05 09:05:47', NULL, '2013-11-05 09:06:10', NULL, 0, 2, NULL, '2013-11-05 08:54:21', NULL, NULL),
(32, 2, '4642312654', 0, '46423', '', '2654', NULL, 1, 4, '2013-11-05 08:55:19', NULL, '2013-11-05 09:57:06', NULL, '2013-11-05 09:58:51', NULL, 0, 2, NULL, '2013-11-05 08:55:19', NULL, NULL),
(33, 1, '4642324159', 0, '46423', '', '4159', NULL, 2, 4, '2013-11-05 10:04:11', NULL, '2013-11-05 10:13:12', NULL, '2013-11-05 10:16:05', NULL, 0, 2, NULL, '2013-11-05 10:04:11', NULL, NULL),
(34, 2, '4642321700', 0, '46423', '', '1700', NULL, 2, 4, '2013-11-05 10:22:21', NULL, NULL, NULL, '2013-11-05 10:23:12', NULL, 0, 2, NULL, '2013-11-05 10:22:21', NULL, NULL),
(35, 1, '4642311649', 0, '46423', '', '1649', NULL, 1, 1, '2013-11-05 10:31:32', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-05 10:31:32', NULL, NULL),
(36, 2, '4642320887', 0, '46423', '', '0887', NULL, 2, 4, '2013-11-05 10:31:50', NULL, '2013-11-05 10:45:14', NULL, '2013-11-05 10:45:21', NULL, 0, 2, NULL, '2013-11-05 10:31:50', NULL, NULL),
(37, 3, '4642312765', 0, '46423', '', '2765', NULL, 1, 4, '2013-11-05 10:33:40', NULL, '2013-11-05 10:56:11', NULL, '2013-11-05 10:57:05', NULL, 0, 2, NULL, '2013-11-05 10:33:40', NULL, NULL),
(38, 4, '4642320830', 0, '46423', '', '0830', NULL, 2, 4, '2013-11-05 10:35:41', NULL, '2013-11-05 11:02:25', NULL, '2013-11-05 11:02:31', NULL, 0, 2, NULL, '2013-11-05 10:35:41', NULL, NULL),
(39, 1, '4642310375', 0, '46423', '', '0375', NULL, 1, 1, '2013-11-06 12:42:22', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-06 12:42:22', NULL, NULL),
(40, 2, '4642310868', 0, '46423', '', '0868', NULL, 1, 1, '2013-11-06 12:42:41', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-06 12:42:41', NULL, NULL),
(41, 1, '4642321486', 0, '46423', '', '1486', NULL, 2, 4, '2013-11-07 06:54:54', NULL, '2013-11-07 07:02:51', NULL, '2013-11-07 07:03:02', NULL, 0, 2, NULL, '2013-11-07 06:54:54', NULL, NULL),
(42, 2, '4642320399', 0, '46423', '', '0399', NULL, 2, 4, '2013-11-07 06:55:35', NULL, '2013-11-07 07:05:15', NULL, '2013-11-07 07:05:25', NULL, 0, 2, NULL, '2013-11-07 06:55:35', NULL, NULL),
(43, 3, '4642321309', 0, '46423', '', '1309', NULL, 2, 4, '2013-11-07 07:19:05', NULL, '2013-11-07 07:27:10', NULL, '2013-11-07 07:28:30', NULL, 0, 2, NULL, '2013-11-07 07:19:05', NULL, NULL),
(44, 4, '4642322363', 0, '46423', '', '2363', NULL, 2, 4, '2013-11-07 07:34:09', NULL, '2013-11-07 07:42:21', NULL, '2013-11-07 07:43:16', NULL, 0, 2, NULL, '2013-11-07 07:34:09', NULL, NULL),
(45, 5, '4642314374', 0, '46423', '', '4374', NULL, 1, 4, '2013-11-07 07:39:11', NULL, '2013-11-07 07:48:04', NULL, '2013-11-07 07:53:27', NULL, 0, 2, NULL, '2013-11-07 07:39:11', NULL, NULL),
(46, 6, '4642313804', 0, '46423', '', '3804', NULL, 1, 4, '2013-11-07 08:50:12', NULL, '2013-11-07 09:11:29', NULL, '2013-11-07 09:24:04', NULL, 0, 2, NULL, '2013-11-07 08:50:12', NULL, NULL),
(47, 7, '4642320547', 0, '46423', '', '0547', NULL, 2, 4, '2013-11-07 09:09:43', NULL, '2013-11-07 09:12:44', NULL, '2013-11-07 09:12:55', NULL, 0, 2, NULL, '2013-11-07 09:09:43', NULL, NULL),
(48, 8, '4642315189', 0, '46423', '', '5189', NULL, 1, 4, '2013-11-07 09:10:00', NULL, '2013-11-07 09:55:02', NULL, '2013-11-07 09:55:28', NULL, 0, 2, NULL, '2013-11-07 09:10:00', NULL, NULL),
(49, 9, '4642314026', 0, '46423', '', '4026', NULL, 1, 4, '2013-11-07 09:54:09', NULL, '2013-11-07 10:23:03', NULL, '2013-11-07 10:32:11', NULL, 0, 2, NULL, '2013-11-07 09:54:09', NULL, NULL),
(50, 10, '4642313486', 0, '46423', '', '3486', NULL, 1, 4, '2013-11-07 09:54:46', NULL, '2013-11-07 10:54:32', NULL, '2013-11-07 10:57:19', NULL, 0, 2, NULL, '2013-11-07 09:54:46', NULL, NULL),
(51, 11, '4642310530', 0, '46423', '', '0530', NULL, 1, 4, '2013-11-07 09:57:18', NULL, '2013-11-07 10:57:25', NULL, '2013-11-07 10:58:22', NULL, 0, 2, NULL, '2013-11-07 09:57:18', NULL, NULL),
(52, 12, '4642314127', 0, '46423', '', '4127', NULL, 1, 1, '2013-11-07 10:12:28', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-07 10:12:28', NULL, NULL),
(53, 13, '4642311597', 0, '46423', '', '1597', NULL, 1, 1, '2013-11-07 10:25:24', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-07 10:25:24', NULL, NULL),
(54, 14, '4642311484', 0, '46423', '', '1484', NULL, 1, 1, '2013-11-07 10:52:17', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-07 10:52:17', NULL, NULL),
(55, 15, '4642324944', 0, '46423', '', '4944', NULL, 2, 1, '2013-11-07 10:58:17', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-07 10:58:17', NULL, NULL),
(56, 1, '4642310533', 0, '46423', '', '0533', NULL, 1, 1, '2013-11-08 12:23:19', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-08 12:23:19', NULL, NULL),
(57, 2, '4642310529', 0, '46423', '', '0529', NULL, 1, 1, '2013-11-08 12:23:40', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-08 12:23:40', NULL, NULL),
(58, 3, '4642310360', 0, '46423', '', '0360', NULL, 1, 1, '2013-11-08 12:40:11', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-08 12:40:11', NULL, NULL),
(59, 1, '4642313324', 0, '46423', '', '3324', NULL, 1, 4, '2013-11-11 11:57:44', NULL, '2013-11-11 13:32:38', NULL, '2013-11-11 13:44:56', NULL, 0, 2, NULL, '2013-11-11 11:57:44', NULL, NULL),
(60, 2, '4642311689', 0, '46423', '', '1689', NULL, 1, 4, '2013-11-11 12:18:35', NULL, '2013-11-11 13:45:03', NULL, '2013-11-11 13:46:11', NULL, 0, 2, NULL, '2013-11-11 12:18:35', NULL, NULL),
(61, 3, '4642310204', 0, '46423', '', '0204', NULL, 1, 4, '2013-11-11 12:32:02', NULL, '2013-11-11 14:05:45', NULL, '2013-11-11 14:09:19', NULL, 0, 2, NULL, '2013-11-11 12:32:02', NULL, NULL),
(62, 4, '4642321052', 0, '46423', '', '1052', NULL, 2, 4, '2013-11-11 12:55:42', NULL, '2013-11-11 13:03:19', NULL, '2013-11-11 13:08:40', NULL, 0, 2, NULL, '2013-11-11 12:55:42', NULL, NULL),
(63, 5, '4642314820', 0, '46423', '', '4820', NULL, 1, 4, '2013-11-11 12:56:51', NULL, '2013-11-11 13:17:48', NULL, '2013-11-11 13:18:42', NULL, 0, 2, NULL, '2013-11-11 12:56:51', NULL, NULL),
(64, 6, '4642320157', 0, '46423', '', '0157', NULL, 2, 4, '2013-11-11 12:57:35', NULL, NULL, NULL, '2013-11-11 13:36:01', NULL, 0, 2, NULL, '2013-11-11 12:57:35', NULL, NULL),
(65, 7, '4642322852', 0, '46423', '', '2852', NULL, 2, 4, '2013-11-11 13:01:44', NULL, '2013-11-11 13:24:25', NULL, '2013-11-11 13:24:43', NULL, 0, 2, NULL, '2013-11-11 13:01:44', NULL, NULL),
(66, 8, '4642314244', 0, '46423', '', '4244', NULL, 1, 4, '2013-11-11 13:02:52', NULL, '2013-11-11 13:28:12', NULL, '2013-11-11 13:28:19', NULL, 0, 2, NULL, '2013-11-11 13:02:52', NULL, NULL),
(67, 9, '4642321496', 0, '46423', '', '1496', NULL, 2, 4, '2013-11-11 13:25:10', NULL, '2013-11-11 13:36:23', NULL, '2013-11-11 13:37:51', NULL, 0, 2, NULL, '2013-11-11 13:25:10', NULL, NULL),
(68, 10, '4642310434', 0, '46423', '', '0434', NULL, 1, 4, '2013-11-11 13:31:55', NULL, '2013-11-11 14:34:29', NULL, '2013-11-11 14:36:57', NULL, 0, 2, NULL, '2013-11-11 13:31:55', NULL, NULL),
(69, 11, '4642322089', 0, '46423', '', '2089', NULL, 2, 4, '2013-11-11 13:40:34', NULL, '2013-11-11 14:03:05', NULL, '2013-11-11 14:03:28', NULL, 0, 2, NULL, '2013-11-11 13:40:34', NULL, NULL),
(70, 12, '4642314630', 0, '46423', '', '4630', NULL, 1, 4, '2013-11-11 13:44:47', NULL, '2013-11-11 14:44:40', NULL, '2013-11-11 14:49:53', NULL, 0, 2, NULL, '2013-11-11 13:44:47', NULL, NULL),
(71, 13, '4642310656', 0, '46423', '', '0656', NULL, 1, 4, '2013-11-11 14:08:00', NULL, '2013-11-11 14:19:34', NULL, '2013-11-11 14:19:48', NULL, 0, 2, NULL, '2013-11-11 14:08:00', NULL, NULL),
(72, 14, '4642320086', 0, '46423', '', '0086', NULL, 2, 4, '2013-11-11 14:34:30', NULL, '2013-11-11 14:36:58', NULL, '2013-11-11 14:37:04', NULL, 0, 2, NULL, '2013-11-11 14:34:30', NULL, NULL),
(73, 15, '4642320422', 0, '46423', '', '0422', NULL, 2, 4, '2013-11-11 14:39:47', NULL, NULL, NULL, '2013-11-11 14:44:34', NULL, 0, 2, NULL, '2013-11-11 14:39:47', NULL, NULL),
(74, 16, '4642314717', 0, '46423', '', '4717', NULL, 1, 4, '2013-11-11 14:44:15', NULL, '2013-11-11 15:08:14', NULL, '2013-11-11 15:24:30', NULL, 0, 2, NULL, '2013-11-11 14:44:15', NULL, NULL),
(75, 17, '4642323811', 0, '46423', '', '3811', NULL, 2, 4, '2013-11-11 14:47:35', NULL, '2013-11-11 14:57:27', NULL, '2013-11-11 14:58:38', NULL, 0, 2, NULL, '2013-11-11 14:47:35', NULL, NULL),
(76, 18, '4642310844', 0, '46423', '', '0844', NULL, 1, 4, '2013-11-11 14:54:34', NULL, '2013-11-11 15:27:11', NULL, '2013-11-11 15:27:46', NULL, 0, 2, NULL, '2013-11-11 14:54:34', NULL, NULL),
(77, 19, '4642311752', 0, '46423', '', '1752', NULL, 1, 4, '2013-11-11 14:55:25', NULL, '2013-11-11 15:41:27', NULL, '2013-11-11 15:44:41', NULL, 0, 2, NULL, '2013-11-11 14:55:25', NULL, NULL),
(78, 20, '4642312709', 0, '46423', '', '2709', NULL, 1, 4, '2013-11-11 14:58:15', NULL, NULL, NULL, '2013-11-11 16:26:08', NULL, 0, 2, NULL, '2013-11-11 14:58:15', NULL, NULL),
(79, 21, '4642322543', 0, '46423', '', '2543', NULL, 2, 4, '2013-11-11 15:01:40', NULL, '2013-11-11 15:17:05', NULL, '2013-11-11 15:21:45', NULL, 0, 2, NULL, '2013-11-11 15:01:40', NULL, NULL),
(80, 22, '4642314777', 0, '46423', '', '4777', NULL, 1, 4, '2013-11-11 15:16:17', NULL, '2013-11-11 16:34:01', NULL, '2013-11-11 16:41:10', NULL, 0, 2, NULL, '2013-11-11 15:16:17', NULL, NULL),
(81, 23, '4642320546', 0, '46423', '', '0546', NULL, 2, 4, '2013-11-11 15:39:23', NULL, '2013-11-11 15:43:21', NULL, '2013-11-11 15:43:25', NULL, 0, 2, NULL, '2013-11-11 15:39:23', NULL, NULL),
(82, 24, '4642313355', 0, '46423', '', '3355', NULL, 1, 4, '2013-11-11 15:40:57', NULL, '2013-11-11 16:41:29', NULL, '2013-11-11 16:50:01', NULL, 0, 2, NULL, '2013-11-11 15:40:57', NULL, NULL),
(83, 25, '4642314631', 0, '46423', '', '4631', NULL, 1, 4, '2013-11-11 15:54:13', NULL, '2013-11-11 16:14:36', NULL, '2013-11-11 16:18:01', NULL, 0, 2, NULL, '2013-11-11 15:54:13', NULL, NULL),
(84, 26, '4642324873', 0, '46423', '', '4873', NULL, 2, 4, '2013-11-11 15:55:27', NULL, NULL, NULL, '2013-11-11 16:26:11', NULL, 0, 2, NULL, '2013-11-11 15:55:27', NULL, NULL),
(85, 27, '4642314342', 0, '46423', '', '4342', NULL, 1, 4, '2013-11-11 16:23:10', NULL, '2013-11-11 17:00:15', NULL, '2013-11-11 17:18:47', NULL, 0, 2, NULL, '2013-11-11 16:23:10', NULL, NULL),
(86, 28, '4642311083', 0, '46423', '', '1083', NULL, 1, 4, '2013-11-11 16:33:37', NULL, '2013-11-11 17:19:00', NULL, '2013-11-11 17:21:58', NULL, 0, 2, NULL, '2013-11-11 16:33:37', NULL, NULL),
(87, 29, '4642313149', 0, '46423', '', '3149', NULL, 1, 4, '2013-11-11 16:33:48', NULL, '2013-11-11 17:22:04', NULL, '2013-11-11 17:26:14', NULL, 0, 2, NULL, '2013-11-11 16:33:48', NULL, NULL),
(88, 30, '4642321566', 0, '46423', '', '1566', NULL, 2, 4, '2013-11-11 16:37:52', NULL, '2013-11-11 16:39:34', NULL, '2013-11-11 16:41:03', NULL, 0, 2, NULL, '2013-11-11 16:37:52', NULL, NULL),
(89, 31, '4642320176', 0, '46423', '', '0176', NULL, 2, 4, '2013-11-11 16:42:53', NULL, '2013-11-11 16:51:39', NULL, '2013-11-11 16:56:34', NULL, 0, 2, NULL, '2013-11-11 16:42:53', NULL, NULL),
(90, 32, '4642311018', 0, '46423', '', '1018', NULL, 1, 4, '2013-11-11 16:45:19', NULL, '2013-11-11 17:46:41', NULL, '2013-11-11 17:47:12', NULL, 0, 2, NULL, '2013-11-11 16:45:19', NULL, NULL),
(91, 33, '4642324277', 0, '46423', '', '4277', NULL, 2, 4, '2013-11-11 16:48:01', NULL, '2013-11-11 16:56:53', NULL, '2013-11-11 16:57:18', NULL, 0, 2, NULL, '2013-11-11 16:48:01', NULL, NULL),
(92, 34, '4642310916', 0, '46423', '', '0916', NULL, 1, 4, '2013-11-11 16:48:55', NULL, '2013-11-11 17:51:50', NULL, '2013-11-11 17:53:38', NULL, 0, 2, NULL, '2013-11-11 16:48:55', NULL, NULL),
(93, 35, '4642313375', 0, '46423', '', '3375', NULL, 1, 4, '2013-11-11 17:05:32', NULL, '2013-11-11 18:00:54', NULL, '2013-11-11 18:08:04', NULL, 0, 2, NULL, '2013-11-11 17:05:32', NULL, NULL),
(94, 36, '4642314089', 0, '46423', '', '4089', NULL, 1, 4, '2013-11-11 17:16:34', NULL, '2013-11-11 17:53:40', NULL, '2013-11-11 17:53:57', NULL, 0, 2, NULL, '2013-11-11 17:16:34', NULL, NULL),
(95, 37, '4642324773', 0, '46423', '', '4773', NULL, 2, 4, '2013-11-11 17:17:04', NULL, '2013-11-11 17:25:46', NULL, '2013-11-11 17:25:54', NULL, 0, 2, NULL, '2013-11-11 17:17:04', NULL, NULL),
(96, 1, '4642312777', 0, '46423', '', '2777', NULL, 1, 4, '2013-11-12 08:01:35', NULL, '2013-11-12 08:45:34', NULL, '2013-11-12 08:50:25', NULL, 0, 2, NULL, '2013-11-12 08:01:35', NULL, NULL),
(97, 2, '4642312778', 0, '46423', '', '2778', NULL, 1, 4, '2013-11-12 08:01:44', NULL, NULL, NULL, '2013-11-12 08:55:52', NULL, 0, 2, NULL, '2013-11-12 08:01:44', NULL, NULL),
(98, 3, '4642324029', 0, '46423', '', '4029', NULL, 2, 4, '2013-11-12 08:07:38', NULL, '2013-11-12 08:08:28', NULL, '2013-11-12 08:08:41', NULL, 0, 2, NULL, '2013-11-12 08:07:38', NULL, NULL),
(99, 4, '4642321271', 0, '46423', '', '1271', NULL, 2, 4, '2013-11-12 08:15:11', NULL, '2013-11-12 08:20:20', NULL, '2013-11-12 08:20:46', NULL, 0, 2, NULL, '2013-11-12 08:15:11', NULL, NULL),
(100, 5, '4642310359', 0, '46423', '', '0359', NULL, 1, 1, '2013-11-12 08:22:12', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-12 08:22:12', NULL, NULL),
(101, 6, '4642321034', 0, '46423', '', '1034', NULL, 2, 4, '2013-11-12 08:40:24', NULL, '2013-11-12 08:44:43', NULL, '2013-11-12 08:44:47', NULL, 0, 2, NULL, '2013-11-12 08:40:24', NULL, NULL),
(102, 7, '4642324479', 0, '46423', '', '4479', NULL, 2, 4, '2013-11-12 08:41:11', NULL, '2013-11-12 08:50:23', NULL, '2013-11-12 08:50:29', NULL, 0, 2, NULL, '2013-11-12 08:41:11', NULL, NULL),
(103, 8, '4642321533', 0, '46423', '', '1533', NULL, 2, 1, '2013-11-12 08:45:57', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-12 08:45:57', NULL, NULL),
(104, 9, '4642314892', 0, '46423', '', '4892', NULL, 1, 1, '2013-11-12 09:57:51', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-12 09:57:51', NULL, NULL),
(105, 1, '4642310944', 0, '46423', '', '0944', NULL, 1, 1, '2013-11-13 12:06:13', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-13 12:06:13', NULL, NULL),
(106, 1, '4642310855', 0, '46423', '', '0855', NULL, 1, 1, '2013-11-14 12:04:31', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-14 12:04:31', NULL, NULL),
(107, 2, '46423105602', 0, '46423', '', '05602', NULL, 1, 1, '2013-11-14 12:04:38', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-14 12:04:38', NULL, NULL),
(108, 1, '4642314415', 0, '46423', '', '4415', NULL, 1, 4, '2013-11-15 06:53:06', NULL, '2013-11-15 07:10:26', NULL, '2013-11-15 07:19:14', NULL, 0, 2, NULL, '2013-11-15 06:53:06', NULL, NULL),
(109, 2, '4642312975', 0, '46423', '', '2975', NULL, 1, 4, '2013-11-15 07:23:04', NULL, '2013-11-15 07:23:07', NULL, '2013-11-15 07:24:15', NULL, 0, 2, NULL, '2013-11-15 07:23:04', NULL, NULL),
(110, 3, '4642313738', 0, '46423', '', '3738', NULL, 1, 4, '2013-11-15 07:41:46', NULL, '2013-11-15 08:08:33', NULL, '2013-11-15 08:15:07', NULL, 0, 2, NULL, '2013-11-15 07:41:46', NULL, NULL),
(111, 4, '4642310650', 0, '46423', '', '0650', NULL, 1, 4, '2013-11-15 07:56:52', NULL, '2013-11-15 07:58:07', NULL, '2013-11-15 07:58:17', NULL, 0, 2, NULL, '2013-11-15 07:56:52', NULL, NULL),
(112, 5, '4642324415', 0, '46423', '', '4415', NULL, 2, 4, '2013-11-15 08:13:48', NULL, '2013-11-15 08:26:21', NULL, '2013-11-15 08:27:05', NULL, 0, 2, NULL, '2013-11-15 08:13:48', NULL, NULL),
(113, 6, '46423102262', 0, '46423', '', '02262', NULL, 1, 4, '2013-11-15 08:18:28', NULL, '2013-11-15 08:32:58', NULL, '2013-11-15 08:34:29', NULL, 0, 2, NULL, '2013-11-15 08:18:28', NULL, NULL),
(114, 7, '4642313678', 0, '46423', '', '3678', NULL, 1, 4, '2013-11-15 08:27:37', NULL, '2013-11-15 08:29:57', NULL, '2013-11-15 08:32:52', NULL, 0, 2, NULL, '2013-11-15 08:27:37', NULL, NULL),
(115, 8, '46423205576', 0, '46423', '', '05576', NULL, 2, 4, '2013-11-15 08:29:06', NULL, NULL, NULL, '2013-11-15 08:41:01', NULL, 0, 2, NULL, '2013-11-15 08:29:06', NULL, NULL),
(116, 9, '4642321287', 0, '46423', '', '1287', NULL, 2, 4, '2013-11-15 09:04:56', NULL, '2013-11-15 09:07:57', NULL, '2013-11-15 09:08:03', NULL, 0, 2, NULL, '2013-11-15 09:04:56', NULL, NULL),
(117, 10, '4642324765', 0, '46423', '', '4765', NULL, 2, 4, '2013-11-15 09:33:19', NULL, '2013-11-15 09:35:07', NULL, '2013-11-15 09:35:57', NULL, 0, 2, NULL, '2013-11-15 09:33:19', NULL, NULL),
(118, 11, '4642311563', 0, '46423', '', '1563', NULL, 1, 4, '2013-11-15 09:54:48', NULL, '2013-11-15 10:03:21', NULL, '2013-11-15 10:09:48', NULL, 0, 2, NULL, '2013-11-15 09:54:48', NULL, NULL),
(119, 12, '4642311074', 0, '46423', '', '1074', NULL, 1, 4, '2013-11-15 10:10:44', NULL, '2013-11-15 10:28:19', NULL, '2013-11-15 10:45:53', NULL, 0, 2, NULL, '2013-11-15 10:10:44', NULL, NULL),
(120, 13, '4642321552', 0, '46423', '', '1552', NULL, 2, 4, '2013-11-15 10:10:57', NULL, '2013-11-15 10:12:16', NULL, '2013-11-15 10:12:19', NULL, 0, 2, NULL, '2013-11-15 10:10:57', NULL, NULL),
(121, 14, '4642320814', 0, '46423', '', '0814', NULL, 2, 4, '2013-11-15 10:12:40', NULL, '2013-11-15 10:13:44', NULL, '2013-11-15 10:13:54', NULL, 0, 2, NULL, '2013-11-15 10:12:40', NULL, NULL),
(122, 15, '4642314055', 0, '46423', '', '4055', NULL, 1, 4, '2013-11-15 10:20:51', NULL, '2013-11-15 10:44:01', NULL, '2013-11-15 10:44:13', NULL, 0, 2, NULL, '2013-11-15 10:20:51', NULL, NULL),
(123, 16, '4642312442', 0, '46423', '', '2442', NULL, 1, 1, '2013-11-15 10:44:09', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-15 10:44:09', NULL, NULL),
(124, 1, '4642312664', 0, '46423', '', '2664', NULL, 1, 4, '2013-11-18 12:06:44', NULL, '2013-11-18 13:01:30', NULL, '2013-11-18 13:06:34', NULL, 0, 2, NULL, '2013-11-18 12:06:44', NULL, NULL),
(125, 2, '4642310098', 0, '46423', '', '0098', NULL, 1, 4, '2013-11-18 12:15:55', NULL, NULL, NULL, '2013-11-18 13:42:50', NULL, 0, 2, NULL, '2013-11-18 12:15:55', NULL, NULL),
(126, 3, '46423104226', 0, '46423', '', '04226', NULL, 1, 4, '2013-11-18 12:24:11', NULL, '2013-11-18 12:43:20', NULL, '2013-11-18 12:47:22', NULL, 0, 2, NULL, '2013-11-18 12:24:11', NULL, NULL),
(127, 4, '4642312247', 0, '46423', '', '2247', NULL, 1, 4, '2013-11-18 12:35:15', NULL, '2013-11-18 13:42:56', NULL, NULL, NULL, 0, 2, NULL, '2013-11-18 12:35:15', NULL, NULL),
(128, 5, '4642312937', 0, '46423', '', '2937', NULL, 1, 4, '2013-11-18 12:39:02', NULL, '2013-11-18 13:54:43', NULL, '2013-11-18 13:55:55', NULL, 0, 2, NULL, '2013-11-18 12:39:02', NULL, NULL),
(129, 6, '4642312938', 0, '46423', '', '2938', NULL, 1, 4, '2013-11-18 12:40:56', NULL, '2013-11-18 13:02:09', NULL, '2013-11-18 13:02:19', NULL, 0, 2, NULL, '2013-11-18 12:40:56', NULL, NULL),
(130, 7, '4642314561', 0, '46423', '', '4561', NULL, 1, 4, '2013-11-18 12:41:18', NULL, '2013-11-18 14:17:38', NULL, '2013-11-18 14:21:09', NULL, 0, 2, NULL, '2013-11-18 12:41:18', NULL, NULL),
(131, 8, '4642312994', 0, '46423', '', '2994', NULL, 1, 4, '2013-11-18 12:50:00', NULL, NULL, NULL, '2013-11-18 13:58:54', NULL, 0, 2, NULL, '2013-11-18 12:50:00', NULL, NULL),
(132, 9, '4642311738', 0, '46423', '', '1738', NULL, 1, 4, '2013-11-18 12:50:42', NULL, '2013-11-18 14:43:46', NULL, '2013-11-18 14:52:33', NULL, 0, 2, NULL, '2013-11-18 12:50:42', NULL, NULL),
(133, 10, '4642321449', 0, '46423', '', '1449', NULL, 2, 4, '2013-11-18 13:01:53', NULL, NULL, NULL, '2013-11-18 14:46:33', NULL, 0, 2, NULL, '2013-11-18 13:01:53', NULL, NULL),
(134, 11, '4642314549', 0, '46423', '', '4549', NULL, 1, 4, '2013-11-18 13:10:06', NULL, '2013-11-18 14:55:01', NULL, '2013-11-18 15:09:34', NULL, 0, 2, NULL, '2013-11-18 13:10:06', NULL, NULL),
(135, 12, '4642324237', 0, '46423', '', '4237', NULL, 2, 4, '2013-11-18 13:15:02', NULL, '2013-11-18 13:17:43', NULL, '2013-11-18 13:20:33', NULL, 0, 2, NULL, '2013-11-18 13:15:02', NULL, NULL),
(136, 13, '4642325250', 0, '46423', '', '5250', NULL, 2, 4, '2013-11-18 13:22:07', NULL, '2013-11-18 13:27:04', NULL, '2013-11-18 13:27:37', NULL, 0, 2, NULL, '2013-11-18 13:22:07', NULL, NULL),
(137, 14, '4642323610', 0, '46423', '', '3610', NULL, 2, 4, '2013-11-18 13:22:22', NULL, '2013-11-18 13:37:02', NULL, '2013-11-18 13:38:32', NULL, 0, 2, NULL, '2013-11-18 13:22:22', NULL, NULL),
(138, 15, '4642311034', 0, '46423', '', '1034', NULL, 1, 4, '2013-11-18 13:27:21', NULL, '2013-11-18 14:05:28', NULL, '2013-11-18 14:17:34', NULL, 0, 2, NULL, '2013-11-18 13:27:21', NULL, NULL),
(139, 16, '4642312733', 0, '46423', '', '2733', NULL, 1, 4, '2013-11-18 13:44:16', NULL, '2013-11-18 15:40:30', NULL, '2013-11-18 15:41:52', NULL, 0, 2, NULL, '2013-11-18 13:44:16', NULL, NULL),
(140, 17, '4642310647', 0, '46423', '', '0647', NULL, 1, 4, '2013-11-18 13:44:50', NULL, '2013-11-18 15:42:06', NULL, '2013-11-18 15:43:44', NULL, 0, 2, NULL, '2013-11-18 13:44:50', NULL, NULL),
(141, 18, '4642314336', 0, '46423', '', '4336', NULL, 1, 4, '2013-11-18 14:01:05', NULL, '2013-11-18 15:54:05', NULL, '2013-11-18 16:02:11', NULL, 0, 2, NULL, '2013-11-18 14:01:05', NULL, NULL),
(142, 19, '4642312934', 0, '46423', '', '2934', NULL, 1, 4, '2013-11-18 14:17:33', NULL, '2013-11-18 16:06:31', NULL, '2013-11-18 16:08:24', NULL, 0, 2, NULL, '2013-11-18 14:17:33', NULL, NULL),
(143, 20, '4642315240', 0, '46423', '', '5240', NULL, 1, 4, '2013-11-18 14:37:13', NULL, '2013-11-18 16:18:01', NULL, '2013-11-18 16:32:13', NULL, 0, 2, NULL, '2013-11-18 14:37:13', NULL, NULL),
(144, 21, '4642321109', 0, '46423', '', '1109', NULL, 2, 4, '2013-11-18 14:39:41', NULL, '2013-11-18 14:41:23', NULL, '2013-11-18 14:44:48', NULL, 0, 2, NULL, '2013-11-18 14:39:41', NULL, NULL),
(145, 22, '4642324765', 0, '46423', '', '4765', NULL, 2, 4, '2013-11-18 14:42:31', NULL, '2013-11-18 14:46:41', NULL, '2013-11-18 14:48:12', NULL, 0, 2, NULL, '2013-11-18 14:42:31', NULL, NULL),
(146, 23, '4642313355', 0, '46423', '', '3355', NULL, 1, 4, '2013-11-18 15:20:38', NULL, '2013-11-18 16:48:36', NULL, '2013-11-18 16:55:16', NULL, 0, 2, NULL, '2013-11-18 15:20:38', NULL, NULL),
(147, 24, '4642313937', 0, '46423', '', '3937', NULL, 1, 4, '2013-11-18 15:25:40', NULL, '2013-11-18 16:55:22', NULL, '2013-11-18 17:00:26', NULL, 0, 2, NULL, '2013-11-18 15:25:40', NULL, NULL),
(148, 25, '4642325213', 0, '46423', '', '5213', NULL, 2, 4, '2013-11-18 15:39:33', NULL, NULL, NULL, '2013-11-18 15:44:34', NULL, 0, 2, NULL, '2013-11-18 15:39:33', NULL, NULL),
(149, 26, '4642323635', 0, '46423', '', '3635', NULL, 2, 4, '2013-11-18 16:05:09', NULL, '2013-11-18 16:34:05', NULL, '2013-11-18 16:35:27', NULL, 0, 2, NULL, '2013-11-18 16:05:09', NULL, NULL),
(150, 27, '4642321269', 0, '46423', '', '1269', NULL, 2, 4, '2013-11-18 16:26:01', NULL, '2013-11-18 16:27:35', NULL, '2013-11-18 16:27:51', NULL, 0, 2, NULL, '2013-11-18 16:26:01', NULL, NULL),
(151, 28, '4642311884', 0, '46423', '', '1884', NULL, 1, 4, '2013-11-18 16:35:05', NULL, '2013-11-18 17:18:46', NULL, '2013-11-18 17:18:58', NULL, 0, 2, NULL, '2013-11-18 16:35:05', NULL, NULL),
(152, 29, '4642315051', 0, '46423', '', '5051', NULL, 1, 4, '2013-11-18 16:35:37', NULL, '2013-11-18 17:45:55', NULL, '2013-11-18 17:48:27', NULL, 0, 2, NULL, '2013-11-18 16:35:37', NULL, NULL),
(153, 30, '4642310384', 0, '46423', '', '0384', NULL, 1, 4, '2013-11-18 16:45:13', NULL, '2013-11-18 17:00:52', NULL, '2013-11-18 17:14:58', NULL, 0, 2, NULL, '2013-11-18 16:45:13', NULL, NULL),
(154, 31, '4642311316', 0, '46423', '', '1316', NULL, 1, 1, '2013-11-18 16:51:27', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-18 16:51:27', NULL, NULL),
(155, 32, '46423205465', 0, '46423', '', '05465', NULL, 2, 4, '2013-11-18 16:53:15', NULL, '2013-11-18 16:55:55', NULL, '2013-11-18 16:59:22', NULL, 0, 2, NULL, '2013-11-18 16:53:15', NULL, NULL),
(156, 33, '4642324583', 0, '46423', '', '4583', NULL, 2, 4, '2013-11-18 16:54:59', NULL, '2013-11-18 17:03:43', NULL, '2013-11-18 17:03:59', NULL, 0, 2, NULL, '2013-11-18 16:54:59', NULL, NULL),
(157, 34, '4642323915', 0, '46423', '', '3915', NULL, 2, 4, '2013-11-18 17:00:26', NULL, '2013-11-18 17:07:28', NULL, '2013-11-18 17:08:10', NULL, 0, 2, NULL, '2013-11-18 17:00:26', NULL, NULL),
(158, 35, '4642323888', 0, '46423', '', '3888', NULL, 2, 4, '2013-11-18 17:05:58', NULL, '2013-11-18 17:12:37', NULL, '2013-11-18 17:16:00', NULL, 0, 2, NULL, '2013-11-18 17:05:58', NULL, NULL),
(159, 36, '4642324821', 0, '46423', '', '4821', NULL, 2, 4, '2013-11-18 17:09:06', NULL, '2013-11-18 17:22:29', NULL, '2013-11-18 17:26:00', NULL, 0, 2, NULL, '2013-11-18 17:09:06', NULL, NULL),
(160, 37, '4642321848', 0, '46423', '', '1848', NULL, 2, 4, '2013-11-18 17:20:11', NULL, '2013-11-18 17:26:07', NULL, '2013-11-18 17:30:33', NULL, 0, 2, NULL, '2013-11-18 17:20:11', NULL, NULL),
(161, 38, '4642322651', 0, '46423', '', '2651', NULL, 2, 4, '2013-11-18 17:20:42', NULL, '2013-11-18 17:30:43', NULL, '2013-11-18 17:33:45', NULL, 0, 2, NULL, '2013-11-18 17:20:42', NULL, NULL),
(162, 39, '4642313245', 0, '46423', '', '3245', NULL, 1, 1, '2013-11-18 17:38:42', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-18 17:38:42', NULL, NULL),
(163, 1, '4642310236', 0, '46423', '', '0236', NULL, 1, 4, '2013-11-19 06:52:59', NULL, '2013-11-19 06:59:59', NULL, '2013-11-19 07:01:10', NULL, 0, 2, NULL, '2013-11-19 06:52:59', NULL, NULL),
(164, 2, '4642314179', 0, '46423', '', '4179', NULL, 1, 4, '2013-11-19 06:56:57', NULL, '2013-11-19 07:12:44', NULL, '2013-11-19 07:16:49', NULL, 0, 2, NULL, '2013-11-19 06:56:57', NULL, NULL),
(165, 3, '4642314393', 0, '46423', '', '4393', NULL, 1, 4, '2013-11-19 07:04:59', NULL, '2013-11-19 07:33:14', NULL, '2013-11-19 07:35:32', NULL, 0, 2, NULL, '2013-11-19 07:04:59', NULL, NULL),
(166, 4, '4642321150', 0, '46423', '', '1150', NULL, 2, 4, '2013-11-19 07:15:53', NULL, '2013-11-19 07:23:57', NULL, '2013-11-19 07:24:06', NULL, 0, 2, NULL, '2013-11-19 07:15:53', NULL, NULL),
(167, 5, '46423105370', 0, '46423', '', '05370', NULL, 1, 4, '2013-11-19 07:17:33', NULL, '2013-11-19 07:35:56', NULL, '2013-11-19 08:04:25', NULL, 0, 2, NULL, '2013-11-19 07:17:33', NULL, NULL),
(168, 6, '4642324539', 0, '46423', '', '4539', NULL, 2, 4, '2013-11-19 07:23:37', NULL, '2013-11-19 07:38:53', NULL, '2013-11-19 07:40:44', NULL, 0, 2, NULL, '2013-11-19 07:23:37', NULL, NULL),
(169, 7, '4642322664', 0, '46423', '', '2664', NULL, 2, 4, '2013-11-19 07:30:15', NULL, '2013-11-19 07:52:56', NULL, '2013-11-19 07:58:15', NULL, 0, 2, NULL, '2013-11-19 07:30:15', NULL, NULL),
(170, 8, '4642313615', 0, '46423', '', '3615', NULL, 1, 4, '2013-11-19 07:30:22', NULL, '2013-11-19 08:11:55', NULL, '2013-11-19 08:13:50', NULL, 0, 2, NULL, '2013-11-19 07:30:22', NULL, NULL),
(171, 9, '46423103946', 0, '46423', '', '03946', NULL, 1, 4, '2013-11-19 07:34:43', NULL, '2013-11-19 09:01:37', NULL, '2013-11-19 09:18:30', NULL, 0, 2, NULL, '2013-11-19 07:34:43', NULL, NULL),
(172, 10, '4642320363', 0, '46423', '', '0363', NULL, 2, 4, '2013-11-19 07:35:25', NULL, '2013-11-19 07:58:31', NULL, '2013-11-19 07:58:53', NULL, 0, 2, NULL, '2013-11-19 07:35:25', NULL, NULL),
(173, 11, '4642312677', 0, '46423', '', '2677', NULL, 1, 4, '2013-11-19 07:38:46', NULL, '2013-11-19 09:11:44', NULL, '2013-11-19 09:12:52', NULL, 0, 2, NULL, '2013-11-19 07:38:46', NULL, NULL),
(174, 12, '4642312733', 0, '46423', '', '2733', NULL, 1, 4, '2013-11-19 07:45:45', NULL, '2013-11-19 09:02:54', NULL, '2013-11-19 09:07:30', NULL, 0, 2, NULL, '2013-11-19 07:45:45', NULL, NULL),
(175, 13, '4642321785', 0, '46423', '', '1785', NULL, 2, 4, '2013-11-19 07:46:40', NULL, '2013-11-19 08:01:59', NULL, '2013-11-19 08:03:08', NULL, 0, 2, NULL, '2013-11-19 07:46:40', NULL, NULL),
(176, 14, '4642314496', 0, '46423', '', '4496', NULL, 1, 4, '2013-11-19 07:58:27', NULL, '2013-11-19 08:55:38', NULL, '2013-11-19 08:55:56', NULL, 0, 2, NULL, '2013-11-19 07:58:27', NULL, NULL),
(177, 15, '4642311284', 0, '46423', '', '1284', NULL, 1, 4, '2013-11-19 08:03:35', NULL, '2013-11-19 09:26:12', NULL, '2013-11-19 09:26:22', NULL, 0, 2, NULL, '2013-11-19 08:03:35', NULL, NULL),
(178, 16, '4642311242', 0, '46423', '', '1242', NULL, 1, 4, '2013-11-19 08:08:49', NULL, NULL, NULL, '2013-11-19 08:16:14', NULL, 0, 2, NULL, '2013-11-19 08:08:49', NULL, NULL),
(179, 17, '4642312934', 0, '46423', '', '2934', NULL, 1, 4, '2013-11-19 08:13:48', NULL, '2013-11-19 09:51:00', NULL, '2013-11-19 09:51:17', NULL, 0, 2, NULL, '2013-11-19 08:13:48', NULL, NULL),
(180, 18, '46423205549', 0, '46423', '', '05549', NULL, 2, 4, '2013-11-19 08:23:37', NULL, '2013-11-19 08:27:07', NULL, '2013-11-19 08:27:22', NULL, 0, 2, NULL, '2013-11-19 08:23:37', NULL, NULL),
(181, 19, '4642321228', 0, '46423', '', '1228', NULL, 2, 4, '2013-11-19 08:25:16', NULL, '2013-11-19 08:28:09', NULL, '2013-11-19 08:28:24', NULL, 0, 2, NULL, '2013-11-19 08:25:16', NULL, NULL),
(182, 20, '46423105304', 0, '46423', '', '05304', NULL, 1, 4, '2013-11-19 08:54:05', NULL, '2013-11-19 09:07:26', NULL, '2013-11-19 09:08:04', NULL, 0, 2, NULL, '2013-11-19 08:54:05', NULL, NULL),
(183, 21, '4642320606', 0, '46423', '', '0606', NULL, 2, 4, '2013-11-19 08:59:31', NULL, '2013-11-19 09:08:57', NULL, '2013-11-19 09:09:13', NULL, 0, 2, NULL, '2013-11-19 08:59:31', NULL, NULL),
(184, 22, '4642310746', 0, '46423', '', '0746', NULL, 1, 4, '2013-11-19 09:04:56', NULL, '2013-11-19 10:06:29', NULL, '2013-11-19 10:10:05', NULL, 0, 2, NULL, '2013-11-19 09:04:56', NULL, NULL),
(185, 23, '4642322664', 0, '46423', '', '2664', NULL, 2, 4, '2013-11-19 09:05:07', NULL, NULL, NULL, '2013-11-19 09:26:06', NULL, 0, 2, NULL, '2013-11-19 09:05:07', NULL, NULL),
(186, 24, '4642312126', 0, '46423', '', '2126', NULL, 1, 4, '2013-11-19 09:18:21', NULL, '2013-11-19 10:29:49', NULL, '2013-11-19 10:31:08', NULL, 0, 2, NULL, '2013-11-19 09:18:21', NULL, NULL),
(187, 25, '4642310997', 0, '46423', '', '0997', NULL, 1, 4, '2013-11-19 09:20:51', NULL, '2013-11-19 10:46:38', NULL, '2013-11-19 10:54:30', NULL, 0, 2, NULL, '2013-11-19 09:20:51', NULL, NULL),
(188, 26, '4642323389', 0, '46423', '', '3389', NULL, 2, 4, '2013-11-19 09:23:56', NULL, '2013-11-19 09:25:49', NULL, '2013-11-19 09:26:24', NULL, 0, 2, NULL, '2013-11-19 09:23:56', NULL, NULL),
(189, 27, '4642323814', 0, '46423', '', '3814', NULL, 2, 4, '2013-11-19 09:29:06', NULL, '2013-11-19 09:30:49', NULL, '2013-11-19 09:43:48', NULL, 0, 2, NULL, '2013-11-19 09:29:06', NULL, NULL),
(190, 28, '4642311289', 0, '46423', '', '1289', NULL, 1, 4, '2013-11-19 09:46:15', NULL, '2013-11-19 10:57:42', NULL, '2013-11-19 11:02:39', NULL, 0, 2, NULL, '2013-11-19 09:46:15', NULL, NULL),
(191, 29, '4642315020', 0, '46423', '', '5020', NULL, 1, 4, '2013-11-19 09:55:16', NULL, '2013-11-19 11:07:59', NULL, '2013-11-19 11:19:59', NULL, 0, 2, NULL, '2013-11-19 09:55:16', NULL, NULL),
(192, 30, '4642311700', 0, '46423', '', '1700', NULL, 1, 4, '2013-11-19 10:16:34', NULL, '2013-11-19 11:28:51', NULL, '2013-11-19 11:38:54', NULL, 0, 2, NULL, '2013-11-19 10:16:34', NULL, NULL),
(193, 31, '4642311130', 0, '46423', '', '1130', NULL, 1, 1, '2013-11-19 10:19:42', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-19 10:19:42', NULL, NULL),
(194, 32, '4642310354', 0, '46423', '', '0354', NULL, 1, 4, '2013-11-19 10:34:16', NULL, NULL, NULL, '2013-11-19 10:36:45', NULL, 0, 2, NULL, '2013-11-19 10:34:16', NULL, NULL),
(195, 33, '4642324170', 0, '46423', '', '4170', NULL, 2, 4, '2013-11-19 10:35:41', NULL, '2013-11-19 10:41:16', NULL, '2013-11-19 10:41:22', NULL, 0, 2, NULL, '2013-11-19 10:35:41', NULL, NULL),
(196, 34, '4642314601', 0, '46423', '', '4601', NULL, 1, 1, '2013-11-19 10:37:33', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-19 10:37:33', NULL, NULL),
(197, 35, '4642322914', 0, '46423', '', '2914', NULL, 2, 4, '2013-11-19 10:38:40', NULL, '2013-11-19 10:50:22', NULL, '2013-11-19 10:50:53', NULL, 0, 2, NULL, '2013-11-19 10:38:40', NULL, NULL),
(198, 36, '4642320996', 0, '46423', '', '0996', NULL, 2, 4, '2013-11-19 10:46:36', NULL, '2013-11-19 10:53:54', NULL, '2013-11-19 10:56:52', NULL, 0, 2, NULL, '2013-11-19 10:46:36', NULL, NULL),
(199, 37, '4642320432', 0, '46423', '', '0432', NULL, 2, 4, '2013-11-19 10:48:50', NULL, '2013-11-19 10:57:09', NULL, '2013-11-19 10:57:31', NULL, 0, 2, NULL, '2013-11-19 10:48:50', NULL, NULL),
(200, 38, '4642322610', 0, '46423', '', '2610', NULL, 2, 4, '2013-11-19 11:27:52', NULL, '2013-11-19 11:32:32', NULL, '2013-11-19 11:32:37', NULL, 0, 2, NULL, '2013-11-19 11:27:52', NULL, NULL),
(201, 39, '4642314959', 0, '46423', '', '4959', NULL, 1, 1, '2013-11-19 11:35:52', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-19 11:35:52', NULL, NULL),
(202, 1, '4642310587', 0, '46423', '', '0587', NULL, 1, 4, '2013-11-20 11:49:59', NULL, '2013-11-20 13:28:44', NULL, '2013-11-20 13:28:46', NULL, 0, 2, NULL, '2013-11-20 11:49:59', NULL, NULL),
(203, 2, '4642320176', 0, '46423', '', '0176', NULL, 2, 4, '2013-11-20 11:50:23', NULL, NULL, NULL, '2013-11-20 12:00:49', NULL, 0, 2, NULL, '2013-11-20 11:50:23', NULL, NULL),
(204, 3, '4642313134', 0, '46423', '', '3134', NULL, 1, 4, '2013-11-20 11:59:33', NULL, '2013-11-20 13:04:52', NULL, '2013-11-20 13:05:06', NULL, 0, 2, NULL, '2013-11-20 11:59:33', NULL, NULL),
(205, 4, '4642314172', 0, '46423', '', '4172', NULL, 1, 4, '2013-11-20 12:13:24', NULL, '2013-11-20 13:53:20', NULL, '2013-11-20 13:57:46', NULL, 0, 2, NULL, '2013-11-20 12:13:24', NULL, NULL),
(206, 5, '4642312451', 0, '46423', '', '2451', NULL, 1, 4, '2013-11-20 12:21:45', NULL, '2013-11-20 14:03:09', NULL, '2013-11-20 14:03:46', NULL, 0, 2, NULL, '2013-11-20 12:21:45', NULL, NULL),
(207, 6, '4642320948', 0, '46423', '', '0948', NULL, 2, 4, '2013-11-20 12:27:10', NULL, '2013-11-20 13:02:50', NULL, '2013-11-20 13:04:42', NULL, 0, 2, NULL, '2013-11-20 12:27:10', NULL, NULL),
(208, 7, '4642310344', 0, '46423', '', '0344', NULL, 1, 4, '2013-11-20 12:51:07', NULL, '2013-11-20 13:14:31', NULL, '2013-11-20 13:14:36', NULL, 0, 2, NULL, '2013-11-20 12:51:07', NULL, NULL),
(209, 8, '4642320533', 0, '46423', '', '0533', NULL, 2, 4, '2013-11-20 12:55:47', NULL, NULL, NULL, '2013-11-20 13:07:43', NULL, 0, 2, NULL, '2013-11-20 12:55:47', NULL, NULL),
(210, 9, '4642322575', 0, '46423', '', '2575', NULL, 2, 4, '2013-11-20 13:09:51', NULL, '2013-11-20 13:14:52', NULL, '2013-11-20 13:19:33', NULL, 0, 2, NULL, '2013-11-20 13:09:51', NULL, NULL),
(211, 10, '46423105370', 0, '46423', '', '05370', NULL, 1, 4, '2013-11-20 13:18:07', NULL, '2013-11-20 14:30:00', NULL, '2013-11-20 14:30:10', NULL, 0, 2, NULL, '2013-11-20 13:18:07', NULL, NULL),
(212, 11, '4642321785', 0, '46423', '', '1785', NULL, 2, 4, '2013-11-20 13:18:38', NULL, '2013-11-20 13:19:45', NULL, '2013-11-20 13:26:08', NULL, 0, 2, NULL, '2013-11-20 13:18:38', NULL, NULL),
(213, 12, '4642314971', 0, '46423', '', '4971', NULL, 1, 4, '2013-11-20 13:23:22', NULL, '2013-11-20 14:44:24', NULL, '2013-11-20 14:46:05', NULL, 0, 2, NULL, '2013-11-20 13:23:22', NULL, NULL),
(214, 13, '4642321785', 0, '46423', '', '1785', NULL, 2, 4, '2013-11-20 13:30:20', NULL, NULL, NULL, '2013-11-20 13:32:45', NULL, 0, 2, NULL, '2013-11-20 13:30:20', NULL, NULL),
(215, 14, '4642320886', 0, '46423', '', '0886', NULL, 2, 4, '2013-11-20 13:46:54', NULL, '2013-11-20 13:50:54', NULL, '2013-11-20 13:52:08', NULL, 0, 2, NULL, '2013-11-20 13:46:54', NULL, NULL),
(216, 15, '46423105604', 0, '46423', '', '05604', NULL, 1, 4, '2013-11-20 14:04:11', NULL, '2013-11-20 14:23:16', NULL, '2013-11-20 14:29:40', NULL, 0, 2, NULL, '2013-11-20 14:04:11', NULL, NULL),
(217, 16, '4642314005', 0, '46423', '', '4005', NULL, 1, 4, '2013-11-20 14:33:13', NULL, '2013-11-20 14:51:28', NULL, '2013-11-20 15:01:56', NULL, 0, 2, NULL, '2013-11-20 14:33:13', NULL, NULL),
(218, 17, '4642322925', 0, '46423', '', '2925', NULL, 2, 4, '2013-11-20 14:44:25', NULL, '2013-11-20 14:48:04', NULL, '2013-11-20 14:48:10', NULL, 0, 2, NULL, '2013-11-20 14:44:25', NULL, NULL),
(219, 18, '4642310533', 0, '46423', '', '0533', NULL, 1, 4, '2013-11-20 15:02:31', NULL, '2013-11-20 15:31:41', NULL, '2013-11-20 16:02:05', NULL, 0, 2, NULL, '2013-11-20 15:02:31', NULL, NULL),
(220, 19, '4642322430', 0, '46423', '', '2430', NULL, 2, 4, '2013-11-20 15:04:12', NULL, '2013-11-20 15:05:43', NULL, '2013-11-20 15:05:53', NULL, 0, 2, NULL, '2013-11-20 15:04:12', NULL, NULL),
(221, 20, '4642313634', 0, '46423', '', '3634', NULL, 1, 4, '2013-11-20 15:15:30', NULL, '2013-11-20 16:05:08', NULL, '2013-11-20 16:12:52', NULL, 0, 2, NULL, '2013-11-20 15:15:30', NULL, NULL),
(222, 21, '4642322446', 0, '46423', '', '2446', NULL, 2, 4, '2013-11-20 15:32:45', NULL, '2013-11-20 15:39:31', NULL, '2013-11-20 15:39:47', NULL, 0, 2, NULL, '2013-11-20 15:32:45', NULL, NULL),
(223, 22, '4642322396', 0, '46423', '', '2396', NULL, 2, 4, '2013-11-20 15:42:26', NULL, '2013-11-20 15:43:06', NULL, '2013-11-20 15:43:10', NULL, 0, 2, NULL, '2013-11-20 15:42:26', NULL, NULL),
(224, 23, '4642321677', 0, '46423', '', '1677', NULL, 2, 4, '2013-11-20 15:58:28', NULL, '2013-11-20 16:08:48', NULL, '2013-11-20 16:08:53', NULL, 0, 2, NULL, '2013-11-20 15:58:28', NULL, NULL),
(225, 24, '4642310726', 0, '46423', '', '0726', NULL, 1, 4, '2013-11-20 16:11:11', NULL, '2013-11-20 16:22:00', NULL, '2013-11-20 16:24:14', NULL, 0, 2, NULL, '2013-11-20 16:11:11', NULL, NULL),
(226, 25, '4642311130', 0, '46423', '', '1130', NULL, 1, 4, '2013-11-20 16:21:52', NULL, '2013-11-20 16:37:51', NULL, '2013-11-20 16:39:46', NULL, 0, 2, NULL, '2013-11-20 16:21:52', NULL, NULL),
(227, 26, '4642312065', 0, '46423', '', '2065', NULL, 1, 1, '2013-11-20 16:31:13', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-20 16:31:13', NULL, NULL),
(228, 1, '4642314287', 0, '46423', '', '4287', NULL, 1, 4, '2013-11-21 06:58:24', NULL, '2013-11-21 07:36:23', NULL, '2013-11-21 07:36:27', NULL, 0, 2, NULL, '2013-11-21 06:58:24', NULL, NULL),
(229, 2, '4642321145', 0, '46423', '', '1145', NULL, 2, 4, '2013-11-21 06:58:43', NULL, '2013-11-21 07:12:23', NULL, '2013-11-21 07:12:34', NULL, 0, 2, NULL, '2013-11-21 06:58:43', NULL, NULL),
(230, 3, '4642322733', 0, '46423', '', '2733', NULL, 2, 4, '2013-11-21 07:21:13', NULL, '2013-11-21 07:26:06', NULL, '2013-11-21 07:28:06', NULL, 0, 2, NULL, '2013-11-21 07:21:13', NULL, NULL),
(231, 4, '4642322000', 0, '46423', '', '2000', NULL, 2, 4, '2013-11-21 07:21:36', NULL, '2013-11-21 07:37:36', NULL, '2013-11-21 07:37:55', NULL, 0, 2, NULL, '2013-11-21 07:21:36', NULL, NULL),
(232, 5, '4642312870', 0, '46423', '', '2870', NULL, 1, 4, '2013-11-21 07:26:27', NULL, '2013-11-21 07:31:44', NULL, '2013-11-21 07:32:03', NULL, 0, 2, NULL, '2013-11-21 07:26:27', NULL, NULL),
(233, 6, '4642321130', 0, '46423', '', '1130', NULL, 2, 4, '2013-11-21 07:26:41', NULL, NULL, NULL, '2013-11-21 07:51:21', NULL, 0, 2, NULL, '2013-11-21 07:26:41', NULL, NULL),
(234, 7, '46423205554', 0, '46423', '', '05554', NULL, 2, 4, '2013-11-21 07:27:16', NULL, NULL, NULL, '2013-11-21 07:51:24', NULL, 0, 2, NULL, '2013-11-21 07:27:16', NULL, NULL),
(235, 8, '46423205538', 0, '46423', '', '05538', NULL, 2, 4, '2013-11-21 07:28:11', NULL, NULL, NULL, '2013-11-21 07:51:26', NULL, 0, 2, NULL, '2013-11-21 07:28:11', NULL, NULL),
(236, 9, '4642311055', 0, '46423', '', '1055', NULL, 1, 4, '2013-11-21 08:16:06', NULL, '2013-11-21 08:22:26', NULL, '2013-11-21 08:33:43', NULL, 0, 2, NULL, '2013-11-21 08:16:06', NULL, NULL),
(237, 10, '4642323495', 0, '46423', '', '3495', NULL, 2, 4, '2013-11-21 08:28:56', NULL, NULL, NULL, '2013-11-21 08:39:38', NULL, 0, 2, NULL, '2013-11-21 08:28:56', NULL, NULL),
(238, 11, '4642321311', 0, '46423', '', '1311', NULL, 2, 4, '2013-11-21 08:29:18', NULL, '2013-11-21 08:39:41', NULL, '2013-11-21 08:40:35', NULL, 0, 2, NULL, '2013-11-21 08:29:18', NULL, NULL),
(239, 12, '4642321758', 0, '46423', '', '1758', NULL, 2, 4, '2013-11-21 08:31:39', NULL, '2013-11-21 08:45:38', NULL, '2013-11-21 08:46:01', NULL, 0, 2, NULL, '2013-11-21 08:31:39', NULL, NULL),
(240, 13, '4642322867', 0, '46423', '', '2867', NULL, 2, 4, '2013-11-21 08:45:01', NULL, '2013-11-21 08:46:53', NULL, '2013-11-21 08:47:18', NULL, 0, 2, NULL, '2013-11-21 08:45:01', NULL, NULL),
(241, 14, '4642315447', 0, '46423', '', '5447', NULL, 1, 4, '2013-11-21 09:03:18', NULL, '2013-11-21 09:06:27', NULL, '2013-11-21 09:08:31', NULL, 0, 2, NULL, '2013-11-21 09:03:18', NULL, NULL),
(242, 15, '4642325451', 0, '46423', '', '5451', NULL, 2, 4, '2013-11-21 09:03:28', NULL, '2013-11-21 09:04:53', NULL, '2013-11-21 09:05:02', NULL, 0, 2, NULL, '2013-11-21 09:03:28', NULL, NULL),
(243, 16, '4642311858', 0, '46423', '', '1858', NULL, 1, 4, '2013-11-21 09:06:08', NULL, '2013-11-21 09:36:20', NULL, '2013-11-21 09:37:52', NULL, 0, 2, NULL, '2013-11-21 09:06:08', NULL, NULL),
(244, 17, '46423203204', 0, '46423', '', '03204', NULL, 2, 4, '2013-11-21 09:38:38', NULL, '2013-11-21 09:47:36', NULL, '2013-11-21 09:48:05', NULL, 0, 2, NULL, '2013-11-21 09:38:38', NULL, NULL),
(245, 18, '4642325432', 0, '46423', '', '5432', NULL, 2, 4, '2013-11-21 09:42:47', NULL, '2013-11-21 09:59:22', NULL, '2013-11-21 09:59:47', NULL, 0, 2, NULL, '2013-11-21 09:42:47', NULL, NULL),
(246, 19, '4642311242', 0, '46423', '', '1242', NULL, 1, 4, '2013-11-21 09:44:32', NULL, '2013-11-21 10:07:00', NULL, '2013-11-21 10:09:20', NULL, 0, 2, NULL, '2013-11-21 09:44:32', NULL, NULL),
(247, 20, '4642320783', 0, '46423', '', '0783', NULL, 2, 4, '2013-11-21 09:45:08', NULL, '2013-11-21 10:03:09', NULL, '2013-11-21 10:03:42', NULL, 0, 2, NULL, '2013-11-21 09:45:08', NULL, NULL),
(248, 21, '4642314941', 0, '46423', '', '4941', NULL, 1, 4, '2013-11-21 09:48:47', NULL, '2013-11-21 10:17:32', NULL, '2013-11-21 10:29:32', NULL, 0, 2, NULL, '2013-11-21 09:48:47', NULL, NULL),
(249, 22, '4642322327', 0, '46423', '', '2327', NULL, 2, 4, '2013-11-21 09:56:05', NULL, '2013-11-21 10:08:37', NULL, '2013-11-21 10:09:09', NULL, 0, 2, NULL, '2013-11-21 09:56:05', NULL, NULL),
(250, 23, '4642320078', 0, '46423', '', '0078', NULL, 2, 4, '2013-11-21 09:58:25', NULL, '2013-11-21 10:17:04', NULL, '2013-11-21 10:17:23', NULL, 0, 2, NULL, '2013-11-21 09:58:25', NULL, NULL),
(251, 24, '46423205511', 0, '46423', '', '05511', NULL, 2, 4, '2013-11-21 10:02:40', NULL, '2013-11-21 10:22:56', NULL, '2013-11-21 10:23:00', NULL, 0, 2, NULL, '2013-11-21 10:02:40', NULL, NULL),
(252, 25, '4642322247', 0, '46423', '', '2247', NULL, 2, 4, '2013-11-21 10:10:55', NULL, '2013-11-21 10:37:42', NULL, '2013-11-21 10:41:19', NULL, 0, 2, NULL, '2013-11-21 10:10:55', NULL, NULL),
(253, 26, '4642324716', 0, '46423', '', '4716', NULL, 2, 4, '2013-11-21 10:15:18', NULL, '2013-11-21 10:41:30', NULL, '2013-11-21 10:41:53', NULL, 0, 2, NULL, '2013-11-21 10:15:18', NULL, NULL),
(254, 27, '4642315193', 0, '46423', '', '5193', NULL, 1, 4, '2013-11-21 10:18:58', NULL, '2013-11-21 10:41:31', NULL, '2013-11-21 10:44:05', NULL, 0, 2, NULL, '2013-11-21 10:18:58', NULL, NULL),
(255, 28, '4642314159', 0, '46423', '', '4159', NULL, 1, 4, '2013-11-21 10:23:14', NULL, '2013-11-21 10:45:37', NULL, NULL, NULL, 0, 2, NULL, '2013-11-21 10:23:14', NULL, NULL),
(256, 29, '4642312717', 0, '46423', '', '2717', NULL, 1, 1, '2013-11-21 10:37:41', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-21 10:37:41', NULL, NULL),
(257, 30, '4642323441', 0, '46423', '', '3441', NULL, 2, 4, '2013-11-21 10:47:57', NULL, '2013-11-21 10:54:18', NULL, '2013-11-21 10:54:33', NULL, 0, 2, NULL, '2013-11-21 10:47:57', NULL, NULL),
(258, 31, '46423200401', 0, '46423', '', '00401', NULL, 2, 4, '2013-11-21 10:49:27', NULL, '2013-11-21 10:59:20', NULL, '2013-11-21 10:59:59', NULL, 0, 2, NULL, '2013-11-21 10:49:27', NULL, NULL),
(259, 32, '4642314616', 0, '46423', '', '4616', NULL, 1, 1, '2013-11-21 10:52:29', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-21 10:52:29', NULL, NULL),
(260, 1, '46423105560', 0, '46423', '', '05560', NULL, 1, 4, '2013-11-22 12:34:36', NULL, '2013-11-22 12:55:36', NULL, '2013-11-22 12:59:04', NULL, 0, 2, NULL, '2013-11-22 12:34:36', NULL, NULL),
(261, 2, '4642311586', 0, '46423', '', '1586', NULL, 1, 4, '2013-11-22 12:37:29', NULL, '2013-11-22 13:18:07', NULL, '2013-11-22 13:18:23', NULL, 0, 2, NULL, '2013-11-22 12:37:29', NULL, NULL),
(262, 3, '4642314492', 0, '46423', '', '4492', NULL, 1, 4, '2013-11-22 12:45:00', NULL, '2013-11-22 13:34:40', NULL, '2013-11-22 13:41:01', NULL, 0, 2, NULL, '2013-11-22 12:45:00', NULL, NULL),
(263, 4, '4642315006', 0, '46423', '', '5006', NULL, 1, 4, '2013-11-22 12:45:44', NULL, '2013-11-22 14:05:45', NULL, '2013-11-22 14:13:14', NULL, 0, 2, NULL, '2013-11-22 12:45:44', NULL, NULL),
(264, 5, '4642321454', 0, '46423', '', '1454', NULL, 2, 4, '2013-11-22 12:51:11', NULL, '2013-11-22 13:07:51', NULL, '2013-11-22 13:09:09', NULL, 0, 2, NULL, '2013-11-22 12:51:11', NULL, NULL),
(265, 6, '4642320899', 0, '46423', '', '0899', NULL, 2, 4, '2013-11-22 13:02:26', NULL, '2013-11-22 13:13:59', NULL, '2013-11-22 13:16:51', NULL, 0, 2, NULL, '2013-11-22 13:02:26', NULL, NULL),
(266, 7, '4642311648', 0, '46423', '', '1648', NULL, 1, 4, '2013-11-22 13:26:30', NULL, '2013-11-22 14:22:36', NULL, '2013-11-22 14:24:20', NULL, 0, 2, NULL, '2013-11-22 13:26:30', NULL, NULL);
INSERT INTO `nocore_barcode_full` (`fullid`, `id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(267, 8, '4642324496', 0, '46423', '', '4496', NULL, 2, 4, '2013-11-22 13:26:50', NULL, '2013-11-22 13:45:20', NULL, '2013-11-22 13:45:56', NULL, 0, 2, NULL, '2013-11-22 13:26:50', NULL, NULL),
(268, 9, '4642312352', 0, '46423', '', '2352', NULL, 1, 4, '2013-11-22 13:30:54', NULL, '2013-11-22 14:31:41', NULL, '2013-11-22 14:38:36', NULL, 0, 2, NULL, '2013-11-22 13:30:54', NULL, NULL),
(269, 10, '46423105336', 0, '46423', '', '05336', NULL, 1, 4, '2013-11-22 13:43:44', NULL, '2013-11-22 14:40:20', NULL, '2013-11-22 14:40:31', NULL, 0, 2, NULL, '2013-11-22 13:43:44', NULL, NULL),
(270, 11, '4642313738', 0, '46423', '', '3738', NULL, 1, 4, '2013-11-22 13:52:22', NULL, NULL, NULL, '2013-11-22 14:14:28', NULL, 0, 2, NULL, '2013-11-22 13:52:22', NULL, NULL),
(271, 12, '4642311585', 0, '46423', '', '1585', NULL, 1, 4, '2013-11-22 14:10:09', NULL, '2013-11-22 14:44:28', NULL, '2013-11-22 14:45:07', NULL, 0, 2, NULL, '2013-11-22 14:10:09', NULL, NULL),
(272, 13, '4642325432', 0, '46423', '', '5432', NULL, 2, 4, '2013-11-22 14:12:10', NULL, '2013-11-22 14:22:28', NULL, '2013-11-22 14:30:30', NULL, 0, 2, NULL, '2013-11-22 14:12:10', NULL, NULL),
(273, 14, '46423105294', 0, '46423', '', '05294', NULL, 1, 4, '2013-11-22 14:26:57', NULL, '2013-11-22 15:06:08', NULL, '2013-11-22 15:14:09', NULL, 0, 2, NULL, '2013-11-22 14:26:57', NULL, NULL),
(274, 15, '4642312325', 0, '46423', '', '2325', NULL, 1, 4, '2013-11-22 14:43:56', NULL, '2013-11-22 15:17:57', NULL, '2013-11-22 15:21:05', NULL, 0, 2, NULL, '2013-11-22 14:43:56', NULL, NULL),
(275, 16, '4642315117', 0, '46423', '', '5117', NULL, 1, 4, '2013-11-22 14:55:13', NULL, '2013-11-22 15:21:11', NULL, '2013-11-22 15:32:15', NULL, 0, 2, NULL, '2013-11-22 14:55:13', NULL, NULL),
(276, 17, '4642312852', 0, '46423', '', '2852', NULL, 1, 4, '2013-11-22 15:00:15', NULL, '2013-11-22 15:34:39', NULL, '2013-11-22 15:37:41', NULL, 0, 2, NULL, '2013-11-22 15:00:15', NULL, NULL),
(277, 18, '4642320996', 0, '46423', '', '0996', NULL, 2, 4, '2013-11-22 15:00:21', NULL, '2013-11-22 15:02:04', NULL, '2013-11-22 15:11:18', NULL, 0, 2, NULL, '2013-11-22 15:00:21', NULL, NULL),
(278, 19, '46423201214', 0, '46423', '', '01214', NULL, 2, 4, '2013-11-22 15:41:31', NULL, NULL, NULL, '2013-11-22 16:22:30', NULL, 0, 2, NULL, '2013-11-22 15:41:31', NULL, NULL),
(279, 20, '4642324601', 0, '46423', '', '4601', NULL, 2, 4, '2013-11-22 15:45:02', NULL, '2013-11-22 16:21:38', NULL, '2013-11-22 16:21:47', NULL, 0, 2, NULL, '2013-11-22 15:45:02', NULL, NULL),
(280, 21, '4642324947', 0, '46423', '', '4947', NULL, 2, 4, '2013-11-22 16:04:07', NULL, '2013-11-22 16:23:01', NULL, '2013-11-22 16:24:40', NULL, 0, 2, NULL, '2013-11-22 16:04:07', NULL, NULL),
(281, 22, '46423105611', 0, '46423', '', '05611', NULL, 1, 4, '2013-11-22 16:26:34', NULL, '2013-11-22 16:51:31', NULL, '2013-11-22 16:51:43', NULL, 0, 2, NULL, '2013-11-22 16:26:34', NULL, NULL),
(282, 1, '4642310439', 0, '46423', '', '0439', NULL, 1, 4, '2013-11-25 12:40:47', NULL, '2013-11-25 13:07:08', NULL, '2013-11-25 13:25:48', NULL, 0, 2, NULL, '2013-11-25 12:40:47', NULL, NULL),
(283, 2, '4642311700', 0, '46423', '', '1700', NULL, 1, 4, '2013-11-25 13:00:56', NULL, '2013-11-25 13:26:03', NULL, '2013-11-25 13:47:28', NULL, 0, 2, NULL, '2013-11-25 13:00:56', NULL, NULL),
(284, 3, '4642322047', 0, '46423', '', '2047', NULL, 2, 4, '2013-11-25 13:13:55', NULL, '2013-11-25 13:16:55', NULL, '2013-11-25 13:17:01', NULL, 0, 2, NULL, '2013-11-25 13:13:55', NULL, NULL),
(285, 4, '4642310529', 0, '46423', '', '0529', NULL, 1, 1, '2013-11-25 13:18:40', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-25 13:18:40', NULL, NULL),
(286, 5, '46423105294', 0, '46423', '', '05294', NULL, 1, 4, '2013-11-25 13:19:13', NULL, '2013-11-25 13:47:33', NULL, '2013-11-25 13:52:55', NULL, 0, 2, NULL, '2013-11-25 13:19:13', NULL, NULL),
(287, 6, '4642310525', 0, '46423', '', '0525', NULL, 1, 4, '2013-11-25 13:35:59', NULL, '2013-11-25 13:53:25', NULL, '2013-11-25 13:57:16', NULL, 0, 2, NULL, '2013-11-25 13:35:59', NULL, NULL),
(288, 7, '4642311479', 0, '46423', '', '1479', NULL, 1, 4, '2013-11-25 13:51:40', NULL, '2013-11-25 14:05:17', NULL, '2013-11-25 14:06:13', NULL, 0, 2, NULL, '2013-11-25 13:51:40', NULL, NULL),
(289, 8, '4642310400', 0, '46423', '', '0400', NULL, 1, 4, '2013-11-25 14:01:17', NULL, '2013-11-25 14:41:54', NULL, '2013-11-25 14:43:27', NULL, 0, 2, NULL, '2013-11-25 14:01:17', NULL, NULL),
(290, 9, '4642311326', 0, '46423', '', '1326', NULL, 1, 4, '2013-11-25 14:05:01', NULL, '2013-11-25 15:01:26', NULL, '2013-11-25 15:01:52', NULL, 0, 2, NULL, '2013-11-25 14:05:01', NULL, NULL),
(291, 10, '4642324138', 0, '46423', '', '4138', NULL, 2, 4, '2013-11-25 14:15:59', NULL, '2013-11-25 14:18:57', NULL, '2013-11-25 14:19:21', NULL, 0, 2, NULL, '2013-11-25 14:15:59', NULL, NULL),
(292, 11, '4642324588', 0, '46423', '', '4588', NULL, 2, 4, '2013-11-25 14:32:03', NULL, '2013-11-25 14:33:12', NULL, '2013-11-25 14:33:37', NULL, 0, 2, NULL, '2013-11-25 14:32:03', NULL, NULL),
(293, 12, '4642314609', 0, '46423', '', '4609', NULL, 1, 4, '2013-11-25 14:35:49', NULL, '2013-11-25 15:21:12', NULL, '2013-11-25 15:24:31', NULL, 0, 2, NULL, '2013-11-25 14:35:49', NULL, NULL),
(294, 13, '46423204724', 0, '46423', '', '04724', NULL, 2, 4, '2013-11-25 14:41:21', NULL, '2013-11-25 14:46:33', NULL, '2013-11-25 14:51:53', NULL, 0, 2, NULL, '2013-11-25 14:41:21', NULL, NULL),
(295, 14, '4642310656', 0, '46423', '', '0656', NULL, 1, 4, '2013-11-25 14:43:47', NULL, '2013-11-25 15:29:45', NULL, '2013-11-25 15:34:47', NULL, 0, 2, NULL, '2013-11-25 14:43:47', NULL, NULL),
(296, 15, '4642320261', 0, '46423', '', '0261', NULL, 2, 4, '2013-11-25 14:45:25', NULL, '2013-11-25 14:55:42', NULL, '2013-11-25 14:56:12', NULL, 0, 2, NULL, '2013-11-25 14:45:25', NULL, NULL),
(297, 16, '4642321352', 0, '46423', '', '1352', NULL, 2, 4, '2013-11-25 14:48:03', NULL, '2013-11-25 15:00:54', NULL, '2013-11-25 15:01:20', NULL, 0, 2, NULL, '2013-11-25 14:48:03', NULL, NULL),
(298, 17, '4642325417', 0, '46423', '', '5417', NULL, 2, 4, '2013-11-25 15:04:05', NULL, '2013-11-25 15:16:03', NULL, '2013-11-25 15:16:35', NULL, 0, 2, NULL, '2013-11-25 15:04:05', NULL, NULL),
(299, 18, '46423205532', 0, '46423', '', '05532', NULL, 2, 4, '2013-11-25 15:14:00', NULL, '2013-11-25 15:17:28', NULL, '2013-11-25 15:17:47', NULL, 0, 2, NULL, '2013-11-25 15:14:00', NULL, NULL),
(300, 19, '4642312643', 0, '46423', '', '2643', NULL, 1, 4, '2013-11-25 15:36:01', NULL, '2013-11-25 15:36:43', NULL, '2013-11-25 15:39:09', NULL, 0, 2, NULL, '2013-11-25 15:36:01', NULL, NULL),
(301, 20, '4642312818', 0, '46423', '', '2818', NULL, 1, 4, '2013-11-25 15:43:06', NULL, '2013-11-25 16:32:18', NULL, '2013-11-25 16:36:02', NULL, 0, 2, NULL, '2013-11-25 15:43:06', NULL, NULL),
(302, 21, '4642321030', 0, '46423', '', '1030', NULL, 2, 4, '2013-11-25 15:51:28', NULL, '2013-11-25 16:04:37', NULL, '2013-11-25 16:04:52', NULL, 0, 2, NULL, '2013-11-25 15:51:28', NULL, NULL),
(303, 22, '46423204223', 0, '46423', '', '04223', NULL, 2, 4, '2013-11-25 16:03:39', NULL, '2013-11-25 16:14:43', NULL, '2013-11-25 16:15:07', NULL, 0, 2, NULL, '2013-11-25 16:03:39', NULL, NULL),
(304, 23, '4642311400', 0, '46423', '', '1400', NULL, 1, 4, '2013-11-25 16:07:42', NULL, '2013-11-25 16:36:18', NULL, '2013-11-25 16:38:38', NULL, 0, 2, NULL, '2013-11-25 16:07:42', NULL, NULL),
(305, 24, '4642321018', 0, '46423', '', '1018', NULL, 2, 4, '2013-11-25 16:13:27', NULL, '2013-11-25 16:17:00', NULL, '2013-11-25 16:19:35', NULL, 0, 2, NULL, '2013-11-25 16:13:27', NULL, NULL),
(306, 25, '4642314959', 0, '46423', '', '4959', NULL, 1, 4, '2013-11-25 16:15:50', NULL, '2013-11-25 16:43:32', NULL, '2013-11-25 16:56:05', NULL, 0, 2, NULL, '2013-11-25 16:15:50', NULL, NULL),
(307, 26, '46423205560', 0, '46423', '', '05560', NULL, 2, 4, '2013-11-25 16:16:40', NULL, NULL, NULL, '2013-11-25 16:31:05', NULL, 0, 2, NULL, '2013-11-25 16:16:40', NULL, NULL),
(308, 27, '4642324138', 0, '46423', '', '4138', NULL, 2, 4, '2013-11-25 16:25:59', NULL, '2013-11-25 16:31:36', NULL, '2013-11-25 16:31:38', NULL, 0, 2, NULL, '2013-11-25 16:25:59', NULL, NULL),
(309, 28, '46423105371', 0, '46423', '', '05371', NULL, 1, 4, '2013-11-25 16:32:20', NULL, '2013-11-25 17:07:32', NULL, '2013-11-25 17:07:44', NULL, 0, 2, NULL, '2013-11-25 16:32:20', NULL, NULL),
(310, 29, '46423105372', 0, '46423', '', '05372', NULL, 1, 4, '2013-11-25 16:33:32', NULL, '2013-11-25 17:20:45', NULL, '2013-11-25 17:25:04', NULL, 0, 2, NULL, '2013-11-25 16:33:32', NULL, NULL),
(311, 30, '4642311033', 0, '46423', '', '1033', NULL, 1, 4, '2013-11-25 16:36:31', NULL, '2013-11-25 16:56:12', NULL, '2013-11-25 17:01:47', NULL, 0, 2, NULL, '2013-11-25 16:36:31', NULL, NULL),
(312, 31, '4642321495', 0, '46423', '', '1495', NULL, 2, 4, '2013-11-25 16:45:46', NULL, '2013-11-25 16:47:21', NULL, '2013-11-25 16:47:38', NULL, 0, 2, NULL, '2013-11-25 16:45:46', NULL, NULL),
(313, 32, '4642324771', 0, '46423', '', '4771', NULL, 2, 4, '2013-11-25 16:45:56', NULL, '2013-11-25 16:49:56', NULL, '2013-11-25 16:50:05', NULL, 0, 2, NULL, '2013-11-25 16:45:56', NULL, NULL),
(314, 33, '4642312046', 0, '46423', '', '2046', NULL, 1, 4, '2013-11-25 17:00:29', NULL, '2013-11-25 17:02:58', NULL, '2013-11-25 17:03:04', NULL, 0, 2, NULL, '2013-11-25 17:00:29', NULL, NULL),
(315, 34, '4642324763', 0, '46423', '', '4763', NULL, 2, 4, '2013-11-25 17:11:23', NULL, '2013-11-25 17:13:10', NULL, '2013-11-25 17:15:19', NULL, 0, 2, NULL, '2013-11-25 17:11:23', NULL, NULL),
(316, 35, '46423105607', 0, '46423', '', '05607', NULL, 1, 4, '2013-11-25 17:18:36', NULL, '2013-11-25 17:25:12', NULL, '2013-11-25 17:26:07', NULL, 0, 2, NULL, '2013-11-25 17:18:36', NULL, NULL),
(317, 1, '4642320204', 0, '46423', '', '0204', NULL, 2, 4, '2013-11-26 06:56:01', NULL, NULL, NULL, '2013-11-26 07:13:49', NULL, 0, 2, NULL, '2013-11-26 06:56:01', NULL, NULL),
(318, 2, '4642321585', 0, '46423', '', '1585', NULL, 2, 4, '2013-11-26 06:58:23', NULL, NULL, NULL, '2013-11-26 07:13:51', NULL, 0, 2, NULL, '2013-11-26 06:58:23', NULL, NULL),
(319, 3, '4642311150', 0, '46423', '', '1150', NULL, 1, 4, '2013-11-26 07:19:31', NULL, '2013-11-26 07:21:10', NULL, '2013-11-26 07:22:15', NULL, 0, 2, NULL, '2013-11-26 07:19:31', NULL, NULL),
(320, 4, '4642323773', 0, '46423', '', '3773', NULL, 2, 4, '2013-11-26 08:10:23', NULL, '2013-11-26 08:12:10', NULL, '2013-11-26 08:12:18', NULL, 0, 2, NULL, '2013-11-26 08:10:23', NULL, NULL),
(321, 5, '4642320603', 0, '46423', '', '0603', NULL, 2, 4, '2013-11-26 08:11:38', NULL, '2013-11-26 08:14:06', NULL, '2013-11-26 08:14:54', NULL, 0, 2, NULL, '2013-11-26 08:11:38', NULL, NULL),
(322, 6, '4642314549', 0, '46423', '', '4549', NULL, 1, 4, '2013-11-26 08:13:30', NULL, '2013-11-26 08:14:35', NULL, '2013-11-26 08:15:07', NULL, 0, 2, NULL, '2013-11-26 08:13:30', NULL, NULL),
(323, 7, '4642320942', 0, '46423', '', '0942', NULL, 2, 4, '2013-11-26 08:14:50', NULL, '2013-11-26 08:22:56', NULL, '2013-11-26 08:23:20', NULL, 0, 2, NULL, '2013-11-26 08:14:50', NULL, NULL),
(324, 8, '4642310588', 0, '46423', '', '0588', NULL, 1, 4, '2013-11-26 08:23:06', NULL, '2013-11-26 08:39:53', NULL, '2013-11-26 08:40:53', NULL, 0, 2, NULL, '2013-11-26 08:23:06', NULL, NULL),
(325, 9, '4642324166', 0, '46423', '', '4166', NULL, 2, 4, '2013-11-26 08:23:30', NULL, '2013-11-26 08:27:22', NULL, '2013-11-26 08:27:29', NULL, 0, 2, NULL, '2013-11-26 08:23:30', NULL, NULL),
(326, 10, '4642320383', 0, '46423', '', '0383', NULL, 2, 4, '2013-11-26 08:33:22', NULL, '2013-11-26 08:34:15', NULL, '2013-11-26 08:34:24', NULL, 0, 2, NULL, '2013-11-26 08:33:22', NULL, NULL),
(327, 11, '4642313596', 0, '46423', '', '3596', NULL, 1, 4, '2013-11-26 08:41:31', NULL, '2013-11-26 09:36:42', NULL, '2013-11-26 09:39:12', NULL, 0, 2, NULL, '2013-11-26 08:41:31', NULL, NULL),
(328, 12, '4642311154', 0, '46423', '', '1154', NULL, 1, 4, '2013-11-26 08:47:32', NULL, '2013-11-26 09:11:43', NULL, '2013-11-26 09:19:28', NULL, 0, 2, NULL, '2013-11-26 08:47:32', NULL, NULL),
(329, 13, '4642321242', 0, '46423', '', '1242', NULL, 2, 4, '2013-11-26 09:10:12', NULL, '2013-11-26 09:15:48', NULL, '2013-11-26 09:16:07', NULL, 0, 2, NULL, '2013-11-26 09:10:12', NULL, NULL),
(330, 14, '46423105267', 0, '46423', '', '05267', NULL, 1, 4, '2013-11-26 09:23:57', NULL, '2013-11-26 09:57:39', NULL, '2013-11-26 10:06:28', NULL, 0, 2, NULL, '2013-11-26 09:23:57', NULL, NULL),
(331, 15, '4642312073', 0, '46423', '', '2073', NULL, 1, 4, '2013-11-26 09:30:01', NULL, '2013-11-26 10:19:07', NULL, '2013-11-26 10:24:48', NULL, 0, 2, NULL, '2013-11-26 09:30:01', NULL, NULL),
(332, 16, '4642313157', 0, '46423', '', '3157', NULL, 1, 4, '2013-11-26 09:37:43', NULL, '2013-11-26 10:26:40', NULL, '2013-11-26 10:26:40', NULL, 0, 2, NULL, '2013-11-26 09:37:43', NULL, NULL),
(333, 17, '4642314549', 0, '46423', '', '4549', NULL, 1, 4, '2013-11-26 09:43:43', NULL, '2013-11-26 09:55:13', NULL, '2013-11-26 09:55:46', NULL, 0, 2, NULL, '2013-11-26 09:43:43', NULL, NULL),
(334, 18, '4642312759', 0, '46423', '', '2759', NULL, 1, 4, '2013-11-26 09:46:08', NULL, '2013-11-26 10:36:05', NULL, '2013-11-26 10:44:59', NULL, 0, 2, NULL, '2013-11-26 09:46:08', NULL, NULL),
(335, 19, '4642312442', 0, '46423', '', '2442', NULL, 1, 4, '2013-11-26 09:50:01', NULL, '2013-11-26 10:49:51', NULL, '2013-11-26 10:59:04', NULL, 0, 2, NULL, '2013-11-26 09:50:01', NULL, NULL),
(336, 20, '4642312677', 0, '46423', '', '2677', NULL, 1, 4, '2013-11-26 09:55:07', NULL, '2013-11-26 10:08:51', NULL, '2013-11-26 10:13:36', NULL, 0, 2, NULL, '2013-11-26 09:55:07', NULL, NULL),
(337, 21, '4642310533', 0, '46423', '', '0533', NULL, 1, 4, '2013-11-26 10:06:22', NULL, '2013-11-26 11:11:59', NULL, '2013-11-26 11:23:54', NULL, 0, 2, NULL, '2013-11-26 10:06:22', NULL, NULL),
(338, 22, '46423100815', 0, '46423', '', '00815', NULL, 1, 4, '2013-11-26 10:14:38', NULL, '2013-11-26 11:24:19', NULL, '2013-11-26 11:28:49', NULL, 0, 2, NULL, '2013-11-26 10:14:38', NULL, NULL),
(339, 23, '4642310531', 0, '46423', '', '0531', NULL, 1, 4, '2013-11-26 10:17:51', NULL, '2013-11-26 12:00:26', NULL, '2013-11-26 12:04:08', NULL, 0, 2, NULL, '2013-11-26 10:17:51', NULL, NULL),
(340, 24, '4642312168', 0, '46423', '', '2168', NULL, 1, 4, '2013-11-26 10:18:05', NULL, '2013-11-26 11:29:05', NULL, '2013-11-26 11:29:24', NULL, 0, 2, NULL, '2013-11-26 10:18:05', NULL, NULL),
(341, 25, '4642311235', 0, '46423', '', '1235', NULL, 1, 4, '2013-11-26 10:22:28', NULL, '2013-11-26 12:04:13', NULL, '2013-11-26 12:11:58', NULL, 0, 2, NULL, '2013-11-26 10:22:28', NULL, NULL),
(342, 26, '4642315329', 0, '46423', '', '5329', NULL, 1, 4, '2013-11-26 10:35:23', NULL, '2013-11-26 12:12:24', NULL, '2013-11-26 12:13:18', NULL, 0, 2, NULL, '2013-11-26 10:35:23', NULL, NULL),
(343, 27, '4642324362', 0, '46423', '', '4362', NULL, 2, 4, '2013-11-26 10:45:31', NULL, '2013-11-26 10:59:16', NULL, '2013-11-26 11:04:54', NULL, 0, 2, NULL, '2013-11-26 10:45:31', NULL, NULL),
(344, 28, '4642312934', 0, '46423', '', '2934', NULL, 1, 4, '2013-11-26 10:45:42', NULL, '2013-11-26 12:13:26', NULL, '2013-11-26 12:14:42', NULL, 0, 2, NULL, '2013-11-26 10:45:42', NULL, NULL),
(345, 29, '4642313615', 0, '46423', '', '3615', NULL, 1, 4, '2013-11-26 10:45:48', NULL, '2013-11-26 12:18:50', NULL, NULL, NULL, 0, 2, NULL, '2013-11-26 10:45:48', NULL, NULL),
(346, 1, '4642311529', 0, '46423', '', '1529', NULL, 1, 4, '2013-11-27 11:55:05', NULL, '2013-11-27 13:18:09', NULL, '2013-11-27 13:19:16', NULL, 0, 2, NULL, '2013-11-27 11:55:05', NULL, NULL),
(347, 2, '4642322185', 0, '46423', '', '2185', NULL, 2, 4, '2013-11-27 12:15:01', NULL, '2013-11-27 12:17:08', NULL, '2013-11-27 12:17:19', NULL, 0, 2, NULL, '2013-11-27 12:15:01', NULL, NULL),
(348, 3, '4642310582', 0, '46423', '', '0582', NULL, 1, 4, '2013-11-27 12:29:51', NULL, '2013-11-27 12:43:36', NULL, '2013-11-27 12:43:41', NULL, 0, 2, NULL, '2013-11-27 12:29:51', NULL, NULL),
(349, 4, '4642322852', 0, '46423', '', '2852', NULL, 2, 4, '2013-11-27 12:32:16', NULL, '2013-11-27 12:34:48', NULL, '2013-11-27 12:34:52', NULL, 0, 2, NULL, '2013-11-27 12:32:16', NULL, NULL),
(350, 5, '4642325384', 0, '46423', '', '5384', NULL, 2, 4, '2013-11-27 12:40:10', NULL, '2013-11-27 12:54:39', NULL, '2013-11-27 12:54:48', NULL, 0, 2, NULL, '2013-11-27 12:40:10', NULL, NULL),
(351, 6, '46423205460', 0, '46423', '', '05460', NULL, 2, 4, '2013-11-27 12:43:20', NULL, '2013-11-27 12:59:29', NULL, '2013-11-27 13:01:48', NULL, 0, 2, NULL, '2013-11-27 12:43:20', NULL, NULL),
(352, 7, '4642312994', 0, '46423', '', '2994', NULL, 1, 4, '2013-11-27 12:43:38', NULL, '2013-11-27 14:36:17', NULL, '2013-11-27 15:01:27', NULL, 0, 2, NULL, '2013-11-27 12:43:38', NULL, NULL),
(353, 8, '4642312914', 0, '46423', '', '2914', NULL, 1, 4, '2013-11-27 12:50:31', NULL, NULL, NULL, '2013-11-27 13:17:09', NULL, 0, 2, NULL, '2013-11-27 12:50:31', NULL, NULL),
(354, 9, '4642323482', 0, '46423', '', '3482', NULL, 2, 4, '2013-11-27 12:53:28', NULL, NULL, NULL, '2013-11-27 13:06:04', NULL, 0, 2, NULL, '2013-11-27 12:53:28', NULL, NULL),
(355, 10, '4642321826', 0, '46423', '', '1826', NULL, 2, 4, '2013-11-27 13:15:33', NULL, '2013-11-27 13:20:23', NULL, '2013-11-27 13:20:47', NULL, 0, 2, NULL, '2013-11-27 13:15:33', NULL, NULL),
(356, 11, '4642321814', 0, '46423', '', '1814', NULL, 2, 4, '2013-11-27 13:15:43', NULL, '2013-11-27 13:31:57', NULL, '2013-11-27 13:35:57', NULL, 0, 2, NULL, '2013-11-27 13:15:43', NULL, NULL),
(357, 12, '4642311243', 0, '46423', '', '1243', NULL, 1, 4, '2013-11-27 13:49:18', NULL, '2013-11-27 14:23:56', NULL, '2013-11-27 14:24:05', NULL, 0, 2, NULL, '2013-11-27 13:49:18', NULL, NULL),
(358, 13, '4642314591', 0, '46423', '', '4591', NULL, 1, 4, '2013-11-27 13:49:33', NULL, '2013-11-27 15:06:20', NULL, '2013-11-27 15:07:13', NULL, 0, 2, NULL, '2013-11-27 13:49:33', NULL, NULL),
(359, 14, '4642310423', 0, '46423', '', '0423', NULL, 1, 4, '2013-11-27 13:53:22', NULL, '2013-11-27 15:23:20', NULL, '2013-11-27 15:25:07', NULL, 0, 2, NULL, '2013-11-27 13:53:22', NULL, NULL),
(360, 15, '4642322451', 0, '46423', '', '2451', NULL, 2, 4, '2013-11-27 14:13:00', NULL, '2013-11-27 14:18:49', NULL, '2013-11-27 14:21:57', NULL, 0, 2, NULL, '2013-11-27 14:13:00', NULL, NULL),
(361, 16, '4642315036', 0, '46423', '', '5036', NULL, 1, 4, '2013-11-27 14:14:55', NULL, '2013-11-27 15:33:19', NULL, '2013-11-27 15:36:13', NULL, 0, 2, NULL, '2013-11-27 14:14:55', NULL, NULL),
(362, 17, '4642321755', 0, '46423', '', '1755', NULL, 2, 4, '2013-11-27 14:38:31', NULL, NULL, NULL, '2013-11-27 14:55:41', NULL, 0, 2, NULL, '2013-11-27 14:38:31', NULL, NULL),
(363, 18, '4642312093', 0, '46423', '', '2093', NULL, 1, 4, '2013-11-27 14:39:03', NULL, '2013-11-27 15:37:11', NULL, '2013-11-27 15:37:29', NULL, 0, 2, NULL, '2013-11-27 14:39:03', NULL, NULL),
(364, 19, '4642324689', 0, '46423', '', '4689', NULL, 2, 4, '2013-11-27 14:42:36', NULL, NULL, NULL, '2013-11-27 14:55:38', NULL, 0, 2, NULL, '2013-11-27 14:42:36', NULL, NULL),
(365, 20, '4642321013', 0, '46423', '', '1013', NULL, 2, 4, '2013-11-27 14:43:40', NULL, '2013-11-27 14:55:49', NULL, '2013-11-27 14:57:05', NULL, 0, 2, NULL, '2013-11-27 14:43:40', NULL, NULL),
(366, 21, '4642320529', 0, '46423', '', '0529', NULL, 2, 1, '2013-11-27 15:03:25', NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, '2013-11-27 15:03:25', NULL, NULL),
(367, 22, '4642311597', 0, '46423', '', '1597', NULL, 1, 4, '2013-11-27 15:10:14', NULL, NULL, NULL, '2013-11-27 15:52:02', NULL, 0, 2, NULL, '2013-11-27 15:10:14', NULL, NULL),
(368, 23, '46423105478', 0, '46423', '', '05478', NULL, 1, 4, '2013-11-27 15:29:26', NULL, '2013-11-27 16:38:15', NULL, '2013-11-27 16:39:15', NULL, 0, 2, NULL, '2013-11-27 15:29:26', NULL, NULL),
(369, 24, '4642311411', 0, '46423', '', '1411', NULL, 1, 4, '2013-11-27 15:35:26', NULL, NULL, NULL, '2013-11-27 17:17:08', NULL, 0, 2, NULL, '2013-11-27 15:35:26', NULL, NULL),
(370, 25, '4642323806', 0, '46423', '', '3806', NULL, 2, 4, '2013-11-27 15:42:20', NULL, '2013-11-27 15:46:35', NULL, '2013-11-27 15:46:53', NULL, 0, 2, NULL, '2013-11-27 15:42:20', NULL, NULL),
(371, 26, '4642311486', 0, '46423', '', '1486', NULL, 1, 4, '2013-11-27 15:56:28', NULL, '2013-11-27 17:01:26', NULL, '2013-11-27 17:02:05', NULL, 0, 2, NULL, '2013-11-27 15:56:28', NULL, NULL),
(372, 27, '4642311676', 0, '46423', '', '1676', NULL, 1, 4, '2013-11-27 16:00:58', NULL, '2013-11-27 16:22:11', NULL, '2013-11-27 16:26:01', NULL, 0, 2, NULL, '2013-11-27 16:00:58', NULL, NULL),
(373, 28, '4642315453', 0, '46423', '', '5453', NULL, 1, 4, '2013-11-27 16:18:35', NULL, '2013-11-27 17:06:20', NULL, '2013-11-27 17:07:51', NULL, 0, 2, NULL, '2013-11-27 16:18:35', NULL, NULL),
(374, 29, '4642311130', 0, '46423', '', '1130', NULL, 1, 4, '2013-11-27 16:21:46', NULL, '2013-11-27 17:10:30', NULL, '2013-11-27 17:10:41', NULL, 0, 2, NULL, '2013-11-27 16:21:46', NULL, NULL),
(375, 30, '4642312818', 0, '46423', '', '2818', NULL, 1, 4, '2013-11-27 16:22:55', NULL, '2013-11-27 17:10:47', NULL, '2013-11-27 17:12:04', NULL, 0, 2, NULL, '2013-11-27 16:22:55', NULL, NULL),
(376, 31, '4642314429', 0, '46423', '', '4429', NULL, 1, 4, '2013-11-27 16:27:20', NULL, NULL, NULL, '2013-11-27 16:35:35', NULL, 0, 2, NULL, '2013-11-27 16:27:20', NULL, NULL),
(377, 32, '4642323425', 0, '46423', '', '3425', NULL, 2, 4, '2013-11-27 16:28:24', NULL, '2013-11-27 16:32:42', NULL, '2013-11-27 16:33:45', NULL, 0, 2, NULL, '2013-11-27 16:28:24', NULL, NULL),
(378, 1, '4642321621', 0, '46423', '', '1621', NULL, 2, 4, '2013-11-28 06:52:45', NULL, '2013-11-28 06:59:34', NULL, '2013-11-28 06:59:47', NULL, 0, 2, NULL, '2013-11-28 06:52:45', NULL, NULL),
(379, 2, '4642314037', 0, '46423', '', '4037', NULL, 1, 4, '2013-11-28 07:06:08', NULL, '2013-11-28 07:25:51', NULL, '2013-11-28 07:28:23', NULL, 0, 2, NULL, '2013-11-28 07:06:08', NULL, NULL),
(380, 3, '4642323615', 0, '46423', '', '3615', NULL, 2, 4, '2013-11-28 07:29:18', NULL, NULL, NULL, '2013-11-28 08:10:21', NULL, 0, 2, NULL, '2013-11-28 07:29:18', NULL, NULL),
(381, 4, '46423105549', 0, '46423', '', '05549', NULL, 1, 4, '2013-11-28 07:32:47', NULL, '2013-11-28 08:03:46', NULL, '2013-11-28 08:06:31', NULL, 0, 2, NULL, '2013-11-28 07:32:47', NULL, NULL),
(382, 5, '4642315426', 0, '46423', '', '5426', NULL, 1, 4, '2013-11-28 08:05:06', NULL, '2013-11-28 08:13:36', NULL, '2013-11-28 08:15:19', NULL, 0, 2, NULL, '2013-11-28 08:05:06', NULL, NULL),
(383, 6, '46423205460', 0, '46423', '', '05460', NULL, 2, 4, '2013-11-28 08:20:53', NULL, NULL, NULL, '2013-11-28 08:32:05', NULL, 0, 2, NULL, '2013-11-28 08:20:53', NULL, NULL),
(384, 7, '4642321233', 0, '46423', '', '1233', NULL, 2, 4, '2013-11-28 08:35:19', NULL, '2013-11-28 08:36:09', NULL, '2013-11-28 08:37:11', NULL, 0, 2, NULL, '2013-11-28 08:35:19', NULL, NULL),
(385, 8, '4642322087', 0, '46423', '', '2087', NULL, 2, 4, '2013-11-28 08:37:08', NULL, '2013-11-28 08:47:22', NULL, '2013-11-28 08:47:39', NULL, 0, 2, NULL, '2013-11-28 08:37:08', NULL, NULL),
(386, 9, '4642322327', 0, '46423', '', '2327', NULL, 2, 4, '2013-11-28 08:43:54', NULL, '2013-11-28 08:52:12', NULL, '2013-11-28 08:59:44', NULL, 0, 2, NULL, '2013-11-28 08:43:54', NULL, NULL),
(387, 10, '4642322328', 0, '46423', '', '2328', NULL, 2, 4, '2013-11-28 08:43:57', NULL, '2013-11-28 08:59:50', NULL, '2013-11-28 09:01:52', NULL, 0, 2, NULL, '2013-11-28 08:43:57', NULL, NULL),
(388, 11, '4642320074', 0, '46423', '', '0074', NULL, 2, 4, '2013-11-28 08:44:50', NULL, '2013-11-28 09:02:04', NULL, '2013-11-28 09:07:29', NULL, 0, 2, NULL, '2013-11-28 08:44:50', NULL, NULL),
(389, 12, '4642311825', 0, '46423', '', '1825', NULL, 1, 4, '2013-11-28 08:52:52', NULL, '2013-11-28 08:53:42', NULL, '2013-11-28 09:21:43', NULL, 0, 2, NULL, '2013-11-28 08:52:52', NULL, NULL),
(390, 13, '4642320212', 0, '46423', '', '0212', NULL, 2, 4, '2013-11-28 08:55:14', NULL, '2013-11-28 09:07:35', NULL, '2013-11-28 09:10:12', NULL, 0, 2, NULL, '2013-11-28 08:55:14', NULL, NULL),
(391, 14, '4642325006', 0, '46423', '', '5006', NULL, 2, 4, '2013-11-28 09:21:04', NULL, '2013-11-28 09:22:22', NULL, '2013-11-28 09:22:27', NULL, 0, 2, NULL, '2013-11-28 09:21:04', NULL, NULL),
(392, 15, '4642312143', 0, '46423', '', '2143', NULL, 1, 4, '2013-11-28 09:23:50', NULL, '2013-11-28 09:37:14', NULL, '2013-11-28 09:43:17', NULL, 0, 2, NULL, '2013-11-28 09:23:50', NULL, NULL),
(393, 16, '4642320644', 0, '46423', '', '0644', NULL, 2, 4, '2013-11-28 09:31:42', NULL, '2013-11-28 09:38:11', NULL, '2013-11-28 09:38:19', NULL, 0, 2, NULL, '2013-11-28 09:31:42', NULL, NULL),
(394, 17, '4642311755', 0, '46423', '', '1755', NULL, 1, 4, '2013-11-28 09:41:03', NULL, NULL, NULL, '2013-11-28 09:58:58', NULL, 0, 2, NULL, '2013-11-28 09:41:03', NULL, NULL),
(395, 18, '4642322399', 0, '46423', '', '2399', NULL, 2, 4, '2013-11-28 09:45:50', NULL, '2013-11-28 09:50:01', NULL, '2013-11-28 09:50:38', NULL, 0, 2, NULL, '2013-11-28 09:45:50', NULL, NULL),
(396, 19, '4642310983', 0, '46423', '', '0983', NULL, 1, 4, '2013-11-28 09:52:21', NULL, '2013-11-28 09:59:07', NULL, '2013-11-28 10:00:10', NULL, 0, 2, NULL, '2013-11-28 09:52:21', NULL, NULL),
(397, 20, '4642320518', 0, '46423', '', '0518', NULL, 2, 4, '2013-11-28 10:00:22', NULL, NULL, NULL, '2013-11-28 10:31:49', NULL, 0, 2, NULL, '2013-11-28 10:00:22', NULL, NULL),
(398, 21, '4642310582', 0, '46423', '', '0582', NULL, 1, 4, '2013-11-28 10:06:53', NULL, '2013-11-28 10:14:15', NULL, '2013-11-28 10:15:36', NULL, 0, 2, NULL, '2013-11-28 10:06:53', NULL, NULL),
(399, 22, '4642321809', 0, '46423', '', '1809', NULL, 2, 4, '2013-11-28 10:08:56', NULL, '2013-11-28 10:21:39', NULL, '2013-11-28 10:21:57', NULL, 0, 2, NULL, '2013-11-28 10:08:56', NULL, NULL),
(400, 23, '4642310816', 0, '46423', '', '0816', NULL, 1, 4, '2013-11-28 10:09:41', NULL, '2013-11-28 10:31:11', NULL, '2013-11-28 10:47:28', NULL, 0, 2, NULL, '2013-11-28 10:09:41', NULL, NULL),
(401, 24, '4642320854', 0, '46423', '', '0854', NULL, 2, 4, '2013-11-28 10:23:22', NULL, '2013-11-28 10:25:45', NULL, '2013-11-28 10:26:00', NULL, 0, 2, NULL, '2013-11-28 10:23:22', NULL, NULL),
(402, 25, '4642320656', 0, '46423', '', '0656', NULL, 2, 4, '2013-11-28 10:28:34', NULL, '2013-11-28 10:31:54', NULL, '2013-11-28 10:34:57', NULL, 0, 2, NULL, '2013-11-28 10:28:34', NULL, NULL),
(403, 26, '4642324210', 0, '46423', '', '4210', NULL, 2, 4, '2013-11-28 10:29:12', NULL, '2013-11-28 10:40:17', NULL, '2013-11-28 10:41:32', NULL, 0, 2, NULL, '2013-11-28 10:29:12', NULL, NULL),
(404, 27, '4642310084', 0, '46423', '', '0084', NULL, 1, 4, '2013-11-28 10:31:26', NULL, '2013-11-28 10:55:47', NULL, '2013-11-28 11:00:34', NULL, 0, 2, NULL, '2013-11-28 10:31:26', NULL, NULL),
(405, 28, '4642322421', 0, '46423', '', '2421', NULL, 2, 4, '2013-11-28 10:32:40', NULL, '2013-11-28 10:48:03', NULL, '2013-11-28 10:48:45', NULL, 0, 2, NULL, '2013-11-28 10:32:40', NULL, NULL),
(406, 29, '4642311563', 0, '46423', '', '1563', NULL, 1, 4, '2013-11-28 10:55:52', NULL, '2013-11-28 11:04:49', NULL, NULL, NULL, 0, 2, NULL, '2013-11-28 10:55:52', NULL, NULL),
(407, 30, '4642324601', 0, '46423', '', '4601', NULL, 2, 4, '2013-11-28 10:56:47', NULL, NULL, NULL, '2013-11-28 11:09:17', NULL, 0, 2, NULL, '2013-11-28 10:56:47', NULL, NULL),
(408, 1, '4642311233', 0, '46423', '', '1233', NULL, 1, 4, '2013-11-29 06:54:32', NULL, '2013-11-29 07:41:41', NULL, '2013-11-29 07:41:42', NULL, 0, 2, NULL, '2013-11-29 06:54:32', NULL, NULL),
(409, 2, '4642313023', 0, '46423', '', '3023', NULL, 1, 4, '2013-11-29 06:56:34', NULL, '2013-11-29 07:09:44', NULL, '2013-11-29 07:12:51', NULL, 0, 2, NULL, '2013-11-29 06:56:34', NULL, NULL),
(410, 3, '4642311311', 0, '46423', '', '1311', NULL, 1, 4, '2013-11-29 07:26:15', NULL, '2013-11-29 08:01:13', NULL, '2013-11-29 08:01:50', NULL, 0, 2, NULL, '2013-11-29 07:26:15', NULL, NULL),
(411, 4, '4642313621', 0, '46423', '', '3621', NULL, 1, 4, '2013-11-29 07:44:04', NULL, '2013-11-29 08:09:37', NULL, '2013-11-29 08:10:36', NULL, 0, 2, NULL, '2013-11-29 07:44:04', NULL, NULL),
(412, 5, '4642310973', 0, '46423', '', '0973', NULL, 1, 4, '2013-11-29 07:44:44', NULL, '2013-11-29 08:08:21', NULL, '2013-11-29 08:09:05', NULL, 0, 2, NULL, '2013-11-29 07:44:44', NULL, NULL),
(413, 6, '4642321526', 0, '46423', '', '1526', NULL, 2, 4, '2013-11-29 07:44:54', NULL, '2013-11-29 07:45:24', NULL, '2013-11-29 07:45:30', NULL, 0, 2, NULL, '2013-11-29 07:44:54', NULL, NULL),
(414, 7, '4642320212', 0, '46423', '', '0212', NULL, 2, 4, '2013-11-29 07:56:13', NULL, NULL, NULL, '2013-11-29 07:57:39', NULL, 0, 2, NULL, '2013-11-29 07:56:13', NULL, NULL),
(415, 8, '4642311586', 0, '46423', '', '1586', NULL, 1, 4, '2013-11-29 08:05:17', NULL, '2013-11-29 08:17:40', NULL, '2013-11-29 08:19:03', NULL, 0, 2, NULL, '2013-11-29 08:05:17', NULL, NULL),
(416, 9, '4642324264', 0, '46423', '', '4264', NULL, 2, 4, '2013-11-29 08:10:27', NULL, '2013-11-29 08:13:29', NULL, '2013-11-29 08:13:52', NULL, 0, 2, NULL, '2013-11-29 08:10:27', NULL, NULL),
(417, 10, '4642324571', 0, '46423', '', '4571', NULL, 2, 4, '2013-11-29 08:34:17', NULL, '2013-11-29 08:36:04', NULL, '2013-11-29 08:36:11', NULL, 0, 2, NULL, '2013-11-29 08:34:17', NULL, NULL),
(418, 11, '46423105560', 0, '46423', '', '05560', NULL, 1, 4, '2013-11-29 08:46:05', NULL, '2013-11-29 08:58:02', NULL, '2013-11-29 08:58:04', NULL, 0, 2, NULL, '2013-11-29 08:46:05', NULL, NULL),
(419, 12, '4642313621', 0, '46423', '', '3621', NULL, 1, 4, '2013-11-29 08:54:44', NULL, NULL, NULL, '2013-11-29 08:55:55', NULL, 0, 2, NULL, '2013-11-29 08:54:44', NULL, NULL),
(420, 13, '4642312056', 0, '46423', '', '2056', NULL, 1, 4, '2013-11-29 08:58:35', NULL, '2013-11-29 09:30:17', NULL, '2013-11-29 09:30:28', NULL, 0, 2, NULL, '2013-11-29 08:58:35', NULL, NULL),
(421, 14, '4642321052', 0, '46423', '', '1052', NULL, 2, 4, '2013-11-29 09:06:50', NULL, '2013-11-29 09:27:50', NULL, '2013-11-29 09:28:08', NULL, 0, 2, NULL, '2013-11-29 09:06:50', NULL, NULL),
(422, 15, '4642310363', 0, '46423', '', '0363', NULL, 1, 4, '2013-11-29 09:13:01', NULL, '2013-11-29 09:13:22', NULL, '2013-11-29 09:27:41', NULL, 0, 2, NULL, '2013-11-29 09:13:01', NULL, NULL),
(423, 16, '4642310349', 0, '46423', '', '0349', NULL, 1, 4, '2013-11-29 09:28:03', NULL, '2013-11-29 09:54:43', NULL, '2013-11-29 09:54:54', NULL, 0, 2, NULL, '2013-11-29 09:28:03', NULL, NULL),
(424, 17, '4642321628', 0, '46423', '', '1628', NULL, 2, 4, '2013-11-29 09:30:36', NULL, '2013-11-29 09:42:51', NULL, '2013-11-29 09:43:07', NULL, 0, 2, NULL, '2013-11-29 09:30:36', NULL, NULL),
(425, 18, '4642320624', 0, '46423', '', '0624', NULL, 2, 4, '2013-11-29 09:32:31', NULL, '2013-11-29 09:44:40', NULL, '2013-11-29 09:44:51', NULL, 0, 2, NULL, '2013-11-29 09:32:31', NULL, NULL),
(426, 19, '4642320861', 0, '46423', '', '0861', NULL, 2, 4, '2013-11-29 09:37:20', NULL, '2013-11-29 09:47:40', NULL, '2013-11-29 09:47:57', NULL, 0, 2, NULL, '2013-11-29 09:37:20', NULL, NULL),
(427, 20, '4642325244', 0, '46423', '', '5244', NULL, 2, 4, '2013-11-29 09:48:50', NULL, '2013-11-29 09:53:13', NULL, '2013-11-29 09:57:42', NULL, 0, 2, NULL, '2013-11-29 09:48:50', NULL, NULL),
(428, 21, '46423101546', 0, '46423', '', '01546', NULL, 1, 4, '2013-11-29 09:50:10', NULL, '2013-11-29 10:05:45', NULL, '2013-11-29 10:07:20', NULL, 0, 2, NULL, '2013-11-29 09:50:10', NULL, NULL),
(429, 22, '4642314561', 0, '46423', '', '4561', NULL, 1, 4, '2013-11-29 09:53:27', NULL, '2013-11-29 10:09:23', NULL, '2013-11-29 10:19:57', NULL, 0, 2, NULL, '2013-11-29 09:53:27', NULL, NULL),
(430, 23, '46423105152', 0, '46423', '', '05152', NULL, 1, 4, '2013-11-29 09:54:38', NULL, '2013-11-29 10:27:10', NULL, '2013-11-29 10:27:24', NULL, 0, 2, NULL, '2013-11-29 09:54:38', NULL, NULL),
(431, 24, '4642314419', 0, '46423', '', '4419', NULL, 1, 4, '2013-11-29 09:55:54', NULL, '2013-11-29 10:37:11', NULL, '2013-11-29 10:37:54', NULL, 0, 2, NULL, '2013-11-29 09:55:54', NULL, NULL),
(432, 25, '4642324182', 0, '46423', '', '4182', NULL, 2, 4, '2013-11-29 09:58:43', NULL, '2013-11-29 10:05:06', NULL, '2013-11-29 10:05:30', NULL, 0, 2, NULL, '2013-11-29 09:58:43', NULL, NULL),
(433, 26, '4642314315', 0, '46423', '', '4315', NULL, 1, 4, '2013-11-29 10:06:55', NULL, '2013-11-29 10:40:20', NULL, '2013-11-29 10:50:12', NULL, 0, 2, NULL, '2013-11-29 10:06:55', NULL, NULL),
(434, 27, '4642312714', 0, '46423', '', '2714', NULL, 1, 4, '2013-11-29 10:07:15', NULL, NULL, NULL, '2013-11-29 11:01:42', NULL, 0, 2, NULL, '2013-11-29 10:07:15', NULL, NULL),
(435, 28, '4642312225', 0, '46423', '', '2225', NULL, 1, 4, '2013-11-29 10:08:57', NULL, NULL, NULL, '2013-11-29 10:54:23', NULL, 0, 2, NULL, '2013-11-29 10:08:57', NULL, NULL),
(436, 29, '4642322073', 0, '46423', '', '2073', NULL, 2, 4, '2013-11-29 10:34:00', NULL, '2013-11-29 10:40:19', NULL, '2013-11-29 10:42:36', NULL, 0, 2, NULL, '2013-11-29 10:34:00', NULL, NULL),
(437, 30, '4642322576', 0, '46423', '', '2576', NULL, 2, 4, '2013-11-29 10:34:26', NULL, '2013-11-29 10:42:49', NULL, '2013-11-29 10:47:35', NULL, 0, 2, NULL, '2013-11-29 10:34:26', NULL, NULL),
(438, 31, '46423205559', 0, '46423', '', '05559', NULL, 2, 4, '2013-11-29 10:47:57', NULL, '2013-11-29 10:56:58', NULL, '2013-11-29 10:57:11', NULL, 0, 2, NULL, '2013-11-29 10:47:57', NULL, NULL),
(439, 1, '46423105602', 0, '46423', '', '05602', NULL, 1, 4, '2013-12-02 11:32:02', NULL, '2013-12-02 12:58:34', NULL, '2013-12-02 12:58:40', NULL, 0, 2, NULL, '2013-12-02 11:32:02', NULL, NULL),
(440, 2, '4642321424', 0, '46423', '', '1424', NULL, 2, 4, '2013-12-02 12:14:52', NULL, '2013-12-02 12:54:49', NULL, '2013-12-02 12:55:30', NULL, 0, 2, NULL, '2013-12-02 12:14:52', NULL, NULL),
(441, 3, '4642311145', 0, '46423', '', '1145', NULL, 1, 4, '2013-12-02 12:26:38', NULL, '2013-12-02 13:12:34', NULL, '2013-12-02 13:19:03', NULL, 0, 2, NULL, '2013-12-02 12:26:38', NULL, NULL),
(442, 4, '4642311326', 0, '46423', '', '1326', NULL, 1, 4, '2013-12-02 12:39:03', NULL, '2013-12-02 13:56:55', NULL, '2013-12-02 14:02:11', NULL, 0, 2, NULL, '2013-12-02 12:39:03', NULL, NULL),
(443, 5, '4642310830', 0, '46423', '', '0830', NULL, 1, 4, '2013-12-02 12:49:10', NULL, '2013-12-02 14:25:05', NULL, '2013-12-02 14:45:35', NULL, 0, 2, NULL, '2013-12-02 12:49:10', NULL, NULL),
(444, 6, '4642310384', 0, '46423', '', '0384', NULL, 1, 4, '2013-12-02 12:52:31', NULL, '2013-12-02 12:53:32', NULL, '2013-12-02 12:58:31', NULL, 0, 2, NULL, '2013-12-02 12:52:31', NULL, NULL),
(445, 7, '4642325212', 0, '46423', '', '5212', NULL, 2, 4, '2013-12-02 12:53:48', NULL, '2013-12-02 12:55:39', NULL, '2013-12-02 12:55:51', NULL, 0, 2, NULL, '2013-12-02 12:53:48', NULL, NULL),
(446, 8, '4642320886', 0, '46423', '', '0886', NULL, 2, 4, '2013-12-02 13:23:56', NULL, '2013-12-02 13:34:20', NULL, '2013-12-02 13:34:50', NULL, 0, 2, NULL, '2013-12-02 13:23:56', NULL, NULL),
(447, 9, '4642325157', 0, '46423', '', '5157', NULL, 2, 4, '2013-12-02 13:30:20', NULL, '2013-12-02 13:37:19', NULL, '2013-12-02 13:38:01', NULL, 0, 2, NULL, '2013-12-02 13:30:20', NULL, NULL),
(448, 10, '4642323600', 0, '46423', '', '3600', NULL, 2, 4, '2013-12-02 13:40:15', NULL, NULL, NULL, '2013-12-02 13:53:31', NULL, 0, 2, NULL, '2013-12-02 13:40:15', NULL, NULL),
(449, 11, '4642322127', 0, '46423', '', '2127', NULL, 2, 4, '2013-12-02 13:40:29', NULL, '2013-12-02 13:52:18', NULL, '2013-12-02 13:52:55', NULL, 0, 2, NULL, '2013-12-02 13:40:29', NULL, NULL),
(450, 12, '46423204644', 0, '46423', '', '04644', NULL, 2, 4, '2013-12-02 13:43:33', NULL, '2013-12-02 13:55:25', NULL, '2013-12-02 13:59:50', NULL, 0, 2, NULL, '2013-12-02 13:43:33', NULL, NULL),
(451, 13, '4642322568', 0, '46423', '', '2568', NULL, 2, 4, '2013-12-02 13:44:06', NULL, '2013-12-02 14:04:46', NULL, '2013-12-02 14:05:08', NULL, 0, 2, NULL, '2013-12-02 13:44:06', NULL, NULL),
(452, 14, '4642322150', 0, '46423', '', '2150', NULL, 2, 4, '2013-12-02 13:45:28', NULL, '2013-12-02 14:08:18', NULL, '2013-12-02 14:08:35', NULL, 0, 2, NULL, '2013-12-02 13:45:28', NULL, NULL),
(453, 15, '4642312127', 0, '46423', '', '2127', NULL, 1, 4, '2013-12-02 13:53:57', NULL, '2013-12-02 14:51:04', NULL, '2013-12-02 14:51:48', NULL, 0, 2, NULL, '2013-12-02 13:53:57', NULL, NULL),
(454, 16, '4642310639', 0, '46423', '', '0639', NULL, 1, 4, '2013-12-02 13:59:14', NULL, '2013-12-02 14:54:18', NULL, '2013-12-02 14:54:43', NULL, 0, 2, NULL, '2013-12-02 13:59:14', NULL, NULL),
(455, 17, '46423105559', 0, '46423', '', '05559', NULL, 1, 4, '2013-12-02 14:02:40', NULL, NULL, NULL, '2013-12-02 15:36:29', NULL, 0, 2, NULL, '2013-12-02 14:02:40', NULL, NULL),
(456, 18, '4642311474', 0, '46423', '', '1474', NULL, 1, 4, '2013-12-02 14:15:21', NULL, NULL, NULL, '2013-12-02 15:36:34', NULL, 0, 2, NULL, '2013-12-02 14:15:21', NULL, NULL),
(457, 19, '4642311826', 0, '46423', '', '1826', NULL, 1, 4, '2013-12-02 14:20:51', NULL, '2013-12-02 15:36:44', NULL, '2013-12-02 15:40:36', NULL, 0, 2, NULL, '2013-12-02 14:20:51', NULL, NULL),
(458, 20, '4642320923', 0, '46423', '', '0923', NULL, 2, 4, '2013-12-02 14:28:59', NULL, '2013-12-02 14:31:45', NULL, '2013-12-02 14:32:05', NULL, 0, 2, NULL, '2013-12-02 14:28:59', NULL, NULL),
(459, 21, '4642323547', 0, '46423', '', '3547', NULL, 2, 4, '2013-12-02 14:34:07', NULL, '2013-12-02 14:35:49', NULL, '2013-12-02 14:36:05', NULL, 0, 2, NULL, '2013-12-02 14:34:07', NULL, NULL),
(460, 22, '4642312818', 0, '46423', '', '2818', NULL, 1, 4, '2013-12-02 14:46:59', NULL, '2013-12-02 14:51:48', NULL, '2013-12-02 14:53:34', NULL, 0, 2, NULL, '2013-12-02 14:46:59', NULL, NULL),
(461, 23, '4642312714', 0, '46423', '', '2714', NULL, 1, 4, '2013-12-02 14:48:40', NULL, NULL, NULL, '2013-12-02 15:43:04', NULL, 0, 2, NULL, '2013-12-02 14:48:40', NULL, NULL),
(462, 24, '4642310631', 0, '46423', '', '0631', NULL, 1, 4, '2013-12-02 14:53:26', NULL, '2013-12-02 15:43:14', NULL, '2013-12-02 15:46:36', NULL, 0, 2, NULL, '2013-12-02 14:53:26', NULL, NULL),
(463, 25, '4642310400', 0, '46423', '', '0400', NULL, 1, 4, '2013-12-02 14:54:31', NULL, '2013-12-02 16:08:38', NULL, '2013-12-02 16:09:52', NULL, 0, 2, NULL, '2013-12-02 14:54:31', NULL, NULL),
(464, 26, '4642312975', 0, '46423', '', '2975', NULL, 1, 4, '2013-12-02 14:54:37', NULL, NULL, NULL, '2013-12-02 15:36:54', NULL, 0, 2, NULL, '2013-12-02 14:54:37', NULL, NULL),
(465, 27, '4642324837', 0, '46423', '', '4837', NULL, 2, 4, '2013-12-02 15:31:32', NULL, NULL, NULL, '2013-12-02 15:38:13', NULL, 0, 2, NULL, '2013-12-02 15:31:32', NULL, NULL),
(466, 28, '4642313026', 0, '46423', '', '3026', NULL, 1, 4, '2013-12-02 15:31:47', NULL, '2013-12-02 16:15:40', NULL, '2013-12-02 16:15:53', NULL, 0, 2, NULL, '2013-12-02 15:31:47', NULL, NULL),
(467, 29, '4642314578', 0, '46423', '', '4578', NULL, 1, 4, '2013-12-02 15:44:51', NULL, '2013-12-02 16:28:24', NULL, '2013-12-02 16:34:00', NULL, 0, 2, NULL, '2013-12-02 15:44:51', NULL, NULL),
(468, 30, '4642312714', 0, '46423', '', '2714', NULL, 1, 4, '2013-12-02 15:47:31', NULL, '2013-12-02 15:48:19', NULL, '2013-12-02 15:49:06', NULL, 0, 2, NULL, '2013-12-02 15:47:31', NULL, NULL),
(469, 31, '4642321311', 0, '46423', '', '1311', NULL, 2, 4, '2013-12-02 15:49:41', NULL, '2013-12-02 15:53:55', NULL, '2013-12-02 15:54:55', NULL, 0, 2, NULL, '2013-12-02 15:49:41', NULL, NULL),
(470, 32, '4642314275', 0, '46423', '', '4275', NULL, 1, 4, '2013-12-02 15:52:55', NULL, '2013-12-02 16:34:09', NULL, '2013-12-02 16:59:28', NULL, 0, 2, NULL, '2013-12-02 15:52:55', NULL, NULL),
(471, 33, '4642315447', 0, '46423', '', '5447', NULL, 1, 4, '2013-12-02 15:55:35', NULL, '2013-12-02 17:00:44', NULL, '2013-12-02 17:04:20', NULL, 0, 2, NULL, '2013-12-02 15:55:35', NULL, NULL),
(472, 34, '4642321718', 0, '46423', '', '1718', NULL, 2, 4, '2013-12-02 15:56:26', NULL, NULL, NULL, '2013-12-02 15:58:45', NULL, 0, 2, NULL, '2013-12-02 15:56:26', NULL, NULL),
(473, 35, '4642313388', 0, '46423', '', '3388', NULL, 1, 4, '2013-12-02 16:08:58', NULL, '2013-12-02 17:17:56', NULL, '2013-12-02 17:19:08', NULL, 0, 2, NULL, '2013-12-02 16:08:58', NULL, NULL),
(474, 36, '46423104233', 0, '46423', '', '04233', NULL, 1, 4, '2013-12-02 16:41:11', NULL, '2013-12-02 17:31:59', NULL, '2013-12-02 17:32:01', NULL, 0, 2, NULL, '2013-12-02 16:41:11', NULL, NULL),
(475, 37, '4642313050', 0, '46423', '', '3050', NULL, 1, 4, '2013-12-02 17:00:03', NULL, '2013-12-02 17:23:53', NULL, '2013-12-02 17:31:54', NULL, 0, 2, NULL, '2013-12-02 17:00:03', NULL, NULL),
(476, 38, '4642321881', 0, '46423', '', '1881', NULL, 2, 4, '2013-12-02 17:07:56', NULL, '2013-12-02 17:14:05', NULL, NULL, NULL, 0, 2, NULL, '2013-12-02 17:07:56', NULL, NULL),
(477, 39, '4642322564', 0, '46423', '', '2564', NULL, 2, 4, '2013-12-02 17:15:24', NULL, '2013-12-02 17:32:40', NULL, '2013-12-02 17:33:14', NULL, 0, 2, NULL, '2013-12-02 17:15:24', NULL, NULL),
(478, 40, '4642313293', 0, '46423', '', '3293', NULL, 1, 4, '2013-12-02 17:37:53', NULL, '2013-12-02 18:08:13', NULL, '2013-12-02 18:09:12', NULL, 0, 2, NULL, '2013-12-02 17:37:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_barcode_log`
--

CREATE TABLE IF NOT EXISTS `nocore_barcode_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `barcode` varchar(22) COLLATE utf8_bin DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `loginWhen` datetime DEFAULT NULL,
  `core_localserverID` int(11) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `nocore_barcode_log`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_barcode_log_full`
--

CREATE TABLE IF NOT EXISTS `nocore_barcode_log_full` (
  `fullid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) unsigned NOT NULL,
  `barcode` varchar(22) COLLATE utf8_bin DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `loginWhen` datetime DEFAULT NULL,
  `core_localserverID` int(11) unsigned DEFAULT '1',
  PRIMARY KEY (`fullid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `nocore_barcode_log_full`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_clinic`
--

CREATE TABLE IF NOT EXISTS `nocore_clinic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `message` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `nocore_clinic`
--

INSERT INTO `nocore_clinic` (`id`, `name`, `message`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'Rendelő', NULL, 1, 2, NULL, NULL, 2, '2013-11-11 12:53:39');

-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_clinic_order`
--

CREATE TABLE IF NOT EXISTS `nocore_clinic_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nocore_clinicID` int(11) unsigned DEFAULT NULL,
  `nocore_doctorID` int(11) unsigned DEFAULT NULL,
  `startDate` date NOT NULL,
  `stopDate` date NOT NULL,
  `information` varchar(500) COLLATE utf8_bin NOT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- A tábla adatainak kiíratása `nocore_clinic_order`
--

INSERT INTO `nocore_clinic_order` (`id`, `nocore_clinicID`, `nocore_doctorID`, `startDate`, `stopDate`, `information`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(2, 2, 1, '2012-06-25', '2020-06-25', '', 1, 2, NULL, NULL, 2, '2013-08-05 13:39:20');

-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_doctor`
--

CREATE TABLE IF NOT EXISTS `nocore_doctor` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sealNumber` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zipcode` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `settlement` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `information` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `nurse` int(1) unsigned DEFAULT '1',
  `licence` varchar(10) COLLATE utf8_bin NOT NULL,
  `patientTime` int(10) unsigned DEFAULT NULL,
  `bannerMaximum` int(2) unsigned DEFAULT NULL,
  `marqueeMaximum` int(2) unsigned DEFAULT NULL,
  `alwaysView` int(1) unsigned DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `nocore_doctor`
--

INSERT INTO `nocore_doctor` (`id`, `sealNumber`, `name`, `zipcode`, `settlement`, `address`, `phone`, `information`, `nurse`, `licence`, `patientTime`, `bannerMaximum`, `marqueeMaximum`, `alwaysView`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, '46423', 'Dr. Hasitz Ágnes', '2000', 'Szentendre', NULL, NULL, NULL, 1, '0024642300', 15, 20, 10, 1, 1, 2, 3, '2013-10-30 17:00:03', 3, '2013-11-26 15:32:42');

-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_doctor_advert`
--

CREATE TABLE IF NOT EXISTS `nocore_doctor_advert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nocore_doctorID` int(11) unsigned DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `name` varchar(100) COLLATE utf8_bin DEFAULT '',
  `sequenceId` int(10) unsigned DEFAULT NULL,
  `advertFileName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `textValue` tinytext COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  `lastvisit` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=20 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_advert`
--

INSERT INTO `nocore_doctor_advert` (`id`, `nocore_doctorID`, `description`, `name`, `sequenceId`, `advertFileName`, `textValue`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`, `lastvisit`) VALUES
(1, 1, NULL, '1', 1, 'Diada_4.JPG', '1', 1, 2, 11, '2013-10-30 17:15:11', NULL, NULL, NULL),
(2, 1, NULL, '2', 2, 'Diadb_5.JPG', '2', 1, 2, 11, '2013-10-30 17:15:45', NULL, NULL, NULL),
(3, 1, NULL, '3', 3, 'Diadc_6.JPG', '3', 1, 2, 11, '2013-10-30 17:16:16', NULL, NULL, NULL),
(4, 1, NULL, '4', 4, 'Diadd_7.JPG', '4', 1, 2, 11, '2013-10-30 17:16:47', NULL, NULL, NULL),
(5, 1, NULL, '5', 5, 'Diade_8.JPG', '5', 1, 2, 11, '2013-10-30 17:17:18', NULL, NULL, NULL),
(6, 1, NULL, '6', 6, 'Diadf_9.JPG', '6', 1, 2, 11, '2013-10-30 17:17:47', NULL, NULL, NULL),
(7, 1, NULL, '7', 7, 'o1_10.JPG', '7', 1, 2, 11, '2013-10-30 17:19:11', NULL, NULL, NULL),
(8, 1, NULL, '8', 8, 'o2_11.JPG', '8', 1, 2, 11, '2013-10-30 17:19:51', NULL, NULL, NULL),
(9, 1, NULL, '9', 9, 'o3_12.JPG', '9', 1, 2, 11, '2013-10-30 17:20:21', NULL, NULL, NULL),
(10, 1, NULL, '10', 10, 'o4_13.JPG', '10', 1, 2, 11, '2013-10-30 17:20:53', NULL, NULL, NULL),
(11, 1, NULL, '11', 11, 'o5_14.JPG', '11', 1, 2, 11, '2013-10-30 17:21:25', NULL, NULL, NULL),
(12, 1, NULL, '12', 12, 'Dia1_15.PNG', '12', 1, 2, 11, '2013-10-30 17:31:28', NULL, NULL, NULL),
(13, 1, NULL, '13', 13, 'Dia2_16.PNG', '13', 1, 2, 11, '2013-10-30 17:32:06', NULL, NULL, NULL),
(14, 1, NULL, '14', 14, 'Dia3_17.PNG', '14', 1, 2, 11, '2013-10-30 17:32:40', NULL, NULL, NULL),
(15, 1, NULL, '15', 15, 'Dia4_18.PNG', '15', 1, 2, 11, '2013-10-30 17:33:14', NULL, NULL, NULL),
(16, 1, NULL, '16', 16, 'Dia5_19.PNG', '16', 1, 2, 11, '2013-10-30 17:33:57', NULL, NULL, NULL),
(17, 1, NULL, '17', 17, 'Dia6_20.PNG', '17', 1, 2, 11, '2013-10-30 17:34:33', NULL, NULL, NULL),
(18, 1, NULL, '18', 18, 'Dia7_21.PNG', '18', 1, 2, 11, '2013-10-30 17:35:06', NULL, NULL, NULL),
(19, 1, NULL, '19', 19, 'Dia8_22.PNG', '19', 1, 2, 11, '2013-10-30 17:35:39', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_doctor_ambulance`
--

CREATE TABLE IF NOT EXISTS `nocore_doctor_ambulance` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nocore_doctorID` int(11) unsigned NOT NULL,
  `patientID` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `message` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_ambulance`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_doctor_deputy`
--

CREATE TABLE IF NOT EXISTS `nocore_doctor_deputy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sealNumber` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `sealNumberDeputy` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `stopDate` date DEFAULT NULL,
  `message` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_deputy`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_doctor_marquee`
--

CREATE TABLE IF NOT EXISTS `nocore_doctor_marquee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nocore_doctorID` int(11) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `message` varchar(500) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_marquee`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_doctor_order`
--

CREATE TABLE IF NOT EXISTS `nocore_doctor_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nocore_doctorID` int(11) unsigned NOT NULL,
  `nocore_doctor_order_dayID` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `stopTime` time DEFAULT NULL,
  `barcodeStart` int(11) unsigned DEFAULT NULL,
  `barcodeStop` int(11) unsigned DEFAULT NULL,
  `doctorIs` int(1) unsigned DEFAULT '1',
  `nurseIs` int(1) unsigned DEFAULT '1',
  `nocore_doctor_order_typeID` int(11) unsigned DEFAULT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_order`
--

INSERT INTO `nocore_doctor_order` (`id`, `nocore_doctorID`, `nocore_doctor_order_dayID`, `startTime`, `stopTime`, `barcodeStart`, `barcodeStop`, `doctorIs`, `nurseIs`, `nocore_doctor_order_typeID`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(17, 1, '2Thu', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 2, 11, '2013-10-30 18:03:19', 3, '2013-11-12 11:07:22'),
(18, 1, '1Thu', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 2, 11, '2013-10-30 18:04:09', 3, '2013-11-12 11:06:59'),
(19, 1, '1Mon', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 2, 2, '2013-11-04 11:49:08', 3, '2013-11-12 11:06:32'),
(20, 1, '2Mon', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 2, 2, '2013-11-04 11:50:38', 3, '2013-11-12 11:06:01'),
(21, 1, '1Tue', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 2, 2, '2013-11-04 11:51:44', 3, '2013-11-12 11:05:09'),
(22, 1, '2Tue', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 2, 2, '2013-11-04 11:52:37', 3, '2013-11-12 11:04:42'),
(23, 1, '1Fri', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 2, 2, '2013-11-04 11:54:03', 3, '2013-11-12 11:04:08'),
(24, 1, '2Fri', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 2, 2, '2013-11-04 11:54:55', 3, '2013-12-03 13:52:27'),
(15, 1, '1Wed', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 2, 11, '2013-10-30 17:37:13', 3, '2013-11-12 11:08:54'),
(16, 1, '2Wed', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 2, 11, '2013-10-30 17:38:10', 3, '2013-11-12 11:07:54');

-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_doctor_order_day`
--

CREATE TABLE IF NOT EXISTS `nocore_doctor_order_day` (
  `id` varchar(4) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- A tábla adatainak kiíratása `nocore_doctor_order_day`
--

INSERT INTO `nocore_doctor_order_day` (`id`, `name`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
('1Mon', 'Hétfő páratlan', 1, NULL, NULL, NULL, NULL, NULL),
('1Tue', 'Kedd Páratlan', 1, NULL, NULL, NULL, NULL, NULL),
('1Wed', 'Szerda Páratlan', 1, NULL, NULL, NULL, NULL, NULL),
('1Thu', 'Csötörtök Páratlan', 1, NULL, NULL, NULL, NULL, NULL),
('1Fri', 'Péntek Páratlan', 1, NULL, NULL, NULL, NULL, NULL),
('1Sat', 'Szombat Páratlan', 1, NULL, NULL, NULL, NULL, NULL),
('1Sun', 'Vasárnap páratlan', 1, NULL, NULL, NULL, NULL, NULL),
('2Mon', 'Hétfő páros', 1, NULL, NULL, NULL, NULL, NULL),
('2Tue', 'Kedd páros', 1, NULL, NULL, NULL, NULL, NULL),
('2Wed', 'Szerda páros', 1, NULL, NULL, NULL, NULL, NULL),
('2Thu', 'Csütörtök páros', 1, NULL, NULL, NULL, NULL, NULL),
('2Fri', 'Péntek páros', 1, NULL, NULL, NULL, NULL, NULL),
('2Sat', 'Szombat páros', 1, NULL, NULL, NULL, NULL, NULL),
('2Sun', 'Vasárnap páros', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_doctor_order_type`
--

CREATE TABLE IF NOT EXISTS `nocore_doctor_order_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_order_type`
--

INSERT INTO `nocore_doctor_order_type` (`id`, `name`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'Alap', 1, NULL, 2, '2013-08-02 12:04:18', NULL, NULL),
(2, 'Szak', 1, NULL, 2, '2013-08-09 12:01:43', NULL, NULL),
(3, 'Belgyógyászat', 1, NULL, 2, '2013-08-09 12:55:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_patient`
--

CREATE TABLE IF NOT EXISTS `nocore_patient` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nocore_doctorID` int(11) unsigned DEFAULT NULL,
  `tajNumber` varchar(9) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `masterCartonNumber` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `loginDate` date DEFAULT NULL,
  `core_genderID` int(1) unsigned DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `nocore_patient`
--


-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_status`
--

CREATE TABLE IF NOT EXISTS `nocore_status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `nocore_doctorID` int(11) unsigned DEFAULT NULL,
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- A tábla adatainak kiíratása `nocore_status`
--

INSERT INTO `nocore_status` (`id`, `name`, `description`, `active`, `nocore_doctorID`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'bejelentkezve', '', 1, NULL, NULL, NULL, NULL, 2, '2013-07-26 11:27:13'),
(2, 'behívás', '', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'ellátás', '', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ellátva', '', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'elment', '', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'előjegyezve', '', 1, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet: `nocore_where`
--

CREATE TABLE IF NOT EXISTS `nocore_where` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `description` text COLLATE utf8_bin,
  `active` int(1) unsigned DEFAULT '1',
  `nocore_doctorID` int(11) unsigned DEFAULT NULL,
  `core_localserverID` int(11) unsigned DEFAULT '1',
  `insertUserID` int(11) unsigned DEFAULT NULL,
  `insertWhen` datetime DEFAULT NULL,
  `modifyUserID` int(11) unsigned DEFAULT NULL,
  `modifyWhen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- A tábla adatainak kiíratása `nocore_where`
--

INSERT INTO `nocore_where` (`id`, `name`, `description`, `active`, `nocore_doctorID`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'Orvoshoz', '', 1, NULL, NULL, NULL, NULL, 2, '2013-09-18 12:37:30'),
(2, 'Nővérhez', '', 1, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
