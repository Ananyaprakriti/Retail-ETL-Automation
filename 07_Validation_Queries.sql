USE Retail_TargetDB;
GO

SELECT COUNT(*) AS Customer_Count
FROM Customers;


SELECT COUNT(*) AS Product_Count
FROM Products;


SELECT COUNT(*) AS Order_Count
FROM Orders;


SELECT COUNT(*) AS Employee_Count
FROM Employees;


SELECT COUNT(*) AS Supplier_Count
FROM Suppliers;


SELECT COUNT(*) AS Inventory_Count
FROM Inventory;

SELECT *
FROM ETL_Audit
ORDER BY AuditID DESC;
GO
