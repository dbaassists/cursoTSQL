







sp_helptext 'dbo.SP_Inserir_Funcionario'







SELECT * FROM sys.procedures



CREATE PROCEDURE [dbo].[SP_Inserir_Funcionario]
    @primeiro_nome VARCHAR(200),  
    @sobrenome VARCHAR(200),  
    @salario DECIMAL(23,2),  
    @cidade VARCHAR(200),
	@estado VARCHAR(200),
	@codigocargo INT
AS
BEGIN 


	INSERT INTO [dbo].[empregados]
	([primeiro_nome], [sobrenome], [salario], [cidade], [estado], [codigocargo])
	VALUES
	(@primeiro_nome,@sobrenome,@salario,@cidade,@estado,@codigocargo)


END 


DECLARE @primeiro_nome VARCHAR(200) = 'PAULO',  
    @sobrenome VARCHAR(200) = 'NUNES',  
    @salario DECIMAL(23,2) = '3000',  
    @cidade VARCHAR(200) = 'PORTO ALEGRE',
	@estado VARCHAR(200) = 'RS',
	@codigocargo INT = '2'

EXEC [dbo].[SP_Inserir_Funcionario] @primeiro_nome,@sobrenome,@salario,@cidade,@estado,@codigocargo



EXEC [dbo].[SP_Inserir_Funcionario] 'VAMPETA',NULL,'5000','SALVADOR','BA',1


SELECT * FROM [dbo].[empregados]



DROP PROCEDURE <Procedure_Name, sysname, ProcedureName> 



	-- Add the parameters for the stored procedure here
	<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>
END
GO







