-- ==========================================
-- SOAL 4: Pembuatan Roles dan Hak Akses (Privileges)
-- Nama  : Neli Siti Nurohmah (1247050113)
-- ==========================================

-- A. Membuat Roles / Users baru
CREATE USER backend_dev WITH PASSWORD 'password_backend';
CREATE USER bi_dev WITH PASSWORD 'password_bi';
CREATE USER data_engineer WITH PASSWORD 'password_de';

-- B. Memberikan Hak Akses untuk backend_dev 
GRANT USAGE ON SCHEMA SALAM TO backend_dev;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA SALAM TO backend_dev;

-- C. Memberikan Hak Akses untuk bi_dev (Hanya SELECT)
GRANT CONNECT ON DATABASE postgres TO bi_dev;
GRANT USAGE ON SCHEMA SALAM TO bi_dev;
GRANT SELECT ON ALL TABLES IN SCHEMA SALAM TO bi_dev;

-- D. Memberikan Hak Akses Penuh untuk data_engineer
GRANT ALL PRIVILEGES ON SCHEMA SALAM TO data_engineer;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA SALAM TO data_engineer;