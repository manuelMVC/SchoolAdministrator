﻿CREATE TABLE [dbo].[Level]
(
	[Id]			INT	IDENTITY(1,1)	NOT NULL PRIMARY KEY,
	[Description]	NVARCHAR(50)		NOT NULL,
	[Active]		BIT					NOT NULL DEFAULT 0,
	[CreatedBy]		NVARCHAR(100)		NOT NULL,
	[CreatedDate]	DATETIME			NOT NULL DEFAULT GETDATE()
)
