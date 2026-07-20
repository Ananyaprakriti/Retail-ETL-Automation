-- 1. Enable Database Mail
EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;

EXEC sp_configure 'Database Mail XPs', 1;
RECONFIGURE;

-- 2. Create Mail Account
EXEC msdb.dbo.sysmail_add_account_sp
    @account_name = 'RetailMailAccount',
    @description = 'Database Mail Account',
    @email_address = 'ananyaasukameti2301@gmail.com',
    @display_name = 'Retail ETL Automation',
    @mailserver_name = 'smtp.gmail.com',
    @port = 587,
    @enable_ssl = 1,
    @username = 'ananyaasukameti2301@gmail.com',
    @password = '<YOUR_GMAIL_APP_PASSWORD>';

-- 3. Create Mail Profile
EXEC msdb.dbo.sysmail_add_profile_sp
    @profile_name = 'RetailMailProfile',
    @description = 'Retail ETL Mail Profile';

-- 4. Associate Account with Profile
EXEC msdb.dbo.sysmail_add_profileaccount_sp
    @profile_name = 'RetailMailProfile',
    @account_name = 'RetailMailAccount',
    @sequence_number = 1;

-- 5. Send Test Email
EXEC msdb.dbo.sp_send_dbmail
    @profile_name = 'RetailMailProfile',
    @recipients = 'ananyaasukameti2301@gmail.com',
    @subject = 'Retail ETL Test Mail',
    @body = 'Database Mail has been configured successfully.';
