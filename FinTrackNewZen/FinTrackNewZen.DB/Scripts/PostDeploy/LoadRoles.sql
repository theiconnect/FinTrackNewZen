MERGE INTO Role AS target
USING (
    VALUES 
        (1, 'ADMIN', 'Administrator'),
        (2, 'SUPERUSER', 'Superuser'),
        (3, 'FED_ADMIN', 'Federation Admin'),
        (4, 'GROUP_ADMIN', 'Group Admin'),
        (5, 'FEDERATION_USER', 'Federation User'),
        (6, 'GROUP_USER', 'Group User')
) AS source (RoleIdPk, RoleCode, RoleName)
ON target.RoleIdPk = source.RoleIdPk
WHEN MATCHED THEN
    UPDATE SET 
        target.RoleCode = source.RoleCode,
        target.RoleName = source.RoleName
WHEN NOT MATCHED THEN
    INSERT (RoleIdPk, RoleCode, RoleName)
    VALUES (source.RoleIdPk, source.RoleCode, source.RoleName);
