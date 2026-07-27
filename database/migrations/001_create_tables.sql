-- ============================================================
-- DATABASE SPK AHP PERPUSTAKAAN KABUPATEN BREBES
-- ============================================================
-- Dibuat: 2026-06-28
-- Author: Desi Permata Sari
-- ============================================================

-- ============================================================
-- 1. TABEL KRITERIA
-- ============================================================
CREATE TABLE IF NOT EXISTS tbl_kriteria (
    id_kriteria INT PRIMARY KEY AUTO_INCREMENT,
    nama_kriteria VARCHAR(50) NOT NULL,
    tipe ENUM('benefit', 'cost') DEFAULT 'benefit',
    bobot DECIMAL(10,6) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- 2. TABEL SUB-KRITERIA
-- ============================================================
CREATE TABLE IF NOT EXISTS tbl_sub_kriteria (
    id_sub INT PRIMARY KEY AUTO_INCREMENT,
    id_kriteria INT NOT NULL,
    nama_sub VARCHAR(50) NOT NULL,
    nilai DECIMAL(10,6) DEFAULT 0,
    bobot_global DECIMAL(10,6) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_kriteria) REFERENCES tbl_kriteria(id_kriteria) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- 3. TABEL ALTERNATIF (BUKU)
-- ============================================================
CREATE TABLE IF NOT EXISTS tbl_alternatif (
    id_alternatif INT PRIMARY KEY AUTO_INCREMENT,
    judul_buku VARCHAR(200) NOT NULL,
    penulis VARCHAR(100),
    penerbit VARCHAR(100),
    tahun_terbit VARCHAR(20),
    stok INT DEFAULT 0,
    gambar VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- 4. TABEL NILAI ALTERNATIF
-- ============================================================
CREATE TABLE IF NOT EXISTS tbl_nilai_alternatif (
    id_nilai INT PRIMARY KEY AUTO_INCREMENT,
    id_alternatif INT NOT NULL,
    id_sub INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_alternatif) REFERENCES tbl_alternatif(id_alternatif) ON DELETE CASCADE,
    FOREIGN KEY (id_sub) REFERENCES tbl_sub_kriteria(id_sub) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- 5. TABEL PAIRWISE KRITERIA
-- ============================================================
CREATE TABLE IF NOT EXISTS tbl_pairwise_kriteria (
    id_pairwise INT PRIMARY KEY AUTO_INCREMENT,
    kriteria_1 INT NOT NULL,
    kriteria_2 INT NOT NULL,
    nilai DECIMAL(10,4) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (kriteria_1) REFERENCES tbl_kriteria(id_kriteria) ON DELETE CASCADE,
    FOREIGN KEY (kriteria_2) REFERENCES tbl_kriteria(id_kriteria) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- 6. TABEL PAIRWISE SUB-KRITERIA
-- ============================================================
CREATE TABLE IF NOT EXISTS tbl_pairwise_sub (
    id_pairwise INT PRIMARY KEY AUTO_INCREMENT,
    id_kriteria INT NOT NULL,
    sub_1 INT NOT NULL,
    sub_2 INT NOT NULL,
    nilai DECIMAL(10,4) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (id_kriteria) REFERENCES tbl_kriteria(id_kriteria) ON DELETE CASCADE,
    FOREIGN KEY (sub_1) REFERENCES tbl_sub_kriteria(id_sub) ON DELETE CASCADE,
    FOREIGN KEY (sub_2) REFERENCES tbl_sub_kriteria(id_sub) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- 7. TABEL HASIL AHP
-- ============================================================
CREATE TABLE IF NOT EXISTS tbl_hasil_ahp (
    id_hasil INT PRIMARY KEY AUTO_INCREMENT,
    id_alternatif INT NOT NULL,
    skor_total DECIMAL(10,6) NOT NULL,
    peringkat INT NOT NULL,
    tanggal_perhitungan TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_alternatif) REFERENCES tbl_alternatif(id_alternatif) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================
-- 8. TABEL USER (Untuk Login Admin)
-- ============================================================
CREATE TABLE IF NOT EXISTS tbl_user (
    id_user INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    nama_lengkap VARCHAR(100),
    email VARCHAR(100),
    role ENUM('admin', 'superadmin') DEFAULT 'admin',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;