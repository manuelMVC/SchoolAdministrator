CREATE TABLE [dbo].[UserRole]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [UserId] INT NOT NULL,
	[RoleId] INT NOT NULL,
	[Active]		BIT NOT NULL DEFAULT 1,
	[CreatedBy] NVARCHAR(50) NOT NULL,
	[CreatedDate] DATETIME DEFAULT GETDATE() NOT NULL, 
	[ModifiedBy] NVARCHAR(50) NULL,
	[ModifiedDate] DATETIME NULL	
    CONSTRAINT [FK_UserRole_ToUser] FOREIGN KEY ([UserId]) REFERENCES [User]([Id]), 
    CONSTRAINT [FK_UserRole_ToRole] FOREIGN KEY ([RoleId]) REFERENCES [Role]([Id])
)
