/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : allphptricks

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-09-29 20:45:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Contour TS -Bayers', 'CTSS0052', '600.00', 'product-images/Blood Glucose Monitoring Meter, Contour TS -BayersSmall.jpg');
INSERT INTO `products` VALUES ('3', 'Alcohol Lamp 150ml', '007JMBND', '700.00', 'product-images/Alcohol Lamp 150mls.jpg');
INSERT INTO `products` VALUES ('4', 'Bottle Top Dispenser', 'BD-5250', '760.00', 'product-images/Bottle Top Dispenser.jpg');
INSERT INTO `products` VALUES ('5', 'bioling sterilizer', 'SUPL0735', '5000.00', 'product-images/bioling sterilizer.jpg');
INSERT INTO `products` VALUES ('6', 'counter', 'handheld ', '1200.00', 'product-images/hand-held counter.jpg');

-- ----------------------------
-- Table structure for `product_sale_agent`
-- ----------------------------
DROP TABLE IF EXISTS `product_sale_agent`;
CREATE TABLE `product_sale_agent` (
  `AG_ID` int(10) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `qty` int(10) DEFAULT NULL,
  `company_id` varchar(100) DEFAULT NULL,
  `P_date` varchar(100) DEFAULT NULL,
  `SO_ref` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`SO_ref`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product_sale_agent
-- ----------------------------
INSERT INTO `product_sale_agent` VALUES ('101', 'CTSS0052', '0', 'abcCM', 'Sunday 29th of September 2019 07:57:06 PM', '1');
INSERT INTO `product_sale_agent` VALUES ('101', '007JMBND', '0', 'abcCM', 'Sunday 29th of September 2019 07:57:09 PM', '2');
INSERT INTO `product_sale_agent` VALUES ('101', 'BD-5250', '0', 'abcCM', 'Sunday 29th of September 2019 07:57:13 PM', '3');
INSERT INTO `product_sale_agent` VALUES ('101', 'SUPL0735', '0', 'abcCM', 'Sunday 29th of September 2019 07:57:17 PM', '4');
INSERT INTO `product_sale_agent` VALUES ('101', 'handheld ', '0', 'abcCM', 'Sunday 29th of September 2019 07:57:20 PM', '5');
INSERT INTO `product_sale_agent` VALUES ('101', 'handheld ', '0', 'abcCM', 'Sunday 29th of September 2019 08:01:38 PM', '6');
INSERT INTO `product_sale_agent` VALUES ('102', 'CTSS0052', '1', 'aile bioline', 'Sunday 29th of September 2019 08:11:14 PM', '7');
INSERT INTO `product_sale_agent` VALUES ('102', '007JMBND', '1', 'aile bioline', 'Sunday 29th of September 2019 08:11:21 PM', '8');
INSERT INTO `product_sale_agent` VALUES ('102', 'BD-5250', '1', 'aile bioline', 'Sunday 29th of September 2019 08:11:24 PM', '9');
INSERT INTO `product_sale_agent` VALUES ('102', 'SUPL0735', '1', 'aile bioline', 'Sunday 29th of September 2019 08:11:26 PM', '10');
INSERT INTO `product_sale_agent` VALUES ('102', 'handheld ', '1', 'aile bioline', 'Sunday 29th of September 2019 08:11:28 PM', '11');
