-- ============================================================
-- SEED DATA AWAL
-- ============================================================

-- ============================================================
-- 1. DATA KRITERIA (Sesuai Proposal)
-- ============================================================
INSERT INTO tbl_kriteria (nama_kriteria, tipe) VALUES
('Kesesuaian Genre', 'benefit'),
('Tahun Terbit', 'benefit'),
('Popularitas', 'benefit'),
('Rating', 'benefit');

-- ============================================================
-- 2. DATA SUB-KRITERIA
-- ============================================================
-- Kesesuaian Genre (id_kriteria = 1)
INSERT INTO tbl_sub_kriteria (id_kriteria, nama_sub) VALUES
(1, 'Sangat Sesuai'),
(1, 'Cukup Sesuai'),
(1, 'Kurang Sesuai');

-- Tahun Terbit (id_kriteria = 2)
INSERT INTO tbl_sub_kriteria (id_kriteria, nama_sub) VALUES
(2, '< 5 Tahun'),
(2, '6 - 10 Tahun'),
(2, '> 10 Tahun');

-- Popularitas (id_kriteria = 3)
INSERT INTO tbl_sub_kriteria (id_kriteria, nama_sub) VALUES
(3, 'Sangat Sering Dipinjam'),
(3, 'Cukup Sering Dipinjam'),
(3, 'Jarang Dipinjam');

-- Rating (id_kriteria = 4)
INSERT INTO tbl_sub_kriteria (id_kriteria, nama_sub) VALUES
(4, '4.5 - 5.0'),
(4, '3.5 - 4.4'),
(4, '< 3.5');

-- ============================================================
-- 3. DATA PAIRWISE SUB-KRITERIA (KONSISTEN)
-- ============================================================
-- Kesesuaian Genre (id_kriteria = 1)
-- Sangat Sesuai (1) vs Cukup Sesuai (2) = 3
-- Sangat Sesuai (1) vs Kurang Sesuai (3) = 5
-- Cukup Sesuai (2) vs Kurang Sesuai (3) = 3
INSERT INTO tbl_pairwise_sub (id_kriteria, sub_1, sub_2, nilai) VALUES
(1, 1, 2, 3),
(1, 1, 3, 5),
(1, 2, 3, 3);

-- Tahun Terbit (id_kriteria = 2)
-- < 5 Tahun (1) vs 6-10 Tahun (2) = 3
-- < 5 Tahun (1) vs > 10 Tahun (3) = 5
-- 6-10 Tahun (2) vs > 10 Tahun (3) = 3
INSERT INTO tbl_pairwise_sub (id_kriteria, sub_1, sub_2, nilai) VALUES
(2, 1, 2, 3),
(2, 1, 3, 5),
(2, 2, 3, 3);

-- Popularitas (id_kriteria = 3)
-- Sangat Sering (1) vs Cukup Sering (2) = 3
-- Sangat Sering (1) vs Jarang (3) = 5
-- Cukup Sering (2) vs Jarang (3) = 3
INSERT INTO tbl_pairwise_sub (id_kriteria, sub_1, sub_2, nilai) VALUES
(3, 1, 2, 3),
(3, 1, 3, 5),
(3, 2, 3, 3);

-- Rating (id_kriteria = 4)
-- 4.5-5.0 (1) vs 3.5-4.4 (2) = 3
-- 4.5-5.0 (1) vs < 3.5 (3) = 5
-- 3.5-4.4 (2) vs < 3.5 (3) = 3
INSERT INTO tbl_pairwise_sub (id_kriteria, sub_1, sub_2, nilai) VALUES
(4, 1, 2, 3),
(4, 1, 3, 5),
(4, 2, 3, 3);

-- ============================================================
-- 4. DATA BUKU (ALTERNATIF)
-- ============================================================
INSERT INTO tbl_alternatif (judul_buku, penulis, penerbit, stok) VALUES
('Atomic Habits', 'James Clear', 'Penguin Random House', 5),
('Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', 3),
('Filosofi Teras', 'Henry Manampiring', 'Buku Kompas', 4),
('Bumi Manusia', 'Pramoedya Ananta Toer', 'Hasta Mitra', 2),
('The Psychology of Money', 'Morgan Housel', 'Harriman House', 3),
('Laut Bercerita', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia', 4),
('Madilog', 'Tan Malaka', 'Widjaya', 1),
('Rich Dad Poor Dad', 'Robert T. Kiyosaki', 'Plata Publishing', 3),
('Sebuah Seni untuk Bersikap Bodo Amat', 'Mark Manson', 'HarperOne', 4),
('Hujan', 'Tere Liye', 'Gramedia Pustaka Utama', 5);

-- ============================================================
-- 5. DATA USER ADMIN
-- ============================================================
INSERT INTO tbl_user (username, password, nama_lengkap, email, role) VALUES
('admin', MD5('admin123'), 'Administrator', 'admin@perpustakaan.brebes.go.id', 'superadmin');

-- ============================================================
-- 6. HITUNG SUB-KRITERIA (UPDATE NILAI)
-- ============================================================
-- Update bobot sub-kriteria setelah pairwise
UPDATE tbl_sub_kriteria SET nilai = 0.6333 WHERE id_sub = 1;
UPDATE tbl_sub_kriteria SET nilai = 0.2604 WHERE id_sub = 2;
UPDATE tbl_sub_kriteria SET nilai = 0.1063 WHERE id_sub = 3;

UPDATE tbl_sub_kriteria SET nilai = 0.6479 WHERE id_sub = 4;
UPDATE tbl_sub_kriteria SET nilai = 0.2299 WHERE id_sub = 5;
UPDATE tbl_sub_kriteria SET nilai = 0.1222 WHERE id_sub = 6;

UPDATE tbl_sub_kriteria SET nilai = 0.6860 WHERE id_sub = 7;
UPDATE tbl_sub_kriteria SET nilai = 0.2120 WHERE id_sub = 8;
UPDATE tbl_sub_kriteria SET nilai = 0.1020 WHERE id_sub = 9;

UPDATE tbl_sub_kriteria SET nilai = 0.6434 WHERE id_sub = 10;
UPDATE tbl_sub_kriteria SET nilai = 0.2828 WHERE id_sub = 11;
UPDATE tbl_sub_kriteria SET nilai = 0.0738 WHERE id_sub = 12;