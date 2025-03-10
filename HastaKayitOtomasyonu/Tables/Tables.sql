--                tablolar
USE [HastaKayitOtomasyonu]  
GO  
/****** Object:  Table [dbo].[Alerji]    Script Date: 4.01.2025 20:42:05 ******/  
SET ANSI_NULLS ON  
GO  
SET QUOTED_IDENTIFIER ON  
GO  
CREATE TABLE Alerji
[AlerjiID] [int] NOT NULL,  
[AlerjiAdi] [varchar](100) NOT NULL,  
PRIMARY KEY CLUSTERED   
(  
[AlerjiID] ASC  
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = 
OFF) ON [PRIMARY]  
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = 
OFF) ON [PRIMARY]  
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
[GirisTarihi] [date] NULL,  
PRIMARY KEY CLUSTERED   
(  
[HastaID] ASC  
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = 
OFF) ON [PRIMARY]  
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
PRIMARY KEY CLUSTERED   
(  
[HastalikID] ASC  
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = 
OFF) ON [PRIMARY]  
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = 
OFF) ON [PRIMARY]  
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
[STT] [date] NOT NULL,  
PRIMARY KEY CLUSTERED   
(  
[IlacID] ASC  
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = 
OFF) ON [PRIMARY]  
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = 
OFF) ON [PRIMARY]  
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = 
OFF) ON [PRIMARY]  
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
  
--Stored Procedures  
  
 USE [HastaKayitOtomasyonu]  
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
    INSERT INTO Hasta (Ad, Soyad, HastalikID, DoktorID, IlacID, HemsireID, AlerjiID, RefakatciID, 
GirisTarihi)  
    VALUES (@Ad, @Soyad, @HastalıkID, @DoktorID, @İlacID, @HemşireID, @AlerjiID, @RefakatçiID, 
@GirişTarihi);  
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
  
--Transaction 
  
BEGIN TRANSACTION;  
  
BEGIN TRY  
     
    INSERT INTO Hasta (Ad, Soyad, HastalikID, DoktorID, IlacID, HemsireID, AlerjiID, RefakatciID, 
GirisTarihi)  
    VALUES ('Mehmet', 'Yıldız', 2, 3, 1, 4, 2, 5, '2025-01-01');  
  
  
    INSERT INTO Ilac (IlacAdı, HastalikID, STT)  
    VALUES ('Yeni İlaç', 2, '2026-12-01');  
  
   
    COMMIT TRANSACTION;  
    PRINT 'Kayıtlar başarıyla eklendi.';  
END TRY  
BEGIN CATCH  
      
    ROLLBACK TRANSACTION;  
    PRINT 'Hata oluştu. Tüm işlemler geri alındı.';  
END CATCH;  
  
BEGIN TRANSACTION;  
  
BEGIN TRY  
   
    UPDATE Hasta  
    SET DoktorID = 4  
    WHERE HastaID = 1;  
  
     
    UPDATE Hasta  
    SET IlacID = 2  
    WHERE HastaID = 1;  
  
      
    COMMIT TRANSACTION;  
    PRINT 'Güncellemeler başarıyla tamamlandı.';  
END TRY  
BEGIN CATCH  
     
    ROLLBACK TRANSACTION;  
    PRINT 'Hata oluştu. İşlemler geri alındı.';  
END CATCH;  
  
BEGIN TRANSACTION;  
  
BEGIN TRY  
     
    DELETE FROM Hasta;  
  
     
    COMMIT TRANSACTION;  
    PRINT 'Tüm hastalar başarıyla silindi.';  
END TRY  
BEGIN CATCH  
     
    ROLLBACK TRANSACTION;  
    PRINT 'Hata oluştu. İşlem geri alındı.';  
END CATCH;  
  
BEGIN TRANSACTION;  
  
BEGIN TRY  
    
    UPDATE Hasta  
    SET Ad = 'Ahmet', Soyad = 'Demir'  
    WHERE HastaID = 2;  
  
   
    UPDATE Refakatci  
    SET Ad = 'Zeynep', Soyad = 'Kaya'  
    WHERE RefakatciID = 5;  
  
    
    COMMIT TRANSACTION;  
    PRINT 'Güncellemeler başarıyla tamamlandı.';  
