CREATE TABLE [dbo].[Contents]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Title] NVARCHAR(100) NOT NULL,
	[Description] TEXT NOT NULL,
	[LanguageId] INT NOT NULL, 
    CONSTRAINT [FK_Contents_ToLanguage] FOREIGN KEY ([LanguageId]) REFERENCES [Languages]([Id])
)
