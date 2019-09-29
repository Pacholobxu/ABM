/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : bioline

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-02-01 05:24:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `C_id` varchar(100) NOT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `Code` varchar(100) DEFAULT NULL,
  `Business Identifier` varchar(100) DEFAULT NULL,
  `Billing address` varchar(100) DEFAULT NULL,
  `Email address` varchar(100) DEFAULT NULL,
  `Credit limit` int(255) DEFAULT NULL,
  `Telephone` int(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`C_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('5c1c090edae6f', 'oi', '', '123', 'po', 'klugpatan2018@gmail.com', '0', '0', '123456');
INSERT INTO `customer` VALUES ('5c1c0a51bb52f', 'oi', '', '123', 'po', 'klugpatan2018@gmail.com', '0', '0', '123456');

-- ----------------------------
-- Table structure for `inventory`
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `Item_code` varchar(100) NOT NULL,
  `Item_name` varchar(100) DEFAULT NULL,
  `Unit_Name` varchar(100) NOT NULL,
  `Purchase_price` int(100) DEFAULT NULL,
  `Sales_price` int(100) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Acount_info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Item_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inventory
-- ----------------------------

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `Invoice_date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `Invoice_number` varchar(100) DEFAULT NULL,
  `Supplier` varchar(100) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Item` varchar(100) DEFAULT NULL,
  `Account` varchar(100) DEFAULT NULL,
  `Description1` varchar(100) DEFAULT NULL,
  `Qty` int(100) DEFAULT NULL,
  `Unit_price` int(100) DEFAULT NULL,
  `Amount` int(100) DEFAULT NULL,
  `Discount` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('user', 'pw');
