-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: djangomooc
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.17.04.1-log

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
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 用户信息',6,'add_userprofile'),(17,'Can change 用户信息',6,'change_userprofile'),(18,'Can delete 用户信息',6,'delete_userprofile'),(19,'Can add 邮箱验证码',7,'add_emailverifyrecord'),(20,'Can change 邮箱验证码',7,'change_emailverifyrecord'),(21,'Can delete 邮箱验证码',7,'delete_emailverifyrecord'),(22,'Can add 轮播图',8,'add_banner'),(23,'Can change 轮播图',8,'change_banner'),(24,'Can delete 轮播图',8,'delete_banner'),(25,'Can add 课程',9,'add_course'),(26,'Can change 课程',9,'change_course'),(27,'Can delete 课程',9,'delete_course'),(28,'Can add 章节',10,'add_lesson'),(29,'Can change 章节',10,'change_lesson'),(30,'Can delete 章节',10,'delete_lesson'),(31,'Can add 视频',11,'add_video'),(32,'Can change 视频',11,'change_video'),(33,'Can delete 视频',11,'delete_video'),(37,'Can add 城市',13,'add_citydict'),(38,'Can change 城市',13,'change_citydict'),(39,'Can delete 城市',13,'delete_citydict'),(40,'Can add 课程机构',14,'add_courseorg'),(41,'Can change 课程机构',14,'change_courseorg'),(42,'Can delete 课程机构',14,'delete_courseorg'),(43,'Can add 教师',15,'add_teacher'),(44,'Can change 教师',15,'change_teacher'),(45,'Can delete 教师',15,'delete_teacher'),(46,'Can add 用户咨询',16,'add_userask'),(47,'Can change 用户咨询',16,'change_userask'),(48,'Can delete 用户咨询',16,'delete_userask'),(49,'Can add 课程评论',17,'add_coursecomments'),(50,'Can change 课程评论',17,'change_coursecomments'),(51,'Can delete 课程评论',17,'delete_coursecomments'),(52,'Can add 用户收藏',18,'add_userfavorite'),(53,'Can change 用户收藏',18,'change_userfavorite'),(54,'Can delete 用户收藏',18,'delete_userfavorite'),(55,'Can add 用户消息',19,'add_usermessage'),(56,'Can change 用户消息',19,'change_usermessage'),(57,'Can delete 用户消息',19,'delete_usermessage'),(58,'Can add 用户课程',20,'add_usercourse'),(59,'Can change 用户课程',20,'change_usercourse'),(60,'Can delete 用户课程',20,'delete_usercourse'),(61,'Can view log entry',1,'view_logentry'),(62,'Can view group',3,'view_group'),(63,'Can view permission',2,'view_permission'),(64,'Can view content type',4,'view_contenttype'),(65,'Can view 课程',9,'view_course'),(67,'Can view 章节',10,'view_lesson'),(68,'Can view 视频',11,'view_video'),(69,'Can view 课程评论',17,'view_coursecomments'),(70,'Can view 用户咨询',16,'view_userask'),(71,'Can view 用户课程',20,'view_usercourse'),(72,'Can view 用户收藏',18,'view_userfavorite'),(73,'Can view 用户消息',19,'view_usermessage'),(74,'Can view 城市',13,'view_citydict'),(75,'Can view 课程机构',14,'view_courseorg'),(76,'Can view 教师',15,'view_teacher'),(77,'Can view session',5,'view_session'),(78,'Can view 轮播图',8,'view_banner'),(79,'Can view 邮箱验证码',7,'view_emailverifyrecord'),(80,'Can view 用户信息',6,'view_userprofile'),(81,'Can add Bookmark',21,'add_bookmark'),(82,'Can change Bookmark',21,'change_bookmark'),(83,'Can delete Bookmark',21,'delete_bookmark'),(84,'Can add User Setting',22,'add_usersettings'),(85,'Can change User Setting',22,'change_usersettings'),(86,'Can delete User Setting',22,'delete_usersettings'),(87,'Can add User Widget',23,'add_userwidget'),(88,'Can change User Widget',23,'change_userwidget'),(89,'Can delete User Widget',23,'delete_userwidget'),(90,'Can view Bookmark',21,'view_bookmark'),(91,'Can view User Setting',22,'view_usersettings'),(92,'Can view User Widget',23,'view_userwidget'),(93,'Can add log entry',24,'add_log'),(94,'Can change log entry',24,'change_log'),(95,'Can delete log entry',24,'delete_log'),(96,'Can view log entry',24,'view_log'),(97,'Can add 课程资源',25,'add_courseresource'),(98,'Can change 课程资源',25,'change_courseresource'),(99,'Can delete 课程资源',25,'delete_courseresource'),(100,'Can view 课程资源',25,'view_courseresource'),(101,'Can add captcha store',26,'add_captchastore'),(102,'Can change captcha store',26,'change_captchastore'),(103,'Can delete captcha store',26,'delete_captchastore'),(104,'Can view captcha store',26,'view_captchastore'),(105,'Can view 轮播课程',27,'view_bannercourse'),(106,'Can add 轮播课程',9,'add_bannercourse'),(107,'Can change 轮播课程',9,'change_bannercourse'),(108,'Can delete 轮播课程',9,'delete_bannercourse');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
INSERT INTO `captcha_captchastore` VALUES (64,'JZDS','jzds','a1b3006b39cf8322a7a126829d98881c82e7d215','2017-09-12 13:59:55.331396'),(65,'KQSZ','kqsz','eb6b0764c9dcef48bd0d5052da00d9a06c1a488a','2017-09-13 17:29:59.462265'),(66,'AKKJ','akkj','566d0325774fca498b4849e3029887129faf7ed9','2017-09-16 11:42:39.960511'),(67,'AOBL','aobl','275a23144c809e6eb74b2f7dbecc7503da8cfa9e','2017-09-16 11:48:35.752352'),(68,'JOVT','jovt','4bb681ec9b7184a5863f610457fcdc8eebee9b6f','2017-09-16 11:48:53.571620'),(69,'DADC','dadc','d102450cc96d32a17233eaec4c4a8eb5289b2f59','2017-09-16 11:52:58.795907'),(70,'JFCT','jfct','5f06aa8aa13699d988c820cd2e0f381a191a0c72','2017-09-16 13:49:00.334924'),(71,'UQHC','uqhc','118d326a9cf456cd2d236524cf970919bb6ddf65','2017-09-16 13:50:11.038379'),(72,'LEBQ','lebq','5107a42c56a295905e8c11098fc9c2cb194f8328','2017-09-16 13:50:22.040515'),(73,'FWGM','fwgm','7d78bc813cd7f721b012542ae21d20af8080128b','2017-09-16 13:57:47.827761'),(74,'CMPK','cmpk','226ea72c1f91734a1804ea2ce3b5d571e8d6608e','2017-09-16 13:57:52.675284'),(75,'TYEC','tyec','d79238cc85b55605b27899f8985c720d48d3b6a6','2017-09-16 13:58:07.656964'),(76,'NNYG','nnyg','ee8093a78ee1243a89a0ea6de0c8ecd400cd38ad','2017-09-17 02:42:12.297556'),(77,'UJAE','ujae','d67d45827a85dc4b9feeffe1adeffd75158e29f5','2017-09-17 02:42:56.232427'),(78,'VWQV','vwqv','0e511784d2bc4b40e20e112dfa2415af508c1fe2','2017-09-18 18:05:23.832127'),(79,'AHBG','ahbg','cead19ed882a0713bc46eac32d8f684e342aec46','2017-09-18 18:05:29.274667'),(80,'NDRX','ndrx','22bbab9733ba063432be627507b2de3022ac6306','2017-09-18 18:05:54.293032');
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int(11),
  `category` varchar(20) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `teacher_id` int(11),
  `teacher_tell` varchar(300) NOT NULL,
  `youneed_know` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_11456c5a` (`course_org_id`),
  KEY `courses_course_d9614d40` (`teacher_id`),
  CONSTRAINT `courses_cour_course_org_id_4d2c4aab_fk_organization_courseorg_id` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES (1,'django','Django是一个开放源代码的Web应用框架，由Python写成。采用了MVC的软件设计模式，即模型M，视图V和控制器C。它最初是被开发来用于管理劳伦斯出版集团旗下的一些以新闻内容为主的网站的。并于2005年7月在BSD许可证下发布。这套框架是以比利时的吉普赛爵士吉他手Django Reinhardt来命名的。','<p>&nbsp; &nbsp; djanto is very well</p>','cj',10,23,2,'courses/2017/09/django.jpg',42,'2017-09-10 23:30:00.000000',1,'后端开发','python',2,'you need how to program python and use pycharm and son on.','python Django Framework description and test for an project and so on.',0),(2,'flask','flask','亲，慕课如你所愿《Vue + Django REST framework 打造生鲜电商项目 》http://coding.imooc.com/class/131.html上线啦，小伙伴们快快快去看看看啊啊啊！祝你们学习愉快们加油！','zj',143,26,114,'courses/2017/09/flask.jpg',17,'2017-09-13 18:54:00.000000',3,'后端开发','python',2,'后端开发','后端开发',0),(3,'vue','vue','亲，慕课如你所愿《Vue + Django REST framework 打造生鲜电商项目 》http://coding.imooc.com/class/131.html上线啦，小伙伴们快快快去看看看啊啊啊！祝你们学习愉快们加油！','zj',66,39,11,'courses/2017/09/vuejs.png',25,'2017-09-13 18:55:00.000000',4,'前端','前端',2,'前端','前端',0),(4,'mysql','mysql','亲，慕课如你所愿《Vue + Django REST framework 打造生鲜电商项目 》http://coding.imooc.com/class/131.html上线啦，小伙伴们快快快去看看看啊啊啊！祝你们学习愉快们加油！','zj',110,10,111,'courses/2017/09/mysql',17,'2017-09-13 18:56:00.000000',5,'数据库','数据库',2,'数据库','数据库',0),(5,'redis','redis','亲，慕课如你所愿《Vue + Django REST framework 打造生鲜电商项目 》http://coding.imooc.com/class/131.html上线啦，小伙伴们快快快去看看看啊啊啊！祝你们学习愉快们加油！','gj',32,12,45,'courses/2017/09/redis.jpg',67,'2017-09-13 18:56:00.000000',6,'后端开发','数据库',2,'数据库','数据库',0),(6,'elasticsearch','elasticsearch','<p>&nbsp; &nbsp; 其实我想知道Bobby老师以后会不会出下django + vue或者其他前段框架的视频，我很感兴趣\r\n亲，慕课如你所愿《Vue + Django REST framework 打造生鲜电商项目 》<img src=\"http://img.baidu.com/hi/jx2/j_0028.gif\"/></p><p><iframe class=\"ueditor_baidumap\" src=\"http://0.0.0.0:8000/static/ueditor/dialogs/map/show.html#center=116.402957,39.910515&zoom=15&width=530&height=340&markers=116.402957,39.910515&markerStyles=l,A\" frameborder=\"0\" width=\"534\" height=\"344\"></iframe></p>','gj',22,45,33,'courses/2017/09/elt.jpg',136,'2017-09-13 18:57:00.000000',1,'后端开发','search',2,'elasticsearch','elasticsearch',0),(7,'python','python','其实我想知道Bobby老师以后会不会出下django + vue或者其他前段框架的视频，我很感兴趣\r\n亲，慕课如你所愿《Vue + Django REST framework 打造生鲜电商项目 》http://coding.imooc.com/class/131.html上线啦，小伙伴们快快快去看看看啊啊啊！祝你们学习愉快们加油！','cj',100,40,550,'courses/2017/09/python.jpg',14,'2017-09-13 18:58:00.000000',7,'后端开发','python',2,'python','python',0),(8,'mongodb','mongodb','其实我想知道Bobby老师以后会不会出下django + vue或者其他前段框架的视频，我很感兴趣\r\n亲，慕课如你所愿《Vue + Django REST framework 打造生鲜电商项目 》http://coding.imooc.com/class/131.html上线啦，小伙伴们快快快去看看看啊啊啊！祝你们学习愉快们加油！','cj',45,24,11,'courses/2017/09/mongo.png',37,'2017-09-13 18:59:00.000000',8,'数据库','数据库',1,'mongodb','mongodb',0),(9,'twist','twist','其实我想知道Bobby老师以后会不会出下django + vue或者其他前段框架的视频，我很感兴趣\r\n亲，慕课如你所愿《Vue + Django REST framework 打造生鲜电商项目 》http://coding.imooc.com/class/131.html上线啦，小伙伴们快快快去看看看啊啊啊！祝你们学习愉快们加油！','cj',90,10,33,'courses/2017/09/mysql.jpg',38,'2017-09-13 18:59:00.000000',9,'后端开发','python',1,'wowowoo','twist is a python framework',0),(10,'bootstrap','bootstrap','其实我想知道Bobby老师以后会不会出下django + vue或者其他前段框架的视频，我很感兴趣\r\n亲，慕课如你所愿《Vue + Django REST framework 打造生鲜电商项目 》http://coding.imooc.com/class/131.html上线啦，小伙伴们快快快去看看看啊啊啊！祝你们学习愉快们加油！','gj',60,18,0,'courses/2017/09/bt.jpg',40,'2017-09-13 19:00:00.000000',10,'前端开发','前端',1,'bootstrap','bootstrap',0);
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_courseresource`
--

