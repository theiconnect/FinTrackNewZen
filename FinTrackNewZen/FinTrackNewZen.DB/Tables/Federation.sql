CREATE TABLE [dbo.[Federation]
(
	FederationIdPk INT NOT NULL IDENTITY(1, 1) PRIMARY KEY, 
    FederationName VARCHAR(256) NOT NULL, 
    RegistrationNumber VARCHAR(128) NOT NULL, 
    RegistrationDate DATE NOT NULL, 
    ContactNumber VARCHAR(50) NOT NULL, 
    Email VARCHAR(100) NOT NULL, 
    Website VARCHAR(350) NULL, 
    FAX VARCHAR(100) NULL, 
    AddressLine1 VARCHAR(350) NOT NULL, 
    AddressLine2 VARCHAR(350) NULL, 
    Street VARCHAR(150) NOT NULL, 
    City VARCHAR(150) NOT NULL, 
    AddrState VARCHAR(100) NOT NULL, 
    Pincode INT NOT NULL, 
    LandMark VARCHAR(512) NOT NULL,
    CreatedByIdFk INT NOT NULL,
    CreatedOn DATETIME NOT NULL DEFAULT(GETDATE()),
    LastUpdatedByIdFk INT  NULL,
    LastUpdatedOn DATETIME NULL
)
