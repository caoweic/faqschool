/*
SQLyog Ultimate v12.4.0 (64 bit)
MySQL - 5.7.17-log : Database - faq
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`faq` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `faq`;

/*Table structure for table `answer` */

DROP TABLE IF EXISTS `answer`;

CREATE TABLE `answer` (
  `Id` varchar(50) NOT NULL,
  `Content` varchar(1000) DEFAULT NULL,
  `SupportCnt` int(11) DEFAULT '0',
  `OpposeCnt` int(11) DEFAULT '0',
  `AnswerTo` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `UserId` varchar(50) DEFAULT NULL,
  `accept` int(11) NOT NULL DEFAULT '0' COMMENT '是否采纳',
  `praise` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `answer` */

insert  into `answer`(`Id`,`Content`,`SupportCnt`,`OpposeCnt`,`AnswerTo`,`time`,`UserId`,`accept`,`praise`) values 
('19e3c47d-cb7b-4f86-9a73-7a377846e1d0','\n0\n外包公司没前途，与其做公司的外包，还不如自己接了外包单干。老板抽成肯定比你拿的多，然而累死的是你不是他。 然后，学校不重要吧，能力相当才比学历。在今年腾讯实习生群里，就有二本进了的。当然中等规模的公司看重学历无可厚非，但是报bat不会不给你面试机会的，现在你还有秋招。 我同样是大三，可能会的是比你多点儿吧，java，python，php，c#，vue都有写过项目，但是面试不仅仅是你会什么语言，会写几个项目，有项目固然好，但是项目只是表明你基础够扎实，数据库，操作系统这些基本不能丢 最后就是，虽然在985，但我不是计算机专业的学生，学历不是实力的唯一证明。现在不晚，秋招加把劲',0,0,'70503996-7a03-4049-8c03-0177d557befb','2018-05-25 16:21:33','2ec58a38-6424-496a-99f1-bd1a17a35e47',0,0),
('22086aea-b975-40de-80db-7f3cbba3d297','保险更好吧，以后中产多都得买。安利两个区块链、以太坊开发DApp的实战教程：\n\n1. 适合区块链新手的以太坊DApp开发：\nhttp://xc.hubwiz.com/course/5a952991adb3847553d205d1?affid=20180420oschina\n\n2. 用区块链、星际文件系统（IPFS）、Node.js和MongoDB来构建电商平台:\nhttp://xc.hubwiz.com/course/5abbb7acc02e6b6a59171dd6/?affid=20180420oschina',0,0,'233bde1b-5615-4666-91b6-234cc6afee23','2018-05-25 16:19:20','2ec58a38-6424-496a-99f1-bd1a17a35e47',0,0),
('5ec91672-64b5-48f5-a888-cd8a41c73129','\n1\n你现在首先要解决的是给自己定好位：\n\n1.C++的代码写起来难受证明你并不是很喜欢，可以丢掉C++开发这个定位。\n\n2.JavaWeb开发：你有Java基础和开发经验，捡起来也会相对快一点。\n\n3.前端开发：前端还可以火很久，前端能解决的问题确实很多。现在做APP也越来越少了，我除了16-17年接到几个APP项目，18年还没接到过。\n\n4.数据分析：大数据有基于技术层面的，有基于分析层面的，是在对技术没有兴趣可以往这个方向转型，现在很多公司也在搞自己认为的大数据。\n\n所以给你三个定位选择，一个数据分析，一个JavaWeb，一个前端。\n\n定位好了之后在你没有扎实的经验之前，不要朝三暮四，做着这个想另一个，看到什么火就想学什么，很多新东西和概念是大公司的玩物。\n\n我只能给建议，最终做选择的还是你自己，只有你自己能对自己负责。',0,0,'bf449afb-dba1-42c7-ae77-84cf6cca12ab','2018-05-25 16:19:57','2ec58a38-6424-496a-99f1-bd1a17a35e47',0,0),
('7bc956a0-cb70-4dd5-b42e-12bc4b45aef2','自己努力，能干事，再有就是工作积极点，不要坐着等任务，也可以适当的咨询技术主管有没有任务安排。有些公司招的人主要也是项目维护，偶尔改改bug，平时也没什么事。',0,0,'277e6c01-5b3e-484a-ab76-22667f8804d9','2018-05-25 16:21:58','2ec58a38-6424-496a-99f1-bd1a17a35e47',0,0),
('ad15f41f-9bda-47e6-a861-779220d1ab24','C++确实麻烦。特别是不同厂家之间，能让你觉得完全是两个语言。不是C++圈的，borland当年留下的摊子，这么多年，还有多少人用，真是很难说。你转过去也是维护老产品吧。\n\n我认为如果你认为目前的报酬还不错，公司又愿意给你转换语言的成本（时间+钱），那么可以考虑一下。C++在很多领域还是很重要的，所以也犯不上完全反感。但是如果又不给培训，更没时间，那么你可能就要考虑换个地方了。',0,0,'dc84e032-8a19-40f0-af0c-224a0d9e7bad','2018-05-25 16:20:22','2ec58a38-6424-496a-99f1-bd1a17a35e47',0,0);

/*Table structure for table `donate` */

DROP TABLE IF EXISTS `donate`;

CREATE TABLE `donate` (
  `id` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `money` float NOT NULL,
  `type` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `donate` */

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `content` varchar(200) NOT NULL,
  `href` varchar(1000) DEFAULT NULL,
  `from` varchar(50) NOT NULL,
  `to` varchar(50) NOT NULL,
  `fromstatus` int(4) NOT NULL DEFAULT '0' COMMENT '来源方状态',
  `tostatus` int(4) NOT NULL DEFAULT '0' COMMENT '到达方状态',
  `type` varchar(20) DEFAULT NULL COMMENT '类型',
  `fromname` varchar(50) DEFAULT NULL COMMENT '来源方名称',
  `toname` varchar(50) DEFAULT NULL COMMENT '到达方名字',
  `read` int(4) NOT NULL DEFAULT '0',
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`id`,`time`,`content`,`href`,`from`,`to`,`fromstatus`,`tostatus`,`type`,`fromname`,`toname`,`read`,`title`) values 
('30ff29ce-cbb5-4157-90db-3b7ada88c563','2018-05-25 16:21:58','张国荣老师回复了在公司无所事事','/questions/detail?id=277e6c01-5b3e-484a-ab76-22667f8804d9','system','ec42a370-93ed-417b-9d9a-fd83ad5d9376',0,0,'系统消息','系统',NULL,0,'通知'),
('56df243c-e84f-465e-9c03-64e463b980b7','2018-05-25 16:20:22','张国荣老师回复了公司要我从java转到c++怎么办','/questions/detail?id=dc84e032-8a19-40f0-af0c-224a0d9e7bad','system','0ba4cea1-847a-45fe-816c-f6a9d06be4bb',0,0,'系统消息','系统',NULL,0,'通知'),
('5c3d9dfb-4f92-4abb-aad3-1702c5f026b2','2018-05-25 16:21:33','张国荣老师回复了大三小菜鸟职业方面的迷茫希望能有大佬给些建议','/questions/detail?id=70503996-7a03-4049-8c03-0177d557befb','system','ec42a370-93ed-417b-9d9a-fd83ad5d9376',0,0,'系统消息','系统',NULL,0,'通知'),
('7dfa8fc2-c2ce-4871-996f-26d31152b88d','2018-05-25 16:19:20','张国荣老师回复了保险行业和区块链游戏那个行业前景好啊','/questions/detail?id=233bde1b-5615-4666-91b6-234cc6afee23','system','0ba4cea1-847a-45fe-816c-f6a9d06be4bb',0,0,'系统消息','系统',NULL,0,'通知'),
('fce8ef3e-3234-4ab3-b966-78904b56cd5a','2018-05-25 16:19:57','张国荣老师回复了求大佬指导职业生涯','/questions/detail?id=bf449afb-dba1-42c7-ae77-84cf6cca12ab','system','0ba4cea1-847a-45fe-816c-f6a9d06be4bb',0,0,'系统消息','系统',NULL,0,'通知');

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `title` varchar(200) DEFAULT NULL,
  `Id` varchar(50) NOT NULL,
  `Content` varchar(10000) DEFAULT NULL,
  `SupportCnt` int(11) DEFAULT '0',
  `OpposeCnt` int(11) DEFAULT '0',
  `CommentTo` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL COMMENT '创建时间',
  `UserId` varchar(50) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `stick` int(11) NOT NULL DEFAULT '0' COMMENT '置顶',
  `comment` int(11) NOT NULL DEFAULT '0' COMMENT '回答数',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '加精',
  `experience` int(11) NOT NULL DEFAULT '0' COMMENT '悬赏',
  `accept` varchar(50) DEFAULT NULL COMMENT '采纳',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `question` */

insert  into `question`(`title`,`Id`,`Content`,`SupportCnt`,`OpposeCnt`,`CommentTo`,`time`,`UserId`,`hits`,`stick`,`comment`,`status`,`experience`,`accept`) values 
('保险行业和区块链游戏那个行业前景好啊','233bde1b-5615-4666-91b6-234cc6afee23','如题，如果在不考虑薪资和公司规模的情况下，你会选择那个公司。如果一个是大公司，一个是小公司。在薪资差不多的情况下你会如何选择？',0,0,NULL,'2018-05-25 16:17:59','0ba4cea1-847a-45fe-816c-f6a9d06be4bb',6,0,1,0,5,NULL),
('在公司无所事事','277e6c01-5b3e-484a-ab76-22667f8804d9','来公司两个月了，先是闲了两周熟悉公司项目，然后突然来了一个任务火急火燎的修改了原来公司人员人员的bug，干了一周搞完了之后又闲了一周，又下来一个任务，自己花了将近一个月好不容易将工具程序做好了，某一天早上突然被同事告诉他要把我的项目接收走说会有一个新任务下发下来，但是已经一周多了，无所事事，试用期还有一个月就要结束了，我是不是会被赶走，所以会把我的项目让别人接手ing',0,0,NULL,'2018-05-25 16:14:59','ec42a370-93ed-417b-9d9a-fd83ad5d9376',4,0,1,0,5,NULL),
('大三小菜鸟职业方面的迷茫希望能有大佬给些建议','70503996-7a03-4049-8c03-0177d557befb','目前大三下学期，因为学校氛围等各种原因以前也不知道春招秋招之类的东西，这学期开学网申了一波春招实习岗，同时三月份进了现在这家学校旁的创业外包公司做安卓，结果要么是笔试基础不过要么直接简历过不了。然后就抱着大厂进不了进个小的应该没问题的想法海投简历，结果还是基本上没有回应，要么就是培训公司。其中有个出乎意料的就是hr主动联系我笔试，结果没了下文，弱口令进了他们考试系统一看差不多的代码，一本以上的已经面试完了，我这渣渣二本30分连面试机会都没有。现在开始陷入了迷茫，我该怎么办，我该去哪。。。。。希望各位大佬给些建议',0,0,NULL,'2018-05-25 16:15:55','ec42a370-93ed-417b-9d9a-fd83ad5d9376',2,0,1,0,5,NULL),
('求大佬指导职业生涯','bf449afb-dba1-42c7-ae77-84cf6cca12ab','学过java，也做过java的项目，也学习过大数据的一些内容。大学刚毕业面试到一家公司，想着做java或者学习大数据，却做了一年左右的C++,可我并不会c++,当面试是想学习大数据相关知识。现在发现，java也忘了，大数据也没学到什么，而且对于业务根本就不了解。C++的代码写起来难受。这样下去我是不是就废了？？犹豫要不要换工作',0,0,NULL,'2018-05-25 16:17:30','0ba4cea1-847a-45fe-816c-f6a9d06be4bb',2,0,1,0,5,NULL),
('公司要我从java转到c++怎么办','dc84e032-8a19-40f0-af0c-224a0d9e7bad','原先公司的项目没赚钱不准备继续开发下去，但是因为领导是c++出身的，他想把我转到C++,但是要我完全自学，用的还是xe2 dephi 编程的。跟网上的C++差很大，真的是很不想转。现在还没换大概是工作不用加班而且轻松吧，差不多是技术的一把手了（技术只有4个人。。。）但是感觉对我以后的发展很不好，求大佬',0,0,NULL,'2018-05-25 16:17:09','0ba4cea1-847a-45fe-816c-f6a9d06be4bb',7,0,1,0,5,NULL);

/*Table structure for table `sysconf` */

DROP TABLE IF EXISTS `sysconf`;

CREATE TABLE `sysconf` (
  `id` varchar(50) NOT NULL,
  `value` varchar(200) NOT NULL,
  `key` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sysconf` */

insert  into `sysconf`(`id`,`value`,`key`) values 
('8223baeb-a7e9-4932-a64b-d709300473e2','2.0','version');

/*Table structure for table `tag` */

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `Id` varchar(50) NOT NULL,
  `TagTo` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tag` */

/*Table structure for table `updatelog` */

DROP TABLE IF EXISTS `updatelog`;

CREATE TABLE `updatelog` (
  `id` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `version` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `updatelog` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` varchar(50) NOT NULL,
  `account` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) NOT NULL,
  `rmb` int(11) NOT NULL DEFAULT '0' COMMENT 'VIP等级',
  `createtime` datetime NOT NULL,
  `logintime` datetime DEFAULT NULL,
  `wxopenid` varchar(100) DEFAULT NULL,
  `qqopenid` varchar(100) DEFAULT NULL,
  `questioncnt` int(11) NOT NULL DEFAULT '0',
  `answercnt` int(11) NOT NULL DEFAULT '0',
  `pic` varchar(100) DEFAULT NULL,
  `auth` int(11) NOT NULL DEFAULT '0' COMMENT '用户权限',
  `experience` int(11) NOT NULL DEFAULT '0' COMMENT '经验值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`account`,`name`,`pwd`,`rmb`,`createtime`,`logintime`,`wxopenid`,`qqopenid`,`questioncnt`,`answercnt`,`pic`,`auth`,`experience`) values 
('0ba4cea1-847a-45fe-816c-f6a9d06be4bb','liuxing@qq.com','刘星同学','W6PY8E7pgZkvdYYteaKAGQ==',0,'2018-05-25 16:12:32',NULL,NULL,NULL,0,0,'0.jpg',1,0),
('2ec58a38-6424-496a-99f1-bd1a17a35e47','zhangguorong@qq.com','张国荣老师','ks2KntmyW52TFIsfOwGCyw==',0,'2018-05-25 16:10:08',NULL,NULL,NULL,0,5,'6.jpg',0,0),
('dd4963e3-38c2-4776-8bcc-fed451182c7b','chenyixun@qq.com','陈奕迅老师','BWxS+qNOwWRKezJOc2wB9g==',0,'2018-05-25 16:11:19',NULL,NULL,NULL,0,0,'1.jpg',0,0),
('ec42a370-93ed-417b-9d9a-fd83ad5d9376','xuezhiqian@qq.com','薛之谦同学','GPH8jRYU2g0m++hkCAXARg==',0,'2018-05-25 16:13:45',NULL,NULL,NULL,0,0,'8.jpg',1,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
