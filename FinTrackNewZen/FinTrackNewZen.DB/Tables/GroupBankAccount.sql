CREATE TABLE [dbo].[GroupBankAccount]

(
    GroupBankAccountIdPk INT NOT NULL PRIMARY KEY identity (1,1), 
    AccountNumber VARCHAR(256) NOT NULL,
    BankName VARCHAR(256) NOT NULL, 
    IFSCCode VARCHAR(256) NOT NULL,
    AccountHolderName VARCHAR(256) NOT NULL,
	
    BankAddress VARCHAR(max)  NULL, 
    IsPrimary bit  Not Null Default(0),

    AccountTypeIdFk int NOT NULL,
 	CONSTRAINT FK_GroupBankAccount_AccountTypeMaster FOREIGN KEY (AccountTypeIdFk) REFERENCES AccountTypeMaster([AccountTypeIdPk]),

	StatusIdFk INT NOT NULL,
	CONSTRAINT FK_GroupBankAccount_StatusMaster FOREIGN KEY (StatusIdFk) REFERENCES StatusMaster(StatusIdPk),

    GroupIdFk INT NOT NULL,
    CONSTRAINT FK_GroupBankAccount_Group FOREIGN KEY (GroupIdFk) REFERENCES [Group](GroupIdPk)
)
