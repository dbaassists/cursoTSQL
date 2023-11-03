USE [DBDBAASSISTS]
GO

/****** Object:  Table [dbo].[Tb_Cliente]    Script Date: 29/01/2022 16:05:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tb_Cliente]') AND type in (N'U'))
DROP TABLE [dbo].[Tb_Cliente]
GO

/****** Object:  Table [dbo].[Tb_Cliente]    Script Date: 29/01/2022 16:05:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tb_Cliente](
	[CodigoCliente] [int] IDENTITY(1,1) NOT NULL,
	[NomeCliente] [varchar](100) NOT NULL
) ON [PRIMARY]
GO


INSERT INTO [dbo].[Tb_Cliente]  VALUES('CLIENTE NÃO IDENTIFICADO') 


/****** Object:  Table [dbo].[Tb_Produto]    Script Date: 29/01/2022 16:05:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tb_Produto]') AND type in (N'U'))
DROP TABLE [dbo].[Tb_Produto]
GO

/****** Object:  Table [dbo].[Tb_Produto]    Script Date: 29/01/2022 16:05:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tb_Produto](
	[CodigoProduto] [INT] IDENTITY(1,1) NOT NULL,
	[NomeProduto] [VARCHAR](100) NOT NULL,
	[QuantidadeProduto] [INT] NOT NULL,
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Tb_Produto] ([NomeProduto],[QuantidadeProduto]) VALUES ('PRODUTO_01', 10)
INSERT INTO [dbo].[Tb_Produto] ([NomeProduto],[QuantidadeProduto]) VALUES ('PRODUTO_02', 1)
INSERT INTO [dbo].[Tb_Produto] ([NomeProduto],[QuantidadeProduto]) VALUES ('PRODUTO_03', 5)
INSERT INTO [dbo].[Tb_Produto] ([NomeProduto],[QuantidadeProduto]) VALUES ('PRODUTO_04', 6)
INSERT INTO [dbo].[Tb_Produto] ([NomeProduto],[QuantidadeProduto]) VALUES ('PRODUTO_05', 4)
INSERT INTO [dbo].[Tb_Produto] ([NomeProduto],[QuantidadeProduto]) VALUES ('PRODUTO_06', 35)


/****** Object:  Table [dbo].[Tb_Venda]    Script Date: 29/01/2022 16:05:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tb_Venda]') AND type in (N'U'))
DROP TABLE [dbo].[Tb_Venda]
GO

/****** Object:  Table [dbo].[Tb_Venda]    Script Date: 29/01/2022 16:05:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tb_Venda](
	[CodigoVenda] [INT] IDENTITY(1,1) NOT NULL,
	[CodigoProduto] [INT] NOT NULL,
	[CodigoCliente] [INT]  NOT NULL,
	[QuantidadeProduto] [INT] NOT NULL,
	[DataVenda] [DATETIME] NOT NULL DEFAULT GETDATE()
) ON [PRIMARY]
GO