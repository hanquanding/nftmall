/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : order

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 04/07/2022 16:04:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `id` bigint(20) unsigned NOT NULL COMMENT '订单子表id',
  `orderid` varchar(64) NOT NULL DEFAULT '' COMMENT '订单id',
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `proid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `proname` varchar(100) NOT NULL DEFAULT '' COMMENT '商品名称',
  `proimage` varchar(500) NOT NULL DEFAULT '' COMMENT '商品图片地址',
  `currentunitprice` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '生成订单时的商品单价，单位是元,保留两位小数',
  `quantity` int(10) NOT NULL DEFAULT '0' COMMENT '商品数量',
  `totalprice` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价,单位是元,保留两位小数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `ix_orderid` (`orderid`),
  KEY `ix_userid` (`userid`),
  KEY `ix_proid` (`proid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单明细表';

-- ----------------------------
-- Records of orderitem
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '订单id',
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `shoppingid` bigint(20) NOT NULL DEFAULT '0' COMMENT '收货信息表id',
  `payment` decimal(20,2) DEFAULT '0.00' COMMENT '实际付款金额,单位是元,保留两位小数',
  `paymenttype` tinyint(4) NOT NULL DEFAULT '1' COMMENT '支付类型,1-在线支付',
  `postage` int(10) NOT NULL DEFAULT '0' COMMENT '运费,单位是元',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '订单状态:0-已取消-10-未付款，20-已付款，30-待发货 40-待收货，50-交易成功，60-交易关闭',
  `payment_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `send_time` timestamp NULL DEFAULT NULL COMMENT '发货时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '交易完成时间',
  `close_time` timestamp NULL DEFAULT NULL COMMENT '交易关闭时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for shopping
-- ----------------------------
DROP TABLE IF EXISTS `shopping`;
CREATE TABLE `shopping` (
  `id` bigint(20) unsigned NOT NULL COMMENT '收货信息表id',
  `orderid` varchar(64) NOT NULL DEFAULT '' COMMENT '订单id',
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `receiver_name` varchar(20) NOT NULL DEFAULT '' COMMENT '收货姓名',
  `receiver_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '收货固定电话',
  `receiver_mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '收货移动电话',
  `receiver_province` varchar(20) NOT NULL DEFAULT '' COMMENT '省份',
  `receiver_city` varchar(20) NOT NULL DEFAULT '' COMMENT '城市',
  `receiver_district` varchar(20) NOT NULL DEFAULT '' COMMENT '区/县',
  `receiver_address` varchar(200) NOT NULL DEFAULT '' COMMENT '详细地址',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `ix_orderid` (`orderid`),
  KEY `ix_userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='收货信息表';

-- ----------------------------
-- Records of shopping
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
