
USE DBDBAASSISTS
go

SET LANGUAGE 'ENGLISH'
GO

DECLARE @Funcionario table(  
    primeiro_nome VARCHAR(200),  
    sobrenome VARCHAR(200),  
    salario DECIMAL(23,3),  
    cidade VARCHAR(50),
	estado VARCHAR(2));  

insert into @Funcionario
(primeiro_nome,sobrenome,salario,cidade,estado)
values
('RENATO', 'GAUCHO', '1000.00', 'RIO DE JANEIRO','RJ'),
('NEYMAR', 'JR', '100000.00', 'SANTOS',	'SP')



UPDATE @Funcionario
SET estado = 'MG'
WHERE primeiro_nome = 'RENATO'

DELETE @Funcionario
WHERE primeiro_nome = 'RENATO'

insert into @Funcionario
(primeiro_nome,sobrenome,salario,cidade,estado)
values
('CRISTIANO', 'RONALDO', '10000.00', 'RIO DE JANEIRO','RJ')


SELECT * FROM @Funcionario