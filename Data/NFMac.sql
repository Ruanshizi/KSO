use NFMac
GO
create table Theuser   --�û���
(
	userID int primary key identity(1,1),--�û�ID 
	username nvarchar(50) not null,		 --�û�����
	userpassword  varchar(50) not null,  --�û�����
	useremail char(32) not null,		 --�û�����
)
GO
insert into Theuser  values ('��ͼͼ','123456','1150751235@qq.com')
select * from Theuser
GO

create table Goods  --��Ʒ��
(
	GoodsID int primary key identity(1,1),--��ƷID
	GoodsName varchar(200) not null,	--��Ʒ����
	Goodphoto varchar(500) not null,	--��ƷͼƬ
	Goodsnumber int not null,			--��Ʒ����
	GoodPrice money not null,			--��Ʒ�۸�
)
GO
create table parameter  --��Ʒ��ϸ��
(
	paID int primary key identity(1,1),  --ID
	paName varchar(200) 
)