# 📚 SPK AHP - Perpustakaan Kabupaten Brebes

<p align="center">
  <img src="https://img.shields.io/badge/React-18.x-61DAFB?style=flat&logo=react" alt="React">
  <img src="https://img.shields.io/badge/Node.js-18.x-339933?style=flat&logo=node.js" alt="Node.js">
  <img src="https://img.shields.io/badge/MySQL-8.x-4479A1?style=flat&logo=mysql" alt="MySQL">
  <img src="https://img.shields.io/badge/Sequelize-6.x-52B0E7?style=flat&logo=sequelize" alt="Sequelize">
  <img src="https://img.shields.io/badge/JWT-Authentication-000000?style=flat&logo=json-web-tokens" alt="JWT">
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat" alt="License">
</p>

<p align="center">
  <b>Sistem Pendukung Keputusan menggunakan Metode AHP untuk Rekomendasi Buku di Perpustakaan Kabupaten Brebes</b>
</p>

---

## 📖 Tentang Project

**SPK AHP Perpustakaan Kabupaten Brebes** adalah sebuah sistem pendukung keputusan yang menggunakan metode **Analytical Hierarchy Process (AHP)** untuk memberikan rekomendasi buku terbaik kepada pengguna perpustakaan. Sistem ini memungkinkan admin untuk mengelola data buku, kriteria, dan melakukan perhitungan AHP, serta memungkinkan pengguna untuk meminjam buku dan memberikan penilaian.

### 🎯 Tujuan

- Memberikan rekomendasi buku terbaik berdasarkan metode AHP
- Memudahkan pengelolaan koleksi buku perpustakaan
- Mempermudah proses peminjaman dan pengembalian buku
- Memberikan penilaian buku berdasarkan kriteria yang telah ditentukan

### ✨ Fitur Utama

#### 🔐 Autentikasi & Role
- Login dengan JWT Authentication
- 2 Role: **Admin** dan **User**
- Admin: Mengelola semua data (Kriteria, Sub Kriteria, Buku, Peminjaman, User)
- User: Melihat buku, meminjam, mengembalikan, dan menilai buku

#### 📊 Manajemen AHP (Admin)
- **Kriteria**: Tambah, edit, hapus kriteria penilaian
- **Sub Kriteria**: Tambah, edit, hapus sub kriteria untuk setiap kriteria
- **Pairwise Comparison**: Perbandingan berpasangan antar kriteria dan sub kriteria
- **Normalisasi**: Normalisasi matriks perbandingan
- **Bobot Global**: Perhitungan bobot global untuk perankingan
- **Hasil AHP**: Perankingan buku terbaik

#### 📚 Manajemen Buku
- **Data Buku**: Tambah, edit, hapus, dan lihat detail buku
- **Import Excel**: Import data buku massal dari file Excel
- **Export Template**: Download template Excel untuk import
- **Filter & Search**: Cari dan filter buku berdasarkan penerbit, tahun, stok
- **Pagination**: Navigasi data buku dengan pagination

#### 📖 Peminjaman Buku (User & Admin)
- **Ajukan Peminjaman**: User dapat mengajukan peminjaman buku
- **Verifikasi Peminjaman**: Admin memverifikasi pengajuan peminjaman
- **Riwayat Peminjaman**: Melihat riwayat peminjaman user
- **Pengembalian Buku**: User dan Admin dapat mengembalikan buku
- **Status Peminjaman**: Pending, Dipinjam, Dikembalikan, Ditolak, Terlambat

#### ⭐ Penilaian Buku (User)
- **Penilaian Berdasarkan Kriteria**: User menilai buku berdasarkan sub kriteria yang tersedia
- **Rekomendasi Personal**: Menampilkan rekomendasi berdasarkan penilaian user
- **Rekomendasi Global**: Menampilkan rekomendasi dari semua pengguna
- **Hanya Sekali**: Penilaian hanya bisa dilakukan sekali per buku

#### 📊 Dashboard
- **Statistik Real-time**: Total buku, peminjaman, pengembalian, pending
- **Grafik Peminjaman**: Visualisasi peminjaman per bulan
- **Grafik Status**: Distribusi status peminjaman
- **Rekomendasi Buku**: Menampilkan 5 buku terbaik dari hasil AHP
- **Rekomendasi Personal**: Rekomendasi berdasarkan penilaian user

---

## 🛠️ Teknologi yang Digunakan

### Frontend
| Teknologi | Keterangan |
|-----------|------------|
| **React 18** | Library JavaScript untuk membangun UI |
| **React Router DOM** | Routing untuk aplikasi SPA |
| **Axios** | HTTP client untuk API calls |
| **Lucide React** | Icon library yang modern dan customizable |
| **Chart.js** | Library untuk visualisasi data |
| **React Chart.js 2** | Wrapper React untuk Chart.js |
| **XLSX** | Library untuk import/export file Excel |

### Backend
| Teknologi | Keterangan |
|-----------|------------|
| **Node.js** | Runtime JavaScript |
| **Express.js** | Framework web untuk Node.js |
| **MySQL** | Database relasional |
| **Sequelize** | ORM untuk Node.js |
| **JWT** | Autentikasi berbasis token |
| **Bcrypt.js** | Hashing password |
| **CORS** | Cross-Origin Resource Sharing |

---

