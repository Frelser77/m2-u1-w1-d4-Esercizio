
CREATE PROCEDURE ImpiegatiPerTipoDiImpiegoScelto @Impiego INT
AS
BEGIN 

SELECT * FROM IMPIEGATI 
WHERE IDImpiego = @Impiego

END
GO
