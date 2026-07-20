USE msdb;
GO
EXEC sp_add_job
    @job_name = 'Retail ETL Automation';
GO
EXEC sp_add_jobstep
    @job_name = 'Retail ETL Automation',
    @step_name = 'Execute ETL Procedure',
    @subsystem = 'TSQL',
    @database_name = 'Retail_TargetDB',
    @command = 'EXEC usp_CopyRetailData;';
GO
EXEC sp_add_schedule
    @schedule_name = 'Retail_ETL_Daily',
    @freq_type = 4,          -- Daily
    @freq_interval = 1,      -- Every day
    @active_start_time = 090000;   -- 09:00 AM
GO
EXEC sp_attach_schedule
    @job_name = 'Retail ETL Automation',
    @schedule_name = 'Retail_ETL_Daily';
GO
EXEC sp_add_jobserver
    @job_name = 'Retail ETL Automation';
GO
