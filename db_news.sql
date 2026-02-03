/*
 Navicat Premium Dump SQL

 Source Server         : BM
 Source Server Type    : MySQL
 Source Server Version : 80012 (8.0.12)
 Source Host           : localhost:3306
 Source Schema         : db_news

 Target Server Type    : MySQL
 Target Server Version : 80012 (8.0.12)
 File Encoding         : 65001

 Date: 05/06/2025 23:32:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (2, '财经');
INSERT INTO `category` VALUES (3, '时政');
INSERT INTO `category` VALUES (4, '科技');
INSERT INTO `category` VALUES (5, '体育');
INSERT INTO `category` VALUES (9, '文化娱乐');
INSERT INTO `category` VALUES (10, '社会');
INSERT INTO `category` VALUES (12, '国际');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creater` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (13, '为中国体育健儿点赞！', '2025-05-19 16:10', '燕棠', 'cc0b4f79-9492-4305-9614-713eb8f6ad65.jpg', 3);
INSERT INTO `comments` VALUES (14, '期待我们国家的发展', '2025-05-19 16:12', '燕棠', 'cc0b4f79-9492-4305-9614-713eb8f6ad65.jpg', 5);
INSERT INTO `comments` VALUES (15, '为中国优秀传统文化感到骄傲', '2025-05-19 17:45', '宋郁', '1c472c59-ec0c-4c79-8649-df0cf3a19ed6.jpg', 1);
INSERT INTO `comments` VALUES (17, '体育强则国家强！', '2025-05-19 17:48', '宋郁', '1c472c59-ec0c-4c79-8649-df0cf3a19ed6.jpg', 3);
INSERT INTO `comments` VALUES (18, '体验超级棒', '2025-05-19 17:49', '宋郁', '1c472c59-ec0c-4c79-8649-df0cf3a19ed6.jpg', 32);
INSERT INTO `comments` VALUES (19, '非常实用', '2025-05-19 17:54', '谱线', '2405076c-6456-4808-b1e0-96df7a9ee729.jpg', 32);
INSERT INTO `comments` VALUES (21, '我们始终秉持睦邻、安邻、富邻、亲诚惠容、命运与共的理念方针，发展同所有周边邻国的关系。', '2025-05-19 17:55', '谱线', '2405076c-6456-4808-b1e0-96df7a9ee729.jpg', 35);
INSERT INTO `comments` VALUES (22, '加油！', '2025-05-19 17:56', '谱线', '2405076c-6456-4808-b1e0-96df7a9ee729.jpg', 2);
INSERT INTO `comments` VALUES (23, '这是客气的回答，如果不客气的回答，应该说：如果我们向巴基斯坦提供了防空系统的协助，那么印度的飞机就不止被打下来六架了！', '2025-05-19 17:57', '鱼故', 'cb11483a-020e-483a-9f13-f68b6f206950.jpg', 35);
INSERT INTO `comments` VALUES (25, '高瞻远瞩谋新篇，擘画蓝图启新程！科学领航、民主筑基、法治护航，凝聚亿万人民智慧，汲取实践创新力量，以战略眼光锚定方向，用磅礴伟力绘就中国式现代化壮丽画卷，“十五五”征程，必将书写新的时代传奇！', '2025-05-19 17:58', '鱼故', 'cb11483a-020e-483a-9f13-f68b6f206950.jpg', 34);
INSERT INTO `comments` VALUES (26, '赞扬古人的智慧', '2025-05-19 18:00', '鱼故', 'cb11483a-020e-483a-9f13-f68b6f206950.jpg', 1);
INSERT INTO `comments` VALUES (27, '编制和实施“十五五”规划，对于全面落实党的二十大战略部署、推进中国式现代化意义重大！', '2025-05-19 18:00', '皖栗', '9933e7ba-73e8-445d-9487-f3296196ac0d.jpg', 34);
INSERT INTO `comments` VALUES (29, '虽然缺考了语文科目，但他参加了人生道德与品质的大考！', '2025-05-19 18:01', '皖栗', '9933e7ba-73e8-445d-9487-f3296196ac0d.jpg', 33);
INSERT INTO `comments` VALUES (31, '孩子已经是满分了！！18岁的少年中国说!', '2025-05-19 18:03', '燕棠', 'cc0b4f79-9492-4305-9614-713eb8f6ad65.jpg', 33);
INSERT INTO `comments` VALUES (32, '补考才公平，特招将会沦为特权的漏洞', '2025-05-19 18:04', '谱线', '2405076c-6456-4808-b1e0-96df7a9ee729.jpg', 33);
INSERT INTO `comments` VALUES (33, '这种舍己救人的精神令人感动，姜昭鹏的行动展现了真正的友爱与勇敢，值得我们学习和传递。', '2025-05-19 18:06', '鱼故', 'cb11483a-020e-483a-9f13-f68b6f206950.jpg', 33);
INSERT INTO `comments` VALUES (35, '救人过程就是一篇很好的作文。', '2025-05-19 18:07', '宋郁', '1c472c59-ec0c-4c79-8649-df0cf3a19ed6.jpg', 33);
INSERT INTO `comments` VALUES (36, '创新驱动发展，深化体制改革！ 扩大消费内需，稳步安全发展！ 祝福伟大的祖国，高质量发展，芝麻开花节节高！', '2025-05-19 18:07', '宋郁', '1c472c59-ec0c-4c79-8649-df0cf3a19ed6.jpg', 34);
INSERT INTO `comments` VALUES (37, '加油！', '2025-05-19 20:30', '燕棠', 'cc0b4f79-9492-4305-9614-713eb8f6ad65.jpg', 2);

-- ----------------------------
-- Table structure for editors
-- ----------------------------
DROP TABLE IF EXISTS `editors`;
CREATE TABLE `editors`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `times` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `eno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of editors
-- ----------------------------
INSERT INTO `editors` VALUES (1, '无双', '123456', '15365128888', '女', 'wushuang@qq.com', '2025-05-01 09:08', '162401');
INSERT INTO `editors` VALUES (2, '夏野', '123456', '13993111936', '女', 'xiaye@163.com', '2025-05-09 21:22', '162402');
INSERT INTO `editors` VALUES (3, '费弧', '123456', '19936517899', '男', 'feihu@163.com', '2025-05-19 16:28', '162403');
INSERT INTO `editors` VALUES (4, '裴掷', '123456', '18896321466', '男', 'peizhi@163.com', '2025-05-19 16:29', '162404');
INSERT INTO `editors` VALUES (5, '顾熙熙', '123456', '19985318563', '女', 'guxixi@163.com', '2025-05-19 16:30', '162405');

-- ----------------------------
-- Table structure for fankui
-- ----------------------------
DROP TABLE IF EXISTS `fankui`;
CREATE TABLE `fankui`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctime` varchar(33) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fankui
-- ----------------------------
INSERT INTO `fankui` VALUES (10, 2, '请再多一些新闻信息吧', '2025-05-15 15:50');
INSERT INTO `fankui` VALUES (11, 1, '做得很好，继续加油', '2025-05-16 18:09');
INSERT INTO `fankui` VALUES (12, 11, '文化方面太少，请多多上传', '2025-05-18 18:10');
INSERT INTO `fankui` VALUES (13, 12, '想看国际新闻', '2025-05-18 20:11');
INSERT INTO `fankui` VALUES (14, 13, '多多报道社会热点', '2025-05-19 10:13');
INSERT INTO `fankui` VALUES (18, 20, '反馈', '2025-05-28 16:26');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `times` varchar(33) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `see_count` int(11) NULL DEFAULT 0,
  `comment_count` int(11) NULL DEFAULT 0,
  `editor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '文化中国行丨天坛：与天地“对话”的传世古建', '<p style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 32px; color: rgb(51, 51, 51); word-break: break-all;\"><strong>央视网消息：</strong>天坛位于北京中轴线的南端，历经了600多年的岁月洗礼，是我国现存规模最大的皇家祭祀建筑群。</p><p style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 32px; color: rgb(51, 51, 51); word-break: break-all;\">　　在天坛的建筑群中，从北向南依次排列着皇乾殿、祈年殿、皇穹宇和圜丘，西侧建有斋宫，占地面积近三百万平方米。</p><p style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 32px; color: rgb(51, 51, 51); word-break: break-all;\">　　其中，祈年殿是天坛中体量最大的建筑，也是北京城形制较为独特的建筑，三层重檐圆形屋顶，象征着天、地、人。其蓝色琉璃瓦顶与天空融为一体，<strong>展现了古人“天圆地方”的宇宙观。</strong></p><p class=\"photo_img_20190808\" style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 0px; color: rgb(51, 51, 51); word-break: break-all; text-align: center;\"><img src=\"https://p1.img.cctvpic.com/photoworkspace/contentimg/2025/05/12/2025051213143585494.png\" alt=\"\" width=\"1000\"/></p><p style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 32px; color: rgb(51, 51, 51); word-break: break-all;\">　　<strong>国家文物局古建筑专家委员会委员 柳肃：</strong>古代人认为天像一个穹顶，把地罩在下面。建筑中最明显的体现就是天坛所有建筑都是圆的。我们古代的哲学认为人是顺应天的，天人合一，道法自然，人和自然和谐统一。</p><p style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 32px; color: rgb(51, 51, 51); word-break: break-all;\">　　专家介绍，如果将祈年殿三层屋顶边线相连，与鎏金宝顶中线在天空相交，夹角近三十度，而连接最上层屋顶边沿与中线，又可以构成近乎九十度的直角，呈现完美稳定的三角形构图。<strong>祈年殿的设计既尽显建筑的和谐之美，又兼顾了实用性。</strong></p><p class=\"photo_img_20190808\" style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 0px; color: rgb(51, 51, 51); word-break: break-all; text-align: center;\"><img src=\"https://p2.img.cctvpic.com/photoworkspace/contentimg/2025/05/12/2025051213160470637.png\" alt=\"\" width=\"1000\"/></p><p style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 32px; color: rgb(51, 51, 51); word-break: break-all;\">　　<strong>天坛公园工作人员 张华伟：</strong>在祈年殿上面，房檐是弯曲的，运用到了最速曲线。一般说两点之间直线最短，但是如果房檐设计成直的，下雨或者下雪的时候，雨水不会以最快速度从房檐上排出去。按现在这种角度，雨水会以最快的速度从房顶上甩出去，保证木结构的建筑不会长期被水泡着，防止腐蚀。</p><p style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 32px; color: rgb(51, 51, 51); word-break: break-all;\">　　在殿内，中央四根大柱，象征着一年四季，其外围有两圈柱子，内圈为十二根金柱，代表一年十二个月。外圈是十二根檐柱，对应一天十二个时辰，内、外共计二十四根柱子，寓意一年有二十四个节气。</p><p class=\"photo_img_20190808\" style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 0px; color: rgb(51, 51, 51); word-break: break-all; text-align: center;\"><img src=\"https://p1.img.cctvpic.com/photoworkspace/contentimg/2025/05/12/2025051213164325991.png\" alt=\"\" width=\"1000\"/></p><p style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 32px; color: rgb(51, 51, 51); word-break: break-all;\">　　由于祈年殿采用独特的圆形结构，殿内的弯曲圈梁和弧形额枋，直曲搭配，柱、枋之上两百多个斗拱层层叠叠，承托着屋顶。古人将建筑结构与文化内涵进行了完美融合。</p><p style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 32px; color: rgb(51, 51, 51); word-break: break-all;\">　　<strong>国家文物局古建筑专家委员会委员 柳肃：</strong>这种木结构的韧劲，象征着中国人的一种韧劲，可以有一定的弯曲变形，又使劲坚持着，抵抗着自然的力量。这个应该可以说是一种特殊的中国人的精神。</p><p style=\"text-size-adjust: none; padding: 0px; margin-top: 0px; margin-bottom: 30px; list-style: none; font-size: 18px; line-height: 32px; color: rgb(51, 51, 51); word-break: break-all;\">　　天坛，凝聚着古人的智慧与心血。如今，为了将这些宝贵的建筑及文化资源更好地传承下去，作为国家文物局首批文物建筑预防性保护试点单位，天坛公园采用数据采集、动态监测等预防性保护措施，并建立详尽的古建信息数据库，不仅为古建日常保养提供技术支撑，更成为后人修缮古建的一手资料。</p><p><br/></p>', '2025-05-12 19:41', 84, 3, '无双', '970711e7-25cb-4102-9d0d-925b3204294c.png', '文化娱乐', '1');
INSERT INTO `news` VALUES (2, '琼粤无人机货运首飞成功', '<p><span style=\"font-size: 16px;\"><span style=\"color: rgb(51, 51, 51); font-family: PingFangSC-Regular, Helvetica, Arial, &quot;Microsoft Yahei&quot;, sans-serif; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">4月24日上午，FP-98大型固定翼无人机降落在珠海莲洲机场，机场为FP-98举行“过水门”仪式。记者袁玉龙摄</span><br/><span style=\"color: rgb(51, 51, 51); font-family: PingFangSC-Regular, Helvetica, Arial, &quot;Microsoft Yahei&quot;, sans-serif; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">4月24日上午，一批来自海南文昌禄泰虾苗基地重达455公斤的鲜活虾苗，搭乘FP-98大型固定翼无人机从海口甲子机场起飞，经过三个小时左右的飞行，顺利抵达广东珠海莲洲机场。此次飞行是海南首次实现琼粤两地无人机公共货运物流跨海飞行，是海南积极探索高附加值农产品跨海物流新通道新业态的努力尝试，搭建起一条琼粤“空中通道”，对琼粤两地低空经济的发展起着巨大的推动作用。</span><br/><span style=\"color: rgb(51, 51, 51); font-family: PingFangSC-Regular, Helvetica, Arial, &quot;Microsoft Yahei&quot;, sans-serif; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">据介绍，FP-98是国内首款大型无人运输机系统，可应用于运输投送、应急空投、通信中继和特种试验搭载等场景，能够大幅提升跨城市或边远地区物流运输效率。</span></span></p>', '2025-05-12 19:49', 71, 2, '无双', '95030797-e1e5-49a1-aafc-afdc70096000.jpg', '财经', '1');
INSERT INTO `news` VALUES (3, '中国田径队打破混合4x400米接力全国纪录晋级世锦赛', '<p><span style=\"font-size: 20px;\"><span style=\"color: rgb(51, 51, 51); font-family: PingFangSC-Regular, Helvetica, Arial, &quot;Microsoft Yahei&quot;, sans-serif; text-indent: 36px; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">央视网消息：北京时间5月11日，在广州天河体育中心进行的2025年世界田联接力赛混合4×400米资格赛中，由梁宝棠、莫家蝶、张起宁、刘英兰组成的中国队以3分13秒39的成绩打破该项目全国纪录，在小组中排名第三，成功获得田径世锦赛该项目的参赛资格。</span></span></p>', '2025-05-12 19:54', 68, 2, '无双', '770e20a8-2f87-42f9-ae3a-08d6fb4efc9c.png', '体育', '1');
INSERT INTO `news` VALUES (32, '华为nova14全系标配双向北斗卫星消息，Ultra支持天通卫星通信', '<h1 style=\"text-wrap-mode: wrap; box-sizing: border-box; font-size: 37px; margin: 0px; padding: 0px; line-height: 56px; font-family: system-ui, -apple-system, &quot;Segoe UI&quot;, Rototo, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"font-family: sans-serif; font-size: 20px;\">IT之家 5 月 19 日消息，据华为官方介绍，华为 nova 14 系列手机全系标配双向北斗卫星消息，支持北斗卫星图片消息、北斗卫星短信（IT之家注：文字 &amp; 位置坐标）。</span></h1><p style=\"text-wrap-mode: wrap;\"><br/></p><p><article><p style=\"margin-top: 20px; margin-bottom: 20px; box-sizing: border-box; padding: 0px; border: 0px; text-align: center;\"><br/></p><p style=\"margin-top: 20px; margin-bottom: 20px; box-sizing: border-box; padding: 0px; border: 0px; text-align: center;\"><img src=\"https://p3-sign.toutiaoimg.com/tos-cn-i-qvj2lq49k0/6049fcc801054113b60cf47141833b87~tplv-tt-origin-web:gif.jpeg?_iz=58558&from=article.pc_detail&lk3s=953192f4&x-expires=1748249532&x-signature=vDaDpO%2BVldtLHHXUDKjLr6MBW9Y%3D\" class=\"syl-page-img\"/></p><p style=\"margin-top: 20px; margin-bottom: 20px; box-sizing: border-box; padding: 0px; border: 0px; text-align: center;\"><img src=\"https://p3-sign.toutiaoimg.com/tos-cn-i-qvj2lq49k0/891fe8ae204140dc8e1757fd9a6479df~tplv-tt-origin-web:gif.jpeg?_iz=58558&from=article.pc_detail&lk3s=953192f4&x-expires=1748249532&x-signature=G1OgtTnmehGWQihJu2k80w%2F0SuI%3D\" class=\"syl-page-img\"/></p><p style=\"margin-top: 20px; margin-bottom: 20px; box-sizing: border-box; padding: 0px; border: 0px;\"><span style=\"font-size: 18px;\">此外，<span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; border: 0px;\">华为 nova 14 Ultra 还支持天通卫星通信</span>，包括天通卫星通话、天通卫星短信。</span></p><p style=\"margin-top: 20px; margin-bottom: 20px; box-sizing: border-box; padding: 0px; border: 0px;\"><span style=\"font-size: 18px;\">新机还支持 5A 速度，蜂窝上传速率相比上代提升 87%，蜂窝下载速率相比上代提升 64%，出地库扫付款码速度提升 42%，出电梯刷视频回网速度提升 24%，地库弱信号通话流畅度提升 78%。</span></p><p style=\"margin-top: 20px; margin-bottom: 20px; box-sizing: border-box; padding: 0px; border: 0px; text-align: center;\"><img src=\"https://p3-sign.toutiaoimg.com/tos-cn-i-qvj2lq49k0/72291ccf2108420cb51228306f2ec223~tplv-tt-origin-web:gif.jpeg?_iz=58558&from=article.pc_detail&lk3s=953192f4&x-expires=1748249532&x-signature=5eCcSZievWqqh%2BXFEc2zlK9I6hA%3D\" class=\"syl-page-img\"/></p><p style=\"margin-top: 20px; margin-bottom: 20px; box-sizing: border-box; padding: 0px; border: 0px; text-align: center;\"><img src=\"https://p3-sign.toutiaoimg.com/tos-cn-i-qvj2lq49k0/5c580167b86a41caafda70bbd5daf965~tplv-tt-origin-web:gif.jpeg?_iz=58558&from=article.pc_detail&lk3s=953192f4&x-expires=1748249532&x-signature=4PpmX34TZhnQbKS4xkr2hY2UQI8%3D\" class=\"syl-page-img\"/></p><p style=\"margin-top: 20px; box-sizing: border-box; padding: 0px; border: 0px; margin-bottom: 0px !important;\"><span style=\"font-size: 18px;\">nova 系列首次支持星闪精准查找，登录自己华为账号，关机也能轻松找回，达到 2 米精度、100 米半径。</span></p></article></p><p><br/></p><p style=\"text-wrap-mode: wrap;\"><br/></p><p style=\"text-wrap-mode: wrap;\"><br/></p><p><br/></p>', '2025-05-19 16:55', 8, 2, '夏野', 'fc0295d0-f9a0-4be0-9e5a-041fc38a824d.png', '科技', '1');
INSERT INTO `news` VALUES (33, '山东城服学院回应姜昭鹏职教高考缺考', '<p><article><p style=\"box-sizing: border-box; margin-top: 20px; padding: 0px; border: 0px; margin-bottom: 0px !important;\"><span style=\"font-size: 20px;\">山东城服学院回应姜昭鹏职教高考缺考，这种救人精神值得我们所有人学习，校方将积极与各方沟通为学生争取升学机会。#烟台 #小伙为救同学职教高考语文缺考&nbsp;</span></p></article></p><p></p><p><br/></p>', '2025-05-19 17:36', 19, 5, '费弧', 'da034350-596d-400d-b314-f02995f1f1c2.png', '社会', '1');
INSERT INTO `news` VALUES (34, '习近平：坚持科学决策民主决策依法决策 高质量完成“十五五”规划编制工作', '<p style=\"box-sizing: border-box; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 18px; text-align: justify; text-wrap-mode: wrap; background-color: rgb(255, 255, 255); margin-top: 0px !important;\"><span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; border: 0px;\">习近平对“十五五”规划编制工作作出重要指示强调</span></p><p style=\"box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 18px; text-align: justify; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; border: 0px;\">坚持科学决策民主决策依法决策</span></p><p style=\"box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 18px; text-align: justify; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; border: 0px;\">高质量完成“十五五”规划编制工作</span></p><p style=\"box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 18px; text-align: justify; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">新华社北京5月19日电中共中央总书记、国家主席、中央军委主席习近平近日对“十五五”规划编制工作作出重要指示强调，科学制定和接续实施五年规划，是我们党治国理政一条重要经验，也是中国特色社会主义一个重要政治优势。编制和实施“十五五”规划，对于全面落实党的二十大战略部署、推进中国式现代化意义重大。要坚持科学决策、民主决策、依法决策，把顶层设计和问计于民统一起来，加强调研论证，广泛凝聚共识，以多种方式听取人民群众和社会各界的意见建议，充分吸收干部群众在实践中创造的新鲜经验，注重目标任务和政策举措的系统性整体性协同性，高质量完成规划编制工作。</p><p style=\"box-sizing: border-box; margin-top: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 18px; text-align: justify; text-wrap-mode: wrap; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\">我国将于2026年开始实施“十五五”规划，目前党中央正在组织起草“十五五”规划建议。根据习近平重要指示精神和规划建议起草工作安排，有关方面近期将通过多种形式征求干部群众、专家学者等对编制“十五五”规划的意见建议。</p><p><br/></p>', '2025-05-19 17:38', 18, 5, '裴掷', '991b5ff6-168f-484a-895c-51169715cfd7.png', '时政', '1');
INSERT INTO `news` VALUES (35, '印方称中国向巴基斯坦提供了防空系统，外交部回应', '<p style=\"box-sizing: border-box; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 18px; text-align: justify; text-wrap-mode: wrap; background-color: rgb(255, 255, 255); margin-top: 0px !important;\">5月19日，外交部发言人毛宁主持例行记者会。</p><p style=\"box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 18px; text-align: justify; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">彭博社记者提问，印度军方表示，中国向巴基斯坦提供了防空系统的协助。中方对此有何评论？</p><p><img src=\"https://p3-sign.toutiaoimg.com/tos-cn-i-axegupay5k/6d426ab04f3648749870e8d1bea8484f~tplv-tt-origin-web:gif.jpeg?_iz=58558&from=article.pc_detail&lk3s=953192f4&x-expires=1748252415&x-signature=4m7onAp%2BV2m3eE53bE911boYVVY%3D\" class=\"syl-page-img\"/>毛宁 资料图。图源：外交部网站</p><p style=\"box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 18px; text-align: justify; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">毛宁回应，你的具体问题建议向中方的主管部门了解。</p><p style=\"box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 18px; text-align: justify; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">毛宁表示，印度和巴基斯坦都是中国的重要邻国，中方十分重视中印、中巴关系。我们始终秉持睦邻、安邻、富邻、亲诚惠容、命运与共的理念方针，发展同所有周边邻国的关系。</p><p style=\"box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 18px; text-align: justify; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\">印巴局势紧张以来，中方一直坚持客观公正立场，呼吁印巴两国保持冷静克制，避免局势升级。我们支持和欢迎印巴实现停火，愿意继续为实现全面持久停火、维护地区的和平稳定发挥建设性作用。</p><p style=\"box-sizing: border-box; margin-top: 20px; margin-bottom: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 18px; text-align: justify; text-wrap-mode: wrap; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; border: 0px;\">来源：北京日报客户端</span></p><p style=\"box-sizing: border-box; margin-top: 20px; padding: 0px; border: 0px; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 18px; text-align: justify; text-wrap-mode: wrap; background-color: rgb(255, 255, 255); margin-bottom: 0px !important;\"><span style=\"box-sizing: border-box; font-weight: 700; margin: 0px; padding: 0px; border: 0px;\">记者：周经纬</span></p><p><br/></p>', '2025-05-19 17:41', 16, 2, '顾熙熙', '8a7c0e61-67ef-4da3-8778-d4ef14f36293.png', '时政', '1');
INSERT INTO `news` VALUES (46, '测试2', '<p>测试2</p>', '2025-05-28 15:23', 0, 0, '夏野', 'a0e6cb4c-38e6-46cb-b161-2c0d0069bf23.png', '体育', '2');
INSERT INTO `news` VALUES (47, '1', '<p>1</p>', '2025-05-30 22:13', 0, 0, '无双', 'bfd4e78a-0101-40c3-b75e-c85a9fae5a73.', '财经', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sums` double(11, 2) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '250501', '12345', '燕棠', 'yantang@qq.com', '2025-05-01 15:05', 0.00, 'cc0b4f79-9492-4305-9614-713eb8f6ad65.jpg');
INSERT INTO `user` VALUES (2, '250502', '23456', '宋郁', 'songyu@qq.com', '2025-05-12 20:29', 0.00, '1c472c59-ec0c-4c79-8649-df0cf3a19ed6.jpg');
INSERT INTO `user` VALUES (11, '250403', '123456', '谱线', 'quxian@qq.com', '2025-05-19 16:05', 0.00, '2405076c-6456-4808-b1e0-96df7a9ee729.jpg');
INSERT INTO `user` VALUES (12, '17898562266', '123456', '鱼故', '17898562266@163.com', '2025-05-19 16:40', 0.00, 'cb11483a-020e-483a-9f13-f68b6f206950.jpg');
INSERT INTO `user` VALUES (13, '13385679216', '123456', '皖栗', '13385679216@163.com', '2025-05-19 16:42', 0.00, '9933e7ba-73e8-445d-9487-f3296196ac0d.jpg');
INSERT INTO `user` VALUES (20, '666', '666', '777', 'ye@163.com', '2025-05-28 16:23', 0.00, '1c205347-9fb6-4347-9cd1-3362f88262f9.png');

SET FOREIGN_KEY_CHECKS = 1;
