-- ==========================================
-- SOAL 2: Pembuatan Tabel Mahasiswas
-- Nama  : Neli Siti Nurohmah (1247050113)
-- ==========================================

CREATE TABLE IF NOT EXISTS SALAM.mahasiswas (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    nim VARCHAR(20) UNIQUE NOT NULL,
    nilai INT CHECK (nilai >= 0 AND nilai <= 100)
);