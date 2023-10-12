SELECT
	c.contactname, c.contacttitle
FROM [Sales].[Customers] AS c

SELECT
	c.contactname AS Name, c.contacttitle AS Title, c.companyname AS [Company Name]
FROM [Sales].[Customers] AS c;