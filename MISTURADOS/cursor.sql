

DECLARE LeituraEmpregados CURSOR FOR  
    SELECT [primeiro_nome], [sobrenome], [salario], [cidade], [estado], [codigocargo]
    FROM [dbo].[empregados]

OPEN LeituraEmpregados

DECLARE @primeiro_nome VARCHAR(200)
    ,@sobrenome VARCHAR(200)
    ,@salario DECIMAL(23,2)
    ,@cidade VARCHAR(200)
	,@estado VARCHAR(200)
	,@codigocargo INT

FETCH NEXT FROM LeituraEmpregados 
INTO @primeiro_nome
    ,@sobrenome
    ,@salario
    ,@cidade
	,@estado
	,@codigocargo

WHILE @@FETCH_STATUS = 0 
BEGIN 

    print('primeiro_nome: '+@primeiro_nome)

    FETCH NEXT FROM LeituraEmpregados 
    INTO @primeiro_nome
    ,@sobrenome
    ,@salario
    ,@cidade
	,@estado
	,@codigocargo

END

CLOSE LeituraEmpregados
DEALLOCATE LeituraEmpregados

