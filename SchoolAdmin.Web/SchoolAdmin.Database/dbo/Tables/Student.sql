CREATE TABLE [dbo].[Student]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [BirthDate] DATE NOT NULL, 
    [Address] NVARCHAR(500) NOT NULL, 
    [LevelId] INT NOT NULL, 
    [StudentStatusId] INT NOT NULL,
	[Active]	BIT DEFAULT 0 NOT NULL,
	[CreatedBy]	NVARCHAR(100) NOT NULL,
	[CreatedDate] DATETIME DEFAULT GETDATE(),
	[ModifiedBy] NVARCHAR(100) NULL,
	[ModifiedDate] DATETIME NULL, 
    CONSTRAINT [FK_Student_ToStudentStatus] FOREIGN KEY ([StudentStatusId]) REFERENCES [StudentStatus]([Id])
)