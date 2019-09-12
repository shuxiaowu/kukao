-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-03-07 08:09:11
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bhv4.5`
--

-- --------------------------------------------------------

--
-- 表的结构 `bh_aboutus`
--

CREATE TABLE IF NOT EXISTS `bh_aboutus` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//预留属性(sty)',
  `title` varchar(200) DEFAULT NULL COMMENT '//title',
  `topic` char(200) NOT NULL COMMENT '//标题',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `intro` varchar(255) DEFAULT NULL COMMENT '//简介内容',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//页面关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//页面描述',
  `content` text COMMENT '//内容',
  `linkurl` varchar(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` int(2) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `bh_aboutus`
--

INSERT INTO `bh_aboutus` (`Id`, `sty`, `title`, `topic`, `domain`, `pic`, `intro`, `keyword`, `metades`, `content`, `linkurl`, `enabled`, `ord`, `date`) VALUES
(1, 1, '关于我们 - 百恒网络', '关于我们', '', '', '百恒网络核心团队组建于2006年8月，于2008年注册南昌市东湖区百恒科技服务部，2014年注册南昌百恒信息技术有限公司；百恒专注于高端网站建设，APP定制开发，网络推广营销等互联网专业服务。在竞争激烈的网站建设行业，百恒始终坚持以技...', '关键词 - 百恒网络', '', '<p style="box-sizing:border-box;margin:0px auto 10px;padding:0px;text-indent:2em;color:#333333;line-height:30.8px;font-size:14px;font-family:" white-space:normal;background-color:#ffffff;"="">\r\n	百恒网络核心团队组建于2006年8月，于2008年注册南昌市东湖区百恒科技服务部，2014年注册南昌百恒信息技术有限公司；百恒专注于高端网站建设，APP定制开发，网络推广营销等互联网专业服务。在竞争激烈的网站建设行业，百恒始终坚持以技术为核心，组建强大的技术开发团队，研发独立且具有自主版权的网站管理系统BH-CMS，安全稳定、简单易用；在业内具有强大的竞争力。百恒网络的近期目标是打造省内一流的网站建设及运营团队，把商务和文化、技术和艺术完美地结合在一起，为企业塑造品牌、创造效益。做网站，就找百恒网络！期待与您的合作。\r\n	</p>\r\n<p style="box-sizing:border-box;margin:0px auto 10px;padding:0px;text-indent:2em;color:#333333;line-height:30.8px;font-size:14px;font-family:" white-space:normal;background-color:#ffffff;"="">\r\n	百恒网络秉承“追求卓越、开拓创新、团结进取、共创未来”的企业精神，致力于为企业提供全面的网络传播与技术应用整体解决方案，真正实现企业互联网信息智能化，提高企业在网络科技时代的市场竞争力。以客户为中心，以技术为基础，以质量求生存，以诚信求发展，我们为您提供一个无懈可击的展示空间，为您的企业订做有竞争力的展示平台！\r\n</p>', NULL, 1, 1, '2018-03-06 11:21:56'),
(2, 1, '', '联系我们', '', '', '', '', '', '', NULL, 1, 2, '2018-03-06 11:22:30');

-- --------------------------------------------------------

--
-- 表的结构 `bh_adminauth`
--

CREATE TABLE IF NOT EXISTS `bh_adminauth` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//sty 区分模块',
  `tid` int(2) NOT NULL DEFAULT '0' COMMENT '//上级所属 0表示顶级栏目',
  `name` char(30) DEFAULT NULL COMMENT '//方法名称',
  `isopen` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否展开',
  `title` char(42) DEFAULT NULL COMMENT '//方法中文名',
  `linkurl` varchar(150) DEFAULT NULL COMMENT '//链接',
  `tables` char(30) DEFAULT NULL COMMENT '//数据表区分模块',
  `martables` char(35) DEFAULT NULL COMMENT '//二级表区分模块',
  `isspecial` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//特殊权限 不控制显示但是 未勾选仍旧没权限',
  `isimportant` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否重要权限',
  `isext` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//扩展图标',
  `icon` char(20) DEFAULT NULL COMMENT '//图标',
  `ord` int(2) NOT NULL DEFAULT '0' COMMENT '//权限排序',
  `date` datetime DEFAULT NULL COMMENT '//修改时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- 转存表中的数据 `bh_adminauth`
