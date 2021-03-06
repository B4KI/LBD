USE [Proyecto]
GO
ALTER TABLE [dbo].[reclutador] DROP CONSTRAINT [fk_reclutador_id_entrevista]
GO
ALTER TABLE [dbo].[entrevista] DROP CONSTRAINT [fk_entrevista_id_horario_entr]
GO
ALTER TABLE [dbo].[entrevista] DROP CONSTRAINT [fk_entrevista_id_estatusr]
GO
ALTER TABLE [dbo].[empleado_capacitador] DROP CONSTRAINT [fk_empleado_capacitador_id_capacitacion]
GO
ALTER TABLE [dbo].[empleado_capacitador] DROP CONSTRAINT [fk_empleado_candidator_id_empleado_capacitado]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [fk_empleado_id_empleado_capacitador]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [fk_empleado_id_empleado_capacitado]
GO
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [fk_empleado_id_contrato]
GO
ALTER TABLE [dbo].[cv] DROP CONSTRAINT [fk_cv_id_trabajos_anteriores]
GO
ALTER TABLE [dbo].[cv] DROP CONSTRAINT [fk_cv_id_estudios]
GO
ALTER TABLE [dbo].[candidato] DROP CONSTRAINT [fk_candidato_id_telefono]
GO
ALTER TABLE [dbo].[candidato] DROP CONSTRAINT [fk_candidato_id_entrevista]
GO
ALTER TABLE [dbo].[candidato] DROP CONSTRAINT [fk_candidato_id_empleado]
GO
ALTER TABLE [dbo].[candidato] DROP CONSTRAINT [fk_candidato_id_direccion]
GO
ALTER TABLE [dbo].[candidato] DROP CONSTRAINT [fk_candidato_id_cv]
GO
/****** Object:  Table [dbo].[telefono]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[telefono]
GO
/****** Object:  Table [dbo].[tabajos_anteriores]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[tabajos_anteriores]
GO
/****** Object:  Table [dbo].[reclutador]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[reclutador]
GO
/****** Object:  Table [dbo].[puesto_repuesto]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[puesto_repuesto]
GO
/****** Object:  Table [dbo].[horario_entr]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[horario_entr]
GO
/****** Object:  Table [dbo].[estudios]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[estudios]
GO
/****** Object:  Table [dbo].[estatus]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[estatus]
GO
/****** Object:  Table [dbo].[entrevista]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[entrevista]
GO
/****** Object:  Table [dbo].[empleado_capacitador]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[empleado_capacitador]
GO
/****** Object:  Table [dbo].[empleado_capacitado]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[empleado_capacitado]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[empleado]
GO
/****** Object:  Table [dbo].[cv]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[cv]
GO
/****** Object:  Table [dbo].[contrato]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[contrato]
GO
/****** Object:  Table [dbo].[capacitacion]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[capacitacion]
GO
/****** Object:  Table [dbo].[candidato]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[candidato]
GO
/****** Object:  View [dbo].[suma_total]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP VIEW [dbo].[suma_total]
GO
/****** Object:  View [dbo].[sueldo_max]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP VIEW [dbo].[sueldo_max]
GO
/****** Object:  View [dbo].[min_sueldo]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP VIEW [dbo].[min_sueldo]
GO
/****** Object:  View [dbo].[desviacion]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP VIEW [dbo].[desviacion]
GO
/****** Object:  View [dbo].[sueldo]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP VIEW [dbo].[sueldo]
GO
/****** Object:  View [dbo].[sueldo_ciudad]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP VIEW [dbo].[sueldo_ciudad]
GO
/****** Object:  View [dbo].[total_colonias]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP VIEW [dbo].[total_colonias]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[direccion]
GO
/****** Object:  View [dbo].[all_sueldo]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP VIEW [dbo].[all_sueldo]
GO
/****** Object:  View [dbo].[pago_mayor_1900]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP VIEW [dbo].[pago_mayor_1900]
GO
/****** Object:  View [dbo].[pago_max]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP VIEW [dbo].[pago_max]
GO
/****** Object:  View [dbo].[pago_min]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP VIEW [dbo].[pago_min]
GO
/****** Object:  View [dbo].[pago]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP VIEW [dbo].[pago]
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP TABLE [dbo].[puesto]
GO
USE [master]
GO
/****** Object:  Database [Proyecto]    Script Date: 05/04/2019 05:25:33 p. m. ******/
DROP DATABASE [Proyecto]
GO
/****** Object:  Database [Proyecto]    Script Date: 05/04/2019 05:25:33 p. m. ******/
CREATE DATABASE [Proyecto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Proyecto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proyecto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Proyecto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Proyecto] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proyecto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto] SET RECOVERY FULL 
GO
ALTER DATABASE [Proyecto] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyecto] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Proyecto', N'ON'
GO
ALTER DATABASE [Proyecto] SET QUERY_STORE = OFF
GO
USE [Proyecto]
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 05/04/2019 05:25:34 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puesto](
	[id_puesto] [int] NOT NULL,
	[id_candidato] [int] NOT NULL,
	[pago] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[pago]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[pago]
  as select id_puesto, sum (pago) sueldo
  from puesto
  group by id_puesto
  having sum(pago) > 1900
GO
/****** Object:  View [dbo].[pago_min]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[pago_min] as
  select id_puesto, sum (pago) sueldo
  from puesto
  group by id_puesto
  having sum(pago) < 1900
GO
/****** Object:  View [dbo].[pago_max]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[pago_max] as
  select id_puesto, sum(pago) sueldo
  from puesto
  group by id_puesto
  having sum(pago) = 2900
GO
/****** Object:  View [dbo].[pago_mayor_1900]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[pago_mayor_1900]
  as select id_puesto, sum (pago) sueldo
  from puesto
  group by id_puesto
  having sum(pago) > 1900
GO
/****** Object:  View [dbo].[all_sueldo]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create view [dbo].[all_sueldo] as
  select Al.id_puesto, sum(Al.pago) "Sueldo"
  from puesto Al
  group by id_puesto
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccion](
	[id_direccion] [int] NOT NULL,
	[colonia] [varchar](60) NOT NULL,
	[ciudad] [varchar](60) NOT NULL,
	[pais] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[total_colonias]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[total_colonias] as
   select count (colonia) "calles"
 from direccion
GO
/****** Object:  View [dbo].[sueldo_ciudad]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 create view [dbo].[sueldo_ciudad] as
 select A1.ciudad ciudad, sum(A2.pago) sueldo
 from direccion A1, puesto A2
 group by A1.ciudad
GO
/****** Object:  View [dbo].[sueldo]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create view [dbo].[sueldo] as
 select id_puesto, sum(pago) sueldo
 from puesto
 group by id_puesto
GO
/****** Object:  View [dbo].[desviacion]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create view [dbo].[desviacion] as
 select stdev(pago) desviacion
 from puesto
GO
/****** Object:  View [dbo].[min_sueldo]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[min_sueldo] as
 select min(pago) sueldo_min
 from puesto
GO
/****** Object:  View [dbo].[sueldo_max]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create view [dbo].[sueldo_max] as
 select max (pago) sueldo_max
 from puesto
GO
/****** Object:  View [dbo].[suma_total]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create view [dbo].[suma_total] as
 select sum(pago)sueldo_total from puesto
GO
/****** Object:  Table [dbo].[candidato]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[candidato](
	[Id_candidato] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](60) NOT NULL,
	[apellidoP] [varchar](60) NOT NULL,
	[apellidoM] [varchar](60) NOT NULL,
	[Curp] [varchar](13) NOT NULL,
	[correo_electronico] [varchar](60) NULL,
	[fecha_nac] [date] NULL,
	[num_telefono] [int] NOT NULL,
	[id_telefono] [int] NOT NULL,
	[id_direccion] [int] NOT NULL,
	[id_cv] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_entrevista] [int] NOT NULL,
	[id_puesto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_candidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[capacitacion]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[capacitacion](
	[id_capacitacion] [int] NOT NULL,
	[id_empleado_capacitado] [int] NOT NULL,
	[id_empleado_capacitador] [int] NOT NULL,
	[horas_capacitacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_capacitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contrato]    Script Date: 05/04/2019 05:25:35 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contrato](
	[id_contrato] [int] NOT NULL,
	[id_puesto] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_estatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_contrato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cv]    Script Date: 05/04/2019 05:25:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cv](
	[id_cv] [int] NOT NULL,
	[id_candidato] [int] NOT NULL,
	[id_estudios] [int] NOT NULL,
	[id_trabajos_anteriores] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 05/04/2019 05:25:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[id_empleado] [int] NOT NULL,
	[id_candidato] [int] NOT NULL,
	[id_empleado_capacitado] [int] NOT NULL,
	[id_empleado_capacitador] [int] NOT NULL,
	[id_contrato] [int] NOT NULL,
	[id_puesto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado_capacitado]    Script Date: 05/04/2019 05:25:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado_capacitado](
	[id_empleado_capacitado] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado_capacitado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado_capacitador]    Script Date: 05/04/2019 05:25:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado_capacitador](
	[id_empleado_capacitador] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_empleado_capacitado] [int] NOT NULL,
	[id_capacitacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_empleado_capacitador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[entrevista]    Script Date: 05/04/2019 05:25:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[entrevista](
	[id_entrevista] [int] NOT NULL,
	[id_horario_entr] [int] NOT NULL,
	[id_candidato] [int] NOT NULL,
	[id_estatus] [int] NOT NULL,
	[id_reclutador] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_entrevista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estatus]    Script Date: 05/04/2019 05:25:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estatus](
	[id_estatus] [int] NOT NULL,
	[estatus] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estudios]    Script Date: 05/04/2019 05:25:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estudios](
	[id_estudios] [int] NOT NULL,
	[nivel_es] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estudios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[horario_entr]    Script Date: 05/04/2019 05:25:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[horario_entr](
	[id_horario_entr] [int] NOT NULL,
	[dia] [int] NOT NULL,
	[mes] [int] NOT NULL,
	[año] [int] NOT NULL,
	[hora] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_horario_entr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[puesto_repuesto]    Script Date: 05/04/2019 05:25:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puesto_repuesto](
	[id_puesto] [int] NOT NULL,
	[id_candidato] [int] NOT NULL,
	[pago] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reclutador]    Script Date: 05/04/2019 05:25:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reclutador](
	[id_reclutador] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_entrevista] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_reclutador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabajos_anteriores]    Script Date: 05/04/2019 05:25:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabajos_anteriores](
	[id_trabajos_anteriores] [int] NOT NULL,
	[trabajo_anterior] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_trabajos_anteriores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telefono]    Script Date: 05/04/2019 05:25:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telefono](
	[id_telefono] [int] NOT NULL,
	[num_telefono] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (1, N'olmo', N'monterrey', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (2, N'vebana', N'guadalajara', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (3, N'villena', N'tijuana', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (4, N'fuentes de juarez', N'monterrey', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (5, N'paseo de la reforma', N'CDMX', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (6, N'tacuba', N'CDMX', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (7, N'mazatlan', N'CDMX', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (8, N'Roma', N'CDMX', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (9, N'Amsterdam', N'CDMX', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (10, N'Barrio Regina', N'CDMX', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (11, N'Mariano otero', N'guadalajara', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (12, N'adolfo lopez mateos', N'guadalajara', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (13, N'Revolucion', N'guadalajara', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (15, N'Enrique Diaz de Leon', N'guadalajara', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (18, N'abraham lincoln', N'monterrey', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (19, N'bustamante', N'monterrey', N'mexico')
INSERT [dbo].[direccion] ([id_direccion], [colonia], [ciudad], [pais]) VALUES (20, N'paseo de los leones', N'veracruz', N'mexico')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (1, N'aceptado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (2, N'rechazado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (3, N'aceptado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (4, N'rechazado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (5, N'aceptado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (6, N'rechazado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (7, N'aceptado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (8, N'rechazado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (9, N'aceptado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (10, N'rechazado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (11, N'aceptado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (12, N'rechazado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (13, N'aceptado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (14, N'rechazado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (15, N'aceptado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (16, N'rechazado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (17, N'aceptado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (18, N'rechazado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (19, N'aceptado')
INSERT [dbo].[estatus] ([id_estatus], [estatus]) VALUES (20, N'rechazado')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (1, N'sin estudios')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (2, N'educacion media superior')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (3, N'educacion basica')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (4, N'educacion basica')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (5, N'educacion superior')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (6, N'sin estudios')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (7, N'educacion media superior')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (8, N'educacion basica')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (9, N'educacion basica')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (10, N'educacion superior')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (11, N'educacion basica')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (12, N'educacion media superior')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (13, N'educacion superior')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (14, N'educacion basica')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (15, N'educacion superior')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (16, N'sin estudios')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (17, N'educacion media superior')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (18, N'educacion basica')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (19, N'educacion basica')
INSERT [dbo].[estudios] ([id_estudios], [nivel_es]) VALUES (20, N'educacion superior')
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (1, 12, 5, 2011, 12)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (3, 23, 1, 2008, 10)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (5, 5, 8, 2009, 8)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (6, 15, 5, 2010, 12)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (7, 13, 5, 2010, 12)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (9, 5, 1, 2011, 12)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (10, 9, 1, 2011, 9)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (11, 20, 9, 2011, 12)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (12, 25, 10, 2011, 12)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (13, 2, 2, 2012, 8)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (14, 3, 5, 2012, 12)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (15, 11, 5, 2012, 12)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (16, 28, 6, 2012, 12)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (17, 22, 12, 2012, 12)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (18, 25, 10, 2013, 12)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (19, 9, 2, 2013, 9)
INSERT [dbo].[horario_entr] ([id_horario_entr], [dia], [mes], [año], [hora]) VALUES (20, 20, 9, 2013, 12)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (1, 1, 1900)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (2, 2, 2900)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (3, 4, 900)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (4, 6, 4900)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (5, 10, 6500)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (7, 3, 1900)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (8, 4, 900)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (9, 5, 2900)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (10, 7, 1900)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (11, 8, 4900)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (12, 9, 2900)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (13, 10, 6500)
INSERT [dbo].[puesto] ([id_puesto], [id_candidato], [pago]) VALUES (14, 11, 2900)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (1, 1, 1900)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (2, 2, 2900)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (3, 4, 900)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (4, 6, 4900)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (5, 10, 6500)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (7, 3, 1900)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (8, 4, 900)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (9, 5, 2900)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (10, 7, 1900)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (11, 8, 4900)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (12, 9, 2900)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (13, 10, 6500)
INSERT [dbo].[puesto_repuesto] ([id_puesto], [id_candidato], [pago]) VALUES (14, 11, 2900)
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (1, N'medico')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (2, N'ingeniero en sistemas')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (3, N'bombero')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (4, N'policia')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (5, N'taxista')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (6, N'repartidor')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (7, N'secretaria')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (8, N'contador')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (9, N'estilista')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (10, N'plomero')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (11, N'tesorera')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (12, N'consultor')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (13, N'diseñador grafico')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (14, N'desarrollador web')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (15, N'psicologo')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (16, N'desempleado')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (17, N'cobrador')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (18, N'encargado de almacen')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (19, N'consejero laboral')
INSERT [dbo].[tabajos_anteriores] ([id_trabajos_anteriores], [trabajo_anterior]) VALUES (20, N'marketing')
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (1, 0)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (2, 6482100)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (3, 8175491)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (4, 8164519)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (5, 0)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (6, 1857158)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (7, 9648157)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (8, 8647595)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (9, 7281945)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (10, 0)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (11, 6891547)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (12, 8145281)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (13, 5418487)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (14, 1554544)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (15, 5556666)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (16, 5484141)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (17, 7178155)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (18, 9516654)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (19, 8455458)
INSERT [dbo].[telefono] ([id_telefono], [num_telefono]) VALUES (20, 5445441)
ALTER TABLE [dbo].[candidato]  WITH CHECK ADD  CONSTRAINT [fk_candidato_id_cv] FOREIGN KEY([id_cv])
REFERENCES [dbo].[cv] ([id_cv])
GO
ALTER TABLE [dbo].[candidato] CHECK CONSTRAINT [fk_candidato_id_cv]
GO
ALTER TABLE [dbo].[candidato]  WITH CHECK ADD  CONSTRAINT [fk_candidato_id_direccion] FOREIGN KEY([id_direccion])
REFERENCES [dbo].[direccion] ([id_direccion])
GO
ALTER TABLE [dbo].[candidato] CHECK CONSTRAINT [fk_candidato_id_direccion]
GO
ALTER TABLE [dbo].[candidato]  WITH CHECK ADD  CONSTRAINT [fk_candidato_id_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id_empleado])
GO
ALTER TABLE [dbo].[candidato] CHECK CONSTRAINT [fk_candidato_id_empleado]
GO
ALTER TABLE [dbo].[candidato]  WITH CHECK ADD  CONSTRAINT [fk_candidato_id_entrevista] FOREIGN KEY([id_entrevista])
REFERENCES [dbo].[entrevista] ([id_entrevista])
GO
ALTER TABLE [dbo].[candidato] CHECK CONSTRAINT [fk_candidato_id_entrevista]
GO
ALTER TABLE [dbo].[candidato]  WITH CHECK ADD  CONSTRAINT [fk_candidato_id_telefono] FOREIGN KEY([id_telefono])
REFERENCES [dbo].[telefono] ([id_telefono])
GO
ALTER TABLE [dbo].[candidato] CHECK CONSTRAINT [fk_candidato_id_telefono]
GO
ALTER TABLE [dbo].[cv]  WITH CHECK ADD  CONSTRAINT [fk_cv_id_estudios] FOREIGN KEY([id_estudios])
REFERENCES [dbo].[estudios] ([id_estudios])
GO
ALTER TABLE [dbo].[cv] CHECK CONSTRAINT [fk_cv_id_estudios]
GO
ALTER TABLE [dbo].[cv]  WITH CHECK ADD  CONSTRAINT [fk_cv_id_trabajos_anteriores] FOREIGN KEY([id_trabajos_anteriores])
REFERENCES [dbo].[tabajos_anteriores] ([id_trabajos_anteriores])
GO
ALTER TABLE [dbo].[cv] CHECK CONSTRAINT [fk_cv_id_trabajos_anteriores]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [fk_empleado_id_contrato] FOREIGN KEY([id_contrato])
REFERENCES [dbo].[contrato] ([id_contrato])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [fk_empleado_id_contrato]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [fk_empleado_id_empleado_capacitado] FOREIGN KEY([id_empleado_capacitado])
REFERENCES [dbo].[empleado_capacitado] ([id_empleado_capacitado])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [fk_empleado_id_empleado_capacitado]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [fk_empleado_id_empleado_capacitador] FOREIGN KEY([id_empleado_capacitador])
REFERENCES [dbo].[empleado_capacitador] ([id_empleado_capacitador])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [fk_empleado_id_empleado_capacitador]
GO
ALTER TABLE [dbo].[empleado_capacitador]  WITH CHECK ADD  CONSTRAINT [fk_empleado_candidator_id_empleado_capacitado] FOREIGN KEY([id_empleado_capacitado])
REFERENCES [dbo].[empleado_capacitado] ([id_empleado_capacitado])
GO
ALTER TABLE [dbo].[empleado_capacitador] CHECK CONSTRAINT [fk_empleado_candidator_id_empleado_capacitado]
GO
ALTER TABLE [dbo].[empleado_capacitador]  WITH CHECK ADD  CONSTRAINT [fk_empleado_capacitador_id_capacitacion] FOREIGN KEY([id_capacitacion])
REFERENCES [dbo].[capacitacion] ([id_capacitacion])
GO
ALTER TABLE [dbo].[empleado_capacitador] CHECK CONSTRAINT [fk_empleado_capacitador_id_capacitacion]
GO
ALTER TABLE [dbo].[entrevista]  WITH CHECK ADD  CONSTRAINT [fk_entrevista_id_estatusr] FOREIGN KEY([id_estatus])
REFERENCES [dbo].[estatus] ([id_estatus])
GO
ALTER TABLE [dbo].[entrevista] CHECK CONSTRAINT [fk_entrevista_id_estatusr]
GO
ALTER TABLE [dbo].[entrevista]  WITH CHECK ADD  CONSTRAINT [fk_entrevista_id_horario_entr] FOREIGN KEY([id_horario_entr])
REFERENCES [dbo].[horario_entr] ([id_horario_entr])
GO
ALTER TABLE [dbo].[entrevista] CHECK CONSTRAINT [fk_entrevista_id_horario_entr]
GO
ALTER TABLE [dbo].[reclutador]  WITH CHECK ADD  CONSTRAINT [fk_reclutador_id_entrevista] FOREIGN KEY([id_entrevista])
REFERENCES [dbo].[entrevista] ([id_entrevista])
GO
ALTER TABLE [dbo].[reclutador] CHECK CONSTRAINT [fk_reclutador_id_entrevista]
GO
USE [master]
GO
ALTER DATABASE [Proyecto] SET  READ_WRITE 
GO
