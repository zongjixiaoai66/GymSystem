/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t119`;
CREATE DATABASE IF NOT EXISTS `t119` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t119`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot97s0t/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot97s0t/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot97s0t/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `huiyuan`;
CREATE TABLE IF NOT EXISTS `huiyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanzhanghao` varchar(200) NOT NULL COMMENT '会员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanzhanghao` (`huiyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='会员';

DELETE FROM `huiyuan`;
INSERT INTO `huiyuan` (`id`, `addtime`, `huiyuanzhanghao`, `mima`, `huiyuanxingming`, `shenfenzheng`, `xingbie`, `touxiang`, `shouji`) VALUES
	(11, '2021-05-11 16:06:49', '会员1', '123456', '会员姓名1', '440300199101010001', '男', 'http://localhost:8080/springboot97s0t/upload/huiyuan_touxiang1.jpg', '13823888881'),
	(12, '2021-05-11 16:06:49', '会员2', '123456', '会员姓名2', '440300199202020002', '男', 'http://localhost:8080/springboot97s0t/upload/huiyuan_touxiang2.jpg', '13823888882'),
	(13, '2021-05-11 16:06:49', '会员3', '123456', '会员姓名3', '440300199303030003', '男', 'http://localhost:8080/springboot97s0t/upload/huiyuan_touxiang3.jpg', '13823888883'),
	(14, '2021-05-11 16:06:49', '会员4', '123456', '会员姓名4', '440300199404040004', '男', 'http://localhost:8080/springboot97s0t/upload/huiyuan_touxiang4.jpg', '13823888884'),
	(15, '2021-05-11 16:06:49', '会员5', '123456', '会员姓名5', '440300199505050005', '男', 'http://localhost:8080/springboot97s0t/upload/huiyuan_touxiang5.jpg', '13823888885'),
	(16, '2021-05-11 16:06:49', '会员6', '123456', '会员姓名6', '440300199606060006', '男', 'http://localhost:8080/springboot97s0t/upload/huiyuan_touxiang6.jpg', '13823888886');