--

INSERT INTO `bh_adminauth` (`Id`, `sty`, `tid`, `name`, `isopen`, `title`, `linkurl`, `tables`, `martables`, `isspecial`, `isimportant`, `isext`, `icon`, `ord`, `date`) VALUES
(1, 1, 0, '', 1, '系统管理', '', '', '', 0, 0, 0, '', 2, '2016-12-07 15:36:14'),
(2, 1, 0, '', 1, '网站管理', '', '', '', 0, 0, 0, '', 1, '2016-12-07 15:36:19'),
(7, 1, 1, '', 0, '管理首页', '', '', '', 0, 0, 1, 'gears', 1, '2016-12-07 15:34:25'),
(8, 0, 1, '', 0, '管理员设置', '', '', '', 0, 0, 1, 'cog', 2, '2016-09-19 18:07:25'),
(9, 0, 1, '', 0, '数据库管理', '', '', '', 0, 0, 1, 'database', 3, '2016-09-19 18:07:37'),
(12, 1, 7, 'system/sysmod', 0, '系统设置', 'system/sysmod', '', '', 0, 1, 0, '', 1, '2016-12-07 15:35:06'),
(13, 1, 1, 'system/syslogs', 0, '日志管理', 'system/syslogs', '', '', 0, 0, 1, 'cloud', 5, '2018-03-07 14:55:47'),
(14, 1, 1, 'system/syspic', 0, '图片管理', 'system/syspic', '', '', 0, 0, 0, 'picture', 6, '2018-03-07 14:55:56'),
(15, 1, 2, '', 0, '广告管理', '', '', '', 0, 0, 0, 'flag', 4, '2018-01-31 10:01:41'),
(16, 1, 1, 'online/dataonline', 0, '访问统计', 'online/dataonline', '', '', 0, 0, 1, 'line-chart', 7, '2018-03-07 14:56:06'),
(92, 1, 2, '', 0, '产品管理', '', '', '', 0, 0, 1, 'puzzle-piece', 4, '2016-12-19 08:47:52'),
(18, 1, 7, 'system/ipfilter', 0, 'Ip过滤设置', 'system/ipfilter', '', '', 0, 0, 0, '', 3, '2018-03-07 14:57:57'),
(19, 1, 8, 'system/adminauth', 0, '栏目管理', 'system/adminauth', '', '', 0, 1, 0, '', 1, '2018-03-07 14:56:52'),
(20, 1, 8, 'system/userlist', 0, '管理用户', 'system/userlist', '', '', 0, 0, 0, '', 3, '2018-03-07 14:57:36'),
(21, 1, 8, 'system/history', 0, '登录日志', 'system/history', '', '', 0, 0, 0, '', 4, '2018-03-07 14:57:44'),
(22, 1, 9, 'system/databackup', 0, '数据库备份', 'system/databackup', '', '', 0, 0, 0, '', 1, '2018-03-07 14:56:19'),
(23, 1, 9, 'system/databackuplist', 0, '查看备份', 'system/databackuplist', '', '', 0, 0, 0, '', 2, '2018-03-07 14:56:32'),
(88, 1, 2, 'website/onlinelist', 0, '在线客服', 'website/onlinelist,tables=onlineqq', 'onlineqq', '', 0, 0, 1, 'user', 7, '2018-01-31 09:47:20'),
(86, 1, 2, 'website/message', 0, '留言信息', 'website/message,tables=message', 'message', '', 0, 0, 1, 'commenting', 4, '2018-01-31 09:46:40'),
(87, 1, 2, 'website/linkslist', 0, '友情链接', 'website/linkslist,tables=links', 'links', '', 0, 0, 1, 'link', 6, '2018-01-31 09:47:05'),
(85, 1, 83, 'website/datalist', 0, '资料管理', 'website/datalist,tables=information&martables=inftype', 'information', 'inftype', 0, 0, 1, '', 2, '2016-12-09 19:57:07'),
(82, 1, 2, 'website/aboutlist', 0, '关于我们', 'website/aboutlist,tables=aboutus', 'aboutus', '', 0, 0, 1, 'cube', 1, '2018-01-31 09:46:18'),
(83, 1, 2, '', 0, '新闻资讯', '', '', '', 0, 0, 1, 'list-alt', 3, '2018-01-31 09:46:29'),
(84, 1, 83, 'website/datatypelist', 0, '类别管理', 'website/datatypelist,tables=inftype', 'inftype', '', 0, 0, 1, '', 1, '2016-12-09 19:56:31'),
(96, 1, 15, 'website/datatypelist', 0, '广告类目', 'website/datatypelist,tables=advtype', 'advtype', '', 0, 0, 1, '', 1, '2017-04-07 16:05:45'),
(91, 2, 89, 'website/datalist', 0, '资料管理', 'website/datalist,tables=information&martables=inftype&sty=2', 'information', 'inftype', 0, 0, 1, '', 2, '2016-12-09 20:06:02'),
(97, 1, 15, 'system/advlist', 0, '广告管理', 'system/advlist', '', '', 0, 0, 1, '', 2, '2018-03-07 14:58:27'),
(95, 1, 92, 'product/productlist', 0, '产品管理', 'product/productlist,tables=product', 'product', '', 0, 0, 1, '', 3, '2018-03-07 14:59:03'),
(94, 1, 92, 'product/promtaglist', 0, '子类管理', 'product/promtaglist,tables=promtag', 'promtag', '', 0, 0, 1, '', 2, '2018-03-07 14:58:54'),
(93, 1, 92, 'product/proctaglist', 0, '类别管理', 'product/proctaglist,tables=proctag', 'proctag', '', 0, 0, 1, '', 1, '2018-03-07 14:58:44'),
(90, 2, 89, 'website/datatypelist', 0, '类别管理', 'website/datatypelist,tables=inftype&sty=2', 'inftype', '', 0, 0, 1, '', 1, '2016-12-09 20:05:10'),
(89, 1, 2, '', 0, '案例管理', '', '', '', 0, 0, 1, 'globe', 2, '2016-12-09 20:01:52'),
(77, 1, 8, 'system/admindepartment', 0, '部门管理', 'system/admindepartment', '', '', 0, 0, 1, '', 2, '2018-03-07 14:57:01'),
(78, 1, 7, 'system/syswater', 0, '水印设置', 'system/syswater', '', '', 1, 0, 0, '', 4, '2018-03-07 14:58:07'),
(98, 1, 2, 'website/tdklist', 0, 'TDK管理', 'website/tdklist', '', '', 0, 0, 1, 'cogs', 8, '2017-08-05 13:31:51'),
(99, 1, 1, '', 0, '百度优化', '', '', '', 0, 0, 1, 'jsfiddle', 8, '2018-01-31 09:47:36'),
(100, 1, 99, 'seo/seoconf', 0, '参数设置', 'seo/seoconf', '', '', 0, 0, 1, '', 1, '2017-08-17 16:32:13'),
(101, 1, 99, 'seo/seosend', 0, '手动提交链接', 'seo/seosend', '', '', 0, 0, 1, '', 2, '2017-08-17 16:32:38'),
(102, 1, 1, 'seo/map', 0, '网站地图', 'seo/map', '', '', 0, 0, 1, 'map-o', 9, '2017-08-17 16:31:36');

