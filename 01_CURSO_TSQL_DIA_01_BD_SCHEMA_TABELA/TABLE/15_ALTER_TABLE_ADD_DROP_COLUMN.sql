SET LANGUAGE 'ENGLISH'

/*

1 - ALTERA��O DA TABELA PARA INCLUS�O DE UMA NOVA COLUNA

*/

ALTER TABLE [dbo].[Funcionario] ADD [DthInclusao] DATETIME
GO

/*

1 - ALTERA��O DA TABELA PARA EXCLUS�O DE UMA NOVA COLUNA

*/

ALTER TABLE [dbo].[Funcionario] DROP COLUMN [DthInclusao]
GO