MERGE INTO Department AS target
USING (
    VALUES 
        (1, 'ACCOUNTS', 'Account'),
        (2, 'ADMIN', 'Admin'),
        (3, 'MANAGEMENT', 'Management'),
        (4, 'HR', 'Human Resources'),
        (5, 'IT', 'Information Technology')
) AS source (DepartmentIdPk, DepartmentCode, DepartmentName)
ON target.DepartmentIdPk = source.DepartmentIdPk
WHEN MATCHED THEN
    UPDATE SET 
        target.DepartmentCode = source.DepartmentCode,
        target.DepartmentName = source.DepartmentName
WHEN NOT MATCHED BY TARGET THEN 
    INSERT (DepartmentIdPk, DepartmentCode, DepartmentName)
    VALUES (source.DepartmentIdPk, source.DepartmentCode, source.DepartmentName)
WHEN NOT MATCHED BY SOURCE THEN DELETE;
