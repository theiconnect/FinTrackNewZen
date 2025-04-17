
CREATE TABLE dbo.Employee
(
    EmployeeIdPk INT NOT NULL PRIMARY KEY IDENTITY (1,1), 
	-- Personal info
	FirstName VARCHAR(256) NOT NULL, 
    LastName VARCHAR(256) NOT NULL,
    DOB DATE NOT NULL, 
    HighestQualification VARCHAR(128) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    BloodGroup VARCHAR(256)NOT NULL,

	--Contact Info
	Mobile VARCHAR(128) NOT NULL, 
    AlternateMobile VARCHAR(128) NULL,
    Email VARCHAR(100) NOT NULL,
	--Current Address Info
	CurrentAddressLine1 VARCHAR(512) NOT NULL, 
    CurrentAddressLine2 VARCHAR(512) NULL, 
    CurrentStreet VARCHAR(256) NULL, 
    CurrentCity VARCHAR(256) NOT NULL, 
    CurrentState VARCHAR(256) NOT NULL, 
    CurrentPincode INT NOT NULL, 
	--Permanant Address Info
	PermAddressLine1 VARCHAR(512) NOT NULL, 
	PermAddressLine2 VARCHAR(512) NULL, 
    PermStreet VARCHAR(256) NULL, 
    PermCity VARCHAR(256) NOT NULL, 
    PermState VARCHAR(256) NOT NULL, 
    PermPincode INT NOT NULL, 
    --Proffessional Info
    DOJ DATE NOT NULL, 
    AadhaarNumber VARCHAR(256) NOT NULL, 
    PAN VARCHAR(256) NOT NULL, 
    UAN VARCHAR(128)NOT NULL,
    PFAccountNumber VARCHAR(128)NOT NULL,
	DepartmentIdFk INT NULL,
	DesignationIdFk INT NULL,

	--Employee's Bank Account Details
    AccountNumber VARCHAR(256) NOT NULL, 
    AccountHolderName VARCHAR(256) NOT NULL,
    BankName VARCHAR(256) NOT NULL, 
    IFSCCode VARCHAR(256) NOT NULL, 
	AccountTypeIdFk INT NULL,
    --Nominee 
	NomineeName VARCHAR(512) NULL,
	NomineeRelationship VARCHAR(512) NULL,
	NomineeContactNumber VARCHAR(512) NULL,
	NomineeEmailAddress VARCHAR(512) NULL,
    
    StatusIdFk INT NOT NULL,
    FederationIdFk INT NOT NULL,

    --Audit columns
    CreatedByIdFk INT NOT NULL,
    CreatedOn DATETIME NOT NULL DEFAULT(GETDATE()),
    LastUpdatedByIdFk INT  NULL,
    LastUpdatedOn DATETIME NULL,

    CONSTRAINT FK_Employee_Federation FOREIGN KEY (FederationIdFk) REFERENCES Federation(FederationIdPk),
	CONSTRAINT FK_Employee_StatusMaster FOREIGN KEY(StatusIdFk) REFERENCES StatusMaster(StatusIdPk),
	CONSTRAINT FK_Employee_AccountTypeMaster FOREIGN KEY(AccountTypeIdFk) REFERENCES AccountTypeMaster(AccountTypeIdPk),
	CONSTRAINT FK_Employee_Department FOREIGN KEY(DepartmentIdFk) REFERENCES Department(DepartmentIdPk),
	CONSTRAINT FK_Employee_Designation FOREIGN KEY(DesignationIdFk) REFERENCES Designation(DesignationIdPk)
)