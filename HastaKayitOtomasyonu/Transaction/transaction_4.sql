-- 4. Birden Fazla Tabloyu Güncelleme
BEGIN TRANSACTION;

BEGIN TRY
    -- Hasta bilgisi güncelleme
    UPDATE Hasta
    SET Ad = 'Ahmet', Soyad = 'Demir'
    WHERE HastaID = 2;

    -- Refakatçi bilgisi güncelleme
    UPDATE Refakatçi
    SET Ad = 'Zeynep', Soyad = 'Kaya'
    WHERE RefakatçiID = 5;

    -- İşlemi tamamla
    COMMIT TRANSACTION;
    PRINT 'Güncellemeler başarıyla tamamlandı.';
END TRY
BEGIN CATCH
    -- Hata durumunda işlemi geri al
    ROLLBACK TRANSACTION;
    PRINT 'Hata oluştu. Tüm işlemler geri alındı.';
END CATCH;