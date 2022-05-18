--sql1
SELECT GETDATE() AS CurrentDateTime,
CONVERT (DATE,GETDATE()) AS CurrentDate,
CONVERT (TIME,GETDATE()) AS CurrentTime,
DATEPART (YEAR,GETDATE()) AS CurrentYear,
DATEPART (MONTH,GETDATE()) AS CurrentMonth,
DATEPART (DAY,GETDATE()) AS CurrentDay;

option 2
SELECT GETDATE() AS CurrentDateTime,
CAST(GETDATE() AS DATE) AS CurrentDate,
CAST(GETDATE() AS TIME) AS CurrentTime,
YEAR(GETDATE()) AS CurrentYear,
MONTH(GETDATE()) AS CurrentMonth,
DAY(GETDATE()) AS CurrentDay;

--sql2
SELECT FirstName, LastName, EmailAddress
FROM SalesLT.Customer
WHERE LEN(FirstName) > 10;

--sql3
SELECT FirstName, LastName, EmailAddress
FROM SalesLT.Customer
WHERE PATINDEX('%@%',EmailAddress)>2;--Option 2
SELECT FirstName, LastName, EmailAddress
FROM SalesLT.Customer
WHERE EmailAddress LIKE 
'[a-z,0-9,_,-,.]%@[a-z,0-9,_,-]%.[a-z][a-z]%';--sql4SELECT SalesOrderID,OrderDate, TotalDue FROM SalesLT.SalesOrderHeaderWHERE DATEDIFF (d, OrderDate, GETDATE ()) < = 7; PART 2--Q1SELECT CustomerID,
OrderDate,
GETDATE() AS Today,
DATEDIFF(MONTH, OrderDate, GETDATE()) AS ElapsedMonths
FROM [AdventureWorks2014].[Sales].[SalesOrderHeader];--Q2SELECT CustomerID, OrderDate,DATENAME (MONTH, OrderDate ) AS MONTHNAME,DATENAME (WEEKDAY, OrderDate ) AS WEEKDAYNAMEFROM [AdventureWorks2014] .[Sales] .[SalesOrderHeader] ;--Q3SELECT CustomerID,
OrderDate,
DATEPART(YEAR, OrderDate) AS [Year],
DATEPART(MONTH, OrderDate) AS [Month],
DATEPART(DAY, OrderDate) AS [Day]
FROM [AdventureWorks2014].[Sales].[SalesOrderHeader];--Q4SELECT EndOfDayRate,
ROUND(EndOfDayRate,0) AS EODR_Dollar,
ROUND(EndOfDayRate,2) AS EODR_Cent
FROM  [AdventureWorks2014] . [Sales] .[CurrencyRate];

PART 3
--Q1
SELECT ProductID,  ISNULL (COLOR, ' NO COLOR') AS COLOR, NAME
FROM SalesLT.Product;

SELECT ProductID,  
FROM SalesLT.Product;

--Q3
SELECT CAST ( ProductID as varchar ) +ISNULL (COLOR, ' NO COLOR') AS COLOR, NAME
FROM SalesLT.Product;

--q4

select companyname,  LEFT (CompanyName,10) as [company name ]
FROM SalesLT.Customer;

--q5
SELECT companyname,  SUBSTRING(CompanyName,10,6) as [company name 10 -15]
FROM SalesLT.Customer;

SELECT UPPER (FIRSTNAME) AS FIRSTNAME,
UPPER (LASTNAME) AS LASTNAME
FROM SalesLT.Customer;



SELECT LOWER (FIRSTNAME) AS FIRSTNAME,
LOWER (LASTNAME) AS LASTNAME
FROM SalesLT.Customer;

--Q7
SELECT SalesorderID, orderdate, subtotal,
ROUND (SUBTOTAL, 2) AS SUBTOTAL
FROM SalesLT.SalesOrderHeader;

--Q8
SELECT salesorderID, orderdate,
ROUND (SUBTOTAL, 0) AS SUBTOTAL
FROM SalesLT.SalesOrderHeader;

--q9
SELECT CAST (RAND() * (100-1) +1 AS INT)

--Q10
SELECT SalesOrderID , ORDERDATE, SHIPDATE,
DATEDIFF (D, ORDERDATE, SHIPDATE) AS NUMBEROFDAYS
FROM SalesLT.SalesOrderHeader;

--Q11
SalesOrderID , ORDERDATE, STATUS,
ORDERDATE,SHIPDATE
CAST(ORDERDATE AS DATE) AS ORDERDATE2,
CAST(SHIPDATE AS DATE) AS SHIPDATE2
FROM SalesLT.SalesOrderHeader;


--Q12
SalesOrderID , ORDERDATE, 
YEAR(ORDERDATE AS DATE) AS ORDERDATE2,
MONTH(ORDERDATEAS DATE) AS SHIPDATE2
FROM SalesLT.SalesOrderHeader;

--Q13
SalesOrderID , ORDERDATE, 
DATEPART(YYYY, ORDERDATE) AS ORDERYEAR,
DATENAME(M, ORDERDATE) AS ORDERMONTH
FROM SalesLT.SalesOrderHeader;

--Q14
SELECT SalesOrderID , ORDERDATE, 
DATEADD(M,6,ORDERDATE) PLUS6MONTHS
FROM SalesLT.SalesOrderHeader;

--Q15
SELECT SalesOrderID , ORDERDATE
FROM SalesLT.SalesOrderHeader
WHERE YEAR (ORDERDATE) = 2004;


--Q16
SELECT CustomerID, FirstName, LastName, ModifiedDate 
FROM SalesLT.Customer 
ORDER BY YEAR(MODIFIEDDATE), MONTH(MODIFIEDDATE);
--Q17
Create function dbo.addTwoNumbers(@NumberOne INT , @NumberTwo INT)
RETURNS INT
AS
BEGIN
RETURN @NUMBERONE+@NumberTwo
end;

SELECT dbo.addTwoNumbers(3,-2)

--Q18
CREATE FUNCTION dbo.fnTrim(@Expression VARCHAR (250))
RETURNS VARCHAR (250)
AS
BEGIN
RETURN LTRIM(RTRIM(@EXPRESSION))
END
u can write it as TRIM(@EXPRESSION)
SELECT dbo.fnTrim('  dsghkkl  ')


PART4