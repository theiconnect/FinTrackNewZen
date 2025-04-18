CREATE TABLE [dbo].[MemberDocument]
(
    MemberDocumentIdPk  INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	DocumentTypeIdFk    INT NOT NULL,
    DocumentName        VARCHAR(512) NOT NULL, 
    DocumentPath        VARCHAR(MAX) NOT NULL,
    MemberIdFk          INT NOT NULL,
	StatusIdFk          INT NOT NULL,
	
    CONSTRAINT FK_MemberDocument_DocumentTypeMaster FOREIGN KEY (DocumentTypeIdFk) REFERENCES DocumentTypeMaster(DocumentTypeIdPk),
    CONSTRAINT FK_MemberDocument_GroupMember FOREIGN KEY (MemberIdFk) REFERENCES GroupMember(MemberIdPk),
    CONSTRAINT FK_MemberDocument_StatusMaster FOREIGN KEY (StatusIdFk) REFERENCES StatusMaster([StatusIdPk])

)
