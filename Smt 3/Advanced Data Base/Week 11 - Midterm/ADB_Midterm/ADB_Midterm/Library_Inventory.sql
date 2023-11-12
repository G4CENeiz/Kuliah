-- Create Database
CREATE DATABASE midterm;
GO

USE midterm;
GO

-- Create tables in case study
CREATE TABLE Genres (
	GenreID		INT				NOT NULL	PRIMARY KEY,
	GenreName	VARCHAR(100)	NOT NULL
);

CREATE TABLE Books (
	BookID			INT				NOT NULL	PRIMARY KEY,
	Title			VARCHAR(255)	NOT NULL,
	Author			VARCHAR(100)	NOT NULL,
	GenreID			INT				NOT NUll,
	PublicationYear	INT				NOT NULL,
	CONSTRAINT FK_GenreID FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

CREATE TABLE Users (
	UserID			INT				NOT NULL	PRIMARY KEY,
	UserName		VARCHAR(100)	NOT NULl,
	MembershipType	VARCHAR(25)		NOT NULL	
	CHECK (MembershipType IN ('platinum', 'gold', 'silver'))
);

CREATE TABLE Loans (
	LoanID		INT			NOT NULL	PRIMARY KEY,
	BookID		INT			NOT NULL,
	UserID		INT			NOT NULL,
	LoanDate	DATETIME	NOT NULL,
	ReturnDate	DATETIME	NOT NULL,
	CONSTRAINT FK_BookID FOREIGN KEY (BookID) REFERENCES Books(BookID),
	CONSTRAINT FK_UserID FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Insert data into the tables
/*	10 data each for tables Genres and Books
 *	5 data in the Users table
 *	25 data in the Loans table
 */

INSERT INTO Genres VALUES
(1, 'Drama'),
(2, 'Action'),
(3, 'Comedy'),
(4, 'Sci-Fi'),
(5, 'Fantasy'),
(6, 'Romance'),
(7, 'Cookbook'),
(8, 'Childrens Literature'),
(9, 'Philosophy'),
(10, 'Self-Help');

INSERT INTO Books VALUES
(1, 'My Mom Is My Cousin From Alabama', 'Jesse Earl Montgomery', 1, 2016),
(2, 'How To Not Overspent', 'Jared Bankman', 10, 2021),
(3, 'Roy and Marty: The Seeds of Life', 'Greg Harmon', 4, 2019),
(4, 'Need For Fuel', 'Earl Armisen', 2, 2013),
(5, 'Outside', 'Ben Frozeham', 3, 2020),
(6, 'My ABCs', 'Saltfork Utensils', 8, 2022),
(7, 'Small and Big', 'Cise Matter', 9, 2015),
(8, 'Beans and Toast', 'Gideon Ramly', 7, 2017),
(9, 'Letter in My Locker', 'Roomie Saddler', 6, 2014),
(10, 'Big Dragon In Nut Kingdom', 'Bofa Deez', 5, 2018);

INSERT INTO Users VALUES
(1, 'Baihaqi', 'platinum'),
(2, 'Elmira', 'gold'),
(3, 'Dave', 'silver'),
(4, 'Mike', 'gold'),
(5, 'Eli', 'platinum');

INSERT INTO Loans VALUES
-- loanID, bookID, userID, loanDate, returnDate
(1, 2, 1, '2023-01-10 12:00:00.000', '2023-01-15 12:00:00.000'),
(2, 10, 5, '2023-01-12 12:00:00.000', '2023-01-16 12:00:00.000'),
(3, 5, 2, '2023-01-14 12:00:00.000', '2023-01-19 12:00:00.000'),
(4, 3, 3, '2023-01-13 12:00:00.000', '2023-01-16 12:00:00.000'),
(5, 5, 5, '2023-01-11 12:00:00.000', '2023-01-17 12:00:00.000'),
(6, 4, 4, '2023-01-15 12:00:00.000', '2023-01-18 12:00:00.000'),
(7, 8, 3, '2023-01-13 12:00:00.000', '2023-01-17 12:00:00.000'),
(8, 6, 1, '2023-01-12 12:00:00.000', '2023-01-16 12:00:00.000'),
(9, 1, 3, '2023-01-10 12:00:00.000', '2023-01-15 12:00:00.000'),
(10, 9, 2, '2023-01-11 12:00:00.000', '2023-01-16 12:00:00.000'),
(11, 1, 1, '2023-02-10 12:00:00.000', '2023-02-15 12:00:00.000'),
(12, 2, 5, '2023-02-12 12:00:00.000', '2023-02-16 12:00:00.000'),
(13, 4, 2, '2023-02-14 12:00:00.000', '2023-02-19 12:00:00.000'),
(14, 3, 3, '2023-02-13 12:00:00.000', '2023-02-16 12:00:00.000'),
(15, 6, 5, '2023-02-11 12:00:00.000', '2023-02-16 12:00:00.000'),
(16, 5, 4, '2023-02-15 12:00:00.000', '2023-02-18 12:00:00.000'),
(17, 8, 3, '2023-02-13 12:00:00.000', '2023-02-17 12:00:00.000'),
(18, 9, 1, '2023-02-12 12:00:00.000', '2023-02-16 12:00:00.000'),
(19, 5, 3, '2023-02-10 12:00:00.000', '2023-02-15 12:00:00.000'),
(20, 10, 2, '2023-02-11 12:00:00.000', '2023-02-16 12:00:00.000'),
(21, 2, 5, '2023-03-15 12:00:00.000', '2023-03-18 12:00:00.000'),
(22, 4, 2, '2023-03-13 12:00:00.000', '2023-03-17 12:00:00.000'),
(23, 5, 1, '2023-03-12 12:00:00.000', '2023-03-16 12:00:00.000'),
(24, 9, 5, '2023-03-10 12:00:00.000', '2023-03-15 12:00:00.000'),
(25, 8, 1, '2023-03-11 12:00:00.000', '2023-03-16 12:00:00.000');

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