DROP TABLE IF EXISTS `courses_courseresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresourse_course_id_15e41486_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresourse_course_id_15e41486_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_courseresource`
--

LOCK TABLES `courses_courseresource` WRITE;
/*!40000 ALTER TABLE `courses_courseresource` DISABLE KEYS */;
INSERT INTO `courses_courseresource` VALUES (1,'django','course/resource/2017/1505367959/media.zip','2017-09-14 13:44:00.000000',1),(2,'1-1 resource','course/resource/2017/1505716906/default_big_14.png','2017-09-18 14:40:00.000000',6);
/*!40000 ALTER TABLE `courses_courseresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_lesson`
--

DROP TABLE IF EXISTS `courses_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_lesson`
--

LOCK TABLES `courses_lesson` WRITE;
/*!40000 ALTER TABLE `courses_lesson` DISABLE KEYS */;
INSERT INTO `courses_lesson` VALUES (1,'1-1','2017-09-10 23:33:00.000000',1),(2,'1-2','2017-09-14 12:50:00.000000',1),(3,'2-1','2017-09-14 13:01:00.000000',1),(4,'2-2','2017-09-14 13:01:00.000000',1),(5,'1-1 how to install and use it','2017-09-18 14:40:00.000000',6);
/*!40000 ALTER TABLE `courses_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_video`
--

DROP TABLE IF EXISTS `courses_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_video`
--

LOCK TABLES `courses_video` WRITE;
/*!40000 ALTER TABLE `courses_video` DISABLE KEYS */;
INSERT INTO `courses_video` VALUES (1,'hello world','2017-09-14 12:54:00.000000',1,'http://vjs.zencdn.net/v/oceans.mp4',0),(2,'yeah','2017-09-14 13:00:00.000000',2,'https://cdn.theguardian.tv/mainwebsite/2015/07/20/150716YesMen_desk.mp4',0),(3,'test','2017-09-14 13:01:00.000000',3,'file:///home/chromebook/下载/BaiduNetdisk/强力Django+杀手级Xadmin打造上线标准的在线教育平台/第8章%20课程功能实现/8-4%20课程章节信息1.mp4',0),(4,'fdsaklfjsadlfk','2017-09-14 13:01:00.000000',4,'file:///home/chromebook/下载/BaiduNetdisk/强力Django+杀手级Xadmin打造上线标准的在线教育平台/第8章%20课程功能实现/8-4%20课程章节信息1.mp4',0);
/*!40000 ALTER TABLE `courses_video` ENABLE KEYS */;
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
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
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
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(26,'captcha','captchastore'),(4,'contenttypes','contenttype'),(27,'courses','bannercourse'),(9,'courses','course'),(25,'courses','courseresource'),(10,'courses','lesson'),(11,'courses','video'),(17,'operation','coursecomments'),(16,'operation','userask'),(20,'operation','usercourse'),(18,'operation','userfavorite'),(19,'operation','usermessage'),(13,'organization','citydict'),(14,'organization','courseorg'),(15,'organization','teacher'),(5,'sessions','session'),(8,'users','banner'),(7,'users','emailverifyrecord'),(6,'users','userprofile'),(21,'xadmin','bookmark'),(24,'xadmin','log'),(22,'xadmin','usersettings'),(23,'xadmin','userwidget');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-09-10 20:04:46.668926'),(2,'admin','0001_initial','2017-09-10 20:04:46.857837'),(3,'admin','0002_logentry_remove_auto_add','2017-09-10 20:04:46.951159'),(4,'contenttypes','0002_remove_content_type_name','2017-09-10 20:04:47.319559'),(5,'auth','0001_initial','2017-09-10 20:04:47.957007'),(6,'auth','0002_alter_permission_name_max_length','2017-09-10 20:04:48.140749'),(7,'auth','0003_alter_user_email_max_length','2017-09-10 20:04:48.237745'),(8,'auth','0004_alter_user_username_opts','2017-09-10 20:04:48.315664'),(9,'auth','0005_alter_user_last_login_null','2017-09-10 20:04:48.391253'),(10,'auth','0006_require_contenttypes_0002','2017-09-10 20:04:48.409783'),(11,'auth','0007_alter_validators_add_error_messages','2017-09-10 20:04:48.510437'),(12,'sessions','0001_initial','2017-09-10 20:04:48.620424'),(13,'users','0001_initial','2017-09-10 20:07:03.668941'),(14,'courses','0001_initial','2017-09-10 20:07:33.536500'),(15,'organization','0001_initial','2017-09-10 20:08:05.087076'),(16,'operation','0001_initial','2017-09-10 20:08:34.326146'),(17,'xadmin','0001_initial','2017-09-10 20:37:21.965033'),(18,'xadmin','0002_log','2017-09-10 21:12:03.967101'),(19,'xadmin','0003_auto_20160715_0100','2017-09-10 21:12:04.303489'),(20,'courses','0002_auto_20170911_0021','2017-09-11 00:22:05.304407'),(21,'operation','0002_auto_20170911_0021','2017-09-11 00:22:05.449859'),(22,'users','0002_auto_20170911_0021','2017-09-11 00:22:05.553479'),(23,'captcha','0001_initial','2017-09-11 16:27:38.188734'),(24,'organization','0002_auto_20170912_1619','2017-09-12 16:19:23.644190'),(25,'organization','0003_auto_20170912_1836','2017-09-12 18:37:03.457346'),(26,'courses','0003_course_course_org','2017-09-13 11:18:46.485602'),(27,'organization','0004_teacher_image','2017-09-13 12:10:45.713104'),(28,'courses','0004_course_category','2017-09-13 20:26:04.745428'),(29,'organization','0005_courseorg_tag','2017-09-13 22:05:17.394733'),(30,'courses','0005_course_tag','2017-09-13 22:13:49.631614'),(31,'organization','0006_remove_courseorg_tag','2017-09-13 22:13:50.012288'),(32,'courses','0006_video_url','2017-09-14 12:54:00.822056'),(33,'courses','0007_video_learn_times','2017-09-14 13:38:32.907064'),(34,'courses','0008_course_teacher','2017-09-14 15:46:05.257359'),(35,'courses','0009_auto_20170914_1552','2017-09-14 15:52:32.657298'),(36,'organization','0007_teacher_age','2017-09-14 19:36:59.141387'),(37,'users','0003_auto_20170915_1629','2017-09-15 16:29:18.877023'),(38,'users','0004_auto_20170915_1638','2017-09-15 16:38:19.175411'),(39,'courses','0010_course_is_banner','2017-09-15 23:54:11.351251'),(40,'organization','0008_courseorg_tag','2017-09-16 11:06:14.636865'),(41,'courses','0011_auto_20170919_1308','2017-09-19 13:08:27.566155'),(42,'organization','0009_auto_20170919_1308','2017-09-19 13:08:29.040473'),(43,'organization','0010_teacher_has_gold_teacher','2017-09-19 14:52:29.766005'),(44,'organization','0011_courseorg_star_scope_nums','2017-09-19 15:27:17.505324'),(45,'organization','0012_auto_20170919_1533','2017-09-19 15:33:58.148626'),(46,'organization','0013_auto_20170919_1539','2017-09-19 15:39:12.182830'),(47,'organization','0014_auto_20170919_1542','2017-09-19 15:42:56.360409'),(48,'organization','0015_auto_20170919_1546','2017-09-19 15:46:29.313544');
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
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0kbjo71vz9it4dfl6o51qf04wsotiwiu','ZjVlMTVhYTcwNmQ0MDc3YWFjYTBhYTUwNjkyODg2OWJhNmY1ZDM3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sib3JnYW5pemF0aW9uIiwidGVhY2hlciJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiYzJhYjVjNjU5MzM4ZTgyY2ZlYjVkMTMzNjg0ODA2MTI5YTRmMGU3ZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==','2017-09-28 20:59:21.182708'),('1fj9nsbpih39cb5cr2pqzrq32cbeiio1','YTM5YzMyODM2MjBhMzY5MWZlYmI5YzM1ZTQ4NzlkNWQ2YzU2MTNkYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiJjMmFiNWM2NTkzMzhlODJjZmViNWQxMzM2ODQ4MDYxMjlhNGYwZTdlIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-09-27 22:28:46.457870'),('1h515ujfp4io319bqoo5cvhxw4va2n6p','YjI0Nzg5YzljZDFiOTZiZjgxOWIyZDk1YmNmYjFiZDg3NjY2YmY2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiM2YwZTZkNWRhMjgzY2IwM2Q0YzgyMDM0YmQ2NTA3MmU4ZDljYmU5OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==','2017-10-03 16:43:53.692126'),('1o0p02o4k6xvag14mxx76y750gomba83','ZjZlZDY4YWVlMTAxMzU3MWUzZmUzMDVlYjgwNjk2MGI4NGY4YjVmMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyYWI1YzY1OTMzOGU4MmNmZWI1ZDEzMzY4NDgwNjEyOWE0ZjBlN2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-09-25 14:45:12.803844'),('2g8oj261edtv1fq225h086501d0ggfze','ZjZlZDY4YWVlMTAxMzU3MWUzZmUzMDVlYjgwNjk2MGI4NGY4YjVmMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyYWI1YzY1OTMzOGU4MmNmZWI1ZDEzMzY4NDgwNjEyOWE0ZjBlN2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-09-25 14:24:54.832442'),('71sp8j99hctuc1hedxjdvdhy4fgx16w3','YjFkZTgyNTY5ZmNhNmYzNTk3MDkwNzg2MmFlYjliZTFhMjM1ZDQ2YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyYWI1YzY1OTMzOGU4MmNmZWI1ZDEzMzY4NDgwNjEyOWE0ZjBlN2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-09-25 14:14:16.763854'),('7hq35g8xm60tw2j0c2xc7wgk0iwnxwfo','ZjZlZDY4YWVlMTAxMzU3MWUzZmUzMDVlYjgwNjk2MGI4NGY4YjVmMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyYWI1YzY1OTMzOGU4MmNmZWI1ZDEzMzY4NDgwNjEyOWE0ZjBlN2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-09-27 17:25:29.403537'),('7kgf2kemvkpf2r30op5b5mn1y96m1ta9','ZjZlZDY4YWVlMTAxMzU3MWUzZmUzMDVlYjgwNjk2MGI4NGY4YjVmMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyYWI1YzY1OTMzOGU4MmNmZWI1ZDEzMzY4NDgwNjEyOWE0ZjBlN2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-09-27 16:53:33.444691'),('9od5pgniy55lltxulh5gkex3350xqjhr','NTNkYWNjZTE3ZDgwODNhZjhhZTdiMmJlZWE5MjcxODAxMDRjYzI3Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJiYW5uZXIiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjNmMGU2ZDVkYTI4M2NiMDNkNGM4MjAzNGJkNjUwNzJlOGQ5Y2JlOTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIn0=','2017-09-30 00:44:10.926975'),('aaq318phru7rfstfsa0cqw8v5vihnxoq','YmY5ZmE1NjYzMWM4NTc0ZGI2Y2U1YzdjNmM5MWYxMWI3OTg5NGJhMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjNmMGU2ZDVkYTI4M2NiMDNkNGM4MjAzNGJkNjUwNzJlOGQ5Y2JlOTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-09-30 14:09:38.532515'),('c8jlz8rh7sf3y9ad0van3idbqovyjk5t','YmY5ZmE1NjYzMWM4NTc0ZGI2Y2U1YzdjNmM5MWYxMWI3OTg5NGJhMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjNmMGU2ZDVkYTI4M2NiMDNkNGM4MjAzNGJkNjUwNzJlOGQ5Y2JlOTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-09-29 22:52:40.673562'),('gkot0n2vmg9r3vxxtvagp3swcv4gjscu','ODYwZjA5NmY3MmRjZTkyN2NmZjkwY2I2NGVmNjRkMTU2N2M0NDBjYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiIzZjBlNmQ1ZGEyODNjYjAzZDRjODIwMzRiZDY1MDcyZThkOWNiZTk5IiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-10-01 23:09:58.465266'),('h8m3nx9aob3vfn1f9zewuqol22mfszlq','YmY5ZmE1NjYzMWM4NTc0ZGI2Y2U1YzdjNmM5MWYxMWI3OTg5NGJhMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjNmMGU2ZDVkYTI4M2NiMDNkNGM4MjAzNGJkNjUwNzJlOGQ5Y2JlOTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-09-30 12:28:34.868708'),('ll3sa9cv7j7eh85uwil2fp716zfywntw','MDdiYTI1NWQ1OTFmNmMzOWQyYTAwNWFmNjA4YzAwYjE4YjNmNmY3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyYWI1YzY1OTMzOGU4MmNmZWI1ZDEzMzY4NDgwNjEyOWE0ZjBlN2UiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwid2l6YXJkX3hhZG1pbnVzZXJ3aWRnZXRfYWRtaW5fd2l6YXJkX2Zvcm1fcGx1Z2luIjp7InN0ZXBfZmlsZXMiOnt9LCJzdGVwIjoiV2lkZ2V0XHU3YzdiXHU1NzhiIiwiZXh0cmFfZGF0YSI6e30sInN0ZXBfZGF0YSI6e319fQ==','2017-09-25 12:58:02.173277'),('m1sstuwg6oc7cj6n25bv8njsztsw5emu','YmY5ZmE1NjYzMWM4NTc0ZGI2Y2U1YzdjNmM5MWYxMWI3OTg5NGJhMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjNmMGU2ZDVkYTI4M2NiMDNkNGM4MjAzNGJkNjUwNzJlOGQ5Y2JlOTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-10-01 10:15:54.026669'),('n0i944n3h8ok2uipmsnq76psbzm97p9z','YmY5ZmE1NjYzMWM4NTc0ZGI2Y2U1YzdjNmM5MWYxMWI3OTg5NGJhMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjNmMGU2ZDVkYTI4M2NiMDNkNGM4MjAzNGJkNjUwNzJlOGQ5Y2JlOTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-10-01 02:46:05.984250'),('nyldna76g6rddf6rbh0psqy6boe6nb0q','NzAzNWUxOWJhNjc1YzZmYWE2MGU2YzYyMTRjMjI0ODU4MTE0ZjEzODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJjb3Vyc2VvcmciXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6ImMyYWI1YzY1OTMzOGU4MmNmZWI1ZDEzMzY4NDgwNjEyOWE0ZjBlN2UiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2017-09-26 18:19:54.474832'),('osazxopwukijx62giazwvz51uky61zmk','NmFmMTQwN2IyM2FiODY5ODU0YmQ3ZTc2MTJlMzBiM2E4NGNkZTkwMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sib3BlcmF0aW9uIiwidXNlcmNvdXJzZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiYzJhYjVjNjU5MzM4ZTgyY2ZlYjVkMTMzNjg0ODA2MTI5YTRmMGU3ZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-09-25 00:32:02.625042'),('oyohjkkh4hlifqd18x3yukqtkac694ne','MGY2ZWMyM2UyMzdhZDVlYWE5NWE5Y2Q5YmU3NGI2YWI5MTMzNmQzNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VycHJvZmlsZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiYzJhYjVjNjU5MzM4ZTgyY2ZlYjVkMTMzNjg0ODA2MTI5YTRmMGU3ZSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwid2l6YXJkX3hhZG1pbnVzZXJ3aWRnZXRfYWRtaW5fd2l6YXJkX2Zvcm1fcGx1Z2luIjp7InN0ZXBfZmlsZXMiOnt9LCJzdGVwIjoiV2lkZ2V0XHU3YzdiXHU1NzhiIiwiZXh0cmFfZGF0YSI6e30sInN0ZXBfZGF0YSI6e319fQ==','2017-09-25 00:57:52.229979'),('qolflwo0tl71wogqm2loh1f2c7tra57u','YTE3OGExNTExYjBjNmNjZDVhYzZhZjg1OTBlNzhjZjUxY2RlMTM4MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjcxZmY0YjljNjc0OWE3NTlmZWJiYzk3YjBkYzY2OGM3MzZjNzFkYTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjYifQ==','2017-09-30 22:29:12.089231'),('r3mroq46germr1ksdqkssv7aet5i1gdm','OWJiOTc4MTJiNTk5MzNmY2I5OGNmMGI1NjYzNmZmMWZiZTIwZGJhZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sieGFkbWluIiwibG9nIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiJjMmFiNWM2NTkzMzhlODJjZmViNWQxMzM2ODQ4MDYxMjlhNGYwZTdlIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==','2017-09-25 01:16:48.646209'),('s2945saq3fwn7ncszbmgpf67n8ewzyxu','ZjZlZDY4YWVlMTAxMzU3MWUzZmUzMDVlYjgwNjk2MGI4NGY4YjVmMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyYWI1YzY1OTMzOGU4MmNmZWI1ZDEzMzY4NDgwNjEyOWE0ZjBlN2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-09-25 14:38:26.382620'),('tgpou2g28afiavhepmkhjphr96fslskn','ZjZlZDY4YWVlMTAxMzU3MWUzZmUzMDVlYjgwNjk2MGI4NGY4YjVmMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyYWI1YzY1OTMzOGU4MmNmZWI1ZDEzMzY4NDgwNjEyOWE0ZjBlN2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-09-25 21:54:06.178763'),('tjema6m0f9dz2wox94aayg78hg264qdp','ZTk0NzQ1YmVlYThiOWU3ODRkMzEyZDU5MzRkMzUzNGU2OTUxZTU1NDp7IkxJU1RfUVVFUlkiOltbImNvdXJzZXMiLCJjb3Vyc2UiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjNmMGU2ZDVkYTI4M2NiMDNkNGM4MjAzNGJkNjUwNzJlOGQ5Y2JlOTkiLCJuYXZfbWVudSI6Ilt7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCIsIFwiaWNvblwiOiBcImZhIGZhLW1hcC1tYXJrZXJcIiwgXCJvcmRlclwiOiAxMiwgXCJ0aXRsZVwiOiBcIlx1NTdjZVx1NWUwMlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY291cnNlb3JnL1wiLCBcImljb25cIjogXCJmYSBmYS11bml2ZXJzaXR5XCIsIFwib3JkZXJcIjogMTMsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdTY3M2FcdTY3ODRcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3JnYW5pemF0aW9uL3RlYWNoZXIvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyYWR1YXRpb24tY2FwXCIsIFwib3JkZXJcIjogMTQsIFwidGl0bGVcIjogXCJcdTY1NTlcdTVlMDhcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1tYXAtbWFya2VyXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi9vcmdhbml6YXRpb24vY2l0eWRpY3QvXCIsIFwidGl0bGVcIjogXCJcdTY3M2FcdTY3ODRcdTdiYTFcdTc0MDZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL3VzZXJzL3VzZXJwcm9maWxlL1wiLCBcImljb25cIjogXCJmYSBmYS11c2VyXCIsIFwib3JkZXJcIjogMywgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NGZlMVx1NjA2ZlwifSwge1widXJsXCI6IFwiL3hhZG1pbi91c2Vycy9lbWFpbHZlcmlmeXJlY29yZC9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZW52ZWxvcGUtb1wiLCBcIm9yZGVyXCI6IDUsIFwidGl0bGVcIjogXCJcdTkwYWVcdTdiYjFcdTlhOGNcdThiYzFcdTc4MDFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vdXNlcnMvYmFubmVyL1wiLCBcImljb25cIjogXCJmYSBmYS1waWN0dXJlLW9cIiwgXCJvcmRlclwiOiA2LCBcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU1NmZlXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtcGljdHVyZS1vXCIsIFwiZmlyc3RfdXJsXCI6IFwiL3hhZG1pbi91c2Vycy9iYW5uZXIvXCIsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTRmZTFcdTYwNmZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL29wZXJhdGlvbi91c2VyYXNrL1wiLCBcImljb25cIjogXCJmYSBmYS1xdWVzdGlvbi1jaXJjbGVcIiwgXCJvcmRlclwiOiAxNSwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NTRhOFx1OGJlMlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9vcGVyYXRpb24vY291cnNlY29tbWVudHMvXCIsIFwiaWNvblwiOiBcImZhIGZhLWNvbW1lbnRzXCIsIFwib3JkZXJcIjogMTYsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcdThiYzRcdThiYmFcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJmYXZvcml0ZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtdGh1bWJzLXVwXCIsIFwib3JkZXJcIjogMTcsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTY1MzZcdTg1Y2ZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJtZXNzYWdlL1wiLCBcImljb25cIjogXCJmYSBmYS1jb21tZW50aW5nXCIsIFwib3JkZXJcIjogMTgsIFwidGl0bGVcIjogXCJcdTc1MjhcdTYyMzdcdTZkODhcdTYwNmZcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBcImZhIGZhLWJvb2tcIiwgXCJvcmRlclwiOiAxOSwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1OGJmZVx1N2EwYlwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLXRodW1icy11cFwiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vb3BlcmF0aW9uL3VzZXJmYXZvcml0ZS9cIiwgXCJ0aXRsZVwiOiBcIlx1NzUyOFx1NjIzN1x1NjRjZFx1NGY1Y1wifSwge1wibWVudXNcIjogW3tcInVybFwiOiBcIi94YWRtaW4veGFkbWluL2xvZy9cIiwgXCJpY29uXCI6IFwiZmEgZmEtY29nXCIsIFwib3JkZXJcIjogMjEsIFwidGl0bGVcIjogXCJcdTY1ZTVcdTVmZDdcdThiYjBcdTVmNTVcIn1dLCBcImZpcnN0X2ljb25cIjogXCJmYSBmYS1jb2dcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL3hhZG1pbi9sb2cvXCIsIFwidGl0bGVcIjogXCJcdTdiYTFcdTc0MDZcIn0sIHtcIm1lbnVzXCI6IFt7XCJ1cmxcIjogXCIveGFkbWluL2F1dGgvZ3JvdXAvXCIsIFwiaWNvblwiOiBcImZhIGZhLWdyb3VwXCIsIFwib3JkZXJcIjogMiwgXCJ0aXRsZVwiOiBcIlx1N2VjNFwifSwge1widXJsXCI6IFwiL3hhZG1pbi9hdXRoL3Blcm1pc3Npb24vXCIsIFwiaWNvblwiOiBcImZhIGZhLWxvY2tcIiwgXCJvcmRlclwiOiA0LCBcInRpdGxlXCI6IFwiXHU2NzQzXHU5NjUwXCJ9XSwgXCJmaXJzdF9pY29uXCI6IFwiZmEgZmEtbG9ja1wiLCBcImZpcnN0X3VybFwiOiBcIi94YWRtaW4vYXV0aC9wZXJtaXNzaW9uL1wiLCBcInRpdGxlXCI6IFwiXHU4YmE0XHU4YmMxXHU1NDhjXHU2Mzg4XHU2NzQzXCJ9LCB7XCJtZW51c1wiOiBbe1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZS9cIiwgXCJpY29uXCI6IFwiZmEgZmEtZGVza3RvcFwiLCBcIm9yZGVyXCI6IDcsIFwidGl0bGVcIjogXCJcdThiZmVcdTdhMGJcIn0sIHtcInVybFwiOiBcIi94YWRtaW4vY291cnNlcy9iYW5uZXJjb3Vyc2UvXCIsIFwiaWNvblwiOiBcImZhIGZhLWRlc2t0b3BcIiwgXCJvcmRlclwiOiA4LCBcInRpdGxlXCI6IFwiXHU4ZjZlXHU2NGFkXHU4YmZlXHU3YTBiXCJ9LCB7XCJ1cmxcIjogXCIveGFkbWluL2NvdXJzZXMvbGVzc29uL1wiLCBcImljb25cIjogXCJmYSBmYS1saXN0XCIsIFwib3JkZXJcIjogOSwgXCJ0aXRsZVwiOiBcIlx1N2FlMFx1ODI4MlwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL3ZpZGVvL1wiLCBcImljb25cIjogXCJmYSBmYS12aWRlby1jYW1lcmFcIiwgXCJvcmRlclwiOiAxMCwgXCJ0aXRsZVwiOiBcIlx1ODljNlx1OTg5MVwifSwge1widXJsXCI6IFwiL3hhZG1pbi9jb3Vyc2VzL2NvdXJzZXJlc291cmNlL1wiLCBcImljb25cIjogXCJmYSBmYS1mb2xkZXJcIiwgXCJvcmRlclwiOiAxMSwgXCJ0aXRsZVwiOiBcIlx1OGJmZVx1N2EwYlx1OGQ0NFx1NmU5MFwifV0sIFwiZmlyc3RfaWNvblwiOiBcImZhIGZhLWRlc2t0b3BcIiwgXCJmaXJzdF91cmxcIjogXCIveGFkbWluL2NvdXJzZXMvY291cnNlL1wiLCBcInRpdGxlXCI6IFwiXHU4YmZlXHU3YTBiXHU3YmExXHU3NDA2XCJ9XSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2017-10-03 21:43:32.716249'),('txi4v5xnbd7l2klv0vbic1i5idg6ltbl','YjI0Nzg5YzljZDFiOTZiZjgxOWIyZDk1YmNmYjFiZDg3NjY2YmY2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZSJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiM2YwZTZkNWRhMjgzY2IwM2Q0YzgyMDM0YmQ2NTA3MmU4ZDljYmU5OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQifQ==','2017-10-03 03:21:05.267451'),('uolf3d118jlmq2te859ywi7zpxh3ywkp','OTgxNDNlMWFjNzBhMDlkNDUxYjU1OWZiMzE5Nzk5YTJjZjQyNjcwYTp7IkxJU1RfUVVFUlkiOltbInVzZXJzIiwidXNlcnByb2ZpbGUiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6ImMyYWI1YzY1OTMzOGU4MmNmZWI1ZDEzMzY4NDgwNjEyOWE0ZjBlN2UiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-09-25 11:19:36.904811'),('x1pimlzpismx5bxsd358q73hhgd6a2p2','NTNiN2U4ZGY3MzIwMDdjMmFlZjhhMTllNGQzZWVjNWQ1MmMwNjYyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1sib3BlcmF0aW9uIiwidXNlcm1lc3NhZ2UiXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjNmMGU2ZDVkYTI4M2NiMDNkNGM4MjAzNGJkNjUwNzJlOGQ5Y2JlOTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwid2l6YXJkX3hhZG1pbnVzZXJ3aWRnZXRfYWRtaW5fd2l6YXJkX2Zvcm1fcGx1Z2luIjp7InN0ZXBfZmlsZXMiOnsiV2lkZ2V0XHU3YzdiXHU1NzhiIjp7fX0sInN0ZXAiOiJXaWRnZXRcdTUzYzJcdTY1NzAiLCJleHRyYV9kYXRhIjp7fSwic3RlcF9kYXRhIjp7IldpZGdldFx1N2M3Ylx1NTc4YiI6eyJzdGVwXzAtd2lkZ2V0X3R5cGUiOlsicWJ1dHRvbiJdLCJfc2F2ZSI6WyIiXSwieGFkbWludXNlcndpZGdldF9hZG1pbl93aXphcmRfZm9ybV9wbHVnaW4tY3VycmVudF9zdGVwIjpbIldpZGdldFx1N2M3Ylx1NTc4YiJdLCJzdGVwXzAtcGFnZV9pZCI6WyJob21lIl0sInVzZXIiOlsxXSwiY3NyZm1pZGRsZXdhcmV0b2tlbiI6WyIycUxiMzJOaWNQcVl0Qnl0RXRSWmV2WmxLbHdJZUtSZCIsIjJxTGIzMk5pY1BxWXRCeXRFdFJaZXZabEtsd0llS1JkIl19fX19','2017-09-30 22:49:07.878616'),('xbavgh7tigkzeco46nfaro8ma30ng9wc','ZjZlZDY4YWVlMTAxMzU3MWUzZmUzMDVlYjgwNjk2MGI4NGY4YjVmMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImMyYWI1YzY1OTMzOGU4MmNmZWI1ZDEzMzY4NDgwNjEyOWE0ZjBlN2UiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJ1c2Vycy52aWV3cy5DdXN0b21CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==','2017-09-28 18:20:16.915220');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_coursecomments`
--

