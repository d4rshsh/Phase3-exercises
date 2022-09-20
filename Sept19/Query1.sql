-- creating database qn 1
create database Shopping;
-- using current db
use Shopping;
--creating tables
create table customer (custid int not null primary key, custname varchar(20), city varchar(20) not null, state_name varchar(20) not null);
create table products (prodid int primary key, prodname varchar(20) , unitprice int , UnitOfMeasure varchar(10) , QtyInStock int);
create table sales_header (invno int not null primary key,  invdate date, invamt float not null, disPercent float not null);
create table sales_details(invno int not null, custid int foreign key references customer(custid), prodid int not null,qtysold int not null);

--altering commands
alter table sales_details
add foreign key(prodid) references products(prodid);

alter table sales_details
drop column qtysold;

-- 
alter table sales_details
add Qty int;

--qn 7
create database library;
use library;
-- library assignments
create table member(
member_id int primary key,
member_name varchar(25),
Acc_Open_Date date,
Max_Books_Allowed int,
Penalty_Amount int
);
-- table 2
create table books(
Book_No	int primary key,
Book_Name varchar(30),
Author char(30),
Cost int,
Category char(10)
);
select * from books;
-- table 3
create table issued(
Lib_Issue_Id int,
Book_No	int foreign key references books(Book_No),
Member_Id int foreign key references member(member_id),
Issue_Date	date,
Return_date	date
);
