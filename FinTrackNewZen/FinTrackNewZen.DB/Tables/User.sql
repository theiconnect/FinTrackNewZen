CREATE TABLE [dbo].[User]
(
    UserIdPk			INT NOT NULL PRIMARY KEY IDENTITY (1,1), 
	EmailAddress		VARCHAR(128) NOT NULL,
	Phone				VARCHAR(10) NOT NULL,
	PasswordHash		VARCHAR(512) NOT NULL,
	EmployeeIdFk		INT NOT NULL,
	FullName			VARCHAR(128) NOT NULL,


	--Audit columns
	CreatedByIdFk		INT NOT NULL,
	CreatedOn			DATETIME NOT NULL DEFAULT(GETDATE()),
	LastUpdatedByIdFk	INT  NULL,
	LastUpdatedOn		DATETIME NULL,

    CONSTRAINT FK_User_Employee FOREIGN KEY (EmployeeIdFk) REFERENCES Employee(EmployeeIdPk)
)

