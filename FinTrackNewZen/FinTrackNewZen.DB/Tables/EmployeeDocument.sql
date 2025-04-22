CREATE TABLE [dbo].[EmployeeDocument]
(
    EmployeeDocumentIdPk INT NOT NULL PRIMARY KEY identity (1,1),
    DocumentName VARCHAR(256) NOT NULL, 
    DocumentPath VARCHAR(256) NOT NULL,

    EmployeeIdFk INT NOT NULL,
    CONSTRAINT FK_EmployeeDocument_Employee FOREIGN KEY (EmployeeIdFk) REFERENCES Employee(EmployeeIdPk),

	DocumentTypeIdFk INT NOT NULL,
	CONSTRAINT FK_EmployeeDocument_DocumentTypeMaster FOREIGN KEY (DocumentTypeIdFk) REFERENCES DocumentTypeMaster(DocumentTypeIdPk),

	StatusIdFk  int Not Null ,
    CONSTRAINT FK_EmployeeDocument_StatusMaster FOREIGN KEY (StatusIdFk) REFERENCES StatusMaster(StatusIdPk)
)