-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
-- Need table Product: ProductName, CategoryId
-- Need table Category: CategoryName, Id
SELECT p.ProductName, c.CategoryId 
FROM "Product" AS p
JOIN "Category" AS c
ON p.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
-- Need table- Order: OrderDate, Id, ShipVia
-- Need table Shipper: CompanyName, Id
-- orders < 2012-08-09
SELECT o.Id, s.CompanyName
FROM "Order" AS o
JOIN "Shipper" AS s
ON o.ShipVia = s.Id
WHERE o.OrderDate < "2012-08-09";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
-- Need table- Product: ProductName, Id
-- Need table- OrderDetail: OrderId, ProductId, Quantity
-- order Id 10251
SELECT p.ProductName, od.Quantity
FROM "Product" AS p
JOIN "OrderDetail" AS od
ON p.Id = od.ProductId
WHERE od.OrderId = 10251
ORDER BY p.ProductName;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT c.CompanyName, e.LastName
FROM "Order" AS o
JOIN "Customer" AS c
ON o.CustomerId = c.Id 
JOIN "Employee" AS e
ON o.EmployeeId = e.Id;