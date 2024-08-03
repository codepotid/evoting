-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Agu 2024 pada 21.00
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemilihan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_pemilihan`
--

CREATE TABLE `jenis_pemilihan` (
  `jenis_pemilihan_id` int(11) NOT NULL,
  `jenis_pemilihan_nama` varchar(255) NOT NULL,
  `jenis_pemilihan_keterangan` text DEFAULT NULL,
  `jenis_pemilihan_status` enum('aktif','ditolak','proses','selesai','menunggu persetujuan') NOT NULL,
  `tanggal_mulai` datetime NOT NULL,
  `tanggal_berakhir` datetime NOT NULL,
  `jenis_pemilihan_images` varchar(255) NOT NULL,
  `jenis_pemilihan_bukti` varchar(225) NOT NULL,
  `jenis_pemilihan_adder` int(11) NOT NULL,
  `update_at` datetime DEFAULT current_timestamp(),
  `admin_view_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenis_pemilihan`
--

INSERT INTO `jenis_pemilihan` (`jenis_pemilihan_id`, `jenis_pemilihan_nama`, `jenis_pemilihan_keterangan`, `jenis_pemilihan_status`, `tanggal_mulai`, `tanggal_berakhir`, `jenis_pemilihan_images`, `jenis_pemilihan_bukti`, `jenis_pemilihan_adder`, `update_at`, `admin_view_at`) VALUES
(1, 'KETUA UKM OLAHRAGA 2024', 'Piala Rektor Unwaha 2024 resmi bergulir, ditandai dengan pelepasan balon oleh Wakil Rektor Bidang Kemahasiswaan', 'aktif', '2024-08-02 23:07:00', '2024-08-06 07:00:00', '1126547718_MPB10 (1).jpg', '828421870_LIVE PERHITUNGAN SUARA_1.jpg', 3, '2024-08-04 01:54:17', '2024-08-04 01:26:17'),
(2, 'KETUA UKM PAGARNUSA SE-JATIM', 'Kegiatan kali ini dihadiri oleh Ketua dan Sekretaris Pimpinan Cabang (PC) PSNU Pagar Nusa se Jatim. Turut hadir pula Ketua Pimpinan Pusat (PP) PSNU Pagar Nusa H Mochamad Nabil Haroen.', 'aktif', '2024-08-03 23:42:00', '2024-10-03 23:42:00', '1014655402_MPB10 (15).jpg', '1014655402_LIVE PERHITUNGAN SUARA_1.jpg', 2, '2024-08-03 23:43:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kandidat`
--

