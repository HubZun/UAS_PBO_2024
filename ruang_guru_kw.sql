-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jun 2024 pada 18.14
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

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
-- Struktur dari tabel `soal`
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
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `jenis_soal`, `soal`, `plihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`, `jawaban`) VALUES
(1, 'saintek', 'Sebanyak 5 siswa berprestasi yang terdiri dari 2 pria dan 3 wanita akan melakukan sesi foto. Banyak susunan berfoto berjajar untuk kelima siswa tersebut dengan 2 siswa pria tidak boleh berdekatan adalah', '36', '48', '60', '72', '90', '72'),
(2, 'saintek', 'Benda bermassa m bergerak dengan momentum P, maka besar energi kinetiknya sebanding dengan', '√P', 'P kuadrat', 'P pangkat 3', 'Akar pangkat tiga P', 'P pangkat 3', 'P kuadrat'),
(3, 'saintek', 'Vakuola kontraktil pada golongan pyrrophyra berfungsi sebagai alat…\r\n', 'Ekskresi dan sekresi', 'Osmoregulasi dan ekskresi', 'Osmoregulasi dan sekresi', 'Regulasi dan ekskresi', 'Regulasi dan sekresi', 'Osmoregulasi dan ekskresi'),
(4, 'saintek', 'Asam oksalat adalah asam berbasa dua. Sebanyak 10 ml larutan asam oksalat diencerkan \r\ndengan air sampai volumenya 100 ml. Larutan ini digunakan untuk menitrasi 20 ml larutan \r\nNaOH 0,2 M dengan indikator bromtimol biru. Bila titik akhir titrasi diperoleh saat volume \r\nasam oksalat mencapai 50 ml, berapakah konsentrasi larutan asam oksalat awal?', '0,08 M', '0,40 M', '0,80 M', '1,60 M', '3,20 M', '0,40 M'),
(5, 'saintek', 'Alveolus merupakan struktur yang ditemukan pada paru-paru dan berfungsi sebagai tempat pertukaran gas. Pada alveolus ditemukan setidaknya 2 tipe sel yang disebut sebagai pneumosit dengan fungsi dan ciri berbeda tiap tipenya. Fungsi atau ciri yang benar dari sel tersebut adalah ….', 'pneumosit tipe I berfungsi untuk menghasilkan surfaktan', 'pneumosit tipe I berperan dalam regenerasi', 'pneumosit tipe II memiliki jumlah lebih banyak dibandingkan dengan pneumosit tipe I', 'pneumosit tipe II menutupi permukaan lebih banyak dibandingkan pneumosit tipe I', 'pneumosit tipe II memiliki bentuk pipih selapis', 'pneumosit tipe II memiliki jumlah lebih banyak dibandingkan dengan pneumosit tipe I'),
(6, 'saintek', 'Diketahui nomor atom unsur F, S, dan K masing-masing sebesar 9, 16, dan 19. Urutan ukuran atom dan ion stabil dari unsur-unsur tersebut adalah ….', 'F<S<K untuk atom dan ion', 'F<K<S untuk atom dan ion', 'F<S<K untuk atom, F<K<S untuk ion', 'F<K<S untuk atom, F<S<K untuk ion', 'K<S<F untuk atom, S<K<F untuk ion', 'F<S<K untuk atom, F<K<S untuk ion'),
(7, 'saintek', 'Sebuah silinder pejal yang mula-mula diam kemudian menggelinding tanpa slip dari puncak bidang miring setinggi 240 cm. Bidang miring tersebut membentuk sudut θ terhadap bidang horizontal. Jika waktu yang dibutuhkan silinder pejal sampai ke dasar bidang adalah ugm fisika 1abesar sudut θ adalah ….', '37⁰', '45⁰', '53⁰', '60⁰', '64⁰', '45⁰'),
(8, 'saintek', 'Sebuah lampu berada di daerah dengan suhu udara -5 °C sehingga hambatan dalam lampu sebesar 100 Ω. Lampu tersebut memiliki spesifikasi 50 W/100 V dan koefisien hambatan jenisnya sebesar 0,0052/°C. Jika lampu menyala dalam kondisi normal, suhu filamen haruslah bernilai …', '87 °C', '187 °C', '287 °C', '387 °C', '487 °C', '187 °C'),
(9, 'soshum', 'Gerakan air di permukaan laut tidak hanya disebabkan oleh gerakan angin yang bertiup di atasnya, tetapi dipengaruhi juga oleh faktor...', 'letak lintang', 'topografi dasar laut', 'massa air laut', 'kecepatan arus laut', 'densitas air laut', 'densitas air laut'),
(10, 'soshum', 'PDI merupakan hasil fusi partai tahun 1973 yang terdiri atas PNI, Parkindo, Partai Katolik, dan....', 'IPKI', 'PSI', 'Partai Marhaen', 'Pastindo', 'PDII', 'IPKI'),
(11, 'soshum', 'Perusahaan yang hanya memperoleh laba normal dalam jangka panjang adalah perusahaan yang berada di pasar ....', 'Persaingan monopolistik dan monopoli', 'Persaingan sempurna dan persaingan monopolistik', 'Monopoli dan persaingan sempurna', 'Oligopoli dan persaingan monopolistik', 'Oligopoli dan persaingan sempurna', 'Persaingan sempurna dan persaingan monopolistik'),
(12, 'soshum', 'Ada berbagai bentuk gemeinschaft, di antaranya adalah trah dan marga. Kelompok tersebut termasuk dalam contoh bentuk gemeinschaft ....\r\n', 'of mind', 'by blood', 'by place', 'by crow', 'by person', 'by blood'),
(13, 'soshum', 'Jenis-jenis tanah yang amat subur di Indonesia adalah...', 'tanah aluvial, vulkanis, laterit', 'tanah aluvial, gambut, podzolit', 'tanah kapur, margalit, humus', 'tanah aluvial, vulkanis, humus', 'tanah gambut, kapur, vulkanis', 'tanah aluvial, vulkanis, humus'),
(14, 'soshum', 'Data kependudukan suatu wilayah menurut golongan umur:\r\n\r\nUmur:\r\n0-14 tahun: 1.850 orang\r\n15-64 tahun: 4.000 orang\r\n\r\nMenurut data di atas, maka angka ketergantungan di wilayah tersebut adalah..', '42,62', '48,62', '49,70', '50,72', '60,80', '48,62'),
(15, 'soshum', 'Apabila kota A berpenduduk 30 ribu jiwa dan kota B 10 ribu jiwa, sedangkan jarak keduanya 25 km. Maka lokasi yang ideal untuk membangun sekolah adalah..', '8,15 km dari kota A', '8,15 km dari kota B', '9,15 km dari kota A', '9,15 km dari kota B', '10,15 km dari kota A', '9,15 km dari kota B'),
(16, 'soshum', 'Salah satu kendala negara berkembang untuk berubah menjadi negara maju adalah...', 'Keterbatasan sumber daya alam', 'Perkembangan industri yang lambat', 'Wilayah terlalu luas', 'Pertumbuhan penduduk rendah', 'Kualitas sumber daya manusia masih rendah', 'Kualitas sumber daya manusia masih rendah'),
(17, 'soshum', 'Masyarakat Jawa zaman dahulu memiliki konsep budaya \"Banyak anak banyak rezeki\". Namun, saat ini konsep tersebut menjadi \"Dua anak lebih baik\". Konsep yang tepat untuk mengkaji fenomena ini adalah..', 'Konsep budaya', 'Perubahan sosial', 'Mobilitas sosial', 'Anggapan sosial', 'Imajinasi sosiologi', 'Perubahan sosial'),
(18, 'soshum', 'Manusia yang baru lahir belum memiliki konsep diri. Diri manusia berkembang bertahap melalui sosialisasi dan interaksi. Pemikiran ini diungkapkan oleh tokoh sosiologi..', 'Ch. Cooley', 'Herbert Mead', 'Max Weber', 'Emile Durkheim', 'Lemert', 'Herbert Mead'),
(19, 'soshum', 'Banyak penderita AIDS akhirnya menarik diri dari masyarakat karena merasa dikucilkan dan tidak memperoleh hak yang sama sebagaimana masyarakat lainnya. Tindakan mereka yang pada akhirnya menarik diri ini adalah bentuk...', 'Conformity', 'Innovation', 'Ritualism', 'Retreatism', 'Rebellion', 'Retreatism'),
(20, 'soshum', 'Ilmu ekonomi merupakan bidang studi yang telah berkembang. Sebagai salah satu bidang ilmu pengetahuan, perkembangan ilmu ekonomi berlangsung sejak 1776, setelah seorang ahli menulis buku bertajuk An Inquiry into the Nature and Causes of the Wealth of Nations. Sosok penulis buku yang dimaksud adalah..', 'Ilmu ekonomi merupakan bidang studi yang telah berkembang. Sebagai salah satu bidang ilmu pengetahuan, perkembangan ilmu ekonomi berlangsung sejak 1776, setelah seorang ahli menulis buku bertajuk An Inquiry into the Nature and Causes of the Wealth of Nations. Sosok penulis buku yang dimaksud adalah..', 'Alfred Marshall', 'John Maynard Keynes', 'Adam Smith', 'W. W. Rostow', 'Adam Smith'),
(21, 'soshum', 'Dalam kegiatan ekonomi, sosok individu, suatu masyarakat, maupun masyarakat secara keseluruhan memiliki sejumlah pilihan dalam melakukannya. Mereka perlu mengambil keputusan untuk memilih yang terbaik. Konsep ini adalah bagian dari...', 'Biaya peluang', 'Ekonomi mikro', 'Biaya produksi', 'Kurva kemungkinan produksi', 'Konsumsi', 'Biaya peluang'),
(22, 'soshum', 'Keinginan yang disertai kemampuan membeli, disebut dengan..', 'Permintaan efektif', 'Permintaan potensial', 'Permintaan absolut', 'Permintaan pasar', 'Permintaan individu', 'Permintaan efektif'),
(23, 'saintek', 'Sebuah lampu berada di daerah dengan suhu udara -5 °C sehingga hambatan dalam lampu sebesar 100 Ω. Lampu tersebut memiliki spesifikasi 50 W/100 V dan koefisien hambatan jenisnya sebesar 0,0052/°C. Jika lampu menyala dalam kondisi normal, suhu filamen haruslah bernilai …', '87 °C', '187 °C', '187 °C', '387 °C', '487 °C', '187 °C'),
(24, 'saintek', 'Sebuah silinder pejal yang mula-mula diam kemudian menggelinding tanpa slip dari puncak bidang miring setinggi 240 cm. Bidang miring tersebut membentuk sudut θ terhadap bidang horizontal. Jika waktu yang dibutuhkan silinder pejal sampai ke dasar bidang adalah akar2 sekon besar sudut θ adalah ….', '67⁰', '37⁰', '45⁰', '53⁰', '60⁰', '45⁰'),
(25, 'saintek', 'Himpunan penyelesaikan dari pertidaksamaan | x – 1| < 3 – |x| dengan x adalah bilangan R adalah.. ', '– 2 < x < -1', '-1 < x < 2 ', 'x < -1 atau x > 2', 'x < -2 atau x > 1', '1 < x < 2', '-1 < x < 2 '),
(26, 'saintek', 'Sebuah peluru ditembakkan miring ke atas membentuk sudut 53 derajat terhadap arah mendatar dengan kecepatan awal Vo = 10 m/s dan percepatan gravitasi = 10 m/s^2. Tentukan tinggi maksimum yang dapat dicapai peluru!', '2,8 m', '3,2 m', '3,4 m', '3,8 m', '4 m', '3,2 m'),
(27, 'saintek', 'Berikut adalah beberapa reaksi organik\r\n(1) Oksidasi etanol\r\n(2) Oksidasi asetaldehid\r\n(3) Karbonilasi metanol\r\n(4) Hidrolisis asetamida\r\n\r\nAsam asetat dapat dibuat melalui reaksi', '1,2', '1,3', '1,2,3', '2,3,4', '1,2,3,4', '1,2,3,4'),
(28, 'saintek', 'Pemberian pupuk pada tanaman adalah untuk membantu tersedianya nutrisi hara bagi tanaman. Unsur dalam pupuk yang digunakan terutama untuk penyusunan klorofil dalam daun adalah…', 'Carbon', 'Hidrogen', 'Magnesium', 'Ferum', 'Nitrogen', 'Magnesium'),
(29, 'saintek', 'Jika sebelum remedial, rata-rata nilai ulangan murid laki-laki di kelas tersebut adalah 78, rata-rata nilai ulangan murid perempuan adalah ...', '80,5', '81', '81,5', '82', '82,5', '81,5'),
(30, 'saintek', 'Jika titik A (2, -4) digeser sejauh 4 satuan ke kiri dan 2 satuan ke atas, lalu dicerminkan ke sumbu-y, maka bayangannya adalah A\'. Jarak A ke A\' adalah.... satuan.', '5', '1', '2', '3', '4', '2'),
(31, 'TPS', '1) Kemajuan teknologi tidak terlepas dari kehidupan masyarakat. \r\n2) Berbagai informasi yang terjadi di berbagai belahan dunia kini bisa langsung kita ketahui berkat kemajuan teknologi, misalnya melalui smartphone. \r\n3) Jika dahulu kita mengenal pepatah dunia tak selebar daun kelor, sekarang pepatah itu selayaknya berganti menjadi dunia saat ini selebar daun kelor. \r\n4) Kecepatan akses informasi di berbagai belahan dunia membuat dunia ini seakan semakin sempit. \r\n5) Kita dapat menyaksikan apa yang terjadi di luar negeri dari Indonesia secara langsung.\r\n6) Perubahan yang masif pada kehidupan umat manusia dengan segala peradabannya adalah dampak kemajuan teknologi yang tidak dapat kita hindari. 7) Namun, kemajuan teknologi yang kian dahsyat ini jangan sampai menggeser jati diri kita sebagai manusia. 8) Oleh karenanya, kita harus melakukan tindakan yang bijaksana terhadap diri sendiri, keluarga, dan masyarakat luas. (Teks iadaptasi dari https://media.neliti.com/)\r\n\r\nKalimat yang tidak logis dalam bacaan di atas adalah ....\r\n', 'kalimat (1)', 'kalimat (2)', 'kalimat (5)', 'kalimat (6)', 'kalimat (7)', 'kalimat (2)'),
(32, 'TPS', 'Kata bijaksana dalam kalimat (8) memiliki asosiasi dengan kata ....\r\n', 'berbudi', 'bersahaja', 'berakal', 'berperasaan', 'berpengetahuan', 'berbudi'),
(33, 'TPS', 'Kata yang mengandung makna bertingkat dengan kata akses dalam kalimat (4) adalah ....', 'lorong', 'jalan', 'jaringan', 'saluran', 'fasilitas', 'fasilitas'),
(34, 'TPS', 'Kata pepatah pada kalimat (3) dalam bacaan di atas, memiliki makna yang sama dengan kata ....\r\n', 'ajaran', 'nasihat', 'anjuran', 'petunjuk', 'ungkapan', 'ungkapan'),
(35, 'TPS', 'Kalimat (6) dan (7) dalam bacaan di atas mengandung hubungan ....', 'perluasan', 'penambahan', 'penegasan', 'penghubungan', 'perincian', 'penambahan'),
(36, 'TPS', '..., 5, 7, 9, 11, 13.\r\n\r\nAngka yang paling sesuai untuk melengkapi deret tersebut adalah ....', '0', '1', '2', '3', '4', '3'),
(37, 'TPS', 'Hadiah liburan ke luar negeri akan diberikan oleh perusahaan Y apabila pekerjanya mendapat penilaian kinerja sangat baik dua tahun berturut-turut dan dinominasikan oleh rekan kerja sekaligus atasannya. \r\nPekerja X disukai oleh rekan kerjanya dan mendapatkan penilaian kinerja sangat baik tahun kemarin.\r\nKesimpulan berdasarkan informasi tersebut yaitu pekerja X berhak memperoleh hadiah wisata ke luar negeri dari perusahaan Y.\r\n\r\nManakah pernyataan di bawah ini yang menggambarkan kualitas kesimpulan tersebut?\r\n', 'Kesimpulan tersebut pasti benar.', 'Kesimpulan tersebut mungkin benar.', 'Kesimpulan tersebut pasti salah.', 'Kesimpulan tidak relevan dengan informasi yang diberikan.', 'Kesimpulan tidak bisa dinilai karena informasi tidak cukup.', 'Kesimpulan tersebut pasti salah.'),
(38, 'TPS', 'Dua dus minuman dibagikan untuk empat kelompok kerja dengan ketentuan berikut ini:\r\n\r\nKelompok B memperoleh 2 kali lebih banyak daripada kelompok C.\r\nKelompok A memperoleh ½ bagian keseluruhan.\r\nKelompok C dan D mendapatkan sama rata dari minuman yang tersisa.\r\nSetiap dus terdapat 24 kotak minuman ringan.\r\n\r\nInformasi yang bisa digunakan untuk mengetahui jumlah kotak minuman yang diterima oleh kelompok A adalah ....\r\n', '2 dan 4', '1 dan 3', '2 dan 3', '1 dan 2', '3 dan 4', '2 dan 4'),
(39, 'TPS', '1) Penelitian terbaru menunjukkan pertumbuhan ekonomi Indonesia sudah melewati titik terendah pada kuartal II 2020. \r\n2) Namun, Indonesia saat ini berada pada fase pemulihan ekonomi. \r\n3) Neraca perdagangan Indonesia yang surplus USD 8 miliar pada periode berikutnya diyakini dapat mendukung ketahanan eksternal perekonomian. \r\n4) Di pasar keuangan, kepercayaan investor juga kian meningkat. \r\n5) Hal ini tampak dari pergerakan Indek Harga Saham Gabungan (IHSG) dan nilai tukar rupiah dalam beberapa pekan terakhir. \r\n6) Momentum positif perekonomian itu harus terus dijaga. \r\n7) [...], dalam memulihkan ekonomi, upaya menjaga kesehatan masyarakat di tengah situasi pandemi COVID-19 tetap harus diutamakan.\r\n\r\nPenulisan kata bercetak tebal pada teks tersebut yang salah terdapat pada kalimat..\r\n', 'kuartal', 'fase', 'miliar', 'investor', 'indek', 'indek'),
(40, 'TPS', 'Kata sambung yang paling tepat melengkapi kalimat (7) adalah ....', 'dengan demikian', 'oleh karena itu', 'di samping itu', 'untuk itu', 'jadi', 'oleh karena itu'),
(41, 'TPS', 'Ketika telah siap panen, jeruk akan terasa empuk saat ditekan, kulitnya berwarna kuning langsat, dan keluar aroma wangi jika tergores. Hal-hal tersebut akan membuat nilai jual jeruk semakin tinggi.\r\nJika buah jeruk terasa keras jika ditekan, berwarna hijau, dan tidak mengeluarkan aroma, manakah kesimpulan yang BENAR?', 'Buah jeruk belum siap dipanen.', 'Buah jeruk harganya murah.', 'Buah jeruk harganya mahal.', 'Buah jeruk tidak dapat dijual.', 'Buah jeruk rasanya masam.', 'Buah jeruk belum siap dipanen.'),
(42, 'TPS', 'Bella menabung di bank Maju dengan menerapkan bunga tunggal 15% per tahun. Jika Bella menabung sebesar \r\nx juta rupiah dan setelah beberapa tahun tabungan dia menjadi 1,9x juta rupiah, maka Bella menabung selama ... tahun. ', '2', '4', '6', '8', '10', '6'),
(43, 'TPS', 'Ayah dan ibu akan jalan-jalan ke Yogyakarta dan berencana mengunjungi enam tempat wisata yaitu Malioboro, Alun-alun, Candi Borobudur, Candi Prambanan, Parangtritis, dan Keraton. Adapun aturan kunjungannya yaitu:\r\n- Malioboro harus dikunjungi sebelum Candi Borobudur dan Keraton\r\n- Candi Prambanan hanya boleh dikunjungi jika Candi Borobudur sudah dikunjungi\r\n- Parangtritis harus dikunjungi setelah Malioboro, namun sebelum Alun-alun\r\n\r\nTempat yang pertama kali harus dikunjungi adalah..\r\n', 'Malioboro', 'Alun-alun', 'Candi Borobudur', 'Candi Prambanan', 'Keraton', 'Malioboro'),
(44, 'TPS', 'Jika Alun-alun dikunjungi sebelum Candi Borobudur, dan Parangtritis dikunjungi setelah Keraton maka yang dikunjungi terakhir adalah...', 'Alun-alun', 'Candi Borobudur', 'Candi Prambanan', 'Parangtritis', 'Keraton', 'Candi Prambanan'),
(45, 'TPS', 'Yang tidak mungkin dikunjungi setelah Alun-alun adalah...', 'Keraton', 'Keraton', 'Candi Borobudur', 'Malioboro', 'Keraton', 'Candi Borobudur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
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
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`id_user`, `username`, `password`, `prodi`, `skor`, `nama_lengkap`) VALUES
(18, 'fadlan', '123', 'Informatika', 50, 'alif fadlan badali');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indeks untuk tabel `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `id_user` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
