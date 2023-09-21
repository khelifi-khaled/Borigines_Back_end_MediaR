CREATE TABLE [dbo].[PublicationPictures]
(
	[FK_IdPublication] INT NOT NULL,
	[FK_IdPicture] INT NOT NULL, 
    CONSTRAINT [FK_PublicationPictures_ToPublications] FOREIGN KEY ([FK_IdPublication]) REFERENCES [Publications]([Id]), 
    CONSTRAINT [FK_PublicationPictures_ToPictures] FOREIGN KEY ([FK_IdPicture]) REFERENCES [Pictures]([Id])
)
