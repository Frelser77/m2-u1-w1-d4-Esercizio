CREATE PROCEDURE DeleteImpiegato
    @IDImpiegato int
AS
BEGIN TRY
    DELETE FROM IMPIEGATI
    WHERE IDImpiegato = @IDImpiegato;

    IF @@ROWCOUNT = 0
        THROW 50001, 'L''Impiegato con l''ID specificato non esiste o è già stato eliminato.', 1;
END TRY
BEGIN CATCH
    -- l'errore originale che è stato catturato dal CATCH
    THROW;
END CATCH
GO