DROP TABLE IF EXISTS `huiyuanka`;
CREATE TABLE IF NOT EXISTS `huiyuanka` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuankabianhao` varchar(200) DEFAULT NULL COMMENT '会员卡编号',
  `huiyuankamingcheng` varchar(200) DEFAULT NULL COMMENT '会员卡名称',
  `huiyuankaleixing` varchar(200) DEFAULT NULL COMMENT '会员卡类型',
  `huiyuankajiage` int NOT NULL COMMENT '会员卡价格',
  `youxiaoshijian` varchar(200) DEFAULT NULL COMMENT '有效时间',
  `xiaofeijine` varchar(200) DEFAULT NULL COMMENT '消费金额',
  `ticeqingkuang` varchar(200) DEFAULT NULL COMMENT '体测情况',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuankabianhao` (`huiyuankabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='会员卡';

DELETE FROM `huiyuanka`;
INSERT INTO `huiyuanka` (`id`, `addtime`, `huiyuankabianhao`, `huiyuankamingcheng`, `huiyuankaleixing`, `huiyuankajiage`, `youxiaoshijian`, `xiaofeijine`, `ticeqingkuang`, `huiyuanzhanghao`, `huiyuanxingming`, `beizhu`, `sfsh`, `shhf`) VALUES
	(31, '2021-05-11 16:06:50', '会员卡编号1', '会员卡名称1', '会员卡类型1', 1, '有效时间1', '消费金额1', '体测情况1', '会员账号1', '会员姓名1', '备注1', '是', ''),
	(32, '2021-05-11 16:06:50', '会员卡编号2', '会员卡名称2', '会员卡类型2', 2, '有效时间2', '消费金额2', '体测情况2', '会员账号2', '会员姓名2', '备注2', '是', ''),
	(33, '2021-05-11 16:06:50', '会员卡编号3', '会员卡名称3', '会员卡类型3', 3, '有效时间3', '消费金额3', '体测情况3', '会员账号3', '会员姓名3', '备注3', '是', ''),
	(34, '2021-05-11 16:06:50', '会员卡编号4', '会员卡名称4', '会员卡类型4', 4, '有效时间4', '消费金额4', '体测情况4', '会员账号4', '会员姓名4', '备注4', '是', ''),
	(35, '2021-05-11 16:06:50', '会员卡编号5', '会员卡名称5', '会员卡类型5', 5, '有效时间5', '消费金额5', '体测情况5', '会员账号5', '会员姓名5', '备注5', '是', ''),
	(36, '2021-05-11 16:06:50', '会员卡编号6', '会员卡名称6', '会员卡类型6', 6, '有效时间6', '消费金额6', '体测情况6', '会员账号6', '会员姓名6', '备注6', '是', '');

DROP TABLE IF EXISTS `huiyuankaleixing`;
CREATE TABLE IF NOT EXISTS `huiyuankaleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuankamingcheng` varchar(200) DEFAULT NULL COMMENT '会员卡名称',
  `huiyuankatupian` varchar(200) DEFAULT NULL COMMENT '会员卡图片',
  `huiyuankaleixing` varchar(200) DEFAULT NULL COMMENT '会员卡类型',
  `huiyuankagongneng` longtext COMMENT '会员卡功能',
  `huiyuankajiage` int DEFAULT NULL COMMENT '会员卡价格',
  `youxiaoshijian` varchar(200) DEFAULT NULL COMMENT '有效时间',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='会员卡类型';

DELETE FROM `huiyuankaleixing`;
INSERT INTO `huiyuankaleixing` (`id`, `addtime`, `huiyuankamingcheng`, `huiyuankatupian`, `huiyuankaleixing`, `huiyuankagongneng`, `huiyuankajiage`, `youxiaoshijian`, `riqi`) VALUES
	(41, '2021-05-11 16:06:50', '会员卡名称1', 'http://localhost:8080/springboot97s0t/upload/huiyuankaleixing_huiyuankatupian1.jpg', '会员卡类型1', '会员卡功能1', 1, '有效时间1', '2021-05-12'),
	(42, '2021-05-11 16:06:50', '会员卡名称2', 'http://localhost:8080/springboot97s0t/upload/huiyuankaleixing_huiyuankatupian2.jpg', '会员卡类型2', '会员卡功能2', 2, '有效时间2', '2021-05-12'),
	(43, '2021-05-11 16:06:50', '会员卡名称3', 'http://localhost:8080/springboot97s0t/upload/huiyuankaleixing_huiyuankatupian3.jpg', '会员卡类型3', '会员卡功能3', 3, '有效时间3', '2021-05-12'),
	(44, '2021-05-11 16:06:50', '会员卡名称4', 'http://localhost:8080/springboot97s0t/upload/huiyuankaleixing_huiyuankatupian4.jpg', '会员卡类型4', '会员卡功能4', 4, '有效时间4', '2021-05-12'),
	(45, '2021-05-11 16:06:50', '会员卡名称5', 'http://localhost:8080/springboot97s0t/upload/huiyuankaleixing_huiyuankatupian5.jpg', '会员卡类型5', '会员卡功能5', 5, '有效时间5', '2021-05-12'),
	(46, '2021-05-11 16:06:50', '会员卡名称6', 'http://localhost:8080/springboot97s0t/upload/huiyuankaleixing_huiyuankatupian6.jpg', '会员卡类型6', '会员卡功能6', 6, '有效时间6', '2021-05-12');

DROP TABLE IF EXISTS `jianshenhuodong`;
CREATE TABLE IF NOT EXISTS `jianshenhuodong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) NOT NULL COMMENT '编号',
  `jianshenshizhang` varchar(200) DEFAULT NULL COMMENT '健身时长',
  `jianshenxiangmu` varchar(200) DEFAULT NULL COMMENT '健身项目',
  `jianshenqicai` varchar(200) NOT NULL COMMENT '健身器材',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `huiyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '会员账号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='健身活动';

DELETE FROM `jianshenhuodong`;
INSERT INTO `jianshenhuodong` (`id`, `addtime`, `bianhao`, `jianshenshizhang`, `jianshenxiangmu`, `jianshenqicai`, `shijian`, `huiyuanzhanghao`, `huiyuanxingming`, `shouji`) VALUES
	(101, '2021-05-11 16:06:50', '编号1', '健身时长1', '健身项目1', '健身器材1', '2021-05-12', '会员账号1', '会员姓名1', '手机1'),
	(102, '2021-05-11 16:06:50', '编号2', '健身时长2', '健身项目2', '健身器材2', '2021-05-12', '会员账号2', '会员姓名2', '手机2'),
	(103, '2021-05-11 16:06:50', '编号3', '健身时长3', '健身项目3', '健身器材3', '2021-05-12', '会员账号3', '会员姓名3', '手机3'),
	(104, '2021-05-11 16:06:50', '编号4', '健身时长4', '健身项目4', '健身器材4', '2021-05-12', '会员账号4', '会员姓名4', '手机4'),
	(105, '2021-05-11 16:06:50', '编号5', '健身时长5', '健身项目5', '健身器材5', '2021-05-12', '会员账号5', '会员姓名5', '手机5'),
	(106, '2021-05-11 16:06:50', '编号6', '健身时长6', '健身项目6', '健身器材6', '2021-05-12', '会员账号6', '会员姓名6', '手机6');

DROP TABLE IF EXISTS `jianshenqicai`;
CREATE TABLE IF NOT EXISTS `jianshenqicai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaibianhao` varchar(200) DEFAULT NULL COMMENT '器材编号',
  `qicaimingcheng` varchar(200) DEFAULT NULL COMMENT '器材名称',
  `qicaitupian` varchar(200) DEFAULT NULL COMMENT '器材图片',
  `qicaileixing` varchar(200) DEFAULT NULL COMMENT '器材类型',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shiyongfangfa` longtext COMMENT '使用方法',
  `shoushenxiaoguo` varchar(200) DEFAULT NULL COMMENT '瘦身效果',
  `qicaijieshao` longtext COMMENT '器材介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qicaibianhao` (`qicaibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='健身器材';

