CREATE TABLE [dbo].[Publications]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Date] DATETIME NOT NULL,
	[FK_IdUser] INT NOT NULL,
	[FK_IdCategory] INT NOT NULL,
	[FK_IdContent] INT NOT NULL, 
    CONSTRAINT [FK_Publications_ToUsers] FOREIGN KEY ([FK_IdUser]) REFERENCES [Users]([Id]), 
    CONSTRAINT [FK_Publications_ToCategories] FOREIGN KEY ([FK_IdCategory]) REFERENCES [Categories]([Id]), 
    CONSTRAINT [FK_Publications_ToContents] FOREIGN KEY ([FK_IdContent]) REFERENCES [Contents]([Id]),
)
