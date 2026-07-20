USE Retail_TargetDB;
GO

CREATE TABLE ETL_Audit
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    ProcedureName VARCHAR(100),
    StartTime DATETIME,
    EndTime DATETIME,
    Status VARCHAR(20),
    RecordsProcessed INT,
    ErrorMessage VARCHAR(500)
);
GO
