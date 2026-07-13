-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2013. dec. 02. 15:55
-- Szerver verzió: 5.1.41
-- PHP verzió: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `vir2_005`
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
(1, 'frontend', NULL, 'core_localserverID', '5', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(2, 'frontend', NULL, 'barcodeType', '0', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(3, 'frontend', NULL, 'maxPatientView', '8', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-10-03 15:19:04'),
(4, 'frontend', NULL, 'waitingBoxRefresh', '10', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(5, 'frontend', NULL, 'bannerBoxRefresh', '1800', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(6, 'frontend', NULL, 'marqueeBoxRefresh', '10', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(7, 'frontend', NULL, 'barcodeReadTimeout', '8', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-11-26 12:18:10'),
(8, 'frontend', NULL, 'patientViewTimeout', '8', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-11-26 12:18:26'),
(9, 'frontend', NULL, 'patientViewRefresh', '1', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
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
(26, 'frontend', NULL, 'doctorNameViewNo', '0', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- A tábla adatainak kiíratása `core_localserver`
--

INSERT INTO `core_localserver` (`id`, `name`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(5, '005NYIRTELE201311124461HU', NULL, 1, 2, '2013-11-11 11:47:13', NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- A tábla adatainak kiíratása `core_users`
--

INSERT INTO `core_users` (`id`, `core_userstitleID`, `surname`, `forename`, `nickname`, `password`, `email`, `core_localserverID`, `active`, `description`, `lastLoginWhen`, `lastLogoutWhen`, `activationCode`, `regmailWhen`, `activationWhen`, `core_groupsID`, `pictureURL`, `newsletter`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`, `isReadWhen`, `isReadUserID`) VALUES
(1, NULL, NULL, NULL, 'Guest', '', '', NULL, 1, NULL, NULL, '2013-10-28 12:19:13', NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, 2, '2012-01-24 11:06:15', '2006-03-28 23:38:24', 2),
(2, NULL, 'Szabó', 'Sándor', 'SzSanyi', 'phoenix', 'rodnas@uw.hu', NULL, 1, NULL, '2013-09-02 13:09:13', '2013-10-31 14:58:32', NULL, NULL, NULL, 2, NULL, 0, NULL, '2005-02-19 09:00:00', 2, '2013-11-04 10:14:52', '2009-06-03 09:01:09', 2),
(3, NULL, 'Varga', 'Tamás', 'tomi', 'tomi', 'varga.tamas@dericom.hu', NULL, 1, NULL, '2013-08-30 09:55:20', '2013-11-26 09:21:07', NULL, NULL, NULL, 2, NULL, 0, 2, '2013-08-05 11:01:17', NULL, NULL, '2013-08-05 11:01:17', 2),
(4, 1, 'Hasitz', 'Ăgnes', 'hasitza', 'hasitza', 'hasitza@gmail.com', 2, 1, NULL, NULL, '2013-10-30 17:43:23', NULL, NULL, NULL, 5, NULL, 0, 3, '2013-10-30 17:05:33', NULL, NULL, '2013-10-30 17:05:33', 3),
(5, 1, 'Koncz', 'Erika', 'koncz', 'koncz', 'tamas.varga@deicom.hu', 3, 1, NULL, NULL, '2013-10-31 09:50:59', NULL, NULL, NULL, 5, NULL, 0, 3, '2013-10-31 09:31:00', 3, '2013-10-31 09:44:59', '2013-10-31 09:31:00', 3),
(6, 1, 'Szeszler', 'Györgyi', 'szeszler', 'szeszler', 'info@dericom.hu', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 0, 3, '2013-10-31 09:34:17', 3, '2013-10-31 09:44:51', '2013-10-31 09:34:17', 3),
(7, 1, 'Kerényi', 'Attila', 'kerus', 'kerus', 'kerusrendelo@invitel.hu', NULL, 1, NULL, NULL, '2013-11-26 09:19:27', NULL, NULL, NULL, 5, NULL, 0, 3, '2013-11-12 09:10:43', NULL, NULL, '2013-11-12 09:10:43', 3);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- A tábla adatainak kiíratása `core_users_config`
--

INSERT INTO `core_users_config` (`id`, `fieldName`, `fieldValue`, `autoload`, `active`, `core_localserverID`, `core_usersID`, `insertWhen`, `modifyWhen`) VALUES
(1, 'layout', 'layoutsetup', NULL, 1, 5, 7, '2013-11-20 16:05:50', '2013-11-20 16:05:50'),
(2, 'modulSelect', 'nocore_doctor', NULL, 1, 5, 7, '2013-11-20 16:05:50', '2013-11-26 09:19:11'),
(3, 'layout', 'layoutsetup', NULL, 1, 5, 3, '2013-11-26 09:18:14', '2013-11-26 09:18:14'),
(4, 'modulSelect', 'core_config', NULL, 1, 5, 3, '2013-11-26 09:18:14', '2013-11-26 11:46:32');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=429 ;

--
-- A tábla adatainak kiíratása `nocore_barcode_full`
--

INSERT INTO `nocore_barcode_full` (`fullid`, `id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 1, '045908109995', 0, '45908', '', '09995', NULL, 1, 4, '2013-11-12 17:31:35', NULL, NULL, NULL, '2013-11-12 18:01:33', NULL, 0, 5, NULL, '2013-11-12 17:31:35', NULL, NULL),
(2, 1, '045908109990', 0, '45908', '', '09990', NULL, 1, 4, '2013-11-13 15:40:08', 0, NULL, NULL, '2013-11-13 15:44:29', NULL, 0, 5, NULL, '2013-11-13 15:40:08', NULL, NULL),
(3, 2, '045908109992', 0, '45908', '', '09992', NULL, 1, 4, '2013-11-13 15:41:38', 0, NULL, NULL, '2013-11-13 15:46:03', NULL, 0, 5, NULL, '2013-11-13 15:41:38', NULL, NULL),
(4, 3, '4590813011', 0, '45908', '', '3011', NULL, 1, 4, '2013-11-13 15:41:50', NULL, '2013-11-13 15:47:48', NULL, '2013-11-13 15:47:55', NULL, 0, 5, NULL, '2013-11-13 15:41:50', NULL, NULL),
(5, 4, '4590823018', 0, '45908', '', '3018', NULL, 2, 4, '2013-11-13 15:41:58', NULL, NULL, NULL, '2013-11-13 15:48:05', NULL, 0, 5, NULL, '2013-11-13 15:41:58', NULL, NULL),
(6, 5, '4590823001', 0, '45908', '', '3001', NULL, 2, 4, '2013-11-13 15:42:05', 0, NULL, NULL, '2013-11-13 15:48:10', NULL, 0, 5, NULL, '2013-11-13 15:42:05', NULL, NULL),
(7, 6, '4590812998', 0, '45908', '', '2998', NULL, 1, 4, '2013-11-13 15:42:14', NULL, '2013-11-13 15:48:12', NULL, '2013-11-13 15:48:21', NULL, 0, 5, NULL, '2013-11-13 15:42:14', NULL, NULL),
(8, 7, '4590810609', 0, '45908', '', '0609', NULL, 1, 4, '2013-11-13 15:42:26', NULL, '2013-11-13 15:44:33', NULL, '2013-11-13 15:52:16', NULL, 0, 5, NULL, '2013-11-13 15:42:26', NULL, NULL),
(9, 8, '4590812998', 0, '45908', '', '2998', NULL, 1, 4, '2013-11-13 15:48:12', NULL, '2013-11-13 15:49:57', NULL, '2013-11-13 15:50:23', NULL, 0, 5, NULL, '2013-11-13 15:48:12', NULL, NULL),
(10, 9, '4590813001', 0, '45908', '', '3001', NULL, 1, 4, '2013-11-13 15:48:16', NULL, '2013-11-13 15:51:03', NULL, '2013-11-13 15:51:08', NULL, 0, 5, NULL, '2013-11-13 15:48:16', NULL, NULL),
(11, 10, '4590820609', 0, '45908', '', '0609', NULL, 2, 4, '2013-11-13 15:48:34', NULL, '2013-11-13 15:52:02', NULL, '2013-11-13 15:52:16', NULL, 0, 5, NULL, '2013-11-13 15:48:34', NULL, NULL),
(12, 11, '4590823018', 0, '45908', '', '3018', NULL, 2, 4, '2013-11-13 15:48:39', NULL, '2013-11-13 15:52:04', NULL, '2013-11-13 15:52:09', NULL, 0, 5, NULL, '2013-11-13 15:48:39', NULL, NULL),
(13, 12, '045908209992', 0, '45908', '', '09992', NULL, 2, 4, '2013-11-13 15:48:52', 0, NULL, NULL, '2013-11-13 15:51:38', NULL, 0, 5, NULL, '2013-11-13 15:48:52', NULL, NULL),
(14, 13, '045908109990', 0, '45908', '', '09990', NULL, 1, 4, '2013-11-13 15:48:59', 0, NULL, NULL, '2013-11-13 15:52:32', NULL, 0, 5, NULL, '2013-11-13 15:48:59', NULL, NULL),
(15, 1, '4590821567', 0, '45908', '', '1567', NULL, 2, 4, '2013-11-14 07:34:30', NULL, '2013-11-14 08:05:53', NULL, '2013-11-14 08:12:58', NULL, 0, 5, NULL, '2013-11-14 07:34:30', NULL, NULL),
(16, 2, '4590820936', 0, '45908', '', '0936', NULL, 2, 4, '2013-11-14 07:55:00', NULL, '2013-11-14 08:13:04', NULL, '2013-11-14 08:13:45', NULL, 0, 5, NULL, '2013-11-14 07:55:00', NULL, NULL),
(17, 3, '4590821481', 0, '45908', '', '1481', NULL, 2, 4, '2013-11-14 07:56:09', NULL, '2013-11-14 08:13:51', NULL, '2013-11-14 08:15:17', NULL, 0, 5, NULL, '2013-11-14 07:56:09', NULL, NULL),
(18, 4, '4590820382', 0, '45908', '', '0382', NULL, 2, 4, '2013-11-14 08:01:13', NULL, '2013-11-14 08:15:23', NULL, '2013-11-14 08:16:04', NULL, 0, 5, NULL, '2013-11-14 08:01:13', NULL, NULL),
(19, 5, '4590821422', 0, '45908', '', '1422', NULL, 2, 4, '2013-11-14 08:06:52', NULL, '2013-11-14 08:17:36', NULL, '2013-11-14 08:18:03', NULL, 0, 5, NULL, '2013-11-14 08:06:52', NULL, NULL),
(20, 6, '4590820009', 0, '45908', '', '0009', NULL, 2, 4, '2013-11-14 08:18:01', NULL, '2013-11-14 08:26:45', NULL, '2013-11-14 08:26:59', NULL, 0, 5, NULL, '2013-11-14 08:18:01', NULL, NULL),
(21, 7, '4590823055', 0, '45908', '', '3055', NULL, 2, 4, '2013-11-14 08:18:49', NULL, '2013-11-14 08:31:23', NULL, '2013-11-14 08:32:58', NULL, 0, 5, NULL, '2013-11-14 08:18:49', NULL, NULL),
(22, 8, '4590820011', 0, '45908', '', '0011', NULL, 2, 4, '2013-11-14 08:22:28', NULL, '2013-11-14 08:34:07', NULL, '2013-11-14 08:36:52', NULL, 0, 5, NULL, '2013-11-14 08:22:28', NULL, NULL),
(23, 9, '4590822563', 0, '45908', '', '2563', NULL, 2, 4, '2013-11-14 08:26:51', NULL, '2013-11-14 08:37:03', NULL, '2013-11-14 08:37:48', NULL, 0, 5, NULL, '2013-11-14 08:26:51', NULL, NULL),
(24, 10, '4590821193', 0, '45908', '', '1193', NULL, 2, 4, '2013-11-14 08:37:13', NULL, '2013-11-14 08:45:11', NULL, '2013-11-14 08:48:30', NULL, 0, 5, NULL, '2013-11-14 08:37:13', NULL, NULL),
(25, 11, '045908209990', 0, '45908', '', '09990', NULL, 2, 4, '2013-11-14 08:59:31', NULL, NULL, NULL, '2013-11-14 09:04:27', NULL, 0, 5, NULL, '2013-11-14 08:59:31', NULL, NULL),
(26, 12, '4590821977', 0, '45908', '', '1977', NULL, 2, 4, '2013-11-14 12:21:31', NULL, '2013-11-14 13:04:42', NULL, '2013-11-14 13:05:12', NULL, 0, 5, NULL, '2013-11-14 12:21:31', NULL, NULL),
(27, 13, '4590820143', 0, '45908', '', '0143', NULL, 2, 4, '2013-11-14 12:27:50', NULL, '2013-11-14 13:08:17', NULL, '2013-11-14 13:08:39', NULL, 0, 5, NULL, '2013-11-14 12:27:50', NULL, NULL),
(28, 14, '4590822498', 0, '45908', '', '2498', NULL, 2, 4, '2013-11-14 12:32:37', NULL, '2013-11-14 13:11:09', NULL, '2013-11-14 13:11:26', NULL, 0, 5, NULL, '2013-11-14 12:32:37', NULL, NULL),
(29, 15, '4590812672', 0, '45908', '', '2672', NULL, 1, 4, '2013-11-14 12:33:14', NULL, '2013-11-14 13:21:21', NULL, '2013-11-14 13:24:30', NULL, 0, 5, NULL, '2013-11-14 12:33:14', NULL, NULL),
(30, 16, '4590823037', 0, '45908', '', '3037', NULL, 2, 4, '2013-11-14 12:34:35', NULL, '2013-11-14 13:14:19', NULL, '2013-11-14 13:14:55', NULL, 0, 5, NULL, '2013-11-14 12:34:35', NULL, NULL),
(31, 17, '4590810793', 0, '45908', '', '0793', NULL, 1, 4, '2013-11-14 12:47:12', NULL, '2013-11-14 13:23:54', NULL, '2013-11-14 13:24:04', NULL, 0, 5, NULL, '2013-11-14 12:47:12', NULL, NULL),
(32, 18, '4590822610', 0, '45908', '', '2610', NULL, 2, 4, '2013-11-14 12:59:18', NULL, '2013-11-14 13:17:16', NULL, '2013-11-14 13:17:38', NULL, 0, 5, NULL, '2013-11-14 12:59:18', NULL, NULL),
(33, 19, '4590810628', 0, '45908', '', '0628', NULL, 1, 4, '2013-11-14 13:00:39', NULL, '2013-11-14 13:30:34', NULL, '2013-11-14 13:30:53', NULL, 0, 5, NULL, '2013-11-14 13:00:39', NULL, NULL),
(34, 20, '4590812700', 0, '45908', '', '2700', NULL, 1, 4, '2013-11-14 13:02:09', NULL, '2013-11-14 13:41:14', NULL, '2013-11-14 13:43:43', NULL, 0, 5, NULL, '2013-11-14 13:02:09', NULL, NULL),
(35, 21, '4590822285', 0, '45908', '', '2285', NULL, 2, 4, '2013-11-14 13:02:58', NULL, '2013-11-14 13:18:26', NULL, '2013-11-14 13:19:02', NULL, 0, 5, NULL, '2013-11-14 13:02:58', NULL, NULL),
(36, 22, '4590820677', 0, '45908', '', '0677', NULL, 2, 4, '2013-11-14 13:32:18', NULL, '2013-11-14 13:33:01', NULL, '2013-11-14 13:33:47', NULL, 0, 5, NULL, '2013-11-14 13:32:18', NULL, NULL),
(37, 23, '4590811710', 0, '45908', '', '1710', NULL, 1, 4, '2013-11-14 13:32:36', NULL, '2013-11-14 13:44:23', NULL, '2013-11-14 13:45:56', NULL, 0, 5, NULL, '2013-11-14 13:32:36', NULL, NULL),
(38, 24, '4590810905', 0, '45908', '', '0905', NULL, 1, 4, '2013-11-14 13:36:55', NULL, '2013-11-14 13:51:07', NULL, '2013-11-14 14:05:13', NULL, 0, 5, NULL, '2013-11-14 13:36:55', NULL, NULL),
(39, 25, '4590823165', 0, '45908', '', '3165', NULL, 2, 4, '2013-11-14 13:55:19', NULL, '2013-11-14 13:55:49', NULL, '2013-11-14 13:57:02', NULL, 0, 5, NULL, '2013-11-14 13:55:19', NULL, NULL),
(40, 26, '4590813285', 0, '45908', '', '3285', NULL, 1, 4, '2013-11-14 13:56:02', NULL, '2013-11-14 14:01:54', NULL, '2013-11-14 14:02:17', NULL, 0, 5, NULL, '2013-11-14 13:56:02', NULL, NULL),
(41, 27, '4590810362', 0, '45908', '', '0362', NULL, 1, 4, '2013-11-14 14:05:30', NULL, '2013-11-14 14:07:09', NULL, '2013-11-14 14:08:22', NULL, 0, 5, NULL, '2013-11-14 14:05:30', NULL, NULL),
(42, 28, '4590821545', 0, '45908', '', '1545', NULL, 2, 4, '2013-11-14 14:07:30', NULL, '2013-11-14 14:08:28', NULL, '2013-11-14 14:09:42', NULL, 0, 5, NULL, '2013-11-14 14:07:30', NULL, NULL),
(43, 29, '4590812258', 0, '45908', '', '2258', NULL, 1, 4, '2013-11-14 14:23:47', NULL, '2013-11-14 14:24:24', NULL, '2013-11-14 14:24:57', NULL, 0, 5, NULL, '2013-11-14 14:23:47', NULL, NULL),
(44, 30, '4590811682', 0, '45908', '', '1682', NULL, 1, 4, '2013-11-14 14:31:37', NULL, '2013-11-14 14:31:50', NULL, '2013-11-14 14:31:54', NULL, 0, 5, NULL, '2013-11-14 14:31:37', NULL, NULL),
(45, 31, '045908209990', 0, '45908', '', '09990', NULL, 2, 4, '2013-11-14 14:36:55', NULL, NULL, NULL, '2013-11-14 14:38:32', NULL, 0, 5, NULL, '2013-11-14 14:36:55', NULL, NULL),
(46, 32, '4590813142', 0, '45908', '', '3142', NULL, 1, 4, '2013-11-14 14:37:51', NULL, '2013-11-14 15:10:59', NULL, '2013-11-14 15:11:25', NULL, 0, 5, NULL, '2013-11-14 14:37:51', NULL, NULL),
(47, 33, '045908209992', 0, '45908', '', '09992', NULL, 2, 4, '2013-11-14 14:52:29', 0, NULL, NULL, '2013-11-14 15:08:05', NULL, 0, 5, NULL, '2013-11-14 14:52:29', NULL, NULL),
(48, 34, '4590812944', 0, '45908', '', '2944', NULL, 1, 4, '2013-11-14 14:53:34', NULL, '2013-11-14 15:16:52', NULL, '2013-11-14 15:16:56', NULL, 0, 5, NULL, '2013-11-14 14:53:34', NULL, NULL),
(49, 35, '4590811985', 0, '45908', '', '1985', NULL, 1, 4, '2013-11-14 14:53:44', NULL, '2013-11-14 15:21:37', NULL, '2013-11-14 15:22:16', NULL, 0, 5, NULL, '2013-11-14 14:53:44', NULL, NULL),
(50, 36, '4590813280', 0, '45908', '', '3280', NULL, 1, 4, '2013-11-14 15:09:27', NULL, '2013-11-14 15:30:11', NULL, '2013-11-14 15:31:04', NULL, 0, 5, NULL, '2013-11-14 15:09:27', NULL, NULL),
(51, 37, '4590821490', 0, '45908', '', '1490', NULL, 2, 4, '2013-11-14 15:10:43', NULL, '2013-11-14 15:11:31', NULL, '2013-11-14 15:11:59', NULL, 0, 5, NULL, '2013-11-14 15:10:43', NULL, NULL),
(52, 38, '4590820534', 0, '45908', '', '0534', NULL, 2, 4, '2013-11-14 15:13:12', NULL, '2013-11-14 15:17:28', NULL, '2013-11-14 15:20:12', NULL, 0, 5, NULL, '2013-11-14 15:13:12', NULL, NULL),
(53, 39, '4590821537', 0, '45908', '', '1537', NULL, 2, 4, '2013-11-14 15:21:35', NULL, '2013-11-14 15:22:26', NULL, '2013-11-14 15:22:43', NULL, 0, 5, NULL, '2013-11-14 15:21:35', NULL, NULL),
(54, 40, '045908109993', 0, '45908', '', '09993', NULL, 1, 4, '2013-11-14 15:45:53', 0, NULL, NULL, '2013-11-14 15:53:28', NULL, 0, 5, NULL, '2013-11-14 15:45:53', NULL, NULL),
(55, 41, '045908109994', 0, '45908', '', '09994', NULL, 1, 4, '2013-11-14 15:52:49', 0, NULL, NULL, '2013-11-14 15:57:24', NULL, 0, 5, NULL, '2013-11-14 15:52:49', NULL, NULL),
(56, 42, '4590812452', 0, '45908', '', '2452', NULL, 1, 4, '2013-11-14 15:53:13', NULL, '2013-11-14 16:11:20', NULL, '2013-11-14 16:12:35', NULL, 0, 5, NULL, '2013-11-14 15:53:13', NULL, NULL),
(57, 43, '4590820703', 0, '45908', '', '0703', NULL, 2, 4, '2013-11-14 16:02:58', NULL, '2013-11-14 16:03:38', NULL, '2013-11-14 16:04:05', NULL, 0, 5, NULL, '2013-11-14 16:02:58', NULL, NULL),
(58, 44, '4590822467', 0, '45908', '', '2467', NULL, 2, 4, '2013-11-14 16:07:29', NULL, '2013-11-14 16:08:26', NULL, '2013-11-14 16:08:49', NULL, 0, 5, NULL, '2013-11-14 16:07:29', NULL, NULL),
(59, 45, '4590821170', 0, '45908', '', '1170', NULL, 2, 4, '2013-11-14 16:09:19', NULL, '2013-11-14 16:13:17', NULL, '2013-11-14 16:14:51', NULL, 0, 5, NULL, '2013-11-14 16:09:19', NULL, NULL),
(60, 46, '4590812419', 0, '45908', '', '2419', NULL, 1, 4, '2013-11-14 16:10:11', NULL, '2013-11-14 16:26:04', NULL, '2013-11-14 16:28:06', NULL, 0, 5, NULL, '2013-11-14 16:10:11', NULL, NULL),
(61, 47, '4590810616', 0, '45908', '', '0616', NULL, 1, 4, '2013-11-14 16:21:29', NULL, '2013-11-14 16:35:45', NULL, '2013-11-14 16:38:25', NULL, 0, 5, NULL, '2013-11-14 16:21:29', NULL, NULL),
(62, 48, '045908109995', 0, '45908', '', '09995', NULL, 1, 4, '2013-11-14 16:25:04', 0, NULL, NULL, '2013-11-14 16:38:09', NULL, 0, 5, NULL, '2013-11-14 16:25:04', NULL, NULL),
(63, 49, '4590811293', 0, '45908', '', '1293', NULL, 1, 4, '2013-11-14 16:36:59', NULL, '2013-11-14 16:38:37', NULL, '2013-11-14 16:39:04', NULL, 0, 5, NULL, '2013-11-14 16:36:59', NULL, NULL),
(64, 1, '4590812876', 0, '45908', '', '2876', NULL, 1, 4, '2013-11-15 07:15:50', NULL, '2013-11-15 08:18:30', NULL, '2013-11-15 08:23:37', NULL, 0, 5, NULL, '2013-11-15 07:15:50', NULL, NULL),
(65, 2, '4590811618', 0, '45908', '', '1618', NULL, 1, 4, '2013-11-15 07:39:40', NULL, '2013-11-15 08:25:09', NULL, '2013-11-15 08:27:16', NULL, 0, 5, NULL, '2013-11-15 07:39:40', NULL, NULL),
(66, 3, '4590812772', 0, '45908', '', '2772', NULL, 1, 4, '2013-11-15 07:41:08', NULL, '2013-11-15 08:30:05', NULL, '2013-11-15 08:30:31', NULL, 0, 5, NULL, '2013-11-15 07:41:08', NULL, NULL),
(67, 4, '4590820001', 0, '45908', '', '0001', NULL, 2, 4, '2013-11-15 07:45:54', NULL, '2013-11-15 08:04:33', NULL, '2013-11-15 08:05:51', NULL, 0, 5, NULL, '2013-11-15 07:45:54', NULL, NULL),
(68, 5, '045908109990', 0, '45908', '', '09990', NULL, 1, 4, '2013-11-15 07:47:55', 0, NULL, NULL, '2013-11-15 09:02:37', NULL, 0, 5, NULL, '2013-11-15 07:47:55', NULL, NULL),
(69, 6, '4590821097', 0, '45908', '', '1097', NULL, 2, 4, '2013-11-15 07:49:20', NULL, '2013-11-15 08:09:03', NULL, '2013-11-15 08:10:30', NULL, 0, 5, NULL, '2013-11-15 07:49:20', NULL, NULL),
(70, 7, '045908209992', 0, '45908', '', '09992', NULL, 2, 4, '2013-11-15 07:50:37', 0, NULL, NULL, '2013-11-15 08:11:03', NULL, 0, 5, NULL, '2013-11-15 07:50:37', NULL, NULL),
(71, 8, '4590812309', 0, '45908', '', '2309', NULL, 1, 4, '2013-11-15 07:52:48', NULL, '2013-11-15 09:27:16', NULL, '2013-11-15 09:28:21', NULL, 0, 5, NULL, '2013-11-15 07:52:48', NULL, NULL),
(72, 9, '4590820668', 0, '45908', '', '0668', NULL, 2, 4, '2013-11-15 07:53:20', NULL, '2013-11-15 08:12:38', NULL, '2013-11-15 08:13:15', NULL, 0, 5, NULL, '2013-11-15 07:53:20', NULL, NULL),
(73, 10, '4590811074', 0, '45908', '', '1074', NULL, 1, 4, '2013-11-15 07:55:33', NULL, '2013-11-15 09:28:54', NULL, '2013-11-15 09:29:27', NULL, 0, 5, NULL, '2013-11-15 07:55:33', NULL, NULL),
(74, 11, '4590811210', 0, '45908', '', '1210', NULL, 1, 4, '2013-11-15 07:56:21', NULL, '2013-11-15 08:33:04', NULL, '2013-11-15 08:35:55', NULL, 0, 5, NULL, '2013-11-15 07:56:21', NULL, NULL),
(75, 12, '4590812573', 0, '45908', '', '2573', NULL, 1, 4, '2013-11-15 08:24:27', NULL, '2013-11-15 08:36:06', NULL, '2013-11-15 08:36:30', NULL, 0, 5, NULL, '2013-11-15 08:24:27', NULL, NULL),
(76, 13, '4590821481', 0, '45908', '', '1481', NULL, 2, 4, '2013-11-15 08:38:57', NULL, '2013-11-15 09:03:12', NULL, '2013-11-15 09:05:41', NULL, 0, 5, NULL, '2013-11-15 08:38:57', NULL, NULL),
(77, 14, '4590810715', 0, '45908', '', '0715', NULL, 1, 4, '2013-11-15 08:42:19', NULL, '2013-11-15 09:40:41', NULL, '2013-11-15 09:41:32', NULL, 0, 5, NULL, '2013-11-15 08:42:19', NULL, NULL),
(78, 15, '4590811586', 0, '45908', '', '1586', NULL, 1, 4, '2013-11-15 09:01:09', NULL, '2013-11-15 09:49:37', NULL, '2013-11-15 09:50:12', NULL, 0, 5, NULL, '2013-11-15 09:01:09', NULL, NULL),
(79, 16, '4590810719', 0, '45908', '', '0719', NULL, 1, 4, '2013-11-15 09:19:27', NULL, '2013-11-15 09:50:31', NULL, '2013-11-15 09:52:17', NULL, 0, 5, NULL, '2013-11-15 09:19:27', NULL, NULL),
(80, 17, '4590822158', 0, '45908', '', '2158', NULL, 2, 4, '2013-11-15 09:20:02', NULL, '2013-11-15 09:33:29', NULL, '2013-11-15 09:33:42', NULL, 0, 5, NULL, '2013-11-15 09:20:02', NULL, NULL),
(81, 18, '4590820493', 0, '45908', '', '0493', NULL, 2, 4, '2013-11-15 09:37:18', NULL, '2013-11-15 09:52:27', NULL, '2013-11-15 09:54:03', NULL, 0, 5, NULL, '2013-11-15 09:37:18', NULL, NULL),
(82, 19, '045908209993', 0, '45908', '', '09993', NULL, 2, 4, '2013-11-15 09:39:59', 0, NULL, NULL, '2013-11-15 09:55:47', NULL, 0, 5, NULL, '2013-11-15 09:39:59', NULL, NULL),
(83, 20, '045908209994', 0, '45908', '', '09994', NULL, 2, 4, '2013-11-15 09:40:22', 0, NULL, NULL, '2013-11-15 10:04:25', NULL, 0, 5, NULL, '2013-11-15 09:40:22', NULL, NULL),
(84, 21, '4590812144', 0, '45908', '', '2144', NULL, 1, 4, '2013-11-15 09:50:29', NULL, '2013-11-15 10:10:41', NULL, '2013-11-15 10:13:39', NULL, 0, 5, NULL, '2013-11-15 09:50:29', NULL, NULL),
(85, 22, '4590821040', 0, '45908', '', '1040', NULL, 2, 4, '2013-11-15 10:05:25', NULL, '2013-11-15 10:06:30', NULL, '2013-11-15 10:09:44', NULL, 0, 5, NULL, '2013-11-15 10:05:25', NULL, NULL),
(86, 23, '4590813267', 0, '45908', '', '3267', NULL, 1, 4, '2013-11-15 10:17:21', NULL, '2013-11-15 10:34:50', NULL, '2013-11-15 10:35:51', NULL, 0, 5, NULL, '2013-11-15 10:17:21', NULL, NULL),
(87, 24, '045908109999', 0, '45908', '', '09999', NULL, 1, 4, '2013-11-15 10:19:20', 0, NULL, NULL, '2013-11-15 10:48:51', NULL, 0, 5, NULL, '2013-11-15 10:19:20', NULL, NULL),
(88, 25, '4590821776', 0, '45908', '', '1776', NULL, 2, 4, '2013-11-15 10:27:15', NULL, '2013-11-15 10:36:06', NULL, '2013-11-15 10:40:26', NULL, 0, 5, NULL, '2013-11-15 10:27:15', NULL, NULL),
(89, 26, '4590813238', 0, '45908', '', '3238', NULL, 1, 4, '2013-11-15 10:29:13', NULL, '2013-11-15 10:49:11', NULL, '2013-11-15 10:49:21', NULL, 0, 5, NULL, '2013-11-15 10:29:13', NULL, NULL),
(90, 27, '045908109995', 0, '45908', '', '09995', NULL, 1, 4, '2013-11-15 10:37:07', 0, NULL, NULL, '2013-11-15 10:52:01', NULL, 0, 5, NULL, '2013-11-15 10:37:07', NULL, NULL),
(91, 28, '4590811032', 0, '45908', '', '1032', NULL, 1, 4, '2013-11-15 10:39:31', NULL, '2013-11-15 10:54:54', NULL, '2013-11-15 10:55:22', NULL, 0, 5, NULL, '2013-11-15 10:39:31', NULL, NULL),
(92, 29, '4590823024', 0, '45908', '', '3024', NULL, 2, 4, '2013-11-15 10:39:37', NULL, '2013-11-15 10:43:24', NULL, '2013-11-15 10:43:39', NULL, 0, 5, NULL, '2013-11-15 10:39:37', NULL, NULL),
(93, 30, '4590811443', 0, '45908', '', '1443', NULL, 1, 4, '2013-11-15 11:19:07', NULL, '2013-11-15 11:19:49', NULL, '2013-11-15 11:20:07', NULL, 0, 5, NULL, '2013-11-15 11:19:07', NULL, NULL),
(94, 31, '045908109996', 0, '45908', '', '09996', NULL, 1, 4, '2013-11-15 11:30:08', 0, NULL, NULL, '2013-11-15 11:32:20', NULL, 0, 5, NULL, '2013-11-15 11:30:08', NULL, NULL),
(95, 32, '4590811839', 0, '45908', '', '1839', NULL, 1, 4, '2013-11-15 11:32:12', NULL, '2013-11-15 11:32:23', NULL, '2013-11-15 11:32:28', NULL, 0, 5, NULL, '2013-11-15 11:32:12', NULL, NULL),
(96, 1, '4590821250', 0, '45908', '', '1250', NULL, 2, 4, '2013-11-18 07:22:19', NULL, '2013-11-18 08:05:28', NULL, '2013-11-18 08:05:56', NULL, 0, 5, NULL, '2013-11-18 07:22:19', NULL, NULL),
(97, 2, '4590813057', 0, '45908', '', '3057', NULL, 1, 4, '2013-11-18 07:22:28', NULL, '2013-11-18 08:27:03', NULL, '2013-11-18 08:30:03', NULL, 0, 5, NULL, '2013-11-18 07:22:28', NULL, NULL),
(98, 3, '4590811874', 0, '45908', '', '1874', NULL, 1, 4, '2013-11-18 07:27:25', NULL, '2013-11-18 08:30:08', NULL, '2013-11-18 08:30:57', NULL, 0, 5, NULL, '2013-11-18 07:27:25', NULL, NULL),
(99, 4, '4590810715', 0, '45908', '', '0715', NULL, 1, 4, '2013-11-18 07:32:26', NULL, '2013-11-18 08:34:23', NULL, '2013-11-18 08:36:41', NULL, 0, 5, NULL, '2013-11-18 07:32:26', NULL, NULL),
(100, 5, '4590821271', 0, '45908', '', '1271', NULL, 2, 4, '2013-11-18 07:38:54', NULL, '2013-11-18 08:09:55', NULL, '2013-11-18 08:10:18', NULL, 0, 5, NULL, '2013-11-18 07:38:54', NULL, NULL),
(101, 6, '4590811984', 0, '45908', '', '1984', NULL, 1, 4, '2013-11-18 07:43:12', NULL, '2013-11-18 08:46:21', NULL, '2013-11-18 08:52:41', NULL, 0, 5, NULL, '2013-11-18 07:43:12', NULL, NULL),
(102, 7, '4590811210', 0, '45908', '', '1210', NULL, 1, 4, '2013-11-18 07:45:23', NULL, '2013-11-18 08:49:39', NULL, '2013-11-18 08:59:29', NULL, 0, 5, NULL, '2013-11-18 07:45:23', NULL, NULL),
(103, 8, '4590822195', 0, '45908', '', '2195', NULL, 2, 4, '2013-11-18 07:50:29', NULL, '2013-11-18 08:09:52', NULL, '2013-11-18 08:10:53', NULL, 0, 5, NULL, '2013-11-18 07:50:29', NULL, NULL),
(104, 9, '4590812486', 0, '45908', '', '2486', NULL, 1, 4, '2013-11-18 07:51:28', NULL, '2013-11-18 09:12:09', NULL, '2013-11-18 09:12:25', NULL, 0, 5, NULL, '2013-11-18 07:51:28', NULL, NULL),
(105, 10, '4590820243', 0, '45908', '', '0243', NULL, 2, 4, '2013-11-18 08:04:36', NULL, '2013-11-18 08:13:18', NULL, '2013-11-18 08:14:47', NULL, 0, 5, NULL, '2013-11-18 08:04:36', NULL, NULL),
(106, 11, '4590823098', 0, '45908', '', '3098', NULL, 2, 4, '2013-11-18 08:04:47', NULL, '2013-11-18 08:17:00', NULL, '2013-11-18 08:17:06', NULL, 0, 5, NULL, '2013-11-18 08:04:47', NULL, NULL),
(107, 12, '4590820207', 0, '45908', '', '0207', NULL, 2, 4, '2013-11-18 08:09:13', NULL, NULL, NULL, '2013-11-18 08:13:27', NULL, 0, 5, NULL, '2013-11-18 08:09:13', NULL, NULL),
(108, 13, '4590820431', 0, '45908', '', '0431', NULL, 2, 4, '2013-11-18 08:11:11', NULL, '2013-11-18 08:24:56', NULL, '2013-11-18 08:28:04', NULL, 0, 5, NULL, '2013-11-18 08:11:11', NULL, NULL),
(109, 14, '4590812086', 0, '45908', '', '2086', NULL, 1, 4, '2013-11-18 08:11:26', NULL, '2013-11-18 09:15:13', NULL, '2013-11-18 09:16:52', NULL, 0, 5, NULL, '2013-11-18 08:11:26', NULL, NULL),
(110, 15, '4590812155', 0, '45908', '', '2155', NULL, 1, 4, '2013-11-18 08:25:24', NULL, '2013-11-18 09:20:15', NULL, '2013-11-18 09:29:42', NULL, 0, 5, NULL, '2013-11-18 08:25:24', NULL, NULL),
(111, 16, '4590820777', 0, '45908', '', '0777', NULL, 2, 4, '2013-11-18 08:30:55', NULL, '2013-11-18 08:31:47', NULL, '2013-11-18 08:32:19', NULL, 0, 5, NULL, '2013-11-18 08:30:55', NULL, NULL),
(112, 17, '4590813067', 0, '45908', '', '3067', NULL, 1, 4, '2013-11-18 08:31:06', NULL, '2013-11-18 09:26:05', NULL, NULL, NULL, 0, 5, NULL, '2013-11-18 08:31:06', NULL, NULL),
(113, 18, '4590821578', 0, '45908', '', '1578', NULL, 2, 4, '2013-11-18 08:32:19', NULL, NULL, NULL, '2013-11-18 08:36:51', NULL, 0, 5, NULL, '2013-11-18 08:32:19', NULL, NULL),
(114, 19, '045908109996', 0, '45908', '', '09996', NULL, 1, 4, '2013-11-18 08:34:34', 0, NULL, NULL, '2013-11-18 09:46:32', NULL, 0, 5, NULL, '2013-11-18 08:34:34', NULL, NULL),
(115, 20, '4590823329', 0, '45908', '', '3329', NULL, 2, 4, '2013-11-18 08:36:01', NULL, '2013-11-18 08:50:01', NULL, '2013-11-18 08:50:38', NULL, 0, 5, NULL, '2013-11-18 08:36:01', NULL, NULL),
(116, 21, '4590822359', 0, '45908', '', '2359', NULL, 2, 4, '2013-11-18 08:37:43', NULL, '2013-11-18 08:52:52', NULL, '2013-11-18 08:53:17', NULL, 0, 5, NULL, '2013-11-18 08:37:43', NULL, NULL),
(117, 22, '4590810463', 0, '45908', '', '0463', NULL, 1, 4, '2013-11-18 08:46:36', NULL, '2013-11-18 09:50:49', NULL, '2013-11-18 09:52:33', NULL, 0, 5, NULL, '2013-11-18 08:46:36', NULL, NULL),
(118, 23, '4590810914', 0, '45908', '', '0914', NULL, 1, 4, '2013-11-18 08:53:06', NULL, '2013-11-18 10:00:00', NULL, '2013-11-18 10:00:16', NULL, 0, 5, NULL, '2013-11-18 08:53:06', NULL, NULL),
(119, 24, '4590821159', 0, '45908', '', '1159', NULL, 2, 4, '2013-11-18 08:54:22', NULL, '2013-11-18 08:56:51', NULL, '2013-11-18 08:57:24', NULL, 0, 5, NULL, '2013-11-18 08:54:22', NULL, NULL),
(120, 25, '4590811083', 0, '45908', '', '1083', NULL, 1, 4, '2013-11-18 09:01:07', NULL, '2013-11-18 10:17:37', NULL, '2013-11-18 10:17:53', NULL, 0, 5, NULL, '2013-11-18 09:01:07', NULL, NULL),
(121, 26, '4590811623', 0, '45908', '', '1623', NULL, 1, 4, '2013-11-18 09:04:53', NULL, '2013-11-18 09:27:51', NULL, '2013-11-18 09:27:52', NULL, 0, 5, NULL, '2013-11-18 09:04:53', NULL, NULL),
(122, 27, '4590812766', 0, '45908', '', '2766', NULL, 1, 4, '2013-11-18 09:10:05', NULL, '2013-11-18 10:18:02', NULL, '2013-11-18 10:19:50', NULL, 0, 5, NULL, '2013-11-18 09:10:05', NULL, NULL),
(123, 28, '045908209994', 0, '45908', '', '09994', NULL, 2, 4, '2013-11-18 09:10:21', 0, NULL, NULL, '2013-11-18 09:11:11', NULL, 0, 5, NULL, '2013-11-18 09:10:21', NULL, NULL),
(124, 29, '4590820780', 0, '45908', '', '0780', NULL, 2, 4, '2013-11-18 09:16:19', NULL, '2013-11-18 09:26:38', NULL, '2013-11-18 09:26:57', NULL, 0, 5, NULL, '2013-11-18 09:16:19', NULL, NULL),
(125, 30, '4590823284', 0, '45908', '', '3284', NULL, 2, 4, '2013-11-18 09:22:11', NULL, '2013-11-18 09:28:45', NULL, '2013-11-18 09:34:55', NULL, 0, 5, NULL, '2013-11-18 09:22:11', NULL, NULL),
(126, 31, '4590820819', 0, '45908', '', '0819', NULL, 2, 4, '2013-11-18 09:32:38', NULL, NULL, NULL, '2013-11-18 09:37:19', NULL, 0, 5, NULL, '2013-11-18 09:32:38', NULL, NULL),
(127, 32, '045908209993', 0, '45908', '', '09993', NULL, 2, 4, '2013-11-18 09:42:48', 0, NULL, NULL, '2013-11-18 09:47:43', NULL, 0, 5, NULL, '2013-11-18 09:42:48', NULL, NULL),
(128, 33, '045908209990', 0, '45908', '', '09990', NULL, 2, 4, '2013-11-18 09:44:17', NULL, NULL, NULL, '2013-11-18 09:48:08', NULL, 0, 5, NULL, '2013-11-18 09:44:17', NULL, NULL),
(129, 34, '4590810215', 0, '45908', '', '0215', NULL, 1, 4, '2013-11-18 10:01:16', NULL, '2013-11-18 10:31:10', NULL, '2013-11-18 10:32:03', NULL, 0, 5, NULL, '2013-11-18 10:01:16', NULL, NULL),
(130, 35, '045908209992', 0, '45908', '', '09992', NULL, 2, 4, '2013-11-18 10:11:11', 0, NULL, NULL, '2013-11-18 10:12:18', NULL, 0, 5, NULL, '2013-11-18 10:11:11', NULL, NULL),
(131, 36, '4590812328', 0, '45908', '', '2328', NULL, 1, 4, '2013-11-18 10:13:58', NULL, NULL, NULL, '2013-11-18 10:34:52', NULL, 0, 5, NULL, '2013-11-18 10:13:58', NULL, NULL),
(132, 37, '4590810550', 0, '45908', '', '0550', NULL, 1, 4, '2013-11-18 10:16:33', NULL, '2013-11-18 10:37:45', NULL, '2013-11-18 10:39:02', NULL, 0, 5, NULL, '2013-11-18 10:16:33', NULL, NULL),
(133, 38, '4590821586', 0, '45908', '', '1586', NULL, 2, 4, '2013-11-18 10:21:47', NULL, '2013-11-18 10:22:31', NULL, '2013-11-18 10:23:57', NULL, 0, 5, NULL, '2013-11-18 10:21:47', NULL, NULL),
(134, 39, '4590810662', 0, '45908', '', '0662', NULL, 1, 4, '2013-11-18 10:24:07', NULL, '2013-11-18 10:46:44', NULL, '2013-11-18 10:46:50', NULL, 0, 5, NULL, '2013-11-18 10:24:07', NULL, NULL),
(135, 40, '4590812749', 0, '45908', '', '2749', NULL, 1, 4, '2013-11-18 10:25:17', NULL, '2013-11-18 10:57:09', NULL, '2013-11-18 10:57:50', NULL, 0, 5, NULL, '2013-11-18 10:25:17', NULL, NULL),
(136, 41, '4590820476', 0, '45908', '', '0476', NULL, 2, 4, '2013-11-18 10:34:58', NULL, '2013-11-18 10:42:17', NULL, '2013-11-18 10:42:34', NULL, 0, 5, NULL, '2013-11-18 10:34:58', NULL, NULL),
(137, 42, '045908109995', 0, '45908', '', '09995', NULL, 1, 4, '2013-11-18 10:37:21', 0, NULL, NULL, '2013-11-18 11:27:46', NULL, 0, 5, NULL, '2013-11-18 10:37:21', NULL, NULL),
(138, 43, '4590812935', 0, '45908', '', '2935', NULL, 1, 4, '2013-11-18 10:55:00', NULL, '2013-11-18 11:28:58', NULL, '2013-11-18 11:29:04', NULL, 0, 5, NULL, '2013-11-18 10:55:00', NULL, NULL),
(139, 44, '4590820917', 0, '45908', '', '0917', NULL, 2, 4, '2013-11-18 11:04:36', NULL, '2013-11-18 11:05:30', NULL, '2013-11-18 11:05:57', NULL, 0, 5, NULL, '2013-11-18 11:04:36', NULL, NULL),
(140, 45, '4590813319', 0, '45908', '', '3319', NULL, 1, 4, '2013-11-18 11:08:20', NULL, '2013-11-18 11:32:00', NULL, '2013-11-18 11:32:35', NULL, 0, 5, NULL, '2013-11-18 11:08:20', NULL, NULL),
(141, 46, '4590813103', 0, '45908', '', '3103', NULL, 1, 4, '2013-11-18 11:13:19', NULL, '2013-11-18 11:37:24', NULL, '2013-11-18 11:37:58', NULL, 0, 5, NULL, '2013-11-18 11:13:19', NULL, NULL),
(142, 47, '4590822210', 0, '45908', '', '2210', NULL, 2, 4, '2013-11-18 11:15:13', NULL, '2013-11-18 11:15:50', NULL, '2013-11-18 11:17:15', NULL, 0, 5, NULL, '2013-11-18 11:15:13', NULL, NULL),
(143, 48, '4590813220', 0, '45908', '', '3220', NULL, 1, 4, '2013-11-18 11:16:35', NULL, NULL, NULL, '2013-11-18 11:18:37', NULL, 0, 5, NULL, '2013-11-18 11:16:35', NULL, NULL),
(144, 49, '4590823082', 0, '45908', '', '3082', NULL, 2, 4, '2013-11-18 11:22:23', NULL, '2013-11-18 11:23:30', NULL, '2013-11-18 11:27:03', NULL, 0, 5, NULL, '2013-11-18 11:22:23', NULL, NULL),
(145, 50, '4590810271', 0, '45908', '', '0271', NULL, 1, 4, '2013-11-18 11:33:54', NULL, '2013-11-18 11:45:16', NULL, '2013-11-18 11:45:59', NULL, 0, 5, NULL, '2013-11-18 11:33:54', NULL, NULL),
(146, 51, '4590821764', 0, '45908', '', '1764', NULL, 2, 4, '2013-11-18 11:36:23', NULL, NULL, NULL, '2013-11-18 11:38:16', NULL, 0, 5, NULL, '2013-11-18 11:36:23', NULL, NULL),
(147, 52, '4590810568', 0, '45908', '', '0568', NULL, 1, 4, '2013-11-18 11:41:29', NULL, '2013-11-18 11:51:15', NULL, '2013-11-18 11:52:39', NULL, 0, 5, NULL, '2013-11-18 11:41:29', NULL, NULL),
(148, 1, '4590821567', 0, '45908', '', '1567', NULL, 2, 4, '2013-11-19 07:47:41', NULL, '2013-11-19 07:59:16', NULL, '2013-11-19 08:00:50', NULL, 0, 5, NULL, '2013-11-19 07:47:41', NULL, NULL),
(149, 2, '4590821145', 0, '45908', '', '1145', NULL, 2, 4, '2013-11-19 07:47:52', NULL, '2013-11-19 08:00:58', NULL, '2013-11-19 08:01:14', NULL, 0, 5, NULL, '2013-11-19 07:47:52', NULL, NULL),
(150, 3, '4590821357', 0, '45908', '', '1357', NULL, 2, 4, '2013-11-19 07:55:18', NULL, '2013-11-19 08:06:15', NULL, '2013-11-19 08:06:29', NULL, 0, 5, NULL, '2013-11-19 07:55:18', NULL, NULL),
(151, 4, '4590820608', 0, '45908', '', '0608', NULL, 2, 4, '2013-11-19 08:01:46', NULL, '2013-11-19 08:10:28', NULL, '2013-11-19 08:11:08', NULL, 0, 5, NULL, '2013-11-19 08:01:46', NULL, NULL),
(152, 5, '4590820367', 0, '45908', '', '0367', NULL, 2, 4, '2013-11-19 08:01:52', NULL, '2013-11-19 08:16:21', NULL, '2013-11-19 08:16:32', NULL, 0, 5, NULL, '2013-11-19 08:01:52', NULL, NULL),
(153, 6, '4590822894', 0, '45908', '', '2894', NULL, 2, 4, '2013-11-19 12:22:59', NULL, '2013-11-19 13:01:29', NULL, '2013-11-19 13:01:46', NULL, 0, 5, NULL, '2013-11-19 12:22:59', NULL, NULL),
(154, 7, '4590813259', 0, '45908', '', '3259', NULL, 1, 4, '2013-11-19 12:38:17', NULL, '2013-11-19 13:38:56', NULL, '2013-11-19 13:39:11', NULL, 0, 5, NULL, '2013-11-19 12:38:17', NULL, NULL),
(155, 8, '4590821210', 0, '45908', '', '1210', NULL, 2, 4, '2013-11-19 12:52:06', NULL, '2013-11-19 13:03:20', NULL, '2013-11-19 13:07:21', NULL, 0, 5, NULL, '2013-11-19 12:52:06', NULL, NULL),
(156, 9, '4590821764', 0, '45908', '', '1764', NULL, 2, 4, '2013-11-19 12:57:26', NULL, '2013-11-19 12:58:22', NULL, '2013-11-19 12:58:27', NULL, 0, 5, NULL, '2013-11-19 12:57:26', NULL, NULL),
(157, 10, '4590810121', 0, '45908', '', '0121', NULL, 1, 4, '2013-11-19 13:02:06', NULL, '2013-11-19 13:38:55', NULL, '2013-11-19 13:40:49', NULL, 0, 5, NULL, '2013-11-19 13:02:06', NULL, NULL),
(158, 11, '4590812330', 0, '45908', '', '2330', NULL, 1, 4, '2013-11-19 13:02:21', NULL, '2013-11-19 13:42:24', NULL, '2013-11-19 13:43:09', NULL, 0, 5, NULL, '2013-11-19 13:02:21', NULL, NULL),
(159, 12, '4590811289', 0, '45908', '', '1289', NULL, 1, 4, '2013-11-19 13:02:45', NULL, '2013-11-19 13:47:24', NULL, '2013-11-19 13:48:59', NULL, 0, 5, NULL, '2013-11-19 13:02:45', NULL, NULL),
(160, 13, '4590810680', 0, '45908', '', '0680', NULL, 1, 4, '2013-11-19 13:03:29', NULL, '2013-11-19 13:54:18', NULL, '2013-11-19 13:57:55', NULL, 0, 5, NULL, '2013-11-19 13:03:29', NULL, NULL),
(161, 14, '4590820276', 0, '45908', '', '0276', NULL, 2, 4, '2013-11-19 13:25:07', NULL, '2013-11-19 13:26:56', NULL, '2013-11-19 13:27:14', NULL, 0, 5, NULL, '2013-11-19 13:25:07', NULL, NULL),
(162, 15, '4590811723', 0, '45908', '', '1723', NULL, 1, 4, '2013-11-19 13:26:48', NULL, '2013-11-19 14:05:49', NULL, '2013-11-19 14:07:56', NULL, 0, 5, NULL, '2013-11-19 13:26:48', NULL, NULL),
(163, 16, '4590822737', 0, '45908', '', '2737', NULL, 2, 4, '2013-11-19 13:29:02', NULL, '2013-11-19 13:32:19', NULL, '2013-11-19 13:33:24', NULL, 0, 5, NULL, '2013-11-19 13:29:02', NULL, NULL),
(164, 17, '4590813301', 0, '45908', '', '3301', NULL, 1, 4, '2013-11-19 13:32:53', NULL, '2013-11-19 14:10:04', NULL, '2013-11-19 14:10:33', NULL, 0, 5, NULL, '2013-11-19 13:32:53', NULL, NULL),
(165, 18, '4590823082', 0, '45908', '', '3082', NULL, 2, 4, '2013-11-19 13:59:49', NULL, '2013-11-19 14:00:38', NULL, '2013-11-19 14:05:11', NULL, 0, 5, NULL, '2013-11-19 13:59:49', NULL, NULL),
(166, 19, '045908109990', 0, '45908', '', '09990', NULL, 1, 4, '2013-11-19 14:03:52', 0, NULL, NULL, '2013-11-19 14:31:43', NULL, 0, 5, NULL, '2013-11-19 14:03:52', NULL, NULL),
(167, 20, '4590810805', 0, '45908', '', '0805', NULL, 1, 4, '2013-11-19 14:06:26', NULL, '2013-11-19 14:32:16', NULL, '2013-11-19 14:34:08', NULL, 0, 5, NULL, '2013-11-19 14:06:26', NULL, NULL),
(168, 21, '4590822733', 0, '45908', '', '2733', NULL, 2, 4, '2013-11-19 14:27:10', NULL, '2013-11-19 14:34:36', NULL, '2013-11-19 14:34:38', NULL, 0, 5, NULL, '2013-11-19 14:27:10', NULL, NULL),
(169, 22, '4590813115', 0, '45908', '', '3115', NULL, 1, 4, '2013-11-19 14:36:46', NULL, '2013-11-19 14:41:49', NULL, '2013-11-19 14:45:48', NULL, 0, 5, NULL, '2013-11-19 14:36:46', NULL, NULL),
(170, 23, '4590820578', 0, '45908', '', '0578', NULL, 2, 4, '2013-11-19 14:43:54', NULL, '2013-11-19 14:45:03', NULL, '2013-11-19 14:45:18', NULL, 0, 5, NULL, '2013-11-19 14:43:54', NULL, NULL),
(171, 24, '4590811229', 0, '45908', '', '1229', NULL, 1, 4, '2013-11-19 14:44:49', NULL, '2013-11-19 14:45:52', NULL, '2013-11-19 14:48:19', NULL, 0, 5, NULL, '2013-11-19 14:44:49', NULL, NULL),
(172, 25, '4590812878', 0, '45908', '', '2878', NULL, 1, 4, '2013-11-19 14:46:53', NULL, '2013-11-19 14:48:18', NULL, '2013-11-19 14:48:35', NULL, 0, 5, NULL, '2013-11-19 14:46:53', NULL, NULL),
(173, 26, '4590821792', 0, '45908', '', '1792', NULL, 2, 4, '2013-11-19 14:51:47', NULL, '2013-11-19 14:53:02', NULL, '2013-11-19 14:53:39', NULL, 0, 5, NULL, '2013-11-19 14:51:47', NULL, NULL),
(174, 27, '4590812351', 0, '45908', '', '2351', NULL, 1, 4, '2013-11-19 14:56:21', NULL, '2013-11-19 14:58:56', NULL, '2013-11-19 14:58:59', NULL, 0, 5, NULL, '2013-11-19 14:56:21', NULL, NULL),
(175, 28, '4590821745', 0, '45908', '', '1745', NULL, 2, 4, '2013-11-19 14:57:20', NULL, '2013-11-19 15:01:43', NULL, '2013-11-19 15:02:21', NULL, 0, 5, NULL, '2013-11-19 14:57:20', NULL, NULL),
(176, 29, '4590812886', 0, '45908', '', '2886', NULL, 1, 4, '2013-11-19 15:02:32', NULL, '2013-11-19 15:04:00', NULL, '2013-11-19 15:04:18', NULL, 0, 5, NULL, '2013-11-19 15:02:32', NULL, NULL),
(177, 30, '4590822391', 0, '45908', '', '2391', NULL, 2, 4, '2013-11-19 15:10:34', NULL, '2013-11-19 15:11:14', NULL, '2013-11-19 15:11:15', NULL, 0, 5, NULL, '2013-11-19 15:10:34', NULL, NULL),
(178, 31, '045908209992', 0, '45908', '', '09992', NULL, 2, 4, '2013-11-19 15:16:30', 0, NULL, NULL, '2013-11-19 15:23:04', NULL, 0, 5, NULL, '2013-11-19 15:16:30', NULL, NULL),
(179, 32, '4590813126', 0, '45908', '', '3126', NULL, 1, 4, '2013-11-19 15:20:27', NULL, '2013-11-19 15:23:14', NULL, '2013-11-19 15:23:43', NULL, 0, 5, NULL, '2013-11-19 15:20:27', NULL, NULL),
(180, 33, '4590812717', 0, '45908', '', '2717', NULL, 1, 4, '2013-11-19 15:28:25', NULL, '2013-11-19 15:28:55', NULL, '2013-11-19 15:29:21', NULL, 0, 5, NULL, '2013-11-19 15:28:25', NULL, NULL),
(181, 34, '4590812144', 0, '45908', '', '2144', NULL, 1, 4, '2013-11-19 15:29:00', NULL, '2013-11-19 15:29:19', NULL, '2013-11-19 15:35:19', NULL, 0, 5, NULL, '2013-11-19 15:29:00', NULL, NULL),
(182, 35, '4590812309', 0, '45908', '', '2309', NULL, 1, 4, '2013-11-19 15:37:45', NULL, '2013-11-19 15:41:43', NULL, '2013-11-19 15:52:00', NULL, 0, 5, NULL, '2013-11-19 15:37:45', NULL, NULL),
(183, 36, '4590811546', 0, '45908', '', '1546', NULL, 1, 4, '2013-11-19 15:59:02', NULL, '2013-11-19 16:14:40', NULL, '2013-11-19 16:18:16', NULL, 0, 5, NULL, '2013-11-19 15:59:02', NULL, NULL),
(184, 37, '4590820530', 0, '45908', '', '0530', NULL, 2, 4, '2013-11-19 15:59:31', NULL, '2013-11-19 16:01:05', NULL, '2013-11-19 16:01:12', NULL, 0, 5, NULL, '2013-11-19 15:59:31', NULL, NULL),
(185, 38, '4590810703', 0, '45908', '', '0703', NULL, 1, 4, '2013-11-19 16:02:17', NULL, '2013-11-19 16:19:34', NULL, '2013-11-19 16:20:23', NULL, 0, 5, NULL, '2013-11-19 16:02:17', NULL, NULL),
(186, 39, '045908209993', 0, '45908', '', '09993', NULL, 2, 4, '2013-11-19 16:04:02', 0, NULL, NULL, '2013-11-19 16:14:37', NULL, 0, 5, NULL, '2013-11-19 16:04:02', NULL, NULL),
(187, 40, '045908109994', 0, '45908', '', '09994', NULL, 1, 4, '2013-11-19 16:08:28', 0, NULL, NULL, '2013-11-19 16:25:08', NULL, 0, 5, NULL, '2013-11-19 16:08:28', NULL, NULL),
(188, 41, '4590812453', 0, '45908', '', '2453', NULL, 1, 4, '2013-11-19 16:15:45', NULL, '2013-11-19 16:25:26', NULL, '2013-11-19 16:26:32', NULL, 0, 5, NULL, '2013-11-19 16:15:45', NULL, NULL),
(189, 1, '4590821567', 0, '45908', '', '1567', NULL, 2, 4, '2013-11-20 07:32:25', NULL, '2013-11-20 07:46:48', NULL, '2013-11-20 07:47:23', NULL, 0, 5, NULL, '2013-11-20 07:32:25', NULL, NULL),
(190, 2, '4590822631', 0, '45908', '', '2631', NULL, 2, 4, '2013-11-20 07:36:51', NULL, '2013-11-20 07:53:44', NULL, '2013-11-20 07:55:00', NULL, 0, 5, NULL, '2013-11-20 07:36:51', NULL, NULL),
(191, 3, '4590820463', 0, '45908', '', '0463', NULL, 2, 4, '2013-11-20 07:52:06', NULL, '2013-11-20 07:55:09', NULL, '2013-11-20 08:16:06', NULL, 0, 5, NULL, '2013-11-20 07:52:06', NULL, NULL),
(192, 4, '4590811509', 0, '45908', '', '1509', NULL, 1, 4, '2013-11-20 07:54:23', NULL, '2013-11-20 08:16:16', NULL, '2013-11-20 08:18:41', NULL, 0, 5, NULL, '2013-11-20 07:54:23', NULL, NULL),
(193, 5, '4590820092', 0, '45908', '', '0092', NULL, 2, 4, '2013-11-20 07:58:25', NULL, '2013-11-20 08:08:34', NULL, '2013-11-20 08:09:04', NULL, 0, 5, NULL, '2013-11-20 07:58:25', NULL, NULL),
(194, 6, '4590820680', 0, '45908', '', '0680', NULL, 2, 4, '2013-11-20 07:58:53', NULL, '2013-11-20 08:01:27', NULL, '2013-11-20 08:03:48', NULL, 0, 5, NULL, '2013-11-20 07:58:53', NULL, NULL),
(195, 7, '4590810364', 0, '45908', '', '0364', NULL, 1, 4, '2013-11-20 08:06:28', NULL, '2013-11-20 08:18:46', NULL, '2013-11-20 08:21:15', NULL, 0, 5, NULL, '2013-11-20 08:06:28', NULL, NULL),
(196, 8, '4590812888', 0, '45908', '', '2888', NULL, 1, 4, '2013-11-20 08:07:17', NULL, '2013-11-20 08:43:54', NULL, '2013-11-20 08:44:12', NULL, 0, 5, NULL, '2013-11-20 08:07:17', NULL, NULL),
(197, 9, '045908109990', 0, '45908', '', '09990', NULL, 1, 4, '2013-11-20 08:21:15', 0, NULL, NULL, '2013-11-20 08:59:58', NULL, 0, 5, NULL, '2013-11-20 08:21:15', NULL, NULL),
(198, 10, '4590822951', 0, '45908', '', '2951', NULL, 2, 4, '2013-11-20 08:22:36', NULL, '2013-11-20 08:23:38', NULL, '2013-11-20 08:24:13', NULL, 0, 5, NULL, '2013-11-20 08:22:36', NULL, NULL),
(199, 11, '4590820438', 0, '45908', '', '0438', NULL, 2, 4, '2013-11-20 08:23:50', NULL, '2013-11-20 08:36:32', NULL, '2013-11-20 08:36:49', NULL, 0, 5, NULL, '2013-11-20 08:23:50', NULL, NULL),
(200, 12, '4590811513', 0, '45908', '', '1513', NULL, 1, 4, '2013-11-20 08:26:55', NULL, '2013-11-20 09:01:23', NULL, '2013-11-20 09:02:36', NULL, 0, 5, NULL, '2013-11-20 08:26:55', NULL, NULL),
(201, 13, '4590811432', 0, '45908', '', '1432', NULL, 1, 4, '2013-11-20 08:37:34', NULL, '2013-11-20 09:26:12', NULL, '2013-11-20 09:28:38', NULL, 0, 5, NULL, '2013-11-20 08:37:34', NULL, NULL),
(202, 14, '4590812564', 0, '45908', '', '2564', NULL, 1, 4, '2013-11-20 08:41:35', NULL, '2013-11-20 09:37:22', NULL, '2013-11-20 09:39:17', NULL, 0, 5, NULL, '2013-11-20 08:41:35', NULL, NULL),
(203, 15, '4590810310', 0, '45908', '', '0310', NULL, 1, 4, '2013-11-20 08:59:03', NULL, '2013-11-20 09:43:51', NULL, '2013-11-20 09:45:36', NULL, 0, 5, NULL, '2013-11-20 08:59:03', NULL, NULL),
(204, 16, '4590811405', 0, '45908', '', '1405', NULL, 1, 4, '2013-11-20 08:59:52', NULL, '2013-11-20 10:01:47', NULL, '2013-11-20 10:02:06', NULL, 0, 5, NULL, '2013-11-20 08:59:52', NULL, NULL),
(205, 17, '4590820052', 0, '45908', '', '0052', NULL, 2, 4, '2013-11-20 09:01:47', NULL, '2013-11-20 09:03:13', NULL, '2013-11-20 09:06:02', NULL, 0, 5, NULL, '2013-11-20 09:01:47', NULL, NULL),
(206, 18, '4590820471', 0, '45908', '', '0471', NULL, 2, 4, '2013-11-20 09:03:36', NULL, '2013-11-20 09:19:13', NULL, '2013-11-20 09:19:20', NULL, 0, 5, NULL, '2013-11-20 09:03:36', NULL, NULL),
(207, 19, '4590810317', 0, '45908', '', '0317', NULL, 1, 4, '2013-11-20 09:05:06', NULL, '2013-11-20 09:23:47', NULL, '2013-11-20 09:23:54', NULL, 0, 5, NULL, '2013-11-20 09:05:06', NULL, NULL),
(208, 20, '4590820468', 0, '45908', '', '0468', NULL, 2, 4, '2013-11-20 09:07:16', NULL, NULL, NULL, '2013-11-20 09:22:57', NULL, 0, 5, NULL, '2013-11-20 09:07:16', NULL, NULL),
(209, 21, '4590812508', 0, '45908', '', '2508', NULL, 1, 4, '2013-11-20 09:42:59', NULL, '2013-11-20 10:22:26', NULL, '2013-11-20 10:22:59', NULL, 0, 5, NULL, '2013-11-20 09:42:59', NULL, NULL),
(210, 22, '4590812080', 0, '45908', '', '2080', NULL, 1, 4, '2013-11-20 09:48:32', NULL, '2013-11-20 10:31:13', NULL, '2013-11-20 10:32:03', NULL, 0, 5, NULL, '2013-11-20 09:48:32', NULL, NULL),
(211, 23, '4590821096', 0, '45908', '', '1096', NULL, 2, 4, '2013-11-20 09:48:48', NULL, '2013-11-20 09:49:26', NULL, '2013-11-20 09:50:53', NULL, 0, 5, NULL, '2013-11-20 09:48:48', NULL, NULL),
(212, 24, '4590823303', 0, '45908', '', '3303', NULL, 2, 4, '2013-11-20 09:49:42', NULL, '2013-11-20 09:53:46', NULL, '2013-11-20 09:54:13', NULL, 0, 5, NULL, '2013-11-20 09:49:42', NULL, NULL),
(213, 25, '4590813255', 0, '45908', '', '3255', NULL, 1, 4, '2013-11-20 09:55:15', NULL, '2013-11-20 10:36:32', NULL, '2013-11-20 10:37:31', NULL, 0, 5, NULL, '2013-11-20 09:55:15', NULL, NULL),
(214, 26, '4590813220', 0, '45908', '', '3220', NULL, 1, 4, '2013-11-20 09:59:09', NULL, '2013-11-20 10:38:59', NULL, '2013-11-20 10:52:18', NULL, 0, 5, NULL, '2013-11-20 09:59:09', NULL, NULL),
(215, 27, '4590810011', 0, '45908', '', '0011', NULL, 1, 4, '2013-11-20 10:00:10', NULL, '2013-11-20 10:49:22', NULL, '2013-11-20 10:51:36', NULL, 0, 5, NULL, '2013-11-20 10:00:10', NULL, NULL),
(216, 28, '4590811422', 0, '45908', '', '1422', NULL, 1, 4, '2013-11-20 10:04:24', NULL, '2013-11-20 10:59:49', NULL, '2013-11-20 11:00:31', NULL, 0, 5, NULL, '2013-11-20 10:04:24', NULL, NULL),
(217, 29, '4590811166', 0, '45908', '', '1166', NULL, 1, 4, '2013-11-20 10:12:30', NULL, '2013-11-20 11:01:59', NULL, '2013-11-20 11:11:15', NULL, 0, 5, NULL, '2013-11-20 10:12:30', NULL, NULL),
(218, 30, '4590812419', 0, '45908', '', '2419', NULL, 1, 4, '2013-11-20 10:22:35', NULL, '2013-11-20 11:17:09', NULL, '2013-11-20 11:17:35', NULL, 0, 5, NULL, '2013-11-20 10:22:35', NULL, NULL),
(219, 31, '4590813145', 0, '45908', '', '3145', NULL, 1, 4, '2013-11-20 10:49:14', NULL, '2013-11-20 11:24:04', NULL, '2013-11-20 11:27:26', NULL, 0, 5, NULL, '2013-11-20 10:49:14', NULL, NULL),
(220, 32, '4590821018', 0, '45908', '', '1018', NULL, 2, 4, '2013-11-20 10:52:40', NULL, '2013-11-20 11:04:49', NULL, '2013-11-20 11:04:54', NULL, 0, 5, NULL, '2013-11-20 10:52:40', NULL, NULL),
(221, 33, '4590811420', 0, '45908', '', '1420', NULL, 1, 4, '2013-11-20 11:02:04', NULL, '2013-11-20 11:30:39', NULL, '2013-11-20 11:31:00', NULL, 0, 5, NULL, '2013-11-20 11:02:04', NULL, NULL),
(222, 34, '4590812451', 0, '45908', '', '2451', NULL, 1, 4, '2013-11-20 11:14:22', NULL, '2013-11-20 11:40:28', NULL, '2013-11-20 11:42:33', NULL, 0, 5, NULL, '2013-11-20 11:14:22', NULL, NULL),
(223, 35, '4590820667', 0, '45908', '', '0667', NULL, 2, 4, '2013-11-20 11:14:47', NULL, '2013-11-20 11:17:42', NULL, '2013-11-20 11:17:52', NULL, 0, 5, NULL, '2013-11-20 11:14:47', NULL, NULL),
(224, 36, '4590812543', 0, '45908', '', '2543', NULL, 1, 4, '2013-11-20 11:19:47', NULL, '2013-11-20 11:42:56', NULL, '2013-11-20 11:48:56', NULL, 0, 5, NULL, '2013-11-20 11:19:47', NULL, NULL),
(225, 37, '4590810667', 0, '45908', '', '0667', NULL, 1, 4, '2013-11-20 11:21:59', NULL, '2013-11-20 11:50:33', NULL, '2013-11-20 11:51:27', NULL, 0, 5, NULL, '2013-11-20 11:21:59', NULL, NULL),
(226, 38, '4590823082', 0, '45908', '', '3082', NULL, 2, 4, '2013-11-20 11:36:42', NULL, '2013-11-20 11:37:57', NULL, '2013-11-20 11:40:19', NULL, 0, 5, NULL, '2013-11-20 11:36:42', NULL, NULL),
(227, 39, '4590821210', 0, '45908', '', '1210', NULL, 2, 4, '2013-11-20 11:37:39', NULL, '2013-11-20 11:46:55', NULL, '2013-11-20 11:54:06', NULL, 0, 5, NULL, '2013-11-20 11:37:39', NULL, NULL),
(228, 1, '4590821317', 0, '45908', '', '1317', NULL, 2, 4, '2013-11-21 07:13:13', NULL, '2013-11-21 07:55:02', NULL, '2013-11-21 07:55:23', NULL, 0, 5, NULL, '2013-11-21 07:13:13', NULL, NULL),
(229, 2, '045908209992', 0, '45908', '', '09992', NULL, 2, 4, '2013-11-21 07:26:41', 0, NULL, NULL, '2013-11-21 08:07:14', NULL, 0, 5, NULL, '2013-11-21 07:26:41', NULL, NULL),
(230, 3, '4590821433', 0, '45908', '', '1433', NULL, 2, 4, '2013-11-21 07:38:28', NULL, '2013-11-21 08:07:20', NULL, '2013-11-21 08:10:04', NULL, 0, 5, NULL, '2013-11-21 07:38:28', NULL, NULL),
(231, 4, '4590820604', 0, '45908', '', '0604', NULL, 2, 4, '2013-11-21 07:38:34', NULL, '2013-11-21 08:10:11', NULL, '2013-11-21 08:12:26', NULL, 0, 5, NULL, '2013-11-21 07:38:34', NULL, NULL),
(232, 5, '4590821118', 0, '45908', '', '1118', NULL, 2, 4, '2013-11-21 07:51:16', NULL, '2013-11-21 08:12:31', NULL, '2013-11-21 08:13:06', NULL, 0, 5, NULL, '2013-11-21 07:51:16', NULL, NULL),
(233, 6, '4590823158', 0, '45908', '', '3158', NULL, 2, 4, '2013-11-21 07:55:15', NULL, '2013-11-21 08:17:49', NULL, '2013-11-21 08:18:11', NULL, 0, 5, NULL, '2013-11-21 07:55:15', NULL, NULL),
(234, 7, '4590813256', 0, '45908', '', '3256', NULL, 1, 4, '2013-11-21 07:55:19', NULL, NULL, NULL, '2013-11-21 08:23:33', NULL, 0, 5, NULL, '2013-11-21 07:55:19', NULL, NULL),
(235, 8, '4590820426', 0, '45908', '', '0426', NULL, 2, 4, '2013-11-21 07:58:35', NULL, '2013-11-21 08:23:37', NULL, '2013-11-21 08:23:46', NULL, 0, 5, NULL, '2013-11-21 07:58:35', NULL, NULL),
(236, 9, '4590821168', 0, '45908', '', '1168', NULL, 2, 4, '2013-11-21 08:02:54', NULL, '2013-11-21 08:25:20', NULL, '2013-11-21 08:25:58', NULL, 0, 5, NULL, '2013-11-21 08:02:54', NULL, NULL),
(237, 10, '4590820584', 0, '45908', '', '0584', NULL, 2, 4, '2013-11-21 08:13:41', NULL, '2013-11-21 08:28:14', NULL, '2013-11-21 08:28:36', NULL, 0, 5, NULL, '2013-11-21 08:13:41', NULL, NULL),
(238, 11, '4590821628', 0, '45908', '', '1628', NULL, 2, 4, '2013-11-21 08:17:35', NULL, '2013-11-21 08:36:32', NULL, '2013-11-21 08:36:57', NULL, 0, 5, NULL, '2013-11-21 08:17:35', NULL, NULL),
(239, 12, '045908209990', 0, '45908', '', '09990', NULL, 2, 4, '2013-11-21 08:30:20', 0, NULL, NULL, '2013-11-21 08:40:19', NULL, 0, 5, NULL, '2013-11-21 08:30:20', NULL, NULL),
(240, 13, '4590821170', 0, '45908', '', '1170', NULL, 2, 4, '2013-11-21 08:36:56', NULL, '2013-11-21 08:40:39', NULL, '2013-11-21 08:40:53', NULL, 0, 5, NULL, '2013-11-21 08:36:56', NULL, NULL),
(241, 14, '4590821405', 0, '45908', '', '1405', NULL, 2, 4, '2013-11-21 08:51:40', NULL, '2013-11-21 08:53:21', NULL, '2013-11-21 08:54:29', NULL, 0, 5, NULL, '2013-11-21 08:51:40', NULL, NULL),
(242, 15, '4590812333', 0, '45908', '', '2333', NULL, 1, 4, '2013-11-21 12:24:56', NULL, '2013-11-21 13:16:49', NULL, '2013-11-21 13:19:54', NULL, 0, 5, NULL, '2013-11-21 12:24:56', NULL, NULL),
(243, 16, '045908209990', 0, '45908', '', '09990', NULL, 2, 4, '2013-11-21 12:30:54', 0, NULL, NULL, '2013-11-21 13:07:09', NULL, 0, 5, NULL, '2013-11-21 12:30:54', NULL, NULL),
(244, 17, '045908109992', 0, '45908', '', '09992', NULL, 1, 4, '2013-11-21 12:32:58', NULL, NULL, NULL, '2013-11-21 13:07:15', NULL, 0, 5, NULL, '2013-11-21 12:32:58', NULL, NULL),
(245, 18, '4590812960', 0, '45908', '', '2960', NULL, 1, 4, '2013-11-21 12:41:47', NULL, '2013-11-21 13:18:04', NULL, '2013-11-21 13:18:46', NULL, 0, 5, NULL, '2013-11-21 12:41:47', NULL, NULL),
(246, 19, '045908109993', 0, '45908', '', '09993', NULL, 1, 4, '2013-11-21 12:42:15', 0, NULL, NULL, '2013-11-21 13:22:31', NULL, 0, 5, NULL, '2013-11-21 12:42:15', NULL, NULL),
(247, 20, '045908209994', 0, '45908', '', '09994', NULL, 2, 4, '2013-11-21 12:46:01', 0, NULL, NULL, '2013-11-21 13:07:29', NULL, 0, 5, NULL, '2013-11-21 12:46:01', NULL, NULL),
(248, 21, '4590813256', 0, '45908', '', '3256', NULL, 1, 4, '2013-11-21 12:46:50', NULL, '2013-11-21 13:27:08', NULL, '2013-11-21 13:27:32', NULL, 0, 5, NULL, '2013-11-21 12:46:50', NULL, NULL),
(249, 22, '4590811416', 0, '45908', '', '1416', NULL, 1, 4, '2013-11-21 12:47:41', NULL, '2013-11-21 13:33:00', NULL, '2013-11-21 13:40:55', NULL, 0, 5, NULL, '2013-11-21 12:47:41', NULL, NULL),
(250, 23, '4590820680', 0, '45908', '', '0680', NULL, 2, 4, '2013-11-21 13:00:25', NULL, '2013-11-21 13:09:03', NULL, '2013-11-21 13:10:57', NULL, 0, 5, NULL, '2013-11-21 13:00:25', NULL, NULL),
(251, 24, '4590821210', 0, '45908', '', '1210', NULL, 2, 4, '2013-11-21 13:03:37', NULL, '2013-11-21 13:11:04', NULL, '2013-11-21 13:16:29', NULL, 0, 5, NULL, '2013-11-21 13:03:37', NULL, NULL),
(252, 25, '4590812017', 0, '45908', '', '2017', NULL, 1, 4, '2013-11-21 13:12:37', NULL, '2013-11-21 13:37:15', NULL, '2013-11-21 13:42:01', NULL, 0, 5, NULL, '2013-11-21 13:12:37', NULL, NULL),
(253, 26, '045908109992', 0, '45908', '', '09992', NULL, 1, 4, '2013-11-21 13:12:50', 0, NULL, NULL, '2013-11-21 13:50:17', NULL, 0, 5, NULL, '2013-11-21 13:12:50', NULL, NULL),
(254, 27, '4590812882', 0, '45908', '', '2882', NULL, 1, 4, '2013-11-21 13:23:33', NULL, '2013-11-21 13:50:31', NULL, '2013-11-21 13:50:34', NULL, 0, 5, NULL, '2013-11-21 13:23:33', NULL, NULL),
(255, 28, '4590821641', 0, '45908', '', '1641', NULL, 2, 4, '2013-11-21 14:00:43', NULL, '2013-11-21 14:04:56', NULL, '2013-11-21 14:07:46', NULL, 0, 5, NULL, '2013-11-21 14:00:43', NULL, NULL),
(256, 29, '045908109995', 0, '45908', '', '09995', NULL, 1, 4, '2013-11-21 14:02:14', 0, NULL, NULL, '2013-11-21 14:28:19', NULL, 0, 5, NULL, '2013-11-21 14:02:14', NULL, NULL),
(257, 30, '045908209996', 0, '45908', '', '09996', NULL, 2, 4, '2013-11-21 14:12:31', 0, NULL, NULL, '2013-11-21 14:19:22', NULL, 0, 5, NULL, '2013-11-21 14:12:31', NULL, NULL),
(258, 31, '4590821547', 0, '45908', '', '1547', NULL, 2, 4, '2013-11-21 14:18:52', NULL, '2013-11-21 14:19:28', NULL, '2013-11-21 14:19:30', NULL, 0, 5, NULL, '2013-11-21 14:18:52', NULL, NULL),
(259, 32, '4590813200', 0, '45908', '', '3200', NULL, 1, 4, '2013-11-21 14:19:46', NULL, '2013-11-21 14:36:24', NULL, '2013-11-21 14:38:10', NULL, 0, 5, NULL, '2013-11-21 14:19:46', NULL, NULL),
(260, 33, '4590821054', 0, '45908', '', '1054', NULL, 2, 4, '2013-11-21 14:23:35', NULL, '2013-11-21 14:28:26', NULL, '2013-11-21 14:32:07', NULL, 0, 5, NULL, '2013-11-21 14:23:35', NULL, NULL),
(261, 34, '045908209998', 0, '45908', '', '09998', NULL, 2, 4, '2013-11-21 14:27:47', 0, NULL, NULL, '2013-11-21 14:40:24', NULL, 0, 5, NULL, '2013-11-21 14:27:47', NULL, NULL),
(262, 35, '4590810756', 0, '45908', '', '0756', NULL, 1, 4, '2013-11-21 14:41:04', NULL, '2013-11-21 14:50:51', NULL, '2013-11-21 14:52:11', NULL, 0, 5, NULL, '2013-11-21 14:41:04', NULL, NULL);
INSERT INTO `nocore_barcode_full` (`fullid`, `id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(263, 36, '4590812782', 0, '45908', '', '2782', NULL, 1, 4, '2013-11-21 14:41:56', NULL, '2013-11-21 14:55:18', NULL, '2013-11-21 14:55:39', NULL, 0, 5, NULL, '2013-11-21 14:41:56', NULL, NULL),
(264, 37, '045908209997', 0, '45908', '', '09997', NULL, 2, 4, '2013-11-21 14:44:50', 0, NULL, NULL, '2013-11-21 14:56:03', NULL, 0, 5, NULL, '2013-11-21 14:44:50', NULL, NULL),
(265, 38, '4590812415', 0, '45908', '', '2415', NULL, 1, 4, '2013-11-21 14:48:04', NULL, '2013-11-21 15:04:48', NULL, '2013-11-21 15:08:52', NULL, 0, 5, NULL, '2013-11-21 14:48:04', NULL, NULL),
(266, 39, '4590812944', 0, '45908', '', '2944', NULL, 1, 4, '2013-11-21 14:49:03', NULL, '2013-11-21 15:08:36', NULL, '2013-11-21 15:26:13', NULL, 0, 5, NULL, '2013-11-21 14:49:03', NULL, NULL),
(267, 40, '4590810398', 0, '45908', '', '0398', NULL, 1, 4, '2013-11-21 14:56:03', NULL, '2013-11-21 15:20:12', NULL, '2013-11-21 15:24:12', NULL, 0, 5, NULL, '2013-11-21 14:56:03', NULL, NULL),
(268, 41, '045908209999', 0, '45908', '', '09999', NULL, 2, 4, '2013-11-21 14:56:27', 0, NULL, NULL, '2013-11-21 15:24:22', NULL, 0, 5, NULL, '2013-11-21 14:56:27', NULL, NULL),
(269, 42, '4590823082', 0, '45908', '', '3082', NULL, 2, 4, '2013-11-21 15:05:00', NULL, '2013-11-21 15:07:53', NULL, '2013-11-21 15:08:06', NULL, 0, 5, NULL, '2013-11-21 15:05:00', NULL, NULL),
(270, 43, '4590811985', 0, '45908', '', '1985', NULL, 1, 4, '2013-11-21 15:13:22', NULL, '2013-11-21 15:45:01', NULL, '2013-11-21 15:45:48', NULL, 0, 5, NULL, '2013-11-21 15:13:22', NULL, NULL),
(271, 44, '4590811093', 0, '45908', '', '1093', NULL, 1, 4, '2013-11-21 15:14:23', NULL, '2013-11-21 15:51:16', NULL, '2013-11-21 15:52:13', NULL, 0, 5, NULL, '2013-11-21 15:14:23', NULL, NULL),
(272, 45, '4590811138', 0, '45908', '', '1138', NULL, 1, 4, '2013-11-21 15:20:41', NULL, '2013-11-21 15:55:11', NULL, '2013-11-21 15:55:34', NULL, 0, 5, NULL, '2013-11-21 15:20:41', NULL, NULL),
(273, 46, '4590820246', 0, '45908', '', '0246', NULL, 2, 4, '2013-11-21 15:40:56', NULL, '2013-11-21 15:41:14', NULL, '2013-11-21 15:41:38', NULL, 0, 5, NULL, '2013-11-21 15:40:56', NULL, NULL),
(274, 47, '4590811335', 0, '45908', '', '1335', NULL, 1, 4, '2013-11-21 16:02:33', NULL, '2013-11-21 16:22:06', NULL, '2013-11-21 16:40:26', NULL, 0, 5, NULL, '2013-11-21 16:02:33', NULL, NULL),
(275, 48, '4590813067', 0, '45908', '', '3067', NULL, 1, 4, '2013-11-21 16:19:05', NULL, '2013-11-21 16:26:45', NULL, '2013-11-21 16:29:27', NULL, 0, 5, NULL, '2013-11-21 16:19:05', NULL, NULL),
(276, 49, '4590811937', 0, '45908', '', '1937', NULL, 1, 4, '2013-11-21 16:32:08', NULL, '2013-11-21 16:42:45', NULL, '2013-11-21 16:50:33', NULL, 0, 5, NULL, '2013-11-21 16:32:08', NULL, NULL),
(277, 50, '4590820539', 0, '45908', '', '0539', NULL, 2, 4, '2013-11-21 16:37:25', NULL, NULL, NULL, '2013-11-21 16:40:03', NULL, 0, 5, NULL, '2013-11-21 16:37:25', NULL, NULL),
(278, 51, '4590812998', 0, '45908', '', '2998', NULL, 1, 4, '2013-11-21 17:28:01', NULL, '2013-11-21 17:41:46', NULL, '2013-11-21 17:43:44', NULL, 0, 5, NULL, '2013-11-21 17:28:01', NULL, NULL),
(279, 52, '4590823011', 0, '45908', '', '3011', NULL, 2, 4, '2013-11-21 17:33:56', NULL, '2013-11-21 17:42:47', NULL, '2013-11-21 17:43:36', NULL, 0, 5, NULL, '2013-11-21 17:33:56', NULL, NULL),
(280, 53, '045908109990', 0, '45908', '', '09990', NULL, 1, 4, '2013-11-21 17:34:02', 0, NULL, NULL, '2013-11-21 17:43:33', NULL, 0, 5, NULL, '2013-11-21 17:34:02', NULL, NULL),
(281, 54, '4590822998', 0, '45908', '', '2998', NULL, 2, 4, '2013-11-21 18:02:08', NULL, '2013-11-21 18:03:01', NULL, '2013-11-21 18:30:18', NULL, 0, 5, NULL, '2013-11-21 18:02:08', NULL, NULL),
(282, 55, '045908109990', 0, '45908', '', '09990', NULL, 1, 4, '2013-11-21 18:02:13', 0, NULL, NULL, '2013-11-21 18:03:21', NULL, 0, 5, NULL, '2013-11-21 18:02:13', NULL, NULL),
(283, 56, '045908209992', 0, '45908', '', '09992', NULL, 2, 4, '2013-11-21 18:02:30', 0, NULL, NULL, '2013-11-21 18:30:25', NULL, 0, 5, NULL, '2013-11-21 18:02:30', NULL, NULL),
(284, 1, '4590823057', 0, '45908', '', '3057', NULL, 2, 4, '2013-11-22 07:11:28', NULL, '2013-11-22 08:03:27', NULL, '2013-11-22 08:04:23', NULL, 0, 5, NULL, '2013-11-22 07:11:28', NULL, NULL),
(285, 2, '4590821567', 0, '45908', '', '1567', NULL, 2, 4, '2013-11-22 07:31:08', NULL, '2013-11-22 08:05:17', NULL, '2013-11-22 08:11:30', NULL, 0, 5, NULL, '2013-11-22 07:31:08', NULL, NULL),
(286, 3, '4590821416', 0, '45908', '', '1416', NULL, 2, 4, '2013-11-22 07:34:02', NULL, '2013-11-22 08:11:36', NULL, '2013-11-22 08:11:51', NULL, 0, 5, NULL, '2013-11-22 07:34:02', NULL, NULL),
(287, 4, '4590812155', 0, '45908', '', '2155', NULL, 1, 4, '2013-11-22 07:41:27', NULL, '2013-11-22 08:13:39', NULL, '2013-11-22 08:14:41', NULL, 0, 5, NULL, '2013-11-22 07:41:27', NULL, NULL),
(288, 5, '4590820680', 0, '45908', '', '0680', NULL, 2, 4, '2013-11-22 07:57:05', NULL, '2013-11-22 08:17:56', NULL, '2013-11-22 08:21:23', NULL, 0, 5, NULL, '2013-11-22 07:57:05', NULL, NULL),
(289, 6, '4590820764', 0, '45908', '', '0764', NULL, 2, 4, '2013-11-22 08:03:27', NULL, '2013-11-22 08:21:30', NULL, '2013-11-22 08:22:08', NULL, 0, 5, NULL, '2013-11-22 08:03:27', NULL, NULL),
(290, 7, '4590820463', 0, '45908', '', '0463', NULL, 2, 4, '2013-11-22 08:12:47', NULL, '2013-11-22 08:22:24', NULL, '2013-11-22 08:27:30', NULL, 0, 5, NULL, '2013-11-22 08:12:47', NULL, NULL),
(291, 8, '4590812973', 0, '45908', '', '2973', NULL, 1, 4, '2013-11-22 08:15:24', NULL, '2013-11-22 08:16:31', NULL, '2013-11-22 08:18:11', NULL, 0, 5, NULL, '2013-11-22 08:15:24', NULL, NULL),
(292, 9, '4590820321', 0, '45908', '', '0321', NULL, 2, 4, '2013-11-22 08:20:49', NULL, '2013-11-22 08:27:34', NULL, '2013-11-22 08:27:55', NULL, 0, 5, NULL, '2013-11-22 08:20:49', NULL, NULL),
(293, 10, '4590810709', 0, '45908', '', '0709', NULL, 1, 4, '2013-11-22 08:28:09', NULL, '2013-11-22 08:28:31', NULL, '2013-11-22 08:32:06', NULL, 0, 5, NULL, '2013-11-22 08:28:09', NULL, NULL),
(294, 11, '4590812086', 0, '45908', '', '2086', NULL, 1, 4, '2013-11-22 08:31:23', NULL, '2013-11-22 08:51:26', NULL, '2013-11-22 08:52:49', NULL, 0, 5, NULL, '2013-11-22 08:31:23', NULL, NULL),
(295, 12, '4590821131', 0, '45908', '', '1131', NULL, 2, 4, '2013-11-22 08:34:53', NULL, '2013-11-22 08:37:43', NULL, '2013-11-22 08:38:11', NULL, 0, 5, NULL, '2013-11-22 08:34:53', NULL, NULL),
(296, 13, '045908109990', 0, '45908', '', '09990', NULL, 1, 4, '2013-11-22 08:36:45', NULL, NULL, NULL, '2013-11-22 08:54:15', NULL, 0, 5, NULL, '2013-11-22 08:36:45', NULL, NULL),
(297, 14, '4590810628', 0, '45908', '', '0628', NULL, 1, 4, '2013-11-22 08:50:53', NULL, '2013-11-22 09:16:35', NULL, '2013-11-22 09:17:13', NULL, 0, 5, NULL, '2013-11-22 08:50:53', NULL, NULL),
(298, 15, '045908109992', 0, '45908', '', '09992', NULL, 1, 4, '2013-11-22 08:59:35', 0, NULL, NULL, '2013-11-22 09:27:23', NULL, 0, 5, NULL, '2013-11-22 08:59:35', NULL, NULL),
(299, 16, '4590820528', 0, '45908', '', '0528', NULL, 2, 4, '2013-11-22 09:00:18', NULL, '2013-11-22 09:02:37', NULL, '2013-11-22 09:07:24', NULL, 0, 5, NULL, '2013-11-22 09:00:18', NULL, NULL),
(300, 17, '4590813301', 0, '45908', '', '3301', NULL, 1, 4, '2013-11-22 09:09:56', NULL, '2013-11-22 09:36:58', NULL, '2013-11-22 09:38:59', NULL, 0, 5, NULL, '2013-11-22 09:09:56', NULL, NULL),
(301, 18, '4590811405', 0, '45908', '', '1405', NULL, 1, 4, '2013-11-22 09:18:56', NULL, '2013-11-22 09:37:59', NULL, '2013-11-22 09:38:27', NULL, 0, 5, NULL, '2013-11-22 09:18:56', NULL, NULL),
(302, 19, '4590822144', 0, '45908', '', '2144', NULL, 2, 4, '2013-11-22 09:31:35', NULL, '2013-11-22 09:35:15', NULL, '2013-11-22 09:37:50', NULL, 0, 5, NULL, '2013-11-22 09:31:35', NULL, NULL),
(303, 20, '4590822909', 0, '45908', '', '2909', NULL, 2, 4, '2013-11-22 09:42:56', NULL, '2013-11-22 09:43:30', NULL, '2013-11-22 09:43:47', NULL, 0, 5, NULL, '2013-11-22 09:42:56', NULL, NULL),
(304, 21, '4590811083', 0, '45908', '', '1083', NULL, 1, 4, '2013-11-22 09:50:53', NULL, '2013-11-22 09:52:27', NULL, '2013-11-22 09:52:47', NULL, 0, 5, NULL, '2013-11-22 09:50:53', NULL, NULL),
(305, 22, '4590813233', 0, '45908', '', '3233', NULL, 1, 4, '2013-11-22 09:52:07', NULL, '2013-11-22 09:53:02', NULL, '2013-11-22 09:53:37', NULL, 0, 5, NULL, '2013-11-22 09:52:07', NULL, NULL),
(306, 23, '4590820602', 0, '45908', '', '0602', NULL, 2, 4, '2013-11-22 09:58:31', NULL, '2013-11-22 10:04:33', NULL, '2013-11-22 10:04:51', NULL, 0, 5, NULL, '2013-11-22 09:58:31', NULL, NULL),
(307, 24, '4590811470', 0, '45908', '', '1470', NULL, 1, 4, '2013-11-22 10:08:30', NULL, '2013-11-22 10:13:37', NULL, '2013-11-22 10:13:45', NULL, 0, 5, NULL, '2013-11-22 10:08:30', NULL, NULL),
(308, 25, '4590812453', 0, '45908', '', '2453', NULL, 1, 4, '2013-11-22 10:10:01', NULL, '2013-11-22 10:17:21', NULL, '2013-11-22 10:18:38', NULL, 0, 5, NULL, '2013-11-22 10:10:01', NULL, NULL),
(309, 26, '4590823098', 0, '45908', '', '3098', NULL, 2, 4, '2013-11-22 10:15:25', NULL, '2013-11-22 10:22:41', NULL, '2013-11-22 10:24:40', NULL, 0, 5, NULL, '2013-11-22 10:15:25', NULL, NULL),
(310, 27, '4590810838', 0, '45908', '', '0838', NULL, 1, 4, '2013-11-22 10:15:43', NULL, '2013-11-22 10:18:53', NULL, '2013-11-22 10:20:53', NULL, 0, 5, NULL, '2013-11-22 10:15:43', NULL, NULL),
(311, 28, '045908209993', 0, '45908', '', '09993', NULL, 2, 4, '2013-11-22 10:25:54', 0, NULL, NULL, '2013-11-22 10:27:32', NULL, 0, 5, NULL, '2013-11-22 10:25:54', NULL, NULL),
(312, 29, '4590810598', 0, '45908', '', '0598', NULL, 1, 4, '2013-11-22 10:31:14', NULL, '2013-11-22 10:32:06', NULL, '2013-11-22 10:35:02', NULL, 0, 5, NULL, '2013-11-22 10:31:14', NULL, NULL),
(313, 30, '045908109994', 0, '45908', '', '09994', NULL, 1, 4, '2013-11-22 10:32:01', 0, NULL, NULL, '2013-11-22 10:34:17', NULL, 0, 5, NULL, '2013-11-22 10:32:01', NULL, NULL),
(314, 31, '4590822328', 0, '45908', '', '2328', NULL, 2, 4, '2013-11-22 10:33:47', NULL, '2013-11-22 10:38:28', NULL, '2013-11-22 10:40:49', NULL, 0, 5, NULL, '2013-11-22 10:33:47', NULL, NULL),
(315, 32, '4590813280', 0, '45908', '', '3280', NULL, 1, 4, '2013-11-22 10:36:00', NULL, '2013-11-22 10:38:05', NULL, '2013-11-22 10:57:24', NULL, 0, 5, NULL, '2013-11-22 10:36:00', NULL, NULL),
(316, 33, '4590821510', 0, '45908', '', '1510', NULL, 2, 4, '2013-11-22 10:37:05', NULL, '2013-11-22 10:41:57', NULL, '2013-11-22 10:50:15', NULL, 0, 5, NULL, '2013-11-22 10:37:05', NULL, NULL),
(317, 34, '4590821396', 0, '45908', '', '1396', NULL, 2, 4, '2013-11-22 10:46:45', NULL, '2013-11-22 11:02:09', NULL, '2013-11-22 11:02:14', NULL, 0, 5, NULL, '2013-11-22 10:46:45', NULL, NULL),
(318, 35, '4590810602', 0, '45908', '', '0602', NULL, 1, 4, '2013-11-22 10:47:36', NULL, '2013-11-22 10:54:12', NULL, '2013-11-22 10:54:24', NULL, 0, 5, NULL, '2013-11-22 10:47:36', NULL, NULL),
(319, 36, '4590813238', 0, '45908', '', '3238', NULL, 1, 4, '2013-11-22 11:03:06', NULL, '2013-11-22 11:04:55', NULL, '2013-11-22 11:05:40', NULL, 0, 5, NULL, '2013-11-22 11:03:06', NULL, NULL),
(320, 37, '045908209995', 0, '45908', '', '09995', NULL, 2, 4, '2013-11-22 11:03:58', 0, NULL, NULL, '2013-11-22 11:08:53', NULL, 0, 5, NULL, '2013-11-22 11:03:58', NULL, NULL),
(321, 38, '4590810667', 0, '45908', '', '0667', NULL, 1, 4, '2013-11-22 11:31:24', NULL, '2013-11-22 11:37:05', NULL, '2013-11-22 11:38:19', NULL, 0, 5, NULL, '2013-11-22 11:31:24', NULL, NULL),
(322, 39, '4590812351', 0, '45908', '', '2351', NULL, 1, 4, '2013-11-22 11:39:47', NULL, '2013-11-22 11:44:47', NULL, '2013-11-22 11:57:07', NULL, 0, 5, NULL, '2013-11-22 11:39:47', NULL, NULL),
(323, 1, '4590821416', 0, '45908', '', '1416', NULL, 2, 4, '2013-11-25 07:37:20', NULL, '2013-11-25 08:01:26', NULL, '2013-11-25 08:05:54', NULL, 0, 5, NULL, '2013-11-25 07:37:20', NULL, NULL),
(324, 2, '4590821145', 0, '45908', '', '1145', NULL, 2, 4, '2013-11-25 07:37:36', NULL, '2013-11-25 07:48:41', NULL, '2013-11-25 07:48:56', NULL, 0, 5, NULL, '2013-11-25 07:37:36', NULL, NULL),
(325, 3, '4590811271', 0, '45908', '', '1271', NULL, 1, 4, '2013-11-25 07:40:12', NULL, '2013-11-25 08:29:18', NULL, '2013-11-25 08:31:07', NULL, 0, 5, NULL, '2013-11-25 07:40:12', NULL, NULL),
(326, 4, '4590821567', 0, '45908', '', '1567', NULL, 2, 4, '2013-11-25 07:40:14', NULL, '2013-11-25 07:51:50', NULL, '2013-11-25 07:57:26', NULL, 0, 5, NULL, '2013-11-25 07:40:14', NULL, NULL),
(327, 5, '4590823089', 0, '45908', '', '3089', NULL, 2, 4, '2013-11-25 07:50:31', NULL, '2013-11-25 08:06:02', NULL, '2013-11-25 08:06:58', NULL, 0, 5, NULL, '2013-11-25 07:50:31', NULL, NULL),
(328, 6, '4590822878', 0, '45908', '', '2878', NULL, 2, 4, '2013-11-25 07:55:38', NULL, '2013-11-25 08:13:53', NULL, '2013-11-25 08:14:49', NULL, 0, 5, NULL, '2013-11-25 07:55:38', NULL, NULL),
(329, 7, '4590821165', 0, '45908', '', '1165', NULL, 2, 4, '2013-11-25 08:09:01', NULL, '2013-11-25 08:15:04', NULL, '2013-11-25 08:16:06', NULL, 0, 5, NULL, '2013-11-25 08:09:01', NULL, NULL),
(330, 8, '4590821455', 0, '45908', '', '1455', NULL, 2, 4, '2013-11-25 08:09:28', NULL, '2013-11-25 08:16:13', NULL, '2013-11-25 08:16:32', NULL, 0, 5, NULL, '2013-11-25 08:09:28', NULL, NULL),
(331, 9, '4590820463', 0, '45908', '', '0463', NULL, 2, 4, '2013-11-25 08:13:14', NULL, '2013-11-25 08:17:41', NULL, '2013-11-25 08:22:40', NULL, 0, 5, NULL, '2013-11-25 08:13:14', NULL, NULL),
(332, 10, '4590812968', 0, '45908', '', '2968', NULL, 1, 4, '2013-11-25 08:15:02', NULL, '2013-11-25 08:32:45', NULL, '2013-11-25 08:35:58', NULL, 0, 5, NULL, '2013-11-25 08:15:02', NULL, NULL),
(333, 11, '4590820285', 0, '45908', '', '0285', NULL, 2, 4, '2013-11-25 08:16:16', NULL, '2013-11-25 08:24:59', NULL, '2013-11-25 08:27:47', NULL, 0, 5, NULL, '2013-11-25 08:16:16', NULL, NULL),
(334, 12, '4590810623', 0, '45908', '', '0623', NULL, 1, 4, '2013-11-25 08:31:23', NULL, '2013-11-25 08:47:14', NULL, '2013-11-25 08:48:40', NULL, 0, 5, NULL, '2013-11-25 08:31:23', NULL, NULL),
(335, 13, '4590811075', 0, '45908', '', '1075', NULL, 1, 4, '2013-11-25 08:31:29', NULL, '2013-11-25 09:29:32', NULL, '2013-11-25 09:31:01', NULL, 0, 5, NULL, '2013-11-25 08:31:29', NULL, NULL),
(336, 14, '4590823211', 0, '45908', '', '3211', NULL, 2, 4, '2013-11-25 08:34:39', NULL, '2013-11-25 08:36:05', NULL, '2013-11-25 08:39:04', NULL, 0, 5, NULL, '2013-11-25 08:34:39', NULL, NULL),
(337, 15, '4590820008', 0, '45908', '', '0008', NULL, 2, 4, '2013-11-25 08:36:36', NULL, '2013-11-25 08:57:18', NULL, '2013-11-25 08:57:30', NULL, 0, 5, NULL, '2013-11-25 08:36:36', NULL, NULL),
(338, 16, '4590821432', 0, '45908', '', '1432', NULL, 2, 4, '2013-11-25 08:56:58', 0, '2013-11-25 09:00:42', NULL, '2013-11-25 09:00:51', NULL, 0, 5, NULL, '2013-11-25 08:56:58', NULL, NULL),
(339, 17, '4590823055', 0, '45908', '', '3055', NULL, 2, 4, '2013-11-25 09:01:59', NULL, '2013-11-25 09:27:05', NULL, '2013-11-25 09:28:12', NULL, 0, 5, NULL, '2013-11-25 09:01:59', NULL, NULL),
(340, 18, '4590823255', 0, '45908', '', '3255', NULL, 2, 4, '2013-11-25 09:02:08', NULL, '2013-11-25 09:05:57', NULL, '2013-11-25 09:11:11', NULL, 0, 5, NULL, '2013-11-25 09:02:08', NULL, NULL),
(341, 19, '4590822526', 0, '45908', '', '2526', NULL, 2, 4, '2013-11-25 09:06:45', NULL, '2013-11-25 09:28:19', NULL, '2013-11-25 09:28:25', NULL, 0, 5, NULL, '2013-11-25 09:06:45', NULL, NULL),
(342, 20, '4590822973', 0, '45908', '', '2973', NULL, 2, 4, '2013-11-25 09:07:40', NULL, '2013-11-25 09:35:38', NULL, '2013-11-25 09:35:55', NULL, 0, 5, NULL, '2013-11-25 09:07:40', NULL, NULL),
(343, 21, '4590811447', 0, '45908', '', '1447', NULL, 1, 4, '2013-11-25 09:17:31', NULL, '2013-11-25 09:49:27', NULL, '2013-11-25 09:51:37', NULL, 0, 5, NULL, '2013-11-25 09:17:31', NULL, NULL),
(344, 22, '4590811027', 0, '45908', '', '1027', NULL, 1, 4, '2013-11-25 09:18:57', NULL, '2013-11-25 09:52:43', NULL, '2013-11-25 09:56:52', NULL, 0, 5, NULL, '2013-11-25 09:18:57', NULL, NULL),
(345, 23, '4590810009', 0, '45908', '', '0009', NULL, 1, 4, '2013-11-25 09:22:46', NULL, '2013-11-25 09:57:06', NULL, '2013-11-25 09:58:50', NULL, 0, 5, NULL, '2013-11-25 09:22:46', NULL, NULL),
(346, 24, '045908209990', 0, '45908', '', '09990', NULL, 2, 4, '2013-11-25 09:36:33', 0, NULL, NULL, '2013-11-25 09:38:29', NULL, 0, 5, NULL, '2013-11-25 09:36:33', NULL, NULL),
(347, 25, '4590823200', 0, '45908', '', '3200', NULL, 2, 4, '2013-11-25 09:42:30', NULL, '2013-11-25 09:51:44', NULL, '2013-11-25 09:53:24', NULL, 0, 5, NULL, '2013-11-25 09:42:30', NULL, NULL),
(348, 26, '4590810074', 0, '45908', '', '0074', NULL, 1, 4, '2013-11-25 09:48:29', NULL, '2013-11-25 10:02:24', NULL, '2013-11-25 10:02:35', NULL, 0, 5, NULL, '2013-11-25 09:48:29', NULL, NULL),
(349, 27, '4590820499', 0, '45908', '', '0499', NULL, 2, 4, '2013-11-25 10:01:23', NULL, '2013-11-25 10:04:51', NULL, '2013-11-25 10:05:47', NULL, 0, 5, NULL, '2013-11-25 10:01:23', NULL, NULL),
(350, 28, '4590813321', 0, '45908', '', '3321', NULL, 1, 4, '2013-11-25 10:04:12', NULL, '2013-11-25 10:20:48', NULL, '2013-11-25 10:20:50', NULL, 0, 5, NULL, '2013-11-25 10:04:12', NULL, NULL),
(351, 29, '4590810499', 0, '45908', '', '0499', NULL, 1, 4, '2013-11-25 10:05:02', NULL, NULL, NULL, '2013-11-25 10:05:47', NULL, 0, 5, NULL, '2013-11-25 10:05:02', NULL, NULL),
(352, 30, '4590820703', 0, '45908', '', '0703', NULL, 2, 4, '2013-11-25 10:12:17', NULL, '2013-11-25 10:14:22', NULL, '2013-11-25 10:15:00', NULL, 0, 5, NULL, '2013-11-25 10:12:17', NULL, NULL),
(353, 31, '4590810508', 0, '45908', '', '0508', NULL, 1, 4, '2013-11-25 10:15:18', NULL, '2013-11-25 10:22:04', NULL, '2013-11-25 10:22:26', NULL, 0, 5, NULL, '2013-11-25 10:15:18', NULL, NULL),
(354, 32, '4590822555', 0, '45908', '', '2555', NULL, 2, 4, '2013-11-25 10:32:37', NULL, '2013-11-25 10:33:32', NULL, '2013-11-25 10:33:45', NULL, 0, 5, NULL, '2013-11-25 10:32:37', NULL, NULL),
(355, 33, '4590813241', 0, '45908', '', '3241', NULL, 1, 4, '2013-11-25 10:36:04', NULL, '2013-11-25 10:56:33', NULL, '2013-11-25 10:58:12', NULL, 0, 5, NULL, '2013-11-25 10:36:04', NULL, NULL),
(356, 34, '045908209998', 0, '45908', '', '09998', NULL, 2, 4, '2013-11-25 10:43:18', 0, NULL, NULL, '2013-11-25 10:51:46', NULL, 0, 5, NULL, '2013-11-25 10:43:18', NULL, NULL),
(357, 35, '4590810737', 0, '45908', '', '0737', NULL, 1, 4, '2013-11-25 10:50:33', NULL, '2013-11-25 10:57:37', NULL, '2013-11-25 10:59:50', NULL, 0, 5, NULL, '2013-11-25 10:50:33', NULL, NULL),
(358, 36, '045908209993', 0, '45908', '', '09993', NULL, 2, 4, '2013-11-25 10:59:46', 0, NULL, NULL, '2013-11-25 11:01:19', NULL, 0, 5, NULL, '2013-11-25 10:59:46', NULL, NULL),
(359, 37, '4590821823', 0, '45908', '', '1823', NULL, 2, 4, '2013-11-25 11:01:12', NULL, '2013-11-25 11:01:29', NULL, '2013-11-25 11:01:55', NULL, 0, 5, NULL, '2013-11-25 11:01:12', NULL, NULL),
(360, 38, '4590820211', 0, '45908', '', '0211', NULL, 2, 4, '2013-11-25 11:27:44', NULL, '2013-11-25 11:31:00', NULL, '2013-11-25 11:31:11', NULL, 0, 5, NULL, '2013-11-25 11:27:44', NULL, NULL),
(361, 1, '4590822617', 0, '45908', '', '2617', NULL, 2, 4, '2013-11-26 07:56:31', NULL, '2013-11-26 07:59:16', NULL, '2013-11-26 07:59:18', NULL, 0, 5, NULL, '2013-11-26 07:56:31', NULL, NULL),
(362, 2, '4590820604', 0, '45908', '', '0604', NULL, 2, 4, '2013-11-26 07:58:57', NULL, '2013-11-26 08:02:21', NULL, '2013-11-26 08:02:44', NULL, 0, 5, NULL, '2013-11-26 07:58:57', NULL, NULL),
(363, 3, '045908101815', 0, '45908', '', '01815', NULL, 1, 4, '2013-11-26 09:25:13', NULL, '2013-11-26 11:28:07', NULL, '2013-11-26 11:28:36', NULL, 0, 5, NULL, '2013-11-26 09:25:13', NULL, NULL),
(364, 4, '4590812998', 0, '45908', '', '2998', NULL, 1, 4, '2013-11-26 11:28:41', NULL, '2013-11-26 11:43:00', NULL, '2013-11-26 11:51:11', NULL, 0, 5, NULL, '2013-11-26 11:28:41', NULL, NULL),
(365, 5, '045908109993', 0, '45908', '', '09993', NULL, 1, 4, '2013-11-26 11:46:58', 0, NULL, NULL, '2013-11-26 11:58:00', NULL, 0, 5, NULL, '2013-11-26 11:46:58', NULL, NULL),
(366, 6, '4590813001', 0, '45908', '', '3001', NULL, 1, 4, '2013-11-26 11:54:37', NULL, '2013-11-26 11:56:13', NULL, '2013-11-26 11:57:52', NULL, 0, 5, NULL, '2013-11-26 11:54:37', NULL, NULL),
(367, 7, '4590822987', 0, '45908', '', '2987', NULL, 2, 4, '2013-11-26 11:54:42', NULL, NULL, NULL, '2013-11-26 11:57:56', NULL, 0, 5, NULL, '2013-11-26 11:54:42', NULL, NULL),
(368, 8, '4590812818', 0, '45908', '', '2818', NULL, 1, 4, '2013-11-26 13:16:06', NULL, '2013-11-26 13:18:35', NULL, '2013-11-26 13:18:42', NULL, 0, 5, NULL, '2013-11-26 13:16:06', NULL, NULL),
(369, 9, '4590812817', 0, '45908', '', '2817', NULL, 1, 4, '2013-11-26 13:16:24', NULL, '2013-11-26 13:33:17', NULL, '2013-11-26 13:33:21', NULL, 0, 5, NULL, '2013-11-26 13:16:24', NULL, NULL),
(370, 10, '4590811032', 0, '45908', '', '1032', NULL, 1, 4, '2013-11-26 13:16:28', NULL, '2013-11-26 13:36:25', NULL, '2013-11-26 13:36:30', NULL, 0, 5, NULL, '2013-11-26 13:16:28', NULL, NULL),
(371, 11, '4590810052', 0, '45908', '', '0052', NULL, 1, 4, '2013-11-26 13:16:33', NULL, '2013-11-26 13:44:28', NULL, '2013-11-26 13:47:07', NULL, 0, 5, NULL, '2013-11-26 13:16:33', NULL, NULL),
(372, 12, '4590820973', 0, '45908', '', '0973', NULL, 2, 4, '2013-11-26 13:16:56', NULL, '2013-11-26 13:19:05', NULL, '2013-11-26 13:20:32', NULL, 0, 5, NULL, '2013-11-26 13:16:56', NULL, NULL),
(373, 13, '4590813060', 0, '45908', '', '3060', NULL, 1, 4, '2013-11-26 13:17:07', NULL, '2013-11-26 13:47:27', NULL, '2013-11-26 13:50:02', NULL, 0, 5, NULL, '2013-11-26 13:17:07', NULL, NULL),
(374, 14, '4590823165', 0, '45908', '', '3165', NULL, 2, 4, '2013-11-26 13:24:58', NULL, '2013-11-26 13:28:57', NULL, '2013-11-26 13:29:44', NULL, 0, 5, NULL, '2013-11-26 13:24:58', NULL, NULL),
(375, 15, '4590821567', 0, '45908', '', '1567', NULL, 2, 4, '2013-11-26 13:28:23', NULL, '2013-11-26 14:00:25', NULL, '2013-11-26 14:00:55', NULL, 0, 5, NULL, '2013-11-26 13:28:23', NULL, NULL),
(376, 16, '4590812914', 0, '45908', '', '2914', NULL, 1, 4, '2013-11-26 13:32:29', NULL, '2013-11-26 14:03:04', NULL, '2013-11-26 14:05:15', NULL, 0, 5, NULL, '2013-11-26 13:32:29', NULL, NULL),
(377, 17, '4590820663', 0, '45908', '', '0663', NULL, 2, 4, '2013-11-26 13:36:10', NULL, '2013-11-26 13:50:16', NULL, '2013-11-26 13:50:18', NULL, 0, 5, NULL, '2013-11-26 13:36:10', NULL, NULL),
(378, 18, '4590821682', 0, '45908', '', '1682', NULL, 2, 4, '2013-11-26 13:37:43', NULL, '2013-11-26 13:53:22', NULL, '2013-11-26 13:54:43', NULL, 0, 5, NULL, '2013-11-26 13:37:43', NULL, NULL),
(379, 19, '4590822905', 0, '45908', '', '2905', NULL, 2, 4, '2013-11-26 13:41:42', NULL, '2013-11-26 14:07:34', NULL, '2013-11-26 14:07:49', NULL, 0, 5, NULL, '2013-11-26 13:41:42', NULL, NULL),
(380, 20, '045908209993', 0, '45908', '', '09993', NULL, 2, 4, '2013-11-26 13:54:41', 0, NULL, NULL, '2013-11-26 14:14:37', NULL, 0, 5, NULL, '2013-11-26 13:54:41', NULL, NULL),
(381, 21, '4590811213', 0, '45908', '', '1213', NULL, 1, 4, '2013-11-26 14:09:07', NULL, '2013-11-26 14:23:27', NULL, '2013-11-26 14:24:46', NULL, 0, 5, NULL, '2013-11-26 14:09:07', NULL, NULL),
(382, 22, '4590810534', 0, '45908', '', '0534', NULL, 1, 4, '2013-11-26 15:26:54', NULL, '2013-11-26 15:27:11', NULL, '2013-11-26 15:27:43', NULL, 0, 5, NULL, '2013-11-26 15:26:54', NULL, NULL),
(383, 23, '4590822574', 0, '45908', '', '2574', NULL, 2, 4, '2013-11-26 15:35:54', NULL, '2013-11-26 15:36:31', NULL, '2013-11-26 15:36:47', NULL, 0, 5, NULL, '2013-11-26 15:35:54', NULL, NULL),
(384, 24, '045908109990', 0, '45908', '', '09990', NULL, 1, 4, '2013-11-26 15:37:38', 0, NULL, NULL, '2013-11-26 15:52:33', NULL, 0, 5, NULL, '2013-11-26 15:37:38', NULL, NULL),
(385, 25, '4590811546', 0, '45908', '', '1546', NULL, 1, 4, '2013-11-26 15:37:45', NULL, '2013-11-26 15:53:16', NULL, '2013-11-26 15:53:37', NULL, 0, 5, NULL, '2013-11-26 15:37:45', NULL, NULL),
(386, 26, '4590822828', 0, '45908', '', '2828', NULL, 2, 4, '2013-11-26 16:03:29', NULL, '2013-11-26 16:03:50', NULL, '2013-11-26 16:04:20', NULL, 0, 5, NULL, '2013-11-26 16:03:29', NULL, NULL),
(387, 27, '4590810850', 0, '45908', '', '0850', NULL, 1, 4, '2013-11-26 16:14:38', NULL, '2013-11-26 16:55:27', NULL, '2013-11-26 16:59:32', NULL, 0, 5, NULL, '2013-11-26 16:14:38', NULL, NULL),
(388, 28, '4590812453', 0, '45908', '', '2453', NULL, 1, 4, '2013-11-26 16:15:48', NULL, '2013-11-26 16:59:39', NULL, '2013-11-26 17:02:31', NULL, 0, 5, NULL, '2013-11-26 16:15:48', NULL, NULL),
(389, 1, '4590821567', 0, '45908', '', '1567', NULL, 2, 4, '2013-11-27 07:39:43', NULL, '2013-11-27 08:00:16', NULL, '2013-11-27 08:05:18', NULL, 0, 5, NULL, '2013-11-27 07:39:43', NULL, NULL),
(390, 2, '4590822254', 0, '45908', '', '2254', NULL, 2, 4, '2013-11-27 07:46:18', NULL, '2013-11-27 08:12:44', NULL, '2013-11-27 08:12:59', NULL, 0, 5, NULL, '2013-11-27 07:46:18', NULL, NULL),
(391, 3, '4590820458', 0, '45908', '', '0458', NULL, 2, 4, '2013-11-27 07:46:32', NULL, '2013-11-27 08:14:01', NULL, '2013-11-27 08:20:10', NULL, 0, 5, NULL, '2013-11-27 07:46:32', NULL, NULL),
(392, 4, '4590812083', 0, '45908', '', '2083', NULL, 1, 4, '2013-11-27 07:46:45', NULL, '2013-11-27 08:08:40', NULL, '2013-11-27 08:14:35', NULL, 0, 5, NULL, '2013-11-27 07:46:45', NULL, NULL),
(393, 5, '4590821427', 0, '45908', '', '1427', NULL, 2, 4, '2013-11-27 07:46:52', NULL, '2013-11-27 08:21:45', NULL, '2013-11-27 08:22:23', NULL, 0, 5, NULL, '2013-11-27 07:46:52', NULL, NULL),
(394, 6, '4590821416', 0, '45908', '', '1416', NULL, 2, 4, '2013-11-27 07:47:08', NULL, '2013-11-27 08:28:30', NULL, '2013-11-27 08:28:50', NULL, 0, 5, NULL, '2013-11-27 07:47:08', NULL, NULL),
(395, 7, '4590811286', 0, '45908', '', '1286', NULL, 1, 4, '2013-11-27 07:47:18', NULL, '2013-11-27 08:23:43', NULL, '2013-11-27 08:24:43', NULL, 0, 5, NULL, '2013-11-27 07:47:18', NULL, NULL),
(396, 8, '4590813098', 0, '45908', '', '3098', NULL, 1, 4, '2013-11-27 07:51:10', NULL, '2013-11-27 08:05:25', NULL, '2013-11-27 08:06:08', NULL, 0, 5, NULL, '2013-11-27 07:51:10', NULL, NULL),
(397, 9, '4590810769', 0, '45908', '', '0769', NULL, 1, 4, '2013-11-27 07:56:19', NULL, '2013-11-27 08:24:09', NULL, '2013-11-27 08:26:26', NULL, 0, 5, NULL, '2013-11-27 07:56:19', NULL, NULL),
(398, 10, '4590812817', 0, '45908', '', '2817', NULL, 1, 4, '2013-11-27 07:57:09', NULL, '2013-11-27 08:29:20', NULL, '2013-11-27 08:55:19', NULL, 0, 5, NULL, '2013-11-27 07:57:09', NULL, NULL),
(399, 11, '4590821507', 0, '45908', '', '1507', NULL, 2, 4, '2013-11-27 08:09:03', NULL, '2013-11-27 08:47:27', NULL, '2013-11-27 08:47:41', NULL, 0, 5, NULL, '2013-11-27 08:09:03', NULL, NULL),
(400, 12, '4590820383', 0, '45908', '', '0383', NULL, 2, 4, '2013-11-27 08:11:38', NULL, '2013-11-27 08:50:23', NULL, '2013-11-27 08:50:27', NULL, 0, 5, NULL, '2013-11-27 08:11:38', NULL, NULL),
(401, 13, '4590812563', 0, '45908', '', '2563', NULL, 1, 4, '2013-11-27 08:20:18', NULL, '2013-11-27 08:58:59', NULL, '2013-11-27 08:59:18', NULL, 0, 5, NULL, '2013-11-27 08:20:18', NULL, NULL),
(402, 14, '4590810568', 0, '45908', '', '0568', NULL, 1, 4, '2013-11-27 08:34:47', NULL, '2013-11-27 09:02:10', NULL, '2013-11-27 09:05:23', NULL, 0, 5, NULL, '2013-11-27 08:34:47', NULL, NULL),
(403, 15, '4590822867', 0, '45908', '', '2867', NULL, 2, 4, '2013-11-27 08:39:04', NULL, '2013-11-27 08:49:53', NULL, '2013-11-27 08:56:39', NULL, 0, 5, NULL, '2013-11-27 08:39:04', NULL, NULL),
(404, 16, '4590813220', 0, '45908', '', '3220', NULL, 1, 4, '2013-11-27 08:46:16', NULL, '2013-11-27 09:06:02', NULL, '2013-11-27 09:06:43', NULL, 0, 5, NULL, '2013-11-27 08:46:16', NULL, NULL),
(405, 17, '4590811286', 0, '45908', '', '1286', NULL, 1, 4, '2013-11-27 08:47:10', NULL, '2013-11-27 08:49:01', NULL, '2013-11-27 08:51:09', NULL, 0, 5, NULL, '2013-11-27 08:47:10', NULL, NULL),
(406, 18, '4590810282', 0, '45908', '', '0282', NULL, 1, 4, '2013-11-27 08:59:02', NULL, '2013-11-27 09:11:54', NULL, '2013-11-27 09:12:43', NULL, 0, 5, NULL, '2013-11-27 08:59:02', NULL, NULL),
(407, 19, '4590812968', 0, '45908', '', '2968', NULL, 1, 4, '2013-11-27 09:13:14', NULL, '2013-11-27 09:17:26', NULL, '2013-11-27 09:25:35', NULL, 0, 5, NULL, '2013-11-27 09:13:14', NULL, NULL),
(408, 20, '4590823276', 0, '45908', '', '3276', NULL, 2, 4, '2013-11-27 09:14:54', NULL, '2013-11-27 09:15:42', NULL, '2013-11-27 09:16:02', NULL, 0, 5, NULL, '2013-11-27 09:14:54', NULL, NULL),
(409, 21, '4590810923', 0, '45908', '', '0923', NULL, 1, 4, '2013-11-27 09:47:55', NULL, '2013-11-27 09:48:24', NULL, '2013-11-27 09:49:30', NULL, 0, 5, NULL, '2013-11-27 09:47:55', NULL, NULL),
(410, 22, '045908109998', 0, '45908', '', '09998', NULL, 1, 4, '2013-11-27 09:48:51', 0, NULL, NULL, '2013-11-27 09:55:21', NULL, 0, 5, NULL, '2013-11-27 09:48:51', NULL, NULL),
(411, 23, '045908109990', 0, '45908', '', '09990', NULL, 1, 4, '2013-11-27 09:54:26', 0, NULL, NULL, '2013-11-27 10:02:53', NULL, 0, 5, NULL, '2013-11-27 09:54:26', NULL, NULL),
(412, 24, '4590820517', 0, '45908', '', '0517', NULL, 2, 4, '2013-11-27 09:59:20', NULL, '2013-11-27 10:03:00', NULL, '2013-11-27 10:03:58', NULL, 0, 5, NULL, '2013-11-27 09:59:20', NULL, NULL),
(413, 25, '4590811429', 0, '45908', '', '1429', NULL, 1, 4, '2013-11-27 10:02:09', NULL, '2013-11-27 10:07:58', NULL, '2013-11-27 10:08:37', NULL, 0, 5, NULL, '2013-11-27 10:02:09', NULL, NULL),
(414, 26, '045908109992', 0, '45908', '', '09992', NULL, 1, 4, '2013-11-27 10:03:49', 0, NULL, NULL, '2013-11-27 10:11:48', NULL, 0, 5, NULL, '2013-11-27 10:03:49', NULL, NULL),
(415, 27, '4590810838', 0, '45908', '', '0838', NULL, 1, 4, '2013-11-27 10:05:02', NULL, '2013-11-27 10:14:36', NULL, '2013-11-27 10:16:52', NULL, 0, 5, NULL, '2013-11-27 10:05:02', NULL, NULL),
(416, 28, '4590812919', 0, '45908', '', '2919', NULL, 1, 4, '2013-11-27 10:05:38', NULL, '2013-11-27 10:16:56', NULL, '2013-11-27 10:18:01', NULL, 0, 5, NULL, '2013-11-27 10:05:38', NULL, NULL),
(417, 29, '045908209994', 0, '45908', '', '09994', NULL, 2, 4, '2013-11-27 10:17:25', 0, NULL, NULL, '2013-11-27 10:19:54', NULL, 0, 5, NULL, '2013-11-27 10:17:25', NULL, NULL),
(418, 30, '045908109995', 0, '45908', '', '09995', NULL, 1, 4, '2013-11-27 10:26:28', 0, NULL, NULL, '2013-11-27 10:31:13', NULL, 0, 5, NULL, '2013-11-27 10:26:28', NULL, NULL),
(419, 31, '4590813241', 0, '45908', '', '3241', NULL, 1, 4, '2013-11-27 10:26:35', NULL, '2013-11-27 10:35:22', NULL, '2013-11-27 10:35:31', NULL, 0, 5, NULL, '2013-11-27 10:26:35', NULL, NULL),
(420, 32, '045908109996', 0, '45908', '', '09996', NULL, 1, 4, '2013-11-27 10:34:20', 0, NULL, NULL, '2013-11-27 10:35:49', NULL, 0, 5, NULL, '2013-11-27 10:34:20', NULL, NULL),
(421, 33, '4590810598', 0, '45908', '', '0598', NULL, 1, 4, '2013-11-27 10:37:05', NULL, '2013-11-27 10:38:56', NULL, '2013-11-27 10:39:13', NULL, 0, 5, NULL, '2013-11-27 10:37:05', NULL, NULL),
(422, 34, '4590820584', 0, '45908', '', '0584', NULL, 2, 4, '2013-11-27 10:38:36', NULL, '2013-11-27 10:41:10', NULL, '2013-11-27 10:42:24', NULL, 0, 5, NULL, '2013-11-27 10:38:36', NULL, NULL),
(423, 35, '4590810925', 0, '45908', '', '0925', NULL, 1, 4, '2013-11-27 10:53:34', NULL, '2013-11-27 10:54:37', NULL, '2013-11-27 10:56:09', NULL, 0, 5, NULL, '2013-11-27 10:53:34', NULL, NULL),
(424, 36, '045908209999', 0, '45908', '', '09999', NULL, 2, 4, '2013-11-27 10:54:47', 0, NULL, NULL, '2013-11-27 10:55:51', NULL, 0, 5, NULL, '2013-11-27 10:54:47', NULL, NULL),
(425, 37, '4590811040', 0, '45908', '', '1040', NULL, 1, 4, '2013-11-27 11:14:53', NULL, '2013-11-27 11:15:21', NULL, '2013-11-27 11:15:23', NULL, 0, 5, NULL, '2013-11-27 11:14:53', NULL, NULL),
(426, 38, '4590820530', 0, '45908', '', '0530', NULL, 2, 4, '2013-11-27 11:21:36', NULL, '2013-11-27 11:21:59', NULL, '2013-11-27 11:22:25', NULL, 0, 5, NULL, '2013-11-27 11:21:36', NULL, NULL),
(427, 39, '045908109997', 0, '45908', '', '09997', NULL, 1, 4, '2013-11-27 11:26:20', 0, NULL, NULL, '2013-11-27 11:26:56', NULL, 0, 5, NULL, '2013-11-27 11:26:20', NULL, NULL),
(428, 40, '4590821210', 0, '45908', '', '1210', NULL, 2, 4, '2013-11-27 11:46:04', NULL, '2013-11-27 11:47:01', NULL, '2013-11-27 11:48:18', NULL, 0, 5, NULL, '2013-11-27 11:46:04', NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- A tábla adatainak kiíratása `nocore_clinic`
--

INSERT INTO `nocore_clinic` (`id`, `name`, `message`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 'Rendelő', NULL, 1, 2, NULL, NULL, 2, '2013-11-11 12:53:39'),
(2, 'Rendelő 1', 'Ez az 1-es Rendelő', 1, 3, NULL, NULL, 2, '2013-08-01 22:25:11'),
(3, 'Rendelő 2', 'Ez a 2-es rendelő', 1, 3, NULL, NULL, NULL, NULL),
(4, 'Rendelő', NULL, 1, 4, NULL, NULL, 2, '2013-11-11 12:54:01'),
(5, 'Rendelő', NULL, 1, 5, NULL, NULL, 2, '2013-11-11 12:53:54');

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
(1, 5, 5, '2013-11-01', '2020-11-01', '', 1, 5, NULL, NULL, 3, '2013-11-12 09:14:40');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- A tábla adatainak kiíratása `nocore_doctor`
--

INSERT INTO `nocore_doctor` (`id`, `sealNumber`, `name`, `zipcode`, `settlement`, `address`, `phone`, `information`, `nurse`, `licence`, `patientTime`, `bannerMaximum`, `marqueeMaximum`, `alwaysView`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, '46423', 'Dr. Hasitz Ăgnes', '2000', 'Szentendre', NULL, NULL, NULL, 1, '0024642300', NULL, 20, 10, NULL, 1, 2, 3, '2013-10-30 17:00:03', 3, '2013-10-30 17:54:15'),
(2, '53237', 'Dr. Koncz Erika', '2051', NULL, NULL, NULL, NULL, 1, '0035323700', NULL, 10, 10, NULL, 1, 3, 3, '2013-10-31 09:38:09', 3, '2013-10-31 09:44:36'),
(3, '35507', 'Dr. Szeszler Györgyi', '2051', NULL, NULL, NULL, NULL, 1, '0033550700', NULL, 10, 10, NULL, 1, 3, 3, '2013-10-31 09:43:56', 3, '2013-10-31 09:44:28'),
(4, '11111', 'Dr. Páczi Antal', '2213', 'Monorierdő', 'Rózsa u. 5.', '06209349324', NULL, 1, '0041111100', 30, 20, 20, NULL, 1, 4, 2, '2013-11-11 12:15:43', NULL, NULL),
(5, '45908', 'Dr. Kerényi Attila', '4461', 'Nyírtelek', 'Arany J. u. 40.', '06309452232', NULL, 1, '005446100', 30, 20, 20, 1, 1, 5, 2, '2013-11-11 12:17:53', 3, '2013-11-20 12:58:17');

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
(1, 5, NULL, '1', 1, 'Dia1_1.JPG', '1', 1, 5, 7, '2013-11-14 14:45:11', 7, '2013-11-19 09:19:22', NULL),
(2, 5, NULL, '2', 2, 'Dia2_2.JPG', '2', 1, 5, 7, '2013-11-14 14:53:11', 7, '2013-11-19 09:19:14', NULL),
(3, 5, NULL, '3', 3, 'Dia3_3.JPG', '3', 1, 5, 7, '2013-11-16 11:17:26', 7, '2013-11-19 09:19:07', NULL),
(4, 5, NULL, '4', 4, 'Dia4_4.JPG', '4', 1, 5, 7, '2013-11-16 11:17:42', 7, '2013-11-19 09:18:59', NULL),
(5, 5, NULL, '5', 5, 'Dia5_5.JPG', '5', 1, 5, 7, '2013-11-16 11:18:01', 7, '2013-11-19 09:18:45', NULL),
(6, 5, NULL, '6', 6, 'Dia6_6.JPG', '6', 1, 5, 7, '2013-11-16 11:18:14', 7, '2013-11-19 09:18:33', NULL),
(7, 5, NULL, '7', 7, 'Dia7_7.JPG', '7', 1, 5, 7, '2013-11-16 11:18:26', 7, '2013-11-19 09:18:22', NULL),
(8, 5, NULL, '8', 8, 'Dia8_8.JPG', '8', 1, 5, 7, '2013-11-16 11:18:37', 7, '2013-11-19 09:18:12', NULL),
(9, 5, NULL, '9', 9, 'Dia9_9.JPG', '9', 1, 5, 7, '2013-11-16 11:18:48', 7, '2013-11-19 09:18:01', NULL),
(10, 5, NULL, '10', 10, 'Dia10_10.JPG', '10', 1, 5, 7, '2013-11-16 11:19:02', 7, '2013-11-19 09:17:51', NULL),
(11, 5, NULL, '11', 11, 'Dia11_11.JPG', '11', 1, 5, 7, '2013-11-16 11:19:14', 7, '2013-11-19 09:17:42', NULL),
(12, 5, NULL, '12', 12, 'Dia12_12.JPG', '12', 1, 5, 7, '2013-11-16 11:19:27', 7, '2013-11-19 09:17:33', NULL),
(13, 5, NULL, '13', 13, 'Dia13_13.JPG', '13', 1, 5, 7, '2013-11-16 11:19:43', 7, '2013-11-19 09:17:23', NULL),
(14, 5, NULL, '14', 14, 'Dia14_14.JPG', '14', 1, 5, 7, '2013-11-16 11:19:58', 7, '2013-11-19 09:17:15', NULL),
(15, 5, NULL, '15', 15, 'Dia15_15.JPG', '15', 1, 5, 7, '2013-11-16 11:20:13', 7, '2013-11-19 09:16:57', NULL),
(16, 5, NULL, '16', 16, 'Dia16_16.JPG', '16', 1, 5, 7, '2013-11-16 11:20:30', 7, '2013-11-19 09:16:46', NULL),
(17, 5, NULL, '17', 17, 'Dia17_17.JPG', '17', 1, 5, 7, '2013-11-16 11:20:44', 7, '2013-11-19 09:16:29', NULL),
(18, 5, NULL, '18', 18, 'Dia18_18.JPG', '18', 1, 5, 7, '2013-11-16 11:20:57', 7, '2013-11-19 09:16:17', NULL),
(19, 5, NULL, '19', 19, 'Dia19_19.JPG', '19', 1, 5, 7, '2013-11-16 11:21:10', 7, '2013-11-19 09:16:05', NULL),
(20, 5, NULL, '20', 20, 'Dia20_20.JPG', '20', 1, 5, 7, '2013-11-16 11:21:25', 7, '2013-11-19 09:15:49', NULL),
(21, 5, NULL, '21', 21, 'Dia21_21.JPG', '21', 1, 5, 7, '2013-11-16 11:21:37', 7, '2013-11-19 09:15:39', NULL),
(22, 5, NULL, '22', 22, 'Dia22_22.JPG', '22', 1, 5, 7, '2013-11-16 11:21:49', 7, '2013-11-19 09:15:27', NULL),
(23, 5, NULL, '23', 23, 'Dia23_23.JPG', '23', 1, 5, 7, '2013-11-16 11:22:02', 7, '2013-11-19 09:15:17', NULL),
(24, 5, NULL, '24', 24, 'Dia24_24.JPG', '24', 1, 5, 7, '2013-11-16 11:22:15', 7, '2013-11-19 09:15:03', NULL);

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
(1, 5, '1', 'háziorvos, belgyógyász szakorvos', '', 1, 5, 7, '2013-11-14 14:46:43', 7, '2013-11-16 11:17:07');

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
(1, 5, '1Mon', '08:00:00', '12:00:00', 90, 390, 1, 1, 1, 1, 5, 3, '2013-11-12 09:20:40', 7, '2013-11-21 17:45:03'),
(2, 5, '1Tue', '13:00:00', '17:00:00', 390, 90, 1, 1, 1, 1, 5, 3, '2013-11-12 09:22:11', 7, '2013-11-21 17:45:13'),
(3, 5, '1Wed', '08:00:00', '12:00:00', 90, 390, 1, 1, 1, 1, 5, 3, '2013-11-12 09:23:04', 7, '2013-11-21 17:45:59'),
(4, 5, '1Thu', '13:00:00', '17:00:00', 390, 90, 1, 1, 1, 1, 5, 3, '2013-11-12 09:23:55', 7, '2013-11-21 17:44:37'),
(5, 5, '1Fri', '08:00:00', '12:00:00', 90, 90, 1, 1, 1, 1, 5, 3, '2013-11-12 09:24:51', 7, '2013-11-21 17:45:35'),
(6, 5, '2Mon', '08:00:00', '12:00:00', 90, 390, 1, 1, 1, 1, 5, 3, '2013-11-12 09:25:55', 7, '2013-11-21 17:45:09'),
(7, 5, '2Tue', '13:00:00', '17:00:00', 390, 90, 1, 1, 1, 1, 5, 3, '2013-11-12 09:27:01', 7, '2013-11-21 17:45:18'),
(8, 5, '2Wed', '08:00:00', '12:00:00', 90, 390, 1, 1, 1, 1, 5, 3, '2013-11-12 09:27:59', 7, '2013-11-21 17:46:04'),
(9, 5, '2Thu', '13:00:00', '17:00:00', 390, 90, 1, 1, 1, 1, 5, 3, '2013-11-12 09:28:56', 7, '2013-11-21 17:44:46'),
(10, 5, '2Fri', '08:00:00', '12:00:00', 90, 90, 1, 1, 1, 1, 5, 3, '2013-11-12 09:30:02', 7, '2013-11-21 17:45:39'),
(11, 5, '2Sat', '08:00:00', '12:00:00', 90, 90, 1, 1, 1, 1, 5, 7, '2013-11-20 15:28:49', 7, '2013-11-21 17:46:15'),
(12, 5, '1Sat', '08:00:00', '12:00:00', 90, 90, 1, 1, 1, 1, 5, 7, '2013-11-20 15:29:22', 7, '2013-11-21 17:46:10');

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