CREATE TABLE `kandidat` (
  `kandidat_id` int(11) NOT NULL,
  `kandidat_kode` varchar(255) NOT NULL,
  `kandidat_nama` varchar(255) NOT NULL,
  `kandidat_tentang` text NOT NULL,
  `kandidat_foto` varchar(255) NOT NULL,
  `kandidat_jenis_pemilihan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kandidat`
--

INSERT INTO `kandidat` (`kandidat_id`, `kandidat_kode`, `kandidat_nama`, `kandidat_tentang`, `kandidat_foto`, `kandidat_jenis_pemilihan`) VALUES
(1, '01-Wulan', 'Wulan Cantik', '<p><strong>DATA DIRI</strong></p>\r\n\r\n<hr />\r\n<p><strong>Nama:</strong> Wulan</p>\r\n\r\n<p><strong>NIM:</strong> lupa</p>\r\n\r\n<p><strong>Program Studi:</strong> mungkin Informatika - B</p>\r\n\r\n<p><strong>Universitas:</strong> Universitas KH. A. Wahab Hasbullah Jombang (UNWAHA)</p>\r\n\r\n<p><strong>Tempat, Tanggal Lahir:</strong> <em>mohon maaf privasi</em></p>\r\n\r\n<p><strong>Alamat:</strong> mau ngapain... nglamar ?</p>\r\n\r\n<p><strong>Telepon/HP:</strong> tanya aja sendiri</p>\r\n\r\n<p><strong>Email:</strong> mungkinwulan@gmail.com</p>\r\n\r\n<p><strong>Status:</strong> Jomblo</p>\r\n\r\n<p><strong>Pendidikan Terakhir:</strong></p>\r\n\r\n<ul>\r\n	<li>Sekolah Menengah Atas (SMA) lupa nama sekolahannya.</li>\r\n</ul>\r\n', '215106055_1629297484523.png', 1),
(2, '02-Rizki', 'Rizki Imam Mukti', '<p><p><strong>DATA DIRI</strong></p></p>\r\n\r\n<p><hr /><br />\r\n<p><strong>Nama:</strong> Rizky</p></p>\r\n\r\n<p><p><strong>NIM:</strong> lupa</p></p>\r\n\r\n<p><p><strong>Program Studi:</strong> mungkin Sistem Informasi - B</p></p>\r\n\r\n<p><p><strong>Universitas:</strong> Universitas KH. A. Wahab Hasbullah Jombang (UNWAHA)</p></p>\r\n\r\n<p><p><strong>Tempat, Tanggal Lahir:</strong> <em>mohon maaf privasi</em></p></p>\r\n\r\n<p><p><strong>Alamat:</strong> mau ngapain... ngopi?</p></p>\r\n\r\n<p><p><strong>Telepon/HP:</strong> tanya aja sendiri</p></p>\r\n\r\n<p><p><strong>Email:</strong> mungkinrizki@gmail.com</p></p>\r\n\r\n<p><p><strong>Status:</strong> Jomblo</p></p>\r\n\r\n<p><p><strong>Pendidikan Terakhir:</strong></p></p>\r\n\r\n<p><ul><br />\r\n    <li>Sekolah Menengah Atas (SMA) lupa nama sekolahannya.</li><br />\r\n</ul><br />\r\n </p>\r\n', '1238186312_1609235103440.png', 1),
(3, '03-Ulum', 'Adip Miftahul Ulum', 'Cuma Deskripsi', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepanitiaan`
--

CREATE TABLE `kepanitiaan` (
  `kepanitiaan_id` int(11) NOT NULL,
  `kepanitiaan_user` int(11) NOT NULL,
  `kepanitiaan_jenis_pemilihan` int(11) NOT NULL,
  `kepanitiaan_level` varchar(225) DEFAULT NULL,
  `kepanitiaan_status` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kepanitiaan`
--

INSERT INTO `kepanitiaan` (`kepanitiaan_id`, `kepanitiaan_user`, `kepanitiaan_jenis_pemilihan`, `kepanitiaan_level`, `kepanitiaan_status`) VALUES
(2, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilihh`
--

CREATE TABLE `pemilihh` (
  `pemilih_id` int(11) NOT NULL,
  `pemilih_nama` varchar(225) NOT NULL,
  `pemilih_idjp` int(11) NOT NULL,
  `pemilih_wa` varchar(225) NOT NULL,
  `pemilih_kode_unik` varchar(5) NOT NULL,
  `pemilih_password` varchar(225) NOT NULL,
  `pemilih_instansi` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemilihh`
--

INSERT INTO `pemilihh` (`pemilih_id`, `pemilih_nama`, `pemilih_idjp`, `pemilih_wa`, `pemilih_kode_unik`, `pemilih_password`, `pemilih_instansi`) VALUES
(1, 'Contoh Pemilih', 1, '0895343024410', '@SbtI', 'QAFCZYc46', 'Contoh Instansi/Prodi'),
(2, 'Contoh Pemilih 2', 1, '082281989917', 'Rs$fs', 'bgGdYip78', 'Contoh Instansi/Prodi 2'),
(3, 'Contoh Pemilih 3', 1, '081553331806', 'IFlox', 'o&tJxOKuczj', 'Contoh Instansi/Prodi 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(225) NOT NULL,
  `user_username` varchar(225) NOT NULL,
  `user_password` varchar(225) NOT NULL,
  `user_level` varchar(225) NOT NULL,
  `user_status` enum('aktif','banned') NOT NULL,
  `user_wa` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_level`, `user_status`, `user_wa`) VALUES
(1, 'superadmin', 'superadmin', '$2y$10$3X3zcX/kEbGm12gJn7DZA..DrTDrDcpYTMUseSc8UYt5dXURFl3eS', 'admin', 'aktif', ''),
(2, 'Adip Ulum', 'adip', '$2y$10$NE0qZt56kO0o/QY9jCbo3..UlwRsJdt/URVEehHtaZO5HbpgOC9pa', 'user', 'aktif', ''),
(3, 'Rizky Imam Mukti', 'riski', '$2y$10$AeGIQxBH4SlJmpGcd7BOX.wg/Bw9B8LUeuqR1LIf0M5jec63VdpOi', 'user', 'aktif', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `votess`
--

CREATE TABLE `votess` (
  `votes_id` int(11) NOT NULL,
  `votes_waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `votes_id_pemilih` int(11) NOT NULL,
  `votes_id_kandidat` int(11) NOT NULL,
  `votes_idjp` int(11) NOT NULL,
  `votes_kode_unik` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `votess`
--

INSERT INTO `votess` (`votes_id`, `votes_waktu`, `votes_id_pemilih`, `votes_id_kandidat`, `votes_idjp`, `votes_kode_unik`) VALUES
(1, '2024-08-03 16:54:50', 1, 2, 1, '@SbtI');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jenis_pemilihan`
--
ALTER TABLE `jenis_pemilihan`
  ADD PRIMARY KEY (`jenis_pemilihan_id`);

--
-- Indeks untuk tabel `kandidat`
--
ALTER TABLE `kandidat`
  ADD PRIMARY KEY (`kandidat_id`);

--
-- Indeks untuk tabel `kepanitiaan`
--
ALTER TABLE `kepanitiaan`
  ADD PRIMARY KEY (`kepanitiaan_id`);

--
-- Indeks untuk tabel `pemilihh`
--
ALTER TABLE `pemilihh`
  ADD PRIMARY KEY (`pemilih_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `votess`
--
ALTER TABLE `votess`
  ADD PRIMARY KEY (`votes_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis_pemilihan`
--
ALTER TABLE `jenis_pemilihan`
  MODIFY `jenis_pemilihan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kandidat`
--
ALTER TABLE `kandidat`
  MODIFY `kandidat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kepanitiaan`
--
ALTER TABLE `kepanitiaan`
  MODIFY `kepanitiaan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pemilihh`
--
ALTER TABLE `pemilihh`
  MODIFY `pemilih_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `votess`
--
ALTER TABLE `votess`
  MODIFY `votes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
