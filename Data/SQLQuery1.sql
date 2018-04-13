
use NFMac

GO

--用户表
create table Kseouser
(
	ID int primary key identity(1,1),-- 用户编号
	LoginName varchar(50) not null  ,--用户登录名
	[Password] varchar(50) not null,--用户密码
	[State]   int not null, --用户状态
	 Email  varchar(100) not null --用户邮箱
)

INSERT INTO Kseouser VALUES ('htt','123456','0','1150751235@qq.com')

select * from Kseouser where LoginName='htt' and [Password]='123456'

select LoginName,[Password] from Kseouser where LoginName = '@user' and [Password]='@password'




--商品信息表
create table Lipstick
(
	LipID int primary key identity(1,1), --商品编号
	Lphoto varchar(max) not null,		--商品图片
	[LTitle] varchar(500) not null,		--商品名字
	[LPrice] money not null,				--商品价格
	LColor  varchar(50) not null,		--颜色
)

INSERT INTO Lipstick VALUES('E:/二学年/个人毕业项目/Thegraduationproject/Thegraduationproject/public/img/img/1.jpg','哑光唇膏',170,'7号色')
INSERT INTO Lipstick VALUES('E:/二学年/个人毕业项目/Thegraduationproject/Thegraduationproject/public/img/img/2.jpg','柔感哑光唇膏',170,'43号色')
INSERT INTO Lipstick VALUES('E:/二学年/个人毕业项目/Thegraduationproject/Thegraduationproject/public/img/img/3.jpg','润彩诱光唇膏',170,'35号色')
INSERT INTO Lipstick VALUES('E:/二学年/个人毕业项目/Thegraduationproject/Thegraduationproject/public/img/img/4.jpg','水让润泽唇膏',170,'25号色')
INSERT INTO Lipstick VALUES('E:/二学年/个人毕业项目/Thegraduationproject/Thegraduationproject/public/img/img/5.jpg','显色丰润唇膏',170,'20号色')
INSERT INTO Lipstick VALUES('E:/二学年/个人毕业项目/Thegraduationproject/Thegraduationproject/public/img/img/6.jpg','闪亮星泽唇膏',170,'24号色')

select * from Lipstick
select * from Lipstick where not LipID between '1' and '6'

delete Lipstick where not LipID between '1' and '6'

 update Lipstick set LTitle='水润光泽唇膏' where LTitle='水让润泽唇膏' 

go
delete from Lipstick where LipID=1
go
delete from KsoType where LipID=1
go
select * from KsoType


--类型表
create table KsoType
(
	KID int primary key identity (1,1),--类型编号
	KName varchar(50) not null,
	LipID int foreign key references Lipstick(LipID)
)
INSERT INTO KsoType VALUES('哑光系列','1')
INSERT INTO KsoType VALUES('唇彩','2')
INSERT INTO KsoType VALUES('唇笔')


select* from KsoType where LipID=2



--多表查询
select l.LipID,k.LipID from Lipstick l inner join KsoType k on l.LipID=k.LipID


--创建存储过程
create proc proc_Lipstick
as
	select * from Lipstick
go
exec proc_Lipstick

go
--子查询
select * from Lipstick L1 ,(select * from KsoType where LipID=1)k1 where L1.LipID=k1.LipID

go
--排序
select LTitle,LPrice from Lipstick  order by LTitle,LPrice DESC

--创建唯一索引
create unique index index_Lipstick on Lipstick(LipID)

select * from Lipstick