-- --------------------------------------------------------

--
-- 表的结构 `bh_admindepartment`
--

CREATE TABLE IF NOT EXISTS `bh_admindepartment` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `topic` varchar(50) DEFAULT NULL COMMENT '//topic',
  `auth` varchar(1500) DEFAULT NULL COMMENT '//后台权限',
  `ord` int(2) DEFAULT '0' COMMENT '//排序',
  `date` datetime DEFAULT NULL COMMENT '//时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_admindepartment`
--

INSERT INTO `bh_admindepartment` (`Id`, `topic`, `auth`, `ord`, `date`) VALUES
(1, '超级管理员', '2,82,89,90,91,83,84,85,15,96,97,92,93,94,95,86,87,88,98,1,7,12,18,78,8,19,77,20,21,9,22,23,13,14,16,99,100,101,102', 1, '2018-03-06 10:47:00');

-- --------------------------------------------------------

--
-- 表的结构 `bh_adminrecord`
--

CREATE TABLE IF NOT EXISTS `bh_adminrecord` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `user` char(20) NOT NULL COMMENT '//管理员用户名',
  `ip` char(20) NOT NULL COMMENT '//登录IP',
  `date` datetime DEFAULT NULL COMMENT '//登录时间',
  PRIMARY KEY (`Id`),
  FULLTEXT KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bh_adminuser`
--

CREATE TABLE IF NOT EXISTS `bh_adminuser` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `depid` int(2) NOT NULL DEFAULT '0' COMMENT '//部门ID',
  `user` char(25) DEFAULT NULL COMMENT '//登录名称',
  `userpass` char(42) DEFAULT NULL COMMENT '//登录密码',
  `randcode` char(6) NOT NULL DEFAULT '654321' COMMENT '//随机码',
  `realname` char(30) DEFAULT NULL COMMENT '//管理员名称',
  `email` char(50) DEFAULT NULL COMMENT '//后台邮箱',
  `auth` varchar(500) DEFAULT NULL COMMENT '//后台权限',
  `count` int(2) DEFAULT '0' COMMENT '//累计登录次数',
  `last_ip` char(30) DEFAULT NULL COMMENT '//最后登录Ip',
  `last_time` datetime DEFAULT NULL COMMENT '//最后登录时间',
  `reg_time` datetime DEFAULT NULL COMMENT '//注册时间',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `bh_adminuser`
--

INSERT INTO `bh_adminuser` (`Id`, `depid`, `user`, `userpass`, `randcode`, `realname`, `email`, `auth`, `count`, `last_ip`, `last_time`, `reg_time`) VALUES
(1, 1, 'admin', '561ee0039318263d10c5d99dcc9aeb76', '324357', 'admin', 'admin@163.com', '', 1, '192.168.0.73', '2018-03-07 15:01:13', '2015-05-25 17:54:12');

-- --------------------------------------------------------

--
-- 表的结构 `bh_advdata`
--

CREATE TABLE IF NOT EXISTS `bh_advdata` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `topic` char(200) DEFAULT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片路径',
  `picwidth` int(4) NOT NULL DEFAULT '0' COMMENT '//广告宽度',
  `picheight` int(4) NOT NULL DEFAULT '0' COMMENT '//广告高度',
  `ctag` int(4) DEFAULT '0' COMMENT '//广告分类，数据保留',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示',
  `linkurl` varchar(200) DEFAULT '###' COMMENT '//链接地址',
  `remark` char(50) DEFAULT NULL COMMENT '//广告备注',
  `hit` int(4) DEFAULT '1' COMMENT '//点击率',
  `ord` int(2) NOT NULL DEFAULT '0' COMMENT '//广告排序',
  `date` datetime DEFAULT NULL COMMENT '//广告发布时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_advdata`
