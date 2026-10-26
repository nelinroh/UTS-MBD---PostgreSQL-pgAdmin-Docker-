-- ==========================================
-- UTS Manajemen Basis Data (MBD)
-- Nama   : Neli Siti Nurohmah (1247050113)
-- Anggota: Asri Nuraeni (12470000)
-- ==========================================

-- 1. Membuat Skema dan Tabel
CREATE SCHEMA IF NOT EXISTS SALAM;

CREATE TABLE IF NOT EXISTS SALAM.mahasiswas (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    nim VARCHAR(20) UNIQUE NOT NULL,
    nilai INT CHECK (nilai >= 0 AND nilai <= 100)
);

-- 2. Memasukkan Data Mahasiswa
INSERT INTO SALAM.mahasiswas (nama, nim, nilai) VALUES 
('Neli Siti Nurohmah', '1247050113', 95),
('Asri Nuraeni', '12470000', 95);

-- 3. Membuat Users / Roles (Sesuai Soal)
CREATE USER backend_dev WITH PASSWORD 'password_backend';
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA SALAM TO backend_dev;
GRANT USAGE ON SCHEMA SALAM TO backend_dev;

CREATE USER bi_dev WITH PASSWORD 'password_bi';
GRANT CONNECT ON DATABASE postgres TO bi_dev;
GRANT USAGE ON SCHEMA SALAM TO bi_dev;
GRANT SELECT ON ALL TABLES IN SCHEMA SALAM TO bi_dev;

CREATE USER data_engineer WITH PASSWORD 'password_de';
GRANT ALL PRIVILEGES ON SCHEMA SALAM TO data_engineer;