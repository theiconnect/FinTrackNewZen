CREATE TABLE [dbo].[User]
(
<<<<<<< HEAD
    UserIdPk			INT NOT NULL PRIMARY KEY IDENTITY (1,1), 
	EmailAddress		VARCHAR(128) NOT NULL,
	Phone				VARCHAR(10) NOT NULL,
	PasswordHash		VARCHAR(512) NOT NULL,
	EmployeeIdFk		INT NOT NULL,
	FullName			VARCHAR(128) NOT NULL,
=======
    UserIdPk INT NOT NULL PRIMARY KEY identity (1,1), 
	UserRole VARCHAR(128) NOT NULL,
	EmailAddress VARCHAR(128) NOT NULL,
	Phone VARCHAR(256) NOT NULL,
	
	PasswordHash VARCHAR(256) NOT NULL,
>>>>>>> origin/rajashekar-viewfedaration-45


	--Audit columns
<<<<<<< HEAD
	CreatedByIdFk		INT NOT NULL,
	CreatedOn			DATETIME NOT NULL DEFAULT(GETDATE()),
	LastUpdatedByIdFk	INT  NULL,
	LastUpdatedOn		DATETIME NULL,

    CONSTRAINT FK_User_Employee FOREIGN KEY (EmployeeIdFk) REFERENCES Employee(EmployeeIdPk)
=======
	CreatedByIdFk INT NOT NULL,
	CreatedOn DATETIME NOT NULL DEFAULT(GETDATE()),
	LastUpdatedByIdFk INT  NULL,
	LastUpdatedOn DATETIME NULL,
	RoleIdFk int  null,
	EmployeeIdFk int Not Null ,
    CONSTRAINT FK_User_Employee FOREIGN KEY (EmployeeIdFk) REFERENCES Employee(EmployeeIdPk),
    CONSTRAINT FK_User_RoleMaster FOREIGN KEY (RoleIdFk) REFERENCES RoleMaster(RoleIdPk)

>>>>>>> origin/rajashekar-viewfedaration-45
)

