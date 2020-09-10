/*
Navicat MySQL Data Transfer

Source Server         : admin
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : classmana

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-07-20 15:25:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cou_id` varchar(20) NOT NULL,
  `cou_name` varchar(30) DEFAULT NULL,
  `cou_score` int(3) DEFAULT NULL,
  `cou_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'Java程序基础', '4', '2017-07-14 23:03:02');
INSERT INTO `course` VALUES ('2', 'C/C++语言', '4', '2017-07-14 23:03:53');
INSERT INTO `course` VALUES ('3', '高等数学', '5', '2017-07-17 10:16:05');
INSERT INTO `course` VALUES ('4', '线性代数', '4', '2017-07-17 10:16:21');
INSERT INTO `course` VALUES ('5', '操作系统', '3', '2017-07-17 10:17:11');
INSERT INTO `course` VALUES ('6', '编译原理', '3', '2017-07-17 10:17:29');
INSERT INTO `course` VALUES ('7', '软件工程', '4', '2017-07-20 11:28:49');
INSERT INTO `course` VALUES ('8', '离散数学', '5', '2017-07-20 11:28:59');
INSERT INTO `course` VALUES ('9', '计算机组成原理原理', '3', '2017-07-20 11:29:27');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `cou_id` varchar(20) DEFAULT NULL,
  `stu_id` varchar(20) DEFAULT NULL,
  `sco_sco` int(3) DEFAULT NULL,
  `sco_att` int(3) DEFAULT NULL,
  KEY `fk_sc_c` (`cou_id`),
  KEY `fk_sc_stu` (`stu_id`),
  CONSTRAINT `fk_sc_c` FOREIGN KEY (`cou_id`) REFERENCES `course` (`cou_id`),
  CONSTRAINT `fk_sc_stu` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '201401060304', '81', '9');
INSERT INTO `score` VALUES ('1', '201401060332', '85', '13');
INSERT INTO `score` VALUES ('1', '201401060318', '86', '12');
INSERT INTO `score` VALUES ('1', '201401060345', '58', '11');
INSERT INTO `score` VALUES ('1', '201401060321', '62', '13');
INSERT INTO `score` VALUES ('1', '201401060323', '74', '14');
INSERT INTO `score` VALUES ('1', '201401060335', '95', '13');
INSERT INTO `score` VALUES ('1', '201401060315', '65', '12');
INSERT INTO `score` VALUES ('1', '201401060340', '57', '10');
INSERT INTO `score` VALUES ('1', '201401060313', '88', '14');
INSERT INTO `score` VALUES ('1', '201401060333', '74', '14');
INSERT INTO `score` VALUES ('1', '201401060322', '63', '12');
INSERT INTO `score` VALUES ('1', '201401060320', '63', '11');
INSERT INTO `score` VALUES ('1', '201401060349', '89', '14');
INSERT INTO `score` VALUES ('1', '201401060307', '85', '12');
INSERT INTO `score` VALUES ('1', '201401060319', '99', '9');
INSERT INTO `score` VALUES ('1', '201401060309', '59', '12');
INSERT INTO `score` VALUES ('1', '201401060306', '69', '13');
INSERT INTO `score` VALUES ('1', '201401060316', '86', '11');
INSERT INTO `score` VALUES ('1', '201401060303', '68', '14');
INSERT INTO `score` VALUES ('1', '201401060342', '64', '14');
INSERT INTO `score` VALUES ('1', '201401060317', '72', '12');
INSERT INTO `score` VALUES ('1', '201401060336', '63', '12');
INSERT INTO `score` VALUES ('1', '201401060301', '87', '12');
INSERT INTO `score` VALUES ('1', '201401060310', '50', '14');
INSERT INTO `score` VALUES ('1', '201401060324', '93', '14');
INSERT INTO `score` VALUES ('1', '201401060337', '93', '9');
INSERT INTO `score` VALUES ('1', '201401060302', '98', '14');
INSERT INTO `score` VALUES ('1', '201401060327', '79', '9');
INSERT INTO `score` VALUES ('1', '201401060334', '96', '14');
INSERT INTO `score` VALUES ('2', '201401060338', '83', '13');
INSERT INTO `score` VALUES ('2', '201401060313', '87', '13');
INSERT INTO `score` VALUES ('2', '201401060319', '98', '13');
INSERT INTO `score` VALUES ('2', '201401060316', '96', '14');
INSERT INTO `score` VALUES ('2', '201401060301', '86', '10');
INSERT INTO `score` VALUES ('2', '201401060335', '94', '10');
INSERT INTO `score` VALUES ('2', '201401060337', '89', '10');
INSERT INTO `score` VALUES ('2', '201401060312', '82', '14');
INSERT INTO `score` VALUES ('2', '201401060334', '51', '12');
INSERT INTO `score` VALUES ('2', '201401060340', '85', '9');
INSERT INTO `score` VALUES ('2', '201401060336', '76', '14');
INSERT INTO `score` VALUES ('2', '201401060311', '51', '11');
INSERT INTO `score` VALUES ('2', '201401060309', '76', '12');
INSERT INTO `score` VALUES ('2', '201401060324', '73', '8');
INSERT INTO `score` VALUES ('2', '201401060333', '58', '14');
INSERT INTO `score` VALUES ('2', '201401060321', '72', '14');
INSERT INTO `score` VALUES ('2', '201401060323', '90', '8');
INSERT INTO `score` VALUES ('2', '201401060325', '71', '12');
INSERT INTO `score` VALUES ('2', '201401060307', '55', '12');
INSERT INTO `score` VALUES ('2', '201401060345', '81', '8');
INSERT INTO `score` VALUES ('2', '201401060342', '90', '13');
INSERT INTO `score` VALUES ('2', '201401060315', '92', '9');
INSERT INTO `score` VALUES ('2', '201401060302', '71', '10');
INSERT INTO `score` VALUES ('2', '201401060305', '64', '14');
INSERT INTO `score` VALUES ('2', '201401060341', '99', '12');
INSERT INTO `score` VALUES ('2', '201401060339', '61', '14');
INSERT INTO `score` VALUES ('2', '201401060304', '79', '14');
INSERT INTO `score` VALUES ('2', '201401060327', '65', '12');
INSERT INTO `score` VALUES ('2', '201401060329', '58', '13');
INSERT INTO `score` VALUES ('2', '201401060344', '87', '12');
INSERT INTO `score` VALUES ('3', '201401060328', '73', '9');
INSERT INTO `score` VALUES ('3', '201401060339', '80', '12');
INSERT INTO `score` VALUES ('3', '201401060347', '56', '14');
INSERT INTO `score` VALUES ('3', '201401060325', '69', '9');
INSERT INTO `score` VALUES ('3', '201401060335', '57', '9');
INSERT INTO `score` VALUES ('3', '201401060321', '59', '12');
INSERT INTO `score` VALUES ('3', '201401060323', '63', '11');
INSERT INTO `score` VALUES ('3', '201401060306', '98', '10');
INSERT INTO `score` VALUES ('3', '201401060319', '57', '13');
INSERT INTO `score` VALUES ('3', '201401060326', '59', '12');
INSERT INTO `score` VALUES ('3', '201401060337', '71', '13');
INSERT INTO `score` VALUES ('3', '201401060310', '80', '12');
INSERT INTO `score` VALUES ('3', '201401060308', '69', '10');
INSERT INTO `score` VALUES ('3', '201401060341', '57', '13');
INSERT INTO `score` VALUES ('3', '201401060348', '93', '10');
INSERT INTO `score` VALUES ('3', '201401060320', '94', '9');
INSERT INTO `score` VALUES ('3', '201401060349', '56', '11');
INSERT INTO `score` VALUES ('3', '201401060324', '83', '9');
INSERT INTO `score` VALUES ('3', '201401060307', '92', '13');
INSERT INTO `score` VALUES ('3', '201401060327', '79', '14');
INSERT INTO `score` VALUES ('3', '201401060329', '89', '10');
INSERT INTO `score` VALUES ('3', '201401060322', '69', '13');
INSERT INTO `score` VALUES ('3', '201401060303', '93', '11');
INSERT INTO `score` VALUES ('3', '201401060318', '97', '12');
INSERT INTO `score` VALUES ('3', '201401060316', '81', '13');
INSERT INTO `score` VALUES ('3', '201401060340', '96', '8');
INSERT INTO `score` VALUES ('3', '201401060312', '70', '9');
INSERT INTO `score` VALUES ('3', '201401060344', '74', '13');
INSERT INTO `score` VALUES ('3', '201401060333', '65', '8');
INSERT INTO `score` VALUES ('3', '201401060304', '70', '10');
INSERT INTO `score` VALUES ('4', '201401060340', '68', '14');
INSERT INTO `score` VALUES ('4', '201401060311', '97', '14');
INSERT INTO `score` VALUES ('4', '201401060318', '89', '13');
INSERT INTO `score` VALUES ('4', '201401060305', '81', '12');
INSERT INTO `score` VALUES ('4', '201401060342', '87', '8');
INSERT INTO `score` VALUES ('4', '201401060315', '50', '10');
INSERT INTO `score` VALUES ('4', '201401060309', '98', '12');
INSERT INTO `score` VALUES ('4', '201401060308', '84', '12');
INSERT INTO `score` VALUES ('4', '201401060329', '53', '12');
INSERT INTO `score` VALUES ('4', '201401060316', '56', '10');
INSERT INTO `score` VALUES ('4', '201401060324', '79', '10');
INSERT INTO `score` VALUES ('4', '201401060306', '79', '8');
INSERT INTO `score` VALUES ('4', '201401060336', '78', '13');
INSERT INTO `score` VALUES ('4', '201401060313', '87', '10');
INSERT INTO `score` VALUES ('4', '201401060332', '60', '9');
INSERT INTO `score` VALUES ('4', '201401060321', '61', '11');
INSERT INTO `score` VALUES ('4', '201401060337', '67', '14');
INSERT INTO `score` VALUES ('4', '201401060335', '74', '10');
INSERT INTO `score` VALUES ('4', '201401060348', '65', '15');
INSERT INTO `score` VALUES ('4', '201401060331', '75', '14');
INSERT INTO `score` VALUES ('4', '201401060333', '53', '15');
INSERT INTO `score` VALUES ('4', '201401060310', '84', '14');
INSERT INTO `score` VALUES ('4', '201401060303', '81', '15');
INSERT INTO `score` VALUES ('4', '201401060345', '91', '12');
INSERT INTO `score` VALUES ('4', '201401060349', '51', '14');
INSERT INTO `score` VALUES ('4', '201401060343', '51', '11');
INSERT INTO `score` VALUES ('4', '201401060322', '86', '11');
INSERT INTO `score` VALUES ('4', '201401060302', '72', '14');
INSERT INTO `score` VALUES ('4', '201401060338', '52', '12');
INSERT INTO `score` VALUES ('4', '201401060312', '67', '14');
INSERT INTO `score` VALUES ('5', '201401060334', '98', '11');
INSERT INTO `score` VALUES ('5', '201401060309', '54', '11');
INSERT INTO `score` VALUES ('5', '201401060322', '63', '14');
INSERT INTO `score` VALUES ('5', '201401060315', '77', '8');
INSERT INTO `score` VALUES ('5', '201401060336', '96', '15');
INSERT INTO `score` VALUES ('5', '201401060302', '59', '14');
INSERT INTO `score` VALUES ('5', '201401060301', '88', '14');
INSERT INTO `score` VALUES ('5', '201401060306', '66', '11');
INSERT INTO `score` VALUES ('5', '201401060303', '59', '12');
INSERT INTO `score` VALUES ('5', '201401060344', '61', '12');
INSERT INTO `score` VALUES ('5', '201401060311', '82', '15');
INSERT INTO `score` VALUES ('5', '201401060345', '82', '12');
INSERT INTO `score` VALUES ('5', '201401060331', '58', '14');
INSERT INTO `score` VALUES ('5', '201401060337', '70', '12');
INSERT INTO `score` VALUES ('5', '201401060329', '91', '13');
INSERT INTO `score` VALUES ('5', '201401060304', '50', '15');
INSERT INTO `score` VALUES ('5', '201401060317', '59', '14');
INSERT INTO `score` VALUES ('5', '201401060335', '97', '12');
INSERT INTO `score` VALUES ('5', '201401060308', '89', '9');
INSERT INTO `score` VALUES ('5', '201401060340', '60', '9');
INSERT INTO `score` VALUES ('5', '201401060312', '76', '12');
INSERT INTO `score` VALUES ('5', '201401060347', '68', '12');
INSERT INTO `score` VALUES ('5', '201401060319', '67', '10');
INSERT INTO `score` VALUES ('5', '201401060338', '62', '12');
INSERT INTO `score` VALUES ('5', '201401060348', '81', '11');
INSERT INTO `score` VALUES ('5', '201401060333', '78', '13');
INSERT INTO `score` VALUES ('5', '201401060323', '83', '12');
INSERT INTO `score` VALUES ('5', '201401060305', '97', '14');
INSERT INTO `score` VALUES ('5', '201401060325', '59', '10');
INSERT INTO `score` VALUES ('5', '201401060313', '71', '12');
INSERT INTO `score` VALUES ('6', '201401060331', '86', '11');
INSERT INTO `score` VALUES ('6', '201401060303', '93', '14');
INSERT INTO `score` VALUES ('6', '201401060342', '67', '14');
INSERT INTO `score` VALUES ('6', '201401060336', '63', '11');
INSERT INTO `score` VALUES ('6', '201401060314', '92', '8');
INSERT INTO `score` VALUES ('6', '201401060328', '99', '14');
INSERT INTO `score` VALUES ('6', '201401060340', '67', '9');
INSERT INTO `score` VALUES ('6', '201401060322', '54', '12');
INSERT INTO `score` VALUES ('6', '201401060301', '96', '10');
INSERT INTO `score` VALUES ('6', '201401060304', '57', '9');
INSERT INTO `score` VALUES ('6', '201401060309', '62', '12');
INSERT INTO `score` VALUES ('6', '201401060307', '84', '9');
INSERT INTO `score` VALUES ('6', '201401060343', '79', '9');
INSERT INTO `score` VALUES ('6', '201401060311', '75', '10');
INSERT INTO `score` VALUES ('6', '201401060333', '51', '10');
INSERT INTO `score` VALUES ('6', '201401060329', '62', '11');
INSERT INTO `score` VALUES ('6', '201401060317', '69', '8');
INSERT INTO `score` VALUES ('6', '201401060318', '93', '14');
INSERT INTO `score` VALUES ('6', '201401060308', '67', '9');
INSERT INTO `score` VALUES ('6', '201401060332', '79', '12');
INSERT INTO `score` VALUES ('6', '201401060341', '90', '13');
INSERT INTO `score` VALUES ('6', '201401060312', '98', '8');
INSERT INTO `score` VALUES ('6', '201401060310', '56', '10');
INSERT INTO `score` VALUES ('6', '201401060330', '61', '10');
INSERT INTO `score` VALUES ('6', '201401060337', '68', '11');
INSERT INTO `score` VALUES ('6', '201401060335', '56', '8');
INSERT INTO `score` VALUES ('6', '201401060346', '52', '10');
INSERT INTO `score` VALUES ('6', '201401060325', '55', '13');
INSERT INTO `score` VALUES ('6', '201401060316', '77', '8');
INSERT INTO `score` VALUES ('6', '201401060326', '64', '14');
INSERT INTO `score` VALUES ('7', '201401060307', '79', '11');
INSERT INTO `score` VALUES ('7', '201401060301', '64', '13');
INSERT INTO `score` VALUES ('7', '201401060330', '65', '12');
INSERT INTO `score` VALUES ('7', '201401060333', '70', '14');
INSERT INTO `score` VALUES ('7', '201401060337', '63', '12');
INSERT INTO `score` VALUES ('7', '201401060329', '54', '14');
INSERT INTO `score` VALUES ('7', '201401060315', '62', '9');
INSERT INTO `score` VALUES ('7', '201401060322', '90', '13');
INSERT INTO `score` VALUES ('7', '201401060314', '59', '10');
INSERT INTO `score` VALUES ('7', '201401060341', '95', '9');
INSERT INTO `score` VALUES ('7', '201401060313', '66', '9');
INSERT INTO `score` VALUES ('7', '201401060316', '97', '13');
INSERT INTO `score` VALUES ('7', '201401060332', '84', '8');
INSERT INTO `score` VALUES ('7', '201401060345', '92', '13');
INSERT INTO `score` VALUES ('7', '201401060325', '77', '11');
INSERT INTO `score` VALUES ('7', '201401060328', '67', '14');
INSERT INTO `score` VALUES ('7', '201401060343', '53', '14');
INSERT INTO `score` VALUES ('7', '201401060336', '87', '11');
INSERT INTO `score` VALUES ('7', '201401060305', '70', '13');
INSERT INTO `score` VALUES ('7', '201401060326', '57', '13');
INSERT INTO `score` VALUES ('7', '201401060319', '75', '10');
INSERT INTO `score` VALUES ('7', '201401060331', '90', '14');
INSERT INTO `score` VALUES ('7', '201401060340', '82', '10');
INSERT INTO `score` VALUES ('7', '201401060342', '98', '9');
INSERT INTO `score` VALUES ('7', '201401060338', '64', '13');
INSERT INTO `score` VALUES ('7', '201401060334', '97', '11');
INSERT INTO `score` VALUES ('7', '201401060321', '64', '12');
INSERT INTO `score` VALUES ('7', '201401060312', '89', '10');
INSERT INTO `score` VALUES ('7', '201401060302', '80', '8');
INSERT INTO `score` VALUES ('7', '201401060308', '67', '11');
INSERT INTO `score` VALUES ('8', '201401060331', '88', '15');
INSERT INTO `score` VALUES ('8', '201401060301', '56', '9');
INSERT INTO `score` VALUES ('8', '201401060347', '81', '9');
INSERT INTO `score` VALUES ('8', '201401060324', '79', '13');
INSERT INTO `score` VALUES ('8', '201401060310', '97', '14');
INSERT INTO `score` VALUES ('8', '201401060312', '90', '10');
INSERT INTO `score` VALUES ('8', '201401060323', '88', '11');
INSERT INTO `score` VALUES ('8', '201401060302', '69', '15');
INSERT INTO `score` VALUES ('8', '201401060336', '58', '14');
INSERT INTO `score` VALUES ('8', '201401060321', '91', '10');
INSERT INTO `score` VALUES ('8', '201401060342', '98', '10');
INSERT INTO `score` VALUES ('8', '201401060313', '55', '10');
INSERT INTO `score` VALUES ('8', '201401060337', '91', '13');
INSERT INTO `score` VALUES ('8', '201401060306', '85', '10');
INSERT INTO `score` VALUES ('8', '201401060326', '91', '11');
INSERT INTO `score` VALUES ('8', '201401060335', '79', '13');
INSERT INTO `score` VALUES ('8', '201401060317', '60', '11');
INSERT INTO `score` VALUES ('8', '201401060327', '84', '13');
INSERT INTO `score` VALUES ('8', '201401060318', '60', '11');
INSERT INTO `score` VALUES ('8', '201401060332', '79', '13');
INSERT INTO `score` VALUES ('8', '201401060346', '58', '14');
INSERT INTO `score` VALUES ('8', '201401060344', '68', '14');
INSERT INTO `score` VALUES ('8', '201401060309', '51', '11');
INSERT INTO `score` VALUES ('8', '201401060338', '55', '13');
INSERT INTO `score` VALUES ('8', '201401060339', '66', '10');
INSERT INTO `score` VALUES ('8', '201401060328', '92', '14');
INSERT INTO `score` VALUES ('8', '201401060322', '62', '9');
INSERT INTO `score` VALUES ('8', '201401060334', '88', '10');
INSERT INTO `score` VALUES ('8', '201401060329', '88', '9');
INSERT INTO `score` VALUES ('8', '201401060311', '76', '11');
INSERT INTO `score` VALUES ('9', '201401060336', '78', '10');
INSERT INTO `score` VALUES ('9', '201401060304', '56', '11');
INSERT INTO `score` VALUES ('9', '201401060348', '72', '8');
INSERT INTO `score` VALUES ('9', '201401060325', '76', '8');
INSERT INTO `score` VALUES ('9', '201401060322', '61', '13');
INSERT INTO `score` VALUES ('9', '201401060328', '92', '15');
INSERT INTO `score` VALUES ('9', '201401060330', '79', '8');
INSERT INTO `score` VALUES ('9', '201401060337', '83', '10');
INSERT INTO `score` VALUES ('9', '201401060316', '95', '12');
INSERT INTO `score` VALUES ('9', '201401060340', '57', '14');
INSERT INTO `score` VALUES ('9', '201401060324', '72', '11');
INSERT INTO `score` VALUES ('9', '201401060332', '65', '9');
INSERT INTO `score` VALUES ('9', '201401060319', '94', '8');
INSERT INTO `score` VALUES ('9', '201401060329', '60', '12');
INSERT INTO `score` VALUES ('9', '201401060347', '80', '13');
INSERT INTO `score` VALUES ('9', '201401060318', '65', '10');
INSERT INTO `score` VALUES ('9', '201401060343', '67', '11');
INSERT INTO `score` VALUES ('9', '201401060311', '53', '9');
INSERT INTO `score` VALUES ('9', '201401060346', '95', '12');
INSERT INTO `score` VALUES ('9', '201401060342', '91', '12');
INSERT INTO `score` VALUES ('9', '201401060323', '94', '12');
INSERT INTO `score` VALUES ('9', '201401060321', '86', '9');
INSERT INTO `score` VALUES ('9', '201401060309', '85', '8');
INSERT INTO `score` VALUES ('9', '201401060305', '69', '14');
INSERT INTO `score` VALUES ('9', '201401060307', '78', '12');
INSERT INTO `score` VALUES ('9', '201401060301', '67', '11');
INSERT INTO `score` VALUES ('9', '201401060313', '81', '14');
INSERT INTO `score` VALUES ('9', '201401060317', '60', '8');
INSERT INTO `score` VALUES ('9', '201401060331', '78', '10');
INSERT INTO `score` VALUES ('9', '201401060312', '75', '13');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stu_id` varchar(20) NOT NULL,
  `stu_name` varchar(255) DEFAULT NULL,
  `stu_sex` char(1) DEFAULT NULL,
  `stu_age` int(2) DEFAULT NULL,
  `stu_dept` varchar(30) DEFAULT NULL,
  `stu_class` varchar(30) DEFAULT NULL,
  `stu_address` varchar(50) DEFAULT NULL,
  `stu_school` varchar(30) DEFAULT NULL,
  `stu_phone` varchar(11) DEFAULT NULL,
  `stu_position` varchar(30) DEFAULT NULL,
  `stu_grp` int(10) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('201401060301', '赵三牛', 'm', '25', '计算机科学与技术', '1', '山东', '山东科技大学', '17854255607', '学生', '74');
INSERT INTO `student` VALUES ('201401060302', '赵四牛', 'f', '25', '计算机科学与技术', '1', '山东', '山东科技大学', '17854256527', '学生', '74');
INSERT INTO `student` VALUES ('201401060303', '刘二柱', 'm', '23', '计算机科学与技术', '1', '山东', '山东科技大学', '17854256224', '学生', '73');
INSERT INTO `student` VALUES ('201401060304', '上官四汪', 'f', '24', '计算机科学与技术', '1', '山东', '山东科技大学', '17854254664', '学生', '72');
INSERT INTO `student` VALUES ('201401060305', '西门三牛', 'm', '22', '计算机科学与技术', '1', '山东', '山东科技大学', '17854256130', '学生', '73');
INSERT INTO `student` VALUES ('201401060306', '赵四狗', 'm', '25', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854258228', '学生', '71');
INSERT INTO `student` VALUES ('201401060307', '张三牛', 'm', '22', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854254818', '学生', '74');
INSERT INTO `student` VALUES ('201401060308', '许四汪', 'm', '25', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854251618', '学生', '71');
INSERT INTO `student` VALUES ('201401060309', '孙一狗', 'm', '23', '计算机科学与技术', '1', '山东', '山东科技大学', '17854253345', '学生', '71');
INSERT INTO `student` VALUES ('201401060310', '许三牛', 'f', '24', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854256768', '学生', '74');
INSERT INTO `student` VALUES ('201401060311', '西门三柱', 'm', '23', '计算机科学与技术', '1', '上海', '山东科技大学', '17854257531', '学生', '73');
INSERT INTO `student` VALUES ('201401060312', '王三狗', 'm', '23', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854250453', '学生', '72');
INSERT INTO `student` VALUES ('201401060313', '上官一狗', 'm', '23', '计算机科学与技术', '1', '上海', '山东科技大学', '17854257783', '学生', '74');
INSERT INTO `student` VALUES ('201401060314', '上官四汪', 'f', '25', '计算机科学与技术', '1', '山东', '山东科技大学', '17854251038', '学生', '73');
INSERT INTO `student` VALUES ('201401060315', '孙四柱', 'm', '24', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854257203', '学生', '70');
INSERT INTO `student` VALUES ('201401060316', '刘一柱', 'm', '25', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854258258', '学生', '73');
INSERT INTO `student` VALUES ('201401060317', '郭三狗', 'm', '23', '计算机科学与技术', '1', '上海', '山东科技大学', '17854256038', '学生', '73');
INSERT INTO `student` VALUES ('201401060318', '欧阳一狗', 'f', '25', '计算机科学与技术', '1', '上海', '山东科技大学', '17854253738', '学生', '74');
INSERT INTO `student` VALUES ('201401060319', '赵四牛', 'm', '22', '计算机科学与技术', '1', '上海', '山东科技大学', '17854253742', '学生', '74');
INSERT INTO `student` VALUES ('201401060320', '上官四狗', 'm', '23', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854257445', '学生', '71');
INSERT INTO `student` VALUES ('201401060321', '崔二狗', 'f', '22', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854255482', '学生', '72');
INSERT INTO `student` VALUES ('201401060322', '欧阳二汪', 'm', '23', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854258388', '学生', '73');
INSERT INTO `student` VALUES ('201401060323', '王三汪', 'f', '23', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854257125', '学生', '71');
INSERT INTO `student` VALUES ('201401060324', '崔四汪', 'f', '25', '计算机科学与技术', '1', '山东', '山东科技大学', '17854254064', '学生', '73');
INSERT INTO `student` VALUES ('201401060325', '郭三牛', 'f', '23', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854252165', '学生', '74');
INSERT INTO `student` VALUES ('201401060326', '王二柱', 'm', '25', '计算机科学与技术', '1', '山东', '山东科技大学', '17854250588', '学生', '74');
INSERT INTO `student` VALUES ('201401060327', '孙四柱', 'm', '24', '计算机科学与技术', '1', '上海', '山东科技大学', '17854250471', '学生', '74');
INSERT INTO `student` VALUES ('201401060328', '张三牛', 'm', '25', '计算机科学与技术', '1', '山东', '山东科技大学', '17854254845', '学生', '72');
INSERT INTO `student` VALUES ('201401060329', '刘二狗', 'm', '25', '计算机科学与技术', '1', '上海', '山东科技大学', '17854254240', '学生', '71');
INSERT INTO `student` VALUES ('201401060330', '赵一柱', 'f', '22', '计算机科学与技术', '1', '上海', '山东科技大学', '17854250034', '学生', '72');
INSERT INTO `student` VALUES ('201401060331', '崔一狗', 'm', '25', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854250782', '学生', '73');
INSERT INTO `student` VALUES ('201401060332', '王二汪', 'm', '22', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854256605', '学生', '70');
INSERT INTO `student` VALUES ('201401060333', '郭一牛', 'm', '25', '计算机科学与技术', '1', '山东', '山东科技大学', '17854254754', '学生', '73');
INSERT INTO `student` VALUES ('201401060334', '上官二狗', 'm', '25', '计算机科学与技术', '1', '上海', '山东科技大学', '17854251160', '学生', '72');
INSERT INTO `student` VALUES ('201401060335', '许三汪', 'm', '24', '计算机科学与技术', '1', '山东', '山东科技大学', '17854251022', '学生', '71');
INSERT INTO `student` VALUES ('201401060336', '孙一汪', 'm', '25', '计算机科学与技术', '1', '山东', '山东科技大学', '17854256384', '学生', '74');
INSERT INTO `student` VALUES ('201401060337', '郭一柱', 'm', '25', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854250567', '学生', '71');
INSERT INTO `student` VALUES ('201401060338', '许四柱', 'm', '22', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854253430', '学生', '72');
INSERT INTO `student` VALUES ('201401060339', '赵一汪', 'f', '24', '计算机科学与技术', '1', '山东', '山东科技大学', '17854250410', '学生', '73');
INSERT INTO `student` VALUES ('201401060340', '欧阳二柱', 'f', '24', '计算机科学与技术', '1', '上海', '山东科技大学', '17854250816', '学生', '73');
INSERT INTO `student` VALUES ('201401060341', '欧阳二汪', 'f', '23', '计算机科学与技术', '1', '上海', '山东科技大学', '17854251715', '学生', '72');
INSERT INTO `student` VALUES ('201401060342', '上官二柱', 'm', '23', '计算机科学与技术', '1', '山东', '山东科技大学', '17854252483', '学生', '72');
INSERT INTO `student` VALUES ('201401060343', '西门二牛', 'f', '22', '计算机科学与技术', '1', '山东', '山东科技大学', '17854255502', '学生', '71');
INSERT INTO `student` VALUES ('201401060344', '西门二狗', 'f', '22', '计算机科学与技术', '1', '上海', '山东科技大学', '17854255468', '学生', '74');
INSERT INTO `student` VALUES ('201401060345', '郭二汪', 'f', '22', '计算机科学与技术', '1', '上海', '山东科技大学', '17854253082', '学生', '74');
INSERT INTO `student` VALUES ('201401060346', '张三柱', 'f', '24', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854251726', '学生', '74');
INSERT INTO `student` VALUES ('201401060347', '王四牛', 'm', '23', '计算机科学与技术', '1', '山东', '山东科技大学', '17854252832', '学生', '74');
INSERT INTO `student` VALUES ('201401060348', '许一汪', 'f', '23', '计算机科学与技术', '1', '山东', '山东科技大学', '17854250774', '学生', '71');
INSERT INTO `student` VALUES ('201401060349', '孙三牛', 'm', '22', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854257751', '学生', '71');
INSERT INTO `student` VALUES ('201401060350', '张三牛', 'm', '22', '计算机科学与技术', '1', '沈阳', '山东科技大学', '17854251551', '学生', '74');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tea_id` varchar(20) NOT NULL,
  `tea_name` varchar(50) DEFAULT NULL,
  `tea_sex` char(1) DEFAULT NULL,
  `tea_age` int(3) DEFAULT NULL,
  `tea_dept` varchar(30) DEFAULT NULL,
  `tea_class` varchar(30) DEFAULT NULL,
  `tea_phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`tea_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('54088', '嘿嘿嘿', 'M', '30', '计算机', '1', '12345678901');
