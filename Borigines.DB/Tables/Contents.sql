CREATE TABLE [dbo].[Contents]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	[Title] NVARCHAR(100) NOT NULL,
	[Description] TEXT NOT NULL,
	[LanguageId] INT NOT NULL, 
    CONSTRAINT [FK_Contents_ToLanguage] FOREIGN KEY ([LanguageId]) REFERENCES [Languages]([Id])
)
