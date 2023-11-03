-- Elimina Tabela Cliente
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Cliente')
DROP TABLE dbo.Cliente;
GO
-- Criar Tabeal Cliente
CREATE TABLE dbo.Cliente
(
CodigoCliente INT NOT NULL IDENTITY(1,1)
,NomeCliente VARCHAR(100) NOT NULL
,UF VARCHAR(2) NOT NULL
,ValorDesconto DECIMAL(23,2) NOT NULL
)
GO

-- Inser��o de Dados na Tabela Cliente
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Zeca Pagodinho','RJ','1.5');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Rom�rio','RJ','1.5');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Fred','RJ','1.5');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Gabi Gol','RJ','1.5');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Alok','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Daniel Alves','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Casagrande','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Pel�','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Neymar','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Alexandre Pires','MG','1.8');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Hulk','MG','1.8');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Victor','MG','1.8');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Toninho Cerezo','MG','1.8');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Jenival Lacerda','RS','2');

-- Consultar dados Tabela Cliente
SELECT * FROM dbo.Cliente;


-- M�todo 01 - Atualiza��o Clientes do RJ
UPDATE dbo.Cliente
SET ValorDesconto = 2;

-- OR

-- M�todo 02 - Atualiza��o Clientes do RJ
UPDATE Cliente
SET ValorDesconto = 2
FROM dbo.Cliente Cliente;

-------------------------------------------------------------------------------------------------


-- Elimina Tabela Cliente
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Cliente')
DROP TABLE dbo.Cliente;
GO
-- Criar Tabeal Cliente
CREATE TABLE dbo.Cliente
(
CodigoCliente INT NOT NULL IDENTITY(1,1)
,NomeCliente VARCHAR(100) NOT NULL
,UF VARCHAR(2) NOT NULL
,ValorDesconto DECIMAL(23,2) NOT NULL
)
GO

-- Inser��o de Dados na Tabela Cliente
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Zeca Pagodinho','RJ','1.5');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Rom�rio','RJ','1.5');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Fred','RJ','1.5');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Gabi Gol','RJ','1.5');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Alok','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Daniel Alves','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Casagrande','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Pel�','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Neymar','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Alexandre Pires','MG','1.8');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Hulk','MG','1.8');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Victor','MG','1.8');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Toninho Cerezo','MG','1.8');
INSERT INTO dbo.Cliente (NomeCliente,UF,ValorDesconto) VALUES ('Jenival Lacerda','RS','2');

-- Consultar dados Tabela Cliente
SELECT * FROM dbo.Cliente;


-- M�todo 01 - Atualiza��o Clientes do RJ
UPDATE dbo.Cliente
SET ValorDesconto = 2
WHERE UF = 'RJ';

-- OR

-- M�todo 02 - Atualiza��o Clientes do RJ
UPDATE Cliente
SET ValorDesconto = 2
FROM dbo.Cliente Cliente
WHERE UF = 'RJ';


--------------------------------------------------------------------------------------------------------------
-- Vamos alterar a tabela "dbo.Cliente" para incluir a coluna "NomeBairro"

-- Elimina Tabela Cliente
IF EXISTS (SELECT 1 FROM sys.tables WHERE name = 'Cliente')
DROP TABLE dbo.Cliente;
GO
-- Criar Tabeal Cliente
CREATE TABLE dbo.Cliente
(
CodigoCliente INT NOT NULL IDENTITY(1,1)
,NomeCliente VARCHAR(100) NOT NULL
,NomeBairro VARCHAR(100) NOT NULL
,UF VARCHAR(2) NOT NULL
,ValorDesconto DECIMAL(23,2) NOT NULL
)
GO

-- Inser��o de Dados na Tabela Cliente
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Zeca Pagodinho','Xer�m','RJ','1.5');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Rom�rio','Barra','RJ','1.5');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Fred','Barra','RJ','1.5');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Gabi Gol','Barra','RJ','1.5');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Alok','Jardins','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Daniel Alves','Morumbi','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Casagrande','Jandins','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Pel�','Guaruj�','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Neymar','Guaruj�','SP','1.2');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Alexandre Pires','Belo Horizonte','MG','1.8');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Hulk','Belo Horizonte','MG','1.8');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Victor','Cotia','MG','1.8');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Toninho Cerezo','Centro','MG','1.8');
INSERT INTO dbo.Cliente (NomeCliente,NomeBairro,UF,ValorDesconto) VALUES ('Jenival Lacerda','Porto Alegre','RS','2');


-- M�todo 01 - Atualiza��o Clientes do RJ
UPDATE dbo.Cliente
SET ValorDesconto = 2
WHERE UF = 'RJ'
AND NomeBairro  = 'Barra';

-- OR

-- M�todo 02 - Atualiza��o Clientes do RJ
UPDATE Cliente
SET ValorDesconto = 2
FROM dbo.Cliente Cliente
WHERE UF = 'RJ'
AND NomeBairro  = 'Barra';