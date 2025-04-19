
CREATE TABLE dbo.Branch
(
    BranchIdPk INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	BranchCode	VARCHAR(50) NOT NULL UNIQUE,
    AddressLine1 VARCHAR(512) NULL, 
    AddressLine2 VARCHAR(512) NULL, 
    Street VARCHAR(256) NULL, 
    City VARCHAR(256) NULL, 
    State VARCHAR(256) NULL, 
    Pincode INT NULL,
    BranchLandmark VARCHAR(512) NULL,
    BranchContactPersonName VARCHAR(128) NULL,
    BranchContact VARCHAR(128) NULL, 
    FederationIdFk INT NOT NULL,
	--Audit columns
	CreatedByIdFk INT NOT NULL,
	CreatedOn DATETIME NOT NULL DEFAULT(GETDATE()),
	LastUpdatedByIdFk INT  NULL,
	LastUpdatedOn DATETIME NULL,
    FOREIGN KEY (FederationIdFk) REFERENCES Federation(FederationIdPk)
)
