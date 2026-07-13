-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2013. dec. 03. 15:22
-- Szerver verzió: 5.1.41
-- PHP verzió: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `vir2_006`
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
(1, 'frontend', NULL, 'core_localserverID', '6', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(2, 'frontend', NULL, 'barcodeType', '0', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(3, 'frontend', NULL, 'maxPatientView', '8', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-10-03 15:19:04'),
(4, 'frontend', NULL, 'waitingBoxRefresh', '10', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(5, 'frontend', NULL, 'bannerBoxRefresh', '1800', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(6, 'frontend', NULL, 'marqueeBoxRefresh', '10', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(7, 'frontend', NULL, 'barcodeReadTimeout', '8', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-11-26 12:18:10'),
(8, 'frontend', NULL, 'patientViewTimeout', '8', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-11-26 12:18:26'),
(9, 'frontend', NULL, 'patientViewRefresh', '8', NULL, 1, 1, NULL, NULL, NULL, 3, '2013-12-03 15:15:30'),
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
(26, 'frontend', NULL, 'doctorNameViewNo', '1', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(27, 'frontend', NULL, 'waitingListSetup1920x1080', '750<=>220<=>17<=>6', NULL, 1, 1, NULL, 2, '2013-11-27 11:58:57', 2, '2013-11-27 13:27:42'),
(28, 'frontend', NULL, 'waitingListSetup1360x768', '550<=>180<=>12<=>5', NULL, 1, 1, NULL, 2, '2013-11-27 18:30:10', 2, '2013-11-27 18:51:19'),
(29, 'frontend', NULL, 'waitingListSetup1366x768', '550<=>180<=>12<=>5', NULL, 1, 1, NULL, 2, '2013-11-27 18:43:02', 2, '2013-11-27 18:52:26'),
(30, 'frontend', NULL, 'waitingListSetup1024x768', '550<=>180<=>12<=>5', NULL, 1, 1, NULL, 2, '2013-11-27 18:54:06', NULL, NULL),
(31, 'frontend', NULL, 'waitingListSetup1280x720', '550<=>180<=>12<=>5', NULL, 1, 1, NULL, 2, '2013-11-27 19:01:26', NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- A tábla adatainak kiíratása `core_localserver`
--

INSERT INTO `core_localserver` (`id`, `name`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(6, '006NYIRTELE201311154461HU', NULL, 1, 2, '2013-11-11 11:47:13', 2, '2013-11-15 10:22:59');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- A tábla adatainak kiíratása `core_users`
--

INSERT INTO `core_users` (`id`, `core_userstitleID`, `surname`, `forename`, `nickname`, `password`, `email`, `core_localserverID`, `active`, `description`, `lastLoginWhen`, `lastLogoutWhen`, `activationCode`, `regmailWhen`, `activationWhen`, `core_groupsID`, `pictureURL`, `newsletter`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`, `isReadWhen`, `isReadUserID`) VALUES
(1, NULL, NULL, NULL, 'Guest', '', '', NULL, 1, NULL, NULL, '2013-10-28 12:19:13', NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, 2, '2012-01-24 11:06:15', '2006-03-28 23:38:24', 2),
(2, NULL, 'Szabó', 'Sándor', 'SzSanyi', 'phoenix', 'rodnas@uw.hu', NULL, 1, NULL, '2013-09-02 13:09:13', '2013-11-26 13:56:38', NULL, NULL, NULL, 2, NULL, 0, NULL, '2005-02-19 09:00:00', 2, '2013-11-04 10:14:52', '2009-06-03 09:01:09', 2),
(3, NULL, 'Varga', 'Tamás', 'tomi', 'tomi', 'varga.tamas@dericom.hu', NULL, 1, NULL, '2013-08-30 09:55:20', '2013-11-15 14:38:51', NULL, NULL, NULL, 2, NULL, 0, 2, '2013-08-05 11:01:17', NULL, NULL, '2013-08-05 11:01:17', 2),
(4, 1, 'Hasitz', 'Ăgnes', 'hasitza', 'hasitza', 'hasitza@gmail.com', 2, 1, NULL, NULL, '2013-10-30 17:43:23', NULL, NULL, NULL, 5, NULL, 0, 3, '2013-10-30 17:05:33', NULL, NULL, '2013-10-30 17:05:33', 3),
(5, 1, 'Koncz', 'Erika', 'koncz', 'koncz', 'tamas.varga@deicom.hu', 3, 1, NULL, NULL, '2013-10-31 09:50:59', NULL, NULL, NULL, 5, NULL, 0, 3, '2013-10-31 09:31:00', 3, '2013-10-31 09:44:59', '2013-10-31 09:31:00', 3),
(6, 1, 'Szeszler', 'Györgyi', 'szeszler', 'szeszler', 'info@dericom.hu', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 0, 3, '2013-10-31 09:34:17', 3, '2013-10-31 09:44:51', '2013-10-31 09:34:17', 3),
(7, 1, 'Páczi', 'Antal', 'paczi', 'paczi', 'paczia3@gmail.com', 4, 1, NULL, NULL, '2013-11-11 16:10:13', NULL, NULL, NULL, 5, NULL, 0, 3, '2013-11-11 14:52:24', NULL, NULL, '2013-11-11 14:52:24', 3),
(8, 1, 'Kerényi', 'Attila', 'kerus', 'kerus', 'kerusrendelo@invitel.hu', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 0, 3, '2013-11-12 09:10:43', NULL, NULL, '2013-11-12 09:10:43', 3),
(9, 1, 'Takács', 'Anikó', 'aniko', 'aniko', 'rendelo@pentam.t-online.hu', 6, 1, NULL, NULL, '2013-11-26 13:40:25', NULL, NULL, NULL, 5, NULL, 0, 3, '2013-11-15 14:38:26', 9, '2013-11-19 12:31:32', '2013-11-15 14:38:26', 3);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- A tábla adatainak kiíratása `core_users_config`
--

INSERT INTO `core_users_config` (`id`, `fieldName`, `fieldValue`, `autoload`, `active`, `core_localserverID`, `core_usersID`, `insertWhen`, `modifyWhen`) VALUES
(1, 'layout', 'layoutsetup', NULL, 1, 6, 9, '2013-11-26 13:19:08', '2013-11-26 13:25:32'),
(2, 'modulSelect', 'core_calendar', NULL, 1, 6, 9, '2013-11-26 13:19:09', '2013-11-26 13:40:19'),
(3, 'layout', 'layoutsetup', NULL, 1, 6, 2, '2013-11-26 13:40:37', '2013-11-26 13:40:38'),
(4, 'modulSelect', 'nocore_doctor_advert', NULL, 1, 6, 2, '2013-11-26 13:40:38', '2013-11-26 14:01:47'),
(5, 'layout', 'layoutsetup', NULL, 1, 6, 3, '2013-12-03 15:14:05', '2013-12-03 15:14:05'),
(6, 'modulSelect', 'nocore_doctor_order', NULL, 1, 6, 3, '2013-12-03 15:14:05', '2013-12-03 15:16:12');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `nocore_barcode`
--


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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=295 ;

--
-- A tábla adatainak kiíratása `nocore_barcode_full`
--

INSERT INTO `nocore_barcode_full` (`fullid`, `id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 1, '4248513751', 0, '42485', '', '3751', NULL, 1, 4, '2013-11-15 15:41:11', NULL, '2013-11-15 15:42:34', NULL, '2013-11-15 15:45:16', NULL, 0, 6, NULL, '2013-11-15 15:41:11', NULL, NULL),
(2, 2, '4248520177', 0, '42485', '', '0177', NULL, 2, 4, '2013-11-15 15:41:24', 0, '2013-11-15 15:43:08', NULL, '2013-11-15 15:43:27', NULL, 0, 6, NULL, '2013-11-15 15:41:24', NULL, NULL),
(3, 3, '4248523604', 0, '42485', '', '3604', NULL, 2, 4, '2013-11-15 15:41:37', NULL, '2013-11-15 15:42:42', NULL, '2013-11-15 15:45:10', NULL, 0, 6, NULL, '2013-11-15 15:41:37', NULL, NULL),
(4, 4, '042485109990', 0, '42485', '', '09990', NULL, 1, 4, '2013-11-15 15:41:47', 0, NULL, NULL, '2013-11-15 15:43:50', NULL, 0, 6, NULL, '2013-11-15 15:41:47', NULL, NULL),
(5, 5, '042485209991', 0, '42485', '', '09991', NULL, 2, 4, '2013-11-15 15:41:54', 0, NULL, NULL, '2013-11-15 15:43:48', NULL, 0, 6, NULL, '2013-11-15 15:41:54', NULL, NULL),
(6, 6, '042485109992', 0, '42485', '', '09992', NULL, 1, 4, '2013-11-15 15:42:04', 0, NULL, NULL, '2013-11-15 15:43:20', NULL, 0, 6, NULL, '2013-11-15 15:42:04', NULL, NULL),
(7, 7, '042485109990', 0, '42485', '', '09990', NULL, 1, 4, '2013-11-15 15:44:12', 0, NULL, NULL, '2013-11-15 15:44:49', NULL, 0, 6, NULL, '2013-11-15 15:44:12', NULL, NULL),
(8, 8, '042485209991', 0, '42485', '', '09991', NULL, 2, 4, '2013-11-15 15:44:17', 0, NULL, NULL, '2013-11-15 15:44:47', NULL, 0, 6, NULL, '2013-11-15 15:44:17', NULL, NULL),
(9, 1, '4248511956', 0, '42485', '', '1956', NULL, 1, 4, '2013-11-18 11:53:43', NULL, '2013-11-18 13:10:07', NULL, '2013-11-18 13:10:20', NULL, 0, 6, NULL, '2013-11-18 11:53:43', NULL, NULL),
(10, 2, '4248510561', 0, '42485', '', '0561', NULL, 1, 4, '2013-11-18 12:48:31', NULL, '2013-11-18 13:23:25', NULL, '2013-11-18 13:25:38', NULL, 0, 6, NULL, '2013-11-18 12:48:31', NULL, NULL),
(11, 3, '4248520102', 0, '42485', '', '0102', NULL, 2, 4, '2013-11-18 12:48:35', NULL, '2013-11-18 12:51:57', NULL, '2013-11-18 12:54:52', NULL, 0, 6, NULL, '2013-11-18 12:48:35', NULL, NULL),
(12, 4, '4248511134', 0, '42485', '', '1134', NULL, 1, 4, '2013-11-18 12:48:40', NULL, '2013-11-18 13:37:22', NULL, '2013-11-18 13:37:45', NULL, 0, 6, NULL, '2013-11-18 12:48:40', NULL, NULL),
(13, 5, '4248521234', 0, '42485', '', '1234', NULL, 2, 4, '2013-11-18 12:48:43', NULL, '2013-11-18 13:02:18', NULL, '2013-11-18 13:02:28', NULL, 0, 6, NULL, '2013-11-18 12:48:43', NULL, NULL),
(14, 6, '4248512100', 0, '42485', '', '2100', NULL, 1, 4, '2013-11-18 12:49:14', NULL, '2013-11-18 13:42:21', NULL, '2013-11-18 13:43:44', NULL, 0, 6, NULL, '2013-11-18 12:49:14', NULL, NULL),
(15, 7, '4248513631', 0, '42485', '', '3631', NULL, 1, 4, '2013-11-18 12:49:17', NULL, '2013-11-18 13:49:20', NULL, '2013-11-18 13:51:25', NULL, 0, 6, NULL, '2013-11-18 12:49:17', NULL, NULL),
(16, 8, '4248513020', 0, '42485', '', '3020', NULL, 1, 4, '2013-11-18 12:49:22', NULL, '2013-11-18 13:56:18', NULL, '2013-11-18 13:57:02', NULL, 0, 6, NULL, '2013-11-18 12:49:22', NULL, NULL),
(17, 9, '4248511558', 0, '42485', '', '1558', NULL, 1, 4, '2013-11-18 12:49:29', NULL, '2013-11-18 14:00:19', NULL, '2013-11-18 14:02:44', NULL, 0, 6, NULL, '2013-11-18 12:49:29', NULL, NULL),
(18, 10, '4248512463', 0, '42485', '', '2463', NULL, 1, 4, '2013-11-18 12:49:33', NULL, '2013-11-18 14:02:50', NULL, '2013-11-18 14:03:23', NULL, 0, 6, NULL, '2013-11-18 12:49:33', NULL, NULL),
(19, 11, '4248520142', 0, '42485', '', '0142', NULL, 2, 4, '2013-11-18 12:50:40', NULL, '2013-11-18 14:05:01', NULL, '2013-11-18 14:05:05', NULL, 0, 6, NULL, '2013-11-18 12:50:40', NULL, NULL),
(20, 12, '4248521023', 0, '42485', '', '1023', NULL, 2, 4, '2013-11-18 12:53:04', NULL, '2013-11-18 14:05:57', NULL, '2013-11-18 14:06:31', NULL, 0, 6, NULL, '2013-11-18 12:53:04', NULL, NULL),
(21, 13, '4248510564', 0, '42485', '', '0564', NULL, 1, 4, '2013-11-18 12:53:36', NULL, '2013-11-18 14:05:11', NULL, '2013-11-18 14:05:16', NULL, 0, 6, NULL, '2013-11-18 12:53:36', NULL, NULL),
(22, 14, '4248520395', 0, '42485', '', '0395', NULL, 2, 4, '2013-11-18 12:55:37', NULL, '2013-11-18 14:05:22', NULL, '2013-11-18 14:05:25', NULL, 0, 6, NULL, '2013-11-18 12:55:37', NULL, NULL),
(23, 15, '4248520097', 0, '42485', '', '0097', NULL, 2, 4, '2013-11-18 12:56:17', NULL, '2013-11-18 14:10:51', NULL, '2013-11-18 14:10:57', NULL, 0, 6, NULL, '2013-11-18 12:56:17', NULL, NULL),
(24, 16, '4248520648', 0, '42485', '', '0648', NULL, 2, 4, '2013-11-18 13:05:19', NULL, NULL, NULL, '2013-11-18 14:13:28', NULL, 0, 6, NULL, '2013-11-18 13:05:19', NULL, NULL),
(25, 17, '4248511358', 0, '42485', '', '1358', NULL, 1, 4, '2013-11-18 13:09:02', NULL, '2013-11-18 14:14:25', NULL, '2013-11-18 14:14:26', NULL, 0, 6, NULL, '2013-11-18 13:09:02', NULL, NULL),
(26, 18, '4248521915', 0, '42485', '', '1915', NULL, 2, 4, '2013-11-18 13:13:01', NULL, '2013-11-18 14:17:23', NULL, '2013-11-18 14:21:06', NULL, 0, 6, NULL, '2013-11-18 13:13:01', NULL, NULL),
(27, 19, '4248521356', 0, '42485', '', '1356', NULL, 2, 4, '2013-11-18 13:13:10', NULL, '2013-11-18 14:22:05', NULL, '2013-11-18 14:22:11', NULL, 0, 6, NULL, '2013-11-18 13:13:10', NULL, NULL),
(28, 20, '4248521933', 0, '42485', '', '1933', NULL, 2, 4, '2013-11-18 13:27:16', NULL, '2013-11-18 14:22:37', NULL, '2013-11-18 14:22:37', NULL, 0, 6, NULL, '2013-11-18 13:27:16', NULL, NULL),
(29, 21, '4248521476', 0, '42485', '', '1476', NULL, 2, 4, '2013-11-18 13:28:11', NULL, NULL, NULL, '2013-11-18 14:17:00', NULL, 0, 6, NULL, '2013-11-18 13:28:11', NULL, NULL),
(30, 22, '4248523449', 0, '42485', '', '3449', NULL, 2, 4, '2013-11-18 13:30:11', NULL, '2013-11-18 14:24:13', NULL, '2013-11-18 14:25:43', NULL, 0, 6, NULL, '2013-11-18 13:30:11', NULL, NULL),
(31, 23, '4248512634', 0, '42485', '', '2634', NULL, 1, 4, '2013-11-18 13:47:41', NULL, '2013-11-18 14:28:37', NULL, '2013-11-18 14:29:14', NULL, 0, 6, NULL, '2013-11-18 13:47:41', NULL, NULL),
(32, 24, '4248520784', 0, '42485', '', '0784', NULL, 2, 4, '2013-11-18 14:07:40', NULL, '2013-11-18 14:32:54', NULL, '2013-11-18 14:33:14', NULL, 0, 6, NULL, '2013-11-18 14:07:40', NULL, NULL),
(33, 25, '4248510922', 0, '42485', '', '0922', NULL, 1, 4, '2013-11-18 14:11:28', NULL, '2013-11-18 14:34:36', NULL, '2013-11-18 14:35:56', NULL, 0, 6, NULL, '2013-11-18 14:11:28', NULL, NULL),
(34, 26, '4248512906', 0, '42485', '', '2906', NULL, 1, 4, '2013-11-18 14:15:32', NULL, '2013-11-18 14:36:02', NULL, '2013-11-18 14:40:12', NULL, 0, 6, NULL, '2013-11-18 14:15:32', NULL, NULL),
(35, 27, '4248521999', 0, '42485', '', '1999', NULL, 2, 4, '2013-11-18 14:21:46', NULL, '2013-11-18 14:40:40', NULL, '2013-11-18 14:41:35', NULL, 0, 6, NULL, '2013-11-18 14:21:46', NULL, NULL),
(36, 28, '4248513737', 0, '42485', '', '3737', NULL, 1, 4, '2013-11-18 14:28:44', NULL, '2013-11-18 14:43:11', NULL, '2013-11-18 14:44:12', NULL, 0, 6, NULL, '2013-11-18 14:28:44', NULL, NULL),
(37, 29, '4248510890', 0, '42485', '', '0890', NULL, 1, 4, '2013-11-18 14:34:09', NULL, '2013-11-18 14:45:05', NULL, '2013-11-18 14:45:43', NULL, 0, 6, NULL, '2013-11-18 14:34:09', NULL, NULL),
(38, 30, '4248511972', 0, '42485', '', '1972', NULL, 1, 4, '2013-11-18 14:36:07', NULL, '2013-11-18 14:48:04', NULL, '2013-11-18 14:49:52', NULL, 0, 6, NULL, '2013-11-18 14:36:07', NULL, NULL),
(39, 31, '4248510636', 0, '42485', '', '0636', NULL, 1, 4, '2013-11-18 14:41:52', NULL, '2013-11-18 14:52:11', NULL, '2013-11-18 14:55:59', NULL, 0, 6, NULL, '2013-11-18 14:41:52', NULL, NULL),
(40, 32, '4248520119', 0, '42485', '', '0119', NULL, 2, 4, '2013-11-18 15:02:10', NULL, '2013-11-18 15:14:36', NULL, '2013-11-18 15:17:01', NULL, 0, 6, NULL, '2013-11-18 15:02:10', NULL, NULL),
(41, 33, '4248520573', 0, '42485', '', '0573', NULL, 2, 4, '2013-11-18 15:03:07', NULL, '2013-11-18 15:13:14', NULL, '2013-11-18 15:13:14', NULL, 0, 6, NULL, '2013-11-18 15:03:07', NULL, NULL),
(42, 34, '4248520272', 0, '42485', '', '0272', NULL, 2, 4, '2013-11-18 15:31:42', NULL, '2013-11-18 15:40:30', NULL, '2013-11-18 15:41:06', NULL, 0, 6, NULL, '2013-11-18 15:31:42', NULL, NULL),
(43, 35, '4248523714', 0, '42485', '', '3714', NULL, 2, 4, '2013-11-18 15:33:05', NULL, '2013-11-18 15:43:21', NULL, '2013-11-18 15:43:41', NULL, 0, 6, NULL, '2013-11-18 15:33:05', NULL, NULL),
(44, 36, '4248523720', 0, '42485', '', '3720', NULL, 2, 4, '2013-11-18 15:33:34', NULL, '2013-11-18 15:47:42', NULL, '2013-11-18 15:54:25', NULL, 0, 6, NULL, '2013-11-18 15:33:34', NULL, NULL),
(45, 37, '4248513640', 0, '42485', '', '3640', NULL, 1, 4, '2013-11-18 15:50:35', NULL, '2013-11-18 16:03:07', NULL, '2013-11-18 16:03:38', NULL, 0, 6, NULL, '2013-11-18 15:50:35', NULL, NULL),
(46, 38, '4248513635', 0, '42485', '', '3635', NULL, 1, 4, '2013-11-18 15:54:56', NULL, '2013-11-18 16:05:03', NULL, '2013-11-18 16:05:31', NULL, 0, 6, NULL, '2013-11-18 15:54:56', NULL, NULL),
(47, 39, '4248510117', 0, '42485', '', '0117', NULL, 1, 4, '2013-11-18 15:58:20', NULL, '2013-11-18 16:08:47', NULL, '2013-11-18 16:12:04', NULL, 0, 6, NULL, '2013-11-18 15:58:20', NULL, NULL),
(48, 40, '4248523458', 0, '42485', '', '3458', NULL, 2, 4, '2013-11-18 16:04:15', NULL, '2013-11-18 16:19:51', NULL, '2013-11-18 16:27:23', NULL, 0, 6, NULL, '2013-11-18 16:04:15', NULL, NULL),
(49, 41, '4248521781', 0, '42485', '', '1781', NULL, 2, 4, '2013-11-18 16:09:44', NULL, '2013-11-18 16:27:29', NULL, '2013-11-18 16:27:56', NULL, 0, 6, NULL, '2013-11-18 16:09:44', NULL, NULL),
(50, 42, '4248510856', 0, '42485', '', '0856', NULL, 1, 4, '2013-11-18 16:09:59', NULL, '2013-11-18 16:30:05', NULL, '2013-11-18 16:30:57', NULL, 0, 6, NULL, '2013-11-18 16:09:59', NULL, NULL),
(51, 43, '4248513677', 0, '42485', '', '3677', NULL, 1, 4, '2013-11-18 16:10:57', NULL, '2013-11-18 16:34:15', NULL, '2013-11-18 16:34:59', NULL, 0, 6, NULL, '2013-11-18 16:10:57', NULL, NULL),
(52, 44, '4248521217', 0, '42485', '', '1217', NULL, 2, 4, '2013-11-18 16:16:03', NULL, NULL, NULL, '2013-11-18 16:32:02', NULL, 0, 6, NULL, '2013-11-18 16:16:03', NULL, NULL),
(53, 45, '4248522704', 0, '42485', '', '2704', NULL, 2, 4, '2013-11-18 16:18:33', NULL, '2013-11-18 16:39:24', NULL, '2013-11-18 16:42:29', NULL, 0, 6, NULL, '2013-11-18 16:18:33', NULL, NULL),
(54, 46, '4248511206', 0, '42485', '', '1206', NULL, 1, 4, '2013-11-18 16:19:52', NULL, '2013-11-18 16:43:56', NULL, '2013-11-18 16:44:17', NULL, 0, 6, NULL, '2013-11-18 16:19:52', NULL, NULL),
(55, 47, '4248512837', 0, '42485', '', '2837', NULL, 1, 4, '2013-11-18 16:37:06', NULL, '2013-11-18 16:45:48', NULL, '2013-11-18 16:46:24', NULL, 0, 6, NULL, '2013-11-18 16:37:06', NULL, NULL),
(56, 1, '4248522633', 0, '42485', '', '2633', NULL, 2, 4, '2013-11-19 08:10:47', NULL, '2013-11-19 08:18:30', NULL, '2013-11-19 08:18:50', NULL, 0, 6, NULL, '2013-11-19 08:10:47', NULL, NULL),
(57, 2, '042485209994', 0, '42485', '', '09994', NULL, 2, 4, '2013-11-19 08:10:52', 0, NULL, NULL, '2013-11-19 08:30:11', NULL, 0, 6, NULL, '2013-11-19 08:10:52', NULL, NULL),
(58, 3, '4248512417', 0, '42485', '', '2417', NULL, 1, 4, '2013-11-19 08:10:59', NULL, '2013-11-19 08:15:51', NULL, '2013-11-19 08:18:50', NULL, 0, 6, NULL, '2013-11-19 08:10:59', NULL, NULL),
(59, 4, '4248511387', 0, '42485', '', '1387', NULL, 1, 4, '2013-11-19 08:11:06', NULL, '2013-11-19 08:18:55', NULL, '2013-11-19 08:21:14', NULL, 0, 6, NULL, '2013-11-19 08:11:06', NULL, NULL),
(60, 5, '4248512603', 0, '42485', '', '2603', NULL, 1, 4, '2013-11-19 08:11:24', NULL, '2013-11-19 08:30:05', NULL, '2013-11-19 08:30:10', NULL, 0, 6, NULL, '2013-11-19 08:11:24', NULL, NULL),
(61, 6, '4248522835', 0, '42485', '', '2835', NULL, 2, 4, '2013-11-19 08:11:34', NULL, '2013-11-19 08:21:10', NULL, '2013-11-19 08:22:41', NULL, 0, 6, NULL, '2013-11-19 08:11:34', NULL, NULL),
(62, 7, '4248511014', 0, '42485', '', '1014', NULL, 1, 4, '2013-11-19 08:19:21', NULL, '2013-11-19 08:34:54', NULL, '2013-11-19 08:37:21', NULL, 0, 6, NULL, '2013-11-19 08:19:21', NULL, NULL),
(63, 8, '4248513015', 0, '42485', '', '3015', NULL, 1, 4, '2013-11-19 08:24:31', NULL, '2013-11-19 09:05:07', NULL, '2013-11-19 09:07:22', NULL, 0, 6, NULL, '2013-11-19 08:24:31', NULL, NULL),
(64, 9, '4248511802', 0, '42485', '', '1802', NULL, 1, 4, '2013-11-19 08:28:32', NULL, '2013-11-19 09:10:48', NULL, '2013-11-19 09:11:26', NULL, 0, 6, NULL, '2013-11-19 08:28:32', NULL, NULL),
(65, 10, '4248511603', 0, '42485', '', '1603', NULL, 1, 4, '2013-11-19 08:47:10', NULL, '2013-11-19 09:34:33', NULL, '2013-11-19 09:39:48', NULL, 0, 6, NULL, '2013-11-19 08:47:10', NULL, NULL),
(66, 11, '4248521311', 0, '42485', '', '1311', NULL, 2, 4, '2013-11-19 08:55:28', NULL, '2013-11-19 09:37:17', NULL, '2013-11-19 09:44:12', NULL, 0, 6, NULL, '2013-11-19 08:55:28', NULL, NULL),
(67, 12, '4248510917', 0, '42485', '', '0917', NULL, 1, 4, '2013-11-19 08:59:46', NULL, '2013-11-19 09:46:36', NULL, '2013-11-19 09:46:48', NULL, 0, 6, NULL, '2013-11-19 08:59:46', NULL, NULL),
(68, 13, '4248513080', 0, '42485', '', '3080', NULL, 1, 4, '2013-11-19 09:13:47', NULL, '2013-11-19 09:57:53', NULL, '2013-11-19 10:10:58', NULL, 0, 6, NULL, '2013-11-19 09:13:47', NULL, NULL),
(69, 14, '4248520924', 0, '42485', '', '0924', NULL, 2, 4, '2013-11-19 09:21:58', NULL, '2013-11-19 09:48:46', NULL, '2013-11-19 09:48:53', NULL, 0, 6, NULL, '2013-11-19 09:21:58', NULL, NULL),
(70, 15, '4248513780', 0, '42485', '', '3780', NULL, 1, 4, '2013-11-19 09:48:42', NULL, '2013-11-19 10:20:39', NULL, '2013-11-19 10:20:45', NULL, 0, 6, NULL, '2013-11-19 09:48:42', NULL, NULL),
(71, 16, '4248520174', 0, '42485', '', '0174', NULL, 2, 4, '2013-11-19 09:52:19', NULL, NULL, NULL, '2013-11-19 10:34:52', NULL, 0, 6, NULL, '2013-11-19 09:52:19', NULL, NULL),
(72, 17, '4248521448', 0, '42485', '', '1448', NULL, 2, 4, '2013-11-19 09:53:47', NULL, '2013-11-19 10:39:59', NULL, '2013-11-19 10:40:11', NULL, 0, 6, NULL, '2013-11-19 09:53:47', NULL, NULL),
(73, 18, '4248510001', 0, '42485', '', '0001', NULL, 1, 4, '2013-11-19 09:59:41', NULL, NULL, NULL, '2013-11-19 10:27:17', NULL, 0, 6, NULL, '2013-11-19 09:59:41', NULL, NULL),
(74, 19, '4248513335', 0, '42485', '', '3335', NULL, 1, 4, '2013-11-19 10:00:32', NULL, '2013-11-19 10:42:42', NULL, '2013-11-19 10:47:23', NULL, 0, 6, NULL, '2013-11-19 10:00:32', NULL, NULL),
(75, 20, '4248511914', 0, '42485', '', '1914', NULL, 1, 4, '2013-11-19 10:09:17', NULL, '2013-11-19 10:50:14', NULL, '2013-11-19 10:52:03', NULL, 0, 6, NULL, '2013-11-19 10:09:17', NULL, NULL),
(76, 21, '4248523002', 0, '42485', '', '3002', NULL, 2, 4, '2013-11-19 10:16:33', NULL, '2013-11-19 10:59:42', NULL, '2013-11-19 11:02:17', NULL, 0, 6, NULL, '2013-11-19 10:16:33', NULL, NULL),
(77, 22, '4248512014', 0, '42485', '', '2014', NULL, 1, 4, '2013-11-19 10:31:45', NULL, '2013-11-19 10:54:00', NULL, '2013-11-19 11:13:57', NULL, 0, 6, NULL, '2013-11-19 10:31:45', NULL, NULL),
(78, 23, '4248512263', 0, '42485', '', '2263', NULL, 1, 4, '2013-11-19 10:32:33', NULL, '2013-11-19 11:02:25', NULL, '2013-11-19 11:08:34', NULL, 0, 6, NULL, '2013-11-19 10:32:33', NULL, NULL),
(79, 24, '4248512660', 0, '42485', '', '2660', NULL, 1, 4, '2013-11-19 10:40:41', NULL, '2013-11-19 11:15:02', NULL, '2013-11-19 11:15:34', NULL, 0, 6, NULL, '2013-11-19 10:40:41', NULL, NULL),
(80, 25, '4248511980', 0, '42485', '', '1980', NULL, 1, 4, '2013-11-19 10:59:21', NULL, '2013-11-19 11:21:47', NULL, '2013-11-19 11:22:46', NULL, 0, 6, NULL, '2013-11-19 10:59:21', NULL, NULL),
(81, 26, '4248521118', 0, '42485', '', '1118', NULL, 2, 4, '2013-11-19 11:03:28', NULL, '2013-11-19 11:03:45', NULL, '2013-11-19 11:04:26', NULL, 0, 6, NULL, '2013-11-19 11:03:28', NULL, NULL),
(82, 27, '4248511399', 0, '42485', '', '1399', NULL, 1, 4, '2013-11-19 11:09:26', NULL, '2013-11-19 11:25:43', NULL, '2013-11-19 11:25:48', NULL, 0, 6, NULL, '2013-11-19 11:09:26', NULL, NULL),
(83, 28, '4248523171', 0, '42485', '', '3171', NULL, 2, 4, '2013-11-19 11:16:25', NULL, '2013-11-19 11:22:01', NULL, '2013-11-19 11:22:26', NULL, 0, 6, NULL, '2013-11-19 11:16:25', NULL, NULL),
(84, 29, '4248520886', 0, '42485', '', '0886', NULL, 2, 4, '2013-11-19 11:22:42', NULL, '2013-11-19 11:29:38', NULL, '2013-11-19 11:31:51', NULL, 0, 6, NULL, '2013-11-19 11:22:42', NULL, NULL),
(85, 30, '4248513677', 0, '42485', '', '3677', NULL, 1, 4, '2013-11-19 11:37:49', NULL, '2013-11-19 11:47:00', NULL, '2013-11-19 11:47:49', NULL, 0, 6, NULL, '2013-11-19 11:37:49', NULL, NULL),
(86, 31, '4248513283', 0, '42485', '', '3283', NULL, 1, 1, '2013-11-19 11:42:30', NULL, NULL, NULL, NULL, NULL, 0, 6, NULL, '2013-11-19 11:42:30', NULL, NULL),
(87, 32, '4248512697', 0, '42485', '', '2697', NULL, 1, 1, '2013-11-19 11:43:13', NULL, NULL, NULL, NULL, NULL, 0, 6, NULL, '2013-11-19 11:43:13', NULL, NULL),
(88, 1, '4248521140', 0, '42485', '', '1140', NULL, 2, 4, '2013-11-20 12:50:50', NULL, '2013-11-20 12:52:13', NULL, '2013-11-20 12:53:47', NULL, 0, 6, NULL, '2013-11-20 12:50:50', NULL, NULL),
(89, 2, '4248520749', 0, '42485', '', '0749', NULL, 2, 4, '2013-11-20 12:51:01', NULL, '2013-11-20 13:06:10', NULL, '2013-11-20 13:06:35', NULL, 0, 6, NULL, '2013-11-20 12:51:01', NULL, NULL),
(90, 3, '4248522666', 0, '42485', '', '2666', NULL, 2, 4, '2013-11-20 12:51:09', NULL, '2013-11-20 13:18:37', NULL, '2013-11-20 13:18:51', NULL, 0, 6, NULL, '2013-11-20 12:51:09', NULL, NULL),
(91, 4, '4248522100', 0, '42485', '', '2100', NULL, 2, 4, '2013-11-20 12:51:14', NULL, '2013-11-20 13:01:29', NULL, '2013-11-20 13:03:00', NULL, 0, 6, NULL, '2013-11-20 12:51:14', NULL, NULL),
(92, 5, '4248521059', 0, '42485', '', '1059', NULL, 2, 4, '2013-11-20 12:51:23', NULL, '2013-11-20 13:20:28', NULL, '2013-11-20 13:21:33', NULL, 0, 6, NULL, '2013-11-20 12:51:23', NULL, NULL),
(93, 6, '4248520636', 0, '42485', '', '0636', NULL, 2, 4, '2013-11-20 12:51:41', NULL, '2013-11-20 13:55:32', NULL, '2013-11-20 14:12:15', NULL, 0, 6, NULL, '2013-11-20 12:51:41', NULL, NULL),
(94, 7, '4248512076', 0, '42485', '', '2076', NULL, 1, 4, '2013-11-20 12:51:47', NULL, '2013-11-20 13:10:51', NULL, '2013-11-20 13:12:57', NULL, 0, 6, NULL, '2013-11-20 12:51:47', NULL, NULL),
(95, 8, '4248510553', 0, '42485', '', '0553', NULL, 1, 4, '2013-11-20 12:52:00', NULL, '2013-11-20 13:24:31', NULL, '2013-11-20 13:27:59', NULL, 0, 6, NULL, '2013-11-20 12:52:00', NULL, NULL),
(96, 9, '4248512640', 0, '42485', '', '2640', NULL, 1, 4, '2013-11-20 12:52:14', NULL, '2013-11-20 14:02:20', NULL, '2013-11-20 14:03:50', NULL, 0, 6, NULL, '2013-11-20 12:52:14', NULL, NULL),
(97, 10, '4248511852', 0, '42485', '', '1852', NULL, 1, 4, '2013-11-20 12:54:43', NULL, '2013-11-20 14:13:30', NULL, '2013-11-20 14:23:23', NULL, 0, 6, NULL, '2013-11-20 12:54:43', NULL, NULL),
(98, 11, '042485109995', 0, '42485', '', '09995', NULL, 1, 4, '2013-11-20 12:55:09', 0, NULL, NULL, '2013-11-20 14:50:09', NULL, 0, 6, NULL, '2013-11-20 12:55:09', NULL, NULL),
(99, 12, '4248511023', 0, '42485', '', '1023', NULL, 1, 4, '2013-11-20 13:08:43', NULL, '2013-11-20 13:28:03', NULL, '2013-11-20 13:31:07', NULL, 0, 6, NULL, '2013-11-20 13:08:43', NULL, NULL),
(100, 13, '4248511606', 0, '42485', '', '1606', NULL, 1, 4, '2013-11-20 13:25:00', NULL, '2013-11-20 14:50:03', NULL, '2013-11-20 14:53:10', NULL, 0, 6, NULL, '2013-11-20 13:25:00', NULL, NULL),
(101, 14, '4248521300', 0, '42485', '', '1300', NULL, 2, 4, '2013-11-20 13:30:11', NULL, '2013-11-20 14:31:19', NULL, '2013-11-20 14:38:14', NULL, 0, 6, NULL, '2013-11-20 13:30:11', NULL, NULL),
(102, 15, '4248513732', 0, '42485', '', '3732', NULL, 1, 4, '2013-11-20 13:31:58', NULL, '2013-11-20 14:54:55', NULL, '2013-11-20 14:57:38', NULL, 0, 6, NULL, '2013-11-20 13:31:58', NULL, NULL),
(103, 16, '4248521410', 0, '42485', '', '1410', NULL, 2, 4, '2013-11-20 13:40:54', NULL, '2013-11-20 14:12:33', NULL, '2013-11-20 14:14:04', NULL, 0, 6, NULL, '2013-11-20 13:40:54', NULL, NULL),
(104, 17, '4248521186', 0, '42485', '', '1186', NULL, 2, 4, '2013-11-20 13:42:02', NULL, '2013-11-20 14:47:47', NULL, '2013-11-20 14:47:57', NULL, 0, 6, NULL, '2013-11-20 13:42:02', NULL, NULL),
(105, 18, '4248521344', 0, '42485', '', '1344', NULL, 2, 4, '2013-11-20 13:54:02', NULL, '2013-11-20 15:06:22', NULL, '2013-11-20 15:07:24', NULL, 0, 6, NULL, '2013-11-20 13:54:02', NULL, NULL),
(106, 19, '4248510469', 0, '42485', '', '0469', NULL, 1, 4, '2013-11-20 14:01:51', NULL, '2013-11-20 14:51:01', NULL, '2013-11-20 14:51:47', NULL, 0, 6, NULL, '2013-11-20 14:01:51', NULL, NULL),
(107, 20, '4248511603', 0, '42485', '', '1603', NULL, 1, 4, '2013-11-20 14:15:18', NULL, '2013-11-20 15:07:01', NULL, '2013-11-20 15:13:29', NULL, 0, 6, NULL, '2013-11-20 14:15:18', NULL, NULL),
(108, 21, '4248523712', 0, '42485', '', '3712', NULL, 2, 4, '2013-11-20 14:16:16', NULL, '2013-11-20 15:19:07', NULL, '2013-11-20 15:19:41', NULL, 0, 6, NULL, '2013-11-20 14:16:16', NULL, NULL),
(109, 22, '4248520805', 0, '42485', '', '0805', NULL, 2, 4, '2013-11-20 14:18:36', NULL, '2013-11-20 15:41:30', NULL, '2013-11-20 15:48:16', NULL, 0, 6, NULL, '2013-11-20 14:18:36', NULL, NULL),
(110, 23, '4248510102', 0, '42485', '', '0102', NULL, 1, 4, '2013-11-20 14:23:59', NULL, '2013-11-20 15:38:23', NULL, '2013-11-20 15:44:27', NULL, 0, 6, NULL, '2013-11-20 14:23:59', NULL, NULL),
(111, 24, '4248513812', 0, '42485', '', '3812', NULL, 1, 4, '2013-11-20 14:37:20', NULL, '2013-11-20 15:44:35', NULL, '2013-11-20 16:44:22', NULL, 0, 6, NULL, '2013-11-20 14:37:20', NULL, NULL),
(112, 25, '4248513879', 0, '42485', '', '3879', NULL, 1, 4, '2013-11-20 14:45:36', NULL, '2013-11-20 15:13:21', NULL, '2013-11-20 15:16:02', NULL, 0, 6, NULL, '2013-11-20 14:45:36', NULL, NULL),
(113, 26, '4248513434', 0, '42485', '', '3434', NULL, 1, 4, '2013-11-20 15:00:03', NULL, '2013-11-20 15:29:41', NULL, '2013-11-20 15:36:59', NULL, 0, 6, NULL, '2013-11-20 15:00:03', NULL, NULL),
(114, 27, '4248520683', 0, '42485', '', '0683', NULL, 2, 4, '2013-11-20 15:17:29', NULL, '2013-11-20 15:48:22', NULL, '2013-11-20 15:50:56', NULL, 0, 6, NULL, '2013-11-20 15:17:29', NULL, NULL),
(115, 28, '4248510150', 0, '42485', '', '0150', NULL, 1, 4, '2013-11-20 15:32:27', NULL, '2013-11-20 15:47:45', NULL, '2013-11-20 15:48:08', NULL, 0, 6, NULL, '2013-11-20 15:32:27', NULL, NULL),
(116, 29, '042485109990', 0, '42485', '', '09990', NULL, 1, 4, '2013-11-20 15:34:19', 0, NULL, NULL, '2013-11-20 16:24:19', NULL, 0, 6, NULL, '2013-11-20 15:34:19', NULL, NULL),
(117, 30, '4248523775', 0, '42485', '', '3775', NULL, 2, 4, '2013-11-20 15:45:11', NULL, '2013-11-20 15:57:38', NULL, '2013-11-20 16:00:34', NULL, 0, 6, NULL, '2013-11-20 15:45:11', NULL, NULL),
(118, 31, '4248513238', 0, '42485', '', '3238', NULL, 1, 4, '2013-11-20 15:50:49', NULL, '2013-11-20 16:24:16', NULL, '2013-11-20 16:24:28', NULL, 0, 6, NULL, '2013-11-20 15:50:49', NULL, NULL),
(119, 32, '4248521182', 0, '42485', '', '1182', NULL, 2, 4, '2013-11-20 16:02:00', NULL, '2013-11-20 16:28:19', NULL, '2013-11-20 16:28:44', NULL, 0, 6, NULL, '2013-11-20 16:02:00', NULL, NULL),
(120, 33, '4248512428', 0, '42485', '', '2428', NULL, 1, 4, '2013-11-20 16:07:56', NULL, '2013-11-20 16:34:15', NULL, '2013-11-20 16:34:32', NULL, 0, 6, NULL, '2013-11-20 16:07:56', NULL, NULL),
(121, 34, '4248510028', 0, '42485', '', '0028', NULL, 1, 4, '2013-11-20 16:18:15', NULL, '2013-11-20 16:46:19', NULL, '2013-11-20 16:46:27', NULL, 0, 6, NULL, '2013-11-20 16:18:15', NULL, NULL),
(122, 35, '4248513812', 0, '42485', '', '3812', NULL, 1, 4, '2013-11-20 16:28:11', NULL, NULL, NULL, '2013-11-20 16:44:22', NULL, 0, 6, NULL, '2013-11-20 16:28:11', NULL, NULL),
(123, 36, '4248520124', 0, '42485', '', '0124', NULL, 2, 4, '2013-11-20 16:35:05', NULL, NULL, NULL, '2013-11-20 16:49:56', NULL, 0, 6, NULL, '2013-11-20 16:35:05', NULL, NULL),
(124, 37, '4248522792', 0, '42485', '', '2792', NULL, 2, 4, '2013-11-20 16:40:47', NULL, '2013-11-20 16:50:02', NULL, '2013-11-20 16:52:29', NULL, 0, 6, NULL, '2013-11-20 16:40:47', NULL, NULL),
(125, 38, '042485209991', 0, '42485', '', '09991', NULL, 2, 4, '2013-11-20 16:43:38', 0, NULL, NULL, '2013-11-20 16:55:43', NULL, 0, 6, NULL, '2013-11-20 16:43:38', NULL, NULL),
(126, 39, '4248512567', 0, '42485', '', '2567', NULL, 1, 4, '2013-11-20 16:56:25', NULL, '2013-11-20 16:59:56', NULL, '2013-11-20 16:59:56', NULL, 0, 6, NULL, '2013-11-20 16:56:25', NULL, NULL),
(127, 40, '4248513751', 0, '42485', '', '3751', NULL, 1, 4, '2013-11-20 17:12:41', NULL, '2013-11-20 17:14:10', NULL, '2013-11-20 17:14:13', NULL, 0, 6, NULL, '2013-11-20 17:12:41', NULL, NULL),
(128, 41, '4248513604', 0, '42485', '', '3604', NULL, 1, 4, '2013-11-20 17:12:46', NULL, '2013-11-20 17:13:38', NULL, '2013-11-20 17:14:05', NULL, 0, 6, NULL, '2013-11-20 17:12:46', NULL, NULL),
(129, 1, '4248522100', 0, '42485', '', '2100', NULL, 2, 4, '2013-11-21 07:39:24', NULL, '2013-11-21 07:48:24', NULL, '2013-11-21 07:52:40', NULL, 0, 6, NULL, '2013-11-21 07:39:24', NULL, NULL),
(130, 2, '4248520314', 0, '42485', '', '0314', NULL, 2, 4, '2013-11-21 07:39:49', NULL, NULL, NULL, '2013-11-21 08:04:51', NULL, 0, 6, NULL, '2013-11-21 07:39:49', NULL, NULL),
(131, 3, '4248520561', 0, '42485', '', '0561', NULL, 2, 4, '2013-11-21 07:39:56', NULL, '2013-11-21 07:52:56', NULL, '2013-11-21 07:59:33', NULL, 0, 6, NULL, '2013-11-21 07:39:56', NULL, NULL),
(132, 4, '4248523557', 0, '42485', '', '3557', NULL, 2, 4, '2013-11-21 07:46:42', NULL, NULL, NULL, '2013-11-21 08:22:44', NULL, 0, 6, NULL, '2013-11-21 07:46:42', NULL, NULL),
(133, 5, '4248521023', 0, '42485', '', '1023', NULL, 2, 4, '2013-11-21 07:49:36', NULL, '2013-11-21 08:22:49', NULL, '2013-11-21 08:23:15', NULL, 0, 6, NULL, '2013-11-21 07:49:36', NULL, NULL),
(134, 6, '4248521438', 0, '42485', '', '1438', NULL, 2, 4, '2013-11-21 07:51:34', NULL, '2013-11-21 08:05:03', NULL, '2013-11-21 08:05:12', NULL, 0, 6, NULL, '2013-11-21 07:51:34', NULL, NULL),
(135, 7, '4248522241', 0, '42485', '', '2241', NULL, 2, 4, '2013-11-21 08:02:22', NULL, '2013-11-21 08:26:19', NULL, '2013-11-21 08:32:00', NULL, 0, 6, NULL, '2013-11-21 08:02:22', NULL, NULL),
(136, 8, '4248523712', 0, '42485', '', '3712', NULL, 2, 4, '2013-11-21 08:14:50', NULL, '2013-11-21 09:00:48', NULL, '2013-11-21 09:01:40', NULL, 0, 6, NULL, '2013-11-21 08:14:50', NULL, NULL),
(137, 9, '042485209990', 0, '42485', '', '09990', NULL, 2, 4, '2013-11-21 08:16:01', 0, NULL, NULL, '2013-11-21 09:08:38', NULL, 0, 6, NULL, '2013-11-21 08:16:01', NULL, NULL),
(138, 10, '4248520973', 0, '42485', '', '0973', NULL, 2, 4, '2013-11-21 08:18:29', NULL, '2013-11-21 09:08:42', NULL, '2013-11-21 09:08:50', NULL, 0, 6, NULL, '2013-11-21 08:18:29', NULL, NULL),
(139, 11, '4248520815', 0, '42485', '', '0815', NULL, 2, 4, '2013-11-21 08:37:30', NULL, NULL, NULL, '2013-11-21 08:59:11', NULL, 0, 6, NULL, '2013-11-21 08:37:30', NULL, NULL),
(140, 12, '4248520202', 0, '42485', '', '0202', NULL, 2, 4, '2013-11-21 08:46:18', NULL, '2013-11-21 09:09:38', NULL, '2013-11-21 09:10:32', NULL, 0, 6, NULL, '2013-11-21 08:46:18', NULL, NULL),
(141, 13, '4248520395', 0, '42485', '', '0395', NULL, 2, 4, '2013-11-21 08:46:50', NULL, NULL, NULL, '2013-11-21 09:16:09', NULL, 0, 6, NULL, '2013-11-21 08:46:50', NULL, NULL),
(142, 14, '4248521240', 0, '42485', '', '1240', NULL, 2, 4, '2013-11-21 08:48:34', NULL, '2013-11-21 09:16:37', NULL, '2013-11-21 09:16:42', NULL, 0, 6, NULL, '2013-11-21 08:48:34', NULL, NULL),
(143, 15, '4248520172', 0, '42485', '', '0172', NULL, 2, 4, '2013-11-21 08:49:38', NULL, '2013-11-21 09:23:55', NULL, '2013-11-21 09:23:56', NULL, 0, 6, NULL, '2013-11-21 08:49:38', NULL, NULL),
(144, 16, '4248512463', 0, '42485', '', '2463', NULL, 1, 4, '2013-11-21 08:58:22', NULL, '2013-11-21 09:25:50', NULL, '2013-11-21 09:27:04', NULL, 0, 6, NULL, '2013-11-21 08:58:22', NULL, NULL),
(145, 17, '042485109991', 0, '42485', '', '09991', NULL, 1, 4, '2013-11-21 09:10:09', 0, NULL, NULL, '2013-11-21 09:43:02', NULL, 0, 6, NULL, '2013-11-21 09:10:09', NULL, NULL),
(146, 18, '4248520749', 0, '42485', '', '0749', NULL, 2, 4, '2013-11-21 09:13:36', NULL, '2013-11-21 09:32:01', NULL, '2013-11-21 09:36:27', NULL, 0, 6, NULL, '2013-11-21 09:13:36', NULL, NULL),
(147, 19, '4248520721', 0, '42485', '', '0721', NULL, 2, 4, '2013-11-21 09:16:46', NULL, '2013-11-21 09:40:28', NULL, '2013-11-21 09:40:32', NULL, 0, 6, NULL, '2013-11-21 09:16:46', NULL, NULL),
(148, 20, '4248522654', 0, '42485', '', '2654', NULL, 2, 4, '2013-11-21 09:18:43', NULL, '2013-11-21 09:46:44', NULL, '2013-11-21 09:47:17', NULL, 0, 6, NULL, '2013-11-21 09:18:43', NULL, NULL),
(149, 21, '4248520278', 0, '42485', '', '0278', NULL, 2, 4, '2013-11-21 09:24:40', NULL, '2013-11-21 09:53:50', NULL, '2013-11-21 09:54:33', NULL, 0, 6, NULL, '2013-11-21 09:24:40', NULL, NULL),
(150, 22, '4248511376', 0, '42485', '', '1376', NULL, 1, 4, '2013-11-21 09:27:02', NULL, '2013-11-21 09:32:24', NULL, '2013-11-21 09:33:03', NULL, 0, 6, NULL, '2013-11-21 09:27:02', NULL, NULL),
(151, 23, '042485209992', 0, '42485', '', '09992', NULL, 2, 4, '2013-11-21 09:27:18', 0, NULL, NULL, '2013-11-21 10:22:50', NULL, 0, 6, NULL, '2013-11-21 09:27:18', NULL, NULL),
(152, 24, '4248513843', 0, '42485', '', '3843', NULL, 1, 4, '2013-11-21 09:42:19', NULL, '2013-11-21 09:43:07', NULL, '2013-11-21 09:50:13', NULL, 0, 6, NULL, '2013-11-21 09:42:19', NULL, NULL),
(153, 25, '4248513255', 0, '42485', '', '3255', NULL, 1, 4, '2013-11-21 09:51:14', NULL, '2013-11-21 10:08:35', NULL, '2013-11-21 10:09:18', NULL, 0, 6, NULL, '2013-11-21 09:51:14', NULL, NULL),
(154, 26, '4248522021', 0, '42485', '', '2021', NULL, 2, 4, '2013-11-21 09:59:24', NULL, '2013-11-21 10:11:10', NULL, '2013-11-21 10:11:16', NULL, 0, 6, NULL, '2013-11-21 09:59:24', NULL, NULL),
(155, 27, '4248520717', 0, '42485', '', '0717', NULL, 2, 4, '2013-11-21 10:00:08', 0, NULL, NULL, '2013-11-21 10:22:52', NULL, 0, 6, NULL, '2013-11-21 10:00:08', NULL, NULL),
(156, 28, '4248513853', 0, '42485', '', '3853', NULL, 1, 4, '2013-11-21 10:00:33', NULL, '2013-11-21 10:10:04', NULL, '2013-11-21 10:13:15', NULL, 0, 6, NULL, '2013-11-21 10:00:33', NULL, NULL),
(157, 29, '4248523653', 0, '42485', '', '3653', NULL, 2, 4, '2013-11-21 10:03:18', NULL, '2013-11-21 10:17:02', NULL, '2013-11-21 10:17:43', NULL, 0, 6, NULL, '2013-11-21 10:03:18', NULL, NULL),
(158, 30, '4248520549', 0, '42485', '', '0549', NULL, 2, 4, '2013-11-21 10:10:54', NULL, '2013-11-21 10:22:56', NULL, '2013-11-21 10:23:03', NULL, 0, 6, NULL, '2013-11-21 10:10:54', NULL, NULL),
(159, 31, '4248513253', 0, '42485', '', '3253', NULL, 1, 4, '2013-11-21 10:22:05', NULL, '2013-11-21 10:23:08', NULL, '2013-11-21 10:30:15', NULL, 0, 6, NULL, '2013-11-21 10:22:05', NULL, NULL),
(160, 32, '4248523744', 0, '42485', '', '3744', NULL, 2, 4, '2013-11-21 10:26:24', NULL, '2013-11-21 10:44:48', NULL, '2013-11-21 10:45:31', NULL, 0, 6, NULL, '2013-11-21 10:26:24', NULL, NULL),
(161, 33, '042485209993', 0, '42485', '', '09993', NULL, 2, 4, '2013-11-21 10:38:28', 0, NULL, NULL, '2013-11-21 10:55:44', NULL, 0, 6, NULL, '2013-11-21 10:38:28', NULL, NULL),
(162, 34, '4248513253', 0, '42485', '', '3253', NULL, 1, 4, '2013-11-21 10:39:49', NULL, '2013-11-21 10:54:12', NULL, '2013-11-21 10:55:34', NULL, 0, 6, NULL, '2013-11-21 10:39:49', NULL, NULL),
(163, 35, '4248521776', 0, '42485', '', '1776', NULL, 2, 4, '2013-11-21 10:40:55', NULL, '2013-11-21 10:47:49', NULL, '2013-11-21 10:47:54', NULL, 0, 6, NULL, '2013-11-21 10:40:55', NULL, NULL),
(164, 36, '4248520872', 0, '42485', '', '0872', NULL, 2, 4, '2013-11-21 10:41:01', NULL, '2013-11-21 11:09:31', NULL, '2013-11-21 11:09:34', NULL, 0, 6, NULL, '2013-11-21 10:41:01', NULL, NULL),
(165, 37, '4248513736', 0, '42485', '', '3736', NULL, 1, 4, '2013-11-21 11:08:43', 0, '2013-11-21 11:34:41', NULL, '2013-11-21 11:43:40', NULL, 0, 6, NULL, '2013-11-21 11:08:43', NULL, NULL),
(166, 38, '4248523757', 0, '42485', '', '3757', NULL, 2, 4, '2013-11-21 11:10:30', NULL, NULL, NULL, '2013-11-21 11:26:43', NULL, 0, 6, NULL, '2013-11-21 11:10:30', NULL, NULL),
(167, 39, '4248512837', 0, '42485', '', '2837', NULL, 1, 4, '2013-11-21 11:32:48', NULL, '2013-11-21 11:47:55', NULL, '2013-11-21 11:49:06', NULL, 0, 6, NULL, '2013-11-21 11:32:48', NULL, NULL),
(168, 40, '4248521643', 0, '42485', '', '1643', NULL, 2, 4, '2013-11-21 11:39:33', NULL, '2013-11-21 11:56:08', NULL, '2013-11-21 11:56:09', NULL, 0, 6, NULL, '2013-11-21 11:39:33', NULL, NULL),
(169, 1, '4248511062', 0, '42485', '', '1062', NULL, 1, 4, '2013-11-22 07:56:15', NULL, '2013-11-22 08:21:18', NULL, '2013-11-22 08:22:47', NULL, 0, 6, NULL, '2013-11-22 07:56:15', NULL, NULL),
(170, 2, '4248512100', 0, '42485', '', '2100', NULL, 1, 4, '2013-11-22 07:56:22', NULL, '2013-11-22 08:27:10', NULL, '2013-11-22 08:28:04', NULL, 0, 6, NULL, '2013-11-22 07:56:22', NULL, NULL),
(171, 3, '4248511023', 0, '42485', '', '1023', NULL, 1, 4, '2013-11-22 07:56:40', NULL, '2013-11-22 08:32:58', NULL, '2013-11-22 09:30:31', NULL, 0, 6, NULL, '2013-11-22 07:56:40', NULL, NULL),
(172, 4, '4248513015', 0, '42485', '', '3015', NULL, 1, 4, '2013-11-22 07:56:53', NULL, '2013-11-22 08:33:31', NULL, '2013-11-22 08:33:31', NULL, 0, 6, NULL, '2013-11-22 07:56:53', NULL, NULL),
(173, 5, '042485109994', 0, '42485', '', '09994', NULL, 1, 4, '2013-11-22 07:57:04', 0, NULL, NULL, '2013-11-22 08:41:10', NULL, 0, 6, NULL, '2013-11-22 07:57:04', NULL, NULL),
(174, 6, '4248513404', 0, '42485', '', '3404', NULL, 1, 4, '2013-11-22 08:10:03', NULL, '2013-11-22 08:43:44', NULL, '2013-11-22 08:43:55', NULL, 0, 6, NULL, '2013-11-22 08:10:03', NULL, NULL),
(175, 7, '4248521650', 0, '42485', '', '1650', NULL, 2, 4, '2013-11-22 08:13:50', NULL, '2013-11-22 08:19:45', NULL, '2013-11-22 08:22:56', NULL, 0, 6, NULL, '2013-11-22 08:13:50', NULL, NULL),
(176, 8, '042485109990', 0, '42485', '', '09990', NULL, 1, 4, '2013-11-22 08:24:07', 0, NULL, NULL, '2013-11-22 08:50:32', NULL, 0, 6, NULL, '2013-11-22 08:24:07', NULL, NULL),
(177, 9, '4248522877', 0, '42485', '', '2877', NULL, 2, 4, '2013-11-22 08:25:41', NULL, '2013-11-22 08:38:35', NULL, '2013-11-22 08:38:40', NULL, 0, 6, NULL, '2013-11-22 08:25:41', NULL, NULL),
(178, 10, '042485209991', 0, '42485', '', '09991', NULL, 2, 4, '2013-11-22 08:29:07', 0, NULL, NULL, '2013-11-22 09:28:34', NULL, 0, 6, NULL, '2013-11-22 08:29:07', NULL, NULL),
(179, 11, '4248523116', 0, '42485', '', '3116', NULL, 2, 4, '2013-11-22 08:42:01', NULL, '2013-11-22 09:02:45', NULL, '2013-11-22 09:03:21', NULL, 0, 6, NULL, '2013-11-22 08:42:01', NULL, NULL),
(180, 12, '4248520598', 0, '42485', '', '0598', NULL, 2, 4, '2013-11-22 08:49:38', NULL, '2013-11-22 09:12:06', NULL, '2013-11-22 09:12:21', NULL, 0, 6, NULL, '2013-11-22 08:49:38', NULL, NULL),
(181, 13, '4248510621', 0, '42485', '', '0621', NULL, 1, 4, '2013-11-22 09:06:54', NULL, '2013-11-22 10:07:41', NULL, '2013-11-22 10:07:46', NULL, 0, 6, NULL, '2013-11-22 09:06:54', NULL, NULL),
(182, 14, '4248512370', 0, '42485', '', '2370', NULL, 1, 4, '2013-11-22 09:19:50', NULL, '2013-11-22 10:00:49', NULL, '2013-11-22 10:01:02', NULL, 0, 6, NULL, '2013-11-22 09:19:50', NULL, NULL),
(183, 15, '4248521914', 0, '42485', '', '1914', NULL, 2, 4, '2013-11-22 09:21:19', NULL, '2013-11-22 10:08:01', NULL, '2013-11-22 10:10:06', NULL, 0, 6, NULL, '2013-11-22 09:21:19', NULL, NULL),
(184, 16, '042485209992', 0, '42485', '', '09992', NULL, 2, 4, '2013-11-22 09:22:36', 0, NULL, NULL, '2013-11-22 09:42:18', NULL, 0, 6, NULL, '2013-11-22 09:22:36', NULL, NULL),
(185, 17, '042485209995', 0, '42485', '', '09995', NULL, 2, 4, '2013-11-22 09:27:04', 0, NULL, NULL, '2013-11-22 09:47:57', NULL, 0, 6, NULL, '2013-11-22 09:27:04', NULL, NULL),
(186, 18, '4248512230', 0, '42485', '', '2230', NULL, 1, 4, '2013-11-22 09:33:50', NULL, '2013-11-22 10:07:50', NULL, '2013-11-22 10:33:13', NULL, 0, 6, NULL, '2013-11-22 09:33:50', NULL, NULL),
(187, 19, '4248521167', 0, '42485', '', '1167', NULL, 2, 4, '2013-11-22 09:34:11', NULL, '2013-11-22 09:48:04', NULL, '2013-11-22 09:50:18', NULL, 0, 6, NULL, '2013-11-22 09:34:11', NULL, NULL),
(188, 20, '4248521301', 0, '42485', '', '1301', NULL, 2, 4, '2013-11-22 09:43:33', NULL, '2013-11-22 10:04:47', NULL, '2013-11-22 10:04:53', NULL, 0, 6, NULL, '2013-11-22 09:43:33', NULL, NULL),
(189, 21, '4248520536', 0, '42485', '', '0536', NULL, 2, 4, '2013-11-22 09:46:36', NULL, '2013-11-22 10:06:32', NULL, '2013-11-22 10:07:36', NULL, 0, 6, NULL, '2013-11-22 09:46:36', NULL, NULL),
(190, 22, '4248520928', 0, '42485', '', '0928', NULL, 2, 4, '2013-11-22 09:56:04', NULL, '2013-11-22 10:13:26', NULL, '2013-11-22 10:13:30', NULL, 0, 6, NULL, '2013-11-22 09:56:04', NULL, NULL),
(191, 23, '4248511956', 0, '42485', '', '1956', NULL, 1, 4, '2013-11-22 09:56:16', NULL, '2013-11-22 10:33:18', NULL, '2013-11-22 10:34:52', NULL, 0, 6, NULL, '2013-11-22 09:56:16', NULL, NULL),
(192, 24, '4248512594', 0, '42485', '', '2594', NULL, 1, 4, '2013-11-22 09:57:40', NULL, '2013-11-22 11:02:41', NULL, '2013-11-22 11:04:07', NULL, 0, 6, NULL, '2013-11-22 09:57:40', NULL, NULL),
(193, 25, '4248522331', 0, '42485', '', '2331', NULL, 2, 4, '2013-11-22 09:57:50', NULL, '2013-11-22 10:18:26', NULL, '2013-11-22 10:18:31', NULL, 0, 6, NULL, '2013-11-22 09:57:50', NULL, NULL),
(194, 26, '4248521551', 0, '42485', '', '1551', NULL, 2, 4, '2013-11-22 10:12:36', NULL, '2013-11-22 10:20:48', NULL, '2013-11-22 10:20:52', NULL, 0, 6, NULL, '2013-11-22 10:12:36', NULL, NULL),
(195, 27, '4248520683', 0, '42485', '', '0683', NULL, 2, 4, '2013-11-22 10:15:09', NULL, '2013-11-22 10:30:47', NULL, '2013-11-22 10:30:54', NULL, 0, 6, NULL, '2013-11-22 10:15:09', NULL, NULL),
(196, 28, '4248523617', 0, '42485', '', '3617', NULL, 2, 4, '2013-11-22 10:17:01', NULL, '2013-11-22 10:40:11', NULL, '2013-11-22 10:40:41', NULL, 0, 6, NULL, '2013-11-22 10:17:01', NULL, NULL),
(197, 29, '4248520635', 0, '42485', '', '0635', NULL, 2, 4, '2013-11-22 10:17:55', NULL, '2013-11-22 11:08:51', NULL, '2013-11-22 11:09:00', NULL, 0, 6, NULL, '2013-11-22 10:17:55', NULL, NULL),
(198, 30, '4248511972', 0, '42485', '', '1972', NULL, 1, 4, '2013-11-22 10:29:44', NULL, '2013-11-22 11:12:10', NULL, '2013-11-22 11:13:00', NULL, 0, 6, NULL, '2013-11-22 10:29:44', NULL, NULL),
(199, 31, '4248513002', 0, '42485', '', '3002', NULL, 1, 4, '2013-11-22 10:33:03', NULL, '2013-11-22 11:10:09', NULL, '2013-11-22 11:11:45', NULL, 0, 6, NULL, '2013-11-22 10:33:03', NULL, NULL),
(200, 32, '4248523598', 0, '42485', '', '3598', NULL, 2, 4, '2013-11-22 10:35:27', NULL, '2013-11-22 10:38:57', NULL, '2013-11-22 10:40:02', NULL, 0, 6, NULL, '2013-11-22 10:35:27', NULL, NULL),
(201, 33, '4248523842', 0, '42485', '', '3842', NULL, 2, 4, '2013-11-22 10:37:29', NULL, '2013-11-22 11:13:06', NULL, '2013-11-22 11:16:12', NULL, 0, 6, NULL, '2013-11-22 10:37:29', NULL, NULL),
(202, 34, '042485109993', 0, '42485', '', '09993', NULL, 1, 4, '2013-11-22 10:43:30', 0, NULL, NULL, '2013-11-22 11:32:22', NULL, 0, 6, NULL, '2013-11-22 10:43:30', NULL, NULL),
(203, 35, '4248511226', 0, '42485', '', '1226', NULL, 1, 4, '2013-11-22 10:50:26', NULL, '2013-11-22 11:40:58', NULL, '2013-11-22 11:44:24', NULL, 0, 6, NULL, '2013-11-22 10:50:26', NULL, NULL),
(204, 36, '4248513250', 0, '42485', '', '3250', NULL, 1, 4, '2013-11-22 11:01:29', NULL, '2013-11-22 11:49:32', NULL, '2013-11-22 11:51:02', NULL, 0, 6, NULL, '2013-11-22 11:01:29', NULL, NULL),
(205, 37, '4248523831', 0, '42485', '', '3831', NULL, 2, 4, '2013-11-22 11:09:43', NULL, '2013-11-22 11:17:12', NULL, '2013-11-22 11:19:41', NULL, 0, 6, NULL, '2013-11-22 11:09:43', NULL, NULL),
(206, 38, '4248521248', 0, '42485', '', '1248', NULL, 2, 4, '2013-11-22 11:18:54', NULL, '2013-11-22 11:32:34', NULL, '2013-11-22 11:32:37', NULL, 0, 6, NULL, '2013-11-22 11:18:54', NULL, NULL),
(207, 39, '4248523704', 0, '42485', '', '3704', NULL, 2, 4, '2013-11-22 11:25:55', NULL, '2013-11-22 12:18:05', NULL, '2013-11-22 12:26:24', NULL, 0, 6, NULL, '2013-11-22 11:25:55', NULL, NULL),
(208, 40, '4248512585', 0, '42485', '', '2585', NULL, 1, 4, '2013-11-22 11:28:23', NULL, '2013-11-22 11:55:28', NULL, '2013-11-22 11:58:13', NULL, 0, 6, NULL, '2013-11-22 11:28:23', NULL, NULL),
(209, 41, '4248513677', 0, '42485', '', '3677', NULL, 1, 4, '2013-11-22 11:35:28', NULL, '2013-11-22 12:00:53', NULL, '2013-11-22 12:07:11', NULL, 0, 6, NULL, '2013-11-22 11:35:28', NULL, NULL),
(210, 42, '042485109996', 0, '42485', '', '09996', NULL, 1, 4, '2013-11-22 12:11:23', NULL, NULL, NULL, '2013-11-22 12:18:02', NULL, 0, 6, NULL, '2013-11-22 12:11:23', NULL, NULL),
(211, 1, '4248513795', 0, '42485', '', '3795', NULL, 1, 4, '2013-11-25 12:20:50', 0, '2013-11-25 13:09:31', NULL, '2013-11-25 13:13:46', NULL, 0, 6, NULL, '2013-11-25 12:20:50', NULL, NULL),
(212, 2, '4248513526', 0, '42485', '', '3526', NULL, 1, 4, '2013-11-25 12:22:10', NULL, '2013-11-25 13:15:17', NULL, '2013-11-25 13:15:22', NULL, 0, 6, NULL, '2013-11-25 12:22:10', NULL, NULL),
(213, 3, '042485109997', 0, '42485', '', '09997', NULL, 1, 4, '2013-11-25 12:24:43', 0, NULL, NULL, '2013-11-25 13:24:15', NULL, 0, 6, NULL, '2013-11-25 12:24:43', NULL, NULL),
(214, 4, '4248513826', 0, '42485', '', '3826', NULL, 1, 4, '2013-11-25 12:27:08', NULL, '2013-11-25 13:31:50', NULL, '2013-11-25 13:33:23', NULL, 0, 6, NULL, '2013-11-25 12:27:08', NULL, NULL),
(215, 5, '4248510102', 0, '42485', '', '0102', NULL, 1, 4, '2013-11-25 12:27:11', NULL, '2013-11-25 13:46:49', NULL, '2013-11-25 13:46:55', NULL, 0, 6, NULL, '2013-11-25 12:27:11', NULL, NULL),
(216, 6, '4248511071', 0, '42485', '', '1071', NULL, 1, 4, '2013-11-25 12:28:13', NULL, '2013-11-25 13:54:04', NULL, '2013-11-25 13:54:37', NULL, 0, 6, NULL, '2013-11-25 12:28:13', NULL, NULL),
(217, 7, '4248521006', 0, '42485', '', '1006', NULL, 2, 4, '2013-11-25 12:41:21', NULL, '2013-11-25 12:55:18', NULL, '2013-11-25 12:55:23', NULL, 0, 6, NULL, '2013-11-25 12:41:21', NULL, NULL),
(218, 8, '4248522585', 0, '42485', '', '2585', NULL, 2, 4, '2013-11-25 12:45:13', NULL, '2013-11-25 13:00:23', NULL, '2013-11-25 13:00:29', NULL, 0, 6, NULL, '2013-11-25 12:45:13', NULL, NULL),
(219, 9, '4248513868', 0, '42485', '', '3868', NULL, 1, 4, '2013-11-25 12:48:47', NULL, '2013-11-25 13:56:23', NULL, '2013-11-25 14:05:17', NULL, 0, 6, NULL, '2013-11-25 12:48:47', NULL, NULL),
(220, 10, '4248520580', 0, '42485', '', '0580', NULL, 2, 4, '2013-11-25 13:06:10', NULL, '2013-11-25 13:10:52', NULL, '2013-11-25 13:11:08', NULL, 0, 6, NULL, '2013-11-25 13:06:10', NULL, NULL),
(221, 11, '042485109998', 0, '42485', '', '09998', NULL, 1, 4, '2013-11-25 13:21:57', 0, NULL, NULL, '2013-11-25 14:11:04', NULL, 0, 6, NULL, '2013-11-25 13:21:57', NULL, NULL),
(222, 12, '4248520013', 0, '42485', '', '0013', NULL, 2, 4, '2013-11-25 13:22:34', NULL, '2013-11-25 13:31:57', NULL, '2013-11-25 13:33:39', NULL, 0, 6, NULL, '2013-11-25 13:22:34', NULL, NULL),
(223, 13, '4248521428', 0, '42485', '', '1428', NULL, 2, 4, '2013-11-25 13:24:49', NULL, '2013-11-25 13:37:58', NULL, '2013-11-25 13:38:20', NULL, 0, 6, NULL, '2013-11-25 13:24:49', NULL, NULL),
(224, 14, '4248520934', 0, '42485', '', '0934', NULL, 2, 4, '2013-11-25 13:25:56', NULL, '2013-11-25 13:42:56', NULL, '2013-11-25 13:43:50', NULL, 0, 6, NULL, '2013-11-25 13:25:56', NULL, NULL),
(225, 15, '4248511376', 0, '42485', '', '1376', NULL, 1, 4, '2013-11-25 13:27:09', NULL, '2013-11-25 14:13:06', NULL, '2013-11-25 14:14:32', NULL, 0, 6, NULL, '2013-11-25 13:27:09', NULL, NULL),
(226, 16, '042485209995', 0, '42485', '', '09995', NULL, 2, 4, '2013-11-25 13:27:24', 0, NULL, NULL, '2013-11-25 14:13:04', NULL, 0, 6, NULL, '2013-11-25 13:27:24', NULL, NULL),
(227, 17, '4248510522', 0, '42485', '', '0522', NULL, 1, 4, '2013-11-25 13:57:36', NULL, '2013-11-25 14:16:15', NULL, '2013-11-25 14:16:24', NULL, 0, 6, NULL, '2013-11-25 13:57:36', NULL, NULL),
(228, 18, '4248510121', 0, '42485', '', '0121', NULL, 1, 4, '2013-11-25 14:03:36', NULL, '2013-11-25 14:20:52', NULL, '2013-11-25 14:23:08', NULL, 0, 6, NULL, '2013-11-25 14:03:36', NULL, NULL),
(229, 19, '042485209999', 0, '42485', '', '09999', NULL, 2, 4, '2013-11-25 14:04:03', 0, NULL, NULL, '2013-11-25 14:13:52', NULL, 0, 6, NULL, '2013-11-25 14:04:03', NULL, NULL),
(230, 20, '4248510877', 0, '42485', '', '0877', NULL, 1, 4, '2013-11-25 14:12:45', NULL, '2013-11-25 14:25:09', NULL, '2013-11-25 14:26:08', NULL, 0, 6, NULL, '2013-11-25 14:12:45', NULL, NULL),
(231, 21, '4248513357', 0, '42485', '', '3357', NULL, 1, 4, '2013-11-25 14:16:29', NULL, '2013-11-25 14:30:35', NULL, '2013-11-25 14:33:54', NULL, 0, 6, NULL, '2013-11-25 14:16:29', NULL, NULL),
(232, 22, '4248510539', 0, '42485', '', '0539', NULL, 1, 4, '2013-11-25 14:25:57', NULL, '2013-11-25 14:43:08', NULL, '2013-11-25 14:49:11', NULL, 0, 6, NULL, '2013-11-25 14:25:57', NULL, NULL),
(233, 23, '042485209995', 0, '42485', '', '09995', NULL, 2, 4, '2013-11-25 14:43:04', 0, NULL, NULL, '2013-11-25 14:57:41', NULL, 0, 6, NULL, '2013-11-25 14:43:04', NULL, NULL),
(234, 24, '4248521563', 0, '42485', '', '1563', NULL, 2, 4, '2013-11-25 14:43:25', NULL, '2013-11-25 14:57:50', NULL, '2013-11-25 14:58:19', NULL, 0, 6, NULL, '2013-11-25 14:43:25', NULL, NULL),
(235, 25, '4248513620', 0, '42485', '', '3620', NULL, 1, 4, '2013-11-25 14:45:02', NULL, '2013-11-25 15:00:10', NULL, '2013-11-25 15:05:24', NULL, 0, 6, NULL, '2013-11-25 14:45:02', NULL, NULL),
(236, 26, '4248513426', 0, '42485', '', '3426', NULL, 1, 4, '2013-11-25 14:50:14', NULL, '2013-11-25 15:07:35', NULL, '2013-11-25 15:08:09', NULL, 0, 6, NULL, '2013-11-25 14:50:14', NULL, NULL),
(237, 27, '4248510364', 0, '42485', '', '0364', NULL, 1, 4, '2013-11-25 15:02:39', NULL, '2013-11-25 15:21:27', NULL, '2013-11-25 15:25:21', NULL, 0, 6, NULL, '2013-11-25 15:02:39', NULL, NULL),
(238, 28, '4248512158', 0, '42485', '', '2158', NULL, 1, 4, '2013-11-25 15:06:47', NULL, '2013-11-25 15:50:09', NULL, '2013-11-25 15:50:58', NULL, 0, 6, NULL, '2013-11-25 15:06:47', NULL, NULL),
(239, 29, '4248513640', 0, '42485', '', '3640', NULL, 1, 4, '2013-11-25 15:06:51', NULL, '2013-11-25 15:54:37', NULL, '2013-11-25 17:25:44', NULL, 0, 6, NULL, '2013-11-25 15:06:51', NULL, NULL),
(240, 30, '4248510468', 0, '42485', '', '0468', NULL, 1, 4, '2013-11-25 15:09:52', NULL, '2013-11-25 15:55:42', NULL, '2013-11-25 15:56:42', NULL, 0, 6, NULL, '2013-11-25 15:09:52', NULL, NULL),
(241, 31, '4248523175', 0, '42485', '', '3175', NULL, 2, 4, '2013-11-25 15:12:52', NULL, '2013-11-25 15:23:17', NULL, '2013-11-25 15:23:22', NULL, 0, 6, NULL, '2013-11-25 15:12:52', NULL, NULL),
(242, 32, '4248510476', 0, '42485', '', '0476', NULL, 1, 4, '2013-11-25 15:15:21', NULL, '2013-11-25 15:58:28', NULL, '2013-11-25 15:58:57', NULL, 0, 6, NULL, '2013-11-25 15:15:21', NULL, NULL),
(243, 33, '4248510533', 0, '42485', '', '0533', NULL, 1, 4, '2013-11-25 15:25:23', NULL, '2013-11-25 16:11:15', NULL, '2013-11-25 16:11:43', NULL, 0, 6, NULL, '2013-11-25 15:25:23', NULL, NULL),
(244, 34, '4248523673', 0, '42485', '', '3673', NULL, 2, 4, '2013-11-25 15:27:45', NULL, '2013-11-25 15:39:38', NULL, '2013-11-25 15:50:09', NULL, 0, 6, NULL, '2013-11-25 15:27:45', NULL, NULL),
(245, 35, '4248520317', 0, '42485', '', '0317', NULL, 2, 4, '2013-11-25 15:28:01', NULL, '2013-11-25 15:57:45', NULL, '2013-11-25 15:58:13', NULL, 0, 6, NULL, '2013-11-25 15:28:01', NULL, NULL),
(246, 36, '4248511874', 0, '42485', '', '1874', NULL, 1, 4, '2013-11-25 15:34:07', NULL, '2013-11-25 16:17:17', NULL, '2013-11-25 16:20:48', NULL, 0, 6, NULL, '2013-11-25 15:34:07', NULL, NULL),
(247, 37, '4248513828', 0, '42485', '', '3828', NULL, 1, 4, '2013-11-25 15:49:41', NULL, '2013-11-25 16:45:52', NULL, '2013-11-25 16:47:57', NULL, 0, 6, NULL, '2013-11-25 15:49:41', NULL, NULL),
(248, 38, '4248522417', 0, '42485', '', '2417', NULL, 2, 4, '2013-11-25 15:52:35', NULL, '2013-11-25 15:58:23', NULL, '2013-11-25 15:59:08', NULL, 0, 6, NULL, '2013-11-25 15:52:35', NULL, NULL),
(249, 39, '4248520582', 0, '42485', '', '0582', NULL, 2, 4, '2013-11-25 15:54:00', NULL, '2013-11-25 16:00:53', NULL, '2013-11-25 16:01:27', NULL, 0, 6, NULL, '2013-11-25 15:54:00', NULL, NULL),
(250, 40, '4248521548', 0, '42485', '', '1548', NULL, 2, 4, '2013-11-25 15:56:46', NULL, '2013-11-25 16:06:36', NULL, '2013-11-25 16:15:09', NULL, 0, 6, NULL, '2013-11-25 15:56:46', NULL, NULL),
(251, 41, '4248520549', 0, '42485', '', '0549', NULL, 2, 4, '2013-11-25 16:01:50', NULL, '2013-11-25 16:15:15', NULL, '2013-11-25 16:17:04', NULL, 0, 6, NULL, '2013-11-25 16:01:50', NULL, NULL),
(252, 42, '4248523884', 0, '42485', '', '3884', NULL, 2, 4, '2013-11-25 16:10:10', NULL, '2013-11-25 16:27:17', NULL, '2013-11-25 16:27:34', NULL, 0, 6, NULL, '2013-11-25 16:10:10', NULL, NULL),
(253, 43, '4248510117', 0, '42485', '', '0117', NULL, 1, 4, '2013-11-25 16:13:58', NULL, '2013-11-25 16:49:59', NULL, '2013-11-25 16:50:20', NULL, 0, 6, NULL, '2013-11-25 16:13:58', NULL, NULL),
(254, 44, '4248513222', 0, '42485', '', '3222', NULL, 1, 4, '2013-11-25 16:14:10', NULL, '2013-11-25 17:05:28', NULL, '2013-11-25 17:08:44', NULL, 0, 6, NULL, '2013-11-25 16:14:10', NULL, NULL),
(255, 45, '4248520838', 0, '42485', '', '0838', NULL, 2, 4, '2013-11-25 16:23:19', NULL, '2013-11-25 16:40:00', NULL, '2013-11-25 16:40:47', NULL, 0, 6, NULL, '2013-11-25 16:23:19', NULL, NULL),
(256, 46, '4248512429', 0, '42485', '', '2429', NULL, 1, 4, '2013-11-25 16:25:02', NULL, '2013-11-25 17:08:20', NULL, '2013-11-25 17:10:01', NULL, 0, 6, NULL, '2013-11-25 16:25:02', NULL, NULL),
(257, 47, '4248513099', 0, '42485', '', '3099', NULL, 1, 4, '2013-11-25 16:28:36', NULL, '2013-11-25 16:29:00', NULL, '2013-11-25 16:44:04', NULL, 0, 6, NULL, '2013-11-25 16:28:36', NULL, NULL),
(258, 48, '4248511524', 0, '42485', '', '1524', NULL, 1, 4, '2013-11-25 16:36:46', NULL, '2013-11-25 17:18:29', NULL, '2013-11-25 17:18:31', NULL, 0, 6, NULL, '2013-11-25 16:36:46', NULL, NULL),
(259, 49, '4248513488', 0, '42485', '', '3488', NULL, 1, 4, '2013-11-26 07:49:16', NULL, '2013-11-26 08:03:28', NULL, '2013-11-26 08:03:47', NULL, 0, 6, NULL, '2013-11-26 07:49:16', NULL, NULL),
(260, 50, '4248511062', 0, '42485', '', '1062', NULL, 1, 4, '2013-11-26 07:52:41', NULL, '2013-11-26 08:34:00', NULL, '2013-11-26 08:34:40', NULL, 0, 6, NULL, '2013-11-26 07:52:41', NULL, NULL),
(261, 51, '4248522100', 0, '42485', '', '2100', NULL, 2, 4, '2013-11-26 07:52:44', NULL, '2013-11-26 08:00:26', NULL, '2013-11-26 08:02:41', NULL, 0, 6, NULL, '2013-11-26 07:52:44', NULL, NULL);
INSERT INTO `nocore_barcode_full` (`fullid`, `id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(262, 52, '4248522756', 0, '42485', '', '2756', NULL, 2, 4, '2013-11-26 07:52:51', NULL, '2013-11-26 08:02:46', NULL, '2013-11-26 08:03:21', NULL, 0, 6, NULL, '2013-11-26 07:52:51', NULL, NULL),
(263, 53, '4248513324', 0, '42485', '', '3324', NULL, 1, 4, '2013-11-26 07:52:57', NULL, '2013-11-26 08:37:23', NULL, '2013-11-26 08:38:03', NULL, 0, 6, NULL, '2013-11-26 07:52:57', NULL, NULL),
(264, 54, '4248522367', 0, '42485', '', '2367', NULL, 2, 4, '2013-11-26 07:53:03', NULL, NULL, NULL, '2013-11-26 08:03:02', NULL, 0, 6, NULL, '2013-11-26 07:53:03', NULL, NULL),
(265, 55, '4248513742', 0, '42485', '', '3742', NULL, 1, 4, '2013-11-26 07:53:53', NULL, '2013-11-26 08:51:00', NULL, '2013-11-26 08:53:13', NULL, 0, 6, NULL, '2013-11-26 07:53:53', NULL, NULL),
(266, 56, '042485209995', 0, '42485', '', '09995', NULL, 2, 4, '2013-11-26 07:54:35', 0, NULL, NULL, '2013-11-26 08:27:05', NULL, 0, 6, NULL, '2013-11-26 07:54:35', NULL, NULL),
(267, 57, '4248522969', 0, '42485', '', '2969', NULL, 2, 4, '2013-11-26 07:54:44', NULL, '2013-11-26 08:27:32', NULL, '2013-11-26 08:28:30', NULL, 0, 6, NULL, '2013-11-26 07:54:44', NULL, NULL),
(268, 58, '4248521023', 0, '42485', '', '1023', NULL, 2, 4, '2013-11-26 08:02:24', NULL, '2013-11-26 08:43:12', NULL, '2013-11-26 08:43:31', NULL, 0, 6, NULL, '2013-11-26 08:02:24', NULL, NULL),
(269, 59, '4248520965', 0, '42485', '', '0965', NULL, 2, 4, '2013-11-26 08:07:29', NULL, '2013-11-26 08:34:26', NULL, '2013-11-26 08:35:34', NULL, 0, 6, NULL, '2013-11-26 08:07:29', NULL, NULL),
(270, 60, '4248510401', 0, '42485', '', '0401', NULL, 1, 4, '2013-11-26 08:23:59', NULL, '2013-11-26 08:54:32', NULL, '2013-11-26 08:55:16', NULL, 0, 6, NULL, '2013-11-26 08:23:59', NULL, NULL),
(271, 61, '4248513802', 0, '42485', '', '3802', NULL, 1, 4, '2013-11-26 08:25:04', NULL, '2013-11-26 08:59:56', NULL, '2013-11-26 09:04:26', NULL, 0, 6, NULL, '2013-11-26 08:25:04', NULL, NULL),
(272, 62, '4248511014', 0, '42485', '', '1014', NULL, 1, 4, '2013-11-26 08:43:49', NULL, '2013-11-26 09:14:12', NULL, '2013-11-26 09:15:59', NULL, 0, 6, NULL, '2013-11-26 08:43:49', NULL, NULL),
(273, 63, '4248520767', 0, '42485', '', '0767', NULL, 2, 4, '2013-11-26 08:57:04', NULL, '2013-11-26 08:57:34', NULL, '2013-11-26 08:57:36', NULL, 0, 6, NULL, '2013-11-26 08:57:04', NULL, NULL),
(274, 64, '4248521163', 0, '42485', '', '1163', NULL, 2, 4, '2013-11-26 09:01:33', NULL, '2013-11-26 09:10:15', NULL, '2013-11-26 09:10:26', NULL, 0, 6, NULL, '2013-11-26 09:01:33', NULL, NULL),
(275, 65, '4248521123', 0, '42485', '', '1123', NULL, 2, 4, '2013-11-26 09:23:36', NULL, '2013-11-26 09:31:45', NULL, '2013-11-26 09:32:42', NULL, 0, 6, NULL, '2013-11-26 09:23:36', NULL, NULL),
(276, 66, '4248521729', 0, '42485', '', '1729', NULL, 2, 4, '2013-11-26 09:44:37', NULL, '2013-11-26 09:59:49', NULL, '2013-11-26 09:59:51', NULL, 0, 6, NULL, '2013-11-26 09:44:37', NULL, NULL),
(277, 67, '4248521491', 0, '42485', '', '1491', NULL, 2, 4, '2013-11-26 09:47:30', NULL, '2013-11-26 10:04:30', NULL, '2013-11-26 10:04:44', NULL, 0, 6, NULL, '2013-11-26 09:47:30', NULL, NULL),
(278, 68, '4248510268', 0, '42485', '', '0268', NULL, 1, 4, '2013-11-26 09:49:59', NULL, '2013-11-26 09:53:47', NULL, '2013-11-26 09:56:14', NULL, 0, 6, NULL, '2013-11-26 09:49:59', NULL, NULL),
(279, 69, '4248512230', 0, '42485', '', '2230', NULL, 1, 4, '2013-11-26 09:54:36', NULL, '2013-11-26 10:01:52', NULL, '2013-11-26 10:08:57', NULL, 0, 6, NULL, '2013-11-26 09:54:36', NULL, NULL),
(280, 70, '4248522643', 0, '42485', '', '2643', NULL, 2, 4, '2013-11-26 09:55:02', NULL, '2013-11-26 10:06:35', NULL, '2013-11-26 10:06:54', NULL, 0, 6, NULL, '2013-11-26 09:55:02', NULL, NULL),
(281, 71, '4248523359', 0, '42485', '', '3359', NULL, 2, 4, '2013-11-26 10:02:25', NULL, '2013-11-26 10:07:28', NULL, '2013-11-26 10:07:33', NULL, 0, 6, NULL, '2013-11-26 10:02:25', NULL, NULL),
(282, 72, '4248523620', 0, '42485', '', '3620', NULL, 2, 4, '2013-11-26 10:09:15', NULL, '2013-11-26 10:48:23', NULL, '2013-11-26 10:48:45', NULL, 0, 6, NULL, '2013-11-26 10:09:15', NULL, NULL),
(283, 73, '4248510536', 0, '42485', '', '0536', NULL, 1, 4, '2013-11-26 10:17:18', NULL, '2013-11-26 10:27:21', NULL, '2013-11-26 10:31:39', NULL, 0, 6, NULL, '2013-11-26 10:17:18', NULL, NULL),
(284, 74, '4248520728', 0, '42485', '', '0728', NULL, 2, 4, '2013-11-26 10:21:46', NULL, '2013-11-26 10:51:00', NULL, '2013-11-26 10:51:39', NULL, 0, 6, NULL, '2013-11-26 10:21:46', NULL, NULL),
(285, 75, '4248521372', 0, '42485', '', '1372', NULL, 2, 4, '2013-11-26 10:36:29', NULL, '2013-11-26 11:20:29', NULL, '2013-11-26 11:20:41', NULL, 0, 6, NULL, '2013-11-26 10:36:29', NULL, NULL),
(286, 76, '4248520430', 0, '42485', '', '0430', NULL, 2, 4, '2013-11-26 10:44:10', NULL, '2013-11-26 11:23:30', NULL, '2013-11-26 11:25:46', NULL, 0, 6, NULL, '2013-11-26 10:44:10', NULL, NULL),
(287, 77, '4248512367', 0, '42485', '', '2367', NULL, 1, 4, '2013-11-26 11:00:59', NULL, NULL, NULL, '2013-11-26 11:25:45', NULL, 0, 6, NULL, '2013-11-26 11:00:59', NULL, NULL),
(288, 78, '4248513812', 0, '42485', '', '3812', NULL, 1, 4, '2013-11-26 11:02:52', NULL, '2013-11-26 11:31:19', NULL, '2013-11-26 11:32:02', NULL, 0, 6, NULL, '2013-11-26 11:02:52', NULL, NULL),
(289, 79, '4248522848', 0, '42485', '', '2848', NULL, 2, 4, '2013-11-26 11:10:40', NULL, '2013-11-26 11:26:07', NULL, '2013-11-26 11:27:06', NULL, 0, 6, NULL, '2013-11-26 11:10:40', NULL, NULL),
(290, 80, '4248513640', 0, '42485', '', '3640', NULL, 1, 4, '2013-11-26 11:11:07', NULL, '2013-11-26 11:35:04', NULL, '2013-11-26 11:35:39', NULL, 0, 6, NULL, '2013-11-26 11:11:07', NULL, NULL),
(291, 81, '4248512850', 0, '42485', '', '2850', NULL, 1, 4, '2013-11-26 11:15:13', NULL, '2013-11-26 11:36:25', NULL, '2013-11-26 11:38:55', NULL, 0, 6, NULL, '2013-11-26 11:15:13', NULL, NULL),
(292, 82, '4248522281', 0, '42485', '', '2281', NULL, 2, 4, '2013-11-26 11:17:49', NULL, '2013-11-26 11:30:32', NULL, '2013-11-26 11:31:02', NULL, 0, 6, NULL, '2013-11-26 11:17:49', NULL, NULL),
(293, 83, '4248520880', 0, '42485', '', '0880', NULL, 2, 4, '2013-11-26 11:28:50', NULL, '2013-11-26 11:32:17', NULL, '2013-11-26 11:42:24', NULL, 0, 6, NULL, '2013-11-26 11:28:50', NULL, NULL),
(294, 84, '042485109996', 0, '42485', '', '09996', NULL, 1, 4, '2013-11-26 11:38:43', NULL, NULL, NULL, '2013-11-26 11:46:49', NULL, 0, 6, NULL, '2013-11-26 11:38:43', NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- A tábla adatainak kiíratása `nocore_clinic`
--

INSERT INTO `nocore_clinic` (`id`, `name`, `message`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'Rendelő', NULL, 1, 2, NULL, NULL, 2, '2013-11-11 12:53:39'),
(2, 'Rendelő 1', 'Ez az 1-es Rendelő', 1, 3, NULL, NULL, 2, '2013-08-01 22:25:11'),
(3, 'Rendelő 2', 'Ez a 2-es rendelő', 1, 3, NULL, NULL, NULL, NULL),
(4, 'Rendelő', NULL, 1, 4, NULL, NULL, 2, '2013-11-11 12:54:01'),
(5, 'Rendelő', NULL, 1, 5, NULL, NULL, 2, '2013-11-11 12:53:54'),
(6, 'Rendelő', NULL, 1, 6, NULL, NULL, 2, '2013-11-13 10:53:39');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `nocore_clinic_order`
--

INSERT INTO `nocore_clinic_order` (`id`, `nocore_clinicID`, `nocore_doctorID`, `startDate`, `stopDate`, `information`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 6, 6, '2013-11-01', '2020-11-01', '', 1, 6, NULL, NULL, NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- A tábla adatainak kiíratása `nocore_doctor`
--

INSERT INTO `nocore_doctor` (`id`, `sealNumber`, `name`, `zipcode`, `settlement`, `address`, `phone`, `information`, `nurse`, `licence`, `patientTime`, `bannerMaximum`, `marqueeMaximum`, `alwaysView`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, '46423', 'Dr. Hasitz Ăgnes', '2000', 'Szentendre', NULL, NULL, NULL, 1, '0024642300', NULL, 20, 10, NULL, 1, 2, 3, '2013-10-30 17:00:03', 3, '2013-10-30 17:54:15'),
(2, '53237', 'Dr. Koncz Erika', '2051', NULL, NULL, NULL, NULL, 1, '0035323700', NULL, 10, 10, NULL, 1, 3, 3, '2013-10-31 09:38:09', 3, '2013-10-31 09:44:36'),
(3, '35507', 'Dr. Szeszler Györgyi', '2051', NULL, NULL, NULL, NULL, 1, '0033550700', NULL, 10, 10, NULL, 1, 3, 3, '2013-10-31 09:43:56', 3, '2013-10-31 09:44:28'),
(4, '11111', 'Dr. Páczi Antal', '2213', 'Monorierdő', 'Rózsa u. 5.', '06209349324', NULL, 1, '0041111100', 30, 20, 20, NULL, 1, 4, 2, '2013-11-11 12:15:43', NULL, NULL),
(5, '45908', 'Dr. Kerényi Attila', '4461', 'Nyírtelek', 'Arany J. u. 40.', '06309452232', NULL, 1, '005446100', 30, 20, 20, NULL, 1, 5, 2, '2013-11-11 12:17:53', NULL, NULL),
(6, '42485', 'Dr. Takács Anikó', '4461', 'Nyírtelek', 'Dózsa Gy. u. 48.', '0642210014', NULL, 1, '0064248500', 15, 20, 20, 1, 1, 6, 2, '2013-11-15 10:17:18', 3, '2013-12-03 15:14:27');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_advert`
--

INSERT INTO `nocore_doctor_advert` (`id`, `nocore_doctorID`, `description`, `name`, `sequenceId`, `advertFileName`, `textValue`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`, `lastvisit`) VALUES
(1, 6, NULL, '1', 1, 'Dia1_1.JPG', '1', 1, 6, 9, '2013-11-15 15:48:56', 9, '2013-11-19 12:25:42', NULL),
(2, 6, NULL, '2', 2, 'Dia2_2.JPG', '2', 1, 6, 9, '2013-11-15 15:49:14', 9, '2013-11-19 12:25:28', NULL),
(3, 6, NULL, '3', 3, 'Dia3_3.JPG', '3', 1, 6, 9, '2013-11-15 15:49:42', 9, '2013-11-19 12:25:57', NULL),
(4, 6, NULL, '4', 4, 'Dia4_4.JPG', '4', 1, 6, 9, '2013-11-15 15:50:09', 9, '2013-11-19 12:26:08', NULL),
(5, 6, NULL, '5', 5, 'Dia5_5.JPG', '5', 1, 6, 9, '2013-11-15 15:50:26', 9, '2013-11-19 12:26:19', NULL),
(6, 6, NULL, '6', 6, 'Dia6_6.JPG', '6', 1, 6, 9, '2013-11-15 15:50:53', 9, '2013-11-19 12:26:27', NULL),
(7, 6, NULL, '7', 7, 'Dia7_7.JPG', '7', 1, 6, 9, '2013-11-15 15:51:15', 9, '2013-11-19 12:26:36', NULL),
(8, 6, NULL, '8', 8, 'Dia8_8.JPG', '8', 1, 6, 9, '2013-11-15 15:51:35', 9, '2013-11-19 12:26:47', NULL),
(9, 6, NULL, '9', 9, 'Dia9_9.JPG', '9', 1, 6, 9, '2013-11-15 15:51:51', 9, '2013-11-19 12:27:00', NULL),
(10, 6, NULL, '10', 10, 'Dia10_10.JPG', '10', 1, 6, 9, '2013-11-15 15:52:07', 9, '2013-11-19 12:27:11', NULL),
(11, 6, NULL, '11', 11, 'Dia11_11.JPG', '11', 1, 6, 9, '2013-11-15 15:52:26', 9, '2013-11-19 12:27:29', NULL),
(12, 6, NULL, '12', 12, 'Dia12_12.JPG', '12', 1, 6, 9, '2013-11-15 15:52:52', 9, '2013-11-19 12:27:37', NULL),
(13, 6, NULL, '13', 13, 'Dia13_13.JPG', '13', 1, 6, 9, '2013-11-15 15:53:11', 9, '2013-11-19 12:27:48', NULL),
(14, 6, NULL, '14', 14, 'Dia14_14.JPG', '14', 1, 6, 9, '2013-11-15 15:53:34', 9, '2013-11-19 12:28:03', NULL),
(15, 6, NULL, '15', 15, 'Dia15_15.JPG', '15', 1, 6, 9, '2013-11-15 15:53:59', 9, '2013-11-19 12:28:12', NULL),
(16, 6, NULL, '16', 16, 'Dia16_16.JPG', '16', 1, 6, 9, '2013-11-15 15:54:21', 9, '2013-11-19 12:28:20', NULL),
(17, 6, NULL, '17', 17, 'Dia17_17.JPG', '17', 1, 6, 9, '2013-11-15 15:55:11', 9, '2013-11-19 12:28:31', NULL),
(18, 6, NULL, '18', 18, 'Dia18_18.JPG', '18', 1, 6, 9, '2013-11-15 15:55:33', 9, '2013-11-19 12:28:41', NULL),
(19, 6, NULL, '19', 19, 'Dia19_19.JPG', '19', 1, 6, 9, '2013-11-15 15:55:50', 9, '2013-11-19 12:28:50', NULL),
(20, 6, NULL, '20', 20, 'Dia20_20.JPG', '20', 1, 6, 9, '2013-11-15 15:56:13', 9, '2013-11-19 12:29:00', NULL),
(21, 6, NULL, '21', 21, 'Dia21_21.JPG', '21', 1, 6, 9, '2013-11-15 15:56:28', 9, '2013-11-19 12:29:13', NULL),
(22, 6, NULL, '22', 22, 'Dia22_22.JPG', '22', 1, 6, 9, '2013-11-15 15:56:43', 9, '2013-11-19 12:29:24', NULL),
(23, 6, NULL, '23', 23, 'Dia23_23.JPG', '23', 1, 6, 9, '2013-11-15 15:56:59', 9, '2013-11-19 12:29:33', NULL),
(24, 6, NULL, '24', 24, 'Dia24_24.JPG', '24', 1, 6, 9, '2013-11-15 15:57:16', 9, '2013-11-19 12:29:42', NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=303 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_marquee`
--

INSERT INTO `nocore_doctor_marquee` (`id`, `nocore_doctorID`, `name`, `message`, `description`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 6, 'titulus', 'háziorvos, foglalkozás-egészségügyi szakorvos', '', 1, 6, 9, '2013-11-15 15:48:14', NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=13 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_order`
--

INSERT INTO `nocore_doctor_order` (`id`, `nocore_doctorID`, `nocore_doctor_order_dayID`, `startTime`, `stopTime`, `barcodeStart`, `barcodeStop`, `doctorIs`, `nurseIs`, `nocore_doctor_order_typeID`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 6, '1Mon', '12:00:00', '17:00:00', 0, 0, 1, 1, 1, 1, 6, 3, '2013-11-12 09:20:40', 9, '2013-11-19 13:00:56'),
(2, 6, '1Tue', '07:00:00', '12:00:00', 0, 0, 1, 1, 1, 1, 6, 3, '2013-11-12 09:22:11', 9, '2013-11-19 13:00:45'),
(3, 6, '1Wed', '12:00:00', '17:00:00', 0, 0, 1, 1, 1, 1, 6, 3, '2013-11-12 09:23:04', 9, '2013-11-19 12:58:14'),
(4, 6, '1Thu', '07:00:00', '12:00:00', 0, 0, 1, 1, 1, 1, 6, 3, '2013-11-12 09:23:55', 9, '2013-11-19 12:58:03'),
(5, 6, '1Fri', '07:00:00', '12:00:00', 0, 0, 1, 1, 1, 1, 6, 3, '2013-11-12 09:24:51', 9, '2013-11-19 12:57:54'),
(6, 6, '2Mon', '12:00:00', '17:00:00', 0, 0, 1, 1, 1, 1, 6, 3, '2013-11-12 09:25:55', 9, '2013-11-19 12:57:11'),
(7, 6, '2Tue', '07:00:00', '18:00:00', 0, 0, 1, 1, 1, 1, 6, 3, '2013-11-12 09:27:01', 2, '2013-11-26 13:42:29'),
(8, 6, '2Wed', '12:00:00', '17:00:00', 0, 0, 1, 1, 1, 1, 6, 3, '2013-11-12 09:27:59', 9, '2013-11-19 12:56:37'),
(9, 6, '2Thu', '07:00:00', '12:00:00', 0, 0, 1, 1, 1, 1, 6, 3, '2013-11-12 09:28:56', 9, '2013-11-19 12:56:46'),
(10, 6, '2Fri', '07:00:00', '12:00:00', 0, 0, 1, 1, 1, 1, 6, 3, '2013-11-12 09:30:02', 9, '2013-11-19 12:56:28'),
(11, 6, '2Sat', '07:00:00', '12:00:00', 0, 0, 1, 1, 1, 1, 6, 9, '2013-11-19 12:30:47', 9, '2013-11-19 12:56:19'),
(12, 6, '1Sat', '07:00:00', '12:00:00', 0, 0, 1, 1, 1, 1, 6, 9, '2013-11-19 12:31:11', 9, '2013-11-19 12:56:12');

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
