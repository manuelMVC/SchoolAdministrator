CREATE TABLE [dbo].[StudentRepresentative]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[StudentId] INT NOT NULL,
	[RepresentativeId] INT NOT NULL,
	[Active] BIT DEFAULT 1 NOT NULL,
	[CreatedBy] NVARCHAR(50) NOT NULL,
	[CreatedDate] DATETIME DEFAULT GETDATE() NOT NULL,
	[ModifiedBy] NVARCHAR(50) NULL,
	[ModifiedDate] DATETIME NULL, 
    CONSTRAINT [FK_StudentRepresentative_ToStudent] FOREIGN KEY ([StudentId]) REFERENCES [Student]([Id]), 
    CONSTRAINT [FK_StudentRepresentative_ToRepresentative] FOREIGN KEY ([RepresentativeId]) REFERENCES [Representative]([Id])
)

GO

CREATE UNIQUE INDEX [IX_StudentRepresentative_StudentRepresentative] ON [dbo].[StudentRepresentative] ([StudentId],[RepresentativeId])
