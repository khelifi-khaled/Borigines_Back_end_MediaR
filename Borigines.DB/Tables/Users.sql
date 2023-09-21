﻿CREATE TABLE [dbo].[Users]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [FirstName] NVARCHAR(50) NOT NULL,
	[LastName] NVARCHAR(50) NOT NULL,
	[Login] NVARCHAR(250) NOT NULL,
	[Password] NVARCHAR(64) NOT NULL,
	[Salt] NVARCHAR(100) NOT NULL,
	[IsAdmin] BIT NOT NULL DEFAULT 0,
	[IsActive] BIT NOT NULL DEFAULT 0,
)