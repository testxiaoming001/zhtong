-- MySQL dump 10.13  Distrib 5.6.44, for Linux (x86_64)
--
-- Host: loacalhost    Database: www_cs_com
-- ------------------------------------------------------
-- Server version	5.6.44-log

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
-- Table structure for table `cm_action_log`
--

DROP TABLE IF EXISTS `cm_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_action_log` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '执行会员id',
  `module` varchar(30) NOT NULL DEFAULT 'admin' COMMENT '模块',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '行为',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '执行的URL',
  `ip` char(30) NOT NULL DEFAULT '' COMMENT '执行行为者ip',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='行为日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_action_log`
--

LOCK TABLES `cm_action_log` WRITE;
/*!40000 ALTER TABLE `cm_action_log` DISABLE KEYS */;
INSERT INTO `cm_action_log` VALUES (1,1,'admin','修改','管理员ID1密码修改','/admin/system/changePwd','193.176.211.47',1,1593193673,1593193673),(2,1,'admin','修改','管理员ID1密码修改','/admin/system/changePwd','193.176.211.47',1,1593193809,1593193809),(3,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','185.220.101.143',1,1593262074,1593262074),(4,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','193.176.211.47',1,1593513781,1593513781),(5,1,'admin','新增','支付方式,data:name=%E6%94%AF%E4%BB%98%E5%AE%9D%E6%89%AB%E7%A0%81&code=zfb_sm&status=1&remarks=zfb_sm&cnl_id=','/admin/pay/addCode','193.176.211.47',1,1593513833,1593513833),(6,1,'admin','新增','支付方式,data:name=%E5%BE%AE%E4%BF%A1%E6%89%AB%E7%A0%81&code=vx_sm&status=1&remarks=%E5%BE%AE%E4%BF%A1%E6%89%AB%E7%A0%81&cnl_id=','/admin/pay/addCode','193.176.211.47',1,1593513862,1593513862),(7,1,'admin','新增','支付方式,data:name=%E6%94%AF%E4%BB%98%E5%AE%9Dwap&code=zfb_wap&status=1&remarks=%E6%94%AF%E4%BB%98%E5%AE%9Dwap&cnl_id=','/admin/pay/addCode','193.176.211.47',1,1593513916,1593513916),(8,1,'admin','新增','支付方式,data:name=%E5%BE%AE%E4%BF%A1wap&code=vx_wap&status=1&remarks=%E5%BE%AE%E4%BF%A1wap&cnl_id=','/admin/pay/addCode','193.176.211.47',1,1593513939,1593513939),(9,1,'admin','新增','支付方式,data:name=%E6%94%AF%E4%BB%98%E5%AE%9DH5&code=zfb_h5&status=1&remarks=%E6%94%AF%E4%BB%98%E5%AE%9DH5&cnl_id=','/admin/pay/addCode','193.176.211.47',1,1593513968,1593513968),(10,1,'admin','新增','支付方式,data:name=%E5%BE%AE%E4%BF%A1H5&code=vx_h5&status=1&remarks=%E5%BE%AE%E4%BF%A1h5&cnl_id=','/admin/pay/addCode','193.176.211.47',1,1593513994,1593513994),(11,1,'admin','新增','支付方式,data:name=IOS%E6%94%AF%E4%BB%98%E5%AE%9D&code=zfb_ios&status=1&remarks=IOS%E6%94%AF%E4%BB%98%E5%AE%9D&cnl_id=','/admin/pay/addCode','193.176.211.47',1,1593514027,1593514027),(12,1,'admin','新增','支付方式,data:name=IOS%E5%BE%AE%E4%BF%A1&code=vx_ios&status=1&remarks=IOS%E5%BE%AE%E4%BF%A1&cnl_id=','/admin/pay/addCode','193.176.211.47',1,1593514045,1593514045),(13,1,'admin','新增','支付渠道飞龙支付','/admin/pay/addChannel','193.176.211.47',1,1593619800,1593619800),(14,1,'admin','新增','支付渠道账户,飞龙支付宝','/admin/pay/addAccount','193.176.211.47',1,1593619831,1593619831),(15,1,'admin','编辑','支付方式,data:id=1&name=%E6%94%AF%E4%BB%98%E5%AE%9D%E6%89%AB%E7%A0%81&code=zfb_sm&cnl_id=1&status=1&remarks=zfb_sm','/admin/pay/editCode','193.176.211.47',1,1593619850,1593619850),(16,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','193.176.211.47',1,1593705087,1593705087),(17,1,'admin','编辑','支付渠道钱柜支付','/admin/pay/editChannel','193.176.211.47',1,1593705145,1593705145),(18,1,'admin','编辑','支付渠道账户,钱柜支付宝','/admin/pay/editAccount','193.176.211.47',1,1593705176,1593705176),(19,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','51.254.143.96',1,1593787113,1593787113),(20,1,'admin','修改','管理员ID1密码修改','/admin/system/changePwd','51.254.143.96',1,1593787133,1593787133),(21,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','185.10.68.66',1,1593787176,1593787176),(22,1,'admin','新增','新增商户。UID:100047','/admin/user/add','185.10.68.66',1,1593787342,1593787342),(23,100047,'index','登录','商户qwe123@qq.com登录成功','/login','185.10.68.66',1,1593787686,1593787686),(24,1,'admin','新增','新增商户。UID:100048','/admin/user/add','109.70.100.21',1,1593790061,1593790061),(25,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','46.19.141.86',1,1593791329,1593791329),(26,1,'admin','修改','修改商户信息。UID:100047','/admin/user/edit','46.19.141.86',1,1593791373,1593791373),(27,1,'admin','修改','修改商户信息。UID:100047','/admin/user/edit','46.19.141.86',1,1593791374,1593791374),(28,1,'admin','新增','新增商户。UID:100049','/admin/user/add','46.19.141.86',1,1593791462,1593791462),(29,100047,'index','登录','商户qwe123@qq.com登录成功','/login','112.211.140.79',1,1593822338,1593822338),(30,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','185.220.101.208',1,1593845891,1593845891),(31,1,'admin','新增','新增商户。UID:100050','/admin/user/add','185.220.101.208',1,1593846083,1593846083),(32,1,'admin','新增','新增商户。UID:100051','/admin/user/add','185.220.101.208',1,1593846214,1593846214),(33,1,'admin','新增','新增商户。UID:100052','/admin/user/add','185.220.101.208',1,1593846243,1593846243),(34,1,'admin','新增','新增商户。UID:100053','/admin/user/add','185.220.101.208',1,1593846398,1593846398),(35,1,'admin','新增','新增商户。UID:100054','/admin/user/add','185.220.101.208',1,1593846522,1593846522),(36,1,'admin','新增','新增商户。UID:100055','/admin/user/add','185.220.101.208',1,1593846587,1593846587),(37,1,'admin','新增','新增商户。UID:100056','/admin/user/add','185.220.101.208',1,1593846702,1593846702),(38,1,'admin','新增','新增商户。UID:100057','/admin/user/add','185.220.101.208',1,1593846761,1593846761),(39,100054,'index','登录','商户y30030@outlook.com登录成功','/login','103.201.24.200',1,1593846892,1593846892),(40,100056,'index','登录','商户1850107758@qq.com登录成功','/login','180.232.116.61',1,1593846999,1593846999),(41,100055,'index','登录','商户sanqi111888@sina.com登录成功','/login','175.176.40.28',1,1593848328,1593848328),(42,100057,'index','登录','商户21979930@qq.com登录成功','/login','130.105.248.232',1,1593849533,1593849533),(43,100054,'index','登录','商户y30030@outlook.com登录成功','/login','103.201.24.200',1,1593850097,1593850097),(44,999999,'index','登录','商户huoying@qq.com登录失败，密码输入错误','/login','211.97.131.202',1,1593850097,1593850097),(45,100049,'index','登录','商户huoying@qq.com登录成功','/login','211.97.131.202',1,1593850134,1593850134),(46,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','199.249.230.89',1,1593850551,1593850551),(47,1,'admin','新增','新增商户。UID:100058','/admin/user/add','199.249.230.89',1,1593850596,1593850596),(48,100053,'index','登录','商户jpyl69@163.com登录成功','/login','130.105.154.57',1,1593860955,1593860955),(49,100047,'index','登录','商户qwe123@qq.com登录成功','/login','112.211.140.79',1,1593864834,1593864834),(50,100047,'index','登录','商户qwe123@qq.com登录成功','/login','112.211.140.79',1,1593872658,1593872658),(51,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','193.176.211.47',1,1593873697,1593873697),(52,1,'admin','修改','修改商户信息。UID:100001','/admin/user/edit','193.176.211.47',1,1593873753,1593873753),(53,100001,'index','登录','商户nouser@iredcap.cn登录成功','/login','193.176.211.47',1,1593873880,1593873880),(54,100001,'index','修改','修改密码','/user/password.html','193.176.211.47',1,1593873906,1593873906),(55,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','193.176.211.34',1,1594339470,1594339470),(56,1,'admin','编辑','支付方式,data:id=1&name=%E6%94%AF%E4%BB%98%E5%AE%9D%E6%89%AB%E7%A0%81&code=zfb_sm&status=1&remarks=zfb_sm&cnl_id=','/admin/pay/editCode','193.176.211.34',1,1594402473,1594402473),(57,1,'admin','编辑','支付方式,data:id=1&name=%E6%94%AF%E4%BB%98%E5%AE%9D%E6%89%AB%E7%A0%81&code=zfb_sm&cnl_id=1&status=1&remarks=zfb_sm','/admin/pay/editCode','193.176.211.34',1,1594402498,1594402498),(58,1,'admin','编辑','支付渠道账户,钱柜支付宝','/admin/pay/editAccount','193.176.211.34',1,1594402600,1594402600),(59,1,'admin','编辑','支付渠道账户,钱柜支付宝','/admin/pay/editAccount','193.176.211.34',1,1594402619,1594402619),(60,1,'admin','编辑','支付渠道钱柜支付','/admin/pay/editChannel','193.176.211.34',1,1594402798,1594402798),(61,1,'admin','编辑','支付渠道钱柜支付','/admin/pay/editChannel','193.176.211.34',1,1594402813,1594402813),(62,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','193.176.211.71',1,1595265353,1595265353),(63,1,'admin','删除','删除商户100048','/admin/user/del?uid=100048','193.176.211.71',1,1595265390,1595265390),(64,1,'admin','删除','删除商户100058','/admin/user/del?uid=100058','193.176.211.71',1,1595265403,1595265403),(65,1,'admin','删除','删除商户100057','/admin/user/del?uid=100057','193.176.211.71',1,1595265513,1595265513),(66,1,'admin','删除','删除商户100056','/admin/user/del?uid=100056','193.176.211.71',1,1595265519,1595265519),(67,1,'admin','删除','删除商户100055','/admin/user/del?uid=100055','193.176.211.71',1,1595265528,1595265528),(68,1,'admin','删除','删除商户100054','/admin/user/del?uid=100054','193.176.211.71',1,1595265536,1595265536),(69,1,'admin','删除','删除商户100053','/admin/user/del?uid=100053','193.176.211.71',1,1595265548,1595265548),(70,1,'admin','删除','删除支付渠道，ID：1','/admin/pay/delChannel?id=1','193.176.211.71',1,1595347855,1595347855),(71,1,'admin','新增','支付渠道复仇者支付','/admin/pay/addChannel','193.176.211.71',1,1595347941,1595347941),(72,1,'admin','编辑','支付方式,data:id=1&name=%E6%94%AF%E4%BB%98%E5%AE%9D%E6%89%AB%E7%A0%81&code=guma_zfb&cnl_id=2&status=1&remarks=zfb_sm','/admin/pay/editCode','193.176.211.71',1,1595348036,1595348036),(73,1,'admin','编辑','支付方式,data:id=1&name=%E6%94%AF%E4%BB%98%E5%AE%9D%E6%89%AB%E7%A0%81&code=guma_zfb&cnl_id=2&status=1&remarks=guma_zfb','/admin/pay/editCode','193.176.211.71',1,1595348122,1595348122),(74,1,'admin','编辑','支付方式,data:id=5&name=%E6%94%AF%E4%BB%98%E5%AE%9Dz%E6%8D%A2%E5%8D%A1&code=wap_zfb&cnl_id=2&status=1&remarks=%E6%94%AF%E4%BB%98%E5%AE%9D%E6%8D%A2%E5%8D%A1','/admin/pay/editCode','193.176.211.71',1,1595348193,1595348193),(75,1,'admin','编辑','支付方式,data:id=1&name=%E6%94%AF%E4%BB%98%E5%AE%9D%E6%89%AB%E7%A0%81&code=guma_zfb&cnl_id=2&status=1&remarks=guma_zfb','/admin/pay/editCode','193.176.211.71',1,1595348204,1595348204),(76,1,'admin','新增','支付渠道账户,支付宝扫码','/admin/pay/addAccount','193.176.211.71',1,1595348245,1595348245),(77,1,'admin','新增','支付渠道账户,支付宝转卡','/admin/pay/addAccount','193.176.211.71',1,1595348276,1595348276),(78,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','172.104.51.219',1,1595348480,1595348480),(79,1,'admin','新增','新增商户。UID:100059','/admin/user/add','172.104.51.219',1,1595349700,1595349700),(80,1,'admin','新增','新增商户。UID:100060','/admin/user/add','172.104.51.219',1,1595349850,1595349850),(81,1,'admin','新增','新增商户。UID:100061','/admin/user/add','172.104.51.219',1,1595350155,1595350155),(82,1,'admin','修改','修改商户信息。UID:100060','/admin/user/edit','172.104.51.219',1,1595350176,1595350176),(83,1,'admin','修改','修改商户信息。UID:100059','/admin/user/edit','172.104.51.219',1,1595350187,1595350187),(84,100061,'index','登录','商户qxh.tyc001@gmail.com登录成功','/login','172.104.51.219',1,1595350278,1595350278),(85,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','54.180.140.113',1,1595350876,1595350876),(86,100059,'index','登录','商户503849121@qq.com登录成功','/login','42.115.59.50',1,1595418294,1595418294),(87,100059,'index','登录','商户503849121@qq.com登录成功','/login','180.191.103.105',1,1595420168,1595420168),(88,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','193.176.211.71',1,1595490723,1595490723),(89,1,'admin','新增','支付渠道复仇者v2支付','/admin/pay/addChannel','193.176.211.71',1,1595490817,1595490817),(90,1,'admin','新增','支付渠道账户,复仇者v2扫码','/admin/pay/addAccount','193.176.211.71',1,1595490861,1595490861),(91,1,'admin','新增','支付渠道账户,复仇者v2转卡','/admin/pay/addAccount','193.176.211.71',1,1595490884,1595490884),(92,1,'admin','编辑','支付方式,data:id=1&name=%E6%94%AF%E4%BB%98%E5%AE%9D%E6%89%AB%E7%A0%81&code=guma_zfb&cnl_id=3&status=1&remarks=guma_zfb','/admin/pay/editCode','193.176.211.71',1,1595490961,1595490961),(93,1,'admin','编辑','支付方式,data:id=5&name=%E6%94%AF%E4%BB%98%E5%AE%9Dz%E6%8D%A2%E5%8D%A1&code=wap_zfb&cnl_id=3&status=1&remarks=%E6%94%AF%E4%BB%98%E5%AE%9D%E6%8D%A2%E5%8D%A1','/admin/pay/editCode','193.176.211.71',1,1595490973,1595490973),(94,1,'admin','编辑','支付渠道账户,复仇者v2转卡','/admin/pay/editAccount','193.176.211.71',1,1595491369,1595491369),(95,1,'admin','编辑','支付方式,data:id=3&name=%E6%94%AF%E4%BB%98%E5%AE%9Dw&code=w&status=1&remarks=%E6%94%AF%E4%BB%98%E5%AE%9Dwap&cnl_id=','/admin/pay/editCode','193.176.211.71',1,1595491614,1595491614),(96,1,'admin','编辑','支付渠道账户,复仇者v2转卡','/admin/pay/editAccount','193.176.211.71',1,1595491637,1595491637),(97,1,'admin','编辑','支付方式,data:id=5&name=%E6%94%AF%E4%BB%98%E5%AE%9Dz%E6%8D%A2%E5%8D%A1&code=wap_zfb&cnl_id=3&status=1&remarks=%E6%94%AF%E4%BB%98%E5%AE%9D%E6%8D%A2%E5%8D%A1','/admin/pay/editCode','193.176.211.71',1,1595491650,1595491650),(98,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','54.180.140.113',1,1595491757,1595491757),(99,1,'admin','编辑','支付渠道账户,支付宝转卡','/admin/pay/editAccount','193.176.211.71',1,1595491801,1595491801),(100,1,'admin','编辑','支付渠道账户,复仇者v2转卡','/admin/pay/editAccount','193.176.211.71',1,1595491861,1595491861),(101,1,'admin','编辑','支付渠道账户,复仇者v2转卡','/admin/pay/editAccount','193.176.211.71',1,1595491878,1595491878),(102,1,'admin','编辑','支付渠道账户,复仇者v2转卡','/admin/pay/editAccount','193.176.211.71',1,1595491916,1595491916),(103,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','104.245.9.212',1,1595500211,1595500211),(104,1,'admin','新增','新增商户。UID:100062','/admin/user/add','137.220.236.79',1,1595507034,1595507034),(105,100062,'index','登录','商户81502799@qq.com登录成功','/login','58.97.164.131',1,1595507237,1595507237),(106,1,'admin','编辑','支付渠道复仇者支付','/admin/pay/editChannel','137.220.236.79',1,1595508813,1595508813),(107,1,'admin','新增','新增商户。UID:100063','/admin/user/add','137.220.236.79',1,1595517474,1595517474),(108,100063,'index','登录','商户ceshi@qq.com登录成功','/login','137.220.236.79',1,1595517483,1595517483),(109,100062,'index','登录','商户81502799@qq.com登录成功','/login','182.16.90.178',1,1595549597,1595549597),(110,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','104.245.9.212',1,1595550340,1595550340),(111,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','137.220.236.137',1,1595564899,1595564899),(112,100059,'index','登录','商户503849121@qq.com登录成功','/login','103.130.143.106',1,1595571162,1595571162),(113,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','182.114.199.102',1,1595575651,1595575651),(114,100059,'index','登录','商户503849121@qq.com登录成功','/login','103.130.143.106',1,1595578382,1595578382),(115,100059,'index','新增','新增收款账号。uid:100059','/account/add.html','103.130.143.106',1,1595578593,1595578593),(116,100059,'index','删除','删除账户，ID：13','/index/balance/delaccount/id/13.html','103.130.143.106',1,1595578599,1595578599),(117,100059,'index','新增','个人提交提现申请自助提现，20200724041647验证通过','/balance/apply.html','103.130.143.106',1,1595578617,1595578617),(118,1,'admin','推送','推送提现订单打款，单号：C20200724161657724981','/admin/balance/deal','137.220.236.36',1,1595578805,1595578805),(119,1,'admin','修改','管理员ID1密码修改','/admin/system/changePwd','211.212.237.203',1,1595579440,1595579440),(120,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','137.220.236.36',1,1595579821,1595579821),(121,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','193.176.211.71',1,1595583251,1595583251),(122,1,'admin','删除','删除商户100059','/admin/user/del?uid=100059','193.176.211.71',1,1595583347,1595583347),(123,1,'admin','删除','删除商户100060','/admin/user/del?uid=100060','193.176.211.71',1,1595583355,1595583355),(124,1,'admin','删除','删除商户100061','/admin/user/del?uid=100061','193.176.211.71',1,1595583367,1595583367),(125,1,'admin','删除','删除商户100062','/admin/user/del?uid=100062','193.176.211.71',1,1595583409,1595583409),(126,1,'admin','删除','删除商户100063','/admin/user/del?uid=100063','193.176.211.71',1,1595583420,1595583420),(127,1,'admin','编辑','支付渠道渠道测试1','/admin/pay/editChannel','193.176.211.71',1,1595583460,1595583460),(128,1,'admin','编辑','支付渠道渠道测试2','/admin/pay/editChannel','193.176.211.71',1,1595583474,1595583474),(129,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','110.54.239.124',1,1595674190,1595674190),(130,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','193.176.211.41',1,1596555208,1596555208),(131,999999,'index','登录','商户nouser@iredcap.cn登录失败，密码输入错误','/login','193.176.211.41',1,1596555271,1596555271),(132,100001,'index','登录','商户nouser@iredcap.cn登录成功','/login','193.176.211.41',1,1596555281,1596555281),(133,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','193.176.211.41',1,1596640449,1596640449),(134,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','58.97.164.131',1,1596962885,1596962885),(135,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','193.176.211.34',1,1597154038,1597154038),(136,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','175.176.32.30',1,1597155229,1597155229),(137,1,'admin','登录','管理员admin登录成功','/admin/login/login.html','193.176.211.76',1,1598080589,1598080589),(138,999999,'index','登录','商户nouser@iredcap.cn登录失败，密码输入错误','/login','193.176.211.76',1,1598080672,1598080672),(139,999999,'index','登录','商户nouser@iredcap.cn登录失败，密码输入错误','/login','193.176.211.76',1,1598080689,1598080689),(140,1,'admin','修改','修改商户信息。UID:100001','/admin/user/edit','193.176.211.76',1,1598080701,1598080701),(141,100001,'index','登录','商户nouser@iredcap.cn登录成功','/login','193.176.211.76',1,1598080716,1598080716),(142,100001,'index','新增','新增收款账号。uid:100001','/account/add.html','193.176.211.76',1,1598080778,1598080778),(143,100001,'index','新增','个人提交提现申请自助提现，20200822032009验证通过','/balance/apply.html','193.176.211.76',1,1598080822,1598080822),(144,100001,'index','修改','修改密码','/user/password.html','193.176.211.76',1,1598080909,1598080909),(145,1,'admin','推送','推送提现订单打款，单号：C20200822152022822660','/admin/balance/deal','193.176.211.76',1,1598080945,1598080945),(146,1,'admin','删除','删除支付方式，ID：1','/admin/pay/delCode?id=1','193.176.211.76',1,1598081139,1598081139),(147,1,'admin','删除','删除支付方式，ID：2','/admin/pay/delCode?id=2','193.176.211.76',1,1598081143,1598081143),(148,1,'admin','删除','删除支付方式，ID：3','/admin/pay/delCode?id=3','193.176.211.76',1,1598081146,1598081146),(149,1,'admin','删除','删除支付方式，ID：4','/admin/pay/delCode?id=4','193.176.211.76',1,1598081149,1598081149),(150,1,'admin','删除','删除支付方式，ID：5','/admin/pay/delCode?id=5','193.176.211.76',1,1598081153,1598081153),(151,1,'admin','新增','支付方式,data:name=%E6%94%AF%E4%BB%98%E5%AE%9D%E8%BD%AC%E5%8D%A1&code=ali_to_bank&status=1&remarks=1&cnl_id=','/admin/pay/addCode','193.176.211.76',1,1598081241,1598081241),(152,1,'admin','新增','支付方式,data:name=%E6%94%AF%E4%BB%98%E5%AE%9D%E6%89%AB%E7%A0%81&code=ali_scan&status=1&remarks=1&cnl_id=','/admin/pay/addCode','193.176.211.76',1,1598081276,1598081276),(153,1,'admin','新增','支付方式,data:name=%E6%94%AF%E4%BB%98%E5%AE%9Dwap&code=ali_wap&status=1&remarks=1&cnl_id=','/admin/pay/addCode','193.176.211.76',1,1598081306,1598081306);
/*!40000 ALTER TABLE `cm_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_admin`
--

DROP TABLE IF EXISTS `cm_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_admin` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `leader_id` mediumint(8) NOT NULL DEFAULT '1',
  `username` varchar(20) DEFAULT '0',
  `nickname` varchar(40) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `google_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'googleç¶æ1 ç»å® 0æªç»å®',
  `google_secret_key` varchar(100) NOT NULL DEFAULT '' COMMENT 'ç®¡çågoogleç§é¥',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_admin`
--

LOCK TABLES `cm_admin` WRITE;
/*!40000 ALTER TABLE `cm_admin` DISABLE KEYS */;
INSERT INTO `cm_admin` VALUES (1,0,'admin','admin','17cf2f98e09fa2af801de5b6ee9e1a58','13333333333','12345@qq.com',1,1552016220,1598080589,0,'KNYMHTHNA66A3EOE');
/*!40000 ALTER TABLE `cm_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_api`
--

DROP TABLE IF EXISTS `cm_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_api` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) DEFAULT NULL COMMENT '商户id',
  `key` varchar(32) DEFAULT NULL COMMENT 'API验证KEY',
  `sitename` varchar(30) NOT NULL,
  `domain` varchar(100) NOT NULL COMMENT '商户验证域名',
  `daily` decimal(12,3) NOT NULL DEFAULT '20000.000' COMMENT '日限访问（超过就锁）',
  `secretkey` text NOT NULL COMMENT '商户请求RSA私钥',
  `auth_ips` text NOT NULL,
  `role` int(4) NOT NULL COMMENT '角色1-普通商户,角色2-特约商户',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '商户API状态,0-禁用,1-锁,2-正常',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `is_verify_sign` int(11) DEFAULT '1' COMMENT '是否验证sign 1 验证 0 不验证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_domain_unique` (`id`,`domain`,`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COMMENT='商户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_api`
--

LOCK TABLES `cm_api` WRITE;
/*!40000 ALTER TABLE `cm_api` DISABLE KEYS */;
INSERT INTO `cm_api` VALUES (1,100001,'772ae1d32322f49508307b2f31a0107f','小红帽','https://www.redcap.cnfsa',20000.000,'MIIEowIBAAKCAQEAtJKWdvG8MDILqwcoR721+pTT8ClC+5vq60pfXQAFsoIt8E6oQsDgMIdvp6FP2YjCeTJrr9MjQoC7t8yXO+liau70bMNbds/wg8arh+8jIHYDNIu4nFHlDTdk9y72xWAQixnGT3F/zSoLWv8LvrmfOHDSByD+/RPeiS04/GwVr/SLlbxSp+Rf7ano//5CD9XjD6jVz7IwBcurmqrqenRujNBDAZOncKbKhWfs3AdWhj4iQZeptYtHo3NXc+s3ehdqgEt6qukAENBApx1ROYAyZG6O2b4okzWW+rrJeDWdNKeixyw4nQjtINR/t82cH8xMTSky41N3N7L2eB0tAc/PhQIDAQABAoIBAAZjtX1J+n2+F5marDs1pE3UnFdALoWWs85VmGBDEvCJGLULI3sRNh2hfTryQ1AQPclqFlNnZjUBNyM+0w8kp/3erLl4hDEFFJ6lFga+WIDajCx80TB+2VsJXcI9YDAFwTAa3mCLRJlu5m323mSGTvMBUv07lqo/3Lz/46dS78WFE3uCmaRn8JOAz8wLGWTO1YtEd8yxQR035L9/+eDhi9HuibqBWInRKn8EkljsvlDFzeZM/fqNwO/DDVlAp1zELon+729w5cfHTnpIjlPo8mOIGOHpCrxYMvUKMlY3eStlDYhxpShfny81Sm4dI6kE3V6SIRgAfL/GDOKaCkUaXhUCgYEA4bP46VUHX7QgdinjrsVOlKiS8oDCm/+62bE47ukbqy4s7pGSkyOyqiSKVWCe3pq4cZ7yDSgYeFtYpKoZWLvWn5Rz0MtL5lATHZXLfaNH6a1PwbzQv2cP70ukSJjHJUspflfHFHzlQhB+a+81I1KoLuFlr7b2M+JoYl9I6pyJMxcCgYEAzM/CnzHKrX3v+FEXqCphElaGexSIRbQLFVF3IR3wlfIVLpFx5UFlIjwY8Ulj6nNKqo1aZ0h7lkMjS/q5L0iDxGN0mA8LsHlqbL6hyyVCE3QO+CpLEAsJXHr3OIUmx/YNjM+/fG/6NaADw7RUt0QWDV2wV1VBeLv6eKXO+YVUY8MCgYEAqvAmTXmzev0uNLAnG3+dsyM1H+r6+TEmb6c0amUsKmpvZ0PjUgMQVqIUDvN9fzSJCqyJwAMk/UqZiSS2y6h/tR621GSUGFt/DsIbew0F8unq5N0+8Cd7Pw3332+uLAWP6HtMcKzi6TUaul5RzW3VqKPW4szcDJGl4xMtY1qo4oMCgYARgPwQIPBCbY3xufR8ocqUB6MMp8+RrXZ5BvJYeTeTiRH4XePPBQzApUQ4ct5ALkRGWThNtWsih3Bf0Pi8qsTgJuPTDw4fsfC/hHdNZkzEXtncqbiqkVbmeXfhc7fBxSyZSTQDTYqjxJ4tvp6y3vXHhKdKf3XN/LrGTt1mg9eXgwKBgAtkhdV7pGBJFwdcGuBetkI/bDD+HkdUZLQNYUeUihb5RdhpSYR/GWkjjNbKPvtYnBJ41KlVw/Adi+vkNvE7csSzwtq8aBOQrRkCsjrtNt2bdq0UACO4ze4F+bTiJBI5uOrCqi5HzGHjlxjo6h23iWN52/ddMfbFHVLbK6CG3Hua','192.168.31.239,127.0.0.1,47.107.247.7,180.191.159.114',2,1,1541787044,1576316770,1),(47,100047,'1fcc6401bd38138f861bd47f18d4337b','','',20000.000,'','',0,0,1593787342,1593787342,1),(49,100049,'099681d2269adfc3ffb8e7fdd9bdaae3','','',20000.000,'','',0,0,1593791462,1593791462,1),(50,100050,'fac7e9940d455f854c1c98b897b4d178','','',20000.000,'','',0,0,1593846083,1593846083,1),(51,100051,'868000172bd93faf3a0bb2de164d2611','','',20000.000,'','',0,0,1593846214,1593846214,1),(52,100052,'a0f421ca329c5de5de73689bed236c71','','',20000.000,'','',0,0,1593846243,1593846243,1);
/*!40000 ALTER TABLE `cm_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_article`
--

DROP TABLE IF EXISTS `cm_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_article` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `author` char(20) NOT NULL DEFAULT 'admin' COMMENT '作者',
  `title` char(40) NOT NULL DEFAULT '' COMMENT '文章名称',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `content` text NOT NULL COMMENT '文章内容',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '封面图片id',
  `file_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件id',
  `img_ids` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_index` (`id`,`title`,`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_article`
--

LOCK TABLES `cm_article` WRITE;
/*!40000 ALTER TABLE `cm_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_auth_group`
--

DROP TABLE IF EXISTS `cm_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_auth_group` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` varchar(20) NOT NULL DEFAULT '' COMMENT '用户组所属模块',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '用户组名称',
  `describe` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(1000) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='权限组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_auth_group`
--

LOCK TABLES `cm_auth_group` WRITE;
/*!40000 ALTER TABLE `cm_auth_group` DISABLE KEYS */;
INSERT INTO `cm_auth_group` VALUES (1,1,'','超级管理员','拥有至高无上的权利',1,'超级权限',1541001599,1538323200),(2,2,'','管理员','主要管理者，事情很多，权力很大',1,'1,2,3,4,5,9,10,11,15,16,32,41,42,17,18,19,43,44,45,20,21,22,23,24,25,26,27,28,29',1544365067,1538323200),(3,0,'','编辑','负责编辑文章和站点公告',1,'1,15,16,17,32',1544360098,1540381656);
/*!40000 ALTER TABLE `cm_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_auth_group_access`
--

DROP TABLE IF EXISTS `cm_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组授权表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_auth_group_access`
--

LOCK TABLES `cm_auth_group_access` WRITE;
/*!40000 ALTER TABLE `cm_auth_group_access` DISABLE KEYS */;
INSERT INTO `cm_auth_group_access` VALUES (3,3,1,1540800597,1540800597),(2,2,1,1567687331,1567687331);
/*!40000 ALTER TABLE `cm_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_balance`
--

DROP TABLE IF EXISTS `cm_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_balance` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL COMMENT '商户ID',
  `enable` decimal(12,3) unsigned DEFAULT '0.000' COMMENT '可用余额(已结算金额)',
  `disable` decimal(12,3) unsigned DEFAULT '0.000' COMMENT '冻结金额(待结算金额)',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '账户状态 1正常 0禁止操作',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cash_index` (`id`,`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COMMENT='商户资产表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_balance`
--

LOCK TABLES `cm_balance` WRITE;
/*!40000 ALTER TABLE `cm_balance` DISABLE KEYS */;
INSERT INTO `cm_balance` VALUES (1,100001,4997.000,0.000,1,1541787044,1542617892),(87,100047,0.000,0.000,1,1593787342,1593787342),(89,100049,0.000,0.000,1,1593791462,1593791462),(90,100050,0.000,0.000,1,1593846083,1593846083),(91,100051,0.000,0.000,1,1593846214,1593846214),(92,100052,0.000,0.000,1,1593846243,1593846243);
/*!40000 ALTER TABLE `cm_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_balance_cash`
--

DROP TABLE IF EXISTS `cm_balance_cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_balance_cash` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL COMMENT '商户ID',
  `cash_no` varchar(80) NOT NULL COMMENT '取现记录单号',
  `amount` decimal(12,3) NOT NULL DEFAULT '0.000' COMMENT '取现金额',
  `account` int(2) NOT NULL DEFAULT '0' COMMENT '取现账户（关联商户结算账户表）',
  `remarks` varchar(255) NOT NULL COMMENT '取现说明',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '取现状态',
  `create_time` int(10) unsigned NOT NULL COMMENT '申请时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '处理时间',
  `commission` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT 'æç°æç»­è´¹',
  `audit_remarks` varchar(255) DEFAULT NULL COMMENT 'å®¡æ ¸å¤æ³¨',
  `bank_name` varchar(32) DEFAULT NULL COMMENT '开户行',
  `bank_number` varchar(32) DEFAULT NULL COMMENT '卡号',
  `bank_realname` varchar(32) DEFAULT NULL COMMENT '姓名',
  `voucher` varchar(255) DEFAULT NULL COMMENT '跑分平台凭证',
  `voucher_time` int(11) DEFAULT '0' COMMENT '凭证上传时间',
  `channel_id` int(11) NOT NULL DEFAULT '0' COMMENT '渠道编号 ',
  `cash_file` varchar(255) NOT NULL DEFAULT '' COMMENT 'è½¬æ¬¾å­è¯',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cash_index` (`id`,`uid`,`cash_no`,`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='商户账户取现记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_balance_cash`
--

LOCK TABLES `cm_balance_cash` WRITE;
/*!40000 ALTER TABLE `cm_balance_cash` DISABLE KEYS */;
INSERT INTO `cm_balance_cash` VALUES (1,100059,'C20200724161657724981',20000.000,18,'自助提现，20200724041647验证通过',2,1595578617,1595578805,3.000,NULL,NULL,NULL,NULL,NULL,0,0,''),(2,100001,'C20200822152022822660',1000.000,7,'自助提现，20200822032009验证通过',2,1598080822,1598080945,3.000,NULL,NULL,NULL,NULL,NULL,0,0,'');
/*!40000 ALTER TABLE `cm_balance_cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_balance_change`
--

DROP TABLE IF EXISTS `cm_balance_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_balance_change` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL COMMENT '商户ID',
  `type` varchar(20) NOT NULL DEFAULT 'enable' COMMENT '资金类型',
  `preinc` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '变动前金额',
  `increase` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '增加金额',
  `reduce` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '减少金额',
  `suffixred` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '变动后金额',
  `remarks` varchar(255) NOT NULL COMMENT '资金变动说明',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `is_flat_op` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'æ¯å¦åå°äººå·¥è´¦å',
  PRIMARY KEY (`id`),
  UNIQUE KEY `change_index` (`id`,`uid`,`type`,`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COMMENT='商户资产变动记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_balance_change`
--

LOCK TABLES `cm_balance_change` WRITE;
/*!40000 ALTER TABLE `cm_balance_change` DISABLE KEYS */;
INSERT INTO `cm_balance_change` VALUES (1,100062,'enable',0.000,975.000,0.000,975.000,'单号20072320320974114868支付成功，金额转入',0,1595507638,1595507638,0),(2,100062,'enable',975.000,0.000,975.000,0.000,'测试',0,1595508873,1595508873,1),(3,100001,'enable',1798.226,0.000,1798.226,0.000,'演示商户',0,1595508903,1595508903,1),(4,100062,'enable',0.000,974.025,0.000,974.025,'单号20072408182695470622支付成功，金额转入',0,1595550848,1595550848,0),(5,100062,'enable',974.025,974.025,0.000,1948.050,'单号20072412255264816869支付成功，金额转入',0,1595565329,1595565329,0),(6,100062,'enable',1948.050,0.000,1948.050,0.000,'后台管理员账变',0,1595566247,1595566247,1),(7,100062,'enable',0.000,2250.300,0.000,2250.300,'单号20072412562028120649支付成功，金额转入',0,1595568562,1595568562,0),(8,100001,'enable',0.000,6000.000,0.000,6000.000,'单号2007241331371841支付成功，金额转入',0,1595568749,1595568749,0),(9,100061,'enable',0.000,0.300,0.000,0.300,'商户单号2020072414010489572支付成功，代理分润金额转入',0,1595570701,1595570701,0),(10,100059,'enable',0.000,294.600,0.000,294.600,'单号2020072414010489572支付成功，金额转入',0,1595570701,1595570701,0),(11,100061,'enable',0.300,0.300,0.000,0.600,'商户单号2020072414471793957支付成功，代理分润金额转入',0,1595573436,1595573436,0),(12,100059,'enable',294.600,294.600,0.000,589.200,'单号2020072414471793957支付成功，金额转入',0,1595573436,1595573436,0),(13,100061,'enable',0.600,0.500,0.000,1.100,'商户单号2020072414490135453支付成功，代理分润金额转入',0,1595573506,1595573506,0),(14,100059,'enable',589.200,491.000,0.000,1080.200,'单号2020072414490135453支付成功，金额转入',0,1595573506,1595573506,0),(15,100061,'enable',1.100,0.300,0.000,1.400,'商户单号2020072414463690631支付成功，代理分润金额转入',0,1595573995,1595573995,0),(16,100059,'enable',1080.200,294.600,0.000,1374.800,'单号2020072414463690631支付成功，金额转入',0,1595573995,1595573995,0),(17,100061,'enable',1.400,0.300,0.000,1.700,'商户单号2020072414545345797支付成功，代理分润金额转入',0,1595574967,1595574967,0),(18,100059,'enable',1374.800,294.600,0.000,1669.400,'单号2020072414545345797支付成功，金额转入',0,1595574967,1595574967,0),(19,100061,'enable',1.700,0.300,0.000,2.000,'商户单号2020072415150717366支付成功，代理分润金额转入',0,1595575055,1595575055,0),(20,100059,'enable',1669.400,294.600,0.000,1964.000,'单号2020072415150717366支付成功，金额转入',0,1595575055,1595575055,0),(21,100061,'enable',2.000,1.000,0.000,3.000,'商户单号2020072415144387200支付成功，代理分润金额转入',0,1595575337,1595575337,0),(22,100059,'enable',1964.000,982.000,0.000,2946.000,'单号2020072415144387200支付成功，金额转入',0,1595575337,1595575337,0),(23,100061,'enable',3.000,0.300,0.000,3.300,'商户单号2020072415232160667支付成功，代理分润金额转入',0,1595575621,1595575621,0),(24,100059,'enable',2946.000,294.600,0.000,3240.600,'单号2020072415232160667支付成功，金额转入',0,1595575621,1595575621,0),(25,100061,'enable',3.300,1.000,0.000,4.300,'商户单号2020072415250399055支付成功，代理分润金额转入',0,1595575682,1595575682,0),(26,100059,'enable',3240.600,982.000,0.000,4222.600,'单号2020072415250399055支付成功，金额转入',0,1595575682,1595575682,0),(27,100061,'enable',4.300,0.300,0.000,4.600,'商户单号2020072415212222572支付成功，代理分润金额转入',0,1595575697,1595575697,0),(28,100059,'enable',4222.600,294.600,0.000,4517.200,'单号2020072415212222572支付成功，金额转入',0,1595575697,1595575697,0),(29,100061,'enable',4.600,1.000,0.000,5.600,'商户单号2020072415271317205支付成功，代理分润金额转入',0,1595575765,1595575765,0),(30,100059,'enable',4517.200,982.000,0.000,5499.200,'单号2020072415271317205支付成功，金额转入',0,1595575765,1595575765,0),(31,100061,'enable',5.600,0.300,0.000,5.900,'商户单号2020072415294940111支付成功，代理分润金额转入',0,1595575984,1595575984,0),(32,100059,'enable',5499.200,294.600,0.000,5793.800,'单号2020072415294940111支付成功，金额转入',0,1595575984,1595575984,0),(33,100061,'enable',5.900,0.300,0.000,6.200,'商户单号2020072415350552885支付成功，代理分润金额转入',0,1595576189,1595576189,0),(34,100059,'enable',5793.800,294.600,0.000,6088.400,'单号2020072415350552885支付成功，金额转入',0,1595576189,1595576189,0),(35,100061,'enable',6.200,0.300,0.000,6.500,'商户单号2020072415335821971支付成功，代理分润金额转入',0,1595576212,1595576212,0),(36,100059,'enable',6088.400,294.600,0.000,6383.000,'单号2020072415335821971支付成功，金额转入',0,1595576212,1595576212,0),(37,100061,'enable',6.500,8.000,0.000,14.500,'商户单号2020072415420882279支付成功，代理分润金额转入',0,1595576714,1595576714,0),(38,100059,'enable',6383.000,7856.000,0.000,14239.000,'单号2020072415420882279支付成功，金额转入',0,1595576714,1595576714,0),(39,100061,'enable',14.500,0.500,0.000,15.000,'商户单号2020072415461734927支付成功，代理分润金额转入',0,1595576932,1595576932,0),(40,100059,'enable',14239.000,491.000,0.000,14730.000,'单号2020072415461734927支付成功，金额转入',0,1595576932,1595576932,0),(41,100061,'enable',15.000,0.800,0.000,15.800,'商户单号2020072415485496525支付成功，代理分润金额转入',0,1595577108,1595577108,0),(42,100059,'enable',14730.000,785.600,0.000,15515.600,'单号2020072415485496525支付成功，金额转入',0,1595577108,1595577108,0),(43,100061,'enable',15.800,0.300,0.000,16.100,'商户单号2020072415544154475支付成功，代理分润金额转入',0,1595577423,1595577423,0),(44,100059,'enable',15515.600,294.600,0.000,15810.200,'单号2020072415544154475支付成功，金额转入',0,1595577423,1595577423,0),(45,100061,'enable',16.100,2.000,0.000,18.100,'商户单号2020072416022945479支付成功，代理分润金额转入',0,1595577895,1595577895,0),(46,100059,'enable',15810.200,1964.000,0.000,17774.200,'单号2020072416022945479支付成功，金额转入',0,1595577895,1595577895,0),(47,100061,'enable',18.100,0.300,0.000,18.400,'商户单号2020072416012592097支付成功，代理分润金额转入',0,1595577898,1595577898,0),(48,100059,'enable',17774.200,294.600,0.000,18068.800,'单号2020072416012592097支付成功，金额转入',0,1595577898,1595577898,0),(49,100061,'enable',18.400,0.300,0.000,18.700,'商户单号2020072416023718396支付成功，代理分润金额转入',0,1595577929,1595577929,0),(50,100059,'enable',18068.800,294.600,0.000,18363.400,'单号2020072416023718396支付成功，金额转入',0,1595577929,1595577929,0),(51,100061,'enable',18.700,0.300,0.000,19.000,'商户单号2020072416054120223支付成功，代理分润金额转入',0,1595578100,1595578100,0),(52,100059,'enable',18363.400,294.600,0.000,18658.000,'单号2020072416054120223支付成功，金额转入',0,1595578100,1595578100,0),(53,100061,'enable',19.000,1.000,0.000,20.000,'商户单号2020072416022860192支付成功，代理分润金额转入',0,1595578188,1595578188,0),(54,100059,'enable',18658.000,982.000,0.000,19640.000,'单号2020072416022860192支付成功，金额转入',0,1595578188,1595578188,0),(55,100061,'enable',20.000,1.000,0.000,21.000,'商户单号2020072416083422948支付成功，代理分润金额转入',0,1595578249,1595578249,0),(56,100059,'enable',19640.000,982.000,0.000,20622.000,'单号2020072416083422948支付成功，金额转入',0,1595578249,1595578249,0),(57,100059,'enable',20622.000,0.000,20000.000,622.000,'提现扣减可用金额',0,1595578617,1595578617,0),(58,100059,'enable',622.000,0.000,3.000,619.000,'提现手续费扣减可用金额',0,1595578617,1595578617,0),(59,100061,'enable',21.000,0.300,0.000,21.300,'商户单号2020072416171224684支付成功，代理分润金额转入',0,1595578804,1595578804,0),(60,100059,'enable',619.000,294.600,0.000,913.600,'单号2020072416171224684支付成功，金额转入',0,1595578804,1595578804,0),(61,100061,'enable',21.300,0.300,0.000,21.600,'商户单号2020072416260256125支付成功，代理分润金额转入',0,1595579281,1595579281,0),(62,100059,'enable',913.600,294.600,0.000,1208.200,'单号2020072416260256125支付成功，金额转入',0,1595579281,1595579281,0),(63,100061,'enable',21.600,0.300,0.000,21.900,'商户单号2020072416273774564支付成功，代理分润金额转入',0,1595579608,1595579608,0),(64,100059,'enable',1208.200,294.600,0.000,1502.800,'单号2020072416273774564支付成功，金额转入',0,1595579608,1595579608,0),(65,100061,'enable',21.900,0.300,0.000,22.200,'商户单号2020072416341435673支付成功，代理分润金额转入',0,1595580068,1595580068,0),(66,100059,'enable',1502.800,294.600,0.000,1797.400,'单号2020072416341435673支付成功，金额转入',0,1595580068,1595580068,0),(67,100061,'enable',22.200,0.300,0.000,22.500,'商户单号2020072416400788374支付成功，代理分润金额转入',0,1595580166,1595580166,0),(68,100059,'enable',1797.400,294.600,0.000,2092.000,'单号2020072416400788374支付成功，金额转入',0,1595580166,1595580166,0),(69,100061,'enable',22.500,0.300,0.000,22.800,'商户单号2020072416490945063支付成功，代理分润金额转入',0,1595580677,1595580677,0),(70,100059,'enable',2092.000,294.600,0.000,2386.600,'单号2020072416490945063支付成功，金额转入',0,1595580677,1595580677,0),(71,100061,'enable',22.800,0.500,0.000,23.300,'商户单号2020072417174178259支付成功，代理分润金额转入',0,1595582492,1595582492,0),(72,100059,'enable',2386.600,491.000,0.000,2877.600,'单号2020072417174178259支付成功，金额转入',0,1595582492,1595582492,0),(73,100001,'enable',6000.000,0.000,1000.000,5000.000,'提现扣减可用金额',0,1598080822,1598080822,0),(74,100001,'enable',5000.000,0.000,3.000,4997.000,'提现手续费扣减可用金额',0,1598080822,1598080822,0);
/*!40000 ALTER TABLE `cm_balance_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_bank`
--

DROP TABLE IF EXISTS `cm_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_bank` (
  `bank_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '银行名称',
  `bank_color` varchar(200) NOT NULL DEFAULT '' COMMENT '银行App展示渐变色',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '银行网银地址',
  `logo` varchar(100) NOT NULL DEFAULT '' COMMENT '银行logo',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '银行状态0为启用，1为禁用',
  `create_user` int(10) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_user` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_maintain` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否维护',
  `maintain_start` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '维护开始时间',
  `maintain_end` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '维护结束时间',
  PRIMARY KEY (`bank_id`) USING BTREE,
  KEY `status` (`is_del`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='接受的在线提现银行表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_bank`
--

LOCK TABLES `cm_bank` WRITE;
/*!40000 ALTER TABLE `cm_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_banker`
--

DROP TABLE IF EXISTS `cm_banker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_banker` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '银行ID',
  `name` varchar(80) NOT NULL COMMENT '银行名称',
  `remarks` varchar(140) NOT NULL COMMENT '备注',
  `default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '默认账户,0-不默认,1-默认',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '银行可用性',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `bank_code` varchar(32) DEFAULT NULL COMMENT '银行编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='系统支持银行列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_banker`
--

LOCK TABLES `cm_banker` WRITE;
/*!40000 ALTER TABLE `cm_banker` DISABLE KEYS */;
INSERT INTO `cm_banker` VALUES (1,'支付宝','支付宝即时到账',0,1,1535983287,1595508512,'zfb'),(2,'工商','工商银行',0,1,1535983287,1595508537,'ICBC'),(3,'农业','农业银行',0,1,1535983287,1595508545,'ABC'),(4,'招商','',0,0,1535983287,1595508552,'CMB'),(5,'中国民生','',0,0,1535983287,1595508558,'CMBC'),(6,'中国建设','',0,0,1535983287,1595508575,'CCB'),(7,'兴业','',0,0,1535983287,1595508580,'CIB'),(9,'中国光大','',0,0,1535983287,1595508634,'CEB'),(10,'中国邮政储蓄','',0,0,1535983287,1595508641,'PSBC'),(11,'中国','',0,0,1535983287,1595508648,'BOC'),(12,'平安','',0,0,1535983287,1595508653,'PAB'),(13,'中国农业','',0,0,1535983287,1595508659,'ABC'),(14,'北京','',0,0,1535983287,1595508666,'BOB'),(15,'上海浦东发展','',0,0,1535983287,1595508672,'SPDB'),(16,'宁波','',0,0,1535983287,1595508677,'NBCB'),(17,'中信','',0,0,1535983287,1595508683,'CITIC'),(18,'华夏','',0,0,1535983287,1595508700,'HXB'),(19,'交通','',0,0,1535983287,1595508705,'COMM'),(21,'桂林','',0,1,1584005500,1595508737,'桂林');
/*!40000 ALTER TABLE `cm_banker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_config`
--

DROP TABLE IF EXISTS `cm_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_config` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置标题',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `group` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `value` text NOT NULL COMMENT '配置值',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置选项',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '配置说明',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `conf_name` (`name`),
  KEY `type` (`type`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='基本配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_config`
--

LOCK TABLES `cm_config` WRITE;
/*!40000 ALTER TABLE `cm_config` DISABLE KEYS */;
INSERT INTO `cm_config` VALUES (1,'seo_title','网站标题',1,1,0,'测试平台支付','','',1,1378898976,1585677353),(8,'email_port','SMTP端口号',1,8,1,'2','1:25,2:465','如：一般为 25 或 465',1,1378898976,1545131349),(2,'seo_description','网站描述',2,3,0,'','','网站搜索引擎描述，优先级低于SEO模块',1,1378898976,1585677353),(3,'seo_keywords','网站关键字',2,4,0,'测试平台支付','','网站搜索引擎关键字，优先级低于SEO模块',1,1378898976,1585677353),(4,'app_index_title','首页标题',1,2,0,'测试平台支付','','',1,1378898976,1585677353),(5,'app_domain','网站域名',1,5,0,'','','网站域名',1,1378898976,1585677353),(6,'app_copyright','版权信息',2,6,0,'测试平台支付','','版权信息',1,1378898976,1585677353),(7,'email_host','SMTP服务器',3,7,1,'2','1:smtp.163.com,2:smtp.aliyun.com,3:smtp.qq.com','如：smtp.163.com',1,1378898976,1569507595),(9,'send_email','发件人邮箱',1,9,1,'12345@qq.com','','',1,1378898976,1569507595),(10,'send_nickname','发件人昵称',1,10,1,'傻逼一个','','',1,1378898976,1569507595),(11,'email_password','邮箱密码',1,11,1,'xxxxxx','','',1,1378898976,1569507595),(12,'rsa_public_key','平台数据公钥',2,6,0,'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxV1hB4NP1NFgEM0mrx34z8gJMPBIhvDjAJcnMozk3jmUY9PkB7lZyfD6Fb+Xq21jIPX5zF4ggeYoK5keUH6TW9eJEr5JOqDl2YgKAdLfxLuJ4r8X1S3wflVp2/BURIbP1VGh6qNAxS3o8miL7x5BZ+jOhs4/LCq8YkncZioui5eAQ+/BoE++uM5IeSWZEVf8JsGo+MrOG2E/eOqetrB08Tm68igM6OMbKr05HKupcZm63zzDIHRJGKRjvdFjVoVznGsAC3phyh3bzYrjxykH00mLyw39/77MiBMp/uWVMh6wwiAjY2B25IKXXGCd0JSYvlpJWtCKbxlcAGDWSWkS0wIDAQAB','','平台数据公钥（RSA 2048）',1,1378898976,1585677353),(13,'rsa_private_key','平台数据私钥',2,6,0,'MIIEpAIBAAKCAQEAxV1hB4NP1NFgEM0mrx34z8gJMPBIhvDjAJcnMozk3jmUY9PkB7lZyfD6Fb+Xq21jIPX5zF4ggeYoK5keUH6TW9eJEr5JOqDl2YgKAdLfxLuJ4r8X1S3wflVp2/BURIbP1VGh6qNAxS3o8miL7x5BZ+jOhs4/LCq8YkncZioui5eAQ+/BoE++uM5IeSWZEVf8JsGo+MrOG2E/eOqetrB08Tm68igM6OMbKr05HKupcZm63zzDIHRJGKRjvdFjVoVznGsAC3phyh3bzYrjxykH00mLyw39/77MiBMp/uWVMh6wwiAjY2B25IKXXGCd0JSYvlpJWtCKbxlcAGDWSWkS0wIDAQABAoIBAFeeoB/8vOlHVrW+zii6Tqa4MNRoKFq4AJ9Xe5BmmojJ2UYEYNzI/cK4V95l44i4lGSirxZ6x0XEDxtj6+BigTsp0fHfRpVfrwtG6OJsYultNMbUfVkn/venJcr9w/t0OjqC9jY76dpgCmXr4gvzS6g848tXLxaFloKwNcepfGZ9wQb8Kt+5ONzn3BUcczu4DhuWfkt6oQ4j1KPl0UIdLZ7tevG1guUUr15p6VGsvQtMh4U7Lct/+0XUp4chut6fvoAIbEHnAE8rkAZBjrICwsYKNANNBEgVhtn5sK12RVZdUEd3vBWry9YOk1dgsEmi+chqQFlD18bO5/phIXEpK4kCgYEA7mugHzBcr53tSJVwh4IkyXQOs+gW5wSqbjHhTafN29w4qOJ9ZAxELogz4gQ25Yn95l1gpOY0cyH5x6QHsPFuJJBJp9sEiGplYSsCalK1qJaQewvAMd1Ctqk5A67QHgE/4xh+id9l+e1a9SKNqg3X3X1QdLddzwoq0i1Oj407KnUCgYEA0+rLqcJC0swSIchWpWLKQ/kgu093CXVvDoTugWPuHi4Ua49/9nPv0zSjMX5GXzGZ7CAQca/Gwg24R6bvc8wgwe9OYf8/ILQ3XUHmZJIHMXD/HuZqBMn/Swu62MJalOYTOsKp4hxNvxJkZPpku6gr5C611LaOsbE6iQDyeqmtzycCgYAeVGClNxDDYnK6BhCvnFWzrujj6AVp1AUeSYggydT9QBGRImbTIGBYDwmSmfil0J0U/hH6SDKp5suQowQ7dSsOybAlA06bT/Wfm8oN3oGvdZ/hl0gWz8/ZzsMq/cUJ3BzVdds7DMk7Nv+YKZId7O7mBTgD8QOk/+UcoZjZ2ByLtQKBgQCPP99OMJfVQMdc+LzBbWdGzYf3tj7EMRLSYL+MzY0v73w0PTuF0FckkSdjlHVjcfcXa5FSGD0l/fo8zTZ+M1VNY0O78LuuksP+EUb5YtDj9fsu2xh9hkJBa3txfOeYUXJcPSxzQSi46Wjd7XjcdVC+HWkikgkhSqlD5VUD3+Ey7wKBgQDtarpiVV19/IWiRbKy7rKJcG1HnezqfoA7outJK6yG7ne1vTjkGD/BLTSJm032htPFRmrwxhDOz0EilCjCz+ID2iPWKzhiZpf5yZ/qoFrFdofNWhLyAzNzxDhAZbcVG6ebjkMfHj84sChenGk31HfuplMD0GBe8DlC7UGerxCu1A==','','平台数据私钥（RSA 2048）',1,1378898976,1585677353),(16,'logo','ç«ç¹LOGO',4,6,0,'','','ä¸ä¼ ç«ç¹logo',1,1378898976,1576391324),(14,'withdraw_fee','提现手续费',1,6,0,'3','','提现手续费',1,1378898976,1585677353),(15,'thrid_url_gumapay','åºå®ç è¯·æ±å°å',1,6,0,'http://xxpay.byfbqgi.cn//api/api/addOrder','','åºå®ç ç¬¬ä¸æ¹apiè¯·æ±å°å',1,1378898976,1585677353),(18,'auth_key','éä¿¡ç§é¥',1,7,0,'XforgXQl2746FBIT','','ä¸è·å¹³å°éä¿¡ç§é¥',1,1378898976,1585677353),(19,'four_noticy_time','四方通知时间',1,8,0,'200','','四方码商回调通知时间(单位分钟)',1,1378898976,1585677353),(20,'max_withdraw_limit','提现最大金额',0,0,0,'50000','','',1,0,1585677353),(21,'min_withdraw_limit','提现最小金额',0,0,0,'1000','','',1,0,1585677353),(22,'balance_cash_type','提现申请类型',3,0,0,'1','1:选择账号,2:手动填写账号','',1,0,1585677353),(23,'request_pay_type','发起支付订单类型',3,0,0,'2','1:平台订单号,2:下游订单号','',1,0,1584606747),(24,'notify_ip','回调ip',0,54,0,'148.72.210.145','','',1,0,1585677353),(25,'is_single_handling_charge','是否开启单笔手续费',3,51,0,'0','1:开启,0:不开启','',1,0,1585677353),(26,'whether_open_daifu','是否开启代付',3,50,0,'2','1:开启,2:不开启','',1,0,1585677353),(27,'index_view_path','前台模板',3,0,0,'baisha','view:默认,baisha:白沙,view1:版本2','',1,0,1585833746),(28,'is_open_channel_fund','渠道资金是否开启',3,0,0,'0','0:关闭,1:开启','',1,0,0),(29,'is_paid_select_channel','提现审核选择渠道',3,0,0,'0','0:不选择,1:选择','',1,0,0),(30,'balance_cash_adminlist','提现列表url',0,0,0,'/api/withdraw/getAdminList','','',1,0,0),(31,'balance_cash_revocation','提现撤回url',0,0,0,'/api/withdraw/revocation','','',1,0,0),(32,'daifu_notify_ip','代付回调ip白名单',0,0,3,'127.0.0.1','','',1,0,0),(33,'daifu_host','代付接口地址',0,0,3,'http://xxpay.byfbqgi.cn//api/transfer/create','','',1,0,0),(34,'daifu_key','跑分密钥',0,0,3,'3e9c1885afa5920909f9b9aa2907cf19','','',1,0,0),(35,'daifu_notify_url','回调地址',0,0,3,'http://www.zhongtongpay.com//api/dfPay/notify','','',1,0,0),(36,'transfer_ip_list','中转ip白名单',2,0,0,'127.0.0.1','','多个使用逗号隔开',1,0,0),(37,'proxy_debug','是否开启中转回调',3,0,0,'0','1:开启,0:不开启','',1,0,0),(38,'orginal_host','中转回调地址',0,0,0,'','','',1,0,0),(39,'daifu_admin_id','代付admin_id',0,0,3,'5','','',1,0,0),(40,'is_channel_statistics','是否开启渠道统计',3,0,0,'0','1:开启,0:不开启','',1,0,0),(41,'admin_view_path','后台模板',3,0,0,'baisha','view:默认,baisha:白沙','',1,0,1585833746),(42,'index_domain_white_list','前台域名白名单',1,0,0,'','','如https://www.baidu.com/ 请输入www.baidu.com',1,0,0),(43,'pay_domain_white_list','下单域名白名单',0,0,0,'','','如https://www.baidu.com/ 请输入www.baidu.com',1,0,0),(44,'admin_domain_white_list','后台域名白名单',0,0,0,'','','如https://www.baidu.com/ 请输入www.baidu.com',1,0,0);
/*!40000 ALTER TABLE `cm_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_dafiu_account`
--

DROP TABLE IF EXISTS `cm_dafiu_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_dafiu_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(45) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `controller` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_dafiu_account`
--

LOCK TABLES `cm_dafiu_account` WRITE;
/*!40000 ALTER TABLE `cm_dafiu_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_dafiu_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_daifu_orders`
--

DROP TABLE IF EXISTS `cm_daifu_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_daifu_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `notify_url` varchar(500) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `bank_number` varchar(45) DEFAULT NULL,
  `bank_owner` varchar(45) DEFAULT NULL,
  `bank_id` int(10) DEFAULT NULL,
  `bank_name` varchar(45) DEFAULT NULL,
  `out_trade_no` varchar(45) DEFAULT NULL,
  `trade_no` varchar(45) DEFAULT NULL,
  `body` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `create_time` int(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  `service_charge` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  `single_service_charge` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单笔手续费',
  `notify_result` text COMMENT '回调返回内容 SUCCESS为成功 其他为失败',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_daifu_orders`
--

LOCK TABLES `cm_daifu_orders` WRITE;
/*!40000 ALTER TABLE `cm_daifu_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_daifu_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_deposite_card`
--

DROP TABLE IF EXISTS `cm_deposite_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_deposite_card` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1表示可使用状态，0表示禁止状态',
  `bank_id` int(10) NOT NULL DEFAULT '0' COMMENT '银行卡ID',
  `bank_account_username` varchar(255) NOT NULL DEFAULT '' COMMENT '银行卡用户名',
  `bank_account_number` varchar(255) NOT NULL DEFAULT '' COMMENT '银行卡账号',
  `bank_account_address` varchar(255) NOT NULL DEFAULT '' COMMENT '银行卡地址',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值卡信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_deposite_card`
--

LOCK TABLES `cm_deposite_card` WRITE;
/*!40000 ALTER TABLE `cm_deposite_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_deposite_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_deposite_orders`
--

DROP TABLE IF EXISTS `cm_deposite_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_deposite_orders` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL COMMENT '商户ID',
  `p_admin_id` mediumint(8) DEFAULT NULL COMMENT '跑分平台管理员id',
  `trade_no` varchar(255) NOT NULL DEFAULT '' COMMENT '申请充值订单号',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0表示正在申请 1成功 2表示失败',
  `bank_id` int(10) NOT NULL DEFAULT '0' COMMENT '银行卡ID',
  `bank_account_username` varchar(255) NOT NULL DEFAULT '' COMMENT '银行卡用户名',
  `bank_account_number` varchar(255) NOT NULL DEFAULT '' COMMENT '银行卡账号',
  `bank_account_address` varchar(255) NOT NULL DEFAULT '' COMMENT '银行卡地址',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `recharge_account` varchar(64) DEFAULT NULL COMMENT '充值账号',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `card_id` int(11) DEFAULT NULL COMMENT '充值银行卡id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请充值信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_deposite_orders`
--

LOCK TABLES `cm_deposite_orders` WRITE;
/*!40000 ALTER TABLE `cm_deposite_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_deposite_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_gemapay_code`
--

DROP TABLE IF EXISTS `cm_gemapay_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_gemapay_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '属于哪个用户',
  `type` int(1) DEFAULT NULL COMMENT '1表示微信，２表示支付宝，３表示云散付，４表示百付通',
  `qr_image` varchar(255) DEFAULT NULL COMMENT '二维码地址',
  `last_used_time` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '0' COMMENT '是否正常使用　０表示正常，１表示禁用',
  `last_online_time` int(11) DEFAULT NULL COMMENT '最后一次在线的时间',
  `pay_status` int(11) DEFAULT NULL COMMENT '０表示未使用，１表示使用占用中',
  `limit_money` decimal(10,2) DEFAULT NULL,
  `paying_num` int(10) DEFAULT NULL COMMENT '正在支付的数量',
  `user_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_gemapay_code`
--

LOCK TABLES `cm_gemapay_code` WRITE;
/*!40000 ALTER TABLE `cm_gemapay_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_gemapay_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_gemapay_code_money_paying`
--

DROP TABLE IF EXISTS `cm_gemapay_code_money_paying`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_gemapay_code_money_paying` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_id` int(11) DEFAULT NULL COMMENT '哪个账户',
  `money` decimal(10,2) DEFAULT NULL COMMENT '实际所需要支付的价格',
  `paying_num` int(11) DEFAULT NULL COMMENT '正在支付的个数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_gemapay_code_money_paying`
--

LOCK TABLES `cm_gemapay_code_money_paying` WRITE;
/*!40000 ALTER TABLE `cm_gemapay_code_money_paying` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_gemapay_code_money_paying` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_gemapay_collect_order`
--

DROP TABLE IF EXISTS `cm_gemapay_collect_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_gemapay_collect_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(200) NOT NULL COMMENT '订单号',
  `code_id` int(11) DEFAULT NULL COMMENT '哪个账户生成的',
  `order_paytime` int(11) NOT NULL COMMENT '订单支付时间',
  `order_payprice` varchar(45) DEFAULT NULL COMMENT '订单价格',
  `create_time` varchar(45) NOT NULL COMMENT '创建时间',
  `pay_order_no` varchar(200) DEFAULT NULL COMMENT '支付的订单号',
  `status` int(10) NOT NULL COMMENT '状态１表示成功匹配完成订单,2 表示没匹配到订单导致订单丢失',
  `error_possible_pay_no` varchar(300) DEFAULT NULL COMMENT '如果出现一笔没匹配到的订单，最有可能是哪笔订单',
  PRIMARY KEY (`id`),
  KEY `order_no` (`order_no`,`code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_gemapay_collect_order`
--

LOCK TABLES `cm_gemapay_collect_order` WRITE;
/*!40000 ALTER TABLE `cm_gemapay_collect_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_gemapay_collect_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_gemapay_order`
--

DROP TABLE IF EXISTS `cm_gemapay_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_gemapay_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `add_time` int(10) DEFAULT NULL,
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单号',
  `order_price` decimal(10,2) DEFAULT NULL COMMENT '订单价格',
  `status` int(11) DEFAULT '0',
  `gema_userid` int(11) DEFAULT '0' COMMENT '所属用户',
  `qr_image` varchar(100) DEFAULT NULL,
  `pay_time` int(10) DEFAULT NULL COMMENT '支付时间',
  `code_id` int(10) DEFAULT NULL,
  `order_pay_price` decimal(10,2) DEFAULT NULL COMMENT '实际支付价格',
  `gema_username` varchar(45) DEFAULT NULL COMMENT '个码用户名',
  `note` varchar(45) DEFAULT NULL,
  `out_trade_no` varchar(200) DEFAULT NULL,
  `code_type` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `orderNum_UNIQUE` (`order_no`),
  KEY `addtime` (`add_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_gemapay_order`
--

LOCK TABLES `cm_gemapay_order` WRITE;
/*!40000 ALTER TABLE `cm_gemapay_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_gemapay_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_gemapay_user`
--

DROP TABLE IF EXISTS `cm_gemapay_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_gemapay_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(45) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `desposit` decimal(10,2) DEFAULT NULL,
  `telphone` varchar(45) DEFAULT NULL,
  `last_onlie_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `telphone_UNIQUE` (`telphone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_gemapay_user`
--

LOCK TABLES `cm_gemapay_user` WRITE;
/*!40000 ALTER TABLE `cm_gemapay_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_gemapay_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_jobs`
--

DROP TABLE IF EXISTS `cm_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_jobs` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_jobs`
--

LOCK TABLES `cm_jobs` WRITE;
/*!40000 ALTER TABLE `cm_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_menu`
--

DROP TABLE IF EXISTS `cm_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_menu` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(100) NOT NULL DEFAULT '100' COMMENT '排序',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `module` char(20) NOT NULL DEFAULT '' COMMENT '模块',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `is_hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `icon` char(30) NOT NULL DEFAULT '' COMMENT '图标',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='基本菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_menu`
--

LOCK TABLES `cm_menu` WRITE;
/*!40000 ALTER TABLE `cm_menu` DISABLE KEYS */;
INSERT INTO `cm_menu` VALUES (1,0,100,'控制台','admin','/',0,'console',1,1544365211,1539583897),(2,0,100,'系统设置','admin','System',0,'set',1,1540800845,1539583897),(3,2,100,'基本设置','admin','System',0,'set-fill',1,1539584897,1539583897),(4,3,100,'网站设置','admin','System/website',0,'',1,1539584897,1539583897),(5,3,100,'邮件服务','admin','System/email',0,'',1,1539584897,1539583897),(6,3,100,'行为日志','admin','Log/index',0,'flag',1,1540563678,1540563678),(7,6,100,'获取日志列表','admin','Log/getList',1,'',1,1540566783,1540566783),(8,6,100,'删除日志','admin','Log/logDel',1,'',1,1540566819,1540566819),(9,6,100,'清空日志','admin','Log/logClean',1,'',1,1540566849,1540566849),(10,2,100,'权限设置','admin','Admin',0,'set-sm',1,1539584897,1539583897),(11,10,100,'管理员设置','admin','Admin/index',0,'',1,1539584897,1539583897),(12,11,100,'获取管理员列表','admin','Admin/userList',1,'user',1,1540485169,1540484869),(13,11,100,'新增管理员','admin','Admin/userAdd',1,'user',1,1540485182,1540485125),(14,11,100,'编辑管理员','admin','Admin/userEdit',1,'user',1,1540485199,1540485155),(15,11,100,'删除管理员','admin','AdminuserDel',1,'user',1,1540485310,1540485310),(16,10,100,'角色管理','admin','Admin/group',0,'',1,1539584897,1539583897),(17,16,100,'获取角色列表','admin','Admin/groupList',1,'',1,1540485432,1540485432),(18,16,100,'新增权限组','admin','Admin/groupAdd',1,'',1,1540485531,1540485488),(19,16,100,'编辑权限组','admin','Admin/groupEdit',1,'',1,1540485515,1540485515),(20,16,100,'删除权限组','admin','Admin/groupDel',1,'',1,1540485570,1540485570),(21,10,100,'菜单管理','admin','Menu/index',0,'',1,1539584897,1539583897),(22,21,100,'获取菜单列表','admin','Menu/getList',1,'',1,1540485652,1540485632),(23,21,100,'新增菜单','admin','Menu/menuAdd',1,'',1,1540534094,1540534094),(24,21,100,'编辑菜单','admin','Menu/menuEdit',1,'',1,1540534133,1540534133),(25,21,100,'删除菜单','admin','Menu/menuDel',1,'',1,1540534133,1540534133),(26,2,100,'我的设置','admin','Admin/profile',0,'',1,1540486245,1539583897),(27,26,100,'基本资料','admin','System/profile',0,'',1,1540557980,1539583897),(28,26,100,'修改密码','admin','System/changePwd',0,'',1,1540557985,1539583897),(29,0,100,'支付设置','admin','Pay',0,'senior',1,1540483267,1539583897),(30,29,100,'支付产品','admin','Pay/index',0,'',1,1539584897,1539583897),(31,30,100,'获取支付产品列表','admin','Pay/getCodeList',1,'',1,1545461560,1545458869),(32,30,100,'新增支付产品','admin','Pay/addCode',1,'',1,1545461705,1545458888),(33,30,100,'编辑支付产品','admin','Pay/editCode',1,'',1,1545461713,1545458915),(34,30,100,'删除产品','admin','Pay/delCode',1,'',1,1545461745,1545458935),(35,29,100,'支付渠道','admin','Pay/channel',0,'',1,1539584897,1539583897),(36,35,100,'获取渠道列表','admin','Pay/getChannelList',1,'',1,1545461798,1545458953),(37,35,100,'新增渠道','admin','Pay/addChannel',1,'',1,1545461856,1545458977),(38,35,100,'编辑渠道','admin','Pay/editChannel',1,'',1,1545461863,1545458992),(39,35,100,'删除渠道','admin','Pay/delChannel',1,'',1,1545461870,1545459004),(40,29,100,'渠道账户','admin','Pay/account',0,'',1,1578931745,1545459058),(41,40,100,'获取渠道账户列表','admin','Pay/getAccountList',1,'',1,1545462265,1545459152),(42,40,100,'新增账户','admin','Pay/addAccount',1,'',1,1545462273,1545459180),(43,40,100,'编辑账户','admin','Pay/editAccount',1,'',1,1545462279,1545459194),(44,40,100,'删除账户','admin','Pay/delAccount',1,'',1,1545462286,1545459205),(45,29,100,'银行管理','admin','Pay/bank',0,'',1,1540822566,1540822549),(46,45,100,'获取银行列表','admin','Pay/getBankList',1,'',1,1545462167,1545459107),(47,45,100,'新增银行','admin','Pay/addBank',1,'',1,1545462178,1545459243),(48,45,100,'编辑银行','admin','Pay/editBank',1,'',1,1545462220,1545459262),(49,45,100,'删除银行','admin','Pay/delBank',1,'',1,1545462230,1545459277),(50,0,100,'内容管理','admin','Article',0,'template',1,1540484655,1539583897),(51,50,100,'文章管理','admin','Article/index',0,'',1,1539584897,1539583897),(52,51,100,'获取文章列表','admin','Article/getList',1,'lis',1,1540485927,1540484939),(53,51,100,'新增文章','admin','Article/add',1,'',1,1540486058,1540486058),(54,51,100,'编辑文章','admin','Article/edit',1,'',1,1540486097,1540486097),(55,51,100,'删除文章','admin','Article/del',1,'',1,1545462411,1545459431),(56,50,100,'公告管理','admin','Article/notice',0,'',1,1539584897,1539583897),(57,56,100,'获取公告列表','admin','Article/getNoticeList',1,'',1,1545462441,1545459334),(58,56,100,'新增公告','admin','Article/addNotice',1,'',1,1545462453,1545459346),(59,56,100,'编辑公告','admin','Article/editNotice',1,'',1,1545462460,1545459368),(60,56,100,'删除公告','admin','Article/delNotice',1,'',1,1545462468,1545459385),(61,0,100,'商户管理','admin','User',0,'user',1,1539584897,1539583897),(62,61,100,'商户列表','admin','User/index',0,'',1,1539584897,1539583897),(63,62,100,'获取商户列表','admin','User/getList',1,'',1,1540486400,1540486400),(64,62,100,'新增商户','admin','User/add',1,'',1,1540533973,1540533973),(65,62,100,'商户修改','admin','User/edit',1,'',1,1540533993,1540533993),(66,62,100,'删除商户','admin','User/del',1,'',1,1545462902,1545459408),(67,61,100,'提现记录','admin','Balance/paid',0,'',1,1539584897,1539583897),(68,67,100,'获取提现记录','admin','Balance/paidList',1,'',1,1545462677,1545458822),(69,67,100,'提现编辑','admin','Balance/editPaid',1,'',1,1545462708,1545458822),(70,67,100,'提现删除','admin','Balance/delPaid',1,'',1,1545462715,1545458822),(71,61,100,'商户账户','admin','Account/index',0,'',1,1539584897,1539583897),(80,71,100,'商户账户列表','admin','Account/getList',1,'',1,1545462747,1545459501),(81,71,100,'新增商户账户','admin','Account/add',1,'',1,1545462827,1545459501),(82,71,100,'编辑商户账户','admin','Account/edit',1,'',1,1545462815,1545459501),(83,71,100,'删除商户账户','admin','Account/del',1,'',1,1545462874,1545459501),(84,61,100,'商户资金','admin','Balance/index',0,'',1,1539584897,1539583897),(85,84,100,'商户资金列表','admin','Balance/getList',1,'',1,1545462951,1545459501),(86,84,100,'商户资金明细','admin','Balance/details',1,'',1,1545462997,1545459501),(87,84,100,'获取商户资金明细','admin','Balance/getDetails',1,'',1,1545462997,1545459501),(88,61,100,'商户API','admin','Api/index',0,'',1,1539584897,1539583897),(89,87,100,'商户API列表','admin','Api/getList',1,'',1,1545463054,1545459501),(90,87,100,'编辑商户API','admin','Api/edit',1,'',1,1545463065,1545459501),(91,61,100,'商户认证','admin','User/auth',0,'',1,1542882201,1542882201),(92,90,100,'商户认证列表','admin','getlist',1,'',1,1545459501,1545459501),(93,90,100,'编辑商户认证','admin','getlist',1,'',1,1545459501,1545459501),(94,0,100,'订单管理','admin','Orders',0,'form',1,1539584897,1539583897),(95,94,100,'交易列表','admin','Orders/index',0,'',1,1539584897,1539583897),(96,95,100,'获取交易列表','admin','Orders/getList',1,'',1,1545463214,1539583897),(97,94,100,'交易详情','admin','Orders/details',1,'',1,1545463268,1545459549),(98,94,100,'退款列表','admin','Orders/refund',0,'',1,1539584897,1539583897),(99,94,100,'商户统计','admin','Orders/user',0,'',1,1539584897,1539583897),(100,99,100,'获取商户统计','admin','Orders/userList',1,'',1,1539584897,1539583897),(101,94,100,'渠道统计','admin','Orders/channel',0,'',1,1544362599,1539583897),(102,101,100,'获取渠道统计','admin','Orders/channelList',1,'',1,1544362599,1539583897),(103,61,100,'每日统计','admin','User/cal',0,'',1,1581949633,1581872080),(104,61,100,'商户资金记录','admin','Balance/change',0,'',1,1583999358,1583999358),(105,0,100,'代付订单管理','admin','DaifuOrders',0,'form',1,1581082458,1581082458),(111,105,100,'订单列表','admin','DaifuOrders/index',0,'',1,1581082501,1581082501),(113,105,100,'充值银行卡','admin','daifu_orders/depositecard',0,'',1,1585315652,1585315597),(114,105,100,'充值列表','admin','deposite_order/index',0,'',1,1585329481,1585329451),(115,94,100,'渠道资金','admin','Channel/fundIndex',0,'',1,1587199882,1587199882),(116,2,100,'代付设置','admin','daifu_orders/setting',0,'',1,1588083379,1588083251);
/*!40000 ALTER TABLE `cm_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_notice`
--

DROP TABLE IF EXISTS `cm_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_notice` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `author` varchar(30) DEFAULT NULL COMMENT '作者',
  `content` text NOT NULL COMMENT '公告内容',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '公告状态,0-不展示,1-展示',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_notice`
--

LOCK TABLES `cm_notice` WRITE;
/*!40000 ALTER TABLE `cm_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_orders`
--

DROP TABLE IF EXISTS `cm_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_orders` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `puid` mediumint(8) NOT NULL DEFAULT '0' COMMENT '代理ID',
  `uid` mediumint(8) NOT NULL COMMENT '商户id',
  `trade_no` varchar(30) NOT NULL COMMENT '交易订单号',
  `out_trade_no` varchar(30) NOT NULL COMMENT '商户订单号',
  `subject` varchar(64) NOT NULL COMMENT '商品标题',
  `body` varchar(256) NOT NULL COMMENT '商品描述信息',
  `channel` varchar(30) NOT NULL COMMENT '交易方式(wx_native)',
  `cnl_id` int(3) NOT NULL COMMENT '支付通道ID',
  `extra` text COMMENT '特定渠道发起时额外参数',
  `amount` decimal(12,3) unsigned NOT NULL COMMENT '订单金额,单位是元,12-9保留3位小数',
  `income` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '实付金额',
  `user_in` decimal(12,3) NOT NULL DEFAULT '0.000' COMMENT '商户收入',
  `agent_in` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '代理收入',
  `platform_in` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '平台收入',
  `currency` varchar(3) NOT NULL DEFAULT 'CNY' COMMENT '三位货币代码,人民币:CNY',
  `client_ip` varchar(32) NOT NULL COMMENT '客户端IP',
  `return_url` varchar(128) NOT NULL COMMENT '同步通知地址',
  `notify_url` varchar(128) NOT NULL COMMENT '异步通知地址',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '订单状态:0-已取消-1-待付款，2-已付款',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `bd_remarks` varchar(455) NOT NULL,
  `visite_time` int(10) NOT NULL DEFAULT '0' COMMENT 'è®¿é®æ¶é´',
  `real_need_amount` decimal(12,3) NOT NULL COMMENT 'éè¦ç¨·æ¯ä»éé¢',
  `image_url` varchar(445) NOT NULL COMMENT 'éè¦ç¨·æ¯ä»éé¢',
  `request_log` varchar(445) NOT NULL COMMENT 'log',
  `visite_show_time` int(10) NOT NULL DEFAULT '0' COMMENT 'å è½½å®æ¶é´',
  `request_elapsed_time` decimal(10,3) NOT NULL DEFAULT '0.000' COMMENT '请求时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no_index` (`out_trade_no`,`trade_no`,`uid`,`channel`) USING BTREE,
  UNIQUE KEY `trade_no_index` (`trade_no`) USING BTREE,
  KEY `stat` (`cnl_id`,`create_time`) USING BTREE,
  KEY `stat1` (`cnl_id`,`status`,`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COMMENT='交易订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_orders`
--

LOCK TABLES `cm_orders` WRITE;
/*!40000 ALTER TABLE `cm_orders` DISABLE KEYS */;
INSERT INTO `cm_orders` VALUES (1,0,100001,'115936220596805667254','2007020047394177','汽车用品','dd','zfb_sm',1,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.yifutongs.com/test/return.php','www.yifutongs.com/test/notify.php',1,1593622059,1593622060,'',0,0.000,'','',0,0.434),(2,100047,100055,'5515940124847949367948','TF20200706131444D2QZI6','手表','1','zfb_h5',0,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','http://cjk.jinzunzy.com:22890/notify2/index/channel/UTICPlZvDzBRMQ','http://cjk.jinzunzy.com:22890/notify2/index/channel/UTICPlZvDzBRMQ',1,1594012484,1594012484,'',0,0.000,'','',0,0.000),(3,100047,100055,'5515940125043795649424','TF20200706131504XQ5WTJ','化妆品','1','zfb_h5',0,'[]',500.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','http://cjk.jinzunzy.com:22890/notify2/index/channel/UTICPlZvDzBRMQ','http://cjk.jinzunzy.com:22890/notify2/index/channel/UTICPlZvDzBRMQ',1,1594012504,1594012504,'',0,0.000,'','',0,0.000),(4,0,100001,'115943144622747661132','2007100107429866','食品饮料','dd','zfb_sm',0,'[]',4500.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.yifutongs.com/test/return.php','www.yifutongs.com/test/notify.php',1,1594314462,1594314462,'',0,0.000,'','',0,0.000),(5,0,100001,'115944023893304788659','2007110133091022','手表','dd','zfb_sm',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.yifutongs.com/test/return.php','www.yifutongs.com/test/notify.php',1,1594402389,1594402389,'',0,0.000,'','',0,0.000),(6,0,100001,'115944024775103509750','2007110134378998','手机通讯','dd','zfb_sm',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.yifutongs.com/test/return.php','www.yifutongs.com/test/notify.php',1,1594402477,1594402477,'',0,0.000,'','',0,0.000),(7,0,100001,'115944025045731535867','2007110135049439','服饰鞋包','dd','zfb_sm',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.yifutongs.com/test/return.php','www.yifutongs.com/test/notify.php',1,1594402504,1594402504,'',0,0.000,'','',0,0.000),(8,0,100001,'115944026049708555489','2007110136441857','玩具乐器','dd','zfb_sm',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.yifutongs.com/test/return.php','www.yifutongs.com/test/notify.php',1,1594402604,1594402604,'',0,0.000,'','',0,0.000),(9,0,100001,'115944026273694316939','2007110137076218','手机通讯','dd','zfb_sm',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.yifutongs.com/test/return.php','www.yifutongs.com/test/notify.php',1,1594402627,1594402627,'',0,0.000,'','',0,0.000),(10,0,100001,'115944027463182763376','2007110139064877','数码办公','dd','zfb_sm',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.yifutongs.com/test/return.php','www.yifutongs.com/test/notify.php',1,1594402746,1594402746,'',0,0.000,'','',0,0.000),(11,0,100001,'115944028022216424925','2007110140026054','电脑配件','dd','zfb_sm',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.yifutongs.com/test/return.php','www.yifutongs.com/test/notify.php',1,1594402802,1594402802,'',0,0.000,'','',0,0.000),(12,0,100001,'115944028171517322675','2007110140178190','化妆品','dd','zfb_sm',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.yifutongs.com/test/return.php','www.yifutongs.com/test/notify.php',1,1594402817,1594402817,'',0,0.000,'','',0,0.000),(13,100061,100059,'5915954228587353814819','2020072221005540636','手机通讯','123','wap_zfb',3,'[]',200.610,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595422858,1595422858,'',0,0.000,'','',0,0.001),(14,100061,100059,'5915954228664998463956','2020072221010259885','手表','123','wap_zfb',3,'[]',200.610,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595422866,1595422866,'',0,0.000,'','',0,0.002),(15,100061,100059,'5915954231297679184241','2020072221052527468','服饰鞋包','123','wap_zfb',3,'[]',240.060,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595423129,1595423129,'',0,0.000,'','',0,0.001),(16,100061,100059,'5915954810203910773451','2020072313101789041','玩具乐器','123','wap_zfb',3,'[]',210.990,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595481020,1595481020,'',0,0.000,'','',0,0.001),(17,100061,100059,'5915954816869180900947','2020072313212355915','服饰鞋包','123','wap_zfb',3,'[]',220.800,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595481686,1595481686,'',0,0.000,'','',0,0.001),(18,100061,100059,'5915954818190979171328','2020072313233668916','电脑配件','123','wap_zfb',3,'[]',450.480,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595481819,1595481819,'',0,0.000,'','',0,0.002),(19,100061,100059,'5915954819820088759831','2020072313261897746','玩具乐器','123','wap_zfb',3,'[]',1200.070,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595481982,1595481982,'',0,0.000,'','',0,0.002),(20,100061,100059,'5915954820147827621621','2020072313265176634','化妆品','123','wap_zfb',3,'[]',800.940,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595482014,1595482014,'',0,0.000,'','',0,0.001),(21,100061,100059,'5915954820944470499640','2020072313281062433','化妆品','123','wap_zfb',3,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595482094,1595482094,'',0,0.000,'','',0,0.002),(22,100061,100059,'5915954821340815569935','2020072313285065936','手机通讯','123','wap_zfb',3,'[]',100.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595482134,1595482134,'',0,0.000,'','',0,0.002),(23,0,100001,'115954911091983670353','2007231558291087','数码办公','dd','guma_zfb',4,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595491109,1595491109,'',0,0.000,'','',0,0.437),(24,0,100001,'115954912946708180849','2007231601348419','服饰鞋包','dd','wap_zfb',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595491294,1595491294,'',0,0.000,'','',0,0.000),(25,0,100001,'115954913740133851522','2007231602533704','汽车用品','dd','wap_zfb',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595491374,1595491374,'',0,0.000,'','',0,0.000),(26,0,100001,'115954913893943699794','2007231603091104','数码办公','dd','guma_zfb',4,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595491389,1595491389,'',0,0.000,'','',0,0.515),(27,100061,100059,'5915954914073995658182','2020072316032389882','数码办公','123','wap_zfb',0,'[]',160.820,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595491407,1595491407,'',0,0.000,'','',0,0.000),(28,0,100001,'115954915370583812002','2007231605364233','数码办公','dd','wap_zfb',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595491537,1595491537,'',0,0.000,'','',0,0.000),(29,0,100001,'115954916539110402137','2007231607331055','手机通讯','dd','wap_zfb',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595491653,1595491653,'',0,0.000,'','',0,0.000),(30,0,100001,'115954918082786319976','2007231610088542','珠宝','dd','wap_zfb',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595491808,1595491808,'',0,0.000,'','',0,0.000),(31,0,100001,'115954918664665710241','2007231611063349','汽车用品','dd','wap_zfb',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595491866,1595491866,'',0,0.000,'','',0,0.000),(32,0,100001,'115954918831498354353','2007231611235819','玩具乐器','dd','wap_zfb',0,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595491883,1595491883,'',0,0.000,'','',0,0.000),(33,0,100001,'115954919226747144933','2007231612029051','食品饮料','dd','wap_zfb',5,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595491922,1595491922,'',0,0.000,'','',0,0.000),(34,0,100001,'115954927739462380764','2007231626131005','数码办公','dd','wap_zfb',5,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595492773,1595492774,'',0,0.000,'','',0,0.372),(35,0,100001,'115954928038205789006','2007231626439364','服饰鞋包','dd','wap_zfb',5,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595492803,1595492803,'',0,0.000,'','',0,0.000),(36,0,100001,'115954928130150698296','2007231626524502','化妆品','dd','wap_zfb',5,'[]',299.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595492813,1595492813,'',0,0.000,'','',0,0.000),(37,0,100001,'115954928237015444890','2007231627039310','数码办公','dd','wap_zfb',5,'[]',2991.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595492823,1595492823,'',0,0.000,'','',0,0.000),(38,0,100001,'115954928307262301369','2007231627106286','珠宝','dd','wap_zfb',0,'[]',29921.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595492830,1595492830,'',0,0.000,'','',0,0.000),(39,0,100001,'115954928418162943014','2007231627211162','服饰鞋包','dd','wap_zfb',5,'[]',1111.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595492841,1595492841,'',0,0.000,'','',0,0.000),(40,0,100001,'115954930345432193381','2007231630343188','化妆品','dd','wap_zfb',5,'[]',1111.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595493034,1595493034,'',0,0.000,'','',0,0.000),(41,0,100001,'115954930875537249140','2007231631272780','玩具乐器','dd','wap_zfb',5,'[]',1111.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595493087,1595493087,'',0,0.000,'','',0,0.388),(42,0,100001,'115954936120497147369','2007231640112760','玩具乐器','dd','wap_zfb',5,'[]',2223.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595493612,1595493612,'',0,0.000,'','',0,0.642),(43,0,100001,'115954942343463633892','2007231650344116','玩具乐器','dd','wap_zfb',5,'[]',555.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595494234,1595494234,'',0,0.000,'','',0,0.000),(44,0,100001,'115954942649022681797','2007231651042500','服饰鞋包','dd','wap_zfb',5,'[]',1009.900,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595494264,1595494265,'',0,0.000,'','',0,0.663),(45,0,100001,'115954942888075787583','2007231651286462','电脑配件','dd','wap_zfb',5,'[]',500.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595494288,1595494288,'',0,0.000,'','',0,0.000),(46,0,100001,'115954943034036823588','2007231651434652','食品饮料','dd','wap_zfb',5,'[]',1000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595494303,1595494303,'',0,0.000,'','',0,0.457),(47,0,100001,'115954943136376481462','2007231651532267','珠宝','dd','wap_zfb',5,'[]',1009.900,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595494313,1595494313,'',0,0.000,'','',0,0.000),(48,0,100001,'115954943210657471333','2007231652004660','数码办公','dd','wap_zfb',5,'[]',1009.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595494321,1595494321,'',0,0.000,'','',0,0.392),(49,100061,100059,'5915954944706615838576','2020072316542798415','数码办公','123','wap_zfb',5,'[]',180.400,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595494470,1595494470,'',0,0.000,'','',0,0.000),(50,100061,100059,'5915954944978448808745','2020072316545458280','汽车用品','123','wap_zfb',5,'[]',1800.550,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595494497,1595494498,'',0,0.000,'','',0,0.486),(51,100061,100059,'5915954946192686833514','2020072316565516307','汽车用品','123','wap_zfb',5,'[]',1200.650,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595494619,1595494619,'',0,0.000,'','',0,0.410),(52,0,100001,'115954946527569930668','2007231657329969','汽车用品','dd','wap_zfb',5,'[]',2000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595494652,1595494653,'',0,0.000,'','',0,0.380),(53,0,100001,'115954954626692542610','2007231711024294','数码办公','dd','wap_zfb',5,'[]',1200.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595495462,1595495463,'',0,0.000,'','',0,0.354),(54,0,100001,'115954961189256100540','2007231721583666','服饰鞋包','dd','wap_zfb',5,'[]',1300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595496118,1595496118,'',0,0.000,'','',0,0.000),(55,100061,100059,'5915954961371004980969','2020072317221330588','食品饮料','123','wap_zfb',5,'[]',1300.830,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595496137,1595496137,'',0,0.000,'','',0,0.000),(56,0,100001,'115954963096939718220','2007231725092437','汽车用品','dd','wap_zfb',5,'[]',1500.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595496309,1595496309,'',0,0.000,'','',0,0.000),(57,0,100001,'115954963222810638227','2007231725227114','珠宝','dd','wap_zfb',5,'[]',1100.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595496322,1595496322,'',0,0.000,'','',0,0.000),(58,0,100001,'115954964393559602796','2007231727194740','食品饮料','dd','wap_zfb',5,'[]',1050.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595496439,1595496439,'',0,0.000,'','',0,0.405),(59,0,100001,'115954977536552225178','2007231749139394','汽车用品','dd','wap_zfb',5,'[]',1090.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595497753,1595497754,'',0,0.000,'','',0,0.461),(60,0,100001,'115954984768921653539','2007231801169271','食品饮料','dd','wap_zfb',5,'[]',1110.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595498476,1595498476,'',0,0.000,'','',0,0.000),(61,0,100001,'115954984857968165021','2007231801252727','珠宝','dd','wap_zfb',5,'[]',1110.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595498485,1595498485,'',0,0.000,'','',0,0.000),(62,0,100001,'115954985785882331176','2007231802585850','服饰鞋包','dd','wap_zfb',5,'[]',1210.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595498578,1595498578,'',0,0.000,'','',0,0.345),(63,0,100001,'115955003254024597522','2007231832056658','手表','dd','wap_zfb',5,'[]',1310.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595500325,1595500325,'',0,0.000,'','',0,0.000),(64,0,100001,'115955003367415932549','2007231832167637','数码办公','dd','wap_zfb',5,'[]',1400.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595500336,1595500336,'',0,0.000,'','',0,0.000),(65,100061,100059,'5915955027110625624172','2020072319114843589','化妆品','123','wap_zfb',5,'[]',1100.270,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595502711,1595502711,'',0,0.000,'','',0,0.000),(66,0,100062,'6215955075244120341363','20072320320333014698','服饰鞋包','123','guma_zfb',4,'[]',500.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','http://notity.jfzf888.com/orderreturn/192_200330133814/0/100062','http://notity.jfzf888.com/ordernotity/192_200330133814/0/100062',1,1595507524,1595507524,'',0,0.000,'','',0,0.000),(67,0,100062,'6215955075307154756867','20072320320974114868','手表','123','guma_zfb',4,'[]',1000.000,1000.000,975.000,0.000,25.000,'RMB','192.168.0.1','http://notity.jfzf888.com/orderreturn/192_200330133814/0/100062','http://notity.jfzf888.com/ordernotity/192_200330133814/0/100062',2,1595507530,1595507638,'',0,0.000,'','',0,0.650),(68,0,100001,'115955080108857618938','2007232040101157','数码办公','dd','wap_zfb',5,'[]',1100.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595508010,1595508010,'',0,0.000,'','',0,0.000),(69,0,100062,'20072321084614348084','20072321084614348084','珠宝','123','guma_zfb',4,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','http://notity.jfzf888.com/orderreturn/192_200330133814/0/100062','http://notity.jfzf888.com/ordernotity/192_200330133814/0/100062',1,1595509727,1595509727,'',0,0.000,'','',0,0.000),(70,0,100001,'2007240017271985','2007240017271985','电脑配件','dd','wap_zfb',5,'[]',1000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',1,1595521048,1595521048,'',0,0.000,'','',0,0.533),(71,100061,100059,'2020072400212264105','2020072400212264105','珠宝','123','wap_zfb',5,'[]',1100.780,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595521285,1595521285,'',0,0.000,'','',0,0.403),(72,100061,100059,'2020072400410246601','2020072400410246601','汽车用品','123','wap_zfb',5,'[]',1400.130,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://www.lottery-user.com/api/qianxunpay_notify/index',1,1595522471,1595522471,'',0,0.000,'','',0,0.501),(73,0,100062,'20072408181787520233','20072408181787520233','手表','123','guma_zfb',4,'[]',200.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','http://notity.jfzf888.com/orderreturn/192_200330133814/0/100062','http://notity.jfzf888.com/ordernotity/192_200330133814/0/100062',1,1595549899,1595549899,'',0,0.000,'','',0,0.000),(74,0,100062,'20072408182695470622','20072408182695470622','食品饮料','123','guma_zfb',4,'[]',999.000,999.000,974.025,0.000,24.975,'RMB','192.168.0.1','http://notity.jfzf888.com/orderreturn/192_200330133814/0/100062','http://notity.jfzf888.com/ordernotity/192_200330133814/0/100062',2,1595549908,1595550848,'1',0,0.000,'','',0,0.519),(75,0,100062,'20072412255264816869','20072412255264816869','汽车用品','123','guma_zfb',4,'[]',999.000,999.000,974.025,0.000,24.975,'RMB','192.168.0.1','http://notity.jfzf888.com/orderreturn/192_200330133814/0/100062','http://notity.jfzf888.com/ordernotity/192_200330133814/0/100062',2,1595564753,1595565329,'1',0,0.000,'','',0,0.432),(76,0,100062,'20072412562028120649','20072412562028120649','食品饮料','123','guma_zfb',4,'[]',2308.000,2308.000,2250.300,0.000,57.700,'RMB','192.168.0.1','http://notity.jfzf888.com/orderreturn/192_200330133814/0/100062','http://notity.jfzf888.com/ordernotity/192_200330133814/0/100062',2,1595566581,1595568562,'',0,0.000,'','',0,0.410),(77,100061,100059,'2020072413135547886','2020072413135547886','食品饮料','123','wap_zfb',5,'[]',300.170,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595567637,1595567637,'',0,0.000,'','',0,0.000),(78,100061,100059,'2020072413155317323','2020072413155317323','电脑配件','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595567755,1595567755,'',0,0.000,'','',0,0.000),(79,0,100001,'2007241331371841','2007241331371841','电脑配件','dd','wap_zfb',5,'[]',6000.000,6000.000,6000.000,0.000,0.000,'RMB','192.168.0.1','www.sofastpays.com/test/return.php','www.sofastpays.com/test/notify.php',2,1595568697,1595568749,'1',0,0.000,'','',0,0.477),(80,100061,100059,'2020072414010489572','2020072414010489572','手表','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595570466,1595570701,'',0,0.000,'','',0,0.372),(81,100061,100059,'2020072414425956912','2020072414425956912','食品饮料','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595572980,1595572980,'',0,0.000,'','',0,0.403),(82,100061,100059,'2020072414462131000','2020072414462131000','化妆品','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573182,1595573182,'',0,0.000,'','',0,0.436),(83,100061,100059,'2020072414463690631','2020072414463690631','数码办公','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595573196,1595573995,'',0,0.000,'','',0,0.422),(84,100061,100059,'2020072414471793957','2020072414471793957','服饰鞋包','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595573238,1595573436,'',0,0.000,'','',0,0.488),(85,100061,100059,'2020072414472938519','2020072414472938519','化妆品','123','wap_zfb',5,'[]',400.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573252,1595573252,'',0,0.000,'','',0,0.368),(86,100061,100059,'2020072414475431295','2020072414475431295','化妆品','123','wap_zfb',5,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573276,1595573276,'',0,0.000,'','',0,0.388),(87,100061,100059,'2020072414480721264','2020072414480721264','数码办公','123','wap_zfb',5,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573289,1595573290,'',0,0.000,'','',0,0.426),(88,100061,100059,'2020072414482755370','2020072414482755370','电脑配件','123','wap_zfb',5,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573309,1595573310,'',0,0.000,'','',0,0.366),(89,100061,100059,'2020072414484378970','2020072414484378970','珠宝','123','wap_zfb',5,'[]',8000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573325,1595573325,'',0,0.000,'','',0,0.481),(90,100061,100059,'2020072414485858486','2020072414485858486','电脑配件','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573340,1595573340,'',0,0.000,'','',0,0.448),(91,100061,100059,'2020072414490135453','2020072414490135453','化妆品','123','wap_zfb',5,'[]',500.000,500.000,491.000,0.500,8.500,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595573342,1595573506,'',0,0.000,'','',0,0.471),(92,100061,100059,'2020072414490783675','2020072414490783675','食品饮料','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573349,1595573350,'',0,0.000,'','',0,0.400),(93,100061,100059,'2020072414492048760','2020072414492048760','服饰鞋包','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573363,1595573364,'',0,0.000,'','',0,0.431),(94,100061,100059,'2020072414512024473','2020072414512024473','服饰鞋包','123','wap_zfb',5,'[]',8000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573482,1595573483,'',0,0.000,'','',0,0.423),(95,100061,100059,'2020072414513373350','2020072414513373350','手机通讯','123','wap_zfb',5,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573495,1595573496,'',0,0.000,'','',0,0.557),(96,100061,100059,'2020072414514488336','2020072414514488336','电脑配件','123','wap_zfb',5,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573506,1595573507,'',0,0.000,'','',0,0.477),(97,100061,100059,'2020072414515386070','2020072414515386070','电脑配件','123','wap_zfb',5,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573516,1595573517,'',0,0.000,'','',0,0.437),(98,100061,100059,'2020072414520367849','2020072414520367849','食品饮料','123','wap_zfb',5,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573525,1595573525,'',0,0.000,'','',0,0.000),(99,100061,100059,'2020072414521441447','2020072414521441447','电脑配件','123','wap_zfb',5,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573537,1595573537,'',0,0.000,'','',0,0.000),(100,100061,100059,'2020072414523084388','2020072414523084388','服饰鞋包','123','wap_zfb',5,'[]',2000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573552,1595573553,'',0,0.000,'','',0,0.360),(101,100061,100059,'2020072414523983887','2020072414523983887','玩具乐器','123','wap_zfb',5,'[]',2000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573562,1595573562,'',0,0.000,'','',0,0.504),(102,100061,100059,'2020072414530846192','2020072414530846192','食品饮料','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573589,1595573589,'',0,0.000,'','',0,0.397),(103,100061,100059,'2020072414531162388','2020072414531162388','玩具乐器','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595573592,1595573592,'',0,0.000,'','',0,0.362),(104,100061,100059,'2020072414545345797','2020072414545345797','珠宝','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595573693,1595574967,'',0,0.000,'','',0,0.459),(105,100061,100059,'2020072415144387200','2020072415144387200','玩具乐器','123','wap_zfb',5,'[]',1000.000,1000.000,982.000,1.000,17.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595574884,1595575337,'',0,0.000,'','',0,0.422),(106,100061,100059,'2020072415150717366','2020072415150717366','化妆品','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595574907,1595575055,'',0,0.000,'','',0,1.014),(107,100061,100059,'2020072415212222572','2020072415212222572','珠宝','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595575288,1595575697,'',0,0.000,'','',0,0.411),(108,100061,100059,'2020072415232160667','2020072415232160667','食品饮料','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595575402,1595575621,'',0,0.000,'','',0,0.443),(109,100061,100059,'2020072415250399055','2020072415250399055','数码办公','123','wap_zfb',5,'[]',1000.000,1000.000,982.000,1.000,17.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595575504,1595575682,'',0,0.000,'','',0,0.408),(110,100061,100059,'2020072415271317205','2020072415271317205','手机通讯','123','wap_zfb',5,'[]',1000.000,1000.000,982.000,1.000,17.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595575634,1595575765,'',0,0.000,'','',0,0.399),(111,100061,100059,'2020072415294940111','2020072415294940111','手表','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595575789,1595575984,'',0,0.000,'','',0,0.394),(112,100061,100059,'2020072415335821971','2020072415335821971','汽车用品','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595576039,1595576212,'',0,0.000,'','',0,0.407),(113,100061,100059,'2020072415350552885','2020072415350552885','汽车用品','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595576105,1595576189,'',0,0.000,'','',0,0.419),(114,100061,100059,'2020072415402760910','2020072415402760910','手表','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595576427,1595576427,'',0,0.000,'','',0,0.367),(115,100061,100059,'2020072415420882279','2020072415420882279','服饰鞋包','123','wap_zfb',5,'[]',8000.000,8000.000,7856.000,8.000,136.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595576528,1595576714,'',0,0.000,'','',0,0.447),(116,100061,100059,'2020072415433169650','2020072415433169650','手表','123','wap_zfb',5,'[]',3000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595576613,1595576613,'',0,0.000,'','',0,0.345),(117,100061,100059,'2020072415461734927','2020072415461734927','服饰鞋包','123','wap_zfb',5,'[]',500.000,500.000,491.000,0.500,8.500,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595576777,1595576932,'',0,0.000,'','',0,0.419),(118,100061,100059,'2020072415461730780','2020072415461730780','手表','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595576778,1595576778,'',0,0.000,'','',0,0.427),(119,100061,100059,'2020072415485496525','2020072415485496525','汽车用品','123','wap_zfb',5,'[]',800.000,800.000,785.600,0.800,13.600,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595576934,1595577108,'',0,0.000,'','',0,0.394),(120,100061,100059,'2020072415544154475','2020072415544154475','玩具乐器','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595577282,1595577423,'',0,0.000,'','',0,0.418),(121,100061,100059,'2020072416002568445','2020072416002568445','汽车用品','123','wap_zfb',5,'[]',1000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595577626,1595577626,'',0,0.000,'','',0,0.387),(122,100061,100059,'2020072416005884701','2020072416005884701','手表','123','wap_zfb',5,'[]',1000.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595577659,1595577659,'',0,0.000,'','',0,0.388),(123,100061,100059,'2020072416012592097','2020072416012592097','手机通讯','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595577686,1595577898,'',0,0.000,'','',0,0.460),(124,100061,100059,'2020072416022945479','2020072416022945479','珠宝','123','wap_zfb',5,'[]',2000.000,2000.000,1964.000,2.000,34.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595577749,1595577895,'',0,0.000,'','',0,0.392),(125,100061,100059,'2020072416022860192','2020072416022860192','汽车用品','123','wap_zfb',5,'[]',1000.000,1000.000,982.000,1.000,17.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595577750,1595578188,'',0,0.000,'','',0,0.404),(126,100061,100059,'2020072416023718396','2020072416023718396','手表','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595577757,1595577929,'',0,0.000,'','',0,0.412),(127,100061,100059,'2020072416025260114','2020072416025260114','汽车用品','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595577773,1595577773,'',0,0.000,'','',0,0.458),(128,100061,100059,'2020072416054120223','2020072416054120223','服饰鞋包','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595577941,1595578100,'',0,0.000,'','',0,0.340),(129,100061,100059,'2020072416083422948','2020072416083422948','数码办公','123','wap_zfb',5,'[]',1000.000,1000.000,982.000,1.000,17.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595578114,1595578249,'',0,0.000,'','',0,0.375),(130,100061,100059,'2020072416171224684','2020072416171224684','手机通讯','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595578632,1595578804,'',0,0.000,'','',0,0.443),(131,100061,100059,'2020072416260256125','2020072416260256125','手表','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595579163,1595579281,'',0,0.000,'','',0,0.392),(132,100061,100059,'2020072416273774564','2020072416273774564','电脑配件','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595579258,1595579608,'',0,0.000,'','',0,0.422),(133,100061,100059,'2020072416341435673','2020072416341435673','手机通讯','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595579655,1595580068,'',0,0.000,'','',0,0.420),(134,100061,100059,'2020072416400788374','2020072416400788374','电脑配件','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595580008,1595580166,'',0,0.000,'','',0,0.369),(135,100061,100059,'2020072416414066416','2020072416414066416','汽车用品','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595580101,1595580101,'',0,0.000,'','',0,0.387),(136,100061,100059,'2020072416490945063','2020072416490945063','数码办公','123','wap_zfb',5,'[]',300.000,300.000,294.600,0.300,5.100,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595580550,1595580677,'',0,0.000,'','',0,0.432),(137,100061,100059,'2020072417174178259','2020072417174178259','化妆品','123','wap_zfb',5,'[]',500.000,500.000,491.000,0.500,8.500,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',2,1595582261,1595582492,'',0,0.000,'','',0,0.573),(138,100061,100059,'2020072417245677714','2020072417245677714','珠宝','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595582696,1595582697,'',0,0.000,'','',0,0.381),(139,100061,100059,'2020072417265269919','2020072417265269919','化妆品','123','wap_zfb',5,'[]',300.000,0.000,0.000,0.000,0.000,'RMB','192.168.0.1','https://www.7196yh.com','http://amtyc.ed6ul.com/api/qianxunpay_notify/index',1,1595582812,1595582813,'',0,0.000,'','',0,0.412);
/*!40000 ALTER TABLE `cm_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_orders_notify`
--

DROP TABLE IF EXISTS `cm_orders_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_orders_notify` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `is_status` int(3) unsigned NOT NULL DEFAULT '404',
  `result` varchar(300) NOT NULL DEFAULT '' COMMENT '请求相响应',
  `times` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '请求次数',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COMMENT='交易订单通知表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_orders_notify`
--

LOCK TABLES `cm_orders_notify` WRITE;
/*!40000 ALTER TABLE `cm_orders_notify` DISABLE KEYS */;
INSERT INTO `cm_orders_notify` VALUES (1,74,200,'SUCCESS',3,1595550848,1595550911),(2,75,200,'SUCCESS',0,1595565329,1595565329),(3,79,404,'',3,1595568749,1595568812),(4,80,200,'SUCCESS',0,1595570701,1595570701),(5,84,200,'SUCCESS',0,1595573436,1595573436),(6,91,200,'SUCCESS',0,1595573506,1595573506),(7,83,200,'SUCCESS',0,1595573995,1595573995),(8,104,200,'SUCCESS',0,1595574967,1595574967),(9,106,200,'SUCCESS',0,1595575055,1595575055),(10,105,200,'SUCCESS',0,1595575337,1595575337),(11,108,200,'SUCCESS',0,1595575621,1595575621),(12,109,200,'SUCCESS',0,1595575682,1595575682),(13,107,200,'SUCCESS',0,1595575697,1595575697),(14,110,200,'SUCCESS',0,1595575765,1595575765),(15,111,200,'SUCCESS',0,1595575984,1595575984),(16,113,200,'SUCCESS',0,1595576189,1595576189),(17,112,200,'SUCCESS',0,1595576212,1595576212),(18,115,200,'SUCCESS',0,1595576714,1595576714),(19,117,200,'SUCCESS',0,1595576932,1595576932),(20,119,200,'SUCCESS',0,1595577108,1595577108),(21,120,200,'SUCCESS',0,1595577423,1595577423),(22,124,200,'SUCCESS',0,1595577895,1595577895),(23,123,200,'SUCCESS',0,1595577898,1595577898),(24,126,200,'SUCCESS',0,1595577929,1595577929),(25,128,200,'SUCCESS',0,1595578100,1595578100),(26,125,200,'SUCCESS',0,1595578188,1595578188),(27,129,200,'SUCCESS',0,1595578249,1595578249),(28,130,200,'SUCCESS',0,1595578804,1595578804),(29,131,200,'SUCCESS',0,1595579281,1595579281),(30,132,200,'SUCCESS',0,1595579608,1595579608),(31,133,200,'SUCCESS',0,1595580068,1595580068),(32,134,200,'SUCCESS',0,1595580166,1595580166),(33,136,200,'SUCCESS',0,1595580677,1595580677),(34,137,200,'SUCCESS',0,1595582492,1595582492);
/*!40000 ALTER TABLE `cm_orders_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_ownpay_order`
--

DROP TABLE IF EXISTS `cm_ownpay_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_ownpay_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addTime` int(10) DEFAULT NULL,
  `orderNum` varchar(100) DEFAULT NULL,
  `username` varchar(500) DEFAULT NULL,
  `orderPrice` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `apply_pay_time` int(10) DEFAULT NULL,
  `userid` int(11) DEFAULT '0' COMMENT '上传者用户ｉｄ',
  `storeid` int(10) DEFAULT NULL,
  `storeName` varchar(45) DEFAULT NULL,
  `payTime` int(10) DEFAULT NULL,
  `order_type` int(1) DEFAULT NULL,
  `out_trade_no` varchar(100) DEFAULT NULL,
  `reset_info` varchar(300) DEFAULT NULL,
  `error_times` int(11) DEFAULT '0',
  `pay_type` int(1) DEFAULT NULL COMMENT '支持的支付类型1表示支付宝，２表示微信，３表示支付宝和微信',
  `zfb_qr_image` varchar(100) DEFAULT NULL,
  `zfb_qr_url` varchar(1000) DEFAULT NULL,
  `vx_qr_image` varchar(100) DEFAULT NULL,
  `vx_qr_url` varchar(200) DEFAULT NULL,
  `update_vx_time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `orderNum_UNIQUE` (`orderNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_ownpay_order`
--

LOCK TABLES `cm_ownpay_order` WRITE;
/*!40000 ALTER TABLE `cm_ownpay_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_ownpay_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_pay_account`
--

DROP TABLE IF EXISTS `cm_pay_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_pay_account` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '账号ID',
  `cnl_id` bigint(10) NOT NULL COMMENT '所属渠道ID',
  `co_id` text NOT NULL COMMENT '支持的方式(有多个)',
  `name` varchar(30) NOT NULL COMMENT '渠道账户名称',
  `rate` decimal(4,3) NOT NULL COMMENT '渠道账户费率',
  `urate` decimal(4,3) NOT NULL DEFAULT '0.998',
  `grate` decimal(4,3) NOT NULL DEFAULT '0.998',
  `daily` decimal(12,3) NOT NULL COMMENT '当日限额',
  `single` decimal(12,3) NOT NULL COMMENT '单笔限额',
  `timeslot` text NOT NULL COMMENT '交易时间段',
  `param` text NOT NULL COMMENT '账户配置参数,json字符串',
  `remarks` varchar(128) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '账户状态,0-停止使用,1-开放使用',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `max_deposit_money` decimal(12,3) NOT NULL,
  `min_deposit_money` decimal(12,3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='支付渠道账户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_pay_account`
--

LOCK TABLES `cm_pay_account` WRITE;
/*!40000 ALTER TABLE `cm_pay_account` DISABLE KEYS */;
INSERT INTO `cm_pay_account` VALUES (1,1,'1','钱柜支付宝',0.000,1.000,0.998,10000.000,10000.000,'{\"start\":\"0:0\",\"end\":\"0:0\"}','{\"mch_id\":\"商户支付号\",\"mch_key\":\"商户支付KEY\",\"app_id\":\"商户应用号\",\"app_key\":\"应用KEY\"}','备注',1,1593619831,1594402619,10000.000,0.000),(2,2,'1','支付宝扫码',0.000,1.000,0.998,10000.000,10000.000,'{\"start\":\"00:00:00\",\"end\":\"23:59:59\"}','{\"mch_id\":\"商户支付号\",\"mch_key\":\"商户支付KEY\",\"app_id\":\"商户应用号\",\"app_key\":\"应用KEY\"}','备注',1,1595348245,1595348245,10000.000,0.000),(3,2,'','支付宝转卡',0.000,1.000,0.998,10000.000,10000.000,'{\"start\":\"0:0\",\"end\":\"0:0\"}','{\"mch_id\":\"商户支付号\",\"mch_key\":\"商户支付KEY\",\"app_id\":\"商户应用号\",\"app_key\":\"应用KEY\"}','备注',1,1595348276,1595491801,10000.000,0.000),(4,3,'1','复仇者v2扫码',0.000,1.000,0.998,10000.000,10000.000,'{\"start\":\"00:00:00\",\"end\":\"23:59:59\"}','{\"mch_id\":\"商户支付号\",\"mch_key\":\"商户支付KEY\",\"app_id\":\"商户应用号\",\"app_key\":\"应用KEY\"}','备注',1,1595490861,1595490861,10000.000,0.000),(5,3,'5,3','复仇者v2转卡',0.000,1.000,0.998,10000.000,10000.000,'{\"start\":\"0:0\",\"end\":\"23:59\"}','{\"mch_id\":\"商户支付号\",\"mch_key\":\"商户支付KEY\",\"app_id\":\"商户应用号\",\"app_key\":\"应用KEY\"}','备注',1,1595490884,1595491916,10000.000,0.000);
/*!40000 ALTER TABLE `cm_pay_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_pay_channel`
--

DROP TABLE IF EXISTS `cm_pay_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_pay_channel` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '渠道ID',
  `name` varchar(30) NOT NULL COMMENT '支付渠道名称',
  `action` varchar(30) NOT NULL COMMENT '控制器名称,如:Wxpay用于分发处理支付请求',
  `urate` decimal(4,3) NOT NULL DEFAULT '0.998' COMMENT '默认商户分成',
  `grate` decimal(4,3) NOT NULL DEFAULT '0.998' COMMENT '默认代理分成',
  `timeslot` text NOT NULL COMMENT '交易时间段',
  `return_url` varchar(255) NOT NULL COMMENT '同步地址',
  `notify_url` varchar(255) NOT NULL COMMENT '异步地址',
  `remarks` varchar(128) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '渠道状态,0-停止使用,1-开放使用',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `notify_ips` varchar(445) NOT NULL,
  `ia_allow_notify` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'æ¸ éæ¯å¦åè®¸åè°',
  `channel_fund` decimal(10,3) NOT NULL DEFAULT '0.000' COMMENT '渠道资金',
  `wirhdraw_charge` decimal(10,3) NOT NULL DEFAULT '0.000' COMMENT '提现手续费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='支付渠道表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_pay_channel`
--

LOCK TABLES `cm_pay_channel` WRITE;
/*!40000 ALTER TABLE `cm_pay_channel` DISABLE KEYS */;
INSERT INTO `cm_pay_channel` VALUES (1,'钱柜支付','FeilongPay',1.000,0.998,'{\"start\":\"0:0\",\"end\":\"0:0\"}','http://www.yifutongs.com/test/aa.php','http://www.yifutongs.com/test/xiaoxi.php','1',-1,1593619800,1595347855,'148.72.210.145',1,0.000,0.000),(2,'渠道测试2','FuchouzhePay',1.000,0.998,'{\"start\":\"0:0\",\"end\":\"0:0\"}','http://www.sofastpays.com/api/notify/notify/channel/FuchouzhePay','http://www.sofastpays.com/api/notify/notify/channel/FuchouzhePay','1',0,1595347941,1595583474,'154.213.26.30,154.213.26.30',1,0.000,0.000),(3,'渠道测试1','FuchouzheV2Pay',1.000,0.998,'{\"start\":\"0:0\",\"end\":\"0:0\"}','http://www.sofastpays.com/api/notify/notify/channel/FuchouzheV2Pay','http://www.sofastpays.com/api/notify/notify/channel/FuchouzheV2Pay','1',1,1595490817,1595583460,'198.44.236.106,198.44.236.42,198.44.236.110',1,0.000,0.000);
/*!40000 ALTER TABLE `cm_pay_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_pay_channel_change`
--

DROP TABLE IF EXISTS `cm_pay_channel_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_pay_channel_change` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` mediumint(8) NOT NULL COMMENT '渠道ID',
  `preinc` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '变动前金额',
  `increase` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '增加金额',
  `reduce` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '减少金额',
  `suffixred` decimal(12,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '变动后金额',
  `remarks` varchar(255) NOT NULL COMMENT '资金变动说明',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `is_flat_op` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否后台人工账变',
  `status` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道资金变动记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_pay_channel_change`
--

LOCK TABLES `cm_pay_channel_change` WRITE;
/*!40000 ALTER TABLE `cm_pay_channel_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_pay_channel_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_pay_code`
--

DROP TABLE IF EXISTS `cm_pay_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_pay_code` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '渠道ID',
  `cnl_id` text,
  `name` varchar(30) NOT NULL COMMENT '支付方式名称',
  `code` varchar(30) NOT NULL COMMENT '支付方式代码,如:wx_native,qq_native,ali_qr;',
  `remarks` varchar(128) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '方式状态,0-停止使用,1-开放使用',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `cnl_weight` varchar(255) NOT NULL COMMENT 'å½åpaycodeå¯¹åºæ¸ éæé',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='交易方式表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_pay_code`
--

LOCK TABLES `cm_pay_code` WRITE;
/*!40000 ALTER TABLE `cm_pay_code` DISABLE KEYS */;
INSERT INTO `cm_pay_code` VALUES (9,'','支付宝转卡','ali_to_bank','1',1,1598081241,1598081241,''),(10,'','支付宝扫码','ali_scan','1',1,1598081276,1598081276,''),(11,'','支付宝wap','ali_wap','1',1,1598081306,1598081306,'');
/*!40000 ALTER TABLE `cm_pay_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_shop`
--

DROP TABLE IF EXISTS `cm_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '店铺名称',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '店铺类型',
  `onlinedate` int(11) DEFAULT NULL COMMENT '最后在线时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1在线，2不在线，3停止健康，4停用',
  `password` varchar(45) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_shop`
--

LOCK TABLES `cm_shop` WRITE;
/*!40000 ALTER TABLE `cm_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_transaction`
--

DROP TABLE IF EXISTS `cm_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_transaction` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) DEFAULT NULL COMMENT '商户id',
  `order_no` varchar(80) DEFAULT NULL COMMENT '交易订单号',
  `amount` decimal(12,3) DEFAULT NULL COMMENT '交易金额',
  `platform` tinyint(1) DEFAULT NULL COMMENT '交易平台:1-支付宝,2-微信',
  `platform_number` varchar(200) DEFAULT NULL COMMENT '交易平台交易流水号',
  `status` tinyint(1) DEFAULT NULL COMMENT '交易状态',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `transaction_index` (`order_no`,`platform`,`uid`,`amount`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='交易流水表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_transaction`
--

LOCK TABLES `cm_transaction` WRITE;
/*!40000 ALTER TABLE `cm_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_user`
--

DROP TABLE IF EXISTS `cm_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_user` (
  `uid` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '商户uid',
  `puid` mediumint(8) NOT NULL DEFAULT '0',
  `account` varchar(50) NOT NULL COMMENT '商户邮件',
  `username` varchar(30) NOT NULL COMMENT '商户名称',
  `auth_code` varchar(32) DEFAULT NULL COMMENT '8位安全码，注册时发送跟随邮件',
  `password` varchar(50) NOT NULL COMMENT '商户登录密码',
  `phone` varchar(250) NOT NULL COMMENT '手机号',
  `qq` varchar(250) NOT NULL COMMENT 'QQ',
  `is_agent` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '代理商',
  `is_verify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证账号',
  `is_verify_phone` tinyint(1) NOT NULL DEFAULT '0' COMMENT '验证手机',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '商户状态,0-未激活,1-使用中,2-禁用',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `is_need_google_verify` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'æ¯å¦éè¦googleéªè¯ 0 ä¸éè¦  1 éè¦',
  `google_account` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'æ¯å¦éè¦googleéªè¯ 0 ä¸éè¦  1 éè¦',
  `auth_login_ips` varchar(255) NOT NULL DEFAULT '' COMMENT 'ç»å½é´æip',
  `is_verify_bankaccount` enum('1','0') NOT NULL DEFAULT '0' COMMENT '是否审核银行卡账户',
  `google_secret_key` varchar(100) NOT NULL DEFAULT '0' COMMENT 'googleç§é¥',
  `last_online_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后在线时间',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '·æåç»å½æ¶é´',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `user_name_unique` (`account`,`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100053 DEFAULT CHARSET=utf8mb4 COMMENT='商户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_user`
--

LOCK TABLES `cm_user` WRITE;
/*!40000 ALTER TABLE `cm_user` DISABLE KEYS */;
INSERT INTO `cm_user` VALUES (100001,0,'nouser@iredcap.cn','97139218','8f421396f3ad805ed015b68323a6b2fd','517bfe6cb6c2552398228ae848f44c63','18078687485','702154416',1,1,1,1,1541787044,1598080909,0,0,'','0','',1598081330,1598080716);
/*!40000 ALTER TABLE `cm_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_user_account`
--

DROP TABLE IF EXISTS `cm_user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_user_account` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL COMMENT '商户ID',
  `bank_id` mediumint(8) NOT NULL DEFAULT '1' COMMENT '开户行(关联银行表)',
  `account` varchar(250) NOT NULL COMMENT '开户号',
  `address` varchar(250) NOT NULL COMMENT '开户所在地',
  `remarks` varchar(250) NOT NULL COMMENT '备注',
  `default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '默认账户,0-不默认,1-默认',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `account_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='商户结算账户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_user_account`
--

LOCK TABLES `cm_user_account` WRITE;
/*!40000 ALTER TABLE `cm_user_account` DISABLE KEYS */;
INSERT INTO `cm_user_account` VALUES (1,100047,1,'','','',0,0,1593787342,1593787342,''),(3,100049,1,'','','',0,0,1593791462,1593791462,''),(4,100050,1,'','','',0,0,1593846083,1593846083,''),(5,100051,1,'','','',0,0,1593846214,1593846214,''),(6,100052,1,'','','',0,0,1593846243,1593846243,''),(7,100001,12,'dfadfs','四川','1',0,1,1598080778,1598080778,'小伟');
/*!40000 ALTER TABLE `cm_user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_user_auth`
--

DROP TABLE IF EXISTS `cm_user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_user_auth` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL COMMENT '商户ID',
  `realname` varchar(30) NOT NULL DEFAULT '1' COMMENT '开户行(关联银行表)',
  `sfznum` varchar(18) NOT NULL COMMENT '开户号',
  `card` text NOT NULL COMMENT '认证详情',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='商户认证信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_user_auth`
--

LOCK TABLES `cm_user_auth` WRITE;
/*!40000 ALTER TABLE `cm_user_auth` DISABLE KEYS */;
INSERT INTO `cm_user_auth` VALUES (1,100001,'马大哈','554612198802051515','[\"\\/uploads\\/userauth\\/100001\\/20181122\\/22203963968.jpg\",\"\\/uploads\\/userauth\\/100001\\/20181122\\/22204161001.jpg\"]',2,1542896443,1544365792);
/*!40000 ALTER TABLE `cm_user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_user_daifuprofit`
--

DROP TABLE IF EXISTS `cm_user_daifuprofit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_user_daifuprofit` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL COMMENT '商户ID',
  `service_rate` decimal(4,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '费率',
  `service_charge` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '单笔手续费',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商户代付费率表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_user_daifuprofit`
--

LOCK TABLES `cm_user_daifuprofit` WRITE;
/*!40000 ALTER TABLE `cm_user_daifuprofit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_user_daifuprofit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_user_padmin`
--

DROP TABLE IF EXISTS `cm_user_padmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_user_padmin` (
  `id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL COMMENT '·ID',
  `p_admin_id` mediumint(8) NOT NULL COMMENT 'è·å¹³å°ç®¡çåid',
  `p_admin_appkey` varchar(255) NOT NULL DEFAULT '' COMMENT 'è·å¹³å°çç®¡çåappkeyç§é¥',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1æ­£å¸¸ 0ç¦æ­¢æä½',
  `create_time` int(10) unsigned NOT NULL COMMENT 'å»ºæ¶é´',
  `update_time` int(10) unsigned NOT NULL COMMENT 'æ´æ°æ¶é´',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_user_padmin`
--

LOCK TABLES `cm_user_padmin` WRITE;
/*!40000 ALTER TABLE `cm_user_padmin` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_user_padmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_user_pay_code`
--

DROP TABLE IF EXISTS `cm_user_pay_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_user_pay_code` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL COMMENT '·ID',
  `co_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'æ¯ä»pay_codeä¸»é®ID',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:å¼å¯ 0:å³é­',
  `create_time` int(10) unsigned NOT NULL COMMENT 'å»ºæ¶é´',
  `update_time` int(10) unsigned NOT NULL COMMENT 'æ´æ°æ¶é´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1860 DEFAULT CHARSET=utf8 COMMENT='·æ¯ä»æ¸ éè¡¨å³èpay_code';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_user_pay_code`
--

LOCK TABLES `cm_user_pay_code` WRITE;
/*!40000 ALTER TABLE `cm_user_pay_code` DISABLE KEYS */;
INSERT INTO `cm_user_pay_code` VALUES (1748,100048,8,1,0,0),(1749,100048,7,1,0,0),(1750,100048,6,1,0,0),(1751,100048,5,1,0,0),(1752,100048,4,1,0,0),(1753,100048,3,1,0,0),(1754,100048,2,1,0,0),(1755,100048,1,1,0,0),(1756,100052,8,1,0,0),(1757,100052,7,1,0,0),(1758,100052,6,1,0,0),(1759,100052,5,1,0,0),(1760,100052,4,1,0,0),(1761,100052,3,1,0,0),(1762,100052,2,1,0,0),(1763,100052,1,1,0,0),(1764,100051,8,1,0,0),(1765,100051,7,1,0,0),(1766,100051,6,1,0,0),(1767,100051,5,1,0,0),(1768,100051,4,1,0,0),(1769,100051,3,1,0,0),(1770,100051,2,1,0,0),(1771,100051,1,1,0,0),(1772,100050,8,1,0,0),(1773,100050,7,1,0,0),(1774,100050,6,1,0,0),(1775,100050,5,1,0,0),(1776,100050,4,1,0,0),(1777,100050,3,1,0,0),(1778,100050,2,1,0,0),(1779,100050,1,1,0,0),(1780,100053,8,1,0,0),(1781,100053,7,1,0,0),(1782,100053,6,1,0,0),(1783,100053,5,1,0,0),(1784,100053,4,1,0,0),(1785,100053,3,1,0,0),(1786,100053,2,1,0,0),(1787,100053,1,1,0,0),(1788,100054,8,1,0,0),(1789,100054,7,1,0,0),(1790,100054,6,1,0,0),(1791,100054,5,1,0,0),(1792,100054,4,1,0,0),(1793,100054,3,1,0,0),(1794,100054,2,1,0,0),(1795,100054,1,1,0,0),(1796,100055,8,1,0,0),(1797,100055,7,1,0,0),(1798,100055,6,1,0,0),(1799,100055,5,1,0,0),(1800,100055,4,1,0,0),(1801,100055,3,1,0,0),(1802,100055,2,1,0,0),(1803,100055,1,1,0,0),(1804,100056,8,1,0,0),(1805,100056,7,1,0,0),(1806,100056,6,1,0,0),(1807,100056,5,1,0,0),(1808,100056,4,1,0,0),(1809,100056,3,1,0,0),(1810,100056,2,1,0,0),(1811,100056,1,1,0,0),(1812,100057,8,1,0,0),(1813,100057,7,1,0,0),(1814,100057,6,1,0,0),(1815,100057,5,1,0,0),(1816,100057,4,1,0,0),(1817,100057,3,1,0,0),(1818,100057,2,1,0,0),(1819,100057,1,1,0,0),(1820,100060,8,0,0,0),(1821,100060,7,0,0,0),(1822,100060,6,0,0,0),(1823,100060,5,1,0,0),(1824,100060,4,0,0,0),(1825,100060,3,0,0,0),(1826,100060,2,0,0,0),(1827,100060,1,0,0,0),(1828,100059,8,0,0,0),(1829,100059,7,0,0,0),(1830,100059,6,0,0,0),(1831,100059,5,1,0,0),(1832,100059,4,0,0,0),(1833,100059,3,0,0,0),(1834,100059,2,0,0,0),(1835,100059,1,0,0,0),(1836,100061,8,0,0,0),(1837,100061,7,0,0,0),(1838,100061,6,0,0,0),(1839,100061,5,1,0,0),(1840,100061,4,0,0,0),(1841,100061,3,0,0,0),(1842,100061,2,0,0,0),(1843,100061,1,0,0,0),(1844,100001,8,0,0,0),(1845,100001,7,0,0,0),(1846,100001,6,0,0,0),(1847,100001,5,1,0,0),(1848,100001,4,0,0,0),(1849,100001,3,0,0,0),(1850,100001,2,1,0,0),(1851,100001,1,1,0,0),(1852,100062,8,0,0,0),(1853,100062,7,0,0,0),(1854,100062,6,0,0,0),(1855,100062,5,0,0,0),(1856,100062,4,0,0,0),(1857,100062,3,0,0,0),(1858,100062,2,0,0,0),(1859,100062,1,1,0,0);
/*!40000 ALTER TABLE `cm_user_pay_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_user_pay_code_appoint`
--

DROP TABLE IF EXISTS `cm_user_pay_code_appoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_user_pay_code_appoint` (
  `appoint_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) NOT NULL COMMENT '用户',
  `pay_code_id` int(11) NOT NULL COMMENT '支付代码',
  `cnl_id` int(11) NOT NULL COMMENT '指定渠道',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`appoint_id`),
  KEY `where` (`pay_code_id`,`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_user_pay_code_appoint`
--

LOCK TABLES `cm_user_pay_code_appoint` WRITE;
/*!40000 ALTER TABLE `cm_user_pay_code_appoint` DISABLE KEYS */;
INSERT INTO `cm_user_pay_code_appoint` VALUES (1,100027,28,47,1591188236);
/*!40000 ALTER TABLE `cm_user_pay_code_appoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_user_profit`
--

DROP TABLE IF EXISTS `cm_user_profit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_user_profit` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL COMMENT '商户ID',
  `cnl_id` int(10) unsigned NOT NULL,
  `urate` decimal(4,3) unsigned NOT NULL DEFAULT '0.000',
  `grate` decimal(4,3) unsigned NOT NULL DEFAULT '0.000',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `single_handling_charge` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单笔手续费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3815 DEFAULT CHARSET=utf8mb4 COMMENT='商户分润表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_user_profit`
--

LOCK TABLES `cm_user_profit` WRITE;
/*!40000 ALTER TABLE `cm_user_profit` DISABLE KEYS */;
INSERT INTO `cm_user_profit` VALUES (210,100001,12,0.970,0.998,0,1576137621,1592029729,0.00),(1283,100001,69,0.970,0.998,0,1585902108,1592029744,0.00),(1306,100001,66,0.970,0.998,0,1585902115,1592029751,0.00),(2268,100001,100,0.970,0.998,0,1588683321,1592029686,0.00),(2299,100001,102,0.970,0.998,0,1588686663,1592029699,0.00),(2454,100001,108,0.970,0.998,0,1589100522,1592029796,0.00),(2485,100001,109,0.970,0.998,0,1589120500,1592029790,0.00),(2579,100001,112,0.970,0.998,0,1589715410,1592029722,0.00),(3019,100001,122,0.970,0.998,0,1591343604,1592029509,0.00),(3061,100001,121,0.970,0.998,0,1591343610,1592029520,0.00),(3316,100001,126,0.951,0.998,0,1591867101,1591867101,0.00),(3361,100001,127,0.968,0.998,0,1591883678,1591883678,0.00),(3406,100001,128,0.968,0.998,0,1591883683,1591883684,0.00),(3473,100001,130,0.970,0.998,0,1592316115,1592316115,0.00),(3519,100001,129,0.970,0.998,0,1592316121,1592316121,0.00),(3611,100001,132,0.978,0.998,0,1592706395,1592706395,0.00),(3657,100001,133,0.951,0.998,0,1592724314,1592724314,0.00),(3703,100001,135,0.970,0.998,0,1592856960,1592856960,0.00),(3749,100001,134,0.970,0.998,0,1592856968,1592856968,0.00),(3795,100001,136,0.962,0.998,0,1593159856,1593165005,0.00),(3796,100048,1,0.958,1.000,0,1593790091,1593790091,0.00),(3797,100047,1,0.960,1.000,0,1593790323,1593790323,0.00),(3798,100049,1,0.960,1.000,0,1593791475,1593791475,0.00),(3799,100060,3,0.982,1.000,0,1595349974,1595500584,0.00),(3800,100060,2,0.970,1.000,0,1595349974,1595500584,0.00),(3801,100059,3,0.982,1.000,0,1595349985,1595500565,0.00),(3802,100059,2,0.970,1.000,0,1595349985,1595500565,0.00),(3803,100061,3,0.983,1.000,0,1595350231,1595507139,0.00),(3804,100061,2,0.975,1.000,0,1595350231,1595507139,0.00),(3805,100059,5,0.982,1.000,0,1595500565,1595500565,0.00),(3806,100059,4,0.970,1.000,0,1595500565,1595500565,0.00),(3807,100060,5,0.982,1.000,0,1595500584,1595500584,0.00),(3808,100060,4,0.970,1.000,0,1595500584,1595500584,0.00),(3809,100061,5,0.983,1.000,0,1595500599,1595507139,0.00),(3810,100061,4,0.975,1.000,0,1595500599,1595507139,0.00),(3811,100062,5,0.983,1.000,0,1595507104,1595507104,0.00),(3812,100062,4,0.975,1.000,0,1595507104,1595507104,0.00),(3813,100062,3,0.983,1.000,0,1595507104,1595507104,0.00),(3814,100062,2,0.975,1.000,0,1595507104,1595507104,0.00);
/*!40000 ALTER TABLE `cm_user_profit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-22 20:29:09
