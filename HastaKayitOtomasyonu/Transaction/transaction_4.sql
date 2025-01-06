BEGIN TRANSACTION;

BEGIN TRY
    -- Hasta tablosunu güncelle
    UPDATE Hasta
    SET Ad = 'Ahmet', Soyad = 'Demir'
    WHERE HastaID = 100;

    -- Etkilenen satır sayısını kontrol et
    IF @@ROWCOUNT = 0
        THROW 51000, 'Hasta tablosunda belirtilen ID bulunamadı.', 1;

    -- Refakatçi tablosunu güncelle
    UPDATE Refakatçi
    SET Ad = 'Zeynep', Soyad = 'Kaya'
    WHERE RefakatçiID = 5555;

    -- Etkilenen satır sayısını kontrol et
    IF @@ROWCOUNT = 0
        THROW 51001, 'Refakatçi tablosunda belirtilen ID bulunamadı.', 1;

    -- İşlemleri onayla
    COMMIT TRANSACTION;
    PRINT 'Güncellemeler başarıyla tamamlandı.';
END TRY
BEGIN CATCH
    -- İşlemleri geri al
    ROLLBACK TRANSACTION;

    -- Hata mesajını göster
    PRINT ERROR_MESSAGE();
END CATCH;

