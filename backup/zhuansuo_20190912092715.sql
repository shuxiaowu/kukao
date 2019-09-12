/* This file is created by MySQLReback 2019-09-12 09:27:15 */
 /* 创建表结构 `lt_aboutus`  */
 DROP TABLE IF EXISTS `lt_aboutus`;/* MySQLReback Separation */ CREATE TABLE `lt_aboutus` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//预留属性(sty)',
  `title` varchar(200) DEFAULT NULL COMMENT '//title',
  `topic` char(200) NOT NULL COMMENT '//标题',
  `domain` char(20) DEFAULT NULL COMMENT '//个性域名',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `intro` varchar(255) DEFAULT NULL COMMENT '//简介内容',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//页面关键词',
  `metades` varchar(250) DEFAULT NULL,
  `content` text COMMENT '//内容',
  `linkurl` varchar(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` int(2) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_aboutus` */
 INSERT INTO `lt_aboutus` VALUES ('1','1',null,'关于我们',null,null,'博方教育•江西专硕在线网创立于2010年；隶属于北京大成卓立教育科技有限公司，是国内前沿的在职研究生领域综合性门户网站。博方教育•江西专硕在线网是全国在职研究生网上报名服...',null,null,'<p>
	<img src="/bofang/public/kindedit/attached/image/20190910/5d774aa87c9c9.jpg" alt="" />
</p>
<p>
	<br />
</p>
<p>
	<span style="color:#323232;font-family:&quot;font-size:18px;white-space:normal;background-color:#FFFFFF;"></span>
</p>
<p style="box-sizing:border-box;margin-top:50px;margin-bottom:10px;padding:0px;font-family:&quot;white-space:normal;background-color:#FFFFFF;font-size:18px;color:#323232;line-height:30px;">
	<span style="font-size:18px;">博方教育 • 江西专硕在线网创立于2010年；隶属于北京大成卓立教育科技有限公司，是国内前沿的在职研究生领域综合性门户网站。</span>
</p>
<p style="box-sizing:border-box;margin-top:50px;margin-bottom:10px;padding:0px;font-family:&quot;white-space:normal;background-color:#FFFFFF;font-size:18px;color:#323232;line-height:30px;">
	<span style="font-size:18px;">博方教育 • 江西专硕在线网是全国在职研究生网上报名服务平台，既是各在职研究生招生单位的宣传咨询平台，主要及时提供全国各大院校在职硕士（同等学力申硕、在职专业硕士）、在职博士、高级研修、中外合作办学等高端教育项目的招生动态，为求学者免费提供及时、准确、全面的教育资讯信息，以及为求学者提供快捷的网上在线咨询服务，为广大学员搭建一个与全国各招生单位进行交流的桥梁。</span>
</p>
<p style="box-sizing:border-box;margin-top:50px;margin-bottom:10px;padding:0px;font-family:&quot;white-space:normal;background-color:#FFFFFF;font-size:18px;color:#323232;line-height:30px;">
	<span style="font-size:18px;">博方教育 • 江西专硕在线网贯穿在职研究生招生宣传、招生咨询、考试提醒、在校报名、生源调剂、开课通知等整个工作流程，实现了在职研究生服务一体化。 为学员提供专业的报前咨询服务，为学员分析适合的学校与专业，为各个在职研究生招生单位提供精准有效的广告投放服务。</span>
</p>
<p style="text-align:right;box-sizing:border-box;margin-top:50px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;background-color:#FFFFFF;font-size:18px;">
	<span style="font-size:18px;">　　（来源：博方教育 • 江西专硕在线网）</span>
</p>
<p>
	<br />
</p>',null,'1','1','2019-09-10 15:04:21'),('3','1',null,'联系我们',null,null,'教学服务中心付老师：18907087200朱老师：18070135333教学地址江西省南昌市东湖区北京西路437号江西师范大学（老师大）物理楼115-122室...',null,null,'<p style="box-sizing:border-box;margin-top:40px;margin-bottom:30px;padding:0px;font-family:&quot;white-space:normal;font-size:20px;color:#0060AD;">
	<span style="font-size:18px;">教学服务中心</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;">
	<span style="font-size:18px;">付老师：18907087200</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;">
	<span style="font-size:18px;">朱老师：18070135333</span>
</p>
<p style="box-sizing:border-box;margin-top:40px;margin-bottom:30px;padding:0px;font-family:&quot;white-space:normal;font-size:20px;color:#0060AD;">
	<span style="font-size:18px;">教学地址</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;">
	<span style="font-size:18px;">江西省南昌市东湖区北京西路437号 江西师范大学（老师大）物理楼115-122室</span>
</p>',null,'1','4','2019-09-10 15:05:10'),('4','1',null,'报考指南',null,null,'报考指南',null,null,'报考指南',null,'1','3','2019-09-10 15:42:52'),('5','1',null,'招生简章',null,null,'招生简章...',null,null,'招生简章',null,'1','2','2019-09-10 15:04:39');/* MySQLReback Separation */
 /* 插入数据 `lt_aboutus` */
 INSERT INTO `lt_aboutus` VALUES ('6','1',null,'友情链接',null,null,'博方教育•江西专硕在线(www.jiangxizszx.com)是国内前沿的在职研究生领域综合性门户网站。愿与各同行网站在平等互惠的基础上建立良好的合作关系，共同发展，互相宣传。链接合作要求1、拒绝色情...',null,null,'<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;line-height:30px;">
	<span style="font-size:20px;">博方教育 • 江西专硕在线(www.jiangxizszx.com)是国内前沿的在职研究生领域综合性门户网站。愿与各同行网站在平等互惠的基础上建立良好的合作关系，共同发展，互相宣传。</span>
</p>
<p style="box-sizing:border-box;margin-top:60px;margin-bottom:30px;padding:0px;font-family:&quot;white-space:normal;font-size:20px;color:#0060AD;">
	<span style="font-size:20px;">链接合作要求</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;">
	<span style="font-size:20px;">1、拒绝色情、反动、有恶意代码、没有自主域名、设计低劣的网站。</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;">
	<span style="font-size:20px;">2、首页链接PR值大于等于4，内页链接PR值大于等于2。</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;">
	<span style="font-size:20px;">3、拒绝下拉式菜单连接、滚动连接、任意形式的js链接。</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;">
	<span style="font-size:20px;">4、已放置本站的链接</span>
</p>
<p style="box-sizing:border-box;margin-top:60px;margin-bottom:10px;padding:0px;font-family:&quot;white-space:normal;font-size:20px;color:#0060AD;">
	<span style="font-size:20px;">取消链接</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;line-height:25px;">
	<span style="font-size:20px;">本站将定期检查友情链接，如发现贵站无故删除我站链接、贵站不能访问或者发现恶意代码，我站将取消 与贵站的链接。</span>
</p>
<p style="box-sizing:border-box;margin-top:60px;margin-bottom:20px;padding:0px;font-family:&quot;white-space:normal;font-size:20px;color:#0060AD;">
	<span style="font-size:20px;">友情链接合作联系方式</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;line-height:22px;">
	<span style="font-size:20px;">朱老师：18070135333</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;">
	<span style="font-size:20px;">付老师：18907087200</span>
</p>',null,'1','5','2019-09-10 15:27:22');/* MySQLReback Separation */
 /* 插入数据 `lt_aboutus` */
 INSERT INTO `lt_aboutus` VALUES ('7','1',null,'法律声明',null,null,'特别注意请使用本网站前仔细阅读以下条款，当你开始使用本网站即视为您已仔细阅读本条款，同意接受本服务条款的所有规范并愿受其拘束，本服务条款对您及博方教育•江西专硕在线网(www.liangxizszx.com)均具有法...',null,null,'<p style="box-sizing:border-box;margin-top:60px;margin-bottom:20px;padding:0px;font-family:&quot;white-space:normal;font-size:20px;color:#0060AD;">
	<span style="font-size:20px;">特别注意</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:10px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;text-indent:2em;line-height:30px;">
	<span style="font-size:20px;">请使用本网站前仔细阅读以下条款，当你开始使用本网站即视为您已仔细阅读本条款，同意接受本服务条款的所有规范并愿受其拘束，本服务条款对您及博方教育 • 江西专硕在线网(www.liangxizszx.com)均具有法律效力。</span>
</p>
<p style="box-sizing:border-box;margin-top:60px;margin-bottom:20px;padding:0px;font-family:&quot;white-space:normal;font-size:20px;color:#0060AD;">
	<span style="font-size:20px;">免责声明</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:45px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;text-indent:2em;line-height:30px;">
	<span style="font-size:20px;">江西专硕在线网在建设过程中引用了因特网上的一些信息资源并对有明确来源的信息注明了出处，版权归原作者及原网站所有，如果您对本站信息资源版权的归属问题存有异议，请您致信，我们会立即做出答复并及时解决。如果您认为本站有侵犯您权益的行为，请通知我们，我们一定根据实际情况及时处理。 • 江西专硕在线网(www.liangxizszx.com)均具有法律效力。</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:45px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;text-indent:2em;line-height:30px;">
	<span style="font-size:20px;">本站中所提供的信息资源均按照原样提供，不附加任何形式的保证，包括适销性、适合于特定目的或不侵犯知识产权的保证。此外，江西专硕在线网不保证本站所提供信息材料的绝对准确性和完整性。江西专硕在线网可能在不通知用户的情况下随时变更本站的内容或在这些内容中介绍的产品和价格。</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:45px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;text-indent:2em;line-height:30px;">
	<span style="font-size:20px;">本站可能(但在法律上不负任何责任)会监控或审查用户在本站上发送或邮寄的信息或相互之间单独交流的任何领域，包括但不限于报考交流、公告牌或其他用户论坛以及任何交流内容。江西专硕在线网对有关任何这类交流的内容不承担任何责任，无论它们是否会因版权法引起诽谤、隐私、淫秽或其它方面的问题。江西专硕在线网保留删除包含被视为侮辱、诽谤、淫秽或其它不良内容的消息的权利。</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:45px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;text-indent:2em;line-height:30px;">
	<span style="font-size:20px;">用户明确同意网站服务的使用由用户个人承担风险。江西专硕在线网(www.jiangxizszx.com)不作任何类型的担保，不担保服务一定能满足用户的要求，也不担保服务一定不会受中断，对服务的安全性，出错发生都不作担保。</span>
</p>
<p style="box-sizing:border-box;margin-top:60px;margin-bottom:20px;padding:0px;font-family:&quot;white-space:normal;font-size:20px;color:#0060AD;">
	<span style="font-size:20px;">版权声明</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:45px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;text-indent:2em;line-height:30px;">
	<span style="font-size:20px;">未经江西专硕在线网的明确书面许可，任何人不得复制或在非江西专硕在线网所属的服务器上做镜像。本站所有页面的版式、图片版权均为本站所有，未经授权，不得用于除江西专硕在线网之外的任何站点。</span>
</p>
<p style="box-sizing:border-box;margin-top:60px;margin-bottom:20px;padding:0px;font-family:&quot;white-space:normal;font-size:20px;color:#0060AD;">
	<span style="font-size:20px;">网站的使用</span>
</p>
<p style="box-sizing:border-box;margin-top:0px;margin-bottom:45px;padding:0px;color:#333333;font-family:&quot;white-space:normal;font-size:18px;text-indent:2em;line-height:30px;">
	<span style="font-size:20px;">江西专硕在线网授权您观看和下载本网站上的内容，但仅供您个人而非商业使用，而且，对于原始内容中所含的版权和其他所有权声明，您必须在其副本中予以保留。您不得以任何方式修改、复制、公开展示、公布或分发这些材料或者以其他方式把它们用于任何公开或商业目的。禁止以任何目的把这些材料用于其他任何网站或网络计算机环境。本站上的内容受版权保护，任何未经授权的使用都可能构成对版权、商标和其他法律的破坏。如果您违反任何条款，您使用本站的授权将自动终止，同时您必须立即销毁任何已下载或打印好的材料。</span>
</p>',null,'1','1','2019-09-10 15:27:54');/* MySQLReback Separation */
 /* 创建表结构 `lt_adminauth`  */
 DROP TABLE IF EXISTS `lt_adminauth`;/* MySQLReback Separation */ CREATE TABLE `lt_adminauth` (
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
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_adminauth` */
 INSERT INTO `lt_adminauth` VALUES ('1','1',null,null,'1','系统管理',null,null,null,null,null,null,null,'21','2016-12-07 15:36:14'),('2','1',null,null,null,'网站管理',null,null,null,null,null,null,null,'20','2016-12-07 15:36:19'),('7','1','1',null,null,'管理首页',null,null,null,null,null,'1','gears','1','2016-12-07 15:34:25'),('8',null,'1',null,null,'管理员设置',null,null,null,null,null,'1','cog','2','2016-09-19 18:07:25'),('9',null,'1',null,null,'数据库管理',null,null,null,null,null,'1','database','3','2016-09-19 18:07:37'),('107','1','1','online/dataonline',null,'网站流量','online/dataonline',null,null,null,null,'1',null,'4','2019-09-02 15:28:04'),('108','1',null,null,null,'MPA',null,null,null,null,null,'1',null,'2','2019-09-02 16:53:14'),('15','1','2',null,null,'广告管理',null,null,null,null,null,null,'flag','16','2019-09-10 16:49:19'),('110','1',null,null,null,'MEM',null,null,null,null,null,'1',null,'4','2019-09-02 17:00:57'),('111','1',null,null,null,'MTA',null,null,null,null,null,'1',null,'5','2019-09-02 17:01:07'),('92','1','2',null,null,'产品管理',null,null,null,null,null,'1','puzzle-piece','4','2016-12-19 08:47:52'),('18','1','7','system/ipfilter',null,'Ip过滤设置','system/ipfilter',null,null,null,null,null,null,'3','2018-03-07 14:57:57'),('19','1','8','system/adminauth',null,'栏目管理','system/adminauth',null,null,null,'1',null,null,'1','2018-03-07 14:56:52'),('20','1','8','system/userlist',null,'管理用户','system/userlist',null,null,null,null,null,null,'3','2018-03-07 14:57:36'),('21','1','8','system/history',null,'登录日志','system/history',null,null,null,null,null,null,'4','2018-03-07 14:57:44'),('22','1','9','system/databackup',null,'数据库备份','system/databackup',null,null,null,null,null,null,'1','2018-03-07 14:56:19'),('23','1','9','system/databackuplist',null,'查看备份','system/databackuplist',null,null,null,null,null,null,'2','2018-03-07 14:56:32'),('88','1','2','website/onlinelist',null,'在线客服','website/onlinelist,tables=onlineqq','onlineqq',null,null,null,'1','user','7','2018-01-31 09:47:20'),('86','1','2','website/message',null,'留言信息','website/message,tables=message','message',null,null,null,'1','commenting','4','2018-01-31 09:46:40'),('87','1','2','website/linkslist',null,'友情链接','website/linkslist,tables=links','links',null,null,null,'1','link','6','2018-01-31 09:47:05'),('85','1','103','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype','information','inftype',null,null,'1','signal','2','2019-09-02 16:49:04'),('82','1','104','website/aboutlist',null,'关于我们','website/aboutlist,tables=aboutus','aboutus',null,null,null,'1','cube','1','2019-09-02 14:19:10'),('120','3','109','website/datatypelist',null,'类别管理','website/datatypelist,tables=inftype&sty=3','inftype',null,null,null,'1','th','1','2019-09-02 17:27:09'),('84','1','103','website/datatypelist',null,'类别管理','website/datatypelist,tables=inftype','inftype',null,null,null,'1','th','1','2019-09-02 16:48:46'),('96','1','153','website/datatypelist',null,'广告类目','website/datatypelist,tables=advtype','advtype',null,null,null,'1','upload','1','2019-09-10 16:54:31'),('91','2','108','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype&sty=2','information','inftype',null,null,'1','signal','2','2019-09-02 17:27:27'),('97','1','153','system/advlist',null,'广告管理','system/advlist',null,null,null,null,'1','camera','2','2019-09-10 16:54:51'),('95','1','92','product/productlist',null,'产品管理','product/productlist,tables=product','product',null,null,null,'1',null,'3','2019-09-03 10:31:31'),('94','1','92','product/promtaglist',null,'子类管理','product/promtaglist,tables=promtag','promtag',null,null,null,'1',null,'2','2019-09-03 10:31:18'),('93','1','92','product/proctaglist',null,'类别管理','product/proctaglist,tables=proctag','proctag',null,null,null,'1',null,'1','2019-09-03 10:25:06'),('90','2','108','website/datatypelist',null,'类别管理','website/datatypelist,tables=inftype&sty=2','inftype',null,null,null,'1','th','1','2019-09-02 17:27:18'),('77','1','8','system/admindepartment',null,'部门管理','system/admindepartment',null,null,null,null,'1',null,'2','2018-03-07 14:57:01'),('78','1','7','system/syswater',null,'水印设置','system/syswater',null,null,'1',null,null,null,'4','2018-03-07 14:58:07'),('98','1','2','website/tdklist',null,'TDK管理','website/tdklist',null,null,null,null,'1','cogs','8','2017-08-05 13:31:51'),('109','1',null,null,null,'MPACC',null,null,null,null,null,'1',null,'3','2019-09-02 17:00:41'),('100','1','99','seo/seoconf',null,'参数设置','seo/seoconf',null,null,null,null,'1',null,'1','2017-08-17 16:32:13'),('101','1','99','seo/seosend',null,'手动提交链接','seo/seosend',null,null,null,null,'1',null,'2','2017-08-17 16:32:38'),('102','1','1','seo/map',null,'网站地图','seo/map',null,null,null,null,'1','map-o','9','2017-08-17 16:31:36'),('103','1',null,null,null,'MBA',null,null,null,null,null,'1','asterisk','1','2019-09-02 14:18:04');/* MySQLReback Separation */
 /* 插入数据 `lt_adminauth` */
 INSERT INTO `lt_adminauth` VALUES ('104','1',null,null,null,'关于我们',null,null,null,null,null,'1','euro','8','2019-09-02 14:18:59');/* MySQLReback Separation */
 /* 插入数据 `lt_adminauth` */
 INSERT INTO `lt_adminauth` VALUES ('105','1','2','system/sysmod','1','网站设置','system/sysmod',null,null,null,null,'1','minus','10','2019-09-02 14:43:28'),('106','1','2','system/syscompany',null,'公司设置','system/syscompany',null,null,null,null,'1','list','11','2019-09-02 14:43:45'),('112','1',null,null,null,'MAUD',null,null,null,null,null,'1',null,'6','2019-09-02 17:01:16'),('113','1',null,null,null,'MLIS',null,null,null,null,null,'1',null,'7','2019-09-02 17:01:30'),('114','1',null,null,null,'名师团队',null,null,null,null,null,'1',null,'8','2019-09-02 17:16:38'),('115','1',null,null,null,'视频课程',null,null,null,null,null,'1',null,'9','2019-09-02 17:16:53'),('116','1',null,null,null,'管联资讯',null,null,null,null,null,'1',null,'10','2019-09-02 17:17:14'),('117','1',null,null,null,'历年真题',null,null,null,null,null,'1',null,'11','2019-09-02 17:17:26'),('118','1',null,null,null,'管联专题',null,null,null,null,null,'1',null,'12','2019-09-02 17:17:35'),('119','1',null,null,null,'报考中心',null,null,null,null,null,'1',null,'12','2019-09-02 17:17:55'),('121','3','109','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype&sty=3','information','inftype',null,null,'1','signal','2','2019-09-02 17:25:21'),('122','4','110','website/datatypelist',null,'类别管理','website/datatypelist,tables=inftype&sty=4','inftype',null,null,null,'1','th','1','2019-09-02 17:30:03'),('123','4','110','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype&sty=4','information','inftype',null,null,'1','signal','2','2019-09-02 17:30:44'),('124','5','111','website/datatypelist',null,'类别管理','website/datatypelist,tables=inftype&sty=5','inftype',null,null,null,'1','th','1','2019-09-02 17:34:15'),('125','5','111','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype&sty=5','information','inftype',null,null,'1','signal','2','2019-09-02 17:32:10'),('126','6','112','website/datatypelist',null,'类别管理','website/datatypelist,tables=inftype&sty=6','inftype',null,null,null,'1','th','1','2019-09-02 17:32:49'),('127','6','112','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype&sty=6','information','inftype',null,null,'1','signal','2','2019-09-02 17:33:08'),('128','7','113','website/datatypelist',null,'类别管理','website/datatypelist,tables=inftype&sty=7','inftype',null,null,null,'1','th','1','2019-09-02 17:33:32'),('129','7','113','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype&sty=7','information','inftype',null,null,'1','signal','2','2019-09-02 17:33:53'),('130','8','114','website/datatypelist',null,'类别管理','website/datatypelist,tables=inftype&sty=8','inftype',null,null,null,'1','th','1','2019-09-02 17:53:45'),('131','8','114','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype&sty=8','information','inftype',null,null,'1','signal','2','2019-09-03 09:52:15'),('139','1',null,null,null,'会员',null,null,null,null,null,'1','user','1','2019-09-03 15:35:01'),('140','1','139','website/menberlist',null,'会员管理','website/menberlist,tables=menber','menber',null,null,null,'1','user','1','2019-09-03 15:36:02'),('134','10','116','website/datatypelist',null,'类别管理','website/datatypelist,tables=inftype&sty=10','inftype',null,null,null,'1','th','1','2019-09-02 18:02:27'),('135','10','116','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype&sty=10','information','inftype',null,null,'1','signal','2','2019-09-03 10:00:10'),('137','9','115','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype&sty=9','information','inftype',null,null,'1','signal','3','2019-09-03 10:32:26'),('138','1','115','website/datatypelist',null,'学科管理','website/datatypelist,tables=course','course',null,null,null,'1','asterisk','2','2019-09-03 11:01:35'),('141','1','119','website/apply',null,'报考管理','website/apply,tables=apply','apply',null,null,null,'1','th','1','2019-09-05 12:00:36'),('142','1',null,null,null,'江西热门院校',null,null,null,null,null,'1',null,'13','2019-09-05 15:40:29'),('143','1','142','website/datatypelist',null,'资料管理','website/datatypelist,tables=hotschool','hotschool',null,null,null,'1','signal','1','2019-09-05 15:45:02'),('144','11','118','website/datatypelist',null,'类别管理','website/datatypelist,tables=inftype&sty=11','inftype',null,null,null,'1','th','1','2019-09-05 16:50:10'),('145','11','118','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype&sty=11','information','inftype',null,null,'1','signal','2','2019-09-05 16:50:44'),('146','12','117','website/datatypelist',null,'类别管理','website/datatypelist,tables=inftype&sty=12','inftype',null,null,null,'1','th','1','2019-09-06 09:56:17'),('147','12','117','website/datalist',null,'资料管理','website/datalist,tables=information&martables=inftype&sty=12','information','inftype',null,null,'1','signal','2','2019-09-06 09:56:44');/* MySQLReback Separation */
 /* 插入数据 `lt_adminauth` */
 INSERT INTO `lt_adminauth` VALUES ('148','1',null,null,null,'考研日历',null,null,null,null,null,'1',null,'15','2019-09-06 17:15:04');/* MySQLReback Separation */
 /* 插入数据 `lt_adminauth` */
 INSERT INTO `lt_adminauth` VALUES ('149','1','148','website/calendarlist',null,'资料管联','website/calendarlist,tables=calendar','calendar',null,null,null,'1','signal','1','2019-09-06 17:21:29'),('150','1','117','website/datatypelist',null,'年份','website/datatypelist,tables=years','years',null,null,null,'1','calendar','1','2019-09-10 13:51:18'),('153','1',null,null,null,'广告管理',null,null,null,null,null,'1',null,'16','2019-09-10 16:49:58');/* MySQLReback Separation */
 /* 创建表结构 `lt_admindepartment`  */
 DROP TABLE IF EXISTS `lt_admindepartment`;/* MySQLReback Separation */ CREATE TABLE `lt_admindepartment` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `topic` varchar(50) DEFAULT NULL COMMENT '//topic',
  `auth` varchar(1500) DEFAULT NULL COMMENT '//后台权限',
  `ord` int(2) DEFAULT '0' COMMENT '//排序',
  `date` datetime DEFAULT NULL COMMENT '//时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_admindepartment` */
 INSERT INTO `lt_admindepartment` VALUES ('1','超级管理员','139,140,103,84,85,108,90,91,109,120,121,110,122,123,111,124,125,112,126,127,113,128,129,104,82,114,130,131,115,138,137,116,134,135,117,146,150,147,118,144,145,119,141,142,143,148,149,153,96,97,2,87,105,106,15,1,7,18,78,8,19,77,20,21,107','1','2019-09-10 16:55:09');/* MySQLReback Separation */
 /* 创建表结构 `lt_adminrecord`  */
 DROP TABLE IF EXISTS `lt_adminrecord`;/* MySQLReback Separation */ CREATE TABLE `lt_adminrecord` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `user` char(20) NOT NULL COMMENT '//管理员用户名',
  `ip` char(20) NOT NULL COMMENT '//登录IP',
  `date` datetime DEFAULT NULL COMMENT '//登录时间',
  PRIMARY KEY (`Id`),
  FULLTEXT KEY `user` (`user`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_adminrecord` */
 INSERT INTO `lt_adminrecord` VALUES ('1','admin','0.0.0.0','2019-08-28 13:18:40'),('2','admin','192.168.1.200','2019-08-28 13:28:06'),('3','admin','192.168.1.200','2019-08-28 13:36:54'),('4','admin','192.168.1.11','2019-08-28 14:12:18'),('5','admin','192.168.1.200','2019-08-28 18:14:22'),('6','admin','192.168.1.200','2019-09-02 10:51:22'),('7','admin','192.168.1.200','2019-09-02 13:53:13'),('8','admin','192.168.1.200','2019-09-02 15:16:51'),('9','admin','192.168.1.200','2019-09-03 09:10:09'),('10','admin','192.168.1.200','2019-09-04 09:12:51'),('11','admin','192.168.1.200','2019-09-04 11:12:37'),('12','admin','192.168.1.200','2019-09-04 14:02:53'),('13','admin','192.168.1.200','2019-09-04 15:53:41'),('14','admin','192.168.1.200','2019-09-04 17:26:16'),('15','admin','192.168.1.200','2019-09-05 11:58:03'),('16','admin','192.168.1.200','2019-09-05 13:14:52'),('17','admin','192.168.1.100','2019-09-05 16:04:23'),('18','admin','192.168.1.200','2019-09-05 18:05:13'),('19','admin','192.168.1.200','2019-09-06 09:11:14'),('20','admin','192.168.1.200','2019-09-06 14:00:41'),('21','admin','192.168.1.200','2019-09-10 09:44:37'),('22','admin','192.168.1.200','2019-09-10 13:49:37'),('23','admin','192.168.1.200','2019-09-11 09:55:04'),('24','admin','192.168.1.200','2019-09-11 13:59:28'),('25','admin','192.168.1.200','2019-09-12 09:27:12');/* MySQLReback Separation */
 /* 创建表结构 `lt_adminuser`  */
 DROP TABLE IF EXISTS `lt_adminuser`;/* MySQLReback Separation */ CREATE TABLE `lt_adminuser` (
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_adminuser` */
 INSERT INTO `lt_adminuser` VALUES ('1','1','admin','b4661096e428c07527e6d5f7b0a9fc67','975836','admin','admin@163.com',null,'26','192.168.1.200','2019-09-12 09:27:12','2015-05-25 17:54:12'),('3',null,'18279559717','2a3b026349aacfea1c67e333ee988758','257351','xiaozhong',null,null,null,null,null,'2019-09-03 16:49:07');/* MySQLReback Separation */
 /* 创建表结构 `lt_advdata`  */
 DROP TABLE IF EXISTS `lt_advdata`;/* MySQLReback Separation */ CREATE TABLE `lt_advdata` (
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_advdata` */
 INSERT INTO `lt_advdata` VALUES ('1','广告','20190910/5d776288b23b0.jpg',null,null,'1','1','###',null,'1','1','2019-09-10 16:44:58'),('2','广告','20190911/5d7855ef0cbbc.jpg',null,null,'1','1','#',null,'1','2','2019-09-11 10:03:33'),('3','广告','20190911/5d78560c18a25.jpg',null,null,'1','1','#',null,'1','3','2019-09-11 10:09:04'),('4','广告','20190911/5d7856d97a8de.jpg',null,null,'2','1','#',null,'1','1','2019-09-11 10:07:24'),('5','广告','20190911/5d7856f3cb0be.jpg',null,null,'2','1','#',null,'1','2','2019-09-11 10:08:50'),('6','广告','20190911/5d78570bceae8.jpg',null,null,'2','1','#',null,'1','3','2019-09-11 10:08:15'),('7','mpa','20190911/5d7857cb44c6c.jpg',null,null,'3','1','#',null,'1','1','2019-09-11 10:11:26'),('8','广告','20190911/5d7857ddc3251.jpg',null,null,'3','1','#',null,'1','2','2019-09-11 10:11:51'),('9','广告','20190911/5d7857f2dc3cd.jpg',null,null,'3','1','#',null,'1','3','2019-09-11 10:12:07'),('10','广告','20190911/5d78580aad5a3.jpg',null,null,'4','1','#',null,'1','1','2019-09-11 10:12:29'),('11','广告','20190911/5d785819dfefa.jpg',null,null,'4','1','#',null,'1','2','2019-09-11 10:12:45'),('12','广告','20190911/5d78585c913da.jpg',null,null,'4','1','#',null,'1','1','2019-09-11 10:13:54'),('13','广告','20190911/5d7860064a355.jpg',null,null,'5','1','#',null,'1','1','2019-09-11 10:46:32'),('14','广告','20190911/5d7860180139d.jpg',null,null,'5','1','#',null,'1','2','2019-09-11 10:46:51');/* MySQLReback Separation */
 /* 创建表结构 `lt_advtype`  */
 DROP TABLE IF EXISTS `lt_advtype`;/* MySQLReback Separation */ CREATE TABLE `lt_advtype` (
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_advtype` */
 INSERT INTO `lt_advtype` VALUES ('1','1',null,'首页顶部轮播图 662px*357px',null,'1','1','2019-09-10 16:39:49'),('2','1',null,'首页MBA轮播图300px*362px',null,'2','1','2019-09-10 16:56:45'),('3','1',null,'首页MPA轮播图300px*362px',null,'3','1','2019-09-10 16:56:59'),('4','1',null,'首页MPACC轮播图300px*362px',null,'4','1','2019-09-10 16:57:19'),('5','1',null,'M页面662px*357px',null,'5','1','2019-09-11 10:41:26');/* MySQLReback Separation */
 /* 创建表结构 `lt_apply`  */
 DROP TABLE IF EXISTS `lt_apply`;/* MySQLReback Separation */ CREATE TABLE `lt_apply` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `degree` tinyint(1) NOT NULL DEFAULT '0',
  `simpletext` varchar(1000) DEFAULT NULL,
  `name` char(50) DEFAULT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `phone` int(20) NOT NULL DEFAULT '0',
  `email` varchar(100) DEFAULT NULL,
  `education` char(50) DEFAULT NULL,
  `enddate` datetime NOT NULL,
  `area` varchar(100) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(200) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_apply` */
 INSERT INTO `lt_apply` VALUES ('18',null,'df','df',null,'2147483647','115454@qq.com','小学','2019-09-18 00:00:00','广西省柳州市鱼峰区','sd','1','192.168.1.200','2019-09-05 00:00:00'),('17',null,'dsf','df',null,'2147483647','dfdfdsf@qq.com','小学','2019-09-25 00:00:00','海南省保亭黎族苗族自治县市请输入区','d','1','192.168.1.200','2019-09-05 00:00:00'),('16',null,'sd','d',null,'2147483647','17454554@qq.com','小学','2019-09-16 00:00:00','广西省贺州市昭平县','sds','1',null,'2019-09-05 00:00:00'),('15',null,'dfg','fg',null,'2147483647','fg','小学','2019-09-30 00:00:00','广东省惠州市惠东县','gh','1',null,'2019-09-05 00:00:00');/* MySQLReback Separation */
 /* 创建表结构 `lt_calendar`  */
 DROP TABLE IF EXISTS `lt_calendar`;/* MySQLReback Separation */ CREATE TABLE `lt_calendar` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sty` int(11) NOT NULL,
  `school` varchar(255) DEFAULT NULL,
  `changemajor` varchar(255) DEFAULT NULL,
  `ord` tinyint(1) NOT NULL DEFAULT '1',
  `date` datetime NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `topic` varchar(255) DEFAULT NULL,
  `direct` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_calendar` */
 INSERT INTO `lt_calendar` VALUES ('8','1','清华大学','计算机','1','2019-09-24 17:38:07','1','2019年管联专硕数学练习题','清华研究生'),('7','1','清华大学','计算机','1','2019-09-24 17:38:07','1','2019年管联专硕数学练习题','清华研究生'),('9','1','清华大学','计算机','1','2019-09-24 17:38:07','1','2019年管联专硕数学练习题','清华研究生'),('10','1','清华大学','计算机','1','2019-09-24 17:38:07','1','2019年管联专硕数学练习题','清华研究生'),('11','1','清华大学','计算机','1','2019-09-24 17:38:07','1','2019年管联专硕数学练习题','清华研究生'),('12','1','清华大学','计算机','1','2019-09-24 17:38:07','1','2019年管联专硕数学练习题','清华研究生'),('13','1','清华大学','计算机','1','2019-09-24 17:38:07','1','2019年管联专硕数学练习题','清华研究生'),('14','1','清华大学','计算机','1','2019-09-24 17:38:07','1','2019年管联专硕数学练习题','清华研究生'),('15','1','清华大学','计算机','1','2019-09-24 17:38:07','1','2019年管联专硕数学练习题','清华研究生');/* MySQLReback Separation */
 /* 创建表结构 `lt_course`  */
 DROP TABLE IF EXISTS `lt_course`;/* MySQLReback Separation */ CREATE TABLE `lt_course` (
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_course` */
 INSERT INTO `lt_course` VALUES ('1','1',null,'英语二',null,'5','1','2019-09-03 10:46:11'),('2','1',null,'逻辑',null,'3','1','2019-09-03 10:45:48'),('4','1',null,'写作',null,'2','1','2019-09-03 10:46:01'),('5','1',null,'英语',null,'4','1','2019-09-03 10:46:26'),('12','1',null,'数学',null,'1','1','2019-09-03 10:44:50');/* MySQLReback Separation */
 /* 创建表结构 `lt_degree`  */
 DROP TABLE IF EXISTS `lt_degree`;/* MySQLReback Separation */ CREATE TABLE `lt_degree` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(500) DEFAULT NULL COMMENT '//名称',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_degree` */
 INSERT INTO `lt_degree` VALUES ('1','MBA'),('2','MPA'),('3','MPACC'),('4','MEA'),('5','MTA'),('6','MAUD'),('7','MLIS');/* MySQLReback Separation */
 /* 创建表结构 `lt_hotschool`  */
 DROP TABLE IF EXISTS `lt_hotschool`;/* MySQLReback Separation */ CREATE TABLE `lt_hotschool` (
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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_hotschool` */
 INSERT INTO `lt_hotschool` VALUES ('16','1',null,'南昌航空大学',null,'6','1','2019-09-05 15:47:18'),('15','1',null,'南昌理工',null,'4','1','2019-09-05 15:47:04'),('3','2',null,'新闻资讯',null,'1','1','2017-08-17 17:16:48'),('14','1',null,'江西现代大学',null,'3','1','2019-09-05 15:46:45'),('13','1',null,'蓝天大学',null,'2','1','2019-09-05 15:46:32'),('12','1',null,'南昌大学',null,'1','1','2019-09-05 15:45:58'),('7','8',null,'数学',null,'1','1','2019-09-03 09:18:03'),('8','8',null,'英语',null,'2','1','2019-09-03 09:18:12'),('9','8',null,'逻辑',null,'3','1','2019-09-03 09:18:21'),('10','9',null,'免费视频',null,'1','1','2019-09-03 09:57:09'),('11','9',null,'会员视频',null,'2','1','2019-09-03 09:57:39'),('17','1',null,'南昌附属大学',null,'5','1','2019-09-05 15:47:47');/* MySQLReback Separation */
 /* 创建表结构 `lt_information`  */
 DROP TABLE IF EXISTS `lt_information`;/* MySQLReback Separation */ CREATE TABLE `lt_information` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `joptitle` varchar(500) DEFAULT NULL,
  `course` int(11) NOT NULL DEFAULT '0',
  `sty` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//预留属性(sty)',
  `tag` varchar(50) DEFAULT NULL COMMENT '//TAG标签',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否置顶',
  `ishot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否热门新闻',
  `inftype` int(4) NOT NULL DEFAULT '0' COMMENT '//新闻分类ID',
  `years` int(11) NOT NULL DEFAULT '0',
  `topic` varchar(200) DEFAULT NULL COMMENT '//标题',
  `title` varchar(200) DEFAULT NULL COMMENT '//title',
  `intro` varchar(250) DEFAULT NULL COMMENT '//新闻简介',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//描述',
  `linkurl` varchar(200) DEFAULT NULL COMMENT '//跳转链接',
  `advlinkurl` varchar(1000) DEFAULT NULL COMMENT '//会员广告链接',
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
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_information` */
 INSERT INTO `lt_information` VALUES ('1',null,null,'1',null,'1',null,'2',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,'<a href="http://192.168.1.200/h5/home/index/degree/urlname/mba.html" title="" alt="" style="box-sizing:border-box;border:none;outline:none;background-color:#FFFFFF;color:#337AB7;font-family:" font-size:14px;white-space:normal;text-decoration-line:none="" !important;"="">
<div class="sc_text_intro" style="box-sizing:border-box;margin:0px;padding:0px 0px 25px;transition:all 0.5s ease 0s;font-size:16px;color:#333333;line-height:22px;">
	武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...
</div>
</a>','1',null,null,null,'1','12','2019-09-02 16:51:35'),('2',null,null,'1',null,'1',null,'1',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','1','2019-09-02 16:51:35'),('3',null,null,'1',null,null,null,'4',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','5','2019-09-02 16:51:35'),('4',null,null,'1',null,null,null,'5',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','5','2019-09-02 16:51:35'),('5',null,null,'1',null,null,null,'6',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1',null,'2019-09-02 16:51:35'),('6','博方教育御用名师',null,'8',null,null,null,'7',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。
                                北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,null,null,'北京社科赛斯教育科技有限公司创始人、董事长。<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。<br />','1',null,null,null,'1',null,'2019-09-03 09:52:28'),('7',null,'4','9',null,null,null,'11',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4','http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,'20190903/5d6de19140fd3.jpg',null,'sd','1',null,null,null,'1','30','2019-09-03 10:57:26'),('8',null,'4','9',null,null,null,'11',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1','3','2019-09-03 10:57:26'),('9',null,'4','9',null,null,null,'11',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 10:57:26'),('10',null,'4','9',null,null,null,'11',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 10:57:26');/* MySQLReback Separation */
 /* 插入数据 `lt_information` */
 INSERT INTO `lt_information` VALUES ('11',null,'4','9',null,null,null,'11',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 10:57:26');/* MySQLReback Separation */
 /* 插入数据 `lt_information` */
 INSERT INTO `lt_information` VALUES ('12',null,'4','9',null,null,null,'11',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1','1','2019-09-03 10:57:26'),('13',null,'4','9',null,null,null,'10',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1','67','2019-09-03 10:57:26'),('14',null,'4','9',null,null,null,'11',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 10:57:26'),('15',null,'4','9',null,null,null,'11',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1','42','2019-09-03 10:57:26'),('16',null,'4','9',null,null,null,'10',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1','69','2019-09-03 10:57:26'),('17',null,'4','9',null,null,null,'10',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1','65','2019-09-03 10:57:26'),('18',null,'4','9',null,null,null,'10',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1','8','2019-09-03 10:57:26'),('19',null,'4','9',null,null,null,'10',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1','6','2019-09-03 10:57:26'),('20',null,'4','9',null,null,null,'10',null,'英语课程',null,'sda',null,null,'http://img.ksbbs.com/asset/Mon_1703/05cacb4e02f9d9e.mp4',null,null,null,'20190903/5d6de19140fd3.jpg',null,null,'1',null,null,null,'1','8','2019-09-03 10:57:26'),('21',null,null,'1',null,null,null,'1',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1',null,'2019-09-02 16:51:35'),('22',null,null,'1',null,null,null,'1',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1',null,'2019-09-02 16:51:35'),('23',null,null,'1',null,null,null,'1',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','2','2019-09-02 16:51:35'),('24',null,null,'1',null,null,null,'1',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1',null,'2019-09-02 16:51:35'),('25',null,null,'1',null,'1',null,'2',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','1','2019-09-02 16:51:35'),('26',null,null,'1',null,null,null,'5',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','22','2019-09-02 16:51:35');/* MySQLReback Separation */
 /* 插入数据 `lt_information` */
 INSERT INTO `lt_information` VALUES ('27',null,null,'1',null,'1',null,'1',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1',null,'2019-09-02 16:51:35');/* MySQLReback Separation */
 /* 插入数据 `lt_information` */
 INSERT INTO `lt_information` VALUES ('28',null,null,'1',null,'1',null,'1',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1',null,'2019-09-02 16:51:35'),('29',null,null,'1',null,null,null,'4',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1',null,'2019-09-02 16:51:35'),('30','博方教育御用名师',null,'8',null,null,null,'7',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。 北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,'20190903/5d6dc7822b02c.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 09:52:28'),('31','博方教育御用名师',null,'8',null,null,null,'7',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。
                                北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,'20190903/5d6dc7822b02c.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 09:52:28'),('32','博方教育御用名师',null,'8',null,null,null,'7',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。
                                北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,'20190903/5d6dc7822b02c.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 09:52:28'),('33','博方教育御用名师',null,'8',null,null,null,'8',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,'20190903/5d6dc7822b02c.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 09:52:28'),('34',null,null,'1',null,null,null,'4',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1',null,'2019-09-02 16:51:35'),('35',null,null,'1',null,null,null,'5',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','9','2019-09-02 16:51:35'),('36',null,null,'1',null,null,null,'6',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','1','2019-09-02 16:51:35');/* MySQLReback Separation */
 /* 插入数据 `lt_information` */
 INSERT INTO `lt_information` VALUES ('37',null,null,'11',null,null,null,'12',null,'南昌大学名师讲解管联专硕写作实际应用技巧...',null,'南昌大学名师讲解管联专硕写作实际应用技巧...',null,null,null,null,null,null,null,null,'<div class="wrap guide clearfix">
	<div class="con">
		<div class="guide-left fl">
			<h1>
				<span class="hide">在职研究生报考流程</span> 
			</h1>
引言
		</div>
		<div class="guide-right fl">
			近年来，我国的教育事业逐步发展壮大，为整体国民素质的提高起到了强大的推动作用。其中，在职研究生教育事业为已经参加工作的人员提供了二次进修的机会。根据咨询数据发现，很多在职人员对在职研究生报考流程不太了解，此专题为大家详细介绍<span class="color3">同等学力、专业硕士、中外合作办学、高级研修班</span>四种不同类型在职研究生报考流程，帮助有意考研的在职人群顺利报考在职研究生。
		</div>
	</div>
</div>
<div class="wrap tdxl clearfix">
	<div class="con">
		<div class="wrap-tit">
			<h2>
				同等学力申硕在职研究生报考流程
			</h2>
		</div>
		<div class="wrap-con">
			<ul>
				<li class="tdxl-b1">
					<div class="tdxl-bg">
					</div>
<span class="tdxl-cap">一</span> 
					<p class="tdxl-tit">
						提出申请
					</p>
					<div class="tdxl-con">
						学员需要按照规定先给意向院校提交个人相关材料，材料经院校审核通过以后，方可办理入学手续；<a href="https://www.eduego.com/baoming.html" class="color1" target="_blank">→课程班报名入口←</a> 
					</div>
				</li>
				<li class="tdxl-b2">
					<div class="tdxl-bg">
					</div>
<span class="tdxl-cap">二</span> 
					<p class="tdxl-tit">
						课程班学习
					</p>
					<div class="tdxl-con">
						在学习期限内，完成课程班的学习，通过院校组织的课程考试，即可获得相关结业证书；
					</div>
				</li>
				<li class="tdxl-b3">
					<div class="tdxl-bg">
					</div>
<span class="tdxl-cap">三</span> 
					<p class="tdxl-tit">
						申硕报名
					</p>
					<div class="tdxl-con">
						学员获得结业证书以后可以在<span class="color1"><a href="https://www.cdgdc.edu.cn/" rel="nofollow" target="_blank">学位网</a></span>进行申硕报名，报名时间是在每年的<span class="color3">三月份中旬</span>左右；
					</div>
				</li>
				<li class="tdxl-b4 tdxl-bs">
					<div class="tdxl-bg">
					</div>
<span class="tdxl-cap">六</span> 
					<p class="tdxl-tit">
						论文答辩并获得证书
					</p>
					<div class="tdxl-con">
						通过考试以后，向院校提出论文答辩申请，通过论文答辩环节即可获得院校颁发的硕士学位证书。
					</div>
				</li>
				<li class="tdxl-b5 tdxl-bs">
					<div class="tdxl-bg">
					</div>
<span class="tdxl-cap">五</span> 
					<p class="tdxl-tit">
						参加考试
					</p>
					<div class="tdxl-con">
						学员打印完准考证需要在业余时间做好充分的考试准备。考试时间一般是在每年<span class="color3">5月份下旬</span>。
					</div>
				</li>
				<li class="tdxl-b6 tdxl-bs">
					<div class="tdxl-bg">
					</div>
<span class="tdxl-cap">四</span> 
					<p class="tdxl-tit">
						现场确认及打印准考证
					</p>
					<div class="tdxl-con">
						网报之后，按照学校规定的地点和时间进行现场确认，确认无误后方可打印准考证；
					</div>
				</li>
			</ul>
			<div class="tdxl-tip">
				<b>注：</b>大专学历只能获得结业证书，不能参加申硕考试。详情查看：<a href="https://www.eduego.com/zt/tdxlbktj/index.html" class="color1" target="_blank" title="同等学力申硕报考条件">同等学力申硕报考条件</a> 
			</div>
		</div>
	</div>
</div>
<div class="wrap zyss clearfix">
	<div class="con">
		<div class="wrap-tit">
			<h2>
				专业硕士在职研究生报考流程
			</h2>
		</div>
		<div class="wrap-con">
			<ul class="clearfix">
				<li>
					<div class="zyss-top">
						<p>
							01
						</p>
<i class="icon1"></i> 
					</div>
					<div class="zyss-btm">
						<div class="zyss-tit">
							网上报名
						</div>
						<div class="zyss-con">
							报考人员可在<a href="https://yz.chsi.com.cn/" class="color1" rel="nofollow" target="_blank">研招网</a>上报名，预报名在每年<span class="color3">9月份</span>，正式报名在<span class="color3">10月份</span>。
						</div>
					</div>
				</li>
				<li>
					<div class="zyss-top">
						<p>
							02
						</p>
<i class="icon2"></i> 
					</div>
					<div class="zyss-btm">
						<div class="zyss-tit">
							现场确认
						</div>
						<div class="zyss-con">
							报考人员需按照院校规定的时间到指定地点，对报名信息进行现场确认。
						</div>
					</div>
				</li>
				<li>
					<div class="zyss-top">
						<p>
							03
						</p>
<i class="icon3"></i> 
					</div>
					<div class="zyss-btm">
						<div class="zyss-tit">
							打印准考证及参加联考
						</div>
						<div class="zyss-con">
							考试时间一般是<span class="color3">12月下旬</span>，准考证打印时间在<span class="color3">考试前一周</span>。
						</div>
					</div>
				</li>
				<li>
					<div class="zyss-top">
						<p>
							04
						</p>
<i class="icon4"></i> 
					</div>
					<div class="zyss-btm">
						<div class="zyss-tit">
							复试及调剂
						</div>
						<div class="zyss-con">
							复试及调剂时间在次年<span class="color3">3月-4月</span>，联考成绩达到国家线及院校线可参加复试。
						</div>
					</div>
				</li>
				<li>
					<div class="zyss-top">
						<p>
							05
						</p>
<i class="icon5"></i> 
					</div>
					<div class="zyss-btm">
						<div class="zyss-tit">
							入校学习
						</div>
						<div class="zyss-con">
							通过所有考核之后，被院校择优录取的学员方可入校进行专业课程学习。
						</div>
					</div>
				</li>
				<li>
					<div class="zyss-top">
						<p>
							06
						</p>
<i class="icon6"></i> 
					</div>
					<div class="zyss-btm">
						<div class="zyss-tit">
							论文答辩及获得证书
						</div>
						<div class="zyss-con">
							修满规定学分，需进行专业论文答辩，通过答辩后可获得双证。
						</div>
					</div>
				</li>
			</ul>
			<div class="tdxl-tip">
				<b>注：</b>不同专业的报考条件有所差别。详情查看：<a href="https://www.eduego.com/zt/zyssbktj/index.html" class="color1" target="_blank" title="专业学位硕士报考条件">专业学位硕士报考条件</a> 
			</div>
		</div>
	</div>
</div>
<div class="wrap zwhb clearfix">
	<div class="con">
		<div class="wrap-tit">
			<h2>
				中外合作办学在职研究生报考流程
			</h2>
		</div>
		<div class="wrap-con">
			<ul>
				<li>
					<div class="zwhb-tit">
						第一步：选择院校及专业
					</div>
					<div class="zwhb-con">
						中外合作办学是自主招生的，招生报名时间一般是由院校规定的。
					</div>
				</li>
				<li>
					<div class="zwhb-tit">
						第二步：提交资料
					</div>
					<div class="zwhb-con">
						一般包含身份证(护照)复印件、学位学历证书复印件、个人简历、推荐表、大学成绩单复印件等。
					</div>
				</li>
				<li>
					<div class="zwhb-tit">
						第三步：院校考核
					</div>
					<div class="zwhb-con">
						中外合作办学没有固定的考试，一般可以分为以下几种情况：
						<p class="mt10">
							1、参加英语水平考试，不过一般<span class="color3">CET-6</span>达到<span class="color3">425分</span>以上，雅思<span class="color3">6.5分</span>以上，托福<span class="color3">80分</span>以上可以免考。
						</p>
						<p>
							2、参加全国研究生统一考试和院校复试，通过后可入校学习。
						</p>
						<p>
							3、需参加外方院校组织的入学考试或面试，然后择优录取。
						</p>
					</div>
				</li>
				<li>
					<div class="zwhb-tit">
						第四步：上课学习
					</div>
					<div class="zwhb-con">
						在职读研人员收到录取通知书并入校参加课程学习，课程学习一般在国内进行，但有些中外合作办学的项目有出国学习、考察等方面的项目。
					</div>
				</li>
				<li>
					<div class="zwhb-tit">
						第五步：获得证书
					</div>
					<div class="zwhb-con">
						学员毕业获以下几类证书：
						<p class="mt10">
							1、中方课程结业证书、外方硕士学位证书
						</p>
						<p>
							2、中方硕士学位证书、外方硕士学位证书
						</p>
					</div>
				</li>
			</ul>
			<div class="tdxl-tip">
				<b>注：</b>获得外方院校的证书需到教育部留学服务中心进行学位和学历认证。推荐专题：<a href="https://www.eduego.com/zt/zwhbbktj/index.html" class="color1" target="_blank" title="中外合作办学报考条件">中外合作办学报考条件</a> 
			</div>
		</div>
	</div>
</div>
<div class="wrap tdxl clearfix">
	<div class="con">
		<div class="wrap-tit">
			<h2>
				高级研修班在职研究生报考流程
			</h2>
		</div>
		<div class="wrap-con">
			<ul>
				<li class="tdxl-b1">
					<div class="tdxl-bg">
					</div>
<span class="tdxl-cap">一</span> 
					<p class="tdxl-tit">
						开始报名
					</p>
					<div class="tdxl-con">
						报名人员直接拨打院校招生电话或登录院校官网报名，也可直接到校招生处报名。
					</div>
				</li>
				<li class="tdxl-b2">
					<div class="tdxl-bg">
					</div>
<span class="tdxl-cap">二</span> 
					<p class="tdxl-tit">
						资料审核并入学
					</p>
					<div class="tdxl-con">
						由院校对报考者进行资格审查，审查通过的人员即可入校参加课程学习。
					</div>
				</li>
				<li class="tdxl-b3">
					<div class="tdxl-bg">
					</div>
<span class="tdxl-cap">三</span> 
					<p class="tdxl-tit">
						课程结业考试
					</p>
					<div class="tdxl-con">
						学完全部课程之后，需参加院校组织的结业考试，通过考试可获结业证书。
					</div>
				</li>
			</ul>
			<div class="tdxl-tip">
				<b>注：</b>部分院校会安排结业考试，部分院校课程结束后直接授予结业证书。推荐专题：<a href="https://www.eduego.com/zt/gjyxbktj/index.html" class="color1" target="_blank" title="高级研修班报考条件">高级研修班报考条件</a> 
			</div>
		</div>
	</div>
</div>
<div class="wrap clearfix">
	<div class="con">
		<div class="wrap-tit">
			<h2>
				<span class="hide">在职研究生报考流程</span>热门问答
			</h2>
		</div>
		<div class="wrap-con">
			<div class="i-ques clearfix">
				<ul>
					<li class="fl">
						<h3>
							1、在职研究生报考流程和全日制的一样吗？
						</h3>
						<p>
							专业硕士在职研究生报考流程和全日制研究生的报考流程是一样的。都是在每年的10月份在研招网进行报名，然后现场确认，打印准考证，参加全国联考。其它集中类型在职研究生报考流程和全日制的不一样。
						</p>
					</li>
					<li class="fr">
						<h3>
							2、改革后，在职研究生报考流程有变化吗？
						</h3>
						<p>
							研究生相关政策改革后，对在职研究生报考流程并没有影响。不管是同力申硕、专业学位硕士、高级研修、中外合作办学其中的哪一种报考形式，其报考流程和改革之前是一样的。
						</p>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="wrap wrap-bottm clearfix">
	<div class="con">
		<div class="wrap-con">
			<div class="wrapb-btn">
				<a href="" target="_blank" rel="nofollow">在线报名</a> 
			</div>
		</div>
	</div>
</div>','1',null,null,null,'1','54','2019-09-05 16:52:58');/* MySQLReback Separation */
 /* 插入数据 `lt_information` */
 INSERT INTO `lt_information` VALUES ('38',null,null,'11',null,null,null,'12',null,'研究生在职报名时间',null,'南昌大学名师讲解管联专硕写作实际应用技巧...',null,null,null,null,null,null,null,null,'<p style="text-align:center;">
	<img src="/bofang/public/kindedit/attached/image/20190911/5d78905a5b93a_1000_190.png" alt="" />
</p>
<p style="text-align:center;">
	<img src="/bofang/public/kindedit/attached/image/20190911/5d789068e6f7c_1000_462.png" alt="" />
</p>
<p style="text-align:center;">
	<img src="/bofang/public/kindedit/attached/image/20190911/5d7890746cadd_1000_743.png" alt="" />
</p>','1',null,null,null,'1','14','2019-09-05 16:52:58'),('46',null,null,'12',null,null,null,'14',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,'2020考研南昌大学研究生考试综管类大纲原文','1',null,null,null,'1',null,'2019-09-06 10:00:59'),('47',null,null,'12',null,null,null,'15',null,'2020年江西财经大学MBA/MPA/MEM模拟提前面试圆满结束',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1',null,'2019-09-06 10:01:29'),('48',null,null,'12',null,null,null,'14',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...','1',null,null,null,'1',null,'2019-09-06 10:02:00'),('49',null,null,'12',null,null,null,'14',null,'2020华东交通大学MBA江西地区巡回招生发布会',null,'武汉大学MBA EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在...',null,null,null,null,null,null,null,null,'2020华东交通大学MBA江西地区巡回招生发布会','1',null,null,null,'1','9','2019-09-06 10:02:25'),('50','博方教育御用名师',null,'8',null,null,null,'8',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。 北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,'20190903/5d6dc7822b02c.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 09:52:28'),('51','博方教育御用名师',null,'8',null,null,null,'8',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。 北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,'20190903/5d6dc7822b02c.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 09:52:28'),('52','博方教育御用名师',null,'8',null,null,null,'8',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。 北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,'20190903/5d6dc7822b02c.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 09:52:28'),('53','博方教育御用名师',null,'8',null,null,null,'9',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。 北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,'20190903/5d6dc7822b02c.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 09:52:28');/* MySQLReback Separation */
 /* 插入数据 `lt_information` */
 INSERT INTO `lt_information` VALUES ('54','博方教育御用名师',null,'8',null,null,null,'9',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。 北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,'20190903/5d6dc7822b02c.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 09:52:28');/* MySQLReback Separation */
 /* 插入数据 `lt_information` */
 INSERT INTO `lt_information` VALUES ('55','博方教育御用名师',null,'8',null,null,null,'9',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。 北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,'20190903/5d6dc7822b02c.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 09:52:28'),('56','博方教育御用名师',null,'8',null,null,null,'7',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。 北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,'20190903/5d6dc7822b02c.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 09:52:28'),('57','博方教育御用名师',null,'8',null,null,null,'7',null,'甄沉',null,'北京社科赛斯教育科技有限公司创始人、董事长。 北京大学光华管理学院2002级MBA，机工版《MBA面试高分指导》主编，具备丰富的实战面试辅导经验，MBA面试辅导课程行业标准的创始人。多年专业的面试辅导帮助近千名考生成功考取清华、北大、人大等优秀院校。',null,null,null,null,null,null,'20190903/5d6dc7822b02c.jpg',null,null,'1',null,null,null,'1',null,'2019-09-03 09:52:28'),('58',null,null,'10',null,null,null,'18',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA
                                        EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,'武汉大学MBAEMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...<br />
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />','1',null,null,null,'1','3','2019-09-06 11:10:49'),('59',null,null,'10',null,null,null,'18',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA
                                        EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','3','2019-09-06 11:10:49'),('60',null,null,'10',null,null,null,'18',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA
                                        EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','4','2019-09-06 11:10:49'),('61',null,null,'10',null,null,null,'18',null,'2020考研南昌大学研究生考试综管类大纲原文',null,'武汉大学MBA
                                        EMBA招生简章和提面安排已经公布了，为了让各地市学员快速准确的了解招生信息，特地携手中公教育，在襄阳、十堰、宜昌举行大型招生宣讲会，武汉大学2020年拟报读的意向学员可就...',null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','1','2019-09-06 11:10:49'),('62',null,null,'2',null,null,null,'25',null,'2019年管联专硕数学练习题',null,null,null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','1','2019-09-06 16:07:04'),('63',null,null,'2',null,null,null,'26',null,'2019年管联专硕数学练习题',null,null,null,null,null,null,null,null,null,null,null,'1',null,null,null,'1',null,'2019-09-06 16:07:13'),('64',null,null,'2',null,null,null,'25',null,'2019年管联专硕数学练习题',null,null,null,null,null,null,null,null,null,null,null,'1',null,null,null,'1',null,'2019-09-06 16:07:19'),('65',null,null,'2',null,null,null,'25',null,'2019年管联专硕数学练习题',null,null,null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','1','2019-09-06 16:07:25'),('66',null,null,'2',null,null,null,'28',null,'2019年管联专硕数学练习题',null,null,null,null,null,null,null,null,null,null,null,'1',null,null,null,'1','1','2019-09-06 16:07:31');/* MySQLReback Separation */
 /* 插入数据 `lt_information` */
 INSERT INTO `lt_information` VALUES ('67',null,null,'3',null,null,null,'20',null,'2019年管联专硕数学练习题',null,'s\'da',null,null,null,null,null,null,null,null,'sda','1',null,null,null,'1','2','2019-09-06 16:19:26');/* MySQLReback Separation */
 /* 插入数据 `lt_information` */
 INSERT INTO `lt_information` VALUES ('68',null,null,'12',null,null,null,'14','1','但是',null,'d\'fdf',null,null,'www.baidu.com',null,null,'f\'d',null,null,'dfd'f','1',null,null,null,'1','1','2019-09-10 14:02:53'),('69',null,null,'11',null,null,null,'12',null,'研究生',null,'...',null,null,null,null,null,null,'20190911/5d7892dad1d01.png',null,'<p style="text-align:center;">
	<img src="/bofang/public/kindedit/attached/image/20190911/5d78920333a27.png" alt="" /> 
</p>
<p style="text-align:center;">
	<img src="/bofang/public/kindedit/attached/image/20190911/5d789231bc4bf.png" alt="" /> 
</p>
<p style="text-align:center;">
	<img src="/bofang/public/kindedit/attached/image/20190911/5d78926066923.png" alt="" /> 
</p>','1',null,null,null,'1','17','2019-09-11 14:19:30');/* MySQLReback Separation */
 /* 创建表结构 `lt_inftype`  */
 DROP TABLE IF EXISTS `lt_inftype`;/* MySQLReback Separation */ CREATE TABLE `lt_inftype` (
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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_inftype` */
 INSERT INTO `lt_inftype` VALUES ('1','1',null,'招生院校',null,'1','1','2019-09-02 16:50:05'),('2','1',null,'分数线',null,'2','1','2019-09-02 16:50:15'),('4','1',null,'学费学制',null,'3','1','2019-09-02 16:50:27'),('5','1',null,'提前面试',null,'4','1','2019-09-02 16:50:41'),('6','1',null,'复试调剂',null,'5','1','2019-09-02 16:50:55'),('7','8',null,'数学',null,'1','1','2019-09-03 09:18:03'),('8','8',null,'英语',null,'2','1','2019-09-03 09:18:12'),('9','8',null,'逻辑',null,'3','1','2019-09-03 09:18:21'),('10','9',null,'免费视频',null,'1','1','2019-09-03 09:57:09'),('11','9',null,'会员视频',null,'2','1','2019-09-03 09:57:39'),('12','11',null,'最新',null,'1','1','2019-09-05 16:51:24'),('13','11',null,'最热',null,'2','1','2019-09-05 16:51:34'),('14','12',null,'数学',null,'1','1','2019-09-06 09:58:20'),('15','12',null,'逻辑',null,'2','1','2019-09-06 09:58:28'),('16','12',null,'写作',null,'3','1','2019-09-06 09:58:35'),('17','12',null,'英语二',null,'4','1','2019-09-06 09:58:44'),('18','10',null,'资讯一',null,'1','1','2019-09-06 11:09:51'),('19','10',null,'资讯二',null,'2','1','2019-09-06 11:10:00'),('20','3',null,'招生院校',null,'1','1','2019-09-06 14:00:59'),('21','3',null,'分数线',null,'2','1','2019-09-06 14:01:07'),('22','3',null,'学费学制',null,'4','1','2019-09-06 14:01:20'),('23','3',null,'提前面试',null,'3','1','2019-09-06 14:01:30'),('24','3',null,'复试调剂',null,'5','1','2019-09-06 14:01:39'),('25','2',null,'招生院校',null,'1','1','2019-09-06 16:06:16'),('26','2',null,'分数线',null,'1','1','2019-09-06 16:06:23'),('27','2',null,'学费学制',null,'1','1','2019-09-06 16:06:31'),('28','2',null,'提前面试',null,'1','1','2019-09-06 16:06:38'),('29','2',null,'复试调剂',null,'1','1','2019-09-06 16:06:46');/* MySQLReback Separation */
 /* 创建表结构 `lt_links`  */
 DROP TABLE IF EXISTS `lt_links`;/* MySQLReback Separation */ CREATE TABLE `lt_links` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `sty` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//保留字段',
  `topic` char(50) NOT NULL COMMENT '//标题',
  `pic` char(100) DEFAULT NULL COMMENT '//图片',
  `linkurl` char(200) DEFAULT NULL COMMENT '//跳转链接',
  `enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT '//是否显示栏目',
  `ord` smallint(1) DEFAULT '0' COMMENT '//排序',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_links` */
 INSERT INTO `lt_links` VALUES ('1','1','考研村',null,'https://www.baidu.com/','1','1','2019-09-02 16:00:19'),('2','1','赢了网',null,'www.baidu.com','1','2','2019-09-02 15:39:27');/* MySQLReback Separation */
 /* 创建表结构 `lt_linktype`  */
 DROP TABLE IF EXISTS `lt_linktype`;/* MySQLReback Separation */ CREATE TABLE `lt_linktype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '//',
  `sty` int(11) NOT NULL COMMENT '//sty',
  `topic` varchar(500) DEFAULT NULL COMMENT '//名称',
  PRIMARY KEY (`Id`),
  KEY `sty` (`sty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `lt_menber`  */
 DROP TABLE IF EXISTS `lt_menber`;/* MySQLReback Separation */ CREATE TABLE `lt_menber` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(500) DEFAULT NULL,
  `depid` int(2) NOT NULL DEFAULT '0' COMMENT '//部门ID',
  `userpass` char(42) DEFAULT NULL COMMENT '//登录密码',
  `randcode` char(6) NOT NULL DEFAULT '654321' COMMENT '//随机码',
  `realname` char(30) DEFAULT NULL COMMENT '//管理员名称',
  `email` char(50) DEFAULT NULL COMMENT '//后台邮箱',
  `remark` varchar(1000) DEFAULT NULL COMMENT '//备注',
  `auth` varchar(500) DEFAULT NULL COMMENT '//后台权限',
  `count` int(2) DEFAULT '0' COMMENT '//累计登录次数',
  `last_ip` char(30) DEFAULT NULL COMMENT '//最后登录Ip',
  `last_time` datetime DEFAULT NULL COMMENT '//最后登录时间',
  `reg_time` datetime DEFAULT NULL COMMENT '//注册时间',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_menber` */
 INSERT INTO `lt_menber` VALUES ('16','17611509611',null,'123456','654321','小东',null,'收到',null,null,null,null,'2019-09-11 15:24:19'),('14','18279559717',null,'123456','654321','xiaozhong',null,'s\'dsd',null,'1','192.168.1.200',null,'2019-09-11 15:01:55');/* MySQLReback Separation */
 /* 创建表结构 `lt_message`  */
 DROP TABLE IF EXISTS `lt_message`;/* MySQLReback Separation */ CREATE TABLE `lt_message` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `inftype` varchar(100) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_message` */
 INSERT INTO `lt_message` VALUES ('1',null,null,null,null,null,null,null,null,null,null,null,null,null,null),('2',null,null,null,null,null,null,null,null,null,null,null,null,null,null),('3',null,null,null,null,null,null,null,null,null,null,null,null,null,null),('4',null,null,null,null,null,null,null,null,null,null,null,null,null,null),('5','mba',null,null,null,null,null,null,null,null,null,null,null,null,null),('6','mba',null,null,null,null,null,null,null,null,null,null,null,null,null),('7','mba',null,'sd',null,null,null,null,null,null,'18279559717',null,null,null,null),('8','mba',null,'f',null,null,null,null,null,null,'18279559717',null,null,null,null);/* MySQLReback Separation */
 /* 创建表结构 `lt_onlineqq`  */
 DROP TABLE IF EXISTS `lt_onlineqq`;/* MySQLReback Separation */ CREATE TABLE `lt_onlineqq` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `lt_proctag`  */
 DROP TABLE IF EXISTS `lt_proctag`;/* MySQLReback Separation */ CREATE TABLE `lt_proctag` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_proctag` */
 INSERT INTO `lt_proctag` VALUES ('1','1',null,'免费课程',null,'1','1','2019-09-03 10:18:59'),('2','1',null,'会员课程',null,'2','1','2019-09-03 10:19:49');/* MySQLReback Separation */
 /* 创建表结构 `lt_product`  */
 DROP TABLE IF EXISTS `lt_product`;/* MySQLReback Separation */ CREATE TABLE `lt_product` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `lt_promtag`  */
 DROP TABLE IF EXISTS `lt_promtag`;/* MySQLReback Separation */ CREATE TABLE `lt_promtag` (
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_promtag` */
 INSERT INTO `lt_promtag` VALUES ('1','1','1','数学',null,'1','1','2019-09-03 10:20:18'),('2','1','1','英语',null,'2','1','2019-09-03 10:20:36'),('3','1','1','逻辑',null,'3','1','2019-09-03 10:20:49'),('4','1','1','写作',null,'4','1','2019-09-03 10:21:20'),('5','1','1','英语二',null,'5','1','2019-09-03 10:21:31');/* MySQLReback Separation */
 /* 创建表结构 `lt_seoconf`  */
 DROP TABLE IF EXISTS `lt_seoconf`;/* MySQLReback Separation */ CREATE TABLE `lt_seoconf` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `articleurl` varchar(150) DEFAULT NULL COMMENT '//文章url',
  `marticleurl` varchar(150) DEFAULT NULL COMMENT '//手机站的URL',
  `mipurl` varchar(150) DEFAULT NULL COMMENT 'mipurl',
  `baiduurl` varchar(150) DEFAULT NULL COMMENT '//百度自动推送url',
  `isauto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '//是否自动推送',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_seoconf` */
 INSERT INTO `lt_seoconf` VALUES ('1',null,null,null,null,null,'2018-03-07 15:08:02');/* MySQLReback Separation */
 /* 创建表结构 `lt_systemconfig`  */
 DROP TABLE IF EXISTS `lt_systemconfig`;/* MySQLReback Separation */ CREATE TABLE `lt_systemconfig` (
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
  `wxqpic` varchar(1000) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_systemconfig` */
 INSERT INTO `lt_systemconfig` VALUES ('1','江西专硕在线','江西专硕在线','江西专硕在线',null,'江西博方教育咨询有限公司',null,'江西省南昌市东湖区北京西路437号 江西师范大学（老师大）物理楼115-122室',null,'18907087200',null,'18907087200',null,null,'20190911/5d7865e75f3df.jpg','20190911/5d7865eec0d3a.jpg',null,'赣ICP备88888888号-1',null,null,'您的IP将禁用一段时间。',null,'网站项目维护中...',null,null,null,'smtp.163.com','25',null,null,null,null,null,null,'5','9',null,'JXBH.CN','36','#1ea5d7','5',null,'60','10240','10240','jpg,gif,png,jpeg','doc,docx,rar,xlsx,mp4','1920','2','1200','1','1','1','1','2',null,'15',null,null,'2018-03-01 06:24:40');/* MySQLReback Separation */
 /* 创建表结构 `lt_title`  */
 DROP TABLE IF EXISTS `lt_title`;/* MySQLReback Separation */ CREATE TABLE `lt_title` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `tables` char(50) DEFAULT NULL COMMENT '关联表',
  `tid` int(4) NOT NULL DEFAULT '0' COMMENT '//关联表ID',
  `title` varchar(200) DEFAULT NULL COMMENT '//title',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `keyword` varchar(250) DEFAULT NULL COMMENT '//页面关键词',
  `metades` varchar(250) DEFAULT NULL COMMENT '//页面描述',
  `date` datetime NOT NULL COMMENT '//发布更新日期',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `lt_vipfree`  */
 DROP TABLE IF EXISTS `lt_vipfree`;/* MySQLReback Separation */ CREATE TABLE `lt_vipfree` (
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_vipfree` */
 INSERT INTO `lt_vipfree` VALUES ('1','1',null,'免费视频',null,'1','1','2019-09-02 16:50:05'),('2','1',null,'会员视频',null,'2','1','2019-09-02 16:50:15');/* MySQLReback Separation */
 /* 创建表结构 `lt_years`  */
 DROP TABLE IF EXISTS `lt_years`;/* MySQLReback Separation */ CREATE TABLE `lt_years` (
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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `lt_years` */
 INSERT INTO `lt_years` VALUES ('1','1',null,'2019',null,'1','1','2019-09-10 13:51:49'),('2','1',null,'2018',null,'2','1','2019-09-10 13:51:55'),('4','1',null,'2017',null,'3','1','2019-09-10 13:52:02'),('5','1',null,'2016',null,'4','1','2019-09-10 13:52:08'),('6','1',null,'2015',null,'5','1','2019-09-10 13:52:14');/* MySQLReback Separation */