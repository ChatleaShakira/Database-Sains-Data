--Membuat tabel Mobil
CREATE TABLE Mobil(
  ID_MOBIL INTEGER PRIMARY KEY,
  MERK TEXT,
  WARNA_MOBIL TEXT,
  JENIS_BAHAN_BAKAR TEXT,
  TAHUN_MODEL INTEGER,
  PLAT_NOMOR TEXT,
  BIAYA_SEWA TEXT
);

--Membuat tabel Asuransi
CREATE TABLE Asuransi(
  ID_ASURANSI INTEGER PRIMARY KEY,
  ID_MOBIL INTEGER,
  BIAYA_ASURANSI INTEGER,
  FOREIGN KEY (ID_MOBIL) REFERENCES Mobil(ID_MOBIL)
);

--Input data ke tabek Mobil
INSERT INTO Mobil (ID_MOBIL, MERK, WARNA_MOBIL, JENIS_BAHAN_BAKAR, TAHUN_MODEL, PLAT_NOMOR, BIAYA_SEWA)
VALUES
  (4001, 'Toyota Fortuner', 'Merah', 'Solar', 2020, 'B 4253 BHW', REPLACE(REPLACE('Rp1,220,175', 'Rp', ''), ',', '')),
  (4002, 'Mitsubishi Pajero Sport', 'Hitam', 'Solar', 2021, 'B 1309 DFZ', REPLACE(REPLACE('Rp1,427,525', 'Rp', ''), ',', '')),
  (4003, 'Hyundai Santa Fe', 'Biru', 'Solar', 2018, 'B 2937 EKQ', REPLACE(REPLACE('Rp882,083', 'Rp', ''), ',', '')),
  (4004, 'Daihatsu Xenia', 'Putih', 'Bensin', 2021, 'B 2853 ERG', REPLACE(REPLACE('Rp461,341', 'Rp', ''), ',', '')),
  (4005, 'Toyota Fortuner', 'Hitam', 'Solar', 2020, 'B 5836 EKB', REPLACE(REPLACE('Rp1,220,175', 'Rp', ''), ',', '')),
  (4006, 'Toyota Kijang Innova', 'Merah', 'Bensin', 2020, 'B 6739 RAR', REPLACE(REPLACE('Rp815,866', 'Rp', ''), ',', '')),
  (4007, 'Honda Brio', 'Merah', 'Bensin', 2022, 'B 9537 RAH', REPLACE(REPLACE('Rp474,633', 'Rp', ''), ',', '')),
  (4008, 'Daihatsu Ayla', 'Hitam', 'Bensin', 2023, 'B 6295 ZMR', REPLACE(REPLACE('Rp385,941', 'Rp', ''), ',', '')),
  (4009, 'Hyundai Santa Fe', 'Silver', 'Solar', 2018, 'B 3285 TFZ', REPLACE(REPLACE('Rp882,083', 'Rp', ''), ',', '')),
  (4010, 'Daihatsu Xenia', 'Biru', 'Bensin', 2021, 'B 8264 RAN', REPLACE(REPLACE('Rp461,341', 'Rp', ''), ',', '')),
  (4011, 'Toyota Fortuner', 'Biru', 'Solar', 2020, 'B 1548 DYA', REPLACE(REPLACE('Rp1,220,175', 'Rp', ''), ',', '')),
  (4012, 'Hyundai Kona Electric', 'Kuning', 'Listrik', 2018, 'B 4829 FIF', REPLACE(REPLACE('Rp1,812,500', 'Rp', ''), ',', '')),
  (4013, 'Honda CRV', 'Hitam', 'Bensin', 2022, 'B 1936 HER', REPLACE(REPLACE('Rp1,618,200', 'Rp', ''), ',', '')),
  (4014, 'Honda Brio', 'Putih', 'Bensin', 2020, 'B 1754 LAM', REPLACE(REPLACE('Rp470,041', 'Rp', ''), ',', '')),
  (4015, 'Toyota Kijang Innova', 'Putih', 'Bensin', 2020, 'B 1485 BAN', REPLACE(REPLACE('Rp815,866', 'Rp', ''), ',', '')),
  (4016, 'Toyota Land Cruiser', 'Putih', 'Solar', 2021, 'B 2148 ZAH', REPLACE(REPLACE('Rp5,271,354', 'Rp', ''), ',', '')),
  (4017, 'Mitsubishi Pajero Sport', 'Silver', 'Solar', 2021, 'B 1842 BRO', REPLACE(REPLACE('Rp1,427,525', 'Rp', ''), ',', '')),
  (4018, 'Hyundai Kona Electric', 'Biru', 'Listrik', 2018, 'B 1605 SAU', REPLACE(REPLACE('Rp1,812,500', 'Rp', ''), ',', '')),
  (4019, 'Wulling Air EV', 'Kuning', 'Listrik', 2022, 'B 1027 RUS', REPLACE(REPLACE('Rp587,250', 'Rp', ''), ',', '')),
  (4020, 'Daihatsu Ayla', 'Silver', 'Bensin', 2023, 'B 4395 DSU', REPLACE(REPLACE('Rp385,941', 'Rp', ''), ',', ''));

