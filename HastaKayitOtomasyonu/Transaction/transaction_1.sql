
BEGIN TRANSACTION;

BEGIN TRY
   
    INSERT INTO Hasta (Ad, Soyad, HastalıkID, DoktorID, İlacID, HemşireID, AlerjiID, RefakatçiID, GirişTarihi)
    VALUES ('Mehmet', 'Yıldız', 2, 3, 1, 4, 2, 5, '2025-01-01');


    INSERT INTO İlac (İlaçAdı, HastalıkID, STT)
    VALUES ('Yeni İlaç', 2, '2026-12-01');

 
    COMMIT TRANSACTION;
    PRINT 'Kayıtlar başarıyla eklendi.';
END TRY
BEGIN CATCH
    
    ROLLBACK TRANSACTION;
    PRINT 'Hata oluştu. Tüm işlemler geri alındı.';
END CATCH;
