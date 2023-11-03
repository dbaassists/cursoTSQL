

CREATE FUNCTION dbo.udfRetiraAcento (@cExpressao varchar(100))
RETURNS VARCHAR(100)
AS
BEGIN
   DECLARE @cRetorno VARCHAR(100)
   
   Set @cRetorno = @cExpressao collate sql_latin1_general_cp1251_cs_as
   
   RETURN @cRetorno
   
END





CREATE FUNCTION dbo.udfEmpregadoCargo (
    @codigocargo INT
)
RETURNS TABLE
AS
RETURN
    SELECT 
      [codigo_empregado], [primeiro_nome], 
	  [sobrenome], [salario], [cidade], [estado]   
    FROM
        [dbo].[empregados]
    WHERE
        [codigocargo] = @codigocargo;


SELECT * 
FROM udfEmpregadoCargo(1)