END TRY  
BEGIN CATCH  
    
    ROLLBACK TRANSACTION;  
    PRINT 'Hata oluştu. Tüm işlemler geri alındı.';  
END CATCH;  
 

CREATE TABLE HastaLog (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    HastaID INT NOT NULL,
    Islem NVARCHAR(255),
    Tarih DATETIME
);

  
--Triggers 
  
-- Doktor silme öncesi kontrol: Bağlı hasta var mı?
go
CREATE TRIGGER trg_Doktor_Delete_Prevent
ON Doktor
INSTEAD OF DELETE
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM Hasta
        WHERE DoktorID IN (SELECT DoktorID FROM DELETED)
    )
    BEGIN
        RAISERROR ('Bu doktor silinemez çünkü ona bağlı hastalar bulunmaktadır.', 16, 1);
    END
    ELSE
    BEGIN
        DELETE FROM Doktor
        WHERE DoktorID IN (SELECT DoktorID FROM DELETED);
    END
END;
GO

-- Hasta silindikten sonra Refakatçi tablosunda refakatçiyi sil-güncelle
CREATE TRIGGER trg_Hasta_Delete_Refakatci_Update
ON Hasta
AFTER DELETE
AS
BEGIN
    UPDATE Refakatci
    SET RefakatciID = NULL
    WHERE RefakatciID  IN (SELECT HastaID FROM DELETED);
END;
GO

-- Hasta eklendiğinde log tablosuna kayıt
CREATE TRIGGER trg_Hasta_Insert
ON Hasta
AFTER INSERT
AS
BEGIN
    INSERT INTO HastaLog (HastaID, Islem, Tarih)
    SELECT HastaID, 'Yeni Kayıt Eklendi', GETDATE()
    FROM INSERTED;
END;
GO


--İlişki tabloları 

--hasta doktor ilişkisi
CREATE TABLE [dbo].[HastaDoktor] (
    [HastaID] INT NOT NULL,
    [DoktorID] INT NOT NULL,
    PRIMARY KEY ([HastaID], [DoktorID]),
    FOREIGN KEY ([HastaID]) REFERENCES [dbo].[Hasta] ([HastaID]),
    FOREIGN KEY ([DoktorID]) REFERENCES [dbo].[Doktor] ([DoktorID])
);

--hasta hemşire ilişkisi
CREATE TABLE [dbo].[HastaHemsire] (
    [HastaID] INT NOT NULL,
    [HemsireID] INT NOT NULL,
    PRIMARY KEY ([HastaID], [HemsireID]),
    FOREIGN KEY ([HastaID]) REFERENCES [dbo].[Hasta] ([HastaID]),
    FOREIGN KEY ([HemsireID]) REFERENCES [dbo].[Hemsire] ([HemsireID])
);


--hasta ilişkisi
CREATE TABLE [dbo].[HastaHastalik] (
    [HastaID] INT NOT NULL,
    [HastalikID] INT NOT NULL,
    PRIMARY KEY ([HastaID], [HastalikID]),
    FOREIGN KEY ([HastaID]) REFERENCES [dbo].[Hasta] ([HastaID]),
    FOREIGN KEY ([HastalikID]) REFERENCES [dbo].[Hastalik] ([HastalikID])
);

--hasta ilaç ilişkisi	
CREATE TABLE [dbo].[HastaIlac] (
    [HastaID] INT NOT NULL,
    [IlacID] INT NOT NULL,
    PRIMARY KEY ([HastaID], [IlacID]),
    FOREIGN KEY ([HastaID]) REFERENCES [dbo].[Hasta] ([HastaID]),
    FOREIGN KEY ([IlacID]) REFERENCES [dbo].[Ilac] ([IlacID])
);

--hastalık ilaç ilişkisi
CREATE TABLE [dbo].[HastalikIlac] (
    [HastalikID] INT NOT NULL,
    [IlacID] INT NOT NULL,
    PRIMARY KEY ([HastalikID], [IlacID]),
    FOREIGN KEY ([HastalikID]) REFERENCES [dbo].[Hastalik] ([HastalikID]),
    FOREIGN KEY ([IlacID]) REFERENCES [dbo].[Ilac] ([IlacID])
);

