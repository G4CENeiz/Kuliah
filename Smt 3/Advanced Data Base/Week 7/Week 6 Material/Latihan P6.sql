-- PERTEMUAN 7 (TABLE EXPRESSION)

USE TSQL20;

CREATE VIEW v_pegawai 
AS
SELECT empid,firstname,lastname 
FROM HR.Employees;

SELECT * FROM v_pegawai;
DROP VIEW v_pegawai;
DROP VIEW  if exists v_pegawai;

SELECT
productid, productname, categoryid
FROM Production.Products WHERE categoryid = 4;

--------------------------------------------------------VIEW------------------------------------------------------------------------
CREATE VIEW prodCat4 AS
SELECT
productid, productname, categoryid
FROM Production.Products WHERE categoryid = 4;

--SELECT VIEW
SELECT * FROM prodCat4;

--UPDATE VIEW
ALTER VIEW prodCat4 AS
SELECT TOP(2)
productid, productname, categoryid,unitprice
FROM Production.Products WHERE categoryid = 4;

--DELETE view
Drop view  if exists prodCat4;
------------------------------------------------------------------------------------------------------------------------------


--------------------------------------SLIDE P4------------------------------------------------------------------------
CREATE VIEW HR.EmployeeList AS 
SELECT
--TOP 100 PERCENT 
empid, title, hiredate, address
FROM HR.Employees
ORDER BY empid ASC
--OFFSET 2 ROWS FETCH NEXT 2 ROWS ONLY;

SELECT * FROM HR.EmployeeList;
DROP VIEW if exists HR.EmployeeList;
------------------------------------------------------------------------------------------------------------


--------------------------------------membuat view (tanpa dengan order by)------------------------------------
CREATE VIEW prodCat3 AS
SELECT 
--TOP 100 PERCENT
productid, productname, categoryid
FROM Production.Products WHERE categoryid = 3
ORDER BY productid ASC
OFFSET 2 ROWS FETCH NEXT 2 ROWS ONLY;
FOR XML RAW ('Employee');


SELECT * FROM prodCat3;
Drop view  if exists prodCat3;

-- FOR XML
SELECT 
productid, productname, categoryid
FROM Production.Products WHERE categoryid = 3
ORDER BY productid ASC
FOR XML RAW ('prodCategory');
------------------------------------------------------------------------------------------


--------------------VIEW rata2 harga dan stok barang------------------------------------
CREATE VIEW pantauTransaksi 
as
SELECT COUNT (DISTINCT orderid) AS UniqueOrders, 
AVG(unitprice) AS Avg_UnitPrice, 
MIN(qty)AS Min_OrderQty, 
MAX(qty) AS Max_OrderQty
FROM Sales.OrderDetails;

SELECT * from pantauTransaksi;
------------------------------------------------------------------------

----------------------CONTOH JOBSHEET JS 4---------------------------------
CREATE VIEW Production.ProductsBeverages AS
SELECT
TOP(100) PERCENT
productid, productname, supplierid, unitprice, discontinued
FROM Production.Products
WHERE categoryid = 1
ORDER BY productname;

SELECT * FROM Production.ProductsBeverages;

DROP VIEW if exists Production.ProductsBeverages;
-------------------------------------------------------------------------------
-----------------------CONTOH JS 6-----------------------------------------
ALTER VIEW Production.ProductsBeverages AS
SELECT
productid, productname, supplierid, unitprice, discontinued,
CASE WHEN unitprice > 100.	THEN N'high' ELSE N'normal' END
FROM Production.Products
WHERE categoryid = 1;


/*Setelah	mengeksekusi	 T-SQL	di	 atas,	 apakah	 yang	terjadi?	 Tuliskan	pesan	error	 yang	
ada	dan	jelaskan	penyebab mengapa	error	tersebut	muncul!*/

/*
NOtifikasi eror : Create View or Function failed because no column name was specified for column 6.

eror karena kolom terakhir tidak punya nama kolom (CASE WHEN unitprice > 100.	THEN N'high' ELSE N'normal' END)
seharusnya ditambahkan AS alias untuk nama kolom ybs
*/

--7
ALTER VIEW Production.ProductsBeverages AS
	SELECT
	productid, productname, supplierid, unitprice, discontinued,
		CASE WHEN unitprice > 100. THEN N'high' ELSE N'normal' END AS pricetype
	FROM Production.Products
WHERE categoryid = 1;


------------------ FUNCTION - TABLE VALUED FUNCTION-------------------------------------
--BUAT FUNCTION (database-programmability-TVF)
CREATE FUNCTION namafungsi()
returns table       
as      
return
SELECT * FROM Production.Products;

drop function namafungsi;

Create function Fun_EmployeeInformation()      
returns table       
as      
return(select * from HR.Employees)  

--MENJALANKAN FUNCTION
SELECT * FROM Fun_EmployeeInformation();
SELECT empid, firstname, lastname FROM Fun_EmployeeInformation();

--DELETE FUNCTION
DROP FUNCTION Fun_EmployeeInformation;
--------------------------------------------------------------------------


----------------MEMBUAT TVF JUMLAH VARIAN BARANG PER ORDER----------------
SELECT * FROM Sales.OrderDetails;

    SELECT orderid,
    COUNT (*) AS jumlah_order
    FROM    Sales.OrderDetails
    WHERE   orderid = 10248 
	GROUP BY orderid;


