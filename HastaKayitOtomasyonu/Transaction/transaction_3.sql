
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
