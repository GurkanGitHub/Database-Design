--SCRIPT OF MY HOUSE EXPENDITURES DATABASE

--DATABASE CREATION

create database expenditures

--TABLE CREATION

create table product(
proId int not null identity(1,1),
catId int,
proName varchar(50) not null,
proBrand varchar(50),
proQty int,
proWght float(3),
proVol float(3),
proType varchar(50)
CONSTRAINT [PK_proId] PRIMARY KEY CLUSTERED ([proId] ASC)
)ON [PRIMARY]
GO

--SETTING categoryId AS FOREIGN KEY OF PRODUCT TABLE

alter table product
add foreign key (catId) references category(catId)

--DATA ENTRIEDS TO TABLE 

insert into product (catId, proName, proBrand, proQty, proWght, proVol, proType)values (1,'bread', 'market', null, 0.25, null, 'kg')

--TABLE CREATION

create table company(
comId int not null identity(1,1),
comName varchar(50),
comAddr varchar(50),
CONSTRAINT [PK_comId] PRIMARY KEY CLUSTERED ([comId]  ASC)
) ON [PRIMARY]
GO

--DATA ENTRIEDS TO TABLE 

insert into company(comName, comAddr) values('x', 'y')

--TABLE CREATION

create table category(
catId int not null identity(1,1),
catName varchar(50),
CONSTRAINT [PK_catId] PRIMARY KEY CLUSTERED ([catId] ASC)
)ON [PRIMARY]
GO

--DATA ENTRIEDS TO TABLE 

insert into category(catName) values('food')


--TABLE CREATION

create table purchase(
proId int not null,
comId int not null,
purDT datetime not null,
purQnty int,
purPrc float(2),
purTotPrc float(2),
foreign key (proId) references product(proId),
foreign key (comId) references company(comId),
CONSTRAINT [PK_proId_comId_purDT] PRIMARY KEY CLUSTERED (proId, comId, purDT ASC)
)

--DATA ENTRIEDS TO TABLE 

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (723, 41, '20201006 11:30:05 PM', 1, 5, 5)


