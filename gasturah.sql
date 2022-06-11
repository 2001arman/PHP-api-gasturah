-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2022 at 10:46 AM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19082734_gasturah`
--

-- --------------------------------------------------------

--
-- Table structure for table `postingan`
--

CREATE TABLE `postingan` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tempat_bersejarah`
--

CREATE TABLE `tempat_bersejarah` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `sumber` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tempat_bersejarah`
--

INSERT INTO `tempat_bersejarah` (`id`, `nama`, `foto`, `detail`, `sumber`, `latitude`, `longitude`) VALUES
(7, 'lawang sewu', 'tempat_bersejarah/lawang sewu.png', 'Lawang Sewu adalah gedung bersejarah milik PT Kereta Api Indonesia (Persero) yang awalnya digunakan sebagai Kantor Pusat perusahaan kereta api swasta Nederlandsch-Indische Spoorweg Maatschappij (NISM). Gedung Lawang Sewu dibangun secara bertahap di atas lahan seluas 18.232 m2. Bangunan utama dimulai pada 27 Februari 1904 dan selesai pada Juli 1907. Sedangkan bangunan tambahan dibangun sekitar tahun 1916 dan selesai tahun 1918.\n \n Bangunannya dirancang oleh Prof. Jakob F. Klinkhamer dan B.J. Ouendag, arsitek dari Amsterdam dengan ciri dominan berupa elemen lengkung dan sederhana. Bangunan di desain menyerupai huruf L serta memiliki jumlah jendela dan pintu yang banyak sebagai sistem sirkulasi udara. Karena jumlah pintunya yang banyak maka masyarakat menamainya dengan Lawang Sewu yang berarti seribu pintu.', 'https://heritage.kai.id/page/lawang-s', '-6.9839865', '110.4097825'),
(8, 'Candi Borobudur', 'tempat_bersejarah/Candi Borobudur.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum voluptates, perspiciatis inventore expedita enim recusandae ipsa molestias fugit minus placeat. Quaerat alias possimus cum iure labore dolorem quasi reiciendis eaque fugiat. Facilis impedit cupiditate ad voluptate quasi quae odit porro.', 'https://www.google.com', '-7.6075654', '110.2015519'),
(9, 'Prambanan', 'tempat_bersejarah/Prambanan.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum voluptates, perspiciatis inventore expedita enim recusandae ipsa molestias fugit minus placeat. Quaerat alias possimus cum iure labore dolorem quasi reiciendis eaque fugiat. Facilis impedit cupiditate ad voluptate quasi quae odit porro.', 'https://www.google.com', '-7.7520206', '110.4892787'),
(10, 'Kota Tua', 'tempat_bersejarah/Kota Tua.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum voluptates, perspiciatis inventore expedita enim recusandae ipsa molestias fugit minus placeat. Quaerat alias possimus cum iure labore dolorem quasi reiciendis eaque fugiat. Facilis impedit cupiditate ad voluptate quasi quae odit porro.', 'https://www.google.com', '-6.1349661', '106.813452'),
(12, 'Prambanan 2', 'tempat_bersejarah/Prambanan 2.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum voluptates, perspiciatis inventore expedita enim recusandae ipsa molestias fugit minus placeat. Quaerat alias possimus cum iure labore dolorem quasi reiciendis eaque fugiat. Facilis impedit cupiditate ad voluptate quasi quae odit porro.', 'https://www.google.com', '-6.1349661', '106.813452'),
(13, 'Istana Maimun', 'tempat_bersejarah/Istana Maimun.jpg', 'Istana Maimun adalah sebuah bangunan peninggalan sejarah masa kerajaan melayu Sultan Deli ke- IX yaitu Sultan Ma”moen Al Rasyid Perkasa Alamsyah, bangunan ini mulai dibangun pada 26 Agustus 1888 dan selesai selama 3 tahun yang sekaligus diresmikan pada tanggal 18 Mei tahun 1891. Bangunan begitu kokoh dan megah hingga saat ini didesain oleh arsitektur asal Italia yang bernama Ferari. Pembangunan ini menghabiskan dana setara satu juta gulden jika dikurskan dengan mata uang Belanda, konsep arsitekturnya unik, cantik, dan memiliki karakter unsur tradisiononal yang khas Indonesia dengan sentuhan Melayu, baik bentuk maupun ornamennya dipengaruhi oleh berbagai kebudayaan, antara lain Melayu, Islam, Spanyol, china, India dan Itali. Bangunan ini juga didominasi dengan warna kuning keemasan yang identik dengan etnis Melayu.\nBangunan yang didirikan diatas tanah seluas 2.772 m2. Persegi ini dengan dua lantai yang memiliki luasnya 772 m2 dan mempunyai 30 bilik (kamar)yang didalamnya terdapat berbagai macam perabotan dengan gaya Eropa, seperti lemari, kursi dan lampu-lampu Kristal. Bangunan dua lantai ini dibagi menjadi tiga bagian ruangan.: Ruang Utama, sayap kanan  dan sayap kiri. Ruangan Utama atau ruangan induk disebut dengan Balairung Sri yang luasnya 412 m2 ruangan ini biasanya digunakan untuk acara-acara adat kerajaan, menerima tamu ataupun acara penobatan Sultan Deli, ruangan ini dihiasi dengan koleksi peninggalan-peninggalan jaman dahulu seperti senjata tua dan foto-foto keluarga, selain itu pada bagian belakang ada dapur, gudang dan ruangan penjara. Keunikan perpaduan tradisi Melayu dengan kebudayaan Eropa pada bangunan interiornya. Sedangkan influence Islam dapat terlihat dari bentuk kurva di beberapa bagian atap istana. Kurva yang berbentuk seperti kapal terbalik atau yang kerap dikenal dengan Persia Curve yang sering dijumpai pada bangunan di kawasan Timur Tengah, India, atau Turki.\r\n', 'http://kebudayaan.kemdikbud.go.id/bpcbaceh/istana-maimun-peninggalan-kesultanan-kerajaan-melayu-deli-sumatera-utara/', '3.498234', '98.610935'),
(14, 'Candi Ngetos', 'tempat_bersejarah/Candi Ngetos.jpg', 'Candi Ngetos terletak di Desa Ngetos, Kecamatan Ngetos, Kabupaten Nganjuk, Jawa Timur. Candi ini dikenal sebagai candi perabuan dari Prabu Hayam Wuruk. Pada papan keterangan menyebutkan Candi Ngetos dibangun pada abad ke 15. Secara fisik Candi Ngetos dalam keadaan rusak pada beberapa bagian bahkan pada beberapa bagian telah hilang sehingga sulit memperkirakan bentuk aslinya.\nDi Candi Ngetos pernah ditemukan arca Siwa dan Wisnu. Hal ini kemudian menimbulkan asumsi bahwa candi ini beraliran Siwa Wisnu. Asumsi tersebut diperkuat dengan aliran agama Siwa yang dianut oleh Hayam Wuruk. N.J. Krom memperkirakan bahwa Candi Ngetos semula dikelilingi tembok yang berbentuk cincin. Bangunan utama candi terbuat dari batu bata merah dan atapnya diperkirakan terbuat dari kayu (kini sudah tidak ada bekasnya). Candi Ngetos berukuran panjang 9,1 m, tinggi badan 5,43 m, dan tinggi keseluruhan 10 m.\nTerdapat empat buah relief di Candi Ngetos, namun karena faktor usia relief tersebut hanya terisa satu dan tiga lainnya telah ancur. Tidak hanya relief yang hilang melainkan pigura – pigura pada alasnya yang juga telah tidak ada lagi. Pada bagian atas dan bawah pigura, dibatasi oleh loteng – loteng yang terbagi dalam cendela – cendela kecil berhiaskan ketupat yang tepinya tidak rata atau menyerupai bentuk banji. Hal tersebut berbeda dengan bangunan bawahnya yang tidak ada piguranya, sedangkan tepi bawahnya dihiasi dengan motif kelompok buah dan ornamen daun.\r\n', 'https://idsejarah.net/2017/05/candi-ngetos.html', '-7.69358375', '111.8424719985'),
(15, 'Jam Gadang', 'tempat_bersejarah/Jam Gadang.jpg', 'Jam Gadang didirikan oleh Pemerintah Hindia-Belanda atas perintah dari Ratu Wilhelmina dari Belanda. Jam ini merupakan hadiah bagi sekretaris (controleur) Kota Bukittinggi (Fort de Kock) yang menjabat saat itu yakni HR Rookmaaker. Konstruksi bangunan menara jam ini dibangun oleh arsitek asli Minangkabau, Jazid Rajo Mangkuto Sutan Gigi Ameh. Pembangunannya secara resmi selesai pada tahun 1926 dengan menghabiskan dana mencapai 3.000 Gulden.\nMonumen Jam Gadang berdiri setinggi 26 meter di tengah Taman Sabai Nan Aluih, yang dianggap sebagai patokan titik sentral (titik nol) Kota Bukittinggi. Konstruksinya tidak menggunakan rangka logam dan semen, tetapi menggunakan campuran batu kapur, putih telur, dan pasir. Bangunan Jam Gadang memiliki 4 tingkat. Tingkat pertama merupakan ruangan petugas, tingkat kedua tempat bandul pemberat jam. Sementara pada tingkat ketiga merupakan tempat dari mesin jam dan tingkat keempat merupakan puncak menara dimana lonceng jam ditempatkan. Pada lonceng di puncak tersebut tertera nama dari produsen mesin jam ini. Atap berbentuk gonjong di puncak menara yang kini dapat kita saksikan bukanlah bentuk asli dari bangunan tersebut pada masa awal pendiriannya. Desain awal puncak Jam Gadang berbentuk bulat bergaya khas Eropa, dengan patung ayam jantan di bagian atasnya.\nMemasuki era pendudukan Jepang, atap Jam Gadang dirubah mengikuti gaya arsitektur Jepang. Saat era kemerdekaan tiba, atap tersebut dirombak kembali menjadi bentuk atap bagonjong yang merupakan ciri khas dari arsitektur bangunan asli Minangkabau. Mesin jam yang digunakan di dalam monumen ini merupakan barang langka yang hanya diproduksi dua unit oleh pabrik Vortmann Recklinghausen, Jerman. Unit kedua yang setipe dengannya hingga kini masih digunakan dalam menara jam legendaris Kota London, Inggris, yaitu Big Ben. Sistem yang bekerja di dalamnya menggerakkan jam secara mekanik melalui dua bandul besar yang saling menyeimbangkan satu sama lain. Sistem tersebut membuat jam ini terus berfungsi selama bertahun-tahun tanpa sumber energi apapun.\nMesin yang berada di lantai tiga ini menggerakkan jarum jam yang menghadap keempat penjuru mata angin. Diameter masing-masing area perputaran jarum jam tersebut adalah 80 centimeter. Seluruh angka jam dibuat menggunakan sistem penomoran Romawi, akan tetapi angka empat ditulis dengan cara diluar kelaziman, yaitu dengan empat huruf ‘I’ (IIII) dan bukan dengan tulisan ‘IV’. Hal ini menjadi salah satu daya tarik yang menimbulkan rasa penasaran bagi para wisatawan yang berkunjung ke kota ini.', 'https://indonesiakaya.com/pustaka-indonesia/jam-gadang-monumen-kebanggaan-kota-bukittinggi/', '-0.305432', '100.368383'),
(16, 'Benteng Fort Rotterdam', 'tempat_bersejarah/Benteng Fort Rotterdam.jpg', 'Benteng Fort Rotterdam, atau dikenal juga dengan nama Benteng Ujung Pandang, merupakan bangunan bersejarah di Kota Makassar, Sulawesi Selatan. Jika dilihat dari ketinggian, bentuknya menyerupai penyu yang merayap menuju laut sehingga benteng ini kerap pula disebut Benteng Penyu. Keberadaan Benteng Fort Rotterdam tak bisa dilepaskan dari kehadiran Kongsi Dagang Belanda (VOC) di Sulawesi. \nMereka datang untuk berdagang di Pelabuhan Ujung Pandang milik Kerajaan Gowa yang ramai.Saat itu Gowa tumbuh sebagai kekuatan politik dan militer yang kuat. Untuk melindungi pusat pertahanan di Somba Opu, Gowa membangun 17 benteng. Yang paling megah adalah Benteng Ujung Pandang. Andi Muhammad Said dkk dalam Bangunan Bersejarah di Kota Makassar menyebut benteng ini mulai dibangun pada 1545 semasa Raja Gowa IX. Arsitekturnya mengadopsi gaya Portugis; berbentuk segi empat dan berbahan dasar campuran batu dan bata. Pada masa Raja Gowa XIV, tembok benteng diganti dengan batu padas hitam, batu karang, dan bata dengan perekat kapur dan pasir. Pada tahun berikutnya, dibangun lagi tembok kedua di dekat pintu gerbang.\nNamun VOC yang dipimpin Gubernur Jenderal Admiral Cornelis Janszoon Speelman menyerang dan berhasil memaksa Gowa menandatangani Perjanjian Bongaya pada 18 November 1667. Semua benteng dirobohkan, kecuali Benteng Ujung Pandang. Bagian benteng yang hancur kembali dibangun oleh Speelman dengan gaya arsitektur Belanda. Nama benteng pun diubah menjadi Fort Rotterdam, sesuai tempat kelahiran Speelman. “Fort Rotterdam menjadi satu-satunya benteng yang dibangun di Makassar pada abad 17-18 dan menjadi simbol hegemoni VOC di wilayah Sulawesi Selatan,” catat Djoko Marihandono dalam “Perubahan Peran dan Fungsi Benteng” dimuat Wacana, Vol. 10 No. 1, 2008.\nBenteng Rotterdam difungsikan sebagai markas komando pertahanan, kantor perdagangan, kediaman pejabat tinggi, dan pusat pemerintahan di wilayah timur Nusantara. Bahkan di sekitar benteng tumbuh permukiman penduduk. “Bersamaan dengan perluasan dan pembangunan baru yang bersumber dari benteng, Makassar tumbuh menjadi kota dengan tata ruang kolonial,” catat Djoko Marihandono. Menurut Dias Pradadimara dalam “Penduduk Kota, Warga Kota, dan Sejarah Kota: Kisah Makassar” di buku Kota Lama, Kota Baru suntingan Freek Colombijn, hal ini menandakan keterputusan historis dengan Benteng Somba Opu yang terletak di sebelah selatannya, “kota lama” yang pernah jadi pusat Kerajaan Gowa.Setelah beberapa kali beralih fungsi, benteng ini diserahkan kepada Departemen Pendidikan dan Kebudayaan pada 1970. Benteng Fort Rotterdam, yang ditetapkan sebagai Benda Cagar Budaya tahun 2010, menjadi objek wisata yang menarik untuk dikunjungi.', 'https://indonesiakaya.com/pustaka-indonesia/benteng-fort-rotterdam/', '-5.13424318892', '119.405260977'),
(17, 'Candi Borobudur', 'tempat_bersejarah/Candi Borobudur.jpg', 'Candi Borobudur dibangun oleh Raja Samaratungga, salah satu raja kerajaan Mataram Kuno. Candi ini memiliki 1460 relief dan 504 stupa dengan bentuk bangunan punden berundak-undak yang terdiri dari 10 tingkat.\nKonon, setiap tingkatan pada bangunan candi ini melambangkan tahapan kehidupan manusia. Sesuai mahzab Buddha Mahayana, setiap orang yang ingin mencapai tingkat sebagai Buddha mesti melalui setiap tingkatan kehidupan tersebut.Bila berkunjung ke candi ini, maka kita akan menyaksikan relief-relief indah dan membayangkan betapa mahir pembuatnya memperhatikan setiap detail bentuk candi yang terletak di Kota Magelang ini.\nAda satu keunikan dari Candi Borobudur ini. Bila kita berjalan searah jarum jam maka pada relief Borobudur akan bercerita tentang kisah yang sangat melegenda yakni Ramayana.Candi ini memang mampu membuat siapa saja yang melihatnya berdecak kagum. Selain bentuk arsitekturnya yang indah, keseluruhan relief yang ada di candi Borobudur mencerminkan ajaran Sang Buddha. Tidak mengherankan jika UNESCO mencatat candi Borobudur sebagai daftar peninggalan sejarah dunia (World Wonder Heritages).', 'https://indonesiakaya.com/pustaka-indonesia/candi-borobudur-keajaiban-dunia-dari-abad-ke-9/', '-7.57577258427', '110.250263596'),
(18, 'Candi Prambanan', 'tempat_bersejarah/Candi Prambanan.jpg', 'Candi Prambanan dibangun sekitar tahun 856 Masehi dengan tujuan sebagai simbol kembalinya tampuk kekuasaan ke tangan dinasti Sanjaya. Candi yang berlokasi di Jalan Raya Yogya-Solo Km 16 ini, merupakan candi yang sudah diakui UNESCO sejak tahun 1991 sebagai salah satu warisan budaya bangsa. Kompleks Candi Prambanan terdiri dari tiga candi besar. Namun, yang paling menarik perhatian adalah candi yang berada di tengah yang diberi nama Candi Roro Jongrang. Candi Roro Jongrang mempunyai tinggi sekitar 47 meter. Konon katanya, candi ini dibangun untuk didedikasikan kepada Dewa Siwa. Sementara dua candi yang lebih kecil di sebelahnya didedikasikan kepada Dewa Wisnu dan Brahma.\nPada Candi Prambanan terdapat berbagai relief yang menggambarkan cerita-cerita Hindu, seperti panel kisah Ramayana. Panel-panel yang melukiskan cerita epik Ramayana terdapat di bagian bawah candi Siwa dan Brahma. Jika pengunjung berkeliling searah jarum jam dari candi Siwa ke arah kiri, panel Ramayana akan menceritakan Pangeran Rama dari kerajaan Ayodya yang merupakan titisan Dewa Wisnu yang ditugaskan turun ke bumi. Gambar-gambar pahatan dari panel lain juga masih terawat dan terlihat sangat indah.Selain itu, menariknya dari candi Hindu terbesar dan terindah di dunia ini adalah adanya pentas drama tari bertajuk Sendratari Ramayana yang dipentaskan setiap hari. Sendratari Ramayana merupakan sebuah pertunjukkan teater yang menceritakan kisah-kisah kepahlawanan, tragedi, dan percintaan yang dibungkus secara modern dengan Candi Roro Jongrang sebagai latar panggungnya. Tidak bisa dibayangkan betapa indahnya Candi Roro Jongrang ketika mendapat sentuhan cahaya dalam pementasan tersebut.', 'https://indonesiakaya.com/pustaka-indonesia/eksotika-candi-prambanan-kekayaan-indonesia-untuk-dunia/', '-7.752021', '110.491467'),
(19, 'Kota Tua', 'tempat_bersejarah/Kota Tua.jpg', 'VOC membangun kota baru bernama Batavia untuk menghormati Batavieren, yaitu leluhur bangsa Belanda. Kota ini terpusat di sekitar tepi timur Sungai Ciliwung yang saat ini sudah menjadi Lapangan Fatahillah. Belanda memilih wilayah tersebut karena saat itu merupakan pusat perdagangan yang memiliki posisi strategis serta akses sumber daya alam yang mudah. Kota Batavia didesain dengan gaya Belanda Eropa lengkap dengan benteng (Kasteel Batavia), dinding kota, dan kanal. Pembangunan berakhir dibangun tahun 1650. Tak perlu waktu lama, Batavia menjadi pusat penting dari seluruh kepulauan Indonesia. Penduduk Batavia dinamakan \"Batavianen\" kemudian dikenal sebagai Suku Betawi yang merupakan keturunan dari berbagai etnis yang menghuni Batavia. \nPada tahun 1942, selama pendudukan Jepang, Batavia mengalami perubahan nama menjadi Jakarta yang kita kenal saat ini dan masih berkedudukan sebagai Ibukota Indonesia hingga sekarang. Tahun 1972, Gubernur Jakarta, Ali Sadikin, mengeluarkan dekrit untuk menjadikan Kota Tua sebagai situs warisan. Keputusan Gubernur tersebut bertujuan untuk ditujukan melindungi sejarah dan arsitektur Kota Tua. Hingga saat ini, Kota Tua Jakarta menjadi ikon sejarah dan wisata yang menarik banyak peminat. Tak hanya wisata sejarah, Kota Tua Jakarta juga menawarkan berbagai restoran dan kafe sebagai pelepas lapar dan dahaga ketika berkeliling.', 'https://katadata.co.id', '-6.137645', '106.817124'),
(20, 'Lembuswana', 'tempat_bersejarah/Lembuswana.jpg', 'Hewan ini telah menjadi lambang Kerajaan Kutai hingga Kesultanan Kutai Kartanegara. Hewan ini menjadi hewan dalam mitologi rakyat Kutai yang disucikan karena merupakan tunggangan Mulawarman, yang bertahta sebagai Raja Kutai sekitar 1.500 tahun silam. Inilah Lembuswana, sosok berwarna keemasan yang identik dengan kawasan Kutai Kartanegara, Kalimantan Timur.\nLembuswana atau dikenal juga dengan nama Paksi Liman Jonggo Yokso berwujud binatang lembu atau sapi yang memiliki belalai dan bertaring seperti gajah. Memiliki sayap seperti burung, memiliki kuku dan taji seperti ayam jantan, bersisik seperti naga, serta bermahkota bagaikan seorang raja.\nKemunculan Lembuswana yang konon menjadi penguasa Sungai Mahakam kerap dihubungkan dengan lahirnya Putri Karang Melenu yang muncul bersamaan dengan satwa ini dari dasar Sungai Mahakam. Kelak, di kemudian hari sang putri pun menikah dengan Raja Aji Batara Agung Dewa Sakti. Dari sang putri inilah kemudian dilahirkan penerus dinasti raja-raja Kutai Kartanegara.Patung Lembuswana yang telah menjadi ikon di Kutai Kartanegara ini bisa dilihat di dua lokasi. Pertama, di halaman depan Museum Mulawarman, Tenggarong, Kutai Kartanegara, Kalimantan Timur. Kedua, patung Lembuswana raksasa juga terdapat di Pulau Kumala, sebuah destinasi wisata di tengah Sungai Mahakam.', 'https://indonesiakaya.com/pustaka-indonesia/lembuswana-satwa-mitologi-lambang-kerajaan-kutai-kartanegara/', '-0.46899', '117.14832'),
(21, 'Monas', 'tempat_bersejarah/Monas.jpg', 'Monas adalah sebuah monumen yang dibangun pada tahun 1959 untuk mengenang jasa rakyat yang telah berjuang melawan penjajah Belanda dalam meraih kemerdekaan. Monumen yang mempunyai luas sekitar 80 Hektar ini menjadi Monumen bersejarah yang menjadi kebanggaan warga Jakarta.\nSelain bentuknya yang unik, daya tarik Monas juga terletak pada lapisan emas yang melapisi tugu ini. Lapisan emas seberat 35 kg ini menjadi keistimewaan tersendiri bagi tugu yang letaknya di Jalan Medan Merdeka ini. Monas yang selalu ramai dikunjungi wisatawan asing maupun domestik ini juga menyajikan pemandangan kota Jakarta yang bisa dilihat dari atas pelataran puncak Monas. Selain itu juga disediakan kendaraan khusus bagi wisatawan yang ingin berkeliling kawasan Monas.', 'https://indonesiakaya.com/pustaka-indonesia/monas-ikon-kota-jakarta-yang-jadi-daya-tarik-wisatawan/', '-6.175392', '106.827153'),
(22, 'Lawang Sewu', 'tempat_bersejarah/Lawang Sewu.jpg', 'Lawang Sewu adalah gedung bersejarah milik PT Kereta Api Indonesia (Persero) yang awalnya digunakan sebagai Kantor Pusat perusahaan kereta api swasta Nederlandsch-Indische Spoorweg Maatschappij (NISM). Gedung Lawang Sewu dibangun secara bertahap di atas lahan seluas 18.232 m2. Bangunan utama dimulai pada 27 Februari 1904 dan selesai pada Juli 1907. Sedangkan bangunan tambahan dibangun sekitar tahun 1916 dan selesai tahun 1918.\nBangunannya dirancang oleh Prof. Jakob F. Klinkhamer dan B.J. Ouendag, arsitek dari Amsterdam dengan ciri dominan berupa elemen lengkung dan sederhana. Bangunan di desain menyerupai huruf L serta memiliki jumlah jendela dan pintu yang banyak sebagai sistem sirkulasi udara. Karena jumlah pintunya yang banyak maka masyarakat menamainya dengan Lawang Sewu yang berarti seribu pintu. Selain desain bangunannya yang unik, Lawang Sewu memiliki ornamen kaca patri pabrikan Johannes Lourens Schouten. Kaca patri tersebut bercerita tentang kemakmuran dan keindahan Jawa, kekuasaan Belanda atas Semarang dan Batavia, kota maritim serta kejayaan kereta api. Ragam hias lainnya pada Lawang Sewu antara lain ornamen tembikar pada bidang lengkung di atas balkon, kubah kecil di puncak menara air yang dilapisi tembaga, dan puncak menara dengan hiasan perunggu.', 'https://heritage.kai.id/page/lawang-sewu', '-6.983925', '110.410633');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `profile_picture`, `level`) VALUES
(1, 'arman17', '123456', 'Arman Maulana', 'img/empty-image.png', 1),
(3, 'arman1', '123456', 'Arman Baru ', 'img/arman1.png', 1),
(8, 'arman2', '123456', 'Muhammad Arman Maulana', 'img/empty-image.png', 1),
(11, 'arman3', '123456', 'Muhammad Arman Maulana', 'img/empty-image.png', 1),
(13, 'arman4', '123456', 'Muhammad Arman Maulana', 'img/empty-image.png', 1),
(14, 'eko1', '123456', 'Ekoooooooo', 'img/empty-image.png', 1),
(15, 'kaslana', '', 'Ruby Kaslana II', 'img/kaslana.png', 1),
(16, 'kq', 'kq', 'KQ', 'img/kq.', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `tempat_bersejarah`
--
ALTER TABLE `tempat_bersejarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `postingan`
--
ALTER TABLE `postingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tempat_bersejarah`
--
ALTER TABLE `tempat_bersejarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `postingan`
--
ALTER TABLE `postingan`
  ADD CONSTRAINT `postingan_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
