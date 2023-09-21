CREATE TABLE [dbo].[AlbumsPictures]
(
	[FK_IdAlbum] INT NOT NULL,
	[FK_IdPicture] INT NOT NULL, 
	CONSTRAINT [FK_AlbumsPictures_ToAlbums] FOREIGN KEY ([FK_IdAlbum]) REFERENCES [Albums]([Id]), 
	CONSTRAINT [FK_AlbumsPictures_ToPictures] FOREIGN KEY ([FK_IdPicture]) REFERENCES [Pictures]([Id])
)
