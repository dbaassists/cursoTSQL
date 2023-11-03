SET LANGUAGE 'ENGLISH'
GO

SELECT * FROM [dbo].[Funcionario]
GO

DELETE FROM [dbo].[Funcionario]
GO

INSERT INTO [dbo].[Funcionario]
(NomFuncionario, DataNascimento, DscSexo)
VALUES
('GABRIEL QUINTELLA', '1981-11-14', 'M')
GO