--hasta alarji ilşkisi
CREATE TABLE [dbo].[HastaAlerji] (
    [HastaID] INT NOT NULL,
    [AlerjiID] INT NOT NULL,
    PRIMARY KEY ([HastaID], [AlerjiID]),
    FOREIGN KEY ([HastaID]) REFERENCES [dbo].[Hasta] ([HastaID]),
    FOREIGN KEY ([AlerjiID]) REFERENCES [dbo].[Alerji] ([AlerjiID])
);


--                       EKLEME KISMI
INSERT INTO Hasta (HastaID, Ad, Soyad, GirisTarihi)   
VALUES  
(1, 'Ali', 'Kaya', '2023-01-01'),  
(2, 'Ayşe', 'Demir', '2023-02-01'),  
(3, 'Mehmet', 'Yılmaz', '2023-03-01'),  
(4, 'Zeynep', 'Koç', '2023-04-01'),  
(5, 'Fatma', 'Turan', '2023-05-01'),  
(6, 'Ahmet', 'Kara', '2023-06-01'),  
(7, 'Elif', 'Arslan', '2023-07-01'),  
(8, 'Burak', 'Şahin', '2023-08-01'),  
(9, 'Ece', 'Yıldız', '2023-09-01'),  
(10, 'Cem', 'Çelik', '2023-10-01'),  
(11, 'Selin', 'Güneş', '2023-11-01'),  
(12, 'Murat', 'Demir', '2023-12-01'),  
(13, 'Deniz', 'Ekinci', '2023-12-10'),  
(14, 'İpek', 'Kaya', '2023-12-15'),  
(15, 'Can', 'Kurt', '2023-12-20'),  
(16, 'Esra', 'Bilge', '2023-12-25'),  
(17, 'Ayla', 'Deniz', '2023-12-30'),  
(18, 'Ozan', 'Çelik', '2023-12-31'),  
(19, 'Hakan', 'Öztürk', '2024-01-01'),  
(20, 'Gizem', 'Tuncer', '2024-01-02');


--doktor ekleme
--select * from Doktor
INSERT INTO Doktor (DoktorID, Ad, Soyad, Bölüm)  
VALUES  
(1, 'ahenk', 'k', 'hekim'),
(2, 'duha', 'önad', 'anahekim'),
(3, 'Zeynep', 'Koç', 'Ortopedi'),  
(4, 'Fatma', 'Arslan', 'Dermatoloji'),  
(5, 'Ali', 'Kaya', 'Pediatri'),  
(6, 'Elif', 'Çelik', 'Onkoloji'),  
(7, 'Ayşe', 'Şahin', 'Gastroenteroloji'),  
(8, 'Murat', 'Turan', 'Üroloji'),  
(9, 'Burcu', 'Aydın', 'Endokrinoloji'),  
(10, 'Efe', 'Kara', 'Psikiyatri'),  
(11, 'Selin', 'Gül', 'Kardiyoloji'),  
(12, 'Barış', 'Tan', 'Nöroloji'),  
(13, 'Hakan', 'Öz', 'Ortopedi'),  
(14, 'Deniz', 'Yıldız', 'Dermatoloji'),  
(15, 'Pelin', 'Ünal', 'Pediatri'),  
(16, 'Fırat', 'Aslan', 'Onkoloji'),  
(17, 'Arda', 'Bilir', 'Gastroenteroloji'),  
(18, 'Can', 'Duran', 'Kardiyoloji'),  
(19, 'Sinem', 'Tuncer', 'Endokrinoloji'),  
(20, 'Berk', 'Başar', 'Psikiyatri') 

