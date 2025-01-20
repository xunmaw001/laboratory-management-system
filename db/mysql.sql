DROP DATABASE IF EXISTS springbootdtjr3;

CREATE DATABASE springbootdtjr3 default character set utf8mb4 collate utf8mb4_general_ci;

USE springbootdtjr3;

DROP TABLE IF EXISTS `shiyanshi`;

CREATE TABLE `shiyanshi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shiyanshibianhao` varchar(200)  UNIQUE   COMMENT '实验室编号',
	`tupian` varchar(200)    COMMENT '图片',
	`rongnarenshu` varchar(200)    COMMENT '容纳人数',
	`weizhi` varchar(200)    COMMENT '位置',
	`xiangqing` longtext    COMMENT '详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='实验室';

INSERT INTO shiyanshi(shiyanshibianhao,tupian,rongnarenshu,weizhi,xiangqing) VALUES('实验室编号1','http://localhost:8080/springbootdtjr3/upload/shiyanshi_tupian1.jpg','容纳人数1','位置1','详情1');
INSERT INTO shiyanshi(shiyanshibianhao,tupian,rongnarenshu,weizhi,xiangqing) VALUES('实验室编号2','http://localhost:8080/springbootdtjr3/upload/shiyanshi_tupian2.jpg','容纳人数2','位置2','详情2');
INSERT INTO shiyanshi(shiyanshibianhao,tupian,rongnarenshu,weizhi,xiangqing) VALUES('实验室编号3','http://localhost:8080/springbootdtjr3/upload/shiyanshi_tupian3.jpg','容纳人数3','位置3','详情3');

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`yonghuming` varchar(200)  UNIQUE   COMMENT '用户名',
	`yonghuxingming` varchar(200)    COMMENT '用户姓名',
	`mima` varchar(200)    COMMENT '密码',
	`xingbie` varchar(200)    COMMENT '性别',
	`shenfen` varchar(200)    COMMENT '身份',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`youxiang` varchar(200)    COMMENT '邮箱',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(yonghuming,yonghuxingming,mima,xingbie,shenfen,lianxidianhua,youxiang) VALUES('用户1','用户姓名1','123456','男','学生','13823888881','773890001@qq.com');
INSERT INTO yonghu(yonghuming,yonghuxingming,mima,xingbie,shenfen,lianxidianhua,youxiang) VALUES('用户2','用户姓名2','123456','男','学生','13823888882','773890002@qq.com');
INSERT INTO yonghu(yonghuming,yonghuxingming,mima,xingbie,shenfen,lianxidianhua,youxiang) VALUES('用户3','用户姓名3','123456','男','学生','13823888883','773890003@qq.com');

DROP TABLE IF EXISTS `shiyanshishenqing`;

CREATE TABLE `shiyanshishenqing` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shiyanshibianhao` varchar(200)    COMMENT '实验室编号',
	`weizhi` varchar(200)    COMMENT '位置',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`yonghuxingming` varchar(200)    COMMENT '用户姓名',
	`shenfen` varchar(200)    COMMENT '身份',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`beizhu` longtext    COMMENT '备注',
	`shenqingshijian` datetime    COMMENT '申请时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='实验室申请';

INSERT INTO shiyanshishenqing(shiyanshibianhao,weizhi,yonghuming,yonghuxingming,shenfen,lianxidianhua,beizhu,shenqingshijian,sfsh,shhf) VALUES('实验室编号1','位置1','用户名1','用户姓名1','身份1','联系电话1','备注1',CURRENT_TIMESTAMP,'否','');
INSERT INTO shiyanshishenqing(shiyanshibianhao,weizhi,yonghuming,yonghuxingming,shenfen,lianxidianhua,beizhu,shenqingshijian,sfsh,shhf) VALUES('实验室编号2','位置2','用户名2','用户姓名2','身份2','联系电话2','备注2',CURRENT_TIMESTAMP,'否','');
INSERT INTO shiyanshishenqing(shiyanshibianhao,weizhi,yonghuming,yonghuxingming,shenfen,lianxidianhua,beizhu,shenqingshijian,sfsh,shhf) VALUES('实验室编号3','位置3','用户名3','用户姓名3','身份3','联系电话3','备注3',CURRENT_TIMESTAMP,'否','');

DROP TABLE IF EXISTS `shebei`;

CREATE TABLE `shebei` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shebeibianhao` varchar(200)  UNIQUE   COMMENT '设备编号',
	`shebeimingcheng` varchar(200)    COMMENT '设备名称',
	`shuliang` int    COMMENT '数量',
	`weizhi` varchar(200)    COMMENT '位置',
	`tupian` varchar(200)    COMMENT '图片',
	`xiangqing` longtext    COMMENT '详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备';

