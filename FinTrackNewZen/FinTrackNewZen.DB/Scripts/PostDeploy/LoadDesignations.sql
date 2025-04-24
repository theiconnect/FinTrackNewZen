MERGE INTO Designation AS target
USING (
    VALUES 
        (1, 'EMP', 'Employee'),
        (2, 'MEM', 'Member'),
        (3, 'GRP_LEAD', 'Group Leader'),
        (4, 'BR_MGR', 'Branch Manager'),
        (5, 'CASHIER', 'Cashier'),
        (6, 'PRES', 'President'),
        (7, 'VPRES', 'Vice President'),
        (8, 'SEC', 'Secretary')
) AS source (DesignationIdPk, DesignationCode, Designation)
ON target.DesignationIdPk = source.DesignationIdPk
WHEN MATCHED THEN
    UPDATE SET 
        target.DesignationCode = source.DesignationCode,
        target.Designation = source.Designation
WHEN NOT MATCHED THEN
    INSERT (DesignationIdPk, DesignationCode, Designation)
    VALUES (source.DesignationIdPk, source.DesignationCode, source.Designation);
