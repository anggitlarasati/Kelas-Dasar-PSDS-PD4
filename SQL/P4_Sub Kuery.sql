-- Membuat tabel --
CREATE TABLE MK_Kalkulus (
	NIM VARCHAR(10),
	Nama VARCHAR(30),
	UTS INTEGER,
	UAS INTEGER
)

-- Input data --
INSERT INTO MK_Kalkulus(NIM,Nama,UTS,UAS)
VALUES('2100015036','Anggit Larasati','100','100'),
	  ('2100015041','Sindy Mei Marantika','90','90'),
      ('2100015006','Januar Nur Rasyid','90','90'),
      ('2100015039','Tazkiya Annafs',100,100),
      ('2100015040','Riza Aulia H',100,100)

SELECT * FROM MK_Kalkulus

-- Menampilkan rata-rata per mhs
SELECT *,((UTS+UAS)/2) AS Nilai_Akhir FROM MK_Kalkulus

-- Menampilkan rata-rata seluruh mhs
SELECT AVG(((UTS+UAS)/2)) AS Nilai_Akhir FROM MK_Kalkulus

-- Menampilkan data yang rata2nya > 96
SELECT *,(((UTS+UAS)/2)) AS Nilai_Akhir FROM MK_Kalkulus 
WHERE Nilai_Akhir > 96


-- input DATA
INSERT INTO MK_Kalkulus(NIM,Nama,UTS,UAS)
VALUES('2100015044','Azzahri Vicky',90,95)

--rata-rata nilai akhir
 SELECT *,((UTS+UAS)/2) AS Nilai_Akhir FROM MK_Kalkulus

-- Menampilkan rata-rata nilai akhir
SELECT AVG(((UTS+UAS)/2)) AS Nilai_Akhir FROM MK_Kalkulus

-- SUB QUERY Menampilkan data lebih dr rata-rata
SELECT *,(((UTS+UAS)/2)) AS Nilai_Akhir FROM MK_Kalkulus 
WHERE Nilai_Akhir > (SELECT AVG(((UTS+UAS)/2)) AS Nilai_Akhir FROM MK_Kalkulus)

-- Input kembali data 
INSERT INTO MK_Kalkulus(NIM,Nama,UTS,UAS)
VALUES('2100015050','Lely Amalia',80,90)
