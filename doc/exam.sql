-- ----------------------------
-- Table structure for tbl_department
-- ----------------------------
DROP TABLE IF EXISTS `tbl_department`;
CREATE TABLE `tbl_department` (
  `department_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `name` varchar(255) NOT NULL COMMENT '部门名称',
  `tel` varchar(255) NOT NULL COMMENT '部门电话',
  `remark` varchar(255) DEFAULT NULL COMMENT '部门备注',
  `creator_id` varchar(11) NOT NULL COMMENT '部门信息创建者编号',
  `updater_id` varchar(11) DEFAULT NULL COMMENT '数据更新者编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '部门信息更新时间',
  `update_datetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '数据更新时间',
  `del_flag` varchar(1) NOT NULL DEFAULT '0' COMMENT '部门有效标识',
  `extend_first` varchar(255) DEFAULT NULL COMMENT '扩展栏位01',
  `extend_second` varchar(255) DEFAULT NULL COMMENT '扩展栏位02',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_department
-- ----------------------------
INSERT INTO `tbl_department` VALUES ('1', '开发一部', '029-1111', '所有开发部', '0', '0', '2018-11-05 16:16:46', '2018-11-05 16:19:06', '1', null, null);
INSERT INTO `tbl_department` VALUES ('2', '开发二部', '029-111234', '所有开发部', '0', '0', '2018-11-05 16:56:33', '2018-11-07 08:53:04', '1', null, null);
INSERT INTO `tbl_department` VALUES ('3', '开发三部', '029-1113', '所有开发部门', '', null, null, null, '1', null, null);
INSERT INTO `tbl_department` VALUES ('4', '研发部', '029-1234', '就分开就是丢成为I为科技部skin啊看是否能加上部分开始的女空间是吧啊速度发谁的风格如火如荼和他以后我让他爱上擦法师发誓法师方式分为樊梨花叫我覅把你肉巨擘I好吧', 'A00000', null, '2018-11-06 19:06:53', '2018-11-07 09:39:55', '1', null, null);
INSERT INTO `tbl_department` VALUES ('5', '研发一部', '029-123456', '哦in哦我发挥技术的风景开发商的健康的说法会计师是啥色', 'A00000', null, '2018-11-06 19:08:29', '2018-11-07 18:09:20', '1', null, null);
INSERT INTO `tbl_department` VALUES ('6', '管理部', '029-1234568', '管理公司所有事务', 'A00000', null, '2018-11-07 09:07:29', '2018-11-07 09:08:02', '1', null, null);

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
  `dept_id` int(4) NOT NULL,
  `del_flag` char(1) NOT NULL DEFAULT '0',
  `creator_id` varchar(255) NOT NULL DEFAULT '',
  `create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater_id` varchar(255) DEFAULT NULL,
  `update_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `salt` (`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_employee
-- ----------------------------
INSERT INTO `tbl_employee` VALUES ('A00000', '管理员', '452afe60336e2e084ab033ff8135026f', 'admin@email.exam.com', '12345678901', '8699ccb8ec5d22a2bd05167b0f325489', '13', '1', 'A00000', '2018-12-29 11:01:31', 'A00000', '2018-12-29 11:01:31');
INSERT INTO `tbl_employee` VALUES ('A00001', '普通管理员', '228df0697ca2818ab94dc41cbb3d2cdf', 'admin1@email.exam.com', '1', 'cc9f105acd95091f1b3732d3b04ef0a4', '13', '1', 'A00000', '2018-12-29 11:01:31', 'A00000', '2018-12-29 11:01:31');
INSERT INTO `tbl_employee` VALUES ('A00002', '张三', '896ea1475ca854eb9bbf0fe33af9bf90', 'ZhangSan@sina.com', '15200003698', '4b34515d933bc1f602cbd1304bdbf9ad', '13', '1', 'A00000', '2018-12-29 11:01:31', 'A00000', '2018-12-29 11:01:31');
INSERT INTO `tbl_employee` VALUES ('B00001', '考生', 'ff9040b3e50a7d5b33888b82d60dc947', 'b00001@email.exam.com', '14785236901', '09e4f9696d8d22fed0d654be7a7d627f', '1', '1', 'A00000', '2018-12-29 11:01:31', 'A00000', '2018-12-29 11:01:31');

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `message_code` varchar(255) NOT NULL COMMENT '国际化MessageCode',
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `type` varchar(255) DEFAULT NULL COMMENT '菜单属性',
  `url` varchar(255) NOT NULL COMMENT '菜单URL',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父菜单ID',
  `is_show` char(1) NOT NULL DEFAULT '1' COMMENT '是否显示',
  `rank` int(11) DEFAULT NULL COMMENT '序列',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `remark` varchar(1024) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除flag',
  `creator_id` varchar(255) NOT NULL COMMENT '创建者ID',
  `create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_id` varchar(255) DEFAULT NULL COMMENT '更新者ID',
  `update_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES ('1', 'exam.system.home', '首页', null, 'home', null, '1', '1', 'fa-home', null, '0', 'A00000', '2018-11-21 17:08:33', 'A00000', '2018-11-21 17:08:33');
INSERT INTO `tbl_menu` VALUES ('2', 'exam.system.setting', '系统设置', null, '', null, '1', '2', 'fa-cog', null, '0', 'A00000', '2018-11-21 17:09:16', 'A00000', '2018-11-21 17:09:16');
INSERT INTO `tbl_menu` VALUES ('3', 'exam.system.user', '用户管理', '', '', '2', '1', '3', 'fa-group', '', '0', 'A00000', '2018-11-21 17:10:54', 'A00000', '2018-11-21 17:10:54');
INSERT INTO `tbl_menu` VALUES ('4', 'exam.system.department', '部门管理', '', 'sys/showDepartments', '2', '1', '4', 'fa-sitemap', '', '0', 'A00000', '2018-11-21 17:11:56', 'A00000', '2018-11-21 17:11:56');
INSERT INTO `tbl_menu` VALUES ('5', 'exam.system.role', '角色管理', null, 'sys/user', '2', '1', '5', 'fa-amazon', null, '0', 'A00000', '2018-11-21 17:13:13', 'A00000', '2018-11-21 17:13:09');
INSERT INTO `tbl_menu` VALUES ('6', 'exam.system.menu', '菜单管理', null, 'sys/menu/showMenu', '2', '1', '6', 'fa-navicon', null, '0', 'A00000', '2018-12-01 13:49:46', 'A00000', '2018-12-01 13:49:46');
INSERT INTO `tbl_menu` VALUES ('7', '', '数据库监控', '', 'druid', '2', '1', '7', 'fa-database', '', '0', 'A00000', '2018-12-02 17:39:00', 'A00000', '2018-12-02 17:39:00');
INSERT INTO `tbl_menu` VALUES ('8', '', '考试', '', '', '', '1', '8', 'fa-wpforms', '', '0', 'A00000', '2018-11-21 17:13:58', 'A00000', '2018-11-21 17:13:58');
INSERT INTO `tbl_menu` VALUES ('9', '', '试卷作成', '', 'exam/createExamPaper', '8', '1', '9', 'fa-file-text', '', '0', 'A00000', '2018-12-12 17:12:06', 'A00000', '2018-12-12 17:12:06');

-- ----------------------------
-- Table structure for tbl_permission
-- ----------------------------
DROP TABLE IF EXISTS `tbl_permission`;
CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `permission` varchar(255) NOT NULL COMMENT '权限名称',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `usable` char(1) NOT NULL DEFAULT '1' COMMENT '是否可用',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `creator_id` varchar(100) NOT NULL COMMENT '创建者ID',
  `create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `updater_id` varchar(100) DEFAULT NULL COMMENT '更新者ID',
  `updatedatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_permission
-- ----------------------------
INSERT INTO `tbl_permission` VALUES ('1', 'admin', '管理员', '1', '0', 'A00000', '2018-12-29 09:59:59', 'A00000', '2018-12-29 09:59:59');
INSERT INTO `tbl_permission` VALUES ('2', 'sys', '系统管理员', '1', '0', 'A00000', '2018-12-29 10:00:43', 'A00000', '2018-12-29 10:00:43');
INSERT INTO `tbl_permission` VALUES ('3', 'user:*', '用户所有权限', '1', '0', 'A00000', '2018-12-29 10:01:11', 'A00000', '2018-12-29 10:01:11');
INSERT INTO `tbl_permission` VALUES ('4', 'user:select', '用户查询权限', '1', '0', 'A00000', '2018-12-29 10:01:41', 'A00000', '2018-12-29 10:01:41');
INSERT INTO `tbl_permission` VALUES ('5', 'user:update', '用户更新权限', '1', '0', 'A00000', '2018-12-29 10:01:50', 'A00000', '2018-12-29 10:01:50');
INSERT INTO `tbl_permission` VALUES ('6', 'user:insert', '用户新增权限', '1', '0', 'A00000', '2018-12-29 10:02:01', 'A00000', '2018-12-29 10:02:01');
INSERT INTO `tbl_permission` VALUES ('7', 'user:delect', '用户删除权限', '1', '0', 'A00000', '2018-12-29 10:02:10', 'A00000', '2018-12-29 10:02:10');
INSERT INTO `tbl_permission` VALUES ('8', 'test', '测试权限', '1', '0', 'A00000', '2018-12-29 10:09:38', 'A00000', '2018-12-29 10:09:38');

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(255) NOT NULL COMMENT '角色名称',
  `code` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `is_sys` char(1) NOT NULL DEFAULT '1' COMMENT '是不是系统数据',
  `usable` char(1) NOT NULL DEFAULT '1' COMMENT '是否可用',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `creator_id` varchar(100) NOT NULL COMMENT '创建者ID',
  `create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `updater_id` varchar(100) DEFAULT NULL COMMENT '更新者ID',
  `update_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES ('1', '系统管理员', 'sys', '超级管理员', '1', '1', '0', 'A00000', '2018-12-17 19:24:22', 'A00000', '2018-12-17 19:24:22');
INSERT INTO `tbl_role` VALUES ('2', '普通用户', 'normal', '使用者', '1', '1', '0', 'A00000', '2018-12-17 19:25:25', 'A00000', '2018-12-17 19:25:25');
INSERT INTO `tbl_role` VALUES ('3', '用户管理员', 'admin', '用户组', '1', '1', '0', 'A00000', '2018-12-17 19:26:16', 'A00000', '2018-12-17 19:26:16');
INSERT INTO `tbl_role` VALUES ('4', '测试管理员', 'test', '测试组', '1', '1', '0', 'A00000', '2018-12-17 19:26:46', 'A00000', '2018-12-17 19:26:46');
INSERT INTO `tbl_role` VALUES ('5', '老师', 'teacher', '老师祖', '1', '1', '0', 'A00000', '2018-12-29 10:13:27', 'A00000', '2018-12-29 10:13:27');

-- ----------------------------
-- Table structure for tbl_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role_menu`;
CREATE TABLE `tbl_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `menu_role_fk` (`role_id`),
  KEY `menu_menu_fk` (`menu_id`),
  CONSTRAINT `menu_role_fk` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_role_menu
-- ----------------------------
INSERT INTO `tbl_role_menu` VALUES ('1', '1', '1');
INSERT INTO `tbl_role_menu` VALUES ('2', '1', '2');
INSERT INTO `tbl_role_menu` VALUES ('3', '1', '3');
INSERT INTO `tbl_role_menu` VALUES ('4', '1', '4');
INSERT INTO `tbl_role_menu` VALUES ('5', '1', '5');
INSERT INTO `tbl_role_menu` VALUES ('6', '1', '6');
INSERT INTO `tbl_role_menu` VALUES ('7', '1', '7');
INSERT INTO `tbl_role_menu` VALUES ('8', '1', '8');
INSERT INTO `tbl_role_menu` VALUES ('9', '1', '9');
INSERT INTO `tbl_role_menu` VALUES ('10', '5', '1');
INSERT INTO `tbl_role_menu` VALUES ('11', '5', '8');
INSERT INTO `tbl_role_menu` VALUES ('12', '5', '9');
INSERT INTO `tbl_role_menu` VALUES ('13', '3', '1');
INSERT INTO `tbl_role_menu` VALUES ('14', '3', '3');
INSERT INTO `tbl_role_menu` VALUES ('15', '3', '4');
INSERT INTO `tbl_role_menu` VALUES ('16', '3', '5');

-- ----------------------------
-- Table structure for tbl_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role_permission`;
CREATE TABLE `tbl_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `permission_id` int(11) NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`),
  KEY `role_permission_id` (`permission_id`),
  KEY `role_role_id` (`role_id`),
  CONSTRAINT `role_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `tbl_permission` (`id`),
  CONSTRAINT `role_role_id` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_role_permission
-- ----------------------------
INSERT INTO `tbl_role_permission` VALUES ('1', '1', '2');
INSERT INTO `tbl_role_permission` VALUES ('2', '3', '1');
INSERT INTO `tbl_role_permission` VALUES ('3', '5', '3');
INSERT INTO `tbl_role_permission` VALUES ('4', '2', '4');
INSERT INTO `tbl_role_permission` VALUES ('5', '2', '5');

-- ----------------------------
-- Table structure for tbl_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` varchar(6) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`),
  KEY `user_user_fk` (`user_id`),
  KEY `user_role` (`role_id`),
  CONSTRAINT `user_role` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`id`),
  CONSTRAINT `user_user_fk` FOREIGN KEY (`user_id`) REFERENCES `tbl_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO `tbl_user_role` VALUES ('1', 'A00000', '1');
INSERT INTO `tbl_user_role` VALUES ('2', 'A00001', '3');
INSERT INTO `tbl_user_role` VALUES ('3', 'A00002', '5');
INSERT INTO `tbl_user_role` VALUES ('4', 'B00001', '2');