INSERT INTO shebei(shebeibianhao,shebeimingcheng,shuliang,weizhi,tupian,xiangqing) VALUES('设备编号1','设备名称1',1,'位置1','http://localhost:8080/springbootdtjr3/upload/shebei_tupian1.jpg','详情1');
INSERT INTO shebei(shebeibianhao,shebeimingcheng,shuliang,weizhi,tupian,xiangqing) VALUES('设备编号2','设备名称2',2,'位置2','http://localhost:8080/springbootdtjr3/upload/shebei_tupian2.jpg','详情2');
INSERT INTO shebei(shebeibianhao,shebeimingcheng,shuliang,weizhi,tupian,xiangqing) VALUES('设备编号3','设备名称3',3,'位置3','http://localhost:8080/springbootdtjr3/upload/shebei_tupian3.jpg','详情3');

DROP TABLE IF EXISTS `shebeibaobei`;

CREATE TABLE `shebeibaobei` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shebeibianhao` varchar(200)    COMMENT '设备编号',
	`shebeimingcheng` varchar(200)    COMMENT '设备名称',
	`shuliang` varchar(200)    COMMENT '数量',
	`weizhi` varchar(200)    COMMENT '位置',
	`baobeineirong` longtext    COMMENT '报备内容',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`yonghuxingming` varchar(200)    COMMENT '用户姓名',
	`shenfen` varchar(200)    COMMENT '身份',
	`baobeishijian` date    COMMENT '报备时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备报备';

INSERT INTO shebeibaobei(shebeibianhao,shebeimingcheng,shuliang,weizhi,baobeineirong,yonghuming,yonghuxingming,shenfen,baobeishijian,sfsh,shhf) VALUES('设备编号1','设备名称1','数量1','位置1','报备内容1','用户名1','用户姓名1','身份1',CURRENT_TIMESTAMP,'否','');
INSERT INTO shebeibaobei(shebeibianhao,shebeimingcheng,shuliang,weizhi,baobeineirong,yonghuming,yonghuxingming,shenfen,baobeishijian,sfsh,shhf) VALUES('设备编号2','设备名称2','数量2','位置2','报备内容2','用户名2','用户姓名2','身份2',CURRENT_TIMESTAMP,'否','');
INSERT INTO shebeibaobei(shebeibianhao,shebeimingcheng,shuliang,weizhi,baobeineirong,yonghuming,yonghuxingming,shenfen,baobeishijian,sfsh,shhf) VALUES('设备编号3','设备名称3','数量3','位置3','报备内容3','用户名3','用户姓名3','身份3',CURRENT_TIMESTAMP,'否','');

DROP TABLE IF EXISTS `shebeishenqing`;

CREATE TABLE `shebeishenqing` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shebeibianhao` varchar(200)    COMMENT '设备编号',
	`shebeimingcheng` varchar(200)    COMMENT '设备名称',
	`shuliang` int    COMMENT '数量',
	`shenqingliyou` longtext    COMMENT '申请理由',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`yonghuxingming` varchar(200)    COMMENT '用户姓名',
	`shenfen` varchar(200)    COMMENT '身份',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`shenqingshijian` datetime    COMMENT '申请时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备申请';

INSERT INTO shebeishenqing(shebeibianhao,shebeimingcheng,shuliang,shenqingliyou,yonghuming,yonghuxingming,shenfen,lianxidianhua,shenqingshijian,sfsh,shhf) VALUES('设备编号1','设备名称1',1,'申请理由1','用户名1','用户姓名1','身份1','联系电话1',CURRENT_TIMESTAMP,'否','');
INSERT INTO shebeishenqing(shebeibianhao,shebeimingcheng,shuliang,shenqingliyou,yonghuming,yonghuxingming,shenfen,lianxidianhua,shenqingshijian,sfsh,shhf) VALUES('设备编号2','设备名称2',2,'申请理由2','用户名2','用户姓名2','身份2','联系电话2',CURRENT_TIMESTAMP,'否','');
INSERT INTO shebeishenqing(shebeibianhao,shebeimingcheng,shuliang,shenqingliyou,yonghuming,yonghuxingming,shenfen,lianxidianhua,shenqingshijian,sfsh,shhf) VALUES('设备编号3','设备名称3',3,'申请理由3','用户名3','用户姓名3','身份3','联系电话3',CURRENT_TIMESTAMP,'否','');

DROP TABLE IF EXISTS `xiaohaopin`;

