/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmhydsk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmhydsk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmhydsk`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmhydsk/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmhydsk/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmhydsk/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusslvyoujingdian` */

DROP TABLE IF EXISTS `discusslvyoujingdian`;

CREATE TABLE `discusslvyoujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='旅游景点评论表';

/*Data for the table `discusslvyoujingdian` */

insert  into `discusslvyoujingdian`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (131,'2021-03-02 17:34:44',1,1,'评论内容1','回复内容1'),(132,'2021-03-02 17:34:44',2,2,'评论内容2','回复内容2'),(133,'2021-03-02 17:34:44',3,3,'评论内容3','回复内容3'),(134,'2021-03-02 17:34:44',4,4,'评论内容4','回复内容4'),(135,'2021-03-02 17:34:44',5,5,'评论内容5','回复内容5'),(136,'2021-03-02 17:34:44',6,6,'评论内容6','回复内容6');

/*Table structure for table `discusslvyoushangpin` */

DROP TABLE IF EXISTS `discusslvyoushangpin`;

CREATE TABLE `discusslvyoushangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='旅游商品评论表';

/*Data for the table `discusslvyoushangpin` */

insert  into `discusslvyoushangpin`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (121,'2021-03-02 17:34:44',1,1,'评论内容1','回复内容1'),(122,'2021-03-02 17:34:44',2,2,'评论内容2','回复内容2'),(123,'2021-03-02 17:34:44',3,3,'评论内容3','回复内容3'),(124,'2021-03-02 17:34:44',4,4,'评论内容4','回复内容4'),(125,'2021-03-02 17:34:44',5,5,'评论内容5','回复内容5'),(126,'2021-03-02 17:34:44',6,6,'评论内容6','回复内容6');

/*Table structure for table `discussxinwenzixun` */

DROP TABLE IF EXISTS `discussxinwenzixun`;

CREATE TABLE `discussxinwenzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='新闻资讯评论表';

/*Data for the table `discussxinwenzixun` */

insert  into `discussxinwenzixun`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (111,'2021-03-02 17:34:44',1,1,'评论内容1','回复内容1'),(112,'2021-03-02 17:34:44',2,2,'评论内容2','回复内容2'),(113,'2021-03-02 17:34:44',3,3,'评论内容3','回复内容3'),(114,'2021-03-02 17:34:44',4,4,'评论内容4','回复内容4'),(115,'2021-03-02 17:34:44',5,5,'评论内容5','回复内容5'),(116,'2021-03-02 17:34:44',6,6,'评论内容6','回复内容6');

/*Table structure for table `jingdianfenlei` */

DROP TABLE IF EXISTS `jingdianfenlei`;

CREATE TABLE `jingdianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianfenlei` varchar(200) DEFAULT NULL COMMENT '景点分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='景点分类';

/*Data for the table `jingdianfenlei` */

insert  into `jingdianfenlei`(`id`,`addtime`,`jingdianfenlei`) values (71,'2021-03-02 17:34:44','景点分类1'),(72,'2021-03-02 17:34:44','景点分类2'),(73,'2021-03-02 17:34:44','景点分类3'),(74,'2021-03-02 17:34:44','景点分类4'),(75,'2021-03-02 17:34:44','景点分类5'),(76,'2021-03-02 17:34:44','景点分类6');

/*Table structure for table `lvyoujingdian` */

DROP TABLE IF EXISTS `lvyoujingdian`;

CREATE TABLE `lvyoujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdianfenlei` varchar(200) NOT NULL COMMENT '景点分类',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdianxingji` varchar(200) DEFAULT NULL COMMENT '景点星级',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `menpiaojiage` int(11) NOT NULL COMMENT '门票价格',
  `yingyeshijian` varchar(200) DEFAULT NULL COMMENT '营业时间',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='旅游景点';

/*Data for the table `lvyoujingdian` */

