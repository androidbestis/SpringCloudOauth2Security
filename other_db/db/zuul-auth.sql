/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50628
Source Host           : localhost:3306
Source Database       : zuul-auth

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2017-12-29 14:44:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clientdetails
-- ----------------------------
DROP TABLE IF EXISTS `clientdetails`;
CREATE TABLE `clientdetails` (
  `appId` varchar(48) NOT NULL,
  `resourceIds` varchar(256) DEFAULT NULL,
  `appSecret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `grantTypes` varchar(256) DEFAULT NULL,
  `redirectUrl` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  `autoApproveScopes` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clientdetails
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(48) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_approvals
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_approvals
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(48) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('app', null, 'app', 'app', 'password,refresh_token', null, null, null, null, null, null);
INSERT INTO `oauth_client_details` VALUES ('webApp', null, 'webApp', 'app', 'authorization_code,password,refresh_token,client_credentials', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for oauth_client_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(48) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_code
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------
INSERT INTO `oauth_refresh_token` VALUES ('b96e057b4e1c4920428e833db48d4c15', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002462303132643438372D613930382D343361662D613865662D3533633533393963386264367372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001613B74C98E78, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000009770400000009737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F61646D696E7371007E000D740006617069646F637371007E000D74000C64617461626173652F6C6F677371007E000D74000673797374656D7371007E000D740008757365722F6164647371007E000D74000B757365722F64656C6574657371007E000D740009757365722F656469747371007E000D740009757365722F766965777371007E000D740008757365724C6973747871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0024787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00224C000573636F706571007E00247870740006776562417070737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00227870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000561646D696E78737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000174000361707078017371007E0033770C000000103F40000000000000787371007E002A3F40000000000000770800000010000000007870707371007E0033770C000000103F40000000000000787371007E0033770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000977040000000971007E000F71007E001171007E001371007E001571007E001771007E001971007E001B71007E001D71007E001F7871007E003D737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E002A3F400000000000067708000000080000000271007E002C71007E002D71007E002E71007E002F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00244C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0030737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000971007E000F71007E001171007E001371007E001571007E001771007E001971007E001B71007E001D71007E001F787074000561646D696E);

-- ----------------------------
-- Table structure for rc_menu
-- ----------------------------
DROP TABLE IF EXISTS `rc_menu`;
CREATE TABLE `rc_menu` (
  `id` varchar(64) NOT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '菜单编码',
  `p_code` varchar(255) DEFAULT NULL COMMENT '菜单父编码',
  `p_id` varchar(255) DEFAULT NULL COMMENT '父菜单ID',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `url` varchar(255) DEFAULT NULL COMMENT '请求地址',
  `is_menu` int(11) DEFAULT NULL COMMENT '是否是菜单',
  `level` int(11) DEFAULT NULL COMMENT '菜单层级',
  `sort` int(11) DEFAULT NULL COMMENT '菜单排序',
  `status` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `FK_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rc_menu
-- ----------------------------
INSERT INTO `rc_menu` VALUES ('000000000000000000', 'root', '0', '0', '系统根目录', '', '1', '0', '1', '1', null, '2017-08-03 18:31:54', null);
INSERT INTO `rc_menu` VALUES ('893287144657780736', 'system', 'root', '000000000000000000', '系统设置', 'system', '1', '1', '10', '1', '', '2017-08-04 09:47:06', null);
INSERT INTO `rc_menu` VALUES ('893288715881807872', 'userList', 'system', '893287144657780736', '用户管理', 'user/list', '1', '2', '1', '1', '', '2017-08-04 09:53:21', '2017-08-07 18:18:39');
INSERT INTO `rc_menu` VALUES ('893304960282787840', 'user/add', 'userList', '893288715881807872', '用户添加', 'user/add', '0', '3', '1', '1', '', '2017-08-04 10:57:54', '2017-08-08 11:02:55');
INSERT INTO `rc_menu` VALUES ('894396523532517376', 'user/edit', 'userList', '893288715881807872', '用户修改', 'user/edit', '0', '3', '1', '1', '', '2017-08-07 11:15:23', '2017-08-07 16:57:52');
INSERT INTO `rc_menu` VALUES ('894473486712438784', 'user/view', 'userList', '893288715881807872', '用户查看', 'user/View', '0', '3', '2', '1', '', '2017-08-07 16:21:12', null);
INSERT INTO `rc_menu` VALUES ('894473651837992960', 'user/delete', 'userList', '893288715881807872', '用户删除', 'user/delete', '0', '3', '4', '1', '', '2017-08-07 16:21:52', null);
INSERT INTO `rc_menu` VALUES ('894475142061621248', 'roleList', 'system', '893287144657780736', '角色管理', 'role/list', '1', '2', '2', '1', '', '2017-08-07 16:27:47', '2017-08-08 10:34:56');
INSERT INTO `rc_menu` VALUES ('894475827880656896', 'role/add', 'roleList', '894475142061621248', '角色添加', 'role/add', '0', '3', '1', '1', '', '2017-08-07 16:30:31', null);
INSERT INTO `rc_menu` VALUES ('894475985452269568', 'role/edit', 'roleList', '894475142061621248', '角色编辑', 'role/edit', '0', '3', '2', '1', '', '2017-08-07 16:31:08', null);
INSERT INTO `rc_menu` VALUES ('894476118730473472', 'role/delete', 'roleList', '894475142061621248', '角色删除', 'role/delete', '0', '3', '2', '1', '', '2017-08-07 16:31:40', '2017-08-07 16:37:24');
INSERT INTO `rc_menu` VALUES ('894476276402749440', 'role/permission', 'roleList', '894475142061621248', '角色配权', 'role/permission', '0', '3', '3', '1', '', '2017-08-07 16:32:18', null);
INSERT INTO `rc_menu` VALUES ('894476950951690240', 'menu/list', 'system', '893287144657780736', '菜单管理', 'menu/list', '1', '2', '2', '1', '', '2017-08-07 16:34:58', null);
INSERT INTO `rc_menu` VALUES ('894477107919323136', 'menu/add', 'menu/list', '894476950951690240', '菜单添加', 'menu/add', '0', '3', '1', '1', '', '2017-08-07 16:35:36', null);
INSERT INTO `rc_menu` VALUES ('894477244926263296', 'menu/edit', 'menu/list', '894476950951690240', '菜单编辑', 'menu/edit', '0', '3', '2', '1', '', '2017-08-07 16:36:08', null);
INSERT INTO `rc_menu` VALUES ('894477420512411648', 'menu/delete', 'menu/list', '894476950951690240', '菜单删除', 'menu/delete', '0', '3', '2', '1', '', '2017-08-07 16:36:50', null);
INSERT INTO `rc_menu` VALUES ('894477851082883072', 'apidoc', 'system', '893287144657780736', 'Api文档', 'swagger-ui.html', '1', '2', '9', '1', '', '2017-08-07 16:38:33', '2017-09-13 11:20:26');
INSERT INTO `rc_menu` VALUES ('894477995903811584', 'database/log', 'system', '893287144657780736', '数据库日志', 'druid', '1', '2', '10', '1', '', '2017-08-07 16:39:07', '2017-08-08 09:56:29');
INSERT INTO `rc_menu` VALUES ('894752734459199488', 'companyList', 'root', '000000000000000000', '公司管理', 'companyList', '1', '1', '1', '1', '', '2017-08-08 10:50:50', null);
INSERT INTO `rc_menu` VALUES ('903459378655395840', '/user/modify', 'userList', '893288715881807872', '密码重置', '/user/modify', '1', '3', '2', '1', '', '2017-09-01 11:27:56', null);

-- ----------------------------
-- Table structure for rc_privilege
-- ----------------------------
DROP TABLE IF EXISTS `rc_privilege`;
CREATE TABLE `rc_privilege` (
  `role_id` int(11) NOT NULL,
  `menu_id` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rc_privilege
-- ----------------------------
INSERT INTO `rc_privilege` VALUES ('6', '893287144657780736', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES ('6', '893288715881807872', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES ('6', '893304960282787840', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES ('6', '894396523532517376', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES ('6', '894473486712438784', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES ('6', '894473651837992960', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES ('6', '894477851082883072', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES ('6', '894477995903811584', '2017-08-08 11:31:39');
INSERT INTO `rc_privilege` VALUES ('8', '893287144657780736', '2017-08-08 11:56:44');
INSERT INTO `rc_privilege` VALUES ('8', '893288715881807872', '2017-08-08 11:56:44');
INSERT INTO `rc_privilege` VALUES ('8', '893304960282787840', '2017-08-08 11:56:44');
INSERT INTO `rc_privilege` VALUES ('8', '894396523532517376', '2017-08-08 11:56:44');
INSERT INTO `rc_privilege` VALUES ('8', '894473486712438784', '2017-08-08 11:56:44');
INSERT INTO `rc_privilege` VALUES ('8', '894473651837992960', '2017-08-08 11:56:44');
INSERT INTO `rc_privilege` VALUES ('8', '894475142061621248', '2017-08-08 11:56:44');
INSERT INTO `rc_privilege` VALUES ('8', '894475827880656896', '2017-08-08 11:56:44');
INSERT INTO `rc_privilege` VALUES ('8', '894475985452269568', '2017-08-08 11:56:44');
INSERT INTO `rc_privilege` VALUES ('8', '894476118730473472', '2017-08-08 11:56:45');
INSERT INTO `rc_privilege` VALUES ('8', '894476276402749440', '2017-08-08 11:56:45');
INSERT INTO `rc_privilege` VALUES ('8', '894476950951690240', '2017-08-08 11:56:45');
INSERT INTO `rc_privilege` VALUES ('8', '894477107919323136', '2017-08-08 11:56:45');
INSERT INTO `rc_privilege` VALUES ('8', '894477244926263296', '2017-08-08 11:56:45');
INSERT INTO `rc_privilege` VALUES ('8', '894477420512411648', '2017-08-08 11:56:45');
INSERT INTO `rc_privilege` VALUES ('8', '894477851082883072', '2017-08-08 11:56:45');
INSERT INTO `rc_privilege` VALUES ('8', '894477995903811584', '2017-08-08 11:56:45');
INSERT INTO `rc_privilege` VALUES ('8', '894752734459199488', '2017-08-08 11:56:45');
INSERT INTO `rc_privilege` VALUES ('8', '894769217763540992', '2017-08-08 11:56:45');
INSERT INTO `rc_privilege` VALUES ('17', '893287144657780736', '2017-09-14 18:40:48');
INSERT INTO `rc_privilege` VALUES ('17', '894477851082883072', '2017-09-14 18:40:51');
INSERT INTO `rc_privilege` VALUES ('17', '894477995903811584', '2017-09-14 18:40:53');
INSERT INTO `rc_privilege` VALUES ('17', '894752734459199488', '2017-09-14 18:40:54');

-- ----------------------------
-- Table structure for rc_role
-- ----------------------------
DROP TABLE IF EXISTS `rc_role`;
CREATE TABLE `rc_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_role_name` (`name`),
  UNIQUE KEY `unique_role_value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rc_role
-- ----------------------------
INSERT INTO `rc_role` VALUES ('6', '管理员', 'admin', null, '2017-06-20 15:07:13', '2017-06-26 12:46:09', '1');
INSERT INTO `rc_role` VALUES ('8', '超级管理员', 'super', null, '2017-06-20 15:08:45', null, '1');
INSERT INTO `rc_role` VALUES ('17', '用户', 'user', null, '2017-06-28 18:50:39', '2017-07-21 09:41:28', '1');

-- ----------------------------
-- Table structure for rc_user
-- ----------------------------
DROP TABLE IF EXISTS `rc_user`;
CREATE TABLE `rc_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(96) DEFAULT NULL,
  `salt` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rc_user          注意：密码是加密的：原始密码为: 123456
-- ----------------------------
INSERT INTO `rc_user` VALUES ('46', null, 'super', '$2a$10$cKRbR9IJktfmKmf/wShyo.5.J8IxO/7YVn8twuWFtvPgruAF8gtKq', null, '超级管理员', '2017-06-22 14:26:09', '1', null, null, '1', '2017-06-20 15:12:16', '2017-09-12 14:39:48');
INSERT INTO `rc_user` VALUES ('48', null, 'admin', '$2a$10$cKRbR9IJktfmKmf/wShyo.5.J8IxO/7YVn8twuWFtvPgruAF8gtKq', null, '管理员', null, '1', null, null, '1', '2017-06-26 17:31:41', null);
INSERT INTO `rc_user` VALUES ('49', null, 'yangxiufeng', '$2a$10$cKRbR9IJktfmKmf/wShyo.5.J8IxO/7YVn8twuWFtvPgruAF8gtKq', null, '秀秀1', null, '1', null, null, '1', '2017-08-30 10:34:59', '2017-09-18 16:10:22');
INSERT INTO `rc_user` VALUES ('50', null, 'test1', '$2a$10$cKRbR9IJktfmKmf/wShyo.5.J8IxO/7YVn8twuWFtvPgruAF8gtKq', null, 'test1', null, '1', null, null, '1', '2017-09-18 16:11:15', null);
INSERT INTO `rc_user` VALUES ('51', null, 'test2', '$2a$10$cKRbR9IJktfmKmf/wShyo.5.J8IxO/7YVn8twuWFtvPgruAF8gtKq', null, 'test2', null, '1', null, null, '1', '2017-09-21 17:09:51', null);

-- ----------------------------
-- Table structure for rc_user_role
-- ----------------------------
DROP TABLE IF EXISTS `rc_user_role`;
CREATE TABLE `rc_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rc_user_role
-- ----------------------------
INSERT INTO `rc_user_role` VALUES ('1', '46', '8', '2017-09-11 13:02:45', null);
INSERT INTO `rc_user_role` VALUES ('2', '48', '6', '2017-09-11 13:02:56', null);
INSERT INTO `rc_user_role` VALUES ('3', '49', '17', '2017-09-11 13:03:12', null);
INSERT INTO `rc_user_role` VALUES ('19', '50', '6', '2017-09-12 14:20:20', '超级管理员');
INSERT INTO `rc_user_role` VALUES ('20', '50', '17', '2017-09-12 14:20:20', '超级管理员');
INSERT INTO `rc_user_role` VALUES ('22', '57', '8', '2017-09-18 16:34:58', '超级管理员');
INSERT INTO `rc_user_role` VALUES ('23', '57', '17', '2017-09-18 16:34:58', '超级管理员');
