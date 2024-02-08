CREATE PROCEDURE CreareImpiegato
    @Cognome nvarchar(30), 
    @Nome nvarchar(30), 
    @CF nchar(16), 
    @Eta int, 
    @RedditoMensile money, 
    @DetrazioneFiscale bit, 
    @IDImpiego int
AS
BEGIN

        INSERT INTO IMPIEGATI (Cognome, Nome, CF, Eta, RedditoMensile, DetrazioneFiscale, IDImpiego)
        VALUES (@Cognome, @Nome, @CF, @Eta, @RedditoMensile, @DetrazioneFiscale, @IDImpiego)
     
END
GO
