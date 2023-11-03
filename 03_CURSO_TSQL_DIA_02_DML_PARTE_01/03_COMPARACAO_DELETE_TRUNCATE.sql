SET LANGUAGE 'english'

-- PASSO 01 - Cria a tabela "dbo.tb_carro" caso n�o exista
IF EXISTS (SELECT 1 FROM sys.tables WHERE name ='tb_carro')
DROP TABLE dbo.tb_carro
GO
CREATE TABLE dbo.tb_carro
(
id int not null identity(1,1)
,nome varchar(50) 
)
GO

-- PASSO 02 - Gera Massa de Dados para "dbo.tb_carro"
INSERT INTO dbo.tb_carro (nome)
SELECT newid()
GO 1000

-- PASSO 03 - Consulta Dados Carregados
SELECT * FROM  dbo.tb_carro

-- PASSO 04 - Verifica o espa�o ocupado pela tabela no 
sp_spaceused 'tb_carro'

-- PASSO 05 - Executa o comando para comprovar que o espa�o alocado n�o � liberado
DELETE FROM dbo.tb_carro

-- PASSO 06 - Vamos recriar a massa novamente
INSERT INTO dbo.tb_carro (nome)
SELECT newid()
GO 1000

-- PASSO 07 - Executa o comando para comprovar que o espa�o alocado � liberado
TRUNCATE TABLE dbo.tb_carro

sp_spaceused 'tb_carro'

-- PASSO 08 - Cria Tabela de Log para validar que o comando TRUNCATE TABLE n�o dispara TRIGGER
CREATE TABLE dbo.tb_log
(
id INT not null IDENTITY(1,1)
,descricao VARCHAR(4000) not null
)
GO

-- PASSO 09 - Cria��o de Trigger de log de exclus�o

CREATE TRIGGER dbo.trg_log_exclusao 
ON dbo.tb_carro
FOR DELETE 
AS
BEGIN

	DECLARE @id INT , @descricao VARCHAR(4000)
	
	--SELECT Id,Field1,Field2 INTO #DeletedTempTable FROM deleted
	SELECT id , nome INTO #DeletedTempTable from deleted

	WHILE(EXISTS(SELECT Id FROM #DeletedTempTable))
	BEGIN
		
		SELECT TOP 1 @Id =Id FROM #DeletedTempTable

		SET @descricao = 'O id ' + cast(@id AS VARCHAR(10)) + ' da Tabela dbo.tb_carro foi excluido!'
		INSERT INTO  dbo.tb_log (descricao)
		VALUES
		(@descricao)

		DELETE FROM #DeletedTempTable WHERE Id = @Id
	END
	   
END

-- PASSO 10 - Executa o comando para comprovar o disparo da TRIGGER
TRUNCATE TABLE dbo.tb_carro

-- PASSO 11 - Consulta tabela de log
SELECT * FROM  dbo.tb_log

-- PASSO 12 - Vamos recriar a massa novamente
INSERT INTO dbo.tb_carro (nome)
SELECT newid()
GO 1000

-- PASSO 13 - Executa o comando para comprovar o disparo da TRIGGER
DELETE FROM dbo.tb_carro

-- PASSO 14 - Consulta tabela de log
SELECT * FROM  dbo.tb_log
