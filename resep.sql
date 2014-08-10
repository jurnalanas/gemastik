-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2014 at 08:40 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `resep`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(65) NOT NULL,
  `category_image` varchar(120) NOT NULL,
  `category_desc` text NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`, `category_desc`) VALUES
(3, 'Alat musik daerah', '1378925200.jpg', 'Alat musih blabla'),
(4, 'Apa ya', '1378950275.jpg', 'Apa ya blabla'),
(5, 'Tari Daerah', '1378949959.jpg', 'Tari Daerah blabla');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE IF NOT EXISTS `list` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_category_id` int(11) NOT NULL,
  `list_name` varchar(65) NOT NULL,
  `list_image` varchar(45) NOT NULL,
  `list_cook_time` varchar(45) NOT NULL,
  `list_summary` varchar(120) NOT NULL,
  `list_ingredients` text NOT NULL,
  `list_instruction` text NOT NULL,
  `list_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`list_id`, `list_category_id`, `list_name`, `list_image`, `list_cook_time`, `list_summary`, `list_ingredients`, `list_instruction`, `list_date`) VALUES
(7, 3, 'Rainbow Cake', '1378918375.jpg', '30 Min', 'Pelangi Kukus. Kue ini sangat digemari dan digangrungi banyak orang', '<ul>\r\n<li>200 gram tepung terigu</li>\r\n<li>8 butir telur</li>\r\n<li>300 gram gula pasir</li>\r\n<li>300 ml minyak goreng</li>\r\n<li>1/2 sendok teh vanili bubuk</li>\r\n<li>1 sendok teh emulsifier</li>\r\n<li>1/2 sendok teh garam</li>\r\n<li>Secukupnya pewarna makanan (merah, jingga, kuning, hijau, biru, ungu)</li>\r\n</ul>', '<ol>\r\n<li>Pertama Kocok 8 butir telur dan 300 gram gula pasir sampai tercampur rata dan halus menggunakan mixer.</li>\r\n<li>Lalu masukkan 1 sendok teh emulsifier, 1/2 sendok teh Vanili bubuk dan 1/2 sendok teh garam. Kocok sampai mengembang, selesai, matikan mixer.</li>\r\n<li>kemudian ambil sedikit adonan diatas lalu letakkan pada mangkuk kecil, campurkan minyak goreng, aduk sampai tercampur rata, sisihkan.</li>\r\n<li>Masukkan 200 gram tepung terigu sedikit demi sedikit, aduk sampai tercampur rata.</li>\r\n<li>Masukkan campuran adonan yang telah diberi minyak, dan aduk hingga rata.</li>\r\n<li>Bagi adonan jadi 6 bagian pada wadah yang berbeda, kemudian masing-masing adonan beri pewarna makanan.</li>\r\n<li>Gunakan loyang ukuran 24 x 12 cm (atau sesuai keinginan), lapisi dengan kertas roti, beri olesan mentega tipis, baru tuang adonan ke dalamnya.</li>\r\n<li>Kukus adonan loyang selama 20 menit, angkat, dinginkan.</li>\r\n<li>Beri alas berupa kertas roti atau plastik lebar pada bagian bawah meja atau tempat yang Anda pakai untuk menyusun setiap adonan.</li>\r\n<li>Susun adonan dengan warna yang di inginkan sesuai selera. Beri olesan buttercream tipis pada setiap lapisannya.</li>\r\n<li>Bila sudah tersusun lalu tutupi semua bagian bolu dengan sisa buttercream.selesai</li>\r\n</ol>', '2013-09-11 16:52:55'),
(8, 3, 'Es Pisang Ijo', '1378976814.jpg', '25 Min', 'Rahasia hijau ada di balutannya yang persis pisang molen, namun tepung diwarnai warna ijo dari daun suji dan pewarna mak', '<ul><li>5 buah pisang raja yang cukup tua</li><li>40 gram tepung beras</li><li>175 gram tepung beras</li><li>1/2 sendok teh garam</li><li>100 ml air daun suji</li><li>3 tetes pewarna hijau</li><li>300 ml air bersih</li><li>Secukupnya es serut</li><li>Secukupnya sirup merah</li><li>50 gram tepung terigu</li><li>75 gram gula pasir</li><li>650 ml santan</li><li>1 lembar daun pandan</li><li>1/4 sendok teh garam </li></ul>', '<ol><li>Pertama campurkan tepung beras, garam, air bersih, air daun suji, juga pewarna hijau lalu rebus sambil diaduk sampai mendidih, angkat.</li><li>Kemudian Tambahkan tepung beras, aduk sampai kalis.</li><li>Tipiskan adonan, balutkan pada pisang hingga tertutup.</li><li>Lalu Kukus pisang selama 20 menit. Angkat dan sisihkan.</li><li>Campurkan semua bahan saus lalu rebus sampai mendidih, angkat lalu dinginkan.selesai</li></ol>', '2013-09-13 07:10:06'),
(9, 5, 'Bolu Kukus', '1378976973.jpg', '45 Min', 'Rasa kue ini tentu sangat enak, setelah dicoba cukup juga dan pada suka loh sama resep ini. empuk, manis dan gurih teras', '<ul><li>3 butir telur</li><li>300 gram gula pasir</li><li>225 cc air bersih</li><li>15 gram SP</li><li>300 gram terigu merk apa saja</li><li>10 gram custard powder</li><li>10 gram susu bubuk</li></ul>', '<ol><li>Pertama Kocok telur dan gula kurang lebih selama 2 menit</li><li>masukkan custard powder, SP, susu bubuk, dan terigu berselang-seling dengan air</li><li>Kemudian Kocok terus hingga kira-kira 6 menitan</li><li>Lalu Istirahatkan kurang lebih 12 menitan</li><li>Terakhir Kukus 15 menit, selesai</li></ol>', '2013-09-14 07:21:41'),
(10, 3, 'Tahu Gimbal Semarang', '1378977135.jpg', '16 Min', 'Santapan nikmat khas semarang yang mampu menggoyang lidah, hmm..sedap!', '<ul><li>Tahu pong 8 buah.</li><li>Telur ayam 4 butir, rebus, kupas.</li><li>Tauge panjang 100 gram, seduh dengan air hangat.</li><li>Bawang goreng 2 sendok makan.</li><li>Garam 1 sendok makan.</li><li>Minyak goreng secukupnya.</li><li>Tepung terigu protein sedang 125 gram.</li><li>Bawang putih 2 siung, haluskan.</li><li>Udang 100 gram, buang kulit dan kepalanya.</li><li>Merica bubuk 1 sendok teh.</li><li>Garam secukupnya.</li><li>Air 200 ml.</li><li>Bawang putih 2 siung, haluskan.</li><li>Cabe rawit hijau 10 buah, haluskan.</li><li>Petis udang 4 sendok makan.</li><li>Kecap manis 2 sendok makan.</li><li>Gula merah 1 sendok makan.</li><li>Garam secukupnya.</li><li>Air 300 ml.</li><li>Minyak goreng 2 sendok makan</li></ul>', '<ol><li>Goreng tahu dan telur secara terpisah hingga kering, tiriskan. Tahu dipotong dadu dan telur dibelah 2.</li><li>Gimbal udang : campur tepung bersama bawang putih, merica dan garam, aduk rata, tuang air sedikit demi sedikit hingga adonan kental. Tuang 1 sendok sayur adonan,taruh udang di atasnya. Dan goreng hingga matang, angkat dan tiriskan.</li><li>Bumbu petis : panaskan minyak, tumis bawang putih hingga harum, masukkan cabe rawit,petis, kecap manis, gula merah, garam, tuang air dan masak hingga mendidih, angkat.</li><li>Letakkan tahu pong dalam piring saji, tambahkan gimbal udang, tauge dan telur goreng, tambahkan bumbu petis dan taburi bawang goreng. Sajikan</li></ol>', '2013-09-12 15:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `user_password` varchar(60) NOT NULL,
  `user_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_update`) VALUES
(1, 'admin', 'c262727fede45dff3d9179bb8d3ad43f', '2014-08-10 06:04:12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
