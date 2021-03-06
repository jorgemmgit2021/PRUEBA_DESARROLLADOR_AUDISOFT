USE [master]
GO

/****** Object:  Database [PRUEBA_DESARROLLADOR]    Script Date: 20/05/2021 10:58:06 a. m. ******/
DROP DATABASE [PRUEBA_DESARROLLADOR]
GO

/****** Object:  Database [PRUEBA_DESARROLLADOR]    Script Date: 20/05/2021 10:58:06 a. m. ******/
CREATE DATABASE [PRUEBA_DESARROLLADOR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRUEBA_DESARROLLADOR', FILENAME = N'D:\jm213\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRUEBA_DESARROLLADOR.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRUEBA_DESARROLLADOR_log', FILENAME = N'D:\jm213\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRUEBA_DESARROLLADOR_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRUEBA_DESARROLLADOR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ARITHABORT OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET  DISABLE_BROKER 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET RECOVERY FULL 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET  MULTI_USER 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET DB_CHAINING OFF 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET QUERY_STORE = OFF
GO

ALTER DATABASE [PRUEBA_DESARROLLADOR] SET  READ_WRITE 
GO


/****** Object:  Database [PRUEBA_DESARROLLADOR]    Script Date: 20/05/2021 10:59:54 a. m. ******/
CREATE DATABASE [PRUEBA_DESARROLLADOR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRUEBA_DESARROLLADOR', FILENAME = N'D:\jm213\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRUEBA_DESARROLLADOR.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRUEBA_DESARROLLADOR_log', FILENAME = N'D:\jm213\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRUEBA_DESARROLLADOR_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRUEBA_DESARROLLADOR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET RECOVERY FULL 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET  MULTI_USER 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRUEBA_DESARROLLADOR', N'ON'
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET QUERY_STORE = OFF
GO
USE [PRUEBA_DESARROLLADOR]
GO
/****** Object:  Table [dbo].[Bolsa]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolsa](
	[Id_Bolsa] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Id_Caja] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Bolsa] PRIMARY KEY CLUSTERED 
(
	[Id_Bolsa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cajas]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cajas](
	[Id_Caja] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion_caja] [nvarchar](250) NOT NULL,
	[Documento_propietario] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Cajas] PRIMARY KEY CLUSTERED 
(
	[Id_Caja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carpetas]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carpetas](
	[Id_Carpeta] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Id_Bolsa] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Consecutivo] [int] NOT NULL,
 CONSTRAINT [PK_Carpetas] PRIMARY KEY CLUSTERED 
(
	[Id_Carpeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documento]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documento](
	[Id_Documento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Id_Carpeta] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Ruta] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED 
(
	[Id_Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bolsa]  WITH CHECK ADD  CONSTRAINT [FK_Bolsa_Cajas] FOREIGN KEY([Id_Caja])
REFERENCES [dbo].[Cajas] ([Id_Caja])
GO
ALTER TABLE [dbo].[Bolsa] CHECK CONSTRAINT [FK_Bolsa_Cajas]
GO
ALTER TABLE [dbo].[Carpetas]  WITH CHECK ADD  CONSTRAINT [FK_Carpetas_Bolsa] FOREIGN KEY([Id_Bolsa])
REFERENCES [dbo].[Bolsa] ([Id_Bolsa])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carpetas] CHECK CONSTRAINT [FK_Carpetas_Bolsa]
GO
/****** Object:  StoredProcedure [dbo].[BolsaDeleteCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BolsaDeleteCommand]
(
	@Original_Id_Bolsa int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Bolsa] WHERE (([Id_Bolsa] = @Original_Id_Bolsa))
GO
/****** Object:  StoredProcedure [dbo].[BolsaInsertCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BolsaInsertCommand]
(
	@Descripcion varchar(250),
	@Id_Caja int,
	@Fecha date
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Bolsa] ([Descripcion], [Id_Caja], [Fecha]) VALUES (@Descripcion, @Id_Caja, @Fecha);
	
SELECT Id_Bolsa, Descripcion, Id_Caja, Fecha FROM Bolsa WHERE (Id_Bolsa = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[BolsaSelectCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BolsaSelectCommand]
AS
	SET NOCOUNT ON;
SELECT 0 Id_Bolsa, SPACE(1) Descripcion, 0 Id_Caja, GETDATE() Fecha
UNION
SELECT Id_Bolsa, Descripcion, Id_Caja, Fecha
FROM     Bolsa
GO
/****** Object:  StoredProcedure [dbo].[BolsaUpdateCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BolsaUpdateCommand]
(
	@Descripcion varchar(250),
	@Id_Caja int,
	@Fecha date,
	@Original_Id_Bolsa int,
	@Id_Bolsa int
)
AS
	SET NOCOUNT OFF;
UPDATE [Bolsa] SET [Descripcion] = @Descripcion, [Id_Caja] = @Id_Caja, [Fecha] = @Fecha WHERE (([Id_Bolsa] = @Original_Id_Bolsa));
	
SELECT Id_Bolsa, Descripcion, Id_Caja, Fecha FROM Bolsa WHERE (Id_Bolsa = @Id_Bolsa)
GO
/****** Object:  StoredProcedure [dbo].[CajaDeleteCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CajaDeleteCommand]
(
	@Original_Id_Caja int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Cajas] WHERE (([Id_Caja] = @Original_Id_Caja))
GO
/****** Object:  StoredProcedure [dbo].[CajaInsertCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CajaInsertCommand]
(
	@Descripcion_caja nvarchar(250),
	@Documento_propietario int,
	@Fecha date
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Cajas] ([Descripcion_caja], [Documento_propietario], [Fecha]) VALUES (@Descripcion_caja, @Documento_propietario, @Fecha);
	
SELECT Id_Caja, Descripcion_caja, Documento_propietario, Fecha FROM Cajas WHERE (Id_Caja = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[CajaSelectCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CajaSelectCommand]
AS
	SET NOCOUNT ON;
SELECT 0 Id_Caja, SPACE(1) Descripcion_caja, 0 Documento_propietario, GETDATE() Fecha
UNION 
SELECT Id_Caja, Descripcion_caja, Documento_propietario, Fecha
FROM     Cajas
GO
/****** Object:  StoredProcedure [dbo].[CajaUpdateCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CajaUpdateCommand]
(
	@Descripcion_caja nvarchar(250),
	@Documento_propietario int,
	@Fecha date,
	@Original_Id_Caja int,
	@Id_Caja int
)
AS
	SET NOCOUNT OFF;
UPDATE [Cajas] SET [Descripcion_caja] = @Descripcion_caja, [Documento_propietario] = @Documento_propietario, [Fecha] = @Fecha WHERE (([Id_Caja] = @Original_Id_Caja));
	
SELECT Id_Caja, Descripcion_caja, Documento_propietario, Fecha FROM Cajas WHERE (Id_Caja = @Id_Caja)
GO
/****** Object:  StoredProcedure [dbo].[CarpetaDeleteCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CarpetaDeleteCommand]
(
	@Original_Id_Carpeta int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [dbo].[Carpetas] WHERE (([Id_Carpeta] = @Original_Id_Carpeta))
GO
/****** Object:  StoredProcedure [dbo].[CarpetaInsertCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CarpetaInsertCommand]
(
	@Descripcion varchar(250),
	@Id_Bolsa int,
	@Fecha date,
	@Consecutivo int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [dbo].[Carpetas] ([Descripcion], [Id_Bolsa], [Fecha], [Consecutivo]) VALUES (@Descripcion, @Id_Bolsa, @Fecha, @Consecutivo);
	
SELECT Id_Carpeta, Descripcion, Id_Bolsa, Fecha, Consecutivo FROM Carpetas WHERE (Id_Carpeta = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[CarpetaSelectCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CarpetaSelectCommand]
AS
	SET NOCOUNT ON;
SELECT 0 Id_Carpeta, SPACE(1) Descripcion, 0 Id_Bolsa, GETDATE() Fecha, 0 Consecutivo 
UNION 
SELECT Id_Carpeta, Descripcion, Id_Bolsa, Fecha, Consecutivo FROM dbo.Carpetas
GO
/****** Object:  StoredProcedure [dbo].[CarpetaUpdateCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CarpetaUpdateCommand]
(
	@Descripcion varchar(250),
	@Id_Bolsa int,
	@Fecha date,
	@Consecutivo int,
	@Original_Id_Carpeta int,
	@Id_Carpeta int
)
AS
	SET NOCOUNT OFF;
UPDATE [dbo].[Carpetas] SET [Descripcion] = @Descripcion, [Id_Bolsa] = @Id_Bolsa, [Fecha] = @Fecha, [Consecutivo] = @Consecutivo WHERE (([Id_Carpeta] = @Original_Id_Carpeta));
	
SELECT Id_Carpeta, Descripcion, Id_Bolsa, Fecha, Consecutivo FROM Carpetas WHERE (Id_Carpeta = @Id_Carpeta)
GO
/****** Object:  StoredProcedure [dbo].[DocumentoDeleteCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DocumentoDeleteCommand]
(
	@Original_Id_Documento int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [dbo].[Documento] WHERE (([Id_Documento] = @Original_Id_Documento))
GO
/****** Object:  StoredProcedure [dbo].[DocumentoInsertCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DocumentoInsertCommand]
(
	@Descripcion varchar(250),
	@Id_Carpeta int,
	@Fecha date,
	@Ruta varchar(250)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [dbo].[Documento] ([Descripcion], [Id_Carpeta], [Fecha], [Ruta]) VALUES (@Descripcion, @Id_Carpeta, @Fecha, @Ruta);
	
SELECT Id_Documento, Descripcion, Id_Carpeta, Fecha, Ruta FROM Documento WHERE (Id_Documento = SCOPE_IDENTITY())
GO
/****** Object:  StoredProcedure [dbo].[DocumentoSelectCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DocumentoSelectCommand]
AS
	SET NOCOUNT ON;
SELECT 0 Id_Documento, SPACE(1) Descripcion, 0 Id_Carpeta, GETDATE() Fecha, SPACE(1) Ruta
UNION 
SELECT Id_Documento, Descripcion, Id_Carpeta, Fecha, Ruta FROM dbo.Documento
GO
/****** Object:  StoredProcedure [dbo].[DocumentoUpdateCommand]    Script Date: 20/05/2021 10:59:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DocumentoUpdateCommand]
(
	@Descripcion varchar(250),
	@Id_Carpeta int,
	@Fecha date,
	@Ruta varchar(250),
	@Original_Id_Documento int,
	@Id_Documento int
)
AS
	SET NOCOUNT OFF;
UPDATE [dbo].[Documento] SET [Descripcion] = @Descripcion, [Id_Carpeta] = @Id_Carpeta, [Fecha] = @Fecha, [Ruta] = @Ruta WHERE (([Id_Documento] = @Original_Id_Documento));
	
SELECT Id_Documento, Descripcion, Id_Carpeta, Fecha, Ruta FROM Documento WHERE (Id_Documento = @Id_Documento)
GO
USE [master]
GO
ALTER DATABASE [PRUEBA_DESARROLLADOR] SET  READ_WRITE 
GO