CREATE FUNCTION Sales.jumlahOrder (@SalesOrderID INT)
RETURNS TABLE
AS
RETURN
    SELECT orderid,
    COUNT (*) AS jumlah_order
    FROM    Sales.OrderDetails
    WHERE   orderid = @SalesOrderID 
	GROUP BY orderid;

SELECT * FROM Sales.jumlahOrder (10248);
SELECT * FROM Sales.jumlahOrder (10249);

--------------------------------------------------------------------------------
CREATE FUNCTION dbo.fnGetSalesByCustomer
(@orderyear AS INT) RETURNS TABLE
AS
RETURN
SELECT
custid, SUM(val) AS totalsalesamount
FROM Sales.OrderValues
WHERE YEAR(orderdate) = @orderyear
GROUP BY custid;
SELECT * FROM dbo.fnGetSalesByCustomer(2007);
SELECT * FROM dbo.fnGetSalesByCustomer(2008);

----------------------------------Slide P 6-------------------------------------
CREATE FUNCTION Sales.fn_LineTotal (@SalesOrderID INT)
RETURNS TABLE
AS
RETURN
    SELECT orderid,
    CAST((qty * UnitPrice * (1 - discount))
    AS DECIMAL(8, 2)) AS LineTotal
    FROM    Sales.OrderDetails
    WHERE   orderid = @SalesOrderID ;

SELECT * FROM Sales.fn_LineTotal(10248);

--------------------------------------------------------------------------------
--18
SELECT TOP(3)
	d.productid,
	MAX(p.productname) AS productname,
	SUM(d.qty * d.unitprice) AS totalsalesamount
FROM Sales.Orders AS o
INNER JOIN Sales.OrderDetails AS d ON d.orderid = o.orderid
INNER JOIN Production.Products AS p ON p.productid = d.productid
WHERE custid = 1
GROUP BY d.productid
ORDER BY totalsalesamount DESC;
------------- TVF -----------------------------------------------------
--19
CREATE FUNCTION totalSales (@custid INT)
RETURNS TABLE
AS
RETURN
SELECT TOP(3)
	d.productid,
	MAX(p.productname) AS productname,
	SUM(d.qty * d.unitprice) AS totalsalesamount
FROM Sales.Orders AS o
INNER JOIN Sales.OrderDetails AS d ON d.orderid = o.orderid
INNER JOIN Production.Products AS p ON p.productid = d.productid
WHERE custid = @custid
GROUP BY d.productid
ORDER BY totalsalesamount DESC;

SELECT
productid,
productname,
totalsalesamount
FROM totalSales(1)

------------------DERIVED TABLE----------------------------------
---Contoh 1 menggabungkan 2 tabel------
SELECT * FROM HR.Employees;
SELECT * FROM Sales.Orders;

SELECT empid, firstname, birthdate, country
FROM HR.Employees;

SELECT orderid,empid, orderdate
FROM Sales.Orders;

---
SELECT e.empid, e.firstname, e.birthdate, s.orderid, s.orderdate
	FROM 
		(SELECT empid, firstname, birthdate, country
			FROM HR.Employees) e
	INNER JOIN 
		(SELECT orderid,empid, orderdate
		FROM Sales.Orders)s
	ON 
		e.empid=s.empid;

---kemudian menggunakan argumen dengan contoh diatas--
DECLARE @emp_id INT = 9
SELECT e.empid, e.firstname, e.birthdate, s.orderid, s.orderdate
	FROM 
		(SELECT empid, firstname, birthdate, country
			FROM HR.Employees) e
	INNER JOIN 
		(SELECT orderid,empid, orderdate
		FROM Sales.Orders)s
	ON e.empid=s.empid
	where e.empid=@emp_id;



-----------------SLIDE 9--------------------------------------
DECLARE @emp_id INT = 9;
SELECT orderyear, COUNT(DISTINCT custid) AS cust_count
FROM (	
	SELECT YEAR(orderdate) AS orderyear, custid
	FROM Sales.Orders
	WHERE empid=@emp_id
) AS derived_year
GROUP BY orderyear;

------------------------------- CTE ----------------------------
--slide 11
-------data customer pertahun
SELECT YEAR(OrderDate) AS OrderYear, custid
		FROM Sales.Orders;

SELECT YEAR(OrderDate) AS OrderYear, count (DISTINCT custid)
		FROM Sales.Orders
		group by YEAR(OrderDate);

--- jika pakai cte
WITH CTE_year AS
	(
		SELECT YEAR(OrderDate) AS OrderYear, custid
		FROM Sales.Orders
	)
SELECT orderyear, COUNT(DISTINCT custid) AS CustCount
FROM CTE_year
GROUP BY OrderYear;

------------------------------------ CONTOH CTE PAKAI TEMPORARY TABLE
DECLARE @Job TABLE (
  JobID int PRIMARY KEY,
  JobName varchar(20) NOT NULL,
  SubJobID int NULL);

INSERT INTO @Job VALUES
  (1, 'Keuangan', NULL),
  (2, 'HRD', NULL),
  (3, 'Administrasi', NULL),
  (4, 'Accounting', 1),
  (5, 'IT', 1),
  (6, 'Humas', 2),
  (7, 'EDP', 5),
  (8, 'Programmer', 5);

SELECT * FROM @Job;

WITH JobCTE
	AS
	(
	  SELECT * FROM @Job
	)
	SELECT mst.JobID, mst.JobName, sub.JobName AS SubJobName
	FROM JobCTE AS mst
	LEFT JOIN JobCTE 
	AS sub ON sub.JobID = mst.SubJobID
