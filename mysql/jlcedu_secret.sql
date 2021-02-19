/*
Navicat MySQL Data Transfer

Source Server         : 47.93.89.0
Source Server Version : 50635
Source Host           : 47.93.89.0:3306
Source Database       : jlcedu_secret

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-05-18 16:44:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_user_parent`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_parent`;
CREATE TABLE `t_user_parent` (
  `id` varchar(32) NOT NULL,
  `student_id` varchar(32) NOT NULL COMMENT '学生id',
  `company` varchar(20) NOT NULL COMMENT '工作单位',
  `position` varchar(20) NOT NULL COMMENT '职务',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家长';

-- ----------------------------
-- Records of t_user_parent
-- ----------------------------
INSERT INTO `t_user_parent` VALUES ('201', '101', '吉林市实验中学', '教师', '2017-04-27 17:27:50', '2017-04-27 17:27:50');

-- ----------------------------
-- Table structure for `t_user_secret`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_secret`;
CREATE TABLE `t_user_secret` (
  `id` varchar(32) NOT NULL,
  `citizen_id` varchar(18) NOT NULL COMMENT '身份证',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of t_user_secret
-- ----------------------------
