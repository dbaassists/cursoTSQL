USE [master]
GO

/*

CRIAÇÃO DO USUÁRIO usrdbaassists

*/

CREATE LOGIN [usrdbaassists] 
WITH PASSWORD=N'DbA@$$i$t$2022.!', 
DEFAULT_DATABASE=[master], 
CHECK_EXPIRATION=OFF, 
CHECK_POLICY=ON
GO

/*

ASSOCIAÇÃO DE UM USUÁRIO A UM LOGIN

*/

USE [DBDBAASSISTS]
GO
CREATE USER [usrdbaassists] FOR LOGIN [usrdbaassists]
GO