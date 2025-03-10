USE [HastaKayit]
GO
/****** Object:  StoredProcedure [dbo].[HastaBilgisiGetir]    Script Date: 4.01.2025 20:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HastaBilgisiGetir](
    @HastaID INT
)
AS
BEGIN
    SELECT *
    FROM Hasta
    WHERE HastaID = @HastaID;
END;
GO
/****** Object:  StoredProcedure [dbo].[HastaDoktorGuncelle]    Script Date: 4.01.2025 20:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HastaDoktorGuncelle]
    @HastaID INT,
    @YeniDoktorID INT
AS
BEGIN
    UPDATE Hasta
    SET DoktorID = @YeniDoktorID
    WHERE HastaID = @HastaID;
END;
GO
/****** Object:  StoredProcedure [dbo].[HastaEkle]    Script Date: 4.01.2025 20:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HastaEkle](
    @Ad NVARCHAR(50),
    @Soyad NVARCHAR(50),
    @HastalıkID INT,
    @DoktorID INT,
    @İlacID INT,
    @HemşireID INT,
    @AlerjiID INT,
    @RefakatçiID INT,
    @GirişTarihi DATE
)
AS
BEGIN
    INSERT INTO Hasta (Ad, Soyad, HastalikID, DoktorID, IlacID, HemsireID, AlerjiID, RefakatciID, GirisTarihi)
    VALUES (@Ad, @Soyad, @HastalıkID, @DoktorID, @İlacID, @HemşireID, @AlerjiID, @RefakatçiID, @GirişTarihi);
END;
GO
/****** Object:  StoredProcedure [dbo].[HastalikIlaclariniGetir]    Script Date: 4.01.2025 20:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HastalikIlaclariniGetir]
    @HastalikID INT
AS
BEGIN
    SELECT IlacAdı, STT
    FROM Ilac
    WHERE HastalikID = @HastalikID;
END;
GO
/****** Object:  StoredProcedure [dbo].[IlacBilgisiGetir]    Script Date: 4.01.2025 20:43:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[IlacBilgisiGetir]
    @IlacID INT
AS
BEGIN
    SELECT *
    FROM Ilac
    WHERE IlacID = @IlacID;
END;
GO
