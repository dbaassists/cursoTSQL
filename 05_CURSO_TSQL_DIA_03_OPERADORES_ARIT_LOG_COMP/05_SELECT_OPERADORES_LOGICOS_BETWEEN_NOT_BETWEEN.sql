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
-- Exemplo 01 - Usando Operadores Lógico -- # Consulta empregados que POSUEM o salário dentro uma faixa
------------------------------------------------------------------------------------------

-- # Consulta todos os empregados que POSSUEM salario na faixa de 1000 à 5000

-- Comentar o fato de ser uma função que os valores são inclusivos, ou seja, eles estão contidos dentro da faixa

SELECT primeiro_nome, salario, cidade, estado
FROM empregados
WHERE salario BETWEEN '1000' AND '3900';

-- Outra forma 

SELECT primeiro_nome, salario, cidade, estado
FROM empregados
WHERE salario >= '1000' AND salario <= '3900';

------------------------------------------------------------------------------------------
-- Exemplo 02 - Usando Operadores Lógico -- # Consulta empregados que NÃO POSUEM o salário dentro uma faixa
------------------------------------------------------------------------------------------

-- # Consulta todos os empregados que NÃO possuem salario na faixa de 1000 à 5000
SELECT primeiro_nome, salario, cidade, estado
FROM empregados
WHERE salario NOT BETWEEN '1000' AND '5000';

-- Outra forma

SELECT primeiro_nome, salario, cidade, estado
FROM empregados
WHERE salario < '1000' or salario > '5000';