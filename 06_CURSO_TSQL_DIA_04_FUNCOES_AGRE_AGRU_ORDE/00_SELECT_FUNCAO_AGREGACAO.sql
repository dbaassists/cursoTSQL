USE DBDBAASSISTS
GO

------------------------------------------------------------------------------------------------
-- Alterar Idioma mensagem: Altera��o de idioma para mensagem de erro
------------------------------------------------------------------------------------------------

SET LANGUAGE 'ENGLISH'

------------------------------------------------------------------------------------------------
-- Eliminar Tabela: Verifica se a tabela existe para eliminar
------------------------------------------------------------------------------------------------

IF EXISTS(SELECT 1 FROM sys.tables WHERE NAME = 'VAGAS_DISPONIVEIS')
DROP TABLE dbo.VAGAS_DISPONIVEIS
GO

------------------------------------------------------------------------------------------------
-- Cria��o Tabela: Criar tabela para receber os dados do arquivo
------------------------------------------------------------------------------------------------

CREATE TABLE dbo.VAGAS_DISPONIVEIS
(
DT_GERACAO VARCHAR(200)
, HH_GERACAO VARCHAR(200)
, ANO_ELEICAO VARCHAR(200)
, CD_TIPO_ELEICAO VARCHAR(200)
, NM_TIPO_ELEICAO VARCHAR(200)
, CD_ELEICAO VARCHAR(200)
, DS_ELEICAO VARCHAR(200)
, DT_ELEICAO VARCHAR(200)
, DT_POSSE VARCHAR(200)
, SG_UF VARCHAR(200)
, SG_UE VARCHAR(200)
, NM_UE VARCHAR(200)
, CD_CARGO VARCHAR(200)
, DS_CARGO VARCHAR(200)
, QT_VAGAS INT
)
GO

------------------------------------------------------------------------------------------------
-- Limpeza: Limpar a tabela antes de importar
------------------------------------------------------------------------------------------------

TRUNCATE TABLE dbo.VAGAS_DISPONIVEIS
GO

------------------------------------------------------------------------------------------------
-- Importa��o Arquivo: Vamos importar o arquivo para trabalhar nesse t�pico
------------------------------------------------------------------------------------------------

BULK INSERT dbo.VAGAS_DISPONIVEIS
FROM 'C:\tmp\sql\consulta_vagas_2020_BRASIL.csv'
WITH
(
FORMAT='CSV',
FIRSTROW = 2,
FIELDTERMINATOR = ';',
ROWTERMINATOR = '0x0a'
)


------------------------------------------------------------------------------------------------
-- Dica: Aplicando a Fun��o de Agrega��o
------------------------------------------------------------------------------------------------

SELECT SUM(QT_VAGAS) TOTAL_VAGAS FROM dbo.VAGAS_DISPONIVEIS
SELECT COUNT(QT_VAGAS) QTD_REGISTROS FROM dbo.VAGAS_DISPONIVEIS
SELECT AVG(QT_VAGAS) MEDIA FROM dbo.VAGAS_DISPONIVEIS
SELECT MAX(QT_VAGAS) MAX_QTD FROM dbo.VAGAS_DISPONIVEIS
SELECT MIN(QT_VAGAS) MIN_QTD FROM dbo.VAGAS_DISPONIVEIS