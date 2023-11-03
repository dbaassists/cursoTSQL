
/*

SCRIPT GERADO A PARTIR DE UM BANCO CRIADO

*/

CREATE DATABASE [DBDBAASSISTS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBDBAASSISTS', FILENAME = N'C:\SQL2019\Dados\Dados\DBDBAASSISTS.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBDBAASSISTS_log', FILENAME = N'C:\SQL2019\Dados\Log\DBDBAASSISTS_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DBDBAASSISTS] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [DBDBAASSISTS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF)
GO
ALTER DATABASE [DBDBAASSISTS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBDBAASSISTS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBDBAASSISTS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBDBAASSISTS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBDBAASSISTS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBDBAASSISTS] SET  READ_WRITE 
GO
ALTER DATABASE [DBDBAASSISTS] SET RECOVERY FULL 
GO
ALTER DATABASE [DBDBAASSISTS] SET  MULTI_USER 
GO
ALTER DATABASE [DBDBAASSISTS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBDBAASSISTS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBDBAASSISTS] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DBDBAASSISTS]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = On;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = Primary;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = Off;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = Primary;
GO
USE [DBDBAASSISTS]
GO
IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [DBDBAASSISTS] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO