CREATE TRIGGER trg_Hasta_Insert
ON Hasta
AFTER INSERT
AS
BEGIN
    INSERT INTO HastaLog (HastaID, İşlem, Tarih)
    SELECT HastaID, 'Yeni Kayıt Eklendi', GETDATE()
    FROM INSERTED;
END;
