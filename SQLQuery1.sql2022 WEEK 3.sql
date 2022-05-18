SELECT CustomerID, FirstName, MiddleName,LastName
FROM SalesLT.Customer;

--QUERY 2

select ProductID,Name,ProductNumber,Color
from SalesLT.Product;

--query 3
select SalesOrderID,CustomerID,OrderDate
from SalesLT.SalesOrderHeader;

-- QUERY 4
SELECT CustomerID,FirstName,MiddleName,LastName
FROM SalesLT.Customer;

--QUERY 5
SELECT CustomerID,FirstName,MiddleName,LastName
FROM SalesLT.Customer
WHERE LastName = 'ADAMS' or LastName = 'alexander';

-- query 6
select CustomerID,FirstName,MiddleName,LastName
from SalesLT.Customer
where FirstName='robert' and LastName= 'brown';

-- query 7
select *
from SalesLT.Product
where ListPrice>1000;

--query 8
select *
from SalesLT.Customer
where ModifiedDate= '2004-03-10';

--query 9
select *
from SalesLT.Customer
where ModifiedDate= '2001-10-01';



--query 10
select *
from SalesLT.Customer
where ModifiedDate!= '2004-03-10';

--query 11
select *
from SalesLT.Customer
where ModifiedDate between '2001-10-01' and '2001-12-31' ;

--query 12
select *
from SalesLT.Customer
where (ModifiedDate between '2001-12-01' and '2001-12-31') 
or (ModifiedDate between '2002-12-01' and '2002-12-31') ;


--query 13
select *
from SalesLT.Customer
where ModifiedDate > '2004-12-31';

-- query 14
select ProductID,Name
from SalesLT.Product
where name like 'Mountain%';

--query 15
select ProductID,Name
from SalesLT.Product
where name like '%Socks%';

--query 17
select ProductID,Name
from SalesLT.Product
where name not like '%Socks%';

--query 18
select ProductID,Name,Color
from SalesLT.Product
where name like 'Touring%' and name not like '%wheel';


--query 19
select CustomerID ,FirstName,MiddleName,LastName
from SalesLT.Customer
where FirstName like 'K%E';

--query 20
select ProductID,Name,Color
from SalesLT.Product
where name like '%[0-9]';

--query 21
select ProductID,Name,Color
from SalesLT.Product
where name like '[0-9]%';

--query 23
select ProductID,Name,Color
from SalesLT.Product
where name like '%[^0-9]';


--query 24
select ProductID,Name,Color,ListPrice
from SalesLT.Product
where color is null;

--query 26
select ProductID,Name,Color,ListPrice
from SalesLT.Product
where color ! = 'blue' ;

--query 27
select ProductID,Name,Size, Weight,Color
from SalesLT.Product
where size is not null
or Weight is not null
or color is not null;


--query 28
select Name,ListPrice,Size,Color
from SalesLT.Product
where size is null
or color is null;

--query 29
select FirstName,MiddleName,LastName
from SalesLT.Customer
order by LastName, FirstName,MiddleName;


--query 30
select LastName,MiddleName,FirstName
from SalesLT.Customer
order by LastName, MiddleName, FirstName;


--query 31
select SalesOrderID,OrderDate,TotalDue
from SalesLT.SalesOrderHeader
where OrderDate= '2004-06-01' and TotalDue > $1000
