SET LANGUAGE 'ENGLISH'

-- CRIANDO UMA TABELA

CREATE TABLE [dbo].[Funcionario]
(
[IdFuncionario]		[int] NULL,
[NomFuncionario]	[varchar](100) NULL,
[DataNascimento]	[date] NULL,
[DscSexo]			[char](1) NULL
)
GO

/*************************************************************************************************************************/

/*

Sintaxe do comando

DROP TABLE [NOME SCHEMA].[NOME TABELA]

*/

-- ELIMINANDO UMA TABELA EXISTENTE

DROP TABLE [dbo].[Funcionario]
GO

/*************************************************************************************************************************/

/*

Sintaxe do comando

ALTER TABLE [NOME SCHEMA].[NOME TABELA] ADD [COLUNA] [DATATYPE]

*/

-- ADICIONANDO UMA COLUNA EM TABELA EXISTENTE

ALTER TABLE [dbo].[Funcionario] ADD [DthInclusao] DATETIME
GO

/*************************************************************************************************************************/

/*

Sintaxe do comando

ALTER TABLE [NOME SCHEMA].[NOME TABELA] DROP COLUMN [COLUNA]

*/


-- ELIMINANDO UMA COLUNA DE UMA TABELA EXISTENTE

ALTER TABLE [dbo].[Funcionario] DROP COLUMN [DthInclusao]
GO

/*************************************************************************************************************************/

DROP TABLE [dbo].[Funcionario]
GO

CREATE TABLE [dbo].[Funcionario]
(
[IdFuncionario]		[int] NOT NULL IDENTITY(1,1),
[NomFuncionario]	[varchar](100) NULL,
[DataNascimento]	[date] NULL,
[DscSexo]			[char](1) NULL
)
GO

/*************************************************************************************************************************/

/*

Sintaxe do comando

ALTER TABLE [NOME SCHEMA].[NOME TABELA] ADD [COLUNA] [DATATYPE] DEFAULT [VALOR]

*/

ALTER TABLE [dbo].[Funcionario] ADD [DthInclusao] DATETIME DEFAULT GETDATE()
GO

/*************************************************************************************************************************/

-- CRIANDO UMA TABELA COM UMA CHAVE PRIMARIA (PK)

DROP TABLE [dbo].[Funcionario]
GO

CREATE TABLE [dbo].[Funcionario]
(
[IdFuncionario]		[int] NOT NULL IDENTITY(1,1),
[NomFuncionario]	[varchar](100) NULL,
[DataNascimento]	[date] NULL,
[DscSexo]			[char](1) NULL
)
GO

ALTER TABLE [dbo].[Funcionario] ADD CONSTRAINT [PK_Funcionario] PRIMARY KEY ([IdFuncionario])
GO

/*************************************************************************************************************************/

-- ADICIONANDO UMA COMPUTED COLUMN EM UMA TABELA JÁ EXISTENTE

ALTER TABLE [dbo].[Funcionario] ADD IdadeAluno as (DATEDIFF(YEAR,[DataNascimento],GETDATE()))
GO

-- CRIANDO UMA TABELA COM UMA COLUNA DO TIPO COMPUTED COLUMN

DROP TABLE [dbo].[Funcionario]
GO

CREATE TABLE [dbo].[Funcionario]
(
[IdFuncionario]		[int] NOT NULL IDENTITY(1,1),
[NomFuncionario]	[varchar](100) NULL,
[DataNascimento]	[date] NULL,
[DscSexo]			[char](1) NULL,
IdadeAluno as (DATEDIFF(YEAR,[DataNascimento],GETDATE()))
)
GO

ALTER TABLE [dbo].[Funcionario] ADD CONSTRAINT [PK_Funcionario] PRIMARY KEY ([IdFuncionario])
GO

/*************************************************************************************************************************/

-- CRIANDO UMA CONSTRAINT DO TIPO UNIQUE

ALTER TABLE [dbo].[Funcionario] ADD CONSTRAINT [UK_Funcionario] UNIQUE ([NomFuncionario])
GO