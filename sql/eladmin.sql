-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: eladmin
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `code_column_config`
--

DROP TABLE IF EXISTS `code_column_config`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `code_column_config`
(
    `column_id`       bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `table_name`      varchar(255) DEFAULT NULL,
    `column_name`     varchar(255) DEFAULT NULL,
    `column_type`     varchar(255) DEFAULT NULL,
    `dict_name`       varchar(255) DEFAULT NULL,
    `extra`           varchar(255) DEFAULT NULL,
    `form_show`       bit(1)       DEFAULT NULL,
    `form_type`       varchar(255) DEFAULT NULL,
    `key_type`        varchar(255) DEFAULT NULL,
    `list_show`       bit(1)       DEFAULT NULL,
    `not_null`        bit(1)       DEFAULT NULL,
    `query_type`      varchar(255) DEFAULT NULL,
    `remark`          varchar(255) DEFAULT NULL,
    `date_annotation` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`column_id`) USING BTREE,
    KEY `idx_table_name` (`table_name`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 191
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='代码生成字段信息存储';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code_column_config`
--

LOCK TABLES `code_column_config` WRITE;
/*!40000 ALTER TABLE `code_column_config`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `code_column_config`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code_gen_config`
--

DROP TABLE IF EXISTS `code_gen_config`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `code_gen_config`
(
    `config_id`   bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `table_name`  varchar(255) DEFAULT NULL COMMENT '表名',
    `author`      varchar(255) DEFAULT NULL COMMENT '作者',
    `cover`       bit(1)       DEFAULT NULL COMMENT '是否覆盖',
    `module_name` varchar(255) DEFAULT NULL COMMENT '模块名称',
    `pack`        varchar(255) DEFAULT NULL COMMENT '至于哪个包下',
    `path`        varchar(255) DEFAULT NULL COMMENT '前端代码生成的路径',
    `api_path`    varchar(255) DEFAULT NULL COMMENT '前端Api文件路径',
    `prefix`      varchar(255) DEFAULT NULL COMMENT '表前缀',
    `api_alias`   varchar(255) DEFAULT NULL COMMENT '接口名称',
    PRIMARY KEY (`config_id`) USING BTREE,
    KEY `idx_table_name` (`table_name`(100))
) ENGINE = InnoDB
  AUTO_INCREMENT = 7
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='代码生成器配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code_gen_config`
--

LOCK TABLES `code_gen_config` WRITE;
/*!40000 ALTER TABLE `code_gen_config`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `code_gen_config`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mnt_app`
--

DROP TABLE IF EXISTS `mnt_app`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mnt_app`
(
    `app_id`        bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `name`          varchar(255)  DEFAULT NULL COMMENT '应用名称',
    `upload_path`   varchar(255)  DEFAULT NULL COMMENT '上传目录',
    `deploy_path`   varchar(255)  DEFAULT NULL COMMENT '部署路径',
    `backup_path`   varchar(255)  DEFAULT NULL COMMENT '备份路径',
    `port`          int           DEFAULT NULL COMMENT '应用端口',
    `start_script`  varchar(4000) DEFAULT NULL COMMENT '启动脚本',
    `deploy_script` varchar(4000) DEFAULT NULL COMMENT '部署脚本',
    `create_by`     varchar(255)  DEFAULT NULL COMMENT '创建者',
    `update_by`     varchar(255)  DEFAULT NULL COMMENT '更新者',
    `create_time`   datetime      DEFAULT NULL COMMENT '创建日期',
    `update_time`   datetime      DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`app_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='应用管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mnt_app`
--

LOCK TABLES `mnt_app` WRITE;
/*!40000 ALTER TABLE `mnt_app`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `mnt_app`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mnt_database`
--

DROP TABLE IF EXISTS `mnt_database`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mnt_database`
(
    `db_id`       varchar(50)  NOT NULL COMMENT 'ID',
    `name`        varchar(255) NOT NULL COMMENT '名称',
    `jdbc_url`    varchar(255) NOT NULL COMMENT 'jdbc连接',
    `user_name`   varchar(255) NOT NULL COMMENT '账号',
    `pwd`         varchar(255) NOT NULL COMMENT '密码',
    `create_by`   varchar(255) DEFAULT NULL COMMENT '创建者',
    `update_by`   varchar(255) DEFAULT NULL COMMENT '更新者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`db_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='数据库管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mnt_database`
--

LOCK TABLES `mnt_database` WRITE;
/*!40000 ALTER TABLE `mnt_database`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `mnt_database`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mnt_deploy`
--

DROP TABLE IF EXISTS `mnt_deploy`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mnt_deploy`
(
    `deploy_id`   bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `app_id`      bigint       DEFAULT NULL COMMENT '应用编号',
    `create_by`   varchar(255) DEFAULT NULL COMMENT '创建者',
    `update_by`   varchar(255) DEFAULT NULL COMMENT '更新者',
    `create_time` datetime     DEFAULT NULL,
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`deploy_id`) USING BTREE,
    KEY `FK6sy157pseoxx4fmcqr1vnvvhy` (`app_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='部署管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mnt_deploy`
--

LOCK TABLES `mnt_deploy` WRITE;
/*!40000 ALTER TABLE `mnt_deploy`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `mnt_deploy`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mnt_deploy_history`
--

DROP TABLE IF EXISTS `mnt_deploy_history`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mnt_deploy_history`
(
    `history_id`  varchar(50)  NOT NULL COMMENT 'ID',
    `app_name`    varchar(255) NOT NULL COMMENT '应用名称',
    `deploy_date` datetime     NOT NULL COMMENT '部署日期',
    `deploy_user` varchar(50)  NOT NULL COMMENT '部署用户',
    `ip`          varchar(20)  NOT NULL COMMENT '服务器IP',
    `deploy_id`   bigint DEFAULT NULL COMMENT '部署编号',
    PRIMARY KEY (`history_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='部署历史管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mnt_deploy_history`
--

LOCK TABLES `mnt_deploy_history` WRITE;
/*!40000 ALTER TABLE `mnt_deploy_history`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `mnt_deploy_history`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mnt_deploy_server`
--

DROP TABLE IF EXISTS `mnt_deploy_server`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mnt_deploy_server`
(
    `deploy_id` bigint NOT NULL COMMENT '部署ID',
    `server_id` bigint NOT NULL COMMENT '服务ID',
    PRIMARY KEY (`deploy_id`, `server_id`) USING BTREE,
    KEY `FKeaaha7jew9a02b3bk9ghols53` (`server_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='应用与服务器关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mnt_deploy_server`
--

LOCK TABLES `mnt_deploy_server` WRITE;
/*!40000 ALTER TABLE `mnt_deploy_server`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `mnt_deploy_server`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mnt_server`
--

DROP TABLE IF EXISTS `mnt_server`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mnt_server`
(
    `server_id`   bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `account`     varchar(50)  DEFAULT NULL COMMENT '账号',
    `ip`          varchar(20)  DEFAULT NULL COMMENT 'IP地址',
    `name`        varchar(100) DEFAULT NULL COMMENT '名称',
    `password`    varchar(100) DEFAULT NULL COMMENT '密码',
    `port`        int          DEFAULT NULL COMMENT '端口',
    `create_by`   varchar(255) DEFAULT NULL COMMENT '创建者',
    `update_by`   varchar(255) DEFAULT NULL COMMENT '更新者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`server_id`) USING BTREE,
    KEY `idx_ip` (`ip`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='服务器管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mnt_server`
--

LOCK TABLES `mnt_server` WRITE;
/*!40000 ALTER TABLE `mnt_server`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `mnt_server`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept`
(
    `dept_id`     bigint       NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `pid`         bigint       DEFAULT NULL COMMENT '上级部门',
    `sub_count`   int          DEFAULT '0' COMMENT '子部门数目',
    `name`        varchar(255) NOT NULL COMMENT '名称',
    `dept_sort`   int          DEFAULT '999' COMMENT '排序',
    `enabled`     bit(1)       NOT NULL COMMENT '状态',
    `create_by`   varchar(255) DEFAULT NULL COMMENT '创建者',
    `update_by`   varchar(255) DEFAULT NULL COMMENT '更新者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建日期',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`dept_id`) USING BTREE,
    KEY `inx_pid` (`pid`),
    KEY `inx_enabled` (`enabled`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 18
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='部门';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept`
    DISABLE KEYS */;
INSERT INTO `sys_dept`
VALUES (2, 7, 1, '研发部', 3, _binary '', 'admin', 'admin', '2019-03-25 09:15:32', '2020-08-02 14:48:47'),
       (5, 7, 0, '运维部', 4, _binary '', 'admin', 'admin', '2019-03-25 09:20:44', '2020-05-17 14:27:27'),
       (6, 8, 0, '测试部', 6, _binary '', 'admin', 'admin', '2019-03-25 09:52:18', '2020-06-08 11:59:21'),
       (7, NULL, 2, '华南分部', 0, _binary '', 'admin', 'admin', '2019-03-25 11:04:50', '2020-06-08 12:08:56'),
       (8, NULL, 2, '华北分部', 1, _binary '', 'admin', 'admin', '2019-03-25 11:04:53', '2020-05-14 12:54:00'),
       (15, 8, 0, 'UI部门', 7, _binary '', 'admin', 'admin', '2020-05-13 22:56:53', '2020-05-14 12:54:13'),
       (17, 2, 0, '研发一组', 999, _binary '', 'admin', 'admin', '2020-08-02 14:49:07', '2020-08-02 14:49:07');
/*!40000 ALTER TABLE `sys_dept`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict`
(
    `dict_id`     bigint       NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `name`        varchar(255) NOT NULL COMMENT '字典名称',
    `description` varchar(255) DEFAULT NULL COMMENT '描述',
    `create_by`   varchar(255) DEFAULT NULL COMMENT '创建者',
    `update_by`   varchar(255) DEFAULT NULL COMMENT '更新者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建日期',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='数据字典';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict`
    DISABLE KEYS */;
INSERT INTO `sys_dict`
VALUES (1, 'user_status', '用户状态', NULL, NULL, '2019-10-27 20:31:36', NULL),
       (4, 'dept_status', '部门状态', NULL, NULL, '2019-10-27 20:31:36', NULL),
       (5, 'job_status', '岗位状态', NULL, NULL, '2019-10-27 20:31:36', NULL);
/*!40000 ALTER TABLE `sys_dict`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_detail`
--

DROP TABLE IF EXISTS `sys_dict_detail`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_detail`
(
    `detail_id`   bigint       NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `dict_id`     bigint       DEFAULT NULL COMMENT '字典id',
    `label`       varchar(255) NOT NULL COMMENT '字典标签',
    `value`       varchar(255) NOT NULL COMMENT '字典值',
    `dict_sort`   int          DEFAULT NULL COMMENT '排序',
    `create_by`   varchar(255) DEFAULT NULL COMMENT '创建者',
    `update_by`   varchar(255) DEFAULT NULL COMMENT '更新者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建日期',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`detail_id`) USING BTREE,
    KEY `FK5tpkputc6d9nboxojdbgnpmyb` (`dict_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 7
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='数据字典详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_detail`
--

LOCK TABLES `sys_dict_detail` WRITE;
/*!40000 ALTER TABLE `sys_dict_detail`
    DISABLE KEYS */;
INSERT INTO `sys_dict_detail`
VALUES (1, 1, '激活', 'true', 1, NULL, NULL, '2019-10-27 20:31:36', NULL),
       (2, 1, '禁用', 'false', 2, NULL, NULL, NULL, NULL),
       (3, 4, '启用', 'true', 1, NULL, NULL, NULL, NULL),
       (4, 4, '停用', 'false', 2, NULL, NULL, '2019-10-27 20:31:36', NULL),
       (5, 5, '启用', 'true', 1, NULL, NULL, NULL, NULL),
       (6, 5, '停用', 'false', 2, NULL, NULL, '2019-10-27 20:31:36', NULL);
/*!40000 ALTER TABLE `sys_dict_detail`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job`
(
    `job_id`      bigint       NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `name`        varchar(255) NOT NULL COMMENT '岗位名称',
    `enabled`     bit(1)       NOT NULL COMMENT '岗位状态',
    `job_sort`    int          DEFAULT NULL COMMENT '排序',
    `create_by`   varchar(255) DEFAULT NULL COMMENT '创建者',
    `update_by`   varchar(255) DEFAULT NULL COMMENT '更新者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建日期',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`job_id`) USING BTREE,
    UNIQUE KEY `uniq_name` (`name`),
    KEY `inx_enabled` (`enabled`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 13
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='岗位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job`
    DISABLE KEYS */;
INSERT INTO `sys_job`
VALUES (8, '人事专员', _binary '', 3, NULL, NULL, '2019-03-29 14:52:28', NULL),
       (10, '产品经理', _binary '', 4, NULL, NULL, '2019-03-29 14:55:51', NULL),
       (11, '全栈开发', _binary '', 2, NULL, 'admin', '2019-03-31 13:39:30', '2020-05-05 11:33:43'),
       (12, '软件测试', _binary '', 5, NULL, 'admin', '2019-03-31 13:39:43', '2020-05-10 19:56:26');
/*!40000 ALTER TABLE `sys_job`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_log`
(
    `log_id`           bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `description`      varchar(255) DEFAULT NULL,
    `log_type`         varchar(255) DEFAULT NULL,
    `method`           varchar(255) DEFAULT NULL,
    `params`           text,
    `request_ip`       varchar(255) DEFAULT NULL,
    `time`             bigint       DEFAULT NULL,
    `username`         varchar(255) DEFAULT NULL,
    `address`          varchar(255) DEFAULT NULL,
    `browser`          varchar(255) DEFAULT NULL,
    `exception_detail` text,
    `create_time`      datetime     DEFAULT NULL,
    PRIMARY KEY (`log_id`) USING BTREE,
    KEY `log_create_time_index` (`create_time`),
    KEY `inx_log_type` (`log_type`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3549
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log`
    DISABLE KEYS */;
INSERT INTO `sys_log`
VALUES (3537, '修改用户：个人中心', 'INFO', 'com.tyrantqiao.modules.system.rest.UserController.center()',
        '{\"gender\":\"男\",\"nickName\":\"tyrantqiao\",\"isAdmin\":false,\"phone\":\"18689311420\",\"id\":1}',
        '172.20.80.1', 193, 'admin', '内网IP', 'Chrome 8', NULL, '2021-04-18 09:25:20'),
       (3538, '修改用户：个人中心', 'INFO', 'com.tyrantqiao.modules.system.rest.UserController.center()',
        '{\"gender\":\"男\",\"nickName\":\"tyrantqiao\",\"isAdmin\":false,\"phone\":\"18689311420\",\"id\":1}',
        '172.20.80.1', 72, 'admin', '内网IP', 'Chrome 8', NULL, '2021-04-18 09:26:21'),
       (3539, '修改用户', 'INFO', 'com.tyrantqiao.modules.system.rest.UserController.update()',
        '{\"gender\":\"男\",\"nickName\":\"tyrantqiao\",\"roles\":[],\"jobs\":[{\"updateTime\":1588649623000,\"enabled\":true,\"jobSort\":2,\"updateBy\":\"admin\",\"createTime\":1554010770000,\"name\":\"全栈开发\",\"id\":11}],\"avatarPath\":\"C:\\\\eladmin\\\\avatar\\\\avatar-20210418092526269.png\",\"updateTime\":1618709126000,\"dept\":{\"subCount\":0,\"name\":\"研发部\",\"id\":2},\"isAdmin\":false,\"enabled\":true,\"avatarName\":\"avatar-20210418092526269.png\",\"phone\":\"18689311420\",\"pwdResetTime\":1618709194000,\"createTime\":1534986716000,\"id\":1,\"email\":\"tyrantqiao@qq.com\",\"username\":\"admin\"}',
        '172.20.80.1', 255, 'admin', '内网IP', 'Chrome 8', NULL, '2021-04-18 09:27:54'),
       (3540, '删除用户', 'INFO', 'com.tyrantqiao.modules.system.rest.UserController.delete()', '[2]', '172.20.80.1', 176,
        'admin', '内网IP', 'Chrome 8', NULL, '2021-04-18 09:28:02'),
       (3541, '新增菜单', 'INFO', 'com.tyrantqiao.modules.system.rest.MenuController.create()',
        '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"doc\",\"updateTime\":1618709449915,\"title\":\"乔的博客\",\"type\":1,\"subCount\":0,\"path\":\"https://tyrantqiao.com\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1618709449915,\"iFrame\":true,\"id\":118,\"menuSort\":999}',
        '172.20.80.1', 83, 'admin', '内网IP', 'Chrome 8', NULL, '2021-04-18 09:30:50'),
       (3542, '修改菜单', 'INFO', 'com.tyrantqiao.modules.system.rest.MenuController.update()',
        '{\"cache\":true,\"hidden\":false,\"roles\":[],\"icon\":\"doc\",\"updateTime\":1618709450000,\"title\":\"乔的博客\",\"type\":1,\"subCount\":0,\"path\":\"https://tyrantqiao.com\",\"createBy\":\"admin\",\"createTime\":1618709450000,\"iFrame\":true,\"id\":118,\"menuSort\":999}',
        '172.20.80.1', 103, 'admin', '内网IP', 'Chrome 8', NULL, '2021-04-18 09:31:05'),
       (3543, '修改角色菜单', 'INFO', 'com.tyrantqiao.modules.system.rest.RoleController.updateMenu()',
        '{\"level\":3,\"dataScope\":\"本级\",\"id\":1,\"menus\":[{\"subCount\":0,\"id\":97,\"menuSort\":999},{\"subCount\":0,\"id\":98,\"menuSort\":999},{\"subCount\":0,\"id\":102,\"menuSort\":999},{\"subCount\":0,\"id\":103,\"menuSort\":999},{\"subCount\":0,\"id\":104,\"menuSort\":999},{\"subCount\":0,\"id\":105,\"menuSort\":999},{\"subCount\":0,\"id\":106,\"menuSort\":999},{\"subCount\":0,\"id\":107,\"menuSort\":999},{\"subCount\":0,\"id\":108,\"menuSort\":999},{\"subCount\":0,\"id\":109,\"menuSort\":999},{\"subCount\":0,\"id\":110,\"menuSort\":999},{\"subCount\":0,\"id\":111,\"menuSort\":999},{\"subCount\":0,\"id\":112,\"menuSort\":999},{\"subCount\":0,\"id\":113,\"menuSort\":999},{\"subCount\":0,\"id\":114,\"menuSort\":999},{\"subCount\":0,\"id\":116,\"menuSort\":999},{\"subCount\":0,\"id\":118,\"menuSort\":999},{\"subCount\":0,\"id\":1,\"menuSort\":999},{\"subCount\":0,\"id\":2,\"menuSort\":999},{\"subCount\":0,\"id\":3,\"menuSort\":999},{\"subCount\":0,\"id\":5,\"menuSort\":999},{\"subCount\":0,\"id\":6,\"menuSort\":999},{\"subCount\":0,\"id\":7,\"menuSort\":999},{\"subCount\":0,\"id\":9,\"menuSort\":999},{\"subCount\":0,\"id\":10,\"menuSort\":999},{\"subCount\":0,\"id\":11,\"menuSort\":999},{\"subCount\":0,\"id\":14,\"menuSort\":999},{\"subCount\":0,\"id\":15,\"menuSort\":999},{\"subCount\":0,\"id\":18,\"menuSort\":999},{\"subCount\":0,\"id\":19,\"menuSort\":999},{\"subCount\":0,\"id\":21,\"menuSort\":999},{\"subCount\":0,\"id\":22,\"menuSort\":999},{\"subCount\":0,\"id\":23,\"menuSort\":999},{\"subCount\":0,\"id\":24,\"menuSort\":999},{\"subCount\":0,\"id\":27,\"menuSort\":999},{\"subCount\":0,\"id\":28,\"menuSort\":999},{\"subCount\":0,\"id\":30,\"menuSort\":999},{\"subCount\":0,\"id\":32,\"menuSort\":999},{\"subCount\":0,\"id\":33,\"menuSort\":999},{\"subCount\":0,\"id\":34,\"menuSort\":999},{\"subCount\":0,\"id\":35,\"menuSort\":999},{\"subCount\":0,\"id\":36,\"menuSort\":999},{\"subCount\":0,\"id\":37,\"menuSort\":999},{\"subCount\":0,\"id\":38,\"menuSort\":999},{\"subCount\":0,\"id\":39,\"menuSort\":999},{\"subCount\":0,\"id\":41,\"menuSort\":999},{\"subCount\":0,\"id\":44,\"menuSort\":999},{\"subCount\":0,\"id\":45,\"menuSort\":999},{\"subCount\":0,\"id\":46,\"menuSort\":999},{\"subCount\":0,\"id\":48,\"menuSort\":999},{\"subCount\":0,\"id\":49,\"menuSort\":999},{\"subCount\":0,\"id\":50,\"menuSort\":999},{\"subCount\":0,\"id\":52,\"menuSort\":999},{\"subCount\":0,\"id\":53,\"menuSort\":999},{\"subCount\":0,\"id\":54,\"menuSort\":999},{\"subCount\":0,\"id\":56,\"menuSort\":999},{\"subCount\":0,\"id\":57,\"menuSort\":999},{\"subCount\":0,\"id\":58,\"menuSort\":999},{\"subCount\":0,\"id\":60,\"menuSort\":999},{\"subCount\":0,\"id\":61,\"menuSort\":999},{\"subCount\":0,\"id\":62,\"menuSort\":999},{\"subCount\":0,\"id\":64,\"menuSort\":999},{\"subCount\":0,\"id\":65,\"menuSort\":999},{\"subCount\":0,\"id\":66,\"menuSort\":999},{\"subCount\":0,\"id\":73,\"menuSort\":999},{\"subCount\":0,\"id\":74,\"menuSort\":999},{\"subCount\":0,\"id\":75,\"menuSort\":999},{\"subCount\":0,\"id\":77,\"menuSort\":999},{\"subCount\":0,\"id\":78,\"menuSort\":999},{\"subCount\":0,\"id\":79,\"menuSort\":999},{\"subCount\":0,\"id\":80,\"menuSort\":999},{\"subCount\":0,\"id\":82,\"menuSort\":999},{\"subCount\":0,\"id\":83,\"menuSort\":999},{\"subCount\":0,\"id\":90,\"menuSort\":999},{\"subCount\":0,\"id\":92,\"menuSort\":999},{\"subCount\":0,\"id\":93,\"menuSort\":999},{\"subCount\":0,\"id\":94,\"menuSort\":999}]}',
        '172.20.80.1', 528, 'admin', '内网IP', 'Chrome 8', NULL, '2021-04-18 09:31:27'),
       (3544, '修改角色菜单', 'INFO', 'com.tyrantqiao.modules.system.rest.RoleController.updateMenu()',
        '{\"level\":3,\"dataScope\":\"本级\",\"id\":2,\"menus\":[{\"subCount\":0,\"id\":33,\"menuSort\":999},{\"subCount\":0,\"id\":34,\"menuSort\":999},{\"subCount\":0,\"id\":36,\"menuSort\":999},{\"subCount\":0,\"id\":116,\"menuSort\":999},{\"subCount\":0,\"id\":118,\"menuSort\":999},{\"subCount\":0,\"id\":1,\"menuSort\":999},{\"subCount\":0,\"id\":2,\"menuSort\":999},{\"subCount\":0,\"id\":6,\"menuSort\":999},{\"subCount\":0,\"id\":7,\"menuSort\":999},{\"subCount\":0,\"id\":9,\"menuSort\":999},{\"subCount\":0,\"id\":10,\"menuSort\":999},{\"subCount\":0,\"id\":11,\"menuSort\":999},{\"subCount\":0,\"id\":14,\"menuSort\":999},{\"subCount\":0,\"id\":15,\"menuSort\":999},{\"subCount\":0,\"id\":80,\"menuSort\":999},{\"subCount\":0,\"id\":82,\"menuSort\":999},{\"subCount\":0,\"id\":19,\"menuSort\":999},{\"subCount\":0,\"id\":83,\"menuSort\":999},{\"subCount\":0,\"id\":21,\"menuSort\":999},{\"subCount\":0,\"id\":22,\"menuSort\":999},{\"subCount\":0,\"id\":23,\"menuSort\":999},{\"subCount\":0,\"id\":24,\"menuSort\":999},{\"subCount\":0,\"id\":27,\"menuSort\":999},{\"subCount\":0,\"id\":30,\"menuSort\":999},{\"subCount\":0,\"id\":32,\"menuSort\":999}]}',
        '172.20.80.1', 194, 'admin', '内网IP', 'Chrome 8', NULL, '2021-04-18 09:31:31'),
       (3545, '新增菜单', 'INFO', 'com.tyrantqiao.modules.system.rest.MenuController.create()',
        '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"source\",\"updateTime\":1618709614765,\"title\":\"jarvis\",\"type\":0,\"subCount\":0,\"path\":\"jarvis\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1618709614765,\"iFrame\":false,\"id\":119,\"menuSort\":999}',
        '172.20.80.1', 74, 'admin', '内网IP', 'Chrome 8', NULL, '2021-04-18 09:33:35'),
       (3546, '新增菜单', 'INFO', 'com.tyrantqiao.modules.system.rest.MenuController.create()',
        '{\"cache\":true,\"hidden\":false,\"roles\":[],\"icon\":\"timing\",\"pid\":119,\"updateTime\":1618709723814,\"title\":\"记忆曲线\",\"type\":1,\"subCount\":0,\"path\":\"todo\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1618709723814,\"iFrame\":false,\"id\":120,\"componentName\":\"todo\",\"menuSort\":999}',
        '172.20.80.1', 89, 'admin', '内网IP', 'Chrome 8', NULL, '2021-04-18 09:35:24'),
       (3547, '修改角色菜单', 'INFO', 'com.tyrantqiao.modules.system.rest.RoleController.updateMenu()',
        '{\"level\":3,\"dataScope\":\"本级\",\"id\":1,\"menus\":[{\"subCount\":0,\"id\":97,\"menuSort\":999},{\"subCount\":0,\"id\":98,\"menuSort\":999},{\"subCount\":0,\"id\":102,\"menuSort\":999},{\"subCount\":0,\"id\":103,\"menuSort\":999},{\"subCount\":0,\"id\":104,\"menuSort\":999},{\"subCount\":0,\"id\":105,\"menuSort\":999},{\"subCount\":0,\"id\":106,\"menuSort\":999},{\"subCount\":0,\"id\":107,\"menuSort\":999},{\"subCount\":0,\"id\":108,\"menuSort\":999},{\"subCount\":0,\"id\":109,\"menuSort\":999},{\"subCount\":0,\"id\":110,\"menuSort\":999},{\"subCount\":0,\"id\":111,\"menuSort\":999},{\"subCount\":0,\"id\":112,\"menuSort\":999},{\"subCount\":0,\"id\":113,\"menuSort\":999},{\"subCount\":0,\"id\":114,\"menuSort\":999},{\"subCount\":0,\"id\":116,\"menuSort\":999},{\"subCount\":0,\"id\":118,\"menuSort\":999},{\"subCount\":0,\"id\":119,\"menuSort\":999},{\"subCount\":0,\"id\":120,\"menuSort\":999},{\"subCount\":0,\"id\":1,\"menuSort\":999},{\"subCount\":0,\"id\":2,\"menuSort\":999},{\"subCount\":0,\"id\":3,\"menuSort\":999},{\"subCount\":0,\"id\":5,\"menuSort\":999},{\"subCount\":0,\"id\":6,\"menuSort\":999},{\"subCount\":0,\"id\":7,\"menuSort\":999},{\"subCount\":0,\"id\":9,\"menuSort\":999},{\"subCount\":0,\"id\":10,\"menuSort\":999},{\"subCount\":0,\"id\":11,\"menuSort\":999},{\"subCount\":0,\"id\":14,\"menuSort\":999},{\"subCount\":0,\"id\":15,\"menuSort\":999},{\"subCount\":0,\"id\":18,\"menuSort\":999},{\"subCount\":0,\"id\":19,\"menuSort\":999},{\"subCount\":0,\"id\":21,\"menuSort\":999},{\"subCount\":0,\"id\":22,\"menuSort\":999},{\"subCount\":0,\"id\":23,\"menuSort\":999},{\"subCount\":0,\"id\":24,\"menuSort\":999},{\"subCount\":0,\"id\":27,\"menuSort\":999},{\"subCount\":0,\"id\":28,\"menuSort\":999},{\"subCount\":0,\"id\":30,\"menuSort\":999},{\"subCount\":0,\"id\":32,\"menuSort\":999},{\"subCount\":0,\"id\":33,\"menuSort\":999},{\"subCount\":0,\"id\":34,\"menuSort\":999},{\"subCount\":0,\"id\":35,\"menuSort\":999},{\"subCount\":0,\"id\":36,\"menuSort\":999},{\"subCount\":0,\"id\":37,\"menuSort\":999},{\"subCount\":0,\"id\":38,\"menuSort\":999},{\"subCount\":0,\"id\":39,\"menuSort\":999},{\"subCount\":0,\"id\":41,\"menuSort\":999},{\"subCount\":0,\"id\":44,\"menuSort\":999},{\"subCount\":0,\"id\":45,\"menuSort\":999},{\"subCount\":0,\"id\":46,\"menuSort\":999},{\"subCount\":0,\"id\":48,\"menuSort\":999},{\"subCount\":0,\"id\":49,\"menuSort\":999},{\"subCount\":0,\"id\":50,\"menuSort\":999},{\"subCount\":0,\"id\":52,\"menuSort\":999},{\"subCount\":0,\"id\":53,\"menuSort\":999},{\"subCount\":0,\"id\":54,\"menuSort\":999},{\"subCount\":0,\"id\":56,\"menuSort\":999},{\"subCount\":0,\"id\":57,\"menuSort\":999},{\"subCount\":0,\"id\":58,\"menuSort\":999},{\"subCount\":0,\"id\":60,\"menuSort\":999},{\"subCount\":0,\"id\":61,\"menuSort\":999},{\"subCount\":0,\"id\":62,\"menuSort\":999},{\"subCount\":0,\"id\":64,\"menuSort\":999},{\"subCount\":0,\"id\":65,\"menuSort\":999},{\"subCount\":0,\"id\":66,\"menuSort\":999},{\"subCount\":0,\"id\":73,\"menuSort\":999},{\"subCount\":0,\"id\":74,\"menuSort\":999},{\"subCount\":0,\"id\":75,\"menuSort\":999},{\"subCount\":0,\"id\":77,\"menuSort\":999},{\"subCount\":0,\"id\":78,\"menuSort\":999},{\"subCount\":0,\"id\":79,\"menuSort\":999},{\"subCount\":0,\"id\":80,\"menuSort\":999},{\"subCount\":0,\"id\":82,\"menuSort\":999},{\"subCount\":0,\"id\":83,\"menuSort\":999},{\"subCount\":0,\"id\":90,\"menuSort\":999},{\"subCount\":0,\"id\":92,\"menuSort\":999},{\"subCount\":0,\"id\":93,\"menuSort\":999},{\"subCount\":0,\"id\":94,\"menuSort\":999}]}',
        '172.20.80.1', 319, 'admin', '内网IP', 'Chrome 8', NULL, '2021-04-18 09:35:34'),
       (3548, '修改角色菜单', 'INFO', 'com.tyrantqiao.modules.system.rest.RoleController.updateMenu()',
        '{\"level\":3,\"dataScope\":\"本级\",\"id\":2,\"menus\":[{\"subCount\":0,\"id\":33,\"menuSort\":999},{\"subCount\":0,\"id\":34,\"menuSort\":999},{\"subCount\":0,\"id\":36,\"menuSort\":999},{\"subCount\":0,\"id\":116,\"menuSort\":999},{\"subCount\":0,\"id\":118,\"menuSort\":999},{\"subCount\":0,\"id\":119,\"menuSort\":999},{\"subCount\":0,\"id\":120,\"menuSort\":999},{\"subCount\":0,\"id\":1,\"menuSort\":999},{\"subCount\":0,\"id\":2,\"menuSort\":999},{\"subCount\":0,\"id\":6,\"menuSort\":999},{\"subCount\":0,\"id\":7,\"menuSort\":999},{\"subCount\":0,\"id\":9,\"menuSort\":999},{\"subCount\":0,\"id\":10,\"menuSort\":999},{\"subCount\":0,\"id\":11,\"menuSort\":999},{\"subCount\":0,\"id\":14,\"menuSort\":999},{\"subCount\":0,\"id\":15,\"menuSort\":999},{\"subCount\":0,\"id\":80,\"menuSort\":999},{\"subCount\":0,\"id\":82,\"menuSort\":999},{\"subCount\":0,\"id\":19,\"menuSort\":999},{\"subCount\":0,\"id\":83,\"menuSort\":999},{\"subCount\":0,\"id\":21,\"menuSort\":999},{\"subCount\":0,\"id\":22,\"menuSort\":999},{\"subCount\":0,\"id\":23,\"menuSort\":999},{\"subCount\":0,\"id\":24,\"menuSort\":999},{\"subCount\":0,\"id\":27,\"menuSort\":999},{\"subCount\":0,\"id\":30,\"menuSort\":999},{\"subCount\":0,\"id\":32,\"menuSort\":999}]}',
        '172.20.80.1', 175, 'admin', '内网IP', 'Chrome 8', NULL, '2021-04-18 09:35:36');
/*!40000 ALTER TABLE `sys_log`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu`
(
    `menu_id`     bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `pid`         bigint       DEFAULT NULL COMMENT '上级菜单ID',
    `sub_count`   int          DEFAULT '0' COMMENT '子菜单数目',
    `type`        int          DEFAULT NULL COMMENT '菜单类型',
    `title`       varchar(255) DEFAULT NULL COMMENT '菜单标题',
    `name`        varchar(255) DEFAULT NULL COMMENT '组件名称',
    `component`   varchar(255) DEFAULT NULL COMMENT '组件',
    `menu_sort`   int          DEFAULT NULL COMMENT '排序',
    `icon`        varchar(255) DEFAULT NULL COMMENT '图标',
    `path`        varchar(255) DEFAULT NULL COMMENT '链接地址',
    `i_frame`     bit(1)       DEFAULT NULL COMMENT '是否外链',
    `cache`       bit(1)       DEFAULT b'0' COMMENT '缓存',
    `hidden`      bit(1)       DEFAULT b'0' COMMENT '隐藏',
    `permission`  varchar(255) DEFAULT NULL COMMENT '权限',
    `create_by`   varchar(255) DEFAULT NULL COMMENT '创建者',
    `update_by`   varchar(255) DEFAULT NULL COMMENT '更新者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建日期',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`menu_id`) USING BTREE,
    UNIQUE KEY `uniq_title` (`title`),
    UNIQUE KEY `uniq_name` (`name`),
    KEY `inx_pid` (`pid`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 121
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='系统菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu`
    DISABLE KEYS */;
INSERT INTO `sys_menu`
VALUES (1, NULL, 7, 0, '系统管理', NULL, NULL, 1, 'system', 'system', _binary '\0', _binary '\0', _binary '\0', NULL, NULL,
        NULL, '2018-12-18 15:11:29', NULL),
       (2, 1, 3, 1, '用户管理', 'User', 'system/user/index', 2, 'peoples', 'user', _binary '\0', _binary '\0', _binary '\0',
        'user:list', NULL, NULL, '2018-12-18 15:14:44', NULL),
       (3, 1, 3, 1, '角色管理', 'Role', 'system/role/index', 3, 'role', 'role', _binary '\0', _binary '\0', _binary '\0',
        'roles:list', NULL, NULL, '2018-12-18 15:16:07', NULL),
       (5, 1, 3, 1, '菜单管理', 'Menu', 'system/menu/index', 5, 'menu', 'menu', _binary '\0', _binary '\0', _binary '\0',
        'menu:list', NULL, NULL, '2018-12-18 15:17:28', NULL),
       (6, NULL, 5, 0, '系统监控', NULL, NULL, 10, 'monitor', 'monitor', _binary '\0', _binary '\0', _binary '\0', NULL,
        NULL, NULL, '2018-12-18 15:17:48', NULL),
       (7, 6, 0, 1, '操作日志', 'Log', 'monitor/log/index', 11, 'log', 'logs', _binary '\0', _binary '', _binary '\0',
        NULL, NULL, 'admin', '2018-12-18 15:18:26', '2020-06-06 13:11:57'),
       (9, 6, 0, 1, 'SQL监控', 'Sql', 'monitor/sql/index', 18, 'sqlMonitor', 'druid', _binary '\0', _binary '\0',
        _binary '\0', NULL, NULL, NULL, '2018-12-18 15:19:34', NULL),
       (10, NULL, 5, 0, '组件管理', NULL, NULL, 50, 'zujian', 'components', _binary '\0', _binary '\0', _binary '\0', NULL,
        NULL, NULL, '2018-12-19 13:38:16', NULL),
       (11, 10, 0, 1, '图标库', 'Icons', 'components/icons/index', 51, 'icon', 'icon', _binary '\0', _binary '\0',
        _binary '\0', NULL, NULL, NULL, '2018-12-19 13:38:49', NULL),
       (14, 36, 0, 1, '邮件工具', 'Email', 'tools/email/index', 35, 'email', 'email', _binary '\0', _binary '\0',
        _binary '\0', NULL, NULL, NULL, '2018-12-27 10:13:09', NULL),
       (15, 10, 0, 1, '富文本', 'Editor', 'components/Editor', 52, 'fwb', 'tinymce', _binary '\0', _binary '\0',
        _binary '\0', NULL, NULL, NULL, '2018-12-27 11:58:25', NULL),
       (18, 36, 3, 1, '存储管理', 'Storage', 'tools/storage/index', 34, 'qiniu', 'storage', _binary '\0', _binary '\0',
        _binary '\0', 'storage:list', NULL, NULL, '2018-12-31 11:12:15', NULL),
       (19, 36, 0, 1, '支付宝工具', 'AliPay', 'tools/aliPay/index', 37, 'alipay', 'aliPay', _binary '\0', _binary '\0',
        _binary '\0', NULL, NULL, NULL, '2018-12-31 14:52:38', NULL),
       (21, NULL, 2, 0, '多级菜单', NULL, '', 900, 'menu', 'nested', _binary '\0', _binary '\0', _binary '\0', NULL, NULL,
        'admin', '2019-01-04 16:22:03', '2020-06-21 17:27:35'),
       (22, 21, 2, 0, '二级菜单1', NULL, '', 999, 'menu', 'menu1', _binary '\0', _binary '\0', _binary '\0', NULL, NULL,
        'admin', '2019-01-04 16:23:29', '2020-06-21 17:27:20'),
       (23, 21, 0, 1, '二级菜单2', NULL, 'nested/menu2/index', 999, 'menu', 'menu2', _binary '\0', _binary '\0',
        _binary '\0', NULL, NULL, NULL, '2019-01-04 16:23:57', NULL),
       (24, 22, 0, 1, '三级菜单1', 'Test', 'nested/menu1/menu1-1', 999, 'menu', 'menu1-1', _binary '\0', _binary '\0',
        _binary '\0', NULL, NULL, NULL, '2019-01-04 16:24:48', NULL),
       (27, 22, 0, 1, '三级菜单2', NULL, 'nested/menu1/menu1-2', 999, 'menu', 'menu1-2', _binary '\0', _binary '\0',
        _binary '\0', NULL, NULL, NULL, '2019-01-07 17:27:32', NULL),
       (28, 1, 3, 1, '任务调度', 'Timing', 'system/timing/index', 999, 'timing', 'timing', _binary '\0', _binary '\0',
        _binary '\0', 'timing:list', NULL, NULL, '2019-01-07 20:34:40', NULL),
       (30, 36, 0, 1, '代码生成', 'GeneratorIndex', 'generator/index', 32, 'dev', 'generator', _binary '\0', _binary '',
        _binary '\0', NULL, NULL, NULL, '2019-01-11 15:45:55', NULL),
       (32, 6, 0, 1, '异常日志', 'ErrorLog', 'monitor/log/errorLog', 12, 'error', 'errorLog', _binary '\0', _binary '\0',
        _binary '\0', NULL, NULL, NULL, '2019-01-13 13:49:03', NULL),
       (33, 10, 0, 1, 'Markdown', 'Markdown', 'components/MarkDown', 53, 'markdown', 'markdown', _binary '\0',
        _binary '\0', _binary '\0', NULL, NULL, NULL, '2019-03-08 13:46:44', NULL),
       (34, 10, 0, 1, 'Yaml编辑器', 'YamlEdit', 'components/YamlEdit', 54, 'dev', 'yaml', _binary '\0', _binary '\0',
        _binary '\0', NULL, NULL, NULL, '2019-03-08 15:49:40', NULL),
       (35, 1, 3, 1, '部门管理', 'Dept', 'system/dept/index', 6, 'dept', 'dept', _binary '\0', _binary '\0', _binary '\0',
        'dept:list', NULL, NULL, '2019-03-25 09:46:00', NULL),
       (36, NULL, 7, 0, '系统工具', NULL, '', 30, 'sys-tools', 'sys-tools', _binary '\0', _binary '\0', _binary '\0', NULL,
        NULL, NULL, '2019-03-29 10:57:35', NULL),
       (37, 1, 3, 1, '岗位管理', 'Job', 'system/job/index', 7, 'Steve-Jobs', 'job', _binary '\0', _binary '\0',
        _binary '\0', 'job:list', NULL, NULL, '2019-03-29 13:51:18', NULL),
       (38, 36, 0, 1, '接口文档', 'Swagger', 'tools/swagger/index', 36, 'swagger', 'swagger2', _binary '\0', _binary '\0',
        _binary '\0', NULL, NULL, NULL, '2019-03-29 19:57:53', NULL),
       (39, 1, 3, 1, '字典管理', 'Dict', 'system/dict/index', 8, 'dictionary', 'dict', _binary '\0', _binary '\0',
        _binary '\0', 'dict:list', NULL, NULL, '2019-04-10 11:49:04', NULL),
       (41, 6, 0, 1, '在线用户', 'OnlineUser', 'monitor/online/index', 10, 'Steve-Jobs', 'online', _binary '\0',
        _binary '\0', _binary '\0', NULL, NULL, NULL, '2019-10-26 22:08:43', NULL),
       (44, 2, 0, 2, '用户新增', NULL, '', 2, '', '', _binary '\0', _binary '\0', _binary '\0', 'user:add', NULL, NULL,
        '2019-10-29 10:59:46', NULL),
       (45, 2, 0, 2, '用户编辑', NULL, '', 3, '', '', _binary '\0', _binary '\0', _binary '\0', 'user:edit', NULL, NULL,
        '2019-10-29 11:00:08', NULL),
       (46, 2, 0, 2, '用户删除', NULL, '', 4, '', '', _binary '\0', _binary '\0', _binary '\0', 'user:del', NULL, NULL,
        '2019-10-29 11:00:23', NULL),
       (48, 3, 0, 2, '角色创建', NULL, '', 2, '', '', _binary '\0', _binary '\0', _binary '\0', 'roles:add', NULL, NULL,
        '2019-10-29 12:45:34', NULL),
       (49, 3, 0, 2, '角色修改', NULL, '', 3, '', '', _binary '\0', _binary '\0', _binary '\0', 'roles:edit', NULL, NULL,
        '2019-10-29 12:46:16', NULL),
       (50, 3, 0, 2, '角色删除', NULL, '', 4, '', '', _binary '\0', _binary '\0', _binary '\0', 'roles:del', NULL, NULL,
        '2019-10-29 12:46:51', NULL),
       (52, 5, 0, 2, '菜单新增', NULL, '', 2, '', '', _binary '\0', _binary '\0', _binary '\0', 'menu:add', NULL, NULL,
        '2019-10-29 12:55:07', NULL),
       (53, 5, 0, 2, '菜单编辑', NULL, '', 3, '', '', _binary '\0', _binary '\0', _binary '\0', 'menu:edit', NULL, NULL,
        '2019-10-29 12:55:40', NULL),
       (54, 5, 0, 2, '菜单删除', NULL, '', 4, '', '', _binary '\0', _binary '\0', _binary '\0', 'menu:del', NULL, NULL,
        '2019-10-29 12:56:00', NULL),
       (56, 35, 0, 2, '部门新增', NULL, '', 2, '', '', _binary '\0', _binary '\0', _binary '\0', 'dept:add', NULL, NULL,
        '2019-10-29 12:57:09', NULL),
       (57, 35, 0, 2, '部门编辑', NULL, '', 3, '', '', _binary '\0', _binary '\0', _binary '\0', 'dept:edit', NULL, NULL,
        '2019-10-29 12:57:27', NULL),
       (58, 35, 0, 2, '部门删除', NULL, '', 4, '', '', _binary '\0', _binary '\0', _binary '\0', 'dept:del', NULL, NULL,
        '2019-10-29 12:57:41', NULL),
       (60, 37, 0, 2, '岗位新增', NULL, '', 2, '', '', _binary '\0', _binary '\0', _binary '\0', 'job:add', NULL, NULL,
        '2019-10-29 12:58:27', NULL),
       (61, 37, 0, 2, '岗位编辑', NULL, '', 3, '', '', _binary '\0', _binary '\0', _binary '\0', 'job:edit', NULL, NULL,
        '2019-10-29 12:58:45', NULL),
       (62, 37, 0, 2, '岗位删除', NULL, '', 4, '', '', _binary '\0', _binary '\0', _binary '\0', 'job:del', NULL, NULL,
        '2019-10-29 12:59:04', NULL),
       (64, 39, 0, 2, '字典新增', NULL, '', 2, '', '', _binary '\0', _binary '\0', _binary '\0', 'dict:add', NULL, NULL,
        '2019-10-29 13:00:17', NULL),
       (65, 39, 0, 2, '字典编辑', NULL, '', 3, '', '', _binary '\0', _binary '\0', _binary '\0', 'dict:edit', NULL, NULL,
        '2019-10-29 13:00:42', NULL),
       (66, 39, 0, 2, '字典删除', NULL, '', 4, '', '', _binary '\0', _binary '\0', _binary '\0', 'dict:del', NULL, NULL,
        '2019-10-29 13:00:59', NULL),
       (73, 28, 0, 2, '任务新增', NULL, '', 2, '', '', _binary '\0', _binary '\0', _binary '\0', 'timing:add', NULL, NULL,
        '2019-10-29 13:07:28', NULL),
       (74, 28, 0, 2, '任务编辑', NULL, '', 3, '', '', _binary '\0', _binary '\0', _binary '\0', 'timing:edit', NULL, NULL,
        '2019-10-29 13:07:41', NULL),
       (75, 28, 0, 2, '任务删除', NULL, '', 4, '', '', _binary '\0', _binary '\0', _binary '\0', 'timing:del', NULL, NULL,
        '2019-10-29 13:07:54', NULL),
       (77, 18, 0, 2, '上传文件', NULL, '', 2, '', '', _binary '\0', _binary '\0', _binary '\0', 'storage:add', NULL, NULL,
        '2019-10-29 13:09:09', NULL),
       (78, 18, 0, 2, '文件编辑', NULL, '', 3, '', '', _binary '\0', _binary '\0', _binary '\0', 'storage:edit', NULL, NULL,
        '2019-10-29 13:09:22', NULL),
       (79, 18, 0, 2, '文件删除', NULL, '', 4, '', '', _binary '\0', _binary '\0', _binary '\0', 'storage:del', NULL, NULL,
        '2019-10-29 13:09:34', NULL),
       (80, 6, 0, 1, '服务监控', 'ServerMonitor', 'monitor/server/index', 14, 'codeConsole', 'server', _binary '\0',
        _binary '\0', _binary '\0', 'monitor:list', NULL, 'admin', '2019-11-07 13:06:39', '2020-05-04 18:20:50'),
       (82, 36, 0, 1, '生成配置', 'GeneratorConfig', 'generator/config', 33, 'dev', 'generator/config/:tableName',
        _binary '\0', _binary '', _binary '', '', NULL, NULL, '2019-11-17 20:08:56', NULL),
       (83, 10, 0, 1, '图表库', 'Echarts', 'components/Echarts', 50, 'chart', 'echarts', _binary '\0', _binary '',
        _binary '\0', '', NULL, NULL, '2019-11-21 09:04:32', NULL),
       (90, NULL, 5, 1, '运维管理', 'Mnt', '', 20, 'mnt', 'mnt', _binary '\0', _binary '\0', _binary '\0', NULL, NULL, NULL,
        '2019-11-09 10:31:08', NULL),
       (92, 90, 3, 1, '服务器', 'ServerDeploy', 'mnt/server/index', 22, 'server', 'mnt/serverDeploy', _binary '\0',
        _binary '\0', _binary '\0', 'serverDeploy:list', NULL, NULL, '2019-11-10 10:29:25', NULL),
       (93, 90, 3, 1, '应用管理', 'App', 'mnt/app/index', 23, 'app', 'mnt/app', _binary '\0', _binary '\0', _binary '\0',
        'app:list', NULL, NULL, '2019-11-10 11:05:16', NULL),
       (94, 90, 3, 1, '部署管理', 'Deploy', 'mnt/deploy/index', 24, 'deploy', 'mnt/deploy', _binary '\0', _binary '\0',
        _binary '\0', 'deploy:list', NULL, NULL, '2019-11-10 15:56:55', NULL),
       (97, 90, 1, 1, '部署备份', 'DeployHistory', 'mnt/deployHistory/index', 25, 'backup', 'mnt/deployHistory',
        _binary '\0', _binary '\0', _binary '\0', 'deployHistory:list', NULL, NULL, '2019-11-10 16:49:44', NULL),
       (98, 90, 3, 1, '数据库管理', 'Database', 'mnt/database/index', 26, 'database', 'mnt/database', _binary '\0',
        _binary '\0', _binary '\0', 'database:list', NULL, NULL, '2019-11-10 20:40:04', NULL),
       (102, 97, 0, 2, '删除', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'deployHistory:del', NULL,
        NULL, '2019-11-17 09:32:48', NULL),
       (103, 92, 0, 2, '服务器新增', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'serverDeploy:add',
        NULL, NULL, '2019-11-17 11:08:33', NULL),
       (104, 92, 0, 2, '服务器编辑', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'serverDeploy:edit',
        NULL, NULL, '2019-11-17 11:08:57', NULL),
       (105, 92, 0, 2, '服务器删除', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'serverDeploy:del',
        NULL, NULL, '2019-11-17 11:09:15', NULL),
       (106, 93, 0, 2, '应用新增', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'app:add', NULL, NULL,
        '2019-11-17 11:10:03', NULL),
       (107, 93, 0, 2, '应用编辑', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'app:edit', NULL, NULL,
        '2019-11-17 11:10:28', NULL),
       (108, 93, 0, 2, '应用删除', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'app:del', NULL, NULL,
        '2019-11-17 11:10:55', NULL),
       (109, 94, 0, 2, '部署新增', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'deploy:add', NULL,
        NULL, '2019-11-17 11:11:22', NULL),
       (110, 94, 0, 2, '部署编辑', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'deploy:edit', NULL,
        NULL, '2019-11-17 11:11:41', NULL),
       (111, 94, 0, 2, '部署删除', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'deploy:del', NULL,
        NULL, '2019-11-17 11:12:01', NULL),
       (112, 98, 0, 2, '数据库新增', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'database:add', NULL,
        NULL, '2019-11-17 11:12:43', NULL),
       (113, 98, 0, 2, '数据库编辑', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'database:edit', NULL,
        NULL, '2019-11-17 11:12:58', NULL),
       (114, 98, 0, 2, '数据库删除', NULL, '', 999, '', '', _binary '\0', _binary '\0', _binary '\0', 'database:del', NULL,
        NULL, '2019-11-17 11:13:14', NULL),
       (116, 36, 0, 1, '生成预览', 'Preview', 'generator/preview', 999, 'java', 'generator/preview/:tableName',
        _binary '\0', _binary '', _binary '', NULL, NULL, NULL, '2019-11-26 14:54:36', NULL),
       (118, NULL, 0, 1, '乔的博客', NULL, NULL, 999, 'doc', 'https://tyrantqiao.com', _binary '', _binary '',
        _binary '\0', NULL, 'admin', 'admin', '2021-04-18 09:30:50', '2021-04-18 09:31:05'),
       (119, NULL, 1, 0, 'jarvis', NULL, NULL, 999, 'source', 'jarvis', _binary '\0', _binary '\0', _binary '\0', NULL,
        'admin', 'admin', '2021-04-18 09:33:35', '2021-04-18 09:33:35'),
       (120, 119, 0, 1, '记忆曲线', 'todo', NULL, 999, 'timing', 'todo', _binary '\0', _binary '', _binary '\0', NULL,
        'admin', 'admin', '2021-04-18 09:35:24', '2021-04-18 09:35:24');
/*!40000 ALTER TABLE `sys_menu`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_quartz_job`
--

DROP TABLE IF EXISTS `sys_quartz_job`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_quartz_job`
(
    `job_id`              bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `bean_name`           varchar(255) DEFAULT NULL COMMENT 'Spring Bean名称',
    `cron_expression`     varchar(255) DEFAULT NULL COMMENT 'cron 表达式',
    `is_pause`            bit(1)       DEFAULT NULL COMMENT '状态：1暂停、0启用',
    `job_name`            varchar(255) DEFAULT NULL COMMENT '任务名称',
    `method_name`         varchar(255) DEFAULT NULL COMMENT '方法名称',
    `params`              varchar(255) DEFAULT NULL COMMENT '参数',
    `description`         varchar(255) DEFAULT NULL COMMENT '备注',
    `person_in_charge`    varchar(100) DEFAULT NULL COMMENT '负责人',
    `email`               varchar(100) DEFAULT NULL COMMENT '报警邮箱',
    `sub_task`            varchar(100) DEFAULT NULL COMMENT '子任务ID',
    `pause_after_failure` bit(1)       DEFAULT NULL COMMENT '任务失败后是否暂停',
    `create_by`           varchar(255) DEFAULT NULL COMMENT '创建者',
    `update_by`           varchar(255) DEFAULT NULL COMMENT '更新者',
    `create_time`         datetime     DEFAULT NULL COMMENT '创建日期',
    `update_time`         datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`job_id`) USING BTREE,
    KEY `inx_is_pause` (`is_pause`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 7
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='定时任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_quartz_job`
--

LOCK TABLES `sys_quartz_job` WRITE;
/*!40000 ALTER TABLE `sys_quartz_job`
    DISABLE KEYS */;
INSERT INTO `sys_quartz_job`
VALUES (2, 'testTask', '0/5 * * * * ?', _binary '', '测试1', 'run1', 'test', '带参测试，多参使用json', '测试', NULL, NULL, NULL,
        NULL, 'admin', '2019-08-22 14:08:29', '2020-05-24 13:58:33'),
       (3, 'testTask', '0/5 * * * * ?', _binary '', '测试', 'run', '', '不带参测试', 'Zheng Jie', '', '5,6', _binary '',
        NULL, 'admin', '2019-09-26 16:44:39', '2020-05-24 14:48:12'),
       (5, 'Test', '0/5 * * * * ?', _binary '', '任务告警测试', 'run', NULL, '测试', 'test', '', NULL, _binary '', 'admin',
        'admin', '2020-05-05 20:32:41', '2020-05-05 20:36:13'),
       (6, 'testTask', '0/5 * * * * ?', _binary '', '测试3', 'run2', NULL, '测试3', 'Zheng Jie', '', NULL, _binary '',
        'admin', 'admin', '2020-05-05 20:35:41', '2020-05-05 20:36:07');
/*!40000 ALTER TABLE `sys_quartz_job`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_quartz_log`
--

DROP TABLE IF EXISTS `sys_quartz_log`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_quartz_log`
(
    `log_id`           bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `bean_name`        varchar(255) DEFAULT NULL,
    `create_time`      datetime     DEFAULT NULL,
    `cron_expression`  varchar(255) DEFAULT NULL,
    `exception_detail` text,
    `is_success`       bit(1)       DEFAULT NULL,
    `job_name`         varchar(255) DEFAULT NULL,
    `method_name`      varchar(255) DEFAULT NULL,
    `params`           varchar(255) DEFAULT NULL,
    `time`             bigint       DEFAULT NULL,
    PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 151
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='定时任务日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_quartz_log`
--

LOCK TABLES `sys_quartz_log` WRITE;
/*!40000 ALTER TABLE `sys_quartz_log`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_quartz_log`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role`
(
    `role_id`     bigint       NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `name`        varchar(255) NOT NULL COMMENT '名称',
    `level`       int          DEFAULT NULL COMMENT '角色级别',
    `description` varchar(255) DEFAULT NULL COMMENT '描述',
    `data_scope`  varchar(255) DEFAULT NULL COMMENT '数据权限',
    `create_by`   varchar(255) DEFAULT NULL COMMENT '创建者',
    `update_by`   varchar(255) DEFAULT NULL COMMENT '更新者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建日期',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`role_id`) USING BTREE,
    UNIQUE KEY `uniq_name` (`name`),
    KEY `role_name_index` (`name`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role`
    DISABLE KEYS */;
INSERT INTO `sys_role`
VALUES (1, '超级管理员', 1, '-', '全部', NULL, 'admin', '2018-11-23 11:04:37', '2021-04-18 09:35:34'),
       (2, '普通用户', 2, '-', '本级', NULL, 'admin', '2018-11-23 13:09:06', '2021-04-18 09:35:36');
/*!40000 ALTER TABLE `sys_role`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles_depts`
--

DROP TABLE IF EXISTS `sys_roles_depts`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_roles_depts`
(
    `role_id` bigint NOT NULL,
    `dept_id` bigint NOT NULL,
    PRIMARY KEY (`role_id`, `dept_id`) USING BTREE,
    KEY `FK7qg6itn5ajdoa9h9o78v9ksur` (`dept_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='角色部门关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles_depts`
--

LOCK TABLES `sys_roles_depts` WRITE;
/*!40000 ALTER TABLE `sys_roles_depts`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_roles_depts`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_roles_menus`
--

DROP TABLE IF EXISTS `sys_roles_menus`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_roles_menus`
(
    `menu_id` bigint NOT NULL COMMENT '菜单ID',
    `role_id` bigint NOT NULL COMMENT '角色ID',
    PRIMARY KEY (`menu_id`, `role_id`) USING BTREE,
    KEY `FKcngg2qadojhi3a651a5adkvbq` (`role_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='角色菜单关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_roles_menus`
--

LOCK TABLES `sys_roles_menus` WRITE;
/*!40000 ALTER TABLE `sys_roles_menus`
    DISABLE KEYS */;
INSERT INTO `sys_roles_menus`
VALUES (1, 1),
       (2, 1),
       (3, 1),
       (5, 1),
       (6, 1),
       (7, 1),
       (9, 1),
       (10, 1),
       (11, 1),
       (14, 1),
       (15, 1),
       (18, 1),
       (19, 1),
       (21, 1),
       (22, 1),
       (23, 1),
       (24, 1),
       (27, 1),
       (28, 1),
       (30, 1),
       (32, 1),
       (33, 1),
       (34, 1),
       (35, 1),
       (36, 1),
       (37, 1),
       (38, 1),
       (39, 1),
       (41, 1),
       (44, 1),
       (45, 1),
       (46, 1),
       (48, 1),
       (49, 1),
       (50, 1),
       (52, 1),
       (53, 1),
       (54, 1),
       (56, 1),
       (57, 1),
       (58, 1),
       (60, 1),
       (61, 1),
       (62, 1),
       (64, 1),
       (65, 1),
       (66, 1),
       (73, 1),
       (74, 1),
       (75, 1),
       (77, 1),
       (78, 1),
       (79, 1),
       (80, 1),
       (82, 1),
       (83, 1),
       (90, 1),
       (92, 1),
       (93, 1),
       (94, 1),
       (97, 1),
       (98, 1),
       (102, 1),
       (103, 1),
       (104, 1),
       (105, 1),
       (106, 1),
       (107, 1),
       (108, 1),
       (109, 1),
       (110, 1),
       (111, 1),
       (112, 1),
       (113, 1),
       (114, 1),
       (116, 1),
       (118, 1),
       (119, 1),
       (120, 1),
       (1, 2),
       (2, 2),
       (6, 2),
       (7, 2),
       (9, 2),
       (10, 2),
       (11, 2),
       (14, 2),
       (15, 2),
       (19, 2),
       (21, 2),
       (22, 2),
       (23, 2),
       (24, 2),
       (27, 2),
       (30, 2),
       (32, 2),
       (33, 2),
       (34, 2),
       (36, 2),
       (80, 2),
       (82, 2),
       (83, 2),
       (116, 2),
       (118, 2),
       (119, 2),
       (120, 2);
/*!40000 ALTER TABLE `sys_roles_menus`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user`
(
    `user_id`        bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `dept_id`        bigint       DEFAULT NULL COMMENT '部门名称',
    `username`       varchar(255) DEFAULT NULL COMMENT '用户名',
    `nick_name`      varchar(255) DEFAULT NULL COMMENT '昵称',
    `gender`         varchar(2)   DEFAULT NULL COMMENT '性别',
    `phone`          varchar(255) DEFAULT NULL COMMENT '手机号码',
    `email`          varchar(255) DEFAULT NULL COMMENT '邮箱',
    `avatar_name`    varchar(255) DEFAULT NULL COMMENT '头像地址',
    `avatar_path`    varchar(255) DEFAULT NULL COMMENT '头像真实路径',
    `password`       varchar(255) DEFAULT NULL COMMENT '密码',
    `is_admin`       bit(1)       DEFAULT b'0' COMMENT '是否为admin账号',
    `enabled`        bigint       DEFAULT NULL COMMENT '状态：1启用、0禁用',
    `create_by`      varchar(255) DEFAULT NULL COMMENT '创建者',
    `update_by`      varchar(255) DEFAULT NULL COMMENT '更新者',
    `pwd_reset_time` datetime     DEFAULT NULL COMMENT '修改密码的时间',
    `create_time`    datetime     DEFAULT NULL COMMENT '创建日期',
    `update_time`    datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`user_id`) USING BTREE,
    UNIQUE KEY `UK_kpubos9gc2cvtkb0thktkbkes` (`email`) USING BTREE,
    UNIQUE KEY `username` (`username`) USING BTREE,
    UNIQUE KEY `uniq_username` (`username`),
    UNIQUE KEY `uniq_email` (`email`),
    KEY `FK5rwmryny6jthaaxkogownknqp` (`dept_id`) USING BTREE,
    KEY `FKpq2dhypk2qgt68nauh2by22jb` (`avatar_name`) USING BTREE,
    KEY `inx_enabled` (`enabled`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='系统用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user`
    DISABLE KEYS */;
INSERT INTO `sys_user`
VALUES (1, 2, 'admin', 'tyrantqiao', '男', '18689311420', 'tyrantqiao@qq.com', 'avatar-20210418092526269.png',
        'C:\\eladmin\\avatar\\avatar-20210418092526269.png',
        '$2a$10$LAc3YLL2n6ThiQMkAjE6cuXnRX.SR5hbepRmpmwKthuk21nFRZUcm', _binary '', 1, NULL, 'admin',
        '2021-04-18 09:26:34', '2018-08-23 09:11:56', '2021-04-18 09:27:54');
/*!40000 ALTER TABLE `sys_user`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users_jobs`
--

DROP TABLE IF EXISTS `sys_users_jobs`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_users_jobs`
(
    `user_id` bigint NOT NULL COMMENT '用户ID',
    `job_id`  bigint NOT NULL COMMENT '岗位ID',
    PRIMARY KEY (`user_id`, `job_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users_jobs`
--

LOCK TABLES `sys_users_jobs` WRITE;
/*!40000 ALTER TABLE `sys_users_jobs`
    DISABLE KEYS */;
INSERT INTO `sys_users_jobs`
VALUES (1, 11);
/*!40000 ALTER TABLE `sys_users_jobs`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users_roles`
--

DROP TABLE IF EXISTS `sys_users_roles`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_users_roles`
(
    `user_id` bigint NOT NULL COMMENT '用户ID',
    `role_id` bigint NOT NULL COMMENT '角色ID',
    PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
    KEY `FKq4eq273l04bpu4efj0jd0jb98` (`role_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='用户角色关联';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users_roles`
--

LOCK TABLES `sys_users_roles` WRITE;
/*!40000 ALTER TABLE `sys_users_roles`
    DISABLE KEYS */;
INSERT INTO `sys_users_roles`
VALUES (1, 1);
/*!40000 ALTER TABLE `sys_users_roles`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tool_alipay_config`
--

DROP TABLE IF EXISTS `tool_alipay_config`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tool_alipay_config`
(
    `config_id`               bigint NOT NULL COMMENT 'ID',
    `app_id`                  varchar(255) DEFAULT NULL COMMENT '应用ID',
    `charset`                 varchar(255) DEFAULT NULL COMMENT '编码',
    `format`                  varchar(255) DEFAULT NULL COMMENT '类型 固定格式json',
    `gateway_url`             varchar(255) DEFAULT NULL COMMENT '网关地址',
    `notify_url`              varchar(255) DEFAULT NULL COMMENT '异步回调',
    `private_key`             text COMMENT '私钥',
    `public_key`              text COMMENT '公钥',
    `return_url`              varchar(255) DEFAULT NULL COMMENT '回调地址',
    `sign_type`               varchar(255) DEFAULT NULL COMMENT '签名方式',
    `sys_service_provider_id` varchar(255) DEFAULT NULL COMMENT '商户号',
    PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='支付宝配置类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tool_alipay_config`
--

LOCK TABLES `tool_alipay_config` WRITE;
/*!40000 ALTER TABLE `tool_alipay_config`
    DISABLE KEYS */;
INSERT INTO `tool_alipay_config`
VALUES (1, '2016091700532697', 'utf-8', 'JSON', 'https://openapi.alipaydev.com/gateway.do',
        'http://api.auauz.net/api/aliPay/notify',
        'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==',
        'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB',
        'http://api.auauz.net/api/aliPay/return', 'RSA2', '2088102176044281');
/*!40000 ALTER TABLE `tool_alipay_config`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tool_email_config`
--

DROP TABLE IF EXISTS `tool_email_config`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tool_email_config`
(
    `config_id` bigint NOT NULL COMMENT 'ID',
    `from_user` varchar(255) DEFAULT NULL COMMENT '收件人',
    `host`      varchar(255) DEFAULT NULL COMMENT '邮件服务器SMTP地址',
    `pass`      varchar(255) DEFAULT NULL COMMENT '密码',
    `port`      varchar(255) DEFAULT NULL COMMENT '端口',
    `user`      varchar(255) DEFAULT NULL COMMENT '发件者用户名',
    PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='邮箱配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tool_email_config`
--

LOCK TABLES `tool_email_config` WRITE;
/*!40000 ALTER TABLE `tool_email_config`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `tool_email_config`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tool_local_storage`
--

DROP TABLE IF EXISTS `tool_local_storage`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tool_local_storage`
(
    `storage_id`  bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `real_name`   varchar(255) DEFAULT NULL COMMENT '文件真实的名称',
    `name`        varchar(255) DEFAULT NULL COMMENT '文件名',
    `suffix`      varchar(255) DEFAULT NULL COMMENT '后缀',
    `path`        varchar(255) DEFAULT NULL COMMENT '路径',
    `type`        varchar(255) DEFAULT NULL COMMENT '类型',
    `size`        varchar(100) DEFAULT NULL COMMENT '大小',
    `create_by`   varchar(255) DEFAULT NULL COMMENT '创建者',
    `update_by`   varchar(255) DEFAULT NULL COMMENT '更新者',
    `create_time` datetime     DEFAULT NULL COMMENT '创建日期',
    `update_time` datetime     DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`storage_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 10
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='本地存储';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tool_local_storage`
--

LOCK TABLES `tool_local_storage` WRITE;
/*!40000 ALTER TABLE `tool_local_storage`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `tool_local_storage`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tool_qiniu_config`
--

DROP TABLE IF EXISTS `tool_qiniu_config`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tool_qiniu_config`
(
    `config_id`  bigint       NOT NULL COMMENT 'ID',
    `access_key` text COMMENT 'accessKey',
    `bucket`     varchar(255) DEFAULT NULL COMMENT 'Bucket 识别符',
    `host`       varchar(255) NOT NULL COMMENT '外链域名',
    `secret_key` text COMMENT 'secretKey',
    `type`       varchar(255) DEFAULT NULL COMMENT '空间类型',
    `zone`       varchar(255) DEFAULT NULL COMMENT '机房',
    PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='七牛云配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tool_qiniu_config`
--

LOCK TABLES `tool_qiniu_config` WRITE;
/*!40000 ALTER TABLE `tool_qiniu_config`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `tool_qiniu_config`
    ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tool_qiniu_content`
--

DROP TABLE IF EXISTS `tool_qiniu_content`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tool_qiniu_content`
(
    `content_id`  bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `bucket`      varchar(255) DEFAULT NULL COMMENT 'Bucket 识别符',
    `name`        varchar(255) DEFAULT NULL COMMENT '文件名称',
    `size`        varchar(255) DEFAULT NULL COMMENT '文件大小',
    `type`        varchar(255) DEFAULT NULL COMMENT '文件类型：私有或公开',
    `url`         varchar(255) DEFAULT NULL COMMENT '文件url',
    `suffix`      varchar(255) DEFAULT NULL COMMENT '文件后缀',
    `update_time` datetime     DEFAULT NULL COMMENT '上传或同步的时间',
    PRIMARY KEY (`content_id`) USING BTREE,
    UNIQUE KEY `uniq_name` (`name`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  ROW_FORMAT = COMPACT COMMENT ='七牛云文件存储';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tool_qiniu_content`
--

LOCK TABLES `tool_qiniu_content` WRITE;
/*!40000 ALTER TABLE `tool_qiniu_content`
    DISABLE KEYS */;
/*!40000 ALTER TABLE `tool_qiniu_content`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2021-04-18  9:40:39
