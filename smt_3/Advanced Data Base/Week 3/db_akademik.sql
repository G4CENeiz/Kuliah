CREATE DATABASE db_akademik;
USE db_akademik;

CREATE TABLE Mahasiswa (
    No_Mhs INT(7) NOT NULL PRIMARY KEY,
    Nama_mhs VARCHAR(15) NOT NULL
);
CREATE TABLE Mata_Kuliah (
    Kd_MK VARCHAR(5) NOT NULL PRIMARY KEY,
    Nama_MK VARCHAR(15) NOT NULL PRIMARY KEY
);
CREATE TABLE nilai (
    No_Mhs INT(7) NOT NULL,
    Kode_MK VARCHAR(5) NOT NULL
);
ALTER TABLE Mahasiswa ADD Jurusan VARCHAR(2) NOT NULL;
DESCRIBE Mahasiswa;
DESCRIBE Mata_Kuliah;
DESCRIBE nilai;

ALTER TABLE Mata_Kuliah ADD Kd_Dosen VARCHAR(8) NOT NULL;
DESCRIBE Mata_Kuliah;

ALTER TABLE nilai ADD nilai INT(3) NOT NULL;
ALTER TABLE nilai FOREIGN KEY(No_Mhs) REFERENCES Mahasiswa(No_Mhs);
ALTER TABLE nilai FOREIGN KEY(Kode_MK) REFERENCES Mata_Kuliah(Kd_MK);
DESCRIBE nilai;

CREATE TABLE Dosen (
    Kd_Dosen VARCHAR(4) NOT NULL PRIMARY KEY,
    Nm_Dosen VARCHAR(15) NOT NULL
);
DESCRIBE Dosen;

INSERT INTO Mahasiswa
VALUES  (1921001, 'Aminah', 'MI'),
        (1921002, 'Budiman', 'MI'),
        (1921003, 'Carina', 'MI'),
        (1921004, 'Della', 'TI'),
        (1921005, 'Firda', 'TI');
INSERT INTO Dosen
VALUES  ('B104', 'Ati'),
        ('B105', 'Dita'),
        ('C102', 'Leo');
INSERT INTO Mata_Kuliah
VALUES  ('MI350', 'Basis Data', 'B104'),
        ('MI465', 'Pemrograman', 'B105'),
        ('TI201', 'Mobile', 'C102');
INSERT INTO nilai
VALUES  (1921001, 'MI350', 85),
        (1921002, 'MI465', 87),
        (1921003, 'MI465', 85),
        (1921004, 'TI201', 78),
        (1921005, 'TI201', 80);
SELECT  
        Mahasiswa.No_Mhs,
        Mahasiswa.Nama_mhs,
        Mahasiswa.Jurusan,
        Mata_Kuliah.Kd_MK,
        Mata_Kuliah.Nama_MK,
        Dosen.Kd_Dosen,
        Dosen.Nm_Dosen,
        nilai.nilai
    FROM Mahasiswa
    JOIN nilai ON Mahasiswa.No_Mhs = nilai.No_Mhs
    JOIN Mata_Kuliah ON nilai.Kode_MK = Mata_Kuliah.Kd_MK
    JOIN Dosen ON Mata_Kuliah.Kd_Dosen = Dosen.Kd_Dosen;