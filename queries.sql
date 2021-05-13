-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select
p.productname, cat.categoryname
from product p
join category cat on p.categoryid = categoryid;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select
o.id orderId, CompanyName
from [order] o
join shipper ship on o.shipvia = ship.Id
where o.OrderDate < '2012-08-09';
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT
p.ProductName,
o.Quantity
FROM OrderDetail as o 
LEFT JOIN Product as p ON p.Id = o.ProductId
WHERE OrderId = '10251'
ORDER BY ProductName;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT
o.Id as "Order Id",
c.CompanyName as "Customers Company Name",
e.LastName as "Employees Last Name"
FROM "Order" as o 
JOIN Employee as e ON o.EmployeeId = e.Id
JOIN Customer as c ON o.CustomerId = c.Id; 