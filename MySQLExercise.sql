#Database Assignment 
#Exercise:1
##Create Database - Hotel Management System 
create database HOTELMANAGEMENTSYSTEM;

##Create Table Customers
CREATE TABLE Customers(
    Cust_ID INT(11) NOT NULL PRIMARY KEY,
    Cust_Name VARCHAR(50) default NULL,
    Cust_City VARCHAR(50)default NULL,
    Cust_RoomNo INT(11) default NULL,
    CheckIn_Time DATETIME default NULL
);

## Insert 5 random data 
INSERT INTO Customers(Cust_ID, Cust_Name, Cust_City,Cust_RoomNo,CheckIn_Time)
VALUES
(1, 'Krishna', 'NewYork', 123, '2022-01-01 15:10:10'),
(2, 'Radha', 'Jersery',456 ,'2022-02-01 15:10:10' ),
 (3,'Yasodha','LA',345,'2022-03-01 15:10:10'),
 (4,'Nanda','Denver',456,'2022-04-01 15:10:10'),
 (5,'Balaram','Niagara',654,'2022-05-01 15:10:10');
 
 ##Print Table
 SELECT * FROM HOTELMANAGEMENTSYSTEM.Customers;
 
 #Exercise:2
 ##Database of E-Commerce website
 ##Create Database E-commerce;
 #Get Distinct city and count distinct city from Customers Table
 ##Combine
 select distinct city, count(distinct(city)) from Customers group by city;
 ##Individual
 select distinct city from Customers;
 select count(distinct(city)) from Customers;
 
 #Exercise:3
 ##Get Least and Highest number of quantities from Orders Details Table
 ##Combine
 select min(quantity),max(quantity) from Order_details;
##Individual
select min(quantity) from Order_details;
select max(quantity) from Order_details;

#Exercise:4
##Get total and average quantities from Order details table
##Combine
select sum(quantity),avg(quantity) from Order_Details;
##Individual
 select sum(quantity) from Order_Details;
select avg(quantity) from Order_Details;

#Exercise:5
##Get product at 5th position till 15th position from Products table
select productname from Products limit 5,10;

#Exercise:6
##Get All details of suppliers consists if A in second poistion from suppliers table
select * from suppliers where suppliername like '_a%';

#Excercise:7
##Customer who doesnt stay in USA and Canada from Customers table
select * from Customers where country NOT IN ('USA','CANADA');

#Exercise:8
##Orders places between 2020 to 2021 in descending order from Order details table
##Note: Orderdetails has no date column so used orders table but there is no order date in 2020 to 2021
select * from Orders where (orderdate between '2020-01-01' and '2022-12-31' )order by orderdate desc;

#Exercise:9
##Get distinct city and count from Customers table
select distinct city, count(city) from Customers group by city;

#Exercise:10
##Get details of all employees excluding employees first names "Sanjay", "Sonia" from employees table
## Sanjay and Sonia are not in first names column
select * from Employees where firstname not in ('Sanjay','Sonia');

#Exercise:11
##Duplicate suppliers table

CREATE TABLE SupplierDetail AS SELECT * FROM Suppliers;

#Exercise:12
##Delete customers with country venezula and print table

SET SQL_SAFE_UPDATES=0;
DELETE FROM Customers WHERE country like '%Venezuela%';
select * From Customers;