DELETE FROM `jianshenqicai`;
INSERT INTO `jianshenqicai` (`id`, `addtime`, `qicaibianhao`, `qicaimingcheng`, `qicaitupian`, `qicaileixing`, `pinpai`, `shiyongfangfa`, `shoushenxiaoguo`, `qicaijieshao`) VALUES
	(91, '2021-05-11 16:06:50', '器材编号1', '器材名称1', 'http://localhost:8080/springboot97s0t/upload/jianshenqicai_qicaitupian1.jpg', '器材类型1', '品牌1', '使用方法1', '瘦身效果1', '器材介绍1'),
	(92, '2021-05-11 16:06:50', '器材编号2', '器材名称2', 'http://localhost:8080/springboot97s0t/upload/jianshenqicai_qicaitupian2.jpg', '器材类型2', '品牌2', '使用方法2', '瘦身效果2', '器材介绍2'),
	(93, '2021-05-11 16:06:50', '器材编号3', '器材名称3', 'http://localhost:8080/springboot97s0t/upload/jianshenqicai_qicaitupian3.jpg', '器材类型3', '品牌3', '使用方法3', '瘦身效果3', '器材介绍3'),
	(94, '2021-05-11 16:06:50', '器材编号4', '器材名称4', 'http://localhost:8080/springboot97s0t/upload/jianshenqicai_qicaitupian4.jpg', '器材类型4', '品牌4', '使用方法4', '瘦身效果4', '器材介绍4'),
	(95, '2021-05-11 16:06:50', '器材编号5', '器材名称5', 'http://localhost:8080/springboot97s0t/upload/jianshenqicai_qicaitupian5.jpg', '器材类型5', '品牌5', '使用方法5', '瘦身效果5', '器材介绍5'),
	(96, '2021-05-11 16:06:50', '器材编号6', '器材名称6', 'http://localhost:8080/springboot97s0t/upload/jianshenqicai_qicaitupian6.jpg', '器材类型6', '品牌6', '使用方法6', '瘦身效果6', '器材介绍6');

