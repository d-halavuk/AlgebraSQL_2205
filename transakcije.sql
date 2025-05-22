USE AdventureWorksOBP


CREATE TABLE Osoba(
    IDOsoba int CONSTRAINT PK_Zaposl PRIMARY KEY IDENTITY,
    Ime nvarchar(50),
    Prezime nvarchar(50)
)

SELECT * FROM Osoba
--5
BEGIN TRAN
    INSERT INTO Osoba(Ime, Prezime)
    VALUES('Eva', 'Evic')

    SAVE TRAN tocka1_1

    INSERT INTO Osoba(Ime, Prezime)
    VALUES('Eva2', 'Evic2')

    SAVE TRAN tocka1_2
ROLLBACK TRAN
-- prazna tablica



SELECT * FROM Osoba
--6
BEGIN TRAN
    INSERT INTO Osoba(Ime, Prezime)
    VALUES('Pero', 'Peric')

    SAVE TRAN tocka2_1

    INSERT INTO Osoba(Ime, Prezime)
    VALUES('Pero2', 'Peric')

    SAVE TRAN tocka2_2
COMMIT TRAN
-- oba zapisa u tablici



SELECT * FROM Osoba
--7
BEGIN TRAN
    INSERT INTO Osoba(Ime, Prezime)
    VALUES('Ivo', 'Ivic')

    SAVE TRAN tocka3

    INSERT INTO Osoba(Ime, Prezime)
    VALUES('Ivo2', 'Ivic2')

ROLLBACK TRAN tocka3
ROLLBACK TRAN
--nista novo dodano tablici




SELECT * FROM Osoba
--8
BEGIN TRAN
    INSERT INTO Osoba(Ime, Prezime)
    VALUES('Hrvoje', 'Horvat')

    SAVE TRAN tocka4

    INSERT INTO Osoba(Ime, Prezime)
    VALUES('Hrvoje2', 'Horvat2')

ROLLBACK TRAN tocka4
COMMIT TRAN
--dodan samo prvi zapis u tablicu
