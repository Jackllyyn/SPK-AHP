-- ============================================================
-- ROLLBACK - HAPUS SEMUA TABEL
-- ============================================================

-- Hapus foreign key dulu
DROP TABLE IF EXISTS tbl_hasil_ahp;
DROP TABLE IF EXISTS tbl_nilai_alternatif;
DROP TABLE IF EXISTS tbl_pairwise_sub;
DROP TABLE IF EXISTS tbl_pairwise_kriteria;
DROP TABLE IF EXISTS tbl_sub_kriteria;
DROP TABLE IF EXISTS tbl_alternatif;
DROP TABLE IF EXISTS tbl_kriteria;
DROP TABLE IF EXISTS tbl_user;