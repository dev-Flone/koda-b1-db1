-- CREATE TABLE buku(
--     id_buku SERIAL PRIMARY KEY,
--     nama_buku VARCHAR(150) NOT NULL,
--     id_kategori INT REFERENCES kategori(id_kategori),
--     id_rak INT REFERENCES rak(id_rak)
-- )

-- INSERT INTO buku(id_buku, nama_buku, id_kategori, id_rak) VALUES
--    (1, 'Lentera di Hujung Senja', 1, 3),
--     (2, 'Menjemput Sketsa yang Hilang', 1, 2),
--     (3, 'Rona Merah di Langit Praha', 1, 3),
--     (4, 'Jejak Sunyi di Kota Tua', 2, 3),
--     (5, 'Rahasia Sandi Kuno', 2, 2),
--     (6, 'Teka-teki Jam Dinding Ketiga', 2, 1),
--     (7, 'Seni Menata Waktu untuk Masa Depan', 3, 2),
--     (8, 'Strategi Digital: Mengubah Ide Jadi Aset', 3, 3),
--     (9, 'Melampaui Batas Ragu', 3, 2),
--     (10, 'Dunia dalam Genggaman Kecerdasan Buatan', 4, 3)

-- SELECT * FROM buku
-- DROP Table buku

-- CREATE TABLE kategori(
--     id_kategori INT PRIMARY KEY,
--     nama_kategori VARCHAR NOT NULL
-- )


-- INSERT INTO kategori(id_kategori, nama_kategori) VALUES
-- (1, 'Romansa/Drama'),
-- (2, 'Misteri/Thriller'),
-- (3, 'Pengembangan diri & Bisnis'),
-- (4, 'Sains & Teknologi')

-- SELECT * FROM kategori

-- CREATE TABLE rak(
--     id_rak INT PRIMARY KEY,
--     nama_rak VARCHAR NOT NULL,
--     lokasi VARCHAR NOT NULL
-- )

-- INSERT INTO rak(id_rak, nama_rak, lokasi) VALUES
-- (1, 'Anak-anak', 'Lantai 1'),
-- (2, 'Remaja', 'Lantai 2'),
-- (3, 'Dewasa', 'Lantai 3')

-- SELECT * FROM rak

-- CREATE TABLE peminjam(
--     id_peminjam INT PRIMARY KEY,
--     nama_peminjam VARCHAR NOT NULL,
--     nomor_peminjam VARCHAR(15) NOT NULL
-- )
-- DROP TABLE peminjam
-- INSERT INTO peminjam(id_peminjam, nama_peminjam, nomor_peminjam) VALUES
-- (1, 'Indah Permatasari', '081234567890'),
-- (2, 'Aditya Wijaya', '081398765432'),
-- (3, 'Anisa Putri', '085611223344'),
-- (4, 'Dimas Saputra', '087855667788'),
-- (5, 'Fajar Ramadhan', '081999001122'),
-- (6, 'Bagus Kurniawan', '082144332211'),
-- (7, 'Rian Hidayat', '081155667788'),
-- (8, 'Dewi Utami', '087811223344'),
-- (9, 'Citra Lestari', '081277665544'),
-- (10, 'Siti Rahmawati', '081322334455')

-- SELECT * FROM peminjam

-- CREATE TABLE petugas(
--     id_petugas INT PRIMARY KEY,
--     nama_petugas VARCHAR NOT NULL,
--     nomor_petugas VARCHAR(15) NOT NULL
-- )

-- INSERT INTO petugas(id_petugas, nama_petugas, nomor_petugas) VALUES
-- (1, 'Hendra Wijaya', '081222333444'),
-- (2, 'Siti Aminah', '0857444555666')

-- SELECT * FROM petugas

-- CREATE Table detail_peminjaman(
--     id_detail SERIAL PRIMARY KEY,
--     id_peminjaman INT REFERENCES peminjaman(id_peminjaman),
--     id_buku INT REFERENCES buku(id_buku)
-- )

-- INSERT INTO detail_peminjaman(id_peminjaman, id_buku) VALUES
-- (1, 1),
-- (2, 3),
-- (3, 5),
-- (4, 2),
-- (5, 8),
-- (6, 10),
-- (7, 4),
-- (8, 7),
-- (9, 9),
-- (10, 6)

-- SELECT * FROM detail_peminjaman



-- CREATE TABLE peminjaman(
--     id_peminjaman INT PRIMARY KEY,
--     tanggal_pinjam DATE,
--     tanggal_kembali DATE,
--     id_peminjam INT REFERENCES peminjam(id_peminjam),
--     id_petugas INT REFERENCES petugas(id_petugas),
--     status VARCHAR(50)
-- )

-- INSERT INTO peminjaman(id_peminjaman, tanggal_pinjam, tanggal_kembali, id_peminjam, id_petugas, status) VALUES
-- (1, '2026-10-01', '2026-10-07', 1,1, 'Kembali'),
-- (2, '2026-10-03', '2026-10-10', 2,1, 'Kembali'),
-- (3, '2026-10-07', '2026-10-20', 3,1, 'Terlambat'),
-- (4, '2026-10-11', NULL, 4, 1, 'Dipinjam'),
-- (5, '2026-10-13', '2026-10-15', 5,1, 'Kembali'),
-- (6, '2026-10-20', NULL, 6, 1, 'Dipinjam'),
-- (7, '2026-10-21', '2026-10-22', 7,1, 'Kembali'),
-- (8, '2026-10-22', NULL, 8, 1, 'Dipinjam'),
-- (9, '2026-10-23', NULL, 9, 1, 'Dipinjam'),
-- (10, '2026-10-23', NULL,  10, 1,'Dipinjam')

-- SELECT * FROM peminjaman
-- DROP Table peminjaman

SELECT * FROM buku;
SELECT * FROM peminjam;
SELECT * FROM petugas;
SELECT * FROM peminjaman;
SELECT * FROM detail_peminjaman;
SELECT * FROM rak;
SELECT * FROM kategori;
-- SELECT * FROM buku JOIN peminjam ON buku.nama_buku = peminjam.nama_peminjam