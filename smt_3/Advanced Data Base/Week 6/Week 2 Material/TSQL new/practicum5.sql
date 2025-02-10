USE [TSQL];
GO

-- step 2
SELECT
[custid], [companyname], [contactname], [address], [city], [country], [phone]
FROM Sales.[Customers]
WHERE
[country] = N'Brazil';

-- step 3
SELECT
[custid], [companyname], [contactname], [address], [city], [country], [phone]
FROM Sales.[Customers]
WHERE
[country] = N'Brazil' OR
[country] = N'UK' OR
[country] = N'USA';

-- step 4
SELECT
c.custid, c.companyname, o.orderid
FROM Sales.Customers AS c
LEFT OUTER JOIN Sales.Orders AS o ON c.custid = o.custid AND c.city = 'Paris';

-- step 5
SELECT
c.custid, c.companyname, o.orderid
FROM Sales.Customers AS c
LEFT OUTER JOIN Sales.Orders AS o ON c.custid = o.custid OR c.city = 'Paris';