--Input data ke tabel Asuransi
INSERT INTO Asuransi (ID_ASURANSI, ID_MOBIL, BIAYA_ASURANSI)
VALUES
  (25460, 4001, 'Rp16,599'),
  (25461, 4002, 'Rp19,420'),
  (25462, 4003, 'Rp20,800'),
  (25463, 4004, 'Rp13,964'),
  (25464, 4005, 'Rp16,599'),
  (25465, 4006, 'Rp20,164'),
  (25466, 4007, 'Rp14,228'),
  (25467, 4008, 'Rp11,682'),
  (25468, 4009, 'Rp20,800'),
  (25469, 4010, 'Rp13,964'),
  (25470, 4011, 'Rp16,599'),
  (25471, 4012, 'Rp24,658'),
  (25472, 4013, 'Rp22,014'),
  (25473, 4014, 'Rp14,228'),
  (25474, 4015, 'Rp20,164'),
  (25475, 4016, 'Rp62,748'),
  (25476, 4017, 'Rp19,420'),
  (25477, 4018, 'Rp24,658'),
  (25478, 4019, 'Rp14,513'),
  (25479, 4020, 'Rp11,682');


-- Membuat tabel Customer
CREATE TABLE Customer (
  ID_CUSTOMER INTEGER PRIMARY KEY,
  NAMA_CUSTOMER TEXT,
  NOMOR_SIM TEXT,
  EMAIL TEXT,
  NOMOR_HP TEXT
);

-- Membuat tabel Rental
CREATE TABLE Rental (
  ID_RENTAL INTEGER PRIMARY KEY,
  ID_CUSTOMER INTEGER,
  ID_MOBIL INTEGER,
  START_DATE DATE,
  END_DATE DATE,
  LOKASI_PENGAMBILAN TEXT,
  LOKASI_PENGEMBALIAN TEXT,
  FOREIGN KEY (ID_CUSTOMER) REFERENCES Customer (ID_CUSTOMER),
  FOREIGN KEY (ID_MOBIL) REFERENCES Mobil (ID_MOBIL)
);

-- Membuat tabel Invoice
CREATE TABLE Invoice (
  ID_INVOICE INTEGER PRIMARY KEY,
  ID_RENTAL INTEGER,
  ID_CUSTOMER INTEGER,
  BIAYA_RENTAL INTEGER,
  BIAYA_ASURANSI INTEGER,
  TAX INTEGER,
  TOTAL_BIAYA INTEGER,
  DISKON INTEGER,
  TOTAL_BIAYA_BERSIH INTEGER,
  FOREIGN KEY (ID_RENTAL) REFERENCES Rental (ID_RENTAL),
  FOREIGN KEY (ID_CUSTOMER) REFERENCES Customer (ID_CUSTOMER)
);

-- Menginput data customer ke tabel Customer
INSERT INTO Customer (ID_CUSTOMER, NAMA_CUSTOMER, NOMOR_SIM, EMAIL, NOMOR_HP)
VALUES (157689, 'Annisa Putri', '1205-0501-002016', 'anis.putri@gmail.com', '6286607581701');

