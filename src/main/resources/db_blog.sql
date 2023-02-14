/*
 Navicat Premium Data Transfer

 Source Server         : mysql_5.6
 Source Server Type    : MySQL
 Source Server Version : 50651
 Source Host           : localhost:3307
 Source Schema         : db_blog

 Target Server Type    : MySQL
 Target Server Version : 50651
 File Encoding         : 65001

 Date: 14/02/2023 13:30:08
*/

DROP DATABASE IF EXISTS db_blog;
CREATE DATABASE db_blog DEFAULT CHARACTER SET utf8;

USE db_blog;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`
(
    `id`          int(11) NOT NULL AUTO_INCREMENT,
    `title`       varchar(200) NOT NULL,
    `summary`     varchar(400) DEFAULT NULL,
    `releaseDate` datetime     DEFAULT NULL,
    `clickHit`    int(11) DEFAULT NULL,
    `replyHit`    int(11) DEFAULT NULL,
    `content`     text,
    `keyWord`     varchar(200) DEFAULT NULL,
    `type_id`     int(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY           `type_id` (`type_id`),
    CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `t_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_blogger
-- ----------------------------
DROP TABLE IF EXISTS `t_blogger`;
CREATE TABLE `t_blogger`
(
    `id`        int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `username`  varchar(50)  NOT NULL,
    `password`  varchar(100) NOT NULL,
    `profile`   text,
    `nickname`  varchar(50)  DEFAULT NULL,
    `sign`      varchar(100) DEFAULT NULL,
    `imagename` varchar(100) DEFAULT NULL COMMENT '',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for t_blogtype
-- ----------------------------
DROP TABLE IF EXISTS `t_blogtype`;
CREATE TABLE `t_blogtype`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `typeName` varchar(30) DEFAULT NULL,
    `orderNum` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`
(
    `id`          int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `userIp`      varchar(50)   DEFAULT NULL COMMENT 'ip',
    `content`     varchar(1000) DEFAULT NULL,
    `commentDate` datetime      DEFAULT NULL,
    `state`       int(11) DEFAULT NULL,
    `blog_id`     int(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY           `blog_id` (`blog_id`),
    CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_link
-- ----------------------------
DROP TABLE IF EXISTS `t_link`;
CREATE TABLE `t_link`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `linkname` varchar(100) DEFAULT NULL,
    `linkurl`  varchar(200) DEFAULT NULL COMMENT 'url',
    `orderNum` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
