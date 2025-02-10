USE [TSQL];
GO

SELECT	[custid],
		[companyname],
		[contactname],
		[contacttitle],
		[address],
		[city],
		[region],
		[postalcode],
		[country],
		[phone],
		[fax]
	FROM [sales].[Customers];
GO