USE DBDBAASSISTS
GO


------------------------------------------------------------------------------------------
-- # Caso exista a tabela EMPREGADOS e CARGO, execute o script de DROP
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



-- # Consulta empregados filtrando pelo código do empregado
SELECT codigo_empregado, primeiro_nome, salario
FROM empregados
WHERE codigo_empregado=4;


-- # Consulta Empregados montando faixa salarial (uma outra forma de usar os operadores de comparação fora da cláusula WHERE
SELECT codigo_empregado
,primeiro_nome
,salario
,case when salario <= 1000 then 'Até 1000'
when salario > 1000 and salario <= 2000 then 'De 1001 à 2000'
when salario > 2000 and salario <= 5000 then 'De 2001 à 5000'
else 'Acima de 5000'
end faixa_salarial
FROM empregados;