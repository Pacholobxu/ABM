/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : bioline

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-09-29 20:44:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `EmpPSI` varchar(100) DEFAULT NULL,
  `EmpPw` varchar(10) NOT NULL,
  `EmpWN` varchar(10) DEFAULT NULL,
  `Emp_Fname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EmpPw`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('Manager', '0421', 'Managing_D', 'Ely');
INSERT INTO `admin` VALUES ('CC', 'Joy', 'Cutomer Ca', null);
INSERT INTO `admin` VALUES ('Accounting', 'Mark', 'Accounting', null);

-- ----------------------------
-- Table structure for `agent`
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `Agent_ID` varchar(100) NOT NULL,
  `Agent_Fname` varchar(100) DEFAULT NULL,
  `Agent_ Mname` varchar(100) DEFAULT NULL,
  `Agent_ Lname` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `rank` varchar(100) DEFAULT NULL,
  `Area` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Agent_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of agent
-- ----------------------------
INSERT INTO `agent` VALUES ('101', 'mark', 'hilig', 'cutamora', 'BXU', '1', 'BMC-123');
INSERT INTO `agent` VALUES ('102', 'pacholo', 'oraiz', 'lugpatan', 'bxu', '2', 'EROM-007,BDH-123,HCH-123');

-- ----------------------------
-- Table structure for `agent_accnt`
-- ----------------------------
DROP TABLE IF EXISTS `agent_accnt`;
CREATE TABLE `agent_accnt` (
  `AG_ID` int(10) NOT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `Lname` varchar(100) DEFAULT NULL,
  `Add_designation` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`AG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of agent_accnt
-- ----------------------------
INSERT INTO `agent_accnt` VALUES ('100', 'Pach', 'Park', null, 'A1');
INSERT INTO `agent_accnt` VALUES ('101', 'Mark', 'Cut', 'head Agent Contour', 'A2');
INSERT INTO `agent_accnt` VALUES ('102', 'Pepay', 'Cut', 'Lead Agent', 'A3');
INSERT INTO `agent_accnt` VALUES ('103', 'Peleng', 'Gels', null, 'A4');

-- ----------------------------
-- Table structure for `agent_area`
-- ----------------------------
DROP TABLE IF EXISTS `agent_area`;
CREATE TABLE `agent_area` (
  `AG_ID` varchar(10) DEFAULT NULL,
  `stablisment` varchar(100) NOT NULL,
  PRIMARY KEY (`stablisment`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of agent_area
-- ----------------------------
INSERT INTO `agent_area` VALUES ('101', 'Butuan  Medical center');
INSERT INTO `agent_area` VALUES ('101', 'Butuan Doctor Hospita');
INSERT INTO `agent_area` VALUES ('102', 'Holy Child Hospital');

-- ----------------------------
-- Table structure for `agsales_cart`
-- ----------------------------
DROP TABLE IF EXISTS `agsales_cart`;
CREATE TABLE `agsales_cart` (
  `Agent_ID` varchar(100) NOT NULL,
  `Qty` int(100) DEFAULT NULL,
  `C_id` varchar(100) DEFAULT NULL,
  `Item_code` varchar(100) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Scode` int(100) NOT NULL AUTO_INCREMENT,
  `AprvDiscount` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Scode`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of agsales_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `cart_items`
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart_items
-- ----------------------------

-- ----------------------------
-- Table structure for `customers`
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `cusAccntPW` varchar(100) NOT NULL,
  `custID` varchar(100) NOT NULL,
  `BegBalance` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `CusR_lastname` varchar(100) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `bus_identifier` varchar(100) NOT NULL,
  `billing_address` varchar(100) NOT NULL,
  `del_address` varchar(100) NOT NULL,
  `email_add` varchar(100) NOT NULL,
  `creditlimit` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `prop_president` varchar(50) NOT NULL,
  `line_bus` varchar(100) NOT NULL,
  `cor_num` varchar(10) NOT NULL,
  `Busphone` varchar(100) NOT NULL,
  `homephone` varchar(100) NOT NULL,
  `mobilenum` varchar(100) NOT NULL,
  `faxnumber` varchar(100) NOT NULL,
  `stateprovince` varchar(100) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `notes` varchar(1000) NOT NULL,
  `attachments` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`,`cusAccntPW`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('4', 'BMC-123', 'BMC', '', 'ken mark', 'cutamora', 'Butuan  Medical center', '101', '', 'liboon', 'ampayon butuan city', '', '', '', '', '', '', '', '', '09483102313', '', '', '0', '', '');
INSERT INTO `customers` VALUES ('6', 'EROM-007', 'EROM', '', 'pacholo', 'lugpatan', 'Maternity Hospital', '102', '', 'ampayon', 'butuan', '', '', '', 'Pharamcy', '', '', '123', '123', '123', '123', '', '0', '', '');
INSERT INTO `customers` VALUES ('7', 'HCH-123', 'NBC', '', 'Crissa', 'Tanio gelig', 'Holy Child Hospital', '102', '', 'Ampayon Butuan City', 'Liboon Butuan City', '', '', '', 'Free Standing Laboratory', '', '', '', '', '', '', 'Agusan Dell Norte', '8600', '', '');
INSERT INTO `customers` VALUES ('2', 'BDH-123', 'abcCM', '', 'pepay', 'cutamora', 'Butuan Doctor Hospital', '101', '', 'butuan City', 'cagayan de oro City', '', '', '', 'Pharamcy', '', '', '', '', '123456789', '', '', '0', '', '');
INSERT INTO `customers` VALUES ('8', 'ABM-0421', 'aile bioline', '', 'aile bioline', 'aile bioline', 'ailebioline', '102', '', 'buuan city', 'butuan city', '', '', '', '', '', '', '', '', '', '', '', '8600', '', '');

-- ----------------------------
-- Table structure for `discount`
-- ----------------------------
DROP TABLE IF EXISTS `discount`;
CREATE TABLE `discount` (
  `Cust_id` varchar(100) NOT NULL,
  `Adiscount` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of discount
-- ----------------------------
INSERT INTO `discount` VALUES ('ailebioline', '10');

-- ----------------------------
-- Table structure for `inventory`
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `Item_code` varchar(100) DEFAULT NULL,
  `Item_name` varchar(100) DEFAULT NULL,
  `Unit_Name` varchar(100) DEFAULT NULL,
  `Purchase_price` int(100) DEFAULT NULL,
  `Sales_price` int(100) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `tax_code` varchar(100) DEFAULT NULL,
  `tracking_code` int(100) DEFAULT NULL,
  `custom_income_accnt` varchar(255) DEFAULT NULL,
  `custom_expense_accnt` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `max_discount` int(100) DEFAULT NULL,
  `price_floor` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('007JMBND', 'Alcohol Lamp 150ml', 'Alcohol Lamp 150ml', null, '150', '171', '150', '285', 'piece', '0', 'TULIP', '0', '0');
INSERT INTO `inventory` VALUES ('19M522', 'Denatured Alcohol 4L, MEDIC', 'Denatured Alcohol 4L, MEDIC', null, '790', '', '', null, 'gallon', '0', 'TULIP', '0', '0');
INSERT INTO `inventory` VALUES ('BD-5250', 'Bottle Top Dispenser, MATRIX', 'Bottle Top Dispenser, MATRIX', null, '760', '', '', null, 'piece', '0', 'TULIP', '0', '0');
INSERT INTO `inventory` VALUES ('BGR0080', 'Typing Sera Anti-A, EPICLONE', 'Anti-A monoclonal Blood Grouping Reagent  10mL, EPICLONE', null, '500', '', '', null, 'vial', '85', 'TULIP', '0', '0');
INSERT INTO `inventory` VALUES ('BGR0081', 'Anti-D/Rh, EPICLONE', 'Anti-D / Rh Blood Grouping Reagent 10mL, EPICLONE', null, '689', '', '', null, 'vial', '120', 'TULIP', '0', '0');
INSERT INTO `inventory` VALUES ('CTSM0056', 'Blood Glucose Monitoring Meter, Contour TS -Bayer', 'Blood Glucose Monitoring Meter, Contour TS -Bayer', null, '900', '', '0', '0', 'kit', '0', 'SD', '0', '18');
INSERT INTO `inventory` VALUES ('CTSS0052', 'Blood Glucose Strips, Contour TS -BAYER', 'Blood Glucose Strips 25\'s, Contour TS -BAYER', null, '590', '', '362.32', '716', 'box', '0', 'SD', '0', '0');
INSERT INTO `inventory` VALUES ('DSC1524T', 'Clinical Centrifuge, DIGISYSTEM', 'Clinical Centrifuge DSC-1524T, 24Placer, DIGISYSTEM', null, '645', '', '', null, 'unit', '0', 'INTEC', '0', '0');
INSERT INTO `inventory` VALUES ('DSC158T', 'Clinical Centrifuge 8 Placer, DIGISYSTEM', 'Clinical Centrifuge DSC-158T, 8 Placer, DIGISYSTEM', null, '799', '', '', null, 'unit', '0', 'INTEC', '0', '0');
INSERT INTO `inventory` VALUES ('DT-WON01', 'Digital Timer, WONDFO', 'Digital Timer, WONDFO', null, '425', '', '', '825', 'piece', '0', 'INTEC', '0', '37');
INSERT INTO `inventory` VALUES ('H2O-10L', 'Distilled Water 10L, NATURESPRING', 'Distilled Water 10L, NATURESPRING', null, '64', '', '64', '150', 'bottle', '0', 'SD', '0', '2');
INSERT INTO `inventory` VALUES ('MCRO0377', 'Inoculation Wire Loop, , ASSISTENT', 'Inoculation Loop, Nichrome Wire Diameter: 3-4mm, w/ Glass Handle, Germany, ASSISTENT', null, '600', '', '600', '857', 'piece', '0', 'INTEC', '0', '0');
INSERT INTO `inventory` VALUES ('MCRO0378', 'Inoculation Wire Needle, ASSISTENT', 'Inoculation Needle w/o handle, Nichrome Wire, Germany, ASSISTENT', null, '450', '', '450', '750', 'piece', '0', 'SD', '0', '0');
INSERT INTO `inventory` VALUES ('PD150G', 'Petri Dish, Glass, 150mm', 'Petri Dish, Glass, 150mm', null, '158', '', '158', '270', 'piece', '0', 'INTEC', '0', '0');
INSERT INTO `inventory` VALUES ('PD150PS10', 'Petri Dish, PS 150mm, 10\'s', 'Petri Dish, PS, 1 Room, 150mmx15mm, Sterile, 10\'s', null, '265', '', '265', '380', 'pack', '25', 'INTEC', '0', '0');
INSERT INTO `inventory` VALUES ('PD150PS20', 'Petri Dish, PS 150mm, 20\'s', 'Petri Dish, PS, 1 Room, 150mmx15mm, Sterile, 20\'s', null, '412', '', '', '760', 'pack', '0', 'INTEC', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0104', 'Capillary Tube, Red Tip, Hirschmann', 'Heparinized Capillary Tube, Red Tip,100\'s,Hirschmann', null, '83', '', '83', '210', 'vial', '0', 'INTEC', '0', '5');
INSERT INTO `inventory` VALUES ('SUPL0328', 'Microcentrifuge / Aliquot Tubes 2mL 100\'s', 'Microcentrifuge / Aliquot Tubes with snap cap 2mL 100\'s', null, '120', '', '120', '205', 'pack', '0', 'SD', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0343', 'Test Tube Brush, small', 'Test Tube Brush, White Bristles, Small, 13mmx76mm', null, '40', '', '40', '64', 'piece', '0', 'SD', '0', '3');
INSERT INTO `inventory` VALUES ('SUPL0386', 'WBC Pipette,  Assistent', 'WBC Pipette, Germany, Assistent', null, '370', '', '370', '823', 'piece', '0', 'SD', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0387', 'Coplin Jar,  Round, Glass', 'Coplin Jar, Round, Glass, 5 internal slots for slides', null, '326', '', '326', '548', 'piece', '3', 'SD', '0', '2');
INSERT INTO `inventory` VALUES ('SUPL0394', 'Staining Rack, 20 Slides placer', 'Staining Rack, Papanicolau type, 20 Slides placer, Stainless Steel', null, '518', '', '518', '863', 'piece', '0', 'SD', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0399', 'Test Tube Rack, for 20-21mm tubes', 'Test Tube Rack, for 20-21mm Diameter tubes, 40placer, Autoclavable Plastic', null, '392', '', '392', '825', 'piece', '0', 'SD', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0403', 'Test Tube Rack 15-17mm, Plastic', 'Test Tube Rack, 15-17mm Diameter, 60placer, Autoclavable Plastic', null, '392', '', '392', '825', 'piece', '0', 'TULIP', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0406', 'Rack for Pipette Tips, 10uL', 'Rack for Pipette Tips, 10uL', null, '392', '', '392', '825', 'each', '0', 'TULIP', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0407', 'Rack for Pipette Tips, 200uL (Yellow Tips)', 'Pipette Tips Rack for vol. 200uL, Plastic', null, '392', '', '392', '825', 'each', '2', 'TULIP', '0', '1');
INSERT INTO `inventory` VALUES ('SUPL0408', 'Rack for Pipette Tips, 1000uL(Blue Tips)', 'Pipette Tips Rack for 1000uL, Plastic', null, '392', '', '392', '825', 'piece', '2', 'TULIP', '0', '1');
INSERT INTO `inventory` VALUES ('SUPL0457', 'Lens Cleaning Tissues 100\'s', 'Lens Cleaning Tissues 100x150mm, 11gr/sqm 100\'s', null, '70', '', '70', '120', 'pad', '5', 'TULIP', '0', '3');
INSERT INTO `inventory` VALUES ('SUPL0459', 'Blood Lancets, Stainless Flat Steel, ORMED', 'Blood Lancets, Stainless Flat Steel 200\'s, ORMED', null, '180', '', '180', '860', 'box', '0', 'INTEC', '0', '5');
INSERT INTO `inventory` VALUES ('SUPL0541', 'Blood Lancets 30G, McLance', 'Superfine Blood Lancets 30G 100\'s, McLance', null, '120', '', '120', '350', 'box', '40', 'TULIP', '1', '12');
INSERT INTO `inventory` VALUES ('SUPL0542', 'Urine Container (Salad Cap)', 'Urine Container 50\'s with Lid cap, unsterile', null, '90', '103', '90', '147', 'pack', '2', 'SD', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0561', 'Sample Cups for DIACHECK C1', 'Cuvette / Sample Cups 100\'s for DIACHECK C1 coagulation Analyzer', null, '2200', '', '2,200', null, 'pack', '3', 'SD', '0', '2');
INSERT INTO `inventory` VALUES ('SUPL0672', 'Disposable Syringe 10cc, DUNHAME', 'Disposable Syringe 10cc G23, DUNHAME', null, '300', '', '300', '650', 'box', '0', 'SD', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0673', 'Disposable Syringe 5cc, DUNHAME', 'Disposable Syringe 5cc with needle G23x1\" 100\'s, sterile, DUNHAME', null, '210', '', '210', '525', 'box', '0', 'SD', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0674', 'Disposable Syringe 3cc, DUNHAME', 'Disposable Syringe 3cc with needle G23x1\" 100\'s, sterile, DUNHAME', null, '205', '', '205', '410', 'box', '0', 'TULIP', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0675', 'Syringe 1cc 100\'s, Dunhame', 'Syringe 1cc 100\'s, Dunhame', null, '205', '', '205', '515', 'box', '0', 'INTEC', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0680', 'IV Cannula G24, DUNHAME', 'IV Cannula G24, DUNHAME', null, '45', '', '45', '75', 'piece', '0', 'INTEC', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0681', 'IV Cannula G26, DUNHAME', 'IV Cannula G26, DUNHAME', null, '45', '', '45', '75', 'piece', '0', 'INTEC', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0684-M', 'Nitrile Examination Gloves, Medium, DUNHAME', 'Nitrile Examination Gloves, 100\'s, Medium, DUNHAME', null, '200', '', '200', '295', 'box', '50', 'INTEC', '3', '47');
INSERT INTO `inventory` VALUES ('SUPL0684-S', 'Nitrile Examination Gloves, DUNHAME', 'Nitrile Examination Gloves 100\'s, Small, DUNHAME', null, '200', '', '200', '295', 'box', '0', 'INTEC', '0', '3');
INSERT INTO `inventory` VALUES ('SUPL0694', 'Ultraporous Hypoallergenic 1\", SURGICAL TAPE', 'Ultraporous Hypoallergenic 1\"x10yds 12rolls, Non-woven Cloth, SURGICAL TAPE', null, '200', '', '200', '400', 'box', '10', 'INTEC', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0695', 'Ultraporous Hypoallergenic 1/2\", SURGICAL TAPE', 'Ultraporous Hypoallergenic 1/2\"x10yds 24rolls, Non-woven Cloth, SURGICAL TAPE', null, '200', '', '200', '400', 'box', '0', 'INTEC', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0700', 'Adult Diaper 10\'s, DUNHAME', 'Adult Diaper 10\'s, DUNHAME', null, '155', '', '155', '228', 'pack', '0', 'INTEC', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0701', 'Face Mask Earloop, DUNHAME', 'Face Mask Earloop Non-woven 50\'s, DUNHAME', null, '80', '', '80', '120', 'box', '0', 'TULIP', '0', '25');
INSERT INTO `inventory` VALUES ('SUPL0704', 'Volumetric Infusion Set (Soluset) 150mL, Dunhame', 'Volumetric Infusion Set (Soluset) 150mL, Dunhame', null, '30', '', '30', '60', 'piece', '0', 'TULIP', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0706', 'Face Mask, Earloop with Charcoal, ORMED', 'Face Mask, Earloop, 4 ply with Charcoal, 50\'s, ORMED', null, '130', '', '130', '218', 'box', '0', 'TULIP', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0707', 'Thermal Paper 57x30mm', 'Thermal Paper 57x30mm', null, '50', '', '50', '100', 'roll', '20', 'TULIP', '0', '15');
INSERT INTO `inventory` VALUES ('SUPL0715', 'Hypoallergenic Surgical Tape 1\",Transpore, 3M', 'Hypoallergenic Surgical Tape 1\" 12\'s, Transpore, 3M', null, '690', '', '690', '986', 'box', '0', 'TULIP', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0716', 'Surgical Gloves, 7.0, McBRIDE', 'Surgical Gloves, 7.0 Sterile, 50\'s, McBRIDE', null, '690', '', '', null, 'box', '0', 'TULIP', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0717', 'Surgical Gloves, 6.5, McBRIDE', 'Surgical Gloves, 6.5 Sterile, 50\'s, McBRIDE', null, '759', '', '', null, 'box', '0', 'SD', '0', '0');
INSERT INTO `inventory` VALUES ('SUPL0718', 'Thermal Paper for EASYLYTE ', 'Thermal Paper for EASYLYTE ', null, '150', '', '150', '550', 'roll', '0', 'TULIP', '-1', '8');
INSERT INTO `inventory` VALUES ('SUPL0719', 'Safety Goggles, YESTAR', 'Safety Goggles, YESTAR', null, '28', '', '28', '100', 'piece', '0', 'INTEC', '0', '2');
INSERT INTO `inventory` VALUES ('SUPL0734', 'Cotton Swab Applicator, Jumbo', 'Cotton Swab Applicator, Sterile, Jumbo, 50\'s', null, '27', '', '27', '120', 'pack', '0', 'SD', '0', '0');
INSERT INTO `inventory` VALUES ('UPS', 'UPS', 'Uninterruptible Power Supply (UPS)', null, '1500', '', '', null, 'unit', '1', 'SD', '0', '1');
INSERT INTO `inventory` VALUES ('SUPL0735', 'bioling sterilizer', 'bioling sterilizer', null, '5000', null, '204', null, null, null, null, null, null);
INSERT INTO `inventory` VALUES ('SUPL0736', 'Handheld Counter', 'Handheld Counter', null, '1200', null, '13', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `itempic`
-- ----------------------------
DROP TABLE IF EXISTS `itempic`;
CREATE TABLE `itempic` (
  `Item_code` varchar(100) NOT NULL,
  `ItemName` varchar(100) DEFAULT NULL,
  `ImgN` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Item_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of itempic
-- ----------------------------
INSERT INTO `itempic` VALUES ('007JMBND', 'Alcohol Lamp 150ml', '007JMBND');
INSERT INTO `itempic` VALUES ('19M522', 'Denatured Alcohol 4L, MEDIC', '19M522');
INSERT INTO `itempic` VALUES ('BD-5250', 'Bottle Top Dispenser, MATRIX', 'BD-5250');
INSERT INTO `itempic` VALUES ('BGR0080', 'Typing Sera Anti-A, EPICLONE', 'BGR0080');
INSERT INTO `itempic` VALUES ('BGR0081', 'Anti-D/Rh, EPICLONE', 'BGR0081');
INSERT INTO `itempic` VALUES ('CTSM0056', 'Blood Glucose Monitoring Meter, Contour TS -Bayer', 'CTSM0056');
INSERT INTO `itempic` VALUES ('CTSS0052', 'Blood Glucose Strips, Contour TS -BAYER', 'CTSS0052');
INSERT INTO `itempic` VALUES ('DSC1524T', 'Clinical Centrifuge, DIGISYSTEM', 'DSC1524T');
INSERT INTO `itempic` VALUES ('DSC158T', 'Clinical Centrifuge 8 Placer, DIGISYSTEM', 'DSC158T');
INSERT INTO `itempic` VALUES ('DT-WON01', 'Digital Timer, WONDFO', 'DT-WON01');
INSERT INTO `itempic` VALUES ('H2O-10L', 'Distilled Water 10L, NATURESPRING', 'H2O-10L');
INSERT INTO `itempic` VALUES ('MCRO0377', 'Inoculation Wire Loop, , ASSISTENT', 'MCRO0377');
INSERT INTO `itempic` VALUES ('MCRO0378', 'Inoculation Wire Needle, ASSISTENT', 'MCRO0378');
INSERT INTO `itempic` VALUES ('PD150G', 'Petri Dish, Glass, 150mm', 'PD150G');
INSERT INTO `itempic` VALUES ('PD150PS10', 'Petri Dish, PS 150mm, 10\'s', 'PD150PS10');
INSERT INTO `itempic` VALUES ('PD150PS20', 'Petri Dish, PS 150mm, 20\'s', 'PD150PS20');
INSERT INTO `itempic` VALUES ('SUPL0104', 'Capillary Tube, Red Tip, Hirschmann', 'SUPL0104');
INSERT INTO `itempic` VALUES ('SUPL0328', 'Microcentrifuge / Aliquot Tubes 2mL 100\'s', 'SUPL0328');
INSERT INTO `itempic` VALUES ('SUPL0343', 'Test Tube Brush, small', 'SUPL0343');
INSERT INTO `itempic` VALUES ('SUPL0386', 'WBC Pipette,  Assistent', 'SUPL0386');
INSERT INTO `itempic` VALUES ('SUPL0387', 'Coplin Jar,  Round, Glass', 'SUPL0387');
INSERT INTO `itempic` VALUES ('SUPL0394', 'Staining Rack, 20 Slides placer', 'SUPL0394');
INSERT INTO `itempic` VALUES ('SUPL0399', 'Test Tube Rack, for 20-21mm tubes', 'SUPL0399');
INSERT INTO `itempic` VALUES ('SUPL0403', 'Test Tube Rack 15-17mm, Plastic', 'SUPL0403');
INSERT INTO `itempic` VALUES ('SUPL0406', 'Rack for Pipette Tips, 10uL', 'SUPL0406');
INSERT INTO `itempic` VALUES ('SUPL0407', 'Rack for Pipette Tips, 200uL (Yellow Tips)', 'SUPL0407');
INSERT INTO `itempic` VALUES ('SUPL0408', 'Rack for Pipette Tips, 1000uL(Blue Tips)', 'SUPL0408');
INSERT INTO `itempic` VALUES ('SUPL0457', 'Lens Cleaning Tissues 100\'s', 'SUPL0457');
INSERT INTO `itempic` VALUES ('SUPL0459', 'Blood Lancets, Stainless Flat Steel, ORMED', 'SUPL0459');
INSERT INTO `itempic` VALUES ('SUPL0541', 'Blood Lancets 30G, McLance', 'SUPL0541');
INSERT INTO `itempic` VALUES ('SUPL0542', 'Urine Container (Salad Cap)', 'SUPL0542');
INSERT INTO `itempic` VALUES ('SUPL0561', 'Sample Cups for DIACHECK C1', 'SUPL0561');
INSERT INTO `itempic` VALUES ('SUPL0672', 'Disposable Syringe 10cc, DUNHAME', 'SUPL0672');
INSERT INTO `itempic` VALUES ('SUPL0673', 'Disposable Syringe 5cc, DUNHAME', 'SUPL0673');
INSERT INTO `itempic` VALUES ('SUPL0674', 'Disposable Syringe 3cc, DUNHAME', 'SUPL0674');
INSERT INTO `itempic` VALUES ('SUPL0675', 'Syringe 1cc 100\'s, Dunhame', 'SUPL0675');
INSERT INTO `itempic` VALUES ('SUPL0680', 'IV Cannula G24, DUNHAME', 'SUPL0680');
INSERT INTO `itempic` VALUES ('SUPL0681', 'IV Cannula G26, DUNHAME', 'SUPL0681');
INSERT INTO `itempic` VALUES ('SUPL0684-M', 'Nitrile Examination Gloves, Medium, DUNHAME', 'SUPL0684-M');
INSERT INTO `itempic` VALUES ('SUPL0684-S', 'Nitrile Examination Gloves, DUNHAME', 'SUPL0684-S');
INSERT INTO `itempic` VALUES ('SUPL0694', 'Ultraporous Hypoallergenic 1\", SURGICAL TAPE', 'SUPL0694');
INSERT INTO `itempic` VALUES ('SUPL0695', 'Ultraporous Hypoallergenic 1/2\", SURGICAL TAPE', 'SUPL0695');
INSERT INTO `itempic` VALUES ('SUPL0700', 'Adult Diaper 10\'s, DUNHAME', 'SUPL0700');
INSERT INTO `itempic` VALUES ('SUPL0701', 'Face Mask Earloop, DUNHAME', 'SUPL0701');
INSERT INTO `itempic` VALUES ('SUPL0704', 'Volumetric Infusion Set (Soluset) 150mL, Dunhame', 'SUPL0704');
INSERT INTO `itempic` VALUES ('SUPL0706', 'Face Mask, Earloop with Charcoal, ORMED', 'SUPL0706');
INSERT INTO `itempic` VALUES ('SUPL0707', 'Thermal Paper 57x30mm', 'SUPL0707');
INSERT INTO `itempic` VALUES ('SUPL0715', 'Hypoallergenic Surgical Tape 1\",Transpore, 3M', 'SUPL0715');
INSERT INTO `itempic` VALUES ('SUPL0716', 'Surgical Gloves, 7.0, McBRIDE', 'SUPL0716');
INSERT INTO `itempic` VALUES ('SUPL0717', 'Surgical Gloves, 6.5, McBRIDE', 'SUPL0717');
INSERT INTO `itempic` VALUES ('SUPL0718', 'Thermal Paper for EASYLYTE ', 'SUPL0718');
INSERT INTO `itempic` VALUES ('SUPL0719', 'Safety Goggles, YESTAR', 'SUPL0719');
INSERT INTO `itempic` VALUES ('SUPL0734', 'Cotton Swab Applicator, Jumbo', 'SUPL0734');
INSERT INTO `itempic` VALUES ('UPS', 'UPS', 'UPS');

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
-- Table structure for `product_images`
-- ----------------------------
DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COMMENT='image files related to a product';

-- ----------------------------
-- Records of product_images
-- ----------------------------

-- ----------------------------
-- Table structure for `sales`
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `Agent_ID` varchar(100) DEFAULT NULL,
  `C_id` varchar(100) DEFAULT NULL,
  `Item_code` varchar(100) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Month` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES ('101', 'abcd', 'xyz', '2019-04-01', '04');

-- ----------------------------
-- Procedure structure for `allraw_Tinventory`
-- ----------------------------
DROP PROCEDURE IF EXISTS `allraw_Tinventory`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `allraw_Tinventory`()
BEGIN
    Select * FROM inventory;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `datafield_inventory`
-- ----------------------------
DROP PROCEDURE IF EXISTS `datafield_inventory`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `datafield_inventory`()
BEGIN
   SHOW COLUMNS FROM inventory;
   END
;;
DELIMITER ;
