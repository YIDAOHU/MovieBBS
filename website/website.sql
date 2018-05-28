/*
 Navicat MySQL Data Transfer

 Source Server         : Alyun
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 118.190.159.52:3306
 Source Schema         : website

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 28/05/2018 16:32:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add group', 2, 'add_group');
INSERT INTO `auth_permission` VALUES (6, 'Can change group', 2, 'change_group');
INSERT INTO `auth_permission` VALUES (7, 'Can delete group', 2, 'delete_group');
INSERT INTO `auth_permission` VALUES (8, 'Can add permission', 3, 'add_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can change permission', 3, 'change_permission');
INSERT INTO `auth_permission` VALUES (10, 'Can delete permission', 3, 'delete_permission');
INSERT INTO `auth_permission` VALUES (11, 'Can view group', 2, 'view_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view permission', 3, 'view_permission');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add Bookmark', 6, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (22, 'Can change Bookmark', 6, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (23, 'Can delete Bookmark', 6, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (24, 'Can add User Setting', 7, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (25, 'Can change User Setting', 7, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (26, 'Can delete User Setting', 7, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (27, 'Can add log entry', 8, 'add_log');
INSERT INTO `auth_permission` VALUES (28, 'Can change log entry', 8, 'change_log');
INSERT INTO `auth_permission` VALUES (29, 'Can delete log entry', 8, 'delete_log');
INSERT INTO `auth_permission` VALUES (30, 'Can add User Widget', 9, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (31, 'Can change User Widget', 9, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (32, 'Can delete User Widget', 9, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (33, 'Can view Bookmark', 6, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (34, 'Can view log entry', 8, 'view_log');
INSERT INTO `auth_permission` VALUES (35, 'Can view User Setting', 7, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (36, 'Can view User Widget', 9, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (37, 'Can add captcha store', 10, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (38, 'Can change captcha store', 10, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (39, 'Can delete captcha store', 10, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (40, 'Can view captcha store', 10, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (41, 'Can add 用户信息', 11, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (42, 'Can change 用户信息', 11, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 用户信息', 11, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (44, 'Can add 评论', 12, 'add_comment');
INSERT INTO `auth_permission` VALUES (45, 'Can change 评论', 12, 'change_comment');
INSERT INTO `auth_permission` VALUES (46, 'Can delete 评论', 12, 'delete_comment');
INSERT INTO `auth_permission` VALUES (47, 'Can add 帖子', 13, 'add_post');
INSERT INTO `auth_permission` VALUES (48, 'Can change 帖子', 13, 'change_post');
INSERT INTO `auth_permission` VALUES (49, 'Can delete 帖子', 13, 'delete_post');
INSERT INTO `auth_permission` VALUES (50, 'Can add 板块', 14, 'add_board');
INSERT INTO `auth_permission` VALUES (51, 'Can change 板块', 14, 'change_board');
INSERT INTO `auth_permission` VALUES (52, 'Can delete 板块', 14, 'delete_board');
INSERT INTO `auth_permission` VALUES (53, 'Can add 轮播图', 15, 'add_banner');
INSERT INTO `auth_permission` VALUES (54, 'Can change 轮播图', 15, 'change_banner');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 轮播图', 15, 'delete_banner');
INSERT INTO `auth_permission` VALUES (56, 'Can add 邮箱验证码', 16, 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (57, 'Can change 邮箱验证码', 16, 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (58, 'Can delete 邮箱验证码', 16, 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (59, 'Can view 轮播图', 15, 'view_banner');
INSERT INTO `auth_permission` VALUES (60, 'Can view 板块', 14, 'view_board');
INSERT INTO `auth_permission` VALUES (61, 'Can view 评论', 12, 'view_comment');
INSERT INTO `auth_permission` VALUES (62, 'Can view 邮箱验证码', 16, 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES (63, 'Can view 帖子', 13, 'view_post');
INSERT INTO `auth_permission` VALUES (64, 'Can view 用户信息', 11, 'view_userprofile');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (1, 'LPMA', 'lpma', '0e5605ceac1e7dcd12dafff06e01146d556c54c5', '2018-05-15 22:38:14.379732');
INSERT INTO `captcha_captchastore` VALUES (2, 'HMPX', 'hmpx', 'c7a9ca545d30f9a2d37466d7d380a7a12ffebd08', '2018-05-15 22:45:41.982131');
INSERT INTO `captcha_captchastore` VALUES (3, 'IZPJ', 'izpj', 'e49924b480be910c5fcc8a389ad78085669dac42', '2018-05-15 22:45:54.851366');
INSERT INTO `captcha_captchastore` VALUES (4, 'GMTS', 'gmts', '4f90a0e9fd96b90f6740c7d062a8774b27c3fb1e', '2018-05-15 22:46:46.547992');
INSERT INTO `captcha_captchastore` VALUES (5, 'GCCH', 'gcch', '12eab8df8b08d1f1bbbfea5caca582f9a418f80a', '2018-05-15 22:51:56.050649');
INSERT INTO `captcha_captchastore` VALUES (6, 'OZOS', 'ozos', '45c0480e35fbbf0703246c9b47c49005afbeac59', '2018-05-15 22:53:48.251969');
INSERT INTO `captcha_captchastore` VALUES (7, 'BATO', 'bato', 'bd95fe007ace4f0057594debca3257420eed75e0', '2018-05-15 22:54:04.604709');
INSERT INTO `captcha_captchastore` VALUES (8, 'LBQO', 'lbqo', '8c20d699c37221bdbe8736268e857ebfe51befbd', '2018-05-15 22:57:34.559257');
INSERT INTO `captcha_captchastore` VALUES (9, 'ZRLV', 'zrlv', '7abce518a29b51ddb361f5dde5bcc743934b8051', '2018-05-15 22:59:17.046464');
INSERT INTO `captcha_captchastore` VALUES (10, 'RXJP', 'rxjp', 'ab6323b0cb28ebad1350faf8d2ca65dff7773dd2', '2018-05-15 23:02:31.738483');
INSERT INTO `captcha_captchastore` VALUES (11, 'XMXA', 'xmxa', '687a94ba2282120de4f2e8a7e4ea16c020fb282f', '2018-05-15 23:04:17.639810');
INSERT INTO `captcha_captchastore` VALUES (12, 'JHGH', 'jhgh', 'b71efbd1d1d630b598cb9053d2d29e5279d3f3f3', '2018-05-15 23:09:50.417574');
INSERT INTO `captcha_captchastore` VALUES (13, 'FUWG', 'fuwg', '82b8535bc1421cd73bd2ed230de0751c3dcdc39b', '2018-05-15 23:09:55.336174');
INSERT INTO `captcha_captchastore` VALUES (14, 'RHGR', 'rhgr', '3e648b319fdef696101667907f724abe19e3098b', '2018-05-15 23:09:56.132880');
INSERT INTO `captcha_captchastore` VALUES (15, 'GHTP', 'ghtp', 'e1c32e1c6c066a2e0d9babb7a3c88067075e9473', '2018-05-16 11:15:04.426338');
INSERT INTO `captcha_captchastore` VALUES (16, 'VSDI', 'vsdi', 'c2a88298f2e3a519aa8115bc476863e01088fa9f', '2018-05-16 11:17:01.052959');
INSERT INTO `captcha_captchastore` VALUES (17, 'ZELF', 'zelf', '5c6412178f51ff628f948a15d8877e3d54b0da21', '2018-05-16 11:17:02.976966');
INSERT INTO `captcha_captchastore` VALUES (18, 'FEYK', 'feyk', 'e3de111a6b3615ea3684aab90a49b304b8369b61', '2018-05-16 11:17:44.875184');
INSERT INTO `captcha_captchastore` VALUES (19, 'XJGB', 'xjgb', 'ee71303707766518ce62547970286850adfe1086', '2018-05-16 11:18:34.088514');
INSERT INTO `captcha_captchastore` VALUES (20, 'QQOT', 'qqot', '28d3c1c4718de43af0e05fbdd276de908d4bdfd8', '2018-05-16 11:27:49.052435');
INSERT INTO `captcha_captchastore` VALUES (21, 'KDSC', 'kdsc', '293473fcdc56862038d1df18f9cb4f80f1d11398', '2018-05-16 11:28:03.596121');
INSERT INTO `captcha_captchastore` VALUES (22, 'XLMT', 'xlmt', 'b9db0a678fe756df18fe3b0a2b69e6108e0f94c2', '2018-05-16 11:29:12.621431');
INSERT INTO `captcha_captchastore` VALUES (23, 'AEDP', 'aedp', '820d745028eed3cde600bd3b95739e10245b84b9', '2018-05-16 11:29:15.883547');
INSERT INTO `captcha_captchastore` VALUES (24, 'YPGL', 'ypgl', 'd6bb5016a38280b635c2732231f5ae9d15a45b8f', '2018-05-16 11:37:22.095577');
INSERT INTO `captcha_captchastore` VALUES (25, 'LRYH', 'lryh', 'ede65afabd5afa1f0b8941c19f9cfe1fccd49f8e', '2018-05-16 11:37:24.077940');
INSERT INTO `captcha_captchastore` VALUES (26, 'LOFG', 'lofg', '4a438e0fd55a79979aa5ea7085628d3fb2c97be0', '2018-05-16 11:37:27.817149');
INSERT INTO `captcha_captchastore` VALUES (27, 'TFBH', 'tfbh', 'd7b5fa4b8145dd928ecc0f30bf39213e1c253968', '2018-05-16 11:38:31.290895');
INSERT INTO `captcha_captchastore` VALUES (28, 'JOEE', 'joee', 'ef8e9304888e0fb0f6dd61d0436f4ebc19dd4feb', '2018-05-16 14:04:16.931371');
INSERT INTO `captcha_captchastore` VALUES (29, 'IMLL', 'imll', 'a064f053a0fa79bc6232372653cee7e1157d509c', '2018-05-16 14:04:35.485357');
INSERT INTO `captcha_captchastore` VALUES (30, 'AQPG', 'aqpg', '6cdd73fe500a256324b1148a272614dc47ca8646', '2018-05-16 14:05:31.022802');
INSERT INTO `captcha_captchastore` VALUES (31, 'RQDB', 'rqdb', '924770030ab5e63ca651fe6f2b36dc695ec94d24', '2018-05-16 14:05:53.318432');
INSERT INTO `captcha_captchastore` VALUES (32, 'MSEB', 'mseb', 'e86c70e95455385afddb8100b16c9a270d5c30d9', '2018-05-16 14:06:23.832348');
INSERT INTO `captcha_captchastore` VALUES (33, 'RPSB', 'rpsb', 'fc746cf348e1cec4d3d48f7b277a823e7882c046', '2018-05-16 15:58:20.277007');
INSERT INTO `captcha_captchastore` VALUES (34, 'EMFE', 'emfe', '9063f42b20c390f39fb456c8afe7f0d550aecd25', '2018-05-16 16:09:01.480949');
INSERT INTO `captcha_captchastore` VALUES (35, 'EZOL', 'ezol', '2d9525d85b631e41b324bfbdb78b61503385c36e', '2018-05-16 16:23:21.788975');
INSERT INTO `captcha_captchastore` VALUES (36, 'GIFN', 'gifn', '3224111c658d8353bf3939dc59045e8ad277b64d', '2018-05-16 16:30:54.873445');
INSERT INTO `captcha_captchastore` VALUES (37, 'QRMB', 'qrmb', 'a0757fb097309946188175f64ec3f507036c2b3c', '2018-05-16 16:31:11.296955');
INSERT INTO `captcha_captchastore` VALUES (38, 'BCBI', 'bcbi', 'ae8a2f6bb163d439967c4cb6bb0b30dfeaf29c64', '2018-05-16 16:31:44.446556');
INSERT INTO `captcha_captchastore` VALUES (39, 'NYFI', 'nyfi', '4a4993c3fd9b7b418a85de21fda5fe0844b6c576', '2018-05-16 16:33:23.757546');
INSERT INTO `captcha_captchastore` VALUES (40, 'HJGN', 'hjgn', '6db843ff38f1dccd7fc4e37b9e677afb47e0fc5f', '2018-05-16 16:33:51.464993');
INSERT INTO `captcha_captchastore` VALUES (41, 'DXGF', 'dxgf', 'fa4415699573fb87b99e1360f29666309ef25348', '2018-05-16 16:33:56.362037');
INSERT INTO `captcha_captchastore` VALUES (42, 'CBGP', 'cbgp', 'a50fff3d5d2635ca7b3a728b9c984b1f75dce0fe', '2018-05-16 16:34:00.610196');
INSERT INTO `captcha_captchastore` VALUES (43, 'FWZE', 'fwze', '1cf2f7ef2473da2abe83a8c5186793694b406f7c', '2018-05-16 16:35:31.998827');
INSERT INTO `captcha_captchastore` VALUES (44, 'MNAH', 'mnah', '627cb19aa76b247935b2cdb6e35c807ec0f3f7b9', '2018-05-16 16:35:52.492475');
INSERT INTO `captcha_captchastore` VALUES (45, 'OPTA', 'opta', '39958967c82d41b02c277992cd431b5c151c41f4', '2018-05-16 16:36:19.144335');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (10, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (15, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (14, 'users', 'board');
INSERT INTO `django_content_type` VALUES (12, 'users', 'comment');
INSERT INTO `django_content_type` VALUES (16, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (13, 'users', 'post');
INSERT INTO `django_content_type` VALUES (11, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (6, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (8, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (7, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (9, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-05-15 11:40:40.769524');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2018-05-15 11:40:40.802570');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2018-05-15 11:40:40.927548');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2018-05-15 11:40:40.953530');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2018-05-15 11:40:40.978567');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2018-05-15 11:40:41.010734');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2018-05-15 11:40:41.038073');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2018-05-15 11:40:41.045013');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2018-05-15 11:40:41.071786');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2018-05-15 11:40:41.090153');
INSERT INTO `django_migrations` VALUES (11, 'users', '0001_initial', '2018-05-15 11:40:41.406852');
INSERT INTO `django_migrations` VALUES (12, 'admin', '0001_initial', '2018-05-15 11:40:41.451422');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0002_logentry_remove_auto_add', '2018-05-15 11:40:41.463733');
INSERT INTO `django_migrations` VALUES (14, 'captcha', '0001_initial', '2018-05-15 11:40:41.474628');
INSERT INTO `django_migrations` VALUES (15, 'sessions', '0001_initial', '2018-05-15 11:40:41.488066');
INSERT INTO `django_migrations` VALUES (16, 'xadmin', '0001_initial', '2018-05-15 11:40:41.667231');
INSERT INTO `django_migrations` VALUES (17, 'xadmin', '0002_log', '2018-05-15 11:40:41.724479');
INSERT INTO `django_migrations` VALUES (18, 'xadmin', '0003_auto_20160715_0100', '2018-05-15 11:40:41.750945');
INSERT INTO `django_migrations` VALUES (19, 'users', '0002_post_is_essence', '2018-05-15 16:09:51.871391');
INSERT INTO `django_migrations` VALUES (20, 'users', '0003_remove_banner_url', '2018-05-16 16:46:00.565902');
INSERT INTO `django_migrations` VALUES (21, 'users', '0004_banner_tie', '2018-05-16 17:11:32.498735');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('6w2busf1f34g7r0wprq2yyj8yvb5gmr8', 'NWExZGFhYTkwZGE2ZDRlYTA4Zjg3MzNkMDM3NzFlNGI4NWM5ZTYwZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdLCJuYXZfbWVudSI6Ilt7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy91c2VycHJvZmlsZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcIm9yZGVyXCI6IDMsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvZW1haWx2ZXJpZnlyZWNvcmQvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDcsIFwidGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA4LCBcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU1NmZlXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2JvYXJkL1wiLCBcImljb25cIjogbnVsbCwgXCJvcmRlclwiOiA5LCBcInRpdGxlXCI6IFwiXHU2NzdmXHU1NzU3XCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3Bvc3QvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDEwLCBcInRpdGxlXCI6IFwiXHU1ZTE2XHU1YjUwXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL2NvbW1lbnQvXCIsIFwiaWNvblwiOiBudWxsLCBcIm9yZGVyXCI6IDExLCBcInRpdGxlXCI6IFwiXHU4YmM0XHU4YmJhXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtdXNlclwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vdXNlcnMvY29tbWVudC9cIiwgXCJ0aXRsZVwiOiBcIlVzZXJzXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcImljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJvcmRlclwiOiA2LCBcInRpdGxlXCI6IFwiXHU2NWU1XHU1ZmQ3XHU4YmIwXHU1ZjU1XCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtY29nXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi94YWRtaW4vbG9nL1wiLCBcInRpdGxlXCI6IFwiXHU3YmExXHU3NDA2XCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcImljb25cIjogXCJmYSBmYS1ncm91cFwiLCBcIm9yZGVyXCI6IDIsIFwidGl0bGVcIjogXCJcdTdlYzRcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcImljb25cIjogXCJmYSBmYS1sb2NrXCIsIFwib3JkZXJcIjogNCwgXCJ0aXRsZVwiOiBcIlx1Njc0M1x1OTY1MFwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9hdXRoL2dyb3VwL1wiLCBcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCJ9XSIsIl9hdXRoX3VzZXJfaGFzaCI6IjQyMjQ2YTc3MTRiNjVhMzU0YTAwNWRkZmQxZWE5ZGNlYzE5ZjZiNDAiLCJfYXV0aF91c2VyX2lkIjoiMSJ9', '2018-06-04 20:29:56.996017');
INSERT INTO `django_session` VALUES ('zj6ab988vb09mvue16sy4h8vzep3b1fv', 'Y2QzYzRmNGQ0MTNiZDVmN2YxZDA0NDRhYThiNDA2MTcyZjI0ZDRkZDp7IkxJU1RfUVVFUlkiOltbInVzZXJzIiwidXNlcnByb2ZpbGUiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjQyMjQ2YTc3MTRiNjVhMzU0YTAwNWRkZmQxZWE5ZGNlYzE5ZjZiNDAiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==', '2018-05-30 18:14:26.440759');

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `index` int(11) NULL DEFAULT NULL,
  `add_time` datetime(0) NULL DEFAULT NULL,
  `tie_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `users_banner_tie_id_10388bdc_fk_users_post_id`(`tie_id`) USING BTREE,
  CONSTRAINT `users_banner_tie_id_10388bdc_fk_users_post_id` FOREIGN KEY (`tie_id`) REFERENCES `users_post` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES (1, 'The Avengers', 'banner/2018/05/banner07_6jfeGNT.jpg', 1, '2018-05-16 17:14:00', 33);
INSERT INTO `users_banner` VALUES (2, '星际穿越', 'banner/2018/05/banner08_67JowN9.jpg', 100, '2018-05-16 17:24:00', 31);
INSERT INTO `users_banner` VALUES (3, '盗梦空间', 'banner/2018/05/banner09_HhHtYLh.jpg', 100, '2018-05-16 17:25:00', 32);

-- ----------------------------
-- Table structure for users_board
-- ----------------------------
DROP TABLE IF EXISTS `users_board`;
CREATE TABLE `users_board`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_board
-- ----------------------------
INSERT INTO `users_board` VALUES (1, '国产剧', '2018-05-15 11:43:00.000000');
INSERT INTO `users_board` VALUES (2, '国语电影', '2018-05-15 11:43:00.000000');
INSERT INTO `users_board` VALUES (3, '漫威', '2018-05-15 11:43:00.000000');
INSERT INTO `users_board` VALUES (4, '美剧', '2018-05-15 11:43:00.000000');
INSERT INTO `users_board` VALUES (5, '香港电影', '2018-05-15 11:43:00.000000');
INSERT INTO `users_board` VALUES (6, '欧美电影', '2018-05-15 11:44:00.000000');

-- ----------------------------
-- Table structure for users_comment
-- ----------------------------
DROP TABLE IF EXISTS `users_comment`;
CREATE TABLE `users_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `users_comment_author_id_daafd36a_fk_users_userprofile_id`(`author_id`) USING BTREE,
  INDEX `users_comment_post_id_fb15d6ef_fk_users_post_id`(`post_id`) USING BTREE,
  CONSTRAINT `users_comment_author_id_daafd36a_fk_users_userprofile_id` FOREIGN KEY (`author_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_comment_post_id_fb15d6ef_fk_users_post_id` FOREIGN KEY (`post_id`) REFERENCES `users_post` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_comment
-- ----------------------------
INSERT INTO `users_comment` VALUES (4, '<p><span style=\"color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">看完这部电影我感觉</span></p>', '2018-05-16 12:39:51.880815', 1, 30);
INSERT INTO `users_comment` VALUES (5, '<p><span style=\"color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">看完这部电影我感觉</span></p>', '2018-05-16 12:40:31.838477', 1, 30);
INSERT INTO `users_comment` VALUES (6, '<p><span style=\"color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">看完这部电影我<span style=\"color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">感觉</span></span></p>', '2018-05-16 12:45:56.975097', 1, 30);
INSERT INTO `users_comment` VALUES (7, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">这种耻辱将长留人间</span></p>', '2018-05-16 15:32:26.942142', 1, 29);

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES (1, 'qjSf', '1954691462@qq.com', 'update_email', '2018-05-16 14:53:49.795301');
INSERT INTO `users_emailverifyrecord` VALUES (2, 'TTdx', '1954691462@qq.com', 'update_email', '2018-05-16 14:57:09.686198');
INSERT INTO `users_emailverifyrecord` VALUES (3, 'v8KL', '1954691462@qq.com', 'update_email', '2018-05-16 14:57:56.505085');
INSERT INTO `users_emailverifyrecord` VALUES (4, '2cGb', '1954691462@qq.com', 'update_email', '2018-05-16 18:15:25.828211');

-- ----------------------------
-- Table structure for users_post
-- ----------------------------
DROP TABLE IF EXISTS `users_post`;
CREATE TABLE `users_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_num` int(11) NOT NULL,
  `read_num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `is_essence` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `users_post_author_id_5106b896_fk_users_userprofile_id`(`author_id`) USING BTREE,
  INDEX `users_post_board_id_40fa857a_fk_users_board_id`(`board_id`) USING BTREE,
  CONSTRAINT `users_post_author_id_5106b896_fk_users_userprofile_id` FOREIGN KEY (`author_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_post_board_id_40fa857a_fk_users_board_id` FOREIGN KEY (`board_id`) REFERENCES `users_board` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_post
-- ----------------------------
INSERT INTO `users_post` VALUES (13, '复仇者联盟3', '<p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">《复联3》一上映，全国漫威粉哭倒一片，上微博、朋友圈转一圈，简直是大型的哭丧现场。</p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">结局这么惨，《复仇者联盟4》的故事要怎么继续？要怎么圆回来？</p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">这是我们最想知道的事情，恨不能穿越时空赶紧看完《复联4》。</p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">那么就在《复联4》上映之前，我们重新捋顺一下《复联3》的剧情，看看漫威有没有留给我们什么蛛丝马迹。</p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">我们回想一下泰坦星大战最后，奇异博士将时间宝石送给了灭霸之后，对钢铁侠说的话，“We&#39;re in the endgame now.”（决胜局刚刚开始。）</p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">为什么奇异博士会这么说？</p><p style=\"text-align: center;\"><img src=\"/static/media/article/20180516/20180516114750360.jpg\" title=\"20180516/20180516114750360.jpg\" alt=\"20180516/20180516114750360.jpg\" style=\"font-family: sans-serif; font-size: 16px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">奇异博士用时间宝石看遍了14000605个无限战争的结局，换言之，这就是14000605个平行世界了。</p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">而14000605这个数字也不是平白无辜来的。《复联3》主要参战英雄+灭霸一共24位。</p><p><br/></p>', 0, 1, '2018-05-16 11:48:50.899979', 1, 3, 0);
INSERT INTO `users_post` VALUES (14, '后来的我们', '<p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">这个问题，当时的回应带着侥幸心理，现在想来——<span style=\"font-weight: bold;\">相信每个人都会对现任撒关于前任的谎，可是，我们就没有关于过去的记忆的权利了吗？</span>（现任肯定会说：没有，你还想留着过年吗？）</p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">曾经深爱过，你一定有被前任改变之后的影子。除非，你从来不曾深爱过……</p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">我比很多人都要晚去看《后来的我们》，避开对奶茶处女作的期待感，或许能看得更真实。</p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">所以，这部电影到底好看吗？好看。</p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">故事节奏一直都比较稳，演员对那种北漂被梦想与现实折磨，互相拥抱取暖，然后再被现实折磨得不成人样表现得非常到位。甚至后来，他们在飞机上重逢，相视一笑，那个笑都恰到好处。</p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">这个故事光怪陆离，意料之外吗？不。</p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">恰好它不狗血，不刻意设置剧情包袱，反而真实得像是我们每个人的故事。<span style=\"font-weight: bold;\">林见清和方小晓分手那段，他们为着生活里的细枝末节争吵，可以说那些争吵都毫无意义，却真切地让他们推开了彼此。这些无意义的争吵，曾经也发生在我们身上。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">看完电影，我在朋友圈发了观影感受。看到以前大学实习带我的电台主持人芳菲，也发了个朋友圈——一直说我想一个人看一场电影，没想到是《后来的我们》成全了我。让我妹在网上给我订票，她有心地选了我农历生日的座位号。我没看电影之前，一直说，这样的影片看的就是情怀，所以我带着平常心走进电影院，可我完全没想到，我坐在硕大的影厅中间，哭成了狗。（对不起，芳菲姐，写个影评都把你卖了。）</p><p><img src=\"/static/media/article/20180516/20180516115057186.jpg\" title=\"20180516/20180516115057186.jpg\" alt=\"20180516/20180516115057186.jpg\"/></p>', 0, 0, '2018-05-16 11:51:38.819424', 1, 2, 0);
INSERT INTO `users_post` VALUES (15, '看不见的客人', '<p>版权归作者所有，任何形式转载请联系作者。</p><p>作者：汐引力（来自豆瓣）</p><p>来源：https://movie.douban.com/review/9105960/</p><p><br/></p><p><br/></p><p>看电影前，只看了豆瓣简介(不含剧透)，只知道几个主要人物。虽然知道是悬疑烧脑片，提前心里做好了仔细看、注意细节的准备，但看完后，还是掉进了导演的各种陷阱。</p><p><br/></p><p>虽然我不是什么电影专家，资深影评人，但好歹作了二十多年的各类型影视剧吃瓜群众，各种套路剧情还是懂一点的。结果一上来，几处重要的反转一个都没猜到。惊讶赞叹之余，结合完整脉络，回顾下自己几次“上当”的过程，更是觉得这片，好些地方，都是先入为主，细想实在觉得导演高明啊！</p><p><br/></p><p>一、先整体来看三段多利亚叙述的“秘密”</p><p><br/></p><p>1.宾馆里lura被杀，无凶手逃离痕迹。2.意外车祸，丹尼尔当场死亡。lura遇见丹尼尔父亲。3. 实际丹尼尔没被撞死。</p><p><br/></p><p>三段回忆。第一个故事还原凶案发生前后。律师要从头再捋一遍，了解细节，观众更想知道发生了什么，经男主叙述，便惯性思维以为故事就是这样的，此处掉入第一个陷阱。一旦开始没有怀疑男主所述的真实性，后面就更难发现了。</p><p><br/></p><p>接着在律师“没有痛苦，就没有拯救”的高压逼迫下，多利亚说出了第二段故事。注意说出真相前，镜头随多利亚的视线转向“秒针”、“全家福”、“律师”，分别以“时间有限”、“牢狱之灾失去妻儿”、“律师从来没失败过”给多利亚施压，营造出典型的“马上要说出秘密”的气氛。看似律师打了个心理战，逼多利亚说出了“真相”，实际上是导演跟观众玩了一场心理战，让我们自然而然的以为“这才是真相”。律师的犀利审问，双眼透着能窥视人内心的冷静、自信、精明，而多利亚在背负人命下的痛苦、悔不当初，一系列“如果我没有…”的自责假设，此案本身“事业有成家庭幸福却沦落至此”的悲剧色彩，都一步步强化观众对多利亚所述真相的深信不疑。</p><p><br/></p><p>第三段。报纸，电视中新闻的描述都是“一名叫丹尼尔的年轻人失踪”，而身为观众的我们已经知道了真相(“被撞死了”)，便自然会以上帝视角看着警方毫无意义的“全力搜救”，同时同情着那对焦急的可怜父母。我们先是从叙述中得知真相，先入为主，产生“被撞死”的客观认识，后又以上帝视角一次次反复加深这一认识，才会在最后被“人没被撞死”震惊到。</p><p><br/></p><p>人们对于由人饱含情感地一点点被迫“吐露”出来的故事，往往报以更大的信任。如果开头直接播放这一交通事故和多利亚的毁尸灭迹， (响动的后备箱车盖是不是很熟悉？! ) 看惯诈尸类恐怖电影的小伙伴很容易就会猜“人没死”。此片回忆性叙事手法的采用，把握了观众心理，完美展现情理之中，意料之外。</p><p><br/></p>', 0, 0, '2018-05-16 11:53:10.826967', 1, 6, 0);
INSERT INTO `users_post` VALUES (16, '至暗时刻', '<p>版权归作者所有，任何形式转载请联系作者。</p><p>作者：谢客官（来自豆瓣）</p><p>来源：https://movie.douban.com/review/8952129/</p><p><br/></p><p><br/></p><p>当诺兰的电影《敦刻尔克》把镜头聚焦在普通人身上时，这场「胜利大逃亡」只是丘吉尔当上首相后，所面临众多难题之一。</p><p><br/></p><p>丘吉尔接手的绝对是个百年不遇的烂摊子。</p><p><br/></p><p>在二战前夕，丘吉尔提出有争议的政见而在国内树敌颇多，经历了跌宕起伏的议会生涯，却又在腹背受敌期间临危受命。</p><p><br/></p><p>1939年夏天，丘吉尔在报纸的评论文章中写道：“德国代表着一个前所未有的‘邪教组织’。”百姓们似乎蛮喜欢听到这种言论的。</p><p><br/></p><p>而德国对波兰的入侵，刚好印证了丘吉尔的预测。也不知道为什么，纳粹听到了丘吉尔的“指控”一反常态直指丘吉尔是“肮脏的骗子”和“臃肿的猪”。</p><p><br/></p><p>你知道德国人说话那个腔调是很给力的，反而提高丘吉尔的声望。&nbsp;</p><p><br/></p><p>就这样，被纳粹“点名是骗子”的丘吉尔坐在豪华轿车上一路走向白金汉宫，在1940年5月10日，国王乔治六世将要求他筹组一个新政府。</p><p><br/></p><p>在回忆录中，丘吉尔写道当时的心情：“我觉得自己好像是跟随命运的脚步在前进，我过去的人生都是在为这一刻作准备。”</p><p><br/></p><p>真是。</p><p><br/></p><p>客观来说，65岁本该在政治生涯上退休的丘吉尔，算是被希特勒推到台面上“再就业”。二战期间的欧洲，也可以说是这两位雄辩家的对决。</p><p><br/></p><p>希特勒和丘吉尔之间的对抗，是极权主义和人文自由主义的对抗；是一个疯子和一个普通老头的对抗；是一个禁欲主义者和一个享乐主义者的对抗；是一个谋杀犯和一个冒险家的对抗；是一个种族歧视者和一个帝国政治现实主义者的对抗。</p><p><br/></p><p>奇怪的是，没几个人喜欢他们俩，却都喜欢听他们演讲。丘吉尔最有力的武器是语言，希特勒也是。</p><p><br/></p><p>丘吉尔发表很多华丽的演讲，在1940年6月4日是最著名的的一段：</p><p><br/></p><p>“我们要在海滩上战斗，在陆地上战斗，在战场上、在大街上战斗，在山坡上战斗，我们决不会屈服。”</p><p><br/></p><p>这些演讲将无可阻挡的韵律和反复使用的语句连在一起，让人想起莎士比亚的那种皇家气势，在电影的预告里看了都会燃起来，更何况当时处于战争时期的人们。</p><p><br/></p><p>但是，希特勒直接用行动反驳这种自我感觉良好的精神粮食，在1940年夏天，德国已经入侵了波兰、占领了挪威、击败并羞辱了法国，还打的英伦三岛全面溃败，几乎毫无抵挡之力。</p><p><br/></p><p>当时，希特勒还与苏联结盟，看起来统治欧洲只是时间问题了，因为美国仍处于观望，此时的德国只差吹响胜利的号角。</p><p><br/></p><p>只有英国还在反抗这位独裁者。丘吉尔宣布，他只有一个目标：“胜利，不惜一切代价的胜利，不管道路会有多漫长和艰难。”&nbsp;</p><p><br/></p>', 0, 0, '2018-05-16 11:54:40.922213', 1, 6, 0);
INSERT INTO `users_post` VALUES (17, '绣春刀II：修罗战场', '<p>版权归作者所有，任何形式转载请联系作者。</p><p>作者：蜉蝣（来自豆瓣）</p><p>来源：https://movie.douban.com/review/8677562/</p><p><br/></p><p><br/></p><p>看完《绣春刀：修罗战场》的时候，我问导演路阳的第一个问题是：“为什么沈炼永远是备胎？”导演回答，因为他已经那么完美，他一定要有很多人生的遗憾，才会吸引我，如果他的感情再一帆风顺，就不是一个真实存在的人物了。</p><p><br/></p><p>而在剧本创作阶段，路阳说，他从来没有考虑过其他的演员，沈炼这个角色，就是依照张震来写的。“他有强大的塑造力，又能在每部电影之间保持某种很微妙的一致性。这一点特别令人着迷。通常来说演员要么是本色的要么是塑造性很强的，但是他能将这两种统一起来，又让观众不是很容易察觉。是富于变化的，同时又是一贯的。这个很难做到。”</p><p><br/></p><p>在台北的咖啡馆，路阳拿着剧本和分镜脚本给张震看。张震说：“故事很好，我没问题。”于是有了《绣春刀》这个系列，也才有了这次采访。</p><p><br/></p><p>这是唯一一次，我背了无数次题纲，设计了无数个开场或者自己要用什么样的态度。但是在见到他本人的时候还是紧张到结巴，大脑一片空白。他语速很慢，就像我想象中的那样低调、平静，又会很认真的说“哇，这个问题好难，我从来没有想过”然后思索片刻再作答。和他的大多数角色一样，他有着天然的文艺气息，能让身边的人也不自觉安静下来。</p><p><br/></p><p>我说他除了拍戏很少出现在公众场合，被侯孝贤导演说是“很闷”的一个人，看起来特别老派艺人。他哈哈大笑说可能接触电影的时间也比较久了，尤其一开始接触的都是长辈，所以思想上面很多时候是会比较老派一点。又很调皮的补充，“但我觉得老派给我的最重要的第一印象是他们对拍电影这件事情都挺认真的。”</p><p><br/></p><p>现在的张震，很少提及他闯关一样的学习新技能，而是会更加自信的说，沈炼这个角色是各方面经验累积到一定程度后发挥在角色身上的。他也在等待一个契机，等到碰到对的人对的戏，才能把经验累积发挥出来。</p><p><br/></p><p>这次采访写于《绣春刀2》刚定档的时候，电影还在后期阶段。后来我又累积了很多关于影片本身，关于杨德昌、侯孝贤导演的问题，希望今后还能有机会听到他的解答。</p><p><br/></p><p>我没要签名也没要求合影，甚至紧张得不敢说一句简单的“我好喜欢你”。只是在采访完临走的时候对他说：虽然14岁就成名，一直都跟好的导演合作，拍了非常多好的电影，但我一直觉得属于你个人最好的那部作品还没有出现。</p><p><br/></p>', 0, 0, '2018-05-16 11:56:30.804030', 1, 2, 0);
INSERT INTO `users_post` VALUES (18, '闪光少女', '<p>版权归作者所有，任何形式转载请联系作者。</p><p>作者：vivi（来自豆瓣）</p><p>来源：https://movie.douban.com/review/8828479/</p><p><br/></p><p><br/></p><p>因为学民乐，有幸看懂。</p><p><br/></p><p>因为很多朋友没看懂，所以特此解释一下，水平有限，如有错误还请探讨。</p><p><br/></p><p>第一，两边乐器都是呼应的，一人一句，音色相仿，乐句接近，所以算是见招拆招，不相上下，大战十几回合</p><p><br/></p><p>具体：</p><p><br/></p><p>古筝对竖琴，这是广陵散对德彪西，各展所长</p><p><br/></p><p>后面有些记不住，大概是扬琴对钢琴，二胡对提琴，长笛对竹笛这样</p><p><br/></p><p>第二，民乐接上了野蜂飞舞，算是接招，这对部分民乐是有相当的难度的，因为野蜂飞舞是为西洋乐写的曲子，弦位，指法，速度，对水平都有相当的考验。当然同理西洋乐演奏民乐曲也会很难。</p><p><br/></p><p>第三，唢呐一出，音色音调，都没有西洋乐器能对；真有所谓凤凰一出，百鸟皆避的意思……</p><p><br/></p><p>唢呐又用百鸟朝凤模仿鸟叫声，西洋乐没法模仿，又对不上；</p><p><br/></p><p>唢呐最后的散板（自由的节拍）和气口（比较自由的停顿，靠感觉）和变调（自然的调式变化），西洋乐交响乐团没有，更没接触过，所以接不上，所以没能进入最后一段，民乐队独自终结乐曲。</p><p><br/></p><p>演奏是非常讲“压轴”的，所以民乐完成了乐曲的终结，赢的很开心。</p><p><br/></p><p>民乐的演奏手法非常丰富，尤其善于表达细腻的感情。民乐的抻一下（延长一点），转一下(复杂的滑音)，升一点(往往是升几分之几个音程，而不是标准的半音)，降一点，全靠感觉，这也是机器模仿不了，大师方能演绎的趣味……</p><p><br/></p><p>因此，往往民乐器可以演奏西洋乐曲，就如片中演奏野蜂飞舞；西洋乐器往往不能演奏民乐曲，比如钢琴九级还是十级改编了《山丹丹花开红艳艳》，但是因为没有滑音，节拍固定，完全丧失了信天游的豪爽和俏皮，表现力锐减。再比如，随便举一下，秦腔的哀婉，激越，悲壮、潮州乐曲的婉转，暧昧，缠绵，等等这些，是通过节拍的极其微小的游离，和复杂的滑音（音高上有复杂的要求和变化）表现的。这些西洋乐器都无法表现。</p><p><br/></p><p>当然，乐器不分高低，民乐西洋乐各有所长。民乐不如西洋乐声音洪亮，共振强，也没有西洋乐器的低音声部，虽能演奏西洋乐曲，却也没有那种宏大，沉稳，正光伟的感觉，这就是进行曲等必须用西洋乐队的原因。</p><p><br/></p><p>我并不是挺民乐而批驳西洋乐，只是乐器本来各有所长，但现在民族自信太弱，很多人都是西方审美，不知民乐所长，而使民乐遭受不公平的歧视，实在心痛。</p><p><br/></p>', 0, 0, '2018-05-16 11:57:37.453028', 1, 2, 0);
INSERT INTO `users_post` VALUES (19, '神盾局特工 第五季', '<p>版权归作者所有，任何形式转载请联系作者。</p><p>作者：Jace（来自豆瓣）</p><p>来源：https://movie.douban.com/review/9211985/</p><p><br/></p><p><br/></p><p>hi，大家好，我是jace，之前从神盾的第一季开始就一直跟随着大家，分享每一集的分析和预测。后来因为工作的缘故，就中断了。明天更新的神盾将是全剧的第100集。据说本季很有可能迎来全剧终。怀着对神盾的深深感情，我决定回归，争取一直更新到最后。</p><p><br/></p><p>作为开始，我将从前瞻第100集的剧情来开篇。</p><p><br/></p><p>第100集的名字是the real deal。这里有一个双关，首先，real deal指的是寇森和死灵骑士在上一季最后做的秘密交易。因此，本集将会揭露这个秘密交易的真正内容是什么。其次，real deal也可以指的是真家伙要来了，换言之将会迎来本剧自开播以来最大的威胁。这个威胁将会是后面半季故事走向的主线。那么这个威胁是什么呢？我觉得是与上一季末尾有关。</p><p><br/></p><p>既然上一季末尾已经为通过与死灵骑士的契约为这一季埋下伏笔，那么，当然不能排除也为本季其他的剧情埋好了伏笔。最明显的一个伏笔就是俄罗斯人和他制造出来的lmd在死灵骑士到来之前，推着几大箱东西，开着货车走了。拉走的东西很有可能就和最终的危机有关。而想要进一步猜测出这个危机是什么，就要从女将军的身份说起。</p><p><br/></p><p>塔伯死后，女将军全面接管，而且对神盾毫不留情，几乎到了变态的程度。女将军的真正身份有两个很大的可能，一个是克里人，一个是lmd。我倾向于后者。从上一集可以看到，女将军手下有一只lmd队伍。剧中有能力制造lmd的，也就只有俄罗斯人了。所以，女将军其实是俄罗斯人的lmd手下，或者其实就是俄罗斯人。那么就可以联系到上一季黛西的lmd进去枪杀塔伯，一来是陷害，二来是方便让早已被用lmd替换掉的女将军上位掌权。</p><p><br/></p><p>在上一集的末尾，女将军找到了吸收入，说要组成一个队伍。目前已知蜂巢和鞭笞要在此出现，那么这个队伍起码就会包括蜂巢、鞭笞、将军女儿和吸收入。目前最大的悬念就是蜂巢和鞭笞到底以什么形式回归。lmd的话，太low，也不厉害，出来也是被黛西割韭菜的。所以，我的猜测是，蜂巢和鞭笞都将是全能力的克隆体。这一点并不难做到。上一季已经透露了，框架里做的异人族基因实验，可以在现实中应用，并且给了aida所有相关的超能力。所以，俄罗斯人完全可以重新做一个框架世界，里面是有蜂巢和鞭笞的，然后再用造aida肉身的方式造出来。寇森也很有可能是已经意识到了框架的事情没有真正结束，所以才和死灵骑士订下了契约。</p><p><br/></p><p>为了对抗邪恶一方的队伍，神盾这边也有可能会集结有史以来最强的队伍。我们可以期待一下死亡战士之类的老朋友回归了。</p><p><br/></p><p>---------------------------------------------------------我是第100集的分割线---------------------------------------------------------------</p><p>虽然之前猜中了死亡战士会回归，但是没有猜到蜂巢与鞭笞是通过这样的方式来回归的。三块巨石一起爆炸从而撕开了一个维度裂缝，这个实际上沿用了奇异博士以来的多元宇宙观。关于这个恐惧维度，我暂时没有找到漫画中能特别对应的内容。不过在奇异博士的漫画中，奇异博士曾与一个以人们的恐惧为力量来源的、来自其他维度的一个恶魔，而且制造出死去的人的幽影怪。</p><p><br/></p><p>本期比较炸裂的两个内容，一个就是寇森即将死亡，另一个是迪克的身世。寇森与死灵骑士的契约就是让骑士解除神盾为了复活他所做的事情。看来本季后半段相当多的剧情将会围绕这个展开。迪克话的话，应该是科学组的外孙。如果这一季就全剧终的话，那么大家已经看到科学组的血脉延续了，也算是给粉丝的一个福利吧。</p><p><br/></p><p>至于科学组的发糖，我感觉后面可能还会跟着几把刀，后面可能会更虐。</p><p><br/></p><p>下一集应该会涉及很多闪回的剧情，揭露女将军的身份和经历。</p><p><br/></p>', 0, 0, '2018-05-16 12:02:06.096897', 1, 4, 0);
INSERT INTO `users_post` VALUES (20, '白夜追凶', '<p>很多人把潘老师的演技定义为“一人分饰多角”，我在其他地方也举过例子了，这个角色的层次远比一人分饰多角要复杂得多。潘老师此次演出分为三个层次。第一层，大关小关本人。此层难点在于，1 大关是一个“面瘫”设定，用气质微表情演出一个“面瘫”而不是让观众觉得演员就是面瘫，这首先就不简单。仅凭这一点，基本可以把国内大家认同的戏骨级大叔演员之外的人全部涮下来。2小关的设定相对活波，但只是相对于“面瘫哥哥”活泼一些，其实他依然是深谙人情之道的高情商之人（一片赤子之心只给他哥），与同样是深谙人情的周巡比起来，小关明显性格脾气没有那么“爆”。大小关之间的性格差异，在设定上其实并没有我们以为的那么大。然后，在服化道基本没有加持的情况下，哥哥和弟弟完全是通过微表情体态以及气质来表现（看了其他贴一些关于演技的回复之后我必须加一句，“扭脖子”这种标志性动作不属于这里讨论的“演技”部分，有部分盆友说根据这个来分大小关，可是这算什么“演技”啊喂，这只是一个“人设”，就好像小关“抽烟喝酒”也是个人设一样。）这两个人格完全立住，是潘老师此次表演的第一层次而已。第二层次，哥哥弟弟互相扮演。弟弟装扮哥哥的时候要在“面瘫”里加上一些提心吊胆的飘忽（小关扮演大关在查案时眼神经常性上下左右乱转，大关本人眼神坚如磐石）；扮演弟弟，是萌中带着一丝狠（参见外卖小哥真假美猴王那一场：大关在小哥面前突然装成弟弟，仅仅一句“我才是关宏宇”精准使用了弟弟的标志性挑眉动作而且带着弟弟不会使用的狠毒语气。而此刻坐在沙发上的弟弟内心一开始“卧槽还有这种操作”然后立刻“该配合你演出的我尽力在表演”，这也全是眼神表达的）。第三层次兄弟同框，以第一层次的两个独立人格进行毫无痕迹的感情交流，让人无法拒绝这扑面而来的cp感。在一人分饰多角的戏中，敢如此大量的出现两人对手戏，可能大家并没有意识到此操作的难度。两人同框戏，是拍两遍+脑袋抠图完成，这也就基本可以说，在拍摄过程中，两人同框戏是潘老师分别以大小关的身份对着“空气”（替身）飙出来的。然而我相信大部分观众都会认同，大小关同框的部分是全剧所有对手戏中最炸的部分。<br/></p><p><br/></p>', 0, 0, '2018-05-16 12:03:20.682878', 1, 1, 0);
INSERT INTO `users_post` VALUES (21, '黑豹 Black Panther', '<p><br/></p><p>电影的故事设定的确有很多类似决斗当国王的槽点，但我觉得黑豹不算一部好电影并不仅仅因为这一点。我们不是说民主就一定优于君主，就好比你能说英国的君主立宪、法国的民主共和、以及我们的社会主义谁更优越么？问题在于剧情本身并没有表现出瓦坎达君主制的优越性，反而有意或无意的表现了许多君主制的缺点，比如国家领导的产生只依靠个人武力而非政治能力；在国家重大问题比如战争上又极其草率。左一遍又一遍的说瓦坎达科技发达人民富足，但通篇除了城市的远景以及公主殿下的实验室看起来很科幻以外，城市的街道、民众的日常生活场景看起来真比不上腐朽的欧美发达国家；前脚说手里的长矛堪比超音速炮，后脚的战争场面和部落械斗毫无区别。</p><p><br/></p><p>&nbsp; &nbsp; 当然啦，上面这些都只是小问题，观众老爷们也勉强可以原谅，电影嘛，你故事好看也成啊。但很不幸的是这一点它同样没做到。</p><p><br/></p><p>&nbsp; &nbsp; 电影里鹰派和鸽派各自的行为逻辑都很薄弱。国王陛下坚持瓦坎达与世隔绝是因为不想幸福的生活被打扰，更害怕振金的科技被盗取。祖宗们呐，现实世界里米国科技实力领先全球，它的顶尖大学拒绝全世界的留学生了么？美国政府担心自己一下子就会被那些第三世界国家或者社会主义国家超越么？至于幸福生活被打破，恕我直言，您各方面都领先全球了还怕个蛋蛋啊。当然啦估计海关的压力会大一点，毕竟每天都会有数不清的美国偷渡客想到瓦坎达做非法移民。至于男主他老弟代表的鹰派就更逗比了。对 ，你没看错我说的是逗比。就这民族主义洗脑的渣渣水平还叫嚣着解放黑人兄弟，影评里居然还有一堆支持者，我实在是不能理解。这么说吧，你一个瓦坎达的老铁既没有义务也没有权力去替你所谓的黑人兄弟或者姐妹们伸张正义。有人会说为啥啊，因为既然你瓦坎达自古以来领先全球且与世隔绝，那么也就是说历史上被贩卖的黑奴没有一个是从你这出去的。你作为一个主权国家有什么权利去管邻国的事情，且不说你所谓的邻国在当时基本上也就是各种大大小小的部落，连美洲的玛雅或者印加帝国都不如。哪天日本人要是说一百年前被卖到美国的华工太惨啦，不行我们日本政府要替米国那些备受歧视的黄人兄弟们伸张正义，你觉得天朝的吃瓜群众们会怎么看？估计大部分人会暗骂一句鬼子们怕不是石乐志吧，别扯这没用的先把几十年前乃们侵略我们的账算一下好伐？同样的逻辑套用到这部电影里也没问题，男主他表弟还真以为那些黑奴是白人殖民者们一个个抓到美洲的咧，你可拉倒吧，这些黑奴中不知道有多少就是当时非洲各个部落酋长卖给白人的奴隶或者战俘。真要说血债血偿的话非洲各国最好自己之间先打几仗，只可惜这些事跟你瓦坎达实在是一点关系都没有。</p><p><br/></p><p>&nbsp; &nbsp; 说到底我们谈的是这部电影到底好坏，抛却在北美市场上它特定的反种族歧视意义来说，他的确不是一部优秀的电影。因为你不能有了一个好点子但却只做出一个半成品，然后留着一堆这样的槽点让观众代替你去自圆其说。而在中国或者东亚市场，失去了特定的政治环境之后，这部电影不尽如人意的票房表现并不算意外。</p><p><br/></p>', 0, 0, '2018-05-16 12:18:24.045045', 1, 3, 0);
INSERT INTO `users_post` VALUES (22, '无间道', '<p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">我是在HBO上面第一次看到《无间道I》的；距离它的首映，已经两年了。在没有心理准备的情况下，我竟被它稳稳地钉在电视机前面，一个半小时未曾转台。看完之后，我的感觉是，感谢《无间道》，因为，这部片子标志着华人电影工业，以它自己的方式，已经达到完全成熟的地步；而这是我们在看了几十年的好莱坞之后，所梦寐以求的境界。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这成熟发生在香港，就产业环境来说，似乎是顺理成章的。在过去看港片的经验，虽然其通俗与大众化的特色，一般都表现得相当彻底，但是，总还觉得像是停留在青春期的趣味。在过往港片的逻辑当中，彷佛拍片这回事，就是必须将观众想象成未成年，然后企图一网打尽地把他们通通哄骗进戏院。因此，不管是什么类型、什么故事，不管是搞笑或悲情、耍刀弄枪或谈情说爱，或多或少总还是要弄一点所谓「轻松」甚或「无厘头」的桥段，或是投合青少年耍酷爱现心理的英雄场面；似乎那些才是票房的保证。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;但《无间道》完全没有这类可以说是浮面的花招。它是一部拍给成年人看的电影，又或者说，能够进入这部电影的脉络，并细细体会的观众，都算是成年人；它呈现的是成人世界中赤裸裸的真实。正是在这个意义上，以及进一步的，在电影本身构成的各项技术上，我才说，《无间道》是完全成熟的。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;也因此，《无间道》系列值得我们更细致的讨论。特别是，它引用了涅盘经上关于无间地狱的话语，来隐喻，或者开展剧情；这一点，不仅展现出既宏伟又幽微的气势，更带给我们无穷的想象。而这延伸出来的想象，绝不是仅仅用目前这《无间道》三部曲的幅度可以完全涵纳的。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在《无间道I》当中，以一种单纯但有效的双线交错与对应来推进故事。「曾志伟—刘德华」的黑道空间，以及「黄秋生—梁朝伟」的白道空间，两者之间形成简洁的奏鸣与对位；在这个架构之下，黑白之间交互「卧底」所产生的角色内在心理与外在情绪张力，则将这两条线绞在一起，并且越绷越紧，终致陷入一个无间地狱的境地。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;故事是怎么发展的，我想就不用在这里多费唇舌了。重点是，这种双线交错的叙事模式在国内外并不罕见，但《无间道》用来胶合这两条线，并使之产生化学作用的核心意念，我觉得，其实是一种属于东方文明的深度现实主义，透过「卧底」这个位在社会生活与道德价值最边界的人生角色，具体地传达出来。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;说是现实主义，因为，它不仅仅表现了警匪之间的尔虞我诈，更因为刘德华的企图自我漂白以及梁朝伟的最终殉职，而使得《无间道》可以超出一般这类影片正邪斗智的既定模式，而往更深沉的真实人生之辩证过程发展。而这个辩证，最终就表现在公祭梁朝伟的场合，刘德华代表警界举手致敬时，不禁闭上眼睛的那个特写镜头里。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在好莱坞影片当中，我们不难看到成熟的警匪片、间谍片、股市大亨片；与《无间道》首部曲同时间推出的，有Brad Pett与Robert Redford的《Spy Game》（台湾译作《间谍游戏》）。这部片我在HBO上看了不下三次，深深为其剪辑的功力与运用回溯叙事（flashback）的巧劲所折服，而对我来说，这也是一步拍给成年人看的片子；但是，它依然不脱西方叙事当中，角色必须「正—邪」截然分明的架构----正：Brad Pett与Robert Redford；邪：中情局。而正邪之间最终的价值判断与调和，会落在一个超然的上帝手上；这个上帝角色通常由美国宪法与立国精神来扮演。在绝大部分的西方故事当中，似乎舍此二元对立与上帝之眼，故事就无法推展，说不下去，或是无法吸引观众。</span></p>', 0, 0, '2018-05-16 12:20:47.504677', 1, 5, 0);
INSERT INTO `users_post` VALUES (23, '走向共和', '<p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">最近重看《走向共和》以及看了一些关于民国、晚清的文章，很有感触。中国是个从来没有停止过折腾的国家，总是在绕弯子了想图省便，吝啬抗争，结果比任何一个开明国家走的更曲折、流了更多血。一个民族经此曲折，至今依然矛盾重重，很难相信中国人总在表扬自己的有智慧。一些感触散乱记下，供学史的人一笑。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">一、慢一拍</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">以前人家说中国和日本一样维新，结果甲午一战，优劣立现。我说其实起点是不一样的，日本经过倒幕归政天皇，旧势力应该说是经过一个大的清洗，所以理论上是一个新的政权，所以政治上的包袱是很轻，加上明治天皇勤勉，一国人齐心，少壮派当国。维新的相当成功，而中国的是在旧瓶子里装新酒，太平天国并没有改变政治体制、社会格局，某些程度还加强的旧势力的反扑心态，虽然受鸦片战争及镇压国内起义催生洋务派的一时风气。但曾、李、左、张等人老成持国，万事讲究稳妥，有个同治中兴的成绩就颇为自许，并不晓得自己所处的历史当口是千年未有之变局。世界各国都不同程度在变，这期间，普法战争、美国南北战争都此起彼伏，某个程度给清朝一个喘息的时间。洋务派以为自己在进步，却不知道人家进步更快。所以到到中日战争一检验，中国输的非常干净。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">这里说有个体制问题，这个问题只是假想，体制里的人是想改良，但涉及自身权势的时候，很难改变，要是太平天国灭亡时候，曾国藩振臂一呼，国家为之一变，政治洗涤一清，也未必后来不是日本人的对手。这个只是假想，曾国藩或知不可为或与民休息或道德文章约束及其他顾虑，却不知道这个时候开始，中国就慢了一拍，这要命的一拍。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">二、文化的判断</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">首先我从小就怀疑我们的两千历史并非封建主义，从小时接受的政治学分类而言，封建社会只在周朝及以前。秦以后，应该是非常鲜明的帝国主义状态，王权至上，以知识分子为社会行政主体并掌握话语权的中间阶层，及广大农民为基础的农业社会，从帝国幅员广阔的大陆国家形态而言，有扩张的欲望但并不强烈（这一点与今日之美国多有相似，有领袖欲而少领土欲），更多在一种“普天之下，莫非王土”的自大心态及“合久必分，分久必合”的道家思想中，开疆辟土的现实意义就不过是一种完成统一的王权责任。所以秦、汉、隋、唐、明（即使包括赢弱的宋）在帝国初期无不四处用兵，极力扩张帝国，而扩张目标，却仅以恢复先朝疆域而已。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">中国只有王权，没有神权。所标榜的帝国核心价值为儒学，接受儒家的方式是学，学则可疑之，疑则少诚，再加上中国的实际思想根源其实是道家。道强调的是变化。所以中国擅长变与不变的学问，功利心强于道德。对于中国人而言，即使是皇帝替换，只要顺乎天道，也无不可。至于天道，那就是个表面文章了。以至坚贞者罕见，变节者众。比如五代冯道，在乱世当中的生存学问今天看何尝不见得没有道理。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">西方国家多有宗教信仰。王权神权并立，接受宗教的方式为信，信极则轻生，可以坦然赴死。所以若干世纪来传教的热诚可以夸张到十字军这个程度。传教可以说是文化侵略，但价值观的世界大同也未必不是一个伟大的文化理想。只不过事及当世之人只有切身之痛。</span></p>', 0, 0, '2018-05-16 12:23:04.776231', 1, 1, 0);
INSERT INTO `users_post` VALUES (24, '大明王朝1566', '<p>嘉靖帝崇信道教，他的精舍随处可见太极八卦图。而我们纵览整个电视剧就会发现，它的戏剧结构也是一个太极八卦图。图中的两极可以是嘉靖与海瑞、奸党与忠臣，也可以是君父与子民。因此在剧中太极图就不仅是道教的象征，还是朝野上各种势力对立与制衡的象征。从太极图中我们能看出水火不容的两方在波谲云诡的官场中达到的微妙平衡，也能看出表面平静的统治机器所面临的大厦将倾的危机。<br/></p><p>推动全剧情节进展的最重要的两极便是嘉靖与海瑞。诚如创作者所言，嘉靖至阴，是最高权力境界的孤独者，无为而无不为；海瑞至阳，是最高道德境界的孤独者，无畏而无不畏。一个封建制度的最大受益者，一个封建制度的挑战者；一个处于权力的巅峰，一个位于权力的底层。两个有天壤之别的人却因历史的机缘巧合碰撞在一起，相生相克，并达到了某种奇妙的心灵默契。正是由于嘉靖对国事的放任自流才使海瑞冒死进谏，正是由于海瑞的刚直无畏才使嘉靖不能除之而后快。</p><p>他们都面临着社会责任与个人生活的矛盾，嘉靖只想修道养生，于是选择了逃避，二十年不上朝，把自己软禁于西苑。国事衰落自是必然，长生不老也不可能。海瑞为“忠孝”二字操劳一生，而“他的政治生涯，已经充分表示了为人臣者尽忠之不易；而他的家庭经历，也恰恰说明了为人子者尽孝的艰难。”因此编剧说，他们都是精神上的囚徒。</p><p><br/></p><p>嘉靖与海瑞这一太极结构看似闭合，实则开放，在带动剧情发展的过程中，慢慢有更多的人物融入这一结构，并形成新的阴阳对立。剧中描写的最精彩的便是奸党与忠臣的对立。历朝历代似乎有忠臣便有奸党，有清流便有浊流。他们在一定范围内看似能达成一种生态平衡。依嘉靖的观点，“不能只因水清而偏用，也不能只因水浊而偏废”，泛滥了都要治理。所以他对严嵩的敲打总是浅尝辄止，能安抚正邪双方便足够。然而忠奸对立的生态平衡仅在统治阶级内部成立，以嘉靖为首的统治者从未考虑过天下苍生。事实上，君父与子民这一太极，早已因朝廷的过分强大而失衡，国家机器岌岌可危。所谓的生态平衡毁的是社稷，苦的是百姓。</p><p>忠奸这一太极结构的特殊之处在于清浊有时不易区分，许多人处于不清不浊的中间地带。胡宗宪虽抗倭有功，却囿于师徒恩情之小节，失于忠君爱民之大义；赵贞吉常在理学名家与朝廷重臣的身份间挣扎徘徊，并时常向权力投降，终感慨“修自身易，修官身难”。</p><p>官场之争不仅夺利，更要争权。“欲壑总难填”，这欲望既包括金钱欲，也包括权力欲。因此官场之弊不仅在于贪墨，更在于无休止的派系斗争。贪墨易除，私党难除。每一个挣扎于政治漩涡中的人都有自己的私利，故而忠奸难辨。这一太极是混沌的太极，正代表了复杂暧昧的政治关系。像海瑞这样完全无党无私的人是极端，是极少数，所以他才不能以朝局变化知进退，只以“简单的善恶二元论”认是非。像严氏父子那样贪婪无度、一手遮天的人也是极端。他们的所作所为已与文官集团的整体利益发生冲突。无论出于阴还是出于阳，文官集团都不能允许他们为所欲为。</p><p>在这部戏里，忠奸对立表现为严氏父子、裕王、太监三方的政治斗争。三方在这场斗争中都表现了高超的政治智慧，他们复杂的矛盾、紧张的关系构成了扣人心弦的政治戏。</p><p><br/></p>', 0, 0, '2018-05-16 12:24:18.066427', 1, 1, 0);
INSERT INTO `users_post` VALUES (25, '越狱 Prison Break', '<p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">1、MichaelScofield&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">头脑。我理解的头脑，应该是智慧+冷静。作为这部戏的主角，导演很慷慨的把两点品质都赋予了Michael，他的智慧和冷静是贯穿始终的，近乎完美。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">2、LincolnBurrows&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">勇气。在整部戏中，Lincoln应该是最有男子汉气质的人了。他明知有圈套还是要去救出儿子；当监狱暴乱他遭遇T-Bag一伙时，在没有退路的情况下勇敢的搏斗，毫无惧色。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">如果你失去了财富，那你失去了一点；如果你失去了名誉，那你失去了很多；如果你失去了勇气，那你把一切都失去了。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">3、BenjaminFranklin&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">责任。作为一名美国军人，当他发现虐囚事件时，勇敢的站出来揭露，结果被迫害（当然在中国，不要学他这一点，否则会死的很难看）；当他为了生计去给别人开偷来的卡车被抓时，为了不让妻子担心和维护在女儿心中的形象，扔谎称在服役，而独自承受坐牢的痛苦；为了和妻女团聚，冒着极大的风险越狱。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">有责任感的男人是值得信赖的，朋友也不会抛弃他，看看那些帮助他妻子和女儿逃亡的黑人铁哥们吧。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">4、JohnAbruzzi&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">尊严。因为那句著名的临终遗言：“我只向上帝下跪，但他不在这里。”当你赢得了尊严，也就赢得了别人的尊重，包括你的对手。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">5、DavidApolskis&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">忠诚。虽然开始David处于对鸡奸的恐惧和汉堡的诱惑，曾经出卖过Michael他们，但当时他并不是他们中的一员，而且Michael警告T-Bag不要打他的主意这件事情，他似乎也并不知道。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">在最后，当他被FBI抓获时，他没有背叛自己的朋友，毅然的选择了忠诚。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">我们都看到了FBI给他开出的价码：不追究他的越狱行为，并送他到一所高级监狱去服刑。的确如果他供出Michael他们，这种“重大立功表现”是很有可能得到这些的。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">我想当他敲开那个同车的漂亮姑娘的家门时，他一定知道这对他意味着什么，毕竟他一共只被判了2年的刑期。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">6、TheodoreBagwell&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">信念。作为最不受欢迎的一个同伴，他一开始就是被越狱小组排斥的，他是以差点杀死JohnAbruzzi为代价才保住了这张票，而且刚逃出监狱，就失去了一只手。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">两次失去左手的是他，两次得到巨款也是他，别人都有朋友、家人帮忙或陪伴，只有他是孤独的，但他就凭着求生的信念，勇敢的活了下来。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">7、FernandoSucre&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">浪漫。作为一个只剩下16个月刑期的犯人，他越狱的理由竟然是怀孕的女友要和别人结婚。当他骑着朋友的大哈雷去拉斯维加斯准备在婚礼上把女友抢回来时，每个女人也许都在想：我要是他的女友该多幸福啊。&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">8、SaraTancredi&nbsp;</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">敬业。当监狱开始暴乱的时候，她不顾警卫队长的劝告，执意进去抢救一个中暑的犯人；当生命垂危的JohnAbruzzi被送往直升飞机时，是她陪在旁边焦急但是很不失冷静的不断呼喊：“John，坚持住，呼吸，坚持住，你会没事的。”在那一刻，我觉得这个恶贯满盈的犯人更象她的亲人，那也是Sara最美的时候。大家可以去看看，在第1季第13集一开始，那一刻，Sara就象一个天使。&nbsp;</span></p>', 0, 0, '2018-05-16 12:25:35.414681', 1, 4, 0);
INSERT INTO `users_post` VALUES (26, '绝命毒师 ', '<p><br/></p><p>美剧看了这么多年，还从未有一个人物像老白这样在心里挥之不去的。</p><p><br/></p><p>他不是一个多有魅力的人物，尤其第一季里他出场的衰样，工作窝囊，家庭窝囊，命运更窝囊。路上遇到这样一位其貌不扬的晦气大叔，谁会多留意一秒？可他毕竟不是普通人。这“不普通”倒不是说他智商超群，拥有无以伦比的制毒能力——当然，这也是必要条件，否则故事也就没法往下演了——而是他那份对命运不甘心不服气的劲。要知道，他不帅，不年轻，没钱，没人脉关系，总之是没一点资本演什么征服命运的戏码。他本来是那99%的沉默的大多数，但这人偏偏不服，偏要在伸腿前体会一把那1%的drama。</p><p><br/></p><p>他的出发点是家人。老婆怀着第二个孩子，没工作，大儿子又是瘸的。他肺癌走了，一家人没着没落怎么活？</p><p><br/></p><p>于是他去制毒，像化学实验一样制冰毒，赚外快。以前课上的坏孩子杰西成了他的搭档，一老一少的代沟+命运洪流，撞出不少冷笑话黑故事。</p><p><br/></p><p>一般人，这样的一位衰人，捞偏门小打小闹也就算了，可老白不。他时间不多，他心怀不满，他非要像个书呆子一样用经营企业的方式去经营他的制毒小作坊，跟杰西谈什么批发、直销、物流、利润率。杰西是个蠢蛋，但老白运气好，他倒了一辈子霉，一生的运气都凝结在制毒卖毒上了，作坊变工作室，工作室变顶级实验室。仪器设备甑明雪亮，专业原料无缝供给，物流渠道四通八达，整个生产操作技术化标准化，直追ISO9001指标，直看得人瞠目结舌。</p><p><br/></p><p>可故事的关键还是老白，老白，这人物面对命运的巨变随之划出的那道弧线。可要说老白，就必须说说他身边的人。</p><p><br/></p><p><br/></p><p>力量的对比</p><p><br/></p><p>老白的不服软，在相当程度上我想来自于对他的连襟，新墨西哥州阿伯克基市的缉毒警探汉克的不满。这二人的起始关系在第一季第一集中就被设定清晰：老白自己的五十大寿生日聚会上，汉克不仅抢了老白的风头，更俨然主人一样坐在电视机前向老白的儿子炫耀自己的佩枪和自己的成就有多牛掰。旁边苦闷寂寞的老白怎么办？一边讪讪地接过汉克的佩枪，再次成为众人眼里被善意嘲弄的对象，一边无奈地缩回角落，满腔羡慕嫉妒恨。</p><p><br/></p><p>后来老白制毒贩毒的过程，在某种程度上而言就是与汉克的力量对比逐步由量变到质变的过程。质变的关键几笔中，有几场对手戏特别令人难忘，简直可用“美妙”二字来形容。一场是第二季，第8集，汉克首次体会墨西哥大毒枭的残忍手段，目睹同事死在眼前，吓破了胆被送回家，两个男人在汉克卧室里的对话，细腻、精彩绝伦，在此必须重放一遍：</p><p><br/></p><p>汉克这个一贯的硬汉，不能在亲人面前表达自己震惊害怕的情绪，只能把自己关在卧室，说“我没事，让我自己待会。”</p><p><br/></p><p>见到老白进来，汉克马上从床上坐起，强装笑颜，故作镇定地打招呼，眼睛却始终盯着床，不能看人。</p><p><br/></p><p>老白走到床尾，背对汉克坐下。这个背对的动作我想有两层含义：一是善意，不直面汉克的软弱；二是尴尬，老白与汉克之间缺乏真正交流的一贯的尴尬。</p><p><br/></p><p>老白问汉克感觉怎么样。汉克用无聊的笑话掩饰自己的真实状态。然后从斜后方偷瞄老白的反应，又说起不满警局把自己遣送回家，总之是在尽力展现自己的男子气概，继续保持在老白这个软弱的失败者面前的成功硬汉形象。</p><p><br/></p><p>当老白不太自然地向汉克说你可以跟家人谈心，跟妻子，或者跟我，汉克欲言又止但还是说出了他的心里话：“我不知道该怎么说，”叹气，“我做的事情……”停顿，“你我之间，用你的话来说，不太存在共同体验。”</p><p><br/></p><p>在尴尬的气氛中，老白转过头直视汉克，说“如果我说有呢？”</p><p><br/></p><p>汉克也转头看向老白，老白却扭回头，不再看他，说：</p><p><br/></p><p>“我一辈子都过得战战兢兢，总担心有事情会发生，可能发生，可能不会发生，整整五十年了，每天3点钟就惊醒。可你知道吗？自从我收到了癌症诊断书，我反而睡踏实了。然后我意识到，恐惧才是人生中最糟糕的事情，恐惧才是我真正的敌人。所以，振作起来，汉克，回到现实世界，狠狠揍那个杂种，打得它满地找牙。”</p><p><br/></p><p>说最后一句话时，老白望向汉克的眼睛，汉克也紧紧盯住老白，表情复杂，似乎是不可思议，也似乎是感激和释然，同时深深呼出一口气。然后两个男人各自别过头去，焦点由汉克重返老白，镜头在此切走，场景结束。</p><p><br/></p><p>就这样，一个生活的弱者，首次拯救了强者。</p><p><br/></p><p>简单吧，就这么几句对话，两个男人之间的复杂情绪表露无遗。老白作为弱者的善良，一次次冒险中新获得的自信，对汉克的怜悯中夹杂着些许微妙示威的安抚。老白已经不是曾经的老好人白老师了，就连汉克也有抑制不住的恐惧与软弱，而他老白却已经对强大的命运出拳了，“打得它满地找牙”！</p><p><br/></p><p>到了第四季，第4集，老白已经开始从小毒贩向大毒枭晋级，而汉克却遭伏击中枪，瘫痪在床，整日以收集矿石为乐。二人之间的力量对比彻底调换，</p><p><br/></p><p>这一集开始，老白和妻子斯凯勒在家演练如何向妹妹和妹夫交代老白染上赌瘾的戏码，老白很不情愿地配合斯凯勒的脚本，流露出不满斯凯勒为他写下的“我为我的行为感到羞耻”的台词。在这个阶段，老白已更进一步接近自己的本心状态，从第一季的耻于违法到如今每日犯险的刺激甚至骄傲，在妻子面前已经无法掩饰他的权力感了。</p><p><br/></p><p>全家人到达汉克家后，汉克要给老白和侄子展示自己的矿物石收藏。坐在轮椅上的汉克一转身碰到了柱子角，老白上前帮忙，汉克婉拒。进入汉克的卧室后汉克向侄子展示荧光灯下一块蔷薇辉石，在解释石头中的氧化锰成分发出粉红色光辉时，化学大拿的老白一下就占了上风，让轮椅中的汉克相当难堪。</p><p><br/></p><p>这种强与弱的转变，我认为是汉克终于得知真相后不惜一切代价也要将老白绳之以法的最主要原因。</p><p><br/></p>', 0, 0, '2018-05-16 12:28:01.438538', 1, 4, 0);
INSERT INTO `users_post` VALUES (27, '踏雪寻梅', '<p><br/></p><p>后来，你我都活成了王佳梅的样子。</p><p>王佳梅想要买副耳环，索性就跟人睡一觉；你我为了手头那点劳酬，毫无尊严地加班劳作。你看，其实为了生活，大家不都一样，生来受苦，却无法抵抗。</p><p>小的时候，会有很多不定的地方，总以为世界除了黑白便无其他颜色。</p><p>后来才知道，原来很多人都生活在黑色地带。</p><p>以前的不理解，是因为没有感同身受。</p><p>在这压抑的社会下生活，我开始懂得了王佳梅的小欢喜和小伤悲。</p><p><br/></p><p><br/></p><p>她会因为买不起耳环而伤悲，却也能因为跟人睡觉赚钱而欣慰，这都是因为她有着单纯却不安分的小欲望。</p><p>当她走进商场，把自己零钱包里的纸币、硬币倒在收银台的时候，我们分明看到她笑得那么幸福，就像以前看到的一句话“小时候，幸福很简单；长大后，简单很幸福。”她只不过是完成了自己小小的心愿。</p><p>可生活是什么？</p><p>生活就是当你觉得自己已经满足的时候，无尽的无尽的欲望会瞬间将你吞噬，继而跌入更大的漩涡。</p><p>在这样的漩涡面前，大人都会手足无措，更何况王佳梅还是个未成年的小女孩啊。</p><p>所以，她想离开，单纯地想死，并无他意。</p><p><br/></p><p><br/></p><p>生是一场巨大的盛会，死只不过是伴随着灯光熄灭时的寂静，而处在盛会其中的你我，并无权判断那究竟是寂静还是愉悦。</p><p>最近，奇葩说在讨论生与死的问题，说当你身边已患绝症的人想要离开，你是劝阻还是允许？毫无疑问，我的观点是允许，原因很简单，就一句话，如果活着是一场灾难，也许死才是解脱。</p><p>所以，我并不会王佳梅惋惜，也不会谴责杀手，因为两人是在谈判之后达成了一致，如果非要谴责一点，那就是他不应该让王佳梅死得那么难看，毕竟她是个爱漂亮的小女孩。</p><p><br/></p>', 0, 0, '2018-05-16 12:29:00.000000', 1, 5, 1);
INSERT INTO `users_post` VALUES (28, '喜剧之王', '<p>有人说，《喜剧之王》这部电影，小时候看觉得是喜剧，现在看来是悲剧。周星驰曾说：“我以为我拍了很多悲剧，可是拍出来你们都觉得那是喜剧。”是啊，如果有一天小丑哭了，你会不会觉得他在搞笑。<br/></p><p><br/></p><p>天仇跟那个喜欢扭头的导演讨论“死人”的内心活动，因为“不肯死”而被娟姐骂的狗血淋头。观众在影片前捧腹大笑，可这一切都是真的啊。周星驰曾经在《射雕英雄传》中饰演的角色是被梅超风一掌打死，他去找副导演商量可不可以第二掌再死，多么迫切的想要改变那一秒钟的命运。他像一个旁观者，冷静的将伤口展示给众人，这是一个痊愈的过程，娱乐了他人，拥抱了自己。</p><p><br/></p><p>悦然说：“在阅读一本小说的时候，读者总会不自觉地选择里面的一个角色，与之相依为命，共赴这段旅程……”</p><p>谁说电影不是呢，很多人对这部影片念念不忘，大概是看到了站在水边大喊“努力！奋斗！”的那个瘦弱而坚强的自己。原来最动听的三个字不是“我爱你”，而是“我养你”啊。</p><p><br/></p><p>起初飘飘嘲笑天仇是个死跑龙套的时候，他会立即微笑更正：其实，我是一个演员；在随意说出飘飘是舞女时，瞬间收起笑容的她较真问道你说谁是舞女，天仇真诚道歉。而在接受现实并产生共鸣后却不介意对方怎样称呼自己，怀揣梦想，互相取暖。《悲观主义的花朵》中这样写着：在生活里你可以随意伤害我，我无所谓，但是你不能碰我的梦想。</p><p><br/></p><p>她做他的一人观众，在他表演时拍手；他在树下教她拥抱，她把头生硬的靠在他肩膀上。有了爱，哪里需要学呢，剩下的只是本能而已。底层人物的爱来的谨小慎微，她试探的责怪天仇嘴唇干燥，然后用自己涂有唇膏的嘴去滋润。</p><p><br/></p><p>“喂，前面黑漆漆的，什么都看不见。”&nbsp;</p><p>“也不是了，天亮之后就会很美的。”</p><p>能带来希望的人总是迷人的。记得曾被问及为什么他拍的电影很多小人物最落魄的时候拾到爱情，周星弛说，落魄的时候爱情十分重要，在很困难的时候，爱情在旁边是个很大的支持。</p><p><br/></p><p>被前男友欺骗的经历并未让飘飘失去爱的能力，她爱上了这个眼神闪躲的男人。一夜欢愉之后，天仇从幸福中惊醒。飘飘穿着他的衬衫，散着长发坐在窗台上，一副与过去决裂重获新生的样子，这是一个别人没有到过的境地，眼神也柔软了下来。她把他吓坏了，如果说其中有爱情的成分，此时的飘飘却是他不配爱的样子。于是用背对着她，仿佛一旦勇敢，就低贱了飘飘，一定不得善终，这是他体会到的宿命。</p><p><br/></p><p>天仇留下了那本《演员的自我修养》，虽然后来还是被飘飘带了去。那是他唯一能证明自己是一个演员的物品，他对它充满敬畏，是不可或缺的仪式感。用钱能买到的感情都不贵，她真的好贵，想要补偿她，倾其所有哪怕连硬币都用上了，真的就是一个男人的全部了。看到了报酬，看到了划清的界线。天仇追出来给出承诺后，她强颜欢笑：“你先养好你自己吧，傻瓜。”上车后再哭，他爱她爱不起，她怪他怪不起。</p><p><br/></p><p>埋下了爱情的种子，加上得到男主角的机会，原以为皆大欢喜却峰回路转，小人物还是没能翻身。天仇扯着剧本久久不愿松手，痛苦的根源不是失去角色本身，而在于曾经得到过，打回原形也是一次重生。梦想照进现实，天仇拿到了属于自己的便当，飘飘开始珍惜自己的身体，黑漆漆的海面渐露曙光。</p><p><br/></p>', 0, 0, '2018-05-16 12:30:35.207420', 1, 5, 0);
INSERT INTO `users_post` VALUES (29, '银翼杀手2049', '<p><br/></p><p>雷德利•斯科特的《银翼杀手》，内嵌了一个显著的《失乐园》式故事结构：泰瑞尔公司与复制人，就是上帝与天使。上帝让天使为人类服务，而某些天使对此产生了疑惑，继而反叛。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 值得注意的是这里的相似：在公司与复制人之间，正如上帝与天使之间的交流，是没有“应然性”存在的。也就是说，并非“天使/复制人应该为人类服务”，为人类服务，只是一个事实，而且是个不可改变的事实。一旦复制人产生了应然/伦理上的疑惑：怎样是“对的”？与吃了知善恶树上果实的人类一样，他们就会变得过于傲慢，以至于认为可以决定、改变自己的未来。这种傲慢带来的人性，特别是人性的可爱之处，在《银翼杀手》中已经展现得非常充分。在其中哈里森福特的角色非常有趣，他是个冒冒失失闯进了神话的人类，至少他认为自己是人类。名义上他是主角，但就和约瑟夫•K一样，在这个自己实际上并不了解的世界里，自认为起了相当大的作用，直至看到独角兽折纸才彻底明白过来（哈里森•福特对自己角色的不认同，在电影之外使这种戏剧性上升到了顶点）。当他认为自己是人类的时候，他像复制人一样不问因由地执行命令；当他发现自己是复制人时，反而找回了自由意志，这是个相当妙的反讽。“比人类更像人类”，原因是复制人更明白那条边界所在。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 但《银翼杀手2049》中，展示的是个后《失乐园》结构：由于不再由人类垄断，“应然”就成为了个千疮百孔、“各自表述”的东西。警察局上司对K所说的是“你阻止了一场战争”，但为什么不能有战争呢？人类采取的是种鸵鸟似的、对矛盾视而不见的态度，他们既歧视、利用复制人，心里又知道，他们与自己其实并没有什么显著区别——除了“不能生育”这件事而外。警察局的“应然”是“人类不应有冲突/战争”，华莱士公司的“应然”是“人类应该占有星星”：你也许能看出来，在《银翼杀手》中，人类的想法也只是“人类不该奴役人类”，而不是“人类该奴役复制人”——对于“复制人该怎样”，人类的回答一直是“人类该把头埋进沙里”。洛伊的愤怒主要来自于这种在“应然”上的被遗弃感：他们被当做物制造出来，被当成苍蝇一样拍死，即使他们如此强大、美丽，人类也根本不关心他们“应该如何”。对他们问出这个问题的恐惧、多于对他们实质威胁的恐惧，才会产生出“退休”这个掩耳盗铃的隐语。不过他们不理解，这也正是人类对待自己同类的一贯方式——问题并不出在他们是复制人，“不应”与人类有同等“权利”；问题出在“实然”上，即他们还没有“事实上”拿到同等的“权力”，没有形成稳定的、不会颠覆整个人类秩序而只是从人类利益上切蛋糕的能力，以强迫人类正视他们。在《2049》中，复制人仍然纠结于这个“应然”的问题，尽管生殖力问题与繁殖能力这个“实然”相互缠结，但“比人类更像人类”，仍只会让他们显得“不是人类”，而非让人类自惭形秽。使人类退缩的，只有他们这支势力的真实存在而已。如果认识到了真实情况，那恐怕是一个会让他们发疯的真实。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 事实上，过着群体生活的复制人，无论银翼杀手、反抗军还是公司的奴仆，无一例外，都持有尼采所说的“奴隶的道德”：他们必然纠结于自己“配不配做人”的问题。只有他们中个体行动的——最好的例子莫过于连锁6型们，才有一刹那被迫而得的“主人的道德”，也就是说，和人类一样的自我中心和不问而得的自由，但他们又注定不得善终。和人类一样，他们出生于组织性的世界，但并不像人类般具有如此强大的遗忘能力，自欺欺人的能力，精神错乱的能力，以至于能在组织性的重压下发展出坚强的个体。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 作为银翼杀手的K，对于自己的暧昧身份，采取的是种极其基督教的对应方式：“我”甘于自己受到的歧视、压迫，坚持捕杀自己的同胞。“我”甘于自己的孤独，Joi是“我”的倒影，她比“我”更像一个人类，“我”甘于只是持久地凝视她，毫无希望地接近她，并由“她”说出“我”的身份不该说出口的话。“我”相信人类的高贵，以至于忽略了其中的大量矛盾，即使他们辱骂“我”，让“我”去杀一个孩子，一个完全是人类的孩子。K，或者说Joe，或者说，Joseph K，他是人性的爱慕者。在他的认识中，复制人与人类的差异是位格上的差异。就像约瑟夫•K永远无法抵达审判和城堡的实质那样，Joe也无法抵达人类的实质。但他原本是甘于这个事实的，直到这种实质仿佛不请自来地敲响了他的门，对他说“你就是弥赛亚”的时候，巨大的悲伤降临了他，因为他并没有相应的资质去对应这过于沉重的命运，这命运只用一根小拇指就可以颠覆他原本过于虚幻的、竭尽全力才能为自己制造出一点点重量的命运。然而这扇门几乎是马上又关上了，像那个“邯郸学步”的人一样，他现在什么也不剩下了，他跌坐在那里，感到前所未有的轻松，而他的同胞们，那些想要取代造物主的造反的天使，和造物主本身一样，让他去干同样的事：杀人，用同样的口气和类似的理由：群体，“我们”。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 是的，“这种耻辱将长留人间”，但与他已经没有关系了。他现在没有父亲，没有上司，没有同伴，没有恋人，没有倒影，没有信条，不是人也不是复制人，他可以顺其自然地去做自己乐意做的事：推石头。与连锁六型们充满尼采式的生命欢乐与毁灭悲伤的简单肉体正好相反，这具肉体现在是完全理念化的，是失去了一切“应然”与“实然”支撑的，人性的“道成肉身”。他躺在落雪台阶上的幸福，与旁观者的悲剧感是完全隔绝的，是一切好莱坞老套英雄形象的提纯和升华。他躺在那里，揭示出一种基督教文化核心的自闭症：人性在说话，而人注定永远听不到。</p><p><br/></p>', 1, 6, '2018-05-16 12:33:00.000000', 1, 6, 1);
INSERT INTO `users_post` VALUES (30, '钢铁侠 Iron Man', '<p><span style=\"color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">看完这部电影我感觉首先，它的视觉是绝对震撼的，钢铁侠在空中不断地飞行着，手中喷出蓝色的光火，那震撼人耳膜的终极听觉刺激，仅仅具备这两个亮点，就可以让你看了一遍还想再看一遍。但是，它并不只具备这两个亮点。 首先是他的铠甲的变幻过程，让你一看，觉得哇！好神奇哦！怎么装出来的？一定花费巨大吧！这是科幻片的为什么这么火爆的原因，就是具备着一个亮点，那就是——炫！ 然后是他的场景设计，在一个有好几层的豪宅里，有一块玻璃一直长到顶层，有水流不断地从上面流下来，还真有点飞流直下三千尺，疑是银河落九天。的韵味，可惜没有那么壮观。花岗岩做成的柱子有好几十米高，上面打了一层又一层的蜡，看起来还闪烁着亮光，好像如绸子般华润，扶手采用上等红不制作，看起来十分圆润，楼梯的颜色安排得十分得当，这就是钢铁侠的家。从高空俯视着城市，各个建筑物星罗棋布、错落有致。闪烁的霓虹灯；树上的小灯；小车上的车灯，组成了一个十分绚丽的画面。 在人物的设计上也下了很大功夫，钢铁侠的设计让我一看就不由自主的哇！的叫起来，后面有个类似颈椎的铁条，伸缩自如，像一条龙一样；腿部：后脚跟那个部分有个喷射器，脚底也有，就是他帮助钢铁侠在空中飞来飞去，脚一伸，螺母锁紧，后背的螺母锁紧，前方开胸炮盖上，面具往下一拉，探测器亮起，在帅气中透出严肃的表情。 然后是他战斗的时候，瞄准器对准敌人，聚能炮聚能3秒，发射；开胸炮，准备，聚能5秒，轰隆！杀伤力相当强大，还配上了震撼的音响效果，让你一看就停不下来，我看的时候，常常在心里想：战斗怎么还不开始，战斗怎么还不开始！ 故事主要是这样发展的——由于新的坏蛋出现，钢铁侠不得不将他们消灭，在与坏蛋的对战中，钢铁侠十分认真，但是铠甲的威力仍然不敌对方，不过，自助者天助，既然他去做了，还做得很认真，他的好朋友也都愿意一起帮他还不怕落入危险之中。那么，上帝还不去帮这种正义之师？片中的钢铁侠以他的善良、智慧、信念、勇猛善战、幽默夺得了大家的喜爱，他走到哪里，哪里就带着欢笑，正义。最后，当然是皆大欢喜。 人生万事有道理，人活在世上，就是去训练你这种悟道理的能力，别看只是一个影片，你要是认真去悟，它会有很多道理。</span></p>', 3, 12, '2018-05-16 12:34:00.000000', 1, 3, 1);
INSERT INTO `users_post` VALUES (31, '星际穿越', '<p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><img src=\"/static/media/article/20180516/20180516171946021.jpg\" title=\"20180516/20180516171946021.jpg\" alt=\"20180516/20180516171946021.jpg\"/></span></p><p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">在我们进入对“Interstellar”的具体讨论之前，也许需要对诺兰导演进行一个小小的总结和分析——他也许是我们这个时代最能兼具票房号召力和影迷人气的导演。如果我们抛开影视工业的层面，仅仅从个人才华上分析诺兰的成功，那么他最大的优点和长处在哪？或者说，诺兰的电影到底好在哪？</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">我认为是对叙事结构的精巧设计。很多导演都会采用非线性叙事， 但毫无疑问诺兰是其中的佼佼者。以我个人最喜欢的诺兰作品“Memento”为例，同一主角的两条故事线，故事被分割为碎片，一条顺序发生，一条则是真正的逆时进行。就好像一根由两端分别点燃的线绳，逐渐在填满火药的中点交汇，爆发出了最后的火花。这样的设计需要主创具有极其清醒的头脑，故事的细节必须被小心的设计，才能在最后的交汇处给予观者以智识的快感。不同于普通非线性叙事的形式美感，诺兰的作品具有某种数学式的精妙美学。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">而精巧结构中蕴藏着更加奇妙的现象：结构本身所存在的张力自然地渗透进入了叙事之中，故事的展开显得水到渠成。当然，这与类型上的悬疑片特点有关，观者在终于捋顺结构的同时，也就同时释放了悬念，得到双重的满足。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">一些广受好评的诺兰电影都具有结构复杂精巧的特点，例如“Inception”的五重梦境。当然黑暗骑士三部曲不符合这个范式，在这三部电影里，诺兰体现的是对既有题材的主题改造深化能力。但如果我们从另一个角度来看他的作品，会发现，在结构之外，诺兰其实是相当好莱坞叙事的（或者称之为“通俗”）。“Inception”的每层梦境中的故事都是一个完整的、cliché的好莱坞故事。而黑暗骑士系列则也是对好莱坞既有主题的化用（善恶模糊、社会运动），创新之处只在排列组合。从这个角度来看，依然是把握结构的能力。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">终于，让我们用这样的角度审视“interstellar”，在这部电影里，诺兰的创新体现在哪里？当然，在故事的主题上，不出意料的传统：父女之间的感情是贯穿始终的着力点和落脚点，虽然诺兰在访谈中表现了对“2001 Space Odyssey”的推崇，但他显然没有拍摄元叙事电影的勇气，还是选择了最安全的亲情作为情感主线。诺兰甚至不惜用将近一个小时的篇幅来铺垫二人的关系，这在一部以星际旅行为卖点的科幻影片中是多么的大胆。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">那么创新在哪里？我认为是罕见的“硬”科幻元素。有基普·索恩做科学顾问，interstellar里涉及的科学细节都存在严肃的理论基础，电影中的人物用大量的科学术语告诉现实中的观众，我们所做的一切都是可能的，只是还没有实现而已。而如果观众们回去查“虫洞”、“奇点”的维基百科，则又会印证影片里的情节。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">但问题出现了，科学基础的严谨性在某种程度上只能代表影片的严肃性追求，甚至可以当做宣传卖点，但不能起到如精巧结构或主题创新的作用，即成为影片的真正驱动力。事实上在Interstellar主题方面是有新的发掘空间的，即人类对待地球的态度——是矿洞还是家园（恰好可以跟去年的“gravity”形成互文）？但诺兰在这个角度的探索浅尝辄止，又在最后以一种偷懒的方式解决了这个矛盾(我们将在后面提到)，而把情感重心完全放在了父女情上。这个主题是如此的主流，也就不得不考验诺兰在一个通俗框架里驾驭电影的能力了。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">可正如许多影评家批评的那样，诺兰在技术环节（叙事技巧、调度剪辑）上从来不是一流的。前三分之一的地球生活戏，只是略显拖沓，但你也可以说是扎实细致。但星际旅行之后，情节在技术细节和情感线索之间就显得有些顾此失彼。这样的缺点在影片的结尾体现得尤为明显：Cooper进入五维空间，与Tars进行了大量的、原理性的讨论，可以说是揭开科学性谜底的关键情节。但此时叙事重心突然转到了父女二人通过奇点的沟通上，而此时我满脑子还在试图用Cooper刚才的台词串联起电影的科学逻辑，几乎错过了这个情感高潮。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">另一个问题存在于情感线索本身，Cooper的挣扎在于是信守与女儿的承诺，还是为了任务牺牲自己？更进一步的则如Dr Mann所说，是选择对亲人的小爱还是对人类的大爱？但所有的这些矛盾，诺兰都用巧合而不是人物的内在动力解决了：恰巧燃料不足要求Cooper必须牺牲自己（两难抉择被虚置）、恰巧刚好进入奇点与女儿沟通解开她的心结（情感冲突被解决）、而最后的巧合更是夸张到了又能从黑洞中出来再次见到女儿。情感线当然圆满，重逢的场景当然煽情，可这样也就失去了借人物挣扎让我们借机审视自身的机会。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">作为星际旅行电影，另外一个吸引人的关键是利用视觉呈现，带我们进入浩瀚的太空。在这点上，Interstellar显然无法与去年的gravity相提并论。但伴随着Hans Zimmer的配乐，以及对黑洞外观的高科学性模拟，还是让人非常愉悦震撼的。但诺兰再次在自己不擅长的动作戏调度剪辑上表现出了粗糙。以Miller行星的戏为例，当他们发现远方的并不是山而是巨浪时（顺便说我觉得是全片最具表现力的镜头），电影缺乏镜头来交待飞船、两名宇航员、记录仪和巨浪之间的位置和距离关系，观众也就因而不知道Brand去取记录仪的危险性。在之后的整个过程中，镜头在呆板的中景近景间切换，每个景别都是一个人物的单独画面，信息量极其不足，使得观众丧失了感同身受的紧迫感。当然这个场景里更让人匪夷所思的是，为什么不一开始就让机器人去取？以及为什么另一名宇航员干等着不跑向飞船导致自己最终牺牲？同样无法让人满意的还有Cooper和Dr Mann的打斗戏。</span></p>', 0, 2, '2018-05-16 17:19:54.740465', 1, 6, 0);
INSERT INTO `users_post` VALUES (32, '盗梦空间', '<p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><img src=\"/static/media/article/20180516/20180516172203513.jpg\" title=\"20180516/20180516172203513.jpg\" alt=\"20180516/20180516172203513.jpg\"/></span></p><p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">1. 首先，片中一共有六层世界。如果我们把片子中小组计划的现实世界作为参照物的话，按照做梦依次向上分别是：现实世界，第一层梦境，第二层梦境，第三层梦境，第四层梦境，limbo（迷失域）。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">2. 正常人活动在现实世界，做梦的时候在第一层梦境。如果要进入第二层梦境，也就是梦里的梦，必须要服用一般性药物。在服用一般性药物的情况下，要从梦中醒来（不管是第一层还是第二层）有两种方法：第一种就是所谓的‘kick’，也就是重力下坠的冲击。第二种就是被杀死。当然，等药物效果过期也是一种不是办法的办法。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">3. 如果要进入第三层梦境，也就是梦里的梦里的梦，一般性药物就无效了，必须要加强型药物。但是加强型药物的副作用是如果在梦里被杀死不能醒来，而会进入Limbo（后面解释什么是limbo），所以只能用 Kick的方式来苏醒。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">4. 所谓的Synchronize a kick （协同刺激），也就是说要在各层同时刺激才能把梦中人唤醒。比如说对于在第四层梦境活动的人需要在第一至四层同时Kick（刺激）才能使其在第一层苏醒；如果只在第三和第四层Kick（刺激）则其会在第三层苏醒；而如果中间有某层没有同时Kick（刺激），比如只在第一，第二和第四层Kick（刺激）或者只在第一和第二层Kick（刺激），则活动在第四层的梦中人不会苏醒，这也就是所谓的Miss a kick （错过刺激）。所以当片中小组计划侵入深层梦境的时候，每一层必须留人醒着负责Kick（刺激），而且用音乐的结束来协调同时Kick（刺激）的时刻。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">5. 层与层之间的时间以大约二十倍的数量延缓。在台词中给出的约数是现实世界十小时的航班，在第一层梦境是大约一个星期，在第二层梦境是大约六个月，而在第三层梦境是大约十年。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">6. Inception的片名，直译是开启，在电影里面是一个盗梦术语，不是指在梦中偷窃情报，而是指把某种想法植入目标人物使得他觉得这想法是自己本来就有的。而Inception必须至少要在第三层完成。这是有原因的，我们可以在片中目标人物的梦中看到，第一层梦境很浅，意识很多，是整个城市，第二层是一个酒店，到了第三层只有白茫茫大雪里的一个堡垒。在意识越少的梦境里面植入效果越强。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">7. 每个梦都有一个梦主（Dreamer），他和别人分享自己的梦境。梦境中的场景可以由专门的设计师设计然后告诉梦主的，所以设计师不一定是梦主。理论上来说进入这个梦境的人都会带来自己的一些意识投影，但是除了目标人物之外其他人都知道自己在做梦所以意志不会被迷惑。而设计师设计的梦境不能太离谱有不现实的场景，否则目标人物就会意识到自己在做梦，他的投影会对侵入到他梦境的其他人发动进攻。当然，如果目标人物的投影是经过特殊防盗梦训练的话，即使梦境场景很真实侵入者也会被投影围攻。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">8. 迷失域（Limbo）不是一个梦境，也不因人而异。只有在服用加强型药物而且又在梦境中死去时才能进入。Limbo里面时间无穷尽。而且这个世界里只有之前到过这里的人留下的一些场景碎片，在日本人去之前只有leo夫妇到过，所以开头结尾日本人的迷失域里的房子和之前leo对他进行盗梦时给他造的一样。进到迷失域里面如果死亡会回到现实，但是问题是在迷失域记忆会丧失记不得这种方法，所以进入迷失域是不得已的选择。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">9. 梦可以嫁接。也就是说A，B进入C的第一层梦境（这一层的梦主为C）之后B可以带A进入B的第二层梦境（这一层的梦主为B）。</span></p>', 0, 2, '2018-05-16 17:22:06.469617', 1, 6, 0);
INSERT INTO `users_post` VALUES (33, 'The Avengers', '<p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"><img src=\"/static/media/article/20180516/20180516172408746.jpg\" title=\"20180516/20180516172408746.jpg\" alt=\"20180516/20180516172408746.jpg\"/></span></p><p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">美国队长上映时，我去刷过两次，一来因为宣传期就非常钦佩队长亲的那身腱子肉，二来我对队长亲知之甚少，但还依稀记得神奇四侠时霹雳火的脸蛋儿挺美。（在《你上过几个》里面克里斯亲也出现了，但是那时我的注意力都集中在潮爷身上，几乎没有印象。）</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">长久以来，我的低俗审美观一直推崇的，是有着漂亮脸蛋儿和壮观胸大肌的男士们。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">刷完归来非常兴奋，因为除了队长的胸肌外，觉得收获颇丰。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">友邻给这部片子的打分基本都不高这点，并没能阻止我的盲目热血，于是我认为再去电影院重温队长的生平事迹很有必要。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">最后算来我大概看过五遍左右，而且一直觉得很好看，且并不是因为红骷髅雨果蜀黍军装好帅（其实我可喜欢红骷髅的衣服呢）。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">前几天看妇联归来，翻了翻影评，不少说队长能力最弱的，且毫无看点，无须多费口舌。回想起来，妇联里他的超能力一次特写…好像是抓着盾牌弹飞了基基。当然，如果只是看单纯的能力强大，记得某超好卖系列里的Beyonder（是这个名字吧）仿佛最强，超出漫威其他人物无数倍，或者DC的超人，他至少徒手挡住导弹，还可以飞。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">队长似乎只是个被拿来生物改造过的超级战士，在2012年的现在，还是个谈话搞不清笑点的出土古董，妮妮和绿胖教授在高端洋气地操作程序时，他只能非常迷茫地围观，所以，有人替他忧伤，觉得其存在价值已经要打个折扣了，太伤感。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">我依稀记得，去年美队的电影里有这样一幕。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">挑选战士去做改造实验时，先是朝那堆正在训练的士兵里扔了个手榴弹，然后其他人都非常惊惶，只有罗杰斯毫不迟疑地冲上去，一把抱住那手榴弹，蜷成一团。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">那时候他当然还不是队长，甚至比普通士兵更为瘦弱。按照漫画设定，遇到核辐射的正义英雄也许会被改造，被蜘蛛咬一口的正义英雄就会飞檐走壁，但是，我是说如果，那枚手榴弹是真的，它会爆炸，而士兵罗杰斯也不会成为什么手榴弹侠，他会被炸成很多块儿——我不知道这能不能给他赢个奖章，毕竟他甚至还没正式上过战场。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">用自己的身子包住手榴弹的史蒂夫.罗杰斯只是个普通人。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">在后巷里被人一顿胖揍，被当做笑料的家伙。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">诸君，截止目前我们说的都是身为普通人的罗杰斯，他没有那身漂亮的腱子肉，也没有作为标志的盾牌。他是个瘦弱不堪，脸蛋姑且算过的去，但是安在那样的身体上还是觉得多少有点娘炮且卑琐可怜的家伙。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">从某种常见情况来说，很多硬件不足先天失衡还要被人欺凌的，要么对这个世界充满仇恨想要报复，要么打算冷眼旁观这丑恶世间。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">蹦着还想参军去打败纳粹的，可不多见。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">毫不迟疑地能够牺牲自己保护其他人的，更不多见。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">所以你知道，他为什么能成为传说中的第一个正义英雄——不是运气，而是因为他有这样的资格。并不是说，随便从军队里抓一个家伙丢进实验容器，出来的那位马上就能光着脚追着纳粹特工狂奔好几条街。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">很多家伙们，就算拥有同样能力，丢块队长的盾牌给他，他做的并不比当年罗杰斯在后巷抓着垃圾桶盖好多少。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">美队片子的最后，罗杰斯驾着战机坠落在茫茫冰原。</span><br style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">一个约会，迟了七十多年。最终是没有等到。</span></p>', 0, 11, '2018-05-16 17:24:00.000000', 1, 3, 1);

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$36000$W6ACBPc0ckT1$RAo36HCpmOpbUx+RylBMluuLZDOz3PoZZVzx3WR4C4E=', '2018-05-18 14:12:27.158281', 1, 'yang', '', '', '1111@qq.com', 1, 1, '2018-05-15 11:41:00.000000', 'sky', '2011-02-10', 'male', '中国', '2222222', 'image/2018/05/zi.png');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$36000$Zz54dAwwsOoQ$NsDrIie2PTP0aaSpesqoJLKuqjL5XPoglDJRbXqq8c4=', '2018-05-16 14:52:43.609611', 0, 'Python', '', '', '2222@qq.com', 0, 1, '2018-05-16 14:40:00.000000', 'daisy', '2000-09-09', 'female', 'China', '2222222', 'image/2018/05/zi02_mf3pq83.jpg');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_us_permission_id_393136b6_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2018-05-15 11:43:29.929849', '127.0.0.1', '1', 'Django', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (2, '2018-05-15 11:43:41.465802', '127.0.0.1', '2', 'Flask', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (3, '2018-05-15 11:43:52.152991', '127.0.0.1', '3', 'Scrapy', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (4, '2018-05-15 11:43:57.812106', '127.0.0.1', '4', 'Linux', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (5, '2018-05-15 11:44:04.731189', '127.0.0.1', '5', 'Mysql', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (6, '2018-05-15 11:44:19.103692', '127.0.0.1', '6', 'Python', 'create', '已添加。', 14, 1);
INSERT INTO `xadmin_log` VALUES (7, '2018-05-15 23:08:51.159743', '127.0.0.1', '6', '欧美电影', 'change', '修改 name', 14, 1);
INSERT INTO `xadmin_log` VALUES (8, '2018-05-15 23:09:09.906114', '127.0.0.1', '5', '香港电影', 'change', '修改 name', 14, 1);
INSERT INTO `xadmin_log` VALUES (9, '2018-05-15 23:09:21.442722', '127.0.0.1', '4', '美剧', 'change', '修改 name', 14, 1);
INSERT INTO `xadmin_log` VALUES (10, '2018-05-15 23:10:04.693675', '127.0.0.1', '3', '漫威', 'change', '修改 name', 14, 1);
INSERT INTO `xadmin_log` VALUES (11, '2018-05-15 23:10:32.706646', '127.0.0.1', '2', '国语电影', 'change', '修改 name', 14, 1);
INSERT INTO `xadmin_log` VALUES (12, '2018-05-15 23:11:30.622372', '127.0.0.1', '1', '国产剧', 'change', '修改 name', 14, 1);
INSERT INTO `xadmin_log` VALUES (13, '2018-05-16 11:43:14.443057', '127.0.0.1', '12', '第一颗原子弹爆炸成功', 'delete', '', 13, 1);
INSERT INTO `xadmin_log` VALUES (14, '2018-05-16 11:43:21.197653', '127.0.0.1', '11', '地球的地质等基础结构', 'delete', '', 13, 1);
INSERT INTO `xadmin_log` VALUES (15, '2018-05-16 11:43:26.564281', '127.0.0.1', '10', '人类还未开始向外探索', 'delete', '', 13, 1);
INSERT INTO `xadmin_log` VALUES (16, '2018-05-16 11:43:32.157382', '127.0.0.1', '9', '恒星密度', 'delete', '', 13, 1);
INSERT INTO `xadmin_log` VALUES (17, '2018-05-16 11:43:36.744932', '127.0.0.1', '8', '宇宙有多空旷？', 'delete', '', 13, 1);
INSERT INTO `xadmin_log` VALUES (18, '2018-05-16 11:43:41.923213', '127.0.0.1', '7', '假如只是消灭了地球生物', 'delete', '', 13, 1);
INSERT INTO `xadmin_log` VALUES (19, '2018-05-16 11:43:47.761438', '127.0.0.1', '6', '比载人登月提前了24年', 'delete', '', 13, 1);
INSERT INTO `xadmin_log` VALUES (20, '2018-05-16 11:43:53.540063', '127.0.0.1', '5', '第一颗原子弹爆炸成功', 'delete', '', 13, 1);
INSERT INTO `xadmin_log` VALUES (21, '2018-05-16 11:43:58.993740', '127.0.0.1', '4', '秒速五厘米', 'delete', '', 13, 1);
INSERT INTO `xadmin_log` VALUES (22, '2018-05-16 11:44:04.342939', '127.0.0.1', '3', '社交恐惧症', 'delete', '', 13, 1);
INSERT INTO `xadmin_log` VALUES (23, '2018-05-16 11:44:08.942216', '127.0.0.1', '2', '复仇者联盟', 'delete', '', 13, 1);
INSERT INTO `xadmin_log` VALUES (24, '2018-05-16 11:44:15.297531', '127.0.0.1', '1', '你触碰了我', 'delete', '', 13, 1);
INSERT INTO `xadmin_log` VALUES (25, '2018-05-16 12:57:21.856717', '127.0.0.1', '1', 'yang', 'change', '修改 last_login，nick_name，gender，address 和 image', 11, 1);
INSERT INTO `xadmin_log` VALUES (26, '2018-05-16 14:40:15.593027', '127.0.0.1', '2', 'Python', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (27, '2018-05-16 14:41:02.205948', '127.0.0.1', '2', 'Python', 'change', '修改 nick_name，address 和 image', 11, 1);
INSERT INTO `xadmin_log` VALUES (28, '2018-05-16 14:42:00.194384', '127.0.0.1', '2', 'Python', 'change', '修改 email 和 image', 11, 1);
INSERT INTO `xadmin_log` VALUES (29, '2018-05-16 16:38:30.641591', '127.0.0.1', '30', '钢铁侠 Iron Man', 'change', '修改 is_essence', 13, 1);
INSERT INTO `xadmin_log` VALUES (30, '2018-05-16 16:38:37.527716', '127.0.0.1', '29', '银翼杀手2049', 'change', '修改 is_essence', 13, 1);
INSERT INTO `xadmin_log` VALUES (31, '2018-05-16 16:38:47.300709', '127.0.0.1', '27', '踏雪寻梅', 'change', '修改 is_essence', 13, 1);
INSERT INTO `xadmin_log` VALUES (32, '2018-05-16 16:50:10.542039', '127.0.0.1', '1', '01', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (33, '2018-05-16 16:50:27.945412', '127.0.0.1', '2', '02', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (34, '2018-05-16 16:50:40.027591', '127.0.0.1', '3', '03', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (35, '2018-05-16 17:16:36.531223', '127.0.0.1', '1', '复仇者联盟', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (36, '2018-05-16 17:25:41.865257', '127.0.0.1', '2', '星际穿越', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (37, '2018-05-16 17:26:06.738733', '127.0.0.1', '3', '盗梦空间', 'create', '已添加。', 15, 1);
INSERT INTO `xadmin_log` VALUES (38, '2018-05-16 17:26:36.459981', '127.0.0.1', '1', 'The Avengers', 'change', '修改 title，image 和 tie', 15, 1);
INSERT INTO `xadmin_log` VALUES (39, '2018-05-16 17:52:48.550400', '127.0.0.1', '33', 'The Avengers', 'change', '修改 is_essence', 13, 1);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