--ilac 
--select * from Ilac
INSERT INTO Ilac (IlacID, IlacAdı, HastalikID, STT)  
VALUES  
(1, 'Parol', 1, '2025-01-01'),  
(2, 'Aspirin', 2, '2025-02-01'),  
(3, 'Amoklavin', 3, '2025-03-01'),  
(4, 'Fucidin', 4, '2025-04-01'),  
(5, 'Ventolin', 5, '2025-05-01'),  
(6, 'Kemoterapi İlacı', 6, '2025-06-01'),  
(7, 'Losec', 7, '2025-07-01'),  
(8, 'Rovatinex', 8, '2025-08-01'),  
(9, 'Metformin', 9, '2025-09-01'),  
(10, 'Prozac', 10, '2025-10-01'),  
(11, 'Seretide', 11, '2025-11-01'),  
(12, 'Sudafed', 12, '2025-12-01'),  
(13, 'Amlodipin', 13, '2026-01-01'),  
(14, 'Depakin', 14, '2026-02-01'),  
(15, 'Naprosyn', 15, '2026-03-01'),  
(16, 'Ferrosanol', 16, '2026-04-01'),  
(17, 'C-Pap', 17, '2026-05-01'),  
(18, 'Valtrex', 18, '2026-06-01'),  
(19, 'Betaserc', 19, '2026-07-01'),  
(20, 'Levodopa', 20, '2026-08-01'),  
(21, 'Imodium', 21, '2026-09-01'),  
(22, 'Dulcolax', 22, '2026-10-01'),  
(23, 'Digoxin', 23, '2026-11-01'),  
(24, 'Midodrin', 24, '2026-12-01'),  
(25, 'Crestor', 25, '2027-01-01'),  
(26, 'Naprosyn', 26, '2027-02-01'),  
(27, 'Voltarol', 27, '2027-03-01'),  
(28, 'Rifampicin', 28, '2027-04-01'),  
(29, 'Celebrex', 29, '2027-05-01'),  
(30, 'Dovonex', 30, '2027-06-01'),  
(31, 'Malarone', 31, '2027-07-01'),  
(32, 'Tetanus Ig', 32, '2027-08-01'),  
(33, 'Isoniazid', 33, '2027-09-01'),  
(34, 'Levotiron', 34, '2027-10-01'),  
(35, 'Ibuprofen', 35, '2027-11-01'),  
(36, 'Actilyse', 36, '2027-12-01'),  
(37, 'Tamiflu', 37, '2028-01-01'),  
(38, 'Imigran', 38, '2028-02-01'),  
(39, 'Augmentin', 39, '2028-03-01'),  
(40, 'Gaviscon', 40, '2028-04-01'),  
(41, 'Pulmicort', 41, '2028-05-01'),  
(42, 'Cipralex', 42, '2028-06-01'),  
(43, 'Lyrica', 43, '2028-07-01'),  
(44, 'Acivir', 44, '2028-08-01'),  
(45, 'Nifedipin', 45, '2028-09-01'),  
(46, 'Arava', 46, '2028-10-01'),  
(47, 'Insulin', 47, '2028-11-01'),  
(48, 'Esomeprazole', 48, '2028-12-01'),  
(49, 'Cisplatin', 49, '2029-01-01'),  
(50, 'Voltarol', 50, '2029-02-01'); 


--hastalık
--select * from Hastalik
INSERT INTO Hastalik (HastalİkID, HastalikAdi, IlacID)  
VALUES  
(1, 'Grip', 1),  
(2, 'Migren', 2),  
(3, 'Kırık', 3),  
(4, 'Egzama', 4),  
(5, 'Bronşit', 5),  
(6, 'Kanser', 6),  
(7, 'Reflü', 7),  
(8, 'Böbrek Taşı', 8),  
(9, 'Diyabet', 9),  
(10, 'Depresyon', 10),  
(11, 'Astım', 11),  
(12, 'Sinüzit', 12),  
(13, 'Hipertansiyon', 13),  
(14, 'Epilepsi', 14),  
(15, 'Romatizma', 15),  
(16, 'Anemi', 16),  
(17, 'Uyku Apnesi', 17),  
(18, 'Zona', 18),  
(19, 'Vertigo', 19),  
(20, 'Parkinson', 20)

