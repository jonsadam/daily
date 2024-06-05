-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 03:15 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daily1`
--

-- --------------------------------------------------------

--
-- Table structure for table `ip_user`
--

CREATE TABLE `ip_user` (
  `id` int(11) NOT NULL,
  `Dept` varchar(255) NOT NULL,
  `User` varchar(255) NOT NULL,
  `IP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

------------------------------
-- Dumping data for table `ip_user`
--

INSERT INTO `ip_user` (`id`, `Dept`, `User`, `IP`) VALUES
(1, 'BIS DEV', 'PAK RIZAL', '192.168.20.18'),
(2, 'BIS DEV', 'NOVI', '192.168.28,107'),
(3, 'KOMISARIS', 'PAK YANTO', '192.168.30.97'),
(4, 'BLA', 'PAK ANTON', '192.168.20.41'),
(5, 'BLA', 'EUIS', '192.168.30.24'),
(6, 'BLA', 'DEDY', '192.168.30.40'),
(7, 'BLA', 'PAK AAN', '192.168.30.56'),
(8, 'BLA', 'TEH YUYUN', '192.168.30.34'),
(9, 'BLA', 'SHIHAB', '192,168,28,152'),
(10, 'CEO', 'PAK HENDRY', '192.168.20.31'),
(11, 'ECC', 'PAK UMAR', '192.168.20.35'),
(12, 'ECC', 'PRIMA', '192.168.20.21'),
(13, 'ECC', 'ELIZA', '192.168.30.90'),
(14, 'ECC', 'RUTHI', '192.168.30.42'),
(15, 'ECS', 'PAK RIYAN', '192.168.20.16'),
(16, 'ECS', 'MARETA', '192.168.30.9'),
(17, 'ECS', 'PAK KAMTO', '192.168.20.23'),
(18, 'ECS', 'PAK JEREMIA', '192.168.20.15'),
(19, 'ECS', 'DEDDY', '192.168.30.33'),
(20, 'EPD', 'PAK ISTIADJI', '192.168.20.29'),
(21, 'EPD', 'PAK HABIB', '192.168.20.22'),
(22, 'EPD', 'DIDIN', '192.168.20.20'),
(23, 'EUD', 'PAK ADRIAN', '192.168.20.19'),
(24, 'EUD', 'PAK DEDY', '192.168.20.26'),
(25, 'EUD', 'MIA', '192.168.30.32'),
(26, 'ESTATE', 'FITRI', '192.168.60.101'),
(27, 'ESTATE', 'TEDDY', '192.168.60.27'),
(28, 'ESTATE', 'PAK TASWAN', '192.168.60.28 / 111'),
(29, 'ESTATE', 'VERO', '192.168.60.33'),
(30, 'ESTATE', 'LENI / ANJAS', '192.168.60.26'),
(31, 'ESTATE', 'FEBBY / CS', '192.168.60.35'),
(32, 'ESTATE', 'CHRISTIN / CS', '192.168.60.30'),
(33, 'ESTATE', 'PAK CRHISTIAN', '192.168.60.22'),
(34, 'ESTATE', 'PAK THOHO', '192.168.60.99'),
(35, 'ESTATE', 'MAYA', '192.168.60.23'),
(36, 'ESTATE', 'PAK YUDI', '192.168.60.76'),
(37, 'ESTATE', 'PAK BINSAR', '192.168.60.75'),
(38, 'ESTATE', 'WILONA', '192.168.60.32'),
(39, 'ESTATE', 'PIPIT', '192.168.60.132'),
(40, 'INFRA', 'PAK TAUFIQ', '192.168.20.24'),
(41, 'INFRA', 'FACHRI', '192.168.20.13'),
(42, 'INFRA', 'PAK SYAIFUL', '192.168.20.27'),
(43, 'INFRA', 'DEDEK', '192.168.20.14'),
(44, 'FAC', 'PAK SALIM', '192.168.20.32'),
(45, 'FAC', 'LAPTOP FIN & ACC', '192.168.20.45'),
(46, 'FIN', 'Cl SANDRA', '192.168.30.49'),
(47, 'FIN', 'BUDI', '192.168.30.61'),
(48, 'FIN', 'FENNY', '192.168.30.70'),
(49, 'FIN', 'CI LENNI', '192.168.30.69'),
(50, 'FIN', 'TOMO', '192.168.30.99'),
(51, 'FIN', 'FATMA', '192.168.28.21'),
(52, '', '', ''),
(53, 'ACC', 'BU DWI', '192.168.28.147'),
(54, 'ACC', 'PAK DEKY', '192.168.30.28'),
(55, 'ACC', 'CAECILIA', '192.168.28,34'),
(56, 'ACC', 'NATALIA', '192.168.30.71'),
(57, 'ACC', 'NOVI', '192.168.28.170'),
(58, 'ACC', 'DHEA/fitri', '192.168.30.89'),
(59, 'ACC', 'SENO', '192.168.28.132'),
(60, 'GM', 'PAK RADJIN', '192.168.20.37'),
(61, 'HRD', 'JESSY', '192.168.30.234'),
(62, '', 'JESSICA', '192.168.29.39'),
(63, 'HRD', 'UCI', '192.168.30.20'),
(64, 'HRD', 'PRICILL', '192.168.30.30'),
(65, 'LEGAL', 'BU YANA', '192.168.30.11'),
(66, '', '', '192.168.20.36'),
(67, 'LEGAL', 'ARIE', '192.168.30.74'),
(68, 'LEGAL', 'DENNIS', '192.168.30.29'),
(69, 'LEGAL', 'EKHA', '192.168.30.21'),
(70, 'LEGAL', 'RIKI', '192.168.30.74'),
(71, 'LEGAL', 'ACHI / RYAN MAGANG', '192.168.30.82'),
(72, 'LEGAL', 'SUKMA', '192.168.30.48'),
(73, '', '', ''),
(74, 'Purcashing', 'Albert', ''),
(75, '', 'Andrian S', '192.168.30.182'),
(76, '', '', ''),
(77, 'DEPT', 'CCTV', 'IP'),
(78, 'IT', 'CCTV HO', ''),
(79, 'IT', 'CCTV MKT', '192.168.50.48'),
(80, 'IT', 'CCTV BLA', '192.168.30.235'),
(81, 'IT', 'CCTV MOB', '192.168.30.237'),
(82, '', '', ''),
(83, 'DEPT', 'CCTV', 'IP'),
(84, 'QC', 'PAK FAJAR', '192.168.110.58'),
(85, 'QC', 'PANDU', '192.168.30.238'),
(86, 'QC', 'RACHMAT', '192.168.30.219'),
(87, '', '', ''),
(88, 'IT', 'RADIO BLA', '192.168.30.6'),
(89, 'SAD', 'SUCI', '192.168.50.20'),
(90, 'SAD', 'BU ELS / LENI', '192.168.50.21'),
(91, 'SAD', 'INDRA', '192.168.50.22'),
(92, 'SAD', 'VERO', '192.168.50.23'),
(93, 'SAD', 'SITI', '192.168.50.24'),
(94, 'SAD', 'MARDIYAH-mia', '192.168.50.25'),
(95, 'SAD', 'ACI', '192.168.50.26'),
(96, 'SAD', 'DIAN', '192.168.50.250'),
(97, '', '', ''),
(98, 'SAD', 'NONI', '192.168.50.29'),
(99, 'SAD', 'BU WENNY', '192.168.50.31'),
(100, 'SAD', 'NONI', '192.168.50.29'),
(101, 'SAD', 'PAK LIBEL', '192.168.50.33'),
(102, 'SAD', 'LAPTOP SAD LAN', '192.168.50.238'),
(103, '', 'LAPTOP SAD WIFI', '192.168.50.239'),
(104, 'MKT', 'PC LUPITA', '192.168.50.37'),
(105, 'MKT', 'PC INDRA', '192.168.50.43'),
(106, 'MKT', 'PC DEPIT', '192.168.50.70'),
(107, 'MKT', 'LAPTOP PAK JERRY', '192.168.50.35'),
(108, 'MKT', 'LAPTOP ERRY', '192.168.50.61'),
(109, 'MKT', 'PC SALES 1', '192.168.50.45'),
(110, 'MKT', 'PC SALES 2', '192.168.50.82'),
(111, 'MKT', 'PC SALES 3', '192.168.50.83'),
(112, 'SALES', 'CPU SALES MKT', '192.168.50.45'),
(113, 'GM MKT', 'PAK HARRYS DELL SILVER', '192.168.50.34'),
(114, '', 'PAK HARRYS DELL DESKTOP-LHRNHT5', '192.168.50.221'),
(115, 'SM', 'BU MURNI', '192.168.50.55'),
(116, 'SM', 'MBA DIAN', '192.168.50.42'),
(117, 'SM', 'ELSA', '192.168.50.121'),
(118, 'SM', 'PAK RYMOND', '192.168.50.200'),
(120, 'DEPT', 'PRINTER', 'IP'),
(121, 'IT', 'PRINTER CANON PIXMA A3 EPD', '192.168.30.227'),
(122, 'IT', 'PRINTER EPSON L120 ECS', '192.168.30.228'),
(123, 'IT', 'PRINT SERVER LQ-2810 - FAC', '192.168.30.224'),
(124, 'IT', 'PRINT LX-310 FAC', '192.168.30.225'),
(125, 'IT', 'PRINTER NETWORK LASERJET P1606DN - IT', '192.168.30.185'),
(128, 'MARKOM', 'ADE', '192.168.50.234'),
(130, 'MARKOM', 'RENDI', '192.168.50.182'),
(132, 'IT', 'SERVER IFCA', '192.168.30.26'),
(133, 'IT', 'SERVER PDC (SHARE FOLDER X)', '192.168.30.3'),
(134, 'IT', 'SERVER SCAN dan WEB REPORT', '192.168.30.7'),
(135, 'IT', 'SERVER HIS & LAMS', '192.168.30.78'),
(136, 'IT', 'NAS QNAP BACKUP', '192.168.30.12'),
(137, 'IT', 'NAS SYNOLOGY BACKUP', '192.168.30.254'),
(139, 'DEPT', 'FINGERPRINT', 'IP'),
(141, 'IT', 'FINGER PRINT HO', '192.168.30.201'),
(142, 'IT', 'FINGER PRINT POS SECURITY HO', '192.168.30.107'),
(143, 'IT', 'FINGER PRINT MKT', '192.168.50.51'),
(144, 'IT', 'FINGER PRINT CHIEF SECURITY (@MKT)', '192.168.50.200'),
(145, 'IT', 'FINGER PRINT ESTATE', '192.168.60.41'),
(147, 'DEPT', 'PHOTOCOPY', 'IP'),
(148, 'IT', 'FOTOCOPY - MKT & SAD', '192.168.50.47'),
(149, 'IT', 'FOTOCOPY - L3', '192.168.30.221'),
(150, 'IT', 'FOTOCOPY - L2', '192.168.30.222'),
(151, 'IT', 'FOTOCOPY - BLA', '192.168.30.226'),
(152, 'IT', 'FOTOCOPY - ESTATE', '192.168.60.60'),
(153, 'IT', 'FOTOCOPY - LEGAL 1', '192.168.30.236'),
(154, 'IT', 'FOTOCOPY - LEGAL 2', '192.168.30.237');

