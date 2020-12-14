create database expenditures

--drop database expenditures 

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

alter table product
add foreign key (catId) references category(catId)

--drop table product

create table company(
comId int not null identity(1,1),
comName varchar(50),
comAddr varchar(50),
CONSTRAINT [PK_comId] PRIMARY KEY CLUSTERED ([comId]  ASC)
) ON [PRIMARY]
GO

insert into company(comName, comAddr) values('carrefour contact', 'rue colbert, vire')
insert into company(comName, comAddr) values('zeeman', 'avenue de bischwiller, vire')
insert into company(comName, comAddr) values('lidl', 'route de caen, vire')
insert into company(comName, comAddr) values('mangeons frais', 'rue colbert, vire')
insert into company(comName, comAddr) values('action', 'route de caen, vire')
insert into company(comName, comAddr) values('supérette flérienne', 'flers')
insert into company(comName, comAddr) values('e.leclerc', 'flers')
insert into company(comName, comAddr) values('boulangerie', 'a cote du carrefour contact, vire')
insert into company(comName, comAddr) values('restaurants du cœur', 'vire')
insert into company(comName, comAddr) values('croix rouge', 'vire')
insert into company(comName, comAddr) values('daltoner', '60 Avenue de Bischwiller')
insert into company(comName, comAddr) values('opthometrist', '7 rue de chenedolle')
insert into company(comName, comAddr) values('daltoner', null)
insert into company(comName, comAddr) values('pharmacie du val', null)
insert into company(comName, comAddr) values('viroise express', null)
insert into company(comName, comAddr) values('intersport', null)
insert into company(comName, comAddr) values('distri center', null)
insert into company(comName, comAddr) values('netflix', null)
insert into company(comName, comAddr) values('udemy', null)
insert into company(comName, comAddr) values('gemo', null)


select * from company
--drop table company


create table category(
catId int not null identity(1,1),
catName varchar(50),
CONSTRAINT [PK_catId] PRIMARY KEY CLUSTERED ([catId] ASC)
)ON [PRIMARY]
GO

--drop table category

insert into category(catName) values('nourriture')
insert into category(catName) values('beverages')
insert into category(catName) values('produits de nettoyage')
insert into category(catName) values('vetements')
insert into category(catName) values('matériel électronique')
insert into category(catName) values('papeterie')
insert into category(catName) values('éducation')
insert into category(catName) values('décoration')
insert into category(catName) values('jouet')
insert into category(catName) values('sante')
insert into category(catName) values('cosmétiques')
insert into category(catName) values('quincaillerie')
insert into category(catName) values('factures')
insert into category(catName) values('materiels de cuisine')




select * from category

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

