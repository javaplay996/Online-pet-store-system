/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangshangchongwudian
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangshangchongwudian` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangshangchongwudian`;

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

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(2,3,'收货人2','17703786902','地址2',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(3,1,'收货人3','17703786903','地址3',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(4,1,'收货人4','17703786904','地址4',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(5,1,'收货人5','17703786905','地址5',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(6,1,'收货人6','17703786906','地址6',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(7,3,'收货人7','17703786907','地址7',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(8,1,'收货人8','17703786908','地址8',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(9,3,'收货人9','17703786909','地址9',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(10,1,'收货人10','17703786910','地址10',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(11,3,'收货人11','17703786911','地址11',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(12,1,'收货人12','17703786912','地址12',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(13,1,'收货人13','17703786913','地址13',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(14,1,'收货人14','17703786914','地址14',1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `chongwuyongpin_id` int(11) DEFAULT NULL COMMENT '商品',
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

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'123','2023-03-11 17:42:06',NULL,NULL,2,1,'2023-03-11 17:42:07'),(2,1,NULL,NULL,'123123','2023-03-11 17:42:41',NULL,2,'2023-03-11 17:42:41');

/*Table structure for table `chongwujiyang` */

DROP TABLE IF EXISTS `chongwujiyang`;

CREATE TABLE `chongwujiyang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chongwujiyang_name` varchar(200) DEFAULT NULL COMMENT '寄养服务名称  Search111 ',
  `chongwujiyang_photo` varchar(200) DEFAULT NULL COMMENT '寄养服务封面',
  `chongwujiyang_types` int(11) DEFAULT NULL COMMENT '寄养服务类型 Search111',
  `chongwujiyang_new_money` decimal(10,2) DEFAULT NULL COMMENT '价格/天',
  `chongwujiyang_clicknum` int(11) DEFAULT NULL COMMENT '寄养服务热度',
  `chongwujiyang_content` text COMMENT '寄养服务介绍 ',
  `chongwujiyang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='宠物寄养';

/*Data for the table `chongwujiyang` */

insert  into `chongwujiyang`(`id`,`chongwujiyang_name`,`chongwujiyang_photo`,`chongwujiyang_types`,`chongwujiyang_new_money`,`chongwujiyang_clicknum`,`chongwujiyang_content`,`chongwujiyang_delete`,`insert_time`,`create_time`) values (1,'寄养服务名称1','upload/chongwujiyang1.jpg',2,'224.12',11,'寄养服务介绍1',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(2,'寄养服务名称2','upload/chongwujiyang2.jpg',2,'361.60',436,'寄养服务介绍2',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(3,'寄养服务名称3','upload/chongwujiyang3.jpg',1,'389.80',212,'寄养服务介绍3',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(4,'寄养服务名称4','upload/chongwujiyang4.jpg',3,'450.48',159,'寄养服务介绍4',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(5,'寄养服务名称5','upload/chongwujiyang5.jpg',3,'52.37',315,'寄养服务介绍5',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(6,'寄养服务名称6','upload/chongwujiyang6.jpg',3,'101.53',387,'寄养服务介绍6',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(7,'寄养服务名称7','upload/chongwujiyang7.jpg',3,'353.63',180,'寄养服务介绍7',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(8,'寄养服务名称8','upload/chongwujiyang1.jpg',3,'278.85',251,'寄养服务介绍8',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(9,'寄养服务名称9','upload/chongwujiyang2.jpg',3,'482.27',213,'寄养服务介绍9',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(10,'寄养服务名称10','upload/chongwujiyang3.jpg',2,'410.38',478,'寄养服务介绍10',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(11,'寄养服务名称11','upload/chongwujiyang4.jpg',2,'69.58',205,'寄养服务介绍11',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(12,'寄养服务名称12','upload/chongwujiyang5.jpg',1,'280.04',48,'寄养服务介绍12',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(13,'寄养服务名称13','upload/chongwujiyang6.jpg',2,'148.79',410,'寄养服务介绍13',1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(14,'寄养服务名称14','upload/chongwujiyang7.jpg',2,'93.48',107,'寄养服务介绍14',1,'2023-03-11 16:32:48','2023-03-11 16:32:48');

/*Table structure for table `chongwujiyang_yuyue` */

DROP TABLE IF EXISTS `chongwujiyang_yuyue`;

CREATE TABLE `chongwujiyang_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwujiyang_id` int(11) DEFAULT NULL COMMENT '宠物寄养 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwujiyang_yuyue_name` varchar(200) DEFAULT NULL COMMENT '宠物名称  Search111 ',
  `chongwu_types` int(11) DEFAULT NULL COMMENT '宠物类型  Search111 ',
  `chongwu_zhongliang` int(11) DEFAULT NULL COMMENT '宠物重量',
  `chongwujiyang_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '寄养开始时间',
  `chongwujiyang_yuyue_num` int(11) DEFAULT NULL COMMENT '寄养天数 ',
  `shifou_types` int(11) DEFAULT NULL COMMENT '是否接送  Search111 ',
  `chongwujiyang_yuyue_price` decimal(10,2) DEFAULT NULL COMMENT '总价格',
  `chongwujiyang_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '寄养审核  Search111 ',
  `chongwujiyang_yuyue_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='宠物寄养订单';

/*Data for the table `chongwujiyang_yuyue` */

insert  into `chongwujiyang_yuyue`(`id`,`chongwujiyang_id`,`yonghu_id`,`chongwujiyang_yuyue_name`,`chongwu_types`,`chongwu_zhongliang`,`chongwujiyang_yuyue_time`,`chongwujiyang_yuyue_num`,`shifou_types`,`chongwujiyang_yuyue_price`,`chongwujiyang_yuyue_yesno_types`,`chongwujiyang_yuyue_yesno_text`,`insert_time`,`create_time`) values (1,1,3,'宠物名称1',2,376,'2023-03-11 16:32:48',254,1,'197.44',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(2,2,1,'宠物名称2',2,291,'2023-03-11 16:32:48',247,2,'654.35',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(3,3,1,'宠物名称3',2,35,'2023-03-11 16:32:48',50,2,'561.75',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(4,4,3,'宠物名称4',3,130,'2023-03-11 16:32:48',219,1,'737.60',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(5,5,1,'宠物名称5',3,349,'2023-03-11 16:32:48',369,1,'185.48',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(6,6,1,'宠物名称6',1,354,'2023-03-11 16:32:48',478,2,'618.21',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(7,7,3,'宠物名称7',1,414,'2023-03-11 16:32:48',473,2,'200.20',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(8,8,2,'宠物名称8',2,93,'2023-03-11 16:32:48',26,1,'959.70',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(9,9,3,'宠物名称9',1,31,'2023-03-11 16:32:48',332,2,'946.05',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(10,10,2,'宠物名称10',3,39,'2023-03-11 16:32:48',277,2,'784.89',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(11,11,2,'宠物名称11',2,476,'2023-03-11 16:32:48',287,2,'666.22',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(12,12,1,'宠物名称12',1,164,'2023-03-11 16:32:48',111,2,'231.58',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(13,13,3,'宠物名称13',2,306,'2023-03-11 16:32:48',176,1,'189.21',1,NULL,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(14,14,2,'宠物名称14',3,265,'2023-03-11 16:32:48',453,2,'556.11',3,'余额不足请充值1111','2023-03-11 16:32:48','2023-03-11 16:32:48'),(15,2,1,'123',2,123,'2023-03-18 17:39:44',8,1,'2912.80',2,'123','2023-03-11 17:39:57','2023-03-11 17:39:57');

/*Table structure for table `chongwurizhi` */

DROP TABLE IF EXISTS `chongwurizhi`;

CREATE TABLE `chongwurizhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chongwujiyang_yuyue_id` int(11) DEFAULT NULL COMMENT '宠物寄养订单',
  `chongwurizhi_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `chongwurizhi_content` text COMMENT '寄养服务详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='寄存日志';

/*Data for the table `chongwurizhi` */

insert  into `chongwurizhi`(`id`,`chongwujiyang_yuyue_id`,`chongwurizhi_name`,`chongwurizhi_content`,`insert_time`,`create_time`) values (1,1,'标题1','寄养服务详情1','2023-03-11 16:32:48','2023-03-11 16:32:48'),(2,2,'标题2','寄养服务详情2','2023-03-11 16:32:48','2023-03-11 16:32:48'),(3,3,'标题3','寄养服务详情3','2023-03-11 16:32:48','2023-03-11 16:32:48'),(4,4,'标题4','寄养服务详情4','2023-03-11 16:32:48','2023-03-11 16:32:48'),(5,5,'标题5','寄养服务详情5','2023-03-11 16:32:48','2023-03-11 16:32:48'),(6,6,'标题6','寄养服务详情6','2023-03-11 16:32:48','2023-03-11 16:32:48'),(7,7,'标题7','寄养服务详情7','2023-03-11 16:32:48','2023-03-11 16:32:48'),(8,8,'标题8','寄养服务详情8','2023-03-11 16:32:48','2023-03-11 16:32:48'),(9,9,'标题9','寄养服务详情9','2023-03-11 16:32:48','2023-03-11 16:32:48'),(10,10,'标题10','寄养服务详情10','2023-03-11 16:32:48','2023-03-11 16:32:48'),(11,11,'标题11','寄养服务详情11','2023-03-11 16:32:48','2023-03-11 16:32:48'),(12,12,'标题12','寄养服务详情12','2023-03-11 16:32:48','2023-03-11 16:32:48'),(13,13,'标题13','寄养服务详情13','2023-03-11 16:32:48','2023-03-11 16:32:48'),(14,14,'标题14','寄养服务详情14','2023-03-11 16:32:48','2023-03-11 16:32:48'),(15,15,'123','<p>123</p>','2023-03-11 17:42:29','2023-03-11 17:42:29');

/*Table structure for table `chongwuyongpin` */

DROP TABLE IF EXISTS `chongwuyongpin`;

CREATE TABLE `chongwuyongpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chongwuyongpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `chongwuyongpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `chongwuyongpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `chongwuyongpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `chongwuyongpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `chongwuyongpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `chongwuyongpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `chongwuyongpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `chongwuyongpin_content` text COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `chongwuyongpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `chongwuyongpin` */

insert  into `chongwuyongpin`(`id`,`chongwuyongpin_name`,`chongwuyongpin_uuid_number`,`chongwuyongpin_photo`,`chongwuyongpin_types`,`chongwuyongpin_kucun_number`,`chongwuyongpin_old_money`,`chongwuyongpin_new_money`,`chongwuyongpin_clicknum`,`chongwuyongpin_content`,`shangxia_types`,`chongwuyongpin_delete`,`insert_time`,`create_time`) values (1,'商品名称1','1678523568634','upload/chongwuyongpin1.jpg',1,101,'697.02','44.19',110,'商品介绍1',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(2,'商品名称2','1678523568630','upload/chongwuyongpin2.jpg',1,102,'682.23','377.16',155,'商品介绍2',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(3,'商品名称3','1678523568648','upload/chongwuyongpin3.jpg',1,103,'868.29','47.84',57,'商品介绍3',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(4,'商品名称4','1678523568584','upload/chongwuyongpin4.jpg',3,104,'578.94','153.11',152,'商品介绍4',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(5,'商品名称5','1678523568591','upload/chongwuyongpin5.jpg',1,105,'827.88','321.76',156,'商品介绍5',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(6,'商品名称6','1678523568655','upload/chongwuyongpin6.jpg',3,106,'914.20','396.75',241,'商品介绍6',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(7,'商品名称7','1678523568581','upload/chongwuyongpin7.jpg',1,107,'561.88','22.49',401,'商品介绍7',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(8,'商品名称8','1678523568584','upload/chongwuyongpin8.jpg',2,108,'809.07','234.38',460,'商品介绍8',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(9,'商品名称9','1678523568616','upload/chongwuyongpin9.jpg',3,108,'827.90','290.13',454,'商品介绍9',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(10,'商品名称10','1678523568622','upload/chongwuyongpin10.jpg',2,1009,'579.20','219.81',328,'商品介绍10',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(11,'商品名称11','1678523568598','upload/chongwuyongpin11.jpg',3,1011,'885.17','308.03',493,'商品介绍11',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(12,'商品名称12','1678523568606','upload/chongwuyongpin12.jpg',2,1012,'928.57','383.83',141,'商品介绍12',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(13,'商品名称13','1678523568676','upload/chongwuyongpin13.jpg',2,1013,'721.56','166.27',12,'商品介绍13',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(14,'商品名称14','1678523568662','upload/chongwuyongpin14.jpg',1,1014,'674.35','407.89',408,'商品介绍14',1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48');

/*Table structure for table `chongwuyongpin_collection` */

DROP TABLE IF EXISTS `chongwuyongpin_collection`;

CREATE TABLE `chongwuyongpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuyongpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwuyongpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `chongwuyongpin_collection` */

insert  into `chongwuyongpin_collection`(`id`,`chongwuyongpin_id`,`yonghu_id`,`chongwuyongpin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(2,2,2,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(3,3,3,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(4,4,2,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(5,5,2,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(6,6,3,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(7,7,1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(8,8,2,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(9,9,1,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(10,10,3,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(11,11,3,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(14,14,3,1,'2023-03-11 16:32:48','2023-03-11 16:32:48'),(15,12,1,1,'2023-03-11 17:36:50','2023-03-11 17:36:50');

/*Table structure for table `chongwuyongpin_commentback` */

DROP TABLE IF EXISTS `chongwuyongpin_commentback`;

CREATE TABLE `chongwuyongpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuyongpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chongwuyongpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `chongwuyongpin_commentback` */

insert  into `chongwuyongpin_commentback`(`id`,`chongwuyongpin_id`,`yonghu_id`,`chongwuyongpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-03-11 16:32:48','回复信息1','2023-03-11 16:32:48','2023-03-11 16:32:48'),(2,2,1,'评价内容2','2023-03-11 16:32:48','回复信息2','2023-03-11 16:32:48','2023-03-11 16:32:48'),(3,3,1,'评价内容3','2023-03-11 16:32:48','回复信息3','2023-03-11 16:32:48','2023-03-11 16:32:48'),(4,4,2,'评价内容4','2023-03-11 16:32:48','回复信息4','2023-03-11 16:32:48','2023-03-11 16:32:48'),(5,5,3,'评价内容5','2023-03-11 16:32:48','回复信息5','2023-03-11 16:32:48','2023-03-11 16:32:48'),(6,6,3,'评价内容6','2023-03-11 16:32:48','回复信息6','2023-03-11 16:32:48','2023-03-11 16:32:48'),(7,7,2,'评价内容7','2023-03-11 16:32:48','回复信息7','2023-03-11 16:32:48','2023-03-11 16:32:48'),(8,8,2,'评价内容8','2023-03-11 16:32:48','回复信息8','2023-03-11 16:32:48','2023-03-11 16:32:48'),(9,9,3,'评价内容9','2023-03-11 16:32:48','回复信息9','2023-03-11 16:32:48','2023-03-11 16:32:48'),(10,10,2,'评价内容10','2023-03-11 16:32:48','回复信息10','2023-03-11 16:32:48','2023-03-11 16:32:48'),(11,11,1,'评价内容11','2023-03-11 16:32:48','回复信息11','2023-03-11 16:32:48','2023-03-11 16:32:48'),(12,12,1,'评价内容12','2023-03-11 16:32:48','回复信息12','2023-03-11 16:32:48','2023-03-11 16:32:48'),(13,13,3,'评价内容13','2023-03-11 16:32:48','回复信息13','2023-03-11 16:32:48','2023-03-11 16:32:48'),(14,14,3,'评价内容14','2023-03-11 16:32:48','回复信息14','2023-03-11 16:32:48','2023-03-11 16:32:48'),(15,10,1,'123','2023-03-11 17:42:02','12312','2023-03-11 17:42:20','2023-03-11 17:42:02');

/*Table structure for table `chongwuyongpin_order` */

DROP TABLE IF EXISTS `chongwuyongpin_order`;

CREATE TABLE `chongwuyongpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuyongpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `chongwuyongpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `chongwuyongpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `chongwuyongpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `chongwuyongpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `chongwuyongpin_order` */

insert  into `chongwuyongpin_order`(`id`,`chongwuyongpin_order_uuid_number`,`address_id`,`chongwuyongpin_id`,`yonghu_id`,`buy_number`,`chongwuyongpin_order_true_price`,`chongwuyongpin_order_types`,`chongwuyongpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1678527396125',6,14,1,1,'407.89',102,1,'2023-03-11 17:36:36','2023-03-11 17:36:36'),(2,'1678527396125',6,9,1,1,'290.13',103,1,'2023-03-11 17:36:36','2023-03-11 17:36:36'),(3,'1678527396125',6,10,1,1,'219.81',105,1,'2023-03-11 17:36:36','2023-03-11 17:36:36');

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (38,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-11 16:32:39'),(39,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-11 16:32:39'),(40,'chongwuyongpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-03-11 16:32:39'),(41,'chongwuyongpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-03-11 16:32:39'),(42,'chongwuyongpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-03-11 16:32:39'),(43,'chongwuyongpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-11 16:32:39'),(44,'chongwuyongpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-03-11 16:32:39'),(45,'chongwuyongpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-03-11 16:32:39'),(46,'chongwuyongpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-03-11 16:32:39'),(47,'chongwuyongpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-03-11 16:32:39'),(48,'chongwuyongpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-11 16:32:39'),(49,'chongwuyongpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-03-11 16:32:39'),(50,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-03-11 16:32:39'),(51,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-03-11 16:32:39'),(52,'chongwujiyang_types','寄养服务类型',1,'寄养服务类型1',NULL,NULL,'2023-03-11 16:32:39'),(53,'chongwujiyang_types','寄养服务类型',2,'寄养服务类型2',NULL,NULL,'2023-03-11 16:32:39'),(54,'chongwujiyang_types','寄养服务类型',3,'寄养服务类型3',NULL,NULL,'2023-03-11 16:32:39'),(55,'chongwu_types','宠物类型',1,'宠物类型1',NULL,NULL,'2023-03-11 16:32:39'),(56,'chongwu_types','宠物类型',2,'宠物类型2',NULL,NULL,'2023-03-11 16:32:39'),(57,'chongwu_types','宠物类型',3,'宠物类型3',NULL,NULL,'2023-03-11 16:32:39'),(58,'shifou_types','是否接送',1,'是',NULL,NULL,'2023-03-11 16:32:39'),(59,'shifou_types','是否接送',2,'否',NULL,NULL,'2023-03-11 16:32:39'),(60,'chongwujiyang_yuyue_yesno_types','寄养审核',1,'未审核',NULL,NULL,'2023-03-11 16:32:39'),(61,'chongwujiyang_yuyue_yesno_types','寄养审核',2,'同意',NULL,NULL,'2023-03-11 16:32:39'),(62,'chongwujiyang_yuyue_yesno_types','寄养审核',3,'拒绝',NULL,NULL,'2023-03-11 16:32:39'),(63,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-11 16:32:39'),(64,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-11 16:32:39'),(65,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-11 16:32:39'),(66,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-11 16:32:39'),(67,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-11 16:32:40'),(68,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-11 16:32:40'),(69,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-11 16:32:40'),(70,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-11 16:32:40'),(71,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-11 16:32:40'),(72,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-11 16:32:40');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
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

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',7,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(2,'帖子标题2',2,NULL,'发布内容2',190,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(3,'帖子标题3',3,NULL,'发布内容3',178,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(4,'帖子标题4',2,NULL,'发布内容4',319,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(5,'帖子标题5',1,NULL,'发布内容5',490,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(6,'帖子标题6',1,NULL,'发布内容6',278,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(7,'帖子标题7',1,NULL,'发布内容7',83,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(8,'帖子标题8',3,NULL,'发布内容8',285,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(9,'帖子标题9',3,NULL,'发布内容9',182,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(10,'帖子标题10',3,NULL,'发布内容10',465,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(11,'帖子标题11',1,NULL,'发布内容11',424,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(12,'帖子标题12',1,NULL,'发布内容12',129,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(13,'帖子标题13',3,NULL,'发布内容13',412,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(14,'帖子标题14',1,NULL,'发布内容14',488,1,'2023-03-11 16:32:48','2023-03-11 16:32:48','2023-03-11 16:32:48'),(16,NULL,NULL,1,'123123',14,2,'2023-03-11 17:42:50',NULL,'2023-03-11 17:42:50'),(17,NULL,1,NULL,'123123',14,2,'2023-03-11 17:43:00',NULL,'2023-03-11 17:43:00');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-03-11 16:32:48','公告详情1','2023-03-11 16:32:48'),(2,'公告标题2',1,'upload/news2.jpg','2023-03-11 16:32:48','公告详情2','2023-03-11 16:32:48'),(3,'公告标题3',1,'upload/news3.jpg','2023-03-11 16:32:48','公告详情3','2023-03-11 16:32:48'),(4,'公告标题4',2,'upload/news4.jpg','2023-03-11 16:32:48','公告详情4','2023-03-11 16:32:48'),(5,'公告标题5',1,'upload/news5.jpg','2023-03-11 16:32:48','公告详情5','2023-03-11 16:32:48'),(6,'公告标题6',1,'upload/news6.jpg','2023-03-11 16:32:48','公告详情6','2023-03-11 16:32:48'),(7,'公告标题7',2,'upload/news7.jpg','2023-03-11 16:32:48','公告详情7','2023-03-11 16:32:48'),(8,'公告标题8',2,'upload/news8.jpg','2023-03-11 16:32:48','公告详情8','2023-03-11 16:32:48'),(9,'公告标题9',2,'upload/news9.jpg','2023-03-11 16:32:48','公告详情9','2023-03-11 16:32:48'),(10,'公告标题10',2,'upload/news10.jpg','2023-03-11 16:32:48','公告详情10','2023-03-11 16:32:48'),(11,'公告标题11',2,'upload/news11.jpg','2023-03-11 16:32:48','公告详情11','2023-03-11 16:32:48'),(12,'公告标题12',2,'upload/news12.jpg','2023-03-11 16:32:48','公告详情12','2023-03-11 16:32:48'),(13,'公告标题13',1,'upload/news13.jpg','2023-03-11 16:32:48','公告详情13','2023-03-11 16:32:48'),(14,'公告标题14',1,'upload/news14.jpg','2023-03-11 16:32:48','公告详情14','2023-03-11 16:32:48');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','44bgnak68s9tv2k5tjw8m7rwta8t7te4','2023-03-11 16:52:04','2023-03-11 18:43:27'),(2,1,'a1','yonghu','用户','ech33hfjl05u8r7u3cxufzqhfiudxp1b','2023-03-11 16:53:53','2023-03-11 18:35:50');

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

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','76963.93','2023-03-11 16:32:48'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','59.69','2023-03-11 16:32:48'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','36.21','2023-03-11 16:32:48');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
