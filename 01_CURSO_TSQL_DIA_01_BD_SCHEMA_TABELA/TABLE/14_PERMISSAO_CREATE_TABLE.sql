USE [DBDBAASSISTS]
GO

/*

--https://docs.microsoft.com/EN-US/sql/relational-databases/security/authentication-access/database-level-roles?view=sql-server-ver15

Members of the db_ddladmin fixed database role can run any Data Definition Language (DDL) command in a database.

--https://docs.microsoft.com/EN-US/sql/t-sql/statements/statements?view=sql-server-ver15

*/

ALTER ROLE [db_ddladmin] ADD MEMBER [usrdbaassists]
GO
