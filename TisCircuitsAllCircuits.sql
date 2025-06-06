USE [master]
GO
/****** Object:  Database [TisCircuitsAllCircuits]    Script Date: 5/5/2025 10:55:14 AM ******/
CREATE DATABASE [TisCircuitsAllCircuits]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TisCircuitsAllCircuits', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TisCircuitsAllCircuits.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TisCircuitsAllCircuits_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TisCircuitsAllCircuits_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TisCircuitsAllCircuits].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET ARITHABORT OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET  MULTI_USER 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET QUERY_STORE = ON
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TisCircuitsAllCircuits]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccesFormation]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccesFormation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_formation] [int] NULL,
	[Id_service] [int] NULL,
 CONSTRAINT [PK_AccesFormation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cours]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cours](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titre] [nvarchar](max) NOT NULL,
	[UrlFichier] [nvarchar](max) NOT NULL,
	[FormationId] [int] NOT NULL,
 CONSTRAINT [PK_Cours] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Demande]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demande](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[description] [text] NULL,
	[matricule] [nvarchar](50) NULL,
	[datecreation] [date] NOT NULL,
	[daterecu] [date] NULL,
	[matriculerecu] [nvarchar](50) NULL,
	[etat] [nvarchar](50) NULL,
	[id_fichier] [int] NULL,
 CONSTRAINT [PK__Demande__3213E83F4DF6353E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemandeConges]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandeConges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateDebut] [datetime2](7) NOT NULL,
	[DateFin] [datetime2](7) NOT NULL,
	[Etat] [nvarchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_DemandeConges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemandeEmp]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandeEmp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](100) NOT NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_DemandeEmp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Details]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[description] [nvarchar](50) NULL,
	[FormationId] [int] NOT NULL,
 CONSTRAINT [PK_Details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formation]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titre] [nvarchar](100) NOT NULL,
	[description] [text] NULL,
	[date_creation] [date] NOT NULL,
	[etat] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Formation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fourniture]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fourniture](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[description] [nvarchar](50) NULL,
	[quantite] [int] NULL,
	[date_creation] [date] NULL,
	[matricule_demandeur] [nvarchar](50) NULL,
	[etats] [nvarchar](50) NULL,
	[MatiereId] [int] NULL,
	[TypeFournitureId] [int] NULL,
 CONSTRAINT [PK_Fourniture] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Matiere]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matiere](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [nvarchar](100) NOT NULL,
	[Quantite] [int] NOT NULL,
	[DateAjout] [date] NOT NULL,
 CONSTRAINT [PK_Matiere] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](50) NULL,
	[Description] [varchar](250) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type_Fourniture]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_Fourniture](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](50) NOT NULL,
	[qte] [nvarchar](50) NULL,
 CONSTRAINT [PK_Type_Fourniture] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/5/2025 10:55:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[matricule] [nvarchar](50) NULL,
	[matriculeWindows] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[role_id] [int] NULL,
	[fonction] [nvarchar](100) NULL,
	[responsable] [nvarchar](50) NULL,
	[Id_Service] [int] NULL,
	[Etats] [int] NULL,
	[nom_complet] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250413104507_InitCleanSchema', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250413114031_FixFournitureRelations', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250413124327_AddNomCompletToUser', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250413151042_AddDemandeConge', N'9.0.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250505060631_AddCoursEntity', N'9.0.3')
GO
SET IDENTITY_INSERT [dbo].[AccesFormation] ON 

INSERT [dbo].[AccesFormation] ([Id], [Id_formation], [Id_service]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[AccesFormation] OFF
GO
SET IDENTITY_INSERT [dbo].[Cours] ON 

INSERT [dbo].[Cours] ([Id], [Titre], [UrlFichier], [FormationId]) VALUES (2, N'cours angular', N'http://localhost:5000/cours/f65a7073-2110-4db5-a2a7-a2dbf9ae4bbb.pdf', 7)
SET IDENTITY_INSERT [dbo].[Cours] OFF
GO
SET IDENTITY_INSERT [dbo].[Demande] ON 

INSERT [dbo].[Demande] ([id], [title], [description], [matricule], [datecreation], [daterecu], [matriculerecu], [etat], [id_fichier]) VALUES (3, NULL, N'demande des nouveau pc', NULL, CAST(N'0001-01-01' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[Demande] ([id], [title], [description], [matricule], [datecreation], [daterecu], [matriculerecu], [etat], [id_fichier]) VALUES (4, NULL, N'amélioration de lumiére auprés de la porte', NULL, CAST(N'0001-01-01' AS Date), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Demande] OFF
GO
SET IDENTITY_INSERT [dbo].[DemandeConges] ON 

INSERT [dbo].[DemandeConges] ([Id], [DateDebut], [DateFin], [Etat], [UserId]) VALUES (1, CAST(N'2025-04-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-04-21T00:00:00.0000000' AS DateTime2), N'Accepté', 4)
INSERT [dbo].[DemandeConges] ([Id], [DateDebut], [DateFin], [Etat], [UserId]) VALUES (2, CAST(N'2025-05-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-05-16T00:00:00.0000000' AS DateTime2), N'En attente', 4)
SET IDENTITY_INSERT [dbo].[DemandeConges] OFF
GO
SET IDENTITY_INSERT [dbo].[DemandeEmp] ON 

INSERT [dbo].[DemandeEmp] ([id], [nom], [description]) VALUES (1, N'Clé USB', N'Demande clé USB 32GB')
SET IDENTITY_INSERT [dbo].[DemandeEmp] OFF
GO
SET IDENTITY_INSERT [dbo].[Details] ON 

INSERT [dbo].[Details] ([id], [date], [description], [FormationId]) VALUES (1, CAST(N'2025-05-01' AS Date), N'Module sécurité physique', 1)
INSERT [dbo].[Details] ([id], [date], [description], [FormationId]) VALUES (2, CAST(N'2025-05-02' AS Date), N'Module sécurité réseau', 1)
SET IDENTITY_INSERT [dbo].[Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Formation] ON 

INSERT [dbo].[Formation] ([id], [titre], [description], [date_creation], [etat], [type]) VALUES (1, N'Sécurité réseau', N'Formation obligatoire sur la sécurité', CAST(N'2025-04-13' AS Date), N'accepté', N'Technique')
INSERT [dbo].[Formation] ([id], [titre], [description], [date_creation], [etat], [type]) VALUES (6, N'cours python', N'cours python', CAST(N'0001-01-01' AS Date), N'en attente', N'programmation')
INSERT [dbo].[Formation] ([id], [titre], [description], [date_creation], [etat], [type]) VALUES (7, N'angular', N'angular web', CAST(N'0001-01-01' AS Date), N'en attente', N'web')
SET IDENTITY_INSERT [dbo].[Formation] OFF
GO
SET IDENTITY_INSERT [dbo].[Fourniture] ON 

INSERT [dbo].[Fourniture] ([id], [title], [description], [quantite], [date_creation], [matricule_demandeur], [etats], [MatiereId], [TypeFournitureId]) VALUES (2, N'Clavier', N'Clavier mécanique', 2, CAST(N'2025-04-13' AS Date), N'EMP123', N'Validée RH', 1, 1)
INSERT [dbo].[Fourniture] ([id], [title], [description], [quantite], [date_creation], [matricule_demandeur], [etats], [MatiereId], [TypeFournitureId]) VALUES (5, NULL, NULL, 1, NULL, NULL, N'Acceptée', 1, 1)
INSERT [dbo].[Fourniture] ([id], [title], [description], [quantite], [date_creation], [matricule_demandeur], [etats], [MatiereId], [TypeFournitureId]) VALUES (6, NULL, NULL, 5, NULL, NULL, N'Refusée', 3, 3)
INSERT [dbo].[Fourniture] ([id], [title], [description], [quantite], [date_creation], [matricule_demandeur], [etats], [MatiereId], [TypeFournitureId]) VALUES (7, NULL, NULL, 1, NULL, NULL, N'En attente', 3, 2)
SET IDENTITY_INSERT [dbo].[Fourniture] OFF
GO
SET IDENTITY_INSERT [dbo].[Matiere] ON 

INSERT [dbo].[Matiere] ([Id], [Nom], [Quantite], [DateAjout]) VALUES (1, N'Informatique', 48, CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Matiere] ([Id], [Nom], [Quantite], [DateAjout]) VALUES (2, N'papier', 10000, CAST(N'2025-04-16' AS Date))
INSERT [dbo].[Matiere] ([Id], [Nom], [Quantite], [DateAjout]) VALUES (3, N'dispositif et ecriture', 100, CAST(N'2025-04-13' AS Date))
INSERT [dbo].[Matiere] ([Id], [Nom], [Quantite], [DateAjout]) VALUES (4, N'dispositif et ecriture', 4, CAST(N'2025-05-03' AS Date))
SET IDENTITY_INSERT [dbo].[Matiere] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [nom]) VALUES (1, N'Administrateur')
INSERT [dbo].[Role] ([id], [nom]) VALUES (2, N'Responsable RH')
INSERT [dbo].[Role] ([id], [nom]) VALUES (3, N'Employé')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id], [Nom], [Description], [Date]) VALUES (1, N'Informatique', N'Service IT', CAST(N'2025-04-13T10:00:00.000' AS DateTime))
INSERT [dbo].[Service] ([Id], [Nom], [Description], [Date]) VALUES (2, N'Marketing', N'service marketing digitale', NULL)
INSERT [dbo].[Service] ([Id], [Nom], [Description], [Date]) VALUES (3, N'logistique', N'logistique et fournitures', NULL)
INSERT [dbo].[Service] ([Id], [Nom], [Description], [Date]) VALUES (4, N'inventaire', N'trésorier coursier et responsable de stock', NULL)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Type_Fourniture] ON 

INSERT [dbo].[Type_Fourniture] ([id], [nom], [qte]) VALUES (1, N'Informatique', N'100')
INSERT [dbo].[Type_Fourniture] ([id], [nom], [qte]) VALUES (2, N'générale', N'100')
INSERT [dbo].[Type_Fourniture] ([id], [nom], [qte]) VALUES (3, N'stylos', N'20')
INSERT [dbo].[Type_Fourniture] ([id], [nom], [qte]) VALUES (4, N'stylos magique', N'12')
SET IDENTITY_INSERT [dbo].[Type_Fourniture] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [matricule], [matriculeWindows], [email], [role_id], [fonction], [responsable], [Id_Service], [Etats], [nom_complet]) VALUES (4, N'ADM001', N'mypc\sarah', N'sarah.admin@example.com', 1, N'Admin', NULL, 1, 1, N'Sarah Admin')
INSERT [dbo].[User] ([id], [matricule], [matriculeWindows], [email], [role_id], [fonction], [responsable], [Id_Service], [Etats], [nom_complet]) VALUES (5, N'RH002', N'mypc\ali', N'ali.rh@example.com', 2, N'Responsable RH', NULL, 1, 1, N'Ali RH')
INSERT [dbo].[User] ([id], [matricule], [matriculeWindows], [email], [role_id], [fonction], [responsable], [Id_Service], [Etats], [nom_complet]) VALUES (6, N'EMP003', N'mypc\nadia', N'nadia.emp@example.com', 3, N'Technicienne', N'RH002', 1, 1, N'Nadia Employée')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
/****** Object:  Index [IX_AccesFormation_Id_formation]    Script Date: 5/5/2025 10:55:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_AccesFormation_Id_formation] ON [dbo].[AccesFormation]
(
	[Id_formation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AccesFormation_Id_service]    Script Date: 5/5/2025 10:55:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_AccesFormation_Id_service] ON [dbo].[AccesFormation]
(
	[Id_service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cours_FormationId]    Script Date: 5/5/2025 10:55:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Cours_FormationId] ON [dbo].[Cours]
(
	[FormationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Demande_id_fichier]    Script Date: 5/5/2025 10:55:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Demande_id_fichier] ON [dbo].[Demande]
(
	[id_fichier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DemandeConges_UserId]    Script Date: 5/5/2025 10:55:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_DemandeConges_UserId] ON [dbo].[DemandeConges]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Details_FormationId]    Script Date: 5/5/2025 10:55:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Details_FormationId] ON [dbo].[Details]
(
	[FormationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fourniture_MatiereId]    Script Date: 5/5/2025 10:55:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Fourniture_MatiereId] ON [dbo].[Fourniture]
(
	[MatiereId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fourniture_TypeFournitureId]    Script Date: 5/5/2025 10:55:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_Fourniture_TypeFournitureId] ON [dbo].[Fourniture]
(
	[TypeFournitureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_User_Id_Service]    Script Date: 5/5/2025 10:55:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_User_Id_Service] ON [dbo].[User]
(
	[Id_Service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_User_role_id]    Script Date: 5/5/2025 10:55:15 AM ******/
