CREATE TABLE [dbo].[GroupMember]
(
    MemberIdPk      INT NOT NULL PRIMARY KEY identity (1,1), 
    FirstName       VARCHAR(256) NOT NULL, 
    LastName        VARCHAR(256) NOT NULL,
    DOJ             DATE NOT NULL, 
	DateOfExit      DATE NULL, 
    AadhaarNumber   VARCHAR(256) NULL, 
    PAN             VARCHAR(256) NULL, 
	DOB             VARCHAR(256) NULL, 
	PhotoPath       VARCHAR(MAX) NOT NULL,
	--Contact Info
	Mobile          VARCHAR(128) NOT NULL, 
    AlternateMobile VARCHAR(128) NULL,
    Email           VARCHAR(100) NULL,

	StatusIdFk          INT NOT NULL,
    GroupIdFk           INT NOT NULL,
    
	--Current Address Info
    CurrentAddressLine1 VARCHAR(512) NOT NULL, 
	CurrentAddressLine2 VARCHAR(512) NULL, 
    CurrentStreet       VARCHAR(256) NULL, 
    CurrentCity         VARCHAR(256) NOT NULL, 
    CurrentState        VARCHAR(256) NOT NULL, 
    CurrentPincode      VARCHAR(50)  NOT NULL, 

	--Permanent Address Info
	PermAddressLine1    VARCHAR(512) NOT NULL, 
	PermAddressLine2    VARCHAR(512) NULL, 
    PermStreet          VARCHAR(256) NULL, 
    PermCity            VARCHAR(256) NOT NULL, 
    PermState           VARCHAR(256) NOT NULL, 
    PermPincode         VARCHAR(50)  NOT NULL, 

	--Bank Account Details
	BankName            VARCHAR(256) NULL, 
	IFSCCode            VARCHAR(256) NULL,
	AccountNumber       VARCHAR(256) NULL,
	AccountHolderName   VARCHAR(256) NULL,
	AccountTypeIdFk     INT NULL,

	--Audit columns
    CreatedByIdFk       INT NOT NULL,
    CreatedOn           DATETIME NOT NULL DEFAULT(GETDATE()),
    LastUpdatedByIdFk   INT  NULL,
    LastUpdatedOn       DATETIME NULL,

	CONSTRAINT FK_GroupMember_AccountTypeMaster FOREIGN KEY (AccountTypeIdFk) REFERENCES AccountTypeMaster([AccountTypeIdPk]),
	CONSTRAINT FK_GroupMember_StatusMaster FOREIGN KEY (StatusIdFk) REFERENCES StatusMaster(StatusIdPk),
    CONSTRAINT FK_GroupMember_Group FOREIGN KEY (GroupIdFk) REFERENCES [Group](GroupIdPk)
)
