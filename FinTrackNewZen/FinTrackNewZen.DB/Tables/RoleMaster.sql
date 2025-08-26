CREATE TABLE [dbo].[RoleMaster]
(
    RoleIdPk INT NOT NULL PRIMARY KEY identity(1,1),
    RoleCode VARCHAR(50) NOT NULL,
    RoleName VARCHAR(512) NOT NULL
);
