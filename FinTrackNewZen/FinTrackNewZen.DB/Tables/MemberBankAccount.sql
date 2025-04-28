CREATE TABLE dbo.MemberBankAccount
(
    MemberBankAccountIdPk INT NOT NULL PRIMARY KEY identity (1,1), 
    BankName VARCHAR(256) NOT NULL, 
    IFSCCode VARCHAR(256) NOT NULL,
    AccountNumber VARCHAR(256) NOT NULL, 
    AccountHolderName VARCHAR(256) NOT NULL,

    MemberBankAddress VARCHAR(max) NOT NULL, 

	StatusIdFk INT NOT NULL,
	CONSTRAINT FK_MemberBankAccount_StatusMaster FOREIGN KEY(StatusIdFk) REFERENCES StatusMaster(StatusIdPk),

	AccountTypeIdFk INT NULL,
	CONSTRAINT FK_MemberBankAccount_AccountTypeMaster FOREIGN KEY(AccountTypeIdFk) REFERENCES AccountTypeMaster(AccountTypeIdPk),

    MemberIdFk INT NOT NULL,
    CONSTRAINT FK_MemberBank_GroupMember FOREIGN KEY (MemberIdFk) REFERENCES GroupMember(MemberIdPk)
)