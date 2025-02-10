use TSQL20;
--1
/*Tulislah	 sebuah	 query	 SELECT	 untuk	 menampilkan kolom	 
productid,	 productname, supplierid,	unitprice dan	kolom	discontinued 

dari	tabel	Productions.Product Kemudian	 filter	 hasilnya	 agar	 hanya	 menampilkan	 produk	 yang	
ada	 di dalam kategori	 Beverages	saja	(categoryid	=	1)*/

SELECT
productid, productname, supplierid, unitprice, discontinued
FROM Production.Products
WHERE categoryid = 1;

--2
/*
Modifikasilah	kode	T-SQL	dari	no	2	di	atas	dengan	menambahkan	kode	T-SQL	berikut	
(letakkan	sebelum	query	SELECT)
*/
CREATE VIEW Production.ProductsBeverages AS
SELECT
productid, productname, supplierid, unitprice, discontinued
FROM Production.Products
WHERE categoryid = 1;

--3
/*
Buatlah sebuah	query	SELECT	yang	terdiri	dari kolom	productid dan	productname dari	
VIEW Production.ProductsBeverages.	Lalu	filterlah	hasilnya	agar	hanya	menampilkan	produk	
dengan	supplierid	=	1
*/
SELECT
productid, productname
FROM Production.ProductsBeverages
WHERE supplierid = 1;


--4

ALTER VIEW Production.ProductsBeverages AS
SELECT
productid, productname, supplierid, unitprice, discontinued
FROM Production.Products
WHERE categoryid = 1
ORDER BY productname;
/*ya muncul*/

/*notifikasi eror 
The ORDER BY clause is invalid in views, inline functions, derived tables, subqueries, and common table expressions, 
unless TOP, OFFSET or FOR XML is also specified.

gagal karena view merepresentasikan relasi dan relasi tidak ada order.
Kita bisa menggunakan order by di view jika di spesifikasikan dengan TOP, OFFSET or FOR XML.*/

ALTER VIEW Production.ProductsBeverages AS
SELECT TOP(100) PERCENT
productid, productname, supplierid, unitprice, discontinued
FROM Production.Products
WHERE categoryid = 1
ORDER BY productname;



--5
/* Jika sebuah	query	dijalankan	terhadap	VIEW	Production.ProductsBeverages yang	telah	
dimodifikasi,	 apakah	 baris yang	 dihasilkan	 dari	 VIEW	 tersebut akan	 selalu urut berdasarkan	
productname?	Jelaskan!*/

/*jika di ekspresi view sql tidak diterapkan order by productname maka data tidak akan terurut berdasarkan kualifikasi yang diminta
kecuali jika di sql select view sudah diterapkan order by maka data akan tampil terurut sesuai kriteria*/


--6
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

--8
/* Dengan	 menggunakan	 database	 TSQL2012,	 buatlah	 sebuah	 query	 SELECT	 terhadap	
derived	table (tabel	turunan)	yang	berisi	kolom	productid dan	productname,	
dengan	filter	hanya	 menampilkan	data	yang	'pricetype'-nya	adalah	'high'.	
Gunakan	query	SELECT yang	ada	pada	Praktikum	- Bagian 4 – Langkah	1 sebagai	derived	tablenya.	
Beri	nama	alias	p terhadap	derived	table tersebut.*/
SELECT
p.productid, p.productname
FROM
(
	SELECT
	productid, productname, supplierid, unitprice, discontinued,
	CASE WHEN unitprice > 100. THEN N'high' ELSE N'normal' END AS pricetype
	FROM Production.Products
	WHERE categoryid = 1
) AS p
WHERE p.pricetype = N'high';



--9
/* Buatlah	sebuah	query	SELECT	untuk	mendapatkan	kolom	custid dan	2	(dua)	kolom	
kalkulasi,	yakni	totalsalesamount (total	jumlah	nominal	order	per	customer)	dan	
avgsalesamount (rata-rata	jumlah	nominal	order	per customer).	
Untuk	mengetahui	rata-rata	nominal	order	per customer,	harus	dicari	dahulu	jumlah	total	
nominal	per	order.	Caranya	adalah	dengan	membuat	sebuah	derived	table yang	berisi	query	
JOIN antara	tabel	Sales.Orders dan	Sales.OrderDetails.	Setelah	itu,	Anda	bisa	gunakan	kolom	
custid dan	orderid dari	tabel	Sales.Orders,	serta	kolom	qty dan	unitprice dari	tabel	
Sales.OrderDetails.*/
SELECT
c.custid,
SUM(c.totalsalesamountperorder) AS totalsalesamount,
AVG(c.totalsalesamountperorder) AS avgsalesamount
FROM
(
SELECT
	o.custid, o.orderid, SUM(d.unitprice * d.qty) AS totalsalesamountperorder
	FROM Sales.Orders AS o
	INNER JOIN Sales.OrderDetails d ON d.orderid = o.orderid
	GROUP BY o.custid, o.orderid
) AS c
GROUP BY c.custid;


