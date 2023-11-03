USE DBDBAASSISTS
GO

------------------------------------------------------------------------------------------------
-- Alterar Idioma mensagem: Alteração de idioma para mensagem de erro
------------------------------------------------------------------------------------------------

SET LANGUAGE 'ENGLISH'

------------------------------------------------------------------------------------------------
-- Eliminar Tabela: Verifica se a tabela existe para eliminar
------------------------------------------------------------------------------------------------

IF  EXISTS (SELECT * FROM sys.tables WHERE name = 'Cliente')
DROP TABLE [dbo].[Cliente]
GO

------------------------------------------------------------------------------------------------
-- Criação Tabela: Criar tabela para receber os dados do arquivo
------------------------------------------------------------------------------------------------

CREATE TABLE [dbo].[Cliente](
	[CodigoCliente] [int] IDENTITY(1,1) NOT NULL,
	[NomeCliente] [varchar](100) NOT NULL,
	[NomeBairro] [varchar](100) NOT NULL,
	[UF] [varchar](2) NOT NULL,
	[ValorDesconto] [decimal](23, 2) NOT NULL
)
GO

------------------------------------------------------------------------------------------------
-- Limpeza: Limpar a tabela antes de importar
------------------------------------------------------------------------------------------------

TRUNCATE TABLE dbo.Cliente

------------------------------------------------------------------------------------------------
-- Importação Arquivo: Vamos importar o arquivo para trabalhar nesse tópico
------------------------------------------------------------------------------------------------

BULK INSERT dbo.Cliente
FROM 'C:\tmp\sql\baseClientes.csv'
WITH
(
FORMAT='CSV',
FIRSTROW = 2,
FIELDTERMINATOR = ';',
ROWTERMINATOR = '0x0a'
)


