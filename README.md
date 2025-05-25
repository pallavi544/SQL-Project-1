#  SQL Project 1 – Banking Transaction System

This project is a **relational database management system** (RDBMS) simulation for a banking environment. It is designed to manage **customers, their accounts, and transactions**, and includes complex SQL queries for data retrieval and analysis.

---

##  Objectives

The goal of this project is to demonstrate proficiency in:

- Creating relational databases and setting up relationships
- Performing data manipulation using SQL
- Applying analytical SQL queries to derive business insights
- Exploring customer behavior and financial data within a banking context

---

##  Database Structure

The project creates and populates a database called **`banking_transaction`**, which includes the following core tables:

### 1. `Customers`
- **Fields**: `customer_id`, `name_s`, `email`, `phone`, `join_date`
- **Purpose**: Stores personal and contact information of bank customers.

### 2. `Accounts`
- **Fields**: `account_id`, `account_type`, `balance`, `status_`, `customer_id`
- **Purpose**: Stores account-level details, including balance, type (savings/current), and linkage to the customer.

### 3. `Transactions`
- **Fields**: `transaction_id`, `transaction_type`, `amount`, `transaction_time`, `account_id`
- **Purpose**: Records every financial transaction, with time and amount, linked to the appropriate account.

---

## 🧾 Sample Data Inserted

The project includes a diverse set of mock data:

- 10 **customers**
- 10 **accounts** with varying types and statuses (`Active`, `Closed`, `Frozen`)
- 10 **transactions** (credit and debit) with timestamped entries

---

##  SQL Queries & Analysis

The script performs a variety of SQL operations to extract meaningful insights:

###  Customer Insights
- **List of customers** who joined after a specific date.
- **Retrieve email and phone number** of a customer by name.
- **Find customers** who performed more than 3 transactions.
- **List top 3 customers** based on total account balance.

###  Account Analysis
- **All active accounts** with balance over ₹50,000.
- **Accounts with zero or negative balances.**
- **Accounts grouped by account type.**

###  Transaction Analysis
- **All transactions** listed and filtered by account.
- **Total credited and debited amount** for each customer.
- **Transactions ordered by time for a specific account.

###  Advanced Query
- **Customers with balance above average account balance.**

These queries combine `JOIN`, `GROUP BY`, `HAVING`, `ORDER BY`, and `subqueries` to illustrate real-world banking operations and insights.

---
### Technologies Used
* SQL – Structured Query Language

* MySQL – Tested with MySQL RDBMS

* DBeaver or MySQL Workbench – SQL editor and client (optional)

---

### Learning Outcomes
* Through this project, I developed skills in:

* Data modeling and relational schema design

* Writing efficient SQL queries for real-world data problems

* Understanding data relationships and foreign key constraints

* Performing exploratory data analysis using SQL

---

## How to Run Locally

* To run this SQL project on your local machine, follow these steps:

1.Install a SQL Environment

You can use any SQL environment like:

* MySQL

* PostgreSQL

* Microsoft SQL Server

* SQLite

* Or graphical tools like MySQL Workbench, DBeaver, or pgAdmin

2.Clone the Repository
   
```bash

git clone https://github.com/pallavi544/SQL-Project-1.git
cd SQL-Project-1

```

3.Open the SQL File
   
* Open the file project sql 11 (2).sql in your SQL editor or import it into your SQL IDE.

4.Run the Script

* Execute the entire SQL script to:

* Create the database and tables

* Insert sample data

* Run queries and view the outputs

Note: Make sure your SQL server is running and properly configured before executing the script.

