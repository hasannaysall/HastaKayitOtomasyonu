CREATE TRIGGER trg_Ilac_Log
ON Ilac
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    INSERT INTO IlacLog (IlacID, IlacAdı, İşlem, Kullanıcı, Tarih, EskiDeğer, YeniDeğer)
    SELECT 
        COALESCE(i.IlacID, d.IlacID) AS IlacID,
        COALESCE(i.IlacAdı, d.IlacAdı) AS IlacAdı,
        CASE 
            WHEN i.IlacID IS NOT NULL AND d.IlacID IS NOT NULL THEN 'UPDATE'
            WHEN i.IlacID IS NOT NULL THEN 'INSERT'
            ELSE 'DELETE'
        END AS İşlem,
        SYSTEM_USER AS Kullanıcı,
        GETDATE() AS Tarih,
        CONCAT(d.IlacID, ':', d.IlacAdı) AS EskiDeğer,
        CONCAT(i.IlacID, ':', i.IlacAdı) AS YeniDeğer
    FROM inserted i
    FULL OUTER JOIN deleted d ON i.IlacID = d.IlacID;
END;
