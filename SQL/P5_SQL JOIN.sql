CREATE TABLE db_mahasiswa (
	NIM VARCHAR(10),
	Nama VARCHAR(30)
)

INSERT INTO db_mahasiswa (NIM,Nama)
VALUES ("2100015049","Wisnu Catur R"),	   ("2100015041","Sindy Mei Marantika"),	   ("2100015035","Hasan Darmawan"),	   ("2100015051","Saiful Andhika")
	   
INSERT INTO db_mahasiswa (NIM)
VALUES ("1800015053"),
	   ("2100015037")
	   
SELECT * FROM db_mahasiswa

CREATE TABLE db_asal (
	NIM VARCHAR(10),
	Asal VARCHAR(30)
)

INSERT INTO db_asal (NIM,Asal)
VALUES ("2100015049","Pasuruan"),
	   ("2100015041","Oku Timur"),
	   ("1800015053","Ciamis"),
	   ("2100015037","Bandung"),
	   ("2200015030","Kudus"),
	   ("2100015002","Bogor")
	   
INSERT INTO db_asal (NIM)
VALUES ("2200015030"),
	   ("2200015002")
	   
SELECT * FROM db_asal

--INNER JOIN--
SELECT m.NIM, m.Nama, a.Asal  FROM db_mahasiswa m
INNER JOIN db_asal a 
ON m.NIM = a.NIM

--LEFT JOIN--
SELECT m.NIM, m.Nama, a.Asal  FROM db_mahasiswa m
LEFT JOIN db_asal a 
ON m.NIM = a.NIM

--RIGHT JOIN--
SELECT m.NIM, m.Nama, a.Asal  FROM db_mahasiswa m
RIGHT JOIN db_asal a 
ON m.NIM = a.NIM

--INNER JOIN WITH ORDER--
SELECT m.NIM, m.Nama, a.Asal  FROM db_mahasiswa m
INNER JOIN db_asal a 
ON m.NIM = a.NIM
ORDER BY a.Asal DESC 