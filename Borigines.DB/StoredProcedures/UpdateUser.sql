CREATE PROCEDURE [dbo].[UpdateUser]
	@fistName NVARCHAR(50),
	@lastName NVARCHAR(50),
	@login NVARCHAR(250),
	@pwd NVARCHAR(100),
	@id UNIQUEIDENTIFIER
AS
BEGIN 
	DECLARE @salt NVARCHAR(100)
	SET @salt =  CONCAT(NEWID(),NEWID(),NEWID())

	DECLARE @key NVARCHAR(64)
	SET @key = dbo.GetSecretKey()

	DECLARE @pwd_hash VARBINARY(64)
	SET @pwd_hash = HASHBYTES('SHA2_512', CONCAT(@salt,@key,@pwd,@salt))

	UPDATE Users SET FirstName = @fistName, 
					 LastName = @lastName, 
					 [Login] = @login, 
					 [Password] = @pwd_hash, 
					 Salt = @salt 
				 WHERE Id = @id
END 
