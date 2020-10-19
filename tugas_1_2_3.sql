CREATE VIEW detail_mahasiswa2 AS
SELECT a.nim,a.nama,a.jurusan,b.nama_dekan,b.akr FROM
(SELECT nim,nama,jurusan FROM mahasiswa)a,
(SELECT jurusan,nama_dekan,akr FROM universitas)b
WHERE a.jurusan=b.jurusan;


SELECT * FROM mahasiswa;
CREATE TABLE mahasiswa2(
nim VARCHAR(8),
nama VARCHAR(100),
smt1 FLOAT,
smt2 FLOAT,
smt3 FLOAT)

INSERT INTO mahasiswa2 VALUES
('17140143','Rudi Permana','2.56','3.14','3.22');
('17080305','Rina Kumala','3.45','2.56','3.67'),
('17090113','Riana Putra','3.12','2.98','3.45'),
('17090308','C Wijaya','3.78','3.23','3.11'),
('17140119','Sandrai Fatmala','2.12','2.78','2.56');

#tugas 1
CREATE VIEW nilai_mahasiswa2 AS
SELECT nim,nama,smt1,smt2,smt3,ROUND((smt1+smt2+smt3)/3,2) ipk FROM mahasiswa2;



SELECT * FROM nilai_mahasiswa2

SELECT * FROM nilai_mahasiswa2
//tugas 2
CREATE VIEW nama_ipk3 AS
SELECT CONCAT(nama,' ','(',ipk,')')nama_ipk FROM nilai_mahasiswa2 ORDER BY ipk DESC;


 //tugas 3
SELECT CONCAT(nama,' ','(',ipk,')')nama_ipk FROM nilai_mahasiswa2 WHERE nama LIKE 'R%';

