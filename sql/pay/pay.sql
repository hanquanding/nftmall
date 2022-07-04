/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : pay

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 04/07/2022 16:05:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for payinfo
-- ----------------------------
DROP TABLE IF EXISTS `payinfo`;
CREATE TABLE `payinfo` (
  `id` bigint(20) unsigned NOT NULL COMMENT '支付信息表id',
  `orderid` varchar(64) NOT NULL DEFAULT '' COMMENT '订单id',
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `payplatform` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付平台:1-支付宝,2-微信',
  `platformnumber` varchar(200) NOT NULL DEFAULT '' COMMENT '支付流水号',
  `platformstatus` varchar(20) NOT NULL DEFAULT '' COMMENT '支付状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `ix_orderid` (`orderid`),
  KEY `ix_userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='支付信息表';

-- ----------------------------
-- Records of payinfo
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
