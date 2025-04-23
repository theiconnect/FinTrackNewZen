INSERT INTO [dbo].[User]
(
    UserRole,
    EmailAddress,
    Phone,
    [PasswordHash],
    OTP,
    CreatedByIdFk,
    CreatedOn,
    LastUpdatedByIdFk,
    LastUpdatedOn,
    EmployeeIdFk,
    RoleIdFk
)
VALUES
(
    'Admin',                     
    'admin@fintrack.com',       
    '1234567890',               
    'Welcome@01',               
    '123456',                   
    1,                          
    GETDATE(),                  
    NULL,                       
    NULL,                       
    1  ,
    1
);