DROP TABLE IF EXISTS `jianshenxiangmu`;
CREATE TABLE IF NOT EXISTS `jianshenxiangmu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmufengmian` varchar(200) DEFAULT NULL COMMENT '项目封面',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `xiangmujiage` int DEFAULT NULL COMMENT '项目价格',
  `shoufeibiaozhun` longtext COMMENT '收费标准',
  `keshishu` int DEFAULT NULL COMMENT '课时数',
  `xiangmushipin` varchar(200) DEFAULT NULL COMMENT '项目视频',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiangmubianhao` (`xiangmubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='健身项目';

DELETE FROM `jianshenxiangmu`;
INSERT INTO `jianshenxiangmu` (`id`, `addtime`, `xiangmubianhao`, `xiangmumingcheng`, `xiangmufengmian`, `xiangmuleixing`, `xiangmujiage`, `shoufeibiaozhun`, `keshishu`, `xiangmushipin`, `xiangqing`) VALUES
	(71, '2021-05-11 16:06:50', '项目编号1', '项目名称1', 'http://localhost:8080/springboot97s0t/upload/jianshenxiangmu_xiangmufengmian1.jpg', '项目类型1', 1, '收费标准1', 1, '', '详情1'),
	(72, '2021-05-11 16:06:50', '项目编号2', '项目名称2', 'http://localhost:8080/springboot97s0t/upload/jianshenxiangmu_xiangmufengmian2.jpg', '项目类型2', 2, '收费标准2', 2, '', '详情2'),
	(73, '2021-05-11 16:06:50', '项目编号3', '项目名称3', 'http://localhost:8080/springboot97s0t/upload/jianshenxiangmu_xiangmufengmian3.jpg', '项目类型3', 3, '收费标准3', 3, '', '详情3'),
	(74, '2021-05-11 16:06:50', '项目编号4', '项目名称4', 'http://localhost:8080/springboot97s0t/upload/jianshenxiangmu_xiangmufengmian4.jpg', '项目类型4', 4, '收费标准4', 4, '', '详情4'),
	(75, '2021-05-11 16:06:50', '项目编号5', '项目名称5', 'http://localhost:8080/springboot97s0t/upload/jianshenxiangmu_xiangmufengmian5.jpg', '项目类型5', 5, '收费标准5', 5, '', '详情5'),
	(76, '2021-05-11 16:06:50', '项目编号6', '项目名称6', 'http://localhost:8080/springboot97s0t/upload/jianshenxiangmu_xiangmufengmian6.jpg', '项目类型6', 6, '收费标准6', 6, '', '详情6');

DROP TABLE IF EXISTS `jiaolianxinxi`;
CREATE TABLE IF NOT EXISTS `jiaolianxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaolianleixing` varchar(200) DEFAULT NULL COMMENT '教练类型',
  `jiaolianjiage` varchar(200) DEFAULT NULL COMMENT '教练价格',
  `shangkeshijian` varchar(200) DEFAULT NULL COMMENT '上课时间',
  `gongzuolvli` longtext COMMENT '工作履历',
  `gerenjianjie` longtext COMMENT '个人简介',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='教练信息';

