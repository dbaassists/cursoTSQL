
IF EXISTS (SELECT 1 FROM SYS.tables WHERE NAME = 'Loja')
DROP TABLE dbo.Loja
GO

CREATE TABLE dbo.Loja
(idLoja int identity(1,1) not null 
,nomeLoja varchar(200)
)
GO


IF EXISTS (SELECT 1 FROM SYS.tables WHERE NAME = 'Venda')
DROP TABLE dbo.Venda
GO

CREATE TABLE dbo.Venda
(idVenda int identity(1,1) not null
,idLoja int not null 
,valorVenda decimal(23,2)
)
GO

INSERT INTO dbo.Loja (nomeLoja) VALUES ('LOJA01');
INSERT INTO dbo.Loja (nomeLoja) VALUES ('LOJA02');
INSERT INTO dbo.Loja (nomeLoja) VALUES ('LOJA03');
INSERT INTO dbo.Loja (nomeLoja) VALUES ('LOJA04');


INSERT INTO dbo.Venda (idLoja, valorVenda) VALUES ( 1, '185.98');
INSERT INTO dbo.Venda (idLoja, valorVenda) VALUES ( 1, '459.45');
INSERT INTO dbo.Venda (idLoja, valorVenda) VALUES ( 2, '633.10');
INSERT INTO dbo.Venda (idLoja, valorVenda) VALUES ( 2, '98.68');
INSERT INTO dbo.Venda (idLoja, valorVenda) VALUES ( 2, '125.41');
INSERT INTO dbo.Venda (idLoja, valorVenda) VALUES ( 3, '500.85');
INSERT INTO dbo.Venda (idLoja, valorVenda) VALUES ( 3, '312.33');
INSERT INTO dbo.Venda (idLoja, valorVenda) VALUES ( 4, '854.55');
INSERT INTO dbo.Venda (idLoja, valorVenda) VALUES ( 4, '452.77');
INSERT INTO dbo.Venda (idLoja, valorVenda) VALUES ( 4, '350.99');
INSERT INTO dbo.Venda (idLoja, valorVenda) VALUES ( 4, '550.00');

;WITH CTE_VENDA 
AS
(
SELECT 
B.nomeLoja
, SUM(A.valorVenda) valorVenda
,RANK() OVER(ORDER BY SUM(A.valorVenda) DESC) rank
FROM dbo.Venda A
INNER JOIN dbo.Loja b
ON A.idLoja = B.idLoja
GROUP BY B.nomeLoja
)
SELECT * 
FROM CTE_VENDA
WHERE rank = 1