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
-- Exemplo 01 - Usando Operadores Aritmético para concatenar colunas
------------------------------------------------------------------------------------------

-- # Nessa Consulta na tabela Empregados vamos retornar as informações de: salário e a concatenação das colunas primeiro_nome e sobrenome

SELECT primeiro_nome, sobrenome, salario , primeiro_nome + ' ' + sobrenome nome
FROM empregados;

------------------------------------------------------------------------------------------
-- Exemplo 02 - Usando Operadores Aritmético para concatenar colunas
------------------------------------------------------------------------------------------

-- # Nessa Consulta na tabela Empregados vamos retornar as informações de: salário e a concatenação das colunas primeiro_nome , sobrenome , salario

SELECT primeiro_nome, sobrenome, salario , primeiro_nome + ' ' + sobrenome + ' - Ganha Mensal R$' + salario nome
FROM empregados;

-- Atenção

-- Existem datatypes que quando estamos realizando a concatenação precisam primeiro passar por um processo de conversão e somente depois realizar
-- a concatenação das colunas.

SELECT primeiro_nome, sobrenome, salario , primeiro_nome + ' ' + sobrenome + ' - Ganha Mensal R$ ' + CONVERT(VARCHAR(10),salario) nome
FROM empregados;

SELECT primeiro_nome, sobrenome, salario , primeiro_nome + ' ' + sobrenome + ' - Ganha Mensal R$ ' + CAST(salario AS VARCHAR(10)) nome
FROM empregados;


------------------------------------------------------------------------------------------
-- Exemplo 03 - Usando Operadores Aritmético para realizar cálculos matemáticos
------------------------------------------------------------------------------------------

-- # Nessa Consulta na tabela Empregados vamos retornar as informações de: de primeiro_nome , sobrenome , salario e "criar" uma coluna de salario_desconto
-- Vou realizar um desconto de R$ 100 no salário

SELECT primeiro_nome, sobrenome, salario salario_bruto, (salario - 100) salario_desconto
FROM empregados;

-- # Nessa Consulta na tabela Empregados vamos retornar as informações de: de primeiro_nome , sobrenome , salario e "criar" uma coluna de salario_novo
-- Vou relizar um aumento salarial de 10%

SELECT primeiro_nome, sobrenome, salario salario_bruto, salario - (salario * 111) valor_aumento, (salario * 1,1) salario_novo
FROM empregados;

-- Atenção!

SELECT primeiro_nome, sobrenome, salario salario_bruto, (salario * 1.1) - salario valor_aumento ,(salario * 1.1) salario_novo
FROM empregados;

-- Outra forma de fazer a mesma consulta

SELECT primeiro_nome, sobrenome, salario salario_bruto, (salario + ((salario * 10)/100)) - salario valor_aumento ,salario + ((salario * 10)/100) salario_novo
FROM empregados;
