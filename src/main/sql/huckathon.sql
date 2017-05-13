/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50096
Source Host           : 127.0.0.1:3306
Source Database       : huckathon

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2017-05-13 23:04:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '主键id',
  `name` varchar(80) default NULL COMMENT '名称',
  `type` smallint(4) default NULL COMMENT '属性类型',
  `description` varchar(100) default NULL COMMENT '描述',
  `index` int(2) default NULL COMMENT '顺序',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attribute
-- ----------------------------
INSERT INTO `attribute` VALUES ('1', 'test', '1', 'dfdf', '1');

-- ----------------------------
-- Table structure for price
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `id` bigint(20) NOT NULL auto_increment,
  `price` decimal(8,5) default NULL,
  `unit` varchar(20) default NULL,
  `rate` varchar(255) default NULL COMMENT '换算率',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of price
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(40) default NULL,
  `img` varchar(255) default NULL,
  `homepage` varchar(255) default NULL,
  `comment` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `product_attribute`;
CREATE TABLE `product_attribute` (
  `id` bigint(20) NOT NULL auto_increment,
  `product_id` bigint(20) default NULL,
  `attribute_id` bigint(20) default NULL,
  `create_time` timestamp NULL default NULL,
  `update_time` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for product_price
-- ----------------------------
DROP TABLE IF EXISTS `product_price`;
CREATE TABLE `product_price` (
  `id` bigint(20) NOT NULL auto_increment,
  `product_id` bigint(20) NOT NULL,
  `price_id` bigint(20) NOT NULL,
  `discount` int(6) default NULL,
  `create_time` timestamp NULL default NULL,
  `update_time` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_price
-- ----------------------------

-- ----------------------------
-- Table structure for product_property
-- ----------------------------
DROP TABLE IF EXISTS `product_property`;
CREATE TABLE `product_property` (
  `id` bigint(20) NOT NULL auto_increment,
  `product_id` bigint(20) default NULL,
  `device_name` varchar(80) default NULL,
  `memory` int(10) default NULL,
  `flash_memory` int(10) default NULL,
  `pixel` int(8) default NULL,
  `wlan` varchar(100) default NULL,
  `wireless_model` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_property
-- ----------------------------
