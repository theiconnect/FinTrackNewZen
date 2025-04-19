CREATE TABLE [dbo].[GroupLeader]
(
    GroupLeaderIdPk INT NOT NULL PRIMARY KEY identity (1,1), 

	CurrentRole VARCHAR(128) NOT NULL,
	StartDate DATETIME NOT NULL,
	EndDate DATETIME NULL,

	--Audit columns
	CreatedByIdFk INT NOT NULL,
	CreatedOn DATETIME NOT NULL DEFAULT(GETDATE()),
	LastUpdatedByIdFk INT  NULL,
	LastUpdatedOn DATETIME NULL,


	GroupMemberIdFk INT NOT NULL,
	StatusIdFk INT NOT NULL,
	GroupIdFk INT NOT NULL,
	
	CONSTRAINT FK_GroupLeader_GroupMember FOREIGN KEY (GroupMemberIdFk) REFERENCES GroupMember(GroupMemberIdPk),
    CONSTRAINT FK_GroupLeader_StatusMaster FOREIGN KEY (StatusIdFk) REFERENCES StatusMaster(StatusIdPk),
    CONSTRAINT FK_GroupLeader_Group FOREIGN KEY (GroupIdFk) REFERENCES [Group](GroupIdPk),

)
