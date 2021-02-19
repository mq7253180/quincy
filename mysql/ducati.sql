/*
 Navicat Premium Data Transfer

 Source Server         : 172.16.80.12
 Source Server Type    : MySQL
 Source Server Version : 50560
 Source Host           : 172.16.80.12:3306
 Source Schema         : ducati

 Target Server Type    : MySQL
 Target Server Version : 50560
 File Encoding         : 65001

 Date: 20/10/2019 11:39:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_company
-- ----------------------------
DROP TABLE IF EXISTS `b_company`;
CREATE TABLE `b_company` (
  `id` int(11) NOT NULL,
  `en_name` varchar(50) NOT NULL COMMENT '英文名称',
  `cn_name` varchar(50) NOT NULL COMMENT '中文名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_en_name` (`en_name`),
  UNIQUE KEY `unq_cn_name` (`cn_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_company
-- ----------------------------
BEGIN;
INSERT INTO `b_company` VALUES (1, 'Camel', '骆驼');
COMMIT;

-- ----------------------------
-- Table structure for b_region
-- ----------------------------
DROP TABLE IF EXISTS `b_region`;
CREATE TABLE `b_region` (
  `id` int(11) NOT NULL,
  `en_name` varchar(50) NOT NULL COMMENT '英文名称',
  `cn_name` varchar(50) NOT NULL COMMENT '中文名称',
  `tel_prefix` varchar(15) DEFAULT NULL COMMENT '电话区号',
  `code` varchar(5) DEFAULT NULL COMMENT '三字码',
  `code2` varchar(2) DEFAULT NULL COMMENT '两字码',
  `currency` varchar(5) DEFAULT NULL COMMENT '币种',
  `locale` varchar(10) DEFAULT NULL COMMENT 'locale',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_en_name` (`en_name`),
  UNIQUE KEY `unq_cn_name` (`cn_name`),
  UNIQUE KEY `unq_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_region
-- ----------------------------
BEGIN;
INSERT INTO `b_region` VALUES (1, 'China', '中国大陆', '86', 'CHN', 'CN', 'CNY', 'zh_CN');
INSERT INTO `b_region` VALUES (2, 'Hong Kong(China)', '中国香港', '852', 'HKG', 'HK', 'HKD', 'zh_HK');
INSERT INTO `b_region` VALUES (3, 'Macau(China)', '中国澳门', '853', 'MAC', 'MO', 'MOP', 'zh_MO');
INSERT INTO `b_region` VALUES (4, 'Taiwan(China)', '中国台湾', '886', 'TWN', 'TW', 'TWD', 'zh_TW');
INSERT INTO `b_region` VALUES (5, 'United States of America', '美国', '1', 'USA', 'US', 'USD', 'en_US');
INSERT INTO `b_region` VALUES (6, 'United Kingdom', '英国', '44', 'GBR', 'GB', 'GBP', 'en_GB');
INSERT INTO `b_region` VALUES (7, 'France', '法国', '33', 'FRA', 'FR', 'EUR', 'fr_FR');
INSERT INTO `b_region` VALUES (8, 'Russia', '俄罗斯', '7', 'RUS', 'RU', 'RUB', 'ru_RU');
INSERT INTO `b_region` VALUES (9, 'Canada', '加拿大', '1', 'CAN', 'CA', 'CAD', NULL);
INSERT INTO `b_region` VALUES (10, 'Australia', '澳大利亚', '61', 'AUS', 'AU', 'AUD', NULL);
INSERT INTO `b_region` VALUES (11, 'Japan', '日本', '81', 'JPN', 'JP', 'JPY', 'ja_JP');
INSERT INTO `b_region` VALUES (12, 'South Korea', '韩国', '82', 'KOR', 'KR', 'KRW', NULL);
INSERT INTO `b_region` VALUES (13, 'Singapore', '新加坡', '65', 'SGP', 'SG', 'SGD', NULL);
INSERT INTO `b_region` VALUES (14, 'Malaysia', '马来西亚', '60', 'MYS', 'MY', 'MYR', NULL);
INSERT INTO `b_region` VALUES (15, 'Thailand', '泰国', '66', 'THA', 'TH', 'THB', NULL);
INSERT INTO `b_region` VALUES (16, 'Indonesia', '印度尼西亚', '62', 'IDN', 'ID', NULL, NULL);
INSERT INTO `b_region` VALUES (17, 'New Zealand', '新西兰', '64', 'NZL', 'NZ', 'NZD', NULL);
INSERT INTO `b_region` VALUES (18, 'Germany', '德国', '49', 'DEU', 'DE', 'EUR', NULL);
INSERT INTO `b_region` VALUES (19, 'Italy', '意大利', '39', 'ITA', 'IT', 'EUR', NULL);
INSERT INTO `b_region` VALUES (20, 'Netherlands', '荷兰', '31', 'NLD', 'NL', 'EUR', NULL);
INSERT INTO `b_region` VALUES (21, 'Ireland', '爱尔兰', '353', 'IRL', 'IE', 'EUR', NULL);
INSERT INTO `b_region` VALUES (22, 'Spain', '西班牙', '34', 'ESP', 'ES', 'EUR', NULL);
INSERT INTO `b_region` VALUES (23, 'Portugal', '葡萄牙', '351', 'PRT', 'PT', 'EUR', NULL);
INSERT INTO `b_region` VALUES (24, 'Austria', '奥地利', '43', 'AUT', 'AT', 'EUR', NULL);
INSERT INTO `b_region` VALUES (25, 'Hungary', '匈牙利', '36', 'HUN', 'HU', NULL, NULL);
INSERT INTO `b_region` VALUES (26, 'Belguim', '比利时', '32', 'BEL', 'BE', 'EUR', NULL);
INSERT INTO `b_region` VALUES (27, 'Luxembourg', '卢森堡', '352', 'LUX', 'LU', 'EUR', NULL);
INSERT INTO `b_region` VALUES (28, 'Greece', '希腊', '30', 'GRC', 'GR', 'EUR', NULL);
INSERT INTO `b_region` VALUES (29, 'Switzerland', '瑞士', '41', 'CHE', 'CH', 'CHF', NULL);
INSERT INTO `b_region` VALUES (30, 'Sweden', '瑞典', '46', 'SWE', 'SE', 'SEK', NULL);
INSERT INTO `b_region` VALUES (31, 'Norway', '挪威', '47', 'NOR', 'NO', 'NOK', NULL);
INSERT INTO `b_region` VALUES (32, 'Finland', '芬兰', '358', 'FIN', 'FI', 'EUR', NULL);
INSERT INTO `b_region` VALUES (33, 'Denmark', '丹麦', '45', 'DNK', 'DK', 'DKK', NULL);
INSERT INTO `b_region` VALUES (34, 'Iceland', '冰岛', '354', 'ISL', 'IS', NULL, NULL);
INSERT INTO `b_region` VALUES (35, 'Greenland', '格陵兰', '299', 'GRL', 'GL', NULL, NULL);
INSERT INTO `b_region` VALUES (41, 'Antarctica', '南极洲', '672', 'ATA', 'AQ', NULL, NULL);
INSERT INTO `b_region` VALUES (42, 'Mexico', '墨西哥', '52', 'MEX', 'MX', NULL, NULL);
INSERT INTO `b_region` VALUES (43, 'Cuba', '古巴', '53', 'CUB', 'CU', NULL, NULL);
INSERT INTO `b_region` VALUES (44, 'Brazil', '巴西', '55', 'BRA', 'BR', 'BRL', NULL);
INSERT INTO `b_region` VALUES (45, 'Argentina', '阿根廷', '54', 'ARG', 'AR', NULL, NULL);
INSERT INTO `b_region` VALUES (46, 'Chile', '智利', '56', 'CHL', 'CL', NULL, NULL);
INSERT INTO `b_region` VALUES (47, 'Peru', '秘鲁', '51', 'PER', 'PE', NULL, NULL);
INSERT INTO `b_region` VALUES (48, 'Colombia', '哥伦比亚', '57', 'COL', 'CO', NULL, NULL);
INSERT INTO `b_region` VALUES (49, 'Venezuela', '委内瑞拉', '58', 'VEN', 'VE', NULL, NULL);
INSERT INTO `b_region` VALUES (50, 'Uruguay', '乌拉圭', '598', 'URY', 'UY', NULL, NULL);
INSERT INTO `b_region` VALUES (51, 'Paraguay', '巴拉圭', '595', 'PRY', 'PY', NULL, NULL);
INSERT INTO `b_region` VALUES (52, 'Costa Rica', '哥斯达黎加', '506', 'CRI', 'CR', NULL, NULL);
INSERT INTO `b_region` VALUES (53, 'Bolivia', '玻利维亚', '591', 'BOL', 'BO', NULL, NULL);
INSERT INTO `b_region` VALUES (54, 'Guyana', '圭亚那', '592', 'GUY', 'GY', NULL, NULL);
INSERT INTO `b_region` VALUES (55, 'Dominican Republic', '多米尼加共和国', '1-809', 'DOM', 'DO', NULL, NULL);
INSERT INTO `b_region` VALUES (56, 'Dominica', '多米尼克', '1-767', 'DMA', 'DM', NULL, NULL);
INSERT INTO `b_region` VALUES (57, 'Ecuador', '厄瓜多尔', '593', 'ECU', 'EC', NULL, NULL);
INSERT INTO `b_region` VALUES (58, 'Nicaragua', '尼加拉瓜', '505', 'NIC', 'NI', NULL, NULL);
INSERT INTO `b_region` VALUES (59, 'EI Salvador', '萨尔瓦多', '503', 'SLV', 'SV', NULL, NULL);
INSERT INTO `b_region` VALUES (60, 'Guatemala', '危地马拉', '502', 'GTM', 'GT', NULL, NULL);
INSERT INTO `b_region` VALUES (61, 'Honduras', '洪都拉斯', '504', 'HND', 'HN', NULL, NULL);
INSERT INTO `b_region` VALUES (62, 'Jamaica', '牙买加', '1-876', 'JAM', 'JM', NULL, NULL);
INSERT INTO `b_region` VALUES (63, 'Haiti', '海地', '509', 'HTI', 'HT', NULL, NULL);
INSERT INTO `b_region` VALUES (71, 'Turkey', '土耳其', '90', 'TUR', 'TR', NULL, NULL);
INSERT INTO `b_region` VALUES (72, 'Egypt', '埃及', '20', 'EGY', 'EG', NULL, NULL);
INSERT INTO `b_region` VALUES (73, 'Israel', '以色列', '972', 'ISR', 'IL', NULL, NULL);
INSERT INTO `b_region` VALUES (74, 'Palestinian Territories', '巴勒斯坦', '970', 'PSE', 'PS', NULL, NULL);
INSERT INTO `b_region` VALUES (75, 'Jordan', '约旦', '962', 'JOR', 'JO', NULL, NULL);
INSERT INTO `b_region` VALUES (76, 'Lebanon', '黎巴嫩', '961', 'LBN', 'LB', NULL, NULL);
INSERT INTO `b_region` VALUES (77, 'Qatar', '卡塔尔', '974', 'QAT', 'QA', NULL, NULL);
INSERT INTO `b_region` VALUES (78, 'Unitred Arab Emirates', '阿拉伯联合酋长国', '971', 'ARE', 'AE', 'AED', NULL);
INSERT INTO `b_region` VALUES (79, 'Saudi Arabia', '沙特阿拉伯', '966', 'SAU', 'SA', NULL, NULL);
INSERT INTO `b_region` VALUES (80, 'Iran', '伊朗', '98', 'IRN', 'IR', NULL, NULL);
INSERT INTO `b_region` VALUES (81, 'Iraq', '伊拉克', '964', 'IRQ', 'IQ', NULL, NULL);
INSERT INTO `b_region` VALUES (82, 'Kuwait', '科威特', '965', 'KWT', 'KW', NULL, NULL);
INSERT INTO `b_region` VALUES (91, 'India', '印度', '91', 'IND', 'IN', NULL, NULL);
INSERT INTO `b_region` VALUES (92, 'Pakistan', '巴基斯坦', '92', 'PAK', 'PK', NULL, NULL);
INSERT INTO `b_region` VALUES (93, 'Bangladesh', '孟加拉国', '880', 'BGD', 'BD', NULL, NULL);
INSERT INTO `b_region` VALUES (94, 'Sri Lanka', '斯里兰卡', '94', 'LKA', 'LK', NULL, NULL);
INSERT INTO `b_region` VALUES (95, 'Maldives', '马尔代夫', '960', 'MDV', 'MV', NULL, NULL);
INSERT INTO `b_region` VALUES (96, 'Philippines', '菲律宾', '63', 'PHL', 'PH', 'PHP', NULL);
INSERT INTO `b_region` VALUES (97, 'Brunei', '文莱', '673', 'BRN', 'BN', NULL, NULL);
INSERT INTO `b_region` VALUES (98, 'Timor-Leste', '东帝汶', '670', 'TLS', 'TL', NULL, NULL);
INSERT INTO `b_region` VALUES (99, 'Myanmar(Burma)', '缅甸', '95', 'MMR', 'MM', NULL, NULL);
INSERT INTO `b_region` VALUES (100, 'Vietnam', '越南', '84', 'VNM', 'VN', NULL, NULL);
INSERT INTO `b_region` VALUES (101, 'Cambodia', '柬埔寨', '855', 'KHM', 'KH', NULL, NULL);
INSERT INTO `b_region` VALUES (102, 'Laos', '老挝', '856', 'LAO', 'LA', NULL, NULL);
INSERT INTO `b_region` VALUES (103, 'Nepal', '尼泊尔', '977', 'NPL', 'NP', NULL, NULL);
INSERT INTO `b_region` VALUES (104, 'Bhutan', '不丹', '975', 'BTN', 'BT', NULL, NULL);
INSERT INTO `b_region` VALUES (105, 'Mongolia', '蒙古', '976', 'MNG', 'MN', NULL, NULL);
INSERT INTO `b_region` VALUES (106, 'Oman', '阿曼', '968', 'OMN', 'OM', NULL, NULL);
INSERT INTO `b_region` VALUES (107, 'Afghanistan', '阿富汗', '93', 'AFG', 'AF', NULL, NULL);
INSERT INTO `b_region` VALUES (111, 'Poland', '波兰', '48', 'POL', 'PL', NULL, NULL);
INSERT INTO `b_region` VALUES (112, 'Bulgaria', '保加利亚', '359', 'BGR', 'BG', NULL, NULL);
INSERT INTO `b_region` VALUES (113, 'Romania', '罗马尼亚', '40', 'ROM', 'RO', NULL, NULL);
INSERT INTO `b_region` VALUES (114, 'Albania', '阿尔巴尼亚', '355', 'ALB', 'AL', NULL, NULL);
INSERT INTO `b_region` VALUES (115, 'Czechia', '捷克', '420', 'CZE', 'CZ', NULL, NULL);
INSERT INTO `b_region` VALUES (116, 'Slovakia', '斯洛伐克', '421', 'SVK', 'SK', 'EUR', NULL);
INSERT INTO `b_region` VALUES (121, 'Ukaraine', '乌克兰', '380', 'UKR', 'UA', NULL, NULL);
INSERT INTO `b_region` VALUES (122, 'Belarus', '白俄罗斯', '375', 'BLR', 'BY', NULL, NULL);
INSERT INTO `b_region` VALUES (123, 'Lithuania', '立陶宛', '370', 'LTU', 'LT', 'EUR', NULL);
INSERT INTO `b_region` VALUES (124, 'Georgia', '格鲁吉亚', '995', 'GEO', 'GE', NULL, NULL);
INSERT INTO `b_region` VALUES (125, 'Latvia', '拉脱维亚', '371', 'LVA', 'LV', 'EUR', NULL);
INSERT INTO `b_region` VALUES (126, 'Armenia', '亚美尼亚', '374', 'ARM', 'AM', NULL, NULL);
INSERT INTO `b_region` VALUES (127, 'Estonia', '爱沙尼亚', '372', 'EST', 'EE', 'EUR', NULL);
INSERT INTO `b_region` VALUES (128, 'Azerbaijan', '阿塞拜疆', '994', 'AZE', 'AZ', NULL, NULL);
INSERT INTO `b_region` VALUES (129, 'Kazakhstan', '哈萨克斯坦', '7', 'KAZ', 'KZ', NULL, NULL);
INSERT INTO `b_region` VALUES (130, 'Tajikistan', '塔吉克斯坦', '992', 'TJK', 'TJ', NULL, NULL);
INSERT INTO `b_region` VALUES (131, 'Turkmenistan', '土库曼斯坦', '993', 'TKM', 'TM', NULL, NULL);
INSERT INTO `b_region` VALUES (132, 'Uzbekistan', '乌兹别克斯坦', '998', 'UZB', 'UZ', NULL, NULL);
INSERT INTO `b_region` VALUES (133, 'Kyrgyzstan', '吉尔吉斯斯坦', '996', 'KGZ', 'KG', NULL, NULL);
INSERT INTO `b_region` VALUES (141, 'Serbia', '塞尔维亚', '381', 'SRB', 'RS', NULL, NULL);
INSERT INTO `b_region` VALUES (142, 'Croatia', '克罗地亚', '385', 'HRV', 'HR', NULL, NULL);
INSERT INTO `b_region` VALUES (143, 'Slovenia', '斯洛文尼亚', '386', 'SVN', 'SI', 'EUR', NULL);
INSERT INTO `b_region` VALUES (144, 'Macedonia', '马其顿', '389', 'MKD', 'MK', NULL, NULL);
INSERT INTO `b_region` VALUES (145, 'Montenegro', '黑山', '382', 'MNE', 'ME', NULL, NULL);
INSERT INTO `b_region` VALUES (146, 'Andorra', '安道尔', '376', 'AND', 'AD', NULL, NULL);
INSERT INTO `b_region` VALUES (151, 'Solomon Islands', '所罗门群岛', '677', 'SLB', 'SB', NULL, NULL);
INSERT INTO `b_region` VALUES (152, 'Marshall Islands', '马绍尔群岛', '692', 'MHL', 'MH', NULL, NULL);
INSERT INTO `b_region` VALUES (153, 'Cook Islands', '库克群岛', '682', 'COK', 'CK', NULL, NULL);
INSERT INTO `b_region` VALUES (154, 'Norfolk Islands', '诺福克岛(澳属)', '672', 'NFK', 'NF', NULL, NULL);
INSERT INTO `b_region` VALUES (155, 'Papua New Guinea', '巴布亚新几内亚', '675', 'PNG', 'PG', NULL, NULL);
INSERT INTO `b_region` VALUES (156, 'Vanuatu', '瓦努阿图', '678', 'VUT', 'VU', NULL, NULL);
INSERT INTO `b_region` VALUES (157, 'Fiji', '斐济', '679', 'FJI', 'FJ', NULL, NULL);
INSERT INTO `b_region` VALUES (158, 'Palau', '帕劳', '680', 'PLW', 'PW', NULL, NULL);
INSERT INTO `b_region` VALUES (159, 'Tonga', '汤加', '676', 'TON', 'TO', NULL, NULL);
INSERT INTO `b_region` VALUES (160, 'Samoa', '萨摩亚', '685', 'WSM', 'WS', NULL, NULL);
INSERT INTO `b_region` VALUES (171, 'U.S. Outlying Islands', '美国离岛', NULL, 'UMI', 'UM', NULL, NULL);
INSERT INTO `b_region` VALUES (172, 'U.S. Virgin Islands', '美属维尔京群岛', '1-340', 'VIR', 'VI', NULL, NULL);
INSERT INTO `b_region` VALUES (173, 'American Samoa', '美属萨摩亚', '1-684', 'ASM', 'AS', NULL, NULL);
INSERT INTO `b_region` VALUES (174, 'Puerto Rico', '波多黎各', '1-787/1-939', 'PRI', 'PR', NULL, NULL);
INSERT INTO `b_region` VALUES (175, 'Guam', '关岛', '1-671', 'GUM', 'GU', NULL, NULL);
INSERT INTO `b_region` VALUES (176, 'Northern Mariana Islands', '北马里亚纳群岛', '1-670', 'MNP', 'MP', NULL, NULL);
INSERT INTO `b_region` VALUES (177, 'British Virgin Islands', '英属维尔京群岛', '1-284', 'VGB', 'VG', NULL, NULL);
INSERT INTO `b_region` VALUES (178, 'British Indian Ocean Territory', '英属印度洋领地', NULL, 'IOT', NULL, NULL, NULL);
INSERT INTO `b_region` VALUES (179, 'Gibraltar', '直布罗陀', '350', 'GIB', 'GI', NULL, NULL);
INSERT INTO `b_region` VALUES (180, 'Falkland', '福克兰群岛', '500', 'FLK', 'FK', NULL, NULL);
INSERT INTO `b_region` VALUES (181, 'Cayman Islands', '开曼群岛', '1-345', 'CYM', 'KY', NULL, NULL);
INSERT INTO `b_region` VALUES (182, 'Bermuda', '百慕大', '1-441', 'BMU', 'BM', NULL, NULL);
INSERT INTO `b_region` VALUES (183, 'French Guiana', '法属圭亚那', '594', 'GUF', 'GF', NULL, NULL);
INSERT INTO `b_region` VALUES (184, 'French Polynesia', '法属波利尼西亚', '689', 'PYF', 'PF', NULL, NULL);
INSERT INTO `b_region` VALUES (185, 'French Southern Territories', '法属南部领地', NULL, 'ATF', 'TF', NULL, NULL);
INSERT INTO `b_region` VALUES (186, 'St. Martin', '法属圣马丁', '590', 'MAF', 'MF', NULL, NULL);
INSERT INTO `b_region` VALUES (187, 'Reunion', '留尼旺', '262', 'REU', 'RE', NULL, NULL);
INSERT INTO `b_region` VALUES (188, 'Caribbean Netherlands', '荷属加勒比', NULL, 'BES', 'BQ', NULL, NULL);
INSERT INTO `b_region` VALUES (189, 'Sint Maarten', '荷属圣马丁', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `b_region` VALUES (191, 'Malta', '马耳他', '356', 'MLT', 'MT', 'EUR', NULL);
INSERT INTO `b_region` VALUES (192, 'Vatican City', '梵蒂冈', '379', 'VAT', 'VA', NULL, NULL);
INSERT INTO `b_region` VALUES (193, 'Moldova', '摩尔多瓦', '373', 'MDA', 'MD', NULL, NULL);
INSERT INTO `b_region` VALUES (194, 'Monaco', '摩纳哥', '377', 'MCO', 'MC', NULL, NULL);
INSERT INTO `b_region` VALUES (195, 'Cyprus', '塞浦路斯', '357', 'CYP', 'CY', 'EUR', NULL);
INSERT INTO `b_region` VALUES (196, 'San Marino', '圣马力诺', '378', 'SMR', 'SM', NULL, NULL);
INSERT INTO `b_region` VALUES (201, 'South Africa', '南非', '27', 'ZAF', 'ZA', 'ZAR', NULL);
INSERT INTO `b_region` VALUES (202, 'Madagascar', '马达加斯加', '261', 'MDG', 'MG', NULL, NULL);
INSERT INTO `b_region` VALUES (203, 'Algeria', '阿尔及利亚', '213', 'DZA', 'DZ', NULL, NULL);
INSERT INTO `b_region` VALUES (204, 'Kenya', '肯尼亚', '254', 'KEN', 'KE', NULL, NULL);
INSERT INTO `b_region` VALUES (205, 'Libya', '利比亚', '218', 'LBY', 'LY', NULL, NULL);
INSERT INTO `b_region` VALUES (206, 'Yemen', '也门', '967', 'YEM', 'YE', NULL, NULL);
INSERT INTO `b_region` VALUES (207, 'Somalia', '索马里', '252', 'SOM', 'SO', NULL, NULL);
INSERT INTO `b_region` VALUES (208, 'South Sudan', '南苏丹', '211', 'SSD', 'SS', NULL, NULL);
INSERT INTO `b_region` VALUES (209, 'Ethiopia', '埃塞俄比亚', '251', 'ETH', 'ET', NULL, NULL);
INSERT INTO `b_region` VALUES (210, 'Botswana', '博茨瓦纳', '267', 'BWA', 'BW', NULL, NULL);
INSERT INTO `b_region` VALUES (211, 'Burkina Faso', '布基纳法索', '226', 'BFA', 'BF', NULL, NULL);
INSERT INTO `b_region` VALUES (212, 'Burundi', '布隆迪', '257', 'BDI', 'BI', NULL, NULL);
INSERT INTO `b_region` VALUES (213, 'Equatorial Guinea', '赤道几内亚', '240', 'GNQ', 'GQ', NULL, NULL);
INSERT INTO `b_region` VALUES (214, 'Togo', '多哥', '228', 'TGO', 'TG', NULL, NULL);
INSERT INTO `b_region` VALUES (215, 'Cape Verde', '佛得角', '238', 'CPV', 'CV', NULL, NULL);
INSERT INTO `b_region` VALUES (216, 'Gambia', '冈比亚', '220', 'GMB', 'GM', NULL, NULL);
INSERT INTO `b_region` VALUES (217, 'Congo-Brazzaville', '刚果(布)', '242', 'COG', 'CG', NULL, NULL);
INSERT INTO `b_region` VALUES (218, 'Congo-Kinshasa', '刚果(金)', '243', 'COD', 'CD', NULL, NULL);
INSERT INTO `b_region` VALUES (219, 'Djibouti', '吉布提', '253', 'DJI', 'DJ', NULL, NULL);
INSERT INTO `b_region` VALUES (220, 'Guinea', '几内亚', '224', 'GIN', 'GN', NULL, NULL);
INSERT INTO `b_region` VALUES (221, 'Ghana', '加纳', '233', 'GHA', 'GH', NULL, NULL);
INSERT INTO `b_region` VALUES (222, 'Gabon', '加蓬', '241', 'GAB', 'GA', NULL, NULL);
INSERT INTO `b_region` VALUES (223, 'Zimbabwe', '津巴布韦', '263', 'ZWE', 'ZW', NULL, NULL);
INSERT INTO `b_region` VALUES (224, 'Cameroon', '喀麦隆', '237', 'CMR', 'CM', NULL, NULL);
INSERT INTO `b_region` VALUES (225, 'Cote d Ivoire', '科特迪瓦', '225', 'CIV', 'CI', NULL, NULL);
INSERT INTO `b_region` VALUES (226, 'Liberia', '利比里亚', '231', 'LBR', 'LR', NULL, NULL);
INSERT INTO `b_region` VALUES (227, 'Rwanda', '卢旺达', '250', 'RWA', 'RW', NULL, NULL);
INSERT INTO `b_region` VALUES (228, 'Malawi', '马拉维', '265', 'MWI', 'MW', NULL, NULL);
INSERT INTO `b_region` VALUES (229, 'Mali', '马里', '223', 'MLI', 'ML', NULL, NULL);
INSERT INTO `b_region` VALUES (230, 'Mauritius', '毛里求斯', '230', 'MUS', 'MU', NULL, NULL);
INSERT INTO `b_region` VALUES (231, 'Mauritania', '毛里塔尼亚', '222', 'MRT', 'MR', NULL, NULL);
INSERT INTO `b_region` VALUES (232, 'Morocco', '摩洛哥', '212', 'MAR', 'MA', NULL, NULL);
INSERT INTO `b_region` VALUES (233, 'Mozambique', '莫桑比克', '258', 'MOZ', 'MZ', NULL, NULL);
INSERT INTO `b_region` VALUES (234, 'Namibia', '纳米比亚', '264', 'NAM', 'NA', NULL, NULL);
INSERT INTO `b_region` VALUES (235, 'Niger', '尼日尔', '227', 'NER', 'NE', NULL, NULL);
INSERT INTO `b_region` VALUES (236, 'Nigeria', '尼日利亚', '234', 'NGA', 'NG', NULL, NULL);
INSERT INTO `b_region` VALUES (237, 'Sierra Leone', '塞拉利昂', '232', 'SLE', 'SL', NULL, NULL);
INSERT INTO `b_region` VALUES (238, 'Senegal', '塞内加尔', '221', 'SEN', 'SN', NULL, NULL);
INSERT INTO `b_region` VALUES (239, 'Seychelles', '塞舌尔', '248', 'SYC', 'SC', NULL, NULL);
INSERT INTO `b_region` VALUES (240, 'Sao Tome & Principe', '圣多美和普林西比', '239', 'STP', 'ST', NULL, NULL);
INSERT INTO `b_region` VALUES (241, 'Tanzania', '坦桑尼亚', '255', 'TZA', 'TZ', NULL, NULL);
INSERT INTO `b_region` VALUES (242, 'Tunisia', '突尼斯', '216', 'TUN', 'TN', NULL, NULL);
INSERT INTO `b_region` VALUES (243, 'Uganda', '乌干达', '256', 'UGA', 'UG', NULL, NULL);
INSERT INTO `b_region` VALUES (244, 'Western Sahara', '西撒哈拉', NULL, 'ESH', 'EH', NULL, NULL);
INSERT INTO `b_region` VALUES (245, 'Zambia', '赞比亚', '260', 'ZMB', 'ZM', NULL, NULL);
INSERT INTO `b_region` VALUES (246, 'Chad', '乍得', '235', 'TCD', 'TD', NULL, NULL);
INSERT INTO `b_region` VALUES (247, 'Central African Republic', '中非共和国', '236', 'CAF', 'CF', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for b_credit
-- ----------------------------
DROP TABLE IF EXISTS `b_credit`;
CREATE TABLE `b_credit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL COMMENT 'b_company的id',
  `currency` varchar(5) NOT NULL COMMENT '合同币种',
  `amount` decimal(17,2) NOT NULL COMMENT '合同额度',
  `ratio` tinyint(2) NOT NULL COMMENT '保证金比例%',
  `max_limit_one_day` decimal(17,2) NOT NULL COMMENT '最大日放款额',
  `valid_from` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生效时间',
  `user_id` int(11) NOT NULL COMMENT '操作员id, 改amount的人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq` (`company_id`,`currency`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_credit
-- ----------------------------
BEGIN;
INSERT INTO `b_credit` VALUES (1, 1, 'USD', 4000000.00, 8, 2000000.00, '2019-07-11 16:46:19', 5);
INSERT INTO `b_credit` VALUES (2, 1, 'EUR', 3500013.23, 2, 1800001.00, '2019-07-15 17:10:33', 0);
INSERT INTO `b_credit` VALUES (3, 1, 'GBP', 3000000.00, 6, 1000000.00, '2019-07-14 22:06:18', 0);
COMMIT;

-- ----------------------------
-- Table structure for b_credit_history
-- ----------------------------
DROP TABLE IF EXISTS `b_credit_history`;
CREATE TABLE `b_credit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_id` int(11) NOT NULL COMMENT 'b_credit的id',
  `amount` decimal(17,2) NOT NULL COMMENT '合同额度',
  `valid_from` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '生效时间',
  `user_id` int(11) NOT NULL COMMENT '经办人id',
  PRIMARY KEY (`id`),
  KEY `idx_credit_id` (`credit_id`) USING HASH,
  KEY `idx_valid_from` (`valid_from`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_credit_history
-- ----------------------------
BEGIN;
INSERT INTO `b_credit_history` VALUES (1, 2, 3500005.00, '2019-07-15 11:34:16', 0);
INSERT INTO `b_credit_history` VALUES (2, 2, 3500006.00, '2019-07-15 11:41:50', 0);
INSERT INTO `b_credit_history` VALUES (3, 2, 3500007.00, '2019-07-15 17:09:50', 0);
INSERT INTO `b_credit_history` VALUES (4, 2, 3500008.00, '2019-07-15 17:09:58', 0);
INSERT INTO `b_credit_history` VALUES (5, 2, 3500009.00, '2019-07-15 17:10:06', 0);
INSERT INTO `b_credit_history` VALUES (6, 2, 3500010.00, '2019-07-15 17:10:14', 0);
INSERT INTO `b_credit_history` VALUES (7, 2, 3500011.00, '2019-07-15 17:10:20', 0);
INSERT INTO `b_credit_history` VALUES (8, 2, 3500012.00, '2019-07-15 17:10:26', 0);
COMMIT;

-- ----------------------------
-- Table structure for b_credit_margin
-- ----------------------------
DROP TABLE IF EXISTS `b_credit_margin`;
CREATE TABLE `b_credit_margin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_id` int(11) NOT NULL COMMENT 'b_credit的id',
  `currency` varchar(5) NOT NULL COMMENT '保证金币种',
  `amount` decimal(17,2) NOT NULL COMMENT '保证金量',
  `price` decimal(17,2) NOT NULL COMMENT '保证金折算合同货币汇率',
  `ratio` tinyint(2) NOT NULL COMMENT '保证金比例%',
  `credit_amount` decimal(17,2) NOT NULL COMMENT '保证金折算合同货币量',
  `valid_from` datetime DEFAULT NULL COMMENT '生效时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未生效; 1已生效',
  `user_id` int(11) NOT NULL COMMENT '经办人id, 新增、状态为0时最后个个改currency或amount的人',
  `approver_user_id` int(11) DEFAULT NULL COMMENT '审核人id, 改status为1的人',
  PRIMARY KEY (`id`),
  KEY `idx_union` (`credit_id`,`currency`) USING HASH,
  KEY `idx_valid_from` (`valid_from`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_credit_margin
-- ----------------------------
BEGIN;
INSERT INTO `b_credit_margin` VALUES (1, 1, 'CNY', 3234567.34, 6.75, 8, 5989939.52, '2019-07-23 16:46:42', -1, 0, 0);
INSERT INTO `b_credit_margin` VALUES (2, 1, 'CNY', 9876543.21, 6.75, 8, 18289894.83, '2019-07-23 16:47:25', -1, 0, 0);
INSERT INTO `b_credit_margin` VALUES (3, 1, 'EUR', 3331234.67, 0.85, 8, 48988745.15, '2019-07-23 16:48:06', 1, 0, 0);
INSERT INTO `b_credit_margin` VALUES (5, 2, 'CNY', 6549876.00, 6.75, 8, 12129400.00, '2019-07-23 17:39:27', -1, 0, 0);
INSERT INTO `b_credit_margin` VALUES (6, 1, 'CNY', 3331234.00, 6.75, 8, 6168951.85, '2019-07-23 17:41:21', 1, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for b_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `b_dictionary`;
CREATE TABLE `b_dictionary` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_dictionary
-- ----------------------------
BEGIN;
INSERT INTO `b_dictionary` VALUES (3, '保证金状态');
INSERT INTO `b_dictionary` VALUES (1, '公司类型');
INSERT INTO `b_dictionary` VALUES (2, '审核状态');
COMMIT;

-- ----------------------------
-- Table structure for b_dictionary_item
-- ----------------------------
DROP TABLE IF EXISTS `b_dictionary_item`;
CREATE TABLE `b_dictionary_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `_key` tinyint(2) NOT NULL COMMENT 'key',
  `value` varchar(50) NOT NULL COMMENT 'value',
  `sort` tinyint(2) NOT NULL COMMENT '显示顺序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_p_id_key_value` (`p_id`,`_key`,`value`),
  KEY `idx_p_id` (`p_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_dictionary_item
-- ----------------------------
BEGIN;
INSERT INTO `b_dictionary_item` VALUES (17, 1, 1, '内地', 1);
INSERT INTO `b_dictionary_item` VALUES (18, 1, 2, '境外', 2);
INSERT INTO `b_dictionary_item` VALUES (19, 2, -1, '逾期', 1);
INSERT INTO `b_dictionary_item` VALUES (20, 2, 0, '冻结', 2);
INSERT INTO `b_dictionary_item` VALUES (21, 2, 1, '新增', 3);
INSERT INTO `b_dictionary_item` VALUES (22, 2, 2, '正常', 4);
INSERT INTO `b_dictionary_item` VALUES (23, 2, 3, '关注', 5);
INSERT INTO `b_dictionary_item` VALUES (24, 3, 0, '未生效', 1);
INSERT INTO `b_dictionary_item` VALUES (25, 3, 1, '已生效', 2);
INSERT INTO `b_dictionary_item` VALUES (26, 3, -1, '已失效', 3);
COMMIT;

-- ----------------------------
-- Table structure for b_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `b_enterprise`;
CREATE TABLE `b_enterprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL COMMENT '对应comany.id',
  `type` tinyint(1) NOT NULL COMMENT '1内地注册, 2境外注册',
  `userid` varchar(64) DEFAULT NULL COMMENT '安心签userId',
  `sealid` varchar(64) DEFAULT NULL COMMENT '安心签sealId',
  `name` varchar(150) NOT NULL COMMENT '名称',
  `id_type` varchar(1) NOT NULL COMMENT '证件类型编码',
  `id_no` varchar(80) NOT NULL COMMENT '证件号码',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `mobile_phone` varchar(20) NOT NULL COMMENT '手机号',
  `landline_phone` varchar(20) NOT NULL COMMENT '企业联系电话',
  `transactor_name` varchar(10) NOT NULL COMMENT '经办人名称',
  `transactor_id_type` varchar(1) NOT NULL COMMENT '证件类型编码',
  `transactor_id_no` varchar(80) NOT NULL COMMENT '证件号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq` (`id_no`,`id_type`,`name`),
  UNIQUE KEY `unq_email` (`email`),
  UNIQUE KEY `unq_mobile_phone` (`mobile_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_enterprise
-- ----------------------------
BEGIN;
INSERT INTO `b_enterprise` VALUES (15, 1, 1, '8C307E2D6C9C2280E05311016B0A9C34', '8C3FA71246D00F29E05312016B0ACA49', '驼铃商业保理(广州)有限公司', 'N', '91440101MA5AL7WE7Y', 'mq7253181@126.com', '17810322661', '+86010-85354911', '马强', '0', '990807198602315017');
INSERT INTO `b_enterprise` VALUES (16, 1, 2, '8C499228654E2711E05312016B0A4965', '8CA46F29428B1C25E05311016B0A31DC', '骆驼国际贸易有限公司', 'Z', '68998376-000-02-18-2', 'mq7253180@126.com', '18411055336', '+86010-85354911', '马强', '0', '990807198602315017');
COMMIT;

-- ----------------------------
-- Table structure for b_individual
-- ----------------------------
DROP TABLE IF EXISTS `b_individual`;
CREATE TABLE `b_individual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '最后更新时间',
  `company_id` int(11) NOT NULL COMMENT '对应comany.id',
  `status` int(2) NOT NULL COMMENT '状态: 正常、关注、新增、冻结、逾期',
  `userid` varchar(64) DEFAULT NULL COMMENT '安心签userId',
  `id_type_camel` varchar(2) NOT NULL COMMENT '证件类型编码(骆驼)',
  `id_type_cfca` varchar(1) NOT NULL COMMENT '证件类型编码(安心签)',
  `id_no` varchar(80) NOT NULL COMMENT '证件号码',
  `master` varchar(100) NOT NULL COMMENT '法人',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `company` varchar(100) DEFAULT NULL COMMENT '企业名称',
  `gender` varchar(1) DEFAULT NULL COMMENT '性别',
  `birth_date` varchar(10) DEFAULT NULL COMMENT '出生日期',
  `region` varchar(5) DEFAULT NULL COMMENT '国家',
  `mobile_phone` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `addr` varchar(50) DEFAULT NULL COMMENT '证件地址',
  `product_category` varchar(10) DEFAULT NULL COMMENT '产品种类',
  `credit_currency` varchar(5) DEFAULT NULL COMMENT '授信币种',
  `total_credit_amount` decimal(17,2) DEFAULT NULL COMMENT '授信额度',
  `available_credit_amount` decimal(17,2) DEFAULT NULL COMMENT '授信可用额度',
  `credit_from` datetime DEFAULT NULL COMMENT '授信起始日期',
  `credit_to` datetime DEFAULT NULL COMMENT '授信截止日期',
  `swift` varchar(20) DEFAULT NULL COMMENT 'Swift Code',
  `bank_name` varchar(50) DEFAULT NULL COMMENT '银行名称',
  `bank_card_type` varchar(1) DEFAULT NULL COMMENT '银行卡类型',
  `bank_account` varchar(50) DEFAULT NULL COMMENT '银行账号',
  `bank_currency` varchar(5) DEFAULT NULL COMMENT '银行币种',
  `credit_rating` int(5) DEFAULT NULL COMMENT '信用评级分数',
  `discount` int(5) DEFAULT NULL COMMENT '单笔融资折扣比例',
  `recent_3m_deal_amount` decimal(17,2) DEFAULT NULL COMMENT '近3个月累计交易量',
  `recent_6m_deal_amount` decimal(17,2) DEFAULT NULL COMMENT '近6个月累计交易量',
  `commission_rate` decimal(2,2) DEFAULT NULL COMMENT '平台佣金率',
  `exchange_rate` decimal(6,6) DEFAULT NULL COMMENT '额度评估选用的汇率',
  `deal_duration` int(4) DEFAULT NULL COMMENT '交易时长',
  `recent_3m_avg_orders` varchar(10) DEFAULT NULL COMMENT '近3个月月均成交订单数',
  `recent_90d_refund_rate` varchar(10) DEFAULT NULL COMMENT '近90天退款率',
  `recent_90d_dishonour_rate` varchar(10) DEFAULT NULL COMMENT '近90天拒付率',
  `recent_90d_avg_shipping_duration` varchar(10) DEFAULT NULL COMMENT '近90天平均货运时长',
  `recent_90d_orders_incr_rate` varchar(50) DEFAULT NULL COMMENT '近90天成交订单增长比率',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq` (`id_no`,`id_type_cfca`,`master`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_individual
-- ----------------------------
BEGIN;
INSERT INTO `b_individual` VALUES (3, '2019-07-04 16:43:34', '2019-07-08 16:13:30', 1, 2, '8C3FA71236780F29E05312016B0ACA49', '01', '0', '350322199508082613', '刘舒田', '刘舒田', '个人商户', 'M', '1995-08-08', 'CHN', '01082036499', '广州市珠海区后滘西大街35号', '1000', 'USD', 149.35, 149.35, '2019-02-26 00:00:00', '2020-02-26 23:59:59', NULL, NULL, NULL, NULL, NULL, 572, 80, 616.86, 1622.07, 0.01, NULL, 7, '4.33', '0.0689', '0', '28.33', '0.3846');
INSERT INTO `b_individual` VALUES (4, '2019-07-04 16:43:34', '2019-07-08 16:13:30', 1, 2, '8C49922865792711E05312016B0A4965', '01', '0', '350321198906157018', '戴超凡', '戴超凡', '莆田市酷卓信息技术有限公司', 'M', '1989-06-15', 'CHN', '01082036497', '广州市珠海区后滘西大街35号', '1000', 'USD', 3584.39, 3584.39, '2019-02-26 00:00:00', '2020-02-26 23:59:59', NULL, NULL, NULL, NULL, NULL, 572, 50, 7894.68, 9471.64, 0.01, NULL, 14, '46.33', '0.0486', '0.007', '21.21', '-1');
INSERT INTO `b_individual` VALUES (5, '2019-07-04 16:43:34', '2019-07-08 16:13:30', 1, 2, '8C2FC88F74D6678BE05312016B0A10BB', '01', '0', '412925196711153233', '赵丙乾', '赵丙乾', '个人商户', 'M', '1967-11-15', 'CHN', '01082036496', '广州市珠海区后滘西大街35号', '1000', 'USD', 149.35, 149.35, '2019-02-26 00:00:00', '2020-02-26 23:59:59', NULL, NULL, NULL, NULL, NULL, 572, 50, 821.05, 2479.44, 0.01, NULL, 10, '10.67', '0.0365', '0', '53.44', '-0.8125');
INSERT INTO `b_individual` VALUES (6, '2019-07-04 16:43:34', '2019-07-08 16:13:30', 1, 2, '8C2FC88F74DA678BE05312016B0A10BB', '01', '0', '430581198510104064', '钟群英', '钟群英', '个人商户', 'F', '1985-10-10', 'CHN', '01082036495', '广州市珠海区后滘西大街35号', '1000', 'USD', 597.40, 597.40, '2019-02-26 00:00:00', '2020-02-26 23:59:59', NULL, NULL, NULL, NULL, NULL, 572, 50, 1637.77, 2432.68, 0.01, NULL, 9, '7.33', '0.1156', '0', '55.81', '-0.1818');
INSERT INTO `b_individual` VALUES (7, '2019-07-04 16:43:34', '2019-07-08 16:13:30', 1, 2, '8C2FC88F74DE678BE05312016B0A10BB', '01', '0', '412725198411128210', '韩刘瓦', '韩刘瓦', '个人商户', 'M', '1984-11-12', 'CHN', '01082036494', '广州市珠海区后滘西大街35号', '1000', 'USD', 149.35, 149.35, '2019-02-26 00:00:00', '2020-02-26 23:59:59', NULL, NULL, NULL, NULL, NULL, 572, 50, 654.44, 2155.53, 0.01, NULL, 9, '6.67', '0.1449', '0', '43.26', '-0.55');
INSERT INTO `b_individual` VALUES (8, '2019-07-04 16:43:35', '2019-07-08 16:13:30', 1, 2, '8C2FC88F74E2678BE05312016B0A10BB', '01', '0', '411324199102033256', '李都', '李都', '上海允阅贸易有限公司', 'M', '1991-02-03', 'CHN', '01082036493', '广州市珠海区后滘西大街35号', '1000', 'USD', 149.35, 149.35, '2019-02-26 00:00:00', '2020-02-26 23:59:59', NULL, NULL, NULL, NULL, NULL, 572, 50, 1339.88, 4375.04, 0.01, NULL, 21, '8', '0.1309', '0', '34.89', '-0.375');
INSERT INTO `b_individual` VALUES (9, '2019-07-04 16:43:35', '2019-07-08 16:13:30', 1, 2, '8C2FC88F74E6678BE05312016B0A10BB', '01', '0', '330823196008180715', '郑书武', '郑书武', '个人商户', 'M', '1960-08-18', 'CHN', '01082036490', '广州市珠海区后滘西大街35号', '1000', 'USD', 298.70, 298.70, '2019-02-26 00:00:00', '2020-02-26 23:59:59', NULL, NULL, NULL, NULL, NULL, 572, 50, 1105.11, 2102.51, 0.01, NULL, 10, '21.67', '0.1123', '0', '33.84', '-0.5385');
INSERT INTO `b_individual` VALUES (10, '2019-07-04 16:43:35', '2019-07-08 16:13:30', 1, 2, '8C2FC88F74EA678BE05312016B0A10BB', '01', '0', '440882198903082710', '吴朝海', '吴朝海', '个人商户', 'M', '1989-03-08', 'CHN', '01082036489', '广州市珠海区后滘西大街35号', '1000', 'USD', 1045.45, 1045.45, '2019-02-26 00:00:00', '2020-02-26 23:59:59', NULL, NULL, NULL, NULL, NULL, 372, 50, 2398.57, 3115.54, 0.01, NULL, 15, '16.67', '0.0839', '0', '26.68', '-0.28');
INSERT INTO `b_individual` VALUES (11, '2019-07-04 16:43:35', '2019-07-08 16:13:30', 1, 2, '8C2FC88F74EE678BE05312016B0A10BB', '01', '0', '410401198702191026', '樊二妞', '樊二妞', '个人商户', 'F', '1987-02-19', 'CHN', '01082036488', '广州市珠海区后滘西大街35号', '1000', 'USD', 149.35, 149.35, '2019-02-26 00:00:00', '2020-02-26 23:59:59', NULL, NULL, NULL, NULL, NULL, 572, 50, 485.33, 1082.81, 0.01, NULL, 11, '4.33', '0.0949', '0', '53.5', '-0.5385');
COMMIT;

-- ----------------------------
-- Table structure for b_price
-- ----------------------------
DROP TABLE IF EXISTS `b_price`;
CREATE TABLE `b_price` (
  `id` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL COMMENT '货币对',
  `ask` decimal(17,6) NOT NULL COMMENT '卖价(银行角度)',
  `bid` decimal(17,6) NOT NULL COMMENT '买价(银行角度)',
  `mid` decimal(17,6) NOT NULL COMMENT '中间价',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_symbol` (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_price
-- ----------------------------
BEGIN;
INSERT INTO `b_price` VALUES (0, 'USD/CNY', 6.800000, 6.700000, 6.750000);
INSERT INTO `b_price` VALUES (1, 'USD/HKD', 7.900000, 7.700000, 7.800000);
INSERT INTO `b_price` VALUES (2, 'USD/EUR', 0.890000, 0.880000, 0.850000);
COMMIT;

-- ----------------------------
-- Table structure for s_menu
-- ----------------------------
DROP TABLE IF EXISTS `s_menu`;
CREATE TABLE `s_menu` (
  `id` int(11) NOT NULL,
  `p_id` int(11) DEFAULT NULL COMMENT '父id',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `uri` varchar(200) DEFAULT NULL COMMENT 'uri',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`),
  KEY `idx_p_id` (`p_id`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_menu
-- ----------------------------
BEGIN;
INSERT INTO `s_menu` VALUES (1, NULL, '系统管理', NULL, 'activity');
INSERT INTO `s_menu` VALUES (2, NULL, '账户管理', NULL, 'package');
INSERT INTO `s_menu` VALUES (11, 1, '超级管理', '/sys/admin', NULL);
INSERT INTO `s_menu` VALUES (21, 2, '合同授信', '/credit', NULL);
INSERT INTO `s_menu` VALUES (22, 2, '保证金', '/credit/margin/5/1', NULL);
COMMIT;

-- ----------------------------
-- Table structure for s_permission
-- ----------------------------
DROP TABLE IF EXISTS `s_permission`;
CREATE TABLE `s_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `des` varchar(50) NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_permission
-- ----------------------------
BEGIN;
INSERT INTO `s_permission` VALUES (1, 'sysMenu', '超级管理员菜单');
INSERT INTO `s_permission` VALUES (2, 'reloadSessionByUserId', '根据用户ID更新session');
INSERT INTO `s_permission` VALUES (3, 'reloadSessionsByRole', '根据角色更新session');
INSERT INTO `s_permission` VALUES (4, 'init', '初始化白名单');
INSERT INTO `s_permission` VALUES (5, 'syn', '同步白名单');
INSERT INTO `s_permission` VALUES (11, 'creditSeach', '查询合同');
INSERT INTO `s_permission` VALUES (12, 'creditAdd', '新增合同');
INSERT INTO `s_permission` VALUES (13, 'creditUpdateAmount', '更新合同授信额');
INSERT INTO `s_permission` VALUES (14, 'creditUpdate', '更新合同信息');
INSERT INTO `s_permission` VALUES (15, 'viewCreditHistory', '查看合同授信修改历史');
INSERT INTO `s_permission` VALUES (16, 'creditMarginSeach', '查询保证金');
INSERT INTO `s_permission` VALUES (17, 'creditMarginAdd', '新增保证金');
INSERT INTO `s_permission` VALUES (18, 'creditMarginUpdate', '更改保证金');
INSERT INTO `s_permission` VALUES (19, 'creditMarginAudit', '审核保证金');
INSERT INTO `s_permission` VALUES (20, 'creditMarginDelete', '删除保证金');
COMMIT;

-- ----------------------------
-- Table structure for s_permission_role_rel
-- ----------------------------
DROP TABLE IF EXISTS `s_permission_role_rel`;
CREATE TABLE `s_permission_role_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL COMMENT '权限id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_rel` (`permission_id`,`role_id`),
  KEY `idx_permission_id` (`permission_id`) USING HASH,
  KEY `idx_role_id` (`role_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_permission_role_rel
-- ----------------------------
BEGIN;
INSERT INTO `s_permission_role_rel` VALUES (22, 1, 0);
INSERT INTO `s_permission_role_rel` VALUES (27, 1, 14);
INSERT INTO `s_permission_role_rel` VALUES (23, 2, 0);
INSERT INTO `s_permission_role_rel` VALUES (24, 3, 0);
INSERT INTO `s_permission_role_rel` VALUES (25, 4, 0);
INSERT INTO `s_permission_role_rel` VALUES (26, 5, 0);
INSERT INTO `s_permission_role_rel` VALUES (28, 11, 0);
INSERT INTO `s_permission_role_rel` VALUES (32, 11, 14);
INSERT INTO `s_permission_role_rel` VALUES (29, 12, 0);
INSERT INTO `s_permission_role_rel` VALUES (30, 13, 0);
INSERT INTO `s_permission_role_rel` VALUES (31, 14, 0);
INSERT INTO `s_permission_role_rel` VALUES (33, 15, 0);
INSERT INTO `s_permission_role_rel` VALUES (34, 16, 0);
INSERT INTO `s_permission_role_rel` VALUES (35, 17, 0);
INSERT INTO `s_permission_role_rel` VALUES (36, 18, 0);
INSERT INTO `s_permission_role_rel` VALUES (37, 19, 0);
INSERT INTO `s_permission_role_rel` VALUES (39, 20, 0);
COMMIT;

-- ----------------------------
-- Table structure for s_role
-- ----------------------------
DROP TABLE IF EXISTS `s_role`;
CREATE TABLE `s_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_role
-- ----------------------------
BEGIN;
INSERT INTO `s_role` VALUES (0, '超级管理员');
INSERT INTO `s_role` VALUES (1, '系统管理员（国际）');
INSERT INTO `s_role` VALUES (3, '运营（国际）');
INSERT INTO `s_role` VALUES (4, '资金经办（国际）');
INSERT INTO `s_role` VALUES (5, '资金经理（国际）');
INSERT INTO `s_role` VALUES (6, '风控（国际）');
INSERT INTO `s_role` VALUES (7, '销售（国际）');
INSERT INTO `s_role` VALUES (8, '经理（运营+资金经理）（国际）');
INSERT INTO `s_role` VALUES (11, '系统管理员(香港)');
INSERT INTO `s_role` VALUES (12, '交易(香港)');
INSERT INTO `s_role` VALUES (13, '销售(香港)');
INSERT INTO `s_role` VALUES (14, '运营(香港)');
INSERT INTO `s_role` VALUES (15, '资金经办(香港)');
INSERT INTO `s_role` VALUES (16, '资金经理(香港)');
INSERT INTO `s_role` VALUES (17, '合规(香港)');
COMMIT;

-- ----------------------------
-- Table structure for s_role_menu_rel
-- ----------------------------
DROP TABLE IF EXISTS `s_role_menu_rel`;
CREATE TABLE `s_role_menu_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `menu_id` int(11) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_rel` (`role_id`,`menu_id`),
  KEY `idx_role_id` (`role_id`) USING HASH,
  KEY `idx_menu_id` (`menu_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_role_menu_rel
-- ----------------------------
BEGIN;
INSERT INTO `s_role_menu_rel` VALUES (30, 0, 1);
INSERT INTO `s_role_menu_rel` VALUES (34, 0, 2);
INSERT INTO `s_role_menu_rel` VALUES (31, 0, 11);
INSERT INTO `s_role_menu_rel` VALUES (35, 0, 21);
INSERT INTO `s_role_menu_rel` VALUES (38, 0, 22);
INSERT INTO `s_role_menu_rel` VALUES (32, 14, 1);
INSERT INTO `s_role_menu_rel` VALUES (36, 14, 2);
INSERT INTO `s_role_menu_rel` VALUES (33, 14, 11);
INSERT INTO `s_role_menu_rel` VALUES (37, 14, 21);
COMMIT;

-- ----------------------------
-- Table structure for s_role_user_rel
-- ----------------------------
DROP TABLE IF EXISTS `s_role_user_rel`;
CREATE TABLE `s_role_user_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_rel` (`role_id`,`user_id`),
  KEY `idx_role_id` (`role_id`) USING HASH,
  KEY `idx_user_id` (`user_id`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_role_user_rel
-- ----------------------------
BEGIN;
INSERT INTO `s_role_user_rel` VALUES (12, 0, 0);
INSERT INTO `s_role_user_rel` VALUES (13, 14, 5);
COMMIT;

-- ----------------------------
-- Table structure for s_user
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user` (
  `id` int(11) NOT NULL,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `password` varchar(128) NOT NULL COMMENT '密码',
  `mobile_phone` varchar(20) NOT NULL COMMENT '手机号',
  `email` varchar(50) NOT NULL COMMENT '电邮',
  `jsessionid` varchar(128) DEFAULT NULL COMMENT 'jsessionid',
  `last_logined` datetime DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_username` (`username`),
  UNIQUE KEY `unq_mobile_phone` (`mobile_phone`),
  UNIQUE KEY `unq_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_user
-- ----------------------------
BEGIN;
INSERT INTO `s_user` VALUES (0, '2019-06-24 14:41:15', 'maqiang', '马强', 'dad3a37aa9d50688b5157698acfd7aee', '17810355544', 'maqiang@hce-haier.com', '3b7fa1804e7a472988cdbbb6eea9ee0a', '2019-07-24 00:20:21');
INSERT INTO `s_user` VALUES (1, '2019-06-24 14:41:15', 'tim', 'TIM', 'dad3a37aa9d50688b5157698acfd7aee', '17310464686', 'TIM@hce-haier.com', NULL, NULL);
INSERT INTO `s_user` VALUES (2, '2019-06-24 14:41:15', 'xuetx', '薛童心', 'dad3a37aa9d50688b5157698acfd7aee', '18653241108', 'xuetongxin@hce-haier.com', NULL, NULL);
INSERT INTO `s_user` VALUES (3, '2019-06-24 14:41:15', 'fanzhen', '范桢', 'dad3a37aa9d50688b5157698acfd7aee', '18611993803', 'fanzhen@hce-haier.com', NULL, NULL);
INSERT INTO `s_user` VALUES (4, '2019-06-24 14:41:15', 'yejq', '叶敬群', 'dad3a37aa9d50688b5157698acfd7aee', '18340877879', 'yejingqun@hce-haier.com', NULL, NULL);
INSERT INTO `s_user` VALUES (5, '2019-06-24 14:41:15', 'jinyl', '金艳丽', 'dad3a37aa9d50688b5157698acfd7aee', '18612751163', 'jinyanli@hce-haier.com', '6866ef5f06d74eb58788a71802c41ea9', '2019-10-20 11:34:17');
INSERT INTO `s_user` VALUES (6, '2019-06-24 14:41:15', 'yangguang', '杨光', 'dad3a37aa9d50688b5157698acfd7aee', '15844055800', '1122211@126.com', NULL, NULL);
INSERT INTO `s_user` VALUES (7, '2019-06-24 14:41:15', 'zhaozh', '赵志辉', 'dad3a37aa9d50688b5157698acfd7aee', '13552501524', 'luangk1@yusys.com.cn', NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
