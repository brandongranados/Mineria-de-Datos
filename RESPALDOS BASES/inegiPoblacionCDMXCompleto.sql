USE [master]
GO
/****** Object:  Database [inegiPoblacionCDMX]    Script Date: 05/12/2021 01:51:54 p. m. ******/
CREATE DATABASE [inegiPoblacionCDMX]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'inegiPoblacionCDMX', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\inegiPoblacionCDMX.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'inegiPoblacionCDMX_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\inegiPoblacionCDMX_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [inegiPoblacionCDMX] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [inegiPoblacionCDMX].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [inegiPoblacionCDMX] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET ARITHABORT OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET  DISABLE_BROKER 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET RECOVERY FULL 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET  MULTI_USER 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [inegiPoblacionCDMX] SET DB_CHAINING OFF 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [inegiPoblacionCDMX] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'inegiPoblacionCDMX', N'ON'
GO
ALTER DATABASE [inegiPoblacionCDMX] SET QUERY_STORE = OFF
GO
USE [inegiPoblacionCDMX]
GO
/****** Object:  Table [dbo].[inegiCDMX]    Script Date: 05/12/2021 01:51:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inegiCDMX](
	[id] [int] NOT NULL,
	[nombre] [nvarchar](150) NOT NULL,
	[Habitantes_1970] [int] NOT NULL,
	[Habitantes_1990] [int] NOT NULL,
	[Habitantes_1995] [int] NOT NULL,
	[Habitantes_2000] [int] NOT NULL,
	[Habitantes_2005] [int] NOT NULL,
	[Habitantes_2010] [int] NOT NULL,
	[Habitantes_2020] [int] NOT NULL,
	[superficie] [int] NOT NULL,
	[densidad_hab_ini] [int] NOT NULL,
	[densidad_hab_fin] [float] NULL,
 CONSTRAINT [PK_inegiCDMX] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (1, N'Alvaro Obregon', 520317, 642753, 676930, 687020, 706567, 727034, 759137, 9617, 3847, 12619)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (2, N'Azcapotzalco', 534554, 474688, 455131, 441008, 425298, 414711, 432205, 3366, 12620, NULL)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (3, N'Benito Juarez', 576475, 407811, 369956, 360478, 355017, 385439, 434153, 2663, 12620, NULL)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (4, N'Coyoacan', 339446, 640066, 653489, 640423, 628063, 620416, 614447, 5440, 3847, 12619)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (5, N'Cuajimalpa', 36200, 119669, 136873, 151222, 173625, 186391, 217686, 7458, 337, 3846)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (6, N'Cuautemoc', 923182, 595960, 540382, 516255, 521348, 531831, 545884, 3240, 12620, NULL)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (7, N'Gustavo A. Madero', 1186107, 1268068, 1256913, 1235542, 1193161, 1185772, 1173351, 9407, 12620, NULL)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (8, N'Iztacalco', 461992, 448322, 418982, 411321, 395025, 384326, 404695, 2330, 12620, NULL)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (9, N'Iztapalapa', 819095, 1490499, 1696609, 1773343, 1820888, 1815786, 1835486, 11700, 12620, NULL)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (10, N'Magdalena Contreras', 75429, 195041, 211898, 222050, 228927, 239086, 247622, 7458, 337, 3846)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (11, N'Miguel Hidalgo', 605560, 406868, 364398, 352640, 353534, 372889, 414470, 4699, 3847, 12619)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (12, N'Milpa Alta', 33694, 63654, 81102, 96773, 115895, 130582, 152685, 22841, 337, 3846)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (13, N'Tlahuac', 59461, 206700, 548364, 302790, 344106, 360265, 392313, 8534, 337, 3846)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (14, N'Tlalpan', 130719, 484866, 552516, 581781, 607545, 650567, 699928, 312, 337, 3846)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (15, N'Venustiano Carranza', 749483, 749483, 485623, 462806, 447459, 430978, 443704, 3340, 12620, NULL)
INSERT [dbo].[inegiCDMX] ([id], [nombre], [Habitantes_1970], [Habitantes_1990], [Habitantes_1995], [Habitantes_2000], [Habitantes_2005], [Habitantes_2010], [Habitantes_2020], [superficie], [densidad_hab_ini], [densidad_hab_fin]) VALUES (16, N'Xochimilco', 116493, 99951, 332314, 369787, 404458, 415007, 442178, 12200, 337, 3846)
GO
USE [master]
GO
ALTER DATABASE [inegiPoblacionCDMX] SET  READ_WRITE 
GO
