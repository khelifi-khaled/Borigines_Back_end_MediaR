CREATE TABLE [dbo].[Publications]
(
	[Id] UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	[Date] DATETIME NOT NULL,
	[FK_IdUser] UNIQUEIDENTIFIER NOT NULL ,
	[FK_IdCategory] UNIQUEIDENTIFIER NOT NULL,
	[FK_IdContent] UNIQUEIDENTIFIER NOT NULL , 
    CONSTRAINT [FK_Publications_ToUsers] FOREIGN KEY ([FK_IdUser]) REFERENCES [Users]([Id]), 
    CONSTRAINT [FK_Publications_ToCategories] FOREIGN KEY ([FK_IdCategory]) REFERENCES [Categories]([Id]), 
    CONSTRAINT [FK_Publications_ToContents] FOREIGN KEY ([FK_IdContent]) REFERENCES [Contents]([Id]),
)
