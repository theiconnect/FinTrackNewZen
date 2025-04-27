MERGE INTO Designation AS target
USING (
    VALUES 
        (1, 'ACCOUNTANT', 'Accountant'),
        (1, 'JUNIOR_ACCOUNTANT', 'Jr. Accountant'),
        (2, 'CASHIER', 'Cashier'),
        (3, 'MANAGER', 'Manager'),
        (4, 'FILED_OFFICER', 'Fied Officer'),
        (5, 'ASST_MANAGER', 'Asst. Manager'),
        (6, 'PRESIDENT', 'President'),
        (7, 'VICE_PRESIDENT', 'Vice President'),
        (8, 'SECRETARY', 'Secretary')
) AS source (DesignationIdPk, DesignationCode, Designation)
ON target.DesignationIdPk = source.DesignationIdPk
WHEN MATCHED THEN
    UPDATE SET 
        target.DesignationCode = source.DesignationCode,
        target.Designation = source.Designation
WHEN NOT MATCHED THEN
    INSERT (DesignationIdPk, DesignationCode, Designation)
    VALUES (source.DesignationIdPk, source.DesignationCode, source.Designation);
