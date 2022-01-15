/*
SQLyog Community v12.09 (64 bit)
MySQL - 10.1.37-MariaDB : Database - project_01
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project_01` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `project_01`;

/*Table structure for table `kontak` */

DROP TABLE IF EXISTS `kontak`;

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pesan` text,
  `telepon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kontak` */

/*Table structure for table `laporan` */

DROP TABLE IF EXISTS `laporan`;

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bulan` varchar(255) DEFAULT NULL,
  `pendapatan` bigint(20) DEFAULT NULL,
  `biaya` bigint(20) DEFAULT NULL,
  `laba` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `laporan` */

insert  into `laporan`(`id`,`bulan`,`pendapatan`,`biaya`,`laba`) values (1,'Januari',3000,205000,-202000),(2,'Februari',20000,483000,-463000),(3,'Maret',356000,330000,26000),(4,'April',583000,927000,-344000),(5,'Mei',885000,643000,242000),(6,'Juni',562000,881000,-319000),(7,'Juli',718000,950000,-232000),(8,'Agustus',597000,133000,464000),(9,'September',875000,976000,-101000),(10,'Oktober',258000,361000,-103000),(11,'Nopember',31000,73000,-42000),(12,'Desember',272000,140000,132000);

/*Table structure for table `page` */

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `konten` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `page` */

/*Table structure for table `portfolio` */

DROP TABLE IF EXISTS `portfolio`;

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `teks` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `portfolio` */

insert  into `portfolio`(`id`,`gambar`,`judul`,`teks`) values (1,'df235-cabin.png','Kabin Rumah','<p>\n	Teks ini adlah untuk percobaan.&nbsp;</p>\n'),(2,'c4f18-tasty.png','Keu Yang Enak','<p>\n	Percobaan teks Kue yang enak</p>\n'),(3,'f2ea4-circus.png','Tenda Sirkus','<p>\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>\n'),(4,'ab485-game.png','GAME','<p>\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>\n'),(5,'8fcd5-safe.png','SAFE','<p>\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>\n'),(6,'535e2-submarine.png','SUBMARINE','<p>\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>\n'),(7,'6c873-copy-logo-sd.jpg','Logo SD','<p>\n	Sekolah Dasar Islam Terpadu Firudaus.&nbsp;</p>\n');

/*Table structure for table `sample_data` */

DROP TABLE IF EXISTS `sample_data`;

CREATE TABLE `sample_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `age` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `sample_data` */

insert  into `sample_data`(`id`,`first_name`,`last_name`,`age`) values (1,'Moch ini','Yasin Fadil',32),(2,'Joko','Susilo Bambang',33),(3,'Tes','tes00',0);

/*Table structure for table `surat_masuk_keluar` */

DROP TABLE IF EXISTS `surat_masuk_keluar`;

CREATE TABLE `surat_masuk_keluar` (
  `nomor_urut` int(11) NOT NULL AUTO_INCREMENT,
  `kode_surat_masuk` varchar(255) DEFAULT NULL,
  `pengirim` varchar(255) DEFAULT NULL,
  `perihal_masuk` varchar(255) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `lampiran_masuk` varchar(255) DEFAULT NULL,
  `isi_masuk` varchar(255) DEFAULT NULL,
  `keterangan_masuk` varchar(255) DEFAULT NULL,
  `status_penyelesaian` enum('Selesai','Menunggu Konfirmasi') DEFAULT NULL,
  `nomor_keluar` varchar(255) DEFAULT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `tujuan` varchar(255) DEFAULT NULL,
  `isi_keluar` varchar(255) DEFAULT NULL,
  `lampiran_keluar` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nomor_urut`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `surat_masuk_keluar` */

insert  into `surat_masuk_keluar`(`nomor_urut`,`kode_surat_masuk`,`pengirim`,`perihal_masuk`,`tanggal_masuk`,`lampiran_masuk`,`isi_masuk`,`keterangan_masuk`,`status_penyelesaian`,`nomor_keluar`,`tanggal_keluar`,`tujuan`,`isi_keluar`,`lampiran_keluar`,`keterangan`) values (1,'2','Jayanegara','Proposal Kerja sama','2022-01-05','44ce6-floral-watercolor-learn-how-to-paint-thumbnails_1.png','proposal ','ok. ','Selesai','888888','2022-01-31','jakarta','ok','d0d91-floral-watercolor-learn-how-to-paint-thumbnails_1.png',NULL),(2,'8838','bu susana','proposal kerjasama','2022-01-15','dc30d-000-etiket.pdf','tiket','sudah','Selesai',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