--refakatci
--select * from Refakatci
INSERT INTO Refakatci (RefakatciID, Ad, Soyad, Telefon)  
VALUES  
(1, 'Ahmet', 'Kaya', '05321234567'),  
(2, 'Mehmet', 'Yılmaz', '05329876543'),  
(3, 'Ali', 'Demir', '05324567890'),  
(4, 'Ayşe', 'Çelik', '05327654321'),  
(5, 'Fatma', 'Şahin', '05321112233'),  
(6, 'Zeynep', 'Eren', '05329998877'),  
(7, 'Hasan', 'Kar', '05325556677'),  
(8, 'Hüseyin', 'Polat', '05327778899'),  
(9, 'Emre', 'Koç', '05324445566'),  
(10, 'Elif', 'Kılıç', '05323334455'),  
(11, 'Burak', 'Ertürk', '05325553322'),  
(12, 'Buse', 'Güneş', '05320001122'),  
(13, 'Cem', 'Arslan', '05328887766'),  
(14, 'Cansu', 'Yıldız', '05321110099'),  
(15, 'Efe', 'Taş', '05323334422'),  
(16, 'Selin', 'Toprak', '05326667788'),  
(17, 'Kemal', 'Aydın', '05327776655'),  
(18, 'Melisa', 'Deniz', '05329997744'),  
(19, 'Tuna', 'Kurt', '05324442211'),  
(20, 'Ezgi', 'Köroğlu', '05321112233'),
(21, 'Barış', 'Altın', '05325554433'),  
(22, 'Beren', 'Aktaş', '05329998811'),  
(23, 'Mert', 'Şimşek', '05327775544'),  
(24, 'Deniz', 'Karaca', '05328886677'),  
(25, 'Seda', 'Özkan', '05321114433'),  
(26, 'Halil', 'Beyaz', '05325557788'),  
(27, 'Aslı', 'Duman', '05320009911'),  
(28, 'Görkem', 'Efe', '05327778855'),  
(29, 'Ebru', 'Korkmaz', '05328889944'),  
(30, 'Cemil', 'Vural', '05323332277'),  
(31, 'Berfin', 'Bulut', '05324449900'),  
(32, 'Ozan', 'Yücel', '05325556622'),  
(33, 'Naz', 'Aksoy', '05327772233'),  
(34, 'Burcu', 'Erol', '05328887733'),  
(35, 'Kerem', 'Sağlam', '05326668899'),  
(36, 'Dilara', 'Kaya', '05329997755'),  
(37, 'Yiğit', 'Doğan', '05323331111'),  
(38, 'Derya', 'Başar', '05321114422'),  
(39, 'Onur', 'Erdoğan', '05324445511'),  
(40, 'Sinem', 'Sarı', '05327778844'),  
(41, 'Ufuk', 'Gül', '05325554411'),  
(42, 'Nisa', 'Yaman', '05328886655'),  
(43, 'Eren', 'Bayrak', '05329999900'),  
(44, 'İrem', 'Tuna', '05320002255'),  
(45, 'Cihan', 'Gökmen', '05324447788'),  
(46, 'Serra', 'Bora', '05325553366'),  
(47, 'Selim', 'Orhan', '05327773311'),  
(48, 'Merve', 'Karataş', '05328889922'),  
(49, 'Ahsen', 'Çetin', '05321113377'),  
(50, 'Ferhat', 'Doğru', '05324446633'); 


