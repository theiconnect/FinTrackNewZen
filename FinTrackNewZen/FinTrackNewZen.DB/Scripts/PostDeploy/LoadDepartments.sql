MERGE INTO Department AS target
USING (
    VALUES 
        (1, 'ACCOUNTS', 'Account'),
        (2, 'LOAN_SEC', 'Loan Section'),
        (3, 'IT', 'Information Technology'),
        (4, 'HR', 'Human Resources'),
        (5, 'MGMT', 'Management'),
        (6, 'GENERAL', 'General')
) AS source (DepartmentIdPk, DepartmentCode, DepartmentName)
ON target.DepartmentIdPk = source.DepartmentIdPk
WHEN MATCHED THEN
    UPDATE SET 
        target.DepartmentCode = source.DepartmentCode,
        target.DepartmentName = source.DepartmentName
WHEN NOT MATCHED THEN
    INSERT (DepartmentIdPk, DepartmentCode, DepartmentName)
    VALUES (source.DepartmentIdPk, source.DepartmentCode, source.DepartmentName);