--10
/*Tulislah	sebuah	query	SELECT	yang	berisi	kolom-kolom	berikut	ini:
- orderyear:	tahun	dari	tanggal	order
- curtotalsales:	total	jumlah	penjualan	pada	tahun	tersebut
- prevtotalsales:	total	jumlah	penjualan	pada	tahun	sebelumnya
- percentgrowth:	prosentase	perkembangan	penjualan	dari	tahun	yang	sedang	
berjalan dibanding	tahun	sebelumnya*/
SELECT
cy.orderyear,
	cy.totalsalesamount AS curtotalsales,
		py.totalsalesamount AS prevtotalsales,
			(cy.totalsalesamount - py.totalsalesamount) / py.totalsalesamount * 100. AS
			percentgrowth
FROM
(
	SELECT
	YEAR(orderdate) AS orderyear, SUM(val) AS totalsalesamount
	FROM Sales.OrderValues
	GROUP BY YEAR(orderdate)
) AS cy
LEFT OUTER JOIN
(
	SELECT
	YEAR(orderdate) AS orderyear, SUM(val) AS totalsalesamount
	FROM Sales.OrderValues
	GROUP BY YEAR(orderdate)
) AS py ON cy.orderyear = py.orderyear + 1
ORDER BY cy.orderyear;

--11
/* Dengan	tetap	menggunakan	database	TSQL2012,	buatlah	query	SELECT	seperti	di	
Praktikum	- Bagian 6,	akan	tetapi	dengan	menggunakan	Common	Table	Expressions	(CTE).	Beri	
nama	alias	query	CTE	tersebut	sebagai	ProductBeverag*/
WITH ProductsBeverages AS
	(
		SELECT
		productid, productname, supplierid, unitprice, discontinued,
			CASE WHEN unitprice > 100. THEN N'high' ELSE N'normal' END AS pricetype
		FROM Production.Products
		WHERE categoryid = 1
	)
SELECT
		productid, productname
FROM ProductsBeverages
WHERE pricetype = N'high';

--12
/* Buatlah	sebuah	query	SELECT	terhadap	view	Sales.OrderValues untuk	mendapatkan	
ID	customer	dan	total	jumlah	penjualan	pada	tahun	2008.	Beri	nama	CTE	ini	sebagai	c2008,	
yang	terdiri	dari	kolom	custid dan	salesamt2008.
Kemudian,	lakukan	operasi	JOIN antara	table	Sales.Customers dan	CTE	c2008,	sehingga
menghasilkan	kolom	custid dan	contactname dari	table	Sales.Customer dan	kolom	
salesamt2008 dari	CTE	c2008.*/
WITH c2008 (custid, salesamt2008) AS
(
	SELECT
	custid, SUM(val)
	FROM Sales.OrderValues
	WHERE YEAR(orderdate) = 2008
	GROUP BY custid
)
SELECT
		c.custid, c.contactname, c2008.salesamt2008
FROM Sales.Customers AS c
LEFT OUTER JOIN c2008 ON c.custid = c2008.custid;

