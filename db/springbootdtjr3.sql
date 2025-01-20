/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : springbootdtjr3

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 25/11/2020 10:48:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复',
  `isreply` int(11) NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606272255969 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客服聊天表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (1, '2020-11-25 08:56:27', 1, 1, '提问1', '回复1', 1);
INSERT INTO `chat` VALUES (2, '2020-11-25 08:56:27', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (3, '2020-11-25 08:56:27', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (1606266640426, '2020-11-25 09:10:39', 1606266373744, NULL, '125465454', NULL, 0);
INSERT INTO `chat` VALUES (1606266832656, '2020-11-25 09:13:51', 1606266373744, 1, NULL, 'fdsafdsaf', NULL);
INSERT INTO `chat` VALUES (1606272172627, '2020-11-25 10:42:52', 1606271610457, NULL, 'fdsaf dsafds fds fdsa fdsa ', NULL, 0);
INSERT INTO `chat` VALUES (1606272173453, '2020-11-25 10:42:52', 1606271610457, NULL, 'fdsaf dsafds fds fdsa fdsa ', NULL, 0);
INSERT INTO `chat` VALUES (1606272175662, '2020-11-25 10:42:54', 1606271610457, NULL, 'fdsaf dsafds fds fdsa fdsa ', NULL, 0);
INSERT INTO `chat` VALUES (1606272255968, '2020-11-25 10:44:15', 1606271610457, 1, NULL, '4324234234234234324324', NULL);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/springbootdtjr3/upload/1606271833640.png');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/springbootdtjr3/upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/springbootdtjr3/upload/picture3.jpg');
INSERT INTO `config` VALUES (4, 'picture4', 'http://localhost:8080/springbootdtjr3/upload/1606271842858.png');
INSERT INTO `config` VALUES (5, 'picture5', 'http://localhost:8080/springbootdtjr3/upload/1606271860958.png');
INSERT INTO `config` VALUES (6, 'homepage', 'http://localhost:8080/springbootdtjr3/upload/1606271873700.png');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) NULL DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606272131516 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '论坛表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (1606266584301, '2020-11-25 09:09:43', 'dsadsad', '<p>dsaDSADSAD</p>', 0, 1606266373744, '123', '开放');
INSERT INTO `forum` VALUES (1606266772236, '2020-11-25 09:12:51', NULL, 'fdsafdsaf', 1606266584301, 1606266373744, '123', NULL);
INSERT INTO `forum` VALUES (1606272118804, '2020-11-25 10:41:57', 'fdsaf dsa fds', '<p>dsa fdsa fds fds fdssa&nbsp;</p>', 0, 1606271610457, '111', '开放');
INSERT INTO `forum` VALUES (1606272131515, '2020-11-25 10:42:11', NULL, '256556565656', 1606266584301, 1606271610457, '111', NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606271060338 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1606270374792, '2020-11-25 10:12:54', '最新资讯', 'http://localhost:8080/springbootdtjr3/upload/1606271888618.jpg', '<p>范德萨和反抗精神大反馈了就是打开了发生的卡垃圾发快乐圣诞节啊分开了大厦发快乐圣诞节克劳福德是<img src=\"http://localhost:8080/springbootdtjr3/upload/1606271893992.jpg\"></p>');
INSERT INTO `news` VALUES (1606270393894, '2020-11-25 10:13:13', '最新公告', 'http://localhost:8080/springbootdtjr3/upload/1606271902179.jpg', '<p>发撒方便大家咖啡可是大家爱看法律上的卡拉分类刷卡大家反抗类毒素解放离开的撒娇埃里克发的撒娇<img src=\"http://localhost:8080/springbootdtjr3/upload/1606271907599.jpg\"></p>');
INSERT INTO `news` VALUES (1606271060337, '2020-11-25 10:24:19', '安全意识', 'http://localhost:8080/springbootdtjr3/upload/1606271925876.jpg', '<p>发生艰苦奋斗沙克啦发开绿灯撒付款的撒娇十大科技反抗精神大和付款节点是否会计师发大水空间付款节点是否空间但是罚款决定书看犯得上看见发但是<img src=\"http://localhost:8080/springbootdtjr3/upload/1606271932545.jpg\"></p>');

