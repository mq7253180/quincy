USE honda3;

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

INSERT INTO `b_user` VALUES (25143814434232384, '2019-06-24 14:41:15', 'maqiang', '马强', 1, 'dad3a37aa9d50688b5157698acfd7aee', '17810355544', 'mq7253180@126.com', '/ken.JPG', '3b7fa1804e7a472988cdbbb6eea9ee0a', NULL, NULL);
INSERT INTO `s_role_user_rel`(role_id, user_id) VALUES (0, 25143814434232384);

DROP TABLE IF EXISTS sub_test;
CREATE TABLE sub_test (
	id INT(11) NOT NULL,
	test_id INT(11) NOT NULL,
	eee VARCHAR(20) NOT NULL,
	fff INT(10) NOT NULL,
	PRIMARY KEY (id),
	KEY idx_xxx(test_id, fff) USING BTREE,
	KEY idx_www(fff, test_id) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO sub_test VALUES(1, 6, 'abcd', 15);
INSERT INTO sub_test VALUES(2, 2, 'bcde', 5);
INSERT INTO sub_test VALUES(3, 5, 'cdef', 21);
INSERT INTO sub_test VALUES(4, 7, 'defg', 56);
INSERT INTO sub_test VALUES(5, 1, 'efgh', 87);
INSERT INTO sub_test VALUES(6, 10, 'fghi', 2);
INSERT INTO sub_test VALUES(7, 3, 'ghij', 7);
INSERT INTO sub_test VALUES(8, 9, 'hijk', 12);
INSERT INTO sub_test VALUES(9, 6, 'abcdef', 9);
INSERT INTO sub_test VALUES(10, 9, 'bcdefg', 21);
INSERT INTO sub_test VALUES(11, 2, 'cdefgh', 67);
INSERT INTO sub_test VALUES(12, 3, 'abefgh', 21);
INSERT INTO sub_test VALUES(13, 4, 'aefghi', 37);
INSERT INTO sub_test VALUES(14, 3, 'abcfgh', 21);
INSERT INTO sub_test VALUES(15, 4, 'cdeghes', 52);
INSERT INTO sub_test VALUES(16, 7, 'cdghasdf', 18);
INSERT INTO sub_test VALUES(17, 5, 'poijjs', 21);
INSERT INTO sub_test VALUES(18, 6, 'lkjhhd', 25);
INSERT INTO sub_test VALUES(19, 2, 'csadfdsafads', 4);
INSERT INTO sub_test VALUES(20, 1, 'dwqfwqfwq', 76);

INSERT INTO s_dynamic_field VALUES(1, 'sub_test', 'item1', 'el-table_3_column_15 is-right', 3);
INSERT INTO s_dynamic_field VALUES(2, 'sub_test', 'item2', 'el-table_3_column_15 is-left', 1);
INSERT INTO s_dynamic_field VALUES(3, 'sub_test', 'item3', 'el-table_3_column_15 is-right', 2);

INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(1, 8, 123.32);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(1, 9, 342.43);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(1, 10, 3545.23);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(1, 11, 7645.23);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(1, 12, 453.12);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_str) VALUES(2, 8, 'aaa');
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_str) VALUES(2, 9, 'and');
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(3, 8, 78424.67);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(3, 9, 234434.78);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(3, 10, 765.52);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(3, 11, 435.76);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(1, 13, 23423.28);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_str) VALUES(2, 10, 'ghfjg');
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(3, 13, 12312.92);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(1, 14, 435.18);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_str) VALUES(2, 11, 'tyru');
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(3, 12, 32.83);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(3, 3, 874.83);
INSERT INTO s_dynamic_field_val(field_id, business_id_int, value_decimal) VALUES(1, 3, 2345.56);

USE honda5;
INSERT INTO b_login_user_mapping(login_name, user_id) VALUES ('17810355544', 25143814434232384);

USE honda4;
INSERT INTO b_login_user_mapping(login_name, user_id) VALUES ('mq7253180@126.com', 25143814434232384);

USE honda6;
INSERT INTO b_login_user_mapping(login_name, user_id) VALUES ('maqiang', 25143814434232384);

