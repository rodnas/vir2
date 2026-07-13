-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2013. dec. 06. 12:40
-- Szerver verzió: 5.1.41
-- PHP verzió: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `vir2_003`
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `core_advert_campaign`
--

INSERT INTO `core_advert_campaign` (`id`, `core_advert_advertiserID`, `core_advert_zoneID`, `name`, `activateWhen`, `deactivateWhen`, `playMaxNum`, `playCounter`, `clickMaxNum`, `clickCounter`, `priceMax`, `priceActual`, `percentVAT`, `description`, `active`, `nocore_doctorID`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, NULL, 1, 'karácsony', '2013-11-06 00:00:00', '2013-12-24 00:00:00', 100000, NULL, 100000, NULL, 1000000, NULL, NULL, NULL, 1, NULL, 0, 2, '2013-09-24 13:04:59', 2, '2013-09-24 13:09:39');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- A tábla adatainak kiíratása `core_advert_group`
--

INSERT INTO `core_advert_group` (`id`, `core_advert_advertiserID`, `name`, `description`, `active`, `nocore_doctorID`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, NULL, 'Fő csoport', NULL, 1, NULL, 0, 2, '2013-09-24 12:52:50', NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- A tábla adatainak kiíratása `core_calendar`
--

INSERT INTO `core_calendar` (`id`, `startDate`, `startHour`, `startMin`, `stopHour`, `stopMin`, `nocore_doctorID`, `nocore_patientID`, `core_calendar_typeID`, `description`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, '2013-10-15', '10', '00', '10', '10', 1, 1, NULL, 'blabla', 1, 1, 2, '2013-10-15 13:19:36', 2, '2013-10-17 08:37:26'),
(2, '2013-10-16', NULL, NULL, NULL, NULL, 1, 1, NULL, 'blabla', 1, 1, 2, '2013-10-15 13:19:36', 2, '2013-10-18 08:18:54');

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
(1, 'frontend', NULL, 'core_localserverID', '3', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL),
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
(75, 'core_calendardiary', 'Naptár', 'core_calendardiary', 8, 0, NULL, 1, 2, '2013-10-09 12:07:28', 2, '2013-10-14 16:26:39'),
(76, 'core_calendarmonth', 'Havi', 'core_calendarmonth', 8, 0, NULL, 1, 2, '2013-10-14 16:27:16', NULL, NULL),
(77, 'core_calendarweek', 'Heti', 'core_calendarweek', 8, 0, NULL, 1, 2, '2013-10-14 16:27:40', NULL, NULL),
(78, 'core_calendarday', 'Napi', 'core_calendarday', 8, 0, NULL, 1, 2, '2013-10-14 16:27:57', NULL, NULL),
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
(90, 2, 76, 15, 0, 1, 2, '2013-10-14 16:28:34', NULL, NULL),
(91, 2, 77, 15, 0, 1, 2, '2013-10-14 16:29:03', NULL, NULL),
(92, 2, 78, 15, 0, 1, 2, '2013-10-14 16:29:34', NULL, NULL),
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- A tábla adatainak kiíratása `core_localserver`
--

INSERT INTO `core_localserver` (`id`, `name`, `description`, `active`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(3, '003BIATORBA201310312051HU', NULL, 1, 3, '2013-10-31 09:29:46', NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- A tábla adatainak kiíratása `core_users`
--

INSERT INTO `core_users` (`id`, `core_userstitleID`, `surname`, `forename`, `nickname`, `password`, `email`, `core_localserverID`, `active`, `description`, `lastLoginWhen`, `lastLogoutWhen`, `activationCode`, `regmailWhen`, `activationWhen`, `core_groupsID`, `pictureURL`, `newsletter`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`, `isReadWhen`, `isReadUserID`) VALUES
(1, NULL, NULL, NULL, 'Guest', '', '', NULL, 1, NULL, NULL, '2013-10-31 10:20:20', NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, 2, '2012-01-24 11:06:15', '2006-03-28 23:38:24', 2),
(2, NULL, 'Szabó', 'Sándor', 'SzSanyi', 'phoenix', 'rodnas@uw.hu', NULL, 1, NULL, '2013-09-02 13:09:13', '2013-10-28 12:19:12', NULL, NULL, NULL, 2, NULL, 0, NULL, '2005-02-19 09:00:00', 2, '2013-10-02 10:30:25', '2009-06-03 09:01:09', 2),
(3, NULL, 'Varga', 'Tamás', 'tomi', 'tomi', 'varga.tamas@dericom.hu', NULL, 1, NULL, '2013-08-30 09:55:20', '2013-10-31 10:20:19', NULL, NULL, NULL, 2, NULL, 0, 2, '2013-08-05 11:01:17', NULL, NULL, '2013-08-05 11:01:17', 2),
(5, 1, 'Koncz', 'Erika', 'koncz', 'koncz', 'tamas.varga@deicom.hu', 3, 1, NULL, NULL, '2013-10-31 09:50:59', NULL, NULL, NULL, 5, NULL, 0, 3, '2013-10-31 09:31:00', 3, '2013-10-31 09:44:59', '2013-10-31 09:31:00', 3),
(6, 1, 'Szeszler', 'Györgyi', 'szeszler', 'szeszler', 'info@dericom.hu', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 0, 3, '2013-10-31 09:34:17', 3, '2013-10-31 09:44:51', '2013-10-31 09:34:17', 3);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `core_users_config`
--


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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=63 ;

--
-- A tábla adatainak kiíratása `nocore_barcode`
--

INSERT INTO `nocore_barcode` (`id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, '3550711752', 0, '35507', '', '1752', NULL, 1, 4, '2013-12-06 07:42:09', NULL, NULL, NULL, '2013-12-06 08:34:21', NULL, 0, 3, NULL, '2013-12-06 07:42:09', NULL, NULL),
(2, '3550721324', 0, '35507', '', '1324', NULL, 2, 4, '2013-12-06 07:45:56', NULL, '2013-12-06 08:18:48', NULL, '2013-12-06 08:22:13', NULL, 0, 3, NULL, '2013-12-06 07:45:56', NULL, NULL),
(3, '5323722485', 0, '53237', '', '2485', NULL, 2, 4, '2013-12-06 07:50:24', NULL, '2013-12-06 08:05:10', NULL, '2013-12-06 08:05:25', NULL, 0, 3, NULL, '2013-12-06 07:50:24', NULL, NULL),
(4, '5323713289', 0, '53237', '', '3289', NULL, 1, 4, '2013-12-06 07:53:32', NULL, '2013-12-06 08:34:58', NULL, '2013-12-06 08:36:20', NULL, 0, 3, NULL, '2013-12-06 07:53:32', NULL, NULL),
(5, '3550720752', 0, '35507', '', '0752', NULL, 2, 4, '2013-12-06 07:54:43', NULL, '2013-12-06 07:57:41', NULL, NULL, NULL, 1, 3, NULL, '2013-12-06 07:54:43', NULL, NULL),
(6, '3550720119', 0, '35507', '', '0119', NULL, 2, 4, '2013-12-06 07:57:27', NULL, NULL, NULL, '2013-12-06 08:38:52', NULL, 0, 3, NULL, '2013-12-06 07:57:27', NULL, NULL),
(7, '5323720441', 0, '53237', '', '0441', NULL, 2, 4, '2013-12-06 08:05:48', NULL, '2013-12-06 08:12:36', NULL, '2013-12-06 08:12:51', NULL, 0, 3, NULL, '2013-12-06 08:05:48', NULL, NULL),
(8, '5323724063', 0, '53237', '', '4063', NULL, 2, 4, '2013-12-06 08:06:32', NULL, '2013-12-06 08:14:25', NULL, '2013-12-06 08:16:12', NULL, 0, 3, NULL, '2013-12-06 08:06:32', NULL, NULL),
(9, '35507104071', 0, '35507', '', '04071', NULL, 1, 4, '2013-12-06 08:07:11', NULL, '2013-12-06 08:38:58', NULL, '2013-12-06 08:41:18', NULL, 0, 3, NULL, '2013-12-06 08:07:11', NULL, NULL),
(10, '3550710219', 0, '35507', '', '0219', NULL, 1, 4, '2013-12-06 08:15:22', NULL, NULL, NULL, '2013-12-06 08:34:24', NULL, 0, 3, NULL, '2013-12-06 08:15:22', NULL, NULL),
(11, '5323714092', 0, '53237', '', '4092', NULL, 1, 4, '2013-12-06 08:17:23', NULL, '2013-12-06 08:30:46', NULL, '2013-12-06 08:32:29', NULL, 0, 3, NULL, '2013-12-06 08:17:23', NULL, NULL),
(12, '3550721536', 0, '35507', '', '1536', NULL, 2, 4, '2013-12-06 08:21:04', NULL, NULL, NULL, '2013-12-06 08:38:49', NULL, 0, 3, NULL, '2013-12-06 08:21:04', NULL, NULL),
(13, '3550721962', 0, '35507', '', '1962', NULL, 2, 4, '2013-12-06 08:25:54', NULL, NULL, NULL, '2013-12-06 08:38:47', NULL, 0, 3, NULL, '2013-12-06 08:25:54', NULL, NULL),
(14, '3550712403', 0, '35507', '', '2403', NULL, 1, 4, '2013-12-06 08:26:38', NULL, NULL, NULL, '2013-12-06 08:34:26', NULL, 0, 3, NULL, '2013-12-06 08:26:38', NULL, NULL),
(15, '5323721333', 0, '53237', '', '1333', NULL, 2, 4, '2013-12-06 08:27:58', NULL, '2013-12-06 08:32:34', NULL, '2013-12-06 08:33:42', NULL, 0, 3, NULL, '2013-12-06 08:27:58', NULL, NULL),
(16, '5323721149', 0, '53237', '', '1149', NULL, 2, 4, '2013-12-06 08:30:31', NULL, '2013-12-06 08:38:13', NULL, '2013-12-06 08:38:57', NULL, 0, 3, NULL, '2013-12-06 08:30:31', NULL, NULL),
(17, '5323710598', 0, '53237', '', '0598', NULL, 1, 4, '2013-12-06 08:32:13', NULL, '2013-12-06 08:45:31', NULL, '2013-12-06 08:45:39', NULL, 0, 3, NULL, '2013-12-06 08:32:13', NULL, NULL),
(18, '5323712952', 0, '53237', '', '2952', NULL, 1, 4, '2013-12-06 08:41:22', NULL, '2013-12-06 08:58:09', NULL, '2013-12-06 09:00:07', NULL, 0, 3, NULL, '2013-12-06 08:41:22', NULL, NULL),
(19, '5323710927', 0, '53237', '', '0927', NULL, 1, 4, '2013-12-06 08:42:39', NULL, '2013-12-06 09:00:58', NULL, '2013-12-06 09:03:13', NULL, 0, 3, NULL, '2013-12-06 08:42:39', NULL, NULL),
(20, '3550723896', 0, '35507', '', '3896', NULL, 2, 4, '2013-12-06 08:54:38', NULL, '2013-12-06 08:59:36', NULL, '2013-12-06 09:02:22', NULL, 0, 3, NULL, '2013-12-06 08:54:38', NULL, NULL),
(21, '3550723904', 0, '35507', '', '3904', NULL, 2, 4, '2013-12-06 08:58:12', NULL, '2013-12-06 09:03:50', NULL, '2013-12-06 09:04:00', NULL, 0, 3, NULL, '2013-12-06 08:58:12', NULL, NULL),
(22, '5323721255', 0, '53237', '', '1255', NULL, 2, 4, '2013-12-06 08:59:27', NULL, '2013-12-06 09:13:08', NULL, '2013-12-06 09:13:14', NULL, 0, 3, NULL, '2013-12-06 08:59:27', NULL, NULL),
(23, '5323721237', 0, '53237', '', '1237', NULL, 2, 4, '2013-12-06 08:59:44', NULL, '2013-12-06 09:13:51', NULL, '2013-12-06 09:14:09', NULL, 0, 3, NULL, '2013-12-06 08:59:44', NULL, NULL),
(24, '35507202890', 0, '35507', '', '02890', NULL, 2, 4, '2013-12-06 09:00:12', NULL, '2013-12-06 09:07:09', NULL, '2013-12-06 09:07:13', NULL, 0, 3, NULL, '2013-12-06 09:00:12', NULL, NULL),
(25, '3550720893', 0, '35507', '', '0893', NULL, 2, 4, '2013-12-06 09:04:13', NULL, '2013-12-06 09:14:11', NULL, '2013-12-06 09:14:25', NULL, 0, 3, NULL, '2013-12-06 09:04:13', NULL, NULL),
(26, '3550723217', 0, '35507', '', '3217', NULL, 2, 4, '2013-12-06 09:04:18', NULL, '2013-12-06 09:15:59', NULL, '2013-12-06 09:16:19', NULL, 0, 3, NULL, '2013-12-06 09:04:18', NULL, NULL),
(27, '35507204009', 0, '35507', '', '04009', NULL, 2, 4, '2013-12-06 09:04:53', NULL, '2013-12-06 09:12:19', NULL, '2013-12-06 09:12:26', NULL, 0, 3, NULL, '2013-12-06 09:04:53', NULL, NULL),
(28, '3550723741', 0, '35507', '', '3741', NULL, 2, 4, '2013-12-06 09:09:01', NULL, '2013-12-06 09:16:34', NULL, '2013-12-06 09:16:45', NULL, 0, 3, NULL, '2013-12-06 09:09:01', NULL, NULL),
(29, '5323714049', 0, '53237', '', '4049', NULL, 1, 4, '2013-12-06 09:09:09', NULL, '2013-12-06 09:28:54', NULL, '2013-12-06 09:29:03', NULL, 0, 3, NULL, '2013-12-06 09:09:09', NULL, NULL),
(30, '3550720603', 0, '35507', '', '0603', NULL, 2, 4, '2013-12-06 09:14:21', NULL, '2013-12-06 09:20:36', NULL, '2013-12-06 09:20:50', NULL, 0, 3, NULL, '2013-12-06 09:14:21', NULL, NULL),
(31, '5323711716', 0, '53237', '', '1716', NULL, 1, 4, '2013-12-06 09:21:47', NULL, '2013-12-06 09:25:33', NULL, '2013-12-06 09:28:38', NULL, 0, 3, NULL, '2013-12-06 09:21:47', NULL, NULL),
(32, '5323723629', 0, '53237', '', '3629', NULL, 2, 4, '2013-12-06 09:26:40', NULL, '2013-12-06 09:32:00', NULL, '2013-12-06 09:33:19', NULL, 0, 3, NULL, '2013-12-06 09:26:40', NULL, NULL),
(33, '5323711776', 0, '53237', '', '1776', NULL, 1, 4, '2013-12-06 09:52:52', NULL, '2013-12-06 09:53:10', NULL, '2013-12-06 09:54:45', NULL, 0, 3, NULL, '2013-12-06 09:52:52', NULL, NULL),
(34, '5323723740', 0, '53237', '', '3740', NULL, 2, 4, '2013-12-06 09:53:07', NULL, '2013-12-06 09:56:50', NULL, '2013-12-06 09:59:41', NULL, 0, 3, NULL, '2013-12-06 09:53:07', NULL, NULL),
(35, '5323724097', 0, '53237', '', '4097', NULL, 2, 4, '2013-12-06 09:53:25', NULL, '2013-12-06 09:59:50', NULL, '2013-12-06 10:00:14', NULL, 0, 3, NULL, '2013-12-06 09:53:25', NULL, NULL),
(36, '5323713918', 0, '53237', '', '3918', NULL, 1, 4, '2013-12-06 10:00:36', NULL, '2013-12-06 10:07:35', NULL, '2013-12-06 10:09:05', NULL, 0, 3, NULL, '2013-12-06 10:00:36', NULL, NULL),
(37, '5323710911', 0, '53237', '', '0911', NULL, 1, 4, '2013-12-06 10:01:55', NULL, '2013-12-06 10:10:10', NULL, '2013-12-06 10:11:20', NULL, 0, 3, NULL, '2013-12-06 10:01:55', NULL, NULL),
(38, '5323714047', 0, '53237', '', '4047', NULL, 1, 4, '2013-12-06 10:05:13', NULL, '2013-12-06 10:14:53', NULL, '2013-12-06 10:16:19', NULL, 0, 3, NULL, '2013-12-06 10:05:13', NULL, NULL),
(39, '5323722321', 0, '53237', '', '2321', NULL, 2, 4, '2013-12-06 10:05:29', NULL, '2013-12-06 10:20:31', NULL, '2013-12-06 10:20:50', NULL, 0, 3, NULL, '2013-12-06 10:05:29', NULL, NULL),
(40, '3550712403', 0, '35507', '', '2403', NULL, 1, 4, '2013-12-06 10:17:49', NULL, '2013-12-06 10:43:06', NULL, '2013-12-06 10:45:12', NULL, 0, 3, NULL, '2013-12-06 10:17:49', NULL, NULL),
(41, '3550713805', 0, '35507', '', '3805', NULL, 1, 4, '2013-12-06 10:18:07', NULL, '2013-12-06 10:33:11', NULL, '2013-12-06 10:35:49', NULL, 0, 3, NULL, '2013-12-06 10:18:07', NULL, NULL),
(42, '3550720295', 0, '35507', '', '0295', NULL, 2, 4, '2013-12-06 10:19:09', NULL, '2013-12-06 10:20:37', NULL, '2013-12-06 10:20:47', NULL, 0, 3, NULL, '2013-12-06 10:19:09', NULL, NULL),
(43, '3550723589', 0, '35507', '', '3589', NULL, 2, 4, '2013-12-06 10:22:20', NULL, '2013-12-06 10:24:32', NULL, '2013-12-06 10:24:34', NULL, 0, 3, NULL, '2013-12-06 10:22:20', NULL, NULL),
(44, '5323723281', 0, '53237', '', '3281', NULL, 2, 4, '2013-12-06 10:23:40', NULL, '2013-12-06 10:40:28', NULL, '2013-12-06 10:40:38', NULL, 0, 3, NULL, '2013-12-06 10:23:40', NULL, NULL),
(45, '3550723363', 0, '35507', '', '3363', NULL, 2, 4, '2013-12-06 10:24:16', NULL, '2013-12-06 10:28:36', NULL, '2013-12-06 10:28:40', NULL, 0, 3, NULL, '2013-12-06 10:24:16', NULL, NULL),
(46, '5323714020', 0, '53237', '', '4020', NULL, 1, 4, '2013-12-06 10:29:36', NULL, '2013-12-06 10:45:59', NULL, '2013-12-06 10:48:11', NULL, 0, 3, NULL, '2013-12-06 10:29:36', NULL, NULL),
(47, '5323720760', 0, '53237', '', '0760', NULL, 2, 4, '2013-12-06 10:30:24', NULL, '2013-12-06 10:42:07', NULL, '2013-12-06 10:42:26', NULL, 0, 3, NULL, '2013-12-06 10:30:24', NULL, NULL),
(48, '3550713843', 0, '35507', '', '3843', NULL, 1, 4, '2013-12-06 10:39:53', NULL, '2013-12-06 10:41:59', NULL, '2013-12-06 10:42:04', NULL, 0, 3, NULL, '2013-12-06 10:39:53', NULL, NULL),
(49, '5323720286', 0, '53237', '', '0286', NULL, 2, 4, '2013-12-06 10:46:26', NULL, '2013-12-06 10:48:20', NULL, '2013-12-06 10:48:42', NULL, 0, 3, NULL, '2013-12-06 10:46:26', NULL, NULL),
(50, '53237204061', 0, '53237', '', '04061', NULL, 2, 4, '2013-12-06 10:46:48', NULL, NULL, NULL, '2013-12-06 10:48:14', NULL, 0, 3, NULL, '2013-12-06 10:46:48', NULL, NULL),
(51, '3550723551', 0, '35507', '', '3551', NULL, 2, 4, '2013-12-06 10:50:05', NULL, '2013-12-06 10:58:53', NULL, '2013-12-06 11:01:20', NULL, 0, 3, NULL, '2013-12-06 10:50:05', NULL, NULL),
(52, '5323723128', 0, '53237', '', '3128', NULL, 2, 4, '2013-12-06 10:57:10', NULL, '2013-12-06 11:15:42', NULL, '2013-12-06 11:16:13', NULL, 0, 3, NULL, '2013-12-06 10:57:10', NULL, NULL),
(53, '3550722226', 0, '35507', '', '2226', NULL, 2, 4, '2013-12-06 11:01:43', NULL, '2013-12-06 11:04:38', NULL, '2013-12-06 11:05:06', NULL, 0, 3, NULL, '2013-12-06 11:01:43', NULL, NULL),
(54, '5323720448', 0, '53237', '', '0448', NULL, 2, 4, '2013-12-06 11:06:57', NULL, '2013-12-06 11:18:03', NULL, '2013-12-06 11:18:24', NULL, 0, 3, NULL, '2013-12-06 11:06:57', NULL, NULL),
(55, '3550721134', 0, '35507', '', '1134', NULL, 2, 4, '2013-12-06 11:09:40', NULL, '2013-12-06 11:10:36', NULL, '2013-12-06 11:10:45', NULL, 0, 3, NULL, '2013-12-06 11:09:40', NULL, NULL),
(56, '5323721732', 0, '53237', '', '1732', NULL, 2, 4, '2013-12-06 11:12:56', NULL, NULL, NULL, '2013-12-06 11:24:25', NULL, 0, 3, NULL, '2013-12-06 11:12:56', NULL, NULL),
(57, '5323710518', 0, '53237', '', '0518', NULL, 1, 4, '2013-12-06 11:17:41', NULL, NULL, NULL, '2013-12-06 11:21:17', NULL, 0, 3, NULL, '2013-12-06 11:17:41', NULL, NULL),
(58, '5323710528', 0, '53237', '', '0528', NULL, 1, 4, '2013-12-06 11:17:47', NULL, '2013-12-06 11:19:20', NULL, '2013-12-06 11:19:44', NULL, 0, 3, NULL, '2013-12-06 11:17:47', NULL, NULL),
(59, '5323712890', 0, '53237', '', '2890', NULL, 1, 4, '2013-12-06 11:27:44', NULL, '2013-12-06 11:32:52', NULL, '2013-12-06 11:32:58', NULL, 0, 3, NULL, '2013-12-06 11:27:44', NULL, NULL),
(60, '5323713265', 0, '53237', '', '3265', NULL, 1, 4, '2013-12-06 11:28:48', NULL, '2013-12-06 11:34:54', NULL, '2013-12-06 11:35:06', NULL, 0, 3, NULL, '2013-12-06 11:28:48', NULL, NULL),
(61, '5323723578', 0, '53237', '', '3578', NULL, 2, 4, '2013-12-06 11:29:56', NULL, '2013-12-06 11:35:51', NULL, '2013-12-06 11:37:37', NULL, 0, 3, NULL, '2013-12-06 11:29:56', NULL, NULL),
(62, '5323723737', 0, '53237', '', '3737', NULL, 2, 4, '2013-12-06 11:31:08', NULL, '2013-12-06 11:44:14', NULL, '2013-12-06 11:44:37', NULL, 0, 3, NULL, '2013-12-06 11:31:08', NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=871 ;

--
-- A tábla adatainak kiíratása `nocore_barcode_full`
--

INSERT INTO `nocore_barcode_full` (`fullid`, `id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 1, '3550711800', 0, '35507', '', '1800', NULL, 1, 1, '2013-10-31 12:02:32', 0, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-10-31 12:02:32', NULL, NULL),
(2, 2, '5323712148', 0, '53237', '', '2148', NULL, 1, 1, '2013-10-31 12:05:12', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-10-31 12:05:12', NULL, NULL),
(3, 3, '5323712141', 0, '53237', '', '2141', NULL, 1, 1, '2013-10-31 12:05:26', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-10-31 12:05:26', NULL, NULL),
(4, 4, '3550711887', 0, '35507', '', '1887', NULL, 1, 1, '2013-10-31 12:05:48', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-10-31 12:05:48', NULL, NULL),
(5, 5, '5323724236', 0, '53237', '', '4236', NULL, 2, 1, '2013-10-31 12:17:13', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-10-31 12:17:13', NULL, NULL),
(6, 6, '3550721708', 0, '35507', '', '1708', NULL, 2, 1, '2013-10-31 12:48:47', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-10-31 12:48:47', NULL, NULL),
(7, 7, '3550721714', 0, '35507', '', '1714', NULL, 2, 1, '2013-10-31 12:49:59', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-10-31 12:49:59', NULL, NULL),
(8, 8, '3550711204', 0, '35507', '', '1204', NULL, 1, 1, '2013-10-31 13:27:00', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-10-31 13:27:00', NULL, NULL),
(9, 9, '3550723447', 0, '35507', '', '3447', NULL, 2, 1, '2013-10-31 14:17:36', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-10-31 14:17:36', NULL, NULL),
(10, 10, '3550713615', 0, '35507', '', '3615', NULL, 1, 1, '2013-10-31 14:48:54', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-10-31 14:48:54', NULL, NULL),
(11, 11, '3550720860', 0, '35507', '', '0860', NULL, 2, 1, '2013-10-31 15:45:26', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-10-31 15:45:26', NULL, NULL),
(12, 12, '5323722004', 0, '53237', '', '2004', NULL, 2, 1, '2013-11-04 13:46:47', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-04 13:46:47', NULL, NULL),
(13, 13, '5323721009', 0, '53237', '', '1009', NULL, 2, 1, '2013-11-04 13:47:52', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-04 13:47:52', NULL, NULL),
(14, 14, '5323713395', 0, '53237', '', '3395', NULL, 1, 1, '2013-11-04 13:48:23', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-04 13:48:23', NULL, NULL),
(15, 15, '5323721179', 0, '53237', '', '1179', NULL, 2, 1, '2013-11-04 13:50:13', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-04 13:50:13', NULL, NULL),
(16, 16, '5323720839', 0, '53237', '', '0839', NULL, 2, 1, '2013-11-04 14:09:57', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-04 14:09:57', NULL, NULL),
(17, 17, '5323713518', 0, '53237', '', '3518', NULL, 1, 1, '2013-11-04 14:40:44', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-04 14:40:44', NULL, NULL),
(18, 18, '5323723458', 0, '53237', '', '3458', NULL, 2, 1, '2013-11-04 15:07:07', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-04 15:07:07', NULL, NULL),
(19, 19, '5323710605', 0, '53237', '', '0605', NULL, 1, 1, '2013-11-04 15:29:02', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-04 15:29:02', NULL, NULL),
(20, 20, '5323721113', 0, '53237', '', '1113', NULL, 2, 1, '2013-11-04 15:56:34', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-04 15:56:34', NULL, NULL),
(21, 21, '5323720750', 0, '53237', '', '0750', NULL, 2, 1, '2013-11-04 16:01:58', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-04 16:01:58', NULL, NULL),
(22, 22, '5323711616', 0, '53237', '', '1616', NULL, 1, 1, '2013-11-04 16:39:35', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-04 16:39:35', NULL, NULL),
(23, 1, '5323720844', 0, '53237', '', '0844', NULL, 2, 4, '2013-11-08 07:39:59', NULL, '2013-11-08 07:50:50', NULL, '2013-11-08 07:52:06', NULL, 0, 3, NULL, '2013-11-08 07:39:59', NULL, NULL),
(24, 2, '3550711761', 0, '35507', '', '1761', NULL, 1, 4, '2013-11-08 07:43:50', NULL, '2013-11-08 07:57:50', NULL, '2013-11-08 07:58:38', NULL, 0, 3, NULL, '2013-11-08 07:43:50', NULL, NULL),
(25, 3, '3550722243', 0, '35507', '', '2243', NULL, 2, 4, '2013-11-08 07:44:07', NULL, '2013-11-08 08:00:03', NULL, '2013-11-08 08:00:21', NULL, 0, 3, NULL, '2013-11-08 07:44:07', NULL, NULL),
(26, 4, '3550720119', 0, '35507', '', '0119', NULL, 2, 4, '2013-11-08 07:55:15', NULL, '2013-11-08 08:03:01', NULL, '2013-11-08 08:04:04', NULL, 0, 3, NULL, '2013-11-08 07:55:15', NULL, NULL),
(27, 5, '5323720226', 0, '53237', '', '0226', NULL, 2, 4, '2013-11-08 07:58:29', NULL, '2013-11-08 08:01:39', NULL, '2013-11-08 08:02:48', NULL, 0, 3, NULL, '2013-11-08 07:58:29', NULL, NULL),
(28, 6, '3550721134', 0, '35507', '', '1134', NULL, 2, 4, '2013-11-08 08:00:20', NULL, '2013-11-08 08:08:21', NULL, '2013-11-08 08:08:44', NULL, 0, 3, NULL, '2013-11-08 08:00:20', NULL, NULL),
(29, 7, '5323720259', 0, '53237', '', '0259', NULL, 2, 4, '2013-11-08 08:08:44', NULL, '2013-11-08 08:23:51', NULL, '2013-11-08 08:24:36', NULL, 0, 3, NULL, '2013-11-08 08:08:44', NULL, NULL),
(30, 8, '3550723429', 0, '35507', '', '3429', NULL, 2, 4, '2013-11-08 08:08:54', NULL, '2013-11-08 08:22:20', NULL, '2013-11-08 08:22:25', NULL, 0, 3, NULL, '2013-11-08 08:08:54', NULL, NULL),
(31, 9, '3550721749', 0, '35507', '', '1749', NULL, 2, 4, '2013-11-08 08:12:34', NULL, '2013-11-08 08:29:07', NULL, '2013-11-08 08:29:27', NULL, 0, 3, NULL, '2013-11-08 08:12:34', NULL, NULL),
(32, 10, '5323723281', 0, '53237', '', '3281', NULL, 2, 4, '2013-11-08 08:18:28', NULL, '2013-11-08 08:30:40', NULL, '2013-11-08 08:30:43', NULL, 0, 3, NULL, '2013-11-08 08:18:28', NULL, NULL),
(33, 11, '5323713861', 0, '53237', '', '3861', NULL, 1, 4, '2013-11-08 08:37:57', NULL, '2013-11-08 08:41:13', NULL, '2013-11-08 08:41:18', NULL, 0, 3, NULL, '2013-11-08 08:37:57', NULL, NULL),
(34, 12, '3550721536', 0, '35507', '', '1536', NULL, 2, 4, '2013-11-08 08:49:31', NULL, '2013-11-08 08:50:40', NULL, '2013-11-08 08:50:45', NULL, 0, 3, NULL, '2013-11-08 08:49:31', NULL, NULL),
(35, 13, '5323721070', 0, '53237', '', '1070', NULL, 2, 4, '2013-11-08 09:13:05', NULL, '2013-11-08 09:19:07', NULL, '2013-11-08 09:19:19', NULL, 0, 3, NULL, '2013-11-08 09:13:05', NULL, NULL),
(36, 14, '5323722575', 0, '53237', '', '2575', NULL, 2, 4, '2013-11-08 09:18:46', NULL, '2013-11-08 09:25:02', NULL, '2013-11-08 09:25:12', NULL, 0, 3, NULL, '2013-11-08 09:18:46', NULL, NULL),
(37, 15, '3550712188', 0, '35507', '', '2188', NULL, 1, 4, '2013-11-08 09:37:45', NULL, '2013-11-08 09:40:24', NULL, '2013-11-08 09:41:09', NULL, 0, 3, NULL, '2013-11-08 09:37:45', NULL, NULL),
(38, 16, '5323724060', 0, '53237', '', '4060', NULL, 2, 4, '2013-11-08 09:52:02', NULL, '2013-11-08 09:55:10', NULL, '2013-11-08 09:55:20', NULL, 0, 3, NULL, '2013-11-08 09:52:02', NULL, NULL),
(39, 17, '3550723615', 0, '35507', '', '3615', NULL, 2, 4, '2013-11-08 10:00:04', NULL, NULL, NULL, '2013-11-08 10:59:17', NULL, 0, 3, NULL, '2013-11-08 10:00:04', NULL, NULL),
(40, 18, '5323712086', 0, '53237', '', '2086', NULL, 1, 4, '2013-11-08 10:09:15', NULL, '2013-11-08 10:11:29', NULL, '2013-11-08 10:11:32', NULL, 0, 3, NULL, '2013-11-08 10:09:15', NULL, NULL),
(41, 19, '3550722749', 0, '35507', '', '2749', NULL, 2, 4, '2013-11-08 10:35:18', NULL, '2013-11-08 10:37:39', NULL, '2013-11-08 10:37:44', NULL, 0, 3, NULL, '2013-11-08 10:35:18', NULL, NULL),
(42, 20, '3550721082', 0, '35507', '', '1082', NULL, 2, 4, '2013-11-08 10:56:43', NULL, '2013-11-08 10:59:59', NULL, '2013-11-08 11:00:28', NULL, 0, 3, NULL, '2013-11-08 10:56:43', NULL, NULL),
(43, 21, '5323721050', 0, '53237', '', '1050', NULL, 2, 4, '2013-11-08 11:07:55', NULL, '2013-11-08 11:09:27', NULL, '2013-11-08 11:10:29', NULL, 0, 3, NULL, '2013-11-08 11:07:55', NULL, NULL),
(44, 22, '5323720760', 0, '53237', '', '0760', NULL, 2, 4, '2013-11-08 11:29:16', NULL, '2013-11-08 11:41:11', NULL, '2013-11-08 11:41:28', NULL, 0, 3, NULL, '2013-11-08 11:29:16', NULL, NULL),
(45, 23, '5323720163', 0, '53237', '', '0163', NULL, 2, 4, '2013-11-08 11:30:03', NULL, '2013-11-08 11:48:12', NULL, '2013-11-08 11:48:17', NULL, 0, 3, NULL, '2013-11-08 11:30:03', NULL, NULL),
(46, 24, '5323720487', 0, '53237', '', '0487', NULL, 2, 4, '2013-11-08 11:30:08', NULL, '2013-11-08 11:49:22', NULL, '2013-11-08 11:49:26', NULL, 0, 3, NULL, '2013-11-08 11:30:08', NULL, NULL),
(47, 25, '5323720152', 0, '53237', '', '0152', NULL, 2, 4, '2013-11-08 11:30:12', NULL, '2013-11-08 11:42:58', NULL, '2013-11-08 11:43:03', NULL, 0, 3, NULL, '2013-11-08 11:30:12', NULL, NULL),
(48, 26, '5323721991', 0, '53237', '', '1991', NULL, 2, 4, '2013-11-08 11:30:27', NULL, '2013-11-08 11:53:26', NULL, '2013-11-08 11:53:48', NULL, 0, 3, NULL, '2013-11-08 11:30:27', NULL, NULL),
(49, 27, '5323710040', 0, '53237', '', '0040', NULL, 1, 4, '2013-11-08 13:46:34', NULL, '2013-11-08 13:59:26', NULL, '2013-11-08 13:59:53', NULL, 0, 3, NULL, '2013-11-08 13:46:34', NULL, NULL),
(50, 28, '3550710540', 0, '35507', '', '0540', NULL, 1, 4, '2013-11-08 13:53:18', NULL, '2013-11-08 14:20:12', NULL, '2013-11-08 14:20:31', NULL, 0, 3, NULL, '2013-11-08 13:53:18', NULL, NULL),
(51, 29, '5323710532', 0, '53237', '', '0532', NULL, 1, 4, '2013-11-08 14:28:46', NULL, '2013-11-08 14:30:51', NULL, '2013-11-08 14:31:51', NULL, 0, 3, NULL, '2013-11-08 14:28:46', NULL, NULL),
(52, 1, '5323721106', 0, '53237', '', '1106', NULL, 2, 4, '2013-11-11 13:33:20', NULL, '2013-11-11 13:35:10', NULL, NULL, NULL, 0, 3, NULL, '2013-11-11 13:33:20', NULL, NULL),
(53, 2, '5323713517', 0, '53237', '', '3517', NULL, 1, 4, '2013-11-11 13:51:27', 0, '2013-11-11 14:56:48', NULL, '2013-11-11 14:57:54', NULL, 0, 3, NULL, '2013-11-11 13:51:27', NULL, NULL),
(54, 3, '5323721008', 0, '53237', '', '1008', NULL, 2, 4, '2013-11-11 13:57:38', NULL, NULL, NULL, '2013-11-11 14:14:16', NULL, 0, 3, NULL, '2013-11-11 13:57:38', NULL, NULL),
(55, 4, '5323720099', 0, '53237', '', '0099', NULL, 2, 4, '2013-11-11 14:15:10', NULL, '2013-11-11 14:22:07', NULL, '2013-11-11 14:22:09', NULL, 0, 3, NULL, '2013-11-11 14:15:10', NULL, NULL),
(56, 5, '5323711098', 0, '53237', '', '1098', NULL, 1, 4, '2013-11-11 14:16:05', NULL, '2013-11-11 14:58:16', NULL, '2013-11-11 15:06:59', NULL, 0, 3, NULL, '2013-11-11 14:16:05', NULL, NULL),
(57, 6, '5323720448', 0, '53237', '', '0448', NULL, 2, 4, '2013-11-11 14:18:17', NULL, '2013-11-11 14:20:59', NULL, '2013-11-11 14:21:13', NULL, 0, 3, NULL, '2013-11-11 14:18:17', NULL, NULL),
(58, 7, '5323720001', 0, '53237', '', '0001', NULL, 2, 4, '2013-11-11 14:19:00', NULL, '2013-11-11 14:25:05', NULL, '2013-11-11 14:25:43', NULL, 0, 3, NULL, '2013-11-11 14:19:00', NULL, NULL),
(59, 8, '5323711258', 0, '53237', '', '1258', NULL, 1, 4, '2013-11-11 14:20:54', NULL, NULL, NULL, '2013-11-11 15:05:43', NULL, 0, 3, NULL, '2013-11-11 14:20:54', NULL, NULL),
(60, 9, '5323710259', 0, '53237', '', '0259', NULL, 1, 4, '2013-11-11 14:35:41', NULL, '2013-11-11 15:05:52', NULL, '2013-11-11 15:09:48', NULL, 0, 3, NULL, '2013-11-11 14:35:41', NULL, NULL),
(61, 10, '5323721646', 0, '53237', '', '1646', NULL, 2, 4, '2013-11-11 14:51:20', NULL, '2013-11-11 14:54:46', NULL, '2013-11-11 14:55:07', NULL, 0, 3, NULL, '2013-11-11 14:51:20', NULL, NULL),
(62, 11, '5323710605', 0, '53237', '', '0605', NULL, 1, 4, '2013-11-11 14:57:13', NULL, '2013-11-11 15:10:34', NULL, '2013-11-11 15:11:56', NULL, 0, 3, NULL, '2013-11-11 14:57:13', NULL, NULL),
(63, 12, '5323720256', 0, '53237', '', '0256', NULL, 2, 4, '2013-11-11 15:00:30', NULL, '2013-11-11 15:00:27', NULL, '2013-11-11 15:00:49', NULL, 0, 3, NULL, '2013-11-11 15:00:30', NULL, NULL),
(64, 13, '5323720208', 0, '53237', '', '0208', NULL, 2, 4, '2013-11-11 15:03:59', NULL, '2013-11-11 15:15:57', NULL, '2013-11-11 15:16:19', NULL, 0, 3, NULL, '2013-11-11 15:03:59', NULL, NULL),
(65, 14, '5323722058', 0, '53237', '', '2058', NULL, 2, 4, '2013-11-11 15:10:19', NULL, NULL, NULL, '2013-11-11 15:34:50', NULL, 0, 3, NULL, '2013-11-11 15:10:19', NULL, NULL),
(66, 15, '5323722256', 0, '53237', '', '2256', NULL, 2, 4, '2013-11-11 15:19:00', NULL, '2013-11-11 15:33:12', NULL, '2013-11-11 15:34:30', NULL, 0, 3, NULL, '2013-11-11 15:19:00', NULL, NULL),
(67, 16, '5323713153', 0, '53237', '', '3153', NULL, 1, 4, '2013-11-11 15:31:53', NULL, '2013-11-11 15:49:03', NULL, '2013-11-11 15:51:36', NULL, 0, 3, NULL, '2013-11-11 15:31:53', NULL, NULL),
(68, 17, '5323711101', 0, '53237', '', '1101', NULL, 1, 4, '2013-11-11 15:49:33', NULL, '2013-11-11 15:52:55', NULL, '2013-11-11 15:54:36', NULL, 0, 3, NULL, '2013-11-11 15:49:33', NULL, NULL),
(69, 18, '5323720760', 0, '53237', '', '0760', NULL, 2, 4, '2013-11-11 15:51:40', NULL, NULL, NULL, '2013-11-11 16:11:19', NULL, 0, 3, NULL, '2013-11-11 15:51:40', NULL, NULL),
(70, 19, '5323720563', 0, '53237', '', '0563', NULL, 2, 4, '2013-11-11 15:52:55', NULL, '2013-11-11 15:52:46', NULL, '2013-11-11 15:52:50', NULL, 0, 3, NULL, '2013-11-11 15:52:55', NULL, NULL),
(71, 20, '5323721374', 0, '53237', '', '1374', NULL, 2, 4, '2013-11-11 15:54:58', NULL, '2013-11-11 16:20:48', NULL, '2013-11-11 16:21:03', NULL, 0, 3, NULL, '2013-11-11 15:54:58', NULL, NULL),
(72, 21, '5323712485', 0, '53237', '', '2485', NULL, 1, 4, '2013-11-11 16:00:47', NULL, '2013-11-11 16:08:28', NULL, '2013-11-11 16:10:56', NULL, 0, 3, NULL, '2013-11-11 16:00:47', NULL, NULL),
(73, 22, '5323720569', 0, '53237', '', '0569', NULL, 2, 4, '2013-11-11 16:12:56', NULL, '2013-11-11 16:21:25', NULL, '2013-11-11 16:26:58', NULL, 0, 3, NULL, '2013-11-11 16:12:56', NULL, NULL),
(74, 23, '5323711570', 0, '53237', '', '1570', NULL, 1, 4, '2013-11-11 16:24:15', NULL, '2013-11-11 16:30:12', NULL, '2013-11-11 16:35:40', NULL, 0, 3, NULL, '2013-11-11 16:24:15', NULL, NULL),
(75, 24, '5323720854', 0, '53237', '', '0854', NULL, 2, 4, '2013-11-11 16:24:51', NULL, '2013-11-11 16:41:55', NULL, '2013-11-11 16:42:19', NULL, 0, 3, NULL, '2013-11-11 16:24:51', NULL, NULL),
(76, 25, '5323722485', 0, '53237', '', '2485', NULL, 2, 4, '2013-11-11 16:24:59', NULL, '2013-11-11 16:42:53', NULL, '2013-11-11 16:44:31', NULL, 0, 3, NULL, '2013-11-11 16:24:59', NULL, NULL),
(77, 26, '5323711755', 0, '53237', '', '1755', NULL, 1, 4, '2013-11-11 17:02:07', NULL, '2013-11-11 17:06:09', NULL, '2013-11-11 17:06:40', NULL, 0, 3, NULL, '2013-11-11 17:02:07', NULL, NULL),
(78, 27, '5323711246', 0, '53237', '', '1246', NULL, 1, 4, '2013-11-11 17:15:41', NULL, '2013-11-11 17:16:45', NULL, '2013-11-11 17:17:52', NULL, 0, 3, NULL, '2013-11-11 17:15:41', NULL, NULL),
(79, 1, '5323710259', 0, '53237', '', '0259', NULL, 1, 4, '2013-11-12 07:43:44', NULL, '2013-11-12 08:13:11', NULL, '2013-11-12 08:13:31', NULL, 0, 3, NULL, '2013-11-12 07:43:44', NULL, NULL),
(80, 2, '5323721031', 0, '53237', '', '1031', NULL, 2, 4, '2013-11-12 07:44:02', NULL, '2013-11-12 07:59:26', NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 07:44:02', NULL, NULL),
(81, 3, '5323720430', 0, '53237', '', '0430', NULL, 2, 4, '2013-11-12 07:51:54', NULL, NULL, NULL, '2013-11-12 08:04:42', NULL, 0, 3, NULL, '2013-11-12 07:51:54', NULL, NULL),
(82, 4, '5323721087', 0, '53237', '', '1087', NULL, 2, 4, '2013-11-12 07:54:23', NULL, '2013-11-12 08:04:46', NULL, '2013-11-12 08:05:41', NULL, 0, 3, NULL, '2013-11-12 07:54:23', NULL, NULL),
(83, 5, '5323712783', 0, '53237', '', '2783', NULL, 1, 4, '2013-11-12 08:08:08', NULL, '2013-11-12 08:12:13', NULL, '2013-11-12 08:12:52', NULL, 0, 3, NULL, '2013-11-12 08:08:08', NULL, NULL),
(84, 6, '5323721288', 0, '53237', '', '1288', NULL, 2, 4, '2013-11-12 08:09:10', NULL, '2013-11-12 08:12:00', NULL, '2013-11-12 08:12:47', NULL, 0, 3, NULL, '2013-11-12 08:09:10', NULL, NULL),
(85, 7, '5323713545', 0, '53237', '', '3545', NULL, 1, 4, '2013-11-12 08:19:29', NULL, '2013-11-12 08:24:15', NULL, '2013-11-12 08:25:37', NULL, 0, 3, NULL, '2013-11-12 08:19:29', NULL, NULL),
(86, 8, '5323720140', 0, '53237', '', '0140', NULL, 2, 4, '2013-11-12 08:21:02', NULL, '2013-11-12 08:38:15', NULL, '2013-11-12 08:38:32', NULL, 0, 3, NULL, '2013-11-12 08:21:02', NULL, NULL),
(87, 9, '5323724085', 0, '53237', '', '4085', NULL, 2, 4, '2013-11-12 08:28:00', NULL, '2013-11-12 08:45:48', NULL, '2013-11-12 08:46:47', NULL, 0, 3, NULL, '2013-11-12 08:28:00', NULL, NULL),
(88, 10, '5323710865', 0, '53237', '', '0865', NULL, 1, 4, '2013-11-12 08:29:20', NULL, '2013-11-12 08:42:37', NULL, '2013-11-12 08:43:39', NULL, 0, 3, NULL, '2013-11-12 08:29:20', NULL, NULL),
(89, 11, '5323722412', 0, '53237', '', '2412', NULL, 2, 4, '2013-11-12 08:31:00', NULL, '2013-11-12 08:50:59', NULL, '2013-11-12 08:51:08', NULL, 0, 3, NULL, '2013-11-12 08:31:00', NULL, NULL),
(90, 12, '5323720183', 0, '53237', '', '0183', NULL, 2, 4, '2013-11-12 08:43:48', NULL, '2013-11-12 08:52:19', NULL, '2013-11-12 08:52:31', NULL, 0, 3, NULL, '2013-11-12 08:43:48', NULL, NULL),
(91, 13, '5323712523', 0, '53237', '', '2523', NULL, 1, 4, '2013-11-12 08:54:33', NULL, '2013-11-12 08:54:46', NULL, '2013-11-12 08:55:43', NULL, 0, 3, NULL, '2013-11-12 08:54:33', NULL, NULL),
(92, 14, '5323713861', 0, '53237', '', '3861', NULL, 1, 4, '2013-11-12 09:02:52', NULL, '2013-11-12 09:06:26', NULL, '2013-11-12 09:09:09', NULL, 0, 3, NULL, '2013-11-12 09:02:52', NULL, NULL),
(93, 15, '5323711099', 0, '53237', '', '1099', NULL, 1, 4, '2013-11-12 09:04:06', NULL, '2013-11-12 09:09:54', NULL, '2013-11-12 09:13:50', NULL, 0, 3, NULL, '2013-11-12 09:04:06', NULL, NULL),
(94, 16, '5323722734', 0, '53237', '', '2734', NULL, 2, 4, '2013-11-12 09:07:13', NULL, '2013-11-12 09:24:54', NULL, '2013-11-12 09:25:14', NULL, 0, 3, NULL, '2013-11-12 09:07:13', NULL, NULL),
(95, 17, '5323712246', 0, '53237', '', '2246', NULL, 1, 4, '2013-11-12 09:09:46', NULL, '2013-11-12 09:10:43', NULL, '2013-11-12 09:11:42', NULL, 0, 3, NULL, '2013-11-12 09:09:46', NULL, NULL),
(96, 18, '5323721215', 0, '53237', '', '1215', NULL, 2, 4, '2013-11-12 09:13:13', NULL, '2013-11-12 09:29:05', NULL, '2013-11-12 09:29:12', NULL, 0, 3, NULL, '2013-11-12 09:13:13', NULL, NULL),
(97, 19, '5323720760', 0, '53237', '', '0760', NULL, 2, 1, '2013-11-12 09:21:19', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 09:21:19', NULL, NULL),
(98, 20, '5323711746', 0, '53237', '', '1746', NULL, 1, 4, '2013-11-12 09:55:23', NULL, '2013-11-12 10:01:24', NULL, '2013-11-12 10:04:26', NULL, 0, 3, NULL, '2013-11-12 09:55:23', NULL, NULL),
(99, 21, '5323723083', 0, '53237', '', '3083', NULL, 2, 4, '2013-11-12 10:10:09', NULL, '2013-11-12 10:20:30', NULL, '2013-11-12 10:20:39', NULL, 0, 3, NULL, '2013-11-12 10:10:09', NULL, NULL),
(100, 22, '5323722833', 0, '53237', '', '2833', NULL, 2, 4, '2013-11-12 10:15:39', NULL, '2013-11-12 10:21:20', NULL, '2013-11-12 10:24:56', NULL, 0, 3, NULL, '2013-11-12 10:15:39', NULL, NULL),
(101, 23, '5323722234', 0, '53237', '', '2234', NULL, 2, 4, '2013-11-12 10:28:38', NULL, '2013-11-12 10:35:20', NULL, '2013-11-12 10:35:42', NULL, 0, 3, NULL, '2013-11-12 10:28:38', NULL, NULL),
(102, 24, '5323711026', 0, '53237', '', '1026', NULL, 1, 4, '2013-11-12 10:34:24', NULL, NULL, NULL, '2013-11-12 11:08:00', NULL, 0, 3, NULL, '2013-11-12 10:34:24', NULL, NULL),
(103, 25, '5323723536', 0, '53237', '', '3536', NULL, 2, 4, '2013-11-12 10:38:51', NULL, '2013-11-12 10:45:00', NULL, '2013-11-12 10:45:54', NULL, 0, 3, NULL, '2013-11-12 10:38:51', NULL, NULL),
(104, 26, '5323720702', 0, '53237', '', '0702', NULL, 2, 4, '2013-11-12 10:47:29', NULL, '2013-11-12 10:57:06', NULL, '2013-11-12 10:57:13', NULL, 0, 3, NULL, '2013-11-12 10:47:29', NULL, NULL),
(105, 27, '5323724063', 0, '53237', '', '4063', NULL, 2, 4, '2013-11-12 11:10:13', NULL, '2013-11-12 11:10:21', NULL, '2013-11-12 11:10:25', NULL, 0, 3, NULL, '2013-11-12 11:10:13', NULL, NULL),
(106, 28, '3550713429', 0, '35507', '', '3429', NULL, 1, 4, '2013-11-12 13:06:22', NULL, '2013-11-12 14:16:21', NULL, '2013-11-12 14:23:50', NULL, 0, 3, NULL, '2013-11-12 13:06:22', NULL, NULL),
(107, 29, '3550712118', 0, '35507', '', '2118', NULL, 1, 4, '2013-11-12 13:35:16', NULL, '2013-11-12 14:23:55', NULL, '2013-11-12 14:25:33', NULL, 0, 3, NULL, '2013-11-12 13:35:16', NULL, NULL),
(108, 30, '3550721424', 0, '35507', '', '1424', NULL, 2, 4, '2013-11-12 13:35:48', NULL, NULL, NULL, '2013-11-12 13:41:34', NULL, 0, 3, NULL, '2013-11-12 13:35:48', NULL, NULL),
(109, 31, '3550711424', 0, '35507', '', '1424', NULL, 1, 4, '2013-11-12 13:41:47', NULL, '2013-11-12 14:31:42', NULL, '2013-11-12 14:32:17', NULL, 0, 3, NULL, '2013-11-12 13:41:47', NULL, NULL),
(110, 32, '3550722896', 0, '35507', '', '2896', NULL, 2, 4, '2013-11-12 13:50:42', NULL, '2013-11-12 14:02:35', NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 13:50:42', NULL, NULL),
(111, 33, '3550723353', 0, '35507', '', '3353', NULL, 2, 4, '2013-11-12 13:51:31', NULL, NULL, NULL, '2013-11-12 14:33:05', NULL, 0, 3, NULL, '2013-11-12 13:51:31', NULL, NULL),
(112, 34, '3550712354', 0, '35507', '', '2354', NULL, 1, 1, '2013-11-12 13:56:23', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 13:56:23', NULL, NULL),
(113, 35, '3550723660', 0, '35507', '', '3660', NULL, 2, 1, '2013-11-12 14:05:11', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 14:05:11', NULL, NULL),
(114, 36, '3550723761', 0, '35507', '', '3761', NULL, 2, 1, '2013-11-12 14:05:57', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 14:05:57', NULL, NULL),
(115, 37, '3550710614', 0, '35507', '', '0614', NULL, 1, 1, '2013-11-12 14:08:53', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 14:08:53', NULL, NULL),
(116, 38, '3550723785', 0, '35507', '', '3785', NULL, 2, 1, '2013-11-12 14:11:11', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 14:11:11', NULL, NULL),
(117, 39, '3550710821', 0, '35507', '', '0821', NULL, 1, 1, '2013-11-12 14:29:53', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 14:29:53', NULL, NULL),
(118, 40, '3550723153', 0, '35507', '', '3153', NULL, 2, 1, '2013-11-12 14:47:34', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 14:47:34', NULL, NULL),
(119, 41, '3550712876', 0, '35507', '', '2876', NULL, 1, 1, '2013-11-12 15:06:20', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 15:06:20', NULL, NULL),
(120, 42, '3550720246', 0, '35507', '', '0246', NULL, 2, 1, '2013-11-12 15:13:29', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 15:13:29', NULL, NULL),
(121, 43, '3550722188', 0, '35507', '', '2188', NULL, 2, 1, '2013-11-12 15:46:52', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 15:46:52', NULL, NULL),
(122, 44, '3550721110', 0, '35507', '', '1110', NULL, 2, 1, '2013-11-12 15:54:56', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 15:54:56', NULL, NULL),
(123, 45, '3550712751', 0, '35507', '', '2751', NULL, 1, 1, '2013-11-12 15:59:13', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 15:59:13', NULL, NULL),
(124, 46, '3550713788', 0, '35507', '', '3788', NULL, 1, 1, '2013-11-12 16:00:04', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 16:00:04', NULL, NULL),
(125, 47, '3550720085', 0, '35507', '', '0085', NULL, 2, 1, '2013-11-12 16:12:57', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 16:12:57', NULL, NULL),
(126, 48, '3550713715', 0, '35507', '', '3715', NULL, 1, 1, '2013-11-12 17:13:27', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 17:13:27', NULL, NULL),
(127, 49, '3550723676', 0, '35507', '', '3676', NULL, 2, 1, '2013-11-12 17:14:06', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-12 17:14:06', NULL, NULL),
(128, 1, '3550713998', 0, '35507', '', '3998', NULL, 1, 4, '2013-11-13 07:45:54', NULL, '2013-11-13 08:24:54', NULL, '2013-11-13 08:29:13', NULL, 0, 3, NULL, '2013-11-13 07:45:54', NULL, NULL),
(129, 2, '3550721054', 0, '35507', '', '1054', NULL, 2, 4, '2013-11-13 08:16:08', NULL, '2013-11-13 08:18:10', NULL, '2013-11-13 08:20:23', NULL, 0, 3, NULL, '2013-11-13 08:16:08', NULL, NULL),
(130, 3, '3550722222', 0, '35507', '', '2222', NULL, 2, 4, '2013-11-13 08:16:23', NULL, '2013-11-13 08:20:27', NULL, '2013-11-13 08:20:32', NULL, 0, 3, NULL, '2013-11-13 08:16:23', NULL, NULL),
(131, 4, '3550713615', 0, '35507', '', '3615', NULL, 1, 4, '2013-11-13 08:35:10', NULL, '2013-11-13 09:05:57', NULL, '2013-11-13 09:06:04', NULL, 0, 3, NULL, '2013-11-13 08:35:10', NULL, NULL),
(132, 5, '3550710392', 0, '35507', '', '0392', NULL, 1, 4, '2013-11-13 08:40:55', NULL, '2013-11-13 09:44:48', NULL, '2013-11-13 09:46:21', NULL, 0, 3, NULL, '2013-11-13 08:40:55', NULL, NULL),
(133, 6, '3550723011', 0, '35507', '', '3011', NULL, 2, 4, '2013-11-13 08:41:24', NULL, '2013-11-13 08:47:19', NULL, '2013-11-13 08:47:35', NULL, 0, 3, NULL, '2013-11-13 08:41:24', NULL, NULL),
(134, 7, '3550722516', 0, '35507', '', '2516', NULL, 2, 4, '2013-11-13 08:45:01', NULL, '2013-11-13 08:54:45', NULL, '2013-11-13 08:54:50', NULL, 0, 3, NULL, '2013-11-13 08:45:01', NULL, NULL),
(135, 8, '3550713726', 0, '35507', '', '3726', NULL, 1, 4, '2013-11-13 08:51:51', NULL, '2013-11-13 09:46:27', NULL, '2013-11-13 09:50:44', NULL, 0, 3, NULL, '2013-11-13 08:51:51', NULL, NULL),
(136, 9, '3550722097', 0, '35507', '', '2097', NULL, 2, 4, '2013-11-13 08:56:02', NULL, '2013-11-13 09:01:53', NULL, '2013-11-13 09:03:11', NULL, 0, 3, NULL, '2013-11-13 08:56:02', NULL, NULL),
(137, 10, '3550710032', 0, '35507', '', '0032', NULL, 1, 4, '2013-11-13 09:00:23', NULL, NULL, NULL, '2013-11-13 09:38:23', NULL, 0, 3, NULL, '2013-11-13 09:00:23', NULL, NULL),
(138, 11, '3550723455', 0, '35507', '', '3455', NULL, 2, 4, '2013-11-13 09:11:27', NULL, '2013-11-13 09:55:27', NULL, '2013-11-13 10:00:59', NULL, 0, 3, NULL, '2013-11-13 09:11:27', NULL, NULL),
(139, 12, '3550711626', 0, '35507', '', '1626', NULL, 1, 4, '2013-11-13 09:25:25', NULL, '2013-11-13 10:14:03', NULL, '2013-11-13 10:16:48', NULL, 0, 3, NULL, '2013-11-13 09:25:25', NULL, NULL),
(140, 13, '3550720271', 0, '35507', '', '0271', NULL, 2, 4, '2013-11-13 09:25:29', NULL, '2013-11-13 09:26:45', NULL, '2013-11-13 09:26:54', NULL, 0, 3, NULL, '2013-11-13 09:25:29', NULL, NULL),
(141, 14, '3550721541', 0, '35507', '', '1541', NULL, 2, 4, '2013-11-13 09:56:02', NULL, '2013-11-13 09:56:34', NULL, '2013-11-13 09:56:39', NULL, 0, 3, NULL, '2013-11-13 09:56:02', NULL, NULL),
(142, 15, '3550722801', 0, '35507', '', '2801', NULL, 2, 4, '2013-11-13 10:17:33', NULL, '2013-11-13 10:20:52', NULL, '2013-11-13 10:21:16', NULL, 0, 3, NULL, '2013-11-13 10:17:33', NULL, NULL),
(143, 16, '3550711790', 0, '35507', '', '1790', NULL, 1, 4, '2013-11-13 10:49:28', NULL, '2013-11-13 10:52:07', NULL, NULL, NULL, 0, 3, NULL, '2013-11-13 10:49:28', NULL, NULL),
(144, 17, '3550721330', 0, '35507', '', '1330', NULL, 2, 4, '2013-11-13 10:59:28', NULL, '2013-11-13 11:06:59', NULL, '2013-11-13 11:08:42', NULL, 0, 3, NULL, '2013-11-13 10:59:28', NULL, NULL),
(145, 18, '3550720615', 0, '35507', '', '0615', NULL, 2, 1, '2013-11-13 11:00:42', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-13 11:00:42', NULL, NULL),
(146, 19, '3550710264', 0, '35507', '', '0264', NULL, 1, 4, '2013-11-13 11:08:16', NULL, NULL, NULL, '2013-11-13 11:18:40', NULL, 0, 3, NULL, '2013-11-13 11:08:16', NULL, NULL),
(147, 20, '3550723005', 0, '35507', '', '3005', NULL, 2, 4, '2013-11-13 11:08:38', NULL, '2013-11-13 11:19:26', NULL, '2013-11-13 11:19:48', NULL, 0, 3, NULL, '2013-11-13 11:08:38', NULL, NULL),
(148, 21, '5323720760', 0, '53237', '', '0760', NULL, 2, 4, '2013-11-13 12:59:18', NULL, NULL, NULL, '2013-11-13 14:08:37', NULL, 0, 3, NULL, '2013-11-13 12:59:18', NULL, NULL),
(149, 22, '5323721237', 0, '53237', '', '1237', NULL, 2, 4, '2013-11-13 13:08:34', NULL, '2013-11-13 13:15:06', NULL, '2013-11-13 13:15:17', NULL, 0, 3, NULL, '2013-11-13 13:08:34', NULL, NULL),
(150, 23, '5323723168', 0, '53237', '', '3168', NULL, 2, 4, '2013-11-13 13:15:07', NULL, '2013-11-13 13:56:20', NULL, '2013-11-13 13:56:22', NULL, 0, 3, NULL, '2013-11-13 13:15:07', NULL, NULL),
(151, 24, '5323723098', 0, '53237', '', '3098', NULL, 2, 4, '2013-11-13 13:17:36', NULL, '2013-11-13 13:23:59', NULL, '2013-11-13 13:26:08', NULL, 0, 3, NULL, '2013-11-13 13:17:36', NULL, NULL),
(152, 25, '5323720110', 0, '53237', '', '0110', NULL, 2, 4, '2013-11-13 13:50:32', NULL, '2013-11-13 13:58:08', NULL, '2013-11-13 14:03:28', NULL, 0, 3, NULL, '2013-11-13 13:50:32', NULL, NULL),
(153, 26, '5323713622', 0, '53237', '', '3622', NULL, 1, 4, '2013-11-13 13:51:55', NULL, '2013-11-13 14:08:40', NULL, '2013-11-13 14:10:14', NULL, 0, 3, NULL, '2013-11-13 13:51:55', NULL, NULL),
(154, 27, '3550723202', 0, '35507', '', '3202', NULL, 2, 4, '2013-11-13 13:58:09', NULL, '2013-11-13 14:08:07', NULL, '2013-11-13 14:08:17', NULL, 0, 3, NULL, '2013-11-13 13:58:09', NULL, NULL),
(155, 28, '5323711070', 0, '53237', '', '1070', NULL, 1, 4, '2013-11-13 14:04:46', NULL, '2013-11-13 14:10:23', NULL, '2013-11-13 14:10:49', NULL, 0, 3, NULL, '2013-11-13 14:04:46', NULL, NULL),
(156, 29, '5323721455', 0, '53237', '', '1455', NULL, 2, 4, '2013-11-13 14:05:29', NULL, '2013-11-13 14:15:37', NULL, '2013-11-13 14:15:54', NULL, 0, 3, NULL, '2013-11-13 14:05:29', NULL, NULL),
(157, 30, '5323720373', 0, '53237', '', '0373', NULL, 2, 4, '2013-11-13 14:05:50', NULL, '2013-11-13 14:22:38', NULL, '2013-11-13 14:23:19', NULL, 0, 3, NULL, '2013-11-13 14:05:50', NULL, NULL),
(158, 31, '5323712614', 0, '53237', '', '2614', NULL, 1, 4, '2013-11-13 14:16:15', NULL, '2013-11-13 14:20:31', NULL, '2013-11-13 14:21:33', NULL, 0, 3, NULL, '2013-11-13 14:16:15', NULL, NULL),
(159, 32, '5323723696', 0, '53237', '', '3696', NULL, 2, 4, '2013-11-13 14:16:19', NULL, '2013-11-13 14:36:32', NULL, '2013-11-13 14:36:51', NULL, 0, 3, NULL, '2013-11-13 14:16:19', NULL, NULL),
(160, 33, '5323723887', 0, '53237', '', '3887', NULL, 2, 4, '2013-11-13 14:21:04', NULL, '2013-11-13 14:40:17', NULL, '2013-11-13 14:40:39', NULL, 0, 3, NULL, '2013-11-13 14:21:04', NULL, NULL),
(161, 34, '5323721216', 0, '53237', '', '1216', NULL, 2, 4, '2013-11-13 14:23:19', NULL, '2013-11-13 14:48:42', NULL, '2013-11-13 14:48:48', NULL, 0, 3, NULL, '2013-11-13 14:23:19', NULL, NULL),
(162, 35, '5323712185', 0, '53237', '', '2185', NULL, 1, 4, '2013-11-13 14:52:58', NULL, '2013-11-13 15:04:45', NULL, '2013-11-13 15:05:25', NULL, 0, 3, NULL, '2013-11-13 14:52:58', NULL, NULL),
(163, 36, '5323722573', 0, '53237', '', '2573', NULL, 2, 4, '2013-11-13 14:56:47', NULL, '2013-11-13 15:00:37', NULL, '2013-11-13 15:01:13', NULL, 0, 3, NULL, '2013-11-13 14:56:47', NULL, NULL),
(164, 37, '5323722438', 0, '53237', '', '2438', NULL, 2, 4, '2013-11-13 14:59:27', NULL, '2013-11-13 15:01:31', NULL, '2013-11-13 15:01:48', NULL, 0, 3, NULL, '2013-11-13 14:59:27', NULL, NULL),
(165, 38, '5323710628', 0, '53237', '', '0628', NULL, 1, 4, '2013-11-13 15:01:17', NULL, '2013-11-13 15:07:00', NULL, '2013-11-13 15:08:53', NULL, 0, 3, NULL, '2013-11-13 15:01:17', NULL, NULL),
(166, 39, '5323721475', 0, '53237', '', '1475', NULL, 2, 4, '2013-11-13 15:16:19', NULL, '2013-11-13 15:18:32', NULL, '2013-11-13 15:19:05', NULL, 0, 3, NULL, '2013-11-13 15:16:19', NULL, NULL),
(167, 40, '5323721552', 0, '53237', '', '1552', NULL, 2, 4, '2013-11-13 15:36:51', NULL, '2013-11-13 15:37:06', NULL, '2013-11-13 15:37:53', NULL, 0, 3, NULL, '2013-11-13 15:36:51', NULL, NULL),
(168, 41, '5323720646', 0, '53237', '', '0646', NULL, 2, 4, '2013-11-13 15:37:03', NULL, '2013-11-13 15:39:02', NULL, '2013-11-13 15:39:20', NULL, 0, 3, NULL, '2013-11-13 15:37:03', NULL, NULL),
(169, 42, '5323710105', 0, '53237', '', '0105', NULL, 1, 4, '2013-11-13 15:39:57', NULL, '2013-11-13 15:44:01', NULL, '2013-11-13 15:44:53', NULL, 0, 3, NULL, '2013-11-13 15:39:57', NULL, NULL),
(170, 43, '5323721180', 0, '53237', '', '1180', NULL, 2, 4, '2013-11-13 15:54:00', NULL, '2013-11-13 16:00:13', NULL, '2013-11-13 16:01:51', NULL, 0, 3, NULL, '2013-11-13 15:54:00', NULL, NULL),
(171, 44, '5323713740', 0, '53237', '', '3740', NULL, 1, 4, '2013-11-13 16:04:39', NULL, '2013-11-13 16:15:33', NULL, '2013-11-13 16:16:02', NULL, 0, 3, NULL, '2013-11-13 16:04:39', NULL, NULL),
(172, 45, '5323710732', 0, '53237', '', '0732', NULL, 1, 4, '2013-11-13 16:24:35', NULL, '2013-11-13 16:41:25', NULL, '2013-11-13 16:44:13', NULL, 0, 3, NULL, '2013-11-13 16:24:35', NULL, NULL),
(173, 46, '5323712019', 0, '53237', '', '2019', NULL, 1, 4, '2013-11-13 16:39:45', NULL, '2013-11-13 16:44:24', NULL, '2013-11-13 16:47:50', NULL, 0, 3, NULL, '2013-11-13 16:39:45', NULL, NULL),
(174, 47, '5323723301', 0, '53237', '', '3301', NULL, 2, 4, '2013-11-13 17:19:31', NULL, '2013-11-13 17:27:15', NULL, '2013-11-13 17:27:23', NULL, 0, 3, NULL, '2013-11-13 17:19:31', NULL, NULL),
(175, 48, '5323710632', 0, '53237', '', '0632', NULL, 1, 4, '2013-11-13 17:22:32', NULL, '2013-11-13 17:22:35', NULL, '2013-11-13 17:24:57', NULL, 0, 3, NULL, '2013-11-13 17:22:32', NULL, NULL),
(176, 1, '3550710581', 0, '35507', '', '0581', NULL, 1, 4, '2013-11-14 14:16:23', NULL, '2013-11-14 14:46:21', NULL, '2013-11-14 14:51:47', NULL, 0, 3, NULL, '2013-11-14 14:16:23', NULL, NULL),
(177, 2, '3550710540', 0, '35507', '', '0540', NULL, 1, 4, '2013-11-14 14:16:25', NULL, '2013-11-14 14:37:11', NULL, '2013-11-14 14:38:53', NULL, 0, 3, NULL, '2013-11-14 14:16:25', NULL, NULL),
(178, 3, '3550710689', 0, '35507', '', '0689', NULL, 1, 4, '2013-11-14 14:16:32', NULL, '2013-11-14 14:28:41', NULL, '2013-11-14 14:28:56', NULL, 0, 3, NULL, '2013-11-14 14:16:32', NULL, NULL),
(179, 4, '3550710664', 0, '35507', '', '0664', NULL, 1, 4, '2013-11-14 14:17:12', NULL, '2013-11-14 15:05:36', NULL, '2013-11-14 15:08:12', NULL, 0, 3, NULL, '2013-11-14 14:17:12', NULL, NULL),
(180, 1, '5323720272', 0, '53237', '', '0272', NULL, 2, 4, '2013-11-15 12:11:22', NULL, '2013-11-15 12:22:29', NULL, '2013-11-15 12:22:42', NULL, 0, 3, NULL, '2013-11-15 12:11:22', NULL, NULL),
(181, 2, '5323721897', 0, '53237', '', '1897', NULL, 2, 4, '2013-11-15 12:12:46', NULL, '2013-11-15 12:31:53', NULL, '2013-11-15 12:32:33', NULL, 0, 3, NULL, '2013-11-15 12:12:46', NULL, NULL),
(182, 3, '5323720585', 0, '53237', '', '0585', NULL, 2, 4, '2013-11-15 12:14:03', NULL, '2013-11-15 12:42:50', NULL, '2013-11-15 12:43:21', NULL, 0, 3, NULL, '2013-11-15 12:14:03', NULL, NULL),
(183, 4, '5323720760', 0, '53237', '', '0760', NULL, 2, 4, '2013-11-15 12:23:16', NULL, '2013-11-15 13:23:14', NULL, '2013-11-15 13:23:19', NULL, 0, 3, NULL, '2013-11-15 12:23:16', NULL, NULL),
(184, 5, '5323722034', 0, '53237', '', '2034', NULL, 2, 4, '2013-11-15 13:01:03', NULL, '2013-11-15 13:18:09', NULL, '2013-11-15 13:18:14', NULL, 0, 3, NULL, '2013-11-15 13:01:03', NULL, NULL),
(185, 6, '5323720887', 0, '53237', '', '0887', NULL, 2, 4, '2013-11-15 13:13:35', NULL, '2013-11-15 13:20:21', NULL, '2013-11-15 13:20:48', NULL, 0, 3, NULL, '2013-11-15 13:13:35', NULL, NULL),
(186, 7, '5323713402', 0, '53237', '', '3402', NULL, 1, 4, '2013-11-15 13:22:04', NULL, '2013-11-15 14:22:54', NULL, '2013-11-15 14:22:58', NULL, 0, 3, NULL, '2013-11-15 13:22:04', NULL, NULL),
(187, 1, '5323711104', 0, '53237', '', '1104', NULL, 1, 4, '2013-11-18 12:39:47', NULL, NULL, NULL, '2013-11-18 12:44:38', NULL, 0, 3, NULL, '2013-11-18 12:39:47', NULL, NULL),
(188, 2, '5323721106', 0, '53237', '', '1106', NULL, 2, 4, '2013-11-18 12:39:59', NULL, NULL, NULL, '2013-11-18 12:44:40', NULL, 0, 3, NULL, '2013-11-18 12:39:59', NULL, NULL),
(189, 3, '53237101183', 0, '53237', '', '01183', NULL, 1, 4, '2013-11-18 12:40:06', NULL, NULL, NULL, '2013-11-18 12:44:41', NULL, 0, 3, NULL, '2013-11-18 12:40:06', NULL, NULL),
(190, 4, '5323723371', 0, '53237', '', '3371', NULL, 2, 4, '2013-11-18 13:18:03', NULL, '2013-11-18 13:48:01', NULL, '2013-11-18 13:51:28', NULL, 0, 3, NULL, '2013-11-18 13:18:03', NULL, NULL),
(191, 5, '3550713565', 0, '35507', '', '3565', NULL, 1, 4, '2013-11-18 13:37:44', NULL, '2013-11-18 14:30:00', NULL, '2013-11-18 14:31:57', NULL, 0, 3, NULL, '2013-11-18 13:37:44', NULL, NULL),
(192, 6, '5323721099', 0, '53237', '', '1099', NULL, 2, 4, '2013-11-18 13:46:06', NULL, NULL, NULL, '2013-11-18 14:00:44', NULL, 0, 3, NULL, '2013-11-18 13:46:06', NULL, NULL),
(193, 7, '53237104171', 0, '53237', '', '04171', NULL, 1, 4, '2013-11-18 13:48:52', NULL, '2013-11-18 14:33:40', NULL, '2013-11-18 14:34:32', NULL, 0, 3, NULL, '2013-11-18 13:48:52', NULL, NULL),
(194, 8, '5323710090', 0, '53237', '', '0090', NULL, 1, 4, '2013-11-18 13:50:51', NULL, '2013-11-18 14:42:13', NULL, '2013-11-18 14:47:49', NULL, 0, 3, NULL, '2013-11-18 13:50:51', NULL, NULL),
(195, 9, '3550712354', 0, '35507', '', '2354', NULL, 1, 4, '2013-11-18 13:51:32', NULL, '2013-11-18 14:49:11', NULL, '2013-11-18 14:50:36', NULL, 0, 3, NULL, '2013-11-18 13:51:32', NULL, NULL),
(196, 10, '35507109996', 0, '35507', '', '09996', NULL, 1, 4, '2013-11-18 13:52:25', NULL, NULL, NULL, '2013-11-18 14:57:14', NULL, 0, 3, NULL, '2013-11-18 13:52:25', NULL, NULL),
(197, 11, '5323714027', 0, '53237', '', '4027', NULL, 1, 4, '2013-11-18 14:00:30', NULL, '2013-11-18 15:17:55', NULL, '2013-11-18 15:19:36', NULL, 0, 3, NULL, '2013-11-18 14:00:30', NULL, NULL),
(198, 12, '5323723258', 0, '53237', '', '3258', NULL, 2, 4, '2013-11-18 14:00:35', NULL, '2013-11-18 14:00:47', NULL, '2013-11-18 14:01:02', NULL, 0, 3, NULL, '2013-11-18 14:00:35', NULL, NULL),
(199, 13, '3550723987', 0, '35507', '', '3987', NULL, 2, 4, '2013-11-18 14:01:13', NULL, '2013-11-18 14:01:17', NULL, '2013-11-18 14:06:36', NULL, 0, 3, NULL, '2013-11-18 14:01:13', NULL, NULL),
(200, 14, '3550723987', 0, '35507', '', '3987', NULL, 2, 4, '2013-11-18 14:01:49', NULL, NULL, NULL, '2013-11-18 14:06:36', NULL, 0, 3, NULL, '2013-11-18 14:01:49', NULL, NULL),
(201, 15, '5323721378', 0, '53237', '', '1378', NULL, 2, 4, '2013-11-18 14:04:19', NULL, '2013-11-18 14:08:22', NULL, '2013-11-18 14:10:56', NULL, 0, 3, NULL, '2013-11-18 14:04:19', NULL, NULL),
(202, 16, '3550721954', 0, '35507', '', '1954', NULL, 2, 4, '2013-11-18 14:04:39', NULL, '2013-11-18 14:06:41', NULL, '2013-11-18 14:06:46', NULL, 0, 3, NULL, '2013-11-18 14:04:39', NULL, NULL),
(203, 17, '3550723208', 0, '35507', '', '3208', NULL, 2, 4, '2013-11-18 14:05:50', NULL, '2013-11-18 14:32:37', NULL, '2013-11-18 14:32:41', NULL, 0, 3, NULL, '2013-11-18 14:05:50', NULL, NULL),
(204, 18, '3550720825', 0, '35507', '', '0825', NULL, 2, 4, '2013-11-18 14:05:56', NULL, '2013-11-18 14:33:14', NULL, '2013-11-18 14:33:18', NULL, 0, 3, NULL, '2013-11-18 14:05:56', NULL, NULL),
(205, 19, '5323723949', 0, '53237', '', '3949', NULL, 2, 4, '2013-11-18 14:06:25', NULL, '2013-11-18 14:11:34', NULL, '2013-11-18 14:11:54', NULL, 0, 3, NULL, '2013-11-18 14:06:25', NULL, NULL),
(206, 20, '5323721930', 0, '53237', '', '1930', NULL, 2, 4, '2013-11-18 14:07:13', NULL, '2013-11-18 14:16:04', NULL, '2013-11-18 14:16:15', NULL, 0, 3, NULL, '2013-11-18 14:07:13', NULL, NULL),
(207, 21, '5323720439', 0, '53237', '', '0439', NULL, 2, 4, '2013-11-18 14:09:04', NULL, '2013-11-18 14:19:17', NULL, '2013-11-18 14:19:37', NULL, 0, 3, NULL, '2013-11-18 14:09:04', NULL, NULL),
(208, 22, '35507109992', 0, '35507', '', '09992', NULL, 1, 4, '2013-11-18 14:11:08', 0, NULL, NULL, '2013-11-18 14:58:05', NULL, 0, 3, NULL, '2013-11-18 14:11:08', NULL, NULL),
(209, 23, '35507109994', 0, '35507', '', '09994', NULL, 1, 4, '2013-11-18 14:11:26', NULL, NULL, NULL, '2013-11-18 14:58:08', NULL, 0, 3, NULL, '2013-11-18 14:11:26', NULL, NULL),
(210, 24, '35507109991', 0, '35507', '', '09991', NULL, 1, 4, '2013-11-18 14:11:37', NULL, NULL, NULL, '2013-11-18 15:01:06', NULL, 0, 3, NULL, '2013-11-18 14:11:37', NULL, NULL),
(211, 25, '5323712486', 0, '53237', '', '2486', NULL, 1, 4, '2013-11-18 14:19:10', NULL, '2013-11-18 14:25:59', NULL, '2013-11-18 14:26:03', NULL, 0, 3, NULL, '2013-11-18 14:19:10', NULL, NULL),
(212, 26, '5323710487', 0, '53237', '', '0487', NULL, 1, 4, '2013-11-18 14:26:20', NULL, '2013-11-18 15:06:37', NULL, '2013-11-18 15:10:39', NULL, 0, 3, NULL, '2013-11-18 14:26:20', NULL, NULL),
(213, 27, '5323720682', 0, '53237', '', '0682', NULL, 2, 4, '2013-11-18 14:29:53', NULL, '2013-11-18 14:42:52', NULL, '2013-11-18 14:43:22', NULL, 0, 3, NULL, '2013-11-18 14:29:53', NULL, NULL),
(214, 28, '5323712906', 0, '53237', '', '2906', NULL, 1, 4, '2013-11-18 14:29:58', NULL, '2013-11-18 15:04:49', NULL, '2013-11-18 15:05:50', NULL, 0, 3, NULL, '2013-11-18 14:29:58', NULL, NULL),
(215, 29, '5323722622', 0, '53237', '', '2622', NULL, 2, 4, '2013-11-18 14:30:05', NULL, '2013-11-18 14:34:57', NULL, '2013-11-18 14:35:09', NULL, 0, 3, NULL, '2013-11-18 14:30:05', NULL, NULL),
(216, 30, '3550721894', 0, '35507', '', '1894', NULL, 2, 4, '2013-11-18 14:33:27', NULL, '2013-11-18 14:33:57', NULL, '2013-11-18 14:34:02', NULL, 0, 3, NULL, '2013-11-18 14:33:27', NULL, NULL),
(217, 31, '5323721331', 0, '53237', '', '1331', NULL, 2, 4, '2013-11-18 14:33:40', NULL, '2013-11-18 14:44:15', NULL, '2013-11-18 14:44:34', NULL, 0, 3, NULL, '2013-11-18 14:33:40', NULL, NULL),
(218, 32, '3550721281', 0, '35507', '', '1281', NULL, 2, 4, '2013-11-18 14:34:04', NULL, '2013-11-18 14:35:24', NULL, '2013-11-18 14:35:30', NULL, 0, 3, NULL, '2013-11-18 14:34:04', NULL, NULL),
(219, 33, '3550713214', 0, '35507', '', '3214', NULL, 1, 4, '2013-11-18 14:40:34', NULL, '2013-11-18 15:19:45', NULL, '2013-11-18 15:20:48', NULL, 0, 3, NULL, '2013-11-18 14:40:34', NULL, NULL),
(220, 34, '3550720290', 0, '35507', '', '0290', NULL, 2, 4, '2013-11-18 14:40:40', NULL, '2013-11-18 14:41:08', NULL, '2013-11-18 14:41:15', NULL, 0, 3, NULL, '2013-11-18 14:40:40', NULL, NULL),
(221, 35, '5323723176', 0, '53237', '', '3176', NULL, 2, 4, '2013-11-18 14:44:00', NULL, NULL, NULL, '2013-11-18 14:46:03', NULL, 0, 3, NULL, '2013-11-18 14:44:00', NULL, NULL),
(222, 36, '5323722730', 0, '53237', '', '2730', NULL, 2, 4, '2013-11-18 15:01:11', NULL, '2013-11-18 15:02:40', NULL, '2013-11-18 15:03:14', NULL, 0, 3, NULL, '2013-11-18 15:01:11', NULL, NULL),
(223, 37, '3550721146', 0, '35507', '', '1146', NULL, 2, 4, '2013-11-18 15:02:11', NULL, '2013-11-18 15:02:43', NULL, '2013-11-18 15:02:47', NULL, 0, 3, NULL, '2013-11-18 15:02:11', NULL, NULL),
(224, 38, '53237100993', 0, '53237', '', '00993', NULL, 1, 4, '2013-11-18 15:05:16', NULL, NULL, NULL, '2013-11-18 15:05:53', NULL, 0, 3, NULL, '2013-11-18 15:05:16', NULL, NULL),
(225, 39, '5323713042', 0, '53237', '', '3042', NULL, 1, 4, '2013-11-18 15:08:17', NULL, '2013-11-18 15:30:13', NULL, '2013-11-18 15:32:25', NULL, 0, 3, NULL, '2013-11-18 15:08:17', NULL, NULL),
(226, 40, '5323712585', 0, '53237', '', '2585', NULL, 1, 4, '2013-11-18 15:12:10', NULL, '2013-11-18 15:48:43', NULL, '2013-11-18 15:54:30', NULL, 0, 3, NULL, '2013-11-18 15:12:10', NULL, NULL),
(227, 41, '5323720830', 0, '53237', '', '0830', NULL, 2, 4, '2013-11-18 15:22:13', NULL, '2013-11-18 15:35:18', NULL, '2013-11-18 15:43:10', NULL, 0, 3, NULL, '2013-11-18 15:22:13', NULL, NULL),
(228, 42, '3550720931', 0, '35507', '', '0931', NULL, 2, 4, '2013-11-18 15:25:24', NULL, '2013-11-18 15:26:40', NULL, '2013-11-18 15:29:42', NULL, 0, 3, NULL, '2013-11-18 15:25:24', NULL, NULL),
(229, 43, '3550721613', 0, '35507', '', '1613', NULL, 2, 4, '2013-11-18 15:42:14', NULL, '2013-11-18 15:43:18', NULL, '2013-11-18 15:43:49', NULL, 0, 3, NULL, '2013-11-18 15:42:14', NULL, NULL),
(230, 44, '5323710858', 0, '53237', '', '0858', NULL, 1, 4, '2013-11-18 15:48:04', NULL, '2013-11-18 15:55:08', NULL, '2013-11-18 15:55:12', NULL, 0, 3, NULL, '2013-11-18 15:48:04', NULL, NULL),
(231, 45, '5323713250', 0, '53237', '', '3250', NULL, 1, 4, '2013-11-18 15:53:51', NULL, '2013-11-18 15:59:44', NULL, '2013-11-18 15:59:50', NULL, 0, 3, NULL, '2013-11-18 15:53:51', NULL, NULL),
(232, 46, '5323712523', 0, '53237', '', '2523', NULL, 1, 4, '2013-11-18 15:54:21', NULL, '2013-11-18 15:56:38', NULL, '2013-11-18 15:58:05', NULL, 0, 3, NULL, '2013-11-18 15:54:21', NULL, NULL),
(233, 47, '35507104002', 0, '35507', '', '04002', NULL, 1, 4, '2013-11-18 15:57:04', NULL, '2013-11-18 16:18:18', NULL, '2013-11-18 16:21:42', NULL, 0, 3, NULL, '2013-11-18 15:57:04', NULL, NULL),
(234, 48, '5323713156', 0, '53237', '', '3156', NULL, 1, 4, '2013-11-18 16:07:09', NULL, '2013-11-18 16:21:46', NULL, '2013-11-18 16:22:43', NULL, 0, 3, NULL, '2013-11-18 16:07:09', NULL, NULL),
(235, 49, '5323712148', 0, '53237', '', '2148', NULL, 1, 4, '2013-11-18 16:40:41', NULL, '2013-11-18 16:49:33', NULL, '2013-11-18 16:49:59', NULL, 0, 3, NULL, '2013-11-18 16:40:41', NULL, NULL),
(236, 50, '3550713300', 0, '35507', '', '3300', NULL, 1, 4, '2013-11-18 16:46:39', NULL, '2013-11-18 16:47:11', NULL, '2013-11-18 16:47:15', NULL, 0, 3, NULL, '2013-11-18 16:46:39', NULL, NULL),
(237, 51, '35507109999', 0, '35507', '', '09999', NULL, 1, 4, '2013-11-18 16:48:26', 0, NULL, NULL, '2013-11-18 17:02:24', NULL, 0, 3, NULL, '2013-11-18 16:48:26', NULL, NULL),
(238, 52, '5323710784', 0, '53237', '', '0784', NULL, 1, 4, '2013-11-18 16:50:39', NULL, '2013-11-18 17:02:43', NULL, '2013-11-18 17:04:36', NULL, 0, 3, NULL, '2013-11-18 16:50:39', NULL, NULL),
(239, 53, '5323720770', 0, '53237', '', '0770', NULL, 2, 4, '2013-11-18 16:51:28', NULL, '2013-11-18 16:57:13', NULL, '2013-11-18 16:57:21', NULL, 0, 3, NULL, '2013-11-18 16:51:28', NULL, NULL),
(240, 54, '3550713399', 0, '35507', '', '3399', NULL, 1, 4, '2013-11-18 16:52:16', NULL, '2013-11-18 17:05:49', NULL, '2013-11-18 17:07:13', NULL, 0, 3, NULL, '2013-11-18 16:52:16', NULL, NULL),
(241, 55, '35507109996', 0, '35507', '', '09996', NULL, 1, 4, '2013-11-18 16:52:23', 0, NULL, NULL, '2013-11-18 17:09:09', NULL, 0, 3, NULL, '2013-11-18 16:52:23', NULL, NULL),
(242, 56, '3550723852', 0, '35507', '', '3852', NULL, 2, 4, '2013-11-18 17:03:21', NULL, '2013-11-18 17:09:01', NULL, '2013-11-18 17:09:59', NULL, 0, 3, NULL, '2013-11-18 17:03:21', NULL, NULL),
(243, 57, '5323713684', 0, '53237', '', '3684', NULL, 1, 4, '2013-11-18 17:22:12', NULL, '2013-11-18 17:28:35', NULL, '2013-11-18 17:29:28', NULL, 0, 3, NULL, '2013-11-18 17:22:12', NULL, NULL),
(244, 58, '5323713981', 0, '53237', '', '3981', NULL, 1, 4, '2013-11-18 17:24:02', NULL, '2013-11-18 17:24:09', NULL, '2013-11-18 17:24:16', NULL, 0, 3, NULL, '2013-11-18 17:24:02', NULL, NULL),
(245, 59, '5323713857', 0, '53237', '', '3857', NULL, 1, 4, '2013-11-18 17:24:12', NULL, '2013-11-18 17:27:19', NULL, '2013-11-18 17:30:30', NULL, 0, 3, NULL, '2013-11-18 17:24:12', NULL, NULL),
(246, 1, '5323712036', 0, '53237', '', '2036', NULL, 1, 4, '2013-11-19 07:44:20', NULL, '2013-11-19 08:08:36', NULL, '2013-11-19 08:09:02', NULL, 0, 3, NULL, '2013-11-19 07:44:20', NULL, NULL),
(247, 2, '5323722960', 0, '53237', '', '2960', NULL, 2, 4, '2013-11-19 07:45:10', NULL, '2013-11-19 07:54:02', NULL, '2013-11-19 08:01:22', NULL, 0, 3, NULL, '2013-11-19 07:45:10', NULL, NULL),
(248, 3, '5323721797', 0, '53237', '', '1797', NULL, 2, 4, '2013-11-19 07:51:09', NULL, '2013-11-19 08:01:28', NULL, '2013-11-19 08:02:01', NULL, 0, 3, NULL, '2013-11-19 07:51:09', NULL, NULL),
(249, 4, '5323723407', 0, '53237', '', '3407', NULL, 2, 4, '2013-11-19 08:03:37', NULL, '2013-11-19 08:04:20', NULL, '2013-11-19 08:05:12', NULL, 0, 3, NULL, '2013-11-19 08:03:37', NULL, NULL),
(250, 5, '3550720837', 0, '35507', '', '0837', NULL, 2, 4, '2013-11-19 08:06:07', NULL, '2013-11-19 08:09:56', NULL, NULL, NULL, 0, 3, NULL, '2013-11-19 08:06:07', NULL, NULL),
(251, 6, '5323722468', 0, '53237', '', '2468', NULL, 2, 4, '2013-11-19 08:12:13', NULL, '2013-11-19 08:18:51', NULL, '2013-11-19 08:19:26', NULL, 0, 3, NULL, '2013-11-19 08:12:13', NULL, NULL),
(252, 7, '5323723917', 0, '53237', '', '3917', NULL, 2, 4, '2013-11-19 08:18:03', NULL, '2013-11-19 08:21:05', NULL, '2013-11-19 08:21:35', NULL, 0, 3, NULL, '2013-11-19 08:18:03', NULL, NULL),
(253, 8, '5323722859', 0, '53237', '', '2859', NULL, 2, 4, '2013-11-19 08:18:05', NULL, '2013-11-19 08:24:08', NULL, '2013-11-19 08:24:17', NULL, 0, 3, NULL, '2013-11-19 08:18:05', NULL, NULL),
(254, 9, '5323721732', 0, '53237', '', '1732', NULL, 2, 4, '2013-11-19 08:29:15', NULL, '2013-11-19 08:34:56', NULL, '2013-11-19 08:35:52', NULL, 0, 3, NULL, '2013-11-19 08:29:15', NULL, NULL),
(255, 10, '5323720327', 0, '53237', '', '0327', NULL, 2, 4, '2013-11-19 08:32:23', NULL, '2013-11-19 08:41:54', NULL, '2013-11-19 08:42:11', NULL, 0, 3, NULL, '2013-11-19 08:32:23', NULL, NULL),
(256, 11, '5323719834', 0, '53237', '', '9834', NULL, 1, 1, '2013-11-19 08:40:33', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-19 08:40:33', NULL, NULL),
(257, 12, '5323722478', 0, '53237', '', '2478', NULL, 2, 4, '2013-11-19 08:40:52', NULL, '2013-11-19 08:55:52', NULL, '2013-11-19 08:56:07', NULL, 0, 3, NULL, '2013-11-19 08:40:52', NULL, NULL),
(258, 13, '5323711306', 0, '53237', '', '1306', NULL, 1, 4, '2013-11-19 08:41:14', NULL, '2013-11-19 08:45:09', NULL, '2013-11-19 08:48:58', NULL, 0, 3, NULL, '2013-11-19 08:41:14', NULL, NULL),
(259, 14, '5323713723', 0, '53237', '', '3723', NULL, 1, 4, '2013-11-19 08:44:58', NULL, '2013-11-19 08:50:34', NULL, '2013-11-19 08:51:49', NULL, 0, 3, NULL, '2013-11-19 08:44:58', NULL, NULL),
(260, 15, '5323721926', 0, '53237', '', '1926', NULL, 2, 4, '2013-11-19 08:45:23', NULL, '2013-11-19 09:08:11', NULL, '2013-11-19 09:08:33', NULL, 0, 3, NULL, '2013-11-19 08:45:23', NULL, NULL),
(261, 16, '5323711050', 0, '53237', '', '1050', NULL, 1, 4, '2013-11-19 08:52:17', NULL, '2013-11-19 08:53:49', NULL, '2013-11-19 09:00:27', NULL, 0, 3, NULL, '2013-11-19 08:52:17', NULL, NULL),
(262, 17, '3550713214', 0, '35507', '', '3214', NULL, 1, 4, '2013-11-19 08:54:46', NULL, '2013-11-19 09:11:19', NULL, '2013-11-19 09:13:40', NULL, 0, 3, NULL, '2013-11-19 08:54:46', NULL, NULL),
(263, 18, '3550711837', 0, '35507', '', '1837', NULL, 1, 4, '2013-11-19 09:02:03', NULL, '2013-11-19 09:10:01', NULL, '2013-11-19 09:11:14', NULL, 0, 3, NULL, '2013-11-19 09:02:03', NULL, NULL),
(264, 19, '3550721197', 0, '35507', '', '1197', NULL, 2, 4, '2013-11-19 09:14:57', NULL, NULL, NULL, '2013-11-19 10:45:43', NULL, 0, 3, NULL, '2013-11-19 09:14:57', NULL, NULL),
(265, 20, '5323710964', 0, '53237', '', '0964', NULL, 1, 4, '2013-11-19 09:16:02', NULL, '2013-11-19 09:23:23', NULL, '2013-11-19 09:25:27', NULL, 0, 3, NULL, '2013-11-19 09:16:02', NULL, NULL),
(266, 21, '5323711405', 0, '53237', '', '1405', NULL, 1, 4, '2013-11-19 09:24:48', NULL, '2013-11-19 09:26:12', NULL, '2013-11-19 09:27:17', NULL, 0, 3, NULL, '2013-11-19 09:24:48', NULL, NULL),
(267, 22, '3550711005', 0, '35507', '', '1005', NULL, 1, 4, '2013-11-19 09:25:47', NULL, '2013-11-19 09:29:49', NULL, '2013-11-19 09:30:31', NULL, 0, 3, NULL, '2013-11-19 09:25:47', NULL, NULL),
(268, 23, '5323721897', 0, '53237', '', '1897', NULL, 2, 4, '2013-11-19 09:38:00', NULL, '2013-11-19 09:41:26', NULL, '2013-11-19 09:41:42', NULL, 0, 3, NULL, '2013-11-19 09:38:00', NULL, NULL);
INSERT INTO `nocore_barcode_full` (`fullid`, `id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(269, 24, '3550710615', 0, '35507', '', '0615', NULL, 1, 4, '2013-11-19 09:43:31', NULL, '2013-11-19 10:09:03', NULL, '2013-11-19 10:09:37', NULL, 0, 3, NULL, '2013-11-19 09:43:31', NULL, NULL),
(270, 25, '5323713658', 0, '53237', '', '3658', NULL, 1, 4, '2013-11-19 09:51:33', 0, '2013-11-19 09:58:38', NULL, '2013-11-19 10:00:05', NULL, 0, 3, NULL, '2013-11-19 09:51:33', NULL, NULL),
(271, 26, '5323720760', 0, '53237', '', '0760', NULL, 2, 1, '2013-11-19 09:54:11', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-19 09:54:11', NULL, NULL),
(272, 27, '5323721961', 0, '53237', '', '1961', NULL, 2, 4, '2013-11-19 09:57:06', NULL, '2013-11-19 10:24:23', NULL, '2013-11-19 10:27:26', NULL, 0, 3, NULL, '2013-11-19 09:57:06', NULL, NULL),
(273, 28, '5323712783', 0, '53237', '', '2783', NULL, 1, 4, '2013-11-19 09:58:41', NULL, '2013-11-19 10:00:45', NULL, '2013-11-19 10:02:24', NULL, 0, 3, NULL, '2013-11-19 09:58:41', NULL, NULL),
(274, 29, '5323713506', 0, '53237', '', '3506', NULL, 1, 4, '2013-11-19 09:59:29', NULL, '2013-11-19 10:04:41', NULL, '2013-11-19 10:07:28', NULL, 0, 3, NULL, '2013-11-19 09:59:29', NULL, NULL),
(275, 30, '5323713541', 0, '53237', '', '3541', NULL, 1, 4, '2013-11-19 10:02:23', NULL, '2013-11-19 10:09:40', NULL, '2013-11-19 10:11:57', NULL, 0, 3, NULL, '2013-11-19 10:02:23', NULL, NULL),
(276, 31, '5323711653', 0, '53237', '', '1653', NULL, 1, 4, '2013-11-19 10:05:03', NULL, '2013-11-19 10:17:30', NULL, NULL, NULL, 0, 3, NULL, '2013-11-19 10:05:03', NULL, NULL),
(277, 32, '5323722989', 0, '53237', '', '2989', NULL, 2, 4, '2013-11-19 10:08:20', NULL, '2013-11-19 10:32:53', NULL, '2013-11-19 10:32:58', NULL, 0, 3, NULL, '2013-11-19 10:08:20', NULL, NULL),
(278, 33, '5323721647', 0, '53237', '', '1647', NULL, 2, 4, '2013-11-19 10:08:48', NULL, NULL, NULL, '2013-11-19 10:34:33', NULL, 0, 3, NULL, '2013-11-19 10:08:48', NULL, NULL),
(279, 34, '5323720288', 0, '53237', '', '0288', NULL, 2, 4, '2013-11-19 10:09:37', NULL, '2013-11-19 10:37:52', NULL, '2013-11-19 10:38:01', NULL, 0, 3, NULL, '2013-11-19 10:09:37', NULL, NULL),
(280, 35, '5323712585', 0, '53237', '', '2585', NULL, 1, 4, '2013-11-19 10:13:58', NULL, '2013-11-19 10:24:13', NULL, '2013-11-19 10:26:45', NULL, 0, 3, NULL, '2013-11-19 10:13:58', NULL, NULL),
(281, 36, '5323720055', 0, '53237', '', '0055', NULL, 2, 4, '2013-11-19 10:17:18', NULL, '2013-11-19 10:43:21', NULL, '2013-11-19 10:43:46', NULL, 0, 3, NULL, '2013-11-19 10:17:18', NULL, NULL),
(282, 37, '5323721722', 0, '53237', '', '1722', NULL, 2, 4, '2013-11-19 10:35:04', NULL, '2013-11-19 10:55:44', NULL, '2013-11-19 10:56:11', NULL, 0, 3, NULL, '2013-11-19 10:35:04', NULL, NULL),
(283, 38, '3550720821', 0, '35507', '', '0821', NULL, 2, 4, '2013-11-19 10:35:23', NULL, NULL, NULL, '2013-11-19 10:45:45', NULL, 0, 3, NULL, '2013-11-19 10:35:23', NULL, NULL),
(284, 39, '5323720286', 0, '53237', '', '0286', NULL, 2, 4, '2013-11-19 10:48:37', NULL, '2013-11-19 10:57:20', NULL, '2013-11-19 10:57:39', NULL, 0, 3, NULL, '2013-11-19 10:48:37', NULL, NULL),
(285, 40, '5323720969', 0, '53237', '', '0969', NULL, 2, 4, '2013-11-19 10:54:44', NULL, '2013-11-19 11:05:03', NULL, '2013-11-19 11:05:59', NULL, 0, 3, NULL, '2013-11-19 10:54:44', NULL, NULL),
(286, 41, '5323712930', 0, '53237', '', '2930', NULL, 1, 4, '2013-11-19 10:56:34', NULL, '2013-11-19 10:58:34', NULL, '2013-11-19 11:00:05', NULL, 0, 3, NULL, '2013-11-19 10:56:34', NULL, NULL),
(287, 42, '5323721348', 0, '53237', '', '1348', NULL, 2, 4, '2013-11-19 10:57:55', NULL, '2013-11-19 11:09:17', NULL, '2013-11-19 11:10:08', NULL, 0, 3, NULL, '2013-11-19 10:57:55', NULL, NULL),
(288, 43, '5323722939', 0, '53237', '', '2939', NULL, 2, 4, '2013-11-19 10:58:42', NULL, '2013-11-19 11:04:33', NULL, '2013-11-19 11:04:51', NULL, 0, 3, NULL, '2013-11-19 10:58:42', NULL, NULL),
(289, 44, '3550723210', 0, '35507', '', '3210', NULL, 2, 4, '2013-11-19 11:00:00', NULL, NULL, NULL, '2013-11-19 13:23:08', NULL, 0, 3, NULL, '2013-11-19 11:00:00', NULL, NULL),
(290, 45, '5323710317', 0, '53237', '', '0317', NULL, 1, 4, '2013-11-19 11:04:57', NULL, '2013-11-19 11:06:34', NULL, '2013-11-19 11:07:41', NULL, 0, 3, NULL, '2013-11-19 11:04:57', NULL, NULL),
(291, 46, '5323712787', 0, '53237', '', '2787', NULL, 1, 4, '2013-11-19 11:07:06', NULL, '2013-11-19 11:11:10', NULL, '2013-11-19 11:11:58', NULL, 0, 3, NULL, '2013-11-19 11:07:06', NULL, NULL),
(292, 47, '3550713885', 0, '35507', '', '3885', NULL, 1, 4, '2013-11-19 11:13:01', NULL, '2013-11-19 11:20:09', NULL, '2013-11-19 11:20:14', NULL, 0, 3, NULL, '2013-11-19 11:13:01', NULL, NULL),
(293, 48, '5323722127', 0, '53237', '', '2127', NULL, 2, 4, '2013-11-19 11:13:35', NULL, '2013-11-19 11:24:00', NULL, '2013-11-19 11:25:09', NULL, 0, 3, NULL, '2013-11-19 11:13:35', NULL, NULL),
(294, 1, '5323720272', 0, '53237', '', '0272', NULL, 2, 4, '2013-11-20 13:30:49', NULL, '2013-11-20 13:32:06', NULL, '2013-11-20 13:32:14', NULL, 0, 3, NULL, '2013-11-20 13:30:49', NULL, NULL),
(295, 2, '3550710887', 0, '35507', '', '0887', NULL, 1, 4, '2013-11-20 13:42:47', NULL, '2013-11-20 14:32:39', NULL, '2013-11-20 14:33:13', NULL, 0, 3, NULL, '2013-11-20 13:42:47', NULL, NULL),
(296, 3, '5323720756', 0, '53237', '', '0756', NULL, 2, 4, '2013-11-20 13:46:56', NULL, '2013-11-20 13:49:45', NULL, '2013-11-20 13:49:56', NULL, 0, 3, NULL, '2013-11-20 13:46:56', NULL, NULL),
(297, 4, '3550729818', 0, '35507', '', '9818', NULL, 2, 1, '2013-11-20 13:50:50', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-20 13:50:50', NULL, NULL),
(298, 5, '3550720632', 0, '35507', '', '0632', NULL, 2, 4, '2013-11-20 13:52:06', NULL, '2013-11-20 14:15:43', NULL, '2013-11-20 14:15:54', NULL, 0, 3, NULL, '2013-11-20 13:52:06', NULL, NULL),
(299, 6, '5323720439', 0, '53237', '', '0439', NULL, 2, 4, '2013-11-20 13:52:40', NULL, '2013-11-20 13:56:52', NULL, '2013-11-20 13:57:03', NULL, 0, 3, NULL, '2013-11-20 13:52:40', NULL, NULL),
(300, 7, '5323722495', 0, '53237', '', '2495', NULL, 2, 4, '2013-11-20 13:53:16', NULL, '2013-11-20 13:58:25', NULL, '2013-11-20 13:58:27', NULL, 0, 3, NULL, '2013-11-20 13:53:16', NULL, NULL),
(301, 8, '5323721179', 0, '53237', '', '1179', NULL, 2, 4, '2013-11-20 13:56:59', NULL, '2013-11-20 14:17:20', NULL, '2013-11-20 14:17:31', NULL, 0, 3, NULL, '2013-11-20 13:56:59', NULL, NULL),
(302, 9, '3550721837', 0, '35507', '', '1837', NULL, 2, 4, '2013-11-20 13:57:19', NULL, '2013-11-20 14:18:16', NULL, '2013-11-20 14:18:31', NULL, 0, 3, NULL, '2013-11-20 13:57:19', NULL, NULL),
(303, 10, '3550723842', 0, '35507', '', '3842', NULL, 2, 4, '2013-11-20 14:01:13', NULL, '2013-11-20 14:20:36', NULL, '2013-11-20 14:20:49', NULL, 0, 3, NULL, '2013-11-20 14:01:13', NULL, NULL),
(304, 11, '5323710373', 0, '53237', '', '0373', NULL, 1, 4, '2013-11-20 14:06:14', NULL, '2013-11-20 14:43:03', NULL, '2013-11-20 14:52:24', NULL, 0, 3, NULL, '2013-11-20 14:06:14', NULL, NULL),
(305, 12, '53237104187', 0, '53237', '', '04187', NULL, 1, 4, '2013-11-20 14:07:51', NULL, '2013-11-20 14:47:12', NULL, '2013-11-20 14:49:41', NULL, 0, 3, NULL, '2013-11-20 14:07:51', NULL, NULL),
(306, 13, '3550710354', 0, '35507', '', '0354', NULL, 1, 4, '2013-11-20 14:08:21', NULL, '2013-11-20 14:57:46', NULL, '2013-11-20 15:01:31', NULL, 0, 3, NULL, '2013-11-20 14:08:21', NULL, NULL),
(307, 14, '5323720589', 0, '53237', '', '0589', NULL, 2, 4, '2013-11-20 14:09:10', NULL, '2013-11-20 14:25:16', NULL, '2013-11-20 14:25:37', NULL, 0, 3, NULL, '2013-11-20 14:09:10', NULL, NULL),
(308, 15, '3550723549', 0, '35507', '', '3549', NULL, 2, 4, '2013-11-20 14:10:42', NULL, '2013-11-20 14:29:02', NULL, '2013-11-20 14:29:26', NULL, 0, 3, NULL, '2013-11-20 14:10:42', NULL, NULL),
(309, 16, '3550721376', 0, '35507', '', '1376', NULL, 2, 4, '2013-11-20 14:12:44', NULL, '2013-11-20 14:29:31', NULL, '2013-11-20 14:31:20', NULL, 0, 3, NULL, '2013-11-20 14:12:44', NULL, NULL),
(310, 17, '3550721515', 0, '35507', '', '1515', NULL, 2, 4, '2013-11-20 14:13:36', NULL, '2013-11-20 14:32:09', NULL, NULL, NULL, 0, 3, NULL, '2013-11-20 14:13:36', NULL, NULL),
(311, 18, '5323722444', 0, '53237', '', '2444', NULL, 2, 4, '2013-11-20 14:14:06', NULL, '2013-11-20 14:39:56', NULL, '2013-11-20 14:41:14', NULL, 0, 3, NULL, '2013-11-20 14:14:06', NULL, NULL),
(312, 19, '5323720902', 0, '53237', '', '0902', NULL, 2, 4, '2013-11-20 14:15:34', NULL, NULL, NULL, '2013-11-20 14:41:37', NULL, 0, 3, NULL, '2013-11-20 14:15:34', NULL, NULL),
(313, 20, '3550723468', 0, '35507', '', '3468', NULL, 2, 4, '2013-11-20 14:26:55', NULL, NULL, NULL, '2013-11-20 15:22:32', NULL, 0, 3, NULL, '2013-11-20 14:26:55', NULL, NULL),
(314, 21, '5323720437', 0, '53237', '', '0437', NULL, 2, 4, '2013-11-20 14:33:43', NULL, '2013-11-20 14:51:15', NULL, '2013-11-20 14:51:25', NULL, 0, 3, NULL, '2013-11-20 14:33:43', NULL, NULL),
(315, 22, '5323713303', 0, '53237', '', '3303', NULL, 1, 4, '2013-11-20 14:44:02', NULL, '2013-11-20 15:01:49', NULL, '2013-11-20 15:02:34', NULL, 0, 3, NULL, '2013-11-20 14:44:02', NULL, NULL),
(316, 23, '3550722370', 0, '35507', '', '2370', NULL, 2, 4, '2013-11-20 14:44:13', NULL, NULL, NULL, '2013-11-20 15:22:34', NULL, 0, 3, NULL, '2013-11-20 14:44:13', NULL, NULL),
(317, 24, '5323720256', 0, '53237', '', '0256', NULL, 2, 4, '2013-11-20 14:56:03', NULL, '2013-11-20 15:07:36', NULL, '2013-11-20 15:07:49', NULL, 0, 3, NULL, '2013-11-20 14:56:03', NULL, NULL),
(318, 25, '5323723807', 0, '53237', '', '3807', NULL, 2, 4, '2013-11-20 14:58:11', NULL, '2013-11-20 15:08:43', NULL, '2013-11-20 15:08:55', NULL, 0, 3, NULL, '2013-11-20 14:58:11', NULL, NULL),
(319, 26, '3550723353', 0, '35507', '', '3353', NULL, 2, 4, '2013-11-20 15:00:13', NULL, NULL, NULL, '2013-11-20 15:22:30', NULL, 0, 3, NULL, '2013-11-20 15:00:13', NULL, NULL),
(320, 27, '5323711559', 0, '53237', '', '1559', NULL, 1, 4, '2013-11-20 15:02:28', NULL, '2013-11-20 15:17:23', NULL, '2013-11-20 15:19:08', NULL, 0, 3, NULL, '2013-11-20 15:02:28', NULL, NULL),
(321, 28, '3550713186', 0, '35507', '', '3186', NULL, 1, 4, '2013-11-20 15:03:21', NULL, '2013-11-20 15:22:23', NULL, '2013-11-20 15:25:06', NULL, 0, 3, NULL, '2013-11-20 15:03:21', NULL, NULL),
(322, 29, '3550712758', 0, '35507', '', '2758', NULL, 1, 4, '2013-11-20 15:03:33', NULL, NULL, NULL, '2013-11-20 15:22:26', NULL, 0, 3, NULL, '2013-11-20 15:03:33', NULL, NULL),
(323, 30, '5323722824', 0, '53237', '', '2824', NULL, 2, 4, '2013-11-20 15:03:45', NULL, '2013-11-20 15:23:16', NULL, '2013-11-20 15:23:25', NULL, 0, 3, NULL, '2013-11-20 15:03:45', NULL, NULL),
(324, 31, '5323712438', 0, '53237', '', '2438', NULL, 1, 4, '2013-11-20 15:06:04', NULL, '2013-11-20 15:30:52', NULL, '2013-11-20 15:32:18', NULL, 0, 3, NULL, '2013-11-20 15:06:04', NULL, NULL),
(325, 32, '35507104196', 0, '35507', '', '04196', NULL, 1, 4, '2013-11-20 15:08:04', NULL, '2013-11-20 15:26:22', NULL, '2013-11-20 15:29:13', NULL, 0, 3, NULL, '2013-11-20 15:08:04', NULL, NULL),
(326, 33, '5323720887', 0, '53237', '', '0887', NULL, 2, 4, '2013-11-20 15:08:19', NULL, '2013-11-20 15:24:45', NULL, '2013-11-20 15:24:52', NULL, 0, 3, NULL, '2013-11-20 15:08:19', NULL, NULL),
(327, 34, '3550722035', 0, '35507', '', '2035', NULL, 2, 4, '2013-11-20 15:08:57', NULL, '2013-11-20 15:24:18', NULL, '2013-11-20 15:24:39', NULL, 0, 3, NULL, '2013-11-20 15:08:57', NULL, NULL),
(328, 35, '5323723914', 0, '53237', '', '3914', NULL, 2, 4, '2013-11-20 15:12:03', NULL, '2013-11-20 15:17:27', NULL, '2013-11-20 15:17:31', NULL, 0, 3, NULL, '2013-11-20 15:12:03', NULL, NULL),
(329, 36, '3550713214', 0, '35507', '', '3214', NULL, 1, 4, '2013-11-20 15:22:02', NULL, '2013-11-20 15:40:30', NULL, '2013-11-20 15:43:04', NULL, 0, 3, NULL, '2013-11-20 15:22:02', NULL, NULL),
(330, 37, '5323713632', 0, '53237', '', '3632', NULL, 1, 4, '2013-11-20 15:27:19', NULL, '2013-11-20 15:34:42', NULL, '2013-11-20 15:37:45', NULL, 0, 3, NULL, '2013-11-20 15:27:19', NULL, NULL),
(331, 38, '5323722118', 0, '53237', '', '2118', NULL, 2, 4, '2013-11-20 15:27:51', NULL, '2013-11-20 15:33:07', NULL, '2013-11-20 15:33:16', NULL, 0, 3, NULL, '2013-11-20 15:27:51', NULL, NULL),
(332, 39, '5323721125', 0, '53237', '', '1125', NULL, 2, 4, '2013-11-20 15:28:15', NULL, '2013-11-20 15:41:47', NULL, '2013-11-20 15:41:55', NULL, 0, 3, NULL, '2013-11-20 15:28:15', NULL, NULL),
(333, 40, '5323722444', 0, '53237', '', '2444', NULL, 2, 4, '2013-11-20 15:48:32', NULL, '2013-11-20 15:49:38', NULL, '2013-11-20 15:50:18', NULL, 0, 3, NULL, '2013-11-20 15:48:32', NULL, NULL),
(334, 41, '5323723740', 0, '53237', '', '3740', NULL, 2, 4, '2013-11-20 15:53:27', NULL, '2013-11-20 15:53:53', NULL, '2013-11-20 15:57:10', NULL, 0, 3, NULL, '2013-11-20 15:53:27', NULL, NULL),
(335, 42, '5323713020', 0, '53237', '', '3020', NULL, 1, 4, '2013-11-20 15:57:10', NULL, '2013-11-20 16:09:08', NULL, '2013-11-20 16:09:36', NULL, 0, 3, NULL, '2013-11-20 15:57:10', NULL, NULL),
(336, 43, '5323711633', 0, '53237', '', '1633', NULL, 1, 4, '2013-11-20 15:59:47', NULL, '2013-11-20 16:09:45', NULL, '2013-11-20 16:10:21', NULL, 0, 3, NULL, '2013-11-20 15:59:47', NULL, NULL),
(337, 44, '53237104141', 0, '53237', '', '04141', NULL, 1, 4, '2013-11-20 16:01:44', NULL, '2013-11-20 16:10:30', NULL, '2013-11-20 16:15:54', NULL, 0, 3, NULL, '2013-11-20 16:01:44', NULL, NULL),
(338, 45, '35507104165', 0, '35507', '', '04165', NULL, 1, 4, '2013-11-20 16:07:01', NULL, NULL, NULL, '2013-11-20 16:13:45', NULL, 0, 3, NULL, '2013-11-20 16:07:01', NULL, NULL),
(339, 46, '35507109998', 0, '35507', '', '09998', NULL, 1, 4, '2013-11-20 16:08:22', 0, NULL, NULL, '2013-11-20 16:29:05', NULL, 0, 3, NULL, '2013-11-20 16:08:22', NULL, NULL),
(340, 47, '5323723987', 0, '53237', '', '3987', NULL, 2, 4, '2013-11-20 16:12:13', NULL, '2013-11-20 16:22:06', NULL, '2013-11-20 16:23:27', NULL, 0, 3, NULL, '2013-11-20 16:12:13', NULL, NULL),
(341, 48, '5323721019', 0, '53237', '', '1019', NULL, 2, 4, '2013-11-20 16:21:33', NULL, '2013-11-20 16:23:37', NULL, '2013-11-20 16:23:45', NULL, 0, 3, NULL, '2013-11-20 16:21:33', NULL, NULL),
(342, 49, '3550713897', 0, '35507', '', '3897', NULL, 1, 4, '2013-11-20 16:44:42', NULL, '2013-11-20 16:51:30', NULL, '2013-11-20 16:54:32', NULL, 0, 3, NULL, '2013-11-20 16:44:42', NULL, NULL),
(343, 50, '3550721551', 0, '35507', '', '1551', NULL, 2, 4, '2013-11-20 16:48:16', NULL, '2013-11-20 17:13:49', NULL, '2013-11-20 17:14:07', NULL, 0, 3, NULL, '2013-11-20 16:48:16', NULL, NULL),
(344, 51, '5323710727', 0, '53237', '', '0727', NULL, 1, 4, '2013-11-20 16:52:49', NULL, '2013-11-20 16:59:49', NULL, '2013-11-20 17:01:38', NULL, 0, 3, NULL, '2013-11-20 16:52:49', NULL, NULL),
(345, 52, '5323720551', 0, '53237', '', '0551', NULL, 2, 4, '2013-11-20 16:58:12', NULL, '2013-11-20 17:17:43', NULL, '2013-11-20 17:18:04', NULL, 0, 3, NULL, '2013-11-20 16:58:12', NULL, NULL),
(346, 53, '5323721742', 0, '53237', '', '1742', NULL, 2, 4, '2013-11-20 16:59:47', NULL, '2013-11-20 17:14:33', NULL, '2013-11-20 17:14:47', NULL, 0, 3, NULL, '2013-11-20 16:59:47', NULL, NULL),
(347, 54, '3550721376', 0, '35507', '', '1376', NULL, 2, 4, '2013-11-20 17:05:20', NULL, '2013-11-20 17:21:31', NULL, '2013-11-20 17:24:50', NULL, 0, 3, NULL, '2013-11-20 17:05:20', NULL, NULL),
(348, 55, '5323711952', 0, '53237', '', '1952', NULL, 1, 4, '2013-11-20 17:05:36', NULL, '2013-11-20 17:06:54', NULL, '2013-11-20 17:08:03', NULL, 0, 3, NULL, '2013-11-20 17:05:36', NULL, NULL),
(349, 56, '5323712828', 0, '53237', '', '2828', NULL, 1, 4, '2013-11-20 17:09:11', NULL, '2013-11-20 17:10:15', NULL, '2013-11-20 17:10:53', NULL, 0, 3, NULL, '2013-11-20 17:09:11', NULL, NULL),
(350, 57, '5323720609', 0, '53237', '', '0609', NULL, 2, 4, '2013-11-20 17:16:30', NULL, '2013-11-20 17:27:22', NULL, '2013-11-20 17:29:18', NULL, 0, 3, NULL, '2013-11-20 17:16:30', NULL, NULL),
(351, 58, '5323710541', 0, '53237', '', '0541', NULL, 1, 4, '2013-11-20 17:30:30', NULL, '2013-11-20 17:31:27', NULL, '2013-11-20 17:31:54', NULL, 0, 3, NULL, '2013-11-20 17:30:30', NULL, NULL),
(352, 59, '5323713175', 0, '53237', '', '3175', NULL, 1, 4, '2013-11-20 17:31:07', NULL, '2013-11-20 17:31:57', NULL, '2013-11-20 17:33:11', NULL, 0, 3, NULL, '2013-11-20 17:31:07', NULL, NULL),
(353, 1, '5323721306', 0, '53237', '', '1306', NULL, 2, 4, '2013-11-21 07:45:18', NULL, '2013-11-21 07:53:15', NULL, '2013-11-21 08:00:29', NULL, 0, 3, NULL, '2013-11-21 07:45:18', NULL, NULL),
(354, 2, '5323720110', 0, '53237', '', '0110', NULL, 2, 4, '2013-11-21 07:51:33', NULL, '2013-11-21 08:03:05', NULL, '2013-11-21 08:03:49', NULL, 0, 3, NULL, '2013-11-21 07:51:33', NULL, NULL),
(355, 3, '3550722378', 0, '35507', '', '2378', NULL, 2, 4, '2013-11-21 07:57:21', NULL, '2013-11-21 07:59:45', NULL, NULL, NULL, 0, 3, NULL, '2013-11-21 07:57:21', NULL, NULL),
(356, 4, '5323713402', 0, '53237', '', '3402', NULL, 1, 4, '2013-11-21 08:25:22', NULL, '2013-11-21 08:27:57', NULL, '2013-11-21 08:28:50', NULL, 0, 3, NULL, '2013-11-21 08:25:22', NULL, NULL),
(357, 5, '3550722027', 0, '35507', '', '2027', NULL, 2, 4, '2013-11-21 08:35:53', NULL, NULL, NULL, '2013-11-21 09:06:06', NULL, 0, 3, NULL, '2013-11-21 08:35:53', NULL, NULL),
(358, 6, '3550713011', 0, '35507', '', '3011', NULL, 1, 4, '2013-11-21 08:39:25', NULL, '2013-11-21 08:39:49', NULL, '2013-11-21 08:44:57', NULL, 0, 3, NULL, '2013-11-21 08:39:25', NULL, NULL),
(359, 7, '3550720460', 0, '35507', '', '0460', NULL, 2, 4, '2013-11-21 08:40:57', NULL, NULL, NULL, '2013-11-21 09:06:07', NULL, 0, 3, NULL, '2013-11-21 08:40:57', NULL, NULL),
(360, 8, '5323723317', 0, '53237', '', '3317', NULL, 2, 4, '2013-11-21 08:47:26', NULL, '2013-11-21 08:48:48', NULL, '2013-11-21 08:48:55', NULL, 0, 3, NULL, '2013-11-21 08:47:26', NULL, NULL),
(361, 9, '5323720607', 0, '53237', '', '0607', NULL, 2, 4, '2013-11-21 08:51:19', NULL, '2013-11-21 09:04:45', NULL, '2013-11-21 09:05:03', NULL, 0, 3, NULL, '2013-11-21 08:51:19', NULL, NULL),
(362, 10, '5323723683', 0, '53237', '', '3683', NULL, 2, 4, '2013-11-21 08:56:14', NULL, '2013-11-21 09:10:00', NULL, '2013-11-21 09:10:12', NULL, 0, 3, NULL, '2013-11-21 08:56:14', NULL, NULL),
(363, 11, '5323723743', 0, '53237', '', '3743', NULL, 2, 4, '2013-11-21 09:01:39', NULL, '2013-11-21 09:11:02', NULL, '2013-11-21 09:13:54', NULL, 0, 3, NULL, '2013-11-21 09:01:39', NULL, NULL),
(364, 12, '3550721536', 0, '35507', '', '1536', NULL, 2, 1, '2013-11-21 09:17:20', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-21 09:17:20', NULL, NULL),
(365, 13, '5323720169', 0, '53237', '', '0169', NULL, 2, 4, '2013-11-21 09:26:05', NULL, '2013-11-21 09:28:07', NULL, '2013-11-21 09:28:13', NULL, 0, 3, NULL, '2013-11-21 09:26:05', NULL, NULL),
(366, 14, '5323720237', 0, '53237', '', '0237', NULL, 2, 4, '2013-11-21 09:28:47', NULL, '2013-11-21 09:40:57', NULL, '2013-11-21 09:41:55', NULL, 0, 3, NULL, '2013-11-21 09:28:47', NULL, NULL),
(367, 15, '5323720656', 0, '53237', '', '0656', NULL, 2, 4, '2013-11-21 09:30:45', NULL, '2013-11-21 10:05:03', NULL, '2013-11-21 10:05:09', NULL, 0, 3, NULL, '2013-11-21 09:30:45', NULL, NULL),
(368, 16, '5323721503', 0, '53237', '', '1503', NULL, 2, 4, '2013-11-21 09:30:49', NULL, '2013-11-21 10:06:13', NULL, '2013-11-21 10:07:30', NULL, 0, 3, NULL, '2013-11-21 09:30:49', NULL, NULL),
(369, 17, '5323721653', 0, '53237', '', '1653', NULL, 2, 4, '2013-11-21 09:33:07', NULL, '2013-11-21 10:10:06', NULL, '2013-11-21 10:10:22', NULL, 0, 3, NULL, '2013-11-21 09:33:07', NULL, NULL),
(370, 18, '5323724011', 0, '53237', '', '4011', NULL, 2, 4, '2013-11-21 09:44:24', NULL, '2013-11-21 10:02:48', NULL, '2013-11-21 10:03:40', NULL, 0, 3, NULL, '2013-11-21 09:44:24', NULL, NULL),
(371, 19, '5323723783', 0, '53237', '', '3783', NULL, 2, 4, '2013-11-21 09:55:20', NULL, '2013-11-21 10:13:21', NULL, '2013-11-21 10:13:32', NULL, 0, 3, NULL, '2013-11-21 09:55:20', NULL, NULL),
(372, 20, '5323721192', 0, '53237', '', '1192', NULL, 2, 4, '2013-11-21 10:04:36', NULL, '2013-11-21 10:32:15', NULL, '2013-11-21 10:32:47', NULL, 0, 3, NULL, '2013-11-21 10:04:36', NULL, NULL),
(373, 21, '3550722035', 0, '35507', '', '2035', NULL, 2, 1, '2013-11-21 10:05:58', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-21 10:05:58', NULL, NULL),
(374, 22, '3550710782', 0, '35507', '', '0782', NULL, 1, 4, '2013-11-21 10:08:07', NULL, '2013-11-21 10:21:15', NULL, '2013-11-21 10:25:12', NULL, 0, 3, NULL, '2013-11-21 10:08:07', NULL, NULL),
(375, 23, '5323722091', 0, '53237', '', '2091', NULL, 2, 4, '2013-11-21 10:22:17', NULL, '2013-11-21 10:36:00', NULL, '2013-11-21 10:36:06', NULL, 0, 3, NULL, '2013-11-21 10:22:17', NULL, NULL),
(376, 24, '5323711026', 0, '53237', '', '1026', NULL, 1, 4, '2013-11-21 10:26:13', NULL, '2013-11-21 10:43:08', NULL, '2013-11-21 10:44:01', NULL, 0, 3, NULL, '2013-11-21 10:26:13', NULL, NULL),
(377, 25, '5323720138', 0, '53237', '', '0138', NULL, 2, 4, '2013-11-21 10:35:13', NULL, '2013-11-21 10:42:32', NULL, '2013-11-21 10:42:51', NULL, 0, 3, NULL, '2013-11-21 10:35:13', NULL, NULL),
(378, 26, '5323711401', 0, '53237', '', '1401', NULL, 1, 4, '2013-11-21 10:35:46', NULL, '2013-11-21 10:44:06', NULL, '2013-11-21 10:45:11', NULL, 0, 3, NULL, '2013-11-21 10:35:46', NULL, NULL),
(379, 27, '5323722168', 0, '53237', '', '2168', NULL, 2, 4, '2013-11-21 10:37:28', NULL, '2013-11-21 10:44:28', NULL, '2013-11-21 10:44:36', NULL, 0, 3, NULL, '2013-11-21 10:37:28', NULL, NULL),
(380, 28, '5323720485', 0, '53237', '', '0485', NULL, 2, 4, '2013-11-21 10:39:04', NULL, NULL, NULL, '2013-11-21 11:03:27', NULL, 0, 3, NULL, '2013-11-21 10:39:04', NULL, NULL),
(381, 29, '5323723173', 0, '53237', '', '3173', NULL, 2, 4, '2013-11-21 10:51:54', NULL, '2013-11-21 11:08:02', NULL, '2013-11-21 11:08:55', NULL, 0, 3, NULL, '2013-11-21 10:51:54', NULL, NULL),
(382, 30, '5323721634', 0, '53237', '', '1634', NULL, 2, 4, '2013-11-21 10:57:05', NULL, '2013-11-21 11:08:59', NULL, '2013-11-21 11:09:07', NULL, 0, 3, NULL, '2013-11-21 10:57:05', NULL, NULL),
(383, 31, '5323713119', 0, '53237', '', '3119', NULL, 1, 4, '2013-11-21 10:58:59', NULL, '2013-11-21 11:04:47', NULL, '2013-11-21 11:05:18', NULL, 0, 3, NULL, '2013-11-21 10:58:59', NULL, NULL),
(384, 32, '5323723297', 0, '53237', '', '3297', NULL, 2, 4, '2013-11-21 11:07:03', NULL, '2013-11-21 11:11:49', NULL, '2013-11-21 11:11:59', NULL, 0, 3, NULL, '2013-11-21 11:07:03', NULL, NULL),
(385, 33, '5323713173', 0, '53237', '', '3173', NULL, 1, 4, '2013-11-21 11:10:21', NULL, '2013-11-21 11:11:19', NULL, '2013-11-21 11:11:46', NULL, 0, 3, NULL, '2013-11-21 11:10:21', NULL, NULL),
(386, 34, '5323720718', 0, '53237', '', '0718', NULL, 2, 4, '2013-11-21 11:16:09', NULL, '2013-11-21 11:17:41', NULL, '2013-11-21 11:17:55', NULL, 0, 3, NULL, '2013-11-21 11:16:09', NULL, NULL),
(387, 35, '5323720922', 0, '53237', '', '0922', NULL, 2, 4, '2013-11-21 11:30:44', NULL, '2013-11-21 11:34:26', NULL, '2013-11-21 11:35:30', NULL, 0, 3, NULL, '2013-11-21 11:30:44', NULL, NULL),
(388, 36, '5323724076', 0, '53237', '', '4076', NULL, 2, 4, '2013-11-21 11:31:13', NULL, '2013-11-21 11:38:47', NULL, '2013-11-21 11:38:53', NULL, 0, 3, NULL, '2013-11-21 11:31:13', NULL, NULL),
(389, 1, '5323720110', 0, '53237', '', '0110', NULL, 2, 4, '2013-11-22 07:37:13', NULL, '2013-11-22 07:56:37', NULL, '2013-11-22 07:56:42', NULL, 0, 3, NULL, '2013-11-22 07:37:13', NULL, NULL),
(390, 2, '53237104180', 0, '53237', '', '04180', NULL, 1, 4, '2013-11-22 08:09:10', NULL, '2013-11-22 08:22:03', NULL, '2013-11-22 08:24:14', NULL, 0, 3, NULL, '2013-11-22 08:09:10', NULL, NULL),
(391, 3, '5323710628', 0, '53237', '', '0628', NULL, 1, 4, '2013-11-22 08:21:20', NULL, '2013-11-22 08:24:22', NULL, '2013-11-22 08:27:02', NULL, 0, 3, NULL, '2013-11-22 08:21:20', NULL, NULL),
(392, 4, '35507104206', 0, '35507', '', '04206', NULL, 1, 4, '2013-11-22 08:29:21', NULL, '2013-11-22 08:43:53', NULL, '2013-11-22 08:44:36', NULL, 0, 3, NULL, '2013-11-22 08:29:21', NULL, NULL),
(393, 5, '5323721716', 0, '53237', '', '1716', NULL, 2, 4, '2013-11-22 08:31:50', NULL, '2013-11-22 09:08:55', NULL, '2013-11-22 09:12:24', NULL, 0, 3, NULL, '2013-11-22 08:31:50', NULL, NULL),
(394, 6, '53237204061', 0, '53237', '', '04061', NULL, 2, 4, '2013-11-22 08:34:35', NULL, '2013-11-22 08:41:40', NULL, '2013-11-22 08:42:12', NULL, 0, 3, NULL, '2013-11-22 08:34:35', NULL, NULL),
(395, 7, '5323724082', 0, '53237', '', '4082', NULL, 2, 4, '2013-11-22 08:36:50', NULL, '2013-11-22 08:43:05', NULL, '2013-11-22 08:43:48', NULL, 0, 3, NULL, '2013-11-22 08:36:50', NULL, NULL),
(396, 8, '3550710219', 0, '35507', '', '0219', NULL, 1, 4, '2013-11-22 08:38:03', NULL, '2013-11-22 09:53:39', NULL, '2013-11-22 09:58:43', NULL, 0, 3, NULL, '2013-11-22 08:38:03', NULL, NULL),
(397, 9, '5323713402', 0, '53237', '', '3402', NULL, 1, 4, '2013-11-22 08:38:23', NULL, '2013-11-22 09:16:53', NULL, '2013-11-22 09:26:39', NULL, 0, 3, NULL, '2013-11-22 08:38:23', NULL, NULL),
(398, 10, '3550721717', 0, '35507', '', '1717', NULL, 2, 4, '2013-11-22 08:41:36', NULL, '2013-11-22 08:41:43', NULL, '2013-11-22 08:42:04', NULL, 0, 3, NULL, '2013-11-22 08:41:36', NULL, NULL),
(399, 11, '3550720625', 0, '35507', '', '0625', NULL, 2, 4, '2013-11-22 08:44:29', NULL, '2013-11-22 08:46:56', NULL, '2013-11-22 08:47:02', NULL, 0, 3, NULL, '2013-11-22 08:44:29', NULL, NULL),
(400, 12, '3550721672', 0, '35507', '', '1672', NULL, 2, 4, '2013-11-22 08:51:11', NULL, '2013-11-22 08:57:08', NULL, '2013-11-22 08:57:16', NULL, 0, 3, NULL, '2013-11-22 08:51:11', NULL, NULL),
(401, 13, '5323712486', 0, '53237', '', '2486', NULL, 1, 4, '2013-11-22 08:56:20', NULL, '2013-11-22 08:57:41', NULL, '2013-11-22 09:01:24', NULL, 0, 3, NULL, '2013-11-22 08:56:20', NULL, NULL),
(402, 14, '5323710907', 0, '53237', '', '0907', NULL, 1, 4, '2013-11-22 09:01:00', NULL, '2013-11-22 09:31:34', NULL, '2013-11-22 09:32:37', NULL, 0, 3, NULL, '2013-11-22 09:01:00', NULL, NULL),
(403, 15, '3550723577', 0, '35507', '', '3577', NULL, 2, 4, '2013-11-22 09:08:42', NULL, '2013-11-22 09:09:20', NULL, '2013-11-22 09:09:25', NULL, 0, 3, NULL, '2013-11-22 09:08:42', NULL, NULL),
(404, 16, '5323713378', 0, '53237', '', '3378', NULL, 1, 4, '2013-11-22 09:10:45', NULL, '2013-11-22 09:33:32', NULL, '2013-11-22 09:33:34', NULL, 0, 3, NULL, '2013-11-22 09:10:45', NULL, NULL),
(405, 17, '3550721722', 0, '35507', '', '1722', NULL, 2, 4, '2013-11-22 09:12:56', NULL, NULL, NULL, '2013-11-22 09:20:00', NULL, 0, 3, NULL, '2013-11-22 09:12:56', NULL, NULL),
(406, 18, '5323724079', 0, '53237', '', '4079', NULL, 2, 4, '2013-11-22 09:16:43', NULL, '2013-11-22 09:20:20', NULL, '2013-11-22 09:20:39', NULL, 0, 3, NULL, '2013-11-22 09:16:43', NULL, NULL),
(407, 19, '5323721075', 0, '53237', '', '1075', NULL, 2, 4, '2013-11-22 09:19:10', NULL, '2013-11-22 09:22:07', NULL, '2013-11-22 09:23:07', NULL, 0, 3, NULL, '2013-11-22 09:19:10', NULL, NULL),
(408, 20, '5323711722', 0, '53237', '', '1722', NULL, 1, 4, '2013-11-22 09:19:38', NULL, '2013-11-22 09:36:37', NULL, '2013-11-22 09:38:06', NULL, 0, 3, NULL, '2013-11-22 09:19:38', NULL, NULL),
(409, 21, '5323721070', 0, '53237', '', '1070', NULL, 2, 4, '2013-11-22 09:20:30', NULL, '2013-11-22 09:23:20', NULL, '2013-11-22 09:23:37', NULL, 0, 3, NULL, '2013-11-22 09:20:30', NULL, NULL),
(410, 22, '5323723179', 0, '53237', '', '3179', NULL, 2, 4, '2013-11-22 09:29:36', NULL, '2013-11-22 09:37:48', NULL, '2013-11-22 09:37:57', NULL, 0, 3, NULL, '2013-11-22 09:29:36', NULL, NULL),
(411, 23, '5323721896', 0, '53237', '', '1896', NULL, 2, 4, '2013-11-22 09:47:53', NULL, '2013-11-22 09:57:02', NULL, '2013-11-22 09:57:34', NULL, 0, 3, NULL, '2013-11-22 09:47:53', NULL, NULL),
(412, 24, '5323721732', 0, '53237', '', '1732', NULL, 2, 4, '2013-11-22 09:51:05', NULL, '2013-11-22 10:00:40', NULL, '2013-11-22 10:03:07', NULL, 0, 3, NULL, '2013-11-22 09:51:05', NULL, NULL),
(413, 25, '5323720760', 0, '53237', '', '0760', NULL, 2, 4, '2013-11-22 09:55:22', NULL, '2013-11-22 10:10:22', NULL, '2013-11-22 10:11:25', NULL, 0, 3, NULL, '2013-11-22 09:55:22', NULL, NULL),
(414, 26, '3550711532', 0, '35507', '', '1532', NULL, 1, 4, '2013-11-22 09:56:36', NULL, NULL, NULL, '2013-11-22 10:28:37', NULL, 0, 3, NULL, '2013-11-22 09:56:36', NULL, NULL),
(415, 27, '5323721797', 0, '53237', '', '1797', NULL, 2, 4, '2013-11-22 09:59:35', NULL, '2013-11-22 10:18:45', NULL, '2013-11-22 10:19:04', NULL, 0, 3, NULL, '2013-11-22 09:59:35', NULL, NULL),
(416, 28, '3550721988', 0, '35507', '', '1988', NULL, 2, 4, '2013-11-22 10:07:37', NULL, '2013-11-22 10:22:24', NULL, '2013-11-22 10:22:33', NULL, 0, 3, NULL, '2013-11-22 10:07:37', NULL, NULL),
(417, 29, '35507209996', 0, '35507', '', '09996', NULL, 2, 4, '2013-11-22 10:08:22', NULL, NULL, NULL, '2013-11-22 10:28:33', NULL, 0, 3, NULL, '2013-11-22 10:08:22', NULL, NULL),
(418, 30, '3550720464', 0, '35507', '', '0464', NULL, 2, 4, '2013-11-22 10:10:02', NULL, '2013-11-22 10:18:47', NULL, '2013-11-22 10:18:51', NULL, 0, 3, NULL, '2013-11-22 10:10:02', NULL, NULL),
(419, 31, '5323710912', 0, '53237', '', '0912', NULL, 1, 4, '2013-11-22 10:18:19', NULL, '2013-11-22 10:27:13', NULL, '2013-11-22 10:28:01', NULL, 0, 3, NULL, '2013-11-22 10:18:19', NULL, NULL),
(420, 32, '3550713715', 0, '35507', '', '3715', NULL, 1, 4, '2013-11-22 10:19:15', NULL, '2013-11-22 10:25:43', NULL, '2013-11-22 10:27:09', NULL, 0, 3, NULL, '2013-11-22 10:19:15', NULL, NULL),
(421, 33, '3550723897', 0, '35507', '', '3897', NULL, 2, 4, '2013-11-22 10:22:33', NULL, '2013-11-22 10:33:01', NULL, '2013-11-22 10:33:56', NULL, 0, 3, NULL, '2013-11-22 10:22:33', NULL, NULL),
(422, 34, '5323721770', 0, '53237', '', '1770', NULL, 2, 4, '2013-11-22 10:32:23', NULL, '2013-11-22 10:39:28', NULL, '2013-11-22 10:39:34', NULL, 0, 3, NULL, '2013-11-22 10:32:23', NULL, NULL),
(423, 35, '5323724072', 0, '53237', '', '4072', NULL, 2, 4, '2013-11-22 10:32:47', NULL, '2013-11-22 10:43:33', NULL, '2013-11-22 10:45:01', NULL, 0, 3, NULL, '2013-11-22 10:32:47', NULL, NULL),
(424, 36, '5323712148', 0, '53237', '', '2148', NULL, 1, 4, '2013-11-22 10:49:51', NULL, '2013-11-22 11:00:54', NULL, '2013-11-22 11:01:10', NULL, 0, 3, NULL, '2013-11-22 10:49:51', NULL, NULL),
(425, 37, '3550713896', 0, '35507', '', '3896', NULL, 1, 4, '2013-11-22 10:53:09', NULL, '2013-11-22 11:03:48', NULL, '2013-11-22 11:05:38', NULL, 0, 3, NULL, '2013-11-22 10:53:09', NULL, NULL),
(426, 38, '3550710664', 0, '35507', '', '0664', NULL, 1, 4, '2013-11-22 10:53:57', NULL, '2013-11-22 10:55:46', NULL, '2013-11-22 10:56:22', NULL, 0, 3, NULL, '2013-11-22 10:53:57', NULL, NULL),
(427, 39, '3550713317', 0, '35507', '', '3317', NULL, 1, 4, '2013-11-22 10:54:42', NULL, '2013-11-22 11:06:16', NULL, '2013-11-22 11:09:33', NULL, 0, 3, NULL, '2013-11-22 10:54:42', NULL, NULL),
(428, 40, '5323713937', 0, '53237', '', '3937', NULL, 1, 4, '2013-11-22 10:55:13', NULL, '2013-11-22 11:10:15', NULL, '2013-11-22 11:10:45', NULL, 0, 3, NULL, '2013-11-22 10:55:13', NULL, NULL),
(429, 41, '3550729819', 0, '35507', '', '9819', NULL, 2, 1, '2013-11-22 11:00:50', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-22 11:00:50', NULL, NULL),
(430, 42, '5323722967', 0, '53237', '', '2967', NULL, 2, 4, '2013-11-22 11:02:53', NULL, '2013-11-22 11:05:45', NULL, '2013-11-22 11:05:57', NULL, 0, 3, NULL, '2013-11-22 11:02:53', NULL, NULL),
(431, 43, '5323721647', 0, '53237', '', '1647', NULL, 2, 4, '2013-11-22 11:19:32', NULL, NULL, NULL, '2013-11-22 11:28:03', NULL, 0, 3, NULL, '2013-11-22 11:19:32', NULL, NULL),
(432, 44, '5323722478', 0, '53237', '', '2478', NULL, 2, 4, '2013-11-22 11:22:05', NULL, '2013-11-22 11:33:09', NULL, '2013-11-22 11:33:40', NULL, 0, 3, NULL, '2013-11-22 11:22:05', NULL, NULL),
(433, 45, '53237204187', 0, '53237', '', '04187', NULL, 2, 4, '2013-11-22 11:31:45', NULL, '2013-11-22 11:40:20', NULL, '2013-11-22 11:40:25', NULL, 0, 3, NULL, '2013-11-22 11:31:45', NULL, NULL),
(434, 46, '5323712581', 0, '53237', '', '2581', NULL, 1, 4, '2013-11-22 11:52:05', NULL, '2013-11-22 11:55:26', NULL, '2013-11-22 11:57:39', NULL, 0, 3, NULL, '2013-11-22 11:52:05', NULL, NULL),
(435, 1, '35507109991', 0, '35507', '', '09991', NULL, 1, 4, '2013-11-25 07:41:08', NULL, NULL, NULL, '2013-11-25 08:35:17', NULL, 0, 3, NULL, '2013-11-25 07:41:08', NULL, NULL),
(436, 2, '3550710342', 0, '35507', '', '0342', NULL, 1, 4, '2013-11-25 07:41:41', NULL, '2013-11-25 08:27:29', NULL, '2013-11-25 08:30:07', NULL, 0, 3, NULL, '2013-11-25 07:41:41', NULL, NULL),
(437, 3, '3550713987', 0, '35507', '', '3987', NULL, 1, 4, '2013-11-25 07:42:57', NULL, '2013-11-25 08:31:41', NULL, '2013-11-25 08:32:05', NULL, 0, 3, NULL, '2013-11-25 07:42:57', NULL, NULL),
(438, 4, '3550711267', 0, '35507', '', '1267', NULL, 1, 4, '2013-11-25 07:54:43', NULL, '2013-11-25 08:49:07', NULL, '2013-11-25 08:51:04', NULL, 0, 3, NULL, '2013-11-25 07:54:43', NULL, NULL),
(439, 5, '3550722512', 0, '35507', '', '2512', NULL, 2, 4, '2013-11-25 07:55:10', NULL, '2013-11-25 07:56:22', NULL, '2013-11-25 07:56:38', NULL, 0, 3, NULL, '2013-11-25 07:55:10', NULL, NULL),
(440, 6, '3550721781', 0, '35507', '', '1781', NULL, 2, 4, '2013-11-25 08:06:32', NULL, '2013-11-25 08:10:41', NULL, '2013-11-25 08:11:32', NULL, 0, 3, NULL, '2013-11-25 08:06:32', NULL, NULL),
(441, 7, '3550710587', 0, '35507', '', '0587', NULL, 1, 4, '2013-11-25 08:06:42', NULL, '2013-11-25 08:53:36', NULL, '2013-11-25 08:57:41', NULL, 0, 3, NULL, '2013-11-25 08:06:42', NULL, NULL),
(442, 8, '3550713748', 0, '35507', '', '3748', NULL, 1, 4, '2013-11-25 08:07:15', NULL, '2013-11-25 08:13:27', NULL, '2013-11-25 08:13:40', NULL, 0, 3, NULL, '2013-11-25 08:07:15', NULL, NULL),
(443, 9, '3550720940', 0, '35507', '', '0940', NULL, 2, 4, '2013-11-25 08:08:37', NULL, '2013-11-25 08:25:14', NULL, '2013-11-25 08:25:19', NULL, 0, 3, NULL, '2013-11-25 08:08:37', NULL, NULL),
(444, 10, '3550722073', 0, '35507', '', '2073', NULL, 2, 4, '2013-11-25 08:08:54', NULL, '2013-11-25 08:17:05', NULL, '2013-11-25 08:18:36', NULL, 0, 3, NULL, '2013-11-25 08:08:54', NULL, NULL),
(445, 11, '3550710689', 0, '35507', '', '0689', NULL, 1, 4, '2013-11-25 08:11:45', NULL, '2013-11-25 08:35:30', NULL, '2013-11-25 08:36:26', NULL, 0, 3, NULL, '2013-11-25 08:11:45', NULL, NULL),
(446, 12, '3550713915', 0, '35507', '', '3915', NULL, 1, 4, '2013-11-25 08:14:27', NULL, '2013-11-25 09:14:22', NULL, '2013-11-25 09:19:19', NULL, 0, 3, NULL, '2013-11-25 08:14:27', NULL, NULL),
(447, 13, '3550720696', 0, '35507', '', '0696', NULL, 2, 4, '2013-11-25 08:25:05', NULL, '2013-11-25 08:34:28', NULL, '2013-11-25 08:34:33', NULL, 0, 3, NULL, '2013-11-25 08:25:05', NULL, NULL),
(448, 14, '3550720589', 0, '35507', '', '0589', NULL, 2, 4, '2013-11-25 08:31:14', NULL, '2013-11-25 08:39:52', NULL, '2013-11-25 08:40:40', NULL, 0, 3, NULL, '2013-11-25 08:31:14', NULL, NULL),
(449, 15, '3550720226', 0, '35507', '', '0226', NULL, 2, 4, '2013-11-25 08:33:52', NULL, '2013-11-25 08:45:43', NULL, '2013-11-25 08:45:47', NULL, 0, 3, NULL, '2013-11-25 08:33:52', NULL, NULL),
(450, 16, '3550713748', 0, '35507', '', '3748', NULL, 1, 4, '2013-11-25 08:47:40', NULL, '2013-11-25 09:22:22', NULL, '2013-11-25 09:24:02', NULL, 0, 3, NULL, '2013-11-25 08:47:40', NULL, NULL),
(451, 17, '3550710406', 0, '35507', '', '0406', NULL, 1, 4, '2013-11-25 08:49:32', NULL, '2013-11-25 09:46:47', NULL, '2013-11-25 09:51:04', NULL, 0, 3, NULL, '2013-11-25 08:49:32', NULL, NULL),
(452, 18, '5323720205', 0, '53237', '', '0205', NULL, 2, 4, '2013-11-25 08:55:22', NULL, '2013-11-25 09:01:11', NULL, '2013-11-25 09:01:59', NULL, 0, 3, NULL, '2013-11-25 08:55:22', NULL, NULL),
(453, 19, '3550721614', 0, '35507', '', '1614', NULL, 2, 4, '2013-11-25 08:58:49', NULL, '2013-11-25 09:03:14', NULL, '2013-11-25 09:03:17', NULL, 0, 3, NULL, '2013-11-25 08:58:49', NULL, NULL),
(454, 20, '3550711006', 0, '35507', '', '1006', NULL, 1, 4, '2013-11-25 09:00:12', NULL, '2013-11-25 09:54:16', NULL, '2013-11-25 09:54:25', NULL, 0, 3, NULL, '2013-11-25 09:00:12', NULL, NULL),
(455, 21, '35507104191', 0, '35507', '', '04191', NULL, 1, 4, '2013-11-25 09:02:58', NULL, '2013-11-25 09:58:10', NULL, '2013-11-25 09:58:29', NULL, 0, 3, NULL, '2013-11-25 09:02:58', NULL, NULL),
(456, 22, '3550712195', 0, '35507', '', '2195', NULL, 1, 4, '2013-11-25 09:14:42', NULL, '2013-11-25 10:10:31', NULL, '2013-11-25 10:16:18', NULL, 0, 3, NULL, '2013-11-25 09:14:42', NULL, NULL),
(457, 23, '3550713953', 0, '35507', '', '3953', NULL, 1, 4, '2013-11-25 09:16:25', NULL, '2013-11-25 10:17:27', NULL, '2013-11-25 10:17:43', NULL, 0, 3, NULL, '2013-11-25 09:16:25', NULL, NULL),
(458, 24, '3550713904', 0, '35507', '', '3904', NULL, 1, 4, '2013-11-25 09:23:07', NULL, '2013-11-25 10:44:09', NULL, '2013-11-25 10:48:46', NULL, 0, 3, NULL, '2013-11-25 09:23:07', NULL, NULL),
(459, 25, '3550723577', 0, '35507', '', '3577', NULL, 2, 4, '2013-11-25 09:26:20', NULL, '2013-11-25 09:31:54', NULL, '2013-11-25 09:31:59', NULL, 0, 3, NULL, '2013-11-25 09:26:20', NULL, NULL),
(460, 26, '3550723889', 0, '35507', '', '3889', NULL, 2, 4, '2013-11-25 09:34:54', NULL, '2013-11-25 09:48:56', NULL, '2013-11-25 09:49:02', NULL, 0, 3, NULL, '2013-11-25 09:34:54', NULL, NULL),
(461, 27, '3550720696', 0, '35507', '', '0696', NULL, 2, 4, '2013-11-25 09:41:30', NULL, '2013-11-25 09:42:30', NULL, '2013-11-25 09:42:51', NULL, 0, 3, NULL, '2013-11-25 09:41:30', NULL, NULL),
(462, 28, '3550720213', 0, '35507', '', '0213', NULL, 2, 4, '2013-11-25 09:42:19', NULL, '2013-11-25 09:50:41', NULL, '2013-11-25 09:52:02', NULL, 0, 3, NULL, '2013-11-25 09:42:19', NULL, NULL),
(463, 29, '3550721330', 0, '35507', '', '1330', NULL, 2, 4, '2013-11-25 09:43:15', NULL, '2013-11-25 09:53:09', NULL, '2013-11-25 09:53:11', NULL, 0, 3, NULL, '2013-11-25 09:43:15', NULL, NULL),
(464, 30, '3550723494', 0, '35507', '', '3494', NULL, 2, 4, '2013-11-25 09:48:31', NULL, '2013-11-25 09:59:42', NULL, '2013-11-25 09:59:47', NULL, 0, 3, NULL, '2013-11-25 09:48:31', NULL, NULL),
(465, 31, '3550713889', 0, '35507', '', '3889', NULL, 1, 4, '2013-11-25 09:50:31', NULL, '2013-11-25 10:48:51', NULL, '2013-11-25 10:57:46', NULL, 0, 3, NULL, '2013-11-25 09:50:31', NULL, NULL),
(466, 32, '3550713045', 0, '35507', '', '3045', NULL, 1, 4, '2013-11-25 09:52:39', NULL, '2013-11-25 11:00:45', NULL, '2013-11-25 11:05:32', NULL, 0, 3, NULL, '2013-11-25 09:52:39', NULL, NULL),
(467, 33, '3550712088', 0, '35507', '', '2088', NULL, 1, 4, '2013-11-25 10:13:17', NULL, '2013-11-25 11:10:39', NULL, '2013-11-25 11:16:38', NULL, 0, 3, NULL, '2013-11-25 10:13:17', NULL, NULL),
(468, 34, '3550722083', 0, '35507', '', '2083', NULL, 2, 4, '2013-11-25 10:17:00', NULL, '2013-11-25 10:18:18', NULL, '2013-11-25 10:18:23', NULL, 0, 3, NULL, '2013-11-25 10:17:00', NULL, NULL),
(469, 35, '3550713821', 0, '35507', '', '3821', NULL, 1, 4, '2013-11-25 10:20:25', NULL, '2013-11-25 11:21:14', NULL, '2013-11-25 11:22:42', NULL, 0, 3, NULL, '2013-11-25 10:20:25', NULL, NULL),
(470, 36, '35507104105', 0, '35507', '', '04105', NULL, 1, 4, '2013-11-25 10:23:17', NULL, '2013-11-25 11:24:48', NULL, '2013-11-25 11:28:53', NULL, 0, 3, NULL, '2013-11-25 10:23:17', NULL, NULL),
(471, 37, '3550713656', 0, '35507', '', '3656', NULL, 1, 4, '2013-11-25 10:33:54', NULL, '2013-11-25 11:34:39', NULL, '2013-11-25 11:39:06', NULL, 0, 3, NULL, '2013-11-25 10:33:54', NULL, NULL),
(472, 38, '3550710650', 0, '35507', '', '0650', NULL, 1, 4, '2013-11-25 10:38:56', NULL, '2013-11-25 11:45:58', NULL, '2013-11-25 11:48:23', NULL, 0, 3, NULL, '2013-11-25 10:38:56', NULL, NULL),
(473, 39, '3550710649', 0, '35507', '', '0649', NULL, 1, 4, '2013-11-25 10:39:09', 0, '2013-11-25 11:56:04', NULL, '2013-11-25 11:57:16', NULL, 0, 3, NULL, '2013-11-25 10:39:09', NULL, NULL),
(474, 40, '3550723298', 0, '35507', '', '3298', NULL, 2, 4, '2013-11-25 10:45:20', NULL, '2013-11-25 10:45:27', NULL, '2013-11-25 10:45:46', NULL, 0, 3, NULL, '2013-11-25 10:45:20', NULL, NULL),
(475, 41, '3550723505', 0, '35507', '', '3505', NULL, 2, 4, '2013-11-25 11:23:50', NULL, '2013-11-25 11:25:42', NULL, '2013-11-25 11:26:39', NULL, 0, 3, NULL, '2013-11-25 11:23:50', NULL, NULL),
(476, 42, '3550723786', 0, '35507', '', '3786', NULL, 2, 4, '2013-11-25 11:24:47', NULL, '2013-11-25 11:26:42', NULL, '2013-11-25 11:27:07', NULL, 0, 3, NULL, '2013-11-25 11:24:47', NULL, NULL),
(477, 43, '35507104091', 0, '35507', '', '04091', NULL, 1, 4, '2013-11-25 11:30:00', NULL, '2013-11-25 12:03:24', NULL, '2013-11-25 12:06:21', NULL, 0, 3, NULL, '2013-11-25 11:30:00', NULL, NULL),
(478, 44, '5323722799', 0, '53237', '', '2799', NULL, 2, 4, '2013-11-25 13:44:18', NULL, '2013-11-25 13:53:18', NULL, '2013-11-25 13:53:21', NULL, 0, 3, NULL, '2013-11-25 13:44:18', NULL, NULL),
(479, 45, '5323712036', 0, '53237', '', '2036', NULL, 1, 4, '2013-11-25 13:49:46', NULL, '2013-11-25 14:09:24', NULL, '2013-11-25 14:09:52', NULL, 0, 3, NULL, '2013-11-25 13:49:46', NULL, NULL),
(480, 46, '5323721411', 0, '53237', '', '1411', NULL, 2, 4, '2013-11-25 14:10:45', NULL, '2013-11-25 14:15:45', NULL, '2013-11-25 14:15:51', NULL, 0, 3, NULL, '2013-11-25 14:10:45', NULL, NULL),
(481, 47, '5323720426', 0, '53237', '', '0426', NULL, 2, 4, '2013-11-25 14:13:29', NULL, '2013-11-25 14:17:41', NULL, '2013-11-25 14:17:45', NULL, 0, 3, NULL, '2013-11-25 14:13:29', NULL, NULL),
(482, 48, '35507109991', 0, '35507', '', '09991', NULL, 1, 1, '2013-11-25 14:13:44', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-25 14:13:44', NULL, NULL),
(483, 49, '5323723589', 0, '53237', '', '3589', NULL, 2, 4, '2013-11-25 14:27:39', NULL, '2013-11-25 14:30:18', NULL, '2013-11-25 14:30:57', NULL, 0, 3, NULL, '2013-11-25 14:27:39', NULL, NULL),
(484, 50, '5323713646', 0, '53237', '', '3646', NULL, 1, 4, '2013-11-25 14:27:45', NULL, '2013-11-25 14:37:52', NULL, '2013-11-25 14:38:04', NULL, 0, 3, NULL, '2013-11-25 14:27:45', NULL, NULL),
(485, 51, '35507109994', 0, '35507', '', '09994', NULL, 1, 1, '2013-11-25 14:28:12', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-25 14:28:12', NULL, NULL),
(486, 52, '5323711149', 0, '53237', '', '1149', NULL, 1, 4, '2013-11-25 14:28:59', NULL, '2013-11-25 15:02:57', NULL, '2013-11-25 15:04:56', NULL, 0, 3, NULL, '2013-11-25 14:28:59', NULL, NULL),
(487, 53, '5323721258', 0, '53237', '', '1258', NULL, 2, 4, '2013-11-25 14:30:14', NULL, '2013-11-25 14:40:38', NULL, '2013-11-25 14:41:03', NULL, 0, 3, NULL, '2013-11-25 14:30:14', NULL, NULL),
(488, 54, '5323720208', 0, '53237', '', '0208', NULL, 2, 4, '2013-11-25 14:31:48', NULL, '2013-11-25 14:43:41', NULL, '2013-11-25 14:43:52', NULL, 0, 3, NULL, '2013-11-25 14:31:48', NULL, NULL),
(489, 55, '5323720144', 0, '53237', '', '0144', NULL, 2, 4, '2013-11-25 14:36:21', NULL, '2013-11-25 14:45:21', NULL, '2013-11-25 14:45:25', NULL, 0, 3, NULL, '2013-11-25 14:36:21', NULL, NULL),
(490, 56, '5323721322', 0, '53237', '', '1322', NULL, 2, 4, '2013-11-25 14:44:26', NULL, '2013-11-25 15:04:35', NULL, '2013-11-25 15:04:43', NULL, 0, 3, NULL, '2013-11-25 14:44:26', NULL, NULL),
(491, 57, '5323721289', 0, '53237', '', '1289', NULL, 2, 4, '2013-11-25 14:46:49', NULL, '2013-11-25 15:07:50', NULL, '2013-11-25 15:07:58', NULL, 0, 3, NULL, '2013-11-25 14:46:49', NULL, NULL),
(492, 58, '53237104154', 0, '53237', '', '04154', NULL, 1, 4, '2013-11-25 14:50:59', NULL, '2013-11-25 15:04:59', NULL, '2013-11-25 15:09:07', NULL, 0, 3, NULL, '2013-11-25 14:50:59', NULL, NULL),
(493, 59, '5323720855', 0, '53237', '', '0855', NULL, 2, 4, '2013-11-25 15:05:16', NULL, '2013-11-25 15:23:09', NULL, '2013-11-25 15:23:27', NULL, 0, 3, NULL, '2013-11-25 15:05:16', NULL, NULL),
(494, 60, '5323723142', 0, '53237', '', '3142', NULL, 2, 4, '2013-11-25 15:06:46', NULL, '2013-11-25 15:24:24', NULL, NULL, NULL, 0, 3, NULL, '2013-11-25 15:06:46', NULL, NULL),
(495, 61, '5323720495', 0, '53237', '', '0495', NULL, 2, 4, '2013-11-25 15:08:05', NULL, NULL, NULL, '2013-11-25 15:51:39', NULL, 0, 3, NULL, '2013-11-25 15:08:05', NULL, NULL),
(496, 62, '5323713381', 0, '53237', '', '3381', NULL, 1, 4, '2013-11-25 15:18:50', NULL, '2013-11-25 15:31:37', NULL, '2013-11-25 15:33:04', NULL, 0, 3, NULL, '2013-11-25 15:18:50', NULL, NULL),
(497, 63, '3550713755', 0, '35507', '', '3755', NULL, 1, 1, '2013-11-25 15:24:47', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-25 15:24:47', NULL, NULL),
(498, 64, '5323711417', 0, '53237', '', '1417', NULL, 1, 4, '2013-11-25 15:32:56', NULL, '2013-11-25 15:33:49', NULL, '2013-11-25 15:35:57', NULL, 0, 3, NULL, '2013-11-25 15:32:56', NULL, NULL),
(499, 65, '5323722876', 0, '53237', '', '2876', NULL, 2, 4, '2013-11-25 15:44:28', NULL, NULL, NULL, '2013-11-25 15:51:41', NULL, 0, 3, NULL, '2013-11-25 15:44:28', NULL, NULL),
(500, 66, '5323712892', 0, '53237', '', '2892', NULL, 1, 4, '2013-11-25 15:52:42', NULL, '2013-11-25 15:59:05', NULL, '2013-11-25 16:02:04', NULL, 0, 3, NULL, '2013-11-25 15:52:42', NULL, NULL),
(501, 67, '5323721401', 0, '53237', '', '1401', NULL, 2, 4, '2013-11-25 16:00:58', NULL, NULL, NULL, '2013-11-25 16:33:40', NULL, 0, 3, NULL, '2013-11-25 16:00:58', NULL, NULL),
(502, 68, '5323713250', 0, '53237', '', '3250', NULL, 1, 4, '2013-11-25 16:08:37', NULL, '2013-11-25 16:11:57', NULL, '2013-11-25 16:12:35', NULL, 0, 3, NULL, '2013-11-25 16:08:37', NULL, NULL),
(503, 69, '5323710633', 0, '53237', '', '0633', NULL, 1, 4, '2013-11-25 16:19:34', NULL, '2013-11-25 16:31:44', NULL, '2013-11-25 16:33:04', NULL, 0, 3, NULL, '2013-11-25 16:19:34', NULL, NULL),
(504, 70, '5323722783', 0, '53237', '', '2783', NULL, 2, 4, '2013-11-25 16:27:08', NULL, NULL, NULL, '2013-11-25 16:33:43', NULL, 0, 3, NULL, '2013-11-25 16:27:08', NULL, NULL),
(505, 71, '5323712930', 0, '53237', '', '2930', NULL, 1, 4, '2013-11-25 16:57:14', NULL, '2013-11-25 16:57:42', NULL, '2013-11-25 16:59:46', NULL, 0, 3, NULL, '2013-11-25 16:57:14', NULL, NULL),
(506, 72, '5323721363', 0, '53237', '', '1363', NULL, 2, 4, '2013-11-25 17:15:45', NULL, NULL, NULL, '2013-11-25 17:27:59', NULL, 0, 3, NULL, '2013-11-25 17:15:45', NULL, NULL),
(507, 1, '5323720940', 0, '53237', '', '0940', NULL, 2, 4, '2013-11-26 07:47:04', NULL, '2013-11-26 07:52:58', NULL, '2013-11-26 07:53:11', NULL, 0, 3, NULL, '2013-11-26 07:47:04', NULL, NULL),
(508, 2, '5323710816', 0, '53237', '', '0816', NULL, 1, 4, '2013-11-26 07:47:58', NULL, '2013-11-26 08:13:54', NULL, '2013-11-26 08:18:27', NULL, 0, 3, NULL, '2013-11-26 07:47:58', NULL, NULL),
(509, 3, '5323723940', 0, '53237', '', '3940', NULL, 2, 4, '2013-11-26 07:50:59', NULL, '2013-11-26 07:58:58', NULL, '2013-11-26 07:59:03', NULL, 0, 3, NULL, '2013-11-26 07:50:59', NULL, NULL),
(510, 4, '5323723185', 0, '53237', '', '3185', NULL, 2, 4, '2013-11-26 08:20:03', NULL, '2013-11-26 08:20:25', NULL, '2013-11-26 08:20:46', NULL, 0, 3, NULL, '2013-11-26 08:20:03', NULL, NULL),
(511, 5, '5323712561', 0, '53237', '', '2561', NULL, 1, 4, '2013-11-26 08:24:45', NULL, '2013-11-26 08:26:38', NULL, '2013-11-26 08:30:16', NULL, 0, 3, NULL, '2013-11-26 08:24:45', NULL, NULL),
(512, 6, '5323720756', 0, '53237', '', '0756', NULL, 2, 4, '2013-11-26 08:36:46', NULL, '2013-11-26 08:38:06', NULL, '2013-11-26 08:38:41', NULL, 0, 3, NULL, '2013-11-26 08:36:46', NULL, NULL),
(513, 7, '5323720902', 0, '53237', '', '0902', NULL, 2, 4, '2013-11-26 08:38:46', NULL, '2013-11-26 08:43:09', NULL, '2013-11-26 08:43:36', NULL, 0, 3, NULL, '2013-11-26 08:38:46', NULL, NULL),
(514, 8, '5323721933', 0, '53237', '', '1933', NULL, 2, 4, '2013-11-26 08:59:53', NULL, '2013-11-26 09:03:29', NULL, '2013-11-26 09:03:42', NULL, 0, 3, NULL, '2013-11-26 08:59:53', NULL, NULL),
(515, 9, '5323723969', 0, '53237', '', '3969', NULL, 2, 4, '2013-11-26 09:19:07', NULL, '2013-11-26 09:22:30', NULL, '2013-11-26 09:22:39', NULL, 0, 3, NULL, '2013-11-26 09:19:07', NULL, NULL),
(516, 10, '53237202771', 0, '53237', '', '02771', NULL, 2, 4, '2013-11-26 09:29:04', NULL, '2013-11-26 09:35:57', NULL, '2013-11-26 09:36:57', NULL, 0, 3, NULL, '2013-11-26 09:29:04', NULL, NULL),
(517, 11, '5323711050', 0, '53237', '', '1050', NULL, 1, 4, '2013-11-26 09:32:55', NULL, '2013-11-26 09:37:42', NULL, '2013-11-26 09:41:24', NULL, 0, 3, NULL, '2013-11-26 09:32:55', NULL, NULL),
(518, 12, '5323712836', 0, '53237', '', '2836', NULL, 1, 4, '2013-11-26 09:36:36', NULL, '2013-11-26 09:41:28', NULL, '2013-11-26 09:42:46', NULL, 0, 3, NULL, '2013-11-26 09:36:36', NULL, NULL),
(519, 13, '5323710747', 0, '53237', '', '0747', NULL, 1, 4, '2013-11-26 09:39:19', NULL, '2013-11-26 09:52:30', NULL, '2013-11-26 09:55:19', NULL, 0, 3, NULL, '2013-11-26 09:39:19', NULL, NULL),
(520, 14, '5323723281', 0, '53237', '', '3281', NULL, 2, 4, '2013-11-26 09:50:14', NULL, '2013-11-26 09:54:55', NULL, '2013-11-26 09:55:13', NULL, 0, 3, NULL, '2013-11-26 09:50:14', NULL, NULL),
(521, 15, '5323720055', 0, '53237', '', '0055', NULL, 2, 4, '2013-11-26 09:57:18', NULL, '2013-11-26 10:06:08', NULL, '2013-11-26 10:06:12', NULL, 0, 3, NULL, '2013-11-26 09:57:18', NULL, NULL),
(522, 16, '5323711746', 0, '53237', '', '1746', NULL, 1, 4, '2013-11-26 10:01:09', NULL, '2013-11-26 10:17:33', NULL, '2013-11-26 10:18:04', NULL, 0, 3, NULL, '2013-11-26 10:01:09', NULL, NULL),
(523, 17, '5323714027', 0, '53237', '', '4027', NULL, 1, 4, '2013-11-26 10:03:03', NULL, '2013-11-26 10:09:29', NULL, '2013-11-26 10:12:02', NULL, 0, 3, NULL, '2013-11-26 10:03:03', NULL, NULL),
(524, 18, '5323721653', 0, '53237', '', '1653', NULL, 2, 4, '2013-11-26 10:11:24', NULL, '2013-11-26 10:42:27', NULL, '2013-11-26 10:42:39', NULL, 0, 3, NULL, '2013-11-26 10:11:24', NULL, NULL),
(525, 19, '5323721306', 0, '53237', '', '1306', NULL, 2, 4, '2013-11-26 10:16:29', NULL, '2013-11-26 10:43:11', NULL, '2013-11-26 10:43:18', NULL, 0, 3, NULL, '2013-11-26 10:16:29', NULL, NULL),
(526, 20, '5323713001', 0, '53237', '', '3001', NULL, 1, 4, '2013-11-26 10:21:28', NULL, '2013-11-26 10:23:51', NULL, '2013-11-26 10:24:48', NULL, 0, 3, NULL, '2013-11-26 10:21:28', NULL, NULL),
(527, 21, '3550711730', 0, '35507', '', '1730', NULL, 1, 4, '2013-11-26 10:32:02', NULL, NULL, NULL, '2013-11-26 13:17:14', NULL, 0, 3, NULL, '2013-11-26 10:32:02', NULL, NULL),
(528, 22, '5323720539', 0, '53237', '', '0539', NULL, 2, 4, '2013-11-26 11:11:11', NULL, '2013-11-26 11:19:29', NULL, '2013-11-26 11:19:33', NULL, 0, 3, NULL, '2013-11-26 11:11:11', NULL, NULL),
(529, 23, '5323713578', 0, '53237', '', '3578', NULL, 1, 4, '2013-11-26 11:23:46', NULL, '2013-11-26 11:25:02', NULL, '2013-11-26 11:27:28', NULL, 0, 3, NULL, '2013-11-26 11:23:46', NULL, NULL);
INSERT INTO `nocore_barcode_full` (`fullid`, `id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(530, 24, '5323720286', 0, '53237', '', '0286', NULL, 2, 4, '2013-11-26 11:35:39', NULL, '2013-11-26 11:35:47', NULL, '2013-11-26 11:35:57', NULL, 0, 3, NULL, '2013-11-26 11:35:39', NULL, NULL),
(531, 25, '5323722928', 0, '53237', '', '2928', NULL, 2, 4, '2013-11-26 11:45:34', NULL, NULL, NULL, '2013-11-26 11:53:30', NULL, 0, 3, NULL, '2013-11-26 11:45:34', NULL, NULL),
(532, 26, '3550713120', 0, '35507', '', '3120', NULL, 1, 4, '2013-11-26 13:39:11', NULL, NULL, NULL, '2013-11-26 14:18:13', NULL, 0, 3, NULL, '2013-11-26 13:39:11', NULL, NULL),
(533, 27, '3550713858', 0, '35507', '', '3858', NULL, 1, 4, '2013-11-26 13:46:33', NULL, NULL, NULL, '2013-11-26 14:54:16', NULL, 0, 3, NULL, '2013-11-26 13:46:33', NULL, NULL),
(534, 28, '3550713250', 0, '35507', '', '3250', NULL, 1, 4, '2013-11-26 13:47:25', NULL, '2013-11-26 14:03:46', NULL, '2013-11-26 14:03:50', NULL, 0, 3, NULL, '2013-11-26 13:47:25', NULL, NULL),
(535, 29, '3550721571', 0, '35507', '', '1571', NULL, 2, 4, '2013-11-26 13:48:07', NULL, '2013-11-26 13:53:04', NULL, '2013-11-26 13:54:46', NULL, 0, 3, NULL, '2013-11-26 13:48:07', NULL, NULL),
(536, 30, '3550711572', 0, '35507', '', '1572', NULL, 1, 4, '2013-11-26 13:48:17', NULL, '2013-11-26 14:54:24', NULL, '2013-11-26 14:56:20', NULL, 0, 3, NULL, '2013-11-26 13:48:17', NULL, NULL),
(537, 31, '3550722896', 0, '35507', '', '2896', NULL, 2, 4, '2013-11-26 13:48:21', NULL, '2013-11-26 14:12:44', NULL, '2013-11-26 14:14:12', NULL, 0, 3, NULL, '2013-11-26 13:48:21', NULL, NULL),
(538, 32, '3550710083', 0, '35507', '', '0083', NULL, 1, 4, '2013-11-26 13:52:51', NULL, '2013-11-26 14:57:52', NULL, '2013-11-26 14:57:56', NULL, 0, 3, NULL, '2013-11-26 13:52:51', NULL, NULL),
(539, 33, '3550720712', 0, '35507', '', '0712', NULL, 2, 4, '2013-11-26 13:59:08', NULL, '2013-11-26 14:20:32', NULL, '2013-11-26 14:20:45', NULL, 0, 3, NULL, '2013-11-26 13:59:08', NULL, NULL),
(540, 34, '3550720865', 0, '35507', '', '0865', NULL, 2, 4, '2013-11-26 14:03:48', NULL, '2013-11-26 14:16:53', NULL, '2013-11-26 14:16:57', NULL, 0, 3, NULL, '2013-11-26 14:03:48', NULL, NULL),
(541, 35, '3550710566', 0, '35507', '', '0566', NULL, 1, 4, '2013-11-26 14:08:17', NULL, NULL, NULL, '2013-11-26 15:12:09', NULL, 0, 3, NULL, '2013-11-26 14:08:17', NULL, NULL),
(542, 36, '3550720671', 0, '35507', '', '0671', NULL, 2, 4, '2013-11-26 14:16:59', NULL, '2013-11-26 14:23:39', NULL, '2013-11-26 14:23:55', NULL, 0, 3, NULL, '2013-11-26 14:16:59', NULL, NULL),
(543, 37, '3550713353', 0, '35507', '', '3353', NULL, 1, 4, '2013-11-26 14:17:30', NULL, NULL, NULL, '2013-11-26 15:28:34', NULL, 0, 3, NULL, '2013-11-26 14:17:30', NULL, NULL),
(544, 38, '3550723013', 0, '35507', '', '3013', NULL, 2, 4, '2013-11-26 14:21:21', NULL, '2013-11-26 14:40:55', NULL, '2013-11-26 14:42:38', NULL, 0, 3, NULL, '2013-11-26 14:21:21', NULL, NULL),
(545, 39, '3550721651', 0, '35507', '', '1651', NULL, 2, 4, '2013-11-26 14:24:13', NULL, '2013-11-26 14:33:06', NULL, '2013-11-26 14:33:23', NULL, 0, 3, NULL, '2013-11-26 14:24:13', NULL, NULL),
(546, 40, '35507109990', 0, '35507', '', '09990', NULL, 1, 4, '2013-11-26 14:31:38', NULL, NULL, NULL, '2013-11-26 16:03:31', NULL, 0, 3, NULL, '2013-11-26 14:31:38', NULL, NULL),
(547, 41, '3550723987', 0, '35507', '', '3987', NULL, 2, 4, '2013-11-26 14:34:12', NULL, NULL, NULL, '2013-11-26 15:12:12', NULL, 0, 3, NULL, '2013-11-26 14:34:12', NULL, NULL),
(548, 42, '3550713601', 0, '35507', '', '3601', NULL, 1, 4, '2013-11-26 15:18:45', NULL, NULL, NULL, '2013-11-26 16:03:36', NULL, 0, 3, NULL, '2013-11-26 15:18:45', NULL, NULL),
(549, 43, '35507109997', 0, '35507', '', '09997', NULL, 1, 4, '2013-11-26 15:24:32', NULL, NULL, NULL, '2013-11-26 16:26:30', NULL, 0, 3, NULL, '2013-11-26 15:24:32', NULL, NULL),
(550, 44, '3550713907', 0, '35507', '', '3907', NULL, 1, 4, '2013-11-26 15:27:23', NULL, NULL, NULL, '2013-11-26 16:26:22', NULL, 0, 3, NULL, '2013-11-26 15:27:23', NULL, NULL),
(551, 45, '3550720536', 0, '35507', '', '0536', NULL, 2, 4, '2013-11-26 15:27:48', NULL, '2013-11-26 15:28:26', NULL, '2013-11-26 15:29:25', NULL, 0, 3, NULL, '2013-11-26 15:27:48', NULL, NULL),
(552, 46, '3550711749', 0, '35507', '', '1749', NULL, 1, 4, '2013-11-26 15:30:30', NULL, NULL, NULL, '2013-11-26 16:26:21', NULL, 0, 3, NULL, '2013-11-26 15:30:30', NULL, NULL),
(553, 47, '3550720490', 0, '35507', '', '0490', NULL, 2, 4, '2013-11-26 15:40:03', NULL, '2013-11-26 15:47:51', NULL, '2013-11-26 15:48:08', NULL, 0, 3, NULL, '2013-11-26 15:40:03', NULL, NULL),
(554, 48, '3550722043', 0, '35507', '', '2043', NULL, 2, 4, '2013-11-26 15:47:13', NULL, '2013-11-26 15:51:48', NULL, '2013-11-26 15:51:56', NULL, 0, 3, NULL, '2013-11-26 15:47:13', NULL, NULL),
(555, 49, '3550712031', 0, '35507', '', '2031', NULL, 1, 4, '2013-11-26 15:59:04', NULL, NULL, NULL, '2013-11-26 16:26:25', NULL, 0, 3, NULL, '2013-11-26 15:59:04', NULL, NULL),
(556, 50, '35507109992', 0, '35507', '', '09992', NULL, 1, 4, '2013-11-26 16:04:50', NULL, NULL, NULL, '2013-11-26 16:26:57', NULL, 0, 3, NULL, '2013-11-26 16:04:50', NULL, NULL),
(557, 51, '35507109993', 0, '35507', '', '09993', NULL, 1, 4, '2013-11-26 16:10:33', NULL, NULL, NULL, '2013-11-26 16:26:59', NULL, 0, 3, NULL, '2013-11-26 16:10:33', NULL, NULL),
(558, 52, '3550723719', 0, '35507', '', '3719', NULL, 2, 4, '2013-11-26 16:21:25', NULL, '2013-11-26 16:30:29', NULL, '2013-11-26 16:30:43', NULL, 0, 3, NULL, '2013-11-26 16:21:25', NULL, NULL),
(559, 53, '3550713083', 0, '35507', '', '3083', NULL, 1, 4, '2013-11-26 16:23:28', NULL, NULL, NULL, '2013-11-26 17:15:54', NULL, 0, 3, NULL, '2013-11-26 16:23:28', NULL, NULL),
(560, 54, '3550723507', 0, '35507', '', '3507', NULL, 2, 4, '2013-11-26 16:25:44', NULL, '2013-11-26 16:36:14', NULL, '2013-11-26 16:36:36', NULL, 0, 3, NULL, '2013-11-26 16:25:44', NULL, NULL),
(561, 55, '3550720619', 0, '35507', '', '0619', NULL, 2, 4, '2013-11-26 16:56:51', NULL, '2013-11-26 17:00:21', NULL, '2013-11-26 17:01:16', NULL, 0, 3, NULL, '2013-11-26 16:56:51', NULL, NULL),
(562, 56, '35507204081', 0, '35507', '', '04081', NULL, 2, 4, '2013-11-26 17:12:14', NULL, '2013-11-26 17:19:25', NULL, '2013-11-26 17:19:28', NULL, 0, 3, NULL, '2013-11-26 17:12:14', NULL, NULL),
(563, 57, '3550713545', 0, '35507', '', '3545', NULL, 1, 4, '2013-11-26 17:14:57', NULL, NULL, NULL, '2013-11-26 17:32:20', NULL, 0, 3, NULL, '2013-11-26 17:14:57', NULL, NULL),
(564, 58, '3550712225', 0, '35507', '', '2225', NULL, 1, 4, '2013-11-26 17:20:30', NULL, NULL, NULL, '2013-11-26 17:57:05', NULL, 0, 3, NULL, '2013-11-26 17:20:30', NULL, NULL),
(565, 59, '3550713212', 0, '35507', '', '3212', NULL, 1, 4, '2013-11-26 17:21:37', NULL, NULL, NULL, '2013-11-26 17:57:08', NULL, 0, 3, NULL, '2013-11-26 17:21:37', NULL, NULL),
(566, 60, '3550713708', 0, '35507', '', '3708', NULL, 1, 1, '2013-11-26 17:42:16', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-26 17:42:16', NULL, NULL),
(567, 1, '3550720623', 0, '35507', '', '0623', NULL, 2, 4, '2013-11-27 07:44:04', NULL, NULL, NULL, '2013-11-27 07:53:41', NULL, 0, 3, NULL, '2013-11-27 07:44:04', NULL, NULL),
(568, 2, '3550711484', 0, '35507', '', '1484', NULL, 1, 4, '2013-11-27 07:51:40', NULL, '2013-11-27 08:07:18', NULL, '2013-11-27 08:12:29', NULL, 0, 3, NULL, '2013-11-27 07:51:40', NULL, NULL),
(569, 3, '3550713783', 0, '35507', '', '3783', NULL, 1, 4, '2013-11-27 07:52:37', NULL, '2013-11-27 08:12:35', NULL, '2013-11-27 08:21:09', NULL, 0, 3, NULL, '2013-11-27 07:52:37', NULL, NULL),
(570, 4, '3550720587', 0, '35507', '', '0587', NULL, 2, 4, '2013-11-27 07:56:29', NULL, '2013-11-27 08:22:00', NULL, '2013-11-27 08:35:32', NULL, 0, 3, NULL, '2013-11-27 07:56:29', NULL, NULL),
(571, 5, '3550720255', 0, '35507', '', '0255', NULL, 2, 4, '2013-11-27 07:56:48', NULL, '2013-11-27 08:01:08', NULL, '2013-11-27 08:01:19', NULL, 0, 3, NULL, '2013-11-27 07:56:48', NULL, NULL),
(572, 6, '3550720311', 0, '35507', '', '0311', NULL, 2, 4, '2013-11-27 07:59:21', NULL, '2013-11-27 08:08:45', NULL, '2013-11-27 08:08:55', NULL, 0, 3, NULL, '2013-11-27 07:59:21', NULL, NULL),
(573, 7, '35507109993', 0, '35507', '', '09993', NULL, 1, 4, '2013-11-27 08:08:48', 0, NULL, NULL, '2013-11-27 08:48:17', NULL, 0, 3, NULL, '2013-11-27 08:08:48', NULL, NULL),
(574, 8, '3550721973', 0, '35507', '', '1973', NULL, 2, 4, '2013-11-27 08:12:52', NULL, '2013-11-27 08:19:12', NULL, '2013-11-27 08:19:17', NULL, 0, 3, NULL, '2013-11-27 08:12:52', NULL, NULL),
(575, 9, '3550719972', 0, '35507', '', '9972', NULL, 1, 1, '2013-11-27 08:18:08', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-27 08:18:08', NULL, NULL),
(576, 10, '35507109992', 0, '35507', '', '09992', NULL, 1, 4, '2013-11-27 08:19:45', 0, NULL, NULL, '2013-11-27 08:48:15', NULL, 0, 3, NULL, '2013-11-27 08:19:45', NULL, NULL),
(577, 11, '3550713751', 0, '35507', '', '3751', NULL, 1, 4, '2013-11-27 08:56:49', NULL, '2013-11-27 09:02:08', NULL, '2013-11-27 09:10:46', NULL, 0, 3, NULL, '2013-11-27 08:56:49', NULL, NULL),
(578, 12, '35507204106', 0, '35507', '', '04106', NULL, 2, 4, '2013-11-27 09:00:46', NULL, '2013-11-27 09:03:48', NULL, '2013-11-27 09:05:07', NULL, 0, 3, NULL, '2013-11-27 09:00:46', NULL, NULL),
(579, 13, '3550713011', 0, '35507', '', '3011', NULL, 1, 4, '2013-11-27 09:02:29', NULL, '2013-11-27 09:27:08', NULL, '2013-11-27 09:33:52', NULL, 0, 3, NULL, '2013-11-27 09:02:29', NULL, NULL),
(580, 14, '3550710946', 0, '35507', '', '0946', NULL, 1, 4, '2013-11-27 09:02:50', NULL, NULL, NULL, '2013-11-27 09:03:44', NULL, 0, 3, NULL, '2013-11-27 09:02:50', NULL, NULL),
(581, 15, '3550713494', 0, '35507', '', '3494', NULL, 1, 4, '2013-11-27 09:24:21', NULL, '2013-11-27 09:38:45', NULL, '2013-11-27 09:39:09', NULL, 0, 3, NULL, '2013-11-27 09:24:21', NULL, NULL),
(582, 16, '3550711005', 0, '35507', '', '1005', NULL, 1, 4, '2013-11-27 09:30:52', NULL, '2013-11-27 09:32:05', NULL, '2013-11-27 09:32:10', NULL, 0, 3, NULL, '2013-11-27 09:30:52', NULL, NULL),
(583, 17, '3550723594', 0, '35507', '', '3594', NULL, 2, 4, '2013-11-27 09:32:24', NULL, '2013-11-27 09:35:50', NULL, '2013-11-27 09:35:56', NULL, 0, 3, NULL, '2013-11-27 09:32:24', NULL, NULL),
(584, 18, '3550713968', 0, '35507', '', '3968', NULL, 1, 4, '2013-11-27 09:34:44', NULL, '2013-11-27 09:47:41', NULL, '2013-11-27 09:48:48', NULL, 0, 3, NULL, '2013-11-27 09:34:44', NULL, NULL),
(585, 19, '3550721197', 0, '35507', '', '1197', NULL, 2, 4, '2013-11-27 09:42:16', NULL, '2013-11-27 10:14:11', NULL, '2013-11-27 10:21:19', NULL, 0, 3, NULL, '2013-11-27 09:42:16', NULL, NULL),
(586, 20, '3550722377', 0, '35507', '', '2377', NULL, 2, 4, '2013-11-27 09:48:08', NULL, '2013-11-27 10:13:38', NULL, '2013-11-27 10:15:01', NULL, 0, 3, NULL, '2013-11-27 09:48:08', NULL, NULL),
(587, 21, '3550713083', 0, '35507', '', '3083', NULL, 1, 4, '2013-11-27 09:55:37', NULL, '2013-11-27 10:21:26', NULL, '2013-11-27 10:24:22', NULL, 0, 3, NULL, '2013-11-27 09:55:37', NULL, NULL),
(588, 22, '3550710752', 0, '35507', '', '0752', NULL, 1, 4, '2013-11-27 09:57:39', NULL, '2013-11-27 10:24:26', NULL, '2013-11-27 10:26:29', NULL, 0, 3, NULL, '2013-11-27 09:57:39', NULL, NULL),
(589, 23, '3550711790', 0, '35507', '', '1790', NULL, 1, 4, '2013-11-27 10:02:44', NULL, '2013-11-27 10:35:57', NULL, '2013-11-27 10:42:01', NULL, 0, 3, NULL, '2013-11-27 10:02:44', NULL, NULL),
(590, 24, '35507104065', 0, '35507', '', '04065', NULL, 1, 4, '2013-11-27 10:11:22', NULL, '2013-11-27 10:47:04', NULL, '2013-11-27 10:49:41', NULL, 0, 3, NULL, '2013-11-27 10:11:22', NULL, NULL),
(591, 25, '3550712019', 0, '35507', '', '2019', NULL, 1, 4, '2013-11-27 10:13:40', NULL, '2013-11-27 10:54:03', NULL, '2013-11-27 10:56:20', NULL, 0, 3, NULL, '2013-11-27 10:13:40', NULL, NULL),
(592, 26, '3550713543', 0, '35507', '', '3543', NULL, 1, 4, '2013-11-27 10:15:42', NULL, '2013-11-27 10:59:41', NULL, '2013-11-27 11:02:28', NULL, 0, 3, NULL, '2013-11-27 10:15:42', NULL, NULL),
(593, 27, '3550721495', 0, '35507', '', '1495', NULL, 2, 4, '2013-11-27 10:26:49', NULL, '2013-11-27 10:33:57', NULL, '2013-11-27 10:34:08', NULL, 0, 3, NULL, '2013-11-27 10:26:49', NULL, NULL),
(594, 28, '3550713019', 0, '35507', '', '3019', NULL, 1, 4, '2013-11-27 10:43:06', NULL, '2013-11-27 11:05:33', NULL, '2013-11-27 11:05:40', NULL, 0, 3, NULL, '2013-11-27 10:43:06', NULL, NULL),
(595, 29, '3550721596', 0, '35507', '', '1596', NULL, 2, 4, '2013-11-27 10:50:53', NULL, '2013-11-27 10:51:33', NULL, '2013-11-27 10:51:58', NULL, 0, 3, NULL, '2013-11-27 10:50:53', NULL, NULL),
(596, 30, '5323721961', 0, '53237', '', '1961', NULL, 2, 4, '2013-11-27 10:51:32', NULL, '2013-11-27 15:26:30', NULL, '2013-11-27 15:26:46', NULL, 0, 3, NULL, '2013-11-27 10:51:32', NULL, NULL),
(597, 31, '3550710662', 0, '35507', '', '0662', NULL, 1, 4, '2013-11-27 10:52:07', NULL, '2013-11-27 11:26:12', NULL, '2013-11-27 11:34:20', NULL, 0, 3, NULL, '2013-11-27 10:52:07', NULL, NULL),
(598, 32, '3550723894', 0, '35507', '', '3894', NULL, 2, 4, '2013-11-27 11:41:02', NULL, NULL, NULL, '2013-11-27 12:27:10', NULL, 0, 3, NULL, '2013-11-27 11:41:02', NULL, NULL),
(599, 33, '5323710226', 0, '53237', '', '0226', NULL, 1, 4, '2013-11-27 13:34:43', NULL, '2013-11-27 14:03:01', NULL, '2013-11-27 14:09:28', NULL, 0, 3, NULL, '2013-11-27 13:34:43', NULL, NULL),
(600, 34, '5323720971', 0, '53237', '', '0971', NULL, 2, 4, '2013-11-27 13:44:36', NULL, '2013-11-27 14:02:56', NULL, '2013-11-27 14:04:58', NULL, 0, 3, NULL, '2013-11-27 13:44:36', NULL, NULL),
(601, 35, '53237204083', 0, '53237', '', '04083', NULL, 2, 4, '2013-11-27 13:56:12', NULL, '2013-11-27 14:07:28', NULL, '2013-11-27 14:07:36', NULL, 0, 3, NULL, '2013-11-27 13:56:12', NULL, NULL),
(602, 36, '5323713244', 0, '53237', '', '3244', NULL, 1, 4, '2013-11-27 13:57:47', NULL, '2013-11-27 14:23:54', NULL, NULL, NULL, 0, 3, NULL, '2013-11-27 13:57:47', NULL, NULL),
(603, 37, '5323721180', 0, '53237', '', '1180', NULL, 2, 4, '2013-11-27 14:07:41', NULL, '2013-11-27 14:12:57', NULL, '2013-11-27 14:13:09', NULL, 0, 3, NULL, '2013-11-27 14:07:41', NULL, NULL),
(604, 38, '5323723001', 0, '53237', '', '3001', NULL, 2, 4, '2013-11-27 14:18:46', NULL, '2013-11-27 14:26:49', NULL, '2013-11-27 14:27:19', NULL, 0, 3, NULL, '2013-11-27 14:18:46', NULL, NULL),
(605, 39, '5323720205', 0, '53237', '', '0205', NULL, 2, 4, '2013-11-27 14:22:03', NULL, NULL, NULL, '2013-11-27 15:05:26', NULL, 0, 3, NULL, '2013-11-27 14:22:03', NULL, NULL),
(606, 40, '5323720760', 0, '53237', '', '0760', NULL, 2, 4, '2013-11-27 14:39:22', NULL, '2013-11-27 15:05:30', NULL, '2013-11-27 15:05:38', NULL, 0, 3, NULL, '2013-11-27 14:39:22', NULL, NULL),
(607, 41, '5323713406', 0, '53237', '', '3406', NULL, 1, 4, '2013-11-27 14:51:23', NULL, NULL, NULL, '2013-11-27 15:27:28', NULL, 0, 3, NULL, '2013-11-27 14:51:23', NULL, NULL),
(608, 42, '5323722585', 0, '53237', '', '2585', NULL, 2, 4, '2013-11-27 14:55:18', NULL, '2013-11-27 15:11:01', NULL, '2013-11-27 15:11:05', NULL, 0, 3, NULL, '2013-11-27 14:55:18', NULL, NULL),
(609, 43, '5323720655', 0, '53237', '', '0655', NULL, 2, 4, '2013-11-27 14:55:56', NULL, '2013-11-27 15:22:55', NULL, '2013-11-27 15:24:50', NULL, 0, 3, NULL, '2013-11-27 14:55:56', NULL, NULL),
(610, 44, '5323711288', 0, '53237', '', '1288', NULL, 1, 4, '2013-11-27 15:13:42', NULL, '2013-11-27 15:27:18', NULL, '2013-11-27 15:34:20', NULL, 0, 3, NULL, '2013-11-27 15:13:42', NULL, NULL),
(611, 45, '5323722714', 0, '53237', '', '2714', NULL, 2, 4, '2013-11-27 15:52:10', NULL, '2013-11-27 15:56:00', NULL, '2013-11-27 15:56:17', NULL, 0, 3, NULL, '2013-11-27 15:52:10', NULL, NULL),
(612, 46, '5323723799', 0, '53237', '', '3799', NULL, 2, 4, '2013-11-27 16:01:52', NULL, '2013-11-27 16:04:23', NULL, '2013-11-27 16:04:46', NULL, 0, 3, NULL, '2013-11-27 16:01:52', NULL, NULL),
(613, 47, '5323710632', 0, '53237', '', '0632', NULL, 1, 4, '2013-11-27 16:13:30', NULL, '2013-11-27 16:31:59', NULL, '2013-11-27 16:36:39', NULL, 0, 3, NULL, '2013-11-27 16:13:30', NULL, NULL),
(614, 48, '5323713684', 0, '53237', '', '3684', NULL, 1, 4, '2013-11-27 17:08:56', NULL, '2013-11-27 17:17:39', NULL, '2013-11-27 17:18:34', NULL, 0, 3, NULL, '2013-11-27 17:08:56', NULL, NULL),
(615, 1, '5323714007', 0, '53237', '', '4007', NULL, 1, 4, '2013-11-28 07:47:42', NULL, '2013-11-28 08:02:37', NULL, NULL, NULL, 0, 3, NULL, '2013-11-28 07:47:42', NULL, NULL),
(616, 2, '5323711709', 0, '53237', '', '1709', NULL, 1, 4, '2013-11-28 07:59:47', NULL, '2013-11-28 08:13:36', NULL, '2013-11-28 08:15:03', NULL, 0, 3, NULL, '2013-11-28 07:59:47', NULL, NULL),
(617, 3, '5323720778', 0, '53237', '', '0778', NULL, 2, 4, '2013-11-28 08:15:47', NULL, NULL, NULL, '2013-11-28 08:37:10', NULL, 0, 3, NULL, '2013-11-28 08:15:47', NULL, NULL),
(618, 4, '53237104180', 0, '53237', '', '04180', NULL, 1, 4, '2013-11-28 08:24:55', NULL, '2013-11-28 08:31:02', NULL, '2013-11-28 08:32:05', NULL, 0, 3, NULL, '2013-11-28 08:24:55', NULL, NULL),
(619, 5, '5323712836', 0, '53237', '', '2836', NULL, 1, 4, '2013-11-28 09:05:40', NULL, '2013-11-28 09:12:14', NULL, '2013-11-28 09:13:03', NULL, 0, 3, NULL, '2013-11-28 09:05:40', NULL, NULL),
(620, 6, '5323710794', 0, '53237', '', '0794', NULL, 1, 4, '2013-11-28 09:06:46', NULL, '2013-11-28 09:13:55', NULL, '2013-11-28 09:14:58', NULL, 0, 3, NULL, '2013-11-28 09:06:46', NULL, NULL),
(621, 7, '5323723269', 0, '53237', '', '3269', NULL, 2, 4, '2013-11-28 09:08:44', NULL, NULL, NULL, '2013-11-28 09:34:53', NULL, 0, 3, NULL, '2013-11-28 09:08:44', NULL, NULL),
(622, 8, '5323720960', 0, '53237', '', '0960', NULL, 2, 4, '2013-11-28 09:15:32', NULL, NULL, NULL, '2013-11-28 09:34:51', NULL, 0, 3, NULL, '2013-11-28 09:15:32', NULL, NULL),
(623, 9, '5323720099', 0, '53237', '', '0099', NULL, 2, 4, '2013-11-28 09:20:17', NULL, NULL, NULL, '2013-11-28 09:34:45', NULL, 0, 3, NULL, '2013-11-28 09:20:17', NULL, NULL),
(624, 10, '5323722833', 0, '53237', '', '2833', NULL, 2, 4, '2013-11-28 09:24:05', 0, '2013-11-28 09:32:13', NULL, '2013-11-28 09:34:05', NULL, 0, 3, NULL, '2013-11-28 09:24:05', NULL, NULL),
(625, 11, '5323720337', 0, '53237', '', '0337', NULL, 2, 4, '2013-11-28 09:52:34', NULL, '2013-11-28 09:59:12', NULL, '2013-11-28 09:59:33', NULL, 0, 3, NULL, '2013-11-28 09:52:34', NULL, NULL),
(626, 12, '5323721896', 0, '53237', '', '1896', NULL, 2, 4, '2013-11-28 09:52:54', NULL, '2013-11-28 10:01:14', NULL, '2013-11-28 10:01:32', NULL, 0, 3, NULL, '2013-11-28 09:52:54', NULL, NULL),
(627, 13, '5323722234', 0, '53237', '', '2234', NULL, 2, 4, '2013-11-28 09:53:03', NULL, '2013-11-28 10:06:52', NULL, '2013-11-28 10:07:01', NULL, 0, 3, NULL, '2013-11-28 09:53:03', NULL, NULL),
(628, 14, '5323720746', 0, '53237', '', '0746', NULL, 2, 4, '2013-11-28 10:10:46', NULL, '2013-11-28 10:13:05', NULL, '2013-11-28 10:13:32', NULL, 0, 3, NULL, '2013-11-28 10:10:46', NULL, NULL),
(629, 15, '5323710761', 0, '53237', '', '0761', NULL, 1, 4, '2013-11-28 10:26:42', NULL, '2013-11-28 10:49:24', NULL, '2013-11-28 10:50:20', NULL, 0, 3, NULL, '2013-11-28 10:26:42', NULL, NULL),
(630, 16, '5323711582', 0, '53237', '', '1582', NULL, 1, 4, '2013-11-28 10:54:46', NULL, '2013-11-28 11:09:50', NULL, '2013-11-28 11:10:26', NULL, 0, 3, NULL, '2013-11-28 10:54:46', NULL, NULL),
(631, 17, '5323721054', 0, '53237', '', '1054', NULL, 2, 4, '2013-11-28 11:02:46', NULL, NULL, NULL, '2013-11-28 11:34:46', NULL, 0, 3, NULL, '2013-11-28 11:02:46', NULL, NULL),
(632, 18, '5323713244', 0, '53237', '', '3244', NULL, 1, 4, '2013-11-28 11:04:23', NULL, '2013-11-28 11:15:17', NULL, '2013-11-28 11:16:27', NULL, 0, 3, NULL, '2013-11-28 11:04:23', NULL, NULL),
(633, 19, '5323713511', 0, '53237', '', '3511', NULL, 1, 4, '2013-11-28 11:08:47', NULL, '2013-11-28 11:15:27', NULL, '2013-11-28 11:15:57', NULL, 0, 3, NULL, '2013-11-28 11:08:47', NULL, NULL),
(634, 20, '3550711424', 0, '35507', '', '1424', NULL, 1, 4, '2013-11-28 14:05:16', NULL, NULL, NULL, '2013-11-28 15:17:51', NULL, 0, 3, NULL, '2013-11-28 14:05:16', NULL, NULL),
(635, 21, '3550713987', 0, '35507', '', '3987', NULL, 1, 4, '2013-11-28 14:05:28', NULL, NULL, NULL, '2013-11-28 15:17:54', NULL, 0, 3, NULL, '2013-11-28 14:05:28', NULL, NULL),
(636, 22, '3550710310', 0, '35507', '', '0310', NULL, 1, 4, '2013-11-28 14:05:37', NULL, '2013-11-28 14:32:13', NULL, '2013-11-28 14:32:16', NULL, 0, 3, NULL, '2013-11-28 14:05:37', NULL, NULL),
(637, 23, '3550713896', 0, '35507', '', '3896', NULL, 1, 4, '2013-11-28 14:05:46', NULL, NULL, NULL, '2013-11-28 15:17:48', NULL, 0, 3, NULL, '2013-11-28 14:05:46', NULL, NULL),
(638, 24, '3550721817', 0, '35507', '', '1817', NULL, 2, 4, '2013-11-28 14:06:05', NULL, '2013-11-28 14:37:08', NULL, '2013-11-28 14:37:37', NULL, 0, 3, NULL, '2013-11-28 14:06:05', NULL, NULL),
(639, 25, '3550710865', 0, '35507', '', '0865', NULL, 1, 4, '2013-11-28 14:06:22', NULL, NULL, NULL, '2013-11-28 15:17:43', NULL, 0, 3, NULL, '2013-11-28 14:06:22', NULL, NULL),
(640, 26, '3550713429', 0, '35507', '', '3429', NULL, 1, 4, '2013-11-28 14:47:38', NULL, NULL, NULL, '2013-11-28 15:17:40', NULL, 0, 3, NULL, '2013-11-28 14:47:38', NULL, NULL),
(641, 27, '3550720787', 0, '35507', '', '0787', NULL, 2, 4, '2013-11-28 15:02:54', NULL, '2013-11-28 15:13:10', NULL, '2013-11-28 15:13:14', NULL, 0, 3, NULL, '2013-11-28 15:02:54', NULL, NULL),
(642, 28, '3550713317', 0, '35507', '', '3317', NULL, 1, 4, '2013-11-28 15:07:18', NULL, NULL, NULL, '2013-11-28 15:28:58', NULL, 0, 3, NULL, '2013-11-28 15:07:18', NULL, NULL),
(643, 29, '3550713951', 0, '35507', '', '3951', NULL, 1, 4, '2013-11-28 15:37:10', NULL, '2013-11-28 16:00:56', NULL, '2013-11-28 16:01:00', NULL, 0, 3, NULL, '2013-11-28 15:37:10', NULL, NULL),
(644, 30, '3550713726', 0, '35507', '', '3726', NULL, 1, 4, '2013-11-28 16:03:40', NULL, '2013-11-28 16:34:57', NULL, '2013-11-28 16:35:44', NULL, 0, 3, NULL, '2013-11-28 16:03:40', NULL, NULL),
(645, 31, '3550720507', 0, '35507', '', '0507', NULL, 2, 4, '2013-11-28 16:06:16', NULL, '2013-11-28 16:11:45', NULL, '2013-11-28 16:12:00', NULL, 0, 3, NULL, '2013-11-28 16:06:16', NULL, NULL),
(646, 32, '3550713709', 0, '35507', '', '3709', NULL, 1, 4, '2013-11-28 16:27:03', NULL, NULL, NULL, '2013-11-28 17:08:25', NULL, 0, 3, NULL, '2013-11-28 16:27:03', NULL, NULL),
(647, 33, '3550713214', 0, '35507', '', '3214', NULL, 1, 4, '2013-11-28 16:31:00', NULL, NULL, NULL, '2013-11-28 17:05:24', NULL, 0, 3, NULL, '2013-11-28 16:31:00', NULL, NULL),
(648, 34, '3550723848', 0, '35507', '', '3848', NULL, 2, 4, '2013-11-28 16:42:37', NULL, NULL, NULL, '2013-11-28 17:05:22', NULL, 0, 3, NULL, '2013-11-28 16:42:37', NULL, NULL),
(649, 35, '35507104164', 0, '35507', '', '04164', NULL, 1, 4, '2013-11-28 16:43:16', NULL, NULL, NULL, '2013-11-28 17:05:19', NULL, 0, 3, NULL, '2013-11-28 16:43:16', NULL, NULL),
(650, 36, '3550712933', 0, '35507', '', '2933', NULL, 1, 4, '2013-11-28 16:48:28', NULL, NULL, NULL, '2013-11-28 17:05:17', NULL, 0, 3, NULL, '2013-11-28 16:48:28', NULL, NULL),
(651, 37, '3550720138', 0, '35507', '', '0138', NULL, 2, 4, '2013-11-28 17:00:28', NULL, '2013-11-28 17:05:33', NULL, '2013-11-28 17:05:52', NULL, 0, 3, NULL, '2013-11-28 17:00:28', NULL, NULL),
(652, 1, '3550713217', 0, '35507', '', '3217', NULL, 1, 4, '2013-11-29 07:29:06', NULL, '2013-11-29 08:21:26', NULL, '2013-11-29 08:21:38', NULL, 0, 3, NULL, '2013-11-29 07:29:06', NULL, NULL),
(653, 2, '35507104146', 0, '35507', '', '04146', NULL, 1, 4, '2013-11-29 07:46:35', NULL, '2013-11-29 08:27:39', NULL, '2013-11-29 08:31:44', NULL, 0, 3, NULL, '2013-11-29 07:46:35', NULL, NULL),
(654, 3, '3550710791', 0, '35507', '', '0791', NULL, 1, 4, '2013-11-29 07:52:00', NULL, '2013-11-29 08:32:51', NULL, '2013-11-29 08:36:12', NULL, 0, 3, NULL, '2013-11-29 07:52:00', NULL, NULL),
(655, 4, '5323722485', 0, '53237', '', '2485', NULL, 2, 4, '2013-11-29 07:53:14', NULL, '2013-11-29 07:56:53', NULL, '2013-11-29 07:58:35', NULL, 0, 3, NULL, '2013-11-29 07:53:14', NULL, NULL),
(656, 5, '5323712148', 0, '53237', '', '2148', NULL, 1, 4, '2013-11-29 08:00:50', NULL, '2013-11-29 08:38:21', NULL, '2013-11-29 08:39:33', NULL, 0, 3, NULL, '2013-11-29 08:00:50', NULL, NULL),
(657, 6, '3550722725', 0, '35507', '', '2725', NULL, 2, 4, '2013-11-29 08:19:46', NULL, '2013-11-29 08:23:12', NULL, '2013-11-29 08:23:20', NULL, 0, 3, NULL, '2013-11-29 08:19:46', NULL, NULL),
(658, 7, '5323721732', 0, '53237', '', '1732', NULL, 2, 4, '2013-11-29 08:26:47', NULL, '2013-11-29 08:36:54', NULL, '2013-11-29 08:36:59', NULL, 0, 3, NULL, '2013-11-29 08:26:47', NULL, NULL),
(659, 8, '5323720907', 0, '53237', '', '0907', NULL, 2, 4, '2013-11-29 08:27:55', NULL, '2013-11-29 08:39:56', NULL, '2013-11-29 08:41:32', NULL, 0, 3, NULL, '2013-11-29 08:27:55', NULL, NULL),
(660, 9, '5323721233', 0, '53237', '', '1233', NULL, 2, 4, '2013-11-29 08:33:49', NULL, '2013-11-29 08:36:03', NULL, '2013-11-29 08:36:09', NULL, 0, 3, NULL, '2013-11-29 08:33:49', NULL, NULL),
(661, 10, '5323720756', 0, '53237', '', '0756', NULL, 2, 4, '2013-11-29 08:54:49', NULL, '2013-11-29 08:59:57', NULL, NULL, NULL, 0, 3, NULL, '2013-11-29 08:54:49', NULL, NULL),
(662, 11, '35507109992', 0, '35507', '', '09992', NULL, 1, 4, '2013-11-29 09:04:00', 0, NULL, NULL, '2013-11-29 09:18:17', NULL, 0, 3, NULL, '2013-11-29 09:04:00', NULL, NULL),
(663, 12, '35507204021', 0, '35507', '', '04021', NULL, 2, 4, '2013-11-29 09:09:04', NULL, '2013-11-29 09:23:23', NULL, '2013-11-29 09:28:08', NULL, 0, 3, NULL, '2013-11-29 09:09:04', NULL, NULL),
(664, 13, '3550719972', 0, '35507', '', '9972', NULL, 1, 1, '2013-11-29 09:09:30', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-29 09:09:30', NULL, NULL),
(665, 14, '5323711288', 0, '53237', '', '1288', NULL, 1, 4, '2013-11-29 09:11:46', NULL, '2013-11-29 09:12:39', NULL, NULL, NULL, 0, 3, NULL, '2013-11-29 09:11:46', NULL, NULL),
(666, 15, '3550723907', 0, '35507', '', '3907', NULL, 2, 4, '2013-11-29 09:15:29', NULL, '2013-11-29 09:24:26', NULL, '2013-11-29 09:25:03', NULL, 0, 3, NULL, '2013-11-29 09:15:29', NULL, NULL),
(667, 16, '5323713035', 0, '53237', '', '3035', NULL, 1, 1, '2013-11-29 09:16:38', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-29 09:16:38', NULL, NULL),
(668, 17, '3550721082', 0, '35507', '', '1082', NULL, 2, 4, '2013-11-29 09:18:01', NULL, '2013-11-29 09:28:00', NULL, '2013-11-29 09:28:17', NULL, 0, 3, NULL, '2013-11-29 09:18:01', NULL, NULL),
(669, 18, '5323711256', 0, '53237', '', '1256', NULL, 1, 4, '2013-11-29 09:19:59', NULL, '2013-11-29 09:31:35', NULL, '2013-11-29 09:37:37', NULL, 0, 3, NULL, '2013-11-29 09:19:59', NULL, NULL),
(670, 19, '3550710946', 0, '35507', '', '0946', NULL, 1, 4, '2013-11-29 09:46:32', NULL, '2013-11-29 09:59:29', NULL, '2013-11-29 10:07:07', NULL, 0, 3, NULL, '2013-11-29 09:46:32', NULL, NULL),
(671, 20, '3550710425', 0, '35507', '', '0425', NULL, 1, 4, '2013-11-29 09:57:07', NULL, '2013-11-29 10:11:34', NULL, '2013-11-29 10:15:41', NULL, 0, 3, NULL, '2013-11-29 09:57:07', NULL, NULL),
(672, 21, '5323722625', 0, '53237', '', '2625', NULL, 2, 1, '2013-11-29 10:07:49', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-29 10:07:49', NULL, NULL),
(673, 22, '5323721432', 0, '53237', '', '1432', NULL, 2, 1, '2013-11-29 10:08:11', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-29 10:08:11', NULL, NULL),
(674, 23, '3550721018', 0, '35507', '', '1018', NULL, 2, 4, '2013-11-29 10:14:40', NULL, '2013-11-29 10:22:23', NULL, '2013-11-29 10:22:27', NULL, 0, 3, NULL, '2013-11-29 10:14:40', NULL, NULL),
(675, 24, '5323723555', 0, '53237', '', '3555', NULL, 2, 1, '2013-11-29 10:17:23', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-29 10:17:23', NULL, NULL),
(676, 25, '35507209991', 0, '35507', '', '09991', NULL, 2, 1, '2013-11-29 10:19:50', 0, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-29 10:19:50', NULL, NULL),
(677, 26, '3550721711', 0, '35507', '', '1711', NULL, 2, 4, '2013-11-29 10:49:14', NULL, '2013-11-29 10:52:09', NULL, '2013-11-29 10:58:42', NULL, 0, 3, NULL, '2013-11-29 10:49:14', NULL, NULL),
(678, 27, '3550721093', 0, '35507', '', '1093', NULL, 2, 4, '2013-11-29 10:50:46', NULL, '2013-11-29 10:54:54', NULL, '2013-11-29 10:55:38', NULL, 0, 3, NULL, '2013-11-29 10:50:46', NULL, NULL),
(679, 28, '3550713656', 0, '35507', '', '3656', NULL, 1, 4, '2013-11-29 10:55:18', NULL, '2013-11-29 10:59:34', NULL, '2013-11-29 11:00:07', NULL, 0, 3, NULL, '2013-11-29 10:55:18', NULL, NULL),
(680, 29, '5323720643', 0, '53237', '', '0643', NULL, 2, 1, '2013-11-29 10:58:07', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-11-29 10:58:07', NULL, NULL),
(681, 30, '3550712116', 0, '35507', '', '2116', NULL, 1, 4, '2013-11-29 11:03:03', NULL, '2013-11-29 11:05:25', NULL, '2013-11-29 11:10:11', NULL, 0, 3, NULL, '2013-11-29 11:03:03', NULL, NULL),
(682, 31, '3550712019', 0, '35507', '', '2019', NULL, 1, 4, '2013-11-29 11:12:40', NULL, '2013-11-29 11:18:20', NULL, '2013-11-29 11:20:30', NULL, 0, 3, NULL, '2013-11-29 11:12:40', NULL, NULL),
(683, 32, '3550723786', 0, '35507', '', '3786', NULL, 2, 4, '2013-11-29 11:12:56', NULL, '2013-11-29 11:18:05', NULL, '2013-11-29 11:18:12', NULL, 0, 3, NULL, '2013-11-29 11:12:56', NULL, NULL),
(684, 33, '3550712403', 0, '35507', '', '2403', NULL, 1, 4, '2013-11-29 11:18:14', NULL, '2013-11-29 11:29:32', NULL, '2013-11-29 11:31:56', NULL, 0, 3, NULL, '2013-11-29 11:18:14', NULL, NULL),
(685, 1, '3550711102', 0, '35507', '', '1102', NULL, 1, 4, '2013-12-02 07:58:00', NULL, '2013-12-02 08:12:13', NULL, '2013-12-02 08:13:42', NULL, 0, 3, NULL, '2013-12-02 07:58:00', NULL, NULL),
(686, 2, '3550710581', 0, '35507', '', '0581', NULL, 1, 4, '2013-12-02 07:58:10', NULL, '2013-12-02 08:17:39', NULL, '2013-12-02 08:29:49', NULL, 0, 3, NULL, '2013-12-02 07:58:10', NULL, NULL),
(687, 3, '3550710887', 0, '35507', '', '0887', NULL, 1, 4, '2013-12-02 07:59:00', NULL, '2013-12-02 08:33:12', NULL, '2013-12-02 08:39:22', NULL, 0, 3, NULL, '2013-12-02 07:59:00', NULL, NULL),
(688, 4, '3550720255', 0, '35507', '', '0255', NULL, 2, 4, '2013-12-02 07:59:40', NULL, '2013-12-02 08:01:37', NULL, '2013-12-02 08:07:45', NULL, 0, 3, NULL, '2013-12-02 07:59:40', NULL, NULL),
(689, 5, '35507109990', 0, '35507', '', '09990', NULL, 1, 4, '2013-12-02 07:59:44', 0, NULL, NULL, '2013-12-02 08:56:47', NULL, 0, 3, NULL, '2013-12-02 07:59:44', NULL, NULL),
(690, 6, '3550720310', 0, '35507', '', '0310', NULL, 2, 4, '2013-12-02 08:14:16', NULL, NULL, NULL, '2013-12-02 08:53:46', NULL, 0, 3, NULL, '2013-12-02 08:14:16', NULL, NULL),
(691, 7, '3550712403', 0, '35507', '', '2403', NULL, 1, 4, '2013-12-02 08:23:26', NULL, '2013-12-02 08:53:50', NULL, '2013-12-02 08:55:18', NULL, 0, 3, NULL, '2013-12-02 08:23:26', NULL, NULL),
(692, 8, '3550722307', 0, '35507', '', '2307', NULL, 2, 4, '2013-12-02 08:39:28', NULL, NULL, NULL, '2013-12-02 08:53:50', NULL, 0, 3, NULL, '2013-12-02 08:39:28', NULL, NULL),
(693, 9, '3550722308', 0, '35507', '', '2308', NULL, 2, 4, '2013-12-02 08:39:50', NULL, NULL, NULL, '2013-12-02 08:53:54', NULL, 0, 3, NULL, '2013-12-02 08:39:50', NULL, NULL),
(694, 10, '3550722502', 0, '35507', '', '2502', NULL, 2, 4, '2013-12-02 08:39:57', NULL, NULL, NULL, '2013-12-02 08:54:04', NULL, 0, 3, NULL, '2013-12-02 08:39:57', NULL, NULL),
(695, 11, '3550723388', 0, '35507', '', '3388', NULL, 2, 4, '2013-12-02 08:40:03', NULL, NULL, NULL, '2013-12-02 08:54:00', NULL, 0, 3, NULL, '2013-12-02 08:40:03', NULL, NULL),
(696, 12, '3550721162', 0, '35507', '', '1162', NULL, 2, 4, '2013-12-02 08:54:14', NULL, '2013-12-02 08:54:59', NULL, '2013-12-02 08:55:02', NULL, 0, 3, NULL, '2013-12-02 08:54:14', NULL, NULL),
(697, 13, '3550711518', 0, '35507', '', '1518', NULL, 1, 4, '2013-12-02 09:02:27', NULL, '2013-12-02 09:13:43', NULL, '2013-12-02 09:13:53', NULL, 0, 3, NULL, '2013-12-02 09:02:27', NULL, NULL),
(698, 14, '3550711387', 0, '35507', '', '1387', NULL, 1, 4, '2013-12-02 09:07:05', NULL, '2013-12-02 09:14:17', NULL, '2013-12-02 09:15:39', NULL, 0, 3, NULL, '2013-12-02 09:07:05', NULL, NULL),
(699, 15, '3550721672', 0, '35507', '', '1672', NULL, 2, 4, '2013-12-02 09:11:12', NULL, '2013-12-02 09:12:11', NULL, '2013-12-02 09:12:32', NULL, 0, 3, NULL, '2013-12-02 09:11:12', NULL, NULL),
(700, 16, '35507104162', 0, '35507', '', '04162', NULL, 1, 4, '2013-12-02 09:18:31', NULL, '2013-12-02 09:25:57', NULL, '2013-12-02 09:26:14', NULL, 0, 3, NULL, '2013-12-02 09:18:31', NULL, NULL),
(701, 17, '3550723953', 0, '35507', '', '3953', NULL, 2, 4, '2013-12-02 09:20:11', NULL, '2013-12-02 09:20:39', NULL, '2013-12-02 09:24:49', NULL, 0, 3, NULL, '2013-12-02 09:20:11', NULL, NULL),
(702, 18, '3550721730', 0, '35507', '', '1730', NULL, 2, 4, '2013-12-02 09:20:20', NULL, '2013-12-02 09:25:13', NULL, '2013-12-02 09:25:18', NULL, 0, 3, NULL, '2013-12-02 09:20:20', NULL, NULL),
(703, 19, '3550721094', 0, '35507', '', '1094', NULL, 2, 4, '2013-12-02 09:37:49', NULL, '2013-12-02 09:41:22', NULL, '2013-12-02 09:41:27', NULL, 0, 3, NULL, '2013-12-02 09:37:49', NULL, NULL),
(704, 20, '3550721837', 0, '35507', '', '1837', NULL, 2, 4, '2013-12-02 09:43:33', NULL, '2013-12-02 09:56:14', NULL, '2013-12-02 09:56:19', NULL, 0, 3, NULL, '2013-12-02 09:43:33', NULL, NULL),
(705, 21, '35507104105', 0, '35507', '', '04105', NULL, 1, 4, '2013-12-02 09:54:35', NULL, '2013-12-02 10:04:03', NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 09:54:35', NULL, NULL),
(706, 22, '3550710517', 0, '35507', '', '0517', NULL, 1, 4, '2013-12-02 09:55:36', NULL, '2013-12-02 10:08:43', NULL, '2013-12-02 10:10:33', NULL, 0, 3, NULL, '2013-12-02 09:55:36', NULL, NULL),
(707, 23, '3550720893', 0, '35507', '', '0893', NULL, 2, 4, '2013-12-02 10:00:39', NULL, NULL, NULL, '2013-12-02 10:02:34', NULL, 0, 3, NULL, '2013-12-02 10:00:39', NULL, NULL),
(708, 24, '3550720354', 0, '35507', '', '0354', NULL, 2, 4, '2013-12-02 10:08:25', NULL, '2013-12-02 10:20:37', NULL, '2013-12-02 10:20:42', NULL, 0, 3, NULL, '2013-12-02 10:08:25', NULL, NULL),
(709, 25, '35507109998', 0, '35507', '', '09998', NULL, 1, 1, '2013-12-02 10:23:19', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 10:23:19', NULL, NULL),
(710, 26, '3550723117', 0, '35507', '', '3117', NULL, 2, 1, '2013-12-02 10:23:41', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 10:23:41', NULL, NULL),
(711, 27, '5323723696', 0, '53237', '', '3696', NULL, 2, 4, '2013-12-02 10:34:44', NULL, '2013-12-02 13:47:35', NULL, '2013-12-02 13:48:10', NULL, 0, 3, NULL, '2013-12-02 10:34:44', NULL, NULL),
(712, 28, '3550720212', 0, '35507', '', '0212', NULL, 2, 1, '2013-12-02 10:37:13', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 10:37:13', NULL, NULL),
(713, 29, '3550711376', 0, '35507', '', '1376', NULL, 1, 1, '2013-12-02 10:46:51', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 10:46:51', NULL, NULL),
(714, 30, '3550722801', 0, '35507', '', '2801', NULL, 2, 1, '2013-12-02 10:48:29', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 10:48:29', NULL, NULL),
(715, 31, '3550721874', 0, '35507', '', '1874', NULL, 2, 1, '2013-12-02 10:49:59', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 10:49:59', NULL, NULL),
(716, 32, '3550722018', 0, '35507', '', '2018', NULL, 2, 1, '2013-12-02 10:56:42', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 10:56:42', NULL, NULL),
(717, 33, '3550720118', 0, '35507', '', '0118', NULL, 2, 1, '2013-12-02 10:58:11', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 10:58:11', NULL, NULL),
(718, 34, '3550720235', 0, '35507', '', '0235', NULL, 2, 1, '2013-12-02 11:01:34', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 11:01:34', NULL, NULL),
(719, 35, '3550712117', 0, '35507', '', '2117', NULL, 1, 1, '2013-12-02 11:13:46', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 11:13:46', NULL, NULL),
(720, 36, '3550712715', 0, '35507', '', '2715', NULL, 1, 1, '2013-12-02 11:21:57', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 11:21:57', NULL, NULL),
(721, 37, '3550712638', 0, '35507', '', '2638', NULL, 1, 1, '2013-12-02 11:25:12', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-02 11:25:12', NULL, NULL),
(722, 38, '5323721106', 0, '53237', '', '1106', NULL, 2, 4, '2013-12-02 13:35:48', NULL, '2013-12-02 13:48:17', NULL, '2013-12-02 13:48:21', NULL, 0, 3, NULL, '2013-12-02 13:35:48', NULL, NULL),
(723, 39, '5323721412', 0, '53237', '', '1412', NULL, 2, 4, '2013-12-02 13:36:26', NULL, '2013-12-02 13:49:33', NULL, '2013-12-02 13:49:37', NULL, 0, 3, NULL, '2013-12-02 13:36:26', NULL, NULL),
(724, 40, '5323713070', 0, '53237', '', '3070', NULL, 1, 4, '2013-12-02 13:36:58', NULL, '2013-12-02 14:08:47', NULL, '2013-12-02 14:19:43', NULL, 0, 3, NULL, '2013-12-02 13:36:58', NULL, NULL),
(725, 41, '5323722835', 0, '53237', '', '2835', NULL, 2, 4, '2013-12-02 13:47:57', NULL, '2013-12-02 13:50:23', NULL, '2013-12-02 13:50:27', NULL, 0, 3, NULL, '2013-12-02 13:47:57', NULL, NULL),
(726, 42, '5323721319', 0, '53237', '', '1319', NULL, 2, 4, '2013-12-02 13:53:20', NULL, '2013-12-02 13:59:09', NULL, '2013-12-02 13:59:18', NULL, 0, 3, NULL, '2013-12-02 13:53:20', NULL, NULL),
(727, 43, '5323713698', 0, '53237', '', '3698', NULL, 1, 4, '2013-12-02 13:54:45', NULL, NULL, NULL, '2013-12-02 14:35:39', NULL, 0, 3, NULL, '2013-12-02 13:54:45', NULL, NULL),
(728, 44, '5323712036', 0, '53237', '', '2036', NULL, 1, 4, '2013-12-02 14:08:00', NULL, NULL, NULL, '2013-12-02 14:09:16', NULL, 0, 3, NULL, '2013-12-02 14:08:00', NULL, NULL),
(729, 45, '5323711568', 0, '53237', '', '1568', NULL, 1, 4, '2013-12-02 14:12:27', NULL, NULL, NULL, '2013-12-02 14:35:41', NULL, 0, 3, NULL, '2013-12-02 14:12:27', NULL, NULL),
(730, 46, '5323713458', 0, '53237', '', '3458', NULL, 1, 4, '2013-12-02 14:31:57', NULL, '2013-12-02 14:35:43', NULL, '2013-12-02 14:36:53', NULL, 0, 3, NULL, '2013-12-02 14:31:57', NULL, NULL),
(731, 47, '5323723407', 0, '53237', '', '3407', NULL, 2, 4, '2013-12-02 14:33:26', NULL, '2013-12-02 14:44:18', NULL, '2013-12-02 14:49:50', NULL, 0, 3, NULL, '2013-12-02 14:33:26', NULL, NULL),
(732, 48, '5323720543', 0, '53237', '', '0543', NULL, 2, 4, '2013-12-02 14:33:46', NULL, NULL, NULL, '2013-12-02 14:58:03', NULL, 0, 3, NULL, '2013-12-02 14:33:46', NULL, NULL),
(733, 49, '5323713629', 0, '53237', '', '3629', NULL, 1, 4, '2013-12-02 14:34:08', NULL, '2013-12-02 14:45:39', NULL, '2013-12-02 14:47:49', NULL, 0, 3, NULL, '2013-12-02 14:34:08', NULL, NULL),
(734, 50, '5323713737', 0, '53237', '', '3737', NULL, 1, 4, '2013-12-02 14:48:40', NULL, '2013-12-02 14:52:50', NULL, '2013-12-02 14:53:33', NULL, 0, 3, NULL, '2013-12-02 14:48:40', NULL, NULL),
(735, 51, '53237102771', 0, '53237', '', '02771', NULL, 1, 4, '2013-12-02 15:06:51', NULL, '2013-12-02 15:09:52', NULL, '2013-12-02 15:10:48', NULL, 0, 3, NULL, '2013-12-02 15:06:51', NULL, NULL),
(736, 52, '53237109993', 0, '53237', '', '09993', NULL, 1, 4, '2013-12-02 15:13:22', 0, NULL, NULL, '2013-12-02 15:23:38', NULL, 0, 3, NULL, '2013-12-02 15:13:22', NULL, NULL),
(737, 53, '5323710911', 0, '53237', '', '0911', NULL, 1, 4, '2013-12-02 15:50:12', NULL, '2013-12-02 15:54:34', NULL, '2013-12-02 15:55:40', NULL, 0, 3, NULL, '2013-12-02 15:50:12', NULL, NULL),
(738, 54, '5323720605', 0, '53237', '', '0605', NULL, 2, 4, '2013-12-02 16:05:38', NULL, '2013-12-02 16:05:47', NULL, '2013-12-02 16:08:17', NULL, 0, 3, NULL, '2013-12-02 16:05:38', NULL, NULL),
(739, 55, '53237104116', 0, '53237', '', '04116', NULL, 1, 4, '2013-12-02 16:12:34', NULL, NULL, NULL, '2013-12-02 16:12:52', NULL, 0, 3, NULL, '2013-12-02 16:12:34', NULL, NULL),
(740, 56, '5323721180', 0, '53237', '', '1180', NULL, 2, 4, '2013-12-02 16:22:46', NULL, '2013-12-02 16:23:23', NULL, '2013-12-02 16:23:39', NULL, 0, 3, NULL, '2013-12-02 16:22:46', NULL, NULL),
(741, 57, '5323712900', 0, '53237', '', '2900', NULL, 1, 4, '2013-12-02 16:24:02', NULL, '2013-12-02 16:32:25', NULL, '2013-12-02 16:33:52', NULL, 0, 3, NULL, '2013-12-02 16:24:02', NULL, NULL),
(742, 58, '5323712835', 0, '53237', '', '2835', NULL, 1, 4, '2013-12-02 16:52:09', NULL, '2013-12-02 16:54:38', NULL, '2013-12-02 16:55:59', NULL, 0, 3, NULL, '2013-12-02 16:52:09', NULL, NULL),
(743, 59, '5323711549', 0, '53237', '', '1549', NULL, 1, 4, '2013-12-02 17:13:20', NULL, '2013-12-02 17:15:04', NULL, '2013-12-02 17:17:16', NULL, 0, 3, NULL, '2013-12-02 17:13:20', NULL, NULL),
(744, 1, '5323723696', 0, '53237', '', '3696', NULL, 2, 4, '2013-12-03 08:01:09', NULL, '2013-12-03 08:08:42', NULL, '2013-12-03 08:09:00', NULL, 0, 3, NULL, '2013-12-03 08:01:09', NULL, NULL),
(745, 2, '5323713395', 0, '53237', '', '3395', NULL, 1, 4, '2013-12-03 08:11:13', NULL, '2013-12-03 08:12:11', NULL, '2013-12-03 08:14:10', NULL, 0, 3, NULL, '2013-12-03 08:11:13', NULL, NULL),
(746, 3, '5323714092', 0, '53237', '', '4092', NULL, 1, 4, '2013-12-03 08:15:24', NULL, '2013-12-03 08:24:26', NULL, '2013-12-03 08:25:46', NULL, 0, 3, NULL, '2013-12-03 08:15:24', NULL, NULL),
(747, 4, '5323721306', 0, '53237', '', '1306', NULL, 2, 4, '2013-12-03 08:16:50', NULL, '2013-12-03 08:20:01', NULL, '2013-12-03 08:20:15', NULL, 0, 3, NULL, '2013-12-03 08:16:50', NULL, NULL),
(748, 5, '5323722381', 0, '53237', '', '2381', NULL, 2, 4, '2013-12-03 08:40:24', NULL, '2013-12-03 08:47:24', NULL, '2013-12-03 08:47:36', NULL, 0, 3, NULL, '2013-12-03 08:40:24', NULL, NULL),
(749, 6, '5323723305', 0, '53237', '', '3305', NULL, 2, 4, '2013-12-03 08:54:46', NULL, '2013-12-03 09:08:09', NULL, '2013-12-03 09:08:18', NULL, 0, 3, NULL, '2013-12-03 08:54:46', NULL, NULL),
(750, 7, '5323711288', 0, '53237', '', '1288', NULL, 1, 4, '2013-12-03 08:56:17', NULL, '2013-12-03 09:08:50', NULL, '2013-12-03 09:10:50', NULL, 0, 3, NULL, '2013-12-03 08:56:17', NULL, NULL),
(751, 8, '5323721290', 0, '53237', '', '1290', NULL, 2, 4, '2013-12-03 08:59:08', NULL, '2013-12-03 09:09:56', NULL, '2013-12-03 09:10:15', NULL, 0, 3, NULL, '2013-12-03 08:59:08', NULL, NULL),
(752, 9, '5323711086', 0, '53237', '', '1086', NULL, 1, 4, '2013-12-03 09:08:55', NULL, '2013-12-03 09:11:19', NULL, '2013-12-03 09:15:34', NULL, 0, 3, NULL, '2013-12-03 09:08:55', NULL, NULL),
(753, 10, '5323722846', 0, '53237', '', '2846', NULL, 2, 4, '2013-12-03 09:12:33', NULL, '2013-12-03 09:14:53', NULL, '2013-12-03 09:16:23', NULL, 0, 3, NULL, '2013-12-03 09:12:33', NULL, NULL),
(754, 11, '5323710548', 0, '53237', '', '0548', NULL, 1, 4, '2013-12-03 09:12:58', NULL, '2013-12-03 09:17:03', NULL, '2013-12-03 09:18:00', NULL, 0, 3, NULL, '2013-12-03 09:12:58', NULL, NULL),
(755, 12, '5323711256', 0, '53237', '', '1256', NULL, 1, 4, '2013-12-03 09:30:28', NULL, '2013-12-03 09:30:47', NULL, '2013-12-03 09:31:46', NULL, 0, 3, NULL, '2013-12-03 09:30:28', NULL, NULL),
(756, 13, '5323721714', 0, '53237', '', '1714', NULL, 2, 4, '2013-12-03 09:32:47', NULL, '2013-12-03 09:45:07', NULL, '2013-12-03 09:45:17', NULL, 0, 3, NULL, '2013-12-03 09:32:47', NULL, NULL),
(757, 14, '5323713402', 0, '53237', '', '3402', NULL, 1, 4, '2013-12-03 09:33:50', NULL, '2013-12-03 09:39:50', NULL, '2013-12-03 09:42:08', NULL, 0, 3, NULL, '2013-12-03 09:33:50', NULL, NULL),
(758, 15, '5323711375', 0, '53237', '', '1375', NULL, 1, 4, '2013-12-03 09:43:42', NULL, '2013-12-03 09:43:50', NULL, '2013-12-03 09:45:26', NULL, 0, 3, NULL, '2013-12-03 09:43:42', NULL, NULL),
(759, 16, '5323713402', 0, '53237', '', '3402', NULL, 1, 4, '2013-12-03 09:47:52', NULL, NULL, NULL, '2013-12-03 09:58:30', NULL, 0, 3, NULL, '2013-12-03 09:47:52', NULL, NULL),
(760, 17, '5323711117', 0, '53237', '', '1117', NULL, 1, 4, '2013-12-03 09:58:50', 0, '2013-12-03 09:59:20', NULL, '2013-12-03 10:09:35', NULL, 0, 3, NULL, '2013-12-03 09:58:50', NULL, NULL),
(761, 18, '5323723956', 0, '53237', '', '3956', NULL, 2, 4, '2013-12-03 10:04:51', NULL, '2013-12-03 10:07:15', NULL, '2013-12-03 10:07:31', NULL, 0, 3, NULL, '2013-12-03 10:04:51', NULL, NULL),
(762, 19, '5323720664', 0, '53237', '', '0664', NULL, 2, 4, '2013-12-03 10:09:58', NULL, '2013-12-03 10:23:20', NULL, '2013-12-03 10:23:29', NULL, 0, 3, NULL, '2013-12-03 10:09:58', NULL, NULL),
(763, 20, '5323722916', 0, '53237', '', '2916', NULL, 2, 4, '2013-12-03 10:27:52', NULL, '2013-12-03 10:39:59', NULL, '2013-12-03 10:40:06', NULL, 0, 3, NULL, '2013-12-03 10:27:52', NULL, NULL),
(764, 21, '5323723248', 0, '53237', '', '3248', NULL, 2, 4, '2013-12-03 10:37:13', NULL, '2013-12-03 10:52:16', NULL, '2013-12-03 10:52:21', NULL, 0, 3, NULL, '2013-12-03 10:37:13', NULL, NULL),
(765, 22, '5323711227', 0, '53237', '', '1227', NULL, 1, 4, '2013-12-03 10:52:30', NULL, '2013-12-03 11:03:39', NULL, '2013-12-03 11:04:52', NULL, 0, 3, NULL, '2013-12-03 10:52:30', NULL, NULL),
(766, 23, '3550713990', 0, '35507', '', '3990', NULL, 1, 4, '2013-12-03 13:34:44', NULL, '2013-12-03 14:11:53', NULL, '2013-12-03 14:11:59', NULL, 0, 3, NULL, '2013-12-03 13:34:44', NULL, NULL),
(767, 24, '3550722707', 0, '35507', '', '2707', NULL, 2, 4, '2013-12-03 13:35:17', NULL, '2013-12-03 13:44:13', NULL, '2013-12-03 13:44:21', NULL, 0, 3, NULL, '2013-12-03 13:35:17', NULL, NULL),
(768, 25, '3550710920', 0, '35507', '', '0920', NULL, 1, 4, '2013-12-03 13:36:54', NULL, '2013-12-03 14:23:32', NULL, '2013-12-03 14:25:27', NULL, 0, 3, NULL, '2013-12-03 13:36:54', NULL, NULL),
(769, 26, '3550720752', 0, '35507', '', '0752', NULL, 2, 4, '2013-12-03 13:43:34', NULL, '2013-12-03 13:50:16', NULL, '2013-12-03 13:51:46', NULL, 0, 3, NULL, '2013-12-03 13:43:34', NULL, NULL),
(770, 27, '3550712222', 0, '35507', '', '2222', NULL, 1, 4, '2013-12-03 13:57:31', NULL, '2013-12-03 14:38:08', NULL, '2013-12-03 14:55:00', NULL, 0, 3, NULL, '2013-12-03 13:57:31', NULL, NULL),
(771, 28, '35507109998', 0, '35507', '', '09998', NULL, 1, 4, '2013-12-03 14:05:06', 0, NULL, NULL, '2013-12-03 15:29:00', NULL, 0, 3, NULL, '2013-12-03 14:05:06', NULL, NULL),
(772, 29, '3550713762', 0, '35507', '', '3762', NULL, 1, 4, '2013-12-03 14:06:00', NULL, '2013-12-03 15:19:05', NULL, '2013-12-03 15:22:01', NULL, 0, 3, NULL, '2013-12-03 14:06:00', NULL, NULL),
(773, 30, '3550721572', 0, '35507', '', '1572', NULL, 2, 4, '2013-12-03 14:08:56', NULL, '2013-12-03 14:14:35', NULL, '2013-12-03 14:14:43', NULL, 0, 3, NULL, '2013-12-03 14:08:56', NULL, NULL),
(774, 31, '3550723448', 0, '35507', '', '3448', NULL, 2, 4, '2013-12-03 14:09:09', NULL, '2013-12-03 14:10:42', NULL, '2013-12-03 14:14:15', NULL, 0, 3, NULL, '2013-12-03 14:09:09', NULL, NULL),
(775, 32, '35507109993', 0, '35507', '', '09993', NULL, 1, 4, '2013-12-03 14:17:10', 0, NULL, NULL, '2013-12-03 15:28:59', NULL, 0, 3, NULL, '2013-12-03 14:17:10', NULL, NULL),
(776, 33, '3550710406', 0, '35507', '', '0406', NULL, 1, 4, '2013-12-03 14:17:33', NULL, '2013-12-03 15:31:36', NULL, '2013-12-03 15:37:51', NULL, 0, 3, NULL, '2013-12-03 14:17:33', NULL, NULL),
(777, 34, '3550723153', 0, '35507', '', '3153', NULL, 2, 4, '2013-12-03 14:17:38', NULL, '2013-12-03 14:17:47', NULL, '2013-12-03 14:17:52', NULL, 0, 3, NULL, '2013-12-03 14:17:38', NULL, NULL),
(778, 35, '3550721962', 0, '35507', '', '1962', NULL, 2, 4, '2013-12-03 14:32:29', NULL, NULL, NULL, '2013-12-03 14:48:01', NULL, 0, 3, NULL, '2013-12-03 14:32:29', NULL, NULL),
(779, 36, '3550713217', 0, '35507', '', '3217', NULL, 1, 4, '2013-12-03 14:39:56', NULL, '2013-12-03 15:37:56', NULL, '2013-12-03 15:38:03', NULL, 0, 3, NULL, '2013-12-03 14:39:56', NULL, NULL),
(780, 37, '3550723601', 0, '35507', '', '3601', NULL, 2, 4, '2013-12-03 14:48:36', NULL, '2013-12-03 14:51:21', NULL, '2013-12-03 14:51:25', NULL, 0, 3, NULL, '2013-12-03 14:48:36', NULL, NULL),
(781, 38, '35507104013', 0, '35507', '', '04013', NULL, 1, 4, '2013-12-03 15:04:18', NULL, '2013-12-03 15:57:21', NULL, '2013-12-03 16:00:56', NULL, 0, 3, NULL, '2013-12-03 15:04:18', NULL, NULL),
(782, 39, '3550711781', 0, '35507', '', '1781', NULL, 1, 4, '2013-12-03 15:15:24', NULL, '2013-12-03 16:14:08', NULL, '2013-12-03 16:14:18', NULL, 0, 3, NULL, '2013-12-03 15:15:24', NULL, NULL),
(783, 40, '3550710614', 0, '35507', '', '0614', NULL, 1, 4, '2013-12-03 15:20:21', NULL, NULL, NULL, '2013-12-03 15:24:04', NULL, 0, 3, NULL, '2013-12-03 15:20:21', NULL, NULL),
(784, 41, '3550712638', 0, '35507', '', '2638', NULL, 1, 4, '2013-12-03 15:26:47', 0, '2013-12-03 16:29:13', NULL, '2013-12-03 16:29:35', NULL, 0, 3, NULL, '2013-12-03 15:26:47', NULL, NULL),
(785, 42, '3550710589', 0, '35507', '', '0589', NULL, 1, 4, '2013-12-03 15:41:34', NULL, '2013-12-03 16:43:44', NULL, '2013-12-03 16:51:41', NULL, 0, 3, NULL, '2013-12-03 15:41:34', NULL, NULL),
(786, 43, '3550723371', 0, '35507', '', '3371', NULL, 2, 4, '2013-12-03 15:51:38', NULL, '2013-12-03 15:57:33', NULL, '2013-12-03 15:57:44', NULL, 0, 3, NULL, '2013-12-03 15:51:38', NULL, NULL),
(787, 44, '35507204055', 0, '35507', '', '04055', NULL, 2, 4, '2013-12-03 15:57:35', NULL, '2013-12-03 15:59:50', NULL, '2013-12-03 15:59:54', NULL, 0, 3, NULL, '2013-12-03 15:57:35', NULL, NULL),
(788, 45, '3550713843', 0, '35507', '', '3843', NULL, 1, 4, '2013-12-03 16:01:55', NULL, '2013-12-03 16:55:04', NULL, '2013-12-03 16:55:12', NULL, 0, 3, NULL, '2013-12-03 16:01:55', NULL, NULL),
(789, 46, '3550713907', 0, '35507', '', '3907', NULL, 1, 4, '2013-12-03 16:02:03', NULL, '2013-12-03 17:12:11', NULL, '2013-12-03 17:15:17', NULL, 0, 3, NULL, '2013-12-03 16:02:03', NULL, NULL),
(790, 47, '3550712195', 0, '35507', '', '2195', NULL, 1, 4, '2013-12-03 16:05:40', NULL, '2013-12-03 17:16:31', NULL, '2013-12-03 17:19:12', NULL, 0, 3, NULL, '2013-12-03 16:05:40', NULL, NULL),
(791, 48, '3550712933', 0, '35507', '', '2933', NULL, 1, 4, '2013-12-03 16:43:58', NULL, '2013-12-03 17:21:03', NULL, '2013-12-03 17:29:28', NULL, 0, 3, NULL, '2013-12-03 16:43:58', NULL, NULL),
(792, 49, '35507109999', 0, '35507', '', '09999', NULL, 1, 4, '2013-12-03 16:54:02', 0, NULL, NULL, '2013-12-03 17:32:23', NULL, 0, 3, NULL, '2013-12-03 16:54:02', NULL, NULL),
(793, 50, '3550711396', 0, '35507', '', '1396', NULL, 1, 4, '2013-12-03 16:55:50', NULL, '2013-12-03 17:34:46', NULL, '2013-12-03 17:37:27', NULL, 0, 3, NULL, '2013-12-03 16:55:50', NULL, NULL),
(794, 51, '3550713422', 0, '35507', '', '3422', NULL, 1, 4, '2013-12-03 17:14:44', NULL, '2013-12-03 17:39:00', NULL, '2013-12-03 17:39:08', NULL, 0, 3, NULL, '2013-12-03 17:14:44', NULL, NULL),
(795, 52, '3550712226', 0, '35507', '', '2226', NULL, 1, 4, '2013-12-03 17:35:16', NULL, '2013-12-03 17:39:46', NULL, '2013-12-03 17:52:07', NULL, 0, 3, NULL, '2013-12-03 17:35:16', NULL, NULL);
INSERT INTO `nocore_barcode_full` (`fullid`, `id`, `barcode`, `barcodeType`, `sealNumber`, `sealNumberDeputy`, `patientID`, `zipCode`, `nocore_whereID`, `nocore_statusID`, `loginWhen`, `callUp`, `callUpWhen`, `insideWhen`, `outsideWhen`, `prerecordedWhen`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(796, 1, '3550711154', 0, '35507', '', '1154', NULL, 1, 4, '2013-12-04 07:49:24', NULL, '2013-12-04 08:14:46', NULL, '2013-12-04 08:22:06', NULL, 0, 3, NULL, '2013-12-04 07:49:24', NULL, NULL),
(797, 2, '3550722003', 0, '35507', '', '2003', NULL, 2, 4, '2013-12-04 07:49:38', NULL, '2013-12-04 08:02:42', NULL, '2013-12-04 08:02:51', NULL, 0, 3, NULL, '2013-12-04 07:49:38', NULL, NULL),
(798, 3, '3550722243', 0, '35507', '', '2243', NULL, 2, 4, '2013-12-04 07:54:33', NULL, '2013-12-04 08:09:18', NULL, '2013-12-04 08:09:57', NULL, 0, 3, NULL, '2013-12-04 07:54:33', NULL, NULL),
(799, 4, '3550721029', 0, '35507', '', '1029', NULL, 2, 4, '2013-12-04 08:03:04', NULL, '2013-12-04 08:13:17', NULL, '2013-12-04 08:18:02', NULL, 0, 3, NULL, '2013-12-04 08:03:04', NULL, NULL),
(800, 5, '35507104065', 0, '35507', '', '04065', NULL, 1, 4, '2013-12-04 08:09:57', NULL, '2013-12-04 08:28:24', NULL, '2013-12-04 08:34:45', NULL, 0, 3, NULL, '2013-12-04 08:09:57', NULL, NULL),
(801, 6, '3550720554', 0, '35507', '', '0554', NULL, 2, 4, '2013-12-04 08:15:39', NULL, '2013-12-04 08:18:42', NULL, '2013-12-04 08:19:04', NULL, 0, 3, NULL, '2013-12-04 08:15:39', NULL, NULL),
(802, 7, '3550710553', 0, '35507', '', '0553', NULL, 1, 4, '2013-12-04 08:15:54', NULL, '2013-12-04 08:21:39', NULL, '2013-12-04 08:21:44', NULL, 0, 3, NULL, '2013-12-04 08:15:54', NULL, NULL),
(803, 8, '35507109996', 0, '35507', '', '09996', NULL, 1, 4, '2013-12-04 08:28:17', 0, NULL, NULL, '2013-12-04 09:23:56', NULL, 0, 3, NULL, '2013-12-04 08:28:17', NULL, NULL),
(804, 9, '3550722116', 0, '35507', '', '2116', NULL, 2, 4, '2013-12-04 08:48:24', NULL, NULL, NULL, '2013-12-04 09:23:55', NULL, 0, 3, NULL, '2013-12-04 08:48:24', NULL, NULL),
(805, 10, '3550713217', 0, '35507', '', '3217', NULL, 1, 4, '2013-12-04 08:49:46', NULL, '2013-12-04 09:05:17', NULL, '2013-12-04 09:06:18', NULL, 0, 3, NULL, '2013-12-04 08:49:46', NULL, NULL),
(806, 11, '3550713433', 0, '35507', '', '3433', NULL, 1, 4, '2013-12-04 09:01:34', NULL, '2013-12-04 09:06:34', NULL, '2013-12-04 09:13:41', NULL, 0, 3, NULL, '2013-12-04 09:01:34', NULL, NULL),
(807, 12, '35507109992', 0, '35507', '', '09992', NULL, 1, 4, '2013-12-04 09:12:58', NULL, NULL, NULL, '2013-12-04 09:23:54', NULL, 0, 3, NULL, '2013-12-04 09:12:58', NULL, NULL),
(808, 13, '5323711688', 0, '53237', '', '1688', NULL, 1, 4, '2013-12-04 09:30:36', NULL, NULL, NULL, '2013-12-04 13:57:02', NULL, 0, 3, NULL, '2013-12-04 09:30:36', NULL, NULL),
(809, 14, '3550721783', 0, '35507', '', '1783', NULL, 2, 4, '2013-12-04 09:50:51', NULL, '2013-12-04 10:15:56', NULL, '2013-12-04 10:15:59', NULL, 0, 3, NULL, '2013-12-04 09:50:51', NULL, NULL),
(810, 15, '3550721275', 0, '35507', '', '1275', NULL, 2, 4, '2013-12-04 09:51:44', NULL, '2013-12-04 10:10:57', NULL, '2013-12-04 10:11:02', NULL, 0, 3, NULL, '2013-12-04 09:51:44', NULL, NULL),
(811, 16, '3550712089', 0, '35507', '', '2089', NULL, 1, 4, '2013-12-04 10:17:45', NULL, '2013-12-04 10:29:24', NULL, '2013-12-04 10:33:41', NULL, 0, 3, NULL, '2013-12-04 10:17:45', NULL, NULL),
(812, 17, '35507109993', 0, '35507', '', '09993', NULL, 1, 4, '2013-12-04 10:23:49', NULL, NULL, NULL, '2013-12-04 10:42:10', NULL, 0, 3, NULL, '2013-12-04 10:23:49', NULL, NULL),
(813, 18, '3550712226', 0, '35507', '', '2226', NULL, 1, 4, '2013-12-04 10:34:30', NULL, '2013-12-04 10:40:34', NULL, '2013-12-04 10:45:33', NULL, 0, 3, NULL, '2013-12-04 10:34:30', NULL, NULL),
(814, 19, '3550711551', 0, '35507', '', '1551', NULL, 1, 4, '2013-12-04 10:39:26', NULL, '2013-12-04 11:01:43', NULL, '2013-12-04 11:07:31', NULL, 0, 3, NULL, '2013-12-04 10:39:26', NULL, NULL),
(815, 20, '3550720656', 0, '35507', '', '0656', NULL, 2, 4, '2013-12-04 10:43:04', NULL, '2013-12-04 10:44:36', NULL, '2013-12-04 10:44:40', NULL, 0, 3, NULL, '2013-12-04 10:43:04', NULL, NULL),
(816, 21, '35507104018', 0, '35507', '', '04018', NULL, 1, 4, '2013-12-04 10:51:10', NULL, '2013-12-04 11:11:41', NULL, '2013-12-04 11:16:23', NULL, 0, 3, NULL, '2013-12-04 10:51:10', NULL, NULL),
(817, 22, '3550720177', 0, '35507', '', '0177', NULL, 2, 4, '2013-12-04 10:53:37', NULL, '2013-12-04 11:16:27', NULL, '2013-12-04 11:25:48', NULL, 0, 3, NULL, '2013-12-04 10:53:37', NULL, NULL),
(818, 23, '3550721887', 0, '35507', '', '1887', NULL, 2, 4, '2013-12-04 10:56:52', NULL, '2013-12-04 11:03:01', NULL, '2013-12-04 11:03:12', NULL, 0, 3, NULL, '2013-12-04 10:56:52', NULL, NULL),
(819, 24, '3550722768', 0, '35507', '', '2768', NULL, 2, 4, '2013-12-04 11:03:15', NULL, '2013-12-04 11:24:43', NULL, '2013-12-04 11:24:54', NULL, 0, 3, NULL, '2013-12-04 11:03:15', NULL, NULL),
(820, 25, '3550721093', 0, '35507', '', '1093', NULL, 2, 4, '2013-12-04 11:23:16', NULL, '2013-12-04 11:27:58', NULL, '2013-12-04 11:28:00', NULL, 0, 3, NULL, '2013-12-04 11:23:16', NULL, NULL),
(821, 26, '3550711387', 0, '35507', '', '1387', NULL, 1, 4, '2013-12-04 11:24:11', NULL, '2013-12-04 11:45:42', NULL, '2013-12-04 11:48:01', NULL, 0, 3, NULL, '2013-12-04 11:24:11', NULL, NULL),
(822, 27, '5323721503', 0, '53237', '', '1503', NULL, 2, 4, '2013-12-04 13:40:45', NULL, '2013-12-04 13:53:05', NULL, '2013-12-04 13:53:22', NULL, 0, 3, NULL, '2013-12-04 13:40:45', NULL, NULL),
(823, 28, '5323710911', 0, '53237', '', '0911', NULL, 1, 4, '2013-12-04 13:41:03', NULL, '2013-12-04 13:57:05', NULL, '2013-12-04 13:57:37', NULL, 0, 3, NULL, '2013-12-04 13:41:03', NULL, NULL),
(824, 29, '5323714007', 0, '53237', '', '4007', NULL, 1, 4, '2013-12-04 13:49:44', NULL, '2013-12-04 14:02:08', NULL, '2013-12-04 14:02:12', NULL, 0, 3, NULL, '2013-12-04 13:49:44', NULL, NULL),
(825, 30, '5323713557', 0, '53237', '', '3557', NULL, 1, 4, '2013-12-04 14:20:47', NULL, NULL, NULL, '2013-12-04 14:28:34', NULL, 0, 3, NULL, '2013-12-04 14:20:47', NULL, NULL),
(826, 31, '5323710598', 0, '53237', '', '0598', NULL, 1, 4, '2013-12-04 14:28:13', NULL, '2013-12-04 14:32:33', NULL, '2013-12-04 14:32:38', NULL, 0, 3, NULL, '2013-12-04 14:28:13', NULL, NULL),
(827, 32, '5323710761', 0, '53237', '', '0761', NULL, 1, 4, '2013-12-04 14:28:23', NULL, '2013-12-04 14:36:59', NULL, '2013-12-04 14:37:23', NULL, 0, 3, NULL, '2013-12-04 14:28:23', NULL, NULL),
(828, 33, '5323720252', 0, '53237', '', '0252', NULL, 2, 4, '2013-12-04 14:28:49', NULL, '2013-12-04 14:48:00', NULL, '2013-12-04 14:48:06', NULL, 0, 3, NULL, '2013-12-04 14:28:49', NULL, NULL),
(829, 34, '5323712900', 0, '53237', '', '2900', NULL, 1, 4, '2013-12-04 14:47:26', NULL, NULL, NULL, '2013-12-04 15:00:44', NULL, 0, 3, NULL, '2013-12-04 14:47:26', NULL, NULL),
(830, 35, '5323722185', 0, '53237', '', '2185', NULL, 2, 4, '2013-12-04 14:47:44', NULL, '2013-12-04 15:02:48', NULL, '2013-12-04 15:03:06', NULL, 0, 3, NULL, '2013-12-04 14:47:44', NULL, NULL),
(831, 36, '5323713360', 0, '53237', '', '3360', NULL, 1, 4, '2013-12-04 14:48:22', NULL, NULL, NULL, '2013-12-04 15:09:29', NULL, 0, 3, NULL, '2013-12-04 14:48:22', NULL, NULL),
(832, 37, '5323720208', 0, '53237', '', '0208', NULL, 2, 4, '2013-12-04 15:03:41', NULL, '2013-12-04 15:10:45', NULL, '2013-12-04 15:11:02', NULL, 0, 3, NULL, '2013-12-04 15:03:41', NULL, NULL),
(833, 38, '5323710632', 0, '53237', '', '0632', NULL, 1, 4, '2013-12-04 15:41:50', NULL, '2013-12-04 15:48:46', NULL, '2013-12-04 15:50:26', NULL, 0, 3, NULL, '2013-12-04 15:41:50', NULL, NULL),
(834, 39, '5323723870', 0, '53237', '', '3870', NULL, 2, 4, '2013-12-04 15:43:14', NULL, '2013-12-04 15:50:33', NULL, '2013-12-04 15:50:38', NULL, 0, 3, NULL, '2013-12-04 15:43:14', NULL, NULL),
(835, 40, '5323722730', 0, '53237', '', '2730', NULL, 2, 4, '2013-12-04 15:43:24', NULL, '2013-12-04 15:52:44', NULL, '2013-12-04 15:52:49', NULL, 0, 3, NULL, '2013-12-04 15:43:24', NULL, NULL),
(836, 41, '5323723000', 0, '53237', '', '3000', NULL, 2, 4, '2013-12-04 16:02:37', NULL, '2013-12-04 16:03:58', NULL, '2013-12-04 16:04:04', NULL, 0, 3, NULL, '2013-12-04 16:02:37', NULL, NULL),
(837, 42, '5323721113', 0, '53237', '', '1113', NULL, 2, 4, '2013-12-04 16:13:56', NULL, '2013-12-04 16:14:04', NULL, '2013-12-04 16:14:09', NULL, 0, 3, NULL, '2013-12-04 16:13:56', NULL, NULL),
(838, 43, '5323723301', 0, '53237', '', '3301', NULL, 2, 4, '2013-12-04 16:29:43', NULL, '2013-12-04 16:29:44', NULL, '2013-12-04 16:29:53', NULL, 0, 3, NULL, '2013-12-04 16:29:43', NULL, NULL),
(839, 1, '5323720090', 0, '53237', '', '0090', NULL, 2, 4, '2013-12-05 08:45:44', NULL, '2013-12-05 08:46:22', NULL, '2013-12-05 08:46:33', NULL, 0, 3, NULL, '2013-12-05 08:45:44', NULL, NULL),
(840, 2, '5323721653', 0, '53237', '', '1653', NULL, 2, 4, '2013-12-05 09:22:51', NULL, '2013-12-05 09:38:18', NULL, '2013-12-05 09:38:32', NULL, 0, 3, NULL, '2013-12-05 09:22:51', NULL, NULL),
(841, 3, '5323723308', 0, '53237', '', '3308', NULL, 2, 4, '2013-12-05 09:32:59', NULL, '2013-12-05 09:43:07', NULL, '2013-12-05 09:43:14', NULL, 0, 3, NULL, '2013-12-05 09:32:59', NULL, NULL),
(842, 4, '5323721722', 0, '53237', '', '1722', NULL, 2, 4, '2013-12-05 09:37:38', NULL, '2013-12-05 09:47:58', NULL, '2013-12-05 09:49:04', NULL, 0, 3, NULL, '2013-12-05 09:37:38', NULL, NULL),
(843, 5, '5323723719', 0, '53237', '', '3719', NULL, 2, 4, '2013-12-05 09:38:29', NULL, '2013-12-05 09:50:22', NULL, '2013-12-05 09:51:28', NULL, 0, 3, NULL, '2013-12-05 09:38:29', NULL, NULL),
(844, 6, '5323721624', 0, '53237', '', '1624', NULL, 2, 4, '2013-12-05 09:45:04', NULL, '2013-12-05 09:54:54', NULL, '2013-12-05 09:55:13', NULL, 0, 3, NULL, '2013-12-05 09:45:04', NULL, NULL),
(845, 7, '5323721179', 0, '53237', '', '1179', NULL, 2, 4, '2013-12-05 09:49:20', NULL, '2013-12-05 09:59:06', NULL, '2013-12-05 09:59:32', NULL, 0, 3, NULL, '2013-12-05 09:49:20', NULL, NULL),
(846, 8, '5323720256', 0, '53237', '', '0256', NULL, 2, 4, '2013-12-05 09:49:37', NULL, '2013-12-05 10:01:33', NULL, '2013-12-05 10:01:53', NULL, 0, 3, NULL, '2013-12-05 09:49:37', NULL, NULL),
(847, 9, '5323723742', 0, '53237', '', '3742', NULL, 2, 4, '2013-12-05 10:07:17', NULL, '2013-12-05 10:11:57', NULL, '2013-12-05 10:12:41', NULL, 0, 3, NULL, '2013-12-05 10:07:17', NULL, NULL),
(848, 10, '5323722173', 0, '53237', '', '2173', NULL, 2, 4, '2013-12-05 10:20:33', NULL, '2013-12-05 10:25:29', NULL, '2013-12-05 10:25:34', NULL, 0, 3, NULL, '2013-12-05 10:20:33', NULL, NULL),
(849, 11, '5323723698', 0, '53237', '', '3698', NULL, 2, 4, '2013-12-05 10:37:02', NULL, '2013-12-05 10:42:28', NULL, '2013-12-05 10:43:56', NULL, 0, 3, NULL, '2013-12-05 10:37:02', NULL, NULL),
(850, 12, '5323721549', 0, '53237', '', '1549', NULL, 2, 4, '2013-12-05 10:42:57', NULL, '2013-12-05 10:49:24', NULL, '2013-12-05 10:49:39', NULL, 0, 3, NULL, '2013-12-05 10:42:57', NULL, NULL),
(851, 13, '5323723511', 0, '53237', '', '3511', NULL, 2, 4, '2013-12-05 10:43:31', NULL, '2013-12-05 10:54:13', NULL, '2013-12-05 10:54:23', NULL, 0, 3, NULL, '2013-12-05 10:43:31', NULL, NULL),
(852, 14, '5323710528', 0, '53237', '', '0528', NULL, 1, 4, '2013-12-05 10:43:53', NULL, NULL, NULL, '2013-12-05 11:05:31', NULL, 0, 3, NULL, '2013-12-05 10:43:53', NULL, NULL),
(853, 15, '3550710450', 0, '35507', '', '0450', NULL, 1, 4, '2013-12-05 13:41:13', NULL, '2013-12-05 14:10:12', NULL, '2013-12-05 14:20:16', NULL, 0, 3, NULL, '2013-12-05 13:41:13', NULL, NULL),
(854, 16, '3550713706', 0, '35507', '', '3706', NULL, 1, 4, '2013-12-05 13:50:50', NULL, '2013-12-05 14:27:06', NULL, '2013-12-05 14:27:13', NULL, 0, 3, NULL, '2013-12-05 13:50:50', NULL, NULL),
(855, 17, '3550710822', 0, '35507', '', '0822', NULL, 1, 4, '2013-12-05 13:50:58', NULL, '2013-12-05 14:28:15', NULL, '2013-12-05 14:33:56', NULL, 0, 3, NULL, '2013-12-05 13:50:58', NULL, NULL),
(856, 18, '3550722016', 0, '35507', '', '2016', NULL, 2, 4, '2013-12-05 13:54:22', NULL, '2013-12-05 13:57:56', NULL, '2013-12-05 13:58:02', NULL, 0, 3, NULL, '2013-12-05 13:54:22', NULL, NULL),
(857, 19, '3550721837', 0, '35507', '', '1837', NULL, 2, 4, '2013-12-05 13:55:26', NULL, NULL, NULL, '2013-12-05 14:09:05', NULL, 0, 3, NULL, '2013-12-05 13:55:26', NULL, NULL),
(858, 20, '3550710887', 0, '35507', '', '0887', NULL, 1, 4, '2013-12-05 14:02:11', NULL, '2013-12-05 14:42:00', NULL, '2013-12-05 14:43:51', NULL, 0, 3, NULL, '2013-12-05 14:02:11', NULL, NULL),
(859, 21, '5323711196', 0, '53237', '', '1196', NULL, 1, 4, '2013-12-05 14:02:35', NULL, '2013-12-05 14:55:18', NULL, '2013-12-05 15:00:02', NULL, 0, 3, NULL, '2013-12-05 14:02:35', NULL, NULL),
(860, 22, '5323710911', 0, '53237', '', '0911', NULL, 1, 4, '2013-12-05 14:07:39', NULL, '2013-12-05 15:03:05', NULL, '2013-12-05 15:06:16', NULL, 0, 3, NULL, '2013-12-05 14:07:39', NULL, NULL),
(861, 23, '5323712900', 0, '53237', '', '2900', NULL, 1, 4, '2013-12-05 14:20:34', NULL, '2013-12-05 15:24:20', NULL, '2013-12-05 15:25:22', NULL, 0, 3, NULL, '2013-12-05 14:20:34', NULL, NULL),
(862, 24, '3550721541', 0, '35507', '', '1541', NULL, 2, 4, '2013-12-05 14:42:30', NULL, '2013-12-05 14:42:59', NULL, '2013-12-05 14:43:07', NULL, 0, 3, NULL, '2013-12-05 14:42:30', NULL, NULL),
(863, 25, '3550723585', 0, '35507', '', '3585', NULL, 2, 4, '2013-12-05 15:15:49', NULL, '2013-12-05 15:15:59', NULL, '2013-12-05 15:16:56', NULL, 0, 3, NULL, '2013-12-05 15:15:49', NULL, NULL),
(864, 26, '35507104037', 0, '35507', '', '04037', NULL, 1, 1, '2013-12-05 15:17:38', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-05 15:17:38', NULL, NULL),
(865, 27, '3550723577', 0, '35507', '', '3577', NULL, 2, 1, '2013-12-05 15:56:46', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-05 15:56:46', NULL, NULL),
(866, 28, '3550719822', 0, '35507', '', '9822', NULL, 1, 1, '2013-12-05 15:58:59', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-05 15:58:59', NULL, NULL),
(867, 29, '3550713083', 0, '35507', '', '3083', NULL, 1, 1, '2013-12-05 16:04:01', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-05 16:04:01', NULL, NULL),
(868, 30, '35507109996', 0, '35507', '', '09996', NULL, 1, 1, '2013-12-05 16:30:45', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-05 16:30:45', NULL, NULL),
(869, 31, '3550723177', 0, '35507', '', '3177', NULL, 2, 1, '2013-12-05 17:28:24', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-05 17:28:24', NULL, NULL),
(870, 32, '3550721047', 0, '35507', '', '1047', NULL, 2, 1, '2013-12-05 17:36:47', NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, '2013-12-05 17:36:47', NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- A tábla adatainak kiíratása `nocore_clinic`
--

INSERT INTO `nocore_clinic` (`id`, `name`, `message`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(2, 'Rendelő 1', 'Ez az 1-es Rendelő', 1, 3, NULL, NULL, 2, '2013-08-01 22:25:11'),
(3, 'Rendelő 2', 'Ez a 2-es rendelő', 1, 3, NULL, NULL, NULL, NULL);

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
(1, 2, 2, '2012-05-26', '2014-06-25', '', 1, 3, NULL, NULL, 4, '2013-10-18 12:04:35'),
(2, 3, 3, '2012-06-25', '2013-06-25', '', 1, 3, NULL, NULL, 2, '2013-08-05 13:39:20');

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

INSERT INTO `nocore_doctor` (`id`, `sealNumber`, `name`, `zipcode`, `settlement`, `address`, `phone`, `information`, `nurse`, `licence`, `bannerMaximum`, `marqueeMaximum`, `alwaysView`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(2, '53237', 'Dr. Koncz Erika', '2051', NULL, NULL, NULL, NULL, 1, '0035323700', 10, 10, NULL, 1, 3, 3, '2013-10-31 09:38:09', 3, '2013-10-31 09:44:36'),
(3, '35507', 'Dr. Szeszler Györgyi', '2051', NULL, NULL, NULL, NULL, 1, '0033550700', 10, 10, NULL, 1, 3, 3, '2013-10-31 09:43:56', 3, '2013-10-31 09:44:28');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_advert`
--


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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=21 ;

--
-- A tábla adatainak kiíratása `nocore_doctor_order`
--

INSERT INTO `nocore_doctor_order` (`id`, `nocore_doctorID`, `nocore_doctor_order_dayID`, `startTime`, `stopTime`, `barcodeStart`, `barcodeStop`, `doctorIs`, `nurseIs`, `nocore_doctor_order_typeID`, `active`, `core_localserverID`, `insertUserID`, `insertWhen`, `modifyUserID`, `modifyWhen`) VALUES
(1, 2, '1Thu', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 11, '2013-10-31 09:48:17', NULL, NULL),
(2, 2, '2Thu', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 11, '2013-10-31 09:48:33', NULL, NULL),
(3, 2, '1Mon', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 11, '2013-10-31 09:48:51', NULL, NULL),
(4, 2, '1Tue', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 11, '2013-10-31 09:49:05', NULL, NULL),
(5, 2, '1Wed', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 11, '2013-10-31 09:49:20', NULL, NULL),
(6, 2, '1Fri', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 11, '2013-10-31 09:49:34', NULL, NULL),
(7, 2, '2Mon', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 11, '2013-10-31 09:49:53', NULL, NULL),
(8, 2, '2Tue', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 11, '2013-10-31 09:50:09', NULL, NULL),
(9, 2, '2Wed', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 11, '2013-10-31 09:50:24', NULL, NULL),
(10, 2, '2Fri', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 11, '2013-10-31 09:50:43', NULL, NULL),
(11, 3, '1Mon', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 12, '2013-10-31 09:51:50', NULL, NULL),
(12, 3, '1Tue', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 12, '2013-10-31 09:52:09', NULL, NULL),
(13, 3, '1Wed', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 12, '2013-10-31 09:52:23', NULL, NULL),
(14, 3, '1Thu', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 12, '2013-10-31 09:52:53', NULL, NULL),
(15, 3, '1Fri', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 12, '2013-10-31 09:53:08', NULL, NULL),
(16, 3, '2Mon', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 12, '2013-10-31 09:53:25', NULL, NULL),
(17, 3, '2Tue', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 12, '2013-10-31 09:53:40', NULL, NULL),
(18, 3, '2Wed', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 12, '2013-10-31 09:53:55', NULL, NULL),
(19, 3, '2Thu', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 12, '2013-10-31 09:54:09', NULL, NULL),
(20, 3, '2Fri', '06:00:00', '20:00:00', 30, 30, 1, 1, 1, 1, 3, 12, '2013-10-31 09:54:24', NULL, NULL);

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
('1Mon', 'Hétfő páratlan', 1, 1, NULL, NULL, NULL, NULL),
('1Tue', 'Kedd Páratlan', 1, 1, NULL, NULL, NULL, NULL),
('1Wed', 'Szerda Páratlan', 1, 1, NULL, NULL, NULL, NULL),
('1Thu', 'Csötörtök Páratlan', 1, 1, NULL, NULL, NULL, NULL),
('1Fri', 'Péntek Páratlan', 1, 1, NULL, NULL, NULL, NULL),
('1Sat', 'Szombat Páratlan', 1, 1, NULL, NULL, NULL, NULL),
('1Sun', 'Vasárnap páratlan', 1, 1, NULL, NULL, NULL, NULL),
('2Mon', 'Hétfő páros', 1, 1, NULL, NULL, NULL, NULL),
('2Tue', 'Kedd páros', 1, 1, NULL, NULL, NULL, NULL),
('2Wed', 'Szerda páros', 1, 1, NULL, NULL, NULL, NULL),
('2Thu', 'Csütörtök páros', 1, 1, NULL, NULL, NULL, NULL),
('2Fri', 'Péntek páros', 1, 1, NULL, NULL, NULL, NULL),
('2Sat', 'Szombat páros', 1, 1, NULL, NULL, NULL, NULL),
('2Sun', 'Vasárnap páros', 1, 1, NULL, NULL, NULL, NULL);

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
(1, 'Alap', 1, 0, 2, '2013-08-02 12:04:18', NULL, NULL),
(2, 'Szak', 1, 1, 2, '2013-08-09 12:01:43', NULL, NULL),
(3, 'Belgyógyászat', 1, 1, 2, '2013-08-09 12:55:08', NULL, NULL);

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
(1, 'bejelentkezve', '', 1, NULL, 1, NULL, NULL, 2, '2013-07-26 11:27:13'),
(2, 'behívás', '', 1, NULL, 1, NULL, NULL, NULL, NULL),
(3, 'ellátás', '', 1, NULL, 1, NULL, NULL, NULL, NULL),
(4, 'ellátva', '', 1, NULL, 1, NULL, NULL, NULL, NULL),
(5, 'elment', '', 1, NULL, 1, NULL, NULL, NULL, NULL),
(6, 'előjegyezve', '', 1, NULL, 1, NULL, NULL, NULL, NULL);

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
(1, 'Orvoshoz', '', 1, NULL, 1, NULL, NULL, 2, '2013-09-18 12:37:30'),
(2, 'Nővérhez', '', 1, NULL, 1, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
