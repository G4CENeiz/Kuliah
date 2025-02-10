-- Show all data inside all of the tables
SELECT * FROM Genres;
SELECT * FROM Books;
SELECT * FROM Users;
SELECT * FROM Loans;

-- Show Book name and author of unread books
SELECT Title, Author FROM Books
WHERE BookID NOT IN (SELECT BookID FROM Loans);

-- Show how many time a book of a certain genre have been borrowed
SELECT g.GenreName, COUNT(b.BookID) AS loan_amount
FROM Genres AS g
JOIN Books AS b ON b.GenreID = g.GenreID
JOIN Loans AS l ON b.BookID = l.BookID
GROUP BY g.GenreName;

-- Show loan amount per user
SELECT u.UserName, COUNT(l.LoanID) AS loan_amount
FROM Users AS u
JOIN Loans AS l ON l.UserID = u.UserID
GROUP BY u.UserName

-- Show frequently borrowed books
SELECT b.Title, COUNT(l.LoanID) AS loan_amount
FROM Books AS b
JOIN Loans AS l ON l.BookID = b.BookID
GROUP BY b.Title
ORDER BY loan_amount DESC

-- Show average length of borrowing
SELECT b.Title, AVG(DATEDIFF(DAY, l.LoanDate, l.ReturnDate)) AS AverageBorrowingLength
FROM Books AS b
JOIN Loans AS l ON l.BookID = b.BookID
GROUP BY b.Title;

-- Show user with more than average borrowing
SELECT u.UserID, u.UserName, COUNT(l.LoanID) AS LoanAmount
FROM Users AS u
LEFT JOIN Loans AS l ON u.UserID = l.UserID
GROUP BY u.UserID, u.UserName
HAVING COUNT(l.LoanID) > (
	SELECT AVG(LoanAmount) 
	FROM (
		SELECT u.UserID, COUNT(l.LoanID) AS LoanAmount 
		FROM Users AS u
		LEFT JOIN Loans AS l ON u.UserID = l.UserID 
		GROUP BY u.UserID
	) AS UserLoanAmounts
);

-- show history of a certain book
SELECT l.LoanID, b.Title, u.UserName, l.LoanDate, l.ReturnDate
FROM Loans AS l
JOIN Books AS b ON l.BookID = b.BookID
JOIN Users AS u ON l.UserID = u.UserID
WHERE b.BookID = 5;

-- show a book borrowed on  a specific date
SELECT l.LoanID, b.Title, u.UserName, l.LoanDate, l.ReturnDate
FROM Loans AS l
JOIN Books AS b ON l.BookID = b.BookID
JOIN Users AS u ON l.UserID = u.UserID
WHERE b.BookID = 5 AND CONVERT(DATE, l.LoanDate) = '2023-01-14';

-- longest borrowed book
SELECT b.BookID, b.Title, DATEDIFF(DAY, l.LoanDate, l.ReturnDate) AS BorrowingLength
FROM Books AS b
JOIN Loans AS l ON b.BookID = l.BookID
ORDER BY BorrowingLength DESC;

-- Monthly book borrowing in the last 1 year
SELECT * FROM (
    SELECT COUNT(l.LoanID) AS loan_amount, DATENAME(MONTH, l.LoanDate) AS Mon
    FROM Loans AS l
    WHERE YEAR(l.LoanDate) = 2023
    GROUP BY DATENAME(MONTH, l.LoanDate)
) AS MonthlySum
PIVOT (
    SUM(loan_amount)
    FOR Mon IN (January, February, March, April, May, June, July, August, September, October, November, December)
) AS MonthlyPivot