--drop table purchase

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (723, 41, '20201006 11:30:05 PM', 1, 74.99, 74.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (724, 41, '20201006 11:30:05 PM', 1, 19.99, 19.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (725, 41, '20201006 11:30:05 PM', 1, 24.99, 24.99)

select*from product
select*from category
select*from company


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (11, 1, '20201021 10:30:00 PM', 3, 0.72, 2.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (18, 1, '20201021 10:30:00 PM', 2, 1.70, 3.4)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (12, 8, '20201103 10:30:00 PM', 1, 0.8, 0.8)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (14, 8, '20201103 10:30:00 PM', 1, 1.15, 1.15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (19, 1, '20201103 10:20:00 PM', 1, 2.14, 2.14)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (20, 9, '20201030', 2, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (23, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (24, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (35, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (36, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (37, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (40, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (46, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (48, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (56, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (57, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (58, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (59, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (61, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (62, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (63, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (64, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (65, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (66, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (67, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (68, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (79, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (80, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (92, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (96, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (113, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (114, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (116, 9, '20201030', 0.5, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (128, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (164, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (165, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (166, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (167, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (171, 9, '20201030', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (203, 9, '20201030', 3, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (73, 6, '20201025', 3.184, 6.9, 21.97)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (74, 6, '20201025', 2.38, 12.9, 30.7)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (75, 6, '20201025', 3.198, 3.89, 12.47)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (73, 6, '20201006', 3.072, 6.9, 21.20)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (74, 6, '20201006', 1.04, 10.9, 11.34)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (75, 6, '20201006', 3.216, 3.9, 12.54)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (197, 5, '20201023 16:15:37 PM', 1, 0.56, 0.56)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (198, 5, '20201023 16:15:37 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (199, 5, '20201023 16:15:37 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (200, 5, '20201023 16:15:37 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (201, 5, '20201023 16:15:37 PM', 1, 1.29, 1.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (162, 5, '20201023 16:15:37 PM', 1, 1.39, 1.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (31, 5, '20201023 16:15:37 PM', 2, 0.29, 0.58)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (27, 1, '20201101 10:00:00 PM', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (11, 1, '20201101 10:00:00 PM', 2, 0.72, 1.44)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (204, 1, '20201101 18:00:00 PM', 1, 1.61, 1.61)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (176, 3, '20201102 17:11:00 PM', 1, 7.29, 7.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (206, 1, '20201102 17:11:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (207, 1, '20201102 17:11:00 PM', 1, 1.62, 1.62)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (161, 1, '20201102 17:11:00 PM', 2, 0.94, 1.88)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (29, 1, '20201102 17:11:00 PM', 1, 2.97, 2.97)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (154, 1, '20201102 17:11:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (208, 1, '20201102 17:11:00 PM', 1, 6.99, 6.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (209, 3, '20201102 17:11:00 PM', 1, 3.39, 3.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (205, 1, '20201102 17:11:00 PM', 1, 2.37, 2.37)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (95, 1, '20201102 17:11:00 PM', 2.044, 2.49, 5.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (177, 3, '20201102 17:11:00 PM', 1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (213, 1, '20201102 17:11:00 PM', 1, 0.47, 0.47)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (210, 1, '20201102 17:11:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (156, 1, '20201102 17:11:00 PM', 1, 1.29, 1.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (212, 1, '20201102 17:11:00 PM', 1, 0.49, 0.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (211, 1, '20201102 17:11:00 PM', 1, 0.49, 0.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (214, 3, '20201102 18:02:00 PM', 1, 2.82, 2.82)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (176, 3, '20201102 17:11:00 PM', 1, 7.29, 7.29)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (215, 11, '20201102 16:00:00 PM', 1, 1.60, 1.60)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (216, 11, '20201102 16:00:00 PM', 1, 1.60, 1.60)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (217, 12, '20201103 16:30:00 PM', 2, 22.10, 44.20)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (218, 4, '20201102 16:51:00 PM', 1.218, 1.49, 1.81)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (219, 4, '20201102 16:51:00 PM', 1, 2.39, 2.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (100, 4, '20201102 16:51:00 PM', 0.5, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (130, 4, '20201102 16:51:00 PM', 0.76, 1.59, 1.27)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (224, 4, '20201102 16:51:00 PM', 1, 1, 1)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (99, 4, '20201102 16:51:00 PM', 1.828, 1.95, 3.56)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (91, 4, '20201102 16:51:00 PM', 1.424, 1.09, 1.55)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (223, 4, '20201102 16:51:00 PM', 1, 1.20, 1.20)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (221, 4, '20201102 16:51:00 PM', 1, 0.9, 0.9)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (222, 4, '20201102 16:51:00 PM', 1, 1.09, 1.09)


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (169, 1, '20201104 17:00:00 PM', 1, 0.56, 0.56)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (51, 1, '20201104 17:00:00 PM', 1, 1.49, 1.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (225, 1, '20201104 17:00:00 PM', 1, null, null)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (31, 2, '20201105 11:00:00 PM', 4, 0.29, 1.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (228, 2, '20201105 11:00:00 PM', 4, 0.29, 1.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (226, 2, '20201105 11:00:00 PM', 1, 1.49, 1.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (227, 2, '20201105 11:00:00 PM', 1, 1.49, 1.49)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (229, 1, '20201105 11:12:00 PM', 1, 2.69, 2.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (230, 1, '20201105 11:12:00 PM', 1, 2.39, 2.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (231, 1, '20201105 11:12:00 PM', 1, 1.63, 1.63)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (232, 1, '20201105 11:12:00 PM', 1, 1.66, 1.66)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (11, 1, '20201106 08:30:00 PM', 1, 0.72, 0.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (13, 1, '20201106 08:30:00 PM', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (230, 1, '20201106 08:30:00 PM', 1, 2.39, 2.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (19, 1, '20201106 08:30:00 PM', 1, 2.14, 2.14)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (235, 1, '20201106 08:30:00 PM', 1, null, null)


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (163, 3, '20201106 15:01:00 PM', 1, 2.79, 2.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (83, 3, '20201106 15:01:00 PM', 1, 0.49, 0.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (244, 3, '20201106 15:01:00 PM', 1, 0.35, 0.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (249, 3, '20201106 15:01:00 PM', 1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (159, 3, '20201106 15:01:00 PM', 1, 0.98, 2.94)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (245, 3, '20201106 15:01:00 PM', 1, 3.35, 3.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (238, 3, '20201106 15:01:00 PM', 1, 1.65, 1.65)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (241, 3, '20201106 15:01:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (243, 3, '20201106 15:01:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (242, 3, '20201106 15:01:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (86, 3, '20201106 15:01:00 PM', 1, 1.35, 1.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (60, 3, '20201106 15:01:00 PM', 2, 0.44, 0.88)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (29, 3, '20201106 15:01:00 PM', 2, 2.97, 2.97)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (177, 3, '20201106 15:01:00 PM', 1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (247, 3, '20201106 15:01:00 PM', 1, 1.29, 1.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (237, 3, '20201106 15:01:00 PM', 1, 1.59, 1.59)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (240, 3, '20201106 15:01:00 PM', 1, 0.69, 0.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (236, 3, '20201106 15:01:00 PM', 1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (246, 3, '20201106 15:01:00 PM', 1, 2.15, 2.15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (239, 3, '20201106 15:01:00 PM', 1, 2.18, 2.18)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (109, 3, '20201106 15:01:00 PM', 1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (248, 3, '20201106 15:01:00 PM', 1.308, 1.79, 2.34)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (95, 3, '20201106 15:01:00 PM', 1.130, 2.49, 2.81)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (250, 3, '20201106 15:01:00 PM', 1, 1.65, 1.65)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (204, 3, '20201106 15:01:00 PM', 1, 1.50, 1.50)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (251, 3, '20201106 15:01:00 PM', 1, 1.70, 1.70)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (252, 3, '20201106 15:01:00 PM', 1, 1.66, 1.66)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (253, 3, '20201106 15:01:00 PM', 1, 2.69, 2.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (254, 3, '20201106 15:01:00 PM', 1, 2.59, 2.59)


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (11, 1, '20201107 10:30:00 AM', 1, 0.72, 0.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (13, 1, '20201107 10:30:00 AM', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (27, 1, '20201107 10:30:00 AM', 1, 4.91, 4.91)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (28, 1, '20201107 10:30:00 AM', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (50, 1, '20201107 10:30:00 AM', 1, null, null)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1225, 1, '20201107 10:30:00 AM', 1, 1.8, 1.8)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1228, 4, '20201107 17:39:00 PM', 2, 1.99, 3.98)




insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (155, 4, '20201107 17:39:00 PM', 0.598, 5.99, 3.58)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (130, 4, '20201107 17:39:00 PM', 1.174, 1.59, 1.87)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (91, 4, '20201107 17:39:00 PM', 0.63, 1.09, 0.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (101, 4, '20201107 17:39:00 PM', 2, 1, 2)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (140, 4, '20201107 17:39:00 PM', 0.736, 2.29, 1.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (99, 4, '20201107 17:39:00 PM', 2.918, 1.95, 5.69)


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (53, 1, '20201107 10:50:00 AM', 1, 1.85, 1.85)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1226, 1, '20201107 10:50:00 AM', 2, 1.33, 2.66)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (231, 1, '20201107 10:50:00 AM', 1, 1.63, 1.63)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (11, 1, '20201107 10:50:00 AM', 1, 0.72, 0.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (13, 1, '20201107 10:50:00 AM', 1, 1.05, 1.05)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (235, 1, '20201107 10:50:00 AM', 1, 4.34, 4.34)



insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1241, 1, '20201109 17:53:00 PM', 1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1242, 1, '20201109 17:53:00 PM', 1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1243, 1, '20201109 17:53:00 PM', 2, 2.02, 4.04)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1236, 3, '20201109 17:53:00 PM', 1, 1.36, 1.36)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1232, 3, '20201109 17:53:00 PM', 1, 0.88, 0.88)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1244, 1, '20201109 17:53:00 PM', 1, 0.66, 0.66)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (231, 1, '20201109 17:53:00 PM', 1, 1.5, 1.5)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (212, 1, '20201109 17:53:00 PM', 1, 0.49, 0.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (245, 1, '20201109 17:53:00 PM', 1, 3.35, 3.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (251, 1, '20201109 17:53:00 PM', 1, 1.70, 1.70)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (30, 1, '20201109 17:53:00 PM', 3, 1.75, 1.75)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (204, 1, '20201109 17:53:00 PM', 1, 1.50, 1.50)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1233, 3, '20201109 17:53:00 PM', 1, 3.33, 3.33)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1245, 1, '20201109 17:53:00 PM', 1, 1.49, 1.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1235, 3, '20201109 17:53:00 PM', 1, 0.85, 0.85)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (154, 1, '20201109 17:53:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (95, 1, '20201109 17:53:00 PM', 1.75, 1.99, 3.48)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1231, 9, '20201109 17:53:00 PM', 1, 1.75, 1.75)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (94, 1, '20201109 17:53:00 PM', 1, 1.39, 1.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (116, 1, '20201109 17:53:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (131, 1, '20201109 17:53:00 PM', 1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1240, 1, '20201109 17:53:00 PM', 1, 2.79, 2.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1238, 1, '20201109 17:53:00 PM', 1, 1.79, 1.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (1234, 3, '20201109 17:53:00 PM', 1, 1, 1)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (11, 1, '20201111 10:30:00 AM', 3, 0.72, 2.16)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (12, 8, '20201110 10:30:00 AM', 1, 0.85, 0.85)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (14, 8, '20201110 10:30:00 AM', 1, 1.15, 1.15)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (12, 8, '20201112 10:30:00 AM', 1, 0.85, 0.85)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (14, 8, '20201112 10:30:00 AM', 1, 1.15, 1.15)


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (12, 8, '20201113 08:30:00 AM', 1, 0.85, 0.85)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (14, 8, '20201113 08:30:00 AM', 1, 1.15, 1.15)


--yeni veriler
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (378, 8, '20201115 08:30:00 AM', 1, 0.85, 0.85)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (380, 8, '20201115 08:30:00 AM', 1, 1.15, 1.15)

--insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (503, 1, '20201118 12:01:00 AM', 1, 2.39, 2.39)
--insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (505, 1, '20201118 12:01:00 AM', 1, 1.5, 1.5)
--insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (599, 2, '20201118 12:01:00 AM', 6, 3.72, 3.72)



select * from product
where proBrand like '%milkway%'
select * from company


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (413, 1, '20201116 18:15:00 PM', 1, 1.94, 1.94)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 1, '20201116 18:15:00 PM', 2, 1.63, 3.26)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (421, 1, '20201116 18:15:00 PM', 1, 2.08, 2.08)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (589, 1, '20201116 18:15:00 PM', 1, 3.32, 3.32)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (503, 1, '20201116 18:15:00 PM', 1, 2.39, 2.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (683, 1, '20201116 18:15:00 PM', 1, 0.09, 0.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (432, 1, '20201116 18:15:00 PM', 1, 4.34, 4.34)





insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (702, 39, '20201117 14:09:00 PM',1, 2.09, 2.09)

select* from product

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (378, 8, '20201120 07:55:00 AM',3, 0.85, 2.55)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (378, 8, '20201117 09:03:00 AM',2, 0.85, 1.70)

--insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (684, 1, '20201119 08:58:00 AM', 1, 1.40, 1.40)
--insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (398, 1, '20201119 08:58:00 AM', 1, 1.67, 1.67)
--insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (392, 1, '20201119 08:58:00 AM', 1, 1.50, 1.50)
--insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (683, 1, '20201119 08:58:00 AM', 1, 0.09, 0.09)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (522, 3, '20201120 17:28:00 PM',1, 2.99, 2.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (688, 3, '20201120 17:28:00 PM',1, 1.55, 1.55)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (689, 3, '20201120 17:28:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (685, 3, '20201120 17:28:00 PM',1, 10.99, 10.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (690, 3, '20201120 17:28:00 PM',1, 2.98, 2.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (525, 3, '20201120 17:28:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (588, 3, '20201120 17:28:00 PM',1, 2.69, 2.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (586, 3, '20201120 17:28:00 PM',1, 3.35, 3.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (569, 3, '20201120 17:28:00 PM',2, 0.99, 1.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (507, 3, '20201120 17:28:00 PM',3, 0.99, 2.97)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (571, 3, '20201120 17:28:00 PM',0.428, 4.29, 1.84)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (687, 3, '20201120 17:28:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (691, 3, '20201120 17:28:00 PM',1, 2.99, 2.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (589, 3, '20201120 17:28:00 PM',1, 3.09, 3.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (692, 3, '20201120 17:28:00 PM',1, 2.99, 2.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (693, 3, '20201120 17:28:00 PM',2, 0.76, 1.52)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (694, 3, '20201120 17:28:00 PM',4, 0.76, 3.04)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (695, 3, '20201120 17:28:00 PM',1, 3.39, 3.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (390, 3, '20201120 17:28:00 PM',1, 0.69, 0.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (696, 3, '20201120 17:28:00 PM',1, 0.55, 0.55)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (433, 3, '20201120 17:28:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (403, 3, '20201120 17:28:00 PM',1, 4.47, 4.47)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (408, 3, '20201120 17:28:00 PM',1, 2.89, 2.89)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (697, 3, '20201120 17:28:00 PM',2, 1.69, 3.38)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 3, '20201120 17:28:00 PM',2, 1.5, 3)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (480, 3, '20201120 17:28:00 PM',1, 0.59, 0.59)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (698, 3, '20201120 17:28:00 PM',1, 0.45, 0.45)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (699, 3, '20201120 17:28:00 PM',1, 8.92, 8.92)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (409, 3, '20201120 17:28:00 PM',4, 1.75, 7)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (700, 3, '20201120 17:28:00 PM',5, 0.35, 1.75)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (501, 3, '20201120 17:28:00 PM',1.462, 2.99, 4.37)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (701, 3, '20201120 17:28:00 PM',1, 1.99, 1.99)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (596, 5, '20201116 12:21:32 PM',1, 1.72, 1.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (410, 5, '20201116 12:21:32 PM',10, 0.29, 2.9)


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 1, '20201114 11:33:44 PM',1, 1.63, 1.63)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (377, 1, '20201114 11:33:44 PM',1, 0.72, 0.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (396, 1, '20201114 11:33:44 PM',1, 1.74, 1.74)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (379, 1, '20201114 11:33:44 PM',1, 1.05, 1.05)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (599, 1, '20201114 11:33:44 PM',2, 0.62, 1.24)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (709, 3, '20201114 16:12:00 PM',3, 0.29, 0.87)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (614, 3, '20201114 16:12:00 PM',1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (409, 3, '20201114 16:12:00 PM',2, 1.75, 3.50)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (569, 3, '20201114 16:12:00 PM',2, 0.99, 1.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (398, 3, '20201114 16:12:00 PM',1, 1.53, 1.53)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (498, 3, '20201114 16:12:00 PM',1.868, 1.99, 3.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (582, 3, '20201114 16:12:00 PM',1, 2.02, 2.02)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (408, 3, '20201114 16:12:00 PM',1, 2.89, 2.89)


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (614, 3, '20201118 15:10:00 PM',1, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (613, 3, '20201118 15:10:00 PM',1, 7.29, 7.29)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (582, 3, '20201118 15:10:00 PM',1, 2.02, 2.02)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (449, 3, '20201118 15:10:00 PM',1, 4.99, 4.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (586, 3, '20201118 15:10:00 PM',1, 3.35, 3.35)


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (706, 3, '20201123 12:21:00 PM',2, 1.39, 2.78)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (705, 3, '20201123 12:21:00 PM',3, 0.69, 2.07)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (700, 3, '20201123 12:21:00 PM',5, 0.35, 1.75)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (703, 3, '20201123 12:21:00 PM',1, 0.15, 0.15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (704, 3, '20201123 12:21:00 PM',0.668, 1.99, 1.33)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (707, 3, '20201123 12:21:00 PM',1, 1.03, 1.03)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (708, 3, '20201123 12:21:00 PM',1, 5.99, 5.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (498, 3, '20201123 12:21:00 PM',1.214, 1.99, 2.42)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (398, 3, '20201123 12:21:00 PM',1, 1.53, 1.53)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 3, '20201123 12:21:00 PM',2, 1.5, 3)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (501, 3, '20201123 12:21:00 PM',1.408, 2.99, 4.21)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (543, 3, '20201123 12:21:00 PM',1, 0.99, 0.99)


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (599, 1, '20201123 18:51:59 PM',3, 0.62, 1.86)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (432, 1, '20201123 18:51:59 PM',1, 4.34, 4.34)


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (677, 3, '20201124 14:21:00 PM',2, 0.99, 1.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (690, 3, '20201124 14:21:00 PM',1, 2.98, 2.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (409, 3, '20201124 14:21:00 PM',4, 1.75, 7.00)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (569, 3, '20201124 14:21:00 PM',2, 0.99, 1.98)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (687, 3, '20201124 14:21:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (709, 3, '20201124 14:21:00 PM',6, 0.29, 1.74)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (710, 3, '20201124 14:21:00 PM',1, 1.35, 1.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (694, 3, '20201124 14:21:00 PM',2, 0.76, 1.52)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (586, 3, '20201124 14:21:00 PM',1, 3.35, 3.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (525, 3, '20201124 14:21:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (433, 3, '20201124 14:21:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (711, 3, '20201124 14:21:00 PM',1, 4.99, 4.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (614, 3, '20201124 14:21:00 PM',1, 1.09, 1.09)


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (712,40, '20201125 14:43:00 PM',1, 1.60, 1.60)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (713,40, '20201125 14:43:00 PM',1, 1.60, 1.60)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (714,40, '20201125 14:43:00 PM',1, 2.20, 2.20)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (432, 1, '20201125 15:30:07 PM',1, 4.34, 4.34)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (715, 1, '20201125 15:30:07 PM',1, 1.15, 1.15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (413, 1, '20201125 15:30:07 PM',1, 1.94, 1.94)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (397, 1, '20201125 15:30:07 PM',1, 1.39, 1.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (421, 1, '20201125 15:30:07 PM',1, 2.08, 2.08)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (599, 1, '20201125 15:30:07 PM',6, 0.62, 3.72)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (683, 1, '20201125 15:30:07 PM',1, 0.09, 0.09)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (735, 1, '20201125 20:30:00 PM',1, 9.99, 9.99)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (716, 3, '20201126 14:15:00 PM',3, 4.49, 13.47)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (717, 3, '20201126 14:15:00 PM',2, 0.69, 1.38)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (718, 3, '20201126 14:15:00 PM',8, 0.19, 1.52)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (719, 3, '20201126 14:15:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (720, 3, '20201126 14:15:00 PM',1, 1.69, 1.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (721, 3, '20201126 14:15:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (705, 3, '20201126 14:15:00 PM',2, 0.69, 1.38)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (709, 3, '20201126 14:15:00 PM',4, 0.29, 1.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (498, 3, '20201126 14:15:00 PM',1.222, 1.99, 2.43)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (569, 3, '20201126 14:15:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (495, 3, '20201126 14:15:00 PM',1.362, 1.59, 2.17)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (559, 3, '20201126 14:15:00 PM',5, 0.358, 1.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (722, 3, '20201126 14:15:00 PM',1, 1.43, 1.43)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (586, 3, '20201126 14:15:00 PM',1, 3.35, 3.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (582, 3, '20201126 14:15:00 PM',1, 2.01, 2.01)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (442, 2, '20201127 12:19:10 PM',1, 1.39, 1.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (410, 2, '20201127 12:19:10 PM',5, 0.29, 1.45)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (562, 4, '20201127 16:52:00 PM',1, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (554, 4, '20201127 16:52:00 PM',0.178, 1.99, 0.35)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (529, 4, '20201127 16:52:00 PM',0.852, 0.99, 0.84)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (492, 4, '20201127 16:52:00 PM',0.782, 1.59, 1.24)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (497, 4, '20201127 16:52:00 PM',0.652, 0.95, 0.62)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (737, 4, '20201127 16:52:00 PM',1.69, 1.79, 3.03)
select * from product


insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (705, 3, '20201127 17:10:00 PM',1, 0.69, 0.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (700, 3, '20201127 17:10:00 PM',3, 0.35, 1.05)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 3, '20201127 17:10:00 PM',1, 1.5, 1.5)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (720, 3, '20201127 17:10:00 PM',1, 1.69, 1.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (398, 3, '20201127 17:10:00 PM',1, 1.53, 1.53)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (694, 3, '20201127 17:10:00 PM',1, 0.76, 0.76)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (718, 3, '20201128 09:59:00 PM',9, 0.19, 1.71)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (726, 3, '20201128 09:59:00 PM',4, 0.29, 1.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (727, 3, '20201128 09:59:00 PM',1, 1.49, 1.49)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (728, 3, '20201128 09:59:00 PM',1, 9.99, 9.99)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (729, 42, '20201128 15:53:00 PM',1, 24.99, 24.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (730, 42, '20201128 15:53:00 PM',1, 15, 15)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (731, 42, '20201128 15:53:00 PM',1, 6.99, 6.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (732, 42, '20201128 15:53:00 PM',1, 9.99, 9.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (733, 42, '20201128 15:53:00 PM',1, 3, 3)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (736, 1, '20201129 11:00:00 AM',1, 2.39, 2.39)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (734, 1, '20201129 11:00:00 AM',1, 1.93, 1.93)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (436, 1, '20201129 11:00:00 AM',1, 2.48, 2.48)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (403, 1, '20201129 11:00:00 AM',1, 4.91, 4.91)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 1, '20201129 11:00:00 AM',1, 1.63, 1.63)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (494, 1, '20201129 11:00:00 AM',1, 1.99, 1.99)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (432, 1, '20201130 10:30:00 AM',1, 4.34, 4.34)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (599, 1, '20201130 10:30:00 AM',6, 0.62, 3.72)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (741, 4, '20201130 14:11:00 PM',2, 1, 2)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (562, 4, '20201130 14:11:00 PM',2, 1.99, 1.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (739, 4, '20201130 14:11:00 PM',1, 0.99, 0.99)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (740, 4, '20201130 14:11:00 PM',0.992, 1.09, 1.08)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (737, 4, '20201130 14:11:00 PM',2.06, 1.79, 3.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (486, 4, '20201130 14:11:00 PM',1.386, 1.29, 1.79)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (738, 4, '20201130 14:11:00 PM',1, 0.299, 2.99)

insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (614, 3, '20201130 14:36:00 PM',2, 1.09, 1.09)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (393, 3, '20201130 14:36:00 PM',2, 1.5, 3)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (720, 3, '20201130 14:36:00 PM',2, 1.69, 1.69)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (398, 3, '20201130 14:36:00 PM',2, 1.53, 1.53)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (700, 3, '20201130 14:36:00 PM',3, 0.35, 1.05)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (726, 3, '20201130 14:36:00 PM',4, 0.29, 1.16)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (709, 3, '20201130 14:36:00 PM',10, 0.29, 2.9)
insert into purchase(proId, comId, purDT, purQnty, purPrc, purTotPrc) values (543, 3, '20201130 14:36:00 PM',1, 0.99, 0.99)



select * from product
where proBrand like '%kinder%'


update product
set proBrand='Charlie Prune'
where proId=732

select * from category

select * from company

select * from product



