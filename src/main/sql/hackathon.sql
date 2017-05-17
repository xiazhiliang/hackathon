/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1_3306
Source Server Version : 50096
Source Host           : 127.0.0.1:3306
Source Database       : hackathon

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2017-05-17 18:01:03
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attribute
-- ----------------------------
INSERT INTO `attribute` VALUES ('1', '连锁化', '1', 'dfdf', '1');
INSERT INTO `attribute` VALUES ('2', '性价比', '1', null, '2');
INSERT INTO `attribute` VALUES ('3', '智能化', '1', null, '3');
INSERT INTO `attribute` VALUES ('4', 'Windows', '1', null, '4');
INSERT INTO `attribute` VALUES ('5', 'Android', '1', null, '5');
INSERT INTO `attribute` VALUES ('6', '平台对接', '1', null, '6');
INSERT INTO `attribute` VALUES ('7', '火锅', '2', null, '1');
INSERT INTO `attribute` VALUES ('8', '自助', '2', null, '2');
INSERT INTO `attribute` VALUES ('9', '中餐', '2', null, '3');
INSERT INTO `attribute` VALUES ('10', '快餐', '2', null, '4');
INSERT INTO `attribute` VALUES ('11', '酒吧、KTV', '2', null, '5');
INSERT INTO `attribute` VALUES ('12', '烘焙', '2', null, '6');
INSERT INTO `attribute` VALUES ('13', '奶茶店', '2', null, '7');
INSERT INTO `attribute` VALUES ('14', '零售', '2', null, '8');
INSERT INTO `attribute` VALUES ('15', '正餐', '3', null, '1');
INSERT INTO `attribute` VALUES ('16', '快餐', '3', null, '2');
INSERT INTO `attribute` VALUES ('17', '外卖', '3', null, '3');
INSERT INTO `attribute` VALUES ('18', '预定', '3', null, '4');
INSERT INTO `attribute` VALUES ('19', '排队', '3', null, '5');
INSERT INTO `attribute` VALUES ('20', '微信点餐', '3', null, '6');
INSERT INTO `attribute` VALUES ('21', '自主点餐', '3', null, '7');
INSERT INTO `attribute` VALUES ('22', '会员营销', '3', null, '8');
INSERT INTO `attribute` VALUES ('23', '供应链', '3', null, '9');
INSERT INTO `attribute` VALUES ('24', '报表分析', '3', null, '10');
INSERT INTO `attribute` VALUES ('25', '第三方对接', '3', null, '11');
INSERT INTO `attribute` VALUES ('26', '0,999', '4', null, '1');
INSERT INTO `attribute` VALUES ('27', '1000,3000', '4', null, '2');
INSERT INTO `attribute` VALUES ('28', '3001,6000', '4', null, '3');
INSERT INTO `attribute` VALUES ('29', '60001,10000', '4', null, '4');
INSERT INTO `attribute` VALUES ('30', '10001,15000', '4', null, '5');
INSERT INTO `attribute` VALUES ('31', '15001,20000', '4', null, '6');
INSERT INTO `attribute` VALUES ('32', '20000', '4', null, '7');
INSERT INTO `attribute` VALUES ('33', '北京', '5', null, '1');
INSERT INTO `attribute` VALUES ('34', '上海', '5', null, '2');
INSERT INTO `attribute` VALUES ('35', '广州', '5', null, '3');
INSERT INTO `attribute` VALUES ('36', '深圳', '5', null, '4');
INSERT INTO `attribute` VALUES ('37', '天津', '5', null, '5');
INSERT INTO `attribute` VALUES ('38', '成都', '5', null, '6');
INSERT INTO `attribute` VALUES ('39', '武汉', '5', null, '7');
INSERT INTO `attribute` VALUES ('40', '杭州', '5', null, '8');
INSERT INTO `attribute` VALUES ('41', '西安', '5', null, '9');

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
  `link` varchar(255) default NULL,
  `comment` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '客如云', null, 'ttp://www.keruyun.com', null);
