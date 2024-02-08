CREATE PROCEDURE NewImpiegato
    @IDImpiegato int,
    @Cognome nvarchar(30), 
    @Nome nvarchar(30), 
    @CF nchar(16), 
    @Eta int, 
    @RedditoMensile money, 
    @DetrazioneFiscale bit, 
    @IDImpiego int
AS
BEGIN
    -- Verifica che l'IDImpiego sia tra 1 e 5
    IF @IDImpiego BETWEEN 1 AND 5
    BEGIN
        -- Aggiorna il record esistente con i nuovi valori
        UPDATE IMPIEGATI
        SET Cognome = @Cognome, 
            Nome = @Nome, 
            CF = @CF, 
            Eta = @Eta, 
            RedditoMensile = @RedditoMensile, 
            DetrazioneFiscale = @DetrazioneFiscale, 
            IDImpiego = @IDImpiego
        WHERE IDImpiegato = @IDImpiegato
    END
    ELSE
    BEGIN
        -- Se l'IDImpiego non è valido, genera un errore
        THROW 50001, 'L''IDImpiego deve essere tra 1 e 5', 1;
    END
END
GO
