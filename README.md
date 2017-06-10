# BMS
图书管理系统

**设计目的**
>1. 通过课程设计，使学生进一步巩固所学的知识，考查学生对数据库理论及知识的理解能力和综合运用能力； 
>2. 培养学生自主学习、独立思考的能力，学会查找资料并善于分析资料的能力；
>3. 培养学生独立设计、独立调试程序的能力； 
>4. 培养学生初步的软件设计能力，形成良好的编程风格。

**设计要求**
>1. 在对数据库理论及知识理解的基础上；重点是针对具体的实际问题选择并设计合适的数据库表加以应用，并在此基础上完成相关的算法与程序； 
>2. 给出系统的概要设计、详细设计； 
>3. 设计时如果需要设置相应的视图、触发器、存储过程； 
>4. 使用相关的编程工具编写代码实现设计的数据库系统；
>5. 完成规范化的课程设计报告的编写； 
>6. 每个同学完成一个题目，题目由老师安排。

**一、需求分析**
　　图书管理系统是典型的信息管理系统,其开发主要包括后台数据库的建立和维护以及前端应用程序的开发两个方面。对于前者要求建立起数据一致性和完整性强、数据安全性好的数据库。而对于后者则要求应用程序功能完备,易使用等特点。 在数据库应用系统开发之前，对开发数据库的基本概念，数据库的结构、开发数据库应用程序的步骤、开发体系及方法都应当有相当清晰的了解和认识。数据库应用系统开发的目标是建立一个满足用户长期需求的产品。开发的主要过程为：理解用户的需求，然后，把它们转变为有效的数据库设计。把设计转变为实际的数据库，并且这些数据库带有功能完备、高效能的应用。考虑到使用的方便性，程序用ADO技术来操作数据库，免去了注册DSN步骤。  因此本人结合上述要求对MS SQL Server 2005数据库管理系统、SQL语言原理、VB程序设计，ADO数据库技术进行了较深入的学习和应用。

**二、数据库的概念设计**

　　图书信息：{书号，书名，作者，分类号，出版社，价格，摘要，入馆日期}
  
　　读者用户信息：{读者号（用户ID），密码，姓名，性别，单位，类型，身份证号，罚款金额，办理日期，住址，电话，邮箱}
  
　　管理员信息：{账号，密码，姓名，性别是否删除}
  
　　借阅信息：{借阅编号，读者号（用户ID），书号，借书时间，还书时间，是否已归还}}
  
