-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 11:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruang_guru_kw`
--

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(10) NOT NULL,
  `jenis_soal` text NOT NULL,
  `soal` text NOT NULL,
  `plihan_a` text NOT NULL,
  `pilihan_b` text NOT NULL,
  `pilihan_c` text NOT NULL,
  `pilihan_d` text NOT NULL,
  `pilihan_e` text NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `jenis_soal`, `soal`, `plihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`, `jawaban`) VALUES
(1, 'saintek', 'Sebanyak 5 siswa berprestasi yang terdiri dari 2 pria dan 3 wanita akan melakukan sesi foto. Banyak susunan \nberfoto berjajar untuk kelima siswa tersebut dengan 2 siswa pria tidak boleh berdekatan adalah', '36', '48', '60', '72', '90', '72'),
(2, 'saintek', 'Benda bermassa m bergerak dengan momentum P, maka besar energi kinetiknya sebanding dengan', '√P', 'P kuadrat', 'P pangkat 3', 'Akar pangkat tiga P', 'P pangkat 3', 'P kuadrat'),
(3, 'saintek', 'Vakuola kontraktil pada golongan pyrrophyra berfungsi sebagai alat…', 'Ekskresi dan sekresi', 'Osmoregulasi dan ekskresi', 'Osmoregulasi dan sekresi', 'Regulasi dan ekskresi', 'Regulasi dan sekresi', 'Osmoregulasi dan ekskresi'),
(4, 'saintek', 'Asam oksalat adalah asam berbasa dua. Sebanyak 10 ml larutan asam oksalat diencerkan \ndengan air sampai volumenya 100 ml. Larutan ini digunakan untuk menitrasi 20 ml larutan \nNaOH 0,2 M dengan indikator bromtimol biru. Bila titik akhir titrasi diperoleh saat volume \nasam oksalat mencapai 50 ml, berapakah konsentrasi larutan asam oksalat awal?', '0,08 M', '0,40 M', '0,80 M', '1,60 M', '3,20 M', '0,40 M'),
(5, 'saintek', 'Alveolus merupakan struktur yang ditemukan pada paru-paru dan berfungsi sebagai tempat \npertukaran gas. Pada alveolus ditemukan setidaknya 2 tipe sel yang disebut sebagai pneumosit \ndengan fungsi dan ciri berbeda tiap tipenya. Fungsi atau ciri yang benar dari sel tersebut adalah ….', 'pneumosit tipe I berfungsi untuk menghasilkan surfaktan', 'pneumosit tipe I berperan dalam regenerasi', 'pneumosit tipe II memiliki jumlah lebih banyak dibandingkan dengan pneumosit tipe I', 'pneumosit tipe II menutupi permukaan lebih banyak dibandingkan pneumosit tipe I', 'pneumosit tipe II memiliki bentuk pipih selapis', 'pneumosit tipe II memiliki jumlah lebih banyak dibandingkan dengan pneumosit tipe I'),
(6, 'saintek', 'Diketahui nomor atom unsur F, S, dan K masing-masing sebesar 9, 16, dan 19. Urutan ukuran atom \ndan ion stabil dari unsur-unsur tersebut adalah ….', 'F<S<K untuk atom dan ion', 'F<K<S untuk atom dan ion', 'F<S<K untuk atom, F<K<S untuk ion', 'F<K<S untuk atom, F<S<K untuk ion', 'K<S<F untuk atom, S<K<F untuk ion', 'F<S<K untuk atom, F<K<S untuk ion'),
(7, 'saintek', 'Sebuah silinder pejal yang mula-mula diam kemudian menggelinding tanpa slip dari puncak bidang \nmiring setinggi 240 cm. Bidang miring tersebut membentuk sudut θ terhadap bidang horizontal. Jika waktu \nyang dibutuhkan silinder pejal sampai ke dasar bidang adalah ugm fisika 1abesar sudut θ adalah ….', '37⁰', '45⁰', '53⁰', '60⁰', '64⁰', '45⁰'),
(8, 'saintek', 'Sebuah lampu berada di daerah dengan suhu udara -5 °C sehingga hambatan dalam lampu sebesar \n100 Ω. Lampu tersebut memiliki spesifikasi 50 W/100 V dan koefisien hambatan jenisnya sebesar 0,0052/°C. \nJika lampu menyala dalam kondisi normal, suhu filamen haruslah bernilai …', '87 °C', '187 °C', '287 °C', '387 °C', '487 °C', '187 °C'),
(9, 'soshum', 'Gerakan air di permukaan laut tidak hanya disebabkan oleh gerakan angin yang bertiup di atasnya, \ntetapi dipengaruhi juga oleh faktor...', 'letak lintang', 'topografi dasar laut', 'massa air laut', 'kecepatan arus laut', 'densitas air laut', 'densitas air laut'),
(10, 'soshum', 'PDI merupakan hasil fusi partai tahun 1973 yang terdiri atas PNI, Parkindo, Partai Katolik, dan....', 'IPKI', 'PSI', 'Partai Marhaen', 'Pastindo', 'PDII', 'IPKI'),
(11, 'soshum', 'Perusahaan yang hanya memperoleh laba normal dalam jangka panjang adalah perusahaan yang berada \ndi pasar ....', 'Persaingan monopolistik dan monopoli', 'Persaingan sempurna dan persaingan monopolistik', 'Monopoli dan persaingan sempurna', 'Oligopoli dan persaingan monopolistik', 'Oligopoli dan persaingan sempurna', 'Persaingan sempurna dan persaingan monopolistik'),
(12, 'soshum', 'Ada berbagai bentuk gemeinschaft, di antaranya adalah trah dan marga. Kelompok tersebut termasuk \ndalam contoh bentuk gemeinschaft ....', 'of mind', 'by blood', 'by place', 'by crow', 'by person', 'by blood'),
(13, 'soshum', 'Jenis-jenis tanah yang amat subur di Indonesia adalah...', 'tanah aluvial, vulkanis, laterit', 'tanah aluvial, gambut, podzolit', 'tanah kapur, margalit, humus', 'tanah aluvial, vulkanis, humus', 'tanah gambut, kapur, vulkanis', 'tanah aluvial, vulkanis, humus'),
(14, 'soshum', 'Data kependudukan suatu wilayah menurut golongan umur:\n\nUmur:\n0-14 tahun: 1.850 orang\n15-64 tahun: 4.000 orang\n\nMenurut data di atas, maka angka ketergantungan di wilayah tersebut adalah..', '42,62', '48,62', '49,70', '50,72', '60,80', '48,62'),
(15, 'soshum', 'Apabila kota A berpenduduk 30 ribu jiwa dan kota B 10 ribu jiwa, sedangkan jarak keduanya 25 km. Maka \nlokasi yang ideal untuk membangun sekolah adalah..', '8,15 km dari kota A', '8,15 km dari kota B', '9,15 km dari kota A', '9,15 km dari kota B', '10,15 km dari kota A', '9,15 km dari kota B'),
(16, 'soshum', 'Salah satu kendala negara berkembang untuk berubah menjadi negara maju adalah...', 'Keterbatasan sumber daya alam', 'Perkembangan industri yang lambat', 'Wilayah terlalu luas', 'Pertumbuhan penduduk rendah', 'Kualitas sumber daya manusia masih rendah', 'Kualitas sumber daya manusia masih rendah'),
(17, 'soshum', 'Masyarakat Jawa zaman dahulu memiliki konsep budaya \"Banyak anak banyak rezeki\". Namun, saat ini konsep \ntersebut menjadi \"Dua anak lebih baik\". Konsep yang tepat untuk mengkaji fenomena ini adalah..', 'Konsep budaya', 'Perubahan sosial', 'Mobilitas sosial', 'Anggapan sosial', 'Imajinasi sosiologi', 'Perubahan sosial'),
(18, 'soshum', 'Manusia yang baru lahir belum memiliki konsep diri. Diri manusia berkembang bertahap melalui sosialisasi \ndan interaksi. Pemikiran ini diungkapkan oleh tokoh sosiologi..', 'Ch. Cooley', 'Herbert Mead', 'Max Weber', 'Emile Durkheim', 'Lemert', 'Herbert Mead'),
(19, 'soshum', 'Banyak penderita AIDS akhirnya menarik diri dari masyarakat karena merasa dikucilkan dan tidak memperoleh \nhak yang sama sebagaimana masyarakat lainnya. Tindakan mereka yang pada akhirnya menarik diri ini adalah bentuk...', 'Conformity', 'Innovation', 'Ritualism', 'Retreatism', 'Rebellion', 'Retreatism'),
(21, 'saintek', 'Diketahui sebuah lingkaran dengan persamaan (x-3)^2 + (y+4)^2 = 25. Tentukan koordinat pusat \ndan jari-jari lingkaran tersebut.', 'Pusat (3, -4) dan jari-jari 5', 'Pusat (3, -4) dan jari-jari 25', 'Pusat (-3, 4) dan jari-jari 5', 'Pusat (-3, 4) dan jari-jari 25', 'Pusat (3, 4) dan jari-jari 5', 'Pusat (3, -4) dan jari-jari 5'),
(22, 'saintek', 'Sebuah mobil bergerak dengan kecepatan awal 20 m/s. Mobil tersebut mengalami percepatan konstan \nsebesar 2 m/s² selama 5 detik. Berapakah kecepatan akhir mobil tersebut?', '20 m/s', '25 m/s', '30 m/s', '35 m/s', '40 m/s', '30 m/s'),
(23, 'saintek', 'Pernyataan berikut yang benar tentang fungsi eksponensial adalah....', 'Grafiknya selalu naik', 'Mempunyai titik potong di (0,0)', 'Fungsinya selalu positif', 'Grafiknya simetris terhadap sumbu y', 'Fungsinya tidak terbatas', 'Fungsinya selalu positif'),
(24, 'saintek', 'Sebuah benda bergerak melingkar dengan kecepatan sudut konstan. Jika jari-jari lintasan adalah 2 m \ndan periode geraknya 4 s, berapakah kecepatan linear benda tersebut?', '0,5 m/s', '1 m/s', 'π m/s', '2π m/s', '4π m/s', 'π m/s'),
(25, 'saintek', 'Reaksi antara asam dan basa menghasilkan...', 'Asam', 'Garam', 'Air', 'Garam dan air', 'Asam dan garam', 'Garam dan air'),
(26, 'saintek', 'Jika akar-akar persamaan kuadrat ax² + bx + c = 0 adalah 3 dan 4, maka persamaan kuadrat tersebut adalah...', 'x² + 7x + 12 = 0', 'x² - 7x + 12 = 0', 'x² + 7x - 12 = 0', 'x² - 7x - 12 = 0', 'x² - 7x + 7 = 0', 'x² - 7x + 12 = 0'),
(27, 'saintek', 'Dua buah vektor masing-masing memiliki besar 5 N dan 12 N. Resultan kedua vektor tersebut adalah...', '7 N', '13 N', '17 N', '20 N', '25 N', '13 N'),
(28, 'saintek', 'Fotosintesis adalah proses dimana tumbuhan hijau mengubah ... menjadi ...', 'Air, oksigen', 'Karbon dioksida, oksigen', 'Air, karbohidrat', 'Karbon dioksida, karbohidrat', 'Oksigen, karbon dioksida', 'Karbon dioksida, karbohidrat'),
(29, 'soshum', 'Konstitusi yang berlaku di Indonesia saat ini adalah...', 'UUD 1945', 'UUDS 1950', 'RIS 1949', 'UUD 2002', 'UUD 1950', 'UUD 1945'),
(30, 'soshum', 'Proses integrasi bangsa Indonesia dipercepat oleh...', 'Bahasa daerah', 'Sistem pemerintahan', 'Perbedaan agama', 'Bahasa Indonesia', 'Adat istiadat', 'Bahasa Indonesia'),
(31, 'soshum', 'Aspek yang termasuk dalam konsep ruang dalam geografi adalah...', 'Jarak', 'Interaksi', 'Persebaran', 'Relief', 'Lokasi', 'Lokasi'),
(32, 'soshum', 'Pada tahun berapakah Indonesia memproklamasikan kemerdekaannya?', '1942', '1943', '1944', '1945', '1946', '1945'),
(33, 'soshum', 'Lembaga yang berwenang mengubah dan menetapkan Undang-Undang Dasar adalah...', 'MPR', 'DPR', 'Presiden', 'MA', 'MK', 'MPR'),
(34, 'soshum', 'Salah satu ciri negara berkembang adalah...', 'Pendapatan per kapita tinggi', 'Tingkat pendidikan rendah', 'Tingkat kesehatan tinggi', 'Angka kelahiran rendah', 'Tingkat teknologi maju', 'Tingkat pendidikan rendah'),
(35, 'soshum', 'Benua yang paling padat penduduknya adalah...', 'Asia', 'Afrika', 'Amerika', 'Eropa', 'Australia', 'Asia'),
(36, 'soshum', 'Konflik antar suku bangsa di Indonesia umumnya disebabkan oleh...', 'Perbedaan politik', 'Perbedaan ekonomi', 'Perbedaan sosial budaya', 'Perbedaan agama', 'Perbedaan wilayah', 'Perbedaan sosial budaya'),
(37, 'soshum', 'Pembentukan ASEAN dilandasi oleh kesamaan...', 'Geografis', 'Ekonomi', 'Sejarah', 'Politik', 'Budaya', 'Geografis'),
(38, 'soshum', 'Negara anggota ASEAN yang tidak memiliki wilayah daratan adalah...', 'Malaysia', 'Thailand', 'Vietnam', 'Singapura', 'Laos', 'Singapura'),
(39, 'soshum', 'Organisasi yang menggantikan PBB pada tahun 1945 adalah...', 'Liga Bangsa-Bangsa', 'ASEAN', 'NATO', 'MEE', 'UNI EROPA', 'Liga Bangsa-Bangsa'),
(40, 'soshum', 'Gerakan separatis di Indonesia yang berusaha membentuk negara Islam adalah...', 'DI/TII', 'OPM', 'GAM', 'PRRI', 'APRA', 'DI/TII'),
(41, 'soshum', 'Badan yang berfungsi sebagai pelaksana pemilihan umum di Indonesia adalah...', 'MPR', 'DPR', 'KPU', 'MA', 'MK', 'KPU'),
(42, 'soshum', 'Wilayah yang berbatasan langsung dengan negara Malaysia adalah...', 'Kalimantan Timur', 'Kalimantan Tengah', 'Kalimantan Barat', 'Kalimantan Selatan', 'Papua Barat', 'Kalimantan Barat'),
(43, 'soshum', 'Unsur dalam penulisan karya ilmiah yang memuat tujuan penelitian adalah...', 'Pendahuluan', 'Tinjauan pustaka', 'Metode penelitian', 'Pembahasan', 'Simpulan', 'Pendahuluan'),
(44, 'soshum', 'Hubungan antara dua negara yang saling membutuhkan satu sama lain disebut...', 'Diplomasi', 'Kerjasama bilateral', 'Hubungan diplomatik', 'Hubungan multilateral', 'Hubungan internasional', 'Kerjasama bilateral'),
(45, 'soshum', 'Salah satu faktor yang mempengaruhi iklim di suatu wilayah adalah...', 'Letak lintang', 'Letak bujur', 'Relief', 'Luas wilayah', 'Jumlah penduduk', 'Letak lintang'),
(51, 'TPS', '..., 5, 7, 9, 11, 13.\nAngka yang paling sesuai untuk melengkapi deret tersebut adalah ....', '0', '1', '2', '3', '4', '3'),
(52, 'TPS', 'Kesimpulan berdasarkan informasi tersebut yaitu pekerja X berhak \nmemperoleh hadiah wisata ke luar negeri dari perusahaan Y.\nManakah pernyataan di bawah ini yang menggambarkan kualitas \nkesimpulan tersebut?', 'Kesimpulan tersebut pasti benar.', 'Kesimpulan tersebut mungkin benar.', 'Kesimpulan tersebut pasti salah.', 'Kesimpulan tidak relevan dengan informasi yang diberikan.', 'Kesimpulan tidak bisa dinilai karena informasi tidak cukup.', 'Kesimpulan tersebut pasti salah.'),
(53, 'TPS', 'Informasi yang bisa digunakan untuk mengetahui jumlah kotak \nminuman yang diterima oleh kelompok A adalah ....', '2 dan 4', '1 dan 3', '2 dan 3', '1 dan 2', '3 dan 4', '2 dan 4'),
(54, 'TPS', '1) Penelitian terbaru menunjukkan pertumbuhan ekonomi Indonesia sudah melewati titik terendah pada kuartal II 2020.\n2) Namun, Indonesia saat ini berada pada fase pemulihan ekonomi.\n3) Neraca perdagangan Indonesia yang surplus USD 8 miliar pada periode berikutnya diyakini dapat mendukung ketahanan eksternal perekonomian.\n4) Di pasar keuangan, kepercayaan investor juga kian meningkat.\n5) Hal ini tampak dari pergerakan Indek Harga Saham Gabungan (IHSG) dan nilai tukar rupiah dalam beberapa pekan terakhir.\n6) Momentum positif perekonomian itu harus terus dijaga.\n7) [...], dalam memulihkan ekonomi, upaya menjaga kesehatan masyarakat di tengah situasi pandemi COVID-19 tetap harus diutamakan.\nPenulisan kata bercetak tebal pada teks tersebut yang salah terdapat pada kalimat....', 'kuartal', 'fase', 'miliar', 'investor', 'indek', 'indek'),
(55, 'TPS', '1) Penelitian terbaru menunjukkan pertumbuhan ekonomi Indonesia sudah melewati titik terendah pada kuartal II 2020.\n2) Namun, Indonesia saat ini berada pada fase pemulihan ekonomi.\n3) Neraca perdagangan Indonesia yang surplus USD 8 miliar pada periode berikutnya diyakini dapat mendukung ketahanan eksternal perekonomian.\n4) Di pasar keuangan, kepercayaan investor juga kian meningkat.\n5) Hal ini tampak dari pergerakan Indek Harga Saham Gabungan (IHSG) dan nilai tukar rupiah dalam beberapa pekan terakhir.\n6) Momentum positif perekonomian itu harus terus dijaga.\n7) [...], dalam memulihkan ekonomi, upaya menjaga kesehatan masyarakat di tengah situasi pandemi COVID-19 tetap harus diutamakan.\nKata sambung yang paling tepat melengkapi kalimat (7) adalah ....', 'dengan demikian', 'oleh karena itu', 'di samping itu', 'untuk itu', 'jadi', 'oleh karena itu'),
(56, 'TPS', 'Jika buah jeruk terasa keras jika ditekan, berwarna hijau, dan tidak \nmengeluarkan aroma, manakah kesimpulan yang BENAR?', 'Buah jeruk belum siap dipanen.', 'Buah jeruk harganya murah.', 'Buah jeruk harganya mahal.', 'Buah jeruk tidak dapat dijual.', 'Buah jeruk rasanya masam.', 'Buah jeruk belum siap dipanen.'),
(57, 'TPS', 'Bella menabung di bank Maju dengan menerapkan bunga tunggal \n15% per tahun. Jika Bella menabung sebesar x juta rupiah dan \nsetelah beberapa tahun tabungan dia menjadi 1,9x juta rupiah, \nmaka Bella menabung selama ... tahun.', '2', '4', '6', '8', '10', '6'),
(58, 'TPS', 'Ayah dan ibu akan jalan-jalan ke Yogyakarta dan berencana \nmengunjungi enam tempat wisata yaitu Malioboro, Alun-alun, \nCandi Borobudur, Candi Prambanan, Parangtritis, dan Keraton.\nAdapun aturan kunjungannya yaitu:\n- Malioboro harus dikunjungi sebelum Candi Borobudur dan Keraton\n- Candi Prambanan hanya boleh dikunjungi jika Candi Borobudur \nsudah dikunjungi\n- Parangtritis harus dikunjungi setelah Malioboro, namun sebelum \nAlun-alun\nTempat yang pertama kali harus dikunjungi adalah....', 'Malioboro', 'Alun-alun', 'Candi Borobudur', 'Candi Prambanan', 'Keraton', 'Malioboro'),
(59, 'TPS', 'Ayah dan ibu akan jalan-jalan ke Yogyakarta dan berencana \nmengunjungi enam tempat wisata yaitu Malioboro, Alun-alun, \nCandi Borobudur, Candi Prambanan, Parangtritis, dan Keraton.\nAdapun aturan kunjungannya yaitu:\n- Malioboro harus dikunjungi sebelum Candi Borobudur dan Keraton\n- Candi Prambanan hanya boleh dikunjungi jika Candi Borobudur \nsudah dikunjungi\n- Parangtritis harus dikunjungi setelah Malioboro, namun sebelum \nAlun-alun\nJika Alun-alun dikunjungi sebelum Candi Borobudur, dan Parangtritis \ndikunjungi setelah Keraton maka yang dikunjungi terakhir adalah....', 'Alun-alun', 'Candi Borobudur', 'Candi Prambanan', 'Parangtritis', 'Keraton', 'Candi Prambanan'),
(60, 'TPS', 'Ayah dan ibu akan jalan-jalan ke Yogyakarta dan berencana \nmengunjungi enam tempat wisata yaitu Malioboro, Alun-alun, \nCandi Borobudur, Candi Prambanan, Parangtritis, dan Keraton.\nAdapun aturan kunjungannya yaitu:\n- Malioboro harus dikunjungi sebelum Candi Borobudur dan Keraton\n- Candi Prambanan hanya boleh dikunjungi jika Candi Borobudur \nsudah dikunjungi\n- Parangtritis harus dikunjungi setelah Malioboro, namun sebelum \nAlun-alun\nYang tidak mungkin dikunjungi setelah Alun-alun adalah....', 'Keraton', 'Candi Prambanan', 'Candi Borobudur', 'Malioboro', 'Keraton', 'Candi Borobudur');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id_user` int(2) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `prodi` text NOT NULL,
  `skor` int(10) NOT NULL,
  `nama_lengkap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`id_user`, `username`, `password`, `prodi`, `skor`, `nama_lengkap`) VALUES
(18, 'fadlan', '123', 'Informatika', 150, 'alif fadlan badali'),
(20, 'Dirga', '123', 'Psikologi', 140, 'Dirga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
