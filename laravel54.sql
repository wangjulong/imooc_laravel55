/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : laravel54

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-20 15:44:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$wDfTCckCuksN2TjdLMVFoOWtGCPckE6RWhcpaa1ubfI.AdoSQYjVW', '2017-10-20 14:03:13', '2017-10-20 14:03:13');
INSERT INTO `admin_users` VALUES ('2', 'user1', '$2y$10$MCtBnlVuoVjjwAll312kFuD38pqIIVMXGitC6BqrreihGODBZfDQa', '2017-10-20 15:43:26', '2017-10-20 15:43:26');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '2', '27', '评论测试评论测试评论测试', '2017-09-22 14:48:30', '2017-09-22 14:48:30');
INSERT INTO `comments` VALUES ('2', '2', '27', '再来一条评论O(∩_∩)O哈哈~', '2017-09-22 15:16:40', '2017-09-22 15:16:40');

-- ----------------------------
-- Table structure for fans
-- ----------------------------
DROP TABLE IF EXISTS `fans`;
CREATE TABLE `fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fan_id` int(11) NOT NULL DEFAULT '0',
  `star_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of fans
-- ----------------------------
INSERT INTO `fans` VALUES ('11', '1', '2', '2017-10-17 16:57:14', '2017-10-17 16:57:14');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_09_12_032726_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('4', '2017_09_21_161050_create_comments_table', '2');
INSERT INTO `migrations` VALUES ('5', '2017_09_22_152515_create_zans_table', '3');
INSERT INTO `migrations` VALUES ('6', '2017_10_17_105043_create_fans_table', '4');
INSERT INTO `migrations` VALUES ('7', '2017_10_18_112146_create_topics_table', '5');
INSERT INTO `migrations` VALUES ('8', '2017_10_18_113025_create_post_topics_table', '6');
INSERT INTO `migrations` VALUES ('9', '2017_10_20_134632_create_admin_users_table', '7');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'this is post1', 'this is post1 content', '2', '2017-09-12 14:03:14', '2017-09-12 14:15:42');
INSERT INTO `posts` VALUES ('2', 'this is post2', 'this is post2 content', '2', '2017-09-12 14:19:00', '2017-09-12 14:19:00');
INSERT INTO `posts` VALUES ('3', 'this is post3', 'this is post3 content', '2', '2017-09-12 14:19:34', '2017-09-12 14:19:34');
INSERT INTO `posts` VALUES ('4', 'Sit expedita rem cum corporis praesentium.', '<p>Qui aperiam aliquid quod. Mollitia qui cum in omnis beatae eveniet. Eos similique voluptatem sint. Sunt quibusdam molestiae vel beatae molestias. Qui odit soluta et enim tenetur dolores. Voluptas qui omnis sed nemo commodi omnis. Ab doloribus aut cupiditate placeat labore. Laudantium et est accusamus aut tenetur in odit. Quae non qui vitae fuga rerum voluptas eos earum.</p><p><img src=\"http://jianshu.com/storage/dfb300c8d48dc768bb46c9af8b33b036/NGnP4ZFAQfkfeqHHKn0OqMlBM6g8hPgb9jFXwaqD.jpeg\" alt=\"timg\" style=\"max-width:100%;\"><br></p><p><br></p>', '1', '2017-09-12 14:48:56', '2017-09-26 17:05:42');
INSERT INTO `posts` VALUES ('5', 'Aut accusamus delectus similique aspernatur.', 'Similique impedit ut doloribus quae et ipsam. Laborum rerum ut qui ullam illum velit accusamus. In nulla ea ex libero qui. Beatae et illo vero molestias officiis. Omnis recusandae atque id veniam magni aut voluptatem. Quos cum quo accusantium impedit quia architecto. Inventore nam omnis repellat et fugit laborum sequi. Praesentium at ab et et tempora. Vitae sint mollitia occaecati ut.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('6', 'Esse quidem error fugiat quaerat corrupti.', 'Autem neque rem ut necessitatibus. Quaerat soluta fugiat quos inventore ullam qui. Dolorem quia corporis maxime tenetur in vitae ut nihil. Ut culpa rerum ipsum repellendus autem nisi. Ea illum rerum quam enim assumenda. Et reiciendis odit distinctio. Occaecati iure quae molestias non dignissimos esse ipsum quasi. Sed debitis omnis minima eaque beatae dolores excepturi veniam. Dolorum et et omnis rerum. Non cupiditate laborum quia nobis maxime eius. Quia qui ea fuga dignissimos.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('7', 'Quia maiores voluptatem ratione eos aut quisquam enim.', 'Illum commodi saepe voluptatibus blanditiis maiores ea iusto. Qui mollitia occaecati placeat et et quia et dolores. Velit reprehenderit possimus alias aspernatur. Magni ea accusantium qui neque. Corporis autem voluptatem eligendi amet illo sint. Libero sed voluptates et quis. Quos aut et harum quo et mollitia magnam velit.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('8', 'Praesentium qui cupiditate quia.', 'Labore voluptas voluptas et inventore cumque nulla. Placeat et nam occaecati qui. Est magnam aut assumenda qui facere possimus. Facere est qui voluptatem exercitationem qui minus. Minima et autem officia quasi atque aut. Illum repellat in non itaque. Distinctio suscipit voluptates ut consequatur. Omnis quae debitis qui quasi totam qui. Eos pariatur exercitationem ut quae qui fugiat qui aut. Placeat nesciunt dolorem quas facilis neque totam enim. Consectetur qui repellendus officiis dolore libero maiores quam. Odit unde eum officia non.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('9', 'Natus velit omnis ut amet.', 'Nisi sit vitae sed ratione magnam neque eligendi. Beatae cupiditate voluptas ipsa iure. Doloremque ut libero quia omnis sint aliquid accusamus. Eveniet et aspernatur aliquid iste. Laudantium quo maxime cumque odio eum quas. Dolores ex ipsam iure optio et. Dolor distinctio in odit odio. Distinctio illo voluptas quas.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('10', 'Eaque consequuntur repellat pariatur provident quo nihil.', 'Ipsa voluptas enim excepturi. Voluptatem aut eum doloribus ab adipisci. Quidem voluptas dolores non nihil ratione impedit. Delectus molestiae sed expedita beatae a molestiae. Voluptate non suscipit enim dolorum dolorum. Repellat id alias iste animi debitis. Sed eveniet laboriosam hic nobis nesciunt. Et quo magnam soluta laboriosam ut.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('11', 'Ipsa est consequatur vel omnis.', 'Unde et et cumque. Quos distinctio dolorum et perferendis. Aliquid sint aspernatur aut vero et aut rerum est. Maiores quia nesciunt asperiores nostrum. Eum architecto ut voluptatem eos. Corrupti ut aperiam doloribus rerum veniam. Est nesciunt modi voluptatem rerum omnis sint corporis. Vel harum facere ipsum ipsam rerum. Repudiandae tempora ipsa eligendi et perspiciatis nesciunt aut. Et officiis et aut quia. Et sit blanditiis esse minima expedita debitis. Est in porro rerum unde quo.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('12', 'Laudantium aut qui ut eos corporis iusto in.', 'Atque accusamus autem possimus debitis quos numquam fugiat aut. Ut aut ea velit voluptatum. Eaque officia dolorem doloremque vel. Voluptatem praesentium similique praesentium ex et nostrum. Adipisci ea sit earum. Dolorem ipsum beatae saepe quam veritatis dolor velit. Et delectus temporibus eaque vel debitis. Ad neque dolores neque delectus pariatur dolorem. Est sunt fuga beatae porro ab quibusdam. Quia ratione et sed sunt sint voluptatibus quod. Cum excepturi voluptatum soluta qui rerum nam quis. Qui est consequatur minima ea. Dolores numquam est illum quis earum. Numquam rerum qui sit officia est et.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('13', 'Voluptas ducimus voluptas nihil.', 'Deleniti expedita velit voluptatem suscipit sint. Quidem ipsum provident reprehenderit omnis nesciunt est consectetur. Consequuntur ut quibusdam et et. Praesentium deserunt inventore molestiae magni omnis saepe deleniti. Numquam iure amet non error fuga. Qui officia aperiam sequi consequatur. Incidunt dolorem cum rem.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('14', 'Ab ducimus aperiam eius qui cum molestiae quam odit.', 'Iusto impedit eveniet quaerat explicabo. Molestiae est eaque dolor molestias et sed. Cum est eum aspernatur. Expedita quaerat et laboriosam rerum molestias optio quo impedit. Aperiam culpa blanditiis eos id qui dolor animi. Perspiciatis autem ut qui optio maiores. Sequi dolores eum omnis sit. Numquam et esse iusto et amet. Doloremque quia dolore omnis pariatur. In nemo ipsa ut voluptatibus est molestiae mollitia est.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('15', 'Temporibus ad rerum in ad.', 'Et quaerat dolore non sit. Ut delectus dolore porro temporibus minima officiis modi. Ratione suscipit ratione qui modi animi et distinctio. Molestias quibusdam aut ea quam amet. Illum explicabo consequatur ut et sit consequatur. Officia deserunt commodi necessitatibus a in nihil minima. Magni eos repellendus tempore animi. Sequi aliquid omnis adipisci explicabo. Ut earum dolor ea modi natus quia. Aspernatur voluptas qui officiis sunt et. Voluptatem qui aspernatur molestiae tempora sunt assumenda. Quis non odit ullam neque deserunt maxime ab.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('16', 'Nobis qui impedit consequatur qui.', 'Placeat sequi sit aspernatur et qui. Sit repellendus laudantium nam earum omnis ut neque. Vitae autem veniam nam minus voluptate eligendi. Totam molestias hic ut sapiente. Facere exercitationem numquam impedit facere. Voluptas error numquam non voluptate. Iusto et est ducimus ut ad. Non molestiae expedita nisi est culpa unde velit quam. Sit quis atque magni explicabo facilis iusto molestias. Nostrum illo totam similique dolor quaerat maiores.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('17', 'Ut voluptatem perferendis quibusdam necessitatibus et exercitationem pariatur sint.', 'Beatae autem culpa suscipit id asperiores assumenda omnis. Corporis sapiente commodi quos ea soluta est hic enim. Corrupti qui ab totam voluptates aut. Voluptatibus nihil aliquid sed eum eum illum ab. Quos nesciunt aut delectus a labore amet quo. Accusantium deleniti maxime quidem. Tempore deserunt iste et voluptas quia. Enim ut quas id aperiam itaque. Qui modi sit animi odio.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('18', 'Et esse ex illo quos qui perferendis nulla minima.', 'Velit a cumque iste soluta assumenda. Explicabo reprehenderit excepturi voluptatem labore totam exercitationem expedita. Quis enim veniam velit id omnis. Est dolorum hic dicta delectus voluptatem repudiandae quibusdam. Qui animi rem fugit quod nesciunt nisi ab. Corrupti dolores sint nesciunt. Suscipit a error aut velit. Reiciendis quidem iusto vel et. Ipsa nulla nihil reiciendis voluptates. Omnis eius itaque ut debitis aut consequatur architecto. Illum blanditiis temporibus expedita officia mollitia accusamus. Hic veniam dolor dolores sunt consequuntur dolor. Qui et omnis accusantium aut porro fuga. Est esse iure debitis sed ex et voluptas accusamus.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('19', 'Mollitia nihil atque blanditiis minima et.', 'Tempora id ut cupiditate recusandae. Enim provident ipsa nihil sunt est. Sint quidem laudantium et dolores ea minus veritatis nesciunt. Quas rerum atque et recusandae in quisquam exercitationem voluptas. Et totam non aut id nemo. Exercitationem sed eaque cupiditate. Sit non quod et. Assumenda aut recusandae velit pariatur natus et. Ratione voluptatem sit qui ea in aut. Minima et atque praesentium quo porro.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('20', 'Quo sit expedita voluptatem atque dolor porro.', 'Deleniti nam voluptatibus dolores ab reiciendis et nostrum. Eaque ut praesentium rem voluptas vel quod. Qui vel dolore sit dignissimos illo. Dolor neque autem ab error quibusdam velit. Corrupti blanditiis beatae modi non nihil ad blanditiis. Inventore vitae aut in unde incidunt molestiae. Voluptatem officia dolorum dolor. Hic modi mollitia doloribus cupiditate. Cumque ut dolores doloremque odit ducimus sunt.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('21', 'Sit cumque id dolor perferendis natus non recusandae.', 'Cumque nisi fuga nostrum. Et officia sint aut ab eaque velit voluptas voluptates. Aut ut maiores rerum aperiam hic quo. Amet quibusdam illo et nostrum debitis. Inventore qui minus amet repellat nulla. Labore eos quibusdam veritatis ullam nisi. Laborum quas provident ut dolore et.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('22', 'Modi eum earum non odit minima esse.', 'Quis molestias modi velit excepturi officiis. Dolorum sed et quae amet. Voluptatem qui placeat occaecati beatae laboriosam. Omnis omnis officiis maxime saepe velit. Necessitatibus praesentium eveniet ratione earum est sit provident alias. Nesciunt est perspiciatis aut eos sunt similique rerum. Adipisci expedita optio odio est eos illo et. Omnis sapiente eum rem magnam. Dolore eaque rerum molestiae sint reiciendis rerum at.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('23', 'Animi eum ut incidunt vel cumque voluptatem.', 'Sit sunt quo facere. Officia rerum magnam ipsam in blanditiis repellat. Ullam qui assumenda et deleniti in ut. Enim reprehenderit amet quos incidunt qui. Excepturi et quo enim dolores porro eos. Repudiandae ab eum enim voluptas est dolores. Id mollitia ut voluptas et repellendus laudantium qui. Ut quia cupiditate voluptatem id. Maxime quod velit aliquid quo. Expedita ab reiciendis magnam. Assumenda nostrum atque accusamus tempore exercitationem voluptatem sapiente qui. Quis dicta illum et eligendi non. Nulla nostrum quidem cupiditate nostrum eum provident.', '1', '2017-09-12 14:48:56', '2017-09-12 14:48:56');
INSERT INTO `posts` VALUES ('24', '旅行，和什么样的人出行最舒心？', '<p>说到旅行，熟悉我的人都知道我是一个对世界上瘾的二逼青年。﻿</p><p>﻿在过去的四年时间里，在每次旅程结束归来之后，我很快就会又开始计划下一次的目的地。也是因为在我的世界里，没有那么多说走就走的旅行罢了。﻿</p><p>多次的出行经历之后我明白，对于结伴旅行，重要的不是去哪里，而是和谁去才最舒心。﻿</p><p>前两天，刚好写了一篇《和志同道合的人旅行，如果没有那就一个人》。于是，有读者特意来找我，在私信里说：大萌，什么才算是志同道合的人？﻿</p><p>﻿我曾经尝试过和各种各样的人出去旅行，徒步，搭车，自驾，团队，青旅，沙漠，爬山，草原……但走着走着，后来的很多次旅行却慢慢变成了独自一人的旅程。﻿</p><p>总结下来后发现，经常有人开玩笑说：“对象好找，旅伴难寻”，这是实打实说的事实。﻿所以说，旅行不仅仅能检验情侣间的关系，也能检验朋友间的感情。如果两个不合适的人一起出游，那友谊的小船也是说翻就翻。﻿</p><p>很多人都好奇为什么会这样？﻿</p><p>﻿我告诉你， 那是因为旅行和生活还是有点不一样的。生活可以细水长流，旅行其实相对来说是短时间里的状况频出，需要彼此迅速磨合性格，快速一起做各种各样的决策，旅行过程也要互相照应，还有对撞审美观和价值观，缺点集中暴露，以及不得不一天的24小时都黏在一起...…﻿</p><p>﻿所以，要想拥有一次美好的旅行体验，重要的不是多少人一起去，而更重要的是和你一起旅行的，一定要是对的人。﻿</p><p><br><br></p><p>作者：有备而来的路人甲</p><p><br></p><p>链接：http://www.jianshu.com/p/6d0aa78fda60</p><p><br></p><p>來源：简书</p><p><br></p><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p><p><br></p>', '1', '2017-10-13 15:23:20', '2017-10-13 15:23:20');
INSERT INTO `posts` VALUES ('25', '前半生薄情前夫，后半生温暖梁思成', '<p>她是清华大学的资料管理员，也曾是梁思成的秘书。</p><p>她前夫是梁思成的学生。她自己也是林徽因的学生。</p><p>她与前夫结婚，是梁思成这位老师给证的婚。</p><p>她在丈夫被打成右派的时候，果断离婚，撇清关系，丈夫直接变成前夫。</p><p>她在林徽因去世7年后嫁给大她27岁的梁思成，并陪伴他在人世的最后十年。</p><p>沈从文说她太爱钱，别人评价她心机重重嫁给梁思成，梁思成临终前说“这些年多亏她了”。</p><p>她就是梁思成的第二任妻子——林洙。</p><p>大家对她的评价差异很大，这个平凡的女人的前半生和后半生到底发生了什么事情？</p><p><br><br></p><p>作者：地球上的蓝胖纸</p><p><br></p><p>链接：http://www.jianshu.com/p/a4898df61036</p><p><br></p><p>來源：简书</p><p><br></p><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p><p><br></p>', '1', '2017-10-13 16:05:23', '2017-10-13 16:05:23');
INSERT INTO `posts` VALUES ('26', '这一生遇见沈从文，不知是幸还是不幸？', '<p>她是苏州乐益女子中学校长张冀牗的三小姐。</p><p>她是公认的中国公学校花，简称黑玫瑰。</p><p>沈从文用几百封的情书、4年的坚持追求她，最终如愿抱得美人归。</p><p>她把一封封求爱信用“青蛙1号”、“青蛙2号”……封存起来，沈从文的编号是“青蛙13号”。</p><p>青蛙13号，这是一个非常不吉利的数字。</p><p>事实上，她和沈从文的这段婚姻，就如同这个数字一样，真不知是幸还是不幸？</p><p>她，就是沈从文的妻子—张兆和。</p><p><br><br></p><p>作者：地球上的蓝胖纸</p><p><br></p><p>链接：http://www.jianshu.com/p/a1b5c36f190a</p><p><br></p><p>來源：简书</p><p><br></p><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p><p><br></p>', '1', '2017-10-13 16:05:47', '2017-10-13 16:05:47');
INSERT INTO `posts` VALUES ('27', '妇产科产房的故事', '<p>医学院毕业，我来到到北京郊区的一家大型企业医院工作，虽然也可以留在上大学城市里的省医院，但我就是想来北京。</p><p>在二十多年前的时候，我就有了要到北上广开眼界的意识，在当时大学毕业生的就业选择中并不普遍，甚至当时我的一些老师和同学也很不理解，为什么放弃那么好的省医院却跑去到人生地不熟的北京郊区。我当时也到人才招聘会看了，因为没有北京户口，城里的医院不要。</p><p>完成了企业和医院的各种入职培训，我被分配到妇产科。最初人事科征求过我的意见，我实习时不喜欢拖拖拉拉慢节奏的内科，就毫不犹豫的说想去让人感觉痛快的外科。但人事科的人说女同志随着年龄增长慢慢体力就下降了，不适合外科的工作，也考虑了我的意见，于是我就到妇产科报到了。</p><p>进科后第一个看到的是妇产科王主任，五十多岁，一看走路说话就是非常的干净利索，带我在妇产科门诊、妇科病房、产科病房走了一圈，把我介绍给了同事，最后把我带到产房门口。</p><p>她非常严肃的对我说：“你上班后的头三个月就在产房，接生是基本功，必须掌握。刚开始你肯定觉得挺难，但你要记住你是个妇产科医生，你以后还要处理产程中出现的各种疑难问题，还要拉产钳。助产士的经验很丰富，好好跟着学，出产房前必须独立接生六十个。”</p><p>接着她对着产房里面喊了一声：“邓老师在吗？”里面马上应了一声：“在呀，主任啊，什么事啊？”传来高低起伏非常悦耳的充满女人味的声音，我想一定是个大美女。等人一出来，吓我一跳，邓老师看年龄四十多岁，圆形的一张扁平脸，两只大眼睛非常突兀，嘴也很大，和她说话的声音非常的不适称。</p><p>“这是咱们科新分配来的秋大夫，头三个月就交给你们了，好好带，赶紧成才还指望着干活呢。”主任说。“哟，瞧您说的，您还不放心我们，等着看好吧。”邓老师回答。我听出来了，邓老师是个老北京人。</p><p>和护士长领了柜子，又去总务科领了衣服医生号牌，我的妇产科工作正式开始了。</p><p><br><br></p><p>作者：三叶秋</p><p><br></p><p>链接：http://www.jianshu.com/p/cc0038aa492c</p><p><br></p><p>來源：简书</p><p><br></p><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p><p><br></p>', '1', '2017-10-13 16:06:10', '2017-10-13 16:06:10');
INSERT INTO `posts` VALUES ('28', '真正让人变好的选择都不会太舒服', '<p>国庆前一个小学妹发消息问我怎样才能好好利用大学时间不荒废。我停在了屏幕前，几年的时间好像不能简短用几个字，几句话就可以描述出来，我想了想，敲下几个字：突破自己。</p><p>她说国庆后大学社团开始招新了，她想进学生会，也递交了申请表，可是没有勇气去参加竞选，觉得自己平时比较内敛，说话都会脸红，她想不出让人印象深刻的自我介绍，没有办法跟别人自然的交流，一紧张就会大脑缺氧。</p><p>噼里啪啦一大堆理由，说白了就是害怕去改变。</p><p>没有人生来就特别厉害，看到别人光鲜亮丽的表面，其实人家也经历过绝望和疼痛。</p><p>很多人怕改变，因为改变会让人面对新的事物。大部分的恐惧与懒惰有关。我们常常害怕改变，是因为懒惰懒得去适应新的环境，学习新知识，涉足新领域，但如果这样的话，如何能让自己成熟起来呢?</p><p>不去突破舒适的环境，可能永远都在原地踏步。</p><p><br><br></p><p>作者：叫欢哥</p><p><br></p><p>链接：http://www.jianshu.com/p/0c11c088f181</p><p><br></p><p>來源：简书</p><p><br></p><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p><p><br></p>', '1', '2017-10-13 16:06:34', '2017-10-13 16:06:34');

-- ----------------------------
-- Table structure for post_topics
-- ----------------------------
DROP TABLE IF EXISTS `post_topics`;
CREATE TABLE `post_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of post_topics
-- ----------------------------
INSERT INTO `post_topics` VALUES ('1', '28', '1', '2017-10-18 16:27:36', '2017-10-18 16:27:36');
INSERT INTO `post_topics` VALUES ('2', '4', '1', '2017-10-19 12:10:03', '2017-10-19 12:10:03');
INSERT INTO `post_topics` VALUES ('3', '5', '1', '2017-10-19 12:10:59', '2017-10-19 12:10:59');
INSERT INTO `post_topics` VALUES ('4', '24', '2', '2017-10-19 12:11:12', '2017-10-19 12:11:12');
INSERT INTO `post_topics` VALUES ('5', '25', '2', '2017-10-19 12:11:12', '2017-10-19 12:11:12');

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES ('1', '旅游', '2017-10-18 15:08:25', '2017-10-18 15:08:25');
INSERT INTO `topics` VALUES ('2', '经典', '2017-10-18 15:08:50', '2017-10-18 15:08:50');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'tom', 'tom@qq.com', '$2y$10$Kvw/7jmxSWUjYAAfRPI2MuVJp0AZ8BHLbIq8UWlAB1PzydNXsvJnO', 'qZP52YYlAAdJrPBzL9LSfCuCK7zZfJv5U6XlqbHOfGo6YWnS4sXOXH3I8TWV', '/storage/f4c5afb33459f31438d4391a33ad7672/KJFneMK3yoCHRV9zaCtr4h1xhLvANyZC95n72Mol.jpeg', '2017-09-20 17:15:36', '2017-10-18 09:56:57');
INSERT INTO `users` VALUES ('2', 'test', 'test@qq.com', '$2y$10$dQ4b6xsyM5yXTiF8CnwWRuvbtqD5Zgp.1wFQQw6Kr4LAp46LrZDye', 'Fvu2InXlYnVkKhJxe9p3EXEOvviRQE0ZJj19VZaeAThbgr7577Bg8iq5uoQC', null, '2017-09-21 11:48:34', '2017-09-21 11:48:34');

-- ----------------------------
-- Table structure for zans
-- ----------------------------
DROP TABLE IF EXISTS `zans`;
CREATE TABLE `zans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of zans
-- ----------------------------
INSERT INTO `zans` VALUES ('2', '2', '27', '2017-09-26 17:01:31', '2017-09-26 17:01:31');
INSERT INTO `zans` VALUES ('3', '1', '4', '2017-09-26 17:05:27', '2017-09-26 17:05:27');