--alerji 
--select * from Alerji
INSERT INTO Alerji (AlerjiID, AlerjiAdi)  
VALUES  
(1, 'Polen Alerjisi'),  
(2, 'Hayvan Tüyü Alerjisi'),  
(3, 'Toz Alerjisi'),  
(4, 'Gıda Alerjisi - Fıstık'),  
(5, 'Laktoz İntoleransı'),  
(6, 'Gıda Alerjisi - Glüten'),  
(7, 'İlaç Alerjisi - Penisilin'),  
(8, 'İlaç Alerjisi - Aspirin'),  
(9, 'Arı Sokması Alerjisi'),  
(10, 'Çimen Alerjisi'),  
(11, 'Lateks Alerjisi'),  
(12, 'Böcek Isırığı Alerjisi'),  
(13, 'Deniz Ürünleri Alerjisi'),  
(14, 'Evcil Hayvan Kepeği Alerjisi'),  
(15, 'Küf Alerjisi'),  
(16, 'Yumurta Alerjisi'),  
(17, 'Ceviz Alerjisi'),  
(18, 'Badem Alerjisi'),  
(19, 'Susam Alerjisi'),  
(20, 'Soğuk Alerjisi'),  
(21, 'Sıcak Alerjisi'),  
(22, 'Güneş Alerjisi'),  
(23, 'Kedi Alerjisi'),  
(24, 'Köpek Alerjisi'),  
(25, 'İnek Sütü Proteini Alerjisi'),  
(26, 'Ev Tozu Akari Alerjisi'),  
(27, 'Kimyasal Alerjisi'),  
(28, 'Kozmetik Alerjisi'),  
(29, 'Bitki Poleni Alerjisi'),  
(30, 'Çikolata Alerjisi'),  
(31, 'Kabuklu Deniz Ürünleri Alerjisi'),  
(32, 'Sarımsak Alerjisi'),  
(33, 'Balık Alerjisi'),  
(34, 'Mantar Alerjisi'),  
(35, 'Buğday Alerjisi'),  
(36, 'Kahve Alerjisi'),  
(37, 'Hava Kirliliği Alerjisi'),  
(38, 'Soya Alerjisi'),  
(39, 'Hardal Alerjisi'),  
(40, 'Kuru Yemiş Alerjisi'),  
(41, 'Meyve Alerjisi - Elma'),  
(42, 'Meyve Alerjisi - Muz'),  
(43, 'Meyve Alerjisi - Kivi'),  
(44, 'Meyve Alerjisi - Çilek'),  
(45, 'Meyve Alerjisi - Üzüm'),  
(46, 'İlaç Alerjisi - Antibiyotik'),  
(47, 'İlaç Alerjisi - Parasetamol'),  
(48, 'Parfüm Alerjisi'),  
(49, 'Deterjan Alerjisi'),  
(50, 'Sabun Alerjisi'); 

--hemsire
--select* from Hemsire
INSERT INTO Hemsire (HemsireID, Ad, Soyad)  
VALUES  
(1, 'Ayşe', 'Kara'),  
(2, 'Fatma', 'Yıldız'),  
(3, 'Elif', 'Demir'),  
(4, 'Merve', 'Çelik'),  
(5, 'Gözde', 'Arslan'),  
(6, 'Selin', 'Şahin'),  
(7, 'Büşra', 'Aydın'),  
(8, 'Zeynep', 'Aksoy'),  
(9, 'İrem', 'Polat'),  
(10, 'Duygu', 'Turan'),  
(11, 'Hülya', 'Öztürk'),  
(12, 'Nihan', 'Koç'),  
(13, 'Ece', 'Yılmaz'),  
(14, 'Dilara', 'Kaplan'),  
(15, 'Aslı', 'Eren'),  
(16, 'Seda', 'Güneş'),  
(17, 'Ezgi', 'Kurt'),  
(18, 'Funda', 'Akkaya'),  
(19, 'Betül', 'Ünal'),  
(20, 'Leyla', 'Can'),  
(21, 'Tuğçe', 'Erdoğan'),  
(22, 'Burcu', 'Çelik'),  
(23, 'Melis', 'Kaya'),  
(24, 'Dilek', 'Bozkurt'),  
(25, 'Sevda', 'Altun'),  
(26, 'Cansu', 'Kara'),  
(27, 'Yasemin', 'Tuna'),  
(28, 'Deniz', 'Özkan'),  
(29, 'Serap', 'Arıkan'),  
(30, 'Hande', 'Akın'),  
(31, 'Gizem', 'Erol'),  
(32, 'Sibel', 'Bal'),  
(33, 'Nur', 'Tekin'),  
(34, 'Berna', 'Üstün'),  
(35, 'Nil', 'Demirci'),  
(36, 'Çağla', 'Koçak'),  
(37, 'Mine', 'Arı'),  
(38, 'Ebru', 'Şimşek'),  
(39, 'Pelin', 'Özen'),  
(40, 'Tuana', 'Sağlam'),  
(41, 'Gamze', 'Çiftçi'),  
(42, 'Arzu', 'Karaman'),  
(43, 'Neşe', 'Durmaz'),  
(44, 'Şeyda', 'Bayrak'),  
(45, 'Aylin', 'Toprak'),  
(46, 'Havva', 'Eryılmaz'),  
(47, 'Nazlı', 'Özdemir'),  
(48, 'Nergis', 'Işık'),  
(49, 'Banu', 'Aktaş'),  
(50, 'Esra', 'Karaca');  

