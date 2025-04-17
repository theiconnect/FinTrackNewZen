CREATE TABLE [dbo].[Group]
(
	GroupIdPk INT NOT NULL PRIMARY KEY identity (1,1), 
    GroupCode INT NOT NULL, 
    GroupName VARCHAR(128) NOT NULL, 
    CreationDate DATE NOT NULL, 
    MaxAllowedMembers int NOT NULL, 
	
	Mobile VARCHAR(128) NOT NULL, 
    AlternateMobile VARCHAR(128) NULL,

    --Audit columns
    CreatedByIdFk INT NOT NULL,
    CreatedOn DATETIME NOT NULL DEFAULT(GETDATE()),
    LastUpdatedByIdFk INT  NULL,
    LastUpdatedOn DATETIME NULL,


	StatusIdFk INT NOT NULL,
	CONSTRAINT FK_Group_StatusMaster FOREIGN KEY (StatusIdFk) REFERENCES StatusMaster(StatusIdPk),

    BranchIdFk INT NOT NULL,
    CONSTRAINT FK_Group_Branch FOREIGN KEY (BranchIdFk) REFERENCES Branch(BranchIdPk)
)