DELETE FROM `jiaolianxinxi`;
INSERT INTO `jiaolianxinxi` (`id`, `addtime`, `gonghao`, `yuangongxingming`, `xingbie`, `shengao`, `tizhong`, `shoujihao`, `jiaolianleixing`, `jiaolianjiage`, `shangkeshijian`, `gongzuolvli`, `gerenjianjie`, `tupian`) VALUES
	(51, '2021-05-11 16:06:50', '工号1', '员工姓名1', '性别1', '身高1', '体重1', '手机号1', '教练类型1', '教练价格1', '上课时间1', '工作履历1', '个人简介1', 'http://localhost:8080/springboot97s0t/upload/jiaolianxinxi_tupian1.jpg'),
	(52, '2021-05-11 16:06:50', '工号2', '员工姓名2', '性别2', '身高2', '体重2', '手机号2', '教练类型2', '教练价格2', '上课时间2', '工作履历2', '个人简介2', 'http://localhost:8080/springboot97s0t/upload/jiaolianxinxi_tupian2.jpg'),
	(53, '2021-05-11 16:06:50', '工号3', '员工姓名3', '性别3', '身高3', '体重3', '手机号3', '教练类型3', '教练价格3', '上课时间3', '工作履历3', '个人简介3', 'http://localhost:8080/springboot97s0t/upload/jiaolianxinxi_tupian3.jpg'),
	(54, '2021-05-11 16:06:50', '工号4', '员工姓名4', '性别4', '身高4', '体重4', '手机号4', '教练类型4', '教练价格4', '上课时间4', '工作履历4', '个人简介4', 'http://localhost:8080/springboot97s0t/upload/jiaolianxinxi_tupian4.jpg'),
	(55, '2021-05-11 16:06:50', '工号5', '员工姓名5', '性别5', '身高5', '体重5', '手机号5', '教练类型5', '教练价格5', '上课时间5', '工作履历5', '个人简介5', 'http://localhost:8080/springboot97s0t/upload/jiaolianxinxi_tupian5.jpg'),
	(56, '2021-05-11 16:06:50', '工号6', '员工姓名6', '性别6', '身高6', '体重6', '手机号6', '教练类型6', '教练价格6', '上课时间6', '工作履历6', '个人简介6', 'http://localhost:8080/springboot97s0t/upload/jiaolianxinxi_tupian6.jpg');

DROP TABLE IF EXISTS `jiepin`;
CREATE TABLE IF NOT EXISTS `jiepin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiepinbianhao` varchar(200) DEFAULT NULL COMMENT '解聘编号',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `jiaolianleixing` varchar(200) DEFAULT NULL COMMENT '教练类型',
  `jiaolianjiage` varchar(200) DEFAULT NULL COMMENT '教练价格',
  `jiepinyuanyin` longtext COMMENT '解聘原因',
  `jiepinshijian` date DEFAULT NULL COMMENT '解聘时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiepinbianhao` (`jiepinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='解聘';

