-- step 1
SELECT
	p.categoryid, p.productname
FROM [Production].[Products] AS p;

-- step 3
SELECT
	p.categoryid, p.productname,
	CASE
			WHEN p.categoryid = 1 THEN 'Beverages'
			WHEN p.categoryid = 2 THEN 'Condiments'
			WHEN p.categoryid = 3 THEN 'Confections'
			WHEN p.categoryid = 4 THEN 'Dairy Products'
			WHEN p.categoryid = 5 THEN 'Grains/Cereals'
			WHEN p.categoryid = 6 THEN 'Meat/Poultry'
			WHEN p.categoryid = 7 THEN 'Produce'
			WHEN p.categoryid = 8 THEN 'Seafood'
			ELSE 'Other'
	END AS categoryname
FROM [Production].[Products] AS p;

-- step 6
SELECT
	p.categoryid, p.productname,
	CASE
			WHEN p.categoryid = 1 THEN 'Beverages'
			WHEN p.categoryid = 2 THEN 'Condiments'
			WHEN p.categoryid = 3 THEN 'Confections'
			WHEN p.categoryid = 4 THEN 'Dairy Products'
			WHEN p.categoryid = 5 THEN 'Grains/Cereals'
			WHEN p.categoryid = 6 THEN 'Meat/Poultry'
			WHEN p.categoryid = 7 THEN 'Produce'
			WHEN p.categoryid = 8 THEN 'Seafood'
			ELSE 'Other'
	END AS categoryname,
	CASE
			WHEN p.categoryid IN (1, 7, 8) THEN 'Champaign Products'
			ELSE 'Non-Champaign Products'
	END AS iscampaign
FROM [Production].[Products] AS p;

-- step 8
SELECT
	p.categoryid AS ID_KATEGORI , p.productname AS NAMA_PRODUK,
	CASE
			WHEN p.categoryid = 1 THEN 'Beverages'
			WHEN p.categoryid = 2 THEN 'Condiments'
			WHEN p.categoryid = 3 THEN 'Confections'
			WHEN p.categoryid = 4 THEN 'Dairy Products'
			WHEN p.categoryid = 5 THEN 'Grains/Cereals'
			WHEN p.categoryid = 6 THEN 'Meat/Poultry'
			WHEN p.categoryid = 7 THEN 'Produce'
			WHEN p.categoryid = 8 THEN 'Seafood'
			ELSE 'Other'
	END AS NAMA_KATEGORI,
	CASE
			WHEN p.categoryid IN (1, 7, 8) THEN 'Champaign Products'
			ELSE 'Non-Champaign Products'
	END AS [STATUS]
FROM [Production].[Products] AS p
WHERE p.categoryid = 8;

-- step 9
SELECT
	h.firstname AS FIRST_NAME,
	h.lastname AS LAST_NAME,
	h.city AS CITY,
	h.country AS COUNTRY
FROM [HR].[Employees] AS h
WHERE h.city = 'Seattle' AND h.country = 'USA';