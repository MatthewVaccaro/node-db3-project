-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Product.ProductName, Category.CategoryName FROM "Product" 
JOIN "Category" ON  Product.CategoryId = Category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.id, shipper.CompanyName FROM "Order" AS o
JOIN Shipper ON o.ShipVia = shipper.Id
WHERE o.OrderDate <  '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
Select Product.ProductName, OrderDetail.Quantity FROM "Order" as O
JOIN OrderDetail ON O.id = OrderDetail.OrderId
JOIN Product ON OrderDetail.ProductId = Product.id
WHERE O.id = 10251
ORDER BY Product.ProductName ASC

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT "o.id" "Order Id",
 "Customer.CompanyName" "Customer's Company Name", 
 Employee.LastName "Employee's Last Name" 
 FROM "Order" AS O 
JOIN Customer ON O.CustomerId = Customer.id
JOIN  Employee ON O.EmployeeId = Employee.Id