
BEGIN TRANSACTION;

BEGIN TRY
 
    UPDATE Hasta
    SET DoktorID = 4
    WHERE HastaID = 1;

   
    UPDATE Hasta
    SET İlacID = 2
    WHERE HastaID = 1;

    
    COMMIT TRANSACTION;
    PRINT 'Güncellemeler başarıyla tamamlandı.';
END TRY
BEGIN CATCH
   
    ROLLBACK TRANSACTION;
    PRINT 'Hata oluştu. İşlemler geri alındı.';
END CATCH;