INSERT INTO `product` VALUES ('2', '二维火', null, 'http://www.2dfire.com', null);
INSERT INTO `product` VALUES ('3', '有赞', null, 'http://www.youzan.com', null);
INSERT INTO `product` VALUES ('4', '天才商龙', null, 'http://www.tcsl.com.cn', null);
INSERT INTO `product` VALUES ('5', '餐行健', null, 'http://www.acewill.cn', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_attribute
-- ----------------------------
INSERT INTO `product_attribute` VALUES ('21', '4', '2', null, '2017-05-14 10:24:02');
INSERT INTO `product_attribute` VALUES ('22', '4', '3', null, '2017-05-14 10:24:02');
INSERT INTO `product_attribute` VALUES ('23', '4', '4', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('24', '4', '5', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('25', '4', '7', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('26', '4', '10', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('27', '4', '11', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('28', '4', '13', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('29', '4', '14', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('30', '4', '17', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('31', '4', '18', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('32', '4', '19', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('33', '4', '22', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('34', '4', '24', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('35', '4', '25', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('36', '4', '16', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('37', '4', '28', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('38', '4', '33', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('39', '4', '34', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('40', '4', '35', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('41', '4', '36', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('42', '4', '37', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('43', '4', '38', null, '2017-05-14 10:24:03');
INSERT INTO `product_attribute` VALUES ('44', '4', '40', null, '2017-05-14 10:28:07');
INSERT INTO `product_attribute` VALUES ('45', '5', '1', null, '2017-05-14 10:25:56');
INSERT INTO `product_attribute` VALUES ('46', '5', '1', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('47', '5', '3', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('48', '5', '4', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('49', '5', '6', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('50', '5', '7', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('51', '5', '8', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('52', '5', '11', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('53', '5', '12', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('54', '5', '15', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('55', '5', '17', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('56', '5', '18', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('57', '5', '19', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('58', '5', '22', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('59', '5', '24', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('60', '5', '20', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('61', '5', '16', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('62', '5', '27', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('63', '5', '33', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('64', '5', '34', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('65', '5', '35', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('66', '5', '36', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('67', '5', '37', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('68', '5', '39', null, '2017-05-14 10:26:04');
INSERT INTO `product_attribute` VALUES ('69', '5', '41', null, '2017-05-14 10:28:15');
INSERT INTO `product_attribute` VALUES ('70', '1', '1', null, '2017-05-14 10:27:02');
INSERT INTO `product_attribute` VALUES ('71', '1', '1', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('72', '1', '3', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('73', '1', '4', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('74', '1', '5', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('75', '1', '7', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('76', '1', '8', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('77', '1', '11', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('78', '1', '12', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('79', '1', '13', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('80', '1', '14', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('81', '1', '18', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('82', '1', '19', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('83', '1', '22', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('84', '1', '24', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('85', '1', '20', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('86', '1', '16', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('87', '1', '26', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('88', '1', '33', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('89', '1', '34', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('90', '1', '35', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('91', '1', '36', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('92', '1', '37', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('93', '1', '39', null, '2017-05-14 10:27:14');
INSERT INTO `product_attribute` VALUES ('94', '1', '40', null, '2017-05-14 10:28:28');
INSERT INTO `product_attribute` VALUES ('95', '2', '1', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('96', '2', '3', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('97', '2', '4', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('98', '2', '5', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('99', '2', '7', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('100', '2', '8', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('101', '2', '9', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('102', '2', '11', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('103', '2', '13', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('104', '2', '15', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('105', '2', '18', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('106', '2', '19', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('107', '2', '23', null, '2017-05-14 10:32:24');
INSERT INTO `product_attribute` VALUES ('108', '2', '22', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('109', '2', '20', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('110', '2', '16', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('111', '2', '29', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('112', '2', '33', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('113', '2', '34', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('114', '2', '35', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('115', '2', '36', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('116', '2', '37', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('117', '2', '30', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('118', '2', '41', null, '2017-05-14 10:30:10');
INSERT INTO `product_attribute` VALUES ('119', '3', '1', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('120', '2', '3', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('121', '2', '4', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('122', '2', '5', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('123', '2', '6', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('124', '2', '8', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('125', '2', '10', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('126', '2', '11', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('127', '2', '13', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('128', '2', '15', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('129', '2', '12', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('130', '2', '19', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('131', '2', '20', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('132', '2', '21', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('133', '2', '22', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('134', '2', '16', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('135', '2', '29', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('136', '2', '33', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('137', '2', '34', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('138', '2', '35', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('139', '2', '36', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('140', '2', '37', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('141', '2', '39', null, '2017-05-14 10:31:57');
INSERT INTO `product_attribute` VALUES ('142', '2', '41', null, '2017-05-14 10:31:57');

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
  `price` decimal(8,3) default NULL,
  `memory` varchar(100) default NULL,
  `flash_memory` varchar(100) default NULL,
  `processor` varchar(100) default NULL,
  `pixel` varchar(100) default NULL,
  `wlan` varchar(100) default NULL,
  `wireless_model` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_property
-- ----------------------------
INSERT INTO `product_property` VALUES ('1', '1', 'On POS SE', '2000.000', '2GB', '8GB', 'Freescale四核1.5G处理器', '500万', 'WCDMA', null);
INSERT INTO `product_property` VALUES ('2', '2', 'On POS SE', '1299.000', '2GB', '6GB', 'Freescale四核1G处理器', '500万', null, null);
INSERT INTO `product_property` VALUES ('3', '2', 'On POS SE', '999.000', '1GB', '4GB', 'Freescale四核1G处理器', '200万', null, null);
INSERT INTO `product_property` VALUES ('4', '4', 'On POS SE', '2999.000', '2GB', '8GB', 'Freescale四核2G处理器', '800万', null, null);
INSERT INTO `product_property` VALUES ('5', '5', 'On POS SE', '3999.000', '2GB', '8GB', 'Freescale八核2G处理器', '1200万', null, null);
