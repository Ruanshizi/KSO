use NFMac
GO
create table Theuser   --用户表
(
	userID int primary key identity(1,1),--用户ID 
	username nvarchar(50) not null,		 --用户名称
	userpassword  varchar(50) not null,  --用户密码
	useremail char(32) not null,		 --用户邮箱
)
GO
insert into Theuser  values ('胡图图','123456','1150751235@qq.com')
select * from Theuser
GO

create table Goods  --商品表
(
	GoodsID int primary key identity(1,1),--商品ID
	GoodsName varchar(200) not null,	--商品名称
	Goodphoto varchar(500) not null,	--商品图片
	Goodsnumber int not null,			--商品数量
	GoodPrice money not null,			--商品价格
)
GO
create table parameter  --商品详细表
(
	paID int primary key identity(1,1),  --ID
	paName varchar(200) 
)