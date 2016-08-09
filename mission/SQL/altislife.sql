/*
Navicat MySQL Data Transfer

Source Server         : AltisServerneu
Source Server Version : 50505
Source Host           : 188.138.57.148:3306
Source Database       : altislife

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-08-09 14:56:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ah`
-- ----------------------------
DROP TABLE IF EXISTS `ah`;
CREATE TABLE `ah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(5) NOT NULL DEFAULT '0',
  `amount` int(5) NOT NULL DEFAULT '0',
  `item` text NOT NULL,
  `price` int(100) NOT NULL DEFAULT '0',
  `seller` varchar(50) NOT NULL,
  `sellername` varchar(32) NOT NULL,
  `status` int(5) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `cellphone`
-- ----------------------------
DROP TABLE IF EXISTS `cellphone`;
CREATE TABLE `cellphone` (
  `pid` varchar(64) NOT NULL,
  `playerName` varchar(32) NOT NULL,
  `messages` text NOT NULL,
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `containers`
-- ----------------------------
DROP TABLE IF EXISTS `containers`;
CREATE TABLE `containers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(32) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `inventory` varchar(500) NOT NULL,
  `gear` text NOT NULL,
  `dir` varchar(64) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `owned` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `dynmarket`
-- ----------------------------
DROP TABLE IF EXISTS `dynmarket`;
CREATE TABLE `dynmarket` (
  `id` int(11) NOT NULL DEFAULT '1',
  `prices` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dynmarket
-- ----------------------------

-- ----------------------------
-- Table structure for `gangs`
-- ----------------------------
DROP TABLE IF EXISTS `gangs`;
CREATE TABLE `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `members` text,
  `maxmembers` int(2) DEFAULT '8',
  `bank` int(100) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `houses`
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `owned` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `messages`
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `fromID` varchar(50) NOT NULL,
  `toID` varchar(50) NOT NULL,
  `message` text,
  `fromName` varchar(32) NOT NULL,
  `toName` varchar(32) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `players`
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `aliases` text NOT NULL,
  `playerid` varchar(50) NOT NULL,
  `cash` int(100) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `coplevel` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13') NOT NULL DEFAULT '0',
  `mediclevel` enum('0','1','2','3','4','5','6','7','8') NOT NULL DEFAULT '0',
  `civ_licenses` text NOT NULL,
  `cop_licenses` text NOT NULL,
  `med_licenses` text NOT NULL,
  `civ_gear` text NOT NULL,
  `cop_gear` text NOT NULL,
  `med_gear` text NOT NULL,
  `civ_stats` varchar(11) NOT NULL DEFAULT '"[100,100]"',
  `cop_stats` varchar(11) NOT NULL DEFAULT '"[100,100]"',
  `med_stats` varchar(11) NOT NULL DEFAULT '"[100,100]"',
  `arrested` tinyint(1) NOT NULL DEFAULT '0',
  `adminlevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `donatorlvl` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `westcash` int(100) NOT NULL DEFAULT '0',
  `westbankacc` int(100) NOT NULL DEFAULT '0',
  `indcash` int(100) NOT NULL,
  `indbankacc` int(100) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `playerid` (`playerid`),
  KEY `name` (`name`),
  KEY `blacklist` (`blacklist`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `vehicles`
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `side` varchar(15) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `type` varchar(12) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(20) NOT NULL,
  `inventory` varchar(500) NOT NULL,
  `impound` tinyint(1) NOT NULL DEFAULT '0',
  `gear` varchar(500) NOT NULL,
  `fuelstand` float(20,5) NOT NULL DEFAULT '1.00000',
  `HitBody` float(20,5) NOT NULL,
  `HitEngine` float(20,5) NOT NULL,
  `HitFuel` float(20,5) NOT NULL,
  `HitLFWheel` float(20,5) NOT NULL,
  `HitRFWheel` float(20,5) NOT NULL,
  `HitLF2Wheel` float(20,5) NOT NULL,
  `HitRF2Wheel` float(20,5) NOT NULL,
  `HitLMWheel` float(20,5) NOT NULL,
  `HitRMWheel` float(20,5) NOT NULL,
  `HitLBWheel` float(20,5) NOT NULL,
  `HitRBWheel` float(20,5) NOT NULL,
  `fuel` float(20,5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `side` (`side`),
  KEY `pid` (`pid`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for `wanted`
-- ----------------------------
DROP TABLE IF EXISTS `wanted`;
CREATE TABLE `wanted` (
  `wantedID` varchar(50) NOT NULL,
  `wantedName` varchar(52) NOT NULL,
  `wantedCrimes` text NOT NULL,
  `wantedBounty` int(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wantedID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Procedure structure for `deleteDeadVehicles`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteDeadVehicles`;
DELIMITER ;;
CREATE DEFINER=`altis`@`localhost` PROCEDURE `deleteDeadVehicles`()
BEGIN
  DELETE FROM `vehicles` WHERE `alive` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `deleteOldContainers`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldContainers`;
DELIMITER ;;
CREATE DEFINER=`altis`@`localhost` PROCEDURE `deleteOldContainers`()
BEGIN
  DELETE FROM `containers` WHERE `owned` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `deleteOldGangs`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldGangs`;
DELIMITER ;;
CREATE DEFINER=`altis`@`localhost` PROCEDURE `deleteOldGangs`()
BEGIN
  DELETE FROM `gangs` WHERE `active` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `deleteOldHouses`
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldHouses`;
DELIMITER ;;
CREATE DEFINER=`altis`@`localhost` PROCEDURE `deleteOldHouses`()
BEGIN
  DELETE FROM `houses` WHERE `owned` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `resetLifeVehicles`
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetLifeVehicles`;
DELIMITER ;;
CREATE DEFINER=`altis`@`localhost` PROCEDURE `resetLifeVehicles`()
BEGIN
  UPDATE `vehicles` SET `active`= 0;
END
;;
DELIMITER ;