-- --------------------------------------------------------

----------------------------------------
-- Table structure for table `list_email` --
----------------------------------------

CREATE TABLE `list_email` (
  `id` int(11) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--------------------------------------
-- Dumping data for table `list_email` --
--------------------------------------

INSERT INTO `list_email` (`id`, `Department`, `Email`, `Nama`) VALUES
(1, 'Department', 'Email', 'Nama'),
(2, 'MANAGEMENT', 'sujanto.handoko@harvestcity.com', 'SUJANTO HANDOKO'),
(3, 'BUSDEV', 'rizal@harvestcity.com', 'ACHMAD RIZAL NAZARUDDIN'),
(4, 'BUSDEV', 'novi@harvestcity.com', 'KARUNIA NOVIA AYU S'),
(5, 'QC', 'fajar.hasbillah@harvestcity.com', 'FAJAR HASBILLAH'),
(6, 'QC', 'pandu.nur@harvestcity.com', 'Pandu Nur Rahman'),
(7, 'QC', 'rachmat.surya@harvestcity.com', 'Rachmat Surya Ghazali Nasution'),
(8, 'FAC', 'salim@harvestcity.com', 'SALIM'),
(9, 'FAC', 'sandra.angelina@harvestcity.com', 'SANDRA ANGELINA'),
(10, 'FAC', 'dwinanti@harvestcity.com', 'DWI NANTI HAPSARI'),
(11, 'FAC', 'deky.riyanto@harvestcity.com', 'DEKY RIYANTO'),
(12, 'FAC', 'fatma@harvestcity.com', 'FATMA HANDAYANI'),
(13, 'FAC', 'caecilia.ivane@harvestcity.com', 'CAECILIA IVANE KISLEW'),
(14, 'FAC', 'fenny@harvestcity.com', 'FENNY WULANDARI'),
(15, 'FAC', 'seno@harvestcity.com', 'SIMSON ADE SUSENO'),
(16, 'FAC', 'ungut.utomo@harvestcity.com', 'UNGUT UTOMO'),
(17, 'FAC', 'novi.rahajeng@harvestcity.com', 'NOVI FRANSISCA RAHAJENG'),
(18, 'FAC', 'fambudy@harvestcity.com', 'GUSTIAN FAMBUDY'),
(19, 'PURCHASING', 'andrians@harvestcity.com', 'ANDRIAN SAPUTRA'),
(20, 'ECS', 'eriyanto@harvestcity.com', 'EVI RIYANTO'),
(21, 'ECS', 'ecs@harvestcity.com', 'MARETA INDAH PERMATA PUTRI'),
(22, 'ECS', '', 'MOCHAMMAD FACHRI MULYANA'),
(23, 'ECS', '', 'ADITYA ZAKI SEPTIAWAN'),
(24, 'ECS', 'krispian.anjas@harvestcity.com', 'KRISPIAN ANJAS'),
(25, 'ECS', '', 'ANTONI ANDRIYANTO'),
(26, 'ECS', '', ''),
(27, 'ECS', '', 'DENI KUSNANDAR ACHMAD ST'),
(28, 'ECS', 'agung.wisnu@harvestcity.com', 'AGUNG WISNU WARDHANA'),
(29, 'ECS', '', 'RYAN MUHAMAD AKBAR'),
(30, 'EPD', 'habib.munawar@harvestcity.com', 'U. HABIB SOLEH MUNAWAR'),
(31, 'EPD', 'alifpurwati@harvestcity.com', 'ALIF PURWATI ISTIKASARI'),
(32, 'EPD', 'taufik.alfian@harvestcity.com', 'TAUFIK ALFIAN'),
(33, 'EUD', 'adrian@harvestcity.com', 'STEVANUS ADRIAN'),
(34, 'HRGA', 'lienasari.puspita@harvestcity.com', 'LIENA PUSPITASARI'),
(35, 'HRGA', 'recruitment@harvestcity.com', ''),
(36, 'HRGA', 'recruitment@harvestcity.com', 'JESSY THERESIA'),
(37, 'HRGA', 'jessica@harvestcity.com', 'JESSICA NILAWATI'),
(38, 'HRGA', 'hga@harvestcity.com', 'SHELLA APRIANTI SUCI'),
(39, 'HRGA', '', 'RATNA MARDIANA'),
(40, 'HRGA', '', 'SUYADI'),
(41, 'HRGA', '', 'ABDUL ROHIM'),
(42, 'HRGA', '', 'FUADI MUHAMMAD NUR'),
(43, 'HRGA', '', 'EKO BAMBANG J.'),
(44, 'HRGA', '', 'IMAM ZAINI'),
(45, 'HRGA', '', 'KEMAN'),
(46, 'HRGA', '', 'SUHERMANTO'),
(47, 'IT', 'jimmy.antonio@harvestcity.com', 'JIMMY ANTONIO'),
(48, 'IT', 'agung.hartono@harvestcity.com', 'AGUNG HARTONO'),
(49, 'IT', 'adam.abdillah@harvestcity.com', 'ADAM ABDILLAH'),
(50, 'IT', 'prasetyo.budi@harvestcity.com', 'PRASETYO'),
(51, 'ECC', 'yuni.karmilasari@harvestcity.com', 'YUNI KARMILA SARI'),
(52, 'ECC', 'umarkadafi@harvestcity.com', 'UMAR KADAFI'),
(53, 'ECC', 'prima@harvestcity.com', 'PRIMA NURIYAN SAPUTRA'),
(54, 'ECC', 'eliza@harvestcity.com', 'ELIZA MEGA KURNIA'),
(55, 'ECC', 'ruthy@harvestcity.com', 'RUTHY JUWITA SAPUTRI'),
(56, '', '', ''),
(57, 'LEGAL', 'yana@harvestcity.com', 'HARI IKADEWI YANANTI'),
(58, 'LEGAL', 'legal@harvestcity.com', 'DENNIS MARVIN'),
(59, 'LEGAL', 'legal@harvestcity.com', 'RICKY RAMADHAN'),
(60, 'LEGAL', 'legal@harvestcity.com', 'EKA NUR PRASETYA'),
(61, 'LEGAL', 'indra@harvestcity.com', 'Y. Y. INDRA WIDYANTORO'),
(62, '', '', ''),
(63, 'BLA', 'aan.rubiatman@harvestcity.com', 'AAN RUBIATMAN'),
(64, 'BLA', 'eka.kurniawan@harvestcity.com', 'EKA SAPUTRA KURNIAWAN'),
(65, 'BLA', 'euis.rahmawati@harvestcity.com', 'EUIS RAHMAWATI'),
(66, 'BLA', '', 'MAMAT R. HIDAYAT'),
(67, 'BLA', '', 'MUHAMAD ENDANG JARKASIH'),
(68, 'BLA', '', 'SIDIK RISMAN'),
(69, 'BLA', '', 'SIHABUDIN'),
(70, 'BLA', 'nindya.febrina@harvestcity.com', 'Nindya Febrina Nurhapsari'),
(71, 'BLA', 'yuyun.yuningsih@harvestcity.com', 'YUYUN YUNINGSIH'),
(72, 'ESTATE', 'redial@harvestcity.com', 'REDIAL MIKOLOGI'),
(73, 'ESTATE', '', 'AJI'),
(74, 'ESTATE', '', 'ARIF HERMAWAN'),
(75, 'ESTATE', 'christin.tamba@harvestcity.com', 'CHRISTIN NATALIA TAMBA'),
(76, 'ESTATE', '', 'DEDEN DAENURI'),
(77, 'ESTATE', '', 'ERRY SHANJAYA'),
(78, 'ESTATE', '', 'FEBRYAN DHAMASTIN'),
(79, 'ESTATE', '', 'INDRA SAPUTRA'),
(80, 'ESTATE', 'fitri.nurcahyani@harvestcity.com', 'FITRI NUR CAHYANI'),
(81, 'ESTATE', 'krispian.anjas@harvestcity.com', 'KRISPIAN ANJAS'),
(82, 'ESTATE', 'leni.marlina@harvestcity.com', 'LENI MARLINA'),
(83, 'ESTATE', '', 'MAAT'),
(84, 'ESTATE', '', 'MARDIAN MISDI'),
(85, 'ESTATE', '', 'PATRISIUS BINSAR'),
(86, 'ESTATE', 'taswan@harvestcity.com', 'WAWAN TASWAN'),
(87, 'SALES ', 'roni.yohanes@harvestcity.com', 'HYRONIMUS YOHANES'),
(88, 'SALES ', 'elsa.florensia@harvestcity.com', 'ELSA FLORENSIA'),
(89, 'SALES ', 'aang@harvestcity.com', 'AANG SAMIAN'),
(90, 'SALES ', '', 'ADE KAMALUL ZAMAN'),
(91, 'SALES ', 'ajeng.gutami@harvestcity.com', 'AJENG GUTAMI WAHYUNINGTYAS'),
(92, 'SALES ', 'asep.nawawi@harvestcity.com', 'ASEP MAHMUD NAWAWI'),
(93, 'SALES ', 'dhike.chandrawati@harvestcity.com', 'DHIKE KURNIA CANDRAWATI'),
(94, 'SALES ', '', 'ADE RAHMAT HIDAYAT'),
(95, 'SALES ', 'dita.purwanty@harvestcity.com', 'DITA AYU PURWANTY'),
(96, 'SALES ', 'ferry.sumarauw@harvestcity.com', 'FERRY SUMARAUW'),
(97, 'SALES ', 'hakim.baihaqi@harvestcity.com', 'HAKIM BAIHAQI'),
(98, 'SALES ', 'herinaldi@harvestcity.com', 'HERINALDI MUCHTAR'),
(99, 'SALES ', 'ita.febriyanti@harvestcity.com', 'ITA FEBRIYANTI'),
(100, 'SALES ', 'juliyati@harvestcity.com', 'JULIYATI'),
(101, 'SALES ', 'dennyw@harvestcity.com', 'DENNY WAHYUDI'),
(102, 'SALES ', 'indzar.virmansyah@harvestcity.com', 'M INDZAR FIRMANSYAH'),
(103, 'SALES ', '', 'NANANG'),
(104, 'SALES ', 'naufal.fadli@harvestcity.com', 'NAUFAL NUR FADLI'),
(105, 'SALES ', 'rahajeng.octavia@harvestcity.com', 'RAHAJENG OCTAVIA SISWADI'),
(106, 'SALES ', 'rahmat.nuryadi@harvestcity.com', 'RAHMAT NURYADI'),
(107, 'SALES ', 'ronaldi.pratama@harvestcity.com', 'RONALDI AGUSTI PRATAMA'),
(108, 'SALES ', 'selvi.handayani@harvestcity.com', 'SELVI PUSPITA'),
(109, 'SALES ', 'siska.ferlianty@harvestcity.com', 'SISKA FERLIANTY'),
(110, 'SALES ', 'sri.widiarsih@harvestcity.com', 'SRI RAHAYU TYAS WIDIASIH'),
(111, 'SALES ', 'william_hutapea@harvestcity.com', 'WILLIAM HUTAPEA'),
(112, 'SALES ', 'zen@harvestcity.com', 'TABRANI EL ZEIN'),
(113, 'SALES ', 'fransnp@harvestcity.com', 'FRANS NATA PASARIBU'),
(114, 'SALES ', 'zahara@harvestcity.com', 'ZAHARA'),
(115, 'SALES ', 'tirsa@harvestcity.com', 'TIRSA'),
(116, 'SALES ', 'teguh.maulana@harvestcity.com', 'Teguh Maulana'),
(117, '', '', ''),
(118, 'MARCOMM', 'ade.putra@harvestcity.com', 'Anastasya Frederika Latumanuwij'),
(119, 'MARCOMM', 'arfi.rizal@harvestcity.com', 'ARFI RIZAL'),
(120, 'MARCOMM', 'ratna.sari@harvestcity.com', 'RATNA SARI'),
(121, 'MARCOMM', 'afifa.nuriani@harvestcity.com', 'AFIFA NURIANI'),
(122, '', '', 'ADE'),
(123, 'SADM', 'lenny.cheng@harvestcity.com', 'LENNY'),
(124, 'SADM', 'dian@harvestcity.com', 'DIAN SETIAWATI'),
(125, 'SADM', 'mia@harvestcity.com', 'MIA ROSYANTI'),
(126, 'SADM', 'noni@harvestcity.com', 'NONI SAPUTRI'),
(127, 'SADM', 'libel@harvestcity.com', 'PULUNG LILI'),
(128, 'SADM', 'suci.listyorini@harvestcity.com', 'SUCI LISTYORINI');

-- --------------------------------------------------------

--
-- Table structure for table `task_daily`
--

CREATE TABLE `task_daily` (
  `id` int(11) NOT NULL,
  `Tanggal` date DEFAULT NULL,
  `Dept` varchar(255) NOT NULL,
  `User` varchar(255) NOT NULL,
  `Trouble` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Gambar` varchar(255) NOT NULL,
  `PIC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_daily`
--

INSERT INTO `task_daily` (`id`, `Tanggal`, `Dept`, `User`, `Trouble`, `Status`, `Gambar`, `PIC`) VALUES
(6, '2024-05-15', 'Dennis', 'Dennis', 'Dennis', 'Dennis', 'Dennis', 'Dennis'),
(7, '2024-05-15', 'Kapolda', 'Denis janciuk', 'Sakit pala', 'Done', 'http://localhost/daily/uploads/photos/7hvztw80clxs2up.jpeg', 'Prast'),
(8, '2024-05-15', 'aaaa', 'aaaa', 'aaaa', 'Done', 'http://192.168.28.42/daily/uploads/photos/vdw649bpzriyksx.png', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2024-08-15 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `id_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `Password`, `email`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `id_user`) VALUES
(2, 'agung', '$2y$10$SjIYmBwL5isv98aLOCYXNOzZuW7j3GEYldXo6nFO8ieJTRxw8tKT.', 'agung.hartono@harvestcity.com', 'http://192.168.28.42/daily/uploads/files/mdi4z1r9s32ebq5.png', NULL, NULL, '2024-05-16 12:06:26', 'd7723f87ca76ebd44b889200972ac67a', 'agung'),
(3, 'adam', '$2y$10$sDq4RJLJZJQzX0ebupzKN.KnCNjswWg50ZDD3k608GoGQHKiR5H1q', 'adamabdillahjanuar@gmail.com', 'http://localhost/daily/uploads/files/6ljz2a4i03smf_n.png', NULL, NULL, '2024-08-15 00:00:00', NULL, '1515'),
(4, 'jim', '$2y$10$WvMU4zc6FeE3S1gBL3jemu9t/5Nr5EtSxA9A.b7Ff7CMqtlJf8oRy', 'aa@a.com', 'http://192.168.28.42/daily/uploads/files/bzp1o6ys7mi8ne0.jpg', NULL, NULL, '2024-08-15 00:00:00', NULL, 'jim');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ip_user`
--
ALTER TABLE `ip_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_email`
--
ALTER TABLE `list_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_daily`
--
ALTER TABLE `task_daily`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ip_user`
--
ALTER TABLE `ip_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `list_email`
--
ALTER TABLE `list_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `task_daily`
--
ALTER TABLE `task_daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
