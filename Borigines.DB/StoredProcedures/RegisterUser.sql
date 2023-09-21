CREATE PROCEDURE [dbo].[RegisterUser]
	@firstName NVARCHAR(50),
	@lastName NVARCHAR(50),
	@login NVARCHAR(250),
	@pwd NVARCHAR (100)

AS

BEGIN 
	DECLARE @salt NVARCHAR(100)
	SET @salt = (dbo.GetSalt())

	DECLARE @key NVARCHAR(64)
	SET @key = (dbo.GetSecretKey)

	DECLARE @pwd_hash VARBINARY(64)
	SET @pwd_hash = HASHBYTES('SHA2_512', CONCAT(@salt,@key,@pwd,@salt))

	INSERT INTO Users (FirstName, LastName, [Login], [Password], Salt)
	VALUES (@firstName, @lastName, @login, @pwd_hash, @salt)

END 
