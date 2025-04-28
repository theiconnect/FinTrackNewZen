
-- Insert a single unique record into Federation table
IF NOT EXISTS (
    SELECT 1 FROM [dbo].[Federation]
    WHERE FederationName = 'SPMS' AND RegistrationNumber = 'REG12345'
)
BEGIN
    INSERT INTO [dbo].[Federation] (
        FederationName, RegistrationNumber, RegistrationDate, ContactNumber, Email, Website, FAX, 
        AddressLine1, AddressLine2, Street, City, AddrState, Pincode, LandMark, 
        CreatedByIdFk, CreatedOn, LastUpdatedByIdFk, LastUpdatedOn
    )
    VALUES (
        'SPMS', 'REG12345', '2025-01-01', '1234567890', 'contact@nationalfederation.org', 
        'https://nationalfederation.org', '123-456-789', '123 Main Street', NULL, 'Central Road', 
        'New Delhi', 'Delhi', 110001, 'Near Central Park', 
        1, GETDATE(), NULL, NULL
    );
    PRINT 'Unique record inserted into Federation table.';
END
ELSE
BEGIN
    PRINT 'Record already exists in Federation table. No action taken.';
END;
