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
-- Need table- Product
-- Need table- OrderDetail: Id
-- order Id 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
