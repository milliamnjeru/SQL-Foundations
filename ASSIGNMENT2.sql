

use classicmodels;
 -- view named high_value_customers that lists the customer number, customer name, and total order amount for customers who have placed orders exceeding $10,000.

create view high_value_customers as 
select c.customerNumber,c.customerName ,sum(od.quantityordered*od.priceEach) as 
total_order_amount from customers c
join
orders o on c.customerNumber=o.customerNumber
join
orderdetails od on o.orderNumber=od.orderNumber
group by c.customerNumber,c.customerName 
having total_order_amount >10000; 



--  the names of customers who have placed orders for products from the 'Classic Cars' product line.
select distinct c.customerName 
from customers c
join orders o on c.customerNumber =o.customerNumber
join orderdetails od on o.orderNumber=od.orderNumber
join products p on od.productCode=p.productCode 
where p.productline='classic car';

-- List the employees who work in the office with the maximum number of employees.

select e.employeeNumber, e.firstName ,e.lastName
from employees e
where officeCode=( 
  select officecode 
  from employees
  group by officeCode 
  order by count(*) desc
  limit 1
  );
  
--   stored procedure named get_customer_orders that takes a customer number as input and returns the order numbers and order dates for that customer.
 delimiter $$
  create procedure getcustomerorders(in customernum int)
  begin
  select orderNumber,orderDate 
  from orders
  where customerNumber=customernum;
end $$
delimiter ;

-- stored procedure named total_sales_by_employee that takes an employee number as input and returns the total sales amount for that employee.
delimiter %%
create procedure gettotalsalesbyemployees(in employeeNum_param int,totalsales decimal(10,2))
  begin
  select sum(od.quantityordered*od.priceEach) into totalsales
  from orderdetails od
  join orders o on od.orderNumber=o.orderNumber
  join employees e on o.employeeNumber=e.employeeNumber
  where e.employeeNumber=employeenum_param;
  end %%
  delimiter ;
  
  -- use a  CTE to find the top 3 employees by the number of customers they manage.
  
  with  employeeCustomerCount as(
  select e.employeeNumber,count(c.customerNumber) as customer_count
  from employees e
  left join customers c on e.employeeNumber =c.salesrepemployeeNumber 
  group by e.employeeNumber 
  )
  select e.employeeNumber ,e.firstName ,e.lastName,ecc.customer_count
  from employees e
  join employeecustomerCount ecc on e. employeeNumber =ecc. employeeNumber 
  order by ecc.customer_count desc 
  limit 3;

-- Use a CTE to find the average payment amount for each customer and list those with an average payment greater than $2000.

with avgpayment as (
select customerNumber,avg(amount) as avg_payment 
from payments
group by customerNumber
)
select c.customerNumber,c.customerName,ap.avg_payment
from customers c
join avgpayment ap on c.customerNumber=ap.customerNumber
where ap.avg_payment>2000;

-- Create a union query that lists all customer names and employee names.
select customerName as name from customers
union 
select concat(firstName,'', lastName) as name from employees;

-- Write a union query to list all office cities and customer cities, making sure there are no duplicates.
select city from offices 
union 
select city from customers;

-- Create a union query that lists all product codes from the orderdetails table along with the respective order number and indicates whether it is from the 'Classic Cars' or 'Motorcycles' product line.
select orderNumber,productCode,'classic cars' as product_line
from orderdetails
where productCode in (Select productCode from products  where productline ='classic car')
union 
select orderNumber,productCode ,'motorcycles' as product_line 
from orderdetails 
where productCode in (select productCode from products where productline ='motorcycles');



