/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ailebioline

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-09-29 20:44:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `accountingreg`
-- ----------------------------
DROP TABLE IF EXISTS `accountingreg`;
CREATE TABLE `accountingreg` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `ref` varchar(100) NOT NULL,
  `particulars` varchar(100) NOT NULL,
  `debitamount` double(100,30) NOT NULL,
  `accttype` int(100) NOT NULL,
  `creditamount` double(100,30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of accountingreg
-- ----------------------------
INSERT INTO `accountingreg` VALUES ('2', '2019-06-03', 'CI 1234', 'Income from Goods', '1000.000000000000000000000000000000', '104', '0.000000000000000000000000000000');
INSERT INTO `accountingreg` VALUES ('3', '2019-06-03', 'DR 1234', 'Butuan Doctors Hospital', '500.000000000000000000000000000000', '103', '0.000000000000000000000000000000');
INSERT INTO `accountingreg` VALUES ('4', '2019-06-03', 'DV 001', 'Rent for the Month of January', '0.000000000000000000000000000000', '501', '10000.000000000000000000000000000000');
INSERT INTO `accountingreg` VALUES ('5', '2019-06-05', 'DV 002', 'Contour', '100000.000000000000000000000000000000', '506', '0.000000000000000000000000000000');

-- ----------------------------
-- Table structure for `chartaccounts`
-- ----------------------------
DROP TABLE IF EXISTS `chartaccounts`;
CREATE TABLE `chartaccounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountname` varchar(100) NOT NULL,
  `acctnumber` int(100) NOT NULL,
  `accttype` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of chartaccounts
-- ----------------------------
INSERT INTO `chartaccounts` VALUES ('1', 'Cash On hand', '101', 'Income');
INSERT INTO `chartaccounts` VALUES ('3', 'Cash in Bank', '102', 'Income');
INSERT INTO `chartaccounts` VALUES ('5', 'Account Receivable', '103', 'Income');
INSERT INTO `chartaccounts` VALUES ('6', 'Goods of Sales', '104', 'Income');
INSERT INTO `chartaccounts` VALUES ('7', 'Cost of Goods', '506', 'Expense');
INSERT INTO `chartaccounts` VALUES ('8', 'Other Income', '106', 'Income');
INSERT INTO `chartaccounts` VALUES ('9', 'Rent Expense', '501', 'Expense');
INSERT INTO `chartaccounts` VALUES ('10', 'Water And Electricity Expense', '502', 'Expense');
INSERT INTO `chartaccounts` VALUES ('11', 'Fuel and Oil Expense', '503', 'Expense');
INSERT INTO `chartaccounts` VALUES ('12', 'Communication Expense', '504', 'Expense');
INSERT INTO `chartaccounts` VALUES ('13', 'Representation Expense', '505', 'Expense');
INSERT INTO `chartaccounts` VALUES ('14', 'Travelling Allowance Expense', '507', 'Expense');
INSERT INTO `chartaccounts` VALUES ('15', 'Office Supplies Expense', '508', 'Expense');
INSERT INTO `chartaccounts` VALUES ('16', 'Maintenance & Other Operating Expense', '509', 'Expense');

-- ----------------------------
-- Table structure for `collection`
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ORdate` date NOT NULL,
  `RefNo` varchar(100) NOT NULL,
  `checkcash` varchar(100) NOT NULL,
  `checkNo` varchar(100) NOT NULL,
  `checkdate` date NOT NULL,
  `withheldtax` double(100,2) NOT NULL,
  `penalty` double(100,2) NOT NULL,
  `amountcoll` double(100,2) NOT NULL,
  `SONo` varchar(100) NOT NULL,
  `InvNo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('101', '2019-06-10', '2019-101', 'cash', '', '0000-00-00', '12.00', '0.00', '25000.00', '123', '321');

-- ----------------------------
-- Table structure for `commission`
-- ----------------------------
DROP TABLE IF EXISTS `commission`;
CREATE TABLE `commission` (
  `id` int(11) NOT NULL,
  `vat` double(100,2) NOT NULL,
  `freebies` double(100,2) NOT NULL,
  `pricediff` double(100,2) NOT NULL,
  `tpc` double(100,2) NOT NULL,
  `netcollection` double(100,2) NOT NULL,
  `cod` double(100,2) NOT NULL,
  `30days` double(100,2) NOT NULL,
  `60days` double(100,2) NOT NULL,
  `90days` double(100,2) NOT NULL,
  `91plusdays` double(100,2) NOT NULL,
  `deldate` date NOT NULL,
  `SONo` varchar(100) NOT NULL,
  `InvNo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of commission
-- ----------------------------

-- ----------------------------
-- Table structure for `custaccount`
-- ----------------------------
DROP TABLE IF EXISTS `custaccount`;
CREATE TABLE `custaccount` (
  `id` int(100) NOT NULL,
  `inv_date` date NOT NULL,
  `bookingcode` varchar(100) NOT NULL,
  `accountname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of custaccount
-- ----------------------------

-- ----------------------------
-- Table structure for `customers`
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `custID` int(100) NOT NULL,
  `salesID` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `code` int(100) NOT NULL,
  `bus_identifier` varchar(100) NOT NULL,
  `billing_address` varchar(100) NOT NULL,
  `del_address` varchar(100) NOT NULL,
  `email_add` varchar(100) NOT NULL,
  `creditlimit` int(100) NOT NULL,
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
  `begbal` double(99,30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('18', '1', '0', 'ken Mark', 'Cutamora', 'KMC Hospital', '100', '', 'Purok 3C Brgy Ampayon Butuan City', 'Purok3C Brgy. Ampayon Butuan City', 'kenmafel@gmail.com', '100000', '', 'Hospital', '', '', '', '', '09483102313', '', 'Agusan del Norte', '8600', '', '', '0.000000000000000000000000000000');
INSERT INTO `customers` VALUES ('19', '2', '0', 'Theofy', 'Cutamora', 'AU2 Mobile', '102', '', 'Butuan City Philippines', 'Doongan Butuan City', '', '10000', '', 'Medical Clinic', '', '', '', '', '09483102313', '', 'Agusan del Norte', '8600', '', '', '0.000000000000000000000000000000');
INSERT INTO `customers` VALUES ('20', '333', '0', 'Pacholo', 'Lugpatan', 'PC Hospital', '100', '', '', '', '', '0', '', 'Free Standing Laboratory', '', '', '', '', '', '', '', '0', '', '', '0.000000000000000000000000000000');
INSERT INTO `customers` VALUES ('21', '123', '0', 'piling', '', 'piling clinic', '100', '', '', '', '', '0', '', 'Medical Clinic', '', '', '', '', '', '', '', '0', '', '', '0.000000000000000000000000000000');

-- ----------------------------
-- Table structure for `employeetbl`
-- ----------------------------
DROP TABLE IF EXISTS `employeetbl`;
CREATE TABLE `employeetbl` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `midname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `code` int(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `contactno` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of employeetbl
-- ----------------------------
INSERT INTO `employeetbl` VALUES ('1', 'SALES AGENT', 'Markoz', 'L', 'Cutamora', '100', '', '', '', '', '');
INSERT INTO `employeetbl` VALUES ('2', 'ADMIN', '', '', '', '0', '', '', '', '', '');

-- ----------------------------
-- Table structure for `inventory`
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `itemCode` varchar(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `purchase_price` double(100,2) NOT NULL,
  `sales_price` double(100,2) NOT NULL,
  `item_descript` varchar(100) NOT NULL,
  `item_brand` varchar(100) NOT NULL,
  `max_disc` double(99,2) NOT NULL,
  `pricefloor` double(100,2) NOT NULL,
  `Qty_rec` int(100) NOT NULL,
  `Qty_onhand` int(100) NOT NULL,
  `Qty_todeliver` int(100) NOT NULL,
  `Qty_owned` int(100) NOT NULL,
  `Ave_Cost` int(100) NOT NULL,
  `Tot_cost` int(100) NOT NULL,
  `tax_code` varchar(100) NOT NULL,
  `custom_inc_acct` varchar(100) NOT NULL,
  `custom_exp_acct` varchar(100) NOT NULL,
  `reference` int(11) NOT NULL,
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `dateexpire` date NOT NULL,
  `deldate` date NOT NULL,
  `suppID` varchar(100) NOT NULL,
  `supp_name` varchar(100) NOT NULL,
  `SKU` varchar(100) NOT NULL,
  `LotNo` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=615 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES (' DSC100MH', 'Hematocrit Centrifuge, DIGISYSTEM', 'kit', '23000.00', '37338.00', 'Hematocrit Centrifuge DSC-100MH2, 24placer, DIGISYSTEM', 'DIGISYSTEM', '0.10', '28395.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '1', '2019-05-24', '0000-00-00', '', '', 'SKU-1111-111', '121212');
INSERT INTO `inventory` VALUES ('100188', 'Water Purifier, w/ 2year warranty, eSPRING', 'unit', '50190.00', '65250.00', 'Water Purifier, w/ 2year warranty, eSPRING', 'eSPRING', '0.00', '57034.00', '1', '0', '0', '1', '44', '44', '', '', '', '0', '2', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('10256024', 'AHG / Coombs Test Card, MATRIX', 'kit', '4400.00', '8500.00', 'AHG / Coombs Test Card 6x24\'s, MATRIX -TULIP', 'TULIP', '0.00', '5000.00', '3', '1', '0', '0', '0', '0', '', '', '', '0', '3', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('10257250', 'Diluent-2 LISS. MATRIX', 'bottle', '2750.00', '5500.00', 'Diluent-2 LISS 250mL, MATRIX -TULIP', 'TULIP', '0.00', '3125.00', '8', '6', '8', '2', '2', '5', '', '', '', '0', '4', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('102650024', 'ABO/ Rho (D) Forward Grouping, MATRIX', 'kit', '4400.00', '8500.00', 'ABO/ Rho (D) Forward Grouping 24 gel cards, MATRIX -TULIP', 'TULIP', '0.00', '5000.00', '0', '1', '1', '0', '0', '0', '', '', '', '0', '5', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('102650024', 'Forwarding Grouping & Complete Cross-Match, MATRIX', 'kit', '4950.00', '9500.00', 'Forwarding Grouping & Complete Cross-Match Card 24 gel cards, MATRIX -TULIP', 'TULIP', '0.00', '5625.00', '122', '0', '122', '-5', '0', '0', '', '', '', '0', '6', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('102740024', 'Neutral Gel Card, MATRIX ', 'kit', '4180.00', '8500.00', 'Neutral Gel Card 6x24\'s, MATRIX -TULIP', 'TULIP', '0.00', '4750.00', '5', '-3', '0', '0', '0', '0', '', '', '', '0', '7', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A001', 'HBsAg 30\'s, cassette, SD', 'kit', '990.00', '1571.00', 'HBsAg Rapid Test Kit serum/plasma 30T, cassette, SD', 'SD', '10.00', '1157.89', '0', '29', '1', '17', '990', '16', '', '', '', '0', '8', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A002', 'HBsAg 100\'s, cassette, SD', 'kit', '4384.80', '6960.00', 'HBsAg Multidevice 100T, cassette, WB/serum/plasma, SD', 'SD', '10.00', '5128.42', '10', '-8', '0', '2', '4', '8', '', '', '', '0', '9', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A003', 'HBsAg Rapid, 40\'s, INTEC', 'kit', '1600.00', '2314.00', 'HBsAg Rapid, 40\'s, Cassette, INTEC', 'INTEC', '10.00', '1913.88', '0', '0', '0', '0', '0', '0', '', '', '', '0', '10', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A004', 'HBsAg Rapid 50\'s, Strips, INTEC', 'kit', '1340.00', '2436.00', 'HBsAg Rapid 50\'s, Strips, INTEC', 'INTEC', '0.00', '1602.87', '0', '0', '0', '0', '0', '0', '', '', '', '0', '11', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A005', 'Anti-HBs 25\'s, WONDFO', 'kit', '1505.00', '2736.00', 'Anti-HBs Cassette Test 25\'s,WONDFO', 'WONDFO', '10.00', '1800.24', '0', '0', '0', '0', '0', '0', '', '', '', '0', '12', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A006', 'Anti-HBs Rapid Card 40\'s, INTEC', 'kit', '1940.00', '3527.00', 'Anti-HBs Rapid Card 40\'s, INTEC', 'INTEC', '10.00', '2320.57', '1', '0', '0', '0', '0', '0', '', '', '', '0', '13', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A007', 'Anti-HCV 30\'s, SD', 'kit', '5241.60', '8320.00', 'Anti-HCV 30\'s, serum/plasma, cassette, SD', 'SD', '10.00', '6130.53', '4', '-1', '1', '1', '4', '4', '', '', '', '0', '14', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A008', 'Anti-HCV Rapid Test Kit 100s, SD', 'kit', '12600.00', '20000.00', 'Anti-HCV Rapid Card Multi-device 100T,SD', 'SD', '10.00', '14736.84', '0', '0', '0', '0', '0', '0', '', '', '', '0', '15', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A009', 'Anti-HCV Rapid Card 40\'s, INTEC', 'kit', '3090.00', '5618.00', 'Anti-HCV Rapid Card 40\'s, INTEC', 'INTEC', '10.00', '3696.17', '0', '0', '0', '0', '0', '0', '', '', '', '0', '16', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A010', 'Anti-HCV 50\'s, strips, INTEC', 'kit', '3600.00', '6545.00', 'Anti-HCV 50\'s, strips, INTEC', 'INTEC', '10.00', '4306.22', '0', '0', '0', '0', '0', '0', '', '', '', '0', '17', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A011', 'HIV 1/2 30\'s, cassette, SD', 'kit', '3024.00', '5333.00', 'HIV 1/2 3.0 30\'s, cassette, SD', 'SD', '10.00', '3929.82', '0', '0', '0', '0', '0', '0', '', '', '', '0', '18', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A012', 'HIV 1/2 100\'s, SD', 'kit', '7560.00', '12000.00', 'HIV 1/2 Multidevice 100\'s, cassette, SD', 'SD', '10.00', '8842.11', '30', '0', '0', '0', '0', '0', '', '', '', '0', '19', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A013', 'HIV 1/2 40\'s, cassette, INTEC', 'kit', '2880.00', '5236.00', 'HIV 1/2 40\'s, cassette, INTEC', 'INTEC', '10.00', '3444.98', '0', '0', '0', '0', '0', '0', '', '', '', '0', '20', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A014', 'HIV 1/2 50\'s, INTEC', 'kit', '3400.00', '6182.00', 'HIV 1/2 50\'s, INTEC', 'INTEC', '10.00', '4066.99', '0', '0', '0', '0', '0', '0', '', '', '', '0', '21', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A015', 'HAV IgM 25\'s, cassette, WONDFO', 'kit', '3850.00', '7000.00', 'HAV IgM Rapid Card 25\'s, WONDFO', 'WONDFO', '10.00', '4605.26', '1', '0', '0', '0', '0', '0', '', '', '', '0', '22', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A016', 'HAV IgM 30\'s, ARIA', 'kit', '3600.00', '7000.00', 'HAV IgM 30\'s, ARIA', 'ARIA', '10.00', '4306.22', '0', '0', '0', '0', '0', '0', '', '', '', '0', '23', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A017', 'HAV IgG/IgM, 25\'s, cassette, SD', 'kit', '5850.00', '9286.00', 'HAV IgG / IgM Rapid Card 25\'s, SD', 'SD', '10.00', '6842.11', '0', '2', '0', '0', '0', '0', '', '', '', '0', '24', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A018', 'Malaria Ag P.f/Pan, 30\'s, ARIA', 'kit', '3600.00', '6545.00', 'Malaria Ag P.f/Pan, 30\'s, cassette, ARIA', 'ARIA', '10.00', '4306.22', '0', '0', '0', '0', '0', '0', '', '', '', '0', '25', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A019', 'Malaria Ag P.f/P.v Test, 30\'s, ARIA', 'kit', '1500.00', '2727.00', 'Malaria Ag P.f/P.v Test 30\'s, cassette, ARIA', 'ARIA', '10.00', '1794.26', '0', '0', '0', '0', '0', '0', '', '', '', '0', '26', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A020', 'Malaria Pan Ab P.f/P.v Test 30\'s,  ARIA', 'kit', '1500.00', '2727.00', 'Malaria Pan Ab P.f/P.v Test 30\'s, cassette, ARIA', 'ARIA', '10.00', '1794.26', '0', '0', '0', '0', '0', '0', '', '', '', '0', '27', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A021', 'Malaria Ab P.f/P.v Test 30\'s, ARIA', 'kit', '2060.00', '3745.00', 'Malaria Ab P.f/P.v Test 30\'s, whole blood, cassette, ARIA', 'INTEC', '10.00', '2464.11', '0', '0', '0', '0', '0', '0', '', '', '', '0', '28', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A022', 'Malaria Ab P.f/P.v Test 30\'s, SD', 'kit', '5443.20', '9600.00', 'Malaria Ab P.f/P.v Test 30\'s, cassette, SD', 'SD', '10.00', '6366.32', '0', '0', '0', '0', '0', '0', '', '', '', '0', '29', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A023', 'Malaria Pan Ag P.f/P.v Test 25\'s, SD', 'kit', '3359.70', '5335.00', 'Malaria Pan Ag P.f/P.v Test 25\'s, cassette,SD', 'SD', '10.00', '3929.47', '0', '0', '0', '0', '0', '0', '', '', '', '0', '30', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A024', 'Anti-Syphilis 30\'s, SD', 'kit', '1915.20', '3040.00', 'Anti-Syphilis Rapid Card 30T, SD', 'SD', '10.00', '2240.00', '16', '-7', '3', '1', '1', '1', '', '', '', '0', '31', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A025', 'Anti-Syphilis 100\'s, SD', 'kit', '5670.00', '9000.00', 'Anti-Syphilis Multi Device 100\'s, SD', 'SD', '10.00', '6631.58', '0', '0', '0', '0', '0', '0', '', '', '', '0', '32', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A026', 'Anti-Syphilis 40\'s, INTEC', 'box', '1360.00', '2473.00', 'Anti-Syphilis Rapid Card 40\'s, INTEC', 'INTEC', '10.00', '1626.79', '0', '0', '0', '0', '0', '0', '', '', '', '0', '33', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A027', 'Anti-Syphilis 50\'s, strips, INTEC', 'kit', '1240.00', '2255.00', 'Anti-Syphilis 50\'s, strips, INTEC', 'INTEC', '10.00', '1240.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '34', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A028', 'Anti-H.pylori 30\'s, SD', 'kit', '4838.40', '7680.00', 'Anti-H.pylori Rapid Card 30T, SD', 'SD', '10.00', '5658.95', '10', '-7', '0', '2', '4', '8', '', '', '', '0', '35', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A029', 'H.Pylori Ag 20\'s, SD', 'kit', '4821.30', '7653.00', 'H.Pylori Ag Rapid Card 20\'s, stool, SD', 'SD', '10.00', '5638.95', '0', '0', '0', '0', '0', '0', '', '', '', '0', '36', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A030', 'Anti-H.pylori, ARIA', 'kit', '3000.00', '4870.00', 'H.Pylori Ab S/P/WB Test, Cassette, 30\'s, ARIA', 'ARIA', '10.00', '3588.52', '0', '0', '0', '0', '0', '0', '', '', '', '0', '37', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A031', 'H.pylori Ag 30T, cassette, ARIA', 'kit', '3600.00', '5844.00', 'H.pylori Ag Rapid Card 30T, ARIA', 'ARIA', '10.00', '4306.22', '0', '0', '0', '0', '0', '0', '', '', '', '0', '38', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A032', 'Dengue Duo 10\'s, SD', 'kit', '5895.00', '8188.00', 'Dengue Duo Ns1/IgG/IgM Rapid Card 10s, SD', 'SD', '10.00', '6894.74', '16', '-2', '2', '2', '5', '10', '', '', '', '0', '39', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A033', 'Dengue Duo 25\'s, WONDFO', 'kit', '7350.00', '13364.00', 'Dengue Combo NS1/IgG/IgM 25\'s, WONDFO', 'WONDFO', '10.00', '8791.87', '3', '0', '0', '0', '0', '0', '', '', '', '0', '40', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A034', 'Dengue Duo Test NS1,IgG,IgM, 30\'s, ARIA', 'kit', '11400.00', '18507.00', 'Dengue Duo Test NS1,IgG,IgM, 30\'s, Cassette, ARIA  ', 'ARIA', '10.00', '13636.36', '0', '0', '0', '0', '0', '0', '', '', '', '0', '41', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A035', 'Dengue NS1 10\'s, GENBODY', 'kit', '1974.00', '4000.00', 'Dengue NS1 10s, GENBODY', 'GENBODY', '10.00', '2308.77', '0', '0', '0', '0', '0', '0', '', '', '', '0', '42', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A036', 'Dengue NS1 30\'s, SD', 'kit', '0.00', '18000.00', 'Dengue NS1 Rapid Card 30\'s, SD', 'SD', '10.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '43', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A037', 'Dengue NS1 25\'s, WONDFO', 'kit', '4935.00', '9000.00', 'Dengue NS1 25\'s, WONDFO', 'WONDFO', '10.00', '5903.11', '2', '-2', '0', '0', '0', '0', '', '', '', '0', '44', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A038', 'Dengue NS1 Ag 30\'s, ARIA', 'kit', '6300.00', '10800.00', 'Dengue NS1 Ag Rapid Test 30\'s, ARIA', 'ARIA', '10.00', '7535.89', '0', '0', '0', '0', '0', '0', '', '', '', '0', '45', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A039', 'Dengue IgG/IgM 25\'s, WONDFO', 'kit', '4200.00', '7638.00', 'Dengue IgG/IgM Rapid Card 25\'s, WONDFO ', 'WONDFO', '10.00', '5023.92', '0', '0', '0', '0', '0', '0', '', '', '', '0', '46', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A040', 'Dengue IgG/IgM, 30\'s, Cassette, ARIA', 'kit', '6300.00', '10227.00', 'Dengue IgG/IgM, 30\'s, Cassette, ARIA  ', 'ARIA', '10.00', '7535.89', '0', '0', '0', '0', '0', '0', '', '', '', '0', '47', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A041', 'Dengue IgG/IgM, 10\'s, GENBODY', 'kit', '1680.00', '3055.00', 'Dengue IgG/IgM, Cassette, 10\'s, GENBODY  ', 'GENBODY', '10.00', '2009.57', '0', '0', '0', '0', '0', '0', '', '', '', '0', '48', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A042', 'TB Ab IgG/IgM test, 30\'s, ARIA', 'kit', '2160.00', '4500.00', 'TB Ab IgG/IgM test, Cassette (blood), 30\'s, ARIA   ', 'ARIA', '10.00', '2842.11', '0', '0', '0', '0', '0', '0', '', '', '', '0', '49', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A043', 'TB Ag MPT64, 25\'s, SD', 'kit', '7560.00', '15625.00', 'TB Ag MPT64, Cassette (cultured), 25\'s, SD ', 'SD', '10.00', '8842.11', '0', '0', '0', '0', '0', '0', '', '', '', '0', '50', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A044', 'Salmonella Rapid Card, DIALAB', 'kit', '5500.00', '8930.00', 'Salmonella Typhi IgG / IgM Rapid Card 25\'s, DIALAB', 'DIALAB', '10.00', '6578.95', '3', '-3', '0', '0', '0', '0', '', '', '', '0', '51', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A045', 'Salmonella typhoid Test IgG / IgM, 30\'s, ARIA', 'kit', '4500.00', '7305.00', 'Salmonella typhoid Test IgG / IgM, Cassette(S/P/WB), 30\'s, ARIA   ', 'ARIA', '10.00', '5382.78', '0', '0', '0', '0', '0', '0', '', '', '', '0', '52', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A046', 'Salmonella Rapid  Detection, TUBEX TF', 'kit', '10714.28', '18182.00', 'Rapid Typhoid Detection IgM 36\'s, TUBEX TF', 'TUBEX', '10.00', '14354.07', '6', '-2', '4', '0', '0', '0', '', '', '', '0', '53', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A047', 'Salmonella Antigen test kit (Widal Test), FORTRESS', 'kit', '2560.00', '6400.00', 'Salmonella Febrile Antigen Kit w/ controls, Widal Test, 100Tests, FORTRESS', 'FORTRESS DIAGNOSTICS', '10.00', '3368.42', '2', '-2', '0', '0', '0', '0', '', '', '', '0', '54', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A048', 'hCG 25\'s, urine, SD', 'box', '603.00', '1000.00', 'hCG Rapid Test Kit urine 25\'s, SD', 'SD', '10.00', '705.26', '4', '-1', '-1', '2', '538', '1', '', '', '', '0', '55', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A049', 'hCG 25\'s, urine/serum, SD', 'kit', '1134.00', '1800.00', 'hCG Rapid Test Kit urine/serum 25\'s, SD', 'SD', '10.00', '1326.32', '0', '0', '0', '0', '0', '0', '', '', '', '0', '56', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A050', 'hCG 25\'s, Urine/Serum, WONDFO', 'box', '675.00', '1350.00', 'hCG Rapid Card 25\'s, Urine/Serum, WONDFO', 'WONDFO', '10.00', '807.42', '25', '-12', '7', '0', '0', '0', '', '', '', '0', '57', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A051', 'hCG 50\'s, urine, Laboquick', 'box', '700.00', '1273.00', 'hCG Rapid Test Kit urine 50\'s, Laboquick', 'LABOQUICK', '10.00', '837.32', '15', '0', '0', '0', '0', '0', '', '', '', '0', '58', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A052', 'Troponin I 25\'s, SD', 'kit', '5140.00', '8160.00', 'Troponin I Rapid Card 25T, SD', 'SD', '10.00', '6011.70', '2', '0', '0', '2', '4', '8', '', '', '', '0', '59', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A053', 'Troponin I 25\'s, WONDFO', 'kit', '3750.00', '6820.00', 'Troponin I Rapid Card 25\'s, WONDFO', 'WONDFO', '10.00', '4485.65', '0', '0', '0', '0', '0', '0', '', '', '', '0', '60', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A054', 'Troponin I 40\'s, ARIA', 'kit', '6800.00', '11040.00', 'Troponin I 40\'s, ARIA ', 'ARIA', '10.00', '8133.97', '0', '0', '0', '0', '0', '0', '', '', '', '0', '61', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A055', 'FOB 40\'s, WONDFO', 'box', '3325.00', '6080.00', 'FOB Rapid Card 40\'s, WONDFO', 'WONDFO', '10.00', '3977.27', '2', '-2', '0', '0', '0', '0', '', '', '', '0', '62', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A056', 'FOB 25\'s, ARIA', 'kit', '1700.00', '3800.00', 'Fecal Occult Blood Rapid Card 25\'s, ARIA ', 'ARIA', '10.00', '2033.49', '0', '0', '0', '0', '0', '0', '', '', '', '0', '63', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A060', 'Drug Testing kits, Panel type , WONDFO', 'kit', '575.00', '913.00', 'Drug Testing kits MET-THC Panel type, 25\'s, urine, WONDFO', 'WONDFO', '10.00', '672.51', '10', '0', '0', '10', '575', '5', '', '', '', '0', '64', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A061', 'Drug Testing kits, Tri-line, WONDFO', 'kit', '710.00', '1127.00', 'Drug Testing kits MET-THC Tri-line, 25\'s, urine, WONDFO', 'WONDFO', '10.00', '830.41', '80', '-16', '44', '20', '625', '12', '', '', '', '0', '65', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A062', 'Drug Testing Kits, MET/THC, Tri-line Type, urine, INTEC', 'kit', '555.00', '881.00', 'Drug Testing Kits, MET/THC, Tri-line Type, urine, 20\'s, INTEC  ', 'INTEC', '10.00', '649.12', '0', '0', '0', '0', '0', '0', '', '', '', '0', '66', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A063', 'Drug Testing Kit, 25\'s, SD', 'kit', '875.00', '1390.00', 'Drug Testing Kit MET-THC, triline cassette type 25T, SD', 'SD', '10.00', '1023.39', '60', '0', '0', '0', '0', '0', '', '', '', '0', '67', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A064', 'Drug Specimen Bottle', 'pack', '118.75', '216.00', 'Drug Specimen Bottle 60ml, 25\'s', '', '10.00', '142.05', '0', '34', '4', '30', '119', '3', '', '', '', '0', '68', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19A075', 'Dengue Combo, GENBODY', 'kit', '2940.00', '5346.00', 'Dengue Combo NS1/IgG/IgM Rapid Card 10\'s, GENBODY', 'GENBODY', '10.00', '3516.75', '5', '-5', '0', '0', '0', '0', '', '', '', '0', '69', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19B076', 'Glucose Strips, CONTOUR Plus, 2x25\'s, ASCENSIA', 'box', '800.00', '1562.00', 'Glucose Strips 2x25\'s, CONTOUR Plus, ASCENSIA ', 'ASCENSIA', '20.00', '956.94', '806', '-240', '34', '99', '711', '70', '', '', '', '0', '70', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19B077', 'Contour Plus Test Strips, 25\'s, ASCENSIA', 'box', '400.00', '781.00', 'Contour Plus Test Strips, 25\'s, ASCENSIA   ', 'ASCENSIA', '20.00', '478.47', '204', '-2', '-7', '102', '0', '0', '', '', '', '0', '71', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19B079', 'Blood Glucose Monitoring System,  CONTOUR Plus, ASCENSIA', 'kit', '0.00', '0.00', 'Blood Glucose Monitoring System, CONTOUR Plus, ASCENSIA ', 'ASCENSIA', '0.00', '0.00', '0', '68', '1', '16', '0', '0', '', '', '', '0', '72', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19B081', 'Contour TS Blood Glucose Strips 50\'s, ASCENSIA', 'box', '724.64', '1432.00', 'Contour TS Blood Glucose Strips 1x50\'s, ASCENSIA', '', '20.00', '0.00', '300', '-123', '-2', '276', '0', '0', '', '', '', '0', '73', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19C081', 'Urine Strips 4 Parameters, INSIGHT', 'bottle', '270.00', '550.00', 'Urine Strips 4 Parameters 100\'s, INSIGHT', 'INSIGHT', '10.00', '322.97', '260', '39', '11', '53', '208', '11', '', '', '', '0', '74', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19C082', 'Urine Strips 10 Parameters, INSIGHT', 'bottle', '650.00', '1182.00', 'Urine Strips, 10 Parameters, INSIGHT', 'INSIGHT', '10.00', '777.51', '12', '-65', '0', '18', '588', '10', '', '', '', '0', '75', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19C083', 'Urine Strips 4 Parameters, COMBISTIX, SIEMENS', 'bottle', '950.00', '1508.00', 'Urine Strips 4 Parameters 100\'s, COMBISTIX, SIEMENS', 'COMBISTIX', '10.00', '1111.11', '156', '-6', '13', '28', '848', '23', '', '', '', '0', '76', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19C084', 'Urine Strips 10 Parameters, MULTISTIX, SIEMENS', 'bottle', '1360.00', '2160.00', 'Urine Strips 10 Parameters 100\'s, MULTISTIX, SIEMENS', 'SIEMENS', '10.00', '1590.64', '15', '0', '0', '3', '1', '3', '', '', '', '0', '77', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19C085', 'Microalbumenuria / Micral Test, 30\'s, ROCHE', 'bottle', '3000.00', '5714.00', 'Microalbumenuria / Micral Test, 30\'s, ROCHE   ', 'ROCHE', '5.00', '4210.53', '0', '0', '-2', '0', '0', '0', '', '', '', '0', '78', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19C086', 'Creatinine and Microalbumine Strips, INSIGHT', 'bottle', '2450.00', '4455.00', 'Creatinine and Mircoalbumine Test, 25 strips, INSIGHT', 'INSIGHT', '10.00', '2930.62', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '79', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19D087', 'ASO Latex Kit, Plasmatec', 'kit', '3300.00', '6000.00', 'ASO Latex Kit, 100\'s, Plasmatec', 'Plasmatec', '10.00', '3947.37', '1', '0', '0', '0', '0', '0', '', '', '', '0', '80', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19D091', 'RF Latex 50T, RHELAX -TULIP', 'kit', '0.00', '4000.00', 'RF Latex 50T, RHELAX -TULIP', 'TULIP', '5.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '81', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('1.90E+93', 'Thromboplastin, DIALAB', 'kit', '6200.00', '10065.00', 'Thromboplastin 10x5mL, DIALAB', 'DIALAB', '5.00', '7416.27', '0', '0', '0', '0', '0', '0', '', '', '', '0', '82', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('1.90E+94', 'APTT EA liquid, DIALAB', 'kit', '3700.00', '6010.00', 'APTT EA liquid 5x8mL, DIALAB', 'DIALAB', '5.00', '4425.84', '0', '0', '0', '0', '0', '0', '', '', '', '0', '83', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('1.90E+95', 'Calcium Chloride, DIALAB', 'kit', '2250.00', '4167.00', 'Calcium Chloride 5x10mL, DIALAB', 'DIALAB', '5.00', '2691.39', '0', '-5', '0', '0', '0', '0', '', '', '', '0', '84', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19F095', 'Typing Sera Anti-A, TRUSERA', 'vial', '245.00', '446.00', 'Anti-A Monoclonal Blood Grouping Reagents 10mL, TRUSERA', 'TRUSERA', '10.00', '293.06', '20', '-5', '7', '7', '245', '1', '', '', '', '0', '85', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19F096', 'Typing Sera Anti-B, TRUSERA', 'vial', '245.00', '446.00', 'Anti-B Monoclonal Blood Grouping Reagents, TRUSERA', 'TRUSERA', '10.00', '293.06', '20', '-6', '7', '7', '245', '1', '', '', '', '0', '86', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19F097', 'Anti-D/Rh, TRUSERA', 'vial', '490.00', '860.00', 'Anti-D / Rh (IgG/IgM) monoclonal Blood Grouping Reagents 10mL, TRUSERA', 'TRUSERA', '10.00', '586.12', '20', '2', '6', '6', '490', '2', '', '', '', '0', '87', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19F098', 'Bovine Serum Albumin/BSA, 10ml, TRUSERA', 'vial', '630.00', '1146.00', 'Bovine Serum Albumin/BSA 22%, 10ml, TRUSERA', 'TRUSERA', '10.00', '753.59', '1', '-3', '2', '0', '0', '0', '', '', '', '0', '88', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19F099', 'AHG/Anti-Human Globulin, TRUSERA', 'vial', '630.00', '1146.00', 'AHG/Anti-Human Globulin 10mL, TRUSERA', 'TRUSERA', '10.00', '753.59', '11', '-3', '2', '0', '0', '0', '', '', '', '0', '89', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19F100', 'LISS 10mL, TRUSERA', 'vial', '700.00', '1273.00', 'LISS (Low Ionic Strenght Solution)  10mL, TRUSERA', 'TRUSERA', '10.00', '837.32', '8', '3', '0', '0', '0', '0', '', '', '', '0', '90', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19F101', 'Typing Sera Anti-A, ERYCLONE', 'vial', '180.00', '375.00', 'Anti-A monoclonal Blood Grouping Reagent 10ml, ERYCLONE -TULIP', 'TULIP', '10.00', '215.31', '0', '3', '0', '0', '0', '0', '', '', '', '0', '91', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19F102', 'Typing Sera Anti-B, ERYCLONE', 'vial', '180.00', '375.00', 'Anti-B monoclonal Blood Grouping Reagent 10ml, ERYCLONE -TULIP', 'TULIP', '10.00', '215.31', '0', '3', '0', '0', '0', '0', '', '', '', '0', '92', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19F103', 'Anti-D/Rh, RHOFINAL', 'vial', '400.00', '800.00', 'Anti-D IgG + IgM / Rh monoclonal Blood Grouping Reagent 10ml, RHOFINAL -TULIP', 'TULIP', '10.00', '478.47', '0', '0', '0', '0', '0', '0', '', '', '', '0', '93', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19F104', 'AHG/Anti-Human Globulin, ERYCLONE', 'vial', '500.00', '1050.00', 'AHG/Anti-Human Globulin 10mL, ERYCLONE', 'TULIP', '10.00', '598.09', '0', '0', '0', '0', '0', '0', '', '', '', '0', '94', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19F105', 'LISS 5mL, TULISS', 'vial', '400.00', '800.00', 'LISS / Low Ionic Strength Solution 5mL, TULISS -TULIP', 'TULIP', '10.00', '478.47', '0', '0', '0', '0', '0', '0', '', '', '', '0', '95', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G106', 'Glass Slides, Plain, BRUNER', 'box', '47.00', '102.00', 'Glass Slides Plain 72s, BRUNER', 'BRUNER', '10.00', '66.99', '50', '-129', '0', '50', '42', '2', '', '', '', '0', '96', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G106', 'Glass Slides, Plain, TRULAB', 'box', '56.00', '102.00', 'Glass Slides Plain 90° 72s, TRULAB', 'TRULAB ', '10.00', '66.99', '250', '0', '0', '1', '56', '56', '', '', '', '0', '97', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G107', 'Glass Slides, Frosted, TRULAB', 'box', '52.00', '121.00', 'Glass Slides Frosted 90° 72s, TRULAB', 'TRULAB ', '10.00', '79.55', '50', '-30', '0', '35', '52', '1', '', '', '', '0', '98', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G108', 'Yellow Tips, Eppendorf', 'pack', '279.00', '650.00', 'Yellow Tips 200uL 1000\'s Eppendorf', 'BRUNER/TRULAB', '10.00', '334.93', '70', '0', '2', '24', '279', '6', '', '', '', '0', '99', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G108', 'Yellow Tips, Gilson', 'pack', '279.00', '650.00', 'Yellow Tips 200uL 1000\'s, Gilson', 'BRUNER/TRULAB', '10.00', '334.93', '0', '-12', '0', '0', '0', '0', '', '', '', '0', '100', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G109', 'Blue Tips, Eppendorf', 'pack', '285.00', '650.00', 'Blue Tips 1000uL 500s Eppendorf', 'BRUNER/TRULAB', '10.00', '340.91', '35', '0', '4', '16', '285', '4', '', '', '', '0', '101', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G109', 'Blue Tips, Gilson', 'pack', '285.00', '650.00', 'Blue Tips 1000uL 500s Gilson', 'BRUNER/TRULAB', '10.00', '340.91', '0', '-35', '0', '0', '0', '0', '', '', '', '0', '102', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G110', 'EDTA 2ml, Glass, BRUNER', 'tray', '380.00', '650.00', 'EDTA K2 2ml 13x75mm Vacuum Tubes 100\'s, Glass, BRUNER', 'BRUNER', '10.00', '478.47', '143', '0', '0', '30', '305', '9', '', '', '', '0', '103', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G110', 'EDTA 2ml, Plastic, BRUNER', 'tray', '400.00', '650.00', 'EDTA K2 2ml 12x75mm Vacuum Tubes, 100\'s Plastic, BRUNER', 'BRUNER', '10.00', '478.47', '0', '-223', '0', '0', '0', '0', '', '', '', '0', '104', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G110', 'EDTA 2ml, RTK', 'tray', '320.00', '650.00', 'EDTA K2 2ml 12x75mm Vacuum Tubes,100\'s, Glass, RTK', 'RTK', '10.00', '478.47', '304', '1', '-5', '19', '286', '5', '', '', '', '0', '105', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G111', 'Plain / Red Top 4mL, Glass, BRUNER', 'tray', '380.00', '650.00', 'Red Top Plain Vacuum Tubes 13x75mm 4mL 100s, Glass, BRUNER', 'BRUNER', '10.00', '478.47', '36', '48', '0', '37', '340', '12', '', '', '', '0', '106', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G111', 'Plain / Red Top 4mL, Glass, RTK', 'tray', '320.00', '650.00', 'Plain / Red Top Tubes 12x75mm 4mL 100s, Glass, RTK', 'RTK', '10.00', '478.47', '0', '-72', '11', '37', '320', '11', '', '', '', '0', '107', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G111', 'Red Top / Plain 5mL, BRANDEN', 'tray', '270.00', '650.00', 'Red Top / Plain Tubes 5mL 100\'s 12x75mm, Glass, BRANDEN', 'BRANDEN', '10.00', '478.47', '180', '5', '2', '45', '241', '10', '', '', '', '0', '108', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G112', 'Blue Top Tube, Glass, BRUNER', 'tray', '420.00', '850.00', 'Blue Top Tube NaCitrate 1.8ml,100\'s, Glass, BRUNER', 'BRUNER', '10.00', '622.01', '10', '2', '-6', '10', '491', '4', '', '', '', '0', '109', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G112', 'Blue Top Tube, Plastic, BRUNER ', 'tray', '520.00', '850.00', 'Blue Top Tube NaCitrate 1.8ml,100\'s, Plastic, BRUNER', 'BRUNER', '10.00', '622.01', '0', '0', '0', '0', '0', '0', '', '', '', '0', '110', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G113', 'Yellow Top 4mL, Glass, BRUNER', 'tray', '605.00', '1050.00', 'Yellow Top Vacuum Tubes w/ Gel Clot Activator 4mL 100\'s, 13x75mm Glass, BRUNER', 'BRUNER', '10.00', '723.68', '48', '0', '0', '24', '540', '12', '', '', '', '0', '111', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G114', 'Yellow Top 4mL, Plastic, BRUNER', 'tray', '690.00', '1218.00', 'Yellow Top Vacuum Tubes w/ Gel Clot Activator 4mL 100\'s, 13x75mm Plastic, BRUNER', 'BRUNER', '10.00', '897.13', '0', '-12', '0', '0', '0', '0', '', '', '', '0', '112', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G114', 'Yellow Top 4mL, Plastic, RTK', 'tray', '750.00', '1218.00', 'Yellow Top Vacuum Tubes w/ Gel Clot Activator 4mL 100\'s, 12x75mm Plastic, RTK', 'RTK', '10.00', '897.13', '24', '0', '0', '12', '670', '8', '', '', '', '0', '113', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G115', 'EDTA k3 5ml 13x75mm, 100\'s, TRULAB', 'tray', '0.00', '727.00', 'EDTA k3 5ml Vacuum Tubes,13x75mm Glass, 100\'s, TRULAB', 'TRULAB ', '10.00', '478.47', '0', '0', '0', '0', '0', '0', '', '', '', '0', '114', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G116', 'Green Top 4mL, Glass, Branden', 'tray', '462.00', '850.00', 'Green Top Tubes 4mL 100\'s, Glass, Branden', 'BRANDEN', '10.00', '552.63', '5', '8', '0', '0', '0', '0', '', '', '', '0', '115', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G118', 'EDTA 0.5mL, AQUISEL', 'tray', '950.00', '1508.00', 'EDTA K3 0.5mL 100s, AQUISEL', 'AQUISEL', '10.00', '1111.11', '50', '-40', '0', '8', '848', '6', '', '', '', '0', '116', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G119', 'EDTA 0.5ml, RTK', 'tray', '550.00', '1050.00', 'EDTA K2 0.5ml 100s, RTK', 'RTK', '10.00', '753.59', '40', '2', '0', '0', '0', '0', '', '', '', '0', '117', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G119', 'EDTA 0.5mL,w/o capillet,  BRUNER', 'tray', '630.00', '1050.00', 'EDTA K2 0.5mL w/o capillet 100s, BRUNER', 'BRUNER', '10.00', '753.59', '80', '0', '2', '48', '563', '27', '', '', '', '0', '118', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G119', 'EDTA K2 0.5ml 50s, TRULAB', 'tray', '335.00', '525.00', 'EDTA K2 0.5ml 50s, TRULAB', 'TRULAB ', '10.00', '377.00', '0', '3', '0', '0', '0', '0', '', '', '', '0', '119', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G121', 'Plain / Red Top 0.5ml, BRUNER', 'tray', '580.00', '1050.00', 'Plain / Red Top Microtainer  0.5ml 100\'s, BRUNER', 'BRUNER', '10.00', '693.78', '30', '-58', '3', '25', '518', '12', '', '', '', '0', '120', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G123', 'Blood Lancets 21G, MEDISHARP', 'box', '130.00', '350.00', 'Blood Lancets 21G 200\'s, MEDISHARP', 'MEDISHARP', '10.00', '155.50', '80', '0', '11', '1', '116', '116', '', '', '', '0', '121', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G124', 'Multi-sample Needle 21G x 1 1/2\", IMPROVE', 'box', '600.00', '974.00', 'Multi-sample Needle 21G x 1 1/2\" (0.8x38mm), IMPROVE   ', 'IMPROVE', '10.00', '717.70', '0', '0', '0', '0', '0', '0', '', '', '', '0', '122', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G125', 'Multi-sample Needle 22G x 1 1/2\", IMPROVE', 'box', '600.00', '974.00', 'Multi-sample Needle 22G x 1 1/2\" (0.7x38mm), IMPROVE  ', 'IMPROVE', '10.00', '717.70', '0', '0', '0', '0', '0', '0', '', '', '', '0', '123', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G126', 'Multi-sample Needle 23G x 1 1/2\", IMPROVE', 'box', '600.00', '974.00', 'Multi-sample Needle 23G x 1 1/2\", IMPROVE  ', 'IMPROVE', '10.00', '717.70', '0', '-22', '0', '0', '0', '0', '', '', '', '0', '124', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G127', 'Blood Lancets, Maxflow, PROLANCE', 'box', '2200.00', '3425.00', 'Safety Lancets 200\'s, Maxflow, Purple, PROLANCE', 'PROLANCE', '5.00', '2573.10', '55', '41', '2', '0', '0', '0', '', '', '', '0', '125', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G128', 'Capillary tubes, Red tip, BRUNER', 'vial', '80.00', '135.00', 'Heparinized Capillary tubes, Red tip, 100\'s, BRUNER', 'BRUNER', '10.00', '95.69', '0', '0', '0', '41', '80', '3', '', '', '', '0', '126', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G130', 'Capillary Tubes, Blue Tips, BRUNER', 'vial', '80.00', '150.00', 'Capillary Tubes - Non-Heparinized - Blue Tips, BRUNER  ', 'BRUNER', '10.00', '95.69', '0', '0', '0', '0', '0', '0', '', '', '', '0', '127', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G132', 'Capillary Tubes Green Tips 100s, Hirschmann', 'vial', '180.00', '350.00', 'NH4 Heparinized Capillary Tubes Green Tips 100s, Hirschmann', 'Hirschmann', '10.00', '215.31', '0', '0', '0', '0', '0', '0', '', '', '', '0', '128', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G133', 'Sealing Wax/Clay, Vitrex', 'each', '147.00', '267.00', 'Sealing Wax/Clay, Vitrex', 'VITREX', '10.00', '175.84', '4', '-2', '0', '4', '147', '588', '', '', '', '0', '129', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G134', 'Cover Glass / Slip 22x22mm, TRULAB', 'pack', '116.00', '300.00', 'Cover Glass / Slip 22x22mm 200\'s, TRULAB', 'TRULAB ', '10.00', '138.76', '20', '1', '1', '17', '116', '1', '', '', '', '0', '130', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G135', 'Cover Glass / slip  24x24mm, TRULAB', 'pack', '137.00', '350.00', 'Cover Glass / slip 24x24mm 100s, TRULAB', 'TRULAB ', '10.00', '163.88', '0', '30', '0', '1', '137', '137', '', '', '', '0', '131', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G136', 'Cover Glass / Slip 24 x 40mm, CITOGLAS', 'pack', '137.00', '350.00', 'Cover Glass / Slip 24 x 40mm 100s, CITOGLAS', 'CITOGLAS', '10.00', '163.88', '0', '-30', '0', '10', '100', '1', '', '', '', '0', '132', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G137', 'Cover Glass / Slip 24 x 56mm, TRULAB', 'pack', '179.00', '350.00', 'Cover Glass / Slip 24 x 56mm 100s, TRULAB', 'TRULAB ', '10.00', '214.11', '50', '-14', '0', '9', '179', '1', '', '', '', '0', '133', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G138', 'Cover Glass / Slip 24 x 60mm, TRULAB', 'pack', '189.00', '350.00', 'Cover Glass / Slip 24 x 60mm 100s, TRULAB', 'TRULAB ', '10.00', '226.08', '40', '-1', '0', '20', '189', '3', '', '', '', '0', '134', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G139', 'Test Tubes 5mL, Glass', 'box', '625.00', '1125.00', 'Test Tube, Glass, 12x75mm, 5ml, 250\'s', '', '10.00', '747.61', '5', '-1', '1', '3', '625', '1', '', '', '', '0', '135', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G140', 'Test Tubes 10ml, Glass', 'box', '1250.00', '2272.00', 'Test Tube, Glass, 16x100mm, 10ml, 250\'s', '', '10.00', '1495.22', '3', '0', '0', '0', '0', '0', '', '', '', '0', '136', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G141', 'Polysterene (PS) Test Tubes, 5mL 500\'s', 'pack', '875.00', '1820.00', 'Test Tube 5mL, Polysterene (PS), 12x75mm 500\'s', '', '10.00', '1196.17', '0', '-21', '0', '0', '0', '0', '', '', '', '0', '137', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G141-250', 'Polysterene (PS) Test Tubes, 5mL 250\'s', 'pack', '625.00', '910.00', 'Polysterene (PS) Test Tubes 12x75mm, 5mL 250\'s  ', '', '10.00', '598.09', '40', '1', '0', '9', '438', '3', '', '', '', '0', '138', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G142', 'Polystyrene (PS) Tubes 10mL, 150\'s', 'pack', '562.50', '1025.00', 'Polysterene (PS) Test Tubes 16x100mm, 10mL, 100\'s ', '', '10.00', '672.85', '0', '3', '0', '1', '375', '375', '', '', '', '0', '139', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G143', 'Syringe 3cc, TERUMO', 'box', '412.50', '670.00', 'Disposable Syringe 3cc with needle 23G x 1\" 100\'s, sterile, TERUMO', 'TERUMO', '10.00', '493.42', '38', '0', '0', '13', '368', '4', '', '', '', '0', '140', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G144', 'Disposable Syringe 5cc, TERUMO', 'box', '475.00', '800.00', 'Disposable Syringe 5CC with needle 23G x 1\'\', 100\'s, sterile, TERUMO', 'TERUMO', '10.00', '568.18', '15', '0', '0', '5', '424', '2', '', '', '', '0', '141', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G145', 'Aluminum Sealing Clips, TERUMO', 'box', '0.00', '4500.00', 'Aluminum Sealing Clips, 1000\'s, TERUMO ', 'TERUMO', '0.00', '0.00', '0', '-17', '0', '0', '0', '0', '', '', '', '0', '142', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G146', 'ECG Paper, 50mmx30m, 5rolls, FUJIKAWA', 'box', '225.00', '375.00', 'ECG Paper 50mm x 30m, 1x5rolls, FUJIKAWA', 'FUJIKAWA', '10.00', '269.14', '39', '58', '1', '11', '201', '2', '', '', '', '0', '143', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G147', 'OGTT Beverage Drink 100G, GLUCOPLUS', 'bottle', '95.00', '183.00', 'OGTT Beverage Drink 100G 200mL Orange, GLUCOPLUS', 'GLUCOPLUS', '10.00', '113.64', '0', '-35', '0', '28', '95', '2', '', '', '', '0', '144', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G147', 'OGTT Beverage Drink 50G, GLUCOPLUS', 'bottle', '95.00', '183.00', 'OGTT Beverage Drink 50G 200mL Orange, GLUCOPLUS', 'GLUCO PLUS', '10.00', '113.64', '110', '-39', '0', '0', '0', '0', '', '', '', '0', '145', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G147', 'OGTT Beverage Drink 75G, GLUCOPLUS', 'bottle', '95.00', '183.00', 'OGTT Beverage Drink 75G 200mL Orange, GLUCOPLUS', 'GLUCOPLUS', '10.00', '113.64', '180', '-12', '-12', '0', '0', '0', '', '', '', '0', '146', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G148', 'Applicator Sticks 1000\'s', 'box', '140.00', '255.00', 'Applicator Sticks 1000\'s', 'TRULAB', '10.00', '167.46', '40', '-1000', '5', '11', '140', '1', '', '', '', '0', '147', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G149', 'Urine Container, BRUNER', 'piece', '6.50', '11.00', 'Urine Container 60ml, sterile, BRUNER', 'BRUNER', '10.00', '7.18', '0', '0', '-1', '0', '0', '0', '', '', '', '0', '148', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G149', 'Urine Container, RTK', 'piece', '5.00', '11.00', 'Urine Container 60mL, sterile, RTK', 'RTK', '10.00', '7.18', '0', '1712', '0', '0', '0', '0', '', '', '', '0', '149', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G149', 'Urine Container, TRULAB', 'piece', '5.80', '11.00', 'Urine Container 60mL sterile, TRULAB', 'TRULAB ', '10.00', '7.18', '1', '50', '1', '312', '6', '1', '', '', '', '0', '150', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G150', 'Stool container, BRUNER', 'piece', '6.00', '11.00', 'Stool container w/ spoon 60ml, Sterile, BRUNER', 'BRUNER', '10.00', '7.18', '0', '600', '0', '50', '6', '300', '', '', '', '0', '151', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G150', 'Stool Container, TRULAB', 'piece', '6.00', '11.00', 'Stool Container 60mL sterile, TRULAB', 'TRULAB ', '10.00', '7.18', '0', '-1', '0', '100', '6', '600', '', '', '', '0', '152', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G151', 'Sputum Container 10\'s', 'pack', '37.50', '75.00', 'Sputum Container, Screw Cap, Non Sterile, 20ml, 10\'s', '', '10.00', '47.85', '20', '0', '0', '19', '40', '760', '', '', '', '0', '153', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G152', 'Sputum Container, 20mL, 10\'s, sterile', 'pack', '45.00', '82.00', 'Sputum Container, 20mL, 10\'s, sterile ', '', '10.00', '53.83', '0', '0', '0', '0', '0', '0', '', '', '', '0', '154', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G153', 'Sputum Container, Flip Top, 20mL', 'pack', '35.00', '64.00', 'Sputum Container, Flip Top, 10\'s, 20mL ', '', '10.00', '41.87', '0', '0', '0', '0', '0', '0', '', '', '', '0', '155', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G154', 'Blood Lancets 21G, 200\'s, MCLANCE', 'box', '140.00', '350.00', 'Blood Lancets 21G, 200\'s, twist type sterile, MCLANCE', 'MCLANCE', '10.00', '218.75', '38', '0', '0', '9', '125', '1', '', '', '', '0', '156', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19G155', 'Blue Top Tubes, Glass, TRULAB', 'tray', '430.00', '860.00', 'Blue Top Tubes 3.2% Na Citrate 1.8ml 100s Glass, TRULAB', 'TRULAB', '10.00', '672.00', '10', '0', '6', '4', '430', '1', '', '', '', '0', '157', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H154', 'Hema/CBC Stain, HEMACOLOR, MERCK', 'set', '10400.00', '16180.00', 'Diff.Stain 3x500mL, HEMACOLOR, MERK', 'MERCK', '5.00', '12163.74', '0', '-4', '0', '0', '0', '0', '', '', '', '0', '158', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H155', 'PAP Smear Stain, CYTOCOLOR, MERCK', 'set', '14800.00', '23022.00', 'PAP Smear Stain 6X500ml, CYTOCOLOR, MERCK', 'MERCK', '5.00', '17309.94', '0', '0', '0', '0', '0', '0', '', '', '', '0', '159', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H156', 'Differential Stain 3x500mL, Crescent', 'set', '2200.00', '5500.00', 'Rapistain Differential Stain 3x500mL, Crescent', 'CRESCENT', '10.00', '2631.58', '0', '-2', '0', '0', '0', '0', '', '', '', '0', '160', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H157', 'Diff Quik Cell Stain 3x500mL, BASO', 'set', '3850.00', '5990.00', 'Diff Quik Cell Stain 3x500mL, BASO', 'BASO', '5.00', '4502.92', '7', '0', '0', '0', '0', '0', '', '', '', '0', '161', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H158', 'Hema Stain, MEDIC', 'set', '3560.00', '5780.00', 'Hema-Quick Stain, MEDIC', 'MEDIC', '5.00', '4258.37', '0', '0', '0', '0', '0', '0', '', '', '', '0', '162', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H159', 'Giemsa Stain Set, MEDIC', 'set', '1744.00', '3278.00', 'Giemsa Stain Set, 2x500mL, MEDIC', 'MEDIC', '5.00', '2086.12', '2', '0', '0', '0', '0', '0', '', '', '', '0', '163', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H161', 'Wright Stain 1x500mL, CRESCENT', 'set', '1300.00', '2758.00', 'Wright Stain 1x500mL, CRESCENT    ', 'CRESCENT', '10.00', '1555.02', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '164', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H162', 'Wright Stain 2x500mL, MEDIC', 'set', '1744.00', '3278.00', 'Wright Stain 2x500mL, MEDIC   ', 'MEDIC', '5.00', '2086.12', '1', '0', '0', '0', '0', '0', '', '', '', '0', '165', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H163', 'AFB / TB Stain, Cold, BASO', 'set', '2800.00', '5091.00', 'AFB / TB Stain (Kinyoun), 4x250ml, Cold Method, BASO', 'BASO', '5.00', '3349.28', '0', '0', '0', '0', '0', '0', '', '', '', '0', '166', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H164', 'AFB / TB Stain, Cold, MEDIC', 'set', '1744.00', '3700.00', 'AFB Stain set 3x500mL, Cold method, MEDIC', 'MEDIC', '5.00', '2086.12', '1', '0', '0', '0', '0', '0', '', '', '', '0', '167', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H165', 'AFB / TB Stain, Hot, BASO', 'set', '2800.00', '5091.00', 'AFB / TB Stain (Zeihl-Neelsen), 4x250ml, Hot Method, BASO', 'BASO', '5.00', '3349.28', '0', '0', '0', '0', '0', '0', '', '', '', '0', '168', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H166', 'Gram Stain, MEDIC', 'set', '1744.00', '3278.00', 'Gram Stain Set 4x500mL, 200tests, MEDIC', 'MEDIC', '5.00', '2086.12', '1', '0', '1', '0', '0', '0', '', '', '', '0', '169', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H167', 'Gram Stain 4x250mL, Crescent', 'set', '1100.00', '2500.00', 'Gram Stain 4x250mL, Crescent', 'CRESCENT', '10.00', '1315.79', '0', '0', '0', '0', '0', '0', '', '', '', '0', '170', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H168', 'Gram Stain 4x250mL, BASO', 'set', '3000.00', '5455.00', 'Gram Stain 4x250mL, BASO', 'BASO', '5.00', '3588.52', '0', '1', '0', '0', '0', '0', '', '', '', '0', '171', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H169', 'Papanicolau (PAP\'s) stain kit, 3x250mL, BASO', 'set', '3500.00', '10500.00', 'Papanicolau (PAP\'s) stain kit, 3x250mL, BASO   ', 'BASO', '5.00', '4186.60', '0', '0', '0', '0', '0', '0', '', '', '', '0', '172', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19H170', 'Papanicolau (PAP\'s) stain kit 10x500mL, MEDIC', 'set', '4980.00', '8084.00', 'Papanicolau (PAP\'s) stain kit 10x500mL, MEDIC  ', 'MEDIC', '10.00', '5956.94', '0', '-4', '0', '0', '0', '0', '', '', '', '0', '173', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I171', 'Paraffin Wax, 1Kg, HISTOPLAST', 'bag', '420.00', '950.00', 'Paraffin Wax, 1Kg, HISTOPLAST', 'HISTOPLAST', '10.00', '502.39', '0', '0', '0', '1', '420', '420', '', '', '', '0', '174', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I172', 'Microtome Blade, R35, FEATHER', 'box', '5800.00', '9025.00', 'Microtome Blade R35 50s, FEATHER', 'FEATHER', '5.00', '6937.80', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '175', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I172', 'Microtome Blade, S35, FEATHER', 'box', '5800.00', '9025.00', 'Microtome Blade S35 50s, FEATHER', 'FEATHER', '5.00', '6937.80', '8', '0', '0', '0', '0', '0', '', '', '', '0', '176', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I173', 'Mounting Media 500ml, EUKITT', 'bottle', '3900.00', '8500.00', 'Mounting Media 500ml, EUKITT', 'EUKITT', '10.00', '6250.00', '3', '2', '0', '0', '0', '0', '', '', '', '0', '177', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I174', 'Immersion Oil 500ml, SCHARLAU', 'bottle', '3950.00', '8500.00', 'Immersion Oil 500ml, SCHARLAU', 'SCHARLAU', '10.00', '5197.37', '2', '0', '0', '1', '3', '3', '', '', '', '0', '178', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I175', 'Immersion Oil 30mL, BASO', 'bottle', '980.00', '1782.00', 'Immersion Oil 30mL, BASO', 'BASO', '0.00', '1172.25', '0', '0', '0', '0', '0', '0', '', '', '', '0', '179', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I176', 'Potassium Di-Hydrogen Phosphate 500G, SCHARLAU', 'bottle', '800.00', '4380.00', 'Potassium Di-Hydrogen Phosphate 500grams, SCHARLAU', 'SCHARLAU', '10.00', '1052.63', '0', '0', '0', '1', '800', '800', '', '', '', '0', '180', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I177', 'Di-Potassium Hydrogen Phosphate 500grams, SCHARLAU', 'bottle', '995.00', '4380.00', 'Di Potassium Hydrogen Phosphate 500grams, SCHARLAU', 'SCHARLAU', '10.00', '1309.21', '1', '2', '0', '0', '0', '0', '', '', '', '0', '181', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I178', 'Potassium Aluminum Sulphate 500G, SCHARLAU', 'bottle', '750.00', '3800.00', 'Potassium Aluminum Sulphate 500G, SCHARLAU', 'SCHARLAU', '10.00', '986.84', '1', '-1', '0', '0', '0', '0', '', '', '', '0', '182', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I179', 'Hematoxylin 25G, SCHARLAU', 'bottle', '4135.00', '8270.00', 'Hematoxylin 25G, powder form, SCHARLAU', 'SCHARLAU', '5.00', '5440.79', '0', '2', '0', '0', '0', '0', '', '', '', '0', '183', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I180', 'Embedding Ring 500\'s', 'box', '1400.00', '2546.00', 'Embedding Ring 500\'s', '', '10.00', '1674.64', '0', '-2', '0', '2', '1', '2', '', '', '', '0', '184', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I181', 'Embedding / Tissue Cassette 500\'s', 'box', '1650.00', '3000.00', 'Embedding / Tissue Cassette with Lid 500\'s', '', '10.00', '1973.68', '4', '0', '0', '0', '0', '0', '', '', '', '0', '185', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19I182', 'Embedding / Tissue Cassette 250\'s', 'box', '825.00', '2000.00', 'Embedding / Tissue Cassette with Lid 250\'s', '', '10.00', '986.84', '0', '-2', '0', '2', '825', '1', '', '', '', '0', '186', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19J184', 'Brilliant Green Bile Broth 500G, SCHARLAU', 'bottle', '6000.00', '10084.00', 'Brilliant Green Bile 2% Broth 500G, SCHARLAU', 'SCHARLAU', '10.00', '7430.34', '2', '-4', '0', '0', '0', '0', '', '', '', '0', '187', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19J186', 'Mueller Hinton Agar (MHA), 500g, SCHARLAU', 'bottle', '2900.00', '6500.00', 'Mueller Hinton Agar (MHA), 500grams, SCHARLAU', 'SCHARLAU', '10.00', '3815.79', '0', '-2', '0', '0', '0', '0', '', '', '', '0', '188', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19J188', 'E.Coli Broth (EC Broth) 500G, SCHARLAU', 'bottle', '3500.00', '6250.00', 'E.Coli Broth (EC Broth) 500G, SCHARLAU', 'SCHARLAU', '10.00', '4605.26', '2', '0', '0', '0', '0', '0', '', '', '', '0', '189', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19J189', 'Tryptose Lauryl Sulfate Broth 500G, SCHARLAU', 'bottle', '2200.00', '3930.00', 'Tryptose Lauryl Sulfate Broth 500G, SCHARLAU', 'SCHARLAU', '10.00', '2894.74', '4', '-168', '0', '0', '0', '0', '', '', '', '0', '190', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19J190', 'Plate Count Agar (PCA) 500G, SCHARLAU', 'bottle', '2850.00', '5089.00', 'Plate Count Agar (PCA) 500G, SCHARLAU', 'SCHARLAU', '10.00', '3750.00', '2', '-13', '0', '0', '0', '0', '', '', '', '0', '191', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19J191', 'Copper (II) Sulfate (CuSo4), SCHARLAU', 'bottle', '945.00', '2125.00', 'Copper (II) Sulfate (CuSo4), SCHARLAU', 'SCHARLAU', '10.00', '1243.42', '0', '-6', '0', '0', '0', '0', '', '', '', '0', '192', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19J192', 'Culture tube 5ml, w/ snap cap', 'pack', '850.00', '1400.00', 'Culture tube 5ml 12x75m w/ snap cap, 100\'s', '', '0.00', '0.00', '271', '0', '100', '0', '0', '0', '', '', '', '0', '193', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19J194', 'Inoculation Loops 1uL, 100\'s, TRULAB', 'box', '410.00', '800.00', 'Inoculation Loops 1uL with needle 100\'s, TRULAB', 'TRULAB ', '10.00', '490.43', '10', '0', '-3', '-3', '0', '0', '', '', '', '0', '194', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19J195', 'Inoculation Loops 10uL, 100\'s, TRULAB', 'box', '410.00', '800.00', 'Inoculation Loops 10uL with needle, 100\'s, TRULAB', 'TRULAB ', '10.00', '490.43', '20', '0', '3', '6', '410', '2', '', '', '', '0', '195', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19K196', 'Hematology Control 3x3mL, LIQUICHEK, BIORAD', 'kit', '10500.00', '16334.00', 'LIQUICHEK HEMATOLOGY-16 CONTROL (L,N,H) 3x3mL, BIORAD', 'BIORAD', '0.00', '12280.70', '0', '0', '0', '0', '0', '0', '', '', '', '0', '196', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19K196', 'Hematology Control 6x3mL, BIORAD', 'kit', '21000.00', '32668.00', 'LIQUICHEK HEMATOLOGY-16 CONTROL (L,N,H) 6x3mL, BIORAD', 'BIORAD', '0.00', '24561.40', '1', '0', '1', '0', '0', '0', '', '', '', '0', '197', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19K197', 'Assayed Control 1, STANBIO', 'kit', '5100.00', '9107.00', 'Assayed Control 1, 6x5mL, STANBIO', 'STANBIO', '10.00', '6710.53', '0', '0', '0', '0', '0', '0', '', '', '', '0', '198', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19K198', 'Assayed Control 2, STANBIO', 'kit', '5100.00', '9107.00', 'Assayed Control 2, 6x5mL, STANBIO', 'STANBIO', '10.00', '6710.53', '0', '-2', '0', '0', '0', '0', '', '', '', '0', '199', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19K199', 'Normal Control, Bovine, Bionorm -BIOMAXIMA', 'kit', '0.00', '4436.00', 'Normal Control 4 x 5mL, Bovine, Bionorm, BIOMAXIMA', 'BIOMAXIMA', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '200', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19K200', 'Abnormal Control, Biopath -BIOMAXIMA', 'kit', '0.00', '4436.00', 'Pathological Control 4 x 5mL, Bovine, Biopath -BIOMAXIMA', 'BIOMAXIMA', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '201', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19K201', 'Liquid Urine Strip Control, INSIGHT', 'kit', '6200.00', '11273.00', 'Liquid Urine Strip Control, L1 & L2 6x10mL, INSIGHT', 'INSIGHT', '10.00', '7416.27', '2', '-1', '0', '0', '0', '0', '', '', '', '0', '202', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19L258', 'Wash Bottle, Natural 250mL', 'piece', '75.00', '175.00', 'Wash Bottle, Natural 250mL', '', '10.00', '117.19', '20', '0', '0', '0', '0', '0', '', '', '', '0', '203', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19L279', 'Petri Dish, 90x15mm 20\'s', 'pack', '116.00', '320.00', 'Petri Dish Polystyrene, Sterile, 1 room, 90x15mm, 20\'s', '', '10.00', '161.11', '13', '0', '0', '1', '116', '58', '', '', '', '0', '204', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19L290', 'Improved Neubauer (Hemacytometer), ASSISTENT', 'piece', '1900.00', '3960.00', 'Improved Neubauer (Hemacytometer), ASSISTENT, Germany ', 'ASSISTENT', '10.00', '2968.75', '1', '-2', '0', '0', '0', '0', '', '', '', '0', '205', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19L406', 'Erlenmeyer Flask 250mL', 'piece', '115.00', '268.00', 'Conical Flask, Erlenmeyer 250mL', '', '10.00', '179.69', '10', '0', '0', '0', '0', '0', '', '', '', '0', '206', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19L452', 'Culture Tube Glass, 25x200mm, 60mL, 100\'s', 'box', '10500.00', '18750.00', 'Culture Tube Glass w/ screw cap 25x200mm, 60mL, 100\'s', '', '5.00', '14585.00', '1', '0', '0', '0', '0', '0', '', '', '', '0', '207', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19L452', 'Spray Bottle 500mL', 'piece', '39.00', '150.00', 'Spray Bottle 500mL', '', '10.00', '79.59', '20', '0', '0', '0', '0', '0', '', '', '', '0', '208', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19M476', 'Benedict Solution 500ml, MEDIC', 'bottle', '0.00', '0.00', 'Benedict Solution 500ml, MEDIC', 'MEDIC', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '209', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19M479', 'Lugols Iodine 250ml, MEDIC', 'bottle', '392.00', '795.00', 'Lugols Iodine 250ml, MEDIC', 'MEDIC', '10.00', '612.50', '1', '0', '0', '0', '0', '0', '', '', '', '0', '210', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19M480', 'Lugols Iodine 500ml, Medic', 'bottle', '0.00', '0.00', 'Lugols Iodine 500ml, Medic', 'MEDIC', '0.00', '0.00', '2', '0', '0', '0', '0', '0', '', '', '', '0', '211', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19M482', 'NSS 500mL', 'bottle', '79.20', '375.00', 'Normal Salt Solution 0.85% 500mL, Medic', 'MEDIC', '10.00', '123.75', '0', '0', '0', '0', '0', '0', '', '', '', '0', '212', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19M483', 'NSS 1L, Medic', 'bottle', '280.00', '531.00', 'Normal Salt Solution 0.85% 1L, Medic', 'MEDIC', '10.00', '437.50', '10', '-1', '1', '3', '200', '600', '', '', '', '0', '213', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19M494', 'WBC Diluting Fuid 500mL, MEDIC', 'bottle', '153.60', '545.00', 'WBC Diluting Fuid 500mL, MEDIC', 'MEDIC', '10.00', '240.00', '1', '-1', '0', '0', '0', '0', '', '', '', '0', '214', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19M495', 'WBC Diluting Fluid 1000mL, MEDIC', 'bottle', '260.00', '739.00', 'WBC Diluting Fluid 1000mL, MEDIC', 'MEDIC', '10.00', '406.25', '0', '0', '0', '0', '0', '0', '', '', '', '0', '215', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19M496', 'Rees and Ecker 250ml, MEDIC', 'bottle', '264.00', '750.00', 'Rees and Ecker 250ml, MEDIC', 'MEDIC', '10.00', '412.50', '0', '0', '0', '0', '0', '0', '', '', '', '0', '216', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19M497', 'Rees and Ecker 500ml, MEDIC', 'bottle', '328.00', '832.00', 'Rees and Ecker 500ml, MEDIC', 'MEDIC', '10.00', '512.50', '0', '0', '0', '0', '0', '0', '', '', '', '0', '217', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19M520', 'Acid Alcohol 500mL, MEDIC', 'bottle', '390.00', '650.00', 'Acid Alcohol 500mL, MEDIC', 'MEDIC', '10.00', '554.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '218', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19M521', 'KOH 500mL, MEDIC', 'bottle', '264.00', '528.00', 'Potassium Hydroxide (KOH) 10% 500mL, MEDIC', 'MEDIC', '10.00', '412.50', '0', '0', '0', '0', '0', '0', '', '', '', '0', '219', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19M522', 'Denatured Alcohol 4L, MEDIC', 'gallon', '0.00', '0.00', 'Denatured Alcohol 4L, MEDIC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '220', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('19O602', 'CT3 Immunoassay Analyzer, EDAN', 'unit', '100000.00', '200000.00', 'Colloidal Gold-labeled Immunoassay Analyzer, CT3, EDAN ', 'EDAN', '10.00', '156250.00', '2', '0', '-1', '0', '0', '0', '', '', '', '0', '221', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('36010010', 'White Tips, 0.5-10uL, 1000\'s', 'pack', '850.00', '1418.00', 'White Tips, 0.5-10uL, 1000\'s', '', '0.00', '966.00', '12', '0', '7', '2', '850', '1', '', '', '', '0', '222', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('A1C10Now', 'A1C Now 10\'s, PTS Diagnostics', 'kit', '0.00', '0.00', 'A1C Now 10\'s, PTS Diagnostics', 'PTS Diagnostics', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '223', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('A1C20Now', 'A1C Now 20\'s, PTS Diagnostics', '', '0.00', '0.00', 'A1C Now 20\'s, PTS Diagnostics', 'PTS Diagnostics', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '224', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('A1C20SD', 'A1c Test kit, A1cCare -SD', 'kit', '6000.00', '10715.00', 'Hemoglobin A1c Test Kit 20\'s, A1cCare -SD', 'SD', '0.00', '7500.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '225', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('ABM0036E', 'Vein Visualizing Device, VeinSpy  -TULIP', 'unit', '0.00', '35000.00', 'Vein Visualizing Device, VeinSpy -TULIP', 'TULIP', '0.00', '0.00', '0', '1', '0', '0', '0', '0', '', '', '', '0', '226', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('ABM0040E', 'Semi-Automated Chemistry Analyzer, HOSPITEX', 'unit', '180000.00', '300000.00', 'Semi-Automated Chemistry Analyzer, Master T -HOSPITEX', 'HOSPITEX', '0.00', '204545.00', '-2', '1', '-2', '0', '0', '0', '', '', '', '0', '227', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('ACTR729', 'Rinse 500mL, COULTER', 'bottle', '9500.00', '9500.00', 'ACT Rinse 500mL, COULTER', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '228', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'Alcohol Lamp 150ml', 'piece', '150.00', '285.00', 'Alcohol Lamp 150ml', '', '0.00', '171.00', '0', '1', '0', '0', '0', '0', '', '', '', '0', '229', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('ALP-BP01', 'Digital Blood Pressure, wrist type, ALP K2 ', 'unit', '1840.00', '2987.00', 'Digital Blood Pressure, wrist type, Model WS-910, ALP K2', 'ALP K2', '0.00', '2091.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '230', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'ASO Latix, RHELAX -TULIP', 'kit', '0.00', '0.00', 'ASO Latix 100\'s, RHELAX -TULIP', 'TULIP', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '231', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'Autoclave Tape 1\", ORMED', 'roll', '280.00', '532.00', 'Autoclave Tape 1\",sterile, ORMED', 'ORMED', '0.00', '319.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '232', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BC5000E', 'Hematology Analyzer, BC-5000, MINDRAY', 'unit', '650000.00', '950000.00', 'Hematology Analyzer 5 parts, BC-5000, MINDRAY', 'MINDRAY', '0.00', '738637.00', '1', '0', '1', '0', '0', '0', '', '', '', '0', '233', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00248', 'Cholesterol 2x50ml, HOSPITEX', 'kit', '1350.00', '3214.00', 'Cholesterol w/ standard 2x50ml, HOSPITEX', 'HOSPITEX', '0.00', '1534.00', '0', '1', '0', '1', '1', '1', '', '', '', '0', '234', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00250', 'HDL-Cholesterol ppt.3x100mL, Hospitex', 'kit', '5310.00', '8850.00', 'HDL-Cholesterol ppt.3x100mL, Hospitex', 'HOSPITEX', '0.00', '6035.00', '0', '0', '0', '1', '5', '5', '', '', '', '0', '235', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00251', 'Triglycerides 2x50mL, HOSPITEX', 'kit', '2310.00', '4620.00', 'Triglycerides Reagent w/. Standard 2x50mL, HOSPITEX', 'HOSPITEX', '0.00', '2625.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '236', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00253', 'Creatinine 4x100mL, Hospitex', 'kit', '2700.00', '5400.00', 'Creatinine Reagent 4x100ML, Hospitex', 'HOSPITEX', '0.00', '3068.00', '0', '0', '0', '1', '2', '2', '', '', '', '0', '237', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00255', 'Glucose 2x250mL, HOSPITEX', 'kit', '2394.00', '4788.00', 'Glucose Reagent 2x250mL, HOSPITEX', 'HOSPITEX', '0.00', '2720.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '238', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00256', 'SGPT/ALT 2x50mL, Hospitex', 'kit', '1770.00', '3540.00', 'SGPT/ALT 2x50mL, Hospitex', 'HOSPITEX', '0.00', '2012.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '239', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00259', 'SGOT (AST) 4x50mL, HOSPITEX', 'kit', '3300.00', '5357.00', 'SGOT Reagent (AST) 4x50mL, HOSPITEX', 'HOSPITEX', '0.00', '3750.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '240', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00260', 'UREA UV BUN 2x50ml, HOSPITEX', 'kit', '1770.00', '3800.00', 'UREA UV BUN w/ STD 2x50ml, HOSPITEX', 'HOSPITEX', '0.00', '2012.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '241', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00262', 'Uric Acid (BUA) 2x50mL, HOSPITEX', 'kit', '1770.00', '3800.00', 'Uric Acid (BUA) Reagent 2x50mL, HOSPITEX', 'HOSPITEX', '0.00', '2012.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '242', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00271', 'Cholesterol 7x37mL, 250uL, DUTCH DIAGNOSTIC', 'kit', '4158.00', '10912.00', 'Cholesterol 7x37mL, DUTCH DIAGNOSTIC ', 'DUTCH DIAGNOSTIC', '10.00', '8373.75', '2', '0', '0', '1', '4', '4', '', '', '', '0', '243', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00272', 'Creatinine 5x37mL, DUTCH DIAGNOSTIC', 'kit', '3135.00', '8183.00', 'Creatinine 5x37mL, DUTCH DIAGNOSTIC', 'DUTCH DIAGNOSTIC', '10.00', '6273.44', '2', '0', '0', '0', '0', '0', '', '', '', '0', '244', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00272', 'SGPT 120mL, STANBIO', 'kit', '0.00', '0.00', 'SGPT Reagent 4x30mL, STANBIO', 'STANBIO', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '245', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00273', 'Glucose 7x37mL, DUTCH DIAGNOSTIC', 'kit', '3349.50', '8731.00', 'Glucose 7x37mL, DUTCH DIAGNOSTIC', 'DUTCH DIAGNOSTIC', '10.00', '6737.50', '2', '-85', '0', '2', '3', '6', '', '', '', '0', '246', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00273', 'SGOT 120mL, STANBIO', 'kit', '0.00', '0.00', 'SGOT Reagent 4x30mL, STANBIO', 'STANBIO', '0.00', '0.00', '0', '-120', '0', '0', '0', '0', '', '', '', '0', '247', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00274', 'SGOT (ASAT) 5x37mL, DUTCH DIAGNOSTIC', 'kit', '4317.50', '11261.00', 'SGOT (ASAT) 5x37mL, DUTCH DIAGNOSTIC  ', 'DUTCH DIAGNOSTIC', '10.00', '8636.72', '2', '-85', '0', '1', '4', '4', '', '', '', '0', '248', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00274', 'Uric Acid 120mL, STANBIO', 'kit', '0.00', '0.00', 'Uric Acid Reagent 4x30mL, STANBIO', 'STANBIO', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '249', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00275', 'BUN 120mL, STANBIO', 'kit', '0.00', '0.00', 'BUN Reagent 4x30mL, STANBIO', 'STANBIO', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '250', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00275', 'SGPT (ALAT) 5x37mL, DUTCH DIAGNOSTIC', 'kit', '4317.50', '11261.00', 'SGPT (ALAT) 5x37mL, DUTCH DIAGNOSTIC ', 'DUTCH DIAGNOSTIC', '10.00', '8636.72', '2', '0', '1', '0', '0', '0', '', '', '', '0', '251', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00276', 'Cholesterol 120mL, STANBIO', 'kit', '0.00', '0.00', 'Cholesterol Reagent 4x30mL, STANBIO', 'STANBIO', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '252', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00276', 'HDL-Direct 4x37mL, DUTCH DIAGNOSTIC', 'kit', '19360.00', '47140.00', 'HDL-Direct 4x37mL, DUTCH DIAGNOSTIC ', 'DUTCH DIAGNOSTIC', '10.00', '36437.50', '2', '0', '1', '0', '0', '0', '', '', '', '0', '253', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00277', 'Creatinine 500mL, STANBIO', 'kit', '0.00', '0.00', 'Creatinine Reagent 2x250mL, STANBIO', 'STANBIO', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '254', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00277', 'Triglycerides 7x37mL, DUTCH DIAGNOSTIC', 'kit', '8200.50', '21388.00', 'Triglycerides 7x37mL, DUTCH DIAGNOSTIC', 'DUTCH DIAGNOSTIC', '10.00', '16410.63', '2', '0', '0', '1', '8', '8', '', '', '', '0', '255', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00278', 'Urea UV 5x37mL, DUTCH DIAGNOSTIC', 'kit', '4840.00', '12658.00', 'Urea UV 5x37mL, DUTCH DIAGNOSTIC', 'DUTCH DIAGNOSTIC', '10.00', '9712.41', '2', '4', '0', '1', '4', '4', '', '', '', '0', '256', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00279', 'Uric acid 7x37mL, DUTCH DIAGNOSTIC', 'kit', '5120.50', '13356.00', 'Uric acid 7x37mL, DUTCH DIAGNOSTIC ', 'DUTCH DIAGNOSTIC', '10.00', '10248.28', '2', '2', '0', '1', '5', '5', '', '', '', '0', '257', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00280', 'Direct HDL-Cholesterol 80mL, STANBIO', 'kit', '0.00', '0.00', 'Direct HDL-Cholesterol Reagent R1: 2x30mL+R2: 2x10mL, STANBIO', 'STANBIO', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '258', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00280', 'Dutchtrol I 10x5mL, DUTCH DIAGNOSTIC', 'kit', '10911.99', '19400.00', 'Dutchtrol I 10x5mL, normal control, DUTCH DIAGNOSTIC', 'DUTCH DIAGNOSTIC', '10.00', '17049.98', '4', '0', '1', '1', '9', '9', '', '', '', '0', '259', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00281', 'Dutchtrol II 10x5mL, DUTCH DIAGNOSTIC', 'kit', '12730.66', '22632.00', 'Dutchtrol II 10x5mL, Pathological Control, DUTCH DIAGNOSTIC', 'DUTCH DIAGNOSTIC', '10.00', '19891.65', '4', '0', '1', '1', '11', '11', '', '', '', '0', '260', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00281', 'Glucose 250mL, STANBIO', 'kit', '0.00', '0.00', 'Glucose Reagent 1x250mL, STANBIO', 'STANBIO', '0.00', '0.00', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '261', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00282', 'Multi-Calibrator 6x3mL, DUTCH DIAGNOSTIC', 'kit', '11088.00', '19712.00', 'Multi-Calibrator 6x3mL, DUTCH DIAGNOSTIC ', 'DUTCH DIAGNOSTIC', '10.00', '17325.00', '4', '-1', '1', '1', '9', '9', '', '', '', '0', '262', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00282', 'HDL ppt 20mL, STANBIO', 'kit', '0.00', '0.00', 'HDL ppt Reagent 20mL, STANBIO', 'STANBIO', '0.00', '0.00', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '263', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00283', 'Triglycerides 120mL, STANBIO', 'kit', '0.00', '0.00', 'Triglycerides (enzymatic) Reagent 4x30mL, STANBIO', 'STANBIO', '0.00', '0.00', '0', '18', '0', '0', '0', '0', '', '', '', '0', '264', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR00341', 'Creatinine 7x89mL, DUTCH DIAGNOSTIC', 'kit', '8249.00', '16498.00', 'Creatinine 7x89mL, DUTCH DIAGNOSTIC', 'DUTCH DIAGNOSTICS', '10.00', '12889.06', '1', '0', '0', '0', '0', '0', '', '', '', '0', '265', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BD-5250', 'Bottle Top Dispenser, MATRIX', 'piece', '0.00', '0.00', 'Bottle Top Dispenser, MATRIX', '', '0.00', '0.00', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '266', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BGR0080', 'Typing Sera Anti-A, EPICLONE', 'vial', '0.00', '0.00', 'Anti-A monoclonal Blood Grouping Reagent  10mL, EPICLONE', '', '0.00', '0.00', '105', '0', '0', '10', '313', '3', '', '', '', '0', '267', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BGR0081', 'Anti-D/Rh, EPICLONE', 'vial', '0.00', '0.00', 'Anti-D / Rh Blood Grouping Reagent 10mL, EPICLONE', '', '0.00', '0.00', '140', '0', '0', '10', '438', '4', '', '', '', '0', '268', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BGR0081', 'Typing Sera Anti-B, EPICLONE', 'vial', '0.00', '0.00', 'Anti-B monoclonal Blood Grouping Reagent 10ml, EPICLONE', '', '0.00', '0.00', '105', '0', '0', '10', '313', '3', '', '', '', '0', '269', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'Bleaching Solution, ZONROX', 'gallon', '0.00', '0.00', 'Bleaching Solution, ZONROX', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '270', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CAL-US01', 'Calibration Strips for Urine Analyzer, INSIGHT  ', 'kit', '2450.00', '3977.00', 'Calibration Strips for Urine Analyzer, INSIGHT', 'INSIGHT', '0.00', '2784.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '271', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CC-0800', 'Gel Card Centrifuge 8placer, MATRIX', 'unit', '0.00', '0.00', 'Gel Card Centrifuge CC0800 8placer, MATRIX - TULIP', 'TULIP', '0.00', '0.00', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '272', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CC-2400', 'Gel Card Centrifuge 24placer, MATRIX', 'unit', '0.00', '0.00', 'Gel Card Centrifuge - CC2400 24placer, MATRIX -TULIP', 'TULIP', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '273', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CC-2400', 'Gel Card Warmer CC2400 24 placer, MATRIX -TULIP', 'unit', '0.00', '0.00', 'Gel Card Warmer CC2400 24 placer, MATRIX -TULIP', 'TULIP', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '274', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CD18C726', 'Cleaner, Cell-Dyn Emerald, ABBOTT', 'bottle', '4837.60', '8063.00', 'Cleaner 960mL, Cell-Dyn Emerald, ABBOTT', 'ABBOTT', '0.00', '5497.00', '2', '37', '0', '1', '4', '4', '', '', '', '0', '275', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CD18CNTL', 'Control L/N/H, ABBOTT', 'kit', '6750.00', '10958.00', 'CD18 Control 3x2.5mL L/N/H, Cell-Dyn Emerald, ABBOTT', 'ABBOTT', '0.00', '7670.00', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '276', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CD18D724', 'Diluent, Cell-Dyn Emerald, ABBOTT', 'box', '6976.00', '11632.00', 'Diluent 10L, Cell-Dyn Emerald, ABBOTT', 'ABBOTT', '0.00', '7927.00', '2', '0', '0', '0', '0', '0', '', '', '', '0', '277', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CD18L725', 'Lyse, Cell-Dyn Emerald, ABBOTT', 'bottle', '9475.20', '15382.00', 'Lyse 960mL, Cell-Dyn Emerald, ABBOTT', 'ABBOTT', '0.00', '10767.00', '3', '-4', '0', '4', '8', '35', '', '', '', '0', '278', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CNTL0278HD', 'Abnormal / Pathological Control 5mL, HOSPITE', 'vial', '900.00', '1286.00', 'Abnormal / Pathological Control 5mL, HOSPITEX', 'HOSPITEX', '0.00', '0.00', '0', '-7', '0', '0', '0', '0', '', '', '', '0', '279', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CNTL0279HD', 'Normal Control 5mL, HOSPITEX', 'vial', '900.00', '1286.00', 'Normal Control 5mL, HOSPITEX', 'HOSPITEX', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '280', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('COAG074', 'Coagulation Normal Control, DIALAB', 'kit', '5400.00', '7715.00', 'Coagulation Normal Control 10x1mL, DIALAB', 'DIALAB', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '281', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CT30106', 'TSH 20\'s, CT3, EDAN', 'kit', '3800.00', '8282.00', 'TSH 20\'s, CT3, EDAN', 'EDAN', '10.00', '6470.59', '3', '0', '0', '0', '0', '0', '', '', '', '0', '282', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CT30107', 'FT4 20\'s, CT3, EDAN', 'kit', '3800.00', '9788.00', 'FT4 20\'s, CT3, EDAN', 'EDAN', '10.00', '7647.06', '3', '0', '0', '0', '0', '0', '', '', '', '0', '283', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CT30108', 'FT3 20\'s, CT3, EDAN', 'kit', '3800.00', '9788.00', 'FT3 20\'s, CT3, EDAN', 'EDAN', '10.00', '7647.06', '3', '0', '0', '0', '0', '0', '', '', '', '0', '284', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CTSM0056', 'Blood Glucose Monitoring Meter, Contour TS -Bayer', 'kit', '0.00', '0.00', 'Blood Glucose Monitoring Meter, Contour TS -Bayer', '', '0.00', '0.00', '20', '0', '-2', '36', '0', '0', '', '', '', '0', '285', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('CTSS0052', 'Blood Glucose Strips, Contour TS -BAYER', 'box', '362.32', '716.00', 'Blood Glucose Strips 25\'s, Contour TS -BAYER', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '286', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DGAHG400', 'AHG / Coombs, GRIFOLS', 'kit', '15000.00', '25000.00', 'DG Gel Coombs 8x50, GRIFOLS', '', '0.00', '0.00', '1', '0', '0', '0', '0', '0', '', '', '', '0', '287', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DGSOL200', 'DG Gel Sol 2x100ml, GRIFOLS', 'kit', '4465.00', '7440.00', 'DG Gel Sol 2x100ml, GRIFOLS', '', '0.00', '0.00', '2', '1', '0', '0', '0', '0', '', '', '', '0', '288', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DIAC1', 'Coagulation Analyzer Single Channel, DIAcheck C1, DIALAB', 'unit', '110000.00', '200000.00', 'Coagulation Analyzer Single Channel, DIAcheck C1, DIALAB', 'DIALAB', '0.00', '0.00', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '289', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DSC1512T', 'Clinical Centrifuge, DIGISYSTEM', 'unit', '18000.00', '28800.00', 'Clinical Centrifuge DSC-1512T, 12placer, DIGISYSTEM', '', '0.00', '0.00', '1', '0', '-1', '0', '0', '0', '', '', '', '0', '290', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DSC1524T', 'Clinical Centrifuge, DIGISYSTEM', 'unit', '0.00', '0.00', 'Clinical Centrifuge DSC-1524T, 24Placer, DIGISYSTEM', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '291', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DSC1524T', 'Clinical Centrifuge, Digital, 12 placer, DLAB', 'unit', '0.00', '35714.00', 'Clinical Centrifuge, Digital, 12 placer, table top, DLAB', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '292', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DSC156T', 'Clinical Centrifuge, DIGISYSTEM', 'unit', '8800.00', '14080.00', 'Clinical Centrifuge DSC-156T, 6placer, DIGISYSTEM', '', '0.00', '0.00', '1', '1', '0', '0', '0', '0', '', '', '', '0', '293', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DSC158T', 'Clinical Centrifuge 8 Placer, DIGISYSTEM', 'unit', '0.00', '0.00', 'Clinical Centrifuge DSC-158T, 8 Placer, DIGISYSTEM', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '294', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DSPS01', 'Pipette Shaker, DIGISYSTEM', 'unit', '5800.00', '9500.00', 'Pipette Shaker, DIGISYSTEM', '', '0.00', '0.00', '0', '-7', '0', '0', '0', '0', '', '', '', '0', '295', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DT-WON01', 'Digital Timer, WONDFO', 'piece', '0.00', '825.00', 'Digital Timer, WONDFO', '', '0.00', '0.00', '5', '0', '0', '42', '0', '0', '', '', '', '0', '296', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DXH-CNR', 'DXH500 Cleaner, COULTER', 'bottle', '15950.00', '19200.00', 'DXH500 Cleaner 500ml, COULTER', 'DXH500', '0.00', '0.00', '4', '0', '3', '0', '0', '0', '', '', '', '0', '297', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DXH-CTL', 'DXH500 Control, COULTER', 'kit', '16200.00', '16200.00', 'DXH500 Control 3x2.3mL, COULTER', 'DXH500', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '298', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DXH-DEL', 'DXH500 Diluent, COULTER', 'box', '24000.00', '31200.00', 'DXH500 Diluent 10L, COULTER', 'DXH500', '0.00', '0.00', '6', '0', '2', '0', '0', '0', '', '', '', '0', '299', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('DXH-LYS', 'DXH500 Lyse, COULTER', 'bottle', '20570.00', '24720.00', 'DXH500 Lyse 500ml, COULTER', 'DXH500', '0.00', '0.00', '8', '0', '1', '0', '0', '0', '', '', '', '0', '300', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('E0042', 'Chemistry Analyzer, Fully-automated, GA100, CHEMSERIES', 'unit', '550000.00', '977778.00', 'Chemistry Analyzer, Fully-automated, GA100, CHEMSERIES', 'CHEMSERIES', '0.00', '611111.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '301', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('ELEC0155', 'Easylyte Solution Pack Cl Plus, MEDICA EASYLYTE', 'kit', '10000.00', '15500.00', 'Easylyte Solution Pack Na/k/Cl Plus 800ml, MEDICA EASYLYTE', 'EASYLYTE', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '302', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('ELEC0156', 'Easylyte Solution Pack Calcium, MEDICA EASYLYTE', 'kit', '11000.00', '18500.00', 'Easylyte Solution Pack Na/k/Ca/Ph 800ml, MEDICA EASYLYTE', 'EASYLYTE', '0.00', '0.00', '0', '-33', '0', '0', '0', '0', '', '', '', '0', '303', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('ELEC0157', 'Solution Pack Expand, MEDICA EASYLYTE ', 'kit', '11000.00', '18000.00', 'Solution Pack Expand Na/K/Cl/Ca/Li 800ml, MEDICA EASYLYTE ', 'EASYLYTE', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '304', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('ELEC0158', 'Daily Cleaning Solution, MEDICA EASYLYTE ', 'kit', '3300.00', '7792.21', 'Daily Cleaning Solution, MEDICA EASYLYTE ', 'EASYLYTE', '10.00', '6060.61', '1', '0', '0', '0', '0', '0', '', '', '', '0', '305', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('ELEC0159', 'Calcium Rinse, MEDICA EASYLYTE ', 'kit', '8000.00', '3300.00', 'Calcium Rinse 1x5mL, MEDICA EASYLYTE  ', 'EASYLYTE', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '306', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('ELEC0160', 'Control Bi-level,  MEDICA EASYLYTE ', 'kit', '4400.00', '8000.00', 'Bi-level Control L/N/H,  MEDICA EASYLYTE ', 'EASYLYTE', '0.00', '0.00', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '307', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('ELEC0169', 'Internal Filling Solution, MEDICA EASYLYTE', 'kit', '3900.00', '7860.00', 'Internal Filling Solution 125mL , MEDICA EASYLYTE', 'EASYLYTE', '0.00', '0.00', '1', '-6', '0', '1', '3', '3', '', '', '', '0', '308', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('ELEC0172', 'Tubing Kit (Chloride), MEDICA EASYLYTE ', 'kit', '3900.00', '7200.00', 'Tubing Kit (Chloride), MEDICA EASYLYTE  ', 'EASYLYTE', '0.00', '0.00', '0', '0', '0', '1', '3', '3', '', '', '', '0', '309', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('EQPT0433', 'Mechanical Pipette, 10-100uL, DLAB', 'unit', '3675.00', '7000.00', 'Mechanical Pipette, Adjustable Volume 10-100uL, DLAB', '', '0.00', '0.00', '1', '0', '0', '0', '0', '0', '', '', '', '0', '310', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('EQPT0433', 'Mechanical Pipette, 10-100uL, TOPSCEIN', 'unit', '2500.00', '7000.00', 'Mechanical Pipette, Adjustable Volume 10-100uL, TOPSCEIN', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '311', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('EQPT0436', 'Mechanical Pipette, 100-1000uL, DLAB', 'unit', '3675.00', '7000.00', 'Mechanical Pipette, Adjustable Volume 100-1000uL, DLAB', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '312', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('EQPT0436', 'Mechanical Pipette, 100-1000uL, TOPSCEIN', 'unit', '2500.00', '7000.00', 'Mechanical Pipette, Adjustable Volume 100-1000uL, TOPSCEIN', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '313', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIA066E', 'Finecare II FIA POC Analyzer, WONDFO', 'unit', '45000.00', '120000.00', 'Finecare II FIA POC Analyzer, WONDFO', 'FINECARE', '0.00', '0.00', '1', '0', '0', '2', '41', '83', '', '', '', '0', '314', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIA068E', 'Finecare Plus FIA Analyzer, WONDFO', 'kit', '60000.00', '200000.00', 'Finecare Plus FIA Analyzer, WONDFO', 'FINECARE', '0.00', '0.00', '0', '-2', '0', '0', '0', '0', '', '', '', '0', '315', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0700', 'Troponin I Test Cartridge, FINECARE', 'kit', '6897.00', '12985.00', 'Troponin I (cTnI) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '9015.69', '16', '-3', '0', '2', '6', '13', '', '', '', '0', '316', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0701', 'NT-proBNP Test Cartridge, FINECARE', 'kit', '18568.00', '28784.00', 'NT-proBNP Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '24271.90', '0', '-3', '0', '0', '0', '0', '', '', '', '0', '317', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0702', 'CK-MB Test Cartridge, FINECARE', 'kit', '6897.00', '12982.59', 'CK-MB Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '9015.69', '0', '0', '0', '0', '0', '0', '', '', '', '0', '318', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0703', 'Myoglobin (Myo) Test Cartridge, FINECARE', 'kit', '6897.00', '12982.59', 'Myoglobin (Myo) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '9015.69', '0', '0', '0', '0', '0', '0', '', '', '', '0', '319', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0704', 'H-FABP Test Cartridge, FINECARE', 'kit', '9783.00', '15165.00', 'H-FABP Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '12788.24', '0', '0', '0', '0', '0', '0', '', '', '', '0', '320', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0705', '3n1 (cTnI/Myo/CK-MB) Test Cartridge, FINECARE', 'kit', '17903.00', '27755.00', '3n1 (cTnI/Myo/CK-MB) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '23402.61', '0', '0', '0', '0', '0', '0', '', '', '', '0', '321', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0706', 'BNP Test Cartridge, FINECARE', 'kit', '14850.00', '23020.00', 'BNP Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '19411.76', '0', '0', '0', '0', '0', '0', '', '', '', '0', '322', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0707', '2n1 (cTnI/NT-proBNP) Test Cartridge, FINECARE', 'kit', '22550.00', '34868.00', '2n1 (cTnI/NT-proBNP) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '29477.12', '0', '0', '0', '0', '0', '0', '', '', '', '0', '323', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0708', 'HbA1c Test Cartridge, FINECARE', 'kit', '4102.00', '7725.00', 'HbA1c Test Cartridge 25s, FINECARE', 'FINECARE', '10.00', '5362.09', '55', '0', '0', '5', '3', '16', '', '', '', '0', '324', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0709', 'Microalbumin (MAU) Test Cartridge, FINECARE', 'kit', '4901.00', '9225.00', 'Microalbumin (MAU) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '6406.54', '0', '0', '0', '0', '0', '0', '', '', '', '0', '325', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0710', 'C-Reactive Protein (CRP) Test Cartridge, FINECARE', 'kit', '2904.00', '5466.00', 'C-Reactive Protein (CRP) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '3796.08', '0', '3', '0', '0', '0', '0', '', '', '', '0', '326', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0711', 'PCT Test Cartridge, FINECARE', 'kit', '11979.00', '18570.00', 'Procalcitonin (PCT) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '15658.82', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '327', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0712', 'AFP Test Cartridge, FINECARE', 'kit', '4901.00', '9225.00', 'Alfa-fetoprotein (AFP) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '6406.54', '1', '-2', '0', '0', '0', '0', '', '', '', '0', '328', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0713', 'PSA Test Cartridge, FINECARE', 'kit', '5898.00', '11102.00', 'Prostate Specific Antigen (PSA) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '7709.80', '16', '0', '3', '2', '5', '11', '', '', '', '0', '329', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0714', 'CEA Test Cartridge 25\'s, FINECARE', 'kit', '7896.00', '12240.00', 'Carcino Embryonic Antigen (CEA) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '10321.57', '0', '0', '0', '0', '0', '0', '', '', '', '0', '330', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0715', 'B-hCG Test cartridge, FINECARE', 'kit', '5390.00', '10146.00', 'B-hCG Test cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '7045.75', '1', '1', '0', '0', '0', '0', '', '', '', '0', '331', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0716', 'LH Test Cartridge, FINECARE', 'kit', '6897.00', '10692.00', 'Luteinizing hormone (LH) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '9015.69', '0', '0', '0', '0', '0', '0', '', '', '', '0', '332', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0717', 'FSH Test Cartridge, FINECARE', 'kit', '6897.00', '10692.00', 'Follicle-stimulating hormone (FSH) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '9015.69', '0', '0', '0', '0', '0', '0', '', '', '', '0', '333', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0718', 'Progesterone Test Cartridge, FINECARE', 'kit', '6897.00', '10692.00', 'Progesterone Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '9015.69', '0', '0', '0', '0', '0', '0', '', '', '', '0', '334', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0719', 'PRL Test Cartridge, FINECARE', 'kit', '6897.00', '10692.00', 'Prolactin (PRL) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '9015.69', '0', '0', '0', '0', '0', '0', '', '', '', '0', '335', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0720', 'T3  Test Cartridge, FINECARE', 'kit', '5225.00', '9835.00', 'T3  Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '6830.07', '9', '0', '1', '0', '0', '0', '', '', '', '0', '336', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0721', 'T4 Test Cartridge, FINECARE', 'kit', '5225.00', '9835.00', 'T4 Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '6830.07', '11', '1', '1', '1', '4', '4', '', '', '', '0', '337', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0722', 'TSH Test Cartridge, FINECARE', 'kit', '5225.00', '9835.00', 'TSH Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '6830.07', '14', '2', '0', '0', '0', '0', '', '', '', '0', '338', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0723', 'D-Dimer Test Cartridge, FINECARE', 'kit', '4901.00', '9225.00', 'D-Dimer Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '6406.54', '0', '0', '0', '0', '0', '0', '', '', '', '0', '339', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0724', 'Vitamin D Test Cartridge, FINECARE', 'kit', '4792.00', '9020.00', 'Vitamin D Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '6264.05', '0', '-2', '0', '0', '0', '0', '', '', '', '0', '340', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0725', 'NGAL Test Cartridge, FINECARE', 'kit', '11550.00', '17905.00', 'NGAL Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '15098.04', '0', '0', '0', '0', '0', '0', '', '', '', '0', '341', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIAT0726', 'fPSA Test Cartridge, FINECARE', 'kit', '6897.00', '10692.00', 'Free-Prostate Specific Antigen (fPSA) Test Cartridge 25\'s, FINECARE', 'FINECARE', '10.00', '9015.69', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '342', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('FIATCTL01', 'QC Cartridge, FINECARE', 'kit', '0.00', '3200.00', 'Quality Control Cartridge, FINECARE', 'FINECARE', '0.00', '0.00', '2', '-1', '0', '0', '0', '0', '', '', '', '0', '343', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GDC005EK3', 'EDTA 0.5mL, w/ capillet, BRUNER', 'tray', '580.00', '980.00', 'EDTA 0.5mL w/ capillet 100s, BRUNER', 'BRUNER', '0.00', '0.00', '0', '-2', '0', '0', '0', '0', '', '', '', '0', '344', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GE300E', 'Electrolyte Analyzer, GE300, GENRUI', 'unit', '200000.00', '285700.00', 'Electrolyte Analyzer Na/K/Cl/Ca/pH, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '1', '-1', '0', '1', '0', '0', '', '', '', '0', '345', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GE300TP', 'Thermal Paper, GE300, GENRUI', 'pack', '3750.00', '5357.00', 'Thermal Paper 1x5rolls 80mmx35mm, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '346', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GEN0172', 'ISE Electrolytes Reagent, GE300, GENRUI', 'kit', '8500.00', '14200.00', 'ISE Electrolytes Reagent 1x550mL, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '3', '0', '0', '4', '6', '25', '', '', '', '0', '347', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GEN0173', 'Deprotein Solution, GE300, GENRUI', 'kit', '2673.00', '6300.00', 'Deprotein Solution 6x3mL, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '4', '-1', '-1', '4', '2', '9', '', '', '', '0', '348', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GEN0174', 'Cleaning Solution, GE300, GENRUI', 'kit', '2673.00', '5040.00', 'Cleaning Solution 250mL, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '10', '0', '2', '3', '2', '6', '', '', '', '0', '349', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GEN0178', 'PVC Electrode Activating Solution, GE300, GENRUI', 'kit', '2970.00', '4455.00', 'PVC Electrode Activating Solution 250mL, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '350', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GEN0179', 'Sodium (Na) Electrode, GE300, GENRUI', 'kit', '7200.00', '12000.00', 'ISE Sodium (Na) Electrode, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '1', '0', '0', '1', '0', '0', '', '', '', '0', '351', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GEN0180', 'Potassium (K) Electrode, GE300, GENRUI', 'kit', '7200.00', '12000.00', 'ISE Potassium (K) Electrode, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '1', '0', '0', '2', '3', '7', '', '', '', '0', '352', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GEN0181', 'Chloride (Cl) Electrode, GE300, GENRUI', 'kit', '7200.00', '12000.00', 'ISE Chloride (Cl) Electrode, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '1', '-1', '0', '1', '0', '0', '', '', '', '0', '353', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GEN0182', 'Calcium (Ca++) Electrode, GE300, GENRUI', 'kit', '7200.00', '12000.00', 'ISE Calcium (Ca++) Electrode, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '2', '0', '0', '2', '3', '6', '', '', '', '0', '354', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GEN0183', 'pH Electrode, GE300, GENRUI', 'kit', '7200.00', '12000.00', 'ISE pH Electrode, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '2', '0', '0', '2', '3', '6', '', '', '', '0', '355', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GEN0184', 'Reference Electrode, GE300, GENRUI', 'kit', '7200.00', '12000.00', 'ISE Reference Electrode, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '1', '0', '0', '0', '0', '0', '', '', '', '0', '356', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GENQC175', 'Control, GE300, GENRUI', 'kit', '1890.00', '6200.00', 'QC Solution 3x10mL L/N/H, GE300, GENRUI', 'GENRUI', '0.00', '0.00', '4', '-1', '1', '1', '1', '1', '', '', '', '0', '357', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('GJ17030486', 'HIV Test Card 20\'s, INTEC', 'kit', '1656.00', '2700.00', 'HIV Test Card 20\'s, INTEC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '358', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('H2O-10L', 'Distilled Water 10L, NATURESPRING', 'bottle', '64.00', '150.00', 'Distilled Water 10L, NATURESPRING', '', '0.00', '0.00', '0', '0', '0', '1', '64', '64', '', '', '', '0', '359', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabAlb', 'iLab Albumin', 'kit', '0.00', '0.00', 'iLab Albumin 8x9mL', 'ILAB', '0.00', '0.00', '0', '-2', '0', '0', '0', '0', '', '', '', '0', '360', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabBUA', 'iLab Uric Acid', 'kit', '0.00', '0.00', 'iLab Uric Acid (BUA)', 'ILAB', '0.00', '0.00', '3', '4', '1', '0', '0', '0', '', '', '', '0', '361', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabBUN', 'iLab Urea', 'kit', '0.00', '0.00', 'iLab Urea Nitrogen', 'ILAB', '0.00', '0.00', '0', '4', '0', '0', '0', '0', '', '', '', '0', '362', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabCCS', 'iLab Cuvette Cleaner', 'kit', '0.00', '0.00', 'iLab Cuvette Cleaning Solution 10x100mL', 'ILAB', '0.00', '0.00', '1', '0', '0', '0', '0', '0', '', '', '', '0', '363', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabChol', 'iLab Cholesterol', 'kit', '0.00', '0.00', 'iLab Cholesterol 6x35mL', 'ILAB', '0.00', '0.00', '1', '0', '0', '0', '0', '0', '', '', '', '0', '364', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabCrea', 'iLab Creatinine', 'kit', '0.00', '0.00', 'iLab Creatinine 6x16+6x16mL', 'ILAB', '0.00', '0.00', '4', '-2', '2', '0', '0', '0', '', '', '', '0', '365', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabCTRL1', 'iLab Sera Chem Level 1', 'kit', '0.00', '0.00', 'iLab Sera Chem Level 1 12x5mL', 'ILAB', '0.00', '0.00', '1', '0', '0', '0', '0', '0', '', '', '', '0', '366', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabCTRL2', 'iLab Sera Chem Level 2', 'kit', '0.00', '0.00', 'iLab Sera Chem Level 2 12x5mL', 'ILAB', '0.00', '0.00', '1', '1', '0', '0', '0', '0', '', '', '', '0', '367', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabDB', 'iLab Direct Bilirubin', 'kit', '0.00', '0.00', 'iLab Direct Bilirubin', 'ILAB', '0.00', '0.00', '1', '-3', '1', '0', '0', '0', '', '', '', '0', '368', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabGlu', 'iLab Glucose', 'kit', '0.00', '0.00', 'iLab Glucose Oxidase Reagent 6x35mL', 'ILAB', '0.00', '0.00', '3', '-3', '2', '0', '0', '0', '', '', '', '0', '369', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabHDL', 'iLab HDL', 'kit', '0.00', '0.00', 'iLab HDL Reagent', 'ILAB', '0.00', '0.00', '2', '-3', '2', '0', '0', '0', '', '', '', '0', '370', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabHDL-Cal', 'iLab HDL-Cal', 'kit', '0.00', '0.00', 'iLab HDL-Cholesterol Cal', 'ILAB', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '371', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabPhos', 'iLab Phosphorus', 'kit', '0.00', '0.00', 'iLab Phosphorus 12x10mL', 'ILAB', '0.00', '0.00', '1', '0', '1', '0', '0', '0', '', '', '', '0', '372', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabProbRin', 'iLab Probe Rinse', 'kit', '0.00', '0.00', 'iLab Probe Rinse 10x5mL', 'ILAB', '0.00', '0.00', '2', '0', '2', '0', '0', '0', '', '', '', '0', '373', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabRefG', 'iLab Referril G', 'kit', '0.00', '0.00', 'iLab Referril G 10x3mL', 'ILAB', '0.00', '0.00', '2', '0', '1', '0', '0', '0', '', '', '', '0', '374', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabRefGDil', 'iLab Referril G Diluent', 'kit', '0.00', '0.00', 'iLab Referril G Diluent 10x5mL', 'ILAB', '0.00', '0.00', '1', '0', '1', '0', '0', '0', '', '', '', '0', '375', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabSamCup ', 'iLab Short Sample Cup ', 'kit', '0.00', '0.00', 'iLab Short Sample Cup 1000\'s', 'ILAB', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '376', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabSGOT', 'iLab SGOT/AST', 'kit', '0.00', '0.00', 'iLab SGOT/AST', 'ILAB', '0.00', '0.00', '1', '0', '1', '0', '0', '0', '', '', '', '0', '377', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabSGPT', 'iLab SGPT', 'kit', '0.00', '0.00', 'iLab SGPT/ALT', 'ILAB', '0.00', '0.00', '2', '0', '1', '0', '0', '0', '', '', '', '0', '378', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabTB', 'iLab Total Bilirubin', 'kit', '0.00', '0.00', 'iLab Total Bilirubin', 'ILAB', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '379', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabTP', 'iLab Total Protein', 'kit', '0.00', '0.00', 'iLab Total Protein 6x30mL', 'ILAB', '0.00', '0.00', '0', '2', '0', '0', '0', '0', '', '', '', '0', '380', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('iLabTrigly', 'iLab Triglycerides', 'kit', '0.00', '0.00', 'iLab Triglycerides 6x30mL', 'ILAB', '0.00', '0.00', '3', '0', '1', '0', '0', '0', '', '', '', '0', '381', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('LABN-C50', 'Cleaner 50mL, DF5, LABNOVATION', 'bottle', '1250.00', '2500.00', 'Cleaner 50mL, DF5, LABNOVATION', '', '0.00', '0.00', '0', '0', '2', '2', '1', '2', '', '', '', '0', '382', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('LABN-D20L', 'Diluent 20L, LABNOVATION', 'box', '5500.00', '7860.00', 'Diluent 20L, LABNOVATION', '', '0.00', '0.00', '0', '-25', '2', '2', '5', '11', '', '', '', '0', '383', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('LABN-L500', 'Lyse 500mL, LABNOVATION', 'bottle', '5586.00', '9310.00', 'Lyse 500mL, LABNOVATION', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '384', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('M-30D', 'Diluent, MINDRAY', 'box', '3000.00', '6000.00', 'M-30 Diluent, 20L, MINDRAY', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '385', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('M-30L', 'Lyse, 3parts, MINDRAY', 'bottle', '4000.00', '7273.00', 'M-30 CFL Lyse, 500mL, MINDRAY', 'MINDRAY', '10.00', '5682.00', '2', '0', '0', '0', '0', '0', '', '', '', '0', '386', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('M-30P', 'Probe Cleanser, 17mL, MINDRAY', 'bottle', '1500.00', '0.00', 'Probe Cleanser, M-30P, 17mL, MINDRAY', 'MINDRAY', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '387', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('M-30R', 'Rinse, MINDRAY', 'box', '3000.00', '5000.00', 'M-30 Rinse, 20L, MINDRAY', '', '0.00', '0.00', '0', '5', '0', '1', '3', '3', '', '', '', '0', '388', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('M-52D', 'Diluent, 20L, MINDRAY', 'box', '4000.00', '0.00', 'Diluent, M- 52D, 20L, MINDRAY', 'MINDRAY', '0.00', '0.00', '2', '0', '-1', '0', '0', '0', '', '', '', '0', '389', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('M-52Diff', 'Lyse Diff, 500mL, MINDRAY', 'bottle', '5000.00', '0.00', 'Lyse Diff, M-52Diff, 500mL, MINDRAY', 'MINDRAY', '0.00', '0.00', '3', '0', '0', '0', '0', '0', '', '', '', '0', '390', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('M-52LH', 'LH Lyse, 100mL, MINDRAY', 'bottle', '4000.00', '0.00', 'LH Lyse,, M-52LH, 100mL, MINDRAY', 'MINDRAY', '0.00', '0.00', '3', '3', '0', '0', '0', '0', '', '', '', '0', '391', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('M-53P', 'Probe Cleanser 50mL, MINDRAY', 'bottle', '1800.00', '3000.00', 'M-53P Probe Cleanser 50mL, Mindray', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '392', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('MCRO0377', 'Inoculation Wire Loop, , ASSISTENT', 'piece', '600.00', '857.00', 'Inoculation Loop, Nichrome Wire Diameter: 3-4mm, w/ Glass Handle, Germany, ASSISTENT', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '393', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('MCRO0378', 'Inoculation Wire Needle, ASSISTENT', 'piece', '450.00', '750.00', 'Inoculation Needle w/o handle, Nichrome Wire, Germany, ASSISTENT', '', '0.00', '0.00', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '394', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('MP-0010', 'Pipettor 10uL, fixed, MATRIX -TULIP', 'unit', '0.00', '0.00', 'Pipettor 10uL, fixed, MATRIX -TULIP', 'TULIP', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '395', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('MP-0025', 'Pipettor 25uL, fixed, MATRIX', 'unit', '0.00', '0.00', 'Pipettor 25uL, fixed, MATRIX -TULIP', 'TULIP', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '396', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('MP-0050', 'Pipettor 50uL, fixed, MATRIX', 'unit', '0.00', '0.00', 'Pipettor 50uL, fixed, MATRIX -TULIP', 'TULIP', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '397', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('MPv-0550', 'Pipettor 5-50uL, fixed, MATRIX', 'unit', '0.00', '0.00', 'Pipettor 5-50uL, fixed, MATRIX -TULIP', 'TULIP', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '398', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('MXRACK01', 'Micropipete Tips Rack 96\'s, MATRIX', 'piece', '0.00', '0.00', 'Micropipete Tips 96\'s & Rack, MATRIX -TULIP', 'TULIP', '0.00', '0.00', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '399', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('PCE-210', 'Hematology Analyzer 3Parameters, PCE-210 ERMA', 'unit', '320000.00', '650000.00', 'Hematology Analyzer 3Parameters, PCE-210 ERMA', '', '0.00', '0.00', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '400', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('PCE212C-1L', 'Cleaning Solution 1L, ERMA', 'bottle', '2250.00', '3750.00', 'Cleaning Solution (M-6) 1x1L, ERMA', '', '0.00', '0.00', '0', '0', '0', '2', '2', '4', '', '', '', '0', '401', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('PCE212C-2L', 'Cleaning Solution, 2L ERMA', 'bottle', '4500.00', '7500.00', 'Cleaning Solution, M-6, 2L ERMA', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '402', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('PD150G', 'Petri Dish, Glass, 150mm', 'piece', '158.00', '270.00', 'Petri Dish, Glass, 150mm', '', '0.00', '0.00', '0', '-2', '0', '0', '0', '0', '', '', '', '0', '403', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('PD150PS10', 'Petri Dish, PS 150mm, 10\'s', 'pack', '265.00', '380.00', 'Petri Dish, PS, 1 Room, 150mmx15mm, Sterile, 10\'s', '', '0.00', '0.00', '25', '5', '-15', '15', '280', '4', '', '', '', '0', '404', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('PD150PS20', 'Petri Dish, PS 150mm, 20\'s', 'pack', '0.00', '760.00', 'Petri Dish, PS, 1 Room, 150mmx15mm, Sterile, 20\'s', '', '0.00', '0.00', '0', '-27', '-5', '5', '500', '2', '', '', '', '0', '405', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'Red Cells for Reverse Grouping, MATRIX', 'kit', '0.00', '0.00', 'ERYGEN RG Reagent Red Cells for Reverse Grouping (A1, A2, B & O), MATRIX -TULIP', 'TULIP', '0.00', '0.00', '0', '-2', '0', '0', '0', '0', '', '', '', '0', '406', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('RF10069', 'RF-Latex, CENTRONICS', 'kit', '2800.00', '5428.00', 'Rheumatoid Factor/RF-Latex 100\'s, CENTRONICS', '', '0.00', '0.00', '0', '-1', '0', '0', '0', '0', '', '', '', '0', '407', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0090', 'ESR Tubes / Black Top, Glass, 2.4ml, 12x75mm, 100\'s', 'tray', '462.00', '840.00', 'ESR Tubes / Black Top, Glass, 2.4ml, 12x75mm, 100\'s', 'TRULAB', '10.00', '583.00', '3', '500', '0', '0', '0', '0', '', '', '', '0', '408', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0104', 'Capillary Tube, Red Tip, Hirschmann', 'vial', '83.00', '210.00', 'Heparinized Capillary Tube, Red Tip,100\'s,Hirschmann', '', '0.00', '0.00', '0', '0', '0', '5', '83', '415', '', '', '', '0', '409', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0319', 'Centrifuge Tube, Screw Cap,15ml', 'pack', '800.00', '1350.00', 'Centrifuge Tube, Screw Cap,15ml, 100\'s', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '410', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0328', 'Microcentrifuge / Aliquot Tubes 2mL 100\'s', 'pack', '120.00', '205.00', 'Microcentrifuge / Aliquot Tubes with snap cap 2mL 100\'s', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '411', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0343', 'Test Tube Brush, small', 'piece', '40.00', '64.00', 'Test Tube Brush, White Bristles, Small, 13mmx76mm', '', '0.00', '0.00', '0', '0', '0', '3', '40', '120', '', '', '', '0', '412', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0352', 'ESR Pipette, Westergren', 'pack', '1400.00', '2546.00', 'ESR Pipette, Westergren, Disposable, 100\'s', '', '10.00', '1768.00', '3', '0', '0', '0', '0', '0', '', '', '', '0', '413', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0386', 'WBC Pipette,  Assistent', 'piece', '370.00', '823.00', 'WBC Pipette, Germany, Assistent', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '414', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0387', 'Coplin Jar,  Round, Glass', 'piece', '326.00', '548.00', 'Coplin Jar, Round, Glass, 5 internal slots for slides', '', '0.00', '0.00', '3', '0', '0', '2', '326', '652', '', '', '', '0', '415', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0394', 'Staining Rack, 20 Slides placer', 'piece', '518.00', '863.00', 'Staining Rack, Papanicolau type, 20 Slides placer, Stainless Steel', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '416', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0399', 'Test Tube Rack, for 20-21mm tubes', 'piece', '392.00', '825.00', 'Test Tube Rack, for 20-21mm Diameter tubes, 40placer, Autoclavable Plastic', '', '0.00', '0.00', '0', '13', '0', '0', '0', '0', '', '', '', '0', '417', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0403', 'Test Tube Rack 15-17mm, Plastic', 'piece', '392.00', '825.00', 'Test Tube Rack, 15-17mm Diameter, 60placer, Autoclavable Plastic', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '418', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0406', 'Rack for Pipette Tips, 10uL', 'each', '392.00', '825.00', 'Rack for Pipette Tips, 10uL', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '419', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0407', 'Rack for Pipette Tips, 200uL (Yellow Tips)', 'each', '392.00', '825.00', 'Pipette Tips Rack for vol. 200uL, Plastic', '', '0.00', '0.00', '2', '0', '0', '1', '392', '392', '', '', '', '0', '420', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0408', 'Rack for Pipette Tips, 1000uL(Blue Tips)', 'piece', '392.00', '825.00', 'Pipette Tips Rack for 1000uL, Plastic', '', '0.00', '0.00', '2', '0', '0', '1', '392', '392', '', '', '', '0', '421', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0454', 'Parafilm, PARAFILM M', 'roll', '0.00', '2838.00', 'Parafilm 4inch x 125ft, PARAFILM M', '', '0.00', '0.00', '1', '0', '0', '0', '0', '0', '', '', '', '0', '422', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0456', 'Filter Paper, Square 600mm x 600mm, TRULAB', 'each', '0.00', '0.00', 'Filter Paper, Square 600mm x 600mm, TRULAB', 'TRULAB ', '0.00', '0.00', '0', '25', '0', '0', '0', '0', '', '', '', '0', '423', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0457', 'Lens Cleaning Tissues 100\'s', 'pad', '70.00', '120.00', 'Lens Cleaning Tissues 100x150mm, 11gr/sqm 100\'s', '', '0.00', '0.00', '5', '0', '0', '3', '70', '210', '', '', '', '0', '424', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0459', 'Blood Lancets, Stainless Flat Steel, ORMED', 'box', '180.00', '860.00', 'Blood Lancets, Stainless Flat Steel 200\'s, ORMED', '', '0.00', '0.00', '0', '0', '0', '5', '180', '900', '', '', '', '0', '425', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0541', 'Blood Lancets 30G, McLance', 'box', '120.00', '350.00', 'Superfine Blood Lancets 30G 100\'s, McLance', '', '0.00', '0.00', '40', '0', '1', '12', '107', '1', '', '', '', '0', '426', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0542', 'Urine Container (Salad Cap)', 'pack', '90.00', '147.00', 'Urine Container 50\'s with Lid cap, unsterile', '', '0.00', '103.00', '2', '1', '0', '0', '0', '0', '', '', '', '0', '427', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0561', 'Sample Cups for DIACHECK C1', 'pack', '2200.00', '0.00', 'Cuvette / Sample Cups 100\'s for DIACHECK C1 coagulation Analyzer', '', '0.00', '0.00', '3', '0', '0', '2', '1', '3', '', '', '', '0', '428', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0561', 'Sample Cups for Genrui GE300', 'pack', '0.00', '0.00', 'Sample Cups for Genrui GE300', 'GENRUI', '0.00', '0.00', '0', '0', '0', '500', '0', '0', '', '', '', '0', '429', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0672', 'Disposable Syringe 10cc, DUNHAME', 'box', '300.00', '650.00', 'Disposable Syringe 10cc G23, DUNHAME', '', '0.00', '0.00', '0', '1', '0', '0', '0', '0', '', '', '', '0', '430', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0673', 'Disposable Syringe 5cc, DUNHAME', 'box', '210.00', '525.00', 'Disposable Syringe 5cc with needle G23x1\" 100\'s, sterile, DUNHAME', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '431', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0674', 'Disposable Syringe 3cc, DUNHAME', 'box', '205.00', '410.00', 'Disposable Syringe 3cc with needle G23x1\" 100\'s, sterile, DUNHAME', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '432', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0675', 'Syringe 1cc 100\'s, Dunhame', 'box', '205.00', '515.00', 'Syringe 1cc 100\'s, Dunhame', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '433', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0680', 'IV Cannula G24, DUNHAME', 'piece', '45.00', '75.00', 'IV Cannula G24, DUNHAME', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '434', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0681', 'IV Cannula G26, DUNHAME', 'piece', '45.00', '75.00', 'IV Cannula G26, DUNHAME', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '435', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0684-L', 'Nitrile Examination Gloves, Large, DUNHAME', 'box', '200.00', '310.00', 'Nitrile Examination Gloves, 100\'s, Large, DUNHAME', 'DUNHAME', '0.00', '0.00', '10', '8', '-3', '8', '179', '1', '', '', '', '0', '436', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0684-M', 'Nitrile Examination Gloves, Medium, DUNHAME', 'box', '200.00', '295.00', 'Nitrile Examination Gloves, 100\'s, Medium, DUNHAME', '', '0.00', '0.00', '50', '2', '3', '44', '179', '7', '', '', '', '0', '437', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0684-S', 'Nitrile Examination Gloves, DUNHAME', 'box', '200.00', '295.00', 'Nitrile Examination Gloves 100\'s, Small, DUNHAME', '', '0.00', '0.00', '40', '0', '0', '3', '179', '536', '', '', '', '0', '438', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0694', 'Ultraporous Hypoallergenic 1\", SURGICAL TAPE', 'box', '200.00', '400.00', 'Ultraporous Hypoallergenic 1\"x10yds 12rolls, Non-woven Cloth, SURGICAL TAPE', '', '0.00', '0.00', '10', '0', '0', '0', '0', '0', '', '', '', '0', '439', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0695', 'Ultraporous Hypoallergenic 1/2\", SURGICAL TAPE', 'box', '200.00', '400.00', 'Ultraporous Hypoallergenic 1/2\"x10yds 24rolls, Non-woven Cloth, SURGICAL TAPE', '', '0.00', '0.00', '0', '-125', '0', '0', '0', '0', '', '', '', '0', '440', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0697', 'Disinfectant Solution, O-benzyl-p-chlorophenol, Lysol', 'gallon', '0.00', '2572.00', 'Disinfectant Solution, O-benzyl-p-chlorophenol, Lysol', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '441', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0699', 'Alcohol Prep Pads 100\'s, CAREMED', 'box', '100.00', '182.00', 'Alcohol Prep Pads 100\'s, CAREMED', 'CAREMED', '0.00', '114.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '442', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0700', 'Adult Diaper 10\'s, DUNHAME', 'pack', '155.00', '228.00', 'Adult Diaper 10\'s, DUNHAME', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '443', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0701', 'Face Mask Earloop, DUNHAME', 'box', '80.00', '120.00', 'Face Mask Earloop Non-woven 50\'s, DUNHAME', '', '0.00', '0.00', '0', '0', '0', '14', '80', '1', '', '', '', '0', '444', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0702', 'Infusion Set (Microset), DUNHAME', 'piece', '25.00', '62.50', 'Infusion Set (Microset), DUNHAME', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '445', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0703', 'Infusion Set (Macroset), DUNHAME', 'piece', '25.00', '62.50', 'Infusion Set (Macroset), DUNHAME', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '446', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0704', 'Volumetric Infusion Set (Soluset) 150mL, Dunhame', 'piece', '30.00', '60.00', 'Volumetric Infusion Set (Soluset) 150mL, Dunhame', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '447', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0705', 'Face Mask N95 8210, 3M', 'box', '1160.00', '1950.00', 'Face Mask N95 8210, 20\'s, 3M', '', '0.00', '0.00', '0', '0', '0', '1', '1', '928', '', '', '', '0', '448', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0706', 'Face Mask, Earloop with Charcoal, ORMED', 'box', '130.00', '218.00', 'Face Mask, Earloop, 4 ply with Charcoal, 50\'s, ORMED', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '449', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0707', 'Thermal Paper 57x30mm', 'roll', '50.00', '100.00', 'Thermal Paper 57x30mm', '', '0.00', '0.00', '20', '0', '0', '13', '45', '580', '', '', '', '0', '450', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0709', 'Cuvette 100\'s, Flat bottom', 'box', '0.00', '1500.00', 'Cuvette 100\'s, Flat bottom', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '451', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0711', 'Eosin Yellow (Y) powder, SCHARLAU', 'bottle', '1350.00', '2850.00', 'Eosin Yellow (Y) powder, SCHARLAU', 'SCHARLAU', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '452', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0712', 'Harris Hematoxylin Liquid 500ml,SCHARLAU', 'bottle', '0.00', '0.00', 'Harris Hematoxylin Liquid 500ml,SCHARLAU', 'SCHARLAU', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '453', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0715', 'Hypoallergenic Surgical Tape 1\",Transpore, 3M', 'box', '690.00', '986.00', 'Hypoallergenic Surgical Tape 1\" 12\'s, Transpore, 3M', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '454', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0716', 'Surgical Gloves, 7.0, McBRIDE', 'box', '0.00', '0.00', 'Surgical Gloves, 7.0 Sterile, 50\'s, McBRIDE', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '455', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0717', 'Surgical Gloves, 6.5, McBRIDE', 'box', '0.00', '0.00', 'Surgical Gloves, 6.5 Sterile, 50\'s, McBRIDE', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '456', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0718', 'Thermal Paper for EASYLYTE ', 'roll', '150.00', '550.00', 'Thermal Paper for EASYLYTE ', '', '0.00', '0.00', '0', '0', '-1', '8', '150', '1', '', '', '', '0', '457', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0719', 'Safety Goggles, YESTAR', 'piece', '28.00', '100.00', 'Safety Goggles, YESTAR', '', '0.00', '0.00', '0', '0', '0', '2', '28', '56', '', '', '', '0', '458', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0720', 'EDTA K2 0.5mL, SUPER TUBE', 'tray', '500.00', '1200.00', 'EDTA K2 0.5mL, PP cap, 100s, SUPER TUBE', 'SUPER TUBE', '0.00', '556.00', '34', '0', '34', '0', '0', '0', '', '', '', '0', '459', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0734', 'Cotton Swab Applicator, Jumbo', 'pack', '27.00', '120.00', 'Cotton Swab Applicator, Sterile, Jumbo, 50\'s', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '460', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0737', 'Alcohol Pad, MC', 'box', '80.00', '140.00', 'Alcohol Prep Pad 100\'s, 70% Isopropyl, 65mmx30mm-2ply, MC', 'MC', '0.00', '91.00', '125', '0', '0', '0', '0', '0', '', '', '', '0', '461', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPL0738', 'Culture tube, Borosilicate Glass, 20x150mm 30mL', 'pack', '3000.00', '5683.00', 'Culture tube, Borosilicate Glass, Flat botton, Screw Cap, 20x150mm 30mL, 100s', '', '0.00', '3410.00', '1', '0', '0', '0', '0', '0', '', '', '', '0', '462', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('SUPLECG63', 'ECG Paper 63mmx30mm, 5rolls', 'roll', '450.00', '805.00', 'ECG Paper 63mmx30mm, 1x5rolls', '', '10.00', '705.00', '10', '0', '0', '-35', '0', '0', '', '', '', '0', '463', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('U500USA', 'Urine Strips Analyzer, U500, INSIGHT ', 'unit', '45000.00', '75000.00', 'Urine Strip Analyzer U500 (Semi-Automatic) for 4,5,10 & 11 parameters, INSIGHT(Acon)', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '464', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('UPS', 'UPS', 'unit', '0.00', '0.00', 'Uninterruptible Power Supply (UPS)', '', '0.00', '0.00', '1', '0', '0', '1', '0', '0', '', '', '', '0', '465', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('WS-1200', 'Work Station, MATRIX', 'unit', '0.00', '0.00', 'Work Station, MATRIX -TULIP', 'TULIP', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '466', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Cover Glass / Slip 24 x 60mm 100s, Citoglas', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '467', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prolance High Activated Lancets 200\'s', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '468', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'MET-THC urine 25\'s with specimen bottle 60mL, WONDFO', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '469', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'hCG Rapid Card urine 25\'s, BIOTRACER', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '470', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Embedding / Tissue Cassette with Lid 250\'s, CITOTEST', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '471', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Microlet Lancing Device, Bayer', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '472', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Blood Lancets 23G 100\'s', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '473', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Centronorn 10x5ml, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '474', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Centronorm 20x5ml,CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '475', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Centropath 10x5mL, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '476', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Cholesterol fluid 2x50ml,CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '477', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Creatinine 2x100ml, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '478', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Creatinine Reagent Jaffe Kin.Fluid (1+1) 2x250ml, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '479', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Glucose-PAP Fluid Reagent 2x50mL, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '480', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Glucose-PAP Fluid Reagent 4x100mL, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '481', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'HDL-CHOLE Homogen w/o cal. 2x60ml, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '482', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'HDL-Cholesterol ppt 2x100mL, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '483', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Total-Cholesterol, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '484', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Total Protein 2x50mL, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '485', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Triglycerides 2x50mL, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '486', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Surgical Mask Earloop 50\'s, MedGuard', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '487', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Face mask Earloop Non-woven 50\'s,ROSEMED', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '488', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Creatinine Reagent 4x50ml, Biosystems', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '489', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Cholesterol HDL 2+2x50ml, Biosystems', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '490', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Uric Acid (BUA) Reagent 1x200mL, Biosystems', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '491', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Thermal Paper 110mm 1x5rolls, VIDAS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '492', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'CLEANING SOLUTION C (40ml)', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '493', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Diff ACT Pack 20L, COULTER', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '494', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Distilled Water Laboratory Grade 1L, MEDIC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '495', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'EDTA K3 5ml Vacuum Tubes, 100\'s Glass, MEDICLEAN', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '496', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'EDTA k2 2mL 100\'s 12x75mm, Plastic, BRANDEN', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '497', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'EDTA K2 3mL 100\'s 12x75mm, Plastic, BRANDEN', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '498', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Purple Top, Edta k2 PS 5ml Short Tube 100\'s,Trulab', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '499', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'EDTA K2 2mL Vacuum Tubes,100\'s, BRANDEN', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '500', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'EDTA k3 5ml Vacuum Tubes, 100\'s Glass, LABTECH', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '501', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'EDTA k3 5ml Vacuum Tubes, 100\'s Glass, SURGITECH', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '502', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Purple Top, Edta k3 Glass 4ml,100\'s tubes,Trulab', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '503', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Examination Gloves Latex 100\'s, Large, Indoplas', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '504', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Examination Gloves Latex 100\'s, Medium, Indoplas', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '505', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Examination Gloves Latex 100\'s, Small, Indoplas', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '506', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Examination Gloves Vinyl Powder free 100\'s, Medium, Careplus', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '507', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Examination Gloves Vinyl powder free 100\'s, Small, Careplus', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '508', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'FOB Rapid Card 50\'s, BIOTRACER', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '509', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'FOB Rapid Card, BIOTRACER', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '510', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'FOB Rapid Card 25\'s, WONDFO', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '511', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'HDL-Cholesterol Homogen w/ cal. 2x60ml, CENTRONIC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '512', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'ID Diluent 2 2x100ml, BIO-RAD', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '513', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Metal Tray 10\"x18cmx8cm rectagular, stainless steel', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '514', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Uric Acid 2x60mL, CENTRONIC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '515', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'AFP 60T, VIDAS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '516', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Anti-HBs 60T, VIDAS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '517', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'B-hCG 60T, VIDAS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '518', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'CA 19-9 30T, VIDAS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '519', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'VIDAS CA-125', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '520', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'CEA 60T, VIDAS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '521', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'FT3 ELISA 60T, VIDAS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '522', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'FT4 60T, VIDAS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '523', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'VIDAS HBsAg', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '524', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'T4 60T, VIDAS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '525', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'VIDAS T3 60T', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '526', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'TPSA, VIDAS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '527', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Troponin I Ultra 60T, VIDAS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '528', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'TSH 60T, VIDAS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '529', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Yellow Top Vacuum Tubes with Gel Clot Activator 4mL 100\'s, 12x75mm Glass, BRANDEN', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '530', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Anti-HBs Rapid Card 30\'s, BIOTRACER', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '531', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'EDTA 5mL vacuum Tubes,100\'s, HINSO', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '532', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Anti-Syphilis Rapid Card 30\'s, BIOTRACER', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '533', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'PSA Rapid Card 30\'s, BIOTRACER', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '534', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Urea-UV 2x60mL, CENTRONIC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '535', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Educational Microscope High-Level, NOVEL', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '536', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Filter Paper, 12.5cm,Qualitative 100\'s, Double Rings', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '537', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', '10% Buffered Formalin Solution 1L, MEDIC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '538', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Formalin Solution 37% 1L, MEDIC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '539', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Grams Stain Decolorizer 500ml,MEDIC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '540', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'H.Pylori Serum/Plasma Test Cassette,WONDFO', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '541', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'HIV Test Card 40\'s, INTEC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '542', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'OGTT Beverage Drink 50G Orange, MEDIC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '543', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'OGTT Beverage Drink 75G Orange, MEDIC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '544', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Methanol AR, 1L, MEDIC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '545', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Microcentrifuge Tubes with snap cap 2mL 500\'s', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '546', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Microhematocrit Capillary Tubes Na-Heparinized 100\'s - Red tip, VITREX', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '547', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Microhematocrit Capillary Tubes Na-Heparinized 100\'s - Red tip, NRIS Digisystem', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '548', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Microlet Blood Lancets 100\'s, BAYER', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '549', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Filter Papers No.40 Ashless Circle Diameter 125mm 100\'s, WHATMAN, GE', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '550', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Weebag / Urine Collector', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '551', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Water Bath SY-1L2H, BIOBASE', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '552', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'OGTT Beverage Drink 75G 200mL Lemon, VITALNUTRITECH', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '553', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Urinalysis Strip Control Level 1&2 2x12mL, Biorad', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '554', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'FOB Rapid Card 100\'s, IMMUNO HEMA-SCREEN', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '555', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'NOVEL Optics Binocular Laboratory Microscope Model: N-180M', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '556', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'OGTT Beverage Drink 100G 200mL Orange, VITALNUTRITECH', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '557', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Povidone Iodine 10% Cheme', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '558', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared Blood Agar / McConkey Plate (BAP/MC), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '559', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared Blood Agar Plate (BAP), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '560', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared Brain Heart Infusion (BHI), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '561', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared Chocolate Agar Plate (CAP), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '562', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared Eosin Methylene Blue Agar Plate (EMB), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '563', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared Lysine Iron Agar (LIA), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '564', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared Mueller Hinton Agar (MHA), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '565', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared McConkey Agar Plate (MC), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '566', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared Nutrient Agar (NA), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '567', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared Simmon Citrate Agar (SCA), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '568', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared Triple Sugar Iron Agar (TSI), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '569', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared Sulfide Indole Motility (SIM), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '570', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Prepared Voges - Proskauer Media (VPM), MIDC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '571', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Anti HAV Rapid Test 25T, BIOCARE', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '572', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Chikungunya IgM Combo 25\'s, ARIA', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '573', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Chikungunya IgM Combo 10\'s, ARIA', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '574', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Plain / Red Top Microtainer 0.5mL 50\'s, TRULAB', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '575', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Red Top Tubes No Additive 5mL 100s, Plastic, Trulab', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '576', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Refrigerator Thermometer, TRULAB', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '577', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Serological Centrifuge 24placer, NEUATION', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '578', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Safe T-Pro Uno 23G 200\'s Yellow, ACCU-CHECK', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '579', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Transfer Pipettes 1mL 500\'s, Disposable, Graduated, Large bulb', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '580', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Centrifuge Tubes, Printed Graduation, Gray Screw cap, 15mL', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '581', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Test Tube Brush,White Bristles,Large,35mmx102mm,TRULAB', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '582', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Sharp Disposal Container 1L Capacity', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '583', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Disposable Syringe 1cc with needle 100\'s, sterile, TERUMO', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '584', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Test Tube 5ml 500\'s, PP, TRULAB', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '585', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Ethel Alcohol 70% 500mL, BIOGENIC', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '586', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Test Tube Brush,White Bristles,Medium,19mmx89mm,TRULAB', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '587', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Underpads 8\'s 635x914mm, MC BRIDE', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '588', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Tourniquet Flat Rubber 1x18mm', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '589', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', '', '', '0.00', '0.00', 'Underpads 900x600mm,10\'s', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '590', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'Albumin,CENTRONICS', 'kit', '0.00', '0.00', 'Albumin 2x50ml,CENTRONICS', '', '0.00', '0.00', '0', '1', '0', '0', '0', '0', '', '', '', '0', '591', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'Alkaline Phosphatase 2x60mL, CENTRONICS', 'kit', '0.00', '0.00', 'Alkaline Phosphatase 2x60mL, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '592', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'ALT/GPT 1x200ml, BIOSYSTEMS', 'kit', '0.00', '0.00', 'ALT/GPT 1x200ml, BIOSYSTEMS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '593', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'ALT/SGPT 2x60mL, CENTRONICS', 'kit', '0.00', '0.00', 'ALT/SGPT 2x60mL, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '594', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'ALT/SGPT 4x120mL, CENTRONICS', 'kit', '0.00', '0.00', 'ALT/SGPT 4x120mL, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '595', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'Amylase 2X60ML, CENTRONICS', 'kit', '0.00', '0.00', 'Amylase 2X60ML, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '596', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'AST/SGOT 2X60mL, CENTRONICS', 'kit', '0.00', '0.00', 'AST/SGOT 2X60mL, CENTRONICS', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '597', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR0207', 'Direct Bilirubin 500mL, DIALAB', 'kit', '0.00', '0.00', 'Direct Bilirubin 5x100mL, DIALAB', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '598', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR0208', 'Total Bilirubin 500mL, DIALAB', 'kit', '0.00', '0.00', 'Total Bilirubin 5x100mL, DIALAB', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '599', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR0215', 'Creatinine Reagent 500mL, DIALAB', 'kit', '0.00', '0.00', 'Creatinine Reagent 5x100mL, DIALAB', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '600', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR0217', 'Glucose Reagent 500mL, Dialab', 'kit', '0.00', '0.00', 'Glucoe Reagent 5x100mL, Dialab', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '601', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR0230', 'SGPT 5x50mL, Dialab', 'kit', '0.00', '0.00', 'SGPT 5x50mL, Dialab', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '602', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR0231', 'SGOT 250mL, Dialab', 'kit', '0.00', '0.00', 'SGOT 5x50mL, Dialab', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '603', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('BCR0235', 'Uric Acid/BUA, DIALAB', 'kit', '0.00', '8678.00', 'Uric Acid/BUA 5x100mL, DIALAB', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '604', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'Cholesterol 4x50ml, BIOMAXIMA', 'kit', '0.00', '0.00', 'Cholesterol 4x50ml, BIOMAXIMA', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '605', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'Creatinine Reagent 3x100ml, BIOMAXIMA', 'kit', '0.00', '0.00', 'Creatinine Reagent 3x100ml, BIOMAXIMA', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '606', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'Diluent Solution 5L, ERMA', 'box', '0.00', '0.00', 'Diluent Solution 5L, ERMA', '', '0.00', '0.00', '0', '1', '0', '1', '0', '0', '', '', '', '0', '607', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'HDL- Cholesterol ppt, BIOMAXIMA', 'kit', '0.00', '0.00', 'HDL- Cholesterol ppt 4x50ml, BIOMAXIMA', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '608', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('', 'Uric Acid 4x50ml, BIOMAXIMA', 'kit', '0.00', '0.00', 'Uric Acid 4x50ml, BIOMAXIMA', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '609', '0000-00-00', '0000-00-00', '', '', '', '');
INSERT INTO `inventory` VALUES ('123456789', 'stepler', 'piece', '250.00', '300.00', 'Use on Paper', 'Kingston', '0.05', '270.00', '0', '5', '0', '0', '0', '0', 'VAT 12% (Goods)', '', '', '0', '610', '0000-00-00', '2019-05-14', '', '', 'SKU-1234-567', '');
INSERT INTO `inventory` VALUES ('000000', 'susie', 'box', '90.00', '180.00', '', '', '0.10', '150.00', '0', '200', '0', '0', '0', '0', 'VAT 12% (Goods)', '', '', '0', '611', '2019-05-14', '2019-05-14', '', '', 'SKU-0000-000', '');
INSERT INTO `inventory` VALUES ('99999', 'Watch', 'piece', '2500.00', '5000.00', '', 'GSHOCK', '0.05', '4500.00', '0', '10', '0', '0', '0', '0', 'VAT 12% (Goods)', '', '', '0', '612', '2019-05-14', '2019-05-14', '', '', 'SKU-9999-999', '');
INSERT INTO `inventory` VALUES ('12345', 'sample', 'piecs', '10.00', '20.00', '', 'HP', '0.05', '15.00', '0', '20', '0', '0', '0', '0', 'VAT 12% (Goods)', '', '', '0', '613', '2019-05-01', '2019-05-17', '', '', 'SKU-1234-555', '');
INSERT INTO `inventory` VALUES ('qwer1234', '', '', '0.00', '0.00', '', '', '0.00', '0.00', '0', '0', '0', '0', '0', '0', '', '', '', '0', '614', '0000-00-00', '0000-00-00', '', '', '', '');

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
INSERT INTO `product_sale_agent` VALUES ('101', '007JMBND', '0', 'abcCM', 'Friday 5th of July 2019 10:00:56 AM', '1');
INSERT INTO `product_sale_agent` VALUES ('101', 'CTSS0052', '0', 'abcCM', 'Friday 5th of July 2019 10:00:59 AM', '2');
INSERT INTO `product_sale_agent` VALUES ('101', 'BD-5250', '0', 'abcCM', 'Friday 5th of July 2019 10:01:02 AM', '3');
INSERT INTO `product_sale_agent` VALUES ('101', 'SUPL0735', '0', 'abcCM', 'Friday 5th of July 2019 10:01:04 AM', '4');
INSERT INTO `product_sale_agent` VALUES ('101', 'handheld ', '0', 'abcCM', 'Friday 5th of July 2019 10:01:07 AM', '5');
INSERT INTO `product_sale_agent` VALUES ('102', 'SUPL0735', '1', 'aile bioline', 'Friday 5th of July 2019 01:54:25 PM', '6');
INSERT INTO `product_sale_agent` VALUES ('102', 'handheld ', '1', 'aile bioline', 'Friday 5th of July 2019 01:54:28 PM', '7');
INSERT INTO `product_sale_agent` VALUES ('102', 'CTSS0052', '1', 'aile bioline', 'Friday 5th of July 2019 01:54:33 PM', '8');
INSERT INTO `product_sale_agent` VALUES ('102', '007JMBND', '1', 'aile bioline', 'Friday 5th of July 2019 01:54:36 PM', '9');
INSERT INTO `product_sale_agent` VALUES ('102', 'BD-5250', '1', 'aile bioline', 'Friday 5th of July 2019 01:54:41 PM', '10');
INSERT INTO `product_sale_agent` VALUES ('101', 'CTSS0052', '1', 'abcCM', 'Tuesday 9th of July 2019 01:05:01 PM', '11');

-- ----------------------------
-- Table structure for `prsubtbl`
-- ----------------------------
DROP TABLE IF EXISTS `prsubtbl`;
CREATE TABLE `prsubtbl` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `item_descript` varchar(100) NOT NULL,
  `criticallevel` varchar(100) NOT NULL,
  `ohs` varchar(100) NOT NULL,
  `bookingno` varchar(100) NOT NULL,
  `bookingqty` int(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `prNo` varchar(100) NOT NULL,
  `prID` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of prsubtbl
-- ----------------------------
INSERT INTO `prsubtbl` VALUES ('4', '100188', 'Water Purifier, w/ 2year warranty, eSPRING', '', '', '', '3', '', '', '102');
INSERT INTO `prsubtbl` VALUES ('5', '19A002', 'HBsAg Multidevice 100T, cassette, WB/serum/plasma, SD', '', '', '', '5', '', '', '102');
INSERT INTO `prsubtbl` VALUES ('6', '19A009', 'Anti-HCV Rapid Card 40\'s, INTEC', '', '', '', '300', '', '', '22');
INSERT INTO `prsubtbl` VALUES ('7', '19A008', 'Anti-HCV Rapid Card Multi-device 100T,SD', '', '', 'Booking 101', '100', '', '', '100');

-- ----------------------------
-- Table structure for `purchaserequest`
-- ----------------------------
DROP TABLE IF EXISTS `purchaserequest`;
CREATE TABLE `purchaserequest` (
  `prID` int(100) NOT NULL,
  `prdate` date NOT NULL,
  `department` varchar(100) NOT NULL,
  `requestby` varchar(100) NOT NULL,
  `approvedby` varchar(100) NOT NULL,
  `itemCode` varchar(100) NOT NULL,
  `itemdescription` varchar(100) NOT NULL,
  `criticallevel` varchar(100) NOT NULL,
  `ohs` varchar(100) NOT NULL,
  `BRNo` varchar(100) NOT NULL,
  `BRqty` int(100) NOT NULL,
  `PONo` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `purchaseinvno` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `terms` int(100) NOT NULL,
  `pidate` date NOT NULL,
  `duedays` int(100) NOT NULL,
  `duenot` varchar(100) NOT NULL,
  PRIMARY KEY (`prID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of purchaserequest
-- ----------------------------
INSERT INTO `purchaserequest` VALUES ('22', '2019-06-12', 'Marketing', 'Markoz L.Cutamora', 'Markoz L.Cutamora', '', '', '', '', '', '0', 'PO 104', '', 'PI 101', '', '30', '2019-05-12', '-2', 'Past Due');
INSERT INTO `purchaserequest` VALUES ('100', '2019-06-12', 'Warehouse', 'Markoz L.Cutamora', 'Markoz L.Cutamora', '', '', '', '', '', '0', '', '', '', '', '0', '0000-00-00', '0', '');
INSERT INTO `purchaserequest` VALUES ('102', '2019-06-12', 'Warehouse', 'Markoz L.Cutamora', 'Markoz L.Cutamora', '', '', '', '', '', '0', '', '', '', '', '0', '0000-00-00', '0', '');

-- ----------------------------
-- Table structure for `salequotes`
-- ----------------------------
DROP TABLE IF EXISTS `salequotes`;
CREATE TABLE `salequotes` (
  `ID` int(100) NOT NULL,
  `issue_date` date NOT NULL,
  `code` int(100) NOT NULL,
  `billing_address` varchar(100) NOT NULL,
  `del_address` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `custID` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `reference` int(100) NOT NULL AUTO_INCREMENT,
  `bookingcode` varchar(100) NOT NULL,
  `statusOS` varchar(100) NOT NULL,
  `terms` int(100) NOT NULL,
  `typeofbooking` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `creditlimit` int(100) NOT NULL,
  `approvalcode` varchar(100) NOT NULL,
  `PO_No` varchar(100) NOT NULL,
  `OS_No` int(100) NOT NULL,
  PRIMARY KEY (`reference`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of salequotes
-- ----------------------------
INSERT INTO `salequotes` VALUES ('0', '2019-06-05', '18', 'Purok 3C Brgy Ampayon Butuan City', 'Purok3C Brgy. Ampayon Butuan City', '', '1', '', '', 'KMC Hospital', '2', '6-2019-100', 'Approved', '30', 'Delivery Receipt', '', '100000', '', '123', '321');
INSERT INTO `salequotes` VALUES ('0', '2019-06-08', '19', 'Butuan City Philippines', 'Doongan Butuan City', '', '2', '', '', 'AU2 Mobile', '3', '6-2019-102', 'Approved', '30', 'Charge Invoice', '', '10000', '', '456', '654');

-- ----------------------------
-- Table structure for `salequoteslist`
-- ----------------------------
DROP TABLE IF EXISTS `salequoteslist`;
CREATE TABLE `salequoteslist` (
  `itemCode` varchar(100) NOT NULL,
  `reference` int(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_descript` varchar(100) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `QTY_sb` varchar(100) NOT NULL,
  `sales_price` int(100) NOT NULL,
  `maxdiscount` double(99,30) NOT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `SKU` varchar(100) NOT NULL,
  `dateexpire` date NOT NULL,
  `LotNo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of salequoteslist
-- ----------------------------
INSERT INTO `salequoteslist` VALUES ('19A004', '2', 'HBsAg Rapid 50\'s, Strips, INTEC', 'HBsAg Rapid 50\'s, Strips, INTEC', 'kit', '100', '2436', '0.000000000000000000000000000000', '1', '', '0000-00-00', '');
INSERT INTO `salequoteslist` VALUES ('19A005', '2', 'Anti-HBs 25\'s, WONDFO', 'Anti-HBs Cassette Test 25\'s,WONDFO', 'kit', '10', '2736', '0.000000000000000000000000000000', '2', '', '0000-00-00', '');
INSERT INTO `salequoteslist` VALUES ('19A009', '3', 'Anti-HCV Rapid Card 40\'s, INTEC', 'Anti-HCV Rapid Card 40\'s, INTEC', 'kit', '10', '5618', '0.000000000000000000000000000000', '3', '', '0000-00-00', '');
INSERT INTO `salequoteslist` VALUES ('102650024', '3', 'ABO/ Rho (D) Forward Grouping, MATRIX', 'ABO/ Rho (D) Forward Grouping 24 gel cards, MATRIX -TULIP', 'kit', '5', '8500', '0.000000000000000000000000000000', '4', '', '0000-00-00', '');

-- ----------------------------
-- Table structure for `salesinvoice`
-- ----------------------------
DROP TABLE IF EXISTS `salesinvoice`;
CREATE TABLE `salesinvoice` (
  `InvID` int(100) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `salesbill_add` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `amnt_tax_inclusive` varchar(100) NOT NULL,
  `OS_No` varchar(100) NOT NULL,
  `PO_No` varchar(100) NOT NULL,
  `reference` varchar(50) NOT NULL,
  `sales_code` varchar(50) NOT NULL,
  `month_sales` varchar(100) NOT NULL,
  `terms` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `statusstock` varchar(100) NOT NULL,
  `reason_cancel` varchar(100) NOT NULL,
  `invoicecode` varchar(100) NOT NULL,
  `typeofbill` varchar(100) NOT NULL,
  `InvNo` varchar(100) NOT NULL,
  `approval date` date NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `SONo` varchar(100) NOT NULL,
  PRIMARY KEY (`InvID`)
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of salesinvoice
-- ----------------------------
INSERT INTO `salesinvoice` VALUES ('1', '2019-06-17', 'test', 'test', 'test', 'test', 'test', 'test', '2019-101', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '0000-00-00', 'BMC', '123');

-- ----------------------------
-- Table structure for `salesinvoicelist`
-- ----------------------------
DROP TABLE IF EXISTS `salesinvoicelist`;
CREATE TABLE `salesinvoicelist` (
  `itemCode` varchar(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_descript` varchar(100) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `sales_price` int(100) NOT NULL,
  `maxdiscount` double(99,30) NOT NULL,
  `InvNo` varchar(100) NOT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `reference` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of salesinvoicelist
-- ----------------------------

-- ----------------------------
-- Table structure for `salesorder`
-- ----------------------------
DROP TABLE IF EXISTS `salesorder`;
CREATE TABLE `salesorder` (
  `salesID` int(100) NOT NULL AUTO_INCREMENT,
  `dateissue` date NOT NULL,
  `salesbill_add` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `amnt_tax_inclusive` varchar(100) NOT NULL,
  `OS_No` varchar(100) NOT NULL,
  `PO_No` varchar(100) NOT NULL,
  `reference` int(100) NOT NULL,
  `sales_code` varchar(50) NOT NULL,
  `month_sales` varchar(100) NOT NULL,
  `terms` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `statusstock` varchar(100) NOT NULL,
  `reason_cancel` varchar(100) NOT NULL,
  `approvalcode` varchar(100) NOT NULL,
  `typeofbill` varchar(100) NOT NULL,
  `SONo` varchar(100) NOT NULL,
  `approval date` date NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `bookingcode1` varchar(100) NOT NULL,
  `code` int(100) NOT NULL,
  `booking code` varchar(100) NOT NULL,
  `custID` varchar(100) NOT NULL,
  `InvID` int(100) NOT NULL,
  `InvNo` varchar(100) NOT NULL,
  `deldate` date NOT NULL,
  `colID` int(100) NOT NULL,
  `delnote` varchar(100) NOT NULL,
  PRIMARY KEY (`salesID`)
) ENGINE=MyISAM AUTO_INCREMENT=296 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of salesorder
-- ----------------------------
INSERT INTO `salesorder` VALUES ('292', '2019-06-08', 'Purok 3C Brgy Ampayon Butuan City', 'Sale Sample 1', '', '', '321', '123', '2', '', '', '30', '', 'Delivered', 'Return', '', 'Delivery Receipt', '6-2019-292', '0000-00-00', 'KMC Hospital', '', '18', '6-2019-100', '1', '2', 'DR - 2', '2019-06-09', '0', '');
INSERT INTO `salesorder` VALUES ('295', '2019-06-09', 'Butuan City Philippines', 'Sale Sample 2', '', '', '654', '456', '3', '', '', '30', '', 'Delivered', '', '', 'Charge Invoice', '6-2019-295', '0000-00-00', 'AU2 Mobile', '', '19', '6-2019-102', '2', '1', 'CI-1', '2019-06-09', '0', '');

-- ----------------------------
-- Table structure for `salesorderlist`
-- ----------------------------
DROP TABLE IF EXISTS `salesorderlist`;
CREATE TABLE `salesorderlist` (
  `itemCode` varchar(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_descript` varchar(100) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `sales_price` int(100) NOT NULL,
  `maxdiscount` double(99,30) NOT NULL,
  `SONo` varchar(100) NOT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `reference` int(100) NOT NULL,
  `salesID` int(100) NOT NULL,
  `SKU` varchar(100) NOT NULL,
  `dateexpire` date NOT NULL,
  `code` int(100) NOT NULL,
  `bookingcode` varchar(100) NOT NULL,
  `vat` date NOT NULL,
  `LotNo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of salesorderlist
-- ----------------------------
INSERT INTO `salesorderlist` VALUES ('19A004', 'HBsAg Rapid 50\'s, Strips, INTEC', 'HBsAg Rapid 50\'s, Strips, INTEC', 'kit', '100', '2436', '0.000000000000000000000000000000', '', '293', '0', '292', '123', '2019-06-08', '0', '', '0000-00-00', '012');
INSERT INTO `salesorderlist` VALUES ('19A005', 'Anti-HBs 25\'s, WONDFO', 'Anti-HBs Cassette Test 25\'s,WONDFO', 'kit', '10', '2736', '0.000000000000000000000000000000', '', '294', '0', '292', '321', '2019-06-08', '0', '', '0000-00-00', '210');
INSERT INTO `salesorderlist` VALUES ('19A009', 'Anti-HCV Rapid Card 40\'s, INTEC', 'Anti-HCV Rapid Card 40\'s, INTEC', 'kit', '10', '5618', '0.000000000000000000000000000000', '', '299', '0', '295', '', '0000-00-00', '0', '', '0000-00-00', '');
INSERT INTO `salesorderlist` VALUES ('102650024', 'ABO/ Rho (D) Forward Grouping, MATRIX', 'ABO/ Rho (D) Forward Grouping 24 gel cards, MATRIX -TULIP', 'kit', '5', '8500', '0.000000000000000000000000000000', '', '300', '0', '295', '', '0000-00-00', '0', '', '0000-00-00', '');

-- ----------------------------
-- Table structure for `supplier`
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `supp_name` varchar(100) NOT NULL,
  `supp_code` varchar(100) NOT NULL,
  `supp_add` varchar(100) NOT NULL,
  `supp_email` varchar(100) NOT NULL,
  `supp_creditlimit` int(100) NOT NULL,
  `supp_bankacct` varchar(100) NOT NULL,
  `supp_contact` varchar(100) NOT NULL,
  `suppID` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('medical imports', '001', 'butuan city', 'yahoo.com', '5000', 'BPI', '0987654321', 'S001');
INSERT INTO `supplier` VALUES ('Ken Mark', '002', 'Cutamora', 'kenmafel@gmail.com', '70000', 'BDO', '0948310231', 'S002');
INSERT INTO `supplier` VALUES ('piling', '003', 'ampayon', '', '1000000', 'MetroBank', '', 'S003');
INSERT INTO `supplier` VALUES ('Mega Clinics', '1231', '', '', '500000', 'BPI', '09483102313', 'S004');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserCode` int(10) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `TransDate` datetime DEFAULT NULL,
  `IsOnline` int(1) DEFAULT NULL,
  PRIMARY KEY (`UserCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('-1', 'Israel Dagangon', null, null, '0');
INSERT INTO `user` VALUES ('1', 'Eleazar Saballa', '2015-11-09 14:38:21', '2015-11-09 14:38:21', '0');

-- ----------------------------
-- Table structure for `userdetail`
-- ----------------------------
DROP TABLE IF EXISTS `userdetail`;
CREATE TABLE `userdetail` (
  `UserCode` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `AccessCode` varchar(255) DEFAULT NULL,
  `AccessLevel` int(10) DEFAULT NULL,
  `AccessThreshold` int(10) DEFAULT NULL,
  `AccessStart` int(10) DEFAULT NULL,
  `AccessEnd` int(10) DEFAULT NULL,
  `isActive` int(10) DEFAULT NULL,
  `SecurityQuestion` varchar(255) DEFAULT NULL,
  `SecurityAnswer` varchar(255) DEFAULT NULL,
  `SecurityCasing` int(10) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `TransDate` datetime DEFAULT NULL,
  PRIMARY KEY (`UserCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userdetail
-- ----------------------------
INSERT INTO `userdetail` VALUES ('1', '-1', 'jais', '1352-3520-3232-3104-3648-3680-3360-3456-3104-3552-3392-1160', '1', '3', '0', '0', '1', null, null, null, null, null);
INSERT INTO `userdetail` VALUES ('2', '1', 'Ely', '1512-3360-1568-1536-1600-3456-3456-3232-3648-3648-3104-3264-3232-3456-1568-2080-1096', '2', '3', '0', '0', '1', '', '', '0', '2015-11-09 14:38:21', '2015-11-09 14:38:21');

-- ----------------------------
-- View structure for `salequotelistq`
-- ----------------------------
DROP VIEW IF EXISTS `salequotelistq`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `salequotelistq` AS select `salequoteslist`.`itemCode` AS `itemCode`,`salequoteslist`.`reference` AS `reference`,`salequoteslist`.`item_name` AS `item_name`,`salequoteslist`.`item_descript` AS `item_descript`,`salequoteslist`.`unit_name` AS `unit_name`,`salequoteslist`.`QTY_sb` AS `QTY_sb`,`salequoteslist`.`sales_price` AS `sales_price`,`salequoteslist`.`maxdiscount` AS `maxdiscount` from (`salequotes` join `salequoteslist` on((`salequotes`.`reference` = `salequoteslist`.`reference`))) ;
