/* Database and SQL Final Project
   Library Management System
   By: Anthony Glatt */


-- Create Database -------------------------------------------------------------------------------------------------------------
CREATE DATABASE Final_Project;  
USE Final_Project;


-- Create All Tables and Columns -----------------------------------------------------------------------------------------------
CREATE TABLE PUBLISHER (
	Name VARCHAR(50) PRIMARY KEY,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);


CREATE TABLE BOOK (
	BookId INT PRIMARY KEY IDENTITY,
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) FOREIGN KEY REFERENCES PUBLISHER(Name)
);


CREATE TABLE BOOK_AUTHOR (
	BookId INT FOREIGN KEY REFERENCES BOOK(BookId),
	AuthorName VARCHAR(50) NOT NULL
);


CREATE TABLE LIBRARY_BRANCH (
	BranchId INT PRIMARY KEY IDENTITY,
	BranchName VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL
);


CREATE TABLE BOOK_COPIES (
	BookId INT FOREIGN KEY REFERENCES BOOK(BookId),
	BranchId INT FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchId),
	No_Of_Copies INT NOT NULL
);


CREATE TABLE BOOK_LOANS (
	BookId INT FOREIGN KEY REFERENCES BOOK(BookId),
	BranchId INT FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchId),
	CardNo INT NOT NULL,
	DateOut DATE,
	DueDate DATE
);


CREATE TABLE BORROWER (
	CardNo INT PRIMARY KEY IDENTITY (1000, 1),
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);
-- End Create All Tables


-- Insert Values into Tables/Columns -------------------------------------------------------------------------------------------------
-- PUBLISHER
INSERT INTO PUBLISHER (Name, Address, Phone)
	VALUES 
		('Penguin', 'London', 'xxx-xxx-xxx1'),
		('Ace', 'New York', 'xxx-xxx-xxx2'),
		('Orbit Books', 'London', 'xxx-xxx-xxx3'),
		('TSR', 'Lake Geneva', 'xxx-xxx-xxx4'),
		('Simon & Schuster', 'New York', 'xxx-xxx-xxx5'),
		('Harper Collins', 'New York', 'xxx-xxx-xxx6'),
		('Allen & Unwin', 'Crows Nest', 'xxx-xxx-xxx7'),
		('Paolini', 'Los Angeles', 'xxx-xxx-xxx8'),
		('Voyager', 'New York', 'xxx-xxx-xxx9');

-- BOOK
INSERT INTO BOOK (Title, PublisherName)
	Values
		('Furies of Calderon','Ace'),
		('Academ''s Fury','Ace'),
		('Cursor''s Fury','Ace'),
		('Captain''s Fury','Ace'),
		('Princeps'' Fury','Ace'),
		('First Lord''s Fury','Ace'),
		('Storm Front','Penguin'),
		('Fool Moon','Penguin'),
		('Grave Peril','Penguin'),
		('Summer Knight','Penguin'),
		('Death Masks','Penguin'),
		('Blood Rites','Penguin'),
		('The Black Prism','Orbit Books'),
		('The Blinding Knife','Orbit Books'),
		('The Broken Eye','Orbit Books'),
		('The Blood Mirror','Orbit Books'),
		('Shadow''s Edge','Orbit Books'),
		('Beyond the Shadows','Orbit Books'),
		('Homeland','TSR'),
		('Exile','TSR'),
		('Sojourn','TSR'),
		('First King of Shannara','Simon & Schuster'),
		('The Sword of Shannara','Simon & Schuster'),
		('The Name of the Wind','Penguin'),
		('The Wise Man''s Fear','Penguin'),
		('The Green Mile','Simon & Schuster'),
		('It','Simon & Schuster'),
		('The Lost Tribe','Harper Collins'),
		('The Fellowship of the Ring','Allen & Unwin'),
		('The Two Towers','Allen & Unwin'),
		('The Return of the King','Allen & Unwin'),
		('Eragon','Paolini'),
		('Eldest','Paolini'),
		('Brisingr','Paolini'),
		('Inheritance','Paolini'),
		('The Warded Man','Voyager'),
		('The Desert Spear','Voyager'),
		('The Daylight War','Voyager'),
		('The Skull Throne','Voyager'),
		('The Core','Voyager');

