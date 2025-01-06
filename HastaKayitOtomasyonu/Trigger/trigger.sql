CREATE TRIGGER trg_Ilac_Log
ON Ilac
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    INSERT INTO IlacLog (IlacID, IlacAd�, ��lem, Kullan�c�, Tarih, EskiDe�er, YeniDe�er)
    SELECT 
        COALESCE(i.IlacID, d.IlacID) AS IlacID,
        COALESCE(i.IlacAd�, d.IlacAd�) AS IlacAd�,
        CASE 
            WHEN i.IlacID IS NOT NULL AND d.IlacID IS NOT NULL THEN 'UPDATE'
            WHEN i.IlacID IS NOT NULL THEN 'INSERT'
            ELSE 'DELETE'
        END AS ��lem,
        SYSTEM_USER AS Kullan�c�,
        GETDATE() AS Tarih,
        CONCAT(d.IlacID, ':', d.IlacAd�) AS EskiDe�er,
        CONCAT(i.IlacID, ':', i.IlacAd�) AS YeniDe�er
    FROM inserted i
    FULL OUTER JOIN deleted d ON i.IlacID = d.IlacID;
END;
