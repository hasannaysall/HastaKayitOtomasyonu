CREATE TRIGGER trg_Hasta_Delete_Refakatçi_Update
ON Hasta
AFTER DELETE
AS
BEGIN
    UPDATE Refakatçi
    SET HastaID = NULL
    WHERE HastaID IN (SELECT HastaID FROM DELETED);
END;