--BOOK_AUTHOR
INSERT INTO BOOK_AUTHOR(BookId, AuthorName)
	VALUES
		(1, 'Jim Butcher'),
		(2, 'Jim Butcher'),
		(3, 'Jim Butcher'),
		(4, 'Jim Butcher'),
		(5, 'Jim Butcher'),
		(6, 'Jim Butcher'),
		(7, 'Jim Butcher'),
		(8, 'Jim Butcher'),
		(9, 'Jim Butcher'),
		(10, 'Jim Butcher'),
		(11, 'Jim Butcher'),
		(12, 'Jim Butcher'),
		(13, 'Brent Weeks'),
		(14, 'Brent Weeks'),
		(14, 'Brent Weeks'),
		(15, 'Brent Weeks'),
		(16, 'Brent Weeks'),
		(17, 'Brent Weeks'),
		(18, 'Brent Weeks'),
		(19, 'Salvatore'),
		(20, 'Salvatore'),
		(21, 'Salvatore'),
		(22, 'Terry Brooks'),
		(23, 'Terry Brooks'),
		(24, 'Patrick Rothfuss'),
		(25, 'Patrick Rothfuss'),
		(26, 'Stephen King'),
		(27, 'Stephen King'),
		(28, 'Mark Lee'),
		(29, 'Tolkien'),
		(30, 'Tolkien'),
		(31, 'Tolkien'),
		(32, 'Christopher Paolini'),
		(33, 'Christopher Paolini'),
		(34, 'Christopher Paolini'),
		(35, 'Christopher Paolini'),
		(36, 'Peter Brett'),
		(37, 'Peter Brett'),
		(38, 'Peter Brett'),
		(39, 'Peter Brett'),
		(40, 'Peter Brett');

-- LIBRARY BRANCH
INSERT INTO LIBRARY_BRANCH (BranchName, Address)
	Values
		('Central', '1400 2nd Ave., Portland, OR'),
		('Sharpstown', '4756 Douglas St., Portland, OR'),
		('Kenton', '9552 Denver St., Portland, OR'),
		('Pearl', '7588 N Lucy St., Portland, OR'),
		('Beaverton', '6399 W Birch Ln., Portland, OR');

-- BOOK_COPIES
INSERT INTO BOOK_COPIES (BookId, BranchId, No_Of_Copies)
	Values
		(1, 1, 3),
		(2, 1, 2),
		(3, 1, 2),
		(4, 1, 2),
		(5, 1, 2),
		(27, 1, 3),
		(30, 1, 2),
		(31, 1, 2),
		(36, 1, 4),
		(37, 1, 2),
		(38, 1, 4),
		(39, 1, 2),
		(40, 1, 3),
		(6, 2, 2),
		(7, 2, 3),
		(8, 2, 3),
		(9, 2, 2),
		(18, 2, 2),
		(19, 2, 5),
		(20, 2, 2),
		(21, 2, 2),
		(28, 2, 3),
		(34, 2, 2),
		(35, 2, 2),
		(9, 3, 3),
		(10, 3, 2),
		(11, 3, 2),
		(12, 3, 2),
		(13, 3, 2),
		(24, 3, 4),
		(25, 3, 4),
		(26, 3, 4),
		(35, 3, 2),
		(36, 3, 2),
		(4, 4, 2),
		(5, 4, 3),
		(14, 4, 2),
		(15, 4, 2),
		(16, 4, 5),
		(17, 4, 2),
		(22, 4, 2),
		(25, 4, 2),
		(26, 4, 3),
		(30, 4, 2),
		(31, 4, 4),
		(1, 5, 2),
		(3, 5, 3),
		(13, 5, 2),
		(14, 5, 4),
		(18, 5, 6),
		(23, 5, 2),
		(27, 5, 2),
		(29, 5, 2),
		(32, 5, 3),
		(40, 5, 2);


