-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot06bg9
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springboot06bg9`
--

/*!40000 DROP DATABASE IF EXISTS `springboot06bg9`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot06bg9` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot06bg9`;

--
-- Table structure for table `biyexinxi`
--

DROP TABLE IF EXISTS `biyexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiuyeqiye` varchar(200) DEFAULT NULL COMMENT '就业企业',
  `jiuyedidian` varchar(200) DEFAULT NULL COMMENT '就业地点',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `jiuyeshijian` varchar(200) DEFAULT NULL COMMENT '就业时间',
  `jiuyefangxiang` varchar(200) DEFAULT NULL COMMENT '就业方向',
  `lixiaoshijian` varchar(200) DEFAULT NULL COMMENT '离校时间',
  `xinxibeizhu` longtext COMMENT '信息备注',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1677245702640 DEFAULT CHARSET=utf8 COMMENT='毕业信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biyexinxi`
--

LOCK TABLES `biyexinxi` WRITE;
/*!40000 ALTER TABLE `biyexinxi` DISABLE KEYS */;
INSERT INTO `biyexinxi` VALUES (81,'2023-02-24 13:32:52','就业企业1','就业地点1','工号1','教师姓名1','就业时间1','就业方向1','离校时间1','信息备注1','学号1','姓名1','13823888881'),(82,'2023-02-24 13:32:52','就业企业2','就业地点2','工号2','教师姓名2','就业时间2','就业方向2','离校时间2','信息备注2','学号2','姓名2','13823888882'),(83,'2023-02-24 13:32:52','就业企业3','就业地点3','工号3','教师姓名3','就业时间3','就业方向3','离校时间3','信息备注3','学号3','姓名3','13823888883'),(84,'2023-02-24 13:32:52','就业企业4','就业地点4','工号4','教师姓名4','就业时间4','就业方向4','离校时间4','信息备注4','学号4','姓名4','13823888884'),(85,'2023-02-24 13:32:52','就业企业5','就业地点5','工号5','教师姓名5','就业时间5','就业方向5','离校时间5','信息备注5','学号5','姓名5','13823888885'),(86,'2023-02-24 13:32:52','就业企业6','就业地点6','工号6','教师姓名6','就业时间6','就业方向6','离校时间6','信息备注6','学号6','姓名6','13823888886'),(87,'2023-02-24 13:32:52','就业企业7','就业地点7','工号7','教师姓名7','就业时间7','就业方向7','离校时间7','信息备注7','学号7','姓名7','13823888887'),(88,'2023-02-24 13:32:52','就业企业8','就业地点8','工号8','教师姓名8','就业时间8','就业方向8','离校时间8','信息备注8','学号8','姓名8','13823888888'),(1677245702639,'2023-02-24 13:35:01','1221','21','1','教师姓名8','21','21','21','2112','1','姓名8','13823888888');
/*!40000 ALTER TABLE `biyexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1,'2023-02-24 13:32:52','十万个为什么',60,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1,'2023-02-24 13:32:52',1,'十万个为什么','下面动物不属于昆虫的是（）。','[{\"text\":\"A.苍蝇\",\"code\":\"A\"},{\"text\":\"B.蜜蜂\",\"code\":\"B\"},{\"text\":\"C.蜂鸟\",\"code\":\"C\"}]',20,'C','蜂鸟',0,1),(2,'2023-02-24 13:32:52',1,'十万个为什么','油着火后可以用水扑灭。','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'B','油着火后不可以用水扑灭',2,2),(3,'2023-02-24 13:32:52',1,'十万个为什么','地球是个球体，中间是（ ）。','[]',30,'赤道','赤道',3,3),(4,'2023-02-24 13:32:52',1,'十万个为什么','下面动物中会流汗的有（ ）。','[{\"text\":\"A.马\",\"code\":\"A\"},{\"text\":\"B.猫\",\"code\":\"B\"},{\"text\":\"C.狗\",\"code\":\"C\"}]',30,'A,B','狗不会流汗',1,4);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaotongzhi`
--

DROP TABLE IF EXISTS `gonggaotongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaotongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` longtext COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='公告通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaotongzhi`
--

LOCK TABLES `gonggaotongzhi` WRITE;
/*!40000 ALTER TABLE `gonggaotongzhi` DISABLE KEYS */;
INSERT INTO `gonggaotongzhi` VALUES (31,'2023-02-24 13:32:52','标题1','公告','upload/gonggaotongzhi_tupian1.jpg,upload/gonggaotongzhi_tupian2.jpg,upload/gonggaotongzhi_tupian3.jpg','公告内容1','2023-02-24 21:32:52'),(32,'2023-02-24 13:32:52','标题2','公告','upload/gonggaotongzhi_tupian2.jpg,upload/gonggaotongzhi_tupian3.jpg,upload/gonggaotongzhi_tupian4.jpg','公告内容2','2023-02-24 21:32:52'),(33,'2023-02-24 13:32:52','标题3','公告','upload/gonggaotongzhi_tupian3.jpg,upload/gonggaotongzhi_tupian4.jpg,upload/gonggaotongzhi_tupian5.jpg','公告内容3','2023-02-24 21:32:52'),(34,'2023-02-24 13:32:52','标题4','公告','upload/gonggaotongzhi_tupian4.jpg,upload/gonggaotongzhi_tupian5.jpg,upload/gonggaotongzhi_tupian6.jpg','公告内容4','2023-02-24 21:32:52'),(35,'2023-02-24 13:32:52','标题5','公告','upload/gonggaotongzhi_tupian5.jpg,upload/gonggaotongzhi_tupian6.jpg,upload/gonggaotongzhi_tupian7.jpg','公告内容5','2023-02-24 21:32:52'),(36,'2023-02-24 13:32:52','标题6','公告','upload/gonggaotongzhi_tupian6.jpg,upload/gonggaotongzhi_tupian7.jpg,upload/gonggaotongzhi_tupian8.jpg','公告内容6','2023-02-24 21:32:52'),(37,'2023-02-24 13:32:52','标题7','公告','upload/gonggaotongzhi_tupian7.jpg,upload/gonggaotongzhi_tupian8.jpg,upload/gonggaotongzhi_tupian9.jpg','公告内容7','2023-02-24 21:32:52'),(38,'2023-02-24 13:32:52','标题8','公告','upload/gonggaotongzhi_tupian8.jpg,upload/gonggaotongzhi_tupian9.jpg,upload/gonggaotongzhi_tupian10.jpg','公告内容8','2023-02-24 21:32:52');
/*!40000 ALTER TABLE `gonggaotongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2023-02-24 13:32:52','工号1','e10adc3949ba59abbe56e057f20f883e','教师姓名1','男','upload/jiaoshi_touxiang1.jpg','学院1','职称1','13823888881','是',''),(22,'2023-02-24 13:32:52','工号2','e10adc3949ba59abbe56e057f20f883e','教师姓名2','男','upload/jiaoshi_touxiang2.jpg','学院2','职称2','13823888882','是',''),(23,'2023-02-24 13:32:52','工号3','e10adc3949ba59abbe56e057f20f883e','教师姓名3','男','upload/jiaoshi_touxiang3.jpg','学院3','职称3','13823888883','是',''),(24,'2023-02-24 13:32:52','工号4','e10adc3949ba59abbe56e057f20f883e','教师姓名4','男','upload/jiaoshi_touxiang4.jpg','学院4','职称4','13823888884','是',''),(25,'2023-02-24 13:32:52','工号5','e10adc3949ba59abbe56e057f20f883e','教师姓名5','男','upload/jiaoshi_touxiang5.jpg','学院5','职称5','13823888885','是',''),(26,'2023-02-24 13:32:52','工号6','e10adc3949ba59abbe56e057f20f883e','教师姓名6','男','upload/jiaoshi_touxiang6.jpg','学院6','职称6','13823888886','是',''),(27,'2023-02-24 13:32:52','工号7','e10adc3949ba59abbe56e057f20f883e','教师姓名7','男','upload/jiaoshi_touxiang7.jpg','学院7','职称7','13823888887','是',''),(28,'2023-02-24 13:32:52','1','c4ca4238a0b923820dcc509a6f75849b','教师姓名8','男','upload/jiaoshi_touxiang8.jpg','学院8','职称8','13823888888','是','');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengchengji`
--

DROP TABLE IF EXISTS `kechengchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `fenshu` float NOT NULL COMMENT '分数',
  `chengji` varchar(200) NOT NULL COMMENT '成绩',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='课程成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengchengji`
--

LOCK TABLES `kechengchengji` WRITE;
/*!40000 ALTER TABLE `kechengchengji` DISABLE KEYS */;
INSERT INTO `kechengchengji` VALUES (71,'2023-02-24 13:32:52','课程名称1','学号1','姓名1','班级1',1,'优秀','2023-02-24 21:32:52','工号1','教师姓名1',1,1),(72,'2023-02-24 13:32:52','课程名称2','学号2','姓名2','班级2',2,'优秀','2023-02-24 21:32:52','工号2','教师姓名2',2,2),(73,'2023-02-24 13:32:52','课程名称3','学号3','姓名3','班级3',3,'优秀','2023-02-24 21:32:52','工号3','教师姓名3',3,3),(74,'2023-02-24 13:32:52','课程名称4','学号4','姓名4','班级4',4,'优秀','2023-02-24 21:32:52','工号4','教师姓名4',4,4),(75,'2023-02-24 13:32:52','课程名称5','学号5','姓名5','班级5',5,'优秀','2023-02-24 21:32:52','工号5','教师姓名5',5,5),(76,'2023-02-24 13:32:52','课程名称6','学号6','姓名6','班级6',6,'良好','2023-02-24 21:32:52','工号6','教师姓名6',6,6),(77,'2023-02-24 13:32:52','课程名称7','学号7','姓名7','班级7',7,'优秀','2023-02-24 21:32:52','工号7','教师姓名7',7,7),(78,'2023-02-24 13:32:52','课程名称8','学号8','姓名8','班级8',8,'优秀','2023-02-24 21:32:52','工号8','教师姓名8',8,8);
/*!40000 ALTER TABLE `kechengchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengleixing`
--

DROP TABLE IF EXISTS `kechengleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='课程类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengleixing`
--

LOCK TABLES `kechengleixing` WRITE;
/*!40000 ALTER TABLE `kechengleixing` DISABLE KEYS */;
INSERT INTO `kechengleixing` VALUES (41,'2023-02-24 13:32:52','课程类型1'),(42,'2023-02-24 13:32:52','课程类型2'),(43,'2023-02-24 13:32:52','课程类型3'),(44,'2023-02-24 13:32:52','课程类型4'),(45,'2023-02-24 13:32:52','课程类型5'),(46,'2023-02-24 13:32:52','课程类型6'),(47,'2023-02-24 13:32:52','课程类型7'),(48,'2023-02-24 13:32:52','课程类型8');
/*!40000 ALTER TABLE `kechengleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `shangkeshijian` date NOT NULL COMMENT '上课时间',
  `shangkedidian` varchar(200) NOT NULL COMMENT '上课地点',
  `renkejiaoshi` varchar(200) NOT NULL COMMENT '任课教师',
  `kexuanrenshu` int(11) NOT NULL COMMENT '可选人数',
  `kechengjieshao` longtext NOT NULL COMMENT '课程介绍',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (51,'2023-02-24 13:32:52','课程名称1','课程类型1','2023-02-24','上课地点1','任课教师1',1,'课程介绍1','工号1'),(52,'2023-02-24 13:32:52','课程名称2','课程类型2','2023-02-24','上课地点2','任课教师2',2,'课程介绍2','工号2'),(53,'2023-02-24 13:32:52','课程名称3','课程类型3','2023-02-24','上课地点3','任课教师3',3,'课程介绍3','工号3'),(54,'2023-02-24 13:32:52','课程名称4','课程类型4','2023-02-24','上课地点4','任课教师4',4,'课程介绍4','工号4'),(55,'2023-02-24 13:32:52','课程名称5','课程类型5','2023-02-24','上课地点5','任课教师5',5,'课程介绍5','工号5'),(56,'2023-02-24 13:32:52','课程名称6','课程类型6','2023-02-24','上课地点6','任课教师6',6,'课程介绍6','工号6'),(57,'2023-02-24 13:32:52','课程名称7','课程类型7','2023-02-24','上课地点7','任课教师7',7,'课程介绍7','工号7'),(58,'2023-02-24 13:32:52','课程名称8','课程类型8','2023-02-24','上课地点8','任课教师8',8,'课程介绍8','工号8');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','x3zxc043yqjz0nm94vlwgyd58ftm06tu','2023-02-24 13:34:31','2023-02-24 14:34:31'),(2,18,'1','xuesheng','学生','qy4hdtarudjxpxal7y7tr4n5rv9ewoc7','2023-02-24 13:34:54','2023-02-24 14:35:03'),(3,28,'1','jiaoshi','管理员','i7mo4ja5ik65o5rj1qk9phuti934icaa','2023-02-24 13:35:04','2023-02-24 14:35:04');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-24 13:32:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuankexinxi`
--

DROP TABLE IF EXISTS `xuankexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuankexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `xuankeshuoming` longtext NOT NULL COMMENT '选课说明',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `kexuanrenshu` int(11) DEFAULT NULL COMMENT '选课人数',
  `xuankeshijian` date NOT NULL COMMENT '选课时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='选课信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuankexinxi`
--

LOCK TABLES `xuankexinxi` WRITE;
/*!40000 ALTER TABLE `xuankexinxi` DISABLE KEYS */;
INSERT INTO `xuankexinxi` VALUES (61,'2023-02-24 13:32:52','课程名称1','课程类型1','选课说明1','工号1',1,'2023-02-24','学号1','姓名1','学院1','班级1',1,1),(62,'2023-02-24 13:32:52','课程名称2','课程类型2','选课说明2','工号2',1,'2023-02-24','学号2','姓名2','学院2','班级2',2,2),(63,'2023-02-24 13:32:52','课程名称3','课程类型3','选课说明3','工号3',1,'2023-02-24','学号3','姓名3','学院3','班级3',3,3),(64,'2023-02-24 13:32:52','课程名称4','课程类型4','选课说明4','工号4',1,'2023-02-24','学号4','姓名4','学院4','班级4',4,4),(65,'2023-02-24 13:32:52','课程名称5','课程类型5','选课说明5','工号5',1,'2023-02-24','学号5','姓名5','学院5','班级5',5,5),(66,'2023-02-24 13:32:52','课程名称6','课程类型6','选课说明6','工号6',1,'2023-02-24','学号6','姓名6','学院6','班级6',6,6),(67,'2023-02-24 13:32:52','课程名称7','课程类型7','选课说明7','工号7',1,'2023-02-24','学号7','姓名7','学院7','班级7',7,7),(68,'2023-02-24 13:32:52','课程名称8','课程类型8','选课说明8','工号8',1,'2023-02-24','学号8','姓名8','学院8','班级8',8,8);
/*!40000 ALTER TABLE `xuankexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2023-02-24 13:32:52','学号1','e10adc3949ba59abbe56e057f20f883e','姓名1','男','upload/xuesheng_touxiang1.jpg','学院1','专业1','班级1','13823888881'),(12,'2023-02-24 13:32:52','学号2','e10adc3949ba59abbe56e057f20f883e','姓名2','男','upload/xuesheng_touxiang2.jpg','学院2','专业2','班级2','13823888882'),(13,'2023-02-24 13:32:52','学号3','e10adc3949ba59abbe56e057f20f883e','姓名3','男','upload/xuesheng_touxiang3.jpg','学院3','专业3','班级3','13823888883'),(14,'2023-02-24 13:32:52','学号4','e10adc3949ba59abbe56e057f20f883e','姓名4','男','upload/xuesheng_touxiang4.jpg','学院4','专业4','班级4','13823888884'),(15,'2023-02-24 13:32:52','学号5','e10adc3949ba59abbe56e057f20f883e','姓名5','男','upload/xuesheng_touxiang5.jpg','学院5','专业5','班级5','13823888885'),(16,'2023-02-24 13:32:52','学号6','e10adc3949ba59abbe56e057f20f883e','姓名6','男','upload/xuesheng_touxiang6.jpg','学院6','专业6','班级6','13823888886'),(17,'2023-02-24 13:32:52','学号7','e10adc3949ba59abbe56e057f20f883e','姓名7','男','upload/xuesheng_touxiang7.jpg','学院7','专业7','班级7','13823888887'),(18,'2023-02-24 13:32:52','1','c4ca4238a0b923820dcc509a6f75849b','姓名8','男','upload/xuesheng_touxiang8.jpg','学院8','专业8','班级8','13823888888');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengkaoqin`
--

DROP TABLE IF EXISTS `xueshengkaoqin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengkaoqin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `kaoqinriqi` date NOT NULL COMMENT '考勤日期',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `kaoqinzhuangkuang` varchar(200) NOT NULL COMMENT '考勤状况',
  `kaoqinshuoming` longtext NOT NULL COMMENT '考勤说明',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='学生考勤';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengkaoqin`
--

LOCK TABLES `xueshengkaoqin` WRITE;
/*!40000 ALTER TABLE `xueshengkaoqin` DISABLE KEYS */;
INSERT INTO `xueshengkaoqin` VALUES (91,'2023-02-24 13:32:52','名称1','2023-02-24','学号1','姓名1','迟到','考勤说明1','工号1','教师姓名1'),(92,'2023-02-24 13:32:52','名称2','2023-02-24','学号2','姓名2','迟到','考勤说明2','工号2','教师姓名2'),(93,'2023-02-24 13:32:52','名称3','2023-02-24','学号3','姓名3','迟到','考勤说明3','工号3','教师姓名3'),(94,'2023-02-24 13:32:52','名称4','2023-02-24','学号4','姓名4','迟到','考勤说明4','工号4','教师姓名4'),(95,'2023-02-24 13:32:52','名称5','2023-02-24','学号5','姓名5','迟到','考勤说明5','工号5','教师姓名5'),(96,'2023-02-24 13:32:52','名称6','2023-02-24','学号6','姓名6','迟到','考勤说明6','工号6','教师姓名6'),(97,'2023-02-24 13:32:52','名称7','2023-02-24','学号7','姓名7','迟到','考勤说明7','工号7','教师姓名7'),(98,'2023-02-24 13:32:52','名称8','2023-02-24','学号8','姓名8','迟到','考勤说明8','工号8','教师姓名8');
/*!40000 ALTER TABLE `xueshengkaoqin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zonghesuzhi`
--

DROP TABLE IF EXISTS `zonghesuzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zonghesuzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xuexinengli` varchar(200) NOT NULL COMMENT '学习能力',
  `sixiangpinde` varchar(200) NOT NULL COMMENT '思想品德',
  `yundongjiankang` varchar(200) NOT NULL COMMENT '运动健康',
  `xinlisuzhi` varchar(200) NOT NULL COMMENT '心理素质',
  `laoshipingjia` longtext COMMENT '老师评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='综合素质';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zonghesuzhi`
--

LOCK TABLES `zonghesuzhi` WRITE;
/*!40000 ALTER TABLE `zonghesuzhi` DISABLE KEYS */;
INSERT INTO `zonghesuzhi` VALUES (101,'2023-02-24 13:32:52','学号1','姓名1','学院1','班级1','优秀','优秀','优秀','优秀','老师评价1','2023-02-24','工号1','教师姓名1'),(102,'2023-02-24 13:32:52','学号2','姓名2','学院2','班级2','优秀','优秀','优秀','优秀','老师评价2','2023-02-24','工号2','教师姓名2'),(103,'2023-02-24 13:32:52','学号3','姓名3','学院3','班级3','优秀','优秀','优秀','优秀','老师评价3','2023-02-24','工号3','教师姓名3'),(104,'2023-02-24 13:32:52','学号4','姓名4','学院4','班级4','优秀','优秀','优秀','优秀','老师评价4','2023-02-24','工号4','教师姓名4'),(105,'2023-02-24 13:32:52','学号5','姓名5','学院5','班级5','优秀','优秀','优秀','优秀','老师评价5','2023-02-24','工号5','教师姓名5'),(106,'2023-02-24 13:32:52','学号6','姓名6','学院6','班级6','优秀','优秀','优秀','优秀','老师评价6','2023-02-24','工号6','教师姓名6'),(107,'2023-02-24 13:32:52','学号7','姓名7','学院7','班级7','优秀','优秀','优秀','优秀','老师评价7','2023-02-24','工号7','教师姓名7'),(108,'2023-02-24 13:32:52','学号8','姓名8','学院8','班级8','优秀','优秀','优秀','优秀','老师评价8','2023-02-24','工号8','教师姓名8');
/*!40000 ALTER TABLE `zonghesuzhi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-01 15:33:27
