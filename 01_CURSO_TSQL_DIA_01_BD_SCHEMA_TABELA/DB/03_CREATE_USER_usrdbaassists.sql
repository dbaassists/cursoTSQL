USE [master]
GO

/*

CRIA��O DO USU�RIO usrdbaassists

*/

CREATE LOGIN [usrdbaassists] 
WITH PASSWORD=N'DbA@$$i$t$2022.!', 
DEFAULT_DATABASE=[master], 
CHECK_EXPIRATION=OFF, 
CHECK_POLICY=ON
GO

/*

ASSOCIA��O DE UM USU�RIO A UM LOGIN

*/

USE [DBDBAASSISTS]
GO
CREATE USER [usrdbaassists] FOR LOGIN [usrdbaassists]
GO