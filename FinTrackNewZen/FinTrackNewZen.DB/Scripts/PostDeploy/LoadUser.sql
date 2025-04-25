IF NOT EXISTS (SELECT '' FROM dbo.[User] WHERE EmailAddress = 'admin@fintrack.com')
BEGIN
    INSERT INTO [dbo].[User]
    (
        EmailAddress,
        Phone,
        [PasswordHash],
        CreatedByIdFk,
        CreatedOn,
        EmployeeIdFk,
        RoleIdFk
    )
    VALUES
    (
        'admin@fintrack.com',       
        '1234567890',               
        'Welcome@01',               
        1,                          
        GETDATE(),                  
        1,
        1
    );
END