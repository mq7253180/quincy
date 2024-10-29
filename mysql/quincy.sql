DROP TABLE IF EXISTS s_transaction;
CREATE TABLE s_transaction (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	application_name VARCHAR(20) NOT NULL COMMENT '应用服务名称',
	bean_name VARCHAR(100) NOT NULL COMMENT 'Bean名称',
	method_name VARCHAR(100) NOT NULL COMMENT '方法名称',
	type TINYINT NOT NULL COMMENT '1失败撤消; 0失败重试',
	status TINYINT NOT NULL DEFAULT 0 COMMENT '1执行结束; 0正在执行',
	version INT NOT NULL DEFAULT 0 COMMENT '重试执行版本',
	flag_for_cron_job VARCHAR(10) COMMENT '定时任务标识',
	in_order TINYINT DEFAULT 0 COMMENT '是否有顺序: 1TRUE; 0FALSE',
	creation_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	last_executed DATETIME DEFAULT NULL COMMENT '上一次执行时间',
	PRIMARY KEY (id),
	KEY idx_union(application_name, status, flag_for_cron_job) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_transaction_atomic;
CREATE TABLE s_transaction_atomic (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	tx_id INT UNSIGNED NOT NULL COMMENT '事务id',
	bean_name VARCHAR(100) NOT NULL COMMENT 'Bean名称',
	method_name VARCHAR(100) NOT NULL COMMENT '失败后需要执行的方法名',
	status TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '确认方法: 2已执行撤消; 1成功; 0未成功',
	sort TINYINT NOT NULL COMMENT '顺序',
	msg VARCHAR(200) COMMENT '失败信息',
	ret_class VARCHAR(200) DEFAULT NULL COMMENT '返回类型',
	ret_value VARCHAR(1500) DEFAULT NULL COMMENT '返回值',
	PRIMARY KEY (id),
	KEY idx_union (tx_id, status) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_transaction_arg;
CREATE TABLE s_transaction_arg (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	parent_id INT UNSIGNED NOT NULL COMMENT '事务或原子操作id',
	class VARCHAR(200) NOT NULL COMMENT '类型',
	_value VARCHAR(1500) NOT NULL COMMENT '值',
	sort TINYINT NOT NULL COMMENT '顺序',
	type TINYINT NOT NULL COMMENT '0事务; 1原子操作',
	PRIMARY KEY (id),
	KEY idx_union (parent_id, type) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `b_region`;
CREATE TABLE `b_region` (
  `id` INT UNSIGNED NOT NULL,
  `en_name` VARCHAR(50) NOT NULL COMMENT '英文名称',
  `cn_name` VARCHAR(50) NOT NULL COMMENT '中文名称',
  `tel_prefix` VARCHAR(15) DEFAULT NULL COMMENT '电话区号',
  `code` VARCHAR(5) DEFAULT NULL COMMENT '三字码',
  `code2` VARCHAR(2) DEFAULT NULL COMMENT '两字码',
  `currency` VARCHAR(5) DEFAULT NULL COMMENT '币种',
  `locale` VARCHAR(10) DEFAULT NULL COMMENT 'locale',
  `parent_id` INT UNSIGNED DEFAULT '0' COMMENT '父id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_en_name` (`en_name`),
  UNIQUE KEY `unq_cn_name` (`cn_name`),
  UNIQUE KEY `unq_code` (`code`),
  UNIQUE KEY `unq_code2` (`code2`),
  KEY `idx_parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `b_region` VALUES 
(1, 'China', '中国', '86', 'CHN', 'CN', 'CNY', 'zh_CN', 0),
(2, 'Hong Kong(China)', '中国香港', '852', 'HKG', 'HK', 'HKD', 'zh_HK', 1),
(3, 'Macau(China)', '中国澳门', '853', 'MAC', 'MO', 'MOP', 'zh_MO', 1),
(4, 'Taiwan(China)', '中国台湾', '886', 'TWN', 'TW', 'TWD', 'zh_TW', 1),
(5, 'United States of America', '美国', '1', 'USA', 'US', 'USD', 'en_US', 0),
(6, 'United Kingdom', '英国', '44', 'GBR', 'GB', 'GBP', 'en_GB', 0),
(7, 'France', '法国', '33', 'FRA', 'FR', 'EUR', 'fr_FR', 0),
(8, 'Russia', '俄罗斯', '7', 'RUS', 'RU', 'RUB', 'ru_RU', 0),
(9, 'Canada', '加拿大', '1', 'CAN', 'CA', 'CAD', NULL, 0),
(10, 'Australia', '澳大利亚', '61', 'AUS', 'AU', 'AUD', NULL, 0),
(11, 'Japan', '日本', '81', 'JPN', 'JP', 'JPY', 'ja_JP', 0),
(12, 'South Korea', '韩国', '82', 'KOR', 'KR', 'KRW', NULL, 0),
(13, 'Singapore', '新加坡', '65', 'SGP', 'SG', 'SGD', NULL, 0),
(14, 'Malaysia', '马来西亚', '60', 'MYS', 'MY', 'MYR', NULL, 0),
(15, 'Thailand', '泰国', '66', 'THA', 'TH', 'THB', NULL, 0),
(16, 'Indonesia', '印度尼西亚', '62', 'IDN', 'ID', NULL, NULL, 0),
(17, 'New Zealand', '新西兰', '64', 'NZL', 'NZ', 'NZD', NULL, 0),
(18, 'Germany', '德国', '49', 'DEU', 'DE', 'EUR', NULL, 0),
(19, 'Italy', '意大利', '39', 'ITA', 'IT', 'EUR', NULL, 0),
(20, 'Netherlands', '荷兰', '31', 'NLD', 'NL', 'EUR', NULL, 0),
(21, 'Ireland', '爱尔兰', '353', 'IRL', 'IE', 'EUR', NULL, 0),
(22, 'Spain', '西班牙', '34', 'ESP', 'ES', 'EUR', NULL, 0),
(23, 'Portugal', '葡萄牙', '351', 'PRT', 'PT', 'EUR', NULL, 0),
(24, 'Austria', '奥地利', '43', 'AUT', 'AT', 'EUR', NULL, 0),
(25, 'Hungary', '匈牙利', '36', 'HUN', 'HU', NULL, NULL, 0),
(26, 'Belgium', '比利时', '32', 'BEL', 'BE', 'EUR', NULL, 0),
(27, 'Luxembourg', '卢森堡', '352', 'LUX', 'LU', 'EUR', NULL, 0),
(28, 'Greece', '希腊', '30', 'GRC', 'GR', 'EUR', NULL, 0),
(29, 'Switzerland', '瑞士', '41', 'CHE', 'CH', 'CHF', NULL, 0),
(30, 'Sweden', '瑞典', '46', 'SWE', 'SE', 'SEK', NULL, 0),
(31, 'Norway', '挪威', '47', 'NOR', 'NO', 'NOK', NULL, 0),
(32, 'Finland', '芬兰', '358', 'FIN', 'FI', 'EUR', NULL, 0),
(33, 'Denmark', '丹麦', '45', 'DNK', 'DK', 'DKK', NULL, 0),
(34, 'Iceland', '冰岛', '354', 'ISL', 'IS', NULL, NULL, 0),
(35, 'Greenland', '格陵兰', '299', 'GRL', 'GL', NULL, NULL, 0),
(41, 'Antarctica', '南极洲', '672', 'ATA', 'AQ', NULL, NULL, 0),
(42, 'Mexico', '墨西哥', '52', 'MEX', 'MX', NULL, NULL, 0),
(43, 'Cuba', '古巴', '53', 'CUB', 'CU', NULL, NULL, 0),
(44, 'Brazil', '巴西', '55', 'BRA', 'BR', 'BRL', NULL, 0),
(45, 'Argentina', '阿根廷', '54', 'ARG', 'AR', NULL, NULL, 0),
(46, 'Chile', '智利', '56', 'CHL', 'CL', NULL, NULL, 0),
(47, 'Peru', '秘鲁', '51', 'PER', 'PE', NULL, NULL, 0),
(48, 'Colombia', '哥伦比亚', '57', 'COL', 'CO', NULL, NULL, 0),
(49, 'Venezuela', '委内瑞拉', '58', 'VEN', 'VE', NULL, NULL, 0),
(50, 'Uruguay', '乌拉圭', '598', 'URY', 'UY', NULL, NULL, 0),
(51, 'Paraguay', '巴拉圭', '595', 'PRY', 'PY', NULL, NULL, 0),
(52, 'Costa Rica', '哥斯达黎加', '506', 'CRI', 'CR', NULL, NULL, 0),
(53, 'Bolivia', '玻利维亚', '591', 'BOL', 'BO', NULL, NULL, 0),
(54, 'Guyana', '圭亚那', '592', 'GUY', 'GY', NULL, NULL, 0),
(55, 'Dominican Republic', '多米尼加共和国', '1-809', 'DOM', 'DO', NULL, NULL, 0),
(56, 'Dominica', '多米尼克', '1-767', 'DMA', 'DM', NULL, NULL, 0),
(57, 'Ecuador', '厄瓜多尔', '593', 'ECU', 'EC', NULL, NULL, 0),
(58, 'Nicaragua', '尼加拉瓜', '505', 'NIC', 'NI', NULL, NULL, 0),
(59, 'EI Salvador', '萨尔瓦多', '503', 'SLV', 'SV', NULL, NULL, 0),
(60, 'Guatemala', '危地马拉', '502', 'GTM', 'GT', NULL, NULL, 0),
(61, 'Honduras', '洪都拉斯', '504', 'HND', 'HN', NULL, NULL, 0),
(62, 'Jamaica', '牙买加', '1-876', 'JAM', 'JM', NULL, NULL, 0),
(63, 'Haiti', '海地', '509', 'HTI', 'HT', NULL, NULL, 0),
(71, 'Turkey', '土耳其', '90', 'TUR', 'TR', NULL, NULL, 0),
(72, 'Egypt', '埃及', '20', 'EGY', 'EG', NULL, NULL, 0),
(73, 'Israel', '以色列', '972', 'ISR', 'IL', NULL, NULL, 0),
(74, 'Palestinian Territories', '巴勒斯坦', '970', 'PSE', 'PS', NULL, NULL, 0),
(75, 'Jordan', '约旦', '962', 'JOR', 'JO', NULL, NULL, 0),
(76, 'Lebanon', '黎巴嫩', '961', 'LBN', 'LB', NULL, NULL, 0),
(77, 'Qatar', '卡塔尔', '974', 'QAT', 'QA', NULL, NULL, 0),
(78, 'United Arab Emirates', '阿拉伯联合酋长国', '971', 'ARE', 'AE', 'AED', NULL, 0),
(79, 'Saudi Arabia', '沙特阿拉伯', '966', 'SAU', 'SA', NULL, NULL, 0),
(80, 'Iran', '伊朗', '98', 'IRN', 'IR', NULL, NULL, 0),
(81, 'Iraq', '伊拉克', '964', 'IRQ', 'IQ', NULL, NULL, 0),
(82, 'Kuwait', '科威特', '965', 'KWT', 'KW', NULL, NULL, 0),
(91, 'India', '印度', '91', 'IND', 'IN', NULL, NULL, 0),
(92, 'Pakistan', '巴基斯坦', '92', 'PAK', 'PK', NULL, NULL, 0),
(93, 'Bangladesh', '孟加拉国', '880', 'BGD', 'BD', NULL, NULL, 0),
(94, 'Sri Lanka', '斯里兰卡', '94', 'LKA', 'LK', NULL, NULL, 0),
(95, 'Maldives', '马尔代夫', '960', 'MDV', 'MV', NULL, NULL, 0),
(96, 'Philippines', '菲律宾', '63', 'PHL', 'PH', 'PHP', NULL, 0),
(97, 'Brunei', '文莱', '673', 'BRN', 'BN', NULL, NULL, 0),
(98, 'Timor-Leste', '东帝汶', '670', 'TLS', 'TL', NULL, NULL, 0),
(99, 'Myanmar(Burma)', '缅甸', '95', 'MMR', 'MM', NULL, NULL, 0),
(100, 'Vietnam', '越南', '84', 'VNM', 'VN', NULL, NULL, 0),
(101, 'Cambodia', '柬埔寨', '855', 'KHM', 'KH', NULL, NULL, 0),
(102, 'Laos', '老挝', '856', 'LAO', 'LA', NULL, NULL, 0),
(103, 'Nepal', '尼泊尔', '977', 'NPL', 'NP', NULL, NULL, 0),
(104, 'Bhutan', '不丹', '975', 'BTN', 'BT', NULL, NULL, 0),
(105, 'Mongolia', '蒙古', '976', 'MNG', 'MN', NULL, NULL, 0),
(106, 'Oman', '阿曼', '968', 'OMN', 'OM', NULL, NULL, 0),
(107, 'Afghanistan', '阿富汗', '93', 'AFG', 'AF', NULL, NULL, 0),
(111, 'Poland', '波兰', '48', 'POL', 'PL', NULL, NULL, 0),
(112, 'Bulgaria', '保加利亚', '359', 'BGR', 'BG', NULL, NULL, 0),
(113, 'Romania', '罗马尼亚', '40', 'ROM', 'RO', NULL, NULL, 0),
(114, 'Albania', '阿尔巴尼亚', '355', 'ALB', 'AL', NULL, NULL, 0),
(115, 'Czechia', '捷克', '420', 'CZE', 'CZ', NULL, NULL, 0),
(116, 'Slovakia', '斯洛伐克', '421', 'SVK', 'SK', 'EUR', NULL, 0),
(121, 'Ukraine', '乌克兰', '380', 'UKR', 'UA', NULL, NULL, 0),
(122, 'Belarus', '白俄罗斯', '375', 'BLR', 'BY', NULL, NULL, 0),
(123, 'Lithuania', '立陶宛', '370', 'LTU', 'LT', 'EUR', NULL, 0),
(124, 'Georgia', '格鲁吉亚', '995', 'GEO', 'GE', NULL, NULL, 0),
(125, 'Latvia', '拉脱维亚', '371', 'LVA', 'LV', 'EUR', NULL, 0),
(126, 'Armenia', '亚美尼亚', '374', 'ARM', 'AM', NULL, NULL, 0),
(127, 'Estonia', '爱沙尼亚', '372', 'EST', 'EE', 'EUR', NULL, 0),
(128, 'Azerbaijan', '阿塞拜疆', '994', 'AZE', 'AZ', NULL, NULL, 0),
(129, 'Kazakhstan', '哈萨克斯坦', '7', 'KAZ', 'KZ', NULL, NULL, 0),
(130, 'Tajikistan', '塔吉克斯坦', '992', 'TJK', 'TJ', NULL, NULL, 0),
(131, 'Turkmenistan', '土库曼斯坦', '993', 'TKM', 'TM', NULL, NULL, 0),
(132, 'Uzbekistan', '乌兹别克斯坦', '998', 'UZB', 'UZ', NULL, NULL, 0),
(133, 'Kyrgyzstan', '吉尔吉斯斯坦', '996', 'KGZ', 'KG', NULL, NULL, 0),
(141, 'Serbia', '塞尔维亚', '381', 'SRB', 'RS', NULL, NULL, 0),
(142, 'Croatia', '克罗地亚', '385', 'HRV', 'HR', NULL, NULL, 0),
(143, 'Slovenia', '斯洛文尼亚', '386', 'SVN', 'SI', 'EUR', NULL, 0),
(144, 'Macedonia', '马其顿', '389', 'MKD', 'MK', NULL, NULL, 0),
(145, 'Montenegro', '黑山', '382', 'MNE', 'ME', NULL, NULL, 0),
(146, 'Andorra', '安道尔', '376', 'AND', 'AD', NULL, NULL, 0),
(151, 'Solomon Islands', '所罗门群岛', '677', 'SLB', 'SB', NULL, NULL, 0),
(152, 'Marshall Islands', '马绍尔群岛', '692', 'MHL', 'MH', NULL, NULL, 0),
(153, 'Cook Islands', '库克群岛', '682', 'COK', 'CK', NULL, NULL, 0),
(154, 'Norfolk Islands', '诺福克岛(澳属)', '672', 'NFK', 'NF', NULL, NULL, 0),
(155, 'Papua New Guinea', '巴布亚新几内亚', '675', 'PNG', 'PG', NULL, NULL, 0),
(156, 'Vanuatu', '瓦努阿图', '678', 'VUT', 'VU', NULL, NULL, 0),
(157, 'Fiji', '斐济', '679', 'FJI', 'FJ', NULL, NULL, 0),
(158, 'Palau', '帕劳', '680', 'PLW', 'PW', NULL, NULL, 0),
(159, 'Tonga', '汤加', '676', 'TON', 'TO', NULL, NULL, 0),
(160, 'Samoa', '萨摩亚', '685', 'WSM', 'WS', NULL, NULL, 0),
(171, 'U.S. Outlying Islands', '美国离岛', NULL, 'UMI', 'UM', NULL, NULL, 0),
(172, 'U.S. Virgin Islands', '美属维尔京群岛', '1-340', 'VIR', 'VI', NULL, NULL, 0),
(173, 'American Samoa', '美属萨摩亚', '1-684', 'ASM', 'AS', NULL, NULL, 0),
(174, 'Puerto Rico', '波多黎各', '1-787/1-939', 'PRI', 'PR', NULL, NULL, 0),
(175, 'Guam', '关岛', '1-671', 'GUM', 'GU', NULL, NULL, 0),
(176, 'Northern Mariana Islands', '北马里亚纳群岛', '1-670', 'MNP', 'MP', NULL, NULL, 0),
(177, 'British Virgin Islands', '英属维尔京群岛', '1-284', 'VGB', 'VG', NULL, NULL, 0),
(178, 'British Indian Ocean Territory', '英属印度洋领地', NULL, 'IOT', NULL, NULL, NULL, 0),
(179, 'Gibraltar', '直布罗陀', '350', 'GIB', 'GI', NULL, NULL, 0),
(180, 'Falkland', '福克兰群岛', '500', 'FLK', 'FK', NULL, NULL, 0),
(181, 'Cayman Islands', '开曼群岛', '1-345', 'CYM', 'KY', NULL, NULL, 0),
(182, 'Bermuda', '百慕大', '1-441', 'BMU', 'BM', NULL, NULL, 0),
(183, 'French Guiana', '法属圭亚那', '594', 'GUF', 'GF', NULL, NULL, 0),
(184, 'French Polynesia', '法属波利尼西亚', '689', 'PYF', 'PF', NULL, NULL, 0),
(185, 'French Southern Territories', '法属南部领地', NULL, 'ATF', 'TF', NULL, NULL, 0),
(186, 'St. Martin', '法属圣马丁', '590', 'MAF', 'MF', NULL, NULL, 0),
(187, 'Reunion', '留尼旺', '262', 'REU', 'RE', NULL, NULL, 0),
(188, 'Caribbean Netherlands', '荷属加勒比', NULL, 'BES', 'BQ', NULL, NULL, 0),
(189, 'Sint Maarten', '荷属圣马丁', NULL, NULL, NULL, NULL, NULL, 0),
(191, 'Malta', '马耳他', '356', 'MLT', 'MT', 'EUR', NULL, 0),
(192, 'Vatican City', '梵蒂冈', '379', 'VAT', 'VA', NULL, NULL, 0),
(193, 'Moldova', '摩尔多瓦', '373', 'MDA', 'MD', NULL, NULL, 0),
(194, 'Monaco', '摩纳哥', '377', 'MCO', 'MC', NULL, NULL, 0),
(195, 'Cyprus', '塞浦路斯', '357', 'CYP', 'CY', 'EUR', NULL, 0),
(196, 'San Marino', '圣马力诺', '378', 'SMR', 'SM', NULL, NULL, 0),
(201, 'South Africa', '南非', '27', 'ZAF', 'ZA', 'ZAR', NULL, 0),
(202, 'Madagascar', '马达加斯加', '261', 'MDG', 'MG', NULL, NULL, 0),
(203, 'Algeria', '阿尔及利亚', '213', 'DZA', 'DZ', NULL, NULL, 0),
(204, 'Kenya', '肯尼亚', '254', 'KEN', 'KE', NULL, NULL, 0),
(205, 'Libya', '利比亚', '218', 'LBY', 'LY', NULL, NULL, 0),
(206, 'Yemen', '也门', '967', 'YEM', 'YE', NULL, NULL, 0),
(207, 'Somalia', '索马里', '252', 'SOM', 'SO', NULL, NULL, 0),
(208, 'South Sudan', '南苏丹', '211', 'SSD', 'SS', NULL, NULL, 0),
(209, 'Ethiopia', '埃塞俄比亚', '251', 'ETH', 'ET', NULL, NULL, 0),
(210, 'Botswana', '博茨瓦纳', '267', 'BWA', 'BW', NULL, NULL, 0),
(211, 'Burkina Faso', '布基纳法索', '226', 'BFA', 'BF', NULL, NULL, 0),
(212, 'Burundi', '布隆迪', '257', 'BDI', 'BI', NULL, NULL, 0),
(213, 'Equatorial Guinea', '赤道几内亚', '240', 'GNQ', 'GQ', NULL, NULL, 0),
(214, 'Togo', '多哥', '228', 'TGO', 'TG', NULL, NULL, 0),
(215, 'Cape Verde', '佛得角', '238', 'CPV', 'CV', NULL, NULL, 0),
(216, 'Gambia', '冈比亚', '220', 'GMB', 'GM', NULL, NULL, 0),
(217, 'Congo-Brazzaville', '刚果(布)', '242', 'COG', 'CG', NULL, NULL, 0),
(218, 'Congo-Kinshasa', '刚果(金)', '243', 'COD', 'CD', NULL, NULL, 0),
(219, 'Djibouti', '吉布提', '253', 'DJI', 'DJ', NULL, NULL, 0),
(220, 'Guinea', '几内亚', '224', 'GIN', 'GN', NULL, NULL, 0),
(221, 'Ghana', '加纳', '233', 'GHA', 'GH', NULL, NULL, 0),
(222, 'Gabon', '加蓬', '241', 'GAB', 'GA', NULL, NULL, 0),
(223, 'Zimbabwe', '津巴布韦', '263', 'ZWE', 'ZW', NULL, NULL, 0),
(224, 'Cameroon', '喀麦隆', '237', 'CMR', 'CM', NULL, NULL, 0),
(225, 'Cote d Ivoire', '科特迪瓦', '225', 'CIV', 'CI', NULL, NULL, 0),
(226, 'Liberia', '利比里亚', '231', 'LBR', 'LR', NULL, NULL, 0),
(227, 'Rwanda', '卢旺达', '250', 'RWA', 'RW', NULL, NULL, 0),
(228, 'Malawi', '马拉维', '265', 'MWI', 'MW', NULL, NULL, 0),
(229, 'Mali', '马里', '223', 'MLI', 'ML', NULL, NULL, 0),
(230, 'Mauritius', '毛里求斯', '230', 'MUS', 'MU', NULL, NULL, 0),
(231, 'Mauritania', '毛里塔尼亚', '222', 'MRT', 'MR', NULL, NULL, 0),
(232, 'Morocco', '摩洛哥', '212', 'MAR', 'MA', NULL, NULL, 0),
(233, 'Mozambique', '莫桑比克', '258', 'MOZ', 'MZ', NULL, NULL, 0),
(234, 'Namibia', '纳米比亚', '264', 'NAM', 'NA', NULL, NULL, 0),
(235, 'Niger', '尼日尔', '227', 'NER', 'NE', NULL, NULL, 0),
(236, 'Nigeria', '尼日利亚', '234', 'NGA', 'NG', NULL, NULL, 0),
(237, 'Sierra Leone', '塞拉利昂', '232', 'SLE', 'SL', NULL, NULL, 0),
(238, 'Senegal', '塞内加尔', '221', 'SEN', 'SN', NULL, NULL, 0),
(239, 'Seychelles', '塞舌尔', '248', 'SYC', 'SC', NULL, NULL, 0),
(240, 'Sao Tome & Principe', '圣多美和普林西比', '239', 'STP', 'ST', NULL, NULL, 0),
(241, 'Tanzania', '坦桑尼亚', '255', 'TZA', 'TZ', NULL, NULL, 0),
(242, 'Tunisia', '突尼斯', '216', 'TUN', 'TN', NULL, NULL, 0),
(243, 'Uganda', '乌干达', '256', 'UGA', 'UG', NULL, NULL, 0),
(244, 'Western Sahara', '西撒哈拉', NULL, 'ESH', 'EH', NULL, NULL, 0),
(245, 'Zambia', '赞比亚', '260', 'ZMB', 'ZM', NULL, NULL, 0),
(246, 'Chad', '乍得', '235', 'TCD', 'TD', NULL, NULL, 0),
(247, 'Central African Republic', '中非共和国', '236', 'CAF', 'CF', NULL, NULL, 0);

DROP TABLE IF EXISTS `s_role`;
CREATE TABLE `s_role` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(50) NOT NULL COMMENT '名称',
  `enterprise_id` BIGINT UNSIGNED,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `s_role`(id, name) VALUES 
(0, '超级管理员'),
(1, '系统管理员（国际）'),
(3, '运营（国际）'),
(4, '资金经办（国际）'),
(5, '资金经理（国际）'),
(6, '风控（国际）'),
(7, '销售（国际）'),
(8, '经理（运营+资金经理）（国际）'),
(11, '系统管理员(香港)'),
(12, '交易(香港)'),
(13, '销售(香港)'),
(14, '运营(香港)'),
(15, '资金经办(香港)'),
(16, '资金经理(香港)'),
(17, '合规(香港)');

DROP TABLE IF EXISTS `s_permission`;
CREATE TABLE `s_permission` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(255) NOT NULL COMMENT '名称',
  `des` VARCHAR(50) COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `s_permission` VALUES 
(1,'sysMenu','超级管理员菜单'),
(2,'reloadSessionByUserId','根据用户ID更新session'),
(3,'reloadSessionsByRole','根据角色更新session'),
(4,'init','初始化白名单'),
(5,'syn','同步白名单'),
(11,'creditSeach','查询合同'),
(12,'creditAdd','新增合同'),
(13,'creditUpdateAmount','更新合同授信额'),
(14,'creditUpdate','更新合同信息'),
(15,'viewCreditHistory','查看合同授信修改历史'),
(16,'creditMarginSeach','查询保证金'),
(17,'creditMarginAdd','新增保证金'),
(18,'creditMarginUpdate','更改保证金'),
(19,'creditMarginAudit','审核保证金'),
(20,'creditMarginDelete','删除保证金'),
(21,'Permission',NULL),
(22,'PagePermission',NULL),
(23,'DirectivePermission',NULL),
(24,'DirectivePermission',NULL),
(25,'RolePermission',NULL),
(26,'Icons',NULL),
(27,'Example',NULL),
(28,'CreateArticle',NULL),
(29,'EditArticle',NULL),
(30,'ArticleList',NULL),
(31,'Tab',NULL),
(32,'ErrorPages',NULL),
(33,'Page401',NULL),
(34,'Page404',NULL),
(35,'ErrorLog',NULL),
(36,'Excel',NULL),
(37,'ExportExcel',NULL),
(38,'SelectExcel',NULL),
(39,'MergeHeader',NULL),
(40,'UploadExcel',NULL),
(41,'Zip',NULL),
(42,'ExportZip',NULL),
(43,'PDF',NULL),
(44,'Theme',NULL),
(45,'ClipboardDemo',NULL),
(46,'ComponentDemo',NULL),
(47,'TinymceDemo',NULL),
(48,'MarkdownDemo',NULL),
(49,'JsonEditorDemo',NULL),
(50,'SplitpaneDemo',NULL),
(51,'AvatarUploadDemo',NULL),
(52,'DropzoneDemo',NULL),
(53,'StickyDemo',NULL),
(54,'CountToDemo',NULL),
(55,'ComponentMixinDemo',NULL),
(56,'BackToTopDemo',NULL),
(57,'DragDialogDemo',NULL),
(58,'DragSelectDemo',NULL),
(59,'DndListDemo',NULL),
(60,'DragKanbanDemo',NULL),
(61,'Charts',NULL),
(62,'KeyboardChart',NULL),
(63,'LineChart',NULL),
(64,'MixChart',NULL),
(65,'Nested',NULL),
(66,'Menu1',NULL),
(67,'Menu1-1',NULL),
(68,'Menu1-2',NULL),
(69,'Menu1-2-1',NULL),
(70,'Menu1-2-2',NULL),
(71,'Menu1-3',NULL),
(72,'Menu2',NULL),(73,'Table',NULL),
(74,'DynamicTable',NULL),
(75,'DragTable',NULL),
(76,'InlineEditTable',NULL),
(77,'ComplexTable',NULL),
(78,'DynamicColumns',NULL);

DROP TABLE IF EXISTS `s_permission_role_rel`;
CREATE TABLE `s_permission_role_rel` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `permission_id` INT UNSIGNED NOT NULL COMMENT '权限id',
  `role_id` INT UNSIGNED NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_rel` (`permission_id`,`role_id`),
  KEY `idx_permission_id` (`permission_id`),
  KEY `idx_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `s_permission_role_rel` VALUES 
(22,1,0),
(27,1,14),
(23,2,0),
(24,3,0),
(25,4,0),
(26,5,0),
(28,11,0),
(32,11,14),
(29,12,0),
(30,13,0),
(31,14,0),
(33,15,0),
(34,16,0),
(35,17,0),
(36,18,0),
(37,19,0),
(39,20,0),
(108,21,0),
(109,22,0),
(110,23,0),
(111,24,0),
(112,25,0),
(167,26,0),
(114,27,0),
(115,28,0),
(116,29,0),
(117,30,0),
(118,31,0),
(119,32,0),
(120,33,0),
(121,34,0),
(122,35,0),
(123,36,0),
(124,37,0),
(125,38,0),
(126,39,0),
(127,40,0),
(128,41,0),
(129,42,0),
(130,43,0),
(131,44,0),
(132,45,0),
(133,46,0),
(134,47,0),
(135,48,0),
(136,49,0),
(137,50,0),
(138,51,0),
(139,52,0),
(140,53,0),
(141,54,0),
(142,55,0),
(143,56,0),
(144,57,0),
(145,58,0),
(146,59,0),
(147,60,0),
(148,61,0),
(149,62,0),
(150,63,0),
(151,64,0),
(152,65,0),
(153,66,0),
(154,67,0),
(155,68,0),
(156,69,0),
(157,70,0),
(158,71,0),
(159,72,0),
(160,73,0),
(161,74,0),
(162,75,0),
(163,76,0),
(164,77,0),
(165,78,0);

DROP TABLE IF EXISTS `s_menu`;
CREATE TABLE `s_menu` (
  `id` INT UNSIGNED NOT NULL,
  `p_id` INT UNSIGNED DEFAULT NULL COMMENT '父id',
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
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` INT UNSIGNED NOT NULL COMMENT '角色id',
  `menu_id` INT UNSIGNED NOT NULL COMMENT '菜单id',
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
	id INT UNSIGNED NOT NULL,
	name VARCHAR(50) NOT NULL COMMENT '名称',
	client_id VARCHAR(256) NOT NULL COMMENT '逻辑client id',
	secret VARCHAR(256) COMMENT '公钥',
	PRIMARY KEY (id),
	UNIQUE KEY `unq_client_id` (`client_id`),
	UNIQUE KEY `unq_secret` (`secret`),
	UNIQUE KEY `unq_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO s_client_system VALUES(1, '本系统', 'self', NULL);

DROP TABLE IF EXISTS `b_login_user_mapping`;
CREATE TABLE `b_login_user_mapping` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `login_name` VARCHAR(50) NOT NULL,
  `user_id` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_login_name` (`login_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user` (
  `id` BIGINT UNSIGNED NOT NULL,
  `creation_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` VARCHAR(50) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `gender` TINYINT UNSIGNED NOT NULL COMMENT '0女；1男',
  `password` VARCHAR(128),
  `mobile_phone` VARCHAR(20) NOT NULL,
  `email` VARCHAR(50),
  `avatar` VARCHAR(256),
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
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	unified_socialc_redit_identifier VARCHAR(50),
	address VARCHAR(100),
	contact_name VARCHAR(50),
	contact_phone VARCHAR(50),
	PRIMARY KEY (id),
	UNIQUE KEY `unq_name` (`name`),
	UNIQUE KEY `unq_unified_socialc_redit_identifier` (`unified_socialc_redit_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DELETE FROM b_login_user_mapping;

USE honda5;
INSERT INTO b_login_user_mapping(login_name, user_id) VALUES ('17810355544', 25143814434232384);
USE honda4;
INSERT INTO b_login_user_mapping(login_name, user_id) VALUES ('mq7253180@126.com', 25143814434232384);
USE honda6;
INSERT INTO b_login_user_mapping(login_name, user_id) VALUES ('maqiang', 25143814434232384);

DELETE FROM b_user;
INSERT INTO `b_user` VALUES (25143814434232384, '2019-06-24 14:41:15', 'maqiang', '马强', 1, 'dad3a37aa9d50688b5157698acfd7aee', '17810355544', 'mq7253180@126.com', '/ken.JPG', '3b7fa1804e7a472988cdbbb6eea9ee0a', NULL, NULL);
INSERT INTO `b_user` VALUES (1, '2019-06-24 14:41:15', 'tim', 'TIM', 1, 'dad3a37aa9d50688b5157698acfd7aee', '17310464686', 'TIM@hce-haier.com', NULL, NULL, NULL, NULL);
INSERT INTO `b_user` VALUES (2, '2019-06-24 14:41:15', 'xuetx', '薛童心', 0, 'dad3a37aa9d50688b5157698acfd7aee', '18653241108', 'xuetongxin@hce-haier.com', NULL, NULL, NULL, NULL);
INSERT INTO `b_user` VALUES (3, '2019-06-24 14:41:15', 'fanzhen', '范桢', 1, 'dad3a37aa9d50688b5157698acfd7aee', '18611993803', 'fanzhen@hce-haier.com', NULL, NULL, NULL, NULL);
INSERT INTO `b_user` VALUES (4, '2019-06-24 14:41:15', 'yejq', '叶敬群', 0, 'dad3a37aa9d50688b5157698acfd7aee', '18340877879', 'yejingqun@hce-haier.com', NULL, NULL, NULL, NULL);
INSERT INTO `b_user` VALUES (5, '2019-06-24 14:41:15', 'jinyl', '金艳丽', 0, 'dad3a37aa9d50688b5157698acfd7aee', '18612751163', 'jinyanli@hce-haier.com', NULL, '6866ef5f06d74eb58788a71802c41ea9', NULL, NULL);
INSERT INTO `b_user` VALUES (6, '2019-06-24 14:41:15', 'yangguang', '杨光', 1, 'dad3a37aa9d50688b5157698acfd7aee', '15844055800', '1122211@126.com', NULL, NULL, NULL, NULL);
INSERT INTO `b_user` VALUES (7, '2019-06-24 14:41:15', 'zhaozh', '赵志辉', 1, 'dad3a37aa9d50688b5157698acfd7aee', '13552501524', 'luangk1@yusys.com.cn', NULL, NULL, NULL, NULL);

DROP TABLE IF EXISTS `s_role_user_rel`;
CREATE TABLE `s_role_user_rel` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` INT UNSIGNED NOT NULL COMMENT '角色id',
  `user_id` BIGINT UNSIGNED NOT NULL COMMENT '用户id',
  `status` TINYINT NOT NULL DEFAULT 1 COMMENT '-1已离职；0未激活；1正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_rel` (`role_id`,`user_id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `s_role_user_rel`(role_id, user_id) VALUES 
(0, 0),
(14, 5);

DROP TABLE IF EXISTS s_updation;
CREATE TABLE s_updation (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	sql_statement VARCHAR(300) NOT NULL,
	params VARCHAR(100) NOT NULL,
	creation_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id),
	KEY idx_creation_time(creation_time) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_updation_row;
CREATE TABLE s_updation_row (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	p_id INT UNSIGNED NOT NULL,
	table_name VARCHAR(50) NOT NULL,
	data_id_int INT UNSIGNED,
	data_id_str VARCHAR(50),
	PRIMARY KEY (id),
	KEY idx_xxx(data_id_int, table_name, p_id) USING BTREE,
	KEY idx_www(data_id_str, table_name, p_id) USING BTREE,
	KEY idx_qqq(table_name, data_id_int, p_id) USING BTREE,
	KEY idx_zzz(table_name, data_id_str, p_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_updation_field;
CREATE TABLE s_updation_field (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	p_id INT UNSIGNED NOT NULL,
	name VARCHAR(50) NOT NULL,
	old_value_str VARCHAR(100),
	new_value_str VARCHAR(100),
	old_value_int INT,
	new_value_int INT,
	old_value_decimal DECIMAL(10, 4),
	new_value_decimal DECIMAL(10, 4),
	old_value_time DATETIME,
	new_value_time DATETIME,
	PRIMARY KEY (id),
	KEY idx_xxx(p_id, name) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_dynamic_field;
CREATE TABLE s_dynamic_field (
	id INT UNSIGNED NOT NULL,
	table_name VARCHAR(50) NOT NULL,
	name VARCHAR(50) NOT NULL,
	class VARCHAR(50),
	sort TINYINT,
	PRIMARY KEY (id),
	KEY idx_table_name(table_name, sort, id, name) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS s_dynamic_field_val;
CREATE TABLE s_dynamic_field_val (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	field_id INT UNSIGNED NOT NULL,
	business_id_int INT UNSIGNED,
	business_id_str VARCHAR(50),
	value_str VARCHAR(100),
	value_int INT,
	value_decimal DECIMAL(10, 4),
	value_time DATETIME,
	PRIMARY KEY (id),
	UNIQUE KEY `unq_xxx` (`field_id`, `business_id_int`),
	UNIQUE KEY `unq_www` (`field_id`, `business_id_str`),
	KEY idx_xxx(business_id_int, field_id) USING BTREE,
	KEY idx_www(business_id_str, field_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