-- Melihat mobil yang tidak dalam masa rental pada saat ini
SELECT M.*
FROM Mobil AS M
WHERE M.ID_MOBIL NOT IN (
  SELECT R.ID_MOBIL
  FROM Rental AS R
  WHERE DATE('now') BETWEEN R.START_DATE AND R.END_DATE
);

-- Menghitung tax, total biaya, diskon, dan total biaya bersih dalam tabel Invoice
UPDATE Invoice
SET TAX = ROUND(BIAYA_RENTAL * 0.11),
    TOTAL_BIAYA = BIAYA_RENTAL + BIAYA_ASURANSI + TAX,
    DISKON = ROUND(BIAYA_RENTAL * 0),
    TOTAL_BIAYA_BERSIH = TOTAL_BIAYA - DISKON;

--Menghitung biaya rental dari biaya sewa*durasi rental
UPDATE Invoice
SET BIAYA_RENTAL = (julianday(R.END_DATE) - julianday(R.START_DATE)) * CAST(REPLACE(M.BIAYA_SEWA, 'Rp', '') AS INTEGER)
FROM Invoice AS I
JOIN Rental AS R ON I.ID_RENTAL = R.ID_RENTAL
JOIN Mobil AS M ON R.ID_MOBIL = M.ID_MOBIL;

-- Menghitung biaya asuransi dari tabel Asuransi
UPDATE Invoice
SET BIAYA_ASURANSI = (
    SELECT REPLACE(REPLACE(BIAYA_ASURANSI, 'Rp', ''), ',', '')
    FROM Asuransi
    WHERE Asuransi.ID_MOBIL = Rental.ID_MOBIL
)
FROM Rental
WHERE Invoice.ID_RENTAL = Rental.ID_RENTAL;

-- Membuat format pada TOTAL BIAYA BERSIH
UPDATE Invoice
SET TOTAL_BIAYA_BERSIH = 'Rp' || REPLACE(printf('%,d', TOTAL_BIAYA_BERSIH), ',', '.')

-- Melihat review pesanan Customer untuk pengawasan
SELECT C.NAMA_CUSTOMER, C.NOMOR_HP, C.NOMOR_SIM, M.ID_MOBIL, M.MERK, M.PLAT_NOMOR, M.WARNA_MOBIL, R.START_DATE, R.END_DATE, 
I.TOTAL_BIAYA_BERSIH, R.LOKASI_PENGAMBILAN, R.LOKASI_PENGEMBALIAN
FROM Customer C
JOIN Rental R ON C.ID_CUSTOMER = R.ID_CUSTOMER
JOIN Mobil M ON R.ID_MOBIL = M.ID_MOBIL
JOIN Invoice I ON R.ID_RENTAL = I.ID_RENTAL;

-- Melihat total pendapatan
SELECT SUM(CAST(REPLACE(REPLACE(TOTAL_BIAYA_BERSIH, 'Rp', ''), '.', '') AS DECIMAL)) AS Total_Pendapatan
FROM Invoice;

-- Melihat mobil yang sedang dirental pada waktu tertentu
SELECT C.NAMA_CUSTOMER, C.NOMOR_HP, M.ID_MOBIL, M.MERK, M.PLAT_NOMOR, R.START_DATE, R.END_DATE
FROM Customer C
JOIN Rental R ON C.ID_CUSTOMER = R.ID_CUSTOMER
JOIN Mobil M ON R.ID_MOBIL = M.ID_MOBIL
WHERE DATE('2023-06-15') BETWEEN R.START_DATE AND R.END_DATE;

-- Melihat mobil yang tersedia sesuai budget pada waktu tertentu
SELECT *
FROM Mobil
WHERE CAST(BIAYA_SEWA AS INTEGER) BETWEEN 200000 AND 500000
  AND ID_MOBIL NOT IN (
    SELECT ID_MOBIL
    FROM Rental
    WHERE DATE('2023-05-16') BETWEEN START_DATE AND END_DATE
  );


-- Membatasi akses editing database
PRAGMA key = 'RENTCARKELOMPOK5';
PRAGMA rekey = 'RENTCARKELOMPOK5';

