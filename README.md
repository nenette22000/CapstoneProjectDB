# CapstoneProjectDB


As part of the Coursera Meta Database Engineering Professional Certificate program, I recently completed the capstone project, which focused on creating a comprehensive booking system for the Little Lemon Company, a renowned restaurant chain. This project allowed me to apply the knowledge and skills acquired throughout the course, including data modeling, database design, query optimization, data visualization, and Python integration.
Project Overview
The primary objective of this capstone project was to develop a robust relational database in MySQL capable of storing and managing large amounts of data efficiently. The system would maintain information pertaining to various aspects of the business, including bookings, orders, delivery statuses, menus, customer details, and staff information.
The project was divided into several distinct tasks, each focusing on a specific aspect of the database development process:
1. Data Modeling
2. Adding Sales Report
3. Creating Optimized Queries
4. Setting up Tableau Workspace for Data Analysis
5. Python Client
6. 
Data Modeling
The data modeling phase was crucial in ensuring the database structure accurately represented the data requirements of Little Lemon. It involved the following steps:
Task 1: Creating an ER Diagram
In this task, I created a normalized Entity-Relationship (ER) diagram adhering to the 1st, 2nd, and 3rd Normal Forms (1NF, 2NF, and 3NF) using MySQL Workbench Model Editor. The diagram accurately represented the entities, attributes, primary keys, foreign keys, data types, and constraints.

diagram here



Task 2: Creating Database Schema
Using the forward engineering feature in MySQL Workbench, I generated the SQL schema for the Little Lemon Database based on the ER diagram.





Task 3: Populating with Data
To ensure the database was populated with relevant information for testing and analysis purposes, I executed SQL queries to insert data into the newly created tables.


insert queries


Adding Sales Report
This phase focused on creating views, implementing joins, and utilizing special operators to extract meaningful information from the database.
Task 1: Views
I created a virtual table named OrdersView that focused on the OrderID, Quantity, and `TotalCost` columns from the `Orders` table for all orders with a quantity greater than 2.


OrderView query


Task 2: Joins
This task involved extracting information from multiple tables using the appropriate JOIN clauses. Specifically, it retrieved customer details and order information for all customers with orders costing more than $50.


select query


Task 3: Special Operator (ANY)
The final task in this section involved finding all menu items for which more than two orders had been placed. This was achieved by creating a subquery that listed the menu names from the `Menu` table for any order quantity with a sum greater than 2.


select item query


Creating Optimized Queries
Little Lemon needed to query the data in their database efficiently. To achieve this, I created optimized queries using stored procedures and prepared statements.
Task 1: Stored Procedures
A stored procedure named `GetMaxQuantity()` was created to display the maximum ordered quantity in the `Orders` table. This procedure allows Little Lemon to reuse the logic without retyping the same code repeatedly.


getmaxquantity query


Task 2: Prepared Statements
A prepared statement called `GetOrderDetail` was implemented to reduce query parsing time and enhance database security against SQL injections.

PREPARE GetOrderDetail FROM
 'SELECT OrderID, Quantity, TotalCost
 FROM Orders
 WHERE CustomerID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;

Task 3: Stored Procedure for Order Cancellation
A stored procedure named `CancelOrder` was developed to delete an order record based on the provided order ID through user input.


cancelorder query


Setting up Tableau Workspace for Data Analysis
Little Lemon needed to analyze their sales data visually. To achieve this, I set up a Tableau workspace and created various data visualizations.

Task 1: Data Preparation
Connected to Little Lemon’s data stored in an Excel sheet file.
Filtered data in the data source page to select “United States” as the country.
Created two new data fields, “First Name” and “Last Name,” by extracting values from the “Full Name” field.
Calculated a new data field to store the profits for each sale or order.


Task 2: Data Visualization
Created a bar chart titled “Customers Sales” to display customers’ sales, filtered for sales with at least $70.

Developed a line chart named “Profit Chart” to show the sales trend from 2019 to 2022.


Generated a bubble chart titled “Sales Bubble Chart” to visualize sales for all customers.


Compared the sales of three different cuisines (Turkish, Italian, and Greek) sold at Little Lemon using a bar chart for the years 2020, 2021, and 2022.


Created an interactive dashboard combining the “Customer Sales” bar chart and the “Sales Bubble Chart” for comprehensive data analysis.


Python Client
A Python client was developed to interact with the MySQL database, allowing Little Lemon to query and manage their data programmatically.
Task 1: Establishing a Connection
Installed the necessary Python libraries, including `mysql-connector`.
Established a connection between Python and the MySQL database using the `connector` API.
Created a cursor object to communicate with the entire MySQL database.
Set the `LittleLemonDB` database for use.


Task 2: Querying the Database
A query was executed to display all tables within the `LittleLemonDB` database.


Task 3: Query with Table JOIN
In this task, a specific query was implemented to retrieve the full name, contact details, and order information for every customer who placed an order greater than $60. This information will be used for a promotional campaign by Little Lemon.



Conclusion
This capstone project successfully delivered a comprehensive booking system for Little Lemon Company, complete with a robust relational database, optimized queries, data analysis capabilities, and a Python client for seamless data management. The system is designed to streamline operations, enhance customer experience, and enable data-driven decision-making for the restaurant chain.
By completing this project, I gained practical experience in data modeling, database design, query optimization, data visualization, and Python integration. The skills and knowledge acquired throughout this capstone project have prepared me for real-world database engineering challenges and have solidified my understanding of the concepts learned in the Coursera Meta Database Engineering Professional Certificate program.









































