-- 5. Ödeme İşlemi
BEGIN TRANSACTION;

BEGIN TRY
    -- Hastanın hesabından ücret düş
    UPDATE HastaHesap
    SET Bakiye = Bakiye - 500
    WHERE HastaID = 3;

    -- Ödeme tablosuna kayıt ekle
    INSERT INTO Odeme (HastaID, Tutar, Tarih)
    VALUES (3, 500, GETDATE());

    -- İşlemi tamamla
    COMMIT TRANSACTION;
    PRINT 'Ödeme işlemi başarıyla tamamlandı.';
END TRY
BEGIN CATCH
    -- Hata durumunda işlemi geri al
    ROLLBACK TRANSACTION;
    PRINT 'Hata oluştu. Ödeme işlemi geri alındı.';
END CATCH;