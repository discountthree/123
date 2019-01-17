-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: epets
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_banner`
--

DROP TABLE IF EXISTS `app_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_banner`
--

LOCK TABLES `app_banner` WRITE;
/*!40000 ALTER TABLE `app_banner` DISABLE KEYS */;
INSERT INTO `app_banner` VALUES (1,'/static/img/homepage/lun1.jpg'),(2,'/static/img/homepage/lun2.jpg'),(3,'/static/img/homepage/lun3.jpg'),(4,'/static/img/homepage/lun4.jpg'),(5,'/static/img/homepage/lun5.jpg'),(6,'/static/img/homepage/lun6.jpg'),(7,'/static/img/homepage/lun7.jpg');
/*!40000 ALTER TABLE `app_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_dailysurprise`
--

DROP TABLE IF EXISTS `app_dailysurprise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_dailysurprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(20) NOT NULL,
  `preprice` varchar(20) NOT NULL,
  `activity` varchar(20) NOT NULL,
  `span` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_dailysurprise`
--

LOCK TABLES `app_dailysurprise` WRITE;
/*!40000 ALTER TABLE `app_dailysurprise` DISABLE KEYS */;
INSERT INTO `app_dailysurprise` VALUES (1,'/static/img/content/9be729227c20b43e3e965a37424a0410.jpg@!200w-c.jpg','迪派 培根系列狗狗零食 碳烤鸡肉200g ','209.5','300','立享7.1折','即将开始'),(2,'/static/img/content/363cae7c577b866e9e55c36b0edd08bf.jpg@!200w-c.jpg','纽萃宝Nutripe Fit系列活力辅酶Q10狗罐头 羊肉口味 95g ','302','338.5','立享7.1折','即将开始'),(3,'/static/img/content/5c3f7837c3a0b8df2c15fbc9ea4aa6a2.jpg@!200w-c.jpg','亚禾YaHo 好湿粮 中型犬鸡小胸肉妙鲜包 80g  ','20.9','30','立享7.1折','即将开始'),(4,'/static/img/content/6d12737de38777b13eb72b1c453a98e1.jpg@!200w-c.jpg','亨蒂 双拼洁齿骨 蟹柳味100g ','109.8','200','立享7.1折','即将开始'),(5,'/static/img/content/c2e94e289443a4bfe84f15d077aec3ef.jpg@!200w-c.jpg','风来客 幼犬营养肉压骨 鸡肉味 6支装 ','84.3','99.6','立享7.1折','即将开始'),(6,'/static/img/content/95ff1d9c3798c7d6d1310c81feef1ed8.jpg@!200w-c.jpg','柏可心 清新薄荷鸡肉洁齿骨 6寸3支装 150g ','253.5','267','立享7.1折','即将开始'),(7,'/static/img/content/84f9fafcee904848c93261641230ccad.jpg@!200w-c.jpg','英国MAG 优质配方海藻粉 美毛更出众 400g ','25','30','立享7.1折','即将开始'),(8,'/static/img/content/c2e94e289443a4bfe84f15d077aec3ef.jpg@!200w-c.jpg','美卡MAKAR 七彩糖果犬用缺口单碗 春绿小号','277.5','370','立享7.1折','即将开始'),(9,'/static/img/content/eeb9ca10fc25b12673304848a72f5b67.jpg@!200w-c.jpg','天然宝 清除口臭体臭怡神丸 90g','209.5','300','立享7.1折','即将开始'),(10,'/static/img/content/ff3beb0bacad6eb7baee3226e0b2e351.jpg@!200w-c.jpg','英国MAG 优质配方海藻粉 美毛更出众 400g ','211','560','立享7.1折','即将开始'),(11,'/static/img/content/ddacddde2ce097a2a1b60b68e9a243dc.jpg@!200w-c.jpg','蓝血贵族BBN 通络宝营养粉400g ','86','130','立享7.1折','即将开始'),(12,'/static/img/content/db225e272a117b155ed226c123fadc82.jpg@!200w-c.jpg','卡顿KADUN 黄金美毛膏 200g 金色毛宠物美毛','209.5','300','立享7.1折','即将开始'),(13,'/static/img/content/9be729227c20b43e3e965a37424a0410.jpg@!200w-c.jpg','迪派 培根系列狗狗零食 碳烤鸡肉200g ','209.5','300','立享7.1折','即将开始'),(14,'/static/img/content/363cae7c577b866e9e55c36b0edd08bf.jpg@!200w-c.jpg','纽萃宝Nutripe Fit系列活力辅酶Q10狗罐头 羊肉口味 95g ','302','338.5','立享7.1折','即将开始'),(15,'/static/img/content/5c3f7837c3a0b8df2c15fbc9ea4aa6a2.jpg@!200w-c.jpg','亚禾YaHo 好湿粮 中型犬鸡小胸肉妙鲜包 80g  ','20.9','30','立享7.1折','即将开始'),(16,'/static/img/content/6d12737de38777b13eb72b1c453a98e1.jpg@!200w-c.jpg','亨蒂 双拼洁齿骨 蟹柳味100g ','30.8','200','立享7.1折','即将开始'),(17,'/static/img/content/c2e94e289443a4bfe84f15d077aec3ef.jpg@!200w-c.jpg','风来客 幼犬营养肉压骨 鸡肉味 6支装 ','84.3','99.6','立享7.1折','即将开始'),(18,'/static/img/content/95ff1d9c3798c7d6d1310c81feef1ed8.jpg@!200w-c.jpg','柏可心 清新薄荷鸡肉洁齿骨 6寸3支装 150g ','253.5','267','立享7.1折','即将开始'),(19,'/static/img/content/84f9fafcee904848c93261641230ccad.jpg@!200w-c.jpg','英国MAG 优质配方海藻粉 美毛更出众 400g ','25','30','立享7.1折','即将开始'),(20,'/static/img/content/c2e94e289443a4bfe84f15d077aec3ef.jpg@!200w-c.jpg','美卡MAKAR 七彩糖果犬用缺口单碗 春绿小号','277.5','370','立享7.1折','即将开始'),(21,'/static/img/content/eeb9ca10fc25b12673304848a72f5b67.jpg@!200w-c.jpg','天然宝 清除口臭体臭怡神丸 90g','209.5','300','立享7.1折','即将开始'),(22,'/static/img/content/ff3beb0bacad6eb7baee3226e0b2e351.jpg@!200w-c.jpg','英国MAG 优质配方海藻粉 美毛更出众 400g ','205','560','立享7.1折','即将开始'),(23,'/static/img/content/ddacddde2ce097a2a1b60b68e9a243dc.jpg@!200w-c.jpg','蓝血贵族BBN 通络宝营养粉400g ','86','130','立享7.1折','即将开始'),(24,'/static/img/content/db225e272a117b155ed226c123fadc82.jpg@!200w-c.jpg','卡顿KADUN 黄金美毛膏 200g 金色毛宠物美毛','209.5','300','立享7.1折','即将开始'),(25,'/static/img/content/c2e94e289443a4bfe84f15d077aec3ef.jpg@!200w-c.jpg','风来客 幼犬营养肉压骨 鸡肉味 6支装 ','84.3','99.6','立享7.1折','即将开始'),(26,'/static/img/content/95ff1d9c3798c7d6d1310c81feef1ed8.jpg@!200w-c.jpg','柏可心 清新薄荷鸡肉洁齿骨 6寸3支装 150g ','253.5','267','立享7.1折','即将开始'),(27,'/static/img/content/84f9fafcee904848c93261641230ccad.jpg@!200w-c.jpg','英国MAG 优质配方海藻粉 美毛更出众 400g ','25','30','立享7.1折','即将开始'),(28,'/static/img/content/c2e94e289443a4bfe84f15d077aec3ef.jpg@!200w-c.jpg','美卡MAKAR 七彩糖果犬用缺口单碗 春绿小号','277.5','370','立享7.1折','即将开始');
/*!40000 ALTER TABLE `app_dailysurprise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_goods`
--

DROP TABLE IF EXISTS `app_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_goods`
--

LOCK TABLES `app_goods` WRITE;
/*!40000 ALTER TABLE `app_goods` DISABLE KEYS */;
INSERT INTO `app_goods` VALUES (1,'/static/img/content/d58f4cab98123b96abfce2403cafbb40.jpg@!150w-c.jpg','“巅峰”盛宴，限量回馈','220.3'),(2,'/static/img/content/b6b7f5bc4760dba77e99daa3c1868ffb.jpg@!150w-c.jpg','百利品牌钜惠-买粮赠罐头','188.3'),(3,'/static/img/content/9bc04fb398ca7c492838db831e21d3ee.jpg@!150w-c.jpg','奥运宝最高1送4','220.3'),(4,'/static/img/content/918f312cd5235698bd28108c683b2daf.jpg@!150w-c.jpg','安娜玛特大牌精选','177.5'),(5,'/static/img/content/35d052bef6d3e89ef470147ccd7b47b7.jpg@!150w-c.jpg','百利品牌钜惠-买粮赠罐头','220.3'),(6,'/static/img/content/08e217cb9378e6c7697d0852c07631f5.jpg@!150w-c.jpg','比瑞吉满400最高送100','220.4'),(7,'/static/img/content/8bdfa4386ee08568c4f834220dd213f5.jpg@!150w-c.jpg','路斯全场满49减10 99减20','220.3'),(8,'/static/img/content/b6b7f5bc4760dba77e99daa3c1868ffb.jpg@!150w-c.jpg','顽皮品牌专场 低至5折起','188.7'),(9,'/static/img/content/35d052bef6d3e89ef470147ccd7b47b7.jpg@!150w-c.jpg','“巅峰”盛宴，限量回馈','220.3'),(10,'/static/img/content/b6b7f5bc4760dba77e99daa3c1868ffb.jpg@!150w-c.jpg','百利品牌钜惠-买粮赠罐头','220.3'),(11,'/static/img/content/9bc04fb398ca7c492838db831e21d3ee.jpg@!150w-c.jpg','奥运宝最高1送4','144.5'),(12,'/static/img/content/918f312cd5235698bd28108c683b2daf.jpg@!150w-c.jpg','安娜玛特大牌精选','220.3'),(13,'/static/img/content/d58f4cab98123b96abfce2403cafbb40.jpg@!150w-c.jpg','百利品牌钜惠-买粮赠罐头','220.3'),(14,'/static/img/content/08e217cb9378e6c7697d0852c07631f5.jpg@!150w-c.jpg','比瑞吉满400最高送100','166.7'),(15,'/static/img/content/b6b7f5bc4760dba77e99daa3c1868ffb.jpg@!150w-c.jpg','路斯全场满49减10 99减20','220.3'),(16,'/static/img/content/08e217cb9378e6c7697d0852c07631f5.jpg@!150w-c.jpg','顽皮品牌专场 低至5折起','220.3'),(17,'/static/img/content/d58f4cab98123b96abfce2403cafbb40.jpg@!150w-c.jpg','“巅峰”盛宴，限量回馈','220.3'),(18,'/static/img/content/b6b7f5bc4760dba77e99daa3c1868ffb.jpg@!150w-c.jpg','百利品牌钜惠-买粮赠罐头','144.6'),(19,'/static/img/content/9bc04fb398ca7c492838db831e21d3ee.jpg@!150w-c.jpg','奥运宝最高1送4','220.3'),(20,'/static/img/content/918f312cd5235698bd28108c683b2daf.jpg@!150w-c.jpg','安娜玛特大牌精选','122.8'),(21,'/static/img/content/35d052bef6d3e89ef470147ccd7b47b7.jpg@!150w-c.jpg','百利品牌钜惠-买粮赠罐头','220.3'),(22,'/static/img/content/08e217cb9378e6c7697d0852c07631f5.jpg@!150w-c.jpg','比瑞吉满400最高送100','220.3'),(23,'/static/img/content/8bdfa4386ee08568c4f834220dd213f5.jpg@!150w-c.jpg','路斯全场满49减10 99减20','220.3'),(24,'/static/img/content/b6b7f5bc4760dba77e99daa3c1868ffb.jpg@!150w-c.jpg','顽皮品牌专场 低至5折起','220.3'),(25,'/static/img/content/d58f4cab98123b96abfce2403cafbb40.jpg@!150w-c.jpg','“巅峰”盛宴，限量回馈','220.3'),(26,'/static/img/content/b6b7f5bc4760dba77e99daa3c1868ffb.jpg@!150w-c.jpg','百利品牌钜惠-买粮赠罐头','220.3'),(27,'/static/img/content/9bc04fb398ca7c492838db831e21d3ee.jpg@!150w-c.jpg','奥运宝最高1送4','90.3'),(28,'/static/img/content/918f312cd5235698bd28108c683b2daf.jpg@!150w-c.jpg','安娜玛特大牌精选','220.3'),(29,'/static/img/content/35d052bef6d3e89ef470147ccd7b47b7.jpg@!150w-c.jpg','百利品牌钜惠-买粮赠罐头','660.3'),(30,'/static/img/content/08e217cb9378e6c7697d0852c07631f5.jpg@!150w-c.jpg','比瑞吉满400最高送100','220.3'),(31,'/static/img/content/8bdfa4386ee08568c4f834220dd213f5.jpg@!150w-c.jpg','路斯全场满49减10 99减20','220.3'),(32,'/static/img/content/b6b7f5bc4760dba77e99daa3c1868ffb.jpg@!150w-c.jpg','顽皮品牌专场 低至5折起','220.3'),(33,'/static/img/content/d58f4cab98123b96abfce2403cafbb40.jpg@!150w-c.jpg','“巅峰”盛宴，限量回馈','220.3'),(34,'/static/img/content/b6b7f5bc4760dba77e99daa3c1868ffb.jpg@!150w-c.jpg','百利品牌钜惠-买粮赠罐头','220.3'),(35,'/static/img/content/9bc04fb398ca7c492838db831e21d3ee.jpg@!150w-c.jpg','奥运宝最高1送4','220.3'),(36,'/static/img/content/918f312cd5235698bd28108c683b2daf.jpg@!150w-c.jpg','安娜玛特大牌精选','220.3'),(37,'/static/img/content/35d052bef6d3e89ef470147ccd7b47b7.jpg@!150w-c.jpg','百利品牌钜惠-买粮赠罐头','300.5'),(38,'/static/img/content/08e217cb9378e6c7697d0852c07631f5.jpg@!150w-c.jpg','比瑞吉满400最高送100','220.3'),(39,'/static/img/content/8bdfa4386ee08568c4f834220dd213f5.jpg@!150w-c.jpg','路斯全场满49减10 99减20','220.3'),(40,'/static/img/content/d58f4cab98123b96abfce2403cafbb40.jpg@!150w-c.jpg','顽皮品牌专场 低至5折起','220.3'),(41,'/static/img/content/9bc04fb398ca7c492838db831e21d3ee.jpg@!150w-c.jpg','“巅峰”盛宴，限量回馈','220.3'),(42,'/static/img/content/b6b7f5bc4760dba77e99daa3c1868ffb.jpg@!150w-c.jpg','百利品牌钜惠-买粮赠罐头','220.3'),(43,'/static/img/content/9bc04fb398ca7c492838db831e21d3ee.jpg@!150w-c.jpg','奥运宝最高1送4','220.3'),(44,'/static/img/content/918f312cd5235698bd28108c683b2daf.jpg@!150w-c.jpg','安娜玛特大牌精选','220.3'),(45,'/static/img/content/35d052bef6d3e89ef470147ccd7b47b7.jpg@!150w-c.jpg','百利品牌钜惠-买粮赠罐头','220.3'),(46,'/static/img/content/b6b7f5bc4760dba77e99daa3c1868ffb.jpg@!150w-c.jpg','比瑞吉满400最高送100','220.3'),(47,'/static/img/content/8bdfa4386ee08568c4f834220dd213f5.jpg@!150w-c.jpg','路斯全场满49减10 99减20','220.3'),(48,'/static/img/content/08e217cb9378e6c7697d0852c07631f5.jpg@!150w-c.jpg','顽皮品牌专场 低至5折起','220.3');
/*!40000 ALTER TABLE `app_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_order`
--

DROP TABLE IF EXISTS `app_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `identifier` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_order_user_id_f25a9fc4_fk_app_user_id` (`user_id`),
  CONSTRAINT `app_order_user_id_f25a9fc4_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_order`
--

LOCK TABLES `app_order` WRITE;
/*!40000 ALTER TABLE `app_order` DISABLE KEYS */;
INSERT INTO `app_order` VALUES (3,'2019-01-16 07:25:08.212714',0,'544715476235084342',10),(4,'2019-01-16 08:22:43.271939',0,'989515476269637058',10),(5,'2019-01-16 08:25:28.274509',0,'662915476271287987',10),(6,'2019-01-16 08:27:44.580433',0,'417315476272649139',10),(7,'2019-01-16 08:29:56.081032',0,'956115476273962166',10),(8,'2019-01-16 08:43:45.722656',0,'470615476282255901',10);
/*!40000 ALTER TABLE `app_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ordergoods`
--

DROP TABLE IF EXISTS `app_ordergoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_ordergoods_goods_id_b3c19f94_fk_app_dailysurprise_id` (`goods_id`),
  KEY `app_ordergoods_order_id_ef926487_fk_app_order_id` (`order_id`),
  CONSTRAINT `app_ordergoods_goods_id_b3c19f94_fk_app_dailysurprise_id` FOREIGN KEY (`goods_id`) REFERENCES `app_dailysurprise` (`id`),
  CONSTRAINT `app_ordergoods_order_id_ef926487_fk_app_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ordergoods`
--

LOCK TABLES `app_ordergoods` WRITE;
/*!40000 ALTER TABLE `app_ordergoods` DISABLE KEYS */;
INSERT INTO `app_ordergoods` VALUES (4,3,23,3),(5,3,22,3),(6,2,19,4),(7,3,22,5),(8,2,23,7),(9,1,21,8);
/*!40000 ALTER TABLE `app_ordergoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_recommendation`
--

DROP TABLE IF EXISTS `app_recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_recommendation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(20) NOT NULL,
  `reason` varchar(20) NOT NULL,
  `p` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_recommendation`
--

LOCK TABLES `app_recommendation` WRITE;
/*!40000 ALTER TABLE `app_recommendation` DISABLE KEYS */;
INSERT INTO `app_recommendation` VALUES (1,'/static/img/content/042654989973e6ebd06dfa49b39a76bd.jpg@!200w-c.jpg','风来客 幼犬营养肉压骨 鸡肉味 ！','￥58.4','推荐理由：','嘘后水全球兽医推荐，真正从根源彻底清除尿液气味！有效抑菌！'),(2,'/static/img/content/db225e272a117b155ed226c123fadc82.jpg@!200w-c.jpg','悠润 宠物专用嘘后水抑菌不留味！','￥38.4','推荐理由：','狗狗会通过尿液来占领领地，并重复在相同位置上加强尿液气味，所以狗狗尿尿后一定要迅速处理。嘘后水全球兽医推荐，真正从根源彻底清除尿液气味！有效抑菌！'),(3,'/static/img/content/363cae7c577b866e9e55c36b0edd08bf.jpg@!200w-c.jpg','英国MAG 优质配方海藻粉 美毛更出众 ','￥109','推荐理由：','重复在相同位置上加强尿液气味，所以狗狗尿尿后一定要迅速处理。嘘后水全球兽医推荐，真正从根源彻底清除尿液气味！有效抑菌！'),(4,'/static/img/content/ce7ba02dc4f7d5686adeafe7a1144d69.jpg@!200w-c.jpg','七彩糖果犬用缺口单碗 春绿小号！','￥38.4','推荐理由：','狗狗会通过尿液来占领领地，并重复在相同位置上加强尿液气味，所以狗狗尿尿后一定要迅速处理。嘘后水全球兽医推荐，真正从根源彻底清除尿液气味！有效抑菌！'),(5,'/static/img/content/ff3beb0bacad6eb7baee3226e0b2e351.jpg@!200w-c.jpg','悠润 宠物专用嘘后水抑菌不留味！','￥38.4','推荐理由：','狗狗会通过尿液来占领领地，并重复在相同位置上加强尿液气味，所以狗狗尿尿后一定要迅速处理。嘘后水全球兽医推荐，真正从根源彻底清除尿液气味！有效抑菌！'),(6,'/static/img/content/eeb9ca10fc25b12673304848a72f5b67.jpg@!200w-c.jpg','悠润 宠物专用嘘后水抑菌不留味！','￥38.4','推荐理由：','狗狗会通过尿液来占领领地，并重复在相同位置上加强尿液气味，所以狗狗尿尿后一定要迅速处理。嘘后水全球兽医推荐，真正从根源彻底清除尿液气味！有效抑菌！');
/*!40000 ALTER TABLE `app_recommendation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_shopcar`
--

DROP TABLE IF EXISTS `app_shopcar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_shopcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `is_select` tinyint(1) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_shopcar_goods_id_1cf64a41_fk_app_dailysurprise_id` (`goods_id`),
  KEY `app_shopcar_user_id_fbaa3ce7_fk_app_user_id` (`user_id`),
  CONSTRAINT `app_shopcar_goods_id_1cf64a41_fk_app_dailysurprise_id` FOREIGN KEY (`goods_id`) REFERENCES `app_dailysurprise` (`id`),
  CONSTRAINT `app_shopcar_user_id_fbaa3ce7_fk_app_user_id` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_shopcar`
