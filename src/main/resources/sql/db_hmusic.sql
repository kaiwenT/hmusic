/*
MySQL Data Transfer
Source Host: 127.0.0.1
Source Database: db_hmusic
Target Host: 127.0.0.1
Target Database: db_hmusic
Date: 2017/2/17 16:58:43
*/
CREATE DATABASE `db_hmusic` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE db_hmusic;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(25) NOT NULL,
  `adminpassword` varchar(32) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `musicid` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `commenttime` datetime NOT NULL,
  `likenum` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `musicid` int(11) NOT NULL AUTO_INCREMENT,
  `musicname` varchar(32) NOT NULL,
  `duration` time NOT NULL,
  `musicpath` varchar(255) NOT NULL,
  `lyricspath` varchar(255) DEFAULT NULL,
  `clickrate` int(11) DEFAULT NULL,
  `downloadrate` int(11) DEFAULT NULL,
  `uploadtime` datetime NOT NULL,
  PRIMARY KEY (`musicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for music_musictype
-- ----------------------------
DROP TABLE IF EXISTS `music_musictype`;
CREATE TABLE `music_musictype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musicid` int(11) NOT NULL,
  `musictypeid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for musictype
-- ----------------------------
DROP TABLE IF EXISTS `musictype`;
CREATE TABLE `musictype` (
  `musictypeid` int(11) NOT NULL AUTO_INCREMENT,
  `musictypename` varchar(25) NOT NULL,
  PRIMARY KEY (`musictypeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `singerid` int(11) NOT NULL AUTO_INCREMENT,
  `singername` varchar(25) NOT NULL,
  `sex` enum('') DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`singerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for singer_music
-- ----------------------------
DROP TABLE IF EXISTS `singer_music`;
CREATE TABLE `singer_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `singerid` int(11) NOT NULL,
  `musicid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for singer_singertype
-- ----------------------------
DROP TABLE IF EXISTS `singer_singertype`;
CREATE TABLE `singer_singertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `singerid` int(11) NOT NULL,
  `singertypeid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for singertype
-- ----------------------------
DROP TABLE IF EXISTS `singertype`;
CREATE TABLE `singertype` (
  `singertypeid` int(11) NOT NULL AUTO_INCREMENT,
  `singertypename` varchar(25) NOT NULL,
  PRIMARY KEY (`singertypeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for songlist
-- ----------------------------
DROP TABLE IF EXISTS `songlist`;
CREATE TABLE `songlist` (
  `songlistid` int(11) NOT NULL AUTO_INCREMENT,
  `songlistname` varchar(25) NOT NULL,
  PRIMARY KEY (`songlistid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for songlist_music
-- ----------------------------
DROP TABLE IF EXISTS `songlist_music`;
CREATE TABLE `songlist_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songlistid` int(11) NOT NULL,
  `musicid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `userpassword` varchar(32) NOT NULL,
  `userphoto` varchar(255) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `sex` enum('') DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_songlist
-- ----------------------------
DROP TABLE IF EXISTS `user_songlist`;
CREATE TABLE `user_songlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `songlistid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