-- ----------------------------
-- Table structure for shebei
-- ----------------------------
DROP TABLE IF EXISTS `shebei`;
CREATE TABLE `shebei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shebeibianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备名称',
  `shuliang` int(11) NULL DEFAULT NULL COMMENT '数量',
  `weizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `xiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shebeibianhao`(`shebeibianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606270937833 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设备' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shebei
-- ----------------------------
INSERT INTO `shebei` VALUES (1606270006480, '2020-11-25 10:06:46', '1606269955643', '电子秤', 10, '异化楼02楼', 'http://localhost:8080/springbootdtjr3/upload/1606271711317.jpg', '<p>房产税但反抗军的撒看发觉得萨卡了反抗军的撒反抗军撒旦吉安卡罗附件是打开附件昆仑山搭街坊昆仑山大家啊富士达<img src=\"http://localhost:8080/springbootdtjr3/upload/1606271716922.jpg\"></p>');
INSERT INTO `shebei` VALUES (1606270181132, '2020-11-25 10:09:40', '1606270142012', '电流表', 10, '异化楼02楼', 'http://localhost:8080/springbootdtjr3/upload/1606271738188.jpg', '<p>幅度萨芬活动就看撒发挥空间撒反抗军的撒将开放的接口撒谎反抗军的撒和的是咖啡色的 <img src=\"http://localhost:8080/springbootdtjr3/upload/1606271748201.jpg\"></p>');
INSERT INTO `shebei` VALUES (1606270937832, '2020-11-25 10:22:16', '1606270891244', '电阻', 28, '异化楼3楼', 'http://localhost:8080/springbootdtjr3/upload/1606271756432.jpg', '<p>范德萨房价肯定沙发看乐圣诞节卡了发的时刻垃圾发快乐圣诞节啊反抗类毒素看骄傲发生的卡就福克斯大家开发商的卡发动快速放大<img src=\"http://localhost:8080/springbootdtjr3/upload/1606271762625.jpg\"></p>');

-- ----------------------------
-- Table structure for shebeibaobei
-- ----------------------------
DROP TABLE IF EXISTS `shebeibaobei`;
CREATE TABLE `shebeibaobei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shebeibianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备名称',
  `shuliang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数量',
  `weizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置',
  `baobeineirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '报备内容',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `shenfen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份',
  `baobeishijian` date NULL DEFAULT NULL COMMENT '报备时间',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606272027304 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设备报备' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shebeibaobei
-- ----------------------------
INSERT INTO `shebeibaobei` VALUES (1, '2020-11-25 08:56:27', '设备编号1', '设备名称1', '数量1', '位置1', '报备内容1', '用户名1', '用户姓名1', '身份1', '2020-11-25', '否', '');
INSERT INTO `shebeibaobei` VALUES (2, '2020-11-25 08:56:27', '设备编号2', '设备名称2', '数量2', '位置2', '报备内容2', '用户名2', '用户姓名2', '身份2', '2020-11-25', '否', '');
INSERT INTO `shebeibaobei` VALUES (3, '2020-11-25 08:56:27', '设备编号3', '设备名称3', '数量3', '位置3', '报备内容3', '用户名3', '用户姓名3', '身份3', '2020-11-24', '是', '幅度萨芬');
INSERT INTO `shebeibaobei` VALUES (1606266537068, '2020-11-25 09:08:56', '1606266584113', 'fsafsdf', '5', 'fsafsdaf', '<p>dsaDSAdsaDSADASdsaD</p>', '123', 'huji', '教师', '2020-11-23', '是', 'fdsafdsaf');
INSERT INTO `shebeibaobei` VALUES (1606272027303, '2020-11-25 10:40:26', '1606270891244', '电阻', '30', '异化楼3楼', '<p>fdshafdslkafjdksa fkldsjkfsdk d&nbsp;</p>', '111', '李月', '学生', '2020-11-23', '是', '132');

-- ----------------------------
-- Table structure for shebeishenqing
-- ----------------------------
DROP TABLE IF EXISTS `shebeishenqing`;
CREATE TABLE `shebeishenqing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shebeibianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备名称',
  `shuliang` int(11) NULL DEFAULT NULL COMMENT '数量',
  `shenqingliyou` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '申请理由',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `shenfen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `shenqingshijian` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606272052851 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '设备申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shebeishenqing
-- ----------------------------
INSERT INTO `shebeishenqing` VALUES (1, '2020-11-25 08:56:27', '设备编号1', '设备名称1', 1, '申请理由1', '用户名1', '用户姓名1', '身份1', '联系电话1', '2020-11-25 08:56:27', '否', '');
INSERT INTO `shebeishenqing` VALUES (2, '2020-11-25 08:56:27', '设备编号2', '设备名称2', 2, '申请理由2', '用户名2', '用户姓名2', '身份2', '联系电话2', '2020-11-25 08:56:27', '否', '');
INSERT INTO `shebeishenqing` VALUES (3, '2020-11-25 08:56:27', '设备编号3', '设备名称3', 3, '申请理由3', '用户名3', '用户姓名3', '身份3', '联系电话3', '2020-11-25 08:56:27', '是', '幅度萨芬');
INSERT INTO `shebeishenqing` VALUES (1606266550393, '2020-11-25 09:09:10', '1606266584113', 'fsafsdf', 1, '<p>DASdasdsadSADSADSAD</p>', '123', 'huji', '教师', '12345678978', '2020-11-25 01:14:10', '是', 'fsdafdsaf');
INSERT INTO `shebeishenqing` VALUES (1606272052850, '2020-11-25 10:40:52', '1606270891244', '电阻', 2, '<p>fdsajfdksjlfkldsj kfldsjk fjsd&nbsp;</p>', '111', '李月', '学生', '123456787978', '2020-11-25 02:40:35', '是', '34e24');

-- ----------------------------
-- Table structure for shiyanshi
-- ----------------------------
DROP TABLE IF EXISTS `shiyanshi`;
CREATE TABLE `shiyanshi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shiyanshibianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验室编号',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `rongnarenshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '容纳人数',
  `weizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置',
  `xiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shiyanshibianhao`(`shiyanshibianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606270848207 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实验室' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shiyanshi
-- ----------------------------
INSERT INTO `shiyanshi` VALUES (1606269715354, '2020-11-25 10:01:54', 'a01', 'http://localhost:8080/springbootdtjr3/upload/1606271654392.jpg', '20', '玉华楼2楼', '<p>法撒旦解放肯德基撒反抗军的撒看积分撒旦克里夫空间的沙发上放大发士大夫打撒幅度萨芬d\'sadsa<img src=\"http://localhost:8080/springbootdtjr3/upload/1606271660504.jpg\"></p>');
INSERT INTO `shiyanshi` VALUES (1606269938985, '2020-11-25 10:05:38', 'Bo2', 'http://localhost:8080/springbootdtjr3/upload/1606271673766.jpg', '20', '精华楼3楼', '<p>发撒不分开觉得萨卡反抗军撒发吉萨家副书记阿富汗就是扩大飞机上的飞机的时间防水等级附件是打开反抗精神大发教科书的封建士大夫精神的急啊看<img src=\"http://localhost:8080/springbootdtjr3/upload/1606271681587.jpg\"></p>');
INSERT INTO `shiyanshi` VALUES (1606270848206, '2020-11-25 10:20:48', 'r12', 'http://localhost:8080/springbootdtjr3/upload/1606271692284.jpg', '20', '异化楼3楼', '<p>范德萨发大水考虑反抗军的撒防空雷达技术卡发觉得萨卡反馈开绿灯撒看了发觉得萨卡了发觉得萨卡啦就减肥的<img src=\"http://localhost:8080/springbootdtjr3/upload/1606271697952.jpg\"></p>');

-- ----------------------------
-- Table structure for shiyanshishenqing
-- ----------------------------
DROP TABLE IF EXISTS `shiyanshishenqing`;
CREATE TABLE `shiyanshishenqing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `shiyanshibianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实验室编号',
  `weizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `shenfen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `beizhu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `shenqingshijian` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606272013155 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实验室申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shiyanshishenqing
-- ----------------------------
INSERT INTO `shiyanshishenqing` VALUES (1, '2020-11-25 08:56:27', '实验室编号1', '位置1', '用户名1', '用户姓名1', '身份1', '联系电话1', '备注1', '2020-11-25 08:56:27', '否', '');
INSERT INTO `shiyanshishenqing` VALUES (2, '2020-11-25 08:56:27', '实验室编号2', '位置2', '用户名2', '用户姓名2', '身份2', '联系电话2', '备注2', '2020-11-25 08:56:27', '否', '');
INSERT INTO `shiyanshishenqing` VALUES (3, '2020-11-25 08:56:27', '实验室编号3', '位置3', '用户名3', '用户姓名3', '身份3', '联系电话3', '备注3', '2020-11-25 08:56:27', '否', '');
INSERT INTO `shiyanshishenqing` VALUES (1606266438795, '2020-11-25 09:07:18', 'fdsafdsf', 'fdsafdsaf', '123', 'huji', '教师', '12345678978', '<p>请输入备注fsdafsdafsdafsdafsdfsdafsdafsdfsdafdsfsdfsdafdsafsdfsdfsdafsdafdsaffsdafsdaf</p>', '2020-11-25 01:12:12', '是', '范德萨范德萨');
INSERT INTO `shiyanshishenqing` VALUES (1606266520763, '2020-11-25 09:08:39', 'fdsafdsf', 'fdsafdsaf', '123', 'huji', '教师', '12345678978', '<p>请输入备注saDSADASdsad</p>', '2020-11-25 01:13:45', '是', 'dsafdsaf');
INSERT INTO `shiyanshishenqing` VALUES (1606272013154, '2020-11-25 10:40:12', 'r12', '异化楼3楼', '111', '李月', '学生', '123456787978', '<p>fdsanfjkdsj klfjdskla fjdsklaj fklsdaj fkldsj kafjdskljfkdsj kfds&nbsp;</p>', '2020-11-25 02:40:06', '是', '11');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', 'rwx9uk2h33dosiea7hv3yzg2o19k5oqi', '2020-11-25 09:03:56', '2020-11-25 03:43:10');
INSERT INTO `token` VALUES (2, 1606266373744, '123', 'yonghu', '用户', '9egxtdu8p7w53y5efhhbzkrcwzh3y5kk', '2020-11-25 09:06:21', '2020-11-25 02:14:04');
INSERT INTO `token` VALUES (3, 1606271610457, '111', 'yonghu', '用户', 'mwbxm9mxuqhqz2zdaqrldi92k03as06s', '2020-11-25 10:33:38', '2020-11-25 03:44:48');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2020-11-25 08:56:27');

-- ----------------------------
-- Table structure for xiaohaopin
-- ----------------------------
DROP TABLE IF EXISTS `xiaohaopin`;
CREATE TABLE `xiaohaopin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `xiaohaopinbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消耗品编号',
  `xiaohaopinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消耗品名称',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) NULL DEFAULT NULL COMMENT '数量',
  `weizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置',
  `xiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详情',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xiaohaopinbianhao`(`xiaohaopinbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606270980246 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消耗品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiaohaopin
-- ----------------------------
INSERT INTO `xiaohaopin` VALUES (1606270247805, '2020-11-25 10:10:46', '1606270197702', '硝酸', 'http://localhost:8080/springbootdtjr3/upload/1606271772295.jpg', 30, '异化楼02楼', '<p>发撒步伐加快大厦附件艰苦大师傅扩大付款的根本福克斯大家反馈上岛咖啡技术的卡了积分看电视剧反抗类毒素解放宽带数据卡发觉得萨卡房价的看法健康大<img src=\"http://localhost:8080/springbootdtjr3/upload/1606271777468.jpg\"></p>');
INSERT INTO `xiaohaopin` VALUES (1606270285242, '2020-11-25 10:11:24', '1606270250075', '量筒', 'http://localhost:8080/springbootdtjr3/upload/1606271786769.jpg', 80, '异化楼02楼', '<p>发撒接口返回的是安康解放军开绿灯撒积分大厦防空雷达技术打开骄傲罚款决定书就奥卡福酒店开房纪录看到离开<img src=\"http://localhost:8080/springbootdtjr3/upload/1606271792767.jpg\"></p>');
INSERT INTO `xiaohaopin` VALUES (1606270980245, '2020-11-25 10:22:59', '1606270943497', '注射器', 'http://localhost:8080/springbootdtjr3/upload/1606271802566.jpg', 100, '异化楼03楼', '<p>放大模具费框架搭建撒离开角度上考虑啊飞机打瞌睡垃圾啊风口浪尖的撒离开附件打开撒娇发开绿灯撒就付款了大家按时发觉得萨卡就福克斯大家付款的撒娇分开了大厦就<img src=\"http://localhost:8080/springbootdtjr3/upload/1606271808615.jpg\"></p>');

-- ----------------------------
-- Table structure for xiaohaopinlingqu
-- ----------------------------
DROP TABLE IF EXISTS `xiaohaopinlingqu`;
CREATE TABLE `xiaohaopinlingqu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `xiaohaopinbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消耗品编号',
  `xiaohaopinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消耗品名称',
  `shuliang` int(11) NULL DEFAULT NULL COMMENT '数量',
  `lingquliyou` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '领取理由',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `shenfen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `shenqingshijian` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606272089084 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消耗品领取' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiaohaopinlingqu
-- ----------------------------
INSERT INTO `xiaohaopinlingqu` VALUES (1, '2020-11-25 08:56:27', '消耗品编号1', '消耗品名称1', 1, '领取理由1', '用户名1', '用户姓名1', '身份1', '联系电话1', '2020-11-25 08:56:27', '否', '');
INSERT INTO `xiaohaopinlingqu` VALUES (2, '2020-11-25 08:56:27', '消耗品编号2', '消耗品名称2', 2, '领取理由2', '用户名2', '用户姓名2', '身份2', '联系电话2', '2020-11-25 08:56:27', '否', '');
INSERT INTO `xiaohaopinlingqu` VALUES (3, '2020-11-25 08:56:27', '消耗品编号3', '消耗品名称3', 3, '领取理由3', '用户名3', '用户姓名3', '身份3', '联系电话3', '2020-11-25 08:56:27', '否', '');
INSERT INTO `xiaohaopinlingqu` VALUES (1606266573025, '2020-11-25 09:09:32', '1606266605665', 'fsafsdfsda', 2, '<p>SADASdasdsad</p>', '123', 'huji', '教师', '12345678978', '2020-11-25 01:14:30', '是', 'fdasfdsaf');
INSERT INTO `xiaohaopinlingqu` VALUES (1606272089083, '2020-11-25 10:41:28', '1606270250075', '量筒', 20, '<p>56454545</p>', '111', '李月', '学生', '123456787978', '2020-11-25 02:41:19', '是', '4e234324');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shenfen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1606271610458 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, '2020-11-25 08:56:27', '用户1', '用户姓名1', '123456', '男', '学生', '13823888881', '773890001@qq.com');
INSERT INTO `yonghu` VALUES (2, '2020-11-25 08:56:27', '用户2', '用户姓名2', '123456', '男', '学生', '13823888882', '773890002@qq.com');
INSERT INTO `yonghu` VALUES (3, '2020-11-25 08:56:27', '用户3', '用户姓名3', '123456', '男', '学生', '13823888883', '773890003@qq.com');
INSERT INTO `yonghu` VALUES (1606266373744, '2020-11-25 09:06:13', '123', 'huji', '123', '男', '教师', '12345678978', '45455@qq.com');
INSERT INTO `yonghu` VALUES (1606271610457, '2020-11-25 10:33:30', '111', '李月', '111', '男', '学生', '123456787978', '526596586@qqcom');

SET FOREIGN_KEY_CHECKS = 1;