--

LOCK TABLES `app_shopcar` WRITE;
/*!40000 ALTER TABLE `app_shopcar` DISABLE KEYS */;
INSERT INTO `app_shopcar` VALUES (47,1,1,22,10),(48,1,1,24,10);
/*!40000 ALTER TABLE `app_shopcar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `token` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_user_name_885ddb9e_uniq` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (10,'zhangsan','1@qq.com','e10adc3949ba59abbe56e057f20f883e','ef264d3dfe2f130c6189c3ff3f57f976'),(11,'nihao1','12@qqcom','e10adc3949ba59abbe56e057f20f883e','5ec2ca799a150f4377bd5161603d485a');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add banner',7,'add_banner'),(20,'Can change banner',7,'change_banner'),(21,'Can delete banner',7,'delete_banner'),(22,'Can add recommendation',8,'add_recommendation'),(23,'Can change recommendation',8,'change_recommendation'),(24,'Can delete recommendation',8,'delete_recommendation'),(25,'Can add goods',9,'add_goods'),(26,'Can change goods',9,'change_goods'),(27,'Can delete goods',9,'delete_goods'),(28,'Can add daily surprise',10,'add_dailysurprise'),(29,'Can change daily surprise',10,'change_dailysurprise'),(30,'Can delete daily surprise',10,'delete_dailysurprise'),(31,'Can add user',11,'add_user'),(32,'Can change user',11,'change_user'),(33,'Can delete user',11,'delete_user'),(34,'Can add shopcar',12,'add_shopcar'),(35,'Can change shopcar',12,'change_shopcar'),(36,'Can delete shopcar',12,'delete_shopcar'),(37,'Can add order goods',13,'add_ordergoods'),(38,'Can change order goods',13,'change_ordergoods'),(39,'Can delete order goods',13,'delete_ordergoods'),(40,'Can add order',14,'add_order'),(41,'Can change order',14,'change_order'),(42,'Can delete order',14,'delete_order');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','banner'),(10,'app','dailysurprise'),(9,'app','goods'),(14,'app','order'),(13,'app','ordergoods'),(8,'app','recommendation'),(12,'app','shopcar'),(11,'app','user'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-01-09 07:59:18.785238'),(2,'auth','0001_initial','2019-01-09 07:59:19.041733'),(3,'admin','0001_initial','2019-01-09 07:59:19.115523'),(4,'admin','0002_logentry_remove_auto_add','2019-01-09 07:59:19.128848'),(5,'contenttypes','0002_remove_content_type_name','2019-01-09 07:59:19.196265'),(6,'auth','0002_alter_permission_name_max_length','2019-01-09 07:59:19.226242'),(7,'auth','0003_alter_user_email_max_length','2019-01-09 07:59:19.265393'),(8,'auth','0004_alter_user_username_opts','2019-01-09 07:59:19.286480'),(9,'auth','0005_alter_user_last_login_null','2019-01-09 07:59:19.324383'),(10,'auth','0006_require_contenttypes_0002','2019-01-09 07:59:19.326521'),(11,'auth','0007_alter_validators_add_error_messages','2019-01-09 07:59:19.344769'),(12,'auth','0008_alter_user_username_max_length','2019-01-09 07:59:19.390724'),(13,'sessions','0001_initial','2019-01-09 07:59:19.409765'),(14,'app','0001_initial','2019-01-09 08:58:43.439873'),(15,'app','0002_recommendation','2019-01-09 15:14:43.452984'),(16,'app','0003_goods','2019-01-10 11:09:36.391372'),(17,'app','0004_dailysurprise','2019-01-10 12:49:44.289766'),(20,'app','0005_user','2019-01-12 05:20:11.320289'),(21,'app','0006_dailysurprise_user','2019-01-12 07:29:18.842456'),(22,'app','0007_auto_20190112_0808','2019-01-12 08:08:50.982715'),(23,'app','0008_auto_20190115_0429','2019-01-15 04:30:01.893309'),(24,'app','0009_auto_20190115_0854','2019-01-15 08:54:09.683547'),(25,'app','0010_order_ordergoods','2019-01-16 03:16:59.517927');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('qn1lzz4o16z9p48wrmkmkaue3mu2yyu1','ZGYxZmMyZTY1OTI5NmMxMTcwYzU1ZTBkNTY0NTYyNTBmNzU2MmI2Nzp7InRva2VuIjoiNWVjMmNhNzk5YTE1MGY0Mzc3YmQ1MTYxNjAzZDQ4NWEifQ==','2019-01-30 11:33:03.824312'),('w6fjsi1e8m3j6qmougzuigpxowqf7w0w','MDFhZmVjZjY1MWQ4NDU5ZDgzZTRhMTgwOWY4Y2Y4YzYzMTRiYjhiZDp7InRva2VuIjoiNTZkYTA2ZGZiMTY1NWY3YmU2ZmYxNTM0NzE3MDliNjEifQ==','2019-01-28 03:56:13.153107');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-16 21:08:05
