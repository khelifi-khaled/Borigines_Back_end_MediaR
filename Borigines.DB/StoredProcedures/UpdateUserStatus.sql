CREATE PROCEDURE [dbo].[UpdateUserStatus]
	@id INT,
	@status BIT
AS
BEGIN 
	update Users SET IsActive = @status WHERE Id = @Id ; 
END
