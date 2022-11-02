-- Mengakses tabel customer --
SELECT * FROM Customer c

-- Menampilkan Country tabel di tabel customer --
SELECT c.Country FROM Customer c

-- Menampilkan Country tabel di tabel customer dg fungsi DISTINCT --
SELECT DISTINCT (c.Country) FROM Customer c

-- Menampilkan semua data tetapi dari negara brazil & city sao paulo --
SELECT * FROM Customer c
WHERE c.Country = 'Brazil' and c.City = 'São Paulo'

-- Menampilkan semua data tetapi dari negara brazil & city sao paulo --
SELECT * FROM Customer c
WHERE c.Country = 'Brazil' or c.Country = 'Germany'
- cara 2 -
SELECT * FROM Customer c
WHERE c.Country IN('Brazil','Germany')

--Menghitung jumlah total.
SELECT SUM(i.Total) FROM Invoice i  

--Menghitung jumlah Average
SELECT AVG(i.Total) FROM Invoice i

-- Menampilkan tabel total --
SELECT i.total FROM Invoice i

-- Nilai Minimum data --
SELECT MIN(i.Total) FROM Invoice i
--"untuk mengganti nama tabel menjadi nilai minimum"
SELECT MIN(i.Total) AS NilaiMinimum FROM Invoice i

-- Nilai maksimum data --
SELECT MAX(i.Total) FROM Invoice i  
-- untuk mengganti nama tabel menjadi nilai maksimum
SELECT MAX(i.Total) AS NilaiMaksimum FROM Invoice i

