-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Apr 2026 pada 09.26
-- Versi server: 10.4.32-MariaDB-log
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_campusutb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `nama`, `jabatan`) VALUES
('1001', 'Fadly Febriya S.SI., M.Kom.', 'Dosen Pengajar'),
('1002', 'Rudhi Wahyudi Febrianto, S.Kom., M.Kom.', 'Dosen Pengajar'),
('1003', 'Niken Riyanti, S.T., M.Kom.', 'Dosen Pengajar'),
('1004', 'Abdurrohman, S.T., M.Kom., PhD', 'Dosen Pengajar'),
('1005', 'Ipan Saepul Milal, S.Kom.', 'Dosen Pengajar'),
('1006', 'Hena Sulaeman, S.T., M.Kom.', 'Dosen Pengajar'),
('1007', 'Muchamad Rusdan, S.T., M.T.', 'Dosen Pengajar'),
('1008', 'Dhany Indra Gunawan, S.T., M.Kom.', 'Dosen Pengajar'),
('1009', 'Cintiya Dewiani Putri, S.Kom., M.Kom.', 'Dosen Pengajar'),
('1010', 'Erryck Norrys, S.Kom.', 'Dosen Pengajar'),
('1011', 'Paxleydrian S.kom', 'Dospem');

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `kode_mk` varchar(20) NOT NULL,
  `semester_tempuh` int(11) NOT NULL,
  `status_dospen` enum('pending','acc') DEFAULT 'pending',
  `status_kaprodi` enum('pending','acc') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`id_krs`, `nim`, `kode_mk`, `semester_tempuh`, `status_dospen`, `status_kaprodi`) VALUES
(80, '24552011288', 'TIF402', 4, 'acc', 'acc'),
(81, '24552011288', 'TIF401', 4, 'acc', 'acc'),
(82, '24552011288', 'TIF402', 4, 'acc', 'acc'),
(83, '24552011288', 'TIF403', 4, 'acc', 'acc'),
(84, '24552011288', 'TIF404', 4, 'acc', 'acc');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL,
  `nip_dospem` varchar(20) DEFAULT NULL,
  `semester_aktif` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `nip_dospem`, `semester_aktif`) VALUES
('24552011288', 'Mohammad Rifaldy', 'Kec.Katapang, Kab.Bandung', '1008', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_mk` varchar(20) NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `nip_pengajar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`, `nip_pengajar`) VALUES
('TIF101', 'Algoritma dan Pemrograman Dasar', 3, 1, '1005'),
('TIF102', 'Pengantar Teknologi Informasi', 2, 1, '1009'),
('TIF103', 'Matematika Diskrit', 3, 1, '1007'),
('TIF104', 'Logika Informatika', 3, 1, '1008'),
('TIF201', 'Struktur Data', 3, 2, '1007'),
('TIF202', 'Sistem Operasi', 3, 2, '1008'),
('TIF203', 'Basis Data', 3, 2, '1001'),
('TIF204', 'Pengembangan Diri', 2, 2, '1009'),
('TIF301', 'Pemrograman Berorientasi Objek 1', 3, 3, '1010'),
('TIF302', 'Sistem Basis Data (MySQL)', 3, 3, '1001'),
('TIF303', 'Jaringan Komputer & Administrasi Server', 3, 3, '1006'),
('TIF304', 'Desain UI/UX', 3, 3, '1009'),
('TIF401', 'Manajemen Proyek Perangkat Lunak', 3, 4, '1001'),
('TIF402', 'Jaringan Komputer 2', 3, 4, '1006'),
('TIF403', 'Pemograman Mobile 1', 3, 4, '1010'),
('TIF404', 'Teknik Kompilasi', 3, 4, '1008'),
('TIF501', 'Rekayasa Perangkat Lunak', 3, 5, '1003'),
('TIF502', 'Pemrograman Web Full-Stack', 3, 5, '1005'),
('TIF503', 'Kecerdasan Buatan', 3, 5, '1002'),
('TIF504', 'Interaksi Manusia dan Komputer', 3, 5, '1009'),
('TIF601', 'ADA (Android Development Associate)', 3, 6, '1003'),
('TIF602', 'Pemograman Web 2', 3, 6, '1005'),
('TIF603', 'Data Mining', 3, 6, '1002'),
('TIF604', 'CNSA (Certificate in Network Security)', 3, 6, '1004'),
('TIF701', 'Kerja Praktek', 2, 7, NULL),
('TIF702', 'Etika Profesi TI', 2, 7, '1004'),
('TIF703', 'Manajemen Proyek TI', 3, 7, '1002'),
('TIF801', 'Sistem Pakar', 3, 8, '1002'),
('TIF802', 'Skripsi', 3, 8, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `kode_mk` varchar(20) NOT NULL,
  `semester_diambil` int(11) DEFAULT NULL,
  `nilai_huruf` char(1) NOT NULL,
  `nilai_angka` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nim`, `kode_mk`, `semester_diambil`, `nilai_huruf`, `nilai_angka`) VALUES
(14, '24552011288', 'TIF402', 4, 'A', 4),
(15, '24552011288', 'TIF401', 4, 'A', 4),
(16, '24552011288', 'TIF404', 4, 'A', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `role`) VALUES
(2, 'Administrator Utama', 'admin', 'admin123', 'admin'),
(5, 'Staf Akademik', 'operator', 'operator123', 'operator'),
(7, 'Dosen', 'dosen', 'dosen123', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `nim` (`nim`),
  ADD KEY `kode_mk` (`kode_mk`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `nip_dospem` (`nip_dospem`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_mk`),
  ADD KEY `nip_pengajar` (`nip_pengajar`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `nim` (`nim`),
  ADD KEY `kode_mk` (`kode_mk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `mata_kuliah` (`kode_mk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`nip_dospem`) REFERENCES `dosen` (`nip`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`nip_pengajar`) REFERENCES `dosen` (`nip`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `mata_kuliah` (`kode_mk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
