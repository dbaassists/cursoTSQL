----------------------------------------------------------------------------------------------------------
-- Criando uma tabela de Estudantes e inserindo alguns registros

-- Criação da tabela Estudante
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Estudante')
DROP TABLE dbo.Estudante
GO
CREATE TABLE dbo.Estudante
(
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sexo VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    pontuacao INT NOT NULL,
);

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

----------------------------------------------------------------------------------------------------------
-- Alterando a estrutura da tabela "dbo.Estudante" para transformar a coluna "id" para o tipo IDENTITY

-- Criação da tabela Estudante
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Estudante')
DROP TABLE dbo.Estudante
GO
CREATE TABLE dbo.Estudante
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sexo VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    pontuacao INT NOT NULL,
);

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


----------------------------------------------------------------------------------------------------------
-- Alterando a estrutura da tabela "dbo.Estudante" para incluir a coluna DthInclusao e definir esse coluna 
-- para ser uma coluna com valor DEFAULT

-- Criação da tabela Estudante
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Estudante')
DROP TABLE dbo.Estudante
GO
CREATE TABLE dbo.Estudante
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sexo VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    pontuacao INT NOT NULL,
	DthInclusao DATETIME NOT NULL DEFAULT GETDATE()
);

-- Inserir registros na tabela 
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Joana', 'Feminino', 20, 500);
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('João', 'Masculino', 22, 545);
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Sara', 'Feminino', 25, 600);
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Laura', 'Feminino', 18, 400);
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Alan', 'Masculino', 20, 500); 
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Kelly', 'Feminino', 22, 500);
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Ricardo', 'Masculino', 18, 643); 
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Clóvis', 'Masculino', 23, 543);
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Gabriel', 'Masculino', 21, 499); 
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Maria', 'Feminino', 27, 400);


SELECT * FROM dbo.Estudante


-- Agora um outro exemplo
-- Por mais que a coluna "DthInclusao" tenha sido definida como uma coluna que possui um valor DEFAULT GETDATE()
-- você pode fornecer um valor para essa coluna
-- Quando definimos que uma coluna tem um valor DEFAULT, isso significa que ela será preenchida caso um valor
-- não seja informado. Vamos ver!


-- Criação da tabela Estudante
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Estudante')
DROP TABLE dbo.Estudante
GO
CREATE TABLE dbo.Estudante
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sexo VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    pontuacao INT NOT NULL,
	DthInclusao DATETIME NOT NULL DEFAULT GETDATE()
);

-- Inserir registros na tabela 
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao,DthInclusao) VALUES ('Joana', 'Feminino', 20, 500,GETDATE());
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao,DthInclusao) VALUES ('João', 'Masculino', 22, 545,GETDATE());
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Sara', 'Feminino', 25, 600);
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Laura', 'Feminino', 18, 400);
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Alan', 'Masculino', 20, 500); 
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao,DthInclusao) VALUES ('Kelly', 'Feminino', 22, 500,GETDATE());
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Ricardo', 'Masculino', 18, 643); 
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Clóvis', 'Masculino', 23, 543);
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao) VALUES ('Gabriel', 'Masculino', 21, 499); 
INSERT INTO dbo.Estudante (nome, sexo,idade,pontuacao,DthInclusao) VALUES ('Maria', 'Feminino', 27, 400,GETDATE());


SELECT * FROM dbo.Estudante

--------------------------------------------------------------------------------------------------------------------

-- Vamos agora criar uma tabela e nomear ele de "dbo.Estudantes_Masculinos" e inserir valores nela a partir da tabela "dbo.Estudante"

-- Criação da tabela Estudantes_Masculinos
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Estudantes_Masculinos')
DROP TABLE dbo.Estudantes_Masculinos
GO
CREATE TABLE dbo.Estudantes_Masculinos
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sexo VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    pontuacao INT NOT NULL,
	DthInclusao DATETIME NOT NULL DEFAULT GETDATE()
);


INSERT INTO dbo.Estudantes_Masculinos (nome, sexo,idade,pontuacao,DthInclusao)
SELECT nome, sexo,idade,pontuacao,DthInclusao
FROM dbo.Estudante
WHERE sexo = 'Masculino'


--------------------------------------------------------------------------------------------------------------------

-- Podemos também fazer de outra forma: 
-- Vamos agora criar uma tabela e nomear ele de "dbo.Estudantes_Masculinos" e inserir valores nela a partir da tabela "dbo.Estudante"

-- Verificar se a tabela "dbo.Estudantes_Masculinos" existe
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Estudantes_Masculinos')
DROP TABLE dbo.Estudantes_Masculinos
GO

SELECT nome, sexo,idade,pontuacao,DthInclusao
INTO dbo.Estudantes_Masculinos
FROM dbo.Estudante
WHERE sexo = 'Masculino'