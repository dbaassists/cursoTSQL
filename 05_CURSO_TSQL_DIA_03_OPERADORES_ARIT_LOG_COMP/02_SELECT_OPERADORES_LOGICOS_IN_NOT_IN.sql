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
-- Exemplo 01 - Usando Operadores Lógico -- # Consulta empregados moradores QUE SÃO do estado SP e RJ
------------------------------------------------------------------------------------------

-- Consulta 1 - Montar uma consulta para retornar todos os empregados residentes nos estados de São Paulo e Rio de Janeiro
-- Dica: Lista de Estado, estado igual a SP E RJ

SELECT 
primeiro_nome
, salario
, cidade
, estado
FROM empregados
WHERE estado IN ('SP' , 'RJ');


-- Podemos montar a mesma consulta porém utilizando o Operador Lógico OR

SELECT 
primeiro_nome
, salario
, cidade
, estado
FROM empregados
WHERE estado = 'RJ' OR estado = 'SP';

-- Dúvida? Qual é a forma correta?

-- Não existe o certo ou o errado, apenas devemos nos atentar a finalidade do operador.
-- Operador IN - Usado em consultas onde existir no filtro uma lista de valores.

------------------------------------------------------------------------------------------
-- Exemplo 02 - Usando Operadores Lógico -- # Consulta empregados moradores QUE NÃO SÃO do estado SP e RJ
------------------------------------------------------------------------------------------

-- Consulta 1 - Montar uma consulta para retornar todos os empregados que não residem nos estados de São Paulo e Rio de Janeiro
-- Dica: Lista de Estado, estado DIFERENTE DE SP E RJ

SELECT 
primeiro_nome
, salario
, cidade
, estado
FROM empregados
WHERE estado NOT IN ('SP' , 'RJ');

-- Podemos montar a mesma consulta porém utilizando o Operador Lógico AND

SELECT 
primeiro_nome
, salario
, cidade
, estado
FROM empregados
WHERE estado <> 'RJ' AND estado <> 'SP';

-- Dúvida? Qual é a forma correta?

-- Não existe o certo ou o errado, apenas devemos nos atentar a finalidade do operador.
-- Operador IN - Usado em consultas onde existir no filtro uma lista de valores.
