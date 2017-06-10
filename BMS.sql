create database BMS
use BMS

--创建图书信息表（book）
create table book 
(
	bno nchar(50) not null primary key,
	bname nchar(50)not null,
	author nchar(50)not null,
	classno nchar(20)not null,
	press nchar(50)not null,
	price float ,
	abstract ntext ,
	date datetime not null,
)

--创建读者用户表(ruser)
create table ruser  
(
	ruser nchar(50) not null primary key,
	rpsw nchar(50) not null,
	rname nchar(50) not null,
	rsex  nchar(50) not null,
	company  nchar(50) not null,
	rtype  nchar(50) not null,
	idnumber nchar(50) not null,
	fine float default 0,
	date datetime,
	address  nchar(50) not null,
	tel  nchar(50) not null,
	email nchar(50) not null,
)

--创建管理员表（auser）
create table auser 
(
	auser nchar(50) not null primary key,
	apsw nchar(50) not null,
	aname nchar(50) not null,
	asex  nchar(50) not null,
	isdelete nchar(2)  default '否',
)


--创建借阅表（bor）
create table bor  
(	
	id int identity(1,1) PRIMARY KEY,
	ruser nchar(50) not null ,
	bno nchar(50) not null ,
	borrowtime datetime not null ,
	returntime datetime ,
	isreturn nchar(2)  default '否',
)


