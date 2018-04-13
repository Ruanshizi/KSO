
use NFMac

GO

--�û���
create table Kseouser
(
	ID int primary key identity(1,1),-- �û����
	LoginName varchar(50) not null  ,--�û���¼��
	[Password] varchar(50) not null,--�û�����
	[State]   int not null, --�û�״̬
	 Email  varchar(100) not null --�û�����
)

INSERT INTO Kseouser VALUES ('htt','123456','0','1150751235@qq.com')

select * from Kseouser where LoginName='htt' and [Password]='123456'

select LoginName,[Password] from Kseouser where LoginName = '@user' and [Password]='@password'




--��Ʒ��Ϣ��
create table Lipstick
(
	LipID int primary key identity(1,1), --��Ʒ���
	Lphoto varchar(max) not null,		--��ƷͼƬ
	[LTitle] varchar(500) not null,		--��Ʒ����
	[LPrice] money not null,				--��Ʒ�۸�
	LColor  varchar(50) not null,		--��ɫ
)

INSERT INTO Lipstick VALUES('E:/��ѧ��/���˱�ҵ��Ŀ/Thegraduationproject/Thegraduationproject/public/img/img/1.jpg','�ƹⴽ��',170,'7��ɫ')
INSERT INTO Lipstick VALUES('E:/��ѧ��/���˱�ҵ��Ŀ/Thegraduationproject/Thegraduationproject/public/img/img/2.jpg','����ƹⴽ��',170,'43��ɫ')
INSERT INTO Lipstick VALUES('E:/��ѧ��/���˱�ҵ��Ŀ/Thegraduationproject/Thegraduationproject/public/img/img/3.jpg','����չⴽ��',170,'35��ɫ')
INSERT INTO Lipstick VALUES('E:/��ѧ��/���˱�ҵ��Ŀ/Thegraduationproject/Thegraduationproject/public/img/img/4.jpg','ˮ�����󴽸�',170,'25��ɫ')
INSERT INTO Lipstick VALUES('E:/��ѧ��/���˱�ҵ��Ŀ/Thegraduationproject/Thegraduationproject/public/img/img/5.jpg','��ɫ���󴽸�',170,'20��ɫ')
INSERT INTO Lipstick VALUES('E:/��ѧ��/���˱�ҵ��Ŀ/Thegraduationproject/Thegraduationproject/public/img/img/6.jpg','�������󴽸�',170,'24��ɫ')

select * from Lipstick
select * from Lipstick where not LipID between '1' and '6'

delete Lipstick where not LipID between '1' and '6'

 update Lipstick set LTitle='ˮ����󴽸�' where LTitle='ˮ�����󴽸�' 

go
delete from Lipstick where LipID=1
go
delete from KsoType where LipID=1
go
select * from KsoType


--���ͱ�
create table KsoType
(
	KID int primary key identity (1,1),--���ͱ��
	KName varchar(50) not null,
	LipID int foreign key references Lipstick(LipID)
)
INSERT INTO KsoType VALUES('�ƹ�ϵ��','1')
INSERT INTO KsoType VALUES('����','2')
INSERT INTO KsoType VALUES('����')


select* from KsoType where LipID=2



--����ѯ
select l.LipID,k.LipID from Lipstick l inner join KsoType k on l.LipID=k.LipID


--�����洢����
create proc proc_Lipstick
as
	select * from Lipstick
go
exec proc_Lipstick

go
--�Ӳ�ѯ
select * from Lipstick L1 ,(select * from KsoType where LipID=1)k1 where L1.LipID=k1.LipID

go
--����
select LTitle,LPrice from Lipstick  order by LTitle,LPrice DESC

--����Ψһ����
create unique index index_Lipstick on Lipstick(LipID)

select * from Lipstick