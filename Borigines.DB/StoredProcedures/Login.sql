CREATE PROCEDURE [dbo].[Login]
	@login NVARCHAR(250),
	@pwd NVARCHAR (100)
AS
BEGIN 

	DECLARE @salt NVARCHAR(100)
	SET @salt = (SELECT Salt FROM Users WHERE [Login] = @login)

	DECLARE @key NVARCHAR(64)
	SET @key = dbo.GetSecretKey()

	DECLARE @pwd_hash VARBINARY(64)
	SET @pwd_hash = HASHBYTES('SHA2_512', CONCAT(@salt,@key,@pwd,@salt))

	SELECT Id , FirstName , LastName , IsAdmin , [Login]  
	FROM Users 
	WHERE [Login] = @login AND [Password]  = @pwd_hash AND IsActive = 1 ;

END 
