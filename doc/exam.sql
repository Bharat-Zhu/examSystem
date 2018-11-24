-- ----------------------------
-- Table structure for tbl_department
-- ----------------------------
DROP TABLE IF EXISTS `tbl_department`;
CREATE TABLE `tbl_department` (
  `department_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `name` varchar(255) NOT NULL COMMENT '部门名称',
  `tel` varchar(255) NOT NULL COMMENT '部门电话',
  `remark` varchar(255) DEFAULT NULL COMMENT '部门备注',
  `create_id` varchar(11) NOT NULL COMMENT '部门信息创建者编号',
  `update_id` varchar(11) DEFAULT NULL COMMENT '数据更新者编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '部门信息更新时间',
  `update_datetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  `del_flag` varchar(1) NOT NULL DEFAULT '1' COMMENT '部门有效标识',
  `extend_first` varchar(255) DEFAULT NULL COMMENT '扩展栏位01',
  `extend_second` varchar(255) DEFAULT NULL COMMENT '扩展栏位02',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_department
-- ----------------------------
INSERT INTO `tbl_department` VALUES ('1', '开发一部', '029-1111', '所有开发部', '0', '0', '2018-11-05 16:16:46', '2018-11-05 16:19:06', '1', null, null);
INSERT INTO `tbl_department` VALUES ('2', '开发二部', '029-111234', '所有开发部', '0', '0', '2018-11-05 16:56:33', '2018-11-07 08:53:04', '1', null, null);
INSERT INTO `tbl_department` VALUES ('3', '开发三部', '029-1113', '所有开发部门', '', null, null, null, '1', null, null);
INSERT INTO `tbl_department` VALUES ('4', '研发部', '029-1234', '就分开就是丢成为I为科技部skin啊看是否能加上部分开始的女空间是吧啊速度发谁的风格如火如荼和他以后我让他爱上擦法师发誓法师方式分为樊梨花叫我覅把你肉巨擘I好吧', 'A00000', null, '2018-11-06 19:06:53', '2018-11-07 09:39:55', '1', null, null);
INSERT INTO `tbl_department` VALUES ('5', '研发一部', '029-123456', '哦in哦我发挥技术的风景开发商的健康的说法会计师是啥色', 'A00000', null, '2018-11-06 19:08:29', '2018-11-07 18:09:20', '1', null, null);
INSERT INTO `tbl_department` VALUES ('13', '管理部', '029-1234568', '管理公司所有事务', 'A00000', null, '2018-11-07 09:07:29', '2018-11-07 09:08:02', '1', null, null);
INSERT INTO `tbl_department` VALUES ('15', 'ssss', 'sss', 'ssssssssssssssssssssssssssssssssssssssssssssss', 'A00000', null, '2018-11-07 13:20:25', '2018-11-20 15:28:00', '1', null, null);
INSERT INTO `tbl_department` VALUES ('18', 'ccccc', 'cccccccccccccccc', 'ccccccccccccccccc', 'A00000', null, '2018-11-07 13:20:52', '2018-11-07 13:20:52', '1', null, null);
INSERT INTO `tbl_department` VALUES ('19', 'vvvvvvvvvvvvvvvvvv', 'vvvvvvvvvvvvvvvvvvvvv', 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvxxxx', 'A00000', null, '2018-11-07 13:20:59', '2018-11-08 08:41:16', '1', null, null);
INSERT INTO `tbl_department` VALUES ('20', 'qwe', 'qwe', 'qweqw', 'A00000', null, '2018-11-07 13:37:05', '2018-11-07 13:37:05', '1', null, null);
INSERT INTO `tbl_department` VALUES ('21', 'zzz', 'zz', 'zzzzzzzzzzzzzzz', 'A00000', null, '2018-11-08 08:39:40', '2018-11-08 08:39:40', '1', null, null);
INSERT INTO `tbl_department` VALUES ('22', 'xxxxxxx', 'xxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxx', 'A00000', null, '2018-11-08 08:39:48', '2018-11-08 08:39:48', '1', null, null);
INSERT INTO `tbl_department` VALUES ('23', 'xxxxxx', 'xxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxx', 'A00000', null, '2018-11-08 08:39:54', '2018-11-08 08:39:54', '1', null, null);
INSERT INTO `tbl_department` VALUES ('24', 'cccccccccccc', 'cccccccccccccccc', 'ccccc', 'A00000', null, '2018-11-08 08:39:59', '2018-11-08 08:39:59', '1', null, null);
INSERT INTO `tbl_department` VALUES ('25', '1', '111111111111', '1111111111111111111', 'A00000', null, '2018-11-08 08:40:08', '2018-11-08 08:40:08', '1', null, null);
INSERT INTO `tbl_department` VALUES ('26', '2222', '222222222222', '2222222222222222', 'A00000', null, '2018-11-08 08:40:13', '2018-11-08 08:40:13', '1', null, null);
INSERT INTO `tbl_department` VALUES ('27', '33', '33333333333', '333333333333333', 'A00000', null, '2018-11-08 08:40:18', '2018-11-08 08:40:18', '1', null, null);
INSERT INTO `tbl_department` VALUES ('28', '4444444444', '44444444444444', '4444444444444444444', 'A00000', null, '2018-11-08 08:40:23', '2018-11-08 08:40:23', '1', null, null);
INSERT INTO `tbl_department` VALUES ('29', '5', '5555555555', '55555555555', 'A00000', null, '2018-11-08 08:40:30', '2018-11-08 08:40:30', '1', null, null);
INSERT INTO `tbl_department` VALUES ('30', '777777', '777777777777', '77777777777777777', 'A00000', null, '2018-11-08 08:40:36', '2018-11-08 08:40:36', '1', null, null);
INSERT INTO `tbl_department` VALUES ('31', '1qaz2wsx', '123123', '1231111133333333333333333333333333333333333333333', 'A00000', null, '2018-11-08 08:41:30', '2018-11-08 08:41:30', '1', null, null);

-- ----------------------------
-- Table structure for tbl_employee
-- ----------------------------
DROP TABLE IF EXISTS `tbl_employee`;
CREATE TABLE `tbl_employee` (
  `id` varchar(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `salt` (`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_employee
-- ----------------------------
INSERT INTO `tbl_employee` VALUES ('A00000', '管理员', '452afe60336e2e084ab033ff8135026f', 'admin@email.exam.com', '12345678901', '8699ccb8ec5d22a2bd05167b0f325489');
INSERT INTO `tbl_employee` VALUES ('A00001', '普通管理员', '228df0697ca2818ab94dc41cbb3d2cdf', 'admin1@email.exam.com', '1', 'cc9f105acd95091f1b3732d3b04ef0a4');
INSERT INTO `tbl_employee` VALUES ('A00002', '张三', '896ea1475ca854eb9bbf0fe33af9bf90', 'ZhangSan@sina.com', '15200003698', '4b34515d933bc1f602cbd1304bdbf9ad');
INSERT INTO `tbl_employee` VALUES ('A00003', 'Lisi', '81614a14dd6665520ad236845ac59f05', 'lisi@sina.com', '15200003698', '993eeab756c228d9651c53e30f8266ee');
INSERT INTO `tbl_employee` VALUES ('A00004', 'test4', '4dbf1a2fc6ff9dc06458bebdac7c935b', 'test4@sina.com', '15200003698', '3e4e22faed4af15b1bdfc9ffa3047a76');
INSERT INTO `tbl_employee` VALUES ('A00005', 'test5', '3ccce092f126b2d4bd8575520a7f8ae5', 'test5@sina.com', '15200003698', 'ab26537a163d0ab35b779137f4287776');
INSERT INTO `tbl_employee` VALUES ('A00006', 'test6', '4bc0459b0d41465083519a4364821d17', 'test6@sina.com', '15200003698', '4b74f62eb27675361312bc1d004326f6');
INSERT INTO `tbl_employee` VALUES ('A00008', 'Admin', '70ee157568df00a46cb1b7ca8ef0e5f5', 'admin@email.exam.com', '15200003698', 'c1c9f71d972db8de9b01615db49c7978');
INSERT INTO `tbl_employee` VALUES ('A0012', '123456789012345', '35d8d5e5851cbd624db35b1b3c45545a', 'admin@email.exam.com', '15200003698', 'f92d4fea5695d51a06fd56af0221240b');
INSERT INTO `tbl_employee` VALUES ('test7', 'test7', '743d2064ef4d7438dbadbaa26a59f693', 'test7@sina.com', '15200003698', 'ff03009909b807126e5b6c52903264f2');
INSERT INTO `tbl_employee` VALUES ('test8', 'test8', '336a426dff65cb766c4a88245f86190c', 'test8@sina.com', '15200003698', '5b503f80d5cc45cf74ee4cda7dccbe6f');

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `id` varchar(32) NOT NULL COMMENT '菜单ID',
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `type` varchar(255) DEFAULT NULL COMMENT '菜单属性',
  `url` varchar(255) NOT NULL COMMENT '菜单URL',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父菜单ID',
  `permission` varchar(255) DEFAULT NULL COMMENT '权限',
  `rank` int(11) DEFAULT NULL COMMENT '序列',
  `menu_icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `remarks` varchar(1024) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除flag',
  `creator_id` varchar(255) NOT NULL COMMENT '创建者ID',
  `create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_id` varchar(255) DEFAULT NULL COMMENT '更新者ID',
  `update_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES ('1', '首页', null, 'home', null, null, '1', 'fa-home', null, '0', 'A00000', '2018-11-21 17:08:33', 'A00000', '2018-11-21 17:08:33');
INSERT INTO `tbl_menu` VALUES ('10', 'Buttons', null, '', '8', null, '5', null, null, '0', 'A00000', '2018-11-21 17:15:37', 'A00000', '2018-11-21 17:15:37');
INSERT INTO `tbl_menu` VALUES ('11', 'Notifications', null, '', '8', null, '5', null, null, '0', 'A00000', '2018-11-21 17:15:43', 'A00000', '2018-11-21 17:15:43');
INSERT INTO `tbl_menu` VALUES ('12', 'Typography', null, '', '8', null, '5', null, null, '0', 'A00000', '2018-11-21 17:15:49', 'A00000', '2018-11-21 17:15:49');
INSERT INTO `tbl_menu` VALUES ('13', 'Icons', null, '', '8', null, '5', null, null, '0', 'A00000', '2018-11-21 17:15:55', 'A00000', '2018-11-21 17:15:55');
INSERT INTO `tbl_menu` VALUES ('14', 'Grid', null, '', '8', null, '5', null, null, '0', 'A00000', '2018-11-21 17:15:59', 'A00000', '2018-11-21 17:15:59');
INSERT INTO `tbl_menu` VALUES ('15', 'Grid1', null, '', '14', null, '6', null, null, '0', '', '2018-11-18 17:25:33', null, '2018-11-18 17:25:33');
INSERT INTO `tbl_menu` VALUES ('2', '系统设置', null, '', null, null, '2', 'fa-cog', null, '0', 'A00000', '2018-11-21 17:09:16', 'A00000', '2018-11-21 17:09:16');
INSERT INTO `tbl_menu` VALUES ('3', '用户管理', null, 'sys/user', '2', null, '2', 'fa-group', null, '0', 'A00000', '2018-11-21 17:10:54', 'A00000', '2018-11-21 17:10:54');
INSERT INTO `tbl_menu` VALUES ('4', '部门管理', null, 'sys/showDepartments', '2', null, '2', 'fa-puzzle-piece', null, '0', 'A00000', '2018-11-21 17:11:56', 'A00000', '2018-11-21 17:11:56');
INSERT INTO `tbl_menu` VALUES ('5', '角色管理', null, 'sys/user', '2', null, '2', 'fa-amazon', null, '0', 'A00000', '2018-11-21 17:13:13', 'A00000', '2018-11-21 17:13:09');
INSERT INTO `tbl_menu` VALUES ('6', 'Tables', null, '', null, null, '3', 'fa-table', null, '0', 'A00000', '2018-11-21 17:13:58', 'A00000', '2018-11-21 17:13:58');
INSERT INTO `tbl_menu` VALUES ('7', 'Forms', null, '', null, null, '4', 'fa-edit', null, '0', 'A00000', '2018-11-21 17:14:11', 'A00000', '2018-11-21 17:14:11');
INSERT INTO `tbl_menu` VALUES ('8', 'UI Elements', null, '', null, null, '5', 'fa-wrench', null, '0', 'A00000', '2018-11-21 17:14:29', 'A00000', '2018-11-21 17:14:29');
INSERT INTO `tbl_menu` VALUES ('9', 'Panels and Wells', null, '', '8', null, '5', null, null, '0', 'A00000', '2018-11-21 17:15:31', 'A00000', '2018-11-21 17:15:31');
