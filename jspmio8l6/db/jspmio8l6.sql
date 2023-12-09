/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : localhost:3306
 Source Schema         : jspmio8l6

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 27/11/2023 11:17:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES (1, '2023-12-19 10:35:24', '关于我们', 'ABOUT US', '不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。', 'upload/aboutus_picture1.jpg', 'upload/aboutus_picture2.jpg', 'upload/aboutus_picture3.jpg');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for discusstushuxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discusstushuxinxi`;
CREATE TABLE `discusstushuxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Head Sculpture',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图书信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusstushuxinxi
-- ----------------------------

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (91, '2023-12-19 10:35:24', '有梦想，就要努力去实现', '不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。', 'upload/news_picture1.jpg', '<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>');
INSERT INTO `news` VALUES (92, '2023-12-19 10:35:24', '又是一年毕业季', '又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。', 'upload/news_picture2.jpg', '<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>');
INSERT INTO `news` VALUES (93, '2023-12-19 10:35:24', '挫折路上，坚持常在心间', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture3.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
INSERT INTO `news` VALUES (94, '2023-12-19 10:35:24', '挫折是另一个生命的开端', '当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。', 'upload/news_picture4.jpg', '<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>');
INSERT INTO `news` VALUES (95, '2023-12-19 10:35:24', '你要去相信，没有到不了的明天', '有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。', 'upload/news_picture5.jpg', '<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>');
INSERT INTO `news` VALUES (96, '2023-12-19 10:35:24', '离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture6.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (97, '2023-12-19 10:35:24', 'Leave未必是一种痛苦', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture7.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (98, '2023-12-19 10:35:24', '坚持才会成功', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture8.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1701054612851 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1676774895059, '2023-12-19 10:35:24', 1676774884745, 32, 'tushuxinxi', '图书名称2', 'upload/tushuxinxi_tupian2.jpg', '1', '图书类型2', NULL);
INSERT INTO `storeup` VALUES (1676775114071, '2023-12-19 10:35:24', 1676774884745, 1676775047210, 'tushuxinxi', '童年', 'upload/1676775005652.jpeg', '1', '儿童书籍', NULL);
INSERT INTO `storeup` VALUES (1701054612850, '2023-12-19 10:35:24', 1676774884745, 31, 'tushuxinxi', '图书名称1', 'upload/tushuxinxi_tupian1.jpg', '1', '图书类型1', NULL);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Password',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 11, 'user Account1', 'yonghu', '用户', '04779rsdj9150w2yp00vywhetc4imyfv', '2023-02-19 10:46:04', '2023-12-19 10:35:24');
INSERT INTO `token` VALUES (2, 1676774884745, '11', 'yonghu', '用户', 'qkklfjue909rpjs3kdl8categrkkdbs9', '2023-02-19 10:48:11', '2023-12-19 10:35:24');
INSERT INTO `token` VALUES (3, 1, 'admin', 'users', '管理员', 'ctt5g017x22xk2l8zje1fphe8ovujuxt', '2023-02-19 10:49:24', '2023-12-19 10:35:24');

-- ----------------------------
-- Table structure for tushuguihai
-- ----------------------------
DROP TABLE IF EXISTS `tushuguihai`;
CREATE TABLE `tushuguihai`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuebianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '借阅编号',
  `tiaoxingma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条形码',
  `tushumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书名称',
  `zuozhe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `kejietianshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可借天数',
  `jieyueshijian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '借阅时间',
  `guihaishijian` datetime NULL DEFAULT NULL COMMENT '归还时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'user Account',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'User Name',
  `shoujihaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Phone',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676775231004 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图书归还' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tushuguihai
-- ----------------------------
INSERT INTO `tushuguihai` VALUES (51, '2023-12-19 10:35:24', '借阅编号1', '条形码1', '图书名称1', '作者1', '可借天数1', '借阅时间1', '2023-12-29 10:35:24', 'user Account1', 'User Name1', 'Phone1');
INSERT INTO `tushuguihai` VALUES (52, '2023-12-19 10:35:24', '借阅编号2', '条形码2', '图书名称2', '作者2', '可借天数2', '借阅时间2', '2023-12-29 10:35:24', 'user Account2', 'User Name2', 'Phone2');
INSERT INTO `tushuguihai` VALUES (53, '2023-12-19 10:35:24', '借阅编号3', '条形码3', '图书名称3', '作者3', '可借天数3', '借阅时间3', '2023-12-29 10:35:24', 'user Account3', 'User Name3', 'Phone3');
INSERT INTO `tushuguihai` VALUES (54, '2023-12-19 10:35:24', '借阅编号4', '条形码4', '图书名称4', '作者4', '可借天数4', '借阅时间4', '2023-12-29 10:35:24', 'user Account4', 'User Name4', 'Phone4');
INSERT INTO `tushuguihai` VALUES (55, '2023-12-19 10:35:24', '借阅编号5', '条形码5', '图书名称5', '作者5', '可借天数5', '借阅时间5', '2023-12-29 10:35:24', 'user Account5', 'User Name5', 'Phone5');
INSERT INTO `tushuguihai` VALUES (56, '2023-12-19 10:35:24', '借阅编号6', '条形码6', '图书名称6', '作者6', '可借天数6', '借阅时间6', '2023-12-29 10:35:24', 'user Account6', 'User Name6', 'Phone6');
INSERT INTO `tushuguihai` VALUES (57, '2023-12-19 10:35:24', '借阅编号7', '条形码7', '图书名称7', '作者7', '可借天数7', '借阅时间7', '2023-12-29 10:35:24', 'user Account7', 'User Name7', 'Phone7');
INSERT INTO `tushuguihai` VALUES (58, '2023-12-19 10:35:24', '借阅编号8', '条形码8', '图书名称8', '作者8', '可借天数8', '借阅时间8', '2023-12-29 10:35:24', 'user Account8', 'User Name8', 'Phone8');
INSERT INTO `tushuguihai` VALUES (1676775231003, '2023-12-19 10:35:24', '2023219105050394', '1676774929', '童年', '李白', '七天', '2023-02-19 10:50:50', '2023-12-29 10:35:24', '11', '王强', '13823877774');

-- ----------------------------
-- Table structure for tushujieyue
-- ----------------------------
DROP TABLE IF EXISTS `tushujieyue`;
CREATE TABLE `tushujieyue`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuebianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '借阅编号',
  `tiaoxingma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条形码',
  `tushumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书名称',
  `zuozhe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `kejietianshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可借天数',
  `jieyuejiage` float NULL DEFAULT NULL COMMENT '借阅价格',
  `chaoqifeiyong` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '超期费用',
  `jieyueshijian` datetime NULL DEFAULT NULL COMMENT '借阅时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'user Account',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'User Name',
  `shoujihaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Phone',
  `jieyuezhuangtai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '借阅状态',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jieyuebianhao`(`jieyuebianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676775119262 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图书借阅' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tushujieyue
-- ----------------------------
INSERT INTO `tushujieyue` VALUES (41, '2023-12-19 10:35:24', '1111111111', '条形码1', '图书名称1', '作者1', '可借天数1', 1, '超期费用1', '2023-12-19 10:35:24', 'user Account1', 'User Name1', 'Phone1', '已归还', '是', '', '未支付');
INSERT INTO `tushujieyue` VALUES (42, '2023-12-19 10:35:24', '2222222222', '条形码2', '图书名称2', '作者2', '可借天数2', 2, '超期费用2', '2023-12-19 10:35:24', 'user Account2', 'User Name2', 'Phone2', '已归还', '是', '', '未支付');
INSERT INTO `tushujieyue` VALUES (43, '2023-12-19 10:35:24', '3333333333', '条形码3', '图书名称3', '作者3', '可借天数3', 3, '超期费用3', '2023-12-19 10:35:24', 'user Account3', 'User Name3', 'Phone3', '已归还', '是', '', '未支付');
INSERT INTO `tushujieyue` VALUES (44, '2023-12-19 10:35:24', '4444444444', '条形码4', '图书名称4', '作者4', '可借天数4', 4, '超期费用4', '2023-12-19 10:35:24', 'user Account4', 'User Name4', 'Phone4', '已归还', '是', '', '未支付');
INSERT INTO `tushujieyue` VALUES (45, '2023-12-19 10:35:24', '5555555555', '条形码5', '图书名称5', '作者5', '可借天数5', 5, '超期费用5', '2023-12-19 10:35:24', 'user Account5', 'User Name5', 'Phone5', '已归还', '是', '', '未支付');
INSERT INTO `tushujieyue` VALUES (46, '2023-12-19 10:35:24', '6666666666', '条形码6', '图书名称6', '作者6', '可借天数6', 6, '超期费用6', '2023-12-19 10:35:24', 'user Account6', 'User Name6', 'Phone6', '已归还', '是', '', '未支付');
INSERT INTO `tushujieyue` VALUES (47, '2023-12-19 10:35:24', '7777777777', '条形码7', '图书名称7', '作者7', '可借天数7', 7, '超期费用7', '2023-12-19 10:35:24', 'user Account7', 'User Name7', 'Phone7', '已归还', '是', '', '未支付');
INSERT INTO `tushujieyue` VALUES (48, '2023-12-19 10:35:24', '8888888888', '条形码8', '图书名称8', '作者8', '可借天数8', 8, '超期费用8', '2023-12-19 10:35:24', 'user Account8', 'User Name8', 'Phone8', '已归还', '是', '', '未支付');
INSERT INTO `tushujieyue` VALUES (1676775119261, '2023-12-19 10:35:24', '2023219105050394', '1676774929', '童年', '李白', '七天', 6, '1', '2023-12-19 10:35:24', '11', '王强', '13823877774', '已归还', '是', '借阅成功', '已支付');

-- ----------------------------
-- Table structure for tushuleixing
-- ----------------------------
DROP TABLE IF EXISTS `tushuleixing`;
CREATE TABLE `tushuleixing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushuleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676774987751 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图书类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tushuleixing
-- ----------------------------
INSERT INTO `tushuleixing` VALUES (21, '2023-12-19 10:35:24', '图书类型1');
INSERT INTO `tushuleixing` VALUES (22, '2023-12-19 10:35:24', '图书类型2');
INSERT INTO `tushuleixing` VALUES (23, '2023-12-19 10:35:24', '图书类型3');
INSERT INTO `tushuleixing` VALUES (24, '2023-12-19 10:35:24', '图书类型4');
INSERT INTO `tushuleixing` VALUES (25, '2023-12-19 10:35:24', '图书类型5');
INSERT INTO `tushuleixing` VALUES (26, '2023-12-19 10:35:24', '图书类型6');
INSERT INTO `tushuleixing` VALUES (27, '2023-12-19 10:35:24', '图书类型7');
INSERT INTO `tushuleixing` VALUES (28, '2023-12-19 10:35:24', '图书类型8');
INSERT INTO `tushuleixing` VALUES (1676774976855, '2023-12-19 10:35:24', '儿童书籍');
INSERT INTO `tushuleixing` VALUES (1676774987750, '2023-12-19 10:35:24', '历史书籍');

-- ----------------------------
-- Table structure for tushuxinxi
-- ----------------------------
DROP TABLE IF EXISTS `tushuxinxi`;
CREATE TABLE `tushuxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tiaoxingma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条形码',
  `tushumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书名称',
  `tushuleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书类型',
  `tupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `jieyuejiage` float NOT NULL COMMENT '借阅价格',
  `chaoqifeiyong` float NOT NULL COMMENT '超期费用/天',
  `kejietianshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '可借天数',
  `zuozhe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者',
  `chubanshe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `tushuzhuangtai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书状态',
  `zulinguize` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '租赁规则',
  `tushujianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图书简介',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tiaoxingma`(`tiaoxingma`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676775047211 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图书信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tushuxinxi
-- ----------------------------
INSERT INTO `tushuxinxi` VALUES (31, '2023-12-19 10:35:24', '1111111111', '图书名称1', '图书类型1', 'upload/tushuxinxi_tupian1.jpg,upload/tushuxinxi_tupian2.jpg,upload/tushuxinxi_tupian3.jpg', 1, 1, '可借天数1', '作者1', '出版社1', '已借阅', '租赁规则1', '图书简介1', '2023-12-19 10:35:24', 8);
INSERT INTO `tushuxinxi` VALUES (32, '2023-12-19 10:35:24', '2222222222', '图书名称2', '图书类型2', 'upload/tushuxinxi_tupian2.jpg,upload/tushuxinxi_tupian3.jpg,upload/tushuxinxi_tupian4.jpg', 2, 2, '可借天数2', '作者2', '出版社2', '已借阅', '租赁规则2', '图书简介2', '2023-12-19 10:35:24', 7);
INSERT INTO `tushuxinxi` VALUES (33, '2023-12-19 10:35:24', '3333333333', '图书名称3', '图书类型3', 'upload/tushuxinxi_tupian3.jpg,upload/tushuxinxi_tupian4.jpg,upload/tushuxinxi_tupian5.jpg', 3, 3, '可借天数3', '作者3', '出版社3', '已借阅', '租赁规则3', '图书简介3', '2023-12-19 10:35:24', 3);
INSERT INTO `tushuxinxi` VALUES (34, '2023-12-19 10:35:24', '4444444444', '图书名称4', '图书类型4', 'upload/tushuxinxi_tupian4.jpg,upload/tushuxinxi_tupian5.jpg,upload/tushuxinxi_tupian6.jpg', 4, 4, '可借天数4', '作者4', '出版社4', '已借阅', '租赁规则4', '图书简介4', '2023-12-19 10:35:24', 4);
INSERT INTO `tushuxinxi` VALUES (35, '2023-12-19 10:35:24', '5555555555', '图书名称5', '图书类型5', 'upload/tushuxinxi_tupian5.jpg,upload/tushuxinxi_tupian6.jpg,upload/tushuxinxi_tupian7.jpg', 5, 5, '可借天数5', '作者5', '出版社5', '已借阅', '租赁规则5', '图书简介5', '2023-12-19 10:35:24', 5);
INSERT INTO `tushuxinxi` VALUES (36, '2023-12-19 10:35:24', '6666666666', '图书名称6', '图书类型6', 'upload/tushuxinxi_tupian6.jpg,upload/tushuxinxi_tupian7.jpg,upload/tushuxinxi_tupian8.jpg', 6, 6, '可借天数6', '作者6', '出版社6', '已借阅', '租赁规则6', '图书简介6', '2023-12-19 10:35:24', 6);
INSERT INTO `tushuxinxi` VALUES (37, '2023-12-19 10:35:24', '7777777777', '图书名称7', '图书类型7', 'upload/tushuxinxi_tupian7.jpg,upload/tushuxinxi_tupian8.jpg,upload/tushuxinxi_tupian9.jpg', 7, 7, '可借天数7', '作者7', '出版社7', '已借阅', '租赁规则7', '图书简介7', '2023-12-19 10:35:24', 7);
INSERT INTO `tushuxinxi` VALUES (38, '2023-12-19 10:35:24', '8888888888', '图书名称8', '图书类型8', 'upload/tushuxinxi_tupian8.jpg,upload/tushuxinxi_tupian9.jpg,upload/tushuxinxi_tupian10.jpg', 8, 8, '可借天数8', '作者8', '出版社8', '已借阅', '租赁规则8', '图书简介8', '2023-12-19 10:35:24', 8);
INSERT INTO `tushuxinxi` VALUES (1676775047210, '2023-12-19 10:35:24', '1676774929', '童年', '儿童书籍', 'upload/1676775005652.jpeg', 6, 1, '七天', '李白', '中华出版社', '已借阅', '输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息', '<p>图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息输入图书借阅租赁规则详情信息</p><p><img src=\"http://localhost:8080/jspmio8l6/upload/1676775044816.jpeg\" width=\"900\" height=\"560\"/></p>', '2023-12-19 10:35:24', 5);

-- ----------------------------
-- Table structure for tushuyuyue
-- ----------------------------
DROP TABLE IF EXISTS `tushuyuyue`;
CREATE TABLE `tushuyuyue`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约编号',
  `tiaoxingma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条形码',
  `tushumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书名称',
  `jieyuejiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '借阅价格',
  `kejietianshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可借天数',
  `yuyueshijian` datetime NULL DEFAULT NULL COMMENT '预约时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'user Account',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'User Name',
  `shoujihaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Phone',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yuyuebianhao`(`yuyuebianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676774917864 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图书预约' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tushuyuyue
-- ----------------------------
INSERT INTO `tushuyuyue` VALUES (71, '2023-12-19 10:35:24', '1111111111', '条形码1', '图书名称1', '借阅价格1', '可借天数1', '2023-12-19 10:35:24', 'user Account1', 'User Name1', 'Phone1', '是', '');
INSERT INTO `tushuyuyue` VALUES (72, '2023-12-19 10:35:24', '2222222222', '条形码2', '图书名称2', '借阅价格2', '可借天数2', '2023-12-19 10:35:24', 'user Account2', 'User Name2', 'Phone2', '是', '');
INSERT INTO `tushuyuyue` VALUES (73, '2023-12-19 10:35:24', '3333333333', '条形码3', '图书名称3', '借阅价格3', '可借天数3', '2023-12-19 10:35:24', 'user Account3', 'User Name3', 'Phone3', '是', '');
INSERT INTO `tushuyuyue` VALUES (74, '2023-12-19 10:35:24', '4444444444', '条形码4', '图书名称4', '借阅价格4', '可借天数4', '2023-12-19 10:35:24', 'user Account4', 'User Name4', 'Phone4', '是', '');
INSERT INTO `tushuyuyue` VALUES (75, '2023-12-19 10:35:24', '5555555555', '条形码5', '图书名称5', '借阅价格5', '可借天数5', '2023-12-19 10:35:24', 'user Account5', 'User Name5', 'Phone5', '是', '');
INSERT INTO `tushuyuyue` VALUES (76, '2023-12-19 10:35:24', '6666666666', '条形码6', '图书名称6', '借阅价格6', '可借天数6', '2023-12-19 10:35:24', 'user Account6', 'User Name6', 'Phone6', '是', '');
INSERT INTO `tushuyuyue` VALUES (77, '2023-12-19 10:35:24', '7777777777', '条形码7', '图书名称7', '借阅价格7', '可借天数7', '2023-12-19 10:35:24', 'user Account7', 'User Name7', 'Phone7', '是', '');
INSERT INTO `tushuyuyue` VALUES (78, '2023-12-19 10:35:24', '8888888888', '条形码8', '图书名称8', '借阅价格8', '可借天数8', '2023-12-19 10:35:24', 'user Account8', 'User Name8', 'Phone8', '是', '');
INSERT INTO `tushuyuyue` VALUES (1676774917863, '2023-12-19 10:35:24', '2023219104726481', '2222222222', '图书名称2', '2', '可借天数2', '2023-12-19 10:35:24', '11', '王强', '13823877774', '是', '预约成功');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Password',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2023-12-19 10:35:24');

-- ----------------------------
-- Table structure for weiyuejilu
-- ----------------------------
DROP TABLE IF EXISTS `weiyuejilu`;
CREATE TABLE `weiyuejilu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyuebianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '借阅编号',
  `tiaoxingma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条形码',
  `tushumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书名称',
  `jieyuejiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '借阅价格',
  `kejietianshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '可借天数',
  `chaoqifeiyong` float NULL DEFAULT NULL COMMENT '超期费用/天',
  `jieyueshijian` datetime NULL DEFAULT NULL COMMENT '借阅时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'user Account',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'User Name',
  `shoujihaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Phone',
  `weiyuetianshu` int(11) NOT NULL COMMENT '违约天数',
  `weiyuejin` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '违约金',
  `jilushijian` datetime NULL DEFAULT NULL COMMENT '记录时间',
  `crossuserid` bigint(20) NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) NULL DEFAULT NULL COMMENT '跨表主键id',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676775193967 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '违约记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weiyuejilu
-- ----------------------------
INSERT INTO `weiyuejilu` VALUES (61, '2023-12-19 10:35:24', '借阅编号1', '条形码1', '图书名称1', '借阅价格1', '可借天数1', 1, '2023-12-19 10:35:24', 'user Account1', 'User Name1', 'Phone1', 1, '违约金1', '2023-02-19 10:35:24', 1, 1, '未支付');
INSERT INTO `weiyuejilu` VALUES (62, '2023-12-19 10:35:24', '借阅编号2', '条形码2', '图书名称2', '借阅价格2', '可借天数2', 2, '2023-12-19 10:35:24', 'user Account2', 'User Name2', 'Phone2', 2, '违约金2', '2023-02-19 10:35:24', 2, 2, '未支付');
INSERT INTO `weiyuejilu` VALUES (63, '2023-12-19 10:35:24', '借阅编号3', '条形码3', '图书名称3', '借阅价格3', '可借天数3', 3, '2023-12-19 10:35:24', 'user Account3', 'User Name3', 'Phone3', 3, '违约金3', '2023-02-19 10:35:24', 3, 3, '未支付');
INSERT INTO `weiyuejilu` VALUES (64, '2023-12-19 10:35:24', '借阅编号4', '条形码4', '图书名称4', '借阅价格4', '可借天数4', 4, '2023-12-19 10:35:24', 'user Account4', 'User Name4', 'Phone4', 4, '违约金4', '2023-02-19 10:35:24', 4, 4, '未支付');
INSERT INTO `weiyuejilu` VALUES (65, '2023-12-19 10:35:24', '借阅编号5', '条形码5', '图书名称5', '借阅价格5', '可借天数5', 5, '2023-12-19 10:35:24', 'user Account5', 'User Name5', 'Phone5', 5, '违约金5', '2023-02-19 10:35:24', 5, 5, '未支付');
INSERT INTO `weiyuejilu` VALUES (66, '2023-12-19 10:35:24', '借阅编号6', '条形码6', '图书名称6', '借阅价格6', '可借天数6', 6, '2023-12-19 10:35:24', 'user Account6', 'User Name6', 'Phone6', 6, '违约金6', '2023-02-19 10:35:24', 6, 6, '未支付');
INSERT INTO `weiyuejilu` VALUES (67, '2023-12-19 10:35:24', '借阅编号7', '条形码7', '图书名称7', '借阅价格7', '可借天数7', 7, '2023-12-19 10:35:24', 'user Account7', 'User Name7', 'Phone7', 7, '违约金7', '2023-02-19 10:35:24', 7, 7, '未支付');
INSERT INTO `weiyuejilu` VALUES (68, '2023-12-19 10:35:24', '借阅编号8', '条形码8', '图书名称8', '借阅价格8', '可借天数8', 8, '2023-12-19 10:35:24', 'user Account8', 'User Name8', 'Phone8', 8, '违约金8', '2023-02-19 10:35:24', 8, 8, '未支付');
INSERT INTO `weiyuejilu` VALUES (1676775193966, '2023-12-19 10:35:24', '2023219105050394', '1676774929', '童年', '6', '七天', 1, '2023-12-19 10:35:24', '11', '王强', '13823877774', 2, '2.00', '2023-02-19 10:51:59', 1, 1676775119261, '已支付');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'user Account',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Password',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'User Name',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Head Sculpture',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Phone',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuzhanghao`(`yonghuzhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1676774884746 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2023-12-19 10:35:24', 'user Account1', '123456', 'User Name1', 'upload/yonghu_touxiang1.jpg', 'Man', '13823888881');
INSERT INTO `yonghu` VALUES (12, '2023-12-19 10:35:24', 'user Account2', '123456', 'User Name2', 'upload/yonghu_touxiang2.jpg', 'Man', '13823888882');
INSERT INTO `yonghu` VALUES (13, '2023-12-19 10:35:24', 'user Account3', '123456', 'User Name3', 'upload/yonghu_touxiang3.jpg', 'Man', '13823888883');
INSERT INTO `yonghu` VALUES (14, '2023-12-19 10:35:24', 'user Account4', '123456', 'User Name4', 'upload/yonghu_touxiang4.jpg', 'Man', '13823888884');
INSERT INTO `yonghu` VALUES (15, '2023-12-19 10:35:24', 'user Account5', '123456', 'User Name5', 'upload/yonghu_touxiang5.jpg', 'Man', '13823888885');
INSERT INTO `yonghu` VALUES (16, '2023-12-19 10:35:24', 'user Account6', '123456', 'User Name6', 'upload/yonghu_touxiang6.jpg', 'Man', '13823888886');
INSERT INTO `yonghu` VALUES (17, '2023-12-19 10:35:24', 'user Account7', '123456', 'User Name7', 'upload/yonghu_touxiang7.jpg', 'Man', '13823888887');
INSERT INTO `yonghu` VALUES (18, '2023-12-19 10:35:24', 'user Account8', '123456', 'User Name8', 'upload/yonghu_touxiang8.jpg', 'Man', '13823888888');
INSERT INTO `yonghu` VALUES (1676774884745, '2023-12-19 10:35:24', '11', '123456', '王强', 'upload/1676774931505.jpeg', 'Man', '13823877774');

SET FOREIGN_KEY_CHECKS = 1;
