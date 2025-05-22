create database banking_transaction;
use banking_transaction;
drop table customers;
create table customers(
customer_id INT primary key,
NAME_S VARCHAR(100),
Email VARCHAR(100),
phone VARCHAR(15),
join_date DATE
);
create table Accounts(
account_id int primary key,
account_type varchar(20),
balance decimal(12,2),
status_ varchar(20),
customer_id int,
foreign key (customer_id) references customers(customer_id)
);
drop table Transactions;
drop table accounts;
create table Transactions(
transaction_id  int primary key,
transaction_type varchar(10),
amount decimal(12,2),
transaction_time datetime,
account_id int,
foreign key (account_id) references accounts(account_id)
);
insert into customers (customer_id,Name_s,email,phone,join_date) values
(1,"Alice Watson","alicewatson308@gamil.com",9838023467,'2023-01-01'),
(2,"pallavi gowda","pallavigowda3065@gmail.com",9819026687,'2023-05-02'),
(3,"Neha Aggwal","nehaaggwarl780@gmail.com",7567890945,'2024-11-05'),
(4,"Hita Sharma","hitasharma674@gmail.com",8345236798,'2023-06-23'),
(5,"Jiya Gupta","jiyagupta6901@gmail.com",9023678912,'2025-03-30'),
(6,"Priya Murkarji","priyamurkarji845@gmail.com",945673898,'2023-11-27'),
(7,"Rhea sharma","rheasharma5690@gmail.com",8076489879,'2024-12-07'),
(8,"Ankitha Prabhu","ankithaprabhu3409@gmail.com",9789097689,'2023-11-10'),
(9,"Meghna Gupta","meghanagupta8934@gmail.com",8645785690,'2024-08-23'),
(10,"Krithika shetty","krithikashetty453@gmail.com",7834257890,'2025-10-15');

insert into accounts (account_id,account_type,balance,status_,customer_id) values
(111,"savings",12000.00,"Active",1),
(112,"current",11100.00,"Active",2),
(113,"savings",14000.00,"closed",3),
(114,"current",13000.34,"Frozen",4),
(115,"savings",20000.00,"Active",5),
(116,"savings",30000.00,"Active",6),
(117,"current",20200.00,"closed",7),
(118,"savings",35560.78,"Closed",8),
(119,"current",12000.0,"Frozen",9),
(120,"savings",70000.45,"Active",10);

insert into transactions (transaction_id,transaction_type,amount,transaction_time,account_id) values
(11,"credit",40000,'2023-02-02 04:45:09',111),
(12,"Debit",30000,'2024-06-23 02:15:45',112),
(13,"credit",20000,'2022-07-19 03:15:06',113),
(14,"credit",50000,'2025-12-31 05:09:34',114),
(15,"Debit",30000,'2023-10-21 03:12:23',115),
(16,"credit",40000,'2024-11-28 01:31:14',116),
(17,"credit",50000,'2023-07-21 06:21:56',117),
(18,"debit",80000,'2022-08-30 05:04:12',118),
(19,"credit",70000,'2023-03-21 04:45:12',119),
(20,"credit",40000,'2025-12-09 01:30:40',120);

#List all customers who joined after January 1, 2023.
select*from customers where join_date>2023-01-01;

#Retrieve all active accounts with a balance greater than ₹50,000.
select*from accounts where status_= 'active' and balance>50000;

select*from transactions;

#Show all transactions for account_id 101 ordered by transaction_time.
select*from transactions where account_id=101 order by transaction_time;

#Find the email and phone number of the customer named 'Alice'.
select email,phone from customers where name_s='Alice watson'; 

#Display the total number of accounts under each account_type.
SELECT account_type, COUNT(*) AS num_accounts FROM Accounts GROUP BY account_type;

#Find the total amount credited and debited for each customer.
SELECT 
    C.customer_id, 
    C.name_s, 
    SUM(IF(T.transaction_type = 'Credit', T.amount, 0)) AS total_credited,
    SUM(IF(T.transaction_type = 'Debit', T.amount, 0)) AS total_debited
FROM 
    Customers C
JOIN 
    Accounts A ON C.customer_id = A.customer_id
JOIN 
    Transactions T ON A.account_id = T.account_id
GROUP BY 
    C.customer_id, C.name_s;
    
#List all customers who have performed more than 3 transactions.
SELECT 
    C.customer_id, 
    C.name_s, 
    COUNT(T.transaction_id) AS num_transactions
FROM 
    Customers C
JOIN 
    Accounts A ON C.customer_id = A.customer_id
JOIN 
    Transactions T ON A.account_id = T.account_id
GROUP BY 
    C.customer_id, C.name_s
HAVING 
    COUNT(T.transaction_id) > 3;
    
    #List the top 3 customers based on total balance across their accounts.
SELECT 
    C.customer_id, 
    C.name_s, 
    SUM(A.balance) AS total_balance
FROM 
    Customers C
JOIN 
    Accounts A ON C.customer_id = A.customer_id
GROUP BY 
    C.customer_id, C.name_s
ORDER BY 
    total_balance DESC
LIMIT 3;
    
 #Display accounts with zero or negative balance.
SELECT * FROM Accounts WHERE balance <= 0;

#Display the names of customers who have at least one account with a balance higher than the average balance of all accounts.
SELECT DISTINCT 
    C.name_s
FROM 
    Customers C
JOIN 
    Accounts A ON C.customer_id = A.customer_id
WHERE 
    A.balance > (SELECT AVG(balance) FROM Accounts);





    


