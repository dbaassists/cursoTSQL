USE DBDBAASSISTS
GO


------------------------------------------------------------------------------------------
-- # Caso exista a tabela EMPREGADOS e CARGO, execute o script de DROP
------------------------------------------------------------------------------------------

IF EXISTS(SELECT 1 FROM sys.tables WHERE name = 'empregados')
DROP TABLE dbo.empregados
GO

IF EXISTS(SELECT 1 FROM sys.tables WHERE name = 'cargo')
DROP TABLE dbo.cargo
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
, codigocargo int
)
GO

CREATE TABLE dbo.cargo
(
codigocargo int not null identity(1,1)
, descricaocargo varchar(200)
, tipocargo  varchar(200)
)
GO

------------------------------------------------------------------------------------------
-- # Script de insert na tabela CARGO
------------------------------------------------------------------------------------------

insert into  dbo.cargo (descricaocargo, tipocargo) values ('Analista', 'Subordinado')
insert into  dbo.cargo (descricaocargo, tipocargo) values ('Estagiário', 'Subordinado')
insert into  dbo.cargo (descricaocargo, tipocargo) values ('Gerente', 'Chefia')

------------------------------------------------------------------------------------------
-- # Script de insert na tabela EMPREGADOS
------------------------------------------------------------------------------------------

INSERT INTO dbo.empregados (primeiro_nome, sobrenome, salario, cidade, estado, codigocargo) VALUES ('ROBERTO' , 'DINAMITE' , '1000', 'BELO HORIZONTE', 'MG', 1);
INSERT INTO dbo.empregados (primeiro_nome, sobrenome, salario, cidade, estado, codigocargo) VALUES ('TONINHO' , 'CEREZO' , '3900', 'MOCA', 'SP', 3);
INSERT INTO dbo.empregados (primeiro_nome, sobrenome, salario, cidade, estado, codigocargo) VALUES ('ROBERTO' , 'CARLOS' , '4000', 'JARDINS', 'SP',3);
INSERT INTO dbo.empregados (primeiro_nome, sobrenome, salario, cidade, estado, codigocargo) VALUES ('DANIEL' , 'ALVES' , '6350', 'ICARAI', 'RJ',3);
INSERT INTO dbo.empregados (primeiro_nome, sobrenome, salario, cidade, estado, codigocargo) VALUES ('NEYMAR' , 'JR' , '990', 'FONSECA', 'RJ',2);
INSERT INTO dbo.empregados (primeiro_nome, sobrenome, salario, cidade, estado, codigocargo) VALUES ('PAULO' , 'BALA' , '1990', 'FONSECA', 'RJ',1);

------------------------------------------------------------------------------------------
-- Script para consultar a tabela criada
------------------------------------------------------------------------------------------

SELECT * 
FROM dbo.empregados

------------------------------------------------------------------------------------------
-- Exemplo 01 - Usando Operadores Lógico -- # Consulta empregados COM cargo de CHEFIA
------------------------------------------------------------------------------------------

-- Consulta 1 - Montar uma consulta para retornar todos empregados que possuem um cargo de CHEFIA

SELECT primeiro_nome
, sobrenome
, salario
, cidade
, estado
, codigocargo 
FROM dbo.empregados e
WHERE exists (SELECT c.codigocargo FROM dbo.cargo c 
				where 1=1
				and e.codigocargo = c.codigocargo
				and c.tipocargo = 'chefia' )

-- Outra form usando o operador lógico IN

SELECT primeiro_nome
, sobrenome
, salario
, cidade
, estado
, codigocargo 
FROM dbo.empregados
WHERE codigocargo IN (SELECT codigocargo FROM dbo.cargo where tipocargo = 'chefia')

-- Podemos reescrever a query acima usando um INNER JOIN

------------------------------------------------------------------------------------------
-- Exemplo 02 - - Usando Operadores Lógico -- # Consulta empregados SEM cargo de CHEFIA
------------------------------------------------------------------------------------------

-- Consulta 1 - Montar uma consulta para retornar todos empregados que possuem um cargo de CHEFIA

SELECT primeiro_nome
, sobrenome
, salario
, cidade
, estado
, codigocargo 
FROM dbo.empregados e
WHERE not exists (SELECT c.codigocargo FROM dbo.cargo c 
				where 1=1
				and e.codigocargo = c.codigocargo
				and c.tipocargo = 'chefia' )

-- Outra form usando o operador lógico IN

SELECT primeiro_nome
, sobrenome
, salario
, cidade
, estado
, codigocargo 
FROM dbo.empregados
WHERE codigocargo NOT IN (SELECT codigocargo FROM dbo.cargo where tipocargo = 'chefia')

-- Podemos reescrever a query acima usando um INNER JOIN