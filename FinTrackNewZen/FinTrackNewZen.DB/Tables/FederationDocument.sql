
CREATE TABLE [dbo].[FederationDocument]
(
	[FederationDocumentIdPk] INT NOT NULL PRIMARY KEY identity (1,1),
    DouctmentTypeIdFk int Not Null,
    DocumentName VARCHAR(256) NOT NULL, 
    DocumentPath VARCHAR(Max) NOT NULL,  
    StatusIdFk  int Not Null ,
    [FederationIdFk] INT NOT NULL,
    CONSTRAINT fk_FederationDocument_Federation FOREIGN KEY (FederationIdFk) REFERENCES Federation(FederationIdPk),
    CONSTRAINT fk_FederationDocument_DocumentTypeMaster FOREIGN KEY (DouctmentTypeIdFk) REFERENCES DocumentTypeMaster(DocumentTypeIdPk),
    CONSTRAINT fk_FederationDocument_StatusMaster FOREIGN KEY (StatusIdFk) REFERENCES StatusMaster([StatusIdPk])
)