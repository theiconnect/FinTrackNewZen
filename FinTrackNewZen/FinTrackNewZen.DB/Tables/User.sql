CREATE TABLE [dbo].[User]
(
    UserIdPk INT NOT NULL PRIMARY KEY identity (1,1), 
	UserRole VARCHAR(128) NOT NULL,
	LoginTime DATETIME NULL,
	LogoutTime DATETIME NULL,
	EmailAddress VARCHAR(128) NOT NULL,
	Phone VARCHAR(256) NOT NULL,
	
	[Password] VARCHAR(256) NOT NULL,

	OTP VARCHAR(128) NOT NULL,

	--Audit columns
	CreatedByIdFk INT NOT NULL,
	CreatedOn DATETIME NOT NULL DEFAULT(GETDATE()),
	LastUpdatedByIdFk INT  NULL,
	LastUpdatedOn DATETIME NULL,

	EmployeeIdFk int Not Null ,
    CONSTRAINT FK_User_Employee FOREIGN KEY (EmployeeIdFk) REFERENCES Employee(EmployeeIdPk)
)
