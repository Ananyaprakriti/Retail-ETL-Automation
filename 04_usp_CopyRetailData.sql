USE Retail_TargetDB;
GO

CREATE PROCEDURE usp_CopyRetailData
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @StartTime DATETIME = GETDATE();
    DECLARE @RecordsProcessed INT = 0;

    BEGIN TRY

        BEGIN TRANSACTION;

       
       TRUNCATE TABLE Customers;

        INSERT INTO Customers
        SELECT *
        FROM Retail_SourceDB.dbo.Customers;

        SET @RecordsProcessed = @RecordsProcessed + @@ROWCOUNT;


        
        TRUNCATE TABLE Products;

        INSERT INTO Products
        SELECT *
        FROM Retail_SourceDB.dbo.Products;

        SET @RecordsProcessed = @RecordsProcessed + @@ROWCOUNT;


       
        TRUNCATE TABLE Employees;

        INSERT INTO Employees
        SELECT *
        FROM Retail_SourceDB.dbo.Employees;

        SET @RecordsProcessed = @RecordsProcessed + @@ROWCOUNT;


       
        TRUNCATE TABLE Suppliers;

        INSERT INTO Suppliers
        SELECT *
        FROM Retail_SourceDB.dbo.Suppliers;

        SET @RecordsProcessed = @RecordsProcessed + @@ROWCOUNT;


      
        TRUNCATE TABLE Inventory;

        INSERT INTO Inventory
        SELECT *
        FROM Retail_SourceDB.dbo.Inventory;

        SET @RecordsProcessed = @RecordsProcessed + @@ROWCOUNT;


       
        TRUNCATE TABLE Orders;

        INSERT INTO Orders
        SELECT *
        FROM Retail_SourceDB.dbo.Orders;

        SET @RecordsProcessed = @RecordsProcessed + @@ROWCOUNT;


       
        COMMIT TRANSACTION;

    END TRY

    BEGIN CATCH

        ROLLBACK TRANSACTION;

        THROW;

    END CATCH

END;
GO
