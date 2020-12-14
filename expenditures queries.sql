--HOW MUCH I SPENT TODAY?

select round(sum(purTotPrc),2) as daily_expenditure
from purchase
where purDT between '2020-12-05 00:00:00.000' and '2020-12-05 23:59:00.000'

--select * from purchase

--update purchase
set purDT= '2020-12-01 17:46:25.000'
where purDT='2020-11-01 17:46:25.000'

--LIST OF PURCHASES 

select pu.proId, pu.comId, pro.proName, pu.purPrc, pu.purTotPrc, pu.purDT
from product as pro
inner join purchase as pu on pro.proId=pu.proId
where pu.purDT between '2020-12-02 00:00:00.000' and '2020-12-02 23:59:00.000'
order by comId 

--PURCHASES BY CATEGORIES AND MARKET 

select pu.comId, round(sum(purTotPrc),2) as total
from product as pro
inner join purchase as pu on pro.proId=pu.proId 
where pu.purDT between '2020-12-05 00:00:00.000' and '2020-12-05 23:59:00.000' 
--group by pro.catId
group by pu.comId

-- WHICH MARKET IS CHEAPER?

select pro.proName, pu.comId, pu.purPrc,pu.purTotPrc, pro.proWght, pu.purQnty,pro.proType, pro.proBrand
from purchase as pu
inner join product as pro on pu.proId=pro.proId
where purDT between '2020-11-20 00:00:00.000' and '2020-11-30 23:59:00.000'
order by pro.proName




--Any one shopping sum total query
--select round(sum(purTotPrc),2)
--from purchase
--where purDT='2020-11-20 17:28:00.000'

--any one shopping purchase items and prices

--select * from purchase
--where purDT='2020-11-09 17:53:00.000'

--deletion of one row from table
--delete from purchase 
--where proId=1238 and comId=1 and purDateTime='2020-11-09 17:53:00.000'

delete from product
where proId=755


--seeing together product and purchase query

--select pr.proName,  pu.purQnty, pu.purTotPrc
--from product as pr
--inner join purchase as pu on pr.proId=pu.proId
--where purDT= '20201120 17:28:00 PM'

--updating table

--update purchase
--set purTotPrc=3
--where proId=231 and comId=3 and purDT='2020-11-09 17:53:00.000'

--selecting distinct statements

select distinct comId
from purchase
where purDT between '2020-11-14 00:00:00.000' and '2020-11-24 23:59:00.000'

--aggregate functions
--select count(proName) as num_of_products
--from product

--as data inputs grows i encountered some big id numbers which seems bad and distract my attention.
--so i decided to change these big id nubers. 
--here is my code





--finding row using wildcard

--select * from product
--where proName like '%gel%' 




--select sum(purTotPrc) 
from purchase
where purDT between '20201120' and  '20201120 23:59:59'

--select * from purchase
inner join product on product.proId=purchase.proId
where purDateTime between '20201106' and  '20201106 23:59:59' and comId=3

--update purchase
set purTotPrice=5.94
where purTotPrice=2.97 and purDateTime = '2020-11-06 15:01:00.000'

--select * from purchase
where purDateTime between '20201106' and  '20201106 23:59:59'

--select pu.comId, sum(purTotPrice)
from purchase as pu
where pu.purDateTime between '20201106' and  '20201106 23:59:59'
group by pu.comId

--select proBrand
from product
where proBrand like '%arr%';

--use expenditures


--SELECT round(AVG (purTotPrice),2) AS 'Average Purchase Price'
FROM purchase;

--select count (purTotPrice) as 'total purchased items'
from purchase

--select count(purTotPrice) as 'expensive items'
from purchase
where purTotPrice>20

--select product.proName, purchase.purTotPrice
from purchase
inner join product on product.proId=purchase.proId
where purTotPrice>20

--select cast(purQuantity as decimal(4,2))
from purchase

--alter table purchase 
--alter column purQuantity float;


--SQL DELETE Statement is used to delete existing records in a table.

--delete from purchase
where proId=398 and purDT='2020-11-30 14:36:00.000'

--select * from purchase


--SQL SERVER String Functions

--concat function
--SELECT CONCAT(proName, ' ', proBrand) proidentity
FROM product

--SELECT 
	CONCAT(
		CHAR(20), 
		CONCAT(proName, ' ', proBrand), 
		CHAR(13),
		proWght
		) proidentity
FROM product
ORDER BY 
	proName


--PATINDEX, string içindeki patternin pozisyonunu veriyor

SELECT proName, PATINDEX('%chocolat%', proName) as pos
FROM product
WHERE proName like '%chocolat%'
ORDER BY proName


--length of the product names 

SELECT proName, len(proName) 

--UPPER&LOWER Functions

SELECT proName, UPPER(proName) as uppercase
FROM product
WHERE proName like '%chocolat%'


SELECT proName, LOWER(proName) as lowercase
FROM product
WHERE proName like '%chocolat%'