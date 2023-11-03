USE DBDBAASSISTS
GO


------------------------------------------------------------------------------------------
-- # Caso exista a tabela EMPREGADOS, execute o script de DROP
------------------------------------------------------------------------------------------

IF EXISTS(SELECT 1 FROM sys.tables WHERE name = 'empregados')
DROP TABLE dbo.empregados
GO

------------------------------------------------------------------------------------------
-- # Script CREATE TABLE EMPREGADOS
------------------------------------------------------------------------------------------

CREATE TABLE dbo.empregados
(
codigo_empregado int not null identity(1,1)
, primeiro_nome varchar(200)
, sobrenome  varchar(200)
, salario decimal(23,2)
, cidade varchar(200)
, estado varchar(200)
)
GO

------------------------------------------------------------------------------------------
-- # Script de insert na tabela EMPREGADOS
------------------------------------------------------------------------------------------

INSERT INTO dbo.empregados (primeiro_nome, sobrenome, salario, cidade, estado) VALUES ('ROBERTO' , 'DINAMITE' , '1000', 'BELO HORIZONTE', 'MG');
INSERT INTO dbo.empregados (primeiro_nome, sobrenome, salario, cidade, estado) VALUES ('TONINHO' , 'CEREZO' , '3900', 'MOCA', 'SP');
INSERT INTO dbo.empregados (primeiro_nome, sobrenome, salario, cidade, estado) VALUES ('ROBERTO' , 'CARLOS' , '4000', 'JARDINS', 'SP');
INSERT INTO dbo.empregados (primeiro_nome, sobrenome, salario, cidade, estado) VALUES ('DANIEL' , 'ALVES' , '6350', 'ICARAI', 'RJ');
INSERT INTO dbo.empregados (primeiro_nome, sobrenome, salario, cidade, estado) VALUES ('NEYMAR' , 'JR' , '990', 'FONSECA', 'RJ');
INSERT INTO dbo.empregados (primeiro_nome, sobrenome, salario, cidade, estado) VALUES ('PAULO' , 'BALA' , '1990', 'FONSECA', 'RJ');

------------------------------------------------------------------------------------------
-- Script para consultar a tabela criada
------------------------------------------------------------------------------------------

SELECT * 
FROM dbo.empregados

------------------------------------------------------------------------------------------
-- Exemplo 01 - Usando Operadores Lógico -- # Consulta empregados moradores de SP E com salário maior que 2200
------------------------------------------------------------------------------------------

-- Consulta 1 - Montar uma consulta para retornar todos os empregados residentes no estado de São Paulo e que possuam salário maior que R$ 2200,00.
-- Dica: Duas condições, estado igual a SP E salário maior que R$ 2200,00.
-- Para retornar TODAS as duas PRECISAM seja verdadeira.

SELECT 
primeiro_nome
, salario
, cidade
, estado
FROM dbo.empregados
WHERE estado='SP' 
AND salario > 2200;

------------------------------------------------------------------------------------------
-- Exemplo 02 - Usando Operadores Lógico -- Consulta empregados moradores de SP OU com salário maior que 2200
------------------------------------------------------------------------------------------

-- Consulta 2 - Montar uma consulta para retornar todos os empregados residentes no estado de São Paulo ou que possuam salário maior que R$ 2200,00.
-- Dica: Duas condições, estado igual a SP OU salário maior que R$ 2200,00.
-- Para retornar basta que UMA DELAS seja verdadeira.

SELECT 
primeiro_nome
, salario
, cidade
, estado
FROM empregados
WHERE estado='SP' 
OR salario > 2200;