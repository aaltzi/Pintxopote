USE [master]
GO
/****** Object:  Database [Pintxopote]    Script Date: 01/08/2016 15:49:06 ******/
CREATE DATABASE [Pintxopote]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pintxopote', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Pintxopote.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Pintxopote_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Pintxopote_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Pintxopote] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pintxopote].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pintxopote] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pintxopote] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pintxopote] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pintxopote] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pintxopote] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pintxopote] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pintxopote] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pintxopote] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pintxopote] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pintxopote] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pintxopote] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pintxopote] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pintxopote] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pintxopote] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pintxopote] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pintxopote] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pintxopote] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pintxopote] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pintxopote] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pintxopote] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pintxopote] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pintxopote] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pintxopote] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pintxopote] SET  MULTI_USER 
GO
ALTER DATABASE [Pintxopote] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pintxopote] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pintxopote] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pintxopote] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Pintxopote] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Pintxopote]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 01/08/2016 15:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 01/08/2016 15:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 01/08/2016 15:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 01/08/2016 15:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 01/08/2016 15:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 01/08/2016 15:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 01/08/2016 15:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Balorazioa]    Script Date: 01/08/2016 15:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Balorazioa](
	[Id] [varchar](50) NOT NULL,
	[pintxoId] [varchar](50) NULL,
	[erabiltzaileaId] [varchar](50) NULL,
	[nota] [int] NULL,
	[tabernaId] [varchar](50) NULL,
 CONSTRAINT [PK_Balorazioa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Erabiltzailea]    Script Date: 01/08/2016 15:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Erabiltzailea](
	[id] [varchar](50) NOT NULL,
	[email] [varchar](50) NULL,
	[pasahitza] [varchar](50) NULL,
 CONSTRAINT [PK_Erabiltzaileak] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pintxo]    Script Date: 01/08/2016 15:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pintxo](
	[Id] [nvarchar](10) NOT NULL,
	[Izena] [nvarchar](50) NULL,
	[Deskribapena] [nvarchar](max) NULL,
	[PintxoKategoria] [nvarchar](50) NOT NULL,
	[Argazkia] [nvarchar](max) NULL,
	[tabernaId] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Pintxo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Taberna]    Script Date: 01/08/2016 15:49:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taberna](
	[Id] [nvarchar](100) NOT NULL,
	[Izena] [nvarchar](50) NULL,
	[Deskribapena] [nvarchar](max) NULL,
	[Kokapena] [nvarchar](50) NULL,
	[Kontaktua] [nvarchar](20) NULL,
	[Argazkia] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tabernak] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'Pintxopote.Models.ApplicationDbContext', N'7.0.0-beta5-13549')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'9da3502a-2fb9-4799-9a1e-1c08174531de', 0, N'81b481d2-2a70-4c2c-8c2b-4ab489e5e2df', N'aaltzibar002@gmail.com', 0, 1, NULL, N'AALTZIBAR002@GMAIL.COM', N'AALTZIBAR002@GMAIL.COM', N'AQAAAAEAACcQAAAAEMl2rNcoHvgcYE451Lr58omxQMSP8sWEFJhGhG+Au8X27sxCBpztnP2pj21qI6riuQ==', NULL, 0, N'67865714-7512-4ef7-a962-354da1fdc965', 0, N'aaltzibar002@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'e0105b3f-3874-4dba-91d3-dff3ad78a49f', 0, N'fbcac6af-c80b-4d6b-88d6-fc4d16af6241', N'aaltzibar007@gmail.com', 0, 1, NULL, N'AALTZIBAR007@GMAIL.COM', N'AALTZIBAR007@GMAIL.COM', N'AQAAAAEAACcQAAAAEJ+TcfJyMOnG2YELQD8i6DJ6KmsAfs55UbUqk+6h6jAhdf3LLx4B46nSFLY1caUbGQ==', NULL, 0, N'3f7154f9-6098-4e11-909f-2427ebe919c9', 0, N'aaltzibar007@gmail.com')
