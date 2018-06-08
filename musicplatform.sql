/*
Navicat MySQL Data Transfer

Source Server         : VAE
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : musicplatform

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-06-03 15:24:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fans
-- ----------------------------
DROP TABLE IF EXISTS `fans`;
CREATE TABLE `fans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `singerid` varchar(7) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`singerid`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fans
-- ----------------------------
INSERT INTO `fans` VALUES ('1', '0000000', '0000000000', '方十二dacall');
INSERT INTO `fans` VALUES ('2', '0000000', '0000000001', '期待更好的作品');
INSERT INTO `fans` VALUES ('3', '0000000', '0000000002', '加油');
INSERT INTO `fans` VALUES ('4', '0000001', '0000000003', '支持');
INSERT INTO `fans` VALUES ('5', '0000001', '0000000004', '期待');
INSERT INTO `fans` VALUES ('6', '0000001', '0000000005', '好好听');
INSERT INTO `fans` VALUES ('7', '0000002', '0000000001', '最新单曲循环');
INSERT INTO `fans` VALUES ('8', '0000002', '0000000003', '签名');
INSERT INTO `fans` VALUES ('9', '0000003', '0000000003', '合影');
INSERT INTO `fans` VALUES ('10', '0000003', '0000000004', '握手');
INSERT INTO `fans` VALUES ('11', '0000004', '0000000001', '明信片');
INSERT INTO `fans` VALUES ('12', '0000004', '0000000004', '感谢');
INSERT INTO `fans` VALUES ('13', '0000005', '0000000002', '期待新作');
INSERT INTO `fans` VALUES ('14', '0000006', '0000000004', '我们支持你');
INSERT INTO `fans` VALUES ('15', '0000006', 'g4f5vt1zb9', '哈哈，活捉');
INSERT INTO `fans` VALUES ('16', '0000001', '0000000000', '一直支持');
INSERT INTO `fans` VALUES ('17', '0000003', '0000000000', '许嵩加油');

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(10) NOT NULL,
  `songid` varchar(6) NOT NULL,
  `clicktime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`userid`,`songid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO `favorite` VALUES ('1', '0000000000', '000000', '1');
INSERT INTO `favorite` VALUES ('2', '0000000000', '000001', '2');
INSERT INTO `favorite` VALUES ('3', '0000000000', '000002', '3');
INSERT INTO `favorite` VALUES ('4', '0000000001', '000003', '4');
INSERT INTO `favorite` VALUES ('5', '0000000002', '000004', '5');
INSERT INTO `favorite` VALUES ('6', '0000000003', '000005', '6');
INSERT INTO `favorite` VALUES ('7', '0000000004', '000006', '7');
INSERT INTO `favorite` VALUES ('8', '0000000005', '000005', '8');
INSERT INTO `favorite` VALUES ('9', 'g4f5vt1zb9', '000004', '5');
INSERT INTO `favorite` VALUES ('10', '0000000000', '000007', null);

-- ----------------------------
-- Table structure for menusong
-- ----------------------------
DROP TABLE IF EXISTS `menusong`;
CREATE TABLE `menusong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songmenuid` varchar(7) NOT NULL,
  `songid` varchar(6) NOT NULL,
  PRIMARY KEY (`id`,`songmenuid`,`songid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menusong
-- ----------------------------
INSERT INTO `menusong` VALUES ('1', '0000000', '000000');
INSERT INTO `menusong` VALUES ('2', '0000000', '000001');
INSERT INTO `menusong` VALUES ('3', '0000000', '000002');
INSERT INTO `menusong` VALUES ('4', '0000000', '000003');
INSERT INTO `menusong` VALUES ('5', '0000001', '000004');
INSERT INTO `menusong` VALUES ('6', '0000001', '000005');
INSERT INTO `menusong` VALUES ('7', '0000001', '000006');
INSERT INTO `menusong` VALUES ('8', '0000002', '000007');
INSERT INTO `menusong` VALUES ('9', '0000002', '000000');
INSERT INTO `menusong` VALUES ('10', '0000003', '000000');
INSERT INTO `menusong` VALUES ('11', '0000004', '000002');
INSERT INTO `menusong` VALUES ('12', '0000004', '000004');
INSERT INTO `menusong` VALUES ('13', '0000004', '000006');
INSERT INTO `menusong` VALUES ('14', '0000005', '000001');
INSERT INTO `menusong` VALUES ('15', '0000005', '000003');
INSERT INTO `menusong` VALUES ('16', '0000006', '000002');
INSERT INTO `menusong` VALUES ('17', '0000007', '000004');
INSERT INTO `menusong` VALUES ('18', '0000008', '000006');
INSERT INTO `menusong` VALUES ('19', '0000009', '000005');
INSERT INTO `menusong` VALUES ('20', '0000010', '000007');
INSERT INTO `menusong` VALUES ('21', 'o3ugwxb', '000007');
INSERT INTO `menusong` VALUES ('22', 'o3ugwxb', 'rli1gq');
INSERT INTO `menusong` VALUES ('23', 'o3ugwxb', '000000');
INSERT INTO `menusong` VALUES ('24', 'o3ugwxb', 'o2fepz');

-- ----------------------------
-- Table structure for sharesong
-- ----------------------------
DROP TABLE IF EXISTS `sharesong`;
CREATE TABLE `sharesong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(10) NOT NULL,
  `songid` varchar(6) NOT NULL,
  `upload_date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `score` int(11) DEFAULT NULL,
  `isyuanchuang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`userid`,`songid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sharesong
-- ----------------------------
INSERT INTO `sharesong` VALUES ('1', '0000000000', '000000', '2017-12-23 17:12:08', '1', '是');
INSERT INTO `sharesong` VALUES ('2', '0000000001', '000001', '2017-12-23 17:12:11', '2', '否');
INSERT INTO `sharesong` VALUES ('3', '0000000002', '000002', '2017-12-23 17:12:32', '3', '否');
INSERT INTO `sharesong` VALUES ('4', '0000000003', '000003', '2017-12-23 17:12:36', '3', '否');
INSERT INTO `sharesong` VALUES ('5', '0000000004', '000004', '2017-12-23 17:12:39', '2', '否');
INSERT INTO `sharesong` VALUES ('6', '0000000005', '000005', '2017-12-23 17:12:42', '1', '否');
INSERT INTO `sharesong` VALUES ('7', 'g4f5vt1zb9', '000006', '2017-12-23 17:12:45', '2', '否');
INSERT INTO `sharesong` VALUES ('8', '0000000004', '000007', '2017-12-23 17:12:47', '3', '否');
INSERT INTO `sharesong` VALUES ('9', '0000000002', '000005', '2017-12-23 17:12:50', '5', '否');
INSERT INTO `sharesong` VALUES ('10', '0000000000', 'rli1gq', '2017-12-23 21:18:52', '5', '否');
INSERT INTO `sharesong` VALUES ('11', '0000000000', 'o2fepz', '2017-12-27 09:18:20', '5', '是');

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `singerid` varchar(7) NOT NULL,
  `name` varchar(255) NOT NULL,
  `style` varchar(255) DEFAULT NULL,
  `describle` text,
  `nationality` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `status_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `singerpicurl` varchar(255) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`,`singerid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES ('1', '0000000', '方拾贰', '民谣', '音乐人，艺术工作者。', 'chinese', '2017-11-27', 'open', '2017-12-10 16:31:02', '方拾贰.jpg', '女');
INSERT INTO `singer` VALUES ('2', '0000001', '代鑫', '民谣', '代鑫 独立唱作人 代表作《遇见相似的灵魂》，《妄越》，《白洋淀》，《海底两万里》 。 从英式摇滚跨越到电子民谣，曲风天马行空。用质朴的词句与高辨识度“少年音”叙事博闻强识， 让音乐成为生活的一部分 ，成为2017年独立乐坛一匹黑马。', 'chinese', '2017-12-03', 'open', '2017-12-10 16:35:31', '代鑫.jpg', '男');
INSERT INTO `singer` VALUES ('3', '0000002', 'RAINBOW计划', '流行', 'RAiNBOW计划，90后原创音乐团队。 计划在十年或更长时间内，陆续出齐彩虹七色加黑、白、透明——共计10张主题音乐原创专辑，做出能陪伴一代年轻人成长的好音乐。 RAiNBOW计划希望通过自己的努力，不断寻找和发掘95后乃至更年轻一代中，对音乐、文字、影像、设计、舞美等艺文创作领域有天赋、有热忱并愿为此奉献的年轻人，一起为创立一个由90后年轻人做出来的有温度、有陪伴感、令人骄傲的音乐品牌而努力。 团队现有雷雨心、林力尧、钟声、林姝涵、刘雨含在内等诸多年轻唱作人及歌手，并拥有一套同样是95后的词曲编曲作者的创作班底，同时拥有一套以郭旭峥为代表的年轻设计师所负责的较为完整的视觉系统。 2012年8月，RAiNBOW计划制作推出第一张专辑《红》，在福建等地区初试啼声，销量逾1600张。此外，还获得了福建广电财经广播电台、腾讯大闽网、福州日报、福州晚报、中新网、东南网等多家在地媒体的报道及采访。 2014年8月，RAiNBOW计划正式发行第二张专辑《橙》，销量更进一步，破4000余张。更细腻贴近的音乐及更精美成熟的专辑包装设计，让不少购买者直呼“是买过的最美的专辑”。 2015年1月-3月，团队成员雷雨心参加《中国好歌曲》第二季，登陆CCTV3的荧屏舞台，凭借一首生动书写出校园友情的《记·念》及舞台上落落大方的表现，征服了节目的四组导师及广大观众。借她之口，RAiNBOW的理念与愿景被更多同龄人所了解。《记·念》至今成为许多学生在毕业季时的背景音乐。最终，雷雨心成为羽泉导师组5强学员。淘汰赛中的《深海游戏》，以其优美的旋律及对自闭症儿童的关怀获得好评，在节目播出后占据24小时内社交平台热搜。 《橙》发行后，RAiNBOW便立即投入第三张专辑《黄》的筹划与制作。 第3张专辑《黄》，已在2017年3月20日于网易云音乐开启数字专辑独家预购，并在3月31日与实体专辑同步发行。数字专辑销售12小时内超2000张，24小时内破4000张。并于2017年4月4日正式冲破10000张数字专辑销量大关。在此之前，你或许从来不敢相信，一群出自平均年龄仅20岁左右的年轻人，能在网易云音乐创下这样的销售奇迹。但RAiNBOW做到了。万万没想到的又一个奇迹，是大家陪RAiNBOW一起完成的。万分感谢！ 这个属于新一代年轻人集体群像的音乐故事，还在继续书写新的章节。 任何时候认识、加入RAiNBOW，都不晚。', 'chinese', '2017-12-03', 'open', '2017-12-10 16:35:57', 'RAINBOW计划.jpg', '女');
INSERT INTO `singer` VALUES ('4', '0000003', '许嵩', '流行', '著名作词人、作曲人、唱片制作人、歌手。内地独立音乐之标杆人物，有音乐鬼才之称。2009年独立出版首张词曲全创作专辑《自定义》，2010年独立出版第二张词曲全创作专辑《寻雾启示》，两度掀起讨论热潮，一跃成为内地互联网讨论度最高的独立音乐人。2011年加盟海蝶音乐，推出第三张词曲全创作专辑《苏格拉没有底》，发行首月即在大陆地区摘下唱片销量榜冠军，轰动全国媒体，并拉开全国巡回签售及歌迷见面会。2012年7月发表第四张全创作专辑《梦游计》，秉承了一贯的创新理念，天马行空的创作题材令乐迷耳目一新，引起强烈反响，进一步奠定了其华语乐坛青年一代领军人物的地位。主要成就：音乐风云榜最受欢迎唱作新人，第9届亚太音乐榜最受欢迎唱作人，全球华语榜最受欢迎新人奖。', 'chinese', '2017-12-03', 'open', '2017-12-10 16:36:30', '许嵩.jpg', '男');
INSERT INTO `singer` VALUES ('5', '0000004', '洪尘', '独立', '独立音乐人 微信公众号：hongcheninn 新浪微博 ：@-洪尘-', 'chinese', '2017-12-03', 'open', '2017-12-10 16:36:46', '洪尘.jpg', '男');
INSERT INTO `singer` VALUES ('6', '0000005', '夏小虎', '独立', '我只有一把破吉他', 'chinese', '2017-12-03', 'open', '2017-12-10 16:37:04', '夏小虎.jpg', '男');
INSERT INTO `singer` VALUES ('7', '0000006', '徐秉龙', '独立', '徐秉龙，00后独立音乐人，词曲作者，南方生人。 自学写歌，自弹自唱。15岁发表第一首原创作品，16岁为林宥嘉创作《船》，17岁开启七城巡演。 2016年8月28日在乐童发行第一张实体专辑《路远马亡》； 2017年1月21日在台州西街Livehouse举办首个个人专场； 2017年7月在福州、温州、杭州、南京等七个城市完成第一轮个人巡演。 微博@Barry徐秉龙', 'chinese', '2017-12-03', 'open', '2017-12-10 16:37:06', '徐秉龙.jpg', '男');
INSERT INTO `singer` VALUES ('8', '0000007', '周杰伦', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 12:55:41', '周杰伦.jpg', '男');
INSERT INTO `singer` VALUES ('9', '0000008', '陈奕迅', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 12:56:54', '陈奕迅.jpg', '男');
INSERT INTO `singer` VALUES ('10', '0000009', '薛之谦', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 12:57:32', '薛之谦.jpg', '男');
INSERT INTO `singer` VALUES ('11', '0000010', '林俊杰', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 12:58:11', '林俊杰.jpg', '男');
INSERT INTO `singer` VALUES ('12', '0000011', '李荣浩', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 12:58:52', '李荣浩.jpg', '男');
INSERT INTO `singer` VALUES ('13', '0000012', '张学友', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 12:59:36', '张学友.jpg', '男');
INSERT INTO `singer` VALUES ('14', '0000013', '杨宗纬', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:00:18', '杨宗纬.jpg', '男');
INSERT INTO `singer` VALUES ('15', '0000014', '许巍', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:01:05', '许巍.jpg', '男');
INSERT INTO `singer` VALUES ('16', '0000015', '赵雷', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:01:41', '赵雷.jpg', '男');
INSERT INTO `singer` VALUES ('17', '0000016', '李志', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:03:03', '李志.jpg', '男');
INSERT INTO `singer` VALUES ('18', '0000017', '王力宏', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:08:09', '王力宏.jpg', '男');
INSERT INTO `singer` VALUES ('19', '0000018', '宋冬野', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:08:12', '宋冬野.jpg', '男');
INSERT INTO `singer` VALUES ('20', '0000019', '朴树', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:08:14', '朴树.jpg', '男');
INSERT INTO `singer` VALUES ('21', '0000020', '李健', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:51:56', '李健.jpg', '男');
INSERT INTO `singer` VALUES ('22', '0000021', '陈小春', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:08:19', '陈小春.jpg', '男');
INSERT INTO `singer` VALUES ('23', '0000022', '张国荣', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:08:21', '张国荣.jpg', '男');
INSERT INTO `singer` VALUES ('24', '0000023', '萧敬腾', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:08:23', '萧敬腾.jpg', '男');
INSERT INTO `singer` VALUES ('25', '0000024', '张敬轩', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:08:25', '张敬轩.jpg', '男');
INSERT INTO `singer` VALUES ('26', '0000025', '古巨基', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 13:08:29', '古巨基.jpg', '男');
INSERT INTO `singer` VALUES ('27', '0000026', '王菲', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:37:48', '王菲.jpg', '女');
INSERT INTO `singer` VALUES ('28', '0000027', '邓紫棋', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:37:55', '邓紫棋.jpg', '女');
INSERT INTO `singer` VALUES ('29', '0000028', '蔡雅健', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:37:58', '蔡雅健.jpg', '女');
INSERT INTO `singer` VALUES ('30', '0000029', '陈粒', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:38:01', '陈粒.jpg', '女');
INSERT INTO `singer` VALUES ('31', '0000030', '孙燕姿', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:38:05', '孙燕姿.jpg', '女');
INSERT INTO `singer` VALUES ('32', '0000031', '金玟岐', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:38:08', '金玟岐.jpg', '女');
INSERT INTO `singer` VALUES ('33', '0000032', '那英', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:38:11', '那英.jpg', '女');
INSERT INTO `singer` VALUES ('34', '0000033', '莫文蔚', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:38:15', '莫文蔚.jpg', '女');
INSERT INTO `singer` VALUES ('35', '0000034', '谢安琪', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:38:18', '谢安琪.jpg', '女');
INSERT INTO `singer` VALUES ('36', '0000035', '杨千嬅', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:38:21', '杨千嬅.jpg', '女');
INSERT INTO `singer` VALUES ('37', '0000036', '张靓颖', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:52:42', '张靓颖.jpg', '女');
INSERT INTO `singer` VALUES ('38', '0000037', '张惠妹', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:52:44', '张惠妹.jpg', '女');
INSERT INTO `singer` VALUES ('39', '0000038', '刘瑞琪', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:52:47', '刘瑞琪.jpg', '女');
INSERT INTO `singer` VALUES ('40', '0000039', '谭维维', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:52:52', '谭维维.jpg', '女');
INSERT INTO `singer` VALUES ('41', '0000040', '花粥', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:52:56', '花粥.jpg', '女');
INSERT INTO `singer` VALUES ('42', '0000041', '李宇春', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:52:59', '李宇春.jpg', '女');
INSERT INTO `singer` VALUES ('43', '0000042', '阿肆', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:53:03', '阿肆.jpg', '女');
INSERT INTO `singer` VALUES ('44', '0000043', '徐佳莹', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:53:06', '徐佳莹.jpg', '女');
INSERT INTO `singer` VALUES ('45', '0000044', '不才', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:53:10', '不才.jpg', '女');
INSERT INTO `singer` VALUES ('46', '0000045', '曾轶可', '流行', null, 'chinese', '2017-12-10', 'open', '2017-12-10 14:53:14', '曾轶可.jpg', '女');
INSERT INTO `singer` VALUES ('47', '0000046', '\r\n\r\nJustin Bieber', '流行', null, 'foreign', '2017-12-13', 'open', '2017-12-13 09:42:01', 'JustinBieb.jpg', '男');
INSERT INTO `singer` VALUES ('48', '0000047', 'Alan Walker', '流行', null, 'foreign', '2017-12-13', 'open', '2017-12-13 19:18:16', 'AlanWalker.jpg', '男');
INSERT INTO `singer` VALUES ('49', '0000048', 'Charlie Puth', '流行', null, 'foreign', '2017-12-13', 'open', '2017-12-13 19:22:06', 'CharliePuth.jpg', '男');
INSERT INTO `singer` VALUES ('50', '0000049', 'G-Dragon', '流行', null, 'foreign', '2017-12-13', 'open', '2017-12-13 19:22:09', 'G-Dragon.jpg', '男');
INSERT INTO `singer` VALUES ('51', '0000050', '太阳\r\n', '流行', null, 'foreign', '2017-12-13', 'open', '2017-12-13 19:22:11', '太阳.jpg', '男');
INSERT INTO `singer` VALUES ('52', '0000051', '朴灿烈', '流行', null, 'foreign', '2017-12-13', 'open', '2017-12-13 19:22:14', '朴灿烈.jpg', '男');
INSERT INTO `singer` VALUES ('53', '0000052', 'MC 梦', '流行', null, 'foreign', '2017-12-13', 'open', '2017-12-13 19:22:16', 'MC梦.jpg', '男');
INSERT INTO `singer` VALUES ('54', '0000053', '龙俊亨', '流行', null, 'foreign', '2017-12-13', 'open', '2017-12-13 19:22:19', '龙俊亨.jpg', '男');
INSERT INTO `singer` VALUES ('55', '0000054', 'Rain', '流行', null, 'foreign', '2017-12-14', 'open', '2017-12-14 19:56:33', 'Rain.jpg', '男');
INSERT INTO `singer` VALUES ('56', '0000055', 'Adele\r\n', '流行', null, 'foreign', '2017-12-14', 'open', '2017-12-14 19:56:35', 'Adele\r\n.jpg', '女');
INSERT INTO `singer` VALUES ('57', '0000056', 'Taylor Swift\r\n', '流行', null, 'foreign', '2017-12-14', 'open', '2017-12-14 19:56:38', 'TaylorSwift.jpg\r\n', '女');
INSERT INTO `singer` VALUES ('58', '0000057', 'IU\r\n', '流行', null, 'foreign', '2017-12-14', 'open', '2017-12-14 19:56:40', 'IU\r\n.jpg', '女');
INSERT INTO `singer` VALUES ('59', '0000058', '泫雅\r\n', '流行', null, 'foreign', '2017-12-14', 'open', '2017-12-14 19:56:41', '泫雅\r\n.jpg', '女');
INSERT INTO `singer` VALUES ('60', '0000059', '朴信惠', '流行', null, 'foreign', '2017-12-14', 'open', '2017-12-14 19:56:45', '朴信惠.jpg', '女');
INSERT INTO `singer` VALUES ('61', '24xbg71', '凯瑟喵', null, null, 'chinese', null, 'open', '2017-12-23 21:18:52', 'moren.jpg', '女');
INSERT INTO `singer` VALUES ('62', 'x5wfnr3', '伦桑', null, null, 'chinese', null, 'open', '2017-12-27 09:18:20', 'moren.jpg', '男');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songid` varchar(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mp3url` varchar(255) NOT NULL,
  `songpicurl` varchar(255) NOT NULL,
  `lyric` text,
  `status` varchar(255) NOT NULL,
  `status_date` date NOT NULL,
  `clicktime` int(11) NOT NULL,
  `downloadtime` int(11) NOT NULL,
  `singerid` varchar(7) NOT NULL,
  `userid` varchar(10) DEFAULT NULL,
  `musicscore` int(11) NOT NULL,
  PRIMARY KEY (`id`,`songid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('1', '000000', '遇见相似的灵魂', '代鑫,陈鸿宇 - 遇见相似的灵魂.mp3', 'c.jpg', '作曲 : 代鑫<br>作词 : 代鑫<br><br>监制：黄棋量<br>编曲：高桦<br>缩混：王晨雨<br>吉他：高桦<br>打击乐：高桦<br>和声：陈鸿宇&amp;代鑫<br>平面设计：广岛<br>特别感谢：民谣与诗王小欢的灵感来源<br>光消失于夜幕<br>残留的温度<br>在迷雾之都<br>醒来在某一个下午<br>臃肿的城市<br>已甜的发苦<br>谁在等风来<br>驱散阴霾<br>谁在路灯旁<br>彻夜未眠<br>那些迷惑的光影<br>重复昨天<br>今天<br>那些苍老的面容<br>有你和我<br>从前<br>嘿雨夜的小丑<br>宿醉五道口<br>被野花嘲弄<br>青春流逝于指缝<br>倾城一回眸<br>消失无影踪<br>谁在等风来<br>驱散阴霾<br>谁在路灯旁<br>念念不忘<br>那些迷惑的光影<br>重复昨天<br>今天<br>那些苍老的面容<br>有你和我<br>从前<br>寻找遗失的章节<br>半梦半醒<br>之间<br>遇见相似的灵魂<br>某年某月<br>某天<br>', 'open', '2017-11-20', '6', '20', '0000001', '0000000000', '1');
INSERT INTO `song` VALUES ('2', '000001', '纪念', 'RAiNBOW计划 - 记念.mp3', 'c1.jpg', '作曲 : 雷雨心<br>作词 : 蒋思涵<br>演唱：雷雨心<br>编曲：周龙<br>制作人：雷雨心<br>和声：雷雨心<br>和声编写：雷雨心<br>录音师：周龙<br>录音室：第三弦音乐工作室<br>混音师：周龙<br>混音室：起点音乐Origin Music<br>歌词制作：王智杰<br><br>时间 一转眼就过去了三年<br>一切 在我心里开得好皎洁<br>现在 倒计时也不剩几天<br>脚边的纸片 来不及去捡<br><br>仿佛 是快要冲破压力的茧<br>离校后 大家又各自熬夜<br>早上的黑眼圈 课上的小困倦<br>一天一天又一天<br><br>我只想要拉住流年<br>好好地说声再见<br>遗憾感谢 都回不去昨天<br><br>我只想铭记这瞬间<br>我们一起走过的光年<br>六月后 光年成纪念<br><br>这个班级太傲娇 什么课都不发言<br>但是还是很温暖 同学之间的寒暄<br>压着课本抄作业 考试上的看一眼<br>现在想起来 会不会觉得很亲切<br><br>我只想要拉住流年<br>好好地说声再见<br>遗憾感谢 都回不去昨天<br><br>我只想铭记这瞬间<br>我们一起走过的光年<br>到达 约定好的地点<br><br>我只想要拉住流年<br>好好地说声再见<br>在心中刻下你们的笑脸<br>看流星划过天边 许下我们的心愿<br><br>让现在 成为永远<br>', 'open', '2017-11-20', '2', '1', '0000002', '0000000000', '2');
INSERT INTO `song` VALUES ('3', '000002', '蝴蝶的时间', '许嵩 - 蝴蝶的时间.mp3', 'c2.jpg', '作曲 : 许嵩<br>作词 : 许嵩<br><br>飞过山岗 你不在场<br>我的胸膛 纹路苍茫<br>花开不败 香满楼台<br>我不闻 我不闻<br><br>飞入黑洞 你不在场<br>时光颠簸 心路苍茫<br>扇动翅膀 它却不响<br>会不会在远方刮起风<br><br>借我一盏烛火<br>点亮你的轮廓<br>思念通明以后付与一纸传说<br>回忆任它残破<br>可能终会参破<br>百年后谁人还记得我<br><br>爱是一盏烛火<br>明灭会有因果<br>骤雨疾风吹不散我一念执着<br>等到月影斑驳<br>等到满城花落<br>千年后从你碑前飞过<br><br>飞入黑洞 你不在场<br>时光颠簸 心路苍茫<br>扇动翅膀 它却不响<br>会不会在远方刮起风<br><br>借我一盏烛火<br>点亮你的轮廓<br>思念通明以后付与一纸传说<br>回忆任它残破<br>可能终会参破<br>百年后谁人还记得我<br><br>爱是一盏烛火<br>明灭会有因果<br>骤雨疾风吹不散我一念执着<br>等到月影斑驳<br>等到满城花落<br>千年后从你碑前飞过<br><br>借我一盏烛火<br>点亮你的轮廓<br>思念通明以后付与一纸传说<br>回忆任它残破<br>可能终会参破<br>百年后谁人还记得我<br><br>爱是一盏烛火<br>明灭会有因果<br>骤雨疾风吹不散我一念执着<br>等到月影斑驳<br>等到满城花落<br>千年后从你碑前飞过<br><br>制作人：许嵩<br>', 'open', '2017-11-20', '5', '1', '0000003', '0000000000', '3');
INSERT INTO `song` VALUES ('4', '000003', '归,不归', '方拾贰,1229 - 归，不归.mp3', 'c3.jpg', '作曲 : 方拾贰<br>作词 : 方拾贰<br>编曲：1229<br>母带制作：mAjorhon<br>混录：xxxRonan<br>谁来问我<br>几更天醒<br>几更啊<br>天啊睡<br>庭院深深深几许<br>路人问问问多少<br>往月疏疏疏星稀<br>夜来香香香入梦<br><br>娘子盼郎归<br>吾家心累累<br>吾妻缝线织衣咧<br>郎<br><br>谁闻人泣<br>莫道是喜<br>殊不知可惜矣<br>无声无息<br>怀揣心底<br>殊不知难掩矣<br><br>娘子盼郎归<br>吾家心累累<br>吾妻缝线织衣咧<br>郎<br><br>朱唇点点点墨色<br>烛火盈盈盈报喜<br>阁楼高高入云<br>郎啊归归<br>不归<br>', 'open', '2017-11-20', '2', '1', '0000000', '0000000000', '4');
INSERT INTO `song` VALUES ('5', '000004', '从前慢', '洪尘 - 从前慢 - 吉他弹唱.mp3', '从前慢.jpg', '词：木心<br>曲:刘胡轶<br>吉他/口琴：洪尘<br><br>记得 早先 少年时<br>大家诚诚恳恳<br>说一句 是一句<br>清早上火车站<br>长街黑暗无行人<br>卖豆浆的小店冒着热气<br>从前的日色变得慢<br>车马邮件都慢<br>一生只够 爱一个人<br>从前的锁也好看<br>钥匙精美有样子<br>你锁了 人家就懂了<br><br>从前的日色变得慢<br>车马邮件都慢<br>一生只够 爱一个人<br>从前的锁也好看<br>钥匙精美有样子<br>你锁了 人家就懂了<br>你锁了 我就懂了<br>', 'open', '2017-11-20', '5', '1', '0000004', '0000000000', '5');
INSERT INTO `song` VALUES ('6', '000005', '山下', '方拾贰 - 山下.mp3', '山下.jpg', '作曲 : 方拾贰<br>作词 : 方拾贰<br>编曲：1229<br>和声：方拾贰<br>混音：xxxRonan<br>母带制作：mAjorhon<br>夜一睡，白日里眼前一片黑。<br>秋一入，风带过异域的思绪。<br>鱼一惊，高跃起化身成大鸟。<br>鸟一飞，四季轮回且又一回。<br>雨一落，化开我眼里的冰，<br>蔓延成河。<br>云一过，山下的那条大河，<br>漫过我眼窝。<br>风一吹，云雾散去才看清，<br>远处的你。<br>你一回头，这遍野山色青峰，<br>竟失了颜色。<br>幻化成孤岛的你，<br>我乘上思念化作的船。<br>漂啊，漂啊，去看你。<br>独眠在山谷的你，<br>我翻山越岭跨过山河，<br>走着，走着，去寻你。<br>漫天，飞雪，抚琴，对饮。<br>愿伴你坐揽天地，<br>欲念，嗔痴，无妄，相忘。<br>不悔梦归处是你。<br>幻化成孤岛的你，<br>我乘上思念化作的船。<br>漂啊，漂啊，去看你。<br>独眠在山谷的你，<br>我翻山越岭跨过山河。<br>走着，走着，去寻你。<br>', 'open', '2017-11-19', '1', '1', '0000000', '0000000000', '6');
INSERT INTO `song` VALUES ('7', '000006', '这场名叫人生的旅途', '夏小虎 - 这场名叫人生的旅途.mp3', '这场名叫人生的旅途.jpg', '作曲：夏小虎<br>作词：刁云逸<br>上车下车 人往人来<br>时间从不曾为谁等待<br>车窗之外 像是倒带<br>世界流入记忆的深海<br>心中的爱 是否还在<br>或已落在昨日的站台<br>这个春天 依然精彩<br>只是已不见那年花开<br>这场名叫人生的旅途<br>有太多风景不及回顾<br>在萧瑟处 回望来路<br>风雨天晴都无<br>这场名叫人生的旅途<br>哪里是驿站供我驻足<br>不知不觉 开始羡慕<br>花间蝴蝶飞舞<br>上车下车 人往人来<br>时间从不曾为谁等待<br>车窗之外 像是倒带<br>世界流入记忆的深海<br>心中的爱 是否还在<br>或已落在昨日的站台<br>这个春天 依然精彩<br>只是已不见那年花开<br>这场名叫人生的旅途<br>有太多风景不及回顾<br>在萧瑟处 回望来路<br>风雨天晴都无<br>这场名叫人生的旅途<br>哪里是驿站供我驻足<br>不知不觉 开始羡慕<br>花间蝴蝶飞舞<br>这场名叫人生的旅途<br>有太多风景不及回顾<br>在萧瑟处 回望来路<br>风雨天晴都无<br>这场名叫人生的旅途<br>哪里是驿站供我驻足<br>不知不觉 开始羡慕<br>花间蝴蝶飞舞<br>不知不觉 开始羡慕<br>花间蝴蝶飞舞<br>唵嘛哩嘛哩叭咪吽<br>', 'open', '2017-11-27', '3', '4', '0000005', '0000000000', '6');
INSERT INTO `song` VALUES ('8', '000007', '林宥嘉', '徐秉龙 - 林宥嘉.mp3', '林宥嘉.jpg', '作曲 : 徐秉龙<br>作词 : 徐秉龙<br>多心酸<br>是你的背影<br>不孤单<br>也不肯涣散<br>说的谎<br>残酷成月光<br>爱的人<br>早换了模样<br>天真有邪的日子里<br>我曾拥有你<br>浪费了我的半生<br>就这样随你飞去<br>全世界谁倾听你<br>我都不愿意<br>只想要偷偷的听着你<br>你的眼睛<br>恍若梦呓<br>囿于银河<br>又困于晨星<br>怎样隐匿<br>才私有你<br>多少青春<br>藏进你身体<br><br>-呜-<br><br>多心酸<br>是你的背影<br>不孤单<br>也不肯涣散<br>说的谎<br>残酷成月光<br>爱的人<br>早换了模样<br>天真有邪的日子里<br>我曾拥有你<br>浪费了我的半生<br>就这样随你飞去<br>全世界谁倾听你<br>我都不愿意<br>只想要偷偷的听着你<br>你的眼睛<br>恍若梦呓<br>囿于银河<br>又困于晨星<br>怎样隐匿<br>才私有你<br>多少青春<br>藏进你身体<br>你多迷离<br>你太彻底<br>整颗宇宙<br>只有一个你<br>你多迷离<br>你太彻底<br>整颗宇宙<br>藏进你身体<br>', 'open', '2017-11-27', '12', '6', '0000006', '0000000000', '5');
INSERT INTO `song` VALUES ('9', 'rli1gq', '血腥爱情故事', '凯瑟喵 - 血腥爱情故事（Cover：张惠妹）.mp3', '血腥爱情故事.jpg', null, 'open', '2017-12-23', '2', '0', '24xbg71', '0000000000', '5');
INSERT INTO `song` VALUES ('10', 'o2fepz', '勇气', '伦桑 - 勇气 （Cover 梁静茹）.mp3', '5-160415140207.jpg', null, 'open', '2017-12-27', '0', '0', 'x5wfnr3', '0000000000', '5');

-- ----------------------------
-- Table structure for songcomment
-- ----------------------------
DROP TABLE IF EXISTS `songcomment`;
CREATE TABLE `songcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songid` varchar(6) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `comment_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`songid`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of songcomment
-- ----------------------------
INSERT INTO `songcomment` VALUES ('1', '000000', '0000000000', '我和男朋友是在音乐节认识的，我们惊人的相似，我们第一次见面穿着一样的牌子，我们喜欢的歌一样，风格一样，星座一样，爱吃的也一样，生活方式一样，追求一样，说话方式都一样，我在ktv点的小众民谣他都会唱，我们总是在小屋子里一起听喜欢的歌，兴奋的交流看法，精神世界的相融真的很快活。', '2017-12-09 21:21:44');
INSERT INTO `songcomment` VALUES ('2', '000000', '0000000001', '落幕后 小丑卸妆时候 最心酸', '2017-12-09 21:22:03');
INSERT INTO `songcomment` VALUES ('3', '000000', '0000000002', '如果有一天我遇见相似的灵魂 那它肯定是步履艰难 不被理解 喜黑怕光的。如果可以的话 让我触摸一下吧 它也一样孤独得太久。', '2017-12-09 21:22:22');
INSERT INTO `songcomment` VALUES ('4', '000001', '0000000002', '听哭了我这个大一狗，想你们了，我的高中同学', '2017-12-09 21:22:48');
INSERT INTO `songcomment` VALUES ('5', '000001', '0000000004', '初三党,就要毕业了,有点后悔这三年没有抓紧时间,没有和班上同学真正相处过,我们班全年段最差,我觉得独一无二,没有规定俗称,班主任也很民主,我们活的很开心,同学个性也很鲜明,这首歌的歌手是我们这里的一中学生,再过不到半年我也许也会踏上这所学校啊,真想重新回到初一再活一遍。', '2017-12-09 21:23:02');
INSERT INTO `songcomment` VALUES ('6', '000001', '0000000005', '高中那段岁月，一生难忘。虽然没有轰轰烈烈的校园爱情，没有叼炸天的成绩，没有多少傲人的成果。但是我在高中收获了可以铭记一生的朋友，但是我参加了我喜欢的社团，但是我做了我喜欢的事，但是我考进了我想要的大学。但是，我来自福州一中。', '2017-12-09 21:23:19');
INSERT INTO `songcomment` VALUES ('7', '000002', '0000000001', '在这个网络飞速发展的时代。当你看倦了娱乐圈五花八门的头条绯闻。你就会发现，像许嵩这种纯粹做音乐的音乐人是多么可贵。', '2017-12-09 21:23:49');
INSERT INTO `songcomment` VALUES ('8', '000002', '0000000003', '许嵩：借给我5分20秒的时间，听一首蝴蝶的时间\r\n嵩鼠：借借借！一辈子都愿意借给你', '2017-12-09 21:23:51');
INSERT INTO `songcomment` VALUES ('9', '000002', '0000000005', '你所在之处，是我不得不思念的天涯海角。即便山长水阔无法伴你共度；即便千秋风雅唯有蝶中流离。泱泱千年，我曾长眠。只梦过你，只等待一只蝶。思念通明，与子成说。时光漫漫，我心仍在。表白我嵩❤', '2017-12-09 21:24:04');
INSERT INTO `songcomment` VALUES ('10', '000002', 'g4f5vt1zb9', '一直有一个问题:梁山伯喜欢的到底是祝英台还是祝贤弟', '2017-12-09 21:24:17');
INSERT INTO `songcomment` VALUES ('11', '000003', '0000000000', '孤单本是常态，奈何人矫情。', '2017-12-09 21:24:53');
INSERT INTO `songcomment` VALUES ('12', '000003', '0000000002', '-\r\n生而孤独才是，\r\n生而为人的驱动力，\r\n爱，只是它的表现，\r\n方式之一。 -', '2017-12-09 21:24:57');
INSERT INTO `songcomment` VALUES ('13', '000003', '0000000004', '方方的歌有她独特符号，中间的部分特别惊艳。', '2017-12-09 21:25:08');
INSERT INTO `songcomment` VALUES ('14', '000004', '0000000001', '我们今年二模的作文题就是它，一边一边唱，不知不觉流下眼泪来，结果，偏题，38分……', '2017-12-09 21:25:31');
INSERT INTO `songcomment` VALUES ('15', '000004', '0000000002', '现在的邮件依然很慢', '2017-12-09 21:25:41');
INSERT INTO `songcomment` VALUES ('16', '000004', '0000000005', '不知什么时候起，我成了朋友中的怪咖，有时候聊起最近听什么，轮到我说的时候，他们纷纷摆手，认为我听的都是小众阴阳怪气难以接受。其实我一直觉得自己的品味很小清新。', '2017-12-09 21:25:49');
INSERT INTO `songcomment` VALUES ('17', '000004', 'g4f5vt1zb9', '中华民国结婚证词: 两姓联姻，一堂缔约，良缘永结，匹配同称。看此日桃花灼灼，宜室宜家，卜他年瓜瓞绵绵，尔昌尔炽。谨以白头之约，书向鸿笺，好将红叶之盟，载明鸳谱。此证。', '2017-12-09 21:25:57');
INSERT INTO `songcomment` VALUES ('18', '000005', '0000000002', '古人常云山上有神仙，常道世外高人都归隐山中，所以，山下的世界便是凡尘，便是人间。只羡鸳鸯不羡仙，所以来到这山下的世界，沾染人间烟火，翻山越岭，踏遍山河也要寻到你。而你比这山下一切美好的事物都要美好。无论你身在何处，请不要害怕孤身一人，我会来陪你。', '2017-12-09 21:26:18');
INSERT INTO `songcomment` VALUES ('19', '000005', '0000000003', '我有整个宇宙想讲给你听，张嘴却吐不出半粒星尘。', '2017-12-09 21:26:36');
INSERT INTO `songcomment` VALUES ('20', '000005', '0000000004', '最初写这首歌是在去年七月的一个晚上，广州的夏季炎炎而闷热，当写下AB段后，因着一些情绪的闯入，断了。原本以为这首歌不会面世，因缘际遇，在年底，今年年初的时候，于澳门关闸驶向凼仔岛的赌场大巴车上，写下了副歌与桥段。忘不了当时我郁郁地望着窗外灰黄色的大海与渐行渐远的运沙船，', '2017-12-09 21:26:49');
INSERT INTO `songcomment` VALUES ('21', '000005', '0000000005', '人间处处可见光芒 唯独吸引我的还是那些猝不及防 如晴天突遇暴雪 山重水复转瞬柳暗花明 又如 初衷只想在浮生中历个劫 奈何历的是你', '2017-12-09 21:26:59');
INSERT INTO `songcomment` VALUES ('22', '000005', 'g4f5vt1zb9', '拾贰同学的一些所思所想真的非常的棒，同时兼具了恰当的深度和值得称赞的艺术性，她的身上具备了现在许多的音乐人所并不具备的一些东西。希望大家以后能多多关注拾贰，拾贰真的很棒。我们今后出品的歌曲一定不会辜负大家的众望，我们越来越好，越来越棒。', '2017-12-09 21:27:02');
INSERT INTO `songcomment` VALUES ('23', '000006', '0000000003', '私信要爆了你们这些调皮的小捣蛋', '2017-12-09 21:27:30');
INSERT INTO `songcomment` VALUES ('24', '000006', '0000000004', '军校五年，还有十几天就要去边疆了。四年前，我冒着余震深夜走了五十公里，热血沸腾，没有惧怕；三年前，演习时身体被感染，我躺在华西医院的重症监护室里，当时真的以为自己要离开这个世界了；两年前，在野外我意外受伤，下巴封了五针；一年前，四年的女友离我而去。这场名叫人生的旅途注定很长很长。', '2017-12-09 21:27:39');
INSERT INTO `songcomment` VALUES ('25', '000006', 'g4f5vt1zb9', '只有我一个人是夏小虎先生私信来的吗？', '2017-12-09 21:27:59');
INSERT INTO `songcomment` VALUES ('26', '000007', '0000000001', '“你多迷离，你太彻底”', '2017-12-09 21:28:21');
INSERT INTO `songcomment` VALUES ('27', '000007', '0000000002', '你唱林夕，有人唱你', '2017-12-09 21:28:27');
INSERT INTO `songcomment` VALUES ('28', '000007', 'g4f5vt1zb9', '喜欢林宥嘉八年 高中的时候经常看到一个男孩子觉得他好像林宥嘉 后来他成了我的男朋友 昨天分手了', '2017-12-09 21:28:28');
INSERT INTO `songcomment` VALUES ('29', '000003', '0000000000', '这好听', '2017-12-10 11:13:47');
INSERT INTO `songcomment` VALUES ('30', '000004', '0000000000', '从前车马邮件慢，情意长', '2017-12-10 11:17:08');
INSERT INTO `songcomment` VALUES ('31', '000005', '0000000000', '山下有座庙', '2017-12-10 11:55:48');
INSERT INTO `songcomment` VALUES ('32', '000002', '0000000000', '借你半世年华', '2017-12-10 12:00:21');
INSERT INTO `songcomment` VALUES ('33', '000002', '0000000000', '喜欢许嵩10年的有吗', '2017-12-10 12:01:55');
INSERT INTO `songcomment` VALUES ('34', '000006', '0000000000', '幸好有这场叫人生的路途', '2017-12-10 12:04:32');
INSERT INTO `songcomment` VALUES ('35', '000004', '0000000000', '很棒', '2018-01-10 14:21:00');

-- ----------------------------
-- Table structure for songmenu
-- ----------------------------
DROP TABLE IF EXISTS `songmenu`;
CREATE TABLE `songmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songmenuid` varchar(7) NOT NULL,
  `status` varchar(255) NOT NULL,
  `status_date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_date` date NOT NULL,
  `userId` varchar(10) NOT NULL,
  `smpicurl` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `describle` varchar(255) DEFAULT NULL,
  `clicktime` int(11) NOT NULL,
  PRIMARY KEY (`id`,`songmenuid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of songmenu
-- ----------------------------
INSERT INTO `songmenu` VALUES ('1', '0000000', 'open', '2018-01-15 20:33:20', '2017-11-19', '0000000000', '55d2f7eaf03a9.jpg', '愿有人为你深夜温酒，清晨起身煮粥', '3', '11');
INSERT INTO `songmenu` VALUES ('2', '0000001', 'open', '2018-01-10 14:21:20', '2017-11-19', '0000000001', 't2.jpg', '有些歌从听的那一刻丶就注定了永远', null, '24');
INSERT INTO `songmenu` VALUES ('3', '0000002', 'open', '2017-12-04 11:35:01', '2017-11-19', '0000000002', 't3.jpg', '【节奏控】清爽节奏，中毒的旋律循环不止', null, '20');
INSERT INTO `songmenu` VALUES ('4', '0000003', 'open', '2017-12-04 11:35:03', '2017-11-19', '0000000003', 't4.jpg', '面对告白第一反应是讨厌？', null, '20');
INSERT INTO `songmenu` VALUES ('5', '0000004', 'open', '2018-01-02 23:34:00', '2017-11-19', '0000000004', 't5.jpg', '【华语】婚礼暖场，循环幸福', null, '21');
INSERT INTO `songmenu` VALUES ('6', '0000005', 'open', '2017-12-17 14:42:10', '2017-11-19', '0000000000', 't6.jpg', 'Rapper说情话|突然想闻一闻恋爱的酸臭味', '2', '20');
INSERT INTO `songmenu` VALUES ('7', '0000006', 'open', '2017-12-03 21:04:17', '2017-11-19', '0000000001', 't7.jpg', '我在南方三十度，你在北方穿秋裤', null, '20');
INSERT INTO `songmenu` VALUES ('8', '0000007', 'open', '2017-12-04 11:35:15', '2017-11-19', '0000000002', 't8.jpg', '【史诗配乐】用钢琴奏响华丽的悲壮史诗', null, '20');
INSERT INTO `songmenu` VALUES ('9', '0000008', 'open', '2017-12-04 11:35:16', '2017-11-19', '0000000003', 't9.jpg', '有些歌不舍得删，有些人不舍得忘', null, '20');
INSERT INTO `songmenu` VALUES ('10', '0000009', 'open', '2017-12-04 11:35:20', '2017-11-19', '0000000004', 't10.jpg', '不插电|只需一架钢琴便能深情演绎', null, '20');
INSERT INTO `songmenu` VALUES ('11', '0000010', 'open', '2017-12-14 22:59:03', '2017-12-14', '0000000002', 't11.jpg', '你来过，我永远记得 ', null, '30');
INSERT INTO `songmenu` VALUES ('12', 'o3ugwxb', 'open', '2017-12-17 15:42:59', '2017-12-17', '0000000000', 't0.jpg', 'test', null, '0');
INSERT INTO `songmenu` VALUES ('13', 'g39io6q', 'close', '2017-12-20 09:08:24', '2017-12-20', '0000000000', 't0.jpg', '11111', null, '0');
INSERT INTO `songmenu` VALUES ('14', 'rk85y9e', 'close', '2017-12-24 19:40:42', '2017-12-24', '0000000000', 't0.jpg', '', null, '0');
INSERT INTO `songmenu` VALUES ('15', 'gk7itrl', 'close', '2018-01-10 14:44:56', '2018-01-10', '0000000000', 't0.jpg', '222', null, '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userscore` int(11) NOT NULL,
  `describle` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `userpicurl` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '0000000000', 'admin', '123456', '1', '听歌', '杭州', '2017-11-21', '男', '05e8d94cf82e14b963126a8e76848b4b3777902b9.jpg', '蓝十七');
INSERT INTO `user` VALUES ('2', '0000000001', 'test', '123456', '10', '唱歌', '上海', '2017-12-03', '女', '0000000000.jpg', '蓝小七');
INSERT INTO `user` VALUES ('3', '0000000002', 'admin1', '123456', '10', '秦', '广州', '2017-12-04', '女', '0000000000.jpg', '嗯哼');
INSERT INTO `user` VALUES ('4', '0000000003', 'test1', '123456', '10', '时', '北京', '2017-12-04', '男', '0000000000.jpg', 'jasper');
INSERT INTO `user` VALUES ('5', '0000000004', 'admin2', '123456', '10', '明', '贵州', '2017-12-04', '女', '0000000000.jpg', '泡芙');
INSERT INTO `user` VALUES ('6', 'g4f5vt1zb9', 'admin3', '123456', '4', '爸爸去哪儿第五季', '马来西亚', '2017-12-05', '男', '0000000000.jpg', 'Max');
INSERT INTO `user` VALUES ('7', '0000000005', 'admin44', '123456', '10', '爸爸去哪儿', '爸爸去哪儿', '2017-12-09', '女', '0000000000.jpg', 'Neinei');
