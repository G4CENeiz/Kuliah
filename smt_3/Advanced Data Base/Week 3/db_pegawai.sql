CREATE DATABASE db_pegawai;
USE db_pegawai;

CREATE TABLE Pegawai (
    NoPegawai   VARCHAR(5)  NOT NULL PRIMARY KEY,
    NamaPegawai VARCHAR(15) NOT NULL
);

CREATE TABLE Golongan (
    Golongan VARCHAR(1) NOT NULL PRIMARY KEY
);

CREATE TABLE Proyek (
    NoProyek VARCHAR(5) NOT NULL PRIMARY KEY
);

CREATE TABLE ProyekPegawai (
    NoProyek VARCHAR(5) NOT NULL
);

DESCRIBE Pegawai;
DESCRIBE Golongan;
DESCRIBE Proyek;
DESCRIBE ProyekPegawai;

ALTER TABLE Pegawai ADD COLUMN Golongan VARCHAR(1) NOT NULL;
DESCRIBE Pegawai;

ALTER TABLE Golongan ADD BesarGaji INTEGER(10) NOT NULL;
DESCRIBE Golongan;

ALTER TABLE Proyek ADD NamaProyek VARCHAR(5) NOT NULL;
DESCRIBE Proyek;

ALTER TABLE ProyekPegawai ADD NoPegawai VARCHAR(5) NOT NULL;
ALTER TABLE ProyekPegawai ADD FOREIGN KEY(NoPegawai) REFERENCES Pegawai(NoPegawai);
ALTER TABLE ProyekPegawai ADD FOREIGN KEY(NoProyek) REFERENCES Proyek(NoProyek);
DESCRIBE ProyekPegawai;

INSERT INTO Golongan 
VALUES  ('A', 1000000),
        ('B', 900000),
        ('C', 750000),
        ('D', 500000);
INSERT INTO Pegawai 
VALUES  ('Peg01', 'Anton', 'A'),
        ('Peg02', 'Paula', 'B'),
        ('Peg03', 'Daniar', 'C'),
        ('Peg04', 'Lubis', 'C'),
        ('Peg06', 'Koko', 'C'),
        ('Peg07', 'Keni', 'B'),
        ('Peg08', 'Sofi', 'B'),
        ('Peg12', 'Sita', 'B'),
        ('Peg14', 'Yusni', 'B'),
        ('Peg15', 'Udin', 'D'),
        ('Peg16', 'Didit', 'D'),
        ('Peg17', 'Dani', 'D');
INSERT INTO Proyek 
VALUES  ('NP001', 'BRR'),
        ('NP002', 'PEMDA'),
        ('NP003', 'CBR'),
        ('NP004', 'ASK'),
        ('NP005', 'OB');
INSERT INTO ProyekPegawai 
VALUES  ('NP001', 'Peg01'),
        ('NP001', 'Peg02'),
        ('NP001', 'Peg06'),
        ('NP002', 'Peg01'),
        ('NP002', 'Peg12'),
        ('NP002', 'Peg14'),
        ('NP003', 'Peg02'),
        ('NP003', 'Peg03'),
        ('NP003', 'Peg04'),
        ('NP004', 'Peg07'),
        ('NP004', 'Peg08'),
        ('NP004', 'Peg06'),
        ('NP005', 'Peg15'),
        ('NP005', 'Peg16'),
        ('NP005', 'Peg17');

SELECT
        Proyek.NoProyek,
        Proyek.NamaProyek,
        Pegawai.NoPegawai,
        Pegawai.NamaPegawai,
        Golongan.Golongan,
        Golongan.BesarGaji
    FROM Pegawai
    JOIN Golongan ON Pegawai.golongan = Golongan.Golongan
    JOIN ProyekPegawai ON Pegawai.NoPegawai = ProyekPegawai.NoPegawai
    JOIN Proyek ON ProyekPegawai.NoProyek = Proyek.NoProyek;