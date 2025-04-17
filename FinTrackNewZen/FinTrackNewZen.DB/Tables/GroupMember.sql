CREATE TABLE [dbo].[GroupMember]
(
    GroupMemberIdPk INT NOT NULL PRIMARY KEY identity (1,1), 
    FirstName VARCHAR(256) NOT NULL, 
    LastName VARCHAR(256) NOT NULL,

    DOJ DATE NOT NULL, 
	DOE DATE NULL, 


    AadhaarNumber VARCHAR(256) NOT NULL, 
    PAN VARCHAR(256) NOT NULL, 
	DOB VARCHAR(256) NOT NULL, 
	Photo VARCHAR(MAX) NOT NULL,

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

	--Permanent Address Info
	PermAddressLine1 VARCHAR(512) NOT NULL, 
	PermAddressLine2 VARCHAR(512) NULL, 
    PermStreet VARCHAR(256) NULL, 
    PermCity VARCHAR(256) NOT NULL, 
    PermState VARCHAR(256) NOT NULL, 
    PermPincode INT NOT NULL, 

	--Bank Account Details
	BankName VARCHAR(256) NOT NULL, 
	IFSCCode VARCHAR(256) NOT NULL,
	AccountNumber VARCHAR(256) NOT NULL,
	AccountHolderName VARCHAR(256) NOT NULL,

	--Audit columns
    CreatedByIdFk INT NOT NULL,
    CreatedOn DATETIME NOT NULL DEFAULT(GETDATE()),
    LastUpdatedByIdFk INT  NULL,
    LastUpdatedOn DATETIME NULL,

	AccountTypeIdFk int NOT NULL,
	CONSTRAINT FK_GroupMember_AccountTypeMaster FOREIGN KEY (AccountTypeIdFk) REFERENCES AccountTypeMaster([AccountTypeIdPk]),

	StatusIdFk INT NOT NULL,
	CONSTRAINT FK_GroupMember_StatusMaster FOREIGN KEY (StatusIdFk) REFERENCES StatusMaster(StatusIdPk),

	DouctmentTypeIdFk INT NOT NULL,
	CONSTRAINT FK_GroupMember_DocumentTypeMaster FOREIGN KEY (DouctmentTypeIdFk) REFERENCES DocumentTypeMaster(DocumentTypeIdPk),

    GroupIdFk INT NOT NULL,
    CONSTRAINT FK_GroupMember_Group FOREIGN KEY (GroupIdFk) REFERENCES [Group](GroupIdPk)
)
