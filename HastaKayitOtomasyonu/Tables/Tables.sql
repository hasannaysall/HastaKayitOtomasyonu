USE [HastaKayit]
GO
/****** Object:  Table [dbo].[Alerji]    Script Date: 4.01.2025 20:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alerji](
	[AlerjiID] [int] NOT NULL,
	[AlerjiAdi] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AlerjiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doktor]    Script Date: 4.01.2025 20:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doktor](
	[DoktorID] [int] NOT NULL,
	[Ad] [varchar](50) NOT NULL,
	[Soyad] [varchar](50) NOT NULL,
	[Bölüm] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DoktorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hasta]    Script Date: 4.01.2025 20:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hasta](
	[HastaID] [int] NOT NULL,
	[Ad] [varchar](50) NOT NULL,
	[Soyad] [varchar](50) NOT NULL,
	[HastalikID] [int] NULL,
	[DoktorID] [int] NULL,
	[IlacID] [int] NULL,
	[HemsireID] [int] NULL,
	[AlerjiID] [int] NULL,
	[RefakatciID] [int] NULL,
	[GirisTarihi] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[HastaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hastalik]    Script Date: 4.01.2025 20:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hastalik](
	[HastalikID] [int] NOT NULL,
	[HastalikAdi] [varchar](100) NOT NULL,
	[IlacID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[HastalikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hemsire]    Script Date: 4.01.2025 20:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hemsire](
	[HemsireID] [int] NOT NULL,
	[Ad] [varchar](50) NOT NULL,
	[Soyad] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HemsireID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ilac]    Script Date: 4.01.2025 20:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ilac](
	[IlacID] [int] NOT NULL,
	[IlacAdı] [varchar](100) NOT NULL,
	[HastalikID] [int] NULL,
	[STT] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IlacID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Refakatci]    Script Date: 4.01.2025 20:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Refakatci](
	[RefakatciID] [int] NOT NULL,
	[Ad] [varchar](50) NOT NULL,
	[Soyad] [varchar](50) NOT NULL,
	[Telefon] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RefakatciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taburcu]    Script Date: 4.01.2025 20:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taburcu](
	[TaburcuID] [int] NOT NULL,
	[HastaID] [int] NULL,
	[CikisTarih] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[TaburcuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD FOREIGN KEY([AlerjiID])
REFERENCES [dbo].[Alerji] ([AlerjiID])
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Doktor] ([DoktorID])
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD FOREIGN KEY([HastalikID])
REFERENCES [dbo].[Hastalik] ([HastalikID])
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD FOREIGN KEY([HemsireID])
REFERENCES [dbo].[Hemsire] ([HemsireID])
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD FOREIGN KEY([IlacID])
REFERENCES [dbo].[Ilac] ([IlacID])
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD FOREIGN KEY([RefakatciID])
REFERENCES [dbo].[Refakatci] ([RefakatciID])
GO
ALTER TABLE [dbo].[Hastalik]  WITH CHECK ADD FOREIGN KEY([IlacID])
REFERENCES [dbo].[Ilac] ([IlacID])
GO
ALTER TABLE [dbo].[Taburcu]  WITH CHECK ADD FOREIGN KEY([HastaID])
REFERENCES [dbo].[Hasta] ([HastaID])
GO
