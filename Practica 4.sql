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
ALTER TABLE [dbo].[candidato] DROP CONSTRAINT [fk_candidato_id_puesto]
GO
ALTER TABLE [dbo].[candidato] DROP CONSTRAINT [fk_candidato_id_entrevista]
GO
ALTER TABLE [dbo].[candidato] DROP CONSTRAINT [fk_candidato_id_empleado]
GO
ALTER TABLE [dbo].[candidato] DROP CONSTRAINT [fk_candidato_id_direccion]
GO
ALTER TABLE [dbo].[candidato] DROP CONSTRAINT [fk_candidato_id_cv]
GO
/****** Object:  Table [dbo].[telefono]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[telefono]
GO
/****** Object:  Table [dbo].[tabajos_anteriores]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[tabajos_anteriores]
GO
/****** Object:  Table [dbo].[reclutador]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[reclutador]
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[puesto]
GO
/****** Object:  Table [dbo].[horario_entr]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[horario_entr]
GO
/****** Object:  Table [dbo].[estudios]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[estudios]
GO
/****** Object:  Table [dbo].[estatus]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[estatus]
GO
/****** Object:  Table [dbo].[entrevista]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[entrevista]
GO
/****** Object:  Table [dbo].[empleado_capacitador]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[empleado_capacitador]
GO
/****** Object:  Table [dbo].[empleado_capacitado]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[empleado_capacitado]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[empleado]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[direccion]
GO
/****** Object:  Table [dbo].[cv]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[cv]
GO
/****** Object:  Table [dbo].[contrato]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[contrato]
GO
/****** Object:  Table [dbo].[capacitacion]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[capacitacion]
GO
/****** Object:  Table [dbo].[candidato]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP TABLE [dbo].[candidato]
GO
USE [master]
GO
/****** Object:  Database [Proyecto]    Script Date: 15/03/2019 07:19:14 a. m. ******/
DROP DATABASE [Proyecto]
GO
/****** Object:  Database [Proyecto]    Script Date: 15/03/2019 07:19:14 a. m. ******/
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
/****** Object:  Table [dbo].[candidato]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
/****** Object:  Table [dbo].[capacitacion]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
/****** Object:  Table [dbo].[contrato]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
/****** Object:  Table [dbo].[cv]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
/****** Object:  Table [dbo].[direccion]    Script Date: 15/03/2019 07:19:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccion](
	[id_direccion] [int] NOT NULL,
	[calle] [varchar](60) NOT NULL,
	[ciudad] [varchar](60) NOT NULL,
	[pais] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
/****** Object:  Table [dbo].[empleado_capacitado]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
/****** Object:  Table [dbo].[empleado_capacitador]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
/****** Object:  Table [dbo].[entrevista]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
/****** Object:  Table [dbo].[estatus]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
/****** Object:  Table [dbo].[estudios]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
/****** Object:  Table [dbo].[horario_entr]    Script Date: 15/03/2019 07:19:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[horario_entr](
	[id_horario_entr] [int] NOT NULL,
	[dia] [int] NOT NULL,
	[mes] [int] NOT NULL,
	[anio] [int] NOT NULL,
	[hora] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_horario_entr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[puesto]    Script Date: 15/03/2019 07:19:15 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puesto](
	[id_puesto] [int] NOT NULL,
	[id_candidato] [int] NOT NULL,
	[sueldo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reclutador]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
/****** Object:  Table [dbo].[tabajos_anteriores]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
/****** Object:  Table [dbo].[telefono]    Script Date: 15/03/2019 07:19:15 a. m. ******/
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
ALTER TABLE [dbo].[candidato]  WITH CHECK ADD  CONSTRAINT [fk_candidato_id_puesto] FOREIGN KEY([id_puesto])
REFERENCES [dbo].[puesto] ([id_puesto])
GO
ALTER TABLE [dbo].[candidato] CHECK CONSTRAINT [fk_candidato_id_puesto]
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
