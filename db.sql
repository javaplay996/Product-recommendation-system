/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shangpintuijianxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shangpintuijianxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shangpintuijianxitong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(2,3,'收货人2','17703786902','地址2',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(3,1,'收货人3','17703786903','地址3',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(4,3,'收货人4','17703786904','地址4',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(5,3,'收货人5','17703786905','地址5',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(6,3,'收货人6','17703786906','地址6',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(7,1,'收货人7','17703786907','地址7',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(8,1,'收货人8','17703786908','地址8',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(9,1,'收货人9','17703786909','地址9',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(10,1,'收货人10','17703786910','地址10',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(11,1,'收货人11','17703786911','地址11',2,'2023-03-09 13:33:10','2023-03-09 14:20:45','2023-03-09 13:33:10'),(12,2,'收货人12','17703786912','地址12',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(13,3,'收货人13','17703786913','地址13',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(14,3,'收货人14','17703786914','地址14',1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'112331','2023-03-09 14:20:08',NULL,NULL,2,1,'2023-03-09 14:20:09'),(2,1,NULL,NULL,'1122333312','2023-03-09 14:22:47',NULL,2,'2023-03-09 14:22:48');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (38,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-09 13:32:47'),(39,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-09 13:32:47'),(40,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-09 13:32:47'),(41,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-09 13:32:47'),(42,'shangjia_types','商家类型',1,'商家类型1',NULL,NULL,'2023-03-09 13:32:47'),(43,'shangjia_types','商家类型',2,'商家类型2',NULL,NULL,'2023-03-09 13:32:47'),(44,'shangjia_types','商家类型',3,'商家类型3',NULL,NULL,'2023-03-09 13:32:47'),(45,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-09 13:32:47'),(46,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-09 13:32:47'),(47,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-03-09 13:32:47'),(48,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-03-09 13:32:47'),(49,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-03-09 13:32:47'),(50,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-09 13:32:47'),(51,'shangpin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-09 13:32:47'),(52,'shangpin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-09 13:32:47'),(53,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-03-09 13:32:47'),(54,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-03-09 13:32:47'),(55,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-03-09 13:32:47'),(56,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-03-09 13:32:47'),(57,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-09 13:32:47'),(58,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-03-09 13:32:47'),(59,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-03-09 13:32:47'),(60,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-03-09 13:32:47'),(61,'news_types','资讯类型',1,'资讯类型1',NULL,NULL,'2023-03-09 13:32:47'),(62,'news_types','资讯类型',2,'资讯类型2',NULL,NULL,'2023-03-09 13:32:47'),(63,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-09 13:32:47'),(64,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-09 13:32:47'),(65,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-09 13:32:48'),(66,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-09 13:32:48');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`shangjia_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',213,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(2,'帖子标题2',2,NULL,NULL,'发布内容2',119,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',479,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',273,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(5,'帖子标题5',2,NULL,NULL,'发布内容5',349,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',195,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(7,'帖子标题7',2,NULL,NULL,'发布内容7',209,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(8,'帖子标题8',1,NULL,NULL,'发布内容8',121,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(9,'帖子标题9',2,NULL,NULL,'发布内容9',149,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(10,'帖子标题10',1,NULL,NULL,'发布内容10',82,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',238,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(12,'帖子标题12',2,NULL,NULL,'发布内容12',5,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',438,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(14,'帖子标题14',1,NULL,NULL,'发布内容14',374,1,'2023-03-09 13:33:10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(15,NULL,1,NULL,NULL,'12312312',14,2,'2023-03-09 14:19:10',NULL,'2023-03-09 14:19:10'),(16,NULL,NULL,1,NULL,'123123',14,2,'2023-03-09 14:22:13',NULL,'2023-03-09 14:22:13'),(17,NULL,NULL,NULL,1,'123123',14,2,'2023-03-09 14:22:55',NULL,'2023-03-09 14:22:55');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '资讯类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '资讯详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'资讯标题1',1,'upload/news1.jpg','2023-03-09 13:33:10','资讯详情1','2023-03-09 13:33:10'),(2,'资讯标题2',1,'upload/news2.jpg','2023-03-09 13:33:10','资讯详情2','2023-03-09 13:33:10'),(3,'资讯标题3',1,'upload/news3.jpg','2023-03-09 13:33:10','资讯详情3','2023-03-09 13:33:10'),(4,'资讯标题4',1,'upload/news4.jpg','2023-03-09 13:33:10','资讯详情4','2023-03-09 13:33:10'),(5,'资讯标题5',1,'upload/news5.jpg','2023-03-09 13:33:10','资讯详情5','2023-03-09 13:33:10'),(6,'资讯标题6',1,'upload/news6.jpg','2023-03-09 13:33:10','资讯详情6','2023-03-09 13:33:10'),(7,'资讯标题7',2,'upload/news7.jpg','2023-03-09 13:33:10','资讯详情7','2023-03-09 13:33:10'),(8,'资讯标题8',2,'upload/news8.jpg','2023-03-09 13:33:10','资讯详情8','2023-03-09 13:33:10'),(9,'资讯标题9',1,'upload/news9.jpg','2023-03-09 13:33:10','资讯详情9','2023-03-09 13:33:10'),(10,'资讯标题10',1,'upload/news10.jpg','2023-03-09 13:33:10','资讯详情10','2023-03-09 13:33:10'),(11,'资讯标题11',1,'upload/news11.jpg','2023-03-09 13:33:10','资讯详情11','2023-03-09 13:33:10'),(12,'资讯标题12',2,'upload/news12.jpg','2023-03-09 13:33:10','资讯详情12','2023-03-09 13:33:10'),(13,'资讯标题13',1,'upload/news13.jpg','2023-03-09 13:33:10','资讯详情13','2023-03-09 13:33:10'),(14,'资讯标题14',2,'upload/news14.jpg','2023-03-09 13:33:10','资讯详情14','2023-03-09 13:33:10');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_types` int(11) DEFAULT NULL COMMENT '商家类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '商家介绍 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','upload/shangjia1.jpg',2,'1494.69','商家介绍1',1,'2023-03-09 13:33:10'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','upload/shangjia2.jpg',1,'920.22','商家介绍2',1,'2023-03-09 13:33:10'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','upload/shangjia3.jpg',3,'1152.91','商家介绍3',1,'2023-03-09 13:33:10');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `shangpin_content` text COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangjia_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`zan_number`,`cai_number`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`insert_time`,`create_time`) values (1,2,'商品名称1','1678339990149','upload/shangpin1.jpg',2,101,'653.21','415.76',311,370,397,'商品介绍1',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(2,1,'商品名称2','1678339990125','upload/shangpin2.jpg',2,102,'860.79','379.41',484,419,152,'商品介绍2',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(3,2,'商品名称3','1678339990069','upload/shangpin3.jpg',3,103,'721.48','205.96',144,402,464,'商品介绍3',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(4,3,'商品名称4','1678339990096','upload/shangpin4.jpg',1,104,'963.53','63.20',300,332,466,'商品介绍4',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(5,2,'商品名称5','1678339990073','upload/shangpin5.jpg',2,105,'679.55','306.25',31,383,255,'商品介绍5',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(6,1,'商品名称6','1678339990076','upload/shangpin6.jpg',2,106,'697.88','329.15',36,304,371,'商品介绍6',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(7,2,'商品名称7','1678339990128','upload/shangpin7.jpg',1,107,'543.82','384.81',463,81,458,'商品介绍7',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(8,3,'商品名称8','1678339990145','upload/shangpin8.jpg',2,107,'889.28','484.40',218,24,458,'商品介绍8',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(9,2,'商品名称9','1678339990082','upload/shangpin9.jpg',3,109,'686.39','21.65',327,246,451,'商品介绍9',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(10,2,'商品名称10','1678339990109','upload/shangpin10.jpg',1,1008,'798.13','139.45',224,419,400,'商品介绍10',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(11,1,'商品名称11','1678339990109','upload/shangpin11.jpg',3,1009,'912.24','307.15',423,272,11,'商品介绍11',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(12,2,'商品名称12','1678339990077','upload/shangpin12.jpg',2,1012,'654.10','40.35',8,242,186,'商品介绍12',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(13,2,'商品名称13','1678339990109','upload/shangpin13.jpg',3,1013,'936.04','318.99',47,114,156,'商品介绍13',1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(14,1,'商品名称14','1678339990107','upload/shangpin14.jpg',1,1014,'801.99','476.27',204,311,342,'商品介绍14',2,1,'2023-03-09 13:33:10','2023-03-09 13:33:10');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(2,2,2,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(3,3,3,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(4,4,2,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(5,5,2,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(6,6,3,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(8,8,1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(9,9,2,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(10,10,2,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(11,11,3,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(12,12,3,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(13,13,1,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(14,14,2,1,'2023-03-09 13:33:10','2023-03-09 13:33:10'),(15,8,1,2,'2023-03-09 14:18:54','2023-03-09 14:18:54'),(16,10,1,2,'2023-03-09 14:19:00','2023-03-09 14:19:00'),(17,11,1,2,'2023-03-09 14:19:04','2023-03-09 14:19:04');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-03-09 13:33:10','回复信息1','2023-03-09 13:33:10','2023-03-09 13:33:10'),(2,2,1,'评价内容2','2023-03-09 13:33:10','回复信息2','2023-03-09 13:33:10','2023-03-09 13:33:10'),(3,3,1,'评价内容3','2023-03-09 13:33:10','回复信息3','2023-03-09 13:33:10','2023-03-09 13:33:10'),(4,4,2,'评价内容4','2023-03-09 13:33:10','回复信息4','2023-03-09 13:33:10','2023-03-09 13:33:10'),(5,5,2,'评价内容5','2023-03-09 13:33:10','回复信息5','2023-03-09 13:33:10','2023-03-09 13:33:10'),(6,6,3,'评价内容6','2023-03-09 13:33:10','回复信息6','2023-03-09 13:33:10','2023-03-09 13:33:10'),(7,7,3,'评价内容7','2023-03-09 13:33:10','回复信息7','2023-03-09 13:33:10','2023-03-09 13:33:10'),(8,8,3,'评价内容8','2023-03-09 13:33:10','回复信息8','2023-03-09 13:33:10','2023-03-09 13:33:10'),(9,9,3,'评价内容9','2023-03-09 13:33:10','回复信息9','2023-03-09 13:33:10','2023-03-09 13:33:10'),(10,10,3,'评价内容10','2023-03-09 13:33:10','回复信息10','2023-03-09 13:33:10','2023-03-09 13:33:10'),(11,11,3,'评价内容11','2023-03-09 13:33:10','回复信息11','2023-03-09 13:33:10','2023-03-09 13:33:10'),(12,12,1,'评价内容12','2023-03-09 13:33:10','回复信息12','2023-03-09 13:33:10','2023-03-09 13:33:10'),(13,13,1,'评价内容13','2023-03-09 13:33:10','回复信息13','2023-03-09 13:33:10','2023-03-09 13:33:10'),(14,14,2,'评价内容14','2023-03-09 13:33:10','回复信息14123','2023-03-09 14:21:26','2023-03-09 13:33:10');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1678342830522',7,11,1,1,'307.15',NULL,NULL,101,1,'2023-03-09 14:20:31','2023-03-09 14:20:31'),(2,'1678342830522',7,10,1,1,'139.45',NULL,NULL,101,1,'2023-03-09 14:20:31','2023-03-09 14:20:31'),(3,'1678342830522',7,8,1,1,'484.40',NULL,NULL,101,1,'2023-03-09 14:20:31','2023-03-09 14:20:31'),(4,'1678342830914',7,11,1,1,'307.15','JD','123123123123123123',105,1,'2023-03-09 14:20:31','2023-03-09 14:20:31'),(5,'1678342830914',7,10,1,1,'139.45',NULL,NULL,101,1,'2023-03-09 14:20:31','2023-03-09 14:20:31');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','jgcx8c0dzajpc26rx3rydm0gj2hyg6d5','2023-03-09 13:47:59','2023-03-09 15:18:49'),(2,1,'a1','shangjia','商家','441nm3x09dth2zacv2b8n4kurd83wf6h','2023-03-09 14:21:14','2023-03-09 15:21:14'),(3,1,'admin','users','管理员','vfheg0y6h7xu3x0r3ijp405cbz3v33b2','2023-03-09 14:22:20','2023-03-09 15:24:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','999046.51','2023-03-09 13:33:10'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','483.20','2023-03-09 13:33:10'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','406.54','2023-03-09 13:33:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