CREATE TABLE `xiaohaopin` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xiaohaopinbianhao` varchar(200)  UNIQUE   COMMENT '消耗品编号',
	`xiaohaopinmingcheng` varchar(200)    COMMENT '消耗品名称',
	`tupian` varchar(200)    COMMENT '图片',
	`shuliang` int    COMMENT '数量',
	`weizhi` varchar(200)    COMMENT '位置',
	`xiangqing` longtext    COMMENT '详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消耗品';

INSERT INTO xiaohaopin(xiaohaopinbianhao,xiaohaopinmingcheng,tupian,shuliang,weizhi,xiangqing) VALUES('消耗品编号1','消耗品名称1','http://localhost:8080/springbootdtjr3/upload/xiaohaopin_tupian1.jpg',1,'位置1','详情1');
INSERT INTO xiaohaopin(xiaohaopinbianhao,xiaohaopinmingcheng,tupian,shuliang,weizhi,xiangqing) VALUES('消耗品编号2','消耗品名称2','http://localhost:8080/springbootdtjr3/upload/xiaohaopin_tupian2.jpg',2,'位置2','详情2');
INSERT INTO xiaohaopin(xiaohaopinbianhao,xiaohaopinmingcheng,tupian,shuliang,weizhi,xiangqing) VALUES('消耗品编号3','消耗品名称3','http://localhost:8080/springbootdtjr3/upload/xiaohaopin_tupian3.jpg',3,'位置3','详情3');

DROP TABLE IF EXISTS `xiaohaopinlingqu`;

CREATE TABLE `xiaohaopinlingqu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xiaohaopinbianhao` varchar(200)    COMMENT '消耗品编号',
	`xiaohaopinmingcheng` varchar(200)    COMMENT '消耗品名称',
	`shuliang` int    COMMENT '数量',
	`lingquliyou` longtext    COMMENT '领取理由',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`yonghuxingming` varchar(200)    COMMENT '用户姓名',
	`shenfen` varchar(200)    COMMENT '身份',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`shenqingshijian` datetime    COMMENT '申请时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消耗品领取';

INSERT INTO xiaohaopinlingqu(xiaohaopinbianhao,xiaohaopinmingcheng,shuliang,lingquliyou,yonghuming,yonghuxingming,shenfen,lianxidianhua,shenqingshijian,sfsh,shhf) VALUES('消耗品编号1','消耗品名称1',1,'领取理由1','用户名1','用户姓名1','身份1','联系电话1',CURRENT_TIMESTAMP,'否','');
INSERT INTO xiaohaopinlingqu(xiaohaopinbianhao,xiaohaopinmingcheng,shuliang,lingquliyou,yonghuming,yonghuxingming,shenfen,lianxidianhua,shenqingshijian,sfsh,shhf) VALUES('消耗品编号2','消耗品名称2',2,'领取理由2','用户名2','用户姓名2','身份2','联系电话2',CURRENT_TIMESTAMP,'否','');
INSERT INTO xiaohaopinlingqu(xiaohaopinbianhao,xiaohaopinmingcheng,shuliang,lingquliyou,yonghuming,yonghuxingming,shenfen,lianxidianhua,shenqingshijian,sfsh,shhf) VALUES('消耗品编号3','消耗品名称3',3,'领取理由3','用户名3','用户姓名3','身份3','联系电话3',CURRENT_TIMESTAMP,'否','');

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(1,1,'提问1','回复1',1);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(2,2,'提问2','回复2',2);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(3,3,'提问3','回复3',3);

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200)    COMMENT '帖子标题',
	`content` longtext NOT NULL   COMMENT '帖子内容',
	`parentid` bigint    COMMENT '父节点id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`isdone` varchar(200)    COMMENT '状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论坛表';

INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题1','帖子内容1',1,1,'用户名1','开放');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题2','帖子内容2',2,2,'用户名2','开放');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题3','帖子内容3',3,3,'用户名3','开放');

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','http://localhost:8080/springbootdtjr3/upload/news_picture1.jpg','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','http://localhost:8080/springbootdtjr3/upload/news_picture2.jpg','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','http://localhost:8080/springbootdtjr3/upload/news_picture3.jpg','内容3');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/springbootdtjr3/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/springbootdtjr3/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/springbootdtjr3/upload/picture3.jpg');
insert into config(id,name,value) values(4,'picture4','http://localhost:8080/springbootdtjr3/upload/picture4.jpg');
insert into config(id,name,value) values(5,'picture5','http://localhost:8080/springbootdtjr3/upload/picture5.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

