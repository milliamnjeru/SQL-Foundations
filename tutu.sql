use classicmodels;
select*from orders;                  
select count(*)as totalorders
from orders
where year (orderDate)=2005;

select * from orderdetails;
Select*  from customers;
select* from orders;
select * from payments;
SELECT c.customerName, c.city, c.country
FROM customers c
JOIN  payments p ON c.customerNumber = p.customerNumber
WHERE amount >500 and c.country = 'Germany' ;


select* from productlines;
select*from products;
select products .productlinre,avg(quantityOrdered ) as avg_

select productLine 
from products
group by productLine 
order by avg( productScale)
desc limit 1;
select products.productLine,avg(orderquantity)AS avg_order_qnty
from orderdetails 
join products on products.productCode=orderdetails.productCode
group by products.productCode 
order by (avg_order_qnty)
desc limit 1;
 
select * from employees;
select* from orders;

select count( *) officeCode 
 from employees;
  select distinct e.reportsTo from 
  Employees e join Customer c 
  on e.reportsTo= c.salesrepemployeeNumber;
  
  
  
  
  select e.firstName, e.lastName
  from employees e where 
  employeeNumber in 
  (select distinct e.reportsTo from employees e 
  join customers c on e.reportsTo=c.salesrepemployeeNumber);
  
 select count(


select * from products;


select productName, buyPrice ,
case 
when buyPrice>100 then ' highprice'
else 'lowprice'
end as priceCategory 
from products 
where buyPrice >100;
 
;
select* from orderdetails;
select* from products;

select p.productName ,count(*)
as totalOrders from products p
join orderdetails od 
on p.productCode=od.productCode 
group by p.productCode 
order by totalOrders desc
limit 1;

select* from customers;
select* from orderdetails;
select*from orders;

select c.city,sum( od.quantityOrdered * od. priceEach) 
as totalorderamount
from customers c
join 
orders o on c.customerNumber=o.customerNumber
join orderdetails od on 
o.orderNumber= od.orderNumber
group by c.city 
order by totalorderamount desc 
limit 5;