-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: 127.0.0.1    Database: oa_system
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `communistist_people_relationship`
--

DROP TABLE IF EXISTS `communistist_people_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communistist_people_relationship` (
  `cp_relationship_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '党员群众关系id',
  `cp_relationship_com_id` int(10) NOT NULL COMMENT '党员id',
  `cp_relationship_people_id` int(10) NOT NULL COMMENT '群众id',
  PRIMARY KEY (`cp_relationship_id`),
  UNIQUE KEY `cp_relationship_id_UNIQUE` (`cp_relationship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communistist_people_relationship`
--

LOCK TABLES `communistist_people_relationship` WRITE;
/*!40000 ALTER TABLE `communistist_people_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `communistist_people_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_group_info`
--

DROP TABLE IF EXISTS `department_group_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_group_info` (
  `department_group_id` int(10) unsigned NOT NULL COMMENT '部门所属团体id',
  `department_group_name` varchar(20) NOT NULL COMMENT '部门所属团体名称',
  `department_group_grade` int(11) NOT NULL COMMENT '部门所属团体等级',
  PRIMARY KEY (`department_group_id`),
  UNIQUE KEY `department_group_id_UNIQUE` (`department_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_group_info`
--

LOCK TABLES `department_group_info` WRITE;
/*!40000 ALTER TABLE `department_group_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_group_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_info`
--

DROP TABLE IF EXISTS `department_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_info` (
  `department_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `department_name` varchar(20) NOT NULL COMMENT '部门名称',
  `department_num` int(10) NOT NULL COMMENT '部门人数',
  `department_duty` varchar(100) DEFAULT NULL COMMENT '部门职责',
  `department_resource` varchar(45) DEFAULT NULL COMMENT '部门办事资料',
  `department_flow_pic` varchar(50) DEFAULT NULL COMMENT '部门职责流程图',
  `department_parent_id` int(10) NOT NULL COMMENT '上级部门id',
  `department_son_id` varchar(45) NOT NULL COMMENT '下级部门id，存储json字符串',
  `department_leader` varchar(20) NOT NULL COMMENT '部门负责人',
  `department_group_id` int(10) NOT NULL COMMENT '部门所属团体',
  `department_contacter` varchar(20) NOT NULL COMMENT '部门对外联系人',
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `uuid_UNIQUE` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_info`
--

LOCK TABLES `department_info` WRITE;
/*!40000 ALTER TABLE `department_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_position_info`
--

DROP TABLE IF EXISTS `department_position_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_position_info` (
  `department_position_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '职位id',
  `department_position_name` varchar(20) NOT NULL COMMENT '职位名称',
  `department_position_state` int(11) NOT NULL COMMENT '职位的状态 0表示未启用 1表示启用',
  PRIMARY KEY (`department_position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_position_info`
--

LOCK TABLES `department_position_info` WRITE;
/*!40000 ALTER TABLE `department_position_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_position_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_to_department_position_info`
--

DROP TABLE IF EXISTS `department_to_department_position_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_to_department_position_info` (
  `department_position_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '部门职位id',
  `department_position_name` varchar(20) NOT NULL COMMENT '部门名称',
  `department_id` int(10) NOT NULL COMMENT '职位所属部门id',
  PRIMARY KEY (`department_position_id`),
  UNIQUE KEY `department_position_id_UNIQUE` (`department_position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_to_department_position_info`
--

LOCK TABLES `department_to_department_position_info` WRITE;
/*!40000 ALTER TABLE `department_to_department_position_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `department_to_department_position_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_group_class`
--

DROP TABLE IF EXISTS `function_group_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_group_class` (
  `function_group_class_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '功能小组id',
  `function_group_class_name` varchar(20) NOT NULL COMMENT '功能小组分类名称',
  PRIMARY KEY (`function_group_class_id`),
  UNIQUE KEY `function_group_class_id_UNIQUE` (`function_group_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_group_class`
--

LOCK TABLES `function_group_class` WRITE;
/*!40000 ALTER TABLE `function_group_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_group_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_group_info`
--

DROP TABLE IF EXISTS `function_group_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_group_info` (
  `function_group_id` int(10) NOT NULL COMMENT '功能小组id，五类服务小组',
  `function_group_name` varchar(20) NOT NULL COMMENT '功能小组名称',
  `function_group_leader` varchar(20) NOT NULL,
  `function_group_class_id` int(10) NOT NULL COMMENT '功能小组分类id',
  `function_group_member` varchar(200) DEFAULT NULL COMMENT '功能小组成员，存储字符串',
  `function_group_num` int(10) DEFAULT NULL COMMENT '功能小组人数',
  PRIMARY KEY (`function_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_group_info`
--

LOCK TABLES `function_group_info` WRITE;
/*!40000 ALTER TABLE `function_group_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `function_group_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_info`
--

DROP TABLE IF EXISTS `menu_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_info` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `menu_name` varchar(20) NOT NULL COMMENT '菜单名称',
  `menu_url` varchar(30) NOT NULL COMMENT '菜单路径',
  `menu_parent_id` int(10) NOT NULL COMMENT '父级菜单id',
  PRIMARY KEY (`menu_id`),
  UNIQUE KEY `menu_id_UNIQUE` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_info`
--

LOCK TABLES `menu_info` WRITE;
/*!40000 ALTER TABLE `menu_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_info`
--

DROP TABLE IF EXISTS `project_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_info` (
  `project_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '项目id',
  `project_assigner_id` int(10) NOT NULL COMMENT '项目的分配者id',
  `project_receiver_id` int(10) NOT NULL COMMENT '项目的执行者it',
  `project_title` varchar(45) NOT NULL COMMENT '项目的具体名称\n',
  `project_content` varchar(500) NOT NULL COMMENT '项目的具体内容',
  `project_status` int(11) NOT NULL COMMENT '项目的状态 0表示还未开始，1表示分配给下级，2表示下级已提交，3表示正在执行，4表示执行完成 ',
  `project_begin_time` datetime NOT NULL COMMENT '项目的启动时间',
  `project_deadline` datetime NOT NULL COMMENT '项目的截至日期',
  `project_excute_history` varchar(1000) DEFAULT NULL COMMENT '项目的执行历史，包括每个步骤执行人，工作',
  PRIMARY KEY (`project_id`),
  UNIQUE KEY `task_id_UNIQUE` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_info`
--

LOCK TABLES `project_info` WRITE;
/*!40000 ALTER TABLE `project_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_info`
--

DROP TABLE IF EXISTS `role_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_info` (
  `role_id` int(10) unsigned NOT NULL COMMENT '管理角色，不同角色id，对应不同的分区管理权限',
  `role_name` varchar(20) NOT NULL COMMENT '管理角色的具体职能名称',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_id_UNIQUE` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_info`
--

LOCK TABLES `role_info` WRITE;
/*!40000 ALTER TABLE `role_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_menu_relationship_info`
--

DROP TABLE IF EXISTS `role_menu_relationship_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_menu_relationship_info` (
  `role_id` int(10) NOT NULL COMMENT '角色id',
  `menu_id` int(10) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_menu_relationship_info`
--

LOCK TABLES `role_menu_relationship_info` WRITE;
/*!40000 ALTER TABLE `role_menu_relationship_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_menu_relationship_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_contact_relationship`
--

DROP TABLE IF EXISTS `user_contact_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_contact_relationship` (
  `user_relationship_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户关系id',
  `user_relationship_owner_id` int(11) NOT NULL COMMENT '用户关系主方',
  `user_relationship_friend_id` int(11) NOT NULL COMMENT '用户关系客方，好友',
  `user_relationship_group` int(11) NOT NULL COMMENT '用户关系分组\n\n1为市政府\n2为乡镇政府\n3为村政府\n4为村党员\n5为普通群众',
  PRIMARY KEY (`user_relationship_id`),
  UNIQUE KEY `relationship_id_UNIQUE` (`user_relationship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_contact_relationship`
--

LOCK TABLES `user_contact_relationship` WRITE;
/*!40000 ALTER TABLE `user_contact_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contact_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_email` varchar(20) NOT NULL COMMENT '用户邮件',
  `user_realname` varchar(20) NOT NULL COMMENT '用户真实姓名',
  `user_gender` int(11) NOT NULL COMMENT '用户性别 0为男，1为女',
  `department_id` int(11) NOT NULL COMMENT '用户的部门id',
  `user_organization_categroy` int(11) unsigned NOT NULL COMMENT '用户职位\n1为市委\n2为市委常委\n3为市政府\n4为市直职能部门\n5为乡镇办事处党（工）委\n6为乡镇办事处党员领导干部\n7为乡镇办内设机构和基层站所\n8为农村（社区）党组织\n9为农村（社区）党员干部\n10为村民小组（社区网路）\n11为党员功能小组\n12农村（社区）党员',
  `user_birthday` datetime DEFAULT NULL COMMENT '出生年月',
  `user_address` varchar(45) DEFAULT NULL COMMENT '用户地址',
  PRIMARY KEY (`user_id`,`user_email`,`user_realname`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `user_email_UNIQUE` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login_info`
--

DROP TABLE IF EXISTS `user_login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login_info` (
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `user_name` varchar(45) NOT NULL COMMENT '用户名',
  `user_password` varchar(10) NOT NULL COMMENT '用户密码，存储md5格式',
  `user_previledge` int(11) NOT NULL COMMENT '用户权限',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login_info`
--

LOCK TABLES `user_login_info` WRITE;
/*!40000 ALTER TABLE `user_login_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_login_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_message`
--

DROP TABLE IF EXISTS `user_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_message` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户发送信息id',
  `message_sender_id` int(10) NOT NULL COMMENT '用户发送者id',
  `message_category` int(11) NOT NULL COMMENT '1为向下群发，2为向上群发，3为定向群发',
  `message_receivers_id` varchar(45) DEFAULT NULL COMMENT 'json字符串记录接受者id数组',
  `message_content` varchar(500) NOT NULL COMMENT '限制500字消息内容',
  `message_add_time` varchar(45) NOT NULL COMMENT '消息添加时的系统时间',
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_id_UNIQUE` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_message`
--

LOCK TABLES `user_message` WRITE;
/*!40000 ALTER TABLE `user_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_relationship`
--

DROP TABLE IF EXISTS `user_role_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role_relationship` (
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `role_id` int(10) NOT NULL COMMENT '管理角色，不同的管理角色对应不同的菜单管理权限，一人可以承担多个权限',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_relationship`
--

LOCK TABLES `user_role_relationship` WRITE;
/*!40000 ALTER TABLE `user_role_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_record`
--

DROP TABLE IF EXISTS `work_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_record` (
  `work_record_id` int(10) NOT NULL COMMENT '工作记录id',
  `work_record_name` varchar(45) NOT NULL COMMENT '工作记录名称',
  `work_record_add_time` datetime NOT NULL COMMENT '工作记录添加时间',
  `work_record_schedule_time` varchar(45) NOT NULL COMMENT '工作记录日程时间',
  `work_record_people` varchar(50) NOT NULL COMMENT '工作事件参与人员',
  `work_record_location` varchar(30) NOT NULL COMMENT '工作记录事项涉及地点',
  `work_record_detail` varchar(200) NOT NULL COMMENT '工作记录详细内容',
  PRIMARY KEY (`work_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_record`
--

LOCK TABLES `work_record` WRITE;
/*!40000 ALTER TABLE `work_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `work_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-12 10:57:32
