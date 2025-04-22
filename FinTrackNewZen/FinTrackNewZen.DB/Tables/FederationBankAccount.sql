
CREATE TABLE [dbo].[FederationBankAccount]
(
	[FederationBankAccountIdPk] INT NOT NULL PRIMARY KEY identity (1,1),
	[AccountNumber] VARCHAR(256) NOT NULL,
    [BankName] VARCHAR(256) NOT NULL, 
    [IFSCCode] VARCHAR(256) NOT NULL,
    [AccountHolderName] VARCHAR(256) NOT NULL,
    [AccountTypeIdFk] int NOT NULL,
 
    BankAddress VARCHAR(max)  NULL, 
     Isprimary bit  Not Null Default(0),
     StatusIdFk  int Not Null ,
    [FederationIdFk] INT NOT NULL,
    FOREIGN KEY (FederationIdFk) REFERENCES Federation(FederationIdPk),
    FOREIGN KEY ([AccountTypeIdFk]) REFERENCES AccountTypeMaster([AccountTypeIdPk]),
    FOREIGN KEY (StatusIdFk) REFERENCES StatusMaster([StatusIdPk])
)