--select * from Taburcu
INSERT INTO Taburcu (TaburcuID, HastaID, CikisTarih)  
VALUES  
(1, 1, '2024-01-15'),  
(2, 2, '2024-02-10'),  
(3, 3, '2024-03-05'),  
(4, 4, '2024-03-20'),  
(5, 5, '2024-04-01'),  
(6, 6, '2024-04-15'),  
(7, 7, '2024-05-10'),  
(8, 8, '2024-06-05'),  
(9, 9, '2024-06-20'),  
(10, 10, '2024-07-01')


--select * from Hasta
--select * from Doktor
--select * from HastaDoktor
insert into HastaDoktor(HastaID,DoktorID)
values
(1, 1),  
(2, 2),  
(3, 3),  
(4, 4),  
(5, 5),  
(6, 6),  
(7, 7),  
(8, 8),  
(9, 9),  
(10, 10),
(11, 11),  
(12, 12),  
(13,13),  
(14, 14),  
(15, 15),  
(16, 16),  
(17, 17),  
(18, 18),  
(19, 19),  
(20, 20)

--select * from Hasta
--select * from Alerji
--select * from HastaAlerji
insert into HastaAlerji(HastaID,AlerjiID)
values
(1, 1),  
(2, 2),  
(3, 3),  
(4, 4),  
(5, 5),  
(6, 6),  
(7, 7),  
(8, 8),  
(9, 9),  
(10, 10),
(11, 11),  
(12, 12),  
(13,13),  
(14, 14),  
(15, 15),  
(16, 16),  
(17, 17),  
(18, 18),  
(19, 19),  
(20, 20)

--select * from Hasta
--select * from Hastalik
--select * from HastaHastalik
insert into HastaHastalik(HastaID,HastalikID)
values
(1, 1),  
(2, 2),  
(3, 3),  
(4, 4),  
(5, 5),  
(6, 6),  
(7, 7),  
(8, 8),  
(9, 9),  
(10, 10),
(11, 11),  
(12, 12),  
(13,13),  
(14, 14),  
(15, 15),  
(16, 16),  
(17, 17),  
(18, 18),  
(19, 19),  
(20, 20)


--select * from Hasta
--select * from Hemsire
--select * from HastaHemsire
insert into HastaHemsire(HastaID,HemsireID)
values
(1, 1),  
(2, 2),  
(3, 3),  
(4, 4),  
(5, 5),  
(6, 6),  
(7, 7),  
(8, 8),  
(9, 9),  
(10, 10),
(11, 11),  
(12, 12),  
(13,13),  
(14, 14),  
(15, 15),  
(16, 16),  
(17, 17),  
(18, 18),  
(19, 19),  
(20, 20)


--select * from Hasta
--select * from Ilac
--select * from HastaIlac
insert into HastaIlac(HastaID,IlacID)
values
(1, 1),  
(2, 2),  
(3, 3),  
(4, 4),  
(5, 5),  
(6, 6),  
(7, 7),  
(8, 8),  
(9, 9),  
(10, 10),
(11, 11),  
(12, 12),  
(13,13),  
(14, 14),  
(15, 15),  
(16, 16),  
(17, 17),  
(18, 18),  
(19, 19),  
(20, 20)

--select * from Hastalik
--select * from Ilac
--select * from HastalikIlac
insert into HastalikIlac(HastalikID,IlacID)
values
(1, 1),  
(2, 2),  
(3, 3),  
(4, 4),  
(5, 5),  
(6, 6),  
(7, 7),  
(8, 8),  
(9, 9),  
(10, 10),
(11, 11),  
(12, 12),  
(13,13),  
(14, 14),  
(15, 15),  
(16, 16),  
(17, 17),  
(18, 18),  
(19, 19),  
(20, 20)
