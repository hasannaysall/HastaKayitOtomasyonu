-- 3. Tüm Hastaları Silme ve Kaydı Geri Alma
BEGIN TRANSACTION;

BEGIN TRY
    -- Tüm hastaları sil
    DELETE FROM Hasta;

    -- İşlemi tamamla
    COMMIT TRANSACTION;
    PRINT 'Tüm hastalar başarıyla silindi.';
END TRY
BEGIN CATCH
    -- Hata durumunda işlemi geri al
    ROLLBACK TRANSACTION;
    PRINT 'Hata oluştu. İşlem geri alındı.';
END CATCH;