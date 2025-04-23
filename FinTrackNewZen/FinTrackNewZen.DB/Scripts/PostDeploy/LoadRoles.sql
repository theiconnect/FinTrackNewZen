MERGE INTO Role AS target
USING (
    VALUES 
        (1, 'ADMIN', 'Administrator'),
        (2, 'SUPERUSER', 'Superuser'),
        (3, 'FEDADMIN', 'Federation Admin'),
        (4, 'GROUPADMIN', 'Group Admin'),
        (5, 'FEDERATIONUSER', 'Federation User'),
        (6, 'GROUPUSER', 'Group User')
) AS source (RoleIdPk, RoleCode, RoleName)
ON target.RoleIdPk = source.RoleIdPk
WHEN MATCHED THEN
    UPDATE SET 
        target.RoleCode = source.RoleCode,
        target.RoleName = source.RoleName
WHEN NOT MATCHED THEN
    INSERT (RoleIdPk, RoleCode, RoleName)
    VALUES (source.RoleIdPk, source.RoleCode, source.RoleName);
