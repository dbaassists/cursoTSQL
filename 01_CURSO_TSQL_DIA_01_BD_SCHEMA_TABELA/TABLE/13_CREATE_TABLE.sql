SET LANGUAGE 'ENGLISH'

/*

1 - AO EXECUTAR O SCRIPT DE CREATE TABLE A MENSAGEM DE ERRO ABAIXO FOI APRESENTADA

Msg 262, Level 14, State 1, Line 14
CREATE TABLE permission denied in database 'DBDBAASSISTS'.

*/


/*

Sintaxe do comando

CREATE TABLE [NOME SCHEMA].[NOME TABELA]
(
DEFINIÇÃO DOS CAMPO
)

*/

CREATE TABLE [dbo].[Funcionario]
(
[IdFuncionario]		[int] NULL,
[NomFuncionario]	[varchar](100) NULL,
[DataNascimento]	[date] NULL,
[DscSexo]			[char](1) NULL
)
GO

