SET LANGUAGE 'ENGLISH'

/*

Sintaxe do comando

CREATE TABLE [NOME SCHEMA].[NOME TABELA]
(
DEFINIÇÃO DOS CAMPO
)

*/

CREATE TABLE [dbaassists].[Aluno]
(
[IdAluno]		[int] NULL,
[NomAluno]	[varchar](100) NULL,
[DataNascimento]	[date] NULL,
[DscSexo]			[char](1) NULL
)
GO

