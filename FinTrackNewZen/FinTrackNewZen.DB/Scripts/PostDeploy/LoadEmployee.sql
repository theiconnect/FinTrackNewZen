-- Check if the record already exists
IF NOT EXISTS (
    SELECT 1 FROM Employee
    WHERE AadhaarNumber = '123456789012' OR PAN = 'ABCDE1234F' OR UAN = 'UAN123456'
)
BEGIN
    -- Insert the record if it doesn't exist
    INSERT INTO Employee (
        FirstName, LastName, DOB, HighestQualification, Gender, BloodGroup, Mobile,
        AlternateMobile, Email, CurrentAddressLine1, CurrentAddressLine2, CurrentStreet,
        CurrentCity, CurrentState, CurrentPincode, PermAddressLine1, PermAddressLine2,
        PermStreet, PermCity, PermState, PermPincode, DOJ, AadhaarNumber, PAN, UAN,
        PFAccountNumber, DepartmentIdFk, DesignationIdFk, AccountNumber, AccountHolderName,
        BankName, IFSCCode, AccountTypeIdFk, NomineeName, NomineeRelationship, NomineeContactNumber,
        NomineeEmailAddress, StatusIdFk, FederationIdFk, CreatedByIdFk, CreatedOn,
        LastUpdatedByIdFk, LastUpdatedOn
    )
    VALUES (
        'Abraham', 'Benjamin', '1985-05-15', 'Masters in Computer Science', 'Male', 'O+', '9876543210',
        NULL, 'john.doe@example.com', '789 Oak Street', NULL, NULL, 'New York', 'New York', '10001',
        '123 Pine Street', NULL, NULL, 'Los Angeles', 'California', '90001', '2025-04-23',
        '123456789012', 'ABCDE1234F', 'UAN123456', 'PF12345678', NULL, NULL, '9876543210',
        'John Doe', 'XYZ Bank', 'XYZB000123', NULL, NULL, NULL, NULL, NULL, 1, 1, 1,
        '2025-04-23 12:14:10.097', NULL, NULL
    );
END;

select * from Employee