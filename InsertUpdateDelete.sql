use northwind;


-- 1. Add a new supplier
insert into suppliers
(CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone) 
values('Crazy Supply Company.', 'Crazy man', 'Owner', '493 Crazy blvd', 'Austin', 'TX', '78613', 'USA', '(512) 123-3212');

-- 2. Add a new product 
Insert into products
(ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
values
('Crazy Sauce',
last_insert_id(),
2,
'12 Bottles',
10.00,
50,
0,
10,
0);

-- 3. List all the products
SELECT p.ProductID, p.ProductName, s.CompanyName AS SupplierName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
ORDER BY p.ProductName;

-- 4. raise the price
Update products
set unitprice = unitprice * 1.15
Where productname = 'Crazy Sauce'

-- 5.List the products and prices of all products 
SELECT p.ProductName, p.UnitPrice, s.CompanyName AS SupplierName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE s.CompanyName = 'Crazy Supply Company.'

-- 6. Delete Products
Delete From products
Where productname =  'Crazy Sauce'

-- 7. List all Producgs
select * 
from products;

-- 9. List all suppliers
SELECT *
FROM Suppliers;

