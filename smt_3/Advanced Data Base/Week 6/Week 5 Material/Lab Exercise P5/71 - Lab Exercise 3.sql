---------------------------------------------------------------------
-- LAB 07
--
-- Exercise 3
---------------------------------------------------------------------

USE TSQL2012;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_07_PRJ\10774A_07_PRJ.ssmssln and the T-SQL script 71 - Lab Exercise 3.sql. Ensure that you are connected to the TSQL2012 database.
--
-- Write a SELECT statement against the Sales.Customers table and retrieve the contactname and city columns. Concatenate both columns so that the new column looks like this:
--   Allen, Michael (city: Berlin)
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 72 - Lab Exercise 3 - Task 1 Result.txt. 
---------------------------------------------------------------------


---------------------------------------------------------------------
-- Task 2
-- 
-- Copy the T-SQL statement in task 1 and modify it to extend the calculated column with new information from the region column. Treat a NULL in the region column as an empty string for concatenation purposes. When the region is NULL, the modified column should look like this:
--  Allen, Michael (city: Berlin, region: )
--
-- When the region is not NULL, the modified column should look like this
--  Richardson, Shawn (city: Sao Paulo, region: SP)
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 73 - Lab Exercise 3 - Task 2 Result.txt.
---------------------------------------------------------------------


---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement to retrieve the contactname and contacttitle columns from the Sales.Customers table. Return only rows where the first character in the contact name is ‘A’ through ‘G’.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 74 - Lab Exercise 3 - Task 3 Result.txt. Notice the number of rows returned.
---------------------------------------------------------------------

