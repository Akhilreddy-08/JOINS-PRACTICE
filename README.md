# JOINS-PRACTICE

*COMPANY *: CODTECH IT SOLUTIONS

*NAME *: KAKARLA.AKHILESWAR REDDY

*INTERN ID *: CTIS1339

$DOMAIN *: SQL

*DURATION *: 12 WEEEKS

*MENTOR *: NEELA SANTOSH

1. Project Overview
This project involves building a complete backend database for an Online Book Store using MySQL Workbench. The goal was to move beyond simple data entry and create a system that mimics a real-world e-commerce platform. I designed a relational schema to manage three critical areas of the business: the book inventory, customer profiles, and the transaction history that connects them.
2. Database Structure (Schema)
The project is built on three main tables that form the backbone of the store:Books Table: This is the heart of the inventory. It tracks the Book_ID, Title, Author, Genre, Published_Year, and Price. I also included a Stock column to ensure we can track how many copies are available for sale.Customers Table: This manages our user base. It stores the Customer_ID, Name, Email, and contact details, allowing the store to know exactly who is making a purchase.Orders Table: This serves as the "link" or bridge between books and customers. It records which customer bought which book, the quantity, and the date the order was placed.
3. Key Technical Implementations
During this internship, I applied several advanced SQL techniques to ensure the database was both powerful and secure:Joins for Meaningful Data I used INNER JOIN and LEFT JOIN to combine data across tables. For example, I wrote queries that don't just show a list of IDs, but instead pull the actual Customer Name and Book Title together to create a readable "Sales History" report.Advanced Analytics To help the business make better decisions, I implemented:Window Functions: I used the RANK() function to categorize books by price within their respective genres. This allows the shop owner to quickly see the "Top 5 most expensive Fantasy books" vs. "Top 5 Fiction books".CTEs (Common Table Expressions): I used CTEs to calculate the total lifetime spending for each customer. This makes it easy to identify VIP customers who have spent the most money at our store.Security and Maintenance Data Integrity: I used PRIMARY KEY and FOREIGN KEY constraints to ensure that no "garbage data" enters the system. For instance, the system won't allow an order to be placed for a Book_ID that doesn't exist in our inventory.Backup & Recovery: I documented a process for taking full database "snapshots" using mysqldump. This ensures that if the server ever fails, we can restore the entire bookstore's history in minutes.
4. Conclusion
Through this project, I’ve learned that SQL is much more than just storing data—it's about how that data relates and provides value to a business. This system provides a scalable, secure, and efficient foundation for any online retail environment
