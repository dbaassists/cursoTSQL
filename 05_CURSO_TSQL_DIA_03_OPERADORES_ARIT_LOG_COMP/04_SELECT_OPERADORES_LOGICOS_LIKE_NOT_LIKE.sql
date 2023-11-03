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
, nome varchar(200)
, salario decimal(23,2)
, cidade varchar(200)
, estado varchar(200)
)
GO

------------------------------------------------------------------------------------------
-- # Script de insert na tabela EMPREGADOS
------------------------------------------------------------------------------------------

INSERT INTO dbo.empregados (nome, salario, cidade, estado) VALUES ('GABRIEL O PENSADOR' , '10990', 'MORUMBI', 'SP');
INSERT INTO dbo.empregados (nome, salario, cidade, estado) VALUES ('JOAO GABRIEL' , '13990', 'CUIABA', 'MT');
INSERT INTO dbo.empregados (nome, salario, cidade, estado) VALUES ('GABRIEL' , '7990', 'SALVADOR', 'BA');

------------------------------------------------------------------------------------------
-- Script para consultar a tabela criada
------------------------------------------------------------------------------------------

SELECT * 
FROM dbo.empregados

------------------------------------------------------------------------------------------
-- Exemplo 01 - Usando Operadores Lógico -- # Consultar empregados com o operador LIKE
------------------------------------------------------------------------------------------

-- # Consulta todos os empregados de nome IGUAL GABRIEL. Dessa forma ele tem o mesmo comportamento que o IGUAL
SELECT nome, salario, cidade, estado
FROM empregados
WHERE nome LIKE 'GABRIEL'

-- # Consulta todos os empregados que o nome INICIE com a palavra GABRIEL
SELECT nome, salario, cidade, estado
FROM empregados
WHERE nome LIKE 'GABRIEL%'

-- # Consulta todos os empregados que o nome TERMINE com a palavra GABRIEL
SELECT nome, salario, cidade, estado
FROM empregados
WHERE nome LIKE '%GABRIEL'

-- # Consulta todos os empregados que POSSUEM na coluna nome a palavra GABRIEL, em qualquer lugar
SELECT nome, salario, cidade, estado
FROM empregados
WHERE nome LIKE '%GABRIEL%'


------------------------------------------------------------------------------------------
-- Exemplo 02 - Usando Operadores Lógico -- # Consultar empregados com o operador NOT LIKE
------------------------------------------------------------------------------------------

-- # Consulta todos os empregados de nome NÃO É IGUAL GABRIEL. Dessa forma ele tem o mesmo comportamento que o DIFERENTE
SELECT nome, salario, cidade, estado
FROM empregados
WHERE nome NOT LIKE 'GABRIEL'

-- # Consulta todos os empregados que o nome NÃO inicie com a palavra GABRIEL
SELECT nome, salario, cidade, estado
FROM empregados
WHERE nome NOT LIKE 'GABRIEL%'

-- # Consulta todos os empregados que o nome NÃO termine com a palavra GABRIEL
SELECT nome, salario, cidade, estado
FROM empregados
WHERE nome NOT LIKE '%GABRIEL'

-- # Consulta todos os empregados que NÃO possuem na coluna nome a palavra GABRIEL, em qualquer lugar
SELECT nome, salario, cidade, estado
FROM empregados
WHERE nome NOT LIKE '%GABRIEL%'