--13
/*Buatlah	sebuah	query	SELECT	yang	berisi	kolom	custid dan	contactname terhadap	
table	Sales.Customers.	Selain	itu,	dapatkan	juga	nilai	untuk	beberapa	kolom	berikut:
- salesamt2008:	total	jumlah	penjualan	tahun	2008
- salesamt2007:	total	jumlah	penjualan	tahun	2007
- percentgrowth:	prosentase	perkembangan	penjualan	antara	tahun	2007	dan	2008
Apabila	percentgrowth menghasilkan	NULL,	tampilkan	sebagai	0.*/
WITH c2008 (custid, salesamt2008) AS
(
	SELECT
	custid, SUM(val)
	FROM Sales.OrderValues
	WHERE YEAR(orderdate) = 2008
	GROUP BY custid
),
c2007 (custid, salesamt2007) AS
(
	SELECT
	custid, SUM(val)
	FROM Sales.OrderValues
	WHERE YEAR(orderdate) = 2007
	GROUP BY custid
)
SELECT
		c.custid, c.contactname,
		c2008.salesamt2008,
		c2007.salesamt2007,
		COALESCE((c2008.salesamt2008 - c2007.salesamt2007) / c2007.salesamt2007 * 100., 0)
AS percentgrowth
FROM Sales.Customers AS c
LEFT OUTER JOIN c2008 ON c.custid = c2008.custid
LEFT OUTER JOIN c2007 ON c.custid = c2007.custid
ORDER BY percentgrowth DESC;


--14
/*
 Dengan	menggunakan	database	TSQL2012,	buatlah	query	SELECT	terhadap	view	
Sales.OrderValues yang	berisi	kolom	custid dan	kolom	totalsalesamount (total	dari	kolom	val).	
Filter hasilnya	agar	hanya	menampilkan	order pada	tahun	2017	saja.
*/
SELECT
      custid, SUM(val) AS totalsalesamount
FROM Sales.OrderValues
WHERE YEAR(orderdate) = 2007
GROUP BY custid;

--15
/*
Buatlah	sebuah	inline	TVF/	Table-Valued	Function	dengan	menambahkan	baris	
berikut	ini	dan	diletakkan	sebelum	query SELECT pada	Langkah	1 di	atas
*/
CREATE FUNCTION dbo.fnGetSalesByCustomer
(@orderyear AS INT) RETURNS TABLE
AS
RETURN

--16
/*
Modifikasilah	query	tersebut	dengan	mengganti	nilai	konstanta	tahun	2007	pada	
klausa	WHERE,	dengan	parameter	@orderyear.
*/
CREATE FUNCTION dbo.fnGetSalesByCustomer
(@orderyear AS INT) RETURNS TABLE
AS
RETURN
SELECT
	custid, SUM(val) AS totalsalesamount
FROM Sales.OrderValues
WHERE YEAR(orderdate) = @orderyear
GROUP BY custid;


--17
/*
Buatlah	sebuah	query	SELECT	yang	berisi	kolom	custid dan	totalsalesamount
terhadap	inline	TVF	dbo.fnGetSalesByCustomer.	Masukkan nilai	2007	sebagai	parameternya.
*/
SELECT
     custid, totalsalesamount
FROM dbo.fnGetSalesByCustomer(2007);

--18
/*
Buatlah	query	SELECT	yang	menampilkan	3	produk	terlaris	untuk	customer	dengan	ID	
=	1.	Dapatkan	kolom	productid dan	productname dari	tabel	Production.Products.	Gunakan	
kolom	qty dan	unitprice dari	tabel	Sales.OrderDetails untuk	menghitung	nominal	setiap	baris	
order,	yang	kemudian	nominal	tersebut	dijumlahkan	untuk	setiap	produk	sehingga	
menghasilkan	kolom	totalsalesamount.	
Filter hasil	tersebut	agar	hanya	menampilkan	data	dengan	nilai	custid	=	1.
*/
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

--19
/*
Dengan	menggunakan	query	SELECT	pada	langkah	1	di	atas,	buatlah	sebuah	inline	
TVF	dengan	menambahkan	beberapa	baris fungsi	sebelum	query	SELECT	dan	set	nilai	
konstanta	custid dalam	query	dengan	parameter	@custid,	seperti	berikut	ini:
*/
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


--20
/*Lakukan	ujicoba	dengan	membuat	sebuah	query	SELECT	pada	inline	TVF	tersebut	dan	
masukkan nilai	 1	 sebagai	 parameter	 customer	 ID-nya.	 Tampilkan	 kolom	 productid,	
productname,	totalsalesamount,	serta	beri	nama	alias	p untuk	inline	TVF-nya*/
CREATE FUNCTION dbo.fnGetTop3ProductsForCustomer
(@custid AS INT) RETURNS TABLE
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
p.productid,
p.productname,
p.totalsalesamount
FROM dbo.fnGetTop3ProductsForCustomer(1) AS p;