insert  into `lvyoujingdian`(`id`,`addtime`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiantupian`,`jingdianxingji`,`jingdiandizhi`,`menpiaojiage`,`yingyeshijian`,`zhuyishixiang`,`jingdianjieshao`) values (61,'2021-03-02 17:34:44','景点名称1','景点分类1','http://localhost:8080/ssmhydsk/upload/lvyoujingdian_jingdiantupian1.jpg','A','景点地址1',1,'营业时间1','注意事项1','景点介绍1'),(62,'2021-03-02 17:34:44','景点名称2','景点分类2','http://localhost:8080/ssmhydsk/upload/lvyoujingdian_jingdiantupian2.jpg','A','景点地址2',2,'营业时间2','注意事项2','景点介绍2'),(63,'2021-03-02 17:34:44','景点名称3','景点分类3','http://localhost:8080/ssmhydsk/upload/lvyoujingdian_jingdiantupian3.jpg','A','景点地址3',3,'营业时间3','注意事项3','景点介绍3'),(64,'2021-03-02 17:34:44','景点名称4','景点分类4','http://localhost:8080/ssmhydsk/upload/lvyoujingdian_jingdiantupian4.jpg','A','景点地址4',4,'营业时间4','注意事项4','景点介绍4'),(65,'2021-03-02 17:34:44','景点名称5','景点分类5','http://localhost:8080/ssmhydsk/upload/lvyoujingdian_jingdiantupian5.jpg','A','景点地址5',5,'营业时间5','注意事项5','景点介绍5'),(66,'2021-03-02 17:34:44','景点名称6','景点分类6','http://localhost:8080/ssmhydsk/upload/lvyoujingdian_jingdiantupian6.jpg','A','景点地址6',6,'营业时间6','注意事项6','景点介绍6');

/*Table structure for table `lvyoushangpin` */

DROP TABLE IF EXISTS `lvyoushangpin`;

CREATE TABLE `lvyoushangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinjiage` int(11) NOT NULL COMMENT '商品价格',
  `shangpingongneng` longtext COMMENT '商品功能',
  `shangpinjianjie` longtext COMMENT '商品简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='旅游商品';

/*Data for the table `lvyoushangpin` */

insert  into `lvyoushangpin`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpintupian`,`shangpinjiage`,`shangpingongneng`,`shangpinjianjie`) values (51,'2021-03-02 17:34:44','商品编号1','商品名称1','商品类型1','http://localhost:8080/ssmhydsk/upload/lvyoushangpin_shangpintupian1.jpg',1,'商品功能1','商品简介1'),(52,'2021-03-02 17:34:44','商品编号2','商品名称2','商品类型2','http://localhost:8080/ssmhydsk/upload/lvyoushangpin_shangpintupian2.jpg',2,'商品功能2','商品简介2'),(53,'2021-03-02 17:34:44','商品编号3','商品名称3','商品类型3','http://localhost:8080/ssmhydsk/upload/lvyoushangpin_shangpintupian3.jpg',3,'商品功能3','商品简介3'),(54,'2021-03-02 17:34:44','商品编号4','商品名称4','商品类型4','http://localhost:8080/ssmhydsk/upload/lvyoushangpin_shangpintupian4.jpg',4,'商品功能4','商品简介4'),(55,'2021-03-02 17:34:44','商品编号5','商品名称5','商品类型5','http://localhost:8080/ssmhydsk/upload/lvyoushangpin_shangpintupian5.jpg',5,'商品功能5','商品简介5'),(56,'2021-03-02 17:34:44','商品编号6','商品名称6','商品类型6','http://localhost:8080/ssmhydsk/upload/lvyoushangpin_shangpintupian6.jpg',6,'商品功能6','商品简介6');

/*Table structure for table `menpiaoyuding` */

DROP TABLE IF EXISTS `menpiaoyuding`;

