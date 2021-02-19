/*
Navicat MySQL Data Transfer

Source Server         : 47.93.89.0
Source Server Version : 50635
Source Host           : 47.93.89.0:3306
Source Database       : jlcedu

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-06-10 20:44:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_core_i18n_key`
-- ----------------------------
DROP TABLE IF EXISTS `t_core_i18n_key`;
CREATE TABLE `t_core_i18n_key` (
  `id` varchar(32) NOT NULL,
  `key` varchar(50) NOT NULL COMMENT 'key',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国际化';

-- ----------------------------
-- Records of t_core_i18n_key
-- ----------------------------
INSERT INTO `t_core_i18n_key` VALUES ('b1', 'jlcedu.no1.banner.1', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('b2', 'jlcedu.no1.banner.2', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('b3', 'jlcedu.no1.banner.3', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('b4', 'jlcedu.no1.banner.4', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('b5', 'jlcedu.no1.banner.5', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('c1', 'jlcedu.no1.system.course.MATH', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c10', 'jlcedu.no1.system.course.NATURE', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c11', 'jlcedu.no1.system.course.IDEOLOGY_MORALITY', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c12', 'jlcedu.no1.system.course.ALGEBRA', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c13', 'jlcedu.no1.system.course.GEOMETRY', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c14', 'jlcedu.no1.system.course.PHYSICS', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c15', 'jlcedu.no1.system.course.CHEMISTRY', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c16', 'jlcedu.no1.system.course.BIOLOGY', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c17', 'jlcedu.no1.system.course.HISTORY', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c18', 'jlcedu.no1.system.course.POLITICS', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c19', 'jlcedu.no1.system.course.GEOGRAPHY', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c2', 'jlcedu.no1.system.course.CHINESE', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c3', 'jlcedu.no1.system.course.ENGLISH', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c4', 'jlcedu.no1.system.course.SCIENCE', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c5', 'jlcedu.no1.system.course.LIBERAL_ART', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c6', 'jlcedu.no1.system.course.SPORT', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c7', 'jlcedu.no1.system.course.COMPUTATION', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c8', 'jlcedu.no1.system.course.MUSIC', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('c9', 'jlcedu.no1.system.course.PAINTING', '2017-05-09 17:07:54', '2017-05-09 17:07:54');
INSERT INTO `t_core_i18n_key` VALUES ('m1', 'jlcedu.no1.navigation.menu.1', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m10', 'jlcedu.no1.navigation.menu.10', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m11', 'jlcedu.no1.navigation.menu.11', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m12', 'jlcedu.no1.navigation.menu.12', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m13', 'jlcedu.no1.navigation.menu.13', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m14', 'jlcedu.no1.navigation.menu.14', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m15', 'jlcedu.no1.navigation.menu.15', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m16', 'jlcedu.no1.navigation.menu.16', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m17', 'jlcedu.no1.navigation.menu.17', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m18', 'jlcedu.no1.navigation.menu.18', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m19', 'jlcedu.no1.navigation.menu.19', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m2', 'jlcedu.no1.navigation.menu.2', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m20', 'jlcedu.no1.navigation.menu.20', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m21', 'jlcedu.no1.navigation.menu.21', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m22', 'jlcedu.no1.navigation.menu.22', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m23', 'jlcedu.no1.navigation.menu.23', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m24', 'jlcedu.no1.navigation.menu.24', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m25', 'jlcedu.no1.navigation.menu.25', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m26', 'jlcedu.no1.navigation.menu.26', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m27', 'jlcedu.no1.navigation.menu.27', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m28', 'jlcedu.no1.navigation.menu.28', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m29', 'jlcedu.no1.navigation.menu.29', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m3', 'jlcedu.no1.navigation.menu.3', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m30', 'jlcedu.no1.navigation.menu.30', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m31', 'jlcedu.no1.navigation.menu.31', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m32', 'jlcedu.no1.navigation.menu.32', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m33', 'jlcedu.no1.navigation.menu.33', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m34', 'jlcedu.no1.navigation.menu.34', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m35', 'jlcedu.no1.navigation.menu.35', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m36', 'jlcedu.no1.navigation.menu.36', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m37', 'jlcedu.no1.navigation.menu.37', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m38', 'jlcedu.no1.navigation.menu.38', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m39', 'jlcedu.no1.navigation.menu.39', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m4', 'jlcedu.no1.navigation.menu.4', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m40', 'jlcedu.no1.navigation.menu.40', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m41', 'jlcedu.no1.navigation.menu.41', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m42', 'jlcedu.no1.navigation.menu.42', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m43', 'jlcedu.no1.navigation.menu.43', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m44', 'jlcedu.no1.navigation.menu.44', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m45', 'jlcedu.no1.navigation.menu.45', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m46', 'jlcedu.no1.navigation.menu.46', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m47', 'jlcedu.no1.navigation.menu.47', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m48', 'jlcedu.no1.navigation.menu.48', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m49', 'jlcedu.no1.navigation.menu.49', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m5', 'jlcedu.no1.navigation.menu.5', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m50', 'jlcedu.no1.navigation.menu.50', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m51', 'jlcedu.no1.navigation.menu.51', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m52', 'jlcedu.no1.navigation.menu.52', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m53', 'jlcedu.no1.navigation.menu.53', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m54', 'jlcedu.no1.navigation.menu.54', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m55', 'jlcedu.no1.navigation.menu.55', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m56', 'jlcedu.no1.navigation.menu.56', '2017-05-02 21:46:53', '2017-05-02 21:46:53');
INSERT INTO `t_core_i18n_key` VALUES ('m6', 'jlcedu.no1.navigation.menu.6', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m7', 'jlcedu.no1.navigation.menu.7', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m8', 'jlcedu.no1.navigation.menu.8', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('m9', 'jlcedu.no1.navigation.menu.9', '2017-05-02 21:46:52', '2017-05-02 21:46:52');
INSERT INTO `t_core_i18n_key` VALUES ('nj', 'jlcedu.no1.navigation.join_us', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('nn', 'jlcedu.no1.navigation.news', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('nr', 'jlcedu.no1.navigation.research', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('nt', 'jlcedu.no1.navigation.teacher', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('nw', 'jlcedu.no1.navigation.menu.0', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('n_achievement', 'jlcedu.no1.navigation.achievement', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('n_alumni', 'jlcedu.no1.navigation.alumni', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('n_index', 'jlcedu.no1.navigation.index', '2017-05-03 09:55:38', '2017-05-03 09:55:38');
INSERT INTO `t_core_i18n_key` VALUES ('n_interaction', 'jlcedu.no1.navigation.interaction', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('n_intlcoop', 'jlcedu.no1.navigation.intl_coop', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('n_open', 'jlcedu.no1.navigation.open', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('n_org', 'jlcedu.no1.navigation.organization', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('n_student', 'jlcedu.no1.navigation.student', '2017-05-02 21:43:50', '2017-05-02 21:43:50');
INSERT INTO `t_core_i18n_key` VALUES ('n_summary', 'jlcedu.no1.navigation.summary', '2017-05-02 21:43:50', '2017-05-02 21:43:50');

-- ----------------------------
-- Table structure for `t_core_i18n_locale`
-- ----------------------------
DROP TABLE IF EXISTS `t_core_i18n_locale`;
CREATE TABLE `t_core_i18n_locale` (
  `id` int(2) NOT NULL,
  `locale` varchar(10) NOT NULL COMMENT 'locale',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国际化';

-- ----------------------------
-- Records of t_core_i18n_locale
-- ----------------------------
INSERT INTO `t_core_i18n_locale` VALUES ('1', 'en-US', '2017-05-02 21:25:59', '2017-05-02 21:25:59');
INSERT INTO `t_core_i18n_locale` VALUES ('2', 'zh-CN', '2017-05-02 21:25:59', '2017-05-02 21:25:59');
INSERT INTO `t_core_i18n_locale` VALUES ('3', 'zh-TW', '2017-05-02 21:25:59', '2017-05-02 21:25:59');
INSERT INTO `t_core_i18n_locale` VALUES ('4', 'www', '2017-05-19 19:51:05', '2017-05-19 19:51:05');

-- ----------------------------
-- Table structure for `t_core_i18n_value`
-- ----------------------------
DROP TABLE IF EXISTS `t_core_i18n_value`;
CREATE TABLE `t_core_i18n_value` (
  `id` varchar(32) NOT NULL,
  `locale_id` int(2) NOT NULL,
  `key_id` varchar(32) NOT NULL,
  `value` varchar(500) NOT NULL COMMENT '文本十六进制',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国际化';

-- ----------------------------
-- Records of t_core_i18n_value
-- ----------------------------
INSERT INTO `t_core_i18n_value` VALUES ('10', '1', 'n_intlcoop', 'Intl Coop.', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('100', '1', 'm50', '校友留言', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('101', '1', 'm51', '怀念母校', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('102', '1', 'm52', '校友登录', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('103', '1', 'm53', '党员网上答疑', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('104', '1', 'm54', '建议', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('105', '1', 'm55', '咨询', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('106', '1', 'm56', '校园快讯', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('11', '1', 'n_alumni', 'Alumni', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('12', '1', 'n_interaction', 'Interaction', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('13', '1', 'nn', 'News', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('15', '2', 'n_summary', '学校概况', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('151', '2', 'm1', '学校简介', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('152', '2', 'm2', '领导简介', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('153', '2', 'm3', '组织结构', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('154', '2', 'm4', '校园大事记', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('155', '2', 'm5', '幸福教育', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('156', '2', 'm6', '校风校训', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('157', '2', 'm7', '学校章程', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('158', '2', 'm8', '公告公示', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('159', '2', 'm9', '重要活动', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('16', '2', 'n_open', '教务公开', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('160', '2', 'm10', '文件通知', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('161', '2', 'm11', '学校荣誉', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('162', '2', 'm12', '高考录取', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('163', '2', 'm13', '历年高考', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('164', '2', 'm14', '学生获奖', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('165', '2', 'm15', '党建工作', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('166', '2', 'm16', '工会活动', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('167', '2', 'm17', '吉林一中学生业余党校', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('168', '2', 'm18', '团委、学生会建设', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('169', '2', 'm19', '名师工作室', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('17', '2', 'n_achievement', '成果巡礼', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('170', '2', 'm20', '特级教师', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('171', '2', 'm21', '国家级、省级学科带头人、骨干教师', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('172', '2', 'm22', '名师纪实', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('173', '2', 'm23', '校园新秀', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('174', '2', 'm24', '教师手记', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('175', '2', 'm25', '月份好教师', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('176', '2', 'm26', '教学活动', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('177', '2', 'm27', '课程建设', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('178', '2', 'm28', '竞赛成果', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('179', '2', 'm29', '创新教育', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('18', '2', 'n_org', '党团工作', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('180', '2', 'm30', '科研成果', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('181', '2', 'm31', '心育美育', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('182', '2', 'm32', '招生讯息', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('183', '2', 'm33', '招生查询', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('184', '2', 'm34', '联系我们', '2017-05-03 11:00:26', '2017-05-03 11:00:26');
INSERT INTO `t_core_i18n_value` VALUES ('185', '2', 'm35', '高考讯息', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('186', '2', 'm36', '德育课程', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('187', '2', 'm37', '学生社团', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('188', '2', 'm38', '学生作品', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('189', '2', 'm39', '校园活动', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('19', '2', 'nt', '教师风采', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('190', '2', 'm40', '月份好学生', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('191', '2', 'm41', '加拿大高中班', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('192', '2', 'm42', '合作办学', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('193', '2', 'm43', '国际交流', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('194', '2', 'm44', '汉语推广', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('195', '2', 'm45', '外籍教师', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('196', '2', 'm46', '联系我们', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('197', '2', 'm47', '校庆纪事', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('198', '2', 'm48', '杰出校友', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('199', '2', 'm49', '校友会', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('2', '1', 'n_summary', 'Summary', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('20', '2', 'nr', '教学科研', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('200', '2', 'm50', '校友留言', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('201', '2', 'm51', '怀念母校', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('202', '2', 'm52', '校友登录', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('203', '2', 'm53', '党员网上答疑', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('204', '2', 'm54', '建议', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('205', '2', 'm55', '咨询', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('206', '2', 'm56', '校园快讯', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('21', '2', 'nj', '招生资讯', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('22', '2', 'n_student', '学生活动', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('23', '2', 'n_intlcoop', '国际合作', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('24', '2', 'n_alumni', '一中校友', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('25', '2', 'n_interaction', '互动平台', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('251', '3', 'm1', '學校簡介', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('252', '3', 'm2', '領導簡介', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('253', '3', 'm3', '組織結構', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('254', '3', 'm4', '校園大事記', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('255', '3', 'm5', '幸福教育', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('256', '3', 'm6', '校風校訓', '2017-05-03 11:00:27', '2017-05-03 11:00:27');
INSERT INTO `t_core_i18n_value` VALUES ('257', '3', 'm7', '學校章程', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('258', '3', 'm8', '公告公示', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('259', '3', 'm9', '重要活動', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('26', '2', 'nn', '校园快讯', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('260', '3', 'm10', '文件通知', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('261', '3', 'm11', '學校榮譽', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('262', '3', 'm12', '高考錄取', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('263', '3', 'm13', '歷年高考', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('264', '3', 'm14', '學生獲獎', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('265', '3', 'm15', '黨建工作', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('266', '3', 'm16', '工會活動', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('267', '3', 'm17', '吉林壹中學生業余黨校', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('268', '3', 'm18', '團委、學生會建設', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('269', '3', 'm19', '名師工作室', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('270', '3', 'm20', '特級教師', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('271', '3', 'm21', '國家級、省級學科帶頭人、骨幹教師', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('272', '3', 'm22', '名師紀實', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('273', '3', 'm23', '校園新秀', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('274', '3', 'm24', '教師手記', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('275', '3', 'm25', '月份好教師', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('276', '3', 'm26', '教學活動', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('277', '3', 'm27', '課程建設', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('278', '3', 'm28', '競賽成果', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('279', '3', 'm29', '創新教育', '2017-05-03 11:00:28', '2017-05-03 11:00:28');
INSERT INTO `t_core_i18n_value` VALUES ('28', '3', 'n_summary', '學校概況', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('280', '3', 'm30', '科研成果', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('281', '3', 'm31', '心育美育', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('282', '3', 'm32', '招生訊息', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('283', '3', 'm33', '招生查詢', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('284', '3', 'm34', '聯系我們', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('285', '3', 'm35', '高考訊息', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('286', '3', 'm36', '德育課程', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('287', '3', 'm37', '學生社團', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('288', '3', 'm38', '學生作品', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('289', '3', 'm39', '校園活動', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('29', '3', 'n_open', '教務公開', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('290', '3', 'm40', '月份好學生', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('291', '3', 'm41', '加拿大高中班', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('292', '3', 'm42', '合作辦學', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('293', '3', 'm43', '國際交流', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('294', '3', 'm44', '漢語推廣', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('295', '3', 'm45', '外籍教師', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('296', '3', 'm46', '聯系我們', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('297', '3', 'm47', '校慶紀事', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('298', '3', 'm48', '傑出校友', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('299', '3', 'm49', '校友會', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('3', '1', 'n_open', 'Education', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('30', '3', 'n_achievement', '成果巡禮', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('300', '3', 'm50', '校友留言', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('301', '3', 'm51', '懷念母校', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('302', '3', 'm52', '校友登錄', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('303', '3', 'm53', '黨員網上答疑', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('304', '3', 'm54', '建議', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('305', '3', 'm55', '咨詢', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('306', '3', 'm56', '校園快訊', '2017-05-03 11:00:29', '2017-05-03 11:00:29');
INSERT INTO `t_core_i18n_value` VALUES ('31', '3', 'n_org', '黨團工作', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('32', '3', 'nt', '教師風采', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('33', '3', 'nr', '教學科研', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('34', '3', 'nj', '招生資訊', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('35', '3', 'n_student', '學生活動', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('36', '3', 'n_intlcoop', '國際合作', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('37', '3', 'n_alumni', '壹中校友', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('38', '3', 'n_interaction', '互動平臺', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('39', '3', 'nn', '校園快訊', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('4', '1', 'n_achievement', 'Achievement', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('401', '1', 'b1', 'Announcement for 110th anniversary of the founding of Jilin City NO.1 High School. Click [Alumni of NO.1 High School] for detail.', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('402', '1', 'b2', 'CPC branches of Jilin City NO.1 High School were organizing the members watching feature program of <Great Model>, convening the routine conference with the theme of [How to learn to be great model. How to do to be a eligible CPC member].', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('403', '1', 'b3', 'Jilin City NO.1 High School was convening the conference of 2th semester of 2016-2017.', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('404', '1', 'b4', 'Activities of open day and new students\' interview of Canada high school class. Click [International Cooperation] or [Campus News Flash] for detail.', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('405', '1', 'b5', 'Admission information for Canada high school class of Jilin City NO.1 High School of 2017. Click [International Cooperation] or [Admission Information News] for detail.', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('406', '2', 'b1', '吉林一中110周年校庆公告（第一号），详情点击“一中校友”', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('407', '2', 'b2', '吉林一中各支部组织党员收看《榜样》专题片，召开“向榜样看齐怎么学，做合格党员怎么干”主题民主生活会', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('408', '2', 'b3', '吉林一中召开2016-2017学年度下学期全校大会', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('409', '2', 'b4', '加拿大高中班教学开放日及新生面试活动，详情请点击“国际合作”“校园快讯”', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('410', '2', 'b5', '吉林一中“加拿大高中班”2017年招生简章，详情点击“国际合作”、“招生资讯”', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('411', '3', 'b1', '吉林壹中110周年校慶公告（第壹號），詳情點擊“壹中校友”', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('412', '3', 'b2', '吉林壹中各支部組織黨員收看《榜樣》專題片，召開“向榜樣看齊怎麽學，做合格黨員怎麽幹”主題民主生活會', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('413', '3', 'b3', '吉林壹中召開2016-2017學年度下學期全校大會', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('414', '3', 'b4', '加拿大高中班教學開放日及新生面試活動，詳情請點擊“國際合作”“校園快訊”', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('415', '3', 'b5', '吉林壹中“加拿大高中班”2017年招生簡章，詳情點擊“國際合作”、“招生資訊”', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('5', '1', 'n_org', 'Organization', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('501', '1', 'c1', 'Mathematics', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('502', '1', 'c2', 'Chinese', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('503', '1', 'c3', 'English', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('504', '1', 'c4', 'Science', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('505', '1', 'c5', 'Liberal Art', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('506', '1', 'c6', 'Sport', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('507', '1', 'c7', 'Computation', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('508', '1', 'c8', 'Music', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('509', '1', 'c9', 'Painting', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('51', '1', 'm1', '学校简介', '2017-05-03 11:00:23', '2017-05-03 11:00:23');
INSERT INTO `t_core_i18n_value` VALUES ('510', '1', 'c10', 'Nature', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('511', '1', 'c11', 'Ideology Morality', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('512', '1', 'c12', 'Algebra', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('513', '1', 'c13', 'Geometry', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('514', '1', 'c14', 'Physics', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('515', '1', 'c15', 'Chemistry', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('516', '1', 'c16', 'Biology', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('517', '1', 'c17', 'History', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('518', '1', 'c18', 'Politics', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('519', '1', 'c19', 'Geography', '2017-05-09 17:20:16', '2017-05-09 17:20:16');
INSERT INTO `t_core_i18n_value` VALUES ('52', '1', 'm2', '领导简介', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('521', '2', 'c1', '数学', '2017-05-09 17:26:52', '2017-05-09 17:26:52');
INSERT INTO `t_core_i18n_value` VALUES ('522', '2', 'c2', '语文', '2017-05-09 17:26:52', '2017-05-09 17:26:52');
INSERT INTO `t_core_i18n_value` VALUES ('523', '2', 'c3', '英语', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('524', '2', 'c4', '理综', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('525', '2', 'c5', '文综', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('526', '2', 'c6', '体育', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('527', '2', 'c7', '计算机', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('528', '2', 'c8', '音乐', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('529', '2', 'c9', '美术', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('53', '1', 'm3', '组织结构', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('530', '2', 'c10', '自然', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('531', '2', 'c11', '思想品德', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('532', '2', 'c12', '代数', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('533', '2', 'c13', '几何', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('534', '2', 'c14', '物理', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('535', '2', 'c15', '化学', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('536', '2', 'c16', '生物', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('537', '2', 'c17', '历史', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('538', '2', 'c18', '政治', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('539', '2', 'c19', '地理', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('54', '1', 'm4', '校园大事记', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('541', '3', 'c1', '數學', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('542', '3', 'c2', '語文', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('543', '3', 'c3', '英語', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('544', '3', 'c4', '理綜', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('545', '3', 'c5', '文綜', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('546', '3', 'c6', '體育', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('547', '3', 'c7', '計算機', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('548', '3', 'c8', '音樂', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('549', '3', 'c9', '美術', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('55', '1', 'm5', '幸福教育', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('550', '3', 'c10', '自然', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('551', '3', 'c11', '思想品德', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('552', '3', 'c12', '代數', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('553', '3', 'c13', '幾何', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('554', '3', 'c14', '物理', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('555', '3', 'c15', '化學', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('556', '3', 'c16', '生物', '2017-05-09 17:26:53', '2017-05-09 17:26:53');
INSERT INTO `t_core_i18n_value` VALUES ('557', '3', 'c17', '歷史', '2017-05-09 17:26:54', '2017-05-09 17:26:54');
INSERT INTO `t_core_i18n_value` VALUES ('558', '3', 'c18', '政治', '2017-05-09 17:26:54', '2017-05-09 17:26:54');
INSERT INTO `t_core_i18n_value` VALUES ('559', '3', 'c19', '地理', '2017-05-09 17:26:54', '2017-05-09 17:26:54');
INSERT INTO `t_core_i18n_value` VALUES ('56', '1', 'm6', '校风校训', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('57', '1', 'm7', '学校章程', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('58', '1', 'm8', '公告公示', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('59', '1', 'm9', '重要活动', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('6', '1', 'nt', 'Teachers\' Mien', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('60', '1', 'm10', '文件通知', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('61', '1', 'm11', '学校荣誉', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('62', '1', 'm12', '高考录取', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('63', '1', 'm13', '历年高考', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('64', '1', 'm14', '学生获奖', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('65', '1', 'm15', '党建工作', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('66', '1', 'm16', '工会活动', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('67', '1', 'm17', '吉林一中学生业余党校', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('68', '1', 'm18', '团委、学生会建设', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('69', '1', 'm19', '名师工作室', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('7', '1', 'nr', 'Research', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('70', '1', 'm20', '特级教师', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('71', '1', 'm21', '国家级、省级学科带头人、骨干教师', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('72', '1', 'm22', '名师纪实', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('73', '1', 'm23', '校园新秀', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('74', '1', 'm24', '教师手记', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('75', '1', 'm25', '月份好教师', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('76', '1', 'm26', '教学活动', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('77', '1', 'm27', '课程建设', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('78', '1', 'm28', '竞赛成果', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('79', '1', 'm29', '创新教育', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('8', '1', 'nj', 'Join Us', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('80', '1', 'm30', '科研成果', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('81', '1', 'm31', '心育美育', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('82', '1', 'm32', '招生讯息', '2017-05-03 11:00:24', '2017-05-03 11:00:24');
INSERT INTO `t_core_i18n_value` VALUES ('83', '1', 'm33', '招生查询', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('84', '1', 'm34', 'Contact Us', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('85', '1', 'm35', '高考讯息', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('86', '1', 'm36', '德育课程', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('87', '1', 'm37', '学生社团', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('88', '1', 'm38', '学生作品', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('89', '1', 'm39', '校园活动', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('9', '1', 'n_student', 'Students\' Activities', '2017-05-03 11:00:22', '2017-05-03 11:00:22');
INSERT INTO `t_core_i18n_value` VALUES ('90', '1', 'm40', '月份好学生', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('91', '1', 'm41', '加拿大高中班', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('92', '1', 'm42', '合作办学', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('93', '1', 'm43', '国际交流', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('94', '1', 'm44', '汉语推广', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('95', '1', 'm45', '外籍教师', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('96', '1', 'm46', '联系我们', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('97', '1', 'm47', '校庆纪事', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('98', '1', 'm48', '杰出校友', '2017-05-03 11:00:25', '2017-05-03 11:00:25');
INSERT INTO `t_core_i18n_value` VALUES ('99', '1', 'm49', '校友会', '2017-05-03 11:00:25', '2017-05-03 11:00:25');

-- ----------------------------
-- Table structure for `t_sys_class`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_class`;
CREATE TABLE `t_sys_class` (
  `id` varchar(32) NOT NULL,
  `teacher_id` int(4) NOT NULL COMMENT '班主任id',
  `year` int(4) NOT NULL COMMENT '入学年份',
  `name` varchar(20) NOT NULL COMMENT '班级',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级';

-- ----------------------------
-- Records of t_sys_class
-- ----------------------------
INSERT INTO `t_sys_class` VALUES ('201510', '2', '2015', '10班', '2017-04-27 16:35:59', '2017-04-27 16:35:59');
INSERT INTO `t_sys_class` VALUES ('2015canada', '3', '2015', '加拿大高中班', '2017-04-27 16:36:28', '2017-04-27 16:36:28');

-- ----------------------------
-- Table structure for `t_sys_cource_schedule`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_cource_schedule`;
CREATE TABLE `t_sys_cource_schedule` (
  `id` varchar(32) NOT NULL,
  `rel_id` varchar(32) NOT NULL,
  `day` int(1) NOT NULL COMMENT '星期几',
  `seq` int(2) NOT NULL COMMENT '第几节课',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of t_sys_cource_schedule
-- ----------------------------
INSERT INTO `t_sys_cource_schedule` VALUES ('1', '1', '1', '1', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('10', '6', '2', '1', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('11', '3', '2', '2', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('12', '9', '2', '3', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('13', '2', '2', '4', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('14', '7', '2', '5', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('15', '1', '2', '6', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('16', '1', '2', '9', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('17', '6', '2', '10', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('18', '1', '2', '11', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('19', '7', '3', '1', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('2', '2', '1', '2', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('20', '3', '3', '2', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('21', '1', '3', '3', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('22', '2', '3', '4', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('23', '8', '3', '5', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('24', '9', '3', '6', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('25', '2', '3', '9', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('26', '2', '3', '10', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('27', '2', '3', '11', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('28', '6', '4', '1', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('29', '1', '4', '2', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('3', '7', '1', '3', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('30', '2', '4', '3', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('31', '3', '4', '4', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('32', '8', '4', '5', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('33', '4', '4', '6', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('34', '7', '4', '9', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('35', '7', '4', '10', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('36', '7', '4', '11', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('37', '1', '5', '1', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('38', '2', '5', '2', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('39', '7', '5', '3', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('4', '3', '1', '4', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('40', '3', '5', '4', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('41', '6', '5', '5', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('42', '9', '5', '6', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('43', '8', '5', '9', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('44', '8', '5', '10', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('45', '8', '5', '11', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('46', '8', '6', '1', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('47', '7', '6', '2', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('48', '2', '6', '3', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('49', '3', '6', '4', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('5', '4', '1', '5', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('50', '1', '6', '5', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('51', '6', '6', '6', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('52', '9', '6', '9', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('53', '9', '6', '10', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('54', '9', '6', '11', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('55', '3', '1', '0', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('56', '2', '2', '0', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('57', '3', '3', '0', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('58', '2', '4', '0', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('59', '3', '5', '0', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('6', '8', '1', '6', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('60', '2', '6', '0', '2017-05-09 20:34:43', '2017-05-09 20:34:43');
INSERT INTO `t_sys_cource_schedule` VALUES ('61', '13', '1', '2', '2017-05-12 14:52:56', '2017-05-12 14:52:56');
INSERT INTO `t_sys_cource_schedule` VALUES ('62', '18', '1', '3', '2017-05-12 14:52:56', '2017-05-12 14:52:56');
INSERT INTO `t_sys_cource_schedule` VALUES ('63', '13', '2', '2', '2017-05-12 14:52:56', '2017-05-12 14:52:56');
INSERT INTO `t_sys_cource_schedule` VALUES ('64', '13', '3', '9', '2017-05-12 14:52:57', '2017-05-12 14:52:57');
INSERT INTO `t_sys_cource_schedule` VALUES ('65', '13', '3', '10', '2017-05-12 14:52:57', '2017-05-12 14:52:57');
INSERT INTO `t_sys_cource_schedule` VALUES ('66', '18', '3', '11', '2017-05-12 14:52:57', '2017-05-12 14:52:57');
INSERT INTO `t_sys_cource_schedule` VALUES ('67', '13', '4', '3', '2017-05-12 14:52:57', '2017-05-12 14:52:57');
INSERT INTO `t_sys_cource_schedule` VALUES ('68', '18', '5', '2', '2017-05-12 14:52:57', '2017-05-12 14:52:57');
INSERT INTO `t_sys_cource_schedule` VALUES ('69', '18', '6', '1', '2017-05-12 14:52:57', '2017-05-12 14:52:57');
INSERT INTO `t_sys_cource_schedule` VALUES ('7', '3', '1', '9', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('70', '13', '6', '2', '2017-05-12 14:52:57', '2017-05-12 14:52:57');
INSERT INTO `t_sys_cource_schedule` VALUES ('8', '3', '1', '10', '2017-05-09 20:34:42', '2017-05-09 20:34:42');
INSERT INTO `t_sys_cource_schedule` VALUES ('9', '3', '1', '11', '2017-05-09 20:34:42', '2017-05-09 20:34:42');

-- ----------------------------
-- Table structure for `t_sys_course`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_course`;
CREATE TABLE `t_sys_course` (
  `id` int(3) NOT NULL,
  `p_id` int(3) NOT NULL,
  `code` varchar(20) NOT NULL COMMENT '编码',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='课程';

-- ----------------------------
-- Records of t_sys_course
-- ----------------------------
INSERT INTO `t_sys_course` VALUES ('1', '0', 'MATH', '数学', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('2', '0', 'CHINESE', '语文', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('3', '0', 'ENGLISH', '英语', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('4', '0', 'SCIENCE', '理综', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('5', '0', 'LIBERAL_ART', '文综', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('6', '0', 'SPORT', '体育', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('7', '0', 'COMPUTATION', '计算机', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('8', '0', 'MUSIC', '音乐', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('9', '0', 'PAINTING', '美术', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('10', '0', 'NATURE', '自然', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('11', '0', 'IDEOLOGY_MORALITY', '思想品德', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('101', '1', 'ALGEBRA', '代数', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('102', '1', 'GEOMETRY', '几何', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('111', '4', 'PHYSICS', '物理', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('112', '4', 'CHEMISTRY', '化学', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('113', '4', 'BIOLOGY', '生物', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('121', '5', 'HISTORY', '历史', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('122', '5', 'POLITICS', '政治', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_course` VALUES ('123', '5', 'GEOGRAPHY', '地理', '2017-04-25 16:32:38', '2017-04-25 16:32:38');

-- ----------------------------
-- Table structure for `t_sys_course_rel`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_course_rel`;
CREATE TABLE `t_sys_course_rel` (
  `id` varchar(32) NOT NULL,
  `class_id` varchar(32) NOT NULL COMMENT '班级id',
  `course_id` int(3) NOT NULL COMMENT '课程id',
  `teacher_id` varchar(32) NOT NULL COMMENT '教师id',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='哪个老师负责哪个班的什么课程';

-- ----------------------------
-- Records of t_sys_course_rel
-- ----------------------------
INSERT INTO `t_sys_course_rel` VALUES ('1', '201510', '101', '1', '2017-05-06 18:40:59', '2017-05-06 18:40:59');
INSERT INTO `t_sys_course_rel` VALUES ('13', '2015canada', '101', '1', '2017-05-06 18:41:00', '2017-05-06 18:41:00');
INSERT INTO `t_sys_course_rel` VALUES ('14', '2015canada', '2', '2', '2017-05-06 18:41:00', '2017-05-06 18:41:00');
INSERT INTO `t_sys_course_rel` VALUES ('15', '2015canada', '3', '3', '2017-05-06 18:41:00', '2017-05-06 18:41:00');
INSERT INTO `t_sys_course_rel` VALUES ('16', '2015canada', '6', '10', '2017-05-06 18:41:00', '2017-05-06 18:41:00');
INSERT INTO `t_sys_course_rel` VALUES ('18', '2015canada', '102', '1', '2017-05-06 18:41:00', '2017-05-06 18:41:00');
INSERT INTO `t_sys_course_rel` VALUES ('19', '2015canada', '111', '4', '2017-05-06 18:41:00', '2017-05-06 18:41:00');
INSERT INTO `t_sys_course_rel` VALUES ('2', '201510', '2', '2', '2017-05-06 18:40:59', '2017-05-06 18:40:59');
INSERT INTO `t_sys_course_rel` VALUES ('20', '2015canada', '112', '5', '2017-05-06 18:41:00', '2017-05-06 18:41:00');
INSERT INTO `t_sys_course_rel` VALUES ('21', '2015canada', '113', '6', '2017-05-06 18:41:00', '2017-05-06 18:41:00');
INSERT INTO `t_sys_course_rel` VALUES ('3', '201510', '3', '3', '2017-05-06 18:40:59', '2017-05-06 18:40:59');
INSERT INTO `t_sys_course_rel` VALUES ('4', '201510', '6', '10', '2017-05-06 18:40:59', '2017-05-06 18:40:59');
INSERT INTO `t_sys_course_rel` VALUES ('6', '201510', '102', '1', '2017-05-06 18:40:59', '2017-05-06 18:40:59');
INSERT INTO `t_sys_course_rel` VALUES ('7', '201510', '111', '4', '2017-05-06 18:41:00', '2017-05-06 18:41:00');
INSERT INTO `t_sys_course_rel` VALUES ('8', '201510', '112', '5', '2017-05-06 18:41:00', '2017-05-06 18:41:00');
INSERT INTO `t_sys_course_rel` VALUES ('9', '201510', '113', '6', '2017-05-06 18:41:00', '2017-05-06 18:41:00');

-- ----------------------------
-- Table structure for `t_sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict`;
CREATE TABLE `t_sys_dict` (
  `id` int(2) NOT NULL,
  `code` varchar(20) NOT NULL COMMENT '编码',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典';

-- ----------------------------
-- Records of t_sys_dict
-- ----------------------------
INSERT INTO `t_sys_dict` VALUES ('1', 'EDU_BACKGROUND', '教育背景', '2017-04-25 16:32:37', '2017-04-25 16:32:37');
INSERT INTO `t_sys_dict` VALUES ('2', 'UNIVERSITY_DURATION', '大学学制', '2017-04-25 16:32:37', '2017-04-25 16:32:37');

-- ----------------------------
-- Table structure for `t_sys_dict_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_item`;
CREATE TABLE `t_sys_dict_item` (
  `id` int(2) NOT NULL,
  `p_id` int(2) NOT NULL,
  `code` varchar(20) NOT NULL COMMENT '编码',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典条目';

-- ----------------------------
-- Records of t_sys_dict_item
-- ----------------------------
INSERT INTO `t_sys_dict_item` VALUES ('11', '1', 'POSTDOCTOR', '博士后', '2017-04-25 16:32:37', '2017-04-25 16:32:37');
INSERT INTO `t_sys_dict_item` VALUES ('12', '1', 'DOCTOR', '博士', '2017-04-25 16:32:37', '2017-04-25 16:32:37');
INSERT INTO `t_sys_dict_item` VALUES ('13', '1', 'MASTER', '硕士', '2017-04-25 16:32:37', '2017-04-25 16:32:37');
INSERT INTO `t_sys_dict_item` VALUES ('14', '1', 'BACHELOR', '学士', '2017-04-25 16:32:37', '2017-04-25 16:32:37');
INSERT INTO `t_sys_dict_item` VALUES ('15', '1', 'JUNIOR_COLLEGE', '大专', '2017-04-25 16:32:37', '2017-04-25 16:32:37');
INSERT INTO `t_sys_dict_item` VALUES ('21', '2', '', '本硕博连读', '2017-04-25 16:32:37', '2017-04-25 16:32:37');
INSERT INTO `t_sys_dict_item` VALUES ('22', '2', '', '本硕连读', '2017-04-25 16:32:37', '2017-04-25 16:32:37');
INSERT INTO `t_sys_dict_item` VALUES ('23', '2', '', '本科', '2017-04-25 16:32:37', '2017-04-25 16:32:37');
INSERT INTO `t_sys_dict_item` VALUES ('24', '2', '', '大专', '2017-04-25 16:32:38', '2017-04-25 16:32:38');

-- ----------------------------
-- Table structure for `t_sys_exam`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_exam`;
CREATE TABLE `t_sys_exam` (
  `id` varchar(32) NOT NULL,
  `code` varchar(20) NOT NULL COMMENT '代码',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `exam_date` datetime NOT NULL COMMENT '考试时间',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试';

-- ----------------------------
-- Records of t_sys_exam
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_exam_course`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_exam_course`;
CREATE TABLE `t_sys_exam_course` (
  `id` varchar(32) NOT NULL,
  `exam_student_id` varchar(32) NOT NULL,
  `course_id` varchar(32) NOT NULL COMMENT '课程id',
  `score` int(4) NOT NULL COMMENT '分数',
  `class_sort` int(4) DEFAULT NULL COMMENT '班级名次',
  `grade_sort` int(4) DEFAULT NULL COMMENT '年级名次',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单科成绩';

-- ----------------------------
-- Records of t_sys_exam_course
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_exam_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_exam_student`;
CREATE TABLE `t_sys_exam_student` (
  `id` varchar(32) NOT NULL,
  `exam_id` varchar(32) DEFAULT NULL COMMENT '考试id',
  `student_id` varchar(32) NOT NULL COMMENT '学生id',
  `score` int(4) NOT NULL COMMENT '分数',
  `class_sort` int(4) DEFAULT NULL COMMENT '班级名次',
  `grade_sort` int(4) DEFAULT NULL COMMENT '年级名次',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='总成绩';

-- ----------------------------
-- Records of t_sys_exam_student
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_major`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_major`;
CREATE TABLE `t_sys_major` (
  `id` int(5) NOT NULL,
  `code` varchar(20) NOT NULL COMMENT '编码',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `course_id` int(3) DEFAULT NULL COMMENT '课程id',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专业';

-- ----------------------------
-- Records of t_sys_major
-- ----------------------------
INSERT INTO `t_sys_major` VALUES ('1', '', '数学与应用数学', '1', '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('2', '', '物理学', '111', '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('3', '', '应用化学', '112', '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('4', '', '化学工程与工艺', '112', '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('5', '', '生物化学与分子生物学', '113', '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('6', '', '电器工程及其自动化', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('7', '', '机械工程', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('8', '', '工业设计', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('9', '', '工业工程', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('10', '', '车辆工程', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('11', '', '通信工程', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('12', '', '计算机科学与技术', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('13', '', '电子信息工程', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('14', '', '网络工程', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('15', '', '信息与计算科学', '1', '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('16', '', '环境工程', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('17', '', '临床医学', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('18', '', '放射医学', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('19', '', '预防医学', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('20', '', '药学', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('21', '', '护理学', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('22', '', '汉语言文学', '2', '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('23', '', '英语', '3', '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('24', '', '财务管理', null, '2017-04-27 14:53:30', '2017-04-27 14:53:30');
INSERT INTO `t_sys_major` VALUES ('25', '', '市场营销', null, '2017-04-27 14:53:31', '2017-04-27 14:53:31');
INSERT INTO `t_sys_major` VALUES ('26', '', '运动训练', '6', '2017-05-06 18:28:41', '2017-05-06 18:28:41');

-- ----------------------------
-- Table structure for `t_sys_school`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_school`;
CREATE TABLE `t_sys_school` (
  `id` int(3) NOT NULL,
  `code` varchar(20) NOT NULL COMMENT '编码',
  `full_name` varchar(20) NOT NULL COMMENT '全称',
  `short_name` varchar(20) NOT NULL COMMENT '简称',
  `type_id` int(2) NOT NULL COMMENT '学校类型',
  `phone_no` varchar(20) NOT NULL COMMENT '座机',
  `email` varchar(20) DEFAULT '' COMMENT 'email',
  `wechat` varchar(50) DEFAULT '' COMMENT '微信',
  `zipcode` varchar(20) DEFAULT '' COMMENT '邮编',
  `address` varchar(20) DEFAULT '' COMMENT '地址',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='本市中小学校';

-- ----------------------------
-- Records of t_sys_school
-- ----------------------------
INSERT INTO `t_sys_school` VALUES ('1', '', '吉林市第一中学', '一中', '4', '0432-64826007', '', 'jlyz64826007; 加拿大高中班: jlyzzjb4826017', '132012', '船营区松江南路1号', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('2', '', '吉林市毓文中学', '毓文', '6', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('3', '', '吉化一中', '化一', '4', '', '', '', '', '龙潭区武汉路25号', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('4', '', '吉林市第二中学', '二中', '6', '0432-64565155', '', '', '132013', '高新区吉林大街36号', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('5', '', '吉林市第四中学', '四中', '6', '0432-64565155', '', '', '132013', '昌邑区通江路1481号', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('6', '', '吉林市第十二中学', '十二中', '4', '', '', '', '', '龙潭区遵义东路39号', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('7', '', '吉林市第五中学', '五中', '3', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('8', '', '吉林市第七中学', '七中', '3', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('9', '', '吉林市第九中学', '九中', '3', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('10', '', '吉林市实验中学', '实验中学', '3', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('11', '', '吉化二中', '化二', '3', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('12', '', '吉化三中', '化三', '3', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('13', '', '吉化六中', '化六', '3', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('14', '', '吉化九中', '化九', '3', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('15', '', '吉林市第十三中学', '十三中', '3', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('16', '', '吉林市第十八中学', '十八中', '6', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('17', '', '吉林市朝鲜族中学', '朝中', '3', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('18', '', '吉林市乌拉街满族中学', '乌拉街中学', '3', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('19', '', '吉林市女子职业高级中学', '女中', '8', '', '', '', '132011', '船营区南京街2号', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('20', '', '吉林市信息工程学校', '信息息工程学校', '8', '', '', '', '', '龙潭区古川路10号', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('21', '', '吉林市第一实验小学', '一实验', '2', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('22', '', '吉林市第二实验小学', '二实验', '2', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('23', '', '吉化一小', '化一小', '2', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('24', '', '吉化二小', '化二小', '2', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('25', '', '吉化三小', '化三小', '2', '', '', '', '', '', '2017-04-27 16:21:55', '2017-04-27 16:21:55');
INSERT INTO `t_sys_school` VALUES ('26', '', '吉化六小', '化六小', '2', '', '', '', '', '', '2017-04-27 16:21:56', '2017-04-27 16:21:56');
INSERT INTO `t_sys_school` VALUES ('27', '', '吉化九小', '化九小', '2', '', '', '', '', '', '2017-04-27 16:21:56', '2017-04-27 16:21:56');
INSERT INTO `t_sys_school` VALUES ('28', '', '永吉县第五中学', '永吉五中', '6', '', '', '', '', '', '2017-04-27 16:21:56', '2017-04-27 16:21:56');
INSERT INTO `t_sys_school` VALUES ('29', '', '桦甸市第四中学', '桦甸四中', '6', '', '', '', '', '', '2017-04-27 16:21:56', '2017-04-27 16:21:56');
INSERT INTO `t_sys_school` VALUES ('30', '', '蛟河市第一中学', '蛟河一中', '6', '', '', '', '', '', '2017-04-27 16:21:56', '2017-04-27 16:21:56');
INSERT INTO `t_sys_school` VALUES ('31', '', '舒兰市第一中学', '舒兰一中', '6', '', '', '', '', '', '2017-04-27 16:21:56', '2017-04-27 16:21:56');

-- ----------------------------
-- Table structure for `t_sys_school_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_school_type`;
CREATE TABLE `t_sys_school_type` (
  `id` int(2) NOT NULL,
  `p_id` int(2) NOT NULL,
  `code` varchar(20) NOT NULL COMMENT '编码',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典';

-- ----------------------------
-- Records of t_sys_school_type
-- ----------------------------
INSERT INTO `t_sys_school_type` VALUES ('1', '0', '', '幼儿园', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_school_type` VALUES ('2', '1', 'PRIMARY_SCHOOL', '小学', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_school_type` VALUES ('3', '2', 'SECONDARY_SCHOOL', '初中', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_school_type` VALUES ('4', '3', 'HIGHT_SCHOOL', '高中', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_school_type` VALUES ('5', '1', '', '九年一贯制', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_school_type` VALUES ('6', '2', '', '完全中学', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_school_type` VALUES ('7', '1', '', '十二年一贯制', '2017-04-25 16:32:38', '2017-04-25 16:32:38');
INSERT INTO `t_sys_school_type` VALUES ('8', '3', '', '中等职业学校', '2017-04-25 16:32:38', '2017-04-25 16:32:38');

-- ----------------------------
-- Table structure for `t_sys_university`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_university`;
CREATE TABLE `t_sys_university` (
  `id` int(3) NOT NULL,
  `code` varchar(20) NOT NULL COMMENT '编码',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='高校';

-- ----------------------------
-- Records of t_sys_university
-- ----------------------------
INSERT INTO `t_sys_university` VALUES ('1', '', '清华大学', '2017-04-25 20:20:41', '2017-04-25 20:20:41');
INSERT INTO `t_sys_university` VALUES ('2', '', '北京大学', '2017-04-25 20:20:41', '2017-04-25 20:20:41');
INSERT INTO `t_sys_university` VALUES ('3', '', '中国科学院大学', '2017-04-25 20:20:41', '2017-04-25 20:20:41');
INSERT INTO `t_sys_university` VALUES ('4', '', '中国协和医科大学', '2017-04-25 20:20:41', '2017-04-25 20:20:41');
INSERT INTO `t_sys_university` VALUES ('5', '', '中国人民大学', '2017-04-25 20:20:41', '2017-04-25 20:20:41');
INSERT INTO `t_sys_university` VALUES ('6', '', '中国政法大学', '2017-04-25 20:20:41', '2017-04-25 20:20:41');
INSERT INTO `t_sys_university` VALUES ('7', '', '中国地质大学', '2017-04-25 20:20:41', '2017-04-25 20:20:41');
INSERT INTO `t_sys_university` VALUES ('8', '', '中国农业大学', '2017-04-25 20:20:41', '2017-04-25 20:20:41');
INSERT INTO `t_sys_university` VALUES ('9', '', '中国地质大学', '2017-04-25 20:20:41', '2017-04-25 20:20:41');
INSERT INTO `t_sys_university` VALUES ('10', '', '中国石油大学', '2017-04-25 20:20:41', '2017-04-25 20:20:41');
INSERT INTO `t_sys_university` VALUES ('11', '', '中国传媒大学', '2017-04-25 20:20:41', '2017-04-25 20:20:41');
INSERT INTO `t_sys_university` VALUES ('12', '', '中央财经大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('13', '', '中央民族大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('14', '', '中央音乐学院', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('15', '', '中央戏剧学院', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('16', '', '对外经济贸易大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('17', '', '北京师范大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('18', '', '北京航空航天大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('19', '', '北京理工大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('20', '', '北京邮电大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('21', '', '北京交通大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('22', '', '北京科技大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('23', '', '北京外国语大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('24', '', '北京第二外国语大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('25', '', '北京化工大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('26', '', '北京林业大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('27', '', '北京语言大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('28', '', '北京体育大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('29', '', '北京工业大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('30', '', '北京物资学院', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('31', '', '北京工商大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('32', '', '北京联合大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('33', '', '北京电影学院', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('34', '', '北京服装学院', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('35', '', '北方工业大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('36', '', '华北电力大学(北京)', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('37', '', '首都师范大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('38', '', '首都经济贸易大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('39', '', '首都医科大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('40', '', '首都体育学院', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('41', '', '国际关系学院', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('42', '', '中国青年政治学院', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('43', '', '解放军艺术学院', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('44', '', '解放军装甲兵工程学院', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('51', '', '复旦大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('52', '', '同济大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('53', '', '上海交通大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('54', '', '华东理工大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('55', '', '华东师范大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('101', '', '吉林大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('102', '', '东北师范大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('103', '', '东北电力大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('104', '', '解放军空军航空大学', '2017-04-25 20:20:42', '2017-04-25 20:20:42');
INSERT INTO `t_sys_university` VALUES ('105', '', '长春理工大学', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('106', '', '长春工业大学', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('107', '', '长春工程学院', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('108', '', '长春师范大学', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('109', '', '长春中医药大学', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('110', '', '吉林师范大学', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('111', '', '吉林财经大学', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('112', '', '吉林建筑大学', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('113', '', '吉林农业大学', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('114', '', '吉林警察学院', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('115', '', '吉林艺术学院', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('116', '', '吉林工程技术师范学院', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('117', '', '吉林化工学院', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('118', '', '吉林医药学院', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('119', '', '北华大学', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('120', '', '延边大学', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('121', '', '通化师范学院', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('122', '', '白城师范学院', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('123', '', '吉林工商学院', '2017-04-25 20:20:43', '2017-04-25 20:20:43');
INSERT INTO `t_sys_university` VALUES ('124', '', '吉林农业科技学院', '2017-04-25 20:20:43', '2017-04-25 20:20:43');

-- ----------------------------
-- Table structure for `t_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` varchar(32) NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `gender` varchar(1) NOT NULL COMMENT '性别，F男，M女',
  `birth_date` datetime NOT NULL COMMENT '生日',
  `mobile_phone_no` varchar(30) NOT NULL COMMENT '手机号',
  `email` varchar(20) DEFAULT '' COMMENT 'email',
  `qq` varchar(20) DEFAULT '' COMMENT 'qq',
  `wechat` varchar(20) DEFAULT '' COMMENT '微信',
  `login_name` varchar(20) DEFAULT '' COMMENT '登录名',
  `nick_name` varchar(20) DEFAULT '' COMMENT '昵称',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', '王玉梅', 'F', '1981-02-03 00:00:00', '13812345678', 'wangyumei@126.com', '12345678', 'wangyumeijl', 'wangym', '梅梅', '2017-04-27 16:14:22', '2017-04-27 16:14:22');
INSERT INTO `t_sys_user` VALUES ('10', '崔雨杰', 'M', '1979-06-07 00:00:00', '13312345678', '', '', '', '', '', '2017-05-06 18:18:53', '2017-05-06 18:18:53');
INSERT INTO `t_sys_user` VALUES ('101', '赵若淇', 'F', '1994-08-14 00:00:00', '13844218765', '348499910@qq.com', '348499910', 'ZRQ13844218765', 'zhaorq', '楉渃箬婼', '2017-04-27 16:15:34', '2017-04-27 16:15:34');
INSERT INTO `t_sys_user` VALUES ('2', '李花', 'F', '1971-06-07 00:00:00', '13012345678', '', '', '', '', '花花', '2017-04-27 16:15:02', '2017-04-27 16:15:02');
INSERT INTO `t_sys_user` VALUES ('201', '王研', 'F', '1968-05-28 00:00:00', '13944688550', 'wangyan@163.com', '348499911', 'wangyanjl', 'wangyan', '王研', '2017-04-27 16:15:34', '2017-04-27 16:15:34');
INSERT INTO `t_sys_user` VALUES ('3', '胡明慧', 'F', '1982-04-05 00:00:00', '13112345678', '', '', '', '', '', '2017-04-27 16:15:02', '2017-04-27 16:15:02');
INSERT INTO `t_sys_user` VALUES ('4', '隋健', 'M', '1972-06-07 00:00:00', '13312345678', '', '', '', '', '', '2017-04-27 16:15:03', '2017-04-27 16:15:03');
INSERT INTO `t_sys_user` VALUES ('5', '秦桂花', 'F', '1966-09-23 00:00:00', '13412345678', '', '', '', '', '花花', '2017-04-27 16:15:03', '2017-04-27 16:15:03');
INSERT INTO `t_sys_user` VALUES ('6', '李晓影', 'F', '1981-02-03 00:00:00', '13512345678', '', '', '', '', '', '2017-04-27 16:15:03', '2017-04-27 16:15:03');
INSERT INTO `t_sys_user` VALUES ('7', '杨春秋', 'F', '1981-02-03 00:00:00', '13612345678', '', '', '', '', '', '2017-04-27 16:15:03', '2017-04-27 16:15:03');
INSERT INTO `t_sys_user` VALUES ('8', '宋长友', 'M', '1981-02-03 00:00:00', '13712345678', '', '', '', '', '', '2017-04-27 16:15:03', '2017-04-27 16:15:03');
INSERT INTO `t_sys_user` VALUES ('9', '于波', 'M', '1981-02-03 00:00:00', '13912345678', '', '', '', '', '', '2017-04-27 16:15:03', '2017-04-27 16:15:03');

-- ----------------------------
-- Table structure for `t_sys_user_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_student`;
CREATE TABLE `t_sys_user_student` (
  `id` varchar(32) NOT NULL,
  `code` varchar(20) NOT NULL COMMENT '学号',
  `class_id` varchar(32) NOT NULL COMMENT '班级id',
  `graduation_school_id` int(3) DEFAULT NULL COMMENT '毕业学校id',
  `matriculation_school_id` int(3) DEFAULT NULL COMMENT '录取中学id',
  `university_id` int(4) DEFAULT NULL COMMENT '录取高校id',
  `major_id` int(5) DEFAULT NULL COMMENT '专业id',
  `university_duration_id` int(2) DEFAULT NULL COMMENT '学制id',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';

-- ----------------------------
-- Records of t_sys_user_student
-- ----------------------------
INSERT INTO `t_sys_user_student` VALUES ('101', '20151046', '201510', '9', null, '20', null, null, '2017-04-27 17:26:02', '2017-04-27 17:26:02');

-- ----------------------------
-- Table structure for `t_sys_user_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_teacher`;
CREATE TABLE `t_sys_user_teacher` (
  `id` varchar(32) NOT NULL,
  `edu_background_id` int(2) DEFAULT NULL COMMENT '学历id',
  `university_id` int(4) NOT NULL COMMENT '毕业学校',
  `major_id` int(5) NOT NULL COMMENT '专业',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师';

-- ----------------------------
-- Records of t_sys_user_teacher
-- ----------------------------
INSERT INTO `t_sys_user_teacher` VALUES ('1', '13', '101', '1', '2017-04-27 16:16:23', '2017-04-27 16:16:23');
INSERT INTO `t_sys_user_teacher` VALUES ('10', '14', '119', '26', '2017-05-06 18:33:53', '2017-05-06 18:33:53');
INSERT INTO `t_sys_user_teacher` VALUES ('2', '14', '119', '22', '2017-04-27 16:16:23', '2017-04-27 16:16:23');
INSERT INTO `t_sys_user_teacher` VALUES ('3', '14', '119', '23', '2017-04-27 16:16:23', '2017-04-27 16:16:23');
INSERT INTO `t_sys_user_teacher` VALUES ('4', '13', '119', '2', '2017-04-27 16:16:23', '2017-04-27 16:16:23');
INSERT INTO `t_sys_user_teacher` VALUES ('5', '14', '119', '3', '2017-04-27 16:16:23', '2017-04-27 16:16:23');
INSERT INTO `t_sys_user_teacher` VALUES ('6', '14', '102', '5', '2017-04-27 16:16:23', '2017-04-27 16:16:23');
INSERT INTO `t_sys_user_teacher` VALUES ('7', '14', '110', '31', '2017-04-27 16:16:23', '2017-04-27 16:16:23');
INSERT INTO `t_sys_user_teacher` VALUES ('8', '14', '110', '32', '2017-04-27 16:16:23', '2017-04-27 16:16:23');
INSERT INTO `t_sys_user_teacher` VALUES ('9', '14', '119', '33', '2017-04-27 16:16:23', '2017-04-27 16:16:23');

-- ----------------------------
-- Table structure for `t_web_banner`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_banner`;
CREATE TABLE `t_web_banner` (
  `id` int(2) NOT NULL,
  `image_prefix` varchar(50) NOT NULL COMMENT '图片相对路径',
  `image_suffix` varchar(50) NOT NULL COMMENT '图片后缀',
  `item_id` varchar(32) NOT NULL COMMENT '图片后缀',
  `sort` int(2) NOT NULL COMMENT '显示顺序',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='首页轮播图';

-- ----------------------------
-- Records of t_web_banner
-- ----------------------------
INSERT INTO `t_web_banner` VALUES ('1', '/upload/index/banner_1', '.jpg', 'xxxx1111', '1', '2017-05-03 17:37:11', '2017-05-03 17:37:11');
INSERT INTO `t_web_banner` VALUES ('2', '/upload/index/banner_2', '.jpg', 'xxxx1111', '2', '2017-05-03 17:37:11', '2017-05-03 17:37:11');
INSERT INTO `t_web_banner` VALUES ('3', '/upload/index/banner_3', '.jpg', 'xxxx1111', '3', '2017-05-03 17:37:11', '2017-05-03 17:37:11');
INSERT INTO `t_web_banner` VALUES ('4', '/upload/index/banner_4', '.png', 'xxxx1111', '4', '2017-05-03 17:37:11', '2017-05-03 17:37:11');
INSERT INTO `t_web_banner` VALUES ('5', '/upload/index/banner_5', '.jpg', 'xxxx1111', '5', '2017-05-03 17:37:11', '2017-05-03 17:37:11');

-- ----------------------------
-- Table structure for `t_web_item`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_item`;
CREATE TABLE `t_web_item` (
  `id` varchar(32) NOT NULL,
  `menu_id` int(2) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `origin` varchar(20) DEFAULT NULL COMMENT '来源',
  `clicks` bigint(20) DEFAULT '0' COMMENT '点击次数',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of t_web_item
-- ----------------------------
INSERT INTO `t_web_item` VALUES ('xxxx1111', '25', '2017年3月好教师', '<p style=\"text-align: center;\"><span style=\"color: red; font-family: 华文琥珀; font-size: 29px;\">2017</span><span style=\"color: red; font-family: 华文琥珀; font-size: 29px;\">年3月好教师</span></p><p><span style=\"color: red; font-family: 华文琥珀; font-size: 29px;\">&nbsp;</span></p><p style=\"text-align: center;\"><span style=\"color: red; font-family:;\">“先锋旗帜”党员好教师</span></p><p style=\"text-align: center;\"><span style=\"color: red; font-family:;\">（利用中午休息时间义务辅导教师）</span></p><p style=\"text-align: center;\"><span style=\"color: red; font-family:;\">&nbsp;</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: red; font-family:;\">2014</span><span style=\"color: red; font-family:;\">年级：</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">语文教师：孙威</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">数学教师：常越</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">英语教师：李建南</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">化学教师：罗永娟</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">物理教师：崔泽颖</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">生物教师：雒丹</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">政治教师：郝永秋</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">历史教师：刘金玉</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">地理教师：马丽莉</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: red; font-family:;\">2015</span><span style=\"color: red; font-family:;\">年级：</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">语文教师：黄河、陈晓梅、孙韬、黄春玲、李雪霏、王天宇</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">数学教师：张殿红、王传生、林岩、吴雯雯、刘伟红、刘跃忠、于爽、焦霞</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">英语教师：孟昭娟、宗新梅、宋双、张元、徐蓬</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">化学教师：袁丽霞、李慧鹏、蒋萌、张哲微、陈延东、孙立娟、金子淇</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">物理教师：刘研、邢宇、赵阳</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">生物教师：李晓颖、庄晓东、刘颖、于二力</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">政治教师：杨春秋、董长莉</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">地理教师：曲海霞、张怀新</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">历史教师：王硕</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: red; font-family:;\">2016</span><span style=\"color: red; font-family:;\">年级：</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">语文教师：李花、李海波、吴萌、崔万里、曹宏贵</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">数学教师：王玉梅、佟博、于俊杰、李大博、付晶、王俊明、马辉</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">英语教师：王铁娱</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">物理教师：杨建华、李苗、马月、管先军、于淼、杨添淇</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">化学教师：邱玉梅、王欣、张毅</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">生物老师：林荣、刘春雨</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">地理教师：于波</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">政治教师：奚雪冰、张欣媚</span></p><p style=\"text-align: left; line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">历史教师：宋长友、夏潇</span></p><p style=\"text-align: center;\"><span style=\"color: red; font-family: 华文琥珀; font-size: 21px;\">（2016年级好教师）</span></p><p style=\"line-height: 24px;\"><span style=\"color: red; font-family:;\">“爱岗敬业”好教师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">生物组：孙长峰&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">年级组：唐海&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">外语组：李惠昕&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: red; font-family:;\">“敬业奉献”好教师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">地理组：于波&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">体育组：崔雨杰&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">物理组：魏金峰&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: red; font-family:;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: red; font-family:;\">“热爱学生”好教师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">数学组：佟博&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">化学组：张毅&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">外语组：孙家宁&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: red; font-family:;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: red; font-family:;\">“相助为理”好教师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">数学组：宋志刚&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">语文组：索彤&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: red; font-family:;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: red; font-family:;\">“模范育人”好教师&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">外语组：李惠昕&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">语文组：崔万里&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"color: red; font-family:;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: red; font-family:;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: red; font-family:;\">“善于学习”好教师</span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">政治组：闫玉营&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p style=\"line-height: 24px;\"><span style=\"color: rgb(0, 112, 192); font-family:;\">历史组：杨红玉</span><span style=\"color: red; font-family:;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p><p><span style=\"color: red; font-size: 21px;\"><span style=\"font-family: Calibri;\">&nbsp;</span></span></p><p style=\"text-align: center;\"><span style=\"color: red; font-family: 华文琥珀; font-size: 21px;\">（2015年级好教师）</span></p><p style=\"text-indent: 43px;\"><span style=\"color: red; font-family: 华文隶书; font-size: 21px;\">“教学示范”好教师(年会、名师示范课)</span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(152, 72, 6); font-family: 黑体; font-size: 16px;\">语文组: <span style=\"background: white;\">黄河&nbsp; 孙韬&nbsp; 徐晶</span></span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(152, 72, 6); font-family: 黑体; font-size: 16px;\">数学组: <span style=\"background: white;\">吴雯雯&nbsp; 黄桂秋&nbsp; 林岩</span></span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(152, 72, 6); font-family: 黑体; font-size: 16px;\">英语组: <span style=\"background: white;\">胡明慧&nbsp; 宋双&nbsp; 孟召娟</span></span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(152, 72, 6); font-family: 黑体; font-size: 16px;\">物理组: <span style=\"background: white;\">赵&nbsp; 阳&nbsp; 邢宇&nbsp;&nbsp; 金迪</span></span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(152, 72, 6); font-family: 黑体; font-size: 16px;\">化学组: <span style=\"background: white;\">孙丽娟&nbsp; 刘磊</span></span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(152, 72, 6); font-family: 黑体; font-size: 16px;\">生物组: <span style=\"background: white;\">李晓影&nbsp; 王蕾</span></span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(152, 72, 6); font-family: 黑体; font-size: 16px;\">政治组: 董长莉</span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(152, 72, 6); font-family: 黑体; font-size: 16px;\">历史组: <span style=\"background: white;\">王硕</span></span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(152, 72, 6); font-family: 黑体; font-size: 16px;\">地理组: <span style=\"background: white;\">张怀新&nbsp; 王静&nbsp; 曲海霞</span>&nbsp;&nbsp; </span></p><p style=\"text-indent: 32px;\"><span style=\"color: rgb(74, 68, 42); font-family: 华文隶书; font-size: 16px;\">&nbsp;</span></p><p style=\"text-indent: 43px;\"><span style=\"color: red; font-family: 华文隶书; font-size: 21px;\">“爱岗敬业”好教师(代课多承担工作多)</span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(74, 68, 42); font-family: 黑体; font-size: 16px;\">数学组:<span style=\"background: white;\">于爽&nbsp; 张殿红 刘伟红</span></span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(74, 68, 42); font-family: 黑体; font-size: 16px;\">语文组: <span style=\"background: white;\">丁楠&nbsp; 王天宇&nbsp; 张文敏 李雪菲 黄春玲</span></span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(74, 68, 42); font-family: 黑体; font-size: 16px;\">英语组: 周艳芳 张雯 徐蓬 <span style=\"background: white;\">李京京</span></span></p><p style=\"text-indent: 56px;\"><span style=\"background: white; color: rgb(74, 68, 42); font-family: 黑体; font-size: 16px;\">物理组：邢宇 隋健</span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(74, 68, 42); font-family: 黑体; font-size: 16px;\">化学组: 蒋金秋&nbsp; 蒋萌</span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(74, 68, 42); font-family: 黑体; font-size: 16px;\">生物组: <span style=\"background: white;\">李晓影&nbsp; 匡荣娟&nbsp; 王蕾&nbsp; </span></span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(74, 68, 42); font-family: 黑体; font-size: 16px;\">政治组: 董长莉&nbsp; 孙洁宇</span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(74, 68, 42); font-family: 黑体; font-size: 16px;\">历史组: 邢炜</span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(74, 68, 42); font-family: 黑体; font-size: 16px;\">体育组: <span style=\"background: white;\">许海 苗林林 龙云飞</span></span></p><p style=\"text-indent: 32px;\"><span style=\"color: rgb(0, 112, 192); font-family: 华文隶书; font-size: 16px;\">&nbsp;</span></p><p style=\"text-indent: 43px;\"><span style=\"color: red; font-family: 华文隶书; font-size: 21px;\">“热爱学生”好教师</span><span style=\"color: red; font-family: 黑体; font-size: 21px;\"> </span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(0, 112, 192); font-family: 黑体; font-size: 16px;\">语文组: <span style=\"background: white;\">孙韬&nbsp;&nbsp; 陈晓梅 李艳秋&nbsp; 王力</span></span></p><p style=\"text-indent: 56px;\"><span style=\"background: white; color: rgb(0, 112, 192); font-family: 黑体; font-size: 16px;\">数学组：姬艳秋</span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(0, 112, 192); font-family: 黑体; font-size: 16px;\">英语组: 张元李京京 <span style=\"background: white;\">吕畅</span></span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(0, 112, 192); font-family: 黑体; font-size: 16px;\">化学组: 蒋萌</span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(0, 112, 192); font-family: 黑体; font-size: 16px;\">政治组：柳红兰</span></p><p style=\"text-indent: 56px;\"><span style=\"color: rgb(0, 112, 192); font-family: 黑体; font-size: 16px;\">体育组：卢波 杜玉</span></p><p style=\"text-indent: 32px;\"><span style=\"color: red; font-family: 华文隶书; font-size: 16px;\">&nbsp;</span></p><p style=\"text-indent: 43px;\"><span style=\"color: red; font-family: 华文隶书; font-size: 21px;\">“热爱学习”好教师</span><span style=\"color: red; font-family: 黑体; font-size: 21px;\"> </span></p><p style=\"line-height: 115%; text-indent: 56px;\"><span style=\"color: black; line-height: 115%; font-family: 黑体; font-size: 16px;\">化学组: 金子琪 </span></p><p style=\"line-height: 115%; text-indent: 56px;\"><span style=\"color: black; line-height: 115%; font-family: 黑体; font-size: 16px;\">&nbsp;</span></p><p style=\"text-indent: 32px;\"><span style=\"color: red; font-family: 华文隶书; font-size: 21px;\">“团结同事”好教师 </span></p><p style=\"line-height: 115%; text-indent: 56px;\"><span style=\"color: black; line-height: 115%; font-family: 黑体; font-size: 16px;\">语文组: 孙韬&nbsp; 徐晶</span></p><p style=\"line-height: 115%; text-indent: 56px;\"><span style=\"color: black; line-height: 115%; font-family: 黑体; font-size: 16px;\">英语组: 郭寥廓</span></p><p style=\"line-height: 115%; text-indent: 56px;\"><span style=\"color: black; line-height: 115%; font-family: 黑体; font-size: 16px;\">物理组: 金迪&nbsp; 赵阳</span></p><p style=\"line-height: 115%; text-indent: 56px;\"><span style=\"color: black; line-height: 115%; font-family: 黑体; font-size: 16px;\">化学组: 袁丽霞&nbsp; </span></p><p style=\"line-height: 115%; text-indent: 56px;\"><span style=\"color: black; line-height: 115%; font-family: 黑体; font-size: 16px;\">生物组: 庄晓东</span></p><p style=\"text-indent: 75px;\"><span style=\"color: rgb(0, 112, 192); font-family: 黑体; font-size: 21px;\">&nbsp;</span></p><p><span style=\"color: red; font-size: 21px;\"><span style=\"font-family: Calibri;\">&nbsp;</span></span></p><p style=\"text-align: center;\"><span style=\"color: red; font-family:;\">（行政好教师）</span></p><p><span style=\"color: red; font-family: 华文隶书; font-size: 21px;\">“爱校奉献”好教师（写校史）</span></p><p><span style=\"font-family:;\">科研室：范振东&nbsp; 矫闻迎会&nbsp;&nbsp; </span></p><p><span style=\"font-family:;\">历史组：宋长友&nbsp; </span></p><p><span style=\"font-family:;\">语文组：邓宏伟</span></p><p><span style=\"font-family:;\">&nbsp;</span><span style=\"font-size: 21px;\"><span style=\"font-family: Calibri;\">&nbsp;</span></span></p><p><span style=\"color: red; font-family: 华文隶书; font-size: 21px;\">（国际部好教师）</span></p><p><span style=\"color: red; font-family:;\">&nbsp;</span></p><p style=\"text-indent: 0px;\"><span style=\"color: red; font-family:;\">“爱岗敬业”好教师</span></p><p style=\"text-indent: 0px;\"><span style=\"font-family:;\">张妮娜</span></p><p style=\"text-indent: 0px;\"><span style=\"color: red; font-family:;\">“相助为理”好教师</span></p><p style=\"text-indent: 0px;\"><span style=\"font-family:;\">宫雪楠</span></p><p style=\"text-indent: 0px;\"><span style=\"color: red; font-family:;\">“关心集体”好教师</span></p><p style=\"text-indent: 0px;\"><span style=\"font-family:;\">魏爽</span></p><p style=\"text-indent: 0px;\"></p><p><span style=\"font-size: 21px;\"><span style=\"font-family: Calibri;\">&nbsp;</span></span></p><p></p>', '党办、各年级', '85', '2017-04-01 00:00:00', '2017-04-01 00:00:00');

-- ----------------------------
-- Table structure for `t_web_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_menu`;
CREATE TABLE `t_web_menu` (
  `id` int(2) NOT NULL,
  `navigation_id` int(2) NOT NULL,
  `sort` int(2) NOT NULL COMMENT '显示顺序',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='子导航栏';

-- ----------------------------
-- Records of t_web_menu
-- ----------------------------
INSERT INTO `t_web_menu` VALUES ('1', '1', '1', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('2', '1', '2', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('3', '1', '3', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('4', '1', '4', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('5', '1', '5', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('6', '1', '6', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('7', '2', '1', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('8', '2', '2', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('9', '2', '3', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('10', '2', '4', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('11', '3', '1', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('12', '3', '2', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('13', '3', '3', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('14', '3', '4', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('15', '4', '1', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('16', '4', '2', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('17', '4', '3', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('18', '4', '4', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('19', '5', '1', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('20', '5', '2', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('21', '5', '3', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('22', '5', '4', '2017-04-28 17:51:22', '2017-04-28 17:51:22');
INSERT INTO `t_web_menu` VALUES ('23', '5', '5', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('24', '5', '6', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('25', '5', '7', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('26', '6', '1', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('27', '6', '2', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('28', '6', '3', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('29', '6', '4', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('30', '6', '5', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('31', '6', '6', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('32', '7', '1', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('33', '7', '2', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('34', '7', '3', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('35', '7', '4', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('36', '8', '1', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('37', '8', '2', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('38', '8', '3', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('39', '8', '4', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('40', '8', '5', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('41', '9', '1', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('42', '9', '2', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('43', '9', '3', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('44', '9', '4', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('45', '9', '5', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('46', '9', '6', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('47', '10', '1', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('48', '10', '2', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('49', '10', '3', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('50', '10', '4', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('51', '10', '5', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('52', '10', '6', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('53', '11', '1', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('54', '11', '2', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('55', '11', '3', '2017-04-28 17:51:23', '2017-04-28 17:51:23');
INSERT INTO `t_web_menu` VALUES ('56', '12', '1', '2017-04-28 17:51:23', '2017-04-28 17:51:23');

-- ----------------------------
-- Table structure for `t_web_navigation`
-- ----------------------------
DROP TABLE IF EXISTS `t_web_navigation`;
CREATE TABLE `t_web_navigation` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'i18nkey',
  `scope` varchar(1) NOT NULL COMMENT 'P: 在PC站展示、M: 在M站展示、A: 在P和M都展示、N: 不展示',
  `icon` varchar(50) NOT NULL COMMENT 'M站图标相对路径',
  `sort` int(2) NOT NULL COMMENT '显示顺序',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updated_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导航栏';

-- ----------------------------
-- Records of t_web_navigation
-- ----------------------------
INSERT INTO `t_web_navigation` VALUES ('1', 'summary', 'A', '/content/summary.jpg', '1', '2017-04-30 16:43:34', '2017-04-30 16:43:34');
INSERT INTO `t_web_navigation` VALUES ('2', 'open', 'A', '/content/universal.jpg', '3', '2017-04-30 16:43:34', '2017-04-30 16:43:34');
INSERT INTO `t_web_navigation` VALUES ('3', 'achievement', 'A', '/content/universal.jpg', '4', '2017-04-30 16:43:34', '2017-04-30 16:43:34');
INSERT INTO `t_web_navigation` VALUES ('4', 'organization', 'A', '/content/universal.jpg', '5', '2017-04-30 16:43:34', '2017-04-30 16:43:34');
INSERT INTO `t_web_navigation` VALUES ('5', 'teacher', 'A', '/content/teacher.jpg', '6', '2017-04-30 16:43:34', '2017-04-30 16:43:34');
INSERT INTO `t_web_navigation` VALUES ('6', 'research', 'A', '/content/research.jpg', '7', '2017-04-30 16:43:34', '2017-04-30 16:43:34');
INSERT INTO `t_web_navigation` VALUES ('7', 'join_us', 'A', '/content/universal.jpg', '8', '2017-04-30 16:43:34', '2017-04-30 16:43:34');
INSERT INTO `t_web_navigation` VALUES ('8', 'student', 'A', '/content/student.jpg', '9', '2017-04-30 16:43:34', '2017-04-30 16:43:34');
INSERT INTO `t_web_navigation` VALUES ('9', 'intl_coop', 'A', '/content/universal.jpg', '10', '2017-04-30 16:43:34', '2017-04-30 16:43:34');
INSERT INTO `t_web_navigation` VALUES ('10', 'alumni', 'A', '/content/universal.jpg', '11', '2017-04-30 16:43:34', '2017-04-30 16:43:34');
INSERT INTO `t_web_navigation` VALUES ('11', 'interaction', 'A', '/content/universal.jpg', '12', '2017-04-30 16:43:34', '2017-04-30 16:43:34');
INSERT INTO `t_web_navigation` VALUES ('12', 'news', 'M', '/content/news.jpg', '2', '2017-04-30 16:43:34', '2017-04-30 16:43:34');