-- BORROWER
INSERT INTO BORROWER (Name, Address, Phone)
	VALUES
		('Tom Harking', '1970 Napa Ct.', '697-555-0142'),
		('Casey Tone', '1873 Lion Circle', '819-555-0175'),
		('Mary Howard', '3148 Rose Street', '212-555-0187'),
		('Roger Noke', '5747 Shirley Drive', '612-555-0100'),
		('Jessica Linn', '636 Vine Hill Way', '181-555-0156'),
		('Blake Valley', '6657 Sand Pointe Lane', '168-555-0183'),
		('Adam McNar', '2487 Riverside Drive', '970-555-0138'),
		('Stacy Manning', '9228 Via Del Sol', '913-555-0172'),
		('Becky Heart', '8291 Crossbow Way', '150-555-0189'),
		('Don Stugger', '3495 Brown Drive', '265-2536-3486');


-- BOOK LOANS
INSERT INTO BOOK_LOANS (BookId, BranchId, CardNo, DateOut, DueDate)
	VAlUES
		(1, 1, 1000, '2018-05-27', '2018-07-27'),
		(2, 1, 1000, '2018-05-27', '2018-07-27'), 
		(3, 1, 1000, '2018-05-27', '2018-07-27'), 
		(4, 1, 1000, '2018-05-27', '2018-07-27'), 
		(5, 1, 1000, '2018-05-27', '2018-07-27'), 
		(27, 1, 1000, '2018-05-27', '2018-07-27'), 
		(36, 1, 1000, '2018-05-27', '2018-07-27'), 
		(37, 1, 1000, '2018-05-27', '2018-07-27'), 
		(6, 2, 1001, '2018-06-04', '2018-08-04'), 
		(32, 5, 1001, '2018-06-11', '2018-08-11'), 
		(18, 2, 1002, '2018-05-29', '2018-07-29'), 
		(19, 2, 1002, '2018-05-29', '2018-07-29'), 
		(20, 2, 1002, '2018-05-29', '2018-07-29'), 
		(21, 2, 1002, '2018-05-29', '2018-07-29'), 
		(34, 2, 1002, '2018-05-29', '2018-07-29'), 
		(35, 2, 1002, '2018-05-29', '2018-07-29'), 
		(12, 3, 1003, '2018-06-13', '2018-08-13'),
		(13, 3, 1003, '2018-06-13', '2018-08-13'), 
		(25, 3, 1003, '2018-06-13', '2018-08-13'), 
		(26, 3, 1003, '2018-06-13', '2018-08-13'), 
		(23, 5, 1003, '2018-06-13', '2018-08-13'), 
		(4, 4, 1004, '2018-06-01', '2018-08-01'),  
		(14, 4, 1004, '2018-06-01', '2018-08-01'),  
		(15, 4, 1004, '2018-06-01', '2018-08-01'),  
		(16, 4, 1004, '2018-06-01', '2018-08-01'),  
		(17, 4, 1004, '2018-06-01', '2018-08-01'),  
		(18, 5, 1004, '2018-06-02', '2018-08-02'),  
		(23, 5, 1004, '2018-06-27', '2018-08-02'),  
		(27, 5, 1004, '2018-06-27', '2018-08-02'),  
		(7, 2, 1005, '2018-05-29', '2018-07-29'),  
		(8, 2, 1005, '2018-05-29', '2018-07-29'),
		(9, 2, 1005, '2018-05-29', '2018-07-29'),
		(5, 4, 1005, '2018-06-27', '2018-08-27'),
		(16, 4, 1005, '2018-06-27', '2018-08-27'),
		(31, 4, 1005, '2018-06-27', '2018-08-27'),
		(13, 5, 1006, '2018-05-23', '2018-07-23'),
		(14, 5, 1006, '2018-05-23', '2018-07-23'),
		(32, 5, 1006, '2018-05-23', '2018-07-23'),
		(40, 5, 1006, '2018-05-23', '2018-07-23'),
		(9, 3, 1007, '2018-06-17', '2018-08-17'),
		(10, 3, 1007, '2018-06-17', '2018-08-17'),
		(11, 3, 1007, '2018-06-17', '2018-08-17'),
		(35, 3, 1007, '2018-06-17', '2018-08-17'),
		(30, 4, 1007, '2018-06-17', '2018-08-17'),
		(36, 1, 1008, '2018-05-16', '2018-07-16'),
		(38, 1, 1008, '2018-05-16', '2018-07-16'),
		(19, 2, 1008, '2018-05-16', '2018-07-16'),
		(24, 3, 1008, '2018-07-18', '2018-09-18'),
		(25, 3, 1008, '2018-07-18', '2018-09-18'),
		(26, 3, 1008, '2018-07-18', '2018-09-18');
