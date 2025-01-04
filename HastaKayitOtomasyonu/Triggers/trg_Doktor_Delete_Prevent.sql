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
        PRINT 'Bu doktor silinemez çünkü ona bağlı hastalar bulunmaktadır.';
    END
    ELSE
    BEGIN
        DELETE FROM Doktor
        WHERE DoktorID IN (SELECT DoktorID FROM DELETED);
    END
END;
