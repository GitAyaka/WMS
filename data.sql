/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : graduation_ssm_shuifei_sys

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2022-07-16 21:22:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `userpwd` varchar(50) DEFAULT NULL COMMENT '密码',
  `identity` varchar(50) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '123456', '管理员');
INSERT INTO `t_admin` VALUES ('2', 'a1', '1', '抄表员');

-- ----------------------------
-- Table structure for t_gonggao
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `biaoti` varchar(255) DEFAULT NULL COMMENT '标题',
  `neirong` varchar(8000) DEFAULT NULL COMMENT '内容',
  `shijian` varchar(50) DEFAULT NULL COMMENT '发布时间',
  `type` int(11) DEFAULT NULL COMMENT '公告类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告信息';

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1', '公告内容11', '公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11公告内容11', '2021-07-07', null);
INSERT INTO `t_gonggao` VALUES ('2', '公告内容2222', '公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222公告内容2222', '2021-07-07 00:00', null);

-- ----------------------------
-- Table structure for t_jiesuantype
-- ----------------------------
DROP TABLE IF EXISTS `t_jiesuantype`;
CREATE TABLE `t_jiesuantype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) DEFAULT NULL COMMENT '结算类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='结算类型';

-- ----------------------------
-- Records of t_jiesuantype
-- ----------------------------
INSERT INTO `t_jiesuantype` VALUES ('1', '月结算');
INSERT INTO `t_jiesuantype` VALUES ('2', '季度结算');
INSERT INTO `t_jiesuantype` VALUES ('3', '年结算');

-- ----------------------------
-- Table structure for t_quyu
-- ----------------------------
DROP TABLE IF EXISTS `t_quyu`;
CREATE TABLE `t_quyu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `no` varchar(50) DEFAULT NULL COMMENT '社区区域编号',
  `name` varchar(50) DEFAULT NULL COMMENT '社区区域名称',
  `detail` varchar(100) DEFAULT NULL COMMENT '社区区域说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='社区区域';

-- ----------------------------
-- Records of t_quyu
-- ----------------------------
INSERT INTO `t_quyu` VALUES ('5', 'QY_1731235000', '南京雨花台', '南京雨花台');
INSERT INTO `t_quyu` VALUES ('6', 'QY_1731235214', '南京六合', '南京六合');
INSERT INTO `t_quyu` VALUES ('7', 'QY_1731235257', '南京江浦', '南京江浦');
INSERT INTO `t_quyu` VALUES ('8', 'QY_1801112113', '南京珠江路', '南京珠江路');

-- ----------------------------
-- Table structure for t_shoufei
-- ----------------------------
DROP TABLE IF EXISTS `t_shoufei`;
CREATE TABLE `t_shoufei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `userno` varchar(50) DEFAULT NULL COMMENT '用户编号',
  `shuibiaono` varchar(50) DEFAULT NULL COMMENT '水表编号',
  `shijian` varchar(50) DEFAULT NULL COMMENT '创建时间',
  `shuijia` int(11) DEFAULT NULL COMMENT '水费价格',
  `jiesuantype` varchar(50) DEFAULT NULL COMMENT '结算方式',
  `shuifeimoney` int(11) DEFAULT NULL COMMENT '水费金额',
  `beizhu` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `status` int(11) unsigned zerofill DEFAULT NULL COMMENT '缴费状态(0未缴费 1已缴费)',
  `shuifeivalue` int(11) DEFAULT NULL COMMENT '水表度数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='收费信息';

-- ----------------------------
-- Records of t_shoufei
-- ----------------------------
INSERT INTO `t_shoufei` VALUES ('1', 'S_2020001', 'B_201801064246', '2021-01-01- 10-29-11', '1', '月结算', '10', '11', '00000000001', '10');
INSERT INTO `t_shoufei` VALUES ('2', 'S_2020002', 'B_201801064246', '2021-01-01- 10-40-39', '2', '月结算', '40', '', '00000000000', '20');
INSERT INTO `t_shoufei` VALUES ('3', 'S_2020002', 'B_201801064345', '2021-01-01- 11-24-35', '2', '月结算', '50', '', '00000000000', '25');
INSERT INTO `t_shoufei` VALUES ('4', 'S_2020002', 'B_201801064246', '2021-01-01- 11-24-52', '1', '月结算', '0', '', '00000000000', '0');
INSERT INTO `t_shoufei` VALUES ('5', 'S_2020002', 'B_201801064345', '2020-03-11- 11-24-35', '2', '月结算', '90', '', '00000000000', '45');


-- ----------------------------
-- Table structure for t_shuibiao
-- ----------------------------
DROP TABLE IF EXISTS `t_shuibiao`;
CREATE TABLE `t_shuibiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `userId` int(11) DEFAULT NULL COMMENT '用户Id',
  `biaono` varchar(50) DEFAULT NULL COMMENT '水表编号',
  `jiesuantype` varchar(50) DEFAULT NULL COMMENT '结算方式',
  `biaovalue` int(11) DEFAULT NULL COMMENT '水表度数',
  `beizhu` varchar(500) DEFAULT NULL COMMENT '备注',
  `status` int(11) DEFAULT NULL COMMENT '水表状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='水表';

-- ----------------------------
-- Records of t_shuibiao
-- ----------------------------
INSERT INTO `t_shuibiao` VALUES ('1', '1', 'B_201801064246', '月结算', '10', '备注', '0');
INSERT INTO `t_shuibiao` VALUES ('2', '1', 'B_201801064345', '季度结算', '0', '', '0');
INSERT INTO `t_shuibiao` VALUES ('3', '2', 'B_201801112232', '月结算', '0', '', '0');

-- ----------------------------
-- Table structure for t_shuifeijiage
-- ----------------------------
DROP TABLE IF EXISTS `t_shuifeijiage`;
CREATE TABLE `t_shuifeijiage` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `jiage` int(11) DEFAULT NULL COMMENT '水费价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='水费价格';

-- ----------------------------
-- Records of t_shuifeijiage
-- ----------------------------
INSERT INTO `t_shuifeijiage` VALUES ('1', '1');
INSERT INTO `t_shuifeijiage` VALUES ('2', '2');
INSERT INTO `t_shuifeijiage` VALUES ('3', '3');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `loginname` varchar(50) DEFAULT NULL COMMENT '用户编号',
  `pwd` varchar(50) DEFAULT NULL COMMENT '密码',
  `realname` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `bumen` varchar(50) DEFAULT NULL COMMENT '社区区域',
  `status` varchar(50) DEFAULT NULL COMMENT '用户状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户信息';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'S_2020001', '123456', '张飞', '广东省珠海市', '133333333333', '南京雨花台', '使用中');
INSERT INTO `t_user` VALUES ('2', 'S_2020002', '123456', '李四', '江苏省南京市', '133333333333', '南京六合', '禁用');
INSERT INTO `t_user` VALUES ('3', 'S_2020003', '123456', '王五', '四川省成都市', '133333333333', '南京六合', '使用中');
INSERT INTO `t_user` VALUES ('4', 'S_2020004', '123456', '刘东', '四川省成都市', '133333333333', '南京六合', '使用中');
INSERT INTO `t_user` VALUES ('5', 'S_2020005', '123456', '王六', '四川省成都市', '133333333333', '南京六合', '使用中');