-- End of Inserting Values


-- Stored Procedures---------------------------------------------------------------------------------------------------------------

--Stored Procdure 1) How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
GO
CREATE PROCEDURE sp1_LostTribeAtSharpstown
AS
SELECT Title, LIBRARY_BRANCH.BranchName, No_Of_Copies from BOOK_COPIES 
INNER JOIN BOOK ON  BOOK_COPIES.BookId = BOOK.BookId
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.BranchId = LIBRARY_BRANCH.BranchId
WHERE Title = 'The Lost Tribe' AND LIBRARY_BRANCH.BranchName = 'Sharpstown';
Go


--Stored Procdure 2) How many copies of the book titled "The Lost Tribe" are owned by each library branch?
GO
CREATE PROCEDURE sp2_CopiesAtBranch
AS
SELECT Title, LIBRARY_BRANCH.BranchName, No_Of_Copies from BOOK_COPIES 
INNER JOIN BOOK ON  BOOK_COPIES.BookId =BOOK.BookId
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.BranchId = LIBRARY_BRANCH.BranchId
where Title = 'The Lost Tribe';
GO


-- Stored Procedure 3)  Retrieve the names of all borrowers who do not have any books checked out.
GO
CREATE PROCEDURE sp3_BorrowersNoBooks
AS
SELECT BORROWER.Name FROM BORROWER
WHERE BORROWER.CardNo NOT IN(SELECT BOOK_LOANS.CardNo FROM BOOK_LOANS);
GO


-- Stored Procedure 4) For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address.
GO
CREATE PROCEDURE sp4_SharpstownDueToday @TodayDate NVARCHAR(30)
AS
SELECT Title, BORROWER.Name, BORROWER.Address FROM BORROWER
INNER JOIN BOOK_LOANS ON BORROWER.CardNo = BOOK_LOANS.CardNo
INNER JOIN BOOK ON BOOK_LOANS.BookId = BOOK.BookId
WHERE BranchId = 2 And DueDate = @TodayDate;
GO


-- Stored Procedure 5) For each library branch, retrieve the branch name and the total number of books loaned out from that branch.
GO 
CREATE PROCEDURE sp5_BranchLoans
AS
SELECT BranchName, COUNT(BookId) AS Number_Of_Loans FROM LIBRARY_BRANCH
INNER JOIN BOOK_LOANS ON LIBRARY_BRANCH.BranchId = BOOK_LOANS.BranchId
GROUP BY BranchName;
GO


-- Stored Procedure 6) Retrieve the names, addresses, and the number of books checked out for all borrowers who have more than five books checked out.
GO 
CREATE PROCEDURE sp6_BorrowersWith6Plus
AS
SELECT BORROWER.Name, COUNT(BOOK_LOANS.BookId) AS Books_Out, BORROWER.Address FROM BORROWER
INNER JOIN BOOK_LOANS ON BORROWER.CardNo = BOOK_LOANS.CardNo
GROUP BY BORROWER.Name, BORROWER.Address
HAVING COUNT(BOOK_LOANS.BookId) > 5;
GO


-- Stored Procedure 7) For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central".
GO
CREATE PROCEDURE sp7_KingBooksAtCentral
AS
SELECT Title, No_Of_Copies, BranchName FROM BOOK
INNER JOIN BOOK_COPIES ON BOOK.BookId = BOOK_COPIES.BookId
INNER JOIN BOOK_AUTHOR ON BOOK.BookId = BOOK_AUTHOR.BookId
INNER JOIN LIBRARY_BRANCH ON  BOOK_COPIES.BranchId = LIBRARY_BRANCH.BranchId
WHERE AuthorName = 'Stephen King' AND LIBRARY_BRANCH.BranchName = 'Central';
GO