CREATE NONCLUSTERED INDEX [IX_User_role_id] ON [dbo].[User]
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT (N'') FOR [nom_complet]
GO
ALTER TABLE [dbo].[AccesFormation]  WITH CHECK ADD  CONSTRAINT [FK_AccesFormation_Formation] FOREIGN KEY([Id_formation])
REFERENCES [dbo].[Formation] ([id])
GO
ALTER TABLE [dbo].[AccesFormation] CHECK CONSTRAINT [FK_AccesFormation_Formation]
GO
ALTER TABLE [dbo].[AccesFormation]  WITH CHECK ADD  CONSTRAINT [FK_AccesFormation_Service] FOREIGN KEY([Id_service])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[AccesFormation] CHECK CONSTRAINT [FK_AccesFormation_Service]
GO
ALTER TABLE [dbo].[Cours]  WITH CHECK ADD  CONSTRAINT [FK_Cours_Formation_FormationId] FOREIGN KEY([FormationId])
REFERENCES [dbo].[Formation] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cours] CHECK CONSTRAINT [FK_Cours_Formation_FormationId]
GO
ALTER TABLE [dbo].[Demande]  WITH CHECK ADD  CONSTRAINT [FK__Demande__id_fich__60A75C0F] FOREIGN KEY([id_fichier])
REFERENCES [dbo].[DemandeEmp] ([id])
GO
ALTER TABLE [dbo].[Demande] CHECK CONSTRAINT [FK__Demande__id_fich__60A75C0F]
GO
ALTER TABLE [dbo].[DemandeConges]  WITH CHECK ADD  CONSTRAINT [FK_DemandeConges_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DemandeConges] CHECK CONSTRAINT [FK_DemandeConges_User_UserId]
GO
ALTER TABLE [dbo].[Details]  WITH CHECK ADD  CONSTRAINT [FK_Details_Formation_FormationId] FOREIGN KEY([FormationId])
REFERENCES [dbo].[Formation] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Details] CHECK CONSTRAINT [FK_Details_Formation_FormationId]
GO
ALTER TABLE [dbo].[Fourniture]  WITH CHECK ADD  CONSTRAINT [FK_Fourniture_Matiere] FOREIGN KEY([MatiereId])
REFERENCES [dbo].[Matiere] ([Id])
GO
ALTER TABLE [dbo].[Fourniture] CHECK CONSTRAINT [FK_Fourniture_Matiere]
GO
ALTER TABLE [dbo].[Fourniture]  WITH CHECK ADD  CONSTRAINT [FK_Fourniture_Type_Fourniture_TypeFournitureId] FOREIGN KEY([TypeFournitureId])
REFERENCES [dbo].[Type_Fourniture] ([id])
GO
ALTER TABLE [dbo].[Fourniture] CHECK CONSTRAINT [FK_Fourniture_Type_Fourniture_TypeFournitureId]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_role_id] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role_role_id]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Service_Id_Service] FOREIGN KEY([Id_Service])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Service_Id_Service]
GO
USE [master]
GO
ALTER DATABASE [TisCircuitsAllCircuits] SET  READ_WRITE 
GO
