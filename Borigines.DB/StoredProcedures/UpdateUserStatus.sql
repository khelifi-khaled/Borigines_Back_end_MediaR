CREATE PROCEDURE [dbo].[UpdateUserStatus]
	@id UNIQUEIDENTIFIER,
	@status BIT
AS
BEGIN 
	update Users SET IsActive = @status WHERE Id = @id ; 
END
