DROP TABLE IF EXISTS s_transaction;
CREATE TABLE s_transaction (
	id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	application_name VARCHAR(20) NOT NULL COMMENT '应用服务名称',
	bean_name VARCHAR(100) NOT NULL COMMENT 'Bean名称',
	method_name VARCHAR(100) NOT NULL COMMENT '方法名称',
	type TINYINT(1) NOT NULL COMMENT '1失败撤消; 0失败重试',
	status TINYINT(1) NOT NULL DEFAULT 0 COMMENT '1执行结束; 0正在执行',
	version INT(11) NOT NULL DEFAULT 0 COMMENT '重试执行版本',
	flag_for_cron_job VARCHAR(10) COMMENT '定时任务标识',
	in_order TINYINT(1) DEFAULT 0 COMMENT '是否有顺序: 1TRUE; 0FALSE',
	creation_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	last_executed DATETIME DEFAULT NULL COMMENT '上一次执行时间',
	PRIMARY KEY (id),
	KEY idx_union(application_name, status, flag_for_cron_job) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_transaction_atomic;
CREATE TABLE s_transaction_atomic (
	id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	tx_id INT(11) UNSIGNED NOT NULL COMMENT '事务id',
	bean_name VARCHAR(100) NOT NULL COMMENT 'Bean名称',
	method_name VARCHAR(100) NOT NULL COMMENT '失败后需要执行的方法名',
	status TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '确认方法: 2已执行撤消; 1成功; 0未成功',
	sort TINYINT(2) NOT NULL COMMENT '顺序',
	msg VARCHAR(200) COMMENT '失败信息',
	ret_class VARCHAR(200) DEFAULT NULL COMMENT '返回类型',
	ret_value VARCHAR(1500) DEFAULT NULL COMMENT '返回值',
	PRIMARY KEY (id),
	KEY idx_union (tx_id, status) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_transaction_arg;
CREATE TABLE s_transaction_arg (
	id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	parent_id INT(11) UNSIGNED NOT NULL COMMENT '事务或原子操作id',
	class VARCHAR(200) NOT NULL COMMENT '类型',
	_value VARCHAR(1500) NOT NULL COMMENT '值',
	sort TINYINT(2) NOT NULL COMMENT '顺序',
	type TINYINT(1) NOT NULL COMMENT '0事务; 1原子操作',
	PRIMARY KEY (id),
	KEY idx_union (parent_id, type) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `b_region`;
CREATE TABLE `b_region` (
  `id` INT(11) UNSIGNED NOT NULL,
  `en_name` VARCHAR(50) NOT NULL COMMENT '英文名称',
  `cn_name` VARCHAR(50) NOT NULL COMMENT '中文名称',
  `tel_prefix` VARCHAR(15) DEFAULT NULL COMMENT '电话区号',
  `code` VARCHAR(5) DEFAULT NULL COMMENT '三字码',
  `code2` VARCHAR(2) DEFAULT NULL COMMENT '两字码',
  `currency` VARCHAR(5) DEFAULT NULL COMMENT '币种',
  `locale` VARCHAR(10) DEFAULT NULL COMMENT 'locale',
  `parent_id` INT(11) UNSIGNED DEFAULT '0' COMMENT '父id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_en_name` (`en_name`),
  UNIQUE KEY `unq_cn_name` (`cn_name`),
  UNIQUE KEY `unq_code` (`code`),
  UNIQUE KEY `unq_code2` (`code2`),
  KEY `idx_parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `b_region` VALUES (1, 'China', '中国', '86', 'CHN', 'CN', 'CNY', 'zh_CN', 0);
INSERT INTO `b_region` VALUES (2, 'Hong Kong(China)', '中国香港', '852', 'HKG', 'HK', 'HKD', 'zh_HK', 1);
INSERT INTO `b_region` VALUES (3, 'Macau(China)', '中国澳门', '853', 'MAC', 'MO', 'MOP', 'zh_MO', 1);
INSERT INTO `b_region` VALUES (4, 'Taiwan(China)', '中国台湾', '886', 'TWN', 'TW', 'TWD', 'zh_TW', 1);
INSERT INTO `b_region` VALUES (5, 'United States of America', '美国', '1', 'USA', 'US', 'USD', 'en_US', 0);
INSERT INTO `b_region` VALUES (6, 'United Kingdom', '英国', '44', 'GBR', 'GB', 'GBP', 'en_GB', 0);
INSERT INTO `b_region` VALUES (7, 'France', '法国', '33', 'FRA', 'FR', 'EUR', 'fr_FR', 0);
INSERT INTO `b_region` VALUES (8, 'Russia', '俄罗斯', '7', 'RUS', 'RU', 'RUB', 'ru_RU', 0);
INSERT INTO `b_region` VALUES (9, 'Canada', '加拿大', '1', 'CAN', 'CA', 'CAD', NULL, 0);
INSERT INTO `b_region` VALUES (10, 'Australia', '澳大利亚', '61', 'AUS', 'AU', 'AUD', NULL, 0);
INSERT INTO `b_region` VALUES (11, 'Japan', '日本', '81', 'JPN', 'JP', 'JPY', 'ja_JP', 0);
INSERT INTO `b_region` VALUES (12, 'South Korea', '韩国', '82', 'KOR', 'KR', 'KRW', NULL, 0);
INSERT INTO `b_region` VALUES (13, 'Singapore', '新加坡', '65', 'SGP', 'SG', 'SGD', NULL, 0);
INSERT INTO `b_region` VALUES (14, 'Malaysia', '马来西亚', '60', 'MYS', 'MY', 'MYR', NULL, 0);
INSERT INTO `b_region` VALUES (15, 'Thailand', '泰国', '66', 'THA', 'TH', 'THB', NULL, 0);
INSERT INTO `b_region` VALUES (16, 'Indonesia', '印度尼西亚', '62', 'IDN', 'ID', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (17, 'New Zealand', '新西兰', '64', 'NZL', 'NZ', 'NZD', NULL, 0);
INSERT INTO `b_region` VALUES (18, 'Germany', '德国', '49', 'DEU', 'DE', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (19, 'Italy', '意大利', '39', 'ITA', 'IT', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (20, 'Netherlands', '荷兰', '31', 'NLD', 'NL', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (21, 'Ireland', '爱尔兰', '353', 'IRL', 'IE', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (22, 'Spain', '西班牙', '34', 'ESP', 'ES', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (23, 'Portugal', '葡萄牙', '351', 'PRT', 'PT', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (24, 'Austria', '奥地利', '43', 'AUT', 'AT', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (25, 'Hungary', '匈牙利', '36', 'HUN', 'HU', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (26, 'Belgium', '比利时', '32', 'BEL', 'BE', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (27, 'Luxembourg', '卢森堡', '352', 'LUX', 'LU', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (28, 'Greece', '希腊', '30', 'GRC', 'GR', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (29, 'Switzerland', '瑞士', '41', 'CHE', 'CH', 'CHF', NULL, 0);
INSERT INTO `b_region` VALUES (30, 'Sweden', '瑞典', '46', 'SWE', 'SE', 'SEK', NULL, 0);
INSERT INTO `b_region` VALUES (31, 'Norway', '挪威', '47', 'NOR', 'NO', 'NOK', NULL, 0);
INSERT INTO `b_region` VALUES (32, 'Finland', '芬兰', '358', 'FIN', 'FI', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (33, 'Denmark', '丹麦', '45', 'DNK', 'DK', 'DKK', NULL, 0);
INSERT INTO `b_region` VALUES (34, 'Iceland', '冰岛', '354', 'ISL', 'IS', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (35, 'Greenland', '格陵兰', '299', 'GRL', 'GL', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (41, 'Antarctica', '南极洲', '672', 'ATA', 'AQ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (42, 'Mexico', '墨西哥', '52', 'MEX', 'MX', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (43, 'Cuba', '古巴', '53', 'CUB', 'CU', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (44, 'Brazil', '巴西', '55', 'BRA', 'BR', 'BRL', NULL, 0);
INSERT INTO `b_region` VALUES (45, 'Argentina', '阿根廷', '54', 'ARG', 'AR', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (46, 'Chile', '智利', '56', 'CHL', 'CL', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (47, 'Peru', '秘鲁', '51', 'PER', 'PE', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (48, 'Colombia', '哥伦比亚', '57', 'COL', 'CO', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (49, 'Venezuela', '委内瑞拉', '58', 'VEN', 'VE', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (50, 'Uruguay', '乌拉圭', '598', 'URY', 'UY', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (51, 'Paraguay', '巴拉圭', '595', 'PRY', 'PY', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (52, 'Costa Rica', '哥斯达黎加', '506', 'CRI', 'CR', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (53, 'Bolivia', '玻利维亚', '591', 'BOL', 'BO', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (54, 'Guyana', '圭亚那', '592', 'GUY', 'GY', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (55, 'Dominican Republic', '多米尼加共和国', '1-809', 'DOM', 'DO', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (56, 'Dominica', '多米尼克', '1-767', 'DMA', 'DM', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (57, 'Ecuador', '厄瓜多尔', '593', 'ECU', 'EC', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (58, 'Nicaragua', '尼加拉瓜', '505', 'NIC', 'NI', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (59, 'EI Salvador', '萨尔瓦多', '503', 'SLV', 'SV', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (60, 'Guatemala', '危地马拉', '502', 'GTM', 'GT', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (61, 'Honduras', '洪都拉斯', '504', 'HND', 'HN', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (62, 'Jamaica', '牙买加', '1-876', 'JAM', 'JM', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (63, 'Haiti', '海地', '509', 'HTI', 'HT', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (71, 'Turkey', '土耳其', '90', 'TUR', 'TR', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (72, 'Egypt', '埃及', '20', 'EGY', 'EG', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (73, 'Israel', '以色列', '972', 'ISR', 'IL', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (74, 'Palestinian Territories', '巴勒斯坦', '970', 'PSE', 'PS', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (75, 'Jordan', '约旦', '962', 'JOR', 'JO', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (76, 'Lebanon', '黎巴嫩', '961', 'LBN', 'LB', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (77, 'Qatar', '卡塔尔', '974', 'QAT', 'QA', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (78, 'United Arab Emirates', '阿拉伯联合酋长国', '971', 'ARE', 'AE', 'AED', NULL, 0);
INSERT INTO `b_region` VALUES (79, 'Saudi Arabia', '沙特阿拉伯', '966', 'SAU', 'SA', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (80, 'Iran', '伊朗', '98', 'IRN', 'IR', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (81, 'Iraq', '伊拉克', '964', 'IRQ', 'IQ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (82, 'Kuwait', '科威特', '965', 'KWT', 'KW', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (91, 'India', '印度', '91', 'IND', 'IN', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (92, 'Pakistan', '巴基斯坦', '92', 'PAK', 'PK', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (93, 'Bangladesh', '孟加拉国', '880', 'BGD', 'BD', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (94, 'Sri Lanka', '斯里兰卡', '94', 'LKA', 'LK', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (95, 'Maldives', '马尔代夫', '960', 'MDV', 'MV', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (96, 'Philippines', '菲律宾', '63', 'PHL', 'PH', 'PHP', NULL, 0);
INSERT INTO `b_region` VALUES (97, 'Brunei', '文莱', '673', 'BRN', 'BN', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (98, 'Timor-Leste', '东帝汶', '670', 'TLS', 'TL', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (99, 'Myanmar(Burma)', '缅甸', '95', 'MMR', 'MM', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (100, 'Vietnam', '越南', '84', 'VNM', 'VN', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (101, 'Cambodia', '柬埔寨', '855', 'KHM', 'KH', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (102, 'Laos', '老挝', '856', 'LAO', 'LA', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (103, 'Nepal', '尼泊尔', '977', 'NPL', 'NP', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (104, 'Bhutan', '不丹', '975', 'BTN', 'BT', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (105, 'Mongolia', '蒙古', '976', 'MNG', 'MN', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (106, 'Oman', '阿曼', '968', 'OMN', 'OM', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (107, 'Afghanistan', '阿富汗', '93', 'AFG', 'AF', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (111, 'Poland', '波兰', '48', 'POL', 'PL', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (112, 'Bulgaria', '保加利亚', '359', 'BGR', 'BG', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (113, 'Romania', '罗马尼亚', '40', 'ROM', 'RO', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (114, 'Albania', '阿尔巴尼亚', '355', 'ALB', 'AL', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (115, 'Czechia', '捷克', '420', 'CZE', 'CZ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (116, 'Slovakia', '斯洛伐克', '421', 'SVK', 'SK', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (121, 'Ukraine', '乌克兰', '380', 'UKR', 'UA', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (122, 'Belarus', '白俄罗斯', '375', 'BLR', 'BY', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (123, 'Lithuania', '立陶宛', '370', 'LTU', 'LT', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (124, 'Georgia', '格鲁吉亚', '995', 'GEO', 'GE', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (125, 'Latvia', '拉脱维亚', '371', 'LVA', 'LV', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (126, 'Armenia', '亚美尼亚', '374', 'ARM', 'AM', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (127, 'Estonia', '爱沙尼亚', '372', 'EST', 'EE', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (128, 'Azerbaijan', '阿塞拜疆', '994', 'AZE', 'AZ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (129, 'Kazakhstan', '哈萨克斯坦', '7', 'KAZ', 'KZ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (130, 'Tajikistan', '塔吉克斯坦', '992', 'TJK', 'TJ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (131, 'Turkmenistan', '土库曼斯坦', '993', 'TKM', 'TM', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (132, 'Uzbekistan', '乌兹别克斯坦', '998', 'UZB', 'UZ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (133, 'Kyrgyzstan', '吉尔吉斯斯坦', '996', 'KGZ', 'KG', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (141, 'Serbia', '塞尔维亚', '381', 'SRB', 'RS', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (142, 'Croatia', '克罗地亚', '385', 'HRV', 'HR', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (143, 'Slovenia', '斯洛文尼亚', '386', 'SVN', 'SI', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (144, 'Macedonia', '马其顿', '389', 'MKD', 'MK', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (145, 'Montenegro', '黑山', '382', 'MNE', 'ME', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (146, 'Andorra', '安道尔', '376', 'AND', 'AD', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (151, 'Solomon Islands', '所罗门群岛', '677', 'SLB', 'SB', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (152, 'Marshall Islands', '马绍尔群岛', '692', 'MHL', 'MH', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (153, 'Cook Islands', '库克群岛', '682', 'COK', 'CK', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (154, 'Norfolk Islands', '诺福克岛(澳属)', '672', 'NFK', 'NF', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (155, 'Papua New Guinea', '巴布亚新几内亚', '675', 'PNG', 'PG', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (156, 'Vanuatu', '瓦努阿图', '678', 'VUT', 'VU', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (157, 'Fiji', '斐济', '679', 'FJI', 'FJ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (158, 'Palau', '帕劳', '680', 'PLW', 'PW', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (159, 'Tonga', '汤加', '676', 'TON', 'TO', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (160, 'Samoa', '萨摩亚', '685', 'WSM', 'WS', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (171, 'U.S. Outlying Islands', '美国离岛', NULL, 'UMI', 'UM', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (172, 'U.S. Virgin Islands', '美属维尔京群岛', '1-340', 'VIR', 'VI', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (173, 'American Samoa', '美属萨摩亚', '1-684', 'ASM', 'AS', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (174, 'Puerto Rico', '波多黎各', '1-787/1-939', 'PRI', 'PR', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (175, 'Guam', '关岛', '1-671', 'GUM', 'GU', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (176, 'Northern Mariana Islands', '北马里亚纳群岛', '1-670', 'MNP', 'MP', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (177, 'British Virgin Islands', '英属维尔京群岛', '1-284', 'VGB', 'VG', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (178, 'British Indian Ocean Territory', '英属印度洋领地', NULL, 'IOT', NULL, NULL, NULL, 0);
INSERT INTO `b_region` VALUES (179, 'Gibraltar', '直布罗陀', '350', 'GIB', 'GI', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (180, 'Falkland', '福克兰群岛', '500', 'FLK', 'FK', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (181, 'Cayman Islands', '开曼群岛', '1-345', 'CYM', 'KY', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (182, 'Bermuda', '百慕大', '1-441', 'BMU', 'BM', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (183, 'French Guiana', '法属圭亚那', '594', 'GUF', 'GF', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (184, 'French Polynesia', '法属波利尼西亚', '689', 'PYF', 'PF', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (185, 'French Southern Territories', '法属南部领地', NULL, 'ATF', 'TF', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (186, 'St. Martin', '法属圣马丁', '590', 'MAF', 'MF', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (187, 'Reunion', '留尼旺', '262', 'REU', 'RE', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (188, 'Caribbean Netherlands', '荷属加勒比', NULL, 'BES', 'BQ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (189, 'Sint Maarten', '荷属圣马丁', NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `b_region` VALUES (191, 'Malta', '马耳他', '356', 'MLT', 'MT', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (192, 'Vatican City', '梵蒂冈', '379', 'VAT', 'VA', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (193, 'Moldova', '摩尔多瓦', '373', 'MDA', 'MD', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (194, 'Monaco', '摩纳哥', '377', 'MCO', 'MC', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (195, 'Cyprus', '塞浦路斯', '357', 'CYP', 'CY', 'EUR', NULL, 0);
INSERT INTO `b_region` VALUES (196, 'San Marino', '圣马力诺', '378', 'SMR', 'SM', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (201, 'South Africa', '南非', '27', 'ZAF', 'ZA', 'ZAR', NULL, 0);
INSERT INTO `b_region` VALUES (202, 'Madagascar', '马达加斯加', '261', 'MDG', 'MG', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (203, 'Algeria', '阿尔及利亚', '213', 'DZA', 'DZ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (204, 'Kenya', '肯尼亚', '254', 'KEN', 'KE', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (205, 'Libya', '利比亚', '218', 'LBY', 'LY', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (206, 'Yemen', '也门', '967', 'YEM', 'YE', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (207, 'Somalia', '索马里', '252', 'SOM', 'SO', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (208, 'South Sudan', '南苏丹', '211', 'SSD', 'SS', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (209, 'Ethiopia', '埃塞俄比亚', '251', 'ETH', 'ET', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (210, 'Botswana', '博茨瓦纳', '267', 'BWA', 'BW', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (211, 'Burkina Faso', '布基纳法索', '226', 'BFA', 'BF', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (212, 'Burundi', '布隆迪', '257', 'BDI', 'BI', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (213, 'Equatorial Guinea', '赤道几内亚', '240', 'GNQ', 'GQ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (214, 'Togo', '多哥', '228', 'TGO', 'TG', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (215, 'Cape Verde', '佛得角', '238', 'CPV', 'CV', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (216, 'Gambia', '冈比亚', '220', 'GMB', 'GM', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (217, 'Congo-Brazzaville', '刚果(布)', '242', 'COG', 'CG', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (218, 'Congo-Kinshasa', '刚果(金)', '243', 'COD', 'CD', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (219, 'Djibouti', '吉布提', '253', 'DJI', 'DJ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (220, 'Guinea', '几内亚', '224', 'GIN', 'GN', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (221, 'Ghana', '加纳', '233', 'GHA', 'GH', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (222, 'Gabon', '加蓬', '241', 'GAB', 'GA', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (223, 'Zimbabwe', '津巴布韦', '263', 'ZWE', 'ZW', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (224, 'Cameroon', '喀麦隆', '237', 'CMR', 'CM', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (225, 'Cote d Ivoire', '科特迪瓦', '225', 'CIV', 'CI', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (226, 'Liberia', '利比里亚', '231', 'LBR', 'LR', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (227, 'Rwanda', '卢旺达', '250', 'RWA', 'RW', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (228, 'Malawi', '马拉维', '265', 'MWI', 'MW', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (229, 'Mali', '马里', '223', 'MLI', 'ML', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (230, 'Mauritius', '毛里求斯', '230', 'MUS', 'MU', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (231, 'Mauritania', '毛里塔尼亚', '222', 'MRT', 'MR', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (232, 'Morocco', '摩洛哥', '212', 'MAR', 'MA', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (233, 'Mozambique', '莫桑比克', '258', 'MOZ', 'MZ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (234, 'Namibia', '纳米比亚', '264', 'NAM', 'NA', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (235, 'Niger', '尼日尔', '227', 'NER', 'NE', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (236, 'Nigeria', '尼日利亚', '234', 'NGA', 'NG', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (237, 'Sierra Leone', '塞拉利昂', '232', 'SLE', 'SL', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (238, 'Senegal', '塞内加尔', '221', 'SEN', 'SN', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (239, 'Seychelles', '塞舌尔', '248', 'SYC', 'SC', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (240, 'Sao Tome & Principe', '圣多美和普林西比', '239', 'STP', 'ST', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (241, 'Tanzania', '坦桑尼亚', '255', 'TZA', 'TZ', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (242, 'Tunisia', '突尼斯', '216', 'TUN', 'TN', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (243, 'Uganda', '乌干达', '256', 'UGA', 'UG', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (244, 'Western Sahara', '西撒哈拉', NULL, 'ESH', 'EH', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (245, 'Zambia', '赞比亚', '260', 'ZMB', 'ZM', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (246, 'Chad', '乍得', '235', 'TCD', 'TD', NULL, NULL, 0);
INSERT INTO `b_region` VALUES (247, 'Central African Republic', '中非共和国', '236', 'CAF', 'CF', NULL, NULL, 0);

DROP TABLE IF EXISTS `s_role`;
CREATE TABLE `s_role` (
  `id` INT(11) UNSIGNED NOT NULL,
  `name` VARCHAR(50) NOT NULL COMMENT '名称',
  `enterprise_id` INT(11) UNSIGNED,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

DROP TABLE IF EXISTS `s_permission`;
CREATE TABLE `s_permission` (
  `id` INT(11) UNSIGNED NOT NULL,
  `name` VARCHAR(255) NOT NULL COMMENT '名称',
  `des` VARCHAR(50) NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

DROP TABLE IF EXISTS `s_permission_role_rel`;
CREATE TABLE `s_permission_role_rel` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` INT(11) UNSIGNED NOT NULL COMMENT '角色id',
  `permission_id` INT(11) UNSIGNED NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_rel` (`permission_id`,`role_id`),
  KEY `idx_permission_id` (`permission_id`),
  KEY `idx_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `s_permission_role_rel` VALUES (22, 0, 1);
INSERT INTO `s_permission_role_rel` VALUES (27, 14, 1);
INSERT INTO `s_permission_role_rel` VALUES (23, 0, 2);
INSERT INTO `s_permission_role_rel` VALUES (24, 0, 3);
INSERT INTO `s_permission_role_rel` VALUES (25, 0, 4);
INSERT INTO `s_permission_role_rel` VALUES (26, 0, 5);
INSERT INTO `s_permission_role_rel` VALUES (28, 0, 11);
INSERT INTO `s_permission_role_rel` VALUES (32, 14, 11);
INSERT INTO `s_permission_role_rel` VALUES (29, 0, 12);
INSERT INTO `s_permission_role_rel` VALUES (30, 0, 13);
INSERT INTO `s_permission_role_rel` VALUES (31, 0, 14);
INSERT INTO `s_permission_role_rel` VALUES (33, 0, 15);
INSERT INTO `s_permission_role_rel` VALUES (34, 0, 16);
INSERT INTO `s_permission_role_rel` VALUES (35, 0, 17);
INSERT INTO `s_permission_role_rel` VALUES (36, 0, 18);
INSERT INTO `s_permission_role_rel` VALUES (37, 0, 19);
INSERT INTO `s_permission_role_rel` VALUES (39, 0, 20);

DROP TABLE IF EXISTS `s_menu`;
CREATE TABLE `s_menu` (
  `id` INT(11) UNSIGNED NOT NULL,
  `p_id` INT(11) UNSIGNED DEFAULT NULL COMMENT '父id',
  `name` VARCHAR(20) NOT NULL COMMENT '名称',
  `uri` VARCHAR(200) DEFAULT NULL COMMENT 'uri',
  `icon` VARCHAR(50) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`),
  KEY `idx_p_id` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `s_menu` VALUES (1, NULL, '系统管理', NULL, 'activity');
INSERT INTO `s_menu` VALUES (2, NULL, '账户管理', NULL, 'package');
INSERT INTO `s_menu` VALUES (11, 1, '超级管理', '/sys/admin', NULL);
INSERT INTO `s_menu` VALUES (21, 2, '合同授信', '/credit', NULL);
INSERT INTO `s_menu` VALUES (22, 2, '保证金', '/credit/margin/5/1', NULL);

DROP TABLE IF EXISTS `s_role_menu_rel`;
CREATE TABLE `s_role_menu_rel` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` INT(11) UNSIGNED NOT NULL COMMENT '角色id',
  `menu_id` INT(11) UNSIGNED NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_rel` (`role_id`,`menu_id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_menu_id` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `s_role_menu_rel` VALUES (30, 0, 1);
INSERT INTO `s_role_menu_rel` VALUES (34, 0, 2);
INSERT INTO `s_role_menu_rel` VALUES (31, 0, 11);
INSERT INTO `s_role_menu_rel` VALUES (35, 0, 21);
INSERT INTO `s_role_menu_rel` VALUES (38, 0, 22);
INSERT INTO `s_role_menu_rel` VALUES (32, 14, 1);
INSERT INTO `s_role_menu_rel` VALUES (36, 14, 2);
INSERT INTO `s_role_menu_rel` VALUES (33, 14, 11);
INSERT INTO `s_role_menu_rel` VALUES (37, 14, 21);

DROP TABLE IF EXISTS s_client_system;
CREATE TABLE s_client_system (
	id INT(11) UNSIGNED NOT NULL,
	name VARCHAR(50) NOT NULL COMMENT '名称',
	client_id VARCHAR(256) NOT NULL COMMENT '逻辑client id',
	secret VARCHAR(256) COMMENT '私钥',
	PRIMARY KEY (id),
	UNIQUE KEY `unq_client_id` (`client_id`),
	UNIQUE KEY `unq_secret` (`secret`),
	UNIQUE KEY `unq_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO s_client_system VALUES(1, '本系统', 'self', NULL);

DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user` (
  `id` INT(11) UNSIGNED NOT NULL,
  `creation_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` VARCHAR(50) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `gender` TINYINT(1) NOT NULL COMMENT '0女；1男',
  `password` VARCHAR(128),
  `mobile_phone` VARCHAR(20) NOT NULL,
  `email` VARCHAR(50),
  `jsessionid_pc_browser` VARCHAR(128),
  `jsessionid_mobile_browser` VARCHAR(128),
  `jsessionid_app` VARCHAR(128),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_username` (`username`),
  UNIQUE KEY `unq_mobile_phone` (`mobile_phone`),
  UNIQUE KEY `unq_email` (`email`),
  KEY `idx_mobile_phone` (mobile_phone, username, email, password, name, gender, jsessionid_pc_browser, jsessionid_mobile_browser, jsessionid_app) USING BTREE,
  KEY `idx_email` (email, username, mobile_phone, password, name, gender, jsessionid_pc_browser, jsessionid_mobile_browser, jsessionid_app) USING BTREE,
  KEY `idx_username` (username, mobile_phone, email, password, name, gender, jsessionid_pc_browser, jsessionid_mobile_browser, jsessionid_app) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_enterprise;
CREATE TABLE s_enterprise (
	id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	sharding_key TINYINT(6) UNSIGNED NOT NULL,
	name VARCHAR(50) NOT NULL,
	unified_socialc_redit_identifier VARCHAR(50),
	address VARCHAR(100),
	contact_name VARCHAR(50),
	contact_phone VARCHAR(50),
	PRIMARY KEY (id),
	UNIQUE KEY `unq_name` (`name`),
	UNIQUE KEY `unq_unified_socialc_redit_identifier` (`unified_socialc_redit_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `s_user` VALUES (0, '2019-06-24 14:41:15', 'maqiang', '马强', 'dad3a37aa9d50688b5157698acfd7aee', '17810355544', 'maqiang@hce-haier.com', '3b7fa1804e7a472988cdbbb6eea9ee0a', '2019-07-24 00:20:21');
INSERT INTO `s_user` VALUES (1, '2019-06-24 14:41:15', 'tim', 'TIM', 'dad3a37aa9d50688b5157698acfd7aee', '17310464686', 'TIM@hce-haier.com', NULL, NULL);
INSERT INTO `s_user` VALUES (2, '2019-06-24 14:41:15', 'xuetx', '薛童心', 'dad3a37aa9d50688b5157698acfd7aee', '18653241108', 'xuetongxin@hce-haier.com', NULL, NULL);
INSERT INTO `s_user` VALUES (3, '2019-06-24 14:41:15', 'fanzhen', '范桢', 'dad3a37aa9d50688b5157698acfd7aee', '18611993803', 'fanzhen@hce-haier.com', NULL, NULL);
INSERT INTO `s_user` VALUES (4, '2019-06-24 14:41:15', 'yejq', '叶敬群', 'dad3a37aa9d50688b5157698acfd7aee', '18340877879', 'yejingqun@hce-haier.com', NULL, NULL);
INSERT INTO `s_user` VALUES (5, '2019-06-24 14:41:15', 'jinyl', '金艳丽', 'dad3a37aa9d50688b5157698acfd7aee', '18612751163', 'jinyanli@hce-haier.com', '6866ef5f06d74eb58788a71802c41ea9', '2019-10-20 11:34:17');
INSERT INTO `s_user` VALUES (6, '2019-06-24 14:41:15', 'yangguang', '杨光', 'dad3a37aa9d50688b5157698acfd7aee', '15844055800', '1122211@126.com', NULL, NULL);
INSERT INTO `s_user` VALUES (7, '2019-06-24 14:41:15', 'zhaozh', '赵志辉', 'dad3a37aa9d50688b5157698acfd7aee', '13552501524', 'luangk1@yusys.com.cn', NULL, NULL);

DROP TABLE IF EXISTS `s_role_user_rel`;
CREATE TABLE `s_role_user_rel` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` INT(11) UNSIGNED NOT NULL COMMENT '角色id',
  `user_id` INT(11) UNSIGNED NOT NULL COMMENT '用户id',
  `status` TINYINT(2) NOT NULL DEFAULT 1 COMMENT '-1已离职；0未激活；1正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_rel` (`role_id`,`user_id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `s_role_user_rel` VALUES (12, 0, 0);
INSERT INTO `s_role_user_rel` VALUES (13, 14, 5);

DROP TABLE IF EXISTS s_updation;
CREATE TABLE s_updation (
	id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	sql_statement VARCHAR(300) NOT NULL,
	params VARCHAR(100) NOT NULL,
	creation_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id),
	KEY idx_creation_time(creation_time) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_updation_row;
CREATE TABLE s_updation_row (
	id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	p_id INT(11) UNSIGNED NOT NULL,
	table_name VARCHAR(50) NOT NULL,
	data_id_int INT(11) UNSIGNED,
	data_id_str VARCHAR(50),
	PRIMARY KEY (id),
	KEY idx_xxx(data_id_int, table_name, p_id) USING BTREE,
	KEY idx_www(data_id_str, table_name, p_id) USING BTREE,
	KEY idx_qqq(table_name, data_id_int, p_id) USING BTREE,
	KEY idx_zzz(table_name, data_id_str, p_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_updation_field;
CREATE TABLE s_updation_field (
	id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	p_id INT(11) UNSIGNED NOT NULL,
	name VARCHAR(50) NOT NULL,
	old_value_str VARCHAR(100),
	new_value_str VARCHAR(100),
	old_value_int INT(11),
	new_value_int INT(11),
	old_value_decimal DECIMAL(10, 4),
	new_value_decimal DECIMAL(10, 4),
	old_value_time DATETIME,
	new_value_time DATETIME,
	PRIMARY KEY (id),
	KEY idx_xxx(p_id, name) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_dynamic_field;
CREATE TABLE s_dynamic_field (
	id INT(11) UNSIGNED NOT NULL,
	table_name VARCHAR(50) NOT NULL,
	name VARCHAR(50) NOT NULL,
	sort TINYINT(2),
	PRIMARY KEY (id),
	KEY idx_table_name(table_name, sort, id, name) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_dynamic_field_val;
CREATE TABLE s_dynamic_field_val (
	id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	field_id INT(11) UNSIGNED NOT NULL,
	business_id_int INT(11) UNSIGNED,
	business_id_str VARCHAR(50),
	value_str VARCHAR(100),
	value_int INT(11),
	value_decimal DECIMAL(10, 4),
	value_time DATETIME,
	PRIMARY KEY (id),
	UNIQUE KEY `unq_xxx` (`field_id`, `business_id_int`),
	UNIQUE KEY `unq_www` (`field_id`, `business_id_str`),
	KEY idx_xxx(business_id_int, field_id) USING BTREE,
	KEY idx_www(business_id_str, field_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS s_oauth2_code;
CREATE TABLE s_oauth2_code (
	id INT(11) NOT NULL AUTO_INCREMENT,
	user_id INT(11) NOT NULL COMMENT '用户id',
	client_system_id INT(11) NOT NULL COMMENT '第三方系统id',
	code VARCHAR(128) COMMENT '授权码',
	PRIMARY KEY (id),
	UNIQUE KEY `unq_union` (`user_id`, `client_system_id`),
	UNIQUE KEY `unq_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_oauth2_scope;
CREATE TABLE s_oauth2_scope (
	id INT(11) NOT NULL AUTO_INCREMENT,
	code_id INT(11) NOT NULL COMMENT 's_oauth2_code表的id',
	scope VARCHAR(20) NOT NULL COMMENT '权限',
	PRIMARY KEY (id),
	UNIQUE KEY `unq_union` (`code_id`, `scope`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
