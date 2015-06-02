-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.24-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.2.0.4953
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 shenglin 的数据库结构
DROP DATABASE IF EXISTS `shenglin`;
CREATE DATABASE IF NOT EXISTS `shenglin` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shenglin`;


-- 导出  表 shenglin.t_product 结构
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE IF NOT EXISTS `t_product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_NAME` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `PRODUCT_TYPE` varchar(2) NOT NULL COMMENT '产品类型',
  `DESCRIPTION` varchar(1000) DEFAULT NULL COMMENT '产品描述',
  `PARAMETER` varchar(1000) DEFAULT NULL COMMENT '产品参数',
  `PICTURE` varchar(1000) DEFAULT NULL COMMENT '产品图片',
  `CREATE_DATE` date DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`ID`),
  KEY `FK_t_product_t_type` (`PRODUCT_TYPE`),
  CONSTRAINT `FK_t_product_t_type` FOREIGN KEY (`PRODUCT_TYPE`) REFERENCES `t_type` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10000061 DEFAULT CHARSET=utf8 COMMENT='产品明细表';

-- 正在导出表  shenglin.t_product 的数据：~3 rows (大约)
DELETE FROM `t_product`;
/*!40000 ALTER TABLE `t_product` DISABLE KEYS */;
INSERT INTO `t_product` (`ID`, `PRODUCT_NAME`, `PRODUCT_TYPE`, `DESCRIPTION`, `PARAMETER`, `PICTURE`, `CREATE_DATE`) VALUES
	(10000045, '13寸一体式硬盘录像机', '02', '采用高速处理器和嵌入式操作系统，结合了IT领域各项最新技术，如音视频编解码技术、大容量硬盘存储技术、流媒体网络技术、视音频降噪技术、成熟的减震技术、宽电压设计，外观简洁，安装灵活方便，功能强大，系统安全可靠。', '操作系统^Linux~操作系统^Linux 的一款高端硬盘车载监控录像机。采用高速处理器和嵌入式操作系统，结合了IT领域各项最新技术，如音视频编解码技术、大容量硬盘存储技术、流媒体网络技术、视音频降噪技术、成熟的减震技术、宽电压设计，外观简洁，安装灵活方便，功能强大，系统安全可靠。~操作系统^Linux ~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux', '/pic/5.jpg', '2015-05-21'),
	(10000055, 'MacBook', '03', '等发达发发发发打发打发打发打发发啊的', '操作系统^Linux~操作系统^Linux 的一款高端硬盘车载监控录像机。采用高速处理器和嵌入式操作系统，结合了IT领域各项最新技术，如音视频编解码技术、大容量硬盘存储技术、流媒体网络技术、视音频降噪技术、成熟的减震技术、宽电压设计，外观简洁，安装灵活方便，功能强大，系统安全可靠。~操作系统^Linux ~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux', '/pic/01.jpg', '2015-03-16'),
	(10000056, 'Mac Pro', '02', '等发达发发发发打发打发打发打发发啊的', '操作系统^Linux~操作系统^Linux 的一款高端硬盘车载监控录像机。采用高速处理器和嵌入式操作系统，结合了IT领域各项最新技术，如音视频编解码技术、大容量硬盘存储技术、流媒体网络技术、视音频降噪技术、成熟的减震技术、宽电压设计，外观简洁，安装灵活方便，功能强大，系统安全可靠。~操作系统^Linux ~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux', '/pic/logo.jpg', '2015-05-16'),
	(10000060, 'mac', '01', '等发达发发发发打发打发打发打发发啊的', '操作系统^Linux~操作系统^Linux 的一款高端硬盘车载监控录像机。采用高速处理器和嵌入式操作系统，结合了IT领域各项最新技术，如音视频编解码技术、大容量硬盘存储技术、流媒体网络技术、视音频降噪技术、成熟的减震技术、宽电压设计，外观简洁，安装灵活方便，功能强大，系统安全可靠。~操作系统^Linux ~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux~操作系统^Linux', '/pic/mac.jpg', '2015-05-16');
/*!40000 ALTER TABLE `t_product` ENABLE KEYS */;


-- 导出  表 shenglin.t_type 结构
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE IF NOT EXISTS `t_type` (
  `ID` varchar(2) NOT NULL,
  `TYPE_NAME` varchar(200) DEFAULT NULL COMMENT '产品类型名称',
  `TYPE_CODE` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品类型';

-- 正在导出表  shenglin.t_type 的数据：~5 rows (大约)
DELETE FROM `t_type`;
/*!40000 ALTER TABLE `t_type` DISABLE KEYS */;
INSERT INTO `t_type` (`ID`, `TYPE_NAME`, `TYPE_CODE`) VALUES
	('01', '硬盘录像机', '01'),
	('02', '一体式硬盘摄像机', '02'),
	('03', '网络摄像机', '03'),
	('04', '车载云台摄像机', '04'),
	('05', '车载硬盘摄像机', '05');
/*!40000 ALTER TABLE `t_type` ENABLE KEYS */;


-- 导出  表 shenglin.t_user 结构
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE IF NOT EXISTS `t_user` (
  `USER_ID` varchar(32) NOT NULL,
  `USERNAME` varchar(32) DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 正在导出表  shenglin.t_user 的数据：~2 rows (大约)
DELETE FROM `t_user`;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`USER_ID`, `USERNAME`, `PASSWORD`) VALUES
	('SYS_manager', '系统管理员', 'SYS'),
	('test', '测试用户', 'test');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
