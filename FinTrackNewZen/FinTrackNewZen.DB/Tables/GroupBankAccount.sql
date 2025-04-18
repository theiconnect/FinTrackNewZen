CREATE TABLE [dbo].[GroupBankAccount]

(
    GroupBankAccountIdPk    INT NOT NULL PRIMARY KEY identity (1,1), 
    AccountNumber           VARCHAR(256) NOT NULL,
    BankName                VARCHAR(256) NOT NULL, 
    IFSCCode                VARCHAR(256) NOT NULL,
    AccountHolderName       VARCHAR(256) NOT NULL,
	
    BankAddress             VARCHAR(max)  NULL, 
    IsPrimary               BIT  NOT NULL DEFAULT(0),

    AccountTypeIdFk         INT NOT NULL,
	StatusIdFk              INT NOT NULL,
    GroupIdFk               INT NOT NULL,
    CONSTRAINT FK_GroupBankAccount_Group FOREIGN KEY (GroupIdFk) REFERENCES [Group](GroupIdPk),
	CONSTRAINT FK_GroupBankAccount_StatusMaster FOREIGN KEY (StatusIdFk) REFERENCES StatusMaster(StatusIdPk),
 	CONSTRAINT FK_GroupBankAccount_AccountTypeMaster FOREIGN KEY (AccountTypeIdFk) REFERENCES AccountTypeMaster([AccountTypeIdPk])
)