--向图书信息表（book）中插入原始数据
insert into book values('A00000001','马克思主义哲学原理','霍福广','A','中国人民大学出版社',25.0,'教材根据教育部社政司关于高职高专学校马克思主义哲学课程应“着重引导和帮助学生掌握马克思主义的立场、观

点、方法，树立正确的世界观、人生观和价值观”的目的和要求，结合高职学生的实际，按照高职教育培养实用型、技艺型和创新型高素质人才的要求，本着增强教材的实用性、实效性和时代性原则，在内容上，既坚持马克

思主义哲学的科学体系，又兼顾高职学生的知识层次和结构，体现了较强的适用性；既坚持马克思主义哲学的基本原理，又密切联系社会实际，体现了马克思主义哲学与时俱进的时代精神；在体例上，既保持了教材的规范性

，又体现了形式的新颖性；在写作风格上，既坚持了表达的严谨准确性，又体现了叙述的生动流畅性。有利于学生掌握并运用马克思主义哲学的世界观和方法论，树立正确的世界观和人生观。本教材特点如下：(1)既保持了马

克思主义哲学的科学体系，又兼顾高职学生的知识层次，有较好的实用性；(2)紧密结合当代实际，较好地体现了马克思主义哲学与时俱进的时代精神；(3)文字和语言表达有一定的新意。','2017-6-8')
insert into book values('B00000001','哲学的故事','[美]威尔·杜兰特','B','新星出版社',49.00,'本书着重描述了人类史上数十位著名哲学家的境遇、情感与生平，因之，它并不该被看做是一部哲学史，而是一部关于

哲学家的故事。','2017-6-8')
insert into book values('C00000001','逻辑哲学论','(奥地利)路得维希·维特根斯坦','C','九州出版社',27.23,'《逻辑哲学论》是哲学家维特根斯坦（Wittgenstein，Ludwing）在其一生中出版的唯一的书籍篇幅的著作

。本书是在他在1918年第一次世界大战当兵期间写的。首先在1921年出版为德语的 Logisch-Philosophische Abhandlung，它现在被广泛的认为是二十世纪最重要的哲学著作之一。拉丁语标题 "Tractatus Logico-

Philosophicus" 最初是 G. E. Moore 建议的，表示了对斯宾诺莎的 Tractatus Theologico-Politicus(神学政治论)的敬意。维特根斯坦的著名的文笔风格 — 他表达自身的绝对冷静和简洁的方式 — 是从他所崇拜的伟大的

德国逻辑学家和哲学家 Gottlob Frege 的哲理散文中铸就来的。在他的哲学评论中他写道: "我的句子的风格受到 Frege 的非常强烈的影响。并且如果我想要的话，我能在没有人能在第一眼就能辨别的地方察觉到这种强烈的

影响。','2017-6-8')
insert into book values('D00000001','论犯罪与刑罚','贝卡里亚 ','D','中国大百科全书出版社',50.20,'由意大利刑事古典学派创始人贝卡里亚的这部著作，篇幅不大但影响却极为深远，该书初版于1764年，是人类历史

上第一部对刑罚原则进行系统阐述的著作。全书洋溢着伟大的人道主义气息，对刑讯逼供和死刑进行了愤怒的谴责，鼓吹刑法改革，力介罪刑相适应的近代量刑原则。本书问世后立即给作者带来了巨大的声誉，被译为多种文

字，它对地俄国、普鲁士以及奥地利等国的刑法改革具有重大的影响。该书被誉为刑法领域里的最重要的经典著作之一。"','2017-6-8')
insert into book values('E00000001','战争论','卡尔·冯·克劳塞维茨(Carl Von Clausewitz)','E','中国人民解放军出版社',79,'《战争论》被誉为西方近代军事理论的经典之作，对近代西方军事思想的形成和发展起

了重大作用，被誉为影响历史进程的100本书之一。克劳塞维茨本人也因此被视为西方近代军事理论的鼻祖。','2017-6-8')
insert into book values('F00000001','经济学基础','石应峰','F','人民邮电出版社',17.94,'“经济学基础”是高职院校经济管理类专业的基础课程，该课程主要介绍市场经济基本理论，同时培养学生市场经济基本理论

的实践能力。现有的经济学基础教材的最大缺点是偏重于理论，要求学生有一定的经济数学知识储备，这给高职学生学习带来很大的困难。本书为了解决这个问题，专门编写了适合高职高专教学的“任务导向”型教材，“以

能力为本位，以贴近生活为目标”，注意在教学过程中培养学生解决经济生活实际问题的能力。','2017-6-8 12:21:13')
insert into book values('G00000001','外国文化史','孟昭毅，曾艳兵','G','北京大学出版社',15.00,'本书定名为“外国文化史”，一是表明它的相对性和学理立场，即相对“中国文化史”而言，只以它为论述的参照系

，不包括中国文化史的内容；二是全书既大量描述了外国文化的千姿百态，深入梳理了外国文化的发展脉络，又简洁明了、重点突出，尽可能为读者创造一个非常明晰、舒适的阅读空间，给他们一种史论结合的阅读快感。应

该说，学习这种外国文化史对于当前共同生活在地球村上的人来说，是面对政治全球化、经济一体化的转型期社会最佳的文化选择。','2017-6-8 12:21:54')
insert into book values('H00000001','日语语言学','翟东娜','H','高等教育出版社',15.00,'上篇为日语概论篇，下篇为日语研究篇，本书适用于大学本科日语专业三、四年级日语概论、语言学概论、语言与文化等课程

，日语专业研究生一、二年级日语学概论、日语学通论、语言学基础理论、语言学专题研究等课程以及社会学习者自修课程。同时，本书可以为日语教师和研究者提供参考','2017-6-8 12:21:54')
insert into book values('I00000001','活着','余华','I','春风文艺出版社',45.00,'《活着》讲述一个人一生的故事，这是一个历尽世间沧桑和磨难老人的人生感言，是一幕演绎人生苦难经历的戏剧。小说的叙述者“我

”在年轻时获得了一个游手好闲的职业——去乡间收集民间歌谣。在夏天刚刚来到的季节，遇到那位名叫福贵的老人，听他讲述了自己坎坷的人生经历： 地主少爷福贵嗜赌成性，终于赌光了家业一贫如洗，穷困之中福贵因母

亲生病前去求医，没想到半路上被国民党部队抓了壮丁，后被解放军所俘虏，回到家乡他才知道母亲已经过世，妻子家珍含辛茹苦带大了一双儿女，但女儿不幸变成了哑巴。','2017-6-8 12:21:54')
insert into book values('J00000001','菊与刀','鲁思·本尼迪克特','J','浙江文艺出版社 ',45.00,'本尼迪克特编著的《菊与刀》(《The Chrysanthemum and the Sword》)是一部通览日本文化、解读其矛盾性格的惊世

之作，（但此书内容存有争议，作者也没有到过日本）行销100多个国家和地区，是我们了解日本不得不读的经典著作。','2017-6-8 12:21:54')


--向读者用户表(ruser)中插入原始数据
insert into ruser values('20154071101','123456','王宁','男','信息技术学院','学生','220012199502154518',0,'2017-05-31 22:15:04','1#238','15776562660','865124ss@163.com')
insert into ruser values('20154071102','123456','杨帆','男','信息技术学院','学生','152425199505152214',0,'2017-05-31 22:15:04','1#238','15776562557','gr4365456@163.com')
insert into ruser values('20154071103','123456','李庆华','男','信息技术学院','学生','152425199505152254',0,'2017-05-31 22:15:04','1#238','15776562552','ht565456@163.com')
insert into ruser values('20154071104','123456','秦金辉','男','信息技术学院','学生','152425199505152685',0,'2017-05-31 22:15:04','1#238','15776562224','jy456@163.com')
insert into ruser values('20154071105','123456','刘洪','男','信息技术学院','学生','152425199505152865',0,'2017-05-31 22:15:04','1#238','15776562447','njgf56@163.com')
insert into ruser values('20154071106','123456','王琪','女','信息技术学院','学生','152425199505152423',0,'2017-05-31 22:15:04','12#536','15776562457','hgfd5456@163.com')
insert into ruser values('20154071107','123456','曹玉朝','女','信息技术学院','学生','152425199505152445',0,'2017-05-31 22:15:04','12#536','15776562544','mjf5456@163.com')
insert into ruser values('20154071108','123456','彭聪','女','信息技术学院','学生','152425199505152234',0,'2017-05-31 22:15:04','12#428','15776562354','nhgfn@163.com')
insert into ruser values('20154071109','123456','徐俊伟','女','信息技术学院','学生','152425199505152123',0,'2017-05-31 22:15:04','12#428','15776562347','gdfr56@163.com')
insert into ruser values('20154071110','123456','韩立飞','女','信息技术学院','学生','15242519950515254x',0,'2017-05-31 22:15:04','12#135','15776562836','jnythed@163.com')
insert into ruser values('20154071111','123456','张明','女','信息技术学院','学生','152425199505152584',0,'2017-05-31 22:15:04','12#516','15776562678','hdr@163.com')
insert into ruser values('T4071110','123456','王阳明','女','信息技术学院','教师','24582519850515254x',0,'2017-05-31 22:15:04','教师公寓112','16878562836','kmyh@163.com')
insert into ruser values('T4071111','123456','谢逊','男','信息技术学院','教师','785625198505152584',0,'2017-05-31 22:15:04','教师公寓256','14576562678','jmngfnjmf545@163.com')


--向管理员表(auser)中插入原始数据
insert into auser values('admin1','123456','王天霸','男','否')
insert into auser values('admin2','123456','李寻欢','男','否')
insert into auser values('admin3','123456','林黛玉','女','否')
insert into auser values('admin4','123456','后羿','男','否')
insert into auser values('admin5','123456','嫦娥','女','否')

--向借阅表(bor)中插入原始数据
insert into bor(ruser,bno,borrowtime) values('20154071101','A00000001','2017-5-10 08:55:20')
insert into bor(ruser,bno,borrowtime) values('20154071102','A00000001','2017-5-10 08:55:20')
insert into bor(ruser,bno,borrowtime) values('20154071103','C00000001','2017-5-10 08:55:20')
insert into bor(ruser,bno,borrowtime) values('20154071104','A00000001','2017-5-10 08:55:20')
insert into bor(ruser,bno,borrowtime) values('20154071104','D00000001','2017-5-10 08:55:20')
insert into bor(ruser,bno,borrowtime) values('20154071107','F00000001','2017-5-10 08:55:20')
insert into bor(ruser,bno,borrowtime) values('20154071107','A00000001','2017-5-10 08:55:20')
insert into bor(ruser,bno,borrowtime) values('20154071108','C00000001','2017-5-10 08:55:20')
insert into bor(ruser,bno,borrowtime) values('20154071108','B00000001','2017-5-10 08:55:20')
insert into bor(ruser,bno,borrowtime,returntime,isreturn) values('20154071101','B00000001','2017-5-10 08:55:20','2017-6-10 08:55:20','是')
insert into bor(ruser,bno,borrowtime,returntime,isreturn) values('20154071103','B00000001','2017-5-10 08:55:20','2017-6-10 08:55:20','是')
insert into bor(ruser,bno,borrowtime,returntime,isreturn) values('20154071105','E00000001','2017-5-10 08:55:20','2017-6-10 08:55:20','是')
insert into bor(ruser,bno,borrowtime,returntime,isreturn) values('20154071107','E00000001','2017-5-10 08:55:20','2017-6-10 08:55:20','是')
