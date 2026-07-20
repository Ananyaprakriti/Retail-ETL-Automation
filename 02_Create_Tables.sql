USE Retail_SourceDB;
GO

CREATE TABLE Customers(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    City VARCHAR(50)

INSERT INTO Customers VALUES
(101,'Rahul Sharma','rahul@gmail.com','9876543210','Hyderabad'),
(102,'Priya Reddy','priya@gmail.com','9876543211','Bangalore'),
(103,'Arjun Kumar','arjun@gmail.com','9876543212','Chennai')
GO
);


CREATE TABLE Products(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)

INSERT INTO Products VALUES
(201,'Laptop','Electronics',65000.00),
(202,'Mobile','Electronics',25000.00),
(203,'Office Chair','Furniture',5500.00)
GO
);


CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY(ProductID) REFERENCES Products(ProductID)

INSERT INTO Orders VALUES
(601,101,201,2,'2025-01-10'),
(602,102,202,1,'2025-01-11'),
(603,103,203,4,'2025-01-12');
GO);


CREATE TABLE Employees(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
INSERT INTO Employees VALUES
(301,'Amit Verma','Sales',45000.00),
(302,'Sneha Rao','HR',50000.00),
(303,'Kiran Patel','Finance',55000.00)
GO
);



CREATE TABLE Suppliers(
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    City VARCHAR(50)
INSERT INTO Suppliers VALUES
(401,'ABC Suppliers','Hyderabad'),
(402,'XYZ Distributors','Bangalore'),
(403,'PQR Traders','Chennai')
GO
);


CREATE TABLE Inventory(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    Stock INT,
    FOREIGN KEY(ProductID) REFERENCES Products(ProductID)
INSERT INTO Inventory VALUES
(501,201,100),
(502,202,150),
(503,203,80)
GO
);


e data inserted successfully.';
