USE [LBD1]
GO
/****** Object:  Index [ind_triangulos_area]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP INDEX [ind_triangulos_area] ON [dbo].[Triangulos]
GO
/****** Object:  Index [ind_historial_cuenta]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP INDEX [ind_historial_cuenta] ON [dbo].[historial]
GO
/****** Object:  Index [ind_empleado_nombre]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP INDEX [ind_empleado_nombre] ON [dbo].[empleado]
GO
/****** Object:  Index [ind_empleado_identificacion]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP INDEX [ind_empleado_identificacion] ON [dbo].[empleado]
GO
/****** Object:  Index [ind_departamento_ubi]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP INDEX [ind_departamento_ubi] ON [dbo].[departamento]
GO
/****** Object:  Index [ind_cliente_contacto]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP INDEX [ind_cliente_contacto] ON [dbo].[cliente]
GO
/****** Object:  Index [ind_carrera_cupo]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP INDEX [ind_carrera_cupo] ON [dbo].[Carrera]
GO
/****** Object:  Index [ind_carrera_clase]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP INDEX [ind_carrera_clase] ON [dbo].[Carrera]
GO
/****** Object:  Index [ind_cargo_puesto]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP INDEX [ind_cargo_puesto] ON [dbo].[cargo]
GO
/****** Object:  Table [dbo].[Triangulos]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP TABLE [dbo].[Triangulos]
GO
/****** Object:  Table [dbo].[trabaja]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP TABLE [dbo].[trabaja]
GO
/****** Object:  Table [dbo].[historial]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP TABLE [dbo].[historial]
GO
/****** Object:  Table [dbo].[gastos]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP TABLE [dbo].[gastos]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP TABLE [dbo].[empleado]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP TABLE [dbo].[departamento]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP TABLE [dbo].[Curso]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP TABLE [dbo].[cliente]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP TABLE [dbo].[Carrera]
GO
/****** Object:  Table [dbo].[cargo]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP TABLE [dbo].[cargo]
GO
USE [master]
GO
/****** Object:  Database [LBD1]    Script Date: 02/03/2019 01:09:52 a. m. ******/
DROP DATABASE [LBD1]
GO
/****** Object:  Database [LBD1]    Script Date: 02/03/2019 01:09:52 a. m. ******/
CREATE DATABASE [LBD1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBD1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LBD1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LBD1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LBD1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LBD1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LBD1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LBD1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LBD1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LBD1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LBD1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LBD1] SET ARITHABORT OFF 
GO
ALTER DATABASE [LBD1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LBD1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LBD1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LBD1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LBD1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LBD1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LBD1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LBD1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LBD1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LBD1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LBD1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LBD1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LBD1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LBD1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LBD1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LBD1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LBD1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LBD1] SET RECOVERY FULL 
GO
ALTER DATABASE [LBD1] SET  MULTI_USER 
GO
ALTER DATABASE [LBD1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LBD1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LBD1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LBD1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LBD1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LBD1', N'ON'
GO
ALTER DATABASE [LBD1] SET QUERY_STORE = OFF
GO
USE [LBD1]
GO
/****** Object:  Table [dbo].[cargo]    Script Date: 02/03/2019 01:09:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargo](
	[codigo_cargo] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[sueldo_hora] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 02/03/2019 01:09:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[id_carrera] [int] NULL,
	[carrera] [varchar](30) NOT NULL,
	[cupo_minimo] [int] NULL,
	[cupo_maximo] [int] NULL,
	[suma]  AS ([cupo_minimo]+(100)),
	[resta]  AS ([cupo_maximo]+(10))
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 02/03/2019 01:09:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[cod_cli] [varchar](10) NOT NULL,
	[nombre] [varchar](32) NULL,
	[apellidos] [varchar](32) NULL,
	[telefono] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_cli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 02/03/2019 01:09:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso](
	[CursoID] [int] IDENTITY(100,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Cal1] [int] NOT NULL,
	[Cal2] [int] NOT NULL,
	[Cal3] [int] NOT NULL,
	[Promedio]  AS ((([Cal1]+[Cal2])+[Cal3])/(3)) PERSISTED,
 CONSTRAINT [Curso_CursoID_pk] PRIMARY KEY CLUSTERED 
(
	[CursoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 02/03/2019 01:09:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamento](
	[codigo_departamento] [varchar](32) NOT NULL,
	[telef_infor] [varchar](12) NOT NULL,
	[nombre] [varchar](32) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 02/03/2019 01:09:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[dni] [uniqueidentifier] NOT NULL,
	[nombre] [varchar](32) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gastos]    Script Date: 02/03/2019 01:09:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gastos](
	[cod_gasto] [varchar](10) NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_gasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historial]    Script Date: 02/03/2019 01:09:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historial](
	[num_historial] [int] NOT NULL,
	[dni] [uniqueidentifier] NULL,
	[gastos_total] [int] NULL,
	[h_trabajadas] [int] NOT NULL,
	[dias_trabajados] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[num_historial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trabaja]    Script Date: 02/03/2019 01:09:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trabaja](
	[cod_proyecto] [varchar](10) NOT NULL,
	[dni] [uniqueidentifier] NULL,
	[f_inicio] [date] NOT NULL,
	[f_fin] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Triangulos]    Script Date: 02/03/2019 01:09:54 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Triangulos](
	[Base] [int] NULL,
	[Altura] [int] NULL,
	[Area]  AS (CONVERT([int],([Base]*[Altura])/(2)))
) ON [PRIMARY]
GO
INSERT [dbo].[Carrera] ([id_carrera], [carrera], [cupo_minimo], [cupo_maximo]) VALUES (10, N'LSTI', 20, 40)
INSERT [dbo].[Carrera] ([id_carrera], [carrera], [cupo_minimo], [cupo_maximo]) VALUES (155, N'LCC', 20, 40)
SET IDENTITY_INSERT [dbo].[Curso] ON 

INSERT [dbo].[Curso] ([CursoID], [Nombre], [Cal1], [Cal2], [Cal3]) VALUES (100, N'Base de Datos', 80, 70, 90)
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Cal1], [Cal2], [Cal3]) VALUES (101, N'Base de Datos', 80, 70, 90)
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Cal1], [Cal2], [Cal3]) VALUES (102, N'Algebra', 70, 60, 20)
INSERT [dbo].[Curso] ([CursoID], [Nombre], [Cal1], [Cal2], [Cal3]) VALUES (103, N'Desarrollo de software', 20, 100, 90)
SET IDENTITY_INSERT [dbo].[Curso] OFF
INSERT [dbo].[departamento] ([codigo_departamento], [telef_infor], [nombre]) VALUES (N'40', N'8051452', N'Base de Datos')
INSERT [dbo].[departamento] ([codigo_departamento], [telef_infor], [nombre]) VALUES (N'70', N'80', N'Base de Datos')
INSERT [dbo].[empleado] ([dni], [nombre], [apellidos], [telefono]) VALUES (N'd08304b2-91dd-4684-8191-e7325c5dad6c', N'miguel', N'perez', N'818217545')
INSERT [dbo].[Triangulos] ([Base], [Altura]) VALUES (3, 18)
INSERT [dbo].[Triangulos] ([Base], [Altura]) VALUES (5, 15)
/****** Object:  Index [ind_cargo_puesto]    Script Date: 02/03/2019 01:09:54 a. m. ******/
CREATE NONCLUSTERED INDEX [ind_cargo_puesto] ON [dbo].[cargo]
(
	[codigo_cargo] ASC,
	[sueldo_hora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind_carrera_clase]    Script Date: 02/03/2019 01:09:54 a. m. ******/
CREATE NONCLUSTERED INDEX [ind_carrera_clase] ON [dbo].[Carrera]
(
	[id_carrera] ASC,
	[carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ind_carrera_cupo]    Script Date: 02/03/2019 01:09:54 a. m. ******/
CREATE NONCLUSTERED INDEX [ind_carrera_cupo] ON [dbo].[Carrera]
(
	[cupo_minimo] ASC,
	[cupo_maximo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind_cliente_contacto]    Script Date: 02/03/2019 01:09:54 a. m. ******/
CREATE NONCLUSTERED INDEX [ind_cliente_contacto] ON [dbo].[cliente]
(
	[nombre] ASC,
	[apellidos] ASC,
	[telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind_departamento_ubi]    Script Date: 02/03/2019 01:09:54 a. m. ******/
CREATE NONCLUSTERED INDEX [ind_departamento_ubi] ON [dbo].[departamento]
(
	[codigo_departamento] ASC,
	[telef_infor] ASC,
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind_empleado_identificacion]    Script Date: 02/03/2019 01:09:54 a. m. ******/
CREATE NONCLUSTERED INDEX [ind_empleado_identificacion] ON [dbo].[empleado]
(
	[dni] ASC,
	[telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ind_empleado_nombre]    Script Date: 02/03/2019 01:09:54 a. m. ******/
CREATE NONCLUSTERED INDEX [ind_empleado_nombre] ON [dbo].[empleado]
(
	[nombre] ASC,
	[apellidos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ind_historial_cuenta]    Script Date: 02/03/2019 01:09:54 a. m. ******/
CREATE NONCLUSTERED INDEX [ind_historial_cuenta] ON [dbo].[historial]
(
	[gastos_total] ASC,
	[h_trabajadas] ASC,
	[dias_trabajados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ind_triangulos_area]    Script Date: 02/03/2019 01:09:54 a. m. ******/
CREATE NONCLUSTERED INDEX [ind_triangulos_area] ON [dbo].[Triangulos]
(
	[Base] ASC,
	[Altura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [LBD1] SET  READ_WRITE 
GO
