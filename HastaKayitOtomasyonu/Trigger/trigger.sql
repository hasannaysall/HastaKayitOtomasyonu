CREATE TRIGGER trg_Ilac_Log
ON Ilac
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    INSERT INTO IlacLog (IlacID, IlacAdý, Ýþlem, Kullanýcý, Tarih, EskiDeðer, YeniDeðer)
    SELECT 
        COALESCE(i.IlacID, d.IlacID) AS IlacID,
        COALESCE(i.IlacAdý, d.IlacAdý) AS IlacAdý,
        CASE 
            WHEN i.IlacID IS NOT NULL AND d.IlacID IS NOT NULL THEN 'UPDATE'
            WHEN i.IlacID IS NOT NULL THEN 'INSERT'
            ELSE 'DELETE'
        END AS Ýþlem,
        SYSTEM_USER AS Kullanýcý,
        GETDATE() AS Tarih,
        CONCAT(d.IlacID, ':', d.IlacAdý) AS EskiDeðer,
        CONCAT(i.IlacID, ':', i.IlacAdý) AS YeniDeðer
    FROM inserted i
    FULL OUTER JOIN deleted d ON i.IlacID = d.IlacID;
END;
