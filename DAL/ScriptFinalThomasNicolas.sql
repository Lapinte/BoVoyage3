DROP DATABASE BoVoyage
GO

CREATE DATABASE BoVoyage
GO 

USE [BoVoyage]
GO
/****** Object:  Table [dbo].[Agences]    Script Date: 15/06/2018 17:01:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agences](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](20) NOT NULL,
 CONSTRAINT [PK__Agences__B290B2B748119F40] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 15/06/2018 17:01:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdReservation] [int] NULL,
	[Civilite] [varchar](5) NULL,
	[Nom] [varchar](15) NULL,
	[Prenom] [varchar](15) NULL,
	[Adresse] [varchar](30) NULL,
	[Telephone] [varchar](15) NULL,
	[DateNaissance] [date] NULL,
	[Email] [varchar](30) NULL,
 CONSTRAINT [PK__Clients__B0310E25EC474362] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destinations]    Script Date: 15/06/2018 17:01:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destinations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Continent] [varchar](15) NOT NULL,
	[Pays] [varchar](30) NOT NULL,
	[Region] [varchar](20) NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK__Destinat__E4AD1CBDCFD11799] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participants]    Script Date: 15/06/2018 17:01:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdReservation] [int] NULL,
	[Civilite] [varchar](5) NOT NULL,
	[Nom] [varchar](15) NOT NULL,
	[Prenom] [varchar](15) NULL,
	[Adresse] [varchar](30) NULL,
	[Telephone] [varchar](15) NULL,
	[DateNaissance] [date] NULL,
 CONSTRAINT [PK__Particip__B0310E2577F81F82] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 15/06/2018 17:01:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[IdVoyage] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumeroCarteBancaire] [int] NULL,
	[EtatDossierReservation] [varchar](20) NOT NULL,
	[IdClient] [int] NOT NULL,
	[AssuranceAnnulation] [bit] NOT NULL,
	[PrixTotal] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK__Reservat__03B68AA1C99F8E6C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voyages]    Script Date: 15/06/2018 17:01:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voyages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdDestination] [int] NOT NULL,
	[IdAgence] [int] NOT NULL,
	[DateAller] [date] NOT NULL,
	[DateRetour] [date] NOT NULL,
	[PlacesDisponibles] [int] NULL,
	[TarifToutCompris] [decimal](18, 0) NULL,
 CONSTRAINT [PK__Voyages__EEAA7AB9820F5318] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agences] ON 

INSERT [dbo].[Agences] ([Id], [Nom]) VALUES (34, N'Rouen')
INSERT [dbo].[Agences] ([Id], [Nom]) VALUES (35, N'Paris')
INSERT [dbo].[Agences] ([Id], [Nom]) VALUES (36, N'Sarlat')
INSERT [dbo].[Agences] ([Id], [Nom]) VALUES (37, N'Marseille')
SET IDENTITY_INSERT [dbo].[Agences] OFF
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Id], [IdReservation], [Civilite], [Nom], [Prenom], [Adresse], [Telephone], [DateNaissance], [Email]) VALUES (4, NULL, N'mr', N'le grand', N'thomas', N'rouen', N'0600000000', CAST(N'1986-03-07' AS Date), N'mail')
INSERT [dbo].[Clients] ([Id], [IdReservation], [Civilite], [Nom], [Prenom], [Adresse], [Telephone], [DateNaissance], [Email]) VALUES (5, NULL, N'Mme', N'LANIEL', N'Jessy', N'eezaeazeaz', N'0102030405', CAST(N'1983-09-09' AS Date), N'ldldld@gmail.com')
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[Destinations] ON 

INSERT [dbo].[Destinations] ([Id], [Continent], [Pays], [Region], [Description]) VALUES (7, N'Afrique', N'Namibie', NULL, NULL)
INSERT [dbo].[Destinations] ([Id], [Continent], [Pays], [Region], [Description]) VALUES (8, N'Europe', N'France', N'Normandie', N'Rouen !!')
INSERT [dbo].[Destinations] ([Id], [Continent], [Pays], [Region], [Description]) VALUES (9, N'Amérique du Sud', N'Chili', NULL, N'Santiago de Chili')
INSERT [dbo].[Destinations] ([Id], [Continent], [Pays], [Region], [Description]) VALUES (10, N'Amérique du Sud', N'Argentine', NULL, N'Buenos Aires')
SET IDENTITY_INSERT [dbo].[Destinations] OFF
SET IDENTITY_INSERT [dbo].[Participants] ON 

INSERT [dbo].[Participants] ([Id], [IdReservation], [Civilite], [Nom], [Prenom], [Adresse], [Telephone], [DateNaissance]) VALUES (15, 12, N'Mr', N'BAZAN', N'Yannick', N'Sarlat', N'0600000000', CAST(N'1985-01-01' AS Date))
INSERT [dbo].[Participants] ([Id], [IdReservation], [Civilite], [Nom], [Prenom], [Adresse], [Telephone], [DateNaissance]) VALUES (16, 13, N'Mr', N'LAPINTE', N'Nicolas', N'Rouen', N'0600000000', CAST(N'1986-01-01' AS Date))
INSERT [dbo].[Participants] ([Id], [IdReservation], [Civilite], [Nom], [Prenom], [Adresse], [Telephone], [DateNaissance]) VALUES (17, 13, N'Mme', N'LAPINTE', N'Madame', N'Rouen', N'0611223344', CAST(N'1986-02-02' AS Date))
INSERT [dbo].[Participants] ([Id], [IdReservation], [Civilite], [Nom], [Prenom], [Adresse], [Telephone], [DateNaissance]) VALUES (18, 15, N'mr', N'Legrand', N'thomas', N'azeeazeaz', N'01205458', CAST(N'1986-07-03' AS Date))
INSERT [dbo].[Participants] ([Id], [IdReservation], [Civilite], [Nom], [Prenom], [Adresse], [Telephone], [DateNaissance]) VALUES (19, 15, N're', N'lapinte', N'nicolas', N'reazerazer', N'010506040', CAST(N'2010-12-12' AS Date))
SET IDENTITY_INSERT [dbo].[Participants] OFF
SET IDENTITY_INSERT [dbo].[Reservations] ON 

INSERT [dbo].[Reservations] ([IdVoyage], [Id], [NumeroCarteBancaire], [EtatDossierReservation], [IdClient], [AssuranceAnnulation], [PrixTotal]) VALUES (11, 12, 51310000, N'Accepté', 4, 1, CAST(2000 AS Decimal(18, 0)))
INSERT [dbo].[Reservations] ([IdVoyage], [Id], [NumeroCarteBancaire], [EtatDossierReservation], [IdClient], [AssuranceAnnulation], [PrixTotal]) VALUES (10, 13, 51310000, N'En Cours', 5, 1, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[Reservations] ([IdVoyage], [Id], [NumeroCarteBancaire], [EtatDossierReservation], [IdClient], [AssuranceAnnulation], [PrixTotal]) VALUES (10, 15, 12124554, N'En attente', 4, 1, CAST(280 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Reservations] OFF
SET IDENTITY_INSERT [dbo].[Voyages] ON 

INSERT [dbo].[Voyages] ([Id], [IdDestination], [IdAgence], [DateAller], [DateRetour], [PlacesDisponibles], [TarifToutCompris]) VALUES (9, 10, 35, CAST(N'2018-07-01' AS Date), CAST(N'2018-07-15' AS Date), 1, CAST(30 AS Decimal(18, 0)))
INSERT [dbo].[Voyages] ([Id], [IdDestination], [IdAgence], [DateAller], [DateRetour], [PlacesDisponibles], [TarifToutCompris]) VALUES (10, 8, 35, CAST(N'2018-07-01' AS Date), CAST(N'2018-07-08' AS Date), 1, CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[Voyages] ([Id], [IdDestination], [IdAgence], [DateAller], [DateRetour], [PlacesDisponibles], [TarifToutCompris]) VALUES (11, 7, 34, CAST(N'2018-09-06' AS Date), CAST(N'2018-09-14' AS Date), 4, CAST(300 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Voyages] OFF
ALTER TABLE [dbo].[Participants]  WITH CHECK ADD  CONSTRAINT [FK_Reservation] FOREIGN KEY([IdReservation])
REFERENCES [dbo].[Reservations] ([Id])
GO
ALTER TABLE [dbo].[Participants] CHECK CONSTRAINT [FK_Reservation]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Clients] FOREIGN KEY([IdClient])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Clients]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Voyages] FOREIGN KEY([IdVoyage])
REFERENCES [dbo].[Voyages] ([Id])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Voyages]
GO
ALTER TABLE [dbo].[Voyages]  WITH CHECK ADD  CONSTRAINT [FK_Destination] FOREIGN KEY([IdDestination])
REFERENCES [dbo].[Destinations] ([Id])
GO
ALTER TABLE [dbo].[Voyages] CHECK CONSTRAINT [FK_Destination]
GO
ALTER TABLE [dbo].[Voyages]  WITH CHECK ADD  CONSTRAINT [FK_Voyages_Agences] FOREIGN KEY([IdAgence])
REFERENCES [dbo].[Agences] ([Id])
GO
ALTER TABLE [dbo].[Voyages] CHECK CONSTRAINT [FK_Voyages_Agences]
GO
