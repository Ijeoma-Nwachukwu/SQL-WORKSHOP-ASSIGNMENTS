/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [SalesOrderID]
      ,[OrderQty]
      ,[UnitPrice]
      ,[Name]
      ,[Color]
  FROM [AdventureWorksLT2012].[dbo].[View_1]

  --Q2
  SELECT p.ProductID,p.Name,p.ProductNumber,c.Name
FROM SalesLT.Product p
INNER JOIN SalesLT.ProductCategory c 
ON p.ProductCategoryID=c.ProductCategoryID;
--THIS IS USED TO JOIN ROWS FROM DIFF TABLES THAT ARE THE SAME(INNER JOIN)

--Q3
SELECT p.ProductID,p.Name,p.SellStartDate,p.SellEndDate
,p.DiscontinuedDate
,c.ModifiedDate
FROM SalesLT.Product p
INNER JOIN SalesLT.ProductCategory c
ON p.ProductCategoryID=c.ProductCategoryID;

--q4
SELECT p.ProductID,p.Name,p.SellStartDate,p.SellEndDate
,p.DiscontinuedDate, p.ProductNumber, c.Name,c.ModifiedDate
FROM SalesLT.Product p
INNER JOIN SalesLT.ProductCategory c
ON p.ProductCategoryID=c.ProductCategoryID
where C.Name= 'ROAD BIKES';

--Q5
SELECT p.ProductID,p.Name,p.SellStartDate,p.SellEndDate
,p.DiscontinuedDate, p.ProductNumber, c.Name,c.ModifiedDate
FROM SalesLT.Product p
INNER JOIN SalesLT.ProductCategory c
ON p.ProductCategoryID=c.ProductCategoryID
where C.Name IN ('MOUNTAIN BIKES','ROAD BIKES','TOURING BIKES');

--Q6
SELECT SalesOrderID, OrderDate, ShipDate, Status, SubTotal,
TaxAmt,Freight, TotalDue
FROM SalesLT.SalesOrderHeader;

--Q7
SELECT O.SalesOrderID, O.OrderDate, O.ShipDate, O.Status, O.SubTotal,
O.TaxAmt,O.Freight,O.TotalDue,
C.FIRSTNAME+''+c.LASTNAME AS FULLNAME,C.EMAILADDRESS
FROM SalesLT.SalesOrderHeader O
INNER JOIN SalesLT.Customer C
ON O.CustomerID=C.CustomerID;

--Q8
SELECT c.*,o.*
FROM SalesLT.Customer c
LEFT OUTER JOIN SalesLT.SalesOrderHeader o ON c.CustomerID=o.CustomerID
WHERE o.CustomerID IS NULL;--Q9SELECT ISNULL(C.FIRSTNAME,'')+''+ISNULL(c.MiddleName, '')+ISNULL(C.LASTNAME,'') AS FULLNAME,c.COMPANYNAME,c.EMAILADDRESS,O.SALESORDERID,O.ORDERDATE,O.TOTALDUEFROM SALESLT.CUSTOMER cINNER JOIN SALESLT.SALESORDERHEADER OON c.CUSTOMERID=O.CUSTOMERIDWHERE O.ORDERDATE>='01-01-2004'ORDER BY O.TotalDue DESC;--q10SELECT DISTINCT p.ProductNumber
FROM SalesLT.SalesOrderHeader o
INNER JOIN SalesLT.SalesOrderDetail d ON o.SalesOrderID=d.SalesOrderID
INNER JOIN SalesLT.Product p ON d.ProductID=p.ProductID;

--q11
select isnull(c.firstname,'')+''+isnull(c.lastname, '') as Fullname,
c.CompanyName,c.EmailAddress,a.CountryRegion
FROM SALESLT.Customer c
INNER JOIN SALESLT.CUSTOMERADDRESS CA ON c.CUSTOMERID = CA.CUSTOMERID
INNER JOIN SALESLT.ADDRESS A ON CA.ADDRESSID=A.ADDRESSID
WHERE A.COUNTRYREGION='UNITED KINGDOM';
--q12
select isnull(c.firstname,'')+''+isnull(c.lastname, '') as Fullname,
c.CompanyName,c.EmailAddress,a.CountryRegion
concat(a.Addressline1+,'-', a.ADDRESSLINE2,+' '+
a.City,+''+a.StateProvince,+''+a.PostalCode,+''+a.CountryRegion)
FROM SALESLT.Customer c
INNER JOIN SALESLT.CUSTOMERADDRESS CA ON c.CUSTOMERID = CA.CUSTOMERID
INNER JOIN SALESLT.ADDRESS a ON CA.ADDRESSID=a.ADDRESSID;

--q13
SELECT MAX(OrderDate) FROM SalesLT.SalesOrderHeader;--q14SELECT SalesOrderID
,OrderDate
,ShipDate
,Status
,SubTotal
,TaxAmt
,Freight
,TotalDue
FROM SalesLT.SalesOrderHeader
WHERE OrderDate =(SELECT MAX(OrderDate) FROM SalesLT.SalesOrderHeader);--q15SELECT SalesOrderID
,OrderDate
,ShipDate
,Status
,SubTotal
,TaxAmt
,Freight
,TotalDue
FROM SalesLT.SalesOrderHeader
WHERE OrderDate =(SELECT MIN(OrderDate) FROM SalesLT.SalesOrderHeader);

--Q16
SELECT ProductID,Name,ProductNumber
FROM SalesLT.Product
WHERE ProductID IN (
SELECT DISTINCT ProductID
FROM SalesLT.SalesOrderDetail
WHERE OrderQty >100 );

--Q17
SELECT ProductID,Name,ProductNumber
FROM SalesLT.Product
WHERE ProductID IN (
SELECT DISTINCT ProductID
FROM SalesLT.SalesOrderDetail
WHERE UnitPrice >1000 );

--q18
select firstname+' '+ isnull(middlename, '') + ' '+ lastname
,CompanyName,EmailAddress
FROM SALESLT.Customer c
WHERE exists (select 1
FROM SalesLT.SalesOrderHeader o
WHERE C.CustomerID=O.CustomerID);
--exists and not  in can be used interchangeably but must be written as 
select firstname+' '+ isnull(middlename, '') + ' '+ lastname
,CompanyName,EmailAddress
FROM SALESLT.Customer c
WHERE not in (select DISTINCT CustomerID
FROM SalesLT.SalesOrderHeader)


--q19
select firstname+' '+ isnull(middlename, '') + ' '+ lastname
,CompanyName,EmailAddress
FROM SALESLT.Customer c
WHERE not exists (select 1
FROM SalesLT.SalesOrderHeader o
WHERE C.CustomerID=O.CustomerID);
-- NOT IN AND NOT EXISTS ARE THE SAME WHILE IN AND EXISTS ARE THE SAME


--q20