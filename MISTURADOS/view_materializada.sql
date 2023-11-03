SET LANGUAGE 'ENGLISH'

SET NUMERIC_ROUNDABORT OFF;
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET CONCAT_NULL_YIELDS_NULL ON 
SET ARITHABORT ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
GO

ALTER VIEW dbo.VW_Empregado
WITH SCHEMABINDING
AS
SELECT [codigo_empregado]
      ,[primeiro_nome]
      ,[sobrenome]
      ,[cidade]
	  ,[salario]
      ,[estado]
      ,[codigocargo]
FROM [dbo].[empregados]
GO

CREATE UNIQUE CLUSTERED INDEX [IX_CLS_VW_Empregado]
ON dbo.VW_Empregado ([codigo_empregado])

SELECT * FROM dbo.VW_Empregado


--SELECT *
--FROM [DBDBAASSISTS].[dbo].[empregados]

--insert into [DBDBAASSISTS].[dbo].[empregados]
--(primeiro_nome,sobrenome,salario,cidade,estado,codigocargo)
--values
--('RENATO', 'GAUCHO', '1000.00', 'RIO DE JANEIRO',	'RJ',1)

--BEGIN TRAN
--ROLLBACK
--DROP TABLE [DBDBAASSISTS].[dbo].[empregados]

----ALTER TABLE [DBDBAASSISTS].[dbo].[empregados]
----ADD CONSTRAINT [pk_empregados]
----PRIMARY KEY ([codigo_empregado])