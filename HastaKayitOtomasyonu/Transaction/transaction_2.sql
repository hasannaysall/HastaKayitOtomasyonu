-- 2. Hasta Doktorunu ve İlacını Güncelleme
BEGIN TRANSACTION;

BEGIN TRY
    -- Doktor güncelleme
    UPDATE Hasta
    SET DoktorID = 4
    WHERE HastaID = 1;

    -- İlaç güncelleme
    UPDATE Hasta
    SET İlacID = 2
    WHERE HastaID = 1;

    -- İşlemi tamamla
    COMMIT TRANSACTION;
    PRINT 'Güncellemeler başarıyla tamamlandı.';
END TRY
BEGIN CATCH
    -- Hata durumunda işlemi geri al
    ROLLBACK TRANSACTION;
    PRINT 'Hata oluştu. İşlemler geri alındı.';
END CATCH;