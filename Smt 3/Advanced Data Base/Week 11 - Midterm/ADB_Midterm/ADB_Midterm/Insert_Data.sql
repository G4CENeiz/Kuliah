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