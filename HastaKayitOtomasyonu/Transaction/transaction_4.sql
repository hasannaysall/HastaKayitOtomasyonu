
BEGIN TRANSACTION;

BEGIN TRY
  
    UPDATE Hasta
    SET Ad = 'Ahmet', Soyad = 'Demir'
    WHERE HastaID = 2;

 
    UPDATE Refakatçi
    SET Ad = 'Zeynep', Soyad = 'Kaya'
    WHERE RefakatçiID = 5;

  
    COMMIT TRANSACTION;
    PRINT 'Güncellemeler başarıyla tamamlandı.';
END TRY
BEGIN CATCH
  
    ROLLBACK TRANSACTION;
    PRINT 'Hata oluştu. Tüm işlemler geri alındı.';
END CATCH;
