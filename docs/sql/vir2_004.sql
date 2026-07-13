-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2013. dec. 03. 13:24
-- Szerver verzió: 5.1.41
-- PHP verzió: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `vir2_004`
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
(1, NULL, 'Top', NULL, 1, 1, 2, '2013-09-24 12:07:41', NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- A tábla adatainak kiíratása `core_calendar`
--

INSERT INTO `core_calendar` (`id`, `startDate`, `startHour`, `startMin`, `stopHour`, `stopMin`, `nocore_doctorID`, `nocore_patientID`, `core_calendar_typeID`, `description`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, '2013-10-15', '10', '00', '10', '10', 1, 1, 1, 'blabla', 1, 1, 2, '2013-10-15 13:19:36', 2, '2013-10-17 08:37:26'),
(2, '2013-10-16', NULL, NULL, NULL, NULL, 1, 1, NULL, 'blabla', 1, 1, 2, '2013-10-15 13:19:36', 2, '2013-10-18 08:18:54'),
(3, '2013-10-16', NULL, NULL, NULL, NULL, 1, 1, NULL, 'blabla', 1, 1, 2, '2013-10-15 13:29:36', 2, '2013-10-18 08:18:54'),
(4, '2013-10-16', NULL, NULL, NULL, NULL, 1, 1, NULL, 'blabla', 1, 1, 2, '2013-10-15 13:19:36', 2, '2013-10-18 08:18:54');

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
(1, 'frontend', NULL, 'core_localserverID', '4', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(2, 'frontend', NULL, 'barcodeType', '0', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(3, 'frontend', NULL, 'maxPatientView', '8', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-10-03 15:19:04'),
(4, 'frontend', NULL, 'waitingBoxRefresh', '10', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(5, 'frontend', NULL, 'bannerBoxRefresh', '1800', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(6, 'frontend', NULL, 'marqueeBoxRefresh', '10', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
(7, 'frontend', NULL, 'barcodeReadTimeout', '8', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-11-26 12:18:10'),
(8, 'frontend', NULL, 'patientViewTimeout', '8', NULL, 1, 1, NULL, NULL, NULL, 2, '2013-11-26 12:18:26'),
(9, 'frontend', NULL, 'patientViewRefresh', '8', NULL, 1, 1, NULL, NULL, NULL, 3, '2013-12-03 12:33:36'),
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
(26, 'frontend', NULL, 'doctorNameViewNo', '1', NULL, 1, 1, NULL, NULL, NULL, 3, '2013-12-03 12:31:28'),
(27, 'frontend', NULL, 'waitingListSetup1920x1080', '750<=>220<=>17<=>6', NULL, 1, 1, NULL, 2, '2013-11-27 11:58:57', 2, '2013-11-27 13:27:42'),
(28, 'frontend', NULL, 'waitingListSetup1360x768', '550<=>180<=>12<=>5', NULL, 1, 1, NULL, 2, '2013-11-27 18:30:10', 2, '2013-11-27 18:51:19'),
(29, 'frontend', NULL, 'waitingListSetup1366x768', '550<=>180<=>12<=>5', NULL, NULL, 1, NULL, 2, '2013-11-27 18:43:02', 2, '2013-11-27 18:52:26'),
(30, 'frontend', NULL, 'waitingListSetup1024x768', '550<=>180<=>12<=>5', NULL, 1, 1, NULL, 2, '2013-11-27 18:54:06', NULL, NULL),
(31, 'frontend', NULL, 'waitingListSetup1280x720', '460<=>180<=>12<=>5', NULL, 1, 1, NULL, 2, '2013-11-27 19:01:26', 3, '2013-12-03 13:12:39');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- A tábla adatainak kiíratása `core_localserver`
--

INSERT INTO `core_localserver` (`id`, `name`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(4, '004MONORIER201311112213HU', NULL, 1, 2, '2013-11-11 11:45:43', 2, '2013-11-11 11:46:09');

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
(1, NULL, NULL, NULL, 'Guest', '', '', NULL, 1, NULL, NULL, '2013-11-11 15:43:26', NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, 2, '2012-01-24 11:06:15', '2006-03-28 23:38:24', 2),
(2, NULL, 'Szabó', 'Sándor', 'SzSanyi', 'phoenix', 'rodnas@uw.hu', NULL, 1, NULL, '2013-09-02 13:09:13', '2013-11-11 13:17:48', NULL, NULL, NULL, 2, NULL, 0, NULL, '2005-02-19 09:00:00', 2, '2013-11-04 10:14:52', '2009-06-03 09:01:09', 2),
(3, NULL, 'Varga', 'Tamás', 'tomi', 'tomi', 'varga.tamas@dericom.hu', NULL, 1, NULL, '2013-08-30 09:55:20', '2013-11-11 15:43:25', NULL, NULL, NULL, 2, NULL, 0, 2, '2013-08-05 11:01:17', NULL, NULL, '2013-08-05 11:01:17', 2),
(4, 1, 'Hasitz', 'Ăgnes', 'hasitza', 'hasitza', 'hasitza@gmail.com', 2, 1, NULL, NULL, '2013-10-30 17:43:23', NULL, NULL, NULL, 5, NULL, 0, 3, '2013-10-30 17:05:33', NULL, NULL, '2013-10-30 17:05:33', 3),
(5, 1, 'Koncz', 'Erika', 'koncz', 'koncz', 'tamas.varga@deicom.hu', 3, 1, NULL, NULL, '2013-10-31 09:50:59', NULL, NULL, NULL, 5, NULL, 0, 3, '2013-10-31 09:31:00', 3, '2013-10-31 09:44:59', '2013-10-31 09:31:00', 3),
(6, 1, 'Szeszler', 'Györgyi', 'szeszler', 'szeszler', 'info@dericom.hu', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 0, 3, '2013-10-31 09:34:17', 3, '2013-10-31 09:44:51', '2013-10-31 09:34:17', 3),
(7, 1, 'Páczi', 'Antal', 'paczi', 'paczi', 'paczia3@gmail.com', NULL, 1, NULL, NULL, '2013-12-03 12:30:29', NULL, NULL, NULL, 5, NULL, 0, 3, '2013-11-11 14:52:24', NULL, NULL, '2013-11-11 14:52:24', 3);

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
(1, 'layout', 'layoutsetup', NULL, 1, 4, 7, '2013-12-03 12:29:05', '2013-12-03 12:29:05'),
(2, 'modulSelect', 'nocore_doctor_marquee', NULL, 1, 4, 7, '2013-12-03 12:29:06', '2013-12-03 12:30:18'),
(3, 'layout', 'layoutsetup', NULL, 1, 4, 3, '2013-12-03 12:30:50', '2013-12-03 12:30:50'),
(4, 'modulSelect', 'core_config', NULL, 1, 4, 3, '2013-12-03 12:30:51', '2013-12-03 13:12:39');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=523 ;

--
-- A tábla adatainak kiíratása `nocore_barcode_full`
--

INSERT INTO `nocore_barcode_full` (`fullid`, `id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 1, '032665104326', 0, '32665', '', '04326', NULL, 1, 1, '2013-11-11 17:00:36', 0, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-11 17:00:36', NULL, NULL),
(2, 2, '032665204577', 0, '32665', '', '04577', NULL, 2, 1, '2013-11-11 17:01:08', 0, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-11 17:01:08', NULL, NULL),
(3, 1, '032665103238', 0, '32665', '', '03238', NULL, 1, 4, '2013-11-12 07:28:59', NULL, '2013-11-12 08:24:07', NULL, NULL, NULL, 0, 4, NULL, '2013-11-12 07:28:59', NULL, NULL),
(4, 2, '032665202430', 0, '32665', '', '02430', NULL, 2, 4, '2013-11-12 07:37:25', NULL, '2013-11-12 07:43:48', NULL, '2013-11-12 07:49:17', NULL, 0, 4, NULL, '2013-11-12 07:37:25', NULL, NULL),
(5, 3, '032665103119', 0, '32665', '', '03119', NULL, 1, 4, '2013-11-12 07:44:41', NULL, '2013-11-12 08:09:47', NULL, '2013-11-12 08:12:51', NULL, 0, 4, NULL, '2013-11-12 07:44:41', NULL, NULL),
(6, 4, '032665200851', 0, '32665', '', '00851', NULL, 2, 4, '2013-11-12 07:46:38', NULL, '2013-11-12 08:18:04', NULL, '2013-11-12 08:18:36', NULL, 0, 4, NULL, '2013-11-12 07:46:38', NULL, NULL),
(7, 5, '032665200810', 0, '32665', '', '00810', NULL, 2, 4, '2013-11-12 07:46:43', NULL, '2013-11-12 08:29:02', NULL, '2013-11-12 08:29:12', NULL, 0, 4, NULL, '2013-11-12 07:46:43', NULL, NULL),
(8, 6, '032665201892', 0, '32665', '', '01892', NULL, 2, 4, '2013-11-12 07:47:49', NULL, '2013-11-12 08:31:33', NULL, '2013-11-12 08:32:45', NULL, 0, 4, NULL, '2013-11-12 07:47:49', NULL, NULL),
(9, 7, '032665201256', 0, '32665', '', '01256', NULL, 2, 4, '2013-11-12 07:48:41', NULL, '2013-11-12 07:53:14', NULL, '2013-11-12 07:53:27', NULL, 0, 4, NULL, '2013-11-12 07:48:41', NULL, NULL),
(10, 8, '032665201164', 0, '32665', '', '01164', NULL, 2, 4, '2013-11-12 07:51:35', NULL, '2013-11-12 08:43:27', NULL, '2013-11-13 08:23:46', NULL, 0, 4, NULL, '2013-11-12 07:51:35', NULL, NULL),
(11, 9, '032665201151', 0, '32665', '', '01151', NULL, 2, 4, '2013-11-12 07:51:40', NULL, NULL, NULL, '2013-11-12 09:20:10', NULL, 0, 4, NULL, '2013-11-12 07:51:40', NULL, NULL),
(12, 10, '032665201886', 0, '32665', '', '01886', NULL, 2, 4, '2013-11-12 07:51:55', NULL, NULL, NULL, '2013-11-12 09:20:12', NULL, 0, 4, NULL, '2013-11-12 07:51:55', NULL, NULL),
(13, 11, '032665201125', 0, '32665', '', '01125', NULL, 2, 4, '2013-11-12 07:52:10', NULL, NULL, NULL, '2013-11-12 09:20:14', NULL, 0, 4, NULL, '2013-11-12 07:52:10', NULL, NULL),
(14, 12, '032665105044', 0, '32665', '', '05044', NULL, 1, 4, '2013-11-12 08:29:08', NULL, '2013-11-12 08:49:54', NULL, '2013-11-12 08:50:46', NULL, 0, 4, NULL, '2013-11-12 08:29:08', NULL, NULL),
(15, 13, '032665202490', 0, '32665', '', '02490', NULL, 2, 4, '2013-11-12 08:37:25', NULL, NULL, NULL, '2013-11-12 09:20:17', NULL, 0, 4, NULL, '2013-11-12 08:37:25', NULL, NULL),
(16, 14, '032665104807', 0, '32665', '', '04807', NULL, 1, 4, '2013-11-12 08:46:37', NULL, '2013-11-12 08:51:24', NULL, '2013-11-12 08:52:08', NULL, 0, 4, NULL, '2013-11-12 08:46:37', NULL, NULL),
(17, 15, '032665101467', 0, '32665', '', '01467', NULL, 1, 4, '2013-11-12 08:46:47', NULL, '2013-11-12 08:54:16', NULL, '2013-11-12 08:54:45', NULL, 0, 4, NULL, '2013-11-12 08:46:47', NULL, NULL),
(18, 16, '032665101763', 0, '32665', '', '01763', NULL, 1, 4, '2013-11-12 08:58:14', NULL, '2013-11-12 09:04:00', NULL, '2013-11-12 09:10:41', NULL, 0, 4, NULL, '2013-11-12 08:58:14', NULL, NULL),
(19, 17, '032665103899', 0, '32665', '', '03899', NULL, 1, 4, '2013-11-12 08:58:59', NULL, '2013-11-12 09:17:23', NULL, '2013-11-12 09:19:16', NULL, 0, 4, NULL, '2013-11-12 08:58:59', NULL, NULL),
(20, 18, '032665202364', 0, '32665', '', '02364', NULL, 2, 4, '2013-11-12 09:09:54', NULL, '2013-11-12 09:22:48', NULL, '2013-11-12 09:35:57', NULL, 0, 4, NULL, '2013-11-12 09:09:54', NULL, NULL),
(21, 19, '032665102022', 0, '32665', '', '02022', NULL, 1, 4, '2013-11-12 09:30:22', NULL, '2013-11-12 09:59:34', NULL, '2013-11-12 10:01:25', NULL, 0, 4, NULL, '2013-11-12 09:30:22', NULL, NULL),
(22, 20, '032665200741', 0, '32665', '', '00741', NULL, 2, 4, '2013-11-12 09:30:28', NULL, NULL, NULL, '2013-11-12 09:38:16', NULL, 0, 4, NULL, '2013-11-12 09:30:28', NULL, NULL),
(23, 21, '032665202153', 0, '32665', '', '02153', NULL, 2, 4, '2013-11-12 09:42:58', NULL, '2013-11-12 09:43:53', NULL, '2013-11-12 09:44:04', NULL, 0, 4, NULL, '2013-11-12 09:42:58', NULL, NULL),
(24, 22, '032665102112', 0, '32665', '', '02112', NULL, 1, 4, '2013-11-12 09:47:49', NULL, '2013-11-12 10:10:12', NULL, '2013-11-12 10:13:44', NULL, 0, 4, NULL, '2013-11-12 09:47:49', NULL, NULL),
(25, 23, '032665104081', 0, '32665', '', '04081', NULL, 1, 4, '2013-11-12 09:47:54', NULL, '2013-11-12 10:14:02', NULL, '2013-11-12 10:14:26', NULL, 0, 4, NULL, '2013-11-12 09:47:54', NULL, NULL),
(26, 24, '032665101492', 0, '32665', '', '01492', NULL, 1, 4, '2013-11-12 09:48:06', NULL, '2013-11-12 10:17:13', NULL, '2013-11-12 10:19:40', NULL, 0, 4, NULL, '2013-11-12 09:48:06', NULL, NULL),
(27, 25, '032665101200', 0, '32665', '', '01200', NULL, 1, 4, '2013-11-12 09:53:24', NULL, '2013-11-12 10:41:38', NULL, '2013-11-12 10:43:55', NULL, 0, 4, NULL, '2013-11-12 09:53:24', NULL, NULL),
(28, 26, '032665103901', 0, '32665', '', '03901', NULL, 1, 4, '2013-11-12 09:59:18', NULL, '2013-11-12 10:10:48', NULL, '2013-11-12 10:11:01', NULL, 0, 4, NULL, '2013-11-12 09:59:18', NULL, NULL),
(29, 27, '032665205342', 0, '32665', '', '05342', NULL, 2, 4, '2013-11-12 09:59:42', NULL, '2013-11-12 10:00:57', NULL, '2013-11-12 10:02:03', NULL, 0, 4, NULL, '2013-11-12 09:59:42', NULL, NULL),
(30, 28, '032665203912', 0, '32665', '', '03912', NULL, 2, 4, '2013-11-12 09:59:46', NULL, '2013-11-12 10:08:43', NULL, '2013-11-12 10:08:59', NULL, 0, 4, NULL, '2013-11-12 09:59:46', NULL, NULL),
(31, 29, '032665105417', 0, '32665', '', '05417', NULL, 1, 4, '2013-11-12 10:29:32', NULL, '2013-11-12 10:51:04', NULL, '2013-11-12 10:54:46', NULL, 0, 4, NULL, '2013-11-12 10:29:32', NULL, NULL),
(32, 30, '032665205343', 0, '32665', '', '05343', NULL, 2, 4, '2013-11-12 10:30:44', NULL, '2013-11-12 10:38:36', NULL, '2013-11-12 10:38:53', NULL, 0, 4, NULL, '2013-11-12 10:30:44', NULL, NULL),
(33, 31, '032665201175', 0, '32665', '', '01175', NULL, 2, 4, '2013-11-12 10:35:23', NULL, '2013-11-12 10:42:07', NULL, '2013-11-12 10:42:27', NULL, 0, 4, NULL, '2013-11-12 10:35:23', NULL, NULL),
(34, 32, '032665205047', 0, '32665', '', '05047', NULL, 2, 4, '2013-11-12 10:41:26', NULL, '2013-11-12 10:43:28', NULL, '2013-11-12 10:43:50', NULL, 0, 4, NULL, '2013-11-12 10:41:26', NULL, NULL),
(35, 33, '032665101714', 0, '32665', '', '01714', NULL, 1, 4, '2013-11-12 10:50:26', NULL, '2013-11-12 10:56:32', NULL, '2013-11-12 10:59:19', NULL, 0, 4, NULL, '2013-11-12 10:50:26', NULL, NULL),
(36, 34, '032665205391', 0, '32665', '', '05391', NULL, 2, 4, '2013-11-12 10:58:48', NULL, '2013-11-12 11:10:56', NULL, '2013-11-12 11:12:28', NULL, 0, 4, NULL, '2013-11-12 10:58:48', NULL, NULL),
(37, 35, '032665105229', 0, '32665', '', '05229', NULL, 1, 4, '2013-11-12 11:09:02', NULL, '2013-11-12 11:10:23', NULL, '2013-11-12 11:10:26', NULL, 0, 4, NULL, '2013-11-12 11:09:02', NULL, NULL),
(38, 36, '032665105228', 0, '32665', '', '05228', NULL, 1, 4, '2013-11-12 11:09:04', NULL, '2013-11-12 11:17:38', NULL, '2013-11-12 11:17:46', NULL, 0, 4, NULL, '2013-11-12 11:09:04', NULL, NULL),
(39, 37, '032665101001', 0, '32665', '', '01001', NULL, 1, 4, '2013-11-12 11:10:55', NULL, '2013-11-12 11:12:19', NULL, '2013-11-12 11:13:54', NULL, 0, 4, NULL, '2013-11-12 11:10:55', NULL, NULL),
(40, 1, '032665201762', 0, '32665', '', '01762', NULL, 2, 4, '2013-11-13 12:50:47', NULL, '2013-11-13 13:23:10', NULL, '2013-11-13 13:24:07', NULL, 0, 4, NULL, '2013-11-13 12:50:47', NULL, NULL),
(41, 2, '032665201104', 0, '32665', '', '01104', NULL, 2, 4, '2013-11-13 12:50:54', NULL, '2013-11-13 13:27:50', NULL, '2013-11-13 13:28:11', NULL, 0, 4, NULL, '2013-11-13 12:50:54', NULL, NULL),
(42, 3, '032665104200', 0, '32665', '', '04200', NULL, 1, 4, '2013-11-13 12:51:12', NULL, '2013-11-13 13:21:54', NULL, '2013-11-13 17:26:04', NULL, 0, 4, NULL, '2013-11-13 12:51:12', NULL, NULL),
(43, 4, '032665201503', 0, '32665', '', '01503', NULL, 2, 4, '2013-11-13 12:51:14', NULL, '2013-11-13 13:29:18', NULL, '2013-11-13 13:30:42', NULL, 0, 4, NULL, '2013-11-13 12:51:14', NULL, NULL),
(44, 5, '032665105260', 0, '32665', '', '05260', NULL, 1, 4, '2013-11-13 12:51:20', NULL, '2013-11-13 13:28:20', NULL, '2013-11-13 13:30:01', NULL, 0, 4, NULL, '2013-11-13 12:51:20', NULL, NULL),
(45, 6, '032665104031', 0, '32665', '', '04031', NULL, 1, 4, '2013-11-13 12:51:26', NULL, '2013-11-13 13:35:33', NULL, '2013-11-13 13:36:23', NULL, 0, 4, NULL, '2013-11-13 12:51:26', NULL, NULL),
(46, 7, '032665105107', 0, '32665', '', '05107', NULL, 1, 4, '2013-11-13 12:51:30', NULL, '2013-11-13 13:42:55', NULL, '2013-11-13 13:45:24', NULL, 0, 4, NULL, '2013-11-13 12:51:30', NULL, NULL),
(47, 8, '032665201027', 0, '32665', '', '01027', NULL, 2, 4, '2013-11-13 12:58:27', NULL, '2013-11-13 13:33:26', NULL, '2013-11-13 13:36:18', NULL, 0, 4, NULL, '2013-11-13 12:58:27', NULL, NULL),
(48, 9, '032665204857', 0, '32665', '', '04857', NULL, 2, 4, '2013-11-13 13:00:32', NULL, '2013-11-13 13:35:41', NULL, '2013-11-13 13:36:08', NULL, 0, 4, NULL, '2013-11-13 13:00:32', NULL, NULL),
(49, 10, '032665204858', 0, '32665', '', '04858', NULL, 2, 4, '2013-11-13 13:00:34', NULL, '2013-11-13 13:38:22', NULL, '2013-11-13 13:40:08', NULL, 0, 4, NULL, '2013-11-13 13:00:34', NULL, NULL),
(50, 11, '032665203676', 0, '32665', '', '03676', NULL, 2, 4, '2013-11-13 13:01:04', NULL, '2013-11-13 13:40:20', NULL, '2013-11-13 13:45:05', NULL, 0, 4, NULL, '2013-11-13 13:01:04', NULL, NULL),
(51, 12, '032665105431', 0, '32665', '', '05431', NULL, 1, 4, '2013-11-13 13:05:33', NULL, '2013-11-13 13:48:31', NULL, '2013-11-13 13:49:30', NULL, 0, 4, NULL, '2013-11-13 13:05:33', NULL, NULL),
(52, 13, '032665200082', 0, '32665', '', '00082', NULL, 2, 4, '2013-11-13 13:06:28', NULL, '2013-11-13 13:42:21', NULL, '2013-11-13 13:43:29', NULL, 0, 4, NULL, '2013-11-13 13:06:28', NULL, NULL),
(53, 14, '032665204539', 0, '32665', '', '04539', NULL, 2, 4, '2013-11-13 13:09:33', NULL, '2013-11-13 13:58:58', NULL, '2013-11-13 13:59:37', NULL, 0, 4, NULL, '2013-11-13 13:09:33', NULL, NULL),
(54, 15, '032665105347', 0, '32665', '', '05347', NULL, 1, 4, '2013-11-13 13:10:36', NULL, '2013-11-13 13:59:54', NULL, '2013-11-13 14:06:15', NULL, 0, 4, NULL, '2013-11-13 13:10:36', NULL, NULL),
(55, 16, '032665202673', 0, '32665', '', '02673', NULL, 2, 4, '2013-11-13 13:26:43', NULL, '2013-11-13 13:59:44', NULL, '2013-11-13 14:00:01', NULL, 0, 4, NULL, '2013-11-13 13:26:43', NULL, NULL),
(56, 17, '032665200997', 0, '32665', '', '00997', NULL, 2, 4, '2013-11-13 13:30:02', NULL, '2013-11-13 14:01:04', NULL, '2013-11-13 14:01:45', NULL, 0, 4, NULL, '2013-11-13 13:30:02', NULL, NULL),
(57, 18, '032665100626', 0, '32665', '', '00626', NULL, 1, 4, '2013-11-13 13:59:02', NULL, '2013-11-13 14:10:08', NULL, '2013-11-13 14:16:05', NULL, 0, 4, NULL, '2013-11-13 13:59:02', NULL, NULL),
(58, 19, '032665103745', 0, '32665', '', '03745', NULL, 1, 4, '2013-11-13 14:00:30', NULL, '2013-11-13 14:22:37', NULL, '2013-11-13 14:23:28', NULL, 0, 4, NULL, '2013-11-13 14:00:30', NULL, NULL),
(59, 20, '032665104328', 0, '32665', '', '04328', NULL, 1, 4, '2013-11-13 14:01:16', NULL, '2013-11-13 14:23:35', NULL, '2013-11-13 16:14:32', NULL, 0, 4, NULL, '2013-11-13 14:01:16', NULL, NULL),
(60, 21, '032665105209', 0, '32665', '', '05209', NULL, 1, 4, '2013-11-13 14:12:09', NULL, '2013-11-13 15:08:59', NULL, '2013-11-13 15:09:52', NULL, 0, 4, NULL, '2013-11-13 14:12:09', NULL, NULL),
(61, 22, '032665201125', 0, '32665', '', '01125', NULL, 2, 4, '2013-11-13 14:27:07', NULL, '2013-11-13 14:44:57', NULL, '2013-11-13 14:45:39', NULL, 0, 4, NULL, '2013-11-13 14:27:07', NULL, NULL),
(62, 23, '032665201151', 0, '32665', '', '01151', NULL, 2, 4, '2013-11-13 14:27:12', NULL, NULL, NULL, '2013-11-13 14:50:14', NULL, 0, 4, NULL, '2013-11-13 14:27:12', NULL, NULL),
(63, 24, '032665105335', 0, '32665', '', '05335', NULL, 1, 4, '2013-11-13 14:46:51', NULL, '2013-11-13 15:19:27', NULL, '2013-11-13 15:21:28', NULL, 0, 4, NULL, '2013-11-13 14:46:51', NULL, NULL),
(64, 25, '032665200457', 0, '32665', '', '00457', NULL, 2, 4, '2013-11-13 14:46:54', NULL, '2013-11-13 15:08:34', NULL, '2013-11-13 15:09:05', NULL, 0, 4, NULL, '2013-11-13 14:46:54', NULL, NULL),
(65, 26, '032665103446', 0, '32665', '', '03446', NULL, 1, 4, '2013-11-13 14:53:59', NULL, '2013-11-13 15:22:27', NULL, '2013-11-13 15:24:18', NULL, 0, 4, NULL, '2013-11-13 14:53:59', NULL, NULL),
(66, 27, '032665105186', 0, '32665', '', '05186', NULL, 1, 4, '2013-11-13 14:58:03', NULL, '2013-11-13 15:33:55', NULL, '2013-11-13 15:36:59', NULL, 0, 4, NULL, '2013-11-13 14:58:03', NULL, NULL),
(67, 28, '032665100533', 0, '32665', '', '00533', NULL, 1, 4, '2013-11-13 14:59:05', NULL, '2013-11-13 15:31:13', NULL, '2013-11-13 15:32:42', NULL, 0, 4, NULL, '2013-11-13 14:59:05', NULL, NULL),
(68, 29, '032665202033', 0, '32665', '', '02033', NULL, 2, 4, '2013-11-13 15:04:45', NULL, '2013-11-13 15:40:47', NULL, '2013-11-13 15:41:22', NULL, 0, 4, NULL, '2013-11-13 15:04:45', NULL, NULL),
(69, 30, '032665105377', 0, '32665', '', '05377', NULL, 1, 4, '2013-11-13 15:08:28', NULL, '2013-11-13 15:16:04', NULL, '2013-11-13 15:16:47', NULL, 0, 4, NULL, '2013-11-13 15:08:28', NULL, NULL),
(70, 31, '032665101890', 0, '32665', '', '01890', NULL, 1, 4, '2013-11-13 15:08:34', NULL, '2013-11-13 15:39:12', NULL, '2013-11-13 15:40:17', NULL, 0, 4, NULL, '2013-11-13 15:08:34', NULL, NULL),
(71, 32, '032665204539', 0, '32665', '', '04539', NULL, 2, 4, '2013-11-13 15:37:55', NULL, '2013-11-13 15:47:39', NULL, '2013-11-13 15:48:38', NULL, 0, 4, NULL, '2013-11-13 15:37:55', NULL, NULL),
(72, 33, '032665205379', 0, '32665', '', '05379', NULL, 2, 4, '2013-11-13 16:17:12', NULL, '2013-11-13 16:18:11', NULL, '2013-11-13 16:18:43', NULL, 0, 4, NULL, '2013-11-13 16:17:12', NULL, NULL),
(73, 34, '032665203526', 0, '32665', '', '03526', NULL, 2, 4, '2013-11-13 16:17:36', NULL, '2013-11-13 16:20:12', NULL, '2013-11-13 16:20:31', NULL, 0, 4, NULL, '2013-11-13 16:17:36', NULL, NULL),
(74, 35, '032665101618', 0, '32665', '', '01618', NULL, 1, 4, '2013-11-13 16:19:02', NULL, '2013-11-13 16:22:27', NULL, '2013-11-13 16:23:51', NULL, 0, 4, NULL, '2013-11-13 16:19:02', NULL, NULL),
(75, 36, '032665205048', 0, '32665', '', '05048', NULL, 2, 4, '2013-11-13 16:20:03', NULL, '2013-11-13 16:27:47', NULL, '2013-11-13 16:29:04', NULL, 0, 4, NULL, '2013-11-13 16:20:03', NULL, NULL),
(76, 37, '032665100457', 0, '32665', '', '00457', NULL, 1, 4, '2013-11-13 16:29:36', NULL, '2013-11-13 16:38:54', NULL, '2013-11-13 16:40:36', NULL, 0, 4, NULL, '2013-11-13 16:29:36', NULL, NULL),
(77, 38, '032665201868', 0, '32665', '', '01868', NULL, 2, 4, '2013-11-13 16:36:41', NULL, '2013-11-13 16:40:40', NULL, '2013-11-13 16:44:31', NULL, 0, 4, NULL, '2013-11-13 16:36:41', NULL, NULL),
(78, 39, '032665104200', 0, '32665', '', '04200', NULL, 1, 4, '2013-11-14 07:04:39', NULL, '2013-11-14 07:59:13', NULL, NULL, NULL, 0, 4, NULL, '2013-11-14 07:04:39', NULL, NULL),
(79, 40, '032665100812', 0, '32665', '', '00812', NULL, 1, 4, '2013-11-14 07:04:46', NULL, '2013-11-14 08:07:00', NULL, '2013-11-14 08:09:16', NULL, 0, 4, NULL, '2013-11-14 07:04:46', NULL, NULL),
(80, 41, '032665102076', 0, '32665', '', '02076', NULL, 1, 4, '2013-11-14 07:04:53', NULL, '2013-11-14 08:11:33', NULL, '2013-11-14 08:14:55', NULL, 0, 4, NULL, '2013-11-14 07:04:53', NULL, NULL),
(81, 42, '032665101275', 0, '32665', '', '01275', NULL, 1, 4, '2013-11-14 07:05:22', NULL, '2013-11-14 08:18:21', NULL, '2013-11-14 08:20:26', NULL, 0, 4, NULL, '2013-11-14 07:05:22', NULL, NULL),
(82, 43, '032665103519', 0, '32665', '', '03519', NULL, 1, 4, '2013-11-14 07:15:12', NULL, '2013-11-14 08:27:24', NULL, '2013-11-14 08:30:43', NULL, 0, 4, NULL, '2013-11-14 07:15:12', NULL, NULL),
(83, 44, '032665102683', 0, '32665', '', '02683', NULL, 1, 4, '2013-11-14 07:19:01', NULL, '2013-11-14 08:35:28', NULL, '2013-11-14 08:41:29', NULL, 0, 4, NULL, '2013-11-14 07:19:01', NULL, NULL),
(84, 45, '032665200644', 0, '32665', '', '00644', NULL, 2, 4, '2013-11-14 07:21:56', NULL, '2013-11-14 07:47:50', NULL, '2013-11-14 07:48:48', NULL, 0, 4, NULL, '2013-11-14 07:21:56', NULL, NULL),
(85, 46, '032665102158', 0, '32665', '', '02158', NULL, 1, 4, '2013-11-14 07:22:03', NULL, '2013-11-14 08:56:04', NULL, '2013-11-14 08:57:03', NULL, 0, 4, NULL, '2013-11-14 07:22:03', NULL, NULL),
(86, 47, '032665102105', 0, '32665', '', '02105', NULL, 1, 4, '2013-11-14 07:23:37', NULL, '2013-11-14 07:29:26', NULL, '2013-11-14 07:30:53', NULL, 0, 4, NULL, '2013-11-14 07:23:37', NULL, NULL),
(87, 48, '032665200639', 0, '32665', '', '00639', NULL, 2, 4, '2013-11-14 07:29:48', NULL, '2013-11-14 07:49:42', NULL, '2013-11-14 07:50:52', NULL, 0, 4, NULL, '2013-11-14 07:29:48', NULL, NULL),
(88, 49, '032665103066', 0, '32665', '', '03066', NULL, 1, 4, '2013-11-14 07:40:16', NULL, '2013-11-14 08:59:15', NULL, '2013-11-14 09:03:24', NULL, 0, 4, NULL, '2013-11-14 07:40:16', NULL, NULL),
(89, 50, '032665204539', 0, '32665', '', '04539', NULL, 2, 4, '2013-11-14 07:46:56', NULL, '2013-11-14 07:53:41', NULL, '2013-11-14 07:57:54', NULL, 0, 4, NULL, '2013-11-14 07:46:56', NULL, NULL),
(90, 51, '032665204495', 0, '32665', '', '04495', NULL, 2, 4, '2013-11-14 07:49:07', NULL, '2013-11-14 07:56:20', NULL, '2013-11-14 07:57:16', NULL, 0, 4, NULL, '2013-11-14 07:49:07', NULL, NULL),
(91, 52, '032665205317', 0, '32665', '', '05317', NULL, 2, 4, '2013-11-14 07:55:06', NULL, '2013-11-14 08:01:32', NULL, '2013-11-14 08:02:38', NULL, 0, 4, NULL, '2013-11-14 07:55:06', NULL, NULL),
(92, 53, '032665105254', 0, '32665', '', '05254', NULL, 1, 4, '2013-11-14 08:05:07', NULL, '2013-11-14 09:05:04', NULL, '2013-11-14 09:07:22', NULL, 0, 4, NULL, '2013-11-14 08:05:07', NULL, NULL),
(93, 54, '032665205317', 0, '32665', '', '05317', NULL, 2, 4, '2013-11-14 08:05:31', NULL, '2013-11-14 08:20:08', NULL, '2013-11-14 08:22:03', NULL, 0, 4, NULL, '2013-11-14 08:05:31', NULL, NULL),
(94, 55, '032665203502', 0, '32665', '', '03502', NULL, 2, 4, '2013-11-14 08:06:08', NULL, NULL, NULL, '2013-11-14 08:18:58', NULL, 0, 4, NULL, '2013-11-14 08:06:08', NULL, NULL),
(95, 56, '032665201491', 0, '32665', '', '01491', NULL, 2, 4, '2013-11-14 08:37:16', NULL, '2013-11-14 09:09:01', NULL, '2013-11-14 09:09:08', NULL, 0, 4, NULL, '2013-11-14 08:37:16', NULL, NULL),
(96, 57, '032665101926', 0, '32665', '', '01926', NULL, 1, 4, '2013-11-14 08:46:06', NULL, '2013-11-14 09:05:07', NULL, '2013-11-14 09:05:22', NULL, 0, 4, NULL, '2013-11-14 08:46:06', NULL, NULL),
(97, 58, '032665103992', 0, '32665', '', '03992', NULL, 1, 4, '2013-11-14 09:01:57', NULL, '2013-11-14 09:14:13', NULL, '2013-11-14 09:24:03', NULL, 0, 4, NULL, '2013-11-14 09:01:57', NULL, NULL),
(98, 59, '032665200360', 0, '32665', '', '00360', NULL, 2, 4, '2013-11-14 09:08:12', NULL, '2013-11-14 09:45:49', NULL, '2013-11-14 09:46:36', NULL, 0, 4, NULL, '2013-11-14 09:08:12', NULL, NULL),
(99, 60, '032665205168', 0, '32665', '', '05168', NULL, 2, 4, '2013-11-14 09:08:13', NULL, '2013-11-14 09:50:44', NULL, '2013-11-14 09:51:04', NULL, 0, 4, NULL, '2013-11-14 09:08:13', NULL, NULL),
(100, 61, '032665202492', 0, '32665', '', '02492', NULL, 2, 4, '2013-11-14 09:09:20', NULL, '2013-11-14 09:56:15', NULL, '2013-11-14 09:56:36', NULL, 0, 4, NULL, '2013-11-14 09:09:20', NULL, NULL),
(101, 62, '032665100075', 0, '32665', '', '00075', NULL, 1, 4, '2013-11-14 09:24:24', NULL, '2013-11-14 09:28:45', NULL, '2013-11-14 09:32:12', NULL, 0, 4, NULL, '2013-11-14 09:24:24', NULL, NULL),
(102, 63, '032665205349', 0, '32665', '', '05349', NULL, 2, 4, '2013-11-14 09:25:28', NULL, '2013-11-14 09:57:09', NULL, '2013-11-14 09:58:22', NULL, 0, 4, NULL, '2013-11-14 09:25:28', NULL, NULL),
(103, 64, '032665200858', 0, '32665', '', '00858', NULL, 2, 4, '2013-11-14 09:27:11', NULL, '2013-11-14 10:00:30', NULL, '2013-11-14 10:01:25', NULL, 0, 4, NULL, '2013-11-14 09:27:11', NULL, NULL),
(104, 65, '032665103328', 0, '32665', '', '03328', NULL, 1, 4, '2013-11-14 09:56:54', NULL, '2013-11-14 10:15:13', NULL, '2013-11-14 10:17:59', NULL, 0, 4, NULL, '2013-11-14 09:56:54', NULL, NULL),
(105, 66, '032665105335', 0, '32665', '', '05335', NULL, 1, 4, '2013-11-14 10:00:21', NULL, '2013-11-14 10:28:02', NULL, '2013-11-14 10:31:56', NULL, 0, 4, NULL, '2013-11-14 10:00:21', NULL, NULL),
(106, 67, '032665201742', 0, '32665', '', '01742', NULL, 2, 4, '2013-11-14 10:04:07', NULL, '2013-11-14 10:05:35', NULL, '2013-11-14 10:06:08', NULL, 0, 4, NULL, '2013-11-14 10:04:07', NULL, NULL),
(107, 68, '032665102545', 0, '32665', '', '02545', NULL, 1, 4, '2013-11-14 10:04:17', NULL, '2013-11-14 10:32:04', NULL, '2013-11-14 10:33:29', NULL, 0, 4, NULL, '2013-11-14 10:04:17', NULL, NULL),
(108, 69, '032665105417', 0, '32665', '', '05417', NULL, 1, 4, '2013-11-14 10:13:27', NULL, '2013-11-14 10:41:07', NULL, '2013-11-14 10:42:04', NULL, 0, 4, NULL, '2013-11-14 10:13:27', NULL, NULL),
(109, 70, '032665100643', 0, '32665', '', '00643', NULL, 1, 4, '2013-11-14 10:18:06', NULL, '2013-11-14 10:44:45', NULL, '2013-11-14 10:51:44', NULL, 0, 4, NULL, '2013-11-14 10:18:06', NULL, NULL),
(110, 71, '032665104784', 0, '32665', '', '04784', NULL, 1, 4, '2013-11-14 10:21:51', NULL, '2013-11-14 10:51:50', NULL, '2013-11-14 10:56:26', NULL, 0, 4, NULL, '2013-11-14 10:21:51', NULL, NULL),
(111, 72, '032665100184', 0, '32665', '', '00184', NULL, 1, 4, '2013-11-14 10:24:32', NULL, '2013-11-14 11:01:11', NULL, '2013-11-14 11:02:40', NULL, 0, 4, NULL, '2013-11-14 10:24:32', NULL, NULL),
(112, 73, '032665201963', 0, '32665', '', '01963', NULL, 2, 4, '2013-11-14 10:31:21', NULL, '2013-11-14 10:46:34', NULL, '2013-11-14 10:47:10', NULL, 0, 4, NULL, '2013-11-14 10:31:21', NULL, NULL),
(113, 74, '032665200345', 0, '32665', '', '00345', NULL, 2, 4, '2013-11-14 10:35:37', NULL, '2013-11-14 10:50:43', NULL, '2013-11-14 10:51:23', NULL, 0, 4, NULL, '2013-11-14 10:35:37', NULL, NULL),
(114, 75, '032665203868', 0, '32665', '', '03868', NULL, 2, 4, '2013-11-14 10:35:42', NULL, '2013-11-14 11:00:32', NULL, '2013-11-14 11:00:58', NULL, 0, 4, NULL, '2013-11-14 10:35:42', NULL, NULL),
(115, 76, '032665203676', 0, '32665', '', '03676', NULL, 2, 4, '2013-11-14 10:41:00', NULL, '2013-11-14 11:18:13', NULL, '2013-11-14 11:18:27', NULL, 0, 4, NULL, '2013-11-14 10:41:00', NULL, NULL),
(116, 77, '032665202212', 0, '32665', '', '02212', NULL, 2, 4, '2013-11-14 10:42:32', NULL, '2013-11-14 11:00:02', NULL, '2013-11-14 11:00:10', NULL, 0, 4, NULL, '2013-11-14 10:42:32', NULL, NULL),
(117, 78, '032665103078', 0, '32665', '', '03078', NULL, 1, 4, '2013-11-14 10:48:25', NULL, '2013-11-14 11:22:47', NULL, '2013-11-14 11:27:47', NULL, 0, 4, NULL, '2013-11-14 10:48:25', NULL, NULL),
(118, 79, '032665104538', 0, '32665', '', '04538', NULL, 1, 4, '2013-11-14 10:48:56', NULL, '2013-11-14 11:27:50', NULL, '2013-11-14 11:31:06', NULL, 0, 4, NULL, '2013-11-14 10:48:56', NULL, NULL),
(119, 80, '032665103460', 0, '32665', '', '03460', NULL, 1, 4, '2013-11-14 10:49:50', NULL, '2013-11-14 11:35:41', NULL, '2013-11-14 11:36:32', NULL, 0, 4, NULL, '2013-11-14 10:49:50', NULL, NULL),
(120, 81, '032665105215', 0, '32665', '', '05215', NULL, 1, 4, '2013-11-14 10:53:21', NULL, '2013-11-14 11:49:58', NULL, '2013-11-14 11:55:07', NULL, 0, 4, NULL, '2013-11-14 10:53:21', NULL, NULL),
(121, 82, '032665204575', 0, '32665', '', '04575', NULL, 2, 4, '2013-11-14 10:53:30', NULL, '2013-11-14 11:01:11', NULL, '2013-11-14 11:01:12', NULL, 0, 4, NULL, '2013-11-14 10:53:30', NULL, NULL),
(122, 83, '032665100023', 0, '32665', '', '00023', NULL, 1, 4, '2013-11-14 10:57:51', NULL, '2013-11-14 11:21:11', NULL, '2013-11-14 11:22:45', NULL, 0, 4, NULL, '2013-11-14 10:57:51', NULL, NULL),
(123, 84, '032665201971', 0, '32665', '', '01971', NULL, 2, 4, '2013-11-14 10:58:01', NULL, '2013-11-14 11:19:21', NULL, '2013-11-14 11:20:04', NULL, 0, 4, NULL, '2013-11-14 10:58:01', NULL, NULL),
(124, 85, '032665203905', 0, '32665', '', '03905', NULL, 2, 4, '2013-11-14 11:15:45', NULL, '2013-11-14 11:23:10', NULL, '2013-11-14 11:23:28', NULL, 0, 4, NULL, '2013-11-14 11:15:45', NULL, NULL),
(125, 86, '032665204145', 0, '32665', '', '04145', NULL, 2, 4, '2013-11-14 11:17:39', NULL, '2013-11-14 11:26:44', NULL, '2013-11-14 11:27:52', NULL, 0, 4, NULL, '2013-11-14 11:17:39', NULL, NULL),
(126, 87, '032665204405', 0, '32665', '', '04405', NULL, 2, 4, '2013-11-14 11:17:41', NULL, '2013-11-14 11:28:20', NULL, '2013-11-14 11:28:28', NULL, 0, 4, NULL, '2013-11-14 11:17:41', NULL, NULL),
(127, 88, '032665200190', 0, '32665', '', '00190', NULL, 2, 4, '2013-11-14 11:50:32', NULL, '2013-11-14 11:50:33', NULL, '2013-11-14 11:52:03', NULL, 0, 4, NULL, '2013-11-14 11:50:32', NULL, NULL),
(128, 89, '032665102913', 0, '32665', '', '02913', NULL, 1, 4, '2013-11-14 12:00:09', NULL, '2013-11-14 12:16:09', NULL, '2013-11-14 12:16:51', NULL, 0, 4, NULL, '2013-11-14 12:00:09', NULL, NULL),
(129, 1, '032665201357', 0, '32665', '', '01357', NULL, 2, 4, '2013-11-15 06:58:36', NULL, '2013-11-15 07:26:15', NULL, '2013-11-15 07:29:04', NULL, 0, 4, NULL, '2013-11-15 06:58:36', NULL, NULL),
(130, 2, '032665200360', 0, '32665', '', '00360', NULL, 2, 4, '2013-11-15 06:58:46', NULL, NULL, NULL, '2013-11-15 07:12:07', NULL, 0, 4, NULL, '2013-11-15 06:58:46', NULL, NULL),
(131, 3, '032665101548', 0, '32665', '', '01548', NULL, 1, 4, '2013-11-15 07:03:58', NULL, NULL, NULL, '2013-11-15 08:37:26', NULL, 0, 4, NULL, '2013-11-15 07:03:58', NULL, NULL),
(132, 4, '032665200841', 0, '32665', '', '00841', NULL, 2, 4, '2013-11-15 07:14:04', NULL, '2013-11-15 07:30:09', NULL, '2013-11-15 07:30:38', NULL, 0, 4, NULL, '2013-11-15 07:14:04', NULL, NULL),
(133, 5, '032665202037', 0, '32665', '', '02037', NULL, 2, 4, '2013-11-15 07:19:21', NULL, '2013-11-15 07:34:05', NULL, '2013-11-15 07:34:52', NULL, 0, 4, NULL, '2013-11-15 07:19:21', NULL, NULL),
(134, 6, '032665202036', 0, '32665', '', '02036', NULL, 2, 4, '2013-11-15 07:19:24', NULL, '2013-11-15 07:48:55', NULL, '2013-11-15 07:49:03', NULL, 0, 4, NULL, '2013-11-15 07:19:24', NULL, NULL),
(135, 7, '032665200301', 0, '32665', '', '00301', NULL, 2, 4, '2013-11-15 07:22:28', NULL, '2013-11-15 07:53:21', NULL, '2013-11-15 07:54:12', NULL, 0, 4, NULL, '2013-11-15 07:22:28', NULL, NULL),
(136, 8, '032665202050', 0, '32665', '', '02050', NULL, 2, 4, '2013-11-15 07:28:53', NULL, '2013-11-15 07:57:55', NULL, NULL, NULL, 0, 4, NULL, '2013-11-15 07:28:53', NULL, NULL),
(137, 9, '032665203157', 0, '32665', '', '03157', NULL, 2, 4, '2013-11-15 07:34:32', NULL, NULL, NULL, '2013-11-15 08:20:29', NULL, 0, 4, NULL, '2013-11-15 07:34:32', NULL, NULL),
(138, 10, '032665200175', 0, '32665', '', '00175', NULL, 2, 4, '2013-11-15 07:46:16', NULL, '2013-11-15 08:20:52', NULL, '2013-11-15 08:21:14', NULL, 0, 4, NULL, '2013-11-15 07:46:16', NULL, NULL),
(139, 11, '032665200583', 0, '32665', '', '00583', NULL, 2, 4, '2013-11-15 07:47:50', NULL, NULL, NULL, '2013-11-15 08:20:32', NULL, 0, 4, NULL, '2013-11-15 07:47:50', NULL, NULL),
(140, 12, '032665100585', 0, '32665', '', '00585', NULL, 1, 4, '2013-11-15 07:47:58', NULL, NULL, NULL, '2013-11-15 08:37:30', NULL, 0, 4, NULL, '2013-11-15 07:47:58', NULL, NULL),
(141, 13, '032665103570', 0, '32665', '', '03570', NULL, 1, 4, '2013-11-15 07:49:30', NULL, NULL, NULL, '2013-11-15 08:37:31', NULL, 0, 4, NULL, '2013-11-15 07:49:30', NULL, NULL),
(142, 14, '032665105406', 0, '32665', '', '05406', NULL, 1, 4, '2013-11-15 07:53:04', NULL, NULL, NULL, '2013-11-15 08:37:33', NULL, 0, 4, NULL, '2013-11-15 07:53:04', NULL, NULL),
(143, 15, '032665201920', 0, '32665', '', '01920', NULL, 2, 4, '2013-11-15 07:57:30', NULL, '2013-11-15 08:22:27', NULL, '2013-11-15 08:23:13', NULL, 0, 4, NULL, '2013-11-15 07:57:30', NULL, NULL),
(144, 16, '032665201919', 0, '32665', '', '01919', NULL, 2, 4, '2013-11-15 07:57:43', NULL, '2013-11-15 08:28:51', NULL, '2013-11-15 08:29:55', NULL, 0, 4, NULL, '2013-11-15 07:57:43', NULL, NULL),
(145, 17, '032665102606', 0, '32665', '', '02606', NULL, 1, 4, '2013-11-15 08:32:44', NULL, '2013-11-15 08:37:21', NULL, '2013-11-15 08:38:13', NULL, 0, 4, NULL, '2013-11-15 08:32:44', NULL, NULL),
(146, 18, '032665204297', 0, '32665', '', '04297', NULL, 2, 4, '2013-11-15 08:34:08', NULL, '2013-11-15 08:45:00', NULL, '2013-11-15 08:46:24', NULL, 0, 4, NULL, '2013-11-15 08:34:08', NULL, NULL),
(147, 19, '032665104667', 0, '32665', '', '04667', NULL, 1, 4, '2013-11-15 08:37:32', NULL, '2013-11-15 08:46:54', NULL, '2013-11-15 08:47:27', NULL, 0, 4, NULL, '2013-11-15 08:37:32', NULL, NULL),
(148, 20, '032665204848', 0, '32665', '', '04848', NULL, 2, 4, '2013-11-15 08:39:11', NULL, '2013-11-15 08:46:40', NULL, '2013-11-15 08:48:04', NULL, 0, 4, NULL, '2013-11-15 08:39:11', NULL, NULL),
(149, 21, '032665101506', 0, '32665', '', '01506', NULL, 1, 4, '2013-11-15 08:43:54', NULL, '2013-11-15 08:55:57', NULL, '2013-11-15 09:01:02', NULL, 0, 4, NULL, '2013-11-15 08:43:54', NULL, NULL),
(150, 22, '032665205087', 0, '32665', '', '05087', NULL, 2, 4, '2013-11-15 08:52:01', NULL, '2013-11-15 08:56:19', NULL, '2013-11-15 08:56:48', NULL, 0, 4, NULL, '2013-11-15 08:52:01', NULL, NULL),
(151, 23, '032665205342', 0, '32665', '', '05342', NULL, 2, 4, '2013-11-15 08:52:12', NULL, '2013-11-15 08:58:18', NULL, '2013-11-15 08:58:51', NULL, 0, 4, NULL, '2013-11-15 08:52:12', NULL, NULL),
(152, 24, '032665201901', 0, '32665', '', '01901', NULL, 2, 4, '2013-11-15 08:53:13', NULL, NULL, NULL, '2013-11-15 09:01:17', NULL, 0, 4, NULL, '2013-11-15 08:53:13', NULL, NULL),
(153, 25, '032665202909', 0, '32665', '', '02909', NULL, 2, 4, '2013-11-15 08:53:24', NULL, '2013-11-15 09:01:31', NULL, '2013-11-15 09:02:07', NULL, 0, 4, NULL, '2013-11-15 08:53:24', NULL, NULL),
(154, 26, '032665103356', 0, '32665', '', '03356', NULL, 1, 4, '2013-11-15 08:58:11', NULL, '2013-11-15 09:01:35', NULL, '2013-11-15 09:03:46', NULL, 0, 4, NULL, '2013-11-15 08:58:11', NULL, NULL),
(155, 27, '032665205351', 0, '32665', '', '05351', NULL, 2, 4, '2013-11-15 09:01:11', NULL, '2013-11-15 09:30:31', NULL, '2013-11-15 09:31:12', NULL, 0, 4, NULL, '2013-11-15 09:01:11', NULL, NULL),
(156, 28, '032665205353', 0, '32665', '', '05353', NULL, 2, 4, '2013-11-15 09:01:15', NULL, '2013-11-15 09:32:28', NULL, '2013-11-15 09:32:47', NULL, 0, 4, NULL, '2013-11-15 09:01:15', NULL, NULL),
(157, 29, '032665102508', 0, '32665', '', '02508', NULL, 1, 4, '2013-11-15 09:09:59', NULL, '2013-11-15 09:30:27', NULL, '2013-11-15 09:31:46', NULL, 0, 4, NULL, '2013-11-15 09:09:59', NULL, NULL),
(158, 30, '032665100726', 0, '32665', '', '00726', NULL, 1, 4, '2013-11-15 09:15:52', NULL, '2013-11-15 09:34:48', NULL, '2013-11-15 09:35:26', NULL, 0, 4, NULL, '2013-11-15 09:15:52', NULL, NULL),
(159, 31, '032665201998', 0, '32665', '', '01998', NULL, 2, 4, '2013-11-15 09:20:26', NULL, '2013-11-15 09:36:08', NULL, '2013-11-15 09:38:13', NULL, 0, 4, NULL, '2013-11-15 09:20:26', NULL, NULL),
(160, 32, '032665200271', 0, '32665', '', '00271', NULL, 2, 4, '2013-11-15 09:22:01', NULL, '2013-11-15 09:38:54', NULL, '2013-11-15 09:41:31', NULL, 0, 4, NULL, '2013-11-15 09:22:01', NULL, NULL),
(161, 33, '032665100461', 0, '32665', '', '00461', NULL, 1, 4, '2013-11-15 09:22:40', NULL, '2013-11-15 09:38:26', NULL, '2013-11-15 09:41:33', NULL, 0, 4, NULL, '2013-11-15 09:22:40', NULL, NULL),
(162, 34, '032665201427', 0, '32665', '', '01427', NULL, 2, 4, '2013-11-15 09:24:17', NULL, '2013-11-15 09:55:18', NULL, '2013-11-15 09:55:47', NULL, 0, 4, NULL, '2013-11-15 09:24:17', NULL, NULL),
(163, 35, '032665204159', 0, '32665', '', '04159', NULL, 2, 4, '2013-11-15 09:36:42', NULL, '2013-11-15 09:58:46', NULL, '2013-11-15 09:59:21', NULL, 0, 4, NULL, '2013-11-15 09:36:42', NULL, NULL),
(164, 36, '032665201243', 0, '32665', '', '01243', NULL, 2, 4, '2013-11-15 09:39:48', NULL, '2013-11-15 10:02:22', NULL, '2013-11-15 10:03:55', NULL, 0, 4, NULL, '2013-11-15 09:39:48', NULL, NULL),
(165, 37, '032665200702', 0, '32665', '', '00702', NULL, 2, 4, '2013-11-15 09:48:02', NULL, '2013-11-15 10:04:19', NULL, '2013-11-15 10:04:39', NULL, 0, 4, NULL, '2013-11-15 09:48:02', NULL, NULL),
(166, 38, '032665202014', 0, '32665', '', '02014', NULL, 2, 4, '2013-11-15 09:48:24', NULL, '2013-11-15 10:06:55', NULL, '2013-11-15 10:08:42', NULL, 0, 4, NULL, '2013-11-15 09:48:24', NULL, NULL),
(167, 39, '032665201414', 0, '32665', '', '01414', NULL, 2, 4, '2013-11-15 09:48:35', NULL, '2013-11-15 10:10:27', NULL, '2013-11-15 10:10:36', NULL, 0, 4, NULL, '2013-11-15 09:48:35', NULL, NULL),
(168, 40, '032665200178', 0, '32665', '', '00178', NULL, 2, 4, '2013-11-15 09:48:43', NULL, '2013-11-15 10:08:58', NULL, '2013-11-15 10:10:03', NULL, 0, 4, NULL, '2013-11-15 09:48:43', NULL, NULL),
(169, 41, '032665104224', 0, '32665', '', '04224', NULL, 1, 4, '2013-11-15 09:56:05', NULL, '2013-11-15 10:13:27', NULL, '2013-11-15 10:14:31', NULL, 0, 4, NULL, '2013-11-15 09:56:05', NULL, NULL),
(170, 42, '032665203112', 0, '32665', '', '03112', NULL, 2, 4, '2013-11-15 10:04:38', NULL, '2013-11-15 10:07:53', NULL, '2013-11-15 10:09:02', NULL, 0, 4, NULL, '2013-11-15 10:04:38', NULL, NULL),
(171, 43, '032665103438', 0, '32665', '', '03438', NULL, 1, 4, '2013-11-15 10:09:09', NULL, '2013-11-15 10:21:29', NULL, '2013-11-15 10:23:59', NULL, 0, 4, NULL, '2013-11-15 10:09:09', NULL, NULL),
(172, 44, '032665203424', 0, '32665', '', '03424', NULL, 2, 4, '2013-11-15 10:38:43', NULL, '2013-11-15 10:46:37', NULL, '2013-11-15 10:48:07', NULL, 0, 4, NULL, '2013-11-15 10:38:43', NULL, NULL),
(173, 45, '032665204893', 0, '32665', '', '04893', NULL, 2, 4, '2013-11-15 10:39:35', NULL, '2013-11-15 10:48:17', NULL, '2013-11-15 10:48:44', NULL, 0, 4, NULL, '2013-11-15 10:39:35', NULL, NULL),
(174, 46, '032665200865', 0, '32665', '', '00865', NULL, 2, 4, '2013-11-18 07:02:20', NULL, '2013-11-18 07:30:15', NULL, '2013-11-18 07:33:19', NULL, 0, 4, NULL, '2013-11-18 07:02:20', NULL, NULL),
(175, 47, '032665202830', 0, '32665', '', '02830', NULL, 2, 4, '2013-11-18 07:09:49', NULL, '2013-11-18 07:12:18', NULL, '2013-11-18 07:13:43', NULL, 0, 4, NULL, '2013-11-18 07:09:49', NULL, NULL),
(176, 48, '032665103524', 0, '32665', '', '03524', NULL, 1, 4, '2013-11-18 07:13:08', NULL, '2013-11-18 07:33:32', NULL, '2013-11-18 07:35:31', NULL, 0, 4, NULL, '2013-11-18 07:13:08', NULL, NULL),
(177, 49, '032665200841', 0, '32665', '', '00841', NULL, 2, 4, '2013-11-18 07:13:38', NULL, NULL, NULL, '2013-11-18 07:33:19', NULL, 0, 4, NULL, '2013-11-18 07:13:38', NULL, NULL),
(178, 50, '032665202872', 0, '32665', '', '02872', NULL, 2, 4, '2013-11-18 07:18:14', NULL, '2013-11-18 07:27:41', NULL, '2013-11-18 07:33:02', NULL, 0, 4, NULL, '2013-11-18 07:18:14', NULL, NULL),
(179, 51, '032665103519', 0, '32665', '', '03519', NULL, 1, 4, '2013-11-18 07:23:33', NULL, '2013-11-18 07:53:06', NULL, '2013-11-18 07:54:10', NULL, 0, 4, NULL, '2013-11-18 07:23:33', NULL, NULL),
(180, 52, '032665204809', 0, '32665', '', '04809', NULL, 2, 4, '2013-11-18 07:24:41', NULL, '2013-11-18 07:55:22', NULL, '2013-11-19 08:25:58', NULL, 0, 4, NULL, '2013-11-18 07:24:41', NULL, NULL),
(181, 53, '032665101776', 0, '32665', '', '01776', NULL, 1, 4, '2013-11-18 07:28:26', NULL, '2013-11-18 07:57:36', NULL, '2013-11-18 08:00:10', NULL, 0, 4, NULL, '2013-11-18 07:28:26', NULL, NULL),
(182, 54, '032665202957', 0, '32665', '', '02957', NULL, 2, 4, '2013-11-18 07:48:37', NULL, NULL, NULL, '2013-11-18 08:25:01', NULL, 0, 4, NULL, '2013-11-18 07:48:37', NULL, NULL),
(183, 55, '032665105312', 0, '32665', '', '05312', NULL, 1, 4, '2013-11-18 07:48:56', NULL, '2013-11-18 08:04:18', NULL, '2013-11-18 08:07:10', NULL, 0, 4, NULL, '2013-11-18 07:48:56', NULL, NULL),
(184, 56, '032665104329', 0, '32665', '', '04329', NULL, 1, 4, '2013-11-18 07:52:24', NULL, '2013-11-18 08:08:27', NULL, '2013-11-18 08:12:40', NULL, 0, 4, NULL, '2013-11-18 07:52:24', NULL, NULL),
(185, 57, '032665205416', 0, '32665', '', '05416', NULL, 2, 4, '2013-11-18 07:53:03', NULL, '2013-11-18 08:25:07', NULL, '2013-11-18 08:27:29', NULL, 0, 4, NULL, '2013-11-18 07:53:03', NULL, NULL),
(186, 58, '032665204491', 0, '32665', '', '04491', NULL, 2, 4, '2013-11-18 08:25:47', NULL, NULL, NULL, '2013-11-18 08:29:40', NULL, 0, 4, NULL, '2013-11-18 08:25:47', NULL, NULL),
(187, 59, '032665103686', 0, '32665', '', '03686', NULL, 1, 4, '2013-11-18 08:27:41', NULL, '2013-11-18 08:38:19', NULL, '2013-11-18 08:40:58', NULL, 0, 4, NULL, '2013-11-18 08:27:41', NULL, NULL),
(188, 60, '032665102265', 0, '32665', '', '02265', NULL, 1, 4, '2013-11-18 08:35:07', NULL, '2013-11-18 08:42:32', NULL, '2013-11-18 09:29:09', NULL, 0, 4, NULL, '2013-11-18 08:35:07', NULL, NULL),
(189, 61, '032665204798', 0, '32665', '', '04798', NULL, 2, 4, '2013-11-18 08:38:13', NULL, '2013-11-18 09:14:49', NULL, '2013-11-18 09:15:05', NULL, 0, 4, NULL, '2013-11-18 08:38:13', NULL, NULL),
(190, 62, '032665105357', 0, '32665', '', '05357', NULL, 1, 4, '2013-11-18 08:52:03', NULL, '2013-11-18 09:42:14', NULL, '2013-11-18 09:45:04', NULL, 0, 4, NULL, '2013-11-18 08:52:03', NULL, NULL),
(191, 63, '032665205374', 0, '32665', '', '05374', NULL, 2, 4, '2013-11-18 09:00:26', NULL, '2013-11-18 09:13:13', NULL, '2013-11-18 09:14:19', NULL, 0, 4, NULL, '2013-11-18 09:00:26', NULL, NULL),
(192, 64, '032665101288', 0, '32665', '', '01288', NULL, 1, 4, '2013-11-18 09:01:45', NULL, '2013-11-18 09:48:01', NULL, '2013-11-18 09:51:00', NULL, 0, 4, NULL, '2013-11-18 09:01:45', NULL, NULL),
(193, 65, '032665104078', 0, '32665', '', '04078', NULL, 1, 4, '2013-11-18 09:03:41', NULL, '2013-11-18 09:55:24', NULL, '2013-11-18 09:58:56', NULL, 0, 4, NULL, '2013-11-18 09:03:41', NULL, NULL),
(194, 66, '032665201320', 0, '32665', '', '01320', NULL, 2, 4, '2013-11-18 09:03:49', NULL, '2013-11-18 09:15:09', NULL, '2013-11-18 09:15:19', NULL, 0, 4, NULL, '2013-11-18 09:03:49', NULL, NULL),
(195, 67, '032665100175', 0, '32665', '', '00175', NULL, 1, 4, '2013-11-18 09:10:29', NULL, '2013-11-18 09:38:26', NULL, '2013-11-18 09:39:25', NULL, 0, 4, NULL, '2013-11-18 09:10:29', NULL, NULL),
(196, 68, '032665204954', 0, '32665', '', '04954', NULL, 2, 4, '2013-11-18 09:19:22', NULL, '2013-11-18 09:19:39', NULL, NULL, NULL, 0, 4, NULL, '2013-11-18 09:19:22', NULL, NULL),
(197, 69, '032665201277', 0, '32665', '', '01277', NULL, 2, 4, '2013-11-18 09:22:10', NULL, '2013-11-18 09:30:13', NULL, '2013-11-18 09:30:55', NULL, 0, 4, NULL, '2013-11-18 09:22:10', NULL, NULL),
(198, 70, '032665100452', 0, '32665', '', '00452', NULL, 1, 4, '2013-11-18 09:25:47', NULL, '2013-11-18 09:59:00', NULL, '2013-11-18 10:04:19', NULL, 0, 4, NULL, '2013-11-18 09:25:47', NULL, NULL),
(199, 71, '032665105326', 0, '32665', '', '05326', NULL, 1, 4, '2013-11-18 09:29:55', NULL, '2013-11-18 10:04:58', NULL, '2013-11-18 10:06:55', NULL, 0, 4, NULL, '2013-11-18 09:29:55', NULL, NULL),
(200, 72, '032665105296', 0, '32665', '', '05296', NULL, 1, 4, '2013-11-18 09:30:09', NULL, NULL, NULL, '2013-11-18 10:17:19', NULL, 0, 4, NULL, '2013-11-18 09:30:09', NULL, NULL),
(201, 73, '032665105186', 0, '32665', '', '05186', NULL, 1, 4, '2013-11-18 09:35:04', NULL, '2013-11-18 10:17:53', NULL, '2013-11-18 10:18:32', NULL, 0, 4, NULL, '2013-11-18 09:35:04', NULL, NULL),
(202, 74, '032665101395', 0, '32665', '', '01395', NULL, 1, 4, '2013-11-18 09:36:44', NULL, '2013-11-18 10:20:37', NULL, '2013-11-18 10:21:44', NULL, 0, 4, NULL, '2013-11-18 09:36:44', NULL, NULL),
(203, 75, '032665102422', 0, '32665', '', '02422', NULL, 1, 4, '2013-11-18 09:36:48', NULL, '2013-11-18 10:22:26', NULL, '2013-11-18 10:25:19', NULL, 0, 4, NULL, '2013-11-18 09:36:48', NULL, NULL),
(204, 76, '032665105087', 0, '32665', '', '05087', NULL, 1, 4, '2013-11-18 09:43:08', NULL, '2013-11-18 10:25:55', NULL, '2013-11-18 10:27:42', NULL, 0, 4, NULL, '2013-11-18 09:43:08', NULL, NULL),
(205, 77, '032665101962', 0, '32665', '', '01962', NULL, 1, 4, '2013-11-18 09:53:05', NULL, '2013-11-18 10:28:52', NULL, '2013-11-18 10:33:09', NULL, 0, 4, NULL, '2013-11-18 09:53:05', NULL, NULL),
(206, 78, '032665103060', 0, '32665', '', '03060', NULL, 1, 4, '2013-11-18 10:08:37', NULL, '2013-11-18 10:33:49', NULL, '2013-11-18 10:38:13', NULL, 0, 4, NULL, '2013-11-18 10:08:37', NULL, NULL),
(207, 79, '032665200499', 0, '32665', '', '00499', NULL, 2, 4, '2013-11-18 10:23:12', NULL, '2013-11-18 10:39:41', NULL, '2013-11-18 10:41:55', NULL, 0, 4, NULL, '2013-11-18 10:23:12', NULL, NULL),
(208, 80, '032665103409', 0, '32665', '', '03409', NULL, 1, 4, '2013-11-18 10:24:52', NULL, '2013-11-18 10:59:14', NULL, '2013-11-18 10:59:41', NULL, 0, 4, NULL, '2013-11-18 10:24:52', NULL, NULL),
(209, 81, '032665102707', 0, '32665', '', '02707', NULL, 1, 4, '2013-11-18 10:27:47', NULL, '2013-11-18 11:02:16', NULL, '2013-11-18 11:02:52', NULL, 0, 4, NULL, '2013-11-18 10:27:47', NULL, NULL),
(210, 82, '032665200404', 0, '32665', '', '00404', NULL, 2, 4, '2013-11-18 10:34:59', NULL, '2013-11-18 10:44:40', NULL, '2013-11-18 10:46:20', NULL, 0, 4, NULL, '2013-11-18 10:34:59', NULL, NULL),
(211, 83, '032665203078', 0, '32665', '', '03078', NULL, 2, 4, '2013-11-18 10:49:02', NULL, '2013-11-18 10:54:27', NULL, '2013-11-18 10:58:06', NULL, 0, 4, NULL, '2013-11-18 10:49:02', NULL, NULL),
(212, 84, '032665101029', 0, '32665', '', '01029', NULL, 1, 4, '2013-11-18 10:49:10', NULL, '2013-11-18 11:03:00', NULL, '2013-11-18 11:09:25', NULL, 0, 4, NULL, '2013-11-18 10:49:10', NULL, NULL),
(213, 85, '032665102239', 0, '32665', '', '02239', NULL, 1, 4, '2013-11-18 10:49:39', NULL, '2013-11-18 11:14:10', NULL, '2013-11-18 11:16:03', NULL, 0, 4, NULL, '2013-11-18 10:49:39', NULL, NULL),
(214, 86, '032665100386', 0, '32665', '', '00386', NULL, 1, 4, '2013-11-18 10:53:23', NULL, '2013-11-18 11:17:30', NULL, '2013-11-18 11:19:45', NULL, 0, 4, NULL, '2013-11-18 10:53:23', NULL, NULL),
(215, 87, '032665200617', 0, '32665', '', '00617', NULL, 2, 4, '2013-11-18 10:56:01', NULL, '2013-11-18 11:13:03', NULL, '2013-11-18 11:13:43', NULL, 0, 4, NULL, '2013-11-18 10:56:01', NULL, NULL),
(216, 88, '032665104224', 0, '32665', '', '04224', NULL, 1, 4, '2013-11-18 10:56:13', NULL, '2013-11-18 11:31:49', NULL, '2013-11-18 11:33:43', NULL, 0, 4, NULL, '2013-11-18 10:56:13', NULL, NULL),
(217, 89, '032665102601', 0, '32665', '', '02601', NULL, 1, 4, '2013-11-18 11:00:19', NULL, '2013-11-18 11:36:40', NULL, '2013-11-18 11:37:23', NULL, 0, 4, NULL, '2013-11-18 11:00:19', NULL, NULL),
(218, 90, '032665103524', 0, '32665', '', '03524', NULL, 1, 4, '2013-11-18 11:07:57', NULL, NULL, NULL, '2013-11-18 11:32:40', NULL, 0, 4, NULL, '2013-11-18 11:07:57', NULL, NULL),
(219, 91, '032665101510', 0, '32665', '', '01510', NULL, 1, 4, '2013-11-18 11:09:54', NULL, NULL, NULL, '2013-11-18 11:50:00', NULL, 0, 4, NULL, '2013-11-18 11:09:54', NULL, NULL),
(220, 92, '032665204900', 0, '32665', '', '04900', NULL, 2, 4, '2013-11-18 11:14:52', NULL, '2013-11-18 11:20:14', NULL, '2013-11-18 11:20:36', NULL, 0, 4, NULL, '2013-11-18 11:14:52', NULL, NULL),
(221, 93, '032665204887', 0, '32665', '', '04887', NULL, 2, 4, '2013-11-19 07:17:18', NULL, '2013-11-19 07:26:10', NULL, '2013-11-19 07:26:36', NULL, 0, 4, NULL, '2013-11-19 07:17:18', NULL, NULL),
(222, 94, '032665200569', 0, '32665', '', '00569', NULL, 2, 4, '2013-11-19 07:17:23', NULL, '2013-11-19 07:26:59', NULL, '2013-11-19 07:27:42', NULL, 0, 4, NULL, '2013-11-19 07:17:23', NULL, NULL),
(223, 95, '032665202812', 0, '32665', '', '02812', NULL, 2, 4, '2013-11-19 07:17:27', NULL, '2013-11-19 07:30:11', NULL, '2013-11-19 07:30:45', NULL, 0, 4, NULL, '2013-11-19 07:17:27', NULL, NULL),
(224, 96, '032665201513', 0, '32665', '', '01513', NULL, 2, 4, '2013-11-19 07:17:47', NULL, '2013-11-19 07:31:18', NULL, '2013-11-19 07:38:46', NULL, 0, 4, NULL, '2013-11-19 07:17:47', NULL, NULL),
(225, 97, '032665102076', 0, '32665', '', '02076', NULL, 1, 4, '2013-11-19 07:17:53', NULL, '2013-11-19 07:25:41', NULL, '2013-11-19 07:47:36', NULL, 0, 4, NULL, '2013-11-19 07:17:53', NULL, NULL),
(226, 98, '032665100812', 0, '32665', '', '00812', NULL, 1, 4, '2013-11-19 07:18:01', NULL, '2013-11-19 07:26:52', NULL, NULL, NULL, 0, 4, NULL, '2013-11-19 07:18:01', NULL, NULL),
(227, 99, '032665105405', 0, '32665', '', '05405', NULL, 1, 4, '2013-11-19 07:24:57', NULL, '2013-11-19 07:49:49', NULL, '2013-11-19 07:51:55', NULL, 0, 4, NULL, '2013-11-19 07:24:57', NULL, NULL),
(228, 100, '032665102707', 0, '32665', '', '02707', NULL, 1, 4, '2013-11-19 07:31:23', NULL, '2013-11-19 07:54:23', NULL, '2013-11-19 07:56:24', NULL, 0, 4, NULL, '2013-11-19 07:31:23', NULL, NULL),
(229, 101, '032665201951', 0, '32665', '', '01951', NULL, 2, 4, '2013-11-19 07:58:29', NULL, NULL, NULL, '2013-11-19 08:21:00', NULL, 0, 4, NULL, '2013-11-19 07:58:29', NULL, NULL),
(230, 102, '032665104491', 0, '32665', '', '04491', NULL, 1, 4, '2013-11-19 07:59:42', NULL, '2013-11-19 11:09:45', NULL, NULL, NULL, 0, 4, NULL, '2013-11-19 07:59:42', NULL, NULL),
(231, 103, '032665104137', 0, '32665', '', '04137', NULL, 1, 4, '2013-11-19 08:03:02', NULL, '2013-11-19 08:29:46', NULL, '2013-11-19 08:34:12', NULL, 0, 4, NULL, '2013-11-19 08:03:02', NULL, NULL),
(232, 104, '032665200739', 0, '32665', '', '00739', NULL, 2, 4, '2013-11-19 08:04:58', NULL, NULL, NULL, '2013-11-19 08:21:11', NULL, 0, 4, NULL, '2013-11-19 08:04:58', NULL, NULL),
(233, 105, '032665203416', 0, '32665', '', '03416', NULL, 2, 4, '2013-11-19 08:08:19', NULL, NULL, NULL, '2013-11-19 08:21:05', NULL, 0, 4, NULL, '2013-11-19 08:08:19', NULL, NULL),
(234, 106, '032665105369', 0, '32665', '', '05369', NULL, 1, 4, '2013-11-19 08:14:19', NULL, '2013-11-19 08:37:36', NULL, '2013-11-19 08:38:53', NULL, 0, 4, NULL, '2013-11-19 08:14:19', NULL, NULL),
(235, 107, '032665104921', 0, '32665', '', '04921', NULL, 1, 4, '2013-11-19 08:15:04', NULL, '2013-11-19 08:39:00', NULL, '2013-11-19 08:46:35', NULL, 0, 4, NULL, '2013-11-19 08:15:04', NULL, NULL),
(236, 108, '032665204919', 0, '32665', '', '04919', NULL, 2, 4, '2013-11-19 08:27:50', NULL, '2013-11-19 08:44:39', NULL, '2013-11-19 08:45:09', NULL, 0, 4, NULL, '2013-11-19 08:27:50', NULL, NULL),
(237, 109, '032665102508', 0, '32665', '', '02508', NULL, 1, 4, '2013-11-19 08:32:28', NULL, '2013-11-19 08:46:51', NULL, '2013-11-19 08:48:32', NULL, 0, 4, NULL, '2013-11-19 08:32:28', NULL, NULL),
(238, 110, '032665203983', 0, '32665', '', '03983', NULL, 2, 4, '2013-11-19 09:13:00', NULL, '2013-11-19 09:13:58', NULL, '2013-11-19 09:15:03', NULL, 0, 4, NULL, '2013-11-19 09:13:00', NULL, NULL),
(239, 111, '032665201613', 0, '32665', '', '01613', NULL, 2, 4, '2013-11-19 09:13:06', NULL, '2013-11-19 09:15:46', NULL, '2013-11-19 09:16:09', NULL, 0, 4, NULL, '2013-11-19 09:13:06', NULL, NULL),
(240, 112, '032665200815', 0, '32665', '', '00815', NULL, 2, 4, '2013-11-19 09:13:28', NULL, '2013-11-19 09:18:23', NULL, '2013-11-19 09:19:58', NULL, 0, 4, NULL, '2013-11-19 09:13:28', NULL, NULL),
(241, 113, '032665101776', 0, '32665', '', '01776', NULL, 1, 4, '2013-11-19 09:31:23', NULL, '2013-11-19 11:59:26', NULL, '2013-11-19 11:59:45', NULL, 0, 4, NULL, '2013-11-19 09:31:23', NULL, NULL),
(242, 114, '032665202021', 0, '32665', '', '02021', NULL, 2, 4, '2013-11-19 09:39:55', NULL, '2013-11-19 09:58:53', NULL, '2013-11-19 10:00:50', NULL, 0, 4, NULL, '2013-11-19 09:39:55', NULL, NULL),
(243, 115, '032665100858', 0, '32665', '', '00858', NULL, 1, 4, '2013-11-19 09:40:18', NULL, '2013-11-19 09:56:10', NULL, '2013-11-19 09:57:43', NULL, 0, 4, NULL, '2013-11-19 09:40:18', NULL, NULL),
(244, 116, '032665100916', 0, '32665', '', '00916', NULL, 1, 4, '2013-11-19 09:45:39', NULL, '2013-11-19 09:57:48', NULL, '2013-11-19 09:59:02', NULL, 0, 4, NULL, '2013-11-19 09:45:39', NULL, NULL),
(245, 117, '032665201608', 0, '32665', '', '01608', NULL, 2, 4, '2013-11-19 09:53:37', NULL, '2013-11-19 10:14:24', NULL, '2013-11-19 10:14:37', NULL, 0, 4, NULL, '2013-11-19 09:53:37', NULL, NULL),
(246, 118, '032665201609', 0, '32665', '', '01609', NULL, 2, 4, '2013-11-19 09:54:19', NULL, '2013-11-19 10:17:49', NULL, '2013-11-19 10:17:57', NULL, 0, 4, NULL, '2013-11-19 09:54:19', NULL, NULL),
(247, 119, '032665204771', 0, '32665', '', '04771', NULL, 2, 4, '2013-11-19 09:56:26', NULL, '2013-11-19 10:55:39', NULL, '2013-11-19 10:56:12', NULL, 0, 4, NULL, '2013-11-19 09:56:26', NULL, NULL),
(248, 120, '032665204863', 0, '32665', '', '04863', NULL, 2, 4, '2013-11-19 10:05:17', NULL, '2013-11-19 10:56:26', NULL, '2013-11-19 10:57:00', NULL, 0, 4, NULL, '2013-11-19 10:05:17', NULL, NULL),
(249, 121, '032665204517', 0, '32665', '', '04517', NULL, 2, 4, '2013-11-19 10:17:39', NULL, '2013-11-19 10:59:54', NULL, '2013-11-19 11:00:19', NULL, 0, 4, NULL, '2013-11-19 10:17:39', NULL, NULL),
(250, 122, '032665200446', 0, '32665', '', '00446', NULL, 2, 4, '2013-11-19 10:20:43', NULL, '2013-11-19 11:02:10', NULL, '2013-11-19 11:02:15', NULL, 0, 4, NULL, '2013-11-19 10:20:43', NULL, NULL),
(251, 123, '032665100795', 0, '32665', '', '00795', NULL, 1, 4, '2013-11-19 11:05:08', NULL, '2013-11-19 11:11:10', NULL, '2013-11-19 11:11:50', NULL, 0, 4, NULL, '2013-11-19 11:05:08', NULL, NULL),
(252, 124, '032665101714', 0, '32665', '', '01714', NULL, 1, 4, '2013-11-19 11:14:34', NULL, '2013-11-19 11:23:17', NULL, '2013-11-19 11:24:36', NULL, 0, 4, NULL, '2013-11-19 11:14:34', NULL, NULL),
(253, 125, '032665104995', 0, '32665', '', '04995', NULL, 1, 4, '2013-11-19 11:19:51', NULL, '2013-11-19 11:28:29', NULL, '2013-11-19 11:33:28', NULL, 0, 4, NULL, '2013-11-19 11:19:51', NULL, NULL),
(254, 126, '032665201537', 0, '32665', '', '01537', NULL, 2, 4, '2013-11-19 11:19:55', NULL, '2013-11-19 11:21:16', NULL, '2013-11-19 11:21:46', NULL, 0, 4, NULL, '2013-11-19 11:19:55', NULL, NULL),
(255, 127, '032665201538', 0, '32665', '', '01538', NULL, 2, 4, '2013-11-19 11:20:00', NULL, '2013-11-19 11:23:14', NULL, '2013-11-19 11:23:24', NULL, 0, 4, NULL, '2013-11-19 11:20:00', NULL, NULL),
(256, 128, '032665201762', 0, '32665', '', '01762', NULL, 2, 4, '2013-11-19 11:23:05', NULL, '2013-11-19 11:23:49', NULL, '2013-11-19 11:24:55', NULL, 0, 4, NULL, '2013-11-19 11:23:05', NULL, NULL);
INSERT INTO `nocore_barcode_full` (`fullid`, `id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(257, 129, '032665202909', 0, '32665', '', '02909', NULL, 2, 4, '2013-11-19 11:23:56', NULL, '2013-11-19 11:37:10', NULL, '2013-11-19 11:37:37', NULL, 0, 4, NULL, '2013-11-19 11:23:56', NULL, NULL),
(258, 130, '032665103427', 0, '32665', '', '03427', NULL, 1, 4, '2013-11-19 11:24:20', NULL, '2013-11-19 11:30:01', NULL, '2013-11-19 11:35:57', NULL, 0, 4, NULL, '2013-11-19 11:24:20', NULL, NULL),
(259, 131, '032665201598', 0, '32665', '', '01598', NULL, 2, 4, '2013-11-19 11:24:44', NULL, '2013-11-19 11:38:03', NULL, '2013-11-19 11:38:23', NULL, 0, 4, NULL, '2013-11-19 11:24:44', NULL, NULL),
(260, 132, '032665201106', 0, '32665', '', '01106', NULL, 2, 4, '2013-11-19 11:33:38', NULL, '2013-11-19 11:40:47', NULL, '2013-11-19 11:41:24', NULL, 0, 4, NULL, '2013-11-19 11:33:38', NULL, NULL),
(261, 133, '032665205048', 0, '32665', '', '05048', NULL, 2, 4, '2013-11-19 11:46:34', NULL, '2013-11-19 11:56:58', NULL, '2013-11-19 11:57:30', NULL, 0, 4, NULL, '2013-11-19 11:46:34', NULL, NULL),
(262, 134, '032665104894', 0, '32665', '', '04894', NULL, 1, 4, '2013-11-19 11:49:52', NULL, NULL, NULL, '2013-11-19 12:02:54', NULL, 0, 4, NULL, '2013-11-19 11:49:52', NULL, NULL),
(263, 135, '032665200327', 0, '32665', '', '00327', NULL, 2, 4, '2013-11-20 12:23:21', NULL, '2013-11-20 12:32:47', NULL, '2013-11-20 12:33:47', NULL, 0, 4, NULL, '2013-11-20 12:23:21', NULL, NULL),
(264, 136, '032665104894', 0, '32665', '', '04894', NULL, 1, 4, '2013-11-20 12:30:22', NULL, '2013-11-20 13:08:19', NULL, '2013-11-20 13:14:07', NULL, 0, 4, NULL, '2013-11-20 12:30:22', NULL, NULL),
(265, 137, '032665200254', 0, '32665', '', '00254', NULL, 2, 4, '2013-11-20 12:32:48', NULL, '2013-11-20 12:52:13', NULL, '2013-11-20 12:52:27', NULL, 0, 4, NULL, '2013-11-20 12:32:48', NULL, NULL),
(266, 138, '032665200568', 0, '32665', '', '00568', NULL, 2, 4, '2013-11-20 12:33:34', NULL, '2013-11-20 12:53:40', NULL, '2013-11-20 12:56:41', NULL, 0, 4, NULL, '2013-11-20 12:33:34', NULL, NULL),
(267, 139, '032665201031', 0, '32665', '', '01031', NULL, 2, 4, '2013-11-20 12:38:35', NULL, '2013-11-20 12:56:54', NULL, '2013-11-20 12:57:12', NULL, 0, 4, NULL, '2013-11-20 12:38:35', NULL, NULL),
(268, 140, '032665203019', 0, '32665', '', '03019', NULL, 2, 4, '2013-11-20 12:39:58', NULL, '2013-11-20 12:58:21', NULL, '2013-11-20 12:58:33', NULL, 0, 4, NULL, '2013-11-20 12:39:58', NULL, NULL),
(269, 141, '032665100592', 0, '32665', '', '00592', NULL, 1, 4, '2013-11-20 12:43:44', NULL, '2013-11-20 13:16:44', NULL, '2013-11-20 13:20:31', NULL, 0, 4, NULL, '2013-11-20 12:43:44', NULL, NULL),
(270, 142, '032665201256', 0, '32665', '', '01256', NULL, 2, 4, '2013-11-20 12:49:31', NULL, '2013-11-20 12:59:36', NULL, '2013-11-20 12:59:46', NULL, 0, 4, NULL, '2013-11-20 12:49:31', NULL, NULL),
(271, 143, '032665104989', 0, '32665', '', '04989', NULL, 1, 4, '2013-11-20 13:02:40', NULL, '2013-11-20 13:24:45', NULL, '2013-11-20 13:28:19', NULL, 0, 4, NULL, '2013-11-20 13:02:40', NULL, NULL),
(272, 144, '032665102795', 0, '32665', '', '02795', NULL, 1, 4, '2013-11-20 13:10:40', NULL, '2013-11-20 13:30:24', NULL, '2013-11-20 13:34:02', NULL, 0, 4, NULL, '2013-11-20 13:10:40', NULL, NULL),
(273, 145, '032665204340', 0, '32665', '', '04340', NULL, 2, 4, '2013-11-20 13:16:49', NULL, '2013-11-20 13:20:50', NULL, '2013-11-20 13:21:13', NULL, 0, 4, NULL, '2013-11-20 13:16:49', NULL, NULL),
(274, 146, '032665204701', 0, '32665', '', '04701', NULL, 2, 4, '2013-11-20 13:21:21', NULL, '2013-11-20 13:38:57', NULL, '2013-11-20 13:40:39', NULL, 0, 4, NULL, '2013-11-20 13:21:21', NULL, NULL),
(275, 147, '032665200175', 0, '32665', '', '00175', NULL, 2, 4, '2013-11-20 13:23:44', NULL, '2013-11-20 13:44:01', NULL, '2013-11-20 13:44:48', NULL, 0, 4, NULL, '2013-11-20 13:23:44', NULL, NULL),
(276, 148, '032665104894', 0, '32665', '', '04894', NULL, 1, 4, '2013-11-20 13:31:34', NULL, '2013-11-20 13:38:32', NULL, '2013-11-20 13:44:20', NULL, 0, 4, NULL, '2013-11-20 13:31:34', NULL, NULL),
(277, 149, '032665201253', 0, '32665', '', '01253', NULL, 2, 4, '2013-11-20 13:35:31', NULL, '2013-11-20 13:51:12', NULL, '2013-11-20 13:51:23', NULL, 0, 4, NULL, '2013-11-20 13:35:31', NULL, NULL),
(278, 150, '032665201548', 0, '32665', '', '01548', NULL, 2, 4, '2013-11-20 13:48:05', NULL, '2013-11-20 13:54:09', NULL, '2013-11-20 13:57:19', NULL, 0, 4, NULL, '2013-11-20 13:48:05', NULL, NULL),
(279, 151, '032665200090', 0, '32665', '', '00090', NULL, 2, 4, '2013-11-20 13:48:39', NULL, '2013-11-20 13:57:26', NULL, '2013-11-20 13:57:42', NULL, 0, 4, NULL, '2013-11-20 13:48:39', NULL, NULL),
(280, 152, '032665200089', 0, '32665', '', '00089', NULL, 2, 4, '2013-11-20 13:49:01', NULL, '2013-11-20 13:59:22', NULL, '2013-11-20 13:59:31', NULL, 0, 4, NULL, '2013-11-20 13:49:01', NULL, NULL),
(281, 153, '032665105052', 0, '32665', '', '05052', NULL, 1, 4, '2013-11-20 13:49:41', NULL, '2013-11-20 13:54:13', NULL, '2013-11-20 13:56:11', NULL, 0, 4, NULL, '2013-11-20 13:49:41', NULL, NULL),
(282, 154, '032665103642', 0, '32665', '', '03642', NULL, 1, 4, '2013-11-20 13:50:07', NULL, '2013-11-20 13:57:25', NULL, '2013-11-20 13:58:48', NULL, 0, 4, NULL, '2013-11-20 13:50:07', NULL, NULL),
(283, 155, '032665104850', 0, '32665', '', '04850', NULL, 1, 4, '2013-11-20 14:02:47', NULL, '2013-11-20 14:03:07', NULL, '2013-11-20 14:05:22', NULL, 0, 4, NULL, '2013-11-20 14:02:47', NULL, NULL),
(284, 156, '032665100920', 0, '32665', '', '00920', NULL, 1, 4, '2013-11-20 14:02:55', NULL, '2013-11-20 14:06:41', NULL, '2013-11-20 14:08:18', NULL, 0, 4, NULL, '2013-11-20 14:02:55', NULL, NULL),
(285, 157, '032665102430', 0, '32665', '', '02430', NULL, 1, 4, '2013-11-20 14:07:34', NULL, '2013-11-20 14:14:13', NULL, '2013-11-20 14:15:59', NULL, 0, 4, NULL, '2013-11-20 14:07:34', NULL, NULL),
(286, 158, '032665202105', 0, '32665', '', '02105', NULL, 2, 4, '2013-11-20 14:15:39', NULL, NULL, NULL, '2013-11-20 14:24:41', NULL, 0, 4, NULL, '2013-11-20 14:15:39', NULL, NULL),
(287, 159, '032665100775', 0, '32665', '', '00775', NULL, 1, 4, '2013-11-20 14:23:36', NULL, '2013-11-20 14:32:13', NULL, '2013-11-20 14:33:29', NULL, 0, 4, NULL, '2013-11-20 14:23:36', NULL, NULL),
(288, 160, '032665105455', 0, '32665', '', '05455', NULL, 1, 4, '2013-11-20 14:48:54', NULL, '2013-11-20 14:55:12', NULL, '2013-11-20 14:57:12', NULL, 0, 4, NULL, '2013-11-20 14:48:54', NULL, NULL),
(289, 161, '032665104098', 0, '32665', '', '04098', NULL, 1, 4, '2013-11-20 14:49:27', NULL, '2013-11-20 14:57:17', NULL, '2013-11-20 14:59:41', NULL, 0, 4, NULL, '2013-11-20 14:49:27', NULL, NULL),
(290, 162, '032665202039', 0, '32665', '', '02039', NULL, 2, 4, '2013-11-20 14:50:04', NULL, NULL, NULL, '2013-11-20 14:57:07', NULL, 0, 4, NULL, '2013-11-20 14:50:04', NULL, NULL),
(291, 163, '032665201049', 0, '32665', '', '01049', NULL, 2, 4, '2013-11-20 14:56:21', NULL, '2013-11-20 14:57:12', NULL, '2013-11-20 14:57:32', NULL, 0, 4, NULL, '2013-11-20 14:56:21', NULL, NULL),
(292, 164, '032665201109', 0, '32665', '', '01109', NULL, 2, 4, '2013-11-20 15:18:45', NULL, '2013-11-20 15:19:18', NULL, '2013-11-20 15:19:39', NULL, 0, 4, NULL, '2013-11-20 15:18:45', NULL, NULL),
(293, 165, '032665205186', 0, '32665', '', '05186', NULL, 2, 4, '2013-11-20 15:25:16', NULL, '2013-11-20 15:26:56', NULL, '2013-11-20 15:29:00', NULL, 0, 4, NULL, '2013-11-20 15:25:16', NULL, NULL),
(294, 166, '032665201914', 0, '32665', '', '01914', NULL, 2, 4, '2013-11-20 15:30:39', NULL, '2013-11-20 15:34:36', NULL, '2013-11-20 15:34:53', NULL, 0, 4, NULL, '2013-11-20 15:30:39', NULL, NULL),
(295, 167, '032665102067', 0, '32665', '', '02067', NULL, 1, 4, '2013-11-20 15:31:36', NULL, '2013-11-20 15:55:50', NULL, '2013-11-20 15:58:55', NULL, 0, 4, NULL, '2013-11-20 15:31:36', NULL, NULL),
(296, 168, '032665103446', 0, '32665', '', '03446', NULL, 1, 4, '2013-11-20 15:49:23', NULL, '2013-11-20 16:00:37', NULL, '2013-11-20 16:04:10', NULL, 0, 4, NULL, '2013-11-20 15:49:23', NULL, NULL),
(297, 169, '032665205278', 0, '32665', '', '05278', NULL, 2, 4, '2013-11-20 15:52:31', NULL, '2013-11-20 15:53:13', NULL, '2013-11-20 15:53:47', NULL, 0, 4, NULL, '2013-11-20 15:52:31', NULL, NULL),
(298, 170, '032665105369', 0, '32665', '', '05369', NULL, 1, 4, '2013-11-20 15:58:53', NULL, '2013-11-20 16:10:55', NULL, '2013-11-20 16:12:33', NULL, 0, 4, NULL, '2013-11-20 15:58:53', NULL, NULL),
(299, 171, '032665104952', 0, '32665', '', '04952', NULL, 1, 4, '2013-11-20 16:19:34', NULL, '2013-11-20 16:26:03', NULL, '2013-11-20 16:26:19', NULL, 0, 4, NULL, '2013-11-20 16:19:34', NULL, NULL),
(300, 172, '032665101618', 0, '32665', '', '01618', NULL, 1, 4, '2013-11-20 16:19:52', NULL, '2013-11-20 16:29:45', NULL, '2013-11-20 16:30:25', NULL, 0, 4, NULL, '2013-11-20 16:19:52', NULL, NULL),
(301, 173, '032665100883', 0, '32665', '', '00883', NULL, 1, 4, '2013-11-20 16:43:01', NULL, '2013-11-20 16:47:22', NULL, '2013-11-20 16:47:42', NULL, 0, 4, NULL, '2013-11-20 16:43:01', NULL, NULL),
(302, 174, '032665105073', 0, '32665', '', '05073', NULL, 1, 1, '2013-11-20 16:43:36', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-20 16:43:36', NULL, NULL),
(303, 175, '032665105135', 0, '32665', '', '05135', NULL, 1, 4, '2013-11-20 16:43:38', NULL, '2013-11-20 16:58:59', NULL, '2013-11-20 17:03:50', NULL, 0, 4, NULL, '2013-11-20 16:43:38', NULL, NULL),
(304, 1, '032665204349', 0, '32665', '', '04349', NULL, 2, 4, '2013-11-21 07:01:12', NULL, '2013-11-21 07:39:37', NULL, '2013-11-21 07:42:51', NULL, 0, 4, NULL, '2013-11-21 07:01:12', NULL, NULL),
(305, 2, '032665203127', 0, '32665', '', '03127', NULL, 2, 4, '2013-11-21 07:02:00', NULL, '2013-11-21 11:29:05', NULL, '2013-11-21 11:29:23', NULL, 0, 4, NULL, '2013-11-21 07:02:00', NULL, NULL),
(306, 3, '032665102388', 0, '32665', '', '02388', NULL, 1, 4, '2013-11-21 07:05:30', NULL, '2013-11-21 08:06:23', NULL, '2013-11-21 08:10:00', NULL, 0, 4, NULL, '2013-11-21 07:05:30', NULL, NULL),
(307, 4, '032665101421', 0, '32665', '', '01421', NULL, 1, 4, '2013-11-21 07:05:38', NULL, '2013-11-21 07:54:13', NULL, '2013-11-21 07:56:17', NULL, 0, 4, NULL, '2013-11-21 07:05:38', NULL, NULL),
(308, 5, '032665100143', 0, '32665', '', '00143', NULL, 1, 4, '2013-11-21 07:15:47', NULL, '2013-11-21 08:12:14', NULL, NULL, NULL, 0, 4, NULL, '2013-11-21 07:15:47', NULL, NULL),
(309, 6, '032665101331', 0, '32665', '', '01331', NULL, 1, 4, '2013-11-21 07:19:34', NULL, '2013-11-21 08:12:51', NULL, '2013-11-21 08:15:57', NULL, 0, 4, NULL, '2013-11-21 07:19:34', NULL, NULL),
(310, 7, '032665105357', 0, '32665', '', '05357', NULL, 1, 4, '2013-11-21 07:25:39', NULL, '2013-11-21 08:18:18', NULL, NULL, NULL, 0, 4, NULL, '2013-11-21 07:25:39', NULL, NULL),
(311, 8, '032665201503', 0, '32665', '', '01503', NULL, 2, 4, '2013-11-21 07:31:43', NULL, '2013-11-21 07:44:08', NULL, '2013-11-21 07:46:48', NULL, 0, 4, NULL, '2013-11-21 07:31:43', NULL, NULL),
(312, 9, '032665200321', 0, '32665', '', '00321', NULL, 2, 4, '2013-11-21 07:32:14', NULL, '2013-11-21 07:46:56', NULL, '2013-11-21 07:47:30', NULL, 0, 4, NULL, '2013-11-21 07:32:14', NULL, NULL),
(313, 10, '032665202417', 0, '32665', '', '02417', NULL, 2, 4, '2013-11-21 07:39:27', NULL, '2013-11-21 07:49:42', NULL, '2013-11-21 07:50:05', NULL, 0, 4, NULL, '2013-11-21 07:39:27', NULL, NULL),
(314, 11, '032665202508', 0, '32665', '', '02508', NULL, 2, 4, '2013-11-21 07:41:40', NULL, '2013-11-21 07:52:01', NULL, '2013-11-21 07:54:03', NULL, 0, 4, NULL, '2013-11-21 07:41:40', NULL, NULL),
(315, 12, '032665103152', 0, '32665', '', '03152', NULL, 1, 4, '2013-11-21 07:49:48', NULL, '2013-11-21 08:22:12', NULL, '2013-11-21 08:26:43', NULL, 0, 4, NULL, '2013-11-21 07:49:48', NULL, NULL),
(316, 13, '032665102417', 0, '32665', '', '02417', NULL, 1, 4, '2013-11-21 07:53:15', NULL, '2013-11-21 08:33:26', NULL, '2013-11-21 08:34:20', NULL, 0, 4, NULL, '2013-11-21 07:53:15', NULL, NULL),
(317, 14, '032665201942', 0, '32665', '', '01942', NULL, 2, 4, '2013-11-21 08:19:42', NULL, '2013-11-21 08:22:16', NULL, '2013-11-21 08:23:26', NULL, 0, 4, NULL, '2013-11-21 08:19:42', NULL, NULL),
(318, 15, '032665204300', 0, '32665', '', '04300', NULL, 2, 4, '2013-11-21 08:22:01', NULL, '2013-11-21 08:24:31', NULL, NULL, NULL, 0, 4, NULL, '2013-11-21 08:22:01', NULL, NULL),
(319, 16, '032665200367', 0, '32665', '', '00367', NULL, 2, 4, '2013-11-21 08:22:29', NULL, '2013-11-21 08:27:10', NULL, '2013-11-21 08:27:27', NULL, 0, 4, NULL, '2013-11-21 08:22:29', NULL, NULL),
(320, 17, '032665102073', 0, '32665', '', '02073', NULL, 1, 4, '2013-11-21 08:41:41', NULL, '2013-11-21 08:43:57', NULL, '2013-11-21 08:48:38', NULL, 0, 4, NULL, '2013-11-21 08:41:41', NULL, NULL),
(321, 18, '032665202093', 0, '32665', '', '02093', NULL, 2, 4, '2013-11-21 08:41:49', NULL, '2013-11-21 08:44:38', NULL, '2013-11-21 08:54:22', NULL, 0, 4, NULL, '2013-11-21 08:41:49', NULL, NULL),
(322, 19, '032665202055', 0, '32665', '', '02055', NULL, 2, 4, '2013-11-21 08:41:53', NULL, '2013-11-21 08:54:27', NULL, '2013-11-21 08:54:53', NULL, 0, 4, NULL, '2013-11-21 08:41:53', NULL, NULL),
(323, 20, '032665200908', 0, '32665', '', '00908', NULL, 2, 4, '2013-11-21 09:00:02', NULL, '2013-11-21 09:03:33', NULL, '2013-11-21 09:05:10', NULL, 0, 4, NULL, '2013-11-21 09:00:02', NULL, NULL),
(324, 21, '032665100556', 0, '32665', '', '00556', NULL, 1, 4, '2013-11-21 09:09:08', NULL, '2013-11-21 09:16:59', NULL, '2013-11-21 09:17:14', NULL, 0, 4, NULL, '2013-11-21 09:09:08', NULL, NULL),
(325, 22, '032665201516', 0, '32665', '', '01516', NULL, 2, 4, '2013-11-21 09:09:25', NULL, '2013-11-21 09:21:40', NULL, '2013-11-21 09:22:45', NULL, 0, 4, NULL, '2013-11-21 09:09:25', NULL, NULL),
(326, 23, '032665203474', 0, '32665', '', '03474', NULL, 2, 4, '2013-11-21 09:09:27', NULL, '2013-11-21 09:23:32', NULL, '2013-11-21 09:23:43', NULL, 0, 4, NULL, '2013-11-21 09:09:27', NULL, NULL),
(327, 24, '032665205159', 0, '32665', '', '05159', NULL, 2, 4, '2013-11-21 09:22:01', NULL, '2013-11-21 09:35:09', NULL, '2013-11-21 09:36:15', NULL, 0, 4, NULL, '2013-11-21 09:22:01', NULL, NULL),
(328, 25, '032665202202', 0, '32665', '', '02202', NULL, 2, 4, '2013-11-21 09:43:53', NULL, '2013-11-21 09:48:05', NULL, '2013-11-21 09:48:42', NULL, 0, 4, NULL, '2013-11-21 09:43:53', NULL, NULL),
(329, 26, '032665100555', 0, '32665', '', '00555', NULL, 1, 4, '2013-11-21 09:44:41', NULL, '2013-11-21 09:47:13', NULL, '2013-11-21 09:48:51', NULL, 0, 4, NULL, '2013-11-21 09:44:41', NULL, NULL),
(330, 27, '032665101029', 0, '32665', '', '01029', NULL, 1, 4, '2013-11-21 09:47:27', NULL, '2013-11-21 09:52:02', NULL, '2013-11-21 09:53:45', NULL, 0, 4, NULL, '2013-11-21 09:47:27', NULL, NULL),
(331, 28, '032665202422', 0, '32665', '', '02422', NULL, 2, 4, '2013-11-21 09:55:40', NULL, NULL, NULL, '2013-11-21 10:00:13', NULL, 0, 4, NULL, '2013-11-21 09:55:40', NULL, NULL),
(332, 29, '032665105079', 0, '32665', '', '05079', NULL, 1, 4, '2013-11-21 10:04:54', NULL, '2013-11-21 10:25:50', NULL, NULL, NULL, 0, 4, NULL, '2013-11-21 10:04:54', NULL, NULL),
(333, 30, '032665201392', 0, '32665', '', '01392', NULL, 2, 4, '2013-11-21 10:12:46', NULL, '2013-11-21 10:14:15', NULL, '2013-11-21 10:14:27', NULL, 0, 4, NULL, '2013-11-21 10:12:46', NULL, NULL),
(334, 31, '032665101513', 0, '32665', '', '01513', NULL, 1, 4, '2013-11-21 10:17:54', NULL, '2013-11-21 10:28:37', NULL, NULL, NULL, 0, 4, NULL, '2013-11-21 10:17:54', NULL, NULL),
(335, 32, '032665103438', 0, '32665', '', '03438', NULL, 1, 4, '2013-11-21 10:22:05', NULL, '2013-11-21 10:34:00', NULL, '2013-11-21 10:45:10', NULL, 0, 4, NULL, '2013-11-21 10:22:05', NULL, NULL),
(336, 33, '032665201398', 0, '32665', '', '01398', NULL, 2, 4, '2013-11-21 10:22:10', NULL, '2013-11-21 10:25:40', NULL, '2013-11-21 10:26:15', NULL, 0, 4, NULL, '2013-11-21 10:22:10', NULL, NULL),
(337, 34, '032665204326', 0, '32665', '', '04326', NULL, 2, 4, '2013-11-21 10:33:36', NULL, '2013-11-21 10:42:29', NULL, '2013-11-21 10:44:50', NULL, 0, 4, NULL, '2013-11-21 10:33:36', NULL, NULL),
(338, 35, '032665202592', 0, '32665', '', '02592', NULL, 2, 4, '2013-11-21 11:00:35', NULL, NULL, NULL, '2013-11-21 11:08:17', NULL, 0, 4, NULL, '2013-11-21 11:00:35', NULL, NULL),
(339, 36, '032665205425', 0, '32665', '', '05425', NULL, 2, 4, '2013-11-21 11:01:37', NULL, '2013-11-21 11:09:29', NULL, '2013-11-21 11:09:40', NULL, 0, 4, NULL, '2013-11-21 11:01:37', NULL, NULL),
(340, 37, '032665203999', 0, '32665', '', '03999', NULL, 2, 4, '2013-11-21 11:09:15', NULL, '2013-11-21 11:11:41', NULL, NULL, NULL, 0, 4, NULL, '2013-11-21 11:09:15', NULL, NULL),
(341, 38, '032665102484', 0, '32665', '', '02484', NULL, 1, 4, '2013-11-21 11:14:03', NULL, '2013-11-21 11:19:40', NULL, '2013-11-21 11:25:23', NULL, 0, 4, NULL, '2013-11-21 11:14:03', NULL, NULL),
(342, 39, '032665204681', 0, '32665', '', '04681', NULL, 2, 4, '2013-11-21 11:16:55', NULL, NULL, NULL, '2013-11-21 11:41:27', NULL, 0, 4, NULL, '2013-11-21 11:16:55', NULL, NULL),
(343, 40, '032665204078', 0, '32665', '', '04078', NULL, 2, 4, '2013-11-21 11:23:31', NULL, '2013-11-21 11:44:19', NULL, '2013-11-21 11:44:41', NULL, 0, 4, NULL, '2013-11-21 11:23:31', NULL, NULL),
(344, 41, '032665204349', 0, '32665', '', '04349', NULL, 2, 4, '2013-11-21 11:24:50', NULL, '2013-11-21 11:29:33', NULL, NULL, NULL, 0, 4, NULL, '2013-11-21 11:24:50', NULL, NULL),
(345, 42, '032665201283', 0, '32665', '', '01283', NULL, 2, 4, '2013-11-21 11:25:19', NULL, '2013-11-21 11:45:29', NULL, '2013-11-21 11:45:52', NULL, 0, 4, NULL, '2013-11-21 11:25:19', NULL, NULL),
(346, 43, '032665102706', 0, '32665', '', '02706', NULL, 1, 4, '2013-11-21 11:27:36', NULL, NULL, NULL, '2013-11-21 11:52:17', NULL, 0, 4, NULL, '2013-11-21 11:27:36', NULL, NULL),
(347, 44, '032665102689', 0, '32665', '', '02689', NULL, 1, 4, '2013-11-21 11:27:38', NULL, '2013-11-21 11:48:35', NULL, '2013-11-21 11:48:59', NULL, 0, 4, NULL, '2013-11-21 11:27:38', NULL, NULL),
(348, 45, '032665204859', 0, '32665', '', '04859', NULL, 2, 4, '2013-11-21 11:32:48', NULL, '2013-11-21 11:41:41', NULL, '2013-11-21 11:43:38', NULL, 0, 4, NULL, '2013-11-21 11:32:48', NULL, NULL),
(349, 46, '032665205215', 0, '32665', '', '05215', NULL, 2, 4, '2013-11-21 11:44:15', NULL, '2013-11-21 12:11:20', NULL, '2013-11-21 12:12:35', NULL, 0, 4, NULL, '2013-11-21 11:44:15', NULL, NULL),
(350, 47, '032665105235', 0, '32665', '', '05235', NULL, 1, 4, '2013-11-21 11:44:56', NULL, '2013-11-21 11:52:44', NULL, '2013-11-21 11:56:46', NULL, 0, 4, NULL, '2013-11-21 11:44:56', NULL, NULL),
(351, 48, '032665200799', 0, '32665', '', '00799', NULL, 2, 4, '2013-11-21 11:50:03', NULL, '2013-11-21 11:56:13', NULL, '2013-11-21 11:56:26', NULL, 0, 4, NULL, '2013-11-21 11:50:03', NULL, NULL),
(352, 1, '032665201886', 0, '32665', '', '01886', NULL, 2, 4, '2013-11-22 07:01:34', NULL, '2013-11-22 07:06:35', NULL, '2013-11-22 07:06:57', NULL, 0, 4, NULL, '2013-11-22 07:01:34', NULL, NULL),
(353, 2, '032665201421', 0, '32665', '', '01421', NULL, 2, 4, '2013-11-22 07:05:43', NULL, NULL, NULL, '2013-11-22 07:11:05', NULL, 0, 4, NULL, '2013-11-22 07:05:43', NULL, NULL),
(354, 3, '032665200111', 0, '32665', '', '00111', NULL, 2, 4, '2013-11-22 07:07:10', NULL, '2013-11-22 07:22:49', NULL, '2013-11-22 07:26:38', NULL, 0, 4, NULL, '2013-11-22 07:07:10', NULL, NULL),
(355, 4, '032665202508', 0, '32665', '', '02508', NULL, 2, 4, '2013-11-22 07:13:07', NULL, NULL, NULL, '2013-11-22 07:22:52', NULL, 0, 4, NULL, '2013-11-22 07:13:07', NULL, NULL),
(356, 5, '032665203653', 0, '32665', '', '03653', NULL, 2, 4, '2013-11-22 07:20:17', NULL, '2013-11-22 07:26:42', NULL, '2013-11-22 07:27:16', NULL, 0, 4, NULL, '2013-11-22 07:20:17', NULL, NULL),
(357, 6, '032665201409', 0, '32665', '', '01409', NULL, 2, 4, '2013-11-22 07:30:19', NULL, '2013-11-22 07:59:46', NULL, '2013-11-22 08:00:10', NULL, 0, 4, NULL, '2013-11-22 07:30:19', NULL, NULL),
(358, 7, '032665203446', 0, '32665', '', '03446', NULL, 2, 4, '2013-11-22 07:30:48', NULL, '2013-11-22 08:03:07', NULL, '2013-11-22 08:18:46', NULL, 0, 4, NULL, '2013-11-22 07:30:48', NULL, NULL),
(359, 8, '032665201928', 0, '32665', '', '01928', NULL, 2, 4, '2013-11-22 07:38:01', NULL, '2013-11-22 08:07:58', NULL, '2013-11-22 08:08:13', NULL, 0, 4, NULL, '2013-11-22 07:38:01', NULL, NULL),
(360, 9, '032665105016', 0, '32665', '', '05016', NULL, 1, 4, '2013-11-22 07:43:08', NULL, '2013-11-22 08:01:38', NULL, '2013-11-22 08:07:05', NULL, 0, 4, NULL, '2013-11-22 07:43:08', NULL, NULL),
(361, 10, '032665105101', 0, '32665', '', '05101', NULL, 1, 4, '2013-11-22 07:47:36', NULL, '2013-11-22 07:50:04', NULL, '2013-11-22 07:50:22', NULL, 0, 4, NULL, '2013-11-22 07:47:36', NULL, NULL),
(362, 11, '032665105101', 0, '32665', '', '05101', NULL, 1, 4, '2013-11-22 07:50:42', NULL, '2013-11-22 08:27:06', NULL, '2013-11-22 08:31:41', NULL, 0, 4, NULL, '2013-11-22 07:50:42', NULL, NULL),
(363, 12, '032665202310', 0, '32665', '', '02310', NULL, 2, 4, '2013-11-22 07:51:05', NULL, '2013-11-22 08:09:33', NULL, '2013-11-22 08:09:46', NULL, 0, 4, NULL, '2013-11-22 07:51:05', NULL, NULL),
(364, 13, '032665102695', 0, '32665', '', '02695', NULL, 1, 4, '2013-11-22 07:51:19', NULL, '2013-11-22 08:31:57', NULL, '2013-11-22 08:39:05', NULL, 0, 4, NULL, '2013-11-22 07:51:19', NULL, NULL),
(365, 14, '032665104625', 0, '32665', '', '04625', NULL, 1, 4, '2013-11-22 07:58:30', NULL, '2013-11-22 08:53:59', NULL, '2013-11-22 09:01:09', NULL, 0, 4, NULL, '2013-11-22 07:58:30', NULL, NULL),
(366, 15, '032665205093', 0, '32665', '', '05093', NULL, 2, 4, '2013-11-22 08:30:04', NULL, '2013-11-22 08:58:21', NULL, '2013-11-22 08:58:58', NULL, 0, 4, NULL, '2013-11-22 08:30:04', NULL, NULL),
(367, 16, '032665100626', 0, '32665', '', '00626', NULL, 1, 4, '2013-11-22 08:37:36', NULL, '2013-11-22 09:00:14', NULL, '2013-11-22 09:05:33', NULL, 0, 4, NULL, '2013-11-22 08:37:36', NULL, NULL),
(368, 17, '032665201763', 0, '32665', '', '01763', NULL, 2, 4, '2013-11-22 08:45:10', NULL, '2013-11-22 09:05:53', NULL, '2013-11-22 09:06:41', NULL, 0, 4, NULL, '2013-11-22 08:45:10', NULL, NULL),
(369, 18, '032665204609', 0, '32665', '', '04609', NULL, 2, 4, '2013-11-22 08:48:00', NULL, '2013-11-22 09:31:23', NULL, '2013-11-22 09:31:44', NULL, 0, 4, NULL, '2013-11-22 08:48:00', NULL, NULL),
(370, 19, '032665200095', 0, '32665', '', '00095', NULL, 2, 4, '2013-11-22 08:48:04', NULL, '2013-11-22 09:33:04', NULL, '2013-11-22 09:33:12', NULL, 0, 4, NULL, '2013-11-22 08:48:04', NULL, NULL),
(371, 20, '032665103586', 0, '32665', '', '03586', NULL, 1, 4, '2013-11-22 08:55:16', NULL, '2013-11-22 09:37:38', NULL, '2013-11-22 09:37:48', NULL, 0, 4, NULL, '2013-11-22 08:55:16', NULL, NULL),
(372, 21, '032665100029', 0, '32665', '', '00029', NULL, 1, 4, '2013-11-22 08:56:51', NULL, '2013-11-22 09:43:27', NULL, '2013-11-22 09:43:35', NULL, 0, 4, NULL, '2013-11-22 08:56:51', NULL, NULL),
(373, 22, '032665104736', 0, '32665', '', '04736', NULL, 1, 4, '2013-11-22 09:05:33', NULL, '2013-11-22 09:59:04', NULL, '2013-11-22 10:42:54', NULL, 0, 4, NULL, '2013-11-22 09:05:33', NULL, NULL),
(374, 23, '032665101803', 0, '32665', '', '01803', NULL, 1, 4, '2013-11-22 09:06:21', NULL, '2013-11-22 10:47:31', NULL, '2013-11-22 10:49:43', NULL, 0, 4, NULL, '2013-11-22 09:06:21', NULL, NULL),
(375, 24, '032665100194', 0, '32665', '', '00194', NULL, 1, 4, '2013-11-22 09:13:21', NULL, '2013-11-22 10:04:43', NULL, '2013-11-22 10:04:52', NULL, 0, 4, NULL, '2013-11-22 09:13:21', NULL, NULL),
(376, 25, '032665200994', 0, '32665', '', '00994', NULL, 2, 4, '2013-11-22 09:40:24', NULL, '2013-11-22 09:52:24', NULL, '2013-11-22 09:52:48', NULL, 0, 4, NULL, '2013-11-22 09:40:24', NULL, NULL),
(377, 26, '032665101819', 0, '32665', '', '01819', NULL, 1, 4, '2013-11-22 09:45:20', NULL, '2013-11-22 10:51:32', NULL, '2013-11-22 10:54:24', NULL, 0, 4, NULL, '2013-11-22 09:45:20', NULL, NULL),
(378, 27, '032665202888', 0, '32665', '', '02888', NULL, 2, 4, '2013-11-22 10:07:39', NULL, '2013-11-22 10:12:16', NULL, '2013-11-22 10:13:49', NULL, 0, 4, NULL, '2013-11-22 10:07:39', NULL, NULL),
(379, 28, '032665103074', 0, '32665', '', '03074', NULL, 1, 4, '2013-11-22 10:09:56', NULL, '2013-11-22 10:56:41', NULL, '2013-11-22 10:58:07', NULL, 0, 4, NULL, '2013-11-22 10:09:56', NULL, NULL),
(380, 29, '032665200726', 0, '32665', '', '00726', NULL, 2, 4, '2013-11-22 10:13:40', NULL, '2013-11-22 10:19:25', NULL, '2013-11-22 10:22:15', NULL, 0, 4, NULL, '2013-11-22 10:13:40', NULL, NULL),
(381, 30, '032665101200', 0, '32665', '', '01200', NULL, 1, 4, '2013-11-22 10:14:31', NULL, '2013-11-22 11:02:11', NULL, '2013-11-22 11:02:23', NULL, 0, 4, NULL, '2013-11-22 10:14:31', NULL, NULL),
(382, 31, '032665103397', 0, '32665', '', '03397', NULL, 1, 4, '2013-11-22 10:15:55', NULL, '2013-11-22 11:09:47', NULL, '2013-11-22 11:11:35', NULL, 0, 4, NULL, '2013-11-22 10:15:55', NULL, NULL),
(383, 32, '032665202658', 0, '32665', '', '02658', NULL, 2, 4, '2013-11-22 10:49:59', NULL, '2013-11-22 11:02:51', NULL, '2013-11-22 11:03:57', NULL, 0, 4, NULL, '2013-11-22 10:49:59', NULL, NULL),
(384, 33, '032665103427', 0, '32665', '', '03427', NULL, 1, 4, '2013-11-22 10:58:44', NULL, '2013-11-22 11:07:05', NULL, '2013-11-22 11:08:31', NULL, 0, 4, NULL, '2013-11-22 10:58:44', NULL, NULL),
(385, 1, '032665100810', 0, '32665', '', '00810', NULL, 1, 4, '2013-11-25 07:10:34', NULL, NULL, NULL, '2013-11-25 07:44:47', NULL, 0, 4, NULL, '2013-11-25 07:10:34', NULL, NULL),
(386, 2, '032665105405', 0, '32665', '', '05405', NULL, 1, 4, '2013-11-25 07:25:14', NULL, '2013-11-25 07:51:07', NULL, '2013-11-25 07:52:13', NULL, 0, 4, NULL, '2013-11-25 07:25:14', NULL, NULL),
(387, 3, '032665103072', 0, '32665', '', '03072', NULL, 1, 4, '2013-11-25 07:31:37', NULL, '2013-11-25 08:07:14', NULL, '2013-11-25 08:11:24', NULL, 0, 4, NULL, '2013-11-25 07:31:37', NULL, NULL),
(388, 4, '032665105189', 0, '32665', '', '05189', NULL, 1, 4, '2013-11-25 07:34:49', NULL, '2013-11-25 08:18:01', NULL, '2013-11-25 08:19:07', NULL, 0, 4, NULL, '2013-11-25 07:34:49', NULL, NULL),
(389, 5, '032665104259', 0, '32665', '', '04259', NULL, 1, 4, '2013-11-25 07:42:21', NULL, '2013-11-25 08:26:42', NULL, '2013-11-25 08:33:46', NULL, 0, 4, NULL, '2013-11-25 07:42:21', NULL, NULL),
(390, 6, '032665104894', 0, '32665', '', '04894', NULL, 1, 4, '2013-11-25 07:45:15', NULL, '2013-11-25 07:57:45', NULL, '2013-11-25 07:58:54', NULL, 0, 4, NULL, '2013-11-25 07:45:15', NULL, NULL),
(391, 7, '032665101179', 0, '32665', '', '01179', NULL, 1, 4, '2013-11-25 07:46:54', NULL, '2013-11-25 08:37:01', NULL, '2013-11-25 08:39:37', NULL, 0, 4, NULL, '2013-11-25 07:46:54', NULL, NULL),
(392, 8, '032665104941', 0, '32665', '', '04941', NULL, 1, 4, '2013-11-25 07:47:01', NULL, '2013-11-25 08:40:10', NULL, '2013-11-25 08:42:05', NULL, 0, 4, NULL, '2013-11-25 07:47:01', NULL, NULL),
(393, 9, '032665103973', 0, '32665', '', '03973', NULL, 1, 4, '2013-11-25 07:58:04', NULL, '2013-11-25 08:43:41', NULL, '2013-11-25 08:52:00', NULL, 0, 4, NULL, '2013-11-25 07:58:04', NULL, NULL),
(394, 10, '032665101535', 0, '32665', '', '01535', NULL, 1, 4, '2013-11-25 08:19:41', NULL, '2013-11-25 08:52:07', NULL, '2013-11-25 08:54:56', NULL, 0, 4, NULL, '2013-11-25 08:19:41', NULL, NULL),
(395, 11, '032665100518', 0, '32665', '', '00518', NULL, 1, 4, '2013-11-25 09:04:15', NULL, '2013-11-25 09:07:25', NULL, '2013-11-25 09:11:50', NULL, 0, 4, NULL, '2013-11-25 09:04:15', NULL, NULL),
(396, 12, '032665205167', 0, '32665', '', '05167', NULL, 2, 4, '2013-11-25 09:04:21', NULL, '2013-11-25 09:06:37', NULL, '2013-11-25 09:07:59', NULL, 0, 4, NULL, '2013-11-25 09:04:21', NULL, NULL),
(397, 13, '032665100175', 0, '32665', '', '00175', NULL, 1, 4, '2013-11-25 09:04:32', NULL, '2013-11-25 09:18:04', NULL, '2013-11-25 09:22:04', NULL, 0, 4, NULL, '2013-11-25 09:04:32', NULL, NULL),
(398, 14, '032665200677', 0, '32665', '', '00677', NULL, 2, 4, '2013-11-25 09:20:34', NULL, '2013-11-25 09:24:05', NULL, '2013-11-25 09:24:48', NULL, 0, 4, NULL, '2013-11-25 09:20:34', NULL, NULL),
(399, 15, '032665101468', 0, '32665', '', '01468', NULL, 1, 4, '2013-11-25 09:24:41', NULL, '2013-11-25 09:33:18', NULL, '2013-11-25 09:33:53', NULL, 0, 4, NULL, '2013-11-25 09:24:41', NULL, NULL),
(400, 16, '032665100346', 0, '32665', '', '00346', NULL, 1, 4, '2013-11-25 09:24:46', NULL, '2013-11-25 09:36:54', NULL, '2013-11-25 09:37:36', NULL, 0, 4, NULL, '2013-11-25 09:24:46', NULL, NULL),
(401, 17, '032665103579', 0, '32665', '', '03579', NULL, 1, 4, '2013-11-25 09:24:47', NULL, NULL, NULL, '2013-11-25 09:39:30', NULL, 0, 4, NULL, '2013-11-25 09:24:47', NULL, NULL),
(402, 18, '032665202508', 0, '32665', '', '02508', NULL, 2, 4, '2013-11-25 09:28:01', NULL, NULL, NULL, '2013-11-25 09:43:18', NULL, 0, 4, NULL, '2013-11-25 09:28:01', NULL, NULL),
(403, 19, '032665100533', 0, '32665', '', '00533', NULL, 1, 4, '2013-11-25 09:38:44', NULL, '2013-11-25 10:07:05', NULL, '2013-11-25 10:10:15', NULL, 0, 4, NULL, '2013-11-25 09:38:44', NULL, NULL),
(404, 20, '032665204137', 0, '32665', '', '04137', NULL, 2, 4, '2013-11-25 09:41:15', NULL, '2013-11-25 09:43:22', NULL, '2013-11-25 09:45:40', NULL, 0, 4, NULL, '2013-11-25 09:41:15', NULL, NULL),
(405, 21, '032665104700', 0, '32665', '', '04700', NULL, 1, 4, '2013-11-25 09:42:00', NULL, '2013-11-25 10:14:35', NULL, '2013-11-25 10:15:09', NULL, 0, 4, NULL, '2013-11-25 09:42:00', NULL, NULL),
(406, 22, '032665202212', 0, '32665', '', '02212', NULL, 2, 4, '2013-11-25 09:44:38', NULL, '2013-11-25 09:45:44', NULL, '2013-11-25 09:45:53', NULL, 0, 4, NULL, '2013-11-25 09:44:38', NULL, NULL),
(407, 23, '032665101426', 0, '32665', '', '01426', NULL, 1, 4, '2013-11-25 09:49:05', NULL, '2013-11-25 10:15:19', NULL, '2013-11-25 10:16:19', NULL, 0, 4, NULL, '2013-11-25 09:49:05', NULL, NULL),
(408, 24, '032665104863', 0, '32665', '', '04863', NULL, 1, 4, '2013-11-25 09:52:16', NULL, '2013-11-25 10:26:40', NULL, '2013-11-25 10:27:44', NULL, 0, 4, NULL, '2013-11-25 09:52:16', NULL, NULL),
(409, 25, '032665102105', 0, '32665', '', '02105', NULL, 1, 4, '2013-11-25 10:21:36', NULL, '2013-11-25 10:28:26', NULL, '2013-11-25 10:31:04', NULL, 0, 4, NULL, '2013-11-25 10:21:36', NULL, NULL),
(410, 26, '032665202230', 0, '32665', '', '02230', NULL, 2, 4, '2013-11-25 10:25:54', NULL, '2013-11-25 10:31:25', NULL, '2013-11-25 10:31:44', NULL, 0, 4, NULL, '2013-11-25 10:25:54', NULL, NULL),
(411, 27, '032665203986', 0, '32665', '', '03986', NULL, 2, 4, '2013-11-25 10:42:03', NULL, '2013-11-25 10:46:09', NULL, '2013-11-25 10:47:55', NULL, 0, 4, NULL, '2013-11-25 10:42:03', NULL, NULL),
(412, 28, '032665201412', 0, '32665', '', '01412', NULL, 2, 4, '2013-11-25 11:00:23', NULL, '2013-11-25 11:01:54', NULL, '2013-11-25 11:02:05', NULL, 0, 4, NULL, '2013-11-25 11:00:23', NULL, NULL),
(413, 29, '032665200009', 0, '32665', '', '00009', NULL, 2, 4, '2013-11-25 11:03:16', NULL, '2013-11-25 11:09:06', NULL, '2013-11-25 11:11:23', NULL, 0, 4, NULL, '2013-11-25 11:03:16', NULL, NULL),
(414, 30, '032665202430', 0, '32665', '', '02430', NULL, 2, 4, '2013-11-25 11:03:38', NULL, '2013-11-25 11:13:31', NULL, '2013-11-25 11:14:04', NULL, 0, 4, NULL, '2013-11-25 11:03:38', NULL, NULL),
(415, 31, '032665203342', 0, '32665', '', '03342', NULL, 2, 4, '2013-11-25 11:17:07', NULL, '2013-11-25 11:24:43', NULL, '2013-11-25 11:25:22', NULL, 0, 4, NULL, '2013-11-25 11:17:07', NULL, NULL),
(416, 32, '032665200797', 0, '32665', '', '00797', NULL, 2, 4, '2013-11-25 11:22:09', NULL, '2013-11-25 11:27:00', NULL, '2013-11-25 11:27:31', NULL, 0, 4, NULL, '2013-11-25 11:22:09', NULL, NULL),
(417, 33, '032665105358', 0, '32665', '', '05358', NULL, 1, 4, '2013-11-25 11:23:08', NULL, '2013-11-25 11:39:37', NULL, '2013-11-25 11:41:34', NULL, 0, 4, NULL, '2013-11-25 11:23:08', NULL, NULL),
(418, 34, '032665201678', 0, '32665', '', '01678', NULL, 2, 4, '2013-11-25 11:23:22', NULL, '2013-11-25 11:36:15', NULL, '2013-11-25 11:36:32', NULL, 0, 4, NULL, '2013-11-25 11:23:22', NULL, NULL),
(419, 35, '032665103126', 0, '32665', '', '03126', NULL, 1, 4, '2013-11-25 11:26:21', NULL, NULL, NULL, '2013-11-25 11:46:36', NULL, 0, 4, NULL, '2013-11-25 11:26:21', NULL, NULL),
(420, 36, '032665102096', 0, '32665', '', '02096', NULL, 1, 4, '2013-11-25 11:30:00', NULL, '2013-11-25 11:42:06', NULL, '2013-11-25 11:45:54', NULL, 0, 4, NULL, '2013-11-25 11:30:00', NULL, NULL),
(421, 1, '032665202773', 0, '32665', '', '02773', NULL, 2, 4, '2013-11-26 07:12:18', NULL, '2013-11-26 07:12:20', NULL, '2013-11-26 07:12:33', NULL, 0, 4, NULL, '2013-11-26 07:12:18', NULL, NULL),
(422, 2, '032665200815', 0, '32665', '', '00815', NULL, 2, 4, '2013-11-26 07:15:36', NULL, NULL, NULL, '2013-11-26 07:18:45', NULL, 0, 4, NULL, '2013-11-26 07:15:36', NULL, NULL),
(423, 3, '032665103072', 0, '32665', '', '03072', NULL, 1, 4, '2013-11-26 07:20:29', NULL, '2013-11-26 07:25:53', NULL, '2013-11-26 07:30:15', NULL, 0, 4, NULL, '2013-11-26 07:20:29', NULL, NULL),
(424, 4, '032665100782', 0, '32665', '', '00782', NULL, 1, 4, '2013-11-26 07:47:00', NULL, '2013-11-26 08:14:11', NULL, '2013-11-26 08:18:22', NULL, 0, 4, NULL, '2013-11-26 07:47:00', NULL, NULL),
(425, 5, '032665203944', 0, '32665', '', '03944', NULL, 2, 4, '2013-11-26 07:47:36', NULL, '2013-11-26 08:03:46', NULL, '2013-11-26 08:05:17', NULL, 0, 4, NULL, '2013-11-26 07:47:36', NULL, NULL),
(426, 6, '032665105043', 0, '32665', '', '05043', NULL, 1, 4, '2013-11-26 07:53:36', NULL, '2013-11-26 08:20:50', NULL, NULL, NULL, 0, 4, NULL, '2013-11-26 07:53:36', NULL, NULL),
(427, 7, '032665103994', 0, '32665', '', '03994', NULL, 1, 4, '2013-11-26 07:57:00', NULL, '2013-11-26 08:27:07', NULL, '2013-11-26 08:33:31', NULL, 0, 4, NULL, '2013-11-26 07:57:00', NULL, NULL),
(428, 8, '032665200435', 0, '32665', '', '00435', NULL, 2, 4, '2013-11-26 08:00:28', NULL, '2013-11-26 08:05:26', NULL, '2013-11-26 08:05:37', NULL, 0, 4, NULL, '2013-11-26 08:00:28', NULL, NULL),
(429, 9, '032665105432', 0, '32665', '', '05432', NULL, 1, 4, '2013-11-26 08:08:06', NULL, '2013-11-26 08:36:33', NULL, '2013-11-26 08:42:00', NULL, 0, 4, NULL, '2013-11-26 08:08:06', NULL, NULL),
(430, 10, '032665102877', 0, '32665', '', '02877', NULL, 1, 4, '2013-11-26 08:29:03', NULL, '2013-11-26 08:43:24', NULL, '2013-11-26 08:44:15', NULL, 0, 4, NULL, '2013-11-26 08:29:03', NULL, NULL),
(431, 11, '032665204549', 0, '32665', '', '04549', NULL, 2, 4, '2013-11-26 08:39:48', NULL, '2013-11-26 08:48:25', NULL, '2013-11-26 08:48:52', NULL, 0, 4, NULL, '2013-11-26 08:39:48', NULL, NULL),
(432, 12, '032665102524', 0, '32665', '', '02524', NULL, 1, 4, '2013-11-26 08:48:53', NULL, '2013-11-26 09:04:09', NULL, '2013-11-26 09:14:57', NULL, 0, 4, NULL, '2013-11-26 08:48:53', NULL, NULL),
(433, 13, '032665202773', 0, '32665', '', '02773', NULL, 2, 4, '2013-11-26 08:50:42', NULL, '2013-11-26 08:51:36', NULL, '2013-11-26 08:51:40', NULL, 0, 4, NULL, '2013-11-26 08:50:42', NULL, NULL),
(434, 14, '032665200987', 0, '32665', '', '00987', NULL, 2, 4, '2013-11-26 09:01:30', NULL, '2013-11-26 09:06:37', NULL, '2013-11-26 09:07:10', NULL, 0, 4, NULL, '2013-11-26 09:01:30', NULL, NULL),
(435, 15, '032665100322', 0, '32665', '', '00322', NULL, 1, 4, '2013-11-26 09:05:29', NULL, '2013-11-26 09:40:16', NULL, '2013-11-26 09:44:12', NULL, 0, 4, NULL, '2013-11-26 09:05:29', NULL, NULL),
(436, 16, '032665205101', 0, '32665', '', '05101', NULL, 2, 4, '2013-11-26 09:26:00', NULL, '2013-11-26 09:40:38', NULL, '2013-11-26 09:42:20', NULL, 0, 4, NULL, '2013-11-26 09:26:00', NULL, NULL),
(437, 17, '032665201542', 0, '32665', '', '01542', NULL, 2, 4, '2013-11-26 09:32:27', NULL, '2013-11-26 09:42:29', NULL, '2013-11-26 09:42:45', NULL, 0, 4, NULL, '2013-11-26 09:32:27', NULL, NULL),
(438, 18, '032665101862', 0, '32665', '', '01862', NULL, 1, 4, '2013-11-26 09:44:43', NULL, '2013-11-26 09:46:56', NULL, '2013-11-26 11:46:29', NULL, 0, 4, NULL, '2013-11-26 09:44:43', NULL, NULL),
(439, 19, '032665102180', 0, '32665', '', '02180', NULL, 1, 4, '2013-11-26 09:46:14', NULL, '2013-11-26 09:53:20', NULL, '2013-11-26 09:53:56', NULL, 0, 4, NULL, '2013-11-26 09:46:14', NULL, NULL),
(440, 20, '032665104473', 0, '32665', '', '04473', NULL, 1, 4, '2013-11-26 09:47:29', NULL, '2013-11-26 09:59:38', NULL, '2013-11-26 10:01:32', NULL, 0, 4, NULL, '2013-11-26 09:47:29', NULL, NULL),
(441, 21, '032665202081', 0, '32665', '', '02081', NULL, 2, 4, '2013-11-26 09:47:43', NULL, '2013-11-26 09:49:27', NULL, '2013-11-26 09:50:38', NULL, 0, 4, NULL, '2013-11-26 09:47:43', NULL, NULL),
(442, 22, '032665101200', 0, '32665', '', '01200', NULL, 1, 4, '2013-11-26 10:01:51', NULL, '2013-11-26 10:09:32', NULL, '2013-11-26 10:11:17', NULL, 0, 4, NULL, '2013-11-26 10:01:51', NULL, NULL),
(443, 23, '032665103427', 0, '32665', '', '03427', NULL, 1, 4, '2013-11-26 10:03:26', NULL, '2013-11-26 10:03:38', NULL, '2013-11-26 10:07:13', NULL, 0, 4, NULL, '2013-11-26 10:03:26', NULL, NULL),
(444, 24, '032665100184', 0, '32665', '', '00184', NULL, 1, 4, '2013-11-26 10:13:03', NULL, '2013-11-26 10:24:59', NULL, '2013-11-26 10:25:09', NULL, 0, 4, NULL, '2013-11-26 10:13:03', NULL, NULL),
(445, 25, '032665102456', 0, '32665', '', '02456', NULL, 1, 4, '2013-11-26 10:13:07', NULL, '2013-11-26 10:24:00', NULL, '2013-11-26 10:24:12', NULL, 0, 4, NULL, '2013-11-26 10:13:07', NULL, NULL),
(446, 26, '032665200683', 0, '32665', '', '00683', NULL, 2, 4, '2013-11-26 10:16:31', NULL, '2013-11-26 10:18:27', NULL, '2013-11-26 10:19:51', NULL, 0, 4, NULL, '2013-11-26 10:16:31', NULL, NULL),
(447, 27, '032665103397', 0, '32665', '', '03397', NULL, 1, 4, '2013-11-26 10:20:02', NULL, '2013-11-26 10:24:16', NULL, '2013-11-26 10:31:17', NULL, 0, 4, NULL, '2013-11-26 10:20:02', NULL, NULL),
(448, 28, '032665104098', 0, '32665', '', '04098', NULL, 1, 4, '2013-11-26 10:28:29', NULL, '2013-11-26 10:50:00', NULL, '2013-11-26 10:53:45', NULL, 0, 4, NULL, '2013-11-26 10:28:29', NULL, NULL),
(449, 29, '032665201870', 0, '32665', '', '01870', NULL, 2, 4, '2013-11-26 10:35:44', NULL, '2013-11-26 10:43:01', NULL, '2013-11-26 10:43:14', NULL, 0, 4, NULL, '2013-11-26 10:35:44', NULL, NULL),
(450, 30, '032665200638', 0, '32665', '', '00638', NULL, 2, 4, '2013-11-26 10:51:55', NULL, '2013-11-26 10:52:48', NULL, '2013-11-26 10:53:06', NULL, 0, 4, NULL, '2013-11-26 10:51:55', NULL, NULL),
(451, 31, '032665104303', 0, '32665', '', '04303', NULL, 1, 4, '2013-11-26 11:03:50', NULL, '2013-11-26 11:08:39', NULL, '2013-11-26 11:13:43', NULL, 0, 4, NULL, '2013-11-26 11:03:50', NULL, NULL),
(452, 32, '032665201862', 0, '32665', '', '01862', NULL, 2, 4, '2013-11-26 11:30:25', NULL, NULL, NULL, '2013-11-26 11:46:29', NULL, 0, 4, NULL, '2013-11-26 11:30:25', NULL, NULL),
(453, 1, '032665200825', 0, '32665', '', '00825', NULL, 2, 1, '2013-11-27 12:26:56', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 12:26:56', NULL, NULL),
(454, 2, '032665105236', 0, '32665', '', '05236', NULL, 1, 1, '2013-11-27 12:34:40', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 12:34:40', NULL, NULL),
(455, 3, '032665202090', 0, '32665', '', '02090', NULL, 2, 1, '2013-11-27 12:39:50', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 12:39:50', NULL, NULL),
(456, 4, '032665202087', 0, '32665', '', '02087', NULL, 2, 1, '2013-11-27 12:39:59', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 12:39:59', NULL, NULL),
(457, 5, '032665202932', 0, '32665', '', '02932', NULL, 2, 1, '2013-11-27 12:43:53', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 12:43:53', NULL, NULL),
(458, 6, '032665104732', 0, '32665', '', '04732', NULL, 1, 1, '2013-11-27 12:48:20', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 12:48:20', NULL, NULL),
(459, 7, '032665201502', 0, '32665', '', '01502', NULL, 2, 1, '2013-11-27 12:49:45', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 12:49:45', NULL, NULL),
(460, 8, '032665101956', 0, '32665', '', '01956', NULL, 1, 1, '2013-11-27 12:54:16', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 12:54:16', NULL, NULL),
(461, 9, '032665101776', 0, '32665', '', '01776', NULL, 1, 1, '2013-11-27 12:54:51', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 12:54:51', NULL, NULL),
(462, 10, '032665101191', 0, '32665', '', '01191', NULL, 1, 1, '2013-11-27 13:04:38', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:04:38', NULL, NULL),
(463, 11, '032665101317', 0, '32665', '', '01317', NULL, 1, 1, '2013-11-27 13:14:08', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:14:08', NULL, NULL),
(464, 12, '032665105406', 0, '32665', '', '05406', NULL, 1, 1, '2013-11-27 13:22:51', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:22:51', NULL, NULL),
(465, 13, '032665102998', 0, '32665', '', '02998', NULL, 1, 1, '2013-11-27 13:24:35', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:24:35', NULL, NULL),
(466, 14, '032665201459', 0, '32665', '', '01459', NULL, 2, 1, '2013-11-27 13:25:08', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:25:08', NULL, NULL),
(467, 15, '032665103950', 0, '32665', '', '03950', NULL, 1, 1, '2013-11-27 13:25:56', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:25:56', NULL, NULL),
(468, 16, '032665105314', 0, '32665', '', '05314', NULL, 1, 1, '2013-11-27 13:31:55', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:31:55', NULL, NULL),
(469, 17, '032665202502', 0, '32665', '', '02502', NULL, 2, 1, '2013-11-27 13:33:24', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:33:24', NULL, NULL),
(470, 18, '032665102816', 0, '32665', '', '02816', NULL, 1, 1, '2013-11-27 13:40:54', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:40:54', NULL, NULL),
(471, 19, '032665105093', 0, '32665', '', '05093', NULL, 1, 1, '2013-11-27 13:47:13', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:47:13', NULL, NULL),
(472, 20, '032665200540', 0, '32665', '', '00540', NULL, 2, 1, '2013-11-27 13:48:28', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:48:28', NULL, NULL),
(473, 21, '032665202957', 0, '32665', '', '02957', NULL, 2, 1, '2013-11-27 13:49:58', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:49:58', NULL, NULL),
(474, 22, '032665105043', 0, '32665', '', '05043', NULL, 1, 1, '2013-11-27 13:56:19', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 13:56:19', NULL, NULL),
(475, 23, '032665205092', 0, '32665', '', '05092', NULL, 2, 1, '2013-11-27 14:01:11', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 14:01:11', NULL, NULL),
(476, 24, '032665103152', 0, '32665', '', '03152', NULL, 1, 1, '2013-11-27 14:07:18', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 14:07:18', NULL, NULL),
(477, 25, '032665202524', 0, '32665', '', '02524', NULL, 2, 1, '2013-11-27 14:19:19', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 14:19:19', NULL, NULL),
(478, 26, '032665100175', 0, '32665', '', '00175', NULL, 1, 1, '2013-11-27 14:34:33', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 14:34:33', NULL, NULL),
(479, 27, '032665202616', 0, '32665', '', '02616', NULL, 2, 1, '2013-11-27 14:40:27', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 14:40:27', NULL, NULL),
(480, 28, '032665202605', 0, '32665', '', '02605', NULL, 2, 1, '2013-11-27 14:40:31', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 14:40:31', NULL, NULL),
(481, 29, '032665100495', 0, '32665', '', '00495', NULL, 1, 1, '2013-11-27 14:52:56', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 14:52:56', NULL, NULL),
(482, 30, '032665104948', 0, '32665', '', '04948', NULL, 1, 1, '2013-11-27 14:53:50', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 14:53:50', NULL, NULL),
(483, 31, '032665200288', 0, '32665', '', '00288', NULL, 2, 1, '2013-11-27 15:17:51', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 15:17:51', NULL, NULL),
(484, 32, '032665201109', 0, '32665', '', '01109', NULL, 2, 1, '2013-11-27 15:19:37', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 15:19:37', NULL, NULL),
(485, 33, '032665202430', 0, '32665', '', '02430', NULL, 2, 1, '2013-11-27 15:28:40', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 15:28:40', NULL, NULL),
(486, 34, '032665105159', 0, '32665', '', '05159', NULL, 1, 1, '2013-11-27 15:38:35', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 15:38:35', NULL, NULL),
(487, 35, '032665103323', 0, '32665', '', '03323', NULL, 1, 1, '2013-11-27 15:43:44', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 15:43:44', NULL, NULL),
(488, 36, '032665200232', 0, '32665', '', '00232', NULL, 2, 1, '2013-11-27 15:47:27', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 15:47:27', NULL, NULL),
(489, 37, '032665103428', 0, '32665', '', '03428', NULL, 1, 1, '2013-11-27 15:50:12', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 15:50:12', NULL, NULL),
(490, 38, '032665103745', 0, '32665', '', '03745', NULL, 1, 1, '2013-11-27 16:00:14', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 16:00:14', NULL, NULL),
(491, 39, '032665200499', 0, '32665', '', '00499', NULL, 2, 1, '2013-11-27 16:17:52', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 16:17:52', NULL, NULL),
(492, 40, '032665200498', 0, '32665', '', '00498', NULL, 2, 1, '2013-11-27 16:18:05', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 16:18:05', NULL, NULL),
(493, 41, '032665102227', 0, '32665', '', '02227', NULL, 1, 1, '2013-11-27 16:22:09', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 16:22:09', NULL, NULL),
(494, 42, '032665204577', 0, '32665', '', '04577', NULL, 2, 1, '2013-11-27 16:22:49', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-27 16:22:49', NULL, NULL),
(495, 43, '032665200002', 0, '32665', '', '00002', NULL, 2, 1, '2013-11-28 07:29:01', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 07:29:01', NULL, NULL),
(496, 44, '032665200779', 0, '32665', '', '00779', NULL, 2, 1, '2013-11-28 07:29:04', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 07:29:04', NULL, NULL),
(497, 45, '032665200777', 0, '32665', '', '00777', NULL, 2, 1, '2013-11-28 07:29:06', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 07:29:06', NULL, NULL),
(498, 46, '032665102979', 0, '32665', '', '02979', NULL, 1, 1, '2013-11-28 07:29:10', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 07:29:10', NULL, NULL),
(499, 47, '032665202748', 0, '32665', '', '02748', NULL, 2, 1, '2013-11-28 07:29:24', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 07:29:24', NULL, NULL),
(500, 48, '032665104736', 0, '32665', '', '04736', NULL, 1, 1, '2013-11-28 08:39:36', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 08:39:36', NULL, NULL),
(501, 49, '032665100626', 0, '32665', '', '00626', NULL, 1, 1, '2013-11-28 09:05:24', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 09:05:24', NULL, NULL),
(502, 50, '032665200285', 0, '32665', '', '00285', NULL, 2, 1, '2013-11-28 09:19:18', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 09:19:18', NULL, NULL),
(503, 51, '032665200533', 0, '32665', '', '00533', NULL, 2, 1, '2013-11-28 09:21:13', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 09:21:13', NULL, NULL),
(504, 52, '032665100571', 0, '32665', '', '00571', NULL, 1, 1, '2013-11-28 09:21:14', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 09:21:14', NULL, NULL),
(505, 53, '032665101887', 0, '32665', '', '01887', NULL, 1, 1, '2013-11-28 09:23:13', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 09:23:13', NULL, NULL),
(506, 54, '032665201454', 0, '32665', '', '01454', NULL, 2, 1, '2013-11-28 09:32:45', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 09:32:45', NULL, NULL),
(507, 55, '032665100005', 0, '32665', '', '00005', NULL, 1, 1, '2013-11-28 09:37:23', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 09:37:23', NULL, NULL),
(508, 56, '032665103060', 0, '32665', '', '03060', NULL, 1, 1, '2013-11-28 09:44:13', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 09:44:13', NULL, NULL),
(509, 57, '032665105432', 0, '32665', '', '05432', NULL, 1, 1, '2013-11-28 09:56:41', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 09:56:41', NULL, NULL),
(510, 58, '032665104809', 0, '32665', '', '04809', NULL, 1, 1, '2013-11-28 10:13:09', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 10:13:09', NULL, NULL),
(511, 59, '032665100075', 0, '32665', '', '00075', NULL, 1, 1, '2013-11-28 10:25:32', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 10:25:32', NULL, NULL),
(512, 60, '032665203314', 0, '32665', '', '03314', NULL, 2, 1, '2013-11-28 10:42:15', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 10:42:15', NULL, NULL),
(513, 61, '032665200124', 0, '32665', '', '00124', NULL, 2, 1, '2013-11-28 10:51:58', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 10:51:58', NULL, NULL),
(514, 62, '032665201949', 0, '32665', '', '01949', NULL, 2, 1, '2013-11-28 10:57:11', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 10:57:11', NULL, NULL),
(515, 63, '032665200446', 0, '32665', '', '00446', NULL, 2, 1, '2013-11-28 10:58:38', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 10:58:38', NULL, NULL),
(516, 64, '032665103131', 0, '32665', '', '03131', NULL, 1, 1, '2013-11-28 11:03:59', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 11:03:59', NULL, NULL),
(517, 65, '032665103132', 0, '32665', '', '03132', NULL, 1, 1, '2013-11-28 11:04:01', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 11:04:01', NULL, NULL),
(518, 66, '032665102326', 0, '32665', '', '02326', NULL, 1, 1, '2013-11-28 11:11:13', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 11:11:13', NULL, NULL),
(519, 67, '032665100812', 0, '32665', '', '00812', NULL, 1, 1, '2013-11-28 11:16:10', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 11:16:10', NULL, NULL),
(520, 68, '032665101990', 0, '32665', '', '01990', NULL, 1, 1, '2013-11-28 11:16:41', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 11:16:41', NULL, NULL),
(521, 69, '032665201779', 0, '32665', '', '01779', NULL, 2, 1, '2013-11-28 11:28:25', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 11:28:25', NULL, NULL),
(522, 70, '032665204575', 0, '32665', '', '04575', NULL, 2, 1, '2013-11-28 11:52:49', NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, '2013-11-28 11:52:49', NULL, NULL);

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
(1, 4, 4, '0000-00-00', '0000-00-00', '', 1, 4, NULL, NULL, NULL, NULL);

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
(4, '32665', 'Dr. Páczi Antal', '2213', 'Monorierdő', 'Rózsa u. 5.', '06209349324', NULL, 1, '0043266500', 30, 20, 20, 1, 1, 4, 2, '2013-11-11 12:15:43', 7, '2013-12-03 12:29:25'),
(5, '45908', 'Dr. Kerényi Attila', '4461', 'Nyírtelek', 'Arany J. u. 40.', '06309452232', NULL, 1, '005446100', 30, 20, 20, NULL, 1, 5, 2, '2013-11-11 12:17:53', NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_advert`
--

INSERT INTO `nocore_doctor_advert` (`id`, `nocore_doctorID`, `description`, `name`, `sequenceId`, `advertFileName`, `textValue`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`, `lastvisit`) VALUES
(1, 4, NULL, '1', 1, 't1_1.JPG', '1', 1, 4, 7, '2013-11-11 15:45:38', NULL, NULL, NULL),
(2, 4, NULL, '2', 2, 't2_2.JPG', '2', 1, 4, 7, '2013-11-11 15:46:08', NULL, NULL, NULL),
(3, 4, NULL, '3', 3, 't3_3.JPG', '3', 1, 4, 7, '2013-11-11 15:46:32', NULL, NULL, NULL),
(4, 4, NULL, '4', 4, 't4_4.JPG', '4', 1, 4, 7, '2013-11-11 15:46:55', NULL, NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_order`
--

INSERT INTO `nocore_doctor_order` (`id`, `nocore_doctorID`, `nocore_doctor_order_dayID`, `startTime`, `stopTime`, `barcodeStart`, `barcodeStop`, `doctorIs`, `nurseIs`, `nocore_doctor_order_typeID`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 4, '1Mon', '07:00:00', '11:30:00', 30, 30, 1, 1, 1, 1, 4, 3, '2013-11-11 14:55:04', NULL, NULL),
(2, 4, '2Mon', '07:00:00', '18:30:00', 30, 30, 1, 1, 1, 1, 4, 3, '2013-11-11 14:55:53', 3, '2013-11-11 16:13:33'),
(3, 4, '1Tue', '07:00:00', '11:30:00', 30, 30, 1, 1, 1, 1, 4, 3, '2013-11-11 14:56:54', NULL, NULL),
(4, 4, '2Tue', '07:00:00', '11:30:00', 30, 30, 1, 1, 1, 1, 4, 3, '2013-11-11 14:57:50', NULL, NULL),
(5, 4, '1Wed', '12:00:00', '17:00:00', 30, 30, 1, 1, 1, 1, 4, 3, '2013-11-11 14:58:57', NULL, NULL),
(6, 4, '2Wed', '12:00:00', '17:00:00', 30, 30, 1, 1, 1, 1, 4, 3, '2013-11-11 14:59:36', NULL, NULL),
(7, 4, '1Thu', '07:00:00', '13:30:00', 30, 30, 1, 1, 1, 1, 4, 3, '2013-11-11 15:00:53', NULL, NULL),
(8, 4, '2Thu', '07:00:00', '13:30:00', 30, 30, 1, 1, 1, 1, 4, 3, '2013-11-11 15:01:40', NULL, NULL),
(9, 4, '1Fri', '07:00:00', '11:30:00', 30, 30, 1, 1, 1, 1, 4, 3, '2013-11-11 15:02:48', NULL, NULL),
(10, 4, '1Thu', '07:30:00', '12:00:00', 30, 30, 1, 1, 1, 1, 4, 3, '2013-11-11 15:03:43', 7, '2013-11-18 07:02:45');

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