DROP TABLE IF EXISTS `operation_coursecomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_coursecomment_user_id_f5ff70b3_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_coursecomments`
--

LOCK TABLES `operation_coursecomments` WRITE;
/*!40000 ALTER TABLE `operation_coursecomments` DISABLE KEYS */;
INSERT INTO `operation_coursecomments` VALUES (1,'你好。我在看7.3节 关于使用上下文管理的那个例子。关于telnetlib库使用的一些问题。 Telnet.read_until(expected, timeout=None) ;使用这个方法容易卡在输入登陆用户名的位置就不执行了。假如telnet到目标主机，如果提示符不是login ，就无法登陆吗？','2017-09-13 21:23:00.000000',1,1),(2,'看到第三章了，虽然有些知识还不是听得很懂，但是感觉很有用的样子，想的是先听完一遍再说。然后再来听第二遍。最后想说老师棒棒哒！！！','2017-09-14 16:36:00.000000',1,6),(3,'老师您讲的很好，很期待下次的课程。我有个小问题，jedi我用git clone 和 apt-get 都装上了，:help jedi-vim ,提示我E149: 抱歉，没有 jedi-vim 的说明，补全也不能用，有点搞不清楚了。我安装vim插件python-mode也不能用...','2017-09-14 16:37:00.000000',1,1),(4,'精品，老早就听医生的课了，这次的课程又让我长见识了，就像别的同学说的那样，如此简洁的实现酷炫动画的方式让我激动，赶快学完视频内容好去实现那10个任务，到时候希望徐大神好好指导指导我，如果学完后能给我个行业推荐啥的就更好了，明年就开始实习了！老紧张了--','2017-09-14 16:38:00.000000',1,6),(5,'very nice','2017-09-14 17:00:20.001720',1,1),(6,'jfkla;sdfjasldkfja;lsdfaslfj','2017-09-14 17:05:32.400057',1,1),(7,'所以说这种感觉还真错哈。','2017-09-14 17:08:56.481779',1,1);
/*!40000 ALTER TABLE `operation_coursecomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userask`
--

DROP TABLE IF EXISTS `operation_userask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userask`
--

LOCK TABLES `operation_userask` WRITE;
/*!40000 ALTER TABLE `operation_userask` DISABLE KEYS */;
INSERT INTO `operation_userask` VALUES (1,'tony','18343234543','python','2017-09-12 21:36:59.316518'),(2,'jerry','18132134312','JAVA','2017-09-13 10:38:52.099412');
/*!40000 ALTER TABLE `operation_userask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usercourse`
--

DROP TABLE IF EXISTS `operation_usercourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usercourse`
--

LOCK TABLES `operation_usercourse` WRITE;
/*!40000 ALTER TABLE `operation_usercourse` DISABLE KEYS */;
INSERT INTO `operation_usercourse` VALUES (1,'2017-09-13 21:36:00.000000',2,1),(2,'2017-09-13 21:42:00.000000',4,6),(3,'2017-09-14 17:39:14.781864',1,1),(4,'2017-09-14 17:39:33.911330',10,1),(5,'2017-09-16 12:23:27.021810',8,1),(6,'2017-09-18 14:42:10.537725',6,1),(7,'2017-09-19 16:02:45.522277',7,1),(8,'2017-09-19 16:08:59.650712',5,1);
/*!40000 ALTER TABLE `operation_usercourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_userfavorite`
--

DROP TABLE IF EXISTS `operation_userfavorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_userfavorite`
--

LOCK TABLES `operation_userfavorite` WRITE;
/*!40000 ALTER TABLE `operation_userfavorite` DISABLE KEYS */;
INSERT INTO `operation_userfavorite` VALUES (7,6,2,'2017-09-13 17:26:39.259070',1),(16,1,1,'2017-09-15 21:51:14.826439',1),(17,2,3,'2017-09-16 13:31:42.423065',1),(19,1,2,'2017-09-19 14:29:20.445534',1);
/*!40000 ALTER TABLE `operation_userfavorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation_usermessage`
--

DROP TABLE IF EXISTS `operation_usermessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation_usermessage`
--

LOCK TABLES `operation_usermessage` WRITE;
/*!40000 ALTER TABLE `operation_usermessage` DISABLE KEYS */;
INSERT INTO `operation_usermessage` VALUES (1,1,'欢迎注册慕课网，真是太酷啦！',1,'2017-09-15 20:02:00.000000'),(2,6,'太棒啦！',1,'2017-09-16 22:47:00.000000');
/*!40000 ALTER TABLE `operation_usermessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_citydict`
--

DROP TABLE IF EXISTS `organization_citydict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_citydict`
--

LOCK TABLES `organization_citydict` WRITE;
/*!40000 ALTER TABLE `organization_citydict` DISABLE KEYS */;
INSERT INTO `organization_citydict` VALUES (1,'长沙市','长沙市','2017-09-12 15:58:00.000000'),(2,'佛山市','佛山市','2017-09-12 15:59:00.000000'),(3,'天津市','天津市','2017-09-12 15:59:00.000000'),(4,'广州市','广州市','2017-09-12 16:00:00.000000'),(5,'汕头市','汕头市','2017-09-12 16:01:00.000000'),(6,'北京市','首都','2017-09-16 10:57:00.000000');
/*!40000 ALTER TABLE `organization_citydict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_courseorg`
--

DROP TABLE IF EXISTS `organization_courseorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_num` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `has_authentication` tinyint(1) NOT NULL,
  `has_gold` tinyint(1) NOT NULL,
  `star_scope_nums` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_course_city_id_4a842f85_fk_organization_citydict_id` (`city_id`),
  CONSTRAINT `organization_course_city_id_4a842f85_fk_organization_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_courseorg`
--

LOCK TABLES `organization_courseorg` WRITE;
/*!40000 ALTER TABLE `organization_courseorg` DISABLE KEYS */;
INSERT INTO `organization_courseorg` VALUES (1,'慕课网','<p>&nbsp; &nbsp; 慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。</p><p><iframe class=\"ueditor_baidumap\" src=\"http://0.0.0.0:8000/static/ueditor/dialogs/map/show.html#center=116.323512,39.891974&zoom=10&width=530&height=340&markers=116.404,39.915&markerStyles=l,A\" frameborder=\"0\" width=\"534\" height=\"344\"></iframe></p>',179,56,'org/2017/09/imooc.png','天津市','2017-09-12 16:01:00.000000',3,'pxjg',2,36,'全国知名',0,1,4.5),(2,'计蒜客','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。',10,5,'org/2017/09/kh.png','长沙市','2017-09-12 16:07:00.000000',1,'gr',1,44,'全国知名',0,0,0),(3,'网易云课堂','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。',59,3,'org/2017/09/mooc.png','汕头市','2017-09-12 16:09:00.000000',5,'pxjg',5,39,'全国知名',0,0,0),(4,'云路课堂','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。',6,2,'org/2017/09/cto.png','佛山市','2017-09-12 16:10:00.000000',2,'pxjg',1,3,'全国知名',0,0,0),(5,'麦子学院','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。',5,11,'org/2017/09/pic503_pyZ7mEe.png','长沙市','2017-09-12 16:11:00.000000',1,'gx',1,33,'全国知名',0,0,0),(6,'实验楼','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。',28,11,'org/2017/09/shiyanlou.png','天津市','2017-09-12 16:11:00.000000',3,'gx',2,20,'全国知名',0,0,0),(7,'传智播客','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。',8,5,'org/2017/09/mzxy.png','汕头市','2017-09-12 16:12:00.000000',5,'gx',11,99,'全国知名',0,0,0),(8,'lamp兄弟连','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。',8,4,'org/2017/09/lamp.png','广州市','2017-09-12 16:13:00.000000',4,'gx',1,7,'全国知名',0,0,0),(9,'宁浩网','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。',11,2,'org/2017/09/qhdx-logo_sC14xOl.png','广州市','2017-09-12 16:13:00.000000',4,'gr',4,18,'技术大拿',0,0,0),(10,'萌码','慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。',24,4,'org/2017/09/njdx.jpg','天津市','2017-09-12 16:14:00.000000',3,'pxjg',2,9,'全国知名',0,0,0),(11,'天津大学','岁月的车辙碾过了一百二十次，校园中恒久耸立的是北洋大学、天津大学代代相传的不朽精神，这精神是民族经天纬地的丰碑,扎根百二十年沃土，直指高渺云天。',89,88,'org/2017/09/tjdx.png','天津市','2017-09-16 10:52:00.000000',3,'gx',19,67,'全国知名',0,0,0),(12,'北京大学','9月11日下午，北京大学2017年秋季学期全校中层干部大会在英杰交流中心阳光厅召开。北京大学党委书记郝平、校长林建华出席大会并讲话。',188,787,'org/2017/09/bjdx.png','北京市','2017-09-16 10:55:00.000000',6,'gx',16,76,'全国知名',0,0,0),(13,'南开大学','南开大学（Nankai University, NKU），简称“南开”，肇始于1904年，正式成立于1919年，是由严修、张伯苓秉承教育救国理念创办的综合性大学。',332,43,'org/2017/09/nkdx.jpg','天津市','2017-09-16 10:57:00.000000',3,'gx',14,144,'全国知名',0,0,0),(14,'人民大学','中国人民大学发布80周年校庆主题“始终奋进在时代前列... 中国人民大学新学年开学典礼暨教师节表彰大会举行 · 人民大学师生迎接80周年校庆学生原创话剧',176,26,'org/2017/09/rmdx.png','北京市','2017-09-16 10:58:00.000000',6,'gx',73,287,'全国知名',0,0,0),(15,'中国农业大学','中国农业大学是一所以农学、生命科学和农业工程为特色和优势的研究型大学，是中国现代农业高等教育的起源地。中国农业大学是教育部直属、进入国家“211工程”和“985工程”建设的全国重点大学，由教育部、农业部和北京市共同建设。',187,37,'org/2017/09/nydx.png','北京市','2017-09-16 11:00:00.000000',6,'gx',12,122,'全国知名',0,0,0);
/*!40000 ALTER TABLE `organization_courseorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_teacher`
--

DROP TABLE IF EXISTS `organization_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_num` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `has_gold_teacher` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` (`org_id`),
  CONSTRAINT `organization_teache_org_id_cd000a1a_fk_organization_courseorg_id` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_teacher`
--

LOCK TABLES `organization_teacher` WRITE;
/*!40000 ALTER TABLE `organization_teacher` DISABLE KEYS */;
INSERT INTO `organization_teacher` VALUES (1,'alice',3,'Google Inc.','后端开发工程师','平易近人，各种技术拿人。',67,9,'2017-09-13 11:04:00.000000',3,'teacher/2017/09/mayun.png',18,0),(2,'toby',6,'Facebook Inc.','Pythonic Programmer','It\'s a big man',161,41,'2017-09-13 11:04:00.000000',1,'teacher/2017/09/aobama.png',28,1);
/*!40000 ALTER TABLE `organization_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_banner`
--

DROP TABLE IF EXISTS `users_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_banner`
--

LOCK TABLES `users_banner` WRITE;
/*!40000 ALTER TABLE `users_banner` DISABLE KEYS */;
INSERT INTO `users_banner` VALUES (1,'首页上部轮播图第一张','banner/2017/09/57a801860001c34b12000460.jpg','http://coding.imooc.com',1,'2017-09-16 00:02:00.000000'),(2,'首页上部轮播图第二张','banner/2017/09/57aa86a0000145c512000460.jpg','https://www.shiyanlou.com',2,'2017-09-16 00:04:00.000000'),(3,'首页上部轮播图第三张','banner/2017/09/57aa86a0000145c512000460_pyon9vW.jpg','http://www.imooc.com',3,'2017-09-16 00:05:00.000000'),(4,'首页上部轮播图第四张','banner/2017/09/57a801860001c34b12000460_plCZSdp.jpg','https://github.com',4,'2017-09-16 00:06:00.000000'),(5,'首页上部轮播图第五张','banner/2017/09/57a801860001c34b12000460_40wrsEI.jpg','http://www.imooc.com',5,'2017-09-16 00:08:00.000000');
/*!40000 ALTER TABLE `users_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_emailverifyrecord`
--

DROP TABLE IF EXISTS `users_emailverifyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(15) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_emailverifyrecord`
--

LOCK TABLES `users_emailverifyrecord` WRITE;
/*!40000 ALTER TABLE `users_emailverifyrecord` DISABLE KEYS */;
INSERT INTO `users_emailverifyrecord` VALUES (3,'admin','admin@localhost','register','2017-09-10 22:41:00.000000'),(4,'toby','toby@localhost.com','forget','2017-09-10 22:54:00.000000'),(6,'Bysoh4VzmTpYoi70','1323195936@qq.com','register','2017-09-11 21:44:57.160485'),(7,'eF8NFlOOIKAEbSuY','1323195936@qq.com','forget','2017-09-12 13:21:41.616534'),(8,'DDfWJWz1B4Q2nyUs','1323195936@qq.com','forget','2017-09-12 13:35:31.664025'),(9,'5oJ3gLysB90AWaDs','1323195936@qq.com','forget','2017-09-12 13:35:31.667128'),(10,'jn6UTJJvYxezFEu8','1323195936@qq.com','forget','2017-09-12 13:55:04.418303'),(11,'UQdp1m8zw8NvOxeB','1323195936@qq.com','update_email','2017-09-15 16:39:58.188776'),(12,'xKZq','1323195936@qq.com','update_email','2017-09-15 16:41:27.896313'),(13,'rEhU','1323195936@qq.com','update_email','2017-09-15 16:43:34.816988'),(14,'AJA8','1323195936@qq.com','update_email','2017-09-15 16:44:52.817565'),(15,'bmXk','1323195936@qq.com','update_email','2017-09-15 16:52:48.764336'),(16,'dT94','1323195936@qq.com','update_email','2017-09-15 16:53:38.336668'),(17,'OLX9','1323195936@qq.com','update_email','2017-09-15 17:10:05.722638');
/*!40000 ALTER TABLE `users_emailverifyrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,'pbkdf2_sha256$24000$TmQ66bOtMIGT$G7lxX2Y+ReikVOYc3IZ98KS0KDghKeZsixDqEdgRlx0=','2017-09-19 21:43:04.772403',1,'toby','','','1323195936@qq.com',1,1,'2017-09-10 20:35:00.000000','toby','2017-09-19','male','北京市朝阳区','13233559605','image/2017/09/gj_AwwcaNC.png'),(6,'pbkdf2_sha256$24000$X6JAOL9gNrUq$OcyUF5OFSLkjQuFVwLQcvVW1RJ2/LGPFRv7hASnKI74=','2017-09-16 22:46:23.832653',0,'balin','','','balin1991@qq.com',0,1,'2017-09-11 21:44:00.000000','balin','2017-09-15','male','beijing','','image/2017/09/gx.png');
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2017-09-10 22:41:04.059335','127.0.0.1','1','EmailVerifyRecord object','create','已添加',7,1),(2,'2017-09-10 22:41:04.147417','127.0.0.1','2','EmailVerifyRecord object','create','已添加',7,1),(3,'2017-09-10 22:41:35.941738','127.0.0.1',NULL,'','delete','批量删除 2 个 邮箱验证码',NULL,1),(4,'2017-09-10 22:41:51.279743','127.0.0.1','3','EmailVerifyRecord object','create','已添加',7,1),(5,'2017-09-10 22:54:37.392046','127.0.0.1','4','toby,(toby@localhost.com)','create','已添加',7,1),(6,'2017-09-10 23:31:40.764960','127.0.0.1','1','Course object','create','已添加',9,1),(7,'2017-09-10 23:33:34.541063','127.0.0.1','1','Lesson object','create','已添加',10,1),(8,'2017-09-11 21:43:39.721727','127.0.0.1','5','aJawhqUk55GB7O3q,(1323195936@qq.com)','delete','',7,1),(9,'2017-09-11 21:43:56.202115','127.0.0.1',NULL,'','delete','批量删除 1 个 用户信息',NULL,1),(10,'2017-09-12 15:59:07.192946','127.0.0.1','1','CityDict object','create','已添加',13,1),(11,'2017-09-12 15:59:21.808605','127.0.0.1','2','CityDict object','create','已添加',13,1),(12,'2017-09-12 15:59:45.218063','127.0.0.1','3','CityDict object','create','已添加',13,1),(13,'2017-09-12 16:01:04.737693','127.0.0.1','4','广州市','create','已添加',13,1),(14,'2017-09-12 16:01:25.525755','127.0.0.1','5','汕头市','create','已添加',13,1),(15,'2017-09-12 16:05:13.519956','127.0.0.1','1','CourseOrg object','create','已添加',14,1),(16,'2017-09-12 16:08:57.130031','127.0.0.1','2','计蒜客','create','已添加',14,1),(17,'2017-09-12 16:09:56.607261','127.0.0.1','3','网易云课堂','create','已添加',14,1),(18,'2017-09-12 16:10:55.648294','127.0.0.1','4','云路课堂','create','已添加',14,1),(19,'2017-09-12 16:11:29.464210','127.0.0.1','5','麦子学院','create','已添加',14,1),(20,'2017-09-12 16:11:59.790099','127.0.0.1','6','实验楼','create','已添加',14,1),(21,'2017-09-12 16:12:58.877707','127.0.0.1','7','传智播客','create','已添加',14,1),(22,'2017-09-12 16:13:29.244225','127.0.0.1','8','lamp兄弟连','create','已添加',14,1),(23,'2017-09-12 16:14:28.559552','127.0.0.1','9','宁浩网','create','已添加',14,1),(24,'2017-09-12 16:15:09.997757','127.0.0.1','10','萌码','create','已添加',14,1),(25,'2017-09-12 18:18:18.380611','127.0.0.1','9','宁浩网','change','已修改 category 。',14,1),(26,'2017-09-12 18:18:30.852596','127.0.0.1','8','lamp兄弟连','change','已修改 category 。',14,1),(27,'2017-09-12 18:18:31.035186','127.0.0.1','8','lamp兄弟连','change','没有字段被修改。',14,1),(28,'2017-09-12 18:18:47.728538','127.0.0.1','5','麦子学院','change','已修改 category 。',14,1),(29,'2017-09-12 18:18:47.989109','127.0.0.1','5','麦子学院','change','没有字段被修改。',14,1),(30,'2017-09-12 18:19:29.197935','127.0.0.1','7','传智播客','change','已修改 category 。',14,1),(31,'2017-09-12 18:19:38.821170','127.0.0.1','6','实验楼','change','已修改 category 。',14,1),(32,'2017-09-12 18:19:54.063411','127.0.0.1','2','计蒜客','change','已修改 category 。',14,1),(33,'2017-09-12 18:19:54.133776','127.0.0.1','2','计蒜客','change','没有字段被修改。',14,1),(34,'2017-09-13 11:04:49.369144','127.0.0.1','1','Teacher object','create','已添加',15,1),(35,'2017-09-13 11:04:49.612637','127.0.0.1','2','Teacher object','create','已添加',15,1),(36,'2017-09-13 11:05:14.261591','127.0.0.1','1','Teacher object','change','已修改 org 和 name 。',15,1),(37,'2017-09-13 11:06:50.694353','127.0.0.1','1','alice','change','已修改 org 和 name 。',15,1),(38,'2017-09-13 11:19:43.585107','127.0.0.1','1','django demo','change','已修改 course_org 。',9,1),(39,'2017-09-13 11:52:49.797276','127.0.0.1','1','django demo','change','已修改 image 。',9,1),(40,'2017-09-13 12:12:07.556324','127.0.0.1','2','toby','change','已修改 image 。',15,1),(41,'2017-09-13 12:12:22.343287','127.0.0.1','1','alice','change','已修改 image 。',15,1),(42,'2017-09-13 12:13:28.504344','127.0.0.1','10','萌码','change','已修改 image 。',14,1),(43,'2017-09-13 18:54:00.535949','127.0.0.1','1','django','change','已修改 name 。',9,1),(44,'2017-09-13 18:55:50.518230','127.0.0.1','2','flask','create','已添加',9,1),(45,'2017-09-13 18:56:20.467795','127.0.0.1','3','vue','create','已添加',9,1),(46,'2017-09-13 18:56:50.901760','127.0.0.1','4','mysql','create','已添加',9,1),(47,'2017-09-13 18:57:24.470970','127.0.0.1','5','redis','create','已添加',9,1),(48,'2017-09-13 18:58:22.030262','127.0.0.1','6','elasticsearch','create','已添加',9,1),(49,'2017-09-13 18:58:49.730830','127.0.0.1','7','python','create','已添加',9,1),(50,'2017-09-13 18:59:27.871902','127.0.0.1','8','mongodb','create','已添加',9,1),(51,'2017-09-13 18:59:57.886621','127.0.0.1','9','twist','create','已添加',9,1),(52,'2017-09-13 19:00:21.800636','127.0.0.1','10','bootstrap','create','已添加',9,1),(53,'2017-09-13 20:33:48.507515','127.0.0.1','7','','create','已添加',6,1),(54,'2017-09-13 21:09:53.274770','127.0.0.1',NULL,'','delete','批量删除 2 个 用户信息',NULL,1),(55,'2017-09-13 21:11:17.900918','127.0.0.1','6','balin','change','已修改 last_login，username，nickname，gender 和 address 。',6,1),(56,'2017-09-13 21:12:35.727288','127.0.0.1','6','balin','change','已修改 image 。',6,1),(57,'2017-09-13 21:14:02.863617','127.0.0.1','1','aiya','change','已修改 last_login，nickname，gender 和 address 。',6,1),(58,'2017-09-13 21:14:20.036028','127.0.0.1','1','aiya','change','已修改 image 。',6,1),(59,'2017-09-13 21:36:24.079147','127.0.0.1','1','toby|flask','create','已添加',17,1),(60,'2017-09-13 21:36:58.172925','127.0.0.1','1','toby|flask','create','已添加',20,1),(61,'2017-09-13 21:42:18.050409','127.0.0.1','2','用户 balin 添加 mysql','create','已添加',20,1),(62,'2017-09-13 22:27:26.857283','127.0.0.1','9','twist','change','已修改 tag 。',9,1),(63,'2017-09-13 22:28:01.666780','127.0.0.1','2','flask','change','已修改 tag 。',9,1),(64,'2017-09-13 22:28:30.525442','127.0.0.1','1','django','change','已修改 tag 。',9,1),(65,'2017-09-14 12:50:42.929589','127.0.0.1','2','1-2','create','已添加',10,1),(66,'2017-09-14 12:59:31.196649','127.0.0.1','1','hello world','create','已添加',11,1),(67,'2017-09-14 13:00:16.366045','127.0.0.1','2','yeah','create','已添加',11,1),(68,'2017-09-14 13:01:23.523426','127.0.0.1','3','2-1','create','已添加',10,1),(69,'2017-09-14 13:01:28.390316','127.0.0.1','4','2-2','create','已添加',10,1),(70,'2017-09-14 13:01:48.329925','127.0.0.1','3','test','create','已添加',11,1),(71,'2017-09-14 13:02:12.890504','127.0.0.1','4','fdsaklfjsadlfk','create','已添加',11,1),(72,'2017-09-14 13:45:59.056663','127.0.0.1','1','django','create','已添加',25,1),(73,'2017-09-14 15:47:06.891725','127.0.0.1','1','django','change','已修改 teacher 。',9,1),(74,'2017-09-14 15:53:52.539015','127.0.0.1','1','django','change','已修改 youneed_know 和 teacher_tell 。',9,1),(75,'2017-09-14 16:37:07.417708','127.0.0.1','2','balin|django','create','已添加',17,1),(76,'2017-09-14 16:37:32.681905','127.0.0.1','3','toby|django','create','已添加',17,1),(77,'2017-09-14 16:37:52.999265','127.0.0.1','1','toby|django','change','已修改 course 和 comments 。',17,1),(78,'2017-09-14 16:38:19.882782','127.0.0.1','4','balin|django','create','已添加',17,1),(79,'2017-09-14 18:10:45.132410','127.0.0.1','1','hello world','change','已修改 url 。',11,1),(80,'2017-09-14 18:36:48.356552','127.0.0.1','2','yeah','change','已修改 url 。',11,1),(81,'2017-09-14 18:38:34.814394','127.0.0.1','2','yeah','change','已修改 url 。',11,1),(82,'2017-09-14 20:49:41.459478','127.0.0.1','1','alice','change','已修改 work_company，work_position 和 points 。',15,1),(83,'2017-09-14 20:59:20.491207','127.0.0.1','2','toby','change','已修改 work_years，work_company，work_position 和 points 。',15,1),(84,'2017-09-15 13:21:31.818054','127.0.0.1','10','萌码','change','已修改 students 和 course_nums 。',14,1),(85,'2017-09-15 13:23:33.697299','127.0.0.1','9','宁浩网','change','已修改 click_num，fav_nums，image，students，course_nums 和 city 。',14,1),(86,'2017-09-15 13:23:33.826368','127.0.0.1','9','宁浩网','change','已修改 image 。',14,1),(87,'2017-09-15 13:23:56.598383','127.0.0.1','8','lamp兄弟连','change','已修改 students 和 course_nums 。',14,1),(88,'2017-09-15 13:23:57.087702','127.0.0.1','8','lamp兄弟连','change','没有字段被修改。',14,1),(89,'2017-09-15 13:24:26.522997','127.0.0.1','10','萌码','change','已修改 click_num 和 fav_nums 。',14,1),(90,'2017-09-15 13:25:01.675030','127.0.0.1','9','宁浩网','change','已修改 address 。',14,1),(91,'2017-09-15 13:25:01.807852','127.0.0.1','9','宁浩网','change','没有字段被修改。',14,1),(92,'2017-09-15 13:26:09.733267','127.0.0.1','8','lamp兄弟连','change','已修改 click_num，fav_nums，address 和 city 。',14,1),(93,'2017-09-15 13:26:32.852561','127.0.0.1','7','传智播客','change','已修改 click_num，fav_nums，students 和 course_nums 。',14,1),(94,'2017-09-15 13:26:56.381036','127.0.0.1','6','实验楼','change','已修改 click_num，fav_nums，students 和 course_nums 。',14,1),(95,'2017-09-15 13:26:57.167570','127.0.0.1','6','实验楼','change','没有字段被修改。',14,1),(96,'2017-09-15 13:28:06.630536','127.0.0.1','5','麦子学院','change','已修改 click_num，fav_nums，image，students 和 course_nums 。',14,1),(97,'2017-09-15 13:28:06.713472','127.0.0.1','5','麦子学院','change','已修改 image 。',14,1),(98,'2017-09-15 13:28:29.410184','127.0.0.1','4','云路课堂','change','已修改 click_num，fav_nums，students 和 course_nums 。',14,1),(99,'2017-09-15 13:28:29.631452','127.0.0.1','4','云路课堂','change','没有字段被修改。',14,1),(100,'2017-09-15 13:28:58.040391','127.0.0.1','3','网易云课堂','change','已修改 click_num，fav_nums，students 和 course_nums 。',14,1),(101,'2017-09-15 13:29:18.092530','127.0.0.1','2','计蒜客','change','已修改 click_num，fav_nums，students 和 course_nums 。',14,1),(102,'2017-09-15 13:29:18.236671','127.0.0.1','2','计蒜客','change','没有字段被修改。',14,1),(103,'2017-09-15 13:29:52.256290','127.0.0.1','1','慕课网','change','已修改 click_num，fav_nums，students 和 course_nums 。',14,1),(104,'2017-09-15 13:30:16.014513','127.0.0.1','2','toby','change','已修改 age，click_num 和 fav_nums 。',15,1),(105,'2017-09-15 13:30:32.902858','127.0.0.1','1','alice','change','已修改 click_num 和 fav_nums 。',15,1),(106,'2017-09-15 13:30:32.942230','127.0.0.1','1','alice','change','已修改 click_num 和 fav_nums 。',15,1),(107,'2017-09-15 13:32:29.956691','127.0.0.1','9','twist','change','已修改 students，teacher，youneed_know 和 teacher_tell 。',9,1),(108,'2017-09-15 13:32:30.021420','127.0.0.1','9','twist','change','已修改 students，teacher，youneed_know 和 teacher_tell 。',9,1),(109,'2017-09-15 13:35:35.685600','127.0.0.1','10','bootstrap','change','已修改 learn_times，students，teacher，tag，category，youneed_know 和 teacher_tell 。',9,1),(110,'2017-09-15 13:36:05.347511','127.0.0.1','9','twist','change','已修改 learn_times，fav_nums 和 click_nums 。',9,1),(111,'2017-09-15 13:36:59.851933','127.0.0.1','8','mongodb','change','已修改 learn_times，students，teacher，fav_nums，click_nums，tag，category，youneed_know 和 teacher_tell 。',9,1),(112,'2017-09-15 13:37:32.432921','127.0.0.1','7','python','change','已修改 learn_times，students，teacher，fav_nums，click_nums，tag，youneed_know 和 teacher_tell 。',9,1),(113,'2017-09-15 13:38:09.841303','127.0.0.1','6','elasticsearch','change','已修改 learn_times，students，teacher，fav_nums，click_nums，tag，youneed_know 和 teacher_tell 。',9,1),(114,'2017-09-15 13:38:49.001648','127.0.0.1','5','redis','change','已修改 learn_times，students，teacher，fav_nums，click_nums，tag，youneed_know 和 teacher_tell 。',9,1),(115,'2017-09-15 13:39:16.959987','127.0.0.1','4','mysql','change','已修改 learn_times，students，teacher，fav_nums，tag，category，youneed_know 和 teacher_tell 。',9,1),(116,'2017-09-15 13:39:17.365030','127.0.0.1','4','mysql','change','没有字段被修改。',9,1),(117,'2017-09-15 13:39:59.486061','127.0.0.1','3','vue','change','已修改 learn_times，students，teacher，fav_nums，click_nums，tag，category，youneed_know 和 teacher_tell 。',9,1),(118,'2017-09-15 13:40:35.048940','127.0.0.1','2','flask','change','已修改 learn_times，students，teacher，fav_nums，tag，youneed_know 和 teacher_tell 。',9,1),(119,'2017-09-15 13:40:55.496495','127.0.0.1','1','django','change','没有字段被修改。',9,1),(120,'2017-09-15 16:15:05.154267','127.0.0.1','6','balin','change','已修改 email 。',6,1),(121,'2017-09-15 20:05:16.405928','127.0.0.1','1','1','create','已添加',19,1),(122,'2017-09-15 20:41:01.702145','127.0.0.1','8','lamp兄弟连','change','已修改 image 。',14,1),(123,'2017-09-15 20:41:23.839031','127.0.0.1','6','实验楼','change','已修改 image 。',14,1),(124,'2017-09-15 20:42:55.940853','127.0.0.1','7','传智播客','change','已修改 image 。',14,1),(125,'2017-09-15 20:43:59.532659','127.0.0.1','4','云路课堂','change','已修改 image 。',14,1),(126,'2017-09-15 20:44:15.023328','127.0.0.1','3','网易云课堂','change','已修改 image 。',14,1),(127,'2017-09-15 20:44:50.458047','127.0.0.1','2','计蒜客','change','已修改 image 。',14,1),(128,'2017-09-15 20:45:57.073725','127.0.0.1','1','慕课网','change','已修改 image 。',14,1),(129,'2017-09-15 20:46:59.889594','127.0.0.1','1','alice','change','已修改 image 。',15,1),(130,'2017-09-15 20:51:09.566886','127.0.0.1','10','bootstrap','change','已修改 image 。',9,1),(131,'2017-09-15 20:51:28.602922','127.0.0.1','8','mongodb','change','已修改 image 。',9,1),(132,'2017-09-15 20:51:55.980477','127.0.0.1','7','python','change','已修改 image 。',9,1),(133,'2017-09-15 20:52:13.378463','127.0.0.1','6','elasticsearch','change','已修改 image 。',9,1),(134,'2017-09-15 20:52:27.514788','127.0.0.1','5','redis','change','已修改 image 。',9,1),(135,'2017-09-15 20:52:43.716907','127.0.0.1','4','mysql','change','已修改 image 。',9,1),(136,'2017-09-15 20:53:05.053966','127.0.0.1','2','flask','change','已修改 image 。',9,1),(137,'2017-09-15 20:53:18.597853','127.0.0.1','1','django','change','已修改 image 。',9,1),(138,'2017-09-15 20:54:05.406084','127.0.0.1','3','vue','change','已修改 image 。',9,1),(139,'2017-09-15 20:56:27.893173','127.0.0.1','9','twist','change','已修改 image 。',9,1),(140,'2017-09-16 00:03:52.594405','127.0.0.1','1','首页上部轮播图第一张','create','已添加',8,1),(141,'2017-09-16 00:04:41.082571','127.0.0.1','2','首页上部轮播图第二张','create','已添加',8,1),(142,'2017-09-16 00:04:49.613944','127.0.0.1','1','首页上部轮播图第一张','change','已修改 index 。',8,1),(143,'2017-09-16 00:04:57.491658','127.0.0.1','2','首页上部轮播图第二张','change','已修改 index 。',8,1),(144,'2017-09-16 00:06:29.671868','127.0.0.1','3','首页上部轮播图第三张','create','已添加',8,1),(145,'2017-09-16 00:08:16.959055','127.0.0.1','4','首页上部轮播图第四张','create','已添加',8,1),(146,'2017-09-16 00:08:49.241872','127.0.0.1','5','首页上部轮播图第五张','create','已添加',8,1),(147,'2017-09-16 00:28:58.507100','127.0.0.1','6','公开课程右侧图一','create','已添加',8,1),(148,'2017-09-16 00:30:41.592891','127.0.0.1','7','公开课程右侧图二','create','已添加',8,1),(149,'2017-09-16 00:41:00.269018','127.0.0.1','8','公开课程右侧图三','create','已添加',8,1),(150,'2017-09-16 00:41:42.636939','127.0.0.1','9','公开课程右侧图四','create','已添加',8,1),(151,'2017-09-16 00:42:40.237364','127.0.0.1','10','公开课程右侧图五','create','已添加',8,1),(152,'2017-09-16 00:43:26.635969','127.0.0.1','11','公开课程右侧图六','create','已添加',8,1),(153,'2017-09-16 00:43:26.823086','127.0.0.1','12','公开课程右侧图六','create','已添加',8,1),(154,'2017-09-16 00:43:57.956487','127.0.0.1',NULL,'','delete','批量删除 1 个 轮播图',NULL,1),(155,'2017-09-16 00:44:10.399472','127.0.0.1','11','公开课程右侧图六','change','已修改 image 。',8,1),(156,'2017-09-16 10:46:18.119149','127.0.0.1',NULL,'','delete','批量删除 6 个 轮播图',NULL,1),(157,'2017-09-16 10:55:48.751855','127.0.0.1','11','天津大学','create','已添加',14,1),(158,'2017-09-16 10:55:57.991394','127.0.0.1','11','天津大学','change','没有字段被修改。',14,1),(159,'2017-09-16 10:57:14.413567','127.0.0.1','6','北京市','create','已添加',13,1),(160,'2017-09-16 10:57:18.608693','127.0.0.1','12','北京大学','create','已添加',14,1),(161,'2017-09-16 10:58:51.417896','127.0.0.1','13','南开大学','create','已添加',14,1),(162,'2017-09-16 11:00:08.512987','127.0.0.1','14','人民大学','create','已添加',14,1),(163,'2017-09-16 11:01:33.254440','127.0.0.1','15','中国农业大学','create','已添加',14,1),(164,'2017-09-16 11:23:53.801757','127.0.0.1','9','宁浩网','change','已修改 tag 。',14,1),(165,'2017-09-16 11:27:52.131008','127.0.0.1','10','bootstrap','change','已修改 is_banner 。',9,1),(166,'2017-09-16 11:28:20.036159','127.0.0.1','10','bootstrap','change','已修改 is_banner 。',9,1),(167,'2017-09-16 22:16:38.312915','127.0.0.1','6','balin','change','没有字段被修改。',6,1),(168,'2017-09-16 22:45:25.131345','127.0.0.1','6','balin','change','已修改 last_login 和 image 。',6,1),(169,'2017-09-16 22:49:07.204809','127.0.0.1','2','6','create','已添加',19,1),(170,'2017-09-17 23:09:37.397754','127.0.0.1','6','elasticsearch','change','已修改 course_org 。',9,1),(171,'2017-09-18 14:25:31.812130','127.0.0.1','6','elasticsearch','change','已修改 course_org 。',9,1),(172,'2017-09-18 14:41:46.095876','127.0.0.1','6','elasticsearch','change','没有字段被修改。',9,1),(173,'2017-09-18 14:52:48.589979','127.0.0.1','6','elasticsearch','change','已修改 is_banner 。',9,1),(174,'2017-09-18 14:54:21.108238','127.0.0.1','6','elasticsearch','change','已修改 is_banner 。',27,1),(175,'2017-09-18 15:15:22.917115','127.0.0.1','1','慕课网','change','已修改 course_nums 。',14,1),(176,'2017-09-18 15:20:57.127630','127.0.0.1','1','慕课网','change','已修改 course_nums 。',14,1),(177,'2017-09-18 16:38:21.804723','127.0.0.1','1','慕课网','change','已修改 desc 。',14,1),(178,'2017-09-19 13:17:27.223871','127.0.0.1','1','慕课网','change','已修改 has_gold 。',14,1),(179,'2017-09-19 13:17:44.231235','127.0.0.1','1','慕课网','change','已修改 click_num 和 has_authentication 。',14,1),(180,'2017-09-19 13:28:47.858309','127.0.0.1','1','慕课网','change','已修改 click_num 和 has_gold 。',14,1),(181,'2017-09-19 13:31:54.942536','127.0.0.1','1','慕课网','change','已修改 click_num，has_gold 和 has_authentication 。',14,1),(182,'2017-09-19 13:32:25.172646','127.0.0.1','1','慕课网','change','已修改 click_num 和 has_authentication 。',14,1),(183,'2017-09-19 13:33:16.161507','127.0.0.1','1','慕课网','change','已修改 click_num 。',14,1),(184,'2017-09-19 13:33:37.094118','127.0.0.1','1','慕课网','change','已修改 click_num，has_gold 和 has_authentication 。',14,1),(185,'2017-09-19 13:33:55.784876','127.0.0.1','1','慕课网','change','已修改 click_num 和 has_authentication 。',14,1),(186,'2017-09-19 13:34:11.918537','127.0.0.1','1','慕课网','change','已修改 click_num，has_gold 和 has_authentication 。',14,1),(187,'2017-09-19 13:34:40.422302','127.0.0.1','1','慕课网','change','已修改 click_num 和 has_authentication 。',14,1),(188,'2017-09-19 13:42:47.760963','127.0.0.1','1','慕课网','change','已修改 click_num，has_gold 和 has_authentication 。',14,1),(189,'2017-09-19 13:42:59.010687','127.0.0.1','1','慕课网','change','已修改 click_num 和 has_gold 。',14,1),(190,'2017-09-19 13:43:13.411719','127.0.0.1','1','慕课网','change','已修改 click_num，has_gold 和 has_authentication 。',14,1),(191,'2017-09-19 13:43:56.748378','127.0.0.1','1','慕课网','change','已修改 click_num 和 has_gold 。',14,1),(192,'2017-09-19 13:47:53.962426','127.0.0.1','1','慕课网','change','已修改 click_num 和 has_authentication 。',14,1),(193,'2017-09-19 13:48:20.007251','127.0.0.1','1','慕课网','change','已修改 has_authentication 。',14,1),(194,'2017-09-19 14:54:51.396722','127.0.0.1','2','toby','change','已修改 has_gold_teacher 。',15,1),(195,'2017-09-19 15:46:38.059998','127.0.0.1','1','慕课网','change','已修改 star_scope_nums 和 has_authentication 。',14,1),(196,'2017-09-19 15:46:55.955309','127.0.0.1','1','慕课网','change','没有字段被修改。',14,1),(197,'2017-09-19 15:47:45.505803','127.0.0.1','1','慕课网','change','已修改 click_num 和 star_scope_nums 。',14,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1),(2,'site-theme','/static/xadmin/css/themes/bootstrap-xadmin.css',1),(3,'users_userprofile_editform_portal','box-0,box-1,box-2,box-3,box-4|box-5',1),(4,'courses_course_editform_portal','box-0,lesson_set-group,,courseresource_set-group,,,,,',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-26  4:08:32
