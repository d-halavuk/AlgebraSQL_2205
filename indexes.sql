USE AdventureWorksOBP

SET STATISTICS IO ON

--2.
SELECT IDRacun, DatumIzdavanja FROM Racun 
WHERE DatumIzdavanja BETWEEN '20010702' AND '20010702 23:59:59'

CREATE NONCLUSTERED INDEX ind_datum_izdavanja ON Racun(DatumIzdavanja)

DROP INDEX ind_datum_izdavanja ON Racun


--3.
SELECT IDRacun, DatumIzdavanja, Komentar FROM Racun 
WHERE DatumIzdavanja BETWEEN '20010702' AND '20010702 23:59:59'

CREATE NONCLUSTERED INDEX ind_datum_izdavanja2 ON Racun(DatumIzdavanja) INCLUDE (Komentar)

DROP INDEX ind_datum_izdavanja2 ON Racun