CREATE TABLE `menpiaoyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingbianhao` varchar(200) DEFAULT NULL COMMENT '预订编号',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdianfenlei` varchar(200) DEFAULT NULL COMMENT '景点分类',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `menpiaojiage` varchar(200) DEFAULT NULL COMMENT '门票价格',
  `yudingshuliang` int(11) NOT NULL COMMENT '预订数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `yudingshijian` date DEFAULT NULL COMMENT '预订时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yudingbianhao` (`yudingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='门票预订';

/*Data for the table `menpiaoyuding` */

insert  into `menpiaoyuding`(`id`,`addtime`,`yudingbianhao`,`jingdianmingcheng`,`jingdianfenlei`,`jingdiantupian`,`menpiaojiage`,`yudingshuliang`,`zongjiage`,`yudingshijian`,`yonghuzhanghao`,`yonghuxingming`,`yonghushouji`,`beizhu`,`ispay`,`userid`) values (91,'2021-03-02 17:34:44','预订编号1','景点名称1','景点分类1','http://localhost:8080/ssmhydsk/upload/menpiaoyuding_jingdiantupian1.jpg','门票价格1',1,'总价格1','2021-03-02','用户账号1','用户姓名1','用户手机1','备注1','未支付',1),(92,'2021-03-02 17:34:44','预订编号2','景点名称2','景点分类2','http://localhost:8080/ssmhydsk/upload/menpiaoyuding_jingdiantupian2.jpg','门票价格2',2,'总价格2','2021-03-02','用户账号2','用户姓名2','用户手机2','备注2','未支付',2),(93,'2021-03-02 17:34:44','预订编号3','景点名称3','景点分类3','http://localhost:8080/ssmhydsk/upload/menpiaoyuding_jingdiantupian3.jpg','门票价格3',3,'总价格3','2021-03-02','用户账号3','用户姓名3','用户手机3','备注3','未支付',3),(94,'2021-03-02 17:34:44','预订编号4','景点名称4','景点分类4','http://localhost:8080/ssmhydsk/upload/menpiaoyuding_jingdiantupian4.jpg','门票价格4',4,'总价格4','2021-03-02','用户账号4','用户姓名4','用户手机4','备注4','未支付',4),(95,'2021-03-02 17:34:44','预订编号5','景点名称5','景点分类5','http://localhost:8080/ssmhydsk/upload/menpiaoyuding_jingdiantupian5.jpg','门票价格5',5,'总价格5','2021-03-02','用户账号5','用户姓名5','用户手机5','备注5','未支付',5),(96,'2021-03-02 17:34:44','预订编号6','景点名称6','景点分类6','http://localhost:8080/ssmhydsk/upload/menpiaoyuding_jingdiantupian6.jpg','门票价格6',6,'总价格6','2021-03-02','用户账号6','用户姓名6','用户手机6','备注6','未支付',6);

/*Table structure for table `shangpindingdan` */

DROP TABLE IF EXISTS `shangpindingdan`;

CREATE TABLE `shangpindingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `shangpinjiage` varchar(200) DEFAULT NULL COMMENT '商品价格',
  `goumaishuliang` int(11) NOT NULL COMMENT '购买数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `songhuodizhi` varchar(200) DEFAULT NULL COMMENT '送货地址',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpindingdan` */

insert  into `shangpindingdan`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinleixing`,`shangpintupian`,`shangpinjiage`,`goumaishuliang`,`zongjiage`,`yonghuzhanghao`,`yonghuxingming`,`yonghushouji`,`songhuodizhi`,`beizhu`,`ispay`,`userid`) values (81,'2021-03-02 17:34:44','订单编号1','商品名称1','商品类型1','http://localhost:8080/ssmhydsk/upload/shangpindingdan_shangpintupian1.jpg','商品价格1',1,'总价格1','用户账号1','用户姓名1','用户手机1','送货地址1','备注1','未支付',1),(82,'2021-03-02 17:34:44','订单编号2','商品名称2','商品类型2','http://localhost:8080/ssmhydsk/upload/shangpindingdan_shangpintupian2.jpg','商品价格2',2,'总价格2','用户账号2','用户姓名2','用户手机2','送货地址2','备注2','未支付',2),(83,'2021-03-02 17:34:44','订单编号3','商品名称3','商品类型3','http://localhost:8080/ssmhydsk/upload/shangpindingdan_shangpintupian3.jpg','商品价格3',3,'总价格3','用户账号3','用户姓名3','用户手机3','送货地址3','备注3','未支付',3),(84,'2021-03-02 17:34:44','订单编号4','商品名称4','商品类型4','http://localhost:8080/ssmhydsk/upload/shangpindingdan_shangpintupian4.jpg','商品价格4',4,'总价格4','用户账号4','用户姓名4','用户手机4','送货地址4','备注4','未支付',4),(85,'2021-03-02 17:34:44','订单编号5','商品名称5','商品类型5','http://localhost:8080/ssmhydsk/upload/shangpindingdan_shangpintupian5.jpg','商品价格5',5,'总价格5','用户账号5','用户姓名5','用户手机5','送货地址5','备注5','未支付',5),(86,'2021-03-02 17:34:44','订单编号6','商品名称6','商品类型6','http://localhost:8080/ssmhydsk/upload/shangpindingdan_shangpintupian6.jpg','商品价格6',6,'总价格6','用户账号6','用户姓名6','用户手机6','送货地址6','备注6','未支付',6);

/*Table structure for table `shangpinleixing` */

DROP TABLE IF EXISTS `shangpinleixing`;

CREATE TABLE `shangpinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品类型';

/*Data for the table `shangpinleixing` */

insert  into `shangpinleixing`(`id`,`addtime`,`shangpinleixing`) values (41,'2021-03-02 17:34:44','商品类型1'),(42,'2021-03-02 17:34:44','商品类型2'),(43,'2021-03-02 17:34:44','商品类型3'),(44,'2021-03-02 17:34:44','商品类型4'),(45,'2021-03-02 17:34:44','商品类型5'),(46,'2021-03-02 17:34:44','商品类型6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-02 17:34:44');

/*Table structure for table `xinwenleixing` */

DROP TABLE IF EXISTS `xinwenleixing`;

CREATE TABLE `xinwenleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenleixing` varchar(200) DEFAULT NULL COMMENT '新闻类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='新闻类型';

/*Data for the table `xinwenleixing` */

insert  into `xinwenleixing`(`id`,`addtime`,`xinwenleixing`) values (21,'2021-03-02 17:34:44','新闻类型1'),(22,'2021-03-02 17:34:44','新闻类型2'),(23,'2021-03-02 17:34:44','新闻类型3'),(24,'2021-03-02 17:34:44','新闻类型4'),(25,'2021-03-02 17:34:44','新闻类型5'),(26,'2021-03-02 17:34:44','新闻类型6');

/*Table structure for table `xinwenzixun` */

DROP TABLE IF EXISTS `xinwenzixun`;

CREATE TABLE `xinwenzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `xinwenleixing` varchar(200) DEFAULT NULL COMMENT '新闻类型',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `xinwenneirong` longtext COMMENT '新闻内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `xinwenzixun` */

insert  into `xinwenzixun`(`id`,`addtime`,`biaoti`,`xinwenleixing`,`fengmiantupian`,`fabushijian`,`faburen`,`xinwenneirong`) values (31,'2021-03-02 17:34:44','标题1','新闻类型1','http://localhost:8080/ssmhydsk/upload/xinwenzixun_fengmiantupian1.jpg','2021-03-02','发布人1','新闻内容1'),(32,'2021-03-02 17:34:44','标题2','新闻类型2','http://localhost:8080/ssmhydsk/upload/xinwenzixun_fengmiantupian2.jpg','2021-03-02','发布人2','新闻内容2'),(33,'2021-03-02 17:34:44','标题3','新闻类型3','http://localhost:8080/ssmhydsk/upload/xinwenzixun_fengmiantupian3.jpg','2021-03-02','发布人3','新闻内容3'),(34,'2021-03-02 17:34:44','标题4','新闻类型4','http://localhost:8080/ssmhydsk/upload/xinwenzixun_fengmiantupian4.jpg','2021-03-02','发布人4','新闻内容4'),(35,'2021-03-02 17:34:44','标题5','新闻类型5','http://localhost:8080/ssmhydsk/upload/xinwenzixun_fengmiantupian5.jpg','2021-03-02','发布人5','新闻内容5'),(36,'2021-03-02 17:34:44','标题6','新闻类型6','http://localhost:8080/ssmhydsk/upload/xinwenzixun_fengmiantupian6.jpg','2021-03-02','发布人6','新闻内容6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `songhuodizhi` varchar(200) DEFAULT NULL COMMENT '送货地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`touxiang`,`yonghushouji`,`songhuodizhi`) values (11,'2021-03-02 17:34:44','用户1','123456','用户姓名1','男','http://localhost:8080/ssmhydsk/upload/yonghu_touxiang1.jpg','13823888881','送货地址1'),(12,'2021-03-02 17:34:44','用户2','123456','用户姓名2','男','http://localhost:8080/ssmhydsk/upload/yonghu_touxiang2.jpg','13823888882','送货地址2'),(13,'2021-03-02 17:34:44','用户3','123456','用户姓名3','男','http://localhost:8080/ssmhydsk/upload/yonghu_touxiang3.jpg','13823888883','送货地址3'),(14,'2021-03-02 17:34:44','用户4','123456','用户姓名4','男','http://localhost:8080/ssmhydsk/upload/yonghu_touxiang4.jpg','13823888884','送货地址4'),(15,'2021-03-02 17:34:44','用户5','123456','用户姓名5','男','http://localhost:8080/ssmhydsk/upload/yonghu_touxiang5.jpg','13823888885','送货地址5'),(16,'2021-03-02 17:34:44','用户6','123456','用户姓名6','男','http://localhost:8080/ssmhydsk/upload/yonghu_touxiang6.jpg','13823888886','送货地址6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