DELETE FROM `jiepin`;
INSERT INTO `jiepin` (`id`, `addtime`, `jiepinbianhao`, `gonghao`, `yuangongxingming`, `jiaolianleixing`, `jiaolianjiage`, `jiepinyuanyin`, `jiepinshijian`) VALUES
	(61, '2021-05-11 16:06:50', '解聘编号1', '工号1', '员工姓名1', '教练类型1', '教练价格1', '解聘原因1', '2021-05-12'),
	(62, '2021-05-11 16:06:50', '解聘编号2', '工号2', '员工姓名2', '教练类型2', '教练价格2', '解聘原因2', '2021-05-12'),
	(63, '2021-05-11 16:06:50', '解聘编号3', '工号3', '员工姓名3', '教练类型3', '教练价格3', '解聘原因3', '2021-05-12'),
	(64, '2021-05-11 16:06:50', '解聘编号4', '工号4', '员工姓名4', '教练类型4', '教练价格4', '解聘原因4', '2021-05-12'),
	(65, '2021-05-11 16:06:50', '解聘编号5', '工号5', '员工姓名5', '教练类型5', '教练价格5', '解聘原因5', '2021-05-12'),
	(66, '2021-05-11 16:06:50', '解聘编号6', '工号6', '员工姓名6', '教练类型6', '教练价格6', '解聘原因6', '2021-05-12');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'vfyehjsgxb9b4aht1frou03oojxxg34x', '2024-04-06 08:28:45', '2024-04-06 09:31:30'),
	(2, 11, '会员1', 'huiyuan', '会员', '9qso94wavdadse9yt69btn3mqh9va35n', '2024-04-06 08:32:32', '2024-04-06 09:32:33'),
	(3, 21, '员工1', 'yuangong', '员工', 'ziw7ma9bk6gk06o5o66hhwkmwtdknv4v', '2024-04-06 08:32:47', '2024-04-06 09:32:48');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-11 16:06:50');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `addtime`, `gonghao`, `mima`, `yuangongxingming`, `xingbie`, `touxiang`, `shouji`, `youxiang`) VALUES
	(21, '2021-05-11 16:06:49', '员工1', '123456', '员工姓名1', '男', 'http://localhost:8080/springboot97s0t/upload/yuangong_touxiang1.jpg', '13823888881', '773890001@qq.com'),
	(22, '2021-05-11 16:06:49', '员工2', '123456', '员工姓名2', '男', 'http://localhost:8080/springboot97s0t/upload/yuangong_touxiang2.jpg', '13823888882', '773890002@qq.com'),
	(23, '2021-05-11 16:06:50', '员工3', '123456', '员工姓名3', '男', 'http://localhost:8080/springboot97s0t/upload/yuangong_touxiang3.jpg', '13823888883', '773890003@qq.com'),
	(24, '2021-05-11 16:06:50', '员工4', '123456', '员工姓名4', '男', 'http://localhost:8080/springboot97s0t/upload/yuangong_touxiang4.jpg', '13823888884', '773890004@qq.com'),
	(25, '2021-05-11 16:06:50', '员工5', '123456', '员工姓名5', '男', 'http://localhost:8080/springboot97s0t/upload/yuangong_touxiang5.jpg', '13823888885', '773890005@qq.com'),
	(26, '2021-05-11 16:06:50', '员工6', '123456', '员工姓名6', '男', 'http://localhost:8080/springboot97s0t/upload/yuangong_touxiang6.jpg', '13823888886', '773890006@qq.com');

DROP TABLE IF EXISTS `zhidaoxiangmu`;
CREATE TABLE IF NOT EXISTS `zhidaoxiangmu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmubianhao` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `xiangmujiage` int DEFAULT NULL COMMENT '项目价格',
  `shoufeibiaozhun` longtext COMMENT '收费标准',
  `keshishu` varchar(200) DEFAULT NULL COMMENT '课时数',
  `zhidaoxiangmu` longtext COMMENT '指导项目',
  `zhidaojiaolian` varchar(200) DEFAULT NULL COMMENT '指导教练',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='指导项目';

DELETE FROM `zhidaoxiangmu`;
INSERT INTO `zhidaoxiangmu` (`id`, `addtime`, `xiangmubianhao`, `xiangmumingcheng`, `xiangmuleixing`, `xiangmujiage`, `shoufeibiaozhun`, `keshishu`, `zhidaoxiangmu`, `zhidaojiaolian`) VALUES
	(81, '2021-05-11 16:06:50', '项目编号1', '项目名称1', '项目类型1', 1, '收费标准1', '课时数1', '指导项目1', '指导教练1'),
	(82, '2021-05-11 16:06:50', '项目编号2', '项目名称2', '项目类型2', 2, '收费标准2', '课时数2', '指导项目2', '指导教练2'),
	(83, '2021-05-11 16:06:50', '项目编号3', '项目名称3', '项目类型3', 3, '收费标准3', '课时数3', '指导项目3', '指导教练3'),
	(84, '2021-05-11 16:06:50', '项目编号4', '项目名称4', '项目类型4', 4, '收费标准4', '课时数4', '指导项目4', '指导教练4'),
	(85, '2021-05-11 16:06:50', '项目编号5', '项目名称5', '项目类型5', 5, '收费标准5', '课时数5', '指导项目5', '指导教练5'),
	(86, '2021-05-11 16:06:50', '项目编号6', '项目名称6', '项目类型6', 6, '收费标准6', '课时数6', '指导项目6', '指导教练6');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
