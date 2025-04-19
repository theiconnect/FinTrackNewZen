CREATE TABLE [dbo].[MemberDocument]
(
    MemberDocumentIdPk INT NOT NULL PRIMARY KEY identity (1,1),
    DocumentName VARCHAR(256) NOT NULL, 
    DocumentPath VARCHAR(256) NOT NULL,

    GroupMemberIdFk INT NOT NULL,
    CONSTRAINT FK_MemberDocument_GroupMember FOREIGN KEY (GroupMemberIdFk) REFERENCES GroupMember(GroupMemberIdPk),



	DocumentTypeIdFk INT NOT NULL,
	CONSTRAINT FK_MemberDocument_DocumentTypeMaster FOREIGN KEY (DocumentTypeIdFk) REFERENCES DocumentTypeMaster(DocumentTypeIdPk),


	StatusIdFk  int Not Null ,
    CONSTRAINT FK_MemberDocument_StatusMaster FOREIGN KEY (StatusIdFk) REFERENCES StatusMaster([StatusIdPk])

)
