CREATE TABLE [dbo].[Federation]
(
	[FederationIdPk] INT NOT NULL PRIMARY KEY, 
    [FName] VARCHAR(256) NOT NULL, 
    [FRegistrationNumber] VARCHAR(128) NOT NULL, 
    [FFedRegistrationDate] DATE NOT NULL, 
    [FLoaction ] VARCHAR(350) NOT NULL, 
    [FContactNumber] VARCHAR(50) NOT NULL, 
    [FEmail] VARCHAR(100) NOT NULL, 
    [FWebsiteAddress] VARCHAR(350) NOT NULL, 
    [FFaxNumber] VARCHAR(100) NOT NULL, 
    [FAddressLine] VARCHAR(350) NULL, 
    [FAddressLine1] VARCHAR(350) NULL, 
    [Fstreet] VARCHAR(150) NOT NULL, 
    [FCity] VARCHAR(150) NULL, 
    [FState] VARCHAR(100) NULL, 
    [FPincode] INT NULL, 
    [FBank] VARCHAR(50) NULL, 
    [FDocuments] VARCHAR(150) NULL
)