--

INSERT INTO `bh_advdata` (`Id`, `topic`, `pic`, `picwidth`, `picheight`, `ctag`, `enabled`, `linkurl`, `remark`, `hit`, `ord`, `date`) VALUES
(1, '广告', '', 0, 0, 1, 1, '###', '', 1, 2, '2018-02-08 17:40:49');

-- --------------------------------------------------------

--
-- 表的结构 `bh_advtype`
--

CREATE TABLE IF NOT EXISTS `bh_advtype` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0',
  `domain` char(20) DEFAULT NULL COMMENT '//域名',
  `topic` char(150) DEFAULT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` smallint(1) DEFAULT '0' COMMENT '//排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_advtype`
--

INSERT INTO `bh_advtype` (`Id`, `sty`, `domain`, `topic`, `pic`, `ord`, `enabled`, `date`) VALUES
(1, 1, '', '首页banner广告 1920*360', NULL, 1, 1, '2017-07-28 14:31:37');

-- --------------------------------------------------------

--
-- 表的结构 `bh_information`
--

CREATE TABLE IF NOT EXISTS `bh_information` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `tag` varchar(50) DEFAULT NULL COMMENT '//TAG标签',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否置顶',
  `ishot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否热门新闻',
  `inftype` int(4) NOT NULL DEFAULT '0' COMMENT '//新闻分类ID',
  `topic` varchar(200) DEFAULT NULL COMMENT '//标题',
  `title` varchar(200) DEFAULT NULL COMMENT '//title',
  `intro` varchar(250) DEFAULT NULL COMMENT '//新闻简介',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//描述',
  `linkurl` varchar(200) DEFAULT NULL COMMENT '//跳转链接',
  `source` char(20) DEFAULT NULL COMMENT '//来源',
  `author` char(20) DEFAULT NULL COMMENT '//作者',
  `pic` varchar(100) DEFAULT NULL COMMENT '//新闻配图',
  `filename` varchar(200) DEFAULT NULL COMMENT '//fielname',
  `content` blob COMMENT '//内容',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示',
  `topiccolor` char(20) DEFAULT NULL COMMENT '//显示颜色',
  `topicsize` char(20) DEFAULT NULL COMMENT '//标题显示大小',
  `isstrong` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否加粗',
  `ord` int(2) NOT NULL DEFAULT '0' COMMENT '//排序 默认发布日期，第二按这个排序',
  `hit` int(4) NOT NULL DEFAULT '0' COMMENT '//新闻点击率',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `inftype` (`inftype`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bh_inftype`
