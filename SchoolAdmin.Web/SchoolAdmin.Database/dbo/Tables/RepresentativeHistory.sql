CREATE TABLE [dbo].[RepresentativeHistory]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
	[RepresentativeId] INT NOT NULL,
    [Name] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [PhoneNumber1] NVARCHAR(20) NOT NULL, 
    [PhoneNumber2] NVARCHAR(20) NULL, 
    [Address] NVARCHAR(255) NOT NULL, 
    [Email] NVARCHAR(100) NULL, 
	[Active] BIT DEFAULT 1 NOT NULL,
    [RepresentativeStatusId] INT NOT NULL,
	[CreatedBy]	NVARCHAR(50) NOT NULL,
	[CreatedDate] DATETIME DEFAULT GETDATE() NOT NULL,
	[ModifiedBy] NVARCHAR(50) NULL,
	[ModifiedDate] DATETIME NULL, 
)
