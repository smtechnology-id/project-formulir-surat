-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 10:48 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisurat_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `req_surat_ijin`
--

CREATE TABLE `req_surat_ijin` (
  `id_surat` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `alasan` varchar(255) NOT NULL,
  `tanggal_ijin` date NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `req_surat_ijin`
--

INSERT INTO `req_surat_ijin` (`id_surat`, `nip`, `alamat`, `alasan`, `tanggal_ijin`, `tanggal`) VALUES
(211, '198202132011011010', 'Jl Pemuda, Semarang', 'Sakit Demam', '2023-10-20', '0000-00-00 00:00:00'),
(212, '198202132011011010', 'Jl Pemuda, Semarang', 'Sakit Demam', '2023-10-20', '0000-00-00 00:00:00'),
(213, '196902141988031002', 'asd', 'sadas', '2023-10-06', '0000-00-00 00:00:00'),
(214, '198202132011011010', 'dasdas', 'sadasd', '2023-10-19', '0000-00-00 00:00:00'),
(215, '199202012012062002', 'asda', 'asdas', '2023-10-06', '0000-00-00 00:00:00'),
(216, '199202012012062002', 'dasdas', 'sadasd', '2023-10-19', '0000-00-00 00:00:00'),
(217, '197705172009011005', 'asda', 'asdas', '2023-10-06', '0000-00-00 00:00:00'),
(218, '197705172009011005', 'asd', 'asda', '2023-10-05', '0000-00-00 00:00:00'),
(219, '197705172009011005', 'asd', 'asda', '2023-10-05', '0000-00-00 00:00:00'),
(220, '197705172009011005', 'asd', 'asda', '2023-10-05', '0000-00-00 00:00:00'),
(221, '197705172009011005', 'asd', 'asda', '2023-10-05', '0000-00-00 00:00:00'),
(222, '197705172009011005', 'asd', 'asda', '2023-10-05', '0000-00-00 00:00:00'),
(223, '199202242022212004', 'asdas', 'asdasda', '2023-10-23', '0000-00-00 00:00:00'),
(224, '199202242022212004', 'asdas', 'asdasda', '2023-10-23', '0000-00-00 00:00:00'),
(225, '197305061998021001', 'Jl Pemuda', 'Sakit Demam', '2023-10-12', '0000-00-00 00:00:00'),
(226, '197305061998021001', 'Jl Pemuda', 'Sakit Demam', '2023-10-12', '0000-00-00 00:00:00'),
(227, '197910242009012002', 'Jl Pemuda Semarang', 'Perjalanan Keluar', '2023-10-20', '0000-00-00 00:00:00'),
(228, '197910242009012002', 'Jl Pemuda Semarang', 'Perjalanan Keluar', '2023-10-20', '0000-00-00 00:00:00'),
(229, '197910242009012002', 'Jl Pemuda Semarang', 'Perjalanan Keluar', '2023-10-20', '0000-00-00 00:00:00'),
(230, '197910242009012002', 'Jl Pemuda Semarang', 'Perjalanan Keluar', '2023-10-20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', 'xEYnws6y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bidang`
--

CREATE TABLE `tb_bidang` (
  `id_bidang` int(11) NOT NULL,
  `nama_bidang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bidang`
--

INSERT INTO `tb_bidang` (`id_bidang`, `nama_bidang`) VALUES
(0, '-'),
(1, 'Sekretariat'),
(2, 'Informasi Publik'),
(3, 'Komunikasi Publik'),
(4, 'Aplikasi Informatika'),
(5, 'Infrastruktur TIK'),
(6, 'Data dan Statistik'),
(7, 'Dinas Komunikasi dan Informatika Provinsi Jawa Timur');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dasar_spt`
--

CREATE TABLE `tb_dasar_spt` (
  `id_dasar_spt` int(11) NOT NULL,
  `item_dasar` varchar(255) NOT NULL,
  `no_urut` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dasar_spt`
--

INSERT INTO `tb_dasar_spt` (`id_dasar_spt`, `item_dasar`, `no_urut`) VALUES
(5, 'Peraturan Daerah Provinsi Jawa Timur Nomor 7 Tahun 2022 tanggal 20 Oktober 2022 tentang Perubahan Anggaran Pendapatan dan Belanja Daerah Provinsi Jawa Timur Tahun Anggaran 2022;', 1),
(6, 'Peraturan Gubernur Jawa Timur Nomor 62 Tahun 2022 tanggal 20 Oktober 2022 tentang Penjabaran Perubahan Anggaran Pendapatan dan Belanja Daerah Provinsi Jawa Timur Tahun Anggaran 2022;', 2),
(7, 'Peraturan Gubernur Jawa Timur Nomor 12 Tahun 2022 tanggal 22 Februari 2022 tentang Perubahan Atas Peraturan Gubernur Jawa Timur Nomor 55 Tahun 2021 tentang Pedoman Kerja dan Pelaksanaan Tugas Pemerintah Daerah Provinsi Jawa Timur Tahun 2022;', 3),
(8, 'Dokumen Pelaksanaan Perubahan Anggaran Dinas Komunikasi dan Informatika Provinsi Jawa Timur Tahun 2022 Nomor DPPA/B.1/2.16.2.20.2.21.04.0000/001/2022 Tanggal 21 Oktober 2022', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `id_jabatan_jenis` int(11) NOT NULL,
  `jabatan_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id_jabatan`, `id_jabatan_jenis`, `jabatan_nama`) VALUES
(1, 1, 'Kepala'),
(2, 2, 'Sekretaris'),
(3, 2, 'Kepala Bidang Informasi Publik'),
(4, 2, 'Kepala Bidang Komunikasi Publik'),
(5, 2, 'Kepala Bidang Aplikasi Informatika'),
(6, 2, 'Kepala Bidang Infrastruktur TIK'),
(7, 2, 'Kepala Bidang Data dan Statistik'),
(8, 5, 'Kepala Sub Bagian Umum dan Kepegawaian'),
(9, 5, 'Kepala Seksi Persandian dan Keamanan Informasi'),
(10, 3, 'Pranata Hubungan Masyarakat Ahli Utama'),
(11, 3, 'Pranata Komputer Ahli Utama'),
(12, 3, 'Sandiman Ahli Utama'),
(13, 3, 'Statistisi Ahli Utama'),
(14, 3, 'Manggala Informatika Ahli Utama'),
(15, 4, 'Pranata Hubungan Masyarakat Ahli Madya'),
(16, 4, 'Pranata Komputer Ahli Madya'),
(17, 4, 'Sandiman Ahli Madya'),
(18, 4, 'Statistisi Ahli Madya'),
(19, 4, 'Manggala Informatika Ahli Madya'),
(20, 6, 'Pranata Hubungan Masyarakat Ahli Muda'),
(21, 6, 'Pranata Komputer Ahli Muda '),
(22, 6, 'Statistisi Ahli Muda'),
(23, 6, 'Perencana Ahli Muda'),
(24, 6, 'Analis Kebijakan Ahli Muda'),
(25, 7, 'Pranata Hubungan Masyarakat Ahli Muda'),
(26, 7, 'Pranata Komputer Ahli Muda'),
(27, 7, 'Statistisi Ahli Muda'),
(28, 7, 'Perencana Ahli Muda'),
(29, 7, 'Analis Kebijakan Ahli Muda'),
(30, 7, 'Sandiman Ahli Muda'),
(31, 7, 'Manggala Informatika Ahli Muda'),
(32, 7, 'Analis SDM Aparatur Ahli Muda'),
(33, 7, 'Pustakawan Ahli Muda'),
(34, 7, 'Arsiparis Ahli Muda'),
(35, 7, 'Pengelola Pengadaan Barang/Jasa Ahli Muda'),
(36, 8, 'Pranata Hubungan Masyarakat Ahli Pertama'),
(37, 8, 'Pranata Komputer Ahli Pertama'),
(38, 8, 'Sandiman Ahli Pertama'),
(39, 8, 'Statistisi Ahli Pertama'),
(40, 8, 'Manggala Informatika Ahli Pertama'),
(41, 8, 'Perencana Ahli Pertama'),
(42, 8, 'Analis Kebijakan Ahli Pertama'),
(43, 8, 'Analis SDM Aparatur Ahli Pertama'),
(44, 8, 'Pustakawan Ahli Pertama'),
(45, 8, 'Arsiparis Ahli Pertama'),
(46, 8, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama'),
(47, 9, 'Pranata Hubungan Masyarakat Ahli Pertama'),
(48, 9, 'Pranata Komputer Ahli Pertama'),
(49, 9, 'Sandiman Ahli Pertama'),
(50, 9, 'Statistisi Ahli Pertama'),
(51, 9, 'Manggala Informatika Ahli Pertama'),
(52, 10, 'Pranata Hubungan Masyarakat Terampil Penyelia'),
(53, 10, 'Pranata Komputer Terampil Penyelia'),
(54, 10, 'Sandiman Terampil Penyelia'),
(55, 10, 'Statistisi Terampil Penyelia'),
(56, 10, 'Manggala Informatika Terampil Penyelia'),
(57, 10, 'Perencana Terampil Penyelia'),
(58, 10, 'Analis Kebijakan Terampil Penyelia'),
(59, 10, 'Analis SDM Aparatur Terampil Penyelia'),
(60, 10, 'Pustakawan Terampil Penyelia'),
(61, 10, 'Arsiparis Terampil Penyelia'),
(62, 11, 'Pranata Hubungan Masyarakat Terampil Mahir'),
(63, 11, 'Pranata Komputer Terampil Mahir'),
(64, 11, 'Sandiman Terampil Mahir'),
(65, 11, 'Statistisi Terampil Mahir'),
(66, 11, 'Manggala Informatika Terampil Mahir'),
(67, 11, 'Perencana Terampil Mahir'),
(68, 11, 'Analis Kebijakan Terampil Mahir'),
(69, 11, 'Analis SDM Aparatur Terampil Mahir'),
(70, 11, 'Pustakawan Terampil Mahir'),
(71, 11, 'Arsiparis Terampil Mahir'),
(72, 12, 'Pranata Hubungan Masyarakat Terampil Pelaksana'),
(73, 12, 'Pranata Komputer Terampil Pelaksana'),
(74, 12, 'Sandiman Terampil Pelaksana'),
(75, 12, 'Statistisi Terampil Pelaksana'),
(76, 12, 'Manggala Informatika Terampil Pelaksana'),
(77, 12, 'Perencana Terampil Pelaksana'),
(78, 12, 'Analis Kebijakan Terampil Pelaksana'),
(79, 12, 'Analis SDM Aparatur Terampil Pelaksana'),
(80, 12, 'Pustakawan Terampil Pelaksana'),
(81, 12, 'Arsiparis Terampil Pelaksana'),
(82, 13, 'Pranata Hubungan Masyarakat Terampil Pelaksana Pemula'),
(83, 13, 'Pranata Komputer Terampil Pelaksana Pemula'),
(84, 13, 'Sandiman Terampil Pelaksana Pemula'),
(85, 13, 'Statistisi Terampil Pelaksana Pemula'),
(86, 13, 'Manggala Informatika Terampil Pelaksana Pemula'),
(87, 13, 'Perencana Terampil Pelaksana Pemula'),
(88, 13, 'Analis Kebijakan Terampil Pelaksana Pemula'),
(89, 13, 'Analis SDM Aparatur Terampil Pelaksana Pemula'),
(90, 13, 'Pustakawan Terampil Pelaksana Pemula'),
(91, 13, 'Arsiparis Terampil Pelaksana Pemula'),
(92, 14, 'Analis Berita'),
(93, 14, 'Analis Data dan Informasi'),
(94, 14, 'Analis Hasil Pengawasan dan Pengaduan Masyarakat'),
(95, 14, 'Analis Sistem Informasi'),
(96, 14, 'Analis Statistik'),
(97, 14, 'Bendahara'),
(98, 14, 'Pengendali Frekuensi Radio'),
(99, 14, 'Penyusun Bahan Informasi dan Publikasi'),
(100, 14, 'Penyusun Kebutuhan Barang Inventaris'),
(101, 14, 'Penyusun Laporan Keuangan'),
(102, 14, 'Penyusun Program Anggaran dan Laporan'),
(103, 14, 'Penyusun Rencana Kebutuhan Sarana dan Prasarana'),
(104, 14, 'Penyusun Rencana Kegiatan dan Anggaran'),
(105, 14, 'Perancang Grafis'),
(106, 14, ''),
(107, 14, 'Pranata Kearsipan'),
(108, 14, 'Penata Laporan Keuangan'),
(109, 14, 'Pengelola Data'),
(110, 14, 'Pengelola Gaji'),
(111, 14, 'Pengelola Instalasi Air dan Listrik '),
(112, 14, 'Pengelola Keamanan Sistem Informasi'),
(113, 14, 'Pengelola Kepegawaian'),
(114, 14, 'Pengelola Keuangan'),
(115, 14, 'Pengelola Monitoring dan Evaluasi'),
(116, 14, 'Pengelola Pemanfaatan Barang Milik Daerah'),
(117, 14, 'Pengelola Pengaduan Publik'),
(118, 14, 'Pengelola Perpustakaan'),
(119, 14, 'Pengelola Sistem dan Jaringan'),
(120, 14, 'Pengelola Teknologi Informasi'),
(121, 14, 'Verifikator Keuangan'),
(122, 14, ''),
(123, 14, 'Ajudan'),
(124, 14, 'Jurnalis'),
(125, 14, 'Pengadministrasi Hukum'),
(126, 14, 'Pengadministrasi Kepegawaian'),
(127, 14, 'Pengadministrasi Keuangan'),
(128, 14, 'Pengadministrasi Perpustakaan'),
(129, 14, 'Pengadministrasi Umum'),
(130, 14, 'Pengemudi'),
(131, 14, 'Teknisi Jaringan Instalasi'),
(132, 14, 'Teknisi Peralatan Listrik dan Elektronika'),
(133, 15, 'Analis Hukum'),
(134, 15, 'Penyusun Bahan Publikasi'),
(135, 15, 'Pengelola Kepegawaian'),
(136, 15, 'Pengelola Perpustakaan'),
(137, 15, 'Pengelola Sistem dan Jaringan'),
(138, 15, 'Pengelola Sistem Informasi'),
(139, 15, 'Pengelola Data'),
(140, 15, 'Teknisi Mesin'),
(141, 15, 'Teknisi Peralatan, Listrik dan Elektronika'),
(142, 15, 'Teknisi Listrik'),
(143, 15, 'Reporter'),
(144, 15, 'Jurnalis'),
(145, 15, 'Fotografer '),
(146, 15, 'Pengadministrasi Keuangan'),
(147, 15, 'Pengadministrasi Umum'),
(148, 16, 'Tenaga Ahli Analis Berita'),
(149, 16, 'Tenaga Informasi dan Teknologi'),
(150, 16, 'Operator Ruang Komando'),
(151, 16, 'Operator Call Center'),
(152, 16, 'Tenaga Operator Komputer'),
(153, 17, 'Tenaga Administrasi'),
(200, 100, 'Sekretaris Daerah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jabatan_jenis`
--

CREATE TABLE `tb_jabatan_jenis` (
  `id_jabatan_jenis` int(11) NOT NULL,
  `jabatan_jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jabatan_jenis`
--

INSERT INTO `tb_jabatan_jenis` (`id_jabatan_jenis`, `jabatan_jenis`) VALUES
(1, 'Kadis'),
(2, 'Kabid'),
(3, 'Fungsional Utama'),
(4, 'Fungsional Madya'),
(5, 'Eselon 4'),
(6, 'Fungsional Subkor'),
(7, 'Fungsional Muda'),
(8, 'Fungsional Pertama'),
(9, 'PPPK'),
(10, 'Fungsional Penyelia'),
(11, 'Fungsional Mahir / Pelaksana Lanjutan'),
(12, 'Fungsional Terampil / Pelaksana'),
(13, 'Fungsional Pelaksana Pemula'),
(14, 'Pelaksana'),
(15, 'PTT'),
(16, 'Tenaga Ahli'),
(17, 'Tenaga Pendukung'),
(100, 'Sekda');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pangkat_golongan`
--

CREATE TABLE `tb_pangkat_golongan` (
  `id_pangkat_golongan` int(11) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `golongan` varchar(10) NOT NULL,
  `ruang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pangkat_golongan`
--

INSERT INTO `tb_pangkat_golongan` (`id_pangkat_golongan`, `pangkat`, `golongan`, `ruang`) VALUES
(0, '-', '-', '-'),
(1, 'Juru Muda', 'I', 'a'),
(2, 'Juru Muda Tingkat I', 'I', 'b'),
(3, 'Juru', 'I', 'c'),
(4, 'Juru Tingkat I', 'I', 'd'),
(5, 'Pengatur Muda', 'II', 'a'),
(6, 'Pengatur Muda Tingkat I', 'II', 'b'),
(7, 'Pengatur', 'II', 'c'),
(8, 'Pengatur Tingkat I', 'II', 'd'),
(9, 'Penata Muda', 'III', 'a'),
(10, 'Penata Muda Tingkat I', 'III', 'b'),
(11, 'Penata', 'III', 'c'),
(12, 'Penata Tingkat I', 'III', 'd'),
(13, 'Pembina', 'IV', 'a'),
(14, 'Pembina Tingkat I', 'IV', 'b'),
(15, 'Pembina Utama Muda', 'IV', 'c'),
(16, 'Pembina Utama Madya', 'IV', 'd'),
(17, 'Pembina Utama', 'IV', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id` int(11) NOT NULL,
  `id_pegawai` varchar(50) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `ket_id_pegawai` varchar(20) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `id_pangkat_gol` int(11) NOT NULL,
  `id_jabatan_jenis` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `tmt_jabatan` varchar(20) NOT NULL,
  `tmt_pensiun` varchar(20) NOT NULL,
  `id_bidang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id`, `id_pegawai`, `nip`, `tempat_lahir`, `tgl_lahir`, `ket_id_pegawai`, `nama_pegawai`, `id_pangkat_gol`, `id_jabatan_jenis`, `id_jabatan`, `tmt_jabatan`, `tmt_pensiun`, `id_bidang`) VALUES
(1, '197508051998032002', '19750805 199803 2 002', 'Lumajang', '8/5/1975', 'NIP', 'SHERLITA RATNA DEWI AGUSTIN. S.Si.. M.IP.', 14, 1, 1, '1/9/2023', '9/1/2033', 7),
(3, '', '', '', '', 'NIP', 'SUHARLINA KUSUMAWARDANI. S.T.. M.T.', 14, 2, 2, '', '', 1),
(4, '197305061998021001', '19730506 199802 1 001', 'Sumenep', '5/6/1973', 'NIP', 'ASSYARI. S.Pd.. M.Pd.', 14, 2, 3, '1/3/2022', '6/1/2031', 2),
(5, '197305061998021001', '19730506 199802 1 001', 'Sumenep', '5/6/1973', 'NIP', 'ASSYARI. S.Pd.. M.Pd.', 14, 2, 4, '1/3/2022', '6/1/2031', 3),
(6, '197210312006041005', '19721031 200604 1 005', 'Sidoarjo', '10/31/1972', 'NIP', 'ACHMAD FADLIL CHUSNI. S.Kom.. M.MT.', 13, 2, 5, '1/3/2022', '11/1/2030', 4),
(7, '198210162011011005', '19821016 201101 1 005', 'Sampang', '10/16/1982', 'NIP', 'GUGI ALIFRIANTO WICAKSONO. S.T.. M.M.', 12, 2, 6, '10/1/2022', '11/1/2040', 5),
(8, '196509091994032006', '19650909 199403 2 006', 'Surabaya', '9/9/1965', 'NIP', 'Dra. Ec. NIRMALA DEWI. M.M.', 14, 2, 7, '10/5/2022', '10/1/2023', 6),
(10, '196703131989031008', '19670313 198903 1 008', 'Purworejo', '3/13/1967', 'NIP', 'AMAT MUSTA`IN. S.Sos.', 13, 4, 15, '3/1/2017', '4/1/2027', 2),
(11, '196705181990032009', '19670518 199003 2 009', 'Surabaya', '5/18/1967', 'NIP', 'YANTI DYAH HARSONO. S.Sos.. M.Si.', 13, 4, 15, '9/1/2021', '6/1/2027', 2),
(13, '198002242010012009', '19800224 201001 2 009', 'Surabaya', '2/24/1980', 'NIP', 'RATNA DIAH AYUNINGTYAS. S.E.', 12, 5, 8, '10/5/2022', '3/1/2038', 1),
(14, '198510242009121012', '19851024 200912 1 012', 'Surabaya', '10/24/1985', 'NIP', 'AULIA BAHAR PERNAMA. S.Kom.. M.ISM.', 12, 5, 9, '6/22/2018', '11/1/2043', 4),
(16, '196706201994032007', '19670620 199403 2 007', 'Surabaya', '6/20/1967', 'NIP', 'Dra. SITI PURWATININGSIH. M.M.', 13, 6, 20, '12/31/2021', '7/1/2025', 3),
(17, '196807221990031006', '19680722 199003 1 006', 'Surabaya', '7/22/1968', 'NIP', 'Drs. AGUNG SRIONO. S.H.. M.M.', 13, 6, 20, '12/31/2021', '8/1/2026', 2),
(18, '198710292011011007', '19871029 201101 1 007', 'Pangkal Pinang', '10/29/1987', 'NIP', 'EKO SETIAWAN. S.I.Kom.. M.Med.Kom.', 12, 6, 20, '10/1/2021', '11/1/2045', 3),
(19, '197503042001122006', '19750304 200112 2 006', 'Bangkalan', '3/4/1975', 'NIP', 'LENNY MARTARINA. S.E.. M.M.. Ak.. CA.', 13, 6, 20, '12/31/2021', '4/1/2033', 2),
(20, '197404111998031004', '19740411 199803 1 004', 'Ngawi', '4/11/1974', 'NIP', 'PUTUT DARMAWAN. S.E.. M.M.', 12, 6, 20, '12/31/2021', '5/1/2032', 2),
(21, '196611171990112001', '19661117 199011 2 001', 'Surabaya', '11/17/1966', 'NIP', 'SOFIA KURNIAWATI. S.E.. M.Si.', 13, 6, 20, '12/31/2021', '12/1/2024', 3),
(22, '197110091999011001', '19711009 199901 1 001', 'Surabaya', '10/9/1971', 'NIP', 'DENDY EKA PUSPAWADI. S.Si.', 12, 6, 22, '12/31/2021', '11/1/2029', 4),
(23, '197705172009011005', '19770517 200901 1 005', 'Surabaya', '5/17/1977', 'NIP', 'I WAYAN RUDY ARTHA. S.Kom.', 12, 6, 22, '12/31/2021', '6/1/2035', 4),
(24, '198511272010011008', '19851127 201001 1 008', 'Wonosobo', '11/27/1985', 'NIP', 'NOFIAN ADI PRASETYAWAN. S.Kom.. M.T.', 12, 6, 22, '10/1/2022', '12/1/2043', 5),
(25, '196902141988031002', '19690214 198803 1 002', 'Bandung', '2/14/1969', 'NIP', 'AGUS BUDI SAMPURNO. S.E.', 12, 6, 24, '12/31/2021', '3/1/2027', 6),
(26, '196912111989111002', '19691211 198911 1 002', 'Kediri', '12/11/1969', 'NIP', 'Drs. SATRIYO WAHYUDI. M.Si.', 13, 6, 24, '12/31/2021', '1/1/2028', 6),
(27, '197201261998031007', '19720126 199803 1 007', 'Makassar', '1/26/1972', 'NIP', 'IDHAM ASHARI KASIM PUTRA. S.T.. M.M.', 13, 6, 24, '12/31/2021', '2/1/2030', 6),
(28, '199202012012062002', '19920201 201206 2 002', 'Nganjuk', '2/1/1992', 'NIP', 'VENUS VEBRYANA. S.STP.', 11, 6, 26, '12/31/2021', '3/1/2050', 1),
(29, '198202132011011010', '19820213 201101 1 010', 'Gunungkidul', '2/13/1982', 'NIP', 'TUGIRIN. S.E.', 12, 6, 28, '12/31/2021', '3/1/2040', 1),
(31, '198001142010012006', '19800114 201001 2 006', 'Magetan', '1/14/1980', 'NIP', 'AYU SAULINA ERNALITA. S.S.. MM.', 12, 7, 21, '4/1/2014', '2/1/2038', 2),
(32, '198509252009021001', '19850925 200902 1 001', 'Sidoarjo', '9/25/1985', 'NIP', 'DWI SUSILA WIJAYA. S.Sos. M.KP', 12, 7, 21, '9/25/2019', '10/1/2043', 2),
(33, '197706262010012005', '19770626 201001 2 005', 'Wonogiri', '6/26/1977', 'NIP', 'RETNO YUNI WIDAYANINGSIH. S.T.. M.Med.Kom', 11, 7, 21, '11/9/2020', '7/1/2035', 4),
(34, '198511022010012023', '19851102 201001 2 023', 'Tuban', '11/2/1985', 'NIP', 'RIA AMALIA. S.Sos.', 11, 7, 21, '8/16/2018', '12/1/2043', 2),
(35, '198209012011011004', '19820901 201101 1 004', 'Indramayu', '9/1/1982', 'NIP', 'TAUFIK MAULANA. S.Sos.. M.AP.', 12, 7, 21, '11/9/2020', '10/1/2042', 2),
(37, '198501202010012016', '19850120 201001 2 016', 'Pasuruan', '1/20/1985', 'NIP', 'SISCA AGUSTIA PUTRI. S.Sos.', 10, 8, 36, '3/1/2019', '2/1/2043', 3),
(38, '197811112010121001', '19781111 201012 1 001', 'Surabaya', '11/11/1978', 'NIP', 'ALI FIRMAN HERLAMBANG. S.T.', 10, 8, 38, '4/12/2018', '12/1/2036', 4),
(39, '198303312010012009', '19830331 201001 2 009', 'Surabaya', '3/31/1983', 'NIP', 'ANA ERISTIA WULANDARI. S.Kom.', 10, 8, 38, '11/20/2015', '4/1/2043', 1),
(40, '199104192022041001', '19910419 202204 1 001', 'Ngawi', '4/19/1991', 'NIP', 'DHIAN GALANG PRADANA. S.Kom.', 9, 8, 38, '4/1/2022', '5/1/2049', 4),
(41, '199601282019031003', '19960128 201903 1 003', 'Gresik', '1/28/1996', 'NIP', 'IBRAHIM YUNUS MUHAMMAD FIQHAN. S.Kom.', 9, 8, 38, '6/18/2021', '2/1/2054', 4),
(42, '198603062019031005', '19860306 201903 1 005', 'Sidoarjo', '3/6/1986', 'NIP', 'MARTIN IVO HARDINOTO. S.ST.', 9, 8, 38, '6/18/2021', '4/1/2044', 4),
(43, '198304132009032007', '19830413 200903 2 007', 'Rembang', '4/13/1983', 'NIP', 'RADEN RORO RENITA INDRI KUSUMA DEWI. S.T.', 10, 8, 38, '4/12/2018', '5/1/2041', 1),
(44, '198906182014031002', '19890618 201403 1 002', 'Surabaya', '6/18/1989', 'NIP', 'ADI KURNIAWAN. S.Kom.. M.Kom.', 10, 8, 40, '12/31/2018', '7/1/2047', 4),
(45, '199212172022041001', '19921217 202204 1 001', 'Mojokerto', '12/17/1992', 'NIP', 'DEVI ARI LUTFIANTO. S.Kom.', 9, 8, 40, '4/1/2022', '1/1/2053', 4),
(46, '199410262022041001', '19941026 202204 1 001', 'Pasuruan', '10/26/1994', 'NIP', 'HILMY BAHY HAKIM. S.Kom.', 9, 8, 40, '4/1/2022', '11/1/2052', 4),
(47, '197811262009012002', '19781126 200901 2 002', 'Cepu', '11/26/1978', 'NIP', 'HALIDA NUR AINUN. S.Si.', 9, 8, 42, '1/1/2021', '12/1/2036', 6),
(48, '199702032020122017', '19970203 202012 2 017', 'Gresik', '2/3/1997', 'NIP', 'LAILATUS SYARIFAH. S.Stat.', 9, 8, 42, '2/1/2021', '3/1/2055', 6),
(49, '198807212019031002', '19880721 201903 1 002', 'Jombang', '7/21/1988', 'NIP', 'RADEN MAKARYO NUGRAHADI. S.Kom.. M.MT.', 9, 8, 44, '3/16/2022', '8/1/2046', 4),
(50, '198406232019031006', '19840623 201903 1 006', 'Pasuruan', '6/23/1984', 'NIP', 'TAUFIQ RAMADHANY. S.T.', 9, 8, 44, '3/16/2022', '7/1/2042', 4),
(51, '198509122022212001', '19850912 202221 2 001', 'Surabaya', '9/12/1985', 'NIP', 'ANNISA ALIEF RAHMANIAR . S.Sos.', 9, 9, 47, '4/1/2022', '10/1/2043', 3),
(52, '197707142022211001', '19770714 202221 1 001', 'Magelang', '7/14/1977', 'NIP', 'DILI ISTIMORA EYATO. S.Sos.', 9, 9, 47, '4/1/2022', '8/1/2035', 3),
(53, '198107272022212001', '19810727 202221 2 001', 'Surabaya', '7/27/1981', 'NIP', 'FITRIA MAHARANI. S.Sos.', 9, 9, 47, '4/1/2022', '8/1/2039', 3),
(54, '199302282022211001', '19930228 202221 1 001', 'Probolinggo', '2/28/1993', 'NIP', 'GHUFRON SHODIQ . S.I.Kom.', 9, 9, 47, '4/1/2022', '3/1/2051', 2),
(55, '199202242022212004', '19920224 202221 2 004', 'Jember', '2/24/1992', 'NIP', 'ISTIQLALIAH DIAN CAHYANI . S.I.Kom.', 9, 9, 47, '4/1/2022', '3/1/2050', 2),
(56, '198506192022211001', '19850619 202221 1 001', 'Surabaya', '6/19/1985', 'NIP', 'MUCHAMMAD AFRIZAL AKBAR . S.I.Kom.', 9, 9, 47, '4/1/2022', '7/1/2043', 2),
(57, '198105062023212018', '19810506 202321 2 018', 'Gresik', '5/6/1981', 'NIP', 'SITI SAADAH. S.Sos.', 9, 9, 47, '-', '-', 2),
(58, '197708022023212009', '19770802 202321 2 009', 'Sidoarjo', '8/2/1977', 'NIP', 'SAMIATI. S.Sos.', 9, 9, 47, '-', '-', 2),
(59, '199408132023211014', '19940813 202321 1 014', 'Surabaya', '8/13/1994', 'NIP', 'RIDHO BAGUS IMAWAN. S. Sos', 9, 9, 47, '-', '-', 0),
(60, '198610062023212036', '19861006 202321 2 036', 'Kediri', '10/6/1986', 'NIP', 'YUYUN DWI RAHAYU. S.Si', 9, 9, 47, '-', '-', 6),
(61, '198208292006041005', '19820829 200604 1 005', 'Surabaya', '8/29/1982', 'NIP', 'ANDI BAGUS SETIAWAN. A.Md.', 10, 11, 62, '10/1/2020', '9/1/2040', 2),
(62, '199305152020122022', '19930515 202012 2 022', 'Surabaya', '5/15/1993', 'NIP', 'DENTY PUSPITA MEILANI. S.I.Kom.', 9, 14, 92, '2/1/2021', '1/1/2058', 3),
(63, '196711132007011023', '19671113 200701 1 023', 'Pacitan', '11/13/1967', 'NIP', 'SUCIPTO. S.Kom.', 10, 14, 93, '1/3/2020', '12/1/2025', 6),
(64, '199002102014031001', '19900210 201403 1 001', 'Madiun', '2/10/1990', 'NIP', 'FEBY KRISBIYANTORO. S.H.', 11, 14, 94, '4/4/2022', '3/1/2048', 2),
(65, '197108182014121001', '19710818 201412 1 001', 'Surabaya', '8/18/1971', 'NIP', 'HARSANTO. S.T.', 11, 14, 95, '1/1/2018', '9/1/2029', 4),
(66, '196508091991032008', '19650809 199103 2 008', 'Sumenep', '8/9/1965', 'NIP', 'Dra. TATIK AGUSTINA', 12, 14, 97, '4/4/2022', '9/1/2023', 1),
(67, '199606272019032007', '19960627 201903 2 007', 'Surabaya', '6/27/1996', 'NIP', 'ELISA ERAWATI. S.Kom.', 10, 14, 97, '12/2/2021', '7/1/2054', 1),
(68, '198003192014032001', '19800319 201403 2 001', 'Mojokereto', '3/19/1980', 'NIP', 'INDRIYANTI TRI WULANDARI. S.E.', 10, 14, 97, '1/3/2022', '4/1/2038', 1),
(69, '199310312019032012', '19931031 201903 2 012', 'Tuban', '10/31/1993', 'NIP', 'NURUL KHOIRINA. S.Kom.', 10, 14, 97, '11/1/2020', '11/1/2051', 1),
(70, '197111111994022002', '19711111 199402 2 002', 'Surabaya', '11/11/1971', 'NIP', 'SUSIATI. S.E.', 12, 14, 97, '1/2/2023', '12/1/2029', 1),
(71, '196709201992031015', '19670920 199203 1 015', 'Surabaya', '9/20/1967', 'NIP', 'CHOIRUL ANWAR. S.E.', 12, 14, 99, '1/2/2023', '10/1/2025', 2),
(72, '197408231998032005', '19740823 199803 2 005', 'Sidoarjo', '8/23/1974', 'NIP', 'ARY RETNO INDARWATI. S.E.', 10, 14, 101, '10/3/2022', '9/1/2032', 1),
(73, '197902102003122006', '19790210 200312 2 006', 'Surabaya', '2/10/1979', 'NIP', 'DWI WARA UTARI. S.AP.', 10, 14, 102, '1/1/2018', '3/1/2037', 1),
(74, '197810202010012003', '19781020 201001 2 003', 'Surabaya', '10/20/1978', 'NIP', 'IDA PRIHATIN SOEGITO PUTRA. S.Pd.. M.M.', 12, 14, 102, '1/3/2020', '11/1/2036', 1),
(75, '198208102010012020', '19820810 201001 2 020', 'Surabaya', '8/10/1982', 'NIP', 'RENI AGUSTIN. S.H.', 12, 14, 102, '1/2/2019', '9/1/2040', 1),
(76, '197804202010011002', '19780420 201001 1 002', 'Tasikmalaya', '4/20/1978', 'NIP', 'FERI HADIJAYA', 8, 14, 104, '6/3/2020', '5/1/2036', 1),
(77, '198301062009021002', '19830106 200902 1 002', 'Tulungagung', '1/6/1983', 'NIP', 'PRIMA AGUNG PRANGHAJI. S.I.Kom.', 10, 14, 104, '6/3/2020', '2/1/2041', 1),
(78, '199210282020122016', '19921028 202012 2 016', 'Lampung Utara', '10/28/1992', 'NIP', 'DIAH ASRI SAFITRI. S.T.', 9, 14, 105, '2/1/2021', '1/1/2058', 2),
(79, '197910242009012002', '19791024 200901 2 002', 'Ponorogo', '10/24/1979', 'NIP', 'RATNA TRI SETYAWATI. S.E.', 10, 14, 107, '12/1/2022', '11/1/2037', 1),
(80, '198401012008011014', '19840101 200801 1 014', 'Sumenep', '1/1/1984', 'NIP', 'AKHMAD SUPANDI', 8, 14, 108, '1/2/2019', '2/1/2042', 5),
(81, '196704042007011027', '19670404 200701 1 027', 'Surabaya', '4/4/1967', 'NIP', 'APRIL HARI SANTOSO. S.Sos', 10, 14, 108, '4/4/2022', '5/1/2025', 4),
(82, '197407142008011009', '19740714 200801 1 009', 'Surabaya', '7/14/1974', 'NIP', 'ARIF SETIADJI', 7, 14, 108, '1/2/2019', '8/1/2032', 6),
(83, '197906092009011004', '19790609 200901 1 004', 'Surabaya', '6/9/1979', 'NIP', 'DJUNI WIDJATMIKO. S.H.', 8, 14, 108, '1/3/2021', '7/1/2037', 2),
(84, '199111172015032002', '19911117 201503 2 002', 'Surabaya', '11/17/1991', 'NIP', 'GIGIH REDANA PUTRY WAHANA. S.Kom.', 9, 14, 108, '1/1/2018', '12/1/2049', 5),
(85, '196606302012121001', '19660630 201212 1 001', 'Bangkalan', '6/30/1966', 'NIP', 'HAMIDUN', 7, 14, 108, '1/2/2019', '7/1/2024', 3),
(86, '196704181989031007', '19670418 198903 1 007', 'Surabaya', '4/18/1967', 'NIP', 'HERLAMBANG PRIJOMBODO', 12, 14, 108, '1/2/2023', '5/1/2025', 2),
(87, '197011212007011013', '19701121 200701 1 013', 'Sidoarjo', '11/21/1970', 'NIP', 'MARSUDI', 7, 14, 108, '1/2/2019', '12/1/2028', 6),
(88, '197105111997032002', '19710511 199703 2 002', 'Malang', '5/11/1971', 'NIP', 'MEI JUNIARTI. S.Sos. M.M.', 13, 14, 108, '1/2/2023', '6/1/2029', 1),
(89, '196601011986101006', '19660101 198610 1 006', 'Surabaya', '1/1/1966', 'NIP', 'MOCHAMAD SOEHARTONO', 10, 14, 108, '1/2/2019', '2/1/2024', 4),
(90, '198206302010011006', '19820630 201001 1 006', 'Bangkalan', '6/30/1982', 'NIP', 'MUHAMMAD GHUFRON', 8, 14, 108, '1/2/2019', '7/1/2040', 5),
(91, '197112282008011004', '19711228 200801 1 004', 'Surabaya', '12/28/1971', 'NIP', 'NANANG EKO KUSWORO. S.T.', 12, 14, 108, '1/1/2018', '1/1/2030', 5),
(92, '197612202010011002', '19761220 201001 1 002', 'Surabaya', '12/20/1976', 'NIP', 'ROFI`I', 8, 14, 108, '1/2/2019', '1/1/2035', 4),
(93, '196604191989072001', '19660419 198907 2 001', 'Surabaya', '4/19/1966', 'NIP', 'SOETJI NINGSIH', 10, 14, 108, '1/1/2018', '5/1/2024', 3),
(94, '197302182010011004', '19730218 201001 1 004', 'Surabaya', '2/18/1973', 'NIP', 'SUDARMANTO', 8, 14, 108, '1/2/2019', '3/1/2031', 5),
(95, '196710021994031005', '19671002 199403 1 005', 'Purworejo', '10/2/1967', 'NIP', 'SUPONO', 10, 14, 108, '1/2/2023', '11/1/2025', 2),
(96, '198002152010011005', '19800215 201001 1 005', 'Surabaya', '2/15/1980', 'NIP', 'SUWARNO TEHUAYO', 8, 14, 108, '1/2/2019', '3/1/2038', 4),
(97, '196611121986032006', '19661112 198603 2 006', 'Surabaya', '11/12/1966', 'NIP', 'TUTIK SUPRIYATI', 10, 14, 108, '1/2/2019', '12/1/2024', 4),
(98, '198109222009011006', '19810922 200901 1 006', 'Surabaya', '9/22/1981', 'NIP', 'YOGI WIWOKO ARDY', 8, 14, 108, '1/2/2019', '10/1/2039', 6),
(99, '197210201994031008', '19721020 199403 1 008', 'Sidoarjo', '10/20/1972', 'NIP', 'YUDI EFENDI. S.E.', 12, 14, 108, '1/2/2019', '11/1/2030', 4),
(100, '197011221999032004', '19701122 199903 2 004', 'Surabaya', '11/22/1970', 'NIP', 'TITIK SUSIATI. S.E.', 12, 14, 109, '1/1/2018', '12/1/2028', 1),
(101, '199109262015031005', '19910926 201503 1 005', 'Ponorogo', '9/26/1991', 'NIP', 'SEPTIAN FAJAR ARIFIN. A.Md.', 8, 14, 110, '10/3/2022', '10/1/2049', 1),
(102, '199203062019031007', '19920306 201903 1 007', 'Blitar', '3/6/1992', 'NIP', 'ADE PUTRA HABIBI. S.Kom.', 10, 14, 111, '3/1/2019', '4/1/2050', 5),
(103, '197310202009011001', '19731020 200901 1 001', 'Jombang', '10/20/1973', 'NIP', 'WAHYU PURWANTONO', 8, 14, 112, '1/1/2018', '11/1/2031', 1),
(104, '196902041992021001', '19690204 199202 1 001', 'Surabaya', '2/4/1969', 'NIP', 'USMAN. S.E.', 12, 14, 113, '1/2/2019', '3/1/2027', 1),
(105, '196607172010011003', '19660717 201001 1 003', 'Surabaya', '7/17/1966', 'NIP', 'AGUS SUNARYO', 8, 14, 115, '1/1/2018', '8/1/2024', 1),
(106, '197402072008011013', '19740207 200801 1 013', 'Surabaya', '2/7/1974', 'NIP', 'TAUFIK HIDAYAT. S.H.', 9, 14, 115, '1/1/2018', '3/1/2032', 1),
(107, '197205301993032006', '19720530 199303 2 006', 'Surabaya', '5/30/1972', 'NIP', 'ERNI WIDIARTI', 12, 14, 116, '1/2/2023', '6/1/2032', 2),
(108, '196607071991031013', '19660707 199103 1 013', 'Ambon', '7/7/1966', 'NIP', 'MARHAENRY MATHEUS YANI', 11, 14, 116, '1/2/2023', '8/1/2024', 2),
(109, '196606301990032010', '19660630 199003 2 010', 'Surabaya', '6/30/1966', 'NIP', 'ERNA DIAH AKRIYANTI. S.Sos.', 12, 14, 117, '4/4/2022', '7/1/2024', 1),
(110, '199502262022041001', '19950226 202204 1 001', 'Pasuruan', '2/26/1995', 'NIP', 'ADI DWI CAHYONO. A.Md.Kom.', 7, 14, 118, '4/1/2022', '3/1/2053', 5),
(111, '199302242019031005', '19930224 201903 1 005', 'Surabaya', '2/24/1993', 'NIP', 'BOBBY KRISTYA NARESWARA. S.Kom.', 10, 14, 119, '3/1/2019', '3/1/2051', 5),
(112, '198012152002121003', '19801215 200212 1 003', 'Surabaya', '12/15/1980', 'NIP', 'RUDY KURNIAWAN. S.T.', 11, 14, 120, '1/2/2023', '1/1/2039', 1),
(113, '197810242008012009', '19781024 200801 2 009', 'Banyuwangi', '10/24/1978', 'NIP', 'ANNY FARIZAH', 8, 14, 127, '1/1/2018', '11/1/2036', 3),
(114, '197401092008011008', '19740109 200801 1 008', 'Surabaya', '1/9/1974', 'NIP', 'EDY MUGI BASUKI', 8, 14, 127, '1/1/2018', '2/1/2032', 2),
(115, '196608011997031002', '19660801 199703 1 002', 'Surabaya', '8/1/1966', 'NIP', 'EDY MULYONO. S.H.', 11, 14, 127, '4/4/2022', '9/1/2024', 2),
(116, '197812282009011002', '19781228 200901 1 002', 'Sidoarjo', '12/28/1978', 'NIP', 'FURQON HIDAYAT', 8, 14, 127, '3/2/2021', '1/1/2037', 2),
(117, '196611291996021001', '19661129 199602 1 001', 'Surabaya', '11/29/1966', 'NIP', 'HERI DWI OETOJO. S.E.', 11, 14, 127, '4/4/2022', '12/1/2024', 2),
(118, '197406202008011011', '19740620 200801 1 011', 'Surabaya', '6/20/1974', 'NIP', 'M. DHAIMUL KHAROMIN', 8, 14, 127, '1/1/2018', '7/1/2032', 2),
(119, '198205142009022001', '19820514 200902 2 001', 'Surabaya', '5/14/1982', 'NIP', 'MILA ASTRIANA. S.Sos.', 12, 14, 127, '7/1/2019', '6/1/2040', 1),
(120, '197201131992031003', '19720113 199203 1 003', 'Surabaya', '1/13/1972', 'NIP', 'MOEDJIANTO', 8, 14, 127, '1/1/2018', '2/1/2030', 1),
(121, '198410102010011003', '19841010 201001 1 003', 'Bangkalan', '10/10/1984', 'NIP', 'SAIFUL ANWAR', 6, 14, 127, '1/1/2018', '11/1/2042', 1),
(122, '196703021993021002', '19670302 199302 1 002', 'Surabaya', '3/2/1967', 'NIP', 'SAMSUL HADI', 0, 14, 127, '1/1/2018', '4/1/2025', 3),
(123, '196805132009011004', '19680513 200901 1 004', 'Jombang', '5/13/1968', 'NIP', 'SUPARTO', 6, 14, 127, '1/1/2018', '6/1/2026', 1),
(124, '197304112007012008', '19730411 200701 2 008', 'Nganjuk', '4/11/1973', 'NIP', 'UMI SUSILARINI', 9, 14, 127, '1/1/2018', '5/1/2031', 3),
(125, '196905132008011013', '19690513 200801 1 013', 'Surabaya', '5/13/1969', 'NIP', 'FADIL', 6, 14, 128, '1/1/2018', '6/1/2027', 1),
(126, '197403251998031006', '19740325 199803 1 006', 'Surabaya', '3/25/1974', 'NIP', 'MUCH HUFRON', 7, 14, 128, '1/1/2018', '4/1/2032', 1),
(127, '196602011989031018', '19660201 198903 1 018', 'Surabaya', '2/1/1966', 'NIP', 'NURHADI', 10, 14, 130, '1/2/2019', '3/1/2024', 1),
(129, '114130619960820226847', '114-13061996-082022-6847', 'Sidoarjo', '6/13/1996', 'NIPTT-PK', 'GENTA MANDASTANA LAZUARDI', 0, 15, 131, '-', '-', 5),
(130, '114040819850120091524', '114-04081985-012009-1524', 'Surabaya', '8/4/1985', 'NIPTT-PK', 'AUDI LAKSMANA. S.I.Kom.', 0, 15, 132, '-', '-', 2),
(131, '114240519870120231619', '114-24051987-012023-1619', 'Surabaya', '5/24/1987', 'NIPTT-PK', 'VICKY MEIDI SAPUTRA. S.S.. M.M.', 0, 15, 132, '-', '-', 2),
(132, '1141201199608202210151', '114-12011996-082022-10151', 'Sidoarjo', '1/12/1996', 'NIPTT-PK', 'YANU ARIF BUDIMAN', 0, 15, 132, '-', '-', 2),
(133, '114190719790120091522', '114-19071979-012009-1522', 'Surabaya', '7/19/1979', 'NIPTT-PK', 'SUKMA SUSILAWATI. S.Sos.', 0, 15, 133, '-', '-', 1),
(134, '114260419910120233595', '114-26041991-012023-3595', 'Surabaya', '4/26/1991', 'NIPTT-PK', 'RIZKI PRAKASA. S.E.. M.M.', 0, 15, 134, '-', '-', 1),
(135, '114220119690120101525', '114-22011969-012010-1525', 'Blitar', '1/22/1969', 'NIPTT-PK', 'ANANG SETYAWAN. S.T.', 0, 15, 135, '-', '-', 5),
(136, '114291019960820226829', '114-29101996-082022-6829', 'Surabaya', '10/29/1996', 'NIPTT-PK', 'LUTHFI ADITYA WARDANA', 0, 15, 135, '-', '-', 5),
(137, '114100619930720209001', '114-10061993-072020-9001', 'Kediri', '6/10/1993', 'NIPTT-PK', 'ROBERT SHARLY SUTOMO. S.Pd.', 0, 15, 135, '-', '-', 5),
(138, '114150419950220178591', '114-15041995-022017-8591', 'Surabaya', '4/15/1995', 'NIPTT-PK', 'FARAH DEVI ISNANDA. S.ST.', 0, 15, 136, '-', '-', 4),
(139, '114010519910720217099', '114-01051991-072021-7099', 'Magetan', '5/1/1991', 'NIPTT-PK', 'WIDY DARMADI. S.SI.', 0, 15, 136, '-', '-', 6),
(140, '114070719960220211709', '114-07071996-022021-1709', 'Surabaya', '7/7/1996', 'NIPTT-PK', 'ANDIKA AMIRULHAQI. S.T.', 0, 15, 137, '-', '-', 1),
(141, '114270519800120091512', '114-27051980-012009-1512', 'Surabaya', '5/27/1980', 'NIPTT-PK', 'ARIS EFFENDI. S.Sos.', 0, 15, 137, '-', '-', 2),
(142, '114220319940520189790', '114-22031994-052018-9790', 'Sumenep', '3/22/1994', 'NIPTT-PK', 'BRILLIANTANA ANUGRAH. S.Kom.. M.M.', 0, 15, 137, '-', '-', 4),
(143, '114090719930220211711', '114-09071993-022021-1711', 'Malang', '7/9/1993', 'NIPTT-PK', 'HARRY PUTERA PAMUNGKAS. S.S.', 0, 15, 137, '-', '-', 3),
(144, '114190619840120173835', '114-19061984-012017-3835', 'Ponorogo', '6/19/1984', 'NIPTT-PK', 'HENY KUSUMANINGSIH. S.E.', 0, 15, 137, '-', '-', 3),
(145, '114160919750120061505', '114-16091975-012006-1505', 'Surabaya', '9/16/1975', 'NIPTT-PK', 'PUNGKY SETIAWAN. S.E.', 0, 15, 137, '-', '-', 3),
(146, '114140919820220211647', '114-14091982-022021-1647', 'Surabaya', '9/14/1982', 'NIPTT-PK', 'SEPTO GUNDAH PIJATMOKO. S.E.', 0, 15, 137, '-', '-', 4),
(147, '114060319680120091518', '114-06031968-012009-1518', 'Lamongan', '3/6/1968', 'NIPTT-PK', 'SUPARNO. S.S.', 0, 15, 137, '-', '-', 3),
(148, '114060419970620213842', '114-06041997-062021-3842', 'Kediri', '4/6/1997', 'NIPTT-PK', 'YUDHISTIRA IRAWAN. S.M.', 0, 15, 137, '-', '-', 6),
(149, '1140912199208202210071', '114-09121992-082022-10071', 'Surabaya', '12/9/1992', 'NIPTT-PK', 'ANUGRAH ARDIANSYAH', 0, 15, 138, '-', '-', 1),
(150, '114110519740120081508', '114-11051974-012008-1508', 'Surabaya', '5/11/1974', 'NIPTT-PK', 'WALUYO HERASIA', 0, 15, 139, '-', '-', 1),
(151, '114290919910820226820', '114-29091991-082022-6820', 'Sidoarjo', '9/29/1991', 'NIPTT-PK', 'NICO PRATOMO', 0, 15, 140, '-', '-', 1),
(152, '114050119800120091511', '114-05011980-012009-1511', 'Jakarta', '1/5/1980', 'NIPTT-PK', 'ACHMAD MUHADJIR. S.Sos.', 0, 15, 141, '-', '-', 2),
(153, '114060819970920228947', '114-06081997-092022-8947', 'Surabaya', '8/6/1997', 'NIPTT-PK', 'SYAHNIA ALIFIYANDINI', 0, 15, 141, '-', '-', 2),
(154, '114121219860120141528', '114-12121986-012014-1528', 'Surabaya', '12/12/1986', 'NIPTT-PK', 'DESI PANCA INDRA', 0, 15, 142, '-', '-', 2),
(155, '114121119690120091516', '114-12111969-012009-1516', 'Sragen', '11/12/1969', 'NIPTT-PK', 'GATOT DWI SASONGKO. S.E.', 0, 15, 142, '-', '-', 2),
(156, '114080319840120091514', '114-08031984-012009-1514', 'Jombang', '3/8/1984', 'NIPTT-PK', 'MUHAMAD KHOIRUL RIJAL. S.Sos. M.Sosio.', 0, 15, 142, '-', '-', 2),
(157, '114210519730120091523', '114-21051973-012009-1523', 'Surabaya', '5/21/1973', 'NIPTT-PK', 'MUHAMMAD. S.S.', 0, 15, 142, '-', '-', 2),
(158, '114030720020420225943', '114-03072002-042022-5943', 'Surabaya', '7/3/2002', 'NIPTT-PK', 'RAFLI MUSERE', 0, 15, 142, '-', '-', 2),
(159, '114300719940820226830', '114-30071994-082022-6830', 'Surabaya', '7/30/1994', 'NIPTT-PK', 'VIVIN MUJANAH', 0, 15, 142, '-', '-', 2),
(160, '114230419910420225075', '114-23041991-042022-5075', 'Sidoarjo', '4/23/1991', 'NIPTT-PK', 'WAHYU AMRULLOH. S.Pd.', 0, 15, 143, '-', '-', 2),
(161, '114010219980420223745', '114-01021998-042022-3745', 'Surabaya', '2/1/1998', 'NIPTT-PK', 'VEBRINA ARI SANTI. S.H.', 0, 15, 144, '-', '-', 1),
(162, '114080819880120173840', '114-08081988-012017-3840', 'Madiun', '8/8/1988', 'NIPTT-PK', 'AGUS MARYONO', 0, 15, 145, '-', '-', 1),
(163, '114101219950620221328', '114-10121995-062022-1328', 'Sumenep', '12/10/1995', 'NIPTT-PK', 'ALMIRA DITA', 0, 15, 145, '-', '-', 6),
(164, '1142012199604202210017', '114-20121996-042022-10017', 'Surabaya', '12/20/1996', 'NIPTT-PK', 'ANASTASYA ANINDITA. S.M.', 0, 15, 145, '-', '-', 4),
(165, '114080119901020168100', '114-08011990-102016-8100', 'Madiun', '1/8/1990', 'NIPTT-PK', 'ANGELA ANGGI RANASTIANIS. S.Kom.', 0, 15, 145, '-', '-', 3),
(166, '114290719810120231628', '114-29071981-012023-1628', 'Surabaya', '7/29/1981', 'NIPTT-PK', 'ARIF RIYADI. S.E.', 0, 15, 145, '-', '-', 1),
(167, '114010419840120173841', '114-01041984-012017-3841', 'Surabaya', '4/1/1984', 'NIPTT-PK', 'ARIP YUDIANTO', 0, 15, 145, '-', '-', 1),
(168, '114081219860920228774', '114-08121986-092022-8774', 'Surabaya', '12/8/1986', 'NIPTT-PK', 'DODY CAHYANTO PUTRO. S.E.', 0, 15, 145, '-', '-', 5),
(169, '114270919960620222072', '114-27091996-062022-2072', 'Sidoarjo', '9/27/1996', 'NIPTT-PK', 'FARAH FATHATI NURIYANA', 0, 15, 145, '-', '-', 3),
(170, '114300919700120173839', '114-30091970-012017-3839', 'Surabaya', '9/30/1970', 'NIPTT-PK', 'HARI BUDIMAN', 0, 15, 145, '-', '-', 3),
(171, '114251119900420195369', '114-25111990-042019-5369', 'Pamekasan', '11/25/1990', 'NIPTT-PK', 'HERA FIRDHAUSA KATILI. S.T.', 0, 15, 145, '-', '-', 6),
(172, '114170119781020051502', '114-17011978-102005-1502', 'Surabaya', '1/17/1978', 'NIPTT-PK', 'IMAM SUHARTOYO', 0, 15, 145, '-', '-', 1),
(173, '114241219800120173843', '114-24121980-012017-3843', 'Surabaya', '12/24/1980', 'NIPTT-PK', 'IMAM SUPII', 0, 15, 145, '-', '-', 1),
(174, '114170419890620220859', '114-17041989-062022-0859', 'Surabaya', '4/17/1989', 'NIPTT-PK', 'MAHFUD TRI UTOMO', 0, 15, 145, '-', '-', 2),
(175, '114040519880620220840', '114-04051988-062022-0840', 'Surabaya', '5/4/1988', 'NIPTT-PK', 'MEIDIYANTO PRASASTIYONO', 0, 15, 145, '-', '-', 4),
(176, '114231119880620222459', '114-23111988-062022-2459', 'Surabaya', '10/23/1988', 'NIPTT-PK', 'MUHAMMAD ALYAN MAULANA', 0, 15, 145, '-', '-', 5),
(177, '114241119940120173847', '114-24111994-012017-3847', 'Surabaya', '11/24/1994', 'NIPTT-PK', 'MUHAMMAD ZAZULI YUSUF. S.H.', 0, 15, 145, '-', '-', 5),
(178, '114110319880120173836', '114-11031988-012017-3836', 'Sidoarjo', '3/11/1988', 'NIPTT-PK', 'NUR CHOTIMAH. S.M.', 0, 15, 145, '-', '-', 1),
(179, '114230519710620051503', '114-23051971-062005-1503', 'Kediri', '5/23/1971', 'NIPTT-PK', 'PRIYO JATMIKO', 0, 15, 145, '-', '-', 1),
(180, '114240419800120091521', '114-24041980-012009-1521', 'Sumenep', '4/24/1980', 'NIPTT-PK', 'RAHMAD HARTONO. S.Pd.', 0, 15, 145, '-', '-', 1),
(181, '114061219800120091515', '114-06121980-012009-1515', 'Surabaya', '12/6/1980', 'NIPTT-PK', 'RENNY LESTANI SUSANTY. S.I.Kom.', 0, 15, 145, '-', '-', 6),
(182, '114221019960920228962', '114-22101996-092022-8962', 'Sidoarjo', '10/22/1996', 'NIPTT-PK', 'RETNO WULANDARI', 0, 15, 145, '-', '-', 2),
(183, '114190419880120173838', '114-19041988-012017-3838', 'Pamekasan', '4/19/1988', 'NIPTT-PK', 'RUNA FERRI SANJAYA', 0, 15, 145, '-', '-', 1),
(184, '114020919660120173844', '114-02091966-012017-3844', 'Pacitan', '9/2/1966', 'NIPTT-PK', 'SARWANDI', 0, 15, 145, '-', '-', 1),
(185, '114141019710120091517', '114-14101971-012009-1517', 'Sidoarjo', '10/14/1971', 'NIPTT-PK', 'SITI FATONAH', 0, 15, 145, '-', '-', 1),
(186, '114250919780120091520', '114-25091978-012009-1520', 'Malang', '9/25/1978', 'NIPTT-PK', 'SRI LESTARI. S.Kom.', 0, 15, 145, '-', '-', 1),
(187, '114240419780120101526', '114-24041978-012010-1526', 'Kediri', '4/24/1978', 'NIPTT-PK', 'SUKARDI', 0, 15, 145, '-', '-', 6),
(189, '', '', '', '', 'NIK', 'PAULUS ADHATA', 0, 16, 150, '-', '-', 4),
(190, '', '', '', '', 'NIK', 'JEMMIMA ADAM BINTANG LASAPU', 0, 16, 152, '-', '-', 1),
(191, '', '', '', '', 'NIK', 'TRYATMOKO WASIS', 0, 16, 148, '-', '-', 2),
(192, '', '', '', '', 'NIK', 'RYANDA RAMADHAN', 0, 16, 149, '-', '-', 2),
(193, '', '', '', '', 'NIK', 'QINTIA ANJANI', 0, 16, 151, '-', '-', 4),
(194, '', '', '', '', 'NIK', 'YUDHISTIRA DWINDRADI', 0, 16, 148, '-', '-', 0),
(195, '', '', '', '', 'NIK', 'ALDICKE ACHSAN A', 0, 16, 149, '-', '-', 0),
(196, '', '', '', '', 'NIK', 'NIA SARI', 0, 16, 151, '-', '-', 4),
(197, '', '', '', '', 'NIK', 'FAJAR HELMAWAN', 0, 16, 151, '-', '-', 4),
(198, '', '', '', '', 'NIK', 'GHORAPURLA ADI', 0, 16, 150, '-', '-', 4),
(200, '', '', '', '', 'NIK', 'DHINDA INDRI WIJAYANTI', 0, 17, 153, '-', '-', 1),
(201, '', '', '', '', 'NIK', 'SHONYA ASTRIDA SANJAYA', 0, 17, 153, '-', '-', 1),
(202, '', '', '', '', 'NIK', 'MEGAZADE NOVRINA PARAMITHA', 0, 17, 153, '-', '-', 5),
(203, '', '', '', '', 'NIK', 'ACHMAD AGUNG KURNIAWAN', 0, 17, 153, '-', '-', 0),
(204, '', '', '', '', 'NIK', 'SULTAN JAELANI', 0, 17, 153, '-', '-', 0),
(205, '', '', '', '', 'NIK', 'SHELLY AMALIA', 0, 17, 153, '-', '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_spt`
--

CREATE TABLE `tb_spt` (
  `id_surat` int(11) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `id_pegawai_pembuat` int(11) NOT NULL,
  `keperluan_surat` varchar(255) NOT NULL,
  `id_user_ttd` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_spt_pegawai`
--

CREATE TABLE `tb_spt_pegawai` (
  `id_spt` int(11) NOT NULL,
  `code_surat` varchar(255) NOT NULL,
  `id_spt_bidang` int(11) NOT NULL,
  `no_spt` varchar(50) NOT NULL,
  `tanggal_spt` date NOT NULL,
  `untuk` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `id_ttd` bigint(50) DEFAULT NULL,
  `id_user_pembuat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_spt_pegawai`
--

INSERT INTO `tb_spt_pegawai` (`id_spt`, `code_surat`, `id_spt_bidang`, `no_spt`, `tanggal_spt`, `untuk`, `tujuan`, `alamat`, `waktu`, `id_ttd`, `id_user_pembuat`) VALUES
(14, 'lbZ4GzNhpAOSIgiUWT6f7DBm9QcXuwjV8Ps3oyYrkJLKMEeCRavd5H2tqx1Fn', 3, '094/123/114.1/2022', '2023-10-19', 'Mengikuti Rapat Teknis Pengelolaan Arsip Statis', 'Tujuan', 'Aston Sidoarjo City Hotel\r\n&amp; Conference Center , Jl. Kahuripan Raya No. 14, Sidoarjo', 'tanggal 20 Juni 2023 .', 197508051998032002, '0'),
(15, 'db1knq8G7ixHJmXg9MyS4rNLvAVjzYWauZ6lQc2CpRwP5sEIDT3hBFfeKotUO', 2, '123', '2023-10-31', 'q', 'q', 'q', 'q', 197305061998021001, '196902141988031002');

-- --------------------------------------------------------

--
-- Table structure for table `tb_spt_personil`
--

CREATE TABLE `tb_spt_personil` (
  `id_spt_user` int(11) NOT NULL,
  `code_surat` varchar(255) NOT NULL,
  `id_user` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_spt_personil`
--

INSERT INTO `tb_spt_personil` (`id_spt_user`, `code_surat`, `id_user`) VALUES
(3, 'yMuFfAvT3214GO8LPalRxH9oECp5eDbwdc7BSImtrz6VjhKUkqJsXQgZYiNWn', 197508051998032002),
(7, 'OSB7CYKpf58taj3F4hPdgzlQeiTJAMX9LV1HmDsENIRyuvkx6rZGbqw2noUWc', 196703131989031008),
(8, 'OSB7CYKpf58taj3F4hPdgzlQeiTJAMX9LV1HmDsENIRyuvkx6rZGbqw2noUWc', 198603062019031005),
(10, 'ZxFrW7XKTvMe8Nu2G4oYOj39mIizDyHnPwRSlbshUgQAVqpd5JEfB6katc1CL', 198603062019031005),
(11, 'ZxFrW7XKTvMe8Nu2G4oYOj39mIizDyHnPwRSlbshUgQAVqpd5JEfB6katc1CL', 196703131989031008),
(15, 'ZxFrW7XKTvMe8Nu2G4oYOj39mIizDyHnPwRSlbshUgQAVqpd5JEfB6katc1CL', 196902141988031002),
(16, 'lbZ4GzNhpAOSIgiUWT6f7DBm9QcXuwjV8Ps3oyYrkJLKMEeCRavd5H2tqx1Fn', 198303312010012009),
(17, 'lbZ4GzNhpAOSIgiUWT6f7DBm9QcXuwjV8Ps3oyYrkJLKMEeCRavd5H2tqx1Fn', 197910242009012002),
(19, 'lbZ4GzNhpAOSIgiUWT6f7DBm9QcXuwjV8Ps3oyYrkJLKMEeCRavd5H2tqx1Fn', 197906092009011004),
(22, 'db1knq8G7ixHJmXg9MyS4rNLvAVjzYWauZ6lQc2CpRwP5sEIDT3hBFfeKotUO', 197508051998032002),
(24, 'db1knq8G7ixHJmXg9MyS4rNLvAVjzYWauZ6lQc2CpRwP5sEIDT3hBFfeKotUO', 196902141988031002);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ttd`
--

CREATE TABLE `tb_ttd` (
  `id_ttd` int(11) NOT NULL,
  `id_pegawai` bigint(25) NOT NULL,
  `file_ttd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ttd`
--

INSERT INTO `tb_ttd` (`id_ttd`, `id_pegawai`, `file_ttd`) VALUES
(20, 197508051998032002, 'Tanda_Tangan_Mick_Schumacher.png'),
(21, 198202132011011010, 'ttdbarcode soal.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `req_surat_ijin`
--
ALTER TABLE `req_surat_ijin`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_bidang`
--
ALTER TABLE `tb_bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indexes for table `tb_dasar_spt`
--
ALTER TABLE `tb_dasar_spt`
  ADD PRIMARY KEY (`id_dasar_spt`);

--
-- Indexes for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tb_jabatan_jenis`
--
ALTER TABLE `tb_jabatan_jenis`
  ADD PRIMARY KEY (`id_jabatan_jenis`);

--
-- Indexes for table `tb_pangkat_golongan`
--
ALTER TABLE `tb_pangkat_golongan`
  ADD PRIMARY KEY (`id_pangkat_golongan`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_spt`
--
ALTER TABLE `tb_spt`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tb_spt_pegawai`
--
ALTER TABLE `tb_spt_pegawai`
  ADD PRIMARY KEY (`id_spt`);

--
-- Indexes for table `tb_spt_personil`
--
ALTER TABLE `tb_spt_personil`
  ADD PRIMARY KEY (`id_spt_user`);

--
-- Indexes for table `tb_ttd`
--
ALTER TABLE `tb_ttd`
  ADD PRIMARY KEY (`id_ttd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `req_surat_ijin`
--
ALTER TABLE `req_surat_ijin`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_dasar_spt`
--
ALTER TABLE `tb_dasar_spt`
  MODIFY `id_dasar_spt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_spt`
--
ALTER TABLE `tb_spt`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_spt_pegawai`
--
ALTER TABLE `tb_spt_pegawai`
  MODIFY `id_spt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_spt_personil`
--
ALTER TABLE `tb_spt_personil`
  MODIFY `id_spt_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_ttd`
--
ALTER TABLE `tb_ttd`
  MODIFY `id_ttd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
