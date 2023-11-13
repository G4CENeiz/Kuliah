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