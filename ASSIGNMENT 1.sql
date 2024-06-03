use classicmodels;
-- total number of orders placed in the year 2005?

select count(*)as totalorders
from orders
where year (orderDate)=2005;

 
-- of all customers from Germany who have placed orders with a total amount exceeding $500.

SELECT c.customerName, c.city, c.country
FROM customers c
JOIN  payments p ON c.customerNumber = p.customerNumber
WHERE amount >500 and c.country = 'Germany' ;


-- total number of orders placed between the first day of the 
-- current month and today's date.
 
 
-- product line with the highest average order quantity.
select productLine 
from products
group by productLine 
order by avg( productScale)
desc limit 1;

-- many different employee offices are there in the database.
select count( *) officeCode 
 from employees;
 

-- who has completed more orders than the average number of orders per employee.

select products.productLine,avg(orderquantity)AS avg_order_qnty
from orderdetails 
join products on products.productCode=orderdetails.productCode
group by products.productCode 
order by (avg_order_qnty)
desc limit 1;

 -- find the names of all employees who manage at least one employee 
select e.firstName, e.lastName
  from employees e where 
  employeeNumber in 
  (select distinct e.reportsTo from employees e 
  join customers c on e.reportsTo=c.salesrepemployeeNumber);
  
-- all products with a price exceeding $100 
-- Include an additional column indicating "High Price" for these products and "Low Price" for products with a price of $100 or less.

select productName, buyPrice ,
case 
when buyPrice>100 then ' highprice'
else 'lowprice'
end as priceCategory 
from products 
where buyPrice >100;
 


 -- the product with the most orders placed in total.
select p.productName ,count(*)
as totalOrders from products p
join orderdetails od 
on p.productCode=od.productCode 
group by p.productCode 
order by totalOrders desc
limit 1;


 
 
--- top 5 customer cities (by city name) with the highest total order amounts.
 
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