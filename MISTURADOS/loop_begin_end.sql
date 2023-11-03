
USE DBDBAASSISTS
GO

BEGIN 

	DECLARE @CODIGOCARGO INT
	SET @CODIGOCARGO = 1

	SELECT [codigo_empregado]
		  ,[primeiro_nome]
		  ,[sobrenome]
		  ,[cidade]
		  ,[salario]
		  ,[estado]
		  ,[codigocargo]
	FROM [dbo].[empregados]
	WHERE codigocargo = @CODIGOCARGO

END 