INSERT [dbo].[Balorazioa] ([Id], [pintxoId], [erabiltzaileaId], [nota], [tabernaId]) VALUES (N'0', N'10', N'aaltzibar007@gmail.com', 3, N'2')
INSERT [dbo].[Balorazioa] ([Id], [pintxoId], [erabiltzaileaId], [nota], [tabernaId]) VALUES (N'1', N'23', N'aaltzibar007@gmail.com', 4, N'2')
INSERT [dbo].[Balorazioa] ([Id], [pintxoId], [erabiltzaileaId], [nota], [tabernaId]) VALUES (N'2', N'19', N'aaltzibar007@gmail.com', 3, N'2')
INSERT [dbo].[Balorazioa] ([Id], [pintxoId], [erabiltzaileaId], [nota], [tabernaId]) VALUES (N'3', N'10', N'aaltzibar002@gmail.com', 4, N'2')
INSERT [dbo].[Balorazioa] ([Id], [pintxoId], [erabiltzaileaId], [nota], [tabernaId]) VALUES (N'4', N'11', N'aaltzibar002@gmail.com', 3, N'4')
INSERT [dbo].[Balorazioa] ([Id], [pintxoId], [erabiltzaileaId], [nota], [tabernaId]) VALUES (N'5', N'14', N'aaltzibar002@gmail.com', 4, N'1')
INSERT [dbo].[Balorazioa] ([Id], [pintxoId], [erabiltzaileaId], [nota], [tabernaId]) VALUES (N'6', N'15', N'aaltzibar002@gmail.com', 1, N'3')
INSERT [dbo].[Balorazioa] ([Id], [pintxoId], [erabiltzaileaId], [nota], [tabernaId]) VALUES (N'7', N'12', N'aaltzibar002@gmail.com', 2, N'6')
INSERT [dbo].[Balorazioa] ([Id], [pintxoId], [erabiltzaileaId], [nota], [tabernaId]) VALUES (N'8', N'6', N'aaltzibar002@gmail.com', 3, N'3')
INSERT [dbo].[Balorazioa] ([Id], [pintxoId], [erabiltzaileaId], [nota], [tabernaId]) VALUES (N'9', N'8', N'aaltzibar002@gmail.com', 2, N'5')
INSERT [dbo].[Erabiltzailea] ([id], [email], [pasahitza]) VALUES (N'1', N'aaltzibar002@gmail.com', N'Alex_12')
INSERT [dbo].[Erabiltzailea] ([id], [email], [pasahitza]) VALUES (N'2', N'aaltzibar007@gmail.com', N'Alex_17')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'1', N'Ahuntz Gazta', N'Ahuntz Gazta Intxaurrekin', N'Ahuntz Gazta', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/quesocabra-gure_zpstpvvxztp.jpg', N'3')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'10', N'Odolostea', N'Odoloste euskalduna', N'Odolostea', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/morcilla-txikixa_zpskgbiicrr.jpg', N'2')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'11', N'Ahuntz Gazta', N'Ahuntz Gazta intxaurra eta mermeladarekin', N'Ahuntz Gazta', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/quesocabra-ganbara_zpshntev2fa.jpg', N'4')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'12', N'Odolostea', N'Odolostea piperrekin', N'Odolostea', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/morcilla-metro_zpskhxhklxk.jpg', N'6')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'13', N'Odolostea', N'Odolostea piper gorriarekin', N'Odolostea', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/morcilla-idoia_zps2yqbq3mz.jpg', N'7')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'14', N'Urdailazpiko bellota', N'Urdailazpikoa ogi txigortuarekin', N'Urdailazpikoa', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/jamon-zalla_zpseykynbsq.jpg', N'1')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'15', N'Urdailazpiko euskalduna', N'Urdailazpikoa antxoa eta piperrekin', N'Urdailazpikoa', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/jamon-gure_zpshtsavdib.jpg', N'3')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'16', N'Urdailazpiko opila', N'Urdailazpiko opila', N'Urdailazpikoa', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/jamon-txikixa_zpsnhsozwyo.jpg', N'2')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'17', N'Foie', N'Foiea gazta mermelada eta intxaurrekin', N'Foie', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/foie-zalla_zpscqogmpis.jpg', N'1')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'18', N'Foie beroa', N'Foie beroa tipula potxatuarekin', N'Foie', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/foie-tximista_zpsk1k9e7jk.jpg', N'5')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'19', N'Foie', N'Foie beste zerbaitekin', N'Foie', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/foie-txikixa_zpsae8pffmu.jpg', N'2')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'2', N'Txorixoa', N'Txorixo muturraa', N'Txorixoa', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/txorixo-ganbara_zpsgvsytu6l.jpg', N'4')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'20', N'Antxoa Euskalduna', N'Antxoa piperrekin', N'Antxoa', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/antxoa-zalla_zpsnuyoddsq.jpg', N'1')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'21', N'Antxoa', N'Antxoa txakarekin', N'Antxoa', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/antxoa-txikixa_zps5s1xtfsm.jpg', N'2')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'22', N'Antxoa', N'Antxoa piperra eta atunarekin', N'Antxoa', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/antxoa-idoia_zpsku95yuu0.jpg', N'7')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'23', N'Txorixo beroa', N'Txorixoa bere daiolarekin eta bero bero', N'Txorixoa', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/txorixo-txikixa_zps834waypp.jpg', N'2')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'24', N'Txaka', N'Txaka ederra', N'Txaka', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/txaka-ganbara_zpswdlaelnq.jpg', N'4')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'25', N'Tortilla Patata', N'Tortilla patata zati karratuekin', N'Tortilla Patata', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/tortilla-metro_zpsxcj6kmf7.jpg', N'6')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'26', N'Foie', N'Foie beroa gatz potoloarekin', N'Foie', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/foie-idoia_zps6yoggthl.jpg', N'7')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'27', N'Tortilla Patata', N'Betiko Tortilla patata', N'Tortilla Patata', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/tortilla-gure_zpsbkisjv68.jpg', N'3')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'28', N'Tortilla Patata', N'Beste Toritlla mota bat', N'Tortilla Patata', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/tortilla-idoia_zpsxo2ejawk.jpg', N'7')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'29', N'Tortilla Patata', N'Tortilla patata potoloa', N'Tortilla patata', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/tortilla-zalla_zps0gcytnoe.jpg', N'1')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'3', N'Txaka', N'Txaka pintxotxoa', N'Txaka', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/txaka-txikixa_zpsofaictmy.jpg', N'2')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'30', N'Txorixoa', N'Txorixo euskalduna', N'Txorixoa ', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/txorixo-zalla_zpsxmw1akwn.jpg', N'1')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'4', N'Foie eta Gazta', N'Foie Gazta ederrarekin', N'Foie', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/foie-ganbara_zpsq5mftfgg.jpg', N'4')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'5', N'Txortilla Patata', N'Tortilla patata normala', N'Tortilla Patata', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/tortilla-txikixa_zpsrosim9sz.jpg', N'2')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'6', N'Foie', N'Foie bakarrik', N'Foie', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/foie-gure_zpstojtnfh3.jpg', N'3')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'7', N'Aguntz Gazta', N'Ahuntza Gazta mermeladarekin', N'Ahuntz Gazta', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/quesocabra-zalla_zpsfcymyxc6.jpg', N'1')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'8', N'Urdailazpiko Iberiarra', N'Urdailazpiko Iberiar Onena', N'Urdailazpikoa', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/jamon-tximista_zpsegnkeejm.jpg', N'5')
INSERT [dbo].[Pintxo] ([Id], [Izena], [Deskribapena], [PintxoKategoria], [Argazkia], [tabernaId]) VALUES (N'9', N'Tortilla Patata', N'Tortilla patata goxoa', N'Tortilla Patata', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/tortilla-tximista_zpshtcioq65.jpg', N'5')
INSERT [dbo].[Taberna] ([Id], [Izena], [Deskribapena], [Kokapena], [Kontaktua], [Argazkia]) VALUES (N'1', N'Zalla Taberna', N'Afaririk ederrenak', N'Kupela Plaza 1', N'943000000', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/Zalla_zpst8dfwwzh.jpg')
INSERT [dbo].[Taberna] ([Id], [Izena], [Deskribapena], [Kokapena], [Kontaktua], [Argazkia]) VALUES (N'2', N'Txikixa Taberna', N'Taberna Txikia da', N'Ez dakit', N'943000000', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/Txikixa_zpsl0getwq8.jpg')
INSERT [dbo].[Taberna] ([Id], [Izena], [Deskribapena], [Kokapena], [Kontaktua], [Argazkia]) VALUES (N'3', N'Gure Txokoa Taberna', N'Bi pixu ditu eta goian afariak', N'Kupela Plaza 2', N'943000000', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/Gure_zpsk8sw5e9s.jpg')
INSERT [dbo].[Taberna] ([Id], [Izena], [Deskribapena], [Kokapena], [Kontaktua], [Argazkia]) VALUES (N'4', N'Ganbara Taberna', N'Ganbarotia', N'Itzurun Ibilbidearen alboan', N'943000000', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/Ganbara_zpsde6hmsv4.jpg')
INSERT [dbo].[Taberna] ([Id], [Izena], [Deskribapena], [Kokapena], [Kontaktua], [Argazkia]) VALUES (N'5', N'Tximista Taberna', N'Tximista taberna handia', N'Itzurun ibilbidea/Plaza', N'943000000', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/Tximista_zps6atgoq4a.jpg')
INSERT [dbo].[Taberna] ([Id], [Izena], [Deskribapena], [Kokapena], [Kontaktua], [Argazkia]) VALUES (N'6', N'Metro Taberna', N'Metro, denon taberna', N'Kupela Plaza 3', N'943000000', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/metro_zpsmjhsin1z.jpg')
INSERT [dbo].[Taberna] ([Id], [Izena], [Deskribapena], [Kokapena], [Kontaktua], [Argazkia]) VALUES (N'7', N'Idoia Taberna', N'Idoia, pasealekuko taberna', N'Pasealekua', N'943000000', N'http://i650.photobucket.com/albums/uu227/pintxopoteberria/Idoia_zpslrqi0x3d.jpg')
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [Pintxopote] SET  READ_WRITE 
GO
