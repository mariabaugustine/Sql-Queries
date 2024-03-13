CREATE Database BookStore;
GO
USE BookStore;
CREATE TABLE Books
(
id INT PRIMARY KEY ,
name VARCHAR(50) NOT NULL,
category VARCHAR(50) NOT NULL,
price INT NOT NULL
)
Go
INSERT INTO Books
    
VALUES
(1, 'Book1', 'Cat1', 1800),
(2, 'Book2', 'Cat2', 1500),
(3, 'Book3', 'Cat3', 2000),
(4, 'Book4', 'Cat4', 1300),
(5, 'Book5', 'Cat5', 1500)

SELECT * FROM Books
-- A database table has one clustered index by default on the primary key column
--To see the default index 
EXECUTE sp_helpindex Books
--we first need to remove the default clustered index created via the primary key constraint. 
--To remove the default clustered index, you simply have to remove the primary key
--constraint from the table that contains the default clustered index
ALTER TABLE Books
DROP CONSTRAINT PK__Books__3213E83FDD80E48E

go

CREATE CLUSTERED INDEX IX_tblBook_Price
ON Books(price ASC)

go

SELECT * FROM Books

go

CREATE NONCLUSTERED INDEX IX_tblBook_Name
ON Books(name ASC)


GO

SELECT * FROM Books



