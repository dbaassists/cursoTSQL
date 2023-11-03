
















































USE DBDBAASSISTS
GO

------------------------------------------------------------------------------------------------
-- Alterar Idioma mensagem: Alteração de idioma para mensagem de erro
------------------------------------------------------------------------------------------------

SET LANGUAGE 'ENGLISH'

------------------------------------------------------------------------------------------------
-- Definição da Tabela
------------------------------------------------------------------------------------------------

DECLARE @FUNCIONARIO
TABLE (CODFUNCIONARIO TINYINT
, NOMEFUNCIONARIO VARCHAR(100)
, DATANASCIMENTO DATETIME
,SALARIO DECIMAL(23,2)
)

------------------------------------------------------------------------------------------------
-- Insert de Dados na Tabela
------------------------------------------------------------------------------------------------

INSERT INTO @FUNCIONARIO VALUES (1, 'PEDRO','19811114','1500.99')
INSERT INTO @FUNCIONARIO VALUES (2, 'JOÃO','19840128','2319.65')

------------------------------------------------------------------------------------------------
-- Conversão de Dados
------------------------------------------------------------------------------------------------

IF EXISTS (SELECT 1 FROM sys.tables WHERE NAME = 'TMP_FUNCIONARIO')
DROP TABLE dbo.TMP_FUNCIONARIO;

SELECT 

CODFUNCIONARIO	
,NOMEFUNCIONARIO	
,CONVERT(VARCHAR(10),DATANASCIMENTO,103) DATANASCIMENTO
,CAST(SALARIO AS VARCHAR(10)) SALARIO 
,TRY_CAST(NOMEFUNCIONARIO AS INT) NOMEFUNCIONARIO_TC
,TRY_CONVERT(INT, NOMEFUNCIONARIO ) NOMEFUNCIONARIO_TCV
,PARSE('1984-01-28' AS DATETIME2) DATANASCIMENTO_P
,TRY_PARSE('28/01/1984' AS DATETIME2) DATANASCIMENTO_TP

INTO dbo.TMP_FUNCIONARIO

FROM @FUNCIONARIO
GO

SELECT * FROM dbo.TMP_FUNCIONARIO
GO

SP_HELP 'dbo.TMP_FUNCIONARIO'