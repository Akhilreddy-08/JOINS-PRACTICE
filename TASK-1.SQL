CREATE DATABASE OnlineBookstore;
show databases;
use OnlineBookstore;
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);
DROP TABLE IF EXISTS customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);


SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT c.Name, b.Title, o.Quantity, o.Order_Date
FROM Customers c
INNER JOIN Orders o ON c.Customer_ID = o.Customer_ID
INNER JOIN Books b ON o.Book_ID = b.Book_ID;

SELECT c.Name, c.Email, o.Order_ID
FROM Customers c
LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID;

SELECT b.Title, b.Author, o.Order_ID
FROM Orders o
RIGHT JOIN Books b ON o.Book_ID = b.Book_ID;

SELECT c.Name, b.Title FROM Customers c LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID LEFT JOIN Books b ON o.Book_ID = b.Book_ID
UNION
SELECT c.Name, b.Title FROM Customers c RIGHT JOIN Orders o ON c.Customer_ID = o.Customer_ID RIGHT JOIN Books b ON o.Book_ID = b.Book_ID;

