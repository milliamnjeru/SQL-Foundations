# SQL-FoundationS
## EXERCISE1.
The first assignment which is saved (ASSIGNMENT 1) that deals with classsic models .
-- Question 1: What is the total number of orders placed in the year 2005?

-- Question 2 : Find the names and contact information (city, country) 
-- of all customers from Germany who have placed orders with a total amount exceeding $500.

-- Question 3 : Find the product line with the highest average order quantity.

-- Question 4 : How many different employee offices are there in the database?

-- Question 5 : Find the names of all employees who manage at least one employee 
-- who has completed more orders than the average number of orders per employee.

-- Question 6 : Find the total number of orders placed between the first day of the current month and today's date.

-- Question 7 : List all products with a price exceeding $100. 
-- Include an additional column indicating "High Price" for these products and "Low Price" for products with a price of $100 or less.

-- Question 8 : Find the product with the most orders placed in total.

-- Question 9 : Find the top 5 customer cities (by city name) with the highest total order amounts.


##EXERCISE 2
The second assignment saved (ASSIGNMENT 2) that deals with classic models and encloses on views,Stored procedure ,CTE and union.

Question 1: Create a view named high_value_customers that lists the customer number, customer name, and total order amount for customers who have placed orders exceeding $10,000.

Question 2: Find the names of customers who have placed orders for products from the 'Classic Cars' product line.

Question 3: List the employees who work in the office with the maximum number of employees.

Question 4: Write a stored procedure named get_customer_orders that takes a customer number as input and returns the order numbers and order dates for that customer.

Question 5: Write a stored procedure named total_sales_by_employee that takes an employee number as input and returns the total sales amount for that employee.

Question 6: Use a CTE to find the top 3 employees by the number of customers they manage.

Question 7: Use a CTE to find the average payment amount for each customer and list those with an average payment greater than $2000.

Question 8: Create a union query that lists all customer names and employee names.

Question 9: Write a union query to list all office cities and customer cities, making sure there are no duplicates.

Question 10: Create a union query that lists all product codes from the orderdetails table along with the respective order number and indicates whether it is from the 'Classic Cars' or 'Motorcycles' product line.


##EXERCISE 3.
The third assignment ie.ASSIGNMENT 3 from salesdb that  deals with  Aggregations, select,conditions and joins.

Question1; Calculate the average quantity.

Question2;Calculate the number of sales made.

Question 3; Calculate the maximum quantity sold.

Question4; Calculate the minimum quantity sold.

Question 5;Calculate the total sales made.

Question6; Calculate the Total Sales Amount by Customer.

 Question7;Calculate the Total Quantity Sold by Product.
 
Question 8; Calculate the Average Quantity Sold per Customer.

Question9;Customers with Total Sales Amount Greater Than $1500.

##EXERCISE 4.
The assignment entailed creating of Relational schema ,ERD using db.diagram (Entity,Attributes,Relationship ,identifier)and physical DB of PizzaHot

Your client is a local fast food restaurant - PizzaHot. The background story is as below:
PizzaHot is a local restaurant serving the community and bringing people happiness. Recent years, PizzaHot is adopting a franchising strategy and is moving towards a chain-restaurant in the State. A database system for Inner Management is crucial for the expansion of the business.
The information needed is:
Stores: including ID, name, location, contact information.
Employees: including ID, SSN, name, gender, DoB, position, salary, AffiliateStore.
Vendors: including name, address, contactPerson.
Products: including name, Vendor, price, quantity.
![PizzaHot Relationschema](https://github.com/milliamnjeru/SQL-Foundations/blob/main/pizzahot.jpeg)


## EXERCISE 5.

The assignment involved creating of relational schema ,ERD using db.diagram i.e Entity,Attributes,Relationship,identifier and physical DB of Stock-Exchange.

Your client is a stock-exchange company. The background story is as below:
TrueTrade provides excellent financial services to customers all over the world. Customers can buy/sell stock via TrueTrade easily and securely. TrueTrade also provides detailed information for every stock so customers can make the best decision.
The information needed for TrueTrade is:
Stocks: including stock#, companyName, ExchangeMarket, Description
Customers: including CustomerID, Name, Contact
Portfolio: including CustomerName, currentValue
Logs: including stock#, openPrice, closePrice, date
Transactions: CustomerID, Portfolio, stock, quantity, price, date, time.
![ Stock-Exchange Relationschema](https://github.com/milliamnjeru/SQL-Foundations/blob/main/Stocks.jpeg)

## EXERCISE 6.
The assignment involves creating of Relational schema,ERD using db.diagram i.e Entity,Attributes ,Relationship,identifier and physical DB of Art-Gallleries. 

A gallery must have one and only one location and each location must have one and only one gallery.
Galleries have attributes: GalleryNum(identifier), Name, Phone, Hours, and Intro.
Locations have attributes: ID(identifier), Country, State, City, Street, and ZipCode.
A gallery may have one or more drawings and each drawing may belong to one and only one gallery.
Drawings have attributes: DrawingNum(identifier), Title, Size, Material, and Date.
A drawing must be created by at least one artist and each artist must create at least one drawing.
Artists have attributes: ArtistNum(identifier), Name, Phone, Birthday, and Email.
An artist may have a bio statement and a bio statement must belong to one artist.
BioStatements have attributes: Citizenship, Education, Experience, MasterPiece(s).

![ Art-Gallleries Relationschema](https://github.com/milliamnjeru/SQL-Foundations/blob/main/gallery.jpeg)