--

CREATE TABLE IF NOT EXISTS `bh_inftype` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//sty',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `topic` char(150) DEFAULT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` smallint(1) DEFAULT '0' COMMENT '//排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `bh_inftype`
--

INSERT INTO `bh_inftype` (`Id`, `sty`, `domain`, `topic`, `pic`, `ord`, `enabled`, `date`) VALUES
(1, 1, '', '新闻资讯', NULL, 1, 1, '2016-07-22 20:51:23'),
(2, 1, '', '商城公告', NULL, 2, 1, '2016-07-22 20:51:41'),
(3, 2, '', '新闻资讯', NULL, 1, 1, '2017-08-17 17:16:48');

-- --------------------------------------------------------

--
-- 表的结构 `bh_links`
--

CREATE TABLE IF NOT EXISTS `bh_links` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//保留字段',
  `topic` char(50) NOT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `linkurl` char(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` smallint(1) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bh_message`
--

CREATE TABLE IF NOT EXISTS `bh_message` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//留言类型(保留)',
  `topic` char(200) DEFAULT '如内容' COMMENT '//留言主题',
  `address` varchar(250) DEFAULT NULL COMMENT '//联系地址',
  `content` text COMMENT '//留言内容',
  `enabled` tinyint(1) DEFAULT '0' COMMENT '//是否处理',
  `user` char(20) DEFAULT NULL COMMENT '//留言名称',
  `tel` char(35) DEFAULT NULL COMMENT '//联系电话',
  `email` char(50) DEFAULT NULL COMMENT '//联系email',
  `phone` char(35) DEFAULT NULL COMMENT '//联系手机',
  `ip` char(20) DEFAULT NULL COMMENT '//留言人IP',
  `date` datetime DEFAULT NULL COMMENT '//留言时间',
  `recontent` text COMMENT '//回复内容',
  `redate` datetime DEFAULT NULL COMMENT '//回复时间',
  PRIMARY KEY (`Id`),
  KEY `type` (`sty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bh_online`
--

CREATE TABLE IF NOT EXISTS `bh_online` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `actionid` char(45) DEFAULT NULL COMMENT '//actionid',
  `action` char(100) NOT NULL COMMENT '访问地址',
  `refer` text NOT NULL COMMENT '来源页面',
  `ip` char(20) NOT NULL COMMENT 'IP',
  `agent` char(20) NOT NULL COMMENT '浏览器',
  `hit` int(4) NOT NULL DEFAULT '1' COMMENT '点击率',
  `day` date DEFAULT NULL COMMENT '//访问日期',
  `uid` int(4) NOT NULL DEFAULT '0' COMMENT '//uid',
  `stime` int(11) DEFAULT '0' COMMENT '//开始时间',
  `etime` int(11) NOT NULL DEFAULT '0' COMMENT '//结束时间',
  PRIMARY KEY (`Id`),
  KEY `action` (`action`,`ip`,`day`),
  KEY `day` (`day`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_online`
--

INSERT INTO `bh_online` (`Id`, `actionid`, `action`, `refer`, `ip`, `agent`, `hit`, `day`, `uid`, `stime`, `etime`) VALUES
(1, '2f2f36c141e3386b703a02f8732b49b9', 'http://localhost/bhv4.5/', '', '0.0.0.0', 'Google', 1, '2018-03-07', 0, 1520381525, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bh_onlineqq`
--

CREATE TABLE IF NOT EXISTS `bh_onlineqq` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//(sty)',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '// type',
  `topic` char(150) DEFAULT NULL COMMENT '//标题',
  `amount` varchar(100) DEFAULT NULL COMMENT '//账户',
  `weixin` char(100) DEFAULT NULL COMMENT '//微信',
  `phone` char(20) DEFAULT NULL COMMENT '//手机号码',
  `ord` smallint(1) DEFAULT '0' COMMENT '//排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bh_proctag`
--

CREATE TABLE IF NOT EXISTS `bh_proctag` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `topic` char(150) DEFAULT NULL COMMENT '//类别标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` smallint(1) DEFAULT '0' COMMENT '//新闻类排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bh_product`
--

CREATE TABLE IF NOT EXISTS `bh_product` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `tag` varchar(150) DEFAULT NULL COMMENT '//TAG标签',
  `ctag` int(4) NOT NULL DEFAULT '0' COMMENT '//产品分类',
  `mtag` int(4) NOT NULL DEFAULT '0' COMMENT '//mtag',
  `topic` char(200) DEFAULT NULL COMMENT '//产品名称',
  `title` varchar(200) DEFAULT NULL COMMENT '//title',
  `linkurl` varchar(250) DEFAULT NULL COMMENT '//跳转链接',
  `pic` varchar(100) DEFAULT NULL COMMENT '//产品配图',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//描述',
  `source` char(20) DEFAULT NULL COMMENT '//来源',
  `author` char(20) DEFAULT NULL COMMENT '//作者',
  `intro` varchar(250) DEFAULT NULL COMMENT '//产品简介',
  `content` text COMMENT '//产品内容',
  `topiccolor` char(20) DEFAULT NULL COMMENT '//显示颜色',
  `ord` int(4) NOT NULL DEFAULT '0' COMMENT '//排序 默认发布日期，第二按这个排序',
  `hit` int(4) NOT NULL DEFAULT '0' COMMENT '//产品点击率',
  `ishot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否热门产品',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否置顶',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示',
  `date` datetime DEFAULT NULL COMMENT '//发布日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`),
  KEY `ctag` (`ctag`,`mtag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bh_promtag`
--

CREATE TABLE IF NOT EXISTS `bh_promtag` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `ctag` int(4) NOT NULL DEFAULT '0' COMMENT '//所属大类',
  `topic` char(50) NOT NULL COMMENT '//分类名称',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `ord` smallint(1) NOT NULL DEFAULT '1' COMMENT '//排序',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否启用',
  `date` datetime NOT NULL COMMENT '//更新时间',
  PRIMARY KEY (`Id`),
  KEY `ctag` (`ctag`),
  FULLTEXT KEY `topic` (`topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bh_seoconf`
--

CREATE TABLE IF NOT EXISTS `bh_seoconf` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `articleurl` varchar(150) DEFAULT NULL COMMENT '//文章url',
  `marticleurl` varchar(150) DEFAULT NULL COMMENT '//手机站的URL',
  `mipurl` varchar(150) DEFAULT NULL COMMENT 'mipurl',
  `baiduurl` varchar(150) DEFAULT NULL COMMENT '//百度自动推送url',
  `isauto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否自动推送',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_seoconf`
--

INSERT INTO `bh_seoconf` (`Id`, `articleurl`, `marticleurl`, `mipurl`, `baiduurl`, `isauto`, `date`) VALUES
(1, '', '', '', '', 0, '2018-03-07 15:08:02');

-- --------------------------------------------------------

--
-- 表的结构 `bh_systemconfig`
--

CREATE TABLE IF NOT EXISTS `bh_systemconfig` (
  `Id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `metatitle` char(250) DEFAULT NULL COMMENT '//title',
  `metades` char(250) DEFAULT NULL COMMENT '//网站描述',
  `metakey` char(250) DEFAULT NULL COMMENT '//关键词',
  `logo` char(50) DEFAULT NULL COMMENT '//logo路径',
  `companyname` char(200) DEFAULT NULL COMMENT '//公司名称',
  `companyurl` char(150) DEFAULT NULL COMMENT '//公司链接',
  `address` char(250) DEFAULT NULL COMMENT '//公司地址',
  `email` char(50) DEFAULT NULL COMMENT '//企业邮箱',
  `tel` char(50) DEFAULT NULL COMMENT '//企业电话',
  `contact` char(100) DEFAULT NULL COMMENT '//联系人',
  `mobile` char(50) DEFAULT NULL COMMENT '//手机号码',
  `fax` char(30) DEFAULT NULL COMMENT '//传真',
  `qq` char(50) DEFAULT NULL COMMENT '//qq号码',
  `weixinpic` varchar(100) DEFAULT NULL COMMENT '//微信二维码',
  `weibourl` varchar(200) DEFAULT NULL COMMENT '//微博链接',
  `icpnote` char(50) DEFAULT NULL COMMENT '//icp备案号',
  `c_reg` tinyint(1) DEFAULT '0' COMMENT '//关闭注册',
  `shieldip` text COMMENT '//需要屏蔽的IP',
  `iptips` char(200) DEFAULT NULL COMMENT '//过滤IP提示语',
  `c_site` tinyint(1) DEFAULT '0' COMMENT '//关闭项目',
  `c_text` char(250) DEFAULT '升级中……' COMMENT '//关闭说明',
  `sys_parameter` text COMMENT '//系统参数',
  `sys_code` text COMMENT '//第三方代码（ex:百度）',
  `sys_notice` varchar(250) DEFAULT NULL COMMENT '//通知，紧急通知',
  `mailsmtp` char(50) CHARACTER SET ucs2 NOT NULL COMMENT '//邮件Smtp',
  `mailport` char(10) CHARACTER SET ucs2 NOT NULL DEFAULT '25' COMMENT '//邮件端口',
  `mailname` char(50) DEFAULT NULL COMMENT '//邮箱名称',
  `mailpass` char(50) DEFAULT NULL COMMENT '//邮箱密码',
  `wordfilter` text COMMENT '//词汇过滤',
  `regread` text COMMENT '//注册须知',
  `copy_info` varchar(200) DEFAULT NULL COMMENT '//页尾版权信息',
  `iswater` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否开启水印功能',
  `fontpos` tinyint(1) NOT NULL DEFAULT '9' COMMENT '//水印位置',
  `waterpos` tinyint(1) NOT NULL DEFAULT '9' COMMENT '//水印位置',
  `waterpic` char(50) DEFAULT NULL COMMENT '//水印图片',
  `fonttext` char(50) DEFAULT NULL COMMENT '//文字水印',
  `fontsize` int(4) NOT NULL DEFAULT '20' COMMENT '//文字大小',
  `fontcolor` char(50) NOT NULL DEFAULT '#ffffff' COMMENT '//文字颜色',
  `facetype` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//facetype',
  `rotation` smallint(1) NOT NULL DEFAULT '0' COMMENT '//旋转',
  `wateralpha` tinyint(1) NOT NULL DEFAULT '100' COMMENT '//alpha值',
  `picsize` int(4) NOT NULL DEFAULT '0' COMMENT '//上传大小（图片）',
  `filesize` int(4) NOT NULL DEFAULT '0' COMMENT '//文件上传大小',
  `picsuffix` varchar(500) DEFAULT NULL COMMENT '//允许上传图片的后缀',
  `filesuffix` varchar(500) DEFAULT NULL COMMENT '//允许上传的非图片的后缀',
  `picmaxwidth` int(4) NOT NULL COMMENT '//图片超过尺寸裁剪',
  `picmaxsize` int(4) NOT NULL DEFAULT '0' COMMENT '//当大小大于 该值时也进行裁剪 0表示不进行操作',
  `cropwidth` int(4) NOT NULL DEFAULT '0' COMMENT '//裁剪至',
  `islog` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//开启日志功能',
  `isclear` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//开启日志清理',
  `isonline` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否开启收集信息',
  `isqq` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否显示客服',
  `urlmodel` tinyint(1) NOT NULL DEFAULT '2' COMMENT '//urlmodel',
  `urlsuffix` char(10) DEFAULT NULL COMMENT '//定义静态后缀',
  `adminpage` smallint(1) NOT NULL DEFAULT '0' COMMENT '//配置分页值',
  `userset` varchar(500) DEFAULT NULL COMMENT '//预留会员信息',
  `adminpath` char(20) DEFAULT NULL COMMENT '//后台',
  `date` datetime DEFAULT NULL COMMENT '//更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bh_systemconfig`
--

INSERT INTO `bh_systemconfig` (`Id`, `metatitle`, `metades`, `metakey`, `logo`, `companyname`, `companyurl`, `address`, `email`, `tel`, `contact`, `mobile`, `fax`, `qq`, `weixinpic`, `weibourl`, `icpnote`, `c_reg`, `shieldip`, `iptips`, `c_site`, `c_text`, `sys_parameter`, `sys_code`, `sys_notice`, `mailsmtp`, `mailport`, `mailname`, `mailpass`, `wordfilter`, `regread`, `copy_info`, `iswater`, `fontpos`, `waterpos`, `waterpic`, `fonttext`, `fontsize`, `fontcolor`, `facetype`, `rotation`, `wateralpha`, `picsize`, `filesize`, `picsuffix`, `filesuffix`, `picmaxwidth`, `picmaxsize`, `cropwidth`, `islog`, `isclear`, `isonline`, `isqq`, `urlmodel`, `urlsuffix`, `adminpage`, `userset`, `adminpath`, `date`) VALUES
(1, 'BHCMS 4.5', 'BHCMS 4.5 更方便快捷的CMS~', 'BHCMS 4.5', '', '南昌百恒科技', '', '', '', '', '', '', '', '', '', '', '赣ICP备88888888号-1', 0, '', '您的IP将禁用一段时间。', 0, '网站项目维护中...', '', '', '', 'smtp.163.com', '25', '', '', '', '', '', 0, 5, 9, '', 'JXBH.CN', 36, '#1ea5d7', 5, 0, 60, 10240, 10240, 'jpg,gif,png,jpeg', 'doc,docx,rar,xlsx,mp4', 1200, 2, 1000, 1, 1, 1, 1, 2, NULL, 15, '', '', '2018-03-01 06:24:40');

-- --------------------------------------------------------

--
-- 表的结构 `bh_title`
--

CREATE TABLE IF NOT EXISTS `bh_title` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `tables` char(50) DEFAULT NULL COMMENT '关联表',
  `tid` int(4) NOT NULL DEFAULT '0' COMMENT '//关联表ID',
  `title` varchar(200) DEFAULT NULL COMMENT '//title',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//页面关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//页面描述',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
