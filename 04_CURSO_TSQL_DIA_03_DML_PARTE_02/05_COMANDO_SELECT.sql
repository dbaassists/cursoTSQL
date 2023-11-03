-- Selecionando o Banco de Dados
USE DBDBAASSISTS
GO

-- Eliminar a tabela Estudante caso ela exista
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Estudante')
DROP TABLE dbo.Estudante
GO

-- Criação da tabela Estudante
CREATE TABLE dbo.Estudante
(
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sexo VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    pontuacao INT NOT NULL,
)
GO

-- Inserir registros na tabela 
INSERT INTO dbo.Estudante (id, nome, sexo,idade,pontuacao) VALUES (1, 'Joana', 'Feminino', 20, 500);
INSERT INTO dbo.Estudante (id, nome, sexo,idade,pontuacao) VALUES (2, 'João', 'Masculino', 22, 545);
INSERT INTO dbo.Estudante (id, nome, sexo,idade,pontuacao) VALUES (3, 'Sara', 'Feminino', 25, 600);
INSERT INTO dbo.Estudante (id, nome, sexo,idade,pontuacao) VALUES (4, 'Laura', 'Feminino', 18, 400);
INSERT INTO dbo.Estudante (id, nome, sexo,idade,pontuacao) VALUES (5, 'Alan', 'Masculino', 20, 500); 
INSERT INTO dbo.Estudante (id, nome, sexo,idade,pontuacao) VALUES (6, 'Kelly', 'Feminino', 22, 500);
INSERT INTO dbo.Estudante (id, nome, sexo,idade,pontuacao) VALUES (7, 'Ricardo', 'Masculino', 18, 643); 
INSERT INTO dbo.Estudante (id, nome, sexo,idade,pontuacao) VALUES (8, 'Clóvis', 'Masculino', 23, 543);
INSERT INTO dbo.Estudante (id, nome, sexo,idade,pontuacao) VALUES (9, 'Gabriel', 'Masculino', 21, 499); 
INSERT INTO dbo.Estudante (id, nome, sexo,idade,pontuacao) VALUES (10, 'Maria', 'Feminino', 27, 400);

------------------------------------------------------------------------------------------------------------

-- Consultando a Tabela Toda

SELECT * 
FROM dbo.Estudante


------------------------------------------------------------------------------------------------------------

-- Consultando 5 Primeiros Registros

SELECT TOP 5 * 
FROM dbo.Estudante

------------------------------------------------------------------------------------------------------------

-- Consultando 10% da tabela

SELECT TOP 10 PERCENT * 
FROM dbo.Estudante

------------------------------------------------------------------------------------------------------------

-- Consultando somente algumas coluas

SELECT nome, sexo
FROM dbo.Estudante

------------------------------------------------------------------------------------------------------------

-- Consultando somente registros do sexto MASCULINO

SELECT * 
FROM dbo.Estudante
WHERE sexo = 'Masculino'