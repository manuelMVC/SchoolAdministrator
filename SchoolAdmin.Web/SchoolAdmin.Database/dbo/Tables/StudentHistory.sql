CREATE TABLE [dbo].[StudentHistory]
(
	[Id]				INT	IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[StudentId]			INT				NOT NULL, 
    [Name] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [BirthDate] DATE NOT NULL, 
    [Address] NVARCHAR(500) NOT NULL, 
	[StudentStatusId]	INT				NOT NULL,
	[Active] BIT NOT NULL,
	[Comments]			NVARCHAR(255)	NULL,
	[CreatedBy]			NVARCHAR(100)	NOT NULL,
	[CreatedDate]		DATETIME		NOT NULL DEFAULT GETDATE(), 
    CONSTRAINT [FK_StudentHistory_ToStudent] FOREIGN KEY ([StudentId]) REFERENCES [Student]([Id]), 
    CONSTRAINT [FK_StudentHistory_ToStudentStatus] FOREIGN KEY ([StudentStatusId]) REFERENCES [StudentStatus